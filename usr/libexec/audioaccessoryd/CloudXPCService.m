@interface CloudXPCService
+ (id)sharedInstance;
- (BOOL)manateeZoneUpgraded;
- (CloudXPCService)init;
- (id)bundleIdentifierForConnection:(id)a3;
- (id)readUserPreference:(id)a3;
- (void)_sigTermReceived;
- (void)accountStatusAvailable:(BOOL)a3 force:(BOOL)a4;
- (void)accountStatusUpdateWithAvailable:(BOOL)a3 forced:(BOOL)a4;
- (void)activate;
- (void)allDeviceSupportInformationRecordsRemovedWithRecords:(id)a3;
- (void)allDevicesRemovedWithRecords:(id)a3;
- (void)allLegacyMagicPairingRecordsWithRecordsData:(id)a3;
- (void)allMagicPairingRecordsRemovedWithRecords:(id)a3;
- (void)axHeadTrackingSettingChanged;
- (void)beginTransaction:(id)a3;
- (void)dealloc;
- (void)deviceSupportInformationRecordsRemovedWithRecords:(id)a3;
- (void)deviceSupportInformationRecordsUpdatedWithRecords:(id)a3;
- (void)devicesRemovedWithRecords:(id)a3;
- (void)devicesUpdatedWithRecords:(id)a3;
- (void)endTransaction:(id)a3;
- (void)establishBluetoothdXPCWithCompletion:(id)a3;
- (void)handleConnection:(id)a3;
- (void)handleConnection:(id)a3 XPCMessage:(id)a4 userID:(unsigned int)a5 processID:(int)a6;
- (void)handleEvent:(id)a3;
- (void)hmDeviceCloudRecordsRemovedWithRecords:(id)a3;
- (void)hmDeviceCloudRecordsUpdatedWithRecords:(id)a3;
- (void)magicPairingRecordsRemovedWithRecords:(id)a3;
- (void)magicPairingRecordsUpdatedWithRecords:(id)a3;
- (void)removeConnection:(id)a3;
- (void)sendCloudKitMsg:(id)a3 args:(id)a4;
- (void)sendCloudKitMsg:(id)a3 args:(id)a4 withReply:(id)a5;
- (void)sendCloudKitMsg:(id)a3 argsObject:(id)a4;
- (void)sendCloudKitMsgSync:(id)a3 args:(id)a4 withReply:(id)a5;
- (void)sendMsg:(id)a3 args:(id)a4;
@end

@implementation CloudXPCService

+ (id)sharedInstance
{
  if (qword_1002FA198 != -1)
  {
    sub_100005D70();
  }

  v3 = qword_1002FA190;

  return v3;
}

- (CloudXPCService)init
{
  v27.receiver = self;
  v27.super_class = CloudXPCService;
  v2 = [(CloudXPCService *)&v27 init];
  if (!v2)
  {
    return v2;
  }

  v3 = +[NSProcessInfo processInfo];
  v4 = [v3 environment];
  v5 = [v4 objectForKey:@"XPC_SERVICE_NAME"];

  v6 = sub_100005C14("XPC");
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 138412290;
      v29 = v5;
      v8 = "Cloudpaird is launched by (%@)";
      v9 = v6;
      v10 = 12;
LABEL_7:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v8, buf, v10);
    }
  }

  else if (v7)
  {
    *buf = 0;
    v8 = "Cloudpaird is launched";
    v9 = v6;
    v10 = 2;
    goto LABEL_7;
  }

  v11 = [NSHashTable hashTableWithOptions:0];
  v12 = *(v2 + 14);
  *(v2 + 14) = v11;

  v13 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v14 = dispatch_queue_create("com.apple.cloudpaird.xpcservice", v13);
  v15 = *(v2 + 4);
  *(v2 + 4) = v14;

  v16 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v17 = dispatch_queue_create("com.apple.cloudpaird.xpcservice.transactions", v16);
  v18 = *(v2 + 10);
  *(v2 + 10) = v17;

  v19 = +[NSMutableDictionary dictionary];
  v20 = *(v2 + 11);
  *(v2 + 11) = v19;

  *(v2 + 2) = -1;
  if (!*(v2 + 2))
  {
    v21 = dispatch_source_create(&_dispatch_source_type_signal, 0xFuLL, 0, *(v2 + 4));
    v22 = *(v2 + 2);
    *(v2 + 2) = v21;

    v23 = *(v2 + 2);
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000AD6DC;
    handler[3] = &unk_1002B6880;
    v26 = v2;
    dispatch_source_set_event_handler(v23, handler);
    dispatch_activate(*(v2 + 2));
  }

  return v2;
}

