@interface SKAPresenceClient
+ (id)logger;
+ (id)oversizeLogger;
- (BOOL)activeAssertion;
- (BOOL)presenceIdentifierMatchesClient:(id)a3;
- (NSString)description;
- (SKAPresenceClient)initWithXPCConnection:(id)a3 queue:(id)a4 delegate:(id)a5 subscriptionManager:(id)a6 presenceManager:(id)a7 invitationManager:(id)a8 databaseManager:(id)a9 daemonProtocolDelegate:(id)a10;
- (SKAPresenceClientDelegate)delegate;
- (id)_shortHashOfClientID:(id)a3;
- (id)clientPrefixedPresenceIdentifierForPresenceIdentifier:(id)a3;
- (id)rawPresenceIdentifierForPrefixedPresenceIdentifier:(id)a3;
- (void)_releaseAllSubscriptionsAndAssertionsForDisconnection;
- (void)accountIsPresenceCapableWithCompletion:(id)a3;
- (void)assertPresenceForIdentifier:(id)a3 withPresencePayload:(id)a4 assertionOptions:(id)a5 completion:(id)a6;
- (void)dealloc;
- (void)fetchHandleInvitability:(id)a3 fromHandle:(id)a4 forPresenceIdentifier:(id)a5 completion:(id)a6;
- (void)fetchPresenceCapability:(id)a3;
- (void)handleReceivedInvitationForPresenceIdentifier:(id)a3;
- (void)handleReceivedPresentDevicesUpdate:(id)a3 forPresenceIdentifier:(id)a4;
- (void)hasInitialCloudKitImportOccurredWithCompletion:(id)a3;
- (void)initialCloudKitImportReceived;
- (void)inviteHandles:(id)a3 fromSenderHandle:(id)a4 presenceIdentifier:(id)a5 completion:(id)a6;
- (void)invitedHandlesForPresenceIdentifier:(id)a3 completion:(id)a4;
- (void)isHandleInvited:(id)a3 fromSenderHandle:(id)a4 forPresenceIdentifier:(id)a5 completion:(id)a6;
- (void)presenceClientConnectionWasInterrupted:(id)a3;
- (void)presenceClientConnectionWasInvalidated:(id)a3;
- (void)presentDevicesForPresenceIdentifier:(id)a3 completion:(id)a4;
- (void)registerForDelegateCallbacksWithPresenceIdentifier:(id)a3 options:(id)a4 completion:(id)a5;
- (void)releasePresenceForIdentifier:(id)a3 completion:(id)a4;
- (void)releaseTransientSubscriptionAssertionForPresenceIdentifier:(id)a3 completion:(id)a4;
- (void)removeInvitedHandles:(id)a3 presenceIdentifier:(id)a4 completion:(id)a5;
- (void)retainTransientSubscriptionAssertionForPresenceIdentifier:(id)a3 completion:(id)a4;
- (void)rollChannelForPresenceIdentifier:(id)a3 completion:(id)a4;
@end

@implementation SKAPresenceClient

- (SKAPresenceClient)initWithXPCConnection:(id)a3 queue:(id)a4 delegate:(id)a5 subscriptionManager:(id)a6 presenceManager:(id)a7 invitationManager:(id)a8 databaseManager:(id)a9 daemonProtocolDelegate:(id)a10
{
  v28 = a3;
  v16 = a4;
  v17 = a5;
  v27 = a6;
  v26 = a7;
  v25 = a8;
  v18 = a9;
  v19 = a10;
  dispatch_assert_queue_V2(v16);
  v29.receiver = self;
  v29.super_class = SKAPresenceClient;
  v20 = [(SKAPresenceClient *)&v29 init];
  if (v20)
  {
    v21 = [[SKAPresenceClientConnection alloc] initWithXPCConnection:v28 queue:v16 daemonProtocolDelegate:v19 connectionLifecycleDelegate:v20, v25, v26, v27];
    clientConnection = v20->_clientConnection;
    v20->_clientConnection = v21;

    objc_storeWeak(&v20->_delegate, v17);
    objc_storeStrong(&v20->_databaseManager, a9);
    objc_storeStrong(&v20->_subscriptionManager, a6);
    objc_storeStrong(&v20->_invitationManager, a8);
    objc_storeStrong(&v20->_presenceManager, a7);
    objc_storeStrong(&v20->_queue, a4);
    transaction = v20->_transaction;
    v20->_transaction = 0;
  }

  return v20;
}

- (void)dealloc
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = +[SKAPresenceClient logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(OS_os_transaction *)self->_transaction description];
    *buf = 138412290;
    v9 = v4;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "SKATransaction: Completed transaction %@", buf, 0xCu);
  }

  transaction = self->_transaction;
  self->_transaction = 0;

  v7.receiver = self;
  v7.super_class = SKAPresenceClient;
  [(SKAPresenceClient *)&v7 dealloc];
  v6 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [(SKAPresenceClient *)self presenceIdentifier];
  v5 = [(SKAPresenceClient *)self options];
  v6 = [v3 stringWithFormat:@"SKAPresenceClient: {presenceIdentifier: %@, presenceOptions: %@}", v4, v5];

  return v6;
}

- (void)presenceClientConnectionWasInterrupted:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[SKAPresenceClient logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Presence client connection was interrupted: %@", &v9, 0xCu);
  }

  v6 = +[SKAPresenceClient logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Beginning release of presence subscriptions and assertions associated with interrupted client", &v9, 2u);
  }

  [(SKAPresenceClient *)self _releaseAllSubscriptionsAndAssertionsForDisconnection];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained presenceClientWasInvalidated:self];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)presenceClientConnectionWasInvalidated:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = +[SKAPresenceClient logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Presence client connection was invalidated: %@", &v9, 0xCu);
  }

  v6 = +[SKAPresenceClient logger];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v9) = 0;
    _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Beginning release of presence subscriptions and assertions associated with invalidated client", &v9, 2u);
  }

  [(SKAPresenceClient *)self _releaseAllSubscriptionsAndAssertionsForDisconnection];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained presenceClientWasInvalidated:self];

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)activeAssertion
{
  presenceManager = self->_presenceManager;
  v4 = [(SKAPresenceClient *)self presenceIdentifier];
  v5 = [(SKAPresenceClient *)self options];
  LOBYTE(presenceManager) = -[SKAPresenceManaging activePresenceAssertionExistsForPresenceIdentifier:isPersonal:](presenceManager, "activePresenceAssertionExistsForPresenceIdentifier:isPersonal:", v4, [v5 isPersonal]);

  return presenceManager;
}

- (void)_releaseAllSubscriptionsAndAssertionsForDisconnection
{
  v3 = [(SKAPresenceClient *)self options];
  v4 = [v3 isDaemonIdleExitEnabled];

  subscriptionManager = self->_subscriptionManager;
  if (v4)
  {
    v6 = [(SKAPresenceClient *)self presenceIdentifier];
    [(SKAStatusSubscriptionManaging *)subscriptionManager releasePersistentPresenceSubscriptionForPresenceIdentifier:v6 completion:&__block_literal_global_19];

    presenceManager = self->_presenceManager;
    v10 = [(SKAPresenceClient *)self presenceIdentifier];
    v8 = [(SKAPresenceClient *)self options];
    [(SKAPresenceManaging *)presenceManager releasePersistentPresenceAssertionForPresenceIdentifier:v10 options:v8 completion:&__block_literal_global_11];
  }

  else
  {
    [(SKAStatusSubscriptionManaging *)self->_subscriptionManager releaseAllTransientPresenceSubscriptionsAssociatedWithClient:self completion:&__block_literal_global_14];
    v9 = self->_presenceManager;
    v10 = [(SKAPresenceClient *)self options];
    [SKAPresenceManaging releaseAllTransientPresenceAssertionsAssociatedWithClient:v9 options:"releaseAllTransientPresenceAssertionsAssociatedWithClient:options:completion:" completion:self];
  }
}

