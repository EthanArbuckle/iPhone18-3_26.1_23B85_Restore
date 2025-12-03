@interface AAUSBSupportedDeviceManagerDaemon
+ (id)sharedAAUSBSupportedDeviceManagerDaemon;
- (AAUSBSupportedDeviceManagerDaemon)init;
- (BOOL)_isWxPaired:(id)paired;
- (void)_accessoryDiscoveryEnsureStarted;
- (void)_accessoryDiscoveryEnsureStopped;
- (void)_activate;
- (void)_bluetoothDeviceFound:(id)found;
- (void)_bluetoothDeviceLost:(id)lost;
- (void)_bluetoothStateChanged:(int64_t)changed;
- (void)_connectToUSBDevice:(id)device isUserInitiate:(BOOL)initiate;
- (void)_dismissAnyPairingProxCard;
- (void)_invalidate;
- (void)_invokeAnyProxCardUserActionCompletion:(id)completion result:(unsigned __int8)result;
- (void)_logCurrentListOfUSBDevice;
- (void)_pairedDeviceMonitorEnsureStarted;
- (void)_pairedDeviceMonitorEnsureStopped;
- (void)_powerMonitorEnsureStarted;
- (void)_powerMonitorEnsureStopped;
- (void)_prefsChanged;
- (void)_startEffectiveUnlockedAfterBootTimer:(unint64_t)timer;
- (void)_startPairingCompletionTimer:(id)timer;
- (void)_startPairingModeTimer:(id)timer;
- (void)activate;
- (void)invalidate;
- (void)proxCardUserActionOnHeadphone:(id)headphone btAddress:(id)address withAction:(unsigned __int8)action completion:(id)completion;
- (void)usbDeviceAirplaneModeChanged:(BOOL)changed address:(id)address;
- (void)usbDeviceFound:(id)found;
- (void)usbDeviceLost:(id)lost;
- (void)usbDevicePairingModeChanged:(BOOL)changed address:(id)address;
@end

@implementation AAUSBSupportedDeviceManagerDaemon

+ (id)sharedAAUSBSupportedDeviceManagerDaemon
{
  if (qword_1002FA1F8 != -1)
  {
    sub_1001F88EC();
  }

  v3 = qword_1002FA1F0;

  return v3;
}

