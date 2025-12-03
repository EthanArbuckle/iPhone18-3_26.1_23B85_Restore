@interface SPXPCConnection
- (NSString)bundleID;
- (NSString)serviceName;
- (SPXPCConnection)initWithServiceName:(id)name onQueue:(id)queue;
- (id)eventQueue;
- (id)eventQueueWithQOS:(unsigned int)s;
- (void)_handleXPCError:(id)error;
- (void)_handleXPCMessage:(id)message;
- (void)_sendInteractiveMessage:(id)message handler:(id)handler;
- (void)_sendMessage:(id)message handler:(id)handler;
- (void)_setEventHandlerOnConnection:(id)connection;
- (void)dealloc;
- (void)sendInteractiveMessage:(id)message withReply:(id)reply;
- (void)sendMessage:(id)message withReply:(id)reply;
- (void)shutdown;
@end

@implementation SPXPCConnection

- (NSString)bundleID
{
  bundleID = self->_bundleID;
  if (!bundleID)
  {
    conn = self->_conn;
    [@"application-identifier" UTF8String];
    v5 = xpc_connection_copy_entitlement_value();
    v6 = v5;
    if (v5)
    {
      if (MEMORY[0x1CCA717B0](v5) == MEMORY[0x1E69E9F10])
      {
        string_ptr = xpc_string_get_string_ptr(v6);
        if (string_ptr)
        {
          v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithUTF8String:string_ptr];
          v9 = self->_bundleID;
          self->_bundleID = v8;
        }
      }
    }

    bundleID = self->_bundleID;
  }

  return bundleID;
}

- (id)eventQueue
{
  eventQueue = self->_eventQueue;
  if (!eventQueue)
  {
    self->_ownsQueue = 1;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = qos_class_self();
    v6 = dispatch_queue_attr_make_with_qos_class(v4, v5, 0);
    v7 = dispatch_queue_create("com.apple.search.XPCEvent", v6);
    v8 = self->_eventQueue;
    self->_eventQueue = v7;

    eventQueue = self->_eventQueue;
  }

  return eventQueue;
}

- (SPXPCConnection)initWithServiceName:(id)name onQueue:(id)queue
{
  nameCopy = name;
  queueCopy = queue;
  v15.receiver = self;
  v15.super_class = SPXPCConnection;
  v8 = [(SPXPCConnection *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_eventQueue, queue);
    uTF8String = [nameCopy UTF8String];
    eventQueue = [(SPXPCConnection *)v9 eventQueue];
    mach_service = xpc_connection_create_mach_service(uTF8String, eventQueue, 0);
    conn = v9->_conn;
    v9->_conn = mach_service;

    [(SPXPCConnection *)v9 _setEventHandlerOnConnection:v9->_conn];
    xpc_connection_resume(v9->_conn);
  }

  return v9;
}

- (void)dealloc
{
  if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
  {
    [SPXPCConnection dealloc];
  }

  v3.receiver = self;
  v3.super_class = SPXPCConnection;
  [(SPXPCConnection *)&v3 dealloc];
}

- (NSString)serviceName
{
  conn = self->_conn;
  if (conn)
  {
    conn = [MEMORY[0x1E696AEC0] stringWithUTF8String:xpc_connection_get_name(conn)];
    v2 = vars8;
  }

  return conn;
}

- (id)eventQueueWithQOS:(unsigned int)s
{
  eventQueue = self->_eventQueue;
  if (!eventQueue)
  {
    self->_ownsQueue = 1;
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_attr_make_with_qos_class(v6, s, 0);
    v8 = dispatch_queue_create("com.apple.search.XPCEvent", v7);
    v9 = self->_eventQueue;
    self->_eventQueue = v8;

    eventQueue = self->_eventQueue;
  }

  return eventQueue;
}

- (void)_sendMessage:(id)message handler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  name = [messageCopy name];

  if (!name)
  {
    [SPXPCConnection _sendMessage:a2 handler:self];
  }

  if (self->_conn)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      [SPXPCConnection _sendMessage:handler:];
    }

    _createXPCMessage = [messageCopy _createXPCMessage];
    if (_createXPCMessage)
    {
      conn = self->_conn;
      if (handlerCopy)
      {
        eventQueue = [(SPXPCConnection *)self eventQueue];
        xpc_connection_send_message_with_reply(conn, _createXPCMessage, eventQueue, handlerCopy);
      }

      else
      {
        xpc_connection_send_message(self->_conn, _createXPCMessage);
      }
    }
  }
}

