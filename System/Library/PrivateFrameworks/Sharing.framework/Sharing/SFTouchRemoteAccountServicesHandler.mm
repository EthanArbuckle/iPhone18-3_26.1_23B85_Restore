@interface SFTouchRemoteAccountServicesHandler
- (BOOL)activateWithSession:(id)session error:(id *)error;
- (SFTouchRemoteAccountServicesHandler)initWithConfiguration:(id)configuration;
- (int64_t)_nextServiceTypeForTRAccountServices:(id)services;
- (unint64_t)_nextTRServiceTypeForTRAccountServices:(id)services;
- (void)_authenticateAccount:(id)account serviceType:(int64_t)type companionDevice:(id)device anisetteDataProvider:(id)provider completion:(id)completion;
- (void)_authenticateAccount:(id)account serviceType:(int64_t)type rawPassword:(id)password completion:(id)completion;
- (void)_authenticateGameCenterWithAuthResults:(id)results completion:(id)completion;
- (void)_authenticateWithServiceType:(unint64_t)type authResults:(id)results completion:(id)completion;
- (void)_authenticateWithServiceTypes:(id)types authResults:(id)results completion:(id)completion;
- (void)_authenticateiCloudWithAuthResults:(id)results completion:(id)completion;
- (void)_authenticateiTunesWithAuthResults:(id)results completion:(id)completion;
- (void)_handleTRCompanionAuthenticationRequest:(id)request responseHandler:(id)handler;
- (void)_handleTRProxyAuthenticationRequest:(id)request responseHandler:(id)handler;
- (void)_handleTRProxyDeviceRequest:(id)request responseHandler:(id)handler;
- (void)_saveNewAccount:(id)account completion:(id)completion;
- (void)_saveRemoteVerifiedAccount:(id)account completion:(id)completion;
- (void)invalidate;
@end

@implementation SFTouchRemoteAccountServicesHandler

- (SFTouchRemoteAccountServicesHandler)initWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = SFTouchRemoteAccountServicesHandler;
  v5 = [(SFTouchRemoteAccountServicesHandler *)&v11 init];
  if (v5)
  {
    v6 = [configurationCopy copy];
    configuration = v5->_configuration;
    v5->_configuration = v6;

    defaultStore = [(objc_class *)getACAccountStoreClass_1() defaultStore];
    accountStore = v5->_accountStore;
    v5->_accountStore = defaultStore;

    v5->_appleAccountSignInState = 0;
  }

  return v5;
}

- (BOOL)activateWithSession:(id)session error:(id *)error
{
  sessionCopy = session;
  if (![(BSAtomicSignal *)self->_activated hasBeenSignalled])
  {
    if ([(BSAtomicSignal *)self->_invalidated hasBeenSignalled])
    {
      if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
      {
        [SFTouchRemoteAccountServicesHandler activateWithSession:error:];
        if (error)
        {
          goto LABEL_22;
        }
      }

      else if (error)
      {
        goto LABEL_22;
      }

LABEL_27:
      v11 = 0;
      goto LABEL_28;
    }

    if (sessionCopy)
    {
      if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
      {
        [SFTouchRemoteAccountServicesHandler activateWithSession:error:];
      }

      [(BSAtomicSignal *)self->_activated signal];
      objc_storeStrong(&self->_trSession, session);
      objc_initWeak(&location, self);
      trSession = self->_trSession;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __65__SFTouchRemoteAccountServicesHandler_activateWithSession_error___block_invoke;
      v17[3] = &unk_1E788ED18;
      objc_copyWeak(&v18, &location);
      [(TRSession *)trSession setRequestHandler:v17 forRequestClass:getTRSetupCompanionAuthenticationRequestClass_0()];
      v9 = self->_trSession;
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = __65__SFTouchRemoteAccountServicesHandler_activateWithSession_error___block_invoke_2;
      v15[3] = &unk_1E788ED18;
      objc_copyWeak(&v16, &location);
      [(TRSession *)v9 setRequestHandler:v15 forRequestClass:getTRSetupProxyDeviceRequestClass_0()];
      v10 = self->_trSession;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __65__SFTouchRemoteAccountServicesHandler_activateWithSession_error___block_invoke_3;
      v13[3] = &unk_1E788ED18;
      objc_copyWeak(&v14, &location);
      [(TRSession *)v10 setRequestHandler:v13 forRequestClass:getTRSetupProxyAuthenticationRequestClass_0()];
      objc_destroyWeak(&v14);
      objc_destroyWeak(&v16);
      objc_destroyWeak(&v18);
      objc_destroyWeak(&location);
      goto LABEL_17;
    }

    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      [SFTouchRemoteAccountServicesHandler activateWithSession:error:];
      if (!error)
      {
        goto LABEL_27;
      }
    }

    else if (!error)
    {
      goto LABEL_27;
    }

LABEL_22:
    NSErrorWithOSStatusF();
    *error = v11 = 0;
    goto LABEL_28;
  }

  if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
  {
    [SFTouchRemoteAccountServicesHandler activateWithSession:error:];
  }

