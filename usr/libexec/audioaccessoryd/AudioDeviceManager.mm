@interface AudioDeviceManager
+ (id)sharedAudioDeviceManager;
- (AudioDeviceManager)init;
- (BOOL)_isDevicePairedCheck:(id)check;
- (BOOL)_isUSBDevice:(id)device;
- (id)_ensureXPCStarted;
- (id)_myBluetoothAddressString;
- (void)_activate;
- (void)_bluetoothStateUpdate:(int64_t)update;
- (void)_connectedDeviceFound:(id)found;
- (void)_connectedDeviceLost:(id)lost;
- (void)_connectedUSBDeviceMonitorStart;
- (void)_ensureXPCStopped;
- (void)_hostBTAddress:(id)address;
- (void)_invalidate;
- (void)_newUSBDeviceFound:(id)found;
- (void)_startXPCConnection;
- (void)_usbDeviceLost:(id)lost;
- (void)_usbDevicePropertyChanged:(id)changed;
- (void)_xpcConnectionEvent:(id)event;
- (void)_xpcConnectionInvalidated:(id)invalidated;
- (void)activate:(BOOL)activate;
- (void)getAllAudioAccessoriesPublishedUIDsWithCompletion:(id)completion;
- (void)sendMsg:(int)msg forUID:(id)d withArgs:(id)args;
- (void)usbDeviceDisableAirPlaneMode:(id)mode;
- (void)usbDeviceEnableAirPlaneMode:(id)mode;
- (void)usbDeviceHideDevice:(id)device;
- (void)usbDeviceUnHideDevice:(id)device;
@end

@implementation AudioDeviceManager

+ (id)sharedAudioDeviceManager
{
  if (qword_1002FA018 != -1)
  {
    sub_1001D0FA0();
  }

  v3 = qword_1002FA010;

  return v3;
}

- (AudioDeviceManager)init
{
  v8.receiver = self;
  v8.super_class = AudioDeviceManager;
  v2 = [(AudioDeviceManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.AudioDeviceManager", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (void)activate:(BOOL)activate
{
  if (_os_feature_enabled_impl())
  {
    dispatchQueue = self->_dispatchQueue;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100009B04;
    v6[3] = &unk_1002B67F0;
    activateCopy = activate;
    v6[4] = self;
    dispatch_async(dispatchQueue, v6);
  }

  else if (dword_1002F5DA0 <= 30 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D0FB4();
  }
}

- (void)getAllAudioAccessoriesPublishedUIDsWithCompletion:(id)completion
{
  completionCopy = completion;
  if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D102C();
  }

  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x3032000000;
  v11[3] = sub_1000038B8;
  v11[4] = sub_100003808;
  v12 = objc_alloc_init(NSMutableArray);
  if (self->_xpcConnection)
  {
    if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v5 = xpc_dictionary_create(0, 0, 0);
    xpc_dictionary_set_uint64(v5, "kBTAudioMsgId", 0x16uLL);
    xpcConnection = self->_xpcConnection;
    dispatchQueue = self->_dispatchQueue;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100009D9C;
    v8[3] = &unk_1002B6818;
    v10 = v11;
    v9 = completionCopy;
    xpc_connection_send_message_with_reply(xpcConnection, v5, dispatchQueue, v8);
  }

  else if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  _Block_object_dispose(v11, 8);
}

- (void)sendMsg:(int)msg forUID:(id)d withArgs:(id)args
{
  dCopy = d;
  argsCopy = args;
  if (self->_xpcConnection)
  {
    *keys = *off_1002B6838;
    v16 = "kBTAudioMsgArgs";
    values[0] = xpc_uint64_create(msg);
    values[1] = xpc_string_create([dCopy UTF8String]);
    if (argsCopy)
    {
      v10 = 3;
    }

    else
    {
      v10 = 2;
    }

    v11 = xpc_dictionary_create(keys, values, v10);
    if (v11)
    {
      if (dword_1002F5DA0 <= 40 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D1170();
      }

      xpc_connection_send_message(self->_xpcConnection, v11);
    }

    else
    {
      sub_1001D11B0(dword_1002F5DA0);
    }

    for (i = 2; i != -1; --i)
    {
    }
  }

  else
  {
    sub_1001D1210();
  }
}

- (void)usbDeviceEnableAirPlaneMode:(id)mode
{
  modeCopy = mode;
  if (modeCopy)
  {
    if (self->_xpcConnection)
    {
      if (dword_1002F5DA0 <= 40 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D1270();
      }

      v4 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v4, "kBTAudioMsgId", 0x23uLL);
      xpc_dictionary_set_string(v4, "kAccAudioMsgArgUSBDeviceBTAddress", [modeCopy UTF8String]);
      xpc_connection_send_message(self->_xpcConnection, v4);
    }

    else
    {
      sub_1001D12B0(dword_1002F5DA0);
    }
  }

  else
  {
    sub_1001D1308();
  }
}

- (void)usbDeviceDisableAirPlaneMode:(id)mode
{
  modeCopy = mode;
  if (modeCopy)
  {
    if (self->_xpcConnection)
    {
      if (dword_1002F5DA0 <= 40 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D1368();
      }

      v4 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v4, "kBTAudioMsgId", 0x24uLL);
      xpc_dictionary_set_string(v4, "kAccAudioMsgArgUSBDeviceBTAddress", [modeCopy UTF8String]);
      xpc_connection_send_message(self->_xpcConnection, v4);
    }

    else
    {
      sub_1001D13A8(dword_1002F5DA0);
    }
  }

  else
  {
    sub_1001D1400();
  }
}

