@interface SRUIFCardLoadingMonitor
+ (id)sharedInstance;
- (SRUIFCardLoadingMonitor)init;
- (void)addObserver:(id)a3;
- (void)broadcastCardSnippet:(id)a3;
- (void)broadcastVisualResponseSnippet:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation SRUIFCardLoadingMonitor

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_0 != -1)
  {
    +[SRUIFCardLoadingMonitor sharedInstance];
  }

  v3 = sharedInstance_sCardLoadingMonitor;

  return v3;
}

uint64_t __41__SRUIFCardLoadingMonitor_sharedInstance__block_invoke()
{
  sharedInstance_sCardLoadingMonitor = objc_alloc_init(SRUIFCardLoadingMonitor);

  return MEMORY[0x2821F96F8]();
}

- (SRUIFCardLoadingMonitor)init
{
  v6.receiver = self;
  v6.super_class = SRUIFCardLoadingMonitor;
  v2 = [(SRUIFCardLoadingMonitor *)&v6 init];
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
  if (![(SRUIFCardLoadingMonitor *)self isTrackingObserver:?])
  {
    [(NSMutableArray *)self->_observers addObject:v4];
  }
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  if ([(SRUIFCardLoadingMonitor *)self isTrackingObserver:?])
  {
    [(NSMutableArray *)self->_observers removeObject:v4];
  }
}

- (void)broadcastCardSnippet:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 cardLoadingMonitor:self didReceiveCardSnippet:{v4, v12}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)broadcastVisualResponseSnippet:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_observers;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    do
    {
      v9 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v12 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 cardLoadingMonitor:self didReceiveVisualResponseSnippet:{v4, v12}];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v7);
  }

  v11 = *MEMORY[0x277D85DE8];
}

@end