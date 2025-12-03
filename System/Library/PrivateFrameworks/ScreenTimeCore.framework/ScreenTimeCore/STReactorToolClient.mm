@interface STReactorToolClient
+ (id)_newConnection;
- (BOOL)scheduleFailStuckMessagesWithError:(id *)error;
- (BOOL)scheduleMessageRetryWithError:(id *)error;
- (BOOL)scheduleStoreClenaupWithError:(id *)error;
- (BOOL)shutdownReactorWithError:(id *)error;
- (STReactorToolClient)init;
- (id)currentMessageTransportReachabilityMap:(id *)map;
- (void)dealloc;
@end

@implementation STReactorToolClient

- (STReactorToolClient)init
{
  v6.receiver = self;
  v6.super_class = STReactorToolClient;
  v2 = [(STReactorToolClient *)&v6 init];
  v3 = +[STReactorToolClient _newConnection];
  connection = v2->_connection;
  v2->_connection = v3;

  [(NSXPCConnection *)v2->_connection resume];
  return v2;
}

- (void)dealloc
{
  [(NSXPCConnection *)self->_connection invalidate];
  v3.receiver = self;
  v3.super_class = STReactorToolClient;
  [(STReactorToolClient *)&v3 dealloc];
}

+ (id)_newConnection
{
  v2 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.ScreenTimeAgent.reactor-tool" options:4096];
  v3 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___STReactorToolServiceInterface];
  [v2 setRemoteObjectInterface:v3];

  return v2;
}

- (BOOL)shutdownReactorWithError:(id *)error
{
  v5 = +[STLog reactorTool];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requesting reactor shutdown", buf, 2u);
  }

  *buf = 0;
  v12 = buf;
  v13 = 0x3032000000;
  v14 = sub_10006C250;
  v15 = sub_10006C260;
  v16 = 0;
  connection = [(STReactorToolClient *)self connection];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006C268;
  v10[3] = &unk_1001A3750;
  v10[4] = buf;
  v7 = [connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  [v7 shutdownReactorWithCompletion:&stru_1001A55D8];
  if (error)
  {
    *error = *(v12 + 5);
  }

  v8 = *(v12 + 5) == 0;

  _Block_object_dispose(buf, 8);
  return v8;
}

- (BOOL)scheduleMessageRetryWithError:(id *)error
{
  v5 = +[STLog reactorTool];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requesting schedule message retry", buf, 2u);
  }

  *buf = 0;
  v12 = buf;
  v13 = 0x3032000000;
  v14 = sub_10006C250;
  v15 = sub_10006C260;
  v16 = 0;
  connection = [(STReactorToolClient *)self connection];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006C478;
  v10[3] = &unk_1001A3750;
  v10[4] = buf;
  v7 = [connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  [v7 scheduleMessageRetryActivity:&stru_1001A55F8];
  if (error)
  {
    *error = *(v12 + 5);
  }

  v8 = *(v12 + 5) == 0;

  _Block_object_dispose(buf, 8);
  return v8;
}

- (BOOL)scheduleStoreClenaupWithError:(id *)error
{
  v5 = +[STLog reactorTool];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requesting schedule store cleanup", buf, 2u);
  }

  *buf = 0;
  v12 = buf;
  v13 = 0x3032000000;
  v14 = sub_10006C250;
  v15 = sub_10006C260;
  v16 = 0;
  connection = [(STReactorToolClient *)self connection];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006C688;
  v10[3] = &unk_1001A3750;
  v10[4] = buf;
  v7 = [connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  [v7 scheduleStoreCleanupActivity:&stru_1001A5618];
  if (error)
  {
    *error = *(v12 + 5);
  }

  v8 = *(v12 + 5) == 0;

  _Block_object_dispose(buf, 8);
  return v8;
}

- (BOOL)scheduleFailStuckMessagesWithError:(id *)error
{
  v5 = +[STLog reactorTool];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requesting schedule fail stuck messages", buf, 2u);
  }

  *buf = 0;
  v12 = buf;
  v13 = 0x3032000000;
  v14 = sub_10006C250;
  v15 = sub_10006C260;
  v16 = 0;
  connection = [(STReactorToolClient *)self connection];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006C898;
  v10[3] = &unk_1001A3750;
  v10[4] = buf;
  v7 = [connection synchronousRemoteObjectProxyWithErrorHandler:v10];

  [v7 scheduleFailStuckMessagesActivity:&stru_1001A5638];
  if (error)
  {
    *error = *(v12 + 5);
  }

  v8 = *(v12 + 5) == 0;

  _Block_object_dispose(buf, 8);
  return v8;
}

- (id)currentMessageTransportReachabilityMap:(id *)map
{
  v5 = +[STLog reactorTool];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Requesting current message transport reachability map", buf, 2u);
  }

  *buf = 0;
  v19 = buf;
  v20 = 0x3032000000;
  v21 = sub_10006C250;
  v22 = sub_10006C260;
  v23 = 0;
  connection = [(STReactorToolClient *)self connection];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10006CB58;
  v17[3] = &unk_1001A3750;
  v17[4] = buf;
  v7 = [connection synchronousRemoteObjectProxyWithErrorHandler:v17];

  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_10006C250;
  v15 = sub_10006C260;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006CB68;
  v10[3] = &unk_1001A5660;
  v10[4] = &v11;
  [v7 currentMessageTransportReachabilityMap:v10];
  if (map)
  {
    *map = *(v19 + 5);
  }

  v8 = v12[5];
  _Block_object_dispose(&v11, 8);

  _Block_object_dispose(buf, 8);

  return v8;
}

@end