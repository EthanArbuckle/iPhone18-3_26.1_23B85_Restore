@interface SBBackgroundActivityAssertionServiceManager
- (BOOL)_verifyCoordinatorEntitlementForBackgroundActivityIdentifiers:(id)identifiers onConnection:(id)connection;
- (BOOL)handleTapForBackgroundActivityWithIdentifier:(id)identifier windowScene:(id)scene;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SBBackgroundActivityAssertionServiceManager)init;
- (SBBackgroundActivityAssertionServiceManagerDelegate)delegate;
- (id)_internalQueue_backgroundActivityIdentifiersAddedByAddingAssertionData:(id)data;
- (id)_internalQueue_backgroundActivityIdentifiersRemovedByRemovingAssertionData:(id)data;
- (id)_internalQueue_coordinatorClientForBackgroundActivityIdentifiers:(id)identifiers;
- (id)_internalQueue_coordinatorClientForConnection:(id)connection;
- (id)_internalQueue_coordinatorClientMatchingBackgroundActivityIdentifier:(id)identifier;
- (id)descriptionBuilderWithMultilinePrefix:(id)prefix;
- (id)descriptionWithMultilinePrefix:(id)prefix;
- (id)statusStringForBackgroundActivityWithIdentifier:(id)identifier activeAttributions:(id)attributions;
- (id)succinctDescription;
- (void)_internalQueue_deactivateBackgroundActivityAssertionsWithIdentifiers:(id)identifiers forClientConnection:(id)connection;
- (void)_internalQueue_invalidateBackgroundActivityAssertions:(id)assertions;
- (void)_internalQueue_publishAttributionsForAddingAssertionData:(id)data;
- (void)_internalQueue_publishAttributionsForRemovingAssertionData:(id)data;
- (void)_invalidateAssertionsWithIdentifiers:(id)identifiers forClientConnection:(id)connection;
- (void)_notifyDelegateAboutStatusStringChange;
- (void)activateBackgroundActivityAssertions:(id)assertions reply:(id)reply;
- (void)deactivateBackgroundActivityAssertionsWithIdentifiers:(id)identifiers;
- (void)dealloc;
- (void)invalidateBackgroundActivityAssertions:(id)assertions;
- (void)invalidateBackgroundActivityAssertionsForAttributions:(id)attributions;
- (void)setRegisteredBackgroundActivityIdentifiers:(id)identifiers reply:(id)reply;
- (void)setStatusString:(id)string forAssertionWithIdentifier:(id)identifier;
- (void)unregisterCoordinatorRegistrationForBackgroundActivityIdentifiers:(id)identifiers;
@end

@implementation SBBackgroundActivityAssertionServiceManager

- (SBBackgroundActivityAssertionServiceManager)init
{
  v29.receiver = self;
  v29.super_class = SBBackgroundActivityAssertionServiceManager;
  v3 = [(SBBackgroundActivityAssertionServiceManager *)&v29 init];
  if (v3)
  {
    strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    assertionsByIdentifierByClientConnection = v3->_assertionsByIdentifierByClientConnection;
    v3->_assertionsByIdentifierByClientConnection = strongToStrongObjectsMapTable;

    strongToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    assertionsByBackgroundActivityIdentifier = v3->_assertionsByBackgroundActivityIdentifier;
    v3->_assertionsByBackgroundActivityIdentifier = strongToStrongObjectsMapTable2;

    strongToStrongObjectsMapTable3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
    attributionsByAssertion = v3->_attributionsByAssertion;
    v3->_attributionsByAssertion = strongToStrongObjectsMapTable3;

    v10 = objc_alloc_init(MEMORY[0x277CBEB18]);
    coordinatorConnectionsByBackgroundActivity = v3->_coordinatorConnectionsByBackgroundActivity;
    v3->_coordinatorConnectionsByBackgroundActivity = v10;

    Serial = BSDispatchQueueCreateSerial();
    internalQueue = v3->_internalQueue;
    v3->_internalQueue = Serial;

    v14 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.springboard.statusbarservices"];
    xpcListener = v3->_xpcListener;
    v3->_xpcListener = v14;

    [(NSXPCListener *)v3->_xpcListener setDelegate:v3];
    [(NSXPCListener *)v3->_xpcListener resume];
    v16 = [MEMORY[0x277CBEB58] set];
    backgroundActivityIdentifiers = v3->_backgroundActivityIdentifiers;
    v3->_backgroundActivityIdentifiers = v16;

    v18 = [MEMORY[0x277CBEB58] set];
    exclusiveBackgroundActivityIdentifiers = v3->_exclusiveBackgroundActivityIdentifiers;
    v3->_exclusiveBackgroundActivityIdentifiers = v18;

    objc_initWeak(&location, v3);
    v26 = MEMORY[0x277D85DD0];
    objc_copyWeak(&v27, &location);
    v20 = BSLogAddStateCaptureBlockWithTitle();
    systemStatusServer = [SBApp systemStatusServer];
    if (!systemStatusServer)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v3 file:@"SBBackgroundActivityAssertionServiceManager.m" lineNumber:95 description:@"SBBackgroundActivityAssertionServiceManager is being created before the system status server"];
    }

    v22 = [objc_alloc(MEMORY[0x277D6B910]) initWithServerHandle:systemStatusServer];
    publisher = v3->_publisher;
    v3->_publisher = v22;

    objc_destroyWeak(&v27);
    objc_destroyWeak(&location);
  }

  return v3;
}

id __51__SBBackgroundActivityAssertionServiceManager_init__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained description];

  return v2;
}

