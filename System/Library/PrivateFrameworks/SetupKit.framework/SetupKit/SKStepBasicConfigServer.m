@interface SKStepBasicConfigServer
- (NSString)description;
- (SKSetupBase)skSetupObject;
- (SKStepBasicConfigServer)init;
- (void)_activate;
- (void)_completeWithError:(id)a3;
- (void)_handleRequestBasicConfig:(id)a3 responseHandler:(id)a4;
- (void)_invalidated;
- (void)activate;
- (void)invalidate;
@end

@implementation SKStepBasicConfigServer

- (SKSetupBase)skSetupObject
{
  WeakRetained = objc_loadWeakRetained(&self->_skSetupObject);

  return WeakRetained;
}

- (void)_handleRequestBasicConfig:(id)a3 responseHandler:(id)a4
{
  v13 = a3;
  v6 = a4;
  if (gLogCategory_SKStepBasicConfigServer <= 30 && (gLogCategory_SKStepBasicConfigServer != -1 || _LogCategory_Initialize()))
  {
    v12 = CUPrintNSObjectOneLine();
    LogPrintF_safe();
  }

  [(SKStepBasicConfigServer *)self setOutClientConfig:v13, v12];
  v7 = [[SKEventBasicConfigUpdated alloc] initWithBasicConfig:v13];
  WeakRetained = objc_loadWeakRetained(&self->_skSetupObject);
  [WeakRetained _reportEvent:v7];

  v9 = [(SKStepBasicConfigServer *)self serverConfig];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = MEMORY[0x277CBEC10];
  }

  (*(v6 + 2))(v6, v11, 0, 0, &__block_literal_global_16_2468);
}

- (void)_completeWithError:(id)a3
{
  v4 = a3;
  if (v4)
  {
    if (gLogCategory_SKStepBasicConfigServer <= 90 && (gLogCategory_SKStepBasicConfigServer != -1 || _LogCategory_Initialize()))
    {
      v8 = CUPrintNSError();
      LogPrintF_safe();
    }
  }

  else if (gLogCategory_SKStepBasicConfigServer <= 30 && (gLogCategory_SKStepBasicConfigServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  v5 = MEMORY[0x26676A4C0](self->_responseHandler);
  responseHandler = self->_responseHandler;
  self->_responseHandler = 0;

  if (v5)
  {
    if (v4)
    {
      v7 = 0;
    }

    else
    {
      v7 = MEMORY[0x277CBEC10];
    }

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __46__SKStepBasicConfigServer__completeWithError___block_invoke;
    v9[3] = &unk_279BB8838;
    v9[4] = self;
    v10 = v4;
    (v5)[2](v5, v7, 0, v10, v9);
  }
}

void __46__SKStepBasicConfigServer__completeWithError___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = MEMORY[0x26676A4C0](*(*(a1 + 32) + 32));
  if (v3)
  {
    if (*(a1 + 40))
    {
      v4 = *(a1 + 40);
    }

    else
    {
      v4 = v5;
    }

    (v3)[2](v3, v4);
  }
}

- (void)_invalidated
{
  if (self->_invalidateCalled && !self->_invalidateDone)
  {
    v6 = MEMORY[0x26676A4C0](self->_skCompletionHandler, a2);
    skCompletionHandler = self->_skCompletionHandler;
    self->_skCompletionHandler = 0;

    if (v6)
    {
      v4 = *MEMORY[0x277CCA590];
      v5 = NSErrorF_safe();
      v6[2](v6, v5);
    }

    self->_invalidateDone = 1;
    if (gLogCategory_SKStepBasicConfigServer <= 30 && (gLogCategory_SKStepBasicConfigServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__SKStepBasicConfigServer_invalidate__block_invoke;
  block[3] = &unk_279BB87E8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __37__SKStepBasicConfigServer_invalidate__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    *(v2 + 8) = 1;
    if (gLogCategory_SKStepBasicConfigServer <= 30 && (gLogCategory_SKStepBasicConfigServer != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v8 = MEMORY[0x26676A4C0](*(*(a1 + 32) + 16));
    v4 = *(a1 + 32);
    v5 = *(v4 + 16);
    *(v4 + 16) = 0;

    if (v8)
    {
      v6 = *MEMORY[0x277CCA590];
      v7 = NSErrorF_safe();
      (*(v8 + 2))(v8, 0, 0, v7, &__block_literal_global_2476);
    }

    [*(*(a1 + 32) + 40) deregisterRequestID:@"_bsCf" completionHandler:&__block_literal_global_10];
    [*(a1 + 32) _invalidated];
  }
}

- (void)_activate
{
  skMessaging = self->_skMessaging;
  if (skMessaging)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __36__SKStepBasicConfigServer__activate__block_invoke;
    v8[3] = &unk_279BB8810;
    v8[4] = skMessaging;
    v8[5] = self;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __36__SKStepBasicConfigServer__activate__block_invoke_2;
    v7[3] = &unk_279BB8838;
    v7[4] = skMessaging;
    v7[5] = self;
    v4 = skMessaging;
    [(CUMessaging *)v4 registerRequestID:@"_bsCf" options:0 requestHandler:v8 completionHandler:v7];
  }

  else
  {
    v5 = *MEMORY[0x277CCA590];
    v6 = NSErrorF_safe();
    [(SKStepBasicConfigServer *)self _completeWithError:v6];
  }
}

void *__36__SKStepBasicConfigServer__activate__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  result = *(a1 + 40);
  if (v6 == result[5])
  {
    return [result _handleRequestBasicConfig:a3 responseHandler:a5];
  }

  return result;
}

void *__36__SKStepBasicConfigServer__activate__block_invoke_2(void *result, uint64_t a2)
{
  if (a2)
  {
    v2 = result[4];
    result = result[5];
    if (v2 == result[5])
    {
      return [result _completeWithError:a2];
    }
  }

  return result;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SKStepBasicConfigServer_activate__block_invoke;
  block[3] = &unk_279BB87E8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__SKStepBasicConfigServer_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SKStepBasicConfigServer <= 30 && (gLogCategory_SKStepBasicConfigServer != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  v2 = *(a1 + 32);

  return [v2 _activate];
}

- (NSString)description
{
  v4 = [objc_opt_class() description];
  v2 = NSPrintF();

  return v2;
}

- (SKStepBasicConfigServer)init
{
  v6.receiver = self;
  v6.super_class = SKStepBasicConfigServer;
  v2 = [(SKStepBasicConfigServer *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

@end