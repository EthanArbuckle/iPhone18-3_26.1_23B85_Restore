@interface MSCROFreedomScientificBrailleDriver
- (BOOL)setMainCells:(const char *)cells length:(int64_t)length;
- (BOOL)unloadDriver;
- (MSCROFreedomScientificBrailleDriver)init;
- (id)getInputEvents;
- (int)loadDriverWithIOElement:(id)element;
- (void)dealloc;
- (void)fileReader:(id)reader data:(const void *)data length:(unint64_t)length;
- (void)removeDeviceNotification:(id)notification;
@end

@implementation MSCROFreedomScientificBrailleDriver

- (MSCROFreedomScientificBrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCROFreedomScientificBrailleDriver;
  result = [(MSCROFreedomScientificBrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCROFreedomScientificBrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCROFreedomScientificBrailleDriver;
  [(MSCROFreedomScientificBrailleDriver *)&v3 dealloc];
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
        v163 = v11;
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
        [(MSCROFreedomScientificBrailleDriver *)self unloadDriver];
      }

      selfCopy = self;
      infoDictionary = [v12 infoDictionary];
      [infoDictionary objectForKey:kSCROBrailleDriverModels];
      v153 = v152 = elementCopy;
      bluetoothAddress = [elementCopy bluetoothAddress];
      v156 = 0u;
      v157 = 0u;
      v158 = 0u;
      v159 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      pairedDevices = [v15 pairedDevices];

      v17 = [pairedDevices countByEnumeratingWithState:&v156 objects:v164 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v157;
LABEL_14:
        v20 = 0;
        while (1)
        {
          if (*v157 != v19)
          {
            objc_enumerationMutation(pairedDevices);
          }

          v21 = *(*(&v156 + 1) + 8 * v20);
          address = [v21 address];
          v23 = [address isEqualToString:bluetoothAddress];

          if (v23)
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = [pairedDevices countByEnumeratingWithState:&v156 objects:v164 count:16];
            if (!v18)
            {
              goto LABEL_20;
            }

            goto LABEL_14;
          }
        }

        v31 = v21;

        if (v31)
        {
          v32 = AXLogBrailleHW();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v163 = v31;
            _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "Found paired device: %@", buf, 0xCu);
          }

          v33 = +[NSNotificationCenter defaultCenter];
          v34 = selfCopy;
          [v33 addObserver:selfCopy selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
          [v33 addObserver:selfCopy selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];
          if (([v31 connected]& 1) != 0)
          {
            [v31 device];
            ComPortForServiceWithSandboxExtension = BTDeviceGetComPortForServiceWithSandboxExtension();
            if (ComPortForServiceWithSandboxExtension)
            {
              v36 = ComPortForServiceWithSandboxExtension;
              v37 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging2 = [v37 ignoreLogging];

              if ((ignoreLogging2 & 1) == 0)
              {
                v147 = v33;
                v39 = +[AXSubsystemBrailleHardware identifier];
                v40 = AXLoggerForFacility();

                v41 = AXOSLogLevelFromAXLogLevel();
                if (os_log_type_enabled(v40, v41))
                {
                  v42 = AXColorizeFormatLog();
                  bluetoothChannelIsLost = v36;
                  v43 = _AXStringForArgs();
                  if (os_log_type_enabled(v40, v41))
                  {
                    *v160 = 138543362;
                    v161 = v43;
                    _os_log_impl(&dword_0, v40, v41, "%{public}@", v160, 0xCu);
                  }
                }

LABEL_52:

                v33 = v147;
              }
            }

            else
            {
              v149 = v33;
              if (sandbox_extension_consume() == -1)
              {
                v61 = +[AXSubsystemBrailleHardware sharedInstance];
                ignoreLogging3 = [v61 ignoreLogging];

                if ((ignoreLogging3 & 1) == 0)
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
                      *v160 = 138543362;
                      v161 = v67;
                      _os_log_impl(&dword_0, v64, v65, "%{public}@", v160, 0xCu);
                    }

                    v33 = v149;
                  }
                }
              }

              v68 = open(buf, 131074, bluetoothChannelIsLost);
              selfCopy->_comPort = v68;
              if ((v68 & 0x80000000) == 0)
              {
                objc_storeStrong(&selfCopy->_device, v21);
                v146 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:selfCopy->_comPort closeOnDealloc:1];
                v69 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:selfCopy fileHandle:v146];
                readerThread = selfCopy->_readerThread;
                selfCopy->_readerThread = v69;

                Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
                selfCopy->_safeReadBuffer = Mutable;
                if (!Mutable)
                {
                  goto LABEL_137;
                }

                v72 = [objc_allocWithZone(NSLock) init];
                readBufferLock = selfCopy->_readBufferLock;
                selfCopy->_readBufferLock = v72;

                if (!selfCopy->_readBufferLock)
                {
                  goto LABEL_137;
                }

                v74 = CFDataCreateMutable(kCFAllocatorDefault, 0);
                selfCopy->_readBuffer = v74;
                if (!v74)
                {
                  goto LABEL_137;
                }

                [(SCRDFileReader *)selfCopy->_readerThread start];
                v75 = 0;
                selfCopy->_deviceID = 0;
                while (1)
                {
                  __buf = 527;
                  if (write(selfCopy->_comPort, &__buf, 4uLL) <= 3)
                  {
                    v121 = +[AXSubsystemBrailleHardware sharedInstance];
                    ignoreLogging4 = [v121 ignoreLogging];

                    if (ignoreLogging4)
                    {
                      goto LABEL_137;
                    }

                    v123 = +[AXSubsystemBrailleHardware identifier];
                    v110 = AXLoggerForFacility();

                    v124 = AXOSLogLevelFromAXLogLevel();
                    if (os_log_type_enabled(v110, v124))
                    {
                      v112 = AXColorizeFormatLog();
                      v113 = _AXStringForArgs();
                      if (os_log_type_enabled(v110, v124))
                      {
                        *v160 = 138543362;
                        v161 = v113;
                        _os_log_impl(&dword_0, v110, v124, "%{public}@", v160, 0xCu);
                      }

                      v34 = selfCopy;
LABEL_124:
                    }

LABEL_136:

                    goto LABEL_137;
                  }

                  selfCopy->_bluetoothChannelIsLost = 0;
                  selfCopy->_hasBeenUnloaded = 0;
                  v76 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.3, 0);
                  v77 = v76;
                  if (selfCopy->_bluetoothChannelIsLost || selfCopy->_hasBeenUnloaded || v76 == kCFRunLoopRunStopped)
                  {
                    v107 = +[AXSubsystemBrailleHardware sharedInstance];
                    ignoreLogging5 = [v107 ignoreLogging];

                    if (ignoreLogging5)
                    {
                      goto LABEL_137;
                    }

                    v109 = +[AXSubsystemBrailleHardware identifier];
                    v110 = AXLoggerForFacility();

                    v111 = AXOSLogLevelFromAXLogLevel();
                    if (os_log_type_enabled(v110, v111))
                    {
                      v112 = AXColorizeFormatLog();
                      hasBeenUnloaded = selfCopy->_hasBeenUnloaded;
                      v145 = v77;
                      bluetoothChannelIsLost = selfCopy->_bluetoothChannelIsLost;
                      v113 = _AXStringForArgs();
                      if (os_log_type_enabled(v110, v111))
                      {
                        *v160 = 138543362;
                        v161 = v113;
                        _os_log_impl(&dword_0, v110, v111, "%{public}@", v160, 0xCu);
                      }

                      goto LABEL_124;
                    }

                    goto LABEL_136;
                  }

                  [(NSLock *)selfCopy->_readBufferLock lock];
                  Length = CFDataGetLength(selfCopy->_readBuffer);
                  if (Length >= 1)
                  {
                    v79 = Length;
                    safeReadBuffer = selfCopy->_safeReadBuffer;
                    BytePtr = CFDataGetBytePtr(selfCopy->_readBuffer);
                    CFDataAppendBytes(safeReadBuffer, BytePtr, v79);
                    v165.location = 0;
                    v165.length = v79;
                    CFDataDeleteBytes(selfCopy->_readBuffer, v165);
                  }

                  [(NSLock *)selfCopy->_readBufferLock unlock];
                  v82 = selfCopy->_safeReadBuffer;
                  if (SCRDFreedomScientificDoesBufferContainACKPacket())
                  {
                    v154 = 0;
                    if (write(selfCopy->_comPort, &v154, 4uLL) <= 3)
                    {
                      v133 = +[AXSubsystemBrailleHardware sharedInstance];
                      ignoreLogging6 = [v133 ignoreLogging];

                      if (ignoreLogging6)
                      {
                        goto LABEL_137;
                      }

                      v135 = +[AXSubsystemBrailleHardware identifier];
                      v110 = AXLoggerForFacility();

                      v136 = AXOSLogLevelFromAXLogLevel();
                      if (os_log_type_enabled(v110, v136))
                      {
                        v129 = AXColorizeFormatLog();
                        v130 = _AXStringForArgs();
                        if (os_log_type_enabled(v110, v136))
                        {
                          *v160 = 138543362;
                          v161 = v130;
                          v131 = v110;
                          v132 = v136;
LABEL_133:
                          _os_log_impl(&dword_0, v131, v132, "%{public}@", v160, 0xCu);
                        }

LABEL_134:
                      }

                      v34 = selfCopy;
                      goto LABEL_136;
                    }

                    selfCopy->_bluetoothChannelIsLost = 0;
                    selfCopy->_hasBeenUnloaded = 0;
                    v83 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.3, 0);
                    v84 = v83;
                    if (selfCopy->_bluetoothChannelIsLost || selfCopy->_hasBeenUnloaded || v83 == kCFRunLoopRunStopped)
                    {
                      v125 = +[AXSubsystemBrailleHardware sharedInstance];
                      ignoreLogging7 = [v125 ignoreLogging];

                      if (ignoreLogging7)
                      {
                        goto LABEL_137;
                      }

                      v127 = +[AXSubsystemBrailleHardware identifier];
                      v110 = AXLoggerForFacility();

                      v128 = AXOSLogLevelFromAXLogLevel();
                      if (!os_log_type_enabled(v110, v128))
                      {
                        goto LABEL_136;
                      }

                      v129 = AXColorizeFormatLog();
                      hasBeenUnloaded = selfCopy->_hasBeenUnloaded;
                      v145 = v84;
                      bluetoothChannelIsLost = selfCopy->_bluetoothChannelIsLost;
                      v130 = _AXStringForArgs();
                      if (os_log_type_enabled(v110, v128))
                      {
                        *v160 = 138543362;
                        v161 = v130;
                        v131 = v110;
                        v132 = v128;
                        goto LABEL_133;
                      }

                      goto LABEL_134;
                    }

                    [(NSLock *)selfCopy->_readBufferLock lock];
                    v85 = CFDataGetLength(selfCopy->_readBuffer);
                    if (v85 >= 1)
                    {
                      v86 = v85;
                      v87 = selfCopy->_safeReadBuffer;
                      v88 = CFDataGetBytePtr(selfCopy->_readBuffer);
                      CFDataAppendBytes(v87, v88, v86);
                      v166.location = 0;
                      v166.length = v86;
                      CFDataDeleteBytes(selfCopy->_readBuffer, v166);
                    }

                    [(NSLock *)selfCopy->_readBufferLock unlock];
                    v89 = selfCopy->_safeReadBuffer;
                    if (SCRDFreedomScientificDoesBufferContainACKPacket())
                    {
                      v90 = selfCopy->_safeReadBuffer;
                      PacketFromBuffer = SCRDFreedomScientificCreatePacketFromBuffer();
                      if (PacketFromBuffer)
                      {
                        v92 = PacketFromBuffer;
                        while (*CFDataGetBytePtr(v92) != 128)
                        {
                          CFRelease(v92);
                          v93 = selfCopy->_safeReadBuffer;
                          v92 = SCRDFreedomScientificCreatePacketFromBuffer();
                          if (!v92)
                          {
                            goto LABEL_92;
                          }
                        }

                        selfCopy->_deviceID = SCRDFreedomScientificDeviceIDForInfoEventPacket();
                        CFRelease(v92);
LABEL_103:
                        deviceID = selfCopy->_deviceID;
LABEL_104:
                        v102 = deviceID - 2;
                        v33 = v149;
                        if (v102 <= 7 && ((0xE1u >> v102) & 1) != 0)
                        {
                          modelIdentifier = selfCopy->_modelIdentifier;
                          selfCopy->_modelIdentifier = *(&off_8248 + v102);
                        }

                        v104 = [v153 objectForKey:selfCopy->_modelIdentifier];
                        if (v104)
                        {
                          v105 = v104;
                          v106 = [(NSLock *)v104 objectForKey:kSCROBrailleDriverMainDisplaySize];
                          selfCopy->_mainSize = [v106 unsignedCharValue];

                          v26 = 0;
                          selfCopy->_isDriverLoaded = 1;
                          v30 = v153;
                          goto LABEL_142;
                        }

                        v114 = +[AXSubsystemBrailleHardware sharedInstance];
                        ignoreLogging8 = [v114 ignoreLogging];

                        if ((ignoreLogging8 & 1) == 0)
                        {
                          v116 = +[AXSubsystemBrailleHardware identifier];
                          v117 = AXLoggerForFacility();

                          v118 = AXOSLogLevelFromAXLogLevel();
                          if (os_log_type_enabled(v117, v118))
                          {
                            v119 = AXColorizeFormatLog();
                            bluetoothChannelIsLost = selfCopy->_modelIdentifier;
                            v120 = _AXStringForArgs();
                            if (os_log_type_enabled(v117, v118))
                            {
                              *v160 = 138543362;
                              v161 = v120;
                              _os_log_impl(&dword_0, v117, v118, "%{public}@", v160, 0xCu);
                            }
                          }
                        }

LABEL_137:
                        [(SCRDFileReader *)v34->_readerThread invalidate:bluetoothChannelIsLost];
                        v137 = v34->_readerThread;
                        v34->_readerThread = 0;

                        v138 = v34->_safeReadBuffer;
                        if (v138)
                        {
                          CFRelease(v138);
                          v34->_safeReadBuffer = 0;
                        }

                        v33 = v149;
                        [v149 removeObserver:v34];
                        [(NSLock *)v34->_readBufferLock lock];
                        readBuffer = v34->_readBuffer;
                        v30 = v153;
                        if (readBuffer)
                        {
                          CFRelease(readBuffer);
                          v34->_readBuffer = 0;
                        }

                        v140 = v34->_readBufferLock;
                        v34->_readBufferLock = 0;
                        v105 = v140;

                        [(NSLock *)v105 unlock];
                        device = v34->_device;
                        v34->_device = 0;

                        v34->_deviceID = 0;
                        v34->_comPort = -1;
                        v142 = v34->_modelIdentifier;
                        v34->_modelIdentifier = 0;

                        v26 = 2;
LABEL_142:

                        v29 = infoDictionary;
                        elementCopy = v152;
LABEL_54:

                        goto LABEL_56;
                      }
                    }
                  }