LABEL_17:
  v11 = 1;
LABEL_28:

  return v11;
}

void __65__SFTouchRemoteAccountServicesHandler_activateWithSession_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTRCompanionAuthenticationRequest:v7 responseHandler:v5];
}

void __65__SFTouchRemoteAccountServicesHandler_activateWithSession_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTRProxyDeviceRequest:v7 responseHandler:v5];
}

void __65__SFTouchRemoteAccountServicesHandler_activateWithSession_error___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleTRProxyAuthenticationRequest:v7 responseHandler:v5];
}

- (void)invalidate
{
  if (([(BSAtomicSignal *)self->_invalidated hasBeenSignalled]& 1) == 0)
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 50 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      [SFTouchRemoteAccountServicesHandler invalidate];
    }

    invalidated = self->_invalidated;

    [(BSAtomicSignal *)invalidated signal];
  }
}

- (void)_handleTRCompanionAuthenticationRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if ([(BSAtomicSignal *)self->_invalidated hasBeenSignalled])
  {
    account = NSErrorWithOSStatusF();
    handlerCopy[2](handlerCopy, account, 0);
  }

  else
  {
    account = [requestCopy account];
    if (account)
    {
      targetedAccountServices = [requestCopy targetedAccountServices];
      if (targetedAccountServices)
      {
        companionDevice = [requestCopy companionDevice];
        if (companionDevice)
        {
          if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
          {
            [SFTouchRemoteAccountServicesHandler _handleTRCompanionAuthenticationRequest:account responseHandler:?];
          }

          objc_initWeak(&location, self);
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke;
          v12[3] = &unk_1E788ED68;
          objc_copyWeak(&v17, &location);
          v16 = handlerCopy;
          v13 = targetedAccountServices;
          v14 = account;
          v15 = companionDevice;
          [(SFTouchRemoteAccountServicesHandler *)self _saveRemoteVerifiedAccount:v14 completion:v12];

          objc_destroyWeak(&v17);
          objc_destroyWeak(&location);
        }

        else
        {
          v11 = NSErrorWithOSStatusF();
          if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
          {
            [SFTouchRemoteAccountServicesHandler _handleTRCompanionAuthenticationRequest:responseHandler:];
          }

          handlerCopy[2](handlerCopy, v11, 0);
        }
      }

      else
      {
        companionDevice = NSErrorWithOSStatusF();
        if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
        {
          [SFTouchRemoteAccountServicesHandler _handleTRCompanionAuthenticationRequest:responseHandler:];
        }

        handlerCopy[2](handlerCopy, companionDevice, 0);
      }
    }

    else
    {
      targetedAccountServices = NSErrorWithOSStatusF();
      if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
      {
        [SFTouchRemoteAccountServicesHandler _handleTRCompanionAuthenticationRequest:responseHandler:];
      }

      handlerCopy[2](handlerCopy, targetedAccountServices, 0);
    }
  }
}

void __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  if (v3)
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 56) + 16))();
  }

  v5 = [WeakRetained _nextServiceTypeForTRAccountServices:*(a1 + 32)];
  if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
  {
    __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_cold_2(v5);
  }

  v6 = objc_alloc(getTRAnisetteDataProviderClass_0());
  v7 = [WeakRetained trSession];
  v8 = [v6 initWithSession:v7];

  v9 = *(a1 + 40);
  v10 = *(a1 + 48);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_2;
  v11[3] = &unk_1E788ED40;
  objc_copyWeak(v14, (a1 + 64));
  v14[1] = v5;
  v12 = *(a1 + 32);
  v13 = *(a1 + 56);
  [WeakRetained _authenticateAccount:v9 serviceType:v5 companionDevice:v10 anisetteDataProvider:v8 completion:v11];

  objc_destroyWeak(v14);
}

