@interface _RWITCPServer
- (BOOL)_createListenDispatchSource;
- (BOOL)_listenOnPort:(unsigned __int16)port;
- (_RWITCPServer)initWithLaunchdSocketName:(const char *)name delegate:(id)delegate;
- (_RWITCPServerDelegate)delegate;
- (id)_initWithDelegate:(id)delegate;
- (void)connectionClosed:(id)closed;
- (void)dealloc;
@end

@implementation _RWITCPServer

- (id)_initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v11.receiver = self;
  v11.super_class = _RWITCPServer;
  v5 = [(_RWITCPServer *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_delegate, delegateCopy);
    v6->_listenSocket = -1;
    v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
    connections = v6->_connections;
    v6->_connections = v7;

    v9 = v6;
  }

  return v6;
}

- (_RWITCPServer)initWithLaunchdSocketName:(const char *)name delegate:(id)delegate
{
  v5 = RWIDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_RWITCPServer initWithLaunchdSocketName:v5 delegate:?];
  }

  return 0;
}

- (void)dealloc
{
  listenSocket = self->_listenSocket;
  if ((listenSocket & 0x80000000) == 0)
  {
    close(listenSocket);
  }

  v4.receiver = self;
  v4.super_class = _RWITCPServer;
  [(_RWITCPServer *)&v4 dealloc];
}

- (BOOL)_listenOnPort:(unsigned __int16)port
{
  portCopy = port;
  v5 = socket(30, 1, 6);
  self->_listenSocket = v5;
  if (v5 == -1)
  {
    v7 = RWIDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_RWITCPServer _listenOnPort:];
    }
  }

  else
  {
    v12 = 1;
    setsockopt(v5, 0xFFFF, 4, &v12, 4u);
    setsockopt(self->_listenSocket, 0xFFFF, 512, &v12, 4u);
    v10 = 0uLL;
    v9 = 7680;
    v11 = 0;
    WORD1(v9) = __rev16(portCopy);
    v10 = *MEMORY[0x277D85EF0];
    if (bind(self->_listenSocket, &v9, 0x1Cu) == -1)
    {
      v8 = RWIDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [_RWITCPServer _listenOnPort:];
      }

      return 0;
    }

    if (listen(self->_listenSocket, 5) != -1)
    {
      return [(_RWITCPServer *)self _createListenDispatchSource];
    }

    v7 = RWIDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      [_RWITCPServer _listenOnPort:];
    }
  }

  return 0;
}

- (BOOL)_createListenDispatchSource
{
  v3 = dispatch_queue_create("com.apple.webinspector.tcpserver", 0);
  serverQueue = self->_serverQueue;
  self->_serverQueue = v3;

  v5 = dispatch_source_create(MEMORY[0x277D85D28], self->_listenSocket, 0, self->_serverQueue);
  serverSource = self->_serverSource;
  self->_serverSource = v5;

  v7 = self->_serverSource;
  if (v7)
  {
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __44___RWITCPServer__createListenDispatchSource__block_invoke;
    handler[3] = &unk_279EAA530;
    handler[4] = self;
    dispatch_source_set_event_handler(v7, handler);
    dispatch_resume(self->_serverSource);
  }

  else
  {
    v8 = RWIDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      [(_RWITCPServer *)v8 _createListenDispatchSource];
    }
  }

  return v7 != 0;
}

- (void)connectionClosed:(id)closed
{
  closedCopy = closed;
  serverQueue = self->_serverQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __34___RWITCPServer_connectionClosed___block_invoke;
  v7[3] = &unk_279EAA508;
  v7[4] = self;
  v8 = closedCopy;
  v6 = closedCopy;
  dispatch_async(serverQueue, v7);
}

- (_RWITCPServerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_listenOnPort:.cold.1()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_listenOnPort:.cold.2()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_listenOnPort:.cold.3()
{
  v7 = *MEMORY[0x277D85DE8];
  v0 = __error();
  strerror(*v0);
  OUTLINED_FUNCTION_0_2();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x277D85DE8];
}

@end