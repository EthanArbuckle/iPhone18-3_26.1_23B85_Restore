@interface SRUIFWatchAuthenticationManager
- (SRUIFWatchAuthenticationManager)init;
- (SRUIFWatchAuthenticationManager)initWithQueue:(id)queue manager:(id)manager;
- (void)_requestWatchAuthentication:(id)authentication;
- (void)manager:(id)manager didCompleteAuthenticationForSessionWithID:(id)d;
- (void)manager:(id)manager didFailAuthenticationForSessionWithID:(id)d error:(id)error;
- (void)manager:(id)manager didStartAuthenticationForSessionWithID:(id)d;
- (void)requestWatchAuthentication:(id)authentication;
@end

@implementation SRUIFWatchAuthenticationManager

- (SRUIFWatchAuthenticationManager)init
{
  v10.receiver = self;
  v10.super_class = SRUIFWatchAuthenticationManager;
  v2 = [(SRUIFWatchAuthenticationManager *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v4 = dispatch_queue_create("com.apple.siri.SRUIFWatchAuthenticationManager", v3);
    watchAuthenticationQueue = v2->_watchAuthenticationQueue;
    v2->_watchAuthenticationQueue = v4;

    v6 = [objc_alloc(MEMORY[0x277D54C10]) initWithQueue:v2->_watchAuthenticationQueue];
    authenticationManager = v2->_authenticationManager;
    v2->_authenticationManager = v6;

    authenticationManager = [(SRUIFWatchAuthenticationManager *)v2 authenticationManager];
    [authenticationManager setDelegate:v2];
  }

  return v2;
}

- (SRUIFWatchAuthenticationManager)initWithQueue:(id)queue manager:(id)manager
{
  queueCopy = queue;
  managerCopy = manager;
  v13.receiver = self;
  v13.super_class = SRUIFWatchAuthenticationManager;
  v9 = [(SRUIFWatchAuthenticationManager *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_watchAuthenticationQueue, queue);
    objc_storeStrong(&v10->_authenticationManager, manager);
    authenticationManager = [(SRUIFWatchAuthenticationManager *)v10 authenticationManager];
    [authenticationManager setDelegate:v10];
  }

  return v10;
}

- (void)requestWatchAuthentication:(id)authentication
{
  authenticationCopy = authentication;
  if (authenticationCopy)
  {
    objc_initWeak(&location, self);
    watchAuthenticationQueue = self->_watchAuthenticationQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __62__SRUIFWatchAuthenticationManager_requestWatchAuthentication___block_invoke;
    block[3] = &unk_279C61990;
    objc_copyWeak(&v9, &location);
    v8 = authenticationCopy;
    dispatch_async(watchAuthenticationQueue, block);

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }

  else
  {
    v6 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      [SRUIFWatchAuthenticationManager requestWatchAuthentication:v6];
    }
  }
}

void __62__SRUIFWatchAuthenticationManager_requestWatchAuthentication___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _requestWatchAuthentication:*(a1 + 32)];
}

