@interface MSCROEurobrailleBrailleDriver
- (BOOL)setMainCells:(const char *)a3 length:(int64_t)a4;
- (BOOL)unloadDriver;
- (MSCROEurobrailleBrailleDriver)init;
- (id)getInputEvents;
- (int)loadDriverWithIOElement:(id)a3;
- (void)dealloc;
- (void)fileReader:(id)a3 data:(const void *)a4 length:(unint64_t)a5;
- (void)removeDeviceNotification:(id)a3;
@end

@implementation MSCROEurobrailleBrailleDriver

- (MSCROEurobrailleBrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCROEurobrailleBrailleDriver;
  result = [(MSCROEurobrailleBrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCROEurobrailleBrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCROEurobrailleBrailleDriver;
  [(MSCROEurobrailleBrailleDriver *)&v3 dealloc];
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
        v139 = v11;
        _os_log_impl(&dword_0, v8, v9, "%{public}@", buf, 0xCu);
      }
    }
  }

  if ([v4 transport] == 2 && (objc_msgSend(v4, "conformsToProtocol:", &OBJC_PROTOCOL___SCROIOBluetoothElementProtocol) & 1) != 0)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    v13 = [v12 bundleIdentifier];

    if (v13)
    {
      if (self->_isDriverLoaded)
      {
        [(MSCROEurobrailleBrailleDriver *)self unloadDriver];
      }

      v127 = v12;
      v126 = [v12 infoDictionary];
      [v126 objectForKey:kSCROBrailleDriverModels];
      v129 = v128 = v4;
      v14 = [v4 bluetoothAddress];
      v132 = 0u;
      v133 = 0u;
      v134 = 0u;
      v135 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      v16 = [v15 pairedDevices];

      v17 = [v16 countByEnumeratingWithState:&v132 objects:v140 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v133;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v133 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v132 + 1) + 8 * i);
            v22 = [v21 address];
            v23 = [v22 isEqualToString:v14];

            if (v23)
            {
              v31 = v21;

              if (v31)
              {
                v32 = +[NSNotificationCenter defaultCenter];
                [v32 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
                [v32 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];
                if (([v31 connected]& 1) != 0)
                {
                  v33 = v32;
                  [v31 device];
                  ComPortForServiceWithSandboxExtension = BTDeviceGetComPortForServiceWithSandboxExtension();
                  if (ComPortForServiceWithSandboxExtension)
                  {
                    v35 = ComPortForServiceWithSandboxExtension;
                    v36 = +[AXSubsystemBrailleHardware sharedInstance];
                    v37 = [v36 ignoreLogging];

                    if ((v37 & 1) == 0)
                    {
                      v38 = +[AXSubsystemBrailleHardware identifier];
                      v39 = AXLoggerForFacility();

                      v40 = AXOSLogLevelFromAXLogLevel();
                      if (os_log_type_enabled(v39, v40))
                      {
                        v41 = AXColorizeFormatLog();
                        bluetoothChannelIsLost = v35;
                        v42 = _AXStringForArgs();
                        if (os_log_type_enabled(v39, v40))
                        {
                          *v136 = 138543362;
                          v137 = v42;
                          _os_log_impl(&dword_0, v39, v40, "%{public}@", v136, 0xCu);
                        }
                      }
                    }

                    v32 = v33;
                    v43 = v33;
LABEL_92:
                    [v43 removeObserver:{self, bluetoothChannelIsLost}];
                    v26 = 1;
                    v12 = v127;
                    v4 = v128;
                    v29 = v126;
LABEL_93:
                    v30 = v129;
                    goto LABEL_94;
                  }

                  if (sandbox_extension_consume() == -1)
                  {
                    v61 = +[AXSubsystemBrailleHardware sharedInstance];
                    v62 = [v61 ignoreLogging];

                    if ((v62 & 1) == 0)
                    {
                      v63 = +[AXSubsystemBrailleHardware identifier];
                      v64 = AXLoggerForFacility();

                      v65 = AXOSLogLevelFromAXLogLevel();
                      if (os_log_type_enabled(v64, v65))
                      {
                        v66 = AXColorizeFormatLog();
                        bluetoothChannelIsLost = *__error();
                        v67 = _AXStringForArgs();
                        if (os_log_type_enabled(v64, v65))
                        {
                          *v136 = 138543362;
                          v137 = v67;
                          _os_log_impl(&dword_0, v64, v65, "%{public}@", v136, 0xCu);
                        }
                      }
                    }
                  }

                  v68 = open(buf, 131074, bluetoothChannelIsLost);
                  self->_comPort = v68;
                  if ((v68 & 0x80000000) == 0)
                  {
                    objc_storeStrong(&self->_device, v21);
                    v125 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:self->_comPort closeOnDealloc:1];
                    v69 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:self fileHandle:v125];
                    readerThread = self->_readerThread;
                    self->_readerThread = v69;

                    Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
                    self->_safeReadBuffer = Mutable;
                    v32 = v33;
                    if (!Mutable)
                    {
                      goto LABEL_119;
                    }

                    v72 = [objc_allocWithZone(NSLock) init];
                    readBufferLock = self->_readBufferLock;
                    self->_readBufferLock = v72;

                    if (!self->_readBufferLock)
                    {
                      goto LABEL_119;
                    }

                    v74 = CFDataCreateMutable(kCFAllocatorDefault, 0);
                    self->_readBuffer = v74;
                    if (!v74)
                    {
                      goto LABEL_119;
                    }

                    [(SCRDFileReader *)self->_readerThread start];
                    v75 = 5;
                    while (1)
                    {
                      modelIdentifier = self->_modelIdentifier;
                      if (modelIdentifier)
                      {
                        goto LABEL_79;
                      }

                      v131 = 841;
                      __buf = 1392771074;
                      if (write(self->_comPort, &__buf, 6uLL) <= 5)
                      {
                        break;
                      }

                      self->_bluetoothChannelIsLost = 0;
                      self->_hasBeenUnloaded = 0;
                      v77 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.5, 0);
                      v78 = v77;
                      if (self->_bluetoothChannelIsLost || self->_hasBeenUnloaded || v77 == kCFRunLoopRunStopped)
                      {
                        v97 = +[AXSubsystemBrailleHardware sharedInstance];
                        v98 = [v97 ignoreLogging];

                        v32 = v33;
                        if (v98)
                        {
                          goto LABEL_119;
                        }

                        v99 = +[AXSubsystemBrailleHardware identifier];
                        v100 = AXLoggerForFacility();

                        v101 = AXOSLogLevelFromAXLogLevel();
                        if (os_log_type_enabled(v100, v101))
                        {
                          v102 = AXColorizeFormatLog();
                          hasBeenUnloaded = self->_hasBeenUnloaded;
                          v124 = v78;
                          bluetoothChannelIsLost = self->_bluetoothChannelIsLost;
                          v103 = _AXStringForArgs();
                          if (os_log_type_enabled(v100, v101))
                          {
                            *v136 = 138543362;
                            v137 = v103;
                            _os_log_impl(&dword_0, v100, v101, "%{public}@", v136, 0xCu);
                          }

                          v32 = v33;
                          goto LABEL_110;
                        }

                        v32 = v33;
                        goto LABEL_118;
                      }

                      [(NSLock *)self->_readBufferLock lock];
                      Length = CFDataGetLength(self->_readBuffer);
                      if (Length >= 1)
                      {
                        v80 = Length;
                        safeReadBuffer = self->_safeReadBuffer;
                        BytePtr = CFDataGetBytePtr(self->_readBuffer);
                        CFDataAppendBytes(safeReadBuffer, BytePtr, v80);
                        v141.location = 0;
                        v141.length = v80;
                        CFDataDeleteBytes(self->_readBuffer, v141);
                      }

                      [(NSLock *)self->_readBufferLock unlock];
                      v83 = self->_safeReadBuffer;
                      if (SCRDEurobrailleGetModelInfoFromBuffer())
                      {
                        deviceIdentifier = self->_deviceIdentifier;
                        if (deviceIdentifier < 0xF && ((0x607Fu >> deviceIdentifier) & 1) != 0)
                        {
                          v85 = self->_modelIdentifier;
                          self->_modelIdentifier = *(&off_8258 + deviceIdentifier);
                        }
                      }

                      if (!--v75)
                      {
                        modelIdentifier = self->_modelIdentifier;
LABEL_79:
                        v32 = v33;
                        v86 = [v129 objectForKey:modelIdentifier];

                        if (v86)
                        {
                          v87 = self->_mainSize + 6;
                          self->_writeBufferSize = v87;
                          v88 = malloc_type_malloc(v87, 0xECAF83CBuLL);
                          self->_writeBuffer = v88;
                          if (!v88)
                          {
                            goto LABEL_119;
                          }

                          self->_isDriverLoaded = 1;
                          v29 = v126;
                          v12 = v127;
                          if (self->_isDeviceSleeping)
                          {
                            SCRDPostSleepNotification();
                          }

                          v26 = 0;
                          v4 = v128;
                          v30 = v129;
LABEL_124:

LABEL_94:
LABEL_95:

LABEL_96:
LABEL_97:

LABEL_98:
                          goto LABEL_99;
                        }

                        v108 = +[AXSubsystemBrailleHardware sharedInstance];
                        v109 = [v108 ignoreLogging];

                        if ((v109 & 1) == 0)
                        {
                          v110 = +[AXSubsystemBrailleHardware identifier];
                          v111 = AXLoggerForFacility();

                          v112 = AXOSLogLevelFromAXLogLevel();
                          if (os_log_type_enabled(v111, v112))
                          {
                            v113 = AXColorizeFormatLog();
                            bluetoothChannelIsLost = self->_modelIdentifier;
                            v114 = _AXStringForArgs();
                            if (os_log_type_enabled(v111, v112))
                            {
                              *v136 = 138543362;
                              v137 = v114;
                              _os_log_impl(&dword_0, v111, v112, "%{public}@", v136, 0xCu);
                            }
                          }

                          v32 = v33;
                        }

LABEL_119:
                        [(SCRDFileReader *)self->_readerThread invalidate:bluetoothChannelIsLost];
                        v115 = self->_readerThread;
                        self->_readerThread = 0;

                        v116 = self->_safeReadBuffer;
                        if (v116)
                        {
                          CFRelease(v116);
                          self->_safeReadBuffer = 0;
                        }

                        [v32 removeObserver:self];
                        [(NSLock *)self->_readBufferLock lock];
                        readBuffer = self->_readBuffer;
                        v12 = v127;
                        v4 = v128;
                        v29 = v126;
                        v30 = v129;
                        if (readBuffer)
                        {
                          CFRelease(readBuffer);
                          self->_readBuffer = 0;
                        }

                        v118 = self->_readBufferLock;
                        self->_readBufferLock = 0;
                        v119 = v118;

                        [(NSLock *)v119 unlock];
                        device = self->_device;
                        self->_device = 0;

                        self->_comPort = -1;
                        v121 = self->_modelIdentifier;
                        self->_modelIdentifier = 0;

                        v26 = 2;
                        goto LABEL_124;
                      }
                    }

                    v104 = +[AXSubsystemBrailleHardware sharedInstance];
                    v105 = [v104 ignoreLogging];

                    v32 = v33;
                    if (v105)
                    {
                      goto LABEL_119;
                    }

                    v106 = +[AXSubsystemBrailleHardware identifier];
                    v100 = AXLoggerForFacility();

                    v107 = AXOSLogLevelFromAXLogLevel();
                    if (os_log_type_enabled(v100, v107))
                    {
                      v102 = AXColorizeFormatLog();
                      v103 = _AXStringForArgs();
                      if (os_log_type_enabled(v100, v107))
                      {
                        *v136 = 138543362;
                        v137 = v103;
                        _os_log_impl(&dword_0, v100, v107, "%{public}@", v136, 0xCu);
                      }

LABEL_110:
                    }

LABEL_118:

                    goto LABEL_119;
                  }

                  v89 = +[AXSubsystemBrailleHardware sharedInstance];
                  v90 = [v89 ignoreLogging];

                  v32 = v33;
                  if ((v90 & 1) == 0)
                  {
                    v91 = +[AXSubsystemBrailleHardware identifier];
                    v92 = AXLoggerForFacility();

                    v93 = AXOSLogLevelFromAXLogLevel();
                    if (os_log_type_enabled(v92, v93))
                    {
                      v94 = AXColorizeFormatLog();
                      bluetoothChannelIsLost = self->_comPort;
                      v95 = _AXStringForArgs();
                      if (os_log_type_enabled(v92, v93))
                      {
                        *v136 = 138543362;
                        v137 = v95;
                        _os_log_impl(&dword_0, v92, v93, "%{public}@", v136, 0xCu);
                      }

                      v32 = v33;
                    }
                  }

                  self->_comPort = -1;
                }

                else
                {
                  v53 = +[AXSubsystemBrailleHardware sharedInstance];
                  v54 = [v53 ignoreLogging];

                  if ((v54 & 1) == 0)
                  {
                    v55 = +[AXSubsystemBrailleHardware identifier];
                    v56 = AXLoggerForFacility();

                    v57 = AXOSLogLevelFromAXLogLevel();
                    if (os_log_type_enabled(v56, v57))
                    {
                      v58 = v32;
                      v59 = AXColorizeFormatLog();
                      v60 = _AXStringForArgs();
                      if (os_log_type_enabled(v56, v57))
                      {
                        *buf = 138543362;
                        v139 = v60;
                        _os_log_impl(&dword_0, v56, v57, "%{public}@", buf, 0xCu);
                      }

                      v32 = v58;
                    }
                  }
                }

                v43 = v32;
                goto LABEL_92;
              }

