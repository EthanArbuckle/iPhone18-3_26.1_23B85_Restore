@interface NLSessionActivity
+ (double)durationBetweenStartDate:(id)a3 endDate:(id)a4 workoutEvents:(id)a5;
+ (id)_localizedTimeOfDayFormatStringWithDate:(id)a3;
+ (unint64_t)_eventForPauseTracking:(BOOL)a3 eventSource:(unint64_t)a4;
- (BOOL)_beforeBuilderActive;
- (BOOL)handleUserDoubleTap;
- (BOOL)hasGoal;
- (BOOL)insertOrUpdateMetadataToSubActivity:(id)a3;
- (BOOL)isAutoPauseEffectivelyEnabledForActivityType:(unint64_t)a3;
- (BOOL)isInSession;
- (BOOL)isMachineWorkout;
- (NLSessionActivity)initWithConfiguration:(id)a3 UUID:(id)a4 formattingManager:(id)a5 elevationUnit:(id)a6 healthStore:(id)a7 builder:(id)a8 experienceType:(int64_t)a9;
- (NLSessionActivityCadenceAccumulator)cadenceAccumulator;
- (NLSessionActivityDistanceProvider)distanceProvider;
- (NLSessionActivityElapsedTimeAccumulator)elapsedTimeAccumulator;
- (NLSessionActivityHeartRateProvider)heartRateProvider;
- (NLSessionActivityLifecycleDelegate)lifecycleDelegate;
- (NLSessionActivityPaceAccumulator)paceAccumulator;
- (NLSessionActivityPaceProvider)paceProvider;
- (NLSessionActivitySavingDelegate)savingDelegate;
- (NLSessionDataProvider)dataProvider;
- (NLWorkoutSplitsDelegate)splitsDelegate;
- (NSArray)segmentMarkers;
- (NSUUID)fitnessMachineSessionUUID;
- (WOCustomSplitsDelegate)customSplitsDelegate;
- (double)activityDuration;
- (double)displaySplitDistanceValue;
- (double)duration;
- (double)durationWithEndDate:(id)a3;
- (double)videoPlaybackCurrentTime;
- (id)_latestCompletedIntervalActivityEndDate;
- (id)_stateDescription;
- (id)currentActivityStartDate;
- (id)currentIntervalWorkoutActivity;
- (id)currentWorkoutActivity;
- (id)effectivePresentationTime;
- (id)powerLogWorkoutDictionary;
- (void)_configureStateActions;
- (void)_configureStateMachine;
- (void)_createActivityDependentAccumulators;
- (void)_createIdempotentAccumulators;
- (void)_didAddWorkoutEvents:(id)a3;
- (void)_endCollectionWithEndDate:(id)a3;
- (void)_endTracking;
- (void)_handleBeginCollectingWithSuccess:(BOOL)a3 error:(id)a4;
- (void)_handleBuilderPauseResumeRequestWithSuccess:(BOOL)a3 error:(id)a4 pauseTracking:(BOOL)a5 eventSource:(unint64_t)a6;
- (void)_handleFinishWorkoutWithWorkout:(id)a3 error:(id)a4;
- (void)_logStatistics;
- (void)_notifyDataObserversUpdatedMetricType:(unint64_t)a3;
- (void)_notifyDataObserversUpdatedMetricTypes:(id)a3;
- (void)_notifyDataObserversWithBlock:(id)a3;
- (void)_onActivating;
- (void)_onActive;
- (void)_onCompleted;
- (void)_onDiscarding;
- (void)_onEnding;
- (void)_onEndingCollection;
- (void)_onErrorActivating;
- (void)_onFirstActivation;
- (void)_onRecovery;
- (void)_onSaving;
- (void)_powerLogWorkoutStart;
- (void)_powerLogWorkoutStop;
- (void)_processQueuedWorkoutEvents;
- (void)_recoverIntoActivity:(id)a3;
- (void)_segmentMarkerEventReceived:(id)a3;
- (void)_setPauseTracking:(BOOL)a3 atDate:(id)a4 eventSource:(unint64_t)a5;
- (void)_setState:(unint64_t)a3;
- (void)_setupActivityTypeDependentConfigurations;
- (void)_setupGroundElevationManager;
- (void)_startAccumulatingDataWithStartDate:(id)a3;
- (void)_startAccumulatingElapsedTimeWithStartDate:(id)a3;
- (void)_startActivityDependentAccumulatingDataWithStartDate:(id)a3;
- (void)_startBuilderWithStartDate:(id)a3;
- (void)_startIdempotentAccumulatingDataWithStartDate:(id)a3;
- (void)_startPrecisionStartAccumulators;
- (void)_startTracking;
- (void)_startTrackingWithStartDate:(id)a3;
- (void)_stopActivityDependentAccumulatorsWithActivity:(id)a3;
- (void)_stopTrackingActivityWithEndDate:(id)a3;
- (void)_teardownGroundElevationManager;
- (void)_updateAveragePace:(double)a3;
- (void)_updateAveragePower:(double)a3;
- (void)_updateCurrentSpeedWithStatistics:(id)a3 duration:(double)a4;
- (void)_updateCyclingCadenceWithStatistics:(id)a3 duration:(double)a4 quantityType:(id)a5;
- (void)_updateCyclingPowerWithStatistics:(id)a3;
- (void)_updateElapsedTime:(double)a3;
- (void)_updateElevation:(id)a3;
- (void)_updateElevationGain:(id)a3;
- (void)_updateEnergyBurned:(id)a3 statistics:(id)a4;
- (void)_updateFlightsClimbedWithStatistics:(id)a3;
- (void)_updateGroundContactTimeWithStatistics:(id)a3;
- (void)_updateHeartRateUpdateAvailability;
- (void)_updateHeartRateWithStatistics:(id)a3;
- (void)_updateInstantaneousPace:(double)a3;
- (void)_updateInstantaneousPower:(double)a3 sampleDate:(id)a4;
- (void)_updateIntervalCadenceWithQuantityType:(id)a3;
- (void)_updateMachineDistance:(double)a3;
- (void)_updateMetadataAtWorkoutFirstActivation;
- (void)_updateRunningPowerWithStatistics:(id)a3;
- (void)_updateSplitsWithStatistics:(id)a3 duration:(double)a4;
- (void)_updateStepCountWithStatistics:(id)a3 duration:(double)a4 quantityType:(id)a5;
- (void)_updateStrideLengthWithStatistics:(id)a3;
- (void)_updateTotalDistanceWithStatistics:(id)a3 duration:(double)a4;
- (void)_updateVerticalOscillationWithStatistics:(id)a3;
- (void)_updateWaterTemperatureWithStatistics:(id)a3 duration:(double)a4 quantityType:(id)a5;
- (void)_updateWithCollectedTypes:(id)a3;
- (void)_updateWithQuantityType:(id)a3 statistics:(id)a4 duration:(double)a5;
- (void)_updateWorkoutMetric:(unint64_t)a3 withQuantity:(id)a4;
- (void)_writeConfigurationMetadata;
- (void)addActivityChangeObserver:(id)a3;
- (void)addSessionDataObserver:(id)a3;
- (void)addSessionStateObserver:(id)a3;
- (void)addSplitsUpdateObserver:(id)a3;
- (void)addWorkoutEvents:(id)a3;
- (void)cancelAutomaticTransition;
- (void)createSplitsAccumulators;
- (void)cyclingCadenceAccumulatorDidUpdate:(id)a3;
- (void)dealloc;
- (void)didUpdateMaximumAltitude:(id)a3;
- (void)didUpdateMinimumAltitude:(id)a3;
- (void)distanceProviderDidUpdate:(id)a3;
- (void)downhillSnowSportsAccumulatorDidUpdate:(id)a3;
- (void)elapsedTimeAccumulatorDidUpdate:(id)a3;
- (void)elevationAccumulatorDidUpdate:(id)a3;
- (void)endCurrentSegment;
- (void)energyBurnAccumulatorDidUpdate:(id)a3;
- (void)enterAutomaticTransition;
- (void)evaluatePauseResumeForConnectedDevices;
- (void)flightsClimbedAccumulatorDidUpdate:(id)a3;
- (void)ghostPacerAccumulatorDidUpdate:(id)a3;
- (void)groundContactTimeAccumulatorDidUpdate:(id)a3;
- (void)groundElevationDidUpdate:(id)a3;
- (void)groundElevationManagerDidFinishSetup;
- (void)gymKitMetricsDataSource:(id)a3 didReceiveMetrics:(id)a4;
- (void)heartRateAccumulatorDidUpdate:(id)a3;
- (void)heartRatePrecisionStartAccumulatorDidUpdate:(id)a3;
- (void)heartRateProviderDidBecomeStale:(id)a3;
- (void)heartRateZonesAccumulatorDidUpdate:(id)a3;
- (void)insertLocations:(id)a3 completion:(id)a4;
- (void)insertOrUpdateMetadata:(id)a3 forceTopLevel:(BOOL)a4;
- (void)intervalCadenceAccumulatorDidUpdate:(id)a3;
- (void)locationDidUpdate:(id)a3;
- (void)locationPositionAccumulator:(id)a3 didUpdateLocations:(id)a4;
- (void)locationPositionAccumulator:(id)a3 didUpdateRoutePosition:(id)a4;
- (void)paceAccumulator:(id)a3 didUpdateCurrentPaceInMetersPerSecond:(double)a4;
- (void)paceAccumulator:(id)a3 didUpdateIsGPSAvailable:(BOOL)a4;
- (void)paceProviderDidUpdate:(id)a3;
- (void)pacerDistanceGoalProgressAccumulatorDidUpdate:(id)a3;
- (void)pedometerCadenceAccumulatorDidUpdate:(id)a3;
- (void)powerAccumulatorDidUpdate:(id)a3;
- (void)powerZonesAccumulatorDidUpdate:(id)a3;
- (void)processDownhillRunEvent:(id)a3;
- (void)processMotionPauseResumeEvent:(id)a3;
- (void)processPauseOrResumeRequestEvent:(id)a3;
- (void)processSplitEvent:(id)a3;
- (void)queueWorkoutEvents:(BOOL)a3;
- (void)racePositionProviderDidUpdate:(id)a3;
- (void)registerMarkerEventWithDate:(id)a3 metadata:(id)a4;
- (void)removeActivityChangeObserver:(id)a3;
- (void)removeMetadata:(id)a3 forceTopLevel:(BOOL)a4;
- (void)removeSessionDataObserver:(id)a3;
- (void)removeSessionStateObserver:(id)a3;
- (void)removeSplitsUpdateObserver:(id)a3;
- (void)rollingPaceAccumulatorDidUpdate:(id)a3;
- (void)segmentAveragePowerAccumulatorDidUpdate:(id)a3;
- (void)segmentDistanceAccumulatorDidUpdate:(id)a3;
- (void)segmentElapsedTimeAccumulatorDidUpdate:(id)a3;
- (void)segmentEnergyAccumulatorDidUpdate:(id)a3;
- (void)segmentPaceAccumulatorDidUpdate:(id)a3;
- (void)setLocationTypeToIndoor:(BOOL)a3;
- (void)setMachineSessionDevice:(id)a3;
- (void)setPacerAlertDelegate:(id)a3;
- (void)setRaceCoordinatorDelegate:(id)a3;
- (void)setRaceRouteDelegate:(id)a3;
- (void)setSeymourElapsedTimeAccumulator:(id)a3;
- (void)setWorkoutAlertDelegate:(id)a3;
- (void)setup;
- (void)splitAveragePowerAccumulatorDidUpdate:(id)a3;
- (void)splitDistanceAccumulatorDidUpdate:(id)a3;
- (void)splitElapsedTimeAccumulatorDidUpdate:(id)a3;
- (void)splitPaceAccumulatorDidUpdate:(id)a3;
- (void)storeMotionPauseResumeEvent:(id)a3;
- (void)strideLengthAccumulatorDidUpdate:(id)a3;
- (void)swimmingAccumulatorDidUpdate:(id)a3;
- (void)updateActivityTypeFromConfiguration:(id)a3;
- (void)updateDistanceUnit:(id)a3;
- (void)verticalOscillationAccumulatorDidUpdate:(id)a3;
- (void)waterTemperatureAccumulatorDidUpdate:(id)a3;
- (void)weatherDidUpdate:(id)a3;
- (void)workoutBuilder:(id)a3 didBeginActivity:(id)a4;
- (void)workoutBuilder:(id)a3 didCollectDataOfTypes:(id)a4;
- (void)workoutBuilder:(id)a3 didEndActivity:(id)a4;
- (void)workoutBuilderDidChangeSampleTypesAvailableForCollection:(id)a3;
- (void)workoutBuilderDidCollectEvent:(id)a3;
- (void)workoutRouteDataSource:(id)a3 didUpdateAltitude:(id)a4;
- (void)workoutRouteDataSourceDidUpdateElevation:(id)a3;
- (void)workoutRouteDataSourceDidUpdateRoute:(id)a3;
@end

@implementation NLSessionActivity

- (NLSessionActivity)initWithConfiguration:(id)a3 UUID:(id)a4 formattingManager:(id)a5 elevationUnit:(id)a6 healthStore:(id)a7 builder:(id)a8 experienceType:(int64_t)a9
{
  v48[1] = *MEMORY[0x277D85DE8];
  v46 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v44 = 0;
  objc_storeStrong(&v44, a4);
  v43 = 0;
  objc_storeStrong(&v43, a5);
  v42 = 0;
  objc_storeStrong(&v42, a6);
  v41 = 0;
  objc_storeStrong(&v41, a7);
  v40 = 0;
  objc_storeStrong(&v40, a8);
  v39 = a9;
  v9 = v46;
  v46 = 0;
  v38.receiver = v9;
  v38.super_class = NLSessionActivity;
  v31 = [(NLSessionActivity *)&v38 init];
  v46 = v31;
  objc_storeStrong(&v46, v31);
  if (v31)
  {
    objc_storeStrong(&v46->_UUID, v44);
    v10 = [location[0] activityMoveMode];
    v46->_activityMoveMode = v10;
    v11 = [location[0] activityBeginDate];
    activityBeginDate = v46->_activityBeginDate;
    v46->_activityBeginDate = v11;
    MEMORY[0x277D82BD8](activityBeginDate);
    objc_storeStrong(&v46->_healthStore, v41);
    objc_storeStrong(&v46->_builder, v40);
    [(HKLiveWorkoutBuilder *)v46->_builder setDelegate:v46];
    objc_storeStrong(&v46->_configuration, location[0]);
    v13 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    stateObservers = v46->_stateObservers;
    v46->_stateObservers = v13;
    MEMORY[0x277D82BD8](stateObservers);
    v15 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    dataObservers = v46->_dataObservers;
    v46->_dataObservers = v15;
    MEMORY[0x277D82BD8](dataObservers);
    v17 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    changeObservers = v46->_changeObservers;
    v46->_changeObservers = v17;
    MEMORY[0x277D82BD8](changeObservers);
    objc_storeStrong(&v46->_formattingManager, v43);
    objc_storeStrong(&v46->_elevationUnit, v42);
    v46->_experienceType = v39;
    v29 = [location[0] catalogWorkoutBridge];
    [v29 duration];
    v46->_playbackDuration = v19;
    MEMORY[0x277D82BD8](v29);
    v46->_didCollectFirstSample = 0;
    v20 = objc_alloc_init(WOSessionActivityDeviceObserver);
    deviceObserver = v46->_deviceObserver;
    v46->_deviceObserver = v20;
    MEMORY[0x277D82BD8](deviceObserver);
    v30 = [v40 metadata];
    v37 = [v30 objectForKeyedSubscript:@"_HKPrivateMetadataKeyAnalyticsIdentifier"];
    MEMORY[0x277D82BD8](v30);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [v37 length])
    {
      objc_storeStrong(&v46->_analyticsIdentifier, v37);
    }

    else
    {
      v26 = [MEMORY[0x277CCAD78] UUID];
      v22 = [v26 UUIDString];
      analyticsIdentifier = v46->_analyticsIdentifier;
      v46->_analyticsIdentifier = v22;
      MEMORY[0x277D82BD8](analyticsIdentifier);
      MEMORY[0x277D82BD8](v26);
      v27 = v46;
      v47 = @"_HKPrivateMetadataKeyAnalyticsIdentifier";
      v48[0] = v46->_analyticsIdentifier;
      v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:&v47 count:1];
      [NLSessionActivity insertOrUpdateMetadata:v27 forceTopLevel:"insertOrUpdateMetadata:forceTopLevel:"];
      MEMORY[0x277D82BD8](v28);
    }

    [(NLSessionActivity *)v46 setup];
    objc_storeStrong(&v37, 0);
  }

  v25 = MEMORY[0x277D82BE0](v46);
  objc_storeStrong(&v40, 0);
  objc_storeStrong(&v41, 0);
  objc_storeStrong(&v42, 0);
  objc_storeStrong(&v43, 0);
  objc_storeStrong(&v44, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v46, 0);
  *MEMORY[0x277D85DE8];
  return v25;
}

- (void)setup
{
  v14 = self;
  v13[1] = a2;
  [(NLSessionActivity *)self _createIdempotentAccumulators];
  [(NLSessionActivity *)v14 _setupActivityTypeDependentConfigurations];
  [(NLSessionActivity *)v14 _observeSettings];
  [(NLSessionActivity *)v14 _writeConfigurationMetadata];
  [(NLSessionActivity *)v14 _configureStateMachine];
  [(WOSessionActivityDeviceObserver *)v14->_deviceObserver setDelegate:v14];
  v13[0] = +[NLWorkoutDemoUtilities workoutDemoSession];
  if (v13[0])
  {
    _HKInitializeLogging();
    location = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v11 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v11;
      __os_log_helper_16_0_0(v10);
      _os_log_impl(&dword_20AEA4000, log, type, "[DemoMode] Demo mode is enabled", v10, 2u);
    }

    objc_storeStrong(&location, 0);
    v5 = [NLWorkoutDemoDataProvider alloc];
    v4 = v14;
    v7 = [(WOCoreLiveWorkoutConfiguration *)v14->_configuration topLevelActivityType];
    v6 = [(FIUIWorkoutActivityType *)v7 workoutActivityType];
    v2 = [NLWorkoutDemoDataProvider initWithDataProvider:v5 activityType:"initWithDataProvider:activityType:demoSession:" demoSession:v4];
    demoDataProvider = v14->_demoDataProvider;
    v14->_demoDataProvider = v2;
    MEMORY[0x277D82BD8](demoDataProvider);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(v13, 0);
}

- (NLSessionDataProvider)dataProvider
{
  v3 = [(NLSessionActivity *)self demoDataProvider];
  MEMORY[0x277D82BD8](v3);
  if (v3)
  {
    v5 = [(NLSessionActivity *)self demoDataProvider];
  }

  else
  {
    v5 = MEMORY[0x277D82BE0](self);
  }

  return v5;
}

- (BOOL)handleUserDoubleTap
{
  v22 = *MEMORY[0x277D85DE8];
  v19 = self;
  location[1] = a2;
  v15 = [(NLSessionActivity *)self demoDataProvider];
  MEMORY[0x277D82BD8](v15);
  if (v15)
  {
    v12 = [(NLSessionActivity *)v19 demoDataProvider];
    location[0] = [(NLWorkoutDemoDataProvider *)v12 statisticsToAdvance];
    MEMORY[0x277D82BD8](v12);
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](location[0]);
    v14 = [obj countByEnumeratingWithState:__b objects:v21 count:16];
    if (v14)
    {
      v9 = *__b[2];
      v10 = 0;
      v11 = v14;
      while (1)
      {
        v8 = v10;
        if (*__b[2] != v9)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(__b[1] + 8 * v10);
        v3 = v19;
        v7 = [v17 quantityType];
        v4 = v17;
        v6 = [v17 endDate];
        v5 = [v17 startDate];
        [v6 timeIntervalSinceDate:?];
        [(NLSessionActivity *)v3 _updateWithQuantityType:v7 statistics:v4 duration:?];
        MEMORY[0x277D82BD8](v5);
        MEMORY[0x277D82BD8](v6);
        MEMORY[0x277D82BD8](v7);
        ++v10;
        if (v8 + 1 >= v11)
        {
          v10 = 0;
          v11 = [obj countByEnumeratingWithState:__b objects:v21 count:16];
          if (!v11)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    v20 = 1;
    objc_storeStrong(location, 0);
  }

  else
  {
    v20 = 0;
  }

  *MEMORY[0x277D85DE8];
  return v20 & 1;
}

- (void)_setupActivityTypeDependentConfigurations
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = self;
  location[1] = a2;
  v2 = [(WOCoreLiveWorkoutConfiguration *)self->_configuration currentActivityType];
  activityType = v13->_activityType;
  v13->_activityType = v2;
  MEMORY[0x277D82BD8](activityType);
  v9 = [(FIUIFormattingManager *)v13->_formattingManager unitManager];
  v4 = [v9 userDistanceHKUnitForActivityType:v13->_activityType];
  distanceUnit = v13->_distanceUnit;
  v13->_distanceUnit = v4;
  MEMORY[0x277D82BD8](distanceUnit);
  MEMORY[0x277D82BD8](v9);
  _HKInitializeLogging();
  location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v11 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v15, v13->_activityType);
    _os_log_impl(&dword_20AEA4000, location[0], v11, "[multisport] Creating activity type configurations with activity type %@", v15, 0xCu);
  }

  objc_storeStrong(location, 0);
  [(NLSessionActivity *)v13 _stopActivityDependentAccumulatorsWithActivity:0];
  [(NLSessionActivity *)v13 _createActivityDependentAccumulators];
  if (!v13->_weatherManager)
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v8 = oslog;
      __os_log_helper_16_0_1_8_0(v14, v13);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[weather] Create NLSessionActivityWeatherManager from %p", v14, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    v6 = objc_alloc_init(NLSessionActivityWeatherManager);
    weatherManager = v13->_weatherManager;
    v13->_weatherManager = v6;
    MEMORY[0x277D82BD8](weatherManager);
    [(NLSessionActivityWeatherManager *)v13->_weatherManager setDelegate:v13];
  }

  [(NLSessionActivityWeatherManager *)v13->_weatherManager setActive:1, v8];
  [(NLSessionActivity *)v13 _setupGroundElevationManager];
  *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v5 = self;
  v4 = a2;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, v5, *MEMORY[0x277D09610], 0);
  v3.receiver = v5;
  v3.super_class = NLSessionActivity;
  [(NLSessionActivity *)&v3 dealloc];
}

