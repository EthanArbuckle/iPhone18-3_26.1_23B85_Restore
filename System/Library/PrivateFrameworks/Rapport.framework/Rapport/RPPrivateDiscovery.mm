@interface RPPrivateDiscovery
- (RPPrivateDiscovery)init;
- (RPPrivateDiscovery)initWithCoder:(id)coder;
- (id)description;
- (void)_activateDirect;
- (void)_activateXPC:(BOOL)c;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)_update;
- (void)_updateIfNeededWithBlock:(id)block;
- (void)activate;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)setLabel:(id)label;
@end

@implementation RPPrivateDiscovery

- (RPPrivateDiscovery)init
{
  if (gRPPrivateDiscoveryClientIDOnce != -1)
  {
    [RPPrivateDiscovery init];
  }

  v7.receiver = self;
  v7.super_class = RPPrivateDiscovery;
  v3 = [(RPPrivateDiscovery *)&v7 init];
  v4 = v3;
  if (v3)
  {
    v3->_clientID = atomic_fetch_add(&gRPPrivateDiscoveryClientIDNext, 1u) + 1;
    objc_storeStrong(&v3->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v4->_ucat = &gLogCategory_RPPrivateDiscovery;
    v5 = v4;
  }

  return v4;
}

uint64_t __26__RPPrivateDiscovery_init__block_invoke()
{
  result = RandomBytes();
  gRPPrivateDiscoveryClientIDNext = word_1EB97BFAA << 16;
  return result;
}

- (RPPrivateDiscovery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v10.receiver = self;
  v10.super_class = RPPrivateDiscovery;
  v5 = [(RPPrivateDiscovery *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v6->_ucat = &gLogCategory_RPPrivateDiscovery;
    v11 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_clientID = v11;
    }

    v7 = coderCopy;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v8 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientID = self->_clientID;
  v7 = coderCopy;
  if (clientID)
  {
    [coderCopy encodeInt64:clientID forKey:@"cid"];
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
  v4.super_class = RPPrivateDiscovery;
  [(RPPrivateDiscovery *)&v4 dealloc];
}

- (id)description
{
  clientID = self->_clientID;
  serviceType = self->_serviceType;
  NSAppendPrintF();

  return 0;
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v4 = labelCopy;
  [labelCopy UTF8String];
  LogCategoryReplaceF();
}

- (void)activate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (!selfCopy->_activateCalled)
  {
    selfCopy->_activateCalled = 1;
    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __30__RPPrivateDiscovery_activate__block_invoke;
    block[3] = &unk_1E7C92CE8;
    block[4] = selfCopy;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(selfCopy);
}

int *__30__RPPrivateDiscovery_activate__block_invoke(uint64_t a1)
{
  v3 = a1 + 32;
  v2 = *(a1 + 32);
  if (*(v2 + 11) == 1)
  {
    return __30__RPPrivateDiscovery_activate__block_invoke_cold_1(v2, v3);
  }

  *(v2 + 10) = gRPPrivateDaemon != 0;
  v4 = *v3;
  if (*(*v3 + 10) == 1)
  {

    return [v4 _activateDirect];
  }

  else
  {

    return [v4 _activateXPC:0];
  }
}

- (void)_activateDirect
{
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->_ucat;
    }

    clientID = self->_clientID;
    serviceType = self->_serviceType;
    LogPrintF();
  }

LABEL_5:
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __37__RPPrivateDiscovery__activateDirect__block_invoke;
  v7[3] = &unk_1E7C92D58;
  v7[4] = self;
  [gRPPrivateDaemon addDiscovery:self completion:{v7, clientID, serviceType}];
}

void __37__RPPrivateDiscovery__activateDirect__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = **(v4 + 16);
  if (v3)
  {
    v14 = v3;
    if (v5 <= 90)
    {
      if (v5 == -1)
      {
        v6 = _LogCategory_Initialize();
        v4 = *(a1 + 32);
        if (!v6)
        {
          goto LABEL_9;
        }

        v11 = *(v4 + 16);
      }

      v12 = *(v4 + 32);
      LogPrintF();
      v4 = *(a1 + 32);
    }

LABEL_9:
    v7 = _Block_copy(*(v4 + 72));
    v8 = v7;
    if (v7)
    {
      (*(v7 + 2))(v7, v14);
    }

    goto LABEL_12;
  }

  if (v5 > 30)
  {
    goto LABEL_13;
  }

  v14 = 0;
  if (v5 != -1)
  {
LABEL_7:
    v13 = *(v4 + 32);
    LogPrintF();
LABEL_12:
    v3 = v14;
    goto LABEL_13;
  }

  v9 = _LogCategory_Initialize();
  v3 = 0;
  if (v9)
  {
    v4 = *(a1 + 32);
    v10 = *(v4 + 16);
    goto LABEL_7;
  }

LABEL_13:
}

