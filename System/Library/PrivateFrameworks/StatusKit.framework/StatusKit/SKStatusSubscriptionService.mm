@interface SKStatusSubscriptionService
+ (id)logger;
- (SKStatusSubscription)personalStatusSubscription;
- (SKStatusSubscriptionDaemonConnection)daemonConnection;
- (SKStatusSubscriptionService)initWithStatusTypeIdentifier:(id)a3;
- (id)allStatusSubscriptionsWithActiveAssertions;
- (id)allStatusSubscriptionsWithActiveSubscriptions;
- (id)statusSubscriptionForHandle:(id)a3;
- (id)subscriptionValidationTokenForHandle:(id)a3 error:(id *)a4;
- (id)subscriptionValidationTokensForHandle:(id)a3 error:(id *)a4;
- (void)_delegatesPerformOnResponseQueueForGroup:(id)a3 block:(id)a4;
- (void)_registerForDelegateCallbacksIfNecessary;
- (void)_simulateCrashIfNecessaryForError:(id)a3;
- (void)addDelegate:(id)a3 queue:(id)a4;
- (void)allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier:(id)a3 completion:(id)a4;
- (void)dealloc;
- (void)personalStatusSubscriptionWithCompletion:(id)a3;
- (void)removeDelegate:(id)a3;
- (void)statusSubscriptionForHandle:(id)a3 completion:(id)a4;
- (void)subscriptionDaemonConnectionDidDisconnect:(id)a3;
- (void)subscriptionInvitationReceived:(id)a3 completion:(id)a4;
- (void)subscriptionReceivedStatusUpdate:(id)a3 completion:(id)a4;
- (void)subscriptionStateChangedForSubscriptions:(id)a3 completion:(id)a4;
- (void)subscriptionValidationTokenForHandle:(id)a3 completion:(id)a4;
- (void)subscriptionValidationTokensForHandle:(id)a3 completion:(id)a4;
- (void)validatePersonalStatusSubscriptionMatchesSubscriptionValidationToken:(id)a3 fromSender:(id)a4 completion:(id)a5;
- (void)validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens:(id)a3 fromSender:(id)a4 completion:(id)a5;
@end

@implementation SKStatusSubscriptionService

- (SKStatusSubscriptionService)initWithStatusTypeIdentifier:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = SKStatusSubscriptionService;
  v5 = [(SKStatusSubscriptionService *)&v15 init];
  if (v5)
  {
    ValidateIdentifierMeetsBlastdoorRequirements(v4);
    v6 = [v4 copy];
    statusTypeIdentifier = v5->_statusTypeIdentifier;
    v5->_statusTypeIdentifier = v6;

    v8 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
    delegates = v5->_delegates;
    v5->_delegates = v8;

    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_attr_make_with_qos_class(v10, QOS_CLASS_DEFAULT, 0);

    v12 = dispatch_queue_create("com.apple.StatusKit.SubscriptionService", v11);
    privateWorkQueue = v5->_privateWorkQueue;
    v5->_privateWorkQueue = v12;
  }

  return v5;
}

- (id)statusSubscriptionForHandle:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SKStatusSubscriptionService *)self _registerForDelegateCallbacksIfNecessary];
  v5 = [(SKStatusSubscriptionService *)self statusTypeIdentifier];
  v6 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v4;
    *&buf[12] = 2114;
    *&buf[14] = v5;
    _os_log_impl(&dword_26BA07000, v6, OS_LOG_TYPE_DEFAULT, "Fetching subscription (sync) for handle %@ statusType: %{public}@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v25 = __Block_byref_object_copy__1;
  v26 = __Block_byref_object_dispose__1;
  v27 = 0;
  v7 = [(SKStatusSubscriptionService *)self daemonConnection];
  objc_initWeak(&location, self);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __59__SKStatusSubscriptionService_statusSubscriptionForHandle___block_invoke;
  v21[3] = &unk_279D12DF8;
  objc_copyWeak(&v22, &location);
  v21[4] = buf;
  v8 = [v7 synchronousRemoteDaemonWithErrorHandler:v21];
  v14 = MEMORY[0x277D85DD0];
  v15 = 3221225472;
  v16 = __59__SKStatusSubscriptionService_statusSubscriptionForHandle___block_invoke_4;
  v17 = &unk_279D12E20;
  v9 = v4;
  v18 = v9;
  objc_copyWeak(&v20, &location);
  v19 = buf;
  [v8 subscriptionMetadataForHandle:v9 statusTypeIdentifier:v5 completion:&v14];
  if (*(*&buf[8] + 40))
  {
    v10 = [SKStatusSubscription alloc];
    v11 = [(SKStatusSubscription *)v10 initWithSubscriptionMetadata:*(*&buf[8] + 40) daemonConnection:v7, v14, v15, v16, v17, v18];
  }

  else
  {
    v11 = 0;
  }

  objc_destroyWeak(&v20);

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);

  _Block_object_dispose(buf, 8);
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void __59__SKStatusSubscriptionService_statusSubscriptionForHandle___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __59__SKStatusSubscriptionService_statusSubscriptionForHandle___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void __59__SKStatusSubscriptionService_statusSubscriptionForHandle___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SKStatusSubscriptionService logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __59__SKStatusSubscriptionService_statusSubscriptionForHandle___block_invoke_4_cold_1(v6, a1);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _simulateCrashIfNecessaryForError:v6];
  }

  else
  {
    WeakRetained = +[SKStatusSubscriptionService logger];
    v9 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v9)
      {
        v10 = *(a1 + 32);
        v15 = 138412546;
        v16 = v5;
        v17 = 2112;
        v18 = v10;
        _os_log_impl(&dword_26BA07000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Retreived subscription metadata for handle. subscriptionMetadata: %@ handle: %@", &v15, 0x16u);
      }

      v11 = *(*(a1 + 40) + 8);
      v12 = v5;
      WeakRetained = *(v11 + 40);
      *(v11 + 40) = v12;
    }

    else if (v9)
    {
      v13 = *(a1 + 32);
      v15 = 138412290;
      v16 = v13;
      _os_log_impl(&dword_26BA07000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Did not find subscription metadata for handle. handle: %@", &v15, 0xCu);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)statusSubscriptionForHandle:(id)a3 completion:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(SKStatusSubscriptionService *)self _registerForDelegateCallbacksIfNecessary];
  v8 = [(SKStatusSubscriptionService *)self statusTypeIdentifier];
  v9 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v6;
    v25 = 2114;
    v26 = v8;
    _os_log_impl(&dword_26BA07000, v9, OS_LOG_TYPE_DEFAULT, "Fetching subscription (async) for handle %@ statusType: %{public}@", buf, 0x16u);
  }

  v10 = [(SKStatusSubscriptionService *)self daemonConnection];
  objc_initWeak(buf, self);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __70__SKStatusSubscriptionService_statusSubscriptionForHandle_completion___block_invoke;
  v21[3] = &unk_279D12BA0;
  objc_copyWeak(&v22, buf);
  v11 = [v10 asynchronousRemoteDaemonWithErrorHandler:v21];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __70__SKStatusSubscriptionService_statusSubscriptionForHandle_completion___block_invoke_7;
  v16[3] = &unk_279D12E48;
  v12 = v6;
  v17 = v12;
  objc_copyWeak(&v20, buf);
  v13 = v7;
  v19 = v13;
  v14 = v10;
  v18 = v14;
  [v11 subscriptionMetadataForHandle:v12 statusTypeIdentifier:v8 completion:v16];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

void __70__SKStatusSubscriptionService_statusSubscriptionForHandle_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  v5 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __59__SKStatusSubscriptionService_statusSubscriptionForHandle___block_invoke_cold_1();
  }
}

