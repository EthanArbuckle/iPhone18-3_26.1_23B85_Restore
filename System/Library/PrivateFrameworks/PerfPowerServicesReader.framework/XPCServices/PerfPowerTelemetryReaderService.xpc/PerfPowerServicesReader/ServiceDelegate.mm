@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = PPSLogReaderService();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_100001478(listenerCopy, connectionCopy, v7);
  }

  processIdentifier = [connectionCopy processIdentifier];
  v9 = [connectionCopy valueForEntitlement:@"com.apple.PerfPowerServices.data-read-xpc"];
  if (objc_opt_respondsToSelector() & 1) != 0 && ([v9 BOOLValue])
  {
    v10 = PPSLogReaderService();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      sub_100001578(processIdentifier, v10);
    }

    v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___PerfPowerServicesReaderProtocol];
    [connectionCopy setExportedInterface:v11];

    [connectionCopy setInterruptionHandler:&stru_100004200];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100001094;
    v29[3] = &unk_100004220;
    v30 = processIdentifier;
    [connectionCopy setInvalidationHandler:v29];
    v12 = objc_opt_new();
    [connectionCopy setExportedObject:v12];
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = objc_opt_class();
    v16 = objc_opt_class();
    v17 = objc_opt_class();
    v18 = [NSSet setWithObjects:v13, v14, v15, v16, v17, objc_opt_class(), 0];
    exportedInterface = [connectionCopy exportedInterface];
    [exportedInterface setClasses:v18 forSelector:"dataForRequest:withReply:" argumentIndex:0 ofReply:0];

    v20 = objc_opt_class();
    v21 = objc_opt_class();
    v22 = objc_opt_class();
    v23 = [NSSet setWithObjects:v20, v21, v22, objc_opt_class(), 0];
    v24 = [NSSet setWithObjects:objc_opt_class(), 0];
    exportedInterface2 = [connectionCopy exportedInterface];
    v26 = 1;
    [exportedInterface2 setClasses:v23 forSelector:"dataForRequest:withReply:" argumentIndex:0 ofReply:1];

    exportedInterface3 = [connectionCopy exportedInterface];
    [exportedInterface3 setClasses:v24 forSelector:"dataForRequest:withReply:" argumentIndex:1 ofReply:1];

    [connectionCopy resume];
  }

  else
  {
    [connectionCopy invalidate];
    v12 = PPSLogReaderService();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      sub_100001500(processIdentifier, v12);
    }

    v26 = 0;
  }

  return v26;
}

@end