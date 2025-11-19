@interface MSCROMDVBrailleDriver
- (BOOL)setMainCells:(const char *)a3 length:(int64_t)a4;
- (BOOL)setStatusCells:(const char *)a3 length:(int64_t)a4;
- (BOOL)unloadDriver;
- (MSCROMDVBrailleDriver)init;
- (id)getInputEvents;
- (int)loadDriverWithIOElement:(id)a3;
- (void)_flushWriteBuffer;
- (void)dealloc;
- (void)fileReader:(id)a3 data:(const void *)a4 length:(unint64_t)a5;
- (void)removeDeviceNotification:(id)a3;
@end

@implementation MSCROMDVBrailleDriver

- (MSCROMDVBrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCROMDVBrailleDriver;
  result = [(MSCROMDVBrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_nextWriteTime = -3061152000.0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCROMDVBrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCROMDVBrailleDriver;
  [(MSCROMDVBrailleDriver *)&v3 dealloc];
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
        v191 = v11;
        _os_log_impl(&dword_0, v8, v9, "%{public}@", buf, 0xCu);
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
        [(MSCROMDVBrailleDriver *)self unloadDriver];
      }

      v172 = self;
      v174 = [v12 infoDictionary];
      v173 = [v174 objectForKey:kSCROBrailleDriverModels];
      v175 = v4;
      v14 = [v4 bluetoothAddress];
      v183 = 0u;
      v184 = 0u;
      v185 = 0u;
      v186 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      v16 = [v15 pairedDevices];

      v17 = [v16 countByEnumeratingWithState:&v183 objects:v192 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v184;
LABEL_14:
        v20 = 0;
        while (1)
        {
          if (*v184 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v183 + 1) + 8 * v20);
          v22 = [v21 address];
          v23 = [v22 isEqualToString:v14];

          if (v23)
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = [v16 countByEnumeratingWithState:&v183 objects:v192 count:16];
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
          v33 = v172;
          [v32 addObserver:v172 selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
          [v32 addObserver:v172 selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];
          if (([v31 connected]& 1) != 0)
          {
            v171 = v31;
            [v31 device];
            ComPortForServiceWithSandboxExtension = BTDeviceGetComPortForServiceWithSandboxExtension();
            if (ComPortForServiceWithSandboxExtension)
            {
              v35 = ComPortForServiceWithSandboxExtension;
              v36 = +[AXSubsystemBrailleHardware sharedInstance];
              v37 = [v36 ignoreLogging];

              v29 = v174;
              if ((v37 & 1) == 0)
              {
                v166 = v32;
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
                    *v188 = 138543362;
                    v189 = v42;
                    _os_log_impl(&dword_0, v39, v40, "%{public}@", v188, 0xCu);
                  }
                }

                v32 = v166;
              }

              [v32 removeObserver:{v172, bluetoothChannelIsLost}];
              v26 = 1;
              v4 = v175;
              v30 = v173;
LABEL_116:
              v31 = v171;
              goto LABEL_117;
            }

            v29 = v174;
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
                  v168 = v32;
                  v66 = AXColorizeFormatLog();
                  bluetoothChannelIsLost = *__error();
                  v67 = _AXStringForArgs();
                  if (os_log_type_enabled(v64, v65))
                  {
                    *v188 = 138543362;
                    v189 = v67;
                    _os_log_impl(&dword_0, v64, v65, "%{public}@", v188, 0xCu);
                  }

                  v32 = v168;
                }
              }
            }

            v68 = open(buf, 131074, bluetoothChannelIsLost);
            v172->_comPort = v68;
            v4 = v175;
            if ((v68 & 0x80000000) == 0)
            {
              objc_storeStrong(&v172->_device, v21);
              v69 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:v172->_comPort closeOnDealloc:1];
              v70 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:v172 fileHandle:v69];
              readerThread = v172->_readerThread;
              v172->_readerThread = v70;

              v72 = malloc_type_calloc(0x2AuLL, 1uLL, 0x100004077774924uLL);
              v172->_writeBuffer = v72;
              if (v72)
              {
                Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
                v172->_safeReadBuffer = Mutable;
                if (Mutable)
                {
                  v74 = [objc_allocWithZone(NSLock) init];
                  readBufferLock = v172->_readBufferLock;
                  v172->_readBufferLock = v74;

                  if (v172->_readBufferLock)
                  {
                    v76 = CFDataCreateMutable(kCFAllocatorDefault, 0);
                    v172->_readBuffer = v76;
                    if (v76)
                    {
                      [(SCRDFileReader *)v172->_readerThread start];
                      __nbyte = 0;
                      v181 = 0;
                      Request = SCRDMDVSerialCreateRequest();
                      if (!Request)
                      {
                        v119 = v69;
                        v120 = +[AXSubsystemBrailleHardware sharedInstance];
                        v121 = [v120 ignoreLogging];

                        if ((v121 & 1) == 0)
                        {
                          v169 = v32;
                          v124 = +[AXSubsystemBrailleHardware identifier];
                          v125 = AXLoggerForFacility();

                          v126 = AXOSLogLevelFromAXLogLevel();
                          if (os_log_type_enabled(v125, v126))
                          {
                            v164 = AXColorizeFormatLog();
                            mode = _AXStringForArgs();
                            if (os_log_type_enabled(v125, v126))
                            {
                              *v188 = 138543362;
                              v189 = mode;
                              _os_log_impl(&dword_0, v125, v126, "%{public}@", v188, 0xCu);
                              v127 = mode;
                              __buf = 0;
                              v4 = v175;
                              v30 = v173;
                              v69 = v119;
                              v78 = 0;
                            }

                            else
                            {
                              __buf = 0;
                              v4 = v175;
                              v30 = v173;
                              v69 = v119;
                              v78 = 0;
                              v127 = mode;
                            }

                            goto LABEL_175;
                          }

                          __buf = 0;
                          v4 = v175;
                          v30 = v173;
                          v32 = v169;
                          v69 = v119;
                          v78 = 0;
                          goto LABEL_176;
                        }

                        __buf = 0;
                        v4 = v175;
                        v30 = v173;
                        v69 = v119;
                        v78 = 0;
                        goto LABEL_104;
                      }

                      v78 = Request;
                      v158 = v69;
                      v180 = 0;
                      v79 = SCRDMDVSerialCreateRequest();
                      if (v79)
                      {
                        __buf = v79;
                        v169 = v32;
                        v80 = 0;
                        v81 = 0;
                        v82 = 0;
                        v162 = v78;
                        while (1)
                        {
                          v83 = write(v33->_comPort, v78, __nbyte);
                          if (v83 < __nbyte)
                          {
                            break;
                          }

                          v84 = write(v33->_comPort, __buf, v180);
                          if (v84 < v180)
                          {
                            v138 = +[AXSubsystemBrailleHardware sharedInstance];
                            v139 = [v138 ignoreLogging];

                            if (v139)
                            {
                              goto LABEL_142;
                            }

                            v145 = +[AXSubsystemBrailleHardware identifier];
                            v146 = AXLoggerForFacility();

                            v136 = AXOSLogLevelFromAXLogLevel();
                            v125 = v146;
                            if (!os_log_type_enabled(v146, v136))
                            {
                              goto LABEL_170;
                            }

                            v164 = AXColorizeFormatLog();
                            modea = _AXStringForArgs();
                            if (!os_log_type_enabled(v146, v136))
                            {
                              goto LABEL_173;
                            }

                            *v188 = 138543362;
                            v137 = modea;
                            v189 = modea;
                            goto LABEL_153;
                          }

                          *&v33->_bluetoothChannelIsLost = 0;
                          v85 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.2, 0);
                          v86 = v85;
                          if (v33->_bluetoothChannelIsLost || v33->_hasBeenUnloaded || v85 == kCFRunLoopRunStopped)
                          {
                            v128 = +[AXSubsystemBrailleHardware sharedInstance];
                            v129 = [v128 ignoreLogging];

                            if (v129)
                            {
                              v4 = v175;
                              v30 = v173;
                              v32 = v169;
                              v69 = v158;
                              v78 = v162;
                              goto LABEL_104;
                            }

                            v140 = +[AXSubsystemBrailleHardware identifier];
                            v141 = AXLoggerForFacility();

                            v142 = AXOSLogLevelFromAXLogLevel();
                            modeb = v141;
                            if (os_log_type_enabled(v141, v142))
                            {
                              v143 = AXColorizeFormatLog();
                              hasBeenUnloaded = v33->_hasBeenUnloaded;
                              v157 = v86;
                              bluetoothChannelIsLost = v33->_bluetoothChannelIsLost;
                              v164 = v143;
                              v127 = _AXStringForArgs();
                              if (os_log_type_enabled(v141, v142))
                              {
                                *v188 = 138543362;
                                v189 = v127;
                                v144 = v142;
                                v125 = v141;
                                _os_log_impl(&dword_0, v141, v144, "%{public}@", v188, 0xCu);
                                v29 = v174;
                                v4 = v175;
                                v33 = v172;
                                v30 = v173;
                                v69 = v158;
                              }

                              else
                              {
                                v29 = v174;
                                v4 = v175;
                                v33 = v172;
                                v30 = v173;
                                v69 = v158;
                                v125 = modeb;
                              }

                              v78 = v162;
                              goto LABEL_175;
                            }

                            v4 = v175;
                            v30 = v173;
                            v32 = v169;
                            v69 = v158;
                            v125 = modeb;
                            v78 = v162;
LABEL_176:

                            goto LABEL_104;
                          }

                          v163 = v82;
                          [(NSLock *)v33->_readBufferLock lock];
                          Length = CFDataGetLength(v33->_readBuffer);
                          if (Length >= 1)
                          {
                            v88 = Length;
                            safeReadBuffer = v33->_safeReadBuffer;
                            BytePtr = CFDataGetBytePtr(v33->_readBuffer);
                            CFDataAppendBytes(safeReadBuffer, BytePtr, v88);
                            v193.location = 0;
                            v193.length = v88;
                            CFDataDeleteBytes(v33->_readBuffer, v193);
                          }

                          [(NSLock *)v33->_readBufferLock unlock];
                          v91 = v33->_safeReadBuffer;
                          v92 = SCRDMDVSerialCreatePacketsFromBuffer();
                          v176 = 0u;
                          v177 = 0u;
                          v178 = 0u;
                          v179 = 0u;
                          v93 = [v92 countByEnumeratingWithState:&v176 objects:v187 count:16];
                          if (v93)
                          {
                            v94 = v93;
                            v95 = 0;
                            v96 = *v177;
                            do
                            {
                              for (i = 0; i != v94; i = i + 1)
                              {
                                if (*v177 != v96)
                                {
                                  objc_enumerationMutation(v92);
                                }

                                v98 = CFDataGetBytePtr(*(*(&v176 + 1) + 8 * i));
                                if (v98[2] == 37 && v98[3] == 6)
                                {
                                  v81 = v98[5];
                                  v80 = v98[9];
                                  v95 = 1;
                                }
                              }

                              v94 = [v92 countByEnumeratingWithState:&v176 objects:v187 count:16];
                            }

                            while (v94);
                          }

                          else
                          {
                            v95 = 0;
                          }

                          v29 = v174;
                          v33 = v172;
                          v78 = v162;
                          if ((v95 & 1) == 0)
                          {
                            v82 = v163 + 1;
                            if (v163 < 6)
                            {
                              continue;
                            }
                          }

                          free(v162);
                          free(__buf);
                          v172->_mainSize = v81;
                          if (v81 == 24)
                          {
                            v100 = 0;
                            v101 = xmmword_3A70;
                            v99 = @"com.apple.scrod.braille.driver.mdv.mb248.24";
                            v102 = 2;
LABEL_159:
                            v33 = v172;
                            v172->_statusSize = v100;
                            v172->_deviceID = v102;
                            *&v172->_writeBufferSize = v101;
                          }

                          else
                          {
                            v99 = 0;
                            if (v81 == 40)
                            {
                              v100 = 2 * (v80 < 7);
                              v101 = xmmword_3A80;
                              v99 = @"com.apple.scrod.braille.driver.mdv.mb408l.40";
                              v102 = 1;
                              goto LABEL_159;
                            }
                          }

                          modelIdentifier = v33->_modelIdentifier;
                          v33->_modelIdentifier = &v99->isa;

                          v148 = [v173 objectForKey:v33->_modelIdentifier];
                          if (v148)
                          {
                            v113 = v148;
                            v26 = 0;
                            v33->_isDriverLoaded = 1;
                            v29 = v174;
                            v4 = v175;
                            v30 = v173;
                            v32 = v169;
                            v69 = v158;
                            goto LABEL_115;
                          }

                          v149 = +[AXSubsystemBrailleHardware sharedInstance];
                          v150 = [v149 ignoreLogging];

                          if (v150)
                          {
                            v78 = 0;
                            __buf = 0;
                            v29 = v174;
                            v4 = v175;
                            v33 = v172;
                            v30 = v173;
                            goto LABEL_143;
                          }

                          v151 = +[AXSubsystemBrailleHardware identifier];
                          v152 = AXLoggerForFacility();

                          v153 = AXOSLogLevelFromAXLogLevel();
                          v125 = v152;
                          if (os_log_type_enabled(v152, v153))
                          {
                            v154 = AXColorizeFormatLog();
                            bluetoothChannelIsLost = v172->_modelIdentifier;
                            v164 = v154;
                            modea = _AXStringForArgs();
                            if (os_log_type_enabled(v152, v153))
                            {
                              *v188 = 138543362;
                              v189 = modea;
                              _os_log_impl(&dword_0, v152, v153, "%{public}@", v188, 0xCu);
                              v127 = modea;
                              v78 = 0;
                              __buf = 0;
LABEL_154:
                              v29 = v174;
                              v4 = v175;
                              v33 = v172;
                              v30 = v173;
LABEL_155:
                              v69 = v158;
LABEL_175:

                              v32 = v169;
                              goto LABEL_176;
                            }

                            v78 = 0;
                            __buf = 0;
LABEL_173:
                            v29 = v174;
                            v4 = v175;
                            v33 = v172;
                            v30 = v173;
LABEL_174:
                            v69 = v158;
                            v127 = modea;
                            goto LABEL_175;
                          }

                          v78 = 0;
                          __buf = 0;
LABEL_170:
                          v29 = v174;
                          v4 = v175;
                          v33 = v172;
                          v30 = v173;
LABEL_171:
                          v32 = v169;
                          v69 = v158;
                          goto LABEL_176;
                        }

                        v132 = +[AXSubsystemBrailleHardware sharedInstance];
                        v133 = [v132 ignoreLogging];

                        if (v133)
                        {
LABEL_142:
                          v4 = v175;
                          v30 = v173;
LABEL_143:
                          v32 = v169;
                          goto LABEL_144;
                        }

                        v134 = +[AXSubsystemBrailleHardware identifier];
                        v135 = AXLoggerForFacility();

                        v136 = AXOSLogLevelFromAXLogLevel();
                        v125 = v135;
                        if (!os_log_type_enabled(v135, v136))
                        {
                          goto LABEL_170;
                        }

                        v164 = AXColorizeFormatLog();
                        modea = _AXStringForArgs();
                        if (!os_log_type_enabled(v135, v136))
                        {
                          goto LABEL_173;
                        }

                        *v188 = 138543362;
                        v137 = modea;
                        v189 = modea;
LABEL_153:
                        _os_log_impl(&dword_0, v125, v136, "%{public}@", v188, 0xCu);
                        v127 = v137;
                        goto LABEL_154;
                      }

                      v122 = +[AXSubsystemBrailleHardware sharedInstance];
                      v123 = [v122 ignoreLogging];

                      if ((v123 & 1) == 0)
                      {
                        v169 = v32;
                        v130 = +[AXSubsystemBrailleHardware identifier];
                        v125 = AXLoggerForFacility();

                        v131 = AXOSLogLevelFromAXLogLevel();
                        if (os_log_type_enabled(v125, v131))
                        {
                          v164 = AXColorizeFormatLog();
                          modea = _AXStringForArgs();
                          if (os_log_type_enabled(v125, v131))
                          {
                            *v188 = 138543362;
                            v189 = modea;
                            _os_log_impl(&dword_0, v125, v131, "%{public}@", v188, 0xCu);
                            v127 = modea;
                            __buf = 0;
                            v4 = v175;
                            v30 = v173;
                            goto LABEL_155;
                          }

                          __buf = 0;
                          v4 = v175;
                          v30 = v173;
                          goto LABEL_174;
                        }

                        __buf = 0;
                        v4 = v175;
                        v30 = v173;
                        goto LABEL_171;
                      }

                      __buf = 0;
                      v4 = v175;
                      v30 = v173;
LABEL_144:
                      v69 = v158;
LABEL_104:
                      [(SCRDFileReader *)v33->_readerThread invalidate:bluetoothChannelIsLost];
                      v110 = v33->_readerThread;
                      v33->_readerThread = 0;

                      v111 = v33->_safeReadBuffer;
                      if (v111)
                      {
                        CFRelease(v111);
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

                      v113 = v33->_readBufferLock;
                      v114 = v33->_readBufferLock;
                      v33->_readBufferLock = 0;

                      [(NSLock *)v113 unlock];
                      device = v33->_device;
                      v33->_device = 0;

                      v33->_comPort = -1;
                      if (__buf)
                      {
                        free(__buf);
                      }

                      if (v78)
                      {
                        free(v78);
                      }

                      writeBuffer = v33->_writeBuffer;
                      if (writeBuffer)
                      {
                        free(writeBuffer);
                        v33->_writeBuffer = 0;
                      }

                      v117 = v33->_modelIdentifier;
                      v33->_modelIdentifier = 0;

                      v26 = 2;
LABEL_115:

                      goto LABEL_116;
                    }
                  }
                }

                v78 = 0;
                __buf = 0;
                v4 = v175;
              }

              else
              {
                v78 = 0;
                __buf = 0;
              }

              v30 = v173;
              goto LABEL_104;
            }

            v103 = +[AXSubsystemBrailleHardware sharedInstance];
            v104 = [v103 ignoreLogging];

            v31 = v171;
            if ((v104 & 1) == 0)
            {
              v170 = v32;
              v105 = +[AXSubsystemBrailleHardware identifier];
              v106 = AXLoggerForFacility();

              v107 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v106, v107))
              {
                v108 = AXColorizeFormatLog();
                bluetoothChannelIsLost = v172->_comPort;
                v109 = _AXStringForArgs();
                if (os_log_type_enabled(v106, v107))
                {
                  *v188 = 138543362;
                  v189 = v109;
                  _os_log_impl(&dword_0, v106, v107, "%{public}@", v188, 0xCu);
                }

                v31 = v171;
              }

              v32 = v170;
            }

            v172->_comPort = -1;
          }

          else
          {
            v53 = +[AXSubsystemBrailleHardware sharedInstance];
            v54 = [v53 ignoreLogging];

            v29 = v174;
            if ((v54 & 1) == 0)
            {
              v167 = v32;
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
                  *buf = 138543362;
                  v191 = v60;
                  _os_log_impl(&dword_0, v56, v57, "%{public}@", buf, 0xCu);
                }

                v31 = v58;
              }

              v32 = v167;
            }
          }

          [v32 removeObserver:{v172, bluetoothChannelIsLost}];
          v26 = 1;
          v4 = v175;
          v30 = v173;
