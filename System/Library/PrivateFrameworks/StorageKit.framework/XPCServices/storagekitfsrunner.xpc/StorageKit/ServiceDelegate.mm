@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:entitlement];
  if (v5 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && ([v5 BOOLValue] & 1) != 0)
  {
    v6 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SKRemoteTaskRunnerProtocol];
    [connectionCopy setExportedInterface:v6];

    v7 = [[SKRemoteTaskRunner alloc] initWithConnection:connectionCopy];
    [connectionCopy setExportedObject:v7];
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SKRemoteTaskDataProtocol];
    [connectionCopy setRemoteObjectInterface:v8];

    [connectionCopy resume];
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