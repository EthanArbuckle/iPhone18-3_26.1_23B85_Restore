@interface SKSetupServer
- (BOOL)_bleAdvertiserShouldRun;
- (SKSetupServer)init;
- (void)_activateWithCompletion:(id)completion;
- (void)_bleAdvertiserEnsureStarted;
- (void)_bleAdvertiserEnsureStopped;
- (void)_bleServerEnsureStarted;
- (void)_bleServerEnsureStopped;
- (void)_handleAcceptBLEConnection:(id)connection;
- (void)_handleAcceptCommon:(id)common;
- (void)_handleAcceptNANData:(id)data endpoint:(id)endpoint;
- (void)_invalidate;
- (void)_invalidated;
- (void)_nanPublisherEnsureStarted;
- (void)_nanPublisherEnsureStopped;
- (void)_prepareSteps;
- (void)_prepareStepsOSRecovery;
- (void)_update;
- (void)_wifiKeepAliveEnsureStarted;
- (void)_wifiKeepAliveEnsureStopped;
- (void)activateWithCompletion:(id)completion;
- (void)reset;
@end

@implementation SKSetupServer

- (void)_handleAcceptCommon:(id)common
{
  commonCopy = common;
  objc_storeStrong(&self->super._skCnx, common);
  [commonCopy setConditionalPersistent:{-[SKSetupBase conditionalPersistent](self, "conditionalPersistent")}];
  [commonCopy setDispatchQueue:self->super._dispatchQueue];
  [commonCopy setPassword:self->super._password];
  [commonCopy setPersistentPairing:{-[SKSetupBase persistentPairing](self, "persistentPairing")}];
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __37__SKSetupServer__handleAcceptCommon___block_invoke;
  v35[3] = &unk_279BB8370;
  v35[4] = self;
  [commonCopy setAuthCompletionHandler:v35];
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __37__SKSetupServer__handleAcceptCommon___block_invoke_2;
  v34[3] = &unk_279BB83C0;
  v34[4] = self;
  [commonCopy setAuthPromptHandler:v34];
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __37__SKSetupServer__handleAcceptCommon___block_invoke_3;
  v33[3] = &unk_279BB83E8;
  v33[4] = self;
  [commonCopy setAuthShowPasswordHandler:v33];
  [commonCopy setAuthHidePasswordHandler:self->_authHidePasswordHandler];
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __37__SKSetupServer__handleAcceptCommon___block_invoke_4;
  v30[3] = &unk_279BB8838;
  v6 = commonCopy;
  v31 = v6;
  selfCopy = self;
  [v6 setErrorHandler:v30];
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __37__SKSetupServer__handleAcceptCommon___block_invoke_5;
  v27[3] = &unk_279BB8648;
  v7 = v6;
  v28 = v7;
  selfCopy2 = self;
  [v7 setInvalidationHandler:v27];
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __37__SKSetupServer__handleAcceptCommon___block_invoke_6;
  v26[3] = &unk_279BB8410;
  v26[4] = self;
  [v7 setPairSetupConfigHandler:v26];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __37__SKSetupServer__handleAcceptCommon___block_invoke_7;
  v23[3] = &unk_279BB8438;
  v8 = v7;
  v24 = v8;
  selfCopy3 = self;
  [v8 setReceivedEventHandler:v23];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __37__SKSetupServer__handleAcceptCommon___block_invoke_8;
  v20[3] = &unk_279BB8810;
  v9 = v8;
  v21 = v9;
  selfCopy4 = self;
  [v9 setReceivedRequestHandler:v20];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __37__SKSetupServer__handleAcceptCommon___block_invoke_9;
  v17[3] = &unk_279BB8648;
  v10 = v9;
  v18 = v10;
  selfCopy5 = self;
  [v10 setStateChangedHandler:v17];
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
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __37__SKSetupServer__handleAcceptCommon___block_invoke_10;
  v14[3] = &unk_279BB8838;
  v15 = v10;
  selfCopy6 = self;
  v12 = v10;
  [v12 activateWithCompletion:v14];
}

