@interface SFCoordinatedAlertRequest
- (SFCoordinatedAlertRequest)init;
- (SFCoordinatedAlertRequest)initWithCoder:(id)coder;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)_startWithTimer;
- (void)_timeoutFired;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)start;
@end

@implementation SFCoordinatedAlertRequest

- (SFCoordinatedAlertRequest)init
{
  v6.receiver = self;
  v6.super_class = SFCoordinatedAlertRequest;
  v2 = [(SFCoordinatedAlertRequest *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)start
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SFCoordinatedAlertRequest_start__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_startWithTimer
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFCoordinatedAlertRequest <= 30 && (gLogCategory_SFCoordinatedAlertRequest != -1 || _LogCategory_Initialize()))
  {
    [SFCoordinatedAlertRequest _startWithTimer];
  }

  if (!self->_completionHandler)
  {
    [SFCoordinatedAlertRequest _startWithTimer];
    goto LABEL_15;
  }

  if (self->_started)
  {
LABEL_15:
    [SFCoordinatedAlertRequest _startWithTimer];
    goto LABEL_16;
  }

  self->_started = 1;
  timeout = self->_timeout;
  if (timeout <= 0.0)
  {
    CFPrefs_GetDouble();
    self->_timeout = timeout;
  }

  v4 = 2.0;
  if (timeout <= 0.0 || (v4 = 900.0, timeout > 900.0))
  {
    self->_timeout = v4;
  }

  v5 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, self->_dispatchQueue);
  timeoutTimer = self->_timeoutTimer;
  self->_timeoutTimer = v5;

  v7 = self->_timeoutTimer;
  if (!v7)
  {
LABEL_16:
    started = [SFBLEScanner _startTimeoutIfNeeded];
    os_activity_scope_leave(&state);
    _Unwind_Resume(started);
  }

  v8 = (self->_timeout * 1000000000.0);
  v9 = dispatch_time(0, v8);
  dispatch_source_set_timer(v7, v9, v8, v8 >> 2);
  v10 = self->_timeoutTimer;
  handler[0] = MEMORY[0x1E69E9820];
  handler[1] = 3221225472;
  handler[2] = __44__SFCoordinatedAlertRequest__startWithTimer__block_invoke;
  handler[3] = &unk_1E788B198;
  handler[4] = self;
  dispatch_source_set_event_handler(v10, handler);
  dispatch_resume(self->_timeoutTimer);
  v11 = _os_activity_create(&dword_1A9662000, "Sharing/SFCoordinatedAlertRequest/coordinatedAlertsRequestStart", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  [(SFCoordinatedAlertRequest *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __44__SFCoordinatedAlertRequest__startWithTimer__block_invoke_2;
  v16[3] = &unk_1E788B238;
  v16[4] = self;
  v13 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v16];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __44__SFCoordinatedAlertRequest__startWithTimer__block_invoke_3;
  v15[3] = &unk_1E788ECB8;
  v15[4] = self;
  [v13 coordinatedAlertsRequestStart:self completion:v15];

  os_activity_scope_leave(&state);
}

- (void)_ensureXPCStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_xpcCnx)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.SharingServices" options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v3;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1D855A0];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v5];

    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __46__SFCoordinatedAlertRequest__ensureXPCStarted__block_invoke;
    v8[3] = &unk_1E788B198;
    v8[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v8];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__SFCoordinatedAlertRequest__ensureXPCStarted__block_invoke_2;
    v7[3] = &unk_1E788B198;
    v7[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v7];
    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAEBA0];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_SFCoordinatedAlertRequest <= 10 && (gLogCategory_SFCoordinatedAlertRequest != -1 || _LogCategory_Initialize()))
    {
      [SFCoordinatedAlertRequest _ensureXPCStarted];
    }
  }
}

void __44__SFCoordinatedAlertRequest__startWithTimer__block_invoke_3(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 40);
  if (v3)
  {
    v3[2]();
    v2 = *(a1 + 32);
    v3 = *(v2 + 40);
  }

  *(v2 + 40) = 0;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFCoordinatedAlertRequest_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateCalled)
  {
    self->_invalidateCalled = 1;
    if (!self->_invalidateDone && gLogCategory_SFCoordinatedAlertRequest <= 30 && (gLogCategory_SFCoordinatedAlertRequest != -1 || _LogCategory_Initialize()))
    {
      [SFCoordinatedAlertRequest _invalidate];
    }

    timeoutTimer = self->_timeoutTimer;
    if (timeoutTimer)
    {
      v4 = timeoutTimer;
      dispatch_source_cancel(v4);
      v5 = self->_timeoutTimer;
      self->_timeoutTimer = 0;
    }

    xpcCnx = self->_xpcCnx;
    if (xpcCnx)
    {
      [(NSXPCConnection *)xpcCnx invalidate];
      v7 = self->_xpcCnx;
      self->_xpcCnx = 0;
    }

    else
    {

      [(SFCoordinatedAlertRequest *)self _invalidated];
    }
  }
}

