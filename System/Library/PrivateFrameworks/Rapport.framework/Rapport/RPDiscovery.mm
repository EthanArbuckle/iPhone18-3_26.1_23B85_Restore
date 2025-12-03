@interface RPDiscovery
- (BOOL)_ensureXPCStarted;
- (NSArray)discoveredEndpoints;
- (RPDiscovery)init;
- (RPDiscovery)initWithCoder:(id)coder;
- (id)descriptionWithLevel:(int)level;
- (void)_activateWithCompletion:(id)completion reactivate:(BOOL)reactivate;
- (void)_interrupted;
- (void)_invalidated;
- (void)_lostAllEndpoints;
- (void)_scheduleRetry;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)setLabel:(id)label;
- (void)xpcDiscoveryChangedEndpoint:(id)endpoint;
- (void)xpcDiscoveryFoundEndpoint:(id)endpoint;
- (void)xpcDiscoveryLostEndpoint:(id)endpoint;
@end

@implementation RPDiscovery

- (RPDiscovery)init
{
  v6.receiver = self;
  v6.super_class = RPDiscovery;
  v2 = [(RPDiscovery *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v3->_ucat = &gLogCategory_RPDiscovery;
    v4 = v3;
  }

  return v3;
}

- (RPDiscovery)initWithCoder:(id)coder
{
  coderCopy = coder;
  v14.receiver = self;
  v14.super_class = RPDiscovery;
  v5 = [(RPDiscovery *)&v14 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_dispatchQueue, MEMORY[0x1E69E96A0]);
    v6->_ucat = &gLogCategory_RPDiscovery;
    v15 = 0;
    if (NSDecodeSInt64RangedIfPresent())
    {
      v6->_changeFlags = v15;
    }

    v7 = coderCopy;
    if ([v7 containsValueForKey:@"ctlF"])
    {
      v6->_controlFlags = [v7 decodeInt64ForKey:@"ctlF"];
    }

    v8 = v7;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    label = v6->_label;
    if (label)
    {
      v10 = label;
      [(NSString *)v10 UTF8String];
      LogCategoryReplaceF();
    }

    v11 = v8;
    objc_opt_class();
    NSDecodeObjectIfPresent();

    v12 = v6;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  changeFlags = self->_changeFlags;
  v9 = coderCopy;
  if (changeFlags)
  {
    [coderCopy encodeInt64:changeFlags forKey:@"chgF"];
    coderCopy = v9;
  }

  controlFlags = self->_controlFlags;
  if (controlFlags)
  {
    [v9 encodeInt64:controlFlags forKey:@"ctlF"];
    coderCopy = v9;
  }

  label = self->_label;
  if (label)
  {
    [v9 encodeObject:label forKey:@"label"];
    coderCopy = v9;
  }

  serviceType = self->_serviceType;
  if (serviceType)
  {
    [v9 encodeObject:serviceType forKey:@"st"];
    coderCopy = v9;
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
  v4.super_class = RPDiscovery;
  [(RPDiscovery *)&v4 dealloc];
}

- (id)descriptionWithLevel:(int)level
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__1;
  v24 = __Block_byref_object_dispose__1;
  v25 = 0;
  v19 = 0;
  changeFlags = self->_changeFlags;
  controlFlags = self->_controlFlags;
  serviceType = self->_serviceType;
  NSAppendPrintF();
  objc_storeStrong(&v25, 0);
  if (level <= 30)
  {
    v5 = v21;
    obj = v21[5];
    v12 = [(NSMutableDictionary *)self->_endpointMap count:serviceType];
    NSAppendPrintF();
    objc_storeStrong(v5 + 5, obj);
    if (level <= 20)
    {
      v6 = v21;
      v17 = v21[5];
      NSAppendPrintF();
      objc_storeStrong(v6 + 5, v17);
      if (level >= 11)
      {
        v7 = 50;
      }

      else
      {
        v7 = 30;
      }

      endpointMap = self->_endpointMap;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __36__RPDiscovery_descriptionWithLevel___block_invoke;
      v15[3] = &unk_1E7C93A58;
      v15[4] = &v20;
      v16 = v7;
      [(NSMutableDictionary *)endpointMap enumerateKeysAndObjectsUsingBlock:v15, v12];
    }
  }

  v9 = v21[5];
  _Block_object_dispose(&v20, 8);

  return v9;
}

void __36__RPDiscovery_descriptionWithLevel___block_invoke(uint64_t a1)
{
  v1 = *(*(a1 + 32) + 8);
  obj = *(v1 + 40);
  v2 = *(a1 + 40);
  v3 = CUDescriptionWithLevel();
  NSAppendPrintF();
  objc_storeStrong((v1 + 40), obj);
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
  block[2] = __38__RPDiscovery_activateWithCompletion___block_invoke;
  block[3] = &unk_1E7C92F60;
  block[4] = selfCopy;
  v10 = completionCopy;
  v11 = activateCalled;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);

  objc_sync_exit(selfCopy);
}

