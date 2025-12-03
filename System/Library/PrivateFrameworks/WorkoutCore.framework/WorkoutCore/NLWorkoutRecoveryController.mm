@interface NLWorkoutRecoveryController
- (NLWorkoutRecoveryController)initWithHealthStore:(id)store userDefaults:(id)defaults;
- (NLWorkoutRecoveryController)initWithHealthStore:(id)store userDefaults:(id)defaults workoutController:(id)controller;
- (void)attemptRecoveryWithCompletion:(id)completion;
- (void)setAppInWorkoutSession:(BOOL)session;
- (void)workoutController:(id)controller mirroredStart:(id)start;
- (void)workoutController:(id)controller startSource:(unint64_t)source sessionControl:(id)control;
- (void)workoutController:(id)controller transitionedWorkout:(id)workout toState:(int64_t)state;
@end

@implementation NLWorkoutRecoveryController

- (NLWorkoutRecoveryController)initWithHealthStore:(id)store userDefaults:(id)defaults workoutController:(id)controller
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, store);
  v16 = 0;
  objc_storeStrong(&v16, defaults);
  v15 = 0;
  objc_storeStrong(&v15, controller);
  v5 = selfCopy;
  selfCopy = 0;
  v14.receiver = v5;
  v14.super_class = NLWorkoutRecoveryController;
  v11 = [(NLWorkoutRecoveryController *)&v14 init];
  selfCopy = v11;
  objc_storeStrong(&selfCopy, v11);
  if (v11)
  {
    objc_storeStrong(&selfCopy->_healthStore, location[0]);
    objc_storeStrong(&selfCopy->_userDefaults, v16);
    v6 = objc_alloc(MEMORY[0x277CCDE60]);
    v7 = [v6 initWithHealthStore:location[0]];
    workoutObserver = selfCopy->_workoutObserver;
    selfCopy->_workoutObserver = v7;
    MEMORY[0x277D82BD8](workoutObserver);
    objc_storeStrong(&selfCopy->_workoutController, v15);
  }

  [(NLWorkoutController *)selfCopy->_workoutController addObserver:selfCopy];
  v10 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v10;
}

- (NLWorkoutRecoveryController)initWithHealthStore:(id)store userDefaults:(id)defaults
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, store);
  v8 = 0;
  objc_storeStrong(&v8, defaults);
  v4 = selfCopy;
  selfCopy = 0;
  selfCopy = [(NLWorkoutRecoveryController *)v4 initWithHealthStore:location[0] userDefaults:v8 workoutController:0];
  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)setAppInWorkoutSession:(BOOL)session
{
  v8 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v5 = a2;
  sessionCopy = session;
  if (session != [(NLWorkoutRecoveryController *)self hintSuggestsRecoveryNeeded])
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v7, sessionCopy);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[RecoveryController] Setting workout in session hint to %{BOOL}d", v7, 8u);
    }

    objc_storeStrong(&oslog, 0);
    [(NSUserDefaults *)selfCopy->_userDefaults setBool:sessionCopy forKey:@"WorkoutRecoveryInSessionHint"];
  }

  *MEMORY[0x277D85DE8];
}

- (void)attemptRecoveryWithCompletion:(id)completion
{
  v20 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, completion);
  _HKInitializeLogging();
  v16 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    date = [MEMORY[0x277CBEAA8] date];
    v4 = [date description];
    v14 = MEMORY[0x277D82BE0](v4);
    __os_log_helper_16_2_1_8_64(v19, v14);
    _os_log_impl(&dword_20AEA4000, v16, v15, "[RecoveryController] Fetching possible session for recovery at: %@", v19, 0xCu);
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](date);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v16, 0);
  objc_initWeak(&from, selfCopy);
  workoutObserver = selfCopy->_workoutObserver;
  v6 = MEMORY[0x277D85DD0];
  v7 = -1073741824;
  v8 = 0;
  v9 = __61__NLWorkoutRecoveryController_attemptRecoveryWithCompletion___block_invoke;
  v10 = &unk_277D893E0;
  objc_copyWeak(&v12, &from);
  v11 = MEMORY[0x277D82BE0](location[0]);
  [(_HKWorkoutObserver *)workoutObserver waitForAutomaticWorkoutRecoveryWithCompletion:&v6];
  objc_storeStrong(&v11, 0);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&from);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __61__NLWorkoutRecoveryController_attemptRecoveryWithCompletion___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v10[2] = a1;
  v10[1] = a1;
  v10[0] = objc_loadWeakRetained((a1 + 40));
  _HKInitializeLogging();
  v9 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    log = v9;
    type = v8;
    v5 = [MEMORY[0x277CBEAA8] date];
    v4 = [v5 description];
    v7 = MEMORY[0x277D82BE0](v4);
    __os_log_helper_16_2_1_8_64(v11, v7);
    _os_log_impl(&dword_20AEA4000, log, type, "[RecoveryController] Done waiting for recovery at: %@", v11, 0xCu);
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    objc_storeStrong(&v7, 0);
  }

  objc_storeStrong(&v9, 0);
  v1 = [v10[0] healthStore];
  [v1 recoverActiveWorkoutSessionWithCompletion:*(a1 + 32)];
  MEMORY[0x277D82BD8](v1);
  objc_storeStrong(v10, 0);
  *MEMORY[0x277D85DE8];
}

- (void)workoutController:(id)controller transitionedWorkout:(id)workout toState:(int64_t)state
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v6 = 0;
  objc_storeStrong(&v6, workout);
  -[NLWorkoutRecoveryController setAppInWorkoutSession:](selfCopy, "setAppInWorkoutSession:", [location[0] hasCurrentSession]);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)workoutController:(id)controller startSource:(unint64_t)source sessionControl:(id)control
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v7[1] = source;
  v7[0] = 0;
  objc_storeStrong(v7, control);
  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);
}

- (void)workoutController:(id)controller mirroredStart:(id)start
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, controller);
  v5 = 0;
  objc_storeStrong(&v5, start);
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

@end