@interface SBRemoteAlertHandleLocalClient
- (SBRemoteAlertHandleLocalClient)initWithSessionManager:(id)manager;
- (id)createRemoteAlertHandleWithDefinition:(id)definition configurationContext:(id)context;
- (id)remoteAlertHandlesForDefinition:(id)definition allowsCreation:(BOOL)creation configurationContext:(id)context;
- (void)_registerHandle:(id)handle forSession:(id)session;
- (void)_unregisterHandle:(id)handle;
- (void)activateRemoteAlertHandle:(id)handle withContext:(id)context;
- (void)invalidateRemoteAlertHandle:(id)handle;
- (void)remoteTransientOverlaySession:(id)session didInvalidateWithReason:(int64_t)reason error:(id)error;
- (void)remoteTransientOverlaySessionDidActivate:(id)activate;
- (void)remoteTransientOverlaySessionDidDeactivate:(id)deactivate;
@end

@implementation SBRemoteAlertHandleLocalClient

- (SBRemoteAlertHandleLocalClient)initWithSessionManager:(id)manager
{
  managerCopy = manager;
  v11.receiver = self;
  v11.super_class = SBRemoteAlertHandleLocalClient;
  v6 = [(SBRemoteAlertHandleLocalClient *)&v11 init];
  if (v6)
  {
    v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v8 = dispatch_queue_create("com.apple.SpringBoard.SBRemoteAlertHandleLocalClient.accessSerialQueue", v7);
    accessSerialQueue = v6->_accessSerialQueue;
    v6->_accessSerialQueue = v8;

    objc_storeStrong(&v6->_sessionManager, manager);
  }

  return v6;
}

- (id)remoteAlertHandlesForDefinition:(id)definition allowsCreation:(BOOL)creation configurationContext:(id)context
{
  definitionCopy = definition;
  contextCopy = context;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__93;
  v26 = __Block_byref_object_dispose__93;
  v27 = 0;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = __Block_byref_object_copy__93;
  v20[4] = __Block_byref_object_dispose__93;
  v21 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __102__SBRemoteAlertHandleLocalClient_remoteAlertHandlesForDefinition_allowsCreation_configurationContext___block_invoke;
  block[3] = &unk_2783BC710;
  creationCopy = creation;
  v17 = v20;
  block[4] = self;
  v11 = definitionCopy;
  v16 = v11;
  v18 = &v22;
  dispatch_sync(accessSerialQueue, block);
  v14 = contextCopy;
  BSDispatchMain();
  v12 = v23[5];

  _Block_object_dispose(v20, 8);
  _Block_object_dispose(&v22, 8);

  return v12;
}

void __102__SBRemoteAlertHandleLocalClient_remoteAlertHandlesForDefinition_allowsCreation_configurationContext___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 64);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 32) + 16);
  if (v2 == 1)
  {
    [v4 sessionsWithDefinition:v3 options:0];
  }

  else
  {
    [v4 existingSessionsWithDefinition:v3 options:0];
  }
  v5 = ;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), v5);

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = *(*(*(a1 + 48) + 8) + 40);
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        v12 = [v11 sessionID];
        v13 = [*(*(a1 + 32) + 24) objectForKey:v12];
        if (!v13)
        {
          v13 = [objc_alloc(MEMORY[0x277D66BF0]) _initWithHandleID:v12 handleClient:*(a1 + 32)];
          [*(a1 + 32) _registerHandle:v13 forSession:v11];
        }

        v14 = *(*(*(a1 + 56) + 8) + 40);
        if (!v14)
        {
          v15 = objc_alloc_init(MEMORY[0x277CBEB18]);
          v16 = *(*(a1 + 56) + 8);
          v17 = *(v16 + 40);
          *(v16 + 40) = v15;

          v14 = *(*(*(a1 + 56) + 8) + 40);
        }

        [v14 addObject:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }
}

