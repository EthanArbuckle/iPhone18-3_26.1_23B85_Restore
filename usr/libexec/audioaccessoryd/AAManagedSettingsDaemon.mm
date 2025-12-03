@interface AAManagedSettingsDaemon
+ (id)sharedAAManagedSettingsDaemon;
- (AAManagedSettingsDaemon)init;
- (BOOL)allowTemporaryPairingConnection;
- (int)hourOfDeletion;
- (int64_t)_nextCleanupAlarmTime;
- (void)_activate;
- (void)_cleanUp;
- (void)_fetchManagedSettings;
- (void)_handleAlarmEvent;
- (void)_invalidate;
- (void)_managedSettingsChangedWithEvent:(id)event settingsGroup:(id)group;
- (void)_managedSettingsListenerEnsureStarted;
- (void)_scheduleCleanupAlarm;
- (void)activate;
- (void)invalidate;
- (void)setAllowTemporaryPairingConnection:(BOOL)connection;
- (void)setHourOfDeletion:(int)deletion;
@end

@implementation AAManagedSettingsDaemon

+ (id)sharedAAManagedSettingsDaemon
{
  if (qword_1002FA0D8 != -1)
  {
    sub_1001EC7CC();
  }

  v3 = qword_1002FA0D0;

  return v3;
}

