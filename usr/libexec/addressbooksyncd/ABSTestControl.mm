@interface ABSTestControl
- (ABSTestControl)initWithSyncInterface:(id)interface;
- (ABSyncInterface)syncInterface;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ABSTestControl

- (ABSTestControl)initWithSyncInterface:(id)interface
{
  interfaceCopy = interface;
  v10.receiver = self;
  v10.super_class = ABSTestControl;
  v5 = [(ABSTestControl *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_syncInterface, interfaceCopy);
    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.internal.addressbooksync.testcontrol"];
    listener = v6->_listener;
    v6->_listener = v7;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    [(NSXPCListener *)v6->_listener resume];
  }

  return v6;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  syncInterface = [(ABSTestControl *)self syncInterface];
  if (syncInterface)
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ABSTestControlProtocol];
    [connectionCopy setExportedInterface:v7];

    [connectionCopy setExportedObject:syncInterface];
    [connectionCopy resume];
  }

  return syncInterface != 0;
}

- (ABSyncInterface)syncInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_syncInterface);

  return WeakRetained;
}

@end