- (void)activate
{
  objc_initWeak(&location, self);
  v3 = sub_100005C14("XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Activate Bluetooth Cloud User Daemon", buf, 2u);
  }

  [(CloudXPCService *)self establishBluetoothdXPCWithCompletion:0];
  if ([CBPreferencesManager isDeviceClass:@"AudioAccessory"])
  {
    v4 = +[_TtC15audioaccessoryd25DarwinNotificationManager shared];
    [v4 setUp];
  }

  else
  {
    v5 = +[_TtC15audioaccessoryd13DeviceManager singleton];
    [(CloudXPCService *)self setDeviceManager:v5];

    v6 = [(CloudXPCService *)self deviceManager];
    [v6 subscribeToUpdates:self];

    v7 = +[MPCloudKit sharedInstance];
    v8 = +[MPCloudKit_Manatee sharedInstance];
    v4 = +[_TtC15audioaccessoryd16CloudPushService shared];
    [v4 start];
  }

  v9 = +[CBIDSManager sharedInstance];
  v10 = [kAXSAirPodSpatialAudioLockToDeviceChangedNotification UTF8String];
  v11 = [(CloudXPCService *)self xpcQueue];
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000ADAC4;
  handler[3] = &unk_1002BA608;
  objc_copyWeak(&v24, &location);
  notify_register_dispatch(v10, &self->_axHeadTrackingChangedNotifyToken, v11, handler);

  [(CloudXPCService *)self axHeadTrackingSettingChanged];
  v12 = sub_100005C14("XPC");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Create the XPC server", buf, 2u);
  }

  v13 = [(CloudXPCService *)self xpcQueue];
  mach_service = xpc_connection_create_mach_service("com.apple.BTServer.cloudpairing", v13, 1uLL);
  xpcServer = self->_xpcServer;
  self->_xpcServer = mach_service;

  v16 = self->_xpcServer;
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000ADB04;
  v21[3] = &unk_1002BA630;
  objc_copyWeak(&v22, &location);
  xpc_connection_set_event_handler(v16, v21);
  xpc_connection_resume(self->_xpcServer);
  v17 = objc_alloc_init(BTNetworkMonitor);
  [(CloudXPCService *)self setNetworkMonitor:v17];

  v18 = [(CloudXPCService *)self networkMonitor];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000ADB60;
  v19[3] = &unk_1002BA658;
  objc_copyWeak(&v20, &location);
  [v18 startMonitoringWithCallback:v19];

  objc_destroyWeak(&v20);
  objc_destroyWeak(&v22);
  objc_destroyWeak(&v24);
  objc_destroyWeak(&location);
}

- (void)_sigTermReceived
{
  v3 = sub_100005C14("XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "SIGTERM received", buf, 2u);
  }

  v4 = [(CloudXPCService *)self transactionQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ADD0C;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_sync(v4, block);

  xpc_transaction_exit_clean();
}

- (void)axHeadTrackingSettingChanged
{
  v3 = [(CloudXPCService *)self xpcQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000ADDD8;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(v3, block);
}

- (id)bundleIdentifierForConnection:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  xpc_connection_get_audit_token();
  memset(&cf, 0, sizeof(cf));
  v3 = SecTaskCreateWithAuditToken(0, &cf);
  if (v3)
  {
    v4 = v3;
    *cf.val = 0;
    v5 = SecTaskCopySigningIdentifier(v3, &cf);
    v6 = v5;
    if (*cf.val)
    {
      v7 = sub_100005C14("XPC");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        sub_1001F4DD0();
      }

      CFRelease(*cf.val);
      if (!v6)
      {
        goto LABEL_15;
      }

      CFRelease(v6);
    }

    else
    {
      if (v5)
      {
LABEL_15:
        CFRelease(v4);
        goto LABEL_16;
      }

      v9 = sub_100005C14("XPC");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        sub_1001F4E0C();
      }
    }

    v6 = 0;
    goto LABEL_15;
  }

  v8 = sub_100005C14("XPC");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    sub_1001F4E48();
  }

  v6 = 0;
LABEL_16:

  return v6;
}

- (void)dealloc
{
  v3 = sub_100005C14("XPC");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "dealloc called", buf, 2u);
  }

  xpcServer = self->_xpcServer;
  if (xpcServer)
  {
    self->_xpcServer = 0;
  }

  v5 = [(CloudXPCService *)self serverConnection];

  if (v5)
  {
    [(CloudXPCService *)self setServerConnection:0];
  }

  v6 = [(CloudXPCService *)self networkMonitor];
  [v6 stopMonitoring];

  axHeadTrackingChangedNotifyToken = self->_axHeadTrackingChangedNotifyToken;
  if (axHeadTrackingChangedNotifyToken != -1)
  {
    notify_cancel(axHeadTrackingChangedNotifyToken);
    self->_axHeadTrackingChangedNotifyToken = -1;
  }

  [(CloudXPCService *)self setNetworkMonitor:0];
  v8 = [(CloudXPCService *)self deviceManager];
  [v8 unsubscribeFromUpdates:self];

  v9.receiver = self;
  v9.super_class = CloudXPCService;
  [(CloudXPCService *)&v9 dealloc];
}

- (void)sendMsg:(id)a3 args:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CloudXPCService *)self serverConnection];

  if (v8)
  {
    v9 = [(CloudXPCService *)self serverConnection];
    [v9 sendMsg:v6 args:v7];

    sigTermSource = self->_sigTermSource;
    if (sigTermSource)
    {
      v11 = sigTermSource;
      dispatch_source_cancel(v11);
      v12 = self->_sigTermSource;
      self->_sigTermSource = 0;
    }
  }

  else
  {
    v13 = sub_100005C14("XPC");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412546;
      v15 = v6;
      v16 = 2112;
      v17 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Failed to Send message: %@, args: %@", &v14, 0x16u);
    }
  }
}

