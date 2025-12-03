@interface NLWorkoutController
+ (unint64_t)endReasonForStartSource:(unint64_t)source;
- (BOOL)currentSessionHasEnded;
- (BOOL)endCurrentWorkoutIfNeededForReason:(unint64_t)reason;
- (NLWorkoutController)initWithHealthStore:(id)store formattingManager:(id)manager activityPausedRingsObserver:(id)observer backgroundPermissionsChecker:(id)checker occurrenceStore:(id)occurrenceStore locationProvider:(id)provider workoutVoiceAvailabilityProvider:(id)availabilityProvider;
- (NLWorkoutUIDelegate)interfaceDelegate;
- (id)_unitPreferenceObservers;
- (id)sessionControlForRecovery;
- (void)_logWorkoutStartWithConfiguration:(id)configuration workout:(id)workout;
- (void)_startMirroredSessionWithLiveWorkoutConfiguration:(id)configuration;
- (void)_startSessionWithWorkout:(id)workout startSource:(unint64_t)source countdownDeadline:(id)deadline completion:(id)completion;
- (void)_unitPreferencesDidChange:(id)change;
- (void)addObserver:(id)observer;
- (void)didDiscardWorkout:(id)workout;
- (void)didTransitionToNewActiveWorkout:(id)workout startSource:(unint64_t)source countdownDeadline:(id)deadline;
- (void)invalidateInUseAssertion;
- (void)recoverWorkoutWithWorkoutSession:(id)session;
- (void)removeObserver:(id)observer;
- (void)requestLocationAuthorizationIfNeededForWorkout:(id)workout completion:(id)completion;
- (void)setActiveWorkout:(id)workout startSource:(unint64_t)source countdownDeadline:(id)deadline;
- (void)setCurrentWorkoutPaused:(BOOL)paused atDate:(id)date eventSource:(unint64_t)source;
- (void)startSessionWith:(WOCoreLiveWorkoutConfiguration *)with countdownDeadline:(NLSessionCountdownDeadline *)deadline completionHandler:(id)handler;
- (void)workout:(id)workout didEndWithHKWorkout:(id)kWorkout endReason:(unint64_t)reason;
- (void)workout:(id)workout didMoveToState:(int64_t)state;
- (void)workout:(id)workout didUpdateHKWorkout:(id)kWorkout;
- (void)workout:(id)workout pausedReasonsDidUpdate:(unint64_t)update;
- (void)workout:(id)workout willEndWithHKWorkoutSnapshot:(id)snapshot endReason:(unint64_t)reason;
@end

@implementation NLWorkoutController

- (id)_unitPreferenceObservers
{
  selfCopy = self;
  v9[1] = a2;
  v9[0] = MEMORY[0x277D82BE0](MEMORY[0x277CBEBF8]);
  if (selfCopy->_activeWorkout)
  {
    v2 = [v9[0] arrayByAddingObject:selfCopy->_activeWorkout];
    v3 = v9[0];
    v9[0] = v2;
    MEMORY[0x277D82BD8](v3);
  }

  if ([(NSMutableSet *)selfCopy->_savingWorkouts count])
  {
    allObjects = [(NSMutableSet *)selfCopy->_savingWorkouts allObjects];
    v4 = [v9[0] arrayByAddingObjectsFromArray:?];
    v5 = v9[0];
    v9[0] = v4;
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](allObjects);
  }

  v7 = MEMORY[0x277D82BE0](v9[0]);
  objc_storeStrong(v9, 0);

  return v7;
}