void __74__SKAPresenceClient__releaseAllSubscriptionsAndAssertionsForDisconnection__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SKAPresenceClient logger];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __74__SKAPresenceClient__releaseAllSubscriptionsAndAssertionsForDisconnection__block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Success releasing persistent presence subscriptions associated with disconnected client", v5, 2u);
  }
}

void __74__SKAPresenceClient__releaseAllSubscriptionsAndAssertionsForDisconnection__block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SKAPresenceClient logger];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __74__SKAPresenceClient__releaseAllSubscriptionsAndAssertionsForDisconnection__block_invoke_9_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Success releasing persistent presence assertion associated with disconnected client", v5, 2u);
  }
}

void __74__SKAPresenceClient__releaseAllSubscriptionsAndAssertionsForDisconnection__block_invoke_12(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SKAPresenceClient logger];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __74__SKAPresenceClient__releaseAllSubscriptionsAndAssertionsForDisconnection__block_invoke_12_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Success releasing transient presence subscriptions associated with disconnected client", v5, 2u);
  }
}

void __74__SKAPresenceClient__releaseAllSubscriptionsAndAssertionsForDisconnection__block_invoke_15(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SKAPresenceClient logger];
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __74__SKAPresenceClient__releaseAllSubscriptionsAndAssertionsForDisconnection__block_invoke_15_cold_1();
    }
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Success releasing transient presence presence assertions associated with disconnected client", v5, 2u);
  }
}

+ (id)logger
{
  if (logger_onceToken_19 != -1)
  {
    +[SKAPresenceClient logger];
  }

  v3 = logger__logger_19;

  return v3;
}

uint64_t __27__SKAPresenceClient_logger__block_invoke()
{
  logger__logger_19 = os_log_create("com.apple.StatusKit", "SKAPresenceClient");

  return MEMORY[0x2821F96F8]();
}

+ (id)oversizeLogger
{
  if (oversizeLogger_onceToken_0 != -1)
  {
    +[SKAPresenceClient oversizeLogger];
  }

  v3 = oversizeLogger__logger_0;

  return v3;
}

uint64_t __35__SKAPresenceClient_oversizeLogger__block_invoke()
{
  oversizeLogger__logger_0 = os_log_create("com.apple.StatusKit", "StatusKit-oversized");

  return MEMORY[0x2821F96F8]();
}

- (void)hasInitialCloudKitImportOccurredWithCompletion:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v5 = [(SKAPresenceClient *)self databaseManager];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __68__SKAPresenceClient_hasInitialCloudKitImportOccurredWithCompletion___block_invoke;
  v7[3] = &unk_27843DD10;
  v8 = v4;
  v6 = v4;
  [v5 hasInitialCloudKitImportOccurred:v7];
}

uint64_t __68__SKAPresenceClient_hasInitialCloudKitImportOccurredWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))(result, 0, a2);
  }

  return result;
}

- (void)assertPresenceForIdentifier:(id)a3 withPresencePayload:(id)a4 assertionOptions:(id)a5 completion:(id)a6
{
  v10 = a4;
  v11 = a5;
  v12 = a6;
  queue = self->_queue;
  v14 = a3;
  dispatch_assert_queue_V2(queue);
  v15 = [(SKAPresenceClient *)self clientPrefixedPresenceIdentifierForPresenceIdentifier:v14];

  if (v10)
  {
    if (v15)
    {
LABEL_3:
      v19[0] = MEMORY[0x277D85DD0];
      v19[1] = 3221225472;
      v19[2] = __97__SKAPresenceClient_assertPresenceForIdentifier_withPresencePayload_assertionOptions_completion___block_invoke;
      v19[3] = &unk_27843F100;
      v24 = v12;
      v20 = v15;
      v21 = self;
      v22 = v10;
      v23 = v11;
      [(SKAPresenceClient *)self accountIsPresenceCapableWithCompletion:v19];

      v16 = v24;
      goto LABEL_10;
    }
  }

  else
  {
    v17 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_220099000, v17, OS_LOG_TYPE_DEFAULT, "Client did not specify a payload", buf, 2u);
    }

    v10 = [objc_alloc(MEMORY[0x277D68108]) initWithData:0];
    if (v15)
    {
      goto LABEL_3;
    }
  }

  v18 = +[SKAPresenceClient logger];
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    [SKAPresenceClient assertPresenceForIdentifier:withPresencePayload:assertionOptions:completion:];
  }

  v16 = [SKAError errorWithCode:200];
  (*(v12 + 2))(v12, v16);
LABEL_10:
}

void __97__SKAPresenceClient_assertPresenceForIdentifier_withPresencePayload_assertionOptions_completion___block_invoke(uint64_t a1, char a2)
{
  v33 = *MEMORY[0x277D85DE8];
  v4 = +[SKAPresenceClient logger];
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v32 = v6;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Retaining presence assertion for presenceIdentifier: %@", buf, 0xCu);
    }

    v7 = [*(a1 + 40) options];
    v8 = [v7 isDaemonIdleExitEnabled];

    if (v8)
    {
      v9 = +[SKAPresenceClient logger];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Clearing transaction to allow StatusKitAgent to idle-exit", buf, 2u);
      }

      v10 = *(a1 + 40);
      v11 = *(v10 + 72);
      *(v10 + 72) = 0;

      v12 = [*(a1 + 40) presenceManager];
      v13 = *(a1 + 48);
      v14 = *(a1 + 56);
      v15 = *(a1 + 32);
      v16 = [*(a1 + 40) options];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __97__SKAPresenceClient_assertPresenceForIdentifier_withPresencePayload_assertionOptions_completion___block_invoke_29;
      v28[3] = &unk_27843F0D8;
      v29 = *(a1 + 32);
      v30 = *(a1 + 64);
      [v12 retainPersistentPresenceAssertionForPresenceIdentifier:v15 withPresencePayload:v13 assertionOptions:v14 presenceOptions:v16 completion:v28];

      v17 = v29;
    }

    else
    {
      v18 = [*(a1 + 40) presenceManager];
      v19 = *(a1 + 48);
      v20 = *(a1 + 56);
      v21 = *(a1 + 32);
      v22 = [*(a1 + 40) options];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __97__SKAPresenceClient_assertPresenceForIdentifier_withPresencePayload_assertionOptions_completion___block_invoke_30;
      v25[3] = &unk_27843F0D8;
      v23 = *(a1 + 40);
      v26 = *(a1 + 32);
      v27 = *(a1 + 64);
      [v18 retainTransientPresenceAssertionForPresenceIdentifier:v21 withPresencePayload:v19 assertionOptions:v20 presenceOptions:v22 client:v23 completion:v25];

      v17 = v26;
    }
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __97__SKAPresenceClient_assertPresenceForIdentifier_withPresencePayload_assertionOptions_completion___block_invoke_cold_1();
    }

    v17 = [SKAError errorWithCode:300];
    (*(*(a1 + 64) + 16))();
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __97__SKAPresenceClient_assertPresenceForIdentifier_withPresencePayload_assertionOptions_completion___block_invoke_29(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAPresenceClient logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __97__SKAPresenceClient_assertPresenceForIdentifier_withPresencePayload_assertionOptions_completion___block_invoke_29_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retained presence assertion for presenceIdentifier: %@ (persistent)", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

void __97__SKAPresenceClient_assertPresenceForIdentifier_withPresencePayload_assertionOptions_completion___block_invoke_30(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAPresenceClient logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __97__SKAPresenceClient_assertPresenceForIdentifier_withPresencePayload_assertionOptions_completion___block_invoke_30_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retained presence assertion for presenceIdentifier: %@ (transient)", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)releasePresenceForIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  v8 = a3;
  dispatch_assert_queue_V2(queue);
  v9 = [(SKAPresenceClient *)self clientPrefixedPresenceIdentifierForPresenceIdentifier:v8];

  if (v9)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __61__SKAPresenceClient_releasePresenceForIdentifier_completion___block_invoke;
    v12[3] = &unk_27843F128;
    v14 = v6;
    v12[4] = self;
    v13 = v9;
    [(SKAPresenceClient *)self accountIsPresenceCapableWithCompletion:v12];

    v10 = v14;
  }

  else
  {
    v11 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAPresenceClient assertPresenceForIdentifier:withPresencePayload:assertionOptions:completion:];
    }

    v10 = [SKAError errorWithCode:200];
    (*(v6 + 2))(v6, v10);
  }
}