LABEL_36:
              v44 = +[AXSubsystemBrailleHardware sharedInstance];
              v45 = [v44 ignoreLogging];

              if (v45)
              {
                v26 = 1;
                v12 = v127;
                v4 = v128;
                v29 = v126;
                v30 = v129;
                goto LABEL_96;
              }

              v48 = +[AXSubsystemBrailleHardware identifier];
              v31 = AXLoggerForFacility();

              v26 = 1;
              v49 = AXOSLogLevelFromAXLogLevel();
              v29 = v126;
              if (!os_log_type_enabled(v31, v49))
              {
                v12 = v127;
                v4 = v128;
                v30 = v129;
                goto LABEL_95;
              }

              v32 = AXColorizeFormatLog();
              v50 = _AXStringForArgs();
              if (os_log_type_enabled(v31, v49))
              {
                *buf = 138543362;
                v139 = v50;
                _os_log_impl(&dword_0, v31, v49, "%{public}@", buf, 0xCu);
              }

              v26 = 1;
              v12 = v127;
              v4 = v128;
              goto LABEL_93;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v132 objects:v140 count:16];
        }

        while (v18);
      }

      goto LABEL_36;
    }

    v46 = +[AXSubsystemBrailleHardware sharedInstance];
    v47 = [v46 ignoreLogging];

    if ((v47 & 1) == 0)
    {
      v51 = +[AXSubsystemBrailleHardware identifier];
      v29 = AXLoggerForFacility();

      v26 = 1;
      v52 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v29, v52))
      {
        v30 = AXColorizeFormatLog();
        v14 = _AXStringForArgs();
        if (os_log_type_enabled(v29, v52))
        {
          *buf = 138543362;
          v139 = v14;
          _os_log_impl(&dword_0, v29, v52, "%{public}@", buf, 0xCu);
        }

        goto LABEL_96;
      }

      goto LABEL_98;
    }

    v26 = 1;
