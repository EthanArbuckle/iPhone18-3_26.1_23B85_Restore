@interface MSCROBrailleNoteApexBrailleDriver
- (BOOL)setMainCells:(const char *)a3 length:(int64_t)a4;
- (BOOL)unloadDriver;
- (MSCROBrailleNoteApexBrailleDriver)init;
- (id)getInputEvents;
- (int)loadDriverWithIOElement:(id)a3;
- (void)dealloc;
- (void)fileReader:(id)a3 data:(const void *)a4 length:(unint64_t)a5;
- (void)removeDeviceNotification:(id)a3;
@end

@implementation MSCROBrailleNoteApexBrailleDriver

- (MSCROBrailleNoteApexBrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCROBrailleNoteApexBrailleDriver;
  result = [(MSCROBrailleNoteApexBrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCROBrailleNoteApexBrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCROBrailleNoteApexBrailleDriver;
  [(MSCROBrailleNoteApexBrailleDriver *)&v3 dealloc];
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
        buf = 138543362;
        v141 = v11;
        _os_log_impl(&dword_0, v8, v9, "%{public}@", &buf, 0xCu);
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
        [(MSCROBrailleNoteApexBrailleDriver *)self unloadDriver];
      }

      v130 = v12;
      v129 = [v12 infoDictionary];
      [v129 objectForKey:kSCROBrailleDriverModels];
      v132 = v131 = v4;
      v14 = [v4 bluetoothAddress];
      v134 = 0u;
      v135 = 0u;
      v136 = 0u;
      v137 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      v16 = [v15 pairedDevices];

      v17 = [v16 countByEnumeratingWithState:&v134 objects:v142 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v135;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v135 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v134 + 1) + 8 * i);
            v22 = [v21 address];
            v23 = [v22 isEqualToString:v14];

            if (v23)
            {
              v31 = v21;

              if (v31)
              {
                v32 = +[NSNotificationCenter defaultCenter];
                [v32 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
                v128 = v32;
                [v32 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];
                if (([v31 connected]& 1) != 0)
                {
                  [v31 device];
                  ComPortForServiceWithSandboxExtension = BTDeviceGetComPortForServiceWithSandboxExtension();
                  if (ComPortForServiceWithSandboxExtension)
                  {
                    v34 = ComPortForServiceWithSandboxExtension;
                    v35 = +[AXSubsystemBrailleHardware sharedInstance];
                    v36 = [v35 ignoreLogging];

                    v29 = v129;
                    v12 = v130;
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
                          *v138 = 138543362;
                          v139 = v41;
                          _os_log_impl(&dword_0, v38, v39, "%{public}@", v138, 0xCu);
                        }
                      }

                      goto LABEL_50;
                    }

                    goto LABEL_51;
                  }

                  v29 = v129;
                  v12 = v130;
                  if (sandbox_extension_consume() == -1)
                  {
                    v59 = +[AXSubsystemBrailleHardware sharedInstance];
                    v60 = [v59 ignoreLogging];

                    if ((v60 & 1) == 0)
                    {
                      v61 = +[AXSubsystemBrailleHardware identifier];
                      v62 = AXLoggerForFacility();

                      v63 = AXOSLogLevelFromAXLogLevel();
                      if (os_log_type_enabled(v62, v63))
                      {
                        v64 = AXColorizeFormatLog();
                        comPort = *__error();
                        v126 = v64;
                        v65 = _AXStringForArgs();
                        if (os_log_type_enabled(v62, v63))
                        {
                          *v138 = 138543362;
                          v139 = v65;
                          _os_log_impl(&dword_0, v62, v63, "%{public}@", v138, 0xCu);
                        }
                      }
                    }
                  }

                  v66 = open(&buf, 131074, comPort);
                  self->_comPort = v66;
                  if (v66 < 0)
                  {
                    v90 = +[AXSubsystemBrailleHardware sharedInstance];
                    v91 = [v90 ignoreLogging];

                    if ((v91 & 1) == 0)
                    {
                      v92 = +[AXSubsystemBrailleHardware identifier];
                      v93 = AXLoggerForFacility();

                      v94 = AXOSLogLevelFromAXLogLevel();
                      if (os_log_type_enabled(v93, v94))
                      {
                        v95 = AXColorizeFormatLog();
                        comPort = self->_comPort;
                        v96 = _AXStringForArgs();
                        if (os_log_type_enabled(v93, v94))
                        {
                          *v138 = 138543362;
                          v139 = v96;
                          _os_log_impl(&dword_0, v93, v94, "%{public}@", v138, 0xCu);
                        }
                      }
                    }

                    self->_comPort = -1;
                    goto LABEL_51;
                  }

                  objc_storeStrong(&self->_device, v21);
                  v127 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:self->_comPort closeOnDealloc:1];
                  v67 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:self fileHandle:v127];
                  readerThread = self->_readerThread;
                  self->_readerThread = v67;

                  Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
                  self->_safeReadBuffer = Mutable;
                  v48 = v128;
                  if (!Mutable)
                  {
                    goto LABEL_117;
                  }

                  v70 = [objc_allocWithZone(NSLock) init];
                  readBufferLock = self->_readBufferLock;
                  self->_readBufferLock = v70;

                  if (!self->_readBufferLock)
                  {
                    goto LABEL_117;
                  }

                  v72 = CFDataCreateMutable(kCFAllocatorDefault, 0);
                  self->_readBuffer = v72;
                  if (!v72)
                  {
                    goto LABEL_117;
                  }

                  [(SCRDFileReader *)self->_readerThread start];
                  v73 = 5;
                  while (2)
                  {
                    modelIdentifier = self->_modelIdentifier;
                    if (modelIdentifier)
                    {
                      goto LABEL_90;
                    }

                    __buf = 16155;
                    if (write(self->_comPort, &__buf, 2uLL) <= 1)
                    {
                      v106 = +[AXSubsystemBrailleHardware sharedInstance];
                      v107 = [v106 ignoreLogging];

                      if ((v107 & 1) == 0)
                      {
                        v108 = +[AXSubsystemBrailleHardware identifier];
                        v100 = AXLoggerForFacility();

                        v109 = AXOSLogLevelFromAXLogLevel();
                        if (os_log_type_enabled(v100, v109))
                        {
                          v102 = AXColorizeFormatLog();
                          v103 = _AXStringForArgs();
                          if (os_log_type_enabled(v100, v109))
                          {
                            *v138 = 138543362;
                            v139 = v103;
                            v104 = v100;
                            v105 = v109;
LABEL_107:
                            _os_log_impl(&dword_0, v104, v105, "%{public}@", v138, 0xCu);
                          }

LABEL_108:
                        }

LABEL_109:
                      }

LABEL_116:
                      v48 = v128;
                      goto LABEL_117;
                    }

                    self->_bluetoothChannelIsLost = 0;
                    self->_hasBeenUnloaded = 0;
                    v75 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0, 0);
                    v76 = v75;
                    if (self->_bluetoothChannelIsLost || self->_hasBeenUnloaded || v75 == kCFRunLoopRunStopped)
                    {
                      v97 = +[AXSubsystemBrailleHardware sharedInstance];
                      v98 = [v97 ignoreLogging];

                      if ((v98 & 1) == 0)
                      {
                        v99 = +[AXSubsystemBrailleHardware identifier];
                        v100 = AXLoggerForFacility();

                        v101 = AXOSLogLevelFromAXLogLevel();
                        if (os_log_type_enabled(v100, v101))
                        {
                          v102 = AXColorizeFormatLog();
                          hasBeenUnloaded = self->_hasBeenUnloaded;
                          v125 = v76;
                          comPort = self->_bluetoothChannelIsLost;
                          v103 = _AXStringForArgs();
                          if (os_log_type_enabled(v100, v101))
                          {
                            *v138 = 138543362;
                            v139 = v103;
                            v104 = v100;
                            v105 = v101;
                            goto LABEL_107;
                          }

                          goto LABEL_108;
                        }

                        goto LABEL_109;
                      }

                      goto LABEL_116;
                    }

                    [(NSLock *)self->_readBufferLock lock];
                    Length = CFDataGetLength(self->_readBuffer);
                    if (Length >= 1)
                    {
                      v78 = Length;
                      safeReadBuffer = self->_safeReadBuffer;
                      BytePtr = CFDataGetBytePtr(self->_readBuffer);
                      v81 = safeReadBuffer;
                      v48 = v128;
                      CFDataAppendBytes(v81, BytePtr, v78);
                      v143.location = 0;
                      v143.length = v78;
                      CFDataDeleteBytes(self->_readBuffer, v143);
                    }

                    [(NSLock *)self->_readBufferLock unlock];
                    v82 = self->_safeReadBuffer;
                    DescriptionPacketFromBuffer = SCRDBrailleNoteCreateDescriptionPacketFromBuffer();
                    if (DescriptionPacketFromBuffer)
                    {
                      v84 = DescriptionPacketFromBuffer;
                      if (SCRDBrailleNoteGetDisplayInfoFromDescriptionPacket())
                      {
                        mainSize = self->_mainSize;
                        if (mainSize == 32)
                        {
                          v86 = @"com.apple.scrod.braille.driver.humanware.braillenote.apex.32";
LABEL_86:
                          v87 = self->_modelIdentifier;
                          self->_modelIdentifier = &v86->isa;
                        }

                        else if (mainSize == 18)
                        {
                          v86 = @"com.apple.scrod.braille.driver.humanware.braillenote.apex.18";
                          goto LABEL_86;
                        }
                      }

                      CFRelease(v84);
                    }

                    if (!--v73)
                    {
                      modelIdentifier = self->_modelIdentifier;
LABEL_90:
                      v88 = [v132 objectForKey:modelIdentifier];
                      if (v88)
                      {
                        v89 = v88;
                        v26 = 0;
                        self->_isDriverLoaded = 1;
                        v30 = v132;
                        goto LABEL_122;
                      }

                      v110 = +[AXSubsystemBrailleHardware sharedInstance];
                      v111 = [v110 ignoreLogging];

                      v48 = v128;
                      if ((v111 & 1) == 0)
                      {
                        v112 = +[AXSubsystemBrailleHardware identifier];
                        v113 = AXLoggerForFacility();

                        v114 = AXOSLogLevelFromAXLogLevel();
                        if (os_log_type_enabled(v113, v114))
                        {
                          v115 = AXColorizeFormatLog();
                          comPort = self->_modelIdentifier;
                          v116 = _AXStringForArgs();
                          if (os_log_type_enabled(v113, v114))
                          {
                            *v138 = 138543362;
                            v139 = v116;
                            _os_log_impl(&dword_0, v113, v114, "%{public}@", v138, 0xCu);
                          }
                        }

                        goto LABEL_116;
                      }

LABEL_117:
                      [(SCRDFileReader *)self->_readerThread invalidate:comPort];
                      v117 = self->_readerThread;
                      self->_readerThread = 0;

                      v118 = self->_safeReadBuffer;
                      if (v118)
                      {
                        CFRelease(v118);
                        self->_safeReadBuffer = 0;
                      }

                      [v48 removeObserver:self];
                      [(NSLock *)self->_readBufferLock lock];
                      readBuffer = self->_readBuffer;
                      v30 = v132;
                      if (readBuffer)
                      {
                        CFRelease(readBuffer);
                        self->_readBuffer = 0;
                      }

                      v120 = self->_readBufferLock;
                      self->_readBufferLock = 0;
                      v89 = v120;

                      [(NSLock *)v89 unlock];
                      device = self->_device;
                      self->_device = 0;

                      self->_comPort = -1;
                      v122 = self->_modelIdentifier;
                      self->_modelIdentifier = 0;

                      v26 = 2;
LABEL_122:

LABEL_53:
LABEL_55:

                      v4 = v131;
LABEL_56:

LABEL_57:
LABEL_58:

                      goto LABEL_59;
                    }

                    continue;
                  }
                }

                v52 = +[AXSubsystemBrailleHardware sharedInstance];
                v53 = [v52 ignoreLogging];

                v29 = v129;
                v12 = v130;
                if ((v53 & 1) == 0)
                {
                  v54 = +[AXSubsystemBrailleHardware identifier];
                  v38 = AXLoggerForFacility();

                  v55 = AXOSLogLevelFromAXLogLevel();
                  if (os_log_type_enabled(v38, v55))
                  {
                    v56 = AXColorizeFormatLog();
                    v57 = _AXStringForArgs();
                    if (os_log_type_enabled(v38, v55))
                    {
                      buf = 138543362;
                      v141 = v57;
                      _os_log_impl(&dword_0, v38, v55, "%{public}@", &buf, 0xCu);
                    }
                  }

LABEL_50:
                }

