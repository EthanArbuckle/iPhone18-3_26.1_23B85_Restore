@interface SOSProcessObserver
- (SOSProcessObserver)initWithBundleIdentifier:(id)identifier;
- (SOSProcessObserverDelegate)delegate;
- (void)applicationMonitorStateDidChangeForBundleIdentifier:(id)identifier;
- (void)dealloc;
- (void)setDelegate:(id)delegate;
@end

@implementation SOSProcessObserver

- (SOSProcessObserver)initWithBundleIdentifier:(id)identifier
{
  v16[1] = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  v15.receiver = self;
  v15.super_class = SOSProcessObserver;
  v5 = [(SOSProcessObserver *)&v15 init];
  if (v5)
  {
    v6 = objc_alloc(MEMORY[0x277CEEE90]);
    v16[0] = identifierCopy;
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
  applicationMonitor = [(SOSProcessObserver *)self applicationMonitor];
  [applicationMonitor invalidate];

  v4.receiver = self;
  v4.super_class = SOSProcessObserver;
  [(SOSProcessObserver *)&v4 dealloc];
}

- (void)applicationMonitorStateDidChangeForBundleIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = objc_opt_class();
  applicationMonitor = [(SOSProcessObserver *)self applicationMonitor];
  v6 = [v4 isApplicationStateRunning:{objc_msgSend(applicationMonitor, "applicationStateForApplication:", identifierCopy)}];

  if (v6 != [(SOSProcessObserver *)self cachedApplicationRunning])
  {
    [(SOSProcessObserver *)self setCachedApplicationRunning:v6];
    delegate = [(SOSProcessObserver *)self delegate];

    if (delegate)
    {
      delegate2 = [(SOSProcessObserver *)self delegate];
      [delegate2 processObserver:self bundleIdentifier:identifierCopy didUpdateApplicationRunning:v6];
    }
  }
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_delegate, obj);
    if (obj)
    {
      v5 = objc_opt_class();
      applicationMonitor = [(SOSProcessObserver *)self applicationMonitor];
      applicationMonitor2 = [(SOSProcessObserver *)self applicationMonitor];
      interestedBundleIDs = [applicationMonitor2 interestedBundleIDs];
      firstObject = [interestedBundleIDs firstObject];
      -[SOSProcessObserver setCachedApplicationRunning:](self, "setCachedApplicationRunning:", [v5 isApplicationStateRunning:{objc_msgSend(applicationMonitor, "applicationStateForApplication:", firstObject)}]);

      applicationMonitor3 = [(SOSProcessObserver *)self applicationMonitor];
      v11 = applicationMonitor3;
      v12 = *MEMORY[0x277CEEE58];
    }

    else
    {
      applicationMonitor3 = [(SOSProcessObserver *)self applicationMonitor];
      v11 = applicationMonitor3;
      v12 = 0;
    }

    [applicationMonitor3 updateInterestedStates:v12];
  }

  MEMORY[0x2821F96F8]();
}

- (SOSProcessObserverDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end