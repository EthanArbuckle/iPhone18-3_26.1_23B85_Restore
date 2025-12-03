@interface MSCROBaumBrailleDriver
- (BOOL)setMainCells:(const char *)cells length:(int64_t)length;
- (BOOL)unloadDriver;
- (MSCROBaumBrailleDriver)init;
- (id)getInputEvents;
- (int)brailleInputMode;
- (int)loadDriverWithIOElement:(id)element;
- (void)dealloc;
- (void)fileReader:(id)reader data:(const void *)data length:(unint64_t)length;
- (void)removeDeviceNotification:(id)notification;
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
        buf = 138543362;
        v167 = v11;
        _os_log_impl(&dword_0, v8, v9, "%{public}@", &buf, 0xCu);
      }
    }
  }

  if ([elementCopy transport] == 2 && (objc_msgSend(elementCopy, "conformsToProtocol:", &OBJC_PROTOCOL___SCROIOBluetoothElementProtocol) & 1) != 0)
  {
    v12 = [NSBundle bundleForClass:objc_opt_class()];
    bundleIdentifier = [v12 bundleIdentifier];

    if (bundleIdentifier)
    {
      if (self->_isDriverLoaded)
      {
        [(MSCROBaumBrailleDriver *)self unloadDriver];
      }

      v153 = v12;
      infoDictionary = [v12 infoDictionary];
      [infoDictionary objectForKey:kSCROBrailleDriverModels];
      v155 = v154 = elementCopy;
      bluetoothAddress = [elementCopy bluetoothAddress];
      v159 = 0u;
      v160 = 0u;
      v161 = 0u;
      v162 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      pairedDevices = [v15 pairedDevices];

      v17 = [pairedDevices countByEnumeratingWithState:&v159 objects:v168 count:16];
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
              objc_enumerationMutation(pairedDevices);
            }

            v21 = *(*(&v159 + 1) + 8 * i);
            address = [v21 address];
            v23 = [address isEqualToString:bluetoothAddress];

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
                    ignoreLogging2 = [v36 ignoreLogging];

                    if ((ignoreLogging2 & 1) == 0)
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
                      ignoreLogging3 = [v53 ignoreLogging];

                      if ((ignoreLogging3 & 1) == 0)
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
                          ignoreLogging4 = [v114 ignoreLogging];

                          if (ignoreLogging4)
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
                              ignoreLogging5 = [v95 ignoreLogging];

                              if (v94)
                              {
                                if ((ignoreLogging5 & 1) == 0)
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
                                  elementCopy = v154;
                                  v29 = infoDictionary;
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
                                if ((ignoreLogging5 & 1) == 0)
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
                            ignoreLogging6 = [v127 ignoreLogging];

                            if ((ignoreLogging6 & 1) == 0)
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
                      ignoreLogging7 = [v123 ignoreLogging];

                      if (ignoreLogging7)
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
                    ignoreLogging8 = [v107 ignoreLogging];

                    v32 = v33;
                    if ((ignoreLogging8 & 1) == 0)
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
                elementCopy = v154;
                v29 = infoDictionary;
LABEL_49:
                v30 = v155;
                goto LABEL_127;
              }

LABEL_37:
              v44 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging9 = [v44 ignoreLogging];

              if (ignoreLogging9)
              {
                v26 = 1;
                v12 = v153;
                elementCopy = v154;
                v29 = infoDictionary;
                v30 = v155;
                goto LABEL_129;
              }

              v48 = +[AXSubsystemBrailleHardware identifier];
              v31 = AXLoggerForFacility();

              v26 = 1;
              v49 = AXOSLogLevelFromAXLogLevel();
              v29 = infoDictionary;
              if (!os_log_type_enabled(v31, v49))
              {
                v12 = v153;
                elementCopy = v154;
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
              elementCopy = v154;
              goto LABEL_49;
            }
          }

          v18 = [pairedDevices countByEnumeratingWithState:&v159 objects:v168 count:16];
        }

        while (v18);
      }

      goto LABEL_37;
    }

    v46 = +[AXSubsystemBrailleHardware sharedInstance];
    ignoreLogging10 = [v46 ignoreLogging];

    if ((ignoreLogging10 & 1) == 0)
    {
      v51 = +[AXSubsystemBrailleHardware identifier];
      v29 = AXLoggerForFacility();

      v26 = 1;
      v52 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v29, v52))
      {
        v30 = AXColorizeFormatLog();
        bluetoothAddress = _AXStringForArgs();
        if (os_log_type_enabled(v29, v52))
        {
          buf = 138543362;
          v167 = bluetoothAddress;
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

- (BOOL)setMainCells:(const char *)cells length:(int64_t)length
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