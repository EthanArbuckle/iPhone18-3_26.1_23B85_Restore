@interface VSKeepAliveServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (VSKeepAliveServer)init;
- (void)dealloc;
@end

@implementation VSKeepAliveServer

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = objc_alloc_init(VSKeepAliveClient);
  v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___VSRemoteKeepAlive];
  [connectionCopy setExportedInterface:v6];

  [connectionCopy setExportedObject:v5];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000EBC9C;
  v9[3] = &unk_1000FEAD8;
  v10 = v5;
  v7 = v5;
  [connectionCopy setInvalidationHandler:v9];
  [connectionCopy resume];

  return 1;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_keepAliveListener setDelegate:0];
  [(NSXPCListener *)self->_keepAliveListener invalidate];
  v3.receiver = self;
  v3.super_class = VSKeepAliveServer;
  [(VSKeepAliveServer *)&v3 dealloc];
}

- (VSKeepAliveServer)init
{
  v9.receiver = self;
  v9.super_class = VSKeepAliveServer;
  v2 = [(VSKeepAliveServer *)&v9 init];
  if (v2)
  {
    v3 = [NSXPCListener alloc];
    v4 = [v3 initWithMachServiceName:VSKeepAliveMachServiceName];
    keepAliveListener = v2->_keepAliveListener;
    v2->_keepAliveListener = v4;

    [(NSXPCListener *)v2->_keepAliveListener setDelegate:v2];
    v6 = objc_alloc_init(VSServerKeepAliveManager);
    keepAliveManager = v2->_keepAliveManager;
    v2->_keepAliveManager = v6;
  }

  return v2;
}

@end