void __37__SKSetupServer__handleAcceptCommon___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [[SKEvent alloc] initWithEventType:140 error:v6];
  [*(a1 + 32) _reportEvent:v3];
  v4 = MEMORY[0x26676A4C0](*(*(a1 + 32) + 288));
  v5 = v4;
  if (v4)
  {
    (*(v4 + 16))(v4, v6);
  }
}

void __37__SKSetupServer__handleAcceptCommon___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [[SKAuthenticationRequestEvent alloc] initWithPasswordType:a2 pairingFlags:a3 throttleSeconds:a4];
  [*(a1 + 32) _reportEvent:v5];
}

void __37__SKSetupServer__handleAcceptCommon___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v8 = a3;
  v5 = [[SKAuthenticationPresentEvent alloc] initWithPasswordType:a2 password:v8];
  [*(a1 + 32) _reportEvent:v5];
  v6 = MEMORY[0x26676A4C0](*(*(a1 + 32) + 304));
  v7 = v6;
  if (v6)
  {
    (*(v6 + 16))(v6, a2, v8);
  }
}

void __37__SKSetupServer__handleAcceptCommon___block_invoke_4(uint64_t a1, void *a2)
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

    [*(a1 + 40) _update];
    v3 = v10;
  }
}

uint64_t __37__SKSetupServer__handleAcceptCommon___block_invoke_5(uint64_t result)
{
  v2 = *(result + 40);
  if (*(result + 32) != *(v2 + 120))
  {
    return result;
  }

  v3 = result;
  v4 = **(v2 + 144);
  if (v4 <= 30)
  {
    if (v4 == -1)
    {
      v5 = _LogCategory_Initialize();
      v2 = *(v3 + 40);
      if (!v5)
      {
        goto LABEL_6;
      }

      v10 = *(v2 + 144);
      v11 = *(v3 + 32);
    }

    LogPrintF();
    v2 = *(v3 + 40);
  }

LABEL_6:
  v6 = *(v2 + 120);
  *(v2 + 120) = 0;

  v7 = *(v3 + 40);
  v8 = *(v7 + 240);
  *(v7 + 240) = 0;

  [*(v3 + 40) _connectionEnded:*(v3 + 32)];
  [*(v3 + 40) _reportEventType:41];
  v9 = *(v3 + 40);

  return [v9 _update];
}

void __37__SKSetupServer__handleAcceptCommon___block_invoke_6(uint64_t a1, void *a2)
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

void *__37__SKSetupServer__handleAcceptCommon___block_invoke_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 32);
  result = *(a1 + 40);
  if (v5 == result[15])
  {
    return [result _receivedEventID:a2 event:a3 options:a4];
  }

  return result;
}

void *__37__SKSetupServer__handleAcceptCommon___block_invoke_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(a1 + 32);
  result = *(a1 + 40);
  if (v6 == result[15])
  {
    return [result _receivedRequestID:a2 request:a3 options:a4 responseHandler:a5];
  }

  return result;
}

void *__37__SKSetupServer__handleAcceptCommon___block_invoke_9(uint64_t a1)
{
  v2 = *(a1 + 32);
  result = *(a1 + 40);
  if (v2 == result[15])
  {
    return [result _update];
  }

  return result;
}

void __37__SKSetupServer__handleAcceptCommon___block_invoke_10(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v20 = v3;
  if (*(a1 + 32) != *(v4 + 120))
  {
    v5 = *MEMORY[0x277CCA590];
    v6 = NSErrorF_safe();
    v7 = *(a1 + 40);
    v8 = *v7[18];
    if (v8 <= 90)
    {
      if (v8 == -1)
      {
        v10 = v7[18];
        v11 = _LogCategory_Initialize();
        v7 = *(a1 + 40);
        if (!v11)
        {
          goto LABEL_13;
        }

        v16 = v7[18];
      }

      v19 = CUPrintNSError();
      LogPrintF();

      v7 = *(a1 + 40);
    }

LABEL_13:
    [v7 _update];

    goto LABEL_19;
  }

  v9 = **(v4 + 144);
  if (!v3)
  {
    if (v9 <= 30)
    {
      if (v9 == -1)
      {
        v14 = *(v4 + 144);
        v15 = _LogCategory_Initialize();
        v4 = *(a1 + 40);
        if (!v15)
        {
          goto LABEL_17;
        }

        v18 = *(v4 + 144);
      }

      LogPrintF();
      v4 = *(a1 + 40);
    }

LABEL_17:
    [v4 _reportEventType:40];
    goto LABEL_18;
  }

  if (v9 <= 90)
  {
    if (v9 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_15;
      }

      v17 = *(*(a1 + 40) + 144);
    }

    v19 = CUPrintNSError();
    LogPrintF();
  }

