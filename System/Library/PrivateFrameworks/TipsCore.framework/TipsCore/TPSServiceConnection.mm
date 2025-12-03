@interface TPSServiceConnection
- (TPSServiceConnection)initWithServiceName:(id)name;
- (id)connection;
- (id)exportedInterface;
- (id)remoteInterface;
- (void)invalidate;
@end

@implementation TPSServiceConnection

- (TPSServiceConnection)initWithServiceName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = TPSServiceConnection;
  v6 = [(TPSServiceConnection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_serviceName, name);
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
    serviceName = [(TPSServiceConnection *)self serviceName];
    v6 = [(_TPSXPCConnection *)v4 initWithMachServiceName:serviceName options:4096];
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
  exportedInterfaceInstance = [(TPSServiceConnection *)self exportedInterfaceInstance];
  v3 = exportedInterfaceInstance;
  if (exportedInterfaceInstance)
  {
    v4 = exportedInterfaceInstance;
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
  remoteInterfaceInstance = [(TPSServiceConnection *)self remoteInterfaceInstance];
  v3 = remoteInterfaceInstance;
  if (remoteInterfaceInstance)
  {
    v4 = remoteInterfaceInstance;
  }

  else
  {
    v4 = objc_alloc_init(MEMORY[0x1E696B0D0]);
  }

  v5 = v4;

  return v5;
}

@end