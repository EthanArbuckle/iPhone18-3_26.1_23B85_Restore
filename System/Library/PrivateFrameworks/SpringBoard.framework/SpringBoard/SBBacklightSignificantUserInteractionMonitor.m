@interface SBBacklightSignificantUserInteractionMonitor
- (BOOL)handleEvent:(id)a3;
- (CSCoverSheetViewController)coverSheetViewController;
- (NSString)coverSheetIdentifier;
- (void)_notifyObserversOfSignificantUserInteraction;
- (void)addObserver:(id)a3;
- (void)setCoverSheetViewController:(id)a3;
@end

@implementation SBBacklightSignificantUserInteractionMonitor

- (void)_notifyObserversOfSignificantUserInteraction
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [(NSHashTable *)self->_observers allObjects];
  v4 = [v3 copy];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v5 = v4;
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

        [*(*(&v10 + 1) + 8 * v9++) significantUserInteractionMonitorDetectedSignificantUserInteraction:{self, v10}];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
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

- (void)setCoverSheetViewController:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetViewController);
  if (WeakRetained != obj)
  {
    [WeakRetained unregisterExternalEventHandler:self];
    objc_storeWeak(&self->_coverSheetViewController, obj);
    [obj registerExternalEventHandler:self];
  }
}

- (NSString)coverSheetIdentifier
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (BOOL)handleEvent:(id)a3
{
  v4 = [a3 type];
  if (v4 == 21 || v4 == 12)
  {
    [(SBBacklightSignificantUserInteractionMonitor *)self _notifyObserversOfSignificantUserInteraction];
  }

  return 0;
}

- (CSCoverSheetViewController)coverSheetViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_coverSheetViewController);

  return WeakRetained;
}

@end