void __70__SKStatusSubscriptionService_statusSubscriptionForHandle_completion___block_invoke_7(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SKStatusSubscriptionService logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __59__SKStatusSubscriptionService_statusSubscriptionForHandle___block_invoke_4_cold_1(v6, a1);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _simulateCrashIfNecessaryForError:v6];

    v9 = *(*(a1 + 48) + 16);
LABEL_5:
    v9();
    goto LABEL_10;
  }

  v10 = +[SKStatusSubscriptionService logger];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (v11)
    {
      v15 = *(a1 + 32);
      v16 = 138412290;
      v17 = v15;
      _os_log_impl(&dword_26BA07000, v10, OS_LOG_TYPE_DEFAULT, "Did not find subscription metadata for handle. handle: %@", &v16, 0xCu);
    }

    v9 = *(*(a1 + 48) + 16);
    goto LABEL_5;
  }

  if (v11)
  {
    v12 = *(a1 + 32);
    v16 = 138412546;
    v17 = v5;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&dword_26BA07000, v10, OS_LOG_TYPE_DEFAULT, "Retreived subscription metadata for handle. subscriptionMetadata: %@ handle: %@", &v16, 0x16u);
  }

  v13 = [[SKStatusSubscription alloc] initWithSubscriptionMetadata:v5 daemonConnection:*(a1 + 40)];
  (*(*(a1 + 48) + 16))();

LABEL_10:
  v14 = *MEMORY[0x277D85DE8];
}

- (SKStatusSubscription)personalStatusSubscription
{
  v27 = *MEMORY[0x277D85DE8];
  [(SKStatusSubscriptionService *)self _registerForDelegateCallbacksIfNecessary];
  v3 = [(SKStatusSubscriptionService *)self statusTypeIdentifier];
  v4 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_26BA07000, v4, OS_LOG_TYPE_DEFAULT, "Fetching personal subscription (sync) for statusType: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__1;
  v25 = __Block_byref_object_dispose__1;
  v26 = 0;
  v5 = [(SKStatusSubscriptionService *)self daemonConnection];
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __57__SKStatusSubscriptionService_personalStatusSubscription__block_invoke;
  v19[3] = &unk_279D12DF8;
  objc_copyWeak(&v20, &location);
  v19[4] = &buf;
  v6 = [v5 synchronousRemoteDaemonWithErrorHandler:v19];
  v12 = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = __57__SKStatusSubscriptionService_personalStatusSubscription__block_invoke_8;
  v15 = &unk_279D12E70;
  objc_copyWeak(&v18, &location);
  p_buf = &buf;
  v7 = v3;
  v16 = v7;
  [v6 subscriptionMetadataForPersonalSubscriptionWithStatusTypeIdentifier:v7 completion:&v12];
  if (*(*(&buf + 1) + 40))
  {
    v8 = [SKStatusSubscription alloc];
    v9 = [(SKStatusSubscription *)v8 initWithSubscriptionMetadata:*(*(&buf + 1) + 40) daemonConnection:v5, v12, v13, v14, v15];
  }

  else
  {
    v9 = 0;
  }

  objc_destroyWeak(&v18);
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);

  _Block_object_dispose(&buf, 8);
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __57__SKStatusSubscriptionService_personalStatusSubscription__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __57__SKStatusSubscriptionService_personalStatusSubscription__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void __57__SKStatusSubscriptionService_personalStatusSubscription__block_invoke_8(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SKStatusSubscriptionService logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __57__SKStatusSubscriptionService_personalStatusSubscription__block_invoke_8_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _simulateCrashIfNecessaryForError:v6];
  }

  else
  {
    WeakRetained = +[SKStatusSubscriptionService logger];
    v9 = os_log_type_enabled(WeakRetained, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      if (v9)
      {
        v14 = 138412290;
        v15 = v5;
        _os_log_impl(&dword_26BA07000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Retreived personal subscription metadata. subscriptionMetadata: %@", &v14, 0xCu);
      }

      v10 = *(*(a1 + 40) + 8);
      v11 = v5;
      WeakRetained = *(v10 + 40);
      *(v10 + 40) = v11;
    }

    else if (v9)
    {
      v12 = *(a1 + 32);
      v14 = 138412290;
      v15 = v12;
      _os_log_impl(&dword_26BA07000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Did not find personal subscription metadata for status type: %@", &v14, 0xCu);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)personalStatusSubscriptionWithCompletion:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  [(SKStatusSubscriptionService *)self _registerForDelegateCallbacksIfNecessary];
  v5 = [(SKStatusSubscriptionService *)self statusTypeIdentifier];
  v6 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v21 = v5;
    _os_log_impl(&dword_26BA07000, v6, OS_LOG_TYPE_DEFAULT, "Fetching personal subscription (async) for statusType: %{public}@", buf, 0xCu);
  }

  v7 = [(SKStatusSubscriptionService *)self daemonConnection];
  objc_initWeak(buf, self);
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__SKStatusSubscriptionService_personalStatusSubscriptionWithCompletion___block_invoke;
  v18[3] = &unk_279D12BA0;
  objc_copyWeak(&v19, buf);
  v8 = [v7 asynchronousRemoteDaemonWithErrorHandler:v18];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__SKStatusSubscriptionService_personalStatusSubscriptionWithCompletion___block_invoke_9;
  v13[3] = &unk_279D12E98;
  objc_copyWeak(&v17, buf);
  v9 = v4;
  v16 = v9;
  v10 = v7;
  v14 = v10;
  v11 = v5;
  v15 = v11;
  [v8 subscriptionMetadataForPersonalSubscriptionWithStatusTypeIdentifier:v11 completion:v13];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  v12 = *MEMORY[0x277D85DE8];
}

void __72__SKStatusSubscriptionService_personalStatusSubscriptionWithCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __57__SKStatusSubscriptionService_personalStatusSubscription__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];
}

