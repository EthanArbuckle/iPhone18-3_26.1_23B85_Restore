@interface AADeviceManagerDaemon
+ (id)sharedAADeviceManagerDaemon;
- (AADeviceManagerDaemon)init;
- (BOOL)_getBoolPreferencesForKey:(id)key;
- (BOOL)_onlyMuteAudioFeedbackFlagChanged:(unsigned int)changed;
- (id)_deviceWithIdentifier:(id)identifier;
- (id)_getCurrentAudioOwner;
- (id)availableDevices;
- (id)descriptionWithLevel:(int)level;
- (id)deviceWithBluetoothAddress:(id)address;
- (id)deviceWithIdentifier:(id)identifier;
- (unint64_t)availableDevicesCount;
- (void)_aaBatteryMonitorEnsureStarted;
- (void)_aaBatteryMonitorEnsureStopped;
- (void)_aaControllerEnsureStarted;
- (void)_aaControllerEnsureStopped;
- (void)_aaPairedDeviceDiscoveryEnsureStarted;
- (void)_aaPairedDeviceDiscoveryEnsureStopped;
- (void)_accessoryDeviceInfoChanged:(id)changed;
- (void)_accessoryDeviceLost:(id)lost;
- (void)_accessoryDevicePerformActions:(id)actions withConfig:(id)config;
- (void)_accessoryDevicePerformActionsOnChange:(id)change;
- (void)_accessoryDevicePerformActionsOnConnection:(id)connection;
- (void)_accessoryDeviceRemoveOffListeningModeIfNeeded:(id)needed;
- (void)_accessoryDeviceUpdated:(id)updated;
- (void)_activate;
- (void)_addDeviceToMap:(id)map;
- (void)_cbControllerEnsureStarted;
- (void)_cbControllerEnsureStopped;
- (void)_cbDiscoveryEnsureStarted;
- (void)_cbDiscoveryEnsureStopped;
- (void)_coreBluetoothDeviceFound:(id)found;
- (void)_coreBluetoothDeviceLost:(id)lost;
- (void)_ensureOSTransaction;
- (void)_enumerateAvailableDevicesWithBlock:(id)block;
- (void)_handleAssistantLanguageChanged:(id)changed;
- (void)_invalidate;
- (void)_languageChangeMonitoringEnsureStarted;
- (void)_languageChangeMonitoringEnsureStopped;
- (void)_loadBatteryInfoForDevice:(id)device;
- (void)_loadPairedDeviceInfo:(id)info;
- (void)_markTemporaryManagedPairedIfNeeded:(id)needed;
- (void)_releaseOSTransaction;
- (void)_removeDeviceFromMap:(id)map;
- (void)_runHeadGestureDetection:(unsigned int)detection;
- (void)_sendCloudConfigsToDevice:(id)device;
- (void)_sendConfigOverAAController:(id)controller device:(id)device completion:(id)completion;
- (void)_sendConfigOverCBController:(id)controller device:(id)device completion:(id)completion;
- (void)_sendDEOCTempDisableIntervalIfNeeded:(id)needed;
- (void)_sendDeviceConfig:(id)config identifier:(id)identifier completion:(id)completion;
- (void)_sendEnableDEOCIfNeeded:(id)needed;
- (void)_sendSiriMultitoneConfigToDevice:(id)device;
- (void)_setPreferencesForKey:(id)key withBoolValue:(BOOL)value;
- (void)_submitHeadphoneFeaturesMetricsFor:(id)for;
- (void)activate;
- (void)deviceBatteryInfoUpdated:(id)updated;
- (void)didDetectedWithHeadGesture:(id)gesture;
- (void)didStartStreamingWithIsStreaming:(BOOL)streaming;
- (void)downloadHRTFAsset;
- (void)invalidate;
- (void)pairedDeviceLost:(id)lost;
- (void)pairedDeviceUpdated:(id)updated;
- (void)sendDeviceConfig:(id)config identifier:(id)identifier completion:(id)completion;
- (void)smartRoutingStateUpdated:(unsigned int)updated ForDeviceIdentifier:(id)identifier;
- (void)startHeadGestureManagerWithFlags:(unsigned int)flags;
- (void)stopHeadGestureManager;
- (void)updateDevice:(id)device withOBCState:(char)state deocTempDisabled:(char)disabled;
- (void)updateFarFieldSessionOnGoing:(char)going forBluetoothAddress:(id)address;
@end

@implementation AADeviceManagerDaemon

+ (id)sharedAADeviceManagerDaemon
{
  if (qword_1002FA068 != -1)
  {
    sub_1001D584C();
  }

  v3 = qword_1002FA060;

  return v3;
}

- (void)stopHeadGestureManager
{
  if (self->_headGestureManager)
  {
    if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D63E4();
    }

    [(HGManager *)self->_headGestureManager stop];
    headGestureManager = self->_headGestureManager;
    self->_headGestureManager = 0;

    self->_headGestureUpdateFlags = 0;
  }
}

- (id)availableDevices
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_devicesMap)
  {
    v3 = [[NSMutableDictionary alloc] initWithDictionary:selfCopy->_devicesMap copyItems:1];
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(selfCopy);

  return v3;
}

