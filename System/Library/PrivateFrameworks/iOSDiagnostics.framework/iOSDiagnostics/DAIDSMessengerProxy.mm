@interface DAIDSMessengerProxy
+ (id)allowedDataClasses;
- (DAIDSMessageReceiver)receiver;
- (DAIDSMessengerProxy)init;
- (id)_createXPCConnection;
- (void)availableDestinationsWithCompletion:(id)a3;
- (void)receiveMessage:(id)a3 data:(id)a4 fromDestination:(id)a5 expectsResponse:(BOOL)a6 response:(id)a7;
- (void)setReceiver:(id)a3;
@end

@implementation DAIDSMessengerProxy

- (DAIDSMessengerProxy)init
{
  v10.receiver = self;
  v10.super_class = DAIDSMessengerProxy;
  v2 = [(DAIDSMessengerProxy *)&v10 init];
  if (v2)
  {
    v3 = objc_opt_new();
    pendingTasks = v2->_pendingTasks;
    v2->_pendingTasks = v3;

    v5 = dispatch_queue_create("com.apple.Diagnostics.deviceMessageReceiverQueue", 0);
    messageReceiverQueue = v2->_messageReceiverQueue;
    v2->_messageReceiverQueue = v5;

    v7 = [(DAIDSMessengerProxy *)v2 _createXPCConnection];
    connection = v2->_connection;
    v2->_connection = v7;
  }

  return v2;
}

- (void)setReceiver:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v23 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[DAIDSMessengerProxy] Setting receiver: %@", buf, 0xCu);
  }

  objc_storeWeak(&v5->_receiver, v4);
  v7 = [(DAIDSMessengerProxy *)v5 pendingTasks];
  v8 = [v7 count] == 0;

  if (!v8)
  {
    v9 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(DAIDSMessengerProxy *)v5 pendingTasks];
      v11 = [v10 count];
      *buf = 134217984;
      v23 = v11;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[DAIDSMessengerProxy] Executing pending tasks, count: %lu", buf, 0xCu);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v12 = [(DAIDSMessengerProxy *)v5 pendingTasks];
    v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v13)
    {
      v14 = *v18;
      do
      {
        v15 = 0;
        do
        {
          if (*v18 != v14)
          {
            objc_enumerationMutation(v12);
          }

          (*(*(*(&v17 + 1) + 8 * v15) + 16))();
          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v12 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v13);
    }

    v16 = [(DAIDSMessengerProxy *)v5 pendingTasks];
    [v16 removeAllObjects];
  }

  objc_sync_exit(v5);
}

- (void)availableDestinationsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(DAIDSMessengerProxy *)self connection];
  v6 = [v5 remoteObjectProxyWithErrorHandler:&stru_10001C788];

  [v6 availableDestinationsWithCompletion:v4];
}

- (void)receiveMessage:(id)a3 data:(id)a4 fromDestination:(id)a5 expectsResponse:(BOOL)a6 response:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a7;
  v16 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(DAIDSMessengerProxy *)self receiver];
    *buf = 136315650;
    v41 = "[DAIDSMessengerProxy receiveMessage:data:fromDestination:expectsResponse:response:]";
    v42 = 2112;
    v43 = v12;
    v44 = 2112;
    v45 = v17;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[DAIDSMessengerProxy] %s, message: %@, receiver: %@", buf, 0x20u);
  }

  objc_initWeak(&location, self);
  v28 = _NSConcreteStackBlock;
  v29 = 3221225472;
  v30 = sub_100004988;
  v31 = &unk_10001C7F8;
  v32 = self;
  objc_copyWeak(&v37, &location);
  v18 = v12;
  v33 = v18;
  v19 = v13;
  v34 = v19;
  v20 = v14;
  v35 = v20;
  v38 = a6;
  v21 = v15;
  v36 = v21;
  v22 = objc_retainBlock(&v28);
  v23 = self;
  objc_sync_enter(v23);
  v24 = [(DAIDSMessengerProxy *)v23 receiver:v28];

  if (v24)
  {
    (v22[2])(v22);
  }

  else
  {
    v25 = DiagnosticLogHandleForCategory();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v41 = v18;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "[DAIDSMessengerProxy] Adding a pending task for the %@ message", buf, 0xCu);
    }

    v26 = [(DAIDSMessengerProxy *)v23 pendingTasks];
    v27 = objc_retainBlock(v22);
    [v26 addObject:v27];
  }

  objc_sync_exit(v23);

  objc_destroyWeak(&v37);
  objc_destroyWeak(&location);
}

- (id)_createXPCConnection
{
  v3 = [[NSXPCConnection alloc] initWithMachServiceName:@"com.apple.iosdiagnosticsd" options:4096];
  v4 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DAIDSMessageSender];
  v5 = +[DAIDSMessengerProxy allowedDataClasses];
  [v4 setClasses:v5 forSelector:"sendMessage:data:toDestination:forceLocalDelivery:expectsResponse:response:" argumentIndex:1 ofReply:0];

  v6 = +[DAIDSMessengerProxy allowedDataClasses];
  [v4 setClasses:v6 forSelector:"sendMessage:data:toDestination:forceLocalDelivery:expectsResponse:response:" argumentIndex:2 ofReply:1];

  v16[0] = objc_opt_class();
  v16[1] = objc_opt_class();
  v7 = [NSArray arrayWithObjects:v16 count:2];
  v8 = [NSSet setWithArray:v7];
  [v4 setClasses:v8 forSelector:"availableDestinationsWithCompletion:" argumentIndex:0 ofReply:1];

  [v3 setRemoteObjectInterface:v4];
  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DAIDSMessageReceiver];
  v10 = +[DAIDSMessengerProxy allowedDataClasses];
  [v9 setClasses:v10 forSelector:"receiveMessage:data:fromDestination:expectsResponse:response:" argumentIndex:1 ofReply:0];

  v11 = +[DAIDSMessengerProxy allowedDataClasses];
  [v9 setClasses:v11 forSelector:"receiveMessage:data:fromDestination:expectsResponse:response:" argumentIndex:1 ofReply:1];

  [v3 setExportedInterface:v9];
  [v3 setExportedObject:self];
  [v3 setInterruptionHandler:&stru_10001C818];
  [v3 setInvalidationHandler:&stru_10001C838];
  [v3 resume];
  v12 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412290;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Created connection: %@", &v14, 0xCu);
  }

  return v3;
}

+ (id)allowedDataClasses
{
  if (qword_1000263B8 != -1)
  {
    sub_10000DC70();
  }

  v3 = qword_1000263B0;

  return v3;
}

- (DAIDSMessageReceiver)receiver
{
  WeakRetained = objc_loadWeakRetained(&self->_receiver);

  return WeakRetained;
}

@end