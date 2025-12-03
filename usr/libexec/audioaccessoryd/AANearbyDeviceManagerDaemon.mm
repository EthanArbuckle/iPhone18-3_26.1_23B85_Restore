@interface AANearbyDeviceManagerDaemon
+ (id)sharedAANearbyDeviceManagerDaemon;
- (AANearbyDeviceManagerDaemon)init;
- (BOOL)_loadAADevicesPropertyFromPairedDeviceForDevice:(id)device;
- (NSMutableDictionary)nearbyDevicesMap;
- (id)_caseDeviceWithPrimaryIdentifier:(id)identifier;
- (id)descriptionWithLevel:(int)level;
- (id)deviceWithBluetoothAddress:(id)address;
- (id)deviceWithIdentifier:(id)identifier;
- (id)nearbyDevices;
- (void)_aaPairedDeviceDiscoveryEnsureStarted;
- (void)_aaPairedDeviceDiscoveryEnsureStopped;
- (void)_activate;
- (void)_batterMonitorEnsureStarted;
- (void)_batterMonitorEnsureStopped;
- (void)_cbDeviceFound:(id)found;
- (void)_cbDeviceLost:(id)lost;
- (void)_cbDiscoveryEnsureStarted;
- (void)_cbDiscoveryEnsureStopped;
- (void)_deviceRemovedWithIdentifier:(id)identifier;
- (void)_deviceUpdated:(id)updated;
- (void)_ensureOSTransaction;
- (void)_handleXPCLaunchEvent;
- (void)_invalidate;
- (void)_lookupPrimaryDeviceForCase:(id)case caseUpdated:(BOOL)updated;
- (void)_nearbyDeviceLost:(id)lost;
- (void)_nearbyDeviceUpdated:(id)updated;
- (void)_notifySubscribersInvalidated;
- (void)_releaseOSTransaction;
- (void)_updateForDeviceWithIdentifier:(id)identifier cbDevice:(id)device payload:(id)payload;
- (void)activate;
- (void)invalidate;
- (void)pairedDeviceLost:(id)lost;
- (void)pairedDeviceUpdated:(id)updated;
- (void)subscribeToNearbyDiscovery:(id)discovery;
- (void)unsubscribeFromNearbyDiscovery:(id)discovery;
@end

@implementation AANearbyDeviceManagerDaemon

+ (id)sharedAANearbyDeviceManagerDaemon
{
  if (qword_1002FA218 != -1)
  {
    sub_1001F9FD0();
  }

  v3 = qword_1002FA210;

  return v3;
}

