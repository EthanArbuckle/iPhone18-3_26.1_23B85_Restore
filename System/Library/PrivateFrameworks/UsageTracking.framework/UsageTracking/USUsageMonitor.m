@interface USUsageMonitor
- (BOOL)startMonitoringBudgets:(id)a3 darwinNotificationName:(id)a4 notificationTimes:(id)a5 error:(id *)a6;
- (USUsageMonitor)init;
- (id)checkStatusOfBudgets:(id)a3 clientIdentifiers:(id)a4 error:(id *)a5;
- (id)checkStatusOfBudgets:(id)a3 error:(id *)a4;
- (void)checkStatusOfAllBudgetsWithCompletionHandler:(id)a3;
- (void)checkStatusOfBudgets:(id)a3 clientIdentifier:(id)a4 completionHandler:(id)a5;
- (void)checkStatusOfBudgets:(id)a3 clientIdentifiers:(id)a4 completionHandler:(id)a5;
- (void)checkStatusOfBudgets:(id)a3 completionHandler:(id)a4;
- (void)dealloc;
- (void)startMonitoringBudgets:(id)a3 darwinNotificationName:(id)a4 notificationTimes:(id)a5 clientIdentifier:(id)a6 completionHandler:(id)a7;
- (void)stopMonitoringAllBudgetsWithCompletionHandler:(id)a3;
- (void)stopMonitoringBudgets:(id)a3 clientIdentifier:(id)a4 completionHandler:(id)a5;
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

- (void)startMonitoringBudgets:(id)a3 darwinNotificationName:(id)a4 notificationTimes:(id)a5 clientIdentifier:(id)a6 completionHandler:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = [(USUsageMonitor *)self xpcConnection];
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __117__USUsageMonitor_startMonitoringBudgets_darwinNotificationName_notificationTimes_clientIdentifier_completionHandler___block_invoke;
  v23[3] = &unk_279E09A30;
  v24 = v12;
  v25 = v13;
  v26 = v14;
  v27 = v15;
  v28 = self;
  v29 = v16;
  v18 = v16;
  v19 = v15;
  v20 = v14;
  v21 = v13;
  v22 = v12;
  [USXPCRemoteObjectProxy proxyFromConnection:v17 withRetryCount:1 proxyHandler:v23];
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

- (BOOL)startMonitoringBudgets:(id)a3 darwinNotificationName:(id)a4 notificationTimes:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy_;
  v29 = __Block_byref_object_dispose_;
  v30 = 0;
  v13 = [(USUsageMonitor *)self xpcConnection];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __88__USUsageMonitor_startMonitoringBudgets_darwinNotificationName_notificationTimes_error___block_invoke;
  v20[3] = &unk_279E09A80;
  v14 = v10;
  v21 = v14;
  v15 = v11;
  v22 = v15;
  v16 = v12;
  v23 = v16;
  v24 = &v25;
  [USXPCRemoteObjectProxy synchronousProxyFromConnection:v13 withRetryCount:1 proxyHandler:v20];

  v17 = v26[5];
  if (a6 && v17)
  {
    v17 = v17;
    *a6 = v17;
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

- (void)stopMonitoringBudgets:(id)a3 clientIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(USUsageMonitor *)self xpcConnection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__USUsageMonitor_stopMonitoringBudgets_clientIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_279E09AA8;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [USXPCRemoteObjectProxy proxyFromConnection:v11 withRetryCount:1 proxyHandler:v15];
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

- (void)stopMonitoringAllBudgetsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(USUsageMonitor *)self xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__USUsageMonitor_stopMonitoringAllBudgetsWithCompletionHandler___block_invoke;
  v7[3] = &unk_279E09AD0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [USXPCRemoteObjectProxy proxyFromConnection:v5 withRetryCount:1 proxyHandler:v7];
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

- (void)checkStatusOfBudgets:(id)a3 completionHandler:(id)a4
{
  v6 = a4;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __57__USUsageMonitor_checkStatusOfBudgets_completionHandler___block_invoke;
  v8[3] = &unk_279E09AF8;
  v9 = v6;
  v7 = v6;
  [(USUsageMonitor *)self checkStatusOfBudgets:a3 clientIdentifier:0 completionHandler:v8];
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

- (void)checkStatusOfBudgets:(id)a3 clientIdentifier:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(USUsageMonitor *)self xpcConnection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __74__USUsageMonitor_checkStatusOfBudgets_clientIdentifier_completionHandler___block_invoke;
  v15[3] = &unk_279E09AA8;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [USXPCRemoteObjectProxy proxyFromConnection:v11 withRetryCount:1 proxyHandler:v15];
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

- (id)checkStatusOfBudgets:(id)a3 error:(id *)a4
{
  v6 = a3;
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
  v7 = [(USUsageMonitor *)self xpcConnection];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __45__USUsageMonitor_checkStatusOfBudgets_error___block_invoke;
  v12[3] = &unk_279E09B70;
  v8 = v6;
  v13 = v8;
  v14 = &v22;
  v15 = &v16;
  [USXPCRemoteObjectProxy synchronousProxyFromConnection:v7 withRetryCount:1 proxyHandler:v12];

  v9 = v23[5];
  if (a4 && !v9)
  {
    *a4 = v17[5];
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

- (void)checkStatusOfAllBudgetsWithCompletionHandler:(id)a3
{
  v4 = a3;
  v5 = [(USUsageMonitor *)self xpcConnection];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __63__USUsageMonitor_checkStatusOfAllBudgetsWithCompletionHandler___block_invoke;
  v7[3] = &unk_279E09AD0;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [USXPCRemoteObjectProxy proxyFromConnection:v5 withRetryCount:1 proxyHandler:v7];
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

- (void)checkStatusOfBudgets:(id)a3 clientIdentifiers:(id)a4 completionHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(USUsageMonitor *)self xpcConnection];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __75__USUsageMonitor_checkStatusOfBudgets_clientIdentifiers_completionHandler___block_invoke;
  v15[3] = &unk_279E09AA8;
  v16 = v8;
  v17 = v9;
  v18 = self;
  v19 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  [USXPCRemoteObjectProxy proxyFromConnection:v11 withRetryCount:1 proxyHandler:v15];
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

- (id)checkStatusOfBudgets:(id)a3 clientIdentifiers:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
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
  v10 = [(USUsageMonitor *)self xpcConnection];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __63__USUsageMonitor_checkStatusOfBudgets_clientIdentifiers_error___block_invoke;
  v16[3] = &unk_279E09B98;
  v11 = v8;
  v17 = v11;
  v12 = v9;
  v18 = v12;
  v19 = &v27;
  v20 = &v21;
  [USXPCRemoteObjectProxy synchronousProxyFromConnection:v10 withRetryCount:1 proxyHandler:v16];

  v13 = v28[5];
  if (a5 && !v13)
  {
    *a5 = v22[5];
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