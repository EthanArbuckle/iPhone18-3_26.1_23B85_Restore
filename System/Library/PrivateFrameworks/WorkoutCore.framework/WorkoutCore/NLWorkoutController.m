@interface NLWorkoutController
+ (unint64_t)endReasonForStartSource:(unint64_t)a3;
- (BOOL)currentSessionHasEnded;
- (BOOL)endCurrentWorkoutIfNeededForReason:(unint64_t)a3;
- (NLWorkoutController)initWithHealthStore:(id)a3 formattingManager:(id)a4 activityPausedRingsObserver:(id)a5 backgroundPermissionsChecker:(id)a6 occurrenceStore:(id)a7 locationProvider:(id)a8 workoutVoiceAvailabilityProvider:(id)a9;
- (NLWorkoutUIDelegate)interfaceDelegate;
- (id)_unitPreferenceObservers;
- (id)sessionControlForRecovery;
- (void)_logWorkoutStartWithConfiguration:(id)a3 workout:(id)a4;
- (void)_startMirroredSessionWithLiveWorkoutConfiguration:(id)a3;
- (void)_startSessionWithWorkout:(id)a3 startSource:(unint64_t)a4 countdownDeadline:(id)a5 completion:(id)a6;
- (void)_unitPreferencesDidChange:(id)a3;
- (void)addObserver:(id)a3;
- (void)didDiscardWorkout:(id)a3;
- (void)didTransitionToNewActiveWorkout:(id)a3 startSource:(unint64_t)a4 countdownDeadline:(id)a5;
- (void)invalidateInUseAssertion;
- (void)recoverWorkoutWithWorkoutSession:(id)a3;
- (void)removeObserver:(id)a3;
- (void)requestLocationAuthorizationIfNeededForWorkout:(id)a3 completion:(id)a4;
- (void)setActiveWorkout:(id)a3 startSource:(unint64_t)a4 countdownDeadline:(id)a5;
- (void)setCurrentWorkoutPaused:(BOOL)a3 atDate:(id)a4 eventSource:(unint64_t)a5;
- (void)startSessionWith:(WOCoreLiveWorkoutConfiguration *)a3 countdownDeadline:(NLSessionCountdownDeadline *)a4 completionHandler:(id)a5;
- (void)workout:(id)a3 didEndWithHKWorkout:(id)a4 endReason:(unint64_t)a5;
- (void)workout:(id)a3 didMoveToState:(int64_t)a4;
- (void)workout:(id)a3 didUpdateHKWorkout:(id)a4;
- (void)workout:(id)a3 pausedReasonsDidUpdate:(unint64_t)a4;
- (void)workout:(id)a3 willEndWithHKWorkoutSnapshot:(id)a4 endReason:(unint64_t)a5;
@end

@implementation NLWorkoutController

- (id)_unitPreferenceObservers
{
  v10 = self;
  v9[1] = a2;
  v9[0] = MEMORY[0x277D82BE0](MEMORY[0x277CBEBF8]);
  if (v10->_activeWorkout)
  {
    v2 = [v9[0] arrayByAddingObject:v10->_activeWorkout];
    v3 = v9[0];
    v9[0] = v2;
    MEMORY[0x277D82BD8](v3);
  }

  if ([(NSMutableSet *)v10->_savingWorkouts count])
  {
    v8 = [(NSMutableSet *)v10->_savingWorkouts allObjects];
    v4 = [v9[0] arrayByAddingObjectsFromArray:?];
    v5 = v9[0];
    v9[0] = v4;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v8);
  }

  v7 = MEMORY[0x277D82BE0](v9[0]);
  objc_storeStrong(v9, 0);

  return v7;
}

