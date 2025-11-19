@interface STAskForTimeListenerDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (STAskForTimeListenerDelegate)initWithAskForTimeManager:(id)a3;
@end

@implementation STAskForTimeListenerDelegate

- (STAskForTimeListenerDelegate)initWithAskForTimeManager:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = STAskForTimeListenerDelegate;
  v6 = [(STAskForTimeListenerDelegate *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_askForTimeManager, a3);
  }

  return v7;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = +[STLog screentime];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    sub_100111154(v5, v6);
  }

  v7 = STEntitlementScreenTimePrivate;
  v8 = [v5 valueForEntitlement:STEntitlementScreenTimePrivate];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 BOOLValue])
  {
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___STAskForTimeInterface];
    [v5 setExportedInterface:v9];

    v10 = [(STAskForTimeListenerDelegate *)self askForTimeManager];
    [v5 setExportedObject:v10];

    [v5 resume];
    v11 = 1;
  }

  else
  {
    v12 = +[STLog ask];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_1001111F8(v5, v7, v12);
    }

    v11 = 0;
  }

  return v11;
}

@end