- (void)_sendInteractiveMessage:(id)message handler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  name = [messageCopy name];

  if (!name)
  {
    [SPXPCConnection _sendInteractiveMessage:a2 handler:self];
  }

  if (self->_conn)
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      [SPXPCConnection _sendMessage:handler:];
    }

    v10 = self->_conn;
    v11 = dispatch_get_global_queue(33, 0);
    v13 = messageCopy;
    v14 = handlerCopy;
    v12 = v10;
    tracing_dispatch_async();
  }
}

void __51__SPXPCConnection__sendInteractiveMessage_handler___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _createXPCMessage];
  if (v2)
  {
    v3 = *(a1 + 40);
    if (*(a1 + 56))
    {
      v4 = xpc_connection_send_message_with_reply_sync(v3, v2);
      if (v4)
      {
        v5 = [*(a1 + 48) eventQueue];
        v7 = *(a1 + 56);
        v6 = v4;
        tracing_dispatch_async();
      }
    }

    else
    {
      xpc_connection_send_message(v3, v2);
    }
  }
}

- (void)sendMessage:(id)message withReply:(id)reply
{
  messageCopy = message;
  replyCopy = reply;
  v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
  if (messageCopy)
  {
    if (v8)
    {
      [SPXPCConnection sendMessage:messageCopy withReply:?];
      if (replyCopy)
      {
        goto LABEL_4;
      }
    }

    else if (replyCopy)
    {
LABEL_4:
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = __41__SPXPCConnection_sendMessage_withReply___block_invoke;
      v13 = &unk_1E82F95D0;
      selfCopy = self;
      v15 = replyCopy;
      v9 = MEMORY[0x1CCA71310](&v10);

LABEL_9:
      [(SPXPCConnection *)self _sendMessage:messageCopy handler:v9, v10, v11, v12, v13, selfCopy];

      goto LABEL_10;
    }

    v9 = 0;
    goto LABEL_9;
  }

  if (v8)
  {
    [SPXPCConnection sendMessage:withReply:];
  }

LABEL_10:
}

void __41__SPXPCConnection_sendMessage_withReply___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1CCA717B0]();
  if (v4 == MEMORY[0x1E69E9E98])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __41__SPXPCConnection_sendMessage_withReply___block_invoke_cold_1(a1, v3);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = v4;
    if (v4 == MEMORY[0x1E69E9E80])
    {
      v6 = [[SPXPCMessage alloc] _initWithXPCMessage:v3 onConnection:*(a1 + 32)];
      (*(*(a1 + 40) + 16))();
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = _StringForXPCType(v5);
      _os_log_impl(&dword_1C81BF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Ignoring unexpected event of type %s", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)sendInteractiveMessage:(id)message withReply:(id)reply
{
  messageCopy = message;
  replyCopy = reply;
  v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG);
  if (messageCopy)
  {
    if (v8)
    {
      [SPXPCConnection sendMessage:messageCopy withReply:?];
      if (replyCopy)
      {
        goto LABEL_4;
      }
    }

    else if (replyCopy)
    {
LABEL_4:
      v10 = MEMORY[0x1E69E9820];
      v11 = 3221225472;
      v12 = __52__SPXPCConnection_sendInteractiveMessage_withReply___block_invoke;
      v13 = &unk_1E82F95D0;
      selfCopy = self;
      v15 = replyCopy;
      v9 = MEMORY[0x1CCA71310](&v10);

LABEL_9:
      [(SPXPCConnection *)self _sendInteractiveMessage:messageCopy handler:v9, v10, v11, v12, v13, selfCopy];

      goto LABEL_10;
    }

    v9 = 0;
    goto LABEL_9;
  }

  if (v8)
  {
    [SPXPCConnection sendMessage:withReply:];
  }

LABEL_10:
}

void __52__SPXPCConnection_sendInteractiveMessage_withReply___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = MEMORY[0x1CCA717B0]();
  if (v4 == MEMORY[0x1E69E9E98])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      __41__SPXPCConnection_sendMessage_withReply___block_invoke_cold_1(a1, v3);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v5 = v4;
    if (v4 == MEMORY[0x1E69E9E80])
    {
      v6 = [[SPXPCMessage alloc] _initWithXPCMessage:v3 onConnection:*(a1 + 32)];
      (*(*(a1 + 40) + 16))();
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v8 = 136315138;
      v9 = _StringForXPCType(v5);
      _os_log_impl(&dword_1C81BF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Ignoring unexpected event of type %s", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (void)_handleXPCError:(id)error
{
  v12 = *MEMORY[0x1E69E9840];
  errorCopy = error;
  if (errorCopy == MEMORY[0x1E69E9E18])
  {
    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      [SPXPCConnection _handleXPCError:];
    }
  }

  else
  {
    if (errorCopy != MEMORY[0x1E69E9E20])
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
      {
        string = xpc_dictionary_get_string(errorCopy, *MEMORY[0x1E69E9E28]);
        v6 = "Unknown error";
        if (string)
        {
          v6 = string;
        }

        v10 = 136315138;
        v11 = v6;
        _os_log_impl(&dword_1C81BF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Error: %s", &v10, 0xCu);
      }

      goto LABEL_13;
    }

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      [SPXPCConnection _handleXPCError:];
    }
  }

  disconnectHandler = self->_disconnectHandler;
  if (disconnectHandler)
  {
    disconnectHandler[2]();
    v8 = self->_disconnectHandler;
    self->_disconnectHandler = 0;
  }

LABEL_13:

  v9 = *MEMORY[0x1E69E9840];
}

- (void)shutdown
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void __27__SPXPCConnection_shutdown__block_invoke(uint64_t a1)
{
  xpc_connection_cancel(*(*(a1 + 32) + 8));
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;
}

- (void)_handleXPCMessage:(id)message
{
  if (self->_messageHandler)
  {
    messageCopy = message;
    v5 = [[SPXPCMessage alloc] _initWithXPCMessage:messageCopy onConnection:self];

    if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_DEBUG))
    {
      [SPXPCConnection _handleXPCMessage:v5];
    }

    (*(self->_messageHandler + 2))();
  }
}

