@interface AALowBatteryAlertDaemon
+ (id)sharedAALowBatteryAlertDaemon;
- (AALowBatteryAlertDaemon)init;
- (BOOL)_chargingNotificationEnabledForDeviceWithIdentifier:(id)identifier;
- (BOOL)_checkChargingReachedComplete:(id)complete;
- (BOOL)_checkIfUIStateConditionsForLowBatteryBannerAreMet;
- (BOOL)_trackChargingCompleteWithBatteryInfo:(id)info;
- (BOOL)_updateSystemCharging;
- (BOOL)_updateSystemEffectiveScreenLocked;
- (BOOL)lowBatteryAlertVisible;
- (id)_lastSeenBatteryInfoWithIdentifier:(id)identifier;
- (id)_trackChargingReminderWithBatteryInfo:(id)info;
- (id)descriptionWithLevel:(int)level;
- (unsigned)_removeStaleLowBatteryDevices;
- (void)_aaBatteryMonitorEnsureStarted;
- (void)_aaBatteryMonitorEnsureStopped;
- (void)_aaPairedDeviceManagerEnsureStarted;
- (void)_aaPairedDeviceManagerEnsureStopped;
- (void)_activate;
- (void)_backoffChargingReminderForBatteryInfo:(id)info;
- (void)_chargingCompleteWithBatteryInfo:(id)info;
- (void)_chargingNotificationReset;
- (void)_chargingNotificationUpdated:(id)updated;
- (void)_checkChargingCompleteNotificationWithUpdatedBatteryInfo:(id)info;
- (void)_checkForLowBattery;
- (void)_checkShouldClearChargingReminderWithUpdatedBatteryInfo:(id)info;
- (void)_clearAllNotificationWithIdentifier:(id)identifier reason:(int64_t)reason;
- (void)_clearLastSeenBatteryInfoWithIdentifier:(id)identifier;
- (void)_clearLowBatteryDevicesWithIdentifier:(id)identifier;
- (void)_clearNotification:(id)notification withReason:(int64_t)reason;
- (void)_clearUserDismissedChargingNotificationsWhileProcessNotRunning;
- (void)_dismissChargingCompleteNotificationWithBatteryInfo:(id)info;
- (void)_dismissLowBatteryAlertOnIOS;
- (void)_dismissNotification:(id)notification withReason:(int64_t)reason;
- (void)_invalidate;
- (void)_lastSeenBatteryInfoUpdated:(id)updated;
- (void)_loadNotificationsFromPref;
- (void)_loadPersistedLastSeenBatteryInfo;
- (void)_loadPersistedLowBatteryDevices;
- (void)_loadPreferences;
- (void)_lowBatteryDeviceUpdated:(id)updated;
- (void)_lowBatteryMonitoringEnsureStarted;
- (void)_lowBatteryMonitoringEnsureStopped;
- (void)_lowBatteryMonitoringReset;
- (void)_persistLastSeenBatteryInfoWithUrgency:(BOOL)urgency;
- (void)_persistLowBatteryDevicesWithUrgency:(BOOL)urgency;
- (void)_persistNotificationsToPrefs;
- (void)_powerMonitorEnsureStarted;
- (void)_powerMonitorEnsureStopped;
- (void)_powerMonitorStateChanged;
- (void)_registerForSystemNotifications;
- (void)_reportChargingCompleteMetricWithTracker:(id)tracker;
- (void)_reportChargingReminderMetricWithTracker:(id)tracker;
- (void)_reportLowBatteriesWithBatteryInfo:(id)info;
- (void)_reportMetricsForNotificationTracker:(id)tracker;
- (void)_shouldPostChargingReminderForLowBatteryCaseWithBatteryInfo:(id)info;
- (void)_showAlertForLowBatteryDevice:(id)device;
- (void)_showAlertForLowBatteryDevice_iOS:(id)s;
- (void)_systemUIMonitorEnsureStarted;
- (void)_systemUIMonitorEnsureStopped;
- (void)_systemUIUpdatedWithLayout:(id)layout;
- (void)_triggerChargingReminderCheck;
- (void)_unregisterFromSystemNotifications;
- (void)_updateCurrentLowBatteryDevicesWithBatteryInfo:(id)info;
- (void)_updateLastSeenOnTrackerWithBatteryInfo:(id)info;
- (void)_userNotificationCenterEnsureStarted;
- (void)_userNotificationCenterEnsureStopped;
- (void)activate;
- (void)deviceBatteryInfoLost:(id)lost;
- (void)deviceBatteryInfoUpdated:(id)updated;
- (void)invalidate;
- (void)pairedDeviceLost:(id)lost;
- (void)pairedDeviceUpdated:(id)updated;
- (void)receivedNotificationResponse:(id)response forRequest:(id)request;
- (void)showLowBatteryBannerIfNeededForDevice:(id)device withType:(unsigned __int8)type completion:(id)completion;
@end

@implementation AALowBatteryAlertDaemon

+ (id)sharedAALowBatteryAlertDaemon
{
  if (qword_1002FA0A8 != -1)
  {
    sub_1001DA484();
  }

  v3 = qword_1002FA0A0;

  return v3;
}

- (AALowBatteryAlertDaemon)init
{
  v8.receiver = self;
  v8.super_class = AALowBatteryAlertDaemon;
  v2 = [(AALowBatteryAlertDaemon *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AALowBatteryAlertDaemon", v3);
    v5 = *(v2 + 8);
    *(v2 + 8) = v4;

    *(v2 + 28) = -1;
    *(v2 + 20) = -1;
    v6 = v2;
  }

  return v2;
}

- (id)descriptionWithLevel:(int)level
{
  v42 = 0;
  NSAppendPrintF_safe();
  v41 = 0;
  lowBatteryDeviceMap = [(AALowBatteryAlertDaemon *)self lowBatteryDeviceMap];
  v29 = [lowBatteryDeviceMap count];
  NSAppendPrintF();
  v5 = v41;

  Current = CFAbsoluteTimeGetCurrent();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  lowBatteryDeviceMap2 = [(AALowBatteryAlertDaemon *)self lowBatteryDeviceMap];
  allValues = [lowBatteryDeviceMap2 allValues];

  obj = allValues;
  v9 = [allValues countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v38;
    do
    {
      v12 = 0;
      v13 = v5;
      do
      {
        if (*v38 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v37 + 1) + 8 * v12);
        [v14 lastSeenTime];
        if (v15 <= 0.0)
        {
          v17 = 0;
        }

        else
        {
          [v14 lastSeenTime];
          v17 = (Current - v16);
        }

        [v14 reportTime];
        if (v18 <= 0.0)
        {
          v20 = 0;
        }

        else
        {
          [v14 reportTime];
          v20 = (Current - v19);
        }

        deviceAddress = [v14 deviceAddress];
        name = [v14 name];
        [v14 lastBatteryLevel];
        v24 = v23;
        lastBatteryType = [v14 lastBatteryType];
        v26 = "?";
        if (lastBatteryType <= 5)
        {
          v26 = off_1002B7C00[lastBatteryType];
        }

        v34 = v17;
        v35 = v20;
        v33 = v26;
        v32 = v24 * 100.0;
        v30 = deviceAddress;
        v31 = name;
        NSAppendPrintF();
        v5 = v13;

        v12 = v12 + 1;
        v13 = v5;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v37 objects:v43 count:{16, deviceAddress, name, *&v32, v33, v17, v20}];
    }

    while (v10);
  }

  NSAppendPrintF();
  v27 = v5;

  return v5;
}

