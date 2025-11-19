@interface AADeviceManagerDaemon
+ (id)sharedAADeviceManagerDaemon;
- (AADeviceManagerDaemon)init;
- (BOOL)_getBoolPreferencesForKey:(id)a3;
- (BOOL)_onlyMuteAudioFeedbackFlagChanged:(unsigned int)a3;
- (id)_deviceWithIdentifier:(id)a3;
- (id)_getCurrentAudioOwner;
- (id)availableDevices;
- (id)descriptionWithLevel:(int)a3;
- (id)deviceWithBluetoothAddress:(id)a3;
- (id)deviceWithIdentifier:(id)a3;
- (unint64_t)availableDevicesCount;
- (void)_aaBatteryMonitorEnsureStarted;
- (void)_aaBatteryMonitorEnsureStopped;
- (void)_aaControllerEnsureStarted;
- (void)_aaControllerEnsureStopped;
- (void)_aaPairedDeviceDiscoveryEnsureStarted;
- (void)_aaPairedDeviceDiscoveryEnsureStopped;
- (void)_accessoryDeviceInfoChanged:(id)a3;
- (void)_accessoryDeviceLost:(id)a3;
- (void)_accessoryDevicePerformActions:(id)a3 withConfig:(id)a4;
- (void)_accessoryDevicePerformActionsOnChange:(id)a3;
- (void)_accessoryDevicePerformActionsOnConnection:(id)a3;
- (void)_accessoryDeviceRemoveOffListeningModeIfNeeded:(id)a3;
- (void)_accessoryDeviceUpdated:(id)a3;
- (void)_activate;
- (void)_addDeviceToMap:(id)a3;
- (void)_cbControllerEnsureStarted;
- (void)_cbControllerEnsureStopped;
- (void)_cbDiscoveryEnsureStarted;
- (void)_cbDiscoveryEnsureStopped;
- (void)_coreBluetoothDeviceFound:(id)a3;
- (void)_coreBluetoothDeviceLost:(id)a3;
- (void)_ensureOSTransaction;
- (void)_enumerateAvailableDevicesWithBlock:(id)a3;
- (void)_handleAssistantLanguageChanged:(id)a3;
- (void)_invalidate;
- (void)_languageChangeMonitoringEnsureStarted;
- (void)_languageChangeMonitoringEnsureStopped;
- (void)_loadBatteryInfoForDevice:(id)a3;
- (void)_loadPairedDeviceInfo:(id)a3;
- (void)_markTemporaryManagedPairedIfNeeded:(id)a3;
- (void)_releaseOSTransaction;
- (void)_removeDeviceFromMap:(id)a3;
- (void)_runHeadGestureDetection:(unsigned int)a3;
- (void)_sendCloudConfigsToDevice:(id)a3;
- (void)_sendConfigOverAAController:(id)a3 device:(id)a4 completion:(id)a5;
- (void)_sendConfigOverCBController:(id)a3 device:(id)a4 completion:(id)a5;
- (void)_sendDEOCTempDisableIntervalIfNeeded:(id)a3;
- (void)_sendDeviceConfig:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)_sendEnableDEOCIfNeeded:(id)a3;
- (void)_sendSiriMultitoneConfigToDevice:(id)a3;
- (void)_setPreferencesForKey:(id)a3 withBoolValue:(BOOL)a4;
- (void)_submitHeadphoneFeaturesMetricsFor:(id)a3;
- (void)activate;
- (void)deviceBatteryInfoUpdated:(id)a3;
- (void)didDetectedWithHeadGesture:(id)a3;
- (void)didStartStreamingWithIsStreaming:(BOOL)a3;
- (void)downloadHRTFAsset;
- (void)invalidate;
- (void)pairedDeviceLost:(id)a3;
- (void)pairedDeviceUpdated:(id)a3;
- (void)sendDeviceConfig:(id)a3 identifier:(id)a4 completion:(id)a5;
- (void)smartRoutingStateUpdated:(unsigned int)a3 ForDeviceIdentifier:(id)a4;
- (void)startHeadGestureManagerWithFlags:(unsigned int)a3;
- (void)stopHeadGestureManager;
- (void)updateDevice:(id)a3 withOBCState:(char)a4 deocTempDisabled:(char)a5;
- (void)updateFarFieldSessionOnGoing:(char)a3 forBluetoothAddress:(id)a4;
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
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_devicesMap)
  {
    v3 = [[NSMutableDictionary alloc] initWithDictionary:v2->_devicesMap copyItems:1];
  }

  else
  {
    v3 = 0;
  }

  objc_sync_exit(v2);

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

