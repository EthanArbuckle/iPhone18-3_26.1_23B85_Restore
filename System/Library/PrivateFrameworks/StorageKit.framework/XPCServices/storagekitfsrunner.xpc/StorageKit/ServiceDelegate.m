@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 valueForEntitlement:entitlement];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v5 BOOLValue] & 1) != 0)
  {
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SKRemoteTaskRunnerProtocol];
    [v4 setExportedInterface:v6];

    v7 = [[SKRemoteTaskRunner alloc] initWithConnection:v4];
    [v4 setExportedObject:v7];
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SKRemoteTaskDataProtocol];
    [v4 setRemoteObjectInterface:v8];

    [v4 resume];
    v9 = 1;
  }

  else
  {
    v10 = SKGetOSLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = 136315138;
      v13 = "[ServiceDelegate listener:shouldAcceptNewConnection:]";
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%s: Missing entitlement for client", &v12, 0xCu);
    }

    v9 = 0;
  }

  return v9;
}

@end