- (void)dealloc
{
  [(STBackgroundActivitiesStatusDomainPublisher *)self->_publisher invalidate];
  v3.receiver = self;
  v3.super_class = SBBackgroundActivityAssertionServiceManager;
  [(SBBackgroundActivityAssertionServiceManager *)&v3 dealloc];
}

- (void)_internalQueue_invalidateBackgroundActivityAssertions:(id)assertions
{
  v51 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  dispatch_assert_queue_V2(self->_internalQueue);
  v27 = assertionsCopy;
  v31 = [assertionsCopy mutableCopy];
  v34 = [MEMORY[0x277CBEB58] set];
  selfCopy = self;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = self->_assertionsByIdentifierByClientConnection;
  v30 = [(NSMapTable *)obj countByEnumeratingWithState:&v44 objects:v50 count:16];
  if (v30)
  {
    v29 = *v45;
LABEL_3:
    v5 = 0;
    while (1)
    {
      if (*v45 != v29)
      {
        objc_enumerationMutation(obj);
      }

      v32 = *(*(&v44 + 1) + 8 * v5);
      v33 = v5;
      v6 = [(NSMapTable *)selfCopy->_assertionsByIdentifierByClientConnection objectForKey:?];
      v7 = [v31 count];
      v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v43 = 0u;
      v9 = v31;
      v10 = [v9 countByEnumeratingWithState:&v40 objects:v49 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v41;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v41 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v40 + 1) + 8 * i);
            uniqueIdentifier = [v14 uniqueIdentifier];
            v16 = [v6 objectForKey:uniqueIdentifier];

            if (v16)
            {
              [v8 addObject:v14];
              [v6 removeObjectForKey:uniqueIdentifier];
              v17 = [(SBBackgroundActivityAssertionServiceManager *)selfCopy _internalQueue_backgroundActivityIdentifiersRemovedByRemovingAssertionData:v14];
              [v34 unionSet:v17];
              v18 = [v8 count];

              if (v18 == v7)
              {

                goto LABEL_17;
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v40 objects:v49 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

LABEL_17:

      [v9 minusSet:v8];
      if ([v8 count])
      {
        v19 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v20 = v8;
        v21 = [v20 countByEnumeratingWithState:&v36 objects:v48 count:16];
        if (v21)
        {
          v22 = v21;
          v23 = *v37;
          do
          {
            for (j = 0; j != v22; ++j)
            {
              if (*v37 != v23)
              {
                objc_enumerationMutation(v20);
              }

              uniqueIdentifier2 = [*(*(&v36 + 1) + 8 * j) uniqueIdentifier];
              [v19 addObject:uniqueIdentifier2];
            }

            v22 = [v20 countByEnumeratingWithState:&v36 objects:v48 count:16];
          }

          while (v22);
        }

        [(SBBackgroundActivityAssertionServiceManager *)selfCopy _invalidateAssertionsWithIdentifiers:v19 forClientConnection:v32];
      }

      v26 = [v9 count];

      if (!v26)
      {
        break;
      }

      v5 = v33 + 1;
      if (v33 + 1 == v30)
      {
        v30 = [(NSMapTable *)obj countByEnumeratingWithState:&v44 objects:v50 count:16];
        if (v30)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }
}

- (void)invalidateBackgroundActivityAssertions:(id)assertions
{
  assertionsCopy = assertions;
  if ([assertionsCopy count])
  {
    internalQueue = self->_internalQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __86__SBBackgroundActivityAssertionServiceManager_invalidateBackgroundActivityAssertions___block_invoke;
    v6[3] = &unk_2783A92D8;
    v6[4] = self;
    v7 = assertionsCopy;
    dispatch_async(internalQueue, v6);
  }
}

- (void)invalidateBackgroundActivityAssertionsForAttributions:(id)attributions
{
  attributionsCopy = attributions;
  if ([attributionsCopy count])
  {
    internalQueue = self->_internalQueue;
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __101__SBBackgroundActivityAssertionServiceManager_invalidateBackgroundActivityAssertionsForAttributions___block_invoke;
    v6[3] = &unk_2783A92D8;
    v6[4] = self;
    v7 = attributionsCopy;
    dispatch_async(internalQueue, v6);
  }
}

void __101__SBBackgroundActivityAssertionServiceManager_invalidateBackgroundActivityAssertionsForAttributions___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = [*(*(a1 + 32) + 72) dictionaryRepresentation];
  v5 = MEMORY[0x277D85DD0];
  v6 = 3221225472;
  v7 = __101__SBBackgroundActivityAssertionServiceManager_invalidateBackgroundActivityAssertionsForAttributions___block_invoke_2;
  v8 = &unk_2783B0E38;
  v9 = *(a1 + 40);
  v10 = v2;
  v4 = v2;
  [v3 bs_each:&v5];

  [*(a1 + 32) _internalQueue_invalidateBackgroundActivityAssertions:{v4, v5, v6, v7, v8}];
}

void __101__SBBackgroundActivityAssertionServiceManager_invalidateBackgroundActivityAssertionsForAttributions___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 setRepresentation];
  if ([v6 isSubsetOfSet:*(a1 + 32)])
  {
    [*(a1 + 40) addObject:v5];
  }

  else if ([v6 intersectsSet:*(a1 + 32)])
  {
    v7 = SBLogStatusBarish();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __101__SBBackgroundActivityAssertionServiceManager_invalidateBackgroundActivityAssertionsForAttributions___block_invoke_2_cold_1(v5);
    }
  }
}

