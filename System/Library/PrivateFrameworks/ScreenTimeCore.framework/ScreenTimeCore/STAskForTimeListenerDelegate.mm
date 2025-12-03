@interface STAskForTimeListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (STAskForTimeListenerDelegate)initWithAskForTimeManager:(id)manager;
@end

@implementation STAskForTimeListenerDelegate

- (STAskForTimeListenerDelegate)initWithAskForTimeManager:(id)manager
{
  managerCopy = manager;
  v9.receiver = self;
  v9.super_class = STAskForTimeListenerDelegate;
  v6 = [(STAskForTimeListenerDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_askForTimeManager, manager);
  }

  return v7;
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = +[STLog screentime];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100111154(connectionCopy, v6);
  }

  v7 = STEntitlementScreenTimePrivate;
  v8 = [connectionCopy valueForEntitlement:STEntitlementScreenTimePrivate];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 BOOLValue])
  {
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___STAskForTimeInterface];
    [connectionCopy setExportedInterface:v9];

    askForTimeManager = [(STAskForTimeListenerDelegate *)self askForTimeManager];
    [connectionCopy setExportedObject:askForTimeManager];

    [connectionCopy resume];
    v11 = 1;
  }

  else
  {
    v12 = +[STLog ask];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001111F8(connectionCopy, v7, v12);
    }

    v11 = 0;
  }

  return v11;
}

@end