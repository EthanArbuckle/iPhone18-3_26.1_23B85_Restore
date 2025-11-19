@interface VSIdentityProviderRequestManager
- (BOOL)_canShowAuthenticationUI;
- (BOOL)_handleAccountMetadataRequest:(id)a3 didCompleteWithResponse:(id)a4;
- (BOOL)_handleAuthenticationRequest:(id)a3 didCompleteWithResponse:(id)a4;
- (BOOL)_handleLogoutRequestDidComplete:(id)a3;
- (BOOL)_handleSTBOptOutDidComplete:(id)a3;
- (BOOL)_handleSilentAuthenticationRequest:(id)a3 didCompleteWithResponse:(id)a4;
- (BOOL)_requestRequiresApplicationController:(id)a3;
- (BOOL)_requestRequiresApplicationControllerIgnoringAuthentication:(id)a3;
- (BOOL)applicationController:(id)a3 requestsAlert:(id)a4;
- (VSIdentityProviderRequestManager)init;
- (VSIdentityProviderRequestManager)initWithIdentityProvider:(id)a3;
- (VSIdentityProviderRequestManagerDelegate)delegate;
- (double)_requestCompletionDelay;
- (id)_accountChannelsWithChannelIDs:(id)a3;
- (id)_accountMetadataWithAuthenticationScheme:(id)a3 responseStatusCode:(id)a4 responseString:(id)a5 accountMetadataRequest:(id)a6 verificationData:(id)a7;
- (id)_applicationControllerRequestWithIdentityProviderRequest:(id)a3;
- (id)_currentRequest;
- (id)_currentRequestContext;
- (id)_identityProviderAlertWithApplicationControllerAlert:(id)a3;
- (id)_supportedProviderAuthenticationToken;
- (id)developerSettingsFetchOperation;
- (void)_completeAuthenticationRequestWithApplicationControllerResponse:(id)a3;
- (void)_completeCachedAccountMetadataRequest;
- (void)_completeCurrentRequestWithApplicationControllerResponse:(id)a3;
- (void)_completeCurrentRequestWithApplicationControllerResponse:(id)a3 verificationData:(id)a4;
- (void)_completeCurrentRequestWithError:(id)a3;
- (void)_completeCurrentRequestWithResult:(id)a3;
- (void)_completeDeletingAccountWithError:(id)a3;
- (void)_enqueueSubscriptionOperationIfRequiredForResponse:(id)a3 asDependencyOf:(id)a4;
- (void)_enqueueUserAccountUpdateOperationIfRequiredForResponse:(id)a3 asDependencyOf:(id)a4;
- (void)_handleApplicationControllerError:(id)a3 forRequest:(id)a4;
- (void)_handleApplicationControllerRequest:(id)a3 didCompleteWithResponse:(id)a4;
- (void)_notifyDidAuthenticateAccount:(id)a3;
- (void)_processRequestContext:(id)a3;
- (void)_resetVerificationStateWithCompletionHandler:(id)a3;
- (void)_showAuthenticationUI;
- (void)_startApplicationControllerTimer;
- (void)_startDeletingAccount;
- (void)_startObservingViewModel:(id)a3;
- (void)_stopApplicationController;
- (void)_stopApplicationControllerTimer;
- (void)_submitApplicationControllerRequest:(id)a3;
- (void)_updateAccountWithAccountAuthentication:(id)a3;
- (void)applicationController:(id)a3 didReceiveViewModel:(id)a4;
- (void)applicationController:(id)a3 didReceiveViewModelError:(id)a4;
- (void)applicationController:(id)a3 didUpdateLogoViewModel:(id)a4;
- (void)applicationController:(id)a3 request:(id)a4 didCompleteWithResponse:(id)a5;
- (void)applicationController:(id)a3 request:(id)a4 didFailWithError:(id)a5;
- (void)applicationController:(id)a3 startDidFailWithError:(id)a4;
- (void)applicationControllerDidStart:(id)a3;
- (void)dealloc;
- (void)enqueueRequest:(id)a3;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)sendErrorMessage:(id)a3;
- (void)setApplicationControllerTimerDelay:(double)a3;
- (void)setViewModel:(id)a3;
@end

@implementation VSIdentityProviderRequestManager

- (VSIdentityProviderRequestManager)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The %@ initializer is not available.", v5}];

  return 0;
}

- (VSIdentityProviderRequestManager)initWithIdentityProvider:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The identityProvider parameter must not be nil."];
  }

  v22.receiver = self;
  v22.super_class = VSIdentityProviderRequestManager;
  v6 = [(VSIdentityProviderRequestManager *)&v22 init];
  if (v6)
  {
    v7 = objc_alloc_init(VSApplicationControllerRequestFactory);
    v8 = *(v6 + 12);
    *(v6 + 12) = v7;

    v9 = objc_alloc_init(MEMORY[0x277CE22A8]);
    v10 = *(v6 + 13);
    *(v6 + 13) = v9;

    objc_storeStrong(v6 + 2, a3);
    v11 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v12 = *(v6 + 7);
    *(v6 + 7) = v11;

    v13 = objc_alloc_init(MEMORY[0x277CCABD8]);
    v14 = *(v6 + 6);
    *(v6 + 6) = v13;

    [*(v6 + 6) setName:@"VSIdentityProviderRequestManager"];
    v6[10] = 1;
    *(v6 + 17) = 0x404E000000000000;
    *(v6 + 120) = xmmword_270E38B70;
    v15 = objc_alloc_init(MEMORY[0x277CE2298]);
    v16 = *(v6 + 10);
    *(v6 + 10) = v15;

    v17 = objc_alloc_init(MEMORY[0x277CE2298]);
    v18 = *(v6 + 11);
    *(v6 + 11) = v17;

    v19 = objc_alloc_init(MEMORY[0x277CE2298]);
    v20 = *(v6 + 9);
    *(v6 + 9) = v19;
  }

  return v6;
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v8 = self;
    _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Deallocating request manager %p", buf, 0xCu);
  }

  [(NSOperationQueue *)self->_privateQueue cancelAllOperations];
  v4 = self->_viewModel;
  if (v4)
  {
    [(VSIdentityProviderRequestManager *)self _stopObservingViewModel:v4];
  }

  [(VSIdentityProviderRequestManager *)self _stopApplicationController];

  v6.receiver = self;
  v6.super_class = VSIdentityProviderRequestManager;
  [(VSIdentityProviderRequestManager *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)enqueueRequest:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = v4;
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Will enque identity provider request in identity provider request manager: %@", &v15, 0xCu);
  }

  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The request parameter must not be nil."];
  }

  v6 = objc_alloc_init(VSIdentityProviderRequestContext);
  [(VSIdentityProviderRequestContext *)v6 setRequest:v4];
  v7 = MEMORY[0x277CE2298];
  v8 = [v4 account];
  v9 = [v7 optionalWithObject:v8];
  [(VSIdentityProviderRequestManager *)self setAccount:v9];

  v10 = MEMORY[0x277CE2298];
  v11 = [v4 storage];
  v12 = [v10 optionalWithObject:v11];
  [(VSIdentityProviderRequestManager *)self setStorage:v12];

  v13 = [(VSIdentityProviderRequestManager *)self requestContexts];
  [v13 addObject:v6];
  if ([v13 count] == 1)
  {
    [(VSIdentityProviderRequestManager *)self _processRequestContext:v6];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)sendErrorMessage:(id)a3
{
  v4 = a3;
  v5 = [(VSIdentityProviderRequestManager *)self applicationController];
  [v5 sendErrorMessage:v4];
}

- (void)setApplicationControllerTimerDelay:(double)a3
{
  if (self->_applicationControllerTimerDelay != a3)
  {
    self->_applicationControllerTimerDelay = a3;
    self->_applicationControllerTimerLeeway = a3 * 0.100000001;
  }
}

- (id)developerSettingsFetchOperation
{
  v3 = [(VSIdentityProviderRequestManager *)self settingsFetchOperation];

  if (!v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277CE2230]);
    settingsFetchOperation = self->_settingsFetchOperation;
    self->_settingsFetchOperation = v4;
  }

  v6 = [(VSIdentityProviderRequestManager *)self settingsFetchOperation];

  if (!v6)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [self settingsFetchOperation] parameter must not be nil."];
  }

  return [(VSIdentityProviderRequestManager *)self settingsFetchOperation];
}

- (void)_processRequestContext:(id)a3
{
  v49 = *MEMORY[0x277D85DE8];
  v34 = a3;
  v43 = 0;
  v44 = &v43;
  v45 = 0x2020000000;
  v46 = 1;
  v4 = objc_alloc_init(MEMORY[0x277CE22D8]);
  v5 = [(VSIdentityProviderRequestManager *)self developerSettingsFetchOperation];
  objc_initWeak(&location, v5);
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __59__VSIdentityProviderRequestManager__processRequestContext___block_invoke;
  v38[3] = &unk_279E1A818;
  objc_copyWeak(&v41, &location);
  v40 = &v43;
  v6 = v4;
  v39 = v6;
  [v5 setCompletionBlock:v38];
  v7 = [(VSIdentityProviderRequestManager *)self privateQueue];
  [v7 addOperation:v5];

  [v6 wait];
  v8 = [(VSIdentityProviderRequestManager *)self preferences];
  if ([v8 shouldDisableRequestTimeouts])
  {
  }

  else
  {
    v9 = *(v44 + 24);

    if ((v9 & 1) == 0)
    {
      goto LABEL_7;
    }
  }

  v10 = VSDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270DD4000, v10, OS_LOG_TYPE_DEFAULT, "Application controller timer will not be started as it is disabled via developer settings or vsa-disable-timeouts preference", buf, 2u);
  }

  [(VSIdentityProviderRequestManager *)self setAllowsApplicationControllerTimer:0];
LABEL_7:
  v11 = [v34 request];
  v12 = [(VSIdentityProviderRequestManager *)self _requestRequiresApplicationController:v11];

  if (v12)
  {
    v13 = VSDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_270DD4000, v13, OS_LOG_TYPE_DEFAULT, "Request requires application controller.", buf, 2u);
    }

    v14 = objc_alloc_init(MEMORY[0x277CE22D8]);
    v15 = objc_alloc(MEMORY[0x277CE2278]);
    v16 = [(VSIdentityProviderRequestManager *)self identityProvider];
    v17 = [v15 initWithIdentityProvider:v16];

    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __59__VSIdentityProviderRequestManager__processRequestContext___block_invoke_30;
    v36[3] = &unk_279E19290;
    v6 = v14;
    v37 = v6;
    [v17 setCompletionBlock:v36];
    v18 = [(VSIdentityProviderRequestManager *)self privateQueue];
    [v18 addOperation:v17];

    [v6 wait];
    v19 = [v17 error];
    if (v19)
    {
      v20 = VSErrorLogObject();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [VSIdentityProviderRequestManager _processRequestContext:];
      }
    }

    v21 = [(VSIdentityProviderRequestManager *)self delegate];
    if ((objc_opt_respondsToSelector() & 1) == 0 || (-[VSIdentityProviderRequestManager identityProvider](self, "identityProvider"), v22 = objc_claimAutoreleasedReturnValue(), [v21 identityProviderRequestManager:self applicationControllerWithIdentityProvider:v22], v23 = objc_claimAutoreleasedReturnValue(), v22, !v23))
    {
      v24 = [VSApplicationController alloc];
      v25 = [(VSIdentityProviderRequestManager *)self identityProvider];
      v23 = [(VSApplicationController *)v24 initWithIdentityProvider:v25];

      v26 = [v17 results];
      if (v26)
      {
        v27 = VSDefaultLogObject();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v48 = v26;
          _os_log_impl(&dword_270DD4000, v27, OS_LOG_TYPE_DEFAULT, "Providing user accounts to auth context: %@", buf, 0xCu);
        }

        [(VSApplicationController *)v23 setUserAccounts:v26];
      }

      v28 = [(VSIdentityProviderRequestManager *)self auditToken];
      [(VSApplicationController *)v23 setAuditToken:v28];

      v29 = [v34 request];
      v30 = [v29 accountProviderAuthenticationToken];
      [(VSApplicationController *)v23 setAccountProviderAuthenticationToken:v30];

      if (!v23)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The applicationControllerOrNil parameter must not be nil."];
        v23 = 0;
      }
    }

    v31 = v23;
    [(VSIdentityProviderRequestManager *)self setApplicationController:v31];
    [(VSApplicationController *)v31 setDelegate:self];
    [(VSIdentityProviderRequestManager *)self _startApplicationControllerTimer];
    [(VSApplicationController *)v31 start];
  }

  else
  {
    v32 = VSDefaultLogObject();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_270DD4000, v32, OS_LOG_TYPE_DEFAULT, "Request does not require application controller.", buf, 2u);
    }

    objc_initWeak(buf, self);
    objc_copyWeak(&v35, buf);
    VSPerformBlockOnMainThread();
    objc_destroyWeak(&v35);
    objc_destroyWeak(buf);
  }

  objc_destroyWeak(&v41);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v43, 8);
  v33 = *MEMORY[0x277D85DE8];
}

