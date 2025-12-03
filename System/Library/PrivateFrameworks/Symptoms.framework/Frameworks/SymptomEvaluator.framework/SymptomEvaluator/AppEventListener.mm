@interface AppEventListener
- (AppEventListener)initWithQueue:(id)queue;
- (AppStateEventListenerDelegate)appStateDelegate;
- (void)_applicationStateMonitorInit;
- (void)cleanupAppStateMonitor;
- (void)dealloc;
- (void)setAppStateDelegate:(id)delegate;
@end

@implementation AppEventListener

void __48__AppEventListener__applicationStateMonitorInit__block_invoke_2(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v9 = WeakRetained;
  if (WeakRetained)
  {
    v10 = [WeakRetained queue];

    if (v10)
    {
      v11 = [v9 queue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __48__AppEventListener__applicationStateMonitorInit__block_invoke_3;
      block[3] = &unk_27898A328;
      block[4] = v9;
      v13 = v7;
      v14 = v6;
      dispatch_async(v11, block);
    }
  }
}

void __48__AppEventListener__applicationStateMonitorInit__block_invoke_3(uint64_t a1)
{
  v2 = [*(a1 + 32) appStateDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v2 handleStateUpdate:*(a1 + 40) forProcess:*(a1 + 48)];
  }
}

- (AppStateEventListenerDelegate)appStateDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_appStateDelegate);

  return WeakRetained;
}

- (void)_applicationStateMonitorInit
{
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__AppEventListener__applicationStateMonitorInit__block_invoke;
  v5[3] = &unk_27898B7C8;
  v5[4] = self;
  v3 = [MEMORY[0x277D46F80] monitorWithConfiguration:v5];
  appStateMonitor = self->_appStateMonitor;
  self->_appStateMonitor = v3;
}

void __48__AppEventListener__applicationStateMonitorInit__block_invoke(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277D46FB0] descriptor];
  [v4 setValues:1];
  [v4 setEndowmentNamespaces:&unk_2847EEB20];
  [v3 setStateDescriptor:v4];
  [v3 setEvents:1];
  v10[0] = [MEMORY[0x277D46FA0] performSelector:NSSelectorFromString(&cfstr_Predicateforsy.isa)];
  v5 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:1];
  [v3 setPredicates:v5];

  objc_initWeak(&location, *(a1 + 32));
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __48__AppEventListener__applicationStateMonitorInit__block_invoke_2;
  v7[3] = &unk_27898B7A0;
  objc_copyWeak(&v8, &location);
  [v3 setUpdateHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(AppEventListener *)self cleanupAppStateMonitor];
  v3.receiver = self;
  v3.super_class = AppEventListener;
  [(AppEventListener *)&v3 dealloc];
}

- (void)cleanupAppStateMonitor
{
  appStateMonitor = self->_appStateMonitor;
  if (appStateMonitor)
  {
    [(RBSProcessMonitor *)appStateMonitor invalidate];
    v4 = self->_appStateMonitor;
    self->_appStateMonitor = 0;
  }
}

- (void)setAppStateDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_appStateDelegate);
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->_appStateDelegate, obj);
    if (obj)
    {
      [(AppEventListener *)self _applicationStateMonitorInit];
    }

    else
    {
      [(AppEventListener *)self cleanupAppStateMonitor];
    }
  }
}

- (AppEventListener)initWithQueue:(id)queue
{
  queueCopy = queue;
  v9.receiver = self;
  v9.super_class = AppEventListener;
  v6 = [(AppEventListener *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_queue, queue);
  }

  return v7;
}

@end