- (void)establishBluetoothdXPCWithCompletion:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000AE398;
  v4[3] = &unk_1002B6948;
  v4[4] = self;
  v5 = a3;
  v3 = v5;
  dispatch_async(&_dispatch_main_q, v4);
}

- (void)sendCloudKitMsg:(id)a3 argsObject:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000AE700;
  v10[3] = &unk_1002BA6C0;
  objc_copyWeak(&v13, &location);
  v8 = v6;
  v11 = v8;
  v9 = v7;
  v12 = v9;
  [(CloudXPCService *)self establishBluetoothdXPCWithCompletion:v10];

  objc_destroyWeak(&v13);
  objc_destroyWeak(&location);
}

- (void)sendCloudKitMsg:(id)a3 args:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000AE9A0;
  v10[3] = &unk_1002BA6E8;
  objc_copyWeak(&v14, &location);
  v8 = v6;
  v11 = v8;
  v9 = v7;
  v12 = v9;
  v13 = self;
  [(CloudXPCService *)self establishBluetoothdXPCWithCompletion:v10];

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (void)sendCloudKitMsg:(id)a3 args:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000AED18;
  v14[3] = &unk_1002BA738;
  objc_copyWeak(&v18, &location);
  v11 = v8;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  v13 = v10;
  v17 = v13;
  [(CloudXPCService *)self establishBluetoothdXPCWithCompletion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)sendCloudKitMsgSync:(id)a3 args:(id)a4 withReply:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  objc_initWeak(&location, self);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000AF3DC;
  v14[3] = &unk_1002BA738;
  objc_copyWeak(&v18, &location);
  v11 = v8;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  v13 = v10;
  v17 = v13;
  [(CloudXPCService *)self establishBluetoothdXPCWithCompletion:v14];

  objc_destroyWeak(&v18);
  objc_destroyWeak(&location);
}

- (void)handleEvent:(id)a3
{
  v4 = a3;
  type = xpc_get_type(v4);
  if (type == &_xpc_type_connection)
  {
    [(CloudXPCService *)self handleConnection:v4];
  }

  else
  {
    v6 = type;
    v7 = sub_100005C14("XPC");
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (v6 == &_xpc_type_error)
    {
      if (v8)
      {
        sub_1001F5338();
      }
    }

    else if (v8)
    {
      sub_1001F52D0();
    }
  }
}

- (void)handleConnection:(id)a3
{
  v4 = a3;
  v5 = [[BTXPCConnection alloc] initWithConnection:v4];
  v6 = xpc_connection_copy_entitlement_value();
  v7 = xpc_connection_copy_entitlement_value();

  v8 = sub_100005C14("XPC");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412802;
    v16 = v6;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v5;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Check entitlement: %@:%@:[%@]", &v15, 0x20u);
  }

  if (v6 && xpc_get_type(v6) == &_xpc_type_BOOL && v6 == &_xpc_BOOL_true && v7 && xpc_get_type(v7) == &_xpc_type_BOOL && v7 == &_xpc_BOOL_true && ([(CloudXPCService *)self serverConnection], v9 = objc_claimAutoreleasedReturnValue(), v9, !v9))
  {
    v14 = sub_100005C14("XPC");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Connected to bluetoothd: %@", &v15, 0xCu);
    }

    [(CloudXPCService *)self setServerConnection:v5];
  }

  else
  {
    v10 = [(CloudXPCService *)self serverConnection];

    if (v10)
    {
      v11 = sub_100005C14("XPC");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [(CloudXPCService *)self serverConnection];
        v15 = 138412290;
        v16 = v12;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Already connected to bluetoothd: %@", &v15, 0xCu);
      }
    }
  }

  v13 = [(CloudXPCService *)self clients];
  [v13 addObject:v5];
}

- (void)devicesRemovedWithRecords:(id)a3
{
  v4 = a3;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AFC84;
  v7[3] = &unk_1002B6D18;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(xpcQueue, v7);
}

- (void)devicesUpdatedWithRecords:(id)a3
{
  v4 = a3;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000AFEA0;
  v7[3] = &unk_1002B6D18;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(xpcQueue, v7);
}

- (void)allDevicesRemovedWithRecords:(id)a3
{
  v4 = a3;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B00BC;
  v7[3] = &unk_1002B6D18;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(xpcQueue, v7);
}

- (void)accountStatusUpdateWithAvailable:(BOOL)a3 forced:(BOOL)a4
{
  xpcQueue = self->_xpcQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B02BC;
  v5[3] = &unk_1002BA760;
  v6 = a4;
  v7 = a3;
  v5[4] = self;
  dispatch_async(xpcQueue, v5);
}

- (void)allDeviceSupportInformationRecordsRemovedWithRecords:(id)a3
{
  v4 = a3;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B0424;
  v7[3] = &unk_1002B6D18;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(xpcQueue, v7);
}

- (void)allMagicPairingRecordsRemovedWithRecords:(id)a3
{
  v4 = a3;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B05F4;
  v7[3] = &unk_1002B6D18;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(xpcQueue, v7);
}

