@interface WebBookmarksXPCConnection
- (BOOL)hasBoolEntitlement:(id)a3;
- (WebBookmarksXPCConnection)initWithConnection:(id)a3;
- (WebBookmarksXPCConnectionDelegate)delegate;
- (id)initClientForMachService:(const char *)a3;
- (id)messageWithName:(const char *)a3;
- (void)_handleMessage:(id)a3;
- (void)sendMessage:(id)a3 withReplyHandler:(id)a4;
- (void)setHandler:(id)a3 forMessageNamed:(const char *)a4;
- (void)setMessageHandlers:(id)a3;
@end

@implementation WebBookmarksXPCConnection

- (WebBookmarksXPCConnection)initWithConnection:(id)a3
{
  v5 = a3;
  v20.receiver = self;
  v20.super_class = WebBookmarksXPCConnection;
  v6 = [(WebBookmarksXPCConnection *)&v20 init];
  if (v6)
  {
    objc_initWeak(&location, v6);
    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v8 = *(v6 + 1);
    *(v6 + 1) = v7;

    v9 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v10 = *(v6 + 2);
    *(v6 + 2) = v9;

    objc_storeStrong(v6 + 3, a3);
    v11 = *(v6 + 3);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __48__WebBookmarksXPCConnection_initWithConnection___block_invoke;
    v17[3] = &unk_279E77DF8;
    objc_copyWeak(&v18, &location);
    xpc_connection_set_event_handler(v11, v17);
    v12 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INITIATED, 0);
    v13 = dispatch_queue_create("com.apple.WebBookmarks.WebBookmarksXPCConnectionQueue", v12);
    v14 = *(v6 + 4);
    *(v6 + 4) = v13;

    xpc_connection_set_target_queue(*(v6 + 3), *(v6 + 4));
    xpc_connection_resume(*(v6 + 3));
    v15 = v6;
    objc_destroyWeak(&v18);
    objc_destroyWeak(&location);
  }

  return v6;
}

void __48__WebBookmarksXPCConnection_initWithConnection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __48__WebBookmarksXPCConnection_initWithConnection___block_invoke_2;
  v5[3] = &unk_279E77DD0;
  objc_copyWeak(&v7, (a1 + 32));
  v6 = v3;
  v4 = v3;
  dispatch_async(MEMORY[0x277D85CD0], v5);

  objc_destroyWeak(&v7);
}

void __48__WebBookmarksXPCConnection_initWithConnection___block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _handleMessage:*(a1 + 32)];
}

- (id)initClientForMachService:(const char *)a3
{
  mach_service = xpc_connection_create_mach_service(a3, 0, 0);
  v5 = [(WebBookmarksXPCConnection *)self initWithConnection:mach_service];

  return v5;
}

- (void)_handleMessage:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (MEMORY[0x2743D6E50]() == MEMORY[0x277D86480])
  {
    connection = self->_connection;
    self->_connection = 0;

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    [WeakRetained connection:self didCloseWithError:v4];
  }

  else
  {
    string = xpc_dictionary_get_string(v4, "_name");
    v6 = WBS_LOG_CHANNEL_PREFIXBookmarks();
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_INFO);
    if (string)
    {
      if (v7)
      {
        v15 = 136446210;
        v16 = string;
        _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "Handling XPC message name: %{public}s.", &v15, 0xCu);
      }

      messageHandlers = self->_messageHandlers;
      v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:string];
      v10 = [(NSMutableDictionary *)messageHandlers objectForKey:v9];

      if (v10)
      {
        (v10)[2](v10, self, v4);
      }

      else
      {
        v13 = WBS_LOG_CHANNEL_PREFIXBookmarks();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
        {
          [(WebBookmarksXPCConnection *)string _handleMessage:v13];
        }
      }
    }

    else if (v7)
    {
      LOWORD(v15) = 0;
      _os_log_impl(&dword_272C20000, v6, OS_LOG_TYPE_INFO, "XPC message name unexpectedly nil, nothing to handle.", &v15, 2u);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)setHandler:(id)a3 forMessageNamed:(const char *)a4
{
  messageHandlers = self->_messageHandlers;
  v7 = MEMORY[0x2743D6830](a3, a2);
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:a4];
  [(NSMutableDictionary *)messageHandlers setObject:v7 forKey:v6];
}

