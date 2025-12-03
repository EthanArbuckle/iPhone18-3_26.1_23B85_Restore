@interface SFProxCardSessionServer
- (SFProxCardSessionServer)init;
- (void)_activateWithCompletion:(id)completion;
- (void)_invalidate;
- (void)_invalidated;
- (void)_reportError:(id)error;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)invalidate;
- (void)setLabel:(id)label;
@end

@implementation SFProxCardSessionServer

- (SFProxCardSessionServer)init
{
  v8.receiver = self;
  v8.super_class = SFProxCardSessionServer;
  v2 = [(SFProxCardSessionServer *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v3->_ucat = &gLogCategory_SFProxCardSessionServer;
    v6 = v3;
  }

  return v3;
}

- (void)dealloc
{
  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v4.receiver = self;
  v4.super_class = SFProxCardSessionServer;
  [(SFProxCardSessionServer *)&v4 dealloc];
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v4 = labelCopy;
  [labelCopy UTF8String];
  LogCategoryReplaceF();
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SFProxCardSessionServer_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __50__SFProxCardSessionServer_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2[2];
  if (v3 <= 30)
  {
    if (v3 != -1)
    {
LABEL_3:
      LogPrintF();
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v4)
    {
      v7 = v2[2];
      goto LABEL_3;
    }
  }

LABEL_5:
  v5 = *(a1 + 40);

  return [v2 _activateWithCompletion:v5];
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = self->_xpcEndpoint;
  if (v5)
  {
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3032000000;
    v21[3] = __Block_byref_object_copy__13;
    v21[4] = __Block_byref_object_dispose__13;
    v22 = _Block_copy(completionCopy);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __51__SFProxCardSessionServer__activateWithCompletion___block_invoke;
    aBlock[3] = &unk_1E788C320;
    aBlock[4] = v21;
    v6 = _Block_copy(aBlock);
    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithListenerEndpoint:v5];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEA20];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D8ABC8];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v10];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __51__SFProxCardSessionServer__activateWithCompletion___block_invoke_2;
    v19[3] = &unk_1E788B318;
    v19[4] = self;
    v19[5] = v6;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v19];
    v18[0] = MEMORY[0x1E69E9820];
    v18[1] = 3221225472;
    v18[2] = __51__SFProxCardSessionServer__activateWithCompletion___block_invoke_3;
    v18[3] = &unk_1E788B318;
    v18[4] = self;
    v18[5] = v6;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v18];
    [(NSXPCConnection *)self->_xpcCnx resume];
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_7;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }

LABEL_7:
    v13 = self->_xpcCnx;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __51__SFProxCardSessionServer__activateWithCompletion___block_invoke_4;
    v17[3] = &unk_1E788CB38;
    v17[4] = self;
    v17[5] = v6;
    v14 = [(NSXPCConnection *)v13 remoteObjectProxyWithErrorHandler:v17];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __51__SFProxCardSessionServer__activateWithCompletion___block_invoke_5;
    v16[3] = &unk_1E788CB38;
    v16[4] = self;
    v16[5] = v6;
    [v14 xpcCheckinWithCompletion:v16];

    _Block_object_dispose(v21, 8);
    goto LABEL_8;
  }

  v12 = SFErrorF();
  (*(completionCopy + 2))(completionCopy, v12);
  [(SFProxCardSessionServer *)self _reportError:v12];

LABEL_8:
}

void __51__SFProxCardSessionServer__activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void __51__SFProxCardSessionServer__activateWithCompletion___block_invoke_2(uint64_t a1)
{
  v3 = SFErrorF();
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  if ((v2[9] & 1) == 0 && (v2[8] & 1) == 0)
  {
    [v2 _reportError:v3];
  }
}

void __51__SFProxCardSessionServer__activateWithCompletion___block_invoke_3(uint64_t a1)
{
  v4 = SFErrorF();
  (*(*(a1 + 40) + 16))();
  v2 = *(a1 + 32);
  if ((*(v2 + 9) & 1) == 0 && (*(v2 + 8) & 1) == 0)
  {
    [v2 _reportError:v4];
    v2 = *(a1 + 32);
  }

  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  [*(a1 + 32) _invalidated];
}

