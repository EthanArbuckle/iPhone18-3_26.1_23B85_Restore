@interface SBSBackgroundActivityAssertionManager
+ (id)sharedInstance;
- (SBSBackgroundActivityAssertionManager)init;
- (SBSBackgroundActivityCoordinator)internalQueue_backgroundActivityCoordinator;
- (id)descriptionBuilderWithMultilinePrefix:(id)a3;
- (id)descriptionWithMultilinePrefix:(id)a3;
- (id)succinctDescription;
- (void)_handleXPCConnectionInvalidation;
- (void)_internalQueue_removeBackgroundActivityAssertionWithIdentifier:(id)a3 invalidate:(BOOL)a4;
- (void)_internalQueue_setupXPCConnectionIfNecessary;
- (void)_internalQueue_updateRegistrationForCoordinator:(id)a3 reply:(id)a4;
- (void)_reactivateAssertions;
- (void)_registerBackgroundActivityCoordinatorAfterInterruption;
- (void)addBackgroundActivityAssertion:(id)a3 withHandler:(id)a4 onQueue:(id)a5;
- (void)invalidateBackgroundActivityAssertionsWithIdentifiers:(id)a3;
- (void)removeBackgroundActivityAssertion:(id)a3;
- (void)statusBarTappedWithContext:(id)a3 reply:(id)a4;
- (void)unregisterCoordinator;
- (void)updateRegistrationForCoordinator:(id)a3 reply:(id)a4;
- (void)updateStatusStringForAssertion:(id)a3;
@end

@implementation SBSBackgroundActivityAssertionManager

uint64_t __55__SBSBackgroundActivityAssertionManager_sharedInstance__block_invoke()
{
  sharedInstance___sharedBackgroundActivityAssertionManager = objc_opt_new();

  return MEMORY[0x1EEE66BB8]();
}

- (SBSBackgroundActivityAssertionManager)init
{
  v15.receiver = self;
  v15.super_class = SBSBackgroundActivityAssertionManager;
  v2 = [(SBSBackgroundActivityAssertionManager *)&v15 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E696AD18] strongToWeakObjectsMapTable];
    assertionsByIdentifier = v2->_assertionsByIdentifier;
    v2->_assertionsByIdentifier = v3;

    v5 = [MEMORY[0x1E695DF90] dictionary];
    acquisitionHandlerEntriesByIdentifier = v2->_acquisitionHandlerEntriesByIdentifier;
    v2->_acquisitionHandlerEntriesByIdentifier = v5;

    Serial = BSDispatchQueueCreateSerial();
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = Serial;

    v9 = BSDispatchQueueCreateSerial();
    coordinatorCalloutQueue = v2->_coordinatorCalloutQueue;
    v2->_coordinatorCalloutQueue = v9;

    objc_initWeak(&location, v2);
    objc_copyWeak(&v13, &location);
    v11 = BSLogAddStateCaptureBlockWithTitle();
    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)_internalQueue_setupXPCConnectionIfNecessary
{
  dispatch_assert_queue_V2(self->_internalQueue);
  if (!self->_sbXPCConnection)
  {
    v4 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.springboard.statusbarservices" options:0];
    sbXPCConnection = self->_sbXPCConnection;
    self->_sbXPCConnection = v4;

    v6 = self->_sbXPCConnection;
    v7 = SBSBackgroundActivityAssertionClientInterface();
    [(NSXPCConnection *)v6 setExportedInterface:v7];

    [(NSXPCConnection *)self->_sbXPCConnection setExportedObject:self];
    v8 = self->_sbXPCConnection;
    v9 = SBBackgroundActivityAssertionServerInterface();
    [(NSXPCConnection *)v8 setRemoteObjectInterface:v9];

    objc_initWeak(&location, self);
    v10 = self->_sbXPCConnection;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __85__SBSBackgroundActivityAssertionManager__internalQueue_setupXPCConnectionIfNecessary__block_invoke;
    v17[3] = &unk_1E7361180;
    objc_copyWeak(&v18, &location);
    [(NSXPCConnection *)v10 setInterruptionHandler:v17];
    v11 = self->_sbXPCConnection;
    v12 = MEMORY[0x1E69E9820];
    v13 = 3221225472;
    v14 = __85__SBSBackgroundActivityAssertionManager__internalQueue_setupXPCConnectionIfNecessary__block_invoke_2;
    v15 = &unk_1E7361560;
    v16[1] = a2;
    objc_copyWeak(v16, &location);
    [(NSXPCConnection *)v11 setInvalidationHandler:&v12];
    [(NSXPCConnection *)self->_sbXPCConnection resume:v12];
    objc_destroyWeak(v16);
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }
}

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_3 != -1)
  {
    +[SBSBackgroundActivityAssertionManager sharedInstance];
  }

  v3 = sharedInstance___sharedBackgroundActivityAssertionManager;

  return v3;
}

id __45__SBSBackgroundActivityAssertionManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

void __85__SBSBackgroundActivityAssertionManager__internalQueue_setupXPCConnectionIfNecessary__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _reactivateAssertions];
  [WeakRetained _registerBackgroundActivityCoordinatorAfterInterruption];
}

void __85__SBSBackgroundActivityAssertionManager__internalQueue_setupXPCConnectionIfNecessary__block_invoke_2(uint64_t a1)
{
  v2 = SBLogStatusBarish();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __85__SBSBackgroundActivityAssertionManager__internalQueue_setupXPCConnectionIfNecessary__block_invoke_2_cold_1(a1, v2);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleXPCConnectionInvalidation];
}

- (void)addBackgroundActivityAssertion:(id)a3 withHandler:(id)a4 onQueue:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  internalQueue = self->_internalQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __92__SBSBackgroundActivityAssertionManager_addBackgroundActivityAssertion_withHandler_onQueue___block_invoke;
  v15[3] = &unk_1E73615D8;
  v15[4] = self;
  v16 = v8;
  v17 = v10;
  v18 = v9;
  v12 = v9;
  v13 = v10;
  v14 = v8;
  dispatch_async(internalQueue, v15);
}

void __92__SBSBackgroundActivityAssertionManager_addBackgroundActivityAssertion_withHandler_onQueue___block_invoke(uint64_t a1)
{
  v18 = *MEMORY[0x1E69E9840];
  [*(a1 + 32) _internalQueue_setupXPCConnectionIfNecessary];
  v2 = [*(a1 + 40) uniqueIdentifier];
  [*(*(a1 + 32) + 8) setObject:*(a1 + 40) forKey:v2];
  v3 = *(a1 + 48);
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = dispatch_get_global_queue(0, 0);
  }

  v5 = v4;
  if (*(a1 + 56))
  {
    v6 = [[SBSBackgroundActivityAssertionAcquisitionHandlerEntry alloc] initWithHandler:*(a1 + 56) queue:v4];
    [*(*(a1 + 32) + 16) setObject:v6 forKey:v2];
  }

  v7 = [*(a1 + 40) assertionData];
  v8 = SBLogStatusBarish();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v17 = v7;
    _os_log_impl(&dword_19169D000, v8, OS_LOG_TYPE_DEFAULT, "Attempting to add style override assertion: %{public}@", buf, 0xCu);
  }

  v9 = [*(*(a1 + 32) + 24) remoteObjectProxy];
  v10 = [MEMORY[0x1E695DFD8] setWithObject:v7];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __92__SBSBackgroundActivityAssertionManager_addBackgroundActivityAssertion_withHandler_onQueue___block_invoke_103;
  v13[3] = &unk_1E73615B0;
  v13[4] = *(a1 + 32);
  v14 = v2;
  v15 = v7;
  v11 = v7;
  v12 = v2;
  [v9 activateBackgroundActivityAssertions:v10 reply:v13];
}