LABEL_15:
  [*(a1 + 32) invalidate];
  v12 = *(a1 + 40);
  v13 = *(v12 + 120);
  *(v12 + 120) = 0;

LABEL_18:
  [*(a1 + 40) _update];
LABEL_19:
}

- (void)_handleAcceptNANData:(id)data endpoint:(id)endpoint
{
  dataCopy = data;
  endpointCopy = endpoint;
  v8 = self->super._skCnx;
  if (!v8)
  {
    v9 = objc_alloc_init(SKConnection);
    skCnx = self->super._skCnx;
    self->super._skCnx = v9;

    identifier = [endpointCopy identifier];
    nanEndpointID = self->_nanEndpointID;
    self->_nanEndpointID = identifier;

    v12 = self->_nanPublisher;
    if (v12)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __47__SKSetupServer__handleAcceptNANData_endpoint___block_invoke;
      v22[3] = &unk_279BB79D8;
      v23 = v9;
      selfCopy = self;
      v25 = v12;
      v26 = endpointCopy;
      [(SKConnection *)v23 setSendDataHandler:v22];
    }

    [(SKSetupServer *)self _handleAcceptCommon:v9];
    goto LABEL_10;
  }

  v9 = v8;
  identifier2 = [endpointCopy identifier];
  v11 = self->_nanEndpointID;
  v12 = identifier2;
  v13 = v11;
  v14 = v13;
  if (v12 == v13)
  {

    goto LABEL_10;
  }

  if ((v12 != 0) == (v13 == 0))
  {

    goto LABEL_13;
  }

  v15 = [(CUNANPublisher *)v12 isEqual:v13];

  if (v15)
  {
LABEL_10:
    [(SKConnection *)v9 receivedData:dataCopy];
    goto LABEL_11;
  }

LABEL_13:
  var0 = self->super._ucat->var0;
  if (var0 <= 90)
  {
    if (var0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_11;
      }

      ucat = self->super._ucat;
    }

    v21 = self->_nanEndpointID;
    LogPrintF();
  }

LABEL_11:
}

void __47__SKSetupServer__handleAcceptNANData_endpoint___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1[5];
  if (a1[4] == *(v4 + 120))
  {
    v5 = *(v4 + 248);
    if (a1[6] == v5)
    {
      v6 = a1[7];
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __47__SKSetupServer__handleAcceptNANData_endpoint___block_invoke_2;
      v7[3] = &unk_279BB8370;
      v7[4] = v4;
      [v5 sendMessageData:v3 endpoint:v6 completionHandler:v7];
    }
  }
}

uint64_t __47__SKSetupServer__handleAcceptNANData_endpoint___block_invoke_2(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = **(*(a1 + 32) + 144);
    if (v3 <= 90)
    {
      if (v3 != -1)
      {
LABEL_4:
        v6 = CUPrintNSError();
        LogPrintF();

        goto LABEL_6;
      }

      if (_LogCategory_Initialize())
      {
        v4 = *(*(a1 + 32) + 144);
        goto LABEL_4;
      }
    }
  }

LABEL_6:

  return MEMORY[0x2821F96F8]();
}