- (void)usbDeviceHideDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy)
  {
    if (self->_xpcConnection)
    {
      if (dword_1002F5DA0 <= 40 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D1460();
      }

      v4 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v4, "kBTAudioMsgId", 0x20uLL);
      xpc_dictionary_set_string(v4, "kAccAudioMsgArgUSBDeviceBTAddress", [deviceCopy UTF8String]);
      xpc_connection_send_message(self->_xpcConnection, v4);
    }

    else
    {
      sub_1001D14A0(dword_1002F5DA0);
    }
  }

  else
  {
    sub_1001D14F8();
  }
}

- (void)usbDeviceUnHideDevice:(id)device
{
  deviceCopy = device;
  if (deviceCopy)
  {
    if (self->_xpcConnection)
    {
      if (dword_1002F5DA0 <= 40 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D1558();
      }

      v4 = xpc_dictionary_create(0, 0, 0);
      xpc_dictionary_set_uint64(v4, "kBTAudioMsgId", 0x21uLL);
      xpc_dictionary_set_string(v4, "kAccAudioMsgArgUSBDeviceBTAddress", [deviceCopy UTF8String]);
      xpc_connection_send_message(self->_xpcConnection, v4);
    }

    else
    {
      sub_1001D1598(dword_1002F5DA0);
    }
  }

  else
  {
    sub_1001D15F0();
  }
}

- (void)_activate
{
  _ensureXPCStarted = [(AudioDeviceManager *)self _ensureXPCStarted];
  [(AudioDeviceManager *)self _startXPCConnection];

  [(AudioDeviceManager *)self _connectedUSBDeviceMonitorStart];
}

- (void)_bluetoothStateUpdate:(int64_t)update
{
  if (update == 5)
  {
    btPowerState = self->_btPowerState;
    if (!btPowerState)
    {
      if (dword_1002F5DA0 <= 50)
      {
        if (dword_1002F5DA0 != -1 || _LogCategory_Initialize())
        {
          sub_1001D1650();
        }

        btPowerState = self->_btPowerState;
      }

      if (!btPowerState)
      {
        self->_btPowerState = 1;
LABEL_17:
        if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D1688();
        }

        xdict = xpc_dictionary_create(0, 0, 0);
        xpc_dictionary_set_uint64(xdict, "kBTAudioMsgId", 0x1EuLL);
        xpc_dictionary_set_BOOL(xdict, "kAccAudioMsgArgUSBDeviceHiddenState", self->_btPowerState);
        _ensureXPCStarted = [(AudioDeviceManager *)self _ensureXPCStarted];
        xpc_connection_send_message(_ensureXPCStarted, xdict);
      }
    }
  }

  else if (update == 4 && self->_btPowerState)
  {
    if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D166C();
    }

    if (self->_btPowerState)
    {
      self->_btPowerState = 0;
      goto LABEL_17;
    }
  }
}

