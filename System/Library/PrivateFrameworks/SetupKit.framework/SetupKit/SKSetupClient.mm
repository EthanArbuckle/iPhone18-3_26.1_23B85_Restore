@interface SKSetupClient
- (SKSetupClient)init;
- (void)_activateBLEWithCompletion:(id)completion;
- (void)_activateNANContinueWithError:(id)error;
- (void)_activateNANWithCompletion:(id)completion;
- (void)_activateOOBWithCompletion:(id)completion;
- (void)_activateWithCompletion:(id)completion;
- (void)_completeWithError:(id)error;
- (void)_invalidate;
- (void)_invalidateSteps;
- (void)_invalidated;
- (void)_prepareSteps;
- (void)_prepareStepsOSRecovery;
- (void)_run;
- (void)_setupConnectionCommon:(id)common;
- (void)activateWithCompletion:(id)completion;
- (void)tryPassword:(id)password;
@end

@implementation SKSetupClient

- (void)_run
{
  if (!self->super._invalidateCalled)
  {
    while (1)
    {
      runState = self->super._runState;
      if (runState <= 11)
      {
        break;
      }

      if (runState != 12)
      {
        if (runState != 13)
        {
          return;
        }

        [(SKSetupClient *)self _completeWithError:0];
        v5 = self->super._runState;
        goto LABEL_14;
      }

      _runSteps = [(SKSetupBase *)self _runSteps];
      v5 = self->super._runState;
      if (_runSteps)
      {
        goto LABEL_12;
      }

LABEL_14:
      if (v5 == runState)
      {
        return;
      }

      var0 = self->super._ucat->var0;
      if (var0 <= 30)
      {
        if (var0 != -1)
        {
          goto LABEL_17;
        }

        if (_LogCategory_Initialize())
        {
          ucat = self->super._ucat;
          v5 = self->super._runState;
LABEL_17:
          if ((0x38FFu >> runState))
          {
            v8 = off_279BB8488[runState];
          }

          if (v5 < 0xE && ((0x38FFu >> v5) & 1) != 0)
          {
            v10 = off_279BB8488[v5];
          }

          LogPrintF();
        }
      }
    }

    if (runState)
    {
      if (runState != 11)
      {
        return;
      }

      state = [(SKConnection *)self->super._skCnx state];
      v5 = self->super._runState;
      if (state != 1)
      {
        goto LABEL_14;
      }

LABEL_12:
      ++v5;
    }

    else
    {
      v5 = 11;
    }

    self->super._runState = v5;
    goto LABEL_14;
  }
}

- (void)tryPassword:(id)password
{
  passwordCopy = password;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __29__SKSetupClient_tryPassword___block_invoke;
  v7[3] = &unk_279BB8648;
  v7[4] = self;
  v8 = passwordCopy;
  v6 = passwordCopy;
  dispatch_async(dispatchQueue, v7);
}

uint64_t __29__SKSetupClient_tryPassword___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 120);
  v3 = *(*(a1 + 32) + 144);
  v4 = *v3;
  v9 = v2;
  if (v2)
  {
    if (v4 <= 30)
    {
      if (v4 == -1)
      {
        v5 = _LogCategory_Initialize();
        v2 = v9;
        if (!v5)
        {
          goto LABEL_6;
        }

        v7 = *(*(a1 + 32) + 144);
      }

      LogPrintF();
      v2 = v9;
    }

LABEL_6:
    v3 = [v2 tryPassword:*(a1 + 40)];
LABEL_7:
    v2 = v9;
    goto LABEL_8;
  }

  if (v4 <= 90)
  {
    if (v4 != -1)
    {
LABEL_13:
      v3 = LogPrintF();
      goto LABEL_7;
    }

    v3 = _LogCategory_Initialize();
    v2 = 0;
    if (v3)
    {
      v6 = *(*(a1 + 32) + 144);
      goto LABEL_13;
    }
  }

LABEL_8:

  return MEMORY[0x2821F96F8](v3, v2);
}

- (void)_prepareStepsOSRecovery
{
  v3 = objc_alloc_init(SKStepBasicConfigClient);
  clientConfig = [(SKSetupClient *)self clientConfig];
  [(SKStepBasicConfigClient *)v3 setClientConfig:clientConfig];

  [(SKStepBasicConfigClient *)v3 setDispatchQueue:self->super._dispatchQueue];
  [(SKStepBasicConfigClient *)v3 setSkMessaging:self];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SKSetupClient__prepareStepsOSRecovery__block_invoke;
  v7[3] = &unk_279BB8838;
  v7[4] = self;
  v7[5] = v3;
  [(SKStepBasicConfigClient *)v3 setSkCompletionHandler:v7];
  [(SKSetupBase *)self _addStep:v3];

  if (!self->_skipWifi)
  {
    v5 = objc_alloc_init(SKStepWiFiSetupClientLegacy);
    [(SKStepWiFiSetupClientLegacy *)v5 setDispatchQueue:self->super._dispatchQueue];
    [(SKStepWiFiSetupClientLegacy *)v5 setSkMessaging:self];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__SKSetupClient__prepareStepsOSRecovery__block_invoke_2;
    v6[3] = &unk_279BB8838;
    v6[4] = self;
    v6[5] = v5;
    [(SKStepWiFiSetupClientLegacy *)v5 setSkCompletionHandler:v6];
    [(SKSetupBase *)self _addStep:v5];
  }
}

