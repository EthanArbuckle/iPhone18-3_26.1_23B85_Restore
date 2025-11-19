@interface PBFPosterExtensionDataStoreAssertionManager
- (BOOL)_notifyObserversOfNewAssertions:(id)a3 newlyNotInUseAssertions:(id)a4;
- (BOOL)_notifyObserversOfUpdatedController:(id)a3;
- (BOOL)executeTransaction:(id)a3;
- (PBFPosterExtensionDataStoreAssertionManager)init;
- (id)inUsePosterPathIdentitiesForReason:(id)a3;
- (int64_t)numberOfAssertionsForReason:(id)a3;
- (void)addObserver:(id)a3;
- (void)enumerateObservers:(id)a3;
- (void)invalidate;
- (void)removeObserver:(id)a3;
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

    v7 = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v2->_observers;
    v2->_observers = v7;

    v9 = objc_alloc_init(_PBFPosterExtensionDataStoreAssertionController);
    controller = v2->_controller;
    v2->_controller = v9;
  }

  return v2;
}

- (BOOL)executeTransaction:(id)a3
{
  v4 = a3;
  if (v4 && [(BSAtomicFlag *)self->_txFlag setFlag:1])
  {
    v5 = self;
    objc_sync_enter(v5);
    v6 = [[_PBFPosterExtensionDataStoreAssertionController alloc] initWithController:v5->_controller];
    v7 = v4[2](v4, v6);
    if (v7)
    {
      [(PBFPosterExtensionDataStoreAssertionManager *)v5 _notifyObserversOfUpdatedController:v6];
    }

    [(BSAtomicFlag *)self->_txFlag setFlag:0];

    objc_sync_exit(v5);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)addObserver:(id)a3
{
  v5 = a3;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    v4 = self->_observers;
    objc_sync_enter(v4);
    [(NSHashTable *)self->_observers addObject:v5];
    objc_sync_exit(v4);
  }
}

- (void)removeObserver:(id)a3
{
  v5 = a3;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    v4 = self->_observers;
    objc_sync_enter(v4);
    [(NSHashTable *)self->_observers removeObject:v5];
    objc_sync_exit(v4);
  }
}

- (void)enumerateObservers:(id)a3
{
  v4 = a3;
  v5 = [(BSAtomicFlag *)self->_invalidationFlag getFlag];
  if (v4 && (v5 & 1) == 0)
  {
    v6 = self->_observers;
    objc_sync_enter(v6);
    v7 = [(NSHashTable *)self->_observers allObjects];
    v8 = [v7 copy];

    objc_sync_exit(v6);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __66__PBFPosterExtensionDataStoreAssertionManager_enumerateObservers___block_invoke;
    v9[3] = &unk_2782C8DE8;
    v10 = v4;
    [v8 enumerateObjectsUsingBlock:v9];
  }
}

- (BOOL)_notifyObserversOfUpdatedController:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v7 = self;
    objc_sync_enter(v7);
    obj = v7;
    v8 = [(_PBFPosterExtensionDataStoreAssertionController *)v7->_controller inUseAssertionsByIdentity];
    v9 = [v5 inUseAssertionsByIdentity];
    v26 = v5;
    v30 = objc_opt_new();
    v10 = objc_opt_new();
    p_controller = &v7->_controller;
    v28 = a3;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v11 = [v8 keyEnumerator];
    v12 = [v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v12)
    {
      v13 = *v36;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v35 + 1) + 8 * i);
          v16 = [v9 objectForKey:v15];
          v17 = [v16 count] == 0;

          if (v17)
          {
            [v10 addObject:v15];
          }
        }

        v12 = [v11 countByEnumeratingWithState:&v35 objects:v40 count:16];
      }

      while (v12);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = [v9 keyEnumerator];
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v19)
    {
      v20 = *v32;
      do
      {
        for (j = 0; j != v19; ++j)
        {
          if (*v32 != v20)
          {
            objc_enumerationMutation(v18);
          }

          v22 = *(*(&v31 + 1) + 8 * j);
          v23 = [v8 objectForKey:v22];
          v24 = [v23 count] == 0;

          if (v24)
          {
            [v30 addObject:v22];
          }
        }

        v19 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v19);
    }

    objc_storeStrong(p_controller, v28);
    v6 = [(PBFPosterExtensionDataStoreAssertionManager *)obj _notifyObserversOfNewAssertions:v30 newlyNotInUseAssertions:v10];

    objc_sync_exit(obj);
    v5 = v26;
  }

  return v6;
}

- (BOOL)_notifyObserversOfNewAssertions:(id)a3 newlyNotInUseAssertions:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 count] || objc_msgSend(v7, "count"))
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __103__PBFPosterExtensionDataStoreAssertionManager__notifyObserversOfNewAssertions_newlyNotInUseAssertions___block_invoke;
    v10[3] = &unk_2782C8E10;
    v11 = v6;
    v12 = self;
    v13 = v7;
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

- (id)inUsePosterPathIdentitiesForReason:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(_PBFPosterExtensionDataStoreAssertionController *)v5->_controller inUsePosterPathIdentitiesForReason:v4];
  objc_sync_exit(v5);

  return v6;
}

- (int64_t)numberOfAssertionsForReason:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(_PBFPosterExtensionDataStoreAssertionController *)v5->_controller numberOfAssertionsForReason:v4];
  objc_sync_exit(v5);

  return v6;
}

@end