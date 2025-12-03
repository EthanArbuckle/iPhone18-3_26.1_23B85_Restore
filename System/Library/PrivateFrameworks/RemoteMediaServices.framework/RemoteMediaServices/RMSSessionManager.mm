@interface RMSSessionManager
- (RMSSessionManager)init;
- (RMSSessionManagerDelegate)delegate;
- (id)persistedSessionIdentifiers;
- (id)sessionWithIdentifier:(int)identifier;
- (int)_uniqueSessionIdentifier;
- (int)identifierForSession:(id)session;
- (void)_scheduleSessionExpirationWithIdentifier:(int)identifier timeout:(int)timeout;
- (void)_updatePersistedSessionIdentifiers;
- (void)beginSession:(id)session timeout:(int)timeout shouldTakePowerAssertion:(BOOL)assertion completionHandler:(id)handler;
- (void)endSessionWithIdentifier:(int)identifier completionHandler:(id)handler;
- (void)refreshSessionWithIdentifier:(int)identifier;
@end

@implementation RMSSessionManager

- (RMSSessionManager)init
{
  v8.receiver = self;
  v8.super_class = RMSSessionManager;
  v2 = [(RMSSessionManager *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    sessions = v2->_sessions;
    v2->_sessions = v3;

    v5 = dispatch_queue_create("com.apple.rms.sessionqueue", 0);
    sessionManagerQueue = v2->_sessionManagerQueue;
    v2->_sessionManagerQueue = v5;
  }

  return v2;
}

- (id)sessionWithIdentifier:(int)identifier
{
  sessions = self->_sessions;
  v4 = [MEMORY[0x277CCABB0] numberWithInt:*&identifier];
  v5 = [(NSMutableDictionary *)sessions objectForKeyedSubscript:v4];
  session = [v5 session];

  return session;
}

- (int)identifierForSession:(id)session
{
  sessionCopy = session;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  sessions = self->_sessions;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __42__RMSSessionManager_identifierForSession___block_invoke;
  v8[3] = &unk_279B09448;
  v6 = sessionCopy;
  v9 = v6;
  v10 = &v11;
  [(NSMutableDictionary *)sessions enumerateKeysAndObjectsUsingBlock:v8];
  LODWORD(sessions) = *(v12 + 6);

  _Block_object_dispose(&v11, 8);
  return sessions;
}

void __42__RMSSessionManager_identifierForSession___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = [a3 session];
  v6 = *(a1 + 32);

  if (v5 == v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v7 intValue];
  }
}

- (void)beginSession:(id)session timeout:(int)timeout shouldTakePowerAssertion:(BOOL)assertion completionHandler:(id)handler
{
  sessionCopy = session;
  handlerCopy = handler;
  sessionManagerQueue = self->_sessionManagerQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __85__RMSSessionManager_beginSession_timeout_shouldTakePowerAssertion_completionHandler___block_invoke;
  v15[3] = &unk_279B09470;
  timeoutCopy = timeout;
  v15[4] = self;
  v16 = sessionCopy;
  assertionCopy = assertion;
  v17 = handlerCopy;
  v13 = handlerCopy;
  v14 = sessionCopy;
  dispatch_async(sessionManagerQueue, v15);
}

void __85__RMSSessionManager_beginSession_timeout_shouldTakePowerAssertion_completionHandler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _uniqueSessionIdentifier];
  v12 = objc_opt_new();
  [v12 setRefreshCount:0];
  [v12 setTimeout:*(a1 + 56)];
  [v12 setSession:*(a1 + 40)];
  v3 = [RMSRunAssertion alloc];
  v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Session-%d", v2];
  v5 = [(RMSRunAssertion *)v3 initWithDescription:v4];
  [v12 setRunAssertion:v5];

  if (*(a1 + 60) == 1)
  {
    v6 = [RMSPowerAssertion alloc];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v9 = [(RMSPowerAssertion *)v6 initWithName:v8];

    [v12 setPowerAssertion:v9];
  }

  v10 = *(*(a1 + 32) + 8);
  v11 = [MEMORY[0x277CCABB0] numberWithInt:v2];
  [v10 setObject:v12 forKeyedSubscript:v11];

  [*(a1 + 32) _updatePersistedSessionIdentifiers];
  [*(a1 + 32) _scheduleSessionExpirationWithIdentifier:v2 timeout:*(a1 + 56)];
  (*(*(a1 + 48) + 16))();
}

- (void)endSessionWithIdentifier:(int)identifier completionHandler:(id)handler
{
  handlerCopy = handler;
  sessionManagerQueue = self->_sessionManagerQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __64__RMSSessionManager_endSessionWithIdentifier_completionHandler___block_invoke;
  block[3] = &unk_279B09498;
  identifierCopy = identifier;
  block[4] = self;
  v10 = handlerCopy;
  v8 = handlerCopy;
  dispatch_async(sessionManagerQueue, block);
}

