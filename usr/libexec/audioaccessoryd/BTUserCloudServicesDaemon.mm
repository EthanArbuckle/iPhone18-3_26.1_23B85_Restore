@interface BTUserCloudServicesDaemon
+ (id)sharedBTServicesDaemon;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BTUserCloudServicesDaemon)init;
- (id)descriptionWithLevel:(int)level;
- (void)_activate;
- (void)_invalidate;
- (void)_xpcConnectionInvalidated:(id)invalidated;
- (void)activate;
- (void)invalidate;
- (void)reportHMDeviceCloudRecordInfosUpdated:(id)updated;
@end

@implementation BTUserCloudServicesDaemon

+ (id)sharedBTServicesDaemon
{
  if (qword_1002FA188 != -1)
  {
    sub_1001F4630();
  }

  v3 = qword_1002FA180;

  return v3;
}

- (BTUserCloudServicesDaemon)init
{
  v8.receiver = self;
  v8.super_class = BTUserCloudServicesDaemon;
  v2 = [(BTUserCloudServicesDaemon *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("BTUserCloudServicesDaemon", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (id)descriptionWithLevel:(int)level
{
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v3 = CFPrefs_CopyKeys();
  v4 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = 0;
    v8 = *v23;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v23 != v8)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v22 + 1) + 8 * i);
        if (!v6)
        {
          NSAppendPrintF();
          v11 = v7;

          v7 = v11;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v21 = CFPrefs_CopyTypedValue();
          NSAppendPrintF();
          v12 = v7;

          ++v6;
          v7 = v12;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 0;
  }

  v13 = +[CBIDSManager sharedInstance];
  statedumpAndRecordDailyMetric = [v13 statedumpAndRecordDailyMetric];
  NSAppendPrintF();
  v14 = v7;

  v15 = +[CloudXPCService sharedInstance];
  deviceManager = [v15 deviceManager];
  printDebug = [deviceManager printDebug];
  NSAppendPrintF();
  v17 = v14;

  return v14;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A5208;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (!self->_xpcListener)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.BluetoothCloudServices"];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v3;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
    [(NSXPCListener *)self->_xpcListener resume];
  }

  if (!self->_stateHandle)
  {
    dispatchQueue = self->_dispatchQueue;
    self->_stateHandle = os_state_add_handler();
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000A53D4;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  [(NSXPCListener *)self->_xpcListener invalidate];
  xpcListener = self->_xpcListener;
  self->_xpcListener = 0;

  if (self->_stateHandle)
  {
    os_state_remove_handler();
    self->_stateHandle = 0;
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  v7 = objc_alloc_init(BTCloudServicesXPCConnection);
  [(BTCloudServicesXPCConnection *)v7 setDaemon:self];
  [(BTCloudServicesXPCConnection *)v7 setDispatchQueue:self->_dispatchQueue];
  [(BTCloudServicesXPCConnection *)v7 setXpcCnx:connectionCopy];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v9 = objc_alloc_init(NSMutableSet);
    v10 = self->_xpcConnections;
    self->_xpcConnections = v9;

    xpcConnections = self->_xpcConnections;
  }

  selfCopy = self;
  [(NSMutableSet *)xpcConnections addObject:v7];
  v40 = 0u;
  v41 = 0u;
  if (connectionCopy)
  {
    [connectionCopy auditToken];
  }

  v11 = xpc_copy_code_signing_identity_for_token();
  v36 = connectionCopy;
  if (v11)
  {
    v12 = v11;
    v13 = [NSString stringWithUTF8String:v11];
    free(v12);
  }

  else
  {
    v13 = 0;
  }

  v27 = v13;
  [(BTCloudServicesXPCConnection *)v7 setSigningIdentity:v13];
  v14 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BTCloudServicesXPCClientInterface];
  v33 = [NSSet alloc];
  v32 = objc_opt_class();
  v31 = objc_opt_class();
  v30 = objc_opt_class();
  v29 = objc_opt_class();
  v35 = v7;
  v15 = objc_opt_class();
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = [v33 initWithObjects:{v32, v31, v30, v29, v15, v16, v17, v18, v19, v20, v21, v22, v23, objc_opt_class(), 0}];
  [v14 setClasses:v24 forSelector:"createDeviceRecord:completion:" argumentIndex:0 ofReply:1];
  [v14 setClasses:v24 forSelector:"modifyDeviceRecord:completion:" argumentIndex:0 ofReply:1];
  [v14 setClasses:v24 forSelector:"deleteDeviceRecord:completion:" argumentIndex:0 ofReply:1];
  [v14 setClasses:v24 forSelector:"deviceRecord:completion:" argumentIndex:1 ofReply:1];
  [v14 setClasses:v24 forSelector:"deviceRecordsWithCompletion:" argumentIndex:0 ofReply:1];
  [v14 setClasses:v24 forSelector:"createDeviceSupportInformationRecord:completion:" argumentIndex:0 ofReply:1];
  [v14 setClasses:v24 forSelector:"modifyDeviceSupportInformationRecord:completion:" argumentIndex:0 ofReply:1];
  [v14 setClasses:v24 forSelector:"deleteDeviceSupportInformationRecord:completion:" argumentIndex:0 ofReply:1];
  [v14 setClasses:v24 forSelector:"deviceSupportInformationRecord:completion:" argumentIndex:1 ofReply:1];
  [v14 setClasses:v24 forSelector:"deviceSupportInformationRecordsWithCompletion:" argumentIndex:0 ofReply:1];
  [v14 setClasses:v24 forSelector:"createMagicSettingsRecord:completion:" argumentIndex:0 ofReply:1];
  [v14 setClasses:v24 forSelector:"modifyMagicSettingsRecord:completion:" argumentIndex:0 ofReply:1];
  [v14 setClasses:v24 forSelector:"deleteDeviceRecord:completion:" argumentIndex:0 ofReply:1];
  [v14 setClasses:v24 forSelector:"magicSettingsRecord:completion:" argumentIndex:1 ofReply:1];
  [v14 setClasses:v24 forSelector:"magicSettingsRecordsWithCompletion:" argumentIndex:0 ofReply:1];
  [v14 setClasses:v24 forSelector:"accountInfoWithCompletion:" argumentIndex:0 ofReply:1];
  [v14 setClasses:v24 forSelector:"cloudPairingIdentifierForPeripheral:completion:" argumentIndex:0 ofReply:1];
  [v14 setClasses:v24 forSelector:"cloudPairingIdentifierForPeripheral:completion:" argumentIndex:1 ofReply:1];
  [v14 setClasses:v24 forSelector:"createSoundProfileRecord:completion:" argumentIndex:0 ofReply:1];
  [v14 setClasses:v24 forSelector:"modifySoundProfileRecord:completion:" argumentIndex:0 ofReply:1];
  [v14 setClasses:v24 forSelector:"fetchSoundProfileRecordWithCompletion:" argumentIndex:0 ofReply:1];
  [v14 setClasses:v24 forSelector:"deleteSoundProfileRecordWithCompletion:" argumentIndex:0 ofReply:1];
  [v14 setClasses:v24 forSelector:"hmDeviceCloudRecordInfosUpdated:" argumentIndex:0 ofReply:0];
  [v36 _setQueue:selfCopy->_dispatchQueue];
  v25 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BTCloudServicesXPCDaemonInterface];
  [v36 setExportedInterface:v25];

  [v36 setExportedObject:v35];
  objc_initWeak(&location, selfCopy);
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_1000A5AE0;
  v37[3] = &unk_1002B9E98;
  objc_copyWeak(&v38, &location);
  v37[4] = v35;
  [v36 setInvalidationHandler:v37];
  [v36 setRemoteObjectInterface:v14];
  [v36 resume];
  if (dword_1002F6ED8 <= 20 && (dword_1002F6ED8 != -1 || _LogCategory_Initialize()))
  {
    [v36 processIdentifier];
    LogPrintF();
  }

  objc_destroyWeak(&v38);
  objc_destroyWeak(&location);

  return 1;
}

- (void)_xpcConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  v6 = invalidatedCopy;
  if (dword_1002F6ED8 <= 20)
  {
    if (dword_1002F6ED8 != -1 || (v5 = _LogCategory_Initialize(), invalidatedCopy = v6, v5))
    {
      sub_1001F467C(invalidatedCopy);
      invalidatedCopy = v6;
    }
  }

  [invalidatedCopy xpcConnectionInvalidated];
  [(NSMutableSet *)self->_xpcConnections removeObject:v6];
}

- (void)reportHMDeviceCloudRecordInfosUpdated:(id)updated
{
  updatedCopy = updated;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(NSMutableSet *)self->_xpcConnections copy];
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

        [*(*(&v10 + 1) + 8 * v9) clientReportHMDeviceCloudRecordInfosUpdated:updatedCopy];
        v9 = v9 + 1;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

@end