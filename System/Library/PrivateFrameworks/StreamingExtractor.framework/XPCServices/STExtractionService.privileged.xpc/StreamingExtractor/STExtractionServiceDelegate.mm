@interface STExtractionServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation STExtractionServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  __chkstk_darwin(self, a2, listener, connection);
  v5 = v4;
  processIdentifier = [v5 processIdentifier];
  v7 = proc_pidpath(processIdentifier, buffer, 0x1000u);
  if (v7 < 1)
  {
    v10 = [NSString stringWithFormat:@"Unknown Process Name (pid %d)", processIdentifier];
  }

  else
  {
    v8 = [[NSString alloc] initWithBytes:buffer length:v7 encoding:4];
    lastPathComponent = [v8 lastPathComponent];
    v10 = [NSString stringWithFormat:@"%@ (pid %d)", lastPathComponent, processIdentifier];
  }

  [v5 processIdentifier];
  memset(buffer, 0, 32);
  if (v5)
  {
    [v5 auditToken];
  }

  v11 = [v5 valueForEntitlement:@"com.apple.private.STRemoteExtractor.privileged"];
  bOOLValue = [v11 BOOLValue];

  v13 = sub_100000DA8();
  v14 = v13;
  if (bOOLValue)
  {
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
LABEL_26:

      v17 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___STExtractionServiceProtocol];
      [v5 setExportedInterface:v17];

      v18 = [[STExtractionService alloc] initForClient:v10 connection:v5];
      [v5 setExportedObject:v18];
      v19 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___STExtractionOriginatorProtocol];
      [v5 setRemoteObjectInterface:v19];

      [v18 setXpcConnection:v5];
      v27[0] = _NSConcreteStackBlock;
      v27[1] = 3221225472;
      v27[2] = sub_100001524;
      v27[3] = &unk_100008370;
      v20 = v10;
      v28 = v20;
      v21 = v18;
      v29 = v21;
      [v5 setInterruptionHandler:v27];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100001608;
      v24[3] = &unk_100008370;
      v25 = v20;
      v26 = v21;
      v22 = v21;
      [v5 setInvalidationHandler:v24];
      [v5 resume];

      goto LABEL_27;
    }

    v15 = qos_class_self();
    if (v15 > 20)
    {
      switch(v15)
      {
        case 0x15:
          v16 = @"DEFAULT";
          goto LABEL_25;
        case 0x21:
          v16 = @"USER_INTERACTIVE";
          goto LABEL_25;
        case 0x19:
          v16 = @"USER_INITIATED";
          goto LABEL_25;
      }
    }

    else
    {
      switch(v15)
      {
        case 0:
          v16 = @"UNSPECIFIED";
          goto LABEL_25;
        case 9:
          v16 = @"BACKGROUND";
          goto LABEL_25;
        case 0x11:
          v16 = @"UTILITY";
LABEL_25:
          *buf = 136446722;
          v31 = "[STExtractionServiceDelegate listener:shouldAcceptNewConnection:]";
          v32 = 2112;
          v33 = v10;
          v34 = 2112;
          v35 = v16;
          _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "%{public}s: Got connection from process %@ at qos %@", buf, 0x20u);

          goto LABEL_26;
      }
    }

    v16 = [NSString stringWithFormat:@"UNKNOWN_QOS: 0x%x", v15];
    goto LABEL_25;
  }

  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    sub_100003A1C(v10, v14);
  }

  [v5 invalidate];
LABEL_27:

  return bOOLValue;
}

@end