void __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!v5 || v6)
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 60 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_2_cold_1(a1);
    }

    v9 = objc_alloc_init(getTRSetupAuthenticationResponseClass_0());
    [v9 setUnauthenticatedAccountServices:*(a1 + 32)];
    [v9 setError:v6];
    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_3;
    v10[3] = &unk_1E788B6D8;
    v8 = *(a1 + 32);
    v11 = *(a1 + 40);
    [WeakRetained _authenticateWithServiceTypes:v8 authResults:v5 completion:v10];
  }
}

void __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_3_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_3_cold_2();
    }

    v3 = objc_alloc_init(getTRSetupAuthenticationResponseClass_0());
    v4 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    [v3 setUnauthenticatedAccountServices:v4];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_handleTRProxyDeviceRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
  {
    [SFTouchRemoteAccountServicesHandler _handleTRProxyDeviceRequest:responseHandler:];
  }

  if ([(BSAtomicSignal *)self->_invalidated hasBeenSignalled])
  {
    currentDevice = NSErrorWithOSStatusF();
    handlerCopy[2](handlerCopy, currentDevice, 0);
  }

  else
  {
    currentDevice = [(objc_class *)getAKDeviceClass_0() currentDevice];
    [currentDevice setLinkType:3];
    v8 = objc_alloc_init(getTRSetupProxyDeviceResponseClass_0());
    [v8 setProxyDevice:currentDevice];
    (handlerCopy)[2](handlerCopy, 0, v8);
  }
}

- (void)_handleTRProxyAuthenticationRequest:(id)request responseHandler:(id)handler
{
  requestCopy = request;
  handlerCopy = handler;
  if ([(BSAtomicSignal *)self->_invalidated hasBeenSignalled])
  {
    account = NSErrorWithOSStatusF();
    handlerCopy[2](handlerCopy, account, 0);
  }

  else
  {
    account = [requestCopy account];
    if (account)
    {
      rawPassword = [requestCopy rawPassword];
      if (rawPassword)
      {
        targetedAccountServices = [requestCopy targetedAccountServices];
        if (targetedAccountServices)
        {
          if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
          {
            [SFTouchRemoteAccountServicesHandler _handleTRProxyAuthenticationRequest:account responseHandler:?];
          }

          [account _aa_setRawPassword:rawPassword];
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke;
          v12[3] = &unk_1E788C6B0;
          v16 = handlerCopy;
          v12[4] = self;
          v13 = targetedAccountServices;
          v14 = account;
          v15 = rawPassword;
          [(SFTouchRemoteAccountServicesHandler *)self _saveRemoteVerifiedAccount:v14 completion:v12];
        }

        else
        {
          v11 = NSErrorWithOSStatusF();
          if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
          {
            [SFTouchRemoteAccountServicesHandler _handleTRProxyAuthenticationRequest:responseHandler:];
          }

          handlerCopy[2](handlerCopy, v11, 0);
        }
      }

      else
      {
        targetedAccountServices = NSErrorWithOSStatusF();
        if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
        {
          [SFTouchRemoteAccountServicesHandler _handleTRProxyAuthenticationRequest:responseHandler:];
        }

        handlerCopy[2](handlerCopy, targetedAccountServices, 0);
      }
    }

    else
    {
      rawPassword = NSErrorWithOSStatusF();
      if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
      {
        [SFTouchRemoteAccountServicesHandler _handleTRProxyAuthenticationRequest:responseHandler:];
      }

      handlerCopy[2](handlerCopy, rawPassword, 0);
    }
  }
}

void __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 64) + 16))();
  }

  v4 = [*(a1 + 32) _nextServiceTypeForTRAccountServices:*(a1 + 40)];
  if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
  {
    __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_cold_2(v4);
  }

  objc_initWeak(&location, *(a1 + 32));
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_2;
  v8[3] = &unk_1E788ED90;
  objc_copyWeak(v11, &location);
  v11[1] = v4;
  v10 = *(a1 + 64);
  v9 = *(a1 + 40);
  [v5 _authenticateAccount:v6 serviceType:v4 rawPassword:v7 completion:v8];

  objc_destroyWeak(v11);
  objc_destroyWeak(&location);
}

