@interface MSCROBrailliant2BrailleDriver
- (BOOL)setMainCells:(const char *)a3 length:(int64_t)a4;
- (BOOL)unloadDriver;
- (MSCROBrailliant2BrailleDriver)init;
- (id)getInputEvents;
- (int)brailleInputMode;
- (int)loadDriverWithIOElement:(id)a3;
- (void)dealloc;
- (void)fileReader:(id)a3 data:(const void *)a4 length:(unint64_t)a5;
- (void)removeDeviceNotification:(id)a3;
@end

@implementation MSCROBrailliant2BrailleDriver

- (MSCROBrailliant2BrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCROBrailliant2BrailleDriver;
  result = [(MSCROBrailliant2BrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCROBrailliant2BrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCROBrailliant2BrailleDriver;
  [(MSCROBrailliant2BrailleDriver *)&v3 dealloc];
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
        v149 = v11;
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
        [(MSCROBrailliant2BrailleDriver *)self unloadDriver];
      }

      v14 = [v12 infoDictionary];
      [v14 objectForKey:kSCROBrailleDriverModels];
      v141 = v140 = v4;
      v15 = [v4 bluetoothAddress];
      v143 = 0u;
      v144 = 0u;
      v145 = 0u;
      v146 = 0u;
      v16 = +[BluetoothManager sharedInstance];
      v17 = [v16 pairedDevices];

      v18 = [v17 countByEnumeratingWithState:&v143 objects:v147 count:16];
      v142 = v14;
      if (v18)
      {
        v19 = v18;
        v138 = v12;
        v20 = *v144;
        while (2)
        {
          for (i = 0; i != v19; i = i + 1)
          {
            if (*v144 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v22 = *(*(&v143 + 1) + 8 * i);
            v23 = [v22 address];
            v24 = [v23 isEqualToString:v15];

            if (v24)
            {
              v25 = v22;
              goto LABEL_27;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v143 objects:v147 count:16];
          if (v19)
          {
            continue;
          }

          break;
        }

        v25 = 0;
LABEL_27:
        v12 = v138;
        v14 = v142;
      }

      else
      {
        v25 = 0;
      }

      v34 = +[AXSubsystemBrailleHardware sharedInstance];
      v35 = [v34 ignoreLogging];

      if ((v35 & 1) == 0)
      {
        v36 = v25;
        v37 = +[AXSubsystemBrailleHardware identifier];
        v38 = AXLoggerForFacility();

        v39 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v38, v39))
        {
          v40 = AXColorizeFormatLog();
          bluetoothChannelIsLost = v36;
          v41 = _AXStringForArgs();
          if (os_log_type_enabled(v38, v39))
          {
            *buf = 138543362;
            v149 = v41;
            _os_log_impl(&dword_0, v38, v39, "%{public}@", buf, 0xCu);
          }
        }

        v25 = v36;
        v14 = v142;
      }

      if (!v25)
      {
        v52 = +[AXSubsystemBrailleHardware sharedInstance];
        v53 = [v52 ignoreLogging];

        if (v53)
        {
          LODWORD(v28) = 1;
          v4 = v140;
          v31 = v141;
LABEL_65:

LABEL_66:
LABEL_67:

          goto LABEL_68;
        }

        v64 = +[AXSubsystemBrailleHardware identifier];
        v65 = AXLoggerForFacility();

        v51 = v65;
        LODWORD(v28) = 1;
        v66 = AXOSLogLevelFromAXLogLevel();
        if (os_log_type_enabled(v65, v66))
        {
          v67 = AXColorizeFormatLog();
          v68 = _AXStringForArgs();
          if (os_log_type_enabled(v65, v66))
          {
            *buf = 138543362;
            v149 = v68;
            _os_log_impl(&dword_0, v65, v66, "%{public}@", buf, 0xCu);
          }
        }

        goto LABEL_63;
      }

      v42 = +[NSNotificationCenter defaultCenter];
      [v42 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
      v139 = v42;
      [v42 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];
      if (([v25 connected] & 1) == 0)
      {
        v54 = +[AXSubsystemBrailleHardware sharedInstance];
        v55 = [v54 ignoreLogging];

        if ((v55 & 1) == 0)
        {
          v56 = v25;
          v57 = +[AXSubsystemBrailleHardware identifier];
          v58 = AXLoggerForFacility();

          v59 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v58, v59))
          {
            v60 = AXColorizeFormatLog();
            v61 = _AXStringForArgs();
            if (os_log_type_enabled(v58, v59))
            {
              *buf = 138543362;
              v149 = v61;
              _os_log_impl(&dword_0, v58, v59, "%{public}@", buf, 0xCu);
            }
          }

          v25 = v56;
          v14 = v142;
        }

        v51 = v139;
        [v139 removeObserver:self, bluetoothChannelIsLost];
        LODWORD(v28) = 1;
        goto LABEL_63;
      }

      v43 = MSCROBTOpenComPort(v25, &self->_comPort);
      if (v43)
      {
        v28 = v43;
        v44 = +[AXSubsystemBrailleHardware sharedInstance];
        v45 = [v44 ignoreLogging];

        if ((v45 & 1) == 0)
        {
          v136 = v25;
          v46 = +[AXSubsystemBrailleHardware identifier];
          v47 = AXLoggerForFacility();

          v48 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = AXColorizeFormatLog();
            bluetoothChannelIsLost = [NSNumber numberWithUnsignedInt:v28];
            v50 = _AXStringForArgs();

            if (os_log_type_enabled(v47, v48))
            {
              *buf = 138543362;
              v149 = v50;
              _os_log_impl(&dword_0, v47, v48, "%{public}@", buf, 0xCu);
            }
          }

          v25 = v136;
        }

        v51 = v139;
        [v139 removeObserver:self, bluetoothChannelIsLost];
LABEL_63:
        v4 = v140;
        v31 = v141;
LABEL_64:

        goto LABEL_65;
      }

      objc_storeStrong(&self->_device, v25);
      v135 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:self->_comPort closeOnDealloc:1];
      v70 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:self fileHandle:v135];
      readerThread = self->_readerThread;
      self->_readerThread = v70;

      Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
      self->_safeReadBuffer = Mutable;
      v137 = v25;
      if (Mutable)
      {
        v73 = [objc_allocWithZone(NSLock) init];
        readBufferLock = self->_readBufferLock;
        self->_readBufferLock = v73;

        v51 = v42;
        if (self->_readBufferLock && (v75 = CFDataCreateMutable(kCFAllocatorDefault, 0), (self->_readBuffer = v75) != 0))
        {
          [(SCRDFileReader *)self->_readerThread start];
          InitializationRequestPacket = SCRDHumanwareCreateInitializationRequestPacket();
          v77 = InitializationRequestPacket;
          if (InitializationRequestPacket)
          {
            v78 = 0;
            v132 = InitializationRequestPacket;
            while (!self->_deviceID)
            {
              Length = CFDataGetLength(v77);
              comPort = self->_comPort;
              BytePtr = CFDataGetBytePtr(v77);
              if (write(comPort, BytePtr, Length) < Length)
              {
                v107 = +[AXSubsystemBrailleHardware sharedInstance];
                v108 = [v107 ignoreLogging];

                if (v108)
                {
                  goto LABEL_105;
                }

                v109 = +[AXSubsystemBrailleHardware identifier];
                v103 = AXLoggerForFacility();

                v104 = AXOSLogLevelFromAXLogLevel();
                if (!os_log_type_enabled(v103, v104))
                {
                  goto LABEL_116;
                }

                mode = AXColorizeFormatLog();
                v106 = _AXStringForArgs();
                if (!os_log_type_enabled(v103, v104))
                {
                  goto LABEL_125;
                }

                *buf = 138543362;
                v149 = v106;
LABEL_102:
                v110 = v103;
                _os_log_impl(&dword_0, v103, v104, "%{public}@", buf, 0xCu);
LABEL_126:
                v4 = v140;
                v31 = v141;
                v51 = v139;
                v77 = v132;
LABEL_127:

                goto LABEL_128;
              }

              self->_bluetoothChannelIsLost = 0;
              self->_hasBeenUnloaded = 0;
              v82 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0, 0);
              v83 = v82;
              if (self->_bluetoothChannelIsLost || self->_hasBeenUnloaded || v82 == kCFRunLoopRunStopped)
              {
                v100 = +[AXSubsystemBrailleHardware sharedInstance];
                v101 = [v100 ignoreLogging];

                if (v101)
                {
                  goto LABEL_105;
                }

                v102 = +[AXSubsystemBrailleHardware identifier];
                v103 = AXLoggerForFacility();

                v104 = AXOSLogLevelFromAXLogLevel();
                if (os_log_type_enabled(v103, v104))
                {
                  v105 = AXColorizeFormatLog();
                  hasBeenUnloaded = self->_hasBeenUnloaded;
                  v131 = v83;
                  bluetoothChannelIsLost = self->_bluetoothChannelIsLost;
                  mode = v105;
                  v106 = _AXStringForArgs();
                  if (os_log_type_enabled(v103, v104))
                  {
                    *buf = 138543362;
                    v149 = v106;
                    goto LABEL_102;
                  }

LABEL_125:
                  v110 = v103;
                  goto LABEL_126;
                }

LABEL_116:
                v110 = v103;
                v4 = v140;
                v31 = v141;
                v51 = v139;
                v77 = v132;
LABEL_128:

                goto LABEL_106;
              }

              [(NSLock *)self->_readBufferLock lock];
              v84 = CFDataGetLength(self->_readBuffer);
              if (v84 >= 1)
              {
                v85 = v84;
                safeReadBuffer = self->_safeReadBuffer;
                v87 = CFDataGetBytePtr(self->_readBuffer);
                CFDataAppendBytes(safeReadBuffer, v87, v85);
                v150.location = 0;
                v150.length = v85;
                CFDataDeleteBytes(self->_readBuffer, v150);
              }

              [(NSLock *)self->_readBufferLock unlock];
              v88 = self->_safeReadBuffer;
              InitializationPacketFromBuffer = SCRDHumanwareCreateInitializationPacketFromBuffer();
              v25 = v137;
              if (InitializationPacketFromBuffer)
              {
                v90 = InitializationPacketFromBuffer;
                do
                {
                  v91 = SCRDHumanwareDeviceIDForInitializationPacket();
                  if (SCRDHumanwareIsDeviceIDValid())
                  {
                    self->_mainSize = SCRDHumanwareDisplaySizeForDeviceID();
                    self->_deviceID = v91;
                  }

                  CFRelease(v90);
                  v92 = self->_safeReadBuffer;
                  v90 = SCRDHumanwareCreateInitializationPacketFromBuffer();
                }

                while (v90);
              }

              ++v78;
              v77 = v132;
              if (v78 == 7)
              {
                break;
              }
            }

            CFRelease(v77);
            v93 = _modelIdentifierForDeviceIdentifier(self->_deviceID);
            modelIdentifier = self->_modelIdentifier;
            self->_modelIdentifier = v93;

            v95 = [v141 objectForKey:self->_modelIdentifier];
            if (!v95)
            {
              v111 = +[AXSubsystemBrailleHardware sharedInstance];
              v112 = [v111 ignoreLogging];

              if (v112)
              {
                goto LABEL_104;
              }

              v124 = +[AXSubsystemBrailleHardware identifier];
              v125 = AXLoggerForFacility();

              v126 = AXOSLogLevelFromAXLogLevel();
              if (!os_log_type_enabled(v125, v126))
              {
                v110 = v125;
                v77 = 0;
                v4 = v140;
                v31 = v141;
                v51 = v139;
                goto LABEL_128;
              }

              v127 = AXColorizeFormatLog();
              bluetoothChannelIsLost = self->_modelIdentifier;
              mode = v127;
              v106 = _AXStringForArgs();
              v110 = v125;
              if (os_log_type_enabled(v125, v126))
              {
                *buf = 138543362;
                v149 = v106;
                _os_log_impl(&dword_0, v125, v126, "%{public}@", buf, 0xCu);
              }

              v77 = 0;
              v4 = v140;
              v31 = v141;
              v51 = v139;
              goto LABEL_127;
            }

            v96 = v95;
            self->_isDriverLoaded = 1;
            v97 = +[AXSubsystemBrailleHardware sharedInstance];
            v98 = [v97 ignoreLogging];

            if (v98)
            {
              LODWORD(v28) = 0;
              v4 = v140;
              v31 = v141;
              v51 = v139;
              v99 = v135;
              goto LABEL_115;
            }

            v120 = +[AXSubsystemBrailleHardware identifier];
            v117 = AXLoggerForFacility();

            v121 = AXOSLogLevelFromAXLogLevel();
            if (!os_log_type_enabled(v117, v121))
            {
              LODWORD(v28) = 0;
              v4 = v140;
              v31 = v141;
              v51 = v139;
LABEL_114:
              v99 = v135;

              v25 = v137;
LABEL_115:

              goto LABEL_64;
            }

            v122 = AXColorizeFormatLog();
            v129 = self->_modelIdentifier;
            modea = v122;
            v123 = _AXStringForArgs();
            v51 = v139;
            if (os_log_type_enabled(v117, v121))
            {
              *buf = 138543362;
              v149 = v123;
              _os_log_impl(&dword_0, v117, v121, "%{public}@", buf, 0xCu);
            }

            LODWORD(v28) = 0;
            v4 = v140;
            v31 = v141;
            p_isa = &modea->isa;
LABEL_113:

            goto LABEL_114;
          }
        }

        else
        {
          v77 = 0;
        }

        v4 = v140;
        v31 = v141;
      }

      else
      {
LABEL_104:
        v77 = 0;
LABEL_105:
        v4 = v140;
        v31 = v141;
        v51 = v139;
      }