- (AAUSBSupportedDeviceManagerDaemon)init
{
  v8.receiver = self;
  v8.super_class = AAUSBSupportedDeviceManagerDaemon;
  v2 = [(AAUSBSupportedDeviceManagerDaemon *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AAUSBSupportedDeviceManagerDaemon", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CD7A4;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  [(AAUSBSupportedDeviceManagerDaemon *)self _prefsChanged];
  [(AAUSBSupportedDeviceManagerDaemon *)self _pairedDeviceMonitorEnsureStarted];
  [(AAUSBSupportedDeviceManagerDaemon *)self _accessoryDiscoveryEnsureStarted];

  [(AAUSBSupportedDeviceManagerDaemon *)self _powerMonitorEnsureStarted];
}

- (void)_accessoryDiscoveryEnsureStarted
{
  v3 = self->_aaDeviceManager;
  if (!v3)
  {
    v4 = objc_alloc_init(AADeviceManager);
    aaDeviceManager = self->_aaDeviceManager;
    self->_aaDeviceManager = v4;

    v6 = +[AAServicesDaemon sharedAAServicesDaemon];
    [(AADeviceManager *)v4 setInternalServicesDaemon:v6];

    [(AADeviceManager *)v4 setDispatchQueue:self->_dispatchQueue];
    [(AADeviceManager *)v4 setInterruptionHandler:&stru_1002BB0C0];
    [(AADeviceManager *)v4 setInvalidationHandler:&stru_1002BB0E0];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000CDAD4;
    v11[3] = &unk_1002B7820;
    v11[4] = self;
    [(AADeviceManager *)v4 setDeviceFoundHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000CDAE0;
    v10[3] = &unk_1002B7820;
    v10[4] = self;
    [(AADeviceManager *)v4 setDeviceLostHandler:v10];
    if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F891C();
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000CDB70;
    v7[3] = &unk_1002B68A8;
    v3 = v4;
    v8 = v3;
    selfCopy = self;
    [(AADeviceManager *)v3 activateWithCompletion:v7];
  }
}

- (void)_accessoryDiscoveryEnsureStopped
{
  aaDeviceManager = self->_aaDeviceManager;
  if (aaDeviceManager)
  {
    [(AADeviceManager *)aaDeviceManager invalidate];
    v4 = self->_aaDeviceManager;
    self->_aaDeviceManager = 0;
  }
}

- (void)_connectToUSBDevice:(id)device isUserInitiate:(BOOL)initiate
{
  initiateCopy = initiate;
  deviceCopy = device;
  v7 = deviceCopy;
  if (self->_prefUSBAudioDevice)
  {
    if (deviceCopy)
    {
      v8 = objc_alloc_init(CBDevice);
      [v8 setIdentifier:v7];
      v9 = objc_alloc_init(CBConnection);
      [v9 setPeerDevice:v8];
      [v9 setDispatchQueue:self->_dispatchQueue];
      [v9 setConnectionFlags:2];
      if (initiateCopy)
      {
        [v9 setConnectionFlags:{objc_msgSend(v9, "connectionFlags") | 0x30}];
      }

      [v9 setServiceFlags:0xFFFFFFFFLL];
      if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F8A58();
      }

      v10[0] = _NSConcreteStackBlock;
      v10[1] = 3221225472;
      v10[2] = sub_1000CDE28;
      v10[3] = &unk_1002B68A8;
      v11 = v7;
      v12 = v9;
      [v9 activateWithCompletion:v10];
    }

    else if (dword_1002F72A0 <= 90 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F8A98();
    }
  }
}

- (void)_bluetoothDeviceFound:(id)found
{
  bluetoothAddress = [found bluetoothAddress];
  v10 = bluetoothAddress;
  if (bluetoothAddress)
  {
    v5 = [(NSMutableDictionary *)self->_aaUSBDeviceMap objectForKeyedSubscript:bluetoothAddress];
    v6 = v5;
    if (v5)
    {
      if ([v5 isPairingInProgress])
      {
        pairingCompletionTimer = self->_pairingCompletionTimer;
        if (pairingCompletionTimer)
        {
          v8 = pairingCompletionTimer;
          dispatch_source_cancel(v8);
          v9 = self->_pairingCompletionTimer;
          self->_pairingCompletionTimer = 0;
        }

        [(AAUSBSupportedDeviceManagerDaemon *)self _invokeAnyProxCardUserActionCompletion:v10 result:1];
      }

      [v6 setConnectionState:2];
      [v6 setIsPairingInProgress:0];
    }

    else
    {
      sub_1001F8AB4();
    }
  }

  else
  {
    sub_1001F8B14();
  }
}

- (void)_bluetoothDeviceLost:(id)lost
{
  bluetoothAddress = [lost bluetoothAddress];
  v7 = bluetoothAddress;
  if (bluetoothAddress)
  {
    v5 = [(NSMutableDictionary *)self->_aaUSBDeviceMap objectForKeyedSubscript:bluetoothAddress];
    v6 = v5;
    if (v5)
    {
      [v5 setConnectionState:0];
    }

    else
    {
      sub_1001F8B74();
    }
  }

  else
  {
    sub_1001F8BD4();
  }
}

- (void)_bluetoothStateChanged:(int64_t)changed
{
  if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F8C34(self, changed);
  }

  self->_bluetoothState = changed;
  if (changed == 4)
  {

    [(AAUSBSupportedDeviceManagerDaemon *)self _dismissAnyPairingProxCard];
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CE13C;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  [(AAUSBSupportedDeviceManagerDaemon *)self _pairedDeviceMonitorEnsureStopped];
  [(AAUSBSupportedDeviceManagerDaemon *)self _accessoryDiscoveryEnsureStopped];
  [(AAUSBSupportedDeviceManagerDaemon *)self _powerMonitorEnsureStopped];
  [(NSMutableDictionary *)self->_aaUSBDeviceMap removeAllObjects];
  aaUSBDeviceMap = self->_aaUSBDeviceMap;
  self->_aaUSBDeviceMap = 0;

  [(AAUSBSupportedDeviceManagerDaemon *)self _dismissAnyPairingProxCard];
}

- (void)_invokeAnyProxCardUserActionCompletion:(id)completion result:(unsigned __int8)result
{
  resultCopy = result;
  completionCopy = completion;
  v7 = completionCopy;
  if (!self->_proxCardUserActionCompletion)
  {
    goto LABEL_20;
  }

  switch(resultCopy)
  {
    case 3:
      v14 = completionCopy;
      if (dword_1002F72A0 <= 90 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F8CB0();
      }

      v9 = [NSError alloc];
      v10 = off_1002F7298;
      v11 = &off_1002CC0D0;
      v12 = 3;
      goto LABEL_17;
    case 2:
      v14 = completionCopy;
      if (dword_1002F72A0 <= 90 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F8CF0();
      }

      v9 = [NSError alloc];
      v10 = off_1002F7298;
      v11 = &off_1002CC0A8;
      v12 = 2;
LABEL_17:
      v8 = [v9 initWithDomain:v10 code:v12 userInfo:v11];
LABEL_18:
      (*(self->_proxCardUserActionCompletion + 2))();
      proxCardUserActionCompletion = self->_proxCardUserActionCompletion;
      self->_proxCardUserActionCompletion = 0;

LABEL_19:
      v7 = v14;
      goto LABEL_20;
    case 1:
      v14 = completionCopy;
      if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F8D30();
      }

      v8 = 0;
      goto LABEL_18;
  }

  if (dword_1002F72A0 <= 90)
  {
    v14 = completionCopy;
    if (dword_1002F72A0 != -1 || (completionCopy = _LogCategory_Initialize(), v7 = v14, completionCopy))
    {
      completionCopy = sub_1001F8D70();
      goto LABEL_19;
    }
  }

LABEL_20:

  _objc_release_x1(completionCopy, v7);
}

- (void)_prefsChanged
{
  v3 = _os_feature_enabled_impl();
  if (self->_prefUSBAudioDevice != v3)
  {
    v4 = v3;
    if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F8DC8();
    }

    self->_prefUSBAudioDevice = v4;
  }
}

