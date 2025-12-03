@interface TRProxyAuthOperation
+ (id)_logStringForAppleIDServiceType:(int64_t)type;
+ (int64_t)_appleIDServiceTypeForTRAccountServices:(id)services;
- (void)_handleProxyAuthenticationResponse:(id)response proxiedDevice:(id)device;
- (void)_handleProxyDeviceResponse:(id)response;
- (void)_performProxyAuthenticationWithProxiedDevice:(id)device;
- (void)_sendProxyDeviceRequest;
- (void)execute;
@end

@implementation TRProxyAuthOperation

- (void)execute
{
  if ([(TRProxyAuthOperation *)self isCancelled])
  {
    userCancelledError = [objc_opt_class() userCancelledError];
    [(TROperation *)self finishWithError:userCancelledError];
  }

  else
  {

    [(TRProxyAuthOperation *)self _sendProxyDeviceRequest];
  }
}

- (void)_sendProxyDeviceRequest
{
  v11 = *MEMORY[0x277D85DE8];
  if (_TRLogEnabled == 1)
  {
    v3 = TRLogHandle();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v10 = "[TRProxyAuthOperation _sendProxyDeviceRequest]";
      _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "%s Requesting proxy device", buf, 0xCu);
    }
  }

  v4 = objc_alloc_init(TRSetupProxyDeviceRequest);
  objc_initWeak(buf, self);
  session = [(TROperation *)self session];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __47__TRProxyAuthOperation__sendProxyDeviceRequest__block_invoke;
  v7[3] = &unk_279DCECD0;
  objc_copyWeak(&v8, buf);
  [session sendRequest:v4 withResponseHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);

  v6 = *MEMORY[0x277D85DE8];
}

void __47__TRProxyAuthOperation__sendProxyDeviceRequest__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained isCancelled])
  {
    v7 = [objc_opt_class() userCancelledError];
    [WeakRetained finishWithError:v7];
  }

  else if (v5)
  {
    [WeakRetained _handleProxyDeviceResponse:v5];
  }

  else
  {
    [WeakRetained finishWithError:v8];
  }
}

- (void)_handleProxyDeviceResponse:(id)response
{
  v12 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  if (_TRLogEnabled == 1)
  {
    v5 = TRLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[TRProxyAuthOperation _handleProxyDeviceResponse:]";
      v10 = 2112;
      v11 = responseCopy;
      _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "%s Handle Proxy Device Response: %@", &v8, 0x16u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    proxyDevice = [responseCopy proxyDevice];
    [(TRProxyAuthOperation *)self _performProxyAuthenticationWithProxiedDevice:proxyDevice];
  }

  else
  {
    proxyDevice = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-10000 userInfo:0];
    [(TROperation *)self finishWithError:proxyDevice];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_performProxyAuthenticationWithProxiedDevice:(id)device
{
  v33 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  v5 = [TRAnisetteDataProvider alloc];
  session = [(TROperation *)self session];
  v7 = [(TRAnisetteDataProvider *)v5 initWithSession:session];

  v8 = objc_alloc_init(getAKAppleIDAuthenticationInAppContextClass());
  presentingViewController = [(TRProxyAuthOperation *)self presentingViewController];
  [v8 setPresentingViewController:presentingViewController];

  account = [(TRProxyAuthOperation *)self account];
  username = [account username];
  [v8 setUsername:username];

  [v8 setIsUsernameEditable:0];
  [v8 setShouldAllowAppleIDCreation:0];
  v12 = objc_opt_class();
  targetedServices = [(TRProxyAuthOperation *)self targetedServices];
  [v8 setServiceType:{objc_msgSend(v12, "_appleIDServiceTypeForTRAccountServices:", targetedServices)}];

  [v8 setShouldForceInteractiveAuth:0];
  [v8 setProxiedDevice:deviceCopy];
  [v8 setAnisetteDataProvider:v7];
  [v8 _setProxyingForApp:1];
  if (self->_isCLIMode)
  {
    rawPassword = self->_rawPassword;
    if (rawPassword)
    {
      if (_TRLogEnabled == 1)
      {
        v15 = TRLogHandle();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v28 = "[TRProxyAuthOperation _performProxyAuthenticationWithProxiedDevice:]";
          _os_log_impl(&dword_26F2A2000, v15, OS_LOG_TYPE_DEFAULT, "%s _performProxyAuthenticationWithProxiedDevice _isCLIMode is enabled, setting raw password", buf, 0xCu);
        }

        rawPassword = self->_rawPassword;
      }

      [v8 _setPassword:rawPassword];
    }
  }

  if (_TRLogEnabled == 1)
  {
    v16 = TRLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      username2 = [v8 username];
      v18 = [objc_opt_class() _logStringForAppleIDServiceType:{objc_msgSend(v8, "serviceType")}];
      *buf = 136315650;
      v28 = "[TRProxyAuthOperation _performProxyAuthenticationWithProxiedDevice:]";
      v29 = 2112;
      v30 = username2;
      v31 = 2114;
      v32 = v18;
      _os_log_impl(&dword_26F2A2000, v16, OS_LOG_TYPE_DEFAULT, "%s Attempting authentication of account %@ using service type %{public}@", buf, 0x20u);
    }
  }

  v19 = objc_alloc_init(MEMORY[0x277CF0178]);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __69__TRProxyAuthOperation__performProxyAuthenticationWithProxiedDevice___block_invoke;
  v23[3] = &unk_279DCF040;
  v24 = v19;
  selfCopy = self;
  v26 = deviceCopy;
  v20 = deviceCopy;
  v21 = v19;
  [v21 authenticateWithContext:v8 completion:v23];

  v22 = *MEMORY[0x277D85DE8];
}

