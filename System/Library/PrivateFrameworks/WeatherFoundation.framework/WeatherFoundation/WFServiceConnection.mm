@interface WFServiceConnection
+ (id)allAllowedClasses;
+ (id)weatherServiceClientInterface;
+ (id)weatherServiceInterface;
- (WFServiceConnection)init;
- (void)_callbackAllPendingTasksOnInvalidate:(id)invalidate;
- (void)_cleanup;
- (void)_handleRemoteObjectProxyError:(id)error;
- (void)_onQueueInvalidateConnection:(id)connection;
- (void)_onQueueOpenConnection;
- (void)accessServiceWithBlock:(id)block;
- (void)cancelRequestWithIdentifier:(id)identifier;
- (void)dealloc;
- (void)enqueueRequest:(id)request waitUntilDone:(BOOL)done;
- (void)invalidate;
- (void)invalidateCache;
- (void)serviceDidReceiveResponse:(id)response;
- (void)taskIdentifier:(id)identifier;
@end

@implementation WFServiceConnection

+ (id)allAllowedClasses
{
  v22[5] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = [v2 initWithObjects:{v3, v4, v5, v6, v7, v8, v9, v10, objc_opt_class(), 0}];
  v12 = MEMORY[0x277CBEB98];
  v22[0] = objc_opt_class();
  v22[1] = objc_opt_class();
  v22[2] = objc_opt_class();
  v22[3] = objc_opt_class();
  v22[4] = objc_opt_class();
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:5];
  v14 = [v12 setWithArray:v13];

  v15 = MEMORY[0x277CBEB98];
  v21[0] = objc_opt_class();
  v21[1] = objc_opt_class();
  v21[2] = objc_opt_class();
  v21[3] = objc_opt_class();
  v21[4] = objc_opt_class();
  v21[5] = objc_opt_class();
  v21[6] = objc_opt_class();
  v21[7] = objc_opt_class();
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:8];
  v17 = [v15 setWithArray:v16];

  v18 = [v11 setByAddingObjectsFromSet:v14];
  v19 = [v18 setByAddingObjectsFromSet:v17];

  return v19;
}

+ (id)weatherServiceInterface
{
  if (weatherServiceInterface_onceToken != -1)
  {
    +[WFServiceConnection(XPC) weatherServiceInterface];
  }

  v3 = weatherServiceInterface_interface;

  return v3;
}

uint64_t __51__WFServiceConnection_XPC__weatherServiceInterface__block_invoke()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_288258CA0];
  v1 = weatherServiceInterface_interface;
  weatherServiceInterface_interface = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

+ (id)weatherServiceClientInterface
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __57__WFServiceConnection_XPC__weatherServiceClientInterface__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (weatherServiceClientInterface_onceToken != -1)
  {
    dispatch_once(&weatherServiceClientInterface_onceToken, block);
  }

  v2 = weatherServiceClientInterface_interface;

  return v2;
}

void __57__WFServiceConnection_XPC__weatherServiceClientInterface__block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_28825F2A0];
  v3 = weatherServiceClientInterface_interface;
  weatherServiceClientInterface_interface = v2;

  v4 = [*(a1 + 32) allAllowedClasses];
  [weatherServiceClientInterface_interface setClasses:v4 forSelector:sel_serviceDidReceiveResponse_ argumentIndex:0 ofReply:0];
  [weatherServiceClientInterface_interface setClasses:v4 forSelector:sel_taskIdentifier_ argumentIndex:0 ofReply:1];
}

