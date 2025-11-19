@interface TRCompanionAuthOperation
- (void)_handleProxyDeviceResponse:(id)a3;
- (void)_handleResponse:(id)a3 proxiedDevice:(id)a4;
- (void)_performCompanionAuthenticationWithProxiedDevice:(id)a3;
- (void)_sendProxyDeviceRequest;
- (void)execute;
@end

@implementation TRCompanionAuthOperation

- (void)execute
{
  if ([(TRCompanionAuthOperation *)self isCancelled])
  {
    v3 = [objc_opt_class() userCancelledError];
    [(TROperation *)self finishWithError:v3];
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
  v5 = [(TROperation *)self session];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__TRCompanionAuthOperation__sendProxyDeviceRequest__block_invoke;
  v7[3] = &unk_279DCECD0;
  objc_copyWeak(&v8, buf);
  [v5 sendRequest:v4 withResponseHandler:v7];

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

- (void)_handleProxyDeviceResponse:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (_TRLogEnabled == 1)
  {
    v5 = TRLogHandle();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 136315394;
      v9 = "[TRCompanionAuthOperation _handleProxyDeviceResponse:]";
      v10 = 2112;
      v11 = v4;
      _os_log_impl(&dword_26F2A2000, v5, OS_LOG_TYPE_DEFAULT, "%s Handle Proxy Device Response: %@", &v8, 0x16u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v4 proxyDevice];
    if (v6)
    {
      [(TRCompanionAuthOperation *)self _performCompanionAuthenticationWithProxiedDevice:v6];
    }
  }

  else
  {
    v6 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRNearbyDeviceErrorDomain" code:-10000 userInfo:0];
    [(TROperation *)self finishWithError:v6];
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_performCompanionAuthenticationWithProxiedDevice:(id)a3
{
  v35 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CB8F48] defaultStore];
  v6 = [(TRCompanionAuthOperation *)self account];
  v26 = 0;
  v7 = [v5 credentialForAccount:v6 error:&v26];
  v8 = v26;

  if (v7)
  {
    v9 = [(TRCompanionAuthOperation *)self account];
    [v9 setCredential:v7];

    if (_TRLogEnabled == 1)
    {
      v10 = TRLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(TRCompanionAuthOperation *)self account];
        *buf = 136315394;
        v30 = "[TRCompanionAuthOperation _performCompanionAuthenticationWithProxiedDevice:]";
        v31 = 2112;
        v32 = v11;
        _os_log_impl(&dword_26F2A2000, v10, OS_LOG_TYPE_DEFAULT, "%s Loaded credentials for account %@.", buf, 0x16u);
      }
    }

    v12 = [MEMORY[0x277CF0218] currentDevice];
    [v12 setLinkType:3];
    v13 = objc_alloc_init(TRSetupCompanionAuthenticationRequest);
    [(TRSetupCompanionAuthenticationRequest *)v13 setCompanionDevice:v12];
    v14 = [(TRCompanionAuthOperation *)self account];
    [(TRSetupCompanionAuthenticationRequest *)v13 setAccount:v14];

    v15 = [(TRCompanionAuthOperation *)self targetedServices];
    [(TRSetupCompanionAuthenticationRequest *)v13 setTargetedAccountServices:v15];

    [(TRSetupCompanionAuthenticationRequest *)v13 setShouldUseAIDA:[(TRCompanionAuthOperation *)self shouldUseAIDA]];
    if (!self->_forceFail)
    {
      v16 = [(TRCompanionAuthOperation *)self account];
      [(TRSetupCompanionAuthenticationRequest *)v13 setAccount:v16];
    }

    objc_initWeak(buf, self);
    v17 = [(TROperation *)self session];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __77__TRCompanionAuthOperation__performCompanionAuthenticationWithProxiedDevice___block_invoke;
    v23[3] = &unk_279DCF018;
    objc_copyWeak(&v25, buf);
    v24 = v4;
    [v17 sendRequest:v13 withResponseHandler:v23];

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
        v19 = [(TRCompanionAuthOperation *)self account];
        *buf = 136315650;
        v30 = "[TRCompanionAuthOperation _performCompanionAuthenticationWithProxiedDevice:]";
        v31 = 2112;
        v32 = v19;
        v33 = 2112;
        v34 = v8;
        _os_log_impl(&dword_26F2A2000, v18, OS_LOG_TYPE_DEFAULT, "%s Failed to load credentials for account %@.  Error: %@", buf, 0x20u);
      }
    }

    v27 = @"TRCompanionAuthOperationUnauthenticatedServicesKey";
    v20 = [(TRCompanionAuthOperation *)self targetedServices];
    v28 = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
    v12 = [v21 mutableCopy];

    if (v8)
    {
      [v12 setObject:v8 forKeyedSubscript:@"TRCompanionAuthOperationErrorKey"];
    }

    v13 = [v12 copy];
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

