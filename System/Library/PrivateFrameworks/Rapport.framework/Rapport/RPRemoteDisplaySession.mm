@interface RPRemoteDisplaySession
- (RPRemoteDisplaySession)init;
- (RPRemoteDisplaySession)initWithCoder:(id)coder;
- (id)description;
- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)_sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion;
- (void)_sendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options responseHandler:(id)handler;
- (void)activateWithCompletion:(id)completion;
- (void)deregisterEventID:(id)d;
- (void)deregisterRequestID:(id)d;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)registerEventID:(id)d options:(id)options handler:(id)handler;
- (void)registerRequestID:(id)d options:(id)options handler:(id)handler;
- (void)remoteDisplayAuthCompleted:(id)completed;
- (void)remoteDisplayReceivedEventID:(id)d event:(id)event options:(id)options;
- (void)remoteDisplayReceivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler;
- (void)remoteDisplaySessionError:(id)error;
- (void)remoteDisplayUpdateDataLinkType:(id)type;
- (void)sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion;
- (void)sendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options responseHandler:(id)handler;
- (void)tryPassword:(id)password;
@end

@implementation RPRemoteDisplaySession

- (RPRemoteDisplaySession)init
{
  v6.receiver = self;
  v6.super_class = RPRemoteDisplaySession;
  v2 = [(RPRemoteDisplaySession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

- (RPRemoteDisplaySession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = RPRemoteDisplaySession;
  v5 = [(RPRemoteDisplaySession *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v7 = coderCopy;
    if ([v7 containsValueForKey:@"cFl"])
    {
      v6->_controlFlags = [v7 decodeInt64ForKey:@"cFl"];
    }

    objc_opt_class();
    NSDecodeObjectIfPresent();
    v13 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_internalAuthFlags = v13;
    }

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v13 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_passwordType = v13;
    }

    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v10 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  controlFlags = self->_controlFlags;
  v11 = coderCopy;
  if (controlFlags)
  {
    [coderCopy encodeInt64:controlFlags forKey:@"cFl"];
    coderCopy = v11;
  }

  destinationDevice = self->_destinationDevice;
  if (destinationDevice)
  {
    [v11 encodeObject:destinationDevice forKey:@"dd"];
    coderCopy = v11;
  }

  internalAuthFlags = self->_internalAuthFlags;
  if (internalAuthFlags)
  {
    [v11 encodeInt64:internalAuthFlags forKey:@"iaf"];
    coderCopy = v11;
  }

  pairingInfo = self->_pairingInfo;
  if (pairingInfo)
  {
    [v11 encodeObject:pairingInfo forKey:@"pairI"];
    coderCopy = v11;
  }

  passwordType = self->_passwordType;
  if (passwordType)
  {
    [v11 encodeInteger:passwordType forKey:@"pwTy"];
    coderCopy = v11;
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    [v11 encodeObject:serviceType forKey:@"srvTy"];
    coderCopy = v11;
  }
}

- (id)description
{
  NSAppendPrintF();
  v3 = 0;
  v4 = v3;
  serviceType = self->_serviceType;
  if (serviceType)
  {
    v12 = v3;
    v10 = serviceType;
    NSAppendPrintF();
    v6 = v12;

    v4 = v6;
  }

  destinationDevice = self->_destinationDevice;
  if (destinationDevice)
  {
    v11 = destinationDevice;
    NSAppendPrintF();
    v8 = v4;

    v4 = v8;
  }

  return v4;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__RPRemoteDisplaySession_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate
{
  reactivateCopy = reactivate;
  completionCopy = completion;
  v7 = completionCopy;
  if (self->_server)
  {
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }

    goto LABEL_21;
  }

  if (reactivateCopy)
  {
    if (gLogCategory_RPRemoteDisplaySession > 30 || gLogCategory_RPRemoteDisplaySession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_12;
    }
  }

  else if (gLogCategory_RPRemoteDisplaySession > 30 || gLogCategory_RPRemoteDisplaySession == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_12;
  }

  [RPRemoteDisplaySession _activateWithCompletion:reactivate:];
LABEL_12:
  if (self->_authCompletionHandler)
  {
    self->_internalAuthFlags |= 8u;
  }

  if (self->_showPasswordHandler)
  {
    self->_internalAuthFlags |= 1u;
  }

  if (self->_hidePasswordHandler)
  {
    self->_internalAuthFlags |= 2u;
  }

  if (self->_promptForPasswordHandler)
  {
    self->_internalAuthFlags |= 4u;
  }

  [(RPRemoteDisplaySession *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __61__RPRemoteDisplaySession__activateWithCompletion_reactivate___block_invoke;
  v14[3] = &unk_1E7C93500;
  v14[4] = self;
  v16 = reactivateCopy;
  v9 = v7;
  v15 = v9;
  v10 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__RPRemoteDisplaySession__activateWithCompletion_reactivate___block_invoke_2;
  v11[3] = &unk_1E7C92F88;
  v13 = reactivateCopy;
  v12 = v9;
  [v10 remoteDisplayActivateSession:self completion:v11];

LABEL_21:
}

void __61__RPRemoteDisplaySession__activateWithCompletion_reactivate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(*(a1 + 32) + 24) == 1)
  {
    v7 = v3;
    v4 = RPNestedErrorF();

    v3 = v4;
  }

  v8 = v3;
  if (*(a1 + 48) == 1)
  {
    if (gLogCategory_RPRemoteDisplaySession <= 90 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
    {
LABEL_16:
      __61__RPRemoteDisplaySession__activateWithCompletion_reactivate___block_invoke_cold_1();
    }
  }

  else if (gLogCategory_RPRemoteDisplaySession <= 90 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_16;
  }

  v5 = *(a1 + 40);
  v6 = v8;
  if (v5)
  {
    (*(v5 + 16))(v5, v8);
    v6 = v8;
  }
}

void __61__RPRemoteDisplaySession__activateWithCompletion_reactivate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v10 = v3;
  if (v3)
  {
    if (*(a1 + 40))
    {
      if (gLogCategory_RPRemoteDisplaySession <= 90)
      {
        if (gLogCategory_RPRemoteDisplaySession != -1 || (v5 = _LogCategory_Initialize(), v3 = v10, v5))
        {
          __61__RPRemoteDisplaySession__activateWithCompletion_reactivate___block_invoke_2_cold_2();
LABEL_20:
          v3 = v10;
        }
      }
    }

    else if (gLogCategory_RPRemoteDisplaySession <= 90)
    {
      if (gLogCategory_RPRemoteDisplaySession != -1 || (v7 = _LogCategory_Initialize(), v3 = v10, v7))
      {
        __61__RPRemoteDisplaySession__activateWithCompletion_reactivate___block_invoke_2_cold_1();
        goto LABEL_20;
      }
    }
  }

  else if (*(a1 + 40))
  {
    if (gLogCategory_RPRemoteDisplaySession <= 30)
    {
      if (gLogCategory_RPRemoteDisplaySession != -1 || (v6 = _LogCategory_Initialize(), v3 = 0, v6))
      {
        __61__RPRemoteDisplaySession__activateWithCompletion_reactivate___block_invoke_2_cold_4();
        goto LABEL_20;
      }
    }
  }

  else if (gLogCategory_RPRemoteDisplaySession <= 30)
  {
    if (gLogCategory_RPRemoteDisplaySession != -1 || (v8 = _LogCategory_Initialize(), v3 = 0, v8))
    {
      __61__RPRemoteDisplaySession__activateWithCompletion_reactivate___block_invoke_2_cold_3();
      goto LABEL_20;
    }
  }

  v9 = *(a1 + 32);
  if (v9)
  {
    (*(v9 + 16))(v9, v10);
    v3 = v10;
  }
}

- (void)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v12[5] = v5;
    v12[6] = v4;
    v12[11] = v2;
    v12[12] = v3;
    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.RemoteDisplay" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EF7D58];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__RPRemoteDisplaySession__ensureXPCStarted__block_invoke;
    v12[3] = &unk_1E7C92CE8;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __43__RPRemoteDisplaySession__ensureXPCStarted__block_invoke_2;
    v11[3] = &unk_1E7C92CE8;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v11];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFEE98];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v10];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_RPRemoteDisplaySession <= 10 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
    {
      [RPRemoteDisplaySession _ensureXPCStarted];
    }
  }
}

