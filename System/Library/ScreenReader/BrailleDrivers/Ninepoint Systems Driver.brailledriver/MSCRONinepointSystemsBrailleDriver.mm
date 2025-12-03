@interface MSCRONinepointSystemsBrailleDriver
- (BOOL)setMainCells:(const char *)cells length:(int64_t)length;
- (BOOL)unloadDriver;
- (MSCRONinepointSystemsBrailleDriver)init;
- (id)getInputEvents;
- (int)loadDriverWithIOElement:(id)element;
- (void)dealloc;
- (void)fileReader:(id)reader data:(const void *)data length:(unint64_t)length;
- (void)removeDeviceNotification:(id)notification;
@end

@implementation MSCRONinepointSystemsBrailleDriver

- (MSCRONinepointSystemsBrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCRONinepointSystemsBrailleDriver;
  result = [(MSCRONinepointSystemsBrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCRONinepointSystemsBrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCRONinepointSystemsBrailleDriver;
  [(MSCRONinepointSystemsBrailleDriver *)&v3 dealloc];
}

- (int)loadDriverWithIOElement:(id)element
{
  elementCopy = element;
  v5 = +[AXSubsystemBrailleHardware sharedInstance];
  ignoreLogging = [v5 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    v7 = +[AXSubsystemBrailleHardware identifier];
    v8 = AXLoggerForFacility();

    v9 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = AXColorizeFormatLog();
      v11 = _AXStringForArgs();
      if (os_log_type_enabled(v8, v9))
      {
        *buf = 138543362;
        v117 = v11;
        _os_log_impl(&dword_0, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  if ([elementCopy conformsToProtocol:&OBJC_PROTOCOL___SCROIOBluetoothElementProtocol] && objc_msgSend(elementCopy, "transport") == 2)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    bundleIdentifier = [v12 bundleIdentifier];

    if (bundleIdentifier)
    {
      if (self->_isDriverLoaded)
      {
        [(MSCRONinepointSystemsBrailleDriver *)self unloadDriver];
      }

      selfCopy = self;
      infoDictionary = [v12 infoDictionary];
      [infoDictionary objectForKey:kSCROBrailleDriverModels];
      v109 = v108 = elementCopy;
      bluetoothAddress = [elementCopy bluetoothAddress];
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      pairedDevices = [v15 pairedDevices];

      v17 = [pairedDevices countByEnumeratingWithState:&v110 objects:v118 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v111;
LABEL_14:
        v20 = 0;
        while (1)
        {
          if (*v111 != v19)
          {
            objc_enumerationMutation(pairedDevices);
          }

          v21 = *(*(&v110 + 1) + 8 * v20);
          address = [v21 address];
          v23 = [address isEqualToString:bluetoothAddress];

          if (v23)
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = [pairedDevices countByEnumeratingWithState:&v110 objects:v118 count:16];
            if (v18)
            {
              goto LABEL_14;
            }

            goto LABEL_20;
          }
        }

        v31 = v21;

        if (!v31)
        {
          goto LABEL_35;
        }

        v32 = +[NSNotificationCenter defaultCenter];
        [v32 addObserver:selfCopy selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
        [v32 addObserver:selfCopy selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];
        if (([v31 connected]& 1) != 0)
        {
          [v31 device];
          ComPortForServiceWithSandboxExtension = BTDeviceGetComPortForServiceWithSandboxExtension();
          if (ComPortForServiceWithSandboxExtension)
          {
            v34 = ComPortForServiceWithSandboxExtension;
            v35 = +[AXSubsystemBrailleHardware sharedInstance];
            ignoreLogging2 = [v35 ignoreLogging];

            v29 = infoDictionary;
            if ((ignoreLogging2 & 1) == 0)
            {
              v37 = +[AXSubsystemBrailleHardware identifier];
              v38 = AXLoggerForFacility();

              v39 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v38, v39))
              {
                v40 = AXColorizeFormatLog();
                comPort = v34;
                v41 = _AXStringForArgs();
                if (os_log_type_enabled(v38, v39))
                {
                  *v114 = 138543362;
                  v115 = v41;
                  _os_log_impl(&dword_0, v38, v39, "%{public}@", v114, 0xCu);
                }
              }
            }

LABEL_84:
            [v32 removeObserver:{selfCopy, comPort}];
            v26 = 1;
            v30 = v109;
            goto LABEL_85;
          }

          v29 = infoDictionary;
          if (sandbox_extension_consume() == -1)
          {
            v58 = +[AXSubsystemBrailleHardware sharedInstance];
            ignoreLogging3 = [v58 ignoreLogging];

            if ((ignoreLogging3 & 1) == 0)
            {
              v60 = +[AXSubsystemBrailleHardware identifier];
              v61 = AXLoggerForFacility();

              v62 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v61, v62))
              {
                AXColorizeFormatLog();
                v63 = v101 = v62;
                comPort = *__error();
                v104 = _AXStringForArgs();
                if (os_log_type_enabled(v61, v101))
                {
                  *v114 = 138543362;
                  v115 = v104;
                  _os_log_impl(&dword_0, v61, v101, "%{public}@", v114, 0xCu);
                }
              }
            }
          }

          v64 = open(buf, 131074, comPort);
          selfCopy->_comPort = v64;
          if (v64 < 0)
          {
            v84 = +[AXSubsystemBrailleHardware sharedInstance];
            ignoreLogging4 = [v84 ignoreLogging];

            if ((ignoreLogging4 & 1) == 0)
            {
              v86 = +[AXSubsystemBrailleHardware identifier];
              v87 = AXLoggerForFacility();

              v88 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v87, v88))
              {
                v89 = AXColorizeFormatLog();
                comPort = selfCopy->_comPort;
                v90 = _AXStringForArgs();
                if (os_log_type_enabled(v87, v88))
                {
                  *v114 = 138543362;
                  v115 = v90;
                  _os_log_impl(&dword_0, v87, v88, "%{public}@", v114, 0xCu);
                }
              }
            }

            selfCopy->_comPort = -1;
            goto LABEL_84;
          }

          objc_storeStrong(&selfCopy->_device, v21);
          v65 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:selfCopy->_comPort closeOnDealloc:1];
          v66 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:selfCopy fileHandle:v65];
          readerThread = selfCopy->_readerThread;
          selfCopy->_readerThread = v66;

          Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
          selfCopy->_safeReadBuffer = Mutable;
          if (Mutable && (v69 = [objc_allocWithZone(NSLock) init], readBufferLock = selfCopy->_readBufferLock, selfCopy->_readBufferLock = v69, readBufferLock, selfCopy->_readBufferLock) && (v71 = CFDataCreateMutable(kCFAllocatorDefault, 0), (selfCopy->_readBuffer = v71) != 0))
          {
            name = [v31 name];
            if ([name isEqualToString:kSCRDNinepointSystemsNinepointBluetoothName])
            {
              modelIdentifier = selfCopy->_modelIdentifier;
              selfCopy->_modelIdentifier = @"com.apple.scrod.braille.driver.ninepointsystems.ninepoint";
            }

            v73 = [v109 objectForKey:selfCopy->_modelIdentifier];
            if (v73)
            {
              v74 = v73;
              [(SCRDFileReader *)selfCopy->_readerThread start];
              v75 = [v74 objectForKey:kSCROBrailleDriverMainDisplaySize];
              selfCopy->_mainSize = [v75 unsignedCharValue];

              selfCopy->_isDriverLoaded = 1;
              v26 = 0;
              v30 = v109;
              v76 = name;
LABEL_76:

LABEL_85:
              elementCopy = v108;
              goto LABEL_86;
            }

            v92 = +[AXSubsystemBrailleHardware sharedInstance];
            ignoreLogging5 = [v92 ignoreLogging];

            if (ignoreLogging5)
            {
              v30 = v109;
              v76 = name;
            }

            else
            {
              v94 = +[AXSubsystemBrailleHardware identifier];
              v95 = AXLoggerForFacility();

              v96 = v95;
              type = AXOSLogLevelFromAXLogLevel();
              v97 = os_log_type_enabled(v95, type);
              v30 = v109;
              v76 = name;
              if (v97)
              {
                v98 = AXColorizeFormatLog();
                comPort = selfCopy->_modelIdentifier;
                v100 = v98;
                v102 = _AXStringForArgs();
                if (os_log_type_enabled(v96, type))
                {
                  *v114 = 138543362;
                  v115 = v102;
                  _os_log_impl(&dword_0, v96, type, "%{public}@", v114, 0xCu);
                }
              }
            }
          }

          else
          {
            v76 = 0;
            v30 = v109;
          }

          [(SCRDFileReader *)selfCopy->_readerThread invalidate];
          v77 = selfCopy->_readerThread;
          selfCopy->_readerThread = 0;

          safeReadBuffer = selfCopy->_safeReadBuffer;
          if (safeReadBuffer)
          {
            CFRelease(safeReadBuffer);
            selfCopy->_safeReadBuffer = 0;
          }

          [v32 removeObserver:selfCopy];
          [(NSLock *)selfCopy->_readBufferLock lock];
          readBuffer = selfCopy->_readBuffer;
          if (readBuffer)
          {
            CFRelease(readBuffer);
            selfCopy->_readBuffer = 0;
          }

          v80 = selfCopy->_readBufferLock;
          selfCopy->_readBufferLock = 0;
          v81 = v80;

          [(NSLock *)v81 unlock];
          device = selfCopy->_device;
          selfCopy->_device = 0;

          selfCopy->_comPort = -1;
          v83 = selfCopy->_modelIdentifier;
          selfCopy->_modelIdentifier = 0;

          selfCopy->_mainSize = 0;
          v26 = 2;
          goto LABEL_76;
        }

        v51 = +[AXSubsystemBrailleHardware sharedInstance];
        ignoreLogging6 = [v51 ignoreLogging];

        v29 = infoDictionary;
        if ((ignoreLogging6 & 1) == 0)
        {
          v53 = +[AXSubsystemBrailleHardware identifier];
          v54 = AXLoggerForFacility();

          v55 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v54, v55))
          {
            v56 = AXColorizeFormatLog();
            v57 = _AXStringForArgs();
            if (os_log_type_enabled(v54, v55))
            {
              *buf = 138543362;
              v117 = v57;
              _os_log_impl(&dword_0, v54, v55, "%{public}@", buf, 0xCu);
            }
          }
        }

        [v32 removeObserver:selfCopy];
      }

      else
      {
LABEL_20:

LABEL_35:
        v42 = +[AXSubsystemBrailleHardware sharedInstance];
        ignoreLogging7 = [v42 ignoreLogging];

        if (ignoreLogging7)
        {
          v26 = 1;
          v29 = infoDictionary;
          elementCopy = v108;
          v30 = v109;
LABEL_88:

LABEL_89:
          goto LABEL_90;
        }

        v46 = +[AXSubsystemBrailleHardware identifier];
        v31 = AXLoggerForFacility();

        v26 = 1;
        v47 = AXOSLogLevelFromAXLogLevel();
        v29 = infoDictionary;
        if (!os_log_type_enabled(v31, v47))
        {
          elementCopy = v108;
          v30 = v109;
LABEL_87:

          goto LABEL_88;
        }

        v32 = AXColorizeFormatLog();
        v48 = _AXStringForArgs();
        if (os_log_type_enabled(v31, v47))
        {
          *buf = 138543362;
          v117 = v48;
          _os_log_impl(&dword_0, v31, v47, "%{public}@", buf, 0xCu);
        }
      }

      v26 = 1;
      elementCopy = v108;
      v30 = v109;
