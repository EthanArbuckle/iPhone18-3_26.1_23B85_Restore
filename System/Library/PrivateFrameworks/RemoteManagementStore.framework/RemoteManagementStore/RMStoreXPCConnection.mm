@interface RMStoreXPCConnection
+ (id)storeXPCConnection:(id)a3;
- (RMStoreXPCConnection)initWithXPCConnection:(id)a3;
- (void)dealloc;
@end

@implementation RMStoreXPCConnection

+ (id)storeXPCConnection:(id)a3
{
  v3 = a3;
  v4 = [[RMStoreXPCConnection alloc] initWithXPCConnection:v3];

  return v4;
}

- (RMStoreXPCConnection)initWithXPCConnection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = RMStoreXPCConnection;
  v6 = [(RMStoreXPCConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, a3);
  }

  return v7;
}

- (void)dealloc
{
  v3 = [(RMStoreXPCConnection *)self connection];

  if (v3)
  {
    v4 = [(RMStoreXPCConnection *)self connection];
    [v4 invalidate];

    connection = self->_connection;
    self->_connection = 0;
  }

  v6.receiver = self;
  v6.super_class = RMStoreXPCConnection;
  [(RMStoreXPCConnection *)&v6 dealloc];
}

@end