void __92__SBSBackgroundActivityAssertionManager_addBackgroundActivityAssertion_withHandler_onQueue___block_invoke_103(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __92__SBSBackgroundActivityAssertionManager_addBackgroundActivityAssertion_withHandler_onQueue___block_invoke_2;
  v8[3] = &unk_1E7360950;
  v8[4] = v5;
  v9 = v4;
  v10 = v3;
  v11 = *(a1 + 48);
  v7 = v3;
  dispatch_async(v6, v8);
}

void __92__SBSBackgroundActivityAssertionManager_addBackgroundActivityAssertion_withHandler_onQueue___block_invoke_2(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = [*(*(a1 + 32) + 8) objectForKey:*(a1 + 40)];
  v3 = [*(*(a1 + 32) + 16) objectForKey:*(a1 + 40)];
  if (v3)
  {
    [*(*(a1 + 32) + 16) removeObjectForKey:*(a1 + 40)];
  }

  if (v2)
  {
    v4 = [*(a1 + 48) objectForKey:*(a1 + 40)];
    v5 = v4;
    if (v4 && [v4 BOOLValue])
    {
      v6 = SBLogStatusBarish();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 56);
        *buf = 138543362;
        v16 = v7;
        _os_log_impl(&dword_19169D000, v6, OS_LOG_TYPE_DEFAULT, "Successfully added style override assertion: %{public}@", buf, 0xCu);
      }

      v8 = 1;
      if (!v3)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v9 = SBLogStatusBarish();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 56);
        *buf = 138543362;
        v16 = v10;
        _os_log_impl(&dword_19169D000, v9, OS_LOG_TYPE_DEFAULT, "Failed to add style override assertion: %{public}@", buf, 0xCu);
      }

      [*(*(a1 + 32) + 8) removeObjectForKey:*(a1 + 40)];
      v8 = 0;
      if (!v3)
      {
        goto LABEL_14;
      }
    }

    v11 = [v3 queue];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __92__SBSBackgroundActivityAssertionManager_addBackgroundActivityAssertion_withHandler_onQueue___block_invoke_104;
    v12[3] = &unk_1E7361588;
    v13 = v3;
    v14 = v8;
    dispatch_async(v11, v12);

LABEL_14:
  }
}

void __92__SBSBackgroundActivityAssertionManager_addBackgroundActivityAssertion_withHandler_onQueue___block_invoke_104(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  v2[2](v2, *(a1 + 40));
}

- (void)removeBackgroundActivityAssertion:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueIdentifier];
  v6 = [v4 assertionData];

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __75__SBSBackgroundActivityAssertionManager_removeBackgroundActivityAssertion___block_invoke;
  block[3] = &unk_1E73601C8;
  v11 = v6;
  v12 = self;
  v13 = v5;
  v8 = v5;
  v9 = v6;
  dispatch_async(internalQueue, block);
}

void __75__SBSBackgroundActivityAssertionManager_removeBackgroundActivityAssertion___block_invoke(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = SBLogStatusBarish();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138543362;
    v7 = v3;
    _os_log_impl(&dword_19169D000, v2, OS_LOG_TYPE_DEFAULT, "Attempting to remove style override assertion: %{public}@", &v6, 0xCu);
  }

  [*(a1 + 40) _internalQueue_removeBackgroundActivityAssertionWithIdentifier:*(a1 + 48) invalidate:0];
  v4 = [*(*(a1 + 40) + 24) remoteObjectProxy];
  v5 = [MEMORY[0x1E695DFD8] setWithObject:*(a1 + 48)];
  [v4 deactivateBackgroundActivityAssertionsWithIdentifiers:v5];
}

