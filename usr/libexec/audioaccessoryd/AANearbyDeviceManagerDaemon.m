@interface AANearbyDeviceManagerDaemon
+ (id)sharedAANearbyDeviceManagerDaemon;
- (AANearbyDeviceManagerDaemon)init;
- (BOOL)_loadAADevicesPropertyFromPairedDeviceForDevice:(id)a3;
- (NSMutableDictionary)nearbyDevicesMap;
- (id)_caseDeviceWithPrimaryIdentifier:(id)a3;
- (id)descriptionWithLevel:(int)a3;
- (id)deviceWithBluetoothAddress:(id)a3;
- (id)deviceWithIdentifier:(id)a3;
- (id)nearbyDevices;
- (void)_aaPairedDeviceDiscoveryEnsureStarted;
- (void)_aaPairedDeviceDiscoveryEnsureStopped;
- (void)_activate;
- (void)_batterMonitorEnsureStarted;
- (void)_batterMonitorEnsureStopped;
- (void)_cbDeviceFound:(id)a3;
- (void)_cbDeviceLost:(id)a3;
- (void)_cbDiscoveryEnsureStarted;
- (void)_cbDiscoveryEnsureStopped;
- (void)_deviceRemovedWithIdentifier:(id)a3;
- (void)_deviceUpdated:(id)a3;
- (void)_ensureOSTransaction;
- (void)_handleXPCLaunchEvent;
- (void)_invalidate;
- (void)_lookupPrimaryDeviceForCase:(id)a3 caseUpdated:(BOOL)a4;
- (void)_nearbyDeviceLost:(id)a3;
- (void)_nearbyDeviceUpdated:(id)a3;
- (void)_notifySubscribersInvalidated;
- (void)_releaseOSTransaction;
- (void)_updateForDeviceWithIdentifier:(id)a3 cbDevice:(id)a4 payload:(id)a5;
- (void)activate;
- (void)invalidate;
- (void)pairedDeviceLost:(id)a3;
- (void)pairedDeviceUpdated:(id)a3;
- (void)subscribeToNearbyDiscovery:(id)a3;
- (void)unsubscribeFromNearbyDiscovery:(id)a3;
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

- (id)descriptionWithLevel:(int)a3
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
  v4 = [(AANearbyDeviceManagerDaemon *)self nearbyDevices];
  v5 = v18;
  v15 = v18[5];
  v6 = [v4 count];
  v11 = [(AANearbyDeviceManagerDaemon *)self cbDiscovery];
  NSAppendPrintF();
  objc_storeStrong(v5 + 5, v15);

  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000D2430;
  v14[3] = &unk_1002BB308;
  v14[4] = &v17;
  [v4 enumerateKeysAndObjectsUsingBlock:{v14, v6, v11}];
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
  v3 = [(AANearbyDeviceManagerDaemon *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D2508;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(v3, block);
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
  v3 = [(AANearbyDeviceManagerDaemon *)self dispatchQueue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D2638;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(v3, block);
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

  v3 = [(AANearbyDeviceManagerDaemon *)self dispatchQueue];
  xpc_set_event_stream_handler("com.apple.bluetooth.discovery", v3, &stru_1002BB328);
}

- (void)_ensureOSTransaction
{
  v3 = [(AANearbyDeviceManagerDaemon *)self transaction];

  if (!v3)
  {
    if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FA094();
    }

    v4 = os_transaction_create();
    [(AANearbyDeviceManagerDaemon *)self setTransaction:v4];

    v5 = [(AANearbyDeviceManagerDaemon *)self transaction];

    if (!v5 && dword_1002F7380 <= 60 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FA0B0();
    }
  }
}

- (void)_releaseOSTransaction
{
  v3 = [(AANearbyDeviceManagerDaemon *)self transaction];

  if (v3)
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
  v4 = [(AANearbyDeviceManagerDaemon *)self dispatchQueue];
  [v3 setDispatchQueue:v4];

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
  v3 = [(AANearbyDeviceManagerDaemon *)self cbDiscovery];

  if (v3)
  {
    if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FA268();
    }

    v4 = [(AANearbyDeviceManagerDaemon *)self cbDiscovery];
    [v4 invalidate];

    [(AANearbyDeviceManagerDaemon *)self setCbDiscovery:0];
  }
}

