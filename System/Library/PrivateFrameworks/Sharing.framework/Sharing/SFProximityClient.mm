@interface SFProximityClient
- (SFProximityClient)init;
- (SFProximityClient)initWithCoder:(id)coder;
- (void)_activateWithCompletion:(id)completion;
- (void)_dismissContentForDevice:(id)device completion:(id)completion;
- (void)_ensureXPCStarted;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)_invokeBlockActivateSafe:(id)safe;
- (void)_stopSuppressingDevice:(id)device completion:(id)completion;
- (void)_suppressDevice:(id)device completion:(id)completion;
- (void)_updateContent:(id)content forDevice:(id)device completion:(id)completion;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)dismissContentForDevice:(id)device completion:(id)completion;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
- (void)provideContent:(id)content forDevice:(id)device force:(BOOL)force completion:(id)completion;
- (void)proximityClientDeviceDidUntriggerHandler:(id)handler;
- (void)proximityClientDeviceEnteredImmediate:(id)immediate;
- (void)proximityClientDeviceEnteredNearby:(id)nearby;
- (void)proximityClientDeviceExitedImmediate:(id)immediate;
- (void)proximityClientDeviceExitedNearby:(id)nearby;
- (void)proximityClientDeviceUpdated:(id)updated rssi:(int64_t)rssi state:(int64_t)state;
- (void)proximityClientDeviceWasDismissedHandler:(id)handler reason:(int64_t)reason;
- (void)proximityClientDeviceWasSelectedHandler:(id)handler;
- (void)proximityClientDeviceWillTriggerHandler:(id)handler;
- (void)requestScannerTimerReset;
- (void)setShouldAdvertise:(BOOL)advertise;
- (void)stopSuppressingDevice:(id)device completion:(id)completion;
- (void)suppressDevice:(id)device completion:(id)completion;
- (void)updateContent:(id)content forDevice:(id)device completion:(id)completion;
@end

@implementation SFProximityClient

- (SFProximityClient)init
{
  v6.receiver = self;
  v6.super_class = SFProximityClient;
  v2 = [(SFProximityClient *)&v6 init];
  if (v2)
  {
    v3 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;
  }

  return v2;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = coderCopy;
  if (self->_shouldAdvertise)
  {
    [coderCopy encodeBool:1 forKey:@"sa"];
    coderCopy = v5;
  }

  if (self->_wantsUpdates)
  {
    [v5 encodeBool:1 forKey:@"wu"];
    coderCopy = v5;
  }
}

- (void)dealloc
{
  if (self->_xpcCnx)
  {
    v6 = [SFProximityClient dealloc];
    [(SFProximityClient *)v6 activateWithCompletion:v7, v8];
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

    v9.receiver = self;
    v9.super_class = SFProximityClient;
    [(SFProximityClient *)&v9 dealloc];
  }
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __44__SFProximityClient_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)completion
{
  v20[1] = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  v5 = _os_activity_create(&dword_1A9662000, "Sharing/SFProximityClient/proximityClientActivate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v5, &state);
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (self->_activateCalled)
  {
    v10 = -6721;
  }

  else
  {
    if (gLogCategory_SFProximityClient <= 30 && (gLogCategory_SFProximityClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    self->_activateCalled = 1;
    [(SFProximityClient *)self _ensureXPCStarted];
    xpcCnx = self->_xpcCnx;
    if (xpcCnx)
    {
      remoteObjectProxy = [(NSXPCConnection *)xpcCnx remoteObjectProxy];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __45__SFProximityClient__activateWithCompletion___block_invoke;
      v16[3] = &unk_1E788B6D8;
      v17 = completionCopy;
      [remoteObjectProxy proximityClientActivate:self completion:v16];

      v8 = v17;
      goto LABEL_8;
    }

    v10 = -6753;
  }

  if (!completionCopy)
  {
    goto LABEL_9;
  }

  v11 = MEMORY[0x1E696ABC0];
  v19 = *MEMORY[0x1E696A578];
  v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
  v8 = v12;
  v13 = @"?";
  if (v12)
  {
    v13 = v12;
  }

  v20[0] = v13;
  v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:&v19 count:1];
  v15 = [v11 errorWithDomain:*MEMORY[0x1E696A768] code:v10 userInfo:v14];
  (*(completionCopy + 2))(completionCopy, v15);

LABEL_8:
LABEL_9:
  os_activity_scope_leave(&state);

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __45__SFProximityClient__activateWithCompletion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __31__SFProximityClient_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (gLogCategory_SFProximityClient <= 60 && (gLogCategory_SFProximityClient != -1 || _LogCategory_Initialize()))
  {

    LogPrintF();
  }
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_invalidateDone)
  {
    if (!self->_invalidateCalled && gLogCategory_SFProximityClient <= 50 && (gLogCategory_SFProximityClient != -1 || _LogCategory_Initialize()))
    {
      [SFProximityClient _invalidated];
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
    if (gLogCategory_SFProximityClient <= 10 && (gLogCategory_SFProximityClient != -1 || _LogCategory_Initialize()))
    {
      [SFProximityClient _invalidated];
    }
  }
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
    v8[2] = __38__SFProximityClient__ensureXPCStarted__block_invoke;
    v8[3] = &unk_1E788B198;
    v8[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v8];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __38__SFProximityClient__ensureXPCStarted__block_invoke_2;
    v7[3] = &unk_1E788B198;
    v7[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v7];
    v6 = [MEMORY[0x1E696B0D0] interfaceWithProtocol:&unk_1F1DAE660];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v6];

    [(NSXPCConnection *)self->_xpcCnx resume];
    if (gLogCategory_SFProximityClient <= 10 && (gLogCategory_SFProximityClient != -1 || _LogCategory_Initialize()))
    {
      [SFProximityClient _ensureXPCStarted];
    }
  }
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFProximityClient <= 50 && (gLogCategory_SFProximityClient != -1 || _LogCategory_Initialize()))
  {
    [SFProximityClient _interrupted];
  }

  interruptionHandler = self->_interruptionHandler;
  if (interruptionHandler)
  {
    v4 = *(interruptionHandler + 2);

    v4();
  }
}