uint64_t __43__RPRemoteDisplaySession__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 232);
  *(v2 + 232) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_RPRemoteDisplaySession <= 50 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
  {
    [RPRemoteDisplaySession _interrupted];
  }

  if (self->_activateCalled)
  {
    [(RPRemoteDisplaySession *)self _activateWithCompletion:0 reactivate:1];
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
  block[2] = __36__RPRemoteDisplaySession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __36__RPRemoteDisplaySession_invalidate__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = result;
    *(v2 + 24) = 1;
    if (gLogCategory_RPRemoteDisplaySession <= 30 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
    {
      __36__RPRemoteDisplaySession_invalidate__block_invoke_cold_1();
    }

    v4 = *(v3 + 32);
    if (*(v4 + 216))
    {
      v5 = *(v4 + 224);
      if (v5)
      {
        v6 = [*(*(v3 + 32) + 232) remoteObjectProxy];
        [v6 remoteDisplayInvalidateSessionID:v5];
      }

      v7 = *(v3 + 32);
      v8 = *(v7 + 216);
      *(v7 + 216) = 0;

      v9 = *(v3 + 32);
      v10 = *(v9 + 224);
      *(v9 + 224) = 0;

      v11 = *(v3 + 32);
      v12 = *(v11 + 232);
      *(v11 + 232) = 0;
    }

    else
    {
      v13 = [*(v4 + 232) remoteObjectProxy];
      [v13 remoteDisplayInvalidateClientSession];

      [*(*(v3 + 32) + 232) invalidate];
    }

    v14 = *(v3 + 32);

    return [v14 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_xpcCnx)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    [(NSMutableDictionary *)self->_eventRegistrations removeAllObjects];
    [(NSMutableDictionary *)self->_requestRegistrations removeAllObjects];
    authCompletionHandler = self->_authCompletionHandler;
    self->_authCompletionHandler = 0;

    errorHandler = self->_errorHandler;
    self->_errorHandler = 0;

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v7 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    showPasswordHandler = self->_showPasswordHandler;
    self->_showPasswordHandler = 0;

    hidePasswordHandler = self->_hidePasswordHandler;
    self->_hidePasswordHandler = 0;

    promptForPasswordHandler = self->_promptForPasswordHandler;
    self->_promptForPasswordHandler = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_RPRemoteDisplaySession <= 30 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
    {
      [RPRemoteDisplaySession _invalidated];
    }
  }
}

