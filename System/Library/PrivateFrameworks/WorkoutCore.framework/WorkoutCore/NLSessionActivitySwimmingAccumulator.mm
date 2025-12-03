@interface NLSessionActivitySwimmingAccumulator
- (CMSwimTracker)swimTracker;
- (NLSessionActivitySwimmingAccumulator)init;
- (NLSessionActivitySwimmingAccumulator)initWithCoder:(id)coder;
- (double)distance;
- (void)_accumulateSwimData:(id)data;
- (void)_handleSwimData:(id)data error:(id)error handler:(id)handler;
- (void)_startSwimTrackerWithSessionUUID:(id)d handler:(id)handler;
- (void)accumulatorDidStartWithStartDate:(id)date sessionUUID:(id)d handler:(id)handler;
- (void)accumulatorDidStop;
- (void)commonInit;
- (void)encodeWithCoder:(id)coder;
- (void)setSwimTracker:(id)tracker;
@end

@implementation NLSessionActivitySwimmingAccumulator

- (void)setSwimTracker:(id)tracker
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tracker);
  objc_storeStrong(&selfCopy->_swimTracker, location[0]);
  objc_storeStrong(location, 0);
}

- (CMSwimTracker)swimTracker
{
  if (!self->_swimTracker)
  {
    v2 = objc_alloc_init(MEMORY[0x277CC1D60]);
    swimTracker = self->_swimTracker;
    self->_swimTracker = v2;
    MEMORY[0x277D82BD8](swimTracker);
  }

  v4 = self->_swimTracker;

  return v4;
}

- (void)accumulatorDidStartWithStartDate:(id)date sessionUUID:(id)d handler:(id)handler
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, date);
  v8 = 0;
  objc_storeStrong(&v8, d);
  v7 = 0;
  objc_storeStrong(&v7, handler);
  [(NLSessionActivitySwimmingAccumulator *)selfCopy _startSwimTrackerWithSessionUUID:v8 handler:v7];
  objc_storeStrong(&v7, 0);
  objc_storeStrong(&v8, 0);
  objc_storeStrong(location, 0);
}

- (void)commonInit
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  historicalSwimData = self->_historicalSwimData;
  self->_historicalSwimData = v2;
  MEMORY[0x277D82BD8](historicalSwimData);
}

- (NLSessionActivitySwimmingAccumulator)init
{
  v5 = a2;
  v6 = 0;
  v4.receiver = self;
  v4.super_class = NLSessionActivitySwimmingAccumulator;
  v6 = [(NLSessionActivitySwimmingAccumulator *)&v4 init];
  objc_storeStrong(&v6, v6);
  if (v6)
  {
    [(NLSessionActivitySwimmingAccumulator *)v6 commonInit];
  }

  v3 = MEMORY[0x277D82BE0](v6);
  objc_storeStrong(&v6, 0);
  return v3;
}

- (NLSessionActivitySwimmingAccumulator)initWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  v3 = [location[0] decodeObjectForKey:@"sessionUUID"];
  sessionUUID = selfCopy->_sessionUUID;
  selfCopy->_sessionUUID = v3;
  MEMORY[0x277D82BD8](sessionUUID);
  [(NLSessionActivitySwimmingAccumulator *)selfCopy commonInit];
  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, coder);
  [location[0] encodeObject:selfCopy->_sessionUUID forKey:@"sessionUUID"];
  objc_storeStrong(location, 0);
}

