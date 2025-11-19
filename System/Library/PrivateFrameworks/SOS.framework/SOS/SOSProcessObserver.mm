@interface SOSProcessObserver
- (SOSProcessObserver)initWithBundleIdentifier:(id)a3;
- (SOSProcessObserverDelegate)delegate;
- (void)applicationMonitorStateDidChangeForBundleIdentifier:(id)a3;
- (void)dealloc;
- (void)setDelegate:(id)a3;
@end

@implementation SOSProcessObserver

- (SOSProcessObserver)initWithBundleIdentifier:(id)a3
{
  v16[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SOSProcessObserver;
  v5 = [(SOSProcessObserver *)&v15 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CEEE90]);
    v16[0] = v4;
    v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v16 count:1];
    v8 = [v6 initWithBundleIDs:v7 states:0];
    applicationMonitor = v5->_applicationMonitor;
    v5->_applicationMonitor = v8;

    objc_initWeak(&location, v5);
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __47__SOSProcessObserver_initWithBundleIdentifier___block_invoke;
    v12[3] = &unk_279B53D08;
    objc_copyWeak(&v13, &location);
    [(BKSApplicationStateMonitor *)v5->_applicationMonitor setHandler:v12];
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  v10 = *MEMORY[0x277D85DE8];
  return v5;
}

void __47__SOSProcessObserver_initWithBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = [v5 objectForKeyedSubscript:*MEMORY[0x277CEEE68]];
    [WeakRetained applicationMonitorStateDidChangeForBundleIdentifier:v4];
  }
}

- (void)dealloc
{
  v3 = [(SOSProcessObserver *)self applicationMonitor];
  [v3 invalidate];

  v4.receiver = self;
  v4.super_class = SOSProcessObserver;
  [(SOSProcessObserver *)&v4 dealloc];
}

- (void)applicationMonitorStateDidChangeForBundleIdentifier:(id)a3
{
  v9 = a3;
  v4 = objc_opt_class();
  v5 = [(SOSProcessObserver *)self applicationMonitor];
  v6 = [v4 isApplicationStateRunning:{objc_msgSend(v5, "applicationStateForApplication:", v9)}];

  if (v6 != [(SOSProcessObserver *)self cachedApplicationRunning])
  {
    [(SOSProcessObserver *)self setCachedApplicationRunning:v6];
    v7 = [(SOSProcessObserver *)self delegate];

    if (v7)
    {
      v8 = [(SOSProcessObserver *)self delegate];
      [v8 processObserver:self bundleIdentifier:v9 didUpdateApplicationRunning:v6];
    }
  }
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    if (obj)
    {
      v5 = objc_opt_class();
      v6 = [(SOSProcessObserver *)self applicationMonitor];
      v7 = [(SOSProcessObserver *)self applicationMonitor];
      v8 = [v7 interestedBundleIDs];
      v9 = [v8 firstObject];
      -[SOSProcessObserver setCachedApplicationRunning:](self, "setCachedApplicationRunning:", [v5 isApplicationStateRunning:{objc_msgSend(v6, "applicationStateForApplication:", v9)}]);

      v10 = [(SOSProcessObserver *)self applicationMonitor];
      v11 = v10;
      v12 = *MEMORY[0x277CEEE58];
    }

    else
    {
      v10 = [(SOSProcessObserver *)self applicationMonitor];
      v11 = v10;
      v12 = 0;
    }

    [v10 updateInterestedStates:v12];
  }

  MEMORY[0x2821F96F8]();
}

- (SOSProcessObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end