- (AANearbyDeviceManagerDaemon)init
{
  v8.receiver = self;
  v8.super_class = AANearbyDeviceManagerDaemon;
  v2 = [(AANearbyDeviceManagerDaemon *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AANearbyDeviceManagerDaemon", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (id)descriptionWithLevel:(int)level
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_1000039D8;
  v21 = sub_100003898;
  v22 = 0;
  obj = 0;
  NSAppendPrintF_safe();
  objc_storeStrong(&v22, 0);
  nearbyDevices = [(AANearbyDeviceManagerDaemon *)self nearbyDevices];
  v5 = v18;
  v15 = v18[5];
  v6 = [nearbyDevices count];
  cbDiscovery = [(AANearbyDeviceManagerDaemon *)self cbDiscovery];
  NSAppendPrintF();
  objc_storeStrong(v5 + 5, v15);

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000D2430;
  v14[3] = &unk_1002BB308;
  v14[4] = &v17;
  [nearbyDevices enumerateKeysAndObjectsUsingBlock:{v14, v6, cbDiscovery}];
  v7 = v18;
  v13 = v18[5];
  NSAppendPrintF();
  objc_storeStrong(v7 + 5, v13);
  v8 = v18;
  v12 = v18[5];
  NSAppendPrintF();
  objc_storeStrong(v8 + 5, v12);
  v9 = v18[5];

  _Block_object_dispose(&v17, 8);

  return v9;
}

- (void)activate
{
  dispatchQueue = [(AANearbyDeviceManagerDaemon *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D2508;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (![(AANearbyDeviceManagerDaemon *)self activateCalled])
  {
    [(AANearbyDeviceManagerDaemon *)self setActivateCalled:1];
    if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F9FE4();
    }

    [(AANearbyDeviceManagerDaemon *)self _cbDiscoveryEnsureStarted];
    [(AANearbyDeviceManagerDaemon *)self _batterMonitorEnsureStarted];
    [(AANearbyDeviceManagerDaemon *)self _handleXPCLaunchEvent];

    [(AANearbyDeviceManagerDaemon *)self _aaPairedDeviceDiscoveryEnsureStarted];
  }
}

- (void)invalidate
{
  dispatchQueue = [(AANearbyDeviceManagerDaemon *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D2638;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FA000();
  }

  [(AANearbyDeviceManagerDaemon *)self _cbDiscoveryEnsureStopped];
  [(AANearbyDeviceManagerDaemon *)self _batterMonitorEnsureStopped];
  [(AANearbyDeviceManagerDaemon *)self _notifySubscribersInvalidated];
  [(AANearbyDeviceManagerDaemon *)self _aaPairedDeviceDiscoveryEnsureStopped];
  self->_activateCalled = 0;
}

- (void)_handleXPCLaunchEvent
{
  if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FA01C();
  }

  dispatchQueue = [(AANearbyDeviceManagerDaemon *)self dispatchQueue];
  xpc_set_event_stream_handler("com.apple.bluetooth.discovery", dispatchQueue, &stru_1002BB328);
}

- (void)_ensureOSTransaction
{
  transaction = [(AANearbyDeviceManagerDaemon *)self transaction];

  if (!transaction)
  {
    if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FA094();
    }

    v4 = os_transaction_create();
    [(AANearbyDeviceManagerDaemon *)self setTransaction:v4];

    transaction2 = [(AANearbyDeviceManagerDaemon *)self transaction];

    if (!transaction2 && dword_1002F7380 <= 60 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FA0B0();
    }
  }
}

- (void)_releaseOSTransaction
{
  transaction = [(AANearbyDeviceManagerDaemon *)self transaction];

  if (transaction)
  {
    [(AANearbyDeviceManagerDaemon *)self setTransaction:0];
    if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FA0D0();
    }
  }
}

- (void)_cbDiscoveryEnsureStarted
{
  if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FA0EC();
  }

  v3 = objc_alloc_init(CBDiscovery);
  dispatchQueue = [(AANearbyDeviceManagerDaemon *)self dispatchQueue];
  [v3 setDispatchQueue:dispatchQueue];

  [v3 setLabel:@"NearbyAudioAccessory"];
  [v3 setDiscoveryFlags:{objc_msgSend(v3, "discoveryFlags") | 0x8000}];
  [v3 setDiscoveryFlags:{objc_msgSend(v3, "discoveryFlags") | 0x80}];
  [v3 setDiscoveryFlags:{objc_msgSend(v3, "discoveryFlags") | 0x100000000000}];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10000327C;
  v9[3] = &unk_1002B6DA8;
  v9[4] = v3;
  v9[5] = self;
  [v3 setDeviceFoundHandler:v9];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000034BC;
  v8[3] = &unk_1002B6DA8;
  v8[4] = v3;
  v8[5] = self;
  [v3 setDeviceLostHandler:v8];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D2B80;
  v7[3] = &unk_1002B6D18;
  v7[4] = v3;
  v7[5] = self;
  [v3 setInterruptionHandler:v7];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000D2C00;
  v6[3] = &unk_1002B6D18;
  v6[4] = v3;
  v6[5] = self;
  [v3 setInvalidationHandler:v6];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000D2CA8;
  v5[3] = &unk_1002B68A8;
  v5[4] = v3;
  v5[5] = self;
  [v3 activateWithCompletion:v5];
  [(AANearbyDeviceManagerDaemon *)self setCbDiscovery:v3];
}

- (void)_cbDiscoveryEnsureStopped
{
  cbDiscovery = [(AANearbyDeviceManagerDaemon *)self cbDiscovery];

  if (cbDiscovery)
  {
    if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FA268();
    }

    cbDiscovery2 = [(AANearbyDeviceManagerDaemon *)self cbDiscovery];
    [cbDiscovery2 invalidate];

    [(AANearbyDeviceManagerDaemon *)self setCbDiscovery:0];
  }
}

