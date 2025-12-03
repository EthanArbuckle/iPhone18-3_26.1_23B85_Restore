@interface RPServer
- (RPServer)init;
- (RPServer)initWithCoder:(id)coder;
- (id)descriptionWithLevel:(int)level;
- (void)_activateWithReactivate:(BOOL)reactivate;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidated;
- (void)_update;
- (void)_updateIfNeededWithBlock:(id)block;
- (void)activate;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)setControlFlags:(unint64_t)flags;
- (void)setLabel:(id)label;
- (void)setPassword:(id)password;
- (void)setPasswordType:(int)type;
- (void)setServiceType:(id)type;
- (void)xpcServerAcceptSession:(id)session completion:(id)completion;
@end

@implementation RPServer

- (RPServer)init
{
  v6.receiver = self;
  v6.super_class = RPServer;
  v2 = [(RPServer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_ucat = &gLogCategory_RPServer;
    v4 = v3;
  }

  return v3;
}

- (RPServer)initWithCoder:(id)coder
{
  coderCopy = coder;
  v16.receiver = self;
  v16.super_class = RPServer;
  v5 = [(RPServer *)&v16 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v6->_ucat = &gLogCategory_RPServer;
    v7 = coderCopy;
    if ([v7 containsValueForKey:@"devName"])
    {
      v6->_advertiseDeviceName = [v7 decodeBoolForKey:@"devName"];
    }

    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    v8 = v7;
    if ([v8 containsValueForKey:@"cFl"])
    {
      v6->_controlFlags = [v8 decodeInt64ForKey:@"cFl"];
    }

    v17 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_internalAuthFlags = v17;
    }

    v9 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    label = v6->_label;
    if (label)
    {
      v11 = label;
      [(NSString *)v11 UTF8String];
      LogCategoryReplaceF();
    }

    objc_opt_class();
    NSDecodeNSArrayOfClassIfPresent();
    v17 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_passwordType = v17;
    }

    v12 = v9;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v13 = v12;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v14 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  allowedMACAddresses = self->_allowedMACAddresses;
  v13 = coderCopy;
  if (allowedMACAddresses)
  {
    [coderCopy encodeObject:allowedMACAddresses forKey:@"MAcAddrs"];
    coderCopy = v13;
  }

  if (self->_advertiseDeviceName)
  {
    [v13 encodeBool:1 forKey:@"devName"];
    coderCopy = v13;
  }

  controlFlags = self->_controlFlags;
  if (controlFlags)
  {
    [v13 encodeInt64:controlFlags forKey:@"cFl"];
    coderCopy = v13;
  }

  internalAuthFlags = self->_internalAuthFlags;
  if (internalAuthFlags)
  {
    [v13 encodeInt64:internalAuthFlags forKey:@"iaf"];
    coderCopy = v13;
  }

  label = self->_label;
  if (label)
  {
    [v13 encodeObject:label forKey:@"label"];
    coderCopy = v13;
  }

  pairSetupACL = self->_pairSetupACL;
  if (pairSetupACL)
  {
    [v13 encodeObject:pairSetupACL forKey:@"acl"];
    coderCopy = v13;
  }

  passwordType = self->_passwordType;
  if (passwordType)
  {
    [v13 encodeInteger:passwordType forKey:@"pwTy"];
    coderCopy = v13;
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    [v13 encodeObject:serviceType forKey:@"st"];
    coderCopy = v13;
  }

  password = self->_password;
  if (password)
  {
    [v13 encodeObject:password forKey:@"pw"];
    coderCopy = v13;
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
  v4.super_class = RPServer;
  [(RPServer *)&v4 dealloc];
}

- (id)descriptionWithLevel:(int)level
{
  serviceType = self->_serviceType;
  NSAppendPrintF();
  v4 = 0;
  v5 = v4;
  allowedMACAddresses = self->_allowedMACAddresses;
  if (allowedMACAddresses)
  {
    v20 = v4;
    v7 = allowedMACAddresses;
    [(NSArray *)v7 count];
    NSAppendPrintF();
    v8 = v20;

    v5 = v8;
  }

  if (self->_advertiseDeviceName)
  {
    NSAppendPrintF();
    v9 = v5;

    v5 = v9;
  }

  if (self->_controlFlags)
  {
    controlFlags = self->_controlFlags;
    NSAppendPrintF();
    v10 = v5;

    v5 = v10;
  }

  passwordType = self->_passwordType;
  if (passwordType)
  {
    if (passwordType <= 0xB)
    {
      v12 = off_1E7C94E88[passwordType - 1];
    }

    NSAppendPrintF();
    v13 = v5;

    v5 = v13;
  }

  pairSetupACL = self->_pairSetupACL;
  if (pairSetupACL)
  {
    v19 = pairSetupACL;
    NSAppendPrintF();
    v15 = v5;

    v5 = v15;
  }

  return v5;
}

- (void)setControlFlags:(unint64_t)flags
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__RPServer_setControlFlags___block_invoke;
  v3[3] = &unk_1E7C94E40;
  v3[4] = self;
  v3[5] = flags;
  [(RPServer *)self _updateIfNeededWithBlock:v3];
}

