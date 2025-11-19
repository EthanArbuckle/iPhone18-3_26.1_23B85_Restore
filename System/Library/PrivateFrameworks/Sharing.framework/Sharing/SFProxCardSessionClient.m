@interface SFProxCardSessionClient
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (SFProxCardSessionClient)init;
- (void)_activateWithCompletion:(id)a3;
- (void)_invalidate;
- (void)_invalidated;
- (void)_reportError:(id)a3;
- (void)_xpcCheckinTimerFired;
- (void)_xpcConnectionInvalidated:(id)a3;
- (void)activateWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidate;
- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4;
- (void)remoteAlertHandleDidActivate:(id)a3;
- (void)remoteAlertHandleDidDeactivate:(id)a3;
- (void)setLabel:(id)a3;
- (void)xpcCheckinWithCompletion:(id)a3;
@end

@implementation SFProxCardSessionClient

- (SFProxCardSessionClient)init
{
  v7.receiver = self;
  v7.super_class = SFProxCardSessionClient;
  v2 = [(SFProxCardSessionClient *)&v7 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v2->_ucat = &gLogCategory_SFProxCardSessionClient;
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

  v4.receiver = self;
  v4.super_class = SFProxCardSessionClient;
  [(SFProxCardSessionClient *)&v4 dealloc];
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
  v7[2] = __50__SFProxCardSessionClient_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

void __50__SFProxCardSessionClient_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[8] == 1)
  {
    v3 = *MEMORY[0x1E696A768];
    v4 = NSErrorF();
    v5 = **(*(a1 + 32) + 40);
    v8 = v4;
    if (v5 <= 90)
    {
      if (v5 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        v7 = *(*(a1 + 32) + 40);
      }

      LogPrintF();
    }

LABEL_9:
    (*(*(a1 + 40) + 16))(*(a1 + 40));

    return;
  }

  v6 = *(a1 + 40);

  [v2 _activateWithCompletion:v6];
}

- (void)_activateWithCompletion:(id)a3
{
  v4 = a3;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = __Block_byref_object_copy__3;
  v46 = __Block_byref_object_dispose__3;
  v47 = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __51__SFProxCardSessionClient__activateWithCompletion___block_invoke;
  aBlock[3] = &unk_1E788CD48;
  v41 = &v42;
  aBlock[4] = self;
  v5 = v4;
  v40 = v5;
  v6 = _Block_copy(aBlock);
  if (self->_activateCalled)
  {
    v29 = SFErrorF();
    v11 = v43[5];
    v43[5] = v29;
    goto LABEL_24;
  }

  self->_activateCalled = 1;
  var0 = self->_ucat->var0;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_4:
      LogPrintF();
      goto LABEL_6;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_4;
    }
  }