void __102__SBRemoteAlertHandleLocalClient_remoteAlertHandlesForDefinition_allowsCreation_configurationContext___block_invoke_2(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(*(*(a1 + 40) + 8) + 40);
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
          [v7 prepareWithConfigurationContext:*(a1 + 32)];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (id)createRemoteAlertHandleWithDefinition:(id)definition configurationContext:(id)context
{
  definitionCopy = definition;
  contextCopy = context;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__93;
  v23 = __Block_byref_object_dispose__93;
  v24 = 0;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x3032000000;
  v17[3] = __Block_byref_object_copy__93;
  v17[4] = __Block_byref_object_dispose__93;
  v18 = 0;
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __93__SBRemoteAlertHandleLocalClient_createRemoteAlertHandleWithDefinition_configurationContext___block_invoke;
  block[3] = &unk_2783BC738;
  v15 = v17;
  block[4] = self;
  v9 = definitionCopy;
  v14 = v9;
  v16 = &v19;
  dispatch_sync(accessSerialQueue, block);
  v12 = contextCopy;
  BSDispatchMain();
  v10 = v20[5];

  _Block_object_dispose(v17, 8);
  _Block_object_dispose(&v19, 8);

  return v10;
}

void __93__SBRemoteAlertHandleLocalClient_createRemoteAlertHandleWithDefinition_configurationContext___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) createSessionWithDefinition:*(a1 + 40)];
  v3 = *(*(a1 + 48) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  v8 = [*(*(*(a1 + 48) + 8) + 40) sessionID];
  v5 = [objc_alloc(MEMORY[0x277D66BF0]) _initWithHandleID:v8 handleClient:*(a1 + 32)];
  v6 = *(*(a1 + 56) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;

  [*(a1 + 32) _registerHandle:*(*(*(a1 + 56) + 8) + 40) forSession:*(*(*(a1 + 48) + 8) + 40)];
}

- (void)activateRemoteAlertHandle:(id)handle withContext:(id)context
{
  contextCopy = context;
  handleID = [handle handleID];
  accessSerialQueue = self->_accessSerialQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __72__SBRemoteAlertHandleLocalClient_activateRemoteAlertHandle_withContext___block_invoke;
  block[3] = &unk_2783A8ED8;
  block[4] = self;
  v12 = handleID;
  v13 = contextCopy;
  v9 = contextCopy;
  v10 = handleID;
  dispatch_async(accessSerialQueue, block);
}

void __72__SBRemoteAlertHandleLocalClient_activateRemoteAlertHandle_withContext___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) existingSessionWithSessionID:*(a1 + 40) options:0];
  v4 = *(a1 + 48);
  v3 = v2;
  BSDispatchMain();
}

- (void)invalidateRemoteAlertHandle:(id)handle
{
  handleID = [handle handleID];
  accessSerialQueue = self->_accessSerialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__SBRemoteAlertHandleLocalClient_invalidateRemoteAlertHandle___block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = handleID;
  v6 = handleID;
  dispatch_async(accessSerialQueue, v7);
}

void __62__SBRemoteAlertHandleLocalClient_invalidateRemoteAlertHandle___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 16) existingSessionWithSessionID:*(a1 + 40) options:0];
  v1 = v2;
  BSDispatchMain();
}

- (void)remoteTransientOverlaySessionDidActivate:(id)activate
{
  sessionID = [activate sessionID];
  accessSerialQueue = self->_accessSerialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__SBRemoteAlertHandleLocalClient_remoteTransientOverlaySessionDidActivate___block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = sessionID;
  v6 = sessionID;
  dispatch_async(accessSerialQueue, v7);
}

void __75__SBRemoteAlertHandleLocalClient_remoteTransientOverlaySessionDidActivate___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  [v1 _didActivate];
}

- (void)remoteTransientOverlaySessionDidDeactivate:(id)deactivate
{
  sessionID = [deactivate sessionID];
  accessSerialQueue = self->_accessSerialQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __77__SBRemoteAlertHandleLocalClient_remoteTransientOverlaySessionDidDeactivate___block_invoke;
  v7[3] = &unk_2783A92D8;
  v7[4] = self;
  v8 = sessionID;
  v6 = sessionID;
  dispatch_async(accessSerialQueue, v7);
}