void __40__SKSetupClient__prepareStepsOSRecovery__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v12 = v3;
  if (v3)
  {
    v5 = *v4[18];
    if (v5 > 60)
    {
      goto LABEL_7;
    }

    if (v5 != -1)
    {
      goto LABEL_4;
    }

    if (_LogCategory_Initialize())
    {
      v9 = *(*(a1 + 32) + 144);
LABEL_4:
      v10 = "[SKSetupClient _prepareStepsOSRecovery]_block_invoke";
      v11 = v12;
      LogPrintF();
    }
  }

  else
  {
    v6 = [SKEventBasicConfigUpdated alloc];
    v7 = [*(a1 + 40) outServerConfig];
    v8 = [(SKEventBasicConfigUpdated *)v6 initWithBasicConfig:v7];
    [v4 _reportEvent:v8];
  }

LABEL_7:
  [*(a1 + 32) _completedStep:*(a1 + 40) error:{0, v10, v11}];
}

- (void)_prepareSteps
{
  if (self->super._setupType == 1)
  {
    [(SKSetupClient *)self _prepareStepsOSRecovery];
  }
}

- (void)_invalidateSteps
{
  [(SKStepable *)self->super._stepCurrent setSkCompletionHandler:0];
  [(SKStepable *)self->super._stepCurrent invalidate];
  stepCurrent = self->super._stepCurrent;
  self->super._stepCurrent = 0;

  v4.receiver = self;
  v4.super_class = SKSetupClient;
  [(SKSetupBase *)&v4 _invalidateSteps];
}

- (void)_completeWithError:(id)error
{
  errorCopy = error;
  var0 = self->super._ucat->var0;
  v15 = errorCopy;
  if (errorCopy)
  {
    if (var0 <= 60)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        ucat = self->super._ucat;
      }

      v14 = CUPrintNSError();
      LogPrintF();
    }

LABEL_9:
    v6 = 3;
    goto LABEL_12;
  }

  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      v13 = self->super._ucat;
    }

    LogPrintF();
  }

LABEL_11:
  v6 = 4;
LABEL_12:
  self->super._runState = v6;
  v7 = MEMORY[0x26676A4C0](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v7)
  {
    (v7)[2](v7, v15);
  }

  v9 = [[SKEvent alloc] initWithEventType:20 error:v15];
  [(SKSetupBase *)self _reportEvent:v9];

  v10 = MEMORY[0x26676A4C0](self->_overallCompletionHandler);
  overallCompletionHandler = self->_overallCompletionHandler;
  self->_overallCompletionHandler = 0;

  if (v10)
  {
    (v10)[2](v10, v15);
  }
}

- (void)_invalidated
{
  if (self->super._invalidateCalled)
  {
    v14 = v2;
    v15 = v3;
    authCompletionHandler = self->_authCompletionHandler;
    self->_authCompletionHandler = 0;

    authPromptHandler = self->_authPromptHandler;
    self->_authPromptHandler = 0;

    v7 = MEMORY[0x26676A4C0](self->_overallCompletionHandler);
    overallCompletionHandler = self->_overallCompletionHandler;
    self->_overallCompletionHandler = 0;

    if (v7)
    {
      v9 = *MEMORY[0x277CCA590];
      v10 = NSErrorF_safe();
      (v7)[2](v7, v10);
    }

    v11 = MEMORY[0x26676A4C0](self->_invalidationHandler);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    if (v11)
    {
      v11[2](v11);
    }

    v13.receiver = self;
    v13.super_class = SKSetupClient;
    [(SKSetupBase *)&v13 _invalidated];
  }
}

- (void)_invalidate
{
  [(CUNANSubscriber *)self->_nanSubscriber invalidate];
  nanSubscriber = self->_nanSubscriber;
  self->_nanSubscriber = 0;

  v4 = MEMORY[0x26676A4C0](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v4)
  {
    v6 = *MEMORY[0x277CCA590];
    v7 = NSErrorF_safe();
    (v4)[2](v4, v7);
  }

  v8.receiver = self;
  v8.super_class = SKSetupClient;
  [(SKSetupBase *)&v8 _invalidate];
}

