@interface SFAuthenticateAccountsService
- (BOOL)_shouldSignInAccountsInInfoRequest:(id)a3;
- (BOOL)_validateConfiguration;
- (SFAuthenticateAccountsService)init;
- (SFAuthenticateAccountsServiceConfiguration)configuration;
- (SFAuthenticateAccountsServiceDelegate)delegate;
- (id)_configurationExistingAccountWithType:(unsigned int)a3;
- (int64_t)_nextServiceTypeForTRAccountServices:(id)a3;
- (unint64_t)_nextTRServiceTypeForTRAccountServices:(id)a3;
- (unsigned)_accountTypeForTRAccountService:(unint64_t)a3;
- (void)__runAuthenticateiCloudWithAuthResults:(id)a3 completion:(id)a4;
- (void)_activate;
- (void)_authenticateAccount:(id)a3 serviceType:(int64_t)a4 companionDevice:(id)a5 anisetteDataProvider:(id)a6 completion:(id)a7;
- (void)_authenticateAccount:(id)a3 serviceType:(int64_t)a4 password:(id)a5 completion:(id)a6;
- (void)_authenticateGameCenterWithAuthResults:(id)a3 completion:(id)a4;
- (void)_authenticateWithServiceType:(unint64_t)a3 authResults:(id)a4 completion:(id)a5;
- (void)_authenticateWithServiceTypes:(id)a3 authResults:(id)a4 completion:(id)a5;
- (void)_authenticateiCloudWithAuthResults:(id)a3 completion:(id)a4;
- (void)_authenticateiTunesWithAuthResults:(id)a3 completion:(id)a4;
- (void)_cleanup;
- (void)_finishSession:(id)a3;
- (void)_handleInfoExchange:(id)a3 responseHandler:(id)a4;
- (void)_handleSessionEnded:(id)a3;
- (void)_handleSessionStarted:(id)a3;
- (void)_handleTRCompanionAuthenticationRequest:(id)a3 responseHandler:(id)a4;
- (void)_handleTRProxyAuthenticationRequest:(id)a3 responseHandler:(id)a4;
- (void)_handleTRProxyDeviceRequest:(id)a3 responseHandler:(id)a4;
- (void)_invalidate;
- (void)_saveAccount:(id)a3 completion:(id)a4;
- (void)_saveRemoteVerifiedAccount:(id)a3 completion:(id)a4;
- (void)_sfServiceStart;
- (void)_validateiCloudCredentialsWithRequest:(id)a3 unvalidatedResponse:(id)a4 completionHandler:(id)a5;
- (void)activate;
- (void)invalidate;
- (void)setConfiguration:(id)a3;
@end

@implementation SFAuthenticateAccountsService

- (SFAuthenticateAccountsService)init
{
  v8.receiver = self;
  v8.super_class = SFAuthenticateAccountsService;
  v2 = [(SFAuthenticateAccountsService *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(SFAuthenticateAccountsServiceConfiguration);
    configuration = v2->_configuration;
    v2->_configuration = v3;

    v5 = SFMainQueue();
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v5;
  }

  return v2;
}

- (void)_cleanup
{
  progressHandler = self->_progressHandler;
  self->_progressHandler = 0;

  accountStore = self->_accountStore;
  self->_accountStore = 0;

  cdpUIProvider = self->_cdpUIProvider;
  self->_cdpUIProvider = 0;

  authenticatedAccounts = self->_authenticatedAccounts;
  self->_authenticatedAccounts = 0;

  knownHomeUserIdentifiers = self->_knownHomeUserIdentifiers;
  self->_knownHomeUserIdentifiers = 0;

  self->_isVoiceProfileAvailable = 0;
  preferredLanguageCode = self->_preferredLanguageCode;
  self->_preferredLanguageCode = 0;

  localeIdentifier = self->_localeIdentifier;
  self->_localeIdentifier = 0;

  preferredLanguages = self->_preferredLanguages;
  self->_preferredLanguages = 0;
}

- (SFAuthenticateAccountsServiceConfiguration)configuration
{
  v2 = [(SFAuthenticateAccountsServiceConfiguration *)self->_configuration copy];

  return v2;
}

- (void)setConfiguration:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!self->_activateCalled)
  {
    v9 = v4;
    v7 = [v4 copy];
    configuration = self->_configuration;
    self->_configuration = v7;

    goto LABEL_7;
  }

  if (gLogCategory_SFAuthenticateAccountsService <= 115)
  {
    v9 = v4;
    if (gLogCategory_SFAuthenticateAccountsService != -1 || (v6 = _LogCategory_Initialize(), v5 = v9, v6))
    {
      [SFAuthenticateAccountsService setConfiguration:];
LABEL_7:
      v5 = v9;
    }
  }
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __41__SFAuthenticateAccountsService_activate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (!self->_activateCalled && gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
  {
    [SFAuthenticateAccountsService _activate];
  }

  self->_activateCalled = 1;
  v3 = [(objc_class *)getACAccountStoreClass() defaultStore];
  accountStore = self->_accountStore;
  self->_accountStore = v3;

  if ([(SFAuthenticateAccountsService *)self _validateConfiguration])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    authenticatedAccounts = self->_authenticatedAccounts;
    self->_authenticatedAccounts = v5;

    [(SFAuthenticateAccountsService *)self _sfServiceStart];
  }
}

- (BOOL)_validateConfiguration
{
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__SFAuthenticateAccountsService__validateConfiguration__block_invoke;
  aBlock[3] = &unk_1E788B198;
  aBlock[4] = self;
  v3 = _Block_copy(aBlock);
  if ((![(SFAuthenticateAccountsServiceConfiguration *)self->_configuration serviceType]|| ([(SFAuthenticateAccountsServiceConfiguration *)self->_configuration serviceType]& 1) != 0) && ![(SFAuthenticateAccountsServiceConfiguration *)self->_configuration targetedAccountTypes])
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      [SFAuthenticateAccountsService _validateConfiguration];
    }

    goto LABEL_22;
  }

  if (([(SFAuthenticateAccountsServiceConfiguration *)self->_configuration serviceType]& 1) != 0 || ([(SFAuthenticateAccountsServiceConfiguration *)self->_configuration serviceType]& 2) != 0)
  {
    v4 = [(SFAuthenticateAccountsServiceConfiguration *)self->_configuration existingAccountsIdentifiers];
    v5 = [v4 count];

    if (!v5)
    {
      if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
      {
        [SFAuthenticateAccountsService _validateConfiguration];
      }

      goto LABEL_22;
    }
  }

  if (([(SFAuthenticateAccountsServiceConfiguration *)self->_configuration serviceType]& 2) != 0)
  {
    v6 = [(SFAuthenticateAccountsService *)self _configurationExistingAccountWithType:1];
    if (v6)
    {

      goto LABEL_10;
    }

    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      [SFAuthenticateAccountsService _validateConfiguration];
    }

