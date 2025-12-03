@interface SKStepBasicConfigClient
- (BOOL)_runBasicConfigStart;
- (NSString)description;
- (SKSetupBase)skSetupObject;
- (SKStepBasicConfigClient)init;
- (void)_completeWithError:(id)error;
- (void)_invalidated;
- (void)_run;
- (void)activate;
- (void)invalidate;
@end

@implementation SKStepBasicConfigClient

- (SKSetupBase)skSetupObject
{
  WeakRetained = objc_loadWeakRetained(&self->_skSetupObject);

  return WeakRetained;
}

- (BOOL)_runBasicConfigStart
{
  v16[1] = *MEMORY[0x277D85DE8];
  clientConfig = [(SKStepBasicConfigClient *)self clientConfig];
  if (!clientConfig)
  {
    clientConfig = objc_alloc_init(MEMORY[0x277CBEB38]);
    preferredLanguages = [MEMORY[0x277CBEAF8] preferredLanguages];
    firstObject = [preferredLanguages firstObject];

    if (firstObject)
    {
      [clientConfig setObject:firstObject forKeyedSubscript:@"_lang"];
    }

    else if (gLogCategory_SKStepBasicConfigClient <= 90 && (gLogCategory_SKStepBasicConfigClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    currentLocale = [MEMORY[0x277CBEAF8] currentLocale];
    localeIdentifier = [currentLocale localeIdentifier];

    if (localeIdentifier)
    {
      [clientConfig setObject:localeIdentifier forKeyedSubscript:@"_locale"];
    }

    else if (gLogCategory_SKStepBasicConfigClient <= 90 && (gLogCategory_SKStepBasicConfigClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }
  }

  v8 = self->_skMessaging;
  if (v8)
  {
    if (gLogCategory_SKStepBasicConfigClient <= 30 && (gLogCategory_SKStepBasicConfigClient != -1 || _LogCategory_Initialize()))
    {
      v13 = CUPrintNSObjectOneLine();
      LogPrintF_safe();
    }

    v15 = @"timeoutSeconds";
    v16[0] = &unk_28776E210;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:{1, v13}];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __47__SKStepBasicConfigClient__runBasicConfigStart__block_invoke;
    v14[3] = &unk_279BB86A0;
    v14[4] = self;
    [(CUMessaging *)v8 sendRequestID:@"_bsCf" requestMessage:clientConfig options:v9 responseHandler:v14];
  }

  else
  {
    v12 = *MEMORY[0x277CCA590];
    v9 = NSErrorF_safe();
    [(SKStepBasicConfigClient *)self _completeWithError:v9];
  }

  v10 = *MEMORY[0x277D85DE8];
  return v8 != 0;
}

void __47__SKStepBasicConfigClient__runBasicConfigStart__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v16 = a2;
  v7 = a3;
  v8 = a4;
  v9 = v8;
  v10 = *(a1 + 32);
  if ((v10[8] & 1) == 0)
  {
    v11 = v16;
    if (!v16 || v8)
    {
      if (v8)
      {
        [*(a1 + 32) _completeWithError:v8];
      }

      else
      {
        v12 = *MEMORY[0x277CCA590];
        v13 = NSErrorF_safe();
        [v10 _completeWithError:v13];
      }
    }

    else
    {
      if (gLogCategory_SKStepBasicConfigClient <= 30)
      {
        if (gLogCategory_SKStepBasicConfigClient != -1 || (v14 = _LogCategory_Initialize(), v11 = v16, v14))
        {
          v15 = CUPrintNSObjectOneLine();
          LogPrintF_safe();

          v11 = v16;
        }
      }

      *(*(a1 + 32) + 10) = 1;
      [*(a1 + 32) setOutServerConfig:{v11, v15}];
      [*(a1 + 32) _run];
    }
  }
}

- (void)_run
{
  if (!self->_invalidateCalled)
  {
    while (1)
    {
      runState = self->_runState;
      if (runState > 11)
      {
        if (runState != 12)
        {
          if (runState != 13)
          {
            return;
          }

          [(SKStepBasicConfigClient *)self _completeWithError:0];
          v5 = self->_runState;
          goto LABEL_14;
        }

        if (!self->_responseReceived)
        {
          v5 = 12;
          goto LABEL_14;
        }

        v5 = 13;
      }

      else if (runState)
      {
        if (runState != 11)
        {
          return;
        }

        _runBasicConfigStart = [(SKStepBasicConfigClient *)self _runBasicConfigStart];
        v5 = self->_runState;
        if (!_runBasicConfigStart)
        {
          goto LABEL_14;
        }

        ++v5;
      }

      else
      {
        v5 = 11;
      }

      self->_runState = v5;
LABEL_14:
      if (v5 == runState)
      {
        return;
      }

      if (gLogCategory_SKStepBasicConfigClient <= 30)
      {
        if (gLogCategory_SKStepBasicConfigClient != -1)
        {
          goto LABEL_17;
        }

        if (_LogCategory_Initialize())
        {
          v5 = self->_runState;
LABEL_17:
          if ((0x78FFu >> runState))
          {
            v6 = off_279BB81A0[runState];
          }

          if (v5 < 0xF && ((0x78FFu >> v5) & 1) != 0)
          {
            v7 = off_279BB81A0[v5];
          }

          LogPrintF_safe();
        }
      }
    }
  }
}

- (void)_completeWithError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

  self->_runState = v5;
  v9 = errorCopy;
  if (errorCopy)
  {
    if (gLogCategory_SKStepBasicConfigClient <= 60 && (gLogCategory_SKStepBasicConfigClient != -1 || _LogCategory_Initialize()))
    {
      v8 = CUPrintNSError();
      LogPrintF_safe();
    }
  }

  else if (gLogCategory_SKStepBasicConfigClient <= 30 && (gLogCategory_SKStepBasicConfigClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  v6 = MEMORY[0x26676A4C0](self->_skCompletionHandler);
  skCompletionHandler = self->_skCompletionHandler;
  self->_skCompletionHandler = 0;

  if (v6)
  {
    (v6)[2](v6, v9);
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
    if (gLogCategory_SKStepBasicConfigClient <= 30 && (gLogCategory_SKStepBasicConfigClient != -1 || _LogCategory_Initialize()))
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
  block[2] = __37__SKStepBasicConfigClient_invalidate__block_invoke;
  block[3] = &unk_279BB87E8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __37__SKStepBasicConfigClient_invalidate__block_invoke(uint64_t result)
{
  v2 = *(result + 32);
  if ((*(v2 + 8) & 1) == 0)
  {
    v3 = result;
    *(v2 + 8) = 1;
    if (gLogCategory_SKStepBasicConfigClient <= 30 && (gLogCategory_SKStepBasicConfigClient != -1 || _LogCategory_Initialize()))
    {
      LogPrintF_safe();
    }

    v4 = *(v3 + 32);

    return [v4 _invalidated];
  }

  return result;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __35__SKStepBasicConfigClient_activate__block_invoke;
  block[3] = &unk_279BB87E8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __35__SKStepBasicConfigClient_activate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SKStepBasicConfigClient <= 30 && (gLogCategory_SKStepBasicConfigClient != -1 || _LogCategory_Initialize()))
  {
    LogPrintF_safe();
  }

  v2 = *(a1 + 32);

  return [v2 _run];
}

- (NSString)description
{
  v4 = [objc_opt_class() description];
  v2 = NSPrintF();

  return v2;
}

- (SKStepBasicConfigClient)init
{
  v6.receiver = self;
  v6.super_class = SKStepBasicConfigClient;
  v2 = [(SKStepBasicConfigClient *)&v6 init];
  v3 = v2;
  if (v2)
  {
    objc_storeStrong(&v2->_dispatchQueue, MEMORY[0x277D85CD0]);
    v4 = v3;
  }

  return v3;
}

@end