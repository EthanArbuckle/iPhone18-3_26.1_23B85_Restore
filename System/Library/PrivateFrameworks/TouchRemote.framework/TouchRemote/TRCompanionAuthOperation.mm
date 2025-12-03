@interface TRCompanionAuthOperation
- (void)_handleProxyDeviceResponse:(id)response;
- (void)_handleResponse:(id)response proxiedDevice:(id)device;
- (void)_performCompanionAuthenticationWithProxiedDevice:(id)device;
- (void)_sendProxyDeviceRequest;
- (void)execute;
@end

@implementation TRCompanionAuthOperation

- (void)execute
{
  if ([(TRCompanionAuthOperation *)self isCancelled])
  {
    userCancelledError = [objc_opt_class() userCancelledError];
    [(TROperation *)self finishWithError:userCancelledError];
  }

  else
  {

    [(TRCompanionAuthOperation *)self _sendProxyDeviceRequest];
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
      v10 = "[TRCompanionAuthOperation _sendProxyDeviceRequest]";
      _os_log_impl(&dword_26F2A2000, v3, OS_LOG_TYPE_DEFAULT, "%s Requesting proxy device", buf, 0xCu);
    }
  }

  v4 = objc_alloc_init(TRSetupProxyDeviceRequest);
  objc_initWeak(buf, self);
  session = [(TROperation *)self session];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__TRCompanionAuthOperation__sendProxyDeviceRequest__block_invoke;
  v7[3] = &unk_279DCECD0;
  objc_copyWeak(&v8, buf);
  [session sendRequest:v4 withResponseHandler:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(buf);

  v6 = *MEMORY[0x277D85DE8];
}

void __51__TRCompanionAuthOperation__sendProxyDeviceRequest__block_invoke(uint64_t a1, void *a2, void *a3)
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
      v9 = "[TRCompanionAuthOperation _handleProxyDeviceResponse:]";
      v10 = 2112;
      v11 = responseCopy;
      _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "%s Handle Proxy Device Response: %@", &v8, 0x16u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    proxyDevice = [responseCopy proxyDevice];
    if (proxyDevice)
    {
      [(TRCompanionAuthOperation *)self _performCompanionAuthenticationWithProxiedDevice:proxyDevice];
    }
  }

  else
  {
    proxyDevice = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-10000 userInfo:0];
    [(TROperation *)self finishWithError:proxyDevice];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_performCompanionAuthenticationWithProxiedDevice:(id)device
{
  v35 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  defaultStore = [MEMORY[0x277CB8F48] defaultStore];
  account = [(TRCompanionAuthOperation *)self account];
  v26 = 0;
  v7 = [defaultStore credentialForAccount:account error:&v26];
  v8 = v26;

  if (v7)
  {
    account2 = [(TRCompanionAuthOperation *)self account];
    [account2 setCredential:v7];

    if (_TRLogEnabled == 1)
    {
      v10 = TRLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        account3 = [(TRCompanionAuthOperation *)self account];
        *buf = 136315394;
        v30 = "[TRCompanionAuthOperation _performCompanionAuthenticationWithProxiedDevice:]";
        v31 = 2112;
        v32 = account3;
        _os_log_impl(&dword_26F2A2000, v10, OS_LOG_TYPE_DEFAULT, "%s Loaded credentials for account %@.", buf, 0x16u);
      }
    }

    currentDevice = [MEMORY[0x277CF0218] currentDevice];
    [currentDevice setLinkType:3];
    v13 = objc_alloc_init(TRSetupCompanionAuthenticationRequest);
    [(TRSetupCompanionAuthenticationRequest *)v13 setCompanionDevice:currentDevice];
    account4 = [(TRCompanionAuthOperation *)self account];
    [(TRSetupCompanionAuthenticationRequest *)v13 setAccount:account4];

    targetedServices = [(TRCompanionAuthOperation *)self targetedServices];
    [(TRSetupCompanionAuthenticationRequest *)v13 setTargetedAccountServices:targetedServices];

    [(TRSetupCompanionAuthenticationRequest *)v13 setShouldUseAIDA:[(TRCompanionAuthOperation *)self shouldUseAIDA]];
    if (!self->_forceFail)
    {
      account5 = [(TRCompanionAuthOperation *)self account];
      [(TRSetupCompanionAuthenticationRequest *)v13 setAccount:account5];
    }

    objc_initWeak(buf, self);
    session = [(TROperation *)self session];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __77__TRCompanionAuthOperation__performCompanionAuthenticationWithProxiedDevice___block_invoke;
    v23[3] = &unk_279DCF018;
    objc_copyWeak(&v25, buf);
    v24 = deviceCopy;
    [session sendRequest:v13 withResponseHandler:v23];

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
        account6 = [(TRCompanionAuthOperation *)self account];
        *buf = 136315650;
        v30 = "[TRCompanionAuthOperation _performCompanionAuthenticationWithProxiedDevice:]";
        v31 = 2112;
        v32 = account6;
        v33 = 2112;
        v34 = v8;
        _os_log_impl(&dword_26F2A2000, v18, OS_LOG_TYPE_DEFAULT, "%s Failed to load credentials for account %@.  Error: %@", buf, 0x20u);
      }
    }

    v27 = @"TRCompanionAuthOperationUnauthenticatedServicesKey";
    targetedServices2 = [(TRCompanionAuthOperation *)self targetedServices];
    v28 = targetedServices2;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    currentDevice = [v21 mutableCopy];

    if (v8)
    {
      [currentDevice setObject:v8 forKeyedSubscript:@"TRCompanionAuthOperationErrorKey"];
    }

    v13 = [currentDevice copy];
    [(TROperation *)self finishWithResult:v13];
  }

  v22 = *MEMORY[0x277D85DE8];
}

