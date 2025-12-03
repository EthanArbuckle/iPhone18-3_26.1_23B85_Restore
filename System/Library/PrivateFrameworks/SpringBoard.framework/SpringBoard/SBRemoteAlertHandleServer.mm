@interface SBRemoteAlertHandleServer
- (BOOL)_shouldAllowAuditToken:(id)token forDefinition:(id)definition;
- (SBRemoteAlertHandleServer)initWithSessionManager:(id)manager;
- (id)createRemoteAlertHandleContextWithDefinition:(id)definition configurationContext:(id)context;
- (id)remoteAlertHandleContextsForDefinition:(id)definition allowsCreationValue:(id)value configurationContext:(id)context;
- (void)_addConnection:(id)connection forSession:(id)session;
- (void)_handleDisconnectForServiceConnection:(id)connection;
- (void)_removeConnection:(id)connection forSession:(id)session;
- (void)activateRemoteAlertHandleWithID:(id)d activationContext:(id)context;
- (void)dealloc;
- (void)invalidateRemoteAlertHandleWithID:(id)d;
- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context;
- (void)remoteTransientOverlaySession:(id)session didInvalidateWithReason:(int64_t)reason error:(id)error;
- (void)remoteTransientOverlaySessionDidActivate:(id)activate;
- (void)remoteTransientOverlaySessionDidDeactivate:(id)deactivate;
@end

@implementation SBRemoteAlertHandleServer

- (SBRemoteAlertHandleServer)initWithSessionManager:(id)manager
{
  managerCopy = manager;
  v21.receiver = self;
  v21.super_class = SBRemoteAlertHandleServer;
  v6 = [(SBRemoteAlertHandleServer *)&v21 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_sessionManager, manager);
    v8 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.remote-alert" additionalCredentials:1];
    clientAuthenticator = v7->_clientAuthenticator;
    v7->_clientAuthenticator = v8;

    v10 = [objc_alloc(MEMORY[0x277D0AAF8]) initWithEntitlement:@"com.apple.springboard.activateRemoteAlert"];
    legacyClientAuthenticator = v7->_legacyClientAuthenticator;
    v7->_legacyClientAuthenticator = v10;

    v12 = BSDispatchQueueCreateWithQualityOfService();
    queue = v7->_queue;
    v7->_queue = v12;

    v14 = MEMORY[0x277CF32A0];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __52__SBRemoteAlertHandleServer_initWithSessionManager___block_invoke;
    v19[3] = &unk_2783A9A18;
    v15 = v7;
    v20 = v15;
    v16 = [v14 listenerWithConfigurator:v19];
    connectionListener = v15->_connectionListener;
    v15->_connectionListener = v16;
  }

  return v7;
}

void __52__SBRemoteAlertHandleServer_initWithSessionManager___block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  [v4 setDomain:@"com.apple.frontboard"];
  v3 = [MEMORY[0x277D66C00] identifier];
  [v4 setService:v3];

  [v4 setDelegate:*(a1 + 32)];
}

- (void)dealloc
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = self->_sessionToConnections;
  v4 = [(NSMapTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(&v9 + 1) + 8 * v7++) removeSessionObserver:self];
      }

      while (v5 != v7);
      v5 = [(NSMapTable *)v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8.receiver = self;
  v8.super_class = SBRemoteAlertHandleServer;
  [(SBRemoteAlertHandleServer *)&v8 dealloc];
}

- (void)listener:(id)listener didReceiveConnection:(id)connection withContext:(id)context
{
  connectionCopy = connection;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__SBRemoteAlertHandleServer_listener_didReceiveConnection_withContext___block_invoke;
  v16[3] = &unk_2783B2168;
  v7 = connectionCopy;
  v17 = v7;
  selfCopy = self;
  [v7 configureConnection:v16];
  queue = self->_queue;
  v10 = MEMORY[0x277D85DD0];
  v11 = 3221225472;
  v12 = __71__SBRemoteAlertHandleServer_listener_didReceiveConnection_withContext___block_invoke_15;
  v13 = &unk_2783A92D8;
  selfCopy2 = self;
  v15 = v7;
  v9 = v7;
  dispatch_barrier_async(queue, &v10);
  [v9 activate];
}