- (void)updateStatusStringForAssertion:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __72__SBSBackgroundActivityAssertionManager_updateStatusStringForAssertion___block_invoke;
  v7[3] = &unk_1E735F7F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __72__SBSBackgroundActivityAssertionManager_updateStatusStringForAssertion___block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) uniqueIdentifier];
  v2 = [*(*(a1 + 40) + 8) objectForKey:?];
  if (v2)
  {
    v3 = [*(*(a1 + 40) + 24) remoteObjectProxy];
    v4 = [*(a1 + 32) statusString];
    [v3 setStatusString:v4 forAssertionWithIdentifier:v5];
  }
}

- (void)invalidateBackgroundActivityAssertionsWithIdentifiers:(id)a3
{
  v4 = a3;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __95__SBSBackgroundActivityAssertionManager_invalidateBackgroundActivityAssertionsWithIdentifiers___block_invoke;
  v7[3] = &unk_1E735F7F0;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(internalQueue, v7);
}

void __95__SBSBackgroundActivityAssertionManager_invalidateBackgroundActivityAssertionsWithIdentifiers___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = SBLogStatusBarish();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138543362;
    v15 = v3;
    _os_log_impl(&dword_19169D000, v2, OS_LOG_TYPE_DEFAULT, "Style override assertions invalidated: %{public}@", buf, 0xCu);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 40) _internalQueue_removeBackgroundActivityAssertionWithIdentifier:*(*(&v9 + 1) + 8 * v8++) invalidate:{1, v9}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)statusBarTappedWithContext:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __74__SBSBackgroundActivityAssertionManager_statusBarTappedWithContext_reply___block_invoke;
  block[3] = &unk_1E7361600;
  v12 = v6;
  v13 = v7;
  block[4] = self;
  v9 = v6;
  v10 = v7;
  dispatch_async(internalQueue, block);
}

void __74__SBSBackgroundActivityAssertionManager_statusBarTappedWithContext_reply___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));

  if (WeakRetained)
  {
    v3 = objc_loadWeakRetained((*(a1 + 32) + 40));
    v4 = *(*(a1 + 32) + 48);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __74__SBSBackgroundActivityAssertionManager_statusBarTappedWithContext_reply___block_invoke_2;
    block[3] = &unk_1E735F338;
    v10 = *(a1 + 48);
    v8 = v3;
    v9 = *(a1 + 40);
    v5 = v3;
    dispatch_async(v4, block);
  }

  else
  {
    v6 = *(*(a1 + 48) + 16);

    v6();
  }
}

void __74__SBSBackgroundActivityAssertionManager_statusBarTappedWithContext_reply___block_invoke_2(void *a1)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E69C75E0] identifierWithPid:getpid()];
  v3 = [MEMORY[0x1E69C7640] targetWithProcessIdentifier:v2];
  v4 = [MEMORY[0x1E69C7560] attributeWithDomain:@"com.apple.common" name:@"FinishTaskUninterruptable"];
  v14[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v14 count:1];

  v6 = [objc_alloc(MEMORY[0x1E69C7548]) initWithExplanation:@"SBSBackgroundActivityCoordinatorDelegateCompletionBlock" target:v3 attributes:v5];
  if (([v6 acquireWithError:0] & 1) == 0)
  {
    v7 = SBLogStatusBarish();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_19169D000, v7, OS_LOG_TYPE_DEFAULT, "SBSBackgroundActivityCoordinator: Could not take process assertion for delivering event to delegate.", buf, 2u);
    }
  }

  (*(a1[6] + 16))();
  v9 = a1[4];
  v8 = a1[5];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __74__SBSBackgroundActivityAssertionManager_statusBarTappedWithContext_reply___block_invoke_120;
  v11[3] = &unk_1E735F9D0;
  v12 = v6;
  v10 = v6;
  [v9 _handleStatusBarTapWithContext:v8 withCompletionBlock:v11];
}

- (id)succinctDescription
{
  v2 = [(SBSBackgroundActivityAssertionManager *)self succinctDescriptionBuilder];
  v3 = [v2 build];

  return v3;
}

