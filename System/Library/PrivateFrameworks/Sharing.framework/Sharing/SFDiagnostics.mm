@interface SFDiagnostics
- (SFDiagnostics)init;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)_logControl:(id)control completion:(id)completion;
- (void)_show:(id)_show completion:(id)completion;
- (void)bluetoothUserInteraction;
- (void)dealloc;
- (void)diagnosticBLEModeWithCompletion:(id)completion;
- (void)diagnosticControl:(id)control completion:(id)completion;
- (void)diagnosticMock:(id)mock device:(id)device completion:(id)completion;
- (void)diagnosticMockStart:(id)start;
- (void)diagnosticMockStop:(id)stop;
- (void)invalidate;
- (void)logControl:(id)control completion:(id)completion;
- (void)show:(id)show completion:(id)completion;
- (void)unlockTestClientWithDevice:(id)device;
- (void)unlockTestServer;
@end

@implementation SFDiagnostics

- (SFDiagnostics)init
{
  v7.receiver = self;
  v7.super_class = SFDiagnostics;
  v2 = [(SFDiagnostics *)&v7 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;
  }

  return v3;
}

- (void)dealloc
{
  if (self->_xpcCnx)
  {
    v6 = [SFProximityClient dealloc];
    [(SFDiagnostics *)v6 invalidate];
  }

  else
  {
    dispatchQueue = self->_dispatchQueue;
    if (dispatchQueue)
    {
      self->_dispatchQueue = 0;
    }

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    v8.receiver = self;
    v8.super_class = SFDiagnostics;
    [(SFDiagnostics *)&v8 dealloc];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __27__SFDiagnostics_invalidate__block_invoke;
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
    if (!self->_invalidateDone && gLogCategory_SFDiagnostics <= 30 && (gLogCategory_SFDiagnostics != -1 || _LogCategory_Initialize()))
    {
      [SFDiagnostics _invalidate];
    }

    xpcCnx = self->_xpcCnx;
    if (xpcCnx)
    {
      [(NSXPCConnection *)xpcCnx invalidate];
      v4 = self->_xpcCnx;
      self->_xpcCnx = 0;
    }

    else
    {

      [(SFDiagnostics *)self _invalidated];
    }
  }
}

- (void)bluetoothUserInteraction
{
  v3 = _os_activity_create(&dword_1A9662000, "Sharing/SFDiagnostics/bluetoothUserInteraction", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SFDiagnostics_bluetoothUserInteraction__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
  os_activity_scope_leave(&state);
}

void __41__SFDiagnostics_bluetoothUserInteraction__block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 8) = 1;
  [*(a1 + 32) _ensureXPCStarted];
  v2 = [*(*(a1 + 32) + 32) remoteObjectProxy];
  [v2 bluetoothUserInteraction];
}

- (void)diagnosticBLEModeWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFDiagnostics/diagnosticBLEModeWithCompletion", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __49__SFDiagnostics_diagnosticBLEModeWithCompletion___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = self;
  v9 = completionCopy;
  v7 = completionCopy;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

void __49__SFDiagnostics_diagnosticBLEModeWithCompletion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __49__SFDiagnostics_diagnosticBLEModeWithCompletion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 diagnosticBLEModeWithCompletion:*(a1 + 40)];
}

- (void)diagnosticControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFDiagnostics/diagnosticControl", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SFDiagnostics_diagnosticControl_completion___block_invoke;
  block[3] = &unk_1E788C3E8;
  v13 = controlCopy;
  v14 = completionCopy;
  block[4] = self;
  v10 = controlCopy;
  v11 = completionCopy;
  dispatch_async(dispatchQueue, block);

  os_activity_scope_leave(&state);
}

void __46__SFDiagnostics_diagnosticControl_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __46__SFDiagnostics_diagnosticControl_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 48);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 diagnosticControl:*(a1 + 40) completion:*(a1 + 48)];
}