- (id)descriptionWithLevel:(int)a3
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
  v4 = [(AADeviceManagerDaemon *)self availableDevices];
  v5 = v20;
  v17 = v20[5];
  v11 = [v4 count];
  bluetoothDeviceDiscovery = self->_bluetoothDeviceDiscovery;
  NSAppendPrintF();
  objc_storeStrong(v5 + 5, v17);
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10001B920;
  v16[3] = &unk_1002B6CC8;
  v16[4] = &v19;
  [v4 enumerateKeysAndObjectsUsingBlock:{v16, v11, bluetoothDeviceDiscovery}];
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
  v3 = [(AADeviceManagerDaemon *)self transaction];

  if (!v3)
  {
    if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D58B4();
    }

    v4 = os_transaction_create();
    [(AADeviceManagerDaemon *)self setTransaction:v4];

    v5 = [(AADeviceManagerDaemon *)self transaction];

    if (!v5 && dword_1002F62E0 <= 60 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D58D0();
    }
  }
}

- (void)_releaseOSTransaction
{
  v3 = [(AADeviceManagerDaemon *)self transaction];

  if (v3)
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
    v8 = self;
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

- (void)_sendConfigOverAAController:(id)a3 device:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  if (([v8 needsUpdateToAAController] & 1) == 0)
  {
    if (dword_1002F62E0 <= 10 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D59C4();
      if (!v10)
      {
        goto LABEL_21;
      }
    }

    else if (!v10)
    {
      goto LABEL_21;
    }

    v10[2](v10, 0);
    goto LABEL_21;
  }

  v11 = objc_alloc_init(AudioAccessoryDeviceConfig);
  -[AudioAccessoryDeviceConfig setAutoANCStrength:](v11, "setAutoANCStrength:", [v8 autoANCStrength]);
  -[AudioAccessoryDeviceConfig setEnableSiriMultitone:](v11, "setEnableSiriMultitone:", [v8 enableSiriMultitone]);
  if (_os_feature_enabled_impl())
  {
    -[AudioAccessoryDeviceConfig setEnableHearingAidGainSwipe:](v11, "setEnableHearingAidGainSwipe:", [v8 enableHearingAidGainSwipe]);
    -[AudioAccessoryDeviceConfig setHearingAidToggle:](v11, "setHearingAidToggle:", [v8 hearingAidToggle]);
    -[AudioAccessoryDeviceConfig setHearingAidEnrolled:](v11, "setHearingAidEnrolled:", [v8 hearingAidEnrolled]);
    -[AudioAccessoryDeviceConfig setEnableHearingAssist:](v11, "setEnableHearingAssist:", [v8 enableHearingAssist]);
    -[AudioAccessoryDeviceConfig setAllowOffListeningMode:](v11, "setAllowOffListeningMode:", [v8 listeningModeOffAllowed]);
  }

  if (_os_feature_enabled_impl())
  {
    -[AudioAccessoryDeviceConfig setEnableHearingProtectionPPE:](v11, "setEnableHearingProtectionPPE:", [v8 enableHearingProtectionPPE]);
  }

  -[AudioAccessoryDeviceConfig setEnableHeartRateMonitor:](v11, "setEnableHeartRateMonitor:", [v8 enableHeartRateMonitor]);
  -[AudioAccessoryDeviceConfig setEnableSleepDetection:](v11, "setEnableSleepDetection:", [v8 enableSleepDetection]);
  if (_os_feature_enabled_impl())
  {
    -[AudioAccessoryDeviceConfig setAllowTemporaryManagedPairing:](v11, "setAllowTemporaryManagedPairing:", [v8 allowTemporaryManagedPairing]);
  }

  -[AudioAccessoryDeviceConfig setRawGesturesConfigFlags:](v11, "setRawGesturesConfigFlags:", [v8 rawGesturesConfigFlags]);
  v12 = [v8 changeDynamicEndOfChargeState];
  if ((v12 & 0xFFFFFFFD) == 1)
  {
    v13 = 1;
LABEL_17:
    [(AudioAccessoryDeviceConfig *)v11 setEnableDynamicEndOfCharge:v13];
    goto LABEL_18;
  }

  if (v12 == 2)
  {
    v13 = 2;
    goto LABEL_17;
  }

LABEL_18:
  if (_os_feature_enabled_impl())
  {
    -[AudioAccessoryDeviceConfig setHearingAidV2SourceRegionSupport:](v11, "setHearingAidV2SourceRegionSupport:", [v8 hearingAidV2SourceRegionSupport]);
  }

  [(AADeviceManagerDaemon *)self _aaControllerEnsureStarted];
  aaController = self->_aaController;
  v15 = [(AudioAccessoryDeviceConfig *)v11 xpcObjectRepresentation];
  v16 = [v9 identifier];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001C430;
  v18[3] = &unk_1002B6E60;
  v19 = v9;
  v20 = v11;
  v21 = v10;
  v17 = v11;
  [(AAController *)aaController sendDeviceConfig:v15 destinationIdentifier:v16 completionHandler:v18];

LABEL_21:
}