LABEL_99:
  }

  else
  {
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
          v139 = v30;
          _os_log_impl(&dword_0, v12, v28, "%{public}@", buf, 0xCu);
        }

        goto LABEL_97;
      }

      goto LABEL_99;
    }

    v26 = 1;
  }

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
        v20 = 138543362;
        v21 = v9;
        _os_log_impl(&dword_0, v6, v7, "%{public}@", &v20, 0xCu);
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

    v14 = self->_readBufferLock;
    readBufferLock = self->_readBufferLock;
    self->_readBufferLock = 0;

    [(NSLock *)v14 unlock];
    [(BluetoothDevice *)self->_device disconnect];
    device = self->_device;
    self->_device = 0;

    self->_comPort = -1;
    self->_bluetoothChannelIsLost = 1;
    modelIdentifier = self->_modelIdentifier;
    self->_modelIdentifier = 0;

    self->_mainSize = 0;
    writeBuffer = self->_writeBuffer;
    if (writeBuffer)
    {
      free(writeBuffer);
      self->_writeBuffer = 0;
    }

    *&self->_joystick2KeyBuffer = 0;
    *&self->_isDeviceSleeping = 0;
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
      v14.location = 0;
      v14.length = v5;
      CFDataDeleteBytes(self->_readBuffer, v14);
    }
  }

  [(NSLock *)self->_readBufferLock unlock];
  isDeviceSleeping = self->_isDeviceSleeping;
  v9 = self->_safeReadBuffer;
  deviceIdentifier = self->_deviceIdentifier;
  v11 = SCRDEurobrailleExtractEventsFromBuffer();
  if (isDeviceSleeping != self->_isDeviceSleeping)
  {
    SCRDPostSleepNotification();
  }

  return v11;
}

- (BOOL)setMainCells:(const char *)a3 length:(int64_t)a4
{
  *self->_writeBuffer = 2;
  self->_writeBuffer[self->_writeBufferSize - 1] = 3;
  v6 = LODWORD(self->_mainSize) + 4;
  self->_writeBuffer[1] = BYTE1(v6);
  self->_writeBuffer[2] = v6;
  self->_writeBuffer[3] = 66;
  self->_writeBuffer[4] = 83;
  mainSize = self->_mainSize;
  writeBuffer = self->_writeBuffer;
  if (mainSize <= a4)
  {
    memcpy(writeBuffer + 5, a3, mainSize);
  }

  else
  {
    memcpy(writeBuffer + 5, a3, a4);
    bzero(&self->_writeBuffer[a4 + 5], self->_mainSize - a4);
  }

  comPort = self->_comPort;
  return comPort != -1 && write(comPort, self->_writeBuffer, self->_writeBufferSize) == self->_writeBufferSize;
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