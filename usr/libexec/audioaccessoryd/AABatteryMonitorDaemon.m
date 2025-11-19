@interface AABatteryMonitorDaemon
+ (id)sharedAABatteryMonitorDaemon;
- (AABatteryMonitorDaemon)init;
- (BOOL)_applyPrefsOverrideToDevice:(id)a3;
- (BOOL)_applyPrefsOverrideToDevice:(id)a3 forBatteryType:(int64_t)a4;
- (NSArray)devices;
- (id)_deviceWithIdentifier:(id)a3;
- (id)_devices;
- (id)_newDeviceWithIdentifier:(id)a3;
- (id)descriptionWithLevel:(int)a3;
- (id)deviceWithIdentifier:(id)a3;
- (id)devicesMap;
- (void)_aaControllerEnsureStarted;
- (void)_aaControllerEnsureStopped;
- (void)_aaDeviceBatteryInfoLost:(id)a3;
- (void)_aaDeviceBatteryInfoUpdated:(id)a3;
- (void)_aaPairedDeviceDiscoveryEnsureStarted;
- (void)_aaPairedDeviceDiscoveryEnsureStopped;
- (void)_accessoryBatteryInfoMessageReceivedWithData:(id)a3 identifier:(id)a4;
- (void)_activate;
- (void)_checkForExpiredBatteries;
- (void)_connectedDeviceDiscoveryEnsureStarted;
- (void)_connectedDeviceDiscoveryEnsureStopped;
- (void)_connectedDeviceFound:(id)a3;
- (void)_connectedDeviceLost:(id)a3;
- (void)_handleExpiredBatteriesForDevice:(id)a3;
- (void)_invalidate;
- (void)_loadPreferences;
- (void)_nearbyDeviceDiscoveryEnsureStarted;
- (void)_nearbyDeviceDiscoveryEnsureStopped;
- (void)_nearbyDeviceLost:(id)a3;
- (void)_nearbyDeviceUpdated:(id)a3;
- (void)_notifySubscribersBatteryInfoLost:(id)a3;
- (void)_notifySubscribersBatteryInfoUpdated:(id)a3;
- (void)_notifySubscribersInvalidated;
- (void)_publishPowerSourcesFor:(id)a3;
- (void)_registerForSystemNotifications;
- (void)_removeDeviceInMapWithIdentifier:(id)a3;
- (void)_scheduleExpirationCheck;
- (void)_setDeviceInMap:(id)a3;
- (void)_unpublishPowerSourcesFor:(id)a3;
- (void)_unregisterFromSystemNotifications;
- (void)activate;
- (void)invalidate;
- (void)nearbyDeviceLost:(id)a3;
- (void)nearbyDeviceUpdated:(id)a3;
- (void)pairedDeviceLost:(id)a3;
- (void)pairedDeviceUpdated:(id)a3;
- (void)subscribeToBatteryInfoUpdates:(id)a3;
- (void)unsubscribeFromBatteryInfoUpdates:(id)a3;
@end

@implementation AABatteryMonitorDaemon

+ (id)sharedAABatteryMonitorDaemon
{
  if (qword_1002FA248 != -1)
  {
    sub_1001FBF44();
  }

  v3 = qword_1002FA240;

  return v3;
}

- (NSArray)devices
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_devicesMap)
  {
    v3 = [NSArray alloc];
    v4 = [(NSMutableDictionary *)v2->_devicesMap allValues];
    v5 = [v3 initWithArray:v4 copyItems:1];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  objc_sync_exit(v2);

  return v5;
}

- (AABatteryMonitorDaemon)init
{
  v10.receiver = self;
  v10.super_class = AABatteryMonitorDaemon;
  v2 = [(AABatteryMonitorDaemon *)&v10 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AABatteryMonitorDaemon", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = objc_alloc_init(NSMutableDictionary);
    prefsBatteryOverrides = v2->_prefsBatteryOverrides;
    v2->_prefsBatteryOverrides = v6;

    v2->_prefsChangedNotifyToken = -1;
    v8 = v2;
  }

  return v2;
}

