@interface SFShareAudioSessionClient
- (SFShareAudioSessionClient)init;
- (SFShareAudioSessionClient)initWithCoder:(id)coder;
- (void)_activate:(BOOL)_activate;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)activate;
- (void)invalidate;
- (void)userConfirmed;
@end

@implementation SFShareAudioSessionClient

- (SFShareAudioSessionClient)init
{
  v8.receiver = self;
  v8.super_class = SFShareAudioSessionClient;
  v2 = [(SFShareAudioSessionClient *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v6 = v3;
  }

  return v3;
}

- (SFShareAudioSessionClient)initWithCoder:(id)coder
{
  v9.receiver = self;
  v9.super_class = SFShareAudioSessionClient;
  v3 = [(SFShareAudioSessionClient *)&v9 init];
  v4 = v3;
  if (v3)
  {
    v5 = SFMainQueue(v3);
    dispatchQueue = v4->_dispatchQueue;
    v4->_dispatchQueue = v5;

    v7 = v4;
  }

  return v4;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFShareAudioSessionClient_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__SFShareAudioSessionClient_activate__block_invoke(uint64_t result)
{
  v1 = *(result + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    *(v1 + 8) = 1;
    return [*(result + 32) _activate:0];
  }

  return result;
}

- (void)_activate:(BOOL)_activate
{
  if (_activate)
  {
    if (gLogCategory_SFShareAudioSessionClient <= 30 && (gLogCategory_SFShareAudioSessionClient != -1 || _LogCategory_Initialize()))
    {
LABEL_10:
      [SFShareAudioSessionClient _activate:];
    }
  }

  else if (gLogCategory_SFShareAudioSessionClient <= 30 && (gLogCategory_SFShareAudioSessionClient != -1 || _LogCategory_Initialize()))
  {
    goto LABEL_10;
  }

  [(SFShareAudioSessionClient *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __39__SFShareAudioSessionClient__activate___block_invoke;
  v9[3] = &__block_descriptor_33_e17_v16__0__NSError_8l;
  _activateCopy = _activate;
  v6 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v9];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__SFShareAudioSessionClient__activate___block_invoke_2;
  v7[3] = &__block_descriptor_33_e17_v16__0__NSError_8l;
  _activateCopy2 = _activate;
  [v6 shareAudioSessionActivate:self completion:v7];
}

void __39__SFShareAudioSessionClient__activate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 32) == 1)
  {
    if (gLogCategory_SFShareAudioSessionClient <= 90)
    {
      if (gLogCategory_SFShareAudioSessionClient != -1 || (v6 = v3, v4 = _LogCategory_Initialize(), v3 = v6, v4))
      {
LABEL_12:
        v8 = v3;
        __39__SFShareAudioSessionClient__activate___block_invoke_cold_1();
        v3 = v8;
      }
    }
  }

  else if (gLogCategory_SFShareAudioSessionClient <= 90)
  {
    if (gLogCategory_SFShareAudioSessionClient != -1)
    {
      goto LABEL_12;
    }

    v7 = v3;
    v5 = _LogCategory_Initialize();
    v3 = v7;
    if (v5)
    {
      goto LABEL_12;
    }
  }
}

void __39__SFShareAudioSessionClient__activate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v3)
  {
    if (*(a1 + 32))
    {
      if (gLogCategory_SFShareAudioSessionClient <= 90)
      {
        v10 = v3;
        if (gLogCategory_SFShareAudioSessionClient != -1 || (v6 = _LogCategory_Initialize(), v4 = v10, v6))
        {
          __39__SFShareAudioSessionClient__activate___block_invoke_2_cold_2();
LABEL_20:
          v4 = v10;
        }
      }
    }

    else if (gLogCategory_SFShareAudioSessionClient <= 90)
    {
      v10 = v3;
      if (gLogCategory_SFShareAudioSessionClient != -1 || (v8 = _LogCategory_Initialize(), v4 = v10, v8))
      {
        __39__SFShareAudioSessionClient__activate___block_invoke_2_cold_1();
        goto LABEL_20;
      }
    }
  }

  else if (*(a1 + 32))
  {
    if (gLogCategory_SFShareAudioSessionClient <= 30)
    {
      v10 = 0;
      if (gLogCategory_SFShareAudioSessionClient != -1 || (v7 = _LogCategory_Initialize(), v4 = 0, v7))
      {
        __39__SFShareAudioSessionClient__activate___block_invoke_2_cold_4();
        goto LABEL_20;
      }
    }
  }

  else if (gLogCategory_SFShareAudioSessionClient <= 30)
  {
    v10 = 0;
    if (gLogCategory_SFShareAudioSessionClient != -1 || (v9 = _LogCategory_Initialize(), v4 = 0, v9))
    {
      __39__SFShareAudioSessionClient__activate___block_invoke_2_cold_3();
      goto LABEL_20;
    }
  }
}