LABEL_86:

      goto LABEL_87;
    }

    v44 = +[AXSubsystemBrailleHardware sharedInstance];
    ignoreLogging8 = [v44 ignoreLogging];

    if ((ignoreLogging8 & 1) == 0)
    {
      v49 = +[AXSubsystemBrailleHardware identifier];
      v29 = AXLoggerForFacility();

      v26 = 1;
      v50 = AXOSLogLevelFromAXLogLevel();
      if (!os_log_type_enabled(v29, v50))
      {
LABEL_90:

        goto LABEL_91;
      }

      v30 = AXColorizeFormatLog();
      bluetoothAddress = _AXStringForArgs();
      if (os_log_type_enabled(v29, v50))
      {
        *buf = 138543362;
        v117 = bluetoothAddress;
        _os_log_impl(&dword_0, v29, v50, "%{public}@", buf, 0xCu);
      }

      goto LABEL_88;
    }

    v26 = 1;
LABEL_91:

    goto LABEL_92;
  }

  v24 = +[AXSubsystemBrailleHardware sharedInstance];
  ignoreLogging9 = [v24 ignoreLogging];

  if ((ignoreLogging9 & 1) == 0)
  {
    v27 = +[AXSubsystemBrailleHardware identifier];
    v12 = AXLoggerForFacility();

    v26 = 1;
    v28 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v12, v28))
    {
      v29 = AXColorizeFormatLog();
      [elementCopy transport];
      [elementCopy conformsToProtocol:&OBJC_PROTOCOL___SCROIOBluetoothElementProtocol];
      v30 = _AXStringForArgs();
      if (os_log_type_enabled(v12, v28))
      {
        *buf = 138543362;
        v117 = v30;
        _os_log_impl(&dword_0, v12, v28, "%{public}@", buf, 0xCu);
      }

      goto LABEL_89;
    }

    goto LABEL_91;
  }

  v26 = 1;
