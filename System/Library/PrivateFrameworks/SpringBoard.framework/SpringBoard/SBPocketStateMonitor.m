@interface SBPocketStateMonitor
+ (id)sharedInstance;
- (SBPocketStateMonitor)init;
- (SBPocketStateMonitor)initWithCMPocketStateManager:(id)a3 calloutQueue:(id)a4;
- (void)addObserver:(id)a3;
- (void)dealloc;
- (void)pocketStateManager:(id)a3 didUpdateState:(int64_t)a4;
@end

@implementation SBPocketStateMonitor

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__SBPocketStateMonitor_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (SBPocketStateMonitor)initWithCMPocketStateManager:(id)a3 calloutQueue:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = SBPocketStateMonitor;
  v9 = [(SBPocketStateMonitor *)&v12 init];
  v10 = v9;
  if (v9)
  {
    v9->_pocketState = 0;
    objc_storeStrong(&v9->_calloutQueue, a4);
    if ([objc_opt_class() isPocketStateAvailable])
    {
      objc_storeStrong(&v10->_pocketStateManager, a3);
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

- (void)addObserver:(id)a3
{
  v4 = a3;
  observers = self->_observers;
  v8 = v4;
  if (!observers)
  {
    v6 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    v7 = self->_observers;
    self->_observers = v6;

    v4 = v8;
    observers = self->_observers;
  }

  [(NSHashTable *)observers addObject:v4];
}

- (void)pocketStateManager:(id)a3 didUpdateState:(int64_t)a4
{
  calloutQueue = self->_calloutQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __58__SBPocketStateMonitor_pocketStateManager_didUpdateState___block_invoke;
  v5[3] = &unk_2783A8BC8;
  v5[4] = self;
  v5[5] = a4;
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