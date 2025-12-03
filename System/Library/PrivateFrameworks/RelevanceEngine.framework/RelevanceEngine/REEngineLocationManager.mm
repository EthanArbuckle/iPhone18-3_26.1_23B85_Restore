@interface REEngineLocationManager
- (BOOL)_wantsLocation;
- (CLLocation)currentLocation;
- (REEngineLocationManager)initWithRelevanceEngine:(id)engine locationManager:(id)manager;
- (id)_currentLocationManager;
- (void)_beginMonitoringLocationForManager:(id)manager;
- (void)_beginTraining;
- (void)_endTraining;
- (void)_handleLocationUpdate:(id)update;
- (void)_stopMonitoringLocationForManager:(id)manager;
- (void)_updateLocationStatus;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)removeObserver:(id)observer;
@end

@implementation REEngineLocationManager

- (REEngineLocationManager)initWithRelevanceEngine:(id)engine locationManager:(id)manager
{
  engineCopy = engine;
  managerCopy = manager;
  v18.receiver = self;
  v18.super_class = REEngineLocationManager;
  v8 = [(RERelevanceEngineSubsystem *)&v18 initWithRelevanceEngine:engineCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locationManager, manager);
    if (_fetchedInternalBuildOnceToken_4 != -1)
    {
      [REEngineLocationManager initWithRelevanceEngine:locationManager:];
    }

    if (_isInternalDevice_4 == 1)
    {
      v10 = +[RELocationManager simulatedLocationManager];
      simulatedLocationManager = v9->_simulatedLocationManager;
      v9->_simulatedLocationManager = v10;

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter addObserver:v9 selector:sel__beginTraining name:@"RETrainingSimulationCoordinatorDidBeginTraining" object:0];

      defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter2 addObserver:v9 selector:sel__endTraining name:@"RETrainingSimulationCoordinatorDidEndTraining" object:0];
    }

    v14 = objc_opt_new();
    observers = v9->_observers;
    v9->_observers = v14;

    logger = [engineCopy logger];
    [logger addLoggable:v9];
  }

  return v9;
}

uint64_t __67__REEngineLocationManager_initWithRelevanceEngine_locationManager___block_invoke()
{
  result = _REGetIsInternalBuild();
  _isInternalDevice_4 = result;
  return result;
}

- (void)dealloc
{
  relevanceEngine = [(RERelevanceEngineSubsystem *)self relevanceEngine];
  logger = [relevanceEngine logger];
  [logger removeLoggable:self];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter removeObserver:self name:@"RETrainingSimulationCoordinatorDidBeginTraining" object:0];

  defaultCenter2 = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter2 removeObserver:self name:@"RETrainingSimulationCoordinatorDidEndTraining" object:0];

  v7.receiver = self;
  v7.super_class = REEngineLocationManager;
  [(RERelevanceEngineSubsystem *)&v7 dealloc];
}

- (void)addObserver:(id)observer
{
  [(REObserverStore *)self->_observers addObserver:observer];

  [(REEngineLocationManager *)self _updateLocationStatus];
}

- (void)removeObserver:(id)observer
{
  [(REObserverStore *)self->_observers removeObserver:observer];

  [(REEngineLocationManager *)self _updateLocationStatus];
}

- (CLLocation)currentLocation
{
  location = [(REEngineLocationManager *)self location];
  v3 = [location copy];

  return v3;
}

