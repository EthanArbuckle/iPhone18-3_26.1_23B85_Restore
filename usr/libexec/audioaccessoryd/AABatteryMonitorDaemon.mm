@interface AABatteryMonitorDaemon
+ (id)sharedAABatteryMonitorDaemon;
- (AABatteryMonitorDaemon)init;
- (BOOL)_applyPrefsOverrideToDevice:(id)device;
- (BOOL)_applyPrefsOverrideToDevice:(id)device forBatteryType:(int64_t)type;
- (NSArray)devices;
- (id)_deviceWithIdentifier:(id)identifier;
- (id)_devices;
- (id)_newDeviceWithIdentifier:(id)identifier;
- (id)descriptionWithLevel:(int)level;
- (id)deviceWithIdentifier:(id)identifier;
- (id)devicesMap;
- (void)_aaControllerEnsureStarted;
- (void)_aaControllerEnsureStopped;
- (void)_aaDeviceBatteryInfoLost:(id)lost;
- (void)_aaDeviceBatteryInfoUpdated:(id)updated;
- (void)_aaPairedDeviceDiscoveryEnsureStarted;
- (void)_aaPairedDeviceDiscoveryEnsureStopped;
- (void)_accessoryBatteryInfoMessageReceivedWithData:(id)data identifier:(id)identifier;
- (void)_activate;
- (void)_checkForExpiredBatteries;
- (void)_connectedDeviceDiscoveryEnsureStarted;
- (void)_connectedDeviceDiscoveryEnsureStopped;
- (void)_connectedDeviceFound:(id)found;
- (void)_connectedDeviceLost:(id)lost;
- (void)_handleExpiredBatteriesForDevice:(id)device;
- (void)_invalidate;
- (void)_loadPreferences;
- (void)_nearbyDeviceDiscoveryEnsureStarted;
- (void)_nearbyDeviceDiscoveryEnsureStopped;
- (void)_nearbyDeviceLost:(id)lost;
- (void)_nearbyDeviceUpdated:(id)updated;
- (void)_notifySubscribersBatteryInfoLost:(id)lost;
- (void)_notifySubscribersBatteryInfoUpdated:(id)updated;
- (void)_notifySubscribersInvalidated;
- (void)_publishPowerSourcesFor:(id)for;
- (void)_registerForSystemNotifications;
- (void)_removeDeviceInMapWithIdentifier:(id)identifier;
- (void)_scheduleExpirationCheck;
- (void)_setDeviceInMap:(id)map;
- (void)_unpublishPowerSourcesFor:(id)for;
- (void)_unregisterFromSystemNotifications;
- (void)activate;
- (void)invalidate;
- (void)nearbyDeviceLost:(id)lost;
- (void)nearbyDeviceUpdated:(id)updated;
- (void)pairedDeviceLost:(id)lost;
- (void)pairedDeviceUpdated:(id)updated;
- (void)subscribeToBatteryInfoUpdates:(id)updates;
- (void)unsubscribeFromBatteryInfoUpdates:(id)updates;
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
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_devicesMap)
  {
    v3 = [NSArray alloc];
    allValues = [(NSMutableDictionary *)selfCopy->_devicesMap allValues];
    v5 = [v3 initWithArray:allValues copyItems:1];
  }

  else
  {
    v5 = &__NSArray0__struct;
  }

  objc_sync_exit(selfCopy);

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