- (void)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v22[6] = v5;
    v22[7] = v4;
    v22[18] = v2;
    v22[19] = v3;
    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.SharingServices" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v20 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D855A0];
    v9 = objc_alloc(MEMORY[0x1E695DFD8]);
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [v9 initWithObjects:{v10, v11, v12, v13, v14, v15, v16, v17, objc_opt_class(), 0}];
    [v20 setClasses:v18 forSelector:sel_shareAudioProgressEvent_info_ argumentIndex:1 ofReply:0];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v20];
    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = __46__SFShareAudioSessionClient__ensureXPCStarted__block_invoke;
    v22[3] = &unk_1E788B198;
    v22[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v22];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __46__SFShareAudioSessionClient__ensureXPCStarted__block_invoke_2;
    v21[3] = &unk_1E788B198;
    v21[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v21];
    v19 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEF60];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v19];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_SFShareAudioSessionClient <= 30 && (gLogCategory_SFShareAudioSessionClient != -1 || _LogCategory_Initialize()))
    {
      [SFShareAudioSessionClient _ensureXPCStarted];
    }
  }
}

uint64_t __46__SFShareAudioSessionClient__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
{
  if (gLogCategory_SFShareAudioSessionClient <= 50 && (gLogCategory_SFShareAudioSessionClient != -1 || _LogCategory_Initialize()))
  {
    [SFShareAudioSessionClient _interrupted];
  }

  v3 = _Block_copy(self->_progressHandler);
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3, 30, 0);
  }

  if (self->_activateCalled)
  {

    [(SFShareAudioSessionClient *)self _activate:1];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFShareAudioSessionClient_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __39__SFShareAudioSessionClient_invalidate__block_invoke(uint64_t result)
{
  v5 = *(result + 32);
  if ((*(v5 + 9) & 1) == 0)
  {
    v8 = v1;
    v6 = result;
    *(v5 + 9) = 1;
    if (gLogCategory_SFShareAudioSessionClient <= 30 && (gLogCategory_SFShareAudioSessionClient != -1 || _LogCategory_Initialize()))
    {
      __39__SFShareAudioSessionClient_invalidate__block_invoke_cold_1();
    }

    [*(*(v6 + 32) + 16) invalidate];
    v7 = *(v6 + 32);

    return [v7 _invalidated];
  }

  return result;
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_SFShareAudioSessionClient <= 50 && (gLogCategory_SFShareAudioSessionClient != -1 || _LogCategory_Initialize()))
    {
      [SFShareAudioSessionClient _invalidated];
    }

    if (!self->_xpcCnx)
    {
      v3 = _Block_copy(self->_progressHandler);
      v4 = v3;
      if (v3)
      {
        (*(v3 + 2))(v3, 20, 0);
      }

      progressHandler = self->_progressHandler;
      self->_progressHandler = 0;

      self->_invalidateDone = 1;
      if (gLogCategory_SFShareAudioSessionClient <= 10 && (gLogCategory_SFShareAudioSessionClient != -1 || _LogCategory_Initialize()))
      {
        [SFShareAudioSessionClient _invalidated];
      }
    }
  }
}

- (void)userConfirmed
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __42__SFShareAudioSessionClient_userConfirmed__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __42__SFShareAudioSessionClient_userConfirmed__block_invoke(uint64_t a1)
{
  if (*(*(a1 + 32) + 16))
  {
    if (gLogCategory_SFShareAudioSessionClient <= 30 && (gLogCategory_SFShareAudioSessionClient != -1 || _LogCategory_Initialize()))
    {
      __42__SFShareAudioSessionClient_userConfirmed__block_invoke_cold_1();
    }

    v2 = [*(*(a1 + 32) + 16) remoteObjectProxy];
    [v2 shareAudioUserConfirmed];
  }

  else
  {
    __42__SFShareAudioSessionClient_userConfirmed__block_invoke_cold_2(gLogCategory_SFShareAudioSessionClient);
  }
}

uint64_t __42__SFShareAudioSessionClient_userConfirmed__block_invoke_cold_2(uint64_t result)
{
  if (result <= 90)
  {
    if (result != -1 || (result = _LogCategory_Initialize(), result))
    {

      return LogPrintF();
    }
  }

  return result;
}

@end