LABEL_92:
                  if (++v75 == 5)
                  {
                    goto LABEL_103;
                  }

                  deviceID = selfCopy->_deviceID;
                  if (deviceID)
                  {
                    goto LABEL_104;
                  }
                }
              }

              v95 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging9 = [v95 ignoreLogging];

              if ((ignoreLogging9 & 1) == 0)
              {
                v97 = +[AXSubsystemBrailleHardware identifier];
                v98 = AXLoggerForFacility();

                v99 = AXOSLogLevelFromAXLogLevel();
                if (os_log_type_enabled(v98, v99))
                {
                  v100 = AXColorizeFormatLog();
                  bluetoothChannelIsLost = selfCopy->_comPort;
                  v101 = _AXStringForArgs();
                  if (os_log_type_enabled(v98, v99))
                  {
                    *v160 = 138543362;
                    v161 = v101;
                    _os_log_impl(&dword_0, v98, v99, "%{public}@", v160, 0xCu);
                  }
                }

                v33 = v149;
              }

              selfCopy->_comPort = -1;
            }
          }

          else
          {
            v54 = +[AXSubsystemBrailleHardware sharedInstance];
            ignoreLogging10 = [v54 ignoreLogging];

            if ((ignoreLogging10 & 1) == 0)
            {
              v147 = v33;
              v56 = +[AXSubsystemBrailleHardware identifier];
              v40 = AXLoggerForFacility();

              v57 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v40, v57))
              {
                v58 = AXColorizeFormatLog();
                v59 = _AXStringForArgs();
                if (os_log_type_enabled(v40, v57))
                {
                  *buf = 138543362;
                  v163 = v59;
                  _os_log_impl(&dword_0, v40, v57, "%{public}@", buf, 0xCu);
                }
              }

              goto LABEL_52;
            }
          }

          [v33 removeObserver:{selfCopy, bluetoothChannelIsLost}];
          v26 = 1;
          v29 = infoDictionary;
          elementCopy = v152;
          v30 = v153;
          goto LABEL_54;
        }
      }

      else
      {
LABEL_20:
      }

      v44 = +[AXSubsystemBrailleHardware sharedInstance];
      ignoreLogging11 = [v44 ignoreLogging];

      if (ignoreLogging11)
      {
        v26 = 1;
        v29 = infoDictionary;
        elementCopy = v152;
        v30 = v153;
      }

      else
      {
        v48 = +[AXSubsystemBrailleHardware identifier];
        v49 = AXLoggerForFacility();

        v26 = 1;
        v50 = AXOSLogLevelFromAXLogLevel();
        v29 = infoDictionary;
        if (os_log_type_enabled(v49, v50))
        {
          v148 = AXColorizeFormatLog();
          v51 = _AXStringForArgs();
          if (os_log_type_enabled(v49, v50))
          {
            *buf = 138543362;
            v163 = v51;
            _os_log_impl(&dword_0, v49, v50, "%{public}@", buf, 0xCu);
          }

          elementCopy = v152;
          v30 = v153;
          v31 = v49;
          v33 = v148;
          goto LABEL_54;
        }

        elementCopy = v152;
        v30 = v153;
        v31 = v49;
LABEL_56:
      }