- (void)_accessoryDeviceLost:(id)a3
{
  v4 = a3;
  v8 = v4;
  if (dword_1002F62E0 <= 30)
  {
    if (dword_1002F62E0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v8, v5))
    {
      sub_1001D5AAC();
      v4 = v8;
    }
  }

  [v4 setConnected:0];
  v6 = [v8 identifier];
  [(AADeviceManagerDaemon *)self _removeDeviceFromMap:v6];

  v7 = +[AAServicesDaemon sharedAAServicesDaemon];
  [v7 reportDeviceLost:v8];

  [(AADeviceManagerDaemon *)self _submitHeadphoneFeaturesMetricsFor:v8];
}

- (void)_accessoryDeviceUpdated:(id)a3
{
  v7 = a3;
  v4 = [v7 bluetoothAddress];
  if (v4)
  {
    v5 = [v7 identifier];
    if (v5)
    {
      [v7 setConnected:1];
      if ([v7 paired] & 1) != 0 || (-[AADeviceManagerDaemon _loadPairedDeviceInfo:](self, "_loadPairedDeviceInfo:", v7), (objc_msgSend(v7, "paired")))
      {
        if ([v7 connectedInfoComplete] && (objc_msgSend(v7, "onConnectionActionsCalled") & 1) == 0)
        {
          [(AADeviceManagerDaemon *)self _accessoryDevicePerformActionsOnConnection:v7];
        }

        if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D5B4C();
        }

        [(AADeviceManagerDaemon *)self _accessoryDevicePerformActionsOnChange:v7];
        v6 = +[AAServicesDaemon sharedAAServicesDaemon];
        [v6 reportDeviceFound:v7];
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

- (void)_accessoryDeviceInfoChanged:(id)a3
{
  v4 = a3;
  v16 = 0;
  v5 = [[AudioAccessoryDeviceInfo alloc] initWithXPCObject:v4 error:&v16];

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

  v8 = [(AudioAccessoryDeviceInfo *)v5 identifier];
  if (!v8)
  {
    sub_1001D5D74(0, &v17);
LABEL_22:
    v8 = v17;
    goto LABEL_16;
  }

  if (([(AudioAccessoryDeviceInfo *)v5 discoveryFlags]& 0x200000) == 0)
  {
    sub_1001D5CF0(v8, &v17);
    goto LABEL_22;
  }

  v9 = [(AADeviceManagerDaemon *)self _deviceWithIdentifier:v8];
  v10 = v9;
  if (!v9)
  {
    [(AADeviceManagerDaemon *)self _ensureOSTransaction];
    v11 = [[AudioAccessoryDevice alloc] initWithIdentifier:v8];
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

- (void)_accessoryDevicePerformActionsOnChange:(id)a3
{
  v8 = a3;
  [(AADeviceManagerDaemon *)self _sendSiriMultitoneConfigToDevice:?];
  if (_os_feature_enabled_impl())
  {
    v4 = [v8 coreBluetoothDevice];
    if (([v4 deviceFlags] & 0x800000) != 0)
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
    [(AADeviceManagerDaemon *)self _accessoryDeviceRemoveOffListeningModeIfNeeded:v8];
  }

  v6 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
  v7 = [v8 bluetoothAddress];
  [v6 getSmartRoutingStateForDeviceAddress:v7];
}

- (void)_accessoryDevicePerformActionsOnConnection:(id)a3
{
  v4 = a3;
  v6 = v4;
  if (dword_1002F62E0 <= 30)
  {
    if (dword_1002F62E0 != -1 || (v5 = _LogCategory_Initialize(), v4 = v6, v5))
    {
      sub_1001D5DEC(v4);
      v4 = v6;
    }
  }

  [(AADeviceManagerDaemon *)self _loadBatteryInfoForDevice:v4];
  [AAChargingManager fetchChargingStateForDevice:v6];
  [(AADeviceManagerDaemon *)self _sendCloudConfigsToDevice:v6];
  [(AADeviceManagerDaemon *)self _markTemporaryManagedPairedIfNeeded:v6];
  [(AADeviceManagerDaemon *)self _sendEnableDEOCIfNeeded:v6];
  [(AADeviceManagerDaemon *)self _sendDEOCTempDisableIntervalIfNeeded:v6];
  [v6 setOnConnectionActionsCalled:1];
}

- (void)_accessoryDevicePerformActions:(id)a3 withConfig:(id)a4
{
  v16 = a3;
  v6 = a4;
  v7 = [v6 changeDynamicEndOfChargeState];
  if (v7)
  {
    v8 = v7;
    [AAChargingManager handleChangeOfDynamicEndOfChargeState:v7 forDevice:v16];
    if (v8 == 3)
    {
      if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D5E48();
      }

      [(AADeviceManagerDaemon *)self _sendDEOCTempDisableIntervalIfNeeded:v16];
    }
  }

  v9 = [v6 changeOptimizedBatteryChargingState];
  if (v9)
  {
    [AAChargingManager handleChangeOfOptimizedBatteryChargingState:v9 forDevice:v16];
  }

  v10 = [v6 allowHealthKitDataWrite];
  if ([v16 healthKitDataWriteAllowed] != v10)
  {
    v11 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    v12 = [v16 bluetoothAddress];
    [v11 handleHealthKitDataWritePropertyToggled:v12];
  }

  v13 = [v6 enableHeartRateMonitor];
  if ([v16 heartRateMonitorEnabled] != v13)
  {
    if ([v16 productID] == 8221)
    {
      v14 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
      v15 = [v16 bluetoothAddress];
      [v14 handleHealthKitDataWritePropertyToggled:v15];
    }

    else if (dword_1002F62E0 <= 90 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D5E88();
    }
  }
}

- (void)sendDeviceConfig:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  dispatchQueue = self->_dispatchQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10001CDA0;
  v15[3] = &unk_1002B6B88;
  v15[4] = self;
  v16 = v8;
  v17 = v9;
  v18 = v10;
  v12 = v10;
  v13 = v9;
  v14 = v8;
  dispatch_async(dispatchQueue, v15);
}

- (void)_sendDeviceConfig:(id)a3 identifier:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v11 = v9;
  v32 = v11;
  v12 = v10;
  v33 = v12;
  v13 = objc_retainBlock(v31);
  v14 = v11;
  if (v14)
  {
    if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      v25 = v8;
      v26 = v14;
      LogPrintF();
    }

    v17 = [(AADeviceManagerDaemon *)self pairedDeviceDaemon:v25];
    v16 = [v17 deviceWithIdentifier:v14];

    if (v16)
    {
      if ([v8 needsUpdateToPairedDevice])
      {
        v18 = [(AADeviceManagerDaemon *)self pairedDeviceDaemon];
        [v18 updatePairedDeviceWithIdentifier:v14 withConfig:v8];
      }

      v19 = [(AADeviceManagerDaemon *)self _deviceWithIdentifier:v14];
      if (v19)
      {
        [(AADeviceManagerDaemon *)self _accessoryDevicePerformActions:v19 withConfig:v8];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_10001D254;
        v27[3] = &unk_1002B7148;
        v30 = v12;
        v27[4] = self;
        v20 = v8;
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

- (void)_submitHeadphoneFeaturesMetricsFor:(id)a3
{
  v4 = a3;
  v35[0] = @"AdaptiveTransparency";
  v34 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 autoANCStrength]);
  v36[0] = v34;
  v35[1] = @"AutomaticEarDetection";
  v33 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [v4 placementMode]);
  v36[1] = v33;
  v35[2] = @"BatteryChargingReminder";
  v32 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [v4 chargingReminderEnabled]);
  v36[2] = v32;
  v35[3] = @"BatteryDEOC";
  v31 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [v4 dynamicEndOfChargeState]);
  v36[3] = v31;
  v35[4] = @"BatteryOBC";
  v30 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [v4 optimizedBatteryChargingState]);
  v36[4] = v30;
  v35[5] = @"CameraControl";
  v29 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v4 remoteCameraControlConfig]);
  v36[5] = v29;
  v35[6] = @"ConversationAwareness";
  v28 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v4 conversationDetectConfig]);
  v36[6] = v28;
  v35[7] = @"DoubleTapLeft";
  v27 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [v4 doubleTapActionLeft]);
  v36[7] = v27;
  v35[8] = @"DoubleTapRight";
  v26 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [v4 doubleTapActionRight]);
  v36[8] = v26;
  v35[9] = @"EndCall";
  v25 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v4 endCallConfig]);
  v36[9] = v25;
  v35[10] = @"HeadGesturesAccept";
  v24 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v4 acceptReplyPlayPauseConfig]);
  v36[10] = v24;
  v35[11] = @"HeadGesturesDecline";
  v23 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v4 declineDismissSkipConfig]);
  v36[11] = v23;
  v35[12] = @"HeadGesturesToggle";
  v22 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [v4 headGestureToggle]);
  v36[12] = v22;
  v35[13] = @"ListeningMode";
  v21 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v4 listeningMode]);
  v36[13] = v21;
  v35[14] = @"ListeningModeConfigs";
  v20 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 listeningModeConfigs]);
  v36[14] = v20;
  v35[15] = @"MicrophoneMode";
  v19 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [v4 microphoneMode]);
  v36[15] = v19;
  v35[16] = @"MuteCall";
  v18 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v4 muteControlConfig]);
  v36[16] = v18;
  v35[17] = @"OffListeningMode";
  v17 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [v4 listeningModeOffAllowed]);
  v36[17] = v17;
  v35[18] = @"PauseMediaWhenSleep";
  v16 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [v4 sleepDetectionEnabled]);
  v36[18] = v16;
  v35[19] = @"PersonalizedVolume";
  v15 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v4 adaptiveVolumeConfig]);
  v36[19] = v15;
  v35[20] = @"PID";
  v5 = NSNumber;
  v14 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v4 productID]);
  v36[20] = v14;
  v35[21] = @"PressHoldLeft";
  v6 = [v4 coreBluetoothDevice];
  if (v6)
  {
    v5 = NSNumber;
    v13 = [v4 coreBluetoothDevice];
    v7 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v13 clickHoldModeLeft]);
  }

  else
  {
    v7 = &off_1002CB648;
  }

  v36[21] = v7;
  v35[22] = @"PressHoldRight";
  v8 = [v4 coreBluetoothDevice];
  if (v8)
  {
    v5 = NSNumber;
    v3 = [v4 coreBluetoothDevice];
    v9 = +[NSNumber numberWithUnsignedChar:](NSNumber, "numberWithUnsignedChar:", [v3 clickHoldModeRight]);
  }

  else
  {
    v9 = &off_1002CB648;
  }

  v36[22] = v9;
  v35[23] = @"SmartRouting";
  v10 = [v4 coreBluetoothDevice];
  if (v10)
  {
    v5 = [v4 coreBluetoothDevice];
    v11 = +[NSNumber numberWithChar:](NSNumber, "numberWithChar:", [v5 smartRoutingMode]);
  }

  else
  {
    v11 = &off_1002CB648;
  }

  v36[23] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v36 forKeys:v35 count:24];
  CUMetricsLog();

  if (v10)
  {
  }

  if (v8)
  {
  }

  if (v6)
  {
  }

  if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D5EA4(v4);
  }
}