void __59__VSIdentityProviderRequestManager__processRequestContext___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = [WeakRetained result];
  v4 = [v3 forceUnwrapObject];

  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __59__VSIdentityProviderRequestManager__processRequestContext___block_invoke_2;
  v5[3] = &unk_279E19C10;
  v5[4] = *(a1 + 40);
  [v4 unwrapObject:v5 error:&__block_literal_global_24];
  [*(a1 + 32) signal];
}

uint64_t __59__VSIdentityProviderRequestManager__processRequestContext___block_invoke_2(uint64_t a1, void *a2)
{
  result = [a2 requestTimeoutsDisabled];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

void __59__VSIdentityProviderRequestManager__processRequestContext___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = VSErrorLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __59__VSIdentityProviderRequestManager__processRequestContext___block_invoke_3_cold_1();
  }
}

void __59__VSIdentityProviderRequestManager__processRequestContext___block_invoke_37(uint64_t a1)
{
  VSRequireMainThread();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _completeCachedAccountMetadataRequest];
}

- (id)_currentRequestContext
{
  v2 = MEMORY[0x277CE2298];
  v3 = [(VSIdentityProviderRequestManager *)self requestContexts];
  v4 = [v3 firstObject];
  v5 = [v2 optionalWithObject:v4];

  return v5;
}

- (id)_currentRequest
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__6;
  v11 = __Block_byref_object_dispose__6;
  v12 = objc_alloc_init(MEMORY[0x277CE2298]);
  v3 = [(VSIdentityProviderRequestManager *)self _currentRequestContext];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __51__VSIdentityProviderRequestManager__currentRequest__block_invoke;
  v6[3] = &unk_279E1A840;
  v6[4] = &v7;
  [v3 conditionallyUnwrapObject:v6];

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __51__VSIdentityProviderRequestManager__currentRequest__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x277CE2298];
  v7 = [a2 request];
  v4 = [v3 optionalWithObject:v7];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)_startApplicationControllerTimer
{
  if ([(VSIdentityProviderRequestManager *)self allowsApplicationControllerTimer])
  {
    [(VSIdentityProviderRequestManager *)self _stopApplicationControllerTimer];
    v3 = MEMORY[0x277D85CD0];
    v4 = MEMORY[0x277D85CD0];
    v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v3);
    [(VSIdentityProviderRequestManager *)self setApplicationControllerTimerSource:v5];
    [(VSIdentityProviderRequestManager *)self applicationControllerTimerDelay];
    v7 = (v6 * 1000000000.0);
    [(VSIdentityProviderRequestManager *)self applicationControllerTimerLeeway];
    v9 = (v8 * 1000000000.0);
    v10 = dispatch_time(0, v7);
    dispatch_source_set_timer(v5, v10, 0xFFFFFFFFFFFFFFFFLL, v9);
    objc_initWeak(&location, self);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __68__VSIdentityProviderRequestManager__startApplicationControllerTimer__block_invoke;
    handler[3] = &unk_279E19D48;
    objc_copyWeak(&v14, &location);
    dispatch_source_set_event_handler(v5, handler);
    v11 = VSDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&dword_270DD4000, v11, OS_LOG_TYPE_DEFAULT, "Will start application timer.", v12, 2u);
    }

    dispatch_resume(v5);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }
}

void __68__VSIdentityProviderRequestManager__startApplicationControllerTimer__block_invoke(uint64_t a1)
{
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270DD4000, v2, OS_LOG_TYPE_DEFAULT, "Application timer fired.", buf, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v4 = VSPrivateError();
    v5 = VSPublicError();
    v6 = [WeakRetained currentApplicationControllerRequest];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __68__VSIdentityProviderRequestManager__startApplicationControllerTimer__block_invoke_39;
    v10[3] = &unk_279E1A868;
    v10[4] = WeakRetained;
    v11 = v5;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __68__VSIdentityProviderRequestManager__startApplicationControllerTimer__block_invoke_2;
    v8[3] = &unk_279E19848;
    v8[4] = WeakRetained;
    v9 = v11;
    v7 = v11;
    [v6 conditionallyUnwrapObject:v10 otherwise:v8];
  }
}

- (void)_stopApplicationControllerTimer
{
  v3 = [(VSIdentityProviderRequestManager *)self applicationControllerTimerSource];

  if (v3)
  {
    v4 = VSDefaultLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Stopping application timer.", v6, 2u);
    }

    v5 = [(VSIdentityProviderRequestManager *)self applicationControllerTimerSource];
    dispatch_source_cancel(v5);

    [(VSIdentityProviderRequestManager *)self setApplicationControllerTimerSource:0];
  }
}

- (void)_handleApplicationControllerRequest:(id)a3 didCompleteWithResponse:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = VSDefaultLogObject();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[VSIdentityProviderRequestManager _handleApplicationControllerRequest:didCompleteWithResponse:]";
    v14 = 2048;
    v15 = [v6 type];
    _os_log_impl(&dword_270DD4000, v8, OS_LOG_TYPE_DEFAULT, "%s: request type %ld", &v12, 0x16u);
  }

  VSRequireMainThread();
  v9 = [v6 type];
  if (v9 > 2)
  {
    if (v9 == 3)
    {
      if ([(VSIdentityProviderRequestManager *)self _handleAccountMetadataRequest:v6 didCompleteWithResponse:v7])
      {
        goto LABEL_15;
      }
    }

    else if (v9 == 4)
    {
      if ([(VSIdentityProviderRequestManager *)self _handleLogoutRequestDidComplete:v6])
      {
        goto LABEL_15;
      }
    }

    else if (v9 == 5 && [(VSIdentityProviderRequestManager *)self _handleSTBOptOutDidComplete:v6])
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v9 == 1)
  {
    if ([(VSIdentityProviderRequestManager *)self _handleAuthenticationRequest:v6 didCompleteWithResponse:v7])
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (v9 != 2 || ![(VSIdentityProviderRequestManager *)self _handleSilentAuthenticationRequest:v6 didCompleteWithResponse:v7])
  {
LABEL_14:
    v10 = VSPublicError();
    [(VSIdentityProviderRequestManager *)self _completeCurrentRequestWithError:v10];
  }

LABEL_15:

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)_handleAuthenticationRequest:(id)a3 didCompleteWithResponse:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a4;
  VSRequireMainThread();
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 136315138;
    v27 = "[VSIdentityProviderRequestManager _handleAuthenticationRequest:didCompleteWithResponse:]";
    _os_log_impl(&dword_270DD4000, v6, OS_LOG_TYPE_DEFAULT, "Entering %s", &v26, 0xCu);
  }

  v7 = [v5 responseString];
  if (![v7 length])
  {
    v13 = VSDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_270DD4000, v13, OS_LOG_TYPE_DEFAULT, "No response string.", &v26, 2u);
    }

    goto LABEL_17;
  }

  v8 = [v5 expectedAction];
  v9 = [v8 integerValue];

  if (v9 != 1)
  {
    v13 = VSDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
      v26 = 138412290;
      v27 = v19;
      _os_log_impl(&dword_270DD4000, v13, OS_LOG_TYPE_DEFAULT, "Response action was %@.", &v26, 0xCu);
    }

LABEL_17:
    v18 = 0;
    goto LABEL_18;
  }

  v10 = [(VSIdentityProviderRequestManager *)self account];
  v11 = [v10 forceUnwrapObject];
  [(VSIdentityProviderRequestManager *)self _notifyDidAuthenticateAccount:v11];

  [(VSIdentityProviderRequestManager *)self setViewModel:0];
  v12 = [(VSIdentityProviderRequestManager *)self _currentRequest];
  v13 = [v12 forceUnwrapObject];

  v14 = [v13 type];
  v15 = VSDefaultLogObject();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [MEMORY[0x277CCABB0] numberWithInteger:v14];
    v26 = 138412290;
    v27 = v16;
    _os_log_impl(&dword_270DD4000, v15, OS_LOG_TYPE_DEFAULT, "Request type: %@", &v26, 0xCu);
  }

  if (v14 == 4 || v14 == 1)
  {
    v17 = VSDefaultLogObject();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v26) = 0;
      _os_log_impl(&dword_270DD4000, v17, OS_LOG_TYPE_DEFAULT, "Make account or edit or silent-make account request type.", &v26, 2u);
    }

    [(VSIdentityProviderRequestManager *)self _completeAuthenticationRequestWithApplicationControllerResponse:v5];
  }

  else
  {
    v22 = [(VSIdentityProviderRequestManager *)self _requestRequiresApplicationControllerIgnoringAuthentication:v13];
    v23 = VSDefaultLogObject();
    v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
    if (v22)
    {
      if (v24)
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_270DD4000, v23, OS_LOG_TYPE_DEFAULT, "Request requires application controller", &v26, 2u);
      }

      v25 = [(VSIdentityProviderRequestManager *)self _applicationControllerRequestWithIdentityProviderRequest:v13];
      [(VSIdentityProviderRequestManager *)self _submitApplicationControllerRequest:v25];
    }

    else
    {
      if (v24)
      {
        LOWORD(v26) = 0;
        _os_log_impl(&dword_270DD4000, v23, OS_LOG_TYPE_DEFAULT, "Request does not require application controller", &v26, 2u);
      }

      [(VSIdentityProviderRequestManager *)self _completeCachedAccountMetadataRequest];
    }
  }

  v18 = 1;