- (void)activate
{
  dispatchQueue = [(AALowBatteryAlertDaemon *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000348A0;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  [(AALowBatteryAlertDaemon *)self _loadPreferences];
  [(AALowBatteryAlertDaemon *)self _aaBatteryMonitorEnsureStarted];
  [(AALowBatteryAlertDaemon *)self _aaPairedDeviceManagerEnsureStarted];
  [(AALowBatteryAlertDaemon *)self _powerMonitorEnsureStarted];
  [(AALowBatteryAlertDaemon *)self _registerForSystemNotifications];
  [(AALowBatteryAlertDaemon *)self _userNotificationCenterEnsureStarted];
  [(AALowBatteryAlertDaemon *)self _systemUIMonitorEnsureStarted];
  [(AALowBatteryAlertDaemon *)self _lowBatteryMonitoringEnsureStarted];

  [(AALowBatteryAlertDaemon *)self _clearUserDismissedChargingNotificationsWhileProcessNotRunning];
}

- (void)invalidate
{
  dispatchQueue = [(AALowBatteryAlertDaemon *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000349A0;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  [(AALowBatteryAlertDaemon *)self _aaBatteryMonitorEnsureStopped];
  [(AALowBatteryAlertDaemon *)self _aaPairedDeviceManagerEnsureStopped];
  [(AALowBatteryAlertDaemon *)self _powerMonitorEnsureStopped];
  [(AALowBatteryAlertDaemon *)self _systemUIMonitorEnsureStopped];
  [(AALowBatteryAlertDaemon *)self _unregisterFromSystemNotifications];

  [(AALowBatteryAlertDaemon *)self _userNotificationCenterEnsureStopped];
}

- (void)_lastSeenBatteryInfoUpdated:(id)updated
{
  updatedCopy = updated;
  identifier = [updatedCopy identifier];
  v5 = [(AALowBatteryAlertDaemon *)self _lastSeenBatteryInfoWithIdentifier:?];
  v6 = v5;
  if (v5)
  {
    [v5 updateWithNewInfo:updatedCopy];
  }

  else
  {
    v7 = [updatedCopy copy];

    lastSeenBatteryInfoMap = [(AALowBatteryAlertDaemon *)self lastSeenBatteryInfoMap];
    [lastSeenBatteryInfoMap setObject:v7 forKeyedSubscript:identifier];

    updatedCopy = v7;
  }

  [(AALowBatteryAlertDaemon *)self _persistLastSeenBatteryInfoWithUrgency:0];
}

- (id)_lastSeenBatteryInfoWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  [(AALowBatteryAlertDaemon *)self _loadPersistedLastSeenBatteryInfo];
  lastSeenBatteryInfoMap = [(AALowBatteryAlertDaemon *)self lastSeenBatteryInfoMap];
  v6 = [lastSeenBatteryInfoMap objectForKeyedSubscript:identifierCopy];

  return v6;
}

- (void)_loadPersistedLastSeenBatteryInfo
{
  if (![(AALowBatteryAlertDaemon *)self lastSeenBatteryInfoFromPrefsLoaded])
  {
    CFPrefs_RemoveValue();
    CFDataGetTypeID();
    v3 = CFPrefs_CopyTypedValue();
    v10[0] = objc_opt_class();
    v10[1] = objc_opt_class();
    v10[2] = objc_opt_class();
    v4 = [NSArray arrayWithObjects:v10 count:3];
    v5 = [NSSet setWithArray:v4];

    v9 = 0;
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:v3 error:&v9];
    v7 = v9;
    if (v7)
    {
      if (dword_1002F6620 <= 90 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
      {
        sub_1001DA498(v7);
      }

      v8 = objc_alloc_init(NSMutableDictionary);
      [(AALowBatteryAlertDaemon *)self setLastSeenBatteryInfoMap:v8];
    }

    else
    {
      [(AALowBatteryAlertDaemon *)self setLastSeenBatteryInfoMap:v6];
    }

    [(AALowBatteryAlertDaemon *)self setLastSeenBatteryInfoFromPrefsLoaded:1];
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DA4EC(self);
    }
  }
}

- (void)_persistLastSeenBatteryInfoWithUrgency:(BOOL)urgency
{
  if (urgency)
  {
    lastSeenBatteryInfoSaveTimer = self->_lastSeenBatteryInfoSaveTimer;
    if (lastSeenBatteryInfoSaveTimer)
    {
      v5 = lastSeenBatteryInfoSaveTimer;
      dispatch_source_cancel(v5);
      v6 = self->_lastSeenBatteryInfoSaveTimer;
      self->_lastSeenBatteryInfoSaveTimer = 0;
    }

    systemPowerMonitor = [(AALowBatteryAlertDaemon *)self systemPowerMonitor];
    firstUnlocked = [systemPowerMonitor firstUnlocked];

    if (firstUnlocked)
    {
      [(AALowBatteryAlertDaemon *)self _aaPairedDeviceManagerEnsureStarted];
      v9 = +[NSMutableArray array];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      lastSeenBatteryInfoMap = [(AALowBatteryAlertDaemon *)self lastSeenBatteryInfoMap];
      allValues = [lastSeenBatteryInfoMap allValues];

      v12 = [allValues countByEnumeratingWithState:&v39 objects:v46 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v40;
        do
        {
          v15 = 0;
          do
          {
            if (*v40 != v14)
            {
              objc_enumerationMutation(allValues);
            }

            v16 = *(*(&v39 + 1) + 8 * v15);
            pairedDeviceManager = [(AALowBatteryAlertDaemon *)self pairedDeviceManager];
            bluetoothAddress = [v16 bluetoothAddress];
            v19 = [pairedDeviceManager isDevicePairedWithBluetoothAddress:bluetoothAddress];

            if ((v19 & 1) == 0)
            {
              identifier = [v16 identifier];
              [v9 addObject:identifier];

              if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
              {
                sub_1001DA5AC();
              }
            }

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v21 = [allValues countByEnumeratingWithState:&v39 objects:v46 count:16];
          v13 = v21;
        }

        while (v21);
      }

      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      v22 = v9;
      v23 = [v22 countByEnumeratingWithState:&v35 objects:v45 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v36;
        do
        {
          for (i = 0; i != v24; i = i + 1)
          {
            if (*v36 != v25)
            {
              objc_enumerationMutation(v22);
            }

            v27 = *(*(&v35 + 1) + 8 * i);
            lastSeenBatteryInfoMap2 = [(AALowBatteryAlertDaemon *)self lastSeenBatteryInfoMap];
            [lastSeenBatteryInfoMap2 setObject:0 forKeyedSubscript:v27];
          }

          v24 = [v22 countByEnumeratingWithState:&v35 objects:v45 count:16];
        }

        while (v24);
      }
    }

    lastSeenBatteryInfoMap3 = [(AALowBatteryAlertDaemon *)self lastSeenBatteryInfoMap];
    v34 = 0;
    v30 = [NSKeyedArchiver archivedDataWithRootObject:lastSeenBatteryInfoMap3 requiringSecureCoding:1 error:&v34];
    v31 = v34;

    if (v31)
    {
      if (sub_1001DA5EC(v31, self, &v44))
      {
        goto LABEL_30;
      }
    }

    else
    {
      CFPrefs_SetValue();
      if (dword_1002F6620 > 30 || dword_1002F6620 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_30;
      }

      sub_1001DA6A8(self, &v44);
    }

LABEL_30:
LABEL_31:

    return;
  }

  lastSeenBatteryInfoSaveTimer = [(AALowBatteryAlertDaemon *)self lastSeenBatteryInfoSaveTimer];

  if (!lastSeenBatteryInfoSaveTimer)
  {
    dispatchQueue = [(AALowBatteryAlertDaemon *)self dispatchQueue];
    v31 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, dispatchQueue);

    [(AALowBatteryAlertDaemon *)self setLastSeenBatteryInfoSaveTimer:v31];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000351B8;
    handler[3] = &unk_1002B6880;
    handler[4] = self;
    dispatch_source_set_event_handler(v31, handler);
    CUDispatchTimerSet();
    dispatch_activate(v31);
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DA568();
    }

    goto LABEL_31;
  }
}

- (void)_checkForLowBattery
{
  if ([(AALowBatteryAlertDaemon *)self prefLowBatteryEnabled])
  {
    if ([(AALowBatteryAlertDaemon *)self _checkIfUIStateConditionsForLowBatteryBannerAreMet])
    {
      [(AALowBatteryAlertDaemon *)self _loadPersistedLowBatteryDevices];
      batteryMonitor = [(AALowBatteryAlertDaemon *)self batteryMonitor];
      devices = [batteryMonitor devices];

      [(AALowBatteryAlertDaemon *)self _updateCurrentLowBatteryDevicesWithBatteryInfo:devices];
      [(AALowBatteryAlertDaemon *)self _removeStaleLowBatteryDevices];
      [(AALowBatteryAlertDaemon *)self _reportLowBatteriesWithBatteryInfo:devices];
    }

    else
    {
      srBannerObserver = [(AALowBatteryAlertDaemon *)self srBannerObserver];
      smartRoutingBannerVisible = [srBannerObserver smartRoutingBannerVisible];

      if (!smartRoutingBannerVisible)
      {
        return;
      }

      if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
      {
        sub_1001DA720();
      }

      devices = [(AALowBatteryAlertDaemon *)self lowBatteryCheckCoalescer];
      [devices trigger];
    }
  }

  else if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DA704();
  }
}

- (BOOL)_checkIfUIStateConditionsForLowBatteryBannerAreMet
{
  systemPowerMonitor = [(AALowBatteryAlertDaemon *)self systemPowerMonitor];
  screenActive = [systemPowerMonitor screenActive];

  srBannerObserver = [(AALowBatteryAlertDaemon *)self srBannerObserver];
  smartRoutingBannerVisible = [srBannerObserver smartRoutingBannerVisible];

  systemEffectiveScreenLocked = [(AALowBatteryAlertDaemon *)self systemEffectiveScreenLocked];
  lowBatteryAlertVisible = [(AALowBatteryAlertDaemon *)self lowBatteryAlertVisible];
  if ([(AALowBatteryAlertDaemon *)self systemUIProxCardPresent])
  {
    lowBatteryBannerIOS = [(AALowBatteryAlertDaemon *)self lowBatteryBannerIOS];

    if (lowBatteryBannerIOS)
    {
      [(AALowBatteryAlertDaemon *)self _dismissLowBatteryAlertOnIOS];
    }
  }

  else if (screenActive & ~(lowBatteryAlertVisible | systemEffectiveScreenLocked | smartRoutingBannerVisible))
  {
    LOBYTE(v10) = 1;
    return v10;
  }

  if (dword_1002F6620 > 30)
  {
LABEL_10:
    LOBYTE(v10) = 0;
    return v10;
  }

  if (dword_1002F6620 != -1 || (v10 = _LogCategory_Initialize()) != 0)
  {
    sub_1001DA73C(screenActive, self);
    goto LABEL_10;
  }

  return v10;
}

- (void)_dismissLowBatteryAlertOnIOS
{
  lowBatteryBannerIOS = [(AALowBatteryAlertDaemon *)self lowBatteryBannerIOS];
  [lowBatteryBannerIOS invalidate];

  [(AALowBatteryAlertDaemon *)self setLowBatteryBannerIOS:0];
}

- (BOOL)lowBatteryAlertVisible
{
  lowBatteryBannerIOS = [(AALowBatteryAlertDaemon *)self lowBatteryBannerIOS];
  v3 = lowBatteryBannerIOS != 0;

  return v3;
}

- (void)_lowBatteryMonitoringEnsureStarted
{
  lowBatteryCheckCoalescer = [(AALowBatteryAlertDaemon *)self lowBatteryCheckCoalescer];

  if (!lowBatteryCheckCoalescer)
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DA7FC();
    }

    v4 = objc_alloc_init(CUCoalescer);
    [(AALowBatteryAlertDaemon *)self setLowBatteryCheckCoalescer:v4];
    dispatchQueue = [(AALowBatteryAlertDaemon *)self dispatchQueue];
    [v4 setDispatchQueue:dispatchQueue];

    [v4 setMinDelay:0.05];
    [v4 setMaxDelay:0.1];
    [v4 setLeeway:0.05];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000359E8;
    v6[3] = &unk_1002B6D18;
    v6[4] = v4;
    v6[5] = self;
    [v4 setActionHandler:v6];
  }
}

