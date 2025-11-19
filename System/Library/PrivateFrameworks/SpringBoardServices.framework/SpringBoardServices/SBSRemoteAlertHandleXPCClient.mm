@interface SBSRemoteAlertHandleXPCClient
- (SBSRemoteAlertHandleXPCClient)init;
- (id)_connection;
- (id)createRemoteAlertHandleWithDefinition:(id)a3 configurationContext:(id)a4;
- (id)remoteAlertHandlesForDefinition:(id)a3 allowsCreation:(BOOL)a4 configurationContext:(id)a5;
- (void)_handleError:(id)a3;
- (void)_invalidateHandleForHandleID:(id)a3 withError:(id)a4;
- (void)activateRemoteAlertHandle:(id)a3 withContext:(id)a4;
- (void)invalidateRemoteAlertHandle:(id)a3;
- (void)remoteAlertHandleWithID:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleWithIDDidActivate:(id)a3;
- (void)remoteAlertHandleWithIDDidDeactivate:(id)a3;
@end

@implementation SBSRemoteAlertHandleXPCClient

- (SBSRemoteAlertHandleXPCClient)init
{
  v8.receiver = self;
  v8.super_class = SBSRemoteAlertHandleXPCClient;
  v2 = [(SBSRemoteAlertHandleXPCClient *)&v8 init];
  if (v2)
  {
    v3 = BSDispatchQueueCreateWithQualityOfService();
    calloutQueue = v2->_calloutQueue;
    v2->_calloutQueue = v3;

    v5 = BSDispatchQueueCreateWithQualityOfService();
    connectionAccessQueue = v2->_connectionAccessQueue;
    v2->_connectionAccessQueue = v5;
  }

  return v2;
}

- (void)remoteAlertHandleWithIDDidActivate:(id)a3
{
  if (a3)
  {
    v3 = [(NSMutableDictionary *)self->_handleIDToHandle objectForKey:?];
    [v3 _didActivate];
  }
}

- (void)remoteAlertHandleWithIDDidDeactivate:(id)a3
{
  if (a3)
  {
    v3 = [(NSMutableDictionary *)self->_handleIDToHandle objectForKey:?];
    [v3 _didDeactivate];
  }
}

- (void)remoteAlertHandleWithID:(id)a3 didInvalidateWithError:(id)a4
{
  if (a3)
  {
    [(SBSRemoteAlertHandleXPCClient *)self _invalidateHandleForHandleID:a3 withError:a4];
  }
}

- (id)remoteAlertHandlesForDefinition:(id)a3 allowsCreation:(BOOL)a4 configurationContext:(id)a5
{
  v6 = a4;
  v34 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v10 = [(SBSRemoteAlertHandleXPCClient *)self _connection];
  v11 = [v10 remoteTarget];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  v28 = v8;
  v13 = [v11 remoteAlertHandleContextsForDefinition:v8 allowsCreationValue:v12 configurationContext:v9];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v14 = v13;
  v15 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (!v15)
  {
    v17 = 0;
    goto LABEL_21;
  }

  v16 = v15;
  v17 = 0;
  v18 = *v30;
  do
  {
    v19 = 0;
    do
    {
      if (*v30 != v18)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v29 + 1) + 8 * v19);
      v21 = [v20 handleID];
      if ([v21 length])
      {
        v22 = [(NSMutableDictionary *)self->_handleIDToHandle objectForKey:v21];
        if (v22)
        {
          if (v17)
          {
LABEL_9:
            [v17 addObject:v22];

            goto LABEL_10;
          }
        }

        else
        {
          v22 = [[SBSRemoteAlertHandle alloc] _initWithHandleID:v21 handleClient:self];
          if ([v20 isActive])
          {
            [v22 _didActivate];
          }

          handleIDToHandle = self->_handleIDToHandle;
          if (!handleIDToHandle)
          {
            v24 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v25 = self->_handleIDToHandle;
            self->_handleIDToHandle = v24;

            handleIDToHandle = self->_handleIDToHandle;
          }

          [(NSMutableDictionary *)handleIDToHandle setObject:v22 forKey:v21];
          if (v17)
          {
            goto LABEL_9;
          }
        }

        v17 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v14, "count")}];
        goto LABEL_9;
      }

LABEL_10:

      ++v19;
    }

    while (v16 != v19);
    v26 = [v14 countByEnumeratingWithState:&v29 objects:v33 count:16];
    v16 = v26;
  }

  while (v26);
LABEL_21:

  return v17;
}