- (id)descriptionWithLevel:(int)a3
{
  v23 = 0;
  NSAppendPrintF_safe();
  v4 = 0;
  v5 = [(AABatteryMonitorDaemon *)self _devices];
  v22 = v4;
  v16 = [v5 count];
  NSAppendPrintF();
  v6 = v4;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:{16, v16}];
  if (v8)
  {
    v9 = v8;
    v10 = *v19;
    do
    {
      v11 = 0;
      v12 = v6;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v17 = *(*(&v18 + 1) + 8 * v11);
        NSAppendPrintF();
        v6 = v12;

        v11 = v11 + 1;
        v12 = v6;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v18 objects:v24 count:{16, v17}];
    }

    while (v9);
  }

  NSAppendPrintF();
  v13 = v6;

  NSAppendPrintF();
  v14 = v13;

  return v13;
}

- (void)activate
{
  v3 = [(AABatteryMonitorDaemon *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DC574;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_activate
{
  if (![(AABatteryMonitorDaemon *)self activateCalled])
  {
    v3 = [(AABatteryMonitorDaemon *)self servicesDaemon];

    if (!v3)
    {
      if (dword_1002F7670 <= 115 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FBF74();
      }

      exit(1);
    }

    [(AABatteryMonitorDaemon *)self setActivateCalled:1];
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FBF58();
    }

    [(AABatteryMonitorDaemon *)self _connectedDeviceDiscoveryEnsureStarted];
    [(AABatteryMonitorDaemon *)self _nearbyDeviceDiscoveryEnsureStarted];
    [(AABatteryMonitorDaemon *)self _aaControllerEnsureStarted];
    [(AABatteryMonitorDaemon *)self _aaPairedDeviceDiscoveryEnsureStarted];
    [(AABatteryMonitorDaemon *)self _loadPreferences];

    [(AABatteryMonitorDaemon *)self _registerForSystemNotifications];
  }
}

- (void)invalidate
{
  v3 = [(AABatteryMonitorDaemon *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DC708;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_invalidate
{
  if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FBFB4();
  }

  [(AABatteryMonitorDaemon *)self _connectedDeviceDiscoveryEnsureStopped];
  [(AABatteryMonitorDaemon *)self _nearbyDeviceDiscoveryEnsureStopped];
  [(AABatteryMonitorDaemon *)self _aaControllerEnsureStopped];
  [(AABatteryMonitorDaemon *)self _aaPairedDeviceDiscoveryEnsureStopped];
  [(AABatteryMonitorDaemon *)self _unregisterFromSystemNotifications];

  [(AABatteryMonitorDaemon *)self setActivateCalled:0];
}

- (void)_aaControllerEnsureStarted
{
  v3 = [(AABatteryMonitorDaemon *)self aaController];
  if (!v3)
  {
    v4 = objc_alloc_init(AAController);
    v5 = [(AABatteryMonitorDaemon *)self dispatchQueue];
    [(AAController *)v4 setDispatchQueue:v5];

    [(AABatteryMonitorDaemon *)self setAaController:v4];
    [(AAController *)v4 setInvalidationHandler:&stru_1002BB6B8];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000DC978;
    v10[3] = &unk_1002B6E38;
    v6 = v4;
    v11 = v6;
    v12 = self;
    [(AAController *)v6 setBatteryInfoMessageHandler:v10];
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FBFD0();
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000DCA00;
    v7[3] = &unk_1002B68A8;
    v3 = v6;
    v8 = v3;
    v9 = self;
    [(AAController *)v3 activateWithCompletion:v7];
  }
}

- (void)_aaControllerEnsureStopped
{
  v3 = [(AABatteryMonitorDaemon *)self aaController];

  if (v3)
  {
    v4 = [(AABatteryMonitorDaemon *)self aaController];
    [v4 invalidate];

    [(AABatteryMonitorDaemon *)self setAaController:0];
  }
}

- (id)_devices
{
  v2 = self;
  objc_sync_enter(v2);
  devicesMap = v2->_devicesMap;
  if (devicesMap)
  {
    v4 = [(NSMutableDictionary *)devicesMap allValues];
  }

  else
  {
    v4 = &__NSArray0__struct;
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)devicesMap
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = v2->_devicesMap;
  objc_sync_exit(v2);

  return v3;
}

- (id)deviceWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(AABatteryMonitorDaemon *)v5 _deviceWithIdentifier:v4];
  v7 = [v6 copy];

  objc_sync_exit(v5);

  return v7;
}

- (id)_deviceWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  devicesMap = v5->_devicesMap;
  if (devicesMap)
  {
    v7 = [(NSMutableDictionary *)devicesMap objectForKeyedSubscript:v4];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(v5);

  return v7;
}

- (id)_newDeviceWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [[AADeviceBatteryInfo alloc] initWithIdentifier:v4];
  v6 = [(AABatteryMonitorDaemon *)self pairedDeviceManager];
  v7 = [v6 deviceWithIdentifier:v4];

  if (v7)
  {
    [v5 updateWithPairedDevice:v7];
    [(AABatteryMonitorDaemon *)self _setDeviceInMap:v5];
    v8 = v5;
  }

  else
  {
    sub_1001FC088(v4, &v10);
    v8 = v10;
  }

  return v8;
}

- (void)_removeDeviceInMapWithIdentifier:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  devicesMap = v4->_devicesMap;
  if (devicesMap)
  {
    [(NSMutableDictionary *)devicesMap setObject:0 forKeyedSubscript:v7];
    if (![(NSMutableDictionary *)v4->_devicesMap count])
    {
      v6 = v4->_devicesMap;
      v4->_devicesMap = 0;
    }
  }

  objc_sync_exit(v4);
}

