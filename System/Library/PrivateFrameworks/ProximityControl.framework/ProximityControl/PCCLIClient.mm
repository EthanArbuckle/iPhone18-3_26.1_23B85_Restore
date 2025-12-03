@interface PCCLIClient
- (PCCLIClientDelegate)delegate;
- (void)_activateWithCompletion:(id)completion;
- (void)_interrupted;
- (void)_invalidate;
- (void)_invalidated;
- (void)_wakingXPCEnsureStarted;
- (void)_xpcEnsureStarted;
- (void)activateWithCompletion:(id)completion;
- (void)didProvideState:(id)state;
- (void)dismissBannerWithCompletion:(id)completion;
- (void)invalidate;
- (void)presentBannerWithCompletion:(id)completion;
- (void)requestState;
- (void)setBannerScaleProgress:(float)progress completion:(id)completion;
- (void)stateWithCompletion:(id)completion;
- (void)tapBannerWithCompletion:(id)completion;
- (void)triggerHandoffFeedbackAlertWithCompletion:(id)completion;
- (void)updateLockscreenMediaThresholdWithCompletion:(id)completion;
@end

@implementation PCCLIClient

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__PCCLIClient_activateWithCompletion___block_invoke;
  v7[3] = &unk_279AD19E0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)completion
{
  dispatchQueue = self->_dispatchQueue;
  completionCopy = completion;
  dispatch_assert_queue_V2(dispatchQueue);
  [(PCCLIClient *)self _xpcEnsureStarted];
  v7 = MEMORY[0x2666FB170](completionCopy);

  v6 = v7;
  if (v7)
  {
    (*(v7 + 16))(v7, 0);
    v6 = v7;
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __25__PCCLIClient_invalidate__block_invoke;
  block[3] = &unk_279AD19B8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  [(NSXPCConnection *)self->_xpcCnx invalidate];
  xpcCnx = self->_xpcCnx;
  self->_xpcCnx = 0;

  [(PCCLIClient *)self _invalidated];
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

- (void)_wakingXPCEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_wakingXPCCnx)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2873A9238];
    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2873A9298];
    v5 = objc_alloc(MEMORY[0x277CCAE80]);
    v6 = [v5 initWithMachServiceName:PCXPCLaunchingServiceName[0] options:0];
    wakingXPCCnx = self->_wakingXPCCnx;
    self->_wakingXPCCnx = v6;

    [(NSXPCConnection *)self->_wakingXPCCnx _setQueue:self->_dispatchQueue];
    [(NSXPCConnection *)self->_wakingXPCCnx setExportedInterface:v3];
    [(NSXPCConnection *)self->_wakingXPCCnx setExportedObject:self];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __38__PCCLIClient__wakingXPCEnsureStarted__block_invoke;
    v9[3] = &unk_279AD19B8;
    v9[4] = self;
    [(NSXPCConnection *)self->_wakingXPCCnx setInterruptionHandler:v9];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __38__PCCLIClient__wakingXPCEnsureStarted__block_invoke_2;
    v8[3] = &unk_279AD19B8;
    v8[4] = self;
    [(NSXPCConnection *)self->_wakingXPCCnx setInvalidationHandler:v8];
    [(NSXPCConnection *)self->_wakingXPCCnx setRemoteObjectInterface:v4];
    [(NSXPCConnection *)self->_wakingXPCCnx resume];
  }
}

- (void)_xpcEnsureStarted
{
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (!self->_xpcCnx)
  {
    v3 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2873A9238];
    v4 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_2873A9298];
    v5 = objc_alloc(MEMORY[0x277CCAE80]);
    v6 = [v5 initWithMachServiceName:PCXPCServiceName options:0];
    xpcCnx = self->_xpcCnx;
    self->_xpcCnx = v6;

    [(NSXPCConnection *)self->_xpcCnx _setQueue:self->_dispatchQueue];
    [(NSXPCConnection *)self->_xpcCnx setExportedInterface:v3];
    [(NSXPCConnection *)self->_xpcCnx setExportedObject:self];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __32__PCCLIClient__xpcEnsureStarted__block_invoke;
    v10[3] = &unk_279AD19B8;
    v10[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInterruptionHandler:v10];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __32__PCCLIClient__xpcEnsureStarted__block_invoke_2;
    v9[3] = &unk_279AD19B8;
    v9[4] = self;
    [(NSXPCConnection *)self->_xpcCnx setInvalidationHandler:v9];
    [(NSXPCConnection *)self->_xpcCnx setRemoteObjectInterface:v4];
    _xpcConnection = [(NSXPCConnection *)self->_xpcCnx _xpcConnection];
    xpc_connection_set_non_launching();

    [(NSXPCConnection *)self->_xpcCnx resume];
  }
}

