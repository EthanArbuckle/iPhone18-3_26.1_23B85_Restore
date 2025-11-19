@interface ABSTestControl
- (ABSTestControl)initWithSyncInterface:(id)a3;
- (ABSyncInterface)syncInterface;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ABSTestControl

- (ABSTestControl)initWithSyncInterface:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = ABSTestControl;
  v5 = [(ABSTestControl *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_syncInterface, v4);
    v7 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.internal.addressbooksync.testcontrol"];
    listener = v6->_listener;
    v6->_listener = v7;

    [(NSXPCListener *)v6->_listener setDelegate:v6];
    [(NSXPCListener *)v6->_listener resume];
  }

  return v6;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [(ABSTestControl *)self syncInterface];
  if (v6)
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ABSTestControlProtocol];
    [v5 setExportedInterface:v7];

    [v5 setExportedObject:v6];
    [v5 resume];
  }

  return v6 != 0;
}

- (ABSyncInterface)syncInterface
{
  WeakRetained = objc_loadWeakRetained(&self->_syncInterface);

  return WeakRetained;
}

@end