void __38__RPDiscovery_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 24) == 1)
  {
    v3 = RPErrorF();
    v4 = **(*(a1 + 32) + 40);
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

        v11 = *(*(a1 + 32) + 40);
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
    v5 = **(v2 + 40);
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

      v12 = *(*(a1 + 32) + 40);
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
  if (!reactivateCopy)
  {
    if (var0 > 30)
    {
      goto LABEL_18;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      ucat = self->_ucat;
    }

    if (self->_targetUserSession)
    {
      v9 = "(TargetUserSession)";
    }

    else
    {
      v9 = "";
    }

    v15 = v9;
    goto LABEL_14;
  }

  if (var0 > 30)
  {
    goto LABEL_18;
  }

  if (var0 != -1)
  {
    goto LABEL_4;
  }

  if (_LogCategory_Initialize())
  {
    v10 = self->_ucat;
LABEL_4:
    if (self->_targetUserSession)
    {
      v8 = "(TargetUserSession)";
    }

    else
    {
      v8 = "";
    }

    v15 = v8;
LABEL_14:
    LogPrintF();
  }

LABEL_18:
  if ([(RPDiscovery *)self _ensureXPCStarted])
  {
    xpcCnx = self->_xpcCnx;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __50__RPDiscovery__activateWithCompletion_reactivate___block_invoke;
    v19[3] = &unk_1E7C93500;
    v21 = reactivateCopy;
    v19[4] = self;
    v12 = completionCopy;
    v20 = v12;
    v13 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v19];
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __50__RPDiscovery__activateWithCompletion_reactivate___block_invoke_2;
    v16[3] = &unk_1E7C93528;
    v18 = reactivateCopy;
    v16[4] = self;
    v17 = v12;
    [v13 xpcDiscoveryActivate:self completion:v16];
  }

  else
  {
    [(RPDiscovery *)self _scheduleRetry];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }
}

void __50__RPDiscovery__activateWithCompletion_reactivate___block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = **(*(a1 + 32) + 40);
  if (*(a1 + 48) != 1)
  {
    if (v3 > 90)
    {
      goto LABEL_12;
    }

    if (v3 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_12;
      }

      v6 = *(*(a1 + 32) + 40);
    }

    v7 = v8;
    goto LABEL_8;
  }

  if (v3 > 90)
  {
    goto LABEL_12;
  }

  if (v3 != -1)
  {
    goto LABEL_4;
  }

  if (_LogCategory_Initialize())
  {
    v4 = *(*(a1 + 32) + 40);
LABEL_4:
    v7 = v8;
LABEL_8:
    LogPrintF();
  }

LABEL_12:
  [*(a1 + 32) _scheduleRetry];
  v5 = *(a1 + 40);
  if (v5)
  {
    (*(v5 + 16))(v5, 0);
  }
}