- (BOOL)handleTapForBackgroundActivityWithIdentifier:(id)identifier windowScene:(id)scene
{
  identifierCopy = identifier;
  sceneCopy = scene;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  internalQueue = self->_internalQueue;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __104__SBBackgroundActivityAssertionServiceManager_handleTapForBackgroundActivityWithIdentifier_windowScene___block_invoke;
  v12[3] = &unk_2783AED90;
  v12[4] = self;
  v13 = identifierCopy;
  v14 = sceneCopy;
  v15 = &v16;
  v9 = sceneCopy;
  v10 = identifierCopy;
  dispatch_sync(internalQueue, v12);
  LOBYTE(internalQueue) = *(v17 + 24);

  _Block_object_dispose(&v16, 8);
  return internalQueue;
}

void __104__SBBackgroundActivityAssertionServiceManager_handleTapForBackgroundActivityWithIdentifier_windowScene___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _internalQueue_coordinatorClientMatchingBackgroundActivityIdentifier:*(a1 + 40)];
  if (v2)
  {
    v3 = +[SBLockScreenManager sharedInstance];
    v4 = [v3 isUILocked];

    if (v4)
    {
      v5 = objc_alloc_init(SBLockScreenUnlockRequest);
      [(SBLockScreenUnlockRequest *)v5 setName:@"Unlock to send tap to status bar coordinator."];
      [(SBLockScreenUnlockRequest *)v5 setSource:24];
      [(SBLockScreenUnlockRequest *)v5 setIntent:3];
      [(SBLockScreenUnlockRequest *)v5 setWindowScene:*(a1 + 48)];
      v6 = +[SBLockScreenManager sharedInstance];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __104__SBBackgroundActivityAssertionServiceManager_handleTapForBackgroundActivityWithIdentifier_windowScene___block_invoke_2;
      v10[3] = &unk_2783B0E60;
      v11 = v2;
      v7 = *(a1 + 40);
      v8 = *(a1 + 56);
      v12 = v7;
      v13 = v8;
      [v6 unlockWithRequest:v5 completion:v10];
    }

    else
    {
      v9 = [objc_alloc(MEMORY[0x277D66C40]) initWithBackgroundActivityIdentifier:*(a1 + 40)];
      [v2 acquireAssertionAndDeliverTapContextToClient:v9];

      *(*(*(a1 + 56) + 8) + 24) = 1;
    }
  }
}

void __104__SBBackgroundActivityAssertionServiceManager_handleTapForBackgroundActivityWithIdentifier_windowScene___block_invoke_2(void *a1, int a2)
{
  if (a2)
  {
    v3 = a1[4];
    v4 = [objc_alloc(MEMORY[0x277D66C40]) initWithBackgroundActivityIdentifier:a1[5]];
    [v3 acquireAssertionAndDeliverTapContextToClient:v4];

    *(*(a1[6] + 8) + 24) = 1;
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v7 = connectionCopy;
  if (self->_xpcListener == listener)
  {
    v9 = [connectionCopy valueForEntitlement:@"com.apple.springboard.statusbarstyleoverrides"];
    if (v9 && (objc_opt_respondsToSelector() & 1) != 0 && [v9 BOOLValue])
    {
      internalQueue = self->_internalQueue;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __82__SBBackgroundActivityAssertionServiceManager_listener_shouldAcceptNewConnection___block_invoke;
      v13[3] = &unk_2783A92D8;
      v13[4] = self;
      v14 = v7;
      dispatch_async(internalQueue, v13);

      v8 = 1;
    }

    else
    {
      v11 = SBLogStatusBarish();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SBBackgroundActivityAssertionServiceManager listener:v11 shouldAcceptNewConnection:?];
      }

      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void __82__SBBackgroundActivityAssertionServiceManager_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 24);
  v3 = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
  [v2 setObject:v3 forKey:*(a1 + 40)];

  v4 = *(a1 + 40);
  v5 = SBBackgroundActivityAssertionServerInterface();
  [v4 setExportedInterface:v5];

  [*(a1 + 40) setExportedObject:*(a1 + 32)];
  v6 = *(a1 + 40);
  v7 = SBSBackgroundActivityAssertionClientInterface();
  [v6 setRemoteObjectInterface:v7];

  objc_initWeak(&location, *(a1 + 40));
  v8 = *(a1 + 40);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __82__SBBackgroundActivityAssertionServiceManager_listener_shouldAcceptNewConnection___block_invoke_2;
  v16[3] = &unk_2783A8C68;
  objc_copyWeak(&v17, &location);
  [v8 setInterruptionHandler:v16];
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __82__SBBackgroundActivityAssertionServiceManager_listener_shouldAcceptNewConnection___block_invoke_3;
  v13 = &unk_2783B0E88;
  v9 = *(a1 + 40);
  v14 = *(a1 + 32);
  objc_copyWeak(&v15, &location);
  [v9 setInvalidationHandler:&v10];
  [*(a1 + 40) resume];
  objc_destroyWeak(&v15);
  objc_destroyWeak(&v17);
  objc_destroyWeak(&location);
}

void __82__SBBackgroundActivityAssertionServiceManager_listener_shouldAcceptNewConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained invalidate];
}

void __82__SBBackgroundActivityAssertionServiceManager_listener_shouldAcceptNewConnection___block_invoke_3(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 40);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __82__SBBackgroundActivityAssertionServiceManager_listener_shouldAcceptNewConnection___block_invoke_4;
  v3[3] = &unk_2783A9CE8;
  objc_copyWeak(&v4, (a1 + 40));
  v3[4] = *(a1 + 32);
  dispatch_async(v2, v3);
  objc_destroyWeak(&v4);
}

