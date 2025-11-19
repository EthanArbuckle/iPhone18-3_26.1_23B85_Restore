@interface MSCRONinepointSystemsBrailleDriver
- (BOOL)setMainCells:(const char *)a3 length:(int64_t)a4;
- (BOOL)unloadDriver;
- (MSCRONinepointSystemsBrailleDriver)init;
- (id)getInputEvents;
- (int)loadDriverWithIOElement:(id)a3;
- (void)dealloc;
- (void)fileReader:(id)a3 data:(const void *)a4 length:(unint64_t)a5;
- (void)removeDeviceNotification:(id)a3;
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

- (int)loadDriverWithIOElement:(id)a3
{
  v4 = a3;
  v5 = +[AXSubsystemBrailleHardware sharedInstance];
  v6 = [v5 ignoreLogging];

  if ((v6 & 1) == 0)
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

  if ([v4 conformsToProtocol:&OBJC_PROTOCOL___SCROIOBluetoothElementProtocol] && objc_msgSend(v4, "transport") == 2)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 bundleIdentifier];

    if (v13)
    {
      if (self->_isDriverLoaded)
      {
        [(MSCRONinepointSystemsBrailleDriver *)self unloadDriver];
      }

      v106 = self;
      v107 = [v12 infoDictionary];
      [v107 objectForKey:kSCROBrailleDriverModels];
      v109 = v108 = v4;
      v14 = [v4 bluetoothAddress];
      v110 = 0u;
      v111 = 0u;
      v112 = 0u;
      v113 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      v16 = [v15 pairedDevices];

      v17 = [v16 countByEnumeratingWithState:&v110 objects:v118 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v110 + 1) + 8 * v20);
          v22 = [v21 address];
          v23 = [v22 isEqualToString:v14];

          if (v23)
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = [v16 countByEnumeratingWithState:&v110 objects:v118 count:16];
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
        [v32 addObserver:v106 selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
        [v32 addObserver:v106 selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];
        if (([v31 connected]& 1) != 0)
        {
          [v31 device];
          ComPortForServiceWithSandboxExtension = BTDeviceGetComPortForServiceWithSandboxExtension();
          if (ComPortForServiceWithSandboxExtension)
          {
            v34 = ComPortForServiceWithSandboxExtension;
            v35 = +[AXSubsystemBrailleHardware sharedInstance];
            v36 = [v35 ignoreLogging];

            v29 = v107;
            if ((v36 & 1) == 0)
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
            [v32 removeObserver:{v106, comPort}];
            v26 = 1;
            v30 = v109;
            goto LABEL_85;
          }

          v29 = v107;
          if (sandbox_extension_consume() == -1)
          {
            v58 = +[AXSubsystemBrailleHardware sharedInstance];
            v59 = [v58 ignoreLogging];

            if ((v59 & 1) == 0)
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
          v106->_comPort = v64;
          if (v64 < 0)
          {
            v84 = +[AXSubsystemBrailleHardware sharedInstance];
            v85 = [v84 ignoreLogging];

            if ((v85 & 1) == 0)
            {
              v86 = +[AXSubsystemBrailleHardware identifier];
              v87 = AXLoggerForFacility();

              v88 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v87, v88))
              {
                v89 = AXColorizeFormatLog();
                comPort = v106->_comPort;
                v90 = _AXStringForArgs();
                if (os_log_type_enabled(v87, v88))
                {
                  *v114 = 138543362;
                  v115 = v90;
                  _os_log_impl(&dword_0, v87, v88, "%{public}@", v114, 0xCu);
                }
              }
            }

            v106->_comPort = -1;
            goto LABEL_84;
          }

          objc_storeStrong(&v106->_device, v21);
          v65 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:v106->_comPort closeOnDealloc:1];
          v66 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:v106 fileHandle:v65];
          readerThread = v106->_readerThread;
          v106->_readerThread = v66;

          Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
          v106->_safeReadBuffer = Mutable;
          if (Mutable && (v69 = [objc_allocWithZone(NSLock) init], readBufferLock = v106->_readBufferLock, v106->_readBufferLock = v69, readBufferLock, v106->_readBufferLock) && (v71 = CFDataCreateMutable(kCFAllocatorDefault, 0), (v106->_readBuffer = v71) != 0))
          {
            v105 = [v31 name];
            if ([v105 isEqualToString:kSCRDNinepointSystemsNinepointBluetoothName])
            {
              modelIdentifier = v106->_modelIdentifier;
              v106->_modelIdentifier = @"com.apple.scrod.braille.driver.ninepointsystems.ninepoint";
            }

            v73 = [v109 objectForKey:v106->_modelIdentifier];
            if (v73)
            {
              v74 = v73;
              [(SCRDFileReader *)v106->_readerThread start];
              v75 = [v74 objectForKey:kSCROBrailleDriverMainDisplaySize];
              v106->_mainSize = [v75 unsignedCharValue];

              v106->_isDriverLoaded = 1;
              v26 = 0;
              v30 = v109;
              v76 = v105;
LABEL_76:

LABEL_85:
              v4 = v108;
              goto LABEL_86;
            }

            v92 = +[AXSubsystemBrailleHardware sharedInstance];
            v93 = [v92 ignoreLogging];

            if (v93)
            {
              v30 = v109;
              v76 = v105;
            }

            else
            {
              v94 = +[AXSubsystemBrailleHardware identifier];
              v95 = AXLoggerForFacility();

              v96 = v95;
              type = AXOSLogLevelFromAXLogLevel();
              v97 = os_log_type_enabled(v95, type);
              v30 = v109;
              v76 = v105;
              if (v97)
              {
                v98 = AXColorizeFormatLog();
                comPort = v106->_modelIdentifier;
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

          [(SCRDFileReader *)v106->_readerThread invalidate];
          v77 = v106->_readerThread;
          v106->_readerThread = 0;

          safeReadBuffer = v106->_safeReadBuffer;
          if (safeReadBuffer)
          {
            CFRelease(safeReadBuffer);
            v106->_safeReadBuffer = 0;
          }

          [v32 removeObserver:v106];
          [(NSLock *)v106->_readBufferLock lock];
          readBuffer = v106->_readBuffer;
          if (readBuffer)
          {
            CFRelease(readBuffer);
            v106->_readBuffer = 0;
          }

          v80 = v106->_readBufferLock;
          v106->_readBufferLock = 0;
          v81 = v80;

          [(NSLock *)v81 unlock];
          device = v106->_device;
          v106->_device = 0;

          v106->_comPort = -1;
          v83 = v106->_modelIdentifier;
          v106->_modelIdentifier = 0;

          v106->_mainSize = 0;
          v26 = 2;
          goto LABEL_76;
        }

        v51 = +[AXSubsystemBrailleHardware sharedInstance];
        v52 = [v51 ignoreLogging];

        v29 = v107;
        if ((v52 & 1) == 0)
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

        [v32 removeObserver:v106];
      }

      else
      {
LABEL_20:

LABEL_35:
        v42 = +[AXSubsystemBrailleHardware sharedInstance];
        v43 = [v42 ignoreLogging];

        if (v43)
        {
          v26 = 1;
          v29 = v107;
          v4 = v108;
          v30 = v109;
LABEL_88:

LABEL_89:
          goto LABEL_90;
        }

        v46 = +[AXSubsystemBrailleHardware identifier];
        v31 = AXLoggerForFacility();

        v26 = 1;
        v47 = AXOSLogLevelFromAXLogLevel();
        v29 = v107;
        if (!os_log_type_enabled(v31, v47))
        {
          v4 = v108;
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
      v4 = v108;
      v30 = v109;
LABEL_86:

      goto LABEL_87;
    }

    v44 = +[AXSubsystemBrailleHardware sharedInstance];
    v45 = [v44 ignoreLogging];

    if ((v45 & 1) == 0)
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
      v14 = _AXStringForArgs();
      if (os_log_type_enabled(v29, v50))
      {
        *buf = 138543362;
        v117 = v14;
        _os_log_impl(&dword_0, v29, v50, "%{public}@", buf, 0xCu);
      }

      goto LABEL_88;
    }

    v26 = 1;
LABEL_91:

    goto LABEL_92;
  }

  v24 = +[AXSubsystemBrailleHardware sharedInstance];
  v25 = [v24 ignoreLogging];

  if ((v25 & 1) == 0)
  {
    v27 = +[AXSubsystemBrailleHardware identifier];
    v12 = AXLoggerForFacility();

    v26 = 1;
    v28 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v12, v28))
    {
      v29 = AXColorizeFormatLog();
      [v4 transport];
      [v4 conformsToProtocol:&OBJC_PROTOCOL___SCROIOBluetoothElementProtocol];
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
  v4 = [v3 ignoreLogging];

  if ((v4 & 1) == 0)
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

- (BOOL)setMainCells:(const char *)a3 length:(int64_t)a4
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

- (void)fileReader:(id)a3 data:(const void *)a4 length:(unint64_t)a5
{
  if (a5)
  {
    [(NSLock *)self->_readBufferLock lock];
    readBuffer = self->_readBuffer;
    if (readBuffer)
    {
      CFDataAppendBytes(readBuffer, a4, a5);
    }

    [(NSLock *)self->_readBufferLock unlock];
  }

  WeakRetained = objc_loadWeakRetained(&self->_driverDelegate);
  [WeakRetained brailleDriverDidReceiveInput];
}

- (void)removeDeviceNotification:(id)a3
{
  v4 = [a3 object];
  if (v4)
  {
    if (v4 == self->_device)
    {
      self->_bluetoothChannelIsLost = 1;
      if (self->_isDriverLoaded)
      {
        v6 = v4;
        v5 = +[NSNotificationCenter defaultCenter];
        [v5 postNotificationName:@"SCROBrailleDriverProtocolUnloadNotification" object:self userInfo:0];

        v4 = v6;
      }
    }
  }
}

@end