- (AADeviceManagerDaemon)init
{
  v8.receiver = self;
  v8.super_class = AADeviceManagerDaemon;
  v2 = [(AADeviceManagerDaemon *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AADeviceManagerDaemon", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v2->_hRTFDownloadOTATriggered = [(AADeviceManagerDaemon *)v2 _getBoolPreferencesForKey:@"HRTFDownloadOTATriggered"];
    v2->_prefsChangedNotifyToken = -1;
    v6 = v2;
  }

  return v2;
}

- (id)descriptionWithLevel:(int)level
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_1000038F8;
  v23 = sub_100003828;
  v24 = 0;
  obj = 0;
  NSAppendPrintF_safe();
  objc_storeStrong(&v24, 0);
  availableDevices = [(AADeviceManagerDaemon *)self availableDevices];
  v5 = v20;
  v17 = v20[5];
  v11 = [availableDevices count];
  bluetoothDeviceDiscovery = self->_bluetoothDeviceDiscovery;
  NSAppendPrintF();
  objc_storeStrong(v5 + 5, v17);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001B920;
  v16[3] = &unk_1002B6CC8;
  v16[4] = &v19;
  [availableDevices enumerateKeysAndObjectsUsingBlock:{v16, v11, bluetoothDeviceDiscovery}];
  v6 = v20;
  v15 = v20[5];
  NSAppendPrintF();
  objc_storeStrong(v6 + 5, v15);
  if (self->_hRTFDownloadOTATriggered)
  {
    v7 = v20;
    v14 = v20[5];
    NSAppendPrintF_safe();
    objc_storeStrong(v7 + 5, v14);
  }

  v8 = v20;
  v13 = v20[5];
  NSAppendPrintF();
  objc_storeStrong(v8 + 5, v13);
  v9 = v20[5];

  _Block_object_dispose(&v19, 8);

  return v9;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001B9E4;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001BA60;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D5860();
  }

  if (_os_feature_enabled_impl())
  {
    [(AADeviceManagerDaemon *)self _aaBatteryMonitorEnsureStopped];
  }

  [(AADeviceManagerDaemon *)self _aaPairedDeviceDiscoveryEnsureStopped];
  [(AADeviceManagerDaemon *)self _aaControllerEnsureStopped];
  [(AADeviceManagerDaemon *)self _cbDiscoveryEnsureStopped];
  [(AADeviceManagerDaemon *)self _cbControllerEnsureStopped];
  [(AADeviceManagerDaemon *)self _languageChangeMonitoringEnsureStopped];
  prefsChangedNotifyToken = self->_prefsChangedNotifyToken;
  if (prefsChangedNotifyToken != -1)
  {
    notify_cancel(prefsChangedNotifyToken);
    self->_prefsChangedNotifyToken = -1;
  }

  [(AADeviceManagerDaemon *)self stopHeadGestureManager];
  self->_activateCalled = 0;
}

- (void)_activate
{
  if (!self->_activateCalled)
  {
    self->_activateCalled = 1;
    if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D587C();
    }

    if (self->_prefsChangedNotifyToken == -1)
    {
      dispatchQueue = self->_dispatchQueue;
      handler[0] = _NSConcreteStackBlock;
      handler[1] = 3221225472;
      handler[2] = sub_10001BC54;
      handler[3] = &unk_1002B6DF0;
      handler[4] = self;
      notify_register_dispatch("com.apple.AudioAccessory.prefsChanged", &self->_prefsChangedNotifyToken, dispatchQueue, handler);
    }

    [(AADeviceManagerDaemon *)self _prefsChanged];
    if (_os_feature_enabled_impl())
    {
      [(AADeviceManagerDaemon *)self _aaBatteryMonitorEnsureStarted];
    }

    [(AADeviceManagerDaemon *)self _aaPairedDeviceDiscoveryEnsureStarted];
    [(AADeviceManagerDaemon *)self _aaControllerEnsureStarted];
    [(AADeviceManagerDaemon *)self _cbDiscoveryEnsureStarted];
    [(AADeviceManagerDaemon *)self _cbControllerEnsureStarted];
    [(AADeviceManagerDaemon *)self _languageChangeMonitoringEnsureStarted];
  }
}

- (void)_ensureOSTransaction
{
  transaction = [(AADeviceManagerDaemon *)self transaction];

  if (!transaction)
  {
    if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D58B4();
    }

    v4 = os_transaction_create();
    [(AADeviceManagerDaemon *)self setTransaction:v4];

    transaction2 = [(AADeviceManagerDaemon *)self transaction];

    if (!transaction2 && dword_1002F62E0 <= 60 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D58D0();
    }
  }
}

- (void)_releaseOSTransaction
{
  transaction = [(AADeviceManagerDaemon *)self transaction];

  if (transaction)
  {
    [(AADeviceManagerDaemon *)self setTransaction:0];
    if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D58F0();
    }
  }
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
    [(AAController *)v5 setInvalidationHandler:&stru_1002B70F8];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001BFC0;
    v9[3] = &unk_1002B68D0;
    v9[4] = self;
    [(AAController *)v5 setDeviceInfoChangeHandler:v9];
    if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D590C();
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10001BFCC;
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

- (void)_sendConfigOverAAController:(id)controller device:(id)device completion:(id)completion
{
  controllerCopy = controller;
  deviceCopy = device;
  completionCopy = completion;
  if (([controllerCopy needsUpdateToAAController] & 1) == 0)
  {
    if (dword_1002F62E0 <= 10 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D59C4();
      if (!completionCopy)
      {
        goto LABEL_21;
      }
    }

    else if (!completionCopy)
    {
      goto LABEL_21;
    }

    completionCopy[2](completionCopy, 0);
    goto LABEL_21;
  }

  v11 = objc_alloc_init(AudioAccessoryDeviceConfig);
  -[AudioAccessoryDeviceConfig setAutoANCStrength:](v11, "setAutoANCStrength:", [controllerCopy autoANCStrength]);
  -[AudioAccessoryDeviceConfig setEnableSiriMultitone:](v11, "setEnableSiriMultitone:", [controllerCopy enableSiriMultitone]);
  if (_os_feature_enabled_impl())
  {
    -[AudioAccessoryDeviceConfig setEnableHearingAidGainSwipe:](v11, "setEnableHearingAidGainSwipe:", [controllerCopy enableHearingAidGainSwipe]);
    -[AudioAccessoryDeviceConfig setHearingAidToggle:](v11, "setHearingAidToggle:", [controllerCopy hearingAidToggle]);
    -[AudioAccessoryDeviceConfig setHearingAidEnrolled:](v11, "setHearingAidEnrolled:", [controllerCopy hearingAidEnrolled]);
    -[AudioAccessoryDeviceConfig setEnableHearingAssist:](v11, "setEnableHearingAssist:", [controllerCopy enableHearingAssist]);
    -[AudioAccessoryDeviceConfig setAllowOffListeningMode:](v11, "setAllowOffListeningMode:", [controllerCopy listeningModeOffAllowed]);
  }

  if (_os_feature_enabled_impl())
  {
    -[AudioAccessoryDeviceConfig setEnableHearingProtectionPPE:](v11, "setEnableHearingProtectionPPE:", [controllerCopy enableHearingProtectionPPE]);
  }

  -[AudioAccessoryDeviceConfig setEnableHeartRateMonitor:](v11, "setEnableHeartRateMonitor:", [controllerCopy enableHeartRateMonitor]);
  -[AudioAccessoryDeviceConfig setEnableSleepDetection:](v11, "setEnableSleepDetection:", [controllerCopy enableSleepDetection]);
  if (_os_feature_enabled_impl())
  {
    -[AudioAccessoryDeviceConfig setAllowTemporaryManagedPairing:](v11, "setAllowTemporaryManagedPairing:", [controllerCopy allowTemporaryManagedPairing]);
  }

  -[AudioAccessoryDeviceConfig setRawGesturesConfigFlags:](v11, "setRawGesturesConfigFlags:", [controllerCopy rawGesturesConfigFlags]);
  changeDynamicEndOfChargeState = [controllerCopy changeDynamicEndOfChargeState];
  if ((changeDynamicEndOfChargeState & 0xFFFFFFFD) == 1)
  {
    v13 = 1;
LABEL_17:
    [(AudioAccessoryDeviceConfig *)v11 setEnableDynamicEndOfCharge:v13];
    goto LABEL_18;
  }

  if (changeDynamicEndOfChargeState == 2)
  {
    v13 = 2;
    goto LABEL_17;
  }

LABEL_18:
  if (_os_feature_enabled_impl())
  {
    -[AudioAccessoryDeviceConfig setHearingAidV2SourceRegionSupport:](v11, "setHearingAidV2SourceRegionSupport:", [controllerCopy hearingAidV2SourceRegionSupport]);
  }

  [(AADeviceManagerDaemon *)self _aaControllerEnsureStarted];
  aaController = self->_aaController;
  xpcObjectRepresentation = [(AudioAccessoryDeviceConfig *)v11 xpcObjectRepresentation];
  identifier = [deviceCopy identifier];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001C430;
  v18[3] = &unk_1002B6E60;
  v19 = deviceCopy;
  v20 = v11;
  v21 = completionCopy;
  v17 = v11;
  [(AAController *)aaController sendDeviceConfig:xpcObjectRepresentation destinationIdentifier:identifier completionHandler:v18];

LABEL_21:
}