- (void)deviceSupportInformationRecordsRemovedWithRecords:(id)a3
{
  v4 = a3;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B07C4;
  v7[3] = &unk_1002B6D18;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(xpcQueue, v7);
}

- (void)deviceSupportInformationRecordsUpdatedWithRecords:(id)a3
{
  v4 = a3;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B0994;
  v7[3] = &unk_1002B6D18;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(xpcQueue, v7);
}

- (void)magicPairingRecordsRemovedWithRecords:(id)a3
{
  v4 = a3;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B0B64;
  v7[3] = &unk_1002B6D18;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(xpcQueue, v7);
}

- (void)magicPairingRecordsUpdatedWithRecords:(id)a3
{
  v4 = a3;
  xpcQueue = self->_xpcQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B0D34;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(xpcQueue, v7);
}

- (void)allLegacyMagicPairingRecordsWithRecordsData:(id)a3
{
  v4 = a3;
  xpcQueue = self->_xpcQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B13C8;
  block[3] = &unk_1002B6880;
  v8 = v4;
  v6 = v4;
  dispatch_async(xpcQueue, block);
}

- (void)accountStatusAvailable:(BOOL)a3 force:(BOOL)a4
{
  xpcQueue = self->_xpcQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B1550;
  v5[3] = &unk_1002BA760;
  v6 = a3;
  v7 = a4;
  v5[4] = self;
  dispatch_async(xpcQueue, v5);
}

- (void)hmDeviceCloudRecordsRemovedWithRecords:(id)a3
{
  v4 = a3;
  xpcQueue = self->_xpcQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B19D4;
  block[3] = &unk_1002B6880;
  v8 = v4;
  v6 = v4;
  dispatch_async(xpcQueue, block);
}

- (void)hmDeviceCloudRecordsUpdatedWithRecords:(id)a3
{
  v4 = a3;
  xpcQueue = self->_xpcQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B1C0C;
  block[3] = &unk_1002B6880;
  v8 = v4;
  v6 = v4;
  dispatch_async(xpcQueue, block);
}

- (void)removeConnection:(id)a3
{
  v4 = a3;
  v5 = sub_100005C14("XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remove connection: %@", &v7, 0xCu);
  }

  v6 = [(CloudXPCService *)self clients];
  [v6 removeObject:v4];
}

- (BOOL)manateeZoneUpgraded
{
  v2 = [(CloudXPCService *)self readUserPreference:@"MagicCloudPairingManateeUpgradedAccount"];

  if (v2)
  {
    v3 = sub_100005C14("MagicPairing");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Manatee: Master zone has been upgraded. Dont generate keys", v5, 2u);
    }
  }

  return v2 != 0;
}

- (id)readUserPreference:(id)a3
{
  v3 = CFPreferencesCopyValue(a3, kCFPreferencesCurrentApplication, kCFPreferencesCurrentUser, kCFPreferencesAnyHost);

  return v3;
}

