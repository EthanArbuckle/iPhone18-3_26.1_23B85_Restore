@interface CSConnectionServer
- (CSConnectionServer)initWithDispatchSilo:(id)silo andDelegate:(id)delegate;
- (CSConnectionServerDelegateProtocol)delegate;
- (NSString)serviceName;
- (void)connection:(id)connection handleMessage:(id)message;
- (void)connectionHandleDisconnection:(id)disconnection;
- (void)connectionHandleInterruption:(id)interruption;
- (void)dealloc;
@end

@implementation CSConnectionServer

- (CSConnectionServer)initWithDispatchSilo:(id)silo andDelegate:(id)delegate
{
  siloCopy = silo;
  delegateCopy = delegate;
  v22.receiver = self;
  v22.super_class = CSConnectionServer;
  v9 = [(CSConnectionServer *)&v22 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_dispatchSilo, silo);
    objc_storeWeak(&v10->_delegate, delegateCopy);
    v11 = objc_opt_new();
    mutableConnections = v10->_mutableConnections;
    v10->_mutableConnections = v11;

    objc_initWeak(&location, v10);
    [(CSConnectionServer *)v10 serviceName];
    uTF8String = [objc_claimAutoreleasedReturnValue() UTF8String];
    v14 = strlen(uTF8String);
    if (v14 < 0x7FFFFFFFFFFFFFF8)
    {
      v15 = v14;
      if (v14 < 0x17)
      {
        v20 = v14;
        if (v14)
        {
          memmove(&__dst, uTF8String, v14);
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
  mutableConnections = [(CSConnectionServer *)self mutableConnections];
  [mutableConnections removeAllObjects];

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

- (void)connection:(id)connection handleMessage:(id)message
{
  connectionCopy = connection;
  messageCopy = message;
  if (qword_100456878 != -1)
  {
    sub_10035220C();
  }

  v8 = qword_100456880;
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    name = [messageCopy name];
    payloadObject = [messageCopy payloadObject];
    v12[0] = 68289794;
    v12[1] = 0;
    v13 = 2082;
    v14 = "";
    v15 = 2114;
    v16 = connectionCopy;
    v17 = 2114;
    v18 = name;
    v19 = 2114;
    v20 = payloadObject;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:handleMessage, connection:%{public, location:escape_only}@, name:%{public, location:escape_only}@, value:%{public, location:escape_only}@}", v12, 0x30u);
  }

  delegate = [(CSConnectionServer *)self delegate];
  [delegate messageReceived:messageCopy fromConnection:connectionCopy];
}

- (void)connectionHandleDisconnection:(id)disconnection
{
  disconnectionCopy = disconnection;
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
    v12 = disconnectionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:handleDisconnection, connection:%{public, location:escape_only}@}", v8, 0x1Cu);
  }

  delegate = [(CSConnectionServer *)self delegate];
  [delegate connectionDisconnected:disconnectionCopy];

  mutableConnections = [(CSConnectionServer *)self mutableConnections];
  [mutableConnections removeObject:disconnectionCopy];
}

- (void)connectionHandleInterruption:(id)interruption
{
  interruptionCopy = interruption;
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
    v12 = interruptionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEBUG, "{msg%{public}.0s:handleInterruption, connection:%{public, location:escape_only}@}", v8, 0x1Cu);
  }

  delegate = [(CSConnectionServer *)self delegate];
  [delegate connectionInterrupted:interruptionCopy];

  mutableConnections = [(CSConnectionServer *)self mutableConnections];
  [mutableConnections removeObject:interruptionCopy];
}

- (CSConnectionServerDelegateProtocol)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end