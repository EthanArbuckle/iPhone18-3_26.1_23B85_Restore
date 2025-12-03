@interface MSCROKGSBrailleDriver
- (BOOL)setMainCells:(const char *)cells length:(int64_t)length;
- (BOOL)unloadDriver;
- (MSCROKGSBrailleDriver)init;
- (id)getInputEvents;
- (int)loadDriverWithIOElement:(id)element;
- (void)dealloc;
- (void)fileReader:(id)reader data:(const void *)data length:(unint64_t)length;
- (void)removeDeviceNotification:(id)notification;
@end

@implementation MSCROKGSBrailleDriver

- (MSCROKGSBrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCROKGSBrailleDriver;
  result = [(MSCROKGSBrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCROKGSBrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCROKGSBrailleDriver;
  [(MSCROKGSBrailleDriver *)&v3 dealloc];
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
        v198 = v11;
        _os_log_impl(&dword_0, v8, v9, "%{public}@", &buf, 0xCu);
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
        [(MSCROKGSBrailleDriver *)self unloadDriver];
      }

      selfCopy = self;
      infoDictionary = [v12 infoDictionary];
      v187 = [infoDictionary objectForKey:kSCROBrailleDriverModels];
      v185 = elementCopy;
      bluetoothAddress = [elementCopy bluetoothAddress];
      v191 = 0u;
      v192 = 0u;
      v193 = 0u;
      v194 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      pairedDevices = [v15 pairedDevices];

      v17 = [pairedDevices countByEnumeratingWithState:&v191 objects:v199 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v192;
LABEL_14:
        v20 = 0;
        while (1)
        {
          if (*v192 != v19)
          {
            objc_enumerationMutation(pairedDevices);
          }

          v21 = *(*(&v191 + 1) + 8 * v20);
          address = [v21 address];
          v23 = [address isEqualToString:bluetoothAddress];

          if (v23)
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = [pairedDevices countByEnumeratingWithState:&v191 objects:v199 count:16];
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
          v32 = +[NSNotificationCenter defaultCenter];
          v33 = selfCopy;
          [v32 addObserver:selfCopy selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
          [v32 addObserver:selfCopy selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];
          if (([v31 connected]& 1) != 0)
          {
            v180 = v31;
            [v31 device];
            ComPortForServiceWithSandboxExtension = BTDeviceGetComPortForServiceWithSandboxExtension();
            if (ComPortForServiceWithSandboxExtension)
            {
              v35 = ComPortForServiceWithSandboxExtension;
              v36 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging2 = [v36 ignoreLogging];

              v29 = infoDictionary;
              if ((ignoreLogging2 & 1) == 0)
              {
                v181 = v32;
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
                    *v195 = 138543362;
                    v196 = v42;
                    _os_log_impl(&dword_0, v39, v40, "%{public}@", v195, 0xCu);
                  }
                }

                v32 = v181;
              }

              [v32 removeObserver:{selfCopy, bluetoothChannelIsLost}];
              v26 = 1;
              elementCopy = v185;
              v30 = v187;
              v31 = v180;
              goto LABEL_116;
            }

            v29 = infoDictionary;
            v183 = v32;
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
                    *v195 = 138543362;
                    v196 = v67;
                    _os_log_impl(&dword_0, v64, v65, "%{public}@", v195, 0xCu);
                  }

                  v32 = v183;
                }
              }
            }

            v68 = open(&buf, 131074, bluetoothChannelIsLost);
            selfCopy->_comPort = v68;
            if ((v68 & 0x80000000) == 0)
            {
              objc_storeStrong(&selfCopy->_device, v21);
              v69 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:selfCopy->_comPort closeOnDealloc:1];
              v70 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:selfCopy fileHandle:v69];
              readerThread = selfCopy->_readerThread;
              selfCopy->_readerThread = v70;

              Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
              selfCopy->_safeReadBuffer = Mutable;
              v31 = v180;
              if (!Mutable || (v73 = [objc_allocWithZone(NSLock) init], readBufferLock = selfCopy->_readBufferLock, selfCopy->_readBufferLock = v73, readBufferLock, !selfCopy->_readBufferLock) || (v75 = CFDataCreateMutable(kCFAllocatorDefault, 0), (selfCopy->_readBuffer = v75) == 0))
              {
                v95 = 0;
                v178 = 0;
                theData = 0;
                elementCopy = v185;
                v30 = v187;
                goto LABEL_98;
              }

              [(SCRDFileReader *)selfCopy->_readerThread start];
              v76 = SCRDKGSCreateCommandPacket();
              v176 = v69;
              if (!v76)
              {
                v123 = +[AXSubsystemBrailleHardware sharedInstance];
                ignoreLogging4 = [v123 ignoreLogging];

                if (ignoreLogging4)
                {
                  v95 = 0;
                  v178 = 0;
                  theData = 0;
                  elementCopy = v185;
                  v30 = v187;
                  goto LABEL_185;
                }

                v127 = +[AXSubsystemBrailleHardware identifier];
                v128 = AXLoggerForFacility();

                v129 = AXOSLogLevelFromAXLogLevel();
                mode = v128;
                if (os_log_type_enabled(v128, v129))
                {
                  v175 = AXColorizeFormatLog();
                  v130 = _AXStringForArgs();
                  if (os_log_type_enabled(v128, v129))
                  {
                    *v195 = 138543362;
                    v196 = v130;
                    _os_log_impl(&dword_0, v128, v129, "%{public}@", v195, 0xCu);
                  }

                  v95 = 0;
                  v178 = 0;
                  theData = 0;
                  elementCopy = v185;
                  v30 = v187;
                  v32 = v183;
LABEL_137:
                  v137 = v130;
                  goto LABEL_138;
                }

                v95 = 0;
                theData = 0;
LABEL_153:
                v178 = 0;
                elementCopy = v185;
                v30 = v187;
                goto LABEL_154;
              }

              theData = v76;
              Length = CFDataGetLength(v76);
              v78 = 0;
              buffer = 0;
              while (1)
              {
                comPort = selfCopy->_comPort;
                BytePtr = CFDataGetBytePtr(theData);
                if (write(comPort, BytePtr, Length) < Length)
                {
                  v131 = +[AXSubsystemBrailleHardware sharedInstance];
                  ignoreLogging5 = [v131 ignoreLogging];

                  if (ignoreLogging5)
                  {
                    v95 = 0;
LABEL_151:
                    v178 = 0;
                    elementCopy = v185;
                    v30 = v187;
                    goto LABEL_184;
                  }

                  v138 = +[AXSubsystemBrailleHardware identifier];
                  v139 = AXLoggerForFacility();

                  v140 = AXOSLogLevelFromAXLogLevel();
                  mode = v139;
                  if (os_log_type_enabled(v139, v140))
                  {
                    v175 = AXColorizeFormatLog();
                    v174 = _AXStringForArgs();
                    if (!os_log_type_enabled(v139, v140))
                    {
                      v95 = 0;
                      v178 = 0;
                      elementCopy = v185;
                      v30 = v187;
                      goto LABEL_201;
                    }

                    *v195 = 138543362;
                    v196 = v174;
                    _os_log_impl(&dword_0, v139, v140, "%{public}@", v195, 0xCu);
                    v137 = v174;
                    v95 = 0;
                    v178 = 0;
                    elementCopy = v185;
                    v30 = v187;
                    goto LABEL_193;
                  }

                  v95 = 0;
                  goto LABEL_153;
                }

                selfCopy->_bluetoothChannelIsLost = 0;
                selfCopy->_hasBeenUnloaded = 0;
                v81 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0, 0);
                v82 = v81;
                if (selfCopy->_bluetoothChannelIsLost || selfCopy->_hasBeenUnloaded || v81 == kCFRunLoopRunStopped)
                {
                  v125 = +[AXSubsystemBrailleHardware sharedInstance];
                  ignoreLogging6 = [v125 ignoreLogging];

                  if (ignoreLogging6)
                  {
                    v95 = 0;
                    v178 = 0;
                    elementCopy = v185;
                    v30 = v187;
                    goto LABEL_183;
                  }

                  v133 = +[AXSubsystemBrailleHardware identifier];
                  v134 = AXLoggerForFacility();

                  v135 = AXOSLogLevelFromAXLogLevel();
                  v32 = v183;
                  mode = v134;
                  if (os_log_type_enabled(v134, v135))
                  {
                    v136 = AXColorizeFormatLog();
                    hasBeenUnloaded = selfCopy->_hasBeenUnloaded;
                    v173 = v82;
                    bluetoothChannelIsLost = selfCopy->_bluetoothChannelIsLost;
                    v175 = v136;
                    v130 = _AXStringForArgs();
                    if (os_log_type_enabled(v134, v135))
                    {
                      *v195 = 138543362;
                      v196 = v130;
                      _os_log_impl(&dword_0, v134, v135, "%{public}@", v195, 0xCu);
                    }

                    v95 = 0;
                    v178 = 0;
                    elementCopy = v185;
                    v30 = v187;
                    v31 = v180;
                    goto LABEL_137;
                  }

                  v95 = 0;
                  v178 = 0;
                  elementCopy = v185;
                  v30 = v187;
                  v31 = v180;
LABEL_155:
                  v69 = v176;
                  goto LABEL_156;
                }

                [(NSLock *)selfCopy->_readBufferLock lock];
                v83 = CFDataGetLength(selfCopy->_readBuffer);
                if (v83 >= 1)
                {
                  v84 = v83;
                  safeReadBuffer = selfCopy->_safeReadBuffer;
                  v86 = CFDataGetBytePtr(selfCopy->_readBuffer);
                  CFDataAppendBytes(safeReadBuffer, v86, v84);
                  v200.location = 0;
                  v200.length = v84;
                  CFDataDeleteBytes(selfCopy->_readBuffer, v200);
                }

                [(NSLock *)selfCopy->_readBufferLock unlock];
                v87 = CFDataGetLength(selfCopy->_safeReadBuffer);
                v88 = v87;
                v31 = v180;
                if (v87 == 1)
                {
                  v201.location = 0;
                  v201.length = 1;
                  CFDataGetBytes(selfCopy->_safeReadBuffer, v201, &buffer);
                }

                else if (v87 < 1)
                {
                  goto LABEL_77;
                }

                v202.location = 0;
                v202.length = v88;
                CFDataDeleteBytes(selfCopy->_safeReadBuffer, v202);