- (void)tryPassword:(id)password
{
  passwordCopy = password;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__RPRemoteDisplaySession_tryPassword___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v7[4] = self;
  v8 = passwordCopy;
  v6 = passwordCopy;
  dispatch_async(dispatchQueue, v7);
}

void __38__RPRemoteDisplaySession_tryPassword___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 232) remoteObjectProxy];
  [v2 remoteDisplayTryPassword:*(a1 + 40)];
}

- (void)remoteDisplayAuthCompleted:(id)completed
{
  completedCopy = completed;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = _Block_copy(self->_authCompletionHandler);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, completedCopy);
  }

  else if (gLogCategory_RPRemoteDisplaySession <= 90 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
  {
    [RPRemoteDisplaySession remoteDisplayAuthCompleted:];
  }
}

- (void)registerEventID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__RPRemoteDisplaySession_registerEventID_options_handler___block_invoke;
  v15[3] = &unk_1E7C935C8;
  v16 = dCopy;
  v17 = optionsCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = optionsCopy;
  v14 = dCopy;
  dispatch_async(dispatchQueue, v15);
}

void __58__RPRemoteDisplaySession_registerEventID_options_handler___block_invoke(void *a1)
{
  if (gLogCategory_RPRemoteDisplaySession <= 30 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
  {
    __58__RPRemoteDisplaySession_registerEventID_options_handler___block_invoke_cold_1(a1);
  }

  v6 = objc_alloc_init(RPEventRegistration);
  [(RPEventRegistration *)v6 setEventID:a1[4]];
  [(RPEventRegistration *)v6 setOptions:a1[5]];
  [(RPEventRegistration *)v6 setHandler:a1[7]];
  v2 = *(a1[6] + 16);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = a1[6];
    v5 = *(v4 + 16);
    *(v4 + 16) = v3;

    v2 = *(a1[6] + 16);
  }

  [v2 setObject:v6 forKeyedSubscript:a1[4]];
}