void __50__RPDiscovery__activateWithCompletion_reactivate___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v47 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v8 = *(a1 + 32);
    objc_sync_enter(v8);
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v9 = v5;
    v10 = [v9 countByEnumeratingWithState:&v41 objects:v46 count:16];
    if (v10)
    {
      v11 = *v42;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v42 != v11)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v41 + 1) + 8 * i);
          v14 = *(*(a1 + 32) + 16);
          if (!v14)
          {
            v15 = objc_alloc_init(MEMORY[0x1E695DF90]);
            v16 = *(a1 + 32);
            v17 = *(v16 + 16);
            *(v16 + 16) = v15;

            v14 = *(*(a1 + 32) + 16);
          }

          v18 = [v13 identifier];
          [v14 setObject:v13 forKeyedSubscript:v18];
        }

        v10 = [v9 countByEnumeratingWithState:&v41 objects:v46 count:16];
      }

      while (v10);
    }

    objc_sync_exit(v8);
    v19 = **(*(a1 + 32) + 40);
    if (*(a1 + 48) == 1)
    {
      if (v19 > 30)
      {
LABEL_38:
        v27 = *(a1 + 40);
        if (v27)
        {
          (*(v27 + 16))(v27, 0);
        }

        v28 = _Block_copy(*(*(a1 + 32) + 104));
        if (v28)
        {
          v39 = 0u;
          v40 = 0u;
          v37 = 0u;
          v38 = 0u;
          v29 = v9;
          v30 = [v29 countByEnumeratingWithState:&v37 objects:v45 count:16];
          if (v30)
          {
            v31 = *v38;
            do
            {
              for (j = 0; j != v30; ++j)
              {
                if (*v38 != v31)
                {
                  objc_enumerationMutation(v29);
                }

                v28[2](v28, *(*(&v37 + 1) + 8 * j));
              }

              v30 = [v29 countByEnumeratingWithState:&v37 objects:v45 count:16];
            }

            while (v30);
          }
        }

        v6 = 0;
        goto LABEL_50;
      }

      if (v19 == -1)
      {
        v24 = *(*(a1 + 32) + 40);
        if (!_LogCategory_Initialize())
        {
          goto LABEL_38;
        }

        v25 = *(*(a1 + 32) + 40);
      }
    }

    else
    {
      if (v19 > 30)
      {
        goto LABEL_38;
      }

      if (v19 == -1)
      {
        v26 = *(*(a1 + 32) + 40);
        if (!_LogCategory_Initialize())
        {
          goto LABEL_38;
        }

        v35 = *(*(a1 + 32) + 40);
      }
    }

    [v9 count];
    LogPrintF();
    goto LABEL_38;
  }

  v7 = **(*(a1 + 32) + 40);
  if (*(a1 + 48) != 1)
  {
    if (v7 > 90)
    {
      goto LABEL_29;
    }

    if (v7 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_29;
      }

      v34 = *(*(a1 + 32) + 40);
    }

    v36 = v6;
    goto LABEL_22;
  }

  if (v7 > 90)
  {
    goto LABEL_29;
  }

  if (v7 != -1)
  {
    goto LABEL_5;
  }

  if (_LogCategory_Initialize())
  {
    v20 = *(*(a1 + 32) + 40);
LABEL_5:
    v36 = v6;
LABEL_22:
    LogPrintF();
  }

LABEL_29:
  if ([v6 code] == -71168)
  {
    v21 = *(a1 + 40);
    if (v21)
    {
      v22 = *(v21 + 16);
LABEL_34:
      v22();
    }
  }

  else
  {
    [*(a1 + 32) _scheduleRetry];
    v23 = *(a1 + 40);
    if (v23)
    {
      v22 = *(v23 + 16);
      goto LABEL_34;
    }
  }

LABEL_50:

  v33 = *MEMORY[0x1E69E9840];
}

