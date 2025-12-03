@interface AAGestureControl
+ (id)sharedGestureControl;
- (AAGestureControl)init;
- (BOOL)_handleCameraControlGesture:(unsigned __int8)gesture forSide:(unsigned __int8)side forIdentifier:(id)identifier;
- (void)_aaControllerEnsureStarted;
- (void)_aaControllerEnsureStopped;
- (void)_activateCameraControlHIDService;
- (void)_cancelCameraControlHIDService;
- (void)_connectedDeviceDiscoveryEnsureStarted;
- (void)_connectedDeviceDiscoveryEnsureStopped;
- (void)_connectedDeviceFound:(id)found;
- (void)_connectedDeviceLost:(id)lost;
- (void)_farFieldStatusMonitoringEnsureStarted;
- (void)_farFieldStatusMonitoringEnsureStopped;
- (void)_handleDualBudLongPressGestureForIdentifier:(id)identifier;
- (void)_handleFarFieldStatusChanged:(id)changed;
- (void)_initCameraControlHIDServiceProperties;
- (void)_observeCameraStatusEnsureStarted;
- (void)_observeCameraStatusEnsureStopped;
- (void)_rawGestureMessageReceived:(id)received fromDeviceIdentifier:(id)identifier;
- (void)_sendRawGestureConfiguration:(unsigned __int16)configuration withGestureStatus:(BOOL)status forAADevice:(id)device;
- (void)_updateCameraGestureforDevice:(id)device;
- (void)activate;
- (void)dealloc;
- (void)invalidate;
- (void)notification:(int64_t)notification withProperty:(id)property forService:(id)service;
@end

@implementation AAGestureControl

+ (id)sharedGestureControl
{
  if (qword_1002FA1A8 != -1)
  {
    sub_1001F5A10();
  }

  v3 = qword_1002FA1A0;

  return v3;
}

- (void)activate
{
  [(AAGestureControl *)self _aaControllerEnsureStarted];
  if (_os_feature_enabled_impl())
  {
    [(AAGestureControl *)self _activateCameraControlHIDService];

    [(AAGestureControl *)self _connectedDeviceDiscoveryEnsureStarted];
  }
}

