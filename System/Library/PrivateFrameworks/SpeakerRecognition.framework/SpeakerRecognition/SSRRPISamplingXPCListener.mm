@interface SSRRPISamplingXPCListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (SSRRPISamplingXPCListener)init;
- (SSRRPISamplingXPCListener)initWithListener:(id)listener;
- (void)listen;
@end

@implementation SSRRPISamplingXPCListener

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v23 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v8 = *MEMORY[0x277D01970];
  v9 = *MEMORY[0x277D01970];
  if (self->_listener == listenerCopy)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "[SSRRPISamplingXPCListener listener:shouldAcceptNewConnection:]";
      _os_log_impl(&dword_225E12000, v8, OS_LOG_TYPE_DEFAULT, "%s SSRRPISamplingXPCListener start listening", &v19, 0xCu);
    }

    v11 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283934D00];
    [connectionCopy setExportedInterface:v11];

    v12 = [@"com.apple.ssr.rpisamplingservice" stringByReplacingOccurrencesOfString:@"com.apple." withString:&stru_283923FC0];
    v10 = [MEMORY[0x277D018F8] xpcConnection:connectionCopy hasEntitlement:v12];
    if (v10)
    {
      exportedObject = self->_exportedObject;
      if (!exportedObject)
      {
        v14 = +[SSRRPISampler sharedInstance];
        v15 = self->_exportedObject;
        self->_exportedObject = v14;

        exportedObject = self->_exportedObject;
      }

      [connectionCopy setExportedObject:exportedObject];
      [connectionCopy resume];
    }

    else
    {
      v16 = *MEMORY[0x277D015D8];
      if (os_log_type_enabled(*MEMORY[0x277D015D8], OS_LOG_TYPE_DEFAULT))
      {
        v19 = 136315394;
        v20 = "[SSRRPISamplingXPCListener listener:shouldAcceptNewConnection:]";
        v21 = 2112;
        v22 = @"com.apple.ssr.rpisamplingservice";
        _os_log_impl(&dword_225E12000, v16, OS_LOG_TYPE_DEFAULT, "%s SSRRPISamplingXPCListener does not have entitlement: %@", &v19, 0x16u);
      }

      [connectionCopy invalidate];
    }
  }

  else
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v19 = 136315138;
      v20 = "[SSRRPISamplingXPCListener listener:shouldAcceptNewConnection:]";
      _os_log_error_impl(&dword_225E12000, v8, OS_LOG_TYPE_ERROR, "%s we got unknown types of XPC connection request", &v19, 0xCu);
    }

    v10 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

- (void)listen
{
  v7 = *MEMORY[0x277D85DE8];
  [(NSXPCListener *)self->_listener setDelegate:self];
  [(NSXPCListener *)self->_listener resume];
  v3 = *MEMORY[0x277D01970];
  if (os_log_type_enabled(*MEMORY[0x277D01970], OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[SSRRPISamplingXPCListener listen]";
    _os_log_impl(&dword_225E12000, v3, OS_LOG_TYPE_DEFAULT, "%s SSRRPISamplingXPCListener start listening", &v5, 0xCu);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (SSRRPISamplingXPCListener)init
{
  v3 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.ssr.rpisamplingservice"];
  v4 = [(SSRRPISamplingXPCListener *)self initWithListener:v3];

  return v4;
}

- (SSRRPISamplingXPCListener)initWithListener:(id)listener
{
  listenerCopy = listener;
  v9.receiver = self;
  v9.super_class = SSRRPISamplingXPCListener;
  v6 = [(SSRRPISamplingXPCListener *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_listener, listener);
  }

  return v7;
}

@end