- (void)_connectedDeviceFound:(id)found
{
  foundCopy = found;
  v4 = [(AudioDeviceManager *)self _isUSBDevice:foundCopy];
  v5 = foundCopy;
  if (v4)
  {
    btAddressData = [foundCopy btAddressData];
    v7 = CUPrintNSDataAddress();

    if (v7)
    {
      if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D16A4();
      }

      [(NSMutableDictionary *)self->_connectedBTUSBDevices setObject:foundCopy forKeyedSubscript:v7];
    }

    v5 = foundCopy;
  }

  _objc_release_x1(v4, v5);
}

- (void)_connectedDeviceLost:(id)lost
{
  lostCopy = lost;
  v4 = [(AudioDeviceManager *)self _isUSBDevice:lostCopy];
  v5 = lostCopy;
  if (v4)
  {
    btAddressData = [lostCopy btAddressData];
    v7 = CUPrintNSDataAddress();

    if (v7)
    {
      v8 = [(NSMutableDictionary *)self->_connectedBTUSBDevices objectForKeyedSubscript:v7];

      if (v8)
      {
        if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D16E4();
        }

        [(NSMutableDictionary *)self->_connectedBTUSBDevices setObject:0 forKeyedSubscript:v7];
      }
    }

    v5 = lostCopy;
  }

  _objc_release_x1(v4, v5);
}

