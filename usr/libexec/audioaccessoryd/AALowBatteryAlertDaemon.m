@interface AALowBatteryAlertDaemon
+ (id)sharedAALowBatteryAlertDaemon;
- (AALowBatteryAlertDaemon)init;
- (BOOL)_chargingNotificationEnabledForDeviceWithIdentifier:(id)a3;
- (BOOL)_checkChargingReachedComplete:(id)a3;
- (BOOL)_checkIfUIStateConditionsForLowBatteryBannerAreMet;
- (BOOL)_trackChargingCompleteWithBatteryInfo:(id)a3;
- (BOOL)_updateSystemCharging;
- (BOOL)_updateSystemEffectiveScreenLocked;
- (BOOL)lowBatteryAlertVisible;
- (id)_lastSeenBatteryInfoWithIdentifier:(id)a3;
- (id)_trackChargingReminderWithBatteryInfo:(id)a3;
- (id)descriptionWithLevel:(int)a3;
- (unsigned)_removeStaleLowBatteryDevices;
- (void)_aaBatteryMonitorEnsureStarted;
- (void)_aaBatteryMonitorEnsureStopped;
- (void)_aaPairedDeviceManagerEnsureStarted;
- (void)_aaPairedDeviceManagerEnsureStopped;
- (void)_activate;
- (void)_backoffChargingReminderForBatteryInfo:(id)a3;
- (void)_chargingCompleteWithBatteryInfo:(id)a3;
- (void)_chargingNotificationReset;
- (void)_chargingNotificationUpdated:(id)a3;
- (void)_checkChargingCompleteNotificationWithUpdatedBatteryInfo:(id)a3;
- (void)_checkForLowBattery;
- (void)_checkShouldClearChargingReminderWithUpdatedBatteryInfo:(id)a3;
- (void)_clearAllNotificationWithIdentifier:(id)a3 reason:(int64_t)a4;
- (void)_clearLastSeenBatteryInfoWithIdentifier:(id)a3;
- (void)_clearLowBatteryDevicesWithIdentifier:(id)a3;
- (void)_clearNotification:(id)a3 withReason:(int64_t)a4;
- (void)_clearUserDismissedChargingNotificationsWhileProcessNotRunning;
- (void)_dismissChargingCompleteNotificationWithBatteryInfo:(id)a3;
- (void)_dismissLowBatteryAlertOnIOS;
- (void)_dismissNotification:(id)a3 withReason:(int64_t)a4;
- (void)_invalidate;
- (void)_lastSeenBatteryInfoUpdated:(id)a3;
- (void)_loadNotificationsFromPref;
- (void)_loadPersistedLastSeenBatteryInfo;
- (void)_loadPersistedLowBatteryDevices;
- (void)_loadPreferences;
- (void)_lowBatteryDeviceUpdated:(id)a3;
- (void)_lowBatteryMonitoringEnsureStarted;
- (void)_lowBatteryMonitoringEnsureStopped;
- (void)_lowBatteryMonitoringReset;
- (void)_persistLastSeenBatteryInfoWithUrgency:(BOOL)a3;
- (void)_persistLowBatteryDevicesWithUrgency:(BOOL)a3;
- (void)_persistNotificationsToPrefs;
- (void)_powerMonitorEnsureStarted;
- (void)_powerMonitorEnsureStopped;
- (void)_powerMonitorStateChanged;
- (void)_registerForSystemNotifications;
- (void)_reportChargingCompleteMetricWithTracker:(id)a3;
- (void)_reportChargingReminderMetricWithTracker:(id)a3;
- (void)_reportLowBatteriesWithBatteryInfo:(id)a3;
- (void)_reportMetricsForNotificationTracker:(id)a3;
- (void)_shouldPostChargingReminderForLowBatteryCaseWithBatteryInfo:(id)a3;
- (void)_showAlertForLowBatteryDevice:(id)a3;
- (void)_showAlertForLowBatteryDevice_iOS:(id)a3;
- (void)_systemUIMonitorEnsureStarted;
- (void)_systemUIMonitorEnsureStopped;
- (void)_systemUIUpdatedWithLayout:(id)a3;
- (void)_triggerChargingReminderCheck;
- (void)_unregisterFromSystemNotifications;
- (void)_updateCurrentLowBatteryDevicesWithBatteryInfo:(id)a3;
- (void)_updateLastSeenOnTrackerWithBatteryInfo:(id)a3;
- (void)_userNotificationCenterEnsureStarted;
- (void)_userNotificationCenterEnsureStopped;
- (void)activate;
- (void)deviceBatteryInfoLost:(id)a3;
- (void)deviceBatteryInfoUpdated:(id)a3;
- (void)invalidate;
- (void)pairedDeviceLost:(id)a3;
- (void)pairedDeviceUpdated:(id)a3;
- (void)receivedNotificationResponse:(id)a3 forRequest:(id)a4;
- (void)showLowBatteryBannerIfNeededForDevice:(id)a3 withType:(unsigned __int8)a4 completion:(id)a5;
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

- (id)descriptionWithLevel:(int)a3
{
  v42 = 0;
  NSAppendPrintF_safe();
  v41 = 0;
  v4 = [(AALowBatteryAlertDaemon *)self lowBatteryDeviceMap];
  v29 = [v4 count];
  NSAppendPrintF();
  v5 = v41;

  Current = CFAbsoluteTimeGetCurrent();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v7 = [(AALowBatteryAlertDaemon *)self lowBatteryDeviceMap];
  v8 = [v7 allValues];

  obj = v8;
  v9 = [v8 countByEnumeratingWithState:&v37 objects:v43 count:16];
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

        v21 = [v14 deviceAddress];
        v22 = [v14 name];
        [v14 lastBatteryLevel];
        v24 = v23;
        v25 = [v14 lastBatteryType];
        v26 = "?";
        if (v25 <= 5)
        {
          v26 = off_1002B7C00[v25];
        }

        v34 = v17;
        v35 = v20;
        v33 = v26;
        v32 = v24 * 100.0;
        v30 = v21;
        v31 = v22;
        NSAppendPrintF();
        v5 = v13;

        v12 = v12 + 1;
        v13 = v5;
      }

      while (v10 != v12);
      v10 = [obj countByEnumeratingWithState:&v37 objects:v43 count:{16, v21, v22, *&v32, v33, v17, v20}];
    }

    while (v10);
  }

  NSAppendPrintF();
  v27 = v5;

  return v5;
}