- (void)_cbDeviceLost:(id)lost
{
  lostCopy = lost;
  dispatchQueue = [(AANearbyDeviceManagerDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  identifier = [lostCopy identifier];
  if (identifier)
  {
    v6 = [(AANearbyDeviceManagerDaemon *)self deviceWithIdentifier:identifier];
    if (v6)
    {
      [(AANearbyDeviceManagerDaemon *)self _nearbyDeviceLost:v6];
    }
  }

  else
  {
    sub_1001FA284();
  }
}

- (void)_updateForDeviceWithIdentifier:(id)identifier cbDevice:(id)device payload:(id)payload
{
  identifierCopy = identifier;
  deviceCopy = device;
  payloadCopy = payload;
  v10 = [(AANearbyDeviceManagerDaemon *)self deviceWithIdentifier:identifierCopy];
  if (v10)
  {
    v11 = v10;
    if ([(AANearbyDevice *)v10 updateWithCBDevice:deviceCopy])
    {
      if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FA300();
      }

      v12 = 1;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v11 = [[AANearbyDevice alloc] initWithIdentifier:identifierCopy];
    [(AANearbyDeviceManagerDaemon *)self _deviceUpdated:v11];
    v12 = [(AANearbyDevice *)v11 updateWithCBDevice:deviceCopy];
    if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FA340();
    }
  }

  v13 = [(AANearbyDevice *)v11 updateWithProximityPairingPayload:payloadCopy];
  if (v13 && dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FA380();
  }

  v14 = v12 | v13;
  if ([(AANearbyDevice *)v11 isCase]&& ([(AANearbyDevice *)v11 primaryDeviceIdentifier], v15 = objc_claimAutoreleasedReturnValue(), v15, !v15))
  {
    [(AANearbyDeviceManagerDaemon *)self _lookupPrimaryDeviceForCase:v11 caseUpdated:v14];
  }

  else
  {
    if (![(AANearbyDevice *)v11 isCase]&& [(AANearbyDeviceManagerDaemon *)self _loadAADevicesPropertyFromPairedDeviceForDevice:v11])
    {
      v16 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
      bluetoothAddress = [(AANearbyDevice *)v11 bluetoothAddress];
      [v16 handleHealthKitDataWritePropertyToggled:bluetoothAddress];
    }

    if (v14)
    {
      [(AANearbyDeviceManagerDaemon *)self _nearbyDeviceUpdated:v11];
    }
  }
}

- (void)_batterMonitorEnsureStarted
{
  batteryMonitor = [(AANearbyDeviceManagerDaemon *)self batteryMonitor];

  if (!batteryMonitor)
  {
    v4 = +[AABatteryMonitorDaemon sharedAABatteryMonitorDaemon];
    [(AANearbyDeviceManagerDaemon *)self setBatteryMonitor:v4];
  }
}

- (void)_batterMonitorEnsureStopped
{
  batteryMonitor = [(AANearbyDeviceManagerDaemon *)self batteryMonitor];

  if (batteryMonitor)
  {
    batteryMonitor2 = [(AANearbyDeviceManagerDaemon *)self batteryMonitor];
    [batteryMonitor2 invalidate];

    [(AANearbyDeviceManagerDaemon *)self setBatteryMonitor:0];
  }
}

- (void)_deviceUpdated:(id)updated
{
  updatedCopy = updated;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = updatedCopy;
  nearbyDevicesMap = selfCopy->_nearbyDevicesMap;
  if (!nearbyDevicesMap)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = selfCopy->_nearbyDevicesMap;
    selfCopy->_nearbyDevicesMap = v7;

    if (dword_1002F7380 <= 10 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(AANearbyDeviceManagerDaemon *)selfCopy _ensureOSTransaction];
    nearbyDevicesMap = selfCopy->_nearbyDevicesMap;
    v5 = updatedCopy;
  }

  identifier = [v5 identifier];
  [(NSMutableDictionary *)nearbyDevicesMap setObject:updatedCopy forKeyedSubscript:identifier];

  objc_sync_exit(selfCopy);
}

