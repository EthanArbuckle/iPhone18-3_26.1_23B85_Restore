@interface MSCROBrailleSenseBrailleDriver
- (BOOL)setMainCells:(const char *)cells length:(int64_t)length;
- (BOOL)unloadDriver;
- (MSCROBrailleSenseBrailleDriver)init;
- (id)getInputEvents;
- (int)loadDriverWithIOElement:(id)element;
- (void)dealloc;
- (void)fileReader:(id)reader data:(const void *)data length:(unint64_t)length;
- (void)removeDeviceNotification:(id)notification;
@end

@implementation MSCROBrailleSenseBrailleDriver

- (MSCROBrailleSenseBrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCROBrailleSenseBrailleDriver;
  result = [(MSCROBrailleSenseBrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCROBrailleSenseBrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCROBrailleSenseBrailleDriver;
  [(MSCROBrailleSenseBrailleDriver *)&v3 dealloc];
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
        v130 = v11;
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
        [(MSCROBrailleSenseBrailleDriver *)self unloadDriver];
      }

      v121 = v12;
      infoDictionary = [v12 infoDictionary];
      v122 = [infoDictionary objectForKey:kSCROBrailleDriverModels];
      bluetoothAddress = [elementCopy bluetoothAddress];
      *&__nbyte[1] = 0u;
      v124 = 0u;
      v125 = 0u;
      v126 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      pairedDevices = [v15 pairedDevices];

      v17 = [pairedDevices countByEnumeratingWithState:&__nbyte[1] objects:v131 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v124;
LABEL_14:
        v20 = 0;
        while (1)
        {
          if (*v124 != v19)
          {
            objc_enumerationMutation(pairedDevices);
          }

          v21 = *(*&__nbyte[3] + 8 * v20);
          address = [v21 address];
          v23 = [address isEqualToString:bluetoothAddress];

          if (v23)
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = [pairedDevices countByEnumeratingWithState:&__nbyte[1] objects:v131 count:16];
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
          goto LABEL_34;
        }

        v32 = +[NSNotificationCenter defaultCenter];
        [v32 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
        [v32 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];
        if (([v31 connected]& 1) == 0)
        {
          v51 = +[AXSubsystemBrailleHardware sharedInstance];
          ignoreLogging2 = [v51 ignoreLogging];

          v30 = v122;
          if ((ignoreLogging2 & 1) == 0)
          {
            v53 = +[AXSubsystemBrailleHardware identifier];
            v38 = AXLoggerForFacility();

            v54 = AXOSLogLevelFromAXLogLevel();
            if (os_log_type_enabled(v38, v54))
            {
              v55 = AXColorizeFormatLog();
              v56 = _AXStringForArgs();
              if (os_log_type_enabled(v38, v54))
              {
                *buf = 138543362;
                v130 = v56;
                _os_log_impl(&dword_0, v38, v54, "%{public}@", buf, 0xCu);
              }
            }

            goto LABEL_50;
          }

LABEL_51:
          [v32 removeObserver:{self, comPort}];
          v26 = 1;
          goto LABEL_52;
        }

        [v31 device];
        ComPortForServiceWithSandboxExtension = BTDeviceGetComPortForServiceWithSandboxExtension();
        if (ComPortForServiceWithSandboxExtension)
        {
          v34 = ComPortForServiceWithSandboxExtension;
          v35 = +[AXSubsystemBrailleHardware sharedInstance];
          ignoreLogging3 = [v35 ignoreLogging];

          v30 = v122;
          if ((ignoreLogging3 & 1) == 0)
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
                *v127 = 138543362;
                v128 = v41;
                _os_log_impl(&dword_0, v38, v39, "%{public}@", v127, 0xCu);
              }
            }

LABEL_50:

            goto LABEL_51;
          }

          goto LABEL_51;
        }

        v30 = v122;
        if (sandbox_extension_consume() == -1)
        {
          v58 = +[AXSubsystemBrailleHardware sharedInstance];
          ignoreLogging4 = [v58 ignoreLogging];

          if ((ignoreLogging4 & 1) == 0)
          {
            v60 = +[AXSubsystemBrailleHardware identifier];
            address = AXLoggerForFacility();

            v61 = AXOSLogLevelFromAXLogLevel();
            if (os_log_type_enabled(address, v61))
            {
              v62 = AXColorizeFormatLog();
              comPort = *__error();
              __buf = v62;
              v63 = _AXStringForArgs();
              if (os_log_type_enabled(address, v61))
              {
                *v127 = 138543362;
                v128 = v63;
                _os_log_impl(&dword_0, address, v61, "%{public}@", v127, 0xCu);
              }
            }
          }
        }

        v64 = open(buf, 131074, comPort);
        self->_comPort = v64;
        if (v64 < 0)
        {
          v83 = +[AXSubsystemBrailleHardware sharedInstance];
          ignoreLogging5 = [v83 ignoreLogging];

          if ((ignoreLogging5 & 1) == 0)
          {
            v85 = +[AXSubsystemBrailleHardware identifier];
            v86 = AXLoggerForFacility();

            v87 = AXOSLogLevelFromAXLogLevel();
            if (os_log_type_enabled(v86, v87))
            {
              v88 = AXColorizeFormatLog();
              comPort = self->_comPort;
              v89 = _AXStringForArgs();
              if (os_log_type_enabled(v86, v87))
              {
                *v127 = 138543362;
                v128 = v89;
                _os_log_impl(&dword_0, v86, v87, "%{public}@", v127, 0xCu);
              }
            }
          }

          self->_comPort = -1;
          goto LABEL_51;
        }

        objc_storeStrong(&self->_device, v21);
        v65 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:self->_comPort closeOnDealloc:1];
        v66 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:self fileHandle:v65];
        readerThread = self->_readerThread;
        self->_readerThread = v66;

        Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
        self->_safeReadBuffer = Mutable;
        if (Mutable)
        {
          v69 = [objc_allocWithZone(NSLock) init];
          readBufferLock = self->_readBufferLock;
          self->_readBufferLock = v69;

          if (self->_readBufferLock)
          {
            v71 = CFDataCreateMutable(kCFAllocatorDefault, 0);
            self->_readBuffer = v71;
            if (v71)
            {
              [(SCRDFileReader *)self->_readerThread start];
              v117 = v65;
              __bufa = SCRDHIMSCreateRequest();
              if (__bufa)
              {
                for (i = 0; i != 5; ++i)
                {
                  if (self->_modelIdentifier)
                  {
                    break;
                  }

                  if (write(self->_comPort, __bufa, 0) < 0)
                  {
                    free(__bufa);
                    goto LABEL_113;
                  }

                  self->_bluetoothChannelIsLost = 0;
                  self->_hasBeenUnloaded = 0;
                  v73 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0, 0);
                  if (self->_bluetoothChannelIsLost || self->_hasBeenUnloaded || v73 == kCFRunLoopRunStopped)
                  {
                    v97 = +[AXSubsystemBrailleHardware sharedInstance];
                    ignoreLogging6 = [v97 ignoreLogging];

                    if ((ignoreLogging6 & 1) == 0)
                    {
                      v99 = +[AXSubsystemBrailleHardware identifier];
                      v100 = AXLoggerForFacility();

                      v101 = AXOSLogLevelFromAXLogLevel();
                      if (os_log_type_enabled(v100, v101))
                      {
                        v102 = AXColorizeFormatLog();
                        v103 = _AXStringForArgs();
                        if (os_log_type_enabled(v100, v101))
                        {
                          *v127 = 138543362;
                          v128 = v103;
                          _os_log_impl(&dword_0, v100, v101, "%{public}@", v127, 0xCu);
                        }
                      }
                    }

                    free(__bufa);
                    goto LABEL_112;
                  }

                  [(NSLock *)self->_readBufferLock lock];
                  Length = CFDataGetLength(self->_readBuffer);
                  if (Length >= 1)
                  {
                    v75 = Length;
                    safeReadBuffer = self->_safeReadBuffer;
                    BytePtr = CFDataGetBytePtr(self->_readBuffer);
                    v78 = safeReadBuffer;
                    v65 = v117;
                    CFDataAppendBytes(v78, BytePtr, v75);
                    v132.location = 0;
                    v132.length = v75;
                    CFDataDeleteBytes(self->_readBuffer, v132);
                  }

                  [(NSLock *)self->_readBufferLock unlock];
                  v79 = self->_safeReadBuffer;
                  SCRDAdvanceBufferToPacketStart();
                  if (CFDataGetLength(self->_safeReadBuffer) >= 10)
                  {
                    do
                    {
                      CFDataGetBytePtr(self->_safeReadBuffer);
                      SCRDHIMSFillPacket();
                      address &= 0xFFFFFFFFFFFF0000;
                      SCRDHIMSIsPacketValid();
                      v133.location = 0;
                      v133.length = 1;
                      CFDataDeleteBytes(self->_safeReadBuffer, v133);
                      v80 = self->_safeReadBuffer;
                      SCRDAdvanceBufferToPacketStart();
                    }

                    while (CFDataGetLength(self->_safeReadBuffer) > 9);
                  }
                }

                free(__bufa);
                v81 = [v122 objectForKey:self->_modelIdentifier];
                if (v81)
                {
                  v82 = v81;
                  v26 = 0;
                  self->_isDriverLoaded = 1;
                  v12 = v121;
                  goto LABEL_118;
                }

                v104 = +[AXSubsystemBrailleHardware sharedInstance];
                ignoreLogging7 = [v104 ignoreLogging];

                v65 = v117;
                if ((ignoreLogging7 & 1) == 0)
                {
                  v106 = +[AXSubsystemBrailleHardware identifier];
                  v93 = AXLoggerForFacility();

                  v107 = AXOSLogLevelFromAXLogLevel();
                  if (os_log_type_enabled(v93, v107))
                  {
                    v108 = AXColorizeFormatLog();
                    comPort = self->_modelIdentifier;
                    v109 = _AXStringForArgs();
                    if (os_log_type_enabled(v93, v107))
                    {
                      *v127 = 138543362;
                      v128 = v109;
                      _os_log_impl(&dword_0, v93, v107, "%{public}@", v127, 0xCu);
                    }

                    v30 = v122;
                  }

                  goto LABEL_111;
                }
              }

              else
              {
                v90 = +[AXSubsystemBrailleHardware sharedInstance];
                ignoreLogging8 = [v90 ignoreLogging];

                v65 = v117;
                if ((ignoreLogging8 & 1) == 0)
                {
                  v92 = +[AXSubsystemBrailleHardware identifier];
                  v93 = AXLoggerForFacility();

                  v94 = AXOSLogLevelFromAXLogLevel();
                  if (os_log_type_enabled(v93, v94))
                  {
                    v95 = AXColorizeFormatLog();
                    v96 = _AXStringForArgs();
                    if (os_log_type_enabled(v93, v94))
                    {
                      *v127 = 138543362;
                      v128 = v96;
                      _os_log_impl(&dword_0, v93, v94, "%{public}@", v127, 0xCu);
                    }
                  }

LABEL_111:

LABEL_112:
                  v65 = v117;
                }
              }
            }
          }
        }

