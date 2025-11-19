@interface MSCROBaumBrailleDriver
- (BOOL)setMainCells:(const char *)a3 length:(int64_t)a4;
- (BOOL)unloadDriver;
- (MSCROBaumBrailleDriver)init;
- (id)getInputEvents;
- (int)brailleInputMode;
- (int)loadDriverWithIOElement:(id)a3;
- (void)dealloc;
- (void)fileReader:(id)a3 data:(const void *)a4 length:(unint64_t)a5;
- (void)removeDeviceNotification:(id)a3;
@end

@implementation MSCROBaumBrailleDriver

- (MSCROBaumBrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCROBaumBrailleDriver;
  result = [(MSCROBaumBrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_nextInitRequestTime = -3061152000.0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCROBaumBrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCROBaumBrailleDriver;
  [(MSCROBaumBrailleDriver *)&v3 dealloc];
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
        v167 = v11;
        _os_log_impl(&dword_0, v8, v9, "%{public}@", &buf, 0xCu);
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
        [(MSCROBaumBrailleDriver *)self unloadDriver];
      }

      v153 = v12;
      v152 = [v12 infoDictionary];
      [v152 objectForKey:kSCROBrailleDriverModels];
      v155 = v154 = v4;
      v14 = [v4 bluetoothAddress];
      v159 = 0u;
      v160 = 0u;
      v161 = 0u;
      v162 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      v16 = [v15 pairedDevices];

      v17 = [v16 countByEnumeratingWithState:&v159 objects:v168 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v160;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v160 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v159 + 1) + 8 * i);
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
                          *v164 = 138543362;
                          v165 = v42;
                          _os_log_impl(&dword_0, v39, v40, "%{public}@", v164, 0xCu);
                        }
                      }
                    }

                    v32 = v33;
                    v43 = v33;
                  }

                  else
                  {
                    if (sandbox_extension_consume() == -1)
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
                          v58 = AXColorizeFormatLog();
                          bluetoothChannelIsLost = *__error();
                          v59 = _AXStringForArgs();
                          if (os_log_type_enabled(v56, v57))
                          {
                            *v164 = 138543362;
                            v165 = v59;
                            _os_log_impl(&dword_0, v56, v57, "%{public}@", v164, 0xCu);
                          }
                        }
                      }
                    }

                    v60 = open(&buf, 131074, bluetoothChannelIsLost);
                    self->_comPort = v60;
                    if ((v60 & 0x80000000) == 0)
                    {
                      objc_storeStrong(&self->_device, v21);
                      v61 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:self->_comPort closeOnDealloc:1];
                      v62 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:self fileHandle:v61];
                      readerThread = self->_readerThread;
                      self->_readerThread = v62;

                      Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
                      self->_safeReadBuffer = Mutable;
                      v151 = v61;
                      if (!Mutable)
                      {
                        goto LABEL_118;
                      }

                      v65 = [objc_allocWithZone(NSLock) init];
                      readBufferLock = self->_readBufferLock;
                      self->_readBufferLock = v65;

                      if (!self->_readBufferLock)
                      {
                        goto LABEL_118;
                      }

                      v67 = CFDataCreateMutable(kCFAllocatorDefault, 0);
                      self->_readBuffer = v67;
                      if (!v67)
                      {
                        goto LABEL_118;
                      }

                      [(SCRDFileReader *)self->_readerThread start];
                      v68 = 0;
                      v69 = 0;
                      memset(v163, 0, 19);
                      while (1)
                      {
                        v158 = 1;
                        __buf = 5403;
                        if (write(self->_comPort, &__buf, 3uLL) <= 2)
                        {
                          goto LABEL_118;
                        }

                        v156 = -31717;
                        if (write(self->_comPort, &v156, 2uLL) <= 1)
                        {
                          break;
                        }

                        self->_bluetoothChannelIsLost = 0;
                        self->_hasBeenUnloaded = 0;
                        v70 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.2, 0);
                        v71 = v70;
                        if (self->_bluetoothChannelIsLost || self->_hasBeenUnloaded || v70 == kCFRunLoopRunStopped)
                        {
                          v114 = +[AXSubsystemBrailleHardware sharedInstance];
                          v115 = [v114 ignoreLogging];

                          if (v115)
                          {
                            goto LABEL_118;
                          }

                          v116 = +[AXSubsystemBrailleHardware identifier];
                          v117 = AXLoggerForFacility();

                          v118 = AXOSLogLevelFromAXLogLevel();
                          if (os_log_type_enabled(v117, v118))
                          {
                            v119 = AXColorizeFormatLog();
                            hasBeenUnloaded = self->_hasBeenUnloaded;
                            v149 = v71;
                            bluetoothChannelIsLost = self->_bluetoothChannelIsLost;
                            v120 = _AXStringForArgs();
                            if (os_log_type_enabled(v117, v118))
                            {
                              *v164 = 138543362;
                              v165 = v120;
                              v121 = v117;
                              v122 = v118;
                              goto LABEL_114;
                            }

                            goto LABEL_115;
                          }

                          goto LABEL_116;
                        }

                        [(NSLock *)self->_readBufferLock lock];
                        Length = CFDataGetLength(self->_readBuffer);
                        if (Length >= 1)
                        {
                          v73 = Length;
                          v74 = v68;
                          safeReadBuffer = self->_safeReadBuffer;
                          BytePtr = CFDataGetBytePtr(self->_readBuffer);
                          v77 = safeReadBuffer;
                          v68 = v74;
                          CFDataAppendBytes(v77, BytePtr, v73);
                          v169.location = 0;
                          v169.length = v73;
                          CFDataDeleteBytes(self->_readBuffer, v169);
                        }

                        [(NSLock *)self->_readBufferLock unlock];
                        v78 = self->_safeReadBuffer;
                        mainSize = self->_mainSize;
                        PacketFromBuffer = SCRDBaumCreatePacketFromBuffer();
                        if (PacketFromBuffer)
                        {
                          v82 = PacketFromBuffer;
                          v83 = 0;
                          do
                          {
                            v84 = CFDataGetBytePtr(v82);
                            v85 = *v84;
                            if (v85 == 132)
                            {
                              v86 = *(v84 + 1);
                              LOWORD(v163[1]) = *(v84 + 17);
                              v163[0] = v86;
                              v83 = 1;
                            }

                            else if (v85 == 23)
                            {
                              v68 = 1;
                            }

                            else
                            {
                              v68 = v68;
                            }

                            CFRelease(v82);
                            v87 = self->_safeReadBuffer;
                            v88 = self->_mainSize;
                            v82 = SCRDBaumCreatePacketFromBuffer();
                          }

                          while (v82);
                          v81 = v69++ > 5;
                          v89 = v81;
                          if ((v89 | v83))
                          {
                            if (v83)
                            {
                              v90 = v68;
                              v91 = [NSString stringWithUTF8String:v163];
                              v92 = _modelIdentifierForDeviceIdentifier(v91, &self->_deviceID);
                              modelIdentifier = self->_modelIdentifier;
                              self->_modelIdentifier = v92;

                              v94 = [v155 objectForKey:self->_modelIdentifier];
                              v95 = +[AXSubsystemBrailleHardware sharedInstance];
                              v96 = [v95 ignoreLogging];

                              if (v94)
                              {
                                if ((v96 & 1) == 0)
                                {
                                  v97 = +[AXSubsystemBrailleHardware identifier];
                                  v98 = AXLoggerForFacility();

                                  v99 = AXOSLogLevelFromAXLogLevel();
                                  if (os_log_type_enabled(v98, v99))
                                  {
                                    v100 = AXColorizeFormatLog();
                                    bluetoothChannelIsLost = self->_modelIdentifier;
                                    hasBeenUnloaded = v94;
                                    mode = _AXStringForArgs();
                                    if (os_log_type_enabled(v98, v99))
                                    {
                                      *v164 = 138543362;
                                      v165 = mode;
                                      _os_log_impl(&dword_0, v98, v99, "%{public}@", v164, 0xCu);
                                    }
                                  }
                                }

                                v101 = [v94 objectForKey:{kSCROBrailleDriverMainDisplaySize, bluetoothChannelIsLost, hasBeenUnloaded}];
                                self->_mainSize = [v101 unsignedCharValue];

                                v102 = self->_mainSize;
                                v103 = v102 + 7;
                                v81 = v102 < -7;
                                v104 = v102 + 14;
                                if (!v81)
                                {
                                  v104 = v103;
                                }

                                v105 = v104 >> 3;
                                self->_routerKeyGroupStateBufferSize = v105;
                                v106 = malloc_type_calloc(v105, 1uLL, 0x100004077774924uLL);
                                self->_routerKeyGroupStateBuffer = v106;
                                if (v106)
                                {
                                  self->_isDriverLoaded = 1;
                                  self->_isDeviceSleeping = v90 & 1;
                                  if (v90)
                                  {
                                    SCRDPostSleepNotification();
                                  }

                                  v26 = 0;
                                  v30 = v155;
LABEL_125:

                                  v32 = v33;
LABEL_126:
                                  v12 = v153;
                                  v4 = v154;
                                  v29 = v152;
LABEL_127:

LABEL_128:
LABEL_129:

LABEL_130:
LABEL_131:

                                  goto LABEL_132;
                                }
                              }

                              else
                              {
                                if ((v96 & 1) == 0)
                                {
                                  v142 = +[AXSubsystemBrailleHardware identifier];
                                  v143 = AXLoggerForFacility();

                                  v144 = AXOSLogLevelFromAXLogLevel();
                                  if (os_log_type_enabled(v143, v144))
                                  {
                                    v145 = AXColorizeFormatLog();
                                    bluetoothChannelIsLost = self->_modelIdentifier;
                                    v146 = _AXStringForArgs();
                                    if (os_log_type_enabled(v143, v144))
                                    {
                                      *v164 = 138543362;
                                      v165 = v146;
                                      _os_log_impl(&dword_0, v143, v144, "%{public}@", v164, 0xCu);
                                    }
                                  }
                                }

                                v94 = 0;
                              }

LABEL_119:
                              v30 = v155;
LABEL_120:
                              [(SCRDFileReader *)self->_readerThread invalidate:bluetoothChannelIsLost];
                              v129 = self->_readerThread;
                              self->_readerThread = 0;

                              v130 = self->_safeReadBuffer;
                              if (v130)
                              {
                                CFRelease(v130);
                                self->_safeReadBuffer = 0;
                              }

                              [v33 removeObserver:self];
                              [(NSLock *)self->_readBufferLock lock];
                              readBuffer = self->_readBuffer;
                              if (readBuffer)
                              {
                                CFRelease(readBuffer);
                                self->_readBuffer = 0;
                              }

                              v132 = self->_readBufferLock;
                              self->_readBufferLock = 0;
                              v133 = v132;

                              [(NSLock *)v133 unlock];
                              device = self->_device;
                              self->_device = 0;

                              self->_comPort = -1;
                              v135 = self->_modelIdentifier;
                              self->_modelIdentifier = 0;

                              self->_isDeviceSleeping = 0;
                              v26 = 2;
                              goto LABEL_125;
                            }

LABEL_117:
                            v127 = +[AXSubsystemBrailleHardware sharedInstance];
                            v128 = [v127 ignoreLogging];

                            if ((v128 & 1) == 0)
                            {
                              v137 = +[AXSubsystemBrailleHardware identifier];
                              v138 = AXLoggerForFacility();

                              v139 = AXOSLogLevelFromAXLogLevel();
                              v30 = v155;
                              if (os_log_type_enabled(v138, v139))
                              {
                                v140 = AXColorizeFormatLog();
                                v141 = _AXStringForArgs();
                                if (os_log_type_enabled(v138, v139))
                                {
                                  *v164 = 138543362;
                                  v165 = v141;
                                  _os_log_impl(&dword_0, v138, v139, "%{public}@", v164, 0xCu);
                                }
                              }

                              v94 = 0;
                              v91 = 0;
                              goto LABEL_120;
                            }

LABEL_118:
                            v94 = 0;
                            v91 = 0;
                            goto LABEL_119;
                          }
                        }

                        else
                        {
                          v81 = v69++ > 5;
                          if (v81)
                          {
                            goto LABEL_117;
                          }
                        }
                      }

                      v123 = +[AXSubsystemBrailleHardware sharedInstance];
                      v124 = [v123 ignoreLogging];

                      if (v124)
                      {
                        goto LABEL_118;
                      }

                      v125 = +[AXSubsystemBrailleHardware identifier];
                      v117 = AXLoggerForFacility();

                      v126 = AXOSLogLevelFromAXLogLevel();
                      if (os_log_type_enabled(v117, v126))
                      {
                        v119 = AXColorizeFormatLog();
                        v120 = _AXStringForArgs();
                        if (os_log_type_enabled(v117, v126))
                        {
                          *v164 = 138543362;
                          v165 = v120;
                          v121 = v117;
                          v122 = v126;
LABEL_114:
                          _os_log_impl(&dword_0, v121, v122, "%{public}@", v164, 0xCu);
                        }

LABEL_115:
                      }