- (NLWorkoutController)initWithHealthStore:(id)a3 formattingManager:(id)a4 activityPausedRingsObserver:(id)a5 backgroundPermissionsChecker:(id)a6 occurrenceStore:(id)a7 locationProvider:(id)a8 workoutVoiceAvailabilityProvider:(id)a9
{
  v33 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v31 = 0;
  objc_storeStrong(&v31, a4);
  v30 = 0;
  objc_storeStrong(&v30, a5);
  v29 = 0;
  objc_storeStrong(&v29, a6);
  v28 = 0;
  objc_storeStrong(&v28, a7);
  v27 = 0;
  objc_storeStrong(&v27, a8);
  v26 = 0;
  objc_storeStrong(&v26, a9);
  v9 = v33;
  v33 = 0;
  v25.receiver = v9;
  v25.super_class = NLWorkoutController;
  v19 = [(NLWorkoutController *)&v25 init];
  v33 = v19;
  objc_storeStrong(&v33, v19);
  if (v19)
  {
    objc_storeStrong(&v33->_healthStore, location[0]);
    objc_storeStrong(&v33->_formattingManager, v31);
    v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:0];
    savingWorkouts = v33->_savingWorkouts;
    v33->_savingWorkouts = v10;
    v12 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v33->_observers;
    v33->_observers = v12;
    MEMORY[0x277D82BD8](observers);
    objc_storeStrong(&v33->_backgroundPermissionsChecker, v29);
    objc_storeStrong(&v33->_occurrenceStore, v28);
    objc_storeStrong(&v33->_activityPausedRingsObserver, v30);
    v14 = objc_alloc_init(NLLocationRequestManager);
    locationRequestManager = v33->_locationRequestManager;
    v33->_locationRequestManager = v14;
    MEMORY[0x277D82BD8](locationRequestManager);
    objc_storeStrong(&v33->_locationProvider, v27);
    objc_storeStrong(&v33->_workoutVoiceAvailabilityProvider, v26);
    v18 = [MEMORY[0x277CCAB98] defaultCenter];
    [v18 addObserver:v33 selector:sel__unitPreferencesDidChange_ name:*MEMORY[0x277D0A848] object:0];
    MEMORY[0x277D82BD8](v18);
  }

  v17 = MEMORY[0x277D82BE0](v33);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v33, 0);
  return v17;
}

- (void)_unitPreferencesDidChange:(id)a3
{
  v16 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  _HKInitializeLogging();
  if (os_log_type_enabled(*MEMORY[0x277CCC330], OS_LOG_TYPE_DEBUG))
  {
    v14 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v13 = 2;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      log = v14;
      type = v13;
      __os_log_helper_16_0_0(v12);
      _os_log_debug_impl(&dword_20AEA4000, log, type, "[WorkoutController] Unit prefs changed - notifying unit pref observers", v12, 2u);
    }

    objc_storeStrong(&v14, 0);
  }

  v3 = [(NLWorkoutController *)v16 _unitPreferenceObservers];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __49__NLWorkoutController__unitPreferencesDidChange___block_invoke;
  v10 = &unk_277D88FF0;
  v11 = MEMORY[0x277D82BE0](v16);
  [v3 enumerateObjectsUsingBlock:&v6];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

void __49__NLWorkoutController__unitPreferencesDidChange___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v3 = location[0];
  v4 = [*(a1[4] + 24) unitManager];
  [v3 unitPreferencesUpdatedWithUnitManager:?];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(location, 0);
}

- (BOOL)endCurrentWorkoutIfNeededForReason:(unint64_t)a3
{
  v4 = 0;
  if (![(NLWorkoutController *)self currentSessionHasEnded])
  {
    [(NLWorkout *)self->_activeWorkout endTrackingWithEndReason:a3];
    objc_storeStrong(&self->_activeWorkout, 0);
    return 1;
  }

  return v4;
}

- (void)setCurrentWorkoutPaused:(BOOL)a3 atDate:(id)a4 eventSource:(unint64_t)a5
{
  v9 = self;
  v8 = a2;
  v7 = a3;
  location = 0;
  objc_storeStrong(&location, a4);
  if (@objc NLWorkoutController.hasCurrentSession()(v9, "hasCurrentSession"))
  {
    [(NLWorkout *)v9->_activeWorkout setPaused:v7 atDate:location eventSource:a5];
  }

  objc_storeStrong(&location, 0);
}

- (BOOL)currentSessionHasEnded
{
  v3 = [(NLWorkout *)self->_activeWorkout sessionActivity];
  v5 = 0;
  IsTracking = 0;
  if (v3)
  {
    v6 = [(NLWorkout *)self->_activeWorkout sessionActivity];
    v5 = 1;
    IsTracking = NLSessionActivityIsTracking(v6);
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](v6);
  }

  MEMORY[0x277D82BD8](v3);
  return !IsTracking;
}

