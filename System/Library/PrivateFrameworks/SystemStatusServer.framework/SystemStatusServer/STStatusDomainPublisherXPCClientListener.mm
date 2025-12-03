@interface STStatusDomainPublisherXPCClientListener
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (STStatusDomainPublisherXPCClientListener)initWithServerHandle:(id)handle;
- (void)dealloc;
@end

@implementation STStatusDomainPublisherXPCClientListener

- (STStatusDomainPublisherXPCClientListener)initWithServerHandle:(id)handle
{
  handleCopy = handle;
  v11.receiver = self;
  v11.super_class = STStatusDomainPublisherXPCClientListener;
  v5 = [(STStatusDomainPublisherXPCClientListener *)&v11 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_serverHandle, handleCopy);
    v7 = objc_alloc(MEMORY[0x277CCAE98]);
    v8 = [v7 initWithMachServiceName:*MEMORY[0x277D6BF30]];
    xpcListener = v6->_xpcListener;
    v6->_xpcListener = v8;

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

  [(STStatusDomainPublisherXPCClientListener *)self invalidate];
  v3.receiver = selfCopy;
  v3.super_class = STStatusDomainPublisherXPCClientListener;
  [(STStatusDomainPublisherXPCClientListener *)&v3 dealloc];
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = [STStatusDomainPublisherXPCClientHandle alloc];
  if (self)
  {
    self = objc_loadWeakRetained(&self->_serverHandle);
  }

  v7 = [(STStatusDomainPublisherXPCClientHandle *)v6 initWithXPCConnection:connectionCopy serverHandle:self];

  return v7 != 0;
}

@end