@interface BAAgentConnection
- (BAAgentConnection)initWithNSXPCConnection:(id)a3 error:(id *)a4;
- (void)_setupConnection;
- (void)invalidate;
- (void)resume;
@end

@implementation BAAgentConnection

- (BAAgentConnection)initWithNSXPCConnection:(id)a3 error:(id *)a4
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = BAAgentConnection;
  v6 = [(BAAgentConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    [(BAAgentConnection *)v6 setConnection:v5];
    [(BAAgentConnection *)v7 _setupConnection];
  }

  return v7;
}

- (void)resume
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(BAAgentConnection *)obj connection];
  [v2 resume];

  objc_sync_exit(obj);
}

- (void)_setupConnection
{
  objc_initWeak(&location, self);
  v3 = [(BAAgentConnection *)self connection];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100030820;
  v7[3] = &unk_10007A150;
  objc_copyWeak(&v8, &location);
  [v3 setInterruptionHandler:v7];

  v4 = [(BAAgentConnection *)self connection];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100030860;
  v5[3] = &unk_10007A150;
  objc_copyWeak(&v6, &location);
  [v4 setInvalidationHandler:v5];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)invalidate
{
  obj = self;
  objc_sync_enter(obj);
  v2 = [(BAAgentConnection *)obj connection];

  if (v2)
  {
    v3 = +[BAAgentCore sharedCore];
    [v3 connectionDisconnected:obj];

    v4 = [(BAAgentConnection *)obj connection];
    [v4 invalidate];

    [(BAAgentConnection *)obj setConnection:0];
  }

  objc_sync_exit(obj);
}

@end