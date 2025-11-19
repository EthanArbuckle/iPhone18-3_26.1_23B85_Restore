@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 valueForEntitlement:@"com.apple.printing.bandservice"];
  v6 = [v5 BOOLValue];

  if (v6)
  {
    v7 = objc_opt_new();
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PrintBandServiceProtocol];
    [v4 setExportedInterface:v8];

    [v4 setExportedObject:v7];
    [v4 resume];
  }

  else if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v4;
    v12 = 1024;
    v13 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Client %@ doesn't have bandservice entitlement with error %d", &v10, 0x12u);
  }

  return v6;
}

@end