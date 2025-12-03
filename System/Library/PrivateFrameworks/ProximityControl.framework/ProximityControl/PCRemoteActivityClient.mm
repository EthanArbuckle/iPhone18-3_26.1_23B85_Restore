@interface PCRemoteActivityClient
- (PCRemoteActivityClient)init;
- (PCRemoteActivityClient)initWithCoder:(id)coder;
- (id)userActivitySetFromData:(id)data;
- (void)_activateWithCompletion:(id)completion;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)_xpcEnsureStarted;
- (void)_xpcEnsureStopped;
- (void)activateWithCompletion:(id)completion;
- (void)dealloc;
- (void)interrupted;
- (void)invalidate;
- (void)startObservingHomeKitIdentifier:(id)identifier;
- (void)startObservingMediaRemoteIdentifier:(id)identifier;
- (void)stopObservingAllDevices;
- (void)stopObservingHomeKitIdentifier:(id)identifier;
- (void)stopObservingMediaRemoteIdentifier:(id)identifier;
- (void)updateHomeKitID:(id)d mediaRemoteID:(id)iD withActivities:(id)activities disambiguationContext:(id)context;
- (void)updateHomeKitID:(id)d withActivities:(id)activities disambiguationContext:(id)context;
- (void)updateMediaRemoteID:(id)d withActivities:(id)activities disambiguationContext:(id)context;
- (void)userTappedCloseButton;
- (void)userTappedDisambiguationButton:(id)button;
@end

@implementation PCRemoteActivityClient

- (void)dealloc
{
  interruptionHandler = self->_interruptionHandler;
  self->_interruptionHandler = 0;

  invalidationHandler = self->_invalidationHandler;
  self->_invalidationHandler = 0;

  updateHandler = self->_updateHandler;
  self->_updateHandler = 0;

  ucat = self->_ucat;
  if (ucat && (ucat->var3 & 0x40000) != 0)
  {
    LogCategory_Remove();
    self->_ucat = 0;
  }

  v7.receiver = self;
  v7.super_class = PCRemoteActivityClient;
  [(PCRemoteActivityClient *)&v7 dealloc];
}

- (PCRemoteActivityClient)init
{
  v7.receiver = self;
  v7.super_class = PCRemoteActivityClient;
  v2 = [(PCRemoteActivityClient *)&v7 init];
  if (v2)
  {
    v2->_ucat = LogCategoryCreateEx();
    v3 = CUMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v3;

    v5 = v2;
  }

  return v2;
}

- (void)interrupted
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__PCRemoteActivityClient_interrupted__block_invoke;
  block[3] = &unk_279AD19B8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_interrupted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = MEMORY[0x2666FB170](self->_interruptionHandler);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)_xpcEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_xpcCnx)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2873A8230];
    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2873A8410];
    v5 = objc_alloc(MEMORY[0x277CCAE80]);
    v6 = [v5 initWithMachServiceName:PCXPCLaunchingServiceName[0] options:0];
    [v6 _setQueue:self->_dispatchQueue];
    [v6 setExportedInterface:v3];
    [v6 setExportedObject:self];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __43__PCRemoteActivityClient__xpcEnsureStarted__block_invoke;
    v10[3] = &unk_279AD19B8;
    v10[4] = self;
    [v6 setInterruptionHandler:v10];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__PCRemoteActivityClient__xpcEnsureStarted__block_invoke_2;
    v9[3] = &unk_279AD19B8;
    v9[4] = self;
    [v6 setInvalidationHandler:v9];
    [v6 setRemoteObjectInterface:v4];
    [v6 resume];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v6;
    v8 = v6;
  }
}

- (void)_xpcEnsureStopped
{
  xpcCnx = self->_xpcCnx;
  if (xpcCnx)
  {
    v5 = xpcCnx;
    if (objc_opt_respondsToSelector())
    {
      [(NSXPCProxyCreating *)v5 invalidate];
    }

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
  v7[2] = __49__PCRemoteActivityClient_activateWithCompletion___block_invoke;
  v7[3] = &unk_279AD19E0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(PCRemoteActivityClient *)self _xpcEnsureStarted];
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

    LogPrintF();
  }

LABEL_5:
  xpcCnx = self->_xpcCnx;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__PCRemoteActivityClient__activateWithCompletion___block_invoke;
  v13[3] = &unk_279AD1C20;
  v13[4] = self;
  v7 = completionCopy;
  v14 = v7;
  v8 = [(NSXPCProxyCreating *)xpcCnx remoteObjectProxyWithErrorHandler:v13];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __50__PCRemoteActivityClient__activateWithCompletion___block_invoke_2;
  v11[3] = &unk_279AD1AD8;
  v12 = v7;
  v9 = v7;
  [v8 client:self activateWithCompletion:v11];
}

