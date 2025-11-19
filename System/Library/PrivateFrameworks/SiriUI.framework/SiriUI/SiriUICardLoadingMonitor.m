@interface SiriUICardLoadingMonitor
+ (id)sharedInstance;
- (SiriUICardLoadingMonitor)init;
- (void)addObserver:(id)a3;
- (void)broadcastCardSnippet:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation SiriUICardLoadingMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[SiriUICardLoadingMonitor sharedInstance];
  }

  v3 = sharedInstance_sCardLoadingMonitor;

  return v3;
}

uint64_t __42__SiriUICardLoadingMonitor_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(SiriUICardLoadingMonitor);
  v1 = sharedInstance_sCardLoadingMonitor;
  sharedInstance_sCardLoadingMonitor = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (SiriUICardLoadingMonitor)init
{
  v6.receiver = self;
  v6.super_class = SiriUICardLoadingMonitor;
  v2 = [(SiriUICardLoadingMonitor *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    observers = v2->_observers;
    v2->_observers = v3;
  }

  return v2;
}

- (void)addObserver:(id)a3
{
  v4 = a3;
  if (![(SiriUICardLoadingMonitor *)self isTrackingObserver:?])
  {
    [(NSMutableArray *)self->_observers addObject:v4];
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if ([(SiriUICardLoadingMonitor *)self isTrackingObserver:?])
  {
    [(NSMutableArray *)self->_observers removeObject:v4];
  }
}

- (void)broadcastCardSnippet:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
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

        [*(*(&v10 + 1) + 8 * v9++) cardLoadingMonitor:self didReceiveCardSnippet:{v4, v10}];
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end