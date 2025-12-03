@interface StreamingUnzipServiceDelegate
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
@end

@implementation StreamingUnzipServiceDelegate

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  __chkstk_darwin(self, a2, listener, connection);
  v5 = v4;
  processIdentifier = [v5 processIdentifier];
  v7 = proc_pidpath(processIdentifier, &buffer, 0x1000u);
  if (v7 < 1)
  {
    v10 = [NSString stringWithFormat:@"Unknown Process Name (pid %d)", processIdentifier];
  }

  else
  {
    v8 = [[NSString alloc] initWithBytes:&buffer length:v7 encoding:4];
    lastPathComponent = [v8 lastPathComponent];
    v10 = [NSString stringWithFormat:@"%@ (pid %d)", lastPathComponent, processIdentifier];
  }

  v11 = sub_100001194();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = qos_class_self();
    if (v12 > 20)
    {
      switch(v12)
      {
        case 0x15:
          v13 = @"DEFAULT";
          goto LABEL_19;
        case 0x21:
          v13 = @"USER_INTERACTIVE";
          goto LABEL_19;
        case 0x19:
          v13 = @"USER_INITIATED";
          goto LABEL_19;
      }
    }

    else
    {
      switch(v12)
      {
        case 0:
          v13 = @"UNSPECIFIED";
          goto LABEL_19;
        case 9:
          v13 = @"BACKGROUND";
          goto LABEL_19;
        case 0x11:
          v13 = @"UTILITY";
LABEL_19:
          buffer = 138412546;
          v22 = v10;
          v23 = 2112;
          v24 = v13;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Got connection from process %@ at qos %@", &buffer, 0x16u);

          goto LABEL_20;
      }
    }

    v13 = [NSString stringWithFormat:@"UNKNOWN_QOS: 0x%x", v12];
    goto LABEL_19;
  }

LABEL_20:

  os_unfair_lock_lock(&unk_10002F100);
  WeakRetained = objc_loadWeakRetained(&qword_10002F108);
  if (!WeakRetained)
  {
    WeakRetained = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___StreamingUnzipProtocol];
    objc_storeWeak(&qword_10002F108, WeakRetained);
  }

  os_unfair_lock_unlock(&unk_10002F100);
  [v5 setExportedInterface:WeakRetained];

  v15 = [[StreamingUnzipper alloc] initForClient:v10 connection:v5];
  [v5 setExportedObject:v15];
  os_unfair_lock_lock(&unk_10002F110);
  v16 = objc_loadWeakRetained(&qword_10002F118);
  if (!v16)
  {
    v16 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___StreamingUnzipDelegateProtocol];
    objc_storeWeak(&qword_10002F118, v16);
  }

  os_unfair_lock_unlock(&unk_10002F110);
  [v5 setRemoteObjectInterface:v16];

  [v15 setXpcConnection:v5];
  [v5 setInterruptionHandler:&stru_1000286E8];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000011E8;
  v19[3] = &unk_100028830;
  v20 = v15;
  v17 = v15;
  [v5 setInvalidationHandler:v19];
  [v5 resume];

  return 1;
}

@end