- (void)_requestWatchAuthentication:(id)authentication
{
  v44 = *MEMORY[0x277D85DE8];
  authenticationCopy = authentication;
  currentSessionID = [(SRUIFWatchAuthenticationManager *)self currentSessionID];
  if (currentSessionID)
  {
    authenticationWatchdogTimer = [(SRUIFWatchAuthenticationManager *)self authenticationWatchdogTimer];
    cancelIfNotAlreadyCanceled = [authenticationWatchdogTimer cancelIfNotAlreadyCanceled];

    if (cancelIfNotAlreadyCanceled)
    {
      v8 = *MEMORY[0x277CEF098];
      if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        currentSessionID2 = [(SRUIFWatchAuthenticationManager *)self currentSessionID];
        *buf = 136315394;
        v39 = "[SRUIFWatchAuthenticationManager _requestWatchAuthentication:]";
        v40 = 2112;
        v41 = currentSessionID2;
        _os_log_impl(&dword_26951F000, v9, OS_LOG_TYPE_DEFAULT, "%s Watch authentication request already in progress. Cancelling session: %@", buf, 0x16u);
      }

      authenticationManager = [(SRUIFWatchAuthenticationManager *)self authenticationManager];
      currentSessionID3 = [(SRUIFWatchAuthenticationManager *)self currentSessionID];
      [authenticationManager cancelAuthenticationSessionWithID:currentSessionID3];
    }
  }

  [(SRUIFWatchAuthenticationManager *)self setAuthenticationCompletion:authenticationCopy];
  authenticationManager2 = [(SRUIFWatchAuthenticationManager *)self authenticationManager];
  v14 = [authenticationManager2 isSupportedForType:1];

  authenticationManager3 = [(SRUIFWatchAuthenticationManager *)self authenticationManager];
  v16 = [authenticationManager3 isEnabledForType:1];

  if ((v14 & v16) == 1)
  {
    authenticationManager4 = [(SRUIFWatchAuthenticationManager *)self authenticationManager];
    v18 = [authenticationManager4 authenticateForType:1];

    objc_initWeak(&location, self);
    v19 = objc_alloc(MEMORY[0x277CEF530]);
    watchAuthenticationQueue = self->_watchAuthenticationQueue;
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __63__SRUIFWatchAuthenticationManager__requestWatchAuthentication___block_invoke;
    v34[3] = &unk_279C61898;
    objc_copyWeak(&v36, &location);
    v21 = v18;
    v35 = v21;
    v22 = [v19 initWithTimeoutInterval:watchAuthenticationQueue onQueue:v34 timeoutHandler:5.0];
    authenticationWatchdogTimer = self->_authenticationWatchdogTimer;
    self->_authenticationWatchdogTimer = v22;

    [(SRUIFWatchAuthenticationManager *)self setCurrentSessionID:v21];
    authenticationWatchdogTimer2 = [(SRUIFWatchAuthenticationManager *)self authenticationWatchdogTimer];
    [authenticationWatchdogTimer2 start];

    v25 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      currentSessionID4 = [(SRUIFWatchAuthenticationManager *)self currentSessionID];
      *buf = 136315394;
      v39 = "[SRUIFWatchAuthenticationManager _requestWatchAuthentication:]";
      v40 = 2112;
      v41 = currentSessionID4;
      _os_log_impl(&dword_26951F000, v25, OS_LOG_TYPE_DEFAULT, "%s Attempting watch authentication with sessionID: %@", buf, 0x16u);
    }

    objc_destroyWeak(&v36);
    objc_destroyWeak(&location);
  }

  else
  {
    v27 = *MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
    {
      v28 = MEMORY[0x277CCABB0];
      v29 = v27;
      v30 = [v28 numberWithBool:v14];
      v31 = [MEMORY[0x277CCABB0] numberWithBool:v16];
      *buf = 136315650;
      v39 = "[SRUIFWatchAuthenticationManager _requestWatchAuthentication:]";
      v40 = 2112;
      v41 = v30;
      v42 = 2112;
      v43 = v31;
      _os_log_impl(&dword_26951F000, v29, OS_LOG_TYPE_DEFAULT, "%s Not attempting watch authentication, supported: %@, enabled: %@", buf, 0x20u);
    }

    authenticationCompletion = [(SRUIFWatchAuthenticationManager *)self authenticationCompletion];
    authenticationCompletion[2](authenticationCompletion, 0);

    [(SRUIFWatchAuthenticationManager *)self setAuthenticationCompletion:0];
  }

  v33 = *MEMORY[0x277D85DE8];
}

void __63__SRUIFWatchAuthenticationManager__requestWatchAuthentication___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v3 = MEMORY[0x277CEF098];
    if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_ERROR))
    {
      __63__SRUIFWatchAuthenticationManager__requestWatchAuthentication___block_invoke_cold_1(a1);
    }

    v4 = [WeakRetained authenticationManager];
    v6 = *(a1 + 32);
    v5 = (a1 + 32);
    [v4 cancelAuthenticationSessionWithID:v6];

    v7 = [WeakRetained currentSessionID];
    v8 = [v7 isEqual:*v5];

    if (v8)
    {
      v9 = [WeakRetained authenticationCompletion];
      v9[2](v9, 0);

      [WeakRetained setAuthenticationCompletion:0];
      [WeakRetained setCurrentSessionID:0];
    }

    else if (os_log_type_enabled(*v3, OS_LOG_TYPE_ERROR))
    {
      __63__SRUIFWatchAuthenticationManager__requestWatchAuthentication___block_invoke_cold_2(v5);
    }
  }
}