void __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (!v5 || v6)
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_2_cold_1(a1);
    }

    v9 = *(a1 + 40);
    if (v6)
    {
      (*(v9 + 16))(v9, v6, 0);
    }

    else
    {
      v10 = NSErrorWithOSStatusF();
      (*(v9 + 16))(v9, v10, 0);
    }
  }

  else
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_3;
    v11[3] = &unk_1E788B6D8;
    v8 = *(a1 + 32);
    v12 = *(a1 + 40);
    [WeakRetained _authenticateWithServiceTypes:v8 authResults:v5 completion:v11];
  }
}

void __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_3_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_3_cold_2();
    }

    v3 = objc_alloc_init(getTRSetupAuthenticationResponseClass_0());
    v4 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    [v3 setUnauthenticatedAccountServices:v4];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_saveRemoteVerifiedAccount:(id)account completion:(id)completion
{
  accountCopy = account;
  completionCopy = completion;
  accountStore = self->_accountStore;
  accountType = [accountCopy accountType];
  identifier = [accountType identifier];
  v11 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:identifier];

  [accountCopy setAccountType:v11];
  [accountCopy _setObjectID:0];
  [accountCopy markAllPropertiesDirty];
  v12 = self->_accountStore;
  credential = [accountCopy credential];
  v19 = 0;
  [(ACAccountStore *)v12 setCredential:credential forAccount:accountCopy serviceID:0 error:&v19];
  v14 = v19;

  if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
  {
    [SFTouchRemoteAccountServicesHandler _saveRemoteVerifiedAccount:completion:];
  }

  v15 = self->_accountStore;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __77__SFTouchRemoteAccountServicesHandler__saveRemoteVerifiedAccount_completion___block_invoke;
  v17[3] = &unk_1E788C7A0;
  v18 = completionCopy;
  v16 = completionCopy;
  [(ACAccountStore *)v15 saveVerifiedAccount:accountCopy withCompletionHandler:v17];
}

void __77__SFTouchRemoteAccountServicesHandler__saveRemoteVerifiedAccount_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (!v5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v9 = v5;
  v6 = [v5 domain];
  if ([v6 isEqual:*MEMORY[0x1E6959978]])
  {
    v7 = [v9 code];

    if (v7 == 5)
    {
      v5 = v9;
LABEL_7:

LABEL_8:
      v8 = 0;
      goto LABEL_12;
    }
  }

  else
  {
  }

  v8 = v9;
  if (!v9)
  {
    v8 = NSErrorWithOSStatusF();
  }

LABEL_12:
  v10 = v8;
  (*(*(a1 + 32) + 16))();
}

- (void)_authenticateAccount:(id)account serviceType:(int64_t)type companionDevice:(id)device anisetteDataProvider:(id)provider completion:(id)completion
{
  v11 = getAKAppleIDAuthenticationContextClass_0;
  completionCopy = completion;
  providerCopy = provider;
  deviceCopy = device;
  accountCopy = account;
  v18 = objc_alloc_init(v11());
  [v18 _setProxyingForApp:1];
  [v18 setAnisetteDataProvider:providerCopy];

  [v18 setAuthenticationType:1];
  [v18 setCompanionDevice:deviceCopy];

  [v18 setIsUsernameEditable:0];
  [v18 setServiceType:type];
  [v18 setShouldAllowAppleIDCreation:0];
  [v18 setShouldUpdatePersistentServiceTokens:1];
  username = [accountCopy username];

  [v18 setUsername:username];
  v17 = objc_alloc_init(getAKAppleIDAuthenticationControllerClass_0());
  [v17 authenticateWithContext:v18 completion:completionCopy];
}

- (void)_authenticateAccount:(id)account serviceType:(int64_t)type rawPassword:(id)password completion:(id)completion
{
  v9 = getAKAppleIDAuthenticationContextClass_0;
  completionCopy = completion;
  passwordCopy = password;
  accountCopy = account;
  v15 = objc_alloc_init(v9());
  [v15 _setProxyingForApp:1];
  [v15 _setPassword:passwordCopy];

  [v15 setAuthenticationType:1];
  [v15 setIsUsernameEditable:0];
  [v15 setServiceType:type];
  [v15 setShouldAllowAppleIDCreation:0];
  [v15 setShouldUpdatePersistentServiceTokens:1];
  username = [accountCopy username];

  [v15 setUsername:username];
  v14 = objc_alloc_init(getAKAppleIDAuthenticationControllerClass_0());
  [v14 authenticateWithContext:v15 completion:completionCopy];
}