LABEL_22:
    v3[2](v3);
    v7 = 0;
    goto LABEL_23;
  }

LABEL_10:
  v7 = 1;
LABEL_23:

  return v7;
}

uint64_t __55__SFAuthenticateAccountsService__validateConfiguration__block_invoke(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = v2[19];
  if (v3)
  {
    v16 = @"eo";
    v4 = MEMORY[0x1E696ABC0];
    v5 = *MEMORY[0x1E696A768];
    v14 = *MEMORY[0x1E696A578];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:DebugGetErrorString()];
    v7 = v6;
    v8 = @"?";
    if (v6)
    {
      v8 = v6;
    }

    v15 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v10 = [v4 errorWithDomain:v5 code:-6705 userInfo:v9];
    v17[0] = v10;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    (*(v3 + 16))(v3, 30, v11);

    v2 = *(a1 + 32);
  }

  result = [v2 _invalidate];
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __43__SFAuthenticateAccountsService_invalidate__block_invoke;
  block[3] = &unk_1E788B198;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (!self->_invalidateCalled && gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
  {
    [SFAuthenticateAccountsService _invalidate];
  }

  self->_invalidateCalled = 1;
  if (self->_sfSession)
  {
    [(SFAuthenticateAccountsService *)self _handleSessionEnded:?];
  }

  [(SFService *)self->_sfService invalidate];
  sfService = self->_sfService;
  self->_sfService = 0;

  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 20, 0);
  }

  [(SFAuthenticateAccountsService *)self _cleanup];
}

- (void)_sfServiceStart
{
  if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
  {
    [SFAuthenticateAccountsService _sfServiceStart];
  }

  v3 = [(SFAuthenticateAccountsServiceConfiguration *)self->_configuration serviceType];
  [(SFService *)self->_sfService invalidate];
  v4 = objc_alloc_init(SFService);
  sfService = self->_sfService;
  self->_sfService = v4;

  [(SFService *)self->_sfService setDispatchQueue:self->_dispatchQueue];
  [(SFService *)self->_sfService setAdvertiseRate:50];
  [(SFService *)self->_sfService setIdentifier:@"com.apple.sharing.AuthenticateAccounts"];
  [(SFService *)self->_sfService setLabel:@"AuthenticateAccounts"];
  [(SFService *)self->_sfService setNeedsSetup:1];
  if (v3)
  {
    v6 = 43;
  }

  else
  {
    v6 = 32;
  }

  [(SFService *)self->_sfService setDeviceActionType:v6];
  [(SFService *)self->_sfService setPairSetupACL:&unk_1F1D7D268];
  [(SFService *)self->_sfService setPinType:1];
  [(SFService *)self->_sfService setSessionFlags:1];
  [(SFService *)self->_sfService setTouchRemoteEnabled:1];
  objc_initWeak(&location, self);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __48__SFAuthenticateAccountsService__sfServiceStart__block_invoke;
  v13[3] = &unk_1E788C570;
  objc_copyWeak(&v14, &location);
  [(SFService *)self->_sfService setSessionStartedHandler:v13];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __48__SFAuthenticateAccountsService__sfServiceStart__block_invoke_2;
  v11[3] = &unk_1E788C598;
  objc_copyWeak(&v12, &location);
  [(SFService *)self->_sfService setSessionEndedHandler:v11];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __48__SFAuthenticateAccountsService__sfServiceStart__block_invoke_3;
  v9[3] = &unk_1E788C5C0;
  objc_copyWeak(&v10, &location);
  [(SFService *)self->_sfService setReceivedRequestHandler:v9];
  v7 = self->_sfService;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __48__SFAuthenticateAccountsService__sfServiceStart__block_invoke_4;
  v8[3] = &unk_1E788B238;
  v8[4] = self;
  [(SFService *)v7 activateWithCompletion:v8];
  objc_destroyWeak(&v10);
  objc_destroyWeak(&v12);
  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

void __48__SFAuthenticateAccountsService__sfServiceStart__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSessionStarted:v3];
}

void __48__SFAuthenticateAccountsService__sfServiceStart__block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleSessionEnded:v3];
}

void __48__SFAuthenticateAccountsService__sfServiceStart__block_invoke_3(uint64_t a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a5;
  v10 = a4;
  v11 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleRequest:v10 flags:a3 session:v11 responseHandler:v9];
}

