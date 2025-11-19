@interface DDXPCServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation DDXPCServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = DiagnosticLogHandleForCategory();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v21 = "[DDXPCServiceDelegate listener:shouldAcceptNewConnection:]";
    v22 = 2112;
    v23 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
  }

  v8 = +[DDMain sharedInstance];
  [v6 setExportedObject:v8];

  v9 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DAIDSMessageSender];
  [v6 setExportedInterface:v9];

  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___DAIDSMessageReceiver];
  [v6 setRemoteObjectInterface:v10];

  objc_initWeak(buf, v6);
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100003F78;
  v18[3] = &unk_10001C6C0;
  objc_copyWeak(&v19, buf);
  [v6 setInterruptionHandler:v18];
  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_100004064;
  v16 = &unk_10001C6C0;
  objc_copyWeak(&v17, buf);
  [v6 setInvalidationHandler:&v13];
  [v6 resume];
  v11 = +[DDMain sharedInstance];
  [v11 addConnection:v6];

  objc_destroyWeak(&v17);
  objc_destroyWeak(&v19);
  objc_destroyWeak(buf);

  return 1;
}

@end