- (id)descriptionWithMultilinePrefix:(id)a3
{
  v3 = [(SBSBackgroundActivityAssertionManager *)self descriptionBuilderWithMultilinePrefix:a3];
  v4 = [v3 build];

  return v4;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)a3
{
  v4 = a3;
  v5 = [(SBSBackgroundActivityAssertionManager *)self succinctDescriptionBuilder];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __79__SBSBackgroundActivityAssertionManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v9[3] = &unk_1E735F7F0;
  v6 = v5;
  v10 = v6;
  v11 = self;
  [v6 appendBodySectionWithName:0 multilinePrefix:v4 block:v9];

  v7 = v6;
  return v6;
}

void __79__SBSBackgroundActivityAssertionManager_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v4 = [*(a1 + 40) assertionsByIdentifier];
  v2 = [v4 dictionaryRepresentation];
  v3 = [v2 allValues];
  [v1 appendArraySection:v3 withName:@"assertions" skipIfEmpty:0];
}

- (void)_internalQueue_removeBackgroundActivityAssertionWithIdentifier:(id)a3 invalidate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  dispatch_assert_queue_V2(self->_internalQueue);
  v7 = [(NSMapTable *)self->_assertionsByIdentifier objectForKey:v6];
  v8 = [(NSMutableDictionary *)self->_acquisitionHandlerEntriesByIdentifier objectForKey:v6];
  if (v8)
  {
    [(NSMutableDictionary *)self->_acquisitionHandlerEntriesByIdentifier removeObjectForKey:v6];
    if (v4)
    {
      v9 = [v8 queue];
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __115__SBSBackgroundActivityAssertionManager__internalQueue_removeBackgroundActivityAssertionWithIdentifier_invalidate___block_invoke;
      block[3] = &unk_1E735F9D0;
      v20 = v8;
      dispatch_async(v9, block);
    }
  }

  if (v7)
  {
    v10 = [v7 invalidationHandler];
    if (v10)
    {
      if (v8 || !v4)
      {
        [v7 setInvalidationHandler:0];
      }

      else
      {
        v11 = dispatch_get_global_queue(0, 0);
        v12 = MEMORY[0x1E69E9820];
        v13 = 3221225472;
        v14 = __115__SBSBackgroundActivityAssertionManager__internalQueue_removeBackgroundActivityAssertionWithIdentifier_invalidate___block_invoke_2;
        v15 = &unk_1E735F338;
        v18 = v10;
        v16 = self;
        v17 = v7;
        dispatch_async(v11, &v12);
      }
    }

    [(NSMapTable *)self->_assertionsByIdentifier removeObjectForKey:v6, v12, v13, v14, v15, v16];
  }
}

void __115__SBSBackgroundActivityAssertionManager__internalQueue_removeBackgroundActivityAssertionWithIdentifier_invalidate___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) handler];
  v1[2](v1, 0);
}

void __115__SBSBackgroundActivityAssertionManager__internalQueue_removeBackgroundActivityAssertionWithIdentifier_invalidate___block_invoke_2(uint64_t a1)
{
  (*(*(a1 + 48) + 16))();
  v2 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __115__SBSBackgroundActivityAssertionManager__internalQueue_removeBackgroundActivityAssertionWithIdentifier_invalidate___block_invoke_3;
  block[3] = &unk_1E735F9D0;
  v4 = *(a1 + 40);
  dispatch_async(v2, block);
}

- (void)updateRegistrationForCoordinator:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __80__SBSBackgroundActivityAssertionManager_updateRegistrationForCoordinator_reply___block_invoke;
  block[3] = &unk_1E7361628;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(internalQueue, block);
}