- (void)activate
{
  v3 = [(AALowBatteryAlertDaemon *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000348A0;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(v3, block);
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
  v3 = [(AALowBatteryAlertDaemon *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000349A0;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(v3, block);
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

- (void)_lastSeenBatteryInfoUpdated:(id)a3
{
  v4 = a3;
  v9 = [v4 identifier];
  v5 = [(AALowBatteryAlertDaemon *)self _lastSeenBatteryInfoWithIdentifier:?];
  v6 = v5;
  if (v5)
  {
    [v5 updateWithNewInfo:v4];
  }

  else
  {
    v7 = [v4 copy];

    v8 = [(AALowBatteryAlertDaemon *)self lastSeenBatteryInfoMap];
    [v8 setObject:v7 forKeyedSubscript:v9];

    v4 = v7;
  }

  [(AALowBatteryAlertDaemon *)self _persistLastSeenBatteryInfoWithUrgency:0];
}

- (id)_lastSeenBatteryInfoWithIdentifier:(id)a3
{
  v4 = a3;
  [(AALowBatteryAlertDaemon *)self _loadPersistedLastSeenBatteryInfo];
  v5 = [(AALowBatteryAlertDaemon *)self lastSeenBatteryInfoMap];
  v6 = [v5 objectForKeyedSubscript:v4];

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

- (void)_persistLastSeenBatteryInfoWithUrgency:(BOOL)a3
{
  if (a3)
  {
    lastSeenBatteryInfoSaveTimer = self->_lastSeenBatteryInfoSaveTimer;
    if (lastSeenBatteryInfoSaveTimer)
    {
      v5 = lastSeenBatteryInfoSaveTimer;
      dispatch_source_cancel(v5);
      v6 = self->_lastSeenBatteryInfoSaveTimer;
      self->_lastSeenBatteryInfoSaveTimer = 0;
    }

    v7 = [(AALowBatteryAlertDaemon *)self systemPowerMonitor];
    v8 = [v7 firstUnlocked];

    if (v8)
    {
      [(AALowBatteryAlertDaemon *)self _aaPairedDeviceManagerEnsureStarted];
      v9 = +[NSMutableArray array];
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v42 = 0u;
      v10 = [(AALowBatteryAlertDaemon *)self lastSeenBatteryInfoMap];
      v11 = [v10 allValues];

      v12 = [v11 countByEnumeratingWithState:&v39 objects:v46 count:16];
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
              objc_enumerationMutation(v11);
            }

            v16 = *(*(&v39 + 1) + 8 * v15);
            v17 = [(AALowBatteryAlertDaemon *)self pairedDeviceManager];
            v18 = [v16 bluetoothAddress];
            v19 = [v17 isDevicePairedWithBluetoothAddress:v18];

            if ((v19 & 1) == 0)
            {
              v20 = [v16 identifier];
              [v9 addObject:v20];

              if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
              {
                sub_1001DA5AC();
              }
            }

            v15 = v15 + 1;
          }

          while (v13 != v15);
          v21 = [v11 countByEnumeratingWithState:&v39 objects:v46 count:16];
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
            v28 = [(AALowBatteryAlertDaemon *)self lastSeenBatteryInfoMap];
            [v28 setObject:0 forKeyedSubscript:v27];
          }

          v24 = [v22 countByEnumeratingWithState:&v35 objects:v45 count:16];
        }

        while (v24);
      }
    }

    v29 = [(AALowBatteryAlertDaemon *)self lastSeenBatteryInfoMap];
    v34 = 0;
    v30 = [NSKeyedArchiver archivedDataWithRootObject:v29 requiringSecureCoding:1 error:&v34];
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

  v32 = [(AALowBatteryAlertDaemon *)self lastSeenBatteryInfoSaveTimer];

  if (!v32)
  {
    v33 = [(AALowBatteryAlertDaemon *)self dispatchQueue];
    v31 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v33);

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
      v3 = [(AALowBatteryAlertDaemon *)self batteryMonitor];
      v6 = [v3 devices];

      [(AALowBatteryAlertDaemon *)self _updateCurrentLowBatteryDevicesWithBatteryInfo:v6];
      [(AALowBatteryAlertDaemon *)self _removeStaleLowBatteryDevices];
      [(AALowBatteryAlertDaemon *)self _reportLowBatteriesWithBatteryInfo:v6];
    }

    else
    {
      v4 = [(AALowBatteryAlertDaemon *)self srBannerObserver];
      v5 = [v4 smartRoutingBannerVisible];

      if (!v5)
      {
        return;
      }

      if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
      {
        sub_1001DA720();
      }

      v6 = [(AALowBatteryAlertDaemon *)self lowBatteryCheckCoalescer];
      [v6 trigger];
    }
  }

  else if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DA704();
  }
}