- (void)_invokeBlockActivateSafe:(id)safe
{
  safeCopy = safe;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_activateCalled)
  {
    dispatchQueue = selfCopy->_dispatchQueue;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __46__SFProximityClient__invokeBlockActivateSafe___block_invoke;
    v7[3] = &unk_1E788B318;
    v7[4] = selfCopy;
    v8 = safeCopy;
    dispatch_async(dispatchQueue, v7);
  }

  else
  {
    safeCopy[2](safeCopy);
  }

  objc_sync_exit(selfCopy);
}

void __46__SFProximityClient__invokeBlockActivateSafe___block_invoke(uint64_t a1)
{
  (*(*(a1 + 40) + 16))();
  v2 = [*(*(a1 + 32) + 32) remoteObjectProxy];
  [v2 proximityClientUpdate:*(a1 + 32)];
}

- (void)setShouldAdvertise:(BOOL)advertise
{
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __40__SFProximityClient_setShouldAdvertise___block_invoke;
  v3[3] = &unk_1E788B700;
  v3[4] = self;
  advertiseCopy = advertise;
  [(SFProximityClient *)self _invokeBlockActivateSafe:v3];
}

- (void)dismissContentForDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__SFProximityClient_dismissContentForDevice_completion___block_invoke;
  block[3] = &unk_1E788A570;
  block[4] = self;
  v12 = deviceCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = deviceCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_dismissContentForDevice:(id)device completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFProximityClient <= 30 && (gLogCategory_SFProximityClient != -1 || _LogCategory_Initialize()))
  {
    [SFProximityClient _dismissContentForDevice:completion:];
  }

  [(SFProximityClient *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  if (xpcCnx)
  {
    remoteObjectProxy = [(NSXPCConnection *)xpcCnx remoteObjectProxy];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __57__SFProximityClient__dismissContentForDevice_completion___block_invoke;
    v12[3] = &unk_1E788B6D8;
    v13 = completionCopy;
    [remoteObjectProxy proximityClientDismissContentForDevice:deviceCopy completion:v12];

    v10 = v13;
  }

  else
  {
    if (([SFProximityClient _dismissContentForDevice:completionCopy completion:?]& 1) != 0)
    {
      goto LABEL_7;
    }

    v10 = v14;
  }

LABEL_7:
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __57__SFProximityClient__dismissContentForDevice_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)provideContent:(id)content forDevice:(id)device force:(BOOL)force completion:(id)completion
{
  contentCopy = content;
  deviceCopy = device;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __63__SFProximityClient_provideContent_forDevice_force_completion___block_invoke;
  block[3] = &unk_1E788B728;
  block[4] = self;
  v18 = contentCopy;
  forceCopy = force;
  v19 = deviceCopy;
  v20 = completionCopy;
  v14 = completionCopy;
  v15 = deviceCopy;
  v16 = contentCopy;
  dispatch_async(dispatchQueue, block);
}

uint64_t __64__SFProximityClient__provideContent_forDevice_force_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)suppressDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __47__SFProximityClient_suppressDevice_completion___block_invoke;
  block[3] = &unk_1E788A570;
  block[4] = self;
  v12 = deviceCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = deviceCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_suppressDevice:(id)device completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFProximityClient <= 30 && (gLogCategory_SFProximityClient != -1 || _LogCategory_Initialize()))
  {
    [SFProximityClient _suppressDevice:completion:];
  }

  [(SFProximityClient *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  if (xpcCnx)
  {
    remoteObjectProxy = [(NSXPCConnection *)xpcCnx remoteObjectProxy];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __48__SFProximityClient__suppressDevice_completion___block_invoke;
    v12[3] = &unk_1E788B6D8;
    v13 = completionCopy;
    [remoteObjectProxy proximityClientSuppressDevice:deviceCopy completion:v12];

    v10 = v13;
  }

  else
  {
    if (([SFProximityClient _dismissContentForDevice:completionCopy completion:?]& 1) != 0)
    {
      goto LABEL_7;
    }

    v10 = v14;
  }

LABEL_7:
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __48__SFProximityClient__suppressDevice_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)stopSuppressingDevice:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __54__SFProximityClient_stopSuppressingDevice_completion___block_invoke;
  block[3] = &unk_1E788A570;
  block[4] = self;
  v12 = deviceCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = deviceCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_stopSuppressingDevice:(id)device completion:(id)completion
{
  v15 = *MEMORY[0x1E69E9840];
  deviceCopy = device;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFProximityClient <= 30 && (gLogCategory_SFProximityClient != -1 || _LogCategory_Initialize()))
  {
    [SFProximityClient _stopSuppressingDevice:completion:];
  }

  [(SFProximityClient *)self _ensureXPCStarted];
  xpcCnx = self->_xpcCnx;
  if (xpcCnx)
  {
    remoteObjectProxy = [(NSXPCConnection *)xpcCnx remoteObjectProxy];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __55__SFProximityClient__stopSuppressingDevice_completion___block_invoke;
    v12[3] = &unk_1E788B6D8;
    v13 = completionCopy;
    [remoteObjectProxy proximityClientStopSuppressingDevice:deviceCopy completion:v12];

    v10 = v13;
  }

  else
  {
    if (([SFProximityClient _dismissContentForDevice:completionCopy completion:?]& 1) != 0)
    {
      goto LABEL_7;
    }

    v10 = v14;
  }

LABEL_7:
  v11 = *MEMORY[0x1E69E9840];
}