void __61__SKAPresenceClient_releasePresenceForIdentifier_completion___block_invoke(id *a1, char a2)
{
  if (a2)
  {
    v3 = [a1[4] options];
    v4 = [v3 isDaemonIdleExitEnabled];

    v5 = [a1[4] presenceManager];
    v6 = a1[5];
    v7 = [a1[4] options];
    if (v4)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __61__SKAPresenceClient_releasePresenceForIdentifier_completion___block_invoke_31;
      v14[3] = &unk_27843F0D8;
      v15 = a1[5];
      v16 = a1[6];
      [v5 releasePersistentPresenceAssertionForPresenceIdentifier:v6 options:v7 completion:v14];

      v8 = v15;
    }

    else
    {
      v11[0] = MEMORY[0x277D85DD0];
      v11[1] = 3221225472;
      v11[2] = __61__SKAPresenceClient_releasePresenceForIdentifier_completion___block_invoke_32;
      v11[3] = &unk_27843F0D8;
      v10 = a1[4];
      v12 = a1[5];
      v13 = a1[6];
      [v5 releaseTransientPresenceAssertionForPresenceIdentifier:v6 options:v7 client:v10 completion:v11];

      v8 = v12;
    }
  }

  else
  {
    v9 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __97__SKAPresenceClient_assertPresenceForIdentifier_withPresencePayload_assertionOptions_completion___block_invoke_cold_1();
    }

    v8 = [SKAError errorWithCode:300];
    (*(a1[6] + 2))();
  }
}

void __61__SKAPresenceClient_releasePresenceForIdentifier_completion___block_invoke_31(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAPresenceClient logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__SKAPresenceClient_releasePresenceForIdentifier_completion___block_invoke_31_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully released persistent presence assertion for presenceIdentifier: %@", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

void __61__SKAPresenceClient_releasePresenceForIdentifier_completion___block_invoke_32(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAPresenceClient logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __61__SKAPresenceClient_releasePresenceForIdentifier_completion___block_invoke_32_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully released transient presence assertion for presenceIdentifier: %@", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)fetchHandleInvitability:(id)a3 fromHandle:(id)a4 forPresenceIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  queue = self->_queue;
  v14 = a5;
  dispatch_assert_queue_V2(queue);
  v15 = [(SKAPresenceClient *)self clientPrefixedPresenceIdentifierForPresenceIdentifier:v14];

  if (v15)
  {
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __89__SKAPresenceClient_fetchHandleInvitability_fromHandle_forPresenceIdentifier_completion___block_invoke;
    v18[3] = &unk_27843F100;
    v22 = v12;
    v18[4] = self;
    v19 = v10;
    v20 = v11;
    v21 = v15;
    [(SKAPresenceClient *)self accountIsPresenceCapableWithCompletion:v18];

    v16 = v22;
  }

  else
  {
    v17 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [SKAPresenceClient assertPresenceForIdentifier:withPresencePayload:assertionOptions:completion:];
    }

    v16 = [SKAError errorWithCode:200];
    (*(v12 + 2))(v12, 0, v16);
  }
}

void __89__SKAPresenceClient_fetchHandleInvitability_fromHandle_forPresenceIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) invitationManager];
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __89__SKAPresenceClient_fetchHandleInvitability_fromHandle_forPresenceIdentifier_completion___block_invoke_33;
    v9[3] = &unk_27843F150;
    v6 = *(a1 + 56);
    v10 = *(a1 + 64);
    [v3 fetchHandleInvitability:v4 fromHandle:v5 forPresenceIdentifier:v6 completion:v9];

    v7 = v10;
  }

  else
  {
    v8 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __97__SKAPresenceClient_assertPresenceForIdentifier_withPresencePayload_assertionOptions_completion___block_invoke_cold_1();
    }

    v7 = [SKAError errorWithCode:300];
    (*(*(a1 + 64) + 16))();
  }
}

- (void)fetchPresenceCapability:(id)a3
{
  v4 = a3;
  dispatch_assert_queue_V2(self->_queue);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __45__SKAPresenceClient_fetchPresenceCapability___block_invoke;
  v6[3] = &unk_27843DD10;
  v7 = v4;
  v5 = v4;
  [(SKAPresenceClient *)self accountIsPresenceCapableWithCompletion:v6];
}

uint64_t __45__SKAPresenceClient_fetchPresenceCapability___block_invoke(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = +[SKAPresenceClient logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Presence account check completed with result: %d", v7, 8u);
  }

  result = (*(*(a1 + 32) + 16))();
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)inviteHandles:(id)a3 fromSenderHandle:(id)a4 presenceIdentifier:(id)a5 completion:(id)a6
{
  v31 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_queue);
  v14 = [(SKAPresenceClient *)self options];
  v15 = [v14 isPersonal];

  v16 = +[SKAPresenceClient logger];
  v17 = v16;
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SKAPresenceClient inviteHandles:fromSenderHandle:presenceIdentifier:completion:];
    }

    v18 = [SKAError errorWithCode:904];
    v13[2](v13, v18);
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v28 = v12;
      v29 = 2112;
      v30 = v10;
      _os_log_impl(&dword_220099000, v17, OS_LOG_TYPE_DEFAULT, "Received request to send invitation for presence channel with presence identifier %@ to handles: %@", buf, 0x16u);
    }

    v18 = [(SKAPresenceClient *)self clientPrefixedPresenceIdentifierForPresenceIdentifier:v12];
    if (v18)
    {
      v22[0] = MEMORY[0x277D85DD0];
      v22[1] = 3221225472;
      v22[2] = __82__SKAPresenceClient_inviteHandles_fromSenderHandle_presenceIdentifier_completion___block_invoke;
      v22[3] = &unk_27843F100;
      v26 = v13;
      v22[4] = self;
      v23 = v18;
      v24 = v10;
      v25 = v11;
      [(SKAPresenceClient *)self accountIsPresenceCapableWithCompletion:v22];

      v19 = v26;
    }

    else
    {
      v20 = +[SKAPresenceClient logger];
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        [SKAPresenceClient assertPresenceForIdentifier:withPresencePayload:assertionOptions:completion:];
      }

      v19 = [SKAError errorWithCode:200];
      v13[2](v13, v19);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __82__SKAPresenceClient_inviteHandles_fromSenderHandle_presenceIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) invitationManager];
    v4 = *(a1 + 48);
    v5 = *(a1 + 56);
    v6 = *(a1 + 40);
    v7 = [*(a1 + 32) options];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __82__SKAPresenceClient_inviteHandles_fromSenderHandle_presenceIdentifier_completion___block_invoke_35;
    v10[3] = &unk_27843F178;
    v12 = *(a1 + 64);
    v11 = *(a1 + 48);
    [v3 sendInvitationForPresenceChannelWithPresenceIdentifier:v6 toHandles:v4 fromSenderHandle:v5 options:v7 completion:v10];

    v8 = v12;
  }

  else
  {
    v9 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __82__SKAPresenceClient_inviteHandles_fromSenderHandle_presenceIdentifier_completion___block_invoke_cold_1();
    }

    v8 = [SKAError errorWithCode:300];
    (*(*(a1 + 64) + 16))();
  }
}