LABEL_116:

                      goto LABEL_118;
                    }

                    v107 = +[AXSubsystemBrailleHardware sharedInstance];
                    v108 = [v107 ignoreLogging];

                    v32 = v33;
                    if ((v108 & 1) == 0)
                    {
                      v109 = +[AXSubsystemBrailleHardware identifier];
                      v110 = AXLoggerForFacility();

                      v111 = AXOSLogLevelFromAXLogLevel();
                      if (os_log_type_enabled(v110, v111))
                      {
                        v112 = AXColorizeFormatLog();
                        bluetoothChannelIsLost = self->_comPort;
                        v113 = _AXStringForArgs();
                        if (os_log_type_enabled(v110, v111))
                        {
                          *v164 = 138543362;
                          v165 = v113;
                          _os_log_impl(&dword_0, v110, v111, "%{public}@", v164, 0xCu);
                        }

                        v32 = v33;
                      }
                    }

                    self->_comPort = -1;
                    v43 = v32;
                  }

                  [v43 removeObserver:{self, bluetoothChannelIsLost}];
                  v26 = 1;
                  v30 = v155;
                  goto LABEL_126;
                }

                [v32 removeObserver:self];
                v26 = 1;
                v12 = v153;
                v4 = v154;
                v29 = v152;
LABEL_49:
                v30 = v155;
                goto LABEL_127;
              }

