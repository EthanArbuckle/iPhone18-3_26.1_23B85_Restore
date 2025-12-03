@interface PCSIDSSyncing
- (BOOL)havePeers;
- (PCSIDSSyncing)initWithManager:(id)manager transport:(id)transport serialQueue:(id)queue;
- (void)checkSyncingForPeer:(id)peer force:(BOOL)force;
- (void)connectionForDevice:(id)device complete:(id)complete;
- (void)devicesAreNoLongerNearby:(id)nearby;
- (void)devicesAreNowNearby:(id)nearby;
- (void)incomingMessage:(id)message fromDevice:(id)device;
- (void)newDevices:(id)devices removedDevices:(id)removedDevices;
- (void)triggerIDSSyncing:(id)syncing;
@end

@implementation PCSIDSSyncing

- (PCSIDSSyncing)initWithManager:(id)manager transport:(id)transport serialQueue:(id)queue
{
  managerCopy = manager;
  transportCopy = transport;
  queueCopy = queue;
  v23.receiver = self;
  v23.super_class = PCSIDSSyncing;
  v12 = [(PCSIDSSyncing *)&v23 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_transport, transport);
    objc_storeStrong(&v13->_manager, manager);
    objc_storeStrong(&v13->_queue, queue);
    v14 = +[NSMutableDictionary dictionary];
    peers = v13->_peers;
    v13->_peers = v14;

    v16 = dispatch_queue_create("PCSIDSSyncing", 0);
    syncingQueue = v13->_syncingQueue;
    v13->_syncingQueue = v16;

    v18 = +[PCSDeviceManager sharedManager];
    [v18 setDelegate:v13];
    transport = [(PCSIDSSyncing *)v13 transport];
    [transport setDelegate:v13];

    transport2 = [(PCSIDSSyncing *)v13 transport];
    [transport2 setDeviceManager:v18];

    v21 = v13;
  }

  return v13;
}

- (void)incomingMessage:(id)message fromDevice:(id)device
{
  messageCopy = message;
  deviceCopy = device;
  v8 = +[PCSDeviceManager sharedManager];
  v9 = [v8 deviceForIDSIdentifier:deviceCopy];

  if (v9)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100010140;
    v11[3] = &unk_100039198;
    v12 = deviceCopy;
    v13 = messageCopy;
    [(PCSIDSSyncing *)self connectionForDevice:v9 complete:v11];
  }

  else
  {
    v10 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v15 = deviceCopy;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Failed to get PCSDevice for identifier %@; dropping message.", buf, 0xCu);
    }
  }
}