void __51__SFProxCardSessionServer__activateWithCompletion___block_invoke_4(uint64_t a1)
{
  v2 = SFNestedErrorF();
  (*(*(a1 + 40) + 16))();
  [*(a1 + 32) _reportError:v2];
}

void __51__SFProxCardSessionServer__activateWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v6 = a2;
  if (v6)
  {
    v3 = SFNestedErrorF();
    (*(*(a1 + 40) + 16))();
    [*(a1 + 32) _reportError:v3];

    goto LABEL_8;
  }

  v4 = **(*(a1 + 32) + 16);
  if (v4 <= 30)
  {
    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v5 = *(*(a1 + 32) + 16);
    }

    LogPrintF();
  }

LABEL_7:
  (*(*(a1 + 40) + 16))();
LABEL_8:
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFProxCardSessionServer_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__SFProxCardSessionServer_invalidate__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if (*(v2 + 9))
  {
    return result;
  }

  v3 = result;
  v4 = **(v2 + 16);
  if (v4 <= 30)
  {
    if (v4 == -1)
    {
      v5 = _LogCategory_Initialize();
      v2 = *(v3 + 32);
      if (!v5)
      {
        goto LABEL_6;
      }

      v7 = *(v2 + 16);
    }

    LogPrintF();
    v2 = *(v3 + 32);
  }

LABEL_6:
  *(v2 + 9) = 1;
  v6 = *(v3 + 32);

  return [v6 _invalidate];
}

- (void)_invalidate
{
  delegate = self->_delegate;
  self->_delegate = 0;

  [(NSXPCConnection *)self->_xpcCnx invalidate];

  [(SFProxCardSessionServer *)self _invalidated];
}

- (void)_invalidated
{
  if (!self->_invalidateDone && self->_invalidateCalled && !self->_xpcCnx)
  {
    v3 = _Block_copy(self->_invalidationHandler);
    v4 = v3;
    if (v3)
    {
      (*(v3 + 2))(v3);
    }

    errorHandler = self->_errorHandler;
    self->_errorHandler = 0;

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    self->_invalidateDone = 1;
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
    }
  }
}

- (void)_reportError:(id)error
{
  errorCopy = error;
  var0 = self->_ucat->var0;
  if (var0 <= 90)
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
  v5 = _Block_copy(self->_errorHandler);
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, errorCopy);
  }
}

void __52__SFProxCardSessionServer_performAction_completion___block_invoke(uint64_t a1)
{
  v2 = *(*(*(a1 + 32) + 8) + 40);
  if (v2)
  {
    (*(v2 + 16))();
    v3 = *(*(a1 + 32) + 8);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;
  }
}

void __52__SFProxCardSessionServer_performAction_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = **(*(a1 + 32) + 16);
  v9 = v3;
  if (v4 <= 90)
  {
    if (v4 == -1)
    {
      v7 = _LogCategory_Initialize();
      v3 = v9;
      if (!v7)
      {
        goto LABEL_8;
      }

      v8 = *(*(a1 + 32) + 16);
    }

    v5 = *(a1 + 48);
    if (v5 <= 3)
    {
      v6 = off_1E788FA50[v5];
    }

    LogPrintF();
    v3 = v9;
  }

LABEL_8:
  (*(*(a1 + 40) + 16))(*(a1 + 40), v3);
}

void __52__SFProxCardSessionServer_performAction_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = **(v4 + 16);
  v10 = v3;
  if (v5 <= 30)
  {
    if (v5 == -1)
    {
      v8 = _LogCategory_Initialize();
      v4 = *(a1 + 32);
      if (!v8)
      {
        v3 = v10;
        goto LABEL_8;
      }

      v9 = *(v4 + 16);
    }

    v6 = *(a1 + 48);
    if (v6 <= 3)
    {
      v7 = off_1E788FA50[v6];
    }

    LogPrintF();
    v3 = v10;
    v4 = *(a1 + 32);
  }

LABEL_8:
  *(v4 + 8) = 1;
  (*(*(a1 + 40) + 16))(*(a1 + 40), v3);
}

@end