- (BOOL)_checkIfUIStateConditionsForLowBatteryBannerAreMet
{
  v3 = [(AALowBatteryAlertDaemon *)self systemPowerMonitor];
  v4 = [v3 screenActive];

  v5 = [(AALowBatteryAlertDaemon *)self srBannerObserver];
  v6 = [v5 smartRoutingBannerVisible];

  v7 = [(AALowBatteryAlertDaemon *)self systemEffectiveScreenLocked];
  v8 = [(AALowBatteryAlertDaemon *)self lowBatteryAlertVisible];
  if ([(AALowBatteryAlertDaemon *)self systemUIProxCardPresent])
  {
    v9 = [(AALowBatteryAlertDaemon *)self lowBatteryBannerIOS];

    if (v9)
    {
      [(AALowBatteryAlertDaemon *)self _dismissLowBatteryAlertOnIOS];
    }
  }

  else if (v4 & ~(v8 | v7 | v6))
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
    sub_1001DA73C(v4, self);
    goto LABEL_10;
  }

  return v10;
}

- (void)_dismissLowBatteryAlertOnIOS
{
  v3 = [(AALowBatteryAlertDaemon *)self lowBatteryBannerIOS];
  [v3 invalidate];

  [(AALowBatteryAlertDaemon *)self setLowBatteryBannerIOS:0];
}

- (BOOL)lowBatteryAlertVisible
{
  v2 = [(AALowBatteryAlertDaemon *)self lowBatteryBannerIOS];
  v3 = v2 != 0;

  return v3;
}

- (void)_lowBatteryMonitoringEnsureStarted
{
  v3 = [(AALowBatteryAlertDaemon *)self lowBatteryCheckCoalescer];

  if (!v3)
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DA7FC();
    }

    v4 = objc_alloc_init(CUCoalescer);
    [(AALowBatteryAlertDaemon *)self setLowBatteryCheckCoalescer:v4];
    v5 = [(AALowBatteryAlertDaemon *)self dispatchQueue];
    [v4 setDispatchQueue:v5];

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
  v3 = [(AALowBatteryAlertDaemon *)self lowBatteryCheckCoalescer];

  if (v3)
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DA818();
    }

    v4 = [(AALowBatteryAlertDaemon *)self lowBatteryCheckCoalescer];
    [v4 invalidate];

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
  v4 = [(AALowBatteryAlertDaemon *)self lowBatteryDeviceMap];
  v5 = [v4 allKeys];

  v6 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
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
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v23 + 1) + 8 * v10);
        v12 = [(AALowBatteryAlertDaemon *)self lowBatteryDeviceMap];
        v13 = [v12 objectForKeyedSubscript:v11];

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
            v20 = [(AALowBatteryAlertDaemon *)self lowBatteryDeviceMap];
            [v20 setObject:0 forKeyedSubscript:v11];

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
      v21 = [v5 countByEnumeratingWithState:&v23 objects:v27 count:16];
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

- (void)_reportLowBatteriesWithBatteryInfo:(id)a3
{
  v4 = a3;
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
  v7 = v4;
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
          v13 = [v12 identifier];
          [v6 addObject:v13];
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
  v31 = self;
  v14 = [(AALowBatteryAlertDaemon *)self lowBatteryDeviceMap];
  v15 = [v14 allValues];

  v16 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
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
        objc_enumerationMutation(v15);
      }

      v20 = *(*(&v33 + 1) + 8 * j);
      if ([v20 valid])
      {
        [v20 reportTime];
        if (v21 == 0.0)
        {
          v23 = v5;
          v24 = [v20 identifier];
          v25 = [v6 containsObject:v24];

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

    v17 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
  }

  while (v17);

  if (v32)
  {
    [(AALowBatteryAlertDaemon *)v31 _showAlertForLowBatteryDevice:?];
    v15 = v32;
LABEL_37:
  }
}

- (void)_showAlertForLowBatteryDevice:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (dword_1002F6620 <= 30)
  {
    if (dword_1002F6620 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_1001DAAAC(v4);
      v4 = v6;
    }
  }

  [(AALowBatteryAlertDaemon *)self _showAlertForLowBatteryDevice_iOS:v4];
  [v6 setReportTime:CFAbsoluteTimeGetCurrent()];
  [(AALowBatteryAlertDaemon *)self _lowBatteryDeviceUpdated:v6];
  [(AALowBatteryAlertDaemon *)self _persistLowBatteryDevicesWithUrgency:1];
}

