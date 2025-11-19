@interface PCMediaTransferObserver
- (PCMediaTransferObserver)init;
- (PCMediaTransferObserver)initWithCoder:(id)a3;
- (void)_interrupted;
- (void)_invalidateWithError:(id)a3;
- (void)_xpcEnsureStarted;
- (void)_xpcEnsureStopped;
- (void)activateWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)transferBeganWithContext:(id)a3;
- (void)transferEnded;
@end

@implementation PCMediaTransferObserver

- (PCMediaTransferObserver)init
{
  v7.receiver = self;
  v7.super_class = PCMediaTransferObserver;
  v2 = [(PCMediaTransferObserver *)&v7 init];
  if (v2)
  {
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v2->_ucat = LogCategoryCreateEx();
    v5 = v2;
  }

  return v2;
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  transferBeganHandler = self->_transferBeganHandler;
  self->_transferBeganHandler = 0;

  transferEndedHandler = self->_transferEndedHandler;
  self->_transferEndedHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  v7.receiver = self;
  v7.super_class = PCMediaTransferObserver;
  [(PCMediaTransferObserver *)&v7 dealloc];
}

- (void)_xpcEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_xpcCnx)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2873A8350];
    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2873A84D0];
    v5 = objc_alloc(MEMORY[0x277CCAE80]);
    v6 = [v5 initWithMachServiceName:PCXPCLaunchingServiceName[0] options:0];
    [(NSXPCConnection *)v6 _setQueue:self->_dispatchQueue];
    [(NSXPCConnection *)v6 setExportedInterface:v3];
    [(NSXPCConnection *)v6 setExportedObject:self];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __44__PCMediaTransferObserver__xpcEnsureStarted__block_invoke;
    v10[3] = &unk_279AD19B8;
    v10[4] = self;
    [(NSXPCConnection *)v6 setInterruptionHandler:v10];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __44__PCMediaTransferObserver__xpcEnsureStarted__block_invoke_2;
    v9[3] = &unk_279AD19B8;
    v9[4] = self;
    [(NSXPCConnection *)v6 setInvalidationHandler:v9];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v4];
    [(NSXPCConnection *)v6 resume];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v6;
    v8 = v6;
  }
}

void __44__PCMediaTransferObserver__xpcEnsureStarted__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = NSErrorWithOSStatusF();
  [v1 _invalidateWithError:v2];
}

- (void)_xpcEnsureStopped
{
  xpcCnx = self->_xpcCnx;
  if (xpcCnx)
  {
    [(NSXPCConnection *)xpcCnx invalidate];
    v4 = self->_xpcCnx;
    self->_xpcCnx = 0;
  }
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__PCMediaTransferObserver_activateWithCompletion___block_invoke;
  v7[3] = &unk_279AD19E0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __50__PCMediaTransferObserver_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) != 1)
  {
    *(v2 + 8) = 1;
    [*(a1 + 32) _xpcEnsureStarted];
    v5 = *(a1 + 32);
    v6 = **(v5 + 16);
    if (v6 <= 30)
    {
      if (v6 == -1)
      {
        v7 = _LogCategory_Initialize();
        v5 = *(a1 + 32);
        if (!v7)
        {
          goto LABEL_11;
        }

        v11 = *(v5 + 16);
      }

      LogPrintF();
      v5 = *(a1 + 32);
    }

LABEL_11:
    v8 = *(v5 + 24);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __50__PCMediaTransferObserver_activateWithCompletion___block_invoke_2;
    v15[3] = &unk_279AD1C20;
    v15[4] = v5;
    v16 = *(a1 + 40);
    v9 = [v8 remoteObjectProxyWithErrorHandler:v15];
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __50__PCMediaTransferObserver_activateWithCompletion___block_invoke_3;
    v13[3] = &unk_279AD1AD8;
    v10 = *(a1 + 32);
    v14 = *(a1 + 40);
    [v9 mediaTransferObserver:v10 activateWithCompletion:v13];

    return;
  }

  v3 = MEMORY[0x2666FB170](*(a1 + 40));
  if (v3)
  {
    v12 = v3;
    v4 = NSErrorWithOSStatusF();
    v12[2](v12, v4);

    v3 = v12;
  }
}

void __50__PCMediaTransferObserver_activateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *v4[2];
  v11 = v3;
  if (v5 <= 90)
  {
    if (v5 != -1)
    {
LABEL_3:
      v10 = v3;
      LogPrintF();
      v4 = *(a1 + 32);
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v6)
    {
      v9 = v4[2];
      v3 = v11;
      goto LABEL_3;
    }
  }

LABEL_5:
  [v4 invalidate];
  v7 = MEMORY[0x2666FB170](*(a1 + 40));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, v11);
  }
}

void __50__PCMediaTransferObserver_activateWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x2666FB170](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }
}

- (void)_interrupted
{
  v3 = NSErrorWithOSStatusF();
  [(PCMediaTransferObserver *)self _invalidateWithError:v3];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__PCMediaTransferObserver_invalidate__block_invoke;
  block[3] = &unk_279AD19B8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidateWithError:(id)a3
{
  v4 = a3;
  if (self->_invalidated)
  {
    goto LABEL_9;
  }

  v9 = v4;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->_ucat;
    }

    LogPrintF();
  }

LABEL_6:
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_invalidated = 1;
  [(PCMediaTransferObserver *)self _xpcEnsureStopped];
  v6 = MEMORY[0x2666FB170](self->_invalidationHandler);
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v9);
  }

  v4 = v9;
LABEL_9:
}

- (PCMediaTransferObserver)initWithCoder:(id)a3
{
  v3 = [(PCMediaTransferObserver *)self init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

- (void)transferBeganWithContext:(id)a3
{
  v8 = a3;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v5 = MEMORY[0x2666FB170](self->_transferBeganHandler);
  v6 = v5;
  if (v5)
  {
    (*(v5 + 16))(v5, v8);
  }
}

- (void)transferEnded
{
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      LogPrintF();
      goto LABEL_5;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  v4 = MEMORY[0x2666FB170](self->_transferEndedHandler);
  if (v4)
  {
    v6 = v4;
    v4[2]();
    v4 = v6;
  }
}

@end