void __71__SBRemoteAlertHandleServer_listener_didReceiveConnection_withContext___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [MEMORY[0x277D66C00] interface];
  [v3 setInterface:v4];

  v5 = [[_SBRemoteAlertHandleServerTarget alloc] initWithConnection:*(a1 + 32) proxyInterface:*(a1 + 40)];
  [v3 setInterfaceTarget:v5];
  [v3 setTargetQueue:*(*(a1 + 40) + 40)];
  v6 = [MEMORY[0x277CF32C8] userInitiated];
  [v3 setServiceQuality:v6];

  objc_initWeak(&location, *(a1 + 40));
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__SBRemoteAlertHandleServer_listener_didReceiveConnection_withContext___block_invoke_2;
  v9[3] = &unk_2783AB6E0;
  objc_copyWeak(&v10, &location);
  [v3 setInterruptionHandler:v9];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __71__SBRemoteAlertHandleServer_listener_didReceiveConnection_withContext___block_invoke_13;
  v7[3] = &unk_2783AB6E0;
  objc_copyWeak(&v8, &location);
  [v3 setInvalidationHandler:v7];
  objc_destroyWeak(&v8);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __71__SBRemoteAlertHandleServer_listener_didReceiveConnection_withContext___block_invoke_2(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = SBLogTransientOverlay();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Received interruption for connection: %{public}@", &v6, 0xCu);
    }

    [WeakRetained _handleDisconnectForServiceConnection:v3];
  }
}

void __71__SBRemoteAlertHandleServer_listener_didReceiveConnection_withContext___block_invoke_13(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v5 = SBLogTransientOverlay();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "Received invalidation for connection: %{public}@", &v6, 0xCu);
    }

    [WeakRetained _handleDisconnectForServiceConnection:v3];
  }
}

uint64_t __71__SBRemoteAlertHandleServer_listener_didReceiveConnection_withContext___block_invoke_15(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 8);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v4 = *(a1 + 32);
    v5 = *(v4 + 8);
    *(v4 + 8) = v3;

    v2 = *(*(a1 + 32) + 8);
  }

  v6 = *(a1 + 40);

  return [v2 addObject:v6];
}

- (id)remoteAlertHandleContextsForDefinition:(id)definition allowsCreationValue:(id)value configurationContext:(id)context
{
  v47[1] = *MEMORY[0x277D85DE8];
  definitionCopy = definition;
  valueCopy = value;
  contextCopy = context;
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  if ([(SBRemoteAlertHandleServer *)self _shouldAllowAuditToken:auditToken forDefinition:definitionCopy])
  {
    v14 = [(SBRemoteTransientOverlaySessionManager *)self->_sessionManager existingSessionsWithDefinition:definitionCopy options:0];
    if (![v14 count] && objc_msgSend(valueCopy, "BOOLValue"))
    {
      v15 = [(SBRemoteTransientOverlaySessionManager *)self->_sessionManager createSessionWithDefinition:definitionCopy];
      v47[0] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:1];

      v14 = v16;
    }

    v34 = auditToken;
    v35 = valueCopy;
    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v17 = v14;
    v18 = [v17 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = 0;
      v21 = *v42;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v42 != v21)
          {
            objc_enumerationMutation(v17);
          }

          v23 = _SBSRemoteAlertHandleContextFromRemoteTransientOverlaySession(*(*(&v41 + 1) + 8 * i));
          if (v23)
          {
            if (!v20)
            {
              v20 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v17, "count")}];
            }

            [v20 addObject:{v23, v34, v35}];
          }
        }

        v19 = [v17 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v19);
    }

    else
    {
      v20 = 0;
    }

    v26 = +[_SBRemoteAlertHandleServerTarget currentTarget];
    connection = [v26 connection];

    if (connection)
    {
      v39 = 0u;
      v40 = 0u;
      v37 = 0u;
      v38 = 0u;
      v28 = v17;
      v29 = [v28 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v29)
      {
        v30 = v29;
        v31 = *v38;
        do
        {
          for (j = 0; j != v30; ++j)
          {
            if (*v38 != v31)
            {
              objc_enumerationMutation(v28);
            }

            [(SBRemoteAlertHandleServer *)self _addConnection:connection forSession:*(*(&v37 + 1) + 8 * j), v34, v35];
          }

          v30 = [v28 countByEnumeratingWithState:&v37 objects:v45 count:16];
        }

        while (v30);
      }
    }

    if (!contextCopy)
    {
      contextCopy = objc_alloc_init(MEMORY[0x277D66BD0]);
    }

    v36 = v17;
    contextCopy = contextCopy;
    v24 = v17;
    BSDispatchMain();
    v25 = v20;

    auditToken = v34;
    valueCopy = v35;
  }

  else
  {
    v24 = SBLogTransientOverlay();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      [SBRemoteAlertHandleServer remoteAlertHandleContextsForDefinition:allowsCreationValue:configurationContext:];
    }

    v25 = 0;
  }

  return v25;
}

