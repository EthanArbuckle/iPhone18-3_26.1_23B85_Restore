@interface SAListenerDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation SAListenerDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [connectionCopy valueForEntitlement:@"com.apple.spaceattribution.private"];
  v6 = v5;
  if (v5 && [v5 BOOLValue])
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SpaceAttribProtocol];
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SAReplyProtocol];
    [v7 setInterface:v8 forSelector:"addAppSizerHandler:reply:" argumentIndex:0 ofReply:0];
    [v7 setInterface:v8 forSelector:"addURLSizerHandler:withURLs:reply:" argumentIndex:0 ofReply:0];
    v9 = objc_opt_class();
    v10 = [NSSet setWithObjects:v9, objc_opt_class(), 0];
    [v7 setClasses:v10 forSelector:"registerPaths:reply:" argumentIndex:0 ofReply:0];
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
    [v7 setClasses:v12 forSelector:"unregisterPaths:reply:" argumentIndex:0 ofReply:0];
    v13 = objc_opt_class();
    v14 = [NSSet setWithObjects:v13, objc_opt_class(), 0];
    [v7 setClasses:v14 forSelector:"addURLSizerHandler:withURLs:reply:" argumentIndex:1 ofReply:0];
    [connectionCopy setExportedInterface:v7];
    v15 = objc_opt_new();
    [connectionCopy setExportedObject:v15];

    [connectionCopy resume];
    v16 = SALog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      sub_10004101C(v16, v17, v18, v19, v20, v21, v22, v23);
    }

    v24 = 1;
  }

  else
  {
    v7 = SALog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      sub_100041054(v7, v25, v26, v27, v28, v29, v30, v31);
    }

    v24 = 0;
  }

  return v24;
}

@end