- (void)_showAlertForLowBatteryDevice_iOS:(id)a3
{
  v4 = a3;
  [v4 lastBatteryLevel];
  v6 = v5;
  v7 = [v4 lastBatteryType];
  v8 = [v4 color];
  v9 = [v4 name];
  v10 = [v4 productID];

  v11 = objc_alloc_init(BTBannerUISession);
  v12 = [(AALowBatteryAlertDaemon *)self dispatchQueue];
  [v11 setDispatchQueue:v12];

  [v11 setLowBatteryLevel:v6];
  [v11 setTimeoutSeconds:4.0];
  [(AALowBatteryAlertDaemon *)self setLowBatteryBannerIOS:v11];
  v13 = v7 == 1;
  if (v7 == 1)
  {
    v14 = @"AirPods Case";
  }

  else
  {
    v14 = v9;
  }

  v15 = [AAAssetHelper bluetoothProductIDToAsset:v10 withColor:v8 isCase:v13];
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

- (void)showLowBatteryBannerIfNeededForDevice:(id)a3 withType:(unsigned __int8)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(AALowBatteryAlertDaemon *)self dispatchQueue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000364F8;
  v13[3] = &unk_1002B7AF0;
  v13[4] = self;
  v14 = v8;
  v16 = a4;
  v15 = v9;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)_updateCurrentLowBatteryDevicesWithBatteryInfo:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
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
          v12 = [v11 batteryMain];

          if (v12)
          {
            v13 = [v11 batteryMain];
            v28 = v13;
            v14 = [NSArray arrayWithObjects:&v28 count:1];
            [(AALowBatteryAlertDaemon *)self _checkLowBatteryStatus:v11 withType:2 batteries:v14];
          }

          else
          {
            v15 = [v11 batteryCase];

            if (v15)
            {
              v16 = [v11 batteryCase];
              v27 = v16;
              v17 = [NSArray arrayWithObjects:&v27 count:1];
              [(AALowBatteryAlertDaemon *)self _checkLowBatteryStatus:v11 withType:1 batteries:v17];
            }

            v13 = objc_alloc_init(NSMutableArray);
            v18 = [v11 batteryLeft];

            if (v18)
            {
              v19 = [v11 batteryLeft];
              [v13 addObject:v19];
            }

            v20 = [v11 batteryRight];

            if (v20)
            {
              v21 = [v11 batteryRight];
              [v13 addObject:v21];
            }

            if ([v13 count])
            {
              [(AALowBatteryAlertDaemon *)self _checkLowBatteryStatus:v11 withType:0 batteries:v13];
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

- (void)_clearLowBatteryDevicesWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [AALowBatteryDevice trackerKeyForIdentifier:v4 andType:0];
  v6 = [(AALowBatteryAlertDaemon *)self lowBatteryDeviceMap];
  [v6 setObject:0 forKeyedSubscript:v5];

  v7 = [AALowBatteryDevice trackerKeyForIdentifier:v4 andType:2];

  v8 = [(AALowBatteryAlertDaemon *)self lowBatteryDeviceMap];
  [v8 setObject:0 forKeyedSubscript:v7];

  v10 = [AALowBatteryDevice trackerKeyForIdentifier:v4 andType:1];

  v9 = [(AALowBatteryAlertDaemon *)self lowBatteryDeviceMap];
  [v9 setObject:0 forKeyedSubscript:v10];
}

- (void)_loadPersistedLowBatteryDevices
{
  v2 = self;
  if (![(AALowBatteryAlertDaemon *)self lowBatteryInfoFromPrefsLoaded])
  {
    v3 = [(AALowBatteryAlertDaemon *)v2 lowBatteryDeviceMap];

    if (!v3)
    {
      v4 = objc_alloc_init(NSMutableDictionary);
      [(AALowBatteryAlertDaemon *)v2 setLowBatteryDeviceMap:v4];
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
              v13 = v2;
              v14 = [(AALowBatteryAlertDaemon *)v2 lowBatteryDeviceMap];
              v15 = [(AALowBatteryDevice *)v12 trackerKey];
              [v14 setObject:v12 forKeyedSubscript:v15];

              if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
              {
                sub_1001DACF0(v12);
              }

              ++v7;

              v2 = v13;
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

    [(AALowBatteryAlertDaemon *)v2 setLowBatteryInfoFromPrefsLoaded:1];
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DADB8();
    }
  }
}

- (void)_lowBatteryDeviceUpdated:(id)a3
{
  v4 = a3;
  [(AALowBatteryAlertDaemon *)self _loadPersistedLowBatteryDevices];
  v5 = [(AALowBatteryAlertDaemon *)self lowBatteryDeviceMap];
  v6 = [v4 trackerKey];
  [v5 setObject:v4 forKeyedSubscript:v6];

  [(AALowBatteryAlertDaemon *)self _persistLowBatteryDevicesWithUrgency:0];
}

- (void)_persistLowBatteryDevicesWithUrgency:(BOOL)a3
{
  if (a3)
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
    v7 = [(AALowBatteryAlertDaemon *)self lowBatteryDeviceMap];
    v8 = [v7 allValues];

    v9 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v26 + 1) + 8 * v13);
          v15 = [(AALowBatteryAlertDaemon *)self systemPowerMonitor:v24];
          v16 = [v15 firstUnlocked];

          if (!v16 || (-[AALowBatteryAlertDaemon pairedDeviceManager](self, "pairedDeviceManager"), v17 = objc_claimAutoreleasedReturnValue(), [v14 deviceAddress], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "isDevicePairedWithBluetoothAddress:", v18), v18, v17, (v19 & 1) != 0))
          {
            v20 = [v14 toPrefsDict];
            if (!v11)
            {
              v11 = objc_alloc_init(NSMutableArray);
            }

            [v11 addObject:v20];
            goto LABEL_14;
          }

          if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
          {
            v20 = [v14 identifier];
            v24 = v20;
            v25 = v14;
            LogPrintF();
LABEL_14:
          }

          v13 = v13 + 1;
        }

        while (v10 != v13);
        v21 = [v8 countByEnumeratingWithState:&v26 objects:v31 count:16];
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
    v22 = [(AALowBatteryAlertDaemon *)self lowBatterySaveTimer];

    if (v22)
    {
      return;
    }

    v23 = [(AALowBatteryAlertDaemon *)self dispatchQueue];
    v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v23);

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

- (void)_chargingCompleteWithBatteryInfo:(id)a3
{
  v4 = a3;
  if ([(AALowBatteryAlertDaemon *)self _trackChargingCompleteWithBatteryInfo:v4])
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DAEC4();
    }

    v5 = [(AALowBatteryAlertDaemon *)self _notificationContentForChargingNotificationWithType:2 batteryInfo:v4];
    v6 = [(AALowBatteryAlertDaemon *)self unCenter];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10003772C;
    v7[3] = &unk_1002B7B40;
    v7[4] = self;
    v8 = v4;
    [v6 deliverNotificationWithContent:v5 completion:v7];
  }

  else if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DAE84();
  }
}