LABEL_106:
      [(SCRDFileReader *)self->_readerThread invalidate:bluetoothChannelIsLost];
      v113 = self->_readerThread;
      self->_readerThread = 0;

      v114 = self->_safeReadBuffer;
      if (v114)
      {
        CFRelease(v114);
        self->_safeReadBuffer = 0;
      }

      if (v77)
      {
        CFRelease(v77);
      }

      [v51 removeObserver:self];
      [(NSLock *)self->_readBufferLock lock];
      readBuffer = self->_readBuffer;
      if (readBuffer)
      {
        CFRelease(readBuffer);
        self->_readBuffer = 0;
      }

      v116 = self->_readBufferLock;
      self->_readBufferLock = 0;
      v117 = v116;

      [v117 unlock];
      device = self->_device;
      self->_device = 0;

      v96 = 0;
      self->_comPort = -1;
      self->_deviceID = 0;
      p_isa = self->_modelIdentifier;
      self->_modelIdentifier = 0;
      LODWORD(v28) = 2;
      goto LABEL_113;
    }

    v32 = +[AXSubsystemBrailleHardware sharedInstance];
    v33 = [v32 ignoreLogging];

    if ((v33 & 1) == 0)
    {
      v62 = +[AXSubsystemBrailleHardware identifier];
      v14 = AXLoggerForFacility();

      LODWORD(v28) = 1;
      v63 = AXOSLogLevelFromAXLogLevel();
      if (!os_log_type_enabled(v14, v63))
      {
LABEL_68:

        goto LABEL_69;
      }

      v31 = AXColorizeFormatLog();
      v25 = _AXStringForArgs();
      if (os_log_type_enabled(v14, v63))
      {
        *buf = 138543362;
        v149 = v25;
        _os_log_impl(&dword_0, v14, v63, "%{public}@", buf, 0xCu);
      }

      goto LABEL_66;
    }

    LODWORD(v28) = 1;