void __72__SKStatusSubscriptionService_personalStatusSubscriptionWithCompletion___block_invoke_9(uint64_t a1, void *a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SKStatusSubscriptionService logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __57__SKStatusSubscriptionService_personalStatusSubscription__block_invoke_8_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _simulateCrashIfNecessaryForError:v6];

    v9 = *(*(a1 + 48) + 16);
LABEL_5:
    v9();
    goto LABEL_10;
  }

  v10 = +[SKStatusSubscriptionService logger];
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (!v5)
  {
    if (v11)
    {
      v14 = *(a1 + 40);
      v15 = 138412290;
      v16 = v14;
      _os_log_impl(&dword_26BA07000, v10, OS_LOG_TYPE_DEFAULT, "Did not find personal subscription metadata for status type: %@", &v15, 0xCu);
    }

    v9 = *(*(a1 + 48) + 16);
    goto LABEL_5;
  }

  if (v11)
  {
    v15 = 138412290;
    v16 = v5;
    _os_log_impl(&dword_26BA07000, v10, OS_LOG_TYPE_DEFAULT, "Retreived personal subscription metadata. subscriptionMetadata: %@", &v15, 0xCu);
  }

  v12 = [[SKStatusSubscription alloc] initWithSubscriptionMetadata:v5 daemonConnection:*(a1 + 32)];
  (*(*(a1 + 48) + 16))();

LABEL_10:
  v13 = *MEMORY[0x277D85DE8];
}

- (id)allStatusSubscriptionsWithActiveAssertions
{
  v35 = *MEMORY[0x277D85DE8];
  [(SKStatusSubscriptionService *)self _registerForDelegateCallbacksIfNecessary];
  v3 = [(SKStatusSubscriptionService *)self statusTypeIdentifier];
  v4 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_26BA07000, v4, OS_LOG_TYPE_DEFAULT, "Fetching all subscription assertions (sync) for statusType: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = 0;
  v5 = [(SKStatusSubscriptionService *)self daemonConnection];
  objc_initWeak(&location, self);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __73__SKStatusSubscriptionService_allStatusSubscriptionsWithActiveAssertions__block_invoke;
  v26[3] = &unk_279D12DF8;
  objc_copyWeak(&v27, &location);
  v26[4] = &buf;
  v6 = [v5 synchronousRemoteDaemonWithErrorHandler:v26];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __73__SKStatusSubscriptionService_allStatusSubscriptionsWithActiveAssertions__block_invoke_10;
  v22[3] = &unk_279D12EC0;
  v7 = v3;
  v23 = v7;
  objc_copyWeak(&v25, &location);
  p_buf = &buf;
  [v6 allSubscriptionMetadatasWithActiveAssertionsForStatusTypeIdentifier:v7 completion:v22];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = *(*(&buf + 1) + 40);
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v29 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [SKStatusSubscription alloc];
        v15 = [(SKStatusSubscription *)v14 initWithSubscriptionMetadata:v13 daemonConnection:v5, v18];
        if (v15)
        {
          [v8 addObject:v15];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v29 count:16];
    }

    while (v10);
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  _Block_object_dispose(&buf, 8);
  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

void __73__SKStatusSubscriptionService_allStatusSubscriptionsWithActiveAssertions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __73__SKStatusSubscriptionService_allStatusSubscriptionsWithActiveAssertions__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void __73__SKStatusSubscriptionService_allStatusSubscriptionsWithActiveAssertions__block_invoke_10(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SKStatusSubscriptionService logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __73__SKStatusSubscriptionService_allStatusSubscriptionsWithActiveAssertions__block_invoke_10_cold_1(a1);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _simulateCrashIfNecessaryForError:v6];
  }

  else
  {
    v9 = +[SKStatusSubscriptionService logger];
    WeakRetained = v9;
    if (v5)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v14 = 138412546;
        v15 = v5;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_26BA07000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Retreived subscription assertions metadatas for status type. subscriptionMetadata: %@ statusType: %@", &v14, 0x16u);
      }

      v11 = *(*(a1 + 40) + 8);
      v12 = v5;
      WeakRetained = *(v11 + 40);
      *(v11 + 40) = v12;
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __73__SKStatusSubscriptionService_allStatusSubscriptionsWithActiveAssertions__block_invoke_10_cold_2(a1);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (id)allStatusSubscriptionsWithActiveSubscriptions
{
  v35 = *MEMORY[0x277D85DE8];
  [(SKStatusSubscriptionService *)self _registerForDelegateCallbacksIfNecessary];
  v3 = [(SKStatusSubscriptionService *)self statusTypeIdentifier];
  v4 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v3;
    _os_log_impl(&dword_26BA07000, v4, OS_LOG_TYPE_DEFAULT, "Fetching all active subscription (sync) for statusType: %{public}@", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__1;
  v33 = __Block_byref_object_dispose__1;
  v34 = 0;
  v5 = [(SKStatusSubscriptionService *)self daemonConnection];
  objc_initWeak(&location, self);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __76__SKStatusSubscriptionService_allStatusSubscriptionsWithActiveSubscriptions__block_invoke;
  v26[3] = &unk_279D12DF8;
  objc_copyWeak(&v27, &location);
  v26[4] = &buf;
  v6 = [v5 synchronousRemoteDaemonWithErrorHandler:v26];
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __76__SKStatusSubscriptionService_allStatusSubscriptionsWithActiveSubscriptions__block_invoke_13;
  v22[3] = &unk_279D12EC0;
  v7 = v3;
  v23 = v7;
  objc_copyWeak(&v25, &location);
  p_buf = &buf;
  [v6 allSubscriptionMetadatasWithActiveSubscriptionsForStatusTypeIdentifier:v7 completion:v22];
  v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = *(*(&buf + 1) + 40);
  v10 = [v9 countByEnumeratingWithState:&v18 objects:v29 count:16];
  if (v10)
  {
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [SKStatusSubscription alloc];
        v15 = [(SKStatusSubscription *)v14 initWithSubscriptionMetadata:v13 daemonConnection:v5, v18];
        if (v15)
        {
          [v8 addObject:v15];
        }
      }

      v10 = [v9 countByEnumeratingWithState:&v18 objects:v29 count:16];
    }

    while (v10);
  }

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v27);
  objc_destroyWeak(&location);

  _Block_object_dispose(&buf, 8);
  v16 = *MEMORY[0x277D85DE8];

  return v8;
}