LABEL_77:
                if (v78 <= 3)
                {
                  ++v78;
                  if (!buffer)
                  {
                    continue;
                  }
                }

                CFRelease(theData);
                name = [v180 name];
                v90 = [name hasPrefix:@"BM-NextTouch40"];

                if (v90)
                {
                  v91 = @"com.apple.scrod.braille.driver.kgs.bm.next.touch.40";
                }

                else
                {
                  switch(buffer)
                  {
                    case 0x28u:
                      v91 = @"com.apple.scrod.braille.driver.kgs.braille.memo.40";
                      break;
                    case 0x20u:
                      v91 = @"com.apple.scrod.braille.driver.kgs.braille.memo.32";
                      break;
                    case 0x10u:
                      v91 = @"com.apple.scrod.braille.driver.kgs.braille.memo.16";
                      break;
                    default:
                      v91 = 0;
                      break;
                  }
                }

                modelIdentifier = selfCopy->_modelIdentifier;
                selfCopy->_modelIdentifier = &v91->isa;

                v93 = [v187 objectForKey:selfCopy->_modelIdentifier];
                if (v93)
                {
                  v178 = v93;
                  v189 = 0;
                  v94 = SCRDKGSCreateCommandPacket();
                  if (v94)
                  {
                    v95 = v94;
                    v96 = CFDataGetLength(v94);
                    v97 = 0;
                    v188 = 0;
                    while (1)
                    {
                      v98 = selfCopy->_comPort;
                      v99 = CFDataGetBytePtr(v95);
                      if (write(v98, v99, v96) < v96)
                      {
                        v159 = +[AXSubsystemBrailleHardware sharedInstance];
                        ignoreLogging7 = [v159 ignoreLogging];

                        if ((ignoreLogging7 & 1) == 0)
                        {
                          v161 = +[AXSubsystemBrailleHardware identifier];
                          v162 = AXLoggerForFacility();

                          v163 = AXOSLogLevelFromAXLogLevel();
                          if (os_log_type_enabled(v162, v163))
                          {
                            v164 = AXColorizeFormatLog();
                            v165 = _AXStringForArgs();
                            if (os_log_type_enabled(v162, v163))
                            {
                              *v195 = 138543362;
                              v196 = v165;
                              _os_log_impl(&dword_0, v162, v163, "%{public}@", v195, 0xCu);
                            }
                          }
                        }

LABEL_178:
                        CFRelease(v95);
                        if (v188)
                        {
                          v166 = [v178 objectForKey:kSCROBrailleDriverMainDisplaySize];
                          selfCopy->_mainSize = [v166 unsignedCharValue];

                          v26 = 0;
                          selfCopy->_isDriverLoaded = 1;
                          elementCopy = v185;
                          v29 = infoDictionary;
                          v30 = v187;
                          v31 = v180;
                          v69 = v176;
                          goto LABEL_107;
                        }

                        v167 = +[AXSubsystemBrailleHardware sharedInstance];
                        ignoreLogging8 = [v167 ignoreLogging];

                        if (ignoreLogging8)
                        {
                          goto LABEL_181;
                        }

                        v169 = +[AXSubsystemBrailleHardware identifier];
                        v170 = AXLoggerForFacility();

                        v147 = AXOSLogLevelFromAXLogLevel();
                        mode = v170;
                        if (!os_log_type_enabled(v170, v147))
                        {
                          goto LABEL_194;
                        }

                        v175 = AXColorizeFormatLog();
                        v174 = _AXStringForArgs();
                        if (os_log_type_enabled(v170, v147))
                        {
                          *v195 = 138543362;
                          v148 = v174;
                          v196 = v174;
                          goto LABEL_190;
                        }

LABEL_198:
                        v95 = 0;
LABEL_199:
                        theData = 0;
LABEL_200:
                        elementCopy = v185;
                        v29 = infoDictionary;
                        v30 = v187;
                        v33 = selfCopy;
                        v31 = v180;
LABEL_201:
                        v32 = v183;
                        v69 = v176;
                        v137 = v174;
LABEL_139:

LABEL_156:
LABEL_98:
                        [(SCRDFileReader *)v33->_readerThread invalidate:bluetoothChannelIsLost];
                        v108 = v33->_readerThread;
                        v33->_readerThread = 0;

                        v109 = v33->_safeReadBuffer;
                        if (v109)
                        {
                          CFRelease(v109);
                          v33->_safeReadBuffer = 0;
                        }

                        [v32 removeObserver:v33];
                        [(NSLock *)v33->_readBufferLock lock];
                        readBuffer = v33->_readBuffer;
                        if (readBuffer)
                        {
                          CFRelease(readBuffer);
                          v33->_readBuffer = 0;
                        }

                        v111 = v33->_readBufferLock;
                        v112 = v33->_readBufferLock;
                        v33->_readBufferLock = 0;

                        [(NSLock *)v111 unlock];
                        device = v33->_device;
                        v33->_device = 0;

                        if (theData)
                        {
                          CFRelease(theData);
                        }

                        if (v95)
                        {
                          CFRelease(v95);
                        }

                        v33->_comPort = -1;
                        v114 = v33->_modelIdentifier;
                        v33->_modelIdentifier = 0;

                        v33->_mainSize = 0;
                        v26 = 2;
LABEL_107:

                        v32 = v183;
LABEL_116:

LABEL_117:
                        goto LABEL_118;
                      }

                      selfCopy->_bluetoothChannelIsLost = 0;
                      selfCopy->_hasBeenUnloaded = 0;
                      v100 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0, 0);
                      v101 = v100;
                      if (selfCopy->_bluetoothChannelIsLost || selfCopy->_hasBeenUnloaded || v100 == kCFRunLoopRunStopped)
                      {
                        v149 = +[AXSubsystemBrailleHardware sharedInstance];
                        ignoreLogging9 = [v149 ignoreLogging];

                        if (ignoreLogging9)
                        {
                          goto LABEL_182;
                        }

                        v151 = +[AXSubsystemBrailleHardware identifier];
                        v152 = AXLoggerForFacility();

                        v153 = AXOSLogLevelFromAXLogLevel();
                        mode = v152;
                        if (!os_log_type_enabled(v152, v153))
                        {
                          goto LABEL_195;
                        }

                        v154 = AXColorizeFormatLog();
                        hasBeenUnloaded = selfCopy->_hasBeenUnloaded;
                        v173 = v101;
                        bluetoothChannelIsLost = selfCopy->_bluetoothChannelIsLost;
                        v175 = v154;
                        v174 = _AXStringForArgs();
                        if (!os_log_type_enabled(v152, v153))
                        {
                          goto LABEL_199;
                        }

                        *v195 = 138543362;
                        v196 = v174;
                        _os_log_impl(&dword_0, v152, v153, "%{public}@", v195, 0xCu);
                        v137 = v174;
                        goto LABEL_191;
                      }

                      [(NSLock *)selfCopy->_readBufferLock lock];
                      v102 = CFDataGetLength(selfCopy->_readBuffer);
                      if (v102 >= 1)
                      {
                        v103 = v102;
                        v104 = selfCopy->_safeReadBuffer;
                        v105 = CFDataGetBytePtr(selfCopy->_readBuffer);
                        CFDataAppendBytes(v104, v105, v103);
                        v203.location = 0;
                        v203.length = v103;
                        CFDataDeleteBytes(selfCopy->_readBuffer, v203);
                      }

                      [(NSLock *)selfCopy->_readBufferLock unlock];
                      v106 = CFDataGetLength(selfCopy->_safeReadBuffer);
                      v107 = v106;
                      if (v106 == 1)
                      {
                        v204.location = 0;
                        v204.length = 1;
                        CFDataGetBytes(selfCopy->_safeReadBuffer, v204, &v188);
                      }

                      else if (v106 < 1)
                      {
                        goto LABEL_94;
                      }

                      v205.location = 0;
                      v205.length = v107;
                      CFDataDeleteBytes(selfCopy->_safeReadBuffer, v205);
LABEL_94:
                      if (v97 <= 3)
                      {
                        ++v97;
                        if ((v188 & 1) == 0)
                        {
                          continue;
                        }
                      }

                      goto LABEL_178;
                    }
                  }

                  v143 = +[AXSubsystemBrailleHardware sharedInstance];
                  ignoreLogging10 = [v143 ignoreLogging];

                  if ((ignoreLogging10 & 1) == 0)
                  {
                    v145 = +[AXSubsystemBrailleHardware identifier];
                    v146 = AXLoggerForFacility();

                    v147 = AXOSLogLevelFromAXLogLevel();
                    mode = v146;
                    if (os_log_type_enabled(v146, v147))
                    {
                      v175 = AXColorizeFormatLog();
                      v174 = _AXStringForArgs();
                      if (!os_log_type_enabled(v146, v147))
                      {
                        goto LABEL_198;
                      }

                      *v195 = 138543362;
                      v148 = v174;
                      v196 = v174;
LABEL_190:
                      _os_log_impl(&dword_0, mode, v147, "%{public}@", v195, 0xCu);
                      v137 = v148;
                      v95 = 0;
LABEL_191:
                      theData = 0;
                      goto LABEL_192;
                    }

LABEL_194:
                    v95 = 0;
LABEL_195:
                    theData = 0;
LABEL_196:
                    elementCopy = v185;
                    v29 = infoDictionary;
                    v30 = v187;
                    v33 = selfCopy;
                    v31 = v180;
LABEL_154:
                    v32 = v183;
                    goto LABEL_155;
                  }