- (void)_setupConnectionCommon:(id)common
{
  commonCopy = common;
  [commonCopy setClientMode:1];
  [commonCopy setConditionalPersistent:{-[SKSetupBase conditionalPersistent](self, "conditionalPersistent")}];
  [commonCopy setDispatchQueue:self->super._dispatchQueue];
  [commonCopy setPassword:self->super._password];
  [commonCopy setPersistentPairing:{-[SKSetupBase persistentPairing](self, "persistentPairing")}];
  [commonCopy setReversePairing:{-[SKSetupBase reversePairing](self, "reversePairing")}];
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __40__SKSetupClient__setupConnectionCommon___block_invoke;
  v25[3] = &unk_279BB8370;
  v25[4] = self;
  [commonCopy setAuthCompletionHandler:v25];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __40__SKSetupClient__setupConnectionCommon___block_invoke_2;
  v24[3] = &unk_279BB83C0;
  v24[4] = self;
  [commonCopy setAuthPromptHandler:v24];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __40__SKSetupClient__setupConnectionCommon___block_invoke_3;
  v23[3] = &unk_279BB83E8;
  v23[4] = self;
  [commonCopy setAuthShowPasswordHandler:v23];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __40__SKSetupClient__setupConnectionCommon___block_invoke_4;
  v20[3] = &unk_279BB8838;
  v5 = commonCopy;
  v21 = v5;
  selfCopy = self;
  [v5 setErrorHandler:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __40__SKSetupClient__setupConnectionCommon___block_invoke_5;
  v17[3] = &unk_279BB8648;
  v6 = v5;
  v18 = v6;
  selfCopy2 = self;
  [v6 setInvalidationHandler:v17];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __40__SKSetupClient__setupConnectionCommon___block_invoke_6;
  v16[3] = &unk_279BB8410;
  v16[4] = self;
  [v6 setPairSetupConfigHandler:v16];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __40__SKSetupClient__setupConnectionCommon___block_invoke_7;
  v13[3] = &unk_279BB8438;
  v7 = v6;
  v14 = v7;
  selfCopy3 = self;
  [v7 setReceivedEventHandler:v13];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __40__SKSetupClient__setupConnectionCommon___block_invoke_8;
  v10[3] = &unk_279BB8810;
  v11 = v7;
  selfCopy4 = self;
  v8 = v7;
  [v8 setReceivedRequestHandler:v10];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __40__SKSetupClient__setupConnectionCommon___block_invoke_9;
  v9[3] = &unk_279BB87E8;
  v9[4] = self;
  [v8 setStateChangedHandler:v9];
}

void __40__SKSetupClient__setupConnectionCommon___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [[SKEvent alloc] initWithEventType:140 error:v6];
  [*(a1 + 32) _reportEvent:v3];
  v4 = MEMORY[0x26676A4C0](*(*(a1 + 32) + 240));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, v6);
  }
}

void __40__SKSetupClient__setupConnectionCommon___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = [[SKAuthenticationRequestEvent alloc] initWithPasswordType:a2 pairingFlags:a3 throttleSeconds:a4];
  [*(a1 + 32) _reportEvent:?];
  v8 = MEMORY[0x26676A4C0](*(*(a1 + 32) + 248));
  v9 = v8;
  if (v8)
  {
    (*(v8 + 16))(v8, a2, a3, a4);
  }
}

void __40__SKSetupClient__setupConnectionCommon___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = [[SKAuthenticationPresentEvent alloc] initWithPasswordType:a2 password:v5];

  [*(a1 + 32) _reportEvent:v6];
}

void __40__SKSetupClient__setupConnectionCommon___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (*(a1 + 32) == *(v4 + 120))
  {
    v10 = v3;
    v5 = **(v4 + 144);
    if (v5 <= 90)
    {
      if (v5 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        v8 = *(*(a1 + 40) + 144);
      }

      v9 = CUPrintNSError();
      LogPrintF();
    }

LABEL_6:
    [*(a1 + 32) invalidate];
    v6 = *(a1 + 40);
    v7 = *(v6 + 120);
    *(v6 + 120) = 0;

    v3 = v10;
  }
}

void __40__SKSetupClient__setupConnectionCommon___block_invoke_5(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (*(a1 + 32) != *(v2 + 120))
  {
    return;
  }

  v4 = **(v2 + 144);
  if (v4 <= 30)
  {
    if (v4 == -1)
    {
      v5 = _LogCategory_Initialize();
      v2 = *(a1 + 40);
      if (!v5)
      {
        goto LABEL_6;
      }

      v7 = *(v2 + 144);
      v8 = *(a1 + 32);
    }

    LogPrintF();
    v2 = *(a1 + 40);
  }

LABEL_6:
  v6 = *(v2 + 120);
  *(v2 + 120) = 0;
}