- (void)_checkChargingCompleteNotificationWithUpdatedBatteryInfo:(id)a3
{
  v8 = a3;
  v4 = [(AALowBatteryAlertDaemon *)self prefCaseBatteryNotificationsEnabled];
  v5 = v8;
  if (v4)
  {
    v6 = [v8 identifier];
    v7 = [v8 batteryCase];

    if (v7)
    {
      if ([(AALowBatteryAlertDaemon *)self _chargingNotificationEnabledForDeviceWithIdentifier:v6])
      {
        if ([v8 caseWithBudsChargingComplete])
        {
          if ([v8 isConnected])
          {
            sub_1001DB130(dword_1002F6620 < 31, dword_1002F6620);
          }

          else
          {
            if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
            {
              sub_1001DB0B0();
            }

            if ([(AALowBatteryAlertDaemon *)self _checkChargingReachedComplete:v8])
            {
              [(AALowBatteryAlertDaemon *)self _chargingCompleteWithBatteryInfo:v8];
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

          [(AALowBatteryAlertDaemon *)self _dismissChargingCompleteNotificationWithBatteryInfo:v8];
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

    v5 = v8;
  }

  _objc_release_x1(v4, v5);
}

- (BOOL)_checkChargingReachedComplete:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(AALowBatteryAlertDaemon *)self _lastSeenBatteryInfoWithIdentifier:v5];

  if (v6)
  {
    v7 = [v6 nonStaleBatteries];
    if ([v7 count])
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      v21 = v7;
      v8 = v7;
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
          v14 = [v4 batteryForType:{objc_msgSend(v13, "type")}];
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
      v7 = v21;
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

- (void)_dismissChargingCompleteNotificationWithBatteryInfo:(id)a3
{
  v12 = a3;
  v4 = [v12 identifier];
  v5 = [(AALowBatteryAlertDaemon *)self _notificationWithIdentifier:v4 andType:2];

  if (v5)
  {
    if ([v5 cleared])
    {
      sub_1001DB354(dword_1002F6620 < 31, dword_1002F6620, v12);
    }

    else
    {
      if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
      {
        sub_1001DB298();
      }

      v6 = [v12 batteryCase];
      v7 = [v6 fullyCharged];

      v8 = [v12 batteryCase];
      v9 = [v8 charging];

      v10 = 8;
      if (v9)
      {
        v10 = 6;
      }

      if (v7)
      {
        v11 = v10;
      }

      else
      {
        v11 = 7;
      }

      if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
      {
        sub_1001DB2D8(v12, v11);
      }

      [(AALowBatteryAlertDaemon *)self _clearNotification:v5 withReason:v11];
    }
  }

  else
  {
    sub_1001DB3F0();
  }
}

- (BOOL)_trackChargingCompleteWithBatteryInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(AALowBatteryAlertDaemon *)self _notificationWithIdentifier:v5 andType:2];
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
    [(AAChargingNotificationTracker *)v8 setIdentifier:v5];
    v9 = [v4 bluetoothAddress];
    [(AAChargingNotificationTracker *)v8 setDeviceAddress:v9];

    -[AAChargingNotificationTracker setProductID:](v8, "setProductID:", [v4 productID]);
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

- (void)_checkShouldClearChargingReminderWithUpdatedBatteryInfo:(id)a3
{
  v25 = a3;
  if ([(AALowBatteryAlertDaemon *)self prefCaseBatteryNotificationsEnabled])
  {
    [(AALowBatteryAlertDaemon *)self _loadNotificationsFromPref];
    v4 = [v25 identifier];
    v5 = [v25 batteryCase];

    if (!v5)
    {
      sub_1001DB654();
      goto LABEL_26;
    }

    v6 = [(AALowBatteryAlertDaemon *)self _notificationWithIdentifier:v4 andType:1];
    v7 = v6;
    if (v6)
    {
      if (![v6 cleared])
      {
        v8 = [v25 batteryCase];
        v9 = [v8 charging];

        if (!v9)
        {
          v18 = 0;
          goto LABEL_17;
        }

        v10 = [(AALowBatteryAlertDaemon *)self _lastSeenBatteryInfoWithIdentifier:v4];
        v11 = v10;
        if (!v10)
        {
          goto LABEL_9;
        }

        v12 = [v10 batteryCase];
        if (!v12 || (v13 = v12, [v11 batteryCase], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "stale"), v14, v13, (v15 & 1) == 0))
        {
LABEL_9:
          v16 = [v11 batteryCase];
          v17 = [v16 charging];

          if (!v17)
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
        v19 = [v25 batteryCase];
        [v19 level];
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

        if ((v21 > v23) | v9 & 1)
        {
          if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
          {
            sub_1001DB51C(v25, v24);
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

- (void)_shouldPostChargingReminderForLowBatteryCaseWithBatteryInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(AALowBatteryAlertDaemon *)self _chargingNotificationEnabledForDeviceWithIdentifier:v5];

  if ((v6 & 1) == 0)
  {
    sub_1001DB6B4();
    goto LABEL_25;
  }

  v7 = [(AALowBatteryAlertDaemon *)self _trackChargingReminderWithBatteryInfo:v4];
  [v7 reportTime];
  if (v8 == 0.0)
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DB8E4();
    }

    v9 = [(AALowBatteryAlertDaemon *)self _notificationContentForChargingNotificationWithType:1 batteryInfo:v4];
    v10 = [(AALowBatteryAlertDaemon *)self unCenter];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_100038578;
    v14[3] = &unk_1002B7B40;
    v14[4] = self;
    v15 = v4;
    [v10 deliverNotificationWithContent:v9 completion:v14];
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
      if ([v4 wasConnectedInLast:?])
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

        [(AALowBatteryAlertDaemon *)self _shouldPostChargingReminderForLowBatteryCaseWithBatteryInfo:v4];
        goto LABEL_24;
      }

      if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
      {
        sub_1001DB7C4(self);
      }
    }

    [(AALowBatteryAlertDaemon *)self _backoffChargingReminderForBatteryInfo:v4];
  }

LABEL_24:

LABEL_25:
}

- (id)_trackChargingReminderWithBatteryInfo:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [v4 batteryCase];
  [v6 level];
  v8 = v7;

  v9 = [(AALowBatteryAlertDaemon *)self _notificationWithIdentifier:v5 andType:1];
  v10 = v9;
  if (v9 && ![(AAChargingNotificationTracker *)v9 cleared])
  {
    v11 = v10;
  }

  else
  {
    v11 = objc_alloc_init(AAChargingNotificationTracker);

    [(AAChargingNotificationTracker *)v11 setType:1];
    [(AAChargingNotificationTracker *)v11 setIdentifier:v5];
    v12 = [v4 bluetoothAddress];
    [(AAChargingNotificationTracker *)v11 setDeviceAddress:v12];

    -[AAChargingNotificationTracker setProductID:](v11, "setProductID:", [v4 productID]);
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
      v3 = [(AALowBatteryAlertDaemon *)self batteryMonitor];
      v4 = [v3 devices];

      v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
              objc_enumerationMutation(v4);
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
              v10 = [v9 batteryCase];
              v11 = v10;
              if (v10)
              {
                if ([v10 charging])
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
          v12 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (BOOL)_chargingNotificationEnabledForDeviceWithIdentifier:(id)a3
{
  v3 = a3;
  v4 = +[AAPairedDeviceDaemon sharedAAPairedDeviceDaemon];
  v5 = [v4 deviceWithIdentifier:v3];

  v6 = [v5 chargingReminderCapability] == 2 && objc_msgSend(v5, "chargingReminderEnabled") == 1;
  return v6;
}

- (void)_chargingNotificationReset
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [(AALowBatteryAlertDaemon *)self chargingNotificationMap];
  v4 = [v3 allValues];

  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * i);
        if (([v9 cleared] & 1) == 0)
        {
          [(AALowBatteryAlertDaemon *)self _clearNotification:v9 withReason:11];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  CFPrefs_RemoveValue();
  [(AALowBatteryAlertDaemon *)self setChargingNotificationMap:0];
  [(AALowBatteryAlertDaemon *)self setChargingNotificationsFromPrefsLoaded:0];
  [(AALowBatteryAlertDaemon *)self _loadPreferences];
}

- (void)_clearAllNotificationWithIdentifier:(id)a3 reason:(int64_t)a4
{
  v8 = a3;
  v6 = [AALowBatteryAlertDaemon _notificationWithIdentifier:"_notificationWithIdentifier:andType:" andType:?];
  if (v6)
  {
    [(AALowBatteryAlertDaemon *)self _clearNotification:v6 withReason:a4];
  }

  v7 = [(AALowBatteryAlertDaemon *)self _notificationWithIdentifier:v8 andType:2];

  if (v7)
  {
    [(AALowBatteryAlertDaemon *)self _clearNotification:v7 withReason:a4];
  }
}

- (void)_clearNotification:(id)a3 withReason:(int64_t)a4
{
  v6 = a3;
  if (([v6 posted] & 1) == 0 && dword_1002F6620 <= 90 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DBBFC(v6, a4);
  }

  [v6 setCleared:1];
  [v6 setClearTime:CFAbsoluteTimeGetCurrent()];
  [v6 lastBatteryLevel];
  [v6 setClearBatteryLevel:?];
  if ([v6 dismissed])
  {
    [(AALowBatteryAlertDaemon *)self _chargingNotificationUpdated:v6];
  }

  else
  {
    [(AALowBatteryAlertDaemon *)self _dismissNotification:v6 withReason:a4];
  }

  [(AALowBatteryAlertDaemon *)self _reportMetricsForNotificationTracker:v6];
  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DBC88(v6);
  }
}

- (void)_dismissNotification:(id)a3 withReason:(int64_t)a4
{
  v8 = a3;
  [v8 setDismissReason:a4];
  [v8 setDismissTime:CFAbsoluteTimeGetCurrent()];
  [v8 lastBatteryLevel];
  [v8 setDismissBatteryLevel:?];
  [v8 setBackoffCountTillDismiss:{objc_msgSend(v8, "backoffCount")}];
  v6 = [(AALowBatteryAlertDaemon *)self unCenter];
  v7 = [v8 notificationIdentifier];
  [v6 dismissUserNotificationWithIdentifier:v7];

  if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
  {
    sub_1001DBD1C(v8, a4);
  }

  [(AALowBatteryAlertDaemon *)self _chargingNotificationUpdated:v8];
}

- (void)_chargingNotificationUpdated:(id)a3
{
  v4 = a3;
  [(AALowBatteryAlertDaemon *)self _loadNotificationsFromPref];
  v5 = [(AALowBatteryAlertDaemon *)self chargingNotificationMap];
  v6 = [v4 trackerKey];
  [v5 setObject:v4 forKeyedSubscript:v6];

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
  v3 = [(AALowBatteryAlertDaemon *)self systemPowerMonitor];
  v4 = [v3 firstUnlocked];

  if (v4)
  {
    [(AALowBatteryAlertDaemon *)self _aaPairedDeviceManagerEnsureStarted];
    v5 = +[NSMutableArray array];
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v6 = [(AALowBatteryAlertDaemon *)self chargingNotificationMap];
    v7 = [v6 allValues];

    v8 = [v7 countByEnumeratingWithState:&v33 objects:v39 count:16];
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
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v33 + 1) + 8 * v11);
          v13 = [(AALowBatteryAlertDaemon *)self pairedDeviceManager];
          v14 = [v12 deviceAddress];
          v15 = [v13 isDevicePairedWithBluetoothAddress:v14];

          if ((v15 & 1) == 0)
          {
            v16 = [v12 trackerKey];
            [v5 addObject:v16];

            if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
            {
              sub_1001DBEB0(v12);
            }
          }

          v11 = v11 + 1;
        }

        while (v9 != v11);
        v17 = [v7 countByEnumeratingWithState:&v33 objects:v39 count:16];
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
          v24 = [(AALowBatteryAlertDaemon *)self chargingNotificationMap];
          [v24 setObject:0 forKeyedSubscript:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v29 objects:v38 count:16];
      }

      while (v20);
    }
  }

  v25 = [(AALowBatteryAlertDaemon *)self chargingNotificationMap];
  v28 = 0;
  v26 = [NSKeyedArchiver archivedDataWithRootObject:v25 requiringSecureCoding:1 error:&v28];
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