LABEL_37:
              v44 = +[AXSubsystemBrailleHardware sharedInstance];
              v45 = [v44 ignoreLogging];

              if (v45)
              {
                v26 = 1;
                v12 = v153;
                v4 = v154;
                v29 = v152;
                v30 = v155;
                goto LABEL_129;
              }

              v48 = +[AXSubsystemBrailleHardware identifier];
              v31 = AXLoggerForFacility();

              v26 = 1;
              v49 = AXOSLogLevelFromAXLogLevel();
              v29 = v152;
              if (!os_log_type_enabled(v31, v49))
              {
                v12 = v153;
                v4 = v154;
                v30 = v155;
                goto LABEL_128;
              }

              v32 = AXColorizeFormatLog();
              v50 = _AXStringForArgs();
              if (os_log_type_enabled(v31, v49))
              {
                buf = 138543362;
                v167 = v50;
                _os_log_impl(&dword_0, v31, v49, "%{public}@", &buf, 0xCu);
              }

              v26 = 1;
              v12 = v153;
              v4 = v154;
              goto LABEL_49;
            }
          }

          v18 = [v16 countByEnumeratingWithState:&v159 objects:v168 count:16];
        }

        while (v18);
      }

      goto LABEL_37;
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
          buf = 138543362;
          v167 = v14;
          _os_log_impl(&dword_0, v29, v52, "%{public}@", &buf, 0xCu);
        }

        goto LABEL_129;
      }

      goto LABEL_131;
    }

    v26 = 1;