- (void)connectionForDevice:(id)device complete:(id)complete
{
  deviceCopy = device;
  completeCopy = complete;
  objc_initWeak(&location, self);
  syncingQueue = [(PCSIDSSyncing *)self syncingQueue];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_100010320;
  v11[3] = &unk_1000391C0;
  objc_copyWeak(&v14, &location);
  v12 = deviceCopy;
  v13 = completeCopy;
  v9 = completeCopy;
  v10 = deviceCopy;
  dispatch_async(syncingQueue, v11);

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
  syncingQueue = [(PCSIDSSyncing *)self syncingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000105DC;
  block[3] = &unk_1000391E8;
  block[4] = &v7;
  objc_copyWeak(&v6, &location);
  dispatch_sync(syncingQueue, block);

  LOBYTE(syncingQueue) = *(v8 + 24);
  objc_destroyWeak(&v6);
  _Block_object_dispose(&v7, 8);
  objc_destroyWeak(&location);
  return syncingQueue;
}

- (void)checkSyncingForPeer:(id)peer force:(BOOL)force
{
  peerCopy = peer;
  objc_initWeak(&location, self);
  syncingQueue = [(PCSIDSSyncing *)self syncingQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001074C;
  block[3] = &unk_100039238;
  objc_copyWeak(&v12, &location);
  v10 = peerCopy;
  selfCopy = self;
  forceCopy = force;
  v8 = peerCopy;
  dispatch_async(syncingQueue, block);

  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);
}

- (void)triggerIDSSyncing:(id)syncing
{
  syncingCopy = syncing;
  objc_initWeak(&location, self);
  v5 = [syncingCopy objectForKeyedSubscript:@"force"];
  bOOLValue = [v5 BOOLValue];

  syncingQueue = [(PCSIDSSyncing *)self syncingQueue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100010950;
  v8[3] = &unk_100039260;
  objc_copyWeak(&v9, &location);
  v8[4] = self;
  v10 = bOOLValue;
  dispatch_async(syncingQueue, v8);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)newDevices:(id)devices removedDevices:(id)removedDevices
{
  devicesCopy = devices;
  v40 = 0u;
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  obj = removedDevices;
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
          idsDeviceIdentifier = [v11 idsDeviceIdentifier];
          *buf = 138412290;
          v45 = idsDeviceIdentifier;
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
  v33 = devicesCopy;
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
          idsDeviceIdentifier2 = [v18 idsDeviceIdentifier];
          isActivePairedDevice = [v18 isActivePairedDevice];
          isConnected = [v18 isConnected];
          *buf = 138412802;
          v45 = idsDeviceIdentifier2;
          v46 = 1024;
          v47 = isActivePairedDevice;
          v48 = 1024;
          v49 = isConnected;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Device %@ appeared. isActive:%d, isConnected:%d", buf, 0x18u);
        }

        if ([v18 isActivePairedDevice])
        {
          manager = [(PCSIDSSyncing *)self manager];
          idsDeviceIdentifier3 = [v18 idsDeviceIdentifier];
          v26 = [manager getClientWithIdentifier:idsDeviceIdentifier3];

          model = [v18 model];
          osVersion = [v18 osVersion];
          v29 = [NSString stringWithFormat:@"%@ - %@", model, osVersion];
          [v26 setName:v29];

          manager2 = [(PCSIDSSyncing *)self manager];
          [manager2 saveClient:v26];

          if ([v18 supportsNewProtocol])
          {
            manager3 = [(PCSIDSSyncing *)self manager];
            [manager3 updateProtocolVersionIfNeeded:v26];
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

- (void)devicesAreNowNearby:(id)nearby
{
  nearbyCopy = nearby;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [nearbyCopy countByEnumeratingWithState:&v14 objects:v22 count:16];
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
          objc_enumerationMutation(nearbyCopy);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        v9 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          v10 = v9;
          idsDeviceIdentifier = [v8 idsDeviceIdentifier];
          isActivePairedDevice = [v8 isActivePairedDevice];
          *buf = 138412546;
          v19 = idsDeviceIdentifier;
          v20 = 1024;
          v21 = isActivePairedDevice;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device %@ is now nearby (isActive:%d)", buf, 0x12u);
        }

        if ([v8 isActivePairedDevice] && objc_msgSend(v8, "isReachable"))
        {
          [(PCSIDSSyncing *)self connectionForDevice:v8 complete:&stru_1000392C8];
        }
      }

      v5 = [nearbyCopy countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v5);
  }
}

- (void)devicesAreNoLongerNearby:(id)nearby
{
  nearbyCopy = nearby;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v4 = [nearbyCopy countByEnumeratingWithState:&v13 objects:v21 count:16];
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
          objc_enumerationMutation(nearbyCopy);
        }

        v8 = qword_1000407B8;
        if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = v8;
          idsDeviceIdentifier = [v9 idsDeviceIdentifier];
          isActivePairedDevice = [v9 isActivePairedDevice];
          *buf = 138412546;
          v18 = idsDeviceIdentifier;
          v19 = 1024;
          v20 = isActivePairedDevice;
          _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Device %@ is no longer nearby (isActive:%d)", buf, 0x12u);
        }
      }

      v5 = [nearbyCopy countByEnumeratingWithState:&v13 objects:v21 count:16];
    }

    while (v5);
  }
}

@end