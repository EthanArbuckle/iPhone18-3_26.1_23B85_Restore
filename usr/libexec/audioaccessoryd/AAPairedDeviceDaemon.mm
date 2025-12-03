@interface AAPairedDeviceDaemon
+ (id)sharedAAPairedDeviceDaemon;
- (AAPairedDeviceDaemon)init;
- (BOOL)_loadDeviceRecordForDevice:(id)device;
- (BOOL)isDevicePairedWithBluetoothAddress:(id)address;
- (BOOL)shouldBackoffSavingToCloudForDevice:(id)device;
- (id)_deviceWithBluetoothAddress:(id)address;
- (id)_deviceWithIdentifier:(id)identifier;
- (id)descriptionWithLevel:(int)level;
- (id)deviceWithBluetoothAddress:(id)address;
- (id)deviceWithIdentifier:(id)identifier;
- (id)pairedDevices;
- (void)_aaControllerEnsureStarted;
- (void)_aaControllerEnsureStopped;
- (void)_aaDeviceRecordsRemovedWithRecords:(id)records;
- (void)_aaDeviceRecordsUpdatedWithRecords:(id)records;
- (void)_accessoryDeviceInfoChanged:(id)changed;
- (void)_activate;
- (void)_addDeviceToMap:(id)map;
- (void)_cbControllerEnsureStarted;
- (void)_cbControllerEnsureStopped;
- (void)_cbDiscoveryEnsureStarted;
- (void)_cbDiscoveryEnsureStopped;
- (void)_cloudSyncEnsureStarted;
- (void)_cloudSyncEnsureStopped;
- (void)_coreBluetoothDeviceFound:(id)found;
- (void)_coreBluetoothDeviceLost:(id)lost;
- (void)_invalidate;
- (void)_notifySubscribersDeviceLost:(id)lost;
- (void)_notifySubscribersDeviceUpdated:(id)updated;
- (void)_notifySubscribersInvalidated;
- (void)_pairedDeviceLost:(id)lost;
- (void)_pairedDeviceUpdated:(id)updated;
- (void)_removeDeviceFromMapWithIdentifier:(id)identifier;
- (void)_saveDeviceRecordForDevice:(id)device;
- (void)_unpairDeviceWithIdentifier:(id)identifier;
- (void)_updateCloudRecordIfNeeded:(id)needed;
- (void)aaDeviceRecordsRemovedWithRecords:(id)records;
- (void)aaDeviceRecordsUpdatedWithRecords:(id)records;
- (void)activate;
- (void)invalidate;
- (void)subscribeToPairedDiscovery:(id)discovery;
- (void)unpairDeviceWithIdentifier:(id)identifier;
- (void)unsubscribeFromPairedDiscovery:(id)discovery;
- (void)updatePairedDeviceWithIdentifier:(id)identifier withConfig:(id)config;
@end

@implementation AAPairedDeviceDaemon

+ (id)sharedAAPairedDeviceDaemon
{
  if (qword_1002FA048 != -1)
  {
    sub_1001D2FC4();
  }

  v3 = qword_1002FA040;

  return v3;
}

