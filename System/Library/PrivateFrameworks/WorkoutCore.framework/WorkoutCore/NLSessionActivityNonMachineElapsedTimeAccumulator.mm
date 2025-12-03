@interface NLSessionActivityNonMachineElapsedTimeAccumulator
- (BOOL)shouldRecalibrateTimerBasedOnDuration:(double)duration;
- (NLSessionActivityNonMachineElapsedTimeAccumulator)initWithBuilder:(id)builder;
- (double)elapsedTime;
- (double)elapsedTimeAtPresentationTime:(id)time;
- (double)timeSinceLastSecond;
- (void)accumulatorDidStartWithStartDate:(id)date handler:(id)handler;
- (void)activityTimerFired:(id)fired;
- (void)recalibrateTimer;
- (void)resetTimer;
@end

@implementation NLSessionActivityNonMachineElapsedTimeAccumulator

- (NLSessionActivityNonMachineElapsedTimeAccumulator)initWithBuilder:(id)builder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, builder);
  v3 = selfCopy;
  selfCopy = 0;
  v9.receiver = v3;
  v9.super_class = NLSessionActivityNonMachineElapsedTimeAccumulator;
  v8 = [(NLSessionActivityBuilderAccumulator *)&v9 initWithBuilder:location[0]];
  selfCopy = v8;
  objc_storeStrong(&selfCopy, v8);
  if (v8)
  {
    v4 = [[NLSessionActivityTimer alloc] initWithFireInterval:1.0];
    timer = selfCopy->_timer;
    selfCopy->_timer = v4;
    MEMORY[0x277D82BD8](timer);
    [(NLSessionActivityTimer *)selfCopy->_timer setDelegate:selfCopy];
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
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

- (void)accumulatorDidStartWithStartDate:(id)date handler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  v5 = 0;
  objc_storeStrong(&v5, handler);
  [(NLSessionActivityDataAccumulator *)selfCopy setUpdateHandler:v5];
  [(NLSessionActivityTimer *)selfCopy->_timer start];
  objc_storeStrong(&v5, 0);
  objc_storeStrong(location, 0);
}

- (void)activityTimerFired:(id)fired
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, fired);
  v5 = selfCopy;
  [(NLSessionActivityNonMachineElapsedTimeAccumulator *)selfCopy elapsedTime];
  if ([(NLSessionActivityNonMachineElapsedTimeAccumulator *)v5 shouldRecalibrateTimerBasedOnDuration:?])
  {
    [(NLSessionActivityNonMachineElapsedTimeAccumulator *)selfCopy recalibrateTimer];
  }

  updateHandler = [(NLSessionActivityDataAccumulator *)selfCopy updateHandler];
  MEMORY[0x277D82BD8](updateHandler);
  if (updateHandler)
  {
    updateHandler2 = [(NLSessionActivityDataAccumulator *)selfCopy updateHandler];
    updateHandler2[2]();
    MEMORY[0x277D82BD8](updateHandler2);
  }

  objc_storeStrong(location, 0);
}

- (double)timeSinceLastSecond
{
  builder = [(NLSessionActivityBuilderAccumulator *)self builder];
  [(HKLiveWorkoutBuilder *)builder elapsedTime];
  v5 = v2;
  MEMORY[0x277D82BD8](builder);
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
    builder = [(NLSessionActivityBuilderAccumulator *)self builder];
    [(HKLiveWorkoutBuilder *)builder elapsedTime];
    v7 = v3;
    MEMORY[0x277D82BD8](builder);
  }

  return v7;
}

- (void)recalibrateTimer
{
  selfCopy = self;
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
  [(NLSessionActivityTimer *)selfCopy->_timer stop];
  [(NLSessionActivityNonMachineElapsedTimeAccumulator *)selfCopy elapsedTime];
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
  v15 = MEMORY[0x277D82BE0](selfCopy);
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

- (BOOL)shouldRecalibrateTimerBasedOnDuration:(double)duration
{
  builder = [(NLSessionActivityBuilderAccumulator *)self builder];
  workoutSession = [(HKLiveWorkoutBuilder *)builder workoutSession];
  state = [(HKWorkoutSession *)workoutSession state];
  MEMORY[0x277D82BD8](workoutSession);
  MEMORY[0x277D82BD8](builder);
  return state == 2 && duration - floor(duration) > 0.1;
}

- (double)elapsedTimeAtPresentationTime:(id)time
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, time);
  if (+[NLSessionActivityFakeDataManager shouldShowFakeData])
  {
    +[NLSessionActivityFakeDataManager fakeValueForDuration];
    v13 = v3;
    v10 = 1;
  }

  else
  {
    date = [MEMORY[0x277CBEAA8] date];
    [location[0] timeIntervalSinceDate:date];
    if (v4 >= 0)
    {
      v8 = v4;
    }

    else
    {
      v8 = 0;
    }

    builder = [(NLSessionActivityBuilderAccumulator *)selfCopy builder];
    [(HKLiveWorkoutBuilder *)builder elapsedTime];
    v13 = v5 + v8;
    MEMORY[0x277D82BD8](builder);
    v10 = 1;
    objc_storeStrong(&date, 0);
  }

  objc_storeStrong(location, 0);
  return v13;
}

@end