- (void)_internalQueue_updateRegistrationForCoordinator:(id)a3 reply:(id)a4
{
  v33[2] = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(SBSBackgroundActivityAssertionManager *)self _internalQueue_setupXPCConnectionIfNecessary];
  WeakRetained = objc_loadWeakRetained(&self->_internalQueue_backgroundActivityCoordinator);

  if (WeakRetained)
  {
    v9 = MEMORY[0x1E696ABC0];
    v10 = *MEMORY[0x1E696A578];
    v33[0] = @"There is already a coordinator registered for this background activity within this process.";
    v32[0] = v10;
    v32[1] = @"SBSBackgroundActivityCoordinatorErrorBackgroundActivityIdentifiersKey";
    v11 = [v6 backgroundActivityIdentifiers];
    v33[1] = v11;
    v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v13 = [v9 errorWithDomain:@"SBSBackgroundActivityCoordinatorErrorDomain" code:1 userInfo:v12];

    coordinatorCalloutQueue = self->_coordinatorCalloutQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __95__SBSBackgroundActivityAssertionManager__internalQueue_updateRegistrationForCoordinator_reply___block_invoke;
    block[3] = &unk_1E735F120;
    v30 = v13;
    v31 = v7;
    v15 = v13;
    v16 = v7;
    dispatch_async(coordinatorCalloutQueue, block);
  }

  else
  {
    sbXPCConnection = self->_sbXPCConnection;
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v25[2] = __95__SBSBackgroundActivityAssertionManager__internalQueue_updateRegistrationForCoordinator_reply___block_invoke_2;
    v25[3] = &unk_1E7361650;
    v18 = v6;
    v26 = v18;
    v27 = self;
    v19 = v7;
    v28 = v19;
    v20 = [(NSXPCConnection *)sbXPCConnection remoteObjectProxyWithErrorHandler:v25];
    objc_storeWeak(&self->_internalQueue_backgroundActivityCoordinator, v18);
    v21 = [v18 backgroundActivityIdentifiers];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __95__SBSBackgroundActivityAssertionManager__internalQueue_updateRegistrationForCoordinator_reply___block_invoke_4;
    v23[3] = &unk_1E735F5A8;
    v23[4] = self;
    v24 = v19;
    v22 = v19;
    [v20 setRegisteredBackgroundActivityIdentifiers:v21 reply:v23];

    v15 = v26;
  }
}

void __95__SBSBackgroundActivityAssertionManager__internalQueue_updateRegistrationForCoordinator_reply___block_invoke_2(uint64_t a1, void *a2)
{
  v17[3] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E696ABC0];
  v4 = *MEMORY[0x1E696A578];
  v17[0] = @"Error getting remote proxy";
  v16[0] = v4;
  v16[1] = @"SBSBackgroundActivityCoordinatorErrorBackgroundActivityIdentifiersKey";
  v5 = *(a1 + 32);
  v6 = a2;
  v7 = [v5 backgroundActivityIdentifiers];
  v16[2] = *MEMORY[0x1E696AA08];
  v17[1] = v7;
  v17[2] = v6;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:v16 count:3];
  v9 = [v3 errorWithDomain:@"SBSBackgroundActivityCoordinatorErrorDomain" code:3 userInfo:v8];

  v10 = *(*(a1 + 40) + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__SBSBackgroundActivityAssertionManager__internalQueue_updateRegistrationForCoordinator_reply___block_invoke_3;
  block[3] = &unk_1E735F120;
  v11 = *(a1 + 48);
  v14 = v9;
  v15 = v11;
  v12 = v9;
  dispatch_async(v10, block);
}

void __95__SBSBackgroundActivityAssertionManager__internalQueue_updateRegistrationForCoordinator_reply___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6 = *(v5 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __95__SBSBackgroundActivityAssertionManager__internalQueue_updateRegistrationForCoordinator_reply___block_invoke_5;
  block[3] = &unk_1E7361628;
  v9 = v3;
  v10 = v5;
  v11 = v4;
  v7 = v3;
  dispatch_async(v6, block);
}

