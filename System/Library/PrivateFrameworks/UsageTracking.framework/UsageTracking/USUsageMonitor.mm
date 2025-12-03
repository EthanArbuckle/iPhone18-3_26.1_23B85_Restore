@interface USUsageMonitor
- (BOOL)startMonitoringBudgets:(id)budgets darwinNotificationName:(id)name notificationTimes:(id)times error:(id *)error;
- (USUsageMonitor)init;
- (id)checkStatusOfBudgets:(id)budgets clientIdentifiers:(id)identifiers error:(id *)error;
- (id)checkStatusOfBudgets:(id)budgets error:(id *)error;
- (void)checkStatusOfAllBudgetsWithCompletionHandler:(id)handler;
- (void)checkStatusOfBudgets:(id)budgets clientIdentifier:(id)identifier completionHandler:(id)handler;
- (void)checkStatusOfBudgets:(id)budgets clientIdentifiers:(id)identifiers completionHandler:(id)handler;
- (void)checkStatusOfBudgets:(id)budgets completionHandler:(id)handler;
- (void)dealloc;
- (void)startMonitoringBudgets:(id)budgets darwinNotificationName:(id)name notificationTimes:(id)times clientIdentifier:(id)identifier completionHandler:(id)handler;
- (void)stopMonitoringAllBudgetsWithCompletionHandler:(id)handler;
- (void)stopMonitoringBudgets:(id)budgets clientIdentifier:(id)identifier completionHandler:(id)handler;
@end

@implementation USUsageMonitor

- (USUsageMonitor)init
{
  v6.receiver = self;
  v6.super_class = USUsageMonitor;
  v2 = [(USUsageMonitor *)&v6 init];
  v3 = +[USTrackingAgentPrivateConnection newConnection];
  xpcConnection = v2->_xpcConnection;
  v2->_xpcConnection = v3;

  [(NSXPCConnection *)v2->_xpcConnection resume];
  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_xpcConnection invalidate];
  v3.receiver = self;
  v3.super_class = USUsageMonitor;
  [(USUsageMonitor *)&v3 dealloc];
}

- (void)startMonitoringBudgets:(id)budgets darwinNotificationName:(id)name notificationTimes:(id)times clientIdentifier:(id)identifier completionHandler:(id)handler
{
  budgetsCopy = budgets;
  nameCopy = name;
  timesCopy = times;
  identifierCopy = identifier;
  handlerCopy = handler;
  xpcConnection = [(USUsageMonitor *)self xpcConnection];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __117__USUsageMonitor_startMonitoringBudgets_darwinNotificationName_notificationTimes_clientIdentifier_completionHandler___block_invoke;
  v23[3] = &unk_279E09A30;
  v24 = budgetsCopy;
  v25 = nameCopy;
  v26 = timesCopy;
  v27 = identifierCopy;
  selfCopy = self;
  v29 = handlerCopy;
  v18 = handlerCopy;
  v19 = identifierCopy;
  v20 = timesCopy;
  v21 = nameCopy;
  v22 = budgetsCopy;
  [USXPCRemoteObjectProxy proxyFromConnection:xpcConnection withRetryCount:1 proxyHandler:v23];
}

void __117__USUsageMonitor_startMonitoringBudgets_darwinNotificationName_notificationTimes_clientIdentifier_completionHandler___block_invoke(void *a1, void *a2)
{
  if (a2)
  {
    v4 = a1[4];
    v5 = a1[5];
    v6 = a1[6];
    v7 = a1[7];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __117__USUsageMonitor_startMonitoringBudgets_darwinNotificationName_notificationTimes_clientIdentifier_completionHandler___block_invoke_2;
    v10[3] = &unk_279E09A08;
    v8 = a1[9];
    v10[4] = a1[8];
    v11 = v8;
    [a2 startMonitoringBudgets:v4 darwinNotificationName:v5 notificationTimes:v6 clientIdentifier:v7 replyHandler:v10];
  }

  else
  {
    v9 = *(a1[9] + 16);

    v9();
  }
}