- (WFServiceConnection)init
{
  v16.receiver = self;
  v16.super_class = WFServiceConnection;
  v2 = [(WFServiceConnection *)&v16 init];
  if (v2)
  {
    v3 = dispatch_queue_create("com.apple.WeatherFoundation.ServiceConnectionQueue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    v5 = dispatch_queue_create("com.apple.WeatherFoundation.ServiceConnection.CallbackQueue", MEMORY[0x277D85CD8]);
    callbackQueue = v2->_callbackQueue;
    v2->_callbackQueue = v5;

    v7 = dispatch_queue_create("com.apple.WeatherFoundation.ServiceConnection.InternalStateQueue", 0);
    internalStateQueue = v2->_internalStateQueue;
    v2->_internalStateQueue = v7;

    dictionary = [MEMORY[0x277CBEB38] dictionary];
    tasksPendingResponseForTaskIdentifier = v2->_tasksPendingResponseForTaskIdentifier;
    v2->_tasksPendingResponseForTaskIdentifier = dictionary;

    v11 = objc_opt_new();
    dispatchGroupForTaskIdentifier = v2->_dispatchGroupForTaskIdentifier;
    v2->_dispatchGroupForTaskIdentifier = v11;

    v13 = objc_opt_new();
    executionStartTimeForTaskIdentifier = v2->_executionStartTimeForTaskIdentifier;
    v2->_executionStartTimeForTaskIdentifier = v13;
  }

  return v2;
}

- (void)dealloc
{
  [(WFServiceConnection *)self _cleanup];
  v3.receiver = self;
  v3.super_class = WFServiceConnection;
  [(WFServiceConnection *)&v3 dealloc];
}

- (void)accessServiceWithBlock:(id)block
{
  blockCopy = block;
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__3;
  v11 = __Block_byref_object_dispose__3;
  v12 = 0;
  queue = [(WFServiceConnection *)self queue];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __46__WFServiceConnection_accessServiceWithBlock___block_invoke;
  v6[3] = &unk_279E6DB38;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  blockCopy[2](blockCopy, v8[5]);
  _Block_object_dispose(&v7, 8);
}

uint64_t __46__WFServiceConnection_accessServiceWithBlock___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) serviceProxy];

  if (!v2)
  {
    [*(a1 + 32) _onQueueOpenConnection];
  }

  v3 = [*(a1 + 32) serviceProxy];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8](v3, v5);
}

- (void)cancelRequestWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  uUID = [identifierCopy UUID];
  v6 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    [WFServiceConnection cancelRequestWithIdentifier:];
  }

  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__WFServiceConnection_cancelRequestWithIdentifier___block_invoke;
  v9[3] = &unk_279E6FAE8;
  v10 = identifierCopy;
  v11 = uUID;
  v7 = uUID;
  v8 = identifierCopy;
  [(WFServiceConnection *)self accessServiceWithBlock:v9];
}

void __51__WFServiceConnection_cancelRequestWithIdentifier___block_invoke(uint64_t a1, void *a2)
{
  [a2 cancelTaskWithIdentifier:*(a1 + 32)];
  v3 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    __51__WFServiceConnection_cancelRequestWithIdentifier___block_invoke_cold_1(a1, v3);
  }
}

- (void)enqueueRequest:(id)request waitUntilDone:(BOOL)done
{
  doneCopy = done;
  requestCopy = request;
  if ([requestCopy isCancelled])
  {
    [requestCopy handleCancellation];
  }

  else
  {
    identifier = [requestCopy identifier];
    uUID = [identifier UUID];

    Current = CFAbsoluteTimeGetCurrent();
    v10 = WFLogForCategory(4uLL);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [WFServiceConnection enqueueRequest:requestCopy waitUntilDone:?];
    }

    if ([requestCopy requiresResponse])
    {
      internalStateQueue = [(WFServiceConnection *)self internalStateQueue];
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__WFServiceConnection_enqueueRequest_waitUntilDone___block_invoke;
      block[3] = &unk_279E6FB10;
      block[4] = self;
      v25 = requestCopy;
      v26 = uUID;
      v27 = Current;
      dispatch_async(internalStateQueue, block);
    }

    if (doneCopy)
    {
      v12 = dispatch_group_create();
      dispatch_group_enter(v12);
      internalStateQueue2 = [(WFServiceConnection *)self internalStateQueue];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __52__WFServiceConnection_enqueueRequest_waitUntilDone___block_invoke_2;
      v21[3] = &unk_279E6E8A8;
      v21[4] = self;
      v22 = uUID;
      v14 = v12;
      v23 = v14;
      dispatch_async(internalStateQueue2, v21);
    }

    else
    {
      v14 = 0;
    }

    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __52__WFServiceConnection_enqueueRequest_waitUntilDone___block_invoke_3;
    v19[3] = &unk_279E6FB38;
    v20 = requestCopy;
    [(WFServiceConnection *)self accessServiceWithBlock:v19];
    if (doneCopy)
    {
      v15 = dispatch_time(0, 30000000000);
      v16 = dispatch_group_wait(v14, v15);
      v17 = WFLogForCategory(4uLL);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG);
      if (v16)
      {
        if (v18)
        {
          [WFServiceConnection enqueueRequest:uUID waitUntilDone:?];
        }
      }

      else if (v18)
      {
        [WFServiceConnection enqueueRequest:uUID waitUntilDone:?];
      }
    }
  }
}