LABEL_181:
                  v95 = 0;
LABEL_182:
                  theData = 0;
                  elementCopy = v185;
                  v29 = infoDictionary;
                  v30 = v187;
                  v33 = selfCopy;
LABEL_183:
                  v31 = v180;
LABEL_184:
                  v32 = v183;
LABEL_185:
                  v69 = v176;
                  goto LABEL_98;
                }

                v141 = +[AXSubsystemBrailleHardware sharedInstance];
                ignoreLogging11 = [v141 ignoreLogging];

                if (ignoreLogging11)
                {
                  v95 = 0;
                  theData = 0;
                  goto LABEL_151;
                }

                v155 = +[AXSubsystemBrailleHardware identifier];
                v156 = AXLoggerForFacility();

                v157 = AXOSLogLevelFromAXLogLevel();
                mode = v156;
                if (!os_log_type_enabled(v156, v157))
                {
                  v95 = 0;
                  v178 = 0;
                  theData = 0;
                  goto LABEL_196;
                }

                v158 = AXColorizeFormatLog();
                bluetoothChannelIsLost = selfCopy->_modelIdentifier;
                v175 = v158;
                v174 = _AXStringForArgs();
                if (!os_log_type_enabled(v156, v157))
                {
                  v95 = 0;
                  v178 = 0;
                  theData = 0;
                  goto LABEL_200;
                }

                *v195 = 138543362;
                v196 = v174;
                _os_log_impl(&dword_0, v156, v157, "%{public}@", v195, 0xCu);
                v137 = v174;
                v95 = 0;
                v178 = 0;
                theData = 0;