- (void)_accessoryDeviceLost:(id)lost
{
  lostCopy = lost;
  v8 = lostCopy;
  if (dword_1002F62E0 <= 30)
  {
    if (dword_1002F62E0 != -1 || (v5 = _LogCategory_Initialize(), lostCopy = v8, v5))
    {
      sub_1001D5AAC();
      lostCopy = v8;
    }
  }

  [lostCopy setConnected:0];
  identifier = [v8 identifier];
  [(AADeviceManagerDaemon *)self _removeDeviceFromMap:identifier];

  v7 = +[AAServicesDaemon sharedAAServicesDaemon];
  [v7 reportDeviceLost:v8];

  [(AADeviceManagerDaemon *)self _submitHeadphoneFeaturesMetricsFor:v8];
}

- (void)_accessoryDeviceUpdated:(id)updated
{
  updatedCopy = updated;
  bluetoothAddress = [updatedCopy bluetoothAddress];
  if (bluetoothAddress)
  {
    identifier = [updatedCopy identifier];
    if (identifier)
    {
      [updatedCopy setConnected:1];
      if ([updatedCopy paired] & 1) != 0 || (-[AADeviceManagerDaemon _loadPairedDeviceInfo:](self, "_loadPairedDeviceInfo:", updatedCopy), (objc_msgSend(updatedCopy, "paired")))
      {
        if ([updatedCopy connectedInfoComplete] && (objc_msgSend(updatedCopy, "onConnectionActionsCalled") & 1) == 0)
        {
          [(AADeviceManagerDaemon *)self _accessoryDevicePerformActionsOnConnection:updatedCopy];
        }

        if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D5B4C();
        }

        [(AADeviceManagerDaemon *)self _accessoryDevicePerformActionsOnChange:updatedCopy];
        v6 = +[AAServicesDaemon sharedAAServicesDaemon];
        [v6 reportDeviceFound:updatedCopy];
      }

      else
      {
        sub_1001D5AEC();
      }
    }

    else
    {
      sub_1001D5B8C();
    }
  }

  else
  {
    sub_1001D5BEC();
  }
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
    if (sub_1001D5C4C(v6, &v17))
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

  identifier = [(AudioAccessoryDeviceInfo *)v5 identifier];
  if (!identifier)
  {
    sub_1001D5D74(0, &v17);
LABEL_22:
    identifier = v17;
    goto LABEL_16;
  }

  if (([(AudioAccessoryDeviceInfo *)v5 discoveryFlags]& 0x200000) == 0)
  {
    sub_1001D5CF0(identifier, &v17);
    goto LABEL_22;
  }

  v9 = [(AADeviceManagerDaemon *)self _deviceWithIdentifier:identifier];
  v10 = v9;
  if (!v9)
  {
    [(AADeviceManagerDaemon *)self _ensureOSTransaction];
    v11 = [[AudioAccessoryDevice alloc] initWithIdentifier:identifier];
    [(AADeviceManagerDaemon *)self _addDeviceToMap:v11];
    [v11 updateWithConnectedAADeviceInfo:v5];
    goto LABEL_8;
  }

  v11 = v9;
  if ([v9 updateWithConnectedAADeviceInfo:v5])
  {
LABEL_8:
    if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      v12 = "updated";
      if (!v10)
      {
        v12 = "found";
      }

      v14 = v12;
      LogPrintF();
      [(AADeviceManagerDaemon *)self _accessoryDeviceUpdated:v11, v14, v5];
    }

    else
    {
      [(AADeviceManagerDaemon *)self _accessoryDeviceUpdated:v11, v13, v15];
    }
  }

LABEL_16:
LABEL_17:
}

- (void)_accessoryDevicePerformActionsOnChange:(id)change
{
  changeCopy = change;
  [(AADeviceManagerDaemon *)self _sendSiriMultitoneConfigToDevice:?];
  if (_os_feature_enabled_impl())
  {
    coreBluetoothDevice = [changeCopy coreBluetoothDevice];
    if (([coreBluetoothDevice deviceFlags] & 0x800000) != 0)
    {
      hRTFDownloadOTATriggered = self->_hRTFDownloadOTATriggered;

      if (!hRTFDownloadOTATriggered)
      {
        [(AADeviceManagerDaemon *)self downloadHRTFAsset];
      }
    }

    else
    {
    }
  }

  if (_os_feature_enabled_impl() && _os_feature_enabled_impl())
  {
    [(AADeviceManagerDaemon *)self _accessoryDeviceRemoveOffListeningModeIfNeeded:changeCopy];
  }

  v6 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
  bluetoothAddress = [changeCopy bluetoothAddress];
  [v6 getSmartRoutingStateForDeviceAddress:bluetoothAddress];
}

