@interface TPSServiceConnection
- (TPSServiceConnection)initWithServiceName:(id)a3;
- (id)connection;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)invalidate;
@end

@implementation TPSServiceConnection

- (TPSServiceConnection)initWithServiceName:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TPSServiceConnection;
  v6 = [(TPSServiceConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceName, a3);
  }

  return v7;
}

- (void)invalidate
{
  [(_TPSXPCConnection *)self->_connection invalidate];
  connection = self->_connection;
  self->_connection = 0;
}

- (id)connection
{
  connection = self->_connection;
  if (!connection)
  {
    v4 = [_TPSXPCConnection alloc];
    v5 = [(TPSServiceConnection *)self serviceName];
    v6 = [(_TPSXPCConnection *)v4 initWithMachServiceName:v5 options:4096];
    v7 = self->_connection;
    self->_connection = v6;

    [(_TPSXPCConnection *)self->_connection setExportedObject:self];
    [(_TPSXPCConnection *)self->_connection resume];
    connection = self->_connection;
  }

  return connection;
}

- (id)exportedInterface
{
  v2 = [(TPSServiceConnection *)self exportedInterfaceInstance];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E696B0D0]);
  }

  v5 = v4;

  return v5;
}

- (id)remoteInterface
{
  v2 = [(TPSServiceConnection *)self remoteInterfaceInstance];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E696B0D0]);
  }

  v5 = v4;

  return v5;
}

@end