- (void)_configureStateMachine
{
  v261[19] = *MEMORY[0x277D85DE8];
  v259 = self;
  __b[19] = a2;
  memset(__b, 0, 0x98uLL);
  NLActivityStateIdentifierShortHandStruct(__b);
  v241 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[0]];
  v261[0] = v241;
  v240 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[2]];
  v261[1] = v240;
  v239 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[1]];
  v261[2] = v239;
  v238 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[3]];
  v261[3] = v238;
  v237 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v261[4] = v237;
  v236 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v261[5] = v236;
  v235 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v261[6] = v235;
  v234 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[6]];
  v261[7] = v234;
  v233 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[7]];
  v261[8] = v233;
  v232 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[9]];
  v261[9] = v232;
  v231 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[10]];
  v261[10] = v231;
  v230 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[11]];
  v261[11] = v230;
  v229 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[12]];
  v261[12] = v229;
  v228 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[13]];
  v261[13] = v228;
  v227 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[14]];
  v261[14] = v227;
  v226 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[15]];
  v261[15] = v226;
  v225 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[16]];
  v261[16] = v225;
  v224 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[17]];
  v261[17] = v224;
  v223 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[18]];
  v261[18] = v223;
  v257 = [MEMORY[0x277CBEA60] arrayWithObjects:v261 count:19];
  MEMORY[0x277D82BD8](v223);
  MEMORY[0x277D82BD8](v224);
  MEMORY[0x277D82BD8](v225);
  MEMORY[0x277D82BD8](v226);
  MEMORY[0x277D82BD8](v227);
  MEMORY[0x277D82BD8](v228);
  MEMORY[0x277D82BD8](v229);
  MEMORY[0x277D82BD8](v230);
  MEMORY[0x277D82BD8](v231);
  MEMORY[0x277D82BD8](v232);
  MEMORY[0x277D82BD8](v233);
  MEMORY[0x277D82BD8](v234);
  MEMORY[0x277D82BD8](v235);
  MEMORY[0x277D82BD8](v236);
  MEMORY[0x277D82BD8](v237);
  MEMORY[0x277D82BD8](v238);
  MEMORY[0x277D82BD8](v239);
  MEMORY[0x277D82BD8](v240);
  MEMORY[0x277D82BD8](v241);
  v243 = objc_alloc(MEMORY[0x277D0A800]);
  v246 = [(NLSessionActivity *)v259 UUID];
  v245 = FIUIStateMachineLabel();
  v242 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v244 = v242;
  v3 = [v243 initWithLabel:v245 queue:?];
  stateMachine = v259->_stateMachine;
  v259->_stateMachine = v3;
  MEMORY[0x277D82BD8](stateMachine);
  MEMORY[0x277D82BD8](v244);
  MEMORY[0x277D82BD8](v245);
  MEMORY[0x277D82BD8](v246);
  v5 = v259->_stateMachine;
  FIUIStateMachineSetDiagnosticAndErrorHandler();
  v256 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v257, "count")}];
  memset(v254, 0, sizeof(v254));
  obj = MEMORY[0x277D82BE0](v257);
  v248 = [obj countByEnumeratingWithState:v254 objects:v260 count:16];
  if (v248)
  {
    v220 = *v254[2];
    v221 = 0;
    v222 = v248;
    while (1)
    {
      v219 = v221;
      if (*v254[2] != v220)
      {
        objc_enumerationMutation(obj);
      }

      v255 = *(v254[1] + 8 * v221);
      v253 = [v255 unsignedIntegerValue];
      v217 = objc_alloc(MEMORY[0x277D0A7F8]);
      v218 = NLActivityStateIdentifierDescription(v253);
      v252 = [v217 initWithLabel:?];
      MEMORY[0x277D82BD8](v218);
      [v256 setObject:v252 forKeyedSubscript:v255];
      [(FIUIStateMachine *)v259->_stateMachine addState:v252];
      objc_storeStrong(&v252, 0);
      ++v221;
      if (v219 + 1 >= v222)
      {
        v221 = 0;
        v222 = [obj countByEnumeratingWithState:v254 objects:v260 count:16];
        if (!v222)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v251 = [objc_alloc(MEMORY[0x277D0A7F8]) initWithLabel:@"Preparing"];
  v9 = objc_alloc(MEMORY[0x277CBEB98]);
  v6 = v256;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[1]];
  v14 = [v6 objectForKeyedSubscript:?];
  v7 = v256;
  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[3]];
  v12 = [v7 objectForKeyedSubscript:?];
  v8 = v256;
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v10 = [v8 objectForKeyedSubscript:?];
  v250 = [v9 initWithObjects:{v14, v12, v10, 0}];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  v19 = v259->_stateMachine;
  v17 = v250;
  v18 = v251;
  v16 = v256;
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[1]];
  v20 = [v16 objectForKeyedSubscript:?];
  [(FIUIStateMachine *)v19 addChildStates:v17 toState:v18 withEntryState:?];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  v249 = [objc_alloc(MEMORY[0x277D0A7F8]) initWithLabel:@"InSession"];
  v31 = v259->_stateMachine;
  v28 = MEMORY[0x277CBEB98];
  v22 = v256;
  v46 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v45 = [v22 objectForKeyedSubscript:?];
  v23 = v256;
  v44 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v43 = [v23 objectForKeyedSubscript:?];
  v24 = v256;
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[9]];
  v41 = [v24 objectForKeyedSubscript:?];
  v25 = v256;
  v40 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[6]];
  v39 = [v25 objectForKeyedSubscript:?];
  v26 = v256;
  v38 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[7]];
  v37 = [v26 objectForKeyedSubscript:?];
  v27 = v256;
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[10]];
  v35 = [v27 objectForKeyedSubscript:?];
  v34 = [v28 setWithObjects:{v45, v43, v41, v39, v37, v35, 0}];
  v30 = v249;
  v29 = v256;
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v32 = [v29 objectForKeyedSubscript:?];
  [(FIUIStateMachine *)v31 addChildStates:v34 toState:v30 withEntryState:?];
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v46);
  objc_storeStrong(&v259->_stateMap, v256);
  stateMap = v259->_stateMap;
  v49 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[0]];
  v48 = [(NSDictionary *)stateMap objectForKeyedSubscript:?];
  _RegisterTransition_0(stateMap, v48, v251, 1);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  v51 = v259->_stateMap;
  v55 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[0]];
  v54 = [(NSDictionary *)v51 objectForKeyedSubscript:?];
  v50 = v259->_stateMap;
  v53 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[2]];
  v52 = [(NSDictionary *)v50 objectForKeyedSubscript:?];
  _RegisterTransition_0(v51, v54, v52, 2);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v55);
  v57 = v259->_stateMap;
  v61 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[2]];
  v60 = [(NSDictionary *)v57 objectForKeyedSubscript:?];
  v56 = v259->_stateMap;
  v59 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v58 = [(NSDictionary *)v56 objectForKeyedSubscript:?];
  _RegisterTransition_0(v57, v60, v58, 5);
  MEMORY[0x277D82BD8](v58);
  MEMORY[0x277D82BD8](v59);
  MEMORY[0x277D82BD8](v60);
  MEMORY[0x277D82BD8](v61);
  v63 = v259->_stateMap;
  v67 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[2]];
  v66 = [(NSDictionary *)v63 objectForKeyedSubscript:?];
  v62 = v259->_stateMap;
  v65 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v64 = [(NSDictionary *)v62 objectForKeyedSubscript:?];
  _RegisterTransition_0(v63, v66, v64, 6);
  MEMORY[0x277D82BD8](v64);
  MEMORY[0x277D82BD8](v65);
  MEMORY[0x277D82BD8](v66);
  MEMORY[0x277D82BD8](v67);
  v69 = v259->_stateMap;
  v73 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[2]];
  v72 = [(NSDictionary *)v69 objectForKeyedSubscript:?];
  v68 = v259->_stateMap;
  v71 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v70 = [(NSDictionary *)v68 objectForKeyedSubscript:?];
  _RegisterTransition_0(v69, v72, v70, 7);
  MEMORY[0x277D82BD8](v70);
  MEMORY[0x277D82BD8](v71);
  MEMORY[0x277D82BD8](v72);
  MEMORY[0x277D82BD8](v73);
  v75 = v259->_stateMap;
  v79 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[1]];
  v78 = [(NSDictionary *)v75 objectForKeyedSubscript:?];
  v74 = v259->_stateMap;
  v77 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[3]];
  v76 = [(NSDictionary *)v74 objectForKeyedSubscript:?];
  _RegisterTransition_0(v75, v78, v76, 3);
  MEMORY[0x277D82BD8](v76);
  MEMORY[0x277D82BD8](v77);
  MEMORY[0x277D82BD8](v78);
  MEMORY[0x277D82BD8](v79);
  v81 = v259->_stateMap;
  v85 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[3]];
  v84 = [(NSDictionary *)v81 objectForKeyedSubscript:?];
  v80 = v259->_stateMap;
  v83 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v82 = [(NSDictionary *)v80 objectForKeyedSubscript:?];
  _RegisterTransition_0(v81, v84, v82, 4);
  MEMORY[0x277D82BD8](v82);
  MEMORY[0x277D82BD8](v83);
  MEMORY[0x277D82BD8](v84);
  MEMORY[0x277D82BD8](v85);
  v87 = v259->_stateMap;
  v86 = v251;
  v89 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[11]];
  v88 = [(NSDictionary *)v87 objectForKeyedSubscript:?];
  _RegisterTransition_0(v87, v86, v88, 12);
  MEMORY[0x277D82BD8](v88);
  MEMORY[0x277D82BD8](v89);
  v90 = v259->_stateMap;
  v92 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v91 = [(NSDictionary *)v90 objectForKeyedSubscript:?];
  _RegisterTransition_0(v90, v91, v249, 5);
  MEMORY[0x277D82BD8](v91);
  MEMORY[0x277D82BD8](v92);
  v94 = v259->_stateMap;
  v98 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[3]];
  v97 = [(NSDictionary *)v94 objectForKeyedSubscript:?];
  v93 = v259->_stateMap;
  v96 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[14]];
  v95 = [(NSDictionary *)v93 objectForKeyedSubscript:?];
  _RegisterTransition_0(v94, v97, v95, 13);
  MEMORY[0x277D82BD8](v95);
  MEMORY[0x277D82BD8](v96);
  MEMORY[0x277D82BD8](v97);
  MEMORY[0x277D82BD8](v98);
  v100 = v259->_stateMap;
  v104 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v103 = [(NSDictionary *)v100 objectForKeyedSubscript:?];
  v99 = v259->_stateMap;
  v102 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v101 = [(NSDictionary *)v99 objectForKeyedSubscript:?];
  _RegisterTransition_0(v100, v103, v101, 6);
  MEMORY[0x277D82BD8](v101);
  MEMORY[0x277D82BD8](v102);
  MEMORY[0x277D82BD8](v103);
  MEMORY[0x277D82BD8](v104);
  v106 = v259->_stateMap;
  v110 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v109 = [(NSDictionary *)v106 objectForKeyedSubscript:?];
  v105 = v259->_stateMap;
  v108 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v107 = [(NSDictionary *)v105 objectForKeyedSubscript:?];
  _RegisterTransition_0(v106, v109, v107, 7);
  MEMORY[0x277D82BD8](v107);
  MEMORY[0x277D82BD8](v108);
  MEMORY[0x277D82BD8](v109);
  MEMORY[0x277D82BD8](v110);
  v112 = v259->_stateMap;
  v116 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v115 = [(NSDictionary *)v112 objectForKeyedSubscript:?];
  v111 = v259->_stateMap;
  v114 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[7]];
  v113 = [(NSDictionary *)v111 objectForKeyedSubscript:?];
  _RegisterTransition_0(v112, v115, v113, 11);
  MEMORY[0x277D82BD8](v113);
  MEMORY[0x277D82BD8](v114);
  MEMORY[0x277D82BD8](v115);
  MEMORY[0x277D82BD8](v116);
  v118 = v259->_stateMap;
  v122 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[7]];
  v121 = [(NSDictionary *)v118 objectForKeyedSubscript:?];
  v117 = v259->_stateMap;
  v120 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v119 = [(NSDictionary *)v117 objectForKeyedSubscript:?];
  _RegisterTransition_0(v118, v121, v119, 10);
  MEMORY[0x277D82BD8](v119);
  MEMORY[0x277D82BD8](v120);
  MEMORY[0x277D82BD8](v121);
  MEMORY[0x277D82BD8](v122);
  v124 = v259->_stateMap;
  v128 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v127 = [(NSDictionary *)v124 objectForKeyedSubscript:?];
  v123 = v259->_stateMap;
  v126 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[6]];
  v125 = [(NSDictionary *)v123 objectForKeyedSubscript:?];
  _RegisterTransition_0(v124, v127, v125, 11);
  MEMORY[0x277D82BD8](v125);
  MEMORY[0x277D82BD8](v126);
  MEMORY[0x277D82BD8](v127);
  MEMORY[0x277D82BD8](v128);
  v130 = v259->_stateMap;
  v134 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[6]];
  v133 = [(NSDictionary *)v130 objectForKeyedSubscript:?];
  v129 = v259->_stateMap;
  v132 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v131 = [(NSDictionary *)v129 objectForKeyedSubscript:?];
  _RegisterTransition_0(v130, v133, v131, 10);
  MEMORY[0x277D82BD8](v131);
  MEMORY[0x277D82BD8](v132);
  MEMORY[0x277D82BD8](v133);
  MEMORY[0x277D82BD8](v134);
  v136 = v259->_stateMap;
  v140 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[9]];
  v139 = [(NSDictionary *)v136 objectForKeyedSubscript:?];
  v135 = v259->_stateMap;
  v138 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[10]];
  v137 = [(NSDictionary *)v135 objectForKeyedSubscript:?];
  _RegisterTransition_0(v136, v139, v137, 11);
  MEMORY[0x277D82BD8](v137);
  MEMORY[0x277D82BD8](v138);
  MEMORY[0x277D82BD8](v139);
  MEMORY[0x277D82BD8](v140);
  v142 = v259->_stateMap;
  v146 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[10]];
  v145 = [(NSDictionary *)v142 objectForKeyedSubscript:?];
  v141 = v259->_stateMap;
  v144 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[9]];
  v143 = [(NSDictionary *)v141 objectForKeyedSubscript:?];
  _RegisterTransition_0(v142, v145, v143, 10);
  MEMORY[0x277D82BD8](v143);
  MEMORY[0x277D82BD8](v144);
  MEMORY[0x277D82BD8](v145);
  MEMORY[0x277D82BD8](v146);
  v148 = v259->_stateMap;
  v152 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v151 = [(NSDictionary *)v148 objectForKeyedSubscript:?];
  v147 = v259->_stateMap;
  v150 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[9]];
  v149 = [(NSDictionary *)v147 objectForKeyedSubscript:?];
  _RegisterTransition_0(v148, v151, v149, 8);
  MEMORY[0x277D82BD8](v149);
  MEMORY[0x277D82BD8](v150);
  MEMORY[0x277D82BD8](v151);
  MEMORY[0x277D82BD8](v152);
  v154 = v259->_stateMap;
  v158 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[9]];
  v157 = [(NSDictionary *)v154 objectForKeyedSubscript:?];
  v153 = v259->_stateMap;
  v156 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v155 = [(NSDictionary *)v153 objectForKeyedSubscript:?];
  _RegisterTransition_0(v154, v157, v155, 9);
  MEMORY[0x277D82BD8](v155);
  MEMORY[0x277D82BD8](v156);
  MEMORY[0x277D82BD8](v157);
  MEMORY[0x277D82BD8](v158);
  v160 = v259->_stateMap;
  v164 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[9]];
  v163 = [(NSDictionary *)v160 objectForKeyedSubscript:?];
  v159 = v259->_stateMap;
  v162 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v161 = [(NSDictionary *)v159 objectForKeyedSubscript:?];
  _RegisterTransition_0(v160, v163, v161, 7);
  MEMORY[0x277D82BD8](v161);
  MEMORY[0x277D82BD8](v162);
  MEMORY[0x277D82BD8](v163);
  MEMORY[0x277D82BD8](v164);
  v166 = v259->_stateMap;
  v165 = v249;
  v168 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[11]];
  v167 = [(NSDictionary *)v166 objectForKeyedSubscript:?];
  _RegisterTransition_0(v166, v165, v167, 12);
  MEMORY[0x277D82BD8](v167);
  MEMORY[0x277D82BD8](v168);
  v170 = v259->_stateMap;
  v174 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[14]];
  v173 = [(NSDictionary *)v170 objectForKeyedSubscript:?];
  v169 = v259->_stateMap;
  v172 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[15]];
  v171 = [(NSDictionary *)v169 objectForKeyedSubscript:?];
  _RegisterTransition_0(v170, v173, v171, 16);
  MEMORY[0x277D82BD8](v171);
  MEMORY[0x277D82BD8](v172);
  MEMORY[0x277D82BD8](v173);
  MEMORY[0x277D82BD8](v174);
  v176 = v259->_stateMap;
  v180 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[15]];
  v179 = [(NSDictionary *)v176 objectForKeyedSubscript:?];
  v175 = v259->_stateMap;
  v178 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[17]];
  v177 = [(NSDictionary *)v175 objectForKeyedSubscript:?];
  _RegisterTransition_0(v176, v179, v177, 20);
  MEMORY[0x277D82BD8](v177);
  MEMORY[0x277D82BD8](v178);
  MEMORY[0x277D82BD8](v179);
  MEMORY[0x277D82BD8](v180);
  v182 = v259->_stateMap;
  v186 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[11]];
  v185 = [(NSDictionary *)v182 objectForKeyedSubscript:?];
  v181 = v259->_stateMap;
  v184 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[18]];
  v183 = [(NSDictionary *)v181 objectForKeyedSubscript:?];
  _RegisterTransition_0(v182, v185, v183, 21);
  MEMORY[0x277D82BD8](v183);
  MEMORY[0x277D82BD8](v184);
  MEMORY[0x277D82BD8](v185);
  MEMORY[0x277D82BD8](v186);
  v188 = v259->_stateMap;
  v192 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[18]];
  v191 = [(NSDictionary *)v188 objectForKeyedSubscript:?];
  v187 = v259->_stateMap;
  v190 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[16]];
  v189 = [(NSDictionary *)v187 objectForKeyedSubscript:?];
  _RegisterTransition_0(v188, v191, v189, 17);
  MEMORY[0x277D82BD8](v189);
  MEMORY[0x277D82BD8](v190);
  MEMORY[0x277D82BD8](v191);
  MEMORY[0x277D82BD8](v192);
  v194 = v259->_stateMap;
  v198 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[18]];
  v197 = [(NSDictionary *)v194 objectForKeyedSubscript:?];
  v193 = v259->_stateMap;
  v196 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[14]];
  v195 = [(NSDictionary *)v193 objectForKeyedSubscript:?];
  _RegisterTransition_0(v194, v197, v195, 19);
  MEMORY[0x277D82BD8](v195);
  MEMORY[0x277D82BD8](v196);
  MEMORY[0x277D82BD8](v197);
  MEMORY[0x277D82BD8](v198);
  v200 = v259->_stateMap;
  v204 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[11]];
  v203 = [(NSDictionary *)v200 objectForKeyedSubscript:?];
  v199 = v259->_stateMap;
  v202 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[15]];
  v201 = [(NSDictionary *)v199 objectForKeyedSubscript:?];
  _RegisterTransition_0(v200, v203, v201, 16);
  MEMORY[0x277D82BD8](v201);
  MEMORY[0x277D82BD8](v202);
  MEMORY[0x277D82BD8](v203);
  MEMORY[0x277D82BD8](v204);
  v206 = v259->_stateMap;
  v210 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[16]];
  v209 = [(NSDictionary *)v206 objectForKeyedSubscript:?];
  v205 = v259->_stateMap;
  v208 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[14]];
  v207 = [(NSDictionary *)v205 objectForKeyedSubscript:?];
  _RegisterTransition_0(v206, v209, v207, 18);
  MEMORY[0x277D82BD8](v207);
  MEMORY[0x277D82BD8](v208);
  MEMORY[0x277D82BD8](v209);
  MEMORY[0x277D82BD8](v210);
  v212 = v259->_stateMap;
  v216 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[16]];
  v215 = [(NSDictionary *)v212 objectForKeyedSubscript:?];
  v211 = v259->_stateMap;
  v214 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[17]];
  v213 = [(NSDictionary *)v211 objectForKeyedSubscript:?];
  _RegisterTransition_0(v212, v215, v213, 20);
  MEMORY[0x277D82BD8](v213);
  MEMORY[0x277D82BD8](v214);
  MEMORY[0x277D82BD8](v215);
  MEMORY[0x277D82BD8](v216);
  [(NLSessionActivity *)v259 _configureStateActions];
  [(FIUIStateMachine *)v259->_stateMachine export];
  objc_storeStrong(&v249, 0);
  objc_storeStrong(&v250, 0);
  objc_storeStrong(&v251, 0);
  objc_storeStrong(&v256, 0);
  objc_storeStrong(&v257, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_configureStateActions
{
  v166 = self;
  __b[19] = a2;
  memset(__b, 0, 0x98uLL);
  NLActivityStateIdentifierShortHandStruct(__b);
  objc_initWeak(&location, v166);
  stateMap = v166->_stateMap;
  v54 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[1]];
  v53 = [(NSDictionary *)stateMap objectForKeyedSubscript:?];
  v158 = MEMORY[0x277D85DD0];
  v159 = -1073741824;
  v160 = 0;
  v161 = __43__NLSessionActivity__configureStateActions__block_invoke;
  v162 = &unk_277D88970;
  objc_copyWeak(v163, &location);
  [v53 setEntry:&v158];
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v54);
  v52 = v166->_stateMap;
  v51 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[2]];
  v50 = [(NSDictionary *)v52 objectForKeyedSubscript:?];
  v152 = MEMORY[0x277D85DD0];
  v153 = -1073741824;
  v154 = 0;
  v155 = __43__NLSessionActivity__configureStateActions__block_invoke_2;
  v156 = &unk_277D88970;
  objc_copyWeak(&v157, &location);
  [v50 setEntry:&v152];
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](v51);
  v49 = v166->_stateMap;
  v48 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[3]];
  v47 = [(NSDictionary *)v49 objectForKeyedSubscript:?];
  v146 = MEMORY[0x277D85DD0];
  v147 = -1073741824;
  v148 = 0;
  v149 = __43__NLSessionActivity__configureStateActions__block_invoke_3;
  v150 = &unk_277D88970;
  objc_copyWeak(&v151, &location);
  [v47 setEntry:&v146];
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v48);
  v46 = v166->_stateMap;
  v45 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[4]];
  v44 = [(NSDictionary *)v46 objectForKeyedSubscript:?];
  v140 = MEMORY[0x277D85DD0];
  v141 = -1073741824;
  v142 = 0;
  v143 = __43__NLSessionActivity__configureStateActions__block_invoke_4;
  v144 = &unk_277D88970;
  objc_copyWeak(&v145, &location);
  [v44 setEntry:&v140];
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  v43 = v166->_stateMap;
  v42 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[8]];
  v41 = [(NSDictionary *)v43 objectForKeyedSubscript:?];
  v134 = MEMORY[0x277D85DD0];
  v135 = -1073741824;
  v136 = 0;
  v137 = __43__NLSessionActivity__configureStateActions__block_invoke_5;
  v138 = &unk_277D88970;
  objc_copyWeak(&v139, &location);
  [v41 setEntry:&v134];
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  v40 = v166->_stateMap;
  v39 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[5]];
  v38 = [(NSDictionary *)v40 objectForKeyedSubscript:?];
  v128 = MEMORY[0x277D85DD0];
  v129 = -1073741824;
  v130 = 0;
  v131 = __43__NLSessionActivity__configureStateActions__block_invoke_6;
  v132 = &unk_277D88970;
  objc_copyWeak(&v133, &location);
  [v38 setEntry:&v128];
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  v37 = v166->_stateMap;
  v36 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[6]];
  v35 = [(NSDictionary *)v37 objectForKeyedSubscript:?];
  v122 = MEMORY[0x277D85DD0];
  v123 = -1073741824;
  v124 = 0;
  v125 = __43__NLSessionActivity__configureStateActions__block_invoke_7;
  v126 = &unk_277D88970;
  objc_copyWeak(&v127, &location);
  [v35 setEntry:&v122];
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  v34 = v166->_stateMap;
  v33 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[7]];
  v32 = [(NSDictionary *)v34 objectForKeyedSubscript:?];
  v116 = MEMORY[0x277D85DD0];
  v117 = -1073741824;
  v118 = 0;
  v119 = __43__NLSessionActivity__configureStateActions__block_invoke_8;
  v120 = &unk_277D88970;
  objc_copyWeak(&v121, &location);
  [v32 setEntry:&v116];
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  v31 = v166->_stateMap;
  v30 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[9]];
  v29 = [(NSDictionary *)v31 objectForKeyedSubscript:?];
  v110 = MEMORY[0x277D85DD0];
  v111 = -1073741824;
  v112 = 0;
  v113 = __43__NLSessionActivity__configureStateActions__block_invoke_9;
  v114 = &unk_277D88970;
  objc_copyWeak(&v115, &location);
  [v29 setEntry:&v110];
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  v28 = v166->_stateMap;
  v27 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[10]];
  v26 = [(NSDictionary *)v28 objectForKeyedSubscript:?];
  v104 = MEMORY[0x277D85DD0];
  v105 = -1073741824;
  v106 = 0;
  v107 = __43__NLSessionActivity__configureStateActions__block_invoke_10;
  v108 = &unk_277D88970;
  objc_copyWeak(&v109, &location);
  [v26 setEntry:&v104];
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  v25 = v166->_stateMap;
  v24 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[11]];
  v23 = [(NSDictionary *)v25 objectForKeyedSubscript:?];
  v98 = MEMORY[0x277D85DD0];
  v99 = -1073741824;
  v100 = 0;
  v101 = __43__NLSessionActivity__configureStateActions__block_invoke_11;
  v102 = &unk_277D88970;
  objc_copyWeak(&v103, &location);
  [v23 setEntry:&v98];
  MEMORY[0x277D82BD8](v23);
  MEMORY[0x277D82BD8](v24);
  v22 = v166->_stateMap;
  v21 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[18]];
  v20 = [(NSDictionary *)v22 objectForKeyedSubscript:?];
  v92 = MEMORY[0x277D85DD0];
  v93 = -1073741824;
  v94 = 0;
  v95 = __43__NLSessionActivity__configureStateActions__block_invoke_12;
  v96 = &unk_277D88970;
  objc_copyWeak(&v97, &location);
  [v20 setEntry:&v92];
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  v19 = v166->_stateMap;
  v18 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[15]];
  v17 = [(NSDictionary *)v19 objectForKeyedSubscript:?];
  v86 = MEMORY[0x277D85DD0];
  v87 = -1073741824;
  v88 = 0;
  v89 = __43__NLSessionActivity__configureStateActions__block_invoke_13;
  v90 = &unk_277D88970;
  objc_copyWeak(&v91, &location);
  [v17 setEntry:&v86];
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  v16 = v166->_stateMap;
  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[16]];
  v14 = [(NSDictionary *)v16 objectForKeyedSubscript:?];
  v80 = MEMORY[0x277D85DD0];
  v81 = -1073741824;
  v82 = 0;
  v83 = __43__NLSessionActivity__configureStateActions__block_invoke_14;
  v84 = &unk_277D88970;
  objc_copyWeak(&v85, &location);
  [v14 setEntry:&v80];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  v13 = v166->_stateMap;
  v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[12]];
  v11 = [(NSDictionary *)v13 objectForKeyedSubscript:?];
  v74 = MEMORY[0x277D85DD0];
  v75 = -1073741824;
  v76 = 0;
  v77 = __43__NLSessionActivity__configureStateActions__block_invoke_15;
  v78 = &unk_277D88970;
  objc_copyWeak(&v79, &location);
  [v11 setEntry:&v74];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  v10 = v166->_stateMap;
  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[17]];
  v8 = [(NSDictionary *)v10 objectForKeyedSubscript:?];
  v68 = MEMORY[0x277D85DD0];
  v69 = -1073741824;
  v70 = 0;
  v71 = __43__NLSessionActivity__configureStateActions__block_invoke_16;
  v72 = &unk_277D88970;
  objc_copyWeak(&v73, &location);
  [v8 setEntry:&v68];
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  v7 = v166->_stateMap;
  v6 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[13]];
  v5 = [(NSDictionary *)v7 objectForKeyedSubscript:?];
  v62 = MEMORY[0x277D85DD0];
  v63 = -1073741824;
  v64 = 0;
  v65 = __43__NLSessionActivity__configureStateActions__block_invoke_17;
  v66 = &unk_277D88970;
  objc_copyWeak(&v67, &location);
  [v5 setEntry:&v62];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v4 = v166->_stateMap;
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:__b[14]];
  v2 = [(NSDictionary *)v4 objectForKeyedSubscript:?];
  v56 = MEMORY[0x277D85DD0];
  v57 = -1073741824;
  v58 = 0;
  v59 = __43__NLSessionActivity__configureStateActions__block_invoke_18;
  v60 = &unk_277D88970;
  objc_copyWeak(&v61, &location);
  [v2 setEntry:&v56];
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  objc_destroyWeak(&v61);
  objc_destroyWeak(&v67);
  objc_destroyWeak(&v73);
  objc_destroyWeak(&v79);
  objc_destroyWeak(&v85);
  objc_destroyWeak(&v91);
  objc_destroyWeak(&v97);
  objc_destroyWeak(&v103);
  objc_destroyWeak(&v109);
  objc_destroyWeak(&v115);
  objc_destroyWeak(&v121);
  objc_destroyWeak(&v127);
  objc_destroyWeak(&v133);
  objc_destroyWeak(&v139);
  objc_destroyWeak(&v145);
  objc_destroyWeak(&v151);
  objc_destroyWeak(&v157);
  objc_destroyWeak(v163);
  objc_destroyWeak(&location);
}

void __43__NLSessionActivity__configureStateActions__block_invoke(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onPrepare];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_2(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onRecovery];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_3(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onActivating];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_4(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onFirstActivation];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_5(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onActive];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_6(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onPaused];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_7(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onPausedNeedsHeartRate];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_8(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onHeartRatePaused];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_9(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onAutoPaused];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_10(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onAutoPausedNeedsHeartRate];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_11(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onEnding];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_12(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onEndingCollection];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_13(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onDiscarding];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_14(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onSaving];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_15(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onErrorActivating];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_16(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onCompleted];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_17(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onErrorEnding];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __43__NLSessionActivity__configureStateActions__block_invoke_18(id *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9 = 0;
  objc_storeStrong(&v9, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  WeakRetained = objc_loadWeakRetained(a1 + 4);
  [WeakRetained _onFatalError];
  MEMORY[0x277D82BD8](WeakRetained);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)_startPrecisionStartAccumulators
{
  v13 = self;
  location[1] = a2;
  objc_initWeak(location, self);
  v11[1] = COERCE_ID(-5.0);
  v4 = [MEMORY[0x277CBEAA8] date];
  v11[0] = [v4 dateByAddingTimeInterval:-5.0];
  MEMORY[0x277D82BD8](v4);
  heartRatePrecisionStartAccumulator = v13->_heartRatePrecisionStartAccumulator;
  v3 = v11[0];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __53__NLSessionActivity__startPrecisionStartAccumulators__block_invoke;
  v9 = &unk_277D88B00;
  objc_copyWeak(v10, location);
  [(NLSessionActivityDataAccumulator *)heartRatePrecisionStartAccumulator startAccumulatingWithStartDate:v3 updateHandler:&v5];
  objc_destroyWeak(v10);
  objc_storeStrong(v11, 0);
  objc_destroyWeak(location);
}

uint64_t __53__NLSessionActivity__startPrecisionStartAccumulators__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 heartRatePrecisionStartAccumulator];
  [WeakRetained heartRatePrecisionStartAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (id)currentWorkoutActivity
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = self;
  v8[1] = a2;
  v8[0] = 0;
  if ([(NLSessionActivity *)self shouldSplitByActivity])
  {
    v2 = [(HKLiveWorkoutBuilder *)v9->_builder currentWorkoutActivity];
    v3 = v8[0];
    v8[0] = v2;
    MEMORY[0x277D82BD8](v3);
    if (!v8[0])
    {
      v6 = [(HKLiveWorkoutBuilder *)v9->_builder workoutActivities];
      v8[0] = [v6 lastObject];
      MEMORY[0x277D82BD8](0);
      MEMORY[0x277D82BD8](v6);
      _HKInitializeLogging();
      oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v10, v8[0]);
        _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[multisport] currentWorkoutActivity returned nil, returning last activity %@", v10, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  v5 = MEMORY[0x277D82BE0](v8[0]);
  objc_storeStrong(v8, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

- (id)currentIntervalWorkoutActivity
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = self;
  v8[1] = a2;
  v8[0] = 0;
  if ([(WOCoreLiveWorkoutConfiguration *)self->_configuration isInterval])
  {
    v2 = [(HKLiveWorkoutBuilder *)v9->_builder currentWorkoutActivity];
    v3 = v8[0];
    v8[0] = v2;
    MEMORY[0x277D82BD8](v3);
    if (!v8[0])
    {
      v6 = [(HKLiveWorkoutBuilder *)v9->_builder workoutActivities];
      v8[0] = [v6 lastObject];
      MEMORY[0x277D82BD8](0);
      MEMORY[0x277D82BD8](v6);
      _HKInitializeLogging();
      oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v10, v8[0]);
        _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[intervals] currentWorkoutActivity returned nil, returning last activity %@", v10, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  v5 = MEMORY[0x277D82BE0](v8[0]);
  objc_storeStrong(v8, 0);
  *MEMORY[0x277D85DE8];

  return v5;
}

- (id)currentActivityStartDate
{
  v5 = self;
  location[1] = a2;
  location[0] = [(NLSessionActivity *)self currentWorkoutActivity];
  if (location[0])
  {
    v6 = [location[0] startDate];
  }

  else
  {
    v6 = [(HKLiveWorkoutBuilder *)v5->_builder startDate];
  }

  objc_storeStrong(location, 0);
  v2 = v6;

  return v2;
}

- (id)_latestCompletedIntervalActivityEndDate
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = self;
  v20[1] = a2;
  v20[0] = 0;
  if ([(WOCoreLiveWorkoutConfiguration *)self->_configuration isInterval])
  {
    location = [(HKLiveWorkoutBuilder *)v21->_builder workoutActivities];
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](location);
    v16 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
    if (v16)
    {
      v12 = *__b[2];
      v13 = 0;
      v14 = v16;
      while (1)
      {
        v11 = v13;
        if (*__b[2] != v12)
        {
          objc_enumerationMutation(obj);
        }

        v18 = *(__b[1] + 8 * v13);
        if (v20[0])
        {
          v10 = [v18 endDate];
          MEMORY[0x277D82BD8](v10);
          if (v10)
          {
            v8 = v20[0];
            v9 = [v18 endDate];
            v4 = [v8 laterDate:?];
            v5 = v20[0];
            v20[0] = v4;
            MEMORY[0x277D82BD8](v5);
            MEMORY[0x277D82BD8](v9);
          }
        }

        else
        {
          v2 = [v18 endDate];
          v3 = v20[0];
          v20[0] = v2;
          MEMORY[0x277D82BD8](v3);
        }

        ++v13;
        if (v11 + 1 >= v14)
        {
          v13 = 0;
          v14 = [obj countByEnumeratingWithState:__b objects:v22 count:16];
          if (!v14)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    objc_storeStrong(&location, 0);
  }

  v7 = MEMORY[0x277D82BE0](v20[0]);
  objc_storeStrong(v20, 0);
  *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_onRecovery
{
  v42 = *MEMORY[0x277D85DE8];
  v39 = self;
  v38[1] = a2;
  v2 = [(HKLiveWorkoutBuilder *)self->_builder startDate];
  activityBeginDate = v39->_activityBeginDate;
  v39->_activityBeginDate = v2;
  MEMORY[0x277D82BD8](activityBeginDate);
  v38[0] = [(NLSessionActivity *)v39 currentActivityStartDate];
  v37 = [(NLSessionActivity *)v39 currentWorkoutEvents];
  _HKInitializeLogging();
  location = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v35 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v41, v39->_activityBeginDate, v38[0]);
    _os_log_impl(&dword_20AEA4000, location, v35, "[SessionActivity] Attempting recovery with builder start date %@, current activity start date %@", v41, 0x16u);
  }

  objc_storeStrong(&location, 0);
  [(NLSessionActivity *)v39 _startAccumulatingElapsedTimeWithStartDate:v39->_activityBeginDate];
  [(NLSessionActivity *)v39 _startIdempotentAccumulatingDataWithStartDate:v39->_activityBeginDate];
  [(NLSessionActivity *)v39 _startActivityDependentAccumulatingDataWithStartDate:v38[0]];
  v26 = [(NLSessionActivity *)v39 segmentAccumulator];
  [(WOSegmentAccumulator *)v26 recoverSegmentMarkersFrom:v37];
  MEMORY[0x277D82BD8](v26);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v39->_splitsAccumulators);
  v28 = [obj countByEnumeratingWithState:__b objects:v40 count:16];
  if (v28)
  {
    v23 = *__b[2];
    v24 = 0;
    v25 = v28;
    while (1)
    {
      v22 = v24;
      if (*__b[2] != v23)
      {
        objc_enumerationMutation(obj);
      }

      v34 = *(__b[1] + 8 * v24);
      [v34 recoverFrom:v37];
      ++v24;
      if (v22 + 1 >= v25)
      {
        v24 = 0;
        v25 = [obj countByEnumeratingWithState:__b objects:v40 count:16];
        if (!v25)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v20 = [(NLSessionActivity *)v39 splitsDisplayAccumulator];
  [(WOSplitsDisplayAccumulator *)v20 assignStartValues];
  MEMORY[0x277D82BD8](v20);
  v21 = [(HKLiveWorkoutBuilder *)v39->_builder metadata];
  v32 = [v21 objectForKeyedSubscript:@"_HKPrivateMetadataKeyFastestPace"];
  MEMORY[0x277D82BD8](v21);
  if (v32)
  {
    v19 = [(NLSessionActivity *)v39 paceAccumulator];
    [v32 doubleValue];
    [(NLSessionActivityPaceAccumulator *)v19 recoverFastestPace:?];
    MEMORY[0x277D82BD8](v19);
  }

  [(WORaceCoordinator *)v39->_raceCoordinator recoverRoutePoints];
  v15 = [(WORaceCoordinator *)v39->_raceCoordinator racePositionProvider];
  [(WORacePositionProvider *)v15 recoverFrom:v39->_builder];
  MEMORY[0x277D82BD8](v15);
  v16 = v39;
  v17 = [(WORaceCoordinator *)v39->_raceCoordinator racePositionProvider];
  [(NLSessionActivity *)v16 addSessionStateObserver:?];
  MEMORY[0x277D82BD8](v17);
  [(NLPacerDistanceGoalProgressAccumulator *)v39->_pacerDistanceGoalProgressAccumulator recoverFrom:v37];
  v18 = [(HKLiveWorkoutBuilder *)v39->_builder _currentSnapshot];
  v31 = [v18 fiui_finalWorkoutUUID];
  MEMORY[0x277D82BD8](v18);
  if (v31)
  {
    [(NLSessionActivityElevationAccumulator *)v39->_elevationAccumulator recoverLocationsFromStartDate:v38[0] workoutUUID:v31];
    [(NLSessionActivityLocationPositionAccumulator *)v39->_locationPositionAccumulator recoverLocationsFromStartDate:v38[0] healthStore:v39->_healthStore workoutUUID:v31];
  }

  v8 = [(NLSessionActivity *)v39 builder];
  v7 = [(HKLiveWorkoutBuilder *)v8 workoutEvents];
  v30 = FIFilterPauseResumeEvents();
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  downhillSnowSportsAccumulator = v39->_downhillSnowSportsAccumulator;
  v11 = [(NLSessionActivity *)v39 builder];
  v10 = [(HKLiveWorkoutBuilder *)v11 downhillRunEvents];
  healthStore = v39->_healthStore;
  [NLSessionActivityDownhillSnowSportsAccumulator recoverWithDownhillRunEvents:"recoverWithDownhillRunEvents:pauseResumeEvents:healthStore:completionHandler:" pauseResumeEvents:? healthStore:? completionHandler:?];
  MEMORY[0x277D82BD8](v10);
  MEMORY[0x277D82BD8](v11);
  [(NLSessionActivity *)v39 _setState:2];
  v29 = [(HKLiveWorkoutBuilder *)v39->_builder nl_lastUnbalancedPauseEvent];
  v13 = [v29 metadata];
  v12 = [v13 objectForKeyedSubscript:@"_HKPrivateAutoPause"];
  v14 = [v12 BOOLValue];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  if (v14)
  {
    v5 = v39;
    v6 = [MEMORY[0x277CBEAA8] date];
    [NLSessionActivity _setPauseTracking:v5 atDate:"_setPauseTracking:atDate:eventSource:" eventSource:0];
    MEMORY[0x277D82BD8](v6);
  }

  else if (v29)
  {
    [(FIUIStateMachine *)v39->_stateMachine event:6];
  }

  else
  {
    [(FIUIStateMachine *)v39->_stateMachine event:5];
  }

  [(WOSessionActivityDeviceObserver *)v39->_deviceObserver startObserving];
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(&v32, 0);
  objc_storeStrong(&v37, 0);
  objc_storeStrong(v38, 0);
  *MEMORY[0x277D85DE8];
}

void __32__NLSessionActivity__onRecovery__block_invoke(NSObject *a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  oslog[1] = a1;
  _HKInitializeLogging();
  oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    v2 = location[0] == 0;
    v3 = [location[0] debugDescription];
    __os_log_helper_16_2_2_4_0_8_64(v7, v2, v3);
    _os_log_impl(&dword_20AEA4000, oslog[0], OS_LOG_TYPE_DEFAULT, "[SessionActivity] recoverWithDownhillRunEvents returned with success=%{BOOL}d error=%@", v7, 0x12u);
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(oslog, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_onActivating
{
  v2 = [(NLSessionActivity *)self weatherManager];
  [(NLSessionActivityWeatherManager *)v2 setWorkoutStartDate:self->_activityBeginDate];
  MEMORY[0x277D82BD8](v2);
  [(NLSessionActivity *)self _startBuilderWithStartDate:self->_activityBeginDate];
  [(NLSessionActivity *)self _startAccumulatingElapsedTimeWithStartDate:self->_activityBeginDate];
}

- (void)_onFirstActivation
{
  [(NLSessionActivity *)self _stopAccumulatingPrecisionStartAccumulators];
  [(NLSessionActivity *)self _startAccumulatingDataWithStartDate:self->_activityBeginDate];
  v2 = [(WORaceCoordinator *)self->_raceCoordinator racePositionProvider];
  [(NLSessionActivity *)self addSessionStateObserver:?];
  MEMORY[0x277D82BD8](v2);
  [(NLSessionActivity *)self _powerLogWorkoutStart];
  [(NLSessionActivity *)self _updateMetadataAtWorkoutFirstActivation];
  [(FIUIStateMachine *)self->_stateMachine event:5];
}

- (void)_updateMetadataAtWorkoutFirstActivation
{
  v8 = self;
  v7[1] = a2;
  v5 = [(NLSessionActivity *)self configuration];
  v6 = [(WOCoreLiveWorkoutConfiguration *)v5 startSource];
  MEMORY[0x277D82BD8](v5);
  if (v6 == 9)
  {
    v7[0] = [MEMORY[0x277CBEB38] dictionary];
    v4 = [(NLSessionActivity *)v8 configuration];
    v3 = [(WOCoreLiveWorkoutConfiguration *)v4 dateUserRequestedToStartWorkout];
    v2 = *MEMORY[0x277CCE1A0];
    [v7[0] setObject:? forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v4);
    [(NLSessionActivity *)v8 insertOrUpdateMetadata:v7[0] forceTopLevel:1];
    objc_storeStrong(v7, 0);
  }
}

- (void)_onActive
{
  [(NLSessionActivity *)self _setState:6];
  [(NLSessionActivity *)self _updateHeartRateUpdateAvailability];
  HKSessionTrackerAriadneTrigger();
}

- (void)_onEnding
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  v16 = a2;
  [(NLSessionActivity *)self _updateHeartRateUpdateAvailability];
  [(NLSessionActivity *)v17 _setState:10];
  v11 = [(WORaceCoordinator *)v17->_raceCoordinator racePositionProvider];
  [(NLSessionActivity *)v17 removeSessionStateObserver:?];
  MEMORY[0x277D82BD8](v11);
  [(NLSessionActivity *)v17 _stopTrackingActivityWithEndDate:v17->_activityEndDate];
  if (![(NSDate *)v17->_activityEndDate isEqualToDate:v17->_activityBeginDate])
  {
    [(NLSessionActivity *)v17 _logStatistics];
  }

  [(HKLiveWorkoutBuilder *)v17->_builder elapsedTimeAtDate:v17->_activityEndDate];
  v15 = v2;
  _HKInitializeLogging();
  location = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v13 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_0_8_64(v18, v15, v17->_activityEndDate);
    _os_log_impl(&dword_20AEA4000, location, v13, "[SessionActivity] onEnding called. Builder elapsed time: %f, at end date: %@", v18, 0x16u);
  }

  objc_storeStrong(&location, 0);
  v9 = [(NLSessionActivity *)v17 lifecycleDelegate];
  v10 = [(NLSessionActivityLifecycleDelegate *)v9 shouldAutoDiscardBasedOnDuration:*&v15];
  MEMORY[0x277D82BD8](v9);
  if (v10)
  {
    [(FIUIStateMachine *)v17->_stateMachine event:16];
  }

  else
  {
    v12 = [(HKLiveWorkoutBuilder *)v17->_builder _currentSnapshot];
    v8 = [(NLSessionActivity *)v17 demoDataProvider];
    MEMORY[0x277D82BD8](v8);
    if (v8)
    {
      v7 = [(NLSessionActivity *)v17 demoDataProvider];
      v3 = [(NLWorkoutDemoDataProvider *)v7 demoWorkoutWithSnapshot:v12];
      v4 = v12;
      v12 = v3;
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v7);
    }

    v5 = [(NLSessionActivity *)v17 lifecycleDelegate];
    [(NLSessionActivityLifecycleDelegate *)v5 sessionActivity:v17 willEndWithHKWorkoutSnapshot:v12];
    MEMORY[0x277D82BD8](v5);
    v6 = [(NLSessionActivity *)v17 savingDelegate];
    [(NLSessionActivitySavingDelegate *)v6 activity:v17 willSaveWorkoutForSnapshot:v12];
    MEMORY[0x277D82BD8](v6);
    objc_storeStrong(&v12, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (void)_onSaving
{
  v23 = self;
  v22[1] = a2;
  [(NLSessionActivity *)self _stopActivityDependentAccumulatorsWithActivity:0];
  v22[0] = [(HKLiveWorkoutBuilder *)v23->_builder _currentSnapshot];
  v8 = [(NLSessionActivity *)v23 demoDataProvider];
  MEMORY[0x277D82BD8](v8);
  if (v8)
  {
    v7 = [(NLSessionActivity *)v23 demoDataProvider];
    v2 = [(NLWorkoutDemoDataProvider *)v7 demoWorkoutWithSnapshot:v22[0]];
    v3 = v22[0];
    v22[0] = v2;
    MEMORY[0x277D82BD8](v3);
    MEMORY[0x277D82BD8](v7);
  }

  v4 = [(NLSessionActivity *)v23 lifecycleDelegate];
  [(NLSessionActivityLifecycleDelegate *)v4 sessionActivity:v23 didUpdateWorkout:v22[0] workoutIsFinal:0];
  MEMORY[0x277D82BD8](v4);
  v5 = v23;
  v15 = MEMORY[0x277D85DD0];
  v16 = -1073741824;
  v17 = 0;
  v18 = __30__NLSessionActivity__onSaving__block_invoke;
  v19 = &unk_277D88B48;
  v20 = MEMORY[0x277D82BE0](v23);
  v21 = MEMORY[0x277D82BE0](v22[0]);
  [(NLSessionActivity *)v5 _notifyDataObserversWithBlock:&v15];
  v6 = [(NLSessionActivity *)v23 builder];
  v9 = MEMORY[0x277D85DD0];
  v10 = -1073741824;
  v11 = 0;
  v12 = __30__NLSessionActivity__onSaving__block_invoke_2;
  v13 = &unk_277D88B98;
  v14 = MEMORY[0x277D82BE0](v23);
  [(HKLiveWorkoutBuilder *)v6 finishWorkoutWithCompletion:&v9];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(v22, 0);
}

void __30__NLSessionActivity__onSaving__block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = location[0];
  v5 = [*(a1 + 32) dataProvider];
  v2 = *(a1 + 40);
  [v4 dataProvider:? didUpdateWorkout:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

void __30__NLSessionActivity__onSaving__block_invoke_2(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v16 = 0;
  objc_storeStrong(&v16, a3);
  v15[1] = a1;
  v5 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v5;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __30__NLSessionActivity__onSaving__block_invoke_3;
  v12 = &unk_277D88B70;
  v13 = MEMORY[0x277D82BE0](location[0]);
  v14 = MEMORY[0x277D82BE0](a1[4]);
  v15[0] = MEMORY[0x277D82BE0](v16);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
}

void __30__NLSessionActivity__onSaving__block_invoke_3(uint64_t a1)
{
  v7[2] = a1;
  v7[1] = a1;
  v7[0] = MEMORY[0x277D82BE0](*(a1 + 32));
  v6 = [*(a1 + 40) demoDataProvider];
  MEMORY[0x277D82BD8](v6);
  if (v6)
  {
    v4 = [*(a1 + 40) demoDataProvider];
    v1 = [v4 demoWorkoutWithSnapshot:*(a1 + 32)];
    v2 = v7[0];
    v7[0] = v1;
    MEMORY[0x277D82BD8](v2);
    MEMORY[0x277D82BD8](v4);
  }

  [*(a1 + 40) _handleFinishWorkoutWithWorkout:v7[0] error:{*(a1 + 48), v7}];
  objc_storeStrong(location, 0);
}

- (void)_onErrorActivating
{
  v7 = self;
  location[1] = a2;
  _HKInitializeLogging();
  location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v5 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v5;
    __os_log_helper_16_0_0(v4);
    _os_log_impl(&dword_20AEA4000, log, type, "[SessionActivity] Error activating builder for workout, discarding workout", v4, 2u);
  }

  objc_storeStrong(location, 0);
  [(FIUIStateMachine *)v7->_stateMachine event:16];
}

- (void)_onDiscarding
{
  v2 = [(NLSessionActivity *)self builder];
  [(HKLiveWorkoutBuilder *)v2 discardWorkout];
  MEMORY[0x277D82BD8](v2);
  v3 = [(NLSessionActivity *)self lifecycleDelegate];
  [(NLSessionActivityLifecycleDelegate *)v3 didDiscardSessionActivity:self];
  MEMORY[0x277D82BD8](v3);
  v4 = [(NLSessionActivity *)self savingDelegate];
  [(NLSessionActivitySavingDelegate *)v4 activityDidDiscardWorkout:self];
  MEMORY[0x277D82BD8](v4);
  [(FIUIStateMachine *)self->_stateMachine event:20];
}

- (void)_onCompleted
{
  [(NLSessionActivity *)self setBuilder:?];
  [(NLSessionActivity *)self _powerLogWorkoutStop];
  [(NLSessionActivity *)self _setState:7];
  objc_storeStrong(&self->_raceCoordinator, 0);
}

- (void)_startTracking
{
  v15 = *MEMORY[0x277D85DE8];
  v12 = self;
  v11[1] = a2;
  if ([(NLSessionActivity *)self state]== 1)
  {
    activityBeginDate = v12->_activityBeginDate;
    v7 = 0;
    if (activityBeginDate)
    {
      objc_storeStrong(&v12->_activityBeginDate, activityBeginDate);
    }

    else
    {
      v8 = [MEMORY[0x277CBEAA8] date];
      v7 = 1;
      objc_storeStrong(&v12->_activityBeginDate, v8);
    }

    if (v7)
    {
      MEMORY[0x277D82BD8](v8);
    }

    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_66(v13, v12->_activityBeginDate);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[SessionActivity] Start tracking with activity begin date %{public}@", v13, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(FIUIStateMachine *)v12->_stateMachine event:3];
  }

  else
  {
    _HKInitializeLogging();
    v11[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v10 = 16;
    if (os_log_type_enabled(v11[0], OS_LOG_TYPE_ERROR))
    {
      log = v11[0];
      type = v10;
      v5 = NLSessionActivityStateDescription([(NLSessionActivity *)v12 state]);
      v9 = MEMORY[0x277D82BE0](v5);
      __os_log_helper_16_2_1_8_64(v14, v9);
      _os_log_error_impl(&dword_20AEA4000, log, type, "*** Start tracking called in incorrect state %@", v14, 0xCu);
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&v9, 0);
    }

    objc_storeStrong(v11, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (void)_startTrackingWithStartDate:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v5->_activityBeginDate && ![(NSDate *)v5->_activityBeginDate isEqual:location[0]])
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_66_8_66(v6, v5->_activityBeginDate, location[0]);
      _os_log_error_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_ERROR, "[SessionActivity] *** API Misuse: Trying to modify start date in startTracking call: An activity initialized with a start date cannot modify its start date (%{public}@ != %{public}@)", v6, 0x16u);
    }

    objc_storeStrong(&oslog, 0);
    __assert_rtn("[NLSessionActivity _startTrackingWithStartDate:]", "NLSessionActivity.m", 1104, "false");
  }

  objc_storeStrong(&v5->_activityBeginDate, location[0]);
  [(NLSessionActivity *)v5 _startTracking];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_endTracking
{
  v43 = *MEMORY[0x277D85DE8];
  v39 = self;
  v38[1] = a2;
  _HKInitializeLogging();
  v38[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v37 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v38[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v38[0];
    type = v37;
    v21 = [(NLSessionActivity *)v39 _stateDescription];
    v36 = MEMORY[0x277D82BE0](v21);
    __os_log_helper_16_2_2_8_66_8_66(v42, v36, v39->_activityEndDate);
    _os_log_impl(&dword_20AEA4000, log, type, "End tracking called with %{public}@; activityEndDate: %{public}@;", v42, 0x16u);
    MEMORY[0x277D82BD8](v21);
    objc_storeStrong(&v36, 0);
  }

  objc_storeStrong(v38, 0);
  [(NLSessionActivity *)v39 removeMetadata:@"_HKPrivateMetadataKeyAnalyticsIdentifier" forceTopLevel:1];
  if (v39->_activityEndDate)
  {
    _HKInitializeLogging();
    v27 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v26 = 16;
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v12 = v27;
      v13 = v26;
      __os_log_helper_16_0_0(v25);
      _os_log_error_impl(&dword_20AEA4000, v12, v13, "[SessionActivity] API Misuse: endTracking called multiple times", v25, 2u);
    }

    objc_storeStrong(&v27, 0);
  }

  else
  {
    v35 = [(HKLiveWorkoutBuilder *)v39->_builder nl_lastUnbalancedPauseEvent];
    if (v35)
    {
      v18 = [v35 dateInterval];
      v34 = [v18 startDate];
      MEMORY[0x277D82BD8](v18);
      v33 = [(NLSessionActivity *)v39 _latestCompletedIntervalActivityEndDate];
      if (v33)
      {
        v17 = [v35 dateInterval];
        v16 = [v17 startDate];
        v2 = [v16 laterDate:v33];
        v3 = v34;
        v34 = v2;
        MEMORY[0x277D82BD8](v3);
        MEMORY[0x277D82BD8](v16);
        MEMORY[0x277D82BD8](v17);
      }

      _HKInitializeLogging();
      v32 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v31 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v41, v34);
        _os_log_impl(&dword_20AEA4000, v32, v31, "First call to endTracking while workout is paused, ending at %@.", v41, 0xCu);
      }

      objc_storeStrong(&v32, 0);
      objc_storeStrong(&v39->_activityEndDate, v34);
      objc_storeStrong(&v33, 0);
      objc_storeStrong(&v34, 0);
    }

    else
    {
      _HKInitializeLogging();
      v30 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v29 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v14 = v30;
        v15 = v29;
        __os_log_helper_16_0_0(v28);
        _os_log_impl(&dword_20AEA4000, v14, v15, "First call to endTracking, ending now.", v28, 2u);
      }

      objc_storeStrong(&v30, 0);
      v4 = [MEMORY[0x277CBEAA8] date];
      activityEndDate = v39->_activityEndDate;
      v39->_activityEndDate = v4;
      MEMORY[0x277D82BD8](activityEndDate);
    }

    objc_storeStrong(&v35, 0);
  }

  if (!v39->_activityBeginDate)
  {
    objc_storeStrong(&v39->_activityBeginDate, v39->_activityEndDate);
  }

  if ([(NLSessionActivity *)v39 showVideoPlaybackCurrentTime])
  {
    v24 = [MEMORY[0x277CBEB38] dictionary];
    v10 = MEMORY[0x277CCD7E8];
    v11 = [MEMORY[0x277CCDAB0] secondUnit];
    [(SMSeymourElapsedTimeAccumulator *)v39->_seymourElapsedTimeAccumulator videoPlaybackCurrentTime];
    v23 = [v10 quantityWithUnit:v11 doubleValue:?];
    MEMORY[0x277D82BD8](v11);
    [v24 setObject:v23 forKeyedSubscript:*MEMORY[0x277D0A7B0]];
    _HKInitializeLogging();
    v22 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      [v23 _value];
      __os_log_helper_16_0_1_8_0(v40, v6);
      _os_log_impl(&dword_20AEA4000, v22, OS_LOG_TYPE_DEFAULT, "[SessionActivity][VideoPlaybackCurrentTime] Updated duration to %f", v40, 0xCu);
    }

    objc_storeStrong(&v22, 0);
    [(NLSessionActivity *)v39 insertOrUpdateMetadata:v24 forceTopLevel:1];
    objc_storeStrong(&v23, 0);
    objc_storeStrong(&v24, 0);
  }

  v8 = [(NLSessionActivity *)v39 activityType];
  v9 = [(FIUIWorkoutActivityType *)v8 supportsTrackRunning];
  MEMORY[0x277D82BD8](v8);
  if (v9)
  {
    v7 = +[WOCoreTrackRunningCoordinator shared];
    [(WOCoreTrackRunningCoordinator *)v7 reset];
    MEMORY[0x277D82BD8](v7);
  }

  [(FIUIStateMachine *)v39->_stateMachine event:12];
  *MEMORY[0x277D85DE8];
}

- (void)_endCollectionWithEndDate:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v9->_endCollectionCalled)
  {
    _HKInitializeLogging();
    if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
    {
      v7 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v6 = 2;
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        log = v7;
        type = v6;
        __os_log_helper_16_0_0(v5);
        _os_log_debug_impl(&dword_20AEA4000, log, type, "[SessionActivity] endCollection already called, ignoring.", v5, 2u);
      }

      objc_storeStrong(&v7, 0);
    }
  }

  else
  {
    if (location[0])
    {
      objc_storeStrong(&v9->_activityEndDate, location[0]);
    }

    [(FIUIStateMachine *)v9->_stateMachine event:21];
    v9->_endCollectionCalled = 1;
  }

  objc_storeStrong(location, 0);
}