- (BOOL)startMonitoringBudgets:(id)budgets darwinNotificationName:(id)name notificationTimes:(id)times error:(id *)error
{
  budgetsCopy = budgets;
  nameCopy = name;
  timesCopy = times;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  xpcConnection = [(USUsageMonitor *)self xpcConnection];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __88__USUsageMonitor_startMonitoringBudgets_darwinNotificationName_notificationTimes_error___block_invoke;
  v20[3] = &unk_279E09A80;
  v14 = budgetsCopy;
  v21 = v14;
  v15 = nameCopy;
  v22 = v15;
  v16 = timesCopy;
  v23 = v16;
  v24 = &v25;
  [USXPCRemoteObjectProxy synchronousProxyFromConnection:xpcConnection withRetryCount:1 proxyHandler:v20];

  v17 = v26[5];
  if (error && v17)
  {
    v17 = v17;
    *error = v17;
  }

  v18 = v17 == 0;

  _Block_object_dispose(&v25, 8);
  return v18;
}

void __88__USUsageMonitor_startMonitoringBudgets_darwinNotificationName_notificationTimes_error___block_invoke(void *a1, void *a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = a1[4];
    v8 = a1[5];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __88__USUsageMonitor_startMonitoringBudgets_darwinNotificationName_notificationTimes_error___block_invoke_2;
    v10[3] = &unk_279E09A58;
    v9 = a1[6];
    v10[4] = a1[7];
    [a2 startMonitoringBudgets:v7 darwinNotificationName:v8 notificationTimes:v9 clientIdentifier:0 replyHandler:v10];
  }

  else
  {
    objc_storeStrong((*(a1[7] + 8) + 40), a3);
  }
}

- (void)stopMonitoringBudgets:(id)budgets clientIdentifier:(id)identifier completionHandler:(id)handler
{
  budgetsCopy = budgets;
  identifierCopy = identifier;
  handlerCopy = handler;
  xpcConnection = [(USUsageMonitor *)self xpcConnection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__USUsageMonitor_stopMonitoringBudgets_clientIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_279E09AA8;
  v16 = budgetsCopy;
  v17 = identifierCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = budgetsCopy;
  [USXPCRemoteObjectProxy proxyFromConnection:xpcConnection withRetryCount:1 proxyHandler:v15];
}

void __75__USUsageMonitor_stopMonitoringBudgets_clientIdentifier_completionHandler___block_invoke(void *a1, void *a2)
{
  if (a2)
  {
    v4 = a1[4];
    v5 = a1[5];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __75__USUsageMonitor_stopMonitoringBudgets_clientIdentifier_completionHandler___block_invoke_2;
    v8[3] = &unk_279E09A08;
    v6 = a1[7];
    v8[4] = a1[6];
    v9 = v6;
    [a2 stopMonitoringBudgets:v4 clientIdentifier:v5 replyHandler:v8];
  }

  else
  {
    v7 = *(a1[7] + 16);

    v7();
  }
}

- (void)stopMonitoringAllBudgetsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(USUsageMonitor *)self xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__USUsageMonitor_stopMonitoringAllBudgetsWithCompletionHandler___block_invoke;
  v7[3] = &unk_279E09AD0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [USXPCRemoteObjectProxy proxyFromConnection:xpcConnection withRetryCount:1 proxyHandler:v7];
}

void __64__USUsageMonitor_stopMonitoringAllBudgetsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __64__USUsageMonitor_stopMonitoringAllBudgetsWithCompletionHandler___block_invoke_2;
    v6[3] = &unk_279E09A08;
    v4 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v7 = v4;
    [a2 stopMonitoringAllBudgetsWithReplyHandler:v6];
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

- (void)checkStatusOfBudgets:(id)budgets completionHandler:(id)handler
{
  handlerCopy = handler;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__USUsageMonitor_checkStatusOfBudgets_completionHandler___block_invoke;
  v8[3] = &unk_279E09AF8;
  v9 = handlerCopy;
  v7 = handlerCopy;
  [(USUsageMonitor *)self checkStatusOfBudgets:budgets clientIdentifier:0 completionHandler:v8];
}