void __50__PCRemoteActivityClient__activateWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *v4[1];
  v11 = v3;
  if (v5 <= 90)
  {
    if (v5 != -1)
    {
LABEL_3:
      v10 = v3;
      LogPrintF();
      v4 = *(a1 + 32);
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v6)
    {
      v9 = v4[1];
      v3 = v11;
      goto LABEL_3;
    }
  }

LABEL_5:
  [v4 invalidate];
  v7 = MEMORY[0x2666FB170](*(a1 + 40));
  v8 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, v11);
  }
}

void __50__PCRemoteActivityClient__activateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x2666FB170](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __36__PCRemoteActivityClient_invalidate__block_invoke;
  block[3] = &unk_279AD19B8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(PCRemoteActivityClient *)self _xpcEnsureStopped];

  [(PCRemoteActivityClient *)self _invalidated];
}

- (void)_invalidated
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v3 = MEMORY[0x2666FB170](self->_invalidationHandler);
  if (v3)
  {
    v4 = v3;
    v3[2]();
    v3 = v4;
  }
}

- (void)startObservingHomeKitIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__PCRemoteActivityClient_startObservingHomeKitIdentifier___block_invoke;
  v7[3] = &unk_279AD1A30;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(dispatchQueue, v7);
}

void __58__PCRemoteActivityClient_startObservingHomeKitIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2[1];
  if (v3 <= 50)
  {
    if (v3 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_5;
      }

      v8 = v2[1];
    }

    v9 = *(a1 + 40);
    LogPrintF();
    v2 = *(a1 + 32);
  }

LABEL_5:
  [v2 _xpcEnsureStarted];
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __58__PCRemoteActivityClient_startObservingHomeKitIdentifier___block_invoke_2;
  v10[3] = &unk_279AD1A08;
  v10[4] = v5;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v10];
  [v7 startObservingHomeKitIdentifier:*(a1 + 40)];
}

void __58__PCRemoteActivityClient_startObservingHomeKitIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *v4[1];
  v9 = v3;
  if (v5 <= 90)
  {
    if (v5 != -1)
    {
LABEL_3:
      v8 = v3;
      LogPrintF();
      v4 = *(a1 + 32);
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v6)
    {
      v7 = v4[1];
      v3 = v9;
      goto LABEL_3;
    }
  }

LABEL_5:
  [v4 invalidate];
}

- (void)stopObservingHomeKitIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__PCRemoteActivityClient_stopObservingHomeKitIdentifier___block_invoke;
  v7[3] = &unk_279AD1A30;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(dispatchQueue, v7);
}

void __57__PCRemoteActivityClient_stopObservingHomeKitIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2[1];
  if (v3 <= 50)
  {
    if (v3 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_5;
      }

      v8 = v2[1];
    }

    v9 = *(a1 + 40);
    LogPrintF();
    v2 = *(a1 + 32);
  }

LABEL_5:
  [v2 _xpcEnsureStarted];
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __57__PCRemoteActivityClient_stopObservingHomeKitIdentifier___block_invoke_2;
  v10[3] = &unk_279AD1A08;
  v10[4] = v5;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v10];
  [v7 stopObservingHomeKitIdentifier:*(a1 + 40)];
}

void __57__PCRemoteActivityClient_stopObservingHomeKitIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *v4[1];
  v9 = v3;
  if (v5 <= 90)
  {
    if (v5 != -1)
    {
LABEL_3:
      v8 = v3;
      LogPrintF();
      v4 = *(a1 + 32);
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v6)
    {
      v7 = v4[1];
      v3 = v9;
      goto LABEL_3;
    }
  }

LABEL_5:
  [v4 invalidate];
}

- (void)startObservingMediaRemoteIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __62__PCRemoteActivityClient_startObservingMediaRemoteIdentifier___block_invoke;
  v7[3] = &unk_279AD1A30;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(dispatchQueue, v7);
}

void __62__PCRemoteActivityClient_startObservingMediaRemoteIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2[1];
  if (v3 <= 50)
  {
    if (v3 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_5;
      }

      v8 = v2[1];
    }

    v9 = *(a1 + 40);
    LogPrintF();
    v2 = *(a1 + 32);
  }

LABEL_5:
  [v2 _xpcEnsureStarted];
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __62__PCRemoteActivityClient_startObservingMediaRemoteIdentifier___block_invoke_2;
  v10[3] = &unk_279AD1A08;
  v10[4] = v5;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v10];
  [v7 startObservingMediaRemoteIdentifier:*(a1 + 40)];
}

void __62__PCRemoteActivityClient_startObservingMediaRemoteIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *v4[1];
  v9 = v3;
  if (v5 <= 90)
  {
    if (v5 != -1)
    {
LABEL_3:
      v8 = v3;
      LogPrintF();
      v4 = *(a1 + 32);
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v6)
    {
      v7 = v4[1];
      v3 = v9;
      goto LABEL_3;
    }
  }