- (void)_cbDeviceLost:(id)a3
{
  v7 = a3;
  v4 = [(AANearbyDeviceManagerDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v4);

  v5 = [v7 identifier];
  if (v5)
  {
    v6 = [(AANearbyDeviceManagerDaemon *)self deviceWithIdentifier:v5];
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

- (void)_updateForDeviceWithIdentifier:(id)a3 cbDevice:(id)a4 payload:(id)a5
{
  v18 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [(AANearbyDeviceManagerDaemon *)self deviceWithIdentifier:v18];
  if (v10)
  {
    v11 = v10;
    if ([(AANearbyDevice *)v10 updateWithCBDevice:v8])
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
    v11 = [[AANearbyDevice alloc] initWithIdentifier:v18];
    [(AANearbyDeviceManagerDaemon *)self _deviceUpdated:v11];
    v12 = [(AANearbyDevice *)v11 updateWithCBDevice:v8];
    if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FA340();
    }
  }

  v13 = [(AANearbyDevice *)v11 updateWithProximityPairingPayload:v9];
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
      v17 = [(AANearbyDevice *)v11 bluetoothAddress];
      [v16 handleHealthKitDataWritePropertyToggled:v17];
    }

    if (v14)
    {
      [(AANearbyDeviceManagerDaemon *)self _nearbyDeviceUpdated:v11];
    }
  }
}

- (void)_batterMonitorEnsureStarted
{
  v3 = [(AANearbyDeviceManagerDaemon *)self batteryMonitor];

  if (!v3)
  {
    v4 = +[AABatteryMonitorDaemon sharedAABatteryMonitorDaemon];
    [(AANearbyDeviceManagerDaemon *)self setBatteryMonitor:v4];
  }
}

- (void)_batterMonitorEnsureStopped
{
  v3 = [(AANearbyDeviceManagerDaemon *)self batteryMonitor];

  if (v3)
  {
    v4 = [(AANearbyDeviceManagerDaemon *)self batteryMonitor];
    [v4 invalidate];

    [(AANearbyDeviceManagerDaemon *)self setBatteryMonitor:0];
  }
}

- (void)_deviceUpdated:(id)a3
{
  v10 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = v10;
  nearbyDevicesMap = v4->_nearbyDevicesMap;
  if (!nearbyDevicesMap)
  {
    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = v4->_nearbyDevicesMap;
    v4->_nearbyDevicesMap = v7;

    if (dword_1002F7380 <= 10 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    [(AANearbyDeviceManagerDaemon *)v4 _ensureOSTransaction];
    nearbyDevicesMap = v4->_nearbyDevicesMap;
    v5 = v10;
  }

  v9 = [v5 identifier];
  [(NSMutableDictionary *)nearbyDevicesMap setObject:v10 forKeyedSubscript:v9];

  objc_sync_exit(v4);
}

- (void)_deviceRemovedWithIdentifier:(id)a3
{
  v7 = a3;
  v4 = self;
  objc_sync_enter(v4);
  nearbyDevicesMap = v4->_nearbyDevicesMap;
  if (nearbyDevicesMap)
  {
    [(NSMutableDictionary *)nearbyDevicesMap setObject:0 forKeyedSubscript:v7];
    if (![(NSMutableDictionary *)v4->_nearbyDevicesMap count])
    {
      if (dword_1002F7380 <= 10 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v6 = v4->_nearbyDevicesMap;
      v4->_nearbyDevicesMap = 0;

      [(AANearbyDeviceManagerDaemon *)v4 _releaseOSTransaction];
    }
  }

  objc_sync_exit(v4);
}

- (id)nearbyDevices
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_nearbyDevicesMap)
  {
    v3 = [[NSMutableDictionary alloc] initWithDictionary:v2->_nearbyDevicesMap copyItems:1];
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v2);

  return v3;
}

- (id)deviceWithBluetoothAddress:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(NSMutableDictionary *)v5->_nearbyDevicesMap allValues];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 bluetoothAddress];
        v12 = v4;
        v13 = v12;
        if (v11 == v12)
        {

LABEL_15:
          v7 = v10;
          goto LABEL_16;
        }

        if ((v4 == 0) != (v11 != 0))
        {
          v14 = [v11 isEqual:v12];

          if (v14)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  objc_sync_exit(v5);

  return v7;
}

- (id)deviceWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(NSMutableDictionary *)v5->_nearbyDevicesMap objectForKeyedSubscript:v4];
  objc_sync_exit(v5);

  return v6;
}

- (void)_nearbyDeviceLost:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  [(AANearbyDeviceManagerDaemon *)self _deviceRemovedWithIdentifier:v5];

  if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FA3C0();
  }

  v6 = [(AANearbyDeviceManagerDaemon *)self batteryMonitor];
  [v6 nearbyDeviceLost:v4];

  v7 = [(AANearbyDeviceManagerDaemon *)self subscribers];

  if (v7)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [(AANearbyDeviceManagerDaemon *)self subscribers];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * i) nearbyDeviceLost:v4];
        }

        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (void)_nearbyDeviceUpdated:(id)a3
{
  v4 = a3;
  if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FA400();
  }

  v5 = [v4 copy];
  v6 = [(AANearbyDeviceManagerDaemon *)self batteryMonitor];
  [v6 nearbyDeviceUpdated:v5];

  v7 = [(AANearbyDeviceManagerDaemon *)self subscribers];

  if (v7)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v8 = [(AANearbyDeviceManagerDaemon *)self subscribers];
    v9 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
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
            objc_enumerationMutation(v8);
          }

          [*(*(&v13 + 1) + 8 * i) nearbyDeviceUpdated:v5];
        }

        v10 = [v8 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v10);
    }
  }
}