- (void)_authenticateWithServiceTypes:(id)types authResults:(id)results completion:(id)completion
{
  typesCopy = types;
  resultsCopy = results;
  completionCopy = completion;
  if ([typesCopy count])
  {
    v11 = [(SFTouchRemoteAccountServicesHandler *)self _nextTRServiceTypeForTRAccountServices:typesCopy];
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      [SFTouchRemoteAccountServicesHandler _authenticateWithServiceTypes:v11 authResults:? completion:?];
    }

    objc_initWeak(&location, self);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __92__SFTouchRemoteAccountServicesHandler__authenticateWithServiceTypes_authResults_completion___block_invoke;
    v12[3] = &unk_1E788EDB8;
    objc_copyWeak(v16, &location);
    v16[1] = v11;
    v15 = completionCopy;
    v13 = typesCopy;
    v14 = resultsCopy;
    [(SFTouchRemoteAccountServicesHandler *)self _authenticateWithServiceType:v11 authResults:v14 completion:v12];

    objc_destroyWeak(v16);
    objc_destroyWeak(&location);
  }

  else
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      [SFTouchRemoteAccountServicesHandler _authenticateWithServiceTypes:authResults:completion:];
    }

    (*(completionCopy + 2))(completionCopy, 0);
  }
}

void __92__SFTouchRemoteAccountServicesHandler__authenticateWithServiceTypes_authResults_completion___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v6)
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      __92__SFTouchRemoteAccountServicesHandler__authenticateWithServiceTypes_authResults_completion___block_invoke_cold_1(a1);
    }

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v4 = [*(a1 + 32) mutableCopy];
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
    [v4 removeObject:v5];

    [WeakRetained _authenticateWithServiceTypes:v4 authResults:*(a1 + 40) completion:*(a1 + 48)];
  }
}

- (void)_authenticateWithServiceType:(unint64_t)type authResults:(id)results completion:(id)completion
{
  resultsCopy = results;
  completionCopy = completion;
  supportedTRAccountServices = [(SFTouchRemoteAccountServicesHandlerConfiguration *)self->_configuration supportedTRAccountServices];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:type];
  v11 = [supportedTRAccountServices containsObject:v10];

  if (!v11)
  {
LABEL_6:
    v12 = NSErrorWithOSStatusF();
    completionCopy[2](completionCopy, v12);

    goto LABEL_7;
  }

  switch(type)
  {
    case 3uLL:
      [(SFTouchRemoteAccountServicesHandler *)self _authenticateGameCenterWithAuthResults:resultsCopy completion:completionCopy];
      break;
    case 2uLL:
      [(SFTouchRemoteAccountServicesHandler *)self _authenticateiTunesWithAuthResults:resultsCopy completion:completionCopy];
      break;
    case 1uLL:
      [(SFTouchRemoteAccountServicesHandler *)self _authenticateiCloudWithAuthResults:resultsCopy completion:completionCopy];
      break;
    default:
      goto LABEL_6;
  }

LABEL_7:
}

