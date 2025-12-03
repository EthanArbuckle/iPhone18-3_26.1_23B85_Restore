@interface TSDDaemonServiceServer
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (TSDDaemonServiceServer)init;
- (void)dispatchDaemonServiceCallbackForProcess:(int)process clientID:(unsigned int)d ioResult:(int)result args:(const unint64_t *)args numArgs:(unsigned int)numArgs;
@end

@implementation TSDDaemonServiceServer

- (TSDDaemonServiceServer)init
{
  v10.receiver = self;
  v10.super_class = TSDDaemonServiceServer;
  v2 = [(TSDDaemonServiceServer *)&v10 init];
  if (v2)
  {
    if (qword_1000588A8 != -1)
    {
      sub_10002CC2C();
    }

    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.timesync.expositor"];
    listener = v2->_listener;
    v2->_listener = v3;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    v5 = dispatch_queue_create("com.apple.timesync.DaemonService.connections", 0);
    connectionsQueue = v2->_connectionsQueue;
    v2->_connectionsQueue = v5;

    v7 = +[NSMutableArray array];
    clientConnections = v2->_clientConnections;
    v2->_clientConnections = v7;

    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  listener = self->_listener;
  if (listener == listenerCopy)
  {
    objc_initWeak(&location, self);
    v9 = objc_alloc_init(TSDDaemonServiceServerExported);
    [(TSDDaemonServiceServerExported *)v9 setObject:self];
    -[TSDDaemonServiceServerExported setProcessID:](v9, "setProcessID:", [connectionCopy processIdentifier]);
    v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TSXDaemonServiceClientProtocol];
    [connectionCopy setRemoteObjectInterface:v10];

    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TSXDaemonServiceServerProtocol];
    [connectionCopy setExportedInterface:v11];

    [connectionCopy setExportedObject:v9];
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_10001B790;
    v18[3] = &unk_10004CFE8;
    objc_copyWeak(&v20, &location);
    v12 = connectionCopy;
    v19 = v12;
    [v12 setInvalidationHandler:v18];
    connectionsQueue = self->_connectionsQueue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10001BA08;
    v15[3] = &unk_10004D038;
    v15[4] = self;
    v16 = v12;
    objc_copyWeak(&v17, &location);
    dispatch_sync(connectionsQueue, v15);
    objc_destroyWeak(&v17);

    objc_destroyWeak(&v20);
    objc_destroyWeak(&location);
  }

  return listener == listenerCopy;
}

- (void)dispatchDaemonServiceCallbackForProcess:(int)process clientID:(unsigned int)d ioResult:(int)result args:(const unint64_t *)args numArgs:(unsigned int)numArgs
{
  connectionsQueue = self->_connectionsQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10001BD44;
  v8[3] = &unk_10004D088;
  v8[4] = self;
  v8[5] = args;
  processCopy = process;
  numArgsCopy = numArgs;
  dCopy = d;
  resultCopy = result;
  dispatch_sync(connectionsQueue, v8);
}

@end