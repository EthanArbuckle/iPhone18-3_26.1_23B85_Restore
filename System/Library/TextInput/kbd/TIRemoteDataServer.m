@interface TIRemoteDataServer
+ (id)sharedRemoteDataServer;
+ (void)resolveAssistantFrameworkClasses;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (TIRemoteDataServer)init;
- (void)dealloc;
@end

@implementation TIRemoteDataServer

+ (void)resolveAssistantFrameworkClasses
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10000A51C;
  v2[3] = &unk_10001CBD8;
  v2[4] = a2;
  v2[5] = a1;
  if (qword_100026618 != -1)
  {
    dispatch_once(&qword_100026618, v2);
  }
}

+ (id)sharedRemoteDataServer
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000A614;
  block[3] = &unk_10001C810;
  block[4] = a1;
  if (qword_100026630 != -1)
  {
    dispatch_once(&qword_100026630, block);
  }

  v2 = qword_100026628;

  return v2;
}

- (TIRemoteDataServer)init
{
  v9.receiver = self;
  v9.super_class = TIRemoteDataServer;
  v2 = [(TIRemoteDataServer *)&v9 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_qos_class(0, QOS_CLASS_USER_INTERACTIVE, 0);
    v4 = dispatch_queue_create("com.apple.TextInput.remote-data-server", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.TextInput.rdt"];
    listener = v2->_listener;
    v2->_listener = v6;

    [(NSXPCListener *)v2->_listener setDelegate:v2];
    [(NSXPCListener *)v2->_listener _setQueue:v2->_dispatchQueue];
    [(NSXPCListener *)v2->_listener resume];
  }

  return v2;
}

- (void)dealloc
{
  [(NSXPCListener *)self->_listener setDelegate:0];
  [(NSXPCListener *)self->_listener invalidate];
  v3.receiver = self;
  v3.super_class = TIRemoteDataServer;
  [(TIRemoteDataServer *)&v3 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  if (TICanLogMessageAtLevel())
  {
    v6 = TIOSLogFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      sub_10000DC88(v5);
    }
  }

  v7 = objc_opt_new();
  [v5 setExportedObject:v7];
  v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___TIRemoteDataProtocol];
  [v5 setExportedInterface:v8];

  v9 = [(TIRemoteDataServer *)self dispatchQueue];
  [v5 _setQueue:v9];

  [v5 resume];
  return 1;
}

@end