void __82__SKAPresenceClient_inviteHandles_fromSenderHandle_presenceIdentifier_completion___block_invoke_35(uint64_t a1, char a2, void *a3)
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = +[SKAPresenceClient logger];
  v7 = v6;
  if (v5 || (a2 & 1) == 0)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __82__SKAPresenceClient_inviteHandles_fromSenderHandle_presenceIdentifier_completion___block_invoke_35_cold_1();
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&dword_220099000, v7, OS_LOG_TYPE_DEFAULT, "Successfully sent invitation to handles: %@", &v10, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v9 = *MEMORY[0x277D85DE8];
}

- (void)invitedHandlesForPresenceIdentifier:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = [(SKAPresenceClient *)self options];
  v9 = [v8 isPersonal];

  if (v9)
  {
    v10 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [SKAPresenceClient inviteHandles:fromSenderHandle:presenceIdentifier:completion:];
    }

    v11 = [SKAError errorWithCode:904];
    v7[2](v7, 0, v11);
  }

  else
  {
    v11 = [(SKAPresenceClient *)self clientPrefixedPresenceIdentifierForPresenceIdentifier:v6];
    if (v11)
    {
      v14[0] = MEMORY[0x277D85DD0];
      v14[1] = 3221225472;
      v14[2] = __68__SKAPresenceClient_invitedHandlesForPresenceIdentifier_completion___block_invoke;
      v14[3] = &unk_27843F128;
      v16 = v7;
      v14[4] = self;
      v15 = v11;
      [(SKAPresenceClient *)self accountIsPresenceCapableWithCompletion:v14];

      v12 = v16;
    }

    else
    {
      v13 = +[SKAPresenceClient logger];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        [SKAPresenceClient assertPresenceForIdentifier:withPresencePayload:assertionOptions:completion:];
      }

      v12 = [SKAError errorWithCode:200];
      v7[2](v7, 0, v12);
    }
  }
}

void __68__SKAPresenceClient_invitedHandlesForPresenceIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  v25 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 32) databaseManager];
    v4 = [v3 newBackgroundContext];

    v5 = [*(a1 + 32) databaseManager];
    v6 = [v5 existingChannelForPresenceIdentifier:*(a1 + 40) isPersonal:0 databaseContext:v4];

    if (v6)
    {
      v7 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v8 = [v6 invitedUsers];
      v9 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v20;
        do
        {
          v12 = 0;
          do
          {
            if (*v20 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = [*(*(&v19 + 1) + 8 * v12) invitedSKHandle];
            if (v13)
            {
              [v7 addObject:v13];
            }

            ++v12;
          }

          while (v10 != v12);
          v10 = [v8 countByEnumeratingWithState:&v19 objects:v24 count:16];
        }

        while (v10);
      }

      v14 = *(a1 + 48);
      v15 = [v7 allObjects];
      (*(v14 + 16))(v14, v15, 0);
    }

    else
    {
      v17 = +[SKAPresenceClient logger];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v17, OS_LOG_TYPE_DEFAULT, "Personal channel does not exist for presence identifier", buf, 2u);
      }

      v7 = [SKAError errorWithCode:901];
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v16 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      __82__SKAPresenceClient_inviteHandles_fromSenderHandle_presenceIdentifier_completion___block_invoke_cold_1();
    }

    v4 = [SKAError errorWithCode:300];
    (*(*(a1 + 48) + 16))();
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)isHandleInvited:(id)a3 fromSenderHandle:(id)a4 forPresenceIdentifier:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  dispatch_assert_queue_V2(self->_queue);
  v14 = [(SKAPresenceClient *)self options];
  v15 = [v14 isPersonal];

  if (v15)
  {
    v16 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [SKAPresenceClient inviteHandles:fromSenderHandle:presenceIdentifier:completion:];
    }

    v17 = [SKAError errorWithCode:904];
    v13[2](v13, 0, v17);
  }

  else
  {
    v17 = [(SKAPresenceClient *)self clientPrefixedPresenceIdentifierForPresenceIdentifier:v12];
    if (v17)
    {
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = __87__SKAPresenceClient_isHandleInvited_fromSenderHandle_forPresenceIdentifier_completion___block_invoke;
      v20[3] = &unk_27843F100;
      v24 = v13;
      v20[4] = self;
      v21 = v17;
      v22 = v11;
      v23 = v10;
      [(SKAPresenceClient *)self accountIsPresenceCapableWithCompletion:v20];

      v18 = v24;
    }

    else
    {
      v19 = +[SKAPresenceClient logger];
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        [SKAPresenceClient assertPresenceForIdentifier:withPresencePayload:assertionOptions:completion:];
      }

      v18 = [SKAError errorWithCode:200];
      v13[2](v13, 0, v18);
    }
  }
}

void __87__SKAPresenceClient_isHandleInvited_fromSenderHandle_forPresenceIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  v37 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = [*(a1 + 32) databaseManager];
    v4 = [v3 newBackgroundContext];

    v5 = [*(a1 + 32) databaseManager];
    v6 = [v5 existingChannelForPresenceIdentifier:*(a1 + 40) isPersonal:0 databaseContext:v4];

    if (v6)
    {
      v7 = [*(a1 + 32) invitationManager];
      v8 = [v7 resolveSenderHandleWithPreferredSenderHandle:*(a1 + 48)];

      if (!v8)
      {
        v23 = +[SKAPresenceClient logger];
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          __87__SKAPresenceClient_isHandleInvited_fromSenderHandle_forPresenceIdentifier_completion___block_invoke_cold_2((a1 + 48));
        }

        v24 = [SKAError errorWithCode:500];
        (*(*(a1 + 64) + 16))();

        goto LABEL_33;
      }

      v26 = v6;
      v27 = v4;
      v30 = 0u;
      v31 = 0u;
      v28 = 0u;
      v29 = 0u;
      v9 = [v6 invitedUsers];
      v10 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v29;
        while (2)
        {
          for (i = 0; i != v11; ++i)
          {
            if (*v29 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v28 + 1) + 8 * i);
            v15 = [v14 invitedSKHandle];
            if ([*(a1 + 56) isNormalizedEqualToHandle:v15])
            {
              v16 = [v14 senderSKHandle];
              v17 = [v8 isNormalizedEqualToHandle:v16];
              v18 = +[SKAPresenceClient logger];
              v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
              if (v17)
              {
                if (v19)
                {
                  *buf = 0;
                  _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "We found a match to an existing invited user", buf, 2u);
                }

                goto LABEL_31;
              }

              if (v19)
              {
                *buf = 138412546;
                v33 = v16;
                v34 = 2112;
                v35 = v8;
                _os_log_impl(&dword_220099000, v18, OS_LOG_TYPE_DEFAULT, "We found an existing invitated user matching the requested user, but that invitation was sent with handle %@ instead of handle %@. Ignoring.", buf, 0x16u);
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v11)
          {
            continue;
          }

          break;
        }
      }

      v9 = +[SKAPresenceClient logger];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "We did not find a match to any existing invited user", buf, 2u);
      }

LABEL_31:
      v6 = v26;
      v4 = v27;

      v22 = *(*(a1 + 64) + 16);
    }

    else
    {
      v21 = +[SKAPresenceClient logger];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v21, OS_LOG_TYPE_DEFAULT, "Personal channel does not exist for presence identifier", buf, 2u);
      }

      v8 = [SKAError errorWithCode:901];
      v22 = *(*(a1 + 64) + 16);
    }

    v22();
LABEL_33:

    goto LABEL_34;
  }

  v20 = +[SKAPresenceClient logger];
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    __82__SKAPresenceClient_inviteHandles_fromSenderHandle_presenceIdentifier_completion___block_invoke_cold_1();
  }

  v4 = [SKAError errorWithCode:300];
  (*(*(a1 + 64) + 16))();