LABEL_117:

          goto LABEL_118;
        }
      }

      else
      {
LABEL_20:
      }

      v43 = +[AXSubsystemBrailleHardware sharedInstance];
      v44 = [v43 ignoreLogging];

      v4 = v175;
      if (v44)
      {
        v26 = 1;
        v30 = v173;
        v29 = v174;
LABEL_119:

LABEL_120:
        goto LABEL_121;
      }

      v47 = +[AXSubsystemBrailleHardware identifier];
      v31 = AXLoggerForFacility();

      v26 = 1;
      v48 = AXOSLogLevelFromAXLogLevel();
      v29 = v174;
      if (!os_log_type_enabled(v31, v48))
      {
        v30 = v173;
LABEL_118:

        goto LABEL_119;
      }

      v49 = AXColorizeFormatLog();
      v50 = _AXStringForArgs();
      if (os_log_type_enabled(v31, v48))
      {
        *buf = 138543362;
        v191 = v50;
        _os_log_impl(&dword_0, v31, v48, "%{public}@", buf, 0xCu);
      }

      v30 = v173;
      v32 = v49;
      goto LABEL_117;
    }

    v45 = +[AXSubsystemBrailleHardware sharedInstance];
    v46 = [v45 ignoreLogging];

    if ((v46 & 1) == 0)
    {
      v51 = +[AXSubsystemBrailleHardware identifier];
      v29 = AXLoggerForFacility();

      v26 = 1;
      v52 = AXOSLogLevelFromAXLogLevel();
      if (!os_log_type_enabled(v29, v52))
      {
LABEL_121:

        goto LABEL_122;
      }

      v30 = AXColorizeFormatLog();
      v14 = _AXStringForArgs();
      if (os_log_type_enabled(v29, v52))
      {
        *buf = 138543362;
        v191 = v14;
        _os_log_impl(&dword_0, v29, v52, "%{public}@", buf, 0xCu);
      }

      goto LABEL_119;
    }

    v26 = 1;