- (id)descriptionWithLevel:(int)level
{
  v23 = 0;
  NSAppendPrintF_safe();
  v4 = 0;
  _devices = [(AABatteryMonitorDaemon *)self _devices];
  v22 = v4;
  v16 = [_devices count];
  NSAppendPrintF();
  v6 = v4;

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = _devices;
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
  dispatchQueue = [(AABatteryMonitorDaemon *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DC574;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (![(AABatteryMonitorDaemon *)self activateCalled])
  {
    servicesDaemon = [(AABatteryMonitorDaemon *)self servicesDaemon];

    if (!servicesDaemon)
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
  dispatchQueue = [(AABatteryMonitorDaemon *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000DC708;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
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
  aaController = [(AABatteryMonitorDaemon *)self aaController];
  if (!aaController)
  {
    v4 = objc_alloc_init(AAController);
    dispatchQueue = [(AABatteryMonitorDaemon *)self dispatchQueue];
    [(AAController *)v4 setDispatchQueue:dispatchQueue];

    [(AABatteryMonitorDaemon *)self setAaController:v4];
    [(AAController *)v4 setInvalidationHandler:&stru_1002BB6B8];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000DC978;
    v10[3] = &unk_1002B6E38;
    v6 = v4;
    v11 = v6;
    selfCopy = self;
    [(AAController *)v6 setBatteryInfoMessageHandler:v10];
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FBFD0();
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000DCA00;
    v7[3] = &unk_1002B68A8;
    aaController = v6;
    v8 = aaController;
    selfCopy2 = self;
    [(AAController *)aaController activateWithCompletion:v7];
  }
}

- (void)_aaControllerEnsureStopped
{
  aaController = [(AABatteryMonitorDaemon *)self aaController];

  if (aaController)
  {
    aaController2 = [(AABatteryMonitorDaemon *)self aaController];
    [aaController2 invalidate];

    [(AABatteryMonitorDaemon *)self setAaController:0];
  }
}

- (id)_devices
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  devicesMap = selfCopy->_devicesMap;
  if (devicesMap)
  {
    allValues = [(NSMutableDictionary *)devicesMap allValues];
  }

  else
  {
    allValues = &__NSArray0__struct;
  }

  objc_sync_exit(selfCopy);

  return allValues;
}

- (id)devicesMap
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_devicesMap;
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)deviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(AABatteryMonitorDaemon *)selfCopy _deviceWithIdentifier:identifierCopy];
  v7 = [v6 copy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)_deviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  devicesMap = selfCopy->_devicesMap;
  if (devicesMap)
  {
    v7 = [(NSMutableDictionary *)devicesMap objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v7 = 0;
  }

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)_newDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = [[AADeviceBatteryInfo alloc] initWithIdentifier:identifierCopy];
  pairedDeviceManager = [(AABatteryMonitorDaemon *)self pairedDeviceManager];
  v7 = [pairedDeviceManager deviceWithIdentifier:identifierCopy];

  if (v7)
  {
    [v5 updateWithPairedDevice:v7];
    [(AABatteryMonitorDaemon *)self _setDeviceInMap:v5];
    v8 = v5;
  }

  else
  {
    sub_1001FC088(identifierCopy, &v10);
    v8 = v10;
  }

  return v8;
}

- (void)_removeDeviceInMapWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  devicesMap = selfCopy->_devicesMap;
  if (devicesMap)
  {
    [(NSMutableDictionary *)devicesMap setObject:0 forKeyedSubscript:identifierCopy];
    if (![(NSMutableDictionary *)selfCopy->_devicesMap count])
    {
      v6 = selfCopy->_devicesMap;
      selfCopy->_devicesMap = 0;
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)_setDeviceInMap:(id)map
{
  mapCopy = map;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  devicesMap = selfCopy->_devicesMap;
  if (!devicesMap)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = selfCopy->_devicesMap;
    selfCopy->_devicesMap = v6;

    devicesMap = selfCopy->_devicesMap;
  }

  identifier = [mapCopy identifier];
  [(NSMutableDictionary *)devicesMap setObject:mapCopy forKeyedSubscript:identifier];

  objc_sync_exit(selfCopy);
}

- (void)_aaDeviceBatteryInfoLost:(id)lost
{
  lostCopy = lost;
  v7 = lostCopy;
  if (dword_1002F7670 <= 30)
  {
    if (dword_1002F7670 != -1 || (v5 = _LogCategory_Initialize(), lostCopy = v7, v5))
    {
      sub_1001FC10C();
      lostCopy = v7;
    }
  }

  [(AABatteryMonitorDaemon *)self _unpublishPowerSourcesFor:lostCopy];
  v6 = [v7 copy];
  [(AABatteryMonitorDaemon *)self _notifySubscribersBatteryInfoLost:v6];
}

- (void)_aaDeviceBatteryInfoUpdated:(id)updated
{
  updatedCopy = updated;
  if ([updatedCopy areAnyBatteriesAvailable])
  {
    if ([updatedCopy productID])
    {
      bluetoothAddress = [updatedCopy bluetoothAddress];

      if (bluetoothAddress)
      {
        name = [updatedCopy name];

        if (name)
        {
          if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
          {
            sub_1001FC1C8();
          }

          [(AABatteryMonitorDaemon *)self _publishPowerSourcesFor:updatedCopy];
          v6 = [updatedCopy copy];
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

- (void)_notifySubscribersBatteryInfoUpdated:(id)updated
{
  updatedCopy = updated;
  subscribers = [(AABatteryMonitorDaemon *)self subscribers];

  if (subscribers)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    subscribers2 = [(AABatteryMonitorDaemon *)self subscribers];
    v7 = [subscribers2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(subscribers2);
          }

          [*(*(&v11 + 1) + 8 * v10) deviceBatteryInfoUpdated:updatedCopy];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [subscribers2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_notifySubscribersBatteryInfoLost:(id)lost
{
  lostCopy = lost;
  subscribers = [(AABatteryMonitorDaemon *)self subscribers];

  if (subscribers)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    subscribers2 = [(AABatteryMonitorDaemon *)self subscribers];
    v7 = [subscribers2 countByEnumeratingWithState:&v11 objects:v15 count:16];
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
            objc_enumerationMutation(subscribers2);
          }

          [*(*(&v11 + 1) + 8 * v10) deviceBatteryInfoLost:lostCopy];
          v10 = v10 + 1;
        }

        while (v8 != v10);
        v8 = [subscribers2 countByEnumeratingWithState:&v11 objects:v15 count:16];
      }

      while (v8);
    }
  }
}

- (void)_notifySubscribersInvalidated
{
  subscribers = [(AABatteryMonitorDaemon *)self subscribers];

  if (subscribers)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    subscribers2 = [(AABatteryMonitorDaemon *)self subscribers];
    v5 = [subscribers2 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
            objc_enumerationMutation(subscribers2);
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

          subscribers3 = [(AABatteryMonitorDaemon *)self subscribers];
          [subscribers3 removeObject:v9];

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v11 = [subscribers2 countByEnumeratingWithState:&v12 objects:v16 count:16];
        v6 = v11;
      }

      while (v11);
    }
  }
}

- (void)subscribeToBatteryInfoUpdates:(id)updates
{
  updatesCopy = updates;
  dispatchQueue = [(AABatteryMonitorDaemon *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DD5C0;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = updatesCopy;
  v6 = updatesCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)unsubscribeFromBatteryInfoUpdates:(id)updates
{
  updatesCopy = updates;
  dispatchQueue = [(AABatteryMonitorDaemon *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DD820;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = updatesCopy;
  v6 = updatesCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_connectedDeviceDiscoveryEnsureStarted
{
  connectedDiscovery = [(AABatteryMonitorDaemon *)self connectedDiscovery];

  if (!connectedDiscovery)
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC488();
    }

    v4 = objc_alloc_init(AADeviceManager);
    servicesDaemon = [(AABatteryMonitorDaemon *)self servicesDaemon];
    [v4 setInternalServicesDaemon:servicesDaemon];

    dispatchQueue = [(AABatteryMonitorDaemon *)self dispatchQueue];
    [v4 setDispatchQueue:dispatchQueue];

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
    connectedDiscovery2 = [(AABatteryMonitorDaemon *)self connectedDiscovery];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000DDC18;
    v9[3] = &unk_1002B68A8;
    v9[4] = self;
    v10 = v4;
    v8 = v4;
    [connectedDiscovery2 activateWithCompletion:v9];
  }
}

- (void)_connectedDeviceDiscoveryEnsureStopped
{
  if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FC5A0();
  }

  connectedDiscovery = [(AABatteryMonitorDaemon *)self connectedDiscovery];

  if (connectedDiscovery)
  {
    connectedDiscovery2 = [(AABatteryMonitorDaemon *)self connectedDiscovery];
    [connectedDiscovery2 invalidate];

    [(AABatteryMonitorDaemon *)self setConnectedDiscovery:0];
  }
}

- (void)_connectedDeviceLost:(id)lost
{
  lostCopy = lost;
  dispatchQueue = [(AABatteryMonitorDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  identifier = [lostCopy identifier];
  v6 = [(AABatteryMonitorDaemon *)self _deviceWithIdentifier:identifier];
  v7 = v6;
  if (v6)
  {
    [v6 updateWithDisconnectedDevice:lostCopy];
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

- (void)nearbyDeviceLost:(id)lost
{
  lostCopy = lost;
  dispatchQueue = [(AABatteryMonitorDaemon *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DDF4C;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = lostCopy;
  v6 = lostCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_nearbyDeviceLost:(id)lost
{
  lostCopy = lost;
  dispatchQueue = [(AABatteryMonitorDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  if ([lostCopy isCase])
  {
    [lostCopy primaryDeviceIdentifier];
  }

  else
  {
    [lostCopy identifier];
  }
  v5 = ;
  v6 = [(AABatteryMonitorDaemon *)self _deviceWithIdentifier:v5];
  v7 = v6;
  if (v6)
  {
    [v6 updateWithLostAANearbyDevice:lostCopy];
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC5FC(lostCopy);
    }

    [(AABatteryMonitorDaemon *)self _scheduleExpirationCheck];
  }
}

- (void)nearbyDeviceUpdated:(id)updated
{
  updatedCopy = updated;
  dispatchQueue = [(AABatteryMonitorDaemon *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000DE10C;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = updatedCopy;
  v6 = updatedCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_nearbyDeviceDiscoveryEnsureStarted
{
  if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FC664();
  }

  nearbyDiscovery = [(AABatteryMonitorDaemon *)self nearbyDiscovery];

  if (!nearbyDiscovery)
  {
    v4 = +[AANearbyDeviceManagerDaemon sharedAANearbyDeviceManagerDaemon];
    [(AABatteryMonitorDaemon *)self setNearbyDiscovery:v4];
  }

  nearbyDiscovery2 = [(AABatteryMonitorDaemon *)self nearbyDiscovery];
  [nearbyDiscovery2 activate];
}

- (void)_nearbyDeviceDiscoveryEnsureStopped
{
  nearbyDiscovery = [(AABatteryMonitorDaemon *)self nearbyDiscovery];

  if (nearbyDiscovery)
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC680();
    }

    nearbyDiscovery2 = [(AABatteryMonitorDaemon *)self nearbyDiscovery];
    [nearbyDiscovery2 invalidate];

    [(AABatteryMonitorDaemon *)self setNearbyDiscovery:0];
  }
}

- (void)_aaPairedDeviceDiscoveryEnsureStarted
{
  pairedDeviceManager = [(AABatteryMonitorDaemon *)self pairedDeviceManager];
  [pairedDeviceManager subscribeToPairedDiscovery:self];
}

- (void)_aaPairedDeviceDiscoveryEnsureStopped
{
  pairedDeviceManager = [(AABatteryMonitorDaemon *)self pairedDeviceManager];
  [pairedDeviceManager unsubscribeFromPairedDiscovery:self];
}

- (void)pairedDeviceUpdated:(id)updated
{
  updatedCopy = updated;
  dispatchQueue = [(AABatteryMonitorDaemon *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001FBD38;
  v7[3] = &unk_1002B6D18;
  v8 = updatedCopy;
  selfCopy = self;
  v6 = updatedCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)pairedDeviceLost:(id)lost
{
  lostCopy = lost;
  dispatchQueue = [(AABatteryMonitorDaemon *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001FBDBC;
  v7[3] = &unk_1002B6D18;
  v8 = lostCopy;
  selfCopy = self;
  v6 = lostCopy;
  dispatch_async(dispatchQueue, v7);
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

  dispatchQueue = [(AABatteryMonitorDaemon *)self dispatchQueue];
  v7 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, dispatchQueue);

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

  _devices = [(AABatteryMonitorDaemon *)self _devices];
  v4 = [_devices copy];

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

  _devices2 = [(AABatteryMonitorDaemon *)self _devices];
  v12 = [_devices2 count];

  if (v12)
  {
    [(AABatteryMonitorDaemon *)self _scheduleExpirationCheck];
  }
}

- (void)_handleExpiredBatteriesForDevice:(id)device
{
  deviceCopy = device;
  batteries = [deviceCopy batteries];
  v5 = [batteries count];

  if (v5)
  {
    [(AABatteryMonitorDaemon *)self _aaDeviceBatteryInfoUpdated:deviceCopy];
  }

  else
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC6B8();
    }

    identifier = [deviceCopy identifier];
    [(AABatteryMonitorDaemon *)self _removeDeviceInMapWithIdentifier:identifier];

    [(AABatteryMonitorDaemon *)self _aaDeviceBatteryInfoLost:deviceCopy];
  }
}

- (void)_publishPowerSourcesFor:(id)for
{
  forCopy = for;
  powerSourcesMap = [(AABatteryMonitorDaemon *)self powerSourcesMap];

  if (!powerSourcesMap)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    [(AABatteryMonitorDaemon *)self setPowerSourcesMap:v5];
  }

  powerSourcesMap2 = [(AABatteryMonitorDaemon *)self powerSourcesMap];
  identifier = [forCopy identifier];
  v8 = [powerSourcesMap2 objectForKeyedSubscript:identifier];

  if (!v8)
  {
    v8 = objc_alloc_init(AADevicePowerSources);
    powerSourcesMap3 = [(AABatteryMonitorDaemon *)self powerSourcesMap];
    identifier2 = [forCopy identifier];
    [powerSourcesMap3 setObject:v8 forKeyedSubscript:identifier2];
  }

  [(AADevicePowerSources *)v8 publishWithUpdatedBatteryInfo:forCopy];
}

- (void)_unpublishPowerSourcesFor:(id)for
{
  forCopy = for;
  powerSourcesMap = [(AABatteryMonitorDaemon *)self powerSourcesMap];

  if (powerSourcesMap)
  {
    powerSourcesMap2 = [(AABatteryMonitorDaemon *)self powerSourcesMap];
    identifier = [forCopy identifier];
    v7 = [powerSourcesMap2 objectForKeyedSubscript:identifier];

    if (v7)
    {
      [v7 unpublish];
      powerSourcesMap3 = [(AABatteryMonitorDaemon *)self powerSourcesMap];
      identifier2 = [forCopy identifier];
      [powerSourcesMap3 setObject:0 forKeyedSubscript:identifier2];
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

    prefsBatteryOverrides = [(AABatteryMonitorDaemon *)self prefsBatteryOverrides];
    [prefsBatteryOverrides setObject:v3 forKeyedSubscript:&off_1002CB8D0];
  }

  else
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC738();
    }

    prefsBatteryOverrides = [(AABatteryMonitorDaemon *)self prefsBatteryOverrides];
    [prefsBatteryOverrides removeObjectForKey:&off_1002CB8D0];
  }

  CFStringGetTypeID();
  v5 = CFPrefs_CopyTypedValue();

  if (v5)
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC76C();
    }

    prefsBatteryOverrides2 = [(AABatteryMonitorDaemon *)self prefsBatteryOverrides];
    [prefsBatteryOverrides2 setObject:v5 forKeyedSubscript:&off_1002CB8E8];
  }

  else
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC7AC();
    }

    prefsBatteryOverrides2 = [(AABatteryMonitorDaemon *)self prefsBatteryOverrides];
    [prefsBatteryOverrides2 removeObjectForKey:&off_1002CB8E8];
  }

  CFStringGetTypeID();
  v7 = CFPrefs_CopyTypedValue();

  if (v7)
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC7E0();
    }

    prefsBatteryOverrides3 = [(AABatteryMonitorDaemon *)self prefsBatteryOverrides];
    [prefsBatteryOverrides3 setObject:v7 forKeyedSubscript:&off_1002CB900];
  }

  else
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC820();
    }

    prefsBatteryOverrides3 = [(AABatteryMonitorDaemon *)self prefsBatteryOverrides];
    [prefsBatteryOverrides3 removeObjectForKey:&off_1002CB900];
  }

  CFStringGetTypeID();
  v9 = CFPrefs_CopyTypedValue();

  if (v9)
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC854();
    }

    prefsBatteryOverrides4 = [(AABatteryMonitorDaemon *)self prefsBatteryOverrides];
    [prefsBatteryOverrides4 setObject:v9 forKeyedSubscript:&off_1002CB918];
  }

  else
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FC894();
    }

    prefsBatteryOverrides4 = [(AABatteryMonitorDaemon *)self prefsBatteryOverrides];
    [prefsBatteryOverrides4 removeObjectForKey:&off_1002CB918];
  }
}

