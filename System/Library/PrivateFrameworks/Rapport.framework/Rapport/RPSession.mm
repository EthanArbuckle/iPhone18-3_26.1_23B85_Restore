@interface RPSession
- (RPSession)init;
- (RPSession)initWithCoder:(id)coder;
- (id)descriptionWithLevel:(int)level;
- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion;
- (void)sendEventID:(id)d event:(id)event options:(id)options completion:(id)completion;
- (void)setLabel:(id)label;
@end

@implementation RPSession

- (RPSession)init
{
  v8.receiver = self;
  v8.super_class = RPSession;
  v2 = [(RPSession *)&v8 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    localIdentifier = v3->_localIdentifier;
    v3->_localIdentifier = uUID;

    v3->_ucat = &gLogCategory_RPSession;
    v6 = v3;
  }

  return v3;
}

- (RPSession)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = RPSession;
  v5 = [(RPSession *)&v13 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v6->_ucat = &gLogCategory_RPSession;
    v7 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    label = v6->_label;
    if (label)
    {
      v9 = label;
      [(NSString *)v9 UTF8String];
      LogCategoryReplaceF();
    }

    v10 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v11 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  label = self->_label;
  v7 = coderCopy;
  if (label)
  {
    [coderCopy encodeObject:label forKey:@"label"];
    coderCopy = v7;
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    [v7 encodeObject:serviceType forKey:@"st"];
    coderCopy = v7;
  }
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
  v4.super_class = RPSession;
  [(RPSession *)&v4 dealloc];
}

- (id)descriptionWithLevel:(int)level
{
  serviceType = self->_serviceType;
  sessionID = self->_sessionID;
  NSAppendPrintF();
  v4 = 0;
  v5 = v4;
  peerID = self->_peerID;
  if (peerID)
  {
    v12 = v4;
    v10 = peerID;
    NSAppendPrintF();
    v7 = v12;

    v5 = v7;
  }

  return v5;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activateCalled = selfCopy->_activateCalled;
  selfCopy->_activateCalled = 1;
  dispatchQueue = selfCopy->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __36__RPSession_activateWithCompletion___block_invoke;
  block[3] = &unk_1E7C92F60;
  block[4] = selfCopy;
  v10 = completionCopy;
  v11 = activateCalled;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);

  objc_sync_exit(selfCopy);
}

void __36__RPSession_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 9) == 1)
  {
    v3 = RPErrorF();
    v4 = **(*(a1 + 32) + 16);
    v13 = v3;
    if (v4 <= 115)
    {
      if (v4 == -1)
      {
        v7 = _LogCategory_Initialize();
        v3 = v13;
        if (!v7)
        {
          goto LABEL_13;
        }

        v11 = *(*(a1 + 32) + 16);
      }

      LogPrintF();
      v3 = v13;
    }

LABEL_13:
    v8 = *(a1 + 40);
    if (v8)
    {
      (*(v8 + 16))(v8, v13);
      v3 = v13;
    }

    return;
  }

  if (*(a1 + 48) == 1)
  {
    v5 = **(v2 + 16);
    if (v5 > 30)
    {
      goto LABEL_19;
    }

    if (v5 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_19:
        v9 = *(a1 + 40);
        if (v9)
        {
          v10 = *(v9 + 16);

          v10();
        }

        return;
      }

      v12 = *(*(a1 + 32) + 16);
    }

    LogPrintF();
    goto LABEL_19;
  }

  v6 = *(a1 + 40);

  [v2 _activateWithCompletion:v6 reactivate:0];
}

- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate
{
  reactivateCopy = reactivate;
  completionCopy = completion;
  var0 = self->_ucat->var0;
  if (reactivateCopy)
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
  [(RPSession *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __48__RPSession__activateWithCompletion_reactivate___block_invoke;
  v17[3] = &unk_1E7C93500;
  v19 = reactivateCopy;
  v17[4] = self;
  v10 = completionCopy;
  v18 = v10;
  v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v17];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __48__RPSession__activateWithCompletion_reactivate___block_invoke_2;
  v14[3] = &unk_1E7C93500;
  v16 = reactivateCopy;
  v14[4] = self;
  v15 = v10;
  v12 = v10;
  [v11 xpcSessionActivate:self completion:v14];
}

void __48__RPSession__activateWithCompletion_reactivate___block_invoke(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = **(*(a1 + 32) + 16);
  if (*(a1 + 48) == 1)
  {
    if (v3 > 90)
    {
      goto LABEL_11;
    }

    if (v3 != -1)
    {
      goto LABEL_7;
    }

    if (_LogCategory_Initialize())
    {
      v4 = *(*(a1 + 32) + 16);
LABEL_7:
      LogPrintF();
    }
  }

  else
  {
    if (v3 > 90)
    {
      goto LABEL_11;
    }

    if (v3 != -1)
    {
      goto LABEL_7;
    }

    if (_LogCategory_Initialize())
    {
      v6 = *(*(a1 + 32) + 16);
      goto LABEL_7;
    }
  }

LABEL_11:
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

void __48__RPSession__activateWithCompletion_reactivate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 48);
  v5 = **(*(a1 + 32) + 16);
  v11 = v3;
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
        v7 = *(*(a1 + 32) + 16);
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
        v8 = *(*(a1 + 32) + 16);
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
      v9 = *(*(a1 + 32) + 16);
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
      v10 = *(*(a1 + 32) + 16);
      goto LABEL_15;
    }
  }

LABEL_16:
  v6 = *(a1 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, 0);
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
    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.CompanionLink" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EEF148];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __30__RPSession__ensureXPCStarted__block_invoke;
    v14[3] = &unk_1E7C92CE8;
    v14[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __30__RPSession__ensureXPCStarted__block_invoke_2;
    v13[3] = &unk_1E7C92CE8;
    v13[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v13];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFED18];
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

uint64_t __30__RPSession__ensureXPCStarted__block_invoke_2(uint64_t a1)
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
    [(RPSession *)self _activateWithCompletion:0 reactivate:1];
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
  block[2] = __23__RPSession_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __23__RPSession_invalidate__block_invoke(uint64_t result)
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

    self->_invalidateDone = 1;
    cnx = self->_cnx;
    self->_cnx = 0;

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

- (void)sendEventID:(id)d event:(id)event options:(id)options completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

- (void)sendEventID:(id)d event:(id)event destinationID:(id)iD options:(id)options completion:(id)completion
{
  if (completion)
  {
    (*(completion + 2))(completion, 0);
  }
}

@end