@interface MSCROEasyLinkBrailleDriver
- (BOOL)setMainCells:(const char *)cells length:(int64_t)length;
- (BOOL)unloadDriver;
- (MSCROEasyLinkBrailleDriver)init;
- (id)getInputEvents;
- (int)loadDriverWithIOElement:(id)element;
- (void)dealloc;
- (void)fileReader:(id)reader data:(const void *)data length:(unint64_t)length;
- (void)removeDeviceNotification:(id)notification;
@end

@implementation MSCROEasyLinkBrailleDriver

- (MSCROEasyLinkBrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCROEasyLinkBrailleDriver;
  result = [(MSCROEasyLinkBrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCROEasyLinkBrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCROEasyLinkBrailleDriver;
  [(MSCROEasyLinkBrailleDriver *)&v3 dealloc];
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
        v162 = v11;
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
        [(MSCROEasyLinkBrailleDriver *)self unloadDriver];
      }

      selfCopy = self;
      infoDictionary = [v12 infoDictionary];
      [infoDictionary objectForKey:kSCROBrailleDriverModels];
      v150 = v149 = elementCopy;
      bluetoothAddress = [elementCopy bluetoothAddress];
      v155 = 0u;
      v156 = 0u;
      v157 = 0u;
      v158 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      pairedDevices = [v15 pairedDevices];

      v17 = [pairedDevices countByEnumeratingWithState:&v155 objects:v163 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v156;
LABEL_14:
        v20 = 0;
        while (1)
        {
          if (*v156 != v19)
          {
            objc_enumerationMutation(pairedDevices);
          }

          v21 = *(*(&v155 + 1) + 8 * v20);
          address = [v21 address];
          v23 = [address isEqualToString:bluetoothAddress];

          if (v23)
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = [pairedDevices countByEnumeratingWithState:&v155 objects:v163 count:16];
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
          goto LABEL_36;
        }

        v32 = +[NSNotificationCenter defaultCenter];
        v33 = selfCopy;
        [v32 addObserver:selfCopy selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
        [v32 addObserver:selfCopy selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];
        if (([v31 connected]& 1) == 0)
        {
          v52 = +[AXSubsystemBrailleHardware sharedInstance];
          ignoreLogging2 = [v52 ignoreLogging];

          v29 = infoDictionary;
          if ((ignoreLogging2 & 1) == 0)
          {
            v54 = +[AXSubsystemBrailleHardware identifier];
            v55 = AXLoggerForFacility();

            v56 = AXOSLogLevelFromAXLogLevel();
            if (os_log_type_enabled(v55, v56))
            {
              v57 = v32;
              v58 = AXColorizeFormatLog();
              v59 = _AXStringForArgs();
              if (os_log_type_enabled(v55, v56))
              {
                *buf = 138543362;
                v162 = v59;
                _os_log_impl(&dword_0, v55, v56, "%{public}@", buf, 0xCu);
              }

              v32 = v57;
            }
          }

          goto LABEL_84;
        }

        v147 = v32;
        [v31 device];
        ComPortForServiceWithSandboxExtension = BTDeviceGetComPortForServiceWithSandboxExtension();
        if (ComPortForServiceWithSandboxExtension)
        {
          v35 = ComPortForServiceWithSandboxExtension;
          v36 = +[AXSubsystemBrailleHardware sharedInstance];
          ignoreLogging3 = [v36 ignoreLogging];

          v29 = infoDictionary;
          if ((ignoreLogging3 & 1) == 0)
          {
            v38 = +[AXSubsystemBrailleHardware identifier];
            v39 = AXLoggerForFacility();

            v40 = AXOSLogLevelFromAXLogLevel();
            if (os_log_type_enabled(v39, v40))
            {
              v41 = AXColorizeFormatLog();
              comPort = v35;
              v42 = _AXStringForArgs();
              if (os_log_type_enabled(v39, v40))
              {
                *v159 = 138543362;
                v160 = v42;
                _os_log_impl(&dword_0, v39, v40, "%{public}@", v159, 0xCu);
              }
            }
          }

          v32 = v147;
LABEL_84:
          [v32 removeObserver:{selfCopy, comPort}];
          v26 = 1;
          goto LABEL_85;
        }

        v29 = infoDictionary;
        if (sandbox_extension_consume() == -1)
        {
          v60 = +[AXSubsystemBrailleHardware sharedInstance];
          ignoreLogging4 = [v60 ignoreLogging];

          if ((ignoreLogging4 & 1) == 0)
          {
            v62 = +[AXSubsystemBrailleHardware identifier];
            v63 = AXLoggerForFacility();

            v64 = AXOSLogLevelFromAXLogLevel();
            if (os_log_type_enabled(v63, v64))
            {
              v65 = AXColorizeFormatLog();
              comPort = *__error();
              v145 = v65;
              v66 = _AXStringForArgs();
              if (os_log_type_enabled(v63, v64))
              {
                *v159 = 138543362;
                v160 = v66;
                _os_log_impl(&dword_0, v63, v64, "%{public}@", v159, 0xCu);
              }
            }
          }
        }

        v67 = open(buf, 131074, comPort);
        selfCopy->_comPort = v67;
        if (v67 < 0)
        {
          v85 = +[AXSubsystemBrailleHardware sharedInstance];
          ignoreLogging5 = [v85 ignoreLogging];

          v32 = v147;
          if ((ignoreLogging5 & 1) == 0)
          {
            v87 = +[AXSubsystemBrailleHardware identifier];
            v88 = AXLoggerForFacility();

            v89 = AXOSLogLevelFromAXLogLevel();
            if (os_log_type_enabled(v88, v89))
            {
              v90 = AXColorizeFormatLog();
              comPort = selfCopy->_comPort;
              v91 = _AXStringForArgs();
              if (os_log_type_enabled(v88, v89))
              {
                *v159 = 138543362;
                v160 = v91;
                _os_log_impl(&dword_0, v88, v89, "%{public}@", v159, 0xCu);
              }

              v32 = v147;
            }
          }

          selfCopy->_comPort = -1;
          goto LABEL_84;
        }

        objc_storeStrong(&selfCopy->_device, v21);
        v146 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:selfCopy->_comPort closeOnDealloc:1];
        v68 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:selfCopy fileHandle:v146];
        readerThread = selfCopy->_readerThread;
        selfCopy->_readerThread = v68;

        Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
        selfCopy->_safeReadBuffer = Mutable;
        v71 = v147;
        if (!Mutable || (v72 = [objc_allocWithZone(NSLock) init], readBufferLock = selfCopy->_readBufferLock, selfCopy->_readBufferLock = v72, readBufferLock, !selfCopy->_readBufferLock) || (v74 = CFDataCreateMutable(kCFAllocatorDefault, 0), (selfCopy->_readBuffer = v74) == 0))
        {
          name2 = 0;
          v30 = v150;
          goto LABEL_71;
        }

        [(SCRDFileReader *)selfCopy->_readerThread start];
        name = [(BluetoothDevice *)selfCopy->_device name];
        if (([name isEqualToString:kSCRDEasyLinkBluetoothNameEasyLink] & 1) == 0 && (objc_msgSend(name, "isEqualToString:", kSCRDEasyLinkBluetoothNameBraillePen) & 1) == 0)
        {
          v99 = 0;
          v144 = name;
          while (1)
          {
            if (selfCopy->_modelIdentifier)
            {
              goto LABEL_124;
            }

            __buf = 19483;
            if (write(selfCopy->_comPort, &__buf, 2uLL) <= 1)
            {
              break;
            }

            selfCopy->_bluetoothChannelIsLost = 0;
            selfCopy->_hasBeenUnloaded = 0;
            v100 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0, 0);
            v101 = v100;
            if (selfCopy->_bluetoothChannelIsLost || selfCopy->_hasBeenUnloaded || v100 == kCFRunLoopRunStopped)
            {
              v128 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging6 = [v128 ignoreLogging];

              if (ignoreLogging6)
              {
                goto LABEL_149;
              }

              v130 = +[AXSubsystemBrailleHardware identifier];
              v131 = AXLoggerForFacility();

              v132 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v131, v132))
              {
                v133 = AXColorizeFormatLog();
                hasBeenUnloaded = selfCopy->_hasBeenUnloaded;
                v143 = v101;
                comPort = selfCopy->_bluetoothChannelIsLost;
                v134 = _AXStringForArgs();
                if (os_log_type_enabled(v131, v132))
                {
                  *v159 = 138543362;
                  v160 = v134;
                  v135 = v131;
                  v136 = v132;
                  goto LABEL_145;
                }

                goto LABEL_146;
              }

              goto LABEL_148;
            }

            [(NSLock *)selfCopy->_readBufferLock lock];
            Length = CFDataGetLength(selfCopy->_readBuffer);
            if (Length >= 1)
            {
              v103 = Length;
              safeReadBuffer = selfCopy->_safeReadBuffer;
              BytePtr = CFDataGetBytePtr(selfCopy->_readBuffer);
              CFDataAppendBytes(safeReadBuffer, BytePtr, v103);
              v164.location = 0;
              v164.length = v103;
              CFDataDeleteBytes(selfCopy->_readBuffer, v164);
            }

            [(NSLock *)selfCopy->_readBufferLock unlock];
            while (1)
            {
              v106 = selfCopy->_safeReadBuffer;
              PacketFromBuffer = SCRDEasyLinkCreatePacketFromBuffer();
              if (!PacketFromBuffer)
              {
                break;
              }

              v108 = PacketFromBuffer;
              v109 = CFDataGetBytePtr(PacketFromBuffer);
              v110 = *v109;
              v111 = v109[1];
              CFRelease(v108);
              if (v110 == 76 && v111 == 12)
              {
                v114 = @"com.apple.scrod.braille.driver.optelec.easylink.12";
                v29 = infoDictionary;
                goto LABEL_121;
              }

              v113 = v110 == 76 && v111 == 14;
              v29 = infoDictionary;
              if (v113)
              {
                v114 = @"com.apple.scrod.braille.driver.harpo.braillepen.14";
LABEL_121:
                modelIdentifier = selfCopy->_modelIdentifier;
                selfCopy->_modelIdentifier = &v114->isa;

                break;
              }
            }

            ++v99;
            name = v144;
            if (v99 == 5)
            {
              if (!selfCopy->_modelIdentifier)
              {
                goto LABEL_68;
              }

LABEL_124:
              v154 = 1;
              __buf = 17435;
              if (write(selfCopy->_comPort, &__buf, 3uLL) > 2)
              {
                goto LABEL_68;
              }

              v116 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging7 = [v116 ignoreLogging];

              if ((ignoreLogging7 & 1) == 0)
              {
                v118 = +[AXSubsystemBrailleHardware identifier];
                v119 = AXLoggerForFacility();

                v120 = AXOSLogLevelFromAXLogLevel();
                if (os_log_type_enabled(v119, v120))
                {
                  v121 = AXColorizeFormatLog();
                  v122 = _AXStringForArgs();
                  if (os_log_type_enabled(v119, v120))
                  {
                    *v159 = 138543362;
                    v160 = v122;
                    _os_log_impl(&dword_0, v119, v120, "%{public}@", v159, 0xCu);
                  }
                }

                v29 = infoDictionary;
                v33 = selfCopy;
              }

LABEL_149:
              v30 = v150;
              v71 = v147;
              name2 = v144;
LABEL_71:
              [(SCRDFileReader *)v33->_readerThread invalidate:comPort];
              v78 = v33->_readerThread;
              v33->_readerThread = 0;

              v79 = v33->_safeReadBuffer;
              if (v79)
              {
                CFRelease(v79);
                v33->_safeReadBuffer = 0;
              }

              [v71 removeObserver:v33];
              [(NSLock *)v33->_readBufferLock lock];
              readBuffer = v33->_readBuffer;
              if (readBuffer)
              {
                CFRelease(readBuffer);
                v33->_readBuffer = 0;
              }

              v81 = v33->_readBufferLock;
              v33->_readBufferLock = 0;
              v82 = v81;

              [(NSLock *)v82 unlock];
              device = v33->_device;
              v33->_device = 0;

              v33->_comPort = -1;
              v33->_isKeyboardOnly = 0;
              v84 = v33->_modelIdentifier;
              v33->_modelIdentifier = 0;

              v26 = 2;
              goto LABEL_76;
            }
          }

          v137 = +[AXSubsystemBrailleHardware sharedInstance];
          ignoreLogging8 = [v137 ignoreLogging];

          if (ignoreLogging8)
          {
            goto LABEL_149;
          }

          v139 = +[AXSubsystemBrailleHardware identifier];
          v131 = AXLoggerForFacility();

          v140 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v131, v140))
          {
            v133 = AXColorizeFormatLog();
            v134 = _AXStringForArgs();
            if (os_log_type_enabled(v131, v140))
            {
              *v159 = 138543362;
              v160 = v134;
              v135 = v131;
              v136 = v140;
LABEL_145:
              _os_log_impl(&dword_0, v135, v136, "%{public}@", v159, 0xCu);
            }

LABEL_146:
          }

          v29 = infoDictionary;
          v33 = selfCopy;