- (AAGestureControl)init
{
  v8.receiver = self;
  v8.super_class = AAGestureControl;
  v2 = [(AAGestureControl *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AAGestureControl", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    [(AAGestureControl *)v2 _farFieldStatusMonitoringEnsureStarted];
    if (_os_feature_enabled_impl())
    {
      [(AAGestureControl *)v2 _initCameraControlHIDServiceProperties];
      v2->_captureAppActive = 0;
    }

    v6 = v2;
  }

  return v2;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B503C;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
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
    [(AAController *)v5 setInvalidationHandler:&stru_1002BA888];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000B5264;
    v10[3] = &unk_1002B6E38;
    v6 = v5;
    v11 = v6;
    selfCopy = self;
    [(AAController *)v6 setRawGestureMessageHandler:v10];
    if (dword_1002F7008 <= 30 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F5A24();
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000B532C;
    v7[3] = &unk_1002B68A8;
    v4 = v6;
    v8 = v4;
    selfCopy2 = self;
    [(AAController *)v4 activateWithCompletion:v7];
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

- (BOOL)_handleCameraControlGesture:(unsigned __int8)gesture forSide:(unsigned __int8)side forIdentifier:(id)identifier
{
  gestureCopy = gesture;
  identifierCopy = identifier;
  if (gestureCopy != 8 && gestureCopy != 5)
  {
    if (dword_1002F7008 <= 90 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F5DE0(gestureCopy);
    }

    goto LABEL_21;
  }

  if (!self->_captureAppActive)
  {
    if (dword_1002F7008 <= 60 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F5C14(gestureCopy);
    }

LABEL_21:
    v16 = 0;
    goto LABEL_50;
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  allValues = [(NSMutableDictionary *)self->_devicesMap allValues];
  v9 = [allValues countByEnumeratingWithState:&v28 objects:v33 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v29;
LABEL_6:
    v12 = 0;
    while (1)
    {
      if (*v29 != v11)
      {
        objc_enumerationMutation(allValues);
      }

      v13 = *(*(&v28 + 1) + 8 * v12);
      identifier = [v13 identifier];
      v15 = [identifier isEqualToString:identifierCopy];

      if (v15)
      {
        break;
      }

      if (v10 == ++v12)
      {
        v10 = [allValues countByEnumeratingWithState:&v28 objects:v33 count:16];
        if (v10)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }
    }

    bluetoothAddress = [v13 bluetoothAddress];

    if (!bluetoothAddress)
    {
      goto LABEL_13;
    }

    v18 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    getCurrentRoute = [v18 getCurrentRoute];
    if (([getCurrentRoute isEqualToString:@"Speaker"] & 1) != 0 || objc_msgSend(getCurrentRoute, "isEqualToString:", @"Receiver"))
    {
      v20 = [NSString stringWithFormat:@"%@%@", bluetoothAddress, @"-tacl"];
      if (dword_1002F7008 <= 30 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
      {
        v26 = getCurrentRoute;
        v27 = v20;
        LogPrintF();
      }

      [v18 smartRoutingChangeRoute:{v20, v26, v27}];
    }

    else
    {
      getCurrentBTRouteAddress = [v18 getCurrentBTRouteAddress];
      v22 = [getCurrentBTRouteAddress isEqualToString:bluetoothAddress];

      if (v22 && dword_1002F7008 <= 30 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F5C64();
      }
    }

    eventService = self->_eventService;
    if (eventService)
    {
      [(HIDVirtualEventService *)eventService serviceID];
      if (dword_1002F7008 <= 30 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F5CA4();
      }

      mach_absolute_time();
      VendorDefinedEvent = IOHIDEventCreateVendorDefinedEvent();
      if (VendorDefinedEvent)
      {
        [(HIDVirtualEventService *)self->_eventService dispatchEvent:VendorDefinedEvent];
      }

      else if (dword_1002F7008 <= 90 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F5CF4();
      }

      CFRelease(VendorDefinedEvent);
    }

    else if (dword_1002F7008 <= 90 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F5D28();
    }

    v16 = 1;
  }

  else
  {
LABEL_12:

LABEL_13:
    sub_1001F5D5C(identifierCopy, &v32);
    v16 = v32;
  }

LABEL_50:

  return v16;
}

- (void)_updateCameraGestureforDevice:(id)device
{
  deviceCopy = device;
  remoteCameraControlConfig = [deviceCopy remoteCameraControlConfig];
  if (remoteCameraControlConfig >= 2)
  {
    if (remoteCameraControlConfig == 3)
    {
      v5 = 8;
    }

    else
    {
      v5 = remoteCameraControlConfig == 2;
    }

    if (dword_1002F7008 <= 30 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F5E48();
    }

    [(AAGestureControl *)self _sendRawGestureConfiguration:v5 withGestureStatus:self->_captureAppActive forAADevice:deviceCopy];
  }
}

- (void)_connectedDeviceDiscoveryEnsureStarted
{
  p_connectedDiscovery = &self->_connectedDiscovery;
  if (!self->_connectedDiscovery)
  {
    if (dword_1002F7008 <= 30 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F5EB0();
    }

    v4 = objc_alloc_init(AADeviceManager);
    [v4 setDispatchQueue:self->_dispatchQueue];
    v5 = +[AAServicesDaemon sharedAAServicesDaemon];
    [v4 setInternalServicesDaemon:v5];

    [v4 setInterruptionHandler:&stru_1002BA8D0];
    [v4 setInvalidationHandler:&stru_1002BA8F0];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000B5DD0;
    v11[3] = &unk_1002B7820;
    v11[4] = self;
    [v4 setDeviceFoundHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000B5DDC;
    v10[3] = &unk_1002B7820;
    v10[4] = self;
    [v4 setDeviceLostHandler:v10];
    objc_storeStrong(p_connectedDiscovery, v4);
    connectedDiscovery = self->_connectedDiscovery;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000B5E6C;
    v8[3] = &unk_1002B68A8;
    v8[4] = self;
    v9 = v4;
    v7 = v4;
    [(AADeviceManager *)connectedDiscovery activateWithCompletion:v8];
  }
}

- (void)_connectedDeviceDiscoveryEnsureStopped
{
  if (dword_1002F7008 <= 30 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F5FC8();
  }

  connectedDiscovery = self->_connectedDiscovery;
  if (connectedDiscovery)
  {
    [(AADeviceManager *)connectedDiscovery invalidate];
    v4 = self->_connectedDiscovery;
    self->_connectedDiscovery = 0;
  }
}

- (void)_connectedDeviceLost:(id)lost
{
  lostCopy = lost;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  v4 = _os_feature_enabled_impl();
  v5 = lostCopy;
  if (v4)
  {
    identifier = [lostCopy identifier];
    [(NSMutableDictionary *)self->_devicesMap removeObjectForKey:identifier];
    if (![(NSMutableDictionary *)self->_devicesMap count])
    {
      if (dword_1002F7008 <= 30 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F5FE4();
      }

      [(AAGestureControl *)self _observeCameraStatusEnsureStopped];
    }

    v5 = lostCopy;
  }

  _objc_release_x1(v4, v5);
}

- (void)_rawGestureMessageReceived:(id)received fromDeviceIdentifier:(id)identifier
{
  receivedCopy = received;
  identifierCopy = identifier;
  if (dword_1002F7008 <= 30 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
  {
    v10 = receivedCopy;
    v11 = identifierCopy;
    LogPrintF();
  }

  if ([receivedCopy length] <= 1)
  {
    sub_1001F6094();
  }

  else
  {
    v12 = 0;
    [receivedCopy getBytes:&v12 length:2];
    v8 = v12;
    v9 = HIBYTE(v12);
    if (dword_1002F7008 <= 30 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F6000(v9, v8);
    }

    if (v8 == 9 && v9 == 4)
    {
      [(AAGestureControl *)self _handleDualBudLongPressGestureForIdentifier:identifierCopy];
    }

    if (_os_feature_enabled_impl())
    {
      [(AAGestureControl *)self _handleCameraControlGesture:v8 forSide:v9 forIdentifier:identifierCopy];
    }
  }
}

- (void)_sendRawGestureConfiguration:(unsigned __int16)configuration withGestureStatus:(BOOL)status forAADevice:(id)device
{
  statusCopy = status;
  configurationCopy = configuration;
  deviceCopy = device;
  if (self->_connectedDiscovery)
  {
    v9 = objc_alloc_init(AADeviceConfig);
    rawGesturesConfigFlags = [deviceCopy rawGesturesConfigFlags];
    v11 = rawGesturesConfigFlags | configurationCopy;
    if (!statusCopy)
    {
      v11 = rawGesturesConfigFlags & ~configurationCopy;
    }

    [v9 setRawGesturesConfigFlags:v11 | 0x8000u];
    if (dword_1002F7008 <= 40 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F60F4(v9);
    }

    identifier = [deviceCopy identifier];
    connectedDiscovery = self->_connectedDiscovery;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000B6334;
    v15[3] = &unk_1002B68A8;
    v16 = v9;
    v17 = identifier;
    v14 = v9;
    [(AADeviceManager *)connectedDiscovery sendDeviceConfig:v14 identifier:identifier completion:v15];
  }
}

- (void)_initCameraControlHIDServiceProperties
{
  v18[0] = @"Virtual";
  v17[0] = @"Transport";
  v17[1] = @"PhysicalDeviceUniqueID";
  v3 = objc_opt_new();
  uUIDString = [v3 UUIDString];
  v18[1] = uUIDString;
  v17[2] = @"PrimaryUsagePage";
  v5 = [NSNumber numberWithUnsignedShort:65344];
  v18[2] = v5;
  v17[3] = @"PrimaryUsage";
  v6 = [NSNumber numberWithUnsignedShort:1];
  v18[3] = v6;
  v18[4] = &__kCFBooleanTrue;
  v17[4] = @"Built-In";
  v17[5] = @"VendorID";
  v18[5] = @"VendorID";
  v18[6] = @"ProductID";
  v17[6] = @"ProductID";
  v17[7] = @"ReportInterval";
  v18[7] = &__kCFBooleanFalse;
  v17[8] = @"DeviceUsagePairs";
  v14[0] = @"DeviceUsagePage";
  v7 = [NSNumber numberWithUnsignedShort:65344];
  v14[1] = @"DeviceUsage";
  v15[0] = v7;
  v8 = [NSNumber numberWithUnsignedShort:1];
  v15[1] = v8;
  v9 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:2];
  v16 = v9;
  v10 = [NSArray arrayWithObjects:&v16 count:1];
  v18[8] = v10;
  v11 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:9];
  properties = self->_properties;
  p_properties = &self->_properties;
  *p_properties = v11;

  if (dword_1002F7008 <= 30 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F617C(p_properties);
  }
}

- (void)_activateCameraControlHIDService
{
  v3 = objc_opt_new();
  objc_storeStrong(&self->_eventService, v3);
  dispatchQueue = self->_dispatchQueue;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_1000B66C4;
  v6[3] = &unk_1002B6D18;
  v7 = v3;
  selfCopy = self;
  v5 = v3;
  dispatch_sync(dispatchQueue, v6);
}

- (void)_cancelCameraControlHIDService
{
  eventService = self->_eventService;
  if (eventService)
  {
    [(HIDVirtualEventService *)eventService cancel];
  }
}

- (void)notification:(int64_t)notification withProperty:(id)property forService:(id)service
{
  if (_os_feature_enabled_impl() && dword_1002F7008 <= 30 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F61DC();
  }
}

- (void)_handleDualBudLongPressGestureForIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = +[LSApplicationWorkspace defaultWorkspace];
  v5 = [v4 applicationIsInstalled:@"com.apple.Translate"];

  if (v5)
  {
    if (dword_1002F7008 <= 50 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F6290();
    }

    farFieldSessionOnGoing = self->_farFieldSessionOnGoing;
    if (farFieldSessionOnGoing == 1)
    {
      if (dword_1002F7008 <= 50 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F62AC();
      }

      goto LABEL_24;
    }

    if (dword_1002F7008 <= 50)
    {
      if (dword_1002F7008 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_23;
        }

        LOBYTE(farFieldSessionOnGoing) = self->_farFieldSessionOnGoing;
      }

      v11 = farFieldSessionOnGoing;
      LogPrintF();
    }

LABEL_23:
    AudioServicesPlaySystemSoundWithOptions();
LABEL_24:
    [_LTTranslationToolKit startPersonalTranslationSession:&stru_1002BA930, v11];
    goto LABEL_25;
  }

  if (dword_1002F7008 <= 90 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F6234();
  }

  v7 = +[AADeviceManagerDaemon sharedAADeviceManagerDaemon];
  availableDevices = [v7 availableDevices];
  v9 = [availableDevices objectForKeyedSubscript:identifierCopy];

  if (v9)
  {
    v10 = +[AAFeatureOnboarding sharedInstance];
    [v10 showAssetManagerDownloadPTAppNotificationForDevice:v9 withErrorHandler:&stru_1002BA910];
  }

  else if (dword_1002F7008 <= 90 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F6250();
  }

LABEL_25:
}

- (void)_handleFarFieldStatusChanged:(id)changed
{
  changedCopy = changed;
  userInfo = [changedCopy userInfo];
  v14 = [userInfo objectForKeyedSubscript:@"address"];

  userInfo2 = [changedCopy userInfo];

  v6 = [userInfo2 objectForKeyedSubscript:@"value"];
  intValue = [v6 intValue];

  if (dword_1002F7008 <= 50 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F6380();
  }

  v8 = +[AAGestureControl sharedGestureControl];
  if (intValue)
  {
    v9 = 1;
  }

  else
  {
    v9 = 2;
  }

  if (intValue)
  {
    v10 = v14;
  }

  else
  {
    v10 = 0;
  }

  [v8 setFarFieldSessionOnGoing:v9];

  v11 = +[AAGestureControl sharedGestureControl];
  [v11 setFarFieldDeviceAddress:v10];

  if (!intValue)
  {
    v12 = +[AAGestureControl sharedGestureControl];
    [v12 setFarFieldDeviceAddress:0];
  }

  v13 = +[AADeviceManagerDaemon sharedAADeviceManagerDaemon];
  [v13 updateFarFieldSessionOnGoing:v9 forBluetoothAddress:v14];
}

- (void)_farFieldStatusMonitoringEnsureStarted
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_handleFarFieldStatusChanged:" name:@"com.apple.bluetooth.FarFieldBluetoothRouteEnable" object:0];
}

- (void)_farFieldStatusMonitoringEnsureStopped
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"com.apple.bluetooth.FarFieldBluetoothRouteEnable" object:0];
}