- (void)_handleAcceptBLEConnection:(id)connection
{
  connectionCopy = connection;
  v4 = self->super._skCnx;
  if (v4)
  {
    v5 = v4;
    var0 = self->super._ucat->var0;
    if (var0 <= 90)
    {
      v7 = connectionCopy;
      if (var0 != -1)
      {
LABEL_4:
        v10 = v7;
        LogPrintF();
        [connectionCopy invalidate];
        goto LABEL_8;
      }

      if (_LogCategory_Initialize())
      {
        ucat = self->super._ucat;
        v7 = connectionCopy;
        goto LABEL_4;
      }
    }

    [connectionCopy invalidate];
  }

  else
  {
    v5 = objc_alloc_init(SKConnection);
    [(SKConnection *)v5 setBleConnection:connectionCopy];
    [(SKSetupServer *)self _handleAcceptCommon:v5];
  }

LABEL_8:
}

- (void)_wifiKeepAliveEnsureStopped
{
  if (!self->_wifiKeepAliveInterface)
  {
    goto LABEL_6;
  }

  var0 = self->super._ucat->var0;
  if (var0 > 30)
  {
    goto LABEL_6;
  }

  if (var0 != -1)
  {
    goto LABEL_4;
  }

  if (_LogCategory_Initialize())
  {
    ucat = self->super._ucat;
LABEL_4:
    LogPrintF();
  }

LABEL_6:
  [(CWFInterface *)self->_wifiKeepAliveInterface invalidate];
  wifiKeepAliveInterface = self->_wifiKeepAliveInterface;
  self->_wifiKeepAliveInterface = 0;

  wifiKeepAliveActivity = self->_wifiKeepAliveActivity;
  self->_wifiKeepAliveActivity = 0;

  wifiManager = self->_wifiManager;
  if (wifiManager)
  {
    CFRelease(wifiManager);
    self->_wifiManager = 0;
  }
}

- (void)_wifiKeepAliveEnsureStarted
{
  if (!self->_wifiManager)
  {
    self->_wifiManager = WiFiManagerClientCreate();
    var0 = self->super._ucat->var0;
    if (var0 <= 30)
    {
      if (var0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          return;
        }

        ucat = self->super._ucat;
      }

      LogPrintF();
    }
  }
}

- (void)_nanPublisherEnsureStopped
{
  if (self->_nanPublisher)
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
  [(CUNANPublisher *)self->_nanPublisher invalidate];
  nanPublisher = self->_nanPublisher;
  self->_nanPublisher = 0;
}

- (void)_nanPublisherEnsureStarted
{
  if (!self->_nanPublisher)
  {
    v3 = objc_alloc_init(MEMORY[0x277D028A0]);
    nanPublisher = self->_nanPublisher;
    self->_nanPublisher = v3;

    [(CUNANPublisher *)v3 setControlFlags:1];
    [(CUNANPublisher *)v3 setDispatchQueue:self->super._dispatchQueue];
    [(CUNANPublisher *)v3 setServiceType:@"com.apple.setup"];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __43__SKSetupServer__nanPublisherEnsureStarted__block_invoke;
    v8[3] = &unk_279BB79B0;
    v8[4] = v3;
    v8[5] = self;
    [(CUNANPublisher *)v3 setReceiveHandler:v8];
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
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __43__SKSetupServer__nanPublisherEnsureStarted__block_invoke_2;
    v7[3] = &unk_279BB8838;
    v7[4] = v3;
    v7[5] = self;
    [(CUNANPublisher *)v3 activateWithCompletion:v7];
  }
}

void *__43__SKSetupServer__nanPublisherEnsureStarted__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  result = *(a1 + 40);
  if (v4 == result[31])
  {
    return [result _handleAcceptNANData:a2 endpoint:a3];
  }

  return result;
}

uint64_t __43__SKSetupServer__nanPublisherEnsureStarted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  if (*(a1 + 32) == *(v4 + 248))
  {
    v5 = **(v4 + 144);
    if (v3)
    {
      v14 = v3;
      if (v5 <= 90)
      {
        if (v5 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_10;
          }

          v11 = *(*(a1 + 40) + 144);
        }

        v13 = CUPrintNSError();
        LogPrintF();
      }

LABEL_10:
      [*(a1 + 32) invalidate];
      v6 = *(a1 + 40);
      v7 = *(v6 + 248);
      *(v6 + 248) = 0;

      v8 = *(a1 + 40);
      v9 = [[SKEvent alloc] initWithEventType:42 error:v14];
      [v8 _reportEvent:v9];

      goto LABEL_11;
    }

    if (v5 > 30)
    {
      goto LABEL_11;
    }

    if (v5 != -1)
    {
LABEL_8:
      v3 = LogPrintF();
      goto LABEL_11;
    }

    v3 = _LogCategory_Initialize();
    if (v3)
    {
      v10 = *(*(a1 + 40) + 144);
      goto LABEL_8;
    }
  }