void __48__SFAuthenticateAccountsService__sfServiceStart__block_invoke_4(uint64_t a1, void *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = v3;
  v5 = *(*(a1 + 32) + 152);
  if (v3)
  {
    if (v5)
    {
      v8 = @"eo";
      v9[0] = v3;
      v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:&v8 count:1];
      (*(v5 + 16))(v5, 30, v6);
    }
  }

  else if (v5)
  {
    (*(v5 + 16))(v5, 10, 0);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleSessionStarted:(id)a3
{
  v24[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_sfSession)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 60 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      [(SFAuthenticateAccountsService *)v5 _handleSessionStarted:?];
    }

    goto LABEL_15;
  }

  if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
  {
    [SFAuthenticateAccountsService _handleSessionStarted:v5];
  }

  objc_storeStrong(&self->_sfSession, a3);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __55__SFAuthenticateAccountsService__handleSessionStarted___block_invoke;
  v22[3] = &unk_1E788B4F8;
  v22[4] = self;
  [v5 registerRequestID:@"_info" options:0 handler:v22];
  v6 = objc_alloc_init(SFDeviceOperationHandlerCDPSetup);
  cdpSetupHandler = self->_cdpSetupHandler;
  self->_cdpSetupHandler = v6;

  [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setDispatchQueue:self->_dispatchQueue];
  [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setSfSession:v5];
  if (([(SFAuthenticateAccountsServiceConfiguration *)self->_configuration serviceType]& 2) == 0)
  {
    goto LABEL_12;
  }

  v8 = [(SFAuthenticateAccountsService *)self _configurationExistingAccountWithType:1];
  if (v8)
  {
    v9 = v8;
    [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setFailIfCDPNotEnabled:1];
    v10 = [v9 aa_altDSID];
    [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler setAltDSIDNeedingRepair:v10];

LABEL_12:
    [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler activate];
    v11 = [(SFSession *)self->_sfSession trSession];
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 3221225472;
    v21[2] = __55__SFAuthenticateAccountsService__handleSessionStarted___block_invoke_2;
    v21[3] = &unk_1E788C5E8;
    v21[4] = self;
    getTRSetupCompanionAuthenticationRequestClass();
    [v11 setRequestHandler:v21 forRequestClass:objc_opt_class()];
    v20[0] = MEMORY[0x1E69E9820];
    v20[1] = 3221225472;
    v20[2] = __55__SFAuthenticateAccountsService__handleSessionStarted___block_invoke_3;
    v20[3] = &unk_1E788C5E8;
    v20[4] = self;
    getTRSetupProxyDeviceRequestClass();
    [v11 setRequestHandler:v20 forRequestClass:objc_opt_class()];
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __55__SFAuthenticateAccountsService__handleSessionStarted___block_invoke_4;
    v19[3] = &unk_1E788C5E8;
    v19[4] = self;
    getTRSetupProxyAuthenticationRequestClass();
    [v11 setRequestHandler:v19 forRequestClass:objc_opt_class()];
    v12 = objc_alloc_init(getHMDeviceSetupOperationHandlerClass());
    homeKitSetupHandler = self->_homeKitSetupHandler;
    self->_homeKitSetupHandler = v12;

    [(HMDeviceSetupOperationHandler *)self->_homeKitSetupHandler registerMessageHandlersForSession:v11];
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 31, 0);
    }

    [(SFService *)self->_sfService setNeedsSetup:0];

    goto LABEL_15;
  }

  if (gLogCategory_SFAuthenticateAccountsService <= 115 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
  {
    [SFAuthenticateAccountsService _handleSessionStarted:];
  }

  v16 = self->_progressHandler;
  if (v16)
  {
    v23 = @"eo";
    v17 = NSErrorWithOSStatusF();
    v24[0] = v17;
    v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v16[2](v16, 30, v18);
  }

  [(SFAuthenticateAccountsService *)self _invalidate];
LABEL_15:

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_handleSessionEnded:(id)a3
{
  v4 = a3;
  sfSession = self->_sfSession;
  if (sfSession != v4)
  {
    goto LABEL_9;
  }

  v11 = v4;
  if (v4 && gLogCategory_SFAuthenticateAccountsService <= 30)
  {
    if (gLogCategory_SFAuthenticateAccountsService != -1)
    {
LABEL_5:
      v10 = [(SFSession *)sfSession peer];
      LogPrintF();

      goto LABEL_7;
    }

    if (_LogCategory_Initialize())
    {
      sfSession = self->_sfSession;
      goto LABEL_5;
    }
  }

LABEL_7:
  [(SFDeviceOperationHandlerCDPSetup *)self->_cdpSetupHandler invalidate];
  cdpSetupHandler = self->_cdpSetupHandler;
  self->_cdpSetupHandler = 0;

  homeKitSetupHandler = self->_homeKitSetupHandler;
  self->_homeKitSetupHandler = 0;

  [(SFAuthenticateAccountsService *)self _finishSession:v11];
  v8 = self->_sfSession;
  self->_sfSession = 0;

  [(SFService *)self->_sfService setNeedsSetup:1];
  v4 = v11;
  progressHandler = self->_progressHandler;
  if (progressHandler)
  {
    progressHandler[2](progressHandler, 32, 0);
    v4 = v11;
  }

LABEL_9:
}

- (void)_handleInfoExchange:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
  {
    [SFAuthenticateAccountsService _handleInfoExchange:responseHandler:];
  }

  v8 = [v6 objectForKeyedSubscript:@"lang"];
  preferredLanguageCode = self->_preferredLanguageCode;
  self->_preferredLanguageCode = v8;

  v10 = [v6 objectForKeyedSubscript:@"locale"];
  localeIdentifier = self->_localeIdentifier;
  self->_localeIdentifier = v10;

  v12 = [v6 objectForKeyedSubscript:@"langs"];
  preferredLanguages = self->_preferredLanguages;
  self->_preferredLanguages = v12;

  v14 = [v6 objectForKeyedSubscript:@"kbs"];
  keyboards = self->_keyboards;
  self->_keyboards = v14;

  v16 = [(SFAuthenticateAccountsService *)self _shouldSignInAccountsInInfoRequest:v6];
  v17 = [v6 objectForKeyedSubscript:@"hkcuis"];
  if ([v17 count])
  {
    v18 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v19 = [v6 objectForKeyedSubscript:@"hkhrmve"];
    v42[0] = MEMORY[0x1E69E9820];
    v42[1] = 3221225472;
    v42[2] = __69__SFAuthenticateAccountsService__handleInfoExchange_responseHandler___block_invoke;
    v42[3] = &unk_1E788C610;
    v43 = v19;
    v44 = v18;
    v20 = v18;
    v21 = v19;
    [v17 enumerateKeysAndObjectsUsingBlock:v42];
    v22 = [v20 copy];
    knownHomeUserIdentifiers = self->_knownHomeUserIdentifiers;
    self->_knownHomeUserIdentifiers = v22;
  }

  v24 = [v6 objectForKeyedSubscript:@"siriVP"];
  self->_isVoiceProfileAvailable = [v24 BOOLValue];

  v25 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{-[SFAuthenticateAccountsServiceConfiguration serviceType](self->_configuration, "serviceType")}];
  [v25 setObject:v26 forKeyedSubscript:@"aaServiceType"];

  if (v16)
  {
    v27 = [(SFAuthenticateAccountsServiceConfiguration *)self->_configuration targetedAccountTypes];
  }

  else
  {
    v27 = 0;
  }

  v28 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v27];
  [v25 setObject:v28 forKeyedSubscript:@"aaTargetedTypes"];

  v29 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:16];
  [v25 setObject:v29 forKeyedSubscript:@"ff"];

  if ([(SFAuthenticateAccountsServiceConfiguration *)self->_configuration isHomeKitSetupNeeded])
  {
    v30 = 8;
  }

  else
  {
    v30 = 0;
  }

  v31 = [(SFAuthenticateAccountsServiceConfiguration *)self->_configuration serviceType];
  v32 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v30 | (v31 << 16) & 0x20000];
  [v25 setObject:v32 forKeyedSubscript:@"dpf"];

  v33 = [(SFAuthenticateAccountsService *)self _configurationExistingAccountWithType:1];
  v34 = [v33 aa_altDSID];

  [v25 setObject:v34 forKeyedSubscript:@"aaiCloudAltDSID"];
  v35 = [(SFAuthenticateAccountsService *)self _configurationExistingAccountWithType:2];
  v36 = [v35 aa_altDSID];

  [v25 setObject:v36 forKeyedSubscript:@"aaiTunesAltDSID"];
  v37 = [(SFAuthenticateAccountsService *)self _configurationExistingAccountWithType:3];
  v38 = [v37 aa_altDSID];

  [v25 setObject:v38 forKeyedSubscript:@"aaGameCenterAltDSID"];
  v40[0] = MEMORY[0x1E69E9820];
  v40[1] = 3221225472;
  v40[2] = __69__SFAuthenticateAccountsService__handleInfoExchange_responseHandler___block_invoke_2;
  v40[3] = &unk_1E788C638;
  v41 = v7;
  v39 = v7;
  [(SFAuthenticateAccountsService *)self _validateiCloudCredentialsWithRequest:v6 unvalidatedResponse:v25 completionHandler:v40];
}

