@interface SFProxHandoffService
- (SFProxHandoffService)init;
- (id)description;
- (void)_activateWithCompletion:(id)a3;
- (void)_activated;
- (void)_cleanup;
- (void)_completedWithError:(id)a3;
- (void)_serviceStart;
- (void)activateWithCompletion:(id)a3;
- (void)dealloc;
- (void)invalidate;
@end

@implementation SFProxHandoffService

- (SFProxHandoffService)init
{
  v7.receiver = self;
  v7.super_class = SFProxHandoffService;
  v2 = [(SFProxHandoffService *)&v7 init];
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
  if (self->_activateCalled && !self->_invalidateCalled)
  {
    v3 = [SFRemoteAutoFillService dealloc];
    [(SFProxHandoffService *)v3 description];
  }

  else
  {
    [(SFProxHandoffService *)self _cleanup];
    v5.receiver = self;
    v5.super_class = SFProxHandoffService;
    [(SFProxHandoffService *)&v5 dealloc];
  }
}

- (id)description
{
  v3 = objc_alloc_init(MEMORY[0x1E696AD60]);
  [v3 appendString:@"SFProxHandoffService"];
  if (self->_activateCalled)
  {
    v4 = @", activated";
  }

  else
  {
    if (!self->_invalidateCalled)
    {
      goto LABEL_6;
    }

    v4 = @", invalidated";
  }

  [v3 appendString:v4];
LABEL_6:
  if (self->_service)
  {
    [v3 appendFormat:@", %@", self->_service];
  }

  return v3;
}

- (void)_cleanup
{
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  self->_serviceState = 0;
}

- (void)activateWithCompletion:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __47__SFProxHandoffService_activateWithCompletion___block_invoke;
  v7[3] = &unk_1E788B210;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_activateWithCompletion:(id)a3
{
  aBlock = a3;
  if (gLogCategory_SFProxHandoffService <= 30 && (gLogCategory_SFProxHandoffService != -1 || _LogCategory_Initialize()))
  {
    [SFProxHandoffService _activateWithCompletion:];
  }

  self->_activateCalled = 1;
  v4 = _Block_copy(aBlock);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = v4;

  [(SFProxHandoffService *)self _serviceStart];
}

- (void)_activated
{
  if (gLogCategory_SFProxHandoffService <= 30 && (gLogCategory_SFProxHandoffService != -1 || _LogCategory_Initialize()))
  {
    OUTLINED_FUNCTION_2_1();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __34__SFProxHandoffService_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __34__SFProxHandoffService_invalidate__block_invoke(uint64_t a1)
{
  if ((*(*(a1 + 32) + 24) & 1) == 0 && gLogCategory_SFProxHandoffService <= 30 && (gLogCategory_SFProxHandoffService != -1 || _LogCategory_Initialize()))
  {
    __34__SFProxHandoffService_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 24) = 1;
  [*(*(a1 + 32) + 32) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 32);

  return [v4 _cleanup];
}

- (void)_completedWithError:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    if (gLogCategory_SFProxHandoffService <= 60)
    {
      v6 = v3;
      if (gLogCategory_SFProxHandoffService != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
      {
        [SFProxHandoffService _completedWithError:];
        v4 = v6;
      }
    }
  }
}

- (void)_serviceStart
{
  if (!self->_service)
  {
    v11[5] = v5;
    v11[6] = v4;
    v11[9] = v2;
    v11[10] = v3;
    if (gLogCategory_SFProxHandoffService <= 30 && (gLogCategory_SFProxHandoffService != -1 || _LogCategory_Initialize()))
    {
      [SFProxHandoffService _serviceStart];
    }

    self->_serviceState = 1;
    v7 = objc_alloc_init(SFService);
    service = self->_service;
    self->_service = v7;

    [(SFService *)self->_service setAdvertiseRate:50];
    [(SFService *)self->_service setDispatchQueue:self->_dispatchQueue];
    [(SFService *)self->_service setIdentifier:@"com.apple.sharing.ProxHandoff"];
    [(SFService *)self->_service setLabel:@"HandoffService"];
    [(SFService *)self->_service setSessionFlags:512];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __37__SFProxHandoffService__serviceStart__block_invoke;
    v11[3] = &unk_1E788B198;
    v11[4] = self;
    [(SFService *)self->_service setInterruptionHandler:v11];
    [(SFService *)self->_service setInvalidationHandler:&__block_literal_global_35];
    [(SFService *)self->_service setSessionEndedHandler:&__block_literal_global_159];
    [(SFService *)self->_service setSessionStartedHandler:&__block_literal_global_163];
    [(SFService *)self->_service setSessionSecuredHandler:&__block_literal_global_166];
    v9 = self->_service;
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __37__SFProxHandoffService__serviceStart__block_invoke_6;
    v10[3] = &unk_1E788B238;
    v10[4] = self;
    [(SFService *)v9 activateWithCompletion:v10];
  }
}

uint64_t __37__SFProxHandoffService__serviceStart__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFProxHandoffService <= 30 && (gLogCategory_SFProxHandoffService != -1 || _LogCategory_Initialize()))
  {
    __37__SFProxHandoffService__serviceStart__block_invoke_cold_1();
  }

  v2 = *(a1 + 32);

  return [v2 invalidate];
}