LABEL_148:

          goto LABEL_149;
        }

        v76 = selfCopy->_modelIdentifier;
        selfCopy->_modelIdentifier = @"com.apple.scrod.braille.driver.optelec.easylink";

        selfCopy->_isKeyboardOnly = 1;
LABEL_68:
        if (selfCopy->_modelIdentifier)
        {
          name2 = name;
        }

        else
        {
          name2 = [(BluetoothDevice *)selfCopy->_device name];

          if (([name2 isEqualToString:kSCRDEasyLinkBluetoothNameEasyLink] & 1) != 0 || objc_msgSend(name2, "isEqualToString:", kSCRDEasyLinkBluetoothNameBraillePen))
          {
            v93 = selfCopy->_modelIdentifier;
            selfCopy->_modelIdentifier = @"com.apple.scrod.braille.driver.optelec.easylink";

            selfCopy->_isKeyboardOnly = 1;
          }
        }

        v94 = [v150 objectForKey:selfCopy->_modelIdentifier];
        if (!v94)
        {
          v96 = name2;
          v97 = +[AXSubsystemBrailleHardware sharedInstance];
          ignoreLogging9 = [v97 ignoreLogging];

          if (ignoreLogging9)
          {
            name2 = v96;
            v30 = v150;
          }

          else
          {
            v123 = +[AXSubsystemBrailleHardware identifier];
            v124 = AXLoggerForFacility();

            v125 = AXOSLogLevelFromAXLogLevel();
            v30 = v150;
            if (os_log_type_enabled(v124, v125))
            {
              v126 = AXColorizeFormatLog();
              comPort = selfCopy->_modelIdentifier;
              v152 = v126;
              v127 = _AXStringForArgs();
              if (os_log_type_enabled(v124, v125))
              {
                *v159 = 138543362;
                v160 = v127;
                _os_log_impl(&dword_0, v124, v125, "%{public}@", v159, 0xCu);
              }
            }

            name2 = v96;
          }

          v71 = v147;
          goto LABEL_71;
        }

        v82 = v94;
        v95 = [(NSLock *)v94 objectForKey:kSCROBrailleDriverMainDisplaySize];
        selfCopy->_mainSize = [v95 unsignedCharValue];

        v26 = 0;
        selfCopy->_isDriverLoaded = 1;
        v30 = v150;
