@interface RPNearFieldController
- (NSString)currentApplicationLabel;
- (RPNearFieldController)initWithDispatchQueue:(id)a3 delegate:(id)a4;
- (RPNearFieldControllerDelegate)delegate;
- (id)_exportedInterface;
- (id)_remoteObjectInterface;
- (id)_remoteObjectProxy;
- (id)_synchronousRemoteObjectProxy;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)_startPolling;
- (void)didBeginTransaction:(id)a3;
- (void)didInterruptTransaction:(id)a3 withError:(id)a4;
- (void)didUpdateTransaction:(id)a3;
- (void)invalidate;
- (void)invalidateTransaction:(id)a3;
- (void)invalidateTransaction:(id)a3 context:(id)a4;
- (void)startPolling:(int64_t)a3 context:(id)a4;
- (void)startPolling:(int64_t)a3 forApplicationLabel:(id)a4;
- (void)stop;
@end

@implementation RPNearFieldController

- (RPNearFieldController)initWithDispatchQueue:(id)a3 delegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v11.receiver = self;
  v11.super_class = RPNearFieldController;
  v9 = [(RPNearFieldController *)&v11 init];
  if (v9)
  {
    if (gLogCategory_RPNearFieldController <= 30 && (gLogCategory_RPNearFieldController != -1 || _LogCategory_Initialize()))
    {
      [RPNearFieldController initWithDispatchQueue:delegate:];
    }

    objc_storeStrong(&v9->_dispatchQueue, a3);
    objc_storeWeak(&v9->_delegate, v8);
  }

  return v9;
}

- (NSString)currentApplicationLabel
{
  v2 = [(RPNearFieldController *)self currentContext];
  v3 = [v2 applicationLabel];

  return v3;
}

- (void)_ensureXPCStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_xpcConnection)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.rapport.nearfield.service" options:0];
    xpcConnection = self->_xpcConnection;
    self->_xpcConnection = v3;

    v5 = [(RPNearFieldController *)self _exportedInterface];
    [(NSXPCConnection *)self->_xpcConnection setExportedInterface:v5];

    [(NSXPCConnection *)self->_xpcConnection setExportedObject:self];
    v6 = [(RPNearFieldController *)self _remoteObjectInterface];
    [(NSXPCConnection *)self->_xpcConnection setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_xpcConnection _setQueue:self->_dispatchQueue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__RPNearFieldController__ensureXPCStarted__block_invoke;
    v8[3] = &unk_1E7C92CE8;
    v8[4] = self;
    [(NSXPCConnection *)self->_xpcConnection setInterruptionHandler:v8];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42__RPNearFieldController__ensureXPCStarted__block_invoke_2;
    v7[3] = &unk_1E7C92CE8;
    v7[4] = self;
    [(NSXPCConnection *)self->_xpcConnection setInvalidationHandler:v7];
    [(NSXPCConnection *)self->_xpcConnection resume];
    if (gLogCategory_RPNearFieldController <= 30 && (gLogCategory_RPNearFieldController != -1 || _LogCategory_Initialize()))
    {
      [RPNearFieldController _ensureXPCStarted];
    }
  }
}

- (id)_exportedInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EF5330];
  [v2 setClass:objc_opt_class() forSelector:sel_didBeginTransaction_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_didUpdateTransaction_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_didInterruptTransaction_withError_ argumentIndex:0 ofReply:0];
  [v2 setClass:objc_opt_class() forSelector:sel_didInterruptTransaction_withError_ argumentIndex:1 ofReply:0];

  return v2;
}

- (id)_remoteObjectInterface
{
  v2 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFED78];
  [v2 setClass:objc_opt_class() forSelector:sel_startPolling_context_ argumentIndex:1 ofReply:0];

  return v2;
}