void __109__SBRemoteAlertHandleServer_remoteAlertHandleContextsForDefinition_allowsCreationValue_configurationContext___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * i);
        if (([v7 isPrepared] & 1) == 0)
        {
          [v7 prepareWithConfigurationContext:*(a1 + 40)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)createRemoteAlertHandleContextWithDefinition:(id)definition configurationContext:(id)context
{
  definitionCopy = definition;
  contextCopy = context;
  currentContext = [MEMORY[0x277CF3280] currentContext];
  remoteProcess = [currentContext remoteProcess];
  auditToken = [remoteProcess auditToken];

  if ([(SBRemoteAlertHandleServer *)self _shouldAllowAuditToken:auditToken forDefinition:definitionCopy])
  {
    v11 = [(SBRemoteTransientOverlaySessionManager *)self->_sessionManager createSessionWithDefinition:definitionCopy];
    v12 = _SBSRemoteAlertHandleContextFromRemoteTransientOverlaySession(v11);
    v13 = +[_SBRemoteAlertHandleServerTarget currentTarget];
    connection = [v13 connection];

    if (connection)
    {
      [(SBRemoteAlertHandleServer *)self _addConnection:connection forSession:v11];
    }

    if (!contextCopy)
    {
      contextCopy = objc_alloc_init(MEMORY[0x277D66BD0]);
    }

    contextCopy = contextCopy;
    v15 = v11;
    BSDispatchMain();
  }

  else
  {
    connection = SBLogTransientOverlay();
    if (os_log_type_enabled(connection, OS_LOG_TYPE_ERROR))
    {
      [SBRemoteAlertHandleServer createRemoteAlertHandleContextWithDefinition:configurationContext:];
    }

    v12 = 0;
  }

  return v12;
}

- (void)activateRemoteAlertHandleWithID:(id)d activationContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  v8 = contextCopy;
  if (dCopy)
  {
    if (!contextCopy)
    {
      v8 = objc_alloc_init(MEMORY[0x277D66BC0]);
    }

    v9 = [(SBRemoteTransientOverlaySessionManager *)self->_sessionManager existingSessionWithSessionID:dCopy options:0];
    v10 = v9;
    if (v9)
    {
      v12 = v9;
      v13 = v8;
      BSDispatchMain();

      v11 = v12;
    }

    else
    {
      v11 = SBLogTransientOverlay();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [SBRemoteAlertHandleServer activateRemoteAlertHandleWithID:dCopy activationContext:v11];
      }
    }
  }
}

- (void)invalidateRemoteAlertHandleWithID:(id)d
{
  dCopy = d;
  if (dCopy)
  {
    v5 = [(SBRemoteTransientOverlaySessionManager *)self->_sessionManager existingSessionWithSessionID:dCopy options:0];
    v6 = v5;
    if (v5)
    {
      v8 = v5;
      BSDispatchMain();
      v7 = v8;
    }

    else
    {
      v7 = SBLogTransientOverlay();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [(SBRemoteAlertHandleServer *)dCopy invalidateRemoteAlertHandleWithID:v7];
      }
    }
  }
}

