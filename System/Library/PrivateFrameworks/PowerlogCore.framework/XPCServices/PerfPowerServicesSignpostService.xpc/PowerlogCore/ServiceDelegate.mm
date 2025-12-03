@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v6 = [connectionCopy valueForEntitlement:@"com.apple.PerfPowerServices.signpost-reading"];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v6 BOOLValue])
  {
    v7 = PPSLogSignpostService();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_1000075A8(processIdentifier, v7);
    }

    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PPSSignpostServiceDelegate];
    [connectionCopy setExportedInterface:v8];

    v9 = objc_opt_new();
    [connectionCopy setExportedObject:v9];
    [connectionCopy resume];
    v10 = 1;
  }

  else
  {
    [connectionCopy invalidate];
    v9 = PPSLogSignpostService();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100007530(processIdentifier, v9);
    }

    v10 = 0;
  }

  return v10;
}

@end