void __64__RMSSessionManager_endSessionWithIdentifier_completionHandler___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = RMSLogger();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 session];
      v12 = 138412290;
      v13 = objc_opt_class();
      v7 = v13;
      _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Ending session: %@", &v12, 0xCu);
    }

    v8 = *(*(a1 + 32) + 8);
    v9 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
    [v8 removeObjectForKey:v9];

    [*(a1 + 32) _updatePersistedSessionIdentifiers];
  }

  v10 = *(a1 + 40);
  if (v10)
  {
    v11 = [v4 session];
    (*(v10 + 16))(v10, v11);
  }
}

- (void)refreshSessionWithIdentifier:(int)identifier
{
  sessionManagerQueue = self->_sessionManagerQueue;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __50__RMSSessionManager_refreshSessionWithIdentifier___block_invoke;
  v4[3] = &unk_279B091F0;
  v4[4] = self;
  identifierCopy = identifier;
  dispatch_async(sessionManagerQueue, v4);
}

void __50__RMSSessionManager_refreshSessionWithIdentifier___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = *(*(a1 + 32) + 8);
  v3 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 40)];
  v4 = [v2 objectForKeyedSubscript:v3];

  v5 = RMSLogger();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 session];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_261E98000, v5, OS_LOG_TYPE_DEFAULT, "Refreshing session: %@", &v10, 0xCu);
  }

  [v4 setRefreshCount:{objc_msgSend(v4, "refreshCount") + 1}];
  v9 = [v4 powerAssertion];
  [v9 refresh];
  [*(a1 + 32) _scheduleSessionExpirationWithIdentifier:*(a1 + 40) timeout:{objc_msgSend(v4, "timeout")}];
}

- (id)persistedSessionIdentifiers
{
  CFPreferencesAppSynchronize(@"com.apple.RemoteMediaServices");
  v2 = CFPreferencesCopyAppValue(@"SessionIdentifiers", @"com.apple.RemoteMediaServices");

  return v2;
}

- (void)_scheduleSessionExpirationWithIdentifier:(int)identifier timeout:(int)timeout
{
  objc_initWeak(&location, self);
  v7 = dispatch_time(0, 1000000000 * timeout);
  sessionManagerQueue = self->_sessionManagerQueue;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __70__RMSSessionManager__scheduleSessionExpirationWithIdentifier_timeout___block_invoke;
  v9[3] = &unk_279B094E8;
  objc_copyWeak(&v10, &location);
  identifierCopy = identifier;
  v9[4] = self;
  dispatch_after(v7, sessionManagerQueue, v9);
  objc_destroyWeak(&v10);
  objc_destroyWeak(&location);
}

void __70__RMSSessionManager__scheduleSessionExpirationWithIdentifier_timeout___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = WeakRetained[1];
    v5 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
    v6 = [v4 objectForKeyedSubscript:v5];

    if (v6)
    {
      if ([v6 refreshCount])
      {
        [v6 setRefreshCount:{objc_msgSend(v6, "refreshCount") - 1}];
      }

      else
      {
        v7 = RMSLogger();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v6 session];
          v9 = objc_opt_class();
          v10 = NSStringFromClass(v9);
          *buf = 138412290;
          v18 = v10;
          _os_log_impl(&dword_261E98000, v7, OS_LOG_TYPE_DEFAULT, "Session expired: %@", buf, 0xCu);
        }

        v11 = v3[1];
        v12 = [MEMORY[0x277CCABB0] numberWithInt:*(a1 + 48)];
        [v11 removeObjectForKey:v12];

        v13 = *(*(a1 + 32) + 16);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __70__RMSSessionManager__scheduleSessionExpirationWithIdentifier_timeout___block_invoke_50;
        block[3] = &unk_279B094C0;
        block[4] = v3;
        v15 = v6;
        v16 = *(a1 + 48);
        dispatch_async(v13, block);
        [v3 _updatePersistedSessionIdentifiers];
      }
    }
  }
}

void __70__RMSSessionManager__scheduleSessionExpirationWithIdentifier_timeout___block_invoke_50(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((*(a1 + 32) + 24));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) session];
  [WeakRetained sessionManager:v2 sessionDidTimeout:v3 withIdentifier:*(a1 + 48)];
}

- (int)_uniqueSessionIdentifier
{
  do
  {
    do
    {
      v3 = arc4random();
    }

    while (!v3);
    v4 = v3;
    sessions = self->_sessions;
    v6 = [MEMORY[0x277CCABB0] numberWithInt:v3];
    v7 = [(NSMutableDictionary *)sessions objectForKey:v6];
  }

  while (v7);
  return v4;
}

- (void)_updatePersistedSessionIdentifiers
{
  allKeys = [(NSMutableDictionary *)self->_sessions allKeys];
  CFPreferencesSetAppValue(@"SessionIdentifiers", allKeys, @"com.apple.RemoteMediaServices");
  CFPreferencesAppSynchronize(@"com.apple.RemoteMediaServices");
}

- (RMSSessionManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end