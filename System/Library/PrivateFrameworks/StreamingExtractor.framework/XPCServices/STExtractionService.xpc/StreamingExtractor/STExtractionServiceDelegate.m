@interface STExtractionServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation STExtractionServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v4 = a4;
  v5 = [v4 processIdentifier];
  v6 = proc_pidpath(v5, buffer, 0x1000u);
  if (v6 < 1)
  {
    v9 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"Unknown Process Name (pid %d)", v5]);
  }

  else
  {
    v7 = [[NSString alloc] initWithBytes:buffer length:v6 encoding:4];
    v8 = objc_claimAutoreleasedReturnValue([v7 lastPathComponent]);
    v9 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"%@ (pid %d)", v8, v5]);
  }

  [v4 processIdentifier];
  memset(buffer, 0, 32);
  if (v4)
  {
    [v4 auditToken];
  }

  v10 = objc_claimAutoreleasedReturnValue([v4 valueForEntitlement:@"com.apple.private.STRemoteExtractor.privileged"]);
  if ([v10 BOOLValue])
  {

    goto LABEL_9;
  }

  v11 = objc_claimAutoreleasedReturnValue([v4 valueForEntitlement:@"com.apple.private.STRemoteExtractor"]);
  v12 = [v11 BOOLValue];

  if (v12)
  {
LABEL_9:
    v13 = sub_100000D08();
    v14 = objc_claimAutoreleasedReturnValue(v13);
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
LABEL_28:

      v20 = objc_claimAutoreleasedReturnValue([NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___STExtractionServiceProtocol]);
      [v4 setExportedInterface:v20];

      v21 = [[STExtractionService alloc] initForClient:v9 connection:v4];
      [v4 setExportedObject:v21];
      v22 = objc_claimAutoreleasedReturnValue([NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___STExtractionOriginatorProtocol]);
      [v4 setRemoteObjectInterface:v22];

      [v21 setXpcConnection:v4];
      v30[0] = _NSConcreteStackBlock;
      v30[1] = 3221225472;
      v30[2] = sub_100001424;
      v30[3] = &unk_100008370;
      v23 = v9;
      v31 = v23;
      v24 = v21;
      v32 = v24;
      [v4 setInterruptionHandler:v30];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100001504;
      v27[3] = &unk_100008370;
      v28 = v23;
      v29 = v24;
      v25 = v24;
      [v4 setInvalidationHandler:v27];
      [v4 resume];

      v19 = 1;
      goto LABEL_29;
    }

    v15 = qos_class_self();
    if (v15 > 20)
    {
      switch(v15)
      {
        case 0x15:
          v16 = @"DEFAULT";
          goto LABEL_27;
        case 0x21:
          v16 = @"USER_INTERACTIVE";
          goto LABEL_27;
        case 0x19:
          v16 = @"USER_INITIATED";
          goto LABEL_27;
      }
    }

    else
    {
      switch(v15)
      {
        case 0:
          v16 = @"UNSPECIFIED";
          goto LABEL_27;
        case 9:
          v16 = @"BACKGROUND";
          goto LABEL_27;
        case 0x11:
          v16 = @"UTILITY";
LABEL_27:
          *buf = 136446722;
          v34 = "[STExtractionServiceDelegate listener:shouldAcceptNewConnection:]";
          v35 = 2112;
          v36 = v9;
          v37 = 2112;
          v38 = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: Got connection from process %@ at qos %@", buf, 0x20u);

          goto LABEL_28;
      }
    }

    v16 = objc_claimAutoreleasedReturnValue([NSString stringWithFormat:@"UNKNOWN_QOS: 0x%x", v15]);
    goto LABEL_27;
  }

  v17 = sub_100000D08();
  v18 = objc_claimAutoreleasedReturnValue(v17);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    sub_100003690(v9, v18);
  }

  [v4 invalidate];
  v19 = 0;
LABEL_29:

  return v19;
}

@end