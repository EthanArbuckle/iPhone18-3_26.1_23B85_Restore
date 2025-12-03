@interface RPRemoteDisplayServer
- (RPRemoteDisplayServer)init;
- (RPRemoteDisplayServer)initWithCoder:(id)coder;
- (id)description;
- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)activateWithCompletion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)remoteDisplayReceivedEventID:(id)d event:(id)event options:(id)options sessionID:(id)iD;
- (void)remoteDisplayReceivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler sessionID:(id)iD;
- (void)remoteDisplaySessionEndedWithID:(id)d;
- (void)remoteDisplayStartServerSessionID:(id)d device:(id)device linkType:(id)type completion:(id)completion;
- (void)startPairingServerWithCompletion:(id)completion;
- (void)stopPairingServer;
- (void)tryPassword:(id)password;
@end

@implementation RPRemoteDisplayServer

- (RPRemoteDisplayServer)init
{
  v6.receiver = self;
  v6.super_class = RPRemoteDisplayServer;
  v2 = [(RPRemoteDisplayServer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_passwordType = 3;
    v4 = v3;
  }

  return v3;
}

- (RPRemoteDisplayServer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = RPRemoteDisplayServer;
  v5 = [(RPRemoteDisplayServer *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v11 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_internalAuthFlags = v11;
    }

    v11 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_passwordType = v11;
    }

    v7 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  internalAuthFlags = self->_internalAuthFlags;
  v8 = coderCopy;
  if (internalAuthFlags)
  {
    [coderCopy encodeInt64:internalAuthFlags forKey:@"iaf"];
    coderCopy = v8;
  }

  passwordType = self->_passwordType;
  if (passwordType)
  {
    [v8 encodeInteger:passwordType forKey:@"pwTy"];
    coderCopy = v8;
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    [v8 encodeObject:serviceType forKey:@"srvTy"];
    coderCopy = v8;
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
    v9 = v3;
    v8 = serviceType;
    NSAppendPrintF();
    v6 = v9;

    v4 = v6;
  }

  return v4;
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __48__RPRemoteDisplayServer_activateWithCompletion___block_invoke;
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
  if (reactivateCopy)
  {
    if (gLogCategory_RPRemoteDisplayServer <= 30 && (gLogCategory_RPRemoteDisplayServer != -1 || _LogCategory_Initialize()))
    {
LABEL_18:
      [RPRemoteDisplayServer _activateWithCompletion:reactivate:];
    }
  }

  else if (gLogCategory_RPRemoteDisplayServer <= 30 && (gLogCategory_RPRemoteDisplayServer != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_18;
  }

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

  [(RPRemoteDisplayServer *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __60__RPRemoteDisplayServer__activateWithCompletion_reactivate___block_invoke;
  v14[3] = &unk_1E7C92F88;
  v16 = reactivateCopy;
  v8 = completionCopy;
  v15 = v8;
  v9 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __60__RPRemoteDisplayServer__activateWithCompletion_reactivate___block_invoke_2;
  v11[3] = &unk_1E7C92F88;
  v13 = reactivateCopy;
  v12 = v8;
  v10 = v8;
  [v9 remoteDisplayActivateServer:self completion:v11];
}

void __60__RPRemoteDisplayServer__activateWithCompletion_reactivate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (*(a1 + 40) == 1)
  {
    if (gLogCategory_RPRemoteDisplayServer <= 90)
    {
      if (gLogCategory_RPRemoteDisplayServer != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
      {
LABEL_14:
        __60__RPRemoteDisplayServer__activateWithCompletion_reactivate___block_invoke_cold_1();
        v3 = v7;
      }
    }
  }

  else if (gLogCategory_RPRemoteDisplayServer <= 90)
  {
    if (gLogCategory_RPRemoteDisplayServer != -1)
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

void __60__RPRemoteDisplayServer__activateWithCompletion_reactivate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v10 = v3;
  if (v3)
  {
    if (*(a1 + 40))
    {
      if (gLogCategory_RPRemoteDisplayServer <= 90)
      {
        if (gLogCategory_RPRemoteDisplayServer != -1 || (v5 = _LogCategory_Initialize(), v3 = v10, v5))
        {
          __60__RPRemoteDisplayServer__activateWithCompletion_reactivate___block_invoke_2_cold_2();
LABEL_20:
          v3 = v10;
        }
      }
    }

    else if (gLogCategory_RPRemoteDisplayServer <= 90)
    {
      if (gLogCategory_RPRemoteDisplayServer != -1 || (v7 = _LogCategory_Initialize(), v3 = v10, v7))
      {
        __60__RPRemoteDisplayServer__activateWithCompletion_reactivate___block_invoke_2_cold_1();
        goto LABEL_20;
      }
    }
  }

  else if (*(a1 + 40))
  {
    if (gLogCategory_RPRemoteDisplayServer <= 30)
    {
      if (gLogCategory_RPRemoteDisplayServer != -1 || (v6 = _LogCategory_Initialize(), v3 = 0, v6))
      {
        __60__RPRemoteDisplayServer__activateWithCompletion_reactivate___block_invoke_2_cold_4();
        goto LABEL_20;
      }
    }
  }

  else if (gLogCategory_RPRemoteDisplayServer <= 30)
  {
    if (gLogCategory_RPRemoteDisplayServer != -1 || (v8 = _LogCategory_Initialize(), v3 = 0, v8))
    {
      __60__RPRemoteDisplayServer__activateWithCompletion_reactivate___block_invoke_2_cold_3();
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
    v12[2] = __42__RPRemoteDisplayServer__ensureXPCStarted__block_invoke;
    v12[3] = &unk_1E7C92CE8;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __42__RPRemoteDisplayServer__ensureXPCStarted__block_invoke_2;
    v11[3] = &unk_1E7C92CE8;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v11];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFEE98];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v10];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_RPRemoteDisplayServer <= 10 && (gLogCategory_RPRemoteDisplayServer != -1 || _LogCategory_Initialize()))
    {
      [RPRemoteDisplayServer _ensureXPCStarted];
    }
  }
}

uint64_t __42__RPRemoteDisplayServer__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_RPRemoteDisplayServer <= 50 && (gLogCategory_RPRemoteDisplayServer != -1 || _LogCategory_Initialize()))
  {
    [RPRemoteDisplayServer _interrupted];
  }

  if (self->_activateCalled)
  {
    [(RPRemoteDisplayServer *)self _activateWithCompletion:0 reactivate:1];
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
  block[2] = __35__RPRemoteDisplayServer_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__RPRemoteDisplayServer_invalidate__block_invoke(uint64_t result)
{
  v5 = *(result + 32);
  if ((*(v5 + 9) & 1) == 0)
  {
    v9 = v1;
    v6 = result;
    *(v5 + 9) = 1;
    if (gLogCategory_RPRemoteDisplayServer <= 30 && (gLogCategory_RPRemoteDisplayServer != -1 || _LogCategory_Initialize()))
    {
      __35__RPRemoteDisplayServer_invalidate__block_invoke_cold_1();
    }

    v7 = *(v6 + 32);
    if (*(v7 + 11) == 1)
    {
      [v7 stopPairingServer];
      v7 = *(v6 + 32);
    }

    [*(v7 + 16) enumerateKeysAndObjectsUsingBlock:{&__block_literal_global_15, v2, v9, v3}];
    [*(*(v6 + 32) + 24) invalidate];
    v8 = *(v6 + 32);

    return [v8 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && ![(NSMutableDictionary *)self->_sessions count]&& !self->_xpcCnx)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    authCompletionHandler = self->_authCompletionHandler;
    self->_authCompletionHandler = 0;

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v6 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    showPasswordHandler = self->_showPasswordHandler;
    self->_showPasswordHandler = 0;

    hidePasswordHandler = self->_hidePasswordHandler;
    self->_hidePasswordHandler = 0;

    promptForPasswordHandler = self->_promptForPasswordHandler;
    self->_promptForPasswordHandler = 0;

    sessionStartHandler = self->_sessionStartHandler;
    self->_sessionStartHandler = 0;

    sessionEndedHandler = self->_sessionEndedHandler;
    self->_sessionEndedHandler = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_RPRemoteDisplayServer <= 30 && (gLogCategory_RPRemoteDisplayServer != -1 || _LogCategory_Initialize()))
    {
      [RPRemoteDisplayServer _invalidated];
    }
  }
}

- (void)tryPassword:(id)password
{
  passwordCopy = password;
  v4 = passwordCopy;
  if (gLogCategory_RPRemoteDisplayServer <= 90)
  {
    v6 = passwordCopy;
    if (gLogCategory_RPRemoteDisplayServer != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      [RPRemoteDisplayServer tryPassword:];
      v4 = v6;
    }
  }
}

- (void)startPairingServerWithCompletion:(id)completion
{
  completionCopy = completion;
  sessionStartHandler = self->_sessionStartHandler;
  self->_sessionStartHandler = &__block_literal_global_107;

  xpcCnx = self->_xpcCnx;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__RPRemoteDisplayServer_startPairingServerWithCompletion___block_invoke_2;
  v13[3] = &unk_1E7C92DA8;
  v7 = completionCopy;
  v14 = v7;
  v8 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v13];
  guestPairStartReason = self->_guestPairStartReason;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __58__RPRemoteDisplayServer_startPairingServerWithCompletion___block_invoke_3;
  v11[3] = &unk_1E7C94D68;
  v11[4] = self;
  v12 = v7;
  v10 = v7;
  [v8 remoteDisplayStartPairingServerWithReason:guestPairStartReason completion:v11];
}

