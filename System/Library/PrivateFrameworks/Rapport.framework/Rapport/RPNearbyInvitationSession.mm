@interface RPNearbyInvitationSession
- (NSString)description;
- (RPNearbyInvitationSession)init;
- (RPNearbyInvitationSession)initWithCoder:(id)a3;
- (void)_activateWithCompletion:(id)a3 reactivate:(BOOL)a4;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)_sendRequestID:(id)a3 request:(id)a4 destinationID:(id)a5 options:(id)a6 responseHandler:(id)a7;
- (void)activateWithCompletion:(id)a3;
- (void)deregisterEventID:(id)a3;
- (void)deregisterRequestID:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)nearbyInvitationReceivedEventID:(id)a3 event:(id)a4 options:(id)a5 sessionID:(id)a6;
- (void)nearbyInvitationReceivedRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6 sessionID:(id)a7;
- (void)nearbyInvitationSessionError:(id)a3;
- (void)registerEventID:(id)a3 options:(id)a4 handler:(id)a5;
- (void)registerRequestID:(id)a3 options:(id)a4 handler:(id)a5;
- (void)sendEventID:(id)a3 event:(id)a4 destinationID:(id)a5 options:(id)a6 completion:(id)a7;
- (void)sendRequestID:(id)a3 request:(id)a4 destinationID:(id)a5 options:(id)a6 responseHandler:(id)a7;
@end

@implementation RPNearbyInvitationSession