- (void)handleConnection:(id)a3 XPCMessage:(id)a4 userID:(unsigned int)a5 processID:(int)a6
{
  v8 = a3;
  v9 = a4;
  type = xpc_get_type(v9);
  v11 = sub_100005C14("XPC");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received _handleXPCMessage", buf, 2u);
  }

  if (type == &_xpc_type_dictionary)
  {
    string = xpc_dictionary_get_string(v9, "kMsgId");
    v13 = sub_100005C14("XPC");
    v14 = v13;
    if (!string)
    {
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        sub_1001F56E8();
      }

      goto LABEL_56;
    }

    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315138;
      *&buf[4] = string;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "received msg: %s", buf, 0xCu);
    }

    v15 = xpc_dictionary_get_value(v9, "kMsgArgs");
    v14 = v15;
    if (v15)
    {
      xpc_get_type(v15);
    }

    if (!strcmp(string, "MasterKeysAvailable"))
    {
      goto LABEL_56;
    }

    if (!strcmp(string, "Start"))
    {
      v28 = sub_100005C14("XPC");
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Received Start", buf, 2u);
      }

      if ([(CloudXPCService *)self manateeZoneUpgraded])
      {
        v29 = MPCloudKit_Manatee;
      }

      else
      {
        v29 = MPCloudKit;
      }

      v30 = [(__objc2_class *)v29 sharedInstance];
      [v30 getAccountStatus];
      goto LABEL_49;
    }

    if (!strcmp(string, "DeviceInfoAvailable") || !strcmp(string, "OnlineStatusChanged"))
    {
      goto LABEL_56;
    }

    if (!strcmp(string, "SignInStatusChanged"))
    {
      [(CloudXPCService *)self beginTransaction:@"SignInStatusChanged"];
      if ([(CloudXPCService *)self manateeZoneUpgraded])
      {
        v31 = +[MPCloudKit_Manatee sharedInstance];
        v32 = v31;
        v126[0] = _NSConcreteStackBlock;
        v126[1] = 3221225472;
        v126[2] = sub_1000B39F4;
        v126[3] = &unk_1002BA7C8;
        v126[4] = self;
        v33 = v126;
      }

      else
      {
        v31 = +[MPCloudKit sharedInstance];
        v32 = v31;
        v127[0] = _NSConcreteStackBlock;
        v127[1] = 3221225472;
        v127[2] = sub_1000B3950;
        v127[3] = &unk_1002BA7C8;
        v127[4] = self;
        v33 = v127;
      }

      [v31 fetchAccountStatusWithCompletion:v33];
      goto LABEL_55;
    }

    if (!strcmp(string, "getMasterKey"))
    {
      v32 = [(CloudXPCService *)self deviceManager];
      v125[0] = _NSConcreteStackBlock;
      v125[1] = 3221225472;
      v125[2] = sub_1000B3AB0;
      v125[3] = &unk_1002BA7F0;
      v125[4] = self;
      [v32 fetchAccountMagicKeysBlobWithCompletion:v125];
LABEL_55:

      goto LABEL_56;
    }

    if (!strcmp(string, "getAccessoryKey"))
    {
      v34 = [(CloudXPCService *)self manateeZoneUpgraded];
      v35 = sub_100005C14("XPC");
      v36 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
      if (v34)
      {
        if (v36)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "Manatee getAccessoryKey", buf, 2u);
        }

        v37 = &off_1002B55A0;
      }

      else
      {
        if (v36)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "getAccessoryKey", buf, 2u);
        }

        v37 = off_1002B5598;
      }

      v42 = [(__objc2_class *)*v37 sharedInstance];
      [v42 fetchAccessoryKeyBlob:0];

      v30 = [(CloudXPCService *)self deviceManager];
      [v30 fetchCached];
      goto LABEL_49;
    }

    if (!strcmp(string, "getSignInStatus"))
    {
      v38 = [(CloudXPCService *)self manateeZoneUpgraded];
      v39 = sub_100005C14("XPC");
      v40 = os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
      if (v38)
      {
        if (v40)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Manatee getSignInStatus", buf, 2u);
        }

        v41 = MPCloudKit_Manatee;
      }

      else
      {
        if (v40)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "getSignInStatus", buf, 2u);
        }

        v41 = MPCloudKit;
      }

      v30 = [(__objc2_class *)v41 sharedInstance];
      [v30 forceAccountStatus];
      goto LABEL_49;
    }

    if (!strcmp(string, "getOnlineStatus"))
    {
LABEL_56:

      goto LABEL_57;
    }

    if (strcmp(string, "writeMasterKey"))
    {
      if (strcmp(string, "writeAccessoryKey"))
      {
        if (!strcmp(string, "deleteAllAccessories"))
        {
          v56 = [(CloudXPCService *)self manateeZoneUpgraded];
          v57 = sub_100005C14("XPC");
          v58 = os_log_type_enabled(v57, OS_LOG_TYPE_DEFAULT);
          if (v56)
          {
            if (v58)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "Manatee deleteAllAccessories", buf, 2u);
            }

            v59 = MPCloudKit_Manatee;
          }

          else
          {
            if (v58)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v57, OS_LOG_TYPE_DEFAULT, "deleteAllAccessories", buf, 2u);
            }

            v59 = MPCloudKit;
          }

          v30 = [(__objc2_class *)v59 sharedInstance];
          [v30 updateCloudKitAccessoryZone:0 delete:1];
          goto LABEL_49;
        }

        if (!strcmp(string, "checkIn"))
        {
          if (!v14)
          {
            goto LABEL_56;
          }

          v30 = _CFXPCCreateCFObjectFromXPCMessage();
          v45 = [v30 objectForKey:@"kCheckInVersion"];
          v61 = sub_100005C14("XPC");
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            *&buf[4] = v45;
            _os_log_impl(&_mh_execute_header, v61, OS_LOG_TYPE_DEFAULT, "received checkIn message version: %@", buf, 0xCu);
          }
        }

        else
        {
          if (!strcmp(string, "manateeZoneAvailabe"))
          {
            v30 = +[MPCloudKit_Manatee sharedInstance];
            [v30 manateeZoneAvailable];
            goto LABEL_49;
          }

          if (!strcmp(string, "deleteOldContainer"))
          {
            v30 = +[MPCloudKit sharedInstance];
            [v30 markLegacyNonManateeContainerMigrated];
            goto LABEL_49;
          }

          if (!strcmp(string, "nukeOldContainer") && IsAppleInternalBuild() || !strcmp(string, "resetOldContainer"))
          {
            v30 = +[MPCloudKit sharedInstance];
            [v30 resetOldZones];
            goto LABEL_49;
          }

          if (!strcmp(string, "upgradeToManatee"))
          {
            v30 = +[MPCloudKit sharedInstance];
            [v30 upgradeLegacyNonManateeContainerToManatee];
            goto LABEL_49;
          }

          if (!strcmp(string, "CachedLocalIDSIdentifiers"))
          {
            if (v14)
            {
              v64 = objc_autoreleasePoolPush();
              v65 = _CFXPCCreateCFObjectFromXPCMessage();
              v66 = [v65 objectForKey:@"kIDSIdentifiers"];
              if (v65 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && v66 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
              {
                v67 = sub_100005C14("XPC");
                if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138412290;
                  *&buf[4] = v65;
                  _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Update CachedLocalIDSIdentifiers: %@", buf, 0xCu);
                }

                v68 = +[CBIDSManager sharedInstance];
                [v68 xpcUpdateCloudPairings:v66];
              }

              else
              {
                v68 = sub_100005C14("XPC");
                if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
                {
                  sub_1001F5680();
                }
              }

              objc_autoreleasePoolPop(v64);
            }

            goto LABEL_56;
          }

          if (strcmp(string, "cloudpairingRetry"))
          {
            if (strcmp(string, "sendCloudKitPush"))
            {
              if (!strcmp(string, "printDebug"))
              {
                v71 = +[CloudXPCService sharedInstance];
                v72 = [v71 deviceManager];
                v73 = [v72 printDebug];
                v74 = +[CBIDSManager sharedInstance];
                v75 = [v74 statedumpAndRecordDailyMetric];
                v112 = [NSString stringWithFormat:@"%@\n%@", v73, v75];

                v76 = sub_100005C14("XPC");
                if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138477827;
                  *&buf[4] = v112;
                  _os_log_impl(&_mh_execute_header, v76, OS_LOG_TYPE_DEFAULT, "Statedump:\n %{private}@", buf, 0xCu);
                }

                if (v112)
                {
                  v128 = @"printDebug";
                  v129 = v112;
                  v77 = [NSDictionary dictionaryWithObjects:&v129 forKeys:&v128 count:1];
                  sub_1000B3CA0(v9, v77);
                }

                else
                {
                  sub_1000B3CA0(v9, &off_1002CBEA0);
                }

                v86 = v112;
                goto LABEL_155;
              }

              if (!strcmp(string, "nukeCloud"))
              {
                v78 = sub_100005C14("XPC");
                if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&_mh_execute_header, v78, OS_LOG_TYPE_DEFAULT, "nuking cloud", buf, 2u);
                }

                v32 = _CFXPCCreateCFObjectFromXPCObject();
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v79 = [v32 objectForKeyedSubscript:@"nuke"];
                  v80 = [v79 isEqualToString:@"nukeMe"];

                  if (v80)
                  {
                    v81 = +[MPCloudKit sharedInstance];
                    [v81 resetOldZones];

                    v82 = [(CloudXPCService *)self deviceManager];
                    v123[0] = _NSConcreteStackBlock;
                    v123[1] = 3221225472;
                    v123[2] = sub_1000B3D50;
                    v123[3] = &unk_1002B6A38;
                    v124 = v9;
                    [v82 resetCloudDataWithCompletion:v123];
                  }
                }

                goto LABEL_55;
              }

              v16 = +[_TtC15audioaccessoryd11XPCMessages fetchDeviceList];
              v17 = strcmp(string, [v16 UTF8String]);

              if (!v17)
              {
                v84 = +[CloudXPCService sharedInstance];
                v85 = [v84 deviceManager];
                v121[0] = _NSConcreteStackBlock;
                v121[1] = 3221225472;
                v121[2] = sub_1000B3E5C;
                v121[3] = &unk_1002BA818;
                v121[4] = self;
                v122 = v9;
                [v85 fetchDeviceRecordsWithCompletion:v121];

                v86 = v122;
                goto LABEL_155;
              }

              v18 = +[_TtC15audioaccessoryd11XPCMessages nicknameDevice];
              v19 = strcmp(string, [v18 UTF8String]);

              if (v19)
              {
                v20 = +[_TtC15audioaccessoryd11XPCMessages removeDeviceNickname];
                v21 = strcmp(string, [v20 UTF8String]);

                if (v21)
                {
                  v22 = +[_TtC15audioaccessoryd11XPCMessages resetCachedData];
                  v23 = strcmp(string, [v22 UTF8String]);

                  if (v23)
                  {
                    v24 = +[_TtC15audioaccessoryd11XPCMessages fetchNicknameDevice];
                    v25 = strcmp(string, [v24 UTF8String]);

                    if (v25)
                    {
                      if (!strcmp(string, "headTrackingAvailable"))
                      {
                        [(CloudXPCService *)self axHeadTrackingSettingChanged];
                      }

                      else
                      {
                        v26 = xpc_copy_description(v9);
                        v27 = sub_100005C14("XPC");
                        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
                        {
                          *buf = 136315138;
                          *&buf[4] = v26;
                          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, "Ignoring unhandled incoming XPC message: %s", buf, 0xCu);
                        }

                        free(v26);
                      }

                      goto LABEL_56;
                    }

                    v32 = _CFXPCCreateCFObjectFromXPCObject();
                    if (v32)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v101 = +[_TtC15audioaccessoryd12XPCArguments CloudDeviceAddress];
                        v102 = [v32 objectForKeyedSubscript:v101];
                        if (v102)
                        {
                          v103 = v102;
                          v112 = +[_TtC15audioaccessoryd12XPCArguments CloudDeviceAddress];
                          v104 = [v32 objectForKeyedSubscript:v112];
                          objc_opt_class();
                          HIDWORD(v111) = objc_opt_isKindOfClass();

                          if ((v111 & 0x100000000) != 0)
                          {
                            v105 = +[_TtC15audioaccessoryd12XPCArguments CloudDeviceAddress];
                            v88 = [v32 objectForKeyedSubscript:v105];

                            v106 = sub_100005C14("XPC");
                            if (os_log_type_enabled(v106, OS_LOG_TYPE_DEFAULT))
                            {
                              *buf = 138412290;
                              *&buf[4] = v88;
                              _os_log_impl(&_mh_execute_header, v106, OS_LOG_TYPE_DEFAULT, "Fetch Cloud Data for device: %@", buf, 0xCu);
                            }

                            v107 = +[CloudXPCService sharedInstance];
                            v108 = [v107 deviceManager];
                            v113[0] = _NSConcreteStackBlock;
                            v113[1] = 3221225472;
                            v113[2] = sub_1000B44A8;
                            v113[3] = &unk_1002BA840;
                            v113[4] = self;
                            v114 = v9;
                            [v108 fetchDeviceWithAddress:v88 completion:v113];

                            goto LABEL_198;
                          }
                        }

                        else
                        {
                        }
                      }
                    }

                    v110 = sub_100005C14("XPC");
                    if (os_log_type_enabled(v110, OS_LOG_TYPE_DEBUG))
                    {
                      sub_1001F54D8();
                    }

                    v94 = &__NSDictionary0__struct;
