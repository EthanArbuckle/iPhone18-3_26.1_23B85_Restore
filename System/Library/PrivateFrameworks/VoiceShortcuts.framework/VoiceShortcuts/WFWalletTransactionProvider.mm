@interface WFWalletTransactionProvider
+ (id)sharedProvider;
- (BOOL)transactionIsValid:(id)valid;
- (NPKCompanionAgentConnection)remotePaymentServiceConnection;
- (PKPaymentService)paymentService;
- (WFWalletTransactionProvider)init;
- (void)fetchLocalTransactionWithIdentifier:(id)identifier completion:(id)completion;
- (void)fetchRemoteTransactionWithIdentifier:(id)identifier passUniqueID:(id)d completion:(id)completion;
- (void)observeForUpdatesWithInitialTransactionIfNeeded:(id)needed transactionIdentifier:(id)identifier completion:(id)completion;
- (void)queue_endTransactionIfNeeded;
- (void)queue_finishWithPaymentTransaction:(id)transaction;
- (void)queue_takeTransactionIfNeeded;
- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction;
@end

@implementation WFWalletTransactionProvider

- (BOOL)transactionIsValid:(id)valid
{
  validCopy = valid;
  merchant = [validCopy merchant];
  displayName = [merchant displayName];
  if (displayName)
  {
    v6 = 1;
  }

  else
  {
    merchantProvidedTitle = [validCopy merchantProvidedTitle];
    v6 = [merchantProvidedTitle length] != 0;
  }

  return v6;
}

