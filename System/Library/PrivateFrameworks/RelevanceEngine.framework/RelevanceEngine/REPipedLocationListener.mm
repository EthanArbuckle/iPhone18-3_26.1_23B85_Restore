@interface REPipedLocationListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (id)_init;
- (void)dealloc;
@end

@implementation REPipedLocationListener

- (id)_init
{
  v8.receiver = self;
  v8.super_class = REPipedLocationListener;
  _init = [(RESingleton *)&v8 _init];
  if (_init)
  {
    v3 = RELogForDomain(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22859F000, v3, OS_LOG_TYPE_INFO, "Starting piped location listener", v7, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.relevanceengine.pipedlocation"];
    v5 = _init[1];
    _init[1] = v4;

    [_init[1] setDelegate:_init];
    [_init[1] resume];
  }

  return _init;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener invalidate];
  [(NSXPCListener *)self->_listener setDelegate:0];
  listener = self->_listener;
  self->_listener = 0;

  v4.receiver = self;
  v4.super_class = REPipedLocationListener;
  [(REPipedLocationListener *)&v4 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  v14 = *MEMORY[0x277D85DE8];
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = RELogForDomain(5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [listenerCopy description];
    v12 = 136315138;
    uTF8String = [v8 UTF8String];
    _os_log_impl(&dword_22859F000, v7, OS_LOG_TYPE_INFO, "New piped location connection: %s", &v12, 0xCu);
  }

  v9 = +[(RESingleton *)REPipedLocationDonor];
  [v9 setConnection:connectionCopy];

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

@end