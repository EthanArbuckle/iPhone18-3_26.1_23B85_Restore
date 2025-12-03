@interface MSCROHandyTechBrailleDriver
- (BOOL)setMainCells:(const char *)cells length:(int64_t)length;
- (BOOL)unloadDriver;
- (MSCROHandyTechBrailleDriver)init;
- (id)getInputEvents;
- (int)loadDriverWithIOElement:(id)element;
- (void)dealloc;
- (void)fileReader:(id)reader data:(const void *)data length:(unint64_t)length;
- (void)removeDeviceNotification:(id)notification;
@end

@implementation MSCROHandyTechBrailleDriver

- (MSCROHandyTechBrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCROHandyTechBrailleDriver;
  result = [(MSCROHandyTechBrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_nextResetRequestTime = -3061152000.0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCROHandyTechBrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCROHandyTechBrailleDriver;
  [(MSCROHandyTechBrailleDriver *)&v3 dealloc];
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
        v136 = v11;
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
        [(MSCROHandyTechBrailleDriver *)self unloadDriver];
      }

      v126 = v12;
      infoDictionary = [v12 infoDictionary];
      [infoDictionary objectForKey:kSCROBrailleDriverModels];
      v128 = v127 = elementCopy;
      bluetoothAddress = [elementCopy bluetoothAddress];
      v130 = 0u;
      v131 = 0u;
      v132 = 0u;
      v133 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      pairedDevices = [v15 pairedDevices];

      v17 = [pairedDevices countByEnumeratingWithState:&v130 objects:v134 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v131;
        do
        {
          for (i = 0; i != v18; i = i + 1)
          {
            if (*v131 != v19)
            {
              objc_enumerationMutation(pairedDevices);
            }

            v21 = *(*(&v130 + 1) + 8 * i);
            address = [v21 address];
            v23 = [address isEqualToString:bluetoothAddress];

            if (v23)
            {
              v31 = v21;

              if (v31)
              {
                v32 = +[NSNotificationCenter defaultCenter];
                [v32 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
                v124 = v32;
                [v32 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];
                if (([v31 connected]& 1) != 0)
                {
                  v33 = MSCROBTOpenComPort(v31, &self->_comPort);
                  if (!v33)
                  {
                    objc_storeStrong(&self->_device, v21);
                    v52 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:self->_comPort closeOnDealloc:1];
                    v53 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:self fileHandle:v52];
                    readerThread = self->_readerThread;
                    self->_readerThread = v53;

                    Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
                    self->_safeReadBuffer = Mutable;
                    if (!Mutable)
                    {
                      goto LABEL_114;
                    }

                    v56 = [objc_allocWithZone(NSLock) init];
                    readBufferLock = self->_readBufferLock;
                    self->_readBufferLock = v56;

                    if (!self->_readBufferLock)
                    {
                      goto LABEL_114;
                    }

                    v58 = CFDataCreateMutable(kCFAllocatorDefault, 0);
                    self->_readBuffer = v58;
                    if (!v58)
                    {
                      goto LABEL_114;
                    }

                    [(SCRDFileReader *)self->_readerThread start];
                    v59 = 0;
                    while (1)
                    {
                      __buf = -1;
                      if (!write(self->_comPort, &__buf, 1uLL))
                      {
                        break;
                      }

                      self->_bluetoothChannelIsLost = 0;
                      self->_hasBeenUnloaded = 0;
                      v60 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.1, 0);
                      v61 = v60;
                      if (self->_bluetoothChannelIsLost || self->_hasBeenUnloaded || v60 == kCFRunLoopRunStopped)
                      {
                        v98 = +[AXSubsystemBrailleHardware sharedInstance];
                        ignoreLogging2 = [v98 ignoreLogging];

                        if (ignoreLogging2)
                        {
                          goto LABEL_114;
                        }

                        v100 = +[AXSubsystemBrailleHardware identifier];
                        v101 = AXLoggerForFacility();

                        v102 = AXOSLogLevelFromAXLogLevel();
                        if (os_log_type_enabled(v101, v102))
                        {
                          v103 = AXColorizeFormatLog();
                          hasBeenUnloaded = self->_hasBeenUnloaded;
                          v123 = v61;
                          bluetoothChannelIsLost = self->_bluetoothChannelIsLost;
                          v104 = _AXStringForArgs();
                          if (os_log_type_enabled(v101, v102))
                          {
                            buf = 138543362;
                            v136 = v104;
                            goto LABEL_111;
                          }

                          goto LABEL_112;
                        }

                        goto LABEL_113;
                      }

                      [(NSLock *)self->_readBufferLock lock];
                      Length = CFDataGetLength(self->_readBuffer);
                      if (Length >= 1)
                      {
                        v63 = Length;
                        safeReadBuffer = self->_safeReadBuffer;
                        BytePtr = CFDataGetBytePtr(self->_readBuffer);
                        CFDataAppendBytes(safeReadBuffer, BytePtr, v63);
                        v137.location = 0;
                        v137.length = v63;
                        CFDataDeleteBytes(self->_readBuffer, v137);
                      }

                      [(NSLock *)self->_readBufferLock unlock];
                      v66 = self->_safeReadBuffer;
                      SCRDAdvanceBufferToPacketStart();
                      while (CFDataGetLength(self->_safeReadBuffer) > 1)
                      {
                        v67 = CFDataGetBytePtr(self->_safeReadBuffer);
                        if (*v67 == 254)
                        {
                          v68 = v67[1];
                          v69 = (v68 - 129) > 0x27 || ((1 << (v68 + 127)) & 0xA80000026FLL) == 0;
                          if (!v69 || ((v68 - 68) <= 0x30 ? (v70 = ((1 << (v68 - 68)) & 0x1400120010001) == 0) : (v70 = 1), v70 ? (v71 = v68 == 5) : (v71 = 1), v71))
                          {
                            v72 = v67[1];
                            goto LABEL_88;
                          }
                        }

                        else
                        {
                          v138.location = 0;
                          v138.length = 1;
                          CFDataDeleteBytes(self->_safeReadBuffer, v138);
                        }
                      }

                      v72 = 0;
LABEL_88:
                      if (v59 <= 3)
                      {
                        ++v59;
                        if (!v72)
                        {
                          continue;
                        }
                      }

                      v73 = sub_1D90(v72);
                      modelIdentifier = self->_modelIdentifier;
                      self->_modelIdentifier = v73;

                      v75 = [v128 objectForKey:self->_modelIdentifier];
                      if (v75)
                      {
                        v76 = v75;
                        self->_identifierByte = v72;
                        v77 = [(NSLock *)v75 objectForKey:kSCROBrailleDriverMainDisplaySize];
                        self->_mainSize = [v77 unsignedCharValue];

                        identifierByte = self->_identifierByte;
                        if (SCRDHandyTechDisplayUsesExtendedProtocol())
                        {
                          v79 = self->_identifierByte;
                          ExtendedProtocolRequestPacket = SCRDHandyTechCreateExtendedProtocolRequestPacket();
                          if (ExtendedProtocolRequestPacket)
                          {
                            v81 = ExtendedProtocolRequestPacket;
                            v82 = +[AXSubsystemBrailleHardware sharedInstance];
                            ignoreLogging3 = [v82 ignoreLogging];

                            if ((ignoreLogging3 & 1) == 0)
                            {
                              v84 = +[AXSubsystemBrailleHardware identifier];
                              v85 = AXLoggerForFacility();

                              v86 = AXOSLogLevelFromAXLogLevel();
                              if (os_log_type_enabled(v85, v86))
                              {
                                v87 = AXColorizeFormatLog();
                                v88 = _AXStringForArgs();
                                if (os_log_type_enabled(v85, v86))
                                {
                                  buf = 138543362;
                                  v136 = v88;
                                  _os_log_impl(&dword_0, v85, v86, "%{public}@", &buf, 0xCu);
                                }
                              }
                            }

                            comPort = self->_comPort;
                            v90 = CFDataGetBytePtr(v81);
                            v91 = CFDataGetLength(v81);
                            write(comPort, v90, v91);
                            CFRelease(v81);
                          }

                          LOBYTE(buf) = 0;
                          v92 = self->_identifierByte;
                          v93 = SCRDHandyTechCreateExtendedProtocolRequestPacket();
                          if (v93)
                          {
                            v94 = v93;
                            v95 = self->_comPort;
                            v96 = CFDataGetBytePtr(v93);
                            v97 = CFDataGetLength(v94);
                            write(v95, v96, v97);
                            CFRelease(v94);
                          }
                        }

                        v26 = 0;
                        self->_isDriverLoaded = 1;
                        v30 = v128;
                        goto LABEL_119;
                      }

                      v114 = +[AXSubsystemBrailleHardware sharedInstance];
                      ignoreLogging4 = [v114 ignoreLogging];

                      if ((ignoreLogging4 & 1) == 0)
                      {
                        v116 = +[AXSubsystemBrailleHardware identifier];
                        v117 = AXLoggerForFacility();

                        v118 = AXOSLogLevelFromAXLogLevel();
                        if (os_log_type_enabled(v117, v118))
                        {
                          v119 = AXColorizeFormatLog();
                          bluetoothChannelIsLost = self->_modelIdentifier;
                          v120 = _AXStringForArgs();
                          if (os_log_type_enabled(v117, v118))
                          {
                            buf = 138543362;
                            v136 = v120;
                            _os_log_impl(&dword_0, v117, v118, "%{public}@", &buf, 0xCu);
                          }
                        }
                      }

LABEL_114:
                      [(SCRDFileReader *)self->_readerThread invalidate:bluetoothChannelIsLost];
                      v108 = self->_readerThread;
                      self->_readerThread = 0;

                      v109 = self->_safeReadBuffer;
                      if (v109)
                      {
                        CFRelease(v109);
                        self->_safeReadBuffer = 0;
                      }

                      [v124 removeObserver:self];
                      [(NSLock *)self->_readBufferLock lock];
                      readBuffer = self->_readBuffer;
                      v30 = v128;
                      if (readBuffer)
                      {
                        CFRelease(readBuffer);
                        self->_readBuffer = 0;
                      }

                      v111 = self->_readBufferLock;
                      self->_readBufferLock = 0;
                      v76 = v111;

                      [(NSLock *)v76 unlock];
                      device = self->_device;
                      self->_device = 0;

                      close(self->_comPort);
                      self->_comPort = -1;
                      self->_spaceKeyState = 0;
                      v113 = self->_modelIdentifier;
                      self->_modelIdentifier = 0;

                      v26 = 2;
LABEL_119:

                      v12 = v126;
                      elementCopy = v127;
                      v34 = v124;
                      v29 = infoDictionary;
LABEL_50:

LABEL_52:
LABEL_53:

LABEL_54:
LABEL_55:

                      goto LABEL_56;
                    }

                    v105 = +[AXSubsystemBrailleHardware sharedInstance];
                    ignoreLogging5 = [v105 ignoreLogging];

                    if (ignoreLogging5)
                    {
                      goto LABEL_114;
                    }

                    v107 = +[AXSubsystemBrailleHardware identifier];
                    v101 = AXLoggerForFacility();

                    v102 = AXOSLogLevelFromAXLogLevel();
                    if (os_log_type_enabled(v101, v102))
                    {
                      v103 = AXColorizeFormatLog();
                      v104 = _AXStringForArgs();
                      if (os_log_type_enabled(v101, v102))
                      {
                        buf = 138543362;
                        v136 = v104;
LABEL_111:
                        _os_log_impl(&dword_0, v101, v102, "%{public}@", &buf, 0xCu);
                      }

LABEL_112:
                    }

LABEL_113:

                    goto LABEL_114;
                  }

                  v26 = v33;
                  v34 = v32;
                  [v32 removeObserver:self];
                }

                else
                {
                  v44 = +[AXSubsystemBrailleHardware sharedInstance];
                  ignoreLogging6 = [v44 ignoreLogging];

                  if ((ignoreLogging6 & 1) == 0)
                  {
                    v46 = +[AXSubsystemBrailleHardware identifier];
                    v47 = AXLoggerForFacility();

                    v48 = AXOSLogLevelFromAXLogLevel();
                    if (os_log_type_enabled(v47, v48))
                    {
                      v49 = AXColorizeFormatLog();
                      v50 = _AXStringForArgs();
                      if (os_log_type_enabled(v47, v48))
                      {
                        buf = 138543362;
                        v136 = v50;
                        _os_log_impl(&dword_0, v47, v48, "%{public}@", &buf, 0xCu);
                      }
                    }
                  }

                  v34 = v32;
                  [v32 removeObserver:self];
                  v26 = 1;
                }

                v12 = v126;
                elementCopy = v127;
                v29 = infoDictionary;
LABEL_49:
                v30 = v128;
                goto LABEL_50;
              }

LABEL_30:
              v35 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging7 = [v35 ignoreLogging];

              if (ignoreLogging7)
              {
                v26 = 1;
                v12 = v126;
                elementCopy = v127;
                v29 = infoDictionary;
                v30 = v128;
                goto LABEL_53;
              }

              v39 = +[AXSubsystemBrailleHardware identifier];
              v31 = AXLoggerForFacility();

              v26 = 1;
              v40 = AXOSLogLevelFromAXLogLevel();
              v29 = infoDictionary;
              if (!os_log_type_enabled(v31, v40))
              {
                v12 = v126;
                elementCopy = v127;
                v30 = v128;
                goto LABEL_52;
              }

              v34 = AXColorizeFormatLog();
              v41 = _AXStringForArgs();
              if (os_log_type_enabled(v31, v40))
              {
                buf = 138543362;
                v136 = v41;
                _os_log_impl(&dword_0, v31, v40, "%{public}@", &buf, 0xCu);
              }

              v12 = v126;
              elementCopy = v127;
              goto LABEL_49;
            }
          }

          v18 = [pairedDevices countByEnumeratingWithState:&v130 objects:v134 count:16];
        }

        while (v18);
      }

      goto LABEL_30;
    }

    v37 = +[AXSubsystemBrailleHardware sharedInstance];
    ignoreLogging8 = [v37 ignoreLogging];

    if ((ignoreLogging8 & 1) == 0)
    {
      v42 = +[AXSubsystemBrailleHardware identifier];
      v29 = AXLoggerForFacility();

      v26 = 1;
      v43 = AXOSLogLevelFromAXLogLevel();
      if (os_log_type_enabled(v29, v43))
      {
        v30 = AXColorizeFormatLog();
        bluetoothAddress = _AXStringForArgs();
        if (os_log_type_enabled(v29, v43))
        {
          buf = 138543362;
          v136 = bluetoothAddress;
          _os_log_impl(&dword_0, v29, v43, "%{public}@", &buf, 0xCu);
        }

        goto LABEL_53;
      }

      goto LABEL_55;
    }

    v26 = 1;
