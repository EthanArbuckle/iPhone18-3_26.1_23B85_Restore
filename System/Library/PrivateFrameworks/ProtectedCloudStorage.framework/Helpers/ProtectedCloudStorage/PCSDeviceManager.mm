@interface PCSDeviceManager
+ (id)sharedManager;
- (NSArray)allDevices;
- (PCSDeviceManager)init;
- (PCSDeviceManagerDelegate)delegate;
- (id)currentActivePairedDevice;
- (id)deviceForIDSIdentifier:(id)identifier;
- (id)deviceForPairingID:(id)d;
- (void)updatedIDSDevices:(id)devices;
@end

@implementation PCSDeviceManager

+ (id)sharedManager
{
  if (qword_100040740 != -1)
  {
    sub_10002292C();
  }

  v3 = qword_100040738;

  return v3;
}

- (PCSDeviceManager)init
{
  v8.receiver = self;
  v8.super_class = PCSDeviceManager;
  v2 = [(PCSDeviceManager *)&v8 init];
  if (v2)
  {
    v3 = objc_opt_new();
    devices = v2->_devices;
    v2->_devices = v3;

    v5 = dispatch_queue_create("com.apple.appconduitd.PCSDeviceManager.internal", 0);
    internalQueue = v2->_internalQueue;
    v2->_internalQueue = v5;
  }

  return v2;
}

- (id)currentActivePairedDevice
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = sub_10000E780;
  v14 = sub_10000E790;
  v15 = 0;
  internalQueue = [(PCSDeviceManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E798;
  block[3] = &unk_100038C30;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(internalQueue, block);

  v4 = v11[5];
  if (!v4)
  {
    v5 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "No active paired device", v8, 2u);
    }

    v4 = v11[5];
  }

  v6 = v4;
  _Block_object_dispose(&v10, 8);

  return v6;
}

- (id)deviceForIDSIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10000E780;
  v18 = sub_10000E790;
  v19 = 0;
  internalQueue = [(PCSDeviceManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000E9BC;
  block[3] = &unk_100038E60;
  v13 = &v14;
  block[4] = self;
  v6 = identifierCopy;
  v12 = v6;
  dispatch_sync(internalQueue, block);

  v7 = v15[5];
  if (!v7)
  {
    v8 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "No IDS Device registered with identifier %@", buf, 0xCu);
    }

    v7 = v15[5];
  }

  v9 = v7;

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (id)deviceForPairingID:(id)d
{
  dCopy = d;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_10000E780;
  v18 = sub_10000E790;
  v19 = 0;
  internalQueue = [(PCSDeviceManager *)self internalQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10000EBFC;
  block[3] = &unk_100039108;
  block[4] = self;
  v6 = dCopy;
  v12 = v6;
  v13 = &v14;
  dispatch_sync(internalQueue, block);

  v7 = v15[5];
  if (!v7)
  {
    v8 = qword_1000407B8;
    if (os_log_type_enabled(qword_1000407B8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v21 = v6;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Failed to find device with pairing ID %@", buf, 0xCu);
    }

    v7 = v15[5];
  }

  v9 = v7;

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (NSArray)allDevices
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_10000E780;
  v11 = sub_10000E790;
  v12 = 0;
  internalQueue = [(PCSDeviceManager *)self internalQueue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10000EE60;
  v6[3] = &unk_100038C30;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(internalQueue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)updatedIDSDevices:(id)devices
{
  devicesCopy = devices;
  internalQueue = [(PCSDeviceManager *)self internalQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000EF7C;
  v7[3] = &unk_100038CA8;
  v8 = devicesCopy;
  selfCopy = self;
  v6 = devicesCopy;
  dispatch_async(internalQueue, v7);
}

- (PCSDeviceManagerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end