- (void)_connectedUSBDeviceMonitorStart
{
  if (!self->_connectedBTDiscovery)
  {
    v13[5] = v5;
    v13[6] = v4;
    v13[11] = v2;
    v13[12] = v3;
    if (dword_1002F5DA0 <= 30 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D1724();
    }

    v7 = objc_alloc_init(CBDiscovery);
    connectedBTDiscovery = self->_connectedBTDiscovery;
    self->_connectedBTDiscovery = v7;
    v9 = v7;

    [(CBDiscovery *)v9 setDispatchQueue:self->_dispatchQueue];
    [(CBDiscovery *)v9 setLabel:@"AudioDeviceManager"];
    [(CBDiscovery *)v9 setDiscoveryFlags:[(CBDiscovery *)v9 discoveryFlags]| 0x200000];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10000AACC;
    v13[3] = &unk_1002B6858;
    v13[4] = self;
    [(CBDiscovery *)v9 setDeviceFoundHandler:v13];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_10000AAD8;
    v12[3] = &unk_1002B6880;
    v12[4] = self;
    [(CBDiscovery *)v9 setBluetoothStateChangedHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10000AB18;
    v11[3] = &unk_1002B6858;
    v11[4] = self;
    [(CBDiscovery *)v9 setDeviceLostHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000AB24;
    v10[3] = &unk_1002B68A8;
    v10[4] = self;
    v10[5] = v9;
    [(CBDiscovery *)v9 activateWithCompletion:v10];
  }
}

- (void)_hostBTAddress:(id)address
{
  xdict = xpc_dictionary_create_reply(address);
  _myBluetoothAddressString = [(AudioDeviceManager *)self _myBluetoothAddressString];
  v5 = _myBluetoothAddressString;
  if (_myBluetoothAddressString)
  {
    xpc_dictionary_set_string(xdict, "kAccAudioMsgArgUSBHostBTAddress", [_myBluetoothAddressString UTF8String]);
  }

  xpc_connection_send_message(self->_xpcConnection, xdict);
}

- (BOOL)_isUSBDevice:(id)device
{
  deviceCopy = device;
  v4 = ([deviceCopy connectedServices] & 0x11) != 0 && objc_msgSend(deviceCopy, "productID") == 8223;

  return v4;
}

- (id)_myBluetoothAddressString
{
  p_myBTAddress = &self->_myBTAddress;
  myBTAddress = self->_myBTAddress;
  if (!myBTAddress || -[NSString length](myBTAddress, "length") != 17 || !strcmp([*p_myBTAddress UTF8String], "00:00:00:00:00:00") || objc_msgSend(*p_myBTAddress, "isEqualToString:", @"NULL"))
  {
    v4 = [CBController controllerInfoAndReturnError:0];
    hardwareAddressData = [v4 hardwareAddressData];
    v6 = CUPrintNSDataAddress();
    v7 = *p_myBTAddress;
    *p_myBTAddress = v6;

    if (!*p_myBTAddress || [*p_myBTAddress length] != 17 || !strcmp(objc_msgSend(*p_myBTAddress, "UTF8String"), "00:00:00:00:00:00") || objc_msgSend(*p_myBTAddress, "isEqualToString:", @"NULL"))
    {
      v8 = MGCopyAnswer();
      uppercaseString = [v8 uppercaseString];
      v10 = *p_myBTAddress;
      *p_myBTAddress = uppercaseString;
    }
  }

  if (dword_1002F5DA0 <= 30 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D1780(p_myBTAddress);
  }

  v11 = *p_myBTAddress;

  return v11;
}

- (void)_newUSBDeviceFound:(id)found
{
  xdict = found;
  if (!self->_usbDeviceMap)
  {
    v4 = objc_alloc_init(NSMutableDictionary);
    usbDeviceMap = self->_usbDeviceMap;
    self->_usbDeviceMap = v4;
  }

  if (self->_xpcConnection)
  {
    string = xpc_dictionary_get_string(xdict, "kAccAudioMsgArgBTAddress");
    v7 = xpc_dictionary_get_string(xdict, "kAccAudioMsgArgUSBID");
    v8 = xpc_dictionary_get_string(xdict, "kAccAudioMsgArgUSBModelID");
    v9 = xpc_dictionary_get_string(xdict, "kAccAudioMsgArgUSBName");
    if (string)
    {
      if (v7)
      {
        v10 = v9;
        v11 = [NSString stringWithUTF8String:string];
        v12 = [NSString stringWithUTF8String:v7];
        reply = xpc_dictionary_create_reply(xdict);
        v14 = [(NSMutableDictionary *)self->_usbDeviceMap objectForKeyedSubscript:v11];

        if (v14)
        {
          if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
          {
            sub_1001D17C4();
          }

          [(NSMutableDictionary *)self->_usbDeviceMap setObject:0 forKeyedSubscript:v11];
        }

        v15 = objc_alloc_init(USBDevice);
        [(USBDevice *)v15 setUsbUID:v12];
        [(USBDevice *)v15 setBtAddress:v11];
        [(USBDevice *)v15 setColor:0];
        [(USBDevice *)v15 setFwVersion:0];
        [(USBDevice *)v15 setFeatureBitmask:0];
        [(USBDevice *)v15 setPid:0];
        if (v8)
        {
          v16 = [NSString stringWithUTF8String:v8];
          [(USBDevice *)v15 setUsbModel:v16];
        }

        if (v10)
        {
          v17 = [NSString stringWithUTF8String:v10];
          [(USBDevice *)v15 setUsbName:v17];
        }

        uint64 = xpc_dictionary_get_uint64(xdict, "kAccAudioMsgArgUSBColor");
        if (uint64)
        {
          v19 = [NSNumber numberWithUnsignedLong:uint64];
          [(USBDevice *)v15 setColor:v19];
        }

        v20 = xpc_dictionary_get_uint64(xdict, "kAccAudioMsgArgUSBPairingMode");
        if (v20)
        {
          v21 = [NSNumber numberWithUnsignedLong:v20];
          [(USBDevice *)v15 setPairingMode:v21];
        }

        v39 = reply;
        v22 = xpc_dictionary_get_uint64(xdict, "kAccAudioMsgArgUSBPid");
        if (v22)
        {
          v23 = [NSNumber numberWithUnsignedLong:v22];
          [(USBDevice *)v15 setPid:v23];
        }

        v24 = v12;
        v25 = xpc_dictionary_get_uint64(xdict, "kAccAudioMsgArgUSBFeatureBitMask");
        if (v25)
        {
          v26 = [NSNumber numberWithUnsignedLong:v25];
          [(USBDevice *)v15 setFeatureBitmask:v26];
        }

        v27 = xpc_dictionary_get_value(xdict, "kAccAudioMsgArgUSBFwVersion");
        count = xpc_array_get_count(v27);
        v29 = objc_alloc_init(NSMutableArray);
        if (v27 && xpc_get_type(v27) == &_xpc_type_array && count)
        {
          for (i = 0; i != count; ++i)
          {
            v31 = [NSNumber numberWithUnsignedLong:xpc_array_get_uint64(v27, i)];
            [v29 addObject:v31];
          }
        }

        [(USBDevice *)v15 setFwVersion:v29, v39];
        if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D17E0(v15);
        }

        [(USBDevice *)v15 setIsCurrentRoute:1];
        [(USBDevice *)v15 setIsStreaming:0];
        [(NSMutableDictionary *)self->_usbDeviceMap setObject:v15 forKeyedSubscript:v11];
        v32 = v24;
        objc_storeStrong(&self->_lastConnectedUSBDevice, v24);
        if (self->_btPowerState)
        {
          v33 = [(NSMutableDictionary *)self->_connectedBTUSBDevices objectForKeyedSubscript:v11];

          v34 = v40;
          if (v33)
          {
            xpc_dictionary_set_uint64(v40, "kBTAudioMsgMethod", 0x1AuLL);
            if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
            {
              sub_1001D199C();
            }
          }

          else
          {
            v35 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
            v36 = [v35 _isWxPaired:v11];

            if (v36)
            {
              xpc_dictionary_set_uint64(v40, "kBTAudioMsgMethod", 0x1BuLL);
              if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
              {
                sub_1001D19D4();
              }
            }

            else
            {
              if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
              {
                sub_1001D19B8();
              }

              xpc_dictionary_set_uint64(v40, "kBTAudioMsgMethod", 0x1CuLL);
            }
          }
        }

        else
        {
          v34 = v40;
          xpc_dictionary_set_uint64(v40, "kBTAudioMsgMethod", 0x1DuLL);
          if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
          {
            sub_1001D1980();
          }
        }

        v37 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
        [v37 usbDeviceFound:v15];

        v38 = +[AAUSBSupportedDeviceManagerDaemon sharedAAUSBSupportedDeviceManagerDaemon];
        [v38 usbDeviceFound:v15];

        xpc_connection_send_message(self->_xpcConnection, v34);
      }

      else
      {
        sub_1001D19F0();
      }
    }

    else
    {
      sub_1001D1A50();
    }
  }

  else
  {
    sub_1001D1AB0();
  }
}

- (void)_usbDeviceLost:(id)lost
{
  xdict = lost;
  if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D1B10();
  }

  if (self->_usbDeviceMap)
  {
    string = xpc_dictionary_get_string(xdict, "kAccAudioMsgArgBTAddress");
    v5 = xpc_dictionary_get_string(xdict, "kAccAudioMsgArgUSBID");
    if (string)
    {
      v6 = v5;
      if (v5)
      {
        v7 = [NSString stringWithUTF8String:string];
        v8 = [NSString stringWithUTF8String:v6];
        if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
        {
          v13 = v8;
          v14 = v7;
          LogPrintF();
        }

        v9 = [(NSMutableDictionary *)self->_usbDeviceMap objectForKeyedSubscript:v7, v13, v14];

        if (v9)
        {
          [(NSMutableDictionary *)self->_usbDeviceMap setObject:0 forKeyedSubscript:v7];
        }

        lastConnectedUSBDevice = self->_lastConnectedUSBDevice;
        self->_lastConnectedUSBDevice = 0;

        v11 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
        [v11 usbDeviceLost:v7];

        v12 = +[AAUSBSupportedDeviceManagerDaemon sharedAAUSBSupportedDeviceManagerDaemon];
        [v12 usbDeviceLost:v7];
      }

      else
      {
        sub_1001D1B2C();
      }
    }

    else
    {
      sub_1001D1B8C();
    }
  }
}

