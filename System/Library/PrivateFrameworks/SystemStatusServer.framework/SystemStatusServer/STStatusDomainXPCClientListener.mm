@interface STStatusDomainXPCClientListener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (STStatusDomainXPCClientListener)initWithServerHandle:(id)a3;
- (void)dealloc;
@end

@implementation STStatusDomainXPCClientListener

- (STStatusDomainXPCClientListener)initWithServerHandle:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = STStatusDomainXPCClientListener;
  v5 = [(STStatusDomainXPCClientListener *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_serverHandle, v4);
    v7 = objc_alloc(MEMORY[0x277CCAE98]);
    v8 = [v7 initWithMachServiceName:*MEMORY[0x277D6BF38]];
    xpcListener = v6->_xpcListener;
    v6->_xpcListener = v8;

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

  [(STStatusDomainXPCClientListener *)self invalidate];
  v3.receiver = v2;
  v3.super_class = STStatusDomainXPCClientListener;
  [(STStatusDomainXPCClientListener *)&v3 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [STStatusDomainXPCClientHandle alloc];
  if (self)
  {
    self = objc_loadWeakRetained(&self->_serverHandle);
  }

  v7 = [(STStatusDomainXPCClientHandle *)v6 initWithXPCConnection:v5 serverHandle:self];

  return v7 != 0;
}

@end