- (NLWorkoutController)initWithHealthStore:(id)store formattingManager:(id)manager activityPausedRingsObserver:(id)observer backgroundPermissionsChecker:(id)checker occurrenceStore:(id)occurrenceStore locationProvider:(id)provider workoutVoiceAvailabilityProvider:(id)availabilityProvider
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, store);
  v31 = 0;
  objc_storeStrong(&v31, manager);
  v30 = 0;
  objc_storeStrong(&v30, observer);
  v29 = 0;
  objc_storeStrong(&v29, checker);
  v28 = 0;
  objc_storeStrong(&v28, occurrenceStore);
  v27 = 0;
  objc_storeStrong(&v27, provider);
  v26 = 0;
  objc_storeStrong(&v26, availabilityProvider);
  v9 = selfCopy;
  selfCopy = 0;
  v25.receiver = v9;
  v25.super_class = NLWorkoutController;
  v19 = [(NLWorkoutController *)&v25 init];
  selfCopy = v19;
  objc_storeStrong(&selfCopy, v19);
  if (v19)
  {
    objc_storeStrong(&selfCopy->_healthStore, location[0]);
    objc_storeStrong(&selfCopy->_formattingManager, v31);
    v10 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:0];
    savingWorkouts = selfCopy->_savingWorkouts;
    selfCopy->_savingWorkouts = v10;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = selfCopy->_observers;
    selfCopy->_observers = weakObjectsHashTable;
    MEMORY[0x277D82BD8](observers);
    objc_storeStrong(&selfCopy->_backgroundPermissionsChecker, v29);
    objc_storeStrong(&selfCopy->_occurrenceStore, v28);
    objc_storeStrong(&selfCopy->_activityPausedRingsObserver, v30);
    v14 = objc_alloc_init(NLLocationRequestManager);
    locationRequestManager = selfCopy->_locationRequestManager;
    selfCopy->_locationRequestManager = v14;
    MEMORY[0x277D82BD8](locationRequestManager);
    objc_storeStrong(&selfCopy->_locationProvider, v27);
    objc_storeStrong(&selfCopy->_workoutVoiceAvailabilityProvider, v26);
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:selfCopy selector:sel__unitPreferencesDidChange_ name:*MEMORY[0x277D0A848] object:0];
    MEMORY[0x277D82BD8](defaultCenter);
  }

  v17 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v26, 0);
  objc_storeStrong(&v27, 0);
  objc_storeStrong(&v28, 0);
  objc_storeStrong(&v29, 0);
  objc_storeStrong(&v30, 0);
  objc_storeStrong(&v31, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v17;
}

- (void)_unitPreferencesDidChange:(id)change
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, change);
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

  _unitPreferenceObservers = [(NLWorkoutController *)selfCopy _unitPreferenceObservers];
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __49__NLWorkoutController__unitPreferencesDidChange___block_invoke;
  v10 = &unk_277D88FF0;
  v11 = MEMORY[0x277D82BE0](selfCopy);
  [_unitPreferenceObservers enumerateObjectsUsingBlock:&v6];
  MEMORY[0x277D82BD8](_unitPreferenceObservers);
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

- (BOOL)endCurrentWorkoutIfNeededForReason:(unint64_t)reason
{
  v4 = 0;
  if (![(NLWorkoutController *)self currentSessionHasEnded])
  {
    [(NLWorkout *)self->_activeWorkout endTrackingWithEndReason:reason];
    objc_storeStrong(&self->_activeWorkout, 0);
    return 1;
  }

  return v4;
}

- (void)setCurrentWorkoutPaused:(BOOL)paused atDate:(id)date eventSource:(unint64_t)source
{
  selfCopy = self;
  v8 = a2;
  pausedCopy = paused;
  location = 0;
  objc_storeStrong(&location, date);
  if (@objc NLWorkoutController.hasCurrentSession()(selfCopy, "hasCurrentSession"))
  {
    [(NLWorkout *)selfCopy->_activeWorkout setPaused:pausedCopy atDate:location eventSource:source];
  }

  objc_storeStrong(&location, 0);
}

- (BOOL)currentSessionHasEnded
{
  sessionActivity = [(NLWorkout *)self->_activeWorkout sessionActivity];
  v5 = 0;
  IsTracking = 0;
  if (sessionActivity)
  {
    sessionActivity2 = [(NLWorkout *)self->_activeWorkout sessionActivity];
    v5 = 1;
    IsTracking = NLSessionActivityIsTracking(sessionActivity2);
  }

  if (v5)
  {
    MEMORY[0x277D82BD8](sessionActivity2);
  }

  MEMORY[0x277D82BD8](sessionActivity);
  return !IsTracking;
}

- (void)didTransitionToNewActiveWorkout:(id)workout startSource:(unint64_t)source countdownDeadline:(id)deadline
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workout);
  sourceCopy = source;
  v9 = 0;
  objc_storeStrong(&v9, deadline);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_interfaceDelegate);
  [WeakRetained startWorkout:location[0] startSource:sourceCopy countdownDeadline:v9];
  *&v5 = MEMORY[0x277D82BD8](WeakRetained).n128_u64[0];
  if (sourceCopy == 10)
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