LABEL_132:
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
          v167 = v30;
          _os_log_impl(&dword_0, v12, v28, "%{public}@", &buf, 0xCu);
        }

        goto LABEL_130;
      }

      goto LABEL_132;
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
    routerKeyGroupStateBuffer = self->_routerKeyGroupStateBuffer;
    if (routerKeyGroupStateBuffer)
    {
      free(routerKeyGroupStateBuffer);
      self->_routerKeyGroupStateBuffer = 0;
    }

    self->_isDeviceSleeping = 0;
    *&self->_routerKeyStateBuffer = 0;
    self->_frontPanelKeysDown = 0;
  }

  return 1;
}

- (int)brailleInputMode
{
  deviceID = self->_deviceID;
  if (deviceID > 0x24)
  {
    return 0;
  }

  else
  {
    return dword_3C64[deviceID];
  }
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
      v25.location = 0;
      v25.length = v5;
      CFDataDeleteBytes(self->_readBuffer, v25);
    }
  }

  [(NSLock *)self->_readBufferLock unlock];
  v8 = self->_safeReadBuffer;
  if (v8)
  {
    if (CFDataGetLength(v8) < 3)
    {
      v9 = 0;
    }

    else
    {
      v9 = +[NSMutableArray array];
    }

    v11 = self->_safeReadBuffer;
    mainSize = self->_mainSize;
    PacketFromBuffer = SCRDBaumCreatePacketFromBuffer();
    if (PacketFromBuffer)
    {
      v14 = PacketFromBuffer;
      while (1)
      {
        v15 = *CFDataGetBytePtr(v14);
        if (v15 > 0x23)
        {
          if (v15 > 50)
          {
            if (v15 == 51)
            {
              deviceID = self->_deviceID;
              SCRDBaumAppendEventsFromBrailleAndFrontPanelPacket();
            }

            else if (v15 == 52)
            {
              SCRDBaumAppendEventsFromDirectionalPadPacket();
            }
          }

          else if (v15 == 36)
          {
            v18 = self->_deviceID;
            SCRDBaumAppendEventsFromTopPanelPacket();
          }

          else if (v15 == 39)
          {
            SCRDBaumAppendEventsFromRoutingKeyPacket();
          }

          goto LABEL_32;
        }

        if (v15 == 1)
        {
          break;
        }

        if (v15 != 23)
        {
          if (v15 == 34)
          {
            routerKeyGroupStateBuffer = self->_routerKeyGroupStateBuffer;
            routerKeyGroupStateBufferSize = self->_routerKeyGroupStateBufferSize;
            SCRDBaumAppendEventsFromRoutingKeyGroupPacket();
          }

          goto LABEL_32;
        }

        if (!self->_isDeviceSleeping)
        {
          self->_isDeviceSleeping = 1;
LABEL_31:
          SCRDPostSleepNotification();
        }

LABEL_32:
        CFRelease(v14);
        v20 = self->_safeReadBuffer;
        v21 = self->_mainSize;
        v14 = SCRDBaumCreatePacketFromBuffer();
        if (!v14)
        {
          goto LABEL_33;
        }
      }

      if (!SCRDBaumGetSizeFromDisplaySizePacket() || self->_mainSize || !self->_isDeviceSleeping)
      {
        goto LABEL_32;
      }

      self->_isDeviceSleeping = 0;
      goto LABEL_31;
    }

LABEL_33:
    if ([v9 count])
    {
      v22 = v9;
    }

    else
    {
      v22 = 0;
    }

    v10 = v22;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (BOOL)setMainCells:(const char *)a3 length:(int64_t)a4
{
  mainSize = self->_mainSize;
  DisplayRequest = SCRDBaumCreateDisplayRequest();
  if (DisplayRequest)
  {
    v7 = DisplayRequest;
    comPort = self->_comPort;
    v9 = comPort != -1 && write(comPort, v7, 0) == 0;
    free(v7);
  }

  else
  {
    v9 = 0;
  }

  [NSThread sleepForTimeInterval:0.005];
  return v9;
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