- (void)_onEndingCollection
{
  v10 = self;
  v9[1] = a2;
  v3 = MEMORY[0x277D85DD0];
  v4 = -1073741824;
  v5 = 0;
  v6 = __40__NLSessionActivity__onEndingCollection__block_invoke;
  v7 = &unk_277D88BC0;
  v8 = MEMORY[0x277D82BE0](self);
  v9[0] = _Block_copy(&v3);
  v2 = [(NLSessionActivity *)v10 builder];
  [(HKLiveWorkoutBuilder *)v2 endCollectionWithEndDate:v10->_activityEndDate completion:v9[0]];
  MEMORY[0x277D82BD8](v2);
  objc_storeStrong(v9, 0);
  objc_storeStrong(&v8, 0);
}

void __40__NLSessionActivity__onEndingCollection__block_invoke(NSObject *a1, char a2, id obj)
{
  v9 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v6 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (location)
  {
    _HKInitializeLogging();
    oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v8, location);
      _os_log_error_impl(&dword_20AEA4000, oslog[0], OS_LOG_TYPE_ERROR, "[SessionActivity] EndCollectionWithEndDate:completion: on session builder failed with error %@:", v8, 0xCu);
    }

    objc_storeStrong(oslog, 0);
    [*(a1[4].isa + 4) eventAsync:19];
  }

  else
  {
    [*(a1[4].isa + 4) eventAsync:17];
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_setState:(unint64_t)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v20 = self;
  v19 = a2;
  v18 = a3;
  if (self->_state != a3)
  {
    _HKInitializeLogging();
    v17 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      log = v17;
      type = v16;
      v11 = NLSessionActivityStateDescription(v18);
      v15 = MEMORY[0x277D82BE0](v11);
      __os_log_helper_16_2_2_8_0_8_66(v22, v18, v15);
      _os_log_impl(&dword_20AEA4000, log, type, "[W] _setState called. Changing activity state to %lu (%{public}@)", v22, 0x16u);
      MEMORY[0x277D82BD8](v11);
      objc_storeStrong(&v15, 0);
    }

    objc_storeStrong(&v17, 0);
    state = v20->_state;
    v20->_state = v18;
    memset(__b, 0, sizeof(__b));
    obj = [(NSHashTable *)v20->_stateObservers allObjects];
    v8 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v21 count:16];
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

        v13 = *(__b[1] + 8 * v5);
        [v13 sessionActivity:v20 didChangeFromState:state toState:v18];
        ++v5;
        if (v3 + 1 >= v6)
        {
          v5 = 0;
          v6 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v21 count:16];
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

- (void)_writeConfigurationMetadata
{
  v21 = self;
  v20[1] = a2;
  v20[0] = objc_alloc_init(MEMORY[0x277CBEB38]);
  v10 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NLSessionActivity activityMoveMode](v21, "activityMoveMode")}];
  v2 = *MEMORY[0x277CCE158];
  [v20[0] setObject:? forKey:?];
  MEMORY[0x277D82BD8](v10);
  v12 = [MEMORY[0x277CBEBB0] localTimeZone];
  v11 = [v12 name];
  v3 = *MEMORY[0x277CCC530];
  [v20[0] setObject:? forKey:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  v13 = MEMORY[0x277CCABB0];
  v15 = [(NLSessionActivity *)v21 configuration];
  v14 = [v13 numberWithBool:{-[WOCoreLiveWorkoutConfiguration isUltraMode](v15, "isUltraMode")}];
  v4 = *MEMORY[0x277CCE188];
  [v20[0] setObject:? forKey:?];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  v16 = [(NSUUID *)v21->_UUID UUIDString];
  [v20[0] setObject:? forKey:?];
  MEMORY[0x277D82BD8](v16);
  v17 = [(NLSessionActivity *)v21 activityType];
  v18 = [(FIUIWorkoutActivityType *)v17 supportsTrackRunning];
  MEMORY[0x277D82BD8](v17);
  if (v18)
  {
    v9 = +[WOCoreTrackRunningCoordinator shared];
    location = [(WOCoreTrackRunningCoordinator *)v9 trackId];
    MEMORY[0x277D82BD8](v9);
    if (location)
    {
      v8 = +[WOTrackRunningMetadataKeys trackIdentifier];
      [v20[0] setObject:location forKey:?];
      MEMORY[0x277D82BD8](v8);
    }

    v6 = +[WOCoreTrackRunningCoordinator shared];
    v7 = [(WOCoreTrackRunningCoordinator *)v6 didShowTrackPrompt];
    MEMORY[0x277D82BD8](v6);
    if (v7)
    {
      v5 = +[WOTrackRunningMetadataKeys promptedForTrackMode];
      [v20[0] setObject:MEMORY[0x277CBEC38] forKey:?];
      MEMORY[0x277D82BD8](v5);
    }

    objc_storeStrong(&location, 0);
  }

  [(NLSessionActivity *)v21 insertOrUpdateMetadata:v20[0] forceTopLevel:1];
  objc_storeStrong(v20, 0);
}

- (void)_createIdempotentAccumulators
{
  v30 = *MEMORY[0x277D85DE8];
  v28 = self;
  location[1] = a2;
  v2 = [[NLSessionActivityEnergyBurnAccumulator alloc] initWithBuilder:self->_builder];
  energyBurnAccumulator = v28->_energyBurnAccumulator;
  v28->_energyBurnAccumulator = v2;
  MEMORY[0x277D82BD8](energyBurnAccumulator);
  v4 = [[NLSessionActivityFlightsClimbedAccumulator alloc] initWithBuilder:v28->_builder];
  flightsClimbedAccumulator = v28->_flightsClimbedAccumulator;
  v28->_flightsClimbedAccumulator = v4;
  MEMORY[0x277D82BD8](flightsClimbedAccumulator);
  v6 = [[NLStrideLengthAccumulator alloc] initWithBuilder:v28->_builder];
  strideLengthAccumulator = v28->_strideLengthAccumulator;
  v28->_strideLengthAccumulator = v6;
  MEMORY[0x277D82BD8](strideLengthAccumulator);
  v8 = [[NLVerticalOscillationAccumulator alloc] initWithBuilder:v28->_builder];
  verticalOscillationAccumulator = v28->_verticalOscillationAccumulator;
  v28->_verticalOscillationAccumulator = v8;
  MEMORY[0x277D82BD8](verticalOscillationAccumulator);
  v10 = [[NLGroundContactTimeAccumulator alloc] initWithBuilder:v28->_builder];
  groundContactTimeAccumulator = v28->_groundContactTimeAccumulator;
  v28->_groundContactTimeAccumulator = v10;
  MEMORY[0x277D82BD8](groundContactTimeAccumulator);
  if ([(WOCoreLiveWorkoutConfiguration *)v28->_configuration isRace])
  {
    v12 = [WORaceCoordinatorFactory makeWithConfiguration:v28->_configuration builder:v28->_builder healthStore:v28->_healthStore];
    raceCoordinator = v28->_raceCoordinator;
    v28->_raceCoordinator = v12;
    MEMORY[0x277D82BD8](raceCoordinator);
    _HKInitializeLogging();
    location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v26 = [(WORaceCoordinator *)v28->_raceCoordinator routeTitle];
      v25 = [(WORaceCoordinator *)v28->_raceCoordinator clusterUUID];
      __os_log_helper_16_2_2_8_64_8_64(v29, v26, v25);
      _os_log_impl(&dword_20AEA4000, location[0], OS_LOG_TYPE_DEFAULT, "Race: Starting for route: %@, cluster %@", v29, 0x16u);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v26);
    }

    objc_storeStrong(location, 0);
    [(WORaceCoordinator *)v28->_raceCoordinator activate];
  }

  v14 = [NLSessionActivityNonMachineElapsedTimeAccumulator alloc];
  v15 = [(NLSessionActivityNonMachineElapsedTimeAccumulator *)v14 initWithBuilder:v28->_builder];
  nonMachineElapsedTimeAccumulator = v28->_nonMachineElapsedTimeAccumulator;
  v28->_nonMachineElapsedTimeAccumulator = v15;
  MEMORY[0x277D82BD8](nonMachineElapsedTimeAccumulator);
  v17 = objc_alloc_init(NLSessionActivityMachineElapsedTimeAccumulator);
  machineElapsedTimeAccumulator = v28->_machineElapsedTimeAccumulator;
  v28->_machineElapsedTimeAccumulator = v17;
  MEMORY[0x277D82BD8](machineElapsedTimeAccumulator);
  [(NLSessionActivity *)v28 addSessionStateObserver:v28->_machineElapsedTimeAccumulator];
  v22 = MEMORY[0x277CCDBE8];
  v21 = [(FIUIWorkoutActivityType *)v28->_activityType identifier];
  [v22 fiui_isHeartRateSupportedForActivityType:v21 isIndoor:{-[FIUIWorkoutActivityType isIndoor](v28->_activityType, "isIndoor")}];
  v23 = [WOHeartRatePrecisionStartAccumulator alloc];
  v24 = [(NLSessionActivity *)v28 healthStore];
  v19 = [WOHeartRatePrecisionStartAccumulator initWithHealthStore:v23 staleTimeout:"initWithHealthStore:staleTimeout:delegate:heartRateSupported:" delegate:30.0 heartRateSupported:?];
  heartRatePrecisionStartAccumulator = v28->_heartRatePrecisionStartAccumulator;
  v28->_heartRatePrecisionStartAccumulator = v19;
  MEMORY[0x277D82BD8](heartRatePrecisionStartAccumulator);
  MEMORY[0x277D82BD8](v24);
  *MEMORY[0x277D85DE8];
}

- (void)_createActivityDependentAccumulators
{
  v94 = self;
  v93[1] = a2;
  if ([(FIUIWorkoutActivityType *)self->_activityType identifier]== 46)
  {
    v2 = objc_alloc_init(NLSessionActivitySwimmingAccumulator);
    swimmingAccumulator = v94->_swimmingAccumulator;
    v94->_swimmingAccumulator = v2;
    MEMORY[0x277D82BD8](swimmingAccumulator);
    v72 = [NLSessionActivitySwimStrokeAccumulator alloc];
    v73 = [(NLSessionActivity *)v94 healthStore];
    v4 = [(NLSessionActivitySwimStrokeAccumulator *)v72 initWithHealthStore:?];
    swimmingStrokeAccumulator = v94->_swimmingStrokeAccumulator;
    v94->_swimmingStrokeAccumulator = v4;
    MEMORY[0x277D82BD8](swimmingStrokeAccumulator);
    MEMORY[0x277D82BD8](v73);
  }

  else
  {
    if ([(FIUIWorkoutActivityType *)v94->_activityType isDownhillSnowSport])
    {
      v6 = objc_alloc_init(NLSessionActivityDownhillSnowSportsAccumulator);
      downhillSnowSportsAccumulator = v94->_downhillSnowSportsAccumulator;
      v94->_downhillSnowSportsAccumulator = v6;
    }

    else
    {
      v8 = [[NLSessionActivityDistanceAccumulator alloc] initWithBuilder:v94->_builder activityType:v94->_activityType];
      distanceAccumulator = v94->_distanceAccumulator;
      v94->_distanceAccumulator = v8;
      MEMORY[0x277D82BD8](distanceAccumulator);
      v10 = objc_alloc_init(NLSessionActivityMachineDistanceAccumulator);
      downhillSnowSportsAccumulator = v94->_machineDistanceAccumulator;
      v94->_machineDistanceAccumulator = v10;
    }

    MEMORY[0x277D82BD8](downhillSnowSportsAccumulator);
  }

  v93[0] = [objc_alloc(MEMORY[0x277D0A828]) initWithWorkoutActivityType:v94->_activityType activityMoveMode:v94->_activityMoveMode];
  v92 = [v93[0] orderedSupportedMetrics];
  location = MEMORY[0x277D82BE0](*MEMORY[0x277CCCC38]);
  if ([(FIUIWorkoutActivityType *)v94->_activityType identifier]== 13)
  {
    objc_storeStrong(&location, *MEMORY[0x277CCC9C0]);
  }

  if ([v92 containsObject:&unk_282279820] & 1) != 0 || (objc_msgSend(v92, "containsObject:", &unk_282279838) & 1) != 0 || (objc_msgSend(v92, "containsObject:", &unk_282279850))
  {
    v90 = [(NLSessionActivityPowerAccumulator *)v94->_powerAccumulator workoutAlertDelegate];
    v11 = [NLSessionActivityPowerAccumulator alloc];
    v12 = [(NLSessionActivityPowerAccumulator *)v11 initWithBuilder:v94->_builder activityType:v94->_activityType healthStore:v94->_healthStore liveWorkoutConfiguration:v94->_configuration workoutSettingsManager:v93[0] quantityTypeIdentifier:location];
    powerAccumulator = v94->_powerAccumulator;
    v94->_powerAccumulator = v12;
    MEMORY[0x277D82BD8](powerAccumulator);
    [(NLSessionActivityPowerAccumulator *)v94->_powerAccumulator setWorkoutAlertDelegate:v90];
    objc_storeStrong(&v90, 0);
  }

  if ([v92 containsObject:&unk_282279868] & 1) != 0 || (objc_msgSend(v92, "containsObject:", &unk_282279880))
  {
    v14 = [NLSessionActivityElevationAccumulator alloc];
    v15 = [(NLSessionActivityElevationAccumulator *)v14 initWithBuilder:v94->_builder healthStore:v94->_healthStore liveWorkoutConfiguration:v94->_configuration workoutSettingsManager:v93[0] elevationUnit:v94->_elevationUnit delegate:v94];
    elevationAccumulator = v94->_elevationAccumulator;
    v94->_elevationAccumulator = v15;
    MEMORY[0x277D82BD8](elevationAccumulator);
  }

  if ([(FIUIWorkoutActivityType *)v94->_activityType supportsLocationPositionTracking])
  {
    v89 = [(NLSessionActivityLocationPositionAccumulator *)v94->_locationPositionAccumulator alertDelegate];
    v17 = [NLSessionActivityLocationPositionAccumulator alloc];
    v18 = [(NLSessionActivityLocationPositionAccumulator *)v17 initWithBuilder:v94->_builder liveWorkoutConfiguration:v94->_configuration];
    locationPositionAccumulator = v94->_locationPositionAccumulator;
    v94->_locationPositionAccumulator = v18;
    MEMORY[0x277D82BD8](locationPositionAccumulator);
    [(NLSessionActivityLocationPositionAccumulator *)v94->_locationPositionAccumulator setDelegate:v94];
    [(NLSessionActivityLocationPositionAccumulator *)v94->_locationPositionAccumulator setAlertDelegate:v89];
    objc_storeStrong(&v89, 0);
  }

  v94->_currentFastestPace = 0.0;
  [(NLSessionActivityNonMachinePaceAccumulator *)v94->_nonMachinePaceAccumulator setPaceDelegate:?];
  v20 = [NLSessionActivityNonMachinePaceAccumulator alloc];
  v21 = [(NLSessionActivityNonMachinePaceAccumulator *)v20 initWithBuilder:v94->_builder activityType:v94->_activityType activityMoveMode:v94->_activityMoveMode];
  nonMachinePaceAccumulator = v94->_nonMachinePaceAccumulator;
  v94->_nonMachinePaceAccumulator = v21;
  MEMORY[0x277D82BD8](nonMachinePaceAccumulator);
  [(NLSessionActivityMachinePaceAccumulator *)v94->_machinePaceAccumulator setPaceDelegate:0];
  v23 = [NLSessionActivityMachinePaceAccumulator alloc];
  v24 = [(NLSessionActivityMachinePaceAccumulator *)v23 initWithActivityType:v94->_activityType];
  machinePaceAccumulator = v94->_machinePaceAccumulator;
  v94->_machinePaceAccumulator = v24;
  MEMORY[0x277D82BD8](machinePaceAccumulator);
  v70 = v94;
  v71 = [(NLSessionActivity *)v94 paceAccumulator];
  [(NLSessionActivityPaceAccumulator *)v71 setPaceDelegate:v70];
  MEMORY[0x277D82BD8](v71);
  if ([(WOCoreLiveWorkoutConfiguration *)v94->_configuration isPacer])
  {
    v26 = [NLGhostPacerAccumulatorFactory makeWithActivityType:v94->_activityType liveWorkoutConfiguration:v94->_configuration];
    ghostPacerAccumulator = v94->_ghostPacerAccumulator;
    v94->_ghostPacerAccumulator = v26;
    MEMORY[0x277D82BD8](ghostPacerAccumulator);
    v28 = [NLPacerDistanceGoalProgressAccumulatorFactory makeWithBuilder:v94->_builder configuration:v94->_configuration];
    pacerDistanceGoalProgressAccumulator = v94->_pacerDistanceGoalProgressAccumulator;
    v94->_pacerDistanceGoalProgressAccumulator = v28;
    MEMORY[0x277D82BD8](pacerDistanceGoalProgressAccumulator);
  }

  if ([v92 containsObject:&unk_282279898])
  {
    v30 = [NLSessionActivityRollingPaceAccumulator alloc];
    v31 = [(NLSessionActivityRollingPaceAccumulator *)v30 initWithBuilder:v94->_builder activityType:v94->_activityType distanceUnit:v94->_distanceUnit healthStore:v94->_healthStore];
    rollingPaceAccumulator = v94->_rollingPaceAccumulator;
    v94->_rollingPaceAccumulator = v31;
    MEMORY[0x277D82BD8](rollingPaceAccumulator);
  }

  [(NLSessionActivityHeartRateAccumulator *)v94->_heartRateAccumulator setDelegate:0];
  v69 = [(NLSessionActivity *)v94 configuration];
  v87 = 0;
  v85 = 0;
  if ([(WOCoreLiveWorkoutConfiguration *)v69 isUltraMode])
  {
    v33 = [NLHeartRateAverageAccumulator alloc];
    v88 = [(NLHeartRateAverageAccumulator *)v33 initWithBuilder:v94->_builder averageInterval:300.0];
    v87 = 1;
    objc_storeStrong(&v94->_heartRateAccumulator, v88);
  }

  else
  {
    v34 = [NLSessionActivityHeartRateAccumulator alloc];
    v86 = [(NLSessionActivityHeartRateAccumulator *)v34 initWithBuilder:v94->_builder staleTimeout:30.0];
    v85 = 1;
    objc_storeStrong(&v94->_heartRateAccumulator, v86);
  }

  if (v85)
  {
    MEMORY[0x277D82BD8](v86);
  }

  if (v87)
  {
    MEMORY[0x277D82BD8](v88);
  }

  MEMORY[0x277D82BD8](v69);
  [(NLSessionActivityHeartRateAccumulator *)v94->_heartRateAccumulator setDelegate:v94];
  v83 = 0;
  v68 = 0;
  if ([v92 containsObject:&unk_2822798B0])
  {
    v84 = +[WOUserDevicesBehaviors shared];
    v83 = 1;
    v68 = [(WOUserDevicesBehaviors *)v84 supportsHeartRateZones];
  }

  if (v83)
  {
    MEMORY[0x277D82BD8](v84);
  }

  if (v68)
  {
    v82 = [(NLSessionActivityHeartRateZonesAccumulator *)v94->_heartRateZonesAccumulator workoutAlertDelegate];
    [WOWorkoutAlertTimingConstants alertHoldoffTimeWithLiveWorkoutConfiguration:v94->_configuration];
    v81 = v35;
    v65 = [NLSessionActivityHeartRateZonesAccumulator alloc];
    builder = v94->_builder;
    healthStore = v94->_healthStore;
    v64 = [(NLSessionActivity *)v94 shouldSplitByActivity];
    v66 = [(WOCoreLiveWorkoutConfiguration *)v94->_configuration currentHeartRateTargetZone];
    v36 = [(NLSessionActivityHeartRateZonesAccumulator *)v65 initWithBuilder:builder healthStore:healthStore staleTimeout:v64 alertHoldoffTime:30.0 shouldSplitByActivity:v81 targetZone:?];
    heartRateZonesAccumulator = v94->_heartRateZonesAccumulator;
    v94->_heartRateZonesAccumulator = v36;
    MEMORY[0x277D82BD8](heartRateZonesAccumulator);
    MEMORY[0x277D82BD8](v66);
    [(NLSessionActivityHeartRateZonesAccumulator *)v94->_heartRateZonesAccumulator setWorkoutAlertDelegate:v82];
    [(NLSessionActivityHeartRateZonesAccumulator *)v94->_heartRateZonesAccumulator setHeartRateZoneConfigurationDelegate:v94];
    v67 = +[WOUserDevicesBehaviors shared];
    v75 = MEMORY[0x277D85DD0];
    v76 = -1073741824;
    v77 = 0;
    v78 = __57__NLSessionActivity__createActivityDependentAccumulators__block_invoke;
    v79 = &unk_277D88BE8;
    v80 = MEMORY[0x277D82BE0](v94);
    [(WOUserDevicesBehaviors *)v67 workoutHealthDataAllowedWhenLockedWithCompletion:&v75];
    MEMORY[0x277D82BD8](v67);
    objc_storeStrong(&v80, 0);
    objc_storeStrong(&v82, 0);
  }

  if ([v92 containsObject:&unk_2822798C8])
  {
    v74 = [(NLSessionActivityPowerZonesAccumulator *)v94->_powerZonesAccumulator workoutAlertDelegate];
    v60 = [NLSessionActivityPowerZonesAccumulator alloc];
    v55 = v94->_builder;
    activityType = v94->_activityType;
    v57 = v94->_healthStore;
    v58 = location;
    configuration = v94->_configuration;
    v61 = [(WOCoreLiveWorkoutConfiguration *)configuration currentPowerZonesAlertTargetZone];
    v38 = [(NLSessionActivityPowerZonesAccumulator *)v60 initWithBuilder:v55 activityType:activityType healthStore:v57 quantityTypeIdentifier:v58 liveWorkoutConfiguration:configuration targetZone:?];
    powerZonesAccumulator = v94->_powerZonesAccumulator;
    v94->_powerZonesAccumulator = v38;
    MEMORY[0x277D82BD8](powerZonesAccumulator);
    MEMORY[0x277D82BD8](v61);
    [(NLSessionActivityPowerZonesAccumulator *)v94->_powerZonesAccumulator setWorkoutAlertDelegate:v74];
    [(NLSessionActivityPowerZonesAccumulator *)v94->_powerZonesAccumulator setPowerZonesConfigurationDelegate:v94];
    objc_storeStrong(&v74, 0);
  }

  if ([(FIUIWorkoutActivityType *)v94->_activityType supportsDistanceSplits])
  {
    [(NLSessionActivity *)v94 createSplitsAccumulators];
  }

  if ([v92 containsObject:&unk_2822798E0] & 1) != 0 || (objc_msgSend(v92, "containsObject:", &unk_2822798F8))
  {
    v40 = [NLSessionActivityCyclingCadenceAccumulator alloc];
    v41 = [(NLSessionActivityCyclingCadenceAccumulator *)v40 initWithBuilder:v94->_builder];
    cyclingCadenceAccumulator = v94->_cyclingCadenceAccumulator;
    v94->_cyclingCadenceAccumulator = v41;
    MEMORY[0x277D82BD8](cyclingCadenceAccumulator);
    v43 = [NLSessionActivityPedometerCadenceAccumulator alloc];
    v44 = [(NLSessionActivityPedometerCadenceAccumulator *)v43 initWithBuilder:v94->_builder];
    pedometerCadenceAccumulator = v94->_pedometerCadenceAccumulator;
    v94->_pedometerCadenceAccumulator = v44;
    MEMORY[0x277D82BD8](pedometerCadenceAccumulator);
    v54 = [NLSessionActivityIntervalCadenceAccumulator alloc];
    v46 = [(NLSessionActivityIntervalCadenceAccumulator *)v54 initWithBuilder:v94->_builder activityType:[(FIUIWorkoutActivityType *)v94->_activityType identifier]];
    intervalCadenceAccumulator = v94->_intervalCadenceAccumulator;
    v94->_intervalCadenceAccumulator = v46;
    MEMORY[0x277D82BD8](intervalCadenceAccumulator);
  }

  if ([v92 containsObject:&unk_282279910] & 1) != 0 || (objc_msgSend(v92, "containsObject:", &unk_282279928))
  {
    v48 = [NLSessionActivityWaterTemperatureAccumulator alloc];
    v49 = [(NLSessionActivityWaterTemperatureAccumulator *)v48 initWithBuilder:v94->_builder];
    waterTemperatureAccumulator = v94->_waterTemperatureAccumulator;
    v94->_waterTemperatureAccumulator = v49;
    MEMORY[0x277D82BD8](waterTemperatureAccumulator);
  }

  if (v94->_segmentAccumulator)
  {
    [(NLSessionActivity *)v94 removeSessionDataObserver:v94->_segmentAccumulator];
  }

  v51 = [WOSegmentAccumulator alloc];
  v52 = [(WOSegmentAccumulator *)v51 initWithBuilder:v94->_builder activityType:v94->_activityType configuration:v94->_configuration powerAccumulator:v94->_powerAccumulator];
  segmentAccumulator = v94->_segmentAccumulator;
  v94->_segmentAccumulator = v52;
  MEMORY[0x277D82BD8](segmentAccumulator);
  [(NLSessionActivity *)v94 addSessionDataObserver:v94->_segmentAccumulator];
  objc_storeStrong(&location, 0);
  objc_storeStrong(&v92, 0);
  objc_storeStrong(v93, 0);
}

