@interface ServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v5 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DataDetectorsSourceAccessProtocol];
  v6 = objc_opt_class();
  v7 = [NSSet setWithObjects:v6, objc_opt_class(), 0];
  [v5 setClasses:v7 forSelector:"filesForSourceRead:resourceType:withReply:" argumentIndex:0 ofReply:0];
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v10 = [NSSet setWithObjects:v8, v9, objc_opt_class(), 0];

  [v5 setClasses:v10 forSelector:"filesForSourceRead:resourceType:withReply:" argumentIndex:0 ofReply:1];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = [NSSet setWithObjects:v11, v12, v13, objc_opt_class(), 0];

  [v5 setClasses:v14 forSelector:"writeSourceFromRawData:source:signature:withReply:" argumentIndex:0 ofReply:0];
  [connectionCopy setExportedInterface:v5];
  v15 = objc_opt_new();
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  else
  {
    v18 = 0u;
    v19 = 0u;
  }

  v17[0] = v18;
  v17[1] = v19;
  [v15 setAuditToken:v17];
  [v15 setProcessIdentifier:{objc_msgSend(connectionCopy, "processIdentifier")}];
  [v15 setUserIdentifier:{objc_msgSend(connectionCopy, "effectiveUserIdentifier")}];
  [connectionCopy setExportedObject:v15];
  [connectionCopy resume];

  return 1;
}

@end