- (void)dismissBannerWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__PCCLIClient_dismissBannerWithCompletion___block_invoke;
  v7[3] = &unk_279AD19E0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_sync(dispatchQueue, v7);
}

void __43__PCCLIClient_dismissBannerWithCompletion___block_invoke(uint64_t a1)
{
  NSLog(&cfstr_Dismissbanner.isa);
  [*(a1 + 32) _xpcEnsureStarted];
  v2 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__PCCLIClient_dismissBannerWithCompletion___block_invoke_2;
  v6[3] = &unk_279AD1AD8;
  v7 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__PCCLIClient_dismissBannerWithCompletion___block_invoke_3;
  v4[3] = &unk_279AD1AD8;
  v5 = *(a1 + 40);
  [v3 dismissBannerWithCompletion:v4];
}

void __43__PCCLIClient_dismissBannerWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  NSLog(&cfstr_Remoteobjectpr.isa, v5);
  v3 = MEMORY[0x2666FB170](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }
}

void __43__PCCLIClient_dismissBannerWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  NSLog(&cfstr_DismissbannerC.isa, v4);
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)presentBannerWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __43__PCCLIClient_presentBannerWithCompletion___block_invoke;
  v7[3] = &unk_279AD19E0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __43__PCCLIClient_presentBannerWithCompletion___block_invoke(uint64_t a1)
{
  NSLog(&cfstr_Presentbanner.isa);
  [*(a1 + 32) _xpcEnsureStarted];
  v2 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __43__PCCLIClient_presentBannerWithCompletion___block_invoke_2;
  v6[3] = &unk_279AD1AD8;
  v7 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __43__PCCLIClient_presentBannerWithCompletion___block_invoke_3;
  v4[3] = &unk_279AD1AD8;
  v5 = *(a1 + 40);
  [v3 presentBannerWithCompletion:v4];
}

void __43__PCCLIClient_presentBannerWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  NSLog(&cfstr_Remoteobjectpr.isa, v5);
  v3 = MEMORY[0x2666FB170](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }
}

void __43__PCCLIClient_presentBannerWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  NSLog(&cfstr_PresentbannerC.isa, v4);
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)setBannerScaleProgress:(float)progress completion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__PCCLIClient_setBannerScaleProgress_completion___block_invoke;
  block[3] = &unk_279AD1B00;
  block[4] = self;
  v10 = completionCopy;
  progressCopy = progress;
  v8 = completionCopy;
  dispatch_async(dispatchQueue, block);
}

void __49__PCCLIClient_setBannerScaleProgress_completion___block_invoke(uint64_t a1)
{
  NSLog(&cfstr_Setbannerscale.isa);
  [*(a1 + 32) _xpcEnsureStarted];
  v2 = *(*(a1 + 32) + 16);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __49__PCCLIClient_setBannerScaleProgress_completion___block_invoke_2;
  v8[3] = &unk_279AD1AD8;
  v9 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v8];
  v4 = *(a1 + 48);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __49__PCCLIClient_setBannerScaleProgress_completion___block_invoke_3;
  v6[3] = &unk_279AD1AD8;
  v7 = *(a1 + 40);
  LODWORD(v5) = v4;
  [v3 setBannerScaleProgress:v6 completion:v5];
}

void __49__PCCLIClient_setBannerScaleProgress_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  NSLog(&cfstr_Remoteobjectpr.isa, v5);
  v3 = MEMORY[0x2666FB170](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }
}

void __49__PCCLIClient_setBannerScaleProgress_completion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  NSLog(&cfstr_Setbannerscale_0.isa, v4);
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)tapBannerWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __39__PCCLIClient_tapBannerWithCompletion___block_invoke;
  v7[3] = &unk_279AD19E0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __39__PCCLIClient_tapBannerWithCompletion___block_invoke(uint64_t a1)
{
  NSLog(&cfstr_Tapbanner.isa);
  [*(a1 + 32) _xpcEnsureStarted];
  v2 = *(*(a1 + 32) + 16);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __39__PCCLIClient_tapBannerWithCompletion___block_invoke_2;
  v6[3] = &unk_279AD1AD8;
  v7 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __39__PCCLIClient_tapBannerWithCompletion___block_invoke_3;
  v4[3] = &unk_279AD1AD8;
  v5 = *(a1 + 40);
  [v3 tapBannerWithCompletion:v4];
}