void __82__SBBackgroundActivityAssertionServiceManager_listener_shouldAcceptNewConnection___block_invoke_4(uint64_t a1)
{
  v30 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [*(*(a1 + 32) + 24) objectForKey:WeakRetained];
  v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v25;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v25 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [v4 addObject:*(*(&v24 + 1) + 8 * i)];
      }

      v7 = [v5 countByEnumeratingWithState:&v24 objects:v29 count:16];
    }

    while (v7);
  }

  [*(a1 + 32) _internalQueue_deactivateBackgroundActivityAssertionsWithIdentifiers:v4 forClientConnection:WeakRetained];
  [*(*(a1 + 32) + 24) removeObjectForKey:WeakRetained];
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v10 = *(*(a1 + 32) + 80);
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (!v11)
  {
    v13 = v10;
    goto LABEL_20;
  }

  v12 = v11;
  v19 = a1;
  v13 = 0;
  v14 = *v21;
  do
  {
    for (j = 0; j != v12; ++j)
    {
      if (*v21 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = *(*(&v20 + 1) + 8 * j);
      v17 = [v16 connection];

      if (v17 == WeakRetained)
      {
        v18 = v16;

        v13 = v18;
      }
    }

    v12 = [v10 countByEnumeratingWithState:&v20 objects:v28 count:16];
  }

  while (v12);

  if (v13)
  {
    [*(*(v19 + 32) + 80) removeObject:v13];
LABEL_20:
  }
}

- (void)activateBackgroundActivityAssertions:(id)assertions reply:(id)reply
{
  assertionsCopy = assertions;
  replyCopy = reply;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__SBBackgroundActivityAssertionServiceManager_activateBackgroundActivityAssertions_reply___block_invoke;
  v13[3] = &unk_2783A8EB0;
  v13[4] = self;
  v14 = currentConnection;
  v15 = assertionsCopy;
  v16 = replyCopy;
  v10 = replyCopy;
  v11 = assertionsCopy;
  v12 = currentConnection;
  dispatch_async(internalQueue, v13);
}

void __90__SBBackgroundActivityAssertionServiceManager_activateBackgroundActivityAssertions_reply___block_invoke(uint64_t a1)
{
  v69 = *MEMORY[0x277D85DE8];
  v39 = [MEMORY[0x277CBEB58] set];
  v2 = [MEMORY[0x277CBEB58] set];
  v41 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v47 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  if (v47)
  {
    v60 = 0u;
    v61 = 0u;
    v3 = *(a1 + 40);
    if (v3)
    {
      [v3 auditToken];
    }

    v44 = BSPIDForAuditToken();
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    obj = *(a1 + 48);
    v4 = [obj countByEnumeratingWithState:&v56 objects:v68 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v57;
      v37 = a1;
      v38 = v2;
      v40 = *v57;
      do
      {
        v7 = 0;
        v42 = v5;
        do
        {
          if (*v57 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v56 + 1) + 8 * v7);
          v9 = SBLogStatusBarish();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67240450;
            v65 = v44;
            v66 = 2114;
            v67 = v8;
            _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Attempting to activate client (%{public}d) style override assertion: %{public}@", buf, 0x12u);
          }

          v10 = [v8 uniqueIdentifier];
          v11 = [v47 objectForKey:v10];

          if (!v11)
          {
            v45 = v7;
            v46 = v10;
            v12 = objc_alloc_init(MEMORY[0x277CBEB58]);
            if ([v8 isExclusive])
            {
              v13 = v12;
              v54 = 0u;
              v55 = 0u;
              v52 = 0u;
              v53 = 0u;
              v14 = v47;
              v15 = [v14 countByEnumeratingWithState:&v52 objects:v63 count:16];
              if (v15)
              {
                v16 = v15;
                v17 = *v53;
                do
                {
                  for (i = 0; i != v16; ++i)
                  {
                    if (*v53 != v17)
                    {
                      objc_enumerationMutation(v14);
                    }

                    v19 = [v14 objectForKey:*(*(&v52 + 1) + 8 * i)];
                    v20 = [v8 backgroundActivityIdentifiers];
                    v21 = [v19 backgroundActivityIdentifiers];
                    v22 = [v20 intersectsSet:v21];

                    if (v22)
                    {
                      [v13 addObject:v19];
                    }
                  }

                  v16 = [v14 countByEnumeratingWithState:&v52 objects:v63 count:16];
                }

                while (v16);
              }

              a1 = v37;
              v2 = v38;
              v12 = v13;
LABEL_26:
              v10 = v46;
              [v47 setObject:v8 forKey:v46];
              v25 = [*(a1 + 32) _internalQueue_backgroundActivityIdentifiersAddedByAddingAssertionData:v8];
              [v39 unionSet:v25];
              [v41 setObject:MEMORY[0x277CBEC38] forKey:v46];
              v26 = SBLogStatusBarish();
              if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67240450;
                v65 = v44;
                v66 = 2114;
                v67 = v8;
                _os_log_impl(&dword_21ED4E000, v26, OS_LOG_TYPE_DEFAULT, "Successfully activated client (%{public}d) SBS background activity assertion: %{public}@", buf, 0x12u);
              }
            }

            else
            {
              v23 = *(*(a1 + 32) + 56);
              v24 = [v8 backgroundActivityIdentifiers];
              LODWORD(v23) = [v23 intersectsSet:v24];

              if (!v23)
              {
                goto LABEL_26;
              }

              v10 = v46;
              [v41 setObject:MEMORY[0x277CBEC28] forKey:v46];
              v25 = SBLogStatusBarish();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 67240450;
                v65 = v44;
                v66 = 2114;
                v67 = v8;
                _os_log_impl(&dword_21ED4E000, v25, OS_LOG_TYPE_DEFAULT, "Failed to activate client (%{public}d) SBS background activity assertion: %{public}@", buf, 0x12u);
              }
            }

            if ([v12 count])
            {
              v27 = objc_alloc_init(MEMORY[0x277CBEB58]);
              v48 = 0u;
              v49 = 0u;
              v50 = 0u;
              v51 = 0u;
              v28 = v12;
              v29 = v12;
              v30 = [v29 countByEnumeratingWithState:&v48 objects:v62 count:16];
              if (v30)
              {
                v31 = v30;
                v32 = *v49;
                do
                {
                  for (j = 0; j != v31; ++j)
                  {
                    if (*v49 != v32)
                    {
                      objc_enumerationMutation(v29);
                    }

                    v34 = *(*(&v48 + 1) + 8 * j);
                    v35 = [v34 uniqueIdentifier];
                    [v47 removeObjectForKey:v35];
                    v36 = [*(a1 + 32) _internalQueue_backgroundActivityIdentifiersRemovedByRemovingAssertionData:v34];
                    [v2 unionSet:v36];
                    [v27 addObject:v35];
                  }

                  v31 = [v29 countByEnumeratingWithState:&v48 objects:v62 count:16];
                }

                while (v31);
              }

              [*(a1 + 32) _invalidateAssertionsWithIdentifiers:v27 forClientConnection:*(a1 + 40)];
              v10 = v46;
              v12 = v28;
            }

            v6 = v40;
            v5 = v42;
            v7 = v45;
          }

          ++v7;
        }

        while (v7 != v5);
        v5 = [obj countByEnumeratingWithState:&v56 objects:v68 count:16];
      }

      while (v5);
    }
  }

  (*(*(a1 + 56) + 16))();
}

