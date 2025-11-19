@interface RPNearbyInvitationServer
- (RPNearbyInvitationServer)init;
- (RPNearbyInvitationServer)initWithCoder:(id)a3;
- (id)description;
- (void)_activateWithCompletion:(id)a3 reactivate:(BOOL)a4;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)activateWithCompletion:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)nearbyInvitationReceivedEventID:(id)a3 event:(id)a4 options:(id)a5 sessionID:(id)a6;
- (void)nearbyInvitationReceivedRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6 sessionID:(id)a7;
- (void)nearbyInvitationSessionEndedWithID:(id)a3;
- (void)nearbyInvitationSessionError:(id)a3 withID:(id)a4;
- (void)nearbyInvitationStartServerSessionID:(id)a3 device:(id)a4 completion:(id)a5;
@end

@implementation RPNearbyInvitationServer

- (RPNearbyInvitationServer)init
{
  v6.receiver = self;
  v6.super_class = RPNearbyInvitationServer;
  v2 = [(RPNearbyInvitationServer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4 = v3;
  }

  return v3;
}

- (RPNearbyInvitationServer)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RPNearbyInvitationServer;
  v5 = [(RPNearbyInvitationServer *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v7 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  serviceType = self->_serviceType;
  if (serviceType)
  {
    [a3 encodeObject:serviceType forKey:@"srvTy"];
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

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__RPNearbyInvitationServer_activateWithCompletion___block_invoke;
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
  if (v4)
  {
    if (gLogCategory_RPNearbyInvitationServer <= 30 && (gLogCategory_RPNearbyInvitationServer != -1 || _LogCategory_Initialize()))
    {
LABEL_10:
      [RPNearbyInvitationServer _activateWithCompletion:reactivate:];
    }
  }

  else if (gLogCategory_RPNearbyInvitationServer <= 30 && (gLogCategory_RPNearbyInvitationServer != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_10;
  }

  [(RPNearbyInvitationServer *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __63__RPNearbyInvitationServer__activateWithCompletion_reactivate___block_invoke;
  v14[3] = &unk_1E7C92F88;
  v16 = v4;
  v8 = v6;
  v15 = v8;
  v9 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v14];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __63__RPNearbyInvitationServer__activateWithCompletion_reactivate___block_invoke_2;
  v11[3] = &unk_1E7C92F88;
  v13 = v4;
  v12 = v8;
  v10 = v8;
  [v9 nearbyInvitationActivateServer:self completion:v11];
}

void __63__RPNearbyInvitationServer__activateWithCompletion_reactivate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = v3;
  if (*(a1 + 40) == 1)
  {
    if (gLogCategory_RPNearbyInvitationServer <= 90)
    {
      if (gLogCategory_RPNearbyInvitationServer != -1 || (v4 = _LogCategory_Initialize(), v3 = v7, v4))
      {
LABEL_14:
        __63__RPNearbyInvitationServer__activateWithCompletion_reactivate___block_invoke_cold_1();
        v3 = v7;
      }
    }
  }

  else if (gLogCategory_RPNearbyInvitationServer <= 90)
  {
    if (gLogCategory_RPNearbyInvitationServer != -1)
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

void __63__RPNearbyInvitationServer__activateWithCompletion_reactivate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v10 = v3;
  if (v3)
  {
    if (*(a1 + 40))
    {
      if (gLogCategory_RPNearbyInvitationServer <= 90)
      {
        if (gLogCategory_RPNearbyInvitationServer != -1 || (v5 = _LogCategory_Initialize(), v3 = v10, v5))
        {
          __63__RPNearbyInvitationServer__activateWithCompletion_reactivate___block_invoke_2_cold_2();
LABEL_20:
          v3 = v10;
        }
      }
    }

    else if (gLogCategory_RPNearbyInvitationServer <= 90)
    {
      if (gLogCategory_RPNearbyInvitationServer != -1 || (v7 = _LogCategory_Initialize(), v3 = v10, v7))
      {
        __63__RPNearbyInvitationServer__activateWithCompletion_reactivate___block_invoke_2_cold_1();
        goto LABEL_20;
      }
    }
  }

  else if (*(a1 + 40))
  {
    if (gLogCategory_RPNearbyInvitationServer <= 30)
    {
      if (gLogCategory_RPNearbyInvitationServer != -1 || (v6 = _LogCategory_Initialize(), v3 = 0, v6))
      {
        __63__RPNearbyInvitationServer__activateWithCompletion_reactivate___block_invoke_2_cold_4();
        goto LABEL_20;
      }
    }
  }

  else if (gLogCategory_RPNearbyInvitationServer <= 30)
  {
    if (gLogCategory_RPNearbyInvitationServer != -1 || (v8 = _LogCategory_Initialize(), v3 = 0, v8))
    {
      __63__RPNearbyInvitationServer__activateWithCompletion_reactivate___block_invoke_2_cold_3();
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
    v12[2] = __45__RPNearbyInvitationServer__ensureXPCStarted__block_invoke;
    v12[3] = &unk_1E7C92CE8;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __45__RPNearbyInvitationServer__ensureXPCStarted__block_invoke_2;
    v11[3] = &unk_1E7C92CE8;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v11];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFEC58];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v10];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_RPNearbyInvitationServer <= 10 && (gLogCategory_RPNearbyInvitationServer != -1 || _LogCategory_Initialize()))
    {
      [RPNearbyInvitationServer _ensureXPCStarted];
    }
  }
}

uint64_t __45__RPNearbyInvitationServer__ensureXPCStarted__block_invoke_2(uint64_t a1)
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
  if (gLogCategory_RPNearbyInvitationServer <= 50 && (gLogCategory_RPNearbyInvitationServer != -1 || _LogCategory_Initialize()))
  {
    [RPNearbyInvitationServer _interrupted];
  }

  if (self->_activateCalled)
  {
    [(RPNearbyInvitationServer *)self _activateWithCompletion:0 reactivate:1];
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
  block[2] = __38__RPNearbyInvitationServer_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __38__RPNearbyInvitationServer_invalidate__block_invoke(uint64_t result)
{
  v5 = *(result + 32);
  if ((*(v5 + 9) & 1) == 0)
  {
    v8 = v1;
    v6 = result;
    *(v5 + 9) = 1;
    if (gLogCategory_RPNearbyInvitationServer <= 30 && (gLogCategory_RPNearbyInvitationServer != -1 || _LogCategory_Initialize()))
    {
      __38__RPNearbyInvitationServer_invalidate__block_invoke_cold_1();
    }

    [*(*(v6 + 32) + 16) enumerateKeysAndObjectsUsingBlock:{&__block_literal_global_0, v2, v8, v3}];
    [*(*(v6 + 32) + 24) invalidate];
    v7 = *(v6 + 32);

    return [v7 _invalidated];
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

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v5 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    sessionStartHandler = self->_sessionStartHandler;
    self->_sessionStartHandler = 0;

    sessionEndedHandler = self->_sessionEndedHandler;
    self->_sessionEndedHandler = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_RPNearbyInvitationServer <= 30 && (gLogCategory_RPNearbyInvitationServer != -1 || _LogCategory_Initialize()))
    {
      [RPNearbyInvitationServer _invalidated];
    }
  }
}

- (void)nearbyInvitationStartServerSessionID:(id)a3 device:(id)a4 completion:(id)a5
{
  v18 = a3;
  v8 = a5;
  dispatchQueue = self->_dispatchQueue;
  v10 = a4;
  dispatch_assert_queue_V2(dispatchQueue);
  v11 = objc_alloc_init(RPNearbyInvitationSession);
  [(RPNearbyInvitationSession *)v11 setDestinationDevice:v10];

  [(RPNearbyInvitationSession *)v11 setDispatchQueue:self->_dispatchQueue];
  [(RPNearbyInvitationSession *)v11 setServer:self];
  [(RPNearbyInvitationSession *)v11 setSessionID:v18];
  [(RPNearbyInvitationSession *)v11 setXpcCnx:self->_xpcCnx];
  sessions = self->_sessions;
  if (!sessions)
  {
    v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v14 = self->_sessions;
    self->_sessions = v13;

    sessions = self->_sessions;
  }

  [(NSMutableDictionary *)sessions setObject:v11 forKeyedSubscript:v18];
  v15 = _Block_copy(self->_sessionStartHandler);
  v16 = v15;
  if (v15)
  {
    (*(v15 + 2))(v15, v11, v8);
  }

  else
  {
    v17 = RPErrorF();
    v8[2](v8, v17);
  }
}

- (void)nearbyInvitationSessionEndedWithID:(id)a3
{
  v7 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v7];
  if (v4)
  {
    v5 = _Block_copy(self->_sessionEndedHandler);
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5, v4, 0);
    }

    [(NSMutableDictionary *)self->_sessions setObject:0 forKeyedSubscript:v7];
  }
}

