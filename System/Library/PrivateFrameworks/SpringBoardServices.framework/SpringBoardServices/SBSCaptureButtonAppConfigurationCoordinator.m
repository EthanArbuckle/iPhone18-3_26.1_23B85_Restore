@interface SBSCaptureButtonAppConfigurationCoordinator
- (SBSCaptureButtonAppConfigurationCoordinator)init;
- (id)addObserverForAssociatedAppUpdatesUsingBlock:(id)a3;
- (id)addObserverForEligibleAppsUpdatesUsingBlock:(id)a3;
- (id)addObserverForEligibleCaptureAppsUpdatesUsingBlock:(id)a3;
- (void)captureButtonAppConfigurationClient:(id)a3 receiveInitialOrUpdatedAssociatedAppBundleIdentifier:(id)a4;
- (void)captureButtonAppConfigurationClient:(id)a3 receiveInitialOrUpdatedEligibleApps:(id)a4;
- (void)dealloc;
- (void)setAssociatedAppBundleIdentifier:(id)a3;
@end

@implementation SBSCaptureButtonAppConfigurationCoordinator

- (SBSCaptureButtonAppConfigurationCoordinator)init
{
  v12.receiver = self;
  v12.super_class = SBSCaptureButtonAppConfigurationCoordinator;
  v2 = [(SBSCaptureButtonAppConfigurationCoordinator *)&v12 init];
  if (v2)
  {
    v3 = objc_alloc_init(SBSCaptureButtonAppConfigurationClient);
    client = v2->_client;
    v2->_client = v3;

    [(SBSCaptureButtonAppConfigurationClient *)v2->_client setDelegate:v2];
    v5 = objc_alloc_init(MEMORY[0x1E696AD18]);
    associatedAppObserversToBlocks = v2->_associatedAppObserversToBlocks;
    v2->_associatedAppObserversToBlocks = v5;

    v7 = objc_alloc_init(MEMORY[0x1E696AD18]);
    eligibleAppsObserversToBlocks = v2->_eligibleAppsObserversToBlocks;
    v2->_eligibleAppsObserversToBlocks = v7;

    v9 = objc_alloc_init(MEMORY[0x1E696AD18]);
    eligibleCaptureAppsObserversToBlocks = v2->_eligibleCaptureAppsObserversToBlocks;
    v2->_eligibleCaptureAppsObserversToBlocks = v9;

    *&v2->_isAssociatedAppKnown = 0;
  }

  return v2;
}

- (void)dealloc
{
  [(NSMapTable *)self->_associatedAppObserversToBlocks removeAllObjects];
  [(NSMapTable *)self->_eligibleAppsObserversToBlocks removeAllObjects];
  [(NSMapTable *)self->_eligibleCaptureAppsObserversToBlocks removeAllObjects];
  v3.receiver = self;
  v3.super_class = SBSCaptureButtonAppConfigurationCoordinator;
  [(SBSCaptureButtonAppConfigurationCoordinator *)&v3 dealloc];
}

- (void)setAssociatedAppBundleIdentifier:(id)a3
{
  v4 = a3;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  currentEligibleApps = self->_currentEligibleApps;
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __80__SBSCaptureButtonAppConfigurationCoordinator_setAssociatedAppBundleIdentifier___block_invoke;
  v10 = &unk_1E735FB50;
  v6 = v4;
  v11 = v6;
  v12 = &v13;
  [(NSSet *)currentEligibleApps enumerateObjectsUsingBlock:&v7];
  if (!v6 || *(v14 + 24) == 1)
  {
    [(SBSCaptureButtonAppConfigurationClient *)self->_client establishConnectionIfNeeded:v7];
    [(SBSCaptureButtonAppConfigurationClient *)self->_client setCurrentAssociatedAppUsingBundleIdentifier:v6];
  }

  _Block_object_dispose(&v13, 8);
}

