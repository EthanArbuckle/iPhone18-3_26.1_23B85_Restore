@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = sharingXPCHelperLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10000555C(listenerCopy, connectionCopy, v7);
  }

  v8 = [connectionCopy valueForEntitlement:@"com.apple.private.sharing.XPCHelperAccess"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 BOOLValue])
  {
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SharingXPCHelperProtocol];
    [connectionCopy setExportedInterface:v9];

    exportedInterface = [connectionCopy exportedInterface];
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
    [exportedInterface setClasses:v12 forSelector:"CGImgDataForUIActivityTitles:foregroundColor:replyHandler:" argumentIndex:0 ofReply:0];

    exportedInterface2 = [connectionCopy exportedInterface];
    v14 = objc_opt_class();
    v15 = [NSSet setWithObjects:v14, objc_opt_class(), 0];
    [exportedInterface2 setClasses:v15 forSelector:"groupMonogramImageDataForContactsSync:style:diameter:backgroundStyle:monogramsAsFlatImages:replyHandler:" argumentIndex:0 ofReply:0];

    exportedInterface3 = [connectionCopy exportedInterface];
    v17 = objc_opt_class();
    v18 = [NSSet setWithObjects:v17, objc_opt_class(), 0];
    [exportedInterface3 setClasses:v18 forSelector:"monogramImagesForMultipleContactsSync:style:diameter:monogramAsFlatImages:replyHandler:" argumentIndex:0 ofReply:0];

    exportedInterface4 = [connectionCopy exportedInterface];
    v20 = [NSSet setWithObject:objc_opt_class()];
    [exportedInterface4 setClasses:v20 forSelector:"updateShareSheetHostConfiguration:" argumentIndex:0 ofReply:0];

    exportedInterface5 = [connectionCopy exportedInterface];
    v22 = objc_opt_class();
    v23 = [NSSet setWithObjects:v22, objc_opt_class(), 0];
    [exportedInterface5 setClasses:v23 forSelector:"setSessionKeepAliveTransactionIdentifier:" argumentIndex:0 ofReply:0];

    v24 = objc_opt_new();
    [connectionCopy setExportedObject:v24];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100001414;
    v31[3] = &unk_10000C308;
    v25 = v24;
    v32 = v25;
    [connectionCopy setInvalidationHandler:v31];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100001460;
    v29[3] = &unk_10000C308;
    v30 = v25;
    v26 = v25;
    [connectionCopy setInterruptionHandler:v29];
    [connectionCopy resume];

    v27 = 1;
  }

  else
  {
    v26 = sharingXPCHelperLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      processIdentifier = [connectionCopy processIdentifier];
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "process %d tried to connect to SharingXPCHelper, but it was not entitled!", buf, 8u);
    }

    v27 = 0;
  }

  return v27;
}

@end