void __40__SKSetupClient__setupConnectionCommon___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *v4[18];
  v9 = v3;
  if (v5 <= 30)
  {
    if (v5 != -1)
    {
LABEL_3:
      v8 = CUPrintNSObjectOneLine();
      LogPrintF();

      v3 = v9;
      v4 = *(a1 + 32);
      goto LABEL_6;
    }

    v6 = _LogCategory_Initialize();
    v4 = *(a1 + 32);
    if (v6)
    {
      v7 = v4[18];
      goto LABEL_3;
    }

    v3 = v9;
  }

LABEL_6:
  [v4 _pairSetupConfig:{v3, v8}];
}

void *__40__SKSetupClient__setupConnectionCommon___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (v5 == result[15])
  {
    return [result _receivedEventID:a2 event:a3 options:a4];
  }

  return result;
}

void *__40__SKSetupClient__setupConnectionCommon___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  result = *(a1 + 40);
  if (v6 == result[15])
  {
    return [result _receivedRequestID:a2 request:a3 options:a4 responseHandler:a5];
  }

  return result;
}

- (void)_activateOOBWithCompletion:(id)completion
{
  completionCopy = completion;
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x3032000000;
  v16[3] = __Block_byref_object_copy__1505;
  v16[4] = __Block_byref_object_dispose__1506;
  v17 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __44__SKSetupClient__activateOOBWithCompletion___block_invoke;
  v13[3] = &unk_279BB8500;
  v15 = v16;
  v13[4] = self;
  v5 = completionCopy;
  v14 = v5;
  v6 = MEMORY[0x26676A4C0](v13);
  v7 = objc_alloc_init(SKConnection);
  objc_storeStrong(&self->super._skCnx, v7);
  [(SKConnection *)v7 setSendDataHandler:self->super._sendDataHandler];
  [(SKSetupClient *)self _setupConnectionCommon:v7];
  var0 = self->super._ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_5;
      }

      ucat = self->super._ucat;
    }

    LogPrintF();
  }

LABEL_5:
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __44__SKSetupClient__activateOOBWithCompletion___block_invoke_2;
  v11[3] = &unk_279BB82F8;
  v11[4] = v7;
  v11[5] = self;
  v9 = v5;
  v12 = v9;
  [(SKConnection *)v7 activateWithCompletion:v11];

  v6[2](v6);
  _Block_object_dispose(v16, 8);
}

uint64_t __44__SKSetupClient__activateOOBWithCompletion___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  v4 = **(a1[4] + 144);
  if (v4 <= 90)
  {
    if (v4 == -1)
    {
      v5 = *(a1[4] + 144);
      v6 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v6)
      {
        goto LABEL_7;
      }

      v9 = *(a1[4] + 144);
      v10 = *(*(v2 + 8) + 40);
    }

    v11 = CUPrintNSError();
    LogPrintF();

    v2 = a1[6];
  }

LABEL_7:
  v7 = *(*(v2 + 8) + 40);
  v8 = *(a1[5] + 16);

  return v8();
}

void __44__SKSetupClient__activateOOBWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v17 = v3;
  if (*(a1 + 32) != *(v4 + 120))
  {
    v5 = *MEMORY[0x277CCA590];
    v6 = NSErrorF_safe();
    v7 = **(*(a1 + 40) + 144);
    if (v7 <= 90)
    {
      if (v7 == -1)
      {
        v9 = *(*(a1 + 40) + 144);
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        v12 = *(*(a1 + 40) + 144);
      }

      v16 = CUPrintNSError();
      LogPrintF();
    }

LABEL_13:
    (*(*(a1 + 48) + 16))(*(a1 + 48));

    goto LABEL_18;
  }

  v8 = **(v4 + 144);
  if (v3)
  {
    if (v8 <= 90)
    {
      if (v8 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_15;
        }

        v13 = *(*(a1 + 40) + 144);
      }

      v15 = CUPrintNSError();
      LogPrintF();
    }

LABEL_15:
    [*(a1 + 32) invalidate];
    v10 = *(a1 + 40);
    v11 = *(v10 + 120);
    *(v10 + 120) = 0;

    (*(*(a1 + 48) + 16))();
    goto LABEL_18;
  }

  if (v8 <= 30)
  {
    if (v8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      v14 = *(*(a1 + 40) + 144);
    }

    LogPrintF();
  }

LABEL_17:
  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) _run];
LABEL_18:
}

