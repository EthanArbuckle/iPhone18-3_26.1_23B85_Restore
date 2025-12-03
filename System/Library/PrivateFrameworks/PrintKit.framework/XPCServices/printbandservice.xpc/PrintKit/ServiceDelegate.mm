@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.printing.bandservice"];
  bOOLValue = [v5 BOOLValue];

  if (bOOLValue)
  {
    v7 = objc_opt_new();
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PrintBandServiceProtocol];
    [connectionCopy setExportedInterface:v8];

    [connectionCopy setExportedObject:v7];
    [connectionCopy resume];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = connectionCopy;
    v12 = 1024;
    v13 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Client %@ doesn't have bandservice entitlement with error %d", &v10, 0x12u);
  }

  return bOOLValue;
}

@end