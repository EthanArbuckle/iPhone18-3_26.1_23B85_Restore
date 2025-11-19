@interface PCSIDSSyncing
- (BOOL)havePeers;
- (PCSIDSSyncing)initWithManager:(id)a3 transport:(id)a4 serialQueue:(id)a5;
- (void)checkSyncingForPeer:(id)a3 force:(BOOL)a4;
- (void)connectionForDevice:(id)a3 complete:(id)a4;
- (void)devicesAreNoLongerNearby:(id)a3;
- (void)devicesAreNowNearby:(id)a3;
- (void)incomingMessage:(id)a3 fromDevice:(id)a4;
- (void)newDevices:(id)a3 removedDevices:(id)a4;
- (void)triggerIDSSyncing:(id)a3;
@end

@implementation PCSIDSSyncing

- (PCSIDSSyncing)initWithManager:(id)a3 transport:(id)a4 serialQueue:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v23.receiver = self;
  v23.super_class = PCSIDSSyncing;
  v12 = [(PCSIDSSyncing *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_transport, a4);
    objc_storeStrong(&v13->_manager, a3);
    objc_storeStrong(&v13->_queue, a5);
    v14 = +[NSMutableDictionary dictionary];
    peers = v13->_peers;
    v13->_peers = v14;

    v16 = dispatch_queue_create("PCSIDSSyncing", 0);
    syncingQueue = v13->_syncingQueue;
    v13->_syncingQueue = v16;

    v18 = +[PCSDeviceManager sharedManager];
    [v18 setDelegate:v13];
    v19 = [(PCSIDSSyncing *)v13 transport];
    [v19 setDelegate:v13];

    v20 = [(PCSIDSSyncing *)v13 transport];
    [v20 setDeviceManager:v18];

    v21 = v13;
  }

  return v13;
}

- (void)incomingMessage:(id)a3 fromDevice:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = +[PCSDeviceManager sharedManager];
  v9 = [v8 deviceForIDSIdentifier:v7];

  if (v9)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100010140;
    v11[3] = &unk_100039198;
    v12 = v7;
    v13 = v6;
    [(PCSIDSSyncing *)self connectionForDevice:v9 complete:v11];
  }

  else
  {
    v10 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = v7;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to get PCSDevice for identifier %@; dropping message.", buf, 0xCu);
    }
  }
}

- (void)connectionForDevice:(id)a3 complete:(id)a4
{
  v6 = a3;
  v7 = a4;
  objc_initWeak(&location, self);
  v8 = [(PCSIDSSyncing *)self syncingQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100010320;
  v11[3] = &unk_1000391C0;
  objc_copyWeak(&v14, &location);
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, v11);

  objc_destroyWeak(&v14);
  objc_destroyWeak(&location);
}

- (BOOL)havePeers
{
  objc_initWeak(&location, self);
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(PCSIDSSyncing *)self syncingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000105DC;
  block[3] = &unk_1000391E8;
  block[4] = &v7;
  objc_copyWeak(&v6, &location);
  dispatch_sync(v3, block);

  LOBYTE(v3) = *(v8 + 24);
  objc_destroyWeak(&v6);
  _Block_object_dispose(&v7, 8);
  objc_destroyWeak(&location);
  return v3;
}

- (void)checkSyncingForPeer:(id)a3 force:(BOOL)a4
{
  v6 = a3;
  objc_initWeak(&location, self);
  v7 = [(PCSIDSSyncing *)self syncingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001074C;
  block[3] = &unk_100039238;
  objc_copyWeak(&v12, &location);
  v10 = v6;
  v11 = self;
  v13 = a4;
  v8 = v6;
  dispatch_async(v7, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)triggerIDSSyncing:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [v4 objectForKeyedSubscript:@"force"];
  v6 = [v5 BOOLValue];

  v7 = [(PCSIDSSyncing *)self syncingQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100010950;
  v8[3] = &unk_100039260;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  v10 = v6;
  dispatch_async(v7, v8);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)newDevices:(id)a3 removedDevices:(id)a4
{
  v32 = a3;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = a4;
  v6 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v41;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v41 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          v11 = *(*(&v40 + 1) + 8 * i);
          v12 = v10;
          v13 = [v11 idsDeviceIdentifier];
          *buf = 138412290;
          v45 = v13;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Device %@ has disappeared", buf, 0xCu);
        }
      }

      v7 = [obj countByEnumeratingWithState:&v40 objects:v51 count:16];
    }

    while (v7);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v33 = v32;
  v14 = [v33 countByEnumeratingWithState:&v36 objects:v50 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v37;
    do
    {
      for (j = 0; j != v15; j = j + 1)
      {
        if (*v37 != v16)
        {
          objc_enumerationMutation(v33);
        }

        v18 = *(*(&v36 + 1) + 8 * j);
        v19 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          v20 = v19;
          v21 = [v18 idsDeviceIdentifier];
          v22 = [v18 isActivePairedDevice];
          v23 = [v18 isConnected];
          *buf = 138412802;
          v45 = v21;
          v46 = 1024;
          v47 = v22;
          v48 = 1024;
          v49 = v23;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Device %@ appeared. isActive:%d, isConnected:%d", buf, 0x18u);
        }

        if ([v18 isActivePairedDevice])
        {
          v24 = [(PCSIDSSyncing *)self manager];
          v25 = [v18 idsDeviceIdentifier];
          v26 = [v24 getClientWithIdentifier:v25];

          v27 = [v18 model];
          v28 = [v18 osVersion];
          v29 = [NSString stringWithFormat:@"%@ - %@", v27, v28];
          [v26 setName:v29];

          v30 = [(PCSIDSSyncing *)self manager];
          [v30 saveClient:v26];

          if ([v18 supportsNewProtocol])
          {
            v31 = [(PCSIDSSyncing *)self manager];
            [v31 updateProtocolVersionIfNeeded:v26];
          }

          v35[0] = _NSConcreteStackBlock;
          v35[1] = 3221225472;
          v35[2] = sub_100010FEC;
          v35[3] = &unk_100039288;
          v35[4] = v18;
          [(PCSIDSSyncing *)self connectionForDevice:v18 complete:v35];
        }
      }

      v15 = [v33 countByEnumeratingWithState:&v36 objects:v50 count:16];
    }

    while (v15);
  }
}

- (void)devicesAreNowNearby:(id)a3
{
  v3 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
          v11 = [v8 idsDeviceIdentifier];
          v12 = [v8 isActivePairedDevice];
          *buf = 138412546;
          v19 = v11;
          v20 = 1024;
          v21 = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device %@ is now nearby (isActive:%d)", buf, 0x12u);
        }

        if ([v8 isActivePairedDevice] && objc_msgSend(v8, "isReachable"))
        {
          [(PCSIDSSyncing *)self connectionForDevice:v8 complete:&stru_1000392C8];
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v5);
  }
}

- (void)devicesAreNoLongerNearby:(id)a3
{
  v3 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = v8;
          v11 = [v9 idsDeviceIdentifier];
          v12 = [v9 isActivePairedDevice];
          *buf = 138412546;
          v18 = v11;
          v19 = 1024;
          v20 = v12;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device %@ is no longer nearby (isActive:%d)", buf, 0x12u);
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v5);
  }
}

@end