void __80__SBSCaptureButtonAppConfigurationCoordinator_setAssociatedAppBundleIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 bundleIdentifier];
  v4 = BSEqualStrings();

  if (v4)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
  }
}

- (id)addObserverForAssociatedAppUpdatesUsingBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBSCaptureButtonAppConfigurationCoordinator *)a2 addObserverForAssociatedAppUpdatesUsingBlock:?];
  }

  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x1E698E778]);
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];
  v10 = [v7 stringWithFormat:@"(Active App Observer) %@", v9];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__SBSCaptureButtonAppConfigurationCoordinator_addObserverForAssociatedAppUpdatesUsingBlock___block_invoke;
  v15[3] = &unk_1E735F278;
  objc_copyWeak(&v16, &location);
  v11 = [v6 initWithIdentifier:v10 forReason:@"Add observer for active app updates" invalidationBlock:v15];

  associatedAppObserversToBlocks = self->_associatedAppObserversToBlocks;
  v13 = MEMORY[0x193AFFB30](v5);
  [(NSMapTable *)associatedAppObserversToBlocks setObject:v13 forKey:v11];

  if (self->_isAssociatedAppKnown)
  {
    v5[2](v5, self->_currentAssociatedAppBundleIdentifier);
  }

  [(SBSCaptureButtonAppConfigurationClient *)self->_client establishConnectionIfNeeded];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v11;
}

void __92__SBSCaptureButtonAppConfigurationCoordinator_addObserverForAssociatedAppUpdatesUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[2] removeObjectForKey:v5];
  }
}

- (id)addObserverForEligibleAppsUpdatesUsingBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBSCaptureButtonAppConfigurationCoordinator *)a2 addObserverForEligibleAppsUpdatesUsingBlock:?];
  }

  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x1E698E778]);
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];
  v10 = [v7 stringWithFormat:@"(Eligible Apps Observer) %@", v9];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __91__SBSCaptureButtonAppConfigurationCoordinator_addObserverForEligibleAppsUpdatesUsingBlock___block_invoke;
  v15[3] = &unk_1E735F278;
  objc_copyWeak(&v16, &location);
  v11 = [v6 initWithIdentifier:v10 forReason:@"Add observer for eligible apps updates" invalidationBlock:v15];

  eligibleAppsObserversToBlocks = self->_eligibleAppsObserversToBlocks;
  v13 = MEMORY[0x193AFFB30](v5);
  [(NSMapTable *)eligibleAppsObserversToBlocks setObject:v13 forKey:v11];

  if (self->_areEligibleAppsKnown)
  {
    v5[2](v5, self->_currentEligibleAppsBundleIdentifiers);
  }

  [(SBSCaptureButtonAppConfigurationClient *)self->_client establishConnectionIfNeeded];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v11;
}

void __91__SBSCaptureButtonAppConfigurationCoordinator_addObserverForEligibleAppsUpdatesUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[3] removeObjectForKey:v5];
  }
}

- (id)addObserverForEligibleCaptureAppsUpdatesUsingBlock:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [(SBSCaptureButtonAppConfigurationCoordinator *)a2 addObserverForEligibleCaptureAppsUpdatesUsingBlock:?];
  }

  objc_initWeak(&location, self);
  v6 = objc_alloc(MEMORY[0x1E698E778]);
  v7 = MEMORY[0x1E696AEC0];
  v8 = [MEMORY[0x1E696AFB0] UUID];
  v9 = [v8 UUIDString];
  v10 = [v7 stringWithFormat:@"(Eligible Capture Apps Observer) %@", v9];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __98__SBSCaptureButtonAppConfigurationCoordinator_addObserverForEligibleCaptureAppsUpdatesUsingBlock___block_invoke;
  v15[3] = &unk_1E735F278;
  objc_copyWeak(&v16, &location);
  v11 = [v6 initWithIdentifier:v10 forReason:@"Add observer for eligible capture apps updates" invalidationBlock:v15];

  eligibleCaptureAppsObserversToBlocks = self->_eligibleCaptureAppsObserversToBlocks;
  v13 = MEMORY[0x193AFFB30](v5);
  [(NSMapTable *)eligibleCaptureAppsObserversToBlocks setObject:v13 forKey:v11];

  if (self->_areEligibleAppsKnown)
  {
    v5[2](v5, self->_currentEligibleApps);
  }

  [(SBSCaptureButtonAppConfigurationClient *)self->_client establishConnectionIfNeeded];
  objc_destroyWeak(&v16);
  objc_destroyWeak(&location);

  return v11;
}