BOOL __28__RPServer_setControlFlags___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = *(v2 + 128);
  if (v1 != v3)
  {
    *(v2 + 128) = v1;
  }

  return v1 != v3;
}

- (void)setLabel:(id)label
{
  objc_storeStrong(&self->_label, label);
  labelCopy = label;
  v4 = labelCopy;
  [labelCopy UTF8String];
  LogCategoryReplaceF();
}

- (void)setPassword:(id)password
{
  v4 = [password copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __24__RPServer_setPassword___block_invoke;
  v6[3] = &unk_1E7C94CB0;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(RPServer *)self _updateIfNeededWithBlock:v6];
}

BOOL __24__RPServer_setPassword___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 72);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v4;
  v6 = v3 != v4;
  if (v3 == v4)
  {

LABEL_8:
    return v6;
  }

  if ((v3 != 0) == (v4 == 0))
  {

    goto LABEL_7;
  }

  v7 = [v3 isEqual:v4];

  if ((v7 & 1) == 0)
  {
LABEL_7:
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v8;
    v3 = *(v9 + 72);
    *(v9 + 72) = v10;
    goto LABEL_8;
  }

  return 0;
}

- (void)setServiceType:(id)type
{
  v4 = [type copy];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __27__RPServer_setServiceType___block_invoke;
  v6[3] = &unk_1E7C94CB0;
  v7 = v4;
  selfCopy = self;
  v5 = v4;
  [(RPServer *)self _updateIfNeededWithBlock:v6];
}

BOOL __27__RPServer_setServiceType___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 40) + 176);
  v3 = *(a1 + 32);
  v4 = v2;
  v5 = v4;
  v6 = v3 != v4;
  if (v3 == v4)
  {

LABEL_8:
    return v6;
  }

  if ((v3 != 0) == (v4 == 0))
  {

    goto LABEL_7;
  }

  v7 = [v3 isEqual:v4];

  if ((v7 & 1) == 0)
  {
LABEL_7:
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v8;
    v3 = *(v9 + 176);
    *(v9 + 176) = v10;
    goto LABEL_8;
  }

  return 0;
}

- (void)setPasswordType:(int)type
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __28__RPServer_setPasswordType___block_invoke;
  v3[3] = &unk_1E7C94280;
  typeCopy = type;
  v3[4] = self;
  [(RPServer *)self _updateIfNeededWithBlock:v3];
}

BOOL __28__RPServer_setPasswordType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v2 = *(a1 + 32);
  v3 = *(v2 + 44);
  if (v1 != v3)
  {
    *(v2 + 44) = v1;
  }

  return v1 != v3;
}

- (void)activate
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  activateCalled = selfCopy->_activateCalled;
  selfCopy->_activateCalled = 1;
  dispatchQueue = selfCopy->_dispatchQueue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __20__RPServer_activate__block_invoke;
  v5[3] = &unk_1E7C94E68;
  v5[4] = selfCopy;
  v6 = activateCalled;
  dispatch_async(dispatchQueue, v5);
  objc_sync_exit(selfCopy);
}