- (AAPairedDeviceDaemon)init
{
  v8.receiver = self;
  v8.super_class = AAPairedDeviceDaemon;
  v2 = [(AAPairedDeviceDaemon *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AAPairedDeviceDaemon", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (id)descriptionWithLevel:(int)level
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_1000038D8;
  v22 = sub_100003818;
  v23 = 0;
  obj = 0;
  NSAppendPrintF_safe();
  objc_storeStrong(&v23, 0);
  v4 = self->_cloudSyncDeviceManager;
  if (v4)
  {
    v5 = v19;
    v16 = v19[5];
    NSAppendPrintF();
    objc_storeStrong(v5 + 5, v16);
  }

  pairedDevices = [(AAPairedDeviceDaemon *)self pairedDevices];
  v7 = v19;
  v15 = v19[5];
  v11 = [pairedDevices count];
  bluetoothDeviceDiscovery = self->_bluetoothDeviceDiscovery;
  NSAppendPrintF();
  objc_storeStrong(v7 + 5, v15);
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100011CB0;
  v14[3] = &unk_1002B6CC8;
  v14[4] = &v18;
  [pairedDevices enumerateKeysAndObjectsUsingBlock:{v14, v11, bluetoothDeviceDiscovery}];
  v8 = v19;
  v13 = v19[5];
  NSAppendPrintF();
  objc_storeStrong(v8 + 5, v13);
  v9 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v9;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011D74;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (!self->_activateCalled)
  {
    self->_activateCalled = 1;
    [(AAPairedDeviceDaemon *)self _aaControllerEnsureStarted];
    [(AAPairedDeviceDaemon *)self _cbControllerEnsureStarted];
    [(AAPairedDeviceDaemon *)self _cbDiscoveryEnsureStarted];
    [(AAPairedDeviceDaemon *)self _cloudSyncEnsureStarted];
    if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D2FD8();
    }
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100011E74;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D2FF4();
  }

  [(AAPairedDeviceDaemon *)self _aaControllerEnsureStopped];
  [(AAPairedDeviceDaemon *)self _cbControllerEnsureStopped];
  [(AAPairedDeviceDaemon *)self _cbDiscoveryEnsureStopped];
  [(AAPairedDeviceDaemon *)self _cloudSyncEnsureStopped];
  [(AAPairedDeviceDaemon *)self _notifySubscribersInvalidated];
  self->_activateCalled = 0;
}

- (BOOL)isDevicePairedWithBluetoothAddress:(id)address
{
  addressCopy = address;
  v5 = [(AAPairedDeviceDaemon *)self _deviceWithBluetoothAddress:addressCopy];

  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v7 = [self->_cloudSyncDeviceManager fetchMagicSettingsRecordSyncWithAddress:addressCopy];

    v6 = v7 != 0;
  }

  return v6;
}

- (void)_pairedDeviceLost:(id)lost
{
  lostCopy = lost;
  v7 = lostCopy;
  if (dword_1002F6070 <= 30)
  {
    if (dword_1002F6070 != -1 || (v5 = _LogCategory_Initialize(), lostCopy = v7, v5))
    {
      sub_1001D3010();
      lostCopy = v7;
    }
  }

  [lostCopy setPaired:0];
  identifier = [v7 identifier];
  [(AAPairedDeviceDaemon *)self _removeDeviceFromMapWithIdentifier:identifier];

  [(AAPairedDeviceDaemon *)self _notifySubscribersDeviceLost:v7];
}

- (void)_updateCloudRecordIfNeeded:(id)needed
{
  neededCopy = needed;
  if (([neededCopy pairedInfoComplete] & 1) == 0)
  {
    sub_1001D3050();
    goto LABEL_19;
  }

  if ([neededCopy setDefaultConfigurationsForCloudSyncedPropertiesIfNeeded])
  {
    if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D30B0();
    }

    if (([neededCopy heartRateMonitorCapabilityChanged] & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (![neededCopy heartRateMonitorCapabilityChanged])
  {
    goto LABEL_19;
  }

  if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D30F0();
  }

  [neededCopy setHeartRateMonitorCapabilityChanged:0];
LABEL_13:
  if ([(AAPairedDeviceDaemon *)self shouldBackoffSavingToCloudForDevice:neededCopy])
  {
    if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D3130();
    }
  }

  else
  {
    [(AAPairedDeviceDaemon *)self _saveDeviceRecordForDevice:neededCopy];
  }

LABEL_19:
}

- (void)_pairedDeviceUpdated:(id)updated
{
  updatedCopy = updated;
  v6 = updatedCopy;
  if (dword_1002F6070 <= 30)
  {
    if (dword_1002F6070 != -1 || (v5 = _LogCategory_Initialize(), updatedCopy = v6, v5))
    {
      sub_1001D314C();
      updatedCopy = v6;
    }
  }

  [(AAPairedDeviceDaemon *)self _notifySubscribersDeviceUpdated:updatedCopy];
}