- (void)deviceBatteryInfoUpdated:(id)a3
{
  v4 = a3;
  v5 = [(AALowBatteryAlertDaemon *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000399B4;
  v7[3] = &unk_1002B6D18;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)deviceBatteryInfoLost:(id)a3
{
  v4 = a3;
  v5 = [(AALowBatteryAlertDaemon *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039AFC;
  v7[3] = &unk_1002B6D18;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_aaPairedDeviceManagerEnsureStarted
{
  v3 = [(AALowBatteryAlertDaemon *)self pairedDeviceManager];
  [v3 subscribeToPairedDiscovery:self];

  v4 = [(AALowBatteryAlertDaemon *)self pairedDeviceManager];
  [v4 activate];
}

- (void)_aaPairedDeviceManagerEnsureStopped
{
  v3 = [(AALowBatteryAlertDaemon *)self pairedDeviceManager];
  [v3 unsubscribeFromPairedDiscovery:self];
}

- (void)pairedDeviceUpdated:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039CD4;
  v7[3] = &unk_1002B6D18;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)pairedDeviceLost:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100039E24;
  v7[3] = &unk_1002B6D18;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_powerMonitorEnsureStarted
{
  v3 = [(AALowBatteryAlertDaemon *)self systemPowerMonitor];

  if (!v3)
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DC16C();
    }

    v4 = objc_alloc_init(CUSystemMonitor);
    [(AALowBatteryAlertDaemon *)self setSystemPowerMonitor:v4];
    v5 = [(AALowBatteryAlertDaemon *)self dispatchQueue];
    [v4 setDispatchQueue:v5];

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
  v3 = [(AALowBatteryAlertDaemon *)self systemPowerMonitor];

  if (v3)
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DC188();
    }

    v4 = [(AALowBatteryAlertDaemon *)self systemPowerMonitor];
    [v4 invalidate];

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
    v3 = [(AALowBatteryAlertDaemon *)self systemPowerMonitor];
    v4 = [v3 firstUnlocked];

    if (v4)
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
  v3 = [(AALowBatteryAlertDaemon *)self systemPowerMonitor];
  v4 = [v3 powerUnlimited];

  v5 = v4 ^ [(AALowBatteryAlertDaemon *)self systemIsCharging];
  if (v5 == 1)
  {
    if (dword_1002F6620 <= 30 && (dword_1002F6620 != -1 || _LogCategory_Initialize()))
    {
      sub_1001DC1F8(self);
    }

    [(AALowBatteryAlertDaemon *)self setSystemIsCharging:v4];
  }

  return v5;
}

- (BOOL)_updateSystemEffectiveScreenLocked
{
  v3 = [(AALowBatteryAlertDaemon *)self systemEffectiveScreenLocked];
  v4 = [(AALowBatteryAlertDaemon *)self systemPowerMonitor];
  v5 = [v4 screenActive];

  if ((v5 & 1) == 0)
  {
    if (![(AALowBatteryAlertDaemon *)self systemEffectiveScreenLocked])
    {
      v8 = 1;
      goto LABEL_7;
    }

    return 0;
  }

  v6 = [(AALowBatteryAlertDaemon *)self systemPowerMonitor];
  v7 = [v6 screenLocked];

  v8 = v7 & v3;
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
    v3 = [(AALowBatteryAlertDaemon *)self dispatchQueue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10003AA30;
    handler[3] = &unk_1002B6DF0;
    handler[4] = self;
    notify_register_dispatch("com.apple.AudioAccessory.prefsChanged", &self->_prefsChangedNotifyToken, v3, handler);
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
  v3 = [(AALowBatteryAlertDaemon *)self systemUIMonitor];

  if (!v3)
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

- (void)_systemUIUpdatedWithLayout:(id)a3
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [a3 elements];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v12 + 1) + 8 * i) identifier];
        v11 = v10;
        if (v10)
        {
          v7 |= [v10 isEqual:@"com.apple.HeadphoneProxService"];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
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

- (void)receivedNotificationResponse:(id)a3 forRequest:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(AALowBatteryAlertDaemon *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10003B284;
  block[3] = &unk_1002B6CF0;
  v12 = v6;
  v13 = v7;
  v14 = self;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_userNotificationCenterEnsureStarted
{
  v3 = +[AAUserNotificationCenter sharedInstance];
  [v3 activate];

  v4 = +[AAUserNotificationCenter sharedInstance];
  [(AALowBatteryAlertDaemon *)self setUnCenter:v4];

  v5 = [UNNotificationCategory categoryWithIdentifier:@"AAChargingNotificationUserNotifications" actions:&__NSArray0__struct intentIdentifiers:&__NSArray0__struct options:1];
  v6 = [(AALowBatteryAlertDaemon *)self unCenter];
  v8 = v5;
  v7 = [NSArray arrayWithObjects:&v8 count:1];
  [v6 registerNotificationCategories:v7 responseDelegate:self];
}

- (void)_userNotificationCenterEnsureStopped
{
  v3 = [(AALowBatteryAlertDaemon *)self unCenter];
  [v3 deregisterNotificationCategoryWithIdentifiers:&off_1002CC120];

  [(AALowBatteryAlertDaemon *)self setUnCenter:0];
}

- (void)_reportMetricsForNotificationTracker:(id)a3
{
  v4 = a3;
  if ([v4 type] == 1)
  {
    [(AALowBatteryAlertDaemon *)self _reportChargingReminderMetricWithTracker:v4];
  }

  else if ([v4 type] == 2)
  {
    [(AALowBatteryAlertDaemon *)self _reportChargingCompleteMetricWithTracker:v4];
  }
}

- (void)_reportChargingReminderMetricWithTracker:(id)a3
{
  v15 = a3;
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 dismissReason]);
  [v3 setObject:v4 forKeyedSubscript:@"dismissReason"];

  v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v15 productID]);
  [v3 setObject:v5 forKeyedSubscript:@"productID"];

  [v15 reportBatteryLevel];
  v6 = [NSNumber numberWithDouble:?];
  [v3 setObject:v6 forKeyedSubscript:@"triggeredWithBatteryLevel"];

  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 reportedHour]);
  [v3 setObject:v7 forKeyedSubscript:@"reportedHour"];

  v8 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v15 reportedWeekday]);
  [v3 setObject:v8 forKeyedSubscript:@"reportedWeekday"];

  if ([v15 cleared])
  {
    v9 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v15 backoffCount]);
    [v3 setObject:v9 forKeyedSubscript:@"numOfBackOffOnClear"];

    v10 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v15 backoffCountTillDismiss]);
    [v3 setObject:v10 forKeyedSubscript:@"numOfBackOffOnDismiss"];

    [v15 dismissBatteryLevel];
    v11 = [NSNumber numberWithDouble:?];
    [v3 setObject:v11 forKeyedSubscript:@"dismissedWithBatteryLevel"];

    [v15 clearBatteryLevel];
    v12 = [NSNumber numberWithDouble:?];
    [v3 setObject:v12 forKeyedSubscript:@"clearedWithBatteryLevel"];

    [v15 durationTillDismissed];
    v13 = [NSNumber numberWithDouble:?];
    [v3 setObject:v13 forKeyedSubscript:@"durationUntilDismiss"];

    [v15 durationTillCleared];
    v14 = [NSNumber numberWithDouble:?];
    [v3 setObject:v14 forKeyedSubscript:@"durationUntilClear"];
  }

  CUMetricsLogEx();
}

