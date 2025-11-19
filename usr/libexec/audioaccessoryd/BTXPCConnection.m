@interface BTXPCConnection
- (BTXPCConnection)initWithConnection:(id)a3;
- (id)description;
- (void)dealloc;
- (void)handleDisconnection;
- (void)handleEvent:(id)a3;
- (void)handleMsg:(id)a3;
- (void)sendMsg:(id)a3 args:(id)a4;
@end

@implementation BTXPCConnection

- (BTXPCConnection)initWithConnection:(id)a3
{
  v5 = a3;
  if (os_log_type_enabled(qword_100300AE8, OS_LOG_TYPE_DEBUG))
  {
    sub_1001FB6E0();
  }

  v16.receiver = self;
  v16.super_class = BTXPCConnection;
  v6 = [(BTXPCConnection *)&v16 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
    [(BTXPCConnection *)v7 setRemoteUID:xpc_connection_get_euid(v7->_connection)];
    [(BTXPCConnection *)v7 setRemotePID:xpc_connection_get_pid(v7->_connection)];
    objc_initWeak(&location, v7);
    connection = v7->_connection;
    v9 = +[CloudXPCService sharedInstance];
    v10 = [v9 xpcQueue];
    xpc_connection_set_target_queue(connection, v10);

    v11 = v7->_connection;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000DAEA0;
    v13[3] = &unk_1002BA630;
    objc_copyWeak(&v14, &location);
    xpc_connection_set_event_handler(v11, v13);
    xpc_connection_resume(v7->_connection);
    objc_destroyWeak(&v14);
    objc_destroyWeak(&location);
  }

  return v7;
}

- (id)description
{
  memset(buffer, 0, sizeof(buffer));
  v3 = [(BTXPCConnection *)self connection];

  if (v3)
  {
    v4 = [(BTXPCConnection *)self connection];
    pid = xpc_connection_get_pid(v4);
    proc_name(pid, buffer, 0x40u);
  }

  v6 = [NSString stringWithFormat:@"BTXPCConnection(%d-%d): Process Name: %s", [(BTXPCConnection *)self remotePID], [(BTXPCConnection *)self remoteUID], buffer];

  return v6;
}

- (void)dealloc
{
  v3 = sub_100005C14("XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(BTXPCConnection *)self description];
    *buf = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "XPC client connection dealloc: %@", buf, 0xCu);
  }

  v5.receiver = self;
  v5.super_class = BTXPCConnection;
  [(BTXPCConnection *)&v5 dealloc];
}

- (void)handleEvent:(id)a3
{
  v4 = a3;
  type = xpc_get_type(v4);
  if (type == &_xpc_type_dictionary)
  {
    [(BTXPCConnection *)self handleMsg:v4];
  }

  else
  {
    if (type == &_xpc_type_error)
    {
      if (v4 == &_xpc_error_connection_invalid)
      {
        [(BTXPCConnection *)self handleDisconnection];
        goto LABEL_10;
      }

      v6 = sub_100005C14("XPC");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1001FB7C8();
      }
    }

    else
    {
      v6 = sub_100005C14("XPC");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        sub_1001FB754();
      }
    }
  }

LABEL_10:
}

- (void)handleDisconnection
{
  v3 = sub_100005C14("XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(BTXPCConnection *)self description];
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "XPC client disconnection: %@", &v6, 0xCu);
  }

  v5 = +[CloudXPCService sharedInstance];
  [v5 removeConnection:self];
}

- (void)handleMsg:(id)a3
{
  v4 = a3;
  v5 = sub_100005C14("XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(BTXPCConnection *)self remoteUID];
    v7 = [(BTXPCConnection *)self remotePID];
    v8 = [v4 description];
    v11[0] = 67109634;
    v11[1] = v6;
    v12 = 1024;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received XPC(%d-%d) message: %@", v11, 0x18u);
  }

  v9 = +[CloudXPCService sharedInstance];
  v10 = [(BTXPCConnection *)self connection];
  [v9 handleConnection:v10 XPCMessage:v4 userID:-[BTXPCConnection remoteUID](self processID:{"remoteUID"), -[BTXPCConnection remotePID](self, "remotePID")}];
}

- (void)sendMsg:(id)a3 args:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = sub_100005C14("XPC");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412547;
    v15 = v6;
    v16 = 2113;
    v17 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Send message: %@, args: %{private}@", &v14, 0x16u);
  }

  v10 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_string(v10, "kMsgId", [v6 UTF8String]);
  if (v7)
  {
    v11 = _CFXPCCreateXPCObjectFromCFObject();
    xpc_dictionary_set_value(v10, "kMsgArgs", v11);
  }

  v12 = sub_100005C14("XPC");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_1001FB83C();
  }

  v13 = [(BTXPCConnection *)self connection];
  xpc_connection_send_message(v13, v10);

  objc_autoreleasePoolPop(v8);
}

@end