LABEL_6:
  v8 = [MEMORY[0x1E696B0D8] anonymousListener];
  xpcListener = self->_xpcListener;
  self->_xpcListener = v8;

  [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
  [(NSXPCListener *)self->_xpcListener setDelegate:self];
  [(NSXPCListener *)self->_xpcListener resume];
  v10 = [(NSXPCListener *)self->_xpcListener endpoint];
  v11 = [v10 _endpoint];

  if (!v11)
  {
    v30 = SFErrorF();
    v12 = v43[5];
    v43[5] = v30;
    goto LABEL_23;
  }

  v12 = self->_viewControllerClassName;
  if (!v12)
  {
    v31 = SFErrorF();
    v32 = v43[5];
    v43[5] = v31;

    goto LABEL_23;
  }

  viewServiceName = self->_viewServiceName;
  if (!viewServiceName)
  {
    viewServiceName = @"com.apple.SharingViewService";
  }

  v14 = viewServiceName;
  v15 = [objc_alloc(MEMORY[0x1E69D42A0]) initWithServiceName:v14 viewControllerClassName:v12];
  if (!v15)
  {
    v33 = SFErrorF();
    v17 = v43[5];
    v43[5] = v33;
    goto LABEL_22;
  }

  v16 = objc_alloc_init(MEMORY[0x1E69D4298]);
  v17 = v16;
  if (!v16)
  {
    v34 = SFErrorF();
    v21 = v43[5];
    v43[5] = v34;
    goto LABEL_21;
  }

  [v16 setXpcEndpoint:v11];
  v18 = [(NSDictionary *)self->_userInfo mutableCopy];
  v19 = v18;
  if (v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v21 = v20;

  [v21 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"_proxXPC"];
  [v17 setUserInfo:v21];
  v22 = [MEMORY[0x1E69D42B8] newHandleWithDefinition:v15 configurationContext:v17];
  remoteAlertHandle = self->_remoteAlertHandle;
  self->_remoteAlertHandle = v22;

  v24 = self->_remoteAlertHandle;
  if (!v24)
  {
    v35 = SFErrorF();
    v25 = v43[5];
    v43[5] = v35;
    goto LABEL_20;
  }

  [(SBSRemoteAlertHandle *)v24 addObserver:self];
  [(SBSRemoteAlertHandle *)self->_remoteAlertHandle activateWithContext:0];
  v25 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  objc_storeStrong(&self->_xpcCheckinTimer, v25);
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __51__SFProxCardSessionClient__activateWithCompletion___block_invoke_2;
  handler[3] = &unk_1E788B198;
  handler[4] = self;
  dispatch_source_set_event_handler(v25, handler);
  SFDispatchTimerSet(v25, 30.0, -1.0, 1.0);
  dispatch_activate(v25);
  v26 = _Block_copy(v5);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = v26;

  v28 = self->_ucat->var0;
  if (v28 <= 30)
  {
    if (v28 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_20;
      }

      v37 = self->_ucat;
    }

    LogPrintF();
  }

LABEL_20:

LABEL_21:
LABEL_22:

LABEL_23:
LABEL_24:

  v6[2](v6);
  _Block_object_dispose(&v42, 8);
}

uint64_t __51__SFProxCardSessionClient__activateWithCompletion___block_invoke(uint64_t result)
{
  v1 = *(result + 48);
  if (!*(*(v1 + 8) + 40))
  {
    return result;
  }

  v2 = result;
  v3 = **(*(result + 32) + 40);
  if (v3 <= 90)
  {
    if (v3 == -1)
    {
      v4 = _LogCategory_Initialize();
      v1 = v2[6];
      if (!v4)
      {
        goto LABEL_7;
      }

      v7 = *(v2[4] + 40);
      v8 = *(*(v1 + 8) + 40);
    }

    LogPrintF();
    v1 = v2[6];
  }

LABEL_7:
  v5 = *(*(v1 + 8) + 40);
  v6 = *(v2[5] + 16);

  return v6();
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__SFProxCardSessionClient_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__SFProxCardSessionClient_invalidate__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if (*(v2 + 25))
  {
    return result;
  }

  v3 = result;
  *(v2 + 25) = 1;
  v4 = *(result + 32);
  v5 = *v4[5];
  if (v5 <= 30)
  {
    if (v5 == -1)
    {
      v6 = _LogCategory_Initialize();
      v4 = *(v3 + 32);
      if (!v6)
      {
        goto LABEL_6;
      }

      v7 = v4[5];
    }

    LogPrintF();
    v4 = *(v3 + 32);
  }

LABEL_6:

  return [v4 _invalidate];
}