LABEL_122:

    goto LABEL_123;
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
        *buf = 138543362;
        v191 = v30;
        _os_log_impl(&dword_0, v12, v28, "%{public}@", buf, 0xCu);
      }

      goto LABEL_120;
    }

    goto LABEL_122;
  }

  v26 = 1;
LABEL_123:

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
        v21 = 138543362;
        v22 = v9;
        _os_log_impl(&dword_0, v6, v7, "%{public}@", &v21, 0xCu);
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
    queuedMainCellsBuffer = self->_queuedMainCellsBuffer;
    if (queuedMainCellsBuffer)
    {
      CFRelease(queuedMainCellsBuffer);
      self->_queuedMainCellsBuffer = 0;
    }

    writeBuffer = self->_writeBuffer;
    if (writeBuffer)
    {
      free(writeBuffer);
      self->_writeBuffer = 0;
    }

    self->_writeBufferNeedsFlush = 0;
    self->_nextWriteTime = -3061152000.0;
    modelIdentifier = self->_modelIdentifier;
    self->_modelIdentifier = 0;

    self->_mainSize = 0;
    self->_statusSize = 0;
    self->_isShiftKeyDown = 0;
  }

  return 1;
}

- (id)getInputEvents
{
  [(MSCROMDVBrailleDriver *)self _flushWriteBuffer];
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

  return _SCRDMDVSerialExtractEventsFromBuffer(v8, &self->_isShiftKeyDown, deviceID);
}