void __52__WFServiceConnection_enqueueRequest_waitUntilDone___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tasksPendingResponseForTaskIdentifier];
  [v2 setObject:*(a1 + 40) forKey:*(a1 + 48)];

  v4 = [*(a1 + 32) executionStartTimeForTaskIdentifier];
  v3 = [MEMORY[0x277CCABB0] numberWithDouble:*(a1 + 56)];
  [v4 setObject:v3 forKey:*(a1 + 48)];
}

void __52__WFServiceConnection_enqueueRequest_waitUntilDone___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = [*(a1 + 32) dispatchGroupForTaskIdentifier];
  [v3 setObject:v2 forKeyedSubscript:*(a1 + 40)];
}

- (void)invalidate
{
  v3 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [WFServiceConnection invalidate];
  }

  queue = [(WFServiceConnection *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __33__WFServiceConnection_invalidate__block_invoke;
  block[3] = &unk_279E6D9A8;
  block[4] = self;
  dispatch_sync(queue, block);
}

void __33__WFServiceConnection_invalidate__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x277CCA9B8] wf_errorWithCode:12];
  [v1 _onQueueInvalidateConnection:v2];
}

- (void)invalidateCache
{
  v3 = objc_opt_new();
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __38__WFServiceConnection_invalidateCache__block_invoke;
  v5[3] = &unk_279E6FB38;
  v6 = v3;
  v4 = v3;
  [(WFServiceConnection *)self accessServiceWithBlock:v5];
}

- (void)_handleRemoteObjectProxyError:(id)error
{
  errorCopy = error;
  v5 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [WFServiceConnection _handleRemoteObjectProxyError:];
  }

  queue = [(WFServiceConnection *)self queue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __53__WFServiceConnection__handleRemoteObjectProxyError___block_invoke;
  v8[3] = &unk_279E6EA40;
  v8[4] = self;
  v9 = errorCopy;
  v7 = errorCopy;
  dispatch_sync(queue, v8);
}

- (void)_onQueueOpenConnection
{
  v3 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    [WFServiceConnection _onQueueOpenConnection];
  }

  v4 = objc_opt_new();
  [(WFServiceConnection *)self setServiceProxy:v4];
  [v4 addClient:self];
  v5 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(WFServiceConnection *)v5 _onQueueOpenConnection];
  }
}

- (void)_cleanup
{
  serviceProxy = [(WFServiceConnection *)self serviceProxy];
  [serviceProxy removeClient:self];
  [(WFServiceConnection *)self setServiceProxy:0];
  [(WFServiceConnection *)self _callbackAllPendingTasksOnInvalidate:0];
}

- (void)_onQueueInvalidateConnection:(id)connection
{
  connectionCopy = connection;
  serviceProxy = [(WFServiceConnection *)self serviceProxy];
  [serviceProxy removeClient:self];
  [(WFServiceConnection *)self setServiceProxy:0];
  internalStateQueue = [(WFServiceConnection *)self internalStateQueue];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __52__WFServiceConnection__onQueueInvalidateConnection___block_invoke;
  v8[3] = &unk_279E6EA40;
  v8[4] = self;
  v9 = connectionCopy;
  v7 = connectionCopy;
  dispatch_sync(internalStateQueue, v8);
}

