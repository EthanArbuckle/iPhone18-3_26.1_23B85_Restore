@interface PBFPosterExtensionDataStoreAssertionManager
- (BOOL)_notifyObserversOfNewAssertions:(id)assertions newlyNotInUseAssertions:(id)useAssertions;
- (BOOL)_notifyObserversOfUpdatedController:(id)controller;
- (BOOL)executeTransaction:(id)transaction;
- (PBFPosterExtensionDataStoreAssertionManager)init;
- (id)inUsePosterPathIdentitiesForReason:(id)reason;
- (int64_t)numberOfAssertionsForReason:(id)reason;
- (void)addObserver:(id)observer;
- (void)enumerateObservers:(id)observers;
- (void)invalidate;
- (void)removeObserver:(id)observer;
@end

@implementation PBFPosterExtensionDataStoreAssertionManager

- (PBFPosterExtensionDataStoreAssertionManager)init
{
  v12.receiver = self;
  v12.super_class = PBFPosterExtensionDataStoreAssertionManager;
  v2 = [(PBFPosterExtensionDataStoreAssertionManager *)&v12 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    invalidationFlag = v2->_invalidationFlag;
    v2->_invalidationFlag = v3;

    v5 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    txFlag = v2->_txFlag;
    v2->_txFlag = v5;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = weakObjectsHashTable;

    v9 = objc_alloc_init(_PBFPosterExtensionDataStoreAssertionController);
    controller = v2->_controller;
    v2->_controller = v9;
  }

  return v2;
}

- (BOOL)executeTransaction:(id)transaction
{
  transactionCopy = transaction;
  if (transactionCopy && [(BSAtomicFlag *)self->_txFlag setFlag:1])
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v6 = [[_PBFPosterExtensionDataStoreAssertionController alloc] initWithController:selfCopy->_controller];
    v7 = transactionCopy[2](transactionCopy, v6);
    if (v7)
    {
      [(PBFPosterExtensionDataStoreAssertionManager *)selfCopy _notifyObserversOfUpdatedController:v6];
    }

    [(BSAtomicFlag *)self->_txFlag setFlag:0];

    objc_sync_exit(selfCopy);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    v4 = self->_observers;
    objc_sync_enter(v4);
    [(NSHashTable *)self->_observers addObject:observerCopy];
    objc_sync_exit(v4);
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    v4 = self->_observers;
    objc_sync_enter(v4);
    [(NSHashTable *)self->_observers removeObject:observerCopy];
    objc_sync_exit(v4);
  }
}

- (void)enumerateObservers:(id)observers
{
  observersCopy = observers;
  getFlag = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if (observersCopy && (getFlag & 1) == 0)
  {
    v6 = self->_observers;
    objc_sync_enter(v6);
    allObjects = [(NSHashTable *)self->_observers allObjects];
    v8 = [allObjects copy];

    objc_sync_exit(v6);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__PBFPosterExtensionDataStoreAssertionManager_enumerateObservers___block_invoke;
    v9[3] = &unk_2782C8DE8;
    v10 = observersCopy;
    [v8 enumerateObjectsUsingBlock:v9];
  }
}

- (BOOL)_notifyObserversOfUpdatedController:(id)controller
{
  v41 = *MEMORY[0x277D85DE8];
  controllerCopy = controller;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    obj = selfCopy;
    inUseAssertionsByIdentity = [(_PBFPosterExtensionDataStoreAssertionController *)selfCopy->_controller inUseAssertionsByIdentity];
    inUseAssertionsByIdentity2 = [controllerCopy inUseAssertionsByIdentity];
    v26 = controllerCopy;
    v30 = objc_opt_new();
    v10 = objc_opt_new();
    p_controller = &selfCopy->_controller;
    controllerCopy2 = controller;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    keyEnumerator = [inUseAssertionsByIdentity keyEnumerator];
    v12 = [keyEnumerator countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v12)
    {
      v13 = *v36;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(keyEnumerator);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          v16 = [inUseAssertionsByIdentity2 objectForKey:v15];
          v17 = [v16 count] == 0;

          if (v17)
          {
            [v10 addObject:v15];
          }
        }

        v12 = [keyEnumerator countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v12);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    keyEnumerator2 = [inUseAssertionsByIdentity2 keyEnumerator];
    v19 = [keyEnumerator2 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v19)
    {
      v20 = *v32;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(keyEnumerator2);
          }

          v22 = *(*(&v31 + 1) + 8 * j);
          v23 = [inUseAssertionsByIdentity objectForKey:v22];
          v24 = [v23 count] == 0;

          if (v24)
          {
            [v30 addObject:v22];
          }
        }

        v19 = [keyEnumerator2 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v19);
    }

    objc_storeStrong(p_controller, controllerCopy2);
    v6 = [(PBFPosterExtensionDataStoreAssertionManager *)obj _notifyObserversOfNewAssertions:v30 newlyNotInUseAssertions:v10];

    objc_sync_exit(obj);
    controllerCopy = v26;
  }

  return v6;
}

- (BOOL)_notifyObserversOfNewAssertions:(id)assertions newlyNotInUseAssertions:(id)useAssertions
{
  assertionsCopy = assertions;
  useAssertionsCopy = useAssertions;
  if ([assertionsCopy count] || objc_msgSend(useAssertionsCopy, "count"))
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __103__PBFPosterExtensionDataStoreAssertionManager__notifyObserversOfNewAssertions_newlyNotInUseAssertions___block_invoke;
    v10[3] = &unk_2782C8E10;
    v11 = assertionsCopy;
    selfCopy = self;
    v13 = useAssertionsCopy;
    [(PBFPosterExtensionDataStoreAssertionManager *)self enumerateObservers:v10];

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __103__PBFPosterExtensionDataStoreAssertionManager__notifyObserversOfNewAssertions_newlyNotInUseAssertions___block_invoke(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v19;
    do
    {
      v8 = 0;
      do
      {
        if (*v19 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [v3 assertionManager:*(a1 + 40) identityIsNowMarkedAsInUse:*(*(&v18 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v18 objects:v23 count:16];
    }

    while (v6);
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v9 = *(a1 + 48);
  v10 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v15;
    do
    {
      v13 = 0;
      do
      {
        if (*v15 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [v3 assertionManager:*(a1 + 40) identityIsNowMarkedAsNOTInUse:{*(*(&v14 + 1) + 8 * v13++), v14}];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v11);
  }
}

- (void)invalidate
{
  if ([(BSAtomicFlag *)self->_invalidationFlag setFlag:1])
  {
    [(_PBFPosterExtensionDataStoreAssertionController *)self->_controller invalidate];
    controller = self->_controller;
    self->_controller = 0;
  }
}

- (id)inUsePosterPathIdentitiesForReason:(id)reason
{
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(_PBFPosterExtensionDataStoreAssertionController *)selfCopy->_controller inUsePosterPathIdentitiesForReason:reasonCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (int64_t)numberOfAssertionsForReason:(id)reason
{
  reasonCopy = reason;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(_PBFPosterExtensionDataStoreAssertionController *)selfCopy->_controller numberOfAssertionsForReason:reasonCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

@end