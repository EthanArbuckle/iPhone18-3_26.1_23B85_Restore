@interface USXPCRemoteObjectProxy
+ (void)proxyFromConnection:(id)a3 withRetryCount:(unint64_t)a4 proxyHandler:(id)a5;
+ (void)synchronousProxyFromConnection:(id)a3 withRetryCount:(unint64_t)a4 proxyHandler:(id)a5;
@end

@implementation USXPCRemoteObjectProxy

+ (void)proxyFromConnection:(id)a3 withRetryCount:(unint64_t)a4 proxyHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __74__USXPCRemoteObjectProxy_proxyFromConnection_withRetryCount_proxyHandler___block_invoke;
  v13[3] = &unk_279E0A6E0;
  v16 = a4;
  v17 = a1;
  v14 = v8;
  v15 = v9;
  v10 = v9;
  v11 = v8;
  v12 = [v11 remoteObjectProxyWithErrorHandler:v13];
  v10[2](v10, v12, 0);
}

void __74__USXPCRemoteObjectProxy_proxyFromConnection_withRetryCount_proxyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __74__USXPCRemoteObjectProxy_proxyFromConnection_withRetryCount_proxyHandler___block_invoke_cold_1(a1);
  }

  if (!*(a1 + 48))
  {
    goto LABEL_8;
  }

  v4 = [v3 domain];
  if (([v4 isEqualToString:*MEMORY[0x277CCA050]] & 1) == 0)
  {

    goto LABEL_8;
  }

  v5 = [v3 code];

  if (v5 != 4097)
  {
LABEL_8:
    (*(*(a1 + 40) + 16))();
    goto LABEL_9;
  }

  [*(a1 + 56) proxyFromConnection:*(a1 + 32) withRetryCount:*(a1 + 48) - 1 proxyHandler:*(a1 + 40)];
LABEL_9:
}

+ (void)synchronousProxyFromConnection:(id)a3 withRetryCount:(unint64_t)a4 proxyHandler:(id)a5
{
  v8 = a3;
  v9 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __85__USXPCRemoteObjectProxy_synchronousProxyFromConnection_withRetryCount_proxyHandler___block_invoke;
  v13[3] = &unk_279E0A6E0;
  v16 = a4;
  v17 = a1;
  v14 = v8;
  v15 = v9;
  v10 = v9;
  v11 = v8;
  v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[2](v10, v12, 0);
}

void __85__USXPCRemoteObjectProxy_synchronousProxyFromConnection_withRetryCount_proxyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    __74__USXPCRemoteObjectProxy_proxyFromConnection_withRetryCount_proxyHandler___block_invoke_cold_1(a1);
  }

  if (!*(a1 + 48))
  {
    goto LABEL_8;
  }

  v4 = [v3 domain];
  if (([v4 isEqualToString:*MEMORY[0x277CCA050]] & 1) == 0)
  {

    goto LABEL_8;
  }

  v5 = [v3 code];

  if (v5 != 4097)
  {
LABEL_8:
    (*(*(a1 + 40) + 16))();
    goto LABEL_9;
  }

  [*(a1 + 56) synchronousProxyFromConnection:*(a1 + 32) withRetryCount:*(a1 + 48) - 1 proxyHandler:*(a1 + 40)];
LABEL_9:
}

void __74__USXPCRemoteObjectProxy_proxyFromConnection_withRetryCount_proxyHandler___block_invoke_cold_1(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = [*(a1 + 32) serviceName];
  v3 = *(a1 + 48);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(&dword_2707F8000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "Connection error from %{public}@: %{public}@\nAttempts remaining: %lu", v5, 0x20u);

  v4 = *MEMORY[0x277D85DE8];
}

@end