void __57__NLSessionActivity__createActivityDependentAccumulators__block_invoke(uint64_t a1, char a2)
{
  v15 = a1;
  v14 = a2;
  v13 = a1;
  v3 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  queue = v3;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __57__NLSessionActivity__createActivityDependentAccumulators__block_invoke_2;
  v10 = &unk_277D88868;
  v12 = v14 & 1;
  v11 = MEMORY[0x277D82BE0](*(a1 + 32));
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v11, 0);
}

void __57__NLSessionActivity__createActivityDependentAccumulators__block_invoke_2(uint64_t a1)
{
  location[2] = a1;
  location[1] = a1;
  if ((*(a1 + 40) & 1) == 0)
  {
    _HKInitializeLogging();
    location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v5 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      log = location[0];
      type = v5;
      __os_log_helper_16_0_0(v4);
      _os_log_impl(&dword_20AEA4000, log, type, "User disabled workout health data while locked, not tracking time in heart rate zones.", v4, 2u);
    }

    objc_storeStrong(location, 0);
    objc_storeStrong((*(a1 + 32) + 184), 0);
  }
}

- (void)createSplitsAccumulators
{
  v7 = self;
  location[1] = a2;
  if (self->_splitsDisplayAccumulator)
  {
    [(NLSessionActivity *)v7 removeSessionDataObserver:v7->_splitsDisplayAccumulator];
  }

  v2 = [WOSplitsAccumulatorFactory makeAccumulatorsWithActivityType:v7->_activityType builder:v7->_builder userDistanceUnit:v7->_distanceUnit powerAccumulator:v7->_powerAccumulator];
  splitsAccumulators = v7->_splitsAccumulators;
  v7->_splitsAccumulators = v2;
  MEMORY[0x277D82BD8](splitsAccumulators);
  location[0] = [WOSplitsAccumulatorFactory displayedAccumulatorFor:v7->_splitsAccumulators userDistanceUnit:v7->_distanceUnit];
  if (location[0])
  {
    v4 = [[WOSplitsDisplayAccumulator alloc] initWithBuilder:v7->_builder splitsAccumulator:location[0] activityType:v7->_activityType powerAccumulator:v7->_powerAccumulator];
    splitsDisplayAccumulator = v7->_splitsDisplayAccumulator;
    v7->_splitsDisplayAccumulator = v4;
    MEMORY[0x277D82BD8](splitsDisplayAccumulator);
    [(NLSessionActivity *)v7 addSessionDataObserver:v7->_splitsDisplayAccumulator];
  }

  objc_storeStrong(location, 0);
}

- (void)updateActivityTypeFromConfiguration:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NLSessionActivity *)v14 _setupActivityTypeDependentConfigurations];
  v6 = [(NLSessionActivity *)v14 activityBeginDate];
  MEMORY[0x277D82BD8](v6);
  if (v6)
  {
    v4 = v14;
    v5 = [location[0] startDate];
    [(NLSessionActivity *)v4 _startActivityDependentAccumulatingDataWithStartDate:?];
    MEMORY[0x277D82BD8](v5);
  }

  v3 = v14;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __57__NLSessionActivity_updateActivityTypeFromConfiguration___block_invoke;
  v11 = &unk_277D88C10;
  v12 = MEMORY[0x277D82BE0](v14);
  [(NLSessionActivity *)v3 _notifyDataObserversWithBlock:&v7];
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void __57__NLSessionActivity_updateActivityTypeFromConfiguration___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = location[0];
  v5 = [a1[4] dataProvider];
  v4 = [a1[4] activityType];
  [v3 dataProvider:v5 didChangeActivityTypeTo:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

- (void)_setupGroundElevationManager
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = self;
  location[1] = a2;
  self->_groundElevationSupported = [MEMORY[0x277CCDBE8] fiui_activitySupportsMetricType:17 activityType:self->_activityType activityMoveMode:self->_activityMoveMode];
  if (v10->_groundElevationSupported)
  {
    _HKInitializeLogging();
    location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
    {
      v6 = [(FIUIWorkoutActivityType *)v10->_activityType description];
      __os_log_helper_16_2_1_8_64(v12, v6);
      _os_log_impl(&dword_20AEA4000, location[0], v8, "[GroundElevation] ground elevation supported, creating GroundElevationManager. activity_type=%@", v12, 0xCu);
      MEMORY[0x277D82BD8](v6);
    }

    objc_storeStrong(location, 0);
    v2 = [NLSessionActivityGroundElevationManager alloc];
    v3 = [(NLSessionActivityGroundElevationManager *)v2 initWithDelegate:v10];
    groundElevationManager = v10->_groundElevationManager;
    v10->_groundElevationManager = v3;
    MEMORY[0x277D82BD8](groundElevationManager);
  }

  else
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(FIUIWorkoutActivityType *)v10->_activityType description];
      __os_log_helper_16_2_1_8_64(v11, v5);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[GroundElevation] ground elevation not supported, not creating GroundElevationManager. activity_type=%@", v11, 0xCu);
      MEMORY[0x277D82BD8](v5);
    }

    objc_storeStrong(&oslog, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (void)_teardownGroundElevationManager
{
  [(NLSessionActivity *)self removeSessionStateObserver:self->_groundElevationManager];
  [(NLSessionActivityGroundElevationManager *)self->_groundElevationManager setActive:0];
  [(NLSessionActivityGroundElevationManager *)self->_groundElevationManager setDelegate:?];
  objc_storeStrong(&self->_groundElevationManager, 0);
}

- (void)insertOrUpdateMetadata:(id)a3 forceTopLevel:(BOOL)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v22 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = a4;
  v7 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v19 = [v7 objectForKey:@"SaveMetadataPerActivity"];
  MEMORY[0x277D82BD8](v7);
  if (v19 && ![v19 BOOLValue])
  {
    v20 = 1;
  }

  v18 = 0;
  if (!v20 && [(WOCoreLiveWorkoutConfiguration *)v22->_configuration isMultiSport])
  {
    v18 = [(NLSessionActivity *)v22 insertOrUpdateMetadataToSubActivity:location[0]];
  }

  if (!v18)
  {
    v17 = [MEMORY[0x277CCAD78] UUID];
    _HKInitializeLogging();
    v16 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_66(v23, v17);
      _os_log_impl(&dword_20AEA4000, v16, v15, "[SessionActivity] [META] Adding metadata (%{public}@) to top level", v23, 0xCu);
    }

    objc_storeStrong(&v16, 0);
    v5 = [(NLSessionActivity *)v22 builder];
    v4 = location[0];
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __58__NLSessionActivity_insertOrUpdateMetadata_forceTopLevel___block_invoke;
    v12 = &unk_277D88C38;
    v13 = MEMORY[0x277D82BE0](v17);
    v14 = MEMORY[0x277D82BE0](location[0]);
    [(HKLiveWorkoutBuilder *)v5 addMetadata:v4 completion:&v8];
    MEMORY[0x277D82BD8](v5);
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v17, 0);
  }

  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __58__NLSessionActivity_insertOrUpdateMetadata_forceTopLevel___block_invoke(uint64_t a1, char a2, id obj)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v8)
  {
    _HKInitializeLogging();
    oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_66_8_64(v11, *(a1 + 32), *(a1 + 40));
      _os_log_impl(&dword_20AEA4000, oslog[0], type, "[SessionActivity] [META] Successfully added metadata (%{public}@) to builder %@", v11, 0x16u);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    _HKInitializeLogging();
    v4 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_66_8_66_8_64(v10, *(a1 + 32), location, *(a1 + 40));
      _os_log_error_impl(&dword_20AEA4000, v4, OS_LOG_TYPE_ERROR, "[SessionActivity] [META] Failed to add metadata (%{public}@) to builder with error=%{public}@, metadata=%@", v10, 0x20u);
    }

    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)insertOrUpdateMetadataToSubActivity:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7 = [(NLSessionActivity *)v20 builder];
  v18 = [(HKLiveWorkoutBuilder *)v7 currentWorkoutActivity];
  MEMORY[0x277D82BD8](v7);
  if (v18)
  {
    v17 = [MEMORY[0x277CCAD78] UUID];
    _HKInitializeLogging();
    v16 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_66(v22, v17);
      _os_log_impl(&dword_20AEA4000, v16, v15, "[SessionActivity] [META] Adding metadata (%{public}@) to current activity", v22, 0xCu);
    }

    objc_storeStrong(&v16, 0);
    v6 = [(NLSessionActivity *)v20 builder];
    v5 = [v18 UUID];
    v4 = location[0];
    v8 = MEMORY[0x277D85DD0];
    v9 = -1073741824;
    v10 = 0;
    v11 = __57__NLSessionActivity_insertOrUpdateMetadataToSubActivity___block_invoke;
    v12 = &unk_277D88C38;
    v13 = MEMORY[0x277D82BE0](v17);
    v14 = MEMORY[0x277D82BE0](location[0]);
    [(HKLiveWorkoutBuilder *)v6 updateActivityWithUUID:v5 addMedatata:v4 completion:&v8];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    v21 = 1;
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v17, 0);
  }

  else
  {
    v21 = 0;
  }

  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
  return v21 & 1;
}

void __57__NLSessionActivity_insertOrUpdateMetadataToSubActivity___block_invoke(uint64_t a1, char a2, id obj)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v8)
  {
    _HKInitializeLogging();
    oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_66_8_64(v11, *(a1 + 32), *(a1 + 40));
      _os_log_impl(&dword_20AEA4000, oslog[0], type, "[SessionActivity] [META] Successfully added metadata (%{public}@) to current activity %@", v11, 0x16u);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    _HKInitializeLogging();
    v4 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_3_8_66_8_66_8_64(v10, *(a1 + 32), location, *(a1 + 40));
      _os_log_error_impl(&dword_20AEA4000, v4, OS_LOG_TYPE_ERROR, "[SessionActivity] [META] Failed to add metadata (%{public}@) to current activity with error=%{public}@, metadata=%@", v10, 0x20u);
    }

    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)removeMetadata:(id)a3 forceTopLevel:(BOOL)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = a4;
  v5 = [(NLSessionActivity *)v15 builder];
  v4 = location[0];
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __50__NLSessionActivity_removeMetadata_forceTopLevel___block_invoke;
  v11 = &unk_277D88BC0;
  v12 = MEMORY[0x277D82BE0](location[0]);
  [(HKLiveWorkoutBuilder *)v5 _removeMetadata:v4 completion:&v7];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(location, 0);
}

void __50__NLSessionActivity_removeMetadata_forceTopLevel___block_invoke(uint64_t a1, char a2, id obj)
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = a1;
  v8 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  oslog[1] = a1;
  if (v8)
  {
    _HKInitializeLogging();
    oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v11, *(a1 + 32));
      _os_log_impl(&dword_20AEA4000, oslog[0], type, "[SessionActivity] Successfully removed metadata from builder %@", v11, 0xCu);
    }

    objc_storeStrong(oslog, 0);
  }

  else
  {
    _HKInitializeLogging();
    v4 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_2_8_66_8_64(v10, location, *(a1 + 32));
      _os_log_error_impl(&dword_20AEA4000, v4, OS_LOG_TYPE_ERROR, "[SessionActivity] Failed to remove metadata key from builder with error=%{public}@, metadataKey=%@", v10, 0x16u);
    }

    objc_storeStrong(&v4, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)setMachineSessionDevice:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(HKLiveWorkoutBuilder *)v4->_builder _setDevice:location[0]];
  objc_storeStrong(location, 0);
}

- (void)addSessionStateObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSHashTable *)v4->_stateObservers addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeSessionStateObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSHashTable *)v4->_stateObservers removeObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)addSplitsUpdateObserver:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(WOSplitsDisplayAccumulator *)v5->_splitsDisplayAccumulator splitsAccumulator];
  [(NLSessionActivitySplitsAccumulator *)v3 addSplitObserver:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)removeSplitsUpdateObserver:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(WOSplitsDisplayAccumulator *)v5->_splitsDisplayAccumulator splitsAccumulator];
  [(NLSessionActivitySplitsAccumulator *)v3 removeSplitObserver:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (void)addSessionDataObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSHashTable *)v4->_dataObservers addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeSessionDataObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSHashTable *)v4->_dataObservers removeObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)addActivityChangeObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSHashTable *)v4->_changeObservers addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeActivityChangeObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSHashTable *)v4->_changeObservers removeObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setRaceCoordinatorDelegate:(id)a3
{
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(WORaceCoordinator *)v9->_raceCoordinator racePositionProvider];
  [(WORacePositionProvider *)v4 setRaceDelegate:v3];
  MEMORY[0x277D82BD8](v4);
  v5 = location[0];
  v7 = [(WORaceCoordinator *)v9->_raceCoordinator racePositionProvider];
  v6 = [(WORacePositionProvider *)v7 metadataDelegate];
  [(WOMetadataSavingDelegate *)v6 setMetadataProvider:v5];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(location, 0);
}

- (void)setRaceRouteDelegate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(WORaceCoordinator *)v4->_raceCoordinator setRouteDelegate:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setPacerAlertDelegate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NLPacerDistanceGoalProgressAccumulator *)v4->_pacerDistanceGoalProgressAccumulator setWorkoutAlertDelegate:location[0]];
  objc_storeStrong(location, 0);
}

- (void)setWorkoutAlertDelegate:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = location[0];
  v4 = [(NLSessionActivity *)v14 heartRateZonesAccumulator];
  [(NLSessionActivityHeartRateZonesAccumulator *)v4 setWorkoutAlertDelegate:v3];
  MEMORY[0x277D82BD8](v4);
  v5 = location[0];
  v6 = [(NLSessionActivity *)v14 powerZonesAccumulator];
  [(NLSessionActivityPowerZonesAccumulator *)v6 setWorkoutAlertDelegate:v5];
  MEMORY[0x277D82BD8](v6);
  v7 = location[0];
  v8 = [(NLSessionActivity *)v14 powerAccumulator];
  [(NLSessionActivityPowerAccumulator *)v8 setWorkoutAlertDelegate:v7];
  MEMORY[0x277D82BD8](v8);
  v9 = location[0];
  v10 = [(NLSessionActivity *)v14 locationPositionAccumulator];
  [(NLSessionActivityLocationPositionAccumulator *)v10 setAlertDelegate:v9];
  MEMORY[0x277D82BD8](v10);
  v11 = location[0];
  v12 = [(NLSessionActivity *)v14 pacerDistanceGoalProgressAccumulator];
  [(NLPacerDistanceGoalProgressAccumulator *)v12 setWorkoutAlertDelegate:v11];
  MEMORY[0x277D82BD8](v12);
  objc_storeStrong(location, 0);
}

- (BOOL)hasGoal
{
  v4 = [(NLSessionActivity *)self configuration];
  v3 = [(WOCoreLiveWorkoutConfiguration *)v4 currentGoal];
  v5 = [(NLSessionActivityGoal *)v3 goalTypeIdentifier];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  if (v5)
  {
    if ((v5 - 1) <= 2)
    {
      v6 = 1;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)isMachineWorkout
{
  v4 = [(HKLiveWorkoutBuilder *)self->_builder workoutConfiguration];
  v2 = [v4 fitnessMachineSessionUUID];
  v5 = v2 != 0;
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (double)videoPlaybackCurrentTime
{
  seymourElapsedTimeAccumulator = self->_seymourElapsedTimeAccumulator;
  v5 = [(NLSessionActivity *)self effectivePresentationTime];
  [(SMSeymourElapsedTimeAccumulator *)seymourElapsedTimeAccumulator videoPlaybackTimeAt:?];
  v6 = v2;
  MEMORY[0x277D82BD8](v5);
  return v6;
}

- (id)effectivePresentationTime
{
  v4 = [(NLSessionActivity *)self inactiveAppearancePresentationTime];
  v7 = 0;
  v5 = 0;
  if (v4)
  {
    v8 = [(NLSessionActivity *)self inactiveAppearancePresentationTime];
    v7 = 1;
    v2 = MEMORY[0x277D82BE0](v8);
  }

  else
  {
    v6 = [MEMORY[0x277CBEAA8] date];
    v5 = 1;
    v2 = MEMORY[0x277D82BE0](v6);
  }

  v10 = v2;
  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  if (v7)
  {
    MEMORY[0x277D82BD8](v8);
  }

  MEMORY[0x277D82BD8](v4);

  return v10;
}

- (double)durationWithEndDate:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(HKLiveWorkoutBuilder *)v7->_builder elapsedTimeAtDate:location[0]];
  v5 = v3;
  objc_storeStrong(location, 0);
  return v5;
}

- (BOOL)isInSession
{
  state = self->_state;
  if (state <= 2)
  {
    goto LABEL_8;
  }

  if (state - 3 <= 3)
  {
    goto LABEL_7;
  }

  if (state == 7)
  {
LABEL_8:
    v4 = 0;
    return v4 & 1;
  }

  if (state - 8 > 1)
  {
    if (state != 10)
    {
      return v4 & 1;
    }

    goto LABEL_8;
  }

LABEL_7:
  v4 = 1;
  return v4 & 1;
}

- (void)updateDistanceUnit:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v5->_distanceUnit, location[0]);
  [(NLSessionActivityRollingPaceAccumulator *)v5->_rollingPaceAccumulator updateDistanceUnit:location[0]];
  if ([(FIUIWorkoutActivityType *)v5->_activityType supportsDistanceSplits])
  {
    v3 = [WOSplitsAccumulatorFactory displayedAccumulatorFor:v5->_splitsAccumulators userDistanceUnit:v5->_distanceUnit];
    if (v3)
    {
      [(WOSplitsDisplayAccumulator *)v5->_splitsDisplayAccumulator setSplitsAccumulator:v3];
    }

    objc_storeStrong(&v3, 0);
  }

  objc_storeStrong(location, 0);
}

- (NSUUID)fitnessMachineSessionUUID
{
  v3 = [(HKLiveWorkoutBuilder *)self->_builder workoutConfiguration];
  v4 = [v3 fitnessMachineSessionUUID];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

- (NSArray)segmentMarkers
{
  v3 = [(NLSessionActivity *)self segmentAccumulator];
  v4 = [(WOSegmentAccumulator *)v3 completedSegments];
  MEMORY[0x277D82BD8](v3);

  return v4;
}

+ (unint64_t)_eventForPauseTracking:(BOOL)a3 eventSource:(unint64_t)a4
{
  if (a4 == 14)
  {
    v4 = 11;
    if (!a3)
    {
      return 10;
    }

    return v4;
  }

  else
  {
    v9 = (_PauseEventSourceIsUserInitiated(a4) ^ 1) & 1;
    if (a3)
    {
      v5 = 8;
      if ((v9 & 1) == 0)
      {
        return 6;
      }

      return v5;
    }

    else
    {
      v6 = 9;
      if ((v9 & 1) == 0)
      {
        return 7;
      }

      return v6;
    }
  }
}

- (void)_setPauseTracking:(BOOL)a3 atDate:(id)a4 eventSource:(unint64_t)a5
{
  v64 = *MEMORY[0x277D85DE8];
  v59 = self;
  v58 = a2;
  v57 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v55 = a5;
  _HKInitializeLogging();
  v54 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v53 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
  {
    v5 = @"YES";
    if (!v57)
    {
      v5 = @"NO";
    }

    v26 = v5;
    v25 = _PauseEventSourceDescription(v55);
    v52 = MEMORY[0x277D82BE0](v25);
    __os_log_helper_16_2_2_8_66_8_66(v63, v26, v52);
    _os_log_impl(&dword_20AEA4000, v54, v53, "[SessionActivity] pauseTracking:%{public}@ eventSource:%{public}@", v63, 0x16u);
    MEMORY[0x277D82BD8](v25);
    objc_storeStrong(&v52, 0);
  }

  objc_storeStrong(&v54, 0);
  [(NLSessionActivity *)v59 isMachineWorkout];
  if (!_PauseControlAllowedFromEventSource())
  {
    _HKInitializeLogging();
    v51 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v50 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"Pause";
      if (!v57)
      {
        v6 = @"Unpause";
      }

      v23 = v6;
      v24 = [(NLSessionActivity *)v59 isMachineWorkout];
      v7 = @"YES";
      if (!v24)
      {
        v7 = @"NO";
      }

      v22 = v7;
      v21 = _PauseEventSourceDescription(v55);
      v49 = MEMORY[0x277D82BE0](v21);
      __os_log_helper_16_2_3_8_66_8_66_8_66(v62, v23, v22, v49);
      _os_log_impl(&dword_20AEA4000, v51, v50, "[SessionActivity] %{public}@ not allowed with isMachineWorkout=%{public}@ eventSource=%{public}@", v62, 0x20u);
      MEMORY[0x277D82BD8](v21);
      objc_storeStrong(&v49, 0);
    }

    objc_storeStrong(&v51, 0);
    v48 = 1;
    goto LABEL_40;
  }

  if (v57)
  {
    goto LABEL_24;
  }

  v46 = 1;
  v20 = [(NLSessionActivity *)v59 state];
  switch(v20)
  {
    case 4:
      goto LABEL_19;
    case 5:
      v46 = v55 == 14;
      break;
    case 9:
LABEL_19:
      v46 = 0;
      break;
  }

  if (!v46)
  {
    _HKInitializeLogging();
    v45 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v44 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      v18 = v45;
      v19 = v44;
      __os_log_helper_16_0_0(v43);
      _os_log_impl(&dword_20AEA4000, v18, v19, "[SessionActivity] cannot resume workout: Workout requires heart rate monitor and no heart rate monitor connected", v43, 2u);
    }

    objc_storeStrong(&v45, 0);
    v48 = 1;
    goto LABEL_40;
  }

LABEL_24:
  v42 = [MEMORY[0x277CBEB38] dictionary];
  v17 = 0;
  if (v57)
  {
    v17 = v55 == 4;
  }

  v41 = v17;
  if (v17)
  {
    [v42 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"_HKPrivateAutoPause"];
  }

  v16 = 0;
  if (!v57)
  {
    v16 = v55 == 13;
  }

  v40 = v16;
  if (v16)
  {
    v39 = [MEMORY[0x277CBEAA8] date];
    _HKInitializeLogging();
    v38 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v37 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v61, v39);
      _os_log_impl(&dword_20AEA4000, v38, v37, "[SessionActivity] Builder add resume event with resume reminder acceptance_date=%@", v61, 0xCu);
    }

    objc_storeStrong(&v38, 0);
    [v42 setObject:v39 forKeyedSubscript:*MEMORY[0x277CCE1A0]];
    objc_storeStrong(&v39, 0);
  }

  v13 = MEMORY[0x277CCDC68];
  v8 = 2;
  if (v57)
  {
    v8 = 1;
  }

  v14 = v8;
  v15 = objc_alloc(MEMORY[0x277CCA970]);
  v12 = [v15 initWithStartDate:location duration:0.0];
  if ([v42 count])
  {
    v11 = v42;
  }

  else
  {
    v11 = 0;
  }

  v36 = [v13 workoutEventWithType:v14 dateInterval:v12 metadata:v11];
  MEMORY[0x277D82BD8](v12);
  objc_initWeak(&from, v59);
  builder = v59->_builder;
  v60 = v36;
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:&v60 count:1];
  v28 = MEMORY[0x277D85DD0];
  v29 = -1073741824;
  v30 = 0;
  v31 = __58__NLSessionActivity__setPauseTracking_atDate_eventSource___block_invoke;
  v32 = &unk_277D88C88;
  objc_copyWeak(v33, &from);
  v34 = v57;
  v33[1] = v55;
  [(HKLiveWorkoutBuilder *)builder addWorkoutEvents:v9 completion:&v28];
  MEMORY[0x277D82BD8](v9);
  objc_destroyWeak(v33);
  objc_destroyWeak(&from);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(&v42, 0);
  v48 = 0;
LABEL_40:
  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

void __58__NLSessionActivity__setPauseTracking_atDate_eventSource___block_invoke(uint64_t a1, char a2, id obj)
{
  v19 = a1;
  v18 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v16 = a1;
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __58__NLSessionActivity__setPauseTracking_atDate_eventSource___block_invoke_2;
  v11 = &unk_277D88C60;
  objc_copyWeak(v13, (a1 + 32));
  v14 = v18 & 1;
  v12 = MEMORY[0x277D82BE0](location);
  v15 = *(a1 + 48) & 1;
  v13[1] = *(a1 + 40);
  dispatch_async(queue, &v7);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(v13);
  objc_storeStrong(&location, 0);
}

uint64_t __58__NLSessionActivity__setPauseTracking_atDate_eventSource___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleBuilderPauseResumeRequestWithSuccess:*(a1 + 56) & 1 error:*(a1 + 32) pauseTracking:*(a1 + 57) & 1 eventSource:*(a1 + 48)];
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (void)_handleBuilderPauseResumeRequestWithSuccess:(BOOL)a3 error:(id)a4 pauseTracking:(BOOL)a5 eventSource:(unint64_t)a6
{
  v28 = *MEMORY[0x277D85DE8];
  v25 = self;
  v24 = a2;
  v23 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v21 = a5;
  v20 = a6;
  if (v23)
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v15 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      v6 = oslog;
      v7 = v15;
      v8 = _PauseEventSourceDescription(v20);
      v14 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_4_0_8_66(v26, v21, v14);
      _os_log_impl(&dword_20AEA4000, v6, v7, "[SessionActivity] Builder add pause event success with pauseTracking:%{BOOL}d eventSource:%{public}@", v26, 0x12u);
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v14, 0);
    }

    objc_storeStrong(&oslog, 0);
    v25->_lastPauseEventSource = v20;
    [(FIUIStateMachine *)v25->_stateMachine event:[NLSessionActivity _eventForPauseTracking:v21 eventSource:v20]];
    [(NLSessionActivity *)v25 evaluatePauseResumeForConnectedDevices];
  }

  else
  {
    _HKInitializeLogging();
    v19 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v18 = 16;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      log = v19;
      type = v18;
      v11 = _PauseEventSourceDescription(v20);
      v17 = MEMORY[0x277D82BE0](v11);
      __os_log_helper_16_2_3_4_0_8_66_8_66(v27, v21, v17, location);
      _os_log_error_impl(&dword_20AEA4000, log, type, "[SessionActivity] Builder add pause event failed with pauseTracking:%{BOOL}d eventSource:%{public}@, failed with error %{public}@", v27, 0x1Cu);
      MEMORY[0x277D82BD8](v11);
      objc_storeStrong(&v17, 0);
    }

    objc_storeStrong(&v19, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)processPauseOrResumeRequestEvent:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (FIUIIsWorkoutPauseByChordPressEnabled())
  {
    IsPaused = 1;
    if (!NLSessionActivityIsActive(v24))
    {
      IsPaused = NLSessionActivityIsPaused(v24);
    }

    v18 = IsPaused;
    if (IsPaused)
    {
      v14 = !NLSessionActivityStateIsPaused([(NLSessionActivity *)v24 state]);
      _HKInitializeLogging();
      oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_66(v25, location[0]);
        _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[SessionActivity] Pause request from PauseOrResumeRequestEvent %{public}@", v25, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
      v4 = v24;
      v3 = v14;
      v6 = [location[0] dateInterval];
      v5 = [v6 startDate];
      [NLSessionActivity _setPauseTracking:v4 atDate:"_setPauseTracking:atDate:eventSource:" eventSource:v3];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      v19 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v17 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v16 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v7 = v17;
        v8 = v16;
        v9 = NLSessionActivityStateDescription([(NLSessionActivity *)v24 state]);
        v15 = MEMORY[0x277D82BE0](v9);
        __os_log_helper_16_2_1_8_64(v26, v15);
        _os_log_impl(&dword_20AEA4000, v7, v8, "[SessionActivity] Cannot handle PauseOrResumeRequestEvent in state %@", v26, 0xCu);
        MEMORY[0x277D82BD8](v9);
        objc_storeStrong(&v15, 0);
      }

      objc_storeStrong(&v17, 0);
      v19 = 1;
    }
  }

  else
  {
    _HKInitializeLogging();
    v22 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      log = v22;
      type = v21;
      __os_log_helper_16_0_0(v20);
      _os_log_impl(&dword_20AEA4000, log, type, "[SessionActivity] Pause request from PauseOrResumeRequestEvent ignored because pausing with chord press disabled through user setting", v20, 2u);
    }

    objc_storeStrong(&v22, 0);
    v19 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (BOOL)isAutoPauseEffectivelyEnabledForActivityType:(unint64_t)a3
{
  v5 = 0;
  if (a3 == 13)
  {
    v5 = FIUIIsCyclingAutoPauseEnabled();
  }

  else if (a3 == 37)
  {
    v5 = FIUIIsRunningAutoPauseEnabled();
  }

  v4 = 0;
  if (FIUIIsAutoPauseEnabled())
  {
    v4 = v5;
  }

  return v4 & 1;
}

- (void)storeMotionPauseResumeEvent:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  builder = v6->_builder;
  v7[0] = location[0];
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [HKLiveWorkoutBuilder addWorkoutEvents:"addWorkoutEvents:completion:" completion:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __49__NLSessionActivity_storeMotionPauseResumeEvent___block_invoke(uint64_t a1, char a2, id obj)
{
  v17 = a1;
  v16 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v14 = a1;
  v5 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v5;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __49__NLSessionActivity_storeMotionPauseResumeEvent___block_invoke_2;
  v11 = &unk_277D88868;
  v13 = v16 & 1;
  v12 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v7);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
}