- (void)_authenticateiCloudWithAuthResults:(id)results completion:(id)completion
{
  resultsCopy = results;
  completionCopy = completion;
  getAKAuthenticationAlternateDSIDKey_0();
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  getAKAuthenticationUsernameKey_0();
  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  getAKAuthenticationPasswordKey_0();
  CFStringGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  isPrimaryAppleAccount = [(SFTouchRemoteAccountServicesHandlerConfiguration *)self->_configuration isPrimaryAppleAccount];
  accountStore = self->_accountStore;
  if (isPrimaryAppleAccount)
  {
    [(ACAccountStore *)accountStore aa_primaryAppleAccount];
  }

  else
  {
    [(ACAccountStore *)accountStore aa_appleAccountWithAltDSID:v8];
  }
  v13 = ;
  v14 = v13;
  v15 = 1;
  if (v13)
  {
    v15 = 2;
  }

  self->_appleAccountSignInState = v15;
  if (v13)
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      [SFTouchRemoteAccountServicesHandler _authenticateiCloudWithAuthResults:v14 completion:?];
    }

    [v14 setAuthenticated:0];
    [v14 aa_setPassword:v10];
    v16 = self->_accountStore;
    v32[0] = MEMORY[0x1E69E9820];
    v32[1] = 3221225472;
    v32[2] = __85__SFTouchRemoteAccountServicesHandler__authenticateiCloudWithAuthResults_completion___block_invoke;
    v32[3] = &unk_1E788C660;
    v33 = v14;
    v34 = v9;
    v35 = completionCopy;
    [(ACAccountStore *)v16 verifyCredentialsForAccount:v33 saveWhenAuthorized:1 withHandler:v32];

    v17 = v33;
  }

  else
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      [SFTouchRemoteAccountServicesHandler _authenticateiCloudWithAuthResults:completion:];
    }

    v18 = objc_alloc(MEMORY[0x1E6959A28]);
    aa_appleAccountType = [(ACAccountStore *)self->_accountStore aa_appleAccountType];
    v20 = [v18 initWithAccountType:aa_appleAccountType];

    [v20 setUsername:v9];
    v21 = [MEMORY[0x1E6959A30] credentialWithPassword:v10];
    [v20 setCredential:v21];

    isPrimaryAppleAccount2 = [(SFTouchRemoteAccountServicesHandlerConfiguration *)self->_configuration isPrimaryAppleAccount];
    v23 = &getAAAccountClassPrimary;
    if (!isPrimaryAppleAccount2)
    {
      v23 = &getAAAccountClassFull;
    }

    v24 = (*v23)();
    [v20 aa_setAccountClass:v24];

    objc_initWeak(&location, self);
    v25 = self->_accountStore;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __85__SFTouchRemoteAccountServicesHandler__authenticateiCloudWithAuthResults_completion___block_invoke_2;
    v26[3] = &unk_1E788EDE0;
    objc_copyWeak(&v30, &location);
    v27 = v9;
    v29 = completionCopy;
    v17 = v20;
    v28 = v17;
    [(ACAccountStore *)v25 aa_registerAppleAccount:v17 withCompletion:v26];

    objc_destroyWeak(&v30);
    objc_destroyWeak(&location);
  }
}

void __85__SFTouchRemoteAccountServicesHandler__authenticateiCloudWithAuthResults_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  if (!v8 || v5)
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      __85__SFTouchRemoteAccountServicesHandler__authenticateiCloudWithAuthResults_completion___block_invoke_cold_2(a1);
    }

    v6 = *(a1 + 48);
    if (v5)
    {
      (*(v6 + 16))(v6, v5);
    }

    else
    {
      v7 = NSErrorWithOSStatusF();
      (*(v6 + 16))(v6, v7);
    }
  }

  else
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      __85__SFTouchRemoteAccountServicesHandler__authenticateiCloudWithAuthResults_completion___block_invoke_cold_1(v8, a1);
    }

    (*(*(a1 + 48) + 16))();
  }
}

void __85__SFTouchRemoteAccountServicesHandler__authenticateiCloudWithAuthResults_completion___block_invoke_2(uint64_t a1, char a2, void *a3)
{
  v12 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = v12;
  v7 = WeakRetained;
  if (v12 || (a2 & 1) == 0)
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 90)
    {
      if (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || (v8 = _LogCategory_Initialize(), v6 = v12, v8))
      {
        v11 = *(a1 + 32);
        LogPrintF();
        v6 = v12;
      }
    }

    v9 = *(a1 + 48);
    if (v6)
    {
      (*(v9 + 16))(v9);
    }

    else
    {
      v10 = NSErrorWithOSStatusF();
      (*(v9 + 16))(v9, v10);
    }
  }

  else
  {
    if (gLogCategory_SFTouchRemoteAccountServicesHandler <= 30 && (gLogCategory_SFTouchRemoteAccountServicesHandler != -1 || _LogCategory_Initialize()))
    {
      __85__SFTouchRemoteAccountServicesHandler__authenticateiCloudWithAuthResults_completion___block_invoke_2_cold_1(a1);
    }

    [v7 _saveNewAccount:*(a1 + 40) completion:*(a1 + 48)];
  }
}