- (void)_updateLocationStatus
{
  queue = [(RERelevanceEngineSubsystem *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__REEngineLocationManager__updateLocationStatus__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __48__REEngineLocationManager__updateLocationStatus__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _wantsLocation];
  v3 = [*(a1 + 32) _currentLocationManager];
  v4 = *(a1 + 32);
  if (v2)
  {
    if (v4[64])
    {
      goto LABEL_7;
    }

    v7 = v3;
    v4 = [v4 _beginMonitoringLocationForManager:v3];
    v5 = 1;
  }

  else
  {
    if (!v4[64])
    {
      goto LABEL_7;
    }

    v7 = v3;
    v4 = [v4 _stopMonitoringLocationForManager:v3];
    v5 = 0;
  }

  *(*(a1 + 32) + 64) = v5;
  v3 = v7;
LABEL_7:

  return MEMORY[0x2821F96F8](v4, v3);
}

- (BOOL)_wantsLocation
{
  isRunning = [(RERelevanceEngineSubsystem *)self isRunning];
  if (isRunning)
  {
    LOBYTE(isRunning) = [(REObserverStore *)self->_observers count]!= 0;
  }

  return isRunning;
}

- (void)_handleLocationUpdate:(id)update
{
  v4 = [update copy];
  queue = [(RERelevanceEngineSubsystem *)self queue];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __49__REEngineLocationManager__handleLocationUpdate___block_invoke;
  v7[3] = &unk_2785F9AE0;
  v8 = v4;
  selfCopy = self;
  v6 = v4;
  dispatch_async(queue, v7);
}

void __49__REEngineLocationManager__handleLocationUpdate___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) location];
  if (v2 == v3)
  {

    MEMORY[0x2821F96F8](v3, v3);
  }

  else
  {
    v8 = v3;
    v4 = [v2 isEqual:v3];

    if ((v4 & 1) == 0)
    {
      [*(a1 + 40) setLocation:*(a1 + 32)];
      v5 = *(a1 + 40);
      v6 = *(v5 + 56);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __49__REEngineLocationManager__handleLocationUpdate___block_invoke_2;
      v9[3] = &unk_2785FC990;
      v9[4] = v5;
      [v6 enumerateObserversWithBlock:v9];
      v7 = [MEMORY[0x277CCAB98] defaultCenter];
      [v7 postNotificationName:@"RESignificantLocationUpdateNotification" object:0];
    }
  }
}

- (void)_beginTraining
{
  queue = [(RERelevanceEngineSubsystem *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__REEngineLocationManager__beginTraining__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __41__REEngineLocationManager__beginTraining__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 64) == 1)
  {
    [result _stopMonitoringLocationForManager:*(result + 40)];
    v3 = *(a1 + 32);
    v4 = v3[6];

    return [v3 _beginMonitoringLocationForManager:v4];
  }

  return result;
}

- (void)_endTraining
{
  queue = [(RERelevanceEngineSubsystem *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__REEngineLocationManager__endTraining__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __39__REEngineLocationManager__endTraining__block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (*(result + 64) == 1)
  {
    [result _stopMonitoringLocationForManager:*(result + 48)];
    v3 = *(a1 + 32);
    v4 = v3[5];

    return [v3 _beginMonitoringLocationForManager:v4];
  }

  return result;
}

- (id)_currentLocationManager
{
  IsCurrentlyActive = RETrainingSimulationIsCurrentlyActive();
  v4 = &OBJC_IVAR___REEngineLocationManager__locationManager;
  if (IsCurrentlyActive)
  {
    v4 = &OBJC_IVAR___REEngineLocationManager__simulatedLocationManager;
  }

  v5 = *(&self->super.super.isa + *v4);

  return v5;
}

- (void)_beginMonitoringLocationForManager:(id)manager
{
  managerCopy = manager;
  currentLocation = [managerCopy currentLocation];
  queue = [(RERelevanceEngineSubsystem *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__REEngineLocationManager__beginMonitoringLocationForManager___block_invoke;
  block[3] = &unk_2785F9AE0;
  block[4] = self;
  v7 = currentLocation;
  v12 = v7;
  dispatch_async(queue, block);

  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __62__REEngineLocationManager__beginMonitoringLocationForManager___block_invoke_2;
  v8[3] = &unk_2785FC9B8;
  objc_copyWeak(&v9, &location);
  [managerCopy startLocationUpdatesWithHandler:v8];
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __62__REEngineLocationManager__beginMonitoringLocationForManager___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = RELogForDomain(5);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __62__REEngineLocationManager__beginMonitoringLocationForManager___block_invoke_2_cold_1(v6, v7);
    }
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleLocationUpdate:v5];
}

- (void)_stopMonitoringLocationForManager:(id)manager
{
  [manager stopLocationUpdates];
  queue = [(RERelevanceEngineSubsystem *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __61__REEngineLocationManager__stopMonitoringLocationForManager___block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

void __62__REEngineLocationManager__beginMonitoringLocationForManager___block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_22859F000, a2, OS_LOG_TYPE_ERROR, "Unable to get location: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end