- (void)_activateNANContinueWithError:(id)error
{
  errorCopy = error;
  if (!errorCopy)
  {
    v5 = self->super._skCnx;
    if (!v5)
    {
      goto LABEL_10;
    }

    [(SKSetupClient *)self _setupConnectionCommon:v5];
    var0 = self->super._ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_9;
        }

        ucat = self->super._ucat;
      }

      v9 = v5;
      LogPrintF();
    }

LABEL_9:
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __47__SKSetupClient__activateNANContinueWithError___block_invoke;
    v10[3] = &unk_279BB8838;
    v10[4] = v5;
    v10[5] = self;
    [(SKConnection *)v5 activateWithCompletion:v10, v9];
    goto LABEL_10;
  }

  v5 = MEMORY[0x26676A4C0](self->_activateCompletion);
  activateCompletion = self->_activateCompletion;
  self->_activateCompletion = 0;

  if (v5)
  {
    (v5->_authThrottleDeadlineTicks)(v5, errorCopy);
  }

LABEL_10:
}

void __47__SKSetupClient__activateNANContinueWithError___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v29 = v3;
  if (*(a1 + 32) != *(v4 + 120))
  {
    v5 = *MEMORY[0x277CCA590];
    v6 = NSErrorF_safe();
    v7 = *(a1 + 40);
    v8 = **(v7 + 144);
    if (v8 <= 90)
    {
      if (v8 == -1)
      {
        v10 = *(v7 + 144);
        v11 = _LogCategory_Initialize();
        v7 = *(a1 + 40);
        if (!v11)
        {
          goto LABEL_13;
        }

        v24 = *(v7 + 144);
      }

      v28 = CUPrintNSError();
      LogPrintF();

      v7 = *(a1 + 40);
    }

LABEL_13:
    v12 = MEMORY[0x26676A4C0](*(v7 + 208));
    v13 = *(a1 + 40);
    v14 = *(v13 + 208);
    *(v13 + 208) = 0;

    if (v12)
    {
      v12[2](v12, v6);
    }

    goto LABEL_16;
  }

  v9 = **(v4 + 144);
  if (v3)
  {
    if (v9 > 90)
    {
      goto LABEL_20;
    }

    if (v9 == -1)
    {
      v15 = *(v4 + 144);
      if (!_LogCategory_Initialize())
      {
LABEL_20:
        [*(a1 + 32) invalidate];
        v16 = *(a1 + 40);
        v17 = *(v16 + 120);
        *(v16 + 120) = 0;

        v6 = MEMORY[0x26676A4C0](*(*(a1 + 40) + 208));
        v18 = *(a1 + 40);
        v19 = *(v18 + 208);
        *(v18 + 208) = 0;

        if (v6)
        {
          (v6)[2](v6, v29);
        }

        goto LABEL_16;
      }

      v25 = *(*(a1 + 40) + 144);
    }

    v27 = CUPrintNSError();
    LogPrintF();

    goto LABEL_20;
  }

  if (v9 <= 30)
  {
    if (v9 == -1)
    {
      v20 = *(v4 + 144);
      v21 = _LogCategory_Initialize();
      v4 = *(a1 + 40);
      if (!v21)
      {
        goto LABEL_23;
      }

      v26 = *(v4 + 144);
    }

    LogPrintF();
    v4 = *(a1 + 40);
  }

LABEL_23:
  v6 = MEMORY[0x26676A4C0](*(v4 + 208));
  v22 = *(a1 + 40);
  v23 = *(v22 + 208);
  *(v22 + 208) = 0;

  if (v6)
  {
    v6[2](v6, 0);
  }

  [*(a1 + 40) _run];
LABEL_16:
}