- (void)setActiveWorkout:(id)workout startSource:(unint64_t)source countdownDeadline:(id)deadline
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workout);
  sourceCopy = source;
  v9 = 0;
  objc_storeStrong(&v9, deadline);
  objc_storeStrong(&selfCopy->_activeWorkout, location[0]);
  [(NLWorkout *)selfCopy->_activeWorkout setEndingDelegate:selfCopy];
  analyticsEventBuilder = [(NLWorkout *)selfCopy->_activeWorkout analyticsEventBuilder];
  [(NLAnalyticsWorkoutEventBuilder *)analyticsEventBuilder recordStartSource:sourceCopy];
  *&v5 = MEMORY[0x277D82BD8](analyticsEventBuilder).n128_u64[0];
  [(NLWorkout *)selfCopy->_activeWorkout addStateObserver:selfCopy, v5];
  [(NLWorkoutController *)selfCopy didTransitionToNewActiveWorkout:location[0] startSource:sourceCopy countdownDeadline:v9];
  objc_storeStrong(&v9, 0);
  objc_storeStrong(location, 0);
}

- (void)requestLocationAuthorizationIfNeededForWorkout:(id)workout completion:(id)completion
{
  v17 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workout);
  v13 = 0;
  objc_storeStrong(&v13, completion);
  activityType = [location[0] activityType];
  [activityType effectiveTypeIdentifier];
  activityType2 = [location[0] activityType];
  [activityType2 isIndoor];
  activityType3 = [location[0] activityType];
  [activityType3 swimmingLocationType];
  IsRouteable = _HKWorkoutActivityTypeIsRouteable();
  MEMORY[0x277D82BD8](activityType3);
  MEMORY[0x277D82BD8](activityType2);
  *&v4 = MEMORY[0x277D82BD8](activityType).n128_u64[0];
  v12 = IsRouteable;
  if (IsRouteable)
  {
    [(NLLocationRequestManager *)selfCopy->_locationRequestManager requestLocationAuthorizationWithCompletion:&__block_literal_global_5, v4];
    (*(v13 + 2))();
  }

  else
  {
    _HKInitializeLogging();
    v11 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      activityType4 = [location[0] activityType];
      __os_log_helper_16_2_1_8_64(v16, activityType4);
      _os_log_impl(&dword_20AEA4000, v11, OS_LOG_TYPE_DEFAULT, "In-use assertion not required for non-routeable activity type %@", v16, 0xCu);
      MEMORY[0x277D82BD8](activityType4);
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
  selfCopy = self;
  oslog[1] = a2;
  _HKInitializeLogging();
  oslog[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(oslog[0], OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_64(v4, selfCopy->_inUseAssertion);
    _os_log_impl(&dword_20AEA4000, oslog[0], OS_LOG_TYPE_DEFAULT, "Invalidating in-use assertion %@", v4, 0xCu);
  }

  objc_storeStrong(oslog, 0);
  [(CLInUseAssertion *)selfCopy->_inUseAssertion invalidate];
  objc_storeStrong(&selfCopy->_inUseAssertion, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_logWorkoutStartWithConfiguration:(id)configuration workout:(id)workout
{
  v38 = *MEMORY[0x277D85DE8];
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  v35 = 0;
  objc_storeStrong(&v35, workout);
  predictionSessionUUID = [location[0] predictionSessionUUID];
  v32 = 0;
  v30 = 0;
  v28 = 0;
  if (predictionSessionUUID)
  {
    v14 = MEMORY[0x277CCACA8];
    predictionSessionUUID2 = [location[0] predictionSessionUUID];
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
    MEMORY[0x277D82BD8](predictionSessionUUID2);
  }

  *&v5 = MEMORY[0x277D82BD8](predictionSessionUUID).n128_u64[0];
  fitnessMachineSessionUUID = [location[0] fitnessMachineSessionUUID];
  v25 = 0;
  v23 = 0;
  v21 = 0;
  if (fitnessMachineSessionUUID)
  {
    v12 = MEMORY[0x277CCACA8];
    fitnessMachineSessionUUID2 = [location[0] fitnessMachineSessionUUID];
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
    MEMORY[0x277D82BD8](fitnessMachineSessionUUID2);
  }

  MEMORY[0x277D82BD8](fitnessMachineSessionUUID);
  _HKInitializeLogging();
  oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  type = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
  {
    log = oslog;
    v9 = type;
    keyValueDescription = [v35 keyValueDescription];
    v7 = MEMORY[0x277D82BE0](keyValueDescription);
    v18 = v7;
    v10 = NLWorkoutStartSourceDescription([location[0] startSource]);
    v17 = MEMORY[0x277D82BE0](v10);
    __os_log_helper_16_2_4_8_66_8_66_8_66_8_66(v37, v7, v17, v34, v27);
    _os_log_impl(&dword_20AEA4000, log, v9, "Starting workout %{public}@ startSource=%{public}@ %{public}@%{public}@ #w0", v37, 0x2Au);
    MEMORY[0x277D82BD8](v10);
    MEMORY[0x277D82BD8](keyValueDescription);
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

- (void)_startSessionWithWorkout:(id)workout startSource:(unint64_t)source countdownDeadline:(id)deadline completion:(id)completion
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workout);
  sourceCopy = source;
  v21 = 0;
  objc_storeStrong(&v21, deadline);
  v20 = 0;
  objc_storeStrong(&v20, completion);
  [(NLWorkoutController *)selfCopy endCurrentWorkoutIfNeededForReason:[NLWorkoutController endReasonForStartSource:sourceCopy]];
  v10 = selfCopy;
  v9 = location[0];
  v11 = MEMORY[0x277D85DD0];
  v12 = -1073741824;
  v13 = 0;
  v14 = __89__NLWorkoutController__startSessionWithWorkout_startSource_countdownDeadline_completion___block_invoke;
  v15 = &unk_277D89038;
  v16 = MEMORY[0x277D82BE0](location[0]);
  v17 = MEMORY[0x277D82BE0](selfCopy);
  v19[1] = sourceCopy;
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

- (void)_startMirroredSessionWithLiveWorkoutConfiguration:(id)configuration
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, configuration);
  -[NLWorkoutController endCurrentWorkoutIfNeededForReason:](selfCopy, "endCurrentWorkoutIfNeededForReason:", +[NLWorkoutController endReasonForStartSource:](NLWorkoutController, "endReasonForStartSource:", [location[0] startSource]));
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](selfCopy->_observers);
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
      [v11 workoutController:selfCopy mirroredStart:{location[0], v7}];
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

- (void)recoverWorkoutWithWorkoutSession:(id)session
{
  v84 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, session);
  workoutConfiguration = [location[0] workoutConfiguration];
  associatedWorkoutBuilder = [location[0] associatedWorkoutBuilder];
  v76 = 0;
  workoutConfiguration2 = [location[0] workoutConfiguration];
  fitnessMachineSessionUUID = [workoutConfiguration2 fitnessMachineSessionUUID];
  integerValue = 1;
  metadata = [associatedWorkoutBuilder metadata];
  v73 = [metadata objectForKeyedSubscript:*MEMORY[0x277CCE158]];
  *&v3 = MEMORY[0x277D82BD8](metadata).n128_u64[0];
  if (v73)
  {
    integerValue = [v73 integerValue];
  }

  metadata2 = [associatedWorkoutBuilder metadata];
  v71 = [WOCoreWorkoutConfiguration deserializeFrom:metadata2];
  if (v71)
  {
    activityType = [v71 activityType];
    v60 = 0;
    v58 = 0;
    v56 = 0;
    v34 = 0;
    if ([activityType identifier] == 46)
    {
      activityType2 = [v71 activityType];
      v60 = 1;
      lapLength = [activityType2 lapLength];
      v58 = 1;
      lapLength2 = [workoutConfiguration lapLength];
      v56 = 1;
      v34 = lapLength != lapLength2;
    }

    if (v56)
    {
      MEMORY[0x277D82BD8](lapLength2);
    }

    if (v58)
    {
      MEMORY[0x277D82BD8](lapLength);
    }

    if (v60)
    {
      MEMORY[0x277D82BD8](activityType2);
    }

    *&v11 = MEMORY[0x277D82BD8](activityType).n128_u64[0];
    if (v34)
    {
      activityType3 = [v71 activityType];
      lapLength3 = [workoutConfiguration lapLength];
      meterUnit = [MEMORY[0x277CCDAB0] meterUnit];
      [lapLength3 doubleValueForUnit:?];
      v29 = [activityType3 activityTypeByAddingLapLength:?];
      [v71 setActivityType:?];
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](meterUnit);
      MEMORY[0x277D82BD8](lapLength3);
      MEMORY[0x277D82BD8](activityType3);
    }

    v12 = [[WOCoreLiveWorkoutConfiguration alloc] initWithConfiguration:v71 startSource:10 activityMoveMode:integerValue activityPausedRingsObserver:selfCopy->_activityPausedRingsObserver catalogWorkout:0 isWorkoutBuddyFeatureSupported:[(WOCoreWorkoutVoiceAvailabilityProvider *)selfCopy->_workoutVoiceAvailabilityProvider isFeatureSupported]];
    v13 = v76;
    v76 = v12;
    MEMORY[0x277D82BD8](v13);
    v55 = 0;
    memset(__b, 0, sizeof(__b));
    workoutActivities = [associatedWorkoutBuilder workoutActivities];
    v28 = [workoutActivities countByEnumeratingWithState:__b objects:v83 count:16];
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
          objc_enumerationMutation(workoutActivities);
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
          v26 = [workoutActivities countByEnumeratingWithState:__b objects:v83 count:16];
          if (!v26)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](workoutActivities);
    if (v55)
    {
      _HKInitializeLogging();
      oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
      v51 = OS_LOG_TYPE_ERROR;
      if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
      {
        metadata3 = [v55 metadata];
        __os_log_helper_16_2_2_8_64_8_64(v82, metadata3, v55);
        _os_log_error_impl(&dword_20AEA4000, oslog, v51, "Need to restore from the metadata %@ of %@", v82, 0x16u);
        MEMORY[0x277D82BD8](metadata3);
      }

      objc_storeStrong(&oslog, 0);
      v17 = v76;
      metadata4 = [v55 metadata];
      [v17 restoreFromWorkoutActivityMetadata:?];
      MEMORY[0x277D82BD8](metadata4);
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
    activityType4 = [workoutConfiguration activityType];
    IsIndoorLocationType = _IsIndoorLocationType([workoutConfiguration locationType]);
    v65 = objc_alloc_init(MEMORY[0x277CBEB38]);
    if ([workoutConfiguration swimmingLocationType])
    {
      v44 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(workoutConfiguration, "swimmingLocationType")}];
      v4 = *MEMORY[0x277CCC510];
      [v65 setObject:? forKeyedSubscript:?];
      MEMORY[0x277D82BD8](v44);
    }

    lapLength4 = [workoutConfiguration lapLength];
    v5 = MEMORY[0x277D82BD8](lapLength4).n128_u64[0];
    if (lapLength4)
    {
      lapLength5 = [workoutConfiguration lapLength];
      v6 = *MEMORY[0x277CCC4D0];
      [v65 setObject:? forKeyedSubscript:?];
      v5 = MEMORY[0x277D82BD8](lapLength5).n128_u64[0];
    }

    v64 = [MEMORY[0x277D0A810] activityTypeWithHKWorkoutActivityTypeIdentifier:activityType4 isIndoor:IsIndoorLocationType metadata:{v65, *&v5}];
    v63 = 0;
    if ([associatedWorkoutBuilder goalType])
    {
      v40 = MEMORY[0x277D0A838];
      goalType = [associatedWorkoutBuilder goalType];
      goal = [associatedWorkoutBuilder goal];
      v7 = [v40 goalWithGoalTypeIdentifier:goalType value:?];
      v8 = v63;
      v63 = v7;
      MEMORY[0x277D82BD8](v8);
      MEMORY[0x277D82BD8](goal);
    }

    v62 = [(WOCoreWorkoutConfigurationOccurrenceStore *)selfCopy->_occurrenceStore goalConfigurationFor:v64 goal:v63];
    v38 = [WOCoreLiveWorkoutConfiguration alloc];
    v35 = v62;
    v36 = integerValue;
    activityPausedRingsObserver = selfCopy->_activityPausedRingsObserver;
    [(WOCoreWorkoutVoiceAvailabilityProvider *)selfCopy->_workoutVoiceAvailabilityProvider isFeatureSupported];
    v9 = [WOCoreLiveWorkoutConfiguration initWithConfiguration:v38 startSource:"initWithConfiguration:startSource:activityMoveMode:activityPausedRingsObserver:catalogWorkout:isWorkoutBuddyFeatureSupported:" activityMoveMode:v35 activityPausedRingsObserver:10 catalogWorkout:v36 isWorkoutBuddyFeatureSupported:activityPausedRingsObserver];
    v10 = v76;
    v76 = v9;
    MEMORY[0x277D82BD8](v10);
    objc_storeStrong(&v62, 0);
    objc_storeStrong(&v63, 0);
    objc_storeStrong(&v64, 0);
    objc_storeStrong(&v65, 0);
  }

  [v76 setFitnessMachineSessionUUID:fitnessMachineSessionUUID];
  v50 = [[NLWorkout alloc] initWithWorkoutConfiguration:v76 healthStore:selfCopy->_healthStore formattingManager:selfCopy->_formattingManager session:location[0] locationProvider:selfCopy->_locationProvider];
  _HKInitializeLogging();
  v49 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v81, v50);
    _os_log_impl(&dword_20AEA4000, v49, OS_LOG_TYPE_DEFAULT, "[WorkoutController] Start recovered workout %{public}@ #w0", v81, 0xCu);
  }

  objc_storeStrong(&v49, 0);
  v15 = selfCopy;
  v14 = v50;
  v16 = +[NLSessionCountdownDeadline defaultDeadline];
  [NLWorkoutController _startSessionWithWorkout:v15 startSource:"_startSessionWithWorkout:startSource:countdownDeadline:completion:" countdownDeadline:v14 completion:10];
  MEMORY[0x277D82BD8](v16);
  objc_storeStrong(&v50, 0);
  objc_storeStrong(&v71, 0);
  objc_storeStrong(&metadata2, 0);
  objc_storeStrong(&v73, 0);
  objc_storeStrong(&fitnessMachineSessionUUID, 0);
  objc_storeStrong(&v76, 0);
  objc_storeStrong(&associatedWorkoutBuilder, 0);
  objc_storeStrong(&workoutConfiguration, 0);
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