- (void)_interrupted
{
  v10[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_RPNearFieldController <= 30 && (gLogCategory_RPNearFieldController != -1 || _LogCategory_Initialize()))
  {
    [RPNearFieldController _interrupted];
  }

  v3 = [(RPNearFieldController *)self currentTransaction];
  if (v3)
  {
    [(RPNearFieldController *)self setCurrentTransaction:0];
    v4 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E696A578];
    v10[0] = @"XPC connection was interrupted.";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v6 = [v4 errorWithDomain:@"RPNearFieldControllerErrorDomain" code:0 userInfo:v5];

    v7 = [(RPNearFieldController *)self delegate];
    [v7 nearFieldController:self didInterruptTransaction:v3 error:v6];
  }

  if (self->_didStart)
  {
    [(RPNearFieldController *)self _startPolling];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (!self->_invalidateDone && gLogCategory_RPNearFieldController <= 30 && (gLogCategory_RPNearFieldController != -1 || _LogCategory_Initialize()))
    {
      [RPNearFieldController invalidate];
    }

    [(RPNearFieldController *)self stop];
    [(NSXPCConnection *)self->_xpcConnection invalidate];

    [(RPNearFieldController *)self _invalidated];
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_RPNearFieldController <= 30 && (gLogCategory_RPNearFieldController != -1 || _LogCategory_Initialize()))
    {
      [RPNearFieldController _invalidated];
    }

    xpcConnection = self->_xpcConnection;
    self->_xpcConnection = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_RPNearFieldController <= 30 && (gLogCategory_RPNearFieldController != -1 || _LogCategory_Initialize()))
    {
      [RPNearFieldController _invalidated];
    }
  }
}

- (id)_remoteObjectProxy
{
  xpcConnection = self->_xpcConnection;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__RPNearFieldController__remoteObjectProxy__block_invoke;
  v5[3] = &unk_1E7C92D58;
  v5[4] = self;
  v3 = [(NSXPCConnection *)xpcConnection remoteObjectProxyWithErrorHandler:v5];

  return v3;
}

void __43__RPNearFieldController__remoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (gLogCategory_RPNearFieldController <= 90 && (gLogCategory_RPNearFieldController != -1 || _LogCategory_Initialize()))
  {
    __43__RPNearFieldController__remoteObjectProxy__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) delegate];
  [v3 nearFieldController:*(a1 + 32) didInvalidateWithError:v4];
}

- (id)_synchronousRemoteObjectProxy
{
  xpcConnection = self->_xpcConnection;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __54__RPNearFieldController__synchronousRemoteObjectProxy__block_invoke;
  v5[3] = &unk_1E7C92D58;
  v5[4] = self;
  v3 = [(NSXPCConnection *)xpcConnection synchronousRemoteObjectProxyWithErrorHandler:v5];

  return v3;
}

void __54__RPNearFieldController__synchronousRemoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v4 = a2;
  if (gLogCategory_RPNearFieldController <= 90 && (gLogCategory_RPNearFieldController != -1 || _LogCategory_Initialize()))
  {
    __54__RPNearFieldController__synchronousRemoteObjectProxy__block_invoke_cold_1();
  }

  v3 = [*(a1 + 32) delegate];
  [v3 nearFieldController:*(a1 + 32) didInvalidateWithError:v4];
}

- (void)startPolling:(int64_t)a3 forApplicationLabel:(id)a4
{
  dispatchQueue = self->_dispatchQueue;
  v7 = a4;
  dispatch_assert_queue_V2(dispatchQueue);
  v8 = [[RPNearFieldContext alloc] initWitApplicationLabel:v7];

  [(RPNearFieldController *)self startPolling:a3 context:v8];
}

- (void)startPolling:(int64_t)a3 context:(id)a4
{
  v10 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if ([(RPNearFieldController *)self currentPreferredPollingType]!= a3)
  {
    goto LABEL_8;
  }

  v6 = [(RPNearFieldController *)self currentContext];
  v7 = v10;
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_9;
  }

  if ((v7 == 0) == (v6 != 0))
  {

    goto LABEL_8;
  }

  v9 = [v6 isEqual:v7];

  if ((v9 & 1) == 0)
  {
LABEL_8:
    self->_didStart = 1;
    *&self->_invalidateCalled = 0;
    [(RPNearFieldController *)self setCurrentContext:v10];
    [(RPNearFieldController *)self setCurrentPreferredPollingType:a3];
    [(RPNearFieldController *)self _ensureXPCStarted];
    [(RPNearFieldController *)self _startPolling];
  }