void __95__SBSBackgroundActivityAssertionManager__internalQueue_updateRegistrationForCoordinator_reply___block_invoke_5(uint64_t a1)
{
  if (*(a1 + 32))
  {
    objc_storeWeak((*(a1 + 40) + 40), 0);
  }

  v2 = *(*(a1 + 40) + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __95__SBSBackgroundActivityAssertionManager__internalQueue_updateRegistrationForCoordinator_reply___block_invoke_6;
  v3[3] = &unk_1E735F120;
  v5 = *(a1 + 48);
  v4 = *(a1 + 32);
  dispatch_async(v2, v3);
}

- (void)_registerBackgroundActivityCoordinatorAfterInterruption
{
  v3 = SBLogStatusBarish();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "SBSBackgroundActivityCoordinator: XPC interrupted, registering style override coordinators again", buf, 2u);
  }

  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__SBSBackgroundActivityAssertionManager__registerBackgroundActivityCoordinatorAfterInterruption__block_invoke;
  block[3] = &unk_1E735F9D0;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __96__SBSBackgroundActivityAssertionManager__registerBackgroundActivityCoordinatorAfterInterruption__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 40));
  objc_storeWeak((*(a1 + 32) + 40), 0);
  if (WeakRetained)
  {
    v3 = *(a1 + 32);
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __96__SBSBackgroundActivityAssertionManager__registerBackgroundActivityCoordinatorAfterInterruption__block_invoke_2;
    v4[3] = &unk_1E7361678;
    v4[4] = v3;
    v5 = WeakRetained;
    [v3 _internalQueue_updateRegistrationForCoordinator:v5 reply:v4];
  }
}

void __96__SBSBackgroundActivityAssertionManager__registerBackgroundActivityCoordinatorAfterInterruption__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SBLogStatusBarish();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19169D000, v4, OS_LOG_TYPE_DEFAULT, "SBSBackgroundActivityCoordinator: re-registering after interruption.", buf, 2u);
  }

  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(v6 + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __96__SBSBackgroundActivityAssertionManager__registerBackgroundActivityCoordinatorAfterInterruption__block_invoke_129;
  block[3] = &unk_1E73601C8;
  v10 = v3;
  v11 = v6;
  v12 = v5;
  v8 = v3;
  dispatch_async(v7, block);
}

void __96__SBSBackgroundActivityAssertionManager__registerBackgroundActivityCoordinatorAfterInterruption__block_invoke_129(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = *(*(a1 + 40) + 48);
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __96__SBSBackgroundActivityAssertionManager__registerBackgroundActivityCoordinatorAfterInterruption__block_invoke_2_130;
    v3[3] = &unk_1E735F7F0;
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    dispatch_async(v2, v3);
  }
}

- (void)unregisterCoordinator
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SBSBackgroundActivityAssertionManager_unregisterCoordinator__block_invoke;
  block[3] = &unk_1E735F9D0;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __62__SBSBackgroundActivityAssertionManager_unregisterCoordinator__block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) remoteObjectProxyWithErrorHandler:&__block_literal_global_132_0];
  v3 = SBLogStatusBarish();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_19169D000, v3, OS_LOG_TYPE_DEFAULT, "SBSBackgroundActivityCoordinator: Cleaning up _BackgroundActivityCoordinator, and cancelling.", v4, 2u);
  }

  objc_storeWeak((*(a1 + 32) + 40), 0);
  [v2 setRegisteredBackgroundActivityIdentifiers:0 reply:&__block_literal_global_135_0];
}

void __62__SBSBackgroundActivityAssertionManager_unregisterCoordinator__block_invoke_2()
{
  v0 = SBLogStatusBarish();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_19169D000, v0, OS_LOG_TYPE_DEFAULT, "SBSBackgroundActivityCoordinator: Error communicating with SpringBoard.", v1, 2u);
  }
}