LABEL_76:

        v32 = v147;
      }

      else
      {
LABEL_20:

LABEL_36:
        v43 = +[AXSubsystemBrailleHardware sharedInstance];
        ignoreLogging10 = [v43 ignoreLogging];

        if (ignoreLogging10)
        {
          v26 = 1;
          elementCopy = v149;
          v30 = v150;
          v29 = infoDictionary;
LABEL_88:

LABEL_89:
          goto LABEL_90;
        }

        v47 = +[AXSubsystemBrailleHardware identifier];
        v31 = AXLoggerForFacility();

        v26 = 1;
        v48 = AXOSLogLevelFromAXLogLevel();
        v29 = infoDictionary;
        if (!os_log_type_enabled(v31, v48))
        {
          v30 = v150;
LABEL_87:

          elementCopy = v149;
          goto LABEL_88;
        }

        v32 = AXColorizeFormatLog();
        v49 = _AXStringForArgs();
        if (os_log_type_enabled(v31, v48))
        {
          *buf = 138543362;
          v162 = v49;
          _os_log_impl(&dword_0, v31, v48, "%{public}@", buf, 0xCu);
        }

LABEL_85:
        v30 = v150;
      }

      goto LABEL_87;
    }

    v45 = +[AXSubsystemBrailleHardware sharedInstance];
    ignoreLogging11 = [v45 ignoreLogging];

    if ((ignoreLogging11 & 1) == 0)
    {
      v50 = +[AXSubsystemBrailleHardware identifier];
      v29 = AXLoggerForFacility();

      v26 = 1;
      v51 = AXOSLogLevelFromAXLogLevel();
      if (!os_log_type_enabled(v29, v51))
      {
LABEL_90:

        goto LABEL_91;
      }

      v30 = AXColorizeFormatLog();
      bluetoothAddress = _AXStringForArgs();
      if (os_log_type_enabled(v29, v51))
      {
        *buf = 138543362;
        v162 = bluetoothAddress;
        _os_log_impl(&dword_0, v29, v51, "%{public}@", buf, 0xCu);
      }

      goto LABEL_88;
    }

    v26 = 1;
