@interface ICSharedListeningService
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (void)dealloc;
@end

@implementation ICSharedListeningService

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = connectionCopy;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    memset(buf, 0, 32);
  }

  v8 = MSVBundleIDForAuditToken();
  v9 = [v8 length];
  if (v9)
  {
    controllers = [(ICSharedListeningService *)self controllers];
    v11 = controllers == 0;

    if (v11)
    {
      v12 = objc_opt_new();
      [(ICSharedListeningService *)self setControllers:v12];
    }

    v13 = sub_1000011C4();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ICSharedListeningService: %p: accepting new connection %@.", buf, 0x16u);
    }

    v14 = [[ICHostedSharedListeningConnectionController alloc] initWithConnection:v7 bundleID:v8];
    controllers2 = [(ICSharedListeningService *)self controllers];
    [controllers2 addObject:v14];

    v16 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ICSharedListeningConnectionServiceProtocol];
    [v7 setExportedObject:v14];
    [v7 setExportedInterface:v16];
    v17 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ICSharedListeningConnectionClientProtocol];
    v18 = [NSSet setWithObjects:objc_opt_class(), 0];
    [v17 setClasses:v18 forSelector:"receiveConnectionError:" argumentIndex:0 ofReply:0];

    v19 = [NSSet setWithObjects:objc_opt_class(), 0];
    [v17 setClasses:v19 forSelector:"receiveFatalError:" argumentIndex:0 ofReply:0];

    [v7 setRemoteObjectInterface:v17];
    objc_initWeak(buf, self);
    objc_initWeak(&location, v14);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100001218;
    v25[3] = &unk_100008198;
    objc_copyWeak(&v26, buf);
    objc_copyWeak(&v27, &location);
    v25[4] = self;
    [v7 setInvalidationHandler:v25];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100001380;
    v22[3] = &unk_100008198;
    objc_copyWeak(&v23, buf);
    objc_copyWeak(&v24, &location);
    v22[4] = self;
    [v7 setInterruptionHandler:v22];
    [v7 resume];
    objc_destroyWeak(&v24);
    objc_destroyWeak(&v23);
    objc_destroyWeak(&v27);
    objc_destroyWeak(&v26);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
  }

  else
  {
    [v7 invalidate];
  }

  return v9 != 0;
}

- (void)dealloc
{
  v3 = sub_1000011C4();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "ICSharedListeningService: %p: deallocating.", buf, 0xCu);
  }

  controllers = [(ICSharedListeningService *)self controllers];
  [controllers removeAllObjects];

  v5.receiver = self;
  v5.super_class = ICSharedListeningService;
  [(ICSharedListeningService *)&v5 dealloc];
}

@end