- (void)_deviceRemovedWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  nearbyDevicesMap = selfCopy->_nearbyDevicesMap;
  if (nearbyDevicesMap)
  {
    [(NSMutableDictionary *)nearbyDevicesMap setObject:0 forKeyedSubscript:identifierCopy];
    if (![(NSMutableDictionary *)selfCopy->_nearbyDevicesMap count])
    {
      if (dword_1002F7380 <= 10 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v6 = selfCopy->_nearbyDevicesMap;
      selfCopy->_nearbyDevicesMap = 0;

      [(AANearbyDeviceManagerDaemon *)selfCopy _releaseOSTransaction];
    }
  }

  objc_sync_exit(selfCopy);
}

- (id)nearbyDevices
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_nearbyDevicesMap)
  {
    v3 = [[NSMutableDictionary alloc] initWithDictionary:selfCopy->_nearbyDevicesMap copyItems:1];
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (id)deviceWithBluetoothAddress:(id)address
{
  addressCopy = address;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues = [(NSMutableDictionary *)selfCopy->_nearbyDevicesMap allValues];
  v7 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        bluetoothAddress = [v10 bluetoothAddress];
        v12 = addressCopy;
        v13 = v12;
        if (bluetoothAddress == v12)
        {

LABEL_15:
          v7 = v10;
          goto LABEL_16;
        }

        if ((addressCopy == 0) != (bluetoothAddress != 0))
        {
          v14 = [bluetoothAddress isEqual:v12];

          if (v14)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)deviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(NSMutableDictionary *)selfCopy->_nearbyDevicesMap objectForKeyedSubscript:identifierCopy];
  objc_sync_exit(selfCopy);

  return v6;
}

- (void)_nearbyDeviceLost:(id)lost
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  [(AANearbyDeviceManagerDaemon *)self _deviceRemovedWithIdentifier:identifier];

  if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FA3C0();
  }

  batteryMonitor = [(AANearbyDeviceManagerDaemon *)self batteryMonitor];
  [batteryMonitor nearbyDeviceLost:lostCopy];

  subscribers = [(AANearbyDeviceManagerDaemon *)self subscribers];

  if (subscribers)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    subscribers2 = [(AANearbyDeviceManagerDaemon *)self subscribers];
    v9 = [subscribers2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(subscribers2);
          }

          [*(*(&v13 + 1) + 8 * i) nearbyDeviceLost:lostCopy];
        }

        v10 = [subscribers2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)_nearbyDeviceUpdated:(id)updated
{
  updatedCopy = updated;
  if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FA400();
  }

  v5 = [updatedCopy copy];
  batteryMonitor = [(AANearbyDeviceManagerDaemon *)self batteryMonitor];
  [batteryMonitor nearbyDeviceUpdated:v5];

  subscribers = [(AANearbyDeviceManagerDaemon *)self subscribers];

  if (subscribers)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    subscribers2 = [(AANearbyDeviceManagerDaemon *)self subscribers];
    v9 = [subscribers2 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v14;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v14 != v11)
          {
            objc_enumerationMutation(subscribers2);
          }

          [*(*(&v13 + 1) + 8 * i) nearbyDeviceUpdated:v5];
        }

        v10 = [subscribers2 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (NSMutableDictionary)nearbyDevicesMap
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = [(NSMutableDictionary *)selfCopy->_nearbyDevicesMap copy];
  objc_sync_exit(selfCopy);

  return v3;
}

- (id)_caseDeviceWithPrimaryIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  allValues = [(NSMutableDictionary *)selfCopy->_nearbyDevicesMap allValues];
  v7 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(allValues);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        primaryDeviceIdentifier = [v10 primaryDeviceIdentifier];
        v12 = identifierCopy;
        v13 = v12;
        if (primaryDeviceIdentifier == v12)
        {

LABEL_15:
          v7 = v10;
          goto LABEL_16;
        }

        if ((identifierCopy == 0) != (primaryDeviceIdentifier != 0))
        {
          v14 = [primaryDeviceIdentifier isEqual:v12];

          if (v14)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v7 = [allValues countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  objc_sync_exit(selfCopy);

  return v7;
}

- (void)_lookupPrimaryDeviceForCase:(id)case caseUpdated:(BOOL)updated
{
  caseCopy = case;
  v7 = objc_alloc_init(CBDevice);
  identifier = [caseCopy identifier];
  [v7 setFindMyCaseIdentifier:identifier];

  cbDiscovery = [(AANearbyDeviceManagerDaemon *)self cbDiscovery];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D3D90;
  v11[3] = &unk_1002BB350;
  updatedCopy = updated;
  v12 = caseCopy;
  selfCopy = self;
  v10 = caseCopy;
  [cbDiscovery devicesMatchingPropertiesOn:v7 exactMatch:1 completionHandler:v11];
}

- (void)_notifySubscribersInvalidated
{
  subscribers = [(AANearbyDeviceManagerDaemon *)self subscribers];

  if (subscribers)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    subscribers2 = [(AANearbyDeviceManagerDaemon *)self subscribers];
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
          if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
          {
            sub_1001FA5F8(v9);
          }

          [v9 aaNearbyDeviceDiscoveryInvalidated];
          subscribers3 = [(AANearbyDeviceManagerDaemon *)self subscribers];
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

- (void)subscribeToNearbyDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  dispatchQueue = [(AANearbyDeviceManagerDaemon *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D4164;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = discoveryCopy;
  v6 = discoveryCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)unsubscribeFromNearbyDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  dispatchQueue = [(AANearbyDeviceManagerDaemon *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D43C4;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = discoveryCopy;
  v6 = discoveryCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_aaPairedDeviceDiscoveryEnsureStarted
{
  pairedDeviceDaemon = [(AANearbyDeviceManagerDaemon *)self pairedDeviceDaemon];
  [pairedDeviceDaemon subscribeToPairedDiscovery:self];
}

- (void)_aaPairedDeviceDiscoveryEnsureStopped
{
  pairedDeviceDaemon = [(AANearbyDeviceManagerDaemon *)self pairedDeviceDaemon];
  [pairedDeviceDaemon unsubscribeFromPairedDiscovery:self];
}

- (void)pairedDeviceUpdated:(id)updated
{
  updatedCopy = updated;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D45B8;
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
  v7[2] = sub_1001F9E88;
  v7[3] = &unk_1002B6D18;
  v8 = lostCopy;
  selfCopy = self;
  v6 = lostCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_cbDeviceFound:(id)found
{
  foundCopy = found;
  selfCopy = self;
  dispatchQueue = [(AANearbyDeviceManagerDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(dispatchQueue);

  identifier = [foundCopy identifier];
  if (identifier)
  {
    bleAppleManufacturerData = [foundCopy bleAppleManufacturerData];
    v7 = [AAManufacturerDataAdvertisement manufacturerDataWithData:bleAppleManufacturerData];

    payloads = [v7 payloads];

    if (payloads)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      payloads2 = [v7 payloads];
      v10 = [payloads2 countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v21;
        do
        {
          for (i = 0; i != v11; i = i + 1)
          {
            if (*v21 != v12)
            {
              objc_enumerationMutation(payloads2);
            }

            v14 = *(*(&v20 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              discoveryFlags = [foundCopy discoveryFlags];
              discoveryFlags2 = [foundCopy discoveryFlags];
              v17 = [v14 pid] - 8190 < 0x6E;
              if ((discoveryFlags & 0x800000) != 0 || (v17 & (discoveryFlags2 >> 7)) != 0)
              {
                [(AANearbyDeviceManagerDaemon *)selfCopy _updateForDeviceWithIdentifier:identifier cbDevice:foundCopy payload:v14];
              }
            }
          }

          v11 = [payloads2 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v11);
      }
    }
  }
}

- (BOOL)_loadAADevicesPropertyFromPairedDeviceForDevice:(id)device
{
  deviceCopy = device;
  identifier = [deviceCopy identifier];
  pairedDeviceDaemon = [(AANearbyDeviceManagerDaemon *)self pairedDeviceDaemon];
  v7 = [pairedDeviceDaemon deviceWithIdentifier:identifier];

  if (v7)
  {
    if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      v10 = v7;
      LogPrintF();
    }

    v8 = [deviceCopy updateWithPairedDevice:{v7, v10}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end