LABEL_91:

    goto LABEL_92;
  }

  v24 = +[AXSubsystemBrailleHardware sharedInstance];
  ignoreLogging12 = [v24 ignoreLogging];

  if ((ignoreLogging12 & 1) == 0)
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
        v162 = v30;
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

    *(&self->_mainSize + 7) = 0;
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
  if (self->_isKeyboardOnly)
  {
    SCRDEasyLinkExtractKeyboardEventsFromBuffer();
  }

  else
  {
    SCRDEasyLinkExtractEventsFromBuffer();
  }
  v9 = ;

  return v9;
}

- (BOOL)setMainCells:(const char *)cells length:(int64_t)length
{
  if (self->_isKeyboardOnly)
  {
    return 1;
  }

  if (length < 1)
  {
    v9 = 0;
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v10 = 1;
    do
    {
      if (cells[v8] == 27)
      {
        ++v9;
      }

      v8 = v10++;
    }

    while (v8 < length);
  }

  v11 = self->_mainSize + v9;
  v12 = malloc_type_malloc(v11 + 4, 0x100004077774924uLL);
  if (!v12)
  {
    return 0;
  }

  v13 = v12;
  mainSize = self->_mainSize;
  if (mainSize >= length)
  {
    if (mainSize > length)
    {
      bzero(&v12[length + 4], mainSize - length);
    }

    mainSize = length;
  }

  strcpy(v13, "\x1BB");
  v13[3] = v11;
  if (mainSize >= 1)
  {
    v15 = 0;
    v16 = v13 + 4;
    v17 = 1;
    do
    {
      v18 = cells[v15];
      *v16 = v18;
      if (v18 == 27)
      {
        v16[1] = 27;
        v16 += 2;
      }

      else
      {
        ++v16;
      }

      v15 = v17;
    }

    while (mainSize > v17++);
  }

  comPort = self->_comPort;
  v4 = comPort != -1 && write(comPort, v13, v11 + 4) == v11 + 4;
  free(v13);
  return v4;
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