void __77__SBRemoteAlertHandleLocalClient_remoteTransientOverlaySessionDidDeactivate___block_invoke(uint64_t a1)
{
  v1 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  [v1 _didDeactivate];
}

- (void)remoteTransientOverlaySession:(id)session didInvalidateWithReason:(int64_t)reason error:(id)error
{
  errorCopy = error;
  sessionID = [session sessionID];
  accessSerialQueue = self->_accessSerialQueue;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __94__SBRemoteAlertHandleLocalClient_remoteTransientOverlaySession_didInvalidateWithReason_error___block_invoke;
  v13[3] = &unk_2783AB280;
  v13[4] = self;
  v14 = sessionID;
  v15 = errorCopy;
  reasonCopy = reason;
  v11 = errorCopy;
  v12 = sessionID;
  dispatch_async(accessSerialQueue, v13);
}

void __94__SBRemoteAlertHandleLocalClient_remoteTransientOverlaySession_didInvalidateWithReason_error___block_invoke(uint64_t a1)
{
  v6 = [*(*(a1 + 32) + 24) objectForKey:*(a1 + 40)];
  v2 = SBSRemoteAlertHandleInvalidationErrorCodeForInvalidationReason();
  if (v2)
  {
    v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    v4 = SBSRemoteAlertHandleInvalidationErrorDescription();
    [v3 setObject:v4 forKey:*MEMORY[0x277CCA450]];

    v5 = *(a1 + 48);
    if (v5)
    {
      [v3 setObject:v5 forKey:*MEMORY[0x277CCA7E8]];
    }

    v2 = [MEMORY[0x277CCA9B8] errorWithDomain:*MEMORY[0x277D67170] code:v2 userInfo:v3];
  }

  [v6 _receivedInvalidationWithError:v2];
  [*(a1 + 32) _unregisterHandle:v6];
}

- (void)_registerHandle:(id)handle forSession:(id)session
{
  handleCopy = handle;
  sessionCopy = session;
  dispatch_assert_queue_V2(self->_accessSerialQueue);
  sessionID = [sessionCopy sessionID];
  v9 = [(NSMutableDictionary *)self->_sessionIDToRemoteAlertHandle objectForKey:sessionID];

  if (!v9)
  {
    sessionIDToRemoteAlertHandle = self->_sessionIDToRemoteAlertHandle;
    if (!sessionIDToRemoteAlertHandle)
    {
      v11 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v12 = self->_sessionIDToRemoteAlertHandle;
      self->_sessionIDToRemoteAlertHandle = v11;

      sessionIDToRemoteAlertHandle = self->_sessionIDToRemoteAlertHandle;
    }

    [(NSMutableDictionary *)sessionIDToRemoteAlertHandle setObject:handleCopy forKey:sessionID];
    v13 = sessionCopy;
    BSDispatchMain();
  }
}

- (void)_unregisterHandle:(id)handle
{
  accessSerialQueue = self->_accessSerialQueue;
  handleCopy = handle;
  dispatch_assert_queue_V2(accessSerialQueue);
  handleID = [handleCopy handleID];

  v7 = [(SBRemoteTransientOverlaySessionManager *)self->_sessionManager existingSessionWithSessionID:handleID options:0];
  v10 = MEMORY[0x277D85DD0];
  v8 = v7;
  v11 = v8;
  BSDispatchMain();
  if (v8)
  {
    [(NSMutableDictionary *)self->_sessionIDToRemoteAlertHandle removeObjectForKey:handleID, v10, 3221225472, __52__SBRemoteAlertHandleLocalClient__unregisterHandle___block_invoke, &unk_2783A92D8, v8, self];
    if (![(NSMutableDictionary *)self->_sessionIDToRemoteAlertHandle count])
    {
      sessionIDToRemoteAlertHandle = self->_sessionIDToRemoteAlertHandle;
      self->_sessionIDToRemoteAlertHandle = 0;
    }
  }
}

@end