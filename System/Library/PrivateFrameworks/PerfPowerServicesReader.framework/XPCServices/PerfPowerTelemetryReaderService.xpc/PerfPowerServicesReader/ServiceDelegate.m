@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = PPSLogReaderService();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100001478(v5, v6, v7);
  }

  v8 = [v6 processIdentifier];
  v9 = [v6 valueForEntitlement:@"com.apple.PerfPowerServices.data-read-xpc"];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v9 BOOLValue])
  {
    v10 = PPSLogReaderService();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100001578(v8, v10);
    }

    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PerfPowerServicesReaderProtocol];
    [v6 setExportedInterface:v11];

    [v6 setInterruptionHandler:&stru_100004200];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100001094;
    v29[3] = &unk_100004220;
    v30 = v8;
    [v6 setInvalidationHandler:v29];
    v12 = objc_opt_new();
    [v6 setExportedObject:v12];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [NSSet setWithObjects:v13, v14, v15, v16, v17, objc_opt_class(), 0];
    v19 = [v6 exportedInterface];
    [v19 setClasses:v18 forSelector:"dataForRequest:withReply:" argumentIndex:0 ofReply:0];

    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [NSSet setWithObjects:v20, v21, v22, objc_opt_class(), 0];
    v24 = [NSSet setWithObjects:objc_opt_class(), 0];
    v25 = [v6 exportedInterface];
    v26 = 1;
    [v25 setClasses:v23 forSelector:"dataForRequest:withReply:" argumentIndex:0 ofReply:1];

    v27 = [v6 exportedInterface];
    [v27 setClasses:v24 forSelector:"dataForRequest:withReply:" argumentIndex:1 ofReply:1];

    [v6 resume];
  }

  else
  {
    [v6 invalidate];
    v12 = PPSLogReaderService();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100001500(v8, v12);
    }

    v26 = 0;
  }

  return v26;
}

@end