- (void)_accessoryDevicePerformActionsOnConnection:(id)connection
{
  connectionCopy = connection;
  v6 = connectionCopy;
  if (dword_1002F62E0 <= 30)
  {
    if (dword_1002F62E0 != -1 || (v5 = _LogCategory_Initialize(), connectionCopy = v6, v5))
    {
      sub_1001D5DEC(connectionCopy);
      connectionCopy = v6;
    }
  }

  [(AADeviceManagerDaemon *)self _loadBatteryInfoForDevice:connectionCopy];
  [AAChargingManager fetchChargingStateForDevice:v6];
  [(AADeviceManagerDaemon *)self _sendCloudConfigsToDevice:v6];
  [(AADeviceManagerDaemon *)self _markTemporaryManagedPairedIfNeeded:v6];
  [(AADeviceManagerDaemon *)self _sendEnableDEOCIfNeeded:v6];
  [(AADeviceManagerDaemon *)self _sendDEOCTempDisableIntervalIfNeeded:v6];
  [v6 setOnConnectionActionsCalled:1];
}

- (void)_accessoryDevicePerformActions:(id)actions withConfig:(id)config
{
  actionsCopy = actions;
  configCopy = config;
  changeDynamicEndOfChargeState = [configCopy changeDynamicEndOfChargeState];
  if (changeDynamicEndOfChargeState)
  {
    v8 = changeDynamicEndOfChargeState;
    [AAChargingManager handleChangeOfDynamicEndOfChargeState:changeDynamicEndOfChargeState forDevice:actionsCopy];
    if (v8 == 3)
    {
      if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D5E48();
      }

      [(AADeviceManagerDaemon *)self _sendDEOCTempDisableIntervalIfNeeded:actionsCopy];
    }
  }

  changeOptimizedBatteryChargingState = [configCopy changeOptimizedBatteryChargingState];
  if (changeOptimizedBatteryChargingState)
  {
    [AAChargingManager handleChangeOfOptimizedBatteryChargingState:changeOptimizedBatteryChargingState forDevice:actionsCopy];
  }

  allowHealthKitDataWrite = [configCopy allowHealthKitDataWrite];
  if ([actionsCopy healthKitDataWriteAllowed] != allowHealthKitDataWrite)
  {
    v11 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    bluetoothAddress = [actionsCopy bluetoothAddress];
    [v11 handleHealthKitDataWritePropertyToggled:bluetoothAddress];
  }

  enableHeartRateMonitor = [configCopy enableHeartRateMonitor];
  if ([actionsCopy heartRateMonitorEnabled] != enableHeartRateMonitor)
  {
    if ([actionsCopy productID] == 8221)
    {
      v14 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
      bluetoothAddress2 = [actionsCopy bluetoothAddress];
      [v14 handleHealthKitDataWritePropertyToggled:bluetoothAddress2];
    }

    else if (dword_1002F62E0 <= 90 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D5E88();
    }
  }
}

- (void)sendDeviceConfig:(id)config identifier:(id)identifier completion:(id)completion
{
  configCopy = config;
  identifierCopy = identifier;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001CDA0;
  v15[3] = &unk_1002B6B88;
  v15[4] = self;
  v16 = configCopy;
  v17 = identifierCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = identifierCopy;
  v14 = configCopy;
  dispatch_async(dispatchQueue, v15);
}

- (void)_sendDeviceConfig:(id)config identifier:(id)identifier completion:(id)completion
{
  configCopy = config;
  identifierCopy = identifier;
  completionCopy = completion;
  v35 = 0;
  v36 = &v35;
  v37 = 0x3032000000;
  v38 = sub_1000038F8;
  v39 = sub_100003828;
  v40 = 0;
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10001D15C;
  v31[3] = &unk_1002B7120;
  v34 = &v35;
  v11 = identifierCopy;
  v32 = v11;
  v12 = completionCopy;
  v33 = v12;
  v13 = objc_retainBlock(v31);
  v14 = v11;
  if (v14)
  {
    if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      v25 = configCopy;
      v26 = v14;
      LogPrintF();
    }

    v17 = [(AADeviceManagerDaemon *)self pairedDeviceDaemon:v25];
    v16 = [v17 deviceWithIdentifier:v14];

    if (v16)
    {
      if ([configCopy needsUpdateToPairedDevice])
      {
        pairedDeviceDaemon = [(AADeviceManagerDaemon *)self pairedDeviceDaemon];
        [pairedDeviceDaemon updatePairedDeviceWithIdentifier:v14 withConfig:configCopy];
      }

      v19 = [(AADeviceManagerDaemon *)self _deviceWithIdentifier:v14];
      if (v19)
      {
        [(AADeviceManagerDaemon *)self _accessoryDevicePerformActions:v19 withConfig:configCopy];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10001D254;
        v27[3] = &unk_1002B7148;
        v30 = v12;
        v27[4] = self;
        v20 = configCopy;
        v28 = v20;
        v29 = v19;
        [(AADeviceManagerDaemon *)self _sendConfigOverCBController:v20 device:v19 completion:v27];
        v21 = +[AASettingsTelemetry sharedInstance];
        [v21 sendSettingsChanges:v20 device:v19];

        v22 = v30;
      }

      else
      {
        v24 = NSErrorF();
        v22 = v36[5];
        v36[5] = v24;
      }
    }

    else
    {
      v23 = NSErrorF();
      v19 = v36[5];
      v36[5] = v23;
    }
  }

  else
  {
    v15 = NSErrorF();
    v16 = v36[5];
    v36[5] = v15;
  }

  (v13[2])(v13);
  _Block_object_dispose(&v35, 8);
}