- (void)_saveNewAccount:(id)account completion:(id)completion
{
  v39 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  completionCopy = completion;
  [accountCopy setAuthenticated:0];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([accountCopy aa_isPrimaryEmailVerified])
  {
    selfCopy = self;
    v24 = completionCopy;
    v25 = accountCopy;
    v9 = [(ACAccountStore *)self->_accountStore dataclassActionsForAccountSave:accountCopy];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v10 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
    if (v10)
    {
      v11 = v10;
      v26 = *v34;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v34 != v26)
          {
            objc_enumerationMutation(v9);
          }

          v13 = *(*(&v33 + 1) + 8 * i);
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v14 = [v9 objectForKeyedSubscript:v13];
          v15 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
          if (v15)
          {
            v16 = v15;
            v17 = *v30;
            do
            {
              for (j = 0; j != v16; ++j)
              {
                if (*v30 != v17)
                {
                  objc_enumerationMutation(v14);
                }

                v19 = *(*(&v29 + 1) + 8 * j);
                if ([v19 type])
                {
                  [v8 setObject:v19 forKeyedSubscript:v13];
                }
              }

              v16 = [v14 countByEnumeratingWithState:&v29 objects:v37 count:16];
            }

            while (v16);
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v33 objects:v38 count:16];
      }

      while (v11);
    }

    completionCopy = v24;
    accountCopy = v25;
    self = selfCopy;
  }

  accountStore = self->_accountStore;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __66__SFTouchRemoteAccountServicesHandler__saveNewAccount_completion___block_invoke;
  v27[3] = &unk_1E788C7A0;
  v28 = completionCopy;
  v21 = completionCopy;
  [(ACAccountStore *)accountStore saveAccount:accountCopy withDataclassActions:v8 completion:v27];

  v22 = *MEMORY[0x1E69E9840];
}

void __66__SFTouchRemoteAccountServicesHandler__saveNewAccount_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8 = v5;
  if (v5 || (a2 & 1) == 0)
  {
    if (v5)
    {
      (*(v6 + 16))(v6, v5);
    }

    else
    {
      v7 = NSErrorWithOSStatusF();
      (*(v6 + 16))(v6, v7);
    }
  }

  else
  {
    (*(v6 + 16))(v6, 0);
  }
}

- (void)_authenticateiTunesWithAuthResults:(id)results completion:(id)completion
{
  completionCopy = completion;
  v7 = *MEMORY[0x1E698DB40];
  resultsCopy = results;
  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  v10 = *MEMORY[0x1E698DBF0];
  CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue();
  v12 = *MEMORY[0x1E698DBC8];
  CFStringGetTypeID();
  v13 = CFDictionaryGetTypedValue();

  contextForSignIn = [(objc_class *)getSSMutableAuthenticationContextClass_0() contextForSignIn];
  [contextForSignIn setAccountName:v11];
  [contextForSignIn setAllowsRetry:0];
  [contextForSignIn setAltDSID:v9];
  [contextForSignIn setCanSetActiveAccount:0];
  [contextForSignIn setPasswordEquivalentToken:v13];
  [contextForSignIn setPromptStyle:1];
  [contextForSignIn setShouldSuppressDialogs:{-[SFTouchRemoteAccountServicesHandlerConfiguration shouldSuppressStoreSignInDialogs](self->_configuration, "shouldSuppressStoreSignInDialogs")}];
  [contextForSignIn setShouldIgnoreAccountConversion:{-[SFTouchRemoteAccountServicesHandlerConfiguration shouldIgnoreStoreAccountConversion](self->_configuration, "shouldIgnoreStoreAccountConversion")}];
  defaultStore = [(objc_class *)getSSAccountStoreClass_0() defaultStore];
  v16 = [objc_alloc(getSSAuthenticateRequestClass_0()) initWithAuthenticationContext:contextForSignIn];
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __85__SFTouchRemoteAccountServicesHandler__authenticateiTunesWithAuthResults_completion___block_invoke;
  v19[3] = &unk_1E788EE08;
  v20 = defaultStore;
  v21 = completionCopy;
  v19[4] = self;
  v17 = defaultStore;
  v18 = completionCopy;
  [v16 startWithAuthenticateResponseBlock:v19];
}