- (void)_usbDevicePropertyChanged:(id)changed
{
  changedCopy = changed;
  xdict = changedCopy;
  if (dword_1002F5DA0 <= 50)
  {
    if (dword_1002F5DA0 != -1 || (v5 = _LogCategory_Initialize(), changedCopy = xdict, v5))
    {
      sub_1001D1BEC();
      changedCopy = xdict;
    }
  }

  if (self->_usbDeviceMap)
  {
    string = xpc_dictionary_get_string(changedCopy, "kAccAudioMsgArgBTAddress");
    v7 = xpc_dictionary_get_string(xdict, "kAccAudioMsgArgUSBID");
    if (string)
    {
      v8 = v7;
      if (v7)
      {
        v9 = [NSString stringWithUTF8String:string];
        v10 = [NSString stringWithUTF8String:v8];
        v11 = [(NSMutableDictionary *)self->_usbDeviceMap objectForKeyedSubscript:v9];

        if (v11)
        {
          v12 = xpc_dictionary_get_dictionary(xdict, "kAccAudioMsgArgUSBDeviceStreamingState");
          if (v12)
          {
            v13 = xpc_dictionary_get_BOOL(xdict, "kAccAudioMsgArgUSBDeviceStreamingState");
            if (dword_1002F5DA0 < 51)
            {
              v14 = v13;
              if (dword_1002F5DA0 != -1 || _LogCategory_Initialize())
              {
                v15 = @"Not Streaming";
                if (v14)
                {
                  v15 = @"Streaming";
                }

                v21 = v9;
                v22 = v10;
                v23 = v15;
                LogPrintF();
              }
            }
          }

          if (xpc_dictionary_get_BOOL(xdict, "kAccAudioMsgArgUSBDevicePairingState"))
          {
            if (dword_1002F5DA0 < 51 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
            {
              v22 = v10;
              v23 = @"Ready to Pair.";
              v21 = v9;
              LogPrintF();
            }

            v18 = [AAUSBSupportedDeviceManagerDaemon sharedAAUSBSupportedDeviceManagerDaemon:v21];
            [v18 usbDevicePairingModeChanged:1 address:v9];
          }

          if (xpc_dictionary_get_BOOL(xdict, "kAccAudioMsgArgUSBDeviceAirPlaneModeOff"))
          {
            if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
            {
              v21 = v9;
              v22 = v10;
              LogPrintF();
            }

            v19 = [AAUSBSupportedDeviceManagerDaemon sharedAAUSBSupportedDeviceManagerDaemon:v21];
            [v19 usbDeviceAirplaneModeChanged:0 address:v9];
          }

          if (xpc_dictionary_get_BOOL(xdict, "kAccAudioMsgArgUSBDeviceAirPlaneModeOn"))
          {
            if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
            {
              v21 = v9;
              v22 = v10;
              LogPrintF();
            }

            v20 = [AAUSBSupportedDeviceManagerDaemon sharedAAUSBSupportedDeviceManagerDaemon:v21];
            [v20 usbDeviceAirplaneModeChanged:1 address:v9];
          }
        }

        else if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D1C08();
        }
      }

      else
      {
        sub_1001D1C24();
      }
    }

    else
    {
      sub_1001D1C84();
    }
  }

  else
  {
    v16 = objc_alloc_init(NSMutableDictionary);
    usbDeviceMap = self->_usbDeviceMap;
    self->_usbDeviceMap = v16;

    if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D1C08();
    }
  }
}