- (void)_activateXPC:(BOOL)c
{
  var0 = self->_ucat->var0;
  if (c)
  {
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_12;
        }

        ucat = self->_ucat;
      }

      clientID = self->_clientID;
      serviceType = self->_serviceType;
      goto LABEL_8;
    }
  }

  else if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v9 = self->_ucat;
    }

    clientID = self->_clientID;
    serviceType = self->_serviceType;
LABEL_8:
    LogPrintF();
  }

LABEL_12:
  [(RPPrivateDiscovery *)self _ensureXPCStarted:clientID];
  xpcCnx = self->_xpcCnx;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __35__RPPrivateDiscovery__activateXPC___block_invoke;
  v14[3] = &unk_1E7C94CD8;
  cCopy = c;
  v14[4] = self;
  v8 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v14];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __35__RPPrivateDiscovery__activateXPC___block_invoke_2;
  v12[3] = &unk_1E7C94CD8;
  cCopy2 = c;
  v12[4] = self;
  [v8 xpcPrivateDiscoveryActivate:self completion:v12];
}

void __35__RPPrivateDiscovery__activateXPC___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = **(*(a1 + 32) + 16);
  if (*(a1 + 40) == 1)
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
      v7 = *(*(a1 + 32) + 16);
      goto LABEL_7;
    }
  }

LABEL_11:
  v5 = _Block_copy(*(*(a1 + 32) + 72));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v8);
  }
}

void __35__RPPrivateDiscovery__activateXPC___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = **(*(a1 + 32) + 16);
  v12 = v3;
  if (!v3)
  {
    if (*(a1 + 40))
    {
      if (v5 > 30)
      {
        goto LABEL_22;
      }

      if (v5 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_22;
        }

        v9 = *(*(a1 + 32) + 16);
      }
    }

    else
    {
      if (v5 > 30)
      {
        goto LABEL_22;
      }

      if (v5 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_22;
        }

        v10 = *(*(a1 + 32) + 16);
      }
    }

    LogPrintF();
    goto LABEL_22;
  }

  if (*(a1 + 40))
  {
    if (v5 <= 90)
    {
      if (v5 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_19;
        }

        v6 = *(*(a1 + 32) + 16);
      }

      goto LABEL_12;
    }
  }

  else if (v5 <= 90)
  {
    if (v5 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_19;
      }

      v11 = *(*(a1 + 32) + 16);
    }

LABEL_12:
    LogPrintF();
  }

LABEL_19:
  v7 = _Block_copy(*(*(a1 + 32) + 72));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v12);
  }

LABEL_22:
}

- (void)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v12[5] = v5;
    v12[6] = v4;
    v12[11] = v2;
    v12[12] = v3;
    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.rapport.private-discovery" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EF75A8];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __39__RPPrivateDiscovery__ensureXPCStarted__block_invoke;
    v12[3] = &unk_1E7C92CE8;
    v12[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v12];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __39__RPPrivateDiscovery__ensureXPCStarted__block_invoke_2;
    v11[3] = &unk_1E7C92CE8;
    v11[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v11];
    v10 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFEE38];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v10];

    [(NSXPCConnection *)self->_xpcCnx resume];
  }
}

uint64_t __39__RPPrivateDiscovery__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;

  v4 = *(a1 + 32);

  return [v4 _invalidated];
}

- (void)_interrupted
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

  [(RPPrivateDiscovery *)self _activateXPC:1];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __32__RPPrivateDiscovery_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __32__RPPrivateDiscovery_invalidate__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if (*(v2 + 11))
  {
    return result;
  }

  v3 = result;
  *(v2 + 11) = 1;
  v4 = *(result + 32);
  v5 = **(v4 + 16);
  if (v5 <= 30)
  {
    if (v5 == -1)
    {
      v6 = *(v4 + 16);
      v7 = _LogCategory_Initialize();
      v4 = *(v3 + 32);
      if (!v7)
      {
        goto LABEL_6;
      }

      v8 = *(v4 + 16);
    }

    v9 = *(v4 + 32);
    LogPrintF();
    v4 = *(v3 + 32);
  }