LABEL_113:
        [(SCRDFileReader *)self->_readerThread invalidate];
        v110 = self->_readerThread;
        self->_readerThread = 0;

        v111 = self->_safeReadBuffer;
        if (v111)
        {
          CFRelease(v111);
          self->_safeReadBuffer = 0;
        }

        [v32 removeObserver:self];
        [(NSLock *)self->_readBufferLock lock];
        readBuffer = self->_readBuffer;
        v12 = v121;
        if (readBuffer)
        {
          CFRelease(readBuffer);
          self->_readBuffer = 0;
        }

        v113 = self->_readBufferLock;
        self->_readBufferLock = 0;
        v82 = v113;

        [(NSLock *)v82 unlock];
        device = self->_device;
        self->_device = 0;

        self->_comPort = -1;
        modelIdentifier = self->_modelIdentifier;
        self->_modelIdentifier = 0;

        v26 = 2;
LABEL_118:
      }

      else
      {
LABEL_20:

LABEL_34:
        v42 = +[AXSubsystemBrailleHardware sharedInstance];
        ignoreLogging9 = [v42 ignoreLogging];

        if (ignoreLogging9)
        {
          v26 = 1;
          v29 = infoDictionary;
          v12 = v121;
          v30 = v122;
LABEL_56:

LABEL_57:
          goto LABEL_58;
        }

        v46 = +[AXSubsystemBrailleHardware identifier];
        v31 = AXLoggerForFacility();

        v26 = 1;
        v47 = AXOSLogLevelFromAXLogLevel();
        if (!os_log_type_enabled(v31, v47))
        {
          v12 = v121;
          v30 = v122;
          goto LABEL_55;
        }

        v32 = AXColorizeFormatLog();
        v48 = _AXStringForArgs();
        v30 = v122;
        if (os_log_type_enabled(v31, v47))
        {
          *buf = 138543362;
          v130 = v48;
          _os_log_impl(&dword_0, v31, v47, "%{public}@", buf, 0xCu);
        }

LABEL_52:
        v12 = v121;
      }