- (RPNearbyInvitationSession)init
{
  v6.receiver = self;
  v6.super_class = RPNearbyInvitationSession;
  v2 = [(RPNearbyInvitationSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

- (RPNearbyInvitationSession)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RPNearbyInvitationSession;
  v5 = [(RPNearbyInvitationSession *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v7 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    objc_opt_class();
    NSDecodeObjectIfPresent();
    v8 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  serviceType = self->_serviceType;
  v7 = v4;
  if (serviceType)
  {
    [v4 encodeObject:serviceType forKey:@"srvTy"];
    v4 = v7;
  }

  destinationDevice = self->_destinationDevice;
  if (destinationDevice)
  {
    [v7 encodeObject:destinationDevice forKey:@"dd"];
    v4 = v7;
  }
}

- (NSString)description
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
  v7[2] = __52__RPNearbyInvitationSession_activateWithCompletion___block_invoke;
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
  if (!self->_server)
  {
    if (v4)
    {
      if (gLogCategory_RPNearbyInvitationSession > 30 || gLogCategory_RPNearbyInvitationSession == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_12;
      }
    }

    else if (gLogCategory_RPNearbyInvitationSession > 30 || gLogCategory_RPNearbyInvitationSession == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_12;
    }

    [RPNearbyInvitationSession _activateWithCompletion:reactivate:];
LABEL_12:
    [(RPNearbyInvitationSession *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __64__RPNearbyInvitationSession__activateWithCompletion_reactivate___block_invoke;
    v14[3] = &unk_1E7C93500;
    v14[4] = self;
    v16 = v4;
    v9 = v7;
    v15 = v9;
    v10 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v14];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __64__RPNearbyInvitationSession__activateWithCompletion_reactivate___block_invoke_2;
    v11[3] = &unk_1E7C92F88;
    v13 = v4;
    v12 = v9;
    [v10 nearbyInvitationActivateSession:self completion:v11];

    goto LABEL_13;
  }

  if (v6)
  {
    (*(v6 + 2))(v6, 0);
  }

LABEL_13:
}

void __64__RPNearbyInvitationSession__activateWithCompletion_reactivate___block_invoke(uint64_t a1, void *a2)
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
    if (gLogCategory_RPNearbyInvitationSession <= 90 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
    {
LABEL_16:
      __64__RPNearbyInvitationSession__activateWithCompletion_reactivate___block_invoke_cold_1();
    }
  }

  else if (gLogCategory_RPNearbyInvitationSession <= 90 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
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

void __64__RPNearbyInvitationSession__activateWithCompletion_reactivate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v10 = v3;
  if (v3)
  {
    if (*(a1 + 40))
    {
      if (gLogCategory_RPNearbyInvitationSession <= 90)
      {
        if (gLogCategory_RPNearbyInvitationSession != -1 || (v5 = _LogCategory_Initialize(), v3 = v10, v5))
        {
          __64__RPNearbyInvitationSession__activateWithCompletion_reactivate___block_invoke_2_cold_2();
LABEL_20:
          v3 = v10;
        }
      }
    }

    else if (gLogCategory_RPNearbyInvitationSession <= 90)
    {
      if (gLogCategory_RPNearbyInvitationSession != -1 || (v7 = _LogCategory_Initialize(), v3 = v10, v7))
      {
        __64__RPNearbyInvitationSession__activateWithCompletion_reactivate___block_invoke_2_cold_1();
        goto LABEL_20;
      }
    }
  }

  else if (*(a1 + 40))
  {
    if (gLogCategory_RPNearbyInvitationSession <= 30)
    {
      if (gLogCategory_RPNearbyInvitationSession != -1 || (v6 = _LogCategory_Initialize(), v3 = 0, v6))
      {
        __64__RPNearbyInvitationSession__activateWithCompletion_reactivate___block_invoke_2_cold_4();
        goto LABEL_20;
      }
    }
  }

  else if (gLogCategory_RPNearbyInvitationSession <= 30)
  {
    if (gLogCategory_RPNearbyInvitationSession != -1 || (v8 = _LogCategory_Initialize(), v3 = 0, v8))
    {
      __64__RPNearbyInvitationSession__activateWithCompletion_reactivate___block_invoke_2_cold_3();
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
    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.rapport.NearbyInvitation" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EF3528];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __46__RPNearbyInvitationSession__ensureXPCStarted__block_invoke;
    v12[3] = &unk_1E7C92CE8;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __46__RPNearbyInvitationSession__ensureXPCStarted__block_invoke_2;
    v11[3] = &unk_1E7C92CE8;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v11];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFEC58];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v10];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_RPNearbyInvitationSession <= 10 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
    {
      [RPNearbyInvitationSession _ensureXPCStarted];
    }
  }
}

uint64_t __46__RPNearbyInvitationSession__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 120);
  *(v2 + 120) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)nearbyInvitationSessionError:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__RPNearbyInvitationSession_nearbyInvitationSessionError___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __58__RPNearbyInvitationSession_nearbyInvitationSessionError___block_invoke(uint64_t a1)
{
  v2 = _Block_copy(*(*(a1 + 32) + 72));
  if (v2)
  {
    v3 = v2;
    (*(v2 + 2))(v2, *(a1 + 40));
    v2 = v3;
  }
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_RPNearbyInvitationSession <= 50 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
  {
    [RPNearbyInvitationSession _interrupted];
  }

  if (self->_activateCalled)
  {
    [(RPNearbyInvitationSession *)self _activateWithCompletion:0 reactivate:1];
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
  block[2] = __39__RPNearbyInvitationSession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __39__RPNearbyInvitationSession_invalidate__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if ((*(v2 + 24) & 1) == 0)
  {
    v3 = result;
    *(v2 + 24) = 1;
    if (gLogCategory_RPNearbyInvitationSession <= 30 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
    {
      __39__RPNearbyInvitationSession_invalidate__block_invoke_cold_1();
    }

    v4 = *(v3 + 32);
    if (*(v4 + 104))
    {
      v5 = *(v4 + 112);
      if (v5)
      {
        v6 = [*(*(v3 + 32) + 120) remoteObjectProxy];
        [v6 nearbyInvitationInvalidateSessionID:v5];
      }

      v7 = *(v3 + 32);
      v8 = *(v7 + 104);
      *(v7 + 104) = 0;

      v9 = *(v3 + 32);
      v10 = *(v9 + 112);
      *(v9 + 112) = 0;

      v11 = *(v3 + 32);
      v12 = *(v11 + 120);
      *(v11 + 120) = 0;
    }

    else
    {
      v13 = [*(v4 + 120) remoteObjectProxy];
      [v13 nearbyInvitationInvalidateClientSession];

      [*(*(v3 + 32) + 120) invalidate];
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
    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v5 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_RPNearbyInvitationSession <= 30 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
    {
      [RPNearbyInvitationSession _invalidated];
    }
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
  v15[2] = __61__RPNearbyInvitationSession_registerEventID_options_handler___block_invoke;
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

void __61__RPNearbyInvitationSession_registerEventID_options_handler___block_invoke(void *a1)
{
  if (gLogCategory_RPNearbyInvitationSession <= 30 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
  {
    __61__RPNearbyInvitationSession_registerEventID_options_handler___block_invoke_cold_1(a1);
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
  v7[2] = __47__RPNearbyInvitationSession_deregisterEventID___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __47__RPNearbyInvitationSession_deregisterEventID___block_invoke(uint64_t a1)
{
  if (gLogCategory_RPNearbyInvitationSession <= 30 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
  {
    __47__RPNearbyInvitationSession_deregisterEventID___block_invoke_cold_1(a1);
  }

  v2 = *(a1 + 32);
  v3 = *(*(a1 + 40) + 16);

  return [v3 setObject:0 forKeyedSubscript:v2];
}

- (void)sendEventID:(id)a3 event:(id)a4 destinationID:(id)a5 options:(id)a6 completion:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  if ([a5 isEqual:@"rapport:rdid:DirectPeer"])
  {
    [(RPNearbyInvitationSession *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __80__RPNearbyInvitationSession_sendEventID_event_destinationID_options_completion___block_invoke;
    v24[3] = &unk_1E7C937A8;
    v24[4] = self;
    v17 = v12;
    v25 = v17;
    v18 = v15;
    v26 = v18;
    v19 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v24];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __80__RPNearbyInvitationSession_sendEventID_event_destinationID_options_completion___block_invoke_2;
    v21[3] = &unk_1E7C93470;
    v22 = v17;
    v23 = v18;
    [v19 nearbyInvitationSendEventID:v22 event:v13 options:v14 completion:v21];
  }

  else if (v15)
  {
    v20 = RPErrorF();
    (*(v15 + 2))(v15, v20);
  }
}

void __80__RPNearbyInvitationSession_sendEventID_event_destinationID_options_completion___block_invoke(void *a1, void *a2)
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
  if (gLogCategory_RPNearbyInvitationSession <= 90)
  {
    if (gLogCategory_RPNearbyInvitationSession != -1 || (v6 = _LogCategory_Initialize(), v4 = v10, v6))
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

void __80__RPNearbyInvitationSession_sendEventID_event_destinationID_options_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (v3)
  {
    if (gLogCategory_RPNearbyInvitationSession <= 90)
    {
      if (gLogCategory_RPNearbyInvitationSession != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
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

- (void)nearbyInvitationReceivedEventID:(id)a3 event:(id)a4 options:(id)a5 sessionID:(id)a6
{
  v20[1] = *MEMORY[0x1E69E9840];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [(NSMutableDictionary *)self->_eventRegistrations objectForKeyedSubscript:v9];
  if (v12)
  {
    v13 = v12;
LABEL_3:
    v14 = [v13 handler];
    v15 = v14;
    if (v14)
    {
      (*(v14 + 16))(v14, v10, v11);
    }

    goto LABEL_6;
  }

  v17 = [(NSMutableDictionary *)self->_eventRegistrations objectForKeyedSubscript:@"*"];
  if (v17)
  {
    v13 = v17;
    if (v11)
    {
      v18 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v11];
      [v18 setObject:v9 forKeyedSubscript:@"eventID"];

      v11 = v18;
    }

    else
    {
      v19 = @"eventID";
      v20[0] = v9;
      v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    }

    goto LABEL_3;
  }

  if (gLogCategory_RPNearbyInvitationSession <= 90 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
  {
    [RPNearbyInvitationSession nearbyInvitationReceivedEventID:event:options:sessionID:];
  }

LABEL_6:

  v16 = *MEMORY[0x1E69E9840];
}

- (void)registerRequestID:(id)a3 options:(id)a4 handler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __63__RPNearbyInvitationSession_registerRequestID_options_handler___block_invoke;
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

void __63__RPNearbyInvitationSession_registerRequestID_options_handler___block_invoke(void *a1)
{
  if (gLogCategory_RPNearbyInvitationSession <= 30 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
  {
    __63__RPNearbyInvitationSession_registerRequestID_options_handler___block_invoke_cold_1(a1);
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
  v7[2] = __49__RPNearbyInvitationSession_deregisterRequestID___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __49__RPNearbyInvitationSession_deregisterRequestID___block_invoke(uint64_t a1)
{
  if (gLogCategory_RPNearbyInvitationSession <= 30 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
  {
    __49__RPNearbyInvitationSession_deregisterRequestID___block_invoke_cold_1(a1);
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
  if (gLogCategory_RPNearbyInvitationSession <= 30 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
  {
    [RPNearbyInvitationSession sendRequestID:v13 request:? destinationID:? options:? responseHandler:?];
  }

  dispatchQueue = self->_dispatchQueue;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __89__RPNearbyInvitationSession_sendRequestID_request_destinationID_options_responseHandler___block_invoke;
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
    [(RPNearbyInvitationSession *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __90__RPNearbyInvitationSession__sendRequestID_request_destinationID_options_responseHandler___block_invoke;
    v24[3] = &unk_1E7C937A8;
    v24[4] = self;
    v17 = v12;
    v25 = v17;
    v18 = v15;
    v26 = v18;
    v19 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v24];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __90__RPNearbyInvitationSession__sendRequestID_request_destinationID_options_responseHandler___block_invoke_2;
    v21[3] = &unk_1E7C94DB8;
    v22 = v17;
    v23 = v18;
    [v19 nearbyInvitationSendRequestID:v22 request:v13 options:v14 responseHandler:v21];
  }

  else if (v15)
  {
    v20 = RPErrorF();
    (*(v15 + 2))(v15, 0, 0, v20);
  }
}

void __90__RPNearbyInvitationSession__sendRequestID_request_destinationID_options_responseHandler___block_invoke(void *a1, void *a2)
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
  if (gLogCategory_RPNearbyInvitationSession <= 90 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
  {
    v6 = a1[5];
    LogPrintF();
  }

  (*(a1[6] + 16))(a1[6], 0);
}

void __90__RPNearbyInvitationSession__sendRequestID_request_destinationID_options_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (v8 && gLogCategory_RPNearbyInvitationSession <= 90 && (gLogCategory_RPNearbyInvitationSession != -1 || _LogCategory_Initialize()))
  {
    v9 = *(a1 + 32);
    LogPrintF();
  }

  (*(*(a1 + 40) + 16))(*(a1 + 40), v10);
}

- (void)nearbyInvitationReceivedRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6 sessionID:(id)a7
{
  v23[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = [(NSMutableDictionary *)self->_requestRegistrations objectForKeyedSubscript:v11];
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v20 = [(NSMutableDictionary *)self->_requestRegistrations objectForKeyedSubscript:@"*"];
    if (!v20)
    {
      v16 = RPErrorF();
      (*(v14 + 2))(v14, 0, 0, v16);
      goto LABEL_6;
    }

    v16 = v20;
    if (v13)
    {
      v21 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v13];
      [v21 setObject:v11 forKeyedSubscript:@"requestID"];

      v13 = v21;
    }

    else
    {
      v22 = @"requestID";
      v23[0] = v11;
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
    }
  }

  v17 = [v16 handler];
  v18 = v17;
  if (v17)
  {
    (*(v17 + 16))(v17, v12, v13, v14);
  }

LABEL_6:
  v19 = *MEMORY[0x1E69E9840];
}

@end