LABEL_9:
}

- (void)_startPolling
{
  v2 = [a1 currentApplicationLabel];
  [a1 currentPreferredPollingType];
  LogPrintF();
}

- (void)stop
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(RPNearFieldController *)self _ensureXPCStarted];
  if (self->_didStart)
  {
    self->_didStart = 0;
    v3 = [(RPNearFieldController *)self _remoteObjectProxy];
    [v3 stop];

    [(RPNearFieldController *)self setCurrentTransaction:0];
    [(RPNearFieldController *)self setCurrentContext:0];

    [(RPNearFieldController *)self setCurrentPreferredPollingType:0];
  }
}

- (void)invalidateTransaction:(id)a3
{
  v4 = a3;
  v5 = [(RPNearFieldController *)self currentContext];
  [(RPNearFieldController *)self invalidateTransaction:v4 context:v5];
}

- (void)invalidateTransaction:(id)a3 context:(id)a4
{
  dispatchQueue = self->_dispatchQueue;
  v7 = a4;
  v8 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  v10 = [(RPNearFieldController *)self _remoteObjectProxy];
  v9 = [v8 identifier];

  [v10 invalidateTransactionWithIdentifier:v9 context:v7];
}

- (void)didBeginTransaction:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v5 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
  [(RPNearFieldController *)self setCurrentTransaction:v5];
  v6 = [(RPNearFieldController *)self delegate];
  [v6 nearFieldController:self didBeginTransaction:v5];
}

- (void)didUpdateTransaction:(id)a3
{
  v12 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v5 = [v12 identifier];
  v6 = [(RPNearFieldController *)self currentTransaction];
  v7 = [v6 identifier];
  v8 = [v5 isEqual:v7];

  if (v8)
  {
    v9 = [(RPNearFieldController *)self delegate];
    if ([v12 state] == 1)
    {
      [(RPNearFieldController *)self setCurrentTransaction:0];
      v10 = [v12 error];
      [v9 nearFieldController:self didInterruptTransaction:v12 error:v10];
LABEL_11:

      goto LABEL_12;
    }

    if ([v12 state] == 2)
    {
      v11 = [v12 tapEvent];

      if (!v11)
      {
        [(RPNearFieldController *)a2 didUpdateTransaction:v12];
      }

      v10 = [v12 tapEvent];
      [v9 nearFieldController:self transaction:v12 didReceiveTapEvent:v10];
      goto LABEL_11;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (gLogCategory_RPNearFieldController <= 90 && (gLogCategory_RPNearFieldController != -1 || _LogCategory_Initialize()))
  {
    v9 = [(RPNearFieldController *)self currentTransaction];
    LogPrintF();
    goto LABEL_12;
  }

LABEL_13:
}

- (void)didInterruptTransaction:(id)a3 withError:(id)a4
{
  v12 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = [v12 identifier];
  v8 = [(RPNearFieldController *)self currentTransaction];
  v9 = [v8 identifier];
  v10 = [v7 isEqual:v9];

  if (v10)
  {
    [(RPNearFieldController *)self setCurrentTransaction:0];
    v11 = [(RPNearFieldController *)self delegate];
    [v11 nearFieldController:self didInterruptTransaction:v12 error:v6];
LABEL_6:

    goto LABEL_7;
  }

  if (gLogCategory_RPNearFieldController <= 90 && (gLogCategory_RPNearFieldController != -1 || _LogCategory_Initialize()))
  {
    v11 = [(RPNearFieldController *)self currentTransaction];
    LogPrintF();
    goto LABEL_6;
  }

LABEL_7:
}

- (RPNearFieldControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)didUpdateTransaction:(uint64_t)a3 .cold.1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a1 object:a2 file:@"RPNearFieldController.m" lineNumber:266 description:{@"tapEvent is nil for transaction:%@", a3}];
}

@end