void __77__TRCompanionAuthOperation__performCompanionAuthenticationWithProxiedDevice___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if ([WeakRetained isCancelled])
  {
    if (_TRLogEnabled == 1)
    {
      v8 = TRLogHandle();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "TRCompanionAuthOperation userCancelledError", buf, 2u);
      }
    }

    v9 = [objc_opt_class() userCancelledError];
    [WeakRetained finishWithError:v9];
  }

  else if (v6)
  {
    if (_TRLogEnabled == 1)
    {
      v10 = TRLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_26F2A2000, v10, OS_LOG_TYPE_DEFAULT, "TRCompanionAuthOperation response received", v12, 2u);
      }
    }

    [WeakRetained _handleResponse:v6 proxiedDevice:*(a1 + 32)];
  }

  else
  {
    if (_TRLogEnabled == 1)
    {
      v11 = TRLogHandle();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v13 = 0;
        _os_log_impl(&dword_26F2A2000, v11, OS_LOG_TYPE_DEFAULT, "TRCompanionAuthOperation no response from send request", v13, 2u);
      }
    }

    [WeakRetained finishWithError:v5];
  }
}

- (void)_handleResponse:(id)response proxiedDevice:(id)device
{
  v56 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  deviceCopy = device;
  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v53 = "[TRCompanionAuthOperation _handleResponse:proxiedDevice:]";
      v54 = 2112;
      v55 = responseCopy;
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "%s Handle Companion Authentication Response: %@", buf, 0x16u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = responseCopy;
    v50 = @"TRCompanionAuthOperationUnauthenticatedServicesKey";
    unauthenticatedAccountServices = [(__CFString *)v9 unauthenticatedAccountServices];
    v51 = unauthenticatedAccountServices;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v12 = [v11 mutableCopy];

    error = [(__CFString *)v9 error];

    if (error)
    {
      if (_TRLogEnabled == 1)
      {
        v14 = TRLogHandle();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26F2A2000, v14, OS_LOG_TYPE_DEFAULT, "Error in response", buf, 2u);
        }

        if (_TRLogEnabled == 1)
        {
          v15 = TRLogHandle();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
          {
            if (self->_isForHomePod)
            {
              v16 = @"YES";
            }

            else
            {
              v16 = @"NO";
            }

            *buf = 138412290;
            v53 = v16;
            _os_log_impl(&dword_26F2A2000, v15, OS_LOG_TYPE_DEFAULT, "_isForHomePod %@", buf, 0xCu);
          }
        }
      }

      error2 = [(__CFString *)v9 error];
      [v12 setObject:error2 forKeyedSubscript:@"TRCompanionAuthOperationErrorKey"];

      if (self->_isForHomePod)
      {
        error3 = [(__CFString *)v9 error];
        if (error3)
        {
          v19 = error3;
          error4 = [(__CFString *)v9 error];
          ak_isEligibleForProxiedAuthFallback = [error4 ak_isEligibleForProxiedAuthFallback];

          if ((ak_isEligibleForProxiedAuthFallback & 1) == 0)
          {
            if (_TRLogEnabled == 1)
            {
              v42 = TRLogHandle();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                error5 = [(__CFString *)v9 error];
                error6 = [(__CFString *)v9 error];
                ak_isEligibleForProxiedAuthFallback2 = [error6 ak_isEligibleForProxiedAuthFallback];
                v46 = @"NO";
                if (ak_isEligibleForProxiedAuthFallback2)
                {
                  v46 = @"YES";
                }

                *buf = 138412546;
                v53 = error5;
                v54 = 2112;
                v55 = v46;
                _os_log_impl(&dword_26F2A2000, v42, OS_LOG_TYPE_DEFAULT, "Error cannot fall back, finishing with error %@ | canFallBack %@", buf, 0x16u);
              }
            }

            error7 = [(__CFString *)v9 error];
            [(TROperation *)self finishWithError:error7];
            goto LABEL_48;
          }
        }
      }

      if (_TRLogEnabled == 1)
      {
        v22 = TRLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          error8 = [(__CFString *)v9 error];
          error9 = [(__CFString *)v9 error];
          ak_isEligibleForProxiedAuthFallback3 = [error9 ak_isEligibleForProxiedAuthFallback];
          v26 = @"NO";
          if (ak_isEligibleForProxiedAuthFallback3)
          {
            v26 = @"YES";
          }

          *buf = 138412546;
          v53 = error8;
          v54 = 2112;
          v55 = v26;
          _os_log_impl(&dword_26F2A2000, v22, OS_LOG_TYPE_DEFAULT, "Error fall back to proxy, error %@ | canFallBack %@", buf, 0x16u);
        }
      }
    }

    authenticationResults = [(__CFString *)v9 authenticationResults];
    v28 = authenticationResults;
    if (authenticationResults && self->_presentingViewController && !self->_isCLIMode && self->_canDoTermsAndConditions && self->_isForHomePod)
    {
      v29 = [(NSSet *)self->_targetedServices containsObject:&unk_287F62A38];

      if (v29)
      {
        if (_TRLogEnabled == 1)
        {
          v30 = TRLogHandle();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_26F2A2000, v30, OS_LOG_TYPE_DEFAULT, "Showing Terms for Companion Auth", buf, 2u);
          }
        }

        v31 = [TRAnisetteDataProvider alloc];
        session = [(TROperation *)self session];
        error7 = [(TRAnisetteDataProvider *)v31 initWithSession:session];

        v34 = [TRTermsAndConditionsManager alloc];
        authenticationResults2 = [(__CFString *)v9 authenticationResults];
        v36 = [(TRTermsAndConditionsManager *)v34 initWithAuthResultsBlock:authenticationResults2 presentingViewController:self->_presentingChildViewController];
        termsManager = self->_termsManager;
        self->_termsManager = v36;

        v38 = self->_termsManager;
        v48[0] = MEMORY[0x277D85DD0];
        v48[1] = 3221225472;
        v48[2] = __58__TRCompanionAuthOperation__handleResponse_proxiedDevice___block_invoke;
        v48[3] = &unk_279DCF068;
        v48[4] = self;
        v49 = v12;
        v47[0] = MEMORY[0x277D85DD0];
        v47[1] = 3221225472;
        v47[2] = __58__TRCompanionAuthOperation__handleResponse_proxiedDevice___block_invoke_3;
        v47[3] = &unk_279DCEBF8;
        v47[4] = self;
        [(TRTermsAndConditionsManager *)v38 loadProxiedTerms:deviceCopy anisetteDataProvider:error7 appProvidedContext:@"HomePodSetup" acceptAction:v48 declineAction:v47];
        if (_TRLogEnabled == 1)
        {
          v39 = TRLogHandle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            v53 = "[TRCompanionAuthOperation _handleResponse:proxiedDevice:]";
            _os_log_impl(&dword_26F2A2000, v39, OS_LOG_TYPE_DEFAULT, "%s Terms Done Presenting", buf, 0xCu);
          }
        }