- (void)_accessoryDeviceInfoChanged:(id)changed
{
  changedCopy = changed;
  v16 = 0;
  v5 = [[AudioAccessoryDeviceInfo alloc] initWithXPCObject:changedCopy error:&v16];

  v6 = v16;
  v7 = v6;
  if (v6)
  {
    if (sub_1001D318C(v6, &v17))
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  identifier = [(AudioAccessoryDeviceInfo *)v5 identifier];
  if (!identifier)
  {
    sub_1001D3230(0, &v17);
LABEL_20:
    identifier = v17;
    goto LABEL_15;
  }

  v9 = [(AAPairedDeviceDaemon *)self _deviceWithIdentifier:identifier];
  v10 = v9;
  if (!v9)
  {
    v11 = [[AudioAccessoryDevice alloc] initWithIdentifier:identifier];
    [v11 setPaired:1];
    [(AAPairedDeviceDaemon *)self _addDeviceToMap:v11];
    [v11 updateWithPairedAADeviceInfo:v5];
    goto LABEL_7;
  }

  v11 = v9;
  if ([v9 updateWithPairedAADeviceInfo:v5])
  {
LABEL_7:
    [(AAPairedDeviceDaemon *)self _updateCloudRecordIfNeeded:v11];
    if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
    {
      v12 = "updated";
      if (!v10)
      {
        v12 = "found";
      }

      v14 = v12;
      LogPrintF();
      [(AAPairedDeviceDaemon *)self _pairedDeviceUpdated:v11, v14, v5];
    }

    else
    {
      [(AAPairedDeviceDaemon *)self _pairedDeviceUpdated:v11, v13, v15];
    }
  }

LABEL_15:
LABEL_16:
}

- (void)updatePairedDeviceWithIdentifier:(id)identifier withConfig:(id)config
{
  identifierCopy = identifier;
  configCopy = config;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100012484;
  block[3] = &unk_1002B6CF0;
  block[4] = self;
  v12 = identifierCopy;
  v13 = configCopy;
  v9 = configCopy;
  v10 = identifierCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)unpairDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100012618;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = identifierCopy;
  v6 = identifierCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_unpairDeviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = objc_alloc_init(CBDevice);
  [v5 setIdentifier:identifierCopy];
  bluetoothController = self->_bluetoothController;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000126E8;
  v8[3] = &unk_1002B6A38;
  v9 = identifierCopy;
  v7 = identifierCopy;
  [(CBController *)bluetoothController deleteDevice:v5 completion:v8];
}