- (void)_setDeviceInMap:(id)a3
{
  v9 = a3;
  v4 = self;
  objc_sync_enter(v4);
  devicesMap = v4->_devicesMap;
  if (!devicesMap)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = v4->_devicesMap;
    v4->_devicesMap = v6;

    devicesMap = v4->_devicesMap;
  }

  v8 = [v9 identifier];
  [(NSMutableDictionary *)devicesMap setObject:v9 forKeyedSubscript:v8];

  objc_sync_exit(v4);
}

- (void)_aaDeviceBatteryInfoLost:(id)a3
{
  v4 = a3;
  v7 = v4;
  if (dword_1002F7670 <= 30)
  {
    if (dword_1002F7670 != -1 || (v5 = _LogCategory_Initialize(), v4 = v7, v5))
    {
      sub_1001FC10C();
      v4 = v7;
    }
  }

  [(AABatteryMonitorDaemon *)self _unpublishPowerSourcesFor:v4];
  v6 = [v7 copy];
  [(AABatteryMonitorDaemon *)self _notifySubscribersBatteryInfoLost:v6];
}

- (void)_aaDeviceBatteryInfoUpdated:(id)a3
{
  v7 = a3;
  if ([v7 areAnyBatteriesAvailable])
  {
    if ([v7 productID])
    {
      v4 = [v7 bluetoothAddress];

      if (v4)
      {
        v5 = [v7 name];

        if (v5)
        {
          if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
          {
            sub_1001FC1C8();
          }

          [(AABatteryMonitorDaemon *)self _publishPowerSourcesFor:v7];
          v6 = [v7 copy];
          [(AABatteryMonitorDaemon *)self _notifySubscribersBatteryInfoUpdated:v6];
        }

        else
        {
          sub_1001FC208(dword_1002F7670 < 31, dword_1002F7670);
        }
      }

      else
      {
        sub_1001FC278();
      }
    }

    else
    {
      sub_1001FC2F4();
    }
  }

  else
  {
    sub_1001FC14C();
  }
}

