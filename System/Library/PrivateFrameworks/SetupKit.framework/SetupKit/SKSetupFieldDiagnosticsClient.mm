@interface SKSetupFieldDiagnosticsClient
- (SKSetupFieldDiagnosticsClient)init;
- (void)_activate;
- (void)_prepareSteps;
- (void)_run;
@end

@implementation SKSetupFieldDiagnosticsClient

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

      switch(runState)
      {
        case 0xC:
          state = [(SKConnection *)self->super._skCnx state];
          v4 = self->super._runState;
          if (state == 1)
          {
            goto LABEL_14;
          }

          break;
        case 0xD:
          _runSteps = [(SKSetupBase *)self _runSteps];
          v4 = self->super._runState;
          if (_runSteps)
          {
LABEL_14:
            ++v4;
LABEL_15:
            self->super._runState = v4;
          }

          break;
        case 0xE:
          [(SKSetupBase *)self _completeWithError:0];
          v4 = self->super._runState;
          break;
        default:
          return;
      }

      if (v4 == runState)
      {
        return;
      }

      var0 = self->super._ucat->var0;
      if (var0 <= 30)
      {
        if (var0 != -1)
        {
          goto LABEL_19;
        }

        if (_LogCategory_Initialize())
        {
          ucat = self->super._ucat;
          v4 = self->super._runState;
LABEL_19:
          if ((0x78FFu >> runState))
          {
            v8 = off_279BB8768[runState];
          }

          if (v4 < 0xF && ((0x78FFu >> v4) & 1) != 0)
          {
            v10 = off_279BB8768[v4];
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

      [(SKSetupBase *)self _connectionStartWithSKConnection:0 clientMode:1 completeOnFailure:1 completion:&__block_literal_global];
      v4 = self->super._runState + 1;
    }

    else
    {
      v4 = 11;
    }

    goto LABEL_15;
  }
}

- (void)_prepareSteps
{
  v3 = objc_alloc_init(SKStepBasicConfigClient);
  [(SKStepBasicConfigClient *)v3 setDispatchQueue:self->super._dispatchQueue];
  [(SKStepBasicConfigClient *)v3 setSkMessaging:self];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__SKSetupFieldDiagnosticsClient__prepareSteps__block_invoke;
  v6[3] = &unk_279BB8838;
  v6[4] = self;
  v6[5] = v3;
  [(SKStepBasicConfigClient *)v3 setSkCompletionHandler:v6];
  [(SKSetupBase *)self _addStep:v3];

  v4 = objc_alloc_init(SKStepWiFiSetupClientLegacy);
  [(SKStepWiFiSetupClientLegacy *)v4 setDispatchQueue:self->super._dispatchQueue];
  [(SKStepWiFiSetupClientLegacy *)v4 setSkMessaging:self];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __46__SKSetupFieldDiagnosticsClient__prepareSteps__block_invoke_2;
  v5[3] = &unk_279BB8838;
  v5[4] = self;
  v5[5] = v4;
  [(SKStepWiFiSetupClientLegacy *)v4 setSkCompletionHandler:v5];
  [(SKSetupBase *)self _addStep:v4];
}

- (void)_activate
{
  [(SKSetupFieldDiagnosticsClient *)self _prepareSteps];
  v3.receiver = self;
  v3.super_class = SKSetupFieldDiagnosticsClient;
  [(SKSetupBase *)&v3 _activate];
}

- (SKSetupFieldDiagnosticsClient)init
{
  v6.receiver = self;
  v6.super_class = SKSetupFieldDiagnosticsClient;
  v2 = [(SKSetupBase *)&v6 initWithLogCategory:&gLogCategory_SKSetupFieldDiagnosticsClient];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end