LABEL_51:
                v48 = v128;
                [v128 removeObserver:{self, comPort}];
                v26 = 1;
LABEL_52:
                v30 = v132;
                goto LABEL_53;
              }

LABEL_34:
              v42 = +[AXSubsystemBrailleHardware sharedInstance];
              v43 = [v42 ignoreLogging];

              if (v43)
              {
                v26 = 1;
                v12 = v130;
                v4 = v131;
                v29 = v129;
                v30 = v132;
                goto LABEL_56;
              }

              v46 = +[AXSubsystemBrailleHardware identifier];
              v31 = AXLoggerForFacility();

              v26 = 1;
              v47 = AXOSLogLevelFromAXLogLevel();
              v29 = v129;
              if (!os_log_type_enabled(v31, v47))
              {
                v12 = v130;
                v30 = v132;
                goto LABEL_55;
              }

              v48 = AXColorizeFormatLog();
              v49 = _AXStringForArgs();
              v12 = v130;
              if (os_log_type_enabled(v31, v47))
              {
                buf = 138543362;
                v141 = v49;
                _os_log_impl(&dword_0, v31, v47, "%{public}@", &buf, 0xCu);
              }

              goto LABEL_52;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v134 objects:v142 count:16];
        }

        while (v18);
      }

      goto LABEL_34;
    }

    v44 = +[AXSubsystemBrailleHardware sharedInstance];
    v45 = [v44 ignoreLogging];

    if ((v45 & 1) == 0)
    {
      v50 = +[AXSubsystemBrailleHardware identifier];
      v29 = AXLoggerForFacility();

      v26 = 1;
      v51 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v29, v51))
      {
        v30 = AXColorizeFormatLog();
        v14 = _AXStringForArgs();
        if (os_log_type_enabled(v29, v51))
        {
          buf = 138543362;
          v141 = v14;
          _os_log_impl(&dword_0, v29, v51, "%{public}@", &buf, 0xCu);
        }

        goto LABEL_56;
      }

      goto LABEL_58;
    }

    v26 = 1;
LABEL_59:
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
          buf = 138543362;
          v141 = v30;
          _os_log_impl(&dword_0, v12, v28, "%{public}@", &buf, 0xCu);
        }

        goto LABEL_57;
      }

      goto LABEL_59;
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

  return _SCRDBrailleNoteExtractEventsFromBuffer(v8);
}

- (BOOL)setMainCells:(const char *)a3 length:(int64_t)a4
{
  mainSize_low = LOBYTE(self->_mainSize);
  statusOffset_low = LOBYTE(self->_statusOffset);
  DisplayRequest = SCRDBrailleNoteCreateDisplayRequest();
  if (!DisplayRequest)
  {
    return 0;
  }

  v8 = DisplayRequest;
  if (self->_comPort == -1)
  {
    v12 = 0;
  }

  else
  {
    Length = CFDataGetLength(DisplayRequest);
    comPort = self->_comPort;
    BytePtr = CFDataGetBytePtr(v8);
    v12 = write(comPort, BytePtr, Length) == Length;
  }

  CFRelease(v8);
  return v12;
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