- (BOOL)setMainCells:(const char *)a3 length:(int64_t)a4
{
  if (a4 >= 1)
  {
    v7 = &self->_writeBuffer[self->_writeBufferStatusCellOffset];
    v8 = a4;
    do
    {
      v9 = *a3++;
      *v7++ = SCRDMDVConvertStandardCellToMDVCell();
      --v8;
    }

    while (v8);
  }

  mainSize = self->_mainSize;
  if (mainSize > a4)
  {
    bzero(&self->_writeBuffer[a4 + self->_writeBufferStatusCellOffset], mainSize - a4);
  }

  self->_writeBufferNeedsFlush = 1;
  [(MSCROMDVBrailleDriver *)self _flushWriteBuffer];
  return 1;
}

- (BOOL)setStatusCells:(const char *)a3 length:(int64_t)a4
{
  if (a4 >= 1)
  {
    for (i = 0; i != a4; ++i)
    {
      v8 = a3[i];
      self->_writeBuffer[i] = SCRDMDVConvertStandardCellToMDVCell();
    }
  }

  statusSize = self->_statusSize;
  if (statusSize > a4)
  {
    bzero(&self->_writeBuffer[a4], statusSize - a4);
  }

  self->_writeBufferNeedsFlush = 1;
  [(MSCROMDVBrailleDriver *)self _flushWriteBuffer];
  return 1;
}

- (void)_flushWriteBuffer
{
  if (self->_writeBufferNeedsFlush)
  {
    nextWriteTime = self->_nextWriteTime;
    if (nextWriteTime < CFAbsoluteTimeGetCurrent())
    {
      writeBuffer = self->_writeBuffer;
      writeBufferSize_low = LOBYTE(self->_writeBufferSize);
      Request = SCRDMDVSerialCreateRequest();
      if (Request)
      {
        v7 = Request;
        comPort = self->_comPort;
        if (comPort != -1 && !write(comPort, v7, 0))
        {
          self->_writeBufferNeedsFlush = 0;
        }

        self->_nextWriteTime = CFAbsoluteTimeGetCurrent() + 0.005;
        free(v7);
      }
    }
  }
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