- (void)deactivateBackgroundActivityAssertionsWithIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  internalQueue = self->_internalQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __101__SBBackgroundActivityAssertionServiceManager_deactivateBackgroundActivityAssertionsWithIdentifiers___block_invoke;
  block[3] = &unk_2783A8ED8;
  block[4] = self;
  v10 = identifiersCopy;
  v11 = currentConnection;
  v7 = currentConnection;
  v8 = identifiersCopy;
  dispatch_async(internalQueue, block);
}

- (void)setStatusString:(id)string forAssertionWithIdentifier:(id)identifier
{
  stringCopy = string;
  identifierCopy = identifier;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__SBBackgroundActivityAssertionServiceManager_setStatusString_forAssertionWithIdentifier___block_invoke;
  v13[3] = &unk_2783A9BD8;
  v13[4] = self;
  v14 = currentConnection;
  v15 = identifierCopy;
  v16 = stringCopy;
  v10 = stringCopy;
  v11 = identifierCopy;
  v12 = currentConnection;
  dispatch_async(internalQueue, v13);
}

void __90__SBBackgroundActivityAssertionServiceManager_setStatusString_forAssertionWithIdentifier___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  if (v2)
  {
    v7 = v2;
    v3 = [v2 objectForKey:*(a1 + 48)];
    v4 = v3;
    if (v3)
    {
      v5 = [v3 statusString];
      v6 = [v5 isEqualToString:*(a1 + 56)];

      if ((v6 & 1) == 0)
      {
        [v4 setStatusString:*(a1 + 56)];
        [*(a1 + 32) _notifyDelegateAboutStatusStringChange];
      }
    }

    v2 = v7;
  }
}

- (id)statusStringForBackgroundActivityWithIdentifier:(id)identifier activeAttributions:(id)attributions
{
  identifierCopy = identifier;
  attributionsCopy = attributions;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__30;
  v21 = __Block_byref_object_dispose__30;
  v22 = 0;
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __114__SBBackgroundActivityAssertionServiceManager_statusStringForBackgroundActivityWithIdentifier_activeAttributions___block_invoke;
  v13[3] = &unk_2783AED90;
  v13[4] = self;
  v14 = identifierCopy;
  v15 = attributionsCopy;
  v16 = &v17;
  v9 = attributionsCopy;
  v10 = identifierCopy;
  dispatch_sync(internalQueue, v13);
  v11 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v11;
}

void __114__SBBackgroundActivityAssertionServiceManager_statusStringForBackgroundActivityWithIdentifier_activeAttributions___block_invoke(void *a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 32) objectForKey:a1[5]];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = [v2 allObjects];
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v16;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v16 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v15 + 1) + 8 * i);
        v9 = [*(a1[4] + 72) objectForKey:v8];
        v10 = [v9 setRepresentation];
        v11 = [v10 intersectsSet:a1[6]];

        if (v11)
        {
          v12 = [v8 statusString];
          v13 = *(a1[7] + 8);
          v14 = *(v13 + 40);
          *(v13 + 40) = v12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v5);
  }
}

- (void)_notifyDelegateAboutStatusStringChange
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    [WeakRetained assertionServiceDidChangeStatusStringsForAForegroundApp];
  }
}

- (id)succinctDescription
{
  succinctDescriptionBuilder = [(SBBackgroundActivityAssertionServiceManager *)self succinctDescriptionBuilder];
  build = [succinctDescriptionBuilder build];

  return build;
}

- (id)descriptionWithMultilinePrefix:(id)prefix
{
  v3 = [(SBBackgroundActivityAssertionServiceManager *)self descriptionBuilderWithMultilinePrefix:prefix];
  build = [v3 build];

  return build;
}

