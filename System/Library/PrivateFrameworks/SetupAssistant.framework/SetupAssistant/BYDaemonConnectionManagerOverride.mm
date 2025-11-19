@interface BYDaemonConnectionManagerOverride
+ (id)sharedInstance;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (BYDaemonConnectionManagerOverride)init;
- (id)connections;
- (void)dealloc;
- (void)doWithConnections:(id)a3;
- (void)start;
@end

@implementation BYDaemonConnectionManagerOverride

+ (id)sharedInstance
{
  if (+[BuddyOverrideUtilities buildSupportsOverrides]&& qword_100028C58 != -1)
  {
    sub_100010D3C();
  }

  v2 = qword_100028C50;

  return v2;
}

- (BYDaemonConnectionManagerOverride)init
{
  v8.receiver = self;
  v8.super_class = BYDaemonConnectionManagerOverride;
  v2 = [(BYDaemonConnectionManagerOverride *)&v8 init];
  if (v2)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.purplebuddy.setup.budd.proximity.override.xpc"];
    quickStartSetupTargetClientListenerOverride = v2->_quickStartSetupTargetClientListenerOverride;
    v2->_quickStartSetupTargetClientListenerOverride = v3;

    [(NSXPCListener *)v2->_quickStartSetupTargetClientListenerOverride setDelegate:v2];
    v5 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.purplebuddy.setupctl.budd.proximity.override.service.xpc"];
    quickStartSetupCTLListener = v2->_quickStartSetupCTLListener;
    v2->_quickStartSetupCTLListener = v5;

    [(NSXPCListener *)v2->_quickStartSetupCTLListener setDelegate:v2];
  }

  return v2;
}

- (void)start
{
  v3 = _BYLoggingFacility();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Starting Override connections", v4, 2u);
  }

  [(BYDaemonConnectionManagerOverride *)self doWithConnections:&stru_100020820];
}

- (void)dealloc
{
  [(BYDaemonConnectionManagerOverride *)self doWithConnections:&stru_100020840];
  v3.receiver = self;
  v3.super_class = BYDaemonConnectionManagerOverride;
  [(BYDaemonConnectionManagerOverride *)&v3 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!+[BuddyOverrideUtilities buildSupportsOverrides])
  {
    goto LABEL_4;
  }

  if (self->_quickStartSetupTargetClientListenerOverride == v6)
  {
    v9 = _BYLoggingFacility();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Budd received connection to QuickStart override", buf, 2u);
    }

    quickStartSetupClientRef = self->_quickStartSetupClientRef;
    if (!quickStartSetupClientRef)
    {
      v11 = objc_alloc_init(BYDaemonProximityTargetClientConnectionOverride);
      v12 = self->_quickStartSetupClientRef;
      self->_quickStartSetupClientRef = v11;

      quickStartSetupClientRef = self->_quickStartSetupClientRef;
    }

    [(BYDaemonProximityTargetClientConnectionOverride *)quickStartSetupClientRef setSetupConnection:v7];
    v13 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BuddyDaemonProximityTargetClientProtocolOverride];
    [v7 setRemoteObjectInterface:v13];

    v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BYDaemonProximityTargetClientConnectionOverride];
    [v7 setExportedInterface:v14];

    [v7 setExportedObject:self->_quickStartSetupClientRef];
    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_100004CCC;
    v29[3] = &unk_100020868;
    v29[4] = self;
    [v7 setInvalidationHandler:v29];
    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_100004CDC;
    v28[3] = &unk_100020868;
    v28[4] = self;
    [v7 setInterruptionHandler:v28];
    [v7 resume];
    goto LABEL_15;
  }

  if (self->_quickStartSetupCTLListener == v6)
  {
    v15 = _BYLoggingFacility();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Budd received connection to QuickStart (SetupCTL) override", buf, 2u);
    }

    if (!self->_quickStartSetupClientRef)
    {
      v16 = objc_alloc_init(BYDaemonProximityTargetClientConnectionOverride);
      v17 = self->_quickStartSetupClientRef;
      self->_quickStartSetupClientRef = v16;
    }

    v18 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BYDaemonProximitySetupCTLClientConnectionOverride];
    [v7 setExportedInterface:v18];

    [v7 setExportedObject:self->_quickStartSetupClientRef];
    objc_initWeak(buf, self->_quickStartSetupClientRef);
    objc_initWeak(&location, v7);
    v23[0] = _NSConcreteStackBlock;
    v23[1] = 3221225472;
    v23[2] = sub_100004CEC;
    v23[3] = &unk_100020890;
    objc_copyWeak(&v24, buf);
    objc_copyWeak(&v25, &location);
    [v7 setInterruptionHandler:v23];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100004D60;
    v20[3] = &unk_100020890;
    objc_copyWeak(&v21, buf);
    objc_copyWeak(&v22, &location);
    [v7 setInvalidationHandler:v20];
    [v7 resume];
    objc_destroyWeak(&v22);
    objc_destroyWeak(&v21);
    objc_destroyWeak(&v25);
    objc_destroyWeak(&v24);
    objc_destroyWeak(&location);
    objc_destroyWeak(buf);
LABEL_15:
    v8 = 1;
    goto LABEL_16;
  }

LABEL_4:
  v8 = 0;
LABEL_16:

  return v8;
}

- (id)connections
{
  quickStartSetupCTLListener = self->_quickStartSetupCTLListener;
  v5[0] = self->_quickStartSetupTargetClientListenerOverride;
  v5[1] = quickStartSetupCTLListener;
  v3 = [NSArray arrayWithObjects:v5 count:2];

  return v3;
}

- (void)doWithConnections:(id)a3
{
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(BYDaemonConnectionManagerOverride *)self connections];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v4[2](v4, *(*(&v10 + 1) + 8 * v9));
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end