- (void)diagnosticMock:(id)mock device:(id)device completion:(id)completion
{
  mockCopy = mock;
  deviceCopy = device;
  completionCopy = completion;
  v11 = _os_activity_create(&dword_1A9662000, "Sharing/SFDiagnostics/diagnosticMock", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v11, &state);
  dispatchQueue = self->_dispatchQueue;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __50__SFDiagnostics_diagnosticMock_device_completion___block_invoke;
  v16[3] = &unk_1E788C3C0;
  v16[4] = self;
  v17 = mockCopy;
  v18 = deviceCopy;
  v19 = completionCopy;
  v13 = deviceCopy;
  v14 = mockCopy;
  v15 = completionCopy;
  dispatch_async(dispatchQueue, v16);

  os_activity_scope_leave(&state);
}

void __50__SFDiagnostics_diagnosticMock_device_completion___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __50__SFDiagnostics_diagnosticMock_device_completion___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 56);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 diagnosticMock:*(a1 + 40) device:*(a1 + 48) completion:*(a1 + 56)];
}

- (void)diagnosticMockStart:(id)start
{
  startCopy = start;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFDiagnostics/diagnosticMockStart", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __37__SFDiagnostics_diagnosticMockStart___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = self;
  v9 = startCopy;
  v7 = startCopy;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

void __37__SFDiagnostics_diagnosticMockStart___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __37__SFDiagnostics_diagnosticMockStart___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 diagnosticMockStart:*(a1 + 40)];
}

- (void)diagnosticMockStop:(id)stop
{
  stopCopy = stop;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFDiagnostics/diagnosticMockStop", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __36__SFDiagnostics_diagnosticMockStop___block_invoke;
  v8[3] = &unk_1E788B210;
  v8[4] = self;
  v9 = stopCopy;
  v7 = stopCopy;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

void __36__SFDiagnostics_diagnosticMockStop___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__SFDiagnostics_diagnosticMockStop___block_invoke_2;
  v4[3] = &unk_1E788B6D8;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 diagnosticMockStop:*(a1 + 40)];
}

- (void)logControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __39__SFDiagnostics_logControl_completion___block_invoke;
  block[3] = &unk_1E788A570;
  block[4] = self;
  v12 = controlCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = controlCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_logControl:(id)control completion:(id)completion
{
  controlCopy = control;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFDiagnostics/diagnosticLogControl", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(SFDiagnostics *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __40__SFDiagnostics__logControl_completion___block_invoke;
  v15[3] = &unk_1E788B6D8;
  v10 = completionCopy;
  v16 = v10;
  v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __40__SFDiagnostics__logControl_completion___block_invoke_2;
  v13[3] = &unk_1E7890210;
  v12 = v10;
  v14 = v12;
  [v11 diagnosticLogControl:controlCopy completion:v13];

  os_activity_scope_leave(&state);
}

void __40__SFDiagnostics__logControl_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = NSPrintF();
    (*(v1 + 16))(v1, v2);
  }
}

void __40__SFDiagnostics__logControl_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v7 = v3;
    if (v3)
    {
      (*(v5 + 16))(v5, v3);
    }

    else
    {
      v6 = NSPrintF();
      (*(v5 + 16))(v5, v6);
    }

    v4 = v7;
  }
}

- (void)show:(id)show completion:(id)completion
{
  showCopy = show;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SFDiagnostics_show_completion___block_invoke;
  block[3] = &unk_1E788A570;
  block[4] = self;
  v12 = showCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = showCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_show:(id)_show completion:(id)completion
{
  _showCopy = _show;
  completionCopy = completion;
  v8 = _os_activity_create(&dword_1A9662000, "Sharing/SFDiagnostics/diagnosticShow", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v8, &state);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(SFDiagnostics *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __34__SFDiagnostics__show_completion___block_invoke;
  v15[3] = &unk_1E788B6D8;
  v10 = completionCopy;
  v16 = v10;
  v11 = [(NSXPCConnection *)xpcCnx remoteObjectProxyWithErrorHandler:v15];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __34__SFDiagnostics__show_completion___block_invoke_2;
  v13[3] = &unk_1E7890210;
  v12 = v10;
  v14 = v12;
  [v11 diagnosticShow:_showCopy completion:v13];

  os_activity_scope_leave(&state);
}

void __34__SFDiagnostics__show_completion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    v2 = NSPrintF();
    (*(v1 + 16))(v1, v2);
  }
}