- (void)_activateNANWithCompletion:(id)completion
{
  completionCopy = completion;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1505;
  v25 = __Block_byref_object_dispose__1506;
  v26 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __44__SKSetupClient__activateNANWithCompletion___block_invoke;
  v18[3] = &unk_279BB8500;
  v20 = &v21;
  v18[4] = self;
  v5 = completionCopy;
  v19 = v5;
  v6 = MEMORY[0x26676A4C0](v18);
  v7 = objc_alloc_init(SKConnection);
  objc_storeStrong(&self->super._skCnx, v7);
  [(SKConnection *)v7 setClientMode:1];
  [(SKConnection *)v7 setPassword:self->super._password];
  identifier = [(SKDevice *)self->super._peerDevice identifier];
  if (identifier)
  {
    v9 = objc_alloc_init(MEMORY[0x277D028A8]);
    objc_storeStrong(&self->_nanSubscriber, v9);
    [v9 setControlFlags:1];
    [v9 setDispatchQueue:self->super._dispatchQueue];
    [v9 setServiceType:@"com.apple.setup"];
    v10 = MEMORY[0x26676A4C0](v5);
    activateCompletion = self->_activateCompletion;
    self->_activateCompletion = v10;

    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __44__SKSetupClient__activateNANWithCompletion___block_invoke_2;
    v17[3] = &unk_279BB8320;
    v17[4] = identifier;
    v17[5] = self;
    [v9 setEndpointFoundHandler:v17];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __44__SKSetupClient__activateNANWithCompletion___block_invoke_3;
    v16[3] = &unk_279BB8348;
    v16[4] = v9;
    v16[5] = self;
    v16[6] = identifier;
    v16[7] = v7;
    [v9 setReceiveHandler:v16];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __44__SKSetupClient__activateNANWithCompletion___block_invoke_4;
    v15[3] = &unk_279BB8398;
    v15[4] = v9;
    v15[5] = self;
    [(SKConnection *)v7 setSendDataHandler:v15];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __44__SKSetupClient__activateNANWithCompletion___block_invoke_6;
    v14[3] = &unk_279BB8838;
    v14[4] = v9;
    v14[5] = self;
    [v9 activateWithCompletion:v14];
  }

  else
  {
    v12 = *MEMORY[0x277CCA590];
    v13 = NSErrorF_safe();
    v9 = v22[5];
    v22[5] = v13;
  }

  v6[2](v6);
  _Block_object_dispose(&v21, 8);
}

uint64_t __44__SKSetupClient__activateNANWithCompletion___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  v4 = **(a1[4] + 144);
  if (v4 <= 90)
  {
    if (v4 == -1)
    {
      v5 = *(a1[4] + 144);
      v6 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v6)
      {
        goto LABEL_7;
      }

      v9 = *(a1[4] + 144);
      v10 = *(*(v2 + 8) + 40);
    }

    v11 = CUPrintNSError();
    LogPrintF();

    v2 = a1[6];
  }

LABEL_7:
  v7 = *(*(v2 + 8) + 40);
  v8 = *(a1[5] + 16);

  return v8();
}

void __44__SKSetupClient__activateNANWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = a2;
  v4 = [v18 identifier];
  v5 = *(a1 + 32);
  v6 = v4;
  v7 = v5;
  v8 = v7;
  if (v6 == v7)
  {

    goto LABEL_6;
  }

  if ((v6 != 0) != (v7 == 0))
  {
    v9 = [v6 isEqual:v7];

    if ((v9 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_6:
    objc_storeStrong((*(a1 + 40) + 216), a2);
    v10 = *(a1 + 40);
    v11 = *v10[18];
    if (v11 <= 30)
    {
      if (v11 != -1)
      {
LABEL_8:
        LogPrintF();
        [*(a1 + 40) _activateNANContinueWithError:{0, v6}];
        goto LABEL_15;
      }

      v13 = _LogCategory_Initialize();
      v10 = *(a1 + 40);
      if (v13)
      {
        v15 = v10[18];
        goto LABEL_8;
      }
    }

    [v10 _activateNANContinueWithError:{0, v16}];
    goto LABEL_15;
  }

LABEL_10:
  v12 = **(*(a1 + 40) + 144);
  if (v12 > 30)
  {
    goto LABEL_15;
  }

  if (v12 != -1)
  {
    goto LABEL_12;
  }

  if (_LogCategory_Initialize())
  {
    v14 = *(*(a1 + 40) + 144);
LABEL_12:
    v17 = *(a1 + 32);
    LogPrintF();
  }

LABEL_15:
}

void __44__SKSetupClient__activateNANWithCompletion___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v18 = a2;
  v5 = a3;
  v6 = v5;
  if (*(a1 + 32) != *(*(a1 + 40) + 224))
  {
    goto LABEL_13;
  }

  v7 = [v5 identifier];
  v8 = *(a1 + 48);
  v9 = v7;
  v10 = v8;
  v11 = v10;
  if (v9 == v10)
  {

    goto LABEL_7;
  }

  if ((v9 != 0) != (v10 == 0))
  {
    v12 = [v9 isEqual:v10];

    if ((v12 & 1) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    [*(a1 + 56) receivedData:v18];
    goto LABEL_13;
  }

LABEL_9:
  v13 = **(*(a1 + 40) + 144);
  if (v13 > 30)
  {
    goto LABEL_13;
  }

  if (v13 != -1)
  {
    goto LABEL_11;
  }

  v14 = *(*(a1 + 40) + 144);
  if (_LogCategory_Initialize())
  {
    v15 = *(*(a1 + 40) + 144);
LABEL_11:
    v16 = [v6 identifier];
    v17 = *(a1 + 48);
    LogPrintF();
  }

LABEL_13:
}

void __44__SKSetupClient__activateNANWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v5 == *(v4 + 224))
  {
    v6 = *(v4 + 216);
    if (v6)
    {
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __44__SKSetupClient__activateNANWithCompletion___block_invoke_5;
      v8[3] = &unk_279BB8370;
      v8[4] = v4;
      v7 = v6;
      [v5 sendMessageData:v3 endpoint:v7 completionHandler:v8];
    }
  }
}