void __57__USUsageMonitor_checkStatusOfBudgets_completionHandler___block_invoke(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v12 = a2;
  v9 = a5;
  v10 = *(a1 + 32);
  if (v12)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjects:v9 forKeys:v12];
    (*(v10 + 16))(v10, v11, 0);
  }

  else
  {
    (*(v10 + 16))(v10, 0, a6);
  }
}

- (void)checkStatusOfBudgets:(id)budgets clientIdentifier:(id)identifier completionHandler:(id)handler
{
  budgetsCopy = budgets;
  identifierCopy = identifier;
  handlerCopy = handler;
  xpcConnection = [(USUsageMonitor *)self xpcConnection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__USUsageMonitor_checkStatusOfBudgets_clientIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_279E09AA8;
  v16 = budgetsCopy;
  v17 = identifierCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifierCopy;
  v14 = budgetsCopy;
  [USXPCRemoteObjectProxy proxyFromConnection:xpcConnection withRetryCount:1 proxyHandler:v15];
}

void __74__USUsageMonitor_checkStatusOfBudgets_clientIdentifier_completionHandler___block_invoke(void *a1, void *a2)
{
  if (a2)
  {
    v4 = a1[4];
    v5 = a1[5];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __74__USUsageMonitor_checkStatusOfBudgets_clientIdentifier_completionHandler___block_invoke_2;
    v8[3] = &unk_279E09B20;
    v6 = a1[7];
    v8[4] = a1[6];
    v9 = v6;
    [a2 checkStatusOfBudgets:v4 clientIdentifier:v5 replyHandler:v8];
  }

  else
  {
    v7 = *(a1[7] + 16);

    v7();
  }
}

- (id)checkStatusOfBudgets:(id)budgets error:(id *)error
{
  budgetsCopy = budgets;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy_;
  v26 = __Block_byref_object_dispose_;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy_;
  v20 = __Block_byref_object_dispose_;
  v21 = 0;
  xpcConnection = [(USUsageMonitor *)self xpcConnection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__USUsageMonitor_checkStatusOfBudgets_error___block_invoke;
  v12[3] = &unk_279E09B70;
  v8 = budgetsCopy;
  v13 = v8;
  v14 = &v22;
  v15 = &v16;
  [USXPCRemoteObjectProxy synchronousProxyFromConnection:xpcConnection withRetryCount:1 proxyHandler:v12];

  v9 = v23[5];
  if (error && !v9)
  {
    *error = v17[5];
    v9 = v23[5];
  }

  v10 = v9;

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void __45__USUsageMonitor_checkStatusOfBudgets_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __45__USUsageMonitor_checkStatusOfBudgets_error___block_invoke_2;
    v8[3] = &unk_279E09B48;
    v9 = *(a1 + 40);
    [a2 checkStatusOfBudgets:v7 clientIdentifier:0 replyHandler:v8];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }
}

void __45__USUsageMonitor_checkStatusOfBudgets_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v16 = a2;
  v9 = a5;
  v10 = a6;
  if (v16)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjects:v9 forKeys:v16];
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v14 = *(*(a1 + 40) + 8);
    v15 = v10;
    v13 = *(v14 + 40);
    *(v14 + 40) = v15;
  }
}

- (void)checkStatusOfAllBudgetsWithCompletionHandler:(id)handler
{
  handlerCopy = handler;
  xpcConnection = [(USUsageMonitor *)self xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__USUsageMonitor_checkStatusOfAllBudgetsWithCompletionHandler___block_invoke;
  v7[3] = &unk_279E09AD0;
  v7[4] = self;
  v8 = handlerCopy;
  v6 = handlerCopy;
  [USXPCRemoteObjectProxy proxyFromConnection:xpcConnection withRetryCount:1 proxyHandler:v7];
}

void __63__USUsageMonitor_checkStatusOfAllBudgetsWithCompletionHandler___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __63__USUsageMonitor_checkStatusOfAllBudgetsWithCompletionHandler___block_invoke_2;
    v6[3] = &unk_279E09B20;
    v4 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v7 = v4;
    [a2 checkStatusOfAllBudgetsWithReplyHandler:v6];
  }

  else
  {
    v5 = *(*(a1 + 40) + 16);

    v5();
  }
}