- (AAManagedSettingsDaemon)init
{
  v8.receiver = self;
  v8.super_class = AAManagedSettingsDaemon;
  v2 = [(AAManagedSettingsDaemon *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AAManagedSettingsDaemon", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000748D0;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (!self->_activateCalled)
  {
    self->_activateCalled = 1;
    if (dword_1002F68B8 <= 30 && (dword_1002F68B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EC7E0();
    }

    if (_os_feature_enabled_impl())
    {
      [(AAManagedSettingsDaemon *)self _managedSettingsListenerEnsureStarted];
      [(AAManagedSettingsDaemon *)self _fetchManagedSettings];
      v3 = +[AAPairedDeviceDaemon sharedAAPairedDeviceDaemon];
      aaPairedDeviceDaemon = self->_aaPairedDeviceDaemon;
      self->_aaPairedDeviceDaemon = v3;

      [(AAManagedSettingsDaemon *)self _handleAlarmEvent];
    }
  }
}

- (void)_handleAlarmEvent
{
  if (dword_1002F68B8 <= 30 && (dword_1002F68B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EC7FC();
  }

  dispatchQueue = self->_dispatchQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100074A58;
  handler[3] = &unk_1002B68D0;
  handler[4] = self;
  xpc_set_event_stream_handler("com.apple.alarm", dispatchQueue, handler);
}

- (void)_scheduleCleanupAlarm
{
  if ([(AAManagedSettingsDaemon *)self allowTemporaryPairingConnection])
  {
    _nextCleanupAlarmTime = [(AAManagedSettingsDaemon *)self _nextCleanupAlarmTime];
    v4 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_date(v4, "Date", _nextCleanupAlarmTime);
    xpc_set_event();
    if (dword_1002F68B8 <= 30 && (dword_1002F68B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EC890();
    }
  }

  else if (dword_1002F68B8 <= 30 && (dword_1002F68B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EC874();
  }
}

- (int64_t)_nextCleanupAlarmTime
{
  v3 = +[NSDate date];
  v4 = +[NSCalendar currentCalendar];
  v5 = [v4 components:28 fromDate:v3];
  [v5 setHour:{-[AAManagedSettingsDaemon hourOfDeletion](self, "hourOfDeletion")}];
  v6 = [v4 dateFromComponents:v5];

  v7 = +[NSDate date];
  [v7 timeIntervalSince1970];
  v9 = v8;

  [v6 timeIntervalSince1970];
  if (v9 >= v10)
  {
    if (dword_1002F68B8 <= 90 && (dword_1002F68B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EC8D8();
    }

    v11 = objc_opt_new();
    [v11 setDay:1];
    v12 = [v4 dateByAddingComponents:v11 toDate:v6 options:0];

    v6 = v12;
  }

  [v6 timeIntervalSince1970];
  v14 = v13;
  v15 = objc_alloc_init(NSDateFormatter);
  [v15 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  if (dword_1002F68B8 <= 50 && (dword_1002F68B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EC8F8(v15, v6);
  }

  return (ceil(v14) * 1000000000.0);
}

- (void)_managedSettingsListenerEnsureStarted
{
  if (!self->_listenerSetup)
  {
    self->_listenerSetup = 1;
    if (dword_1002F68B8 <= 30 && (dword_1002F68B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EC958();
    }

    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100074ECC;
    v3[3] = &unk_1002B9290;
    v3[4] = self;
    [MOSystemEffectiveSettingsStore startObservingChangesWithHandler:v3];
  }
}

- (void)_managedSettingsChangedWithEvent:(id)event settingsGroup:(id)group
{
  groupCopy = group;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [groupCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v13;
    v9 = MOSettingsGroupNameAudioAccessory;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(groupCopy);
        }

        if ([*(*(&v12 + 1) + 8 * v10) isEqualToString:v9])
        {
          if (dword_1002F68B8 <= 30 && (dword_1002F68B8 != -1 || _LogCategory_Initialize()))
          {
            sub_1001EC974();
          }

          [(AAManagedSettingsDaemon *)self _fetchManagedSettings];
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v11 = [groupCopy countByEnumeratingWithState:&v12 objects:v16 count:16];
      v7 = v11;
    }

    while (v11);
  }
}

- (void)_fetchManagedSettings
{
  v7 = objc_opt_new();
  audioAccessory = [v7 audioAccessory];
  temporaryPairingConfiguration = [audioAccessory temporaryPairingConfiguration];
  unpairingTime = [temporaryPairingConfiguration unpairingTime];
  hour = [unpairingTime hour];

  if (hour)
  {
    [(AAManagedSettingsDaemon *)self setAllowTemporaryPairingConnection:1];
    -[AAManagedSettingsDaemon setHourOfDeletion:](self, "setHourOfDeletion:", [hour intValue]);
    if (dword_1002F68B8 <= 30 && (dword_1002F68B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EC9B4(self);
    }

    [(AAManagedSettingsDaemon *)self _scheduleCleanupAlarm];
  }

  else
  {
    [(AAManagedSettingsDaemon *)self setAllowTemporaryPairingConnection:0];
    if (dword_1002F68B8 <= 30 && (dword_1002F68B8 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EC9F8();
    }

    [(AAManagedSettingsDaemon *)self _cleanUp];
  }
}

- (void)_cleanUp
{
  pairedDevices = [(AAPairedDeviceDaemon *)self->_aaPairedDeviceDaemon pairedDevices];
  if (dword_1002F68B8 <= 30 && (dword_1002F68B8 != -1 || _LogCategory_Initialize()))
  {
    sub_1001ECA14(pairedDevices);
  }

  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100075368;
  v4[3] = &unk_1002B7520;
  v4[4] = self;
  [pairedDevices enumerateKeysAndObjectsUsingBlock:v4];
}

- (BOOL)allowTemporaryPairingConnection
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  allowTemporaryPairingConnection = selfCopy->_allowTemporaryPairingConnection;
  objc_sync_exit(selfCopy);

  return allowTemporaryPairingConnection;
}

- (void)setAllowTemporaryPairingConnection:(BOOL)connection
{
  connectionCopy = connection;
  obj = self;
  objc_sync_enter(obj);
  if (obj->_allowTemporaryPairingConnection != connectionCopy)
  {
    obj->_allowTemporaryPairingConnection = connectionCopy;
  }

  objc_sync_exit(obj);
}

- (int)hourOfDeletion
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  hourOfDeletion = selfCopy->_hourOfDeletion;
  objc_sync_exit(selfCopy);

  return hourOfDeletion;
}

- (void)setHourOfDeletion:(int)deletion
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_hourOfDeletion != deletion)
  {
    obj->_hourOfDeletion = deletion;
  }

  objc_sync_exit(obj);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000755E8;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  aaPairedDeviceDaemon = self->_aaPairedDeviceDaemon;
  self->_aaPairedDeviceDaemon = 0;

  self->_activateCalled = 0;
  self->_listenerSetup = 0;
}

@end