@interface SBSwitcherDemoFilteringController
- (void)addObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)setHiddenApplicationBundleIDs:(id)a3;
@end

@implementation SBSwitcherDemoFilteringController

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

- (void)removeObserver:(id)a3
{
  [(NSHashTable *)self->_observers removeObject:a3];
  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (void)setHiddenApplicationBundleIDs:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  hiddenApplicationBundleIDs = self->_hiddenApplicationBundleIDs;
  if (hiddenApplicationBundleIDs != v4 && ([(NSArray *)hiddenApplicationBundleIDs isEqual:v4]& 1) == 0)
  {
    v6 = [(NSArray *)v4 copy];
    v7 = self->_hiddenApplicationBundleIDs;
    self->_hiddenApplicationBundleIDs = v6;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [(NSHashTable *)self->_observers allObjects];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        v12 = 0;
        do
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * v12++) switcherDemoFilteringControllerDidChangeHiddenApplicationBundleIDs:self];
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

@end