- (void)workout:(id)workout didMoveToState:(int64_t)state
{
  v26 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workout);
  stateCopy = state;
  _HKInitializeLogging();
  v20 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v19 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    log = v20;
    type = v19;
    v10 = location[0];
    v13 = NLWorkoutStateIdentifierDescription(stateCopy);
    v18 = MEMORY[0x277D82BE0](v13);
    __os_log_helper_16_2_2_8_66_8_66(v25, v10, v18);
    _os_log_impl(&dword_20AEA4000, log, type, "[WorkoutController] Workout %{public}@ moved to state %{public}@", v25, 0x16u);
    MEMORY[0x277D82BD8](v13);
    objc_storeStrong(&v18, 0);
  }

  objc_storeStrong(&v20, 0);
  if (stateCopy == 5)
  {
    [(NSMutableSet *)selfCopy->_savingWorkouts addObject:location[0]];
  }

  else if (stateCopy == 6)
  {
    [(NSMutableSet *)selfCopy->_savingWorkouts removeObject:location[0]];
  }

  allObjects = [(NSHashTable *)selfCopy->_observers allObjects];
  memset(__b, 0, sizeof(__b));
  obj = MEMORY[0x277D82BE0](allObjects);
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
      [v16 workoutController:selfCopy transitionedWorkout:location[0] toState:stateCopy];
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
  objc_storeStrong(&allObjects, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)workout:(id)workout pausedReasonsDidUpdate:(unint64_t)update
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workout);
  objc_storeStrong(location, 0);
}