void __76__SKStatusSubscriptionService_allStatusSubscriptionsWithActiveSubscriptions__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __76__SKStatusSubscriptionService_allStatusSubscriptionsWithActiveSubscriptions__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void __76__SKStatusSubscriptionService_allStatusSubscriptionsWithActiveSubscriptions__block_invoke_13(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SKStatusSubscriptionService logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __76__SKStatusSubscriptionService_allStatusSubscriptionsWithActiveSubscriptions__block_invoke_13_cold_1(a1);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _simulateCrashIfNecessaryForError:v6];
  }

  else
  {
    v9 = +[SKStatusSubscriptionService logger];
    WeakRetained = v9;
    if (v5)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v14 = 138412546;
        v15 = v5;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_26BA07000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Retreived active subscription metadatas for status type. subscriptionMetadata: %@ statusType: %@", &v14, 0x16u);
      }

      v11 = *(*(a1 + 40) + 8);
      v12 = v5;
      WeakRetained = *(v11 + 40);
      *(v11 + 40) = v12;
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __76__SKStatusSubscriptionService_allStatusSubscriptionsWithActiveSubscriptions__block_invoke_13_cold_2(a1);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __84__SKStatusSubscriptionService__allStatusSubscriptionsIncludingPersonalSubscription___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __84__SKStatusSubscriptionService__allStatusSubscriptionsIncludingPersonalSubscription___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

void __84__SKStatusSubscriptionService__allStatusSubscriptionsIncludingPersonalSubscription___block_invoke_14(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SKStatusSubscriptionService logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __84__SKStatusSubscriptionService__allStatusSubscriptionsIncludingPersonalSubscription___block_invoke_14_cold_1(a1);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _simulateCrashIfNecessaryForError:v6];
  }

  else
  {
    v9 = +[SKStatusSubscriptionService logger];
    WeakRetained = v9;
    if (v5)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v14 = 138412546;
        v15 = v5;
        v16 = 2112;
        v17 = v10;
        _os_log_impl(&dword_26BA07000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Retreived subscription metadatas for status type. subscriptionMetadata: %@ statusType: %@", &v14, 0x16u);
      }

      v11 = *(*(a1 + 40) + 8);
      v12 = v5;
      WeakRetained = *(v11 + 40);
      *(v11 + 40) = v12;
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __84__SKStatusSubscriptionService__allStatusSubscriptionsIncludingPersonalSubscription___block_invoke_14_cold_2(a1);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier:(id)a3 completion:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(SKStatusSubscriptionService *)self _registerForDelegateCallbacksIfNecessary];
  v8 = [(SKStatusSubscriptionService *)self statusTypeIdentifier];
  v9 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = v8;
    v27 = 2112;
    v28 = v6;
    _os_log_impl(&dword_26BA07000, v9, OS_LOG_TYPE_DEFAULT, "Fetching all subscription with persistent assertion for statusType: %{public}@ application identifer: %@", buf, 0x16u);
  }

  v10 = [(SKStatusSubscriptionService *)self daemonConnection];
  objc_initWeak(buf, self);
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __124__SKStatusSubscriptionService_allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier_completion___block_invoke;
  v22[3] = &unk_279D12B50;
  objc_copyWeak(&v24, buf);
  v11 = v7;
  v23 = v11;
  v12 = [v10 asynchronousRemoteDaemonWithErrorHandler:v22];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __124__SKStatusSubscriptionService_allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier_completion___block_invoke_15;
  v17[3] = &unk_279D12EE8;
  v13 = v8;
  v18 = v13;
  objc_copyWeak(&v21, buf);
  v14 = v11;
  v20 = v14;
  v15 = v10;
  v19 = v15;
  [v12 allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier:v6 statusTypeIdentifier:v13 completion:v17];

  objc_destroyWeak(&v21);
  objc_destroyWeak(&v24);
  objc_destroyWeak(buf);

  v16 = *MEMORY[0x277D85DE8];
}

void __124__SKStatusSubscriptionService_allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __124__SKStatusSubscriptionService_allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier_completion___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  (*(*(a1 + 32) + 16))();
}

void __124__SKStatusSubscriptionService_allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier_completion___block_invoke_15(uint64_t a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = +[SKStatusSubscriptionService logger];
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __84__SKStatusSubscriptionService__allStatusSubscriptionsIncludingPersonalSubscription___block_invoke_14_cold_1(a1);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _simulateCrashIfNecessaryForError:v6];

    (*(*(a1 + 48) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v5 count];
      v11 = *(a1 + 32);
      *buf = 134218498;
      v28 = v10;
      v29 = 2112;
      v30 = v5;
      v31 = 2112;
      v32 = v11;
      _os_log_impl(&dword_26BA07000, v8, OS_LOG_TYPE_DEFAULT, "Retreived %ld subscription metadatas for status type. subscriptionMetadata: %@ statusType: %@", buf, 0x20u);
    }

    v12 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v13 = v5;
    v14 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v23;
      do
      {
        v17 = 0;
        do
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v22 + 1) + 8 * v17);
          v19 = [SKStatusSubscription alloc];
          v20 = [(SKStatusSubscription *)v19 initWithSubscriptionMetadata:v18 daemonConnection:*(a1 + 40), v22];
          if (v20)
          {
            [v12 addObject:v20];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }

    (*(*(a1 + 48) + 16))();
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (id)subscriptionValidationTokensForHandle:(id)a3 error:(id *)a4
{
  v33 = *MEMORY[0x277D85DE8];
  v6 = a3;
  [(SKStatusSubscriptionService *)self _registerForDelegateCallbacksIfNecessary];
  v7 = [(SKStatusSubscriptionService *)self statusTypeIdentifier];
  v8 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 handleString];
    *buf = 138543618;
    *&buf[4] = v7;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&dword_26BA07000, v8, OS_LOG_TYPE_DEFAULT, "Fetching channel validation token (sync) for statusType: %{public}@ handle: %@", buf, 0x16u);
  }

  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v30 = __Block_byref_object_copy__1;
  v31 = __Block_byref_object_dispose__1;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__1;
  v27 = __Block_byref_object_dispose__1;
  v28 = 0;
  v10 = [(SKStatusSubscriptionService *)self daemonConnection];
  objc_initWeak(&location, self);
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __75__SKStatusSubscriptionService_subscriptionValidationTokensForHandle_error___block_invoke;
  v20[3] = &unk_279D12F10;
  objc_copyWeak(&v21, &location);
  v20[4] = buf;
  v20[5] = &v23;
  v11 = [v10 synchronousRemoteDaemonWithErrorHandler:v20];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __75__SKStatusSubscriptionService_subscriptionValidationTokensForHandle_error___block_invoke_16;
  v16[3] = &unk_279D12F38;
  objc_copyWeak(&v19, &location);
  v12 = v6;
  v17 = v12;
  v18 = buf;
  [v11 subscriptionValidationTokensForHandle:v12 statusTypeIdentifier:v7 completion:v16];
  if (a4)
  {
    *a4 = v24[5];
  }

  v13 = *(*&buf[8] + 40);

  objc_destroyWeak(&v19);
  objc_destroyWeak(&v21);
  objc_destroyWeak(&location);

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(buf, 8);

  v14 = *MEMORY[0x277D85DE8];

  return v13;
}