LABEL_56:
  }

  else
  {
    v24 = +[AXSubsystemBrailleHardware sharedInstance];
    ignoreLogging9 = [v24 ignoreLogging];

    if ((ignoreLogging9 & 1) == 0)
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
          v136 = v30;
          _os_log_impl(&dword_0, v12, v28, "%{public}@", &buf, 0xCu);
        }

        goto LABEL_54;
      }

      goto LABEL_56;
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
    modelIdentifier = self->_modelIdentifier;
    self->_modelIdentifier = 0;

    self->_identifierByte = 0;
    self->_mainSize = 0;
    *&self->_maxPacketSize = 0;
    self->_nextResetRequestTime = -3061152000.0;
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
      v31.location = 0;
      v31.length = v5;
      CFDataDeleteBytes(self->_readBuffer, v31);
    }
  }

  [(NSLock *)self->_readBufferLock unlock];
  isDeviceResetting = self->_isDeviceResetting;
  v9 = self->_safeReadBuffer;
  identifierByte = self->_identifierByte;
  v11 = SCRDHandyTechExtractEventsFromBuffer();
  if (self->_isDeviceResetting)
  {
    nextResetRequestTime = self->_nextResetRequestTime;
    if (nextResetRequestTime <= CFAbsoluteTimeGetCurrent())
    {
      __buf = -1;
      comPort = self->_comPort;
      if (comPort != -1)
      {
        write(comPort, &__buf, 1uLL);
      }

      self->_nextResetRequestTime = CFAbsoluteTimeGetCurrent() + 0.2;
    }
  }

  if (isDeviceResetting != self->_isDeviceResetting)
  {
    v14 = self->_identifierByte;
    if (SCRDHandyTechDisplayUsesExtendedProtocol() && self->_comPort != -1)
    {
      v15 = self->_identifierByte;
      ExtendedProtocolRequestPacket = SCRDHandyTechCreateExtendedProtocolRequestPacket();
      if (ExtendedProtocolRequestPacket)
      {
        v17 = ExtendedProtocolRequestPacket;
        v18 = self->_comPort;
        v19 = CFDataGetBytePtr(ExtendedProtocolRequestPacket);
        v20 = CFDataGetLength(v17);
        write(v18, v19, v20);
        CFRelease(v17);
      }

      v21 = self->_identifierByte;
      v22 = SCRDHandyTechCreateExtendedProtocolRequestPacket();
      if (v22)
      {
        v23 = v22;
        v24 = self->_comPort;
        v25 = CFDataGetBytePtr(v22);
        v26 = CFDataGetLength(v23);
        write(v24, v25, v26);
        CFRelease(v23);
      }
    }

    v27 = self->_isDeviceResetting;
    SCRDPostSleepNotification();
  }

  return v11;
}