- (void)transactionSourceIdentifier:(id)identifier didReceiveTransaction:(id)transaction
{
  transactionCopy = transaction;
  queue = [(WFWalletTransactionProvider *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __81__WFWalletTransactionProvider_transactionSourceIdentifier_didReceiveTransaction___block_invoke;
  v8[3] = &unk_2788FFFC0;
  v8[4] = self;
  v9 = transactionCopy;
  v7 = transactionCopy;
  dispatch_async(queue, v8);
}

void __81__WFWalletTransactionProvider_transactionSourceIdentifier_didReceiveTransaction___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) requests];
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 objectForKeyedSubscript:v3];

  if (v4)
  {
    v5 = [*(a1 + 32) transactionIsValid:*(a1 + 40)];
    v6 = getWFTriggersLogObject();
    v7 = v6;
    if (v5)
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = *(a1 + 40);
        v10 = 136315394;
        v11 = "[WFWalletTransactionProvider transactionSourceIdentifier:didReceiveTransaction:]_block_invoke";
        v12 = 2112;
        v13 = v8;
        _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_DEFAULT, "%s Found valid payment transaction (%@) finishing.", &v10, 0x16u);
      }

      [*(a1 + 32) queue_finishWithPaymentTransaction:*(a1 + 40)];
    }

    else
    {
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v10 = 136315138;
        v11 = "[WFWalletTransactionProvider transactionSourceIdentifier:didReceiveTransaction:]_block_invoke";
        _os_log_impl(&dword_23103C000, v7, OS_LOG_TYPE_ERROR, "%s Found valid transaction but it was incomplete, waiting.", &v10, 0xCu);
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)queue_finishWithPaymentTransaction:(id)transaction
{
  transactionCopy = transaction;
  queue = [(WFWalletTransactionProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  timers = [(WFWalletTransactionProvider *)self timers];
  identifier = [transactionCopy identifier];
  v15 = [timers objectForKey:identifier];

  [v15 cancel];
  timers2 = [(WFWalletTransactionProvider *)self timers];
  identifier2 = [transactionCopy identifier];
  [timers2 removeObjectForKey:identifier2];

  requests = [(WFWalletTransactionProvider *)self requests];
  identifier3 = [transactionCopy identifier];
  v12 = [requests objectForKeyedSubscript:identifier3];

  requests2 = [(WFWalletTransactionProvider *)self requests];
  identifier4 = [transactionCopy identifier];
  [requests2 removeObjectForKey:identifier4];

  (v12)[2](v12, transactionCopy, 0);
  [(WFWalletTransactionProvider *)self queue_endTransactionIfNeeded];
}

- (void)queue_endTransactionIfNeeded
{
  queue = [(WFWalletTransactionProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  transaction = [(WFWalletTransactionProvider *)self transaction];
  if (transaction)
  {
    v5 = transaction;
    requests = [(WFWalletTransactionProvider *)self requests];
    v7 = [requests count];

    if (!v7)
    {
      transaction2 = [(WFWalletTransactionProvider *)self transaction];
    }
  }
}

- (void)queue_takeTransactionIfNeeded
{
  queue = [(WFWalletTransactionProvider *)self queue];
  dispatch_assert_queue_V2(queue);

  transaction = [(WFWalletTransactionProvider *)self transaction];

  if (!transaction)
  {
    v5 = os_transaction_create();
    [(WFWalletTransactionProvider *)self setTransaction:v5];
  }
}

- (void)observeForUpdatesWithInitialTransactionIfNeeded:(id)needed transactionIdentifier:(id)identifier completion:(id)completion
{
  neededCopy = needed;
  identifierCopy = identifier;
  completionCopy = completion;
  queue = [(WFWalletTransactionProvider *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __112__WFWalletTransactionProvider_observeForUpdatesWithInitialTransactionIfNeeded_transactionIdentifier_completion___block_invoke;
  v15[3] = &unk_2788FF468;
  v15[4] = self;
  v16 = neededCopy;
  v17 = identifierCopy;
  v18 = completionCopy;
  v12 = identifierCopy;
  v13 = completionCopy;
  v14 = neededCopy;
  dispatch_async(queue, v15);
}

void __112__WFWalletTransactionProvider_observeForUpdatesWithInitialTransactionIfNeeded_transactionIdentifier_completion___block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  if ([*(a1 + 32) transactionIsValid:*(a1 + 40)])
  {
    v2 = getWFTriggersLogObject();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = *(a1 + 40);
      *buf = 136315394;
      v22 = "[WFWalletTransactionProvider observeForUpdatesWithInitialTransactionIfNeeded:transactionIdentifier:completion:]_block_invoke";
      v23 = 2112;
      v24 = v3;
      _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_DEFAULT, "%s Found valid payment transaction (%@) returning", buf, 0x16u);
    }

    [*(a1 + 32) queue_endTransactionIfNeeded];
    v4 = *(a1 + 40);
    (*(*(a1 + 56) + 16))();
  }

  else
  {
    v5 = [*(a1 + 56) copy];
    v6 = _Block_copy(v5);
    v7 = [*(a1 + 32) requests];
    [v7 setObject:v6 forKeyedSubscript:*(a1 + 48)];

    v8 = objc_alloc(MEMORY[0x277CD4300]);
    v9 = [*(a1 + 32) queue];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __112__WFWalletTransactionProvider_observeForUpdatesWithInitialTransactionIfNeeded_transactionIdentifier_completion___block_invoke_228;
    v17[3] = &unk_2789000F8;
    v10 = *(a1 + 48);
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    v18 = v10;
    v19 = v11;
    v20 = v12;
    v13 = [v8 initWithTimeoutInterval:v9 onQueue:v17 timeoutHandler:60.0];

    [v13 start];
    v14 = [*(a1 + 32) timers];
    [v14 setObject:v13 forKey:*(a1 + 48)];

    v15 = getWFTriggersLogObject();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      v22 = "[WFWalletTransactionProvider observeForUpdatesWithInitialTransactionIfNeeded:transactionIdentifier:completion:]_block_invoke";
      _os_log_impl(&dword_23103C000, v15, OS_LOG_TYPE_DEFAULT, "%s Did not find valid payment transaction waiting...", buf, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

uint64_t __112__WFWalletTransactionProvider_observeForUpdatesWithInitialTransactionIfNeeded_transactionIdentifier_completion___block_invoke_228(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = getWFTriggersLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[WFWalletTransactionProvider observeForUpdatesWithInitialTransactionIfNeeded:transactionIdentifier:completion:]_block_invoke";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_ERROR, "%s Hit timeout waiting for transaction with identifier: %@, finishing.", &v6, 0x16u);
  }

  result = [*(a1 + 40) queue_finishWithPaymentTransaction:*(a1 + 48)];
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)fetchRemoteTransactionWithIdentifier:(id)identifier passUniqueID:(id)d completion:(id)completion
{
  identifierCopy = identifier;
  dCopy = d;
  completionCopy = completion;
  queue = [(WFWalletTransactionProvider *)self queue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __92__WFWalletTransactionProvider_fetchRemoteTransactionWithIdentifier_passUniqueID_completion___block_invoke;
  v15[3] = &unk_2788FF468;
  v15[4] = self;
  v16 = dCopy;
  v17 = identifierCopy;
  v18 = completionCopy;
  v12 = identifierCopy;
  v13 = completionCopy;
  v14 = dCopy;
  dispatch_async(queue, v15);
}

void __92__WFWalletTransactionProvider_fetchRemoteTransactionWithIdentifier_passUniqueID_completion___block_invoke(id *a1)
{
  [a1[4] queue_takeTransactionIfNeeded];
  v2 = [a1[4] remotePaymentServiceConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__WFWalletTransactionProvider_fetchRemoteTransactionWithIdentifier_passUniqueID_completion___block_invoke_2;
  v7[3] = &unk_2788FE340;
  v6 = *(a1 + 2);
  v3 = *(&v6 + 1);
  v4 = a1[7];
  *&v5 = a1[6];
  *(&v5 + 1) = v4;
  v8 = v6;
  v9 = v5;
  [v2 paymentPassWithUniqueID:v3 synchronous:0 reply:v7];
}

void __92__WFWalletTransactionProvider_fetchRemoteTransactionWithIdentifier_passUniqueID_completion___block_invoke_2(id *a1, void *a2)
{
  v3 = a2;
  if (!v3)
  {
    v4 = [a1[4] queue];
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __92__WFWalletTransactionProvider_fetchRemoteTransactionWithIdentifier_passUniqueID_completion___block_invoke_3;
    block[3] = &unk_2788FFF98;
    v5 = a1[5];
    v6 = a1[4];
    v17 = v5;
    v18 = v6;
    v19 = a1[7];
    dispatch_async(v4, block);
  }

  v7 = [v3 deviceTransactionSourceIdentifiers];
  v8 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1800.0];
  objc_initWeak(&location, a1[4]);
  v9 = [a1[4] remotePaymentServiceConnection];
  v10 = [MEMORY[0x277CBEAA8] now];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __92__WFWalletTransactionProvider_fetchRemoteTransactionWithIdentifier_passUniqueID_completion___block_invoke_222;
  v11[3] = &unk_2788FE318;
  objc_copyWeak(&v14, &location);
  v12 = a1[6];
  v13 = a1[7];
  [v9 transactionsForTransactionSourceIdentifiers:v7 withTransactionSource:0 withBackingData:0 startDate:v8 endDate:v10 orderedByDate:1 limit:10 completion:v11];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

uint64_t __92__WFWalletTransactionProvider_fetchRemoteTransactionWithIdentifier_passUniqueID_completion___block_invoke_3(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = getWFTriggersLogObject();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v6 = 136315394;
    v7 = "[WFWalletTransactionProvider fetchRemoteTransactionWithIdentifier:passUniqueID:completion:]_block_invoke_3";
    v8 = 2112;
    v9 = v3;
    _os_log_impl(&dword_23103C000, v2, OS_LOG_TYPE_ERROR, "%s Failed to get pass with id: %@", &v6, 0x16u);
  }

  [*(a1 + 40) queue_endTransactionIfNeeded];
  result = (*(*(a1 + 48) + 16))();
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

void __92__WFWalletTransactionProvider_fetchRemoteTransactionWithIdentifier_passUniqueID_completion___block_invoke_222(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = [v3 allObjects];

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __92__WFWalletTransactionProvider_fetchRemoteTransactionWithIdentifier_passUniqueID_completion___block_invoke_2_223;
  v7[3] = &unk_2788FE2F0;
  v8 = *(a1 + 32);
  v6 = [v5 if_firstObjectPassingTest:v7];

  [WeakRetained observeForUpdatesWithInitialTransactionIfNeeded:v6 transactionIdentifier:*(a1 + 32) completion:*(a1 + 40)];
}

uint64_t __92__WFWalletTransactionProvider_fetchRemoteTransactionWithIdentifier_passUniqueID_completion___block_invoke_2_223(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 identifier];
  v4 = v2;
  v5 = v3;
  v6 = v5;
  if (v4 == v5)
  {
    v8 = 1;
  }

  else
  {
    if (v4)
    {
      v7 = v5 == 0;
    }

    else
    {
      v7 = 1;
    }

    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = [v4 isEqualToString:v5];
    }
  }

  return v8;
}

- (void)fetchLocalTransactionWithIdentifier:(id)identifier completion:(id)completion
{
  identifierCopy = identifier;
  completionCopy = completion;
  queue = [(WFWalletTransactionProvider *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __78__WFWalletTransactionProvider_fetchLocalTransactionWithIdentifier_completion___block_invoke;
  block[3] = &unk_2788FFF98;
  block[4] = self;
  v12 = identifierCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = identifierCopy;
  dispatch_async(queue, block);
}

void __78__WFWalletTransactionProvider_fetchLocalTransactionWithIdentifier_completion___block_invoke(id *a1)
{
  [a1[4] queue_takeTransactionIfNeeded];
  objc_initWeak(&location, a1[4]);
  v2 = [a1[4] paymentService];
  v3 = a1[5];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __78__WFWalletTransactionProvider_fetchLocalTransactionWithIdentifier_completion___block_invoke_2;
  v4[3] = &unk_2788FE2C8;
  objc_copyWeak(&v7, &location);
  v5 = a1[5];
  v6 = a1[6];
  [v2 transactionWithTransactionIdentifier:v3 completion:v4];

  objc_destroyWeak(&v7);
  objc_destroyWeak(&location);
}

void __78__WFWalletTransactionProvider_fetchLocalTransactionWithIdentifier_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  [WeakRetained observeForUpdatesWithInitialTransactionIfNeeded:v3 transactionIdentifier:*(a1 + 32) completion:*(a1 + 40)];
}

- (NPKCompanionAgentConnection)remotePaymentServiceConnection
{
  remotePaymentServiceConnection = self->_remotePaymentServiceConnection;
  if (!remotePaymentServiceConnection)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getNPKCompanionAgentConnectionClass_softClass;
    v13 = getNPKCompanionAgentConnectionClass_softClass;
    if (!getNPKCompanionAgentConnectionClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getNPKCompanionAgentConnectionClass_block_invoke;
      v9[3] = &unk_2788FFE98;
      v9[4] = &v10;
      __getNPKCompanionAgentConnectionClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = objc_alloc_init(v4);
    v7 = self->_remotePaymentServiceConnection;
    self->_remotePaymentServiceConnection = v6;

    [(NPKCompanionAgentConnection *)self->_remotePaymentServiceConnection setDelegate:self];
    remotePaymentServiceConnection = self->_remotePaymentServiceConnection;
  }

  return remotePaymentServiceConnection;
}

- (PKPaymentService)paymentService
{
  paymentService = self->_paymentService;
  if (!paymentService)
  {
    v10 = 0;
    v11 = &v10;
    v12 = 0x2050000000;
    v4 = getPKPaymentServiceClass_softClass;
    v13 = getPKPaymentServiceClass_softClass;
    if (!getPKPaymentServiceClass_softClass)
    {
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __getPKPaymentServiceClass_block_invoke;
      v9[3] = &unk_2788FFE98;
      v9[4] = &v10;
      __getPKPaymentServiceClass_block_invoke(v9);
      v4 = v11[3];
    }

    v5 = v4;
    _Block_object_dispose(&v10, 8);
    v6 = [[v4 alloc] initWithDelegate:self];
    v7 = self->_paymentService;
    self->_paymentService = v6;

    paymentService = self->_paymentService;
  }

  return paymentService;
}

- (WFWalletTransactionProvider)init
{
  v13.receiver = self;
  v13.super_class = WFWalletTransactionProvider;
  v2 = [(WFWalletTransactionProvider *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_attr_make_with_qos_class(v3, QOS_CLASS_USER_INITIATED, 0);

    v5 = dispatch_queue_create("com.apple.shortcuts.queue.WFWalletTransactionProvider", v4);
    queue = v2->_queue;
    v2->_queue = v5;

    v7 = objc_opt_new();
    requests = v2->_requests;
    v2->_requests = v7;

    v9 = objc_opt_new();
    timers = v2->_timers;
    v2->_timers = v9;

    v11 = v2;
  }

  return v2;
}

+ (id)sharedProvider
{
  if (sharedProvider_onceToken != -1)
  {
    dispatch_once(&sharedProvider_onceToken, &__block_literal_global_156);
  }

  v3 = sharedProvider_provider;

  return v3;
}

uint64_t __45__WFWalletTransactionProvider_sharedProvider__block_invoke()
{
  sharedProvider_provider = objc_alloc_init(WFWalletTransactionProvider);

  return MEMORY[0x2821F96F8]();
}

@end