- (void)deregisterEventID:(id)d
{
  dCopy = d;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__RPRemoteDisplaySession_deregisterEventID___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __44__RPRemoteDisplaySession_deregisterEventID___block_invoke(uint64_t a1)
{
  if (gLogCategory_RPRemoteDisplaySession <= 30 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
  {
    __44__RPRemoteDisplaySession_deregisterEventID___block_invoke_cold_1(a1);
  }

  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return [v3 setObject:0 forKeyedSubscript:v2];
}

- (void)sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion
{
  dCopy = d;
  eventCopy = event;
  iDCopy = iD;
  optionsCopy = options;
  completionCopy = completion;
  if (gLogCategory_RPRemoteDisplaySession <= 30 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
  {
    [RPRemoteDisplaySession sendEventID:eventCopy event:? destinationID:? options:? completion:?];
  }

  dispatchQueue = self->_dispatchQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __77__RPRemoteDisplaySession_sendEventID_event_destinationID_options_completion___block_invoke;
  v23[3] = &unk_1E7C94D90;
  v23[4] = self;
  v24 = dCopy;
  v25 = eventCopy;
  v26 = iDCopy;
  v27 = optionsCopy;
  v28 = completionCopy;
  v18 = completionCopy;
  v19 = optionsCopy;
  v20 = iDCopy;
  v21 = eventCopy;
  v22 = dCopy;
  dispatch_async(dispatchQueue, v23);
}

- (void)_sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion
{
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  completionCopy = completion;
  if ([iD isEqual:@"rapport:rdid:DirectPeer"])
  {
    [(RPRemoteDisplaySession *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __78__RPRemoteDisplaySession__sendEventID_event_destinationID_options_completion___block_invoke;
    v24[3] = &unk_1E7C937A8;
    v24[4] = self;
    v17 = dCopy;
    v25 = v17;
    v18 = completionCopy;
    v26 = v18;
    v19 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v24];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __78__RPRemoteDisplaySession__sendEventID_event_destinationID_options_completion___block_invoke_2;
    v21[3] = &unk_1E7C93470;
    v22 = v17;
    v23 = v18;
    [v19 remoteDisplaySendEventID:v22 event:eventCopy options:optionsCopy completion:v21];
  }

  else if (completionCopy)
  {
    v20 = RPErrorF();
    (*(completionCopy + 2))(completionCopy, v20);
  }
}

void __78__RPRemoteDisplaySession__sendEventID_event_destinationID_options_completion___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1[4] + 24) == 1)
  {
    v9 = v3;
    v5 = RPNestedErrorF();

    v4 = v5;
  }

  v10 = v4;
  if (gLogCategory_RPRemoteDisplaySession <= 90)
  {
    if (gLogCategory_RPRemoteDisplaySession != -1 || (v6 = _LogCategory_Initialize(), v4 = v10, v6))
    {
      v8 = a1[5];
      LogPrintF();
      v4 = v10;
    }
  }

  v7 = a1[6];
  if (v7)
  {
    (*(v7 + 16))(v7, v10);
    v4 = v10;
  }
}

void __78__RPRemoteDisplaySession__sendEventID_event_destinationID_options_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    if (gLogCategory_RPRemoteDisplaySession <= 90)
    {
      if (gLogCategory_RPRemoteDisplaySession != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
      {
        v6 = *(a1 + 32);
        LogPrintF();
        v3 = v7;
      }
    }
  }

  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, v7);
    v3 = v7;
  }
}

- (void)remoteDisplayReceivedEventID:(id)d event:(id)event options:(id)options
{
  v19[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  v11 = [(NSMutableDictionary *)self->_eventRegistrations objectForKeyedSubscript:dCopy];
  if (v11)
  {
    v12 = v11;
  }

  else
  {
    v16 = [(NSMutableDictionary *)self->_eventRegistrations objectForKeyedSubscript:@"*"];
    if (!v16)
    {
      goto LABEL_6;
    }

    v12 = v16;
    if (optionsCopy)
    {
      v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:optionsCopy];
      [v17 setObject:dCopy forKeyedSubscript:@"eventID"];

      optionsCopy = v17;
    }

    else
    {
      v18 = @"eventID";
      v19[0] = dCopy;
      optionsCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    }
  }

  handler = [v12 handler];
  v14 = handler;
  if (handler)
  {
    (*(handler + 16))(handler, eventCopy, optionsCopy);
  }

LABEL_6:
  v15 = *MEMORY[0x1E69E9840];
}