LABEL_18:

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)_handleSilentAuthenticationRequest:(id)a3 didCompleteWithResponse:(id)a4
{
  v34 = *MEMORY[0x277D85DE8];
  v5 = a4;
  VSRequireMainThread();
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v28 = 136315138;
    v29 = "[VSIdentityProviderRequestManager _handleSilentAuthenticationRequest:didCompleteWithResponse:]";
    _os_log_impl(&dword_270DD4000, v6, OS_LOG_TYPE_DEFAULT, "Entering %s", &v28, 0xCu);
  }

  v7 = [(VSIdentityProviderRequestManager *)self _currentRequest];
  v8 = [v7 forceUnwrapObject];

  v9 = VSDefaultLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v8 type];
    v28 = 136315650;
    v29 = "[VSIdentityProviderRequestManager _handleSilentAuthenticationRequest:didCompleteWithResponse:]";
    v30 = 2112;
    v31 = v8;
    v32 = 2048;
    v33 = v10;
    _os_log_impl(&dword_270DD4000, v9, OS_LOG_TYPE_DEFAULT, "%s: currentRequest %@, currentRequest type %ld", &v28, 0x20u);
  }

  v11 = [v5 responseString];
  if (v11)
  {
    v12 = [v5 expectedAction];
    v13 = [v12 integerValue];

    v14 = VSDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [MEMORY[0x277CCABB0] numberWithInteger:v13];
      v28 = 138412290;
      v29 = v15;
      _os_log_impl(&dword_270DD4000, v14, OS_LOG_TYPE_DEFAULT, "Response action was %@.", &v28, 0xCu);
    }

    if (v13 == 1)
    {
      v16 = VSDefaultLogObject();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v28) = 0;
        _os_log_impl(&dword_270DD4000, v16, OS_LOG_TYPE_DEFAULT, "Response action is proceed.", &v28, 2u);
      }

      if ([v8 type] == 4)
      {
        v17 = VSDefaultLogObject();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v28) = 0;
          _os_log_impl(&dword_270DD4000, v17, OS_LOG_TYPE_DEFAULT, "silent-make account request type.", &v28, 2u);
        }

        [(VSIdentityProviderRequestManager *)self _completeAuthenticationRequestWithApplicationControllerResponse:v5];
      }

      else if ([(VSIdentityProviderRequestManager *)self _requestRequiresApplicationControllerIgnoringAuthentication:v8])
      {
        v22 = [(VSIdentityProviderRequestManager *)self _applicationControllerRequestWithIdentityProviderRequest:v8];
        [(VSIdentityProviderRequestManager *)self _submitApplicationControllerRequest:v22];
      }

      else
      {
        [(VSIdentityProviderRequestManager *)self _completeCachedAccountMetadataRequest];
      }
    }

    else
    {
      v19 = [(VSIdentityProviderRequestManager *)self _canShowAuthenticationUI];
      v20 = VSDefaultLogObject();
      v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      if (v19)
      {
        if (v21)
        {
          LOWORD(v28) = 0;
          _os_log_impl(&dword_270DD4000, v20, OS_LOG_TYPE_DEFAULT, "Can show authentication UI.", &v28, 2u);
        }

        [(VSIdentityProviderRequestManager *)self _showAuthenticationUI];
      }

      else
      {
        if (v21)
        {
          LOWORD(v28) = 0;
          _os_log_impl(&dword_270DD4000, v20, OS_LOG_TYPE_DEFAULT, "Silent auth failed and we can't show UI.", &v28, 2u);
        }

        v23 = [v5 authenticationScheme];
        v24 = [v5 responseStatusCode];
        v25 = VSPublicProviderRejectedError();

        [(VSIdentityProviderRequestManager *)self _completeCurrentRequestWithError:v25];
      }
    }
  }

  else
  {
    v18 = VSDefaultLogObject();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v28) = 0;
      _os_log_impl(&dword_270DD4000, v18, OS_LOG_TYPE_DEFAULT, "No response string for silent authentication request.", &v28, 2u);
    }
  }

  v26 = *MEMORY[0x277D85DE8];
  return v11 != 0;
}

- (BOOL)_handleLogoutRequestDidComplete:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  VSRequireMainThread();
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[VSIdentityProviderRequestManager _handleLogoutRequestDidComplete:]";
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Entering %s", &v7, 0xCu);
  }

  [(VSIdentityProviderRequestManager *)self _completeDeletingAccountWithError:0];
  v5 = *MEMORY[0x277D85DE8];
  return 1;
}

- (BOOL)_handleSTBOptOutDidComplete:(id)a3
{
  VSRequireMainThread();
  [(VSIdentityProviderRequestManager *)self _completeCurrentRequestWithApplicationControllerResponse:0];
  return 1;
}

- (BOOL)_handleAccountMetadataRequest:(id)a3 didCompleteWithResponse:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a4;
  VSRequireMainThread();
  v6 = VSDefaultLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 136315138;
    v22 = "[VSIdentityProviderRequestManager _handleAccountMetadataRequest:didCompleteWithResponse:]";
    _os_log_impl(&dword_270DD4000, v6, OS_LOG_TYPE_DEFAULT, "Entering %s", &v21, 0xCu);
  }

  v7 = [v5 responseString];
  if (v7)
  {
    v8 = [v5 expectedAction];
    v9 = [v8 integerValue];

    v10 = VSDefaultLogObject();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [MEMORY[0x277CCABB0] numberWithInteger:v9];
      v21 = 138412290;
      v22 = v11;
      _os_log_impl(&dword_270DD4000, v10, OS_LOG_TYPE_DEFAULT, "Expected action is %@", &v21, 0xCu);
    }

    if (v9 != 2)
    {
      if (v9 == 1)
      {
        v12 = VSDefaultLogObject();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v21) = 0;
          _os_log_impl(&dword_270DD4000, v12, OS_LOG_TYPE_DEFAULT, "Expected to proceed.", &v21, 2u);
        }

        [(VSIdentityProviderRequestManager *)self _completeCurrentRequestWithApplicationControllerResponse:v5];
        goto LABEL_21;
      }

      goto LABEL_18;
    }

    if (![(VSIdentityProviderRequestManager *)self _canShowAuthenticationUI])
    {
LABEL_18:
      v15 = [v5 authenticationScheme];
      v16 = [v5 responseStatusCode];
      v17 = VSPublicProviderRejectedError();

      v18 = VSDefaultLogObject();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v21 = 138412290;
        v22 = v17;
        _os_log_impl(&dword_270DD4000, v18, OS_LOG_TYPE_DEFAULT, "Metadata request rejected: %@", &v21, 0xCu);
      }

      [(VSIdentityProviderRequestManager *)self _completeCurrentRequestWithError:v17];
      goto LABEL_21;
    }

    v14 = VSDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_270DD4000, v14, OS_LOG_TYPE_DEFAULT, "Expects to request UI and we can show UI.", &v21, 2u);
    }

    [(VSIdentityProviderRequestManager *)self _showAuthenticationUI];
  }

  else
  {
    v13 = VSDefaultLogObject();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_270DD4000, v13, OS_LOG_TYPE_DEFAULT, "No repsonse string.", &v21, 2u);
    }
  }

LABEL_21:

  v19 = *MEMORY[0x277D85DE8];
  return v7 != 0;
}

- (void)_handleApplicationControllerError:(id)a3 forRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  VSRequireMainThread();
  objc_initWeak(&location, self);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __81__VSIdentityProviderRequestManager__handleApplicationControllerError_forRequest___block_invoke;
  v17[3] = &unk_279E1A890;
  objc_copyWeak(&v20, &location);
  v8 = v7;
  v18 = v8;
  v19 = self;
  v9 = MEMORY[0x2743B6E40](v17);
  v10 = [(VSIdentityProviderRequestManager *)self _currentRequestContext];
  v11 = [v10 forceUnwrapObject];

  if (VSErrorIsPrivateError())
  {
    if ([v11 attemptedVerificationStateReset])
    {
      v12 = VSPublicServiceTemporarilyUnavailableError();
      (v9)[2](v9, v12);
    }

    else
    {
      [v11 setAttemptedVerificationStateReset:1];
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __81__VSIdentityProviderRequestManager__handleApplicationControllerError_forRequest___block_invoke_5;
      v13[3] = &unk_279E1A908;
      objc_copyWeak(&v16, &location);
      v14 = v8;
      v15 = v9;
      [(VSIdentityProviderRequestManager *)self _resetVerificationStateWithCompletionHandler:v13];

      objc_destroyWeak(&v16);
    }
  }

  else
  {
    (v9)[2](v9, v6);
  }

  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

void __81__VSIdentityProviderRequestManager__handleApplicationControllerError_forRequest___block_invoke(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  if (WeakRetained)
  {
    v5 = [a1[4] type];
    switch(v5)
    {
      case 1:
        v7 = [a1[5] _currentRequest];
        v18[0] = MEMORY[0x277D85DD0];
        v18[1] = 3221225472;
        v18[2] = __81__VSIdentityProviderRequestManager__handleApplicationControllerError_forRequest___block_invoke_2;
        v18[3] = &unk_279E1A258;
        v18[4] = a1[5];
        v19 = v3;
        [v7 conditionallyUnwrapObject:v18];

        v8 = [WeakRetained viewModel];
        v13 = MEMORY[0x277D85DD0];
        v14 = 3221225472;
        v15 = __81__VSIdentityProviderRequestManager__handleApplicationControllerError_forRequest___block_invoke_3;
        v16 = &unk_279E19290;
        v17 = v8;
        v9 = v8;
        v10 = VSPrivateAccountValidationErrorWithRecoveryHandler();
        [v9 setError:v10];
        [v9 setValidationState:4];

        goto LABEL_9;
      case 3:
        v6 = [a1[5] _currentRequest];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __81__VSIdentityProviderRequestManager__handleApplicationControllerError_forRequest___block_invoke_4;
        v11[3] = &unk_279E1A258;
        v11[4] = a1[5];
        v12 = v3;
        [v6 conditionallyUnwrapObject:v11];

        break;
      case 4:
        [WeakRetained _handleLogoutRequestDidComplete:a1[4]];
        goto LABEL_9;
    }

    [WeakRetained _completeCurrentRequestWithError:v3];
  }

LABEL_9:
}

void __81__VSIdentityProviderRequestManager__handleApplicationControllerError_forRequest___block_invoke_2(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) identityProvider];
  v4 = [v3 isDeveloper];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 32) identityProvider];
    v6 = [v5 uniqueID];
    v7 = [v6 forceUnwrapObject];

    v8 = [*(a1 + 32) identityProvider];
    v9 = [v8 isFullySupportedForRequestsExpectingAuthenticationSchemes:0];

    v10 = [v11 requestingAppAdamID];
    [MEMORY[0x277CE2288] recordSignInEventWithProviderIdentifier:v7 supportedProvider:v9 channelAdamID:v10 signInType:*MEMORY[0x277CE24A8] error:*(a1 + 40)];
  }
}

uint64_t __81__VSIdentityProviderRequestManager__handleApplicationControllerError_forRequest___block_invoke_3(uint64_t a1)
{
  [*(a1 + 32) setError:0];
  v2 = *(a1 + 32);

  return [v2 setValidationState:0];
}

void __81__VSIdentityProviderRequestManager__handleApplicationControllerError_forRequest___block_invoke_4(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) identityProvider];
  v4 = [v3 isDeveloper];

  if ((v4 & 1) == 0)
  {
    v5 = [*(a1 + 32) identityProvider];
    v6 = [v5 uniqueID];
    v7 = [v6 forceUnwrapObject];

    v8 = [v11 requestingAppAdamID];

    if (!v8)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [identityProviderRequest requestingAppAdamID] parameter must not be nil."];
    }

    v9 = [v11 requestingAppAdamID];
    v10 = [*(a1 + 32) _requestRequiresApplicationController:v11];
    [MEMORY[0x277CE2288] recordMetadataRequestWithProviderIdentifier:v7 channelAdamID:v9 fulfilledByProvider:v10 error:*(a1 + 40)];
  }
}

