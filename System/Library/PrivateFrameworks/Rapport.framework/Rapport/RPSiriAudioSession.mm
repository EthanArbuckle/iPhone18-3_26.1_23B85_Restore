@interface RPSiriAudioSession
- (RPSiriAudioSession)init;
- (RPSiriAudioSession)initWithCoder:(id)a3;
- (id)description;
- (void)_activateWithCompletion:(id)a3 reactivate:(BOOL)a4;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)activateWithCompletion:(id)a3;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)invalidate;
- (void)receivedSiriAudioEvent:(id)a3;
- (void)setLabel:(id)a3;
- (void)xpcSiriStopClientRecordingWithDeviceId:(id)a3;
@end

@implementation RPSiriAudioSession

- (RPSiriAudioSession)init
{
  v6.receiver = self;
  v6.super_class = RPSiriAudioSession;
  v2 = [(RPSiriAudioSession *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_ucat = &gLogCategory_RPSiriAudioSession;
    v4 = v3;
  }

  return v3;
}

- (RPSiriAudioSession)initWithCoder:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = RPSiriAudioSession;
  v5 = [(RPSiriAudioSession *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v6->_ucat = &gLogCategory_RPSiriAudioSession;
    v7 = v4;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v6;
  }

  return v6;
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
  v4.super_class = RPSiriAudioSession;
  [(RPSiriAudioSession *)&v4 dealloc];
}

- (void)encodeWithCoder:(id)a3
{
  sessionID = self->_sessionID;
  if (sessionID)
  {
    [a3 encodeObject:sessionID forKey:@"sid"];
  }
}

- (id)description
{
  sessionID = self->_sessionID;
  NSAppendPrintF();

  return 0;
}

- (void)setLabel:(id)a3
{
  objc_storeStrong(&self->_label, a3);
  v5 = a3;
  v4 = v5;
  [v5 UTF8String];
  LogCategoryReplaceF();
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__RPSiriAudioSession_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E7C92E20;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __45__RPSiriAudioSession_activateWithCompletion___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  v2 = *(a1 + 32);
  if (!v2[8])
  {
    v3 = NSRandomData();
    [v3 bytes];
    [v3 length];
    [v3 length];
    v4 = NSPrintF();
    v5 = *(a1 + 32);
    v6 = *(v5 + 64);
    *(v5 + 64) = v4;

    v2 = *(a1 + 32);
  }

  v7 = *(a1 + 40);

  return [v2 _activateWithCompletion:v7 reactivate:0];
}

- (void)_activateWithCompletion:(id)a3 reactivate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  var0 = self->_ucat->var0;
  if (v4)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_11;
        }

        ucat = self->_ucat;
      }

      goto LABEL_7;
    }
  }

  else if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v13 = self->_ucat;
    }

LABEL_7:
    LogPrintF();
  }

LABEL_11:
  [(RPSiriAudioSession *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __57__RPSiriAudioSession__activateWithCompletion_reactivate___block_invoke;
  v17[3] = &unk_1E7C93500;
  v19 = v4;
  v17[4] = self;
  v10 = v6;
  v18 = v10;
  v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __57__RPSiriAudioSession__activateWithCompletion_reactivate___block_invoke_2;
  v14[3] = &unk_1E7C93500;
  v16 = v4;
  v14[4] = self;
  v15 = v10;
  v12 = v10;
  [v11 xpcSiriAudioSessionActivate:self completion:v14];
}

void __57__RPSiriAudioSession__activateWithCompletion_reactivate___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = **(*(a1 + 32) + 16);
  v10 = v3;
  if (*(a1 + 48) == 1)
  {
    if (v4 > 90)
    {
      goto LABEL_11;
    }

    if (v4 != -1)
    {
      goto LABEL_7;
    }

    v5 = _LogCategory_Initialize();
    v3 = v10;
    if (v5)
    {
      v6 = *(*(a1 + 32) + 16);
LABEL_7:
      LogPrintF();
      v3 = v10;
    }
  }

  else
  {
    if (v4 > 90)
    {
      goto LABEL_11;
    }

    if (v4 != -1)
    {
      goto LABEL_7;
    }

    v7 = _LogCategory_Initialize();
    v3 = v10;
    if (v7)
    {
      v9 = *(*(a1 + 32) + 16);
      goto LABEL_7;
    }
  }

LABEL_11:
  v8 = *(a1 + 40);
  if (v8)
  {
    (*(v8 + 16))(v8, v10);
    v3 = v10;
  }
}

