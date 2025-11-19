@interface MSCROSeikaBrailleDriver
- (BOOL)setMainCells:(const char *)a3 length:(int64_t)a4;
- (BOOL)unloadDriver;
- (MSCROSeikaBrailleDriver)init;
- (id)getInputEvents;
- (int)loadDriverWithIOElement:(id)a3;
- (void)dealloc;
- (void)fileReader:(id)a3 data:(const void *)a4 length:(unint64_t)a5;
- (void)removeDeviceNotification:(id)a3;
@end

@implementation MSCROSeikaBrailleDriver

- (MSCROSeikaBrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCROSeikaBrailleDriver;
  result = [(MSCROSeikaBrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCROSeikaBrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCROSeikaBrailleDriver;
  [(MSCROSeikaBrailleDriver *)&v3 dealloc];
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
        v163 = v11;
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
        [(MSCROSeikaBrailleDriver *)self unloadDriver];
      }

      v153 = v12;
      v152 = [v12 infoDictionary];
      v151 = [v152 objectForKey:kSCROBrailleDriverModels];
      v14 = [v4 bluetoothAddress];
      v156 = 0u;
      v157 = 0u;
      v158 = 0u;
      v159 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      v16 = [v15 pairedDevices];

      v17 = [v16 countByEnumeratingWithState:&v156 objects:v164 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v157;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v157 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v156 + 1) + 8 * i);
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
                  v149 = v32;
                  [v31 device];
                  ComPortForServiceWithSandboxExtension = BTDeviceGetComPortForServiceWithSandboxExtension();
                  if (ComPortForServiceWithSandboxExtension)
                  {
                    v34 = ComPortForServiceWithSandboxExtension;
                    v35 = +[AXSubsystemBrailleHardware sharedInstance];
                    v36 = [v35 ignoreLogging];

                    v30 = v151;
                    v29 = v152;
                    if ((v36 & 1) == 0)
                    {
                      v37 = +[AXSubsystemBrailleHardware identifier];
                      v38 = AXLoggerForFacility();

                      v39 = AXOSLogLevelFromAXLogLevel();
                      if (os_log_type_enabled(v38, v39))
                      {
                        v40 = AXColorizeFormatLog();
                        bluetoothChannelIsLost = v34;
                        v41 = _AXStringForArgs();
                        if (os_log_type_enabled(v38, v39))
                        {
                          *v160 = 138543362;
                          v161 = v41;
                          _os_log_impl(&dword_0, v38, v39, "%{public}@", v160, 0xCu);
                        }
                      }
                    }

                    v32 = v149;
                  }

                  else
                  {
                    v30 = v151;
                    v29 = v152;
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
                          v63 = AXColorizeFormatLog();
                          bluetoothChannelIsLost = *__error();
                          v147 = v63;
                          v64 = _AXStringForArgs();
                          if (os_log_type_enabled(v61, v62))
                          {
                            *v160 = 138543362;
                            v161 = v64;
                            _os_log_impl(&dword_0, v61, v62, "%{public}@", v160, 0xCu);
                          }
                        }
                      }
                    }

                    v65 = open(&buf, 131074, bluetoothChannelIsLost);
                    self->_comPort = v65;
                    if ((v65 & 0x80000000) == 0)
                    {
                      objc_storeStrong(&self->_device, v21);
                      v66 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:self->_comPort closeOnDealloc:1];
                      v67 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:self fileHandle:v66];
                      readerThread = self->_readerThread;
                      self->_readerThread = v67;

                      v69 = objc_allocWithZone(NSConstantValueExpression);
                      v70 = [v69 initWithObject:kSCRDSeikaNotetakerBluetoothNameRegExPattern];
                      v71 = objc_allocWithZone(NSComparisonPredicate);
                      v72 = +[NSExpression expressionForEvaluatedObject];
                      v146 = v70;
                      v148 = [v71 initWithLeftExpression:v72 rightExpression:v70 modifier:0 type:6 options:0];

                      Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
                      self->_safeReadBuffer = Mutable;
                      if (!Mutable)
                      {
                        goto LABEL_127;
                      }

                      v74 = [objc_allocWithZone(NSLock) init];
                      readBufferLock = self->_readBufferLock;
                      self->_readBufferLock = v74;

                      if (!self->_readBufferLock)
                      {
                        goto LABEL_127;
                      }

                      v76 = CFDataCreateMutable(kCFAllocatorDefault, 0);
                      self->_readBuffer = v76;
                      if (!v76)
                      {
                        goto LABEL_127;
                      }

                      v144 = v66;
                      [(SCRDFileReader *)self->_readerThread start];
                      v77 = [(BluetoothDevice *)self->_device name];
                      v78 = [v148 evaluateWithObject:v77];

                      v79 = v78;
                      v80 = 0;
                      if (v78)
                      {
                        v81 = -95;
                      }

                      else
                      {
                        v81 = 10;
                      }

                      __buf = -1;
                      v155 = v81;
                      while (1)
                      {
                        modelIdentifier = self->_modelIdentifier;
                        if (modelIdentifier)
                        {
                          goto LABEL_116;
                        }

                        if (write(self->_comPort, &__buf, 3uLL) <= 2)
                        {
                          break;
                        }

                        self->_bluetoothChannelIsLost = 0;
                        self->_hasBeenUnloaded = 0;
                        v83 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0, 0);
                        v84 = v83;
                        if (self->_bluetoothChannelIsLost || self->_hasBeenUnloaded || v83 == kCFRunLoopRunStopped)
                        {
                          v113 = +[AXSubsystemBrailleHardware sharedInstance];
                          v114 = [v113 ignoreLogging];

                          v66 = v144;
                          if (v114)
                          {
                            goto LABEL_127;
                          }

                          v115 = +[AXSubsystemBrailleHardware identifier];
                          v116 = AXLoggerForFacility();

                          v117 = v116;
                          v118 = AXOSLogLevelFromAXLogLevel();
                          if (!os_log_type_enabled(v116, v118))
                          {
                            v66 = v144;
                            goto LABEL_126;
                          }

                          v119 = AXColorizeFormatLog();
                          hasBeenUnloaded = self->_hasBeenUnloaded;
                          v143 = v84;
                          bluetoothChannelIsLost = self->_bluetoothChannelIsLost;
                          v120 = _AXStringForArgs();
                          if (os_log_type_enabled(v117, v118))
                          {
                            *v160 = 138543362;
                            v161 = v120;
                            _os_log_impl(&dword_0, v117, v118, "%{public}@", v160, 0xCu);
                          }

                          v66 = v144;
                          goto LABEL_124;
                        }

                        [(NSLock *)self->_readBufferLock lock];
                        readBuffer = self->_readBuffer;
                        if (readBuffer)
                        {
                          Length = CFDataGetLength(readBuffer);
                          if (Length >= 1)
                          {
                            v87 = Length;
                            v88 = v79;
                            safeReadBuffer = self->_safeReadBuffer;
                            BytePtr = CFDataGetBytePtr(self->_readBuffer);
                            v91 = safeReadBuffer;
                            v79 = v88;
                            CFDataAppendBytes(v91, BytePtr, v87);
                            v165.location = 0;
                            v165.length = v87;
                            CFDataDeleteBytes(self->_readBuffer, v165);
                          }
                        }

                        [(NSLock *)self->_readBufferLock unlock];
                        v92 = self->_safeReadBuffer;
                        if (v79)
                        {
                          PacketFromBuffer = SCRDSeikaNotetakerCreatePacketFromBuffer();
                          if (PacketFromBuffer)
                          {
                            v94 = PacketFromBuffer;
                            do
                            {
                              v95 = CFDataGetBytePtr(v94);
                              if (v95[2] == 162)
                              {
                                HIDWORD(v97) = v95[5] - 8;
                                LODWORD(v97) = HIDWORD(v97);
                                v96 = v97 >> 3;
                                if (v96 <= 4 && ((0x17u >> v96) & 1) != 0)
                                {
                                  v98 = dword_3538[v96];
                                  v99 = *(&off_8260 + v96);
                                  self->_deviceID = v98;
                                  v100 = self->_modelIdentifier;
                                  self->_modelIdentifier = v99;
                                }
                              }

                              CFRelease(v94);
                              v101 = self->_safeReadBuffer;
                              v94 = SCRDSeikaNotetakerCreatePacketFromBuffer();
                            }

                            while (v94);
                          }
                        }

                        else
                        {
                          while (1)
                          {
                            IdentityPacketFromBuffer = SCRDSeikaCreateIdentityPacketFromBuffer();
                            if (!IdentityPacketFromBuffer)
                            {
                              break;
                            }

                            if (CFDataGetBytePtr(self->_safeReadBuffer)[2] == 40)
                            {
                              self->_deviceID = 1;
                              v103 = self->_modelIdentifier;
                              self->_modelIdentifier = @"com.apple.scrod.braille.driver.nippon.telesoft.seika.40";
                            }

                            CFRelease(IdentityPacketFromBuffer);
                            v104 = self->_safeReadBuffer;
                          }
                        }

                        if (++v80 == 5)
                        {
                          modelIdentifier = self->_modelIdentifier;
LABEL_116:
                          v126 = [v151 objectForKey:modelIdentifier];
                          v32 = v149;
                          v66 = v144;
                          if (v126)
                          {
                            v127 = v126;
                            v128 = [v126 objectForKey:kSCROBrailleDriverMainDisplaySize];
                            self->_mainSize = [v128 unsignedCharValue];

                            self->_isDriverLoaded = 1;
                            v26 = 0;
                            v12 = v153;
                            goto LABEL_132;
                          }

                          v129 = +[AXSubsystemBrailleHardware sharedInstance];
                          v130 = [v129 ignoreLogging];

                          if ((v130 & 1) == 0)
                          {
                            v131 = +[AXSubsystemBrailleHardware identifier];
                            v132 = AXLoggerForFacility();

                            v117 = v132;
                            v125 = AXOSLogLevelFromAXLogLevel();
                            if (os_log_type_enabled(v117, v125))
                            {
                              v133 = AXColorizeFormatLog();
                              bluetoothChannelIsLost = self->_modelIdentifier;
                              mode = v133;
                              v120 = _AXStringForArgs();
                              if (os_log_type_enabled(v117, v125))
                              {
                                *v160 = 138543362;
                                v161 = v120;
LABEL_122:
                                _os_log_impl(&dword_0, v117, v125, "%{public}@", v160, 0xCu);
                              }

                              goto LABEL_123;
                            }

LABEL_126:
                          }

LABEL_127:
                          [(SCRDFileReader *)self->_readerThread invalidate:bluetoothChannelIsLost];
                          v134 = self->_readerThread;
                          self->_readerThread = 0;

                          v135 = self->_safeReadBuffer;
                          if (v135)
                          {
                            CFRelease(v135);
                            self->_safeReadBuffer = 0;
                          }

                          v32 = v149;
                          [v149 removeObserver:self];
                          [(NSLock *)self->_readBufferLock lock];
                          v136 = self->_readBuffer;
                          v12 = v153;
                          if (v136)
                          {
                            CFRelease(v136);
                            self->_readBuffer = 0;
                          }

                          v137 = self->_readBufferLock;
                          self->_readBufferLock = 0;
                          v138 = v137;

                          [(NSLock *)v138 unlock];
                          device = self->_device;
                          self->_device = 0;

                          self->_comPort = -1;
                          v140 = self->_modelIdentifier;
                          self->_modelIdentifier = 0;

                          self->_deviceID = 0;
                          v26 = 2;
LABEL_132:

LABEL_100:
LABEL_101:

LABEL_102:
LABEL_103:

LABEL_104:
                          goto LABEL_105;
                        }
                      }

                      v121 = +[AXSubsystemBrailleHardware sharedInstance];
                      v122 = [v121 ignoreLogging];

                      v66 = v144;
                      if (v122)
                      {
                        goto LABEL_127;
                      }

                      v123 = +[AXSubsystemBrailleHardware identifier];
                      v124 = AXLoggerForFacility();

                      v117 = v124;
                      v125 = AXOSLogLevelFromAXLogLevel();
                      if (!os_log_type_enabled(v117, v125))
                      {
                        goto LABEL_126;
                      }

                      mode = AXColorizeFormatLog();
                      v120 = _AXStringForArgs();
                      if (os_log_type_enabled(v117, v125))
                      {
                        *v160 = 138543362;
                        v161 = v120;
                        goto LABEL_122;
                      }