- (NSMutableDictionary)nearbyDevicesMap
{
  v2 = self;
  objc_sync_enter(v2);
  v3 = [(NSMutableDictionary *)v2->_nearbyDevicesMap copy];
  objc_sync_exit(v2);

  return v3;
}

- (id)_caseDeviceWithPrimaryIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = [(NSMutableDictionary *)v5->_nearbyDevicesMap allValues];
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = *v17;
    while (2)
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v6);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v10 primaryDeviceIdentifier];
        v12 = v4;
        v13 = v12;
        if (v11 == v12)
        {

LABEL_15:
          v7 = v10;
          goto LABEL_16;
        }

        if ((v4 == 0) != (v11 != 0))
        {
          v14 = [v11 isEqual:v12];

          if (v14)
          {
            goto LABEL_15;
          }
        }

        else
        {
        }
      }

      v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

LABEL_16:

  objc_sync_exit(v5);

  return v7;
}

- (void)_lookupPrimaryDeviceForCase:(id)a3 caseUpdated:(BOOL)a4
{
  v6 = a3;
  v7 = objc_alloc_init(CBDevice);
  v8 = [v6 identifier];
  [v7 setFindMyCaseIdentifier:v8];

  v9 = [(AANearbyDeviceManagerDaemon *)self cbDiscovery];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000D3D90;
  v11[3] = &unk_1002BB350;
  v14 = a4;
  v12 = v6;
  v13 = self;
  v10 = v6;
  [v9 devicesMatchingPropertiesOn:v7 exactMatch:1 completionHandler:v11];
}

- (void)_notifySubscribersInvalidated
{
  v3 = [(AANearbyDeviceManagerDaemon *)self subscribers];

  if (v3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v4 = [(AANearbyDeviceManagerDaemon *)self subscribers];
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
          if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
          {
            sub_1001FA5F8(v9);
          }

          [v9 aaNearbyDeviceDiscoveryInvalidated];
          v10 = [(AANearbyDeviceManagerDaemon *)self subscribers];
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

- (void)subscribeToNearbyDiscovery:(id)a3
{
  v4 = a3;
  v5 = [(AANearbyDeviceManagerDaemon *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D4164;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)unsubscribeFromNearbyDiscovery:(id)a3
{
  v4 = a3;
  v5 = [(AANearbyDeviceManagerDaemon *)self dispatchQueue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D43C4;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)_aaPairedDeviceDiscoveryEnsureStarted
{
  v3 = [(AANearbyDeviceManagerDaemon *)self pairedDeviceDaemon];
  [v3 subscribeToPairedDiscovery:self];
}

- (void)_aaPairedDeviceDiscoveryEnsureStopped
{
  v3 = [(AANearbyDeviceManagerDaemon *)self pairedDeviceDaemon];
  [v3 unsubscribeFromPairedDiscovery:self];
}

- (void)pairedDeviceUpdated:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D45B8;
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
  v7[2] = sub_1001F9E88;
  v7[3] = &unk_1002B6D18;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_cbDeviceFound:(id)a3
{
  v4 = a3;
  v18 = self;
  v5 = [(AANearbyDeviceManagerDaemon *)self dispatchQueue];
  dispatch_assert_queue_V2(v5);

  v19 = [v4 identifier];
  if (v19)
  {
    v6 = [v4 bleAppleManufacturerData];
    v7 = [AAManufacturerDataAdvertisement manufacturerDataWithData:v6];

    v8 = [v7 payloads];

    if (v8)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v9 = [v7 payloads];
      v10 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v20 + 1) + 8 * i);
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v15 = [v4 discoveryFlags];
              v16 = [v4 discoveryFlags];
              v17 = [v14 pid] - 8190 < 0x6E;
              if ((v15 & 0x800000) != 0 || (v17 & (v16 >> 7)) != 0)
              {
                [(AANearbyDeviceManagerDaemon *)v18 _updateForDeviceWithIdentifier:v19 cbDevice:v4 payload:v14];
              }
            }
          }

          v11 = [v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        }

        while (v11);
      }
    }
  }
}

- (BOOL)_loadAADevicesPropertyFromPairedDeviceForDevice:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(AANearbyDeviceManagerDaemon *)self pairedDeviceDaemon];
  v7 = [v6 deviceWithIdentifier:v5];

  if (v7)
  {
    if (dword_1002F7380 <= 30 && (dword_1002F7380 != -1 || _LogCategory_Initialize()))
    {
      v10 = v7;
      LogPrintF();
    }

    v8 = [v4 updateWithPairedDevice:{v7, v10}];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end