- (void)_invalidate
{
  delegate = self->_delegate;
  self->_delegate = 0;

  remoteAlertHandle = self->_remoteAlertHandle;
  if (remoteAlertHandle)
  {
    [(SBSRemoteAlertHandle *)remoteAlertHandle removeObserver:self];
    [(SBSRemoteAlertHandle *)self->_remoteAlertHandle invalidate];
    v5 = self->_remoteAlertHandle;
    self->_remoteAlertHandle = 0;
  }

  xpcCheckinTimer = self->_xpcCheckinTimer;
  if (xpcCheckinTimer)
  {
    v7 = xpcCheckinTimer;
    dispatch_source_cancel(v7);
    v8 = self->_xpcCheckinTimer;
    self->_xpcCheckinTimer = 0;
  }

  [(NSXPCListener *)self->_xpcListener invalidate];
  xpcListener = self->_xpcListener;
  self->_xpcListener = 0;

  [(NSXPCConnection *)self->_xpcCnx invalidate];

  [(SFProxCardSessionClient *)self _invalidated];
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone && self->_invalidateCalled && !self->_remoteAlertHandle && !self->_xpcCnx)
  {
    v3 = _Block_copy(self->_activateCompletion);
    if (v3)
    {
      v4 = SFErrorF();
      v3[2](v3, v4);
    }

    v5 = _Block_copy(self->_invalidationHandler);
    v6 = v5;
    if (v5)
    {
      (*(v5 + 2))(v5);
    }

    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = 0;

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

- (void)_reportError:(id)a3
{
  v11 = a3;
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
  v5 = _Block_copy(self->_activateCompletion);
  v6 = v5;
  if (v5)
  {
    (*(v5 + 2))(v5, v11);
  }

  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  v8 = _Block_copy(self->_errorHandler);
  v9 = v8;
  if (v8)
  {
    (*(v8 + 2))(v8, v11);
  }
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  p_xpcCnx = &self->_xpcCnx;
  if (self->_xpcCnx)
  {
    var0 = self->_ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        ucat = self->_ucat;
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        v18 = self->_ucat;
      }

      v19 = [v6 processIdentifier];
      LogPrintF();
    }

LABEL_6:
    [(NSXPCConnection *)*p_xpcCnx invalidate];
    v10 = *p_xpcCnx;
    *p_xpcCnx = 0;
  }

  v11 = self->_ucat->var0;
  if (v11 <= 30)
  {
    if (v11 == -1)
    {
      v12 = self->_ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v17 = self->_ucat;
    }

    [v6 processIdentifier];
    LogPrintF();
  }

LABEL_11:
  objc_storeStrong(&self->_xpcCnx, a4);
  [v6 _setQueue:self->_dispatchQueue];
  v13 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D8ABC8];
  [v6 setExportedInterface:v13];

  [v6 setExportedObject:self];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __62__SFProxCardSessionClient_listener_shouldAcceptNewConnection___block_invoke;
  v20[3] = &unk_1E788A658;
  v20[4] = self;
  v21 = v6;
  v14 = v6;
  [v14 setInvalidationHandler:v20];
  v15 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEA20];
  [v14 setRemoteObjectInterface:v15];

  [v14 resume];
  return 1;
}

- (void)remoteAlertHandleDidActivate:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __56__SFProxCardSessionClient_remoteAlertHandleDidActivate___block_invoke;
  v7[3] = &unk_1E788A658;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __56__SFProxCardSessionClient_remoteAlertHandleDidActivate___block_invoke(uint64_t result)
{
  v2 = result + 40;
  v1 = *(result + 40);
  v3 = *(v1 + 40);
  v4 = *v3;
  if (*(result + 32) != *(v1 + 32))
  {
    return __56__SFProxCardSessionClient_remoteAlertHandleDidActivate___block_invoke_cold_1(v4 < 31, v4, v3, v2);
  }

  if (v4 <= 30)
  {
    if (v4 == -1)
    {
      v5 = *(v1 + 40);
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v6 = *(*v2 + 40);
    }

    return LogPrintF();
  }

  return result;
}

- (void)remoteAlertHandleDidDeactivate:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __58__SFProxCardSessionClient_remoteAlertHandleDidDeactivate___block_invoke;
  v7[3] = &unk_1E788A658;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

int *__58__SFProxCardSessionClient_remoteAlertHandleDidDeactivate___block_invoke(uint64_t a1)
{
  v2 = a1 + 40;
  v1 = *(a1 + 40);
  if (*(v2 - 8) != *(v1 + 32))
  {
    return __58__SFProxCardSessionClient_remoteAlertHandleDidDeactivate___block_invoke_cold_1(v1, v2);
  }

  if ((*(v1 + 25) & 1) != 0 || *(v1 + 24) == 1)
  {
    result = *(v1 + 40);
    if (*result > 30)
    {
      return result;
    }

    if (*result == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v4 = *(*v2 + 40);
    }
  }

  else
  {
    result = *(v1 + 40);
    if (*result > 90)
    {
      return result;
    }

    if (*result == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v5 = *(*v2 + 40);
    }
  }

  return LogPrintF();
}

- (void)remoteAlertHandle:(id)a3 didInvalidateWithError:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __68__SFProxCardSessionClient_remoteAlertHandle_didInvalidateWithError___block_invoke;
  block[3] = &unk_1E788BD88;
  v12 = v6;
  v13 = self;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(dispatchQueue, block);
}