void __75__SKStatusSubscriptionService_subscriptionValidationTokensForHandle_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __75__SKStatusSubscriptionService_subscriptionValidationTokensForHandle_error___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  v6 = *(*(a1 + 32) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;

  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v3;
}

void __75__SKStatusSubscriptionService_subscriptionValidationTokensForHandle_error___block_invoke_16(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SKStatusSubscriptionService logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __75__SKStatusSubscriptionService_subscriptionValidationTokensForHandle_error___block_invoke_16_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _simulateCrashIfNecessaryForError:v6];
  }

  else
  {
    v9 = +[SKStatusSubscriptionService logger];
    WeakRetained = v9;
    if (v5)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = [*(a1 + 32) handleString];
        v14 = 138412546;
        v15 = v10;
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&dword_26BA07000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Subscription validation (sync) token for handle: %@ is %@", &v14, 0x16u);
      }

      v11 = *(*(a1 + 40) + 8);
      v12 = v5;
      WeakRetained = *(v11 + 40);
      *(v11 + 40) = v12;
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      __75__SKStatusSubscriptionService_subscriptionValidationTokensForHandle_error___block_invoke_16_cold_2(WeakRetained);
    }
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)subscriptionValidationTokensForHandle:(id)a3 completion:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  [(SKStatusSubscriptionService *)self _registerForDelegateCallbacksIfNecessary];
  v8 = [(SKStatusSubscriptionService *)self statusTypeIdentifier];
  v9 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [v6 handleString];
    *buf = 138543618;
    v25 = v8;
    v26 = 2112;
    v27 = v10;
    _os_log_impl(&dword_26BA07000, v9, OS_LOG_TYPE_DEFAULT, "Fetching channel validation token (async) for statusType: %{public}@ handle: %@", buf, 0x16u);
  }

  v11 = [(SKStatusSubscriptionService *)self daemonConnection];
  objc_initWeak(buf, self);
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __80__SKStatusSubscriptionService_subscriptionValidationTokensForHandle_completion___block_invoke;
  v21[3] = &unk_279D12B50;
  objc_copyWeak(&v23, buf);
  v12 = v7;
  v22 = v12;
  v13 = [v11 asynchronousRemoteDaemonWithErrorHandler:v21];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __80__SKStatusSubscriptionService_subscriptionValidationTokensForHandle_completion___block_invoke_18;
  v17[3] = &unk_279D12F60;
  objc_copyWeak(&v20, buf);
  v14 = v12;
  v19 = v14;
  v15 = v6;
  v18 = v15;
  [v13 subscriptionValidationTokensForHandle:v15 statusTypeIdentifier:v8 completion:v17];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v23);
  objc_destroyWeak(buf);

  v16 = *MEMORY[0x277D85DE8];
}

void __80__SKStatusSubscriptionService_subscriptionValidationTokensForHandle_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __80__SKStatusSubscriptionService_subscriptionValidationTokensForHandle_completion___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  (*(*(a1 + 32) + 16))();
}

void __80__SKStatusSubscriptionService_subscriptionValidationTokensForHandle_completion___block_invoke_18(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SKStatusSubscriptionService logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __80__SKStatusSubscriptionService_subscriptionValidationTokensForHandle_completion___block_invoke_18_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 48));
    [WeakRetained _simulateCrashIfNecessaryForError:v6];

    v9 = *(*(a1 + 40) + 16);
  }

  else
  {
    v10 = +[SKStatusSubscriptionService logger];
    v11 = v10;
    if (v5)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [*(a1 + 32) handleString];
        v14 = 138412546;
        v15 = v12;
        v16 = 2112;
        v17 = v5;
        _os_log_impl(&dword_26BA07000, v11, OS_LOG_TYPE_DEFAULT, "Subscription validation token (async) for handle: %@ is %@", &v14, 0x16u);
      }

      v9 = *(*(a1 + 40) + 16);
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_FAULT))
      {
        __80__SKStatusSubscriptionService_subscriptionValidationTokensForHandle_completion___block_invoke_18_cold_2(v11);
      }

      v9 = *(*(a1 + 40) + 16);
    }
  }

  v9();

  v13 = *MEMORY[0x277D85DE8];
}

- (void)validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens:(id)a3 fromSender:(id)a4 completion:(id)a5
{
  v35 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  [(SKStatusSubscriptionService *)self _registerForDelegateCallbacksIfNecessary];
  v11 = [(SKStatusSubscriptionService *)self statusTypeIdentifier];
  v12 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v9 handleString];
    *buf = 138412802;
    v30 = v8;
    v31 = 2114;
    v32 = v11;
    v33 = 2112;
    v34 = v13;
    _os_log_impl(&dword_26BA07000, v12, OS_LOG_TYPE_DEFAULT, "Validating subscription validation token %@ for statusType: %{public}@ fromHandle: %@", buf, 0x20u);
  }

  v14 = [(SKStatusSubscriptionService *)self daemonConnection];
  objc_initWeak(buf, self);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __123__SKStatusSubscriptionService_validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens_fromSender_completion___block_invoke;
  v26[3] = &unk_279D12B50;
  objc_copyWeak(&v28, buf);
  v15 = v10;
  v27 = v15;
  v16 = [v14 asynchronousRemoteDaemonWithErrorHandler:v26];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __123__SKStatusSubscriptionService_validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens_fromSender_completion___block_invoke_19;
  v21[3] = &unk_279D12F88;
  objc_copyWeak(&v25, buf);
  v17 = v8;
  v22 = v17;
  v18 = v9;
  v23 = v18;
  v19 = v15;
  v24 = v19;
  [v16 validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens:v17 fromSender:v18 statusTypeIdentifier:v11 completion:v21];

  objc_destroyWeak(&v25);
  objc_destroyWeak(&v28);
  objc_destroyWeak(buf);

  v20 = *MEMORY[0x277D85DE8];
}

void __123__SKStatusSubscriptionService_validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens_fromSender_completion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __123__SKStatusSubscriptionService_validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens_fromSender_completion___block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];

  (*(*(a1 + 32) + 16))();
}

