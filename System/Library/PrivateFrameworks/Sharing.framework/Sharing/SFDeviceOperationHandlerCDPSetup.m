@interface SFDeviceOperationHandlerCDPSetup
- (SFDeviceOperationHandlerCDPSetup)init;
- (void)_activate;
- (void)_handleCDP;
- (void)_handleCDPSetupRequest:(id)a3 responseHandler:(id)a4;
- (void)_repairCDP;
- (void)activate;
- (void)cdpContext:(id)a3 promptForAdoptionOfMultipleICSC:(id)a4;
- (void)cdpContext:(id)a3 promptForICSCWithIsNumeric:(BOOL)a4 numericLength:(id)a5 isRandom:(BOOL)a6 validator:(id)a7;
- (void)cdpContext:(id)a3 promptForInteractiveAuthenticationWithCompletion:(id)a4;
- (void)cdpContext:(id)a3 promptForLocalSecretWithCompletion:(id)a4;
- (void)cdpContext:(id)a3 promptForRemoteSecretWithDevices:(id)a4 offeringRemoteApproval:(BOOL)a5 validator:(id)a6;
- (void)cdpRecoveryFlowContext:(id)a3 promptForRemoteSecretWithDevices:(id)a4 validator:(id)a5;
- (void)invalidate;
@end

@implementation SFDeviceOperationHandlerCDPSetup

- (SFDeviceOperationHandlerCDPSetup)init
{
  v8.receiver = self;
  v8.super_class = SFDeviceOperationHandlerCDPSetup;
  v2 = [(SFDeviceOperationHandlerCDPSetup *)&v8 init];
  v3 = v2;
  if (v2)
  {
    v4 = SFMainQueue(v2);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v4;

    v6 = v3;
  }

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __44__SFDeviceOperationHandlerCDPSetup_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (gLogCategory_SFDeviceOperationCDPSetup <= 30 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHandlerCDPSetup _activate];
  }

  sfSession = self->_sfSession;
  if (sfSession)
  {
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __45__SFDeviceOperationHandlerCDPSetup__activate__block_invoke;
    v4[3] = &unk_1E788B4F8;
    v4[4] = self;
    [(SFSession *)sfSession registerRequestID:@"_cdpSetup" options:0 handler:v4];
  }

  else if (gLogCategory_SFDeviceOperationCDPSetup <= 90 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHandlerCDPSetup _activate];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SFDeviceOperationHandlerCDPSetup_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

void __46__SFDeviceOperationHandlerCDPSetup_invalidate__block_invoke(uint64_t a1)
{
  if (gLogCategory_SFDeviceOperationCDPSetup <= 30 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
  {
    __46__SFDeviceOperationHandlerCDPSetup_invalidate__block_invoke_cold_1();
  }

  *(*(a1 + 32) + 24) = 1;
  [*(*(a1 + 32) + 16) invalidate];
  v2 = *(a1 + 32);
  v3 = *(v2 + 16);
  *(v2 + 16) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 8);
  *(v4 + 8) = 0;

  v11 = _Block_copy(*(*(a1 + 32) + 32));
  v6 = *(a1 + 32);
  v7 = *(v6 + 32);
  *(v6 + 32) = 0;

  if (v11)
  {
    v8 = NSErrorWithOSStatusF();
    (*(v11 + 2))(v11, v8, 0, 0);
  }

  [*(*(a1 + 32) + 64) deregisterRequestID:@"_cdpSetup"];
  v9 = *(a1 + 32);
  v10 = *(v9 + 64);
  *(v9 + 64) = 0;
}