- (void)_notifySubscribersBatteryInfoUpdated:(id)a3
{
  v4 = a3;
  v5 = [(AABatteryMonitorDaemon *)self subscribers];

  if (v5)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(AABatteryMonitorDaemon *)self subscribers];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10) deviceBatteryInfoUpdated:v4];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_notifySubscribersBatteryInfoLost:(id)a3
{
  v4 = a3;
  v5 = [(AABatteryMonitorDaemon *)self subscribers];

  if (v5)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v6 = [(AABatteryMonitorDaemon *)self subscribers];
    v7 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v12;
      do
      {
        v10 = 0;
        do
        {
          if (*v12 != v9)
          {
            objc_enumerationMutation(v6);
          }

          [*(*(&v11 + 1) + 8 * v10) deviceBatteryInfoLost:v4];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_notifySubscribersInvalidated
{
  v3 = [(AABatteryMonitorDaemon *)self subscribers];

  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(AABatteryMonitorDaemon *)self subscribers];
    v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v13;
      do
      {
        v8 = 0;
        do
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v12 + 1) + 8 * v8);
          if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
          {
            sub_1001FC370(v9);
          }

          if (objc_opt_respondsToSelector())
          {
            [v9 batteryMonitorInvalidated];
          }

          v10 = [(AABatteryMonitorDaemon *)self subscribers];
          [v10 removeObject:v9];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v11 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v6 = v11;
      }

      while (v11);
    }
  }
}