LABEL_48:
        goto LABEL_49;
      }
    }

    else
    {
    }

    if (_TRLogEnabled == 1)
    {
      v40 = TRLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F2A2000, v40, OS_LOG_TYPE_DEFAULT, "Companion Auth Skipping terms", buf, 2u);
      }
    }

    error7 = [v12 copy];
    [(TROperation *)self finishWithResult:error7];
    goto LABEL_48;
  }

  v9 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-10000 userInfo:0];
  [(TROperation *)self finishWithError:v9];
LABEL_49:

  v41 = *MEMORY[0x277D85DE8];
}

void __58__TRCompanionAuthOperation__handleResponse_proxiedDevice___block_invoke(uint64_t a1)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __58__TRCompanionAuthOperation__handleResponse_proxiedDevice___block_invoke_2;
  v2[3] = &unk_279DCEC20;
  v1 = *(a1 + 40);
  v2[4] = *(a1 + 32);
  v3 = v1;
  dispatch_async(MEMORY[0x277D85CD0], v2);
}

void __58__TRCompanionAuthOperation__handleResponse_proxiedDevice___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) copy];
  [v1 finishWithResult:v2];
}

void __58__TRCompanionAuthOperation__handleResponse_proxiedDevice___block_invoke_3(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __58__TRCompanionAuthOperation__handleResponse_proxiedDevice___block_invoke_4;
  block[3] = &unk_279DCEBF8;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

void __58__TRCompanionAuthOperation__handleResponse_proxiedDevice___block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TROperationErrorDomain" code:-12002 userInfo:0];
  [v1 finishWithError:v2];
}

@end