uint64_t __55__SFProximityClient__stopSuppressingDevice_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)updateContent:(id)content forDevice:(id)device completion:(id)completion
{
  contentCopy = content;
  deviceCopy = device;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __56__SFProximityClient_updateContent_forDevice_completion___block_invoke;
  v15[3] = &unk_1E788B750;
  v15[4] = self;
  v16 = contentCopy;
  v17 = deviceCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = deviceCopy;
  v14 = contentCopy;
  dispatch_async(dispatchQueue, v15);
}

- (void)_updateContent:(id)content forDevice:(id)device completion:(id)completion
{
  v20 = *MEMORY[0x1E69E9840];
  contentCopy = content;
  deviceCopy = device;
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFProximityClient <= 30 && (gLogCategory_SFProximityClient != -1 || _LogCategory_Initialize()))
  {
    v15 = deviceCopy;
    v16 = contentCopy;
    LogPrintF();
  }

  [(SFProximityClient *)self _ensureXPCStarted:v15];
  xpcCnx = self->_xpcCnx;
  if (xpcCnx)
  {
    remoteObjectProxy = [(NSXPCConnection *)xpcCnx remoteObjectProxy];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __57__SFProximityClient__updateContent_forDevice_completion___block_invoke;
    v17[3] = &unk_1E788B6D8;
    v18 = completionCopy;
    [remoteObjectProxy proximityClientUpdateContent:contentCopy forDevice:deviceCopy completion:v17];

    v13 = v18;
  }

  else
  {
    if (([SFProximityClient _dismissContentForDevice:completionCopy completion:?]& 1) != 0)
    {
      goto LABEL_8;
    }

    v13 = v19;
  }

LABEL_8:
  v14 = *MEMORY[0x1E69E9840];
}

