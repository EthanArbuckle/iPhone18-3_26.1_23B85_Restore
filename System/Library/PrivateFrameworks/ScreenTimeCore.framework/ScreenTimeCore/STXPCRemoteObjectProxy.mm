@interface STXPCRemoteObjectProxy
+ (void)_proxyFromConnection:(id)connection withRetryCount:(unint64_t)count proxyHandler:(id)handler;
+ (void)_synchronousProxyFromConnection:(id)connection withRetryCount:(unint64_t)count proxyHandler:(id)handler;
@end

@implementation STXPCRemoteObjectProxy

+ (void)_proxyFromConnection:(id)connection withRetryCount:(unint64_t)count proxyHandler:(id)handler
{
  connectionCopy = connection;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __75__STXPCRemoteObjectProxy__proxyFromConnection_withRetryCount_proxyHandler___block_invoke;
  v13[3] = &unk_1E7CE81F8;
  countCopy = count;
  selfCopy = self;
  v14 = connectionCopy;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = connectionCopy;
  v12 = [v11 remoteObjectProxyWithErrorHandler:v13];
  v10[2](v10, v12, 0);
}

void __75__STXPCRemoteObjectProxy__proxyFromConnection_withRetryCount_proxyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(a1 + 48))
  {
    goto LABEL_8;
  }

  v5 = [v3 domain];
  if (([v5 isEqualToString:*MEMORY[0x1E696A250]] & 1) == 0)
  {

    goto LABEL_8;
  }

  v6 = [v4 code];

  if (v6 != 4097)
  {
LABEL_8:
    (*(*(a1 + 40) + 16))();
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __75__STXPCRemoteObjectProxy__proxyFromConnection_withRetryCount_proxyHandler___block_invoke_cold_1(a1, v4, (a1 + 48));
  }

  [*(a1 + 56) _proxyFromConnection:*(a1 + 32) withRetryCount:*(a1 + 48) - 1 proxyHandler:*(a1 + 40)];
LABEL_9:
}

+ (void)_synchronousProxyFromConnection:(id)connection withRetryCount:(unint64_t)count proxyHandler:(id)handler
{
  connectionCopy = connection;
  handlerCopy = handler;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __86__STXPCRemoteObjectProxy__synchronousProxyFromConnection_withRetryCount_proxyHandler___block_invoke;
  v13[3] = &unk_1E7CE81F8;
  countCopy = count;
  selfCopy = self;
  v14 = connectionCopy;
  v15 = handlerCopy;
  v10 = handlerCopy;
  v11 = connectionCopy;
  v12 = [v11 synchronousRemoteObjectProxyWithErrorHandler:v13];
  v10[2](v10, v12, 0);
}

void __86__STXPCRemoteObjectProxy__synchronousProxyFromConnection_withRetryCount_proxyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  if (!*(a1 + 48))
  {
    goto LABEL_8;
  }

  v5 = [v3 domain];
  if (([v5 isEqualToString:*MEMORY[0x1E696A250]] & 1) == 0)
  {

    goto LABEL_8;
  }

  v6 = [v4 code];

  if (v6 != 4097)
  {
LABEL_8:
    (*(*(a1 + 40) + 16))();
    goto LABEL_9;
  }

  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    __75__STXPCRemoteObjectProxy__proxyFromConnection_withRetryCount_proxyHandler___block_invoke_cold_1(a1, v4, (a1 + 48));
  }

  [*(a1 + 56) _synchronousProxyFromConnection:*(a1 + 32) withRetryCount:*(a1 + 48) - 1 proxyHandler:*(a1 + 40)];
LABEL_9:
}

void __75__STXPCRemoteObjectProxy__proxyFromConnection_withRetryCount_proxyHandler___block_invoke_cold_1(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = [*(a1 + 32) serviceName];
  v5 = *a3;
  OUTLINED_FUNCTION_0_11();
  _os_log_error_impl(&dword_1B831F000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Connection error from %{public}@: %{public}@\nAttempts remaining: %lu", v7, 0x20u);

  v6 = *MEMORY[0x1E69E9840];
}

@end