@interface ServiceDelegate
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (ServiceDelegate)init;
@end

@implementation ServiceDelegate

- (ServiceDelegate)init
{
  v6.receiver = self;
  v6.super_class = ServiceDelegate;
  v2 = [(ServiceDelegate *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    activeConnections = v2->_activeConnections;
    v2->_activeConnections = v3;
  }

  return v2;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ServiceDelegate listener:shouldAcceptNewConnection:]", 66, self, @"[XPCService]Processing new connection...", v8, v9, v32);
  if (self)
  {
    activeConnections = self->_activeConnections;
  }

  else
  {
    activeConnections = 0;
  }

  if ([(NSMutableArray *)activeConnections count])
  {
    sub_10002483C(OS_LOG_TYPE_DEFAULT, 0, "[ServiceDelegate listener:shouldAcceptNewConnection:]", 71, self, @"Maximum XPC connections reached", v11, v12, v33);
    v13 = 0;
  }

  else
  {
    v14 = sub_100023B28([STSXPCHelperEntitlementChecker alloc], v7);
    v17 = v14;
    if (v14 && (*(v14 + 8) & 1) != 0)
    {
      v18 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___STSHelperProtocol];
      [v7 setExportedInterface:v18];

      v19 = v7;
      objc_opt_self();
      v20 = objc_opt_new();
      v21 = v20;
      if (v20)
      {
        objc_storeStrong((v20 + 8), a4);
      }

      v22 = [STSXPCHelper alloc];
      v23 = [v19 _queue];

      v24 = sub_100026CD8(v22, v23, v21);
      if (v21)
      {
        objc_storeStrong(v21 + 2, v24);
      }

      if (self)
      {
        v25 = self->_activeConnections;
      }

      else
      {
        v25 = 0;
      }

      [(NSMutableArray *)v25 addObject:v21];
      if (v21 && (v26 = v21[2]) != 0)
      {
        objc_storeWeak(v26 + 3, v19);
        v27 = v21[2];
      }

      else
      {
        v27 = 0;
      }

      [v19 setExportedObject:v27];
      v28 = sub_10002DD68();
      [v19 setExportedInterface:v28];

      v29 = sub_10002DDA0();
      [v19 setRemoteObjectInterface:v29];

      objc_initWeak(&location, self);
      v34[0] = _NSConcreteStackBlock;
      v34[1] = 3221225472;
      v34[2] = sub_100020FEC;
      v34[3] = &unk_100059058;
      objc_copyWeak(&v36, &location);
      v30 = v21;
      v35 = v30;
      [v19 setInvalidationHandler:v34];
      [v19 setInterruptionHandler:&stru_100059078];
      [v19 resume];

      objc_destroyWeak(&v36);
      objc_destroyWeak(&location);

      v13 = 1;
    }

    else
    {
      sub_10002483C(OS_LOG_TYPE_ERROR, 0, "[ServiceDelegate listener:shouldAcceptNewConnection:]", 78, self, @"Missing xpcClientAccess entitlement", v15, v16, v33);
      v13 = 0;
    }
  }

  return v13;
}

@end