void __58__RPRemoteDisplayServer_startPairingServerWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (gLogCategory_RPRemoteDisplayServer <= 30 && (gLogCategory_RPRemoteDisplayServer != -1 || _LogCategory_Initialize()))
  {
    __58__RPRemoteDisplayServer_startPairingServerWithCompletion___block_invoke_cold_1();
  }

  v4[2](v4, 0);
}

uint64_t __58__RPRemoteDisplayServer_startPairingServerWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

void __58__RPRemoteDisplayServer_startPairingServerWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);
  v9 = *(v8 + 128);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __58__RPRemoteDisplayServer_startPairingServerWithCompletion___block_invoke_4;
  v12[3] = &unk_1E7C935C8;
  v13 = v6;
  v14 = v8;
  v15 = v5;
  v16 = v7;
  v10 = v5;
  v11 = v6;
  dispatch_async(v9, v12);
}

void *__58__RPRemoteDisplayServer_startPairingServerWithCompletion___block_invoke_4(void *result)
{
  if (!result[4])
  {
    *(result[5] + 11) = 1;
  }

  v1 = result[7];
  if (v1)
  {
    return (*(v1 + 16))(result[7], result[6], result[4]);
  }

  return result;
}

- (void)stopPairingServer
{
  remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  [remoteObjectProxy remoteDisplayStopPairingServer];

  self->_pairingServerRunning = 0;
}