void __49__NLSessionActivity_storeMotionPauseResumeEvent___block_invoke_2(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  oslog[2] = a1;
  oslog[1] = a1;
  _HKInitializeLogging();
  oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_4_0_8_66(v3, *(a1 + 40) & 1, *(a1 + 32));
    _os_log_impl(&dword_20AEA4000, oslog[0], OS_LOG_TYPE_DEFAULT, "[SessionActivity] Builder add motion pause/resume event success=%{BOOL}d error=%{public}@", v3, 0x12u);
  }

  objc_storeStrong(oslog, 0);
  *MEMORY[0x277D85DE8];
}

- (void)processMotionPauseResumeEvent:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([(NLSessionActivity *)v29 shouldStoreMotionPauseResumeEventsForActivityType:[(FIUIWorkoutActivityType *)v29->_activityType effectiveTypeIdentifier]])
  {
    [(NLSessionActivity *)v29 storeMotionPauseResumeEvent:location[0]];
  }

  v27 = [(NLSessionActivity *)v29 isAutoPauseEffectivelyEnabledForActivityType:[(FIUIWorkoutActivityType *)v29->_activityType effectiveTypeIdentifier]];
  if ([(NLSessionActivity *)v29 isMachineWorkout]|| !v27 || [(NLSessionActivity *)v29 experienceType]== 1 || [(WOCoreLiveWorkoutConfiguration *)v29->_configuration isInterval])
  {
    _HKInitializeLogging();
    v26 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v25 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      log = v26;
      type = v25;
      __os_log_helper_16_0_0(v24);
      _os_log_impl(&dword_20AEA4000, log, type, "[SessionActivity] Motion auto pause or resume ignored due to setting, machine workout, intervals, or Fitness+ paired workout", v24, 2u);
    }

    objc_storeStrong(&v26, 0);
    v23 = 1;
  }

  else
  {
    if ([location[0] type] != 5 || (v13 = 1, v29->_state != 6))
    {
      v12 = 0;
      if ([location[0] type] == 6)
      {
        v12 = v29->_state == 8;
      }

      v13 = v12;
    }

    v22 = v13;
    if (v13)
    {
      v17 = [location[0] type] == 5;
      _HKInitializeLogging();
      v16 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_66(v30, location[0]);
        _os_log_impl(&dword_20AEA4000, v16, OS_LOG_TYPE_DEFAULT, "[SessionActivity] Pause request from MotionPause/Resume event %{public}@", v30, 0xCu);
      }

      objc_storeStrong(&v16, 0);
      v4 = v29;
      v3 = v17;
      v6 = [location[0] dateInterval];
      v5 = [v6 startDate];
      [NLSessionActivity _setPauseTracking:v4 atDate:"_setPauseTracking:atDate:eventSource:" eventSource:v3];
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      v23 = 0;
    }

    else
    {
      _HKInitializeLogging();
      v21 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v20 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v8 = v21;
        v9 = v20;
        v11 = NLSessionActivityStateDescription(v29->_state);
        v7 = MEMORY[0x277D82BE0](v11);
        v19 = v7;
        [location[0] type];
        v10 = _HKWorkoutEventTypeName();
        v18 = MEMORY[0x277D82BE0](v10);
        __os_log_helper_16_2_2_8_64_8_64(v31, v7, v18);
        _os_log_impl(&dword_20AEA4000, v8, v9, "[SessionActivity] Motion auto pause or resume ignored due to unsupported current_state=%@ for eventType=%@", v31, 0x16u);
        MEMORY[0x277D82BD8](v10);
        MEMORY[0x277D82BD8](v11);
        objc_storeStrong(&v18, 0);
        objc_storeStrong(&v19, 0);
      }

      objc_storeStrong(&v21, 0);
      v23 = 1;
    }
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)processDownhillRunEvent:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = [(NLSessionActivity *)v13 builder];
  v5 = [(HKLiveWorkoutBuilder *)v6 workoutEvents];
  v11 = FIFilterPauseResumeEvents();
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  v7 = [location[0] dateInterval];
  [WODownhillRun calculateWorkoutTimeWithDateInterval:"calculateWorkoutTimeWithDateInterval:pauseResumeEvents:" pauseResumeEvents:?];
  v8 = v3;
  MEMORY[0x277D82BD8](v7);
  v10[1] = v8;
  v4 = [WODownhillRun alloc];
  v10[0] = [(WODownhillRun *)v4 initWithDownhillRunEvent:location[0] workoutTime:0 distance:*&v8 averageHeartRate:?];
  v9 = [(NLSessionActivity *)v13 downhillSnowSportsAccumulator];
  [(NLSessionActivityDownhillSnowSportsAccumulator *)v9 downhillRunDidComplete:v10[0]];
  MEMORY[0x277D82BD8](v9);
  objc_storeStrong(v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)addWorkoutEvents:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = [location[0] sortedArrayUsingComparator:&__block_literal_global_479];
  v17 = 0;
  v16 = [MEMORY[0x277CBEB18] array];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v18);
  v13 = [obj countByEnumeratingWithState:__b objects:v21 count:16];
  if (v13)
  {
    v9 = *__b[2];
    v10 = 0;
    v11 = v13;
    while (1)
    {
      v8 = v10;
      if (*__b[2] != v9)
      {
        objc_enumerationMutation(obj);
      }

      v15 = *(__b[1] + 8 * v10);
      v7 = [v15 type];
      if ((v7 - 1) <= 1)
      {
        goto LABEL_19;
      }

      if ((v7 - 3) > 1)
      {
        if ((v7 - 5) <= 1)
        {
          [(NLSessionActivity *)v20 processMotionPauseResumeEvent:v15];
          goto LABEL_19;
        }

        if (v7 != 7)
        {
          if (v7 == 8)
          {
            [(NLSessionActivity *)v20 processPauseOrResumeRequestEvent:v15];
          }

          goto LABEL_19;
        }

        if ([v15 fiui_isSplitEvent] & 1) != 0 || (objc_msgSend(v15, "fiui_isCustomSplitEvent"))
        {
          objc_storeStrong(&v17, v15);
        }

        else
        {
          v5 = [(NLSessionActivity *)v20 activityType];
          v6 = [(FIUIWorkoutActivityType *)v5 isDownhillSnowSport];
          MEMORY[0x277D82BD8](v5);
          if (v6)
          {
            [(NLSessionActivity *)v20 processDownhillRunEvent:v15];
          }
        }
      }

      [v16 addObject:v15];
LABEL_19:
      ++v10;
      if (v8 + 1 >= v11)
      {
        v10 = 0;
        v11 = [obj countByEnumeratingWithState:__b objects:v21 count:16];
        if (!v11)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  if (v17)
  {
    [(NLSessionActivity *)v20 processSplitEvent:v17];
  }

  if (!v20->_enqueuedWorkoutEvents)
  {
    v3 = [MEMORY[0x277CBEB18] array];
    enqueuedWorkoutEvents = v20->_enqueuedWorkoutEvents;
    v20->_enqueuedWorkoutEvents = v3;
    MEMORY[0x277D82BD8](enqueuedWorkoutEvents);
  }

  [(NSMutableArray *)v20->_enqueuedWorkoutEvents addObjectsFromArray:v16];
  if (!v20->_queueWorkoutEvents)
  {
    [(NLSessionActivity *)v20 _processQueuedWorkoutEvents];
  }

  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __38__NLSessionActivity_addWorkoutEvents___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v8 = 0;
  objc_storeStrong(&v8, a3);
  v6 = [location[0] dateInterval];
  v5 = [v8 dateInterval];
  v7 = [v6 compare:?];
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  return v7;
}

- (void)queueWorkoutEvents:(BOOL)a3
{
  if (a3)
  {
    self->_queueWorkoutEvents = 1;
  }

  else
  {
    self->_queueWorkoutEvents = 0;
    [(NLSessionActivity *)self _processQueuedWorkoutEvents];
  }
}

- (void)processSplitEvent:(id)a3
{
  v28 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([location[0] fiui_isSplitEvent] & 1) != 0 || (objc_msgSend(location[0], "fiui_isCustomSplitEvent"))
  {
    if ([(NLSessionActivity *)v28 isInSession])
    {
      if ([location[0] fiui_isSplitEvent])
      {
        WeakRetained = objc_loadWeakRetained(&v28->_splitsDelegate);
        [WeakRetained processSplitEvent:location[0]];
        MEMORY[0x277D82BD8](WeakRetained);
      }

      else if ([location[0] fiui_isCustomSplitEvent])
      {
        v15 = objc_loadWeakRetained(&v28->_customSplitsDelegate);
        [v15 processCustomSplitEvent:location[0]];
        MEMORY[0x277D82BD8](v15);
      }

      v11 = [location[0] fiui_splitDistance];
      v10 = [MEMORY[0x277CCDAB0] meterUnit];
      [v11 doubleValueForUnit:?];
      v12 = v3;
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      v25 = v12;
      v13 = [(WOSplitsDisplayAccumulator *)v28->_splitsDisplayAccumulator splitsAccumulator];
      [(NLSessionActivitySplitsAccumulator *)v13 definedDistance];
      v14 = v4;
      MEMORY[0x277D82BD8](v13);
      if (v14 == v12)
      {
        v7 = objc_alloc(MEMORY[0x277D0A830]);
        [location[0] fiui_splitActiveDuration];
        v6 = v5;
        v8 = [location[0] dateInterval];
        v24 = [v7 initWithDistance:v25 duration:v6 dateInterval:?];
        MEMORY[0x277D82BD8](v8);
        v9 = v28;
        v17 = MEMORY[0x277D85DD0];
        v18 = -1073741824;
        v19 = 0;
        v20 = __39__NLSessionActivity_processSplitEvent___block_invoke;
        v21 = &unk_277D88B48;
        v22 = MEMORY[0x277D82BE0](v28);
        v23 = MEMORY[0x277D82BE0](v24);
        [(NLSessionActivity *)v9 _notifyDataObserversWithBlock:&v17];
        objc_storeStrong(&v23, 0);
        objc_storeStrong(&v22, 0);
        objc_storeStrong(&v24, 0);
      }

      v26 = 0;
    }

    else
    {
      v26 = 1;
    }
  }

  else
  {
    v26 = 1;
  }

  objc_storeStrong(location, 0);
}

void __39__NLSessionActivity_processSplitEvent___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_respondsToSelector())
  {
    v3 = location[0];
    v4 = [*(a1 + 32) dataProvider];
    v2 = *(a1 + 40);
    [v3 dataProvider:? splitComplete:?];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)_processQueuedWorkoutEvents
{
  v19 = self;
  v18[1] = a2;
  v18[0] = [(NSMutableArray *)self->_enqueuedWorkoutEvents copy];
  [(NSMutableArray *)v19->_enqueuedWorkoutEvents removeAllObjects];
  if ([v18[0] count])
  {
    objc_initWeak(&v13, v19);
    builder = v19->_builder;
    v3 = v18[0];
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __48__NLSessionActivity__processQueuedWorkoutEvents__block_invoke;
    v10 = &unk_277D88CF0;
    v11 = MEMORY[0x277D82BE0](v18[0]);
    objc_copyWeak(&v12, &v13);
    [(HKLiveWorkoutBuilder *)builder addWorkoutEvents:v3 completion:&v6];
    objc_destroyWeak(&v12);
    objc_storeStrong(&v11, 0);
    objc_destroyWeak(&v13);
    v14 = 0;
  }

  else
  {
    _HKInitializeLogging();
    location = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v16 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      log = location;
      type = v16;
      __os_log_helper_16_0_0(v15);
      _os_log_impl(&dword_20AEA4000, log, type, "No workout events in the queue to add.", v15, 2u);
    }

    objc_storeStrong(&location, 0);
    v14 = 1;
  }

  objc_storeStrong(v18, 0);
}

void __48__NLSessionActivity__processQueuedWorkoutEvents__block_invoke(uint64_t a1, char a2, id obj)
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = a1;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v15[1] = a1;
  _HKInitializeLogging();
  v15[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v14 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v15[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_3_8_66_4_0_8_66(v19, *(a1 + 32), v17 & 1, location);
    _os_log_impl(&dword_20AEA4000, v15[0], v14, "Added workout events %{public}@ with success=%{BOOL}d error=%{public}@", v19, 0x1Cu);
  }

  objc_storeStrong(v15, 0);
  if ((v17 & 1) == 1)
  {
    v4 = MEMORY[0x277D85CD0];
    v3 = MEMORY[0x277D85CD0];
    queue = v4;
    v7 = MEMORY[0x277D85DD0];
    v8 = -1073741824;
    v9 = 0;
    v10 = __48__NLSessionActivity__processQueuedWorkoutEvents__block_invoke_484;
    v11 = &unk_277D88A38;
    objc_copyWeak(&v13, (a1 + 40));
    v12 = MEMORY[0x277D82BE0](*(a1 + 32));
    dispatch_async(queue, &v7);
    MEMORY[0x277D82BD8](queue);
    objc_storeStrong(&v12, 0);
    objc_destroyWeak(&v13);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __48__NLSessionActivity__processQueuedWorkoutEvents__block_invoke_484(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _didAddWorkoutEvents:*(a1 + 32)];
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (void)_didAddWorkoutEvents:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v15 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
  if (v15)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v15;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v17 = *(__b[1] + 8 * v12);
      v9 = [v17 workoutEventType];
      if (v9 == 4)
      {
        v7 = [v17 metadata];
        v6 = [v7 objectForKey:*MEMORY[0x277D0A710]];
        v8 = [v6 intValue];
        MEMORY[0x277D82BD8](v6);
        MEMORY[0x277D82BD8](v7);
        if (v8 == 1)
        {
          [(NLSessionActivity *)v19 _segmentMarkerEventReceived:v17];
        }
      }

      else if (v9 == 7)
      {
        v4 = [v17 metadata];
        v3 = [v4 objectForKey:*MEMORY[0x277D0A738]];
        v5 = [v3 intValue];
        MEMORY[0x277D82BD8](v3);
        MEMORY[0x277D82BD8](v4);
        if (v5 == 2)
        {
          [(NLSessionActivityDataAccumulator *)v19->_pacerDistanceGoalProgressAccumulator stopAccumulating];
        }
      }

      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obj countByEnumeratingWithState:__b objects:v20 count:16];
        if (!v13)
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

- (void)_updateHeartRateUpdateAvailability
{
  v6 = [MEMORY[0x277CCDBE8] fiui_isHeartRateSupportedForActivityType:-[FIUIWorkoutActivityType identifier](self->_activityType isIndoor:{"identifier"), -[FIUIWorkoutActivityType isIndoor](self->_activityType, "isIndoor")}];
  v3 = [(NLSessionActivity *)self heartRateAccumulator];
  [(NLSessionActivityHeartRateAccumulator *)v3 setDisabledForSession:(v6 ^ 1) & 1];
  MEMORY[0x277D82BD8](v3);
  v4 = [(NLSessionActivity *)self heartRatePrecisionStartAccumulator];
  [(WOHeartRatePrecisionStartAccumulator *)v4 setDisabledForSession:(v6 ^ 1) & 1];
  MEMORY[0x277D82BD8](v4);
  v5 = 1;
  if (v6)
  {
    v5 = [(WOCoreLiveWorkoutConfiguration *)self->_configuration isUltraMode];
  }

  v2 = [(NLSessionActivity *)self heartRateZonesAccumulator];
  [(ZonesAccumulator *)v2 setDisabledForSession:v5];
  MEMORY[0x277D82BD8](v2);
}

- (void)_startBuilderWithStartDate:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  _HKInitializeLogging();
  v25 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v24 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v28, location[0]);
    _os_log_impl(&dword_20AEA4000, v25, v24, "[SessionActivity] _startTrackingActivityWithStartDate:%@", v28, 0xCu);
  }

  objc_storeStrong(&v25, 0);
  v15 = [(NLSessionActivity *)v27 activityType];
  v14 = [(FIUIWorkoutActivityType *)v15 metadata];
  v23 = [v14 mutableCopy];
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  v12 = [(NLSessionActivity *)v27 activityType];
  v13 = [(FIUIWorkoutActivityType *)v12 isIndoor];
  MEMORY[0x277D82BD8](v12);
  if (v13)
  {
    v11 = MEMORY[0x277CCABB0];
    v10 = [(NLSessionActivity *)v27 activityType];
    v9 = [v11 numberWithBool:{-[FIUIWorkoutActivityType isIndoor](v10, "isIndoor")}];
    v3 = *MEMORY[0x277CCC4C0];
    [v23 setObject:? forKeyedSubscript:?];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
  }

  HKSessionTrackerAriadneTrigger();
  v8 = +[WOCoreWorkoutSignposter shared];
  [(WOCoreWorkoutSignposter *)v8 emitWithSignpost:3];
  MEMORY[0x277D82BD8](v8);
  objc_initWeak(&from, v27);
  v7 = [(NLSessionActivity *)v27 builder];
  v6 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
  [(HKLiveWorkoutBuilder *)v7 _setStatisticsComputationMethod:2 forType:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  v4 = [(NLSessionActivity *)v27 builder];
  v5 = location[0];
  v16 = MEMORY[0x277D85DD0];
  v17 = -1073741824;
  v18 = 0;
  v19 = __48__NLSessionActivity__startBuilderWithStartDate___block_invoke;
  v20 = &unk_277D88D40;
  objc_copyWeak(v21, &from);
  [(HKLiveWorkoutBuilder *)v4 beginCollectionWithStartDate:v5 completion:&v16];
  MEMORY[0x277D82BD8](v4);
  objc_destroyWeak(v21);
  objc_destroyWeak(&from);
  objc_storeStrong(&v23, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __48__NLSessionActivity__startBuilderWithStartDate___block_invoke(uint64_t a1, char a2, id obj)
{
  v18 = a1;
  v17 = a2;
  location = 0;
  objc_storeStrong(&location, obj);
  v15 = a1;
  HKSessionTrackerAriadneTrigger();
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __48__NLSessionActivity__startBuilderWithStartDate___block_invoke_2;
  v11 = &unk_277D88D18;
  objc_copyWeak(&v13, (a1 + 32));
  v14 = v17 & 1;
  v12 = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v7);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_destroyWeak(&v13);
  objc_storeStrong(&location, 0);
}

uint64_t __48__NLSessionActivity__startBuilderWithStartDate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleBeginCollectingWithSuccess:*(a1 + 48) & 1 error:*(a1 + 32)];
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (void)_handleBeginCollectingWithSuccess:(BOOL)a3 error:(id)a4
{
  v11 = *MEMORY[0x277D85DE8];
  v9 = self;
  v8 = a2;
  v7 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  HKSessionTrackerAriadneTrigger();
  HKSessionTrackerAriadneTrigger();
  v4 = +[WOCoreWorkoutSignposter shared];
  [(WOCoreWorkoutSignposter *)v4 emitWithSignpost:4];
  MEMORY[0x277D82BD8](v4);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_4_0_8_64(v10, v7, location);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[SessionActivity] Builder collection started with succcess=%{BOOL}d error=%@", v10, 0x12u);
  }

  objc_storeStrong(&oslog, 0);
  if (v7)
  {
    [(FIUIStateMachine *)v9->_stateMachine event:4];
  }

  else
  {
    [(FIUIStateMachine *)v9->_stateMachine event:13];
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_startAccumulatingElapsedTimeWithStartDate:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_initWeak(&from, v13);
  v3 = [(NLSessionActivity *)v13 elapsedTimeAccumulator];
  v4 = location[0];
  v5 = MEMORY[0x277D85DD0];
  v6 = -1073741824;
  v7 = 0;
  v8 = __64__NLSessionActivity__startAccumulatingElapsedTimeWithStartDate___block_invoke;
  v9 = &unk_277D88B00;
  objc_copyWeak(v10, &from);
  [(NLSessionActivityElapsedTimeAccumulator *)v3 startAccumulatingWithStartDate:v4 updateHandler:&v5];
  MEMORY[0x277D82BD8](v3);
  objc_destroyWeak(v10);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
}

uint64_t __64__NLSessionActivity__startAccumulatingElapsedTimeWithStartDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 elapsedTimeProvider];
  [WeakRetained elapsedTimeAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (void)_startAccumulatingDataWithStartDate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NLSessionActivity *)v4 _startIdempotentAccumulatingDataWithStartDate:location[0]];
  [(NLSessionActivity *)v4 _startActivityDependentAccumulatingDataWithStartDate:location[0]];
  [(WOSessionActivityDeviceObserver *)v4->_deviceObserver startObserving];
  objc_storeStrong(location, 0);
}

- (void)_startIdempotentAccumulatingDataWithStartDate:(id)a3
{
  v45 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_initWeak(&v43, v45);
  energyBurnAccumulator = v45->_energyBurnAccumulator;
  v12 = location[0];
  v37 = MEMORY[0x277D85DD0];
  v38 = -1073741824;
  v39 = 0;
  v40 = __67__NLSessionActivity__startIdempotentAccumulatingDataWithStartDate___block_invoke;
  v41 = &unk_277D88B00;
  objc_copyWeak(&v42, &v43);
  [(NLSessionActivityDataAccumulator *)energyBurnAccumulator startAccumulatingWithStartDate:v12 updateHandler:&v37];
  flightsClimbedAccumulator = v45->_flightsClimbedAccumulator;
  v10 = location[0];
  v31 = MEMORY[0x277D85DD0];
  v32 = -1073741824;
  v33 = 0;
  v34 = __67__NLSessionActivity__startIdempotentAccumulatingDataWithStartDate___block_invoke_2;
  v35 = &unk_277D88B00;
  objc_copyWeak(v36, &v43);
  [(NLSessionActivityDataAccumulator *)flightsClimbedAccumulator startAccumulatingWithStartDate:v10 updateHandler:&v31];
  strideLengthAccumulator = v45->_strideLengthAccumulator;
  v7 = [(NLSessionActivity *)v45 activityBeginDate];
  v25 = MEMORY[0x277D85DD0];
  v26 = -1073741824;
  v27 = 0;
  v28 = __67__NLSessionActivity__startIdempotentAccumulatingDataWithStartDate___block_invoke_3;
  v29 = &unk_277D88B00;
  objc_copyWeak(&v30, &v43);
  [(NLSessionActivityDataAccumulator *)strideLengthAccumulator startAccumulatingWithStartDate:v7 updateHandler:&v25];
  MEMORY[0x277D82BD8](v7);
  verticalOscillationAccumulator = v45->_verticalOscillationAccumulator;
  v5 = [(NLSessionActivity *)v45 activityBeginDate];
  v19 = MEMORY[0x277D85DD0];
  v20 = -1073741824;
  v21 = 0;
  v22 = __67__NLSessionActivity__startIdempotentAccumulatingDataWithStartDate___block_invoke_4;
  v23 = &unk_277D88B00;
  objc_copyWeak(&v24, &v43);
  [(NLSessionActivityDataAccumulator *)verticalOscillationAccumulator startAccumulatingWithStartDate:v5 updateHandler:&v19];
  MEMORY[0x277D82BD8](v5);
  groundContactTimeAccumulator = v45->_groundContactTimeAccumulator;
  v3 = [(NLSessionActivity *)v45 activityBeginDate];
  v13 = MEMORY[0x277D85DD0];
  v14 = -1073741824;
  v15 = 0;
  v16 = __67__NLSessionActivity__startIdempotentAccumulatingDataWithStartDate___block_invoke_5;
  v17 = &unk_277D88B00;
  objc_copyWeak(&v18, &v43);
  [(NLSessionActivityDataAccumulator *)groundContactTimeAccumulator startAccumulatingWithStartDate:v3 updateHandler:&v13];
  MEMORY[0x277D82BD8](v3);
  objc_destroyWeak(&v18);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&v30);
  objc_destroyWeak(v36);
  objc_destroyWeak(&v42);
  objc_destroyWeak(&v43);
  objc_storeStrong(location, 0);
}

