@interface RMStoreXPCConnection
+ (id)storeXPCConnection:(id)connection;
- (RMStoreXPCConnection)initWithXPCConnection:(id)connection;
- (void)dealloc;
@end

@implementation RMStoreXPCConnection

+ (id)storeXPCConnection:(id)connection
{
  connectionCopy = connection;
  v4 = [[RMStoreXPCConnection alloc] initWithXPCConnection:connectionCopy];

  return v4;
}

- (RMStoreXPCConnection)initWithXPCConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = RMStoreXPCConnection;
  v6 = [(RMStoreXPCConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (void)dealloc
{
  connection = [(RMStoreXPCConnection *)self connection];

  if (connection)
  {
    connection2 = [(RMStoreXPCConnection *)self connection];
    [connection2 invalidate];

    connection = self->_connection;
    self->_connection = 0;
  }

  v6.receiver = self;
  v6.super_class = RMStoreXPCConnection;
  [(RMStoreXPCConnection *)&v6 dealloc];
}

@end