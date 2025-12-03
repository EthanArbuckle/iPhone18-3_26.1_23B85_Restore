@interface REEngineVisitManager
- (BOOL)_wantsVisits;
- (REEngineVisitManager)initWithRelevanceEngine:(id)engine locationManager:(id)manager;
- (void)_beginMonitoringVisitsForManager:(id)manager;
- (void)_handleVisitUpdate:(id)update location:(id)location;
- (void)_updateVisitStatus;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
@end

@implementation REEngineVisitManager

- (REEngineVisitManager)initWithRelevanceEngine:(id)engine locationManager:(id)manager
{
  engineCopy = engine;
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = REEngineVisitManager;
  v8 = [(RERelevanceEngineSubsystem *)&v14 initWithRelevanceEngine:engineCopy];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locationManager, manager);
    v10 = objc_opt_new();
    observers = v9->_observers;
    v9->_observers = v10;

    logger = [engineCopy logger];
    [logger addLoggable:v9];
  }

  return v9;
}

- (void)addObserver:(id)observer
{
  [(REObserverStore *)self->_observers addObserver:observer];

  [(REEngineVisitManager *)self _updateVisitStatus];
}

- (void)removeObserver:(id)observer
{
  [(REObserverStore *)self->_observers removeObserver:observer];

  [(REEngineVisitManager *)self _updateVisitStatus];
}

- (void)_updateVisitStatus
{
  queue = [(RERelevanceEngineSubsystem *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__REEngineVisitManager__updateVisitStatus__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(queue, block);
}

uint64_t __42__REEngineVisitManager__updateVisitStatus__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _wantsVisits];
  result = *(a1 + 32);
  if (v2)
  {
    if (*(result + 56))
    {
      return result;
    }

    result = [result _beginMonitoringVisitsForManager:*(result + 40)];
    v4 = 1;
  }

  else
  {
    if (!*(result + 56))
    {
      return result;
    }

    result = [result _stopMonitoringVisitsForManager:*(result + 40)];
    v4 = 0;
  }

  *(*(a1 + 32) + 56) = v4;
  return result;
}

- (BOOL)_wantsVisits
{
  isRunning = [(RERelevanceEngineSubsystem *)self isRunning];
  if (isRunning)
  {
    LOBYTE(isRunning) = [(REObserverStore *)self->_observers count]!= 0;
  }

  return isRunning;
}

- (void)_handleVisitUpdate:(id)update location:(id)location
{
  locationCopy = location;
  v7 = [update copy];
  queue = [(RERelevanceEngineSubsystem *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__REEngineVisitManager__handleVisitUpdate_location___block_invoke;
  block[3] = &unk_2785FB070;
  v12 = v7;
  selfCopy = self;
  v14 = locationCopy;
  v9 = locationCopy;
  v10 = v7;
  dispatch_async(queue, block);
}

void __52__REEngineVisitManager__handleVisitUpdate_location___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) visit];
  if (v2 == v3)
  {

    MEMORY[0x2821F96F8](v3, v3);
  }

  else
  {
    v9 = v3;
    v4 = [v2 isEqual:v3];

    if ((v4 & 1) == 0)
    {
      [*(a1 + 40) setVisit:*(a1 + 32)];
      v5 = *(a1 + 32);
      v6 = *(a1 + 40);
      v7 = *(v6 + 48);
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __52__REEngineVisitManager__handleVisitUpdate_location___block_invoke_2;
      v10[3] = &unk_2785FBC00;
      v10[4] = v6;
      v11 = v5;
      v12 = *(a1 + 48);
      [v7 enumerateObserversWithBlock:v10];
      v8 = [MEMORY[0x277CCAB98] defaultCenter];
      [v8 postNotificationName:@"REVisitUpdateNotification" object:0];
    }
  }
}

- (void)_beginMonitoringVisitsForManager:(id)manager
{
  managerCopy = manager;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__REEngineVisitManager__beginMonitoringVisitsForManager___block_invoke;
  v5[3] = &unk_2785FBC28;
  objc_copyWeak(&v6, &location);
  [managerCopy startVisitUpdatesWithHandler:v5];
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __57__REEngineVisitManager__beginMonitoringVisitsForManager___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleVisitUpdate:v6 location:v5];
}

@end