uint64_t __67__NLSessionActivity__startIdempotentAccumulatingDataWithStartDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 energyBurnAccumulator];
  [WeakRetained energyBurnAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __67__NLSessionActivity__startIdempotentAccumulatingDataWithStartDate___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 flightsClimbedAccumulator];
  [WeakRetained flightsClimbedAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __67__NLSessionActivity__startIdempotentAccumulatingDataWithStartDate___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 strideLengthAccumulator];
  [WeakRetained strideLengthAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __67__NLSessionActivity__startIdempotentAccumulatingDataWithStartDate___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 verticalOscillationAccumulator];
  [WeakRetained verticalOscillationAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __67__NLSessionActivity__startIdempotentAccumulatingDataWithStartDate___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 groundContactTimeAccumulator];
  [WeakRetained groundContactTimeAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (void)_stopActivityDependentAccumulatorsWithActivity:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  v27 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v25 = 0.0;
  if (location[0])
  {
    v19 = objc_opt_class();
    v22 = [location[0] startDate];
    v21 = [location[0] endDate];
    v20 = [(HKLiveWorkoutBuilder *)v27->_builder workoutEvents];
    [v19 durationBetweenStartDate:v22 endDate:v21 workoutEvents:?];
    v25 = v3;
    MEMORY[0x277D82BD8](v20);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](v22);
  }

  [(NLSessionActivity *)v27 queueWorkoutEvents:1];
  [(NLSessionActivityDataAccumulator *)v27->_swimmingAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v27->_downhillSnowSportsAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v27->_swimmingStrokeAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v27->_machineDistanceAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v27->_distanceAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v27->_machinePaceAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v27->_nonMachinePaceAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v27->_ghostPacerAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v27->_pacerDistanceGoalProgressAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v27->_rollingPaceAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v27->_heartRateAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v27->_heartRateZonesAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v27->_powerAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v27->_powerZonesAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v27->_elevationAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v27->_pedometerCadenceAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v27->_cyclingCadenceAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v27->_waterTemperatureAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v27->_intervalCadenceAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v27->_locationPositionAccumulator stopAccumulating];
  v16 = [(WORaceCoordinator *)v27->_raceCoordinator racePositionProvider];
  [(NLSessionActivityDataAccumulator *)v16 stopAccumulating];
  MEMORY[0x277D82BD8](v16);
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v27->_splitsAccumulators);
  v18 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
  if (v18)
  {
    v13 = *__b[2];
    v14 = 0;
    v15 = v18;
    while (1)
    {
      v12 = v14;
      if (*__b[2] != v13)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(__b[1] + 8 * v14);
      [v24 stopAccumulatingWithActivity:location[0] elapsedTime:v25];
      ++v14;
      if (v12 + 1 >= v15)
      {
        v14 = 0;
        v15 = [obj countByEnumeratingWithState:__b objects:v28 count:16];
        if (!v15)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  v4 = [(WOSplitsDisplayAccumulator *)v27->_splitsDisplayAccumulator distanceAccumulator];
  [(NLSessionActivityDataAccumulator *)v4 stopAccumulating];
  MEMORY[0x277D82BD8](v4);
  v5 = [(WOSplitsDisplayAccumulator *)v27->_splitsDisplayAccumulator elapsedTimeAccumulator];
  [(NLSessionActivityDataAccumulator *)v5 stopAccumulating];
  MEMORY[0x277D82BD8](v5);
  v6 = [(WOSplitsDisplayAccumulator *)v27->_splitsDisplayAccumulator paceAccumulator];
  [(NLSessionActivityDataAccumulator *)v6 stopAccumulating];
  MEMORY[0x277D82BD8](v6);
  v7 = [(WOSplitsDisplayAccumulator *)v27->_splitsDisplayAccumulator averagePowerAccumulator];
  [(NLSessionActivityDataAccumulator *)v7 stopAccumulating];
  MEMORY[0x277D82BD8](v7);
  v8 = [(WOSegmentAccumulator *)v27->_segmentAccumulator distanceAccumulator];
  [(NLSessionActivityDataAccumulator *)v8 stopAccumulating];
  MEMORY[0x277D82BD8](v8);
  v9 = [(WOSegmentAccumulator *)v27->_segmentAccumulator elapsedTimeAccumulator];
  [(NLSessionActivityDataAccumulator *)v9 stopAccumulating];
  MEMORY[0x277D82BD8](v9);
  v10 = [(WOSegmentAccumulator *)v27->_segmentAccumulator energyAccumulator];
  [(NLSessionActivityDataAccumulator *)v10 stopAccumulating];
  MEMORY[0x277D82BD8](v10);
  v11 = [(WOSegmentAccumulator *)v27->_segmentAccumulator paceAccumulator];
  [(NLSessionActivityDataAccumulator *)v11 stopAccumulating];
  MEMORY[0x277D82BD8](v11);
  [(NLSessionActivity *)v27 _teardownGroundElevationManager];
  [(NLSessionActivity *)v27 queueWorkoutEvents:0];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_startActivityDependentAccumulatingDataWithStartDate:(id)a3
{
  v243 = *MEMORY[0x277D85DE8];
  v241 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_initWeak(&from, v241);
  if ([(FIUIWorkoutActivityType *)v241->_activityType identifier]== 46)
  {
    v67 = [(WOCoreLiveWorkoutConfiguration *)v241->_configuration hkWorkoutConfiguration];
    v238 = [(HKWorkoutConfiguration *)v67 suggestedActivityUUID];
    MEMORY[0x277D82BD8](v67);
    swimmingAccumulator = v241->_swimmingAccumulator;
    v66 = location[0];
    if (v238)
    {
      UUID = v238;
    }

    else
    {
      UUID = v241->_UUID;
    }

    v232 = MEMORY[0x277D85DD0];
    v233 = -1073741824;
    v234 = 0;
    v235 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke;
    v236 = &unk_277D88B00;
    objc_copyWeak(&v237, &from);
    [(NLSessionActivitySwimmingAccumulator *)swimmingAccumulator accumulatorDidStartWithStartDate:v66 sessionUUID:UUID handler:&v232];
    swimmingStrokeAccumulator = v241->_swimmingStrokeAccumulator;
    v63 = location[0];
    v226 = MEMORY[0x277D85DD0];
    v227 = -1073741824;
    v228 = 0;
    v229 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_2;
    v230 = &unk_277D88B00;
    objc_copyWeak(&v231, &from);
    [(NLSessionActivitySwimStrokeAccumulator *)swimmingStrokeAccumulator startAccumulatingWithStartDate:v63 updateHandler:&v226];
    objc_destroyWeak(&v231);
    objc_destroyWeak(&v237);
    objc_storeStrong(&v238, 0);
  }

  else if ([(FIUIWorkoutActivityType *)v241->_activityType isDownhillSnowSport])
  {
    downhillSnowSportsAccumulator = v241->_downhillSnowSportsAccumulator;
    v220 = MEMORY[0x277D85DD0];
    v221 = -1073741824;
    v222 = 0;
    v223 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_487;
    v224 = &unk_277D88B00;
    objc_copyWeak(&v225, &from);
    [(NLSessionActivityDataAccumulator *)downhillSnowSportsAccumulator startAccumulatingWithUpdateHandler:&v220];
    objc_destroyWeak(&v225);
  }

  else
  {
    v60 = [(NLSessionActivity *)v241 isMachineWorkout];
    v59 = [(NLSessionActivity *)v241 activityType];
    v58 = _UseMachineDistance(v60, [(FIUIWorkoutActivityType *)v59 identifier]);
    MEMORY[0x277D82BD8](v59);
    if (v58)
    {
      machineDistanceAccumulator = v241->_machineDistanceAccumulator;
      v214 = MEMORY[0x277D85DD0];
      v215 = -1073741824;
      v216 = 0;
      v217 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_2_488;
      v218 = &unk_277D88B00;
      objc_copyWeak(&v219, &from);
      [(NLSessionActivityDataAccumulator *)machineDistanceAccumulator startAccumulatingWithUpdateHandler:&v214];
      objc_destroyWeak(&v219);
    }

    else
    {
      distanceAccumulator = v241->_distanceAccumulator;
      v56 = location[0];
      v208 = MEMORY[0x277D85DD0];
      v209 = -1073741824;
      v210 = 0;
      v211 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_3;
      v212 = &unk_277D88B00;
      objc_copyWeak(&v213, &from);
      [(NLSessionActivityDataAccumulator *)distanceAccumulator startAccumulatingWithStartDate:v56 updateHandler:&v208];
      objc_destroyWeak(&v213);
    }
  }

  v53 = [(NLSessionActivity *)v241 paceAccumulator];
  v54 = location[0];
  v202 = MEMORY[0x277D85DD0];
  v203 = -1073741824;
  v204 = 0;
  v205 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_4;
  v206 = &unk_277D88B00;
  objc_copyWeak(&v207, &from);
  [(NLSessionActivityPaceAccumulator *)v53 startAccumulatingWithStartDate:v54 updateHandler:&v202];
  MEMORY[0x277D82BD8](v53);
  ghostPacerAccumulator = v241->_ghostPacerAccumulator;
  v52 = location[0];
  v196 = MEMORY[0x277D85DD0];
  v197 = -1073741824;
  v198 = 0;
  v199 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_5;
  v200 = &unk_277D88B00;
  objc_copyWeak(&v201, &from);
  [(NLSessionActivityDataAccumulator *)ghostPacerAccumulator startAccumulatingWithStartDate:v52 updateHandler:&v196];
  [(NLPacerDistanceGoalProgressAccumulator *)v241->_pacerDistanceGoalProgressAccumulator setEventPersistenceDelegate:v241];
  pacerDistanceGoalProgressAccumulator = v241->_pacerDistanceGoalProgressAccumulator;
  v50 = location[0];
  v190 = MEMORY[0x277D85DD0];
  v191 = -1073741824;
  v192 = 0;
  v193 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_6;
  v194 = &unk_277D88B00;
  objc_copyWeak(&v195, &from);
  [(NLSessionActivityDataAccumulator *)pacerDistanceGoalProgressAccumulator startAccumulatingWithStartDate:v50 updateHandler:&v190];
  rollingPaceAccumulator = v241->_rollingPaceAccumulator;
  v48 = location[0];
  v184 = MEMORY[0x277D85DD0];
  v185 = -1073741824;
  v186 = 0;
  v187 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_7;
  v188 = &unk_277D88B00;
  objc_copyWeak(&v189, &from);
  [(NLSessionActivityDataAccumulator *)rollingPaceAccumulator startAccumulatingWithStartDate:v48 updateHandler:&v184];
  heartRateAccumulator = v241->_heartRateAccumulator;
  v45 = [(NLSessionActivity *)v241 activityBeginDate];
  v178 = MEMORY[0x277D85DD0];
  v179 = -1073741824;
  v180 = 0;
  v181 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_8;
  v182 = &unk_277D88B00;
  objc_copyWeak(&v183, &from);
  [(NLSessionActivityDataAccumulator *)heartRateAccumulator startAccumulatingWithStartDate:v45 updateHandler:&v178];
  MEMORY[0x277D82BD8](v45);
  heartRateZonesAccumulator = v241->_heartRateZonesAccumulator;
  v43 = [(NLSessionActivity *)v241 activityBeginDate];
  v172 = MEMORY[0x277D85DD0];
  v173 = -1073741824;
  v174 = 0;
  v175 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_9;
  v176 = &unk_277D88B00;
  objc_copyWeak(&v177, &from);
  [(NLSessionActivityDataAccumulator *)heartRateZonesAccumulator startAccumulatingWithStartDate:v43 updateHandler:&v172];
  MEMORY[0x277D82BD8](v43);
  powerAccumulator = v241->_powerAccumulator;
  v41 = [(NLSessionActivity *)v241 activityBeginDate];
  v166 = MEMORY[0x277D85DD0];
  v167 = -1073741824;
  v168 = 0;
  v169 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_10;
  v170 = &unk_277D88B00;
  objc_copyWeak(&v171, &from);
  [(NLSessionActivityDataAccumulator *)powerAccumulator startAccumulatingWithStartDate:v41 updateHandler:&v166];
  MEMORY[0x277D82BD8](v41);
  powerZonesAccumulator = v241->_powerZonesAccumulator;
  v39 = [(NLSessionActivity *)v241 activityBeginDate];
  v160 = MEMORY[0x277D85DD0];
  v161 = -1073741824;
  v162 = 0;
  v163 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_11;
  v164 = &unk_277D88B00;
  objc_copyWeak(&v165, &from);
  [(NLSessionActivityDataAccumulator *)powerZonesAccumulator startAccumulatingWithStartDate:v39 updateHandler:&v160];
  MEMORY[0x277D82BD8](v39);
  elevationAccumulator = v241->_elevationAccumulator;
  v38 = location[0];
  v154 = MEMORY[0x277D85DD0];
  v155 = -1073741824;
  v156 = 0;
  v157 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_12;
  v158 = &unk_277D88B00;
  objc_copyWeak(&v159, &from);
  [(NLSessionActivityDataAccumulator *)elevationAccumulator startAccumulatingWithStartDate:v38 updateHandler:&v154];
  pedometerCadenceAccumulator = v241->_pedometerCadenceAccumulator;
  v36 = location[0];
  v148 = MEMORY[0x277D85DD0];
  v149 = -1073741824;
  v150 = 0;
  v151 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_13;
  v152 = &unk_277D88B00;
  objc_copyWeak(&v153, &from);
  [(NLSessionActivityPedometerCadenceAccumulator *)pedometerCadenceAccumulator startAccumulatingWithStartDate:v36 updateHandler:&v148];
  cyclingCadenceAccumulator = v241->_cyclingCadenceAccumulator;
  v34 = location[0];
  v142 = MEMORY[0x277D85DD0];
  v143 = -1073741824;
  v144 = 0;
  v145 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_14;
  v146 = &unk_277D88B00;
  objc_copyWeak(&v147, &from);
  [(NLSessionActivityDataAccumulator *)cyclingCadenceAccumulator startAccumulatingWithStartDate:v34 updateHandler:&v142];
  waterTemperatureAccumulator = v241->_waterTemperatureAccumulator;
  v32 = location[0];
  v136 = MEMORY[0x277D85DD0];
  v137 = -1073741824;
  v138 = 0;
  v139 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_15;
  v140 = &unk_277D88B00;
  objc_copyWeak(&v141, &from);
  [(NLSessionActivityDataAccumulator *)waterTemperatureAccumulator startAccumulatingWithStartDate:v32 updateHandler:&v136];
  intervalCadenceAccumulator = v241->_intervalCadenceAccumulator;
  v30 = location[0];
  v130 = MEMORY[0x277D85DD0];
  v131 = -1073741824;
  v132 = 0;
  v133 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_16;
  v134 = &unk_277D88B00;
  objc_copyWeak(&v135, &from);
  [(NLSessionActivityDataAccumulator *)intervalCadenceAccumulator startAccumulatingWithStartDate:v30 updateHandler:&v130];
  v27 = [(WORaceCoordinator *)v241->_raceCoordinator racePositionProvider];
  v28 = location[0];
  v124 = MEMORY[0x277D85DD0];
  v125 = -1073741824;
  v126 = 0;
  v127 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_17;
  v128 = &unk_277D88B00;
  objc_copyWeak(&v129, &from);
  [(NLSessionActivityDataAccumulator *)v27 startAccumulatingWithStartDate:v28 updateHandler:&v124];
  MEMORY[0x277D82BD8](v27);
  if ([(FIUIWorkoutActivityType *)v241->_activityType supportsLocationPositionTracking])
  {
    [(NLSessionActivityDataAccumulator *)v241->_locationPositionAccumulator startAccumulatingWithStartDate:location[0] updateHandler:&__block_literal_global_490];
  }

  if ([(FIUIWorkoutActivityType *)v241->_activityType supportsDistanceSplits])
  {
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](v241->_splitsAccumulators);
    v26 = [obj countByEnumeratingWithState:__b objects:v242 count:16];
    if (v26)
    {
      v22 = *__b[2];
      v23 = 0;
      v24 = v26;
      while (1)
      {
        v21 = v23;
        if (*__b[2] != v22)
        {
          objc_enumerationMutation(obj);
        }

        v123 = *(__b[1] + 8 * v23);
        [v123 setEventPersistenceDelegate:v241];
        [v123 startAccumulatingWithStartDate:location[0] updateHandler:&__block_literal_global_492];
        ++v23;
        if (v21 + 1 >= v24)
        {
          v23 = 0;
          v24 = [obj countByEnumeratingWithState:__b objects:v242 count:16];
          if (!v24)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
    v19 = [(WOSplitsDisplayAccumulator *)v241->_splitsDisplayAccumulator distanceAccumulator];
    v20 = location[0];
    v116 = MEMORY[0x277D85DD0];
    v117 = -1073741824;
    v118 = 0;
    v119 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_20;
    v120 = &unk_277D88B00;
    objc_copyWeak(&v121, &from);
    [(NLSessionActivityDataAccumulator *)v19 startAccumulatingWithStartDate:v20 updateHandler:&v116];
    MEMORY[0x277D82BD8](v19);
    v17 = [(WOSplitsDisplayAccumulator *)v241->_splitsDisplayAccumulator elapsedTimeAccumulator];
    v18 = location[0];
    v110 = MEMORY[0x277D85DD0];
    v111 = -1073741824;
    v112 = 0;
    v113 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_21;
    v114 = &unk_277D88B00;
    objc_copyWeak(&v115, &from);
    [(NLSessionActivityDataAccumulator *)v17 startAccumulatingWithStartDate:v18 updateHandler:&v110];
    MEMORY[0x277D82BD8](v17);
    v15 = [(WOSplitsDisplayAccumulator *)v241->_splitsDisplayAccumulator paceAccumulator];
    v16 = location[0];
    v104 = MEMORY[0x277D85DD0];
    v105 = -1073741824;
    v106 = 0;
    v107 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_22;
    v108 = &unk_277D88B00;
    objc_copyWeak(&v109, &from);
    [(NLSessionActivityDataAccumulator *)v15 startAccumulatingWithStartDate:v16 updateHandler:&v104];
    MEMORY[0x277D82BD8](v15);
    v13 = [(WOSplitsDisplayAccumulator *)v241->_splitsDisplayAccumulator averagePowerAccumulator];
    v14 = location[0];
    v98 = MEMORY[0x277D85DD0];
    v99 = -1073741824;
    v100 = 0;
    v101 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_23;
    v102 = &unk_277D88B00;
    objc_copyWeak(&v103, &from);
    [(NLSessionActivityDataAccumulator *)v13 startAccumulatingWithStartDate:v14 updateHandler:&v98];
    MEMORY[0x277D82BD8](v13);
    objc_destroyWeak(&v103);
    objc_destroyWeak(&v109);
    objc_destroyWeak(&v115);
    objc_destroyWeak(&v121);
  }

  if ([(FIUIWorkoutActivityType *)v241->_activityType supportsSegments])
  {
    v11 = [(WOSegmentAccumulator *)v241->_segmentAccumulator distanceAccumulator];
    v12 = location[0];
    v92 = MEMORY[0x277D85DD0];
    v93 = -1073741824;
    v94 = 0;
    v95 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_24;
    v96 = &unk_277D88B00;
    objc_copyWeak(&v97, &from);
    [(NLSessionActivityDataAccumulator *)v11 startAccumulatingWithStartDate:v12 updateHandler:&v92];
    MEMORY[0x277D82BD8](v11);
    v9 = [(WOSegmentAccumulator *)v241->_segmentAccumulator elapsedTimeAccumulator];
    v10 = location[0];
    v86 = MEMORY[0x277D85DD0];
    v87 = -1073741824;
    v88 = 0;
    v89 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_25;
    v90 = &unk_277D88B00;
    objc_copyWeak(&v91, &from);
    [(NLSessionActivityDataAccumulator *)v9 startAccumulatingWithStartDate:v10 updateHandler:&v86];
    MEMORY[0x277D82BD8](v9);
    v7 = [(WOSegmentAccumulator *)v241->_segmentAccumulator energyAccumulator];
    v8 = location[0];
    v80 = MEMORY[0x277D85DD0];
    v81 = -1073741824;
    v82 = 0;
    v83 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_26;
    v84 = &unk_277D88B00;
    objc_copyWeak(&v85, &from);
    [(NLSessionActivityDataAccumulator *)v7 startAccumulatingWithStartDate:v8 updateHandler:&v80];
    MEMORY[0x277D82BD8](v7);
    v5 = [(WOSegmentAccumulator *)v241->_segmentAccumulator paceAccumulator];
    v6 = location[0];
    v74 = MEMORY[0x277D85DD0];
    v75 = -1073741824;
    v76 = 0;
    v77 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_27;
    v78 = &unk_277D88B00;
    objc_copyWeak(&v79, &from);
    [(NLSessionActivityDataAccumulator *)v5 startAccumulatingWithStartDate:v6 updateHandler:&v74];
    MEMORY[0x277D82BD8](v5);
    v3 = [(WOSegmentAccumulator *)v241->_segmentAccumulator averagePowerAccumulator];
    v4 = location[0];
    v68 = MEMORY[0x277D85DD0];
    v69 = -1073741824;
    v70 = 0;
    v71 = __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_28;
    v72 = &unk_277D88B00;
    objc_copyWeak(&v73, &from);
    [(NLSessionActivityDataAccumulator *)v3 startAccumulatingWithStartDate:v4 updateHandler:&v68];
    MEMORY[0x277D82BD8](v3);
    objc_destroyWeak(&v73);
    objc_destroyWeak(&v79);
    objc_destroyWeak(&v85);
    objc_destroyWeak(&v91);
    objc_destroyWeak(&v97);
  }

  objc_destroyWeak(&v129);
  objc_destroyWeak(&v135);
  objc_destroyWeak(&v141);
  objc_destroyWeak(&v147);
  objc_destroyWeak(&v153);
  objc_destroyWeak(&v159);
  objc_destroyWeak(&v165);
  objc_destroyWeak(&v171);
  objc_destroyWeak(&v177);
  objc_destroyWeak(&v183);
  objc_destroyWeak(&v189);
  objc_destroyWeak(&v195);
  objc_destroyWeak(&v201);
  objc_destroyWeak(&v207);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 swimmingAccumulator];
  [WeakRetained swimmingAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

void __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_2(id *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEBUG))
    {
      WeakRetained = objc_loadWeakRetained(a1 + 4);
      v2 = [WeakRetained swimmingStrokeAccumulator];
      v1 = [v2 distanceByStrokeStyle];
      __os_log_helper_16_2_1_8_64(v6, v1);
      _os_log_debug_impl(&dword_20AEA4000, location[0], OS_LOG_TYPE_DEBUG, "%@", v6, 0xCu);
      MEMORY[0x277D82BD8](v1);
      MEMORY[0x277D82BD8](v2);
      MEMORY[0x277D82BD8](WeakRetained);
    }

    objc_storeStrong(location, 0);
  }

  *MEMORY[0x277D85DE8];
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_487(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 downhillSnowSportsAccumulator];
  [WeakRetained downhillSnowSportsAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_2_488(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 machineDistanceAccumulator];
  [WeakRetained distanceProviderDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 distanceAccumulator];
  [WeakRetained distanceProviderDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 paceProvider];
  [WeakRetained paceProviderDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 ghostPacerAccumulator];
  [WeakRetained ghostPacerAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_6(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 pacerDistanceGoalProgressAccumulator];
  [WeakRetained pacerDistanceGoalProgressAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_7(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 rollingPaceAccumulator];
  [WeakRetained rollingPaceAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 heartRateAccumulator];
  [WeakRetained heartRateAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_9(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 heartRateZonesAccumulator];
  [WeakRetained heartRateZonesAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_10(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 powerAccumulator];
  [WeakRetained powerAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_11(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 powerZonesAccumulator];
  [WeakRetained powerZonesAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_12(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 elevationAccumulator];
  [WeakRetained elevationAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_13(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 pedometerCadenceAccumulator];
  [WeakRetained pedometerCadenceAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_14(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 cyclingCadenceAccumulator];
  [WeakRetained cyclingCadenceAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_15(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 waterTemperatureAccumulator];
  [WeakRetained waterTemperatureAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_16(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = objc_loadWeakRetained((a1 + 32));
  v3 = [v4 intervalCadenceAccumulator];
  [WeakRetained intervalCadenceAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_17(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 raceCoordinator];
  v3 = [v4 racePositionProvider];
  [WeakRetained racePositionProviderDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_20(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 splitsDisplayAccumulator];
  v3 = [v4 distanceAccumulator];
  [WeakRetained splitDistanceAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_21(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 splitsDisplayAccumulator];
  v3 = [v4 elapsedTimeAccumulator];
  [WeakRetained splitElapsedTimeAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_22(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 splitsDisplayAccumulator];
  v3 = [v4 paceAccumulator];
  [WeakRetained splitPaceAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_23(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 splitsDisplayAccumulator];
  v3 = [v4 averagePowerAccumulator];
  [WeakRetained splitAveragePowerAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_24(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 segmentAccumulator];
  v3 = [v4 distanceAccumulator];
  [WeakRetained segmentDistanceAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_25(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 segmentAccumulator];
  v3 = [v4 elapsedTimeAccumulator];
  [WeakRetained segmentElapsedTimeAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_26(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 segmentAccumulator];
  v3 = [v4 energyAccumulator];
  [WeakRetained segmentEnergyAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_27(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 segmentAccumulator];
  v3 = [v4 paceAccumulator];
  [WeakRetained segmentPaceAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  return MEMORY[0x277D82BD8](WeakRetained);
}

uint64_t __74__NLSessionActivity__startActivityDependentAccumulatingDataWithStartDate___block_invoke_28(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = objc_loadWeakRetained((a1 + 32));
  v4 = [v5 segmentAccumulator];
  v3 = [v4 averagePowerAccumulator];
  [WeakRetained segmentAveragePowerAccumulatorDidUpdate:?];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (void)_stopTrackingActivityWithEndDate:(id)a3
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  _HKInitializeLogging();
  v16 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v12 = v16;
    v13 = v15;
    __os_log_helper_16_0_0(v14);
    _os_log_impl(&dword_20AEA4000, v12, v13, "_stopTrackingActivityWithEndDate called", v14, 2u);
  }

  objc_storeStrong(&v16, 0);
  [(NLSessionActivityDataAccumulator *)v18->_energyBurnAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v18->_distanceAccumulator stopAccumulating];
  v3 = [(NLSessionActivity *)v18 paceAccumulator];
  [(NLSessionActivityPaceAccumulator *)v3 stopAccumulating];
  MEMORY[0x277D82BD8](v3);
  [(NLSessionActivityDataAccumulator *)v18->_ghostPacerAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v18->_pacerDistanceGoalProgressAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v18->_rollingPaceAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v18->_pedometerCadenceAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v18->_cyclingCadenceAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v18->_waterTemperatureAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v18->_intervalCadenceAccumulator stopAccumulating];
  v4 = [(NLSessionActivity *)v18 elapsedTimeAccumulator];
  [(NLSessionActivityElapsedTimeAccumulator *)v4 stopAccumulating];
  MEMORY[0x277D82BD8](v4);
  [(NLSessionActivityDataAccumulator *)v18->_heartRateAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v18->_heartRateZonesAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v18->_powerZonesAccumulator stopAccumulating];
  [(NLSessionActivityWeatherManager *)v18->_weatherManager setActive:0];
  [(NLSessionActivityDataAccumulator *)v18->_swimmingAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v18->_elevationAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v18->_flightsClimbedAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v18->_powerAccumulator stopAccumulating];
  v5 = [(WORaceCoordinator *)v18->_raceCoordinator racePositionProvider];
  [(NLSessionActivityDataAccumulator *)v5 stopAccumulating];
  MEMORY[0x277D82BD8](v5);
  v6 = [(WOSegmentAccumulator *)v18->_segmentAccumulator distanceAccumulator];
  [(NLSessionActivityDataAccumulator *)v6 stopAccumulating];
  MEMORY[0x277D82BD8](v6);
  v7 = [(WOSegmentAccumulator *)v18->_segmentAccumulator elapsedTimeAccumulator];
  [(NLSessionActivityDataAccumulator *)v7 stopAccumulating];
  MEMORY[0x277D82BD8](v7);
  v8 = [(WOSegmentAccumulator *)v18->_segmentAccumulator energyAccumulator];
  [(NLSessionActivityDataAccumulator *)v8 stopAccumulating];
  MEMORY[0x277D82BD8](v8);
  v9 = [(WOSegmentAccumulator *)v18->_segmentAccumulator paceAccumulator];
  [(NLSessionActivityDataAccumulator *)v9 stopAccumulating];
  MEMORY[0x277D82BD8](v9);
  v10 = [(WOSegmentAccumulator *)v18->_segmentAccumulator averagePowerAccumulator];
  [(NLSessionActivityDataAccumulator *)v10 stopAccumulating];
  MEMORY[0x277D82BD8](v10);
  [(NLSessionActivityDataAccumulator *)v18->_strideLengthAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v18->_verticalOscillationAccumulator stopAccumulating];
  [(NLSessionActivityDataAccumulator *)v18->_groundContactTimeAccumulator stopAccumulating];
  v11 = [(NLSessionActivity *)v18 deviceObserver];
  [(WOSessionActivityDeviceObserver *)v11 stopObserving];
  MEMORY[0x277D82BD8](v11);
  [(NLSessionActivity *)v18 _teardownGroundElevationManager];
  objc_storeStrong(location, 0);
}

- (void)_handleFinishWorkoutWithWorkout:(id)a3 error:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = 0;
  objc_storeStrong(&v24, a4);
  _HKInitializeLogging();
  v23 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v22 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v28, location[0], v24);
    _os_log_impl(&dword_20AEA4000, v23, v22, "[SessionActivity] Builder finished with workout=%@ error=%@", v28, 0x16u);
  }

  objc_storeStrong(&v23, 0);
  if (location[0])
  {
    v12 = [(NLSessionActivity *)v26 demoDataProvider];
    MEMORY[0x277D82BD8](v12);
    if (v12)
    {
      v11 = [(NLSessionActivity *)v26 demoDataProvider];
      v4 = [(NLWorkoutDemoDataProvider *)v11 demoWorkoutWithSnapshot:location[0]];
      v5 = location[0];
      location[0] = v4;
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v11);
    }

    [(NLSessionActivity *)v26 setSavedWorkout:location[0]];
    v6 = [(NLSessionActivity *)v26 lifecycleDelegate];
    [(NLSessionActivityLifecycleDelegate *)v6 sessionActivity:v26 didUpdateWorkout:location[0] workoutIsFinal:1];
    MEMORY[0x277D82BD8](v6);
    v7 = [(NLSessionActivity *)v26 savingDelegate];
    [(NLSessionActivitySavingDelegate *)v7 activity:v26 didSaveWorkout:location[0]];
    MEMORY[0x277D82BD8](v7);
    v8 = v26;
    v15 = MEMORY[0x277D85DD0];
    v16 = -1073741824;
    v17 = 0;
    v18 = __59__NLSessionActivity__handleFinishWorkoutWithWorkout_error___block_invoke;
    v19 = &unk_277D88B48;
    v20 = MEMORY[0x277D82BE0](v26);
    v21 = MEMORY[0x277D82BE0](location[0]);
    [(NLSessionActivity *)v8 _notifyDataObserversWithBlock:&v15];
    v10 = [(NLSessionActivity *)v26 UUID];
    v9 = [(NSUUID *)v10 UUIDString];
    [WOCoreTaskFinalizer finalizeWithIdentifier:?];
    MEMORY[0x277D82BD8](v9);
    MEMORY[0x277D82BD8](v10);
    [(FIUIStateMachine *)v26->_stateMachine event:20];
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v20, 0);
  }

  else
  {
    _HKInitializeLogging();
    v14 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_64(v27, v24);
      _os_log_error_impl(&dword_20AEA4000, v14, OS_LOG_TYPE_ERROR, "[SessionActivity] Builder failed to finish with error %@", v27, 0xCu);
    }

    objc_storeStrong(&v14, 0);
    [(FIUIStateMachine *)v26->_stateMachine event:18];
  }

  objc_storeStrong(&v24, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __59__NLSessionActivity__handleFinishWorkoutWithWorkout_error___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = location[0];
  v5 = [*(a1 + 32) dataProvider];
  v2 = *(a1 + 40);
  [v4 dataProvider:? didUpdateWorkout:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

- (void)registerMarkerEventWithDate:(id)a3 metadata:(id)a4
{
  v20[1] = *MEMORY[0x277D85DE8];
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  _HKInitializeLogging();
  v16 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    log = v16;
    v12 = v15;
    __os_log_helper_16_0_0(v14);
    _os_log_impl(&dword_20AEA4000, log, v12, "[SessionActivity] Registering marker event", v14, 2u);
  }

  objc_storeStrong(&v16, 0);
  v6 = v19;
  v5 = MEMORY[0x277CCDC68];
  v4 = objc_alloc(MEMORY[0x277CCA970]);
  v10 = [MEMORY[0x277CBEAA8] date];
  v9 = [v4 initWithStartDate:0.0 duration:?];
  v8 = [v5 workoutEventWithType:4 dateInterval:? metadata:?];
  v20[0] = v8;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
  [(NLSessionActivity *)v6 addWorkoutEvents:?];
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_notifyDataObserversUpdatedMetricType:(unint64_t)a3
{
  v12 = self;
  v11 = a2;
  v10 = a3;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __59__NLSessionActivity__notifyDataObserversUpdatedMetricType___block_invoke;
  v8 = &unk_277D88D68;
  v9[0] = MEMORY[0x277D82BE0](self);
  v9[1] = v10;
  [(NLSessionActivity *)self _notifyDataObserversWithBlock:?];
  objc_storeStrong(v9, 0);
}

void __59__NLSessionActivity__notifyDataObserversUpdatedMetricType___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = location[0];
  v5 = [*(a1 + 32) dataProvider];
  v2 = *(a1 + 40);
  [v4 dataProvider:? didUpdate:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

- (void)_notifyDataObserversUpdatedMetricTypes:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
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
      -[NLSessionActivity _notifyDataObserversUpdatedMetricType:](v12, "_notifyDataObserversUpdatedMetricType:", [v10 integerValue]);
      ++v5;
      if (v3 + 1 >= v6)
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

- (void)_notifyDataObserversWithBlock:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  memset(__b, 0, sizeof(__b));
  obj = [(NSHashTable *)v12->_dataObservers allObjects];
  v8 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v13 count:16];
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
      (*(location[0] + 2))(location[0], v10);
      ++v5;
      if (v3 + 1 >= v6)
      {
        v5 = 0;
        v6 = [(NSArray *)obj countByEnumeratingWithState:__b objects:v13 count:16];
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

- (void)energyBurnAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279D18];
  }

  objc_storeStrong(location, 0);
}

- (void)elevationAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricType:10];
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricType:17];
  }

  objc_storeStrong(location, 0);
}

- (void)flightsClimbedAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricType:13];
  }

  objc_storeStrong(location, 0);
}

- (void)distanceProviderDidUpdate:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v5->_state != 7)
  {
    [(NLSessionActivity *)v5 _notifyDataObserversUpdatedMetricType:1];
    v3 = [(WORaceCoordinator *)v5->_raceCoordinator raceLocationProvider];
    [location[0] distance];
    [(WORaceLocationProvider *)v3 updateWithDistance:?];
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(location, 0);
}

- (void)elapsedTimeAccumulatorDidUpdate:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NLSessionActivity *)v9 activityDuration];
  v7 = v3;
  if (v9->_state == 6 || v9->_state == 1)
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v11, v7);
      _os_log_impl(&dword_20AEA4000, oslog, type, "[ElapsedTimeDebugging] Received elapsed time update with duration:%f", v11, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [(NLSessionActivity *)v9 _notifyDataObserversUpdatedMetricType:3];
    if ([(WOCoreLiveWorkoutConfiguration *)v9->_configuration isUltraMode])
    {
      _HKInitializeLogging();
      v4 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_0_1_8_0(v10, v7);
        _os_log_impl(&dword_20AEA4000, v4, OS_LOG_TYPE_DEFAULT, "[UltraModeDebugging] SKIP elapsed time update for average and rolling pace in UltraMode from elapsedTimeAccumulator with activityDuration: %f", v10, 0xCu);
      }

      objc_storeStrong(&v4, 0);
    }

    else
    {
      [(NLSessionActivityNonMachinePaceAccumulator *)v9->_nonMachinePaceAccumulator updateAveragePaceWithElapsedTime:*&v7];
      [(NLSessionActivityRollingPaceAccumulator *)v9->_rollingPaceAccumulator updateRollingPaceWithElapsedTime:*&v7];
    }

    [(NLGhostPacerAccumulator *)v9->_ghostPacerAccumulator updateWithElapsedTime:*&v7];
    [(WORaceCoordinator *)v9->_raceCoordinator updateWithElapsedTime:*&v7];
    [(NLSessionActivityBuilderAccumulator *)v9->_heartRateZonesAccumulator update];
    [(NLSessionActivityBuilderAccumulator *)v9->_powerZonesAccumulator update];
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)heartRateAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279D30];
  }

  objc_storeStrong(location, 0);
}

- (void)powerAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279D48];
  }

  objc_storeStrong(location, 0);
}

- (void)heartRateZonesAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279D60];
  }

  objc_storeStrong(location, 0);
}

- (void)powerZonesAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279D78];
  }

  objc_storeStrong(location, 0);
}

- (void)heartRatePrecisionStartAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state == 1)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279D90];
  }

  objc_storeStrong(location, 0);
}

- (void)paceProviderDidUpdate:(id)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v12->_state != 7)
  {
    [(NLSessionActivity *)v12 _notifyDataObserversUpdatedMetricTypes:&unk_282279DA8];
    [location[0] fastestPaceInMetersPerSecond];
    v10 = v3;
    v9 = v3;
    [(NLSessionActivity *)v12 currentFastestPace];
    if (v9 != v4)
    {
      [(NLSessionActivity *)v12 setCurrentFastestPace:v10];
      v6 = v12;
      v13 = @"_HKPrivateMetadataKeyFastestPace";
      v5 = MEMORY[0x277CCABB0];
      [(NLSessionActivity *)v12 currentFastestPace];
      v8 = [v5 numberWithDouble:?];
      v14[0] = v8;
      v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:&v13 count:1];
      [NLSessionActivity insertOrUpdateMetadata:v6 forceTopLevel:"insertOrUpdateMetadata:forceTopLevel:"];
      MEMORY[0x277D82BD8](v7);
      MEMORY[0x277D82BD8](v8);
    }
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)ghostPacerAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279DC0];
  }

  objc_storeStrong(location, 0);
}

- (void)pacerDistanceGoalProgressAccumulatorDidUpdate:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v11->_state != 7)
  {
    v3 = v11;
    v4 = MEMORY[0x277D85DD0];
    v5 = -1073741824;
    v6 = 0;
    v7 = __67__NLSessionActivity_pacerDistanceGoalProgressAccumulatorDidUpdate___block_invoke;
    v8 = &unk_277D88C10;
    v9 = MEMORY[0x277D82BE0](location[0]);
    [(NLSessionActivity *)v3 _notifyDataObserversWithBlock:&v4];
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(location, 0);
}

void __67__NLSessionActivity_pacerDistanceGoalProgressAccumulatorDidUpdate___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_respondsToSelector())
  {
    v2 = location[0];
    v3 = [a1[4] goalCompletionTimeNumber];
    [v3 doubleValue];
    [v2 pacerDistanceGoalCompleteIn:?];
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(location, 0);
}

- (void)rollingPaceAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279DD8];
  }

  objc_storeStrong(location, 0);
}

- (void)swimmingAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279DF0];
  }

  objc_storeStrong(location, 0);
}

- (void)downhillSnowSportsAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279E08];
  }

  objc_storeStrong(location, 0);
}

- (void)pedometerCadenceAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279E20];
  }

  objc_storeStrong(location, 0);
}

- (void)cyclingCadenceAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279E38];
  }

  objc_storeStrong(location, 0);
}

- (void)waterTemperatureAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279E50];
  }

  objc_storeStrong(location, 0);
}

- (void)intervalCadenceAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279E68];
  }

  objc_storeStrong(location, 0);
}

- (void)racePositionProviderDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279E80];
  }

  objc_storeStrong(location, 0);
}

- (void)locationPositionAccumulator:(id)a3 didUpdateLocations:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  if (v15->_state != 7)
  {
    v4 = v15;
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __68__NLSessionActivity_locationPositionAccumulator_didUpdateLocations___block_invoke;
    v10 = &unk_277D88B48;
    v11 = MEMORY[0x277D82BE0](v15);
    v12 = MEMORY[0x277D82BE0](v13);
    [(NLSessionActivity *)v4 _notifyDataObserversWithBlock:&v6];
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __68__NLSessionActivity_locationPositionAccumulator_didUpdateLocations___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_respondsToSelector())
  {
    v3 = location[0];
    v4 = [*(a1 + 32) dataProvider];
    v2 = *(a1 + 40);
    [v3 dataProvider:? didUpdateLocations:?];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)locationPositionAccumulator:(id)a3 didUpdateRoutePosition:(id)a4
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  if (v15->_state != 7)
  {
    v4 = v15;
    v6 = MEMORY[0x277D85DD0];
    v7 = -1073741824;
    v8 = 0;
    v9 = __72__NLSessionActivity_locationPositionAccumulator_didUpdateRoutePosition___block_invoke;
    v10 = &unk_277D88B48;
    v11 = MEMORY[0x277D82BE0](v15);
    v12 = MEMORY[0x277D82BE0](v13);
    [(NLSessionActivity *)v4 _notifyDataObserversWithBlock:&v6];
    objc_storeStrong(&v12, 0);
    objc_storeStrong(&v11, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
}

void __72__NLSessionActivity_locationPositionAccumulator_didUpdateRoutePosition___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  if (objc_opt_respondsToSelector())
  {
    v3 = location[0];
    v4 = [*(a1 + 32) dataProvider];
    v2 = *(a1 + 40);
    [v3 dataProvider:? didUpdateRoutePosition:?];
    MEMORY[0x277D82BD8](v4);
  }

  objc_storeStrong(location, 0);
}

- (void)segmentDistanceAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279E98];
  }

  objc_storeStrong(location, 0);
}

- (void)segmentEnergyAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279EB0];
  }

  objc_storeStrong(location, 0);
}

- (void)segmentElapsedTimeAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279EC8];
  }

  objc_storeStrong(location, 0);
}

- (void)segmentPaceAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279EE0];
  }

  objc_storeStrong(location, 0);
}

- (void)segmentAveragePowerAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279EF8];
  }

  objc_storeStrong(location, 0);
}

- (void)strideLengthAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279F10];
  }

  objc_storeStrong(location, 0);
}

- (void)verticalOscillationAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279F28];
  }

  objc_storeStrong(location, 0);
}

- (void)groundContactTimeAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279F40];
  }

  objc_storeStrong(location, 0);
}

- (void)splitDistanceAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279F58];
  }

  objc_storeStrong(location, 0);
}

- (void)splitElapsedTimeAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279F70];
  }

  objc_storeStrong(location, 0);
}

- (void)splitPaceAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279F88];
  }

  objc_storeStrong(location, 0);
}

- (void)splitAveragePowerAccumulatorDidUpdate:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (v4->_state != 7)
  {
    [(NLSessionActivity *)v4 _notifyDataObserversUpdatedMetricTypes:&unk_282279FA0];
  }

  objc_storeStrong(location, 0);
}