void __98__SBSCaptureButtonAppConfigurationCoordinator_addObserverForEligibleCaptureAppsUpdatesUsingBlock___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v4 = WeakRetained;
  if (WeakRetained)
  {
    [WeakRetained[4] removeObjectForKey:v5];
  }
}

- (void)captureButtonAppConfigurationClient:(id)a3 receiveInitialOrUpdatedAssociatedAppBundleIdentifier:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = a4;
  BSDispatchQueueAssertMain();
  v6 = [v5 copy];
  currentAssociatedAppBundleIdentifier = self->_currentAssociatedAppBundleIdentifier;
  self->_currentAssociatedAppBundleIdentifier = v6;

  self->_isAssociatedAppKnown = 1;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(NSMapTable *)self->_associatedAppObserversToBlocks objectEnumerator];
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

        (*(*(*(&v13 + 1) + 8 * v12++) + 16))();
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)captureButtonAppConfigurationClient:(id)a3 receiveInitialOrUpdatedEligibleApps:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v5 = a4;
  BSDispatchQueueAssertMain();
  v6 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v28[0] = MEMORY[0x1E69E9820];
  v28[1] = 3221225472;
  v28[2] = __119__SBSCaptureButtonAppConfigurationCoordinator_captureButtonAppConfigurationClient_receiveInitialOrUpdatedEligibleApps___block_invoke;
  v28[3] = &unk_1E735FB78;
  v7 = v6;
  v29 = v7;
  [v5 enumerateObjectsUsingBlock:v28];
  objc_storeStrong(&self->_currentEligibleAppsBundleIdentifiers, v6);
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v8 = [(NSMapTable *)self->_eligibleAppsObserversToBlocks objectEnumerator];
  v9 = [v8 countByEnumeratingWithState:&v24 objects:v31 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(v8);
        }

        (*(*(*(&v24 + 1) + 8 * v12++) + 16))();
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v24 objects:v31 count:16];
    }

    while (v10);
  }

  v13 = [v5 copy];
  currentEligibleApps = self->_currentEligibleApps;
  self->_currentEligibleApps = v13;

  self->_areEligibleAppsKnown = 1;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v15 = [(NSMapTable *)self->_eligibleCaptureAppsObserversToBlocks objectEnumerator];
  v16 = [v15 countByEnumeratingWithState:&v20 objects:v30 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v21;
    do
    {
      v19 = 0;
      do
      {
        if (*v21 != v18)
        {
          objc_enumerationMutation(v15);
        }

        (*(*(*(&v20 + 1) + 8 * v19++) + 16))();
      }

      while (v17 != v19);
      v17 = [v15 countByEnumeratingWithState:&v20 objects:v30 count:16];
    }

    while (v17);
  }
}

void __119__SBSCaptureButtonAppConfigurationCoordinator_captureButtonAppConfigurationClient_receiveInitialOrUpdatedEligibleApps___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 bundleIdentifier];
  [v2 addObject:v3];
}

- (void)addObserverForAssociatedAppUpdatesUsingBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSCaptureButtonAppConfigurationCoordinator.m" lineNumber:65 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
}

- (void)addObserverForEligibleAppsUpdatesUsingBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSCaptureButtonAppConfigurationCoordinator.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
}

- (void)addObserverForEligibleCaptureAppsUpdatesUsingBlock:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SBSCaptureButtonAppConfigurationCoordinator.m" lineNumber:99 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];
}

@end