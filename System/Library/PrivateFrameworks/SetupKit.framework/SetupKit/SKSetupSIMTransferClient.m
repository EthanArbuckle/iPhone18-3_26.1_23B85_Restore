@interface SKSetupSIMTransferClient
- (SKSetupSIMTransferClient)init;
- (void)_run;
@end

@implementation SKSetupSIMTransferClient

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

        [(SKSetupBase *)self _completeWithError:0];
        v4 = self->super._runState;
        goto LABEL_13;
      }

      v5 = [(SKConnection *)self->super._skCnx state];
      v4 = self->super._runState;
      if (v5 == 1)
      {
        ++v4;
LABEL_12:
        self->super._runState = v4;
      }

LABEL_13:
      if (v4 == runState)
      {
        return;
      }

      var0 = self->super._ucat->var0;
      if (var0 <= 30)
      {
        if (var0 != -1)
        {
          goto LABEL_16;
        }

        if (_LogCategory_Initialize())
        {
          ucat = self->super._ucat;
          v4 = self->super._runState;
LABEL_16:
          if ((0x38FFu >> runState))
          {
            v7 = off_279BB7D98[runState];
          }

          if (v4 < 0xE && ((0x38FFu >> v4) & 1) != 0)
          {
            v9 = off_279BB7D98[v4];
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

      [(SKSetupBase *)self _connectionStartWithSKConnection:0 clientMode:1 completeOnFailure:1 completion:&__block_literal_global_340];
      v4 = self->super._runState + 1;
    }

    else
    {
      v4 = 11;
    }

    goto LABEL_12;
  }
}

- (SKSetupSIMTransferClient)init
{
  v6.receiver = self;
  v6.super_class = SKSetupSIMTransferClient;
  v2 = [(SKSetupBase *)&v6 initWithLogCategory:&gLogCategory_SKSetupSIMTransferClient];
  v3 = v2;
  if (v2)
  {
    v2->super._bluetoothUseCase = 258;
    v4 = v2;
  }

  return v3;
}

@end