void __44__SKSetupClient__activateNANWithCompletion___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = *(a1 + 40);
    if (*(a1 + 32) == *(v4 + 224))
    {
      v10 = v3;
      v5 = **(v4 + 144);
      if (v5 <= 90)
      {
        if (v5 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_7;
          }

          v8 = *(*(a1 + 40) + 144);
        }

        v9 = CUPrintNSError();
        LogPrintF();
      }

LABEL_7:
      [*(a1 + 32) invalidate];
      v6 = *(a1 + 40);
      v7 = *(v6 + 224);
      *(v6 + 224) = 0;

      [*(a1 + 40) _activateNANContinueWithError:v10];
      v3 = v10;
    }
  }
}

uint64_t __44__SKSetupClient__activateNANWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = **(*(a1 + 32) + 144);
    if (v5 <= 90)
    {
      v9 = v3;
      if (v5 != -1)
      {
LABEL_4:
        v8 = CUPrintNSError();
        LogPrintF();

        v4 = v9;
        goto LABEL_6;
      }

      v3 = _LogCategory_Initialize();
      v4 = v9;
      if (v3)
      {
        v6 = *(*(a1 + 32) + 144);
        goto LABEL_4;
      }
    }
  }

LABEL_6:

  return MEMORY[0x2821F96F8](v3, v4);
}

- (void)_activateBLEWithCompletion:(id)completion
{
  completionCopy = completion;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__1505;
  v23 = __Block_byref_object_dispose__1506;
  v24 = 0;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __44__SKSetupClient__activateBLEWithCompletion___block_invoke;
  v16[3] = &unk_279BB8500;
  v18 = &v19;
  v16[4] = self;
  v5 = completionCopy;
  v17 = v5;
  v6 = MEMORY[0x26676A4C0](v16);
  v7 = objc_alloc_init(SKConnection);
  objc_storeStrong(&self->super._skCnx, v7);
  v8 = self->super._peerDevice;
  if (!v8)
  {
    v10 = *MEMORY[0x277CCA590];
    v11 = NSErrorF_safe();
    v12 = v20[5];
    v20[5] = v11;

    goto LABEL_7;
  }

  [(SKConnection *)v7 setBlePeerDevice:v8];
  [(SKSetupClient *)self _setupConnectionCommon:v7];
  var0 = self->super._ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_6;
      }

      ucat = self->super._ucat;
    }

    LogPrintF();
  }

LABEL_6:
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __44__SKSetupClient__activateBLEWithCompletion___block_invoke_2;
  v14[3] = &unk_279BB82F8;
  v14[4] = v7;
  v14[5] = self;
  v15 = v5;
  [(SKConnection *)v7 activateWithCompletion:v14];

LABEL_7:
  v6[2](v6);

  _Block_object_dispose(&v19, 8);
}

uint64_t __44__SKSetupClient__activateBLEWithCompletion___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  v4 = **(a1[4] + 144);
  if (v4 <= 90)
  {
    if (v4 == -1)
    {
      v5 = *(a1[4] + 144);
      v6 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v6)
      {
        goto LABEL_7;
      }

      v9 = *(a1[4] + 144);
      v10 = *(*(v2 + 8) + 40);
    }

    v11 = CUPrintNSError();
    LogPrintF();

    v2 = a1[6];
  }

LABEL_7:
  v7 = *(*(v2 + 8) + 40);
  v8 = *(a1[5] + 16);

  return v8();
}

void __44__SKSetupClient__activateBLEWithCompletion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v17 = v3;
  if (*(a1 + 32) != *(v4 + 120))
  {
    v5 = *MEMORY[0x277CCA590];
    v6 = NSErrorF_safe();
    v7 = **(*(a1 + 40) + 144);
    if (v7 <= 90)
    {
      if (v7 == -1)
      {
        v9 = *(*(a1 + 40) + 144);
        if (!_LogCategory_Initialize())
        {
          goto LABEL_13;
        }

        v12 = *(*(a1 + 40) + 144);
      }

      v16 = CUPrintNSError();
      LogPrintF();
    }

LABEL_13:
    (*(*(a1 + 48) + 16))(*(a1 + 48));

    goto LABEL_18;
  }

  v8 = **(v4 + 144);
  if (v3)
  {
    if (v8 <= 90)
    {
      if (v8 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_15;
        }

        v13 = *(*(a1 + 40) + 144);
      }

      v15 = CUPrintNSError();
      LogPrintF();
    }

