@interface NLWorkoutRecoveryController
- (NLWorkoutRecoveryController)initWithHealthStore:(id)a3 userDefaults:(id)a4;
- (NLWorkoutRecoveryController)initWithHealthStore:(id)a3 userDefaults:(id)a4 workoutController:(id)a5;
- (void)attemptRecoveryWithCompletion:(id)a3;
- (void)setAppInWorkoutSession:(BOOL)a3;
- (void)workoutController:(id)a3 mirroredStart:(id)a4;
- (void)workoutController:(id)a3 startSource:(unint64_t)a4 sessionControl:(id)a5;
- (void)workoutController:(id)a3 transitionedWorkout:(id)a4 toState:(int64_t)a5;
@end

@implementation NLWorkoutRecoveryController

- (NLWorkoutRecoveryController)initWithHealthStore:(id)a3 userDefaults:(id)a4 workoutController:(id)a5
{
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v16 = 0;
  objc_storeStrong(&v16, a4);
  v15 = 0;
  objc_storeStrong(&v15, a5);
  v5 = v18;
  v18 = 0;
  v14.receiver = v5;
  v14.super_class = NLWorkoutRecoveryController;
  v11 = [(NLWorkoutRecoveryController *)&v14 init];
  v18 = v11;
  objc_storeStrong(&v18, v11);
  if (v11)
  {
    objc_storeStrong(&v18->_healthStore, location[0]);
    objc_storeStrong(&v18->_userDefaults, v16);
    v6 = objc_alloc(MEMORY[0x277CCDE60]);
    v7 = [v6 initWithHealthStore:location[0]];
    workoutObserver = v18->_workoutObserver;
    v18->_workoutObserver = v7;
    MEMORY[0x277D82BD8](workoutObserver);
    objc_storeStrong(&v18->_workoutController, v15);
  }

  [(NLWorkoutController *)v18->_workoutController addObserver:v18];
  v10 = MEMORY[0x277D82BE0](v18);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v18, 0);
  return v10;
}

- (NLWorkoutRecoveryController)initWithHealthStore:(id)a3 userDefaults:(id)a4
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v8 = 0;
  objc_storeStrong(&v8, a4);
  v4 = v10;
  v10 = 0;
  v10 = [(NLWorkoutRecoveryController *)v4 initWithHealthStore:location[0] userDefaults:v8 workoutController:0];
  v7 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v7;
}

- (void)setAppInWorkoutSession:(BOOL)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v6 = self;
  v5 = a2;
  v4 = a3;
  if (a3 != [(NLWorkoutRecoveryController *)self hintSuggestsRecoveryNeeded])
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_DEFAULT))
    {
      __os_log_helper_16_0_1_4_0(v7, v4);
      _os_log_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_DEFAULT, "[RecoveryController] Setting workout in session hint to %{BOOL}d", v7, 8u);
    }

    objc_storeStrong(&oslog, 0);
    [(NSUserDefaults *)v6->_userDefaults setBool:v4 forKey:@"WorkoutRecoveryInSessionHint"];
  }

  *MEMORY[0x277D85DE8];
}

- (void)attemptRecoveryWithCompletion:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v18 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  _HKInitializeLogging();
  v16 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v15 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [MEMORY[0x277CBEAA8] date];
    v4 = [v5 description];
    v14 = MEMORY[0x277D82BE0](v4);
    __os_log_helper_16_2_1_8_64(v19, v14);
    _os_log_impl(&dword_20AEA4000, v16, v15, "[RecoveryController] Fetching possible session for recovery at: %@", v19, 0xCu);
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    objc_storeStrong(&v14, 0);
  }

  objc_storeStrong(&v16, 0);
  objc_initWeak(&from, v18);
  workoutObserver = v18->_workoutObserver;
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

- (void)workoutController:(id)a3 transitionedWorkout:(id)a4 toState:(int64_t)a5
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  objc_storeStrong(&v6, a4);
  -[NLWorkoutRecoveryController setAppInWorkoutSession:](v8, "setAppInWorkoutSession:", [location[0] hasCurrentSession]);
  objc_storeStrong(&v6, 0);
  objc_storeStrong(location, 0);
}

- (void)workoutController:(id)a3 startSource:(unint64_t)a4 sessionControl:(id)a5
{
  location[2] = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v7[1] = a4;
  v7[0] = 0;
  objc_storeStrong(v7, a5);
  objc_storeStrong(v7, 0);
  objc_storeStrong(location, 0);
}

- (void)workoutController:(id)a3 mirroredStart:(id)a4
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

@end