uint64_t __57__SFProximityClient__updateContent_forDevice_completion___block_invoke(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (void)requestScannerTimerReset
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __45__SFProximityClient_requestScannerTimerReset__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __45__SFProximityClient_requestScannerTimerReset__block_invoke(uint64_t a1)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (gLogCategory_SFProximityClient <= 30 && (gLogCategory_SFProximityClient != -1 || _LogCategory_Initialize()))
  {
    __45__SFProximityClient_requestScannerTimerReset__block_invoke_cold_1();
  }

  [*(a1 + 32) _ensureXPCStarted];
  v2 = *(*(a1 + 32) + 32);
  if (v2)
  {
    v5 = [v2 remoteObjectProxy];
    [v5 proximityClientRequestScannerTimerReset];
    v3 = *MEMORY[0x1E69E9840];
  }

  else
  {
    __45__SFProximityClient_requestScannerTimerReset__block_invoke_cold_2(&v6, v7);
    v4 = *MEMORY[0x1E69E9840];
  }
}

- (void)proximityClientDeviceEnteredImmediate:(id)immediate
{
  immediateCopy = immediate;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFProximityClient <= 30 && (gLogCategory_SFProximityClient != -1 || _LogCategory_Initialize()))
  {
    [SFProximityClient proximityClientDeviceEnteredImmediate:];
  }

  deviceEnteredImmediateHandler = self->_deviceEnteredImmediateHandler;
  v5 = immediateCopy;
  if (deviceEnteredImmediateHandler)
  {
    deviceEnteredImmediateHandler[2](deviceEnteredImmediateHandler, immediateCopy);
    v5 = immediateCopy;
  }
}

- (void)proximityClientDeviceExitedImmediate:(id)immediate
{
  immediateCopy = immediate;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFProximityClient <= 30 && (gLogCategory_SFProximityClient != -1 || _LogCategory_Initialize()))
  {
    [SFProximityClient proximityClientDeviceExitedImmediate:];
  }

  deviceExitedImmediateHandler = self->_deviceExitedImmediateHandler;
  v5 = immediateCopy;
  if (deviceExitedImmediateHandler)
  {
    deviceExitedImmediateHandler[2](deviceExitedImmediateHandler, immediateCopy);
    v5 = immediateCopy;
  }
}

- (void)proximityClientDeviceEnteredNearby:(id)nearby
{
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFProximityClient <= 30 && (gLogCategory_SFProximityClient != -1 || _LogCategory_Initialize()))
  {
    [SFProximityClient proximityClientDeviceEnteredNearby:];
  }

  deviceEnteredNearbyHandler = self->_deviceEnteredNearbyHandler;
  v5 = nearbyCopy;
  if (deviceEnteredNearbyHandler)
  {
    deviceEnteredNearbyHandler[2](deviceEnteredNearbyHandler, nearbyCopy);
    v5 = nearbyCopy;
  }
}

- (void)proximityClientDeviceExitedNearby:(id)nearby
{
  nearbyCopy = nearby;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFProximityClient <= 30 && (gLogCategory_SFProximityClient != -1 || _LogCategory_Initialize()))
  {
    [SFProximityClient proximityClientDeviceExitedNearby:];
  }

  deviceExitedNearbyHandler = self->_deviceExitedNearbyHandler;
  v5 = nearbyCopy;
  if (deviceExitedNearbyHandler)
  {
    deviceExitedNearbyHandler[2](deviceExitedNearbyHandler, nearbyCopy);
    v5 = nearbyCopy;
  }
}

- (void)proximityClientDeviceWasDismissedHandler:(id)handler reason:(int64_t)reason
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFProximityClient <= 30 && (gLogCategory_SFProximityClient != -1 || _LogCategory_Initialize()))
  {
    [SFProximityClient proximityClientDeviceWasDismissedHandler:reason reason:?];
  }

  deviceWasDismissedHandlerEx = self->_deviceWasDismissedHandlerEx;
  v7 = handlerCopy;
  if (deviceWasDismissedHandlerEx)
  {
    deviceWasDismissedHandlerEx[2](deviceWasDismissedHandlerEx, handlerCopy, reason);
    v7 = handlerCopy;
  }
}

- (void)proximityClientDeviceWasSelectedHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFProximityClient <= 30 && (gLogCategory_SFProximityClient != -1 || _LogCategory_Initialize()))
  {
    [SFProximityClient proximityClientDeviceWasSelectedHandler:];
  }

  deviceWasSelectedHandler = self->_deviceWasSelectedHandler;
  v5 = handlerCopy;
  if (deviceWasSelectedHandler)
  {
    deviceWasSelectedHandler[2](deviceWasSelectedHandler, handlerCopy);
    v5 = handlerCopy;
  }
}

- (void)proximityClientDeviceDidUntriggerHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFProximityClient <= 30 && (gLogCategory_SFProximityClient != -1 || _LogCategory_Initialize()))
  {
    [SFProximityClient proximityClientDeviceDidUntriggerHandler:];
  }

  deviceDidUntriggerHandler = self->_deviceDidUntriggerHandler;
  v5 = handlerCopy;
  if (deviceDidUntriggerHandler)
  {
    deviceDidUntriggerHandler[2](deviceDidUntriggerHandler, handlerCopy);
    v5 = handlerCopy;
  }
}

- (void)proximityClientDeviceWillTriggerHandler:(id)handler
{
  handlerCopy = handler;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFProximityClient <= 30 && (gLogCategory_SFProximityClient != -1 || _LogCategory_Initialize()))
  {
    [SFProximityClient proximityClientDeviceWillTriggerHandler:];
  }

  deviceWillTriggerHandler = self->_deviceWillTriggerHandler;
  v5 = handlerCopy;
  if (deviceWillTriggerHandler)
  {
    deviceWillTriggerHandler[2](deviceWillTriggerHandler, handlerCopy);
    v5 = handlerCopy;
  }
}

- (void)proximityClientDeviceUpdated:(id)updated rssi:(int64_t)rssi state:(int64_t)state
{
  updatedCopy = updated;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (gLogCategory_SFProximityClient <= 30 && (gLogCategory_SFProximityClient != -1 || _LogCategory_Initialize()))
  {
    [SFProximityClient proximityClientDeviceUpdated:rssi:state:];
  }

  deviceUpdateHandler = self->_deviceUpdateHandler;
  v9 = updatedCopy;
  if (deviceUpdateHandler)
  {
    deviceUpdateHandler[2](deviceUpdateHandler, updatedCopy, rssi, state);
    v9 = updatedCopy;
  }
}

- (SFProximityClient)initWithCoder:(id)coder
{
  coderCopy = coder;
  v13.receiver = self;
  v13.super_class = SFProximityClient;
  v5 = [(SFProximityClient *)&v13 init];
  v6 = v5;
  if (v5)
  {
    v7 = SFMainQueue(v5);
    dispatchQueue = v6->_dispatchQueue;
    v6->_dispatchQueue = v7;

    v9 = coderCopy;
    if ([v9 containsValueForKey:@"sa"])
    {
      v6->_shouldAdvertise = [v9 decodeBoolForKey:@"sa"];
    }

    v10 = v9;
    if ([v10 containsValueForKey:@"wu"])
    {
      v6->_wantsUpdates = [v10 decodeBoolForKey:@"wu"];
    }

    v11 = v6;
  }

  return v6;
}

- (uint64_t)_dismissContentForDevice:(uint64_t)a1 completion:.cold.2(uint64_t a1)
{
  if (!a1)
  {
    return 1;
  }

  OUTLINED_FUNCTION_2_5();
  v3 = *MEMORY[0x1E696A768];
  *v4 = *MEMORY[0x1E696A578];
  OUTLINED_FUNCTION_6_1();
  v5 = [OUTLINED_FUNCTION_8() stringWithUTF8String:?];
  OUTLINED_FUNCTION_3_3(v5, @"?");
  OUTLINED_FUNCTION_4_3();
  [v6 dictionaryWithObjects:? forKeys:? count:?];
  objc_claimAutoreleasedReturnValue();
  [OUTLINED_FUNCTION_0_6() errorWithDomain:? code:? userInfo:?];
  objc_claimAutoreleasedReturnValue();
  v7 = OUTLINED_FUNCTION_1_6();
  v8(v7);

  return 0;
}

void __45__SFProximityClient_requestScannerTimerReset__block_invoke_cold_2(void *a1, __CFString **a2)
{
  if (gLogCategory_SFProximityClient <= 90 && (gLogCategory_SFProximityClient != -1 || _LogCategory_Initialize()))
  {
    v4 = MEMORY[0x1E696ABC0];
    v5 = *MEMORY[0x1E696A768];
    *a1 = *MEMORY[0x1E696A578];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:OUTLINED_FUNCTION_6_1()];
    v7 = v6;
    v8 = @"?";
    if (v6)
    {
      v8 = v6;
    }

    *a2 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:a2 forKeys:a1 count:1];
    v10 = [v4 errorWithDomain:v5 code:-6753 userInfo:v9];
    LogPrintF();
  }
}

- (uint64_t)proximityClientDeviceWasDismissedHandler:(uint64_t)a1 reason:.cold.1(uint64_t a1)
{
  if ((a1 - 1) <= 3)
  {
    v1 = off_1E788B770[a1 - 1];
  }

  return LogPrintF();
}

@end