void __34__SFDiagnostics__show_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  if (v5)
  {
    v7 = v3;
    if (v3)
    {
      (*(v5 + 16))(v5, v3);
    }

    else
    {
      v6 = NSPrintF();
      (*(v5 + 16))(v5, v6);
    }

    v4 = v7;
  }
}

- (void)unlockTestClientWithDevice:(id)device
{
  deviceCopy = device;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFDiagnostics/diagnosticUnlockTestClientWithDevice", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatchQueue = self->_dispatchQueue;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__SFDiagnostics_unlockTestClientWithDevice___block_invoke;
  v8[3] = &unk_1E788A658;
  v8[4] = self;
  v9 = deviceCopy;
  v7 = deviceCopy;
  dispatch_async(dispatchQueue, v8);

  os_activity_scope_leave(&state);
}

void __44__SFDiagnostics_unlockTestClientWithDevice___block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = [*(*(a1 + 32) + 32) remoteObjectProxy];
  [v2 diagnosticUnlockTestClientWithDevice:*(a1 + 40)];
}

- (void)unlockTestServer
{
  v3 = _os_activity_create(&dword_1A9662000, "Sharing/SFDiagnostics/diagnosticUnlockTestServer", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v3, &state);
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __33__SFDiagnostics_unlockTestServer__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
  os_activity_scope_leave(&state);
}

void __33__SFDiagnostics_unlockTestServer__block_invoke(uint64_t a1)
{
  [*(a1 + 32) _ensureXPCStarted];
  v2 = [*(*(a1 + 32) + 32) remoteObjectProxy];
  [v2 diagnosticUnlockTestServer];
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
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __34__SFDiagnostics__ensureXPCStarted__block_invoke;
    v7[3] = &unk_1E788B198;
    v7[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v7];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __34__SFDiagnostics__ensureXPCStarted__block_invoke_2;
    v6[3] = &unk_1E788B198;
    v6[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v6];
    v5 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAED20];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v5];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_SFDiagnostics <= 10 && (gLogCategory_SFDiagnostics != -1 || _LogCategory_Initialize()))
    {
      [SFDiagnostics _ensureXPCStarted];
    }
  }
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFDiagnostics <= 50 && (gLogCategory_SFDiagnostics != -1 || _LogCategory_Initialize()))
  {
    [SFDiagnostics _interrupted];
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    interruptionHandler[2]();
  }

  if (self->_btUser)
  {
    v4 = _os_activity_create(&dword_1A9662000, "Sharing/SFDiagnostics/bluetoothUserInteraction", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
    v6.opaque[0] = 0;
    v6.opaque[1] = 0;
    os_activity_scope_enter(v4, &v6);
    remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [remoteObjectProxy bluetoothUserInteraction];

    os_activity_scope_leave(&v6);
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_SFDiagnostics <= 50 && (gLogCategory_SFDiagnostics != -1 || _LogCategory_Initialize()))
    {
      [SFDiagnostics _invalidated];
    }

    invalidationHandler = self->_invalidationHandler;
    if (invalidationHandler)
    {
      invalidationHandler[2]();
    }

    interruptionHandler = self->_interruptionHandler;
    self->_interruptionHandler = 0;

    v5 = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = 0;

    self->_invalidateDone = 1;
    if (gLogCategory_SFDiagnostics <= 10 && (gLogCategory_SFDiagnostics != -1 || _LogCategory_Initialize()))
    {
      [SFDiagnostics _invalidated];
    }
  }
}

@end