void __69__SFAuthenticateAccountsService__handleInfoExchange_responseHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = a2;
  v5 = a3;
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v13];
  v7 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v5];
  v8 = v7;
  if (v6)
  {
    v9 = v7 == 0;
  }

  else
  {
    v9 = 1;
  }

  if (v9)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    v10 = [*(a1 + 32) objectForKeyedSubscript:v13];
    v11 = [v10 BOOLValue];

    v12 = [[SFAuthenticateAccountHomeUserInfo alloc] initWithHomeUUID:v6 userUUID:v8 isRMVEnabled:v11];
    [*(a1 + 40) addObject:v12];
  }
}

void __69__SFAuthenticateAccountsService__handleInfoExchange_responseHandler___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
  {
    __69__SFAuthenticateAccountsService__handleInfoExchange_responseHandler___block_invoke_2_cold_1();
  }

  (*(*(a1 + 32) + 16))();
}

- (BOOL)_shouldSignInAccountsInInfoRequest:(id)a3
{
  v4 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v6 = objc_opt_respondsToSelector();

  if (v6)
  {
    v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v8 = [v4 objectForKeyedSubscript:@"aaiCloudAltDSID"];
    if (v8)
    {
      v9 = [[SFAuthenticateAccountInfo alloc] initWithType:1 altDSID:v8];
      [v7 addObject:v9];
    }

    v10 = [v4 objectForKeyedSubscript:@"aaiTunesAltDSID"];
    if (v10)
    {
      v11 = [[SFAuthenticateAccountInfo alloc] initWithType:2 altDSID:v10];
      [v7 addObject:v11];
    }

    v12 = [v4 objectForKeyedSubscript:@"aaGameCenterAltDSID"];
    if (v12)
    {
      v13 = [[SFAuthenticateAccountInfo alloc] initWithType:3 altDSID:v12];
      [v7 addObject:v13];
    }

    v14 = objc_loadWeakRetained(&self->_delegate);
    v15 = [v7 copy];
    v16 = [v14 authenticateAccountsService:self shouldSignInAccounts:v15];

    if ((v16 & 1) == 0 && gLogCategory_SFAuthenticateAccountsService <= 60 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      [SFAuthenticateAccountsService _shouldSignInAccountsInInfoRequest:];
    }
  }

  else
  {
    v16 = 1;
  }

  return v16;
}

- (void)_validateiCloudCredentialsWithRequest:(id)a3 unvalidatedResponse:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([(SFAuthenticateAccountsServiceConfiguration *)self->_configuration serviceType])
  {
    v11 = [v8 objectForKeyedSubscript:@"aaiCloudAltDSID"];
    v12 = [(SFAuthenticateAccountsService *)self _configurationExistingAccountWithType:1];
    v13 = [v12 aa_altDSID];
    if (v12 && self->_accountStore && [v11 isEqualToString:v13])
    {
      v14 = self->_dispatchQueue;
      accountStore = self->_accountStore;
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __109__SFAuthenticateAccountsService__validateiCloudCredentialsWithRequest_unvalidatedResponse_completionHandler___block_invoke;
      v17[3] = &unk_1E788C660;
      v18 = v9;
      v19 = v14;
      v20 = v10;
      v16 = v14;
      [(ACAccountStore *)accountStore verifyCredentialsForAccount:v12 withHandler:v17];
    }

    else
    {
      (*(v10 + 2))(v10, v9);
    }
  }

  else
  {
    (*(v10 + 2))(v10, v9);
  }
}

void __109__SFAuthenticateAccountsService__validateiCloudCredentialsWithRequest_unvalidatedResponse_completionHandler___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 50 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v10 = *(a1 + 32);
    Int64Ranged = CFDictionaryGetInt64Ranged();
    v12 = [*(a1 + 32) mutableCopy];
    v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:Int64Ranged | 1u];
    [v12 setObject:v13 forKeyedSubscript:@"aaTargetedTypes"];

    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __109__SFAuthenticateAccountsService__validateiCloudCredentialsWithRequest_unvalidatedResponse_completionHandler___block_invoke_2;
    v19[3] = &unk_1E788B318;
    v14 = *(a1 + 40);
    v15 = *(a1 + 48);
    v20 = v12;
    v21 = v15;
    v9 = v12;
    dispatch_async(v14, v19);
  }

  else
  {
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __109__SFAuthenticateAccountsService__validateiCloudCredentialsWithRequest_unvalidatedResponse_completionHandler___block_invoke_3;
    block[3] = &unk_1E788B318;
    v8 = *(a1 + 40);
    v18 = *(a1 + 48);
    v17 = *(a1 + 32);
    dispatch_async(v8, block);

    v9 = v18;
  }
}

- (void)_handleTRCompanionAuthenticationRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 account];
  if (v8)
  {
    v9 = [v6 targetedAccountServices];
    if (v9)
    {
      v10 = [v6 companionDevice];
      if (v10)
      {
        if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
        {
          [SFAuthenticateAccountsService _handleTRCompanionAuthenticationRequest:v8 responseHandler:?];
        }

        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke;
        v12[3] = &unk_1E788C6B0;
        v16 = v7;
        v12[4] = self;
        v13 = v9;
        v14 = v8;
        v15 = v10;
        [(SFAuthenticateAccountsService *)self _saveRemoteVerifiedAccount:v14 completion:v12];
      }

      else
      {
        v11 = NSErrorWithOSStatusF();
        if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
        {
          [SFAuthenticateAccountsService _handleTRCompanionAuthenticationRequest:responseHandler:];
        }

        (*(v7 + 2))(v7, v11, 0);
      }
    }

    else
    {
      v10 = NSErrorWithOSStatusF();
      if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
      {
        [SFAuthenticateAccountsService _handleTRCompanionAuthenticationRequest:responseHandler:];
      }

      (*(v7 + 2))(v7, v10, 0);
    }
  }

  else
  {
    v9 = NSErrorWithOSStatusF();
    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      [SFAuthenticateAccountsService _handleTRCompanionAuthenticationRequest:responseHandler:];
    }

    (*(v7 + 2))(v7, v9, 0);
  }
}