LABEL_5:
  [v4 invalidate];
}

- (void)stopObservingMediaRemoteIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __61__PCRemoteActivityClient_stopObservingMediaRemoteIdentifier___block_invoke;
  v7[3] = &unk_279AD1A30;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(dispatchQueue, v7);
}

void __61__PCRemoteActivityClient_stopObservingMediaRemoteIdentifier___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2[1];
  if (v3 <= 50)
  {
    if (v3 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_5;
      }

      v8 = v2[1];
    }

    v9 = *(a1 + 40);
    LogPrintF();
    v2 = *(a1 + 32);
  }

LABEL_5:
  [v2 _xpcEnsureStarted];
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __61__PCRemoteActivityClient_stopObservingMediaRemoteIdentifier___block_invoke_2;
  v10[3] = &unk_279AD1A08;
  v10[4] = v5;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v10];
  [v7 stopObservingMediaRemoteIdentifier:*(a1 + 40)];
}

void __61__PCRemoteActivityClient_stopObservingMediaRemoteIdentifier___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *v4[1];
  v9 = v3;
  if (v5 <= 90)
  {
    if (v5 != -1)
    {
LABEL_3:
      v8 = v3;
      LogPrintF();
      v4 = *(a1 + 32);
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v6)
    {
      v7 = v4[1];
      v3 = v9;
      goto LABEL_3;
    }
  }

LABEL_5:
  [v4 invalidate];
}

- (void)stopObservingAllDevices
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PCRemoteActivityClient_stopObservingAllDevices__block_invoke;
  block[3] = &unk_279AD19B8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __49__PCRemoteActivityClient_stopObservingAllDevices__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2[1];
  if (v3 <= 50)
  {
    if (v3 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_5;
      }

      v8 = v2[1];
    }

    LogPrintF();
    v2 = *(a1 + 32);
  }

LABEL_5:
  [v2 _xpcEnsureStarted];
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __49__PCRemoteActivityClient_stopObservingAllDevices__block_invoke_2;
  v9[3] = &unk_279AD1A08;
  v9[4] = v5;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v9];
  [v7 stopObservingAllDevices];
}

void __49__PCRemoteActivityClient_stopObservingAllDevices__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *v4[1];
  v9 = v3;
  if (v5 <= 90)
  {
    if (v5 != -1)
    {
LABEL_3:
      v8 = v3;
      LogPrintF();
      v4 = *(a1 + 32);
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v6)
    {
      v7 = v4[1];
      v3 = v9;
      goto LABEL_3;
    }
  }

LABEL_5:
  [v4 invalidate];
}

- (void)userTappedCloseButton
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __47__PCRemoteActivityClient_userTappedCloseButton__block_invoke;
  block[3] = &unk_279AD19B8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __47__PCRemoteActivityClient_userTappedCloseButton__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2[1];
  if (v3 <= 50)
  {
    if (v3 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_5;
      }

      v8 = v2[1];
    }

    LogPrintF();
    v2 = *(a1 + 32);
  }

LABEL_5:
  [v2 _xpcEnsureStarted];
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __47__PCRemoteActivityClient_userTappedCloseButton__block_invoke_2;
  v9[3] = &unk_279AD1A08;
  v9[4] = v5;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v9];
  [v7 userTappedCloseButton];
}

void __47__PCRemoteActivityClient_userTappedCloseButton__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *v4[1];
  v9 = v3;
  if (v5 <= 90)
  {
    if (v5 != -1)
    {
LABEL_3:
      v8 = v3;
      LogPrintF();
      v4 = *(a1 + 32);
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v6)
    {
      v7 = v4[1];
      v3 = v9;
      goto LABEL_3;
    }
  }

LABEL_5:
  [v4 invalidate];
}

- (void)userTappedDisambiguationButton:(id)button
{
  buttonCopy = button;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__PCRemoteActivityClient_userTappedDisambiguationButton___block_invoke;
  v7[3] = &unk_279AD1A30;
  v7[4] = self;
  v8 = buttonCopy;
  v6 = buttonCopy;
  dispatch_async(dispatchQueue, v7);
}

void __57__PCRemoteActivityClient_userTappedDisambiguationButton___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *v2[1];
  if (v3 <= 50)
  {
    if (v3 == -1)
    {
      v4 = _LogCategory_Initialize();
      v2 = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_5;
      }

      v8 = v2[1];
    }

    LogPrintF();
    v2 = *(a1 + 32);
  }

LABEL_5:
  [v2 _xpcEnsureStarted];
  v5 = *(a1 + 32);
  v6 = *(v5 + 80);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__PCRemoteActivityClient_userTappedDisambiguationButton___block_invoke_2;
  v9[3] = &unk_279AD1A08;
  v9[4] = v5;
  v7 = [v6 remoteObjectProxyWithErrorHandler:v9];
  [v7 userTappedDisambiguationButton:*(a1 + 40)];
}

