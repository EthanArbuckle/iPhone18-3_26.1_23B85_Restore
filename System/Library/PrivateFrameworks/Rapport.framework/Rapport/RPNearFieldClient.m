@interface RPNearFieldClient
- (RPNearFieldClient)init;
- (id)_XPCConnectionWithMachServiceName:(id)a3 options:(unint64_t)a4;
- (id)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)didConnect;
- (void)failDiscoveryWithError:(id)a3;
- (void)invalidate;
- (void)receivedAlwaysOnEventWithSuggestedRole:(unsigned int)a3;
- (void)receivedTapEvent:(id)a3;
- (void)stopWithCompletion:(id)a3;
@end

@implementation RPNearFieldClient

- (RPNearFieldClient)init
{
  v5.receiver = self;
  v5.super_class = RPNearFieldClient;
  v2 = [(RPNearFieldClient *)&v5 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
  }

  return v3;
}

- (id)_XPCConnectionWithMachServiceName:(id)a3 options:(unint64_t)a4
{
  v5 = MEMORY[0x1E696B0B8];
  v6 = a3;
  v7 = [[v5 alloc] initWithMachServiceName:v6 options:a4];

  return v7;
}

- (id)_ensureXPCStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_xpcCnx)
  {
    v3 = [(RPNearFieldClient *)self _XPCConnectionWithMachServiceName:@"com.apple.rapport.nearfield" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v3;

    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EEEC40];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v5];

    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFECB8];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __38__RPNearFieldClient__ensureXPCStarted__block_invoke;
    v9[3] = &unk_1E7C92CE8;
    v9[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v9];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __38__RPNearFieldClient__ensureXPCStarted__block_invoke_2;
    v8[3] = &unk_1E7C92CE8;
    v8[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v8];
    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_RPNearFieldClient <= 10 && (gLogCategory_RPNearFieldClient != -1 || _LogCategory_Initialize()))
    {
      [RPNearFieldClient _ensureXPCStarted];
    }
  }

  return 0;
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_RPNearFieldClient <= 50 && (gLogCategory_RPNearFieldClient != -1 || _LogCategory_Initialize()))
  {
    [RPNearFieldClient _interrupted];
  }

  v3 = _Block_copy(self->_interruptionHandler);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__RPNearFieldClient_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __31__RPNearFieldClient_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 16) & 1) == 0)
  {
    *(v1 + 16) = 1;
    if ((*(*(a1 + 32) + 17) & 1) == 0 && gLogCategory_RPNearFieldClient <= 30 && (gLogCategory_RPNearFieldClient != -1 || _LogCategory_Initialize()))
    {
      __31__RPNearFieldClient_invalidate__block_invoke_cold_1();
    }

    v3 = *(*(a1 + 32) + 64);
    if (v3)
    {
      [v3 invalidate];
      v4 = *(a1 + 32);
      v5 = *(v4 + 64);
      *(v4 + 64) = 0;
    }

    else
    {
      v6 = *(a1 + 32);

      [v6 _invalidated];
    }
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_RPNearFieldClient <= 50 && (gLogCategory_RPNearFieldClient != -1 || _LogCategory_Initialize()))
    {
      [RPNearFieldClient _invalidated];
    }

    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v5 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_RPNearFieldClient <= 10 && (gLogCategory_RPNearFieldClient != -1 || _LogCategory_Initialize()))
    {
      [RPNearFieldClient _invalidated];
    }
  }
}

- (void)stopWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(RPNearFieldClient *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __40__RPNearFieldClient_stopWithCompletion___block_invoke;
  v12[3] = &unk_1E7C92DA8;
  v7 = v4;
  v13 = v7;
  v8 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __40__RPNearFieldClient_stopWithCompletion___block_invoke_2;
  v10[3] = &unk_1E7C92DA8;
  v11 = v7;
  v9 = v7;
  [v8 stopDiscoveryWithCompletion:v10];
}

void __40__RPNearFieldClient_stopWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if (gLogCategory_RPNearFieldClient <= 90 && (gLogCategory_RPNearFieldClient != -1 || _LogCategory_Initialize()))
  {
    __40__RPNearFieldClient_stopWithCompletion___block_invoke_cold_1();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

void __40__RPNearFieldClient_stopWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (gLogCategory_RPNearFieldClient <= 90 && (gLogCategory_RPNearFieldClient != -1 || _LogCategory_Initialize()))
    {
      __40__RPNearFieldClient_stopWithCompletion___block_invoke_2_cold_1();
    }
  }

  else if (gLogCategory_RPNearFieldClient <= 40 && (gLogCategory_RPNearFieldClient != -1 || _LogCategory_Initialize()))
  {
    __40__RPNearFieldClient_stopWithCompletion___block_invoke_2_cold_2();
  }

  v3 = _Block_copy(*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, v5);
  }
}

- (void)failDiscoveryWithError:(id)a3
{
  v6 = a3;
  v4 = _Block_copy(self->_failedDiscovery);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

- (void)receivedTapEvent:(id)a3
{
  v6 = a3;
  v4 = _Block_copy(self->_tapEventHandler);
  v5 = v4;
  if (v4)
  {
    (*(v4 + 2))(v4, v6);
  }
}

- (void)receivedAlwaysOnEventWithSuggestedRole:(unsigned int)a3
{
  if (gLogCategory_RPNearFieldClient <= 90 && (gLogCategory_RPNearFieldClient != -1 || _LogCategory_Initialize()))
  {
    [RPNearFieldClient receivedAlwaysOnEventWithSuggestedRole:];
  }
}

- (void)didConnect
{
  v2 = _Block_copy(self->_connectionEstablishedHandler);
  if (v2)
  {
    v3 = v2;
    v2[2]();
    v2 = v3;
  }
}

@end