- (void)_aaControllerEnsureStarted
{
  p_aaController = &self->_aaController;
  v4 = self->_aaController;
  if (!v4)
  {
    v5 = objc_alloc_init(AAController);
    [(AAController *)v5 setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(p_aaController, v5);
    [(AAController *)v5 setInvalidationHandler:&stru_1002B6D38];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100012944;
    v9[3] = &unk_1002B68D0;
    v9[4] = self;
    [(AAController *)v5 setDeviceInfoChangeHandler:v9];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100012950;
    v6[3] = &unk_1002B68A8;
    v4 = v5;
    v7 = v4;
    selfCopy = self;
    [(AAController *)v4 activateWithCompletion:v6];
  }
}

- (void)_aaControllerEnsureStopped
{
  aaController = self->_aaController;
  if (aaController)
  {
    [(AAController *)aaController invalidate];
    v4 = self->_aaController;
    self->_aaController = 0;
  }
}

- (void)aaDeviceRecordsRemovedWithRecords:(id)records
{
  recordsCopy = records;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100012B1C;
  v7[3] = &unk_1002B6D18;
  v8 = recordsCopy;
  selfCopy = self;
  v6 = recordsCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)aaDeviceRecordsUpdatedWithRecords:(id)records
{
  recordsCopy = records;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100012C20;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = recordsCopy;
  v6 = recordsCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_cloudSyncEnsureStopped
{
  if (self->_cloudSyncDeviceManager)
  {
    if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D34A4();
    }

    [self->_cloudSyncDeviceManager unsubscribeFromUpdates:self];
    cloudSyncDeviceManager = self->_cloudSyncDeviceManager;
    self->_cloudSyncDeviceManager = 0;
  }
}

- (BOOL)shouldBackoffSavingToCloudForDevice:(id)device
{
  deviceCopy = device;
  cloudRecordInfoLoaded = [deviceCopy cloudRecordInfoLoaded];
  if (cloudRecordInfoLoaded)
  {
    if (dword_1002F6070 > 10 || dword_1002F6070 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_10;
    }
  }

  else
  {
    cloudSyncDeviceManager = self->_cloudSyncDeviceManager;
    bluetoothAddress = [deviceCopy bluetoothAddress];
    LODWORD(cloudSyncDeviceManager) = [cloudSyncDeviceManager isDeviceRecordsIncomingWithAddress:bluetoothAddress];

    if (!cloudSyncDeviceManager)
    {
LABEL_10:
      v9 = 0;
      goto LABEL_13;
    }

    if (dword_1002F6070 > 30 || dword_1002F6070 == -1 && !_LogCategory_Initialize())
    {
      v9 = 1;
      goto LABEL_13;
    }
  }

  bluetoothAddress2 = [deviceCopy bluetoothAddress];
  LogPrintF();
  v9 = cloudRecordInfoLoaded ^ 1;

LABEL_13:
  return v9;
}

- (void)_saveDeviceRecordForDevice:(id)device
{
  deviceCopy = device;
  bluetoothAddress = [deviceCopy bluetoothAddress];

  if (bluetoothAddress)
  {
    v12 = 0;
    v6 = [[_TtC15audioaccessoryd14AADeviceRecord alloc] initWithDevice:deviceCopy error:&v12];
    v7 = v12;
    if (v6)
    {
      if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D34C0();
      }

      cloudSyncDeviceManager = self->_cloudSyncDeviceManager;
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100012F5C;
      v9[3] = &unk_1002B6D60;
      v9[4] = self;
      v10 = v6;
      v11 = deviceCopy;
      [cloudSyncDeviceManager updateAADeviceRecordWithRecord:v10 completion:v9];
    }

    else
    {
      sub_1001D3500(dword_1002F6070);
    }
  }

  else
  {
    sub_1001D3578();
  }
}

