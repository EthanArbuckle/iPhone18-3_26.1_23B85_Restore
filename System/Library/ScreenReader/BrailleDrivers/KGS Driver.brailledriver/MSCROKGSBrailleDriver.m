@interface MSCROKGSBrailleDriver
- (BOOL)setMainCells:(const char *)a3 length:(int64_t)a4;
- (BOOL)unloadDriver;
- (MSCROKGSBrailleDriver)init;
- (id)getInputEvents;
- (int)loadDriverWithIOElement:(id)a3;
- (void)dealloc;
- (void)fileReader:(id)a3 data:(const void *)a4 length:(unint64_t)a5;
- (void)removeDeviceNotification:(id)a3;
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
        v198 = v11;
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
        [(MSCROKGSBrailleDriver *)self unloadDriver];
      }

      v184 = self;
      v186 = [v12 infoDictionary];
      v187 = [v186 objectForKey:kSCROBrailleDriverModels];
      v185 = v4;
      v14 = [v4 bluetoothAddress];
      v191 = 0u;
      v192 = 0u;
      v193 = 0u;
      v194 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      v16 = [v15 pairedDevices];

      v17 = [v16 countByEnumeratingWithState:&v191 objects:v199 count:16];
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
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v191 + 1) + 8 * v20);
          v22 = [v21 address];
          v23 = [v22 isEqualToString:v14];

          if (v23)
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = [v16 countByEnumeratingWithState:&v191 objects:v199 count:16];
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
          v33 = v184;
          [v32 addObserver:v184 selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
          [v32 addObserver:v184 selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];
          if (([v31 connected]& 1) != 0)
          {
            v180 = v31;
            [v31 device];
            ComPortForServiceWithSandboxExtension = BTDeviceGetComPortForServiceWithSandboxExtension();
            if (ComPortForServiceWithSandboxExtension)
            {
              v35 = ComPortForServiceWithSandboxExtension;
              v36 = +[AXSubsystemBrailleHardware sharedInstance];
              v37 = [v36 ignoreLogging];

              v29 = v186;
              if ((v37 & 1) == 0)
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

              [v32 removeObserver:{v184, bluetoothChannelIsLost}];
              v26 = 1;
              v4 = v185;
              v30 = v187;
              v31 = v180;
              goto LABEL_116;
            }

            v29 = v186;
            v183 = v32;
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
                    *v195 = 138543362;
                    v196 = v67;
                    _os_log_impl(&dword_0, v64, v65, "%{public}@", v195, 0xCu);
                  }

                  v32 = v183;
                }
              }
            }

            v68 = open(&buf, 131074, bluetoothChannelIsLost);
            v184->_comPort = v68;
            if ((v68 & 0x80000000) == 0)
            {
              objc_storeStrong(&v184->_device, v21);
              v69 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:v184->_comPort closeOnDealloc:1];
              v70 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:v184 fileHandle:v69];
              readerThread = v184->_readerThread;
              v184->_readerThread = v70;

              Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
              v184->_safeReadBuffer = Mutable;
              v31 = v180;
              if (!Mutable || (v73 = [objc_allocWithZone(NSLock) init], readBufferLock = v184->_readBufferLock, v184->_readBufferLock = v73, readBufferLock, !v184->_readBufferLock) || (v75 = CFDataCreateMutable(kCFAllocatorDefault, 0), (v184->_readBuffer = v75) == 0))
              {
                v95 = 0;
                v178 = 0;
                theData = 0;
                v4 = v185;
                v30 = v187;
                goto LABEL_98;
              }

              [(SCRDFileReader *)v184->_readerThread start];
              v76 = SCRDKGSCreateCommandPacket();
              v176 = v69;
              if (!v76)
              {
                v123 = +[AXSubsystemBrailleHardware sharedInstance];
                v124 = [v123 ignoreLogging];

                if (v124)
                {
                  v95 = 0;
                  v178 = 0;
                  theData = 0;
                  v4 = v185;
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
                  v4 = v185;
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
                v4 = v185;
                v30 = v187;
                goto LABEL_154;
              }

              theData = v76;
              Length = CFDataGetLength(v76);
              v78 = 0;
              buffer = 0;
              while (1)
              {
                comPort = v184->_comPort;
                BytePtr = CFDataGetBytePtr(theData);
                if (write(comPort, BytePtr, Length) < Length)
                {
                  v131 = +[AXSubsystemBrailleHardware sharedInstance];
                  v132 = [v131 ignoreLogging];

                  if (v132)
                  {
                    v95 = 0;
LABEL_151:
                    v178 = 0;
                    v4 = v185;
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
                      v4 = v185;
                      v30 = v187;
                      goto LABEL_201;
                    }

                    *v195 = 138543362;
                    v196 = v174;
                    _os_log_impl(&dword_0, v139, v140, "%{public}@", v195, 0xCu);
                    v137 = v174;
                    v95 = 0;
                    v178 = 0;
                    v4 = v185;
                    v30 = v187;
                    goto LABEL_193;
                  }

                  v95 = 0;
                  goto LABEL_153;
                }

                v184->_bluetoothChannelIsLost = 0;
                v184->_hasBeenUnloaded = 0;
                v81 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0, 0);
                v82 = v81;
                if (v184->_bluetoothChannelIsLost || v184->_hasBeenUnloaded || v81 == kCFRunLoopRunStopped)
                {
                  v125 = +[AXSubsystemBrailleHardware sharedInstance];
                  v126 = [v125 ignoreLogging];

                  if (v126)
                  {
                    v95 = 0;
                    v178 = 0;
                    v4 = v185;
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
                    hasBeenUnloaded = v184->_hasBeenUnloaded;
                    v173 = v82;
                    bluetoothChannelIsLost = v184->_bluetoothChannelIsLost;
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
                    v4 = v185;
                    v30 = v187;
                    v31 = v180;
                    goto LABEL_137;
                  }

                  v95 = 0;
                  v178 = 0;
                  v4 = v185;
                  v30 = v187;
                  v31 = v180;
LABEL_155:
                  v69 = v176;
                  goto LABEL_156;
                }

                [(NSLock *)v184->_readBufferLock lock];
                v83 = CFDataGetLength(v184->_readBuffer);
                if (v83 >= 1)
                {
                  v84 = v83;
                  safeReadBuffer = v184->_safeReadBuffer;
                  v86 = CFDataGetBytePtr(v184->_readBuffer);
                  CFDataAppendBytes(safeReadBuffer, v86, v84);
                  v200.location = 0;
                  v200.length = v84;
                  CFDataDeleteBytes(v184->_readBuffer, v200);
                }

                [(NSLock *)v184->_readBufferLock unlock];
                v87 = CFDataGetLength(v184->_safeReadBuffer);
                v88 = v87;
                v31 = v180;
                if (v87 == 1)
                {
                  v201.location = 0;
                  v201.length = 1;
                  CFDataGetBytes(v184->_safeReadBuffer, v201, &buffer);
                }

                else if (v87 < 1)
                {
                  goto LABEL_77;
                }

                v202.location = 0;
                v202.length = v88;
                CFDataDeleteBytes(v184->_safeReadBuffer, v202);
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
                v89 = [v180 name];
                v90 = [v89 hasPrefix:@"BM-NextTouch40"];

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

                modelIdentifier = v184->_modelIdentifier;
                v184->_modelIdentifier = &v91->isa;

                v93 = [v187 objectForKey:v184->_modelIdentifier];
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
                      v98 = v184->_comPort;
                      v99 = CFDataGetBytePtr(v95);
                      if (write(v98, v99, v96) < v96)
                      {
                        v159 = +[AXSubsystemBrailleHardware sharedInstance];
                        v160 = [v159 ignoreLogging];

                        if ((v160 & 1) == 0)
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
                          v184->_mainSize = [v166 unsignedCharValue];

                          v26 = 0;
                          v184->_isDriverLoaded = 1;
                          v4 = v185;
                          v29 = v186;
                          v30 = v187;
                          v31 = v180;
                          v69 = v176;
                          goto LABEL_107;
                        }

                        v167 = +[AXSubsystemBrailleHardware sharedInstance];
                        v168 = [v167 ignoreLogging];

                        if (v168)
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
                        v4 = v185;
                        v29 = v186;
                        v30 = v187;
                        v33 = v184;
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

                      v184->_bluetoothChannelIsLost = 0;
                      v184->_hasBeenUnloaded = 0;
                      v100 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 1.0, 0);
                      v101 = v100;
                      if (v184->_bluetoothChannelIsLost || v184->_hasBeenUnloaded || v100 == kCFRunLoopRunStopped)
                      {
                        v149 = +[AXSubsystemBrailleHardware sharedInstance];
                        v150 = [v149 ignoreLogging];

                        if (v150)
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
                        hasBeenUnloaded = v184->_hasBeenUnloaded;
                        v173 = v101;
                        bluetoothChannelIsLost = v184->_bluetoothChannelIsLost;
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

                      [(NSLock *)v184->_readBufferLock lock];
                      v102 = CFDataGetLength(v184->_readBuffer);
                      if (v102 >= 1)
                      {
                        v103 = v102;
                        v104 = v184->_safeReadBuffer;
                        v105 = CFDataGetBytePtr(v184->_readBuffer);
                        CFDataAppendBytes(v104, v105, v103);
                        v203.location = 0;
                        v203.length = v103;
                        CFDataDeleteBytes(v184->_readBuffer, v203);
                      }

                      [(NSLock *)v184->_readBufferLock unlock];
                      v106 = CFDataGetLength(v184->_safeReadBuffer);
                      v107 = v106;
                      if (v106 == 1)
                      {
                        v204.location = 0;
                        v204.length = 1;
                        CFDataGetBytes(v184->_safeReadBuffer, v204, &v188);
                      }

                      else if (v106 < 1)
                      {
                        goto LABEL_94;
                      }

                      v205.location = 0;
                      v205.length = v107;
                      CFDataDeleteBytes(v184->_safeReadBuffer, v205);
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
                  v144 = [v143 ignoreLogging];

                  if ((v144 & 1) == 0)
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
                    v4 = v185;
                    v29 = v186;
                    v30 = v187;
                    v33 = v184;
                    v31 = v180;
LABEL_154:
                    v32 = v183;
                    goto LABEL_155;
                  }