void __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 64) + 16))();
  }

  v4 = [*(a1 + 32) _nextServiceTypeForTRAccountServices:*(a1 + 40)];
  if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
  {
    __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_cold_2(v4);
  }

  v5 = objc_alloc(getTRAnisetteDataProviderClass());
  v6 = [*(*(a1 + 32) + 24) trSession];
  v7 = [v5 initWithSession:v6];

  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_2;
  v12[3] = &unk_1E788C688;
  v16 = v4;
  v10 = *(a1 + 32);
  v13 = *(a1 + 40);
  v11 = *(a1 + 64);
  v14 = *(a1 + 32);
  v15 = v11;
  [v10 _authenticateAccount:v8 serviceType:v4 companionDevice:v9 anisetteDataProvider:v7 completion:v12];
}

void __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (!v7 || v6)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 60 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_2_cold_1(a1);
    }

    v10 = objc_alloc_init(getTRSetupAuthenticationResponseClass());
    [v10 setUnauthenticatedAccountServices:*(a1 + 32)];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    v9 = *(a1 + 32);
    v8 = *(a1 + 40);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_3;
    v11[3] = &unk_1E788B6D8;
    v12 = *(a1 + 48);
    [v8 _authenticateWithServiceTypes:v9 authResults:v7 completion:v11];
  }
}

void __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_3_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_3_cold_2();
    }

    v3 = objc_alloc_init(getTRSetupAuthenticationResponseClass());
    v4 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    [v3 setUnauthenticatedAccountServices:v4];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_handleTRProxyDeviceRequest:(id)a3 responseHandler:(id)a4
{
  v8 = a3;
  v5 = a4;
  if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
  {
    [SFAuthenticateAccountsService _handleTRProxyDeviceRequest:responseHandler:];
  }

  v6 = [(objc_class *)getAKDeviceClass() currentDevice];
  [v6 setLinkType:3];
  v7 = objc_alloc_init(getTRSetupProxyDeviceResponseClass());
  [v7 setProxyDevice:v6];
  v5[2](v5, 0, v7);
}

- (void)_handleTRProxyAuthenticationRequest:(id)a3 responseHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 account];
  if (v8)
  {
    v9 = [v6 rawPassword];
    if (v9)
    {
      v10 = [v6 targetedAccountServices];
      if (v10)
      {
        if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
        {
          [SFAuthenticateAccountsService _handleTRProxyAuthenticationRequest:v8 responseHandler:?];
        }

        [v8 _aa_setRawPassword:v9];
        v12[0] = MEMORY[0x1E69E9820];
        v12[1] = 3221225472;
        v12[2] = __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke;
        v12[3] = &unk_1E788C6B0;
        v16 = v7;
        v12[4] = self;
        v13 = v10;
        v14 = v8;
        v15 = v9;
        [(SFAuthenticateAccountsService *)self _saveRemoteVerifiedAccount:v14 completion:v12];
      }

      else
      {
        v11 = NSErrorWithOSStatusF();
        if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
        {
          [SFAuthenticateAccountsService _handleTRProxyAuthenticationRequest:responseHandler:];
        }

        (*(v7 + 2))(v7, v11, 0);
      }
    }

    else
    {
      v10 = NSErrorWithOSStatusF();
      if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
      {
        [SFAuthenticateAccountsService _handleTRProxyAuthenticationRequest:responseHandler:];
      }

      (*(v7 + 2))(v7, v10, 0);
    }
  }

  else
  {
    v9 = NSErrorWithOSStatusF();
    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      [SFAuthenticateAccountsService _handleTRProxyAuthenticationRequest:responseHandler:];
    }

    (*(v7 + 2))(v7, v9, 0);
  }
}

void __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_cold_1();
    }

    (*(*(a1 + 64) + 16))();
  }

  v4 = [*(a1 + 32) _nextServiceTypeForTRAccountServices:*(a1 + 40)];
  if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
  {
    __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_cold_2(v4);
  }

  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_2;
  v11[3] = &unk_1E788C6D8;
  v14 = v4;
  v8 = *(a1 + 64);
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v13 = v8;
  v11[4] = v9;
  v12 = v10;
  [v5 _authenticateAccount:v6 serviceType:v4 password:v7 completion:v11];
}

void __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v5;
  if (!v7 || v6)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_2_cold_1(a1);
    }

    v10 = *(a1 + 48);
    if (v6)
    {
      (*(v10 + 16))(v10, v6, 0);
    }

    else
    {
      v11 = NSErrorWithOSStatusF();
      (*(v10 + 16))(v10, v11, 0);
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_3;
    v12[3] = &unk_1E788B6D8;
    v13 = *(a1 + 48);
    [v8 _authenticateWithServiceTypes:v9 authResults:v7 completion:v12];
  }
}

void __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_3(uint64_t a1, void *a2)
{
  v5 = a2;
  if (v5)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_3_cold_1();
    }

    (*(*(a1 + 32) + 16))();
  }

  else
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_3_cold_2();
    }

    v3 = objc_alloc_init(getTRSetupAuthenticationResponseClass());
    v4 = objc_alloc_init(MEMORY[0x1E695DFD8]);
    [v3 setUnauthenticatedAccountServices:v4];

    (*(*(a1 + 32) + 16))();
  }
}

- (void)_authenticateAccount:(id)a3 serviceType:(int64_t)a4 companionDevice:(id)a5 anisetteDataProvider:(id)a6 completion:(id)a7
{
  v11 = getAKAppleIDAuthenticationContextClass;
  v12 = a7;
  v13 = a6;
  v14 = a5;
  v15 = a3;
  v18 = objc_alloc_init(v11());
  [v18 _setProxyingForApp:1];
  [v18 setAnisetteDataProvider:v13];

  [v18 setAuthenticationType:1];
  [v18 setCompanionDevice:v14];

  [v18 setIsUsernameEditable:0];
  [v18 setServiceType:a4];
  [v18 setShouldAllowAppleIDCreation:0];
  [v18 setShouldUpdatePersistentServiceTokens:1];
  v16 = [v15 username];

  [v18 setUsername:v16];
  v17 = objc_alloc_init(getAKAppleIDAuthenticationControllerClass());
  [v17 authenticateWithContext:v18 completion:v12];
}

- (void)_authenticateAccount:(id)a3 serviceType:(int64_t)a4 password:(id)a5 completion:(id)a6
{
  v9 = getAKAppleIDAuthenticationContextClass;
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v15 = objc_alloc_init(v9());
  [v15 _setProxyingForApp:1];
  [v15 _setPassword:v11];

  [v15 setAuthenticationType:1];
  [v15 setIsUsernameEditable:0];
  [v15 setServiceType:a4];
  [v15 setShouldAllowAppleIDCreation:0];
  [v15 setShouldUpdatePersistentServiceTokens:1];
  v13 = [v12 username];

  [v15 setUsername:v13];
  v14 = objc_alloc_init(getAKAppleIDAuthenticationControllerClass());
  [v14 authenticateWithContext:v15 completion:v10];
}