LABEL_11:

  return MEMORY[0x2821F9730](v3);
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
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __40__SKSetupServer__bleServerEnsureStarted__block_invoke;
    v8[3] = &unk_279BB8180;
    v8[4] = v3;
    v8[5] = self;
    [(CBServer *)v3 setAcceptHandler:v8];
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
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __40__SKSetupServer__bleServerEnsureStarted__block_invoke_2;
    v7[3] = &unk_279BB8838;
    v7[4] = v3;
    v7[5] = self;
    [(CBServer *)v3 activateWithCompletion:v7];
  }
}

void __40__SKSetupServer__bleServerEnsureStarted__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v15 = a2;
  v5 = a3;
  v6 = *(a1 + 40);
  if (*(a1 + 32) != *(v6 + 224))
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
  [v6 _handleAcceptBLEConnection:{v10, v14}];
  [*(a1 + 40) _update];
  v5[2](v5, 0);
LABEL_9:
}

uint64_t __40__SKSetupServer__bleServerEnsureStarted__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  if (v4 == *(v5 + 224))
  {
    v6 = **(v5 + 144);
    v17 = v3;
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

          v12 = *(*(a1 + 40) + 144);
        }

        v15 = CUPrintNSError();
        LogPrintF();
      }

LABEL_10:
      [*(a1 + 32) invalidate];
      v7 = *(a1 + 40);
      v8 = *(v7 + 224);
      *(v7 + 224) = 0;

      v9 = *(a1 + 40);
      v10 = [[SKEvent alloc] initWithEventType:42 error:v17];
      [v9 _reportEvent:v10];

      goto LABEL_13;
    }

    if (v6 <= 30)
    {
      if (v6 != -1)
      {
LABEL_8:
        v16 = [v4 bleListeningPSM];
        LogPrintF();
        v4 = [*(a1 + 40) _update];
LABEL_13:
        v3 = v17;
        goto LABEL_14;
      }

      v11 = _LogCategory_Initialize();
      v5 = *(a1 + 40);
      if (v11)
      {
        v13 = *(v5 + 144);
        v4 = *(a1 + 32);
        goto LABEL_8;
      }
    }

    v4 = [v5 _update];
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
      if (var0 == -1)
      {
        ucat = self->super._ucat;
        v6 = _LogCategory_Initialize();
        bleAdvertiser = self->_bleAdvertiser;
        if (!v6)
        {
          goto LABEL_6;
        }

        v8 = self->super._ucat;
      }

      v9 = bleAdvertiser;
      LogPrintF();
      bleAdvertiser = self->_bleAdvertiser;
    }
  }

LABEL_6:
  [(CBAdvertiser *)bleAdvertiser invalidate];
  v7 = self->_bleAdvertiser;
  self->_bleAdvertiser = 0;

  self->_bleAdvertisePSM = 0;
}