LABEL_123:
                      v119 = mode;
LABEL_124:

                      goto LABEL_126;
                    }

                    v105 = +[AXSubsystemBrailleHardware sharedInstance];
                    v106 = [v105 ignoreLogging];

                    v32 = v149;
                    if ((v106 & 1) == 0)
                    {
                      v107 = +[AXSubsystemBrailleHardware identifier];
                      v108 = AXLoggerForFacility();

                      v109 = AXOSLogLevelFromAXLogLevel();
                      if (os_log_type_enabled(v108, v109))
                      {
                        v110 = AXColorizeFormatLog();
                        bluetoothChannelIsLost = self->_comPort;
                        v111 = _AXStringForArgs();
                        if (os_log_type_enabled(v108, v109))
                        {
                          *v160 = 138543362;
                          v161 = v111;
                          _os_log_impl(&dword_0, v108, v109, "%{public}@", v160, 0xCu);
                        }

                        v32 = v149;
                      }
                    }

                    self->_comPort = -1;
                  }
                }

                else
                {
                  v51 = +[AXSubsystemBrailleHardware sharedInstance];
                  v52 = [v51 ignoreLogging];

                  v30 = v151;
                  v29 = v152;
                  if ((v52 & 1) == 0)
                  {
                    v53 = +[AXSubsystemBrailleHardware identifier];
                    v54 = AXLoggerForFacility();

                    v55 = AXOSLogLevelFromAXLogLevel();
                    if (os_log_type_enabled(v54, v55))
                    {
                      v56 = v32;
                      v57 = AXColorizeFormatLog();
                      v150 = _AXStringForArgs();
                      if (os_log_type_enabled(v54, v55))
                      {
                        buf = 138543362;
                        v163 = v150;
                        _os_log_impl(&dword_0, v54, v55, "%{public}@", &buf, 0xCu);
                      }

                      v32 = v56;
                    }
                  }
                }

                [v32 removeObserver:{self, bluetoothChannelIsLost}];
