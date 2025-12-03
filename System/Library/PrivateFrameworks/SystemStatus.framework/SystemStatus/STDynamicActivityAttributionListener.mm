@interface STDynamicActivityAttributionListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (STDynamicActivityAttributionListener)initWithServerHandle:(id)handle;
- (void)dealloc;
@end

@implementation STDynamicActivityAttributionListener

- (STDynamicActivityAttributionListener)initWithServerHandle:(id)handle
{
  handleCopy = handle;
  v10.receiver = self;
  v10.super_class = STDynamicActivityAttributionListener;
  v5 = [(STDynamicActivityAttributionListener *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_serverHandle, handleCopy);
    v7 = [objc_alloc(MEMORY[0x1E696B0D8]) initWithMachServiceName:@"com.apple.systemstatus.activityattribution"];
    xpcListener = v6->_xpcListener;
    v6->_xpcListener = v7;

    [(NSXPCListener *)v6->_xpcListener setDelegate:v6];
    [(NSXPCListener *)v6->_xpcListener resume];
  }

  return v6;
}

- (void)dealloc
{
  selfCopy = self;
  if (self)
  {
    self = self->_xpcListener;
  }

  [(STDynamicActivityAttributionListener *)self invalidate];
  v3.receiver = selfCopy;
  v3.super_class = STDynamicActivityAttributionListener;
  [(STDynamicActivityAttributionListener *)&v3 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [STDynamicActivityAttributionXPCClientHandle alloc];
  if (self)
  {
    self = objc_loadWeakRetained(&self->_serverHandle);
  }

  v7 = [(STDynamicActivityAttributionXPCClientHandle *)v6 initWithXPCConnection:connectionCopy serverHandle:self];

  return v7 != 0;
}

@end