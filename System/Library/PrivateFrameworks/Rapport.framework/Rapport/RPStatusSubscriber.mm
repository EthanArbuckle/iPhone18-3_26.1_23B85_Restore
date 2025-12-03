@interface RPStatusSubscriber
- (NSString)description;
- (RPStatusSubscriber)init;
- (RPStatusSubscriber)initWithCoder:(id)coder;
- (id)_connectionWithClient:(id)client queue:(id)queue userProvider:(id)provider interruptionHandler:(id)handler invalidationHandler:(id)invalidationHandler;
- (id)_ensureXPCStarted;
- (id)identifierFromDevice:(id)device;
- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate;
- (void)_interrupted;
- (void)_invalidated;
- (void)activateWithCompletion:(id)completion;
- (void)invalidate;
- (void)subscribeToStatusUpdate:(id)update leeway:(double)leeway configurationFlags:(unint64_t)flags statusUpdateHandler:(id)handler completion:(id)completion;
- (void)unsubscribeToStatusUpdate:(id)update completion:(id)completion;
@end

@implementation RPStatusSubscriber

- (RPStatusSubscriber)init
{
  v8.receiver = self;
  v8.super_class = RPStatusSubscriber;
  v2 = [(RPStatusSubscriber *)&v8 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = objc_alloc_init(RPSignedInUserProvider);
    userProvider = v3->_userProvider;
    v3->_userProvider = v4;

    v6 = v3;
  }

  return v3;
}

- (RPStatusSubscriber)initWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = RPStatusSubscriber;
  v3 = [(RPStatusSubscriber *)&v7 init];
  v4 = v3;
  if (v3)
  {
    objc_storeStrong(&v3->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v5 = v4;
  }

  return v4;
}

- (NSString)description
{
  NSAppendPrintF();

  return 0;
}

- (void)subscribeToStatusUpdate:(id)update leeway:(double)leeway configurationFlags:(unint64_t)flags statusUpdateHandler:(id)handler completion:(id)completion
{
  updateCopy = update;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __103__RPStatusSubscriber_subscribeToStatusUpdate_leeway_configurationFlags_statusUpdateHandler_completion___block_invoke;
  block[3] = &unk_1E7C92DF8;
  v15 = updateCopy;
  v16 = completionCopy;
  block[4] = self;
  v12 = updateCopy;
  v13 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __103__RPStatusSubscriber_subscribeToStatusUpdate_leeway_configurationFlags_statusUpdateHandler_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  v7 = v2;
  if (!v2)
  {
    v6 = [*(*(a1 + 32) + 24) remoteObjectProxy];
    [v6 xpcStatusUpdatableSubscribeToStatus:*(a1 + 40)];

    goto LABEL_8;
  }

  v3 = v2;
  if (gLogCategory_StatusSubscriber <= 60)
  {
    if (gLogCategory_StatusSubscriber != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
    {
      __103__RPStatusSubscriber_subscribeToStatusUpdate_leeway_configurationFlags_statusUpdateHandler_completion___block_invoke_cold_1();
      v3 = v7;
    }
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v7);
LABEL_8:
    v3 = v7;
  }
}

- (void)unsubscribeToStatusUpdate:(id)update completion:(id)completion
{
  updateCopy = update;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__RPStatusSubscriber_unsubscribeToStatusUpdate_completion___block_invoke;
  block[3] = &unk_1E7C92DF8;
  v12 = updateCopy;
  v13 = completionCopy;
  block[4] = self;
  v9 = updateCopy;
  v10 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __59__RPStatusSubscriber_unsubscribeToStatusUpdate_completion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _ensureXPCStarted];
  v7 = v2;
  if (!v2)
  {
    v6 = [*(*(a1 + 32) + 24) remoteObjectProxy];
    [v6 xpcStatusUpdatableUnsubscribeToStatus:*(a1 + 40)];

    goto LABEL_8;
  }

  v3 = v2;
  if (gLogCategory_StatusSubscriber <= 60)
  {
    if (gLogCategory_StatusSubscriber != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
    {
      __59__RPStatusSubscriber_unsubscribeToStatusUpdate_completion___block_invoke_cold_1();
      v3 = v7;
    }
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))(v5, v7);
LABEL_8:
    v3 = v7;
  }
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_activateCalled = 1;
  dispatchQueue = selfCopy->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __45__RPStatusSubscriber_activateWithCompletion___block_invoke;
  v8[3] = &unk_1E7C92E20;
  v8[4] = selfCopy;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, v8);

  objc_sync_exit(selfCopy);
}

- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate
{
  reactivateCopy = reactivate;
  completionCopy = completion;
  if (reactivateCopy)
  {
    if (gLogCategory_StatusSubscriber <= 30 && (gLogCategory_StatusSubscriber != -1 || _LogCategory_Initialize()))
    {
LABEL_16:
      [RPStatusSubscriber _activateWithCompletion:? reactivate:?];
    }
  }

  else if (gLogCategory_StatusSubscriber <= 30 && (gLogCategory_StatusSubscriber != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_16;
  }

  _ensureXPCStarted = [(RPStatusSubscriber *)self _ensureXPCStarted];
  if (_ensureXPCStarted)
  {
    if (completionCopy)
    {
      completionCopy[2](completionCopy, _ensureXPCStarted);
    }
  }

  else
  {
    xpcCnx = self->_xpcCnx;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __57__RPStatusSubscriber__activateWithCompletion_reactivate___block_invoke;
    v15[3] = &unk_1E7C92F88;
    v17 = reactivateCopy;
    v9 = completionCopy;
    v16 = v9;
    v10 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v15];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__RPStatusSubscriber__activateWithCompletion_reactivate___block_invoke_2;
    v12[3] = &unk_1E7C93528;
    v14 = reactivateCopy;
    v12[4] = self;
    v11 = v9;
    v13 = v11;
    [v10 xpcStatusSubscriberActivate:self completion:v12];

    if (v11)
    {
      v11[2](v11, 0);
    }
  }
}

void __57__RPStatusSubscriber__activateWithCompletion_reactivate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (*(a1 + 40) == 1)
  {
    if (gLogCategory_StatusSubscriber <= 60)
    {
      if (gLogCategory_StatusSubscriber != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
      {
LABEL_14:
        __57__RPStatusSubscriber__activateWithCompletion_reactivate___block_invoke_cold_1();
        v3 = v7;
      }
    }
  }

  else if (gLogCategory_StatusSubscriber <= 60)
  {
    if (gLogCategory_StatusSubscriber != -1)
    {
      goto LABEL_14;
    }

    v5 = _LogCategory_Initialize();
    v3 = v7;
    if (v5)
    {
      goto LABEL_14;
    }
  }

  v6 = *(a1 + 32);
  if (v6)
  {
    (*(v6 + 16))(v6, v7);
    v3 = v7;
  }
}

void __57__RPStatusSubscriber__activateWithCompletion_reactivate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    if (*(a1 + 48) == 1)
    {
      if (gLogCategory_StatusSubscriber <= 60 && (gLogCategory_StatusSubscriber != -1 || _LogCategory_Initialize()))
      {
        __57__RPStatusSubscriber__activateWithCompletion_reactivate___block_invoke_2_cold_2();
      }
    }

    else if (gLogCategory_StatusSubscriber <= 60 && (gLogCategory_StatusSubscriber != -1 || _LogCategory_Initialize()))
    {
      __57__RPStatusSubscriber__activateWithCompletion_reactivate___block_invoke_2_cold_1();
    }

    goto LABEL_32;
  }

  v7 = *(a1 + 32);
  objc_sync_enter(v7);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v8);
        }

        [*(*(&v14 + 1) + 8 * i) getIdentifier];
      }

      v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  objc_sync_exit(v7);
  if (*(a1 + 48) == 1)
  {
    if (gLogCategory_StatusSubscriber <= 30 && (gLogCategory_StatusSubscriber != -1 || _LogCategory_Initialize()))
    {
LABEL_22:
      __57__RPStatusSubscriber__activateWithCompletion_reactivate___block_invoke_2_cold_3((a1 + 32));
    }
  }

  else if (gLogCategory_StatusSubscriber <= 30 && (gLogCategory_StatusSubscriber != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_22;
  }

  v12 = *(a1 + 40);
  if (v12)
  {
    (*(v12 + 16))(v12, 0);
  }

LABEL_32:

  v13 = *MEMORY[0x1E69E9840];
}