- (void)nearbyInvitationReceivedEventID:(id)a3 event:(id)a4 options:(id)a5 sessionID:(id)a6
{
  v15 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  if (v12)
  {
    dispatch_assert_queue_V2(self->_dispatchQueue);
    v13 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v12];
    v14 = v13;
    if (v13)
    {
      [v13 nearbyInvitationReceivedEventID:v15 event:v10 options:v11 sessionID:v12];
    }
  }

  else if (gLogCategory_RPNearbyInvitationServer <= 90 && (gLogCategory_RPNearbyInvitationServer != -1 || _LogCategory_Initialize()))
  {
    [RPNearbyInvitationServer nearbyInvitationReceivedEventID:event:options:sessionID:];
  }
}

- (void)nearbyInvitationReceivedRequestID:(id)a3 request:(id)a4 options:(id)a5 responseHandler:(id)a6 sessionID:(id)a7
{
  v18 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = a7;
  if (v15)
  {
    dispatch_assert_queue_V2(self->_dispatchQueue);
    v16 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:v15];
    v17 = v16;
    if (v16)
    {
      [v16 nearbyInvitationReceivedRequestID:v18 request:v12 options:v13 responseHandler:v14 sessionID:v15];
    }
  }

  else if (gLogCategory_RPNearbyInvitationServer <= 90 && (gLogCategory_RPNearbyInvitationServer != -1 || _LogCategory_Initialize()))
  {
    [RPNearbyInvitationServer nearbyInvitationReceivedRequestID:request:options:responseHandler:sessionID:];
  }
}

- (void)nearbyInvitationSessionError:(id)a3 withID:(id)a4
{
  v8 = a3;
  v6 = [(NSMutableDictionary *)self->_sessions objectForKeyedSubscript:a4];
  v7 = v6;
  if (v6)
  {
    [v6 nearbyInvitationSessionError:v8];
  }
}

@end