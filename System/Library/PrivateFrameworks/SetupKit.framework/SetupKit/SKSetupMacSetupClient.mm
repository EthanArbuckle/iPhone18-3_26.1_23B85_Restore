@interface SKSetupMacSetupClient
- (SKSetupMacSetupClient)init;
- (void)_activate;
- (void)_prepareSteps;
- (void)_run;
@end

@implementation SKSetupMacSetupClient

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
          v6 = [(SKConnection *)self->super._skCnx state];
          v4 = self->super._runState;
          if (v6 == 1)
          {
            goto LABEL_14;
          }

          break;
        case 0xD:
          v5 = [(SKSetupBase *)self _runSteps];
          v4 = self->super._runState;
          if (v5)
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

      [(SKSetupBase *)self _connectionStartWithSKConnection:0 clientMode:1 completeOnFailure:1 completion:&__block_literal_global_2372];
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
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __38__SKSetupMacSetupClient__prepareSteps__block_invoke;
  v4[3] = &unk_279BB8838;
  v4[4] = self;
  v4[5] = v3;
  [(SKStepBasicConfigClient *)v3 setSkCompletionHandler:v4];
  [(SKSetupBase *)self _addStep:v3];
}

- (void)_activate
{
  [(SKSetupMacSetupClient *)self _prepareSteps];
  v3.receiver = self;
  v3.super_class = SKSetupMacSetupClient;
  [(SKSetupBase *)&v3 _activate];
}

- (SKSetupMacSetupClient)init
{
  v6.receiver = self;
  v6.super_class = SKSetupMacSetupClient;
  v2 = [(SKSetupBase *)&v6 initWithLogCategory:&gLogCategory_SKSetupMacSetupClient];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end