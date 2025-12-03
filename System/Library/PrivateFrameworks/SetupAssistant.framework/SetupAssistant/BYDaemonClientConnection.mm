@interface BYDaemonClientConnection
- (BYDaemonClientConnection)initWithConnection:(id)connection;
- (NSXPCConnection)connection;
@end

@implementation BYDaemonClientConnection

- (BYDaemonClientConnection)initWithConnection:(id)connection
{
  connectionCopy = connection;
  v8.receiver = self;
  v8.super_class = BYDaemonClientConnection;
  v5 = [(BYDaemonClientConnection *)&v8 init];
  v6 = v5;
  if (v5)
  {
    [(BYDaemonClientConnection *)v5 setConnection:connectionCopy];
  }

  return v6;
}

- (NSXPCConnection)connection
{
  WeakRetained = objc_loadWeakRetained(&self->_connection);

  return WeakRetained;
}

@end