- (void)dealloc
{
  [(AAGestureControl *)self _farFieldStatusMonitoringEnsureStopped];
  v3.receiver = self;
  v3.super_class = AAGestureControl;
  [(AAGestureControl *)&v3 dealloc];
}

- (void)_observeCameraStatusEnsureStarted
{
  if (!self->_captureAppMonitor)
  {
    v3 = objc_alloc_init(SBSPhysicalButtonTargetMonitor);
    captureAppMonitor = self->_captureAppMonitor;
    self->_captureAppMonitor = v3;

    v5 = self->_captureAppMonitor;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000B5A24;
    v8[3] = &unk_1002BA8B0;
    v8[4] = self;
    v6 = [(SBSPhysicalButtonTargetMonitor *)v5 startObservingPresenceOfPhysicalButtonTargets:v8];
    captureAppObserverToken = self->_captureAppObserverToken;
    self->_captureAppObserverToken = v6;
  }
}

- (void)_observeCameraStatusEnsureStopped
{
  captureAppObserverToken = self->_captureAppObserverToken;
  if (captureAppObserverToken)
  {
    [(BSInvalidatable *)captureAppObserverToken invalidate];
    v4 = self->_captureAppObserverToken;
    self->_captureAppObserverToken = 0;

    captureAppMonitor = self->_captureAppMonitor;
    if (captureAppMonitor)
    {
      self->_captureAppMonitor = 0;

      self->_captureAppActive = 0;
    }
  }
}