void __37__SFProxHandoffService__serviceStart__block_invoke_2()
{
  if (gLogCategory_SFProxHandoffService <= 30 && (gLogCategory_SFProxHandoffService != -1 || _LogCategory_Initialize()))
  {
    __37__SFProxHandoffService__serviceStart__block_invoke_2_cold_1();
  }
}

void __37__SFProxHandoffService__serviceStart__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v4 = a3;
  if (gLogCategory_SFProxHandoffService <= 30 && (gLogCategory_SFProxHandoffService != -1 || _LogCategory_Initialize()))
  {
    __37__SFProxHandoffService__serviceStart__block_invoke_3_cold_1(v5);
  }
}

void __37__SFProxHandoffService__serviceStart__block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_SFProxHandoffService <= 30)
  {
    v5 = v2;
    if (gLogCategory_SFProxHandoffService != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __37__SFProxHandoffService__serviceStart__block_invoke_4_cold_1(v3);
      v3 = v5;
    }
  }
}

void __37__SFProxHandoffService__serviceStart__block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = v2;
  if (gLogCategory_SFProxHandoffService <= 30)
  {
    v5 = v2;
    if (gLogCategory_SFProxHandoffService != -1 || (v4 = _LogCategory_Initialize(), v3 = v5, v4))
    {
      __37__SFProxHandoffService__serviceStart__block_invoke_5_cold_1(v3);
      v3 = v5;
    }
  }
}

void __37__SFProxHandoffService__serviceStart__block_invoke_6(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (gLogCategory_SFProxHandoffService <= 90 && (gLogCategory_SFProxHandoffService != -1 || _LogCategory_Initialize()))
    {
      __37__SFProxHandoffService__serviceStart__block_invoke_6_cold_1();
    }

    *(*(a1 + 32) + 40) = 3;
    v3 = *(a1 + 32);
    v4 = NSErrorWithOSStatusF();
    [v3 _completedWithError:v4];
  }

  else
  {
    if (gLogCategory_SFProxHandoffService <= 30 && (gLogCategory_SFProxHandoffService != -1 || _LogCategory_Initialize()))
    {
      __37__SFProxHandoffService__serviceStart__block_invoke_6_cold_2();
    }

    *(*(a1 + 32) + 40) = 4;
    [*(a1 + 32) _activated];
  }
}

void __37__SFProxHandoffService__serviceStart__block_invoke_3_cold_1(void *a1)
{
  v1 = [a1 peer];
  LogPrintF();
}

void __37__SFProxHandoffService__serviceStart__block_invoke_4_cold_1(void *a1)
{
  v1 = [a1 peer];
  LogPrintF();
}

void __37__SFProxHandoffService__serviceStart__block_invoke_5_cold_1(void *a1)
{
  v1 = [a1 peer];
  LogPrintF();
}

@end