- (void)remoteTransientOverlaySessionDidActivate:(id)activate
{
  v15 = *MEMORY[0x277D85DE8];
  activateCopy = activate;
  v5 = SBLogTransientOverlay();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = activateCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "remoteTransientOverlaySessionDidActivate: %{public}@", buf, 0xCu);
  }

  sessionID = [activateCopy sessionID];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __70__SBRemoteAlertHandleServer_remoteTransientOverlaySessionDidActivate___block_invoke;
  block[3] = &unk_2783A8ED8;
  block[4] = self;
  v11 = activateCopy;
  v12 = sessionID;
  v8 = sessionID;
  v9 = activateCopy;
  dispatch_async(queue, block);
}

void __70__SBRemoteAlertHandleServer_remoteTransientOverlaySessionDidActivate___block_invoke(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 56) objectForKey:a1[5]];
  v3 = [v2 copy];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) remoteTarget];
        [v9 remoteAlertHandleWithIDDidActivate:a1[6]];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)remoteTransientOverlaySessionDidDeactivate:(id)deactivate
{
  v15 = *MEMORY[0x277D85DE8];
  deactivateCopy = deactivate;
  v5 = SBLogTransientOverlay();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v14 = deactivateCopy;
    _os_log_impl(&dword_21ED4E000, v5, OS_LOG_TYPE_DEFAULT, "remoteTransientOverlaySessionDidDeactivate: %{public}@", buf, 0xCu);
  }

  sessionID = [deactivateCopy sessionID];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__SBRemoteAlertHandleServer_remoteTransientOverlaySessionDidDeactivate___block_invoke;
  block[3] = &unk_2783A8ED8;
  block[4] = self;
  v11 = deactivateCopy;
  v12 = sessionID;
  v8 = sessionID;
  v9 = deactivateCopy;
  dispatch_async(queue, block);
}

void __72__SBRemoteAlertHandleServer_remoteTransientOverlaySessionDidDeactivate___block_invoke(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 56) objectForKey:a1[5]];
  v3 = [v2 copy];

  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v4 = v3;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v10 + 1) + 8 * v8) remoteTarget];
        [v9 remoteAlertHandleWithIDDidDeactivate:a1[6]];

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

- (void)remoteTransientOverlaySession:(id)session didInvalidateWithReason:(int64_t)reason error:(id)error
{
  v24 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  errorCopy = error;
  v10 = SBLogTransientOverlay();
  v11 = v10;
  if (errorCopy)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SBRemoteAlertHandleServer remoteTransientOverlaySession:didInvalidateWithReason:error:];
    }
  }

  else if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = sessionCopy;
    _os_log_impl(&dword_21ED4E000, v11, OS_LOG_TYPE_DEFAULT, "remoteTransientOverlaySession:didInvalidateWithReason:error: %{public}@", buf, 0xCu);
  }

  sessionID = [sessionCopy sessionID];
  queue = self->_queue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __89__SBRemoteAlertHandleServer_remoteTransientOverlaySession_didInvalidateWithReason_error___block_invoke;
  block[3] = &unk_2783A9288;
  block[4] = self;
  v18 = sessionCopy;
  v20 = sessionID;
  reasonCopy = reason;
  v19 = errorCopy;
  v14 = sessionID;
  v15 = errorCopy;
  v16 = sessionCopy;
  dispatch_async(queue, block);
}

void __89__SBRemoteAlertHandleServer_remoteTransientOverlaySession_didInvalidateWithReason_error___block_invoke(void *a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 56) objectForKey:a1[5]];
  v3 = [v2 copy];

  [*(a1[4] + 56) removeObjectForKey:a1[5]];
  v4 = SBSRemoteAlertHandleInvalidationErrorCodeForInvalidationReason();
  if (v4)
  {
    v5 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    v6 = SBSRemoteAlertHandleInvalidationErrorDescription();
    [v5 setObject:v6 forKey:*MEMORY[0x277CCA450]];

    v7 = a1[6];
    if (v7)
    {
      [v5 setObject:v7 forKey:*MEMORY[0x277CCA7E8]];
    }

    v4 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D67170] code:v4 userInfo:v5];
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v8 = v3;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v14 + 1) + 8 * v12) remoteTarget];
        [v13 remoteAlertHandleWithID:a1[7] didInvalidateWithError:v4];

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_addConnection:(id)connection forSession:(id)session
{
  connectionCopy = connection;
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(NSMapTable *)self->_sessionToConnections objectForKey:sessionCopy];
  if (!v8)
  {
    v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:1];
    sessionToConnections = self->_sessionToConnections;
    if (!sessionToConnections)
    {
      strongToStrongObjectsMapTable = [MEMORY[0x277CCAB00] strongToStrongObjectsMapTable];
      v11 = self->_sessionToConnections;
      self->_sessionToConnections = strongToStrongObjectsMapTable;

      sessionToConnections = self->_sessionToConnections;
    }

    [(NSMapTable *)sessionToConnections setObject:v8 forKey:sessionCopy];
  }

  [v8 addObject:connectionCopy];
  if ([v8 count] == 1)
  {
    v12 = sessionCopy;
    BSDispatchMain();
  }
}

