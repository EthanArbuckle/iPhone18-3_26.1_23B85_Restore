@interface BAAgentConnection
- (BAAgentConnection)initWithNSXPCConnection:(id)connection error:(id *)error;
- (void)_setupConnection;
- (void)invalidate;
- (void)resume;
@end

@implementation BAAgentConnection

- (BAAgentConnection)initWithNSXPCConnection:(id)connection error:(id *)error
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = BAAgentConnection;
  v6 = [(BAAgentConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(BAAgentConnection *)v6 setConnection:connectionCopy];
    [(BAAgentConnection *)v7 _setupConnection];
  }

  return v7;
}

- (void)resume
{
  obj = self;
  objc_sync_enter(obj);
  connection = [(BAAgentConnection *)obj connection];
  [connection resume];

  objc_sync_exit(obj);
}

- (void)_setupConnection
{
  objc_initWeak(&location, self);
  connection = [(BAAgentConnection *)self connection];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100030820;
  v7[3] = &unk_10007A150;
  objc_copyWeak(&v8, &location);
  [connection setInterruptionHandler:v7];

  connection2 = [(BAAgentConnection *)self connection];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100030860;
  v5[3] = &unk_10007A150;
  objc_copyWeak(&v6, &location);
  [connection2 setInvalidationHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  connection = [(BAAgentConnection *)obj connection];

  if (connection)
  {
    v3 = +[BAAgentCore sharedCore];
    [v3 connectionDisconnected:obj];

    connection2 = [(BAAgentConnection *)obj connection];
    [connection2 invalidate];

    [(BAAgentConnection *)obj setConnection:0];
  }

  objc_sync_exit(obj);
}

@end