- (void)_submitHeadphoneFeaturesMetricsFor:(id)for
{
  forCopy = for;
  v35[0] = @"AdaptiveTransparency";
  v34 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [forCopy autoANCStrength]);
  v36[0] = v34;
  v35[1] = @"AutomaticEarDetection";
  v33 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [forCopy placementMode]);
  v36[1] = v33;
  v35[2] = @"BatteryChargingReminder";
  v32 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [forCopy chargingReminderEnabled]);
  v36[2] = v32;
  v35[3] = @"BatteryDEOC";
  v31 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [forCopy dynamicEndOfChargeState]);
  v36[3] = v31;
  v35[4] = @"BatteryOBC";
  v30 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [forCopy optimizedBatteryChargingState]);
  v36[4] = v30;
  v35[5] = @"CameraControl";
  v29 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [forCopy remoteCameraControlConfig]);
  v36[5] = v29;
  v35[6] = @"ConversationAwareness";
  v28 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [forCopy conversationDetectConfig]);
  v36[6] = v28;
  v35[7] = @"DoubleTapLeft";
  v27 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [forCopy doubleTapActionLeft]);
  v36[7] = v27;
  v35[8] = @"DoubleTapRight";
  v26 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [forCopy doubleTapActionRight]);
  v36[8] = v26;
  v35[9] = @"EndCall";
  v25 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [forCopy endCallConfig]);
  v36[9] = v25;
  v35[10] = @"HeadGesturesAccept";
  v24 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [forCopy acceptReplyPlayPauseConfig]);
  v36[10] = v24;
  v35[11] = @"HeadGesturesDecline";
  v23 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [forCopy declineDismissSkipConfig]);
  v36[11] = v23;
  v35[12] = @"HeadGesturesToggle";
  v22 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [forCopy headGestureToggle]);
  v36[12] = v22;
  v35[13] = @"ListeningMode";
  v21 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [forCopy listeningMode]);
  v36[13] = v21;
  v35[14] = @"ListeningModeConfigs";
  v20 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [forCopy listeningModeConfigs]);
  v36[14] = v20;
  v35[15] = @"MicrophoneMode";
  v19 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [forCopy microphoneMode]);
  v36[15] = v19;
  v35[16] = @"MuteCall";
  v18 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [forCopy muteControlConfig]);
  v36[16] = v18;
  v35[17] = @"OffListeningMode";
  v17 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [forCopy listeningModeOffAllowed]);
  v36[17] = v17;
  v35[18] = @"PauseMediaWhenSleep";
  v16 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [forCopy sleepDetectionEnabled]);
  v36[18] = v16;
  v35[19] = @"PersonalizedVolume";
  v15 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [forCopy adaptiveVolumeConfig]);
  v36[19] = v15;
  v35[20] = @"PID";
  coreBluetoothDevice6 = NSNumber;
  v14 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [forCopy productID]);
  v36[20] = v14;
  v35[21] = @"PressHoldLeft";
  coreBluetoothDevice = [forCopy coreBluetoothDevice];
  if (coreBluetoothDevice)
  {
    coreBluetoothDevice6 = NSNumber;
    coreBluetoothDevice2 = [forCopy coreBluetoothDevice];
    v7 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [coreBluetoothDevice2 clickHoldModeLeft]);
  }

  else
  {
    v7 = &off_1002CB648;
  }

  v36[21] = v7;
  v35[22] = @"PressHoldRight";
  coreBluetoothDevice3 = [forCopy coreBluetoothDevice];
  if (coreBluetoothDevice3)
  {
    coreBluetoothDevice6 = NSNumber;
    coreBluetoothDevice4 = [forCopy coreBluetoothDevice];
    v9 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [coreBluetoothDevice4 clickHoldModeRight]);
  }

  else
  {
    v9 = &off_1002CB648;
  }

  v36[22] = v9;
  v35[23] = @"SmartRouting";
  coreBluetoothDevice5 = [forCopy coreBluetoothDevice];
  if (coreBluetoothDevice5)
  {
    coreBluetoothDevice6 = [forCopy coreBluetoothDevice];
    v11 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [coreBluetoothDevice6 smartRoutingMode]);
  }

  else
  {
    v11 = &off_1002CB648;
  }

  v36[23] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:24];
  CUMetricsLog();

  if (coreBluetoothDevice5)
  {
  }

  if (coreBluetoothDevice3)
  {
  }

  if (coreBluetoothDevice)
  {
  }

  if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D5EA4(forCopy);
  }
}

