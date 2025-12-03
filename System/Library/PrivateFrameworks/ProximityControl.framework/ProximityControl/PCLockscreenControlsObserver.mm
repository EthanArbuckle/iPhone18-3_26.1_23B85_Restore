@interface PCLockscreenControlsObserver
- (PCLockscreenControlsObserver)init;
- (PCLockscreenControlsObserver)initWithCoder:(id)coder;
- (id)knownDevices;
- (void)_interrupted;
- (void)_invalidateWithError:(id)error;
- (void)_xpcEnsureStarted;
- (void)_xpcEnsureStopped;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)deviceLost:(id)lost;
- (void)deviceUpdated:(id)updated;
- (void)didSwitchRouteToDevice:(id)device;
- (void)encodeWithCoder:(id)coder;
- (void)invalidate;
@end

@implementation PCLockscreenControlsObserver

- (PCLockscreenControlsObserver)init
{
  v13.receiver = self;
  v13.super_class = PCLockscreenControlsObserver;
  v2 = [(PCLockscreenControlsObserver *)&v13 init];
  if (v2)
  {
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v2->_ucat = LogCategoryCreateEx();
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    processName = [processInfo processName];

    processInfo2 = [MEMORY[0x277CCAC38] processInfo];
    processIdentifier = [processInfo2 processIdentifier];

    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%d", processName, processIdentifier];

    processName = v2->_processName;
    v2->_processName = v9;

    v11 = v2;
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

  deviceLost = self->_deviceLost;
  self->_deviceLost = 0;

  deviceUpdated = self->_deviceUpdated;
  self->_deviceUpdated = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  v7.receiver = self;
  v7.super_class = PCLockscreenControlsObserver;
  [(PCLockscreenControlsObserver *)&v7 dealloc];
}

- (void)_interrupted
{
  v3 = NSErrorWithOSStatusF();
  [(PCLockscreenControlsObserver *)self _invalidateWithError:v3];
}

- (void)_xpcEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_xpcCnx)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2873A82F0];
    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2873A8470];
    v5 = objc_alloc(MEMORY[0x277CCAE80]);
    v6 = [v5 initWithMachServiceName:PCXPCServiceName options:0];
    [(NSXPCConnection *)v6 _setQueue:self->_dispatchQueue];
    [(NSXPCConnection *)v6 setExportedInterface:v3];
    [(NSXPCConnection *)v6 setExportedObject:self];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __49__PCLockscreenControlsObserver__xpcEnsureStarted__block_invoke;
    v11[3] = &unk_279AD19B8;
    v11[4] = self;
    [(NSXPCConnection *)v6 setInterruptionHandler:v11];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __49__PCLockscreenControlsObserver__xpcEnsureStarted__block_invoke_2;
    v10[3] = &unk_279AD19B8;
    v10[4] = self;
    [(NSXPCConnection *)v6 setInvalidationHandler:v10];
    [(NSXPCConnection *)v6 setRemoteObjectInterface:v4];
    _xpcConnection = [(NSXPCConnection *)v6 _xpcConnection];
    xpc_connection_set_non_launching();

    [(NSXPCConnection *)v6 resume];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v6;
    v9 = v6;
  }
}

void __49__PCLockscreenControlsObserver__xpcEnsureStarted__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = NSErrorWithOSStatusF();
  [v1 _invalidateWithError:v2];
}

- (void)_xpcEnsureStopped
{
  xpcCnx = self->_xpcCnx;
  if (xpcCnx)
  {
    [(NSXPCConnection *)xpcCnx invalidate];
    v4 = self->_xpcCnx;
    self->_xpcCnx = 0;
  }
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__PCLockscreenControlsObserver_activateWithCompletion___block_invoke;
  v7[3] = &unk_279AD19E0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __55__PCLockscreenControlsObserver_activateWithCompletion___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (*(v2 + 8) == 1)
  {
    v3 = MEMORY[0x2666FB170](*(a1 + 40));
    if (v3)
    {
      v11 = v3;
      v4 = NSErrorWithOSStatusF();
      v11[2](v11, v4);

      v3 = v11;
    }

    return;
  }

  *(v2 + 8) = 1;
  [*(a1 + 32) _xpcEnsureStarted];
  v5 = *(a1 + 32);
  v6 = **(v5 + 32);
  if (v6 <= 30)
  {
    if (v6 == -1)
    {
      v7 = _LogCategory_Initialize();
      v5 = *(a1 + 32);
      if (!v7)
      {
        goto LABEL_11;
      }

      v10 = *(v5 + 32);
    }

    LogPrintF();
    v5 = *(a1 + 32);
  }

LABEL_11:
  v8 = [*(v5 + 40) remoteObjectProxy];
  [v8 activateObserver:*(a1 + 32)];

  v9 = *(*(a1 + 40) + 16);

  v9();
}

