@interface REEngineVisitManager
- (BOOL)_wantsVisits;
- (REEngineVisitManager)initWithRelevanceEngine:(id)a3 locationManager:(id)a4;
- (void)_beginMonitoringVisitsForManager:(id)a3;
- (void)_handleVisitUpdate:(id)a3 location:(id)a4;
- (void)_updateVisitStatus;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation REEngineVisitManager

- (REEngineVisitManager)initWithRelevanceEngine:(id)a3 locationManager:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14.receiver = self;
  v14.super_class = REEngineVisitManager;
  v8 = [(RERelevanceEngineSubsystem *)&v14 initWithRelevanceEngine:v6];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_locationManager, a4);
    v10 = objc_opt_new();
    observers = v9->_observers;
    v9->_observers = v10;

    v12 = [v6 logger];
    [v12 addLoggable:v9];
  }

  return v9;
}

- (void)addObserver:(id)a3
{
  [(REObserverStore *)self->_observers addObserver:a3];

  [(REEngineVisitManager *)self _updateVisitStatus];
}

- (void)removeObserver:(id)a3
{
  [(REObserverStore *)self->_observers removeObserver:a3];

  [(REEngineVisitManager *)self _updateVisitStatus];
}

- (void)_updateVisitStatus
{
  v3 = [(RERelevanceEngineSubsystem *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__REEngineVisitManager__updateVisitStatus__block_invoke;
  block[3] = &unk_2785F9AB8;
  block[4] = self;
  dispatch_async(v3, block);
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
  v3 = [(RERelevanceEngineSubsystem *)self isRunning];
  if (v3)
  {
    LOBYTE(v3) = [(REObserverStore *)self->_observers count]!= 0;
  }

  return v3;
}

- (void)_handleVisitUpdate:(id)a3 location:(id)a4
{
  v6 = a4;
  v7 = [a3 copy];
  v8 = [(RERelevanceEngineSubsystem *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __52__REEngineVisitManager__handleVisitUpdate_location___block_invoke;
  block[3] = &unk_2785FB070;
  v12 = v7;
  v13 = self;
  v14 = v6;
  v9 = v6;
  v10 = v7;
  dispatch_async(v8, block);
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

- (void)_beginMonitoringVisitsForManager:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __57__REEngineVisitManager__beginMonitoringVisitsForManager___block_invoke;
  v5[3] = &unk_2785FBC28;
  objc_copyWeak(&v6, &location);
  [v4 startVisitUpdatesWithHandler:v5];
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