- (void)_addDeviceToMap:(id)map
{
  mapCopy = map;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v5 = mapCopy;
  devicesMap = selfCopy->_devicesMap;
  if (!devicesMap)
  {
    if (dword_1002F62E0 <= 10 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = selfCopy->_devicesMap;
    selfCopy->_devicesMap = v7;

    devicesMap = selfCopy->_devicesMap;
    v5 = mapCopy;
  }

  identifier = [v5 identifier];
  [(NSMutableDictionary *)devicesMap setObject:mapCopy forKeyedSubscript:identifier];

  objc_sync_exit(selfCopy);
}

- (unint64_t)availableDevicesCount
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  devicesMap = selfCopy->_devicesMap;
  if (devicesMap)
  {
    v4 = [(NSMutableDictionary *)devicesMap count];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(selfCopy);

  return v4;
}

- (id)deviceWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v6 = [(AADeviceManagerDaemon *)selfCopy _deviceWithIdentifier:identifierCopy];
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

- (void)_enumerateAvailableDevicesWithBlock:(id)block
{
  blockCopy = block;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  devicesMap = selfCopy->_devicesMap;
  if (devicesMap)
  {
    v15 = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    allValues = [(NSMutableDictionary *)devicesMap allValues];
    v8 = [allValues countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v8)
    {
      v9 = *v12;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(allValues);
        }

        blockCopy[2](blockCopy, *(*(&v11 + 1) + 8 * v10), &v15);
        if (v15)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [allValues countByEnumeratingWithState:&v11 objects:v16 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)_removeDeviceFromMap:(id)map
{
  mapCopy = map;
  selfCopy = self;
  objc_sync_enter(selfCopy);
  devicesMap = selfCopy->_devicesMap;
  if (devicesMap)
  {
    [(NSMutableDictionary *)devicesMap setObject:0 forKeyedSubscript:mapCopy];
    if (![(NSMutableDictionary *)selfCopy->_devicesMap count])
    {
      if (dword_1002F62E0 <= 10 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v6 = selfCopy->_devicesMap;
      selfCopy->_devicesMap = 0;
    }
  }

  objc_sync_exit(selfCopy);
}

- (void)_aaBatteryMonitorEnsureStarted
{
  v3 = +[AABatteryMonitorDaemon sharedAABatteryMonitorDaemon];
  [v3 subscribeToBatteryInfoUpdates:self];
}

- (void)_aaBatteryMonitorEnsureStopped
{
  v3 = +[AABatteryMonitorDaemon sharedAABatteryMonitorDaemon];
  [v3 unsubscribeFromBatteryInfoUpdates:self];
}

- (void)deviceBatteryInfoUpdated:(id)updated
{
  updatedCopy = updated;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D4C2C;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = updatedCopy;
  v6 = updatedCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_loadBatteryInfoForDevice:(id)device
{
  deviceCopy = device;
  if (_os_feature_enabled_impl())
  {
    batteryInfo = [deviceCopy batteryInfo];

    if (!batteryInfo)
    {
      v4 = +[AABatteryMonitorDaemon sharedAABatteryMonitorDaemon];
      identifier = [deviceCopy identifier];
      v6 = [v4 deviceWithIdentifier:identifier];

      if (v6)
      {
        [deviceCopy setBatteryInfo:v6];
        if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D5EFC();
        }
      }
    }
  }
}

- (void)updateFarFieldSessionOnGoing:(char)going forBluetoothAddress:(id)address
{
  addressCopy = address;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E178;
  block[3] = &unk_1002B7170;
  block[4] = self;
  v10 = addressCopy;
  goingCopy = going;
  v8 = addressCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)updateDevice:(id)device withOBCState:(char)state deocTempDisabled:(char)disabled
{
  deviceCopy = device;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D4D18;
  block[3] = &unk_1002B7198;
  block[4] = self;
  v12 = deviceCopy;
  stateCopy = state;
  disabledCopy = disabled;
  v10 = deviceCopy;
  dispatch_async(dispatchQueue, block);
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
    [v5 setInvalidationHandler:&stru_1002B71B8];
    if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D5F80();
    }

    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10001E554;
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
    v19[2] = sub_10001E8C4;
    v19[3] = &unk_1002B6DA8;
    v6 = v5;
    v20 = v6;
    selfCopy = self;
    [v6 setDeviceFoundHandler:v19];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001E8E0;
    v16[3] = &unk_1002B6DA8;
    v7 = v6;
    v17 = v7;
    selfCopy2 = self;
    [v7 setDeviceLostHandler:v16];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001E8FC;
    v13[3] = &unk_1002B6D18;
    v8 = v7;
    v14 = v8;
    selfCopy3 = self;
    [v8 setInterruptionHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10001E994;
    v12[3] = &unk_1002B6880;
    v12[4] = self;
    [v8 setInvalidationHandler:v12];
    [v8 setDiscoveryFlags:{objc_msgSend(v8, "discoveryFlags") | 0x80000200000}];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001E9F0;
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

- (void)_coreBluetoothDeviceLost:(id)lost
{
  lostCopy = lost;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [lostCopy identifier];
  if (identifier)
  {
    v5 = [(AADeviceManagerDaemon *)self _deviceWithIdentifier:identifier];
    if (v5)
    {
      [(AADeviceManagerDaemon *)self _accessoryDeviceLost:v5];
      if (![(AADeviceManagerDaemon *)self availableDevicesCount])
      {
        [(AADeviceManagerDaemon *)self _releaseOSTransaction];
      }
    }
  }

  else
  {
    sub_1001D6080();
  }
}

- (id)deviceWithBluetoothAddress:(id)address
{
  addressCopy = address;
  if (self->_devicesMap)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    allValues = [(NSMutableDictionary *)self->_devicesMap allValues];
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

LABEL_16:
            v7 = [v10 copy];
            goto LABEL_17;
          }

          if ((addressCopy == 0) != (bluetoothAddress != 0))
          {
            v14 = [bluetoothAddress isEqual:v12];

            if (v14)
            {
              goto LABEL_16;
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

LABEL_17:

    objc_sync_exit(selfCopy);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_getCurrentAudioOwner
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = sub_1000038F8;
  v9 = sub_100003828;
  v10 = 0;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10001EF28;
  v4[3] = &unk_1002B71E0;
  v4[4] = &v5;
  [(AADeviceManagerDaemon *)self _enumerateAvailableDevicesWithBlock:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

- (void)_sendConfigOverCBController:(id)controller device:(id)device completion:(id)completion
{
  deviceCopy = device;
  completionCopy = completion;
  controllerCopy = controller;
  coreBluetoothDevice = [deviceCopy coreBluetoothDevice];
  if (!coreBluetoothDevice)
  {
    coreBluetoothDevice = objc_alloc_init(CBDevice);
    identifier = [deviceCopy identifier];
    [coreBluetoothDevice setIdentifier:identifier];
  }

  v13 = objc_alloc_init(CBDeviceSettings);
  [v13 setAclPriority:{objc_msgSend(controllerCopy, "aclPriority")}];
  [v13 setAdaptiveVolumeConfig:{objc_msgSend(controllerCopy, "adaptiveVolumeConfig")}];
  [v13 setAllowsAutoRoute:{objc_msgSend(controllerCopy, "allowsAutoRoute")}];
  [v13 setAudioRouteHidden:{objc_msgSend(controllerCopy, "audioRouteHidden")}];
  [v13 setClickHoldModeLeft:{objc_msgSend(controllerCopy, "clickHoldModeLeft")}];
  [v13 setClickHoldModeRight:{objc_msgSend(controllerCopy, "clickHoldModeRight")}];
  [v13 setConversationDetectConfig:{objc_msgSend(controllerCopy, "conversationDetectConfig")}];
  [v13 setCrownRotationDirection:{objc_msgSend(controllerCopy, "crownRotationDirection")}];
  [v13 setDoubleTapActionLeft:{objc_msgSend(controllerCopy, "doubleTapActionLeft")}];
  [v13 setDoubleTapActionRight:{objc_msgSend(controllerCopy, "doubleTapActionRight")}];
  [v13 setEndCallConfig:{objc_msgSend(controllerCopy, "endCallConfig")}];
  [v13 setListeningMode:{objc_msgSend(controllerCopy, "listeningMode")}];
  [v13 setListeningModeConfigs:{objc_msgSend(controllerCopy, "listeningModeConfigs")}];
  [v13 setMicrophoneMode:{objc_msgSend(controllerCopy, "microphoneMode")}];
  [v13 setMuteControlConfig:{objc_msgSend(controllerCopy, "muteControlConfig")}];
  name = [controllerCopy name];
  [v13 setName:name];

  [v13 setPlacementMode:{objc_msgSend(controllerCopy, "placementMode")}];
  [v13 setRelinquishAudioRoute:{objc_msgSend(controllerCopy, "relinquishAudioRoute")}];
  [v13 setSelectiveSpeechListeningConfig:{objc_msgSend(controllerCopy, "selectiveSpeechListeningConfig")}];
  [v13 setSmartRoutingMode:{objc_msgSend(controllerCopy, "smartRoutingMode")}];
  [v13 setSpatialAudioAllowed:{objc_msgSend(controllerCopy, "spatialAudioAllowed")}];
  spatialAudioMode = [controllerCopy spatialAudioMode];

  [v13 setSpatialAudioMode:spatialAudioMode];
  bluetoothController = self->_bluetoothController;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001F484;
  v18[3] = &unk_1002B69C0;
  v18[4] = v13;
  v19 = completionCopy;
  v17 = completionCopy;
  [(CBController *)bluetoothController modifyDevice:coreBluetoothDevice settings:v13 completion:v18];
}

- (void)_sendCloudConfigsToDevice:(id)device
{
  deviceCopy = device;
  v6 = objc_alloc_init(AADeviceConfig);
  [v6 setListeningModeOffAllowed:{objc_msgSend(deviceCopy, "listeningModeOffAllowed")}];
  [v6 setListeningModeConfigs:{objc_msgSend(deviceCopy, "listeningModeConfigs")}];
  identifier = [deviceCopy identifier];

  [(AADeviceManagerDaemon *)self _sendDeviceConfig:v6 identifier:identifier completion:0];
}

- (void)didDetectedWithHeadGesture:(id)gesture
{
  gestureCopy = gesture;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001F698;
  v7[3] = &unk_1002B6D18;
  v8 = gestureCopy;
  selfCopy = self;
  v6 = gestureCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)didStartStreamingWithIsStreaming:(BOOL)streaming
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F81C;
  block[3] = &unk_1002B6F98;
  streamingCopy = streaming;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)_onlyMuteAudioFeedbackFlagChanged:(unsigned int)changed
{
  headGestureUpdateFlags = self->_headGestureUpdateFlags;
  if (((headGestureUpdateFlags ^ changed) & 3) != 0)
  {
    return 0;
  }

  if (((changed >> 2) & 1) == ((headGestureUpdateFlags >> 2) & 1))
  {
    return 0;
  }

  if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 1;
}

- (void)_runHeadGestureDetection:(unsigned int)detection
{
  v5 = [(AADeviceManagerDaemon *)self _onlyMuteAudioFeedbackFlagChanged:?];
  self->_headGestureUpdateFlags = detection;
  if (v5)
  {
    headGestureManager = self->_headGestureManager;
    if (headGestureManager)
    {

      [(HGManager *)headGestureManager setMuteAudioFeedback:(detection >> 2) & 1];
      return;
    }
  }

  if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D6354();
    if ((detection & 3) != 0)
    {
      goto LABEL_10;
    }
  }

  else if ((detection & 3) != 0)
  {
LABEL_10:
    if (self->_headGestureManager)
    {
      [(AADeviceManagerDaemon *)self stopHeadGestureManager];
    }

    v11 = objc_alloc_init(HGConfiguration);
    if (detection)
    {
      v7 = objc_alloc_init(HGAudioFeedbackConfiguration);
      [v11 setAudioFeedbackConfig:v7];

      [v11 setRequestPartGestures:1];
    }

    if ((detection & 2) != 0)
    {
      audioFeedbackConfig = [v11 audioFeedbackConfig];
      [audioFeedbackConfig setEnableAudioFeedback:1];
    }

    v9 = [[HGManager alloc] initWithDelegate:self config:v11];
    v10 = self->_headGestureManager;
    self->_headGestureManager = v9;

    if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D63AC();
    }

    [(HGManager *)self->_headGestureManager start];
    [(HGManager *)self->_headGestureManager setMuteAudioFeedback:(detection >> 2) & 1];

    return;
  }

  [(AADeviceManagerDaemon *)self stopHeadGestureManager];
}

- (void)startHeadGestureManagerWithFlags:(unsigned int)flags
{
  if (self->_headGestureUpdateFlags == flags)
  {
    if (dword_1002F62E0 <= 10 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D63C8();
    }
  }

  else
  {

    [(AADeviceManagerDaemon *)self _runHeadGestureDetection:?];
  }
}

- (void)_aaPairedDeviceDiscoveryEnsureStarted
{
  pairedDeviceDaemon = [(AADeviceManagerDaemon *)self pairedDeviceDaemon];
  [pairedDeviceDaemon subscribeToPairedDiscovery:self];
}

- (void)_aaPairedDeviceDiscoveryEnsureStopped
{
  pairedDeviceDaemon = [(AADeviceManagerDaemon *)self pairedDeviceDaemon];
  [pairedDeviceDaemon unsubscribeFromPairedDiscovery:self];
}

- (void)pairedDeviceUpdated:(id)updated
{
  updatedCopy = updated;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D5498;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = updatedCopy;
  v6 = updatedCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)pairedDeviceLost:(id)lost
{
  lostCopy = lost;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001FD2C;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = lostCopy;
  v6 = lostCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)smartRoutingStateUpdated:(unsigned int)updated ForDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FEE0;
  block[3] = &unk_1002B7208;
  block[4] = self;
  v10 = identifierCopy;
  updatedCopy = updated;
  v8 = identifierCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleAssistantLanguageChanged:(id)changed
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100020034;
  v3[3] = &unk_1002B7230;
  v3[4] = self;
  [(AADeviceManagerDaemon *)self _enumerateAvailableDevicesWithBlock:v3];
}

- (void)_languageChangeMonitoringEnsureStarted
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_handleAssistantLanguageChanged:" name:AFLanguageCodeDidChangeNotification object:0];
}

- (void)_languageChangeMonitoringEnsureStopped
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:AFLanguageCodeDidChangeNotification object:0];
}

- (void)downloadHRTFAsset
{
  v3 = +[_TtC15audioaccessoryd13DeviceManager singleton];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100020268;
  v4[3] = &unk_1002B7298;
  v4[4] = self;
  [v3 fetchSoundProfileRecordWithCompletion:v4];
}

- (BOOL)_getBoolPreferencesForKey:(id)key
{
  keyCopy = key;
  CFPreferencesAppSynchronize(@"com.apple.AudioAccessory");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(keyCopy, @"com.apple.AudioAccessory", 0);

  return AppBooleanValue != 0;
}

- (void)_setPreferencesForKey:(id)key withBoolValue:(BOOL)value
{
  v4 = &kCFBooleanTrue;
  if (!value)
  {
    v4 = &kCFBooleanFalse;
  }

  CFPreferencesSetAppValue(key, *v4, @"com.apple.AudioAccessory");

  CFPreferencesAppSynchronize(@"com.apple.AudioAccessory");
}

- (void)_coreBluetoothDeviceFound:(id)found
{
  foundCopy = found;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [foundCopy identifier];
  if (identifier)
  {
    if ([foundCopy vendorID] != 76)
    {
      goto LABEL_21;
    }

    v5 = [foundCopy productID] - 8194;
    if (v5 > 0x2D || ((1 << v5) & 0x207C7BB7FF9BLL) == 0)
    {
      goto LABEL_21;
    }

    v6 = [(AADeviceManagerDaemon *)self _deviceWithIdentifier:identifier];
    if (!v6)
    {
      [(AADeviceManagerDaemon *)self _ensureOSTransaction];
      [[AudioAccessoryDevice alloc] initWithIdentifier:identifier];
      [sub_100020838() _addDeviceToMap:?];
    }

    coreBluetoothDevice = [v6 coreBluetoothDevice];

    v8 = [v6 updateWithConnectedCBDevice:foundCopy];
    if (v6)
    {
      if (coreBluetoothDevice || dword_1002F62E0 > 30 || dword_1002F62E0 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_18;
      }
    }

    else if (dword_1002F62E0 > 30 || dword_1002F62E0 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_18;
    }

    LogPrintF();
LABEL_18:
    if (v8)
    {
      [(AADeviceManagerDaemon *)self _accessoryDeviceUpdated:v6];
    }

    goto LABEL_21;
  }

  if (dword_1002F62E0 <= 90 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_21:
}

- (void)_markTemporaryManagedPairedIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([neededCopy temporaryManagedPairedStatus] == 1 && _os_feature_enabled_impl())
  {
    if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      identifier = [neededCopy identifier];
      LogPrintF();
    }

    v4 = objc_alloc_init(AADeviceConfig);
    [v4 setAllowTemporaryManagedPairing:{objc_msgSend(neededCopy, "temporaryManagedPairedStatus")}];
    [(AADeviceManagerDaemon *)self _sendConfigOverAAController:v4 device:neededCopy completion:0];
  }
}