- (void)setMessageHandlers:(id)a3
{
  v4 = [a3 mutableCopy];
  messageHandlers = self->_messageHandlers;
  self->_messageHandlers = v4;

  if (!self->_messageHandlers)
  {
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v7 = self->_messageHandlers;
    self->_messageHandlers = v6;

    MEMORY[0x2821F96F8](v6, v7);
  }
}

- (BOOL)hasBoolEntitlement:(id)a3
{
  v4 = a3;
  v5 = [(NSMutableDictionary *)self->_entitlementLookupCache objectForKey:v4];
  if (!v5)
  {
    connection = self->_connection;
    [v4 UTF8String];
    v7 = xpc_connection_copy_entitlement_value();
    v8 = v7;
    if (v7 && MEMORY[0x2743D6E50](v7) == MEMORY[0x277D86448])
    {
      v5 = [MEMORY[0x277CCABB0] numberWithBool:xpc_BOOL_get_value(v8)];
    }

    else
    {
      v5 = MEMORY[0x277CBEC28];
    }

    [(NSMutableDictionary *)self->_entitlementLookupCache setObject:v5 forKey:v4];
  }

  v9 = [v5 BOOLValue];

  return v9;
}

- (id)messageWithName:(const char *)a3
{
  keys[1] = *MEMORY[0x277D85DE8];
  v3 = xpc_string_create(a3);
  values = v3;
  keys[0] = "_name";
  v4 = xpc_dictionary_create(keys, &values, 1uLL);

  v5 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)sendMessage:(id)a3 withReplyHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  connection = self->_connection;
  if (connection)
  {
    if (v7)
    {
      v15[0] = 0;
      v15[1] = v15;
      v15[2] = 0x3032000000;
      v15[3] = __Block_byref_object_copy__9;
      v15[4] = __Block_byref_object_dispose__9;
      v9 = self;
      v16 = v9;
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 3221225472;
      v12[2] = __58__WebBookmarksXPCConnection_sendMessage_withReplyHandler___block_invoke;
      v12[3] = &unk_279E77E20;
      v13 = v7;
      v14 = v15;
      v10 = MEMORY[0x2743D6830](v12);
      xpc_connection_send_message_with_reply(self->_connection, v6, v9->_connectionQueue, v10);

      _Block_object_dispose(v15, 8);
    }

    else
    {
      xpc_connection_send_message(connection, v6);
    }
  }

  else
  {
    v11 = WBS_LOG_CHANNEL_PREFIXWebsiteData();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      [WebBookmarksXPCConnection sendMessage:v11 withReplyHandler:?];
    }
  }
}

void __58__WebBookmarksXPCConnection_sendMessage_withReplyHandler___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x2743D6E50]() == MEMORY[0x277D86468])
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), v3, 0);
  }

  else
  {
    v4 = MEMORY[0x2743D6E50](v3);

    if (v4 != MEMORY[0x277D86480])
    {
      goto LABEL_6;
    }

    v5 = *(a1 + 32);
    v3 = [MEMORY[0x277CCA9B8] errorWithDomain:@"WebBookmarksXPCConnectionErrorDomain" code:v3 == MEMORY[0x277D863F0] userInfo:0];
    (*(v5 + 16))(v5, 0, v3);
  }

LABEL_6:
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = 0;
}

- (WebBookmarksXPCConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleMessage:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 136446210;
  v4 = a1;
  _os_log_fault_impl(&dword_272C20000, a2, OS_LOG_TYPE_FAULT, "WebBookmarksXPCConnection: No handler registered for the message %{public}s.", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end