void __69__TRProxyAuthOperation__performProxyAuthenticationWithProxiedDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (_TRLogEnabled == 1)
  {
    v7 = TRLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = @"<auth results>";
      v9 = *(a1 + 32);
      v27 = "[TRProxyAuthOperation _performProxyAuthenticationWithProxiedDevice:]_block_invoke";
      *buf = 136315906;
      if (!v5)
      {
        v8 = @"<no auth results>";
      }

      v28 = 2112;
      v29 = v6;
      v30 = 2112;
      v31 = v8;
      v32 = 2112;
      v33 = v9;
      _os_log_impl(&dword_26F2A2000, v7, OS_LOG_TYPE_DEFAULT, "%s %@ %@ with %@", buf, 0x2Au);
    }
  }

  if (v5)
  {
    v10 = objc_alloc_init(TRSetupProxyAuthenticationRequest);
    v11 = [*(a1 + 40) account];
    [(TRSetupProxyAuthenticationRequest *)v10 setAccount:v11];

    v12 = *(a1 + 40);
    if ((*(v12 + 292) & 1) == 0)
    {
      v13 = [v5 objectForKeyedSubscript:*MEMORY[0x277CEFFD0]];
      [(TRSetupProxyAuthenticationRequest *)v10 setRawPassword:v13];

      v12 = *(a1 + 40);
    }

    if (*(v12 + 290) == 1)
    {
      v14 = *(v12 + 328);
      if (v14)
      {
        if (_TRLogEnabled == 1)
        {
          v15 = TRLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v27 = "[TRProxyAuthOperation _performProxyAuthenticationWithProxiedDevice:]_block_invoke";
            _os_log_impl(&dword_26F2A2000, v15, OS_LOG_TYPE_DEFAULT, "%s AKAppleIDAuthenticationController authenticateWithContext _isCLIMode is enabled, setting raw password", buf, 0xCu);
          }

          v14 = *(*(a1 + 40) + 328);
        }

        [(TRSetupProxyAuthenticationRequest *)v10 setRawPassword:v14];
        v12 = *(a1 + 40);
      }
    }

    v16 = [v12 targetedServices];
    [(TRSetupProxyAuthenticationRequest *)v10 setTargetedAccountServices:v16];

    -[TRSetupProxyAuthenticationRequest setShouldUseAIDA:](v10, "setShouldUseAIDA:", [*(a1 + 40) shouldUseAIDA]);
    objc_initWeak(buf, *(a1 + 40));
    v17 = [*(a1 + 40) session];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __69__TRProxyAuthOperation__performProxyAuthenticationWithProxiedDevice___block_invoke_17;
    v23[3] = &unk_279DCF018;
    objc_copyWeak(&v25, buf);
    v24 = *(a1 + 48);
    [v17 sendRequest:v10 withResponseHandler:v23];

    objc_destroyWeak(&v25);
    objc_destroyWeak(buf);
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v18 = TRLogHandle();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v27 = "[TRProxyAuthOperation _performProxyAuthenticationWithProxiedDevice:]_block_invoke";
        _os_log_impl(&dword_26F2A2000, v18, OS_LOG_TYPE_DEFAULT, "%s Failed to receive proxy authentication results", buf, 0xCu);
      }
    }

    v10 = objc_opt_new();
    v19 = [*(a1 + 40) targetedServices];
    [(TRSetupProxyAuthenticationRequest *)v10 setObject:v19 forKeyedSubscript:@"TRProxyAuthOperationUnauthenticatedServicesKey"];

    if (v6)
    {
      [(TRSetupProxyAuthenticationRequest *)v10 setObject:v6 forKeyedSubscript:@"TRProxyAuthOperationErrorKey"];
    }

    v20 = *(a1 + 40);
    v21 = [(TRSetupProxyAuthenticationRequest *)v10 copy];
    [v20 finishWithResult:v21];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __69__TRProxyAuthOperation__performProxyAuthenticationWithProxiedDevice___block_invoke_17(uint64_t a1, void *a2, void *a3)
{
  v8 = a2;
  v5 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained isCancelled])
  {
    v7 = [objc_opt_class() userCancelledError];
    [WeakRetained finishWithError:v7];
  }

  else if (v5)
  {
    [WeakRetained _handleProxyAuthenticationResponse:v5 proxiedDevice:*(a1 + 32)];
  }

  else
  {
    [WeakRetained finishWithError:v8];
  }
}