- (id)_ensureXPCStarted
{
  if (self->_xpcCnx)
  {
    v2 = 0;
    goto LABEL_16;
  }

  if (self->_invalidateCalled)
  {
    v2 = RPErrorF();
    goto LABEL_16;
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __39__RPStatusSubscriber__ensureXPCStarted__block_invoke;
  aBlock[3] = &unk_1E7C92CE8;
  aBlock[4] = self;
  v4 = _Block_copy(aBlock);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__RPStatusSubscriber__ensureXPCStarted__block_invoke_2;
  v9[3] = &unk_1E7C92CE8;
  v9[4] = self;
  v5 = _Block_copy(v9);
  if ([(RPSignedInUserProvider *)self->_userProvider supportsMultipleUsers]&& self->_targetUserSession)
  {
    if (![(RPSignedInUserProvider *)self->_userProvider signedInUserID])
    {
      if (gLogCategory_StatusSubscriber <= 50 && (gLogCategory_StatusSubscriber != -1 || _LogCategory_Initialize()))
      {
        [RPStatusSubscriber _ensureXPCStarted];
      }

      v2 = RPErrorF();
      goto LABEL_15;
    }

    if (gLogCategory_StatusSubscriber <= 30 && (gLogCategory_StatusSubscriber != -1 || _LogCategory_Initialize()))
    {
      [RPStatusSubscriber _ensureXPCStarted];
    }
  }

  v6 = [(RPStatusSubscriber *)self _connectionWithClient:self queue:self->_dispatchQueue userProvider:self->_userProvider interruptionHandler:v4 invalidationHandler:v5];
  xpcCnx = self->_xpcCnx;
  self->_xpcCnx = v6;

  if (gLogCategory_StatusSubscriber <= 10 && (gLogCategory_StatusSubscriber != -1 || _LogCategory_Initialize()))
  {
    [RPStatusSubscriber _ensureXPCStarted];
  }

  v2 = 0;
LABEL_15:

LABEL_16:

  return v2;
}

uint64_t __39__RPStatusSubscriber__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (id)_connectionWithClient:(id)client queue:(id)queue userProvider:(id)provider interruptionHandler:(id)handler invalidationHandler:(id)invalidationHandler
{
  providerCopy = provider;
  v11 = MEMORY[0x1E696B0B8];
  invalidationHandlerCopy = invalidationHandler;
  handlerCopy = handler;
  queueCopy = queue;
  clientCopy = client;
  v13 = [[v11 alloc] initWithMachServiceName:@"com.apple.rapport.StatusUpdates" options:0];
  v14 = objc_alloc(MEMORY[0x1E695DFD8]);
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = [v14 initWithObjects:{v15, v16, v17, v18, v19, v20, v21, objc_opt_class(), 0}];
  v23 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EF90E0];
  [v23 setClasses:v22 forSelector:sel_xpcStatusUpdatableGiveStatusUpdate_peerDevice_currentState_statusInfo_ argumentIndex:1 ofReply:0];
  v24 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFEF58];
  v25 = objc_alloc(MEMORY[0x1E695DFD8]);
  v26 = objc_opt_class();
  v27 = [v25 initWithObjects:{v26, objc_opt_class(), 0}];
  [v24 setClasses:v27 forSelector:sel_xpcStatusSubscriberActivate_completion_ argumentIndex:0 ofReply:1];

  [v24 setClasses:v22 forSelector:sel_xpcStatusUpdatableSubscribeToStatus_ argumentIndex:0 ofReply:0];
  v28 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:{objc_opt_class(), 0}];
  [v24 setClasses:v28 forSelector:sel_xpcStatusUpdatableUnsubscribeToStatus_ argumentIndex:0 ofReply:0];

  [v13 setExportedInterface:v23];
  [v13 setExportedObject:clientCopy];

  [v13 setInterruptionHandler:handlerCopy];
  [v13 setInvalidationHandler:invalidationHandlerCopy];

  [v13 setRemoteObjectInterface:v24];
  [v13 _setQueue:queueCopy];

  if (self->_targetUserSession && [providerCopy supportsMultipleUsers] && objc_msgSend(providerCopy, "signedInUserID"))
  {
    [v13 _setTargetUserIdentifier:{objc_msgSend(providerCopy, "signedInUserID")}];
  }

  [v13 resume];

  return v13;
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_StatusSubscriber <= 50 && (gLogCategory_StatusSubscriber != -1 || _LogCategory_Initialize()))
  {
    [RPStatusSubscriber _interrupted];
  }

  if (self->_activateCalled)
  {
    [(RPStatusSubscriber *)self _activateWithCompletion:0 reactivate:1];
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v4 = *(interruptionHandler + 2);

    v4();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__RPStatusSubscriber_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __32__RPStatusSubscriber_invalidate__block_invoke(uint64_t result)
{
  v5 = *(result + 32);
  if ((*(v5 + 9) & 1) == 0)
  {
    v8 = v1;
    v6 = result;
    *(v5 + 9) = 1;
    if (gLogCategory_StatusSubscriber <= 30 && (gLogCategory_StatusSubscriber != -1 || _LogCategory_Initialize()))
    {
      __32__RPStatusSubscriber_invalidate__block_invoke_cold_1();
    }

    [*(*(v6 + 32) + 24) invalidate];
    v7 = *(v6 + 32);

    return [v7 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_xpcCnx)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2](invalidationHandler, a2);
    }

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v5 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    devices = self->_devices;
    self->_devices = 0;

    statusConfigurations = self->_statusConfigurations;
    self->_statusConfigurations = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_StatusSubscriber <= 30 && (gLogCategory_StatusSubscriber != -1 || _LogCategory_Initialize()))
    {
      [RPStatusSubscriber _invalidated];
    }
  }
}

- (id)identifierFromDevice:(id)device
{
  deviceCopy = device;
  idsDeviceIdentifier = [deviceCopy idsDeviceIdentifier];
  v5 = idsDeviceIdentifier;
  if (idsDeviceIdentifier)
  {
    identifier = idsDeviceIdentifier;
  }

  else
  {
    identifier = [deviceCopy identifier];
  }

  v7 = identifier;

  return v7;
}

@end