- (void)_handleCDPSetupRequest:(id)a3 responseHandler:(id)a4
{
  v18 = a3;
  v6 = a4;
  if (!self->_responseHandler)
  {
    v7 = [(SFSession *)self->_sfSession messageSessionTemplate];
    if (v7)
    {
      if (gLogCategory_SFDeviceOperationCDPSetup <= 30 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
      {
        [SFDeviceOperationHandlerCDPSetup _handleCDPSetupRequest:responseHandler:];
      }

      altDSIDNeedingRepair = self->_altDSIDNeedingRepair;
      CDPContextClass = getCDPContextClass();
      if (altDSIDNeedingRepair)
      {
        [(objc_class *)CDPContextClass contextForAccountWithAltDSID:self->_altDSIDNeedingRepair];
      }

      else
      {
        [(objc_class *)CDPContextClass contextForPrimaryAccount];
      }
      v10 = ;
      cdpContext = self->_cdpContext;
      self->_cdpContext = v10;

      v13 = self->_cdpContext;
      if (v13)
      {
        [(CDPContext *)v13 setSharingChannel:v7];
        v14 = [objc_alloc(getCDPStateControllerClass()) initWithContext:self->_cdpContext];
        cdpController = self->_cdpController;
        self->_cdpController = v14;

        [(CDPStateController *)self->_cdpController setUiProvider:self];
        v16 = _Block_copy(v6);
        responseHandler = self->_responseHandler;
        self->_responseHandler = v16;

        if (CFDictionaryGetInt64())
        {
          [(SFDeviceOperationHandlerCDPSetup *)self _repairCDP];
        }

        else
        {
          [(SFDeviceOperationHandlerCDPSetup *)self _handleCDP];
        }

        goto LABEL_24;
      }

      v11 = NSErrorWithOSStatusF();
      if (gLogCategory_SFDeviceOperationCDPSetup > 90 || gLogCategory_SFDeviceOperationCDPSetup == -1 && !_LogCategory_Initialize())
      {
LABEL_23:
        (*(v6 + 2))(v6, v11, 0, 0);

        goto LABEL_24;
      }
    }

    else
    {
      v11 = NSErrorWithOSStatusF();
      if (gLogCategory_SFDeviceOperationCDPSetup > 90 || gLogCategory_SFDeviceOperationCDPSetup == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_23;
      }
    }

    [SFDeviceOperationHandlerCDPSetup _handleCDPSetupRequest:responseHandler:];
    goto LABEL_23;
  }

  v7 = NSErrorWithOSStatusF();
  if (gLogCategory_SFDeviceOperationCDPSetup <= 90 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHandlerCDPSetup _handleCDPSetupRequest:responseHandler:];
  }

  (*(v6 + 2))(v6, v7, 0, 0);
LABEL_24:
}

- (void)_handleCDP
{
  cdpController = self->_cdpController;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__SFDeviceOperationHandlerCDPSetup__handleCDP__block_invoke;
  v3[3] = &unk_1E788F340;
  v3[4] = self;
  [(CDPStateController *)cdpController handleCloudDataProtectionStateWithCompletion:v3];
}

void __46__SFDeviceOperationHandlerCDPSetup__handleCDP__block_invoke(uint64_t a1, char a2, char a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v9 = *(v8 + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SFDeviceOperationHandlerCDPSetup__handleCDP__block_invoke_2;
  block[3] = &unk_1E788F318;
  block[4] = v8;
  v12 = v7;
  v13 = a3;
  v14 = a2;
  v10 = v7;
  dispatch_async(v9, block);
}

void __46__SFDeviceOperationHandlerCDPSetup__handleCDP__block_invoke_2(uint64_t a1)
{
  v9 = _Block_copy(*(*(a1 + 32) + 32));
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 40);
  if (v4 || *(*(a1 + 32) + 40) == 1 && (*(a1 + 48) & 1) == 0)
  {
    if (gLogCategory_SFDeviceOperationCDPSetup <= 90)
    {
      if (gLogCategory_SFDeviceOperationCDPSetup != -1 || (v6 = _LogCategory_Initialize(), v4 = *(a1 + 40), v6))
      {
        *(a1 + 49);
        *(a1 + 48);
        LogPrintF();
        v4 = *(a1 + 40);
      }
    }

    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = SFErrorF();
    }

    v8 = v7;
    if (v9)
    {
      (*(v9 + 2))(v9, v7, 0, 0);
    }

    goto LABEL_19;
  }

  if (gLogCategory_SFDeviceOperationCDPSetup <= 30 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
  {
    __46__SFDeviceOperationHandlerCDPSetup__handleCDP__block_invoke_2_cold_1(a1);
  }

  v5 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, 0, 0, MEMORY[0x1E695E0F8]);
LABEL_19:
    v5 = v9;
  }
}

- (void)_repairCDP
{
  cdpController = self->_cdpController;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = __46__SFDeviceOperationHandlerCDPSetup__repairCDP__block_invoke;
  v3[3] = &unk_1E788C170;
  v3[4] = self;
  [(CDPStateController *)cdpController repairCloudDataProtectionStateWithCompletion:v3];
}

void __46__SFDeviceOperationHandlerCDPSetup__repairCDP__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = *(v6 + 48);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __46__SFDeviceOperationHandlerCDPSetup__repairCDP__block_invoke_2;
  block[3] = &unk_1E788F2F0;
  block[4] = v6;
  v10 = v5;
  v11 = a2;
  v8 = v5;
  dispatch_async(v7, block);
}