- (void)_pairedDeviceMonitorEnsureStarted
{
  if (!self->_pairedDiscovery)
  {
    v13[5] = v5;
    v13[6] = v4;
    v13[11] = v2;
    v13[12] = v3;
    if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F8E24();
    }

    v7 = objc_alloc_init(CBDiscovery);
    pairedDiscovery = self->_pairedDiscovery;
    self->_pairedDiscovery = v7;
    v9 = v7;

    [(CBDiscovery *)v9 setDispatchQueue:self->_dispatchQueue];
    [(CBDiscovery *)v9 setLabel:@"AAPairingManagerDaemon"];
    [(CBDiscovery *)v9 setDiscoveryFlags:[(CBDiscovery *)v9 discoveryFlags]| 0x800000];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_1000CE5E4;
    v13[3] = &unk_1002B6880;
    v13[4] = self;
    [(CBDiscovery *)v9 setBluetoothStateChangedHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000CE624;
    v12[3] = &unk_1002B6DA8;
    v12[4] = self;
    v12[5] = v9;
    [(CBDiscovery *)v9 setDeviceFoundHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000CE6B8;
    v11[3] = &unk_1002B6DA8;
    v11[4] = self;
    v11[5] = v9;
    [(CBDiscovery *)v9 setDeviceLostHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000CE74C;
    v10[3] = &unk_1002B68A8;
    v10[4] = self;
    v10[5] = v9;
    [(CBDiscovery *)v9 activateWithCompletion:v10];
  }
}

- (void)_pairedDeviceMonitorEnsureStopped
{
  if (self->_pairedDiscovery)
  {
    if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F8F00();
    }

    [(CBDiscovery *)self->_pairedDiscovery invalidate];
    pairedDiscovery = self->_pairedDiscovery;
    self->_pairedDiscovery = 0;
  }
}

- (void)_powerMonitorEnsureStarted
{
  if (!self->_powerMonitor)
  {
    v9[10] = v2;
    v9[11] = v3;
    if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F8F1C();
    }

    v5 = objc_alloc_init(CUSystemMonitor);
    powerMonitor = self->_powerMonitor;
    self->_powerMonitor = v5;
    v7 = v5;

    [(CUSystemMonitor *)v7 setDispatchQueue:self->_dispatchQueue];
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000CE9B8;
    v9[3] = &unk_1002B6D18;
    v9[4] = v7;
    v9[5] = self;
    v8 = objc_retainBlock(v9);
    [(CUSystemMonitor *)v7 setFirstUnlockHandler:v8];
    [(CUSystemMonitor *)v7 setScreenOnChangedHandler:v8];
    [(CUSystemMonitor *)v7 setScreenStateChangedHandler:v8];
    [(CUSystemMonitor *)v7 activateWithCompletion:v8];
  }
}

- (void)_powerMonitorEnsureStopped
{
  if (self->_powerMonitor)
  {
    if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F8F38();
    }

    [(CUSystemMonitor *)self->_powerMonitor invalidate];
    powerMonitor = self->_powerMonitor;
    self->_powerMonitor = 0;
  }
}

- (void)_startEffectiveUnlockedAfterBootTimer:(unint64_t)timer
{
  if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F8F54();
  }

  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  effectiveUnlockedAfterBootTimer = self->_effectiveUnlockedAfterBootTimer;
  self->_effectiveUnlockedAfterBootTimer = v4;
  v6 = v4;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000CEBC4;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v6, handler);
  CUDispatchTimerSet();
  dispatch_activate(v6);
}