- (void)_reportChargingCompleteMetricWithTracker:(id)a3
{
  v10 = a3;
  v3 = objc_alloc_init(NSMutableDictionary);
  v4 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 dismissReason]);
  [v3 setObject:v4 forKeyedSubscript:@"dismissReason"];

  v5 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v10 productID]);
  [v3 setObject:v5 forKeyedSubscript:@"productID"];

  v6 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 reportedHour]);
  [v3 setObject:v6 forKeyedSubscript:@"reportedHour"];

  v7 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v10 reportedWeekday]);
  [v3 setObject:v7 forKeyedSubscript:@"reportedWeekday"];

  if ([v10 cleared])
  {
    [v10 durationTillDismissed];
    v8 = [NSNumber numberWithDouble:?];
    [v3 setObject:v8 forKeyedSubscript:@"durationUntilDismiss"];

    [v10 durationTillCleared];
    v9 = [NSNumber numberWithDouble:?];
    [v3 setObject:v9 forKeyedSubscript:@"durationUntilClear"];
  }

  CUMetricsLogEx();
}

- (void)_clearLastSeenBatteryInfoWithIdentifier:(id)a3
{
  v6 = a3;
  v4 = [(AALowBatteryAlertDaemon *)self _lastSeenBatteryInfoWithIdentifier:?];
  if (v4)
  {
    v5 = [(AALowBatteryAlertDaemon *)self lastSeenBatteryInfoMap];
    [v5 setObject:0 forKeyedSubscript:v6];

    [(AALowBatteryAlertDaemon *)self _persistLastSeenBatteryInfoWithUrgency:1];
  }
}

