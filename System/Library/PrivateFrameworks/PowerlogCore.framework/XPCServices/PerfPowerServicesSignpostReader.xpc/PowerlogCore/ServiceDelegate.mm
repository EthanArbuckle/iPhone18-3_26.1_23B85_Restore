@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = PLLogSignpostReader();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10000A838(listenerCopy, connectionCopy, v7);
  }

  processIdentifier = [connectionCopy processIdentifier];
  v9 = [connectionCopy valueForEntitlement:@"com.apple.PerfPowerServices.signpost-reading"];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v9 BOOLValue])
  {
    v10 = PLLogSignpostReader();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10000A938(processIdentifier, v10, v11, v12, v13, v14, v15, v16);
    }

    NSLog(@"In the listener of the Signpost Reader XPCService");
    v17 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___XPCSignpostReaderProtocol];
    [connectionCopy setExportedInterface:v17];

    v18 = objc_opt_new();
    [connectionCopy setExportedObject:v18];
    if (_os_feature_enabled_impl())
    {
      v19 = PLLogSignpostReader();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_10000A9A4(v19);
      }

      [connectionCopy setInterruptionHandler:&stru_1000143E8];
      [connectionCopy setInvalidationHandler:&stru_1000143E8];
    }

    [connectionCopy resume];
    v20 = 1;
  }

  else
  {
    [connectionCopy invalidate];
    v18 = PLLogSignpostReader();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10000A8C0(processIdentifier, v18);
    }

    v20 = 0;
  }

  return v20;
}

@end