@interface SBDoNotDisturbStateMonitor
+ (SBDoNotDisturbStateMonitor)sharedInstance;
- (DNDState)state;
- (SBDoNotDisturbStateMonitor)init;
- (void)_noteNewDNDState:(id)state;
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update;
@end

@implementation SBDoNotDisturbStateMonitor

+ (SBDoNotDisturbStateMonitor)sharedInstance
{
  if (sharedInstance_onceToken_55 != -1)
  {
    +[SBDoNotDisturbStateMonitor sharedInstance];
  }

  v3 = sharedInstance_monitor_0;

  return v3;
}

void __44__SBDoNotDisturbStateMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SBDoNotDisturbStateMonitor);
  v1 = sharedInstance_monitor_0;
  sharedInstance_monitor_0 = v0;
}

- (SBDoNotDisturbStateMonitor)init
{
  v12.receiver = self;
  v12.super_class = SBDoNotDisturbStateMonitor;
  v2 = [(SBDoNotDisturbStateMonitor *)&v12 init];
  v3 = v2;
  if (v2)
  {
    v2->_lock._os_unfair_lock_opaque = 0;
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    lock_observers = v3->_lock_observers;
    v3->_lock_observers = weakObjectsHashTable;

    v6 = [MEMORY[0x277D05AB0] serviceForClientIdentifier:@"com.apple.springboard.dndstatemonitor"];
    stateService = v3->_stateService;
    v3->_stateService = v6;

    [(DNDStateService *)v3->_stateService addStateUpdateListener:v3 withCompletionHandler:0];
    v8 = v3->_stateService;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __34__SBDoNotDisturbStateMonitor_init__block_invoke;
    v10[3] = &unk_2783C1508;
    v11 = v3;
    [(DNDStateService *)v8 queryCurrentStateWithCompletionHandler:v10];
  }

  return v3;
}

uint64_t __34__SBDoNotDisturbStateMonitor_init__block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    return [*(result + 32) _noteNewDNDState:a2];
  }

  return result;
}

- (DNDState)state
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_lock_state;
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers addObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  os_unfair_lock_lock(&self->_lock);
  [(NSHashTable *)self->_lock_observers removeObject:observerCopy];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)stateService:(id)service didReceiveDoNotDisturbStateUpdate:(id)update
{
  state = [update state];
  [(SBDoNotDisturbStateMonitor *)self _noteNewDNDState:state];
}

- (void)_noteNewDNDState:(id)state
{
  v4 = [state copy];
  os_unfair_lock_lock(&self->_lock);
  objc_storeStrong(&self->_lock_state, v4);
  v5 = [(NSHashTable *)self->_lock_observers copy];
  os_unfair_lock_unlock(&self->_lock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__SBDoNotDisturbStateMonitor__noteNewDNDState___block_invoke;
  block[3] = &unk_2783A8ED8;
  v9 = v5;
  selfCopy = self;
  v11 = v4;
  v6 = v4;
  v7 = v5;
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __47__SBDoNotDisturbStateMonitor__noteNewDNDState___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) doNotDisturbStateMonitor:*(a1 + 40) didUpdateToState:{*(a1 + 48), v7}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

@end