- (id)descriptionBuilderWithMultilinePrefix:(id)prefix
{
  prefixCopy = prefix;
  succinctDescriptionBuilder = [(SBBackgroundActivityAssertionServiceManager *)self succinctDescriptionBuilder];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __85__SBBackgroundActivityAssertionServiceManager_descriptionBuilderWithMultilinePrefix___block_invoke;
  v10[3] = &unk_2783A92D8;
  v10[4] = self;
  v6 = succinctDescriptionBuilder;
  v11 = v6;
  [v6 appendBodySectionWithName:0 multilinePrefix:prefixCopy block:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

void __85__SBBackgroundActivityAssertionServiceManager_descriptionBuilderWithMultilinePrefix___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) assertionsByIdentifierByClientConnection];
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __85__SBBackgroundActivityAssertionServiceManager_descriptionBuilderWithMultilinePrefix___block_invoke_2;
  v3[3] = &unk_2783B0EB0;
  v4 = *(a1 + 40);
  [v2 bs_each:v3];
}

void __85__SBBackgroundActivityAssertionServiceManager_descriptionBuilderWithMultilinePrefix___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [a2 auditToken];
  }

  v6 = BSPIDForAuditToken();
  v7 = *(a1 + 32);
  v8 = [v5 dictionaryRepresentation];
  v9 = [v8 allValues];
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"client (%d) assertions", v6];
  [v7 appendArraySection:v9 withName:v10 skipIfEmpty:0];
}

- (BOOL)_verifyCoordinatorEntitlementForBackgroundActivityIdentifiers:(id)identifiers onConnection:(id)connection
{
  identifiersCopy = identifiers;
  v6 = [connection valueForEntitlement:@"com.apple.springboard.statusbarstyleoverrides.coordinator"];
  if (v6)
  {
    [MEMORY[0x277D75128] _statusBarStyleOverridesForArray:v6];
    v7 = STUIBackgroundActivityIdentifiersForStyleOverrides();
    if ([identifiersCopy isSubsetOfSet:v7])
    {
      v8 = 1;
    }

    else if ([identifiersCopy count])
    {
      v8 = 0;
    }

    else
    {
      v8 = [v7 count] != 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)_internalQueue_coordinatorClientForBackgroundActivityIdentifiers:(id)identifiers
{
  v18 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  dispatch_assert_queue_V2(self->_internalQueue);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_coordinatorConnectionsByBackgroundActivity;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        registeredBackgroundActivityIdentifiers = [v9 registeredBackgroundActivityIdentifiers];
        v11 = BSEqualSets();

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_internalQueue_coordinatorClientMatchingBackgroundActivityIdentifier:(id)identifier
{
  v18 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_internalQueue);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = self->_coordinatorConnectionsByBackgroundActivity;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = *v14;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        registeredBackgroundActivityIdentifiers = [v9 registeredBackgroundActivityIdentifiers];
        v11 = [registeredBackgroundActivityIdentifiers containsObject:identifierCopy];

        if (v11)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)_internalQueue_coordinatorClientForConnection:(id)connection
{
  v17 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_internalQueue);
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = self->_coordinatorConnectionsByBackgroundActivity;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        connection = [v9 connection];

        if (connection == connectionCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (void)setRegisteredBackgroundActivityIdentifiers:(id)identifiers reply:(id)reply
{
  identifiersCopy = identifiers;
  replyCopy = reply;
  currentConnection = [MEMORY[0x277CCAE80] currentConnection];
  internalQueue = self->_internalQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __96__SBBackgroundActivityAssertionServiceManager_setRegisteredBackgroundActivityIdentifiers_reply___block_invoke;
  v13[3] = &unk_2783A8EB0;
  v13[4] = self;
  v14 = identifiersCopy;
  v15 = currentConnection;
  v16 = replyCopy;
  v10 = replyCopy;
  v11 = currentConnection;
  v12 = identifiersCopy;
  dispatch_async(internalQueue, v13);
}

void __96__SBBackgroundActivityAssertionServiceManager_setRegisteredBackgroundActivityIdentifiers_reply___block_invoke(uint64_t a1)
{
  v29[2] = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) _verifyCoordinatorEntitlementForBackgroundActivityIdentifiers:*(a1 + 40) onConnection:*(a1 + 48)])
  {
    v2 = [*(a1 + 32) _internalQueue_coordinatorClientForConnection:*(a1 + 48)];
    v3 = *(a1 + 40);
    v4 = v3;
    if (v2)
    {
      v5 = [v3 mutableCopy];
      v6 = [(SBBackgroundActivityCoordinatorClient *)v2 registeredBackgroundActivityIdentifiers];
      [v5 minusSet:v6];

      v4 = v5;
    }

    v7 = [*(a1 + 32) _internalQueue_coordinatorClientForBackgroundActivityIdentifiers:v4];

    if (v7)
    {
      v8 = MEMORY[0x277CCA9B8];
      v9 = *MEMORY[0x277D66EC0];
      v28[0] = *MEMORY[0x277CCA450];
      v28[1] = v9;
      v10 = *MEMORY[0x277D66EC8];
      v29[0] = *MEMORY[0x277D66ED8];
      v29[1] = v4;
      v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
      v12 = [v8 errorWithDomain:v10 code:1 userInfo:v11];

LABEL_17:
      goto LABEL_18;
    }

    v18 = [v4 count];
    if (v2)
    {
      if (!v18)
      {
        [*(*(a1 + 32) + 80) removeObject:v2];
        goto LABEL_16;
      }

      [(SBBackgroundActivityCoordinatorClient *)v2 setRegisteredBackgroundActivityIdentifiers:v4];
      v19 = SBLogStatusBarish();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
LABEL_14:

LABEL_16:
        v12 = 0;
        goto LABEL_17;
      }
    }

    else
    {
      if (!v18)
      {
        v12 = 0;
        goto LABEL_18;
      }

      v2 = [[SBBackgroundActivityCoordinatorClient alloc] initWithConnection:*(a1 + 48) andBackgroundActivityIdentifiers:v4];
      [*(*(a1 + 32) + 80) addObject:v2];
      v19 = SBLogStatusBarish();
      if (!os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }
    }

    v20 = *(a1 + 48);
    v21 = STBackgroundActivityIdentifiersDescription();
    *buf = 138412546;
    v25 = v20;
    v26 = 2114;
    v27 = v21;
    _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Succeeded in registering %@ for coordinator for background activity identifiers: %{public}@", buf, 0x16u);

    goto LABEL_14;
  }

  v13 = MEMORY[0x277CCA9B8];
  v14 = *MEMORY[0x277D66EC8];
  v15 = *MEMORY[0x277D66ED0];
  v16 = *MEMORY[0x277D66EC0];
  v22[0] = *MEMORY[0x277CCA450];
  v22[1] = v16;
  v17 = *(a1 + 40);
  v23[0] = v15;
  v23[1] = v17;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  v12 = [v13 errorWithDomain:v14 code:0 userInfo:v4];
