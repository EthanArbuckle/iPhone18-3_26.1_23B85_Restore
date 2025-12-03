@interface TUUIXPCHost
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (TUUIXPCHost)init;
- (TUUIXPCHost)initWithDelegate:(id)delegate delegateQueue:(id)queue;
- (TUUIXPCHostDelegate)delegate;
- (id)endpoint;
- (void)connectionInvalidated:(id)invalidated;
- (void)dealloc;
@end

@implementation TUUIXPCHost

- (TUUIXPCHost)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"TUUIXPCHost.m" lineNumber:38 description:{@"%s is not available. Use a designated initializer instead.", "-[TUUIXPCHost init]"}];

  return 0;
}

- (TUUIXPCHost)initWithDelegate:(id)delegate delegateQueue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v14.receiver = self;
  v14.super_class = TUUIXPCHost;
  v8 = [(TUUIXPCHost *)&v14 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_delegate, delegateCopy);
    objc_storeStrong(&v9->_delegateQueue, queue);
    objc_storeStrong(&v9->_queue, queue);
    anonymousListener = [MEMORY[0x1E696B0D8] anonymousListener];
    [(TUUIXPCHost *)v9 setXpcListener:anonymousListener];

    xpcListener = [(TUUIXPCHost *)v9 xpcListener];
    [xpcListener setDelegate:v9];

    xpcListener2 = [(TUUIXPCHost *)v9 xpcListener];
    [xpcListener2 resume];
  }

  return v9;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v32 = *MEMORY[0x1E69E9840];
  connectionCopy = connection;
  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = connectionCopy;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Asked to accept new connection from %@", buf, 0xCu);
  }

  v7 = [connectionCopy valueForEntitlement:@"com.apple.telephonyutilities.callservicesd"];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v8 = v7;
      v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v26;
        while (2)
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v26 != v11)
            {
              objc_enumerationMutation(v8);
            }

            v13 = *(*(&v25 + 1) + 8 * i);
            if ([v13 isEqual:@"modify-calls"] & 1) != 0 || (objc_msgSend(v13, "isEqual:", @"access-ui-data-source"))
            {

              v18 = [TUUIXPCHostConnection alloc];
              delegate = [(TUUIXPCHost *)self delegate];
              queue = [(TUUIXPCHost *)self queue];
              v21 = [(TUUIXPCHostConnection *)v18 initWithConnection:connectionCopy hostDelegate:delegate connectionDelegate:self queue:queue];

              queue2 = [(TUUIXPCHost *)self queue];
              v23[0] = MEMORY[0x1E69E9820];
              v23[1] = 3221225472;
              v23[2] = __50__TUUIXPCHost_listener_shouldAcceptNewConnection___block_invoke;
              v23[3] = &unk_1E7424898;
              v23[4] = self;
              v24 = v21;
              v14 = v21;
              dispatch_async(queue2, v23);

              v15 = 1;
              goto LABEL_18;
            }
          }

          v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
          if (v10)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  v14 = TUDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v31 = connectionCopy;
    _os_log_impl(&dword_1956FD000, v14, OS_LOG_TYPE_DEFAULT, "[WARN] New connection is missing entitlement to access UIXPC so declining the connection %@", buf, 0xCu);
  }

  v15 = 0;
LABEL_18:

  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

void __50__TUUIXPCHost_listener_shouldAcceptNewConnection___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) connections];
  [v2 addObject:*(a1 + 40)];
}

- (void)dealloc
{
  v3 = TUDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1956FD000, v3, OS_LOG_TYPE_DEFAULT, "dealloc", buf, 2u);
  }

  v4.receiver = self;
  v4.super_class = TUUIXPCHost;
  [(TUUIXPCHost *)&v4 dealloc];
}

- (void)connectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  queue = [(TUUIXPCHost *)self queue];
  dispatch_assert_queue_V2(queue);

  connections = [(TUUIXPCHost *)self connections];
  [connections removeObject:invalidatedCopy];
}

- (id)endpoint
{
  xpcListener = [(TUUIXPCHost *)self xpcListener];
  endpoint = [xpcListener endpoint];

  return endpoint;
}

- (TUUIXPCHostDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end