- (void)_lowBatteryMonitoringEnsureStopped
{
  lowBatteryCheckCoalescer = [(AALowBatteryAlertDaemon *)self lowBatteryCheckCoalescer];

  if (lowBatteryCheckCoalescer)
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DA818();
    }

    lowBatteryCheckCoalescer2 = [(AALowBatteryAlertDaemon *)self lowBatteryCheckCoalescer];
    [lowBatteryCheckCoalescer2 invalidate];

    [(AALowBatteryAlertDaemon *)self setLowBatteryCheckCoalescer:0];
  }
}

- (void)_lowBatteryMonitoringReset
{
  CFPrefs_RemoveValue();
  [(AALowBatteryAlertDaemon *)self setLowBatteryDeviceMap:0];
  [(AALowBatteryAlertDaemon *)self setLowBatteryInfoFromPrefsLoaded:0];

  [(AALowBatteryAlertDaemon *)self _loadPreferences];
}

- (unsigned)_removeStaleLowBatteryDevices
{
  Current = CFAbsoluteTimeGetCurrent();
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  lowBatteryDeviceMap = [(AALowBatteryAlertDaemon *)self lowBatteryDeviceMap];
  allKeys = [lowBatteryDeviceMap allKeys];

  v6 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = 0;
    v9 = *v24;
    do
    {
      v10 = 0;
      do
      {
        if (*v24 != v9)
        {
          objc_enumerationMutation(allKeys);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        lowBatteryDeviceMap2 = [(AALowBatteryAlertDaemon *)self lowBatteryDeviceMap];
        v13 = [lowBatteryDeviceMap2 objectForKeyedSubscript:v11];

        [v13 lastSeenTime];
        v15 = vabdd_f64(Current, v14);
        [(AALowBatteryAlertDaemon *)self prefLowBatteryStaleSeconds];
        if (v15 >= v16)
        {
          [v13 reportTime];
          v18 = vabdd_f64(Current, v17);
          [(AALowBatteryAlertDaemon *)self prefLowBatteryStaleSeconds];
          if (v18 >= v19)
          {
            lowBatteryDeviceMap3 = [(AALowBatteryAlertDaemon *)self lowBatteryDeviceMap];
            [lowBatteryDeviceMap3 setObject:0 forKeyedSubscript:v11];

            ++v8;
            if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
            {
              sub_1001DA834(v13);
            }
          }
        }

        v10 = v10 + 1;
      }

      while (v7 != v10);
      v21 = [allKeys countByEnumeratingWithState:&v23 objects:v27 count:16];
      v7 = v21;
    }

    while (v21);

    if (v8 >= 1)
    {
      [(AALowBatteryAlertDaemon *)self _persistLowBatteryDevicesWithUrgency:0];
    }
  }

  else
  {

    LOBYTE(v8) = 0;
  }

  return v8;
}

- (void)_reportLowBatteriesWithBatteryInfo:(id)info
{
  infoCopy = info;
  v5 = &dword_1002F6000;
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DA8D8();
  }

  v6 = +[NSMutableSet set];
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = infoCopy;
  v8 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v38;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v38 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v37 + 1) + 8 * i);
        if ([v12 isConnected])
        {
          identifier = [v12 identifier];
          [v6 addObject:identifier];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v37 objects:v42 count:16];
    }

    while (v9);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  selfCopy = self;
  lowBatteryDeviceMap = [(AALowBatteryAlertDaemon *)self lowBatteryDeviceMap];
  allValues = [lowBatteryDeviceMap allValues];

  v16 = [allValues countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (!v16)
  {
    goto LABEL_37;
  }

  v17 = v16;
  v32 = 0;
  v18 = *v34;
  do
  {
    for (j = 0; j != v17; j = j + 1)
    {
      if (*v34 != v18)
      {
        objc_enumerationMutation(allValues);
      }

      v20 = *(*(&v33 + 1) + 8 * j);
      if ([v20 valid])
      {
        [v20 reportTime];
        if (v21 == 0.0)
        {
          v23 = v5;
          identifier2 = [v20 identifier];
          v25 = [v6 containsObject:identifier2];

          if (v25)
          {
            v5 = v23;
            if (v32)
            {
              [v20 lastBatteryLevel];
              v27 = v26;
              [v32 lastBatteryLevel];
              if (v27 < v28)
              {
                v29 = v20;

                v32 = v29;
              }
            }

            else
            {
              v32 = v20;
            }
          }

          else
          {
            v5 = v23;
            v30 = v23[392];
            if (v30 <= 10 && (v30 != -1 || _LogCategory_Initialize()))
            {
              sub_1001DA8F4(v20);
            }
          }
        }

        else
        {
          v22 = v5[392];
          if (v22 <= 10 && (v22 != -1 || _LogCategory_Initialize()))
          {
            sub_1001DA9C0(v20);
          }
        }
      }
    }

    v17 = [allValues countByEnumeratingWithState:&v33 objects:v41 count:16];
  }

  while (v17);

  if (v32)
  {
    [(AALowBatteryAlertDaemon *)selfCopy _showAlertForLowBatteryDevice:?];
    allValues = v32;
LABEL_37:
  }
}

- (void)_showAlertForLowBatteryDevice:(id)device
{
  deviceCopy = device;
  v6 = deviceCopy;
  if (dword_1002F6620 <= 30)
  {
    if (dword_1002F6620 != -1 || (v5 = _LogCategory_Initialize(), deviceCopy = v6, v5))
    {
      sub_1001DAAAC(deviceCopy);
      deviceCopy = v6;
    }
  }

  [(AALowBatteryAlertDaemon *)self _showAlertForLowBatteryDevice_iOS:deviceCopy];
  [v6 setReportTime:CFAbsoluteTimeGetCurrent()];
  [(AALowBatteryAlertDaemon *)self _lowBatteryDeviceUpdated:v6];
  [(AALowBatteryAlertDaemon *)self _persistLowBatteryDevicesWithUrgency:1];
}

- (void)_showAlertForLowBatteryDevice_iOS:(id)s
{
  sCopy = s;
  [sCopy lastBatteryLevel];
  v6 = v5;
  lastBatteryType = [sCopy lastBatteryType];
  color = [sCopy color];
  name = [sCopy name];
  productID = [sCopy productID];

  v11 = objc_alloc_init(BTBannerUISession);
  dispatchQueue = [(AALowBatteryAlertDaemon *)self dispatchQueue];
  [v11 setDispatchQueue:dispatchQueue];

  [v11 setLowBatteryLevel:v6];
  [v11 setTimeoutSeconds:4.0];
  [(AALowBatteryAlertDaemon *)self setLowBatteryBannerIOS:v11];
  v13 = lastBatteryType == 1;
  if (lastBatteryType == 1)
  {
    v14 = @"AirPods Case";
  }

  else
  {
    v14 = name;
  }

  v15 = [AAAssetHelper bluetoothProductIDToAsset:productID withColor:color isCase:v13];
  [v11 setCenterContentText:v14];
  [v11 setLeadingAccessoryImageName:v15];
  [v11 setCenterContentItemsIcon:@"LowBattery"];
  v16 = objc_alloc_init(NSNumberFormatter);
  [v16 setNumberStyle:3];
  [v16 setMaximumFractionDigits:0];
  v17 = [NSNumber numberWithDouble:v6];
  v18 = [v16 stringFromNumber:v17];
  [v11 setCenterContentItemsText:v18];

  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10003635C;
  v19[3] = &unk_1002B7430;
  v19[4] = v11;
  v19[5] = self;
  [v11 setActionHandler:v19];
  [v11 activate];
}

- (void)showLowBatteryBannerIfNeededForDevice:(id)device withType:(unsigned __int8)type completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  dispatchQueue = [(AALowBatteryAlertDaemon *)self dispatchQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000364F8;
  v13[3] = &unk_1002B7AF0;
  v13[4] = self;
  v14 = deviceCopy;
  typeCopy = type;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = deviceCopy;
  dispatch_async(dispatchQueue, v13);
}

- (void)_updateCurrentLowBatteryDevicesWithBatteryInfo:(id)info
{
  infoCopy = info;
  v5 = infoCopy;
  if (infoCopy && [infoCopy count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    v22 = v5;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v23 + 1) + 8 * i);
          batteryMain = [v11 batteryMain];

          if (batteryMain)
          {
            batteryMain2 = [v11 batteryMain];
            v28 = batteryMain2;
            v14 = [NSArray arrayWithObjects:&v28 count:1];
            [(AALowBatteryAlertDaemon *)self _checkLowBatteryStatus:v11 withType:2 batteries:v14];
          }

          else
          {
            batteryCase = [v11 batteryCase];

            if (batteryCase)
            {
              batteryCase2 = [v11 batteryCase];
              v27 = batteryCase2;
              v17 = [NSArray arrayWithObjects:&v27 count:1];
              [(AALowBatteryAlertDaemon *)self _checkLowBatteryStatus:v11 withType:1 batteries:v17];
            }

            batteryMain2 = objc_alloc_init(NSMutableArray);
            batteryLeft = [v11 batteryLeft];

            if (batteryLeft)
            {
              batteryLeft2 = [v11 batteryLeft];
              [batteryMain2 addObject:batteryLeft2];
            }

            batteryRight = [v11 batteryRight];

            if (batteryRight)
            {
              batteryRight2 = [v11 batteryRight];
              [batteryMain2 addObject:batteryRight2];
            }

            if ([batteryMain2 count])
            {
              [(AALowBatteryAlertDaemon *)self _checkLowBatteryStatus:v11 withType:0 batteries:batteryMain2];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v29 count:16];
      }

      while (v8);
    }

    v5 = v22;
  }

  else
  {
    sub_1001DAC90();
  }
}

- (void)_clearLowBatteryDevicesWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [AALowBatteryDevice trackerKeyForIdentifier:identifierCopy andType:0];
  lowBatteryDeviceMap = [(AALowBatteryAlertDaemon *)self lowBatteryDeviceMap];
  [lowBatteryDeviceMap setObject:0 forKeyedSubscript:v5];

  v7 = [AALowBatteryDevice trackerKeyForIdentifier:identifierCopy andType:2];

  lowBatteryDeviceMap2 = [(AALowBatteryAlertDaemon *)self lowBatteryDeviceMap];
  [lowBatteryDeviceMap2 setObject:0 forKeyedSubscript:v7];

  v10 = [AALowBatteryDevice trackerKeyForIdentifier:identifierCopy andType:1];

  lowBatteryDeviceMap3 = [(AALowBatteryAlertDaemon *)self lowBatteryDeviceMap];
  [lowBatteryDeviceMap3 setObject:0 forKeyedSubscript:v10];
}

- (void)_loadPersistedLowBatteryDevices
{
  selfCopy = self;
  if (![(AALowBatteryAlertDaemon *)self lowBatteryInfoFromPrefsLoaded])
  {
    lowBatteryDeviceMap = [(AALowBatteryAlertDaemon *)selfCopy lowBatteryDeviceMap];

    if (!lowBatteryDeviceMap)
    {
      v4 = objc_alloc_init(NSMutableDictionary);
      [(AALowBatteryAlertDaemon *)selfCopy setLowBatteryDeviceMap:v4];
    }

    CFArrayGetTypeID();
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = CFPrefs_CopyTypedValue();
    v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v19;
      do
      {
        v9 = 0;
        do
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v18 + 1) + 8 * v9);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            CFStringGetTypeID();
            v11 = CFDictionaryGetTypedValue();
            if (v11)
            {
              v12 = [[AALowBatteryDevice alloc] initWithDictFromPrefs:v10];
              v13 = selfCopy;
              lowBatteryDeviceMap2 = [(AALowBatteryAlertDaemon *)selfCopy lowBatteryDeviceMap];
              trackerKey = [(AALowBatteryDevice *)v12 trackerKey];
              [lowBatteryDeviceMap2 setObject:v12 forKeyedSubscript:trackerKey];

              if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
              {
                sub_1001DACF0(v12);
              }

              ++v7;

              selfCopy = v13;
            }
          }

          v9 = v9 + 1;
        }

        while (v6 != v9);
        v16 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
        v6 = v16;
      }

      while (v16);
    }

    [(AALowBatteryAlertDaemon *)selfCopy setLowBatteryInfoFromPrefsLoaded:1];
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DADB8();
    }
  }
}

- (void)_lowBatteryDeviceUpdated:(id)updated
{
  updatedCopy = updated;
  [(AALowBatteryAlertDaemon *)self _loadPersistedLowBatteryDevices];
  lowBatteryDeviceMap = [(AALowBatteryAlertDaemon *)self lowBatteryDeviceMap];
  trackerKey = [updatedCopy trackerKey];
  [lowBatteryDeviceMap setObject:updatedCopy forKeyedSubscript:trackerKey];

  [(AALowBatteryAlertDaemon *)self _persistLowBatteryDevicesWithUrgency:0];
}

- (void)_persistLowBatteryDevicesWithUrgency:(BOOL)urgency
{
  if (urgency)
  {
    lowBatterySaveTimer = self->_lowBatterySaveTimer;
    if (lowBatterySaveTimer)
    {
      v5 = lowBatterySaveTimer;
      dispatch_source_cancel(v5);
      v6 = self->_lowBatterySaveTimer;
      self->_lowBatterySaveTimer = 0;
    }

    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    lowBatteryDeviceMap = [(AALowBatteryAlertDaemon *)self lowBatteryDeviceMap];
    allValues = [lowBatteryDeviceMap allValues];

    v9 = [allValues countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v27;
      while (1)
      {
        v13 = 0;
        do
        {
          if (*v27 != v12)
          {
            objc_enumerationMutation(allValues);
          }

          v14 = *(*(&v26 + 1) + 8 * v13);
          v15 = [(AALowBatteryAlertDaemon *)self systemPowerMonitor:v24];
          firstUnlocked = [v15 firstUnlocked];

          if (!firstUnlocked || (-[AALowBatteryAlertDaemon pairedDeviceManager](self, "pairedDeviceManager"), v17 = objc_claimAutoreleasedReturnValue(), [v14 deviceAddress], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isDevicePairedWithBluetoothAddress:", v18), v18, v17, (v19 & 1) != 0))
          {
            toPrefsDict = [v14 toPrefsDict];
            if (!v11)
            {
              v11 = objc_alloc_init(NSMutableArray);
            }

            [v11 addObject:toPrefsDict];
            goto LABEL_14;
          }

          if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
          {
            toPrefsDict = [v14 identifier];
            v24 = toPrefsDict;
            v25 = v14;
            LogPrintF();
LABEL_14:
          }

          v13 = v13 + 1;
        }

        while (v10 != v13);
        v21 = [allValues countByEnumeratingWithState:&v26 objects:v31 count:16];
        v10 = v21;
        if (!v21)
        {
          goto LABEL_30;
        }
      }
    }

    v11 = 0;
LABEL_30:

    CFPrefs_SetValue();
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DAE40(v11);
    }
  }

  else
  {
    lowBatterySaveTimer = [(AALowBatteryAlertDaemon *)self lowBatterySaveTimer];

    if (lowBatterySaveTimer)
    {
      return;
    }

    dispatchQueue = [(AALowBatteryAlertDaemon *)self dispatchQueue];
    v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, dispatchQueue);

    [(AALowBatteryAlertDaemon *)self setLowBatterySaveTimer:v11];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000375D4;
    handler[3] = &unk_1002B6880;
    handler[4] = self;
    dispatch_source_set_event_handler(v11, handler);
    [(AALowBatteryAlertDaemon *)self prefLowBatterySaveSeconds];
    CUDispatchTimerSet();
    dispatch_activate(v11);
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DADF8(self);
    }
  }
}

- (void)_chargingCompleteWithBatteryInfo:(id)info
{
  infoCopy = info;
  if ([(AALowBatteryAlertDaemon *)self _trackChargingCompleteWithBatteryInfo:infoCopy])
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DAEC4();
    }

    v5 = [(AALowBatteryAlertDaemon *)self _notificationContentForChargingNotificationWithType:2 batteryInfo:infoCopy];
    unCenter = [(AALowBatteryAlertDaemon *)self unCenter];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10003772C;
    v7[3] = &unk_1002B7B40;
    v7[4] = self;
    v8 = infoCopy;
    [unCenter deliverNotificationWithContent:v5 completion:v7];
  }

  else if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DAE84();
  }
}

- (void)_checkChargingCompleteNotificationWithUpdatedBatteryInfo:(id)info
{
  infoCopy = info;
  prefCaseBatteryNotificationsEnabled = [(AALowBatteryAlertDaemon *)self prefCaseBatteryNotificationsEnabled];
  v5 = infoCopy;
  if (prefCaseBatteryNotificationsEnabled)
  {
    identifier = [infoCopy identifier];
    batteryCase = [infoCopy batteryCase];

    if (batteryCase)
    {
      if ([(AALowBatteryAlertDaemon *)self _chargingNotificationEnabledForDeviceWithIdentifier:identifier])
      {
        if ([infoCopy caseWithBudsChargingComplete])
        {
          if ([infoCopy isConnected])
          {
            sub_1001DB130(dword_1002F6620 < 31, dword_1002F6620);
          }

          else
          {
            if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
            {
              sub_1001DB0B0();
            }

            if ([(AALowBatteryAlertDaemon *)self _checkChargingReachedComplete:infoCopy])
            {
              [(AALowBatteryAlertDaemon *)self _chargingCompleteWithBatteryInfo:infoCopy];
            }

            else if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
            {
              sub_1001DB0F0();
            }
          }
        }

        else
        {
          if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
          {
            sub_1001DB070();
          }

          [(AALowBatteryAlertDaemon *)self _dismissChargingCompleteNotificationWithBatteryInfo:infoCopy];
        }
      }

      else
      {
        sub_1001DAFF8();
      }
    }

    else
    {
      sub_1001DB1A0();
    }

    v5 = infoCopy;
  }

  _objc_release_x1(prefCaseBatteryNotificationsEnabled, v5);
}

- (BOOL)_checkChargingReachedComplete:(id)complete
{
  completeCopy = complete;
  identifier = [completeCopy identifier];
  v6 = [(AALowBatteryAlertDaemon *)self _lastSeenBatteryInfoWithIdentifier:identifier];

  if (v6)
  {
    nonStaleBatteries = [v6 nonStaleBatteries];
    if ([nonStaleBatteries count])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = nonStaleBatteries;
      v8 = nonStaleBatteries;
      v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v23;
LABEL_5:
        v12 = 0;
        while (1)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * v12);
          v14 = [completeCopy batteryForType:{objc_msgSend(v13, "type")}];
          if (v14)
          {
            [v13 level];
            v16 = v15;
            [v14 level];
            if (v16 < v17)
            {
              if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
              {
                sub_1001DB200();
              }

              v19 = 1;
              goto LABEL_33;
            }

            if (dword_1002F6620 > 30 || dword_1002F6620 == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_17;
            }
          }

          else if (dword_1002F6620 > 30 || dword_1002F6620 == -1 && !_LogCategory_Initialize())
          {
            goto LABEL_17;
          }

          sub_1001DB240();
LABEL_17:

          if (v10 == ++v12)
          {
            v18 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
            v10 = v18;
            if (v18)
            {
              goto LABEL_5;
            }

            break;
          }
        }
      }

      v19 = 0;
