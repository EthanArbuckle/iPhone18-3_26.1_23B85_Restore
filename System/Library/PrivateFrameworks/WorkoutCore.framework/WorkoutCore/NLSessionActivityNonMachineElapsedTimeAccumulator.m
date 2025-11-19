@interface NLSessionActivityNonMachineElapsedTimeAccumulator
- (BOOL)shouldRecalibrateTimerBasedOnDuration:(double)a3;
- (NLSessionActivityNonMachineElapsedTimeAccumulator)initWithBuilder:(id)a3;
- (double)elapsedTime;
- (double)elapsedTimeAtPresentationTime:(id)a3;
- (double)timeSinceLastSecond;
- (void)accumulatorDidStartWithStartDate:(id)a3 handler:(id)a4;
- (void)activityTimerFired:(id)a3;
- (void)recalibrateTimer;
- (void)resetTimer;
@end

@implementation NLSessionActivityNonMachineElapsedTimeAccumulator

- (NLSessionActivityNonMachineElapsedTimeAccumulator)initWithBuilder:(id)a3
{
  v11 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v11;
  v11 = 0;
  v9.receiver = v3;
  v9.super_class = NLSessionActivityNonMachineElapsedTimeAccumulator;
  v8 = [(NLSessionActivityBuilderAccumulator *)&v9 initWithBuilder:location[0]];
  v11 = v8;
  objc_storeStrong(&v11, v8);
  if (v8)
  {
    v4 = [[NLSessionActivityTimer alloc] initWithFireInterval:1.0];
    timer = v11->_timer;
    v11->_timer = v4;
    MEMORY[0x277D82BD8](timer);
    [(NLSessionActivityTimer *)v11->_timer setDelegate:v11];
  }

  v7 = MEMORY[0x277D82BE0](v11);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v11, 0);
  return v7;
}

- (void)resetTimer
{
  [(NLSessionActivityTimer *)self->_timer stop];
  v2 = [[NLSessionActivityTimer alloc] initWithFireInterval:1.0];
  timer = self->_timer;
  self->_timer = v2;
  MEMORY[0x277D82BD8](timer);
  [(NLSessionActivityTimer *)self->_timer start];
  [(NLSessionActivityTimer *)self->_timer setDelegate:self];
}

- (void)accumulatorDidStartWithStartDate:(id)a3 handler:(id)a4
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = 0;
  objc_storeStrong(&v5, a4);
  [(NLSessionActivityDataAccumulator *)v7 setUpdateHandler:v5];
  [(NLSessionActivityTimer *)v7->_timer start];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)activityTimerFired:(id)a3
{
  v7 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v5 = v7;
  [(NLSessionActivityNonMachineElapsedTimeAccumulator *)v7 elapsedTime];
  if ([(NLSessionActivityNonMachineElapsedTimeAccumulator *)v5 shouldRecalibrateTimerBasedOnDuration:?])
  {
    [(NLSessionActivityNonMachineElapsedTimeAccumulator *)v7 recalibrateTimer];
  }

  v4 = [(NLSessionActivityDataAccumulator *)v7 updateHandler];
  MEMORY[0x277D82BD8](v4);
  if (v4)
  {
    v3 = [(NLSessionActivityDataAccumulator *)v7 updateHandler];
    v3[2]();
    MEMORY[0x277D82BD8](v3);
  }

  objc_storeStrong(location, 0);
}

- (double)timeSinceLastSecond
{
  v4 = [(NLSessionActivityBuilderAccumulator *)self builder];
  [(HKLiveWorkoutBuilder *)v4 elapsedTime];
  v5 = v2;
  MEMORY[0x277D82BD8](v4);
  return v5 - floor(v5);
}