void __85__SFTouchRemoteAccountServicesHandler__authenticateiTunesWithAuthResults_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a3;
  v5 = [a2 authenticatedAccount];
  if (v5)
  {
    if ([*(*(a1 + 32) + 40) shouldActivateStoreAccount])
    {
      [v5 setActive:1];
    }

    [*(a1 + 40) saveAccount:v5 error:0];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v6 = *(a1 + 48);
    if (v8)
    {
      (*(v6 + 16))(v6);
    }

    else
    {
      v7 = NSErrorWithOSStatusF();
      (*(v6 + 16))(v6, v7);
    }
  }
}

- (void)_authenticateGameCenterWithAuthResults:(id)results completion:(id)completion
{
  completionCopy = completion;
  v6 = NSErrorWithOSStatusF();
  (*(completion + 2))(completionCopy, v6);
}

- (int64_t)_nextServiceTypeForTRAccountServices:(id)services
{
  servicesCopy = services;
  if ([servicesCopy containsObject:&unk_1F1D7CE08])
  {
    v4 = 1;
  }

  else if ([servicesCopy containsObject:&unk_1F1D7CE20])
  {
    v4 = 2;
  }

  else if ([servicesCopy containsObject:&unk_1F1D7CE38])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_nextTRServiceTypeForTRAccountServices:(id)services
{
  servicesCopy = services;
  if ([servicesCopy containsObject:&unk_1F1D7CE08])
  {
    v4 = 1;
  }

  else if ([servicesCopy containsObject:&unk_1F1D7CE20])
  {
    v4 = 2;
  }

  else if ([servicesCopy containsObject:&unk_1F1D7CE38])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)_handleTRCompanionAuthenticationRequest:(void *)a1 responseHandler:.cold.1(void *a1)
{
  v1 = [a1 username];
  LogPrintF();
}

uint64_t __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_cold_2(uint64_t a1)
{
  if ((a1 - 1) <= 5)
  {
    v1 = off_1E788EE28[a1 - 1];
  }

  return LogPrintF();
}

uint64_t __95__SFTouchRemoteAccountServicesHandler__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = *(a1 + 56) - 1;
  if (v1 <= 5)
  {
    v2 = off_1E788EE28[v1];
  }

  return LogPrintF();
}

- (void)_handleTRProxyAuthenticationRequest:(void *)a1 responseHandler:.cold.1(void *a1)
{
  v1 = [a1 username];
  LogPrintF();
}

uint64_t __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_cold_2(uint64_t a1)
{
  if ((a1 - 1) <= 5)
  {
    v1 = off_1E788EE28[a1 - 1];
  }

  return LogPrintF();
}

uint64_t __91__SFTouchRemoteAccountServicesHandler__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = *(a1 + 56) - 1;
  if (v1 <= 5)
  {
    v2 = off_1E788EE28[v1];
  }

  return LogPrintF();
}

- (uint64_t)_authenticateWithServiceTypes:(uint64_t)a1 authResults:completion:.cold.1(uint64_t a1)
{
  if ((a1 - 1) <= 2)
  {
    v1 = off_1E788EE58[a1 - 1];
  }

  return LogPrintF();
}

uint64_t __92__SFTouchRemoteAccountServicesHandler__authenticateWithServiceTypes_authResults_completion___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 64) - 1;
  if (v1 <= 2)
  {
    v2 = off_1E788EE58[v1];
  }

  return LogPrintF();
}

- (void)_authenticateiCloudWithAuthResults:(void *)a1 completion:.cold.1(void *a1)
{
  v1 = [a1 username];
  LogPrintF();
}

void __85__SFTouchRemoteAccountServicesHandler__authenticateiCloudWithAuthResults_completion___block_invoke_cold_1(void *a1, uint64_t a2)
{
  v3 = [a1 username];
  v4 = *(a2 + 40);
  LogPrintF();
}

void __85__SFTouchRemoteAccountServicesHandler__authenticateiCloudWithAuthResults_completion___block_invoke_cold_2(uint64_t a1)
{
  v2 = [*(a1 + 32) username];
  v3 = *(a1 + 40);
  LogPrintF();
}

void __85__SFTouchRemoteAccountServicesHandler__authenticateiCloudWithAuthResults_completion___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = [*(a1 + 40) username];
  LogPrintF();
}

@end