LABEL_6:
  if (*(v4 + 10) == 1)
  {
    [v4 _invalidateDirect];
    v4 = *(v3 + 32);
  }

  if (*(v4 + 24))
  {
    [*(v4 + 24) invalidate];
    v4 = *(v3 + 32);
  }

  return [v4 _invalidated];
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone && !self->_direct && !self->_xpcCnx)
  {
    self->_invalidateCalled = 1;
    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2](invalidationHandler, a2);
    }

    endpointFoundHandler = self->_endpointFoundHandler;
    self->_endpointFoundHandler = 0;

    endpointLostHandler = self->_endpointLostHandler;
    self->_endpointLostHandler = 0;

    endpointChangedHandler = self->_endpointChangedHandler;
    self->_endpointChangedHandler = 0;

    errorHandler = self->_errorHandler;
    self->_errorHandler = 0;

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v9 = self->_invalidationHandler;
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

- (void)_updateIfNeededWithBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if ((blockCopy[2](blockCopy) & 1) != 0 && selfCopy->_activateCalled && !selfCopy->_changesPending)
  {
    selfCopy->_changesPending = 1;
    dispatchQueue = selfCopy->_dispatchQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __47__RPPrivateDiscovery__updateIfNeededWithBlock___block_invoke;
    block[3] = &unk_1E7C92CE8;
    block[4] = selfCopy;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(selfCopy);
}

- (void)_update
{
  if (!self->_invalidateCalled)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    changesPending = selfCopy->_changesPending;
    selfCopy->_changesPending = 0;
    objc_sync_exit(selfCopy);

    var0 = selfCopy->_ucat->var0;
    if (changesPending)
    {
      if (var0 <= 30)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_12;
          }

          ucat = selfCopy->_ucat;
        }

        v9 = selfCopy;
        LogPrintF();
      }

LABEL_12:
      xpcCnx = selfCopy->_xpcCnx;
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __29__RPPrivateDiscovery__update__block_invoke;
      v11[3] = &unk_1E7C92D58;
      v11[4] = selfCopy;
      v6 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v11, v9];
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = __29__RPPrivateDiscovery__update__block_invoke_2;
      v10[3] = &unk_1E7C92D58;
      v10[4] = selfCopy;
      [v6 xpcPrivateDiscoveryUpdate:selfCopy completion:v10];

      return;
    }

    if (var0 > 10)
    {
      return;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        return;
      }

      v7 = selfCopy->_ucat;
    }

    LogPrintF();
  }
}

void __29__RPPrivateDiscovery__update__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = **(v4 + 16);
  v10 = v3;
  if (v5 <= 90)
  {
    if (v5 != -1)
    {
LABEL_3:
      LogPrintF();
      v4 = *(a1 + 32);
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v6)
    {
      v9 = *(v4 + 16);
      goto LABEL_3;
    }
  }

LABEL_5:
  v7 = _Block_copy(*(v4 + 72));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v10);
  }
}

void __29__RPPrivateDiscovery__update__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = **(v4 + 16);
  v11 = v3;
  if (!v3)
  {
    if (v5 > 30)
    {
      goto LABEL_12;
    }

    if (v5 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v9 = *(*(a1 + 32) + 16);
    }

    LogPrintF();
    goto LABEL_12;
  }

  if (v5 <= 90)
  {
    if (v5 == -1)
    {
      v6 = _LogCategory_Initialize();
      v4 = *(a1 + 32);
      if (!v6)
      {
        goto LABEL_9;
      }

      v10 = *(v4 + 16);
    }

    LogPrintF();
    v4 = *(a1 + 32);
  }

LABEL_9:
  v7 = _Block_copy(*(v4 + 72));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, v11);
  }

LABEL_12:
}

int *__30__RPPrivateDiscovery_activate__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  if (*result <= 115)
  {
    if (*result == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v4 = *(*a2 + 16);
    }

    return LogPrintF();
  }

  return result;
}

@end