- (void)subscribeToBatteryInfoUpdates:(id)a3
{
  v4 = a3;
  v5 = [(AABatteryMonitorDaemon *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DD5C0;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)unsubscribeFromBatteryInfoUpdates:(id)a3
{
  v4 = a3;
  v5 = [(AABatteryMonitorDaemon *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DD820;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_connectedDeviceDiscoveryEnsureStarted
{
  v3 = [(AABatteryMonitorDaemon *)self connectedDiscovery];

  if (!v3)
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC488();
    }

    v4 = objc_alloc_init(AADeviceManager);
    v5 = [(AABatteryMonitorDaemon *)self servicesDaemon];
    [v4 setInternalServicesDaemon:v5];

    v6 = [(AABatteryMonitorDaemon *)self dispatchQueue];
    [v4 setDispatchQueue:v6];

    [v4 setInterruptionHandler:&stru_1002BB6D8];
    [v4 setInvalidationHandler:&stru_1002BB6F8];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000DDB7C;
    v12[3] = &unk_1002B7820;
    v12[4] = self;
    [v4 setDeviceFoundHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000DDB88;
    v11[3] = &unk_1002B7820;
    v11[4] = self;
    [v4 setDeviceLostHandler:v11];
    [(AABatteryMonitorDaemon *)self setConnectedDiscovery:v4];
    v7 = [(AABatteryMonitorDaemon *)self connectedDiscovery];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000DDC18;
    v9[3] = &unk_1002B68A8;
    v9[4] = self;
    v10 = v4;
    v8 = v4;
    [v7 activateWithCompletion:v9];
  }
}

- (void)_connectedDeviceDiscoveryEnsureStopped
{
  if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FC5A0();
  }

  v3 = [(AABatteryMonitorDaemon *)self connectedDiscovery];

  if (v3)
  {
    v4 = [(AABatteryMonitorDaemon *)self connectedDiscovery];
    [v4 invalidate];

    [(AABatteryMonitorDaemon *)self setConnectedDiscovery:0];
  }
}

- (void)_connectedDeviceLost:(id)a3
{
  v8 = a3;
  v4 = [(AABatteryMonitorDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [v8 identifier];
  v6 = [(AABatteryMonitorDaemon *)self _deviceWithIdentifier:v5];
  v7 = v6;
  if (v6)
  {
    [v6 updateWithDisconnectedDevice:v8];
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC5BC();
    }

    if ([v7 clearExpiredBatteries])
    {
      [(AABatteryMonitorDaemon *)self _handleExpiredBatteriesForDevice:v7];
    }

    [(AABatteryMonitorDaemon *)self _scheduleExpirationCheck];
  }
}

- (void)nearbyDeviceLost:(id)a3
{
  v4 = a3;
  v5 = [(AABatteryMonitorDaemon *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DDF4C;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_nearbyDeviceLost:(id)a3
{
  v8 = a3;
  v4 = [(AABatteryMonitorDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v4);

  if ([v8 isCase])
  {
    [v8 primaryDeviceIdentifier];
  }

  else
  {
    [v8 identifier];
  }
  v5 = ;
  v6 = [(AABatteryMonitorDaemon *)self _deviceWithIdentifier:v5];
  v7 = v6;
  if (v6)
  {
    [v6 updateWithLostAANearbyDevice:v8];
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC5FC(v8);
    }

    [(AABatteryMonitorDaemon *)self _scheduleExpirationCheck];
  }
}

- (void)nearbyDeviceUpdated:(id)a3
{
  v4 = a3;
  v5 = [(AABatteryMonitorDaemon *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DE10C;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_nearbyDeviceDiscoveryEnsureStarted
{
  if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FC664();
  }

  v3 = [(AABatteryMonitorDaemon *)self nearbyDiscovery];

  if (!v3)
  {
    v4 = +[AANearbyDeviceManagerDaemon sharedAANearbyDeviceManagerDaemon];
    [(AABatteryMonitorDaemon *)self setNearbyDiscovery:v4];
  }

  v5 = [(AABatteryMonitorDaemon *)self nearbyDiscovery];
  [v5 activate];
}

- (void)_nearbyDeviceDiscoveryEnsureStopped
{
  v3 = [(AABatteryMonitorDaemon *)self nearbyDiscovery];

  if (v3)
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC680();
    }

    v4 = [(AABatteryMonitorDaemon *)self nearbyDiscovery];
    [v4 invalidate];

    [(AABatteryMonitorDaemon *)self setNearbyDiscovery:0];
  }
}

- (void)_aaPairedDeviceDiscoveryEnsureStarted
{
  v3 = [(AABatteryMonitorDaemon *)self pairedDeviceManager];
  [v3 subscribeToPairedDiscovery:self];
}

- (void)_aaPairedDeviceDiscoveryEnsureStopped
{
  v3 = [(AABatteryMonitorDaemon *)self pairedDeviceManager];
  [v3 unsubscribeFromPairedDiscovery:self];
}

- (void)pairedDeviceUpdated:(id)a3
{
  v4 = a3;
  v5 = [(AABatteryMonitorDaemon *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001FBD38;
  v7[3] = &unk_1002B6D18;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)pairedDeviceLost:(id)a3
{
  v4 = a3;
  v5 = [(AABatteryMonitorDaemon *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001FBDBC;
  v7[3] = &unk_1002B6D18;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_scheduleExpirationCheck
{
  expirationCheckTimer = self->_expirationCheckTimer;
  if (expirationCheckTimer)
  {
    v4 = expirationCheckTimer;
    dispatch_source_cancel(v4);
    v5 = self->_expirationCheckTimer;
    self->_expirationCheckTimer = 0;
  }

  v6 = [(AABatteryMonitorDaemon *)self dispatchQueue];
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, v6);

  v8 = self->_expirationCheckTimer;
  self->_expirationCheckTimer = v7;
  v9 = v7;

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000DE590;
  v10[3] = &unk_1002B6D18;
  v10[4] = v9;
  v10[5] = self;
  dispatch_source_set_event_handler(v9, v10);
  CUDispatchTimerSet();
  dispatch_activate(v9);
}

- (void)_checkForExpiredBatteries
{
  if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FC69C();
  }

  v3 = [(AABatteryMonitorDaemon *)self _devices];
  v4 = [v3 copy];

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 clearExpiredBatteries])
        {
          [(AABatteryMonitorDaemon *)self _handleExpiredBatteriesForDevice:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v11 = [(AABatteryMonitorDaemon *)self _devices];
  v12 = [v11 count];

  if (v12)
  {
    [(AABatteryMonitorDaemon *)self _scheduleExpirationCheck];
  }
}

- (void)_handleExpiredBatteriesForDevice:(id)a3
{
  v7 = a3;
  v4 = [v7 batteries];
  v5 = [v4 count];

  if (v5)
  {
    [(AABatteryMonitorDaemon *)self _aaDeviceBatteryInfoUpdated:v7];
  }

  else
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC6B8();
    }

    v6 = [v7 identifier];
    [(AABatteryMonitorDaemon *)self _removeDeviceInMapWithIdentifier:v6];

    [(AABatteryMonitorDaemon *)self _aaDeviceBatteryInfoLost:v7];
  }
}

- (void)_publishPowerSourcesFor:(id)a3
{
  v11 = a3;
  v4 = [(AABatteryMonitorDaemon *)self powerSourcesMap];

  if (!v4)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    [(AABatteryMonitorDaemon *)self setPowerSourcesMap:v5];
  }

  v6 = [(AABatteryMonitorDaemon *)self powerSourcesMap];
  v7 = [v11 identifier];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (!v8)
  {
    v8 = objc_alloc_init(AADevicePowerSources);
    v9 = [(AABatteryMonitorDaemon *)self powerSourcesMap];
    v10 = [v11 identifier];
    [v9 setObject:v8 forKeyedSubscript:v10];
  }

  [(AADevicePowerSources *)v8 publishWithUpdatedBatteryInfo:v11];
}

- (void)_unpublishPowerSourcesFor:(id)a3
{
  v10 = a3;
  v4 = [(AABatteryMonitorDaemon *)self powerSourcesMap];

  if (v4)
  {
    v5 = [(AABatteryMonitorDaemon *)self powerSourcesMap];
    v6 = [v10 identifier];
    v7 = [v5 objectForKeyedSubscript:v6];

    if (v7)
    {
      [v7 unpublish];
      v8 = [(AABatteryMonitorDaemon *)self powerSourcesMap];
      v9 = [v10 identifier];
      [v8 setObject:0 forKeyedSubscript:v9];
    }
  }
}

- (void)_loadPreferences
{
  CFStringGetTypeID();
  v3 = CFPrefs_CopyTypedValue();
  if (v3)
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC6F8();
    }

    v4 = [(AABatteryMonitorDaemon *)self prefsBatteryOverrides];
    [v4 setObject:v3 forKeyedSubscript:&off_1002CB8D0];
  }

  else
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC738();
    }

    v4 = [(AABatteryMonitorDaemon *)self prefsBatteryOverrides];
    [v4 removeObjectForKey:&off_1002CB8D0];
  }

  CFStringGetTypeID();
  v5 = CFPrefs_CopyTypedValue();

  if (v5)
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC76C();
    }

    v6 = [(AABatteryMonitorDaemon *)self prefsBatteryOverrides];
    [v6 setObject:v5 forKeyedSubscript:&off_1002CB8E8];
  }

  else
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC7AC();
    }

    v6 = [(AABatteryMonitorDaemon *)self prefsBatteryOverrides];
    [v6 removeObjectForKey:&off_1002CB8E8];
  }

  CFStringGetTypeID();
  v7 = CFPrefs_CopyTypedValue();

  if (v7)
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC7E0();
    }

    v8 = [(AABatteryMonitorDaemon *)self prefsBatteryOverrides];
    [v8 setObject:v7 forKeyedSubscript:&off_1002CB900];
  }

  else
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC820();
    }

    v8 = [(AABatteryMonitorDaemon *)self prefsBatteryOverrides];
    [v8 removeObjectForKey:&off_1002CB900];
  }

  CFStringGetTypeID();
  v9 = CFPrefs_CopyTypedValue();

  if (v9)
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC854();
    }

    v10 = [(AABatteryMonitorDaemon *)self prefsBatteryOverrides];
    [v10 setObject:v9 forKeyedSubscript:&off_1002CB918];
  }

  else
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC894();
    }

    v10 = [(AABatteryMonitorDaemon *)self prefsBatteryOverrides];
    [v10 removeObjectForKey:&off_1002CB918];
  }
}