LABEL_34:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)registerForDelegateCallbacksWithPresenceIdentifier:(id)a3 options:(id)a4 completion:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = +[SKAPresenceClient logger];
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v21 = v8;
    _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Registering for delegate callbacks with presence identifier %@", buf, 0xCu);
  }

  v12 = [(SKAPresenceClient *)self clientPrefixedPresenceIdentifierForPresenceIdentifier:v8];
  if (v12)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __91__SKAPresenceClient_registerForDelegateCallbacksWithPresenceIdentifier_options_completion___block_invoke;
    v16[3] = &unk_27843F1A0;
    v19 = v10;
    v16[4] = self;
    v17 = v12;
    v18 = v9;
    [(SKAPresenceClient *)self accountIsPresenceCapableWithCompletion:v16];

    v13 = v19;
  }

  else
  {
    v14 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      [SKAPresenceClient assertPresenceForIdentifier:withPresencePayload:assertionOptions:completion:];
    }

    v13 = [SKAError errorWithCode:200];
    (*(v10 + 2))(v10, v13);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __91__SKAPresenceClient_registerForDelegateCallbacksWithPresenceIdentifier_options_completion___block_invoke(uint64_t a1, char a2)
{
  v24 = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 32);
    objc_sync_enter(v3);
    v4 = [*(a1 + 40) copy];
    [*(a1 + 32) setPresenceIdentifier:v4];

    v5 = [*(a1 + 48) copy];
    [*(a1 + 32) setOptions:v5];

    v6 = *(a1 + 32);
    if (!v6[9])
    {
      v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"com.apple.statuskit.presence.%@", *(a1 + 40)];
      v8 = +[SKAPresenceClient logger];
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v21 = v7;
        _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "SKATransaction: Creating transaction {%@}", buf, 0xCu);
      }

      v9 = v7;
      [v7 cStringUsingEncoding:4];
      v10 = os_transaction_create();
      v11 = *(a1 + 32);
      v12 = *(v11 + 72);
      *(v11 + 72) = v10;

      v6 = *(a1 + 32);
    }

    v13 = [v6 delegate];
    [v13 drainUpdatesForPresenceIdentifier:*(a1 + 40)];

    objc_sync_exit(v3);
    v14 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      *buf = 138412546;
      v21 = v15;
      v22 = 2112;
      v23 = v16;
      _os_log_impl(&dword_220099000, v14, OS_LOG_TYPE_DEFAULT, "Client %@ has registered for delegate callbacks for presence identifier: %@.", buf, 0x16u);
    }

    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v17 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      __82__SKAPresenceClient_inviteHandles_fromSenderHandle_presenceIdentifier_completion___block_invoke_cold_1();
    }

    v18 = [SKAError errorWithCode:300];
    (*(*(a1 + 56) + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)removeInvitedHandles:(id)a3 presenceIdentifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatch_assert_queue_V2(self->_queue);
  v11 = [(SKAPresenceClient *)self options];
  v12 = [v11 isPersonal];

  if (v12)
  {
    v13 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [SKAPresenceClient removeInvitedHandles:presenceIdentifier:completion:];
    }

    v14 = [SKAError errorWithCode:904];
    v10[2](v10, v14);
  }

  else
  {
    v14 = [(SKAPresenceClient *)self clientPrefixedPresenceIdentifierForPresenceIdentifier:v9];
    if (v14)
    {
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __72__SKAPresenceClient_removeInvitedHandles_presenceIdentifier_completion___block_invoke;
      v17[3] = &unk_27843F1A0;
      v20 = v10;
      v17[4] = self;
      v18 = v14;
      v19 = v8;
      [(SKAPresenceClient *)self accountIsPresenceCapableWithCompletion:v17];

      v15 = v20;
    }

    else
    {
      v16 = +[SKAPresenceClient logger];
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        [SKAPresenceClient assertPresenceForIdentifier:withPresencePayload:assertionOptions:completion:];
      }

      v15 = [SKAError errorWithCode:200];
      v10[2](v10, v15);
    }
  }
}

void __72__SKAPresenceClient_removeInvitedHandles_presenceIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) invitationManager];
    v5 = *(a1 + 40);
    v4 = *(a1 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __72__SKAPresenceClient_removeInvitedHandles_presenceIdentifier_completion___block_invoke_41;
    v8[3] = &unk_27843F0D8;
    v9 = v4;
    v10 = *(a1 + 56);
    [v3 revokeInvitationFromPresenceChannelWithPresenceIdentifier:v5 forHandles:v9 completion:v8];

    v6 = v9;
  }

  else
  {
    v7 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __82__SKAPresenceClient_inviteHandles_fromSenderHandle_presenceIdentifier_completion___block_invoke_cold_1();
    }

    v6 = [SKAError errorWithCode:300];
    (*(*(a1 + 56) + 16))();
  }
}

void __72__SKAPresenceClient_removeInvitedHandles_presenceIdentifier_completion___block_invoke_41(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAPresenceClient logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __72__SKAPresenceClient_removeInvitedHandles_presenceIdentifier_completion___block_invoke_41_cold_1(a1);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Invitation revocation for handles %@ completed successfully", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v7 = *MEMORY[0x277D85DE8];
}

- (void)retainTransientSubscriptionAssertionForPresenceIdentifier:(id)a3 completion:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = +[SKAPresenceClient logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = v6;
    _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Retaining transient subscription assertion for presence identifier %@", buf, 0xCu);
  }

  v9 = [(SKAPresenceClient *)self clientPrefixedPresenceIdentifierForPresenceIdentifier:v6];
  if (v9)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __90__SKAPresenceClient_retainTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke;
    v13[3] = &unk_27843F1A0;
    v17 = v7;
    v14 = v6;
    v15 = self;
    v16 = v9;
    [(SKAPresenceClient *)self accountIsPresenceCapableWithCompletion:v13];

    v10 = v17;
  }

  else
  {
    v11 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAPresenceClient assertPresenceForIdentifier:withPresencePayload:assertionOptions:completion:];
    }

    v10 = [SKAError errorWithCode:200];
    (*(v7 + 2))(v7, v10);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __90__SKAPresenceClient_retainTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = +[SKAPresenceClient logger];
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Account is presence capable, finding channel for identifier %@", buf, 0xCu);
    }

    v7 = [*(a1 + 40) databaseManager];
    v8 = [v7 newBackgroundContext];

    v9 = [*(a1 + 40) presenceManager];
    v10 = *(a1 + 48);
    v11 = [*(a1 + 40) options];
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 3221225472;
    v14[2] = __90__SKAPresenceClient_retainTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_42;
    v14[3] = &unk_27843DCE8;
    v15 = *(a1 + 48);
    v12 = *(a1 + 56);
    v16 = *(a1 + 40);
    v17 = v12;
    [v9 findOrCreatePresenceChannelForPresenceIdentifier:v10 options:v11 databaseContext:v8 completion:v14];
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __97__SKAPresenceClient_assertPresenceForIdentifier_withPresencePayload_assertionOptions_completion___block_invoke_cold_1();
    }

    v8 = [SKAError errorWithCode:300];
    (*(*(a1 + 56) + 16))();
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __90__SKAPresenceClient_retainTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_42(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __90__SKAPresenceClient_retainTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_42_cold_1(a1);
    }

    (*(a1[6] + 2))();
  }

  else
  {
    v8 = [a1[5] options];
    v9 = [v8 isDaemonIdleExitEnabled];

    if (v9)
    {
      v10 = +[SKAPresenceClient logger];
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Clearing transaction to allow StatusKitAgent to idle-exit", buf, 2u);
      }

      v11 = a1[5];
      v12 = v11[9];
      v11[9] = 0;

      v13 = [a1[5] subscriptionManager];
      v14 = a1[4];
      v15 = [v5 identifier];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __90__SKAPresenceClient_retainTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_43;
      v28[3] = &unk_27843F1C8;
      v29 = v5;
      v30 = a1[4];
      v16 = a1[6];
      v31 = a1[5];
      v32 = v16;
      [v13 retainPersistentPresenceSubscriptionForPresenceIdentifier:v14 channelIdentifier:v15 completion:v28];

      v17 = v29;
    }

    else
    {
      v18 = [a1[5] subscriptionManager];
      v19 = a1[4];
      v20 = [v5 identifier];
      v21 = a1[5];
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __90__SKAPresenceClient_retainTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_2;
      v23[3] = &unk_27843F1C8;
      v24 = v5;
      v25 = a1[4];
      v22 = a1[6];
      v26 = a1[5];
      v27 = v22;
      [v18 retainTransientPresenceSubscriptionForPresenceIdentifier:v19 channelIdentifier:v20 client:v21 completion:v23];

      v17 = v24;
    }
  }
}