- (void)didTransitionToNewActiveWorkout:(id)a3 startSource:(unint64_t)a4 countdownDeadline:(id)a5
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = a4;
  v9 = 0;
  objc_storeStrong(&v9, a5);
  WeakRetained = objc_loadWeakRetained(&v12->_interfaceDelegate);
  [WeakRetained startWorkout:location[0] startSource:v10 countdownDeadline:v9];
  *&v5 = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  if (v10 == 10)
  {
    [location[0] startRecovery];
  }

  else
  {
    [location[0] prepare];
  }

  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)setActiveWorkout:(id)a3 startSource:(unint64_t)a4 countdownDeadline:(id)a5
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = a4;
  v9 = 0;
  objc_storeStrong(&v9, a5);
  objc_storeStrong(&v12->_activeWorkout, location[0]);
  [(NLWorkout *)v12->_activeWorkout setEndingDelegate:v12];
  v8 = [(NLWorkout *)v12->_activeWorkout analyticsEventBuilder];
  [(NLAnalyticsWorkoutEventBuilder *)v8 recordStartSource:v10];
  *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  [(NLWorkout *)v12->_activeWorkout addStateObserver:v12, v5];
  [(NLWorkoutController *)v12 didTransitionToNewActiveWorkout:location[0] startSource:v10 countdownDeadline:v9];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)requestLocationAuthorizationIfNeededForWorkout:(id)a3 completion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v15 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = 0;
  objc_storeStrong(&v13, a4);
  v9 = [location[0] activityType];
  [v9 effectiveTypeIdentifier];
  v8 = [location[0] activityType];
  [v8 isIndoor];
  v7 = [location[0] activityType];
  [v7 swimmingLocationType];
  IsRouteable = _HKWorkoutActivityTypeIsRouteable();
  MEMORY[0x277D82BD8](v7);
  MEMORY[0x277D82BD8](v8);
  *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  v12 = IsRouteable;
  if (IsRouteable)
  {
    [(NLLocationRequestManager *)v15->_locationRequestManager requestLocationAuthorizationWithCompletion:&__block_literal_global_5, v4];
    (*(v13 + 2))();
  }

  else
  {
    _HKInitializeLogging();
    v11 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [location[0] activityType];
      __os_log_helper_16_2_1_8_64(v16, v5);
      _os_log_impl(&dword_20AEA4000, v11, OS_LOG_TYPE_DEFAULT, "In-use assertion not required for non-routeable activity type %@", v16, 0xCu);
      MEMORY[0x277D82BD8](v5);
    }

    objc_storeStrong(&v11, 0);
    (*(v13 + 2))();
  }

  objc_storeStrong(&v13, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __81__NLWorkoutController_requestLocationAuthorizationIfNeededForWorkout_completion___block_invoke(NSObject *a1, int a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v4 = a1;
  v3 = a2;
  oslog[1] = a1;
  _HKInitializeLogging();
  oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_0_1_4_0(v5, v3);
    _os_log_impl(&dword_20AEA4000, oslog[0], OS_LOG_TYPE_DEFAULT, "Location authorization request completed with authorization status: %d", v5, 8u);
  }

  objc_storeStrong(oslog, 0);
  *MEMORY[0x277D85DE8];
}