- (void)_updateSplitsWithStatistics:(id)a3 duration:(double)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = a4;
  v12 = [(NLSessionActivity *)v18 paceProvider];
  v13 = [(NLSessionActivityPaceProvider *)v12 isPaceAvailable];
  MEMORY[0x277D82BD8](v12);
  if (v13)
  {
    memset(__b, 0, sizeof(__b));
    obj = MEMORY[0x277D82BE0](v18->_splitsAccumulators);
    v10 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
    if (v10)
    {
      v6 = *__b[2];
      v7 = 0;
      v8 = v10;
      while (1)
      {
        v5 = v7;
        if (*__b[2] != v6)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(__b[1] + 8 * v7);
        [v15 updateWithStatistics:location[0] elapsedTime:{v16, v8}];
        ++v7;
        v8 = v4;
        if (v5 + 1 >= v4)
        {
          v7 = 0;
          v8 = [obj countByEnumeratingWithState:__b objects:v19 count:16];
          if (!v8)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](obj);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)paceAccumulator:(id)a3 didUpdateIsGPSAvailable:(BOOL)a4
{
  v19[1] = *MEMORY[0x277D85DE8];
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = a4;
  if (!a4)
  {
    v17->_lostGPSAtSomePoint = 1;
    v5 = v17;
    v18 = *MEMORY[0x277D0A878];
    v19[0] = MEMORY[0x277CBEC38];
    v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [NLSessionActivity insertOrUpdateMetadata:v5 forceTopLevel:"insertOrUpdateMetadata:forceTopLevel:"];
    MEMORY[0x277D82BD8](v6);
  }

  v4 = v17;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __61__NLSessionActivity_paceAccumulator_didUpdateIsGPSAvailable___block_invoke;
  v12 = &unk_277D88D90;
  v13 = MEMORY[0x277D82BE0](v17);
  v14 = v15;
  [(NLSessionActivity *)v4 _notifyDataObserversWithBlock:&v8];
  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __61__NLSessionActivity_paceAccumulator_didUpdateIsGPSAvailable___block_invoke(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = location[0];
  v5 = [*(a1 + 32) dataProvider];
  v2 = *(a1 + 40);
  [v4 dataProvider:? didUpdateIsGPSAvailable:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

- (void)paceAccumulator:(id)a3 didUpdateCurrentPaceInMetersPerSecond:(double)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)heartRateProviderDidBecomeStale:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v4 = MEMORY[0x277D85DD0];
  v5 = -1073741824;
  v6 = 0;
  v7 = __53__NLSessionActivity_heartRateProviderDidBecomeStale___block_invoke;
  v8 = &unk_277D88C10;
  v9 = MEMORY[0x277D82BE0](v11);
  [(NLSessionActivity *)v3 _notifyDataObserversWithBlock:?];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

void __53__NLSessionActivity_heartRateProviderDidBecomeStale___block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = location[0];
  v4 = [a1[4] dataProvider];
  [v3 activityHeartRateDidBecomeStale:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (void)_updateElapsedTime:(double)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __40__NLSessionActivity__updateElapsedTime___block_invoke;
  v10 = &unk_277D88DB8;
  v11[0] = MEMORY[0x277D82BE0](v14);
  v11[1] = *&v12;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v11, 0);
}

uint64_t __40__NLSessionActivity__updateElapsedTime___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) elapsedTimeAccumulator];
  [v3 setElapsedTime:*(a1 + 40)];
  return MEMORY[0x277D82BD8](v3);
}

- (void)_updateElevationGain:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __42__NLSessionActivity__updateElevationGain___block_invoke;
  v10 = &unk_277D88998;
  v11 = MEMORY[0x277D82BE0](v14);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateElevation:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __38__NLSessionActivity__updateElevation___block_invoke;
  v10 = &unk_277D88998;
  v11 = MEMORY[0x277D82BE0](v14);
  v12 = MEMORY[0x277D82BE0](location[0]);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

uint64_t __38__NLSessionActivity__updateElevation___block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + 408) processSample:*(a1 + 40)];
  v3 = [*(a1 + 40) value];
  [*(*(a1 + 32) + 408) setCurrentAltitude:?];
  return MEMORY[0x277D82BD8](v3);
}

- (void)_updateInstantaneousPower:(double)a3 sampleDate:(id)a4
{
  v17 = self;
  v16 = a2;
  v15 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  v5 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v5;
  v7 = MEMORY[0x277D85DD0];
  v8 = -1073741824;
  v9 = 0;
  v10 = __58__NLSessionActivity__updateInstantaneousPower_sampleDate___block_invoke;
  v11 = &unk_277D88DE0;
  v12 = MEMORY[0x277D82BE0](v17);
  v13[1] = *&v15;
  v13[0] = MEMORY[0x277D82BE0](location);
  dispatch_async(queue, &v7);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v13, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&location, 0);
}

- (void)_updateAveragePower:(double)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __41__NLSessionActivity__updateAveragePower___block_invoke;
  v10 = &unk_277D88DB8;
  v11[0] = MEMORY[0x277D82BE0](v14);
  v11[1] = *&v12;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v11, 0);
}

- (void)_updateInstantaneousPace:(double)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __46__NLSessionActivity__updateInstantaneousPace___block_invoke;
  v10 = &unk_277D88DB8;
  v11[0] = MEMORY[0x277D82BE0](v14);
  v11[1] = *&v12;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v11, 0);
}

uint64_t __46__NLSessionActivity__updateInstantaneousPace___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) paceAccumulator];
  [v3 setCurrentPaceInMetersPerSecond:v2];
  return MEMORY[0x277D82BD8](v3);
}

- (void)_updateAveragePace:(double)a3
{
  v14 = self;
  v13 = a2;
  v12 = a3;
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __40__NLSessionActivity__updateAveragePace___block_invoke;
  v10 = &unk_277D88DB8;
  v11[0] = MEMORY[0x277D82BE0](v14);
  v11[1] = *&v12;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v11, 0);
}

- (void)_updateTotalDistanceWithStatistics:(id)a3 duration:(double)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = a4;
  v16 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  v17 = v16;
  dispatch_assert_queue_V2(v17);
  MEMORY[0x277D82BD8](v17);
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    _HKInitializeLogging();
    v21 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v20 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [location[0] quantityType];
      v13 = [location[0] sumQuantity];
      v12 = [MEMORY[0x277CCDAB0] meterUnit];
      [v13 doubleValueForUnit:?];
      __os_log_helper_16_2_2_8_64_8_0(v25, v14, v5);
      _os_log_impl(&dword_20AEA4000, v21, v20, "Received a sample based distance of %@ to %f", v25, 0x16u);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      MEMORY[0x277D82BD8](v14);
    }

    objc_storeStrong(&v21, 0);
  }

  v19 = MEMORY[0x277D82BE0](location[0]);
  v18 = v22;
  v11 = [(NLSessionActivity *)v24 demoDataProvider];
  MEMORY[0x277D82BD8](v11);
  if (v11)
  {
    v10 = [(NLSessionActivity *)v24 demoDataProvider];
    v6 = [(NLWorkoutDemoDataProvider *)v10 demoAdjustedStatisticsForStatistics:location[0]];
    v7 = v19;
    v19 = v6;
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v10);
    [(NLSessionActivity *)v24 activityDuration];
    v18 = v8;
  }

  [(NLSessionActivityDistanceAccumulator *)v24->_distanceAccumulator updateDistanceWithStatistics:v19, &v19];
  [(NLSessionActivityNonMachinePaceAccumulator *)v24->_nonMachinePaceAccumulator updateAveragePaceWithStatistics:v19 duration:v18];
  [(NLGhostPacerAccumulator *)v24->_ghostPacerAccumulator updatePacerWithStatistics:v19 duration:v18];
  [(NLPacerDistanceGoalProgressAccumulator *)v24->_pacerDistanceGoalProgressAccumulator updateProgressWithStatistics:v19 elapsedTime:v18];
  [(NLSessionActivity *)v24 _updateSplitsWithStatistics:v19 duration:v18];
  objc_storeStrong(v9, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_updateMachineDistance:(double)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v16 = self;
  v15 = a2;
  v14 = *&a3;
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    _HKInitializeLogging();
    location = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v12 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(location, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v17, v14);
      _os_log_impl(&dword_20AEA4000, location, v12, "Updated distance machine to %f", v17, 0xCu);
    }

    objc_storeStrong(&location, 0);
  }

  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __44__NLSessionActivity__updateMachineDistance___block_invoke;
  v10 = &unk_277D88DB8;
  v11[0] = MEMORY[0x277D82BE0](v16);
  v11[1] = v14;
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(v11, 0);
  *MEMORY[0x277D85DE8];
}

void __44__NLSessionActivity__updateMachineDistance___block_invoke(uint64_t a1)
{
  v7[2] = a1;
  v7[1] = a1;
  [*(*(a1 + 32) + 128) identifier];
  v7[0] = _HKWorkoutDistanceTypeForActivityType();
  v2 = [*(a1 + 32) builder];
  v6 = [v2 statisticsForType:v7[0]];
  MEMORY[0x277D82BD8](v2);
  v5 = [v6 endDate];
  [*(*(a1 + 32) + 88) elapsedTimeAtDate:v5];
  v4 = v1;
  [*(*(a1 + 32) + 400) updateDistance:v5 distanceEndDate:*(a1 + 40)];
  [*(a1 + 32) _updateSplitsWithStatistics:v6 duration:v4];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(v7, 0);
}

- (void)_updateEnergyBurned:(id)a3 statistics:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v11 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  v12 = v11;
  dispatch_assert_queue_V2(v12);
  MEMORY[0x277D82BD8](v12);
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    v8 = [v15 sumQuantity];
    v7 = [MEMORY[0x277CCDAB0] kilocalorieUnit];
    [v8 doubleValueForUnit:?];
    v9 = v5;
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    v14 = v9;
    _HKInitializeLogging();
    v13 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_2_8_64_8_0(v18, location[0], v14);
      _os_log_impl(&dword_20AEA4000, v13, OS_LOG_TYPE_DEFAULT, "Updated %@ calories to %f", v18, 0x16u);
    }

    objc_storeStrong(&v13, 0);
  }

  v6 = [(NLSessionActivity *)v17 energyBurnAccumulator];
  [(NLSessionActivityEnergyBurnAccumulator *)v6 updateCaloriesWithStatistics:v15];
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_updateStepCountWithStatistics:(id)a3 duration:(double)a4 quantityType:(id)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = a4;
  v7 = 0;
  objc_storeStrong(&v7, a5);
  [(NLSessionActivityPedometerCadenceAccumulator *)v10->_pedometerCadenceAccumulator updateWithStatistics:location[0] duration:v8];
  [(NLSessionActivity *)v10 _updateIntervalCadenceWithQuantityType:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateHeartRateWithStatistics:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (!v11->_didCollectFirstHeartRateSample)
  {
    _HKInitializeLogging();
    v9 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v8 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      log = v9;
      type = v8;
      __os_log_helper_16_0_0(v7);
      _os_log_impl(&dword_20AEA4000, log, type, "[SessionActivity] updateHeartRateWithStatistics didCollectFirstHKHeartRateSample", v7, 2u);
    }

    objc_storeStrong(&v9, 0);
    v4 = +[WOCoreWorkoutSignposter shared];
    [(WOCoreWorkoutSignposter *)v4 emitWithSignpost:7];
    MEMORY[0x277D82BD8](v4);
    v11->_didCollectFirstHeartRateSample = 1;
  }

  [(NLSessionActivityHeartRateAccumulator *)v11->_heartRateAccumulator updateWithStatistics:location[0], location];
  objc_storeStrong(v3, 0);
}

- (void)_updateFlightsClimbedWithStatistics:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    v6 = [location[0] sumQuantity];
    v5 = [MEMORY[0x277CCDAB0] countUnit];
    [v6 doubleValueForUnit:?];
    v7 = v3;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    v9 = v7;
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_8_0(v12, v9);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "Updated flights climbed to %f", v12, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  [(NLSessionActivityFlightsClimbedAccumulator *)v11->_flightsClimbedAccumulator updateWithStatistics:location[0], location];
  objc_storeStrong(v4, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_updateRunningPowerWithStatistics:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = [location[0] averageQuantity];
  MEMORY[0x277D82BD8](v13);
  if (v13)
  {
    v10 = v15;
    v12 = [location[0] averageQuantity];
    v11 = [MEMORY[0x277CCDAB0] wattUnit];
    [v12 doubleValueForUnit:?];
    [(NLSessionActivity *)v10 _updateAveragePower:?];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
  }

  v9 = [location[0] mostRecentQuantity];
  MEMORY[0x277D82BD8](v9);
  if (v9)
  {
    v5 = v15;
    v8 = [location[0] mostRecentQuantity];
    v7 = [MEMORY[0x277CCDAB0] wattUnit];
    [v8 doubleValueForUnit:?];
    v4 = v3;
    v6 = [location[0] endDate];
    [(NLSessionActivity *)v5 _updateInstantaneousPower:v4 sampleDate:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(location, 0);
}

- (void)_updateCyclingPowerWithStatistics:(id)a3
{
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = [location[0] averageQuantity];
  MEMORY[0x277D82BD8](v13);
  if (v13)
  {
    v10 = v15;
    v12 = [location[0] averageQuantity];
    v11 = [MEMORY[0x277CCDAB0] wattUnit];
    [v12 doubleValueForUnit:?];
    [(NLSessionActivity *)v10 _updateAveragePower:?];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
  }

  v9 = [location[0] mostRecentQuantity];
  MEMORY[0x277D82BD8](v9);
  if (v9)
  {
    v5 = v15;
    v8 = [location[0] mostRecentQuantity];
    v7 = [MEMORY[0x277CCDAB0] wattUnit];
    [v8 doubleValueForUnit:?];
    v4 = v3;
    v6 = [location[0] endDate];
    [(NLSessionActivity *)v5 _updateInstantaneousPower:v4 sampleDate:?];
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(location, 0);
}

- (void)_updateCyclingCadenceWithStatistics:(id)a3 duration:(double)a4 quantityType:(id)a5
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = a4;
  v7 = 0;
  objc_storeStrong(&v7, a5);
  [(NLSessionActivityCyclingCadenceAccumulator *)v10->_cyclingCadenceAccumulator updateWithStatistics:location[0] duration:v8];
  [(NLSessionActivity *)v10 _updateIntervalCadenceWithQuantityType:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateWaterTemperatureWithStatistics:(id)a3 duration:(double)a4 quantityType:(id)a5
{
  v19[1] = *MEMORY[0x277D85DE8];
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = a4;
  v13 = 0;
  objc_storeStrong(&v13, a5);
  [(NLSessionActivityWaterTemperatureAccumulator *)v16->_waterTemperatureAccumulator updateWithStatistics:location[0] duration:v14];
  v11 = [(NLSessionActivityWaterTemperatureAccumulator *)v16->_waterTemperatureAccumulator averageWaterTemperature];
  MEMORY[0x277D82BD8](v11);
  if (v11)
  {
    v6 = v16;
    v18 = *MEMORY[0x277D0A780];
    v8 = [(NLSessionActivityWaterTemperatureAccumulator *)v16->_waterTemperatureAccumulator averageWaterTemperature];
    v19[0] = v8;
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    [NLSessionActivity insertOrUpdateMetadata:v6 forceTopLevel:"insertOrUpdateMetadata:forceTopLevel:"];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    _HKInitializeLogging();
    v12 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(NLSessionActivityWaterTemperatureAccumulator *)v16->_waterTemperatureAccumulator averageWaterTemperature];
      __os_log_helper_16_2_1_8_64(v17, v5);
      _os_log_impl(&dword_20AEA4000, v12, OS_LOG_TYPE_DEFAULT, "[SessionActivity] Updated AverageWaterTemperature metadata to %@", v17, 0xCu);
      MEMORY[0x277D82BD8](v5);
    }

    objc_storeStrong(&v12, 0);
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_updateIntervalCadenceWithQuantityType:(id)a3
{
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = [(NLSessionActivity *)v19 currentIntervalWorkoutActivity];
  if (v17)
  {
    v16 = [v17 statisticsForType:location[0]];
    v15 = [v16 endDate];
    v10 = [v16 startDate];
    v11 = [v10 compare:v15];
    MEMORY[0x277D82BD8](v10);
    if (v11 == 1)
    {
      _HKInitializeLogging();
      v14 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v13 = 16;
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        log = v14;
        type = v13;
        __os_log_helper_16_0_0(v12);
        _os_log_error_impl(&dword_20AEA4000, log, type, "Received a statistics sample that moves backwards in time!", v12, 2u);
      }

      objc_storeStrong(&v14, 0);
    }

    else
    {
      v4 = objc_opt_class();
      v6 = [v17 startDate];
      v5 = [(HKLiveWorkoutBuilder *)v19->_builder workoutEvents];
      [v4 durationBetweenStartDate:v6 endDate:v15 workoutEvents:?];
      v7 = v3;
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      [(NLSessionActivityIntervalCadenceAccumulator *)v19->_intervalCadenceAccumulator updateWithStatistics:v16 duration:v7];
    }

    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v16, 0);
  }

  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

- (void)_updateCurrentSpeedWithStatistics:(id)a3 duration:(double)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v26 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v24 = a4;
  v18 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  v19 = v18;
  dispatch_assert_queue_V2(v19);
  MEMORY[0x277D82BD8](v19);
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    _HKInitializeLogging();
    v23 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v22 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [location[0] quantityType];
      v15 = [location[0] mostRecentQuantity];
      v14 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
      [v15 doubleValueForUnit:?];
      __os_log_helper_16_2_2_8_64_8_0(v29, v16, v5);
      _os_log_impl(&dword_20AEA4000, v23, v22, "[Speed] Received a sample based speed of %@ to %f meters/second", v29, 0x16u);
      MEMORY[0x277D82BD8](v14);
      MEMORY[0x277D82BD8](v15);
      MEMORY[0x277D82BD8](v16);
    }

    objc_storeStrong(&v23, 0);
  }

  [(NLSessionActivityNonMachinePaceAccumulator *)v26->_nonMachinePaceAccumulator updateCurrentSpeedWithStatistics:location[0] duration:v24];
  v12 = [location[0] quantityType];
  v11 = [MEMORY[0x277CCD720] quantityTypeForIdentifier:*MEMORY[0x277CCC9C8]];
  v13 = [v12 isEqual:?];
  MEMORY[0x277D82BD8](v11);
  MEMORY[0x277D82BD8](v12);
  if (v13)
  {
    [(NLSessionActivityNonMachinePaceAccumulator *)v26->_nonMachinePaceAccumulator averagePaceInMetersPerSecond];
    v21 = v6;
    if (v6 > 2.22044605e-16)
    {
      v7 = MEMORY[0x277CCD7E8];
      v8 = [MEMORY[0x277CCDAB0] unitFromString:@"m/s"];
      v20 = [v7 quantityWithUnit:v21 doubleValue:?];
      MEMORY[0x277D82BD8](v8);
      v9 = v26;
      v27 = *MEMORY[0x277CCE170];
      v28 = v20;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      [NLSessionActivity insertOrUpdateMetadata:v9 forceTopLevel:"insertOrUpdateMetadata:forceTopLevel:"];
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v20, 0);
    }
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_updateStrideLengthWithStatistics:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NLStrideLengthAccumulator *)v4->_strideLengthAccumulator updateWithStatistics:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_updateVerticalOscillationWithStatistics:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NLVerticalOscillationAccumulator *)v4->_verticalOscillationAccumulator updateWithStatistics:location[0]];
  objc_storeStrong(location, 0);
}

- (void)_updateGroundContactTimeWithStatistics:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NLGroundContactTimeAccumulator *)v4->_groundContactTimeAccumulator updateWithStatistics:location[0]];
  objc_storeStrong(location, 0);
}

- (void)didUpdateMinimumAltitude:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)didUpdateMaximumAltitude:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)endCurrentSegment
{
  v9 = self;
  v8[1] = a2;
  v2 = [(NLSessionActivity *)self segmentAccumulator];
  [(NLSessionActivity *)v9 duration];
  [(WOSegmentAccumulator *)v2 endCurrentSegmentWithCurrentElapsedTime:?];
  MEMORY[0x277D82BD8](v2);
  v4 = [(NLSessionActivity *)v9 segmentAccumulator];
  v3 = [(WOSegmentAccumulator *)v4 completedSegments];
  v8[0] = [(NSArray *)v3 lastObject];
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);
  v5 = v9;
  v7 = [v8[0] segmentEndDate];
  v6 = [v8[0] metadataFromSegmentMarker];
  [(NLSessionActivity *)v5 registerMarkerEventWithDate:v7 metadata:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(v8, 0);
}

- (void)_segmentMarkerEventReceived:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __49__NLSessionActivity__segmentMarkerEventReceived___block_invoke;
  v10 = &unk_277D88998;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __49__NLSessionActivity__segmentMarkerEventReceived___block_invoke(uint64_t a1)
{
  v12[2] = a1;
  v12[1] = a1;
  v3 = [*(a1 + 32) metadata];
  v2 = [*(a1 + 32) dateInterval];
  v1 = [v2 endDate];
  v12[0] = [NLSessionActivitySegmentMarker markerFromMetadata:v3 segmentEndDate:?];
  MEMORY[0x277D82BD8](v1);
  MEMORY[0x277D82BD8](v2);
  MEMORY[0x277D82BD8](v3);
  v5 = *(a1 + 40);
  v6 = MEMORY[0x277D85DD0];
  v7 = 3221225472;
  v8 = __49__NLSessionActivity__segmentMarkerEventReceived___block_invoke_2;
  v9 = &unk_277D88B48;
  v10 = MEMORY[0x277D82BE0](*(a1 + 40));
  v11 = MEMORY[0x277D82BE0](v12[0]);
  [v5 _notifyDataObserversWithBlock:?];
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v10, 0);
  objc_storeStrong(v12, 0);
}

void __49__NLSessionActivity__segmentMarkerEventReceived___block_invoke_2(uint64_t a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v4 = location[0];
  v5 = [*(a1 + 32) dataProvider];
  v2 = *(a1 + 40);
  [v4 dataProvider:? didReceiveSegmentMarker:?];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(location, 0);
}

- (void)weatherDidUpdate:(id)a3
{
  v20 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v18 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:4];
  v15 = [location[0] currentTemperature];
  v3 = *MEMORY[0x277CCC560];
  [v18 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v15);
  v16 = [location[0] currentHumidity];
  v4 = *MEMORY[0x277CCC558];
  [v18 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v16);
  v17 = [location[0] currentAirQualityIndex];
  MEMORY[0x277D82BD8](v17);
  if (v17)
  {
    v14 = [location[0] currentAirQualityIndex];
    v5 = *MEMORY[0x277D0A778];
    [v18 setObject:? forKey:?];
    MEMORY[0x277D82BD8](v14);
  }

  v11 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(location[0], "hkPrivateWeatherCondition")}];
  v6 = *MEMORY[0x277CCE150];
  [v18 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v11);
  v12 = [MEMORY[0x277CCABB0] numberWithBool:{objc_msgSend(location[0], "isDaytime")}];
  v7 = *MEMORY[0x277CCE178];
  [v18 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v12);
  v13 = [location[0] sourceName];
  MEMORY[0x277D82BD8](v13);
  if (v13)
  {
    v10 = [location[0] sourceName];
    v8 = *MEMORY[0x277CCE1B8];
    [v18 setObject:? forKey:?];
    MEMORY[0x277D82BD8](v10);
  }

  [(NLSessionActivity *)v20 insertOrUpdateMetadata:v18 forceTopLevel:0, &v18];
  objc_storeStrong(v9, 0);
  objc_storeStrong(location, 0);
}

- (void)locationDidUpdate:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v14 = [MEMORY[0x277CBEB38] dictionary];
  v7 = [location[0] location];
  [v7 coordinate];
  v12 = v3;
  v13 = v4;
  MEMORY[0x277D82BD8](v7);
  v8 = v14;
  v9 = [MEMORY[0x277CCABB0] numberWithDouble:v12];
  v5 = *MEMORY[0x277CCE1A8];
  [v8 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v9);
  v10 = v14;
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v13];
  v6 = *MEMORY[0x277CCE1B0];
  [v10 setObject:? forKey:?];
  MEMORY[0x277D82BD8](v11);
  [(NLSessionActivity *)v16 insertOrUpdateMetadata:v14 forceTopLevel:0];
  objc_storeStrong(&v14, 0);
  objc_storeStrong(location, 0);
}

- (void)insertLocations:(id)a3 completion:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  builder = v10->_builder;
  v6 = [MEMORY[0x277CCD920] workoutRouteType];
  v7 = [(HKLiveWorkoutBuilder *)builder seriesBuilderForType:?];
  MEMORY[0x277D82BD8](v6);
  [v7 insertRouteData:location[0] completion:v8];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)setLocationTypeToIndoor:(BOOL)a3
{
  v13 = self;
  v12 = a2;
  v11 = a3;
  if (!a3 || ([(FIUIWorkoutActivityType *)v13->_activityType isIndoor]& 1) != 0)
  {
    if (!v11 && ([(FIUIWorkoutActivityType *)v13->_activityType isIndoor]& 1) != 0)
    {
      v4 = objc_alloc(MEMORY[0x277D0A810]);
      v3 = [(FIUIWorkoutActivityType *)v13->_activityType identifier];
      v5 = [(FIUIWorkoutActivityType *)v13->_activityType metadata];
      v9 = [v4 initWithActivityTypeIdentifier:v3 isIndoor:0 metadata:v5 auxiliaryTypeIdentifier:{-[FIUIWorkoutActivityType auxiliaryTypeIdentifier](v13->_activityType, "auxiliaryTypeIdentifier")}];
      MEMORY[0x277D82BD8](v5);
      objc_storeStrong(&v13->_activityType, v9);
      objc_storeStrong(&v9, 0);
    }
  }

  else
  {
    v7 = objc_alloc(MEMORY[0x277D0A810]);
    v6 = [(FIUIWorkoutActivityType *)v13->_activityType identifier];
    v8 = [(FIUIWorkoutActivityType *)v13->_activityType metadata];
    v10 = [v7 initWithActivityTypeIdentifier:v6 isIndoor:1 metadata:v8 auxiliaryTypeIdentifier:{-[FIUIWorkoutActivityType auxiliaryTypeIdentifier](v13->_activityType, "auxiliaryTypeIdentifier")}];
    MEMORY[0x277D82BD8](v8);
    objc_storeStrong(&v13->_activityType, v10);
    objc_storeStrong(&v10, 0);
  }
}

- (void)setSeymourElapsedTimeAccumulator:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v4->_seymourElapsedTimeAccumulator, location[0]);
  objc_storeStrong(location, 0);
}

+ (id)_localizedTimeOfDayFormatStringWithDate:(id)a3
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v20 = [MEMORY[0x277CBEA80] currentCalendar];
  v19 = [v20 components:32 fromDate:location[0]];
  v18 = [v19 hour];
  v17 = 0;
  if (v18 >= 11)
  {
    if (v18 >= 13)
    {
      if (v18 < 17)
      {
        v14 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v7 = [v14 localizedStringForKey:@"ACTIVITY_TIME_OF_DAY_AFTERNOON_OBJ" value:&stru_28225A4E8 table:@"Localizable"];
        v8 = v17;
        v17 = v7;
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](v14);
      }

      else
      {
        v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
        v9 = [v13 localizedStringForKey:@"ACTIVITY_TIME_OF_DAY_EVENING_OBJ" value:&stru_28225A4E8 table:@"Localizable"];
        v10 = v17;
        v17 = v9;
        MEMORY[0x277D82BD8](v10);
        MEMORY[0x277D82BD8](v13);
      }
    }

    else
    {
      v15 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v5 = [v15 localizedStringForKey:@"ACTIVITY_TIME_OF_DAY_LUNCH_OBJ" value:&stru_28225A4E8 table:@"Localizable"];
      v6 = v17;
      v17 = v5;
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v15);
    }
  }

  else
  {
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v3 = [v16 localizedStringForKey:@"ACTIVITY_TIME_OF_DAY_MORNING_OBJ" value:&stru_28225A4E8 table:@"Localizable"];
    v4 = v17;
    v17 = v3;
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v16);
  }

  v12 = MEMORY[0x277D82BE0](v17);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(location, 0);

  return v12;
}

- (id)_stateDescription
{
  v6[2] = self;
  v6[1] = a2;
  v3 = MEMORY[0x277CCACA8];
  v4 = NLSessionActivityStateDescription(self->_state);
  v6[0] = [v3 stringWithFormat:@"activityState: %@; workoutState: XX", v4];
  MEMORY[0x277D82BD8](v4);
  v5 = MEMORY[0x277D82BE0](v6[0]);
  objc_storeStrong(v6, 0);

  return v5;
}

- (void)_logStatistics
{
  v19 = *MEMORY[0x277D85DE8];
  v17[2] = self;
  v17[1] = a2;
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    v17[0] = [MEMORY[0x277CBEB38] dictionary];
    if ([v17[0] count])
    {
      v16 = objc_alloc_init(MEMORY[0x277CCA968]);
      [v16 setDateFormat:@"yyyy-MM-dd-A"];
      v2 = NSHomeDirectory();
      v15 = [(NSString *)v2 stringByAppendingPathComponent:@"Library/Logs/Health"];
      MEMORY[0x277D82BD8](v2);
      v3 = MEMORY[0x277CCACA8];
      v7 = [MEMORY[0x277D75418] currentDevice];
      v6 = [v7 name];
      v5 = [MEMORY[0x277CBEAA8] date];
      v4 = [v16 stringFromDate:?];
      v14 = [v3 stringWithFormat:@"SessionStats-%@-%@.plist", v6, v4];
      MEMORY[0x277D82BD8](v4);
      MEMORY[0x277D82BD8](v5);
      MEMORY[0x277D82BD8](v6);
      MEMORY[0x277D82BD8](v7);
      v13 = [v15 stringByAppendingPathComponent:v14];
      v12 = [MEMORY[0x277CCAA00] defaultManager];
      v11 = 0;
      v10 = 0;
      v8 = [v12 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v10];
      objc_storeStrong(&v11, v10);
      if ((v8 & 1) == 0)
      {
        _HKInitializeLogging();
        v9 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          __os_log_helper_16_2_2_8_64_8_64(v18, v15, v11);
          _os_log_error_impl(&dword_20AEA4000, v9, OS_LOG_TYPE_ERROR, "Failed to create %@: %@", v18, 0x16u);
        }

        objc_storeStrong(&v9, 0);
      }

      [v17[0] writeToFile:v13 atomically:1];
      objc_storeStrong(&v11, 0);
      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
      objc_storeStrong(&v14, 0);
      objc_storeStrong(&v15, 0);
      objc_storeStrong(&v16, 0);
    }

    objc_storeStrong(v17, 0);
  }

  *MEMORY[0x277D85DE8];
}

- (id)powerLogWorkoutDictionary
{
  v16 = self;
  v15[1] = a2;
  v15[0] = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = [(WOCoreLiveWorkoutConfiguration *)v16->_configuration topLevelActivityType];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v14, "effectiveTypeIdentifier")}];
  v13 = [v7 stringValue];
  MEMORY[0x277D82BD8](v7);
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:_locationTypeForActivity(v14)];
  v12 = [v8 stringValue];
  MEMORY[0x277D82BD8](v8);
  if ([(NLSessionActivity *)v16 experienceType]== 3)
  {
    v2 = @"NO";
  }

  else
  {
    v2 = @"YES";
  }

  v11 = MEMORY[0x277D82BE0](v2);
  v9 = [v14 localizedName];
  MEMORY[0x277D82BD8](v9);
  if (v9)
  {
    location = MEMORY[0x277D82BE0](@"0");
    if ([(WOCoreLiveWorkoutConfiguration *)v16->_configuration isLowPowerMode])
    {
      if ([(WOCoreLiveWorkoutConfiguration *)v16->_configuration isUltraMode])
      {
        objc_storeStrong(&location, @"2");
      }

      else
      {
        objc_storeStrong(&location, @"1");
      }
    }

    [v15[0] setObject:location forKey:@"power"];
    v5 = v15[0];
    v6 = [(NSUUID *)v16->_UUID UUIDString];
    [v5 setObject:? forKey:?];
    MEMORY[0x277D82BD8](v6);
    [v15[0] setObject:v13 forKey:@"activityType"];
    [v15[0] setObject:v12 forKey:@"locationType"];
    [v15[0] setObject:v11 forKey:@"isFitnessPlusWorkout"];
    objc_storeStrong(&location, 0);
  }

  v4 = MEMORY[0x277D82BE0](v15[0]);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(v15, 0);

  return v4;
}

- (void)_powerLogWorkoutStart
{
  v3 = self;
  v2[1] = a2;
  if (shouldPowerLogWorkoutStart())
  {
    v2[0] = [(NLSessionActivity *)v3 powerLogWorkoutDictionary];
    powerLogEvent(@"WorkoutDidStart", v2[0]);
    objc_storeStrong(v2, 0);
  }
}

- (void)_powerLogWorkoutStop
{
  v3 = self;
  v2[1] = a2;
  if (shouldPowerLogWorkoutStop())
  {
    v2[0] = [(NLSessionActivity *)v3 powerLogWorkoutDictionary];
    powerLogEvent(@"WorkoutDidStop", v2[0]);
    objc_storeStrong(v2, 0);
  }
}

- (void)workoutBuilderDidChangeSampleTypesAvailableForCollection:(id)a3
{
  v6 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v5, location[0]);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[SessionActivity] Builder workoutBuilderDidChangeSampleTypesAvailableForCollection %@", v5, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)workoutBuilder:(id)a3 didCollectDataOfTypes:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v19 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v17 = 0;
  objc_storeStrong(&v17, a4);
  _HKInitializeLogging();
  v16 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_2_8_64_8_64(v20, location[0], v17);
    _os_log_impl(&dword_20AEA4000, v16, v15, "[SessionActivity] Builder %@ did collect data of types %@", v20, 0x16u);
  }

  objc_storeStrong(&v16, 0);
  v5 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v5;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __58__NLSessionActivity_workoutBuilder_didCollectDataOfTypes___block_invoke;
  v12 = &unk_277D88998;
  v13 = MEMORY[0x277D82BE0](v19);
  v14 = MEMORY[0x277D82BE0](v17);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)workoutBuilderDidCollectEvent:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v6, location[0]);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[SessionActivity] Builder did collect event. Builder: %@", v6, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(NLSessionActivityRollingPaceAccumulator *)v5->_rollingPaceAccumulator workoutBuilderDidCollectEvent];
  [v5->_heartRateZonesAccumulator workoutBuilderDidCollectEvent];
  [v5->_powerZonesAccumulator workoutBuilderDidCollectEvent];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

+ (double)durationBetweenStartDate:(id)a3 endDate:(id)a4 workoutEvents:(id)a5
{
  location[2] = a1;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v14 = 0;
  objc_storeStrong(&v14, a5);
  v9 = 0;
  v10 = &v9;
  v11 = 0x20000000;
  v12 = 32;
  v13 = 0;
  _HKEnumerateActiveWorkoutIntervalsStartingPaused();
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
  return v6;
}