void __81__VSIdentityProviderRequestManager__handleApplicationControllerError_forRequest___block_invoke_5(id *a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained(a1 + 6);
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __81__VSIdentityProviderRequestManager__handleApplicationControllerError_forRequest___block_invoke_6;
    v8[3] = &unk_279E1A8B8;
    v8[4] = WeakRetained;
    v9 = a1[4];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __81__VSIdentityProviderRequestManager__handleApplicationControllerError_forRequest___block_invoke_7;
    v6[3] = &unk_279E1A8E0;
    v7 = a1[5];
    [v3 unwrapObject:v8 error:v6];
  }
}

void __81__VSIdentityProviderRequestManager__handleApplicationControllerError_forRequest___block_invoke_7(uint64_t a1)
{
  v2 = VSPublicServiceTemporarilyUnavailableError();
  (*(*(a1 + 32) + 16))();
}

- (void)_startDeletingAccount
{
  v23[1] = *MEMORY[0x277D85DE8];
  VSRequireMainThread();
  v3 = [(VSIdentityProviderRequestManager *)self account];
  v4 = [v3 forceUnwrapObject];

  v5 = [(VSIdentityProviderRequestManager *)self storage];
  v6 = [v5 forceUnwrapObject];
  v7 = [v6 accountStore];

  v8 = [v4 authenticationToken];
  v9 = [v8 forceUnwrapObject];

  v10 = [(VSIdentityProviderRequestManager *)self requestFactory];
  v11 = [v10 logoutApplicationControllerRequestWithAuthenticationToken:v9];

  v12 = [(VSIdentityProviderRequestManager *)self identityProvider];
  v13 = [v12 isDeveloper];

  if ((v13 & 1) == 0)
  {
    v14 = [v4 identityProviderID];
    v15 = [v14 forceUnwrapObject];

    [MEMORY[0x277CE2288] recordSignOutEventWithProviderIdentifier:v15];
  }

  objc_initWeak(&location, self);
  v23[0] = v4;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v23 count:1];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __57__VSIdentityProviderRequestManager__startDeletingAccount__block_invoke;
  v19[3] = &unk_279E1A958;
  objc_copyWeak(&v21, &location);
  v17 = v11;
  v20 = v17;
  [v7 removeAccounts:v16 withCompletionHandler:v19];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  v18 = *MEMORY[0x277D85DE8];
}

void __57__VSIdentityProviderRequestManager__startDeletingAccount__block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  objc_copyWeak(&v8, (a1 + 40));
  v9 = a2;
  v6 = *(a1 + 32);
  v7 = v5;
  VSPerformBlockOnMainThread();

  objc_destroyWeak(&v8);
}

void __57__VSIdentityProviderRequestManager__startDeletingAccount__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    if (*(a1 + 56) == 1)
    {
      v3 = objc_alloc_init(MEMORY[0x277CE2298]);
      [WeakRetained setAccount:v3];

      v4 = [WeakRetained storage];
      v5 = [v4 forceUnwrapObject];

      v6 = [v5 channelsCenter];
      [v6 _removeSavedAccountChannelsWithCompletionHandler:0];

      v7 = [v5 privacyFacade];
      [v7 reset];

      [WeakRetained _submitApplicationControllerRequest:*(a1 + 32)];
    }

    else
    {
      v8 = *(a1 + 40);
      if (!v8)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The underlyingErrorOrNil parameter must not be nil."];
        v8 = *(a1 + 40);
      }

      v9 = v8;
      v12 = [WeakRetained viewModel];
      v10 = v12;
      v11 = VSPrivateAccountDeletionErrorWithRecoveryHandler();
      [WeakRetained _completeDeletingAccountWithError:v11];
    }
  }
}

- (void)_completeDeletingAccountWithError:(id)a3
{
  v4 = a3;
  VSRequireMainThread();
  if (v4)
  {
    [(VSIdentityProviderRequestManager *)self _completeCurrentRequestWithError:v4];
  }

  else
  {
    [(VSIdentityProviderRequestManager *)self _completeCurrentRequestWithApplicationControllerResponse:0];
  }
}

- (void)_updateAccountWithAccountAuthentication:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  VSRequireMainThread();
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The accountAuthentication parameter must not be nil."];
  }

  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = __Block_byref_object_copy__6;
  v21 = __Block_byref_object_dispose__6;
  v22 = [(VSIdentityProviderRequestManager *)self account];
  v5 = v18[5];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __76__VSIdentityProviderRequestManager__updateAccountWithAccountAuthentication___block_invoke_2;
  v16[3] = &unk_279E1A7F0;
  v16[4] = self;
  v16[5] = &v17;
  [v5 conditionallyUnwrapObject:&__block_literal_global_62 otherwise:v16];
  v6 = [v18[5] forceUnwrapObject];
  v7 = VSDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v6;
    v25 = 2112;
    v26 = v4;
    _os_log_impl(&dword_270DD4000, v7, OS_LOG_TYPE_DEFAULT, "Will update account %@ with authentication %@.", buf, 0x16u);
  }

  v8 = [(VSIdentityProviderRequestManager *)self identityProvider];
  v9 = [v8 providerID];
  [v6 setIdentityProviderID:v9];

  v10 = [(VSIdentityProviderRequestManager *)self identityProvider];
  v11 = [v10 displayName];
  [v6 setOptionalIdentityProviderDisplayName:v11];

  v12 = [v4 username];
  if ([v12 length])
  {
    [v6 setUsername:v12];
  }

  v13 = [v4 appBundleIdentifier];
  [v6 setPreferredAppID:v13];

  [v6 setSynchronizable:{objc_msgSend(v4, "isSynchronizable")}];
  v14 = [v4 authenticationToken];
  [v6 setAuthenticationToken:v14];

  _Block_object_dispose(&v17, 8);
  v15 = *MEMORY[0x277D85DE8];
}

void __76__VSIdentityProviderRequestManager__updateAccountWithAccountAuthentication___block_invoke_2(uint64_t a1)
{
  v5 = objc_alloc_init(MEMORY[0x277CE21B8]);
  v2 = [MEMORY[0x277CE2298] optionalWithObject:v5];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  [*(a1 + 32) setAccount:*(*(*(a1 + 40) + 8) + 40)];
  [*(a1 + 32) setDidCreateAccount:1];
}

- (void)_completeCachedAccountMetadataRequest
{
  v7 = *MEMORY[0x277D85DE8];
  VSRequireMainThread();
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[VSIdentityProviderRequestManager _completeCachedAccountMetadataRequest]";
    _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", &v5, 0xCu);
  }

  [(VSIdentityProviderRequestManager *)self _completeCurrentRequestWithApplicationControllerResponse:0];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_completeAuthenticationRequestWithApplicationControllerResponse:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  VSRequireMainThread();
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[VSIdentityProviderRequestManager _completeAuthenticationRequestWithApplicationControllerResponse:]";
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  [(VSIdentityProviderRequestManager *)self _requestCompletionDelay];
  if (v6 <= 0.0)
  {
    [(VSIdentityProviderRequestManager *)self _completeCurrentRequestWithApplicationControllerResponse:v4];
  }

  else
  {
    v7 = v6;
    v8 = VSDefaultLogObject();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = [MEMORY[0x277CCABB0] numberWithDouble:v7];
      *buf = 138412290;
      v16 = v9;
      _os_log_impl(&dword_270DD4000, v8, OS_LOG_TYPE_DEFAULT, "Delaying completion of request by %@ seconds", buf, 0xCu);
    }

    objc_initWeak(buf, self);
    v10 = dispatch_time(0, (v7 * 1000000000.0));
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __100__VSIdentityProviderRequestManager__completeAuthenticationRequestWithApplicationControllerResponse___block_invoke;
    v12[3] = &unk_279E19618;
    objc_copyWeak(&v14, buf);
    v13 = v4;
    dispatch_after(v10, MEMORY[0x277D85CD0], v12);

    objc_destroyWeak(&v14);
    objc_destroyWeak(buf);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __100__VSIdentityProviderRequestManager__completeAuthenticationRequestWithApplicationControllerResponse___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _completeCurrentRequestWithApplicationControllerResponse:*(a1 + 32)];
}

- (void)_completeCurrentRequestWithApplicationControllerResponse:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  VSRequireMainThread();
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v16 = "[VSIdentityProviderRequestManager _completeCurrentRequestWithApplicationControllerResponse:]";
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  v6 = objc_alloc_init(MEMORY[0x277CE2328]);
  v7 = [objc_alloc(MEMORY[0x277CE2308]) initWithOperation:v6 timeout:10.0];
  v13 = v6;
  v14 = v4;
  v8 = v4;
  v9 = v6;
  v10 = VSMainThreadOperationWithBlock();
  [v10 addDependency:v7];
  VSEnqueueCompletionOperation();
  v11 = [(VSIdentityProviderRequestManager *)self privateQueue];
  [v11 addOperation:v7];

  v12 = *MEMORY[0x277D85DE8];
}

void __93__VSIdentityProviderRequestManager__completeCurrentRequestWithApplicationControllerResponse___block_invoke(uint64_t a1)
{
  VSRequireMainThread();
  v2 = [*(a1 + 32) result];
  v3 = [v2 object];
  v4 = [v3 object];

  [*(a1 + 40) _completeCurrentRequestWithApplicationControllerResponse:*(a1 + 48) verificationData:v4];
}

- (void)_completeCurrentRequestWithApplicationControllerResponse:(id)a3 verificationData:(id)a4
{
  v44 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v35 = a4;
  VSRequireMainThread();
  v7 = VSDefaultLogObject();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v43 = "[VSIdentityProviderRequestManager _completeCurrentRequestWithApplicationControllerResponse:verificationData:]";
    _os_log_impl(&dword_270DD4000, v7, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  v8 = [(VSIdentityProviderRequestManager *)self _currentRequest];
  v9 = [v8 forceUnwrapObject];

  v10 = objc_alloc_init(VSIdentityProviderResponse);
  v11 = [(VSIdentityProviderRequestManager *)self account];
  v37 = MEMORY[0x277D85DD0];
  v38 = 3221225472;
  v39 = __110__VSIdentityProviderRequestManager__completeCurrentRequestWithApplicationControllerResponse_verificationData___block_invoke;
  v40 = &unk_279E197F8;
  v12 = v10;
  v41 = v12;
  [v11 conditionallyUnwrapObject:&v37];

  v13 = [v9 type];
  if (v13 == 3)
  {
    v14 = [v9 accountMetadataRequest];
    v15 = [v14 forceUnwrapObject];

    v16 = [v6 authenticationScheme];
    v17 = [v6 responseStatusCode];
    v18 = [v6 responseString];
    v19 = [(VSIdentityProviderRequestManager *)self _accountMetadataWithAuthenticationScheme:v16 responseStatusCode:v17 responseString:v18 accountMetadataRequest:v15 verificationData:v35];

    [(VSIdentityProviderResponse *)v12 setAccountMetadata:v19];
  }

  [(VSIdentityProviderResponse *)v12 setDidCreateAccount:[(VSIdentityProviderRequestManager *)self didCreateAccount:v35]];
  v20 = [(VSIdentityProviderRequestManager *)self identityProvider];
  v21 = [v20 uniqueID];
  v22 = [v21 forceUnwrapObject];

  v23 = [(VSIdentityProviderRequestManager *)self identityProvider];
  v24 = [v23 isFullySupportedForRequestsExpectingAuthenticationSchemes:0];

  v25 = [v9 requestingAppAdamID];
  if (-[VSIdentityProviderRequestManager didCreateAccount](self, "didCreateAccount") && (-[VSIdentityProviderRequestManager identityProvider](self, "identityProvider"), v26 = objc_claimAutoreleasedReturnValue(), v27 = [v26 isDeveloper], v26, (v27 & 1) == 0))
  {
    v32 = MEMORY[0x277CE24A8];
    if (v13 != 1)
    {
      v32 = MEMORY[0x277CE24A0];
    }

    [MEMORY[0x277CE2288] recordSignInEventWithProviderIdentifier:v22 supportedProvider:v24 channelAdamID:v25 signInType:*v32 error:0];
  }

  else if ([v9 type] == 3)
  {
    v28 = [(VSIdentityProviderRequestManager *)self identityProvider];
    v29 = [v28 isDeveloper];

    if ((v29 & 1) == 0)
    {
      v30 = [(VSIdentityProviderRequestManager *)self _requestRequiresApplicationController:v9];
      v31 = MEMORY[0x277CE2288];
      if (!v25)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The channelBundleIdentifier parameter must not be nil."];
      }

      [v31 recordMetadataRequestWithProviderIdentifier:v22 channelAdamID:v25 fulfilledByProvider:v30 error:0];
    }
  }

  v33 = [MEMORY[0x277CE2250] failableWithObject:v12];
  [(VSIdentityProviderRequestManager *)self _completeCurrentRequestWithResult:v33];

  v34 = *MEMORY[0x277D85DE8];
}