void __123__SKStatusSubscriptionService_validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens_fromSender_completion___block_invoke_19(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[SKStatusSubscriptionService logger];
  WeakRetained = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __123__SKStatusSubscriptionService_validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens_fromSender_completion___block_invoke_19_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 56));
    [WeakRetained _simulateCrashIfNecessaryForError:v5];
  }

  else if (a2 == 2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __123__SKStatusSubscriptionService_validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens_fromSender_completion___block_invoke_19_cold_2(a1);
    }
  }

  else if (a2 == 1)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      v10 = [*(a1 + 40) handleString];
      v11 = 138412546;
      v12 = v9;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&dword_26BA07000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Subscription validation token %@ from %@ is valid", &v11, 0x16u);
    }
  }

  else if (a2)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      __123__SKStatusSubscriptionService_validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens_fromSender_completion___block_invoke_19_cold_4();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    __123__SKStatusSubscriptionService_validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens_fromSender_completion___block_invoke_19_cold_3(a1);
  }

  (*(*(a1 + 48) + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)addDelegate:(id)a3 queue:(id)a4
{
  v9 = a3;
  v6 = a4;
  v7 = self->_delegates;
  objc_sync_enter(v7);
  v8 = [[SKDelegateResponseQueue alloc] initWithQueue:v6];
  [(NSMapTable *)self->_delegates setObject:v8 forKey:v9];

  objc_sync_exit(v7);
  [(SKStatusSubscriptionService *)self _registerForDelegateCallbacksIfNecessary];
}

- (void)removeDelegate:(id)a3
{
  v5 = a3;
  v4 = self->_delegates;
  objc_sync_enter(v4);
  [(NSMapTable *)self->_delegates removeObjectForKey:v5];
  objc_sync_exit(v4);
}

- (void)_registerForDelegateCallbacksIfNecessary
{
  v18 = *MEMORY[0x277D85DE8];
  obj = self->_delegates;
  objc_sync_enter(obj);
  if (self->_registeredForDelegateCallbacks || ![(NSMapTable *)self->_delegates count])
  {
    objc_sync_exit(obj);
    v9 = *MEMORY[0x277D85DE8];
  }

  else
  {
    self->_registeredForDelegateCallbacks = 1;
    objc_sync_exit(obj);

    v3 = [(SKStatusSubscriptionService *)self statusTypeIdentifier];
    v4 = +[SKStatusSubscriptionService logger];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v3;
      _os_log_impl(&dword_26BA07000, v4, OS_LOG_TYPE_DEFAULT, "Registering for delegate callbacks for statusTypeIdentifier: %{public}@", buf, 0xCu);
    }

    v5 = [(SKStatusSubscriptionService *)self daemonConnection];
    objc_initWeak(buf, self);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __71__SKStatusSubscriptionService__registerForDelegateCallbacksIfNecessary__block_invoke;
    v14[3] = &unk_279D12BA0;
    objc_copyWeak(&v15, buf);
    v6 = [v5 asynchronousRemoteDaemonWithErrorHandler:v14];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __71__SKStatusSubscriptionService__registerForDelegateCallbacksIfNecessary__block_invoke_22;
    v11[3] = &unk_279D12BC8;
    objc_copyWeak(&v13, buf);
    v7 = v3;
    v12 = v7;
    [v6 registerForDelegateCallbacksWithStatusTypeIdentifier:v7 completion:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&v15);
    objc_destroyWeak(buf);

    v8 = *MEMORY[0x277D85DE8];
  }
}

void __71__SKStatusSubscriptionService__registerForDelegateCallbacksIfNecessary__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    __54__SKPresence__registerForDelegateCallbacksIfNecessary__block_invoke_cold_1();
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _simulateCrashIfNecessaryForError:v3];
}

void __71__SKStatusSubscriptionService__registerForDelegateCallbacksIfNecessary__block_invoke_22(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKStatusSubscriptionService logger];
  WeakRetained = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __54__SKPresence__registerForDelegateCallbacksIfNecessary__block_invoke_59_cold_1();
    }

    WeakRetained = objc_loadWeakRetained((a1 + 40));
    [WeakRetained _simulateCrashIfNecessaryForError:v3];
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_26BA07000, WeakRetained, OS_LOG_TYPE_DEFAULT, "Completed registration for delegate callbacks for statusTypeIdentifier: %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    statusTypeIdentifier = self->_statusTypeIdentifier;
    *buf = 138412290;
    v8 = statusTypeIdentifier;
    _os_log_impl(&dword_26BA07000, v3, OS_LOG_TYPE_DEFAULT, "Deallocing SKStatusSubscriptionService for status type identifier %@", buf, 0xCu);
  }

  [(SKStatusSubscriptionDaemonConnection *)self->_daemonConnection invalidate];
  v6.receiver = self;
  v6.super_class = SKStatusSubscriptionService;
  [(SKStatusSubscriptionService *)&v6 dealloc];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)subscriptionDaemonConnectionDidDisconnect:(id)a3
{
  v4 = self->_delegates;
  objc_sync_enter(v4);
  self->_registeredForDelegateCallbacks = 0;
  objc_sync_exit(v4);

  v5 = dispatch_group_create();
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __73__SKStatusSubscriptionService_subscriptionDaemonConnectionDidDisconnect___block_invoke;
  v6[3] = &unk_279D12FB0;
  v6[4] = self;
  [(SKStatusSubscriptionService *)self _delegatesPerformOnResponseQueueForGroup:v5 block:v6];
}

void __73__SKStatusSubscriptionService_subscriptionDaemonConnectionDidDisconnect___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = objc_opt_respondsToSelector();
  v5 = +[SKStatusSubscriptionService logger];
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "Notifying subscription service delegate that the XPC connection has disconnected", buf, 2u);
    }

    [v3 subscriptionServiceDaemonDisconnected:*(a1 + 32)];
  }

  else
  {
    if (v6)
    {
      *v7 = 0;
      _os_log_impl(&dword_26BA07000, v5, OS_LOG_TYPE_DEFAULT, "Subscription service delegate does not implement the delegate method to be notified the XPC connection has disconnected", v7, 2u);
    }
  }
}

- (void)subscriptionStateChangedForSubscriptions:(id)a3 completion:(id)a4
{
  v31 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v18 = a4;
  v7 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v6;
    _os_log_impl(&dword_26BA07000, v7, OS_LOG_TYPE_DEFAULT, "Subscription state changed: %@", buf, 0xCu);
  }

  v8 = dispatch_group_create();
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v6;
  v9 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v25;
    do
    {
      v12 = 0;
      do
      {
        if (*v25 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = [[SKStatusSubscription alloc] initWithSubscriptionMetadata:*(*(&v24 + 1) + 8 * v12) daemonConnection:self->_daemonConnection];
        v22[0] = MEMORY[0x277D85DD0];
        v22[1] = 3221225472;
        v22[2] = __83__SKStatusSubscriptionService_subscriptionStateChangedForSubscriptions_completion___block_invoke;
        v22[3] = &unk_279D12FB0;
        v23 = v13;
        v14 = v13;
        [(SKStatusSubscriptionService *)self _delegatesPerformOnResponseQueueForGroup:v8 block:v22];

        ++v12;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v10);
  }

  privateWorkQueue = self->_privateWorkQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __83__SKStatusSubscriptionService_subscriptionStateChangedForSubscriptions_completion___block_invoke_30;
  block[3] = &unk_279D12C40;
  v21 = v18;
  v16 = v18;
  dispatch_group_notify(v8, privateWorkQueue, block);

  v17 = *MEMORY[0x277D85DE8];
}

