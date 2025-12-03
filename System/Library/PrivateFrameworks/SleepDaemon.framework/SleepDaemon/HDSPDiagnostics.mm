@interface HDSPDiagnostics
- (HDSPDiagnostics)initWithEnvironment:(id)environment;
- (HDSPEnvironment)environment;
- (id)notificationListener:(id)listener didReceiveNotificationWithName:(id)name;
- (void)_logDiagnostics:(id)diagnostics;
- (void)addProvider:(id)provider;
- (void)environmentWillBecomeReady:(id)ready;
- (void)removeProvider:(id)provider;
@end

@implementation HDSPDiagnostics

- (HDSPDiagnostics)initWithEnvironment:(id)environment
{
  v23 = *MEMORY[0x277D85DE8];
  environmentCopy = environment;
  v18.receiver = self;
  v18.super_class = HDSPDiagnostics;
  v5 = [(HDSPDiagnostics *)&v18 init];
  if (v5)
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = objc_opt_class();
      *buf = 138543618;
      v20 = v7;
      v21 = 2048;
      v22 = v5;
      v8 = v7;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@.%p] initializing...", buf, 0x16u);
    }

    objc_storeWeak(&v5->_environment, environmentCopy);
    v9 = objc_alloc(MEMORY[0x277D624A0]);
    immediateScheduler = [MEMORY[0x277D2C938] immediateScheduler];
    v11 = [v9 initWithCallbackScheduler:immediateScheduler];
    providers = v5->_providers;
    v5->_providers = v11;

    v13 = [objc_alloc(MEMORY[0x277D62448]) initWithLabel:@"com.apple.sleepd"];
    diagnostics = v5->_diagnostics;
    v5->_diagnostics = v13;

    v15 = v5;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v5;
}

- (void)environmentWillBecomeReady:(id)ready
{
  notificationListener = [ready notificationListener];
  [notificationListener addObserver:self];
}

- (void)addProvider:(id)provider
{
  if (provider)
  {
    providers = self->_providers;
    providerCopy = provider;
    [(HKSPObserverSet *)providers addObserver:providerCopy];
    [(HKSPDiagnostics *)self->_diagnostics addProvider:providerCopy];
  }
}

- (void)removeProvider:(id)provider
{
  if (provider)
  {
    providers = self->_providers;
    providerCopy = provider;
    [(HKSPObserverSet *)providers removeObserver:providerCopy];
    [(HKSPDiagnostics *)self->_diagnostics removeProvider:providerCopy];
  }
}

- (id)notificationListener:(id)listener didReceiveNotificationWithName:(id)name
{
  v20 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy isEqualToString:@"com.apple.sleepd.diagnostics"])
  {
    v6 = HKSPLogForCategory();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v17 = objc_opt_class();
      v18 = 2114;
      v19 = nameCopy;
      v7 = v17;
      _os_log_impl(&dword_269B11000, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@] received %{public}@", buf, 0x16u);
    }

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    providers = self->_providers;
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__HDSPDiagnostics_notificationListener_didReceiveNotificationWithName___block_invoke;
    v14[3] = &unk_279C7B628;
    v15 = v8;
    v10 = v8;
    [(HKSPObserverSet *)providers enumerateObserversWithBlock:v14];
    [(HDSPDiagnostics *)self _logDiagnostics:v10];
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  else
  {
    futureWithNoResult = [MEMORY[0x277D2C900] futureWithNoResult];
  }

  v12 = *MEMORY[0x277D85DE8];

  return futureWithNoResult;
}

void __71__HDSPDiagnostics_notificationListener_didReceiveNotificationWithName___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 diagnosticDescription];
  v9 = v4;
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = @"<none>";
  }

  v6 = *(a1 + 32);
  v7 = objc_opt_class();

  v8 = NSStringFromClass(v7);
  [v6 setObject:v5 forKeyedSubscript:v8];
}

- (void)_logDiagnostics:(id)diagnostics
{
  v20 = *MEMORY[0x277D85DE8];
  diagnosticsCopy = diagnostics;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [diagnosticsCopy countByEnumeratingWithState:&v13 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(diagnosticsCopy);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        v9 = HKSPLogForCategory();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v18 = v8;
          _os_log_impl(&dword_269B11000, v9, OS_LOG_TYPE_DEFAULT, "----------------------------%{public}@----------------------------", buf, 0xCu);
        }

        v10 = HKSPLogForCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          v11 = [diagnosticsCopy objectForKeyedSubscript:v8];
          *buf = 138543362;
          v18 = v11;
          _os_log_impl(&dword_269B11000, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@]", buf, 0xCu);
        }
      }

      v5 = [diagnosticsCopy countByEnumeratingWithState:&v13 objects:v19 count:16];
    }

    while (v5);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (HDSPEnvironment)environment
{
  WeakRetained = objc_loadWeakRetained(&self->_environment);

  return WeakRetained;
}

@end