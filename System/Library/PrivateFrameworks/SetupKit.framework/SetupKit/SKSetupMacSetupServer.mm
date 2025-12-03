@interface SKSetupMacSetupServer
- (BOOL)_bleAdvertiserShouldRun;
- (SKSetupMacSetupServer)init;
- (id)descriptionWithLevel:(int)level;
- (void)_activate;
- (void)_bleAdvertiserEnsureStarted;
- (void)_bleAdvertiserEnsureStopped;
- (void)_bleServerAcceptConnecton:(id)connecton;
- (void)_bleServerEnsureStarted;
- (void)_bleServerEnsureStopped;
- (void)_invalidate;
- (void)_oobEnsureStarted;
- (void)_prepareSteps;
- (void)_run;
@end

@implementation SKSetupMacSetupServer

- (void)_oobEnsureStarted
{
  if (!self->super._skCnx)
  {
    v4 = objc_alloc_init(SKConnection);
    [(SKConnection *)v4 setSendDataHandler:self->super._sendDataHandler];
    [(SKSetupBase *)self _connectionStartWithSKConnection:v4 clientMode:0 completeOnFailure:0 completion:&__block_literal_global_22];
  }
}

- (void)_bleServerAcceptConnecton:(id)connecton
{
  connectonCopy = connecton;
  v4 = self->super._skCnx;
  if (v4)
  {
    v5 = v4;
    var0 = self->super._ucat->var0;
    if (var0 <= 90)
    {
      v7 = connectonCopy;
      if (var0 != -1)
      {
LABEL_4:
        v10 = v7;
        LogPrintF();
        [connectonCopy invalidate];
        goto LABEL_8;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->super._ucat;
        v7 = connectonCopy;
        goto LABEL_4;
      }
    }

    [connectonCopy invalidate];
  }

  else
  {
    v5 = objc_alloc_init(SKConnection);
    [(SKConnection *)v5 setBleConnection:connectonCopy];
    [(SKSetupBase *)self _connectionStartWithSKConnection:v5 clientMode:0 completeOnFailure:0 completion:&__block_literal_global_45];
  }

LABEL_8:
}

- (void)_bleServerEnsureStopped
{
  if (self->_bleServer)
  {
    var0 = self->super._ucat->var0;
    if (var0 <= 30)
    {
      if (var0 != -1)
      {
LABEL_4:
        LogPrintF();
        goto LABEL_6;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->super._ucat;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  [(CBServer *)self->_bleServer invalidate];
  bleServer = self->_bleServer;
  self->_bleServer = 0;
}

- (void)_bleServerEnsureStarted
{
  if (!self->_bleServer)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBE090]);
    bleServer = self->_bleServer;
    self->_bleServer = v3;

    [(CBServer *)v3 setDispatchQueue:self->super._dispatchQueue];
    [(CBServer *)v3 setBleListenPSM:130];
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __48__SKSetupMacSetupServer__bleServerEnsureStarted__block_invoke;
    v9[3] = &unk_279BB8180;
    v9[4] = v3;
    v9[5] = self;
    [(CBServer *)v3 setAcceptHandler:v9];
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

      v7 = v3;
      LogPrintF();
    }

LABEL_6:
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __48__SKSetupMacSetupServer__bleServerEnsureStarted__block_invoke_2;
    v8[3] = &unk_279BB8838;
    v8[4] = v3;
    v8[5] = self;
    [(CBServer *)v3 activateWithCompletion:v8, v7];
  }
}

void __48__SKSetupMacSetupServer__bleServerEnsureStarted__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (*(a1 + 32) != *(v6 + 216))
  {
    v7 = *MEMORY[0x277CCA590];
    v8 = NSErrorF_safe();
    v5[2](v5, v8);

    goto LABEL_9;
  }

  v9 = **(v6 + 144);
  v10 = v15;
  if (v9 <= 30)
  {
    if (v9 == -1)
    {
      v11 = *(v6 + 144);
      v12 = _LogCategory_Initialize();
      v6 = *(a1 + 40);
      if (!v12)
      {
        v10 = v15;
        goto LABEL_8;
      }

      v13 = *(v6 + 144);
      v10 = v15;
    }

    v14 = v10;
    LogPrintF();
    v10 = v15;
    v6 = *(a1 + 40);
  }

LABEL_8:
  [v6 _bleServerAcceptConnecton:{v10, v14}];
  [*(a1 + 40) _run];
  v5[2](v5, 0);
LABEL_9:
}

uint64_t __48__SKSetupMacSetupServer__bleServerEnsureStarted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v5 == *(v4 + 216))
  {
    v6 = **(v4 + 144);
    v15 = v3;
    if (v3)
    {
      if (v6 <= 90)
      {
        if (v6 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_10;
          }

          v10 = *(*(a1 + 40) + 144);
        }

        v13 = CUPrintNSError();
        LogPrintF();
      }

LABEL_10:
      [*(a1 + 32) invalidate];
      v7 = *(a1 + 40);
      v8 = *(v7 + 216);
      *(v7 + 216) = 0;

      goto LABEL_13;
    }

    if (v6 <= 30)
    {
      if (v6 != -1)
      {
LABEL_8:
        v14 = v5;
        LogPrintF();
        v4 = [*(a1 + 40) _run];
LABEL_13:
        v3 = v15;
        goto LABEL_14;
      }

      v9 = _LogCategory_Initialize();
      v4 = *(a1 + 40);
      if (v9)
      {
        v11 = *(v4 + 144);
        v5 = *(a1 + 32);
        goto LABEL_8;
      }
    }

    v4 = [v4 _run];
    goto LABEL_13;
  }