int *__20__RPServer_activate__block_invoke(uint64_t a1)
{
  v3 = (a1 + 32);
  v2 = *(a1 + 32);
  if (*(v2 + 10) == 1)
  {
    return __20__RPServer_activate__block_invoke_cold_2(v2, v3);
  }

  if (*(a1 + 40) == 1)
  {
    return __20__RPServer_activate__block_invoke_cold_1(v2, v3);
  }

  if (*(v2 + 80))
  {
    *(v2 + 52) |= 8u;
    v2 = *v3;
  }

  if (*(v2 + 88))
  {
    *(v2 + 52) |= 1u;
    v2 = *v3;
  }

  if (*(v2 + 96))
  {
    *(v2 + 52) |= 2u;
    v2 = *v3;
  }

  if (*(v2 + 104))
  {
    *(v2 + 52) |= 4u;
    v2 = *v3;
  }

  return [v2 _activateWithReactivate:0];
}

- (void)_activateWithReactivate:(BOOL)reactivate
{
  var0 = self->_ucat->var0;
  if (reactivate)
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

      v9 = self->_ucat;
    }

LABEL_7:
    LogPrintF();
  }

LABEL_11:
  [(RPServer *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __36__RPServer__activateWithReactivate___block_invoke;
  v12[3] = &unk_1E7C94CD8;
  reactivateCopy = reactivate;
  v12[4] = self;
  v8 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v12];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __36__RPServer__activateWithReactivate___block_invoke_2;
  v10[3] = &unk_1E7C94CD8;
  reactivateCopy2 = reactivate;
  v10[4] = self;
  [v8 xpcServerActivate:self completion:v10];
}

void __36__RPServer__activateWithReactivate___block_invoke(uint64_t a1, void *a2)
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
  v5 = _Block_copy(*(*(a1 + 32) + 144));
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v8);
  }
}

void __36__RPServer__activateWithReactivate___block_invoke_2(uint64_t a1, void *a2)
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
  v7 = _Block_copy(*(*(a1 + 32) + 144));
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
    v14[2] = __29__RPServer__ensureXPCStarted__block_invoke;
    v14[3] = &unk_1E7C92CE8;
    v14[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __29__RPServer__ensureXPCStarted__block_invoke_2;
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

uint64_t __29__RPServer__ensureXPCStarted__block_invoke_2(uint64_t a1)
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
    [(RPServer *)self _activateWithReactivate:1];
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
  block[2] = __22__RPServer_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __22__RPServer_invalidate__block_invoke(uint64_t result)
{
  v5 = *(result + 32);
  if (*(v5 + 10))
  {
    return result;
  }

  v12 = v1;
  v6 = result;
  *(v5 + 10) = 1;
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

    acceptHandler = self->_acceptHandler;
    self->_acceptHandler = 0;

    errorHandler = self->_errorHandler;
    self->_errorHandler = 0;

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v7 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    showPasswordHandler = self->_showPasswordHandler;
    self->_showPasswordHandler = 0;

    hidePasswordHandler = self->_hidePasswordHandler;
    self->_hidePasswordHandler = 0;

    promptForPasswordHandler = self->_promptForPasswordHandler;
    self->_promptForPasswordHandler = 0;

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
    block[2] = __37__RPServer__updateIfNeededWithBlock___block_invoke;
    block[3] = &unk_1E7C92CE8;
    block[4] = selfCopy;
    dispatch_async(dispatchQueue, block);
  }

  objc_sync_exit(selfCopy);
}

- (void)_update
{
  if (self->_invalidateCalled)
  {
    return;
  }

  selfCopy = self;
  objc_sync_enter(selfCopy);
  changesPending = selfCopy->_changesPending;
  selfCopy->_changesPending = 0;
  objc_sync_exit(selfCopy);

  var0 = selfCopy->_ucat->var0;
  if (!changesPending)
  {
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

      ucat = selfCopy->_ucat;
    }

    LogPrintF();
    return;
  }

  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v6 = selfCopy->_ucat;
    }

    v7 = selfCopy;
    LogPrintF();
  }

LABEL_11:
  remoteObjectProxy = [(NSXPCConnection *)selfCopy->_xpcCnx remoteObjectProxy];
  [remoteObjectProxy xpcServerUpdate:selfCopy];
}

- (void)xpcServerAcceptSession:(id)session completion:(id)completion
{
  sessionCopy = session;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
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
  v8 = _Block_copy(self->_acceptHandler);
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, sessionCopy, completionCopy);
  }
}

int *__20__RPServer_activate__block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 16);
  if (*result <= 30)
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

int *__20__RPServer_activate__block_invoke_cold_2(uint64_t a1, uint64_t a2)
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