- (void)__runAuthenticateiCloudWithAuthResults:(id)a3 completion:(id)a4
{
  v6 = MEMORY[0x1E695DFD8];
  v7 = a4;
  v8 = a3;
  v9 = [v6 setWithObject:&unk_1F1D7CCB8];
  [(SFAuthenticateAccountsService *)self _authenticateWithServiceTypes:v9 authResults:v8 completion:v7];
}

- (void)_authenticateWithServiceTypes:(id)a3 authResults:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if ([v8 count])
  {
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 801, 0);
    }

    v12 = [(SFAuthenticateAccountsService *)self _nextTRServiceTypeForTRAccountServices:v8];
    v13 = [(SFAuthenticateAccountsService *)self _accountTypeForTRAccountService:v12];
    if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      [SFAuthenticateAccountsService _authenticateWithServiceTypes:v12 authResults:? completion:?];
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v15 = objc_opt_respondsToSelector();

    if (v15)
    {
      v16 = objc_loadWeakRetained(&self->_delegate);
      [v16 authenticateAccountsService:self willAttemptSignInWithAccountType:v13];
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __86__SFAuthenticateAccountsService__authenticateWithServiceTypes_authResults_completion___block_invoke;
    v17[3] = &unk_1E788C700;
    v22 = v13;
    v17[4] = self;
    v21 = v12;
    v20 = v10;
    v18 = v9;
    v19 = v8;
    [(SFAuthenticateAccountsService *)self _authenticateWithServiceType:v12 authResults:v18 completion:v17];
  }

  else
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      [SFAuthenticateAccountsService _authenticateWithServiceTypes:authResults:completion:];
    }

    (*(v10 + 2))(v10, 0);
  }
}

void __86__SFAuthenticateAccountsService__authenticateWithServiceTypes_authResults_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = *(v4 + 152);
  if (v5)
  {
    (*(v5 + 16))(v5, 802, 0);
    v4 = *(a1 + 32);
  }

  WeakRetained = objc_loadWeakRetained((v4 + 136));
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = objc_loadWeakRetained((*(a1 + 32) + 136));
    [v8 authenticateAccountsService:*(a1 + 32) didAttemptSignInWithAccountType:*(a1 + 72)];
  }

  if (*(a1 + 72) == 2)
  {
    v9 = [v3 domain];
    v10 = getSSServerErrorDomain();
    if ([v9 isEqual:v10])
    {
      v11 = [v3 code];

      if (v11 == 5304)
      {
        if (gLogCategory_SFAuthenticateAccountsService > 50 || gLogCategory_SFAuthenticateAccountsService == -1 && !_LogCategory_Initialize())
        {
          if (!v3)
          {
            goto LABEL_21;
          }

LABEL_26:
          v21 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithSet:*(a1 + 48)];
          v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(a1 + 64)];
          [v21 removeObject:v22];

          [*(a1 + 32) _authenticateWithServiceTypes:v21 authResults:*(a1 + 40) completion:*(a1 + 56)];
          goto LABEL_27;
        }

        __86__SFAuthenticateAccountsService__authenticateWithServiceTypes_authResults_completion___block_invoke_cold_2();
        if (v3)
        {
          goto LABEL_26;
        }

LABEL_21:
        v12 = *(a1 + 40);
        v13 = getAKAuthenticationAlternateDSIDKey();
        v14 = [v12 objectForKeyedSubscript:v13];

        v15 = [[SFAuthenticateAccountInfo alloc] initWithType:*(a1 + 72) altDSID:v14];
        [*(*(a1 + 32) + 48) addObject:v15];
        v16 = objc_loadWeakRetained((*(a1 + 32) + 136));
        v17 = objc_opt_respondsToSelector();

        if (v17)
        {
          v18 = objc_loadWeakRetained((*(a1 + 32) + 136));
          [v18 authenticateAccountsService:*(a1 + 32) didAuthenticateWithAccountInfo:v15];
        }

        if (*(a1 + 72) == 1)
        {
          v19 = *(a1 + 32);
          v20 = *(v19 + 144);
          v23[0] = MEMORY[0x1E69E9820];
          v23[1] = 3221225472;
          v23[2] = __86__SFAuthenticateAccountsService__authenticateWithServiceTypes_authResults_completion___block_invoke_2;
          v23[3] = &unk_1E788A658;
          v23[4] = v19;
          v24 = v14;
          dispatch_async(v20, v23);
        }

        goto LABEL_26;
      }
    }

    else
    {
    }
  }

  if (!v3)
  {
    goto LABEL_21;
  }

  if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
  {
    __86__SFAuthenticateAccountsService__authenticateWithServiceTypes_authResults_completion___block_invoke_cold_1(a1);
  }

  (*(*(a1 + 56) + 16))();
LABEL_27:
}

void __86__SFAuthenticateAccountsService__authenticateWithServiceTypes_authResults_completion___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) _configurationExistingAccountWithType:1];

  if (!v2)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 50 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      __86__SFAuthenticateAccountsService__authenticateWithServiceTypes_authResults_completion___block_invoke_2_cold_1(a1);
    }

    v3 = *(a1 + 40);
    v4 = *(*(a1 + 32) + 72);

    [v4 setAltDSIDNeedingRepair:v3];
  }
}

- (void)_authenticateWithServiceType:(unint64_t)a3 authResults:(id)a4 completion:(id)a5
{
  v10 = a4;
  v8 = a5;
  switch(a3)
  {
    case 3uLL:
      [(SFAuthenticateAccountsService *)self _authenticateGameCenterWithAuthResults:v10 completion:v8];
      break;
    case 2uLL:
      [(SFAuthenticateAccountsService *)self _authenticateiTunesWithAuthResults:v10 completion:v8];
      break;
    case 1uLL:
      [(SFAuthenticateAccountsService *)self _authenticateiCloudWithAuthResults:v10 completion:v8];
      break;
    default:
      v9 = NSErrorWithOSStatusF();
      v8[2](v8, v9);

      break;
  }
}