LABEL_33:
      nonStaleBatteries = v21;
    }

    else
    {
      CFAbsoluteTimeGetCurrent();
      if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v19 = 1;
    }
  }

  else
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DB27C();
    }

    v19 = 1;
  }

  return v19;
}

- (void)_dismissChargingCompleteNotificationWithBatteryInfo:(id)info
{
  infoCopy = info;
  identifier = [infoCopy identifier];
  v5 = [(AALowBatteryAlertDaemon *)self _notificationWithIdentifier:identifier andType:2];

  if (v5)
  {
    if ([v5 cleared])
    {
      sub_1001DB354(dword_1002F6620 < 31, dword_1002F6620, infoCopy);
    }

    else
    {
      if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
      {
        sub_1001DB298();
      }

      batteryCase = [infoCopy batteryCase];
      fullyCharged = [batteryCase fullyCharged];

      batteryCase2 = [infoCopy batteryCase];
      charging = [batteryCase2 charging];

      v10 = 8;
      if (charging)
      {
        v10 = 6;
      }

      if (fullyCharged)
      {
        v11 = v10;
      }

      else
      {
        v11 = 7;
      }

      if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
      {
        sub_1001DB2D8(infoCopy, v11);
      }

      [(AALowBatteryAlertDaemon *)self _clearNotification:v5 withReason:v11];
    }
  }

  else
  {
    sub_1001DB3F0();
  }
}

- (BOOL)_trackChargingCompleteWithBatteryInfo:(id)info
{
  infoCopy = info;
  identifier = [infoCopy identifier];
  v6 = [(AALowBatteryAlertDaemon *)self _notificationWithIdentifier:identifier andType:2];
  v7 = v6;
  if (v6 && ![(AAChargingNotificationTracker *)v6 cleared])
  {
    v10 = 0;
    v8 = v7;
  }

  else
  {
    v8 = objc_alloc_init(AAChargingNotificationTracker);

    [(AAChargingNotificationTracker *)v8 setType:2];
    [(AAChargingNotificationTracker *)v8 setIdentifier:identifier];
    bluetoothAddress = [infoCopy bluetoothAddress];
    [(AAChargingNotificationTracker *)v8 setDeviceAddress:bluetoothAddress];

    -[AAChargingNotificationTracker setProductID:](v8, "setProductID:", [infoCopy productID]);
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DB494();
    }

    v10 = 1;
  }

  [(AAChargingNotificationTracker *)v8 setLastSeenTime:CFAbsoluteTimeGetCurrent()];
  [(AALowBatteryAlertDaemon *)self _chargingNotificationUpdated:v8];

  return v10;
}

- (void)_checkShouldClearChargingReminderWithUpdatedBatteryInfo:(id)info
{
  infoCopy = info;
  if ([(AALowBatteryAlertDaemon *)self prefCaseBatteryNotificationsEnabled])
  {
    [(AALowBatteryAlertDaemon *)self _loadNotificationsFromPref];
    identifier = [infoCopy identifier];
    batteryCase = [infoCopy batteryCase];

    if (!batteryCase)
    {
      sub_1001DB654();
      goto LABEL_26;
    }

    v6 = [(AALowBatteryAlertDaemon *)self _notificationWithIdentifier:identifier andType:1];
    v7 = v6;
    if (v6)
    {
      if (![v6 cleared])
      {
        batteryCase2 = [infoCopy batteryCase];
        charging = [batteryCase2 charging];

        if (!charging)
        {
          v18 = 0;
          goto LABEL_17;
        }

        v10 = [(AALowBatteryAlertDaemon *)self _lastSeenBatteryInfoWithIdentifier:identifier];
        v11 = v10;
        if (!v10)
        {
          goto LABEL_9;
        }

        batteryCase3 = [v10 batteryCase];
        if (!batteryCase3 || (v13 = batteryCase3, [v11 batteryCase], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "stale"), v14, v13, (v15 & 1) == 0))
        {
LABEL_9:
          batteryCase4 = [v11 batteryCase];
          charging2 = [batteryCase4 charging];

          if (!charging2)
          {
            v18 = 3;
            goto LABEL_16;
          }

          if (dword_1002F6620 <= 90 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
          {
            sub_1001DB4D4();
          }
        }

        v18 = 4;
LABEL_16:

LABEL_17:
        batteryCase5 = [infoCopy batteryCase];
        [batteryCase5 level];
        v21 = v20;
        [v7 reportBatteryLevel];
        v23 = v22;

        if (v21 <= v23)
        {
          v24 = v18;
        }

        else
        {
          v24 = 5;
        }

        if ((v21 > v23) | charging & 1)
        {
          if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
          {
            sub_1001DB51C(infoCopy, v24);
          }

          [(AALowBatteryAlertDaemon *)self _clearNotification:v7 withReason:v24];
        }

        goto LABEL_25;
      }

      sub_1001DB594();
    }

    else
    {
      sub_1001DB5F4();
    }

LABEL_25:

LABEL_26:
  }
}

- (void)_shouldPostChargingReminderForLowBatteryCaseWithBatteryInfo:(id)info
{
  infoCopy = info;
  identifier = [infoCopy identifier];
  v6 = [(AALowBatteryAlertDaemon *)self _chargingNotificationEnabledForDeviceWithIdentifier:identifier];

  if ((v6 & 1) == 0)
  {
    sub_1001DB6B4();
    goto LABEL_25;
  }

  v7 = [(AALowBatteryAlertDaemon *)self _trackChargingReminderWithBatteryInfo:infoCopy];
  [v7 reportTime];
  if (v8 == 0.0)
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DB8E4();
    }

    v9 = [(AALowBatteryAlertDaemon *)self _notificationContentForChargingNotificationWithType:1 batteryInfo:infoCopy];
    unCenter = [(AALowBatteryAlertDaemon *)self unCenter];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100038578;
    v14[3] = &unk_1002B7B40;
    v14[4] = self;
    v15 = infoCopy;
    [unCenter deliverNotificationWithContent:v9 completion:v14];
  }

  else
  {
    [v7 reportTime];
    v12 = v11;
    [(AALowBatteryAlertDaemon *)self prefChargingReminderRepeatBackoffInterval];
    if (CFAbsoluteTimeGetCurrent() <= v12 + v13)
    {
      if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
      {
        sub_1001DB72C(self);
      }
    }

    else
    {
      [(AALowBatteryAlertDaemon *)self prefChargingReminderRepeatLastConnectedInterval];
      if ([infoCopy wasConnectedInLast:?])
      {
        if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
        {
          sub_1001DB834(self);
        }

        [(AALowBatteryAlertDaemon *)self _clearNotification:v7 withReason:12];
        if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
        {
          sub_1001DB8A4();
        }

        [(AALowBatteryAlertDaemon *)self _shouldPostChargingReminderForLowBatteryCaseWithBatteryInfo:infoCopy];
        goto LABEL_24;
      }

      if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
      {
        sub_1001DB7C4(self);
      }
    }

    [(AALowBatteryAlertDaemon *)self _backoffChargingReminderForBatteryInfo:infoCopy];
  }

LABEL_24:

LABEL_25:
}

- (id)_trackChargingReminderWithBatteryInfo:(id)info
{
  infoCopy = info;
  identifier = [infoCopy identifier];
  batteryCase = [infoCopy batteryCase];
  [batteryCase level];
  v8 = v7;

  v9 = [(AALowBatteryAlertDaemon *)self _notificationWithIdentifier:identifier andType:1];
  v10 = v9;
  if (v9 && ![(AAChargingNotificationTracker *)v9 cleared])
  {
    v11 = v10;
  }

  else
  {
    v11 = objc_alloc_init(AAChargingNotificationTracker);

    [(AAChargingNotificationTracker *)v11 setType:1];
    [(AAChargingNotificationTracker *)v11 setIdentifier:identifier];
    bluetoothAddress = [infoCopy bluetoothAddress];
    [(AAChargingNotificationTracker *)v11 setDeviceAddress:bluetoothAddress];

    -[AAChargingNotificationTracker setProductID:](v11, "setProductID:", [infoCopy productID]);
    [(AAChargingNotificationTracker *)v11 setReportBatteryLevel:v8];
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DBA18();
    }

    [(AALowBatteryAlertDaemon *)self _chargingNotificationUpdated:v11];
  }

  v13 = v11;

  return v13;
}

- (void)_triggerChargingReminderCheck
{
  if ([(AALowBatteryAlertDaemon *)self prefCaseBatteryNotificationsEnabled])
  {
    if ([(AALowBatteryAlertDaemon *)self _isUserInVehicle])
    {
      if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
      {
        sub_1001DBB44();
      }
    }

    else
    {
      [(AALowBatteryAlertDaemon *)self _loadNotificationsFromPref];
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      batteryMonitor = [(AALowBatteryAlertDaemon *)self batteryMonitor];
      devices = [batteryMonitor devices];

      v5 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v14;
        do
        {
          v8 = 0;
          do
          {
            if (*v14 != v7)
            {
              objc_enumerationMutation(devices);
            }

            v9 = *(*(&v13 + 1) + 8 * v8);
            [(AALowBatteryAlertDaemon *)self _updateLastSeenOnTrackerWithBatteryInfo:v9];
            if ([v9 isConnected])
            {
              if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
              {
                sub_1001DBB10();
              }
            }

            else
            {
              batteryCase = [v9 batteryCase];
              v11 = batteryCase;
              if (batteryCase)
              {
                if ([batteryCase charging])
                {
                  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
                  {
                    sub_1001DBAA8();
                  }
                }

                else if ([v11 isLow])
                {
                  [(AALowBatteryAlertDaemon *)self _shouldPostChargingReminderForLowBatteryCaseWithBatteryInfo:v9];
                }

                else if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
                {
                  sub_1001DBA74();
                }
              }

              else if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
              {
                sub_1001DBADC();
              }
            }

            v8 = v8 + 1;
          }

          while (v6 != v8);
          v12 = [devices countByEnumeratingWithState:&v13 objects:v17 count:16];
          v6 = v12;
        }

        while (v12);
      }
    }
  }

  else if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DBA58();
  }
}

- (BOOL)_chargingNotificationEnabledForDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[AAPairedDeviceDaemon sharedAAPairedDeviceDaemon];
  v5 = [v4 deviceWithIdentifier:identifierCopy];

  v6 = [v5 chargingReminderCapability] == 2 && objc_msgSend(v5, "chargingReminderEnabled") == 1;
  return v6;
}

- (void)_chargingNotificationReset
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  chargingNotificationMap = [(AALowBatteryAlertDaemon *)self chargingNotificationMap];
  allValues = [chargingNotificationMap allValues];

  v5 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(allValues);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (([v9 cleared] & 1) == 0)
        {
          [(AALowBatteryAlertDaemon *)self _clearNotification:v9 withReason:11];
        }
      }

      v6 = [allValues countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  CFPrefs_RemoveValue();
  [(AALowBatteryAlertDaemon *)self setChargingNotificationMap:0];
  [(AALowBatteryAlertDaemon *)self setChargingNotificationsFromPrefsLoaded:0];
  [(AALowBatteryAlertDaemon *)self _loadPreferences];
}

- (void)_clearAllNotificationWithIdentifier:(id)identifier reason:(int64_t)reason
{
  identifierCopy = identifier;
  v6 = [AALowBatteryAlertDaemon _notificationWithIdentifier:"_notificationWithIdentifier:andType:" andType:?];
  if (v6)
  {
    [(AALowBatteryAlertDaemon *)self _clearNotification:v6 withReason:reason];
  }

  v7 = [(AALowBatteryAlertDaemon *)self _notificationWithIdentifier:identifierCopy andType:2];

  if (v7)
  {
    [(AALowBatteryAlertDaemon *)self _clearNotification:v7 withReason:reason];
  }
}

- (void)_clearNotification:(id)notification withReason:(int64_t)reason
{
  notificationCopy = notification;
  if (([notificationCopy posted] & 1) == 0 && dword_1002F6620 <= 90 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DBBFC(notificationCopy, reason);
  }

  [notificationCopy setCleared:1];
  [notificationCopy setClearTime:CFAbsoluteTimeGetCurrent()];
  [notificationCopy lastBatteryLevel];
  [notificationCopy setClearBatteryLevel:?];
  if ([notificationCopy dismissed])
  {
    [(AALowBatteryAlertDaemon *)self _chargingNotificationUpdated:notificationCopy];
  }

  else
  {
    [(AALowBatteryAlertDaemon *)self _dismissNotification:notificationCopy withReason:reason];
  }

  [(AALowBatteryAlertDaemon *)self _reportMetricsForNotificationTracker:notificationCopy];
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DBC88(notificationCopy);
  }
}

- (void)_dismissNotification:(id)notification withReason:(int64_t)reason
{
  notificationCopy = notification;
  [notificationCopy setDismissReason:reason];
  [notificationCopy setDismissTime:CFAbsoluteTimeGetCurrent()];
  [notificationCopy lastBatteryLevel];
  [notificationCopy setDismissBatteryLevel:?];
  [notificationCopy setBackoffCountTillDismiss:{objc_msgSend(notificationCopy, "backoffCount")}];
  unCenter = [(AALowBatteryAlertDaemon *)self unCenter];
  notificationIdentifier = [notificationCopy notificationIdentifier];
  [unCenter dismissUserNotificationWithIdentifier:notificationIdentifier];

  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DBD1C(notificationCopy, reason);
  }

  [(AALowBatteryAlertDaemon *)self _chargingNotificationUpdated:notificationCopy];
}

- (void)_chargingNotificationUpdated:(id)updated
{
  updatedCopy = updated;
  [(AALowBatteryAlertDaemon *)self _loadNotificationsFromPref];
  chargingNotificationMap = [(AALowBatteryAlertDaemon *)self chargingNotificationMap];
  trackerKey = [updatedCopy trackerKey];
  [chargingNotificationMap setObject:updatedCopy forKeyedSubscript:trackerKey];

  [(AALowBatteryAlertDaemon *)self _persistNotificationsToPrefs];
}

- (void)_loadNotificationsFromPref
{
  if (![(AALowBatteryAlertDaemon *)self chargingNotificationsFromPrefsLoaded])
  {
    CFDataGetTypeID();
    v3 = CFPrefs_CopyTypedValue();
    v10[0] = objc_opt_class();
    v10[1] = objc_opt_class();
    v10[2] = objc_opt_class();
    v4 = [NSArray arrayWithObjects:v10 count:3];
    v5 = [NSSet setWithArray:v4];

    v9 = 0;
    v6 = [NSKeyedUnarchiver unarchivedObjectOfClasses:v5 fromData:v3 error:&v9];
    v7 = v9;
    if (v7)
    {
      if (dword_1002F6620 <= 90 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
      {
        sub_1001DBDE0(v7);
      }

      v8 = objc_alloc_init(NSMutableDictionary);
      [(AALowBatteryAlertDaemon *)self setChargingNotificationMap:v8];
    }

    else
    {
      [(AALowBatteryAlertDaemon *)self setChargingNotificationMap:v6];
    }

    [(AALowBatteryAlertDaemon *)self setChargingNotificationsFromPrefsLoaded:1];
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DBE34(self);
    }
  }
}

- (void)_persistNotificationsToPrefs
{
  systemPowerMonitor = [(AALowBatteryAlertDaemon *)self systemPowerMonitor];
  firstUnlocked = [systemPowerMonitor firstUnlocked];

  if (firstUnlocked)
  {
    [(AALowBatteryAlertDaemon *)self _aaPairedDeviceManagerEnsureStarted];
    v5 = +[NSMutableArray array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    chargingNotificationMap = [(AALowBatteryAlertDaemon *)self chargingNotificationMap];
    allValues = [chargingNotificationMap allValues];

    v8 = [allValues countByEnumeratingWithState:&v33 objects:v39 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v34;
      do
      {
        v11 = 0;
        do
        {
          if (*v34 != v10)
          {
            objc_enumerationMutation(allValues);
          }

          v12 = *(*(&v33 + 1) + 8 * v11);
          pairedDeviceManager = [(AALowBatteryAlertDaemon *)self pairedDeviceManager];
          deviceAddress = [v12 deviceAddress];
          v15 = [pairedDeviceManager isDevicePairedWithBluetoothAddress:deviceAddress];

          if ((v15 & 1) == 0)
          {
            trackerKey = [v12 trackerKey];
            [v5 addObject:trackerKey];

            if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
            {
              sub_1001DBEB0(v12);
            }
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v17 = [allValues countByEnumeratingWithState:&v33 objects:v39 count:16];
        v9 = v17;
      }

      while (v17);
    }

    v31 = 0u;
    v32 = 0u;
    v29 = 0u;
    v30 = 0u;
    v18 = v5;
    v19 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v30;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v30 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v29 + 1) + 8 * i);
          chargingNotificationMap2 = [(AALowBatteryAlertDaemon *)self chargingNotificationMap];
          [chargingNotificationMap2 setObject:0 forKeyedSubscript:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v20);
    }
  }

  chargingNotificationMap3 = [(AALowBatteryAlertDaemon *)self chargingNotificationMap];
  v28 = 0;
  v26 = [NSKeyedArchiver archivedDataWithRootObject:chargingNotificationMap3 requiringSecureCoding:1 error:&v28];
  v27 = v28;

  if (v27)
  {
    if (sub_1001DBF0C(v27, self, &v37))
    {
      goto LABEL_27;
    }

    goto LABEL_29;
  }

  CFPrefs_SetValue();
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DBFC8(self, &v37);
LABEL_29:
  }

LABEL_27:
}

