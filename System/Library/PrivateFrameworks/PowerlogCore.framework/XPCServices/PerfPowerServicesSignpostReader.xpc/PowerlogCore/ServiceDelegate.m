@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = PLLogSignpostReader();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10000A838(v5, v6, v7);
  }

  v8 = [v6 processIdentifier];
  v9 = [v6 valueForEntitlement:@"com.apple.PerfPowerServices.signpost-reading"];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v9 BOOLValue])
  {
    v10 = PLLogSignpostReader();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_10000A938(v8, v10, v11, v12, v13, v14, v15, v16);
    }

    NSLog(@"In the listener of the Signpost Reader XPCService");
    v17 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___XPCSignpostReaderProtocol];
    [v6 setExportedInterface:v17];

    v18 = objc_opt_new();
    [v6 setExportedObject:v18];
    if (_os_feature_enabled_impl())
    {
      v19 = PLLogSignpostReader();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
      {
        sub_10000A9A4(v19);
      }

      [v6 setInterruptionHandler:&stru_1000143E8];
      [v6 setInvalidationHandler:&stru_1000143E8];
    }

    [v6 resume];
    v20 = 1;
  }

  else
  {
    [v6 invalidate];
    v18 = PLLogSignpostReader();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      sub_10000A8C0(v8, v18);
    }

    v20 = 0;
  }

  return v20;
}

@end