- (void)_authenticateiCloudWithAuthResults:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  getAKAuthenticationUsernameKey();
  CFStringGetTypeID();
  v8 = CFDictionaryGetTypedValue();
  if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
  {
    [SFAuthenticateAccountsService _authenticateiCloudWithAuthResults:completion:];
  }

  if (self->_accountStore)
  {
    v9 = [objc_alloc(MEMORY[0x1E698C268]) initWithAccountStore:self->_accountStore];
    v10 = objc_alloc_init(MEMORY[0x1E698C258]);
    [v10 setAuthenticationResults:v6];
    [v10 setCdpUiProvider:self->_cdpUIProvider];
    v11 = *MEMORY[0x1E698C218];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __79__SFAuthenticateAccountsService__authenticateiCloudWithAuthResults_completion___block_invoke;
    v13[3] = &unk_1E788C750;
    v14 = v8;
    v15 = self;
    v16 = v7;
    [v9 signInService:v11 withContext:v10 completion:v13];
  }

  else
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      [SFAuthenticateAccountsService _authenticateiCloudWithAuthResults:completion:];
    }

    v12 = NSErrorWithOSStatusF();
    (*(v7 + 2))(v7, v12);
  }
}

void __79__SFAuthenticateAccountsService__authenticateiCloudWithAuthResults_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a2)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      __79__SFAuthenticateAccountsService__authenticateiCloudWithAuthResults_completion___block_invoke_cold_2(a1);
    }

    (*(*(a1 + 48) + 16))();
    goto LABEL_20;
  }

  v7 = [v5 domain];
  v8 = getAASignInErrorDomain();
  if ([v7 isEqualToString:v8])
  {
    v9 = [v6 code];

    if (v9 == -8010)
    {
      if (gLogCategory_SFAuthenticateAccountsService <= 50 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
      {
        __79__SFAuthenticateAccountsService__authenticateiCloudWithAuthResults_completion___block_invoke_cold_1(a1);
      }

      v10 = *(*(a1 + 40) + 24);
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __79__SFAuthenticateAccountsService__authenticateiCloudWithAuthResults_completion___block_invoke_2;
      v14[3] = &unk_1E788C728;
      v15 = *(a1 + 32);
      v16 = *(a1 + 48);
      [v10 sendRequestID:@"_aaTerms" options:0 request:MEMORY[0x1E695E0F8] responseHandler:v14];

      goto LABEL_20;
    }
  }

  else
  {
  }

  if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
  {
    v13 = *(a1 + 32);
    LogPrintF();
  }

  v11 = *(a1 + 48);
  if (v6)
  {
    (*(v11 + 16))(v11, v6);
  }

  else
  {
    v12 = NSErrorWithOSStatusF();
    (*(v11 + 16))(v11, v12);
  }

LABEL_20:
}

void __79__SFAuthenticateAccountsService__authenticateiCloudWithAuthResults_completion___block_invoke_2(uint64_t a1, void *a2, void *a3, void *a4)
{
  v10 = a2;
  v7 = a3;
  v8 = a4;
  if (v10)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      v9 = *(a1 + 32);
      LogPrintF();
    }

    (*(*(a1 + 40) + 16))(*(a1 + 40), v10);
  }
}

- (void)_authenticateiTunesWithAuthResults:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = getAKAuthenticationUsernameKey;
  v8 = a3;
  v7();
  CFStringGetTypeID();
  v9 = CFDictionaryGetTypedValue();
  getAKAuthenticationAlternateDSIDKey();
  CFStringGetTypeID();
  v10 = CFDictionaryGetTypedValue();
  getAKAuthenticationPasswordKey();
  CFStringGetTypeID();
  v11 = CFDictionaryGetTypedValue();

  [(SFAuthenticateAccountsServiceConfiguration *)self->_configuration isHomeSharingSetupNeeded];
  if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v12 = [(objc_class *)getSSMutableAuthenticationContextClass() contextForSignIn];
  [v12 setAccountName:v9];
  [v12 setAllowsRetry:0];
  [v12 setAltDSID:v10];
  [v12 setCanSetActiveAccount:0];
  [v12 setPasswordEquivalentToken:v11];
  [v12 setPromptStyle:1];
  [v12 setShouldSuppressDialogs:0];
  v13 = [(objc_class *)getSSAccountStoreClass() defaultStore];
  v14 = [objc_alloc(getSSAuthenticateRequestClass()) initWithAuthenticationContext:v12];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __79__SFAuthenticateAccountsService__authenticateiTunesWithAuthResults_completion___block_invoke;
  v18[3] = &unk_1E788C778;
  v20 = v13;
  v21 = v6;
  v19 = v9;
  v15 = v13;
  v16 = v6;
  v17 = v9;
  [v14 startWithAuthenticateResponseBlock:v18];
}

void __79__SFAuthenticateAccountsService__authenticateiTunesWithAuthResults_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a3;
  v5 = [a2 authenticatedAccount];
  if (v5)
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 30 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      __79__SFAuthenticateAccountsService__authenticateiTunesWithAuthResults_completion___block_invoke_cold_1();
    }

    [*(a1 + 40) saveAccount:v5 error:0];
    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (gLogCategory_SFAuthenticateAccountsService <= 90 && (gLogCategory_SFAuthenticateAccountsService != -1 || _LogCategory_Initialize()))
    {
      v8 = *(a1 + 32);
      LogPrintF();
    }

    v6 = *(a1 + 48);
    if (v9)
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

- (void)_authenticateGameCenterWithAuthResults:(id)a3 completion:(id)a4
{
  v5 = a4;
  v6 = NSErrorWithOSStatusF();
  (*(a4 + 2))(v5, v6);
}