- (BOOL)_applyPrefsOverrideToDevice:(id)a3
{
  v4 = a3;
  v5 = [(AABatteryMonitorDaemon *)self prefsBatteryOverrides];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(AABatteryMonitorDaemon *)self _applyPrefsOverrideToDevice:v4 forBatteryType:1];
    v8 = v7 | [(AABatteryMonitorDaemon *)self _applyPrefsOverrideToDevice:v4 forBatteryType:2];
    v9 = [(AABatteryMonitorDaemon *)self _applyPrefsOverrideToDevice:v4 forBatteryType:4];
    v10 = v8 | v9 | [(AABatteryMonitorDaemon *)self _applyPrefsOverrideToDevice:v4 forBatteryType:3];
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10;
}

- (void)_registerForSystemNotifications
{
  if ([(AABatteryMonitorDaemon *)self prefsChangedNotifyToken]== -1)
  {
    v3 = [(AABatteryMonitorDaemon *)self dispatchQueue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000DEF58;
    handler[3] = &unk_1002B6DF0;
    handler[4] = self;
    notify_register_dispatch("com.apple.AudioAccessory.prefsChanged", &self->_prefsChangedNotifyToken, v3, handler);
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
}

- (void)_accessoryBatteryInfoMessageReceivedWithData:(id)a3 identifier:(id)a4
{
  v13 = a3;
  v6 = a4;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = [sub_100072FBC() _deviceWithIdentifier:?];
  if (v7 || (v7 = [sub_100072FBC() _newDeviceWithIdentifier:?]) != 0)
  {
    v8 = v7;
    v9 = [v7 updateWithAACPBatteryInfoData:v13];
    v10 = [sub_1000DF278() _applyPrefsOverrideToDevice:?];
    if ((v9 & 1) != 0 || v10)
    {
      if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
      {
        v11 = [v8 identifier];
        v12 = v13;
        LogPrintF();
      }

      [sub_1000DF278() _aaDeviceBatteryInfoUpdated:?];
    }

    [(AABatteryMonitorDaemon *)self _scheduleExpirationCheck:v11];
  }
}

- (void)_connectedDeviceFound:(id)a3
{
  v8 = a3;
  v4 = [(AABatteryMonitorDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [v8 identifier];
  v6 = [sub_100072FBC() _deviceWithIdentifier:?];
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = [sub_100072FBC() _newDeviceWithIdentifier:?];
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if ([v7 updateWithConnectedDevice:v8])
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [sub_1000DF278() _aaDeviceBatteryInfoUpdated:?];
  }

LABEL_10:
}

- (void)_nearbyDeviceUpdated:(id)a3
{
  v16 = a3;
  v4 = [(AABatteryMonitorDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [v16 paired];
  v6 = v16;
  if (v5)
  {
    v7 = [v16 primaryDeviceIdentifier];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = [v16 identifier];
    }

    v10 = v9;

    v11 = [sub_100072FBC() _deviceWithIdentifier:?];
    if (v11 || (v11 = [sub_100072FBC() _newDeviceWithIdentifier:?]) != 0)
    {
      v12 = v11;
      v13 = [v11 updateWithAANearbyDevice:v16];
      v14 = [sub_1000DF278() _applyPrefsOverrideToDevice:?];
      if ((v13 & 1) != 0 || v14)
      {
        if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
        {
          v15 = v16;
          LogPrintF();
        }

        [sub_1000DF278() _aaDeviceBatteryInfoUpdated:?];
      }

      [(AABatteryMonitorDaemon *)self _scheduleExpirationCheck];
    }

    v6 = v16;
  }

  _objc_release_x1(v5, v6);
}

- (BOOL)_applyPrefsOverrideToDevice:(id)a3 forBatteryType:(int64_t)a4
{
  v6 = a3;
  v7 = [(AABatteryMonitorDaemon *)self prefsBatteryOverrides];
  v8 = [NSNumber numberWithInteger:a4];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (v9 && [v9 length])
  {
    v10 = [sub_1000DF278() applyOverrideFromStr:? forBatteryType:?];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end