- (void)invalidateInUseAssertion
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = self;
  oslog[1] = a2;
  _HKInitializeLogging();
  oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v4, v3->_inUseAssertion);
    _os_log_impl(&dword_20AEA4000, oslog[0], OS_LOG_TYPE_DEFAULT, "Invalidating in-use assertion %@", v4, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  [(CLInUseAssertion *)v3->_inUseAssertion invalidate];
  objc_storeStrong(&v3->_inUseAssertion, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_logWorkoutStartWithConfiguration:(id)a3 workout:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v35 = 0;
  objc_storeStrong(&v35, a4);
  v16 = [location[0] predictionSessionUUID];
  v32 = 0;
  v30 = 0;
  v28 = 0;
  if (v16)
  {
    v14 = MEMORY[0x277CCACA8];
    v33 = [location[0] predictionSessionUUID];
    v32 = 1;
    v31 = FIUILastFourCharactersOfUUID();
    v30 = 1;
    v29 = [v14 stringWithFormat:@"predictionUUID=%@ ", v31];
    v28 = 1;
    v4 = MEMORY[0x277D82BE0](v29);
  }

  else
  {
    v4 = MEMORY[0x277D82BE0](&stru_28225A4E8);
  }

  v34 = v4;
  if (v28)
  {
    MEMORY[0x277D82BD8](v29);
  }

  if (v30)
  {
    MEMORY[0x277D82BD8](v31);
  }

  if (v32)
  {
    MEMORY[0x277D82BD8](v33);
  }

  *&v5 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  v13 = [location[0] fitnessMachineSessionUUID];
  v25 = 0;
  v23 = 0;
  v21 = 0;
  if (v13)
  {
    v12 = MEMORY[0x277CCACA8];
    v26 = [location[0] fitnessMachineSessionUUID];
    v25 = 1;
    v24 = FIUILastFourCharactersOfUUID();
    v23 = 1;
    v22 = [v12 stringWithFormat:@"machineSessionUUID=%@ ", v24];
    v21 = 1;
    v6 = MEMORY[0x277D82BE0](v22);
  }

  else
  {
    v6 = MEMORY[0x277D82BE0](&stru_28225A4E8);
  }

  v27 = v6;
  if (v21)
  {
    MEMORY[0x277D82BD8](v22);
  }

  if (v23)
  {
    MEMORY[0x277D82BD8](v24);
  }

  if (v25)
  {
    MEMORY[0x277D82BD8](v26);
  }

  MEMORY[0x277D82BD8](v13);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v9 = type;
    v11 = [v35 keyValueDescription];
    v7 = MEMORY[0x277D82BE0](v11);
    v18 = v7;
    v10 = NLWorkoutStartSourceDescription([location[0] startSource]);
    v17 = MEMORY[0x277D82BE0](v10);
    __os_log_helper_16_2_4_8_66_8_66_8_66_8_66(v37, v7, v17, v34, v27);
    _os_log_impl(&dword_20AEA4000, log, v9, "Starting workout %{public}@ startSource=%{public}@ %{public}@%{public}@ #w0", v37, 0x2Au);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](v11);
    objc_storeStrong(&v17, 0);
    objc_storeStrong(&v18, 0);
  }

  objc_storeStrong(&oslog, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v34, 0);
  objc_storeStrong(&v35, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_startSessionWithWorkout:(id)a3 startSource:(unint64_t)a4 countdownDeadline:(id)a5 completion:(id)a6
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = a4;
  v21 = 0;
  objc_storeStrong(&v21, a5);
  v20 = 0;
  objc_storeStrong(&v20, a6);
  [(NLWorkoutController *)v24 endCurrentWorkoutIfNeededForReason:[NLWorkoutController endReasonForStartSource:v22]];
  v10 = v24;
  v9 = location[0];
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __89__NLWorkoutController__startSessionWithWorkout_startSource_countdownDeadline_completion___block_invoke;
  v15 = &unk_277D89038;
  v16 = MEMORY[0x277D82BE0](location[0]);
  v17 = MEMORY[0x277D82BE0](v24);
  v19[1] = v22;
  v18 = MEMORY[0x277D82BE0](v21);
  v19[0] = MEMORY[0x277D82BE0](v20);
  [(NLWorkoutController *)v10 requestLocationAuthorizationIfNeededForWorkout:v9 completion:?];
  objc_storeStrong(v19, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v20, 0);
  objc_storeStrong(&v21, 0);
  objc_storeStrong(location, 0);
}

void __89__NLWorkoutController__startSessionWithWorkout_startSource_countdownDeadline_completion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  location[2] = a1;
  location[1] = a1;
  location[0] = [[NLSessionControl alloc] initWithWorkout:*(a1 + 32)];
  [*(a1 + 40) setActiveWorkout:*(a1 + 32) startSource:*(a1 + 64) countdownDeadline:*(a1 + 48)];
  if (*(a1 + 56))
  {
    (*(*(a1 + 56) + 16))();
  }

  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](*(*(a1 + 40) + 16));
  v6 = [obj countByEnumeratingWithState:__b objects:v11 count:16];
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
      [v9 workoutController:*(a1 + 40) startSource:*(a1 + 64) sessionControl:location[0]];
      ++v3;
      if (v1 + 1 >= v4)
      {
        v3 = 0;
        v4 = [obj countByEnumeratingWithState:__b objects:v11 count:16];
        if (!v4)
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

- (void)_startMirroredSessionWithLiveWorkoutConfiguration:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  -[NLWorkoutController endCurrentWorkoutIfNeededForReason:](v13, "endCurrentWorkoutIfNeededForReason:", +[NLWorkoutController endReasonForStartSource:](NLWorkoutController, "endReasonForStartSource:", [location[0] startSource]));
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v13->_observers);
  v9 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
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
      [v11 workoutController:v13 mirroredStart:{location[0], v7}];
      ++v6;
      v7 = v3;
      if (v4 + 1 >= v3)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v14 count:16];
        if (!v7)
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

