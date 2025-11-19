@interface RTEventAgent
- (RTEventAgent)init;
- (void)createConnection;
- (void)dealloc;
- (void)launchDaemonWithRestorationIdentifier:(id)a3 reply:(id)a4;
- (void)logClients;
- (void)onEventCallback:(int64_t)a3 token:(unint64_t)a4 event:(id)a5;
@end

@implementation RTEventAgent

- (RTEventAgent)init
{
  v3.receiver = self;
  v3.super_class = RTEventAgent;
  if ([(RTEventAgent *)&v3 init])
  {
    [@"com.apple.routined-events" UTF8String];
    xpc_event_provider_create();
  }

  return 0;
}

- (void)createConnection
{
  v3 = [(RTEventAgent *)self connection];
  [v3 invalidate];

  v4 = [NSXPCConnection alloc];
  v5 = [v4 initWithMachServiceName:RTMachServiceEvent options:4096];
  [(RTEventAgent *)self setConnection:v5];

  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RTEventAgentPluginProtocol];
  v7 = [(RTEventAgent *)self connection];
  [v7 setExportedInterface:v6];

  v8 = [(RTEventAgent *)self connection];
  [v8 setExportedObject:self];

  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___RTEventAgentDaemonProtocol];
  v10 = [(RTEventAgent *)self connection];
  [v10 setRemoteObjectInterface:v9];

  [(RTEventAgent *)self connection];
  objc_claimAutoreleasedReturnValue();
  [(RTEventAgent *)self provider];
  xpc_event_provider_get_queue();
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  CFRelease(self->_provider);
  provider = self->_provider;
  if (provider)
  {
    free(provider);
    self->_provider = 0;
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  v5.receiver = self;
  v5.super_class = RTEventAgent;
  [(RTEventAgent *)&v5 dealloc];
}

- (void)onEventCallback:(int64_t)a3 token:(unint64_t)a4 event:(id)a5
{
  v8 = a5;
  v9 = v8;
  if (a3 == 1)
  {
    if (v8)
    {
      if (xpc_get_type(v8) == &_xpc_type_dictionary)
      {
        v11 = xpc_dictionary_get_value(v9, "RestorationIdentifier");

        if (v11)
        {
          v12 = xpc_dictionary_get_value(v9, "RestorationIdentifier");
          v10 = [NSString stringWithUTF8String:xpc_string_get_string_ptr(v12)];

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            v13 = sub_1704(&qword_48E8);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              v17 = 138412290;
              v18 = v10;
              _os_log_debug_impl(&dword_0, v13, OS_LOG_TYPE_DEBUG, "client with restoration identifier, %@, registering for launch on demand", &v17, 0xCu);
            }
          }

          v14 = [(RTEventAgent *)self clients];
          v15 = [NSNumber numberWithUnsignedLongLong:a4];
          [v14 setObject:v15 forKey:v10];

          if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
          {
            v16 = [(RTEventAgent *)self clients];
            [v16 enumerateKeysAndObjectsUsingBlock:&stru_4178];
          }

LABEL_7:

          goto LABEL_8;
        }
      }
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v10 = sub_1704(&qword_48E8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(v17) = 0;
        _os_log_debug_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "received an unknown event from daemon", &v17, 2u);
      }

      goto LABEL_7;
    }
  }

LABEL_8:
}

- (void)launchDaemonWithRestorationIdentifier:(id)a3 reply:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = [(RTEventAgent *)self clients];
    v9 = [v8 objectForKey:v6];

    if (v9)
    {
      [(RTEventAgent *)self provider];
      [v9 unsignedLongLongValue];
      xpc_event_provider_token_fire();
    }

    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v11 = sub_1704(&qword_48E8);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
      {
        v12 = 138412290;
        v13 = v6;
        _os_log_debug_impl(&dword_0, v11, OS_LOG_TYPE_DEBUG, "no token for restoration identifier, %@", &v12, 0xCu);
      }
    }

    if (v7)
    {
      v7[2](v7, 0);
    }
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
    {
      v10 = sub_1704(&qword_48E8);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        v12 = 138412290;
        v13 = 0;
        _os_log_debug_impl(&dword_0, v10, OS_LOG_TYPE_DEBUG, "invalid restoration identifier, %@", &v12, 0xCu);
      }
    }

    if (v7)
    {
      v7[2](v7, 0);
    }
  }
}

- (void)logClients
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG))
  {
    v3 = [(RTEventAgent *)self clients];
    [v3 enumerateKeysAndObjectsUsingBlock:&stru_4198];
  }
}

@end