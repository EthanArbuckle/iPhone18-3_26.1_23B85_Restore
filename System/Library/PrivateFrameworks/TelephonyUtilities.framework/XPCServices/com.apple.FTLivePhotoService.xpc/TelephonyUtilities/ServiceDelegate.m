@interface ServiceDelegate
- (BOOL)isConnectionEntitled:(id)a3;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
@end

@implementation ServiceDelegate

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = TULockdownModeEnabled();
  v9 = [(ServiceDelegate *)self isConnectionEntitled:v7];
  v10 = FTDefaultLog();
  v11 = v10;
  v12 = v9 ^ 1 | v8;
  if (v12)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      sub_1000381D0(v7, v8 & 1, v11);
    }

    [v7 invalidate];
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf) = 138412290;
      *(&buf + 4) = v7;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Accepting the connection since it is entitled %@", &buf, 0xCu);
    }

    v13 = +[TUMomentsControllerXPCClient momentsControllerClientXPCInterface];
    [v7 setRemoteObjectInterface:v13];

    v14 = +[TUMomentsControllerXPCClient momentsControllerServerXPCInterface];
    [v7 setExportedInterface:v14];

    v15 = objc_alloc_init(FTMomentsController);
    [(FTMomentsController *)v15 setup];
    [v7 setExportedObject:v15];
    v16 = [(FTMomentsController *)v15 queue];
    [v7 _setQueue:v16];

    v17 = [v7 remoteObjectProxy];
    [(FTMomentsController *)v15 setClientObject:v17];

    *&buf = 0;
    *(&buf + 1) = &buf;
    v22 = 0x3042000000;
    v23 = sub_1000024D0;
    v24 = sub_1000024DC;
    objc_initWeak(v25, v15);
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_1000024E4;
    v20[3] = &unk_100050F68;
    v20[4] = &buf;
    [v7 setInvalidationHandler:v20];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100002530;
    v19[3] = &unk_100050F68;
    v19[4] = &buf;
    [v7 setInterruptionHandler:v19];
    _Block_object_dispose(&buf, 8);
    objc_destroyWeak(v25);

    [v7 resume];
  }

  return (v12 ^ 1) & 1;
}

- (BOOL)isConnectionEntitled:(id)a3
{
  v3 = a3;
  v4 = [v3 valueForEntitlement:@"com.apple.FTLivePhotoService"];
  if (!v4)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = FTDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = objc_opt_class();
      v10 = [v3 processName];
      v11 = 138413058;
      v12 = @"com.apple.FTLivePhotoService";
      v13 = 2112;
      v14 = v9;
      v15 = 2112;
      v16 = v4;
      v17 = 2112;
      v18 = v10;
      _os_log_error_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Entitlement for key '%@' is non-nil but is of class %@ rather than an NSArray (%@), so assuming process %@ has no entitlements", &v11, 0x2Au);
    }

    goto LABEL_7;
  }

  v5 = [NSSet setWithArray:v4];
  v6 = [v5 containsObject:@"modify-moments"];

LABEL_8:
  return v6;
}

@end