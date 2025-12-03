@interface _RWIRelayConnectionToApplication
- (_RWIRelayConnectionToApplication)initWithConnection:(id)connection;
- (_RWIRelayConnectionToApplicationDelegate)delegate;
- (id)_deserializeMessage:(id)message;
- (void)_handleEvent:(id)event;
- (void)close;
- (void)dealloc;
- (void)sendMessage:(id)message userInfo:(id)info;
@end

@implementation _RWIRelayConnectionToApplication

- (_RWIRelayConnectionToApplication)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v14.receiver = self;
  v14.super_class = _RWIRelayConnectionToApplication;
  v6 = [(_RWIRelayConnectionToApplication *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
    xpc_connection_set_target_queue(v7->_connection, MEMORY[0x277D85CD0]);
    connection = v7->_connection;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __55___RWIRelayConnectionToApplication_initWithConnection___block_invoke;
    handler[3] = &unk_279EAA450;
    v9 = v7;
    v13 = v9;
    xpc_connection_set_event_handler(connection, handler);
    xpc_connection_resume(v7->_connection);
    v10 = v9;
  }

  return v7;
}

- (void)close
{
  connection = self->_connection;
  if (connection)
  {
    xpc_connection_cancel(connection);
    v4 = self->_connection;
    self->_connection = 0;
  }
}

- (void)dealloc
{
  [(_RWIRelayConnectionToApplication *)self close];
  v3.receiver = self;
  v3.super_class = _RWIRelayConnectionToApplication;
  [(_RWIRelayConnectionToApplication *)&v3 dealloc];
}

- (id)_deserializeMessage:(id)message
{
  messageCopy = message;
  v5 = MEMORY[0x2743DBE80]();
  v6 = MEMORY[0x277D86468];
  if (v5 != MEMORY[0x277D86468])
  {
    v7 = 0;
    goto LABEL_13;
  }

  v8 = xpc_dictionary_get_value(messageCopy, "msgData");
  v9 = v8;
  if (v8 && MEMORY[0x2743DBE80](v8) == v6)
  {
    v12 = _CFXPCCreateCFObjectFromXPCMessage();
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v12;
      v7 = v12;
LABEL_11:

      goto LABEL_12;
    }

LABEL_10:
    v7 = 0;
    goto LABEL_11;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = objc_opt_respondsToSelector();

  if (v11)
  {
    v12 = objc_loadWeakRetained(&self->_delegate);
    [v12 xpcConnection:self unhandledMessage:messageCopy];
    goto LABEL_10;
  }

  v7 = 0;
LABEL_12:

LABEL_13:

  return v7;
}

- (void)_handleEvent:(id)event
{
  eventCopy = event;
  v5 = eventCopy;
  if (self->_connection)
  {
    v6 = MEMORY[0x2743DBE80](eventCopy);
    v7 = MEMORY[0x277D86480];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v9 = WeakRetained;
    if (v6 == v7)
    {
      [WeakRetained xpcConnectionFailed:self];

      [(_RWIRelayConnectionToApplication *)self close];
    }

    else
    {

      if (v9)
      {
        v10 = [(_RWIRelayConnectionToApplication *)self _deserializeMessage:v5];
        v11 = objc_opt_class();
        if (objc_opt_isKindOfClass())
        {

          v12 = RWIMessageTraceLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
          {
            [_RWIRelayConnectionToApplication _handleEvent:?];
          }

          v11 = [v10 objectForKey:@"messageName"];
          v13 = objc_opt_class();
          if (objc_opt_isKindOfClass())
          {

            v13 = [v10 objectForKey:@"userInfo"];
            v14 = objc_opt_class();
            if (v13 && (objc_opt_isKindOfClass() & 1) == 0)
            {
              v18 = objc_opt_class();
              logUnexpectedType(v18, v14);
            }

            else
            {

              v15 = objc_loadWeakRetained(&self->_delegate);
              [v15 xpcConnection:self receivedMessage:v11 userInfo:v13];
            }
          }

          else
          {
            v17 = objc_opt_class();
            logUnexpectedType(v17, v13);
          }
        }

        else
        {
          v16 = objc_opt_class();
          logUnexpectedType(v16, v11);
        }
      }
    }
  }
}

- (void)sendMessage:(id)message userInfo:(id)info
{
  infoCopy = info;
  if (self->_connection)
  {
    v7 = [MEMORY[0x277CBEB38] dictionaryWithObject:message forKey:@"messageName"];
    v8 = v7;
    if (infoCopy)
    {
      [v7 setObject:infoCopy forKey:@"userInfo"];
    }

    v9 = RWIMessageTraceLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      [_RWIRelayConnectionToApplication sendMessage:? userInfo:?];
    }

    v10 = _CFXPCCreateXPCMessageWithCFObject();
    if (v10)
    {
      v11 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_value(v11, "msgData", v10);
      xpc_connection_send_message(self->_connection, v11);
    }
  }
}

- (_RWIRelayConnectionToApplicationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)_handleEvent:(void *)a1 .cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 tag];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_273C9C000, v2, v3, "IPC app[%{public}@]->relay: %{private}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

- (void)sendMessage:(void *)a1 userInfo:.cold.1(void *a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v1 = [a1 tag];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1(&dword_273C9C000, v2, v3, "IPC relay->app[%{public}@]: %{private}@", v4, v5, v6, v7, v9);

  v8 = *MEMORY[0x277D85DE8];
}

@end