LABEL_57:

LABEL_58:
      goto LABEL_59;
    }

    v46 = +[AXSubsystemBrailleHardware sharedInstance];
    ignoreLogging12 = [v46 ignoreLogging];

    if ((ignoreLogging12 & 1) == 0)
    {
      v52 = +[AXSubsystemBrailleHardware identifier];
      v29 = AXLoggerForFacility();

      v26 = 1;
      v53 = AXOSLogLevelFromAXLogLevel();
      if (!os_log_type_enabled(v29, v53))
      {
LABEL_59:

        goto LABEL_60;
      }

      v30 = AXColorizeFormatLog();
      bluetoothAddress = _AXStringForArgs();
      if (os_log_type_enabled(v29, v53))
      {
        *buf = 138543362;
        v163 = bluetoothAddress;
        _os_log_impl(&dword_0, v29, v53, "%{public}@", buf, 0xCu);
      }

      goto LABEL_57;
    }

    v26 = 1;
LABEL_60:

    goto LABEL_61;
  }

  v24 = +[AXSubsystemBrailleHardware sharedInstance];
  ignoreLogging13 = [v24 ignoreLogging];

  if ((ignoreLogging13 & 1) == 0)
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
        v163 = v30;
        _os_log_impl(&dword_0, v12, v28, "%{public}@", buf, 0xCu);
      }

      goto LABEL_58;
    }

    goto LABEL_60;
  }

  v26 = 1;
LABEL_61:

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
    *&self->_deviceID = 0;
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

  return _SCRDFreedomScientificExtractEventsFromBuffer(v8, &self->_brailleKeysDown, &self->_topPanelKeysDown, &self->_frontPanelKeysDown, &self->_rockerKeysDown);
}

- (BOOL)setMainCells:(const char *)cells length:(int64_t)length
{
  v5 = SCRDFreedomScientificCreateWriteRequestPacket();
  if (v5)
  {
    v6 = v5;
    if (self->_comPort == -1)
    {
      v10 = 0;
    }

    else
    {
      Length = CFDataGetLength(v5);
      comPort = self->_comPort;
      BytePtr = CFDataGetBytePtr(v6);
      v10 = write(comPort, BytePtr, Length) == Length;
    }

    CFRelease(v6);
  }

  else
  {
    v10 = 0;
  }

  [NSThread sleepForTimeInterval:0.005];
  return v10;
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