LABEL_92:

  return v26;
}

- (BOOL)unloadDriver
{
  v3 = +[AXSubsystemBrailleHardware sharedInstance];
  ignoreLogging = [v3 ignoreLogging];

  if ((ignoreLogging & 1) == 0)
  {
    v5 = +[AXSubsystemBrailleHardware identifier];
    v6 = AXLoggerForFacility();

    v7 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = AXColorizeFormatLog();
      v9 = _AXStringForArgs();
      if (os_log_type_enabled(v6, v7))
      {
        v19 = 138543362;
        v20 = v9;
        _os_log_impl(&dword_0, v6, v7, "%{public}@", &v19, 0xCu);
      }
    }
  }

  self->_hasBeenUnloaded = 1;
  if (self->_isDriverLoaded)
  {
    self->_isDriverLoaded = 0;
    [(SCRDFileReader *)self->_readerThread invalidate];
    readerThread = self->_readerThread;
    self->_readerThread = 0;

    v11 = +[NSNotificationCenter defaultCenter];
    [v11 removeObserver:self];

    safeReadBuffer = self->_safeReadBuffer;
    if (safeReadBuffer)
    {
      CFRelease(safeReadBuffer);
      self->_safeReadBuffer = 0;
    }

    [(NSLock *)self->_readBufferLock lock];
    readBuffer = self->_readBuffer;
    if (readBuffer)
    {
      CFRelease(readBuffer);
      self->_readBuffer = 0;
    }

    readBufferLock = self->_readBufferLock;
    self->_readBufferLock = 0;
    v15 = readBufferLock;

    [(NSLock *)v15 unlock];
    [(BluetoothDevice *)self->_device disconnect];
    device = self->_device;
    self->_device = 0;

    self->_comPort = -1;
    self->_bluetoothChannelIsLost = 1;
    modelIdentifier = self->_modelIdentifier;
    self->_modelIdentifier = 0;

    self->_mainSize = 0;
  }

  return 1;
}