LABEL_18:

  (*(*(a1 + 56) + 16))();
}

- (void)unregisterCoordinatorRegistrationForBackgroundActivityIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  internalQueue = self->_internalQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __113__SBBackgroundActivityAssertionServiceManager_unregisterCoordinatorRegistrationForBackgroundActivityIdentifiers___block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = identifiersCopy;
  v6 = identifiersCopy;
  dispatch_async(internalQueue, v7);
}

void __113__SBBackgroundActivityAssertionServiceManager_unregisterCoordinatorRegistrationForBackgroundActivityIdentifiers___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _internalQueue_coordinatorClientForBackgroundActivityIdentifiers:*(a1 + 40)];
  [*(*(a1 + 32) + 80) removeObject:v2];
}

- (void)_internalQueue_deactivateBackgroundActivityAssertionsWithIdentifiers:(id)identifiers forClientConnection:(id)connection
{
  v34 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_internalQueue);
  v8 = [MEMORY[0x277CBEB58] set];
  v9 = [(NSMapTable *)self->_assertionsByIdentifierByClientConnection objectForKey:connectionCopy];
  v10 = [v9 count];
  v11 = SBLogStatusBarish();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109378;
    *&buf[4] = v10;
    *&buf[8] = 2114;
    *&buf[10] = identifiersCopy;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "Attempting to deactivate assertions (count: %d) %{public}@", buf, 0x12u);
  }

  if (v10)
  {
    memset(buf, 0, sizeof(buf));
    if (connectionCopy)
    {
      [connectionCopy auditToken];
    }

    v21 = connectionCopy;
    v23 = BSPIDForAuditToken();
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v22 = identifiersCopy;
    v12 = identifiersCopy;
    v13 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v25;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v25 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v24 + 1) + 8 * i);
          v18 = [v9 objectForKey:{v17, v21}];
          if (v18)
          {
            v19 = SBLogStatusBarish();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *v28 = 67240450;
              v29 = v23;
              v30 = 2114;
              v31 = v18;
              _os_log_impl(&dword_21ED4E000, v19, OS_LOG_TYPE_DEFAULT, "Deactivating client (%{public}d) style override assertion: %{public}@", v28, 0x12u);
            }

            [v9 removeObjectForKey:v17];
            v20 = [(SBBackgroundActivityAssertionServiceManager *)self _internalQueue_backgroundActivityIdentifiersRemovedByRemovingAssertionData:v18];
            [v8 unionSet:v20];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v14);
    }

    connectionCopy = v21;
    identifiersCopy = v22;
  }
}

- (id)_internalQueue_backgroundActivityIdentifiersAddedByAddingAssertionData:(id)data
{
  dataCopy = data;
  dispatch_assert_queue_V2(self->_internalQueue);
  v5 = SBAddBackgroundActivityAssertionDataByIdentifier(dataCopy, self->_assertionsByBackgroundActivityIdentifier);
  isExclusive = [dataCopy isExclusive];
  v7 = 48;
  if (isExclusive)
  {
    v7 = 56;
  }

  [*(&self->super.isa + v7) unionSet:v5];
  [(SBBackgroundActivityAssertionServiceManager *)self _internalQueue_publishAttributionsForAddingAssertionData:dataCopy];

  return v5;
}

- (id)_internalQueue_backgroundActivityIdentifiersRemovedByRemovingAssertionData:(id)data
{
  dataCopy = data;
  dispatch_assert_queue_V2(self->_internalQueue);
  v5 = SBRemoveBackgroundActivityAssertionDataByIdentifier(dataCopy, self->_assertionsByBackgroundActivityIdentifier);
  isExclusive = [dataCopy isExclusive];
  v7 = 48;
  if (isExclusive)
  {
    v7 = 56;
  }

  [*(&self->super.isa + v7) minusSet:v5];
  [(SBBackgroundActivityAssertionServiceManager *)self _internalQueue_publishAttributionsForRemovingAssertionData:dataCopy];

  return v5;
}

