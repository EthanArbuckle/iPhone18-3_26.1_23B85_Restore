@interface StreamingUnzipServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation StreamingUnzipServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  __chkstk_darwin(self, a2, a3, a4);
  v5 = v4;
  v7 = v6;
  v8 = v5;
  v9 = SZExtractorEntitlementPrivileged;
  if (v9)
  {
    v10 = [v8 valueForEntitlement:v9];
    v11 = [v10 BOOLValue];

    if ((v11 & 1) == 0)
    {
      [v8 invalidate];
      v17 = 0;
      goto LABEL_28;
    }
  }

  v12 = [v8 processIdentifier];
  v13 = proc_pidpath(v12, &buffer, 0x1000u);
  if (v13 < 1)
  {
    v16 = [NSString stringWithFormat:@"Unknown Process Name (pid %d)", v12];
  }

  else
  {
    v14 = [[NSString alloc] initWithBytes:&buffer length:v13 encoding:4];
    v15 = [v14 lastPathComponent];
    v16 = [NSString stringWithFormat:@"%@ (pid %d)", v15, v12];
  }

  v18 = sub_10000126C();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = qos_class_self();
    if (v19 > 20)
    {
      switch(v19)
      {
        case 0x15:
          v20 = @"DEFAULT";
          goto LABEL_22;
        case 0x21:
          v20 = @"USER_INTERACTIVE";
          goto LABEL_22;
        case 0x19:
          v20 = @"USER_INITIATED";
          goto LABEL_22;
      }
    }

    else
    {
      switch(v19)
      {
        case 0:
          v20 = @"UNSPECIFIED";
          goto LABEL_22;
        case 9:
          v20 = @"BACKGROUND";
          goto LABEL_22;
        case 0x11:
          v20 = @"UTILITY";
LABEL_22:
          buffer = 138412546;
          v29 = v16;
          v30 = 2112;
          v31 = v20;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Got connection from process %@ at qos %@", &buffer, 0x16u);

          goto LABEL_23;
      }
    }

    v20 = [NSString stringWithFormat:@"UNKNOWN_QOS: 0x%x", v19];
    goto LABEL_22;
  }

LABEL_23:

  os_unfair_lock_lock(&unk_10002F110);
  WeakRetained = objc_loadWeakRetained(&qword_10002F118);
  if (!WeakRetained)
  {
    WeakRetained = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___StreamingUnzipProtocol];
    objc_storeWeak(&qword_10002F118, WeakRetained);
  }

  os_unfair_lock_unlock(&unk_10002F110);
  [v8 setExportedInterface:WeakRetained];

  v22 = [[StreamingUnzipper alloc] initForClient:v16 connection:v8];
  [v8 setExportedObject:v22];
  os_unfair_lock_lock(&unk_10002F120);
  v23 = objc_loadWeakRetained(&qword_10002F128);
  if (!v23)
  {
    v23 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___StreamingUnzipDelegateProtocol];
    objc_storeWeak(&qword_10002F128, v23);
  }

  os_unfair_lock_unlock(&unk_10002F120);
  [v8 setRemoteObjectInterface:v23];

  [v22 setXpcConnection:v8];
  [v8 setInterruptionHandler:&stru_1000286F0];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000012C0;
  v26[3] = &unk_100028838;
  v27 = v22;
  v24 = v22;
  [v8 setInvalidationHandler:v26];
  [v8 resume];

  v17 = 1;
LABEL_28:

  return v17;
}

@end