- (void)_bleAdvertiserEnsureStarted
{
  bleListeningPSM = [(CBServer *)self->_bleServer bleListeningPSM];
  if (bleListeningPSM)
  {
    v4 = bleListeningPSM;
    bleAdvertisePSM = self->_bleAdvertisePSM;
    if (bleListeningPSM == bleAdvertisePSM || (v6 = self->_bleAdvertiser) == 0)
    {
LABEL_9:
      self->_bleAdvertisePSM = v4;
      v11 = self->_bleAdvertiser;
      if (v11)
      {
LABEL_31:

        return;
      }

      v12 = objc_alloc_init(MEMORY[0x277CBDFF0]);
      bleAdvertiser = self->_bleAdvertiser;
      self->_bleAdvertiser = v12;

      [(CBAdvertiser *)v12 setDispatchQueue:self->super._dispatchQueue];
      [(CBAdvertiser *)v12 setNearbyActionExtraData:self->_nearbyActionExtraData];
      if (self->_skipWifi)
      {
        v14 = 0;
      }

      else
      {
        v14 = 64;
      }

      [(CBAdvertiser *)v12 setNearbyActionFlags:v14];
      setupType = self->super._setupType;
      switch(setupType)
      {
        case 1u:
          v16 = v12;
          v17 = 37;
          goto LABEL_19;
        case 5u:
          v16 = v12;
          v17 = 85;
          goto LABEL_19;
        case 2u:
          v16 = v12;
          v17 = 39;
LABEL_19:
          [(CBAdvertiser *)v16 setNearbyActionType:v17];
          goto LABEL_20;
      }

      var0 = self->super._ucat->var0;
      if (var0 <= 90)
      {
        if (var0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_20;
          }

          ucat = self->super._ucat;
          setupType = self->super._setupType;
        }

        if (setupType <= 5)
        {
          v20 = off_279BB8458[setupType];
        }

        LogPrintF();
      }

LABEL_20:
      if (self->super._authTagOverride)
      {
        [(CBAdvertiser *)v12 setNearbyActionFlags:[(CBAdvertiser *)v12 nearbyActionFlags]| 0x80];
        [(CBAdvertiser *)v12 setNearbyActionAuthTagData:self->super._authTagOverride];
      }

      v18 = self->super._ucat->var0;
      if (v18 > 30)
      {
        goto LABEL_30;
      }

      if (v18 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_30;
        }

        v22 = self->super._ucat;
      }

      LogPrintF();
LABEL_30:
      v27[0] = MEMORY[0x277D85DD0];
      v27[1] = 3221225472;
      v27[2] = __44__SKSetupServer__bleAdvertiserEnsureStarted__block_invoke;
      v27[3] = &unk_279BB8838;
      v11 = v12;
      v28 = v11;
      selfCopy = self;
      [(CBAdvertiser *)v11 activateWithCompletion:v27];

      goto LABEL_31;
    }

    v7 = self->super._ucat->var0;
    if (v7 <= 30)
    {
      if (v7 == -1)
      {
        v8 = self->super._ucat;
        v9 = _LogCategory_Initialize();
        v6 = self->_bleAdvertiser;
        if (!v9)
        {
          goto LABEL_8;
        }

        v23 = self->super._ucat;
        bleAdvertisePSM = self->_bleAdvertisePSM;
      }

      v25 = v4;
      v26 = v6;
      v24 = bleAdvertisePSM;
      LogPrintF();
      v6 = self->_bleAdvertiser;
    }

LABEL_8:
    [(CBAdvertiser *)v6 invalidate:v24];
    v10 = self->_bleAdvertiser;
    self->_bleAdvertiser = 0;

    goto LABEL_9;
  }
}

uint64_t __44__SKSetupServer__bleAdvertiserEnsureStarted__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (v5 == *(v4 + 216))
  {
    v6 = **(v4 + 144);
    v17 = v3;
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

          v12 = *(*(a1 + 40) + 144);
        }

        v15 = CUPrintNSError();
        LogPrintF();
      }

LABEL_10:
      [*(a1 + 32) invalidate];
      v7 = *(a1 + 40);
      v8 = *(v7 + 216);
      *(v7 + 216) = 0;

      v9 = *(a1 + 40);
      v10 = [[SKEvent alloc] initWithEventType:42 error:v17];
      [v9 _reportEvent:v10];

      goto LABEL_13;
    }

    if (v6 <= 30)
    {
      if (v6 != -1)
      {
LABEL_8:
        v16 = v5;
        LogPrintF();
        v4 = [*(a1 + 40) _update];
LABEL_13:
        v3 = v17;
        goto LABEL_14;
      }

      v11 = _LogCategory_Initialize();
      v4 = *(a1 + 40);
      if (v11)
      {
        v13 = *(v4 + 144);
        v5 = *(a1 + 32);
        goto LABEL_8;
      }
    }

    v4 = [v4 _update];
    goto LABEL_13;
  }