- (double)elapsedTime
{
  if (+[NLSessionActivityFakeDataManager shouldShowFakeData])
  {
    +[NLSessionActivityFakeDataManager fakeValueForDuration];
    return v2;
  }

  else
  {
    v5 = [(NLSessionActivityBuilderAccumulator *)self builder];
    [(HKLiveWorkoutBuilder *)v5 elapsedTime];
    v7 = v3;
    MEMORY[0x277D82BD8](v5);
  }

  return v7;
}

- (void)recalibrateTimer
{
  v23 = self;
  location[1] = a2;
  _HKInitializeLogging();
  location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v21 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v21;
    __os_log_helper_16_0_0(v20);
    _os_log_impl(&dword_20AEA4000, log, type, "[ElapsedTimeDebugging] recalibrating non-machine elapsed time timer", v20, 2u);
  }

  objc_storeStrong(location, 0);
  [(NLSessionActivityTimer *)v23->_timer stop];
  [(NLSessionActivityNonMachineElapsedTimeAccumulator *)v23 elapsedTime];
  v19 = v2;
  v18 = ceil(v2) - v2;
  v17 = [objc_alloc(MEMORY[0x277CF0B50]) initWithIdentifier:@"non-machine elapsed time recalibration timer"];
  v6 = v17;
  v5 = v18;
  v4 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  v7 = v4;
  v10 = MEMORY[0x277D85DD0];
  v11 = -1073741824;
  v12 = 0;
  v13 = __69__NLSessionActivityNonMachineElapsedTimeAccumulator_recalibrateTimer__block_invoke;
  v14 = &unk_277D88F68;
  v15 = MEMORY[0x277D82BE0](v23);
  v16 = MEMORY[0x277D82BE0](v17);
  [v6 scheduleWithFireInterval:v7 leewayInterval:&v10 queue:v5 handler:0.025];
  MEMORY[0x277D82BD8](v7);
  objc_storeStrong(&v16, 0);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v17, 0);
}

void __69__NLSessionActivityNonMachineElapsedTimeAccumulator_recalibrateTimer__block_invoke(id *a1, void *a2)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[1] = a1;
  [a1[4] resetTimer];
  [a1[5] invalidate];
  _HKInitializeLogging();
  v9[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v8 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v9[0], OS_LOG_TYPE_DEFAULT))
  {
    log = v9[0];
    type = v8;
    __os_log_helper_16_0_0(v7);
    _os_log_impl(&dword_20AEA4000, log, type, "[ElapsedTimeDebugging] non-machine elapsed time timer reset", v7, 2u);
  }

  objc_storeStrong(v9, 0);
  v3 = [a1[4] updateHandler];
  MEMORY[0x277D82BD8](v3);
  if (v3)
  {
    v2 = [a1[4] updateHandler];
    v2[2]();
    MEMORY[0x277D82BD8](v2);
  }

  objc_storeStrong(location, 0);
}

- (BOOL)shouldRecalibrateTimerBasedOnDuration:(double)a3
{
  v5 = [(NLSessionActivityBuilderAccumulator *)self builder];
  v4 = [(HKLiveWorkoutBuilder *)v5 workoutSession];
  v6 = [(HKWorkoutSession *)v4 state];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  return v6 == 2 && a3 - floor(a3) > 0.1;
}

- (double)elapsedTimeAtPresentationTime:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  if (+[NLSessionActivityFakeDataManager shouldShowFakeData])
  {
    +[NLSessionActivityFakeDataManager fakeValueForDuration];
    v13 = v3;
    v10 = 1;
  }

  else
  {
    v9 = [MEMORY[0x277CBEAA8] date];
    [location[0] timeIntervalSinceDate:v9];
    if (v4 >= 0)
    {
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }

    v7 = [(NLSessionActivityBuilderAccumulator *)v12 builder];
    [(HKLiveWorkoutBuilder *)v7 elapsedTime];
    v13 = v5 + v8;
    MEMORY[0x277D82BD8](v7);
    v10 = 1;
    objc_storeStrong(&v9, 0);
  }

  objc_storeStrong(location, 0);
  return v13;
}

@end