- (void)manager:(id)manager didStartAuthenticationForSessionWithID:(id)d
{
  v11 = *MEMORY[0x277D85DE8];
  dCopy = d;
  v5 = *MEMORY[0x277CEF098];
  if (os_log_type_enabled(*MEMORY[0x277CEF098], OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[SRUIFWatchAuthenticationManager manager:didStartAuthenticationForSessionWithID:]";
    v9 = 2112;
    v10 = dCopy;
    _os_log_impl(&dword_26951F000, v5, OS_LOG_TYPE_DEFAULT, "%s Starting new watch authentication request with sessionID: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)manager:(id)manager didCompleteAuthenticationForSessionWithID:(id)d
{
  v17 = *MEMORY[0x277D85DE8];
  dCopy = d;
  currentSessionID = [(SRUIFWatchAuthenticationManager *)self currentSessionID];
  v7 = [currentSessionID isEqual:dCopy];

  v8 = *MEMORY[0x277CEF098];
  v9 = *MEMORY[0x277CEF098];
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 136315394;
      v14 = "[SRUIFWatchAuthenticationManager manager:didCompleteAuthenticationForSessionWithID:]";
      v15 = 2112;
      v16 = dCopy;
      _os_log_impl(&dword_26951F000, v8, OS_LOG_TYPE_DEFAULT, "%s Completed watch authentication request with sessionID: %@", &v13, 0x16u);
    }

    authenticationCompletion = [(SRUIFWatchAuthenticationManager *)self authenticationCompletion];
    authenticationCompletion[2](authenticationCompletion, 1);

    authenticationWatchdogTimer = [(SRUIFWatchAuthenticationManager *)self authenticationWatchdogTimer];
    [authenticationWatchdogTimer cancel];

    [(SRUIFWatchAuthenticationManager *)self setAuthenticationCompletion:0];
    [(SRUIFWatchAuthenticationManager *)self setCurrentSessionID:0];
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    [SRUIFWatchAuthenticationManager manager:didCompleteAuthenticationForSessionWithID:];
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)manager:(id)manager didFailAuthenticationForSessionWithID:(id)d error:(id)error
{
  v22 = *MEMORY[0x277D85DE8];
  dCopy = d;
  errorCopy = error;
  currentSessionID = [(SRUIFWatchAuthenticationManager *)self currentSessionID];
  v10 = [currentSessionID isEqual:dCopy];

  v11 = *MEMORY[0x277CEF098];
  v12 = *MEMORY[0x277CEF098];
  if (v10)
  {
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 136315650;
      v17 = "[SRUIFWatchAuthenticationManager manager:didFailAuthenticationForSessionWithID:error:]";
      v18 = 2112;
      v19 = dCopy;
      v20 = 2112;
      v21 = errorCopy;
      _os_log_impl(&dword_26951F000, v11, OS_LOG_TYPE_DEFAULT, "%s Failed authentication request with sessionID: %@, error: %@", &v16, 0x20u);
    }

    authenticationCompletion = [(SRUIFWatchAuthenticationManager *)self authenticationCompletion];
    authenticationCompletion[2](authenticationCompletion, 0);

    authenticationWatchdogTimer = [(SRUIFWatchAuthenticationManager *)self authenticationWatchdogTimer];
    [authenticationWatchdogTimer cancel];

    [(SRUIFWatchAuthenticationManager *)self setAuthenticationCompletion:0];
    [(SRUIFWatchAuthenticationManager *)self setCurrentSessionID:0];
  }

  else if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    [SRUIFWatchAuthenticationManager manager:didFailAuthenticationForSessionWithID:error:];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)requestWatchAuthentication:(os_log_t)log .cold.1(os_log_t log)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 136315138;
  v3 = "[SRUIFWatchAuthenticationManager requestWatchAuthentication:]";
  _os_log_error_impl(&dword_26951F000, log, OS_LOG_TYPE_ERROR, "%s No completion handler provided.", &v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __63__SRUIFWatchAuthenticationManager__requestWatchAuthentication___block_invoke_cold_1(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26951F000, v2, v3, "%s Watch authentication request timed out for sessionID: %@", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __63__SRUIFWatchAuthenticationManager__requestWatchAuthentication___block_invoke_cold_2(uint64_t *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *a1;
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_0_0(&dword_26951F000, v2, v3, "%s Ignoring unexpected watch authentication timeout for unknown sessionID: %@", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)manager:didCompleteAuthenticationForSessionWithID:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0(&dword_26951F000, v0, v1, "%s Ignoring unexpected watch authentication session completion for unknown sessionID: %@", v2, v3, v4, v5, 2u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)manager:didFailAuthenticationForSessionWithID:error:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 136315650;
  OUTLINED_FUNCTION_1_0();
  v5 = v0;
  v6 = v1;
  _os_log_error_impl(&dword_26951F000, v2, OS_LOG_TYPE_ERROR, "%s Ignoring unexpected watch authentication session failure for unknown sessionID: %@ error: %@", v4, 0x20u);
  v3 = *MEMORY[0x277D85DE8];
}

@end