- (void)_cbControllerEnsureStarted
{
  p_bluetoothController = &self->_bluetoothController;
  v4 = self->_bluetoothController;
  if (!v4)
  {
    v5 = objc_alloc_init(CBController);
    [v5 setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(p_bluetoothController, v5);
    [v5 setInvalidationHandler:&stru_1002B6D80];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000131D8;
    v6[3] = &unk_1002B68A8;
    v4 = v5;
    v7 = v4;
    selfCopy = self;
    [(CBController *)v4 activateWithCompletion:v6];
  }
}

- (void)_cbControllerEnsureStopped
{
  bluetoothController = self->_bluetoothController;
  if (bluetoothController)
  {
    [(CBController *)bluetoothController invalidate];
    v4 = self->_bluetoothController;
    self->_bluetoothController = 0;
  }
}

- (void)_cbDiscoveryEnsureStarted
{
  p_bluetoothDeviceDiscovery = &self->_bluetoothDeviceDiscovery;
  v4 = self->_bluetoothDeviceDiscovery;
  if (!v4)
  {
    v5 = objc_alloc_init(CBDiscovery);
    [v5 setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(p_bluetoothDeviceDiscovery, v5);
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100013554;
    v19[3] = &unk_1002B6DA8;
    v6 = v5;
    v20 = v6;
    selfCopy = self;
    [v6 setDeviceFoundHandler:v19];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_100013570;
    v16[3] = &unk_1002B6DA8;
    v7 = v6;
    v17 = v7;
    selfCopy2 = self;
    [v7 setDeviceLostHandler:v16];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001358C;
    v13[3] = &unk_1002B6D18;
    v8 = v7;
    v14 = v8;
    selfCopy3 = self;
    [v8 setInterruptionHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_100013624;
    v12[3] = &unk_1002B6880;
    v12[4] = self;
    [v8 setInvalidationHandler:v12];
    [v8 setDiscoveryFlags:{objc_msgSend(v8, "discoveryFlags") | 0x800000}];
    [v8 setDiscoveryFlags:{objc_msgSend(v8, "discoveryFlags") | 0x80000000000}];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_100013680;
    v9[3] = &unk_1002B68A8;
    v4 = v8;
    v10 = v4;
    selfCopy4 = self;
    [(CBDiscovery *)v4 activateWithCompletion:v9];
  }
}

- (void)_cbDiscoveryEnsureStopped
{
  bluetoothDeviceDiscovery = self->_bluetoothDeviceDiscovery;
  if (bluetoothDeviceDiscovery)
  {
    [(CBDiscovery *)bluetoothDeviceDiscovery invalidate];
    v4 = self->_bluetoothDeviceDiscovery;
    self->_bluetoothDeviceDiscovery = 0;
  }
}

- (void)_coreBluetoothDeviceFound:(id)found
{
  foundCopy = found;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [foundCopy identifier];
  if (identifier)
  {
    if ([foundCopy vendorID] == 76 && (v5 = objc_msgSend(foundCopy, "productID") - 8194, v5 <= 0x2D) && ((1 << v5) & 0x207C7BB7FF9BLL) != 0)
    {
      if (([foundCopy discoveryFlags] & 0x800000) != 0)
      {
        v6 = [(AAPairedDeviceDaemon *)self _deviceWithIdentifier:identifier];
        v7 = v6;
        if (v6)
        {
          v8 = v6;
          if (![v6 updateWithPairedCBDevice:foundCopy])
          {
LABEL_21:

            goto LABEL_22;
          }
        }

        else
        {
          v8 = [[AudioAccessoryDevice alloc] initWithIdentifier:identifier];
          [v8 setPaired:1];
          [(AAPairedDeviceDaemon *)self _addDeviceToMap:v8];
          [v8 updateWithPairedCBDevice:foundCopy];
        }

        if ([(AAPairedDeviceDaemon *)self _loadDeviceRecordForDevice:v8]&& dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D36EC();
        }

        [(AAPairedDeviceDaemon *)self _updateCloudRecordIfNeeded:v8];
        if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
        {
          v9 = "updated";
          if (!v7)
          {
            v9 = "found";
          }

          v11 = v9;
          LogPrintF();
          [(AAPairedDeviceDaemon *)self _pairedDeviceUpdated:v8, v11, foundCopy];
        }

        else
        {
          [(AAPairedDeviceDaemon *)self _pairedDeviceUpdated:v8, v10, v12];
        }

        goto LABEL_21;
      }

      sub_1001D372C();
    }

    else
    {
      sub_1001D37A4();
    }
  }

  else
  {
    sub_1001D381C();
  }

LABEL_22:
}

- (void)_coreBluetoothDeviceLost:(id)lost
{
  lostCopy = lost;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [lostCopy identifier];
  if (identifier)
  {
    v5 = [(AAPairedDeviceDaemon *)self _deviceWithIdentifier:identifier];
    if (v5)
    {
      if (dword_1002F6070 <= 10 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D3894();
      }

      changeFlags = [lostCopy changeFlags];
      discoveryFlags = [lostCopy discoveryFlags];
      if ((changeFlags & 0x800000) != 0 && (discoveryFlags & 0x800000) == 0)
      {
        if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D38D4();
        }

        [(AAPairedDeviceDaemon *)self _removeDeviceFromMapWithIdentifier:identifier];
        [(AAPairedDeviceDaemon *)self _pairedDeviceLost:v5];
      }
    }
  }

  else
  {
    sub_1001D3914();
  }
}

- (void)_addDeviceToMap:(id)map
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

- (id)deviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(AAPairedDeviceDaemon *)selfCopy _deviceWithIdentifier:identifierCopy];
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

- (id)deviceWithBluetoothAddress:(id)address
{
  addressCopy = address;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(AAPairedDeviceDaemon *)selfCopy _deviceWithBluetoothAddress:addressCopy];
  v7 = [v6 copy];

  objc_sync_exit(selfCopy);

  return v7;
}

