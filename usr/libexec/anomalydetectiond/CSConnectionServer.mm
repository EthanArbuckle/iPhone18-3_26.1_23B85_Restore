@interface CSConnectionServer
- (CSConnectionServer)initWithDispatchSilo:(id)a3 andDelegate:(id)a4;
- (CSConnectionServerDelegateProtocol)delegate;
- (NSString)serviceName;
- (void)connection:(id)a3 handleMessage:(id)a4;
- (void)connectionHandleDisconnection:(id)a3;
- (void)connectionHandleInterruption:(id)a3;
- (void)dealloc;
@end

@implementation CSConnectionServer

- (CSConnectionServer)initWithDispatchSilo:(id)a3 andDelegate:(id)a4
{
  v7 = a3;
  v8 = a4;
  v22.receiver = self;
  v22.super_class = CSConnectionServer;
  v9 = [(CSConnectionServer *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchSilo, a3);
    objc_storeWeak(&v10->_delegate, v8);
    v11 = objc_opt_new();
    mutableConnections = v10->_mutableConnections;
    v10->_mutableConnections = v11;

    objc_initWeak(&location, v10);
    [(CSConnectionServer *)v10 serviceName];
    v13 = [objc_claimAutoreleasedReturnValue() UTF8String];
    v14 = strlen(v13);
    if (v14 < 0x7FFFFFFFFFFFFFF8)
    {
      v15 = v14;
      if (v14 < 0x17)
      {
        v20 = v14;
        if (v14)
        {
          memmove(&__dst, v13, v14);
        }

        *(&__dst + v15) = 0;
        [(CSConnectionServer *)v10 dispatchSilo];
        [objc_claimAutoreleasedReturnValue() queue];
        objc_claimAutoreleasedReturnValue();
        v17[0] = _NSConcreteStackBlock;
        v17[1] = 3221225472;
        v17[2] = sub_100351834;
        v17[3] = &unk_100436198;
        objc_copyWeak(&v18, &location);
        objc_retainBlock(v17);
        operator new();
      }

      operator new();
    }

    sub_100011000();
  }

  return 0;
}

- (void)dealloc
{
  v3 = [(CSConnectionServer *)self mutableConnections];
  [v3 removeAllObjects];

  mutableConnections = self->_mutableConnections;
  self->_mutableConnections = 0;

  sub_100351AB4(&self->_server.__ptr_, 0);
  v5.receiver = self;
  v5.super_class = CSConnectionServer;
  [(CSConnectionServer *)&v5 dealloc];
}

- (NSString)serviceName
{
  v4 = +[NSAssertionHandler currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"CSConnectionServer.mm" lineNumber:58 description:@"Children must provide a serviceName."];

  return 0;
}

- (void)connection:(id)a3 handleMessage:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (qword_100456878 != -1)
  {
    sub_10035220C();
  }

  v8 = qword_100456880;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [v7 name];
    v10 = [v7 payloadObject];
    v12[0] = 68289794;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2114;
    v16 = v6;
    v17 = 2114;
    v18 = v9;
    v19 = 2114;
    v20 = v10;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:handleMessage, connection:%{public, location:escape_only}@, name:%{public, location:escape_only}@, value:%{public, location:escape_only}@}", v12, 0x30u);
  }

  v11 = [(CSConnectionServer *)self delegate];
  [v11 messageReceived:v7 fromConnection:v6];
}

- (void)connectionHandleDisconnection:(id)a3
{
  v4 = a3;
  if (qword_100456878 != -1)
  {
    sub_10035220C();
  }

  v5 = qword_100456880;
  if (os_log_type_enabled(qword_100456880, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 68289282;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:handleDisconnection, connection:%{public, location:escape_only}@}", v8, 0x1Cu);
  }

  v6 = [(CSConnectionServer *)self delegate];
  [v6 connectionDisconnected:v4];

  v7 = [(CSConnectionServer *)self mutableConnections];
  [v7 removeObject:v4];
}

- (void)connectionHandleInterruption:(id)a3
{
  v4 = a3;
  if (qword_100456878 != -1)
  {
    sub_10035220C();
  }

  v5 = qword_100456880;
  if (os_log_type_enabled(qword_100456880, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = 68289282;
    v8[1] = 0;
    v9 = 2082;
    v10 = "";
    v11 = 2114;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:handleInterruption, connection:%{public, location:escape_only}@}", v8, 0x1Cu);
  }

  v6 = [(CSConnectionServer *)self delegate];
  [v6 connectionInterrupted:v4];

  v7 = [(CSConnectionServer *)self mutableConnections];
  [v7 removeObject:v4];
}

- (CSConnectionServerDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end