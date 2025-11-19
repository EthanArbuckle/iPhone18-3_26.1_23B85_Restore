@interface SFB389NFCPromptSession
- (SFB389NFCPromptSession)initWithInitialConfiguration:(id)a3;
- (id)_getRemoteObjectProxy;
- (void)_ensureXPCStarted;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)updateCardConfiguration:(id)a3;
@end

@implementation SFB389NFCPromptSession

- (SFB389NFCPromptSession)initWithInitialConfiguration:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = SFB389NFCPromptSession;
  v5 = [(SFB389NFCPromptSession *)&v11 init];
  if (v5)
  {
    v6 = CUMainQueue();
    dispatchQueue = v5->_dispatchQueue;
    v5->_dispatchQueue = v6;

    v8 = [v4 copy];
    config = v5->_config;
    v5->_config = v8;
  }

  return v5;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SFB389NFCPromptSession_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __34__SFB389NFCPromptSession_activate__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(a1 + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    *(v2 + 8) = 1;
    if (gLogCategory_SFB389NFCPromptSession <= 30 && (gLogCategory_SFB389NFCPromptSession != -1 || _LogCategory_Initialize()))
    {
      __34__SFB389NFCPromptSession_activate__block_invoke_cold_1();
    }

    v3 = [*(a1 + 32) _getRemoteObjectProxy];
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __34__SFB389NFCPromptSession_activate__block_invoke_2;
    v6[3] = &unk_1E788CC68;
    v6[4] = v4;
    [v3 b389NFCPromptDidRequestPresentationWithConfiguration:v5 responseHandler:v6];
  }
}

void __34__SFB389NFCPromptSession_activate__block_invoke_2(uint64_t a1, void *a2, uint64_t a3, double a4)
{
  v10 = a2;
  if (gLogCategory_SFB389NFCPromptSession <= 30 && (gLogCategory_SFB389NFCPromptSession != -1 || _LogCategory_Initialize()))
  {
    __34__SFB389NFCPromptSession_activate__block_invoke_2_cold_1(a3);
  }

  v7 = _Block_copy(*(*(a1 + 32) + 40));
  if (v7)
  {
    v8 = *(a1 + 32);
    v9 = *(v8 + 40);
    *(v8 + 40) = 0;

    v7[2](v7, v10, a3, a4);
  }

  [*(a1 + 32) invalidate];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__SFB389NFCPromptSession_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __36__SFB389NFCPromptSession_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if ((*(v1 + 9) & 1) == 0)
  {
    *(v1 + 9) = 1;
    v3 = *(a1 + 32);
    v4 = *(v3 + 40);
    *(v3 + 40) = 0;

    v5 = [*(a1 + 32) _getRemoteObjectProxy];
    [v5 dismissCurrentB389NFCPrompt];

    if (gLogCategory_SFB389NFCPromptSession <= 30 && (gLogCategory_SFB389NFCPromptSession != -1 || _LogCategory_Initialize()))
    {
      __36__SFB389NFCPromptSession_invalidate__block_invoke_cold_1();
    }
  }
}

- (void)dealloc
{
  if (!self->_invalidateCalled && gLogCategory_SFB389NFCPromptSession <= 115 && (gLogCategory_SFB389NFCPromptSession != -1 || _LogCategory_Initialize()))
  {
    [SFB389NFCPromptSession dealloc];
  }

  v3.receiver = self;
  v3.super_class = SFB389NFCPromptSession;
  [(SFB389NFCPromptSession *)&v3 dealloc];
}

- (id)_getRemoteObjectProxy
{
  xpcCnx = self->_xpcCnx;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __47__SFB389NFCPromptSession__getRemoteObjectProxy__block_invoke;
  v5[3] = &unk_1E788B238;
  v5[4] = self;
  v3 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v5];

  return v3;
}

void __47__SFB389NFCPromptSession__getRemoteObjectProxy__block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  if (gLogCategory_SFB389NFCPromptSession <= 90 && (gLogCategory_SFB389NFCPromptSession != -1 || _LogCategory_Initialize()))
  {
    __47__SFB389NFCPromptSession__getRemoteObjectProxy__block_invoke_cold_1();
  }

  v3 = _Block_copy(*(*(a1 + 32) + 40));
  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = *(v4 + 40);
    *(v4 + 40) = 0;

    v3[2](v3, v6, 0, -1.0);
  }
}

- (void)_ensureXPCStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_xpcCnx)
  {
    v3 = MEMORY[0x1E696B0B8];
    v4 = self;
    v5 = [[v3 alloc] initWithMachServiceName:@"com.apple.SharingServices" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v5;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __43__SFB389NFCPromptSession__ensureXPCStarted__block_invoke;
    v9[3] = &unk_1E788B198;
    v9[4] = v4;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v9];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__SFB389NFCPromptSession__ensureXPCStarted__block_invoke_2;
    v8[3] = &unk_1E788B198;
    v8[4] = v4;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v8];
    v7 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAE9C0];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v7];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }
}

uint64_t __43__SFB389NFCPromptSession__ensureXPCStarted__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFB389NFCPromptSession <= 90 && (gLogCategory_SFB389NFCPromptSession != -1 || _LogCategory_Initialize()))
  {
    __43__SFB389NFCPromptSession__ensureXPCStarted__block_invoke_cold_1();
  }

  v2 = *(a1 + 32);

  return [v2 invalidate];
}

uint64_t __43__SFB389NFCPromptSession__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  if (gLogCategory_SFB389NFCPromptSession <= 90 && (gLogCategory_SFB389NFCPromptSession != -1 || _LogCategory_Initialize()))
  {
    __43__SFB389NFCPromptSession__ensureXPCStarted__block_invoke_2_cold_1();
  }

  v2 = *(a1 + 32);

  return [v2 invalidate];
}

- (void)updateCardConfiguration:(id)a3
{
  v4 = [a3 copy];
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __50__SFB389NFCPromptSession_updateCardConfiguration___block_invoke;
  v7[3] = &unk_1E788A658;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __50__SFB389NFCPromptSession_updateCardConfiguration___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 16), *(a1 + 40));
  v2 = *(a1 + 32);
  if (v2[8] == 1)
  {
    v3 = [v2 _getRemoteObjectProxy];
    [v3 b389NFCPromptUpdateConfiguration:*(*(a1 + 32) + 16)];
  }
}

uint64_t __34__SFB389NFCPromptSession_activate__block_invoke_2_cold_1(uint64_t a1)
{
  if ((a1 - 1) <= 3)
  {
    v1 = off_1E788CC88[a1 - 1];
  }

  return LogPrintF();
}

@end