- (void)_handleXPCConnectionInvalidation
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __73__SBSBackgroundActivityAssertionManager__handleXPCConnectionInvalidation__block_invoke;
  block[3] = &unk_1E735F9D0;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __73__SBSBackgroundActivityAssertionManager__handleXPCConnectionInvalidation__block_invoke(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = [*(*(a1 + 32) + 8) keyEnumerator];
  v5 = [v4 allObjects];

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

        [*(a1 + 32) _internalQueue_removeBackgroundActivityAssertionWithIdentifier:*(*(&v10 + 1) + 8 * v9++) invalidate:1];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (void)_reactivateAssertions
{
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SBSBackgroundActivityAssertionManager__reactivateAssertions__block_invoke;
  block[3] = &unk_1E735F9D0;
  block[4] = self;
  dispatch_async(internalQueue, block);
}

void __62__SBSBackgroundActivityAssertionManager__reactivateAssertions__block_invoke(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v3 = *(*(a1 + 32) + 8);
  v4 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      v7 = 0;
      do
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(a1 + 32) + 8) objectForKey:*(*(&v16 + 1) + 8 * v7)];
        v9 = v8;
        if (v8)
        {
          v10 = [v8 assertionData];
          [v2 addObject:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  v11 = SBLogStatusBarish();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_19169D000, v11, OS_LOG_TYPE_DEFAULT, "Re-activating style override assertions after interruption", buf, 2u);
  }

  if ([v2 count])
  {
    v12 = [*(*(a1 + 32) + 24) remoteObjectProxy];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __62__SBSBackgroundActivityAssertionManager__reactivateAssertions__block_invoke_137;
    v13[3] = &unk_1E73616A0;
    v13[4] = *(a1 + 32);
    v14 = v2;
    [v12 activateBackgroundActivityAssertions:v14 reply:v13];
  }
}

void __62__SBSBackgroundActivityAssertionManager__reactivateAssertions__block_invoke_137(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __62__SBSBackgroundActivityAssertionManager__reactivateAssertions__block_invoke_2;
  block[3] = &unk_1E73601C8;
  v7 = *(a1 + 40);
  v8 = v3;
  v9 = *(a1 + 32);
  v5 = v3;
  dispatch_async(v4, block);
}

void __62__SBSBackgroundActivityAssertionManager__reactivateAssertions__block_invoke_2(id *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v2 = a1[4];
  v3 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v18;
    *&v4 = 138543362;
    v14 = v4;
    do
    {
      v7 = 0;
      do
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v17 + 1) + 8 * v7) uniqueIdentifier];
        v9 = [a1[5] objectForKey:v8];
        v10 = v9;
        if (v9 && [v9 BOOLValue])
        {
          v11 = [*(a1[6] + 2) objectForKey:v8];
          if (v11)
          {
            [*(a1[6] + 2) removeObjectForKey:v8];
            v12 = [v11 queue];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __62__SBSBackgroundActivityAssertionManager__reactivateAssertions__block_invoke_3;
            block[3] = &unk_1E735F9D0;
            v16 = v11;
            dispatch_async(v12, block);
          }
        }

        else
        {
          v13 = SBLogStatusBarish();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v14;
            v22 = v8;
            _os_log_impl(&dword_19169D000, v13, OS_LOG_TYPE_DEFAULT, "Failed to re-activate style override assertion: %{public}@", buf, 0xCu);
          }

          [a1[6] _internalQueue_removeBackgroundActivityAssertionWithIdentifier:v8 invalidate:1];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v2 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }
}

void __62__SBSBackgroundActivityAssertionManager__reactivateAssertions__block_invoke_3(uint64_t a1)
{
  v1 = [*(a1 + 32) handler];
  v1[2](v1, 1);
}

- (SBSBackgroundActivityCoordinator)internalQueue_backgroundActivityCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_internalQueue_backgroundActivityCoordinator);

  return WeakRetained;
}

void __85__SBSBackgroundActivityAssertionManager__internalQueue_setupXPCConnectionIfNecessary__block_invoke_2_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = NSStringFromSelector(*(a1 + 40));
  v4 = 138543362;
  v5 = v3;
  _os_log_error_impl(&dword_19169D000, a2, OS_LOG_TYPE_ERROR, "%{public}@ -- Connection to SpringBoard invalidated", &v4, 0xCu);
}

@end