- (void)workout:(id)workout willEndWithHKWorkoutSnapshot:(id)snapshot endReason:(unint64_t)reason
{
  v42 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workout);
  v36 = 0;
  objc_storeStrong(&v36, snapshot);
  reasonCopy = reason;
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    type = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      log = oslog;
      v20 = type;
      identifier = [location[0] identifier];
      v23 = FIUILastFourCharactersOfUUID();
      v17 = MEMORY[0x277D82BE0](v23);
      v32 = v17;
      v22 = NLWorkoutEndReasonDescription(reasonCopy);
      v18 = MEMORY[0x277D82BE0](v22);
      v31 = v18;
      fiui_keyValueSummary = [v36 fiui_keyValueSummary];
      v30 = MEMORY[0x277D82BE0](fiui_keyValueSummary);
      __os_log_helper_16_2_3_8_66_8_66_8_66(v41, v17, v18, v30);
      _os_log_impl(&dword_20AEA4000, log, v20, "Workout will end UUID=%{public}@ endReason=%{public}@ snapshot={ %{public}@ } #w0", v41, 0x20u);
      MEMORY[0x277D82BD8](fiui_keyValueSummary);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](identifier);
      objc_storeStrong(&v30, 0);
      objc_storeStrong(&v31, 0);
      objc_storeStrong(&v32, 0);
    }

    objc_storeStrong(&oslog, 0);
    memset(__b, 0, sizeof(__b));
    metadata = [v36 metadata];
    keyEnumerator = [metadata keyEnumerator];
    v16 = [keyEnumerator countByEnumeratingWithState:__b objects:v40 count:{16, MEMORY[0x277D82BD8](metadata).n128_f64[0]}];
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
          objc_enumerationMutation(keyEnumerator);
        }

        v29 = *(__b[1] + 8 * v12);
        _HKInitializeLogging();
        v27 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          v7 = v27;
          v6 = v29;
          metadata2 = [v36 metadata];
          v8 = [metadata2 objectForKeyedSubscript:v29];
          __os_log_helper_16_2_2_8_66_8_66(v39, v6, v8);
          _os_log_impl(&dword_20AEA4000, v7, OS_LOG_TYPE_DEFAULT, "-- [metadata] %{public}@=%{public}@", v39, 0x16u);
          MEMORY[0x277D82BD8](v8);
          MEMORY[0x277D82BD8](metadata2);
        }

        objc_storeStrong(&v27, 0);
        ++v12;
        if (v10 + 1 >= v13)
        {
          v12 = 0;
          v13 = [keyEnumerator countByEnumeratingWithState:__b objects:v40 count:16];
          if (!v13)
          {
            break;
          }
        }
      }
    }

    MEMORY[0x277D82BD8](keyEnumerator);
  }

  interfaceDelegate = [(NLWorkoutController *)selfCopy interfaceDelegate];
  [(NLWorkoutUIDelegate *)interfaceDelegate endWorkout:location[0] withHKWorkout:v36 endReason:reasonCopy];
  MEMORY[0x277D82BD8](interfaceDelegate);
  objc_storeStrong(&v36, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)workout:(id)workout didEndWithHKWorkout:(id)kWorkout endReason:(unint64_t)reason
{
  v26 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workout);
  v22 = 0;
  objc_storeStrong(&v22, kWorkout);
  reasonCopy = reason;
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    _HKInitializeLogging();
    v20 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v19 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      log = v20;
      type = v19;
      identifier = [location[0] identifier];
      v12 = FIUILastFourCharactersOfUUID();
      v6 = MEMORY[0x277D82BE0](v12);
      v18 = v6;
      v11 = NLWorkoutEndReasonDescription(reasonCopy);
      v7 = MEMORY[0x277D82BE0](v11);
      v17 = v7;
      fiui_keyValueSummary = [v22 fiui_keyValueSummary];
      v16 = MEMORY[0x277D82BE0](fiui_keyValueSummary);
      __os_log_helper_16_2_3_8_66_8_64_8_64(v25, v6, v7, v16);
      _os_log_impl(&dword_20AEA4000, log, type, "Workout did end UUID=%{public}@ endReason=%@ snapshot={ %@ } #w0", v25, 0x20u);
      MEMORY[0x277D82BD8](fiui_keyValueSummary);
      MEMORY[0x277D82BD8](v11);
      MEMORY[0x277D82BD8](v12);
      MEMORY[0x277D82BD8](identifier);
      objc_storeStrong(&v16, 0);
      objc_storeStrong(&v17, 0);
      objc_storeStrong(&v18, 0);
    }

    objc_storeStrong(&v20, 0);
  }

  interfaceDelegate = [(NLWorkoutController *)selfCopy interfaceDelegate];
  [(NLWorkoutUIDelegate *)interfaceDelegate updateWorkout:location[0] withHKWorkout:v22 workoutIsFinal:1];
  MEMORY[0x277D82BD8](interfaceDelegate);
  objc_storeStrong(&v22, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)workout:(id)workout didUpdateHKWorkout:(id)kWorkout
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workout);
  v16 = 0;
  objc_storeStrong(&v16, kWorkout);
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    _HKInitializeLogging();
    v15 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    v14 = OS_LOG_TYPE_DEFAULT;
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      log = v15;
      type = v14;
      identifier = [location[0] identifier];
      v9 = FIUILastFourCharactersOfUUID();
      v5 = MEMORY[0x277D82BE0](v9);
      v13 = v5;
      fiui_keyValueSummary = [v16 fiui_keyValueSummary];
      v12 = MEMORY[0x277D82BE0](fiui_keyValueSummary);
      __os_log_helper_16_2_2_8_66_8_64(v19, v5, v12);
      _os_log_impl(&dword_20AEA4000, log, type, "Workout did update UUID=%{public}@ snapshot={ %@ } #w0", v19, 0x16u);
      MEMORY[0x277D82BD8](fiui_keyValueSummary);
      MEMORY[0x277D82BD8](v9);
      MEMORY[0x277D82BD8](identifier);
      objc_storeStrong(&v12, 0);
      objc_storeStrong(&v13, 0);
    }

    objc_storeStrong(&v15, 0);
  }

  interfaceDelegate = [(NLWorkoutController *)selfCopy interfaceDelegate];
  [(NLWorkoutUIDelegate *)interfaceDelegate updateWorkout:location[0] withHKWorkout:v16 workoutIsFinal:0];
  MEMORY[0x277D82BD8](interfaceDelegate);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)didDiscardWorkout:(id)workout
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, workout);
  interfaceDelegate = [(NLWorkoutController *)selfCopy interfaceDelegate];
  [(NLWorkoutUIDelegate *)interfaceDelegate didDiscardWorkout:location[0]];
  *&v3 = MEMORY[0x277D82BD8](interfaceDelegate).n128_u64[0];
  [(NLWorkoutController *)selfCopy invalidateInUseAssertion];
  objc_storeStrong(location, 0);
}