- (void)_completeCurrentRequestWithError:(id)a3
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = a3;
  VSRequireMainThread();
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[VSIdentityProviderRequestManager _completeCurrentRequestWithError:]";
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", &v8, 0xCu);
  }

  v6 = [MEMORY[0x277CE2250] failableWithError:v4];

  [(VSIdentityProviderRequestManager *)self _completeCurrentRequestWithResult:v6];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_completeCurrentRequestWithResult:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412290;
    v17 = v4;
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Completing request with result: %@", &v16, 0xCu);
  }

  VSRequireMainThread();
  [(VSIdentityProviderRequestManager *)self _stopApplicationController];
  [(VSIdentityProviderRequestManager *)self setDidCreateAccount:0];
  [(VSIdentityProviderRequestManager *)self setViewModel:0];
  v6 = objc_alloc_init(MEMORY[0x277CE2298]);
  [(VSIdentityProviderRequestManager *)self setAccount:v6];

  v7 = objc_alloc_init(MEMORY[0x277CE2298]);
  [(VSIdentityProviderRequestManager *)self setStorage:v7];

  v8 = [(VSIdentityProviderRequestManager *)self _currentRequestContext];
  v9 = [v8 forceUnwrapObject];

  v10 = [(VSIdentityProviderRequestManager *)self requestContexts];
  [v10 removeObject:v9];
  v11 = [(VSIdentityProviderRequestManager *)self delegate];
  v12 = [v9 request];
  [v11 identityProviderRequestManager:self finishedRequest:v12 withResult:v4];

  if ([v10 count])
  {
    v13 = [(VSIdentityProviderRequestManager *)self _currentRequestContext];
    v14 = [v13 forceUnwrapObject];
    [(VSIdentityProviderRequestManager *)self _processRequestContext:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_applicationControllerRequestWithIdentityProviderRequest:(id)a3
{
  v4 = a3;
  VSRequireMainThread();
  v5 = [v4 type];
  if (v5 == 2)
  {
    v14 = [(VSIdentityProviderRequestManager *)self account];
    v15 = [v14 forceUnwrapObject];
    v16 = [v15 authenticationToken];
    v7 = [v16 forceUnwrapObject];

    v11 = [(VSIdentityProviderRequestManager *)self requestFactory];
    v13 = [v11 logoutApplicationControllerRequestWithAuthenticationToken:v7];
  }

  else
  {
    if (v5 != 3)
    {
      v18 = MEMORY[0x277CBEAD8];
      v17 = *MEMORY[0x277CBE660];
      v19 = [MEMORY[0x277CCABB0] numberWithInteger:v5];
      [v18 raise:v17 format:{@"Invalid request tyoe: %@", v19}];

      goto LABEL_8;
    }

    v6 = [v4 accountMetadataRequest];
    v7 = [v6 forceUnwrapObject];

    v8 = [(VSIdentityProviderRequestManager *)self account];
    v9 = [v8 forceUnwrapObject];
    v10 = [v9 authenticationToken];
    v11 = [v10 forceUnwrapObject];

    v12 = [(VSIdentityProviderRequestManager *)self requestFactory];
    v13 = [v12 accountMetadataApplicationControllerRequestWithAccountMetadataRequest:v7 authenticationToken:v11];
  }

  if (v13)
  {
    goto LABEL_9;
  }

  v17 = *MEMORY[0x277CBE660];
LABEL_8:
  [MEMORY[0x277CBEAD8] raise:v17 format:@"The request parameter must not be nil."];
  v13 = 0;
LABEL_9:

  return v13;
}

- (id)_identityProviderAlertWithApplicationControllerAlert:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = objc_alloc_init(VSIdentityProviderAlert);
  v5 = [v3 title];
  [(VSIdentityProviderAlert *)v4 setTitle:v5];

  v6 = [v3 message];
  v19 = v4;
  [(VSIdentityProviderAlert *)v4 setMessage:v6];

  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v8 = [v3 actions];
  v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v21;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v21 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v20 + 1) + 8 * i);
        v14 = objc_alloc_init(VSIdentityProviderAlertAction);
        v15 = [v13 title];
        [(VSIdentityProviderAlertAction *)v14 setTitle:v15];

        -[VSIdentityProviderAlertAction setStyle:](v14, "setStyle:", [v13 style]);
        v16 = [v13 callback];
        [(VSIdentityProviderAlertAction *)v14 setCallback:v16];

        [v7 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v10);
  }

  [(VSIdentityProviderAlert *)v19 setActions:v7];
  v17 = *MEMORY[0x277D85DE8];

  return v19;
}

- (void)_stopApplicationController
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[VSIdentityProviderRequestManager _stopApplicationController]";
    _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", &v8, 0xCu);
  }

  [(VSIdentityProviderRequestManager *)self _stopApplicationControllerTimer];
  v4 = objc_alloc_init(MEMORY[0x277CE2298]);
  [(VSIdentityProviderRequestManager *)self setCurrentApplicationControllerRequest:v4];

  v5 = [(VSIdentityProviderRequestManager *)self applicationController];
  [v5 setDelegate:0];

  v6 = [(VSIdentityProviderRequestManager *)self applicationController];
  [v6 stop];

  [(VSIdentityProviderRequestManager *)self setApplicationController:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_submitApplicationControllerRequest:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The request parameter must not be nil."];
  }

  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "[VSIdentityProviderRequestManager _submitApplicationControllerRequest:]";
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", &v9, 0xCu);
  }

  [(VSIdentityProviderRequestManager *)self _startApplicationControllerTimer];
  v6 = [MEMORY[0x277CE2298] optionalWithObject:v4];
  [(VSIdentityProviderRequestManager *)self setCurrentApplicationControllerRequest:v6];

  v7 = [(VSIdentityProviderRequestManager *)self applicationController];
  [v7 submitRequest:v4];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_showAuthenticationUI
{
  v9 = *MEMORY[0x277D85DE8];
  VSRequireMainThread();
  v3 = VSDefaultLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "[VSIdentityProviderRequestManager _showAuthenticationUI]";
    _os_log_impl(&dword_270DD4000, v3, OS_LOG_TYPE_DEFAULT, "Entering %s", &v7, 0xCu);
  }

  [(VSIdentityProviderRequestManager *)self _startApplicationControllerTimer];
  v4 = [(VSIdentityProviderRequestManager *)self _supportedProviderAuthenticationToken];
  v5 = [(VSIdentityProviderRequestManager *)self applicationController];
  [v5 showAuthenticationUserInterfaceWithAuthenticationToken:v4];

  v6 = *MEMORY[0x277D85DE8];
}

- (void)setViewModel:(id)a3
{
  v7 = a3;
  VSRequireMainThread();
  v5 = self->_viewModel;
  v6 = v5;
  if (v5 != v7)
  {
    if (v5)
    {
      [(VSIdentityProviderRequestManager *)self _stopObservingViewModel:v5];
    }

    objc_storeStrong(&self->_viewModel, a3);
    if (v7)
    {
      [(VSIdentityProviderRequestManager *)self _startObservingViewModel:v7];
    }
  }
}

- (void)_startObservingViewModel:(id)a3
{
  v4 = a3;
  VSRequireMainThread();
  [v4 addObserver:self forKeyPath:@"validationState" options:3 context:kVSKeyValueObservingContext_ViewModelValidationState_0];
}