LABEL_69:

    goto LABEL_70;
  }

  v26 = +[AXSubsystemBrailleHardware sharedInstance];
  v27 = [v26 ignoreLogging];

  if ((v27 & 1) == 0)
  {
    v29 = +[AXSubsystemBrailleHardware identifier];
    v12 = AXLoggerForFacility();

    LODWORD(v28) = 1;
    v30 = AXOSLogLevelFromAXLogLevel();
    if (os_log_type_enabled(v12, v30))
    {
      v14 = AXColorizeFormatLog();
      [v4 transport];
      [v4 conformsToProtocol:&OBJC_PROTOCOL___SCROIOBluetoothElementProtocol];
      v31 = _AXStringForArgs();
      if (os_log_type_enabled(v12, v30))
      {
        *buf = 138543362;
        v149 = v31;
        _os_log_impl(&dword_0, v12, v30, "%{public}@", buf, 0xCu);
      }

      goto LABEL_67;
    }

    goto LABEL_69;
  }

  LODWORD(v28) = 1;
LABEL_70:

  return v28;
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

- (int)brailleInputMode
{
  deviceID = self->_deviceID;
  if (deviceID - 1) < 8 && ((0xA3u >> (deviceID - 1)))
  {
    return 2;
  }

  else
  {
    return 2 * (deviceID == 7);
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
      v12.location = 0;
      v12.length = v5;
      CFDataDeleteBytes(self->_readBuffer, v12);
    }
  }

  [(NSLock *)self->_readBufferLock unlock];
  v8 = self->_safeReadBuffer;
  deviceID = self->_deviceID;

  return _SCRDHumanwareExtractEventsFromBuffer(v8, deviceID, 0);
}

- (BOOL)setMainCells:(const char *)a3 length:(int64_t)a4
{
  deviceID = self->_deviceID;
  v6 = SCRDHumanwareCreateWriteRequestPacket();
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
  v4 = a3;
  v5 = AXLogBrailleHW();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "Brailliant2 remove device: %@", &v9, 0xCu);
  }

  v6 = [v4 object];
  v7 = v6;
  if (v6)
  {
    if (v6 == self->_device)
    {
      self->_bluetoothChannelIsLost = 1;
      if (self->_isDriverLoaded)
      {
        v8 = +[NSNotificationCenter defaultCenter];
        [v8 postNotificationName:@"SCROBrailleDriverProtocolUnloadNotification" object:self userInfo:0];
      }
    }
  }
}

@end