- (id)_ensureXPCStarted
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  xpcConnection = selfCopy->_xpcConnection;
  if (!xpcConnection)
  {
    if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    mach_service = xpc_connection_create_mach_service("com.apple.BTAudioHALPluginAccessories", selfCopy->_dispatchQueue, 0);
    v5 = selfCopy->_xpcConnection;
    selfCopy->_xpcConnection = mach_service;

    v6 = selfCopy->_xpcConnection;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000BB78;
    handler[3] = &unk_1002B68D0;
    handler[4] = selfCopy;
    xpc_connection_set_event_handler(v6, handler);
    xpc_connection_activate(selfCopy->_xpcConnection);
    if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    xpcConnection = selfCopy->_xpcConnection;
  }

  v7 = xpcConnection;
  objc_sync_exit(selfCopy);

  return v7;
}

- (void)_invalidate
{
  obj = self;
  objc_sync_enter(obj);
  [(AudioDeviceManager *)obj _ensureXPCStopped];
  if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  objc_sync_exit(obj);
}

- (BOOL)_isDevicePairedCheck:(id)check
{
  checkCopy = check;
  v4 = +[CBIDSManager sharedInstance];
  v5 = [v4 idsDeviceForBTAddress:checkCopy];

  if (dword_1002F5DA0 <= 30 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D1CE4();
  }

  return v5 != 0;
}

