@interface SUBInstallationMonitor
+ (id)sharedInstallationMonitor;
- (BOOL)_installIntervalHasPassedSinceDate:(id)date;
- (SUBInstallationMonitor)init;
- (id)_installMarkerPath;
- (id)descriptorBeingInstalled;
- (void)gizmoDidBeginInstallingDescriptor:(id)descriptor;
- (void)gizmoUpdateCompleted;
@end

@implementation SUBInstallationMonitor

+ (id)sharedInstallationMonitor
{
  if (qword_100033980 != -1)
  {
    sub_100019BBC();
  }

  v3 = qword_100033978;

  return v3;
}

- (SUBInstallationMonitor)init
{
  v7.receiver = self;
  v7.super_class = SUBInstallationMonitor;
  v2 = [(SUBInstallationMonitor *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.SUBInstallationMonitor", v3);
    queue = v2->_queue;
    v2->_queue = v4;

    v2->_installTimeout = 5400.0;
  }

  return v2;
}

- (id)_installMarkerPath
{
  getActiveDevice = [(SUBInstallationMonitor *)self getActiveDevice];
  v4 = getActiveDevice;
  activeDeviceUUID = self->_activeDeviceUUID;
  if (!activeDeviceUUID || ([getActiveDevice pairingID], v6 = objc_claimAutoreleasedReturnValue(), v7 = -[NSUUID isEqual:](activeDeviceUUID, "isEqual:", v6), v6, (v7 & 1) == 0))
  {
    self->_didCheckInstallMarker = 0;
    pairingID = [v4 pairingID];
    v9 = self->_activeDeviceUUID;
    self->_activeDeviceUUID = pairingID;
  }

  if (v4)
  {
    v10 = [v4 valueForProperty:NRDevicePropertyLocalPairingDataStorePath];
    v11 = v10;
    if (v10)
    {
      v12 = [v10 stringByAppendingPathComponent:@"gizmo-is-installing"];
    }

    else
    {
      v14 = softwareupdatebridge_log;
      if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
      {
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "paired device exists, but no pairing path exists", v16, 2u);
      }

      v12 = 0;
    }
  }

  else
  {
    v13 = softwareupdatebridge_log;
    if (os_log_type_enabled(softwareupdatebridge_log, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "no active device exists", buf, 2u);
    }

    v12 = 0;
  }

  return v12;
}

- (void)gizmoDidBeginInstallingDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10000FF7C;
  v7[3] = &unk_10002D210;
  v7[4] = self;
  v8 = descriptorCopy;
  v6 = descriptorCopy;
  dispatch_sync(queue, v7);
}

- (void)gizmoUpdateCompleted
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000102D4;
  block[3] = &unk_10002CBD0;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (BOOL)_installIntervalHasPassedSinceDate:(id)date
{
  if (!date)
  {
    return 1;
  }

  v3 = [date dateByAddingTimeInterval:self->_installTimeout];
  v4 = +[NSDate date];
  v5 = [v4 compare:v3] != -1;

  return v5;
}

- (id)descriptorBeingInstalled
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1000106C4;
  v10 = sub_1000106D4;
  v11 = 0;
  queue = self->_queue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000106DC;
  v5[3] = &unk_10002D598;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

@end