- (void)_backoffChargingReminderForBatteryInfo:(id)a3
{
  v6 = [a3 identifier];
  v4 = [AALowBatteryAlertDaemon _notificationWithIdentifier:"_notificationWithIdentifier:andType:" andType:?];
  v5 = v4;
  if (v4)
  {
    [v4 setBackoffCount:{objc_msgSend(v4, "backoffCount") + 1}];
    [(AALowBatteryAlertDaemon *)self _chargingNotificationUpdated:v5];
  }
}

- (void)_updateLastSeenOnTrackerWithBatteryInfo:(id)a3
{
  v8 = a3;
  v4 = [v8 identifier];
  v5 = [v8 batteryCase];

  if (v5)
  {
    v6 = [(AALowBatteryAlertDaemon *)self _notificationWithIdentifier:v4 andType:1];
    if (v6)
    {
      [v6 setLastSeenTime:CFAbsoluteTimeGetCurrent()];
      v7 = [v8 batteryCase];
      [v7 level];
      [v6 setLastBatteryLevel:?];
    }
  }
}

- (void)_clearUserDismissedChargingNotificationsWhileProcessNotRunning
{
  if ([(AALowBatteryAlertDaemon *)self systemFirstUnlocked])
  {
    v3 = [(AALowBatteryAlertDaemon *)self unCenter];
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_100038DDC;
    v4[3] = &unk_1002B7B68;
    v4[4] = self;
    [v3 visibleNotificationWithCategoryIdentifier:@"AAChargingNotificationUserNotifications" completion:v4];
  }
}

- (void)_aaBatteryMonitorEnsureStarted
{
  v3 = [(AALowBatteryAlertDaemon *)self batteryMonitor];

  if (!v3)
  {
    v4 = +[AABatteryMonitorDaemon sharedAABatteryMonitorDaemon];
    [(AALowBatteryAlertDaemon *)self setBatteryMonitor:v4];

    v5 = [(AALowBatteryAlertDaemon *)self batteryMonitor];
    [v5 subscribeToBatteryInfoUpdates:self];
  }
}

- (void)_aaBatteryMonitorEnsureStopped
{
  v3 = [(AALowBatteryAlertDaemon *)self batteryMonitor];

  if (v3)
  {
    v4 = [(AALowBatteryAlertDaemon *)self batteryMonitor];
    [v4 unsubscribeFromBatteryInfoUpdates:self];

    [(AALowBatteryAlertDaemon *)self setBatteryMonitor:0];
  }
}

@end