- (void)_sendDEOCTempDisableIntervalIfNeeded:(id)needed
{
  neededCopy = needed;
  v5 = [AAChargingManager deocTempDisableIntervalAACPMessageIfNeededForDevice:neededCopy];
  if (v5)
  {
    [(AADeviceManagerDaemon *)self _aaControllerEnsureStarted];
    aaController = self->_aaController;
    identifier = [neededCopy identifier];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001EFBC;
    v8[3] = &unk_1002B6A38;
    v9 = neededCopy;
    [(AAController *)aaController sendDEOCTempDisableIntervalMessage:v5 destinationIdentifier:identifier completionHandler:v8];
  }
}

- (void)_sendEnableDEOCIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([neededCopy dynamicEndOfChargeCapability] == 2 && !objc_msgSend(neededCopy, "dynamicEndOfChargeEnabled"))
  {
    if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = objc_alloc_init(AADeviceConfig);
    [v5 setChangeDynamicEndOfChargeState:1];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10001F0B4;
    v6[3] = &unk_1002B68A8;
    v7 = neededCopy;
    selfCopy = self;
    [(AADeviceManagerDaemon *)self _sendConfigOverAAController:v5 device:v7 completion:v6];
  }
}

- (void)_loadPairedDeviceInfo:(id)info
{
  infoCopy = info;
  if (([infoCopy paired] & 1) == 0)
  {
    pairedDeviceDaemon = [(AADeviceManagerDaemon *)self pairedDeviceDaemon];
    [infoCopy identifier];
    objc_claimAutoreleasedReturnValue();
    v6 = [sub_100020838() deviceWithIdentifier:?];

    if (v6)
    {
      if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
        [infoCopy updateWithPairedAADevice:{v6, v6}];
      }

      else
      {
        [infoCopy updateWithPairedAADevice:{v6, v7}];
      }
    }

    else if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

- (void)_accessoryDeviceRemoveOffListeningModeIfNeeded:(id)needed
{
  neededCopy = needed;
  if ([neededCopy listeningModeOffAllowed] == 2)
  {
    v4 = objc_alloc_init(AADeviceConfig);
    if ([neededCopy listeningMode] == 1)
    {
      [v4 setListeningMode:3];
      listeningModeConfigs = [neededCopy listeningModeConfigs];
      if ((listeningModeConfigs & 1) == 0)
      {
LABEL_10:
        if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
        {
          identifier = [neededCopy identifier];
          v9 = v4;
          LogPrintF();
        }

        identifier2 = [neededCopy identifier];
        [(AADeviceManagerDaemon *)self _sendDeviceConfig:v4 identifier:identifier2 completion:0];

        goto LABEL_15;
      }
    }

    else
    {
      listeningModeConfigs = [neededCopy listeningModeConfigs];
      if ((listeningModeConfigs & 1) == 0)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    if ((listeningModeConfigs & 0xA) != 0)
    {
      v6 = 4;
    }

    else
    {
      v6 = 6;
    }

    [v4 setListeningModeConfigs:v6 | listeningModeConfigs & 0xFFFFFFFA];
    goto LABEL_10;
  }

LABEL_16:
}

- (void)_sendSiriMultitoneConfigToDevice:(id)device
{
  deviceCopy = device;
  if ([deviceCopy siriMultitoneCapability] == 2 && MGGetBoolAnswer())
  {
    if (AFDeviceSupportsSystemAssistantExperience())
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    if ([deviceCopy siriMultitoneEnabled] != v5)
    {
      v6 = v5;
      [deviceCopy setSiriMultitoneEnabled:v6];
      v7 = objc_alloc_init(AADeviceConfig);
      [v7 setEnableSiriMultitone:v6];
      identifier = [deviceCopy identifier];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100020118;
      v9[3] = &unk_1002B68A8;
      v10 = deviceCopy;
      v11 = v7;
      [(AADeviceManagerDaemon *)self _sendDeviceConfig:v7 identifier:identifier completion:v9];
    }
  }
}

@end