- (BOOL)_applyPrefsOverrideToDevice:(id)device
{
  deviceCopy = device;
  prefsBatteryOverrides = [(AABatteryMonitorDaemon *)self prefsBatteryOverrides];
  v6 = [prefsBatteryOverrides count];

  if (v6)
  {
    v7 = [(AABatteryMonitorDaemon *)self _applyPrefsOverrideToDevice:deviceCopy forBatteryType:1];
    v8 = v7 | [(AABatteryMonitorDaemon *)self _applyPrefsOverrideToDevice:deviceCopy forBatteryType:2];
    v9 = [(AABatteryMonitorDaemon *)self _applyPrefsOverrideToDevice:deviceCopy forBatteryType:4];
    v10 = v8 | v9 | [(AABatteryMonitorDaemon *)self _applyPrefsOverrideToDevice:deviceCopy forBatteryType:3];
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
    dispatchQueue = [(AABatteryMonitorDaemon *)self dispatchQueue];
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000DEF58;
    handler[3] = &unk_1002B6DF0;
    handler[4] = self;
    notify_register_dispatch("com.apple.AudioAccessory.prefsChanged", &self->_prefsChangedNotifyToken, dispatchQueue, handler);
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

- (void)_accessoryBatteryInfoMessageReceivedWithData:(id)data identifier:(id)identifier
{
  dataCopy = data;
  identifierCopy = identifier;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v7 = [sub_100072FBC() _deviceWithIdentifier:?];
  if (v7 || (v7 = [sub_100072FBC() _newDeviceWithIdentifier:?]) != 0)
  {
    v8 = v7;
    v9 = [v7 updateWithAACPBatteryInfoData:dataCopy];
    v10 = [sub_1000DF278() _applyPrefsOverrideToDevice:?];
    if ((v9 & 1) != 0 || v10)
    {
      if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
      {
        identifier = [v8 identifier];
        v12 = dataCopy;
        LogPrintF();
      }

      [sub_1000DF278() _aaDeviceBatteryInfoUpdated:?];
    }

    [(AABatteryMonitorDaemon *)self _scheduleExpirationCheck:identifier];
  }
}

- (void)_connectedDeviceFound:(id)found
{
  foundCopy = found;
  dispatchQueue = [(AABatteryMonitorDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  identifier = [foundCopy identifier];
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

  if ([v7 updateWithConnectedDevice:foundCopy])
  {
    if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [sub_1000DF278() _aaDeviceBatteryInfoUpdated:?];
  }

LABEL_10:
}

- (void)_nearbyDeviceUpdated:(id)updated
{
  updatedCopy = updated;
  dispatchQueue = [(AABatteryMonitorDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  paired = [updatedCopy paired];
  v6 = updatedCopy;
  if (paired)
  {
    primaryDeviceIdentifier = [updatedCopy primaryDeviceIdentifier];
    v8 = primaryDeviceIdentifier;
    if (primaryDeviceIdentifier)
    {
      identifier = primaryDeviceIdentifier;
    }

    else
    {
      identifier = [updatedCopy identifier];
    }

    v10 = identifier;

    v11 = [sub_100072FBC() _deviceWithIdentifier:?];
    if (v11 || (v11 = [sub_100072FBC() _newDeviceWithIdentifier:?]) != 0)
    {
      v12 = v11;
      v13 = [v11 updateWithAANearbyDevice:updatedCopy];
      v14 = [sub_1000DF278() _applyPrefsOverrideToDevice:?];
      if ((v13 & 1) != 0 || v14)
      {
        if (dword_1002F7670 <= 30 && (dword_1002F7670 != -1 || _LogCategory_Initialize()))
        {
          v15 = updatedCopy;
          LogPrintF();
        }

        [sub_1000DF278() _aaDeviceBatteryInfoUpdated:?];
      }

      [(AABatteryMonitorDaemon *)self _scheduleExpirationCheck];
    }

    v6 = updatedCopy;
  }

  _objc_release_x1(paired, v6);
}

- (BOOL)_applyPrefsOverrideToDevice:(id)device forBatteryType:(int64_t)type
{
  deviceCopy = device;
  prefsBatteryOverrides = [(AABatteryMonitorDaemon *)self prefsBatteryOverrides];
  v8 = [NSNumber numberWithInteger:type];
  v9 = [prefsBatteryOverrides objectForKeyedSubscript:v8];

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