- (void)_addDeviceToMap:(id)a3
{
  v10 = a3;
  v4 = self;
  objc_sync_enter(v4);
  v5 = v10;
  devicesMap = v4->_devicesMap;
  if (!devicesMap)
  {
    if (dword_1002F62E0 <= 10 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v7 = objc_alloc_init(NSMutableDictionary);
    v8 = v4->_devicesMap;
    v4->_devicesMap = v7;

    devicesMap = v4->_devicesMap;
    v5 = v10;
  }

  v9 = [v5 identifier];
  [(NSMutableDictionary *)devicesMap setObject:v10 forKeyedSubscript:v9];

  objc_sync_exit(v4);
}

- (unint64_t)availableDevicesCount
{
  v2 = self;
  objc_sync_enter(v2);
  devicesMap = v2->_devicesMap;
  if (devicesMap)
  {
    v4 = [(NSMutableDictionary *)devicesMap count];
  }

  else
  {
    v4 = 0;
  }

  objc_sync_exit(v2);

  return v4;
}

- (id)deviceWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  v6 = [(AADeviceManagerDaemon *)v5 _deviceWithIdentifier:v4];
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

- (void)_enumerateAvailableDevicesWithBlock:(id)a3
{
  v4 = a3;
  v5 = self;
  objc_sync_enter(v5);
  devicesMap = v5->_devicesMap;
  if (devicesMap)
  {
    v15 = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [(NSMutableDictionary *)devicesMap allValues];
    v8 = [v7 countByEnumeratingWithState:&v11 objects:v16 count:16];
    if (v8)
    {
      v9 = *v12;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v4[2](v4, *(*(&v11 + 1) + 8 * v10), &v15);
        if (v15)
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v7 countByEnumeratingWithState:&v11 objects:v16 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }
  }

  objc_sync_exit(v5);
}

- (void)_removeDeviceFromMap:(id)a3
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
      if (dword_1002F62E0 <= 10 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v6 = v4->_devicesMap;
      v4->_devicesMap = 0;
    }
  }

  objc_sync_exit(v4);
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