void __39__PCCLIClient_tapBannerWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  NSLog(&cfstr_Remoteobjectpr.isa, v5);
  v3 = MEMORY[0x2666FB170](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }
}

void __39__PCCLIClient_tapBannerWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  NSLog(&cfstr_TapbannerCompl.isa, v4);
  v3 = *(a1 + 32);
  if (v3)
  {
    (*(v3 + 16))(v3, v4);
  }
}

- (void)didProvideState:(id)state
{
  stateCopy = state;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained && (objc_opt_respondsToSelector() & 1) != 0)
  {
    [WeakRetained client:self didProvideState:stateCopy];
  }
}

- (void)requestState
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __27__PCCLIClient_requestState__block_invoke;
  block[3] = &unk_279AD19B8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __27__PCCLIClient_requestState__block_invoke(uint64_t a1)
{
  NSLog(&cfstr_Requeststate.isa);
  [*(a1 + 32) _xpcEnsureStarted];
  v2 = [*(*(a1 + 32) + 16) remoteObjectProxy];
  [v2 requestState];
}

- (void)stateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__PCCLIClient_stateWithCompletion___block_invoke;
  v7[3] = &unk_279AD19E0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __35__PCCLIClient_stateWithCompletion___block_invoke(uint64_t a1)
{
  NSLog(&cfstr_State.isa);
  [*(a1 + 32) _wakingXPCEnsureStarted];
  v2 = *(*(a1 + 32) + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __35__PCCLIClient_stateWithCompletion___block_invoke_2;
  v6[3] = &unk_279AD1AD8;
  v7 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v6];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __35__PCCLIClient_stateWithCompletion___block_invoke_3;
  v4[3] = &unk_279AD1B28;
  v5 = *(a1 + 40);
  [v3 stateWithCompletion:v4];
}

void __35__PCCLIClient_stateWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  NSLog(&cfstr_Remoteobjectpr.isa, v5);
  v3 = MEMORY[0x2666FB170](*(a1 + 32));
  if (v3)
  {
    v4 = [v5 localizedDescription];
    (v3)[2](v3, v4);
  }
}

void __35__PCCLIClient_stateWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v4 = a2;
  v3 = MEMORY[0x2666FB170](*(a1 + 32));
  if (v3)
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)triggerHandoffFeedbackAlertWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __57__PCCLIClient_triggerHandoffFeedbackAlertWithCompletion___block_invoke;
  v7[3] = &unk_279AD19E0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __57__PCCLIClient_triggerHandoffFeedbackAlertWithCompletion___block_invoke(uint64_t a1)
{
  NSLog(&cfstr_TriggerHandoff.isa);
  [*(a1 + 32) _wakingXPCEnsureStarted];
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __57__PCCLIClient_triggerHandoffFeedbackAlertWithCompletion___block_invoke_2;
  v4[3] = &unk_279AD1AD8;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 triggerHandoffFeedbackAlertWithCompletion:*(a1 + 40)];
}

void __57__PCCLIClient_triggerHandoffFeedbackAlertWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  NSLog(&cfstr_Remoteobjectpr.isa, v5);
  v3 = MEMORY[0x2666FB170](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, v5, 0);
  }
}

- (void)updateLockscreenMediaThresholdWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __60__PCCLIClient_updateLockscreenMediaThresholdWithCompletion___block_invoke;
  v7[3] = &unk_279AD19E0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

void __60__PCCLIClient_updateLockscreenMediaThresholdWithCompletion___block_invoke(uint64_t a1)
{
  NSLog(&cfstr_UpdateLockscre.isa);
  [*(a1 + 32) _wakingXPCEnsureStarted];
  v2 = *(*(a1 + 32) + 8);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __60__PCCLIClient_updateLockscreenMediaThresholdWithCompletion___block_invoke_2;
  v4[3] = &unk_279AD1AD8;
  v5 = *(a1 + 40);
  v3 = [v2 remoteObjectProxyWithErrorHandler:v4];
  [v3 updateLockscreenMediaThresholdWithCompletion:*(a1 + 40)];
}

void __60__PCCLIClient_updateLockscreenMediaThresholdWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v5 = a2;
  NSLog(&cfstr_Remoteobjectpr.isa, v5);
  v3 = MEMORY[0x2666FB170](*(a1 + 32));
  v4 = v3;
  if (v3)
  {
    (*(v3 + 16))(v3, v5);
  }
}

- (PCCLIClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end