LABEL_192:
                elementCopy = v185;
                v29 = infoDictionary;
                v30 = v187;
                v33 = selfCopy;
                v31 = v180;
LABEL_193:
                v32 = v183;
LABEL_138:
                v69 = v176;
                goto LABEL_139;
              }
            }

            v115 = +[AXSubsystemBrailleHardware sharedInstance];
            ignoreLogging12 = [v115 ignoreLogging];

            v31 = v180;
            if ((ignoreLogging12 & 1) == 0)
            {
              v117 = +[AXSubsystemBrailleHardware identifier];
              v118 = AXLoggerForFacility();

              v119 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v118, v119))
              {
                v120 = AXColorizeFormatLog();
                bluetoothChannelIsLost = selfCopy->_comPort;
                v121 = _AXStringForArgs();
                if (os_log_type_enabled(v118, v119))
                {
                  *v195 = 138543362;
                  v196 = v121;
                  _os_log_impl(&dword_0, v118, v119, "%{public}@", v195, 0xCu);
                }

                v31 = v180;
              }

              v32 = v183;
            }

            selfCopy->_comPort = -1;
          }

          else
          {
            v53 = +[AXSubsystemBrailleHardware sharedInstance];
            ignoreLogging13 = [v53 ignoreLogging];

            v29 = infoDictionary;
            if ((ignoreLogging13 & 1) == 0)
            {
              v182 = v32;
              v55 = +[AXSubsystemBrailleHardware identifier];
              v56 = AXLoggerForFacility();

              v57 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v56, v57))
              {
                v58 = v31;
                v59 = AXColorizeFormatLog();
                v60 = _AXStringForArgs();
                if (os_log_type_enabled(v56, v57))
                {
                  buf = 138543362;
                  v198 = v60;
                  _os_log_impl(&dword_0, v56, v57, "%{public}@", &buf, 0xCu);
                }

                v31 = v58;
              }

              v32 = v182;
            }
          }

          [v32 removeObserver:{selfCopy, bluetoothChannelIsLost}];
          v26 = 1;
          elementCopy = v185;
          v30 = v187;
          goto LABEL_116;
        }
      }

      else
      {
LABEL_20:
      }

      v43 = +[AXSubsystemBrailleHardware sharedInstance];
      ignoreLogging14 = [v43 ignoreLogging];

      elementCopy = v185;
      if ((ignoreLogging14 & 1) == 0)
      {
        v47 = +[AXSubsystemBrailleHardware identifier];
        v31 = AXLoggerForFacility();

        v26 = 1;
        v48 = AXOSLogLevelFromAXLogLevel();
        v29 = infoDictionary;
        if (os_log_type_enabled(v31, v48))
        {
          v49 = AXColorizeFormatLog();
          v50 = _AXStringForArgs();
          if (os_log_type_enabled(v31, v48))
          {
            buf = 138543362;
            v198 = v50;
            _os_log_impl(&dword_0, v31, v48, "%{public}@", &buf, 0xCu);
          }

          v30 = v187;
          v32 = v49;
          goto LABEL_116;
        }

        v30 = v187;
        goto LABEL_117;
      }

      v26 = 1;
      v29 = infoDictionary;
      v30 = v187;