void __83__SKStatusSubscriptionService_subscriptionStateChangedForSubscriptions_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_respondsToSelector();
  v5 = +[SKStatusSubscriptionService logger];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_26BA07000, v6, OS_LOG_TYPE_DEFAULT, "Informing delegate of state change. Delegate: %@", &v8, 0xCu);
    }

    [v3 subscriptionStateChanged:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __83__SKStatusSubscriptionService_subscriptionStateChangedForSubscriptions_completion___block_invoke_cold_1();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)subscriptionReceivedStatusUpdate:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&dword_26BA07000, v8, OS_LOG_TYPE_DEFAULT, "Subscription received a status update: %@", buf, 0xCu);
  }

  v9 = dispatch_group_create();
  v10 = [[SKStatusSubscription alloc] initWithSubscriptionMetadata:v6 daemonConnection:self->_daemonConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __75__SKStatusSubscriptionService_subscriptionReceivedStatusUpdate_completion___block_invoke;
  v17[3] = &unk_279D12FB0;
  v18 = v10;
  v11 = v10;
  [(SKStatusSubscriptionService *)self _delegatesPerformOnResponseQueueForGroup:v9 block:v17];
  privateWorkQueue = self->_privateWorkQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__SKStatusSubscriptionService_subscriptionReceivedStatusUpdate_completion___block_invoke_34;
  v15[3] = &unk_279D12C40;
  v16 = v7;
  v13 = v7;
  dispatch_group_notify(v9, privateWorkQueue, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __75__SKStatusSubscriptionService_subscriptionReceivedStatusUpdate_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_respondsToSelector();
  v5 = +[SKStatusSubscriptionService logger];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_26BA07000, v6, OS_LOG_TYPE_DEFAULT, "Informing delegate of status update. Delegate: %@", &v8, 0xCu);
    }

    [v3 subscriptionReceivedStatusUpdate:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __75__SKStatusSubscriptionService_subscriptionReceivedStatusUpdate_completion___block_invoke_cold_1();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)subscriptionInvitationReceived:(id)a3 completion:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = +[SKStatusSubscriptionService logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v20 = v6;
    _os_log_impl(&dword_26BA07000, v8, OS_LOG_TYPE_DEFAULT, "Invitation received for subscription: %@", buf, 0xCu);
  }

  v9 = dispatch_group_create();
  v10 = [[SKStatusSubscription alloc] initWithSubscriptionMetadata:v6 daemonConnection:self->_daemonConnection];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __73__SKStatusSubscriptionService_subscriptionInvitationReceived_completion___block_invoke;
  v17[3] = &unk_279D12FB0;
  v18 = v10;
  v11 = v10;
  [(SKStatusSubscriptionService *)self _delegatesPerformOnResponseQueueForGroup:v9 block:v17];
  privateWorkQueue = self->_privateWorkQueue;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __73__SKStatusSubscriptionService_subscriptionInvitationReceived_completion___block_invoke_37;
  v15[3] = &unk_279D12C40;
  v16 = v7;
  v13 = v7;
  dispatch_group_notify(v9, privateWorkQueue, v15);

  v14 = *MEMORY[0x277D85DE8];
}

void __73__SKStatusSubscriptionService_subscriptionInvitationReceived_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_respondsToSelector();
  v5 = +[SKStatusSubscriptionService logger];
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v3;
      _os_log_impl(&dword_26BA07000, v6, OS_LOG_TYPE_DEFAULT, "Informing delegate of invitation received. Delegate: %@", &v8, 0xCu);
    }

    [v3 subscriptionInvitationReceived:*(a1 + 32)];
  }

  else
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      __73__SKStatusSubscriptionService_subscriptionInvitationReceived_completion___block_invoke_cold_1();
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_delegatesPerformOnResponseQueueForGroup:(id)a3 block:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = self->_delegates;
  objc_sync_enter(v8);
  v9 = [(NSMapTable *)self->_delegates copy];
  objc_sync_exit(v8);

  if (![v9 count])
  {
    v10 = +[SKStatusSubscriptionService logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26BA07000, v10, OS_LOG_TYPE_DEFAULT, "No delegates available to perform subscription service delegate callback", buf, 2u);
    }
  }

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  obj = [v9 keyEnumerator];
  v11 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
  if (v11)
  {
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = [v9 objectForKey:v14];
        v16 = [v15 dispatchQueue];
        dispatch_group_enter(v6);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __78__SKStatusSubscriptionService__delegatesPerformOnResponseQueueForGroup_block___block_invoke;
        block[3] = &unk_279D12BF0;
        v21 = v7;
        block[4] = v14;
        v20 = v6;
        dispatch_async(v16, block);
      }

      v11 = [obj countByEnumeratingWithState:&v22 objects:v27 count:16];
    }

    while (v11);
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __78__SKStatusSubscriptionService__delegatesPerformOnResponseQueueForGroup_block___block_invoke(void *a1)
{
  v2 = a1[4];
  (*(a1[6] + 16))();
  v3 = a1[5];

  dispatch_group_leave(v3);
}

- (void)_simulateCrashIfNecessaryForError:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  if (![v5 isEqualToString:@"SKStatusKitErrorDomain"])
  {
LABEL_5:

    goto LABEL_6;
  }

  v6 = [v4 code];

  if (v6 == 1)
  {
    v5 = +[SKStatusSubscriptionService logger];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      [(SKStatusSubscriptionService *)self _simulateCrashIfNecessaryForError:v5];
    }

    goto LABEL_5;
  }

LABEL_6:
}

+ (id)logger
{
  if (logger_onceToken_10 != -1)
  {
    +[SKStatusSubscriptionService logger];
  }

  v3 = logger__logger_10;

  return v3;
}

uint64_t __37__SKStatusSubscriptionService_logger__block_invoke()
{
  logger__logger_10 = os_log_create("com.apple.StatusKit", "SubscriptionService");

  return MEMORY[0x2821F96F8]();
}

- (SKStatusSubscriptionDaemonConnection)daemonConnection
{
  v2 = self;
  objc_sync_enter(v2);
  daemonConnection = v2->_daemonConnection;
  if (!daemonConnection)
  {
    v4 = [[SKStatusSubscriptionDaemonConnection alloc] initWithSubscriptionDaemonDelegate:v2 connectionDelegate:v2];
    v5 = v2->_daemonConnection;
    v2->_daemonConnection = v4;

    daemonConnection = v2->_daemonConnection;
  }

  v6 = daemonConnection;
  objc_sync_exit(v2);

  return v6;
}