- (id)_deviceWithBluetoothAddress:(id)address
{
  addressCopy = address;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  obj = selfCopy;
  devicesMap = selfCopy->_devicesMap;
  if (devicesMap)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    allValues = [(NSMutableDictionary *)devicesMap allValues];
    v8 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v8)
    {
      v9 = *v22;
      while (2)
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(allValues);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          bluetoothAddress = [v11 bluetoothAddress];
          lowercaseString = [bluetoothAddress lowercaseString];
          lowercaseString2 = [addressCopy lowercaseString];
          v15 = lowercaseString;
          v16 = lowercaseString2;
          v17 = v16;
          if (v15 == v16)
          {

LABEL_16:
            v8 = v11;
            goto LABEL_17;
          }

          if ((v15 != 0) == (v16 == 0))
          {
          }

          else
          {
            v18 = [v15 isEqual:v16];

            if (v18)
            {
              goto LABEL_16;
            }
          }
        }

        v8 = [allValues countByEnumeratingWithState:&v21 objects:v25 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  else
  {
    v8 = 0;
  }

  objc_sync_exit(obj);

  return v8;
}

- (id)pairedDevices
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (dword_1002F6070 <= 5 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
  {
    [(NSMutableDictionary *)selfCopy->_devicesMap count];
    LogPrintF();
  }

  v3 = [[NSMutableDictionary alloc] initWithDictionary:selfCopy->_devicesMap copyItems:1];
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_removeDeviceFromMapWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
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

  [(NSMutableDictionary *)devicesMap setObject:0 forKeyedSubscript:identifierCopy];
  objc_sync_exit(selfCopy);
}

- (void)_notifySubscribersDeviceUpdated:(id)updated
{
  if (self->_subscribers)
  {
    v4 = [updated copy];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_subscribers;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9) pairedDeviceUpdated:{v4, v10}];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_notifySubscribersDeviceLost:(id)lost
{
  if (self->_subscribers)
  {
    v4 = [lost copy];
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v5 = self->_subscribers;
    v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v11;
      do
      {
        v9 = 0;
        do
        {
          if (*v11 != v8)
          {
            objc_enumerationMutation(v5);
          }

          [*(*(&v10 + 1) + 8 * v9) pairedDeviceLost:{v4, v10}];
          v9 = v9 + 1;
        }

        while (v7 != v9);
        v7 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v7);
    }
  }
}

- (void)_notifySubscribersInvalidated
{
  subscribers = self->_subscribers;
  if (subscribers)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = subscribers;
    v5 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v12;
      do
      {
        v8 = 0;
        do
        {
          if (*v12 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v11 + 1) + 8 * v8);
          if (objc_opt_respondsToSelector())
          {
            if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
            {
              sub_1001D398C(v9);
            }

            [v9 aaPairedDeviceDiscoveryInvalidated];
            [(NSMutableArray *)self->_subscribers removeObject:v9];
          }

          v8 = v8 + 1;
        }

        while (v6 != v8);
        v10 = [(NSMutableArray *)v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        v6 = v10;
      }

      while (v10);
    }
  }
}