- (void)_notifyDidAuthenticateAccount:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  VSRequireMainThread();
  v5 = VSDefaultLogObject();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315138;
    v11 = "[VSIdentityProviderRequestManager _notifyDidAuthenticateAccount:]";
    _os_log_impl(&dword_270DD4000, v5, OS_LOG_TYPE_DEFAULT, "Entering %s", &v10, 0xCu);
  }

  v6 = [(VSIdentityProviderRequestManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    v7 = [(VSIdentityProviderRequestManager *)self _currentRequest];
    v8 = [v7 forceUnwrapObject];
    [v6 identityProviderRequestManager:self didAuthenticateAccount:v4 forRequest:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)_requestRequiresApplicationControllerIgnoringAuthentication:(id)a3
{
  v4 = a3;
  if ([v4 type] == 3)
  {
    v5 = [v4 accountMetadataRequest];
    v6 = [v5 forceUnwrapObject];

    v7 = [(VSIdentityProviderRequestManager *)self _supportedProviderAuthenticationToken];
    if (v7)
    {
      v8 = [v6 attributeNames];
      v9 = [v8 count] != 0;
    }

    else
    {
      v9 = [v6 isInterruptionAllowed];
    }
  }

  else
  {
    v9 = 1;
  }

  return v9;
}

- (BOOL)_requestRequiresApplicationController:(id)a3
{
  v4 = a3;
  LOBYTE(self) = [(VSIdentityProviderRequestManager *)self _requestRequiresApplicationControllerIgnoringAuthentication:v4];
  v5 = [v4 forceAuthentication];

  return (v5 | self) & 1;
}

- (double)_requestCompletionDelay
{
  VSRequireMainThread();
  v3 = [(VSIdentityProviderRequestManager *)self viewModel];

  if (!v3)
  {
    return 0.0;
  }

  [(VSIdentityProviderRequestManager *)self requestCompletionDelayAfterShowingUserInterface];
  return result;
}

- (BOOL)_canShowAuthenticationUI
{
  v3 = [(VSIdentityProviderRequestManager *)self _currentRequest];
  v4 = [v3 forceUnwrapObject];
  if ([v4 allowsUI])
  {
    v5 = [(VSIdentityProviderRequestManager *)self viewModel];
    v6 = v5 == 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_accountMetadataWithAuthenticationScheme:(id)a3 responseStatusCode:(id)a4 responseString:(id)a5 accountMetadataRequest:(id)a6 verificationData:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  VSRequireMainThread();
  if (!v15)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The accountMetadataRequest parameter must not be nil."];
  }

  v17 = objc_alloc_init(MEMORY[0x277CE21D8]);
  [v17 setVerificationData:v16];
  if ([v15 includeAccountProviderIdentifier])
  {
    v18 = [(VSIdentityProviderRequestManager *)self identityProvider];
    v19 = [v18 providerID];
    v20 = [v19 forceUnwrapObject];
    [v17 setAccountProviderIdentifier:v20];
  }

  if ([v15 includeAuthenticationExpirationDate])
  {
    v26 = 0;
    v27 = &v26;
    v28 = 0x3032000000;
    v29 = __Block_byref_object_copy__6;
    v30 = __Block_byref_object_dispose__6;
    v31 = 0;
    v21 = [(VSIdentityProviderRequestManager *)self account];
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __151__VSIdentityProviderRequestManager__accountMetadataWithAuthenticationScheme_responseStatusCode_responseString_accountMetadataRequest_verificationData___block_invoke;
    v25[3] = &unk_279E1A9A0;
    v25[4] = &v26;
    [v21 conditionallyUnwrapObject:v25];

    v22 = [v27[5] expirationDate];
    [v17 setAuthenticationExpirationDate:v22];

    _Block_object_dispose(&v26, 8);
  }

  if (v14)
  {
    v23 = objc_alloc_init(MEMORY[0x277CE21E0]);
    [v23 setAuthenticationScheme:v12];
    [v23 setStatus:v13];
    [v23 setBody:v14];
    [v17 setAccountProviderResponse:v23];
  }

  return v17;
}

void __151__VSIdentityProviderRequestManager__accountMetadataWithAuthenticationScheme_responseStatusCode_responseString_accountMetadataRequest_verificationData___block_invoke(uint64_t a1, void *a2)
{
  v6 = [a2 authenticationToken];
  v3 = [v6 forceUnwrapObject];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

- (void)_resetVerificationStateWithCompletionHandler:(id)a3
{
  v4 = a3;
  VSRequireMainThread();
  v5 = objc_alloc_init(MEMORY[0x277CE2330]);
  v6 = [(VSIdentityProviderRequestManager *)self auditToken];
  [v5 setAuditToken:v6];

  v7 = [(VSIdentityProviderRequestManager *)self delegate];
  if ([v7 conformsToProtocol:&unk_28812B2C0])
  {
    v8 = v7;
    if (objc_opt_respondsToSelector())
    {
      v9 = [v8 verificationStateResetOperationForIdentityProviderRequestManager:self];

      v5 = v9;
    }
  }

  v14 = MEMORY[0x277D85DD0];
  v15 = v5;
  v16 = v4;
  v10 = v5;
  v11 = v4;
  v12 = VSMainThreadOperationWithBlock();
  [v12 addDependency:{v10, v14, 3221225472, __81__VSIdentityProviderRequestManager__resetVerificationStateWithCompletionHandler___block_invoke, &unk_279E1A000}];
  VSEnqueueCompletionOperation();
  v13 = [(VSIdentityProviderRequestManager *)self privateQueue];
  [v13 addOperation:v10];
}

void __81__VSIdentityProviderRequestManager__resetVerificationStateWithCompletionHandler___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v3 = [*(a1 + 32) result];
    v2 = [v3 forceUnwrapObject];
    (*(v1 + 16))(v1, v2);
  }
}

- (id)_accountChannelsWithChannelIDs:(id)a3
{
  v4 = a3;
  VSRequireMainThread();
  v5 = objc_alloc_init(MEMORY[0x277CE21C0]);
  v6 = [(VSIdentityProviderRequestManager *)self identityProvider];
  v7 = [v6 providerID];
  v8 = [v7 forceUnwrapObject];
  [v5 setProviderID:v8];

  [v5 setChannelIDs:v4];

  return v5;
}

- (void)_enqueueSubscriptionOperationIfRequiredForResponse:(id)a3 asDependencyOf:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 subscriptionsToAdd];
  if ([v8 count])
  {

LABEL_4:
    v11 = VSDefaultLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 subscriptionsToRemoveByBundleID];
      v13 = [v12 count];
      v14 = [v6 subscriptionsToAdd];
      v21 = 134218240;
      v22 = v13;
      v23 = 2048;
      v24 = [v14 count];
      _os_log_impl(&dword_270DD4000, v11, OS_LOG_TYPE_DEFAULT, "Will enqueue identity provider subscription operation for %lu subscription removals and %lu subscription registrations.", &v21, 0x16u);
    }

    v15 = objc_alloc_init(VSIdentityProviderSubscriptionOperation);
    v16 = [(VSIdentityProviderRequestManager *)self identityProvider];
    [(VSIdentityProviderSubscriptionOperation *)v15 setIdentityProvider:v16];

    v17 = [v6 subscriptionsToRemoveByBundleID];
    [(VSIdentityProviderSubscriptionOperation *)v15 setSubscriptionsToRemoveByBundleID:v17];

    v18 = [v6 subscriptionsToAdd];
    [(VSIdentityProviderSubscriptionOperation *)v15 setSubscriptionsToAdd:v18];

    v19 = [(VSIdentityProviderRequestManager *)self privateQueue];
    [v19 addOperation:v15];

    [v7 addDependency:v15];
    goto LABEL_7;
  }

  v9 = [v6 subscriptionsToRemoveByBundleID];
  v10 = [v9 count];

  if (v10)
  {
    goto LABEL_4;
  }

  v15 = VSDefaultLogObject();
  if (os_log_type_enabled(&v15->super.super.super, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v21) = 0;
    _os_log_impl(&dword_270DD4000, &v15->super.super.super, OS_LOG_TYPE_DEFAULT, "No subscription changes, skipping subscription operation.", &v21, 2u);
  }

LABEL_7:

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_enqueueUserAccountUpdateOperationIfRequiredForResponse:(id)a3 asDependencyOf:(id)a4
{
  v62 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v46 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEA60]);
  v8 = [v6 applicationUserAccounts];
  v9 = [v8 count];

  v47 = v6;
  if (v9)
  {
    v48 = v7;
    v10 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v11 = [(VSIdentityProviderRequestManager *)self identityProvider];
    v12 = [v11 nonChannelAppDescriptions];

    v13 = [v12 countByEnumeratingWithState:&v54 objects:v61 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v55;
      v16 = *MEMORY[0x277CBE660];
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v55 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v54 + 1) + 8 * i);
          v19 = [v18 bundleID];

          if (!v19)
          {
            [MEMORY[0x277CBEAD8] raise:v16 format:@"The [appDescription bundleID] parameter must not be nil."];
          }

          v20 = [v18 bundleID];
          [v10 addObject:v20];
        }

        v14 = [v12 countByEnumeratingWithState:&v54 objects:v61 count:16];
      }

      while (v14);
    }

    v21 = MEMORY[0x277CE2208];
    v6 = v47;
    v22 = [v47 applicationUserAccounts];

    if (!v22)
    {
      [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The [response applicationUserAccounts] parameter must not be nil."];
    }

    v23 = [v47 applicationUserAccounts];
    v24 = [(VSIdentityProviderRequestManager *)self identityProvider];
    v25 = [v24 providerID];
    v26 = [v25 forceUnwrapObject];
    v7 = [v21 userAccountsFromApplicationUserAccounts:v23 ForProviderID:v26 allowedBundleIDs:v10];
  }

  v27 = [v7 count];
  v28 = VSDefaultLogObject();
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v27)
  {
    if (v29)
    {
      v30 = [v7 count];
      *buf = 134217984;
      v60 = v30;
      _os_log_impl(&dword_270DD4000, v28, OS_LOG_TYPE_DEFAULT, "Will enqueue identity provider user accounts update operation for %lu user accounts", buf, 0xCu);
    }

    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    v49 = v7;
    v31 = v7;
    v32 = [v31 countByEnumeratingWithState:&v50 objects:v58 count:16];
    if (v32)
    {
      v33 = v32;
      v34 = *v51;
      v35 = *MEMORY[0x277CE2490];
      do
      {
        for (j = 0; j != v33; ++j)
        {
          if (*v51 != v34)
          {
            objc_enumerationMutation(v31);
          }

          v37 = *(*(&v50 + 1) + 8 * j);
          v38 = [(VSIdentityProviderRequestManager *)self identityProvider];
          v39 = [v38 providerID];
          v40 = [v39 forceUnwrapObject];
          [v37 setModifierIdentifier:v40];

          [v37 setModifierType:v35];
        }

        v33 = [v31 countByEnumeratingWithState:&v50 objects:v58 count:16];
      }

      while (v33);
    }

    v41 = objc_alloc(MEMORY[0x277CE2280]);
    v42 = [(VSIdentityProviderRequestManager *)self identityProvider];
    v28 = [v41 initWithIdentityProvider:v42 userAccounts:v31];

    v43 = [(VSIdentityProviderRequestManager *)self privateQueue];
    [v43 addOperation:v28];

    v44 = v46;
    [v46 addDependency:v28];
    v6 = v47;
    v7 = v49;
  }

  else
  {
    if (v29)
    {
      *buf = 0;
      _os_log_impl(&dword_270DD4000, v28, OS_LOG_TYPE_DEFAULT, "No user account changes, skipping user account update operation.", buf, 2u);
    }

    v44 = v46;
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (id)_supportedProviderAuthenticationToken
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__6;
  v10 = __Block_byref_object_dispose__6;
  v11 = 0;
  v2 = [(VSIdentityProviderRequestManager *)self account];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __73__VSIdentityProviderRequestManager__supportedProviderAuthenticationToken__block_invoke;
  v5[3] = &unk_279E1A9A0;
  v5[4] = &v6;
  [v2 conditionallyUnwrapObject:v5];

  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void __73__VSIdentityProviderRequestManager__supportedProviderAuthenticationToken__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 authenticationToken];
  obj = [v3 forceUnwrapObject];

  if (([obj isFromUnsupportedProvider] & 1) == 0)
  {
    objc_storeStrong((*(*(a1 + 32) + 8) + 40), obj);
  }
}

- (void)applicationControllerDidStart:(id)a3
{
  v29 = *MEMORY[0x277D85DE8];
  VSRequireMainThread();
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v27 = 136315138;
    v28 = "[VSIdentityProviderRequestManager applicationControllerDidStart:]";
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "Entering %s", &v27, 0xCu);
  }

  v5 = [(VSIdentityProviderRequestManager *)self _currentRequest];
  v6 = [v5 forceUnwrapObject];

  [(VSIdentityProviderRequestManager *)self _stopApplicationControllerTimer];
  v7 = [(VSIdentityProviderRequestManager *)self _supportedProviderAuthenticationToken];
  v8 = [v6 requiresUI];
  v9 = [v6 forceAuthentication];
  if (v8)
  {
    v10 = VSDefaultLogObject();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
LABEL_7:

      v12 = VSDefaultLogObject();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_270DD4000, v12, OS_LOG_TYPE_DEFAULT, "Will show UI", &v27, 2u);
      }

      [(VSIdentityProviderRequestManager *)self _showAuthenticationUI];
      goto LABEL_42;
    }

    LOWORD(v27) = 0;
    v11 = "Request requires UI.";
