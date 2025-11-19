@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 processIdentifier];
  v6 = [v4 valueForEntitlement:@"com.apple.PerfPowerServices.signpost-reading"];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v6 BOOLValue])
  {
    v7 = PPSLogSignpostService();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000075A8(v5, v7);
    }

    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PPSSignpostServiceDelegate];
    [v4 setExportedInterface:v8];

    v9 = objc_opt_new();
    [v4 setExportedObject:v9];
    [v4 resume];
    v10 = 1;
  }

  else
  {
    [v4 invalidate];
    v9 = PPSLogSignpostService();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100007530(v5, v9);
    }

    v10 = 0;
  }

  return v10;
}

@end