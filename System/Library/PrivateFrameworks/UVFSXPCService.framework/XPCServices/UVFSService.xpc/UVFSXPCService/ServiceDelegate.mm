@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.private.userfsd.UVFSService"];
  v6 = v5;
  if (v5 && [v5 BOOLValue])
  {
    v7 = objc_opt_new();
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UVFSServiceProtocol];
    [connectionCopy setExportedInterface:v8];

    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___UVFSServiceCallbackProtocol];
    [connectionCopy setRemoteObjectInterface:v9];

    [connectionCopy setExportedObject:v7];
    [UVFSServiceConnections addObject:connectionCopy];
    [connectionCopy resume];
    v10 = os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEBUG);
    if (v10)
    {
      sub_10001DF40(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    v18 = 1;
  }

  else
  {
    if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR))
    {
      sub_10001DF7C();
    }

    [connectionCopy invalidate];
    v18 = 0;
  }

  return v18;
}

@end