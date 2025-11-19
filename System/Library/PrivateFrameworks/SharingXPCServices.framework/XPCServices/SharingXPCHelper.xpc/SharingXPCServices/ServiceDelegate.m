@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sharingXPCHelperLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    sub_10000555C(v5, v6, v7);
  }

  v8 = [v6 valueForEntitlement:@"com.apple.private.sharing.XPCHelperAccess"];
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 && ([v8 BOOLValue])
  {
    v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___SharingXPCHelperProtocol];
    [v6 setExportedInterface:v9];

    v10 = [v6 exportedInterface];
    v11 = objc_opt_class();
    v12 = [NSSet setWithObjects:v11, objc_opt_class(), 0];
    [v10 setClasses:v12 forSelector:"CGImgDataForUIActivityTitles:foregroundColor:replyHandler:" argumentIndex:0 ofReply:0];

    v13 = [v6 exportedInterface];
    v14 = objc_opt_class();
    v15 = [NSSet setWithObjects:v14, objc_opt_class(), 0];
    [v13 setClasses:v15 forSelector:"groupMonogramImageDataForContactsSync:style:diameter:backgroundStyle:monogramsAsFlatImages:replyHandler:" argumentIndex:0 ofReply:0];

    v16 = [v6 exportedInterface];
    v17 = objc_opt_class();
    v18 = [NSSet setWithObjects:v17, objc_opt_class(), 0];
    [v16 setClasses:v18 forSelector:"monogramImagesForMultipleContactsSync:style:diameter:monogramAsFlatImages:replyHandler:" argumentIndex:0 ofReply:0];

    v19 = [v6 exportedInterface];
    v20 = [NSSet setWithObject:objc_opt_class()];
    [v19 setClasses:v20 forSelector:"updateShareSheetHostConfiguration:" argumentIndex:0 ofReply:0];

    v21 = [v6 exportedInterface];
    v22 = objc_opt_class();
    v23 = [NSSet setWithObjects:v22, objc_opt_class(), 0];
    [v21 setClasses:v23 forSelector:"setSessionKeepAliveTransactionIdentifier:" argumentIndex:0 ofReply:0];

    v24 = objc_opt_new();
    [v6 setExportedObject:v24];
    v31[0] = _NSConcreteStackBlock;
    v31[1] = 3221225472;
    v31[2] = sub_100001414;
    v31[3] = &unk_10000C308;
    v25 = v24;
    v32 = v25;
    [v6 setInvalidationHandler:v31];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100001460;
    v29[3] = &unk_10000C308;
    v30 = v25;
    v26 = v25;
    [v6 setInterruptionHandler:v29];
    [v6 resume];

    v27 = 1;
  }

  else
  {
    v26 = sharingXPCHelperLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v34 = [v6 processIdentifier];
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "process %d tried to connect to SharingXPCHelper, but it was not entitled!", buf, 8u);
    }

    v27 = 0;
  }

  return v27;
}

@end