int *__68__SFProxCardSessionClient_remoteAlertHandle_didInvalidateWithError___block_invoke(uint64_t a1)
{
  v3 = a1 + 40;
  v2 = *(a1 + 40);
  if (*(v3 - 8) != *(v2 + 32))
  {
    return __68__SFProxCardSessionClient_remoteAlertHandle_didInvalidateWithError___block_invoke_cold_1(v2, v3, a1);
  }

  if ((*(v2 + 25) & 1) != 0 || *(v2 + 24) == 1)
  {
    v4 = **(v2 + 40);
    if (v4 <= 30)
    {
      if (v4 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_14;
        }

        v6 = *(*v3 + 40);
      }

      v11 = *(a1 + 48);
      goto LABEL_10;
    }
  }

  else
  {
    v5 = **(v2 + 40);
    if (v5 <= 90)
    {
      if (v5 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_14;
        }

        v10 = *(*v3 + 40);
      }

      v12 = *(a1 + 48);
LABEL_10:
      LogPrintF();
    }
  }

LABEL_14:
  v7 = *(*v3 + 32);
  *(*v3 + 32) = 0;

  v8 = *v3;

  return [v8 _invalidated];
}

- (void)_xpcConnectionInvalidated:(id)a3
{
  v11 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled && !self->_dismissCalled)
  {
    v4 = SFErrorF();
    [(SFProxCardSessionClient *)self _reportError:v4];
  }

  var0 = self->_ucat->var0;
  if (var0 <= 20)
  {
    v6 = v11;
    if (var0 != -1)
    {
LABEL_6:
      v10 = [(NSXPCConnection *)v6 processIdentifier];
      LogPrintF();
      goto LABEL_8;
    }

    ucat = self->_ucat;
    if (_LogCategory_Initialize())
    {
      v9 = self->_ucat;
      v6 = v11;
      goto LABEL_6;
    }
  }

LABEL_8:
  xpcCnx = self->_xpcCnx;
  if (xpcCnx == v11)
  {
    self->_xpcCnx = 0;
  }

  [(SFProxCardSessionClient *)self _invalidated];
}

- (void)_xpcCheckinTimerFired
{
  xpcCheckinTimer = self->_xpcCheckinTimer;
  if (xpcCheckinTimer)
  {
    v4 = xpcCheckinTimer;
    dispatch_source_cancel(v4);
    v5 = self->_xpcCheckinTimer;
    self->_xpcCheckinTimer = 0;
  }

  v6 = SFErrorF();
  [(SFProxCardSessionClient *)self _reportError:v6];
}

- (void)xpcCheckinWithCompletion:(id)a3
{
  dispatchQueue = self->_dispatchQueue;
  v13 = a3;
  dispatch_assert_queue_V2(dispatchQueue);
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
  xpcCheckinTimer = self->_xpcCheckinTimer;
  if (xpcCheckinTimer)
  {
    v7 = xpcCheckinTimer;
    dispatch_source_cancel(v7);
    v8 = self->_xpcCheckinTimer;
    self->_xpcCheckinTimer = 0;
  }

  v9 = _Block_copy(self->_activateCompletion);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, 0);
  }

  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  v13[2](v13, 0);
}

uint64_t __56__SFProxCardSessionClient_remoteAlertHandleDidActivate___block_invoke_cold_1(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    if (a2 == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v5 = *(*a4 + 40);
    }

    return LogPrintF();
  }

  return result;
}

int *__58__SFProxCardSessionClient_remoteAlertHandleDidDeactivate___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 40);
  if (*result <= 30)
  {
    if (*result == -1)
    {
      result = _LogCategory_Initialize();
      if (!result)
      {
        return result;
      }

      v4 = *(*a2 + 40);
    }

    return LogPrintF();
  }

  return result;
}

int *__68__SFProxCardSessionClient_remoteAlertHandle_didInvalidateWithError___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = *(a1 + 40);
  if (*result <= 30)
  {
    if (*result != -1)
    {
LABEL_3:
      v7 = *(a3 + 48);
      return LogPrintF();
    }

    result = _LogCategory_Initialize();
    if (result)
    {
      v6 = *(*a2 + 40);
      goto LABEL_3;
    }
  }

  return result;
}

@end