- (void)remoteDisplaySessionError:(id)error
{
  errorCopy = error;
  v4 = _Block_copy(self->_errorHandler);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, errorCopy);
  }
}

- (void)registerRequestID:(id)d options:(id)options handler:(id)handler
{
  dCopy = d;
  optionsCopy = options;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__RPRemoteDisplaySession_registerRequestID_options_handler___block_invoke;
  v15[3] = &unk_1E7C935C8;
  v16 = dCopy;
  v17 = optionsCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = optionsCopy;
  v14 = dCopy;
  dispatch_async(dispatchQueue, v15);
}

void __60__RPRemoteDisplaySession_registerRequestID_options_handler___block_invoke(void *a1)
{
  if (gLogCategory_RPRemoteDisplaySession <= 30 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
  {
    __60__RPRemoteDisplaySession_registerRequestID_options_handler___block_invoke_cold_1(a1);
  }

  v6 = objc_alloc_init(RPRequestRegistration);
  [(RPRequestRegistration *)v6 setRequestID:a1[4]];
  [(RPRequestRegistration *)v6 setOptions:a1[5]];
  [(RPRequestRegistration *)v6 setHandler:a1[7]];
  v2 = *(a1[6] + 32);
  if (!v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v4 = a1[6];
    v5 = *(v4 + 32);
    *(v4 + 32) = v3;

    v2 = *(a1[6] + 32);
  }

  [v2 setObject:v6 forKeyedSubscript:a1[4]];
}

- (void)deregisterRequestID:(id)d
{
  dCopy = d;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__RPRemoteDisplaySession_deregisterRequestID___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v8 = dCopy;
  selfCopy = self;
  v6 = dCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __46__RPRemoteDisplaySession_deregisterRequestID___block_invoke(uint64_t a1)
{
  if (gLogCategory_RPRemoteDisplaySession <= 30 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
  {
    __46__RPRemoteDisplaySession_deregisterRequestID___block_invoke_cold_1(a1);
  }

  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 32);

  return [v3 setObject:0 forKeyedSubscript:v2];
}

- (void)sendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options responseHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  iDCopy = iD;
  optionsCopy = options;
  handlerCopy = handler;
  if (gLogCategory_RPRemoteDisplaySession <= 30 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
  {
    [RPRemoteDisplaySession sendRequestID:requestCopy request:? destinationID:? options:? responseHandler:?];
  }

  dispatchQueue = self->_dispatchQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __86__RPRemoteDisplaySession_sendRequestID_request_destinationID_options_responseHandler___block_invoke;
  v23[3] = &unk_1E7C94D90;
  v23[4] = self;
  v24 = dCopy;
  v25 = requestCopy;
  v26 = iDCopy;
  v27 = optionsCopy;
  v28 = handlerCopy;
  v18 = handlerCopy;
  v19 = optionsCopy;
  v20 = iDCopy;
  v21 = requestCopy;
  v22 = dCopy;
  dispatch_async(dispatchQueue, v23);
}

- (void)_sendRequestID:(id)d request:(id)request destinationID:(id)iD options:(id)options responseHandler:(id)handler
{
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  if ([iD isEqual:@"rapport:rdid:DirectPeer"])
  {
    [(RPRemoteDisplaySession *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __87__RPRemoteDisplaySession__sendRequestID_request_destinationID_options_responseHandler___block_invoke;
    v24[3] = &unk_1E7C937A8;
    v24[4] = self;
    v17 = dCopy;
    v25 = v17;
    v18 = handlerCopy;
    v26 = v18;
    v19 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v24];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __87__RPRemoteDisplaySession__sendRequestID_request_destinationID_options_responseHandler___block_invoke_2;
    v21[3] = &unk_1E7C94DB8;
    v22 = v17;
    v23 = v18;
    [v19 remoteDisplaySendRequestID:v22 request:requestCopy options:optionsCopy responseHandler:v21];
  }

  else if (handlerCopy)
  {
    v20 = RPErrorF();
    (*(handlerCopy + 2))(handlerCopy, 0, 0, v20);
  }
}

void __87__RPRemoteDisplaySession__sendRequestID_request_destinationID_options_responseHandler___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (*(a1[4] + 24) == 1)
  {
    v7 = v3;
    v5 = RPNestedErrorF();

    v4 = v5;
  }

  v8 = v4;
  if (gLogCategory_RPRemoteDisplaySession <= 90 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
  {
    v6 = a1[5];
    LogPrintF();
  }

  (*(a1[6] + 16))(a1[6], 0);
}

void __87__RPRemoteDisplaySession__sendRequestID_request_destinationID_options_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (v8 && gLogCategory_RPRemoteDisplaySession <= 90 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
  {
    v9 = *(a1 + 32);
    LogPrintF();
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v10);
}

- (void)remoteDisplayReceivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler
{
  v22[1] = *MEMORY[0x1E69E9840];
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  v14 = [(NSMutableDictionary *)self->_requestRegistrations objectForKeyedSubscript:dCopy];
  if (v14)
  {
    v15 = v14;
  }

  else
  {
    v19 = [(NSMutableDictionary *)self->_requestRegistrations objectForKeyedSubscript:@"*"];
    if (!v19)
    {
      v15 = RPErrorF();
      (*(handlerCopy + 2))(handlerCopy, 0, 0, v15);
      goto LABEL_6;
    }

    v15 = v19;
    if (optionsCopy)
    {
      v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:optionsCopy];
      [v20 setObject:dCopy forKeyedSubscript:@"requestID"];

      optionsCopy = v20;
    }

    else
    {
      v21 = @"requestID";
      v22[0] = dCopy;
      optionsCopy = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    }
  }

  handler = [v15 handler];
  v17 = handler;
  if (handler)
  {
    (*(handler + 16))(handler, requestCopy, optionsCopy, handlerCopy);
  }

LABEL_6:
  v18 = *MEMORY[0x1E69E9840];
}

- (void)remoteDisplayUpdateDataLinkType:(id)type
{
  intValue = [type intValue];
  linkType = self->_linkType;
  if (linkType)
  {
    v6 = linkType == intValue;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    dispatchQueue = self->_dispatchQueue;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __58__RPRemoteDisplaySession_remoteDisplayUpdateDataLinkType___block_invoke;
    v8[3] = &unk_1E7C934D8;
    v8[4] = self;
    v9 = intValue;
    dispatch_async(dispatchQueue, v8);
  }

  else
  {
    [(RPRemoteDisplaySession *)&self->_linkType remoteDisplayUpdateDataLinkType:intValue];
  }
}

uint64_t __58__RPRemoteDisplaySession_remoteDisplayUpdateDataLinkType___block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if (!*(v1 + 60))
  {
    v2 = result;
    if (gLogCategory_RPRemoteDisplaySession <= 30)
    {
      if (gLogCategory_RPRemoteDisplaySession != -1)
      {
LABEL_4:
        v3 = *(v2 + 40);
        if (v3 <= 0xB)
        {
          v4 = off_1E7C94DD8[v3];
        }

        result = LogPrintF();
        v1 = *(v2 + 32);
        goto LABEL_10;
      }

      result = _LogCategory_Initialize();
      v1 = *(v2 + 32);
      if (result)
      {
        v5 = *(v1 + 60);
        if (v5 <= 0xB)
        {
          v6 = off_1E7C94DD8[v5];
        }

        goto LABEL_4;
      }
    }

LABEL_10:
    *(v1 + 60) = *(v2 + 40);
  }

  return result;
}

- (uint64_t)remoteDisplayUpdateDataLinkType:(unsigned int)a3 .cold.1(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (gLogCategory_RPRemoteDisplaySession <= 30)
  {
    if (gLogCategory_RPRemoteDisplaySession != -1)
    {
LABEL_3:
      RPDataLinkTypeToString_0(a2);
      RPDataLinkTypeToString_0(a3);
      return LogPrintF();
    }

    v4 = result;
    result = _LogCategory_Initialize();
    if (result)
    {
      a2 = *v4;
      goto LABEL_3;
    }
  }

  return result;
}

@end