@interface SBDefaultUserInterfaceStyleProvider
- (SBDefaultUserInterfaceStyleProvider)init;
- (int64_t)currentStyle;
- (void)_notifyObserversCurrentStyleChanged;
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
@end

@implementation SBDefaultUserInterfaceStyleProvider

- (int64_t)currentStyle
{
  v2 = [MEMORY[0x277D75CF0] sharedInstance];
  v3 = [v2 currentStyle];

  return v3;
}

- (SBDefaultUserInterfaceStyleProvider)init
{
  v9.receiver = self;
  v9.super_class = SBDefaultUserInterfaceStyleProvider;
  v2 = [(SBDefaultUserInterfaceStyleProvider *)&v9 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CCAA50]);
    observers = v2->_observers;
    v2->_observers = v3;

    v5 = [MEMORY[0x277CCAB98] defaultCenter];
    v6 = *MEMORY[0x277D77250];
    v7 = [MEMORY[0x277D75CF0] sharedInstance];
    [v5 addObserver:v2 selector:sel__notifyObserversCurrentStyleChanged name:v6 object:v7];
  }

  return v2;
}

- (void)addObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers addObject:?];
  }
}

- (void)removeObserver:(id)a3
{
  if (a3)
  {
    [(NSHashTable *)self->_observers removeObject:?];
  }
}

- (void)_notifyObserversCurrentStyleChanged
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(SBDefaultUserInterfaceStyleProvider *)self currentStyle];
  v4 = [MEMORY[0x277D679A8] animationSettingsForTransitionToStyle:v3];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSHashTable *)self->_observers copy];
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

        [*(*(&v10 + 1) + 8 * v9++) userInterfaceStyleProvider:self didUpdateStyle:v3 preferredAnimationSettings:v4 completion:0];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end