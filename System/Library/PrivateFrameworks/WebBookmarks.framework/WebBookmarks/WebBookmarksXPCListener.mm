@interface WebBookmarksXPCListener
- (WebBookmarksXPCConnectionDelegate)delegate;
- (id)initListenerForMachService:(const char *)service;
- (void)_handleIncomingConnection:(id)connection;
- (void)connection:(id)connection didCloseWithError:(id)error;
- (void)setHandler:(id)handler forMessageNamed:(const char *)named;
- (void)setMessageHandlers:(id)handlers;
@end

@implementation WebBookmarksXPCListener

- (id)initListenerForMachService:(const char *)service
{
  v19.receiver = self;
  v19.super_class = WebBookmarksXPCListener;
  v4 = [(WebBookmarksXPCListener *)&v19 init];
  if (v4)
  {
    objc_initWeak(&location, v4);
    v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
    clientConnections = v4->_clientConnections;
    v4->_clientConnections = v5;

    v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
    messageHandlers = v4->_messageHandlers;
    v4->_messageHandlers = v7;

    v9 = MEMORY[0x277D85CD0];
    v10 = MEMORY[0x277D85CD0];
    mach_service = xpc_connection_create_mach_service(service, v9, 1uLL);
    listenerConnection = v4->_listenerConnection;
    v4->_listenerConnection = mach_service;

    v13 = v4->_listenerConnection;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __54__WebBookmarksXPCListener_initListenerForMachService___block_invoke;
    v16[3] = &unk_279E77DF8;
    objc_copyWeak(&v17, &location);
    xpc_connection_set_event_handler(v13, v16);
    xpc_connection_set_target_queue(v4->_listenerConnection, MEMORY[0x277D85CD0]);

    xpc_connection_resume(v4->_listenerConnection);
    v14 = v4;
    objc_destroyWeak(&v17);
    objc_destroyWeak(&location);
  }

  return v4;
}

void __54__WebBookmarksXPCListener_initListenerForMachService___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained _handleIncomingConnection:v3];
}

- (void)_handleIncomingConnection:(id)connection
{
  v15 = *MEMORY[0x277D85DE8];
  connectionCopy = connection;
  v5 = connectionCopy;
  if (connectionCopy)
  {
    v6 = MEMORY[0x2743D6E50](connectionCopy);
    if (v6 == MEMORY[0x277D86450])
    {
      v11 = [[WebBookmarksXPCConnection alloc] initWithConnection:v5];
      [(WebBookmarksXPCConnection *)v11 setDelegate:self];
      [(WebBookmarksXPCConnection *)v11 setMessageHandlers:self->_messageHandlers];
      [(NSMutableArray *)self->_clientConnections addObject:v11];
    }

    else
    {
      v7 = v6;
      v8 = WBS_LOG_CHANNEL_PREFIXWebBookmarkServer();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = v8;
        v13 = 136446210;
        name = xpc_type_get_name(v7);
        _os_log_impl(&dword_272C20000, v9, OS_LOG_TYPE_INFO, "Ignoring incoming message because the message type is %{public}s", &v13, 0xCu);
      }
    }
  }

  else
  {
    v10 = WBS_LOG_CHANNEL_PREFIXWebBookmarkServer();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      LOWORD(v13) = 0;
      _os_log_impl(&dword_272C20000, v10, OS_LOG_TYPE_INFO, "Ignoring incoming message because the message is nil.", &v13, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)setHandler:(id)handler forMessageNamed:(const char *)named
{
  messageHandlers = self->_messageHandlers;
  v7 = MEMORY[0x2743D6830](handler, a2);
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:named];
  [(NSMutableDictionary *)messageHandlers setObject:v7 forKey:v6];
}

- (void)setMessageHandlers:(id)handlers
{
  v4 = [handlers mutableCopy];
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

- (void)connection:(id)connection didCloseWithError:(id)error
{
  errorCopy = error;
  connectionCopy = connection;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  [WeakRetained connection:connectionCopy didCloseWithError:errorCopy];

  [connectionCopy setDelegate:0];
  [(NSMutableArray *)self->_clientConnections removeObject:connectionCopy];
}

- (WebBookmarksXPCConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end