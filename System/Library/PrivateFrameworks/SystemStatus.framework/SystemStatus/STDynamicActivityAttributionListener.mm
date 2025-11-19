@interface STDynamicActivityAttributionListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (STDynamicActivityAttributionListener)initWithServerHandle:(id)a3;
- (void)dealloc;
@end

@implementation STDynamicActivityAttributionListener

- (STDynamicActivityAttributionListener)initWithServerHandle:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = STDynamicActivityAttributionListener;
  v5 = [(STDynamicActivityAttributionListener *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_serverHandle, v4);
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
  v2 = self;
  if (self)
  {
    self = self->_xpcListener;
  }

  [(STDynamicActivityAttributionListener *)self invalidate];
  v3.receiver = v2;
  v3.super_class = STDynamicActivityAttributionListener;
  [(STDynamicActivityAttributionListener *)&v3 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [STDynamicActivityAttributionXPCClientHandle alloc];
  if (self)
  {
    self = objc_loadWeakRetained(&self->_serverHandle);
  }

  v7 = [(STDynamicActivityAttributionXPCClientHandle *)v6 initWithXPCConnection:v5 serverHandle:self];

  return v7 != 0;
}

@end