- (id)createRemoteAlertHandleWithDefinition:(id)a3 configurationContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(SBSRemoteAlertHandleXPCClient *)self _connection];
  v9 = [v8 remoteTarget];
  v10 = [v9 createRemoteAlertHandleContextWithDefinition:v7 configurationContext:v6];

  v11 = [v10 handleID];
  if ([v11 length])
  {
    v12 = [(NSMutableDictionary *)self->_handleIDToHandle objectForKey:v11];
    if (!v12)
    {
      v12 = [[SBSRemoteAlertHandle alloc] _initWithHandleID:v11 handleClient:self];
      if ([v10 isActive])
      {
        [v12 _didActivate];
      }

      handleIDToHandle = self->_handleIDToHandle;
      if (!handleIDToHandle)
      {
        v14 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v15 = self->_handleIDToHandle;
        self->_handleIDToHandle = v14;

        handleIDToHandle = self->_handleIDToHandle;
      }

      [(NSMutableDictionary *)handleIDToHandle setObject:v12 forKey:v11];
    }
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (void)activateRemoteAlertHandle:(id)a3 withContext:(id)a4
{
  v9 = a4;
  v6 = [a3 handleID];
  if (v6)
  {
    v7 = [(SBSRemoteAlertHandleXPCClient *)self _connection];
    v8 = [v7 remoteTarget];
    [v8 activateRemoteAlertHandleWithID:v6 activationContext:v9];
  }
}

- (void)invalidateRemoteAlertHandle:(id)a3
{
  v4 = [a3 handleID];
  if (v4)
  {
    v7 = v4;
    v5 = [(SBSRemoteAlertHandleXPCClient *)self _connection];
    v6 = [v5 remoteTarget];
    [v6 invalidateRemoteAlertHandleWithID:v7];

    v4 = v7;
  }
}

- (id)_connection
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__2;
  v10 = __Block_byref_object_dispose__2;
  v11 = 0;
  connectionAccessQueue = self->_connectionAccessQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__SBSRemoteAlertHandleXPCClient__connection__block_invoke;
  v5[3] = &unk_1E73616F0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(connectionAccessQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __44__SBSRemoteAlertHandleXPCClient__connection__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 33) & 1) == 0)
  {
    if (!*(v1 + 24))
    {
      v3 = MEMORY[0x1E698F498];
      v4 = MEMORY[0x1E698E798];
      v5 = [MEMORY[0x1E698F498] defaultShellMachName];
      v6 = [v4 resolveServiceName:v5];
      v7 = +[SBSRemoteAlertHandleServiceSpecification identifier];
      v8 = [v3 endpointForMachName:v6 service:v7 instance:0];

      v9 = [MEMORY[0x1E698F490] connectionWithEndpoint:v8];
      v10 = *(a1 + 32);
      v11 = *(v10 + 24);
      *(v10 + 24) = v9;

      v12 = *(a1 + 32);
      v13 = *(v12 + 24);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __44__SBSRemoteAlertHandleXPCClient__connection__block_invoke_2;
      v14[3] = &unk_1E735ED88;
      v14[4] = v12;
      [v13 configureConnection:v14];

      v1 = *(a1 + 32);
    }

    if ((*(v1 + 32) & 1) == 0)
    {
      *(v1 + 32) = 1;
      [*(*(a1 + 32) + 24) activate];
      v1 = *(a1 + 32);
    }

    objc_storeStrong((*(*(a1 + 40) + 8) + 40), *(v1 + 24));
  }
}

void __44__SBSRemoteAlertHandleXPCClient__connection__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SBSRemoteAlertHandleServiceSpecification interface];
  [v3 setInterface:v4];

  [v3 setTargetQueue:*(*(a1 + 32) + 8)];
  [v3 setInterfaceTarget:*(a1 + 32)];
  v5 = [MEMORY[0x1E698F500] userInitiated];
  [v3 setServiceQuality:v5];

  objc_initWeak(&location, *(a1 + 32));
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__SBSRemoteAlertHandleXPCClient__connection__block_invoke_3;
  v8[3] = &unk_1E735ED60;
  objc_copyWeak(&v9, &location);
  [v3 setInterruptionHandler:v8];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __44__SBSRemoteAlertHandleXPCClient__connection__block_invoke_5;
  v6[3] = &unk_1E735ED60;
  objc_copyWeak(&v7, &location);
  [v3 setInvalidationHandler:v6];
  objc_destroyWeak(&v7);
  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

void __44__SBSRemoteAlertHandleXPCClient__connection__block_invoke_3(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__SBSRemoteAlertHandleXPCClient__connection__block_invoke_4;
    block[3] = &unk_1E735F9D0;
    v4 = WeakRetained;
    v6 = v4;
    dispatch_barrier_async(v3, block);
    [v4 _handleError:0];
  }
}

void __44__SBSRemoteAlertHandleXPCClient__connection__block_invoke_5(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = WeakRetained[2];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __44__SBSRemoteAlertHandleXPCClient__connection__block_invoke_6;
    block[3] = &unk_1E735F9D0;
    v4 = WeakRetained;
    v6 = v4;
    dispatch_barrier_async(v3, block);
    [v4 _handleError:0];
  }
}

uint64_t __44__SBSRemoteAlertHandleXPCClient__connection__block_invoke_6(uint64_t result)
{
  *(*(result + 32) + 32) = 0;
  *(*(result + 32) + 33) = 1;
  return result;
}

- (void)_handleError:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:2];
  v6 = SBSRemoteAlertHandleInvalidationErrorDescription(2uLL);
  [v5 setObject:v6 forKey:*MEMORY[0x1E696A578]];

  if (v4)
  {
    [v5 setObject:v4 forKey:*MEMORY[0x1E696AA08]];
  }

  v7 = [MEMORY[0x1E696ABC0] errorWithDomain:@"SBSRemoteAlertHandleInvalidationErrorDomain" code:2 userInfo:v5];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v8 = [(NSMutableDictionary *)self->_handleIDToHandle copy];
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

        [(SBSRemoteAlertHandleXPCClient *)self _invalidateHandleForHandleID:*(*(&v13 + 1) + 8 * v12++) withError:v7];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v10);
  }
}

- (void)_invalidateHandleForHandleID:(id)a3 withError:(id)a4
{
  calloutQueue = self->_calloutQueue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(calloutQueue);
  v10 = [(NSMutableDictionary *)self->_handleIDToHandle objectForKey:v8];
  [v10 _receivedInvalidationWithError:v7];

  [(NSMutableDictionary *)self->_handleIDToHandle removeObjectForKey:v8];
  if (![(NSMutableDictionary *)self->_handleIDToHandle count])
  {
    handleIDToHandle = self->_handleIDToHandle;
    self->_handleIDToHandle = 0;
  }
}

@end