- (void)recoverWorkoutWithWorkoutSession:(id)a3
{
  v84 = *MEMORY[0x277D85DE8];
  v80 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v78 = [location[0] workoutConfiguration];
  v77 = [location[0] associatedWorkoutBuilder];
  v76 = 0;
  v47 = [location[0] workoutConfiguration];
  v75 = [v47 fitnessMachineSessionUUID];
  v74 = 1;
  v48 = [v77 metadata];
  v73 = [v48 objectForKeyedSubscript:*MEMORY[0x277CCE158]];
  *&v3 = MEMORY[0x277D82BD8](v48).n128_u64[0];
  if (v73)
  {
    v74 = [v73 integerValue];
  }

  v72 = [v77 metadata];
  v71 = [WOCoreWorkoutConfiguration deserializeFrom:v72];
  if (v71)
  {
    v33 = [v71 activityType];
    v60 = 0;
    v58 = 0;
    v56 = 0;
    v34 = 0;
    if ([v33 identifier] == 46)
    {
      v61 = [v71 activityType];
      v60 = 1;
      v59 = [v61 lapLength];
      v58 = 1;
      v57 = [v78 lapLength];
      v56 = 1;
      v34 = v59 != v57;
    }

    if (v56)
    {
      MEMORY[0x277D82BD8](v57);
    }

    if (v58)
    {
      MEMORY[0x277D82BD8](v59);
    }

    if (v60)
    {
      MEMORY[0x277D82BD8](v61);
    }

    *&v11 = MEMORY[0x277D82BD8](v33).n128_u64[0];
    if (v34)
    {
      v32 = [v71 activityType];
      v31 = [v78 lapLength];
      v30 = [MEMORY[0x277CCDAB0] meterUnit];
      [v31 doubleValueForUnit:?];
      v29 = [v32 activityTypeByAddingLapLength:?];
      [v71 setActivityType:?];
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v32);
    }

    v12 = [[WOCoreLiveWorkoutConfiguration alloc] initWithConfiguration:v71 startSource:10 activityMoveMode:v74 activityPausedRingsObserver:v80->_activityPausedRingsObserver catalogWorkout:0 isWorkoutBuddyFeatureSupported:[(WOCoreWorkoutVoiceAvailabilityProvider *)v80->_workoutVoiceAvailabilityProvider isFeatureSupported]];
    v13 = v76;
    v76 = v12;
    MEMORY[0x277D82BD8](v13);
    v55 = 0;
    memset(__b, 0, sizeof(__b));
    v27 = [v77 workoutActivities];
    v28 = [v27 countByEnumeratingWithState:__b objects:v83 count:16];
    if (v28)
    {
      v24 = *__b[2];
      v25 = 0;
      v26 = v28;
      while (1)
      {
        v23 = v25;
        if (*__b[2] != v24)
        {
          objc_enumerationMutation(v27);
        }

        v54 = *(__b[1] + 8 * v25);
        if (!v55 || (v21 = [v55 startDate], v20 = objc_msgSend(v54, "startDate"), v22 = objc_msgSend(v21, "compare:"), MEMORY[0x277D82BD8](v20), MEMORY[0x277D82BD8](v21), v22 == -1))
        {
          objc_storeStrong(&v55, v54);
        }

        ++v25;
        if (v23 + 1 >= v26)
        {
          v25 = 0;
          v26 = [v27 countByEnumeratingWithState:__b objects:v83 count:16];
          if (!v26)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v27);
    if (v55)
    {
      _HKInitializeLogging();
      oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v51 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        v19 = [v55 metadata];
        __os_log_helper_16_2_2_8_64_8_64(v82, v19, v55);
        _os_log_error_impl(&dword_20AEA4000, oslog, v51, "Need to restore from the metadata %@ of %@", v82, 0x16u);
        MEMORY[0x277D82BD8](v19);
      }

      objc_storeStrong(&oslog, 0);
      v17 = v76;
      v18 = [v55 metadata];
      [v17 restoreFromWorkoutActivityMetadata:?];
      MEMORY[0x277D82BD8](v18);
    }

    objc_storeStrong(&v55, 0);
  }

  else
  {
    _HKInitializeLogging();
    v70 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    type = OS_LOG_TYPE_ERROR;
    if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
    {
      log = v70;
      v46 = type;
      __os_log_helper_16_0_0(v68);
      _os_log_error_impl(&dword_20AEA4000, log, v46, "No stored workout configuration, need to rebuild from scratch.", v68, 2u);
    }

    objc_storeStrong(&v70, 0);
    v67 = [v78 activityType];
    IsIndoorLocationType = _IsIndoorLocationType([v78 locationType]);
    v65 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if ([v78 swimmingLocationType])
    {
      v44 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v78, "swimmingLocationType")}];
      v4 = *MEMORY[0x277CCC510];
      [v65 setObject:? forKeyedSubscript:?];
      MEMORY[0x277D82BD8](v44);
    }

    v43 = [v78 lapLength];
    v5 = MEMORY[0x277D82BD8](v43).n128_u64[0];
    if (v43)
    {
      v42 = [v78 lapLength];
      v6 = *MEMORY[0x277CCC4D0];
      [v65 setObject:? forKeyedSubscript:?];
      v5 = MEMORY[0x277D82BD8](v42).n128_u64[0];
    }

    v64 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:v67 isIndoor:IsIndoorLocationType metadata:{v65, *&v5}];
    v63 = 0;
    if ([v77 goalType])
    {
      v40 = MEMORY[0x277D0A838];
      v39 = [v77 goalType];
      v41 = [v77 goal];
      v7 = [v40 goalWithGoalTypeIdentifier:v39 value:?];
      v8 = v63;
      v63 = v7;
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v41);
    }

    v62 = [(WOCoreWorkoutConfigurationOccurrenceStore *)v80->_occurrenceStore goalConfigurationFor:v64 goal:v63];
    v38 = [WOCoreLiveWorkoutConfiguration alloc];
    v35 = v62;
    v36 = v74;
    activityPausedRingsObserver = v80->_activityPausedRingsObserver;
    [(WOCoreWorkoutVoiceAvailabilityProvider *)v80->_workoutVoiceAvailabilityProvider isFeatureSupported];
    v9 = [WOCoreLiveWorkoutConfiguration initWithConfiguration:v38 startSource:"initWithConfiguration:startSource:activityMoveMode:activityPausedRingsObserver:catalogWorkout:isWorkoutBuddyFeatureSupported:" activityMoveMode:v35 activityPausedRingsObserver:10 catalogWorkout:v36 isWorkoutBuddyFeatureSupported:activityPausedRingsObserver];
    v10 = v76;
    v76 = v9;
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v62, 0);
    objc_storeStrong(&v63, 0);
    objc_storeStrong(&v64, 0);
    objc_storeStrong(&v65, 0);
  }

  [v76 setFitnessMachineSessionUUID:v75];
  v50 = [[NLWorkout alloc] initWithWorkoutConfiguration:v76 healthStore:v80->_healthStore formattingManager:v80->_formattingManager session:location[0] locationProvider:v80->_locationProvider];
  _HKInitializeLogging();
  v49 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v81, v50);
    _os_log_impl(&dword_20AEA4000, v49, OS_LOG_TYPE_DEFAULT, "[WorkoutController] Start recovered workout %{public}@ #w0", v81, 0xCu);
  }

  objc_storeStrong(&v49, 0);
  v15 = v80;
  v14 = v50;
  v16 = +[NLSessionCountdownDeadline defaultDeadline];
  [NLWorkoutController _startSessionWithWorkout:v15 startSource:"_startSessionWithWorkout:startSource:countdownDeadline:completion:" countdownDeadline:v14 completion:10];
  MEMORY[0x277D82BD8](v16);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v71, 0);
  objc_storeStrong(&v72, 0);
  objc_storeStrong(&v73, 0);
  objc_storeStrong(&v75, 0);
  objc_storeStrong(&v76, 0);
  objc_storeStrong(&v77, 0);
  objc_storeStrong(&v78, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __56__NLWorkoutController_recoverWorkoutWithWorkoutSession___block_invoke(void *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  objc_storeStrong(location, 0);
}

- (void)workout:(id)a3 didMoveToState:(int64_t)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v23 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v21 = a4;
  _HKInitializeLogging();
  v20 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v19 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    log = v20;
    type = v19;
    v10 = location[0];
    v13 = NLWorkoutStateIdentifierDescription(v21);
    v18 = MEMORY[0x277D82BE0](v13);
    __os_log_helper_16_2_2_8_66_8_66(v25, v10, v18);
    _os_log_impl(&dword_20AEA4000, log, type, "[WorkoutController] Workout %{public}@ moved to state %{public}@", v25, 0x16u);
    MEMORY[0x277D82BD8](v13);
    objc_storeStrong(&v18, 0);
  }

  objc_storeStrong(&v20, 0);
  if (v21 == 5)
  {
    [(NSMutableSet *)v23->_savingWorkouts addObject:location[0]];
  }

  else if (v21 == 6)
  {
    [(NSMutableSet *)v23->_savingWorkouts removeObject:location[0]];
  }

  v17 = [(NSHashTable *)v23->_observers allObjects];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](v17);
  v9 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
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

      v16 = *(__b[1] + 8 * v6);
      [v16 workoutController:v23 transitionedWorkout:location[0] toState:v21];
      ++v6;
      if (v4 + 1 >= v7)
      {
        v6 = 0;
        v7 = [obj countByEnumeratingWithState:__b objects:v24 count:16];
        if (!v7)
        {
          break;
        }
      }
    }
  }

  MEMORY[0x277D82BD8](obj);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)workout:(id)a3 pausedReasonsDidUpdate:(unint64_t)a4
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(location, 0);
}