LABEL_118:

      goto LABEL_119;
    }

    v45 = +[AXSubsystemBrailleHardware sharedInstance];
    ignoreLogging15 = [v45 ignoreLogging];

    if ((ignoreLogging15 & 1) == 0)
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
          v198 = bluetoothAddress;
          _os_log_impl(&dword_0, v29, v52, "%{public}@", &buf, 0xCu);
        }

        goto LABEL_118;
      }

      goto LABEL_120;
    }

    v26 = 1;
    goto LABEL_121;
  }

  v24 = +[AXSubsystemBrailleHardware sharedInstance];
  ignoreLogging16 = [v24 ignoreLogging];

  if ((ignoreLogging16 & 1) == 0)
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
        v198 = v30;
        _os_log_impl(&dword_0, v12, v28, "%{public}@", &buf, 0xCu);
      }

LABEL_119:

LABEL_120:
    }

LABEL_121:

    goto LABEL_122;
  }

  v26 = 1;
LABEL_122:

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
      v17.location = 0;
      v17.length = v5;
      CFDataDeleteBytes(self->_readBuffer, v17);
    }
  }

  [(NSLock *)self->_readBufferLock unlock];
  v8 = self->_safeReadBuffer;
  v9 = SCRDKGSExtractEventsFromBuffer();
  v10 = v9;
  if (v9 && [v9 count])
  {
    v11 = [v10 mutableCopy];
    [v11 removeObjectsInArray:&off_87D0];
    v12 = _SCROD_LOG();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 138412290;
      v15 = v11;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "KGS Driver: got input events %@", &v14, 0xCu);
    }
  }

  return v10;
}

- (BOOL)setMainCells:(const char *)cells length:(int64_t)length
{
  mainSize = self->_mainSize;
  if (mainSize >= length)
  {
    lengthCopy = length;
  }

  else
  {
    lengthCopy = self->_mainSize;
  }

  memcpy(&v18 - ((mainSize + 15) & 0xFFFFFFFFFFFFFFF0), cells, lengthCopy);
  if (mainSize > length)
  {
    bzero(&v18 + length - ((mainSize + 15) & 0xFFFFFFFFFFFFFFF0), mainSize - length);
  }

  SCRDKGSConvertBrailleCellsToKGSOrder();
  mainSize_low = LOWORD(self->_mainSize);
  v10 = SCRDKGSCreateCommandPacket();
  if (!v10)
  {
    return 0;
  }

  v11 = v10;
  comPort = self->_comPort;
  if (comPort == -1)
  {
    v16 = 0;
  }

  else
  {
    BytePtr = CFDataGetBytePtr(v10);
    Length = CFDataGetLength(v11);
    v15 = write(comPort, BytePtr, Length);
    v16 = v15 == CFDataGetLength(v11);
  }

  CFRelease(v11);
  return v16;
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