LABEL_14:

  return MEMORY[0x2821F96F8](v4, v3);
}

- (BOOL)_bleAdvertiserShouldRun
{
  if (self->_completed)
  {
    LOBYTE(bleListeningPSM) = 0;
  }

  else if (self->super._controlFlags)
  {
    LOBYTE(bleListeningPSM) = 0;
  }

  else
  {
    bleListeningPSM = [(CBServer *)self->_bleServer bleListeningPSM];
    if (bleListeningPSM)
    {
      LOBYTE(bleListeningPSM) = self->super._skCnx == 0;
    }
  }

  return bleListeningPSM;
}

- (void)_prepareStepsOSRecovery
{
  [(SKSetupServer *)self _wifiKeepAliveEnsureStarted];
  v3 = objc_alloc_init(SKStepBasicConfigServer);
  [(SKStepBasicConfigServer *)v3 setDispatchQueue:self->super._dispatchQueue];
  [(SKStepBasicConfigServer *)v3 setSkMessaging:self];
  serverConfig = [(SKSetupServer *)self serverConfig];
  [(SKStepBasicConfigServer *)v3 setServerConfig:serverConfig];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__SKSetupServer__prepareStepsOSRecovery__block_invoke;
  v7[3] = &unk_279BB8370;
  v7[4] = self;
  [(SKStepBasicConfigServer *)v3 setSkCompletionHandler:v7];
  [(SKSetupBase *)self _addStep:v3];
  [(SKStepBasicConfigServer *)v3 activate];

  if (!self->_skipWifi)
  {
    v5 = objc_alloc_init(SKStepWiFiSetupServerLegacy);
    [(SKStepWiFiSetupServerLegacy *)v5 setDispatchQueue:self->super._dispatchQueue];
    [(SKStepWiFiSetupServerLegacy *)v5 setSkMessaging:self];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __40__SKSetupServer__prepareStepsOSRecovery__block_invoke_2;
    v6[3] = &unk_279BB8370;
    v6[4] = self;
    [(SKStepWiFiSetupServerLegacy *)v5 setSkCompletionHandler:v6];
    [(SKSetupBase *)self _addStep:v5];
    [(SKStepWiFiSetupServerLegacy *)v5 activate];
  }
}

uint64_t __40__SKSetupServer__prepareStepsOSRecovery__block_invoke(uint64_t result, uint64_t a2)
{
  if (!a2)
  {
    v2 = *(result + 32);
    if (*(v2 + 280))
    {
      *(v2 + 232) = 1;
    }
  }

  return result;
}

void __40__SKSetupServer__prepareStepsOSRecovery__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [[SKEvent alloc] initWithEventType:20 error:v4];

  [v3 _reportEvent:v5];
  if (!v4)
  {
    *(*(a1 + 32) + 232) = 1;
  }
}

- (void)_prepareSteps
{
  [(SKSetupBase *)self _invalidateSteps];
  if ((self->super._setupType | 4) == 5)
  {

    [(SKSetupServer *)self _prepareStepsOSRecovery];
  }
}

- (void)_update
{
  if (!self->super._invalidateCalled)
  {
    if (self->super._controlFlags)
    {
      [(SKSetupServer *)self _bleServerEnsureStopped];
    }

    else
    {
      [(SKSetupServer *)self _bleServerEnsureStarted];
    }

    if ([(SKSetupServer *)self _bleAdvertiserShouldRun])
    {
      [(SKSetupServer *)self _bleAdvertiserEnsureStarted];
    }

    else
    {
      [(SKSetupServer *)self _bleAdvertiserEnsureStopped];
    }

    if ((self->super._controlFlags & 2) != 0)
    {

      [(SKSetupServer *)self _nanPublisherEnsureStarted];
    }

    else
    {

      [(SKSetupServer *)self _nanPublisherEnsureStopped];
    }
  }
}