void __57__RPSiriAudioSession__activateWithCompletion_reactivate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = **(*(a1 + 32) + 16);
  v12 = v3;
  if (v3)
  {
    if (*(a1 + 48))
    {
      if (v5 > 90)
      {
        goto LABEL_16;
      }

      if (v5 != -1)
      {
        goto LABEL_15;
      }

      if (_LogCategory_Initialize())
      {
        v8 = *(*(a1 + 32) + 16);
LABEL_15:
        LogPrintF();
      }
    }

    else
    {
      if (v5 > 90)
      {
        goto LABEL_16;
      }

      if (v5 != -1)
      {
        goto LABEL_15;
      }

      if (_LogCategory_Initialize())
      {
        v9 = *(*(a1 + 32) + 16);
        goto LABEL_15;
      }
    }
  }

  else if (*(a1 + 48))
  {
    if (v5 > 30)
    {
      goto LABEL_16;
    }

    if (v5 != -1)
    {
      goto LABEL_15;
    }

    if (_LogCategory_Initialize())
    {
      v10 = *(*(a1 + 32) + 16);
      goto LABEL_15;
    }
  }

  else
  {
    if (v5 > 30)
    {
      goto LABEL_16;
    }

    if (v5 != -1)
    {
      goto LABEL_15;
    }

    if (_LogCategory_Initialize())
    {
      v11 = *(*(a1 + 32) + 16);
      goto LABEL_15;
    }
  }

LABEL_16:
  v6 = *(a1 + 40);
  v7 = v12;
  if (v6)
  {
    (*(v6 + 16))(v6, v12);
    v7 = v12;
  }
}

- (void)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v14[5] = v5;
    v14[6] = v4;
    v14[11] = v2;
    v14[12] = v3;
    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.rapport.siri-audio" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EF84E0];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __39__RPSiriAudioSession__ensureXPCStarted__block_invoke;
    v14[3] = &unk_1E7C92CE8;
    v14[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __39__RPSiriAudioSession__ensureXPCStarted__block_invoke_2;
    v13[3] = &unk_1E7C92CE8;
    v13[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v13];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFEEF8];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v10];

    [(NSXPCConnection *)self->_xpcCnx resume];
    var0 = self->_ucat->var0;
    if (var0 <= 10)
    {
      if (var0 != -1)
      {
LABEL_4:
        LogPrintF();
        return;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->_ucat;
        goto LABEL_4;
      }
    }
  }
}

uint64_t __39__RPSiriAudioSession__ensureXPCStarted__block_invoke_2(uint64_t a1)
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
  var0 = self->_ucat->var0;
  if (var0 <= 50)
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
  if (self->_activateCalled)
  {
    [(RPSiriAudioSession *)self _activateWithCompletion:0 reactivate:1];
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v5 = *(interruptionHandler + 2);

    v5();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__RPSiriAudioSession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __32__RPSiriAudioSession_invalidate__block_invoke(uint64_t result)
{
  v5 = *(result + 32);
  if (*(v5 + 9))
  {
    return result;
  }

  v12 = v1;
  v6 = result;
  *(v5 + 9) = 1;
  v7 = *(result + 32);
  v8 = **(v7 + 16);
  if (v8 <= 30)
  {
    if (v8 == -1)
    {
      v9 = _LogCategory_Initialize();
      v7 = *(v6 + 32);
      if (!v9)
      {
        goto LABEL_6;
      }

      v11 = *(v7 + 16);
    }

    LogPrintF();
    v7 = *(v6 + 32);
  }

LABEL_6:
  [*(v7 + 24) invalidate];
  v10 = *(v6 + 32);

  return [v10 _invalidated];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_xpcCnx)
  {
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2](invalidationHandler, a2);
    }

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v5 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    delegate = self->_delegate;
    self->_delegate = 0;

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

- (void)receivedSiriAudioEvent:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __45__RPSiriAudioSession_receivedSiriAudioEvent___block_invoke;
  v7[3] = &unk_1E7C92D80;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __45__RPSiriAudioSession_receivedSiriAudioEvent___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  if (v3)
  {
    v6 = [v3 remoteObjectProxy];
    [v6 xpcSiriAudioReceived:*(a1 + 40)];
  }

  else
  {
    v4 = **(v2 + 16);
    if (v4 > 60)
    {
      return;
    }

    if (v4 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v5 = *(*(a1 + 32) + 16);
    }

    LogPrintF();
  }
}

- (void)xpcSiriStopClientRecordingWithDeviceId:(id)a3
{
  v7 = a3;
  if (!_os_feature_enabled_impl())
  {
    goto LABEL_9;
  }

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
  v5 = self->_delegate;
  if (objc_opt_respondsToSelector())
  {
    [(RPSiriAudioSessionDelegate *)v5 siriAudioSessionDidReceiveStopRecordingWithDeviceId:v7];
  }

LABEL_9:
}

@end