void __68__NLSessionActivity_durationBetweenStartDate_endDate_workoutEvents___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v6 = 0;
  objc_storeStrong(&v6, a3);
  [v6 timeIntervalSinceDate:location[0]];
  *(*(a1[4] + 8) + 24) = *(*(a1[4] + 8) + 24) + v3;
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)enterAutomaticTransition
{
  v5 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v6 = v5;
  dispatch_assert_queue_V2(v6);
  MEMORY[0x277D82BD8](v6);
  self->_inAutomaticTransition = 1;
  v3 = [MEMORY[0x277CBEB58] set];
  automaticTransitionEnqueuedTypes = self->_automaticTransitionEnqueuedTypes;
  self->_automaticTransitionEnqueuedTypes = v3;
  MEMORY[0x277D82BD8](automaticTransitionEnqueuedTypes);
}

- (void)cancelAutomaticTransition
{
  v10 = self;
  location[1] = a2;
  v5 = MEMORY[0x277D85CD0];
  v2 = MEMORY[0x277D85CD0];
  v6 = v5;
  dispatch_assert_queue_V2(v6);
  MEMORY[0x277D82BD8](v6);
  _HKInitializeLogging();
  location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_impl(&dword_20AEA4000, log, type, "[Multisport] Canceling automatic transition and processing pending type updates", v7, 2u);
  }

  objc_storeStrong(location, 0);
  v10->_inAutomaticTransition = 0;
  [(NLSessionActivity *)v10 _updateWithCollectedTypes:v10->_automaticTransitionEnqueuedTypes];
  objc_storeStrong(&v10->_automaticTransitionEnqueuedTypes, 0);
}

- (void)_updateWithCollectedTypes:(id)a3
{
  v48 = *MEMORY[0x277D85DE8];
  v45 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v27 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  v28 = v27;
  dispatch_assert_queue_V2(v28);
  MEMORY[0x277D82BD8](v28);
  if (v45->_inAutomaticTransition)
  {
    [(NSMutableSet *)v45->_automaticTransitionEnqueuedTypes unionSet:location[0]];
    v43 = [MEMORY[0x277CCD830] quantityTypeForIdentifier:*MEMORY[0x277CCCB90]];
    if ([location[0] containsObject:v43])
    {
      v4 = [MEMORY[0x277CBEB98] setWithObject:v43];
      v5 = location[0];
      location[0] = v4;
      MEMORY[0x277D82BD8](v5);
    }

    else
    {
      objc_storeStrong(location, 0);
    }

    objc_storeStrong(&v43, 0);
  }

  _HKInitializeLogging();
  v42 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v41 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v47, location[0]);
    _os_log_impl(&dword_20AEA4000, v42, v41, "[SessionActivity] Builder updated sample types: %@", v47, 0xCu);
  }

  objc_storeStrong(&v42, 0);
  if (!v45->_didCollectFirstSample)
  {
    v26 = +[WOCoreWorkoutSignposter shared];
    [(WOCoreWorkoutSignposter *)v26 emitWithSignpost:6];
    MEMORY[0x277D82BD8](v26);
    v45->_didCollectFirstSample = 1;
  }

  v40 = [(NLSessionActivity *)v45 currentWorkoutActivity];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location[0]);
  v25 = [obj countByEnumeratingWithState:__b objects:v46 count:16];
  if (v25)
  {
    v21 = *__b[2];
    v22 = 0;
    v23 = v25;
    while (1)
    {
      v20 = v22;
      if (*__b[2] != v21)
      {
        objc_enumerationMutation(obj);
      }

      v39 = *(__b[1] + 8 * v22);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        break;
      }

LABEL_26:
      ++v22;
      if (v20 + 1 >= v23)
      {
        v22 = 0;
        v23 = [obj countByEnumeratingWithState:__b objects:v46 count:16];
        if (!v23)
        {
          goto LABEL_28;
        }
      }
    }

    v37 = MEMORY[0x277D82BE0](v39);
    v36 = 0;
    v35 = 0.0;
    if (v40)
    {
      v6 = [v40 statisticsForType:v37];
      v7 = v36;
      v36 = v6;
      MEMORY[0x277D82BD8](v7);
      v34 = [v36 endDate];
      v18 = [v36 startDate];
      v19 = [v18 compare:v34];
      MEMORY[0x277D82BD8](v18);
      if (v19 == 1)
      {
        _HKInitializeLogging();
        oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
        v32 = OS_LOG_TYPE_ERROR;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
        {
          v16 = oslog;
          v17 = v32;
          __os_log_helper_16_0_0(v31);
          _os_log_error_impl(&dword_20AEA4000, v16, v17, "Received a statistics sample that moves backwards in time!", v31, 2u);
        }

        objc_storeStrong(&oslog, 0);
        v30 = 1;
      }

      else
      {
        v13 = objc_opt_class();
        v15 = [v40 startDate];
        v12 = v34;
        v14 = [(HKLiveWorkoutBuilder *)v45->_builder workoutEvents];
        [v13 durationBetweenStartDate:v15 endDate:v12 workoutEvents:?];
        v35 = v8;
        MEMORY[0x277D82BD8](v14);
        MEMORY[0x277D82BD8](v15);
        v30 = 0;
      }

      objc_storeStrong(&v34, 0);
      if (v30)
      {
LABEL_25:
        objc_storeStrong(&v36, 0);
        objc_storeStrong(&v37, 0);
        if (v30)
        {
          goto LABEL_29;
        }

        goto LABEL_26;
      }
    }

    else
    {
      v9 = [(HKLiveWorkoutBuilder *)v45->_builder statisticsForType:v37];
      v10 = v36;
      v36 = v9;
      MEMORY[0x277D82BD8](v10);
      v29 = [v36 endDate];
      [(HKLiveWorkoutBuilder *)v45->_builder elapsedTimeAtDate:v29];
      v35 = v11;
      objc_storeStrong(&v29, 0);
    }

    [(NLSessionActivity *)v45 _updateWithQuantityType:v37 statistics:v36 duration:v35];
    v30 = 0;
    goto LABEL_25;
  }

LABEL_28:
  v30 = 0;
LABEL_29:
  MEMORY[0x277D82BD8](obj);
  if (!v30)
  {
    v30 = 0;
  }

  objc_storeStrong(&v40, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_updateWithQuantityType:(id)a3 statistics:(id)a4 duration:(double)a5
{
  v41 = *MEMORY[0x277D85DE8];
  v39 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v37 = 0;
  objc_storeStrong(&v37, a4);
  v36 = a5;
  v33 = _DistanceSampleTypes();
  v34 = [v33 containsObject:location[0]];
  MEMORY[0x277D82BD8](v33);
  if (v34)
  {
    [(NLSessionActivity *)v39 _updateTotalDistanceWithStatistics:v37 duration:v36];
  }

  else
  {
    v29 = [location[0] identifier];
    v30 = [v29 isEqualToString:*MEMORY[0x277CCC918]];
    MEMORY[0x277D82BD8](v29);
    if (v30 & 1) != 0 || (v27 = [location[0] identifier], v28 = objc_msgSend(v27, "isEqualToString:", *MEMORY[0x277CCC960]), MEMORY[0x277D82BD8](v27), (v28))
    {
      [(NLSessionActivity *)v39 _updateEnergyBurned:location[0] statistics:v37];
    }

    else
    {
      v25 = [location[0] identifier];
      v26 = [v25 isEqualToString:*MEMORY[0x277CCCB90]];
      MEMORY[0x277D82BD8](v25);
      if (v26)
      {
        [(NLSessionActivity *)v39 _updateHeartRateWithStatistics:v37];
      }

      else
      {
        v23 = [location[0] identifier];
        v24 = [v23 isEqualToString:*MEMORY[0x277CCCC70]];
        MEMORY[0x277D82BD8](v23);
        if (v24)
        {
          [(NLSessionActivity *)v39 _updateStepCountWithStatistics:v37 duration:location[0] quantityType:v36];
        }

        else
        {
          v21 = [location[0] identifier];
          v22 = [v21 isEqualToString:*MEMORY[0x277CCCB70]];
          MEMORY[0x277D82BD8](v21);
          if (v22)
          {
            [(NLSessionActivity *)v39 _updateFlightsClimbedWithStatistics:v37];
          }

          else
          {
            v19 = [location[0] identifier];
            v20 = [v19 isEqualToString:*MEMORY[0x277CCCC38]];
            MEMORY[0x277D82BD8](v19);
            if (v20)
            {
              [(NLSessionActivity *)v39 _updateRunningPowerWithStatistics:v37];
            }

            else
            {
              v17 = [location[0] identifier];
              v18 = [v17 isEqualToString:*MEMORY[0x277CCC9C0]];
              MEMORY[0x277D82BD8](v17);
              if (v18)
              {
                [(NLSessionActivity *)v39 _updateCyclingPowerWithStatistics:v37];
              }

              else
              {
                v15 = [location[0] identifier];
                v16 = [v15 isEqualToString:*MEMORY[0x277CCC9B0]];
                MEMORY[0x277D82BD8](v15);
                if (v16)
                {
                  [(NLSessionActivity *)v39 _updateCyclingCadenceWithStatistics:v37 duration:location[0] quantityType:v36];
                }

                else
                {
                  v13 = [location[0] identifier];
                  v14 = [v13 isEqualToString:*MEMORY[0x277CCCCD0]];
                  MEMORY[0x277D82BD8](v13);
                  if (v14)
                  {
                    [(NLSessionActivity *)v39 _updateWaterTemperatureWithStatistics:v37 duration:location[0] quantityType:v36];
                  }

                  else
                  {
                    v11 = [location[0] identifier];
                    v12 = [v11 isEqualToString:*MEMORY[0x277CCCC48]];
                    MEMORY[0x277D82BD8](v11);
                    if (v12)
                    {
                      [(NLSessionActivity *)v39 _updateStrideLengthWithStatistics:v37];
                    }

                    else
                    {
                      v9 = [location[0] identifier];
                      v10 = [v9 isEqualToString:*MEMORY[0x277CCCC50]];
                      MEMORY[0x277D82BD8](v9);
                      if (v10)
                      {
                        [(NLSessionActivity *)v39 _updateVerticalOscillationWithStatistics:v37];
                      }

                      else
                      {
                        v7 = [location[0] identifier];
                        v8 = [v7 isEqualToString:*MEMORY[0x277CCCC30]];
                        MEMORY[0x277D82BD8](v7);
                        if (v8)
                        {
                          [(NLSessionActivity *)v39 _updateGroundContactTimeWithStatistics:v37];
                        }

                        else
                        {
                          v5 = _SpeedSampleTypes();
                          v6 = [v5 containsObject:location[0]];
                          MEMORY[0x277D82BD8](v5);
                          if (v6)
                          {
                            [(NLSessionActivity *)v39 _updateCurrentSpeedWithStatistics:v37 duration:v36];
                          }

                          else
                          {
                            _HKInitializeLogging();
                            v35 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
                            if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                            {
                              __os_log_helper_16_2_1_8_64(v40, location[0]);
                              _os_log_impl(&dword_20AEA4000, v35, OS_LOG_TYPE_DEFAULT, "[SessionActivity] Unhandled sample type %@", v40, 0xCu);
                            }

                            objc_storeStrong(&v35, 0);
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  objc_storeStrong(&v37, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)workoutBuilder:(id)a3 didBeginActivity:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __53__NLSessionActivity_workoutBuilder_didBeginActivity___block_invoke;
  v12 = &unk_277D88998;
  v13 = MEMORY[0x277D82BE0](v15);
  v14 = MEMORY[0x277D82BE0](v17);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __53__NLSessionActivity_workoutBuilder_didBeginActivity___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  oslog[2] = a1;
  oslog[1] = a1;
  _HKInitializeLogging();
  oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v14, *(a1 + 32));
    _os_log_impl(&dword_20AEA4000, oslog[0], type, "[multisport][intervals] Workout builder started new activity %@", v14, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  location = [*(*(a1 + 40) + 24) allObjects];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](location);
  v6 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
  if (v6)
  {
    v2 = *__b[2];
    v3 = 0;
    v4 = v6;
    while (1)
    {
      v1 = v3;
      if (*__b[2] != v2)
      {
        objc_enumerationMutation(obj);
      }

      v9 = *(__b[1] + 8 * v3);
      [v9 sessionActivity:*(a1 + 40) didBeginActivity:*(a1 + 32)];
      ++v3;
      if (v1 + 1 >= v4)
      {
        v3 = 0;
        v4 = [obj countByEnumeratingWithState:__b objects:v13 count:16];
        if (!v4)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  if ([*(*(a1 + 40) + 264) isMultiSport])
  {
    [*(a1 + 40) updateActivityTypeFromConfiguration:*(a1 + 32)];
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_recoverIntoActivity:(id)a3
{
  v14 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v4;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __42__NLSessionActivity__recoverIntoActivity___block_invoke;
  v10 = &unk_277D88998;
  v11 = MEMORY[0x277D82BE0](location[0]);
  v12 = MEMORY[0x277D82BE0](v14);
  dispatch_async(queue, &v6);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v12, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __42__NLSessionActivity__recoverIntoActivity___block_invoke(uint64_t a1)
{
  v31 = *MEMORY[0x277D85DE8];
  oslog[2] = a1;
  oslog[1] = a1;
  _HKInitializeLogging();
  oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v30, *(a1 + 32));
    _os_log_impl(&dword_20AEA4000, oslog[0], type, "[multisport][recovery] Workout builder recovered into activity %@", v30, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  v25 = [*(*(a1 + 40) + 24) allObjects];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v25);
  v15 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
  if (v15)
  {
    v11 = *__b[2];
    v12 = 0;
    v13 = v15;
    while (1)
    {
      v10 = v12;
      if (*__b[2] != v11)
      {
        objc_enumerationMutation(obj);
      }

      v24 = *(__b[1] + 8 * v12);
      [v24 sessionActivity:*(a1 + 40) didBeginActivity:*(a1 + 32)];
      ++v12;
      if (v10 + 1 >= v13)
      {
        v12 = 0;
        v13 = [obj countByEnumeratingWithState:__b objects:v29 count:16];
        if (!v13)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  if ([*(*(a1 + 40) + 264) isMultiSport])
  {
    [*(a1 + 40) updateActivityTypeFromConfiguration:*(a1 + 32)];
    _HKInitializeLogging();
    v22 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v21 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v8 = v22;
      v9 = v21;
      __os_log_helper_16_0_0(v20);
      _os_log_impl(&dword_20AEA4000, v8, v9, "[multisport][recovery] attempt to recover split events", v20, 2u);
    }

    objc_storeStrong(&v22, 0);
    location = [*(a1 + 40) currentWorkoutEvents];
    memset(v17, 0, sizeof(v17));
    v6 = MEMORY[0x277D82BE0](*(*(a1 + 40) + 176));
    v7 = [v6 countByEnumeratingWithState:v17 objects:v28 count:16];
    if (v7)
    {
      v3 = *v17[2];
      v4 = 0;
      v5 = v7;
      while (1)
      {
        v2 = v4;
        if (*v17[2] != v3)
        {
          objc_enumerationMutation(v6);
        }

        v18 = *(v17[1] + 8 * v4);
        [v18 recoverFrom:location];
        ++v4;
        if (v2 + 1 >= v5)
        {
          v4 = 0;
          v5 = [v6 countByEnumeratingWithState:v17 objects:v28 count:16];
          if (!v5)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v6);
    v1 = [*(a1 + 40) splitsDisplayAccumulator];
    [v1 assignStartValues];
    MEMORY[0x277D82BD8](v1);
    objc_storeStrong(&location, 0);
  }

  objc_storeStrong(&v25, 0);
  *MEMORY[0x277D85DE8];
}

- (void)workoutBuilder:(id)a3 didEndActivity:(id)a4
{
  v17 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v15 = 0;
  objc_storeStrong(&v15, a4);
  v6 = MEMORY[0x277D85CD0];
  v4 = MEMORY[0x277D85CD0];
  queue = v6;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __51__NLSessionActivity_workoutBuilder_didEndActivity___block_invoke;
  v12 = &unk_277D88998;
  v13 = MEMORY[0x277D82BE0](v17);
  v14 = MEMORY[0x277D82BE0](v15);
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(location, 0);
}

void __51__NLSessionActivity_workoutBuilder_didEndActivity___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  if ([*(*(a1 + 32) + 264) isMultiSport])
  {
    if (*(*(a1 + 32) + 62))
    {
      _HKInitializeLogging();
      location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v28 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
      {
        log = location[0];
        type = v28;
        __os_log_helper_16_0_0(v27);
        _os_log_impl(&dword_20AEA4000, log, type, "[multisport] Clearing out stored sample types from automatic transition.", v27, 2u);
      }

      objc_storeStrong(location, 0);
      *(*(a1 + 32) + 62) = 0;
      objc_storeStrong((*(a1 + 32) + 328), 0);
    }

    _HKInitializeLogging();
    v26 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v25 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v32, *(a1 + 40));
      _os_log_impl(&dword_20AEA4000, v26, v25, "[multisport] Builder just ended %@", v32, 0xCu);
    }

    objc_storeStrong(&v26, 0);
    if (*(*(a1 + 32) + 88))
    {
      v24 = [*(*(a1 + 32) + 88) workoutActivities];
      memset(__b, 0, sizeof(__b));
      obj = MEMORY[0x277D82BE0](v24);
      v12 = [obj countByEnumeratingWithState:__b objects:v31 count:16];
      if (v12)
      {
        v8 = *__b[2];
        v9 = 0;
        v10 = v12;
        while (1)
        {
          v7 = v9;
          if (*__b[2] != v8)
          {
            objc_enumerationMutation(obj);
          }

          v23 = *(__b[1] + 8 * v9);
          v5 = [v23 UUID];
          v4 = [*(a1 + 40) UUID];
          v6 = [v5 compare:?];
          MEMORY[0x277D82BD8](v4);
          MEMORY[0x277D82BD8](v5);
          if (!v6)
          {
            break;
          }

          ++v9;
          if (v7 + 1 >= v10)
          {
            v9 = 0;
            v10 = [obj countByEnumeratingWithState:__b objects:v31 count:16];
            if (!v10)
            {
              goto LABEL_19;
            }
          }
        }

        _HKInitializeLogging();
        oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
        v20 = OS_LOG_TYPE_DEFAULT;
        if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
        {
          v3 = [v23 UUID];
          __os_log_helper_16_2_1_8_64(v30, v3);
          _os_log_impl(&dword_20AEA4000, oslog, v20, "[multisport] Found statistics for our activity %@", v30, 0xCu);
          MEMORY[0x277D82BD8](v3);
        }

        objc_storeStrong(&oslog, 0);
        [*(a1 + 32) _stopActivityDependentAccumulatorsWithActivity:v23];
        v19 = 6;
      }

      else
      {
LABEL_19:
        v19 = 0;
      }

      MEMORY[0x277D82BD8](obj);
      objc_storeStrong(&v24, 0);
    }

    else
    {
      _HKInitializeLogging();
      v18 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v17 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v1 = v18;
        v2 = v17;
        __os_log_helper_16_0_0(v16);
        _os_log_impl(&dword_20AEA4000, v1, v2, "[multisport] Our _builder is already gone, this is a discarded workout.", v16, 2u);
      }

      objc_storeStrong(&v18, 0);
    }
  }

  *MEMORY[0x277D85DE8];
}

- (void)workoutRouteDataSourceDidUpdateElevation:(id)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v6, location[0]);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[SessionActivity][Elevation] Updated elevation to %@", v6, 0xCu);
  }

  objc_storeStrong(&oslog, 0);
  [(NLSessionActivity *)v5 _updateElevationGain:location[0]];
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)workoutRouteDataSource:(id)a3 didUpdateAltitude:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  if (![(NLSessionActivityGroundElevationManager *)v13->_groundElevationManager isGroundElevationAvailable])
  {
    if (v13->_groundElevationSupported)
    {
      _HKInitializeLogging();
      v10 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v9 = OS_LOG_TYPE_DEFAULT;
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v15, v11);
        _os_log_impl(&dword_20AEA4000, v10, v9, "[SessionActivity][Elevation] Updated altitude to %@", v15, 0xCu);
      }

      objc_storeStrong(&v10, 0);
      v4 = [WOElevationSample alloc];
      v5 = objc_opt_new();
      v8 = [WOElevationSample initWithDate:v4 value:"initWithDate:value:"];
      MEMORY[0x277D82BD8](v5);
      [(NLSessionActivity *)v13 _updateElevation:v8];
      objc_storeStrong(&v8, 0);
    }

    else
    {
      _HKInitializeLogging();
      oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
      {
        __os_log_helper_16_2_1_8_64(v14, v13->_activityType);
        _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[SessionActivity][Elevation] Skipping altitude update. %@ does not support elevation", v14, 0xCu);
      }

      objc_storeStrong(&oslog, 0);
    }
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)workoutRouteDataSourceDidUpdateRoute:(id)a3
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  _HKInitializeLogging();
  v7 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    log = v7;
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_impl(&dword_20AEA4000, log, type, "[SessionActivity][Elevation] Route data source updated", v5, 2u);
  }

  objc_storeStrong(&v7, 0);
  objc_storeStrong(location, 0);
}

- (void)groundElevationManagerDidFinishSetup
{
  v7 = *MEMORY[0x277D85DE8];
  v5 = self;
  v4 = a2;
  v3 = [(NLSessionActivityGroundElevationManager *)self->_groundElevationManager isGroundElevationAvailable];
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_4_0(v6, v3);
    _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[GroundElevation] ground elevation manager did finish setup with groundElevationAvailable: %{BOOL}d", v6, 8u);
  }

  objc_storeStrong(&oslog, 0);
  if (v3)
  {
    [(NLSessionActivity *)v5 addSessionStateObserver:v5->_groundElevationManager];
    if (NLSessionActivityIsActive(v5))
    {
      [(NLSessionActivityGroundElevationManager *)v5->_groundElevationManager setActive:1];
    }
  }

  *MEMORY[0x277D85DE8];
}

- (void)groundElevationDidUpdate:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (*(v7 + 60))
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v9, location[0]);
      _os_log_impl(&dword_20AEA4000, oslog, type, "[SessionActivity][Elevation] Updated ground elevation to %@", v9, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
    [v7 _updateElevation:location[0]];
  }

  else
  {
    _HKInitializeLogging();
    v3 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_2_1_8_64(v8, v7[16]);
      _os_log_impl(&dword_20AEA4000, v3, OS_LOG_TYPE_DEFAULT, "[SessionActivity][Elevation] Skipping ground elevation update. %@ does not support elevation", v8, 0xCu);
    }

    objc_storeStrong(&v3, 0);
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)gymKitMetricsDataSource:(id)a3 didReceiveMetrics:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  memset(__b, 0, sizeof(__b));
  v11 = [v16 allKeys];
  v12 = [v11 countByEnumeratingWithState:__b objects:v19 count:16];
  if (v12)
  {
    v7 = *__b[2];
    v8 = 0;
    v9 = v12;
    while (1)
    {
      v6 = v8;
      if (*__b[2] != v7)
      {
        objc_enumerationMutation(v11);
      }

      v15 = *(__b[1] + 8 * v8);
      v13 = [v15 integerValue];
      v4 = v18;
      v5 = [v16 objectForKeyedSubscript:v15];
      [(NLSessionActivity *)v4 _updateWorkoutMetric:v13 withQuantity:?];
      MEMORY[0x277D82BD8](v5);
      ++v8;
      if (v6 + 1 >= v9)
      {
        v8 = 0;
        v9 = [v11 countByEnumeratingWithState:__b objects:v19 count:16];
        if (!v9)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](v11);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_updateWorkoutMetric:(unint64_t)a3 withQuantity:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v21 = self;
  v20 = a2;
  v19 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  _HKInitializeLogging();
  v17 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v16 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    log = v17;
    type = v16;
    v11 = _HKStringForWorkoutMetric();
    v15 = MEMORY[0x277D82BE0](v11);
    __os_log_helper_16_2_2_8_66_8_64(v22, v15, location);
    _os_log_impl(&dword_20AEA4000, log, type, "[SessionActivity] Updating metric %{public}@ with value %@", v22, 0x16u);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v15, 0);
  }

  objc_storeStrong(&v17, 0);
  if (v19)
  {
    if (v19 == 1)
    {
      [(NLSessionActivity *)v21 _updateElapsedTime:_CanonicalMetricValue(1, location)];
    }

    else if ((v19 - 2) > 1)
    {
      if ((v19 - 4) <= 1)
      {
        [(NLSessionActivity *)v21 _updateMachineDistance:_CanonicalMetricValue(v19, location)];
      }

      else if ((v19 - 6) > 4)
      {
        if (v19 == 11)
        {
          [(NLSessionActivity *)v21 _updateInstantaneousPace:_CanonicalMetricValue(0xB, location)];
        }

        else if (v19 == 12)
        {
          [(NLSessionActivity *)v21 _updateAveragePace:_CanonicalMetricValue(0xC, location)];
        }

        else if ((v19 - 13) > 2)
        {
          if (v19 == 16)
          {
            v5 = v21;
            v4 = _CanonicalMetricValue(0x10, location);
            v6 = [MEMORY[0x277CBEAA8] date];
            [(NLSessionActivity *)v5 _updateInstantaneousPower:v4 sampleDate:?];
            MEMORY[0x277D82BD8](v6);
          }

          else if (v19 == 17)
          {
            [(NLSessionActivity *)v21 _updateAveragePower:_CanonicalMetricValue(0x11, location)];
          }
        }
      }
    }
  }

  else
  {
    _HKInitializeLogging();
    v14 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v13 = 16;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v7 = v14;
      v8 = v13;
      __os_log_helper_16_0_0(v12);
      _os_log_error_impl(&dword_20AEA4000, v7, v8, "[SessionActivity] Received metric type 0 which is an error", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&location, 0);
  *MEMORY[0x277D85DE8];
}

- (NLSessionActivityPaceAccumulator)paceAccumulator
{
  if ([(NLSessionActivity *)self isMachineWorkout])
  {
    v4 = MEMORY[0x277D82BE0](self->_machinePaceAccumulator);
  }

  else if ([(NLSessionActivityNonMachinePaceAccumulator *)self->_nonMachinePaceAccumulator isPaceAvailable])
  {
    v4 = MEMORY[0x277D82BE0](self->_nonMachinePaceAccumulator);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (NLSessionActivityCadenceAccumulator)cadenceAccumulator
{
  if ([(FIUIWorkoutActivityType *)self->_activityType identifier]== 13)
  {
    v4 = MEMORY[0x277D82BE0](self->_cyclingCadenceAccumulator);
  }

  else
  {
    v4 = MEMORY[0x277D82BE0](self->_pedometerCadenceAccumulator);
  }

  return v4;
}

- (NLSessionActivityElapsedTimeAccumulator)elapsedTimeAccumulator
{
  if ([(NLSessionActivity *)self isMachineWorkout])
  {
    v4 = MEMORY[0x277D82BE0](self->_machineElapsedTimeAccumulator);
  }

  else if ([(NLSessionActivity *)self showVideoPlaybackCurrentTime])
  {
    v4 = MEMORY[0x277D82BE0](self->_seymourElapsedTimeAccumulator);
  }

  else
  {
    v4 = MEMORY[0x277D82BE0](self->_nonMachineElapsedTimeAccumulator);
  }

  return v4;
}

- (BOOL)_beforeBuilderActive
{
  v3 = 1;
  if ([(NLSessionActivity *)self state])
  {
    return [(NLSessionActivity *)self state]== 1;
  }

  return v3;
}

- (double)duration
{
  if (+[NLSessionActivityFakeDataManager shouldShowFakeData])
  {
    +[NLSessionActivityFakeDataManager fakeValueForDuration];
    return v2;
  }

  else
  {
    v14 = [(NLSessionActivity *)self demoDataProvider];
    MEMORY[0x277D82BD8](v14);
    if (v14)
    {
      v13 = [(NLSessionActivity *)self demoDataProvider];
      v12 = [(NLWorkoutDemoDataProvider *)v13 elapsedTimeProvider];
      [(NLSessionActivityElapsedTimeProvider *)v12 elapsedTime];
      v23 = v3;
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
    }

    else
    {
      v19 = 0;
      v17 = 0;
      v15 = 0;
      v11 = 0;
      if ([(NLSessionActivity *)self _beforeBuilderActive])
      {
        v20 = [(NLSessionActivity *)self activityBeginDate];
        v19 = 1;
        v11 = 0;
        if (v20)
        {
          v18 = [(NLSessionActivity *)self elapsedTimeProvider];
          v17 = 1;
          v16 = [(NLSessionActivity *)self nonMachineElapsedTimeAccumulator];
          v15 = 1;
          v11 = v18 == v16;
        }
      }

      if (v15)
      {
        MEMORY[0x277D82BD8](v16);
      }

      if (v17)
      {
        MEMORY[0x277D82BD8](v18);
      }

      if (v19)
      {
        MEMORY[0x277D82BD8](v20);
      }

      if (v11)
      {
        v10 = [MEMORY[0x277CBEAA8] date];
        v9 = [(NLSessionActivity *)self activityBeginDate];
        [v10 timeIntervalSinceDate:?];
        v21 = v4;
        MEMORY[0x277D82BD8](v9);
        MEMORY[0x277D82BD8](v10);
      }

      else
      {
        v8 = [(NLSessionActivity *)self elapsedTimeProvider];
        v7 = [(NLSessionActivity *)self effectivePresentationTime];
        [(NLSessionActivityElapsedTimeProvider *)v8 elapsedTimeAtPresentationTime:?];
        v21 = v5;
        MEMORY[0x277D82BD8](v7);
        MEMORY[0x277D82BD8](v8);
      }

      return v21;
    }
  }

  return v23;
}

- (double)activityDuration
{
  v10 = self;
  location[1] = a2;
  location[0] = [(NLSessionActivity *)self currentWorkoutActivity];
  if (location[0])
  {
    v5 = objc_opt_class();
    v8 = [location[0] startDate];
    v7 = [MEMORY[0x277CBEAA8] date];
    v6 = [(HKLiveWorkoutBuilder *)v10->_builder workoutEvents];
    [v5 durationBetweenStartDate:v8 endDate:v7 workoutEvents:?];
    v11 = v2;
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
  }

  else
  {
    [(NLSessionActivity *)v10 duration];
    v11 = v3;
  }

  objc_storeStrong(location, 0);
  return v11;
}

- (NLSessionActivityDistanceProvider)distanceProvider
{
  if ([(FIUIWorkoutActivityType *)self->_activityType identifier]== 46)
  {
    v7 = MEMORY[0x277D82BE0](self->_swimmingAccumulator);
  }

  else if ([(FIUIWorkoutActivityType *)self->_activityType isDownhillSnowSport])
  {
    v7 = MEMORY[0x277D82BE0](self->_downhillSnowSportsAccumulator);
  }

  else
  {
    v3 = [(NLSessionActivity *)self isMachineWorkout];
    v4 = [(NLSessionActivity *)self activityType];
    v5 = _UseMachineDistance(v3, [(FIUIWorkoutActivityType *)v4 identifier]);
    MEMORY[0x277D82BD8](v4);
    if (v5)
    {
      v7 = MEMORY[0x277D82BE0](self->_machineDistanceAccumulator);
    }

    else
    {
      v7 = MEMORY[0x277D82BE0](self->_distanceAccumulator);
    }
  }

  return v7;
}

- (NLSessionActivityHeartRateProvider)heartRateProvider
{
  if ([(NLSessionActivity *)self state]== 1)
  {
    v4 = MEMORY[0x277D82BE0](self->_heartRatePrecisionStartAccumulator);
  }

  else
  {
    v4 = MEMORY[0x277D82BE0](self->_heartRateAccumulator);
  }

  return v4;
}

- (NLSessionActivityPaceProvider)paceProvider
{
  if ([(FIUIWorkoutActivityType *)self->_activityType isDownhillSnowSport])
  {
    v4 = MEMORY[0x277D82BE0](self->_downhillSnowSportsAccumulator);
  }

  else
  {
    v4 = [(NLSessionActivity *)self paceAccumulator];
  }

  return v4;
}

- (double)displaySplitDistanceValue
{
  v4 = [(NLSessionActivity *)self splitProvider];
  [(NLSessionActivitySplitProvider *)v4 definedSplitDistance];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5;
}

- (void)evaluatePauseResumeForConnectedDevices
{
  v7 = [(NLSessionActivity *)self deviceObserver];
  v6 = [(NLSessionActivity *)self activityType];
  v8 = [(WOSessionActivityDeviceObserver *)v7 canResumeWorkoutWithActivityType:?];
  MEMORY[0x277D82BD8](v6);
  MEMORY[0x277D82BD8](v7);
  if (v8)
  {
    v5 = [(NLSessionActivity *)self state];
    switch(v5)
    {
      case 4uLL:
        goto LABEL_7;
      case 5uLL:
        v4 = [MEMORY[0x277CBEAA8] date];
        [NLSessionActivity _setPauseTracking:"_setPauseTracking:atDate:eventSource:" atDate:0 eventSource:?];
        MEMORY[0x277D82BD8](v4);
        return;
      case 9uLL:
LABEL_7:
        [(FIUIStateMachine *)self->_stateMachine event:10];
        break;
    }
  }

  else
  {
    v3 = [(NLSessionActivity *)self state];
    switch(v3)
    {
      case 3uLL:
        goto LABEL_13;
      case 6uLL:
        v2 = [MEMORY[0x277CBEAA8] date];
        [NLSessionActivity _setPauseTracking:"_setPauseTracking:atDate:eventSource:" atDate:1 eventSource:?];
        MEMORY[0x277D82BD8](v2);
        return;
      case 8uLL:
LABEL_13:
        [(FIUIStateMachine *)self->_stateMachine event:11];
        break;
    }
  }
}

- (NLSessionActivityLifecycleDelegate)lifecycleDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_lifecycleDelegate);

  return WeakRetained;
}

- (NLSessionActivitySavingDelegate)savingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_savingDelegate);

  return WeakRetained;
}

- (NLWorkoutSplitsDelegate)splitsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_splitsDelegate);

  return WeakRetained;
}

- (WOCustomSplitsDelegate)customSplitsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_customSplitsDelegate);

  return WeakRetained;
}

@end