- (void)_handleResponse:(id)a3 proxiedDevice:(id)a4
{
  v56 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (_TRLogEnabled == 1)
  {
    v8 = TRLogHandle();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v53 = "[TRCompanionAuthOperation _handleResponse:proxiedDevice:]";
      v54 = 2112;
      v55 = v6;
      _os_log_impl(&dword_26F2A2000, v8, OS_LOG_TYPE_DEFAULT, "%s Handle Companion Authentication Response: %@", buf, 0x16u);
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = v6;
    v50 = @"TRCompanionAuthOperationUnauthenticatedServicesKey";
    v10 = [(__CFString *)v9 unauthenticatedAccountServices];
    v51 = v10;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    v12 = [v11 mutableCopy];

    v13 = [(__CFString *)v9 error];

    if (v13)
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

      v17 = [(__CFString *)v9 error];
      [v12 setObject:v17 forKeyedSubscript:@"TRCompanionAuthOperationErrorKey"];

      if (self->_isForHomePod)
      {
        v18 = [(__CFString *)v9 error];
        if (v18)
        {
          v19 = v18;
          v20 = [(__CFString *)v9 error];
          v21 = [v20 ak_isEligibleForProxiedAuthFallback];

          if ((v21 & 1) == 0)
          {
            if (_TRLogEnabled == 1)
            {
              v42 = TRLogHandle();
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
              {
                v43 = [(__CFString *)v9 error];
                v44 = [(__CFString *)v9 error];
                v45 = [v44 ak_isEligibleForProxiedAuthFallback];
                v46 = @"NO";
                if (v45)
                {
                  v46 = @"YES";
                }

                *buf = 138412546;
                v53 = v43;
                v54 = 2112;
                v55 = v46;
                _os_log_impl(&dword_26F2A2000, v42, OS_LOG_TYPE_DEFAULT, "Error cannot fall back, finishing with error %@ | canFallBack %@", buf, 0x16u);
              }
            }

            v33 = [(__CFString *)v9 error];
            [(TROperation *)self finishWithError:v33];
            goto LABEL_48;
          }
        }
      }

      if (_TRLogEnabled == 1)
      {
        v22 = TRLogHandle();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          v23 = [(__CFString *)v9 error];
          v24 = [(__CFString *)v9 error];
          v25 = [v24 ak_isEligibleForProxiedAuthFallback];
          v26 = @"NO";
          if (v25)
          {
            v26 = @"YES";
          }

          *buf = 138412546;
          v53 = v23;
          v54 = 2112;
          v55 = v26;
          _os_log_impl(&dword_26F2A2000, v22, OS_LOG_TYPE_DEFAULT, "Error fall back to proxy, error %@ | canFallBack %@", buf, 0x16u);
        }
      }
    }

    v27 = [(__CFString *)v9 authenticationResults];
    v28 = v27;
    if (v27 && self->_presentingViewController && !self->_isCLIMode && self->_canDoTermsAndConditions && self->_isForHomePod)
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
        v32 = [(TROperation *)self session];
        v33 = [(TRAnisetteDataProvider *)v31 initWithSession:v32];

        v34 = [TRTermsAndConditionsManager alloc];
        v35 = [(__CFString *)v9 authenticationResults];
        v36 = [(TRTermsAndConditionsManager *)v34 initWithAuthResultsBlock:v35 presentingViewController:self->_presentingChildViewController];
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
        [(TRTermsAndConditionsManager *)v38 loadProxiedTerms:v7 anisetteDataProvider:v33 appProvidedContext:@"HomePodSetup" acceptAction:v48 declineAction:v47];
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

    v33 = [v12 copy];
    [(TROperation *)self finishWithResult:v33];
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