- (BOOL)_ensureXPCStarted
{
  if (!self->_xpcCnx)
  {
    v3 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EFED18];
    v4 = objc_alloc(MEMORY[0x1E695DFD8]);
    v5 = objc_opt_class();
    v6 = [v4 initWithObjects:{v5, objc_opt_class(), 0}];
    [v3 setClasses:v6 forSelector:sel_xpcDiscoveryActivate_completion_ argumentIndex:0 ofReply:1];

    v7 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.CompanionLink" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v7;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v9 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F2EEF148];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v9];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v3];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __32__RPDiscovery__ensureXPCStarted__block_invoke;
    v14[3] = &unk_1E7C92CE8;
    v14[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v14];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __32__RPDiscovery__ensureXPCStarted__block_invoke_2;
    v13[3] = &unk_1E7C92CE8;
    v13[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v13];
    [(NSXPCConnection *)self->_xpcCnx resume];
    var0 = self->_ucat->var0;
    if (var0 <= 10)
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
  }

  return 1;
}

uint64_t __32__RPDiscovery__ensureXPCStarted__block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 48);
  *(v2 + 48) = 0;

  v4 = *(a1 + 32);
  v5 = **(v4 + 40);
  if (*(v4 + 24) == 1)
  {
    if (v5 <= 30)
    {
      if (v5 == -1)
      {
        v6 = _LogCategory_Initialize();
        v4 = *(a1 + 32);
        if (!v6)
        {
          goto LABEL_9;
        }

        v9 = *(v4 + 40);
      }

      LogPrintF();
      v4 = *(a1 + 32);
    }

LABEL_9:

    return [v4 _invalidated];
  }

  if (v5 <= 90)
  {
    if (v5 == -1)
    {
      v8 = _LogCategory_Initialize();
      v4 = *(a1 + 32);
      if (!v8)
      {
        goto LABEL_13;
      }

      v10 = *(v4 + 40);
    }

    LogPrintF();
    v4 = *(a1 + 32);
  }

LABEL_13:

  return [v4 _scheduleRetry];
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
  [(RPDiscovery *)self _lostAllEndpoints];
  if (self->_activateCalled)
  {
    [(RPDiscovery *)self _activateWithCompletion:0 reactivate:1];
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
  block[2] = __25__RPDiscovery_invalidate__block_invoke;
  block[3] = &unk_1E7C92CE8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __25__RPDiscovery_invalidate__block_invoke(uint64_t result)
{
  v5 = *(result + 32);
  if (*(v5 + 24))
  {
    return result;
  }

  v16 = v2;
  v17 = v1;
  v6 = result;
  *(v5 + 24) = 1;
  v7 = *(result + 32);
  v8 = **(v7 + 40);
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

      v15 = *(v7 + 40);
    }

    LogPrintF();
    v7 = *(v6 + 32);
  }

LABEL_6:
  v10 = *(v7 + 32);
  if (v10)
  {
    v11 = v10;
    dispatch_source_cancel(v11);
    v12 = *(v6 + 32);
    v13 = *(v12 + 32);
    *(v12 + 32) = 0;
  }

  [*(*(v6 + 32) + 48) invalidate];
  v14 = *(v6 + 32);

  return [v14 _invalidated];
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

    retryTimer = self->_retryTimer;
    if (retryTimer)
    {
      v5 = retryTimer;
      dispatch_source_cancel(v5);
      v6 = self->_retryTimer;
      self->_retryTimer = 0;
    }

    foundHandler = self->_foundHandler;
    self->_foundHandler = 0;

    lostHandler = self->_lostHandler;
    self->_lostHandler = 0;

    changedHandler = self->_changedHandler;
    self->_changedHandler = 0;

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v11 = self->_invalidationHandler;
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