- (void)_handleDisconnectForServiceConnection:(id)connection
{
  v21 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(NSMapTable *)self->_sessionToConnections copy];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = v5;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v6 objectForKey:v12];
        if ([v13 containsObject:connectionCopy])
        {
          if (!v9)
          {
            v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
          }

          [v9 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  else
  {
    v9 = 0;
  }

  if ([v9 count])
  {
    v14 = v9;
    v15 = connectionCopy;
    BSDispatchMain();
  }
}

void __67__SBRemoteAlertHandleServer__handleDisconnectForServiceConnection___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v16;
    do
    {
      v6 = 0;
      do
      {
        if (*v16 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v15 + 1) + 8 * v6++) invalidate];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v4);
  }

  v7 = *(*(a1 + 40) + 40);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __67__SBRemoteAlertHandleServer__handleDisconnectForServiceConnection___block_invoke_2;
  block[3] = &unk_2783A8ED8;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v12 = v8;
  v13 = v9;
  v14 = v10;
  dispatch_async(v7, block);
}

void __67__SBRemoteAlertHandleServer__handleDisconnectForServiceConnection___block_invoke_2(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _removeConnection:*(a1 + 48) forSession:{*(*(&v9 + 1) + 8 * v6++), v9}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  [*(*(a1 + 40) + 8) removeObject:*(a1 + 48)];
  if (![*(*(a1 + 40) + 8) count])
  {
    v7 = *(a1 + 40);
    v8 = *(v7 + 8);
    *(v7 + 8) = 0;
  }
}

- (void)_removeConnection:(id)connection forSession:(id)session
{
  connectionCopy = connection;
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(NSMapTable *)self->_sessionToConnections objectForKey:sessionCopy];
  if ([v8 containsObject:connectionCopy])
  {
    [v8 removeObject:connectionCopy];
    if (![v8 count])
    {
      v10 = MEMORY[0x277D85DD0];
      v11 = sessionCopy;
      BSDispatchMain();
      [(NSMapTable *)self->_sessionToConnections removeObjectForKey:v11, v10, 3221225472, __58__SBRemoteAlertHandleServer__removeConnection_forSession___block_invoke, &unk_2783A92D8];
      if (![(NSMapTable *)self->_sessionToConnections count])
      {
        sessionToConnections = self->_sessionToConnections;
        self->_sessionToConnections = 0;
      }
    }
  }
}

- (BOOL)_shouldAllowAuditToken:(id)token forDefinition:(id)definition
{
  tokenCopy = token;
  if ([definition isForCarPlay])
  {
    v7 = 0;
  }

  else if (([(FBServiceClientAuthenticator *)self->_clientAuthenticator authenticateAuditToken:tokenCopy]& 1) != 0)
  {
    v7 = 1;
  }

  else
  {
    v7 = [(FBServiceClientAuthenticator *)self->_legacyClientAuthenticator authenticateAuditToken:tokenCopy];
  }

  return v7;
}

- (void)activateRemoteAlertHandleWithID:(uint64_t)a1 activationContext:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Unable to activate alert handle due to no handle for session ID: %{public}@", &v2, 0xCu);
}

- (void)invalidateRemoteAlertHandleWithID:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138543362;
  v3 = a1;
  _os_log_error_impl(&dword_21ED4E000, a2, OS_LOG_TYPE_ERROR, "Unable to invalidate alert handle due to no handle for session ID: %{public}@", &v2, 0xCu);
}

@end