- (void)workout:(id)a3 willEndWithHKWorkoutSnapshot:(id)a4 endReason:(unint64_t)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v38 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v36 = 0;
  objc_storeStrong(&v36, a4);
  v35 = a5;
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v20 = type;
      v24 = [location[0] identifier];
      v23 = FIUILastFourCharactersOfUUID();
      v17 = MEMORY[0x277D82BE0](v23);
      v32 = v17;
      v22 = NLWorkoutEndReasonDescription(v35);
      v18 = MEMORY[0x277D82BE0](v22);
      v31 = v18;
      v21 = [v36 fiui_keyValueSummary];
      v30 = MEMORY[0x277D82BE0](v21);
      __os_log_helper_16_2_3_8_66_8_66_8_66(v41, v17, v18, v30);
      _os_log_impl(&dword_20AEA4000, log, v20, "Workout will end UUID=%{public}@ endReason=%{public}@ snapshot={ %{public}@ } #w0", v41, 0x20u);
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](v24);
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
    }

    objc_storeStrong(&oslog, 0);
    memset(__b, 0, sizeof(__b));
    v14 = [v36 metadata];
    v15 = [v14 keyEnumerator];
    v16 = [v15 countByEnumeratingWithState:__b objects:v40 count:{16, MEMORY[0x277D82BD8](v14).n128_f64[0]}];
    if (v16)
    {
      v11 = *__b[2];
      v12 = 0;
      v13 = v16;
      while (1)
      {
        v10 = v12;
        if (*__b[2] != v11)
        {
          objc_enumerationMutation(v15);
        }

        v29 = *(__b[1] + 8 * v12);
        _HKInitializeLogging();
        v27 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v27;
          v6 = v29;
          v9 = [v36 metadata];
          v8 = [v9 objectForKeyedSubscript:v29];
          __os_log_helper_16_2_2_8_66_8_66(v39, v6, v8);
          _os_log_impl(&dword_20AEA4000, v7, OS_LOG_TYPE_DEFAULT, "-- [metadata] %{public}@=%{public}@", v39, 0x16u);
          MEMORY[0x277D82BD8](v8);
          MEMORY[0x277D82BD8](v9);
        }

        objc_storeStrong(&v27, 0);
        ++v12;
        if (v10 + 1 >= v13)
        {
          v12 = 0;
          v13 = [v15 countByEnumeratingWithState:__b objects:v40 count:16];
          if (!v13)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](v15);
  }

  v5 = [(NLWorkoutController *)v38 interfaceDelegate];
  [(NLWorkoutUIDelegate *)v5 endWorkout:location[0] withHKWorkout:v36 endReason:v35];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)workout:(id)a3 didEndWithHKWorkout:(id)a4 endReason:(unint64_t)a5
{
  v26 = *MEMORY[0x277D85DE8];
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = 0;
  objc_storeStrong(&v22, a4);
  v21 = a5;
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    _HKInitializeLogging();
    v20 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      log = v20;
      type = v19;
      v13 = [location[0] identifier];
      v12 = FIUILastFourCharactersOfUUID();
      v6 = MEMORY[0x277D82BE0](v12);
      v18 = v6;
      v11 = NLWorkoutEndReasonDescription(v21);
      v7 = MEMORY[0x277D82BE0](v11);
      v17 = v7;
      v10 = [v22 fiui_keyValueSummary];
      v16 = MEMORY[0x277D82BE0](v10);
      __os_log_helper_16_2_3_8_66_8_64_8_64(v25, v6, v7, v16);
      _os_log_impl(&dword_20AEA4000, log, type, "Workout did end UUID=%{public}@ endReason=%@ snapshot={ %@ } #w0", v25, 0x20u);
      MEMORY[0x277D82BD8](v10);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](v13);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v18, 0);
    }

    objc_storeStrong(&v20, 0);
  }

  v5 = [(NLWorkoutController *)v24 interfaceDelegate];
  [(NLWorkoutUIDelegate *)v5 updateWorkout:location[0] withHKWorkout:v22 workoutIsFinal:1];
  MEMORY[0x277D82BD8](v5);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)workout:(id)a3 didUpdateHKWorkout:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    _HKInitializeLogging();
    v15 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      log = v15;
      type = v14;
      v10 = [location[0] identifier];
      v9 = FIUILastFourCharactersOfUUID();
      v5 = MEMORY[0x277D82BE0](v9);
      v13 = v5;
      v8 = [v16 fiui_keyValueSummary];
      v12 = MEMORY[0x277D82BE0](v8);
      __os_log_helper_16_2_2_8_66_8_64(v19, v5, v12);
      _os_log_impl(&dword_20AEA4000, log, type, "Workout did update UUID=%{public}@ snapshot={ %@ } #w0", v19, 0x16u);
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](v10);
      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v15, 0);
  }

  v4 = [(NLWorkoutController *)v18 interfaceDelegate];
  [(NLWorkoutUIDelegate *)v4 updateWorkout:location[0] withHKWorkout:v16 workoutIsFinal:0];
  MEMORY[0x277D82BD8](v4);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)didDiscardWorkout:(id)a3
{
  v6 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v4 = [(NLWorkoutController *)v6 interfaceDelegate];
  [(NLWorkoutUIDelegate *)v4 didDiscardWorkout:location[0]];
  *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
  [(NLWorkoutController *)v6 invalidateInUseAssertion];
  objc_storeStrong(location, 0);
}