- (void)_scheduleRetry
{
  if (!self->_invalidateCalled && !self->_retryTimer)
  {
    v3 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
    retryTimer = self->_retryTimer;
    self->_retryTimer = v3;

    v5 = self->_retryTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __29__RPDiscovery__scheduleRetry__block_invoke;
    handler[3] = &unk_1E7C92CE8;
    handler[4] = self;
    dispatch_source_set_event_handler(v5, handler);
    v6 = self->_retryTimer;
    CUDispatchTimerSet();
    dispatch_resume(self->_retryTimer);
  }
}

_BYTE *__29__RPDiscovery__scheduleRetry__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = **(v2 + 40);
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
      v10 = *(v2 + 40);
      goto LABEL_3;
    }
  }

LABEL_5:
  v5 = *(v2 + 32);
  if (v5)
  {
    v6 = v5;
    dispatch_source_cancel(v6);
    v7 = *(a1 + 32);
    v8 = *(v7 + 32);
    *(v7 + 32) = 0;
  }

  result = *(a1 + 32);
  if ((result[24] & 1) == 0)
  {

    return [result _activateWithCompletion:0 reactivate:1];
  }

  return result;
}

- (NSArray)discoveredEndpoints
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  endpointMap = selfCopy->_endpointMap;
  if (endpointMap)
  {
    allValues = [(NSMutableDictionary *)endpointMap allValues];
  }

  else
  {
    allValues = MEMORY[0x1E695E0F0];
  }

  objc_sync_exit(selfCopy);

  return allValues;
}

- (void)_lostAllEndpoints
{
  v19 = *MEMORY[0x1E69E9840];
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
  v4 = _Block_copy(self->_lostHandler);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  endpointMap = selfCopy->_endpointMap;
  if (v4)
  {
    allValues = [(NSMutableDictionary *)endpointMap allValues];
    [(NSMutableDictionary *)selfCopy->_endpointMap removeAllObjects];
    objc_sync_exit(selfCopy);

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v8 = allValues;
    v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v9)
    {
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v4[2](v4, *(*(&v14 + 1) + 8 * v11++));
        }

        while (v9 != v11);
        v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  else
  {
    [(NSMutableDictionary *)endpointMap removeAllObjects];
    objc_sync_exit(selfCopy);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)xpcDiscoveryFoundEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = endpointCopy;
  endpointMap = selfCopy->_endpointMap;
  if (!endpointMap)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v8 = selfCopy->_endpointMap;
    selfCopy->_endpointMap = v7;

    endpointMap = selfCopy->_endpointMap;
    v5 = endpointCopy;
  }

  identifier = [v5 identifier];
  [(NSMutableDictionary *)endpointMap setObject:endpointCopy forKeyedSubscript:identifier];

  objc_sync_exit(selfCopy);
  v10 = _Block_copy(selfCopy->_foundHandler);
  v11 = v10;
  if (v10)
  {
    (*(v10 + 2))(v10, endpointCopy);
  }
}

- (void)xpcDiscoveryLostEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  endpointMap = selfCopy->_endpointMap;
  identifier = [endpointCopy identifier];
  [(NSMutableDictionary *)endpointMap setObject:0 forKeyedSubscript:identifier];

  objc_sync_exit(selfCopy);
  v7 = _Block_copy(selfCopy->_lostHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, endpointCopy);
  }
}

- (void)xpcDiscoveryChangedEndpoint:(id)endpoint
{
  endpointCopy = endpoint;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  selfCopy = self;
  objc_sync_enter(selfCopy);
  endpointMap = selfCopy->_endpointMap;
  identifier = [endpointCopy identifier];
  [(NSMutableDictionary *)endpointMap setObject:endpointCopy forKeyedSubscript:identifier];

  objc_sync_exit(selfCopy);
  v7 = _Block_copy(selfCopy->_changedHandler);
  v8 = v7;
  if (v7)
  {
    (*(v7 + 2))(v7, endpointCopy);
  }
}

@end