LABEL_14:

  return MEMORY[0x2821F96F8](v4, v3);
}

- (void)_bleAdvertiserEnsureStopped
{
  bleAdvertiser = self->_bleAdvertiser;
  if (bleAdvertiser)
  {
    var0 = self->super._ucat->var0;
    if (var0 <= 30)
    {
      if (var0 != -1)
      {
LABEL_4:
        v9 = bleAdvertiser;
        LogPrintF();
        bleAdvertiser = self->_bleAdvertiser;
        goto LABEL_6;
      }

      ucat = self->super._ucat;
      v6 = _LogCategory_Initialize();
      bleAdvertiser = self->_bleAdvertiser;
      if (v6)
      {
        v8 = self->super._ucat;
        goto LABEL_4;
      }
    }
  }

LABEL_6:
  [(CBAdvertiser *)bleAdvertiser invalidate];
  v7 = self->_bleAdvertiser;
  self->_bleAdvertiser = 0;
}

- (void)_bleAdvertiserEnsureStarted
{
  if (!self->_bleAdvertiser)
  {
    v3 = objc_alloc_init(MEMORY[0x277CBDFF0]);
    bleAdvertiser = self->_bleAdvertiser;
    self->_bleAdvertiser = v3;

    [(CBAdvertiser *)v3 setDispatchQueue:self->super._dispatchQueue];
    [(CBAdvertiser *)v3 setNearbyActionFlags:64];
    [(CBAdvertiser *)v3 setNearbyActionType:46];
    [(CBAdvertiser *)v3 setNearbyActionExtraData:self->_nearbyActionExtraData];
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

      v7 = v3;
      LogPrintF();
    }

LABEL_6:
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __52__SKSetupMacSetupServer__bleAdvertiserEnsureStarted__block_invoke;
    v8[3] = &unk_279BB8838;
    v8[4] = v3;
    v8[5] = self;
    [(CBAdvertiser *)v3 activateWithCompletion:v8, v7];
  }
}

uint64_t __52__SKSetupMacSetupServer__bleAdvertiserEnsureStarted__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (*(a1 + 32) == *(v4 + 208))
  {
    v12 = v3;
    if (!v3)
    {
      v4 = [v4 _run];
LABEL_9:
      v3 = v12;
      goto LABEL_10;
    }

    v5 = **(v4 + 144);
    if (v5 <= 90)
    {
      if (v5 == -1)
      {
        v6 = *(v4 + 144);
        if (!_LogCategory_Initialize())
        {
          goto LABEL_8;
        }

        v9 = *(*(a1 + 40) + 144);
      }

      v11 = CUPrintNSError();
      LogPrintF();
    }

LABEL_8:
    [*(a1 + 32) invalidate];
    v7 = *(a1 + 40);
    v8 = *(v7 + 208);
    *(v7 + 208) = 0;

    goto LABEL_9;
  }

LABEL_10:

  return MEMORY[0x2821F96F8](v4, v3);
}

- (BOOL)_bleAdvertiserShouldRun
{
  if (self->_completed)
  {
    LOBYTE(bleListeningPSM) = 0;
  }

  else
  {
    bleListeningPSM = [(CBServer *)self->_bleServer bleListeningPSM];
    if (bleListeningPSM)
    {
      LOBYTE(bleListeningPSM) = [(SKConnection *)self->super._skCnx state]!= 1;
    }
  }

  return bleListeningPSM;
}

- (void)_run
{
  if ([(SKSetupMacSetupServer *)self _bleAdvertiserShouldRun])
  {

    [(SKSetupMacSetupServer *)self _bleAdvertiserEnsureStarted];
  }

  else
  {

    [(SKSetupMacSetupServer *)self _bleAdvertiserEnsureStopped];
  }
}

- (void)_prepareSteps
{
  v3 = objc_alloc_init(SKStepBasicConfigServer);
  [(SKStepBasicConfigServer *)v3 setDispatchQueue:self->super._dispatchQueue];
  [(SKStepBasicConfigServer *)v3 setSkMessaging:self];
  [(SKSetupBase *)self _addStep:v3];
  [(SKStepBasicConfigServer *)v3 activate];
}

- (void)_invalidate
{
  [(SKSetupMacSetupServer *)self _bleAdvertiserEnsureStopped];
  [(SKSetupMacSetupServer *)self _bleServerEnsureStopped];
  v3.receiver = self;
  v3.super_class = SKSetupMacSetupServer;
  [(SKSetupBase *)&v3 _invalidate];
}

- (void)_activate
{
  if (self->super._sendDataHandler)
  {
    [(SKSetupMacSetupServer *)self _oobEnsureStarted];
  }

  else
  {
    [(SKSetupMacSetupServer *)self _bleServerEnsureStarted];
  }

  [(SKSetupMacSetupServer *)self _prepareSteps];
  v3.receiver = self;
  v3.super_class = SKSetupMacSetupServer;
  [(SKSetupBase *)&v3 _activate];
}

- (id)descriptionWithLevel:(int)level
{
  if ((level & 0x8000000) != 0)
  {
    v3 = 0;
  }

  else
  {
    v7 = [objc_opt_class() description];
    CUAppendF();
    v3 = 0;
  }

  v4 = &stru_2877689A8;
  if (v3)
  {
    v4 = v3;
  }

  v5 = v4;

  return v5;
}

- (SKSetupMacSetupServer)init
{
  v6.receiver = self;
  v6.super_class = SKSetupMacSetupServer;
  v2 = [(SKSetupBase *)&v6 initWithLogCategory:&gLogCategory_SKSetupMacSetupServer];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end