void __90__SKAPresenceClient_retainTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_43(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAPresenceClient logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __90__SKAPresenceClient_retainTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_43_cold_1();
    }

    v6 = *(*(a1 + 56) + 16);
    goto LABEL_9;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) identifier];
    v8 = *(a1 + 40);
    *buf = 138412546;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retained presence subscription assertion for channelIdentifier: %@ presenceIdentifier: %@", buf, 0x16u);
  }

  if ([*(a1 + 48) activeAssertion])
  {
    v6 = *(*(a1 + 56) + 16);
LABEL_9:
    v6();
    goto LABEL_10;
  }

  v10 = +[SKAPresenceClient logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Polling for current state as there is no active assertion", buf, 2u);
  }

  v11 = [*(a1 + 48) presenceManager];
  v12 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__SKAPresenceClient_retainTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_44;
  v13[3] = &unk_27843F090;
  v14 = *(a1 + 56);
  [v11 pollAndUpdatePresentDevicesForChannel:v12 completion:v13];

LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
}

void __90__SKAPresenceClient_retainTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAPresenceClient logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __90__SKAPresenceClient_retainTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_43_cold_1();
    }

    v6 = *(*(a1 + 56) + 16);
    goto LABEL_9;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [*(a1 + 32) identifier];
    v8 = *(a1 + 40);
    *buf = 138412546;
    v16 = v7;
    v17 = 2112;
    v18 = v8;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully retained presence subscription assertion for channelIdentifier: %@ presenceIdentifier: %@", buf, 0x16u);
  }

  if ([*(a1 + 48) activeAssertion])
  {
    v6 = *(*(a1 + 56) + 16);
LABEL_9:
    v6();
    goto LABEL_10;
  }

  v10 = +[SKAPresenceClient logger];
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v10, OS_LOG_TYPE_DEFAULT, "Polling for current state as there is no active assertion", buf, 2u);
  }

  v11 = [*(a1 + 48) presenceManager];
  v12 = *(a1 + 32);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__SKAPresenceClient_retainTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_45;
  v13[3] = &unk_27843F090;
  v14 = *(a1 + 56);
  [v11 pollAndUpdatePresentDevicesForChannel:v12 completion:v13];

LABEL_10:
  v9 = *MEMORY[0x277D85DE8];
}

- (void)releaseTransientSubscriptionAssertionForPresenceIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  v8 = a3;
  dispatch_assert_queue_V2(queue);
  v9 = [(SKAPresenceClient *)self clientPrefixedPresenceIdentifierForPresenceIdentifier:v8];

  if (v9)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __91__SKAPresenceClient_releaseTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke;
    v12[3] = &unk_27843F128;
    v14 = v6;
    v12[4] = self;
    v13 = v9;
    [(SKAPresenceClient *)self accountIsPresenceCapableWithCompletion:v12];

    v10 = v14;
  }

  else
  {
    v11 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAPresenceClient assertPresenceForIdentifier:withPresencePayload:assertionOptions:completion:];
    }

    v10 = [SKAError errorWithCode:200];
    (*(v6 + 2))(v6, v10);
  }
}

void __91__SKAPresenceClient_releaseTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke(id *a1, char a2)
{
  if (a2)
  {
    v3 = [a1[4] databaseManager];
    v4 = [v3 newBackgroundContext];

    v5 = [a1[4] presenceManager];
    v6 = a1[5];
    v7 = [a1[4] options];
    v8 = [v7 isPersonal];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __91__SKAPresenceClient_releaseTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_47;
    v11[3] = &unk_27843DCE8;
    v12 = a1[5];
    v9 = a1[6];
    v13 = a1[4];
    v14 = v9;
    [v5 findPresenceChannelForPresenceIdentifier:v6 isPersonal:v8 databaseContext:v4 completion:v11];
  }

  else
  {
    v10 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __97__SKAPresenceClient_assertPresenceForIdentifier_withPresencePayload_assertionOptions_completion___block_invoke_cold_1();
    }

    v4 = [SKAError errorWithCode:300];
    (*(a1[6] + 2))();
  }
}

void __91__SKAPresenceClient_releaseTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_47(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __91__SKAPresenceClient_releaseTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_47_cold_1(a1);
    }

    (*(a1[6] + 2))();
  }

  else if (v5)
  {
    v8 = [a1[5] options];
    v9 = [v8 isDaemonIdleExitEnabled];

    v10 = [a1[5] subscriptionManager];
    if (v9)
    {
      v11 = a1[4];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __91__SKAPresenceClient_releaseTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_48;
      v21[3] = &unk_27843ED48;
      v22 = v5;
      v23 = a1[4];
      v24 = a1[6];
      [v10 releasePersistentPresenceSubscriptionForPresenceIdentifier:v11 completion:v21];

      v12 = v22;
    }

    else
    {
      v15 = [v5 identifier];
      v16 = a1[5];
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __91__SKAPresenceClient_releaseTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_49;
      v17[3] = &unk_27843ED48;
      v18 = v5;
      v19 = a1[4];
      v20 = a1[6];
      [v10 releaseTransientPresenceSubscriptionForChannelIdentifier:v15 client:v16 completion:v17];

      v12 = v18;
    }
  }

  else
  {
    v13 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      __91__SKAPresenceClient_releaseTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_47_cold_2(a1);
    }

    v14 = [SKAError errorWithCode:901];
    (*(a1[6] + 2))();
  }
}

void __91__SKAPresenceClient_releaseTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_48(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAPresenceClient logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __90__SKAPresenceClient_retainTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_43_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) identifier];
    v7 = *(a1 + 40);
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully released presence subscription assertion for channelIdentifier: %@ presenceIdentifier: %@", &v9, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

void __91__SKAPresenceClient_releaseTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_49(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[SKAPresenceClient logger];
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __90__SKAPresenceClient_retainTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_43_cold_1();
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [*(a1 + 32) identifier];
    v7 = *(a1 + 40);
    v9 = 138412546;
    v10 = v6;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Successfully released presence subscription assertion for channelIdentifier: %@ presenceIdentifier: %@", &v9, 0x16u);
  }

  (*(*(a1 + 48) + 16))();
  v8 = *MEMORY[0x277D85DE8];
}

- (void)presentDevicesForPresenceIdentifier:(id)a3 completion:(id)a4
{
  v6 = a4;
  queue = self->_queue;
  v8 = a3;
  dispatch_assert_queue_V2(queue);
  v9 = [(SKAPresenceClient *)self clientPrefixedPresenceIdentifierForPresenceIdentifier:v8];

  if (v9)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __68__SKAPresenceClient_presentDevicesForPresenceIdentifier_completion___block_invoke;
    v13[3] = &unk_27843F128;
    v15 = v6;
    v13[4] = self;
    v14 = v9;
    [(SKAPresenceClient *)self accountIsPresenceCapableWithCompletion:v13];

    v10 = v15;
  }

  else
  {
    v11 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAPresenceClient assertPresenceForIdentifier:withPresencePayload:assertionOptions:completion:];
    }

    v10 = [SKAError errorWithCode:200];
    v12 = objc_alloc_init(MEMORY[0x277CBEA60]);
    (*(v6 + 2))(v6, v12, v10);
  }
}

