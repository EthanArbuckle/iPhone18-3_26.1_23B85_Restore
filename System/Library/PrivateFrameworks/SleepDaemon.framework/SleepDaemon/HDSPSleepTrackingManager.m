@interface HDSPSleepTrackingManager
+ (id)platformSpecificTrackerWithEnvironment:(id)a3;
- (HDSPEnvironment)environment;
- (HDSPSleepTrackingManager)initWithEnvironment:(id)a3;
- (HDSPSleepTrackingManager)initWithEnvironment:(id)a3 sleepSessionManager:(id)a4 sleepTracker:(id)a5;
- (id)sleepSessionManager:(id)a3 requestsProcessedSessionForSession:(id)a4;
- (void)environmentDidBecomeReady:(id)a3;
- (void)environmentWillBecomeReady:(id)a3;
- (void)sleepSessionManager:(id)a3 didSaveArchivedSessions:(id)a4;
- (void)sleepSessionManager:(id)a3 didSaveSession:(id)a4;
- (void)sleepSessionManagerDidFinishSession:(id)a3;
@end

@implementation HDSPSleepTrackingManager

- (HDSPSleepTrackingManager)initWithEnvironment:(id)a3
{
  v4 = a3;
  v5 = [[HDSPSleepSessionManager alloc] initWithEnvironment:v4];
  v6 = [objc_opt_class() platformSpecificTrackerWithEnvironment:v4];
  v7 = [(HDSPSleepTrackingManager *)self initWithEnvironment:v4 sleepSessionManager:v5 sleepTracker:v6];

  return v7;
}

+ (id)platformSpecificTrackerWithEnvironment:(id)a3
{
  v3 = a3;
  v4 = [v3 behavior];
  if ([v4 isAppleWatch])
  {
    v5 = 0;
  }

  else
  {
    v5 = [[HDSPTimeInBedTracker alloc] initWithEnvironment:v3];
  }

  return v5;
}

- (HDSPSleepTrackingManager)initWithEnvironment:(id)a3 sleepSessionManager:(id)a4 sleepTracker:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = HDSPSleepTrackingManager;
  v11 = [(HDSPSleepTrackingManager *)&v19 init];
  v12 = v11;
  if (v11)
  {
    objc_storeWeak(&v11->_environment, v8);
    objc_storeStrong(&v12->_sleepSessionManager, a4);
    [(HDSPSleepSessionManager *)v12->_sleepSessionManager setDelegate:v12];
    objc_storeStrong(&v12->_sleepTracker, a5);
    [(HDSPSleepTracker *)v12->_sleepTracker setDelegate:v12->_sleepSessionManager];
    v13 = objc_alloc(MEMORY[0x277D624A0]);
    v14 = [v8 defaultCallbackScheduler];
    v15 = [v13 initWithCallbackScheduler:v14];
    sleepSessionObservers = v12->_sleepSessionObservers;
    v12->_sleepSessionObservers = v15;

    v17 = v12;
  }

  return v12;
}

- (void)environmentWillBecomeReady:(id)a3
{
  v5 = a3;
  sleepTracker = self->_sleepTracker;
  if (objc_opt_respondsToSelector())
  {
    [(HDSPSleepTracker *)self->_sleepTracker environmentWillBecomeReady:v5];
  }
}

- (void)environmentDidBecomeReady:(id)a3
{
  v5 = a3;
  sleepTracker = self->_sleepTracker;
  if (objc_opt_respondsToSelector())
  {
    [(HDSPSleepTracker *)self->_sleepTracker environmentDidBecomeReady:v5];
  }

  [(HDSPSleepSessionManager *)self->_sleepSessionManager savePendingSessions];
}

- (void)sleepSessionManager:(id)a3 didSaveSession:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = objc_opt_class();
    v15 = 2114;
    v16 = v5;
    v7 = v14;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] didSaveSession %{public}@", buf, 0x16u);
  }

  sleepSessionObservers = self->_sleepSessionObservers;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __63__HDSPSleepTrackingManager_sleepSessionManager_didSaveSession___block_invoke;
  v11[3] = &unk_279C7B718;
  v12 = v5;
  v9 = v5;
  [(HKSPObserverSet *)sleepSessionObservers enumerateObserversWithBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

- (void)sleepSessionManager:(id)a3 didSaveArchivedSessions:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v14 = objc_opt_class();
    v15 = 2114;
    v16 = v5;
    v7 = v14;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] didSaveArchivedSessions %{public}@", buf, 0x16u);
  }

  sleepSessionObservers = self->_sleepSessionObservers;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__HDSPSleepTrackingManager_sleepSessionManager_didSaveArchivedSessions___block_invoke;
  v11[3] = &unk_279C7B718;
  v12 = v5;
  v9 = v5;
  [(HKSPObserverSet *)sleepSessionObservers enumerateObserversWithBlock:v11];

  v10 = *MEMORY[0x277D85DE8];
}

void __72__HDSPSleepTrackingManager_sleepSessionManager_didSaveArchivedSessions___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 archivedSleepSessionsSaved:*(a1 + 32)];
  }
}

- (id)sleepSessionManager:(id)a3 requestsProcessedSessionForSession:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = HKSPLogForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138543618;
    v13 = objc_opt_class();
    v14 = 2114;
    v15 = v5;
    v7 = v13;
    _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] requestsProcessedSessionForSession %{public}@", &v12, 0x16u);
  }

  sleepTracker = self->_sleepTracker;
  if (objc_opt_respondsToSelector())
  {
    [(HDSPSleepTracker *)self->_sleepTracker processedSessionForSession:v5];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithResult:v5];
  }
  v9 = ;

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

- (void)sleepSessionManagerDidFinishSession:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = HKSPLogForCategory();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = objc_opt_class();
    v5 = v9;
    _os_log_impl(&dword_269B11000, v4, OS_LOG_TYPE_DEFAULT, "[%{public}@] sleepSessionManagerDidFinishSession", &v8, 0xCu);
  }

  sleepTracker = self->_sleepTracker;
  if (objc_opt_respondsToSelector())
  {
    [(HDSPSleepTracker *)self->_sleepTracker previousSessionFinished];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end