- (void)_startXPCConnection
{
  if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D1D3C();
  }

  _myBluetoothAddressString = [(AudioDeviceManager *)self _myBluetoothAddressString];
  v3 = xpc_dictionary_create(0, 0, 0);
  xpc_dictionary_set_uint64(v3, "kBTAudioMsgId", 0x17uLL);
  if (_myBluetoothAddressString)
  {
    xpc_dictionary_set_string(v3, "kBTAudioMsgDeviceUid", [_myBluetoothAddressString UTF8String]);
  }

  _ensureXPCStarted = [(AudioDeviceManager *)self _ensureXPCStarted];
  xpc_connection_send_message(_ensureXPCStarted, v3);
  if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D1D58();
  }
}

- (void)_xpcConnectionEvent:(id)event
{
  eventCopy = event;
  type = xpc_get_type(eventCopy);
  if (eventCopy == &_xpc_error_connection_invalid)
  {
    if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D1E80();
    }

    [(AudioDeviceManager *)self _xpcConnectionInvalidated:&_xpc_error_connection_invalid];
    xpcTimer = self->_xpcTimer;
    if (xpcTimer)
    {
      v8 = xpcTimer;
      dispatch_source_cancel(v8);
      v9 = self->_xpcTimer;
      self->_xpcTimer = 0;
    }

    v10 = dispatch_time(0, 180000000000);
    v11 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
    v12 = self->_xpcTimer;
    self->_xpcTimer = v11;

    v13 = self->_xpcTimer;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10000C184;
    handler[3] = &unk_1002B6880;
    handler[4] = self;
    dispatch_source_set_event_handler(v13, handler);
    dispatch_source_set_timer(self->_xpcTimer, v10, 0xFFFFFFFFFFFFFFFFLL, 0);
    dispatch_resume(self->_xpcTimer);
  }

  else if (eventCopy == &_xpc_error_connection_interrupted || type == &_xpc_type_error)
  {
    if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D1E64();
    }

    [(AudioDeviceManager *)self _xpcConnectionInvalidated:eventCopy];
    [(AudioDeviceManager *)self activate:1];
  }

  else
  {
    if (type != &_xpc_type_dictionary)
    {
      if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D1D74();
      }

      goto LABEL_47;
    }

    uint64 = xpc_dictionary_get_uint64(eventCopy, "kBTAudioMsgMethod");
    if (uint64 > 29)
    {
      if (uint64 == 30)
      {
        if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D1DD0();
        }

        [(AudioDeviceManager *)self _usbDevicePropertyChanged:eventCopy];
      }

      else
      {
        if (uint64 != 34)
        {
LABEL_35:
          if (dword_1002F5DA0 <= 90 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
          {
            sub_1001D1E24();
          }

          goto LABEL_47;
        }

        if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D1DB4();
        }

        [(AudioDeviceManager *)self _hostBTAddress:eventCopy];
      }
    }

    else
    {
      if (uint64 != 24)
      {
        if (uint64 == 25)
        {
          if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
          {
            sub_1001D1DEC();
          }

          [(AudioDeviceManager *)self _usbDeviceLost:eventCopy];
          goto LABEL_47;
        }

        goto LABEL_35;
      }

      if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D1E08();
      }

      [(AudioDeviceManager *)self _newUSBDeviceFound:eventCopy];
    }
  }

LABEL_47:
}

- (void)_xpcConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  if (dword_1002F5DA0 <= 50 && (dword_1002F5DA0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D1EB8();
  }

  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    xpc_connection_cancel(xpcConnection);
    v5 = self->_xpcConnection;
    self->_xpcConnection = 0;
  }
}

- (void)_ensureXPCStopped
{
  xpcConnection = self->_xpcConnection;
  if (xpcConnection)
  {
    v5 = xpcConnection;
    xpc_connection_cancel(v5);
    v4 = self->_xpcConnection;
    self->_xpcConnection = 0;
  }
}

@end