LABEL_6:
    _os_log_impl(&dword_270DD4000, v10, OS_LOG_TYPE_DEFAULT, v11, &v27, 2u);
    goto LABEL_7;
  }

  v13 = v9;
  if ([v6 type] == 2)
  {
    v14 = VSDefaultLogObject();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_270DD4000, v14, OS_LOG_TYPE_DEFAULT, "Request type is delete account.", &v27, 2u);
    }

    [(VSIdentityProviderRequestManager *)self _startDeletingAccount];
    goto LABEL_39;
  }

  if (v13 & 1 | (([v7 isValid] & 1) == 0))
  {
    if (v7)
    {
      v15 = VSDefaultLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_270DD4000, v15, OS_LOG_TYPE_DEFAULT, "We have a cached authentication token.", &v27, 2u);
      }

      v16 = [(VSIdentityProviderRequestManager *)self requestFactory];
      v17 = [v16 silentAuthenticationApplicationControllerRequestWithAuthenticationToken:v7 forcedAuthentication:v13];
    }

    else
    {
      if ([(VSIdentityProviderRequestManager *)self _canShowAuthenticationUI])
      {
        v10 = VSDefaultLogObject();
        if (!os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_7;
        }

        LOWORD(v27) = 0;
        v11 = "Can show authentication UI.";
        goto LABEL_6;
      }

      if ([v6 type] == 4)
      {
        v22 = VSDefaultLogObject();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
        {
          LOWORD(v27) = 0;
          _os_log_impl(&dword_270DD4000, v22, OS_LOG_TYPE_DEFAULT, "Request type is silent make account.", &v27, 2u);
        }

        v16 = [(VSIdentityProviderRequestManager *)self requestFactory];
        v17 = [v16 silentAuthenticationApplicationControllerRequest];
      }

      else
      {
        if ([v6 type] != 5)
        {
          v23 = VSErrorLogObject();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            [VSIdentityProviderRequestManager applicationControllerDidStart:];
          }

          v24 = VSPublicError();
          [(VSIdentityProviderRequestManager *)self _completeCurrentRequestWithError:v24];

          goto LABEL_39;
        }

        v16 = [(VSIdentityProviderRequestManager *)self requestFactory];
        v17 = [v16 STBOptOutApplicationControllerRequest];
      }
    }

    v18 = v17;

    if (!v18)
    {
LABEL_39:
      v25 = VSDefaultLogObject();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&dword_270DD4000, v25, OS_LOG_TYPE_DEFAULT, "Nothing for application to do.", &v27, 2u);
      }

      goto LABEL_42;
    }
  }

  else
  {
    v19 = VSDefaultLogObject();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      _os_log_impl(&dword_270DD4000, v19, OS_LOG_TYPE_DEFAULT, "Authentication token is valid, but we should not force authentication.", &v27, 2u);
    }

    v18 = [(VSIdentityProviderRequestManager *)self _applicationControllerRequestWithIdentityProviderRequest:v6];
    if (!v18)
    {
      goto LABEL_39;
    }
  }

  v20 = v18;
  v21 = VSDefaultLogObject();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v27) = 0;
    _os_log_impl(&dword_270DD4000, v21, OS_LOG_TYPE_DEFAULT, "We have an application controller request.", &v27, 2u);
  }

  [(VSIdentityProviderRequestManager *)self _submitApplicationControllerRequest:v20];
LABEL_42:

  v26 = *MEMORY[0x277D85DE8];
}

- (void)applicationController:(id)a3 startDidFailWithError:(id)a4
{
  v20 = a4;
  VSRequireMainThread();
  v5 = [(VSIdentityProviderRequestManager *)self identityProvider];
  v6 = [v5 isDeveloper];

  if ((v6 & 1) == 0)
  {
    v7 = [(VSIdentityProviderRequestManager *)self _currentRequest];
    v8 = [v7 forceUnwrapObject];
    v9 = [v8 type];

    v10 = [(VSIdentityProviderRequestManager *)self _currentRequest];
    v11 = [v10 forceUnwrapObject];
    v12 = [v11 requestingAppAdamID];

    v13 = [(VSIdentityProviderRequestManager *)self identityProvider];
    v14 = [v13 uniqueID];
    v15 = [v14 forceUnwrapObject];

    if (v9 <= 3)
    {
      if (v9 != 1)
      {
        if (v9 == 3)
        {
          v16 = MEMORY[0x277CE2288];
          if (!v12)
          {
            [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The appAdamIDOrNil parameter must not be nil."];
          }

          [v16 recordMetadataRequestWithProviderIdentifier:v15 channelAdamID:v12 fulfilledByProvider:1 error:v20];
        }

        goto LABEL_14;
      }

LABEL_10:
      v17 = [(VSIdentityProviderRequestManager *)self identityProvider];
      v18 = [v17 isFullySupportedForRequestsExpectingAuthenticationSchemes:0];

      v19 = MEMORY[0x277CE24A8];
      if (v9 != 1)
      {
        v19 = MEMORY[0x277CE24A0];
      }

      [MEMORY[0x277CE2288] recordSignInEventWithProviderIdentifier:v15 supportedProvider:v18 channelAdamID:v12 signInType:*v19 error:v20];
      goto LABEL_14;
    }

    if (v9 == 5)
    {
      [MEMORY[0x277CE2288] recordSTBOptOutEventWithError:v20];
    }

    else if (v9 == 4)
    {
      goto LABEL_10;
    }

LABEL_14:
  }

  [(VSIdentityProviderRequestManager *)self _completeCurrentRequestWithError:v20];
}

- (void)applicationController:(id)a3 didReceiveViewModelError:(id)a4
{
  v5 = a4;
  VSRequireMainThread();
  [(VSIdentityProviderRequestManager *)self _completeCurrentRequestWithError:v5];
}

- (void)applicationController:(id)a3 didReceiveViewModel:(id)a4
{
  v8 = a4;
  VSRequireMainThread();
  [(VSIdentityProviderRequestManager *)self _stopApplicationControllerTimer];
  v5 = [(VSIdentityProviderRequestManager *)self identityProvider];
  [v8 setIdentityProvider:v5];

  v6 = [(VSIdentityProviderRequestManager *)self _currentRequest];
  v7 = [v6 forceUnwrapObject];
  [v8 configureWithRequest:v7];

  [(VSIdentityProviderRequestManager *)self setViewModel:v8];
}

- (void)applicationController:(id)a3 didUpdateLogoViewModel:(id)a4
{
  v6 = a4;
  v5 = [(VSIdentityProviderRequestManager *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 identityProviderRequestManager:self didUpdateLogoViewModel:v6];
  }
}

- (void)applicationController:(id)a3 request:(id)a4 didFailWithError:(id)a5
{
  v7 = a4;
  v8 = a5;
  VSRequireMainThread();
  if (!v7)
  {
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The request parameter must not be nil."];
  }

  v9 = [(VSIdentityProviderRequestManager *)self currentApplicationControllerRequest];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __83__VSIdentityProviderRequestManager_applicationController_request_didFailWithError___block_invoke;
  v15[3] = &unk_279E1A9C8;
  v16 = v7;
  v17 = self;
  v18 = v8;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __83__VSIdentityProviderRequestManager_applicationController_request_didFailWithError___block_invoke_166;
  v12[3] = &unk_279E19848;
  v13 = v16;
  v14 = v18;
  v10 = v18;
  v11 = v16;
  [v9 conditionallyUnwrapObject:v15 otherwise:v12];
}

void __83__VSIdentityProviderRequestManager_applicationController_request_didFailWithError___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 32);
  if (*(a1 + 32) == a2)
  {
    [*(a1 + 40) _stopApplicationControllerTimer];
    v5 = *(a1 + 40);
    v6 = objc_alloc_init(MEMORY[0x277CE2298]);
    [v5 setCurrentApplicationControllerRequest:v6];

    v7 = *(a1 + 40);
    v8 = *(a1 + 48);
    v9 = *(a1 + 32);

    [v7 _handleApplicationControllerError:v8 forRequest:v9];
  }

  else
  {
    v4 = VSErrorLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __83__VSIdentityProviderRequestManager_applicationController_request_didFailWithError___block_invoke_cold_1(v3, a1);
    }
  }
}

void __83__VSIdentityProviderRequestManager_applicationController_request_didFailWithError___block_invoke_166(uint64_t a1)
{
  v2 = VSErrorLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __83__VSIdentityProviderRequestManager_applicationController_request_didFailWithError___block_invoke_166_cold_1(a1);
  }
}

- (void)applicationController:(id)a3 request:(id)a4 didCompleteWithResponse:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  VSRequireMainThread();
  if (a3)
  {
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_10:
    [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The request parameter must not be nil."];
    if (v9)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The applicationController parameter must not be nil."];
  if (!v8)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v9)
  {
    goto LABEL_4;
  }

LABEL_11:
  [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The response parameter must not be nil."];
LABEL_4:
  v10 = VSDefaultLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v24 = "[VSIdentityProviderRequestManager applicationController:request:didCompleteWithResponse:]";
    _os_log_impl(&dword_270DD4000, v10, OS_LOG_TYPE_DEFAULT, "Entering %s", buf, 0xCu);
  }

  v11 = VSDefaultLogObject();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v24 = v9;
    _os_log_impl(&dword_270DD4000, v11, OS_LOG_TYPE_DEFAULT, "Handling application controller response %@", buf, 0xCu);
  }

  v12 = [(VSIdentityProviderRequestManager *)self currentApplicationControllerRequest];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __90__VSIdentityProviderRequestManager_applicationController_request_didCompleteWithResponse___block_invoke;
  v19[3] = &unk_279E1A9C8;
  v20 = v8;
  v21 = self;
  v22 = v9;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __90__VSIdentityProviderRequestManager_applicationController_request_didCompleteWithResponse___block_invoke_187;
  v16[3] = &unk_279E19848;
  v17 = v20;
  v18 = v22;
  v13 = v22;
  v14 = v20;
  [v12 conditionallyUnwrapObject:v19 otherwise:v16];

  v15 = *MEMORY[0x277D85DE8];
}