void __46__SFDeviceOperationHandlerCDPSetup__repairCDP__block_invoke_2(uint64_t a1)
{
  v9 = _Block_copy(*(*(a1 + 32) + 32));
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  *(v2 + 32) = 0;

  v4 = *(a1 + 40);
  if (v4 || *(*(a1 + 32) + 40) == 1 && (*(a1 + 48) & 1) == 0)
  {
    if (gLogCategory_SFDeviceOperationCDPSetup <= 90)
    {
      if (gLogCategory_SFDeviceOperationCDPSetup != -1 || (v6 = _LogCategory_Initialize(), v4 = *(a1 + 40), v6))
      {
        *(a1 + 48);
        LogPrintF();
        v4 = *(a1 + 40);
      }
    }

    if (v4)
    {
      v7 = v4;
    }

    else
    {
      v7 = SFErrorF();
    }

    v8 = v7;
    if (v9)
    {
      (*(v9 + 2))(v9, v7, 0, 0);
    }

    goto LABEL_19;
  }

  if (gLogCategory_SFDeviceOperationCDPSetup <= 30 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
  {
    __46__SFDeviceOperationHandlerCDPSetup__repairCDP__block_invoke_2_cold_1(a1);
  }

  v5 = v9;
  if (v9)
  {
    (*(v9 + 2))(v9, 0, 0, MEMORY[0x1E695E0F8]);
LABEL_19:
    v5 = v9;
  }
}

- (void)cdpContext:(id)a3 promptForAdoptionOfMultipleICSC:(id)a4
{
  v5 = MEMORY[0x1E696ABC0];
  v6 = a4;
  v7 = [v5 errorWithDomain:@"com.apple.sharing.operation.cdp" code:-8000 userInfo:0];
  (*(a4 + 2))(v6, 0, v7);
}

- (void)cdpContext:(id)a3 promptForICSCWithIsNumeric:(BOOL)a4 numericLength:(id)a5 isRandom:(BOOL)a6 validator:(id)a7
{
  v12 = a3;
  v9 = a5;
  v10 = a7;
  if (gLogCategory_SFDeviceOperationCDPSetup <= 30 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHandlerCDPSetup cdpContext:promptForICSCWithIsNumeric:numericLength:isRandom:validator:];
  }

  v11 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.sharing.operation.cdp" code:-8001 userInfo:0];
  [v10 cancelValidationWithError:v11];
}

- (void)cdpContext:(id)a3 promptForInteractiveAuthenticationWithCompletion:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (gLogCategory_SFDeviceOperationCDPSetup <= 30 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHandlerCDPSetup cdpContext:promptForInteractiveAuthenticationWithCompletion:];
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.sharing.operation.cdp" code:-8002 userInfo:0];
  v5[2](v5, 0, v6);
}

- (void)cdpContext:(id)a3 promptForLocalSecretWithCompletion:(id)a4
{
  v7 = a3;
  v5 = a4;
  if (gLogCategory_SFDeviceOperationCDPSetup <= 30 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHandlerCDPSetup cdpContext:promptForLocalSecretWithCompletion:];
  }

  v6 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.sharing.operation.cdp" code:-8003 userInfo:0];
  v5[2](v5, 0, v6);
}

- (void)cdpContext:(id)a3 promptForRemoteSecretWithDevices:(id)a4 offeringRemoteApproval:(BOOL)a5 validator:(id)a6
{
  v11 = a3;
  v8 = a4;
  v9 = a6;
  if (gLogCategory_SFDeviceOperationCDPSetup <= 30 && (gLogCategory_SFDeviceOperationCDPSetup != -1 || _LogCategory_Initialize()))
  {
    [SFDeviceOperationHandlerCDPSetup cdpContext:promptForRemoteSecretWithDevices:offeringRemoteApproval:validator:];
  }

  v10 = [MEMORY[0x1E696ABC0] errorWithDomain:@"com.apple.sharing.operation.cdp" code:-8004 userInfo:0];
  [v9 cancelValidationWithError:v10];
}

- (void)cdpRecoveryFlowContext:(id)a3 promptForRemoteSecretWithDevices:(id)a4 validator:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v12 = [v10 context];
  v11 = [v10 hasPeersForRemoteApproval];

  [(SFDeviceOperationHandlerCDPSetup *)self cdpContext:v12 promptForRemoteSecretWithDevices:v9 offeringRemoteApproval:v11 validator:v8];
}

uint64_t __46__SFDeviceOperationHandlerCDPSetup__handleCDP__block_invoke_2_cold_1(uint64_t a1)
{
  *(a1 + 49);
  *(a1 + 48);
  return LogPrintF();
}

@end