LABEL_181:
                  v95 = 0;
LABEL_182:
                  theData = 0;
                  v4 = v185;
                  v29 = v186;
                  v30 = v187;
                  v33 = v184;
LABEL_183:
                  v31 = v180;
LABEL_184:
                  v32 = v183;
LABEL_185:
                  v69 = v176;
                  goto LABEL_98;
                }

                v141 = +[AXSubsystemBrailleHardware sharedInstance];
                v142 = [v141 ignoreLogging];

                if (v142)
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
                bluetoothChannelIsLost = v184->_modelIdentifier;
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
                v4 = v185;
                v29 = v186;
                v30 = v187;
                v33 = v184;
                v31 = v180;
LABEL_193:
                v32 = v183;
LABEL_138:
                v69 = v176;
                goto LABEL_139;
              }
            }

            v115 = +[AXSubsystemBrailleHardware sharedInstance];
            v116 = [v115 ignoreLogging];

            v31 = v180;
            if ((v116 & 1) == 0)
            {
              v117 = +[AXSubsystemBrailleHardware identifier];
              v118 = AXLoggerForFacility();

              v119 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v118, v119))
              {
                v120 = AXColorizeFormatLog();
                bluetoothChannelIsLost = v184->_comPort;
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

            v184->_comPort = -1;
          }

          else
          {
            v53 = +[AXSubsystemBrailleHardware sharedInstance];
            v54 = [v53 ignoreLogging];

            v29 = v186;
            if ((v54 & 1) == 0)
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

          [v32 removeObserver:{v184, bluetoothChannelIsLost}];
          v26 = 1;
          v4 = v185;
          v30 = v187;
          goto LABEL_116;
        }
      }

      else
      {
LABEL_20:
      }

      v43 = +[AXSubsystemBrailleHardware sharedInstance];
      v44 = [v43 ignoreLogging];

      v4 = v185;
      if ((v44 & 1) == 0)
      {
        v47 = +[AXSubsystemBrailleHardware identifier];
        v31 = AXLoggerForFacility();

        v26 = 1;
        v48 = AXOSLogLevelFromAXLogLevel();
        v29 = v186;
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
      v29 = v186;
      v30 = v187;
LABEL_118:

      goto LABEL_119;
    }

    v45 = +[AXSubsystemBrailleHardware sharedInstance];
    v46 = [v45 ignoreLogging];

    if ((v46 & 1) == 0)
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
          v198 = v14;
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

- (BOOL)setMainCells:(const char *)a3 length:(int64_t)a4
{
  mainSize = self->_mainSize;
  if (mainSize >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = self->_mainSize;
  }

  memcpy(&v18 - ((mainSize + 15) & 0xFFFFFFFFFFFFFFF0), a3, v8);
  if (mainSize > a4)
  {
    bzero(&v18 + a4 - ((mainSize + 15) & 0xFFFFFFFFFFFFFFF0), mainSize - a4);
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