- (BOOL)setMainCells:(const char *)cells length:(int64_t)length
{
  if (self->_isDeviceResetting)
  {
    return 0;
  }

  identifierByte = self->_identifierByte;
  if (SCRDHandyTechDisplayUsesExtendedProtocol())
  {
    v9 = self->_identifierByte;
    ExtendedProtocolRequestPacket = SCRDHandyTechCreateExtendedProtocolRequestPacket();
    if (!ExtendedProtocolRequestPacket)
    {
      return 0;
    }

    v11 = ExtendedProtocolRequestPacket;
    Length = CFDataGetLength(ExtendedProtocolRequestPacket);
    comPort = self->_comPort;
    if (comPort == -1)
    {
      v4 = 0;
    }

    else
    {
      v14 = Length;
      BytePtr = CFDataGetBytePtr(v11);
      v4 = write(comPort, BytePtr, v14) == v14;
    }

    CFRelease(v11);
  }

  else
  {
    mainSize = self->_mainSize;
    v17 = &v21 - ((mainSize + 16) & 0xFFFFFFFFFFFFFFF0);
    lengthCopy = mainSize;
    if (mainSize >= length)
    {
      if (mainSize > length)
      {
        bzero(&v17[length + 1], mainSize - length);
      }

      lengthCopy = length;
    }

    *v17 = 1;
    memcpy(v17 + 1, cells, lengthCopy);
    v19 = self->_comPort;
    return v19 != -1 && write(v19, &v21 - ((mainSize + 16) & 0xFFFFFFFFFFFFFFF0), mainSize + 1) == mainSize + 1;
  }

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