- (void)addObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSHashTable *)v4->_observers addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeObserver:(id)a3
{
  v4 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  [(NSHashTable *)v4->_observers removeObject:location[0]];
  objc_storeStrong(location, 0);
}

+ (unint64_t)endReasonForStartSource:(unint64_t)a3
{
  if (!a3)
  {
    __assert_rtn("+[NLWorkoutController endReasonForStartSource:]", "NLWorkoutController.m", 461, "false");
  }

  if (a3 - 1 > 3)
  {
    if (a3 == 5)
    {
      return 5;
    }

    if (a3 != 6)
    {
      switch(a3)
      {
        case 7uLL:
          return 10;
        case 8uLL:
          return 9;
        case 9uLL:
          return 8;
      }

      if (a3 - 10 > 0xE)
      {
        return 0;
      }
    }
  }

  return 3;
}

- (NLWorkoutUIDelegate)interfaceDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_interfaceDelegate);

  return WeakRetained;
}

- (void)startSessionWith:(WOCoreLiveWorkoutConfiguration *)a3 countdownDeadline:(NLSessionCountdownDeadline *)a4 completionHandler:(id)a5
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(a5);
  v14 = swift_allocObject();
  v14[2] = a3;
  v14[3] = a4;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &async function pointer to partial apply for @objc closure #1 in NLWorkoutController.startSession(with:countdownDeadline:);
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &_sIeghH_IeAgH_TRTATu;
  v17[5] = v16;
  v18 = a3;
  v19 = a4;
  v20 = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTATu, v17);
}

- (id)sessionControlForRecovery
{
  v2 = self;
  v3 = [(NLWorkoutController *)v2 activeWorkout];
  v4 = [objc_allocWithZone(NLSessionControl) initWithWorkout_];

  if (v4)
  {

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end