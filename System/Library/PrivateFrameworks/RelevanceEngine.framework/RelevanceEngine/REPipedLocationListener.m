@interface REPipedLocationListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (id)_init;
- (void)dealloc;
@end

@implementation REPipedLocationListener

- (id)_init
{
  v8.receiver = self;
  v8.super_class = REPipedLocationListener;
  v2 = [(RESingleton *)&v8 _init];
  if (v2)
  {
    v3 = RELogForDomain(5);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_22859F000, v3, OS_LOG_TYPE_INFO, "Starting piped location listener", v7, 2u);
    }

    v4 = [objc_alloc(MEMORY[0x277CCAE98]) initWithMachServiceName:@"com.apple.relevanceengine.pipedlocation"];
    v5 = v2[1];
    v2[1] = v4;

    [v2[1] setDelegate:v2];
    [v2[1] resume];
  }

  return v2;
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

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = RELogForDomain(5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [v5 description];
    v12 = 136315138;
    v13 = [v8 UTF8String];
    _os_log_impl(&dword_22859F000, v7, OS_LOG_TYPE_INFO, "New piped location connection: %s", &v12, 0xCu);
  }

  v9 = +[(RESingleton *)REPipedLocationDonor];
  [v9 setConnection:v6];

  v10 = *MEMORY[0x277D85DE8];
  return 1;
}

@end