- (id)subscriptionValidationTokenForHandle:(id)a3 error:(id *)a4
{
  v4 = [(SKStatusSubscriptionService *)self subscriptionValidationTokensForHandle:a3 error:a4];
  v5 = [v4 subscriptionValidationToken];

  return v5;
}

- (void)subscriptionValidationTokenForHandle:(id)a3 completion:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __91__SKStatusSubscriptionService_Deprecated__subscriptionValidationTokenForHandle_completion___block_invoke;
  v8[3] = &unk_279D12FD8;
  v9 = v6;
  v7 = v6;
  [(SKStatusSubscriptionService *)self subscriptionValidationTokensForHandle:a3 completion:v8];
}

void __91__SKStatusSubscriptionService_Deprecated__subscriptionValidationTokenForHandle_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 subscriptionValidationToken];
  (*(*(a1 + 32) + 16))();
}

- (void)validatePersonalStatusSubscriptionMatchesSubscriptionValidationToken:(id)a3 fromSender:(id)a4 completion:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [[SKSubscriptionValidationTokens alloc] initWithSubscriptionValidationToken:v10 encryptionValidationToken:0];

  [(SKStatusSubscriptionService *)self validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens:v11 fromSender:v9 completion:v8];
}

void __59__SKStatusSubscriptionService_statusSubscriptionForHandle___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "XPC Error retrieving subscription. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __59__SKStatusSubscriptionService_statusSubscriptionForHandle___block_invoke_4_cold_1(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 32);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_3_0(&dword_26BA07000, v3, v4, "Error retrieving subscription for handle. Error: %@ handle: %@");
  v5 = *MEMORY[0x277D85DE8];
}

void __57__SKStatusSubscriptionService_personalStatusSubscription__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "XPC Error retrieving personal subscription. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __57__SKStatusSubscriptionService_personalStatusSubscription__block_invoke_8_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Error retrieving personal subscription. Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __73__SKStatusSubscriptionService_allStatusSubscriptionsWithActiveAssertions__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "XPC Error retrieving all subscription assertions. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __73__SKStatusSubscriptionService_allStatusSubscriptionsWithActiveAssertions__block_invoke_10_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_26BA07000, v1, v2, "Error retrieving all subscription assertions for status type: %@. Error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __73__SKStatusSubscriptionService_allStatusSubscriptionsWithActiveAssertions__block_invoke_10_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_6_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2(&dword_26BA07000, v1, v2, "Did not find subscription assertions for status type: %@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void __76__SKStatusSubscriptionService_allStatusSubscriptionsWithActiveSubscriptions__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "XPC Error retrieving all active subscriptions. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __76__SKStatusSubscriptionService_allStatusSubscriptionsWithActiveSubscriptions__block_invoke_13_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_26BA07000, v1, v2, "Error retrieving all active subscription for status type: %@. Error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __76__SKStatusSubscriptionService_allStatusSubscriptionsWithActiveSubscriptions__block_invoke_13_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_6_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2(&dword_26BA07000, v1, v2, "Did not find active subscriptions for status type: %@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void __84__SKStatusSubscriptionService__allStatusSubscriptionsIncludingPersonalSubscription___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "XPC Error retrieving all subscriptions. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __84__SKStatusSubscriptionService__allStatusSubscriptionsIncludingPersonalSubscription___block_invoke_14_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_6_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_3_0(&dword_26BA07000, v1, v2, "Error retrieving all subscription for status type: %@. Error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __84__SKStatusSubscriptionService__allStatusSubscriptionsIncludingPersonalSubscription___block_invoke_14_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_6_0(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_2(&dword_26BA07000, v1, v2, "Did not find subscriptions for status type: %@", v3, v4, v5, v6, 2u);
  v7 = *MEMORY[0x277D85DE8];
}

void __124__SKStatusSubscriptionService_allStatusSubscriptionsWithPersistentSubscriptionAssertionForApplicationIdentifier_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "XPC Error retrieving all subscriptions with persistent assertion. Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __75__SKStatusSubscriptionService_subscriptionValidationTokensForHandle_error___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "XPC Error fetching channel validation token (sync). Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __75__SKStatusSubscriptionService_subscriptionValidationTokensForHandle_error___block_invoke_16_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Error fetching channel validation token (sync). Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __80__SKStatusSubscriptionService_subscriptionValidationTokensForHandle_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "XPC Error fetching channel validation token (async). Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __80__SKStatusSubscriptionService_subscriptionValidationTokensForHandle_completion___block_invoke_18_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Error fetching channel validation token (async). Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __123__SKStatusSubscriptionService_validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens_fromSender_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "XPC Error validating validation token (async). Error: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __123__SKStatusSubscriptionService_validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens_fromSender_completion___block_invoke_19_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Error validating subscription validation token (async). Error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __123__SKStatusSubscriptionService_validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens_fromSender_completion___block_invoke_19_cold_2(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) handleString];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_1(&dword_26BA07000, v3, v4, "Subscription validation token %@ from %@ is NOT VALID. Client should re-invite this handle if appropriate.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __123__SKStatusSubscriptionService_validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens_fromSender_completion___block_invoke_19_cold_3(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  v2 = [*(a1 + 40) handleString];
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_6_1(&dword_26BA07000, v3, v4, "Subscription validation token %@ from %@ has an UNKNOWN VALIDITY (!?), with no error. This is likely a bug in StatusKit.", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __123__SKStatusSubscriptionService_validatePersonalStatusSubscriptionMatchesSubscriptionValidationTokens_fromSender_completion___block_invoke_19_cold_4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  _os_log_fault_impl(&dword_26BA07000, v0, OS_LOG_TYPE_FAULT, "Unhandled SKStatusSubscriptionValidationTokenValidity: %ld", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __83__SKStatusSubscriptionService_subscriptionStateChangedForSubscriptions_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Delegate does not implement subscriptionStateChanged:, not informing delegate: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __75__SKStatusSubscriptionService_subscriptionReceivedStatusUpdate_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Delegate does not implement subscriptionReceivedStatusUpdate:, not informing delegate: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __73__SKStatusSubscriptionService_subscriptionInvitationReceived_completion___block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_2(&dword_26BA07000, v0, v1, "Delegate does not implement subscriptionInvitationReceived:, not informing delegate: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_simulateCrashIfNecessaryForError:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = [a1 statusTypeIdentifier];
  OUTLINED_FUNCTION_3();
  v6 = 2114;
  v7 = @"com.apple.StatusKit.subscribe.types";
  _os_log_fault_impl(&dword_26BA07000, a2, OS_LOG_TYPE_FAULT, "Client is attempting to access StatusKit subscription information of type %{public}@ but is not entitled. Client needs %{public}@ entitlement with this status type identifier.", v5, 0x16u);

  v4 = *MEMORY[0x277D85DE8];
}

@end