- (void)deviceBatteryInfoUpdated:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D4C2C;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)_loadBatteryInfoForDevice:(id)a3
{
  v7 = a3;
  if (_os_feature_enabled_impl())
  {
    v3 = [v7 batteryInfo];

    if (!v3)
    {
      v4 = +[AABatteryMonitorDaemon sharedAABatteryMonitorDaemon];
      v5 = [v7 identifier];
      v6 = [v4 deviceWithIdentifier:v5];

      if (v6)
      {
        [v7 setBatteryInfo:v6];
        if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D5EFC();
        }
      }
    }
  }
}

- (void)updateFarFieldSessionOnGoing:(char)a3 forBluetoothAddress:(id)a4
{
  v6 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001E178;
  block[3] = &unk_1002B7170;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)updateDevice:(id)a3 withOBCState:(char)a4 deocTempDisabled:(char)a5
{
  v8 = a3;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001D4D18;
  block[3] = &unk_1002B7198;
  block[4] = self;
  v12 = v8;
  v13 = a4;
  v14 = a5;
  v10 = v8;
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
    v8 = self;
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
    v21 = self;
    [v6 setDeviceFoundHandler:v19];
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_10001E8E0;
    v16[3] = &unk_1002B6DA8;
    v7 = v6;
    v17 = v7;
    v18 = self;
    [v7 setDeviceLostHandler:v16];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10001E8FC;
    v13[3] = &unk_1002B6D18;
    v8 = v7;
    v14 = v8;
    v15 = self;
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
    v11 = self;
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

- (void)_coreBluetoothDeviceLost:(id)a3
{
  v6 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [v6 identifier];
  if (v4)
  {
    v5 = [(AADeviceManagerDaemon *)self _deviceWithIdentifier:v4];
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

- (id)deviceWithBluetoothAddress:(id)a3
{
  v4 = a3;
  if (self->_devicesMap)
  {
    v5 = self;
    objc_sync_enter(v5);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = [(NSMutableDictionary *)self->_devicesMap allValues];
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

LABEL_16:
            v7 = [v10 copy];
            goto LABEL_17;
          }

          if ((v4 == 0) != (v11 != 0))
          {
            v14 = [v11 isEqual:v12];

            if (v14)
            {
              goto LABEL_16;
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

LABEL_17:

    objc_sync_exit(v5);
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

- (void)_sendConfigOverCBController:(id)a3 device:(id)a4 completion:(id)a5
{
  v8 = a4;
  v9 = a5;
  v10 = a3;
  v11 = [v8 coreBluetoothDevice];
  if (!v11)
  {
    v11 = objc_alloc_init(CBDevice);
    v12 = [v8 identifier];
    [v11 setIdentifier:v12];
  }

  v13 = objc_alloc_init(CBDeviceSettings);
  [v13 setAclPriority:{objc_msgSend(v10, "aclPriority")}];
  [v13 setAdaptiveVolumeConfig:{objc_msgSend(v10, "adaptiveVolumeConfig")}];
  [v13 setAllowsAutoRoute:{objc_msgSend(v10, "allowsAutoRoute")}];
  [v13 setAudioRouteHidden:{objc_msgSend(v10, "audioRouteHidden")}];
  [v13 setClickHoldModeLeft:{objc_msgSend(v10, "clickHoldModeLeft")}];
  [v13 setClickHoldModeRight:{objc_msgSend(v10, "clickHoldModeRight")}];
  [v13 setConversationDetectConfig:{objc_msgSend(v10, "conversationDetectConfig")}];
  [v13 setCrownRotationDirection:{objc_msgSend(v10, "crownRotationDirection")}];
  [v13 setDoubleTapActionLeft:{objc_msgSend(v10, "doubleTapActionLeft")}];
  [v13 setDoubleTapActionRight:{objc_msgSend(v10, "doubleTapActionRight")}];
  [v13 setEndCallConfig:{objc_msgSend(v10, "endCallConfig")}];
  [v13 setListeningMode:{objc_msgSend(v10, "listeningMode")}];
  [v13 setListeningModeConfigs:{objc_msgSend(v10, "listeningModeConfigs")}];
  [v13 setMicrophoneMode:{objc_msgSend(v10, "microphoneMode")}];
  [v13 setMuteControlConfig:{objc_msgSend(v10, "muteControlConfig")}];
  v14 = [v10 name];
  [v13 setName:v14];

  [v13 setPlacementMode:{objc_msgSend(v10, "placementMode")}];
  [v13 setRelinquishAudioRoute:{objc_msgSend(v10, "relinquishAudioRoute")}];
  [v13 setSelectiveSpeechListeningConfig:{objc_msgSend(v10, "selectiveSpeechListeningConfig")}];
  [v13 setSmartRoutingMode:{objc_msgSend(v10, "smartRoutingMode")}];
  [v13 setSpatialAudioAllowed:{objc_msgSend(v10, "spatialAudioAllowed")}];
  v15 = [v10 spatialAudioMode];

  [v13 setSpatialAudioMode:v15];
  bluetoothController = self->_bluetoothController;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10001F484;
  v18[3] = &unk_1002B69C0;
  v18[4] = v13;
  v19 = v9;
  v17 = v9;
  [(CBController *)bluetoothController modifyDevice:v11 settings:v13 completion:v18];
}

- (void)_sendCloudConfigsToDevice:(id)a3
{
  v4 = a3;
  v6 = objc_alloc_init(AADeviceConfig);
  [v6 setListeningModeOffAllowed:{objc_msgSend(v4, "listeningModeOffAllowed")}];
  [v6 setListeningModeConfigs:{objc_msgSend(v4, "listeningModeConfigs")}];
  v5 = [v4 identifier];

  [(AADeviceManagerDaemon *)self _sendDeviceConfig:v6 identifier:v5 completion:0];
}

- (void)didDetectedWithHeadGesture:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001F698;
  v7[3] = &unk_1002B6D18;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)didStartStreamingWithIsStreaming:(BOOL)a3
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001F81C;
  block[3] = &unk_1002B6F98;
  v5 = a3;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)_onlyMuteAudioFeedbackFlagChanged:(unsigned int)a3
{
  headGestureUpdateFlags = self->_headGestureUpdateFlags;
  if (((headGestureUpdateFlags ^ a3) & 3) != 0)
  {
    return 0;
  }

  if (((a3 >> 2) & 1) == ((headGestureUpdateFlags >> 2) & 1))
  {
    return 0;
  }

  if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return 1;
}

- (void)_runHeadGestureDetection:(unsigned int)a3
{
  v5 = [(AADeviceManagerDaemon *)self _onlyMuteAudioFeedbackFlagChanged:?];
  self->_headGestureUpdateFlags = a3;
  if (v5)
  {
    headGestureManager = self->_headGestureManager;
    if (headGestureManager)
    {

      [(HGManager *)headGestureManager setMuteAudioFeedback:(a3 >> 2) & 1];
      return;
    }
  }

  if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D6354();
    if ((a3 & 3) != 0)
    {
      goto LABEL_10;
    }
  }

  else if ((a3 & 3) != 0)
  {
LABEL_10:
    if (self->_headGestureManager)
    {
      [(AADeviceManagerDaemon *)self stopHeadGestureManager];
    }

    v11 = objc_alloc_init(HGConfiguration);
    if (a3)
    {
      v7 = objc_alloc_init(HGAudioFeedbackConfiguration);
      [v11 setAudioFeedbackConfig:v7];

      [v11 setRequestPartGestures:1];
    }

    if ((a3 & 2) != 0)
    {
      v8 = [v11 audioFeedbackConfig];
      [v8 setEnableAudioFeedback:1];
    }

    v9 = [[HGManager alloc] initWithDelegate:self config:v11];
    v10 = self->_headGestureManager;
    self->_headGestureManager = v9;

    if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D63AC();
    }

    [(HGManager *)self->_headGestureManager start];
    [(HGManager *)self->_headGestureManager setMuteAudioFeedback:(a3 >> 2) & 1];

    return;
  }

  [(AADeviceManagerDaemon *)self stopHeadGestureManager];
}

- (void)startHeadGestureManagerWithFlags:(unsigned int)a3
{
  if (self->_headGestureUpdateFlags == a3)
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
  v3 = [(AADeviceManagerDaemon *)self pairedDeviceDaemon];
  [v3 subscribeToPairedDiscovery:self];
}

- (void)_aaPairedDeviceDiscoveryEnsureStopped
{
  v3 = [(AADeviceManagerDaemon *)self pairedDeviceDaemon];
  [v3 unsubscribeFromPairedDiscovery:self];
}

- (void)pairedDeviceUpdated:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1001D5498;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)pairedDeviceLost:(id)a3
{
  v4 = a3;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001FD2C;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(dispatchQueue, v7);
}

- (void)smartRoutingStateUpdated:(unsigned int)a3 ForDeviceIdentifier:(id)a4
{
  v6 = a4;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001FEE0;
  block[3] = &unk_1002B7208;
  block[4] = self;
  v10 = v6;
  v11 = a3;
  v8 = v6;
  dispatch_async(dispatchQueue, block);
}

- (void)_handleAssistantLanguageChanged:(id)a3
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

- (BOOL)_getBoolPreferencesForKey:(id)a3
{
  v3 = a3;
  CFPreferencesAppSynchronize(@"com.apple.AudioAccessory");
  AppBooleanValue = CFPreferencesGetAppBooleanValue(v3, @"com.apple.AudioAccessory", 0);

  return AppBooleanValue != 0;
}

- (void)_setPreferencesForKey:(id)a3 withBoolValue:(BOOL)a4
{
  v4 = &kCFBooleanTrue;
  if (!a4)
  {
    v4 = &kCFBooleanFalse;
  }

  CFPreferencesSetAppValue(a3, *v4, @"com.apple.AudioAccessory");

  CFPreferencesAppSynchronize(@"com.apple.AudioAccessory");
}

- (void)_coreBluetoothDeviceFound:(id)a3
{
  v9 = a3;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = [v9 identifier];
  if (v4)
  {
    if ([v9 vendorID] != 76)
    {
      goto LABEL_21;
    }

    v5 = [v9 productID] - 8194;
    if (v5 > 0x2D || ((1 << v5) & 0x207C7BB7FF9BLL) == 0)
    {
      goto LABEL_21;
    }

    v6 = [(AADeviceManagerDaemon *)self _deviceWithIdentifier:v4];
    if (!v6)
    {
      [(AADeviceManagerDaemon *)self _ensureOSTransaction];
      [[AudioAccessoryDevice alloc] initWithIdentifier:v4];
      [sub_100020838() _addDeviceToMap:?];
    }

    v7 = [v6 coreBluetoothDevice];

    v8 = [v6 updateWithConnectedCBDevice:v9];
    if (v6)
    {
      if (v7 || dword_1002F62E0 > 30 || dword_1002F62E0 == -1 && !_LogCategory_Initialize())
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

- (void)_markTemporaryManagedPairedIfNeeded:(id)a3
{
  v6 = a3;
  if ([v6 temporaryManagedPairedStatus] == 1 && _os_feature_enabled_impl())
  {
    if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      v5 = [v6 identifier];
      LogPrintF();
    }

    v4 = objc_alloc_init(AADeviceConfig);
    [v4 setAllowTemporaryManagedPairing:{objc_msgSend(v6, "temporaryManagedPairedStatus")}];
    [(AADeviceManagerDaemon *)self _sendConfigOverAAController:v4 device:v6 completion:0];
  }
}

- (void)_sendDEOCTempDisableIntervalIfNeeded:(id)a3
{
  v4 = a3;
  v5 = [AAChargingManager deocTempDisableIntervalAACPMessageIfNeededForDevice:v4];
  if (v5)
  {
    [(AADeviceManagerDaemon *)self _aaControllerEnsureStarted];
    aaController = self->_aaController;
    v7 = [v4 identifier];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10001EFBC;
    v8[3] = &unk_1002B6A38;
    v9 = v4;
    [(AAController *)aaController sendDEOCTempDisableIntervalMessage:v5 destinationIdentifier:v7 completionHandler:v8];
  }
}

- (void)_sendEnableDEOCIfNeeded:(id)a3
{
  v4 = a3;
  if ([v4 dynamicEndOfChargeCapability] == 2 && !objc_msgSend(v4, "dynamicEndOfChargeEnabled"))
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
    v7 = v4;
    v8 = self;
    [(AADeviceManagerDaemon *)self _sendConfigOverAAController:v5 device:v7 completion:v6];
  }
}

- (void)_loadPairedDeviceInfo:(id)a3
{
  v8 = a3;
  if (([v8 paired] & 1) == 0)
  {
    v5 = [(AADeviceManagerDaemon *)self pairedDeviceDaemon];
    [v8 identifier];
    objc_claimAutoreleasedReturnValue();
    v6 = [sub_100020838() deviceWithIdentifier:?];

    if (v6)
    {
      if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
        [v8 updateWithPairedAADevice:{v6, v6}];
      }

      else
      {
        [v8 updateWithPairedAADevice:{v6, v7}];
      }
    }

    else if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }
}

- (void)_accessoryDeviceRemoveOffListeningModeIfNeeded:(id)a3
{
  v10 = a3;
  if ([v10 listeningModeOffAllowed] == 2)
  {
    v4 = objc_alloc_init(AADeviceConfig);
    if ([v10 listeningMode] == 1)
    {
      [v4 setListeningMode:3];
      v5 = [v10 listeningModeConfigs];
      if ((v5 & 1) == 0)
      {
LABEL_10:
        if (dword_1002F62E0 <= 30 && (dword_1002F62E0 != -1 || _LogCategory_Initialize()))
        {
          v8 = [v10 identifier];
          v9 = v4;
          LogPrintF();
        }

        v7 = [v10 identifier];
        [(AADeviceManagerDaemon *)self _sendDeviceConfig:v4 identifier:v7 completion:0];

        goto LABEL_15;
      }
    }

    else
    {
      v5 = [v10 listeningModeConfigs];
      if ((v5 & 1) == 0)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    if ((v5 & 0xA) != 0)
    {
      v6 = 4;
    }

    else
    {
      v6 = 6;
    }

    [v4 setListeningModeConfigs:v6 | v5 & 0xFFFFFFFA];
    goto LABEL_10;
  }

LABEL_16:
}

- (void)_sendSiriMultitoneConfigToDevice:(id)a3
{
  v4 = a3;
  if ([v4 siriMultitoneCapability] == 2 && MGGetBoolAnswer())
  {
    if (AFDeviceSupportsSystemAssistantExperience())
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    if ([v4 siriMultitoneEnabled] != v5)
    {
      v6 = v5;
      [v4 setSiriMultitoneEnabled:v6];
      v7 = objc_alloc_init(AADeviceConfig);
      [v7 setEnableSiriMultitone:v6];
      v8 = [v4 identifier];
      v9[0] = _NSConcreteStackBlock;
      v9[1] = 3221225472;
      v9[2] = sub_100020118;
      v9[3] = &unk_1002B68A8;
      v10 = v4;
      v11 = v7;
      [(AADeviceManagerDaemon *)self _sendDeviceConfig:v7 identifier:v8 completion:v9];
    }
  }
}

@end