- (void)_setEventHandlerOnConnection:(id)connection
{
  connectionCopy = connection;
  objc_initWeak(&location, self);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __48__SPXPCConnection__setEventHandlerOnConnection___block_invoke;
  v5[3] = &unk_1E82F95F8;
  objc_copyWeak(&v6, &location);
  xpc_connection_set_event_handler(connectionCopy, v5);
  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

void __48__SPXPCConnection__setEventHandlerOnConnection___block_invoke(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v6 = MEMORY[0x1CCA717B0](v3);
  if (v6 == MEMORY[0x1E69E9E98])
  {
    [WeakRetained _handleXPCError:v3];
  }

  else
  {
    v7 = v6;
    if (v6 == MEMORY[0x1E69E9E80])
    {
      [WeakRetained _handleXPCMessage:v3];
    }

    else if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO))
    {
      v9 = 136315138;
      v10 = _StringForXPCType(v7);
      _os_log_impl(&dword_1C81BF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_INFO, "Ignoring unexpected event of type %s", &v9, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v4);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)initWithXPCConnection:(uint64_t)a1 qos:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SPXPCConnection.m" lineNumber:75 description:@"Must have xpc_connection"];
}

- (void)_sendMessage:(uint64_t)a1 handler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SPXPCConnection.m" lineNumber:126 description:@"Message must have a name"];
}

- (void)_sendMessage:handler:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  qos_class_self();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_sendInteractiveMessage:(uint64_t)a1 handler:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a1 object:a2 file:@"SPXPCConnection.m" lineNumber:141 description:@"Message must have a name"];
}

- (void)sendMessage:(uint64_t)a1 withReply:(void *)a2 .cold.1(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = [a2 name];
  OUTLINED_FUNCTION_3_1();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void __41__SPXPCConnection_sendMessage_withReply___block_invoke_cold_1(uint64_t a1, xpc_object_t xdict)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(*(a1 + 32) + 8);
  xpc_dictionary_get_string(xdict, *MEMORY[0x1E69E9E28]);
  OUTLINED_FUNCTION_2_1();
  OUTLINED_FUNCTION_4_0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);
  v8 = *MEMORY[0x1E69E9840];
}

- (void)_handleXPCError:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_handleXPCError:.cold.2()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

- (void)_handleXPCMessage:(void *)a1 .cold.1(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v1 = [a1 name];
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v2, v3, v4, v5, v6, 0xCu);

  v7 = *MEMORY[0x1E69E9840];
}

@end