- (void)_connectedDeviceFound:(id)found
{
  foundCopy = found;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  cameraControlCapability = _os_feature_enabled_impl();
  v5 = foundCopy;
  if (cameraControlCapability)
  {
    cameraControlCapability = [foundCopy cameraControlCapability];
    v5 = foundCopy;
    if (cameraControlCapability == 2)
    {
      identifier = [foundCopy identifier];
      devicesMap = self->_devicesMap;
      if (!devicesMap)
      {
        v8 = objc_alloc_init(NSMutableDictionary);
        v9 = self->_devicesMap;
        self->_devicesMap = v8;

        devicesMap = self->_devicesMap;
      }

      v10 = [(NSMutableDictionary *)devicesMap objectForKeyedSubscript:identifier];
      [(NSMutableDictionary *)self->_devicesMap setObject:foundCopy forKeyedSubscript:identifier];
      if (!v10)
      {
        [(AAGestureControl *)self _observeCameraStatusEnsureStarted];
        if (self->_captureAppActive)
        {
          if (dword_1002F7008 <= 30 && (dword_1002F7008 != -1 || _LogCategory_Initialize()))
          {
            LogPrintF();
            [(AAGestureControl *)self _updateCameraGestureforDevice:foundCopy, 0];
          }

          else
          {
            [(AAGestureControl *)self _updateCameraGestureforDevice:foundCopy, v11];
          }
        }
      }

      v5 = foundCopy;
    }
  }

  _objc_release_x1(cameraControlCapability, v5);
}

@end