void __68__SKAPresenceClient_presentDevicesForPresenceIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  if (a2)
  {
    v3 = [*(a1 + 32) presenceManager];
    v4 = *(a1 + 40);
    v5 = [*(a1 + 32) options];
    v6 = [v5 isPersonal];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __68__SKAPresenceClient_presentDevicesForPresenceIdentifier_completion___block_invoke_51;
    v11[3] = &unk_27843F1F0;
    v12 = *(a1 + 48);
    [v3 presentDevicesForPresenceIdentifier:v4 isPersonal:v6 completion:v11];

    v7 = v12;
  }

  else
  {
    v8 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __97__SKAPresenceClient_assertPresenceForIdentifier_withPresencePayload_assertionOptions_completion___block_invoke_cold_1();
    }

    v7 = [SKAError errorWithCode:300];
    v9 = *(a1 + 48);
    v10 = objc_alloc_init(MEMORY[0x277CBEA60]);
    (*(v9 + 16))(v9, v10, v7);
  }
}

void __68__SKAPresenceClient_presentDevicesForPresenceIdentifier_completion___block_invoke_51(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8 = v5;
  if (v5)
  {
    v7 = objc_alloc_init(MEMORY[0x277CBEA60]);
    (*(v6 + 16))(v6, v7, v8);
  }

  else
  {
    (*(v6 + 16))(v6, a2, 0);
  }
}

- (void)rollChannelForPresenceIdentifier:(id)a3 completion:(id)a4
{
  v19 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  dispatch_assert_queue_V2(self->_queue);
  v8 = +[SKAPresenceClient logger];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = v6;
    _os_log_impl(&dword_220099000, v8, OS_LOG_TYPE_DEFAULT, "Rolling presence channel for presence identifier %@", buf, 0xCu);
  }

  v9 = [(SKAPresenceClient *)self clientPrefixedPresenceIdentifierForPresenceIdentifier:v6];
  if (v9)
  {
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 3221225472;
    v13[2] = __65__SKAPresenceClient_rollChannelForPresenceIdentifier_completion___block_invoke;
    v13[3] = &unk_27843F128;
    v16 = v7;
    v14 = v9;
    v15 = self;
    [(SKAPresenceClient *)self accountIsPresenceCapableWithCompletion:v13];

    v10 = v16;
  }

  else
  {
    v11 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [SKAPresenceClient assertPresenceForIdentifier:withPresencePayload:assertionOptions:completion:];
    }

    v10 = [SKAError errorWithCode:200];
    (*(v7 + 2))(v7, v10);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __65__SKAPresenceClient_rollChannelForPresenceIdentifier_completion___block_invoke(uint64_t a1, char a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = +[SKAPresenceClient logger];
  v5 = v4;
  if (a2)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = [*(a1 + 40) options];
      v8 = [v7 isPersonal];
      v9 = @"NO";
      if (v8)
      {
        v9 = @"YES";
      }

      *buf = 138412546;
      v19 = v6;
      v20 = 2112;
      v21 = v9;
      _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Account is presence capable, rolling channel { clientPrefixedIdentifier: %@, isPersonal: %@ }", buf, 0x16u);
    }

    v10 = [*(a1 + 40) invitationManager];
    v11 = *(a1 + 32);
    v12 = [*(a1 + 40) options];
    v13 = [v12 isPersonal];
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __65__SKAPresenceClient_rollChannelForPresenceIdentifier_completion___block_invoke_59;
    v16[3] = &unk_27843DD10;
    v17 = *(a1 + 48);
    [v10 rollPresenceChannelWithPresenceIdentifier:v11 isPersonal:v13 completion:v16];

    v14 = v17;
  }

  else
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __97__SKAPresenceClient_assertPresenceForIdentifier_withPresencePayload_assertionOptions_completion___block_invoke_cold_1();
    }

    v14 = [SKAError errorWithCode:300];
    (*(*(a1 + 48) + 16))();
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __65__SKAPresenceClient_rollChannelForPresenceIdentifier_completion___block_invoke_59(uint64_t a1, int a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = +[SKAPresenceClient logger];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7[0] = 67109120;
    v7[1] = a2;
    _os_log_impl(&dword_220099000, v4, OS_LOG_TYPE_DEFAULT, "Finished rolling channel with success %d", v7, 8u);
  }

  if (a2)
  {
    v5 = 0;
  }

  else
  {
    v5 = [SKAError errorWithCode:9999];
  }

  (*(*(a1 + 32) + 16))();

  v6 = *MEMORY[0x277D85DE8];
}

- (id)clientPrefixedPresenceIdentifierForPresenceIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(SKAPresenceClient *)self clientConnection];
    v6 = [v5 clientID];

    if (v6)
    {
      v7 = [(SKAPresenceClient *)self _shortHashOfClientID:v6];
      v8 = [objc_alloc(MEMORY[0x277CCAB68]) initWithFormat:@"%@-%@-%@", v6, v4, v7];
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)rawPresenceIdentifierForPrefixedPresenceIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 length] >= 4)
  {
    v7 = [(SKAPresenceClient *)self clientConnection];
    v8 = [v7 clientID];

    if (v8)
    {
      v9 = [(SKAPresenceClient *)self _shortHashOfClientID:v8];
      v10 = [v5 componentsSeparatedByString:@"-"];
      v11 = [v10 firstObject];
      if ([v11 isEqualToString:v8])
      {
        v12 = [v10 lastObject];
        if ([v12 isEqualToString:v9])
        {
          v13 = [v10 subarrayWithRange:{1, objc_msgSend(v10, "count") - 2}];
          v6 = [v13 componentsJoinedByString:@"-"];
        }

        else
        {
          v6 = 0;
        }
      }

      else
      {
        v6 = 0;
      }
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_shortHashOfClientID:(id)a3
{
  v3 = [a3 ska_sha256Hash];
  v4 = [v3 substringToIndex:4];

  return v4;
}

- (void)accountIsPresenceCapableWithCompletion:(id)a3
{
  v4 = a3;
  v5 = +[SKAPresenceClient logger];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_220099000, v5, OS_LOG_TYPE_DEFAULT, "Checking if account is presence capable...", buf, 2u);
  }

  v6 = self;
  objc_sync_enter(v6);
  v7 = [(SKAPresenceClient *)v6 databaseManager];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __60__SKAPresenceClient_accountIsPresenceCapableWithCompletion___block_invoke;
  v9[3] = &unk_27843DE28;
  v9[4] = v6;
  v8 = v4;
  v10 = v8;
  [v7 deviceToDeviceEncryptedDatabaseCapableWithCompletion:v9];

  objc_sync_exit(v6);
}

void __60__SKAPresenceClient_accountIsPresenceCapableWithCompletion___block_invoke(uint64_t a1, char a2)
{
  v4 = [*(a1 + 32) queue];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __60__SKAPresenceClient_accountIsPresenceCapableWithCompletion___block_invoke_2;
  v5[3] = &unk_27843F218;
  v6 = *(a1 + 40);
  v7 = a2;
  dispatch_async(v4, v5);
}

