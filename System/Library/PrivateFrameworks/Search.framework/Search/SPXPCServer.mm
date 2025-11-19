@interface SPXPCServer
- (id)_handlerForMessageName:(id)a3;
- (id)_highAvailabilityQueue;
- (id)initListenerWithServiceName:(id)a3;
- (id)initListenerWithServiceName:(id)a3 onQueue:(id)a4 qos:(unsigned int)a5;
- (void)dealloc;
- (void)setHandlerForMessageName:(id)a3 handler:(id)a4;
@end

@implementation SPXPCServer

- (id)_highAvailabilityQueue
{
  if (_highAvailabilityQueue_onceToken != -1)
  {
    [SPXPCServer _highAvailabilityQueue];
  }

  v3 = _highAvailabilityQueue_queue;

  return v3;
}

void __37__SPXPCServer__highAvailabilityQueue__block_invoke()
{
  v0 = dispatch_queue_attr_make_initially_inactive(0);
  v1 = dispatch_queue_attr_make_with_autorelease_frequency(v0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_attr_make_with_qos_class(v1, QOS_CLASS_USER_INTERACTIVE, 0);
  v3 = dispatch_queue_create("searchd xpc high availability queue", v2);
  v4 = _highAvailabilityQueue_queue;
  _highAvailabilityQueue_queue = v3;

  v5 = _highAvailabilityQueue_queue;

  dispatch_activate(v5);
}

- (id)_handlerForMessageName:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_handlerMap objectForKey:v4];
  v6 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
  if (v5)
  {
    if (v6)
    {
      [SPXPCServer _handlerForMessageName:];
    }
  }

  else
  {
    if (v6)
    {
      [SPXPCServer _handlerForMessageName:];
    }

    v5 = MEMORY[0x1CCA71310](self->_defaultMessageHandler);
  }

  v7 = MEMORY[0x1CCA71310](v5);

  return v7;
}

void __40__SPXPCServer__handleNewConnection_qos___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    __40__SPXPCServer__handleNewConnection_qos___block_invoke_2_cold_1(v3);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 69) & 1) == 0)
  {
    v6 = objc_loadWeakRetained((a1 + 40));
    if (v6)
    {
      v7 = [v3 name];
      v8 = [v5 _handlerForMessageName:v7];

      if (v8)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
        {
          __40__SPXPCServer__handleNewConnection_qos___block_invoke_2_cold_2(v3);
        }

        (v8)[2](v8, v6, v3);
      }

      else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
      {
        __40__SPXPCServer__handleNewConnection_qos___block_invoke_2_cold_3(v3);
      }
    }
  }
}

void __40__SPXPCServer__handleNewConnection_qos___block_invoke_152(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained disconnectHandler];
  v4 = objc_loadWeakRetained((a1 + 40));
  if (v4)
  {
    v5 = WeakRetained[5];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __40__SPXPCServer__handleNewConnection_qos___block_invoke_2_153;
    v7[3] = &unk_1E82F8E68;
    v8 = WeakRetained;
    v6 = v4;
    v9 = v6;
    dispatch_sync(v5, v7);
    if (v3)
    {
      (v3)[2](v3, v6);
    }
  }
}

- (id)initListenerWithServiceName:(id)a3 onQueue:(id)a4 qos:(unsigned int)a5
{
  v8 = a3;
  v9 = a4;
  v27.receiver = self;
  v27.super_class = SPXPCServer;
  v10 = [(SPXPCServer *)&v27 init];
  if (v10)
  {
    mach_service = xpc_connection_create_mach_service([v8 UTF8String], v9, 1uLL);
    conn = v10->_conn;
    v10->_conn = mach_service;

    v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v14 = dispatch_queue_create("idle_timer", v13);
    timerQueue = v10->_timerQueue;
    v10->_timerQueue = v14;

    objc_storeStrong(&v10->_eventQueue, a4);
    v16 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    connections = v10->_connections;
    v10->_connections = v16;

    v18 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v19 = dispatch_queue_attr_make_with_qos_class(v18, QOS_CLASS_UNSPECIFIED, 0);
    v20 = dispatch_queue_create("connection_queue", v19);
    connectionsQueue = v10->_connectionsQueue;
    v10->_connectionsQueue = v20;

    v10->_qos = a5;
    objc_initWeak(&location, v10);
    v22 = v10->_conn;
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __55__SPXPCServer_initListenerWithServiceName_onQueue_qos___block_invoke;
    v24[3] = &unk_1E82F95F8;
    objc_copyWeak(&v25, &location);
    xpc_connection_set_event_handler(v22, v24);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&location);
  }

  return v10;
}

void __55__SPXPCServer_initListenerWithServiceName_onQueue_qos___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained && (*(WeakRetained + 69) & 1) == 0)
  {
    v6 = MEMORY[0x1CCA717B0](v3);
    if (v6 == MEMORY[0x1E69E9E68])
    {
      [v5 _handleNewConnection:v3 qos:v5[16]];
    }

    else
    {
      v7 = v6;
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
      {
        __55__SPXPCServer_initListenerWithServiceName_onQueue_qos___block_invoke_cold_1(v5, v7);
      }
    }
  }
}

- (id)initListenerWithServiceName:(id)a3
{
  v4 = a3;
  v5 = [(SPXPCServer *)self _highAvailabilityQueue];
  v6 = [(SPXPCServer *)self initListenerWithServiceName:v4 onQueue:v5 qos:33];

  return v6;
}

- (void)dealloc
{
  connectionsQueue = self->_connectionsQueue;
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __22__SPXPCServer_dealloc__block_invoke;
  v8 = &unk_1E82F8F28;
  v9 = self;
  tracing_dispatch_sync();
  v4.receiver = self;
  v4.super_class = SPXPCServer;
  [(SPXPCServer *)&v4 dealloc];
}

void __22__SPXPCServer_dealloc__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(*(a1 + 32) + 24);
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        [v7 setMessageHandler:{0, v11}];
        [v7 setDisconnectHandler:0];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  v8 = *(a1 + 32);
  v9 = *(v8 + 24);
  *(v8 + 24) = 0;

  v10 = *MEMORY[0x1E69E9840];
}

- (void)setHandlerForMessageName:(id)a3 handler:(id)a4
{
  v11 = a3;
  v6 = a4;
  if (v11)
  {
    handlerMap = self->_handlerMap;
    if (!handlerMap)
    {
      v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
      v9 = self->_handlerMap;
      self->_handlerMap = v8;

      handlerMap = self->_handlerMap;
    }

    v10 = [v6 copy];
    [(NSMutableDictionary *)handlerMap setObject:v10 forKey:v11];
  }

  else
  {
    [(SPXPCServer *)self setDefaultMessageHandler:v6];
  }
}

- (void)_handlerForMessageName:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_handlerForMessageName:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __40__SPXPCServer__handleNewConnection_qos___block_invoke_2_cold_1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);

  v7 = *MEMORY[0x1E69E9840];
}

void __40__SPXPCServer__handleNewConnection_qos___block_invoke_2_cold_2(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __40__SPXPCServer__handleNewConnection_qos___block_invoke_2_cold_3(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

void __55__SPXPCServer_initListenerWithServiceName_onQueue_qos___block_invoke_cold_1(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  _StringForXPCType(a2);
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0x16u);
  v7 = *MEMORY[0x1E69E9840];
}

@end