- (void)subscribeToPairedDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000145AC;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = discoveryCopy;
  v6 = discoveryCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)unsubscribeFromPairedDiscovery:(id)discovery
{
  discoveryCopy = discovery;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000147D4;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = discoveryCopy;
  v6 = discoveryCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_aaDeviceRecordsRemovedWithRecords:(id)records
{
  recordsCopy = records;
  if (_os_feature_enabled_impl())
  {
    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v15 = recordsCopy;
    v5 = recordsCopy;
    v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v17;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v17 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v16 + 1) + 8 * i);
          bluetoothAddress = [v10 bluetoothAddress];
          v12 = [(AAPairedDeviceDaemon *)self _deviceWithBluetoothAddress:bluetoothAddress];

          if (v12 && dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || sub_1000148F4()))
          {
            v13 = v10;
            v14 = v12;
            LogPrintF();
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v7);
    }

    recordsCopy = v15;
  }
}

- (void)_aaDeviceRecordsUpdatedWithRecords:(id)records
{
  recordsCopy = records;
  if (_os_feature_enabled_impl())
  {
    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v14 = recordsCopy;
    v5 = recordsCopy;
    v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v16;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v16 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v15 + 1) + 8 * i);
          bluetoothAddress = [v10 bluetoothAddress];
          v12 = [(AAPairedDeviceDaemon *)self _deviceWithBluetoothAddress:bluetoothAddress];

          if (v12)
          {
            if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || sub_1000148F4()))
            {
              v13 = v10;
              LogPrintF();
            }

            if ([v12 updateWithAADeviceRecord:{v10, v13}])
            {
              if (dword_1002F6070 > 30)
              {
                goto LABEL_21;
              }

              if (dword_1002F6070 != -1 || sub_1000148F4())
              {
                v13 = v10;
                LogPrintF();
              }

              if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || sub_1000148F4()))
              {
                LogPrintF();
                [(AAPairedDeviceDaemon *)self _pairedDeviceUpdated:v12, v12];
              }

              else
              {
LABEL_21:
                [(AAPairedDeviceDaemon *)self _pairedDeviceUpdated:v12, v13];
              }
            }
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v7);
    }

    recordsCopy = v14;
  }
}

- (void)_cloudSyncEnsureStarted
{
  if (_os_feature_enabled_impl() && !self->_cloudSyncDeviceManager)
  {
    if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v3 = +[_TtC15audioaccessoryd13DeviceManager singleton];
    cloudSyncDeviceManager = self->_cloudSyncDeviceManager;
    self->_cloudSyncDeviceManager = v3;

    v5 = self->_cloudSyncDeviceManager;

    [(DeviceManager *)v5 subscribeToUpdates:self];
  }
}

- (BOOL)_loadDeviceRecordForDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy cloudRecordInfoLoaded])
  {
    LOBYTE(bluetoothAddress) = 0;
  }

  else
  {
    bluetoothAddress = [deviceCopy bluetoothAddress];

    if (bluetoothAddress)
    {
      cloudSyncDeviceManager = self->_cloudSyncDeviceManager;
      bluetoothAddress2 = [deviceCopy bluetoothAddress];
      v8 = [cloudSyncDeviceManager fetchAADeviceRecordSyncWithAddress:bluetoothAddress2];

      if (v8)
      {
        LODWORD(bluetoothAddress) = [deviceCopy updateWithAADeviceRecord:v8];
        if (bluetoothAddress && dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
        {
          LogPrintF();
          [deviceCopy setCloudRecordInfoLoaded:{1, v8}];
        }

        else
        {
          [deviceCopy setCloudRecordInfoLoaded:{1, v10}];
        }
      }

      else
      {
        if (dword_1002F6070 <= 30 && (dword_1002F6070 != -1 || _LogCategory_Initialize()))
        {
          bluetoothAddress3 = [deviceCopy bluetoothAddress];
          LogPrintF();
        }

        LOBYTE(bluetoothAddress) = 0;
      }
    }
  }

  return bluetoothAddress;
}

@end