LABEL_15:
    [*(a1 + 32) invalidate];
    v10 = *(a1 + 40);
    v11 = *(v10 + 120);
    *(v10 + 120) = 0;

    (*(*(a1 + 48) + 16))();
    goto LABEL_18;
  }

  if (v8 <= 30)
  {
    if (v8 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_17;
      }

      v14 = *(*(a1 + 40) + 144);
    }

    LogPrintF();
  }

LABEL_17:
  (*(*(a1 + 48) + 16))();
  [*(a1 + 40) _run];
LABEL_18:
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__1505;
  v37 = __Block_byref_object_dispose__1506;
  v38 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __41__SKSetupClient__activateWithCompletion___block_invoke;
  v30[3] = &unk_279BB8500;
  v32 = &v33;
  v30[4] = self;
  v5 = completionCopy;
  v31 = v5;
  v6 = MEMORY[0x26676A4C0](v30);
  if (self->super._activateCalled || self->super._invalidateCalled)
  {
    v24 = *MEMORY[0x277CCA590];
    v23 = NSErrorF_safe();
LABEL_24:
    v17 = v34[5];
    v34[5] = v23;
    goto LABEL_25;
  }

  var0 = self->super._ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      ucat = self->super._ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_13;
      }

      v11 = self->super._ucat;
    }

    setupType = self->super._setupType;
    if (setupType > 5)
    {
      v9 = "?";
    }

    else
    {
      v9 = off_279BB8458[setupType];
    }

    controlFlags = self->super._controlFlags;
    v13 = CUPrintFlags32();
    peerDevice = self->super._peerDevice;
    reversePairing = [(SKSetupBase *)self reversePairing];
    v16 = "no";
    if (reversePairing)
    {
      v16 = "yes";
    }

    v27 = peerDevice;
    v28 = v16;
    v25 = v9;
    v26 = v13;
    LogPrintF();
  }

LABEL_13:
  self->super._activateCalled = 1;
  if (self->super._setupType == 1)
  {
    v17 = objc_alloc_init(SKStepWiFiPreflight);
    [(SKStepWiFiPreflight *)v17 setPreventAppleWiFi:0];
    v18 = (v34 + 5);
    obj = v34[5];
    v19 = [(SKStepWiFiPreflight *)v17 checkWiFiAndReturnError:&obj];
    objc_storeStrong(v18, obj);
    if (!v19)
    {
      (*(v5 + 2))(v5, 0);
      [(SKSetupClient *)self _completeWithError:v34[5]];
      v21 = v34[5];
      v34[5] = 0;

LABEL_25:
      goto LABEL_26;
    }
  }

  [(SKSetupClient *)self _prepareSteps:v25];
  if (!self->super._sendDataHandler)
  {
    v20 = self->super._controlFlags;
    if ((v20 & 2) != 0)
    {
      [(SKSetupClient *)self _activateNANWithCompletion:v5];
      goto LABEL_26;
    }

    if ((v20 & 1) == 0)
    {
      [(SKSetupClient *)self _activateBLEWithCompletion:v5];
      goto LABEL_26;
    }

    v22 = *MEMORY[0x277CCA590];
    v23 = NSErrorF_safe();
    goto LABEL_24;
  }

  [(SKSetupClient *)self _activateOOBWithCompletion:v5];
LABEL_26:
  v6[2](v6);

  _Block_object_dispose(&v33, 8);
}

uint64_t __41__SKSetupClient__activateWithCompletion___block_invoke(void *a1)
{
  v2 = a1[6];
  result = *(*(v2 + 8) + 40);
  if (!result)
  {
    return result;
  }

  v4 = **(a1[4] + 144);
  if (v4 <= 90)
  {
    if (v4 == -1)
    {
      v5 = *(a1[4] + 144);
      v6 = _LogCategory_Initialize();
      v2 = a1[6];
      if (!v6)
      {
        goto LABEL_7;
      }

      v9 = *(a1[4] + 144);
      v10 = *(*(v2 + 8) + 40);
    }

    v11 = CUPrintNSError();
    LogPrintF();

    v2 = a1[6];
  }

LABEL_7:
  v7 = *(*(v2 + 8) + 40);
  v8 = *(a1[5] + 16);

  return v8();
}

- (void)activateWithCompletion:(id)completion
{
  completionCopy = completion;
  dispatchQueue = self->super._dispatchQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SKSetupClient_activateWithCompletion___block_invoke;
  v7[3] = &unk_279BB82D0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (SKSetupClient)init
{
  v6.receiver = self;
  v6.super_class = SKSetupClient;
  v2 = [(SKSetupBase *)&v6 initWithLogCategory:&gLogCategory_SKSetupClient];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end