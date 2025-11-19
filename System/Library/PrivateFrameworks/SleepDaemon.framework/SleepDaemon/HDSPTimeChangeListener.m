@interface HDSPTimeChangeListener
- (HDSPEnvironment)environment;
- (HDSPTimeChangeListener)initWithEnvironment:(id)a3;
- (NSString)sourceIdentifier;
- (id)notificationListener:(id)a3 didReceiveNotificationWithName:(id)a4;
- (void)addObserver:(id)a3;
- (void)environmentWillBecomeReady:(id)a3;
- (void)handleSignificantTimeChange;
- (void)handleTimeZoneChange;
- (void)removeObserver:(id)a3;
@end

@implementation HDSPTimeChangeListener

- (HDSPTimeChangeListener)initWithEnvironment:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = HDSPTimeChangeListener;
  v5 = [(HDSPTimeChangeListener *)&v12 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277D624A0]);
    v7 = [v4 defaultCallbackScheduler];
    v8 = [v6 initWithCallbackScheduler:v7];
    observers = v5->_observers;
    v5->_observers = v8;

    v10 = v5;
  }

  return v5;
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    [(HKSPObserverSet *)self->_observers addObserver:?];
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    [(HKSPObserverSet *)self->_observers removeObserver:?];
  }
}

- (void)environmentWillBecomeReady:(id)a3
{
  v4 = [a3 notificationListener];
  [v4 addObserver:self];
}

- (id)notificationListener:(id)a3 didReceiveNotificationWithName:(id)a4
{
  v5 = a4;
  if ([v5 isEqualToString:@"SignificantTimeChange"])
  {
    [(HDSPTimeChangeListener *)self handleSignificantTimeChange];
  }

  else
  {
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"com.apple.system.timezone"];
    v7 = [v5 isEqualToString:v6];

    if (v7)
    {
      [(HDSPTimeChangeListener *)self handleTimeZoneChange];
    }
  }

  v8 = [MEMORY[0x277D2C900] futureWithNoResult];

  return v8;
}

- (void)handleSignificantTimeChange
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = objc_opt_class();
    v4 = v14;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] handleSignificantTimeChange", buf, 0xCu);
  }

  [MEMORY[0x277CBEBB0] resetSystemTimeZone];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = MEMORY[0x277CBEBB0];
    v8 = v6;
    v9 = [v7 systemTimeZone];
    *buf = 138543618;
    v14 = v6;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] timeZone: %{public}@", buf, 0x16u);
  }

  observers = self->_observers;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __53__HDSPTimeChangeListener_handleSignificantTimeChange__block_invoke;
  v12[3] = &unk_279C7C988;
  v12[4] = self;
  [(HKSPObserverSet *)observers enumerateObserversWithBlock:v12];
  v11 = *MEMORY[0x277D85DE8];
}

void __53__HDSPTimeChangeListener_handleSignificantTimeChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 significantTimeChangeDetected:*(a1 + 32)];
  }
}

- (void)handleTimeZoneChange
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = HKSPLogForCategory();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = objc_opt_class();
    v4 = v14;
    _os_log_impl(&dword_269B11000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@] handleTimeZoneChange", buf, 0xCu);
  }

  [MEMORY[0x277CBEBB0] resetSystemTimeZone];
  v5 = HKSPLogForCategory();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = objc_opt_class();
    v7 = MEMORY[0x277CBEBB0];
    v8 = v6;
    v9 = [v7 systemTimeZone];
    *buf = 138543618;
    v14 = v6;
    v15 = 2114;
    v16 = v9;
    _os_log_impl(&dword_269B11000, v5, OS_LOG_TYPE_DEFAULT, "[%{public}@] timeZone: %{public}@", buf, 0x16u);
  }

  observers = self->_observers;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __46__HDSPTimeChangeListener_handleTimeZoneChange__block_invoke;
  v12[3] = &unk_279C7C988;
  v12[4] = self;
  [(HKSPObserverSet *)observers enumerateObserversWithBlock:v12];
  v11 = *MEMORY[0x277D85DE8];
}

void __46__HDSPTimeChangeListener_handleTimeZoneChange__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (objc_opt_respondsToSelector())
  {
    [v3 timeZoneChangeDetected:*(a1 + 32)];
  }
}

- (NSString)sourceIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->environment);

  return WeakRetained;
}

@end