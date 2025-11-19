@interface STKIncomingCallUIStateMonitor
+ (STKIncomingCallUIStateMonitor)sharedInstance;
- (BOOL)isShowingIncomingCallUI;
- (STKIncomingCallUIStateMonitor)init;
- (void)_refreshState;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation STKIncomingCallUIStateMonitor

+ (STKIncomingCallUIStateMonitor)sharedInstance
{
  if (sharedInstance___once_0 != -1)
  {
    +[STKIncomingCallUIStateMonitor sharedInstance];
  }

  v3 = sharedInstance___instance_0;

  return v3;
}

uint64_t __47__STKIncomingCallUIStateMonitor_sharedInstance__block_invoke()
{
  sharedInstance___instance_0 = objc_alloc_init(STKIncomingCallUIStateMonitor);

  return MEMORY[0x2821F96F8]();
}

- (STKIncomingCallUIStateMonitor)init
{
  v12.receiver = self;
  v12.super_class = STKIncomingCallUIStateMonitor;
  v2 = [(STKIncomingCallUIStateMonitor *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    v2->_observersLock._os_unfair_lock_opaque = 0;
    objc_initWeak(&location, v2);
    v4 = dispatch_get_global_queue(33, 0);
    v6 = MEMORY[0x277D85DD0];
    v7 = 3221225472;
    v8 = __37__STKIncomingCallUIStateMonitor_init__block_invoke;
    v9 = &unk_279B4C648;
    objc_copyWeak(&v10, &location);
    notify_register_dispatch("MPInCallAlertStateChangeNotification", &v3->_inCallAlertVisibleNotifyToken, v4, &v6);

    [(STKIncomingCallUIStateMonitor *)v3 _refreshState:v6];
    objc_destroyWeak(&v10);
    objc_destroyWeak(&location);
  }

  return v3;
}

void __37__STKIncomingCallUIStateMonitor_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _refreshState];
}

- (BOOL)isShowingIncomingCallUI
{
  os_unfair_lock_lock(&self->_lock);
  lock_showingIncomingCallUI = self->_lock_showingIncomingCallUI;
  os_unfair_lock_unlock(&self->_lock);
  return lock_showingIncomingCallUI;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v8 = v4;
    os_unfair_lock_lock(&self->_observersLock);
    observersLock_observers = self->_observersLock_observers;
    if (!observersLock_observers)
    {
      v6 = [MEMORY[0x277CCAA50] hashTableWithWeakObjects];
      v7 = self->_observersLock_observers;
      self->_observersLock_observers = v6;

      observersLock_observers = self->_observersLock_observers;
    }

    [(NSHashTable *)observersLock_observers addObject:v8];
    os_unfair_lock_unlock(&self->_observersLock);
    v4 = v8;
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    v4 = a3;
    os_unfair_lock_lock(&self->_observersLock);
    [(NSHashTable *)self->_observersLock_observers removeObject:v4];

    if (![(NSHashTable *)self->_observersLock_observers count])
    {
      observersLock_observers = self->_observersLock_observers;
      self->_observersLock_observers = 0;
    }

    os_unfair_lock_unlock(&self->_observersLock);
  }
}

- (void)_refreshState
{
  state64 = 0;
  notify_get_state(self->_inCallAlertVisibleNotifyToken, &state64);
  [(STKIncomingCallUIStateMonitor *)self _setIncomingCallUIState:state64 != 0 forReason:@"Refresh"];
}

@end