void __90__VSIdentityProviderRequestManager_applicationController_request_didCompleteWithResponse___block_invoke(id *a1, void *a2)
{
  v51[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1[4] == v3)
  {
    [a1[5] _stopApplicationControllerTimer];
    v5 = a1[5];
    v6 = objc_alloc_init(MEMORY[0x277CE2298]);
    [v5 setCurrentApplicationControllerRequest:v6];

    v4 = [a1[6] accountChannelIDs];
    v38 = [a1[6] accountAuthentication];
    if ([a1[4] type] == 4 || (objc_msgSend(v38, "authenticationToken"), v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "object"), v8 = objc_claimAutoreleasedReturnValue(), v8, v7, !v8))
    {
      if (v4)
      {
        v18 = v4;
        v19 = [a1[5] _accountChannelsWithChannelIDs:v18];
        v20 = objc_alloc(MEMORY[0x277CE21D0]);
        v21 = [a1[5] storage];
        v22 = [v21 forceUnwrapObject];
        v23 = [v22 channelsCenter];
        v24 = [v20 initWithUnsavedAccountChannels:v19 accountChannelsCenter:v23];

        objc_initWeak(&location, a1[5]);
        v40[1] = MEMORY[0x277D85DD0];
        v40[2] = 3221225472;
        v40[3] = __90__VSIdentityProviderRequestManager_applicationController_request_didCompleteWithResponse___block_invoke_185;
        v40[4] = &unk_279E196C0;
        objc_copyWeak(v43, &location);
        v41 = a1[4];
        v42 = a1[6];
        v25 = VSMainThreadOperationWithBlock();
        [v25 addDependency:v24];
        [a1[5] _enqueueSubscriptionOperationIfRequiredForResponse:a1[6] asDependencyOf:v25];
        VSEnqueueCompletionOperation();
        v26 = [a1[5] privateQueue];
        [v26 addOperation:v24];

        objc_destroyWeak(v43);
        objc_destroyWeak(&location);
      }

      else
      {
        objc_initWeak(&location, a1[5]);
        objc_copyWeak(v40, &location);
        v37 = *(a1 + 2);
        v27 = v37.i64[0];
        v39 = a1[6];
        v28 = VSMainThreadOperationWithBlock();
        [a1[5] _enqueueSubscriptionOperationIfRequiredForResponse:a1[6] asDependencyOf:v28];
        VSEnqueueCompletionOperation();

        objc_destroyWeak(v40);
        objc_destroyWeak(&location);
      }
    }

    else
    {
      if (!v38)
      {
        [MEMORY[0x277CBEAD8] raise:*MEMORY[0x277CBE660] format:@"The accountAuthenticationOrNil parameter must not be nil."];
      }

      v34 = v38;
      [a1[5] _updateAccountWithAccountAuthentication:?];
      v35 = [a1[5] _accountChannelsWithChannelIDs:v4];
      v36 = [a1[5] privateQueue];
      v9 = objc_alloc(MEMORY[0x277CE21E8]);
      v10 = [a1[5] account];
      v11 = [v10 forceUnwrapObject];
      v51[0] = v11;
      v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v51 count:1];
      v13 = [a1[5] storage];
      v14 = [v13 forceUnwrapObject];
      v15 = [v9 initWithUnsavedAccounts:v12 channels:v35 storage:v14];

      [v36 addOperation:v15];
      v16 = [a1[5] identityProvider];
      if (([v16 isDeveloper] & 1) != 0 || !objc_msgSend(a1[5], "canIssuePrivacyVouchers"))
      {
        v17 = 0;
      }

      else
      {
        v17 = [[VSAppsOperation alloc] initWithIdentityProvider:v16];
        [(VSAppsOperation *)v17 addDependency:v15];
        [v36 addOperation:v17];
      }

      objc_initWeak(&location, a1[5]);
      v43[1] = MEMORY[0x277D85DD0];
      v43[2] = 3221225472;
      v43[3] = __90__VSIdentityProviderRequestManager_applicationController_request_didCompleteWithResponse___block_invoke_2;
      v43[4] = &unk_279E1AA18;
      objc_copyWeak(&v49, &location);
      v29 = v15;
      v30 = a1[5];
      v44 = v29;
      v45 = v30;
      v31 = v17;
      v46 = v31;
      v47 = a1[4];
      v48 = a1[6];
      v32 = VSMainThreadOperationWithBlock();
      [v32 addDependency:v29];
      if (v31)
      {
        [v32 addDependency:v31];
      }

      [a1[5] _enqueueUserAccountUpdateOperationIfRequiredForResponse:a1[6] asDependencyOf:v32];
      [a1[5] _enqueueSubscriptionOperationIfRequiredForResponse:a1[6] asDependencyOf:v32];
      VSEnqueueCompletionOperation();

      objc_destroyWeak(&v49);
      objc_destroyWeak(&location);
    }
  }

  else
  {
    v4 = VSErrorLogObject();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __90__VSIdentityProviderRequestManager_applicationController_request_didCompleteWithResponse___block_invoke_cold_1(a1 + 4, a1);
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __90__VSIdentityProviderRequestManager_applicationController_request_didCompleteWithResponse___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  VSRequireMainThread();
  v2 = VSDefaultLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[VSIdentityProviderRequestManager applicationController:request:didCompleteWithResponse:]_block_invoke_2";
    _os_log_impl(&dword_270DD4000, v2, OS_LOG_TYPE_DEFAULT, "%s: save account and fetch app opertions completed", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 72));
  if (WeakRetained)
  {
    v4 = [*(a1 + 32) result];
    v5 = [v4 forceUnwrapObject];

    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __90__VSIdentityProviderRequestManager_applicationController_request_didCompleteWithResponse___block_invoke_178;
    v9[3] = &unk_279E1A9F0;
    v6 = *(a1 + 48);
    v9[4] = *(a1 + 40);
    v9[5] = WeakRetained;
    v10 = v6;
    v11 = *(a1 + 56);
    v12 = *(a1 + 64);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __90__VSIdentityProviderRequestManager_applicationController_request_didCompleteWithResponse___block_invoke_180;
    v8[3] = &unk_279E19730;
    v8[4] = WeakRetained;
    [v5 unwrapObject:v9 error:v8];
  }

  v7 = *MEMORY[0x277D85DE8];
}

void __90__VSIdentityProviderRequestManager_applicationController_request_didCompleteWithResponse___block_invoke_178(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) canIssuePrivacyVouchers])
  {
    v4 = [*(a1 + 40) storage];
    v5 = [v4 forceUnwrapObject];
    v6 = [v5 voucherLockbox];

    v7 = [*(a1 + 32) identityProvider];
    v8 = [v7 providerID];
    v9 = [v8 forceUnwrapObject];

    v10 = [*(a1 + 48) result];
    [v6 issueVouchersForApps:v10 providerID:v9];
  }

  v11 = [*(a1 + 40) viewModel];
  v12 = [v11 validationState];

  if (v12 == 2)
  {
    v13 = [*(a1 + 40) viewModel];
    [v13 setValidationState:3];
  }

  v14 = *(a1 + 40);
  v15 = MEMORY[0x277CE2298];
  v16 = [v3 objectAtIndex:0];
  v17 = [v15 optionalWithObject:v16];
  [v14 setAccount:v17];

  v18 = VSDefaultLogObject();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(a1 + 56);
    v20 = *(a1 + 64);
    v22 = 136315650;
    v23 = "[VSIdentityProviderRequestManager applicationController:request:didCompleteWithResponse:]_block_invoke";
    v24 = 2112;
    v25 = v19;
    v26 = 2112;
    v27 = v20;
    _os_log_impl(&dword_270DD4000, v18, OS_LOG_TYPE_DEFAULT, "%s: request %@, response %@", &v22, 0x20u);
  }

  [*(a1 + 40) _handleApplicationControllerRequest:*(a1 + 56) didCompleteWithResponse:*(a1 + 64)];
  v21 = *MEMORY[0x277D85DE8];
}

void __90__VSIdentityProviderRequestManager_applicationController_request_didCompleteWithResponse___block_invoke_180(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = VSDefaultLogObject();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[VSIdentityProviderRequestManager applicationController:request:didCompleteWithResponse:]_block_invoke";
    v9 = 2112;
    v10 = v3;
    _os_log_impl(&dword_270DD4000, v4, OS_LOG_TYPE_DEFAULT, "%s: error saving account %@", &v7, 0x16u);
  }

  v5 = VSPublicError();

  [*(a1 + 32) _completeCurrentRequestWithError:v5];
  v6 = *MEMORY[0x277D85DE8];
}

void __90__VSIdentityProviderRequestManager_applicationController_request_didCompleteWithResponse___block_invoke_185(uint64_t a1)
{
  VSRequireMainThread();
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _handleApplicationControllerRequest:*(a1 + 32) didCompleteWithResponse:*(a1 + 40)];
    WeakRetained = v3;
  }
}

void __90__VSIdentityProviderRequestManager_applicationController_request_didCompleteWithResponse___block_invoke_2_186(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [*(a1 + 32) _handleApplicationControllerRequest:*(a1 + 40) didCompleteWithResponse:*(a1 + 48)];
    WeakRetained = v3;
  }
}

void __90__VSIdentityProviderRequestManager_applicationController_request_didCompleteWithResponse___block_invoke_187(uint64_t a1)
{
  v2 = VSErrorLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    __90__VSIdentityProviderRequestManager_applicationController_request_didCompleteWithResponse___block_invoke_187_cold_1(a1);
  }
}

- (BOOL)applicationController:(id)a3 requestsAlert:(id)a4
{
  v4 = self;
  v5 = [(VSIdentityProviderRequestManager *)self _identityProviderAlertWithApplicationControllerAlert:a4];
  v6 = [(VSIdentityProviderRequestManager *)v4 delegate];
  LOBYTE(v4) = [v6 identityProviderRequestManager:v4 requestsAlert:v5];

  return v4;
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  if (kVSKeyValueObservingContext_ViewModelValidationState_0 == a6)
  {
    v7 = [a5 objectForKey:{*MEMORY[0x277CCA2F0], a4}];
    v8 = [v7 unsignedIntegerValue];

    if (v8 == 2)
    {
      v15 = VSDefaultLogObject();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_270DD4000, v15, OS_LOG_TYPE_DEFAULT, "Validation state changed to validating.", buf, 2u);
      }

      v16 = [(VSIdentityProviderRequestManager *)self _currentRequest];
      v17 = [v16 forceUnwrapObject];

      v18 = [v17 forceAuthentication];
      v19 = [(VSIdentityProviderRequestManager *)self _supportedProviderAuthenticationToken];
      v20 = [(VSIdentityProviderRequestManager *)self requestFactory];
      v21 = [v20 authenticationApplicationControllerRequestWithAuthenticationToken:v19 forcedAuthentication:v18];

      [(VSIdentityProviderRequestManager *)self _submitApplicationControllerRequest:v21];
    }

    else if (v8 == 1)
    {
      v9 = [(VSIdentityProviderRequestManager *)self viewModel];
      v10 = [v9 shouldPreValidate];

      v11 = VSDefaultLogObject();
      v12 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      if (v10)
      {
        if (v12)
        {
          *buf = 0;
          _os_log_impl(&dword_270DD4000, v11, OS_LOG_TYPE_DEFAULT, "View Model requires pre-validation, will invoke application callback.", buf, 2u);
        }

        v13 = [(VSIdentityProviderRequestManager *)self _supportedProviderAuthenticationToken];
        v14 = [(VSIdentityProviderRequestManager *)self applicationController];
        [v14 applicationStartSelfValidationWithAuthenticationToken:v13];
      }

      else
      {
        if (v12)
        {
          *buf = 0;
          _os_log_impl(&dword_270DD4000, v11, OS_LOG_TYPE_DEFAULT, "View Model does not require pre-validation, validate.", buf, 2u);
        }

        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __83__VSIdentityProviderRequestManager_observeValueForKeyPath_ofObject_change_context___block_invoke;
        block[3] = &unk_279E19290;
        block[4] = self;
        dispatch_async(MEMORY[0x277D85CD0], block);
      }
    }
  }

  else
  {
    v22.receiver = self;
    v22.super_class = VSIdentityProviderRequestManager;
    [(VSIdentityProviderRequestManager *)&v22 observeValueForKeyPath:a3 ofObject:a4 change:a5 context:?];
  }
}

void __83__VSIdentityProviderRequestManager_observeValueForKeyPath_ofObject_change_context___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) viewModel];
  [v1 setValidationState:2];
}

- (VSIdentityProviderRequestManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_processRequestContext:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __59__VSIdentityProviderRequestManager__processRequestContext___block_invoke_3_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __83__VSIdentityProviderRequestManager_applicationController_request_didFailWithError___block_invoke_cold_1(uint64_t *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a2 + 48);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_270DD4000, v4, v5, "Non-current request (%@) failed with error: %@");
  v6 = *MEMORY[0x277D85DE8];
}

void __83__VSIdentityProviderRequestManager_applicationController_request_didFailWithError___block_invoke_166_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

void __90__VSIdentityProviderRequestManager_applicationController_request_didCompleteWithResponse___block_invoke_cold_1(uint64_t *a1, uint64_t a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = *a1;
  v3 = *(a2 + 48);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_2_0(&dword_270DD4000, v4, v5, "Non-current request (%@) finished with response: %@");
  v6 = *MEMORY[0x277D85DE8];
}

void __90__VSIdentityProviderRequestManager_applicationController_request_didCompleteWithResponse___block_invoke_187_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x277D85DE8];
}

@end