- (id)getInputEvents
{
  [(NSLock *)self->_readBufferLock lock];
  readBuffer = self->_readBuffer;
  if (readBuffer)
  {
    Length = CFDataGetLength(readBuffer);
    if (Length >= 1)
    {
      v5 = Length;
      safeReadBuffer = self->_safeReadBuffer;
      BytePtr = CFDataGetBytePtr(self->_readBuffer);
      CFDataAppendBytes(safeReadBuffer, BytePtr, v5);
      v11.location = 0;
      v11.length = v5;
      CFDataDeleteBytes(self->_readBuffer, v11);
    }
  }

  [(NSLock *)self->_readBufferLock unlock];
  v8 = self->_safeReadBuffer;

  return _SCRDNinepointSystemsNinepointExtractKeyboardEventsFromBuffer(v8);
}

- (BOOL)setMainCells:(const char *)cells length:(int64_t)length
{
  v5 = SCRDNinepointSystemsNinepointCreateWriteBuffer();
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  comPort = self->_comPort;
  if (comPort == -1)
  {
    v11 = 0;
  }

  else
  {
    BytePtr = CFDataGetBytePtr(v5);
    Length = CFDataGetLength(v6);
    v10 = write(comPort, BytePtr, Length);
    v11 = CFDataGetLength(v6) == v10;
  }

  CFRelease(v6);
  return v11;
}

- (void)fileReader:(id)reader data:(const void *)data length:(unint64_t)length
{
  if (length)
  {
    [(NSLock *)self->_readBufferLock lock];
    readBuffer = self->_readBuffer;
    if (readBuffer)
    {
      CFDataAppendBytes(readBuffer, data, length);
    }

    [(NSLock *)self->_readBufferLock unlock];
  }

  WeakRetained = objc_loadWeakRetained(&self->_driverDelegate);
  [WeakRetained brailleDriverDidReceiveInput];
}

- (void)removeDeviceNotification:(id)notification
{
  object = [notification object];
  if (object)
  {
    if (object == self->_device)
    {
      self->_bluetoothChannelIsLost = 1;
      if (self->_isDriverLoaded)
      {
        v6 = object;
        v5 = +[NSNotificationCenter defaultCenter];
        [v5 postNotificationName:@"SCROBrailleDriverProtocolUnloadNotification" object:self userInfo:0];

        object = v6;
      }
    }
  }
}

@end