- (void)_internalQueue_publishAttributionsForAddingAssertionData:(id)data
{
  v31 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  dispatch_assert_queue_V2(self->_internalQueue);
  v5 = [dataCopy pid];
  v6 = [MEMORY[0x277CF0CD0] processHandleForPID:v5];
  auditToken = [v6 auditToken];

  v28 = 0u;
  v29 = 0u;
  if (auditToken)
  {
    [auditToken realToken];
  }

  else
  {
    STActivityAttributionUnsafeAuditTokenForPID();
  }

  v27[0] = v28;
  v27[1] = v29;
  v8 = [MEMORY[0x277D6B8E8] attributionWithAuditToken:{v27, self}];
  array = [MEMORY[0x277CBEB18] array];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  backgroundActivityIdentifiers = [dataCopy backgroundActivityIdentifiers];
  v11 = [backgroundActivityIdentifiers countByEnumeratingWithState:&v23 objects:v30 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v24;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v24 != v13)
        {
          objc_enumerationMutation(backgroundActivityIdentifiers);
        }

        v15 = [objc_alloc(MEMORY[0x277D6B900]) initWithBackgroundActivityIdentifier:*(*(&v23 + 1) + 8 * i) activityAttribution:v8 showsWhenForeground:{objc_msgSend(dataCopy, "showsWhenForeground")}];
        [array addObject:v15];
      }

      v12 = [backgroundActivityIdentifiers countByEnumeratingWithState:&v23 objects:v30 count:16];
    }

    while (v12);
  }

  if ([array count])
  {
    v16 = [*(v19 + 72) objectForKey:dataCopy];
    if (!v16)
    {
      v16 = [objc_alloc(MEMORY[0x277CCAA50]) initWithOptions:0 capacity:1];
      [*(v19 + 72) setObject:v16 forKey:dataCopy];
    }

    v17 = *(v19 + 88);
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __104__SBBackgroundActivityAssertionServiceManager__internalQueue_publishAttributionsForAddingAssertionData___block_invoke;
    v20[3] = &unk_2783B0ED8;
    v21 = array;
    v22 = v16;
    v18 = v16;
    [v17 updateVolatileData:v20 completion:0];
  }
}

void __104__SBBackgroundActivityAssertionServiceManager__internalQueue_publishAttributionsForAddingAssertionData___block_invoke(uint64_t a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        [*(a1 + 40) addObject:{v9, v10}];
        [v3 addAttribution:v9];
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)_internalQueue_publishAttributionsForRemovingAssertionData:(id)data
{
  dataCopy = data;
  dispatch_assert_queue_V2(self->_internalQueue);
  v5 = [(NSMapTable *)self->_attributionsByAssertion objectForKey:dataCopy];
  allObjects = [v5 allObjects];

  if ([allObjects count])
  {
    publisher = self->_publisher;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __106__SBBackgroundActivityAssertionServiceManager__internalQueue_publishAttributionsForRemovingAssertionData___block_invoke;
    v9[3] = &unk_2783B0F00;
    v10 = allObjects;
    [(STBackgroundActivitiesStatusDomainPublisher *)publisher updateVolatileData:v9 completion:0];
    [(NSMapTable *)self->_attributionsByAssertion removeObjectForKey:dataCopy];
    v8 = v10;
  }

  else
  {
    v8 = SBLogStatusBarish();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(SBBackgroundActivityAssertionServiceManager *)dataCopy _internalQueue_publishAttributionsForRemovingAssertionData:v8];
    }
  }
}

void __106__SBBackgroundActivityAssertionServiceManager__internalQueue_publishAttributionsForRemovingAssertionData___block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
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

        [v3 removeAttribution:{*(*(&v9 + 1) + 8 * v8++), v9}];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)_invalidateAssertionsWithIdentifiers:(id)identifiers forClientConnection:(id)connection
{
  v20 = *MEMORY[0x277D85DE8];
  identifiersCopy = identifiers;
  connectionCopy = connection;
  v7 = connectionCopy;
  v14 = 0u;
  v15 = 0u;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  v8 = BSPIDForAuditToken();
  v9 = SBLogStatusBarish();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67240450;
    v17 = v8;
    v18 = 2114;
    v19 = identifiersCopy;
    _os_log_impl(&dword_21ED4E000, v9, OS_LOG_TYPE_DEFAULT, "Invalidating client (%{public}d) style override assertions with identifiers: %{public}@", buf, 0x12u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __104__SBBackgroundActivityAssertionServiceManager__invalidateAssertionsWithIdentifiers_forClientConnection___block_invoke;
  v12[3] = &unk_2783B0F28;
  v13 = v7;
  v10 = v7;
  v11 = [v10 remoteObjectProxyWithErrorHandler:v12];
  [v11 invalidateBackgroundActivityAssertionsWithIdentifiers:identifiersCopy];
}

void __104__SBBackgroundActivityAssertionServiceManager__invalidateAssertionsWithIdentifiers_forClientConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = SBLogStatusBarish();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __104__SBBackgroundActivityAssertionServiceManager__invalidateAssertionsWithIdentifiers_forClientConnection___block_invoke_cold_1(v3);
  }

  [*(a1 + 32) invalidate];
}

- (SBBackgroundActivityAssertionServiceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __101__SBBackgroundActivityAssertionServiceManager_invalidateBackgroundActivityAssertionsForAttributions___block_invoke_2_cold_1(void *a1)
{
  v1 = [a1 backgroundActivityIdentifiers];
  v2 = STBackgroundActivityIdentifiersDescription();
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v3, v4, "Unable to invalidate background activity assertion with identifiers due to partial match: %{public}@", v5, v6, v7, v8, 2u);
}

- (void)_internalQueue_publishAttributionsForRemovingAssertionData:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "No attributions to remove for assertion: %{public}@", &v2, 0xCu);
}

void __104__SBBackgroundActivityAssertionServiceManager__invalidateAssertionsWithIdentifiers_forClientConnection___block_invoke_cold_1(void *a1)
{
  v1 = [a1 localizedDescription];
  OUTLINED_FUNCTION_7(&dword_21ED4E000, v2, v3, "Error communicating with client: %{public}@", v4, v5, v6, v7, 2u);
}

@end