- (void)checkStatusOfBudgets:(id)budgets clientIdentifiers:(id)identifiers completionHandler:(id)handler
{
  budgetsCopy = budgets;
  identifiersCopy = identifiers;
  handlerCopy = handler;
  xpcConnection = [(USUsageMonitor *)self xpcConnection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__USUsageMonitor_checkStatusOfBudgets_clientIdentifiers_completionHandler___block_invoke;
  v15[3] = &unk_279E09AA8;
  v16 = budgetsCopy;
  v17 = identifiersCopy;
  selfCopy = self;
  v19 = handlerCopy;
  v12 = handlerCopy;
  v13 = identifiersCopy;
  v14 = budgetsCopy;
  [USXPCRemoteObjectProxy proxyFromConnection:xpcConnection withRetryCount:1 proxyHandler:v15];
}

void __75__USUsageMonitor_checkStatusOfBudgets_clientIdentifiers_completionHandler___block_invoke(void *a1, void *a2)
{
  if (a2)
  {
    v4 = a1[4];
    v5 = a1[5];
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __75__USUsageMonitor_checkStatusOfBudgets_clientIdentifiers_completionHandler___block_invoke_2;
    v8[3] = &unk_279E09B20;
    v6 = a1[7];
    v8[4] = a1[6];
    v9 = v6;
    [a2 checkStatusOfBudgets:v4 clientIdentifiers:v5 replyHandler:v8];
  }

  else
  {
    v7 = *(a1[7] + 16);

    v7();
  }
}

- (id)checkStatusOfBudgets:(id)budgets clientIdentifiers:(id)identifiers error:(id *)error
{
  budgetsCopy = budgets;
  identifiersCopy = identifiers;
  v27 = 0;
  v28 = &v27;
  v29 = 0x3032000000;
  v30 = __Block_byref_object_copy_;
  v31 = __Block_byref_object_dispose_;
  v32 = 0;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy_;
  v25 = __Block_byref_object_dispose_;
  v26 = 0;
  xpcConnection = [(USUsageMonitor *)self xpcConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__USUsageMonitor_checkStatusOfBudgets_clientIdentifiers_error___block_invoke;
  v16[3] = &unk_279E09B98;
  v11 = budgetsCopy;
  v17 = v11;
  v12 = identifiersCopy;
  v18 = v12;
  v19 = &v27;
  v20 = &v21;
  [USXPCRemoteObjectProxy synchronousProxyFromConnection:xpcConnection withRetryCount:1 proxyHandler:v16];

  v13 = v28[5];
  if (error && !v13)
  {
    *error = v22[5];
    v13 = v28[5];
  }

  v14 = v13;

  _Block_object_dispose(&v21, 8);
  _Block_object_dispose(&v27, 8);

  return v14;
}

void __63__USUsageMonitor_checkStatusOfBudgets_clientIdentifiers_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (a2)
  {
    v7 = *(a1 + 32);
    v8 = *(a1 + 40);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __63__USUsageMonitor_checkStatusOfBudgets_clientIdentifiers_error___block_invoke_2;
    v9[3] = &unk_279E09B48;
    v10 = *(a1 + 48);
    [a2 checkStatusOfBudgets:v7 clientIdentifiers:v8 replyHandler:v9];
  }

  else
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a3);
  }
}

void __63__USUsageMonitor_checkStatusOfBudgets_clientIdentifiers_error___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v16 = a2;
  v9 = a5;
  v10 = a6;
  if (v16)
  {
    v11 = [objc_alloc(MEMORY[0x277CBEAC0]) initWithObjects:v9 forKeys:v16];
    v12 = *(*(a1 + 32) + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    v14 = *(*(a1 + 40) + 8);
    v15 = v10;
    v13 = *(v14 + 40);
    *(v14 + 40) = v15;
  }
}

@end