- (void)deviceBatteryInfoUpdated:(id)updated
{
  updatedCopy = updated;
  dispatchQueue = [(AALowBatteryAlertDaemon *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000399B4;
  v7[3] = &unk_1002B6D18;
  v8 = updatedCopy;
  selfCopy = self;
  v6 = updatedCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)deviceBatteryInfoLost:(id)lost
{
  lostCopy = lost;
  dispatchQueue = [(AALowBatteryAlertDaemon *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039AFC;
  v7[3] = &unk_1002B6D18;
  v8 = lostCopy;
  selfCopy = self;
  v6 = lostCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_aaPairedDeviceManagerEnsureStarted
{
  pairedDeviceManager = [(AALowBatteryAlertDaemon *)self pairedDeviceManager];
  [pairedDeviceManager subscribeToPairedDiscovery:self];

  pairedDeviceManager2 = [(AALowBatteryAlertDaemon *)self pairedDeviceManager];
  [pairedDeviceManager2 activate];
}

- (void)_aaPairedDeviceManagerEnsureStopped
{
  pairedDeviceManager = [(AALowBatteryAlertDaemon *)self pairedDeviceManager];
  [pairedDeviceManager unsubscribeFromPairedDiscovery:self];
}

- (void)pairedDeviceUpdated:(id)updated
{
  updatedCopy = updated;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039CD4;
  v7[3] = &unk_1002B6D18;
  v8 = updatedCopy;
  selfCopy = self;
  v6 = updatedCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)pairedDeviceLost:(id)lost
{
  lostCopy = lost;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039E24;
  v7[3] = &unk_1002B6D18;
  v8 = lostCopy;
  selfCopy = self;
  v6 = lostCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_powerMonitorEnsureStarted
{
  systemPowerMonitor = [(AALowBatteryAlertDaemon *)self systemPowerMonitor];

  if (!systemPowerMonitor)
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DC16C();
    }

    v4 = objc_alloc_init(CUSystemMonitor);
    [(AALowBatteryAlertDaemon *)self setSystemPowerMonitor:v4];
    dispatchQueue = [(AALowBatteryAlertDaemon *)self dispatchQueue];
    [v4 setDispatchQueue:dispatchQueue];

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10003A064;
    v7[3] = &unk_1002B6D18;
    v7[4] = v4;
    v7[5] = self;
    v6 = objc_retainBlock(v7);
    [v4 setScreenOnChangedHandler:v6];
    [v4 setScreenStateChangedHandler:v6];
    [v4 setScreenLockedChangedHandler:v6];
    [v4 setFirstUnlockHandler:v6];
    [v4 setScreenLockedChangedHandler:v6];
    [v4 setPowerUnlimitedChangedHandler:v6];
    [v4 activateWithCompletion:v6];
  }
}

- (void)_powerMonitorEnsureStopped
{
  systemPowerMonitor = [(AALowBatteryAlertDaemon *)self systemPowerMonitor];

  if (systemPowerMonitor)
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DC188();
    }

    systemPowerMonitor2 = [(AALowBatteryAlertDaemon *)self systemPowerMonitor];
    [systemPowerMonitor2 invalidate];

    [(AALowBatteryAlertDaemon *)self setSystemPowerMonitor:0];
  }
}

- (void)_powerMonitorStateChanged
{
  [(AALowBatteryAlertDaemon *)self _loadPreferences];
  if ([(AALowBatteryAlertDaemon *)self _updateSystemEffectiveScreenLocked]&& ![(AALowBatteryAlertDaemon *)self systemEffectiveScreenLocked])
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DC1A4();
    }

    [(AALowBatteryAlertDaemon *)self _checkForLowBattery];
  }

  if ([(AALowBatteryAlertDaemon *)self _updateSystemCharging])
  {
    if ([(AALowBatteryAlertDaemon *)self systemIsCharging])
    {
      [(AALowBatteryAlertDaemon *)self _triggerChargingReminderCheck];
      if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
      {
        sub_1001DC1C0();
      }
    }
  }

  if (![(AALowBatteryAlertDaemon *)self systemFirstUnlocked])
  {
    systemPowerMonitor = [(AALowBatteryAlertDaemon *)self systemPowerMonitor];
    firstUnlocked = [systemPowerMonitor firstUnlocked];

    if (firstUnlocked)
    {
      if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
      {
        sub_1001DC1DC();
      }

      [(AALowBatteryAlertDaemon *)self setSystemFirstUnlocked:1];

      [(AALowBatteryAlertDaemon *)self _actionsOnFirstUnlock];
    }
  }
}

- (BOOL)_updateSystemCharging
{
  systemPowerMonitor = [(AALowBatteryAlertDaemon *)self systemPowerMonitor];
  powerUnlimited = [systemPowerMonitor powerUnlimited];

  v5 = powerUnlimited ^ [(AALowBatteryAlertDaemon *)self systemIsCharging];
  if (v5 == 1)
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DC1F8(self);
    }

    [(AALowBatteryAlertDaemon *)self setSystemIsCharging:powerUnlimited];
  }

  return v5;
}

- (BOOL)_updateSystemEffectiveScreenLocked
{
  systemEffectiveScreenLocked = [(AALowBatteryAlertDaemon *)self systemEffectiveScreenLocked];
  systemPowerMonitor = [(AALowBatteryAlertDaemon *)self systemPowerMonitor];
  screenActive = [systemPowerMonitor screenActive];

  if ((screenActive & 1) == 0)
  {
    if (![(AALowBatteryAlertDaemon *)self systemEffectiveScreenLocked])
    {
      v8 = 1;
      goto LABEL_7;
    }

    return 0;
  }

  systemPowerMonitor2 = [(AALowBatteryAlertDaemon *)self systemPowerMonitor];
  screenLocked = [systemPowerMonitor2 screenLocked];

  v8 = screenLocked & systemEffectiveScreenLocked;
  if (v8 == [(AALowBatteryAlertDaemon *)self systemEffectiveScreenLocked])
  {
    return 0;
  }

LABEL_7:
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DC268(self);
  }

  [(AALowBatteryAlertDaemon *)self setSystemEffectiveScreenLocked:v8];
  return 1;
}

- (void)_loadPreferences
{
  v3 = CFPrefs_GetInt64() != 0;
  if (v3 != [(AALowBatteryAlertDaemon *)self prefLowBatteryEnabled])
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DC2D8();
    }

    [(AALowBatteryAlertDaemon *)self setPrefLowBatteryEnabled:v3];
  }

  CFPrefs_GetDouble();
  v5 = v4;
  [(AALowBatteryAlertDaemon *)self prefLowBatteryForceLevel];
  if (v5 != v6)
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DC334(self);
    }

    [(AALowBatteryAlertDaemon *)self setPrefLowBatteryForceLevel:v5];
  }

  CFPrefs_GetDouble();
  if (v7 >= 5.0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1800.0;
  }

  [(AALowBatteryAlertDaemon *)self prefLowBatterySaveSeconds];
  if (v8 != v9)
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DC384(self);
    }

    [(AALowBatteryAlertDaemon *)self setPrefLowBatterySaveSeconds:v8];
  }

  CFPrefs_GetDouble();
  if (v10 >= 5.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 57600.0;
  }

  [(AALowBatteryAlertDaemon *)self prefLowBatteryStaleSeconds];
  if (v11 != v12)
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DC3D4(self);
    }

    [(AALowBatteryAlertDaemon *)self setPrefLowBatteryStaleSeconds:v11];
  }

  v13 = CFPrefs_GetInt64() != 0;
  if (v13 != [(AALowBatteryAlertDaemon *)self prefCaseBatteryNotificationsEnabled])
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DC424();
    }

    [(AALowBatteryAlertDaemon *)self setPrefCaseBatteryNotificationsEnabled:v13];
  }

  CFPrefs_GetDouble();
  if (v14 >= 5.0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 64800.0;
  }

  [(AALowBatteryAlertDaemon *)self prefChargingReminderRepeatBackoffInterval];
  if (v15 != v16)
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DC480(self);
    }

    [(AALowBatteryAlertDaemon *)self setPrefChargingReminderRepeatBackoffInterval:v15];
  }

  CFPrefs_GetDouble();
  if (v17 >= 5.0)
  {
    v18 = v17;
  }

  else
  {
    v18 = 172800.0;
  }

  [(AALowBatteryAlertDaemon *)self prefChargingReminderRepeatLastConnectedInterval];
  if (v18 != v19)
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DC4D0(self);
    }

    [(AALowBatteryAlertDaemon *)self setPrefChargingReminderRepeatLastConnectedInterval:v18];
  }
}

- (void)_registerForSystemNotifications
{
  if ([(AALowBatteryAlertDaemon *)self prefsChangedNotifyToken]== -1)
  {
    dispatchQueue = [(AALowBatteryAlertDaemon *)self dispatchQueue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10003AA30;
    handler[3] = &unk_1002B6DF0;
    handler[4] = self;
    notify_register_dispatch("com.apple.AudioAccessory.prefsChanged", &self->_prefsChangedNotifyToken, dispatchQueue, handler);
  }

  if ([(AALowBatteryAlertDaemon *)self lowBatteryResetNotifyToken]== -1)
  {
    dispatchQueue = self->_dispatchQueue;
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10003AA98;
    v9[3] = &unk_1002B6DF0;
    v9[4] = self;
    notify_register_dispatch("com.apple.AudioAccessory.lowBatteryReset", &self->_lowBatteryResetNotifyToken, dispatchQueue, v9);
  }

  if ([(AALowBatteryAlertDaemon *)self chargingNotificationsResetNotifyToken]== -1)
  {
    v5 = self->_dispatchQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10003AB00;
    v8[3] = &unk_1002B6DF0;
    v8[4] = self;
    notify_register_dispatch("com.apple.AudioAccessory.chargingReminderReset", &self->_chargingNotificationsResetNotifyToken, v5, v8);
  }

  if ([(AALowBatteryAlertDaemon *)self chargingNotificationsTriggerNotifyToken]== -1)
  {
    v6 = self->_dispatchQueue;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10003AB68;
    v7[3] = &unk_1002B6DF0;
    v7[4] = self;
    notify_register_dispatch("com.apple.AudioAccessory.chargingReminderTrigger", &self->_chargingNotificationsTriggerNotifyToken, v6, v7);
  }
}

- (void)_unregisterFromSystemNotifications
{
  prefsChangedNotifyToken = self->_prefsChangedNotifyToken;
  if (prefsChangedNotifyToken != -1)
  {
    notify_cancel(prefsChangedNotifyToken);
    self->_prefsChangedNotifyToken = -1;
  }

  lowBatteryResetNotifyToken = self->_lowBatteryResetNotifyToken;
  if (lowBatteryResetNotifyToken != -1)
  {
    notify_cancel(lowBatteryResetNotifyToken);
    self->_lowBatteryResetNotifyToken = -1;
  }

  chargingNotificationsResetNotifyToken = self->_chargingNotificationsResetNotifyToken;
  if (chargingNotificationsResetNotifyToken != -1)
  {
    notify_cancel(chargingNotificationsResetNotifyToken);
    self->_chargingNotificationsResetNotifyToken = -1;
  }

  chargingNotificationsTriggerNotifyToken = self->_chargingNotificationsTriggerNotifyToken;
  if (chargingNotificationsTriggerNotifyToken != -1)
  {
    notify_cancel(chargingNotificationsTriggerNotifyToken);
    self->_chargingNotificationsTriggerNotifyToken = -1;
  }
}

- (void)_systemUIMonitorEnsureStarted
{
  systemUIMonitor = [(AALowBatteryAlertDaemon *)self systemUIMonitor];

  if (!systemUIMonitor)
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DC590();
    }

    v4 = +[FBSDisplayLayoutMonitorConfiguration configurationForDefaultMainDisplayMonitor];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100002F8C;
    v7[3] = &unk_1002B7B90;
    v7[4] = self;
    [v4 setTransitionHandler:v7];
    v5 = [FBSDisplayLayoutMonitor monitorWithConfiguration:v4];
    systemUIMonitor = self->_systemUIMonitor;
    self->_systemUIMonitor = v5;
  }
}