LABEL_203:
                    sub_1000B3CA0(v9, v94);
                    goto LABEL_55;
                  }

                  v98 = sub_100005C14("XPC");
                  if (os_log_type_enabled(v98, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v98, OS_LOG_TYPE_DEFAULT, "Reset Cached Data XPC message", buf, 2u);
                  }

                  v99 = +[CloudXPCService sharedInstance];
                  v100 = [v99 deviceManager];
                  v115[0] = _NSConcreteStackBlock;
                  v115[1] = 3221225472;
                  v115[2] = sub_1000B431C;
                  v115[3] = &unk_1002B68A8;
                  v115[4] = self;
                  v116 = v9;
                  [v100 resetCachedDataWithCompletion:v115];

                  v86 = v116;
LABEL_155:

                  goto LABEL_56;
                }

                v32 = _CFXPCCreateCFObjectFromXPCObject();
                v95 = sub_100005C14("XPC");
                if (os_log_type_enabled(v95, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138477827;
                  *&buf[4] = v32;
                  _os_log_impl(&_mh_execute_header, v95, OS_LOG_TYPE_DEFAULT, "Remove nickname device incoming XPC message: %{private}@", buf, 0xCu);
                }

                if (![(CloudXPCService *)self accountAvailable]|| !v32 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  v97 = sub_100005C14("XPC");
                  if (os_log_type_enabled(v97, OS_LOG_TYPE_ERROR))
                  {
                    sub_1001F554C(self);
                  }

                  v94 = &off_1002CC030;
                  goto LABEL_203;
                }

                v88 = [v32 objectForKey:@"bluetoothAddress"];
                v89 = [v32 objectForKey:@"nickname"];
                if (v88)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    if (v89)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v90 = [[BTCloudDevice alloc] initWithBluetoothAddress:v88];
                        [v90 setNickname:v89];
                        v112 = +[CloudXPCService sharedInstance];
                        v96 = [v112 deviceManager];
                        v117[0] = _NSConcreteStackBlock;
                        v117[1] = 3221225472;
                        v117[2] = sub_1000B4190;
                        v117[3] = &unk_1002B68A8;
                        v117[4] = self;
                        v118 = v9;
                        [v96 removeDeviceWithRecord:v90 completion:v117];

                        v92 = v118;
                        goto LABEL_179;
                      }
                    }
                  }
                }

                v109 = &off_1002CC008;
              }

              else
              {
                v32 = _CFXPCCreateCFObjectFromXPCObject();
                v87 = sub_100005C14("XPC");
                if (os_log_type_enabled(v87, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 138477827;
                  *&buf[4] = v32;
                  _os_log_impl(&_mh_execute_header, v87, OS_LOG_TYPE_DEFAULT, "Nickname device incoming XPC message: %{private}@", buf, 0xCu);
                }

                if (![(CloudXPCService *)self accountAvailable]|| !v32 || (objc_opt_class(), (objc_opt_isKindOfClass() & 1) == 0))
                {
                  v93 = sub_100005C14("XPC");
                  if (os_log_type_enabled(v93, OS_LOG_TYPE_ERROR))
                  {
                    sub_1001F55C8(self);
                  }

                  v94 = &off_1002CBF90;
                  goto LABEL_203;
                }

                v88 = [v32 objectForKey:@"bluetoothAddress"];
                v89 = [v32 objectForKey:@"nickname"];
                if (v88)
                {
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    if (v89)
                    {
                      objc_opt_class();
                      if (objc_opt_isKindOfClass())
                      {
                        v90 = [[BTCloudDevice alloc] initWithBluetoothAddress:v88];
                        [v90 setNickname:v89];
                        v112 = +[CloudXPCService sharedInstance];
                        v91 = [v112 deviceManager];
                        v119[0] = _NSConcreteStackBlock;
                        v119[1] = 3221225472;
                        v119[2] = sub_1000B4004;
                        v119[3] = &unk_1002B68A8;
                        v119[4] = self;
                        v120 = v9;
                        [v91 addDeviceWithRecord:v90 completion:v119];

                        v92 = v120;
LABEL_179:

LABEL_197:
LABEL_198:

                        goto LABEL_55;
                      }
                    }
                  }
                }

                v109 = &off_1002CBF68;
              }

              sub_1000B3CA0(v9, v109);
              goto LABEL_197;
            }

            v30 = +[CBIDSManager sharedInstance];
            [v30 sendCloudKitPush];
            goto LABEL_49;
          }

          if (!v14)
          {
            goto LABEL_56;
          }

          *buf = 0u;
          v135 = 0u;
          xpc_connection_get_audit_token();
          v69 = xpc_copy_code_signing_identity_for_token();
          if (v69)
          {
            v70 = v69;
            v30 = [NSString stringWithUTF8String:v69];
            free(v70);
          }

          else
          {
            v30 = 0;
          }

          v45 = _CFXPCCreateCFObjectFromXPCObject();
          v83 = sub_100005C14("XPC");
          if (os_log_type_enabled(v83, OS_LOG_TYPE_DEFAULT))
          {
            *v130 = 138412546;
            v131 = v30;
            v132 = 2112;
            v133 = v45;
            _os_log_impl(&_mh_execute_header, v83, OS_LOG_TYPE_DEFAULT, "cloudpairingRetry incoming (%@) XPC message: %@", v130, 0x16u);
          }

          if (v45 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
          {
            v61 = +[CBIDSManager sharedInstance];
            [v61 sendRePairRequest:v45 forBundleID:v30];
          }

          else
          {
            v61 = sub_100005C14("XPC");
            if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
            {
              sub_1001F5644();
            }
          }
        }

        goto LABEL_101;
      }

      if (!v14)
      {
        goto LABEL_56;
      }

      v48 = [(CloudXPCService *)self manateeZoneUpgraded];
      v30 = xpc_dictionary_get_value(v14, "kDeviceInfoBlob");
      xpc_data_get_length(v30);
      __chkstk_darwin();
      v50 = &v111 - v49;
      length = xpc_data_get_length(v30);
      bytes = xpc_data_get_bytes(v30, v50, 0, length);
      if (v48)
      {
        if (!bytes)
        {
          goto LABEL_49;
        }

        v53 = [NSData dataWithBytes:v50 length:xpc_data_get_length(v30)];
        v54 = sub_100005C14("XPC");
        if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v53;
          _os_log_impl(&_mh_execute_header, v54, OS_LOG_TYPE_DEFAULT, "Manatee Accessory blob %@", buf, 0xCu);
        }

        if (v53)
        {
          v55 = MPCloudKit_Manatee;
LABEL_108:
          v63 = [(__objc2_class *)v55 sharedInstance];
          [v63 updateCloudKitAccessoryZone:v53 delete:0];
        }
      }

      else
      {
        if (!bytes)
        {
          goto LABEL_49;
        }

        v53 = [NSData dataWithBytes:v50 length:xpc_data_get_length(v30)];
        v62 = sub_100005C14("XPC");
        if (os_log_type_enabled(v62, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          *&buf[4] = v53;
          _os_log_impl(&_mh_execute_header, v62, OS_LOG_TYPE_DEFAULT, " Accessory blob %@", buf, 0xCu);
        }

        if (v53)
        {
          v55 = MPCloudKit;
          goto LABEL_108;
        }
      }

      goto LABEL_49;
    }

    if (!v14)
    {
      goto LABEL_56;
    }

    v43 = [(CloudXPCService *)self manateeZoneUpgraded];
    v44 = xpc_dictionary_get_value(v14, "kMasterKeyBlob");
    v30 = v44;
    if (v43)
    {
      if (xpc_data_get_bytes(v44, buf, 0, 0x21uLL))
      {
        v45 = [NSData dataWithBytes:buf length:xpc_data_get_length(v30)];
        v46 = sub_100005C14("XPC");
        if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
        {
          *v130 = 138412290;
          v131 = v45;
          _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "Manatee Data blob %@", v130, 0xCu);
        }

        if (!v45)
        {
          goto LABEL_102;
        }

        v47 = MPCloudKit_Manatee;
        goto LABEL_97;
      }
    }

    else if (xpc_data_get_bytes(v44, buf, 0, 0x21uLL))
    {
      v45 = [NSData dataWithBytes:buf length:xpc_data_get_length(v30)];
      v60 = sub_100005C14("XPC");
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEFAULT))
      {
        *v130 = 138412290;
        v131 = v45;
        _os_log_impl(&_mh_execute_header, v60, OS_LOG_TYPE_DEFAULT, " Data blob %@", v130, 0xCu);
      }

      if (!v45)
      {
        goto LABEL_102;
      }

      v47 = MPCloudKit;
LABEL_97:
      v61 = [(__objc2_class *)v47 sharedInstance];
      [v61 updateCloudKitBlobZone:v45];
LABEL_101:

LABEL_102:
    }

LABEL_49:

    goto LABEL_56;
  }

LABEL_57:
}

- (void)beginTransaction:(id)a3
{
  v4 = a3;
  v5 = [(CloudXPCService *)self transactionQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B4820;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

- (void)endTransaction:(id)a3
{
  v4 = a3;
  v5 = [(CloudXPCService *)self transactionQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000B4AB0;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

@end