- (BOOL)presenceIdentifierMatchesClient:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = v5->_presenceIdentifier;
  objc_sync_exit(v5);

  if (-[NSString length](v6, "length") || [v4 length])
  {
    v7 = [v4 isEqualToString:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)handleReceivedPresentDevicesUpdate:(id)a3 forPresenceIdentifier:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(SKAPresenceClient *)self presenceIdentifierMatchesClient:v7];
  v9 = +[SKAPresenceClient logger];
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      v16 = 138543362;
      v17 = v7;
      _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Notifying client of updated present devices. Presence: %{public}@", &v16, 0xCu);
    }

    v11 = +[SKAPresenceClient logger];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 count];
      v16 = 134218242;
      v17 = v12;
      v18 = 2112;
      v19 = v6;
      _os_log_impl(&dword_220099000, v11, OS_LOG_TYPE_DEFAULT, "Retrieved present devices. (%lu) %@", &v16, 0x16u);
    }

    v9 = [(SKAPresenceClientConnection *)self->_clientConnection asynchronousRemoteDaemonDelegateWithErrorHandler:&__block_literal_global_68];
    v13 = [(SKAPresenceClient *)self rawPresenceIdentifierForPrefixedPresenceIdentifier:v7];
    [v9 presentHandlesChangedForPresenceIdentifier:v13 completion:&__block_literal_global_71];
  }

  else if (v10)
  {
    presenceIdentifier = self->_presenceIdentifier;
    v16 = 138412546;
    v17 = presenceIdentifier;
    v18 = 2112;
    v19 = v7;
    _os_log_impl(&dword_220099000, v9, OS_LOG_TYPE_DEFAULT, "Connected client does not match presence identifier of changed channel. Client: %@ Presence: %@", &v16, 0x16u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __78__SKAPresenceClient_handleReceivedPresentDevicesUpdate_forPresenceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SKAPresenceClient logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __78__SKAPresenceClient_handleReceivedPresentDevicesUpdate_forPresenceIdentifier___block_invoke_cold_1();
  }
}

void __78__SKAPresenceClient_handleReceivedPresentDevicesUpdate_forPresenceIdentifier___block_invoke_69()
{
  v0 = +[SKAPresenceClient logger];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_220099000, v0, OS_LOG_TYPE_DEFAULT, "Connected client completed processing of present devices update.", v1, 2u);
  }
}

- (void)handleReceivedInvitationForPresenceIdentifier:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(SKAPresenceClient *)self presenceIdentifierMatchesClient:v4];
  v6 = +[SKAPresenceClient logger];
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      LOWORD(v11) = 0;
      _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Notifying client of updated invitations", &v11, 2u);
    }

    v6 = [(SKAPresenceClientConnection *)self->_clientConnection asynchronousRemoteDaemonDelegateWithErrorHandler:&__block_literal_global_73];
    v8 = [(SKAPresenceClient *)self rawPresenceIdentifierForPrefixedPresenceIdentifier:v4];
    [v6 invitedHandlesChangedForPresenceIdentifier:v8 completion:&__block_literal_global_76];
  }

  else if (v7)
  {
    presenceIdentifier = self->_presenceIdentifier;
    v11 = 138412546;
    v12 = presenceIdentifier;
    v13 = 2112;
    v14 = v4;
    _os_log_impl(&dword_220099000, v6, OS_LOG_TYPE_DEFAULT, "Connected client does not match presence identifier of changed channel. Client: %@ Presence: %@", &v11, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __67__SKAPresenceClient_handleReceivedInvitationForPresenceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SKAPresenceClient logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __67__SKAPresenceClient_handleReceivedInvitationForPresenceIdentifier___block_invoke_cold_1();
  }
}

void __67__SKAPresenceClient_handleReceivedInvitationForPresenceIdentifier___block_invoke_74()
{
  v0 = +[SKAPresenceClient logger];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_220099000, v0, OS_LOG_TYPE_DEFAULT, "Connected client completed processing of invited handles update.", v1, 2u);
  }
}

- (void)initialCloudKitImportReceived
{
  v3 = +[SKAPresenceClient logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_220099000, v3, OS_LOG_TYPE_DEFAULT, "Notifying client of initial CloudKit import.", v5, 2u);
  }

  v4 = [(SKAPresenceClientConnection *)self->_clientConnection asynchronousRemoteDaemonDelegateWithErrorHandler:&__block_literal_global_78];
  [v4 initialCloudKitImportReceivedWithCompletion:&__block_literal_global_81];
}

void __50__SKAPresenceClient_initialCloudKitImportReceived__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = +[SKAPresenceClient logger];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    __50__SKAPresenceClient_initialCloudKitImportReceived__block_invoke_cold_1();
  }
}

void __50__SKAPresenceClient_initialCloudKitImportReceived__block_invoke_79()
{
  v0 = +[SKAPresenceClient logger];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v1 = 0;
    _os_log_impl(&dword_220099000, v0, OS_LOG_TYPE_DEFAULT, "Connected client completed processing of initial CloudKit import.", v1, 2u);
  }
}

- (SKAPresenceClientDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __74__SKAPresenceClient__releaseAllSubscriptionsAndAssertionsForDisconnection__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __74__SKAPresenceClient__releaseAllSubscriptionsAndAssertionsForDisconnection__block_invoke_9_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __74__SKAPresenceClient__releaseAllSubscriptionsAndAssertionsForDisconnection__block_invoke_12_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __74__SKAPresenceClient__releaseAllSubscriptionsAndAssertionsForDisconnection__block_invoke_15_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __97__SKAPresenceClient_assertPresenceForIdentifier_withPresencePayload_assertionOptions_completion___block_invoke_29_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4(&dword_220099000, v1, v2, "Error retaining persistent presence assertion for presenceIdentifier: %@ error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __97__SKAPresenceClient_assertPresenceForIdentifier_withPresencePayload_assertionOptions_completion___block_invoke_30_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4(&dword_220099000, v1, v2, "Error retaining transient presence assertion for presenceIdentifier: %@ error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __61__SKAPresenceClient_releasePresenceForIdentifier_completion___block_invoke_31_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4(&dword_220099000, v1, v2, "Error releasing persistent presence assertion for presenceIdentifier: %@ error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __61__SKAPresenceClient_releasePresenceForIdentifier_completion___block_invoke_32_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4(&dword_220099000, v1, v2, "Error releasing transient presence assertion for presenceIdentifier: %@ error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __82__SKAPresenceClient_inviteHandles_fromSenderHandle_presenceIdentifier_completion___block_invoke_35_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __87__SKAPresenceClient_isHandleInvited_fromSenderHandle_forPresenceIdentifier_completion___block_invoke_cold_2(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __72__SKAPresenceClient_removeInvitedHandles_presenceIdentifier_completion___block_invoke_41_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4(&dword_220099000, v1, v2, "Invitation revocation for handles %@ failed with error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __90__SKAPresenceClient_retainTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_42_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4(&dword_220099000, v1, v2, "Unable to find or create channel for presenceIdentifier: %@ error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __90__SKAPresenceClient_retainTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_43_cold_1()
{
  OUTLINED_FUNCTION_8_0();
  v1 = *MEMORY[0x277D85DE8];
  [OUTLINED_FUNCTION_11(v2) identifier];
  objc_claimAutoreleasedReturnValue();
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_1_3();
  OUTLINED_FUNCTION_7_0(&dword_220099000, v3, v4, "Error retaining presence subscription assertion for channelIdentifier: %@ presenceIdentifier: %@ error: %@", v5, v6, v7, v8, v10);

  v9 = *MEMORY[0x277D85DE8];
}

void __91__SKAPresenceClient_releaseTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_47_cold_1(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_4(&dword_220099000, v1, v2, "Unable to find channel for presenceIdentifier: %@ error: %@");
  v3 = *MEMORY[0x277D85DE8];
}

void __91__SKAPresenceClient_releaseTransientSubscriptionAssertionForPresenceIdentifier_completion___block_invoke_47_cold_2(uint64_t a1)
{
  OUTLINED_FUNCTION_8(a1, *MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

void __78__SKAPresenceClient_handleReceivedPresentDevicesUpdate_forPresenceIdentifier___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __67__SKAPresenceClient_handleReceivedInvitationForPresenceIdentifier___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __50__SKAPresenceClient_initialCloudKitImportReceived__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end