- (void)_callbackAllPendingTasksOnInvalidate:(id)invalidate
{
  invalidateCopy = invalidate;
  v5 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [WFServiceConnection _callbackAllPendingTasksOnInvalidate:];
  }

  tasksPendingResponseForTaskIdentifier = [(WFServiceConnection *)self tasksPendingResponseForTaskIdentifier];
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __60__WFServiceConnection__callbackAllPendingTasksOnInvalidate___block_invoke;
  v12[3] = &unk_279E6FB60;
  v13 = invalidateCopy;
  v7 = invalidateCopy;
  [tasksPendingResponseForTaskIdentifier enumerateKeysAndObjectsUsingBlock:v12];

  tasksPendingResponseForTaskIdentifier2 = [(WFServiceConnection *)self tasksPendingResponseForTaskIdentifier];
  [tasksPendingResponseForTaskIdentifier2 removeAllObjects];

  dispatchGroupForTaskIdentifier = [(WFServiceConnection *)self dispatchGroupForTaskIdentifier];
  [dispatchGroupForTaskIdentifier enumerateKeysAndObjectsUsingBlock:&__block_literal_global_31];

  dispatchGroupForTaskIdentifier2 = [(WFServiceConnection *)self dispatchGroupForTaskIdentifier];
  [dispatchGroupForTaskIdentifier2 removeAllObjects];

  executionStartTimeForTaskIdentifier = [(WFServiceConnection *)self executionStartTimeForTaskIdentifier];
  [executionStartTimeForTaskIdentifier removeAllObjects];
}

void __60__WFServiceConnection__callbackAllPendingTasksOnInvalidate___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = a2;
  v7 = [v4 copy];
  [v5 handleError:v7 forResponseIdentifier:v6];
}

- (void)taskIdentifier:(id)identifier
{
  v3 = taskIdentifier__onceToken;
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (v3 != -1)
  {
    [WFServiceConnection taskIdentifier:];
    identifierCopy = v5;
  }

  (*(identifierCopy + 2))(identifierCopy, taskIdentifier__defaultTaskIdentifier);
}

uint64_t __38__WFServiceConnection_taskIdentifier___block_invoke()
{
  v0 = +[WFTaskIdentifier defaultIdentifier];
  v1 = taskIdentifier__defaultTaskIdentifier;
  taskIdentifier__defaultTaskIdentifier = v0;

  return MEMORY[0x2821F96F8](v0, v1);
}

- (void)serviceDidReceiveResponse:(id)response
{
  v40 = *MEMORY[0x277D85DE8];
  responseCopy = response;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__3;
  v36 = __Block_byref_object_dispose__3;
  v37 = 0;
  v30[0] = 0;
  v30[1] = v30;
  v30[2] = 0x3032000000;
  v30[3] = __Block_byref_object_copy__3;
  v30[4] = __Block_byref_object_dispose__3;
  v31 = 0;
  v28[0] = 0;
  v28[1] = v28;
  v28[2] = 0x3032000000;
  v28[3] = __Block_byref_object_copy__3;
  v28[4] = __Block_byref_object_dispose__3;
  v29 = 0;
  internalStateQueue = [(WFServiceConnection *)self internalStateQueue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __49__WFServiceConnection_serviceDidReceiveResponse___block_invoke;
  block[3] = &unk_279E6FBA8;
  v25 = &v32;
  block[4] = self;
  v6 = responseCopy;
  v24 = v6;
  v26 = v30;
  v27 = v28;
  dispatch_sync(internalStateQueue, block);

  if (!v33[5])
  {
    v7 = WFLogForCategory(4uLL);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      identifier = [v6 identifier];
      [(WFServiceConnection *)identifier serviceDidReceiveResponse:buf, v7];
    }
  }

  v9 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    identifier2 = [v33[5] identifier];
    [(WFServiceConnection *)identifier2 serviceDidReceiveResponse:v38, v9];
  }

  callbackQueue = [(WFServiceConnection *)self callbackQueue];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __49__WFServiceConnection_serviceDidReceiveResponse___block_invoke_17;
  v19[3] = &unk_279E6FBD0;
  v12 = v6;
  v20 = v12;
  v21 = v28;
  v22 = &v32;
  dispatch_sync(callbackQueue, v19);

  internalStateQueue2 = [(WFServiceConnection *)self internalStateQueue];
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __49__WFServiceConnection_serviceDidReceiveResponse___block_invoke_18;
  v15[3] = &unk_279E6FBF8;
  v15[4] = self;
  v16 = v12;
  v17 = &v32;
  v18 = v30;
  v14 = v12;
  dispatch_async(internalStateQueue2, v15);

  _Block_object_dispose(v28, 8);
  _Block_object_dispose(v30, 8);

  _Block_object_dispose(&v32, 8);
}