- (void)addObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(NSHashTable *)selfCopy->_observers addObject:location[0]];
  objc_storeStrong(location, 0);
}

- (void)removeObserver:(id)observer
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, observer);
  [(NSHashTable *)selfCopy->_observers removeObject:location[0]];
  objc_storeStrong(location, 0);
}

+ (unint64_t)endReasonForStartSource:(unint64_t)source
{
  if (!source)
  {
    __assert_rtn("+[NLWorkoutController endReasonForStartSource:]", "NLWorkoutController.m", 461, "false");
  }

  if (source - 1 > 3)
  {
    if (source == 5)
    {
      return 5;
    }

    if (source != 6)
    {
      switch(source)
      {
        case 7uLL:
          return 10;
        case 8uLL:
          return 9;
        case 9uLL:
          return 8;
      }

      if (source - 10 > 0xE)
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

- (void)startSessionWith:(WOCoreLiveWorkoutConfiguration *)with countdownDeadline:(NLSessionCountdownDeadline *)deadline completionHandler:(id)handler
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v10 = *(*(v9 - 8) + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = with;
  v14[3] = deadline;
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
  withCopy = with;
  deadlineCopy = deadline;
  selfCopy = self;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2gq5(0, 0, v12, &_sIeAgH_ytIeAgHr_TRTATu, v17);
}

- (id)sessionControlForRecovery
{
  selfCopy = self;
  activeWorkout = [(NLWorkoutController *)selfCopy activeWorkout];
  initWithWorkout_ = [objc_allocWithZone(NLSessionControl) initWithWorkout_];

  if (initWithWorkout_)
  {

    return initWithWorkout_;
  }

  else
  {
    __break(1u);
  }

  return result;
}

@end