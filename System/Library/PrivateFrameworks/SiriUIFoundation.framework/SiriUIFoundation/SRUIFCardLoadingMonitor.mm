@interface SRUIFCardLoadingMonitor
+ (id)sharedInstance;
- (SRUIFCardLoadingMonitor)init;
- (void)addObserver:(id)observer;
- (void)broadcastCardSnippet:(id)snippet;
- (void)broadcastVisualResponseSnippet:(id)snippet;
- (void)removeObserver:(id)observer;
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

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (![(SRUIFCardLoadingMonitor *)self isTrackingObserver:?])
  {
    [(NSMutableArray *)self->_observers addObject:observerCopy];
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if ([(SRUIFCardLoadingMonitor *)self isTrackingObserver:?])
  {
    [(NSMutableArray *)self->_observers removeObject:observerCopy];
  }
}

- (void)broadcastCardSnippet:(id)snippet
{
  v17 = *MEMORY[0x277D85DE8];
  snippetCopy = snippet;
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
          [v10 cardLoadingMonitor:self didReceiveCardSnippet:{snippetCopy, v12}];
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

- (void)broadcastVisualResponseSnippet:(id)snippet
{
  v17 = *MEMORY[0x277D85DE8];
  snippetCopy = snippet;
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
          [v10 cardLoadingMonitor:self didReceiveVisualResponseSnippet:{snippetCopy, v12}];
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