@interface RPRemoteDisplaySession
- (RPRemoteDisplaySession)init;
- (RPRemoteDisplaySession)initWithCoder:(id)a3;
- (id)description;
- (void)_activateWithCompletion:(id)a3 reactivate:(BOOL)a4;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)_sendEventID:(id)a3 event:(id)a4 destinationID:(id)a5 options:(id)a6 completion:(id)a7;
- (void)_sendRequestID:(id)a3 request:(id)a4 destinationID:(id)a5 options:(id)a6 responseHandler:(id)a7;
- (void)activateWithCompletion:(id)a3;
- (void)deregisterEventID:(id)a3;
- (void)deregisterRequestID:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)registerEventID:(id)a3 options:(id)a4 handler:(id)a5;
- (void)registerRequestID:(id)a3 options:(id)a4 handler:(id)a5;
- (void)remoteDisplayAuthCompleted:(id)a3;
- (void)remoteDisplayReceivedEventID:(id)a3 event:(id)a4 options:(id)a5;
- (void)remoteDisplayReceivedRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6;
- (void)remoteDisplaySessionError:(id)a3;
- (void)remoteDisplayUpdateDataLinkType:(id)a3;
- (void)sendEventID:(id)a3 event:(id)a4 destinationID:(id)a5 options:(id)a6 completion:(id)a7;
- (void)sendRequestID:(id)a3 request:(id)a4 destinationID:(id)a5 options:(id)a6 responseHandler:(id)a7;
- (void)tryPassword:(id)a3;
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

- (RPRemoteDisplaySession)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = RPRemoteDisplaySession;
  v5 = [(RPRemoteDisplaySession *)&v12 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v7 = v4;
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

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  controlFlags = self->_controlFlags;
  v11 = v4;
  if (controlFlags)
  {
    [v4 encodeInt64:controlFlags forKey:@"cFl"];
    v4 = v11;
  }

  destinationDevice = self->_destinationDevice;
  if (destinationDevice)
  {
    [v11 encodeObject:destinationDevice forKey:@"dd"];
    v4 = v11;
  }

  internalAuthFlags = self->_internalAuthFlags;
  if (internalAuthFlags)
  {
    [v11 encodeInt64:internalAuthFlags forKey:@"iaf"];
    v4 = v11;
  }

  pairingInfo = self->_pairingInfo;
  if (pairingInfo)
  {
    [v11 encodeObject:pairingInfo forKey:@"pairI"];
    v4 = v11;
  }

  passwordType = self->_passwordType;
  if (passwordType)
  {
    [v11 encodeInteger:passwordType forKey:@"pwTy"];
    v4 = v11;
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    [v11 encodeObject:serviceType forKey:@"srvTy"];
    v4 = v11;
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

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__RPRemoteDisplaySession_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)a3 reactivate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = v6;
  if (self->_server)
  {
    if (v6)
    {
      (*(v6 + 2))(v6, 0);
    }

    goto LABEL_21;
  }

  if (v4)
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
  v16 = v4;
  v9 = v7;
  v15 = v9;
  v10 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __61__RPRemoteDisplaySession__activateWithCompletion_reactivate___block_invoke_2;
  v11[3] = &unk_1E7C92F88;
  v13 = v4;
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

- (void)tryPassword:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __38__RPRemoteDisplaySession_tryPassword___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __38__RPRemoteDisplaySession_tryPassword___block_invoke(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 232) remoteObjectProxy];
  [v2 remoteDisplayTryPassword:*(a1 + 40)];
}

- (void)remoteDisplayAuthCompleted:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = _Block_copy(self->_authCompletionHandler);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }

  else if (gLogCategory_RPRemoteDisplaySession <= 90 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
  {
    [RPRemoteDisplaySession remoteDisplayAuthCompleted:];
  }
}

- (void)registerEventID:(id)a3 options:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __58__RPRemoteDisplaySession_registerEventID_options_handler___block_invoke;
  v15[3] = &unk_1E7C935C8;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
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

- (void)deregisterEventID:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__RPRemoteDisplaySession_deregisterEventID___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v8 = v4;
  v9 = self;
  v6 = v4;
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

- (void)sendEventID:(id)a3 event:(id)a4 destinationID:(id)a5 options:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (gLogCategory_RPRemoteDisplaySession <= 30 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
  {
    [RPRemoteDisplaySession sendEventID:v13 event:? destinationID:? options:? completion:?];
  }

  dispatchQueue = self->_dispatchQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __77__RPRemoteDisplaySession_sendEventID_event_destinationID_options_completion___block_invoke;
  v23[3] = &unk_1E7C94D90;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(dispatchQueue, v23);
}