- (void)_systemUIMonitorEnsureStopped
{
  if (self->_systemUIMonitor)
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DC5AC();
    }

    [(FBSDisplayLayoutMonitor *)self->_systemUIMonitor invalidate];
    systemUIMonitor = self->_systemUIMonitor;
    self->_systemUIMonitor = 0;
  }
}

- (void)_systemUIUpdatedWithLayout:(id)layout
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  elements = [layout elements];
  v5 = [elements countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = 0;
    v8 = *v13;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v8)
        {
          objc_enumerationMutation(elements);
        }

        identifier = [*(*(&v12 + 1) + 8 * i) identifier];
        v11 = identifier;
        if (identifier)
        {
          v7 |= [identifier isEqual:@"com.apple.HeadphoneProxService"];
        }
      }

      v6 = [elements countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  if ((v7 & 1) != [(AALowBatteryAlertDaemon *)self systemUIProxCardPresent])
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DC5C8();
    }

    [(AALowBatteryAlertDaemon *)self setSystemUIProxCardPresent:v7 & 1];
    if ((v7 & 1) == 0)
    {
      [(AALowBatteryAlertDaemon *)self _checkForLowBattery];
    }
  }
}

- (void)receivedNotificationResponse:(id)response forRequest:(id)request
{
  responseCopy = response;
  requestCopy = request;
  dispatchQueue = [(AALowBatteryAlertDaemon *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B284;
  block[3] = &unk_1002B6CF0;
  v12 = responseCopy;
  v13 = requestCopy;
  selfCopy = self;
  v9 = requestCopy;
  v10 = responseCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_userNotificationCenterEnsureStarted
{
  v3 = +[AAUserNotificationCenter sharedInstance];
  [v3 activate];

  v4 = +[AAUserNotificationCenter sharedInstance];
  [(AALowBatteryAlertDaemon *)self setUnCenter:v4];

  v5 = [UNNotificationCategory categoryWithIdentifier:@"AAChargingNotificationUserNotifications" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:1];
  unCenter = [(AALowBatteryAlertDaemon *)self unCenter];
  v8 = v5;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [unCenter registerNotificationCategories:v7 responseDelegate:self];
}

- (void)_userNotificationCenterEnsureStopped
{
  unCenter = [(AALowBatteryAlertDaemon *)self unCenter];
  [unCenter deregisterNotificationCategoryWithIdentifiers:&off_1002CC120];

  [(AALowBatteryAlertDaemon *)self setUnCenter:0];
}

- (void)_reportMetricsForNotificationTracker:(id)tracker
{
  trackerCopy = tracker;
  if ([trackerCopy type] == 1)
  {
    [(AALowBatteryAlertDaemon *)self _reportChargingReminderMetricWithTracker:trackerCopy];
  }

  else if ([trackerCopy type] == 2)
  {
    [(AALowBatteryAlertDaemon *)self _reportChargingCompleteMetricWithTracker:trackerCopy];
  }
}

- (void)_reportChargingReminderMetricWithTracker:(id)tracker
{
  trackerCopy = tracker;
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [trackerCopy dismissReason]);
  [v3 setObject:v4 forKeyedSubscript:@"dismissReason"];

  v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [trackerCopy productID]);
  [v3 setObject:v5 forKeyedSubscript:@"productID"];

  [trackerCopy reportBatteryLevel];
  v6 = [NSNumber numberWithDouble:?];
  [v3 setObject:v6 forKeyedSubscript:@"triggeredWithBatteryLevel"];

  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [trackerCopy reportedHour]);
  [v3 setObject:v7 forKeyedSubscript:@"reportedHour"];

  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [trackerCopy reportedWeekday]);
  [v3 setObject:v8 forKeyedSubscript:@"reportedWeekday"];

  if ([trackerCopy cleared])
  {
    v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [trackerCopy backoffCount]);
    [v3 setObject:v9 forKeyedSubscript:@"numOfBackOffOnClear"];

    v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [trackerCopy backoffCountTillDismiss]);
    [v3 setObject:v10 forKeyedSubscript:@"numOfBackOffOnDismiss"];

    [trackerCopy dismissBatteryLevel];
    v11 = [NSNumber numberWithDouble:?];
    [v3 setObject:v11 forKeyedSubscript:@"dismissedWithBatteryLevel"];

    [trackerCopy clearBatteryLevel];
    v12 = [NSNumber numberWithDouble:?];
    [v3 setObject:v12 forKeyedSubscript:@"clearedWithBatteryLevel"];

    [trackerCopy durationTillDismissed];
    v13 = [NSNumber numberWithDouble:?];
    [v3 setObject:v13 forKeyedSubscript:@"durationUntilDismiss"];

    [trackerCopy durationTillCleared];
    v14 = [NSNumber numberWithDouble:?];
    [v3 setObject:v14 forKeyedSubscript:@"durationUntilClear"];
  }

  CUMetricsLogEx();
}

- (void)_reportChargingCompleteMetricWithTracker:(id)tracker
{
  trackerCopy = tracker;
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [trackerCopy dismissReason]);
  [v3 setObject:v4 forKeyedSubscript:@"dismissReason"];

  v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [trackerCopy productID]);
  [v3 setObject:v5 forKeyedSubscript:@"productID"];

  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [trackerCopy reportedHour]);
  [v3 setObject:v6 forKeyedSubscript:@"reportedHour"];

  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [trackerCopy reportedWeekday]);
  [v3 setObject:v7 forKeyedSubscript:@"reportedWeekday"];

  if ([trackerCopy cleared])
  {
    [trackerCopy durationTillDismissed];
    v8 = [NSNumber numberWithDouble:?];
    [v3 setObject:v8 forKeyedSubscript:@"durationUntilDismiss"];

    [trackerCopy durationTillCleared];
    v9 = [NSNumber numberWithDouble:?];
    [v3 setObject:v9 forKeyedSubscript:@"durationUntilClear"];
  }

  CUMetricsLogEx();
}

- (void)_clearLastSeenBatteryInfoWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [(AALowBatteryAlertDaemon *)self _lastSeenBatteryInfoWithIdentifier:?];
  if (v4)
  {
    lastSeenBatteryInfoMap = [(AALowBatteryAlertDaemon *)self lastSeenBatteryInfoMap];
    [lastSeenBatteryInfoMap setObject:0 forKeyedSubscript:identifierCopy];

    [(AALowBatteryAlertDaemon *)self _persistLastSeenBatteryInfoWithUrgency:1];
  }
}

- (void)_backoffChargingReminderForBatteryInfo:(id)info
{
  identifier = [info identifier];
  v4 = [AALowBatteryAlertDaemon _notificationWithIdentifier:"_notificationWithIdentifier:andType:" andType:?];
  v5 = v4;
  if (v4)
  {
    [v4 setBackoffCount:{objc_msgSend(v4, "backoffCount") + 1}];
    [(AALowBatteryAlertDaemon *)self _chargingNotificationUpdated:v5];
  }
}

- (void)_updateLastSeenOnTrackerWithBatteryInfo:(id)info
{
  infoCopy = info;
  identifier = [infoCopy identifier];
  batteryCase = [infoCopy batteryCase];

  if (batteryCase)
  {
    v6 = [(AALowBatteryAlertDaemon *)self _notificationWithIdentifier:identifier andType:1];
    if (v6)
    {
      [v6 setLastSeenTime:CFAbsoluteTimeGetCurrent()];
      batteryCase2 = [infoCopy batteryCase];
      [batteryCase2 level];
      [v6 setLastBatteryLevel:?];
    }
  }
}

- (void)_clearUserDismissedChargingNotificationsWhileProcessNotRunning
{
  if ([(AALowBatteryAlertDaemon *)self systemFirstUnlocked])
  {
    unCenter = [(AALowBatteryAlertDaemon *)self unCenter];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100038DDC;
    v4[3] = &unk_1002B7B68;
    v4[4] = self;
    [unCenter visibleNotificationWithCategoryIdentifier:@"AAChargingNotificationUserNotifications" completion:v4];
  }
}

- (void)_aaBatteryMonitorEnsureStarted
{
  batteryMonitor = [(AALowBatteryAlertDaemon *)self batteryMonitor];

  if (!batteryMonitor)
  {
    v4 = +[AABatteryMonitorDaemon sharedAABatteryMonitorDaemon];
    [(AALowBatteryAlertDaemon *)self setBatteryMonitor:v4];

    batteryMonitor2 = [(AALowBatteryAlertDaemon *)self batteryMonitor];
    [batteryMonitor2 subscribeToBatteryInfoUpdates:self];
  }
}

- (void)_aaBatteryMonitorEnsureStopped
{
  batteryMonitor = [(AALowBatteryAlertDaemon *)self batteryMonitor];

  if (batteryMonitor)
  {
    batteryMonitor2 = [(AALowBatteryAlertDaemon *)self batteryMonitor];
    [batteryMonitor2 unsubscribeFromBatteryInfoUpdates:self];

    [(AALowBatteryAlertDaemon *)self setBatteryMonitor:0];
  }
}

@end