void __57__PCRemoteActivityClient_userTappedDisambiguationButton___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *v4[1];
  v9 = v3;
  if (v5 <= 90)
  {
    if (v5 != -1)
    {
LABEL_3:
      v8 = v3;
      LogPrintF();
      v4 = *(a1 + 32);
      goto LABEL_5;
    }

    v6 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v6)
    {
      v7 = v4[1];
      v3 = v9;
      goto LABEL_3;
    }
  }

LABEL_5:
  [v4 invalidate];
}

- (void)updateHomeKitID:(id)d mediaRemoteID:(id)iD withActivities:(id)activities disambiguationContext:(id)context
{
  dCopy = d;
  iDCopy = iD;
  activitiesCopy = activities;
  contextCopy = context;
  if (dCopy)
  {
    var0 = self->_ucat->var0;
    if (var0 > 30)
    {
      goto LABEL_10;
    }

    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
LABEL_10:
        [(PCRemoteActivityClient *)self updateHomeKitID:dCopy withActivities:activitiesCopy disambiguationContext:contextCopy];
        if (!iDCopy)
        {
          goto LABEL_16;
        }

LABEL_11:
        v15 = self->_ucat->var0;
        if (v15 <= 30)
        {
          if (v15 == -1)
          {
            if (!_LogCategory_Initialize())
            {
              goto LABEL_15;
            }

            ucat = self->_ucat;
          }

          LogPrintF();
        }

LABEL_15:
        [(PCRemoteActivityClient *)self updateMediaRemoteID:iDCopy withActivities:activitiesCopy disambiguationContext:contextCopy];
        goto LABEL_16;
      }

      v17 = self->_ucat;
    }

    LogPrintF();
    goto LABEL_10;
  }

  if (iDCopy)
  {
    goto LABEL_11;
  }

  v14 = self->_ucat->var0;
  if (v14 > 90)
  {
    goto LABEL_16;
  }

  if (v14 != -1)
  {
LABEL_8:
    LogPrintF();
    goto LABEL_16;
  }

  if (_LogCategory_Initialize())
  {
    v16 = self->_ucat;
    goto LABEL_8;
  }

LABEL_16:
}

- (void)updateHomeKitID:(id)d withActivities:(id)activities disambiguationContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  v9 = [(PCRemoteActivityClient *)self userActivitySetFromData:activities];
  v10 = MEMORY[0x2666FB170](self->_homeKitUpdateHandler);
  v11 = v10;
  if (v10)
  {
    (*(v10 + 16))(v10, dCopy, v9, contextCopy);
    goto LABEL_10;
  }

  v12 = MEMORY[0x2666FB170](self->_updateHandler);
  if (v12)
  {
    var0 = self->_ucat->var0;
    v14 = dCopy;
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        v15 = _LogCategory_Initialize();
        v14 = dCopy;
        if (!v15)
        {
          goto LABEL_8;
        }

        ucat = self->_ucat;
      }

      LogPrintF();
      v14 = dCopy;
    }

LABEL_8:
    (v12)[2](v12, v14, v9, contextCopy);
  }

LABEL_10:
}

- (void)updateMediaRemoteID:(id)d withActivities:(id)activities disambiguationContext:(id)context
{
  dCopy = d;
  activitiesCopy = activities;
  contextCopy = context;
  v10 = MEMORY[0x2666FB170](self->_mediaRemoteUpdateHandler);
  if (v10)
  {
    v11 = [(PCRemoteActivityClient *)self userActivitySetFromData:activitiesCopy];
    (v10)[2](v10, dCopy, v11, contextCopy);

    goto LABEL_7;
  }

  var0 = self->_ucat->var0;
  if (var0 <= 60)
  {
    if (var0 != -1)
    {
LABEL_5:
      LogPrintF();
      goto LABEL_7;
    }

    if (_LogCategory_Initialize())
    {
      ucat = self->_ucat;
      goto LABEL_5;
    }
  }

LABEL_7:
}

- (id)userActivitySetFromData:(id)data
{
  v21 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v4 = objc_opt_new();
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = dataCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = objc_alloc(MEMORY[0x277CCAE58]);
        v12 = [v11 _initWithUserActivityData:{v10, v16}];
        if (v12)
        {
          v13 = [PCActivityUtility activityFrom:v12];
          if (v13)
          {
            [v4 addObject:v13];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v14 = *MEMORY[0x277D85DE8];

  return v4;
}

- (PCRemoteActivityClient)initWithCoder:(id)coder
{
  v3 = [(PCRemoteActivityClient *)self init];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  return v4;
}

@end