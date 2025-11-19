@interface BMSyncServiceServer
- (BMSyncServiceServer)initWithQueue:(id)a3 biomeSyncCore:(id)a4 cascadeSyncManager:(id)a5;
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (void)_cloudKitSyncWithSyncTriggeredHandler:(id)a3 syncCompletedHandler:(id)a4;
- (void)_rapportSyncWithDevices:(id)a3 syncTriggeredHandler:(id)a4 syncCompletedHandler:(id)a5;
- (void)_rapportSyncWithSyncTriggeredHandler:(id)a3 syncCompletedHandler:(id)a4;
- (void)cascadeRapportSyncWithReply:(id)a3;
- (void)cloudKitSyncWithReply:(id)a3;
- (void)peerInformationWithReply:(id)a3;
- (void)rapportSyncWithReply:(id)a3;
- (void)remoteDevicesForAccount:(id)a3 reply:(id)a4;
- (void)triggerCloudKitSyncWithReply:(id)a3;
- (void)triggerRapportSyncDeviceIdentifiers:(id)a3 reply:(id)a4;
- (void)triggerRapportSyncWithReply:(id)a3;
@end

@implementation BMSyncServiceServer

- (BMSyncServiceServer)initWithQueue:(id)a3 biomeSyncCore:(id)a4 cascadeSyncManager:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v17.receiver = self;
  v17.super_class = BMSyncServiceServer;
  v12 = [(BMSyncServiceServer *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_core, a4);
    objc_storeStrong(&v13->_queue, a3);
    objc_storeStrong(&v13->_cascadeSyncManager, a5);
    v14 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.biomesyncd.sync"];
    listener = v13->_listener;
    v13->_listener = v14;

    [(NSXPCListener *)v13->_listener setDelegate:v13];
    [(NSXPCListener *)v13->_listener resume];
  }

  return v13;
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v5 = a4;
  v6 = [BMProcess processWithXPCConnection:v5];
  if ([v6 BOOLForEntitlement:@"com.apple.private.biome.sync"] & 1) != 0 || os_variant_allows_internal_security_policies() && (objc_msgSend(v6, "BOOLForEntitlement:", @"com.apple.internal.biome.sync"))
  {
    v7 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BMSyncServiceServerProtocol];
    [v5 setExportedInterface:v7];

    [v5 setExportedObject:self];
    v8 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BMSyncServiceClientProtocol];
    [v5 setRemoteObjectInterface:v8];

    [v5 resume];
    v9 = 1;
  }

  else
  {
    [v5 invalidate];
    v9 = 0;
  }

  return v9;
}

- (void)_cloudKitSyncWithSyncTriggeredHandler:(id)a3 syncCompletedHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100021E68;
  block[3] = &unk_100079380;
  block[4] = self;
  v9 = v6;
  v20 = v9;
  v10 = v7;
  v21 = v10;
  dispatch_sync(queue, block);
  v11 = [(BMSyncCore *)self->_core syncScheduler];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100021F8C;
  v17[3] = &unk_1000793A8;
  v18 = v10;
  v12 = v10;
  [v11 syncCloudKitNowIfPolicyAllowsWithReason:5 activity:0 completionHandler:v17];

  v13 = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100021FA4;
  v15[3] = &unk_1000793D0;
  v16 = v9;
  v14 = v9;
  dispatch_sync(v13, v15);
}

- (void)_rapportSyncWithSyncTriggeredHandler:(id)a3 syncCompletedHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100022084;
  block[3] = &unk_100079380;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_sync(queue, block);
}

- (void)_rapportSyncWithDevices:(id)a3 syncTriggeredHandler:(id)a4 syncCompletedHandler:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  queue = self->_queue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002234C;
  v15[3] = &unk_1000793F8;
  v17 = v9;
  v18 = v10;
  v15[4] = self;
  v16 = v8;
  v12 = v8;
  v13 = v10;
  v14 = v9;
  dispatch_sync(queue, v15);
}

- (void)triggerRapportSyncWithReply:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "triggerRapportSyncWithReply called", buf, 2u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002267C;
  v11[3] = &unk_100078BC0;
  v12 = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = nullsub_1;
  v9[3] = &unk_100078CD8;
  v10 = v5;
  v7 = v5;
  v8 = v4;
  [(BMSyncServiceServer *)self _rapportSyncWithSyncTriggeredHandler:v11 syncCompletedHandler:v9];
}

- (void)triggerRapportSyncDeviceIdentifiers:(id)a3 reply:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = os_transaction_create();
  v9 = __biome_log_for_category();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "triggerRapportSyncDeviceIdentifiers called", buf, 2u);
  }

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100022804;
  v14[3] = &unk_100078BC0;
  v15 = v6;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = nullsub_2;
  v12[3] = &unk_100078CD8;
  v13 = v8;
  v10 = v8;
  v11 = v6;
  [(BMSyncServiceServer *)self _rapportSyncWithDevices:v7 syncTriggeredHandler:v14 syncCompletedHandler:v12];
}

- (void)rapportSyncWithReply:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "rapportSyncWithError called", buf, 2u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100022930;
  v9[3] = &unk_100079420;
  v10 = v5;
  v11 = v4;
  v7 = v5;
  v8 = v4;
  [(BMSyncServiceServer *)self _rapportSyncWithSyncTriggeredHandler:0 syncCompletedHandler:v9];
}

- (void)cascadeRapportSyncWithReply:(id)a3
{
  v4 = BMSyncErrorDomain;
  v5 = a3;
  v6 = [NSError errorWithDomain:v4 code:1 userInfo:0];
  v8 = v6;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  (*(a3 + 2))(v5, &__NSArray0__struct, v7);
}

- (void)triggerCloudKitSyncWithReply:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "triggerCloudKitSyncWithReply called", buf, 2u);
  }

  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100022B70;
  v11[3] = &unk_100078BC0;
  v12 = v4;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = nullsub_3;
  v9[3] = &unk_100078CD8;
  v10 = v5;
  v7 = v5;
  v8 = v4;
  [(BMSyncServiceServer *)self _cloudKitSyncWithSyncTriggeredHandler:v11 syncCompletedHandler:v9];
}

- (void)cloudKitSyncWithReply:(id)a3
{
  v4 = a3;
  v5 = os_transaction_create();
  v6 = __biome_log_for_category();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "cloudKitSyncWithError called", buf, 2u);
  }

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100022C9C;
  v9[3] = &unk_100079420;
  v10 = v5;
  v11 = v4;
  v7 = v5;
  v8 = v4;
  [(BMSyncServiceServer *)self _cloudKitSyncWithSyncTriggeredHandler:0 syncCompletedHandler:v9];
}

- (void)remoteDevicesForAccount:(id)a3 reply:(id)a4
{
  v5 = a4;
  queue = self->_queue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100022D4C;
  v8[3] = &unk_100078B98;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_sync(queue, v8);
}

- (void)peerInformationWithReply:(id)a3
{
  v4 = a3;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100023130;
  v7[3] = &unk_100078B98;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(queue, v7);
}

@end