- (void)usbDeviceFound:(id)found
{
  foundCopy = found;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CECE8;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = foundCopy;
  v6 = foundCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_dismissAnyPairingProxCard
{
  proxCardHandler = self->_proxCardHandler;
  if (proxCardHandler)
  {
    [(AAProxCardHandler *)proxCardHandler dismiss];
  }

  [(AAUSBSupportedDeviceManagerDaemon *)self _invokeAnyProxCardUserActionCompletion:0 result:3];
}

- (void)usbDeviceLost:(id)lost
{
  lostCopy = lost;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000CF598;
  v7[3] = &unk_1002B6D18;
  v7[4] = self;
  v8 = lostCopy;
  v6 = lostCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)usbDeviceAirplaneModeChanged:(BOOL)changed address:(id)address
{
  addressCopy = address;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CF904;
  block[3] = &unk_1002B7170;
  changedCopy = changed;
  block[4] = self;
  v10 = addressCopy;
  v8 = addressCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)usbDevicePairingModeChanged:(BOOL)changed address:(id)address
{
  addressCopy = address;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000CFCCC;
  block[3] = &unk_1002B7170;
  changedCopy = changed;
  block[4] = self;
  v10 = addressCopy;
  v8 = addressCopy;
  dispatch_async(dispatchQueue, block);
}

- (BOOL)_isWxPaired:(id)paired
{
  pairedCopy = paired;
  if (pairedCopy)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    discoveredDevices = [(CBDiscovery *)self->_pairedDiscovery discoveredDevices];
    v6 = [discoveredDevices countByEnumeratingWithState:&v12 objects:v16 count:16];
    if (v6)
    {
      v7 = *v13;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v13 != v7)
          {
            objc_enumerationMutation(discoveredDevices);
          }

          btAddressData = [*(*(&v12 + 1) + 8 * i) btAddressData];
          v10 = CUPrintNSDataAddress();

          if (v10 && ([pairedCopy isEqualToString:v10] & 1) != 0)
          {

            LOBYTE(v6) = 1;
            goto LABEL_14;
          }
        }

        v6 = [discoveredDevices countByEnumeratingWithState:&v12 objects:v16 count:16];
        if (v6)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    LOBYTE(v6) = 0;
  }

  return v6;
}

- (void)proxCardUserActionOnHeadphone:(id)headphone btAddress:(id)address withAction:(unsigned __int8)action completion:(id)completion
{
  addressCopy = address;
  completionCopy = completion;
  dispatchQueue = self->_dispatchQueue;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000D01A8;
  v14[3] = &unk_1002B7AF0;
  v14[4] = self;
  v15 = addressCopy;
  actionCopy = action;
  v16 = completionCopy;
  v12 = completionCopy;
  v13 = addressCopy;
  dispatch_async(dispatchQueue, v14);
}

- (void)_startPairingModeTimer:(id)timer
{
  timerCopy = timer;
  btAddress = [timerCopy btAddress];
  if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F91C0();
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  pairingModeTimer = self->_pairingModeTimer;
  self->_pairingModeTimer = v6;
  v8 = v6;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000D088C;
  handler[3] = &unk_1002B6CF0;
  v12 = btAddress;
  v13 = timerCopy;
  selfCopy = self;
  v9 = timerCopy;
  v10 = btAddress;
  dispatch_source_set_event_handler(v8, handler);
  CUDispatchTimerSet();
  dispatch_activate(v8);
}

- (void)_startPairingCompletionTimer:(id)timer
{
  timerCopy = timer;
  btAddress = [timerCopy btAddress];
  if (dword_1002F72A0 <= 30 && (dword_1002F72A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F9248();
  }

  v6 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  pairingCompletionTimer = self->_pairingCompletionTimer;
  self->_pairingCompletionTimer = v6;
  v8 = v6;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000D0AA0;
  handler[3] = &unk_1002B6CF0;
  v12 = btAddress;
  v13 = timerCopy;
  selfCopy = self;
  v9 = timerCopy;
  v10 = btAddress;
  dispatch_source_set_event_handler(v8, handler);
  CUDispatchTimerSet();
  dispatch_activate(v8);
}

- (void)_logCurrentListOfUSBDevice
{
  v4[0] = 0;
  v4[1] = v4;
  v4[2] = 0x2020000000;
  v5 = 1;
  aaUSBDeviceMap = self->_aaUSBDeviceMap;
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_1000D0C1C;
  v3[3] = &unk_1002BB150;
  v3[4] = v4;
  [(NSMutableDictionary *)aaUSBDeviceMap enumerateKeysAndObjectsUsingBlock:v3];
  _Block_object_dispose(v4, 8);
}

@end