- (void)didSwitchRouteToDevice:(id)device
{
  deviceCopy = device;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__PCLockscreenControlsObserver_didSwitchRouteToDevice___block_invoke;
  v7[3] = &unk_279AD1A30;
  v7[4] = self;
  v8 = deviceCopy;
  v6 = deviceCopy;
  dispatch_async(dispatchQueue, v7);
}

void __55__PCLockscreenControlsObserver_didSwitchRouteToDevice___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2[4];
  if (v3 <= 30)
  {
    if (v3 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_5;
      }

      v8 = v2[4];
    }

    v9 = *(a1 + 40);
    LogPrintF();
    v2 = *(a1 + 32);
  }

LABEL_5:
  [v2 _xpcEnsureStarted];
  v5 = *(a1 + 32);
  v6 = *(v5 + 40);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__PCLockscreenControlsObserver_didSwitchRouteToDevice___block_invoke_2;
  v10[3] = &unk_279AD1A08;
  v10[4] = v5;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v10];
  [v7 didSwitchRouteToDevice:*(a1 + 40)];
}

uint64_t __55__PCLockscreenControlsObserver_didSwitchRouteToDevice___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(*(a1 + 32) + 32);
  if (*v4 <= 90)
  {
    v7 = v3;
    if (*v4 != -1)
    {
LABEL_3:
      v4 = LogPrintF();
      v3 = v7;
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v3 = v7;
    if (v4)
    {
      v5 = *(*(a1 + 32) + 32);
      goto LABEL_3;
    }
  }

LABEL_5:

  return MEMORY[0x2821F96F8](v4, v3);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __42__PCLockscreenControlsObserver_invalidate__block_invoke;
  block[3] = &unk_279AD19B8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidateWithError:(id)error
{
  errorCopy = error;
  if (self->_invalidated)
  {
    goto LABEL_9;
  }

  v9 = errorCopy;
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
  dispatch_assert_queue_V2(self->_dispatchQueue);
  self->_invalidated = 1;
  [(PCLockscreenControlsObserver *)self _xpcEnsureStopped];
  v6 = MEMORY[0x2666FB170](self->_invalidationHandler);
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, v9);
  }

  errorCopy = v9;
LABEL_9:
}

- (id)knownDevices
{
  devices = self->_devices;
  if (devices)
  {
    allValues = [(NSMutableDictionary *)devices allValues];
  }

  else
  {
    allValues = MEMORY[0x277CBEBF8];
  }

  return allValues;
}

- (PCLockscreenControlsObserver)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(PCLockscreenControlsObserver *)self init];
  if (v5)
  {
    objc_opt_class();
    NSDecodeObjectIfPresent();
    v6 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  processName = self->_processName;
  if (processName)
  {
    [coder encodeObject:processName forKey:@"pn"];
  }
}

- (void)deviceLost:(id)lost
{
  lostCopy = lost;
  var0 = self->_ucat->var0;
  v13 = lostCopy;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      v12 = lostCopy;
      LogPrintF();
      lostCopy = v13;
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    lostCopy = v13;
    if (v6)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  devices = self->_devices;
  mediaRouteID = [lostCopy mediaRouteID];
  [(NSMutableDictionary *)devices removeObjectForKey:mediaRouteID];

  v9 = MEMORY[0x2666FB170](self->_deviceLost);
  v10 = v9;
  if (v9)
  {
    (*(v9 + 16))(v9, v13);
  }
}

- (void)deviceUpdated:(id)updated
{
  updatedCopy = updated;
  var0 = self->_ucat->var0;
  v15 = updatedCopy;
  if (var0 <= 30)
  {
    if (var0 != -1)
    {
LABEL_3:
      v14 = updatedCopy;
      LogPrintF();
      updatedCopy = v15;
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    updatedCopy = v15;
    if (v6)
    {
      ucat = self->_ucat;
      goto LABEL_3;
    }
  }

LABEL_5:
  devices = self->_devices;
  if (!devices)
  {
    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v9 = self->_devices;
    self->_devices = v8;

    updatedCopy = v15;
    devices = self->_devices;
  }

  mediaRouteID = [updatedCopy mediaRouteID];
  [(NSMutableDictionary *)devices setObject:v15 forKeyedSubscript:mediaRouteID];

  v11 = MEMORY[0x2666FB170](self->_deviceUpdated);
  v12 = v11;
  if (v11)
  {
    (*(v11 + 16))(v11, v15);
  }
}

@end