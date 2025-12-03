@interface SBSwitcherDemoFilteringController
- (void)addObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)setHiddenApplicationBundleIDs:(id)ds;
@end

@implementation SBSwitcherDemoFilteringController

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

- (void)removeObserver:(id)observer
{
  [(NSHashTable *)self->_observers removeObject:observer];
  if (![(NSHashTable *)self->_observers count])
  {
    observers = self->_observers;
    self->_observers = 0;
  }
}

- (void)setHiddenApplicationBundleIDs:(id)ds
{
  v18 = *MEMORY[0x277D85DE8];
  dsCopy = ds;
  hiddenApplicationBundleIDs = self->_hiddenApplicationBundleIDs;
  if (hiddenApplicationBundleIDs != dsCopy && ([(NSArray *)hiddenApplicationBundleIDs isEqual:dsCopy]& 1) == 0)
  {
    v6 = [(NSArray *)dsCopy copy];
    v7 = self->_hiddenApplicationBundleIDs;
    self->_hiddenApplicationBundleIDs = v6;

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v9 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(allObjects);
          }

          [*(*(&v13 + 1) + 8 * v12++) switcherDemoFilteringControllerDidChangeHiddenApplicationBundleIDs:self];
        }

        while (v10 != v12);
        v10 = [allObjects countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

@end