- (void)_sendEventID:(id)a3 event:(id)a4 destinationID:(id)a5 options:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if ([a5 isEqual:@"rapport:rdid:DirectPeer"])
  {
    [(RPRemoteDisplaySession *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __78__RPRemoteDisplaySession__sendEventID_event_destinationID_options_completion___block_invoke;
    v24[3] = &unk_1E7C937A8;
    v24[4] = self;
    v17 = v12;
    v25 = v17;
    v18 = v15;
    v26 = v18;
    v19 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v24];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __78__RPRemoteDisplaySession__sendEventID_event_destinationID_options_completion___block_invoke_2;
    v21[3] = &unk_1E7C93470;
    v22 = v17;
    v23 = v18;
    [v19 remoteDisplaySendEventID:v22 event:v13 options:v14 completion:v21];
  }

  else if (v15)
  {
    v20 = RPErrorF();
    (*(v15 + 2))(v15, v20);
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

- (void)remoteDisplayReceivedEventID:(id)a3 event:(id)a4 options:(id)a5
{
  v19[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(NSMutableDictionary *)self->_eventRegistrations objectForKeyedSubscript:v8];
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
    if (v10)
    {
      v17 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v10];
      [v17 setObject:v8 forKeyedSubscript:@"eventID"];

      v10 = v17;
    }

    else
    {
      v18 = @"eventID";
      v19[0] = v8;
      v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v19 forKeys:&v18 count:1];
    }
  }

  v13 = [v12 handler];
  v14 = v13;
  if (v13)
  {
    (*(v13 + 16))(v13, v9, v10);
  }

LABEL_6:
  v15 = *MEMORY[0x1E69E9840];
}

- (void)remoteDisplaySessionError:(id)a3
{
  v6 = a3;
  v4 = _Block_copy(self->_errorHandler);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

- (void)registerRequestID:(id)a3 options:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __60__RPRemoteDisplaySession_registerRequestID_options_handler___block_invoke;
  v15[3] = &unk_1E7C935C8;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
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

- (void)deregisterRequestID:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__RPRemoteDisplaySession_deregisterRequestID___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v8 = v4;
  v9 = self;
  v6 = v4;
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

- (void)sendRequestID:(id)a3 request:(id)a4 destinationID:(id)a5 options:(id)a6 responseHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (gLogCategory_RPRemoteDisplaySession <= 30 && (gLogCategory_RPRemoteDisplaySession != -1 || _LogCategory_Initialize()))
  {
    [RPRemoteDisplaySession sendRequestID:v13 request:? destinationID:? options:? responseHandler:?];
  }

  dispatchQueue = self->_dispatchQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __86__RPRemoteDisplaySession_sendRequestID_request_destinationID_options_responseHandler___block_invoke;
  v23[3] = &unk_1E7C94D90;
  v23[4] = self;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  dispatch_async(dispatchQueue, v23);
}

- (void)_sendRequestID:(id)a3 request:(id)a4 destinationID:(id)a5 options:(id)a6 responseHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if ([a5 isEqual:@"rapport:rdid:DirectPeer"])
  {
    [(RPRemoteDisplaySession *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __87__RPRemoteDisplaySession__sendRequestID_request_destinationID_options_responseHandler___block_invoke;
    v24[3] = &unk_1E7C937A8;
    v24[4] = self;
    v17 = v12;
    v25 = v17;
    v18 = v15;
    v26 = v18;
    v19 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v24];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __87__RPRemoteDisplaySession__sendRequestID_request_destinationID_options_responseHandler___block_invoke_2;
    v21[3] = &unk_1E7C94DB8;
    v22 = v17;
    v23 = v18;
    [v19 remoteDisplaySendRequestID:v22 request:v13 options:v14 responseHandler:v21];
  }

  else if (v15)
  {
    v20 = RPErrorF();
    (*(v15 + 2))(v15, 0, 0, v20);
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

- (void)remoteDisplayReceivedRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6
{
  v22[1] = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v14 = [(NSMutableDictionary *)self->_requestRegistrations objectForKeyedSubscript:v10];
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
      (*(v13 + 2))(v13, 0, 0, v15);
      goto LABEL_6;
    }

    v15 = v19;
    if (v12)
    {
      v20 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v12];
      [v20 setObject:v10 forKeyedSubscript:@"requestID"];

      v12 = v20;
    }

    else
    {
      v21 = @"requestID";
      v22[0] = v10;
      v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
    }
  }

  v16 = [v15 handler];
  v17 = v16;
  if (v16)
  {
    (*(v16 + 16))(v16, v11, v12, v13);
  }

LABEL_6:
  v18 = *MEMORY[0x1E69E9840];
}

- (void)remoteDisplayUpdateDataLinkType:(id)a3
{
  v4 = [a3 intValue];
  linkType = self->_linkType;
  if (linkType)
  {
    v6 = linkType == v4;
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
    v9 = v4;
    dispatch_async(dispatchQueue, v8);
  }

  else
  {
    [(RPRemoteDisplaySession *)&self->_linkType remoteDisplayUpdateDataLinkType:v4];
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