LABEL_55:
      v29 = infoDictionary;
      goto LABEL_56;
    }

    v44 = +[AXSubsystemBrailleHardware sharedInstance];
    ignoreLogging10 = [v44 ignoreLogging];

    if ((ignoreLogging10 & 1) == 0)
    {
      v49 = +[AXSubsystemBrailleHardware identifier];
      v29 = AXLoggerForFacility();

      v26 = 1;
      v50 = AXOSLogLevelFromAXLogLevel();
      if (!os_log_type_enabled(v29, v50))
      {
LABEL_58:

        goto LABEL_59;
      }

      v30 = AXColorizeFormatLog();
      bluetoothAddress = _AXStringForArgs();
      if (os_log_type_enabled(v29, v50))
      {
        *buf = 138543362;
        v130 = bluetoothAddress;
        _os_log_impl(&dword_0, v29, v50, "%{public}@", buf, 0xCu);
      }

      goto LABEL_56;
    }

    v26 = 1;
LABEL_59:

    goto LABEL_60;
  }

  v24 = +[AXSubsystemBrailleHardware sharedInstance];
  ignoreLogging11 = [v24 ignoreLogging];

  if ((ignoreLogging11 & 1) == 0)
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
        v130 = v30;
        _os_log_impl(&dword_0, v12, v28, "%{public}@", buf, 0xCu);
      }

      goto LABEL_57;
    }

    goto LABEL_59;
  }

  v26 = 1;
LABEL_60:

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
      v12.location = 0;
      v12.length = v5;
      CFDataDeleteBytes(self->_readBuffer, v12);
    }
  }

  [(NSLock *)self->_readBufferLock unlock];
  v8 = self->_safeReadBuffer;
  _himsDeviceId = [(MSCROBrailleSenseBrailleDriver *)self _himsDeviceId];

  return _SCRDHIMSBrailleSenseExtractEventsFromBuffer(v8, _himsDeviceId);
}

- (BOOL)setMainCells:(const char *)cells length:(int64_t)length
{
  mainSize_low = LOBYTE(self->_mainSize);
  v6 = SCRDHIMSCreateRequest();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  comPort = self->_comPort;
  v9 = comPort != -1 && write(comPort, v7, 0) == 0;
  free(v7);
  return v9;
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