void __49__WFServiceConnection_serviceDidReceiveResponse___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) tasksPendingResponseForTaskIdentifier];
  v3 = [*(a1 + 40) identifier];
  v4 = [v2 objectForKey:v3];
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [*(a1 + 32) dispatchGroupForTaskIdentifier];
  v8 = [*(a1 + 40) identifier];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = *(*(a1 + 56) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;

  v16 = [*(a1 + 32) executionStartTimeForTaskIdentifier];
  v12 = [*(a1 + 40) identifier];
  v13 = [v16 objectForKeyedSubscript:v12];
  v14 = *(*(a1 + 64) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;
}

uint64_t __49__WFServiceConnection_serviceDidReceiveResponse___block_invoke_17(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  [*(*(*(a1 + 40) + 8) + 40) doubleValue];
  [*(a1 + 32) setExecutionTime:Current - v3];
  v4 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    __49__WFServiceConnection_serviceDidReceiveResponse___block_invoke_17_cold_1((a1 + 32));
  }

  return [*(*(*(a1 + 48) + 8) + 40) handleResponse:*(a1 + 32)];
}

void __49__WFServiceConnection_serviceDidReceiveResponse___block_invoke_18(uint64_t a1)
{
  v2 = WFLogForCategory(4uLL);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __49__WFServiceConnection_serviceDidReceiveResponse___block_invoke_18_cold_1(a1);
  }

  v3 = [*(a1 + 32) tasksPendingResponseForTaskIdentifier];
  v4 = [*(a1 + 40) identifier];
  [v3 removeObjectForKey:v4];

  v5 = *(*(*(a1 + 56) + 8) + 40);
  if (v5)
  {
    dispatch_group_leave(v5);
    v6 = [*(a1 + 32) dispatchGroupForTaskIdentifier];
    v7 = [*(a1 + 40) identifier];
    [v6 removeObjectForKey:v7];
  }

  v8 = [*(a1 + 32) executionStartTimeForTaskIdentifier];
  v9 = [*(a1 + 40) identifier];
  [v8 removeObjectForKey:v9];
}

- (void)cancelRequestWithIdentifier:.cold.1()
{
  v2 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_272B94000, v0, OS_LOG_TYPE_DEBUG, "Cancelling %@", v1, 0xCu);
}

void __51__WFServiceConnection_cancelRequestWithIdentifier___block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 40);
  v3 = 138412290;
  v4 = v2;
  _os_log_debug_impl(&dword_272B94000, a2, OS_LOG_TYPE_DEBUG, "Cancellation sent for identifier %@", &v3, 0xCu);
}

- (void)enqueueRequest:(void *)a1 waitUntilDone:.cold.1(void *a1)
{
  [a1 requiresResponse];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
}

- (void)enqueueRequest:(void *)a1 waitUntilDone:.cold.2(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)enqueueRequest:(void *)a1 waitUntilDone:.cold.3(void *a1)
{
  v1 = [a1 description];
  [v1 UTF8String];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

- (void)_handleRemoteObjectProxyError:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)_callbackAllPendingTasksOnInvalidate:.cold.1()
{
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
}

- (void)serviceDidReceiveResponse:(os_log_t)log .cold.1(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_error_impl(&dword_272B94000, log, OS_LOG_TYPE_ERROR, "(%@) Received response for untracked task identifier", buf, 0xCu);
}

- (void)serviceDidReceiveResponse:(os_log_t)log .cold.2(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_272B94000, log, OS_LOG_TYPE_DEBUG, "(%@) Received response for request", buf, 0xCu);
}

void __49__WFServiceConnection_serviceDidReceiveResponse___block_invoke_17_cold_1(id *a1)
{
  v2 = [*a1 identifier];
  [*a1 executionTime];
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v3, v4, v5, v6, v7, 0x16u);
}

void __49__WFServiceConnection_serviceDidReceiveResponse___block_invoke_18_cold_1(uint64_t a1)
{
  v1 = [*(*(*(a1 + 48) + 8) + 40) identifier];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_1_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);
}

@end