- (void)_handleProxyAuthenticationResponse:(id)response proxiedDevice:(id)device
{
  v38 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  deviceCopy = device;
  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v35 = "[TRProxyAuthOperation _handleProxyAuthenticationResponse:proxiedDevice:]";
      v36 = 2112;
      v37 = responseCopy;
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "%s Handle Proxy Authentication Response: %@", buf, 0x16u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = responseCopy;
    v10 = objc_opt_new();
    unauthenticatedAccountServices = [v9 unauthenticatedAccountServices];
    [v10 setObject:unauthenticatedAccountServices forKeyedSubscript:@"TRProxyAuthOperationUnauthenticatedServicesKey"];

    error = [v9 error];

    if (error)
    {
      if (_TRLogEnabled == 1)
      {
        v13 = TRLogHandle();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26F2A2000, v13, OS_LOG_TYPE_DEFAULT, "Error in response", buf, 2u);
        }
      }

      error2 = [v9 error];
      [v10 setObject:error2 forKeyedSubscript:@"TRProxyAuthOperationErrorKey"];
    }

    else
    {
      authenticationResults = [v9 authenticationResults];
      v20 = authenticationResults;
      if (authenticationResults && self->_presentingViewController && !self->_isCLIMode && self->_canDoTermsAndConditions && self->_isForHomePod)
      {
        v21 = [(NSSet *)self->_targetedServices containsObject:&unk_287F62918];

        if (v21)
        {
          if (_TRLogEnabled == 1)
          {
            v22 = TRLogHandle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_26F2A2000, v22, OS_LOG_TYPE_DEFAULT, "Showing Terms for Proxy Auth", buf, 2u);
            }
          }

          v23 = [TRAnisetteDataProvider alloc];
          session = [(TROperation *)self session];
          v15 = [(TRAnisetteDataProvider *)v23 initWithSession:session];

          v25 = [TRTermsAndConditionsManager alloc];
          authenticationResults2 = [v9 authenticationResults];
          v27 = [(TRTermsAndConditionsManager *)v25 initWithAuthResultsBlock:authenticationResults2 presentingViewController:self->_presentingChildViewController];
          termsManager = self->_termsManager;
          self->_termsManager = v27;

          v29 = self->_termsManager;
          v32[0] = MEMORY[0x277D85DD0];
          v32[1] = 3221225472;
          v32[2] = __73__TRProxyAuthOperation__handleProxyAuthenticationResponse_proxiedDevice___block_invoke;
          v32[3] = &unk_279DCF068;
          v32[4] = self;
          v33 = v10;
          v31[0] = MEMORY[0x277D85DD0];
          v31[1] = 3221225472;
          v31[2] = __73__TRProxyAuthOperation__handleProxyAuthenticationResponse_proxiedDevice___block_invoke_2;
          v31[3] = &unk_279DCEBF8;
          v31[4] = self;
          [(TRTermsAndConditionsManager *)v29 loadProxiedTerms:deviceCopy anisetteDataProvider:v15 appProvidedContext:@"HomePodSetup" acceptAction:v32 declineAction:v31];
          if (_TRLogEnabled == 1)
          {
            v30 = TRLogHandle();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v35 = "[TRProxyAuthOperation _handleProxyAuthenticationResponse:proxiedDevice:]";
              _os_log_impl(&dword_26F2A2000, v30, OS_LOG_TYPE_DEFAULT, "%s Terms Done", buf, 0xCu);
            }
          }

          goto LABEL_14;
        }
      }

      else
      {
      }

      if (_TRLogEnabled != 1)
      {
LABEL_13:
        v15 = [v10 copy];
        [(TROperation *)self finishWithResult:v15];
LABEL_14:

        goto LABEL_20;
      }

      error2 = TRLogHandle();
      if (os_log_type_enabled(error2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F2A2000, error2, OS_LOG_TYPE_DEFAULT, "Proxy Auth Skipping terms", buf, 2u);
      }
    }

    goto LABEL_13;
  }

  if (_TRLogEnabled == 1)
  {
    v16 = TRLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = objc_opt_class();
      *buf = 136315394;
      v35 = "[TRProxyAuthOperation _handleProxyAuthenticationResponse:proxiedDevice:]";
      v36 = 2112;
      v37 = v17;
      _os_log_impl(&dword_26F2A2000, v16, OS_LOG_TYPE_DEFAULT, "%s response class is not TRSetupAuthenticationResponse: %@", buf, 0x16u);
    }
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-10000 userInfo:0];
  [(TROperation *)self finishWithError:v9];
LABEL_20:

  v18 = *MEMORY[0x277D85DE8];
}

void __73__TRProxyAuthOperation__handleProxyAuthenticationResponse_proxiedDevice___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [v1 finishWithResult:v2];
}

void __73__TRProxyAuthOperation__handleProxyAuthenticationResponse_proxiedDevice___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TROperationErrorDomain" code:-12002 userInfo:0];
  [v1 finishWithError:v2];
}

+ (int64_t)_appleIDServiceTypeForTRAccountServices:(id)services
{
  servicesCopy = services;
  if ([servicesCopy containsObject:&unk_287F62918])
  {
    v4 = 1;
  }

  else if ([servicesCopy containsObject:&unk_287F62930])
  {
    v4 = 2;
  }

  else if ([servicesCopy containsObject:&unk_287F62948])
  {
    v4 = 6;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (id)_logStringForAppleIDServiceType:(int64_t)type
{
  if ((type - 1) > 5)
  {
    return @"UNKNOWN";
  }

  else
  {
    return off_279DCF088[type - 1];
  }
}

@end