- (void)remoteDisplayStartServerSessionID:(id)d device:(id)device linkType:(id)type completion:(id)completion
{
  dCopy = d;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  typeCopy = type;
  deviceCopy = device;
  dispatch_assert_queue_V2(dispatchQueue);
  v14 = objc_alloc_init(RPRemoteDisplaySession);
  [(RPRemoteDisplaySession *)v14 setDestinationDevice:deviceCopy];

  [(RPRemoteDisplaySession *)v14 setDispatchQueue:self->_dispatchQueue];
  [(RPRemoteDisplaySession *)v14 setServer:self];
  [(RPRemoteDisplaySession *)v14 setSessionID:dCopy];
  [(RPRemoteDisplaySession *)v14 setXpcCnx:self->_xpcCnx];
  intValue = [typeCopy intValue];

  [(RPRemoteDisplaySession *)v14 setLinkType:intValue];
  sessions = self->_sessions;
  if (!sessions)
  {
    v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = self->_sessions;
    self->_sessions = v17;

    sessions = self->_sessions;
  }

  [(NSMutableDictionary *)sessions setObject:v14 forKeyedSubscript:dCopy];
  v19 = _Block_copy(self->_sessionStartHandler);
  v20 = v19;
  if (v19)
  {
    (*(v19 + 2))(v19, v14, completionCopy);
  }

  else
  {
    v21 = RPErrorF();
    completionCopy[2](completionCopy, v21);
  }
}

- (void)remoteDisplaySessionEndedWithID:(id)d
{
  dispatchQueue = self->_dispatchQueue;
  dCopy = d;
  dispatch_assert_queue_V2(dispatchQueue);
  v8 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:dCopy];

  if (v8)
  {
    v6 = _Block_copy(self->_sessionEndedHandler);
    v7 = v6;
    if (v6)
    {
      (*(v6 + 2))(v6, v8, 0);
    }
  }
}

- (void)remoteDisplayReceivedEventID:(id)d event:(id)event options:(id)options sessionID:(id)iD
{
  dCopy = d;
  eventCopy = event;
  optionsCopy = options;
  dispatchQueue = self->_dispatchQueue;
  iDCopy = iD;
  dispatch_assert_queue_V2(dispatchQueue);
  v14 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:iDCopy];

  if (v14)
  {
    [v14 remoteDisplayReceivedEventID:dCopy event:eventCopy options:optionsCopy];
  }
}

- (void)remoteDisplayReceivedRequestID:(id)d request:(id)request options:(id)options responseHandler:(id)handler sessionID:(id)iD
{
  dCopy = d;
  requestCopy = request;
  optionsCopy = options;
  handlerCopy = handler;
  dispatchQueue = self->_dispatchQueue;
  iDCopy = iD;
  dispatch_assert_queue_V2(dispatchQueue);
  v17 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:iDCopy];

  if (v17)
  {
    [v17 remoteDisplayReceivedRequestID:dCopy request:requestCopy options:optionsCopy responseHandler:handlerCopy];
  }
}

@end