- (void)_startSwimTrackerWithSessionUUID:(id)d handler:(id)handler
{
  v23 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, d);
  v19 = 0;
  objc_storeStrong(&v19, handler);
  objc_storeStrong(&selfCopy->_sessionUUID, location[0]);
  _HKInitializeLogging();
  v18 = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v17 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    __os_log_helper_16_2_1_8_66(v22, location[0]);
    _os_log_impl(&dword_20AEA4000, v18, v17, "Starting live CMSwimTracker with sessinUUID=%{public}@", v22, 0xCu);
  }

  objc_storeStrong(&v18, 0);
  objc_initWeak(&from, selfCopy);
  v6 = objc_alloc(MEMORY[0x277CC1D58]);
  v15 = [v6 initWithSessionId:selfCopy->_sessionUUID];
  swimTracker = [(NLSessionActivitySwimmingAccumulator *)selfCopy swimTracker];
  v5 = v15;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __81__NLSessionActivitySwimmingAccumulator__startSwimTrackerWithSessionUUID_handler___block_invoke;
  v12 = &unk_277D88AC8;
  objc_copyWeak(v14, &from);
  v13 = MEMORY[0x277D82BE0](v19);
  [(CMSwimTracker *)swimTracker startUpdatesFromRecord:v5 handler:&v8];
  MEMORY[0x277D82BD8](swimTracker);
  objc_storeStrong(&v13, 0);
  objc_destroyWeak(v14);
  objc_storeStrong(&v15, 0);
  objc_destroyWeak(&from);
  objc_storeStrong(&v19, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

void __81__NLSessionActivitySwimmingAccumulator__startSwimTrackerWithSessionUUID_handler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v17 = 0;
  objc_storeStrong(&v17, a3);
  v16[1] = a1;
  v5 = MEMORY[0x277D85CD0];
  v3 = MEMORY[0x277D85CD0];
  queue = v5;
  v8 = MEMORY[0x277D85DD0];
  v9 = -1073741824;
  v10 = 0;
  v11 = __81__NLSessionActivitySwimmingAccumulator__startSwimTrackerWithSessionUUID_handler___block_invoke_2;
  v12 = &unk_277D88AA0;
  objc_copyWeak(v16, (a1 + 40));
  v13 = MEMORY[0x277D82BE0](location[0]);
  v14 = MEMORY[0x277D82BE0](v17);
  v15 = MEMORY[0x277D82BE0](*(a1 + 32));
  dispatch_async(queue, &v8);
  MEMORY[0x277D82BD8](queue);
  objc_storeStrong(&v15, 0);
  objc_storeStrong(&v14, 0);
  objc_storeStrong(&v13, 0);
  objc_destroyWeak(v16);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(location, 0);
}

uint64_t __81__NLSessionActivitySwimmingAccumulator__startSwimTrackerWithSessionUUID_handler___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained _handleSwimData:*(a1 + 32) error:*(a1 + 40) handler:*(a1 + 48)];
  return MEMORY[0x277D82BD8](WeakRetained);
}

- (void)_handleSwimData:(id)data error:(id)error handler:(id)handler
{
  v15 = *MEMORY[0x277D85DE8];
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  v11 = 0;
  objc_storeStrong(&v11, error);
  v10 = 0;
  objc_storeStrong(&v10, handler);
  if (v11)
  {
    _HKInitializeLogging();
    oslog = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
    if (os_log_type_enabled(oslog, OS_LOG_TYPE_ERROR))
    {
      __os_log_helper_16_2_1_8_66(v14, v11);
      _os_log_error_impl(&dword_20AEA4000, oslog, OS_LOG_TYPE_ERROR, "Live swim data query failed with error:%{public}@", v14, 0xCu);
    }

    objc_storeStrong(&oslog, 0);
  }

  if ([location[0] count])
  {
    v5 = selfCopy;
    lastObject = [location[0] lastObject];
    [(NLSessionActivitySwimmingAccumulator *)v5 _accumulateSwimData:?];
    MEMORY[0x277D82BD8](lastObject);
  }

  if (v10)
  {
    (*(v10 + 2))();
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)_accumulateSwimData:(id)data
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, data);
  if ([MEMORY[0x277CCDD30] isAppleInternalInstall])
  {
    _LogRecord(@"CMSwimData received:", location[0]);
  }

  objc_storeStrong(&selfCopy->_lastSwimDataRecord, location[0]);
  objc_storeStrong(location, 0);
}

- (void)accumulatorDidStop
{
  selfCopy = self;
  location[1] = a2;
  _HKInitializeLogging();
  location[0] = MEMORY[0x277D82BE0](*MEMORY[0x277CCC330]);
  v6 = OS_LOG_TYPE_DEFAULT;
  if (os_log_type_enabled(location[0], OS_LOG_TYPE_DEFAULT))
  {
    log = location[0];
    type = v6;
    __os_log_helper_16_0_0(v5);
    _os_log_impl(&dword_20AEA4000, log, type, "Stopping CMSwimTracker", v5, 2u);
  }

  objc_storeStrong(location, 0);
  swimTracker = [(NLSessionActivitySwimmingAccumulator *)selfCopy swimTracker];
  [(CMSwimTracker *)swimTracker stopUpdates];
  MEMORY[0x277D82BD8](swimTracker);
}

- (double)distance
{
  [(CMSwimData *)self->_lastSwimDataRecord distance];
  if (v2 <= 0.0)
  {
    return 0.0;
  }

  else
  {
    return v2;
  }
}

@end