LABEL_99:
                v26 = 1;
                v12 = v153;
                goto LABEL_100;
              }

LABEL_36:
              v42 = +[AXSubsystemBrailleHardware sharedInstance];
              v43 = [v42 ignoreLogging];

              if (v43)
              {
                v26 = 1;
                v29 = v152;
                v12 = v153;
                v30 = v151;
                goto LABEL_102;
              }

              v46 = +[AXSubsystemBrailleHardware identifier];
              v31 = AXLoggerForFacility();

              v26 = 1;
              v47 = AXOSLogLevelFromAXLogLevel();
              v29 = v152;
              if (!os_log_type_enabled(v31, v47))
              {
                v12 = v153;
                v30 = v151;
                goto LABEL_101;
              }

              v32 = AXColorizeFormatLog();
              v48 = _AXStringForArgs();
              v30 = v151;
              if (os_log_type_enabled(v31, v47))
              {
                buf = 138543362;
                v163 = v48;
                _os_log_impl(&dword_0, v31, v47, "%{public}@", &buf, 0xCu);
              }

              goto LABEL_99;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v156 objects:v164 count:16];
        }

        while (v18);
      }

      goto LABEL_36;
    }

    v44 = +[AXSubsystemBrailleHardware sharedInstance];
    v45 = [v44 ignoreLogging];

    if ((v45 & 1) == 0)
    {
      v49 = +[AXSubsystemBrailleHardware identifier];
      v29 = AXLoggerForFacility();

      v26 = 1;
      v50 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v29, v50))
      {
        v30 = AXColorizeFormatLog();
        v14 = _AXStringForArgs();
        if (os_log_type_enabled(v29, v50))
        {
          buf = 138543362;
          v163 = v14;
          _os_log_impl(&dword_0, v29, v50, "%{public}@", &buf, 0xCu);
        }

        goto LABEL_102;
      }

      goto LABEL_104;
    }

    v26 = 1;
LABEL_105:
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
          v163 = v30;
          _os_log_impl(&dword_0, v12, v28, "%{public}@", &buf, 0xCu);
        }

        goto LABEL_103;
      }

      goto LABEL_105;
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
    self->_deviceID = 0;
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
  deviceID = self->_deviceID;

  return _SCRDSeikaExtractEventsFromBuffer(v8, deviceID);
}

- (BOOL)setMainCells:(const char *)a3 length:(int64_t)a4
{
  deviceID = self->_deviceID;
  v6 = SCRDSeikaCreateWriteRequestPacket();
  if (!v6)
  {
    return 0;
  }

  v7 = v6;
  if (self->_comPort == -1)
  {
    v11 = 0;
  }

  else
  {
    Length = CFDataGetLength(v6);
    comPort = self->_comPort;
    BytePtr = CFDataGetBytePtr(v7);
    v11 = write(comPort, BytePtr, Length) == Length;
  }

  CFRelease(v7);
  [NSThread sleepForTimeInterval:0.005];
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