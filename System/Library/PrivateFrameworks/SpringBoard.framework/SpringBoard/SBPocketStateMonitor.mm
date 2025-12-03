@interface SBPocketStateMonitor
+ (id)sharedInstance;
- (SBPocketStateMonitor)init;
- (SBPocketStateMonitor)initWithCMPocketStateManager:(id)manager calloutQueue:(id)queue;
- (void)addObserver:(id)observer;
- (void)dealloc;
- (void)pocketStateManager:(id)manager didUpdateState:(int64_t)state;
@end

@implementation SBPocketStateMonitor

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SBPocketStateMonitor_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken_52 != -1)
  {
    dispatch_once(&sharedInstance_onceToken_52, block);
  }

  v2 = sharedInstance___result_3;

  return v2;
}

void __38__SBPocketStateMonitor_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = objc_alloc_init(MEMORY[0x277CC1D28]);
  v2 = [v1 initWithCMPocketStateManager:v4 calloutQueue:MEMORY[0x277D85CD0]];
  v3 = sharedInstance___result_3;
  sharedInstance___result_3 = v2;
}

- (SBPocketStateMonitor)init
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE658] reason:@"init not supported -- use initWithCMPocketStateManager:calloutQueue:" userInfo:0];
  objc_exception_throw(v2);
}

- (SBPocketStateMonitor)initWithCMPocketStateManager:(id)manager calloutQueue:(id)queue
{
  managerCopy = manager;
  queueCopy = queue;
  v12.receiver = self;
  v12.super_class = SBPocketStateMonitor;
  v9 = [(SBPocketStateMonitor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_pocketState = 0;
    objc_storeStrong(&v9->_calloutQueue, queue);
    if ([objc_opt_class() isPocketStateAvailable])
    {
      objc_storeStrong(&v10->_pocketStateManager, manager);
      [(CMPocketStateManager *)v10->_pocketStateManager setDelegate:v10];
    }
  }

  return v10;
}

- (void)dealloc
{
  [(CMPocketStateManager *)self->_pocketStateManager setDelegate:0];
  v3.receiver = self;
  v3.super_class = SBPocketStateMonitor;
  [(SBPocketStateMonitor *)&v3 dealloc];
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  observers = self->_observers;
  v8 = observerCopy;
  if (!observers)
  {
    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = weakObjectsHashTable;

    observerCopy = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:observerCopy];
}

- (void)pocketStateManager:(id)manager didUpdateState:(int64_t)state
{
  calloutQueue = self->_calloutQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SBPocketStateMonitor_pocketStateManager_didUpdateState___block_invoke;
  v5[3] = &unk_2783A8BC8;
  v5[4] = self;
  v5[5] = state;
  dispatch_async(calloutQueue, v5);
}

void __58__SBPocketStateMonitor_pocketStateManager_didUpdateState___block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  if ((v2 - 1) >= 4)
  {
    v2 = 0;
  }

  v3 = *(v1 + 16);
  if (v3 != v2)
  {
    *(v1 + 16) = v2;
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    v5 = *(*(a1 + 32) + 24);
    v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9++) pocketStateMonitor:*(a1 + 32) pocketStateDidChangeFrom:v3 to:{*(*(a1 + 32) + 16), v10}];
        }

        while (v7 != v9);
        v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

@end