- (void)_invalidated
{
  v21[1] = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_SFCoordinatedAlertRequest <= 50 && (gLogCategory_SFCoordinatedAlertRequest != -1 || _LogCategory_Initialize()))
    {
      [SFCoordinatedAlertRequest _invalidated];
    }

    completionHandler = self->_completionHandler;
    if (completionHandler && self->_started)
    {
      v4 = MEMORY[0x1E696ABC0];
      v5 = *MEMORY[0x1E696A768];
      v20 = *MEMORY[0x1E696A578];
      v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
      v7 = v6;
      v8 = @"?";
      if (v6)
      {
        v8 = v6;
      }

      v21[0] = v8;
      v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v10 = [v4 errorWithDomain:v5 code:-6723 userInfo:v9];
      completionHandler[2](completionHandler, v10, 1, 0);
    }

    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [remoteObjectProxy coordinatedAlertsRequestCancel];

    v13 = self->_completionHandler;
    self->_completionHandler = 0;

    v14 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    timeoutTimer = self->_timeoutTimer;
    if (timeoutTimer)
    {
      v16 = timeoutTimer;
      dispatch_source_cancel(v16);
      v17 = self->_timeoutTimer;
      self->_timeoutTimer = 0;
    }

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_SFCoordinatedAlertRequest <= 10 && (gLogCategory_SFCoordinatedAlertRequest != -1 || _LogCategory_Initialize()))
    {
      [SFCoordinatedAlertRequest _invalidated];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)dealloc
{
  if (self->_timeoutTimer)
  {
    [SFCoordinatedAlertRequest dealloc];
    goto LABEL_7;
  }

  if (self->_xpcCnx)
  {
LABEL_7:
    v6 = [SFProximityClient dealloc];
    [(SFCoordinatedAlertRequest *)v6 .cxx_destruct];
    return;
  }

  completionHandler = self->_completionHandler;
  self->_completionHandler = 0;

  dispatchQueue = self->_dispatchQueue;
  if (dispatchQueue)
  {
    self->_dispatchQueue = 0;
  }

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  v8.receiver = self;
  v8.super_class = SFCoordinatedAlertRequest;
  [(SFCoordinatedAlertRequest *)&v8 dealloc];
}

- (void)encodeWithCoder:(id)coder
{
  type = self->_type;
  if (type)
  {
    [coder encodeInteger:type forKey:@"type"];
  }
}

void __44__SFCoordinatedAlertRequest__startWithTimer__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v8 = v3;
  if (gLogCategory_SFCoordinatedAlertRequest <= 50)
  {
    if (gLogCategory_SFCoordinatedAlertRequest != -1 || (v4 = _LogCategory_Initialize(), v3 = v8, v4))
    {
      __44__SFCoordinatedAlertRequest__startWithTimer__block_invoke_2_cold_1();
      v3 = v8;
    }
  }

  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  if (v6)
  {
    (*(v6 + 16))(v6, v3, 1, 0);
    v5 = *(a1 + 32);
    v7 = *(v5 + 40);
  }

  else
  {
    v7 = 0;
  }

  *(v5 + 40) = 0;
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFCoordinatedAlertRequest <= 50 && (gLogCategory_SFCoordinatedAlertRequest != -1 || _LogCategory_Initialize()))
  {
    [SFCoordinatedAlertRequest _interrupted];
  }

  v3 = SFErrorF();
  updateHandler = self->_updateHandler;
  if (updateHandler)
  {
    v5 = v3;
    updateHandler[2]();
    v3 = v5;
  }
}

- (void)_timeoutFired
{
  v3 = _os_activity_create(&dword_1A9662000, "Sharing/SFCoordinatedAlertRequest/coordinatedAlertsRequestFinish", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v8.opaque[0] = 0;
  v8.opaque[1] = 0;
  os_activity_scope_enter(v3, &v8);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  timeoutTimer = self->_timeoutTimer;
  if (timeoutTimer)
  {
    v5 = timeoutTimer;
    dispatch_source_cancel(v5);
    v6 = self->_timeoutTimer;
    self->_timeoutTimer = 0;
  }

  remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
  [remoteObjectProxy coordinatedAlertsRequestFinish];

  os_activity_scope_leave(&v8);
}

- (SFCoordinatedAlertRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = SFCoordinatedAlertRequest;
  v5 = [(SFCoordinatedAlertRequest *)&v15 init];
  v6 = v5;
  if (v5)
  {
    v7 = SFMainQueue(v5);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v7;

    if ([coderCopy containsValueForKey:@"type"])
    {
      v9 = [coderCopy decodeIntegerForKey:@"type"];
      v6->_type = v9;
      if (v9 >= 7)
      {
        v10 = MEMORY[0x1E695DF30];
        v11 = *MEMORY[0x1E695D940];
        v12 = _NSMethodExceptionProem();
        [v10 raise:v11 format:{@"%@: type (%ld) out-of-range", v12, v6->_type}];
      }
    }

    v13 = v6;
  }

  return v6;
}

@end