- (int64_t)_nextServiceTypeForTRAccountServices:(id)a3
{
  v3 = a3;
  if ([v3 containsObject:&unk_1F1D7CCB8])
  {
    v4 = 1;
  }

  else if ([v3 containsObject:&unk_1F1D7CCD0])
  {
    v4 = 2;
  }

  else if ([v3 containsObject:&unk_1F1D7CCE8])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unint64_t)_nextTRServiceTypeForTRAccountServices:(id)a3
{
  v3 = a3;
  if ([v3 containsObject:&unk_1F1D7CCB8])
  {
    v4 = 1;
  }

  else if ([v3 containsObject:&unk_1F1D7CCD0])
  {
    v4 = 2;
  }

  else if ([v3 containsObject:&unk_1F1D7CCE8])
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (unsigned)_accountTypeForTRAccountService:(unint64_t)a3
{
  if (a3 - 1 < 3)
  {
    return a3;
  }

  else
  {
    return 0;
  }
}

- (void)_saveAccount:(id)a3 completion:(id)a4
{
  v39 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [v6 setAuthenticated:0];
  v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
  if ([v6 aa_isPrimaryEmailVerified])
  {
    v23 = self;
    v24 = v7;
    v25 = v6;
    v9 = [(ACAccountStore *)self->_accountStore dataclassActionsForAccountSave:v6];
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

    v7 = v24;
    v6 = v25;
    self = v23;
  }

  accountStore = self->_accountStore;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __57__SFAuthenticateAccountsService__saveAccount_completion___block_invoke;
  v27[3] = &unk_1E788C7A0;
  v28 = v7;
  v21 = v7;
  [(ACAccountStore *)accountStore saveAccount:v6 withDataclassActions:v8 completion:v27];

  v22 = *MEMORY[0x1E69E9840];
}

void __57__SFAuthenticateAccountsService__saveAccount_completion___block_invoke(uint64_t a1, char a2, void *a3)
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

- (void)_saveRemoteVerifiedAccount:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  accountStore = self->_accountStore;
  if (!accountStore)
  {
    v9 = [(objc_class *)getACAccountStoreClass() defaultStore];
    v10 = self->_accountStore;
    self->_accountStore = v9;

    accountStore = self->_accountStore;
  }

  v11 = [v6 accountType];
  v12 = [v11 identifier];
  v13 = [(ACAccountStore *)accountStore accountTypeWithAccountTypeIdentifier:v12];

  [v6 setAccountType:v13];
  [v6 _setObjectID:0];
  [v6 markAllPropertiesDirty];
  v14 = self->_accountStore;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71__SFAuthenticateAccountsService__saveRemoteVerifiedAccount_completion___block_invoke;
  v16[3] = &unk_1E788C7A0;
  v17 = v7;
  v15 = v7;
  [(ACAccountStore *)v14 saveVerifiedAccount:v6 withCompletionHandler:v16];
}

void __71__SFAuthenticateAccountsService__saveRemoteVerifiedAccount_completion___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    if (!v5)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  v7 = v5;
  if ([v5 code] == 5)
  {
    v5 = v7;
LABEL_6:

LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v6 = v7;
  if (!v7)
  {
    v6 = NSErrorWithOSStatusF();
  }

LABEL_8:
  v8 = v6;
  (*(*(a1 + 32) + 16))();
}

- (id)_configurationExistingAccountWithType:(unsigned int)a3
{
  v22 = *MEMORY[0x1E69E9840];
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (a3 - 1 > 2)
  {
    v11 = 0;
  }

  else
  {
    v5 = **(&unk_1E788C808 + a3 - 1);
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v6 = [(SFAuthenticateAccountsServiceConfiguration *)self->_configuration existingAccountsIdentifiers];
    v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v18;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [(ACAccountStore *)self->_accountStore accountWithIdentifier:*(*(&v17 + 1) + 8 * v10)];
        v12 = [v11 accountType];
        v13 = [v12 identifier];
        v14 = [v13 isEqual:v5];

        if (v14)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v11 = 0;
    }
  }

  v15 = *MEMORY[0x1E69E9840];

  return v11;
}

- (void)_finishSession:(id)a3
{
  object = a3;
  v4 = objc_getAssociatedObject(object, "finished");
  if (([v4 BOOLValue] & 1) == 0)
  {
    if ([(NSMutableArray *)self->_authenticatedAccounts count])
    {
      WeakRetained = objc_loadWeakRetained(&self->_delegate);
      v6 = objc_opt_respondsToSelector();

      if (v6)
      {
        v7 = [SFAuthenticateAccountResult alloc];
        v8 = [(NSMutableArray *)self->_authenticatedAccounts copy];
        v9 = [(SFAuthenticateAccountResult *)v7 initWithAuthenticatedAccounts:v8 knownHomeUserIdentifiers:self->_knownHomeUserIdentifiers isVoiceProfileAvailable:self->_isVoiceProfileAvailable];

        [(SFAuthenticateAccountResult *)v9 setPreferredLanguageCode:self->_preferredLanguageCode];
        [(SFAuthenticateAccountResult *)v9 setLocaleIdentifier:self->_localeIdentifier];
        [(SFAuthenticateAccountResult *)v9 setPreferredLanguages:self->_preferredLanguages];
        [(SFAuthenticateAccountResult *)v9 setKeyboards:self->_keyboards];
        v10 = objc_loadWeakRetained(&self->_delegate);
        [v10 authenticateAccountsService:self didFinishAuthentication:v9];
      }
    }

    objc_setAssociatedObject(object, "finished", MEMORY[0x1E695E118], 0x301);
    progressHandler = self->_progressHandler;
    if (progressHandler)
    {
      progressHandler[2](progressHandler, 100, 0);
    }
  }
}

- (SFAuthenticateAccountsServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleSessionStarted:(void *)a1 .cold.1(void *a1, id *a2)
{
  v4 = [a1 peer];
  v3 = [*a2 peer];
  LogPrintF();
}

- (void)_handleSessionStarted:(void *)a1 .cold.2(void *a1)
{
  v1 = [a1 peer];
  LogPrintF();
}

- (void)_handleTRCompanionAuthenticationRequest:(void *)a1 responseHandler:.cold.1(void *a1)
{
  v1 = [a1 username];
  LogPrintF();
}

uint64_t __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_cold_2(uint64_t a1)
{
  if ((a1 - 1) <= 5)
  {
    v1 = off_1E788C7C0[a1 - 1];
  }

  return LogPrintF();
}

uint64_t __89__SFAuthenticateAccountsService__handleTRCompanionAuthenticationRequest_responseHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = *(a1 + 56) - 1;
  if (v1 <= 5)
  {
    v2 = off_1E788C7C0[v1];
  }

  return LogPrintF();
}

- (void)_handleTRProxyAuthenticationRequest:(void *)a1 responseHandler:.cold.1(void *a1)
{
  v1 = [a1 username];
  LogPrintF();
}

uint64_t __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_cold_2(uint64_t a1)
{
  if ((a1 - 1) <= 5)
  {
    v1 = off_1E788C7C0[a1 - 1];
  }

  return LogPrintF();
}

uint64_t __85__SFAuthenticateAccountsService__handleTRProxyAuthenticationRequest_responseHandler___block_invoke_2_cold_1(uint64_t a1)
{
  v1 = *(a1 + 56) - 1;
  if (v1 <= 5)
  {
    v2 = off_1E788C7C0[v1];
  }

  return LogPrintF();
}

- (uint64_t)_authenticateWithServiceTypes:(uint64_t)a1 authResults:completion:.cold.1(uint64_t a1)
{
  if ((a1 - 1) <= 2)
  {
    v1 = off_1E788C7F0[a1 - 1];
  }

  return LogPrintF();
}

uint64_t __86__SFAuthenticateAccountsService__authenticateWithServiceTypes_authResults_completion___block_invoke_cold_1(uint64_t a1)
{
  v1 = *(a1 + 64) - 1;
  if (v1 <= 2)
  {
    v2 = off_1E788C7F0[v1];
  }

  return LogPrintF();
}

@end