- (void)reset
{
  dispatchQueue = self->super._dispatchQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __22__SKSetupServer_reset__block_invoke;
  block[3] = &unk_279BB87E8;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

uint64_t __22__SKSetupServer_reset__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = **(v2 + 144);
  if (v3 <= 30)
  {
    if (v3 != -1)
    {
LABEL_3:
      LogPrintF();
      v2 = *(a1 + 32);
      goto LABEL_5;
    }

    v4 = _LogCategory_Initialize();
    v2 = *(a1 + 32);
    if (v4)
    {
      v7 = *(v2 + 144);
      goto LABEL_3;
    }
  }

LABEL_5:
  *(v2 + 232) = 0;
  v5 = *(a1 + 32);

  return [v5 _update];
}

- (void)_invalidated
{
  if (self->super._invalidateCalled)
  {
    v15 = v2;
    v16 = v3;
    authCompletionHandler = self->_authCompletionHandler;
    self->_authCompletionHandler = 0;

    authShowPasswordHandler = self->_authShowPasswordHandler;
    self->_authShowPasswordHandler = 0;

    authHidePasswordHandler = self->_authHidePasswordHandler;
    self->_authHidePasswordHandler = 0;

    v8 = MEMORY[0x26676A4C0](self->_overallCompletionHandler);
    overallCompletionHandler = self->_overallCompletionHandler;
    self->_overallCompletionHandler = 0;

    if (v8)
    {
      v10 = *MEMORY[0x277CCA590];
      v11 = NSErrorF_safe();
      (v8)[2](v8, v11);
    }

    v12 = MEMORY[0x26676A4C0](self->_invalidationHandler);
    invalidationHandler = self->_invalidationHandler;
    self->_invalidationHandler = 0;

    if (v12)
    {
      v12[2](v12);
    }

    v14.receiver = self;
    v14.super_class = SKSetupServer;
    [(SKSetupBase *)&v14 _invalidated];
  }
}

- (void)_invalidate
{
  [(SKSetupServer *)self _bleAdvertiserEnsureStopped];
  [(SKSetupServer *)self _bleServerEnsureStopped];
  [(SKSetupServer *)self _nanPublisherEnsureStopped];
  [(SKSetupServer *)self _wifiKeepAliveEnsureStopped];
  v3.receiver = self;
  v3.super_class = SKSetupServer;
  [(SKSetupBase *)&v3 _invalidate];
}

- (void)_activateWithCompletion:(id)completion
{
  completionCopy = completion;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __41__SKSetupServer__activateWithCompletion___block_invoke;
  v17 = &unk_279BB8500;
  v20 = &v21;
  selfCopy = self;
  v5 = completionCopy;
  v19 = v5;
  v6 = MEMORY[0x26676A4C0](&v14);
  if (self->super._activateCalled || self->super._invalidateCalled)
  {
    v9 = *MEMORY[0x277CCA590];
    v10 = NSErrorF_safe();
    v11 = v22[5];
    v22[5] = v10;

    goto LABEL_8;
  }

  self->super._activateCalled = 1;
  var0 = self->super._ucat->var0;
  if (var0 <= 30)
  {
    if (var0 == -1)
    {
      ucat = self->super._ucat;
      if (!_LogCategory_Initialize())
      {
        goto LABEL_7;
      }

      v12 = self->super._ucat;
    }

    v13 = CUDescriptionWithLevel();
    LogPrintF();
  }

LABEL_7:
  [(SKSetupServer *)self _prepareSteps:v13];
  [(SKSetupServer *)self _update];
  (*(v5 + 2))(v5, 0);
LABEL_8:
  v6[2](v6);

  _Block_object_dispose(&v21, 8);
}

uint64_t __41__SKSetupServer__activateWithCompletion___block_invoke(void *a1)
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
  v7[2] = __40__SKSetupServer_activateWithCompletion___block_invoke;
  v7[3] = &unk_279BB82D0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(dispatchQueue, v7);
}

- (SKSetupServer)init
{
  v6.receiver = self;
  v6.super_class = SKSetupServer;
  v2 = [(SKSetupBase *)&v6 initWithLogCategory:&gLogCategory_SKSetupServer];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  return v3;
}

@end