@interface MSCROPapenmeierBrailleDriver
- (BOOL)setMainCells:(const char *)a3 length:(int64_t)a4;
- (BOOL)unloadDriver;
- (MSCROPapenmeierBrailleDriver)init;
- (id)getInputEvents;
- (int)loadDriverWithIOElement:(id)a3;
- (void)dealloc;
- (void)fileReader:(id)a3 data:(const void *)a4 length:(unint64_t)a5;
- (void)removeDeviceNotification:(id)a3;
@end

@implementation MSCROPapenmeierBrailleDriver

- (MSCROPapenmeierBrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCROPapenmeierBrailleDriver;
  result = [(MSCROPapenmeierBrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCROPapenmeierBrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCROPapenmeierBrailleDriver;
  [(MSCROPapenmeierBrailleDriver *)&v3 dealloc];
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
        v181 = v11;
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
        [(MSCROPapenmeierBrailleDriver *)self unloadDriver];
      }

      v170 = self;
      v171 = [v12 infoDictionary];
      [v171 objectForKey:kSCROBrailleDriverModels];
      v173 = v172 = v4;
      v14 = [v4 bluetoothAddress];
      v174 = 0u;
      v175 = 0u;
      v176 = 0u;
      v177 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      v16 = [v15 pairedDevices];

      v17 = [v16 countByEnumeratingWithState:&v174 objects:v182 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v175;
LABEL_14:
        v20 = 0;
        while (1)
        {
          if (*v175 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v174 + 1) + 8 * v20);
          v22 = [v21 address];
          v23 = [v22 isEqualToString:v14];

          if (v23)
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = [v16 countByEnumeratingWithState:&v174 objects:v182 count:16];
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
          goto LABEL_37;
        }

        v32 = v31;
        v33 = +[NSNotificationCenter defaultCenter];
        v34 = v170;
        [v33 addObserver:v170 selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
        v169 = v33;
        [v33 addObserver:v170 selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];
        if (([v32 connected]& 1) != 0)
        {
          [v32 device];
          ComPortForServiceWithSandboxExtension = BTDeviceGetComPortForServiceWithSandboxExtension();
          if (ComPortForServiceWithSandboxExtension)
          {
            v36 = ComPortForServiceWithSandboxExtension;
            v37 = +[AXSubsystemBrailleHardware sharedInstance];
            v38 = [v37 ignoreLogging];

            if ((v38 & 1) == 0)
            {
              v39 = v32;
              v40 = +[AXSubsystemBrailleHardware identifier];
              v41 = AXLoggerForFacility();

              v42 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v41, v42))
              {
                v43 = AXColorizeFormatLog();
                v159 = v36;
                v44 = _AXStringForArgs();
                if (os_log_type_enabled(v41, v42))
                {
                  *v178 = 138543362;
                  v179 = v44;
                  _os_log_impl(&dword_0, v41, v42, "%{public}@", v178, 0xCu);
                }
              }

              v32 = v39;
            }

            v45 = v169;
            [v169 removeObserver:{v170, v159}];
          }

          else
          {
            if (sandbox_extension_consume() == -1)
            {
              v66 = +[AXSubsystemBrailleHardware sharedInstance];
              v67 = [v66 ignoreLogging];

              if ((v67 & 1) == 0)
              {
                v68 = +[AXSubsystemBrailleHardware identifier];
                v69 = AXLoggerForFacility();

                v70 = AXOSLogLevelFromAXLogLevel();
                if (os_log_type_enabled(v69, v70))
                {
                  v71 = v32;
                  v72 = AXColorizeFormatLog();
                  v159 = *__error();
                  v73 = _AXStringForArgs();
                  if (os_log_type_enabled(v69, v70))
                  {
                    *v178 = 138543362;
                    v179 = v73;
                    _os_log_impl(&dword_0, v69, v70, "%{public}@", v178, 0xCu);
                  }

                  v32 = v71;
                }
              }
            }

            v74 = open(buf, 131074, v159);
            v170->_comPort = v74;
            if ((v74 & 0x80000000) == 0)
            {
              objc_storeStrong(&v170->_device, v21);
              v75 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:v170->_comPort closeOnDealloc:1];
              v76 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:v170 fileHandle:v75];
              readerThread = v170->_readerThread;
              v170->_readerThread = v76;

              Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
              v170->_safeReadBuffer = Mutable;
              if (!Mutable)
              {
                goto LABEL_125;
              }

              v79 = [objc_allocWithZone(NSLock) init];
              readBufferLock = v170->_readBufferLock;
              v170->_readBufferLock = v79;

              v81 = v169;
              if (v170->_readBufferLock)
              {
                v82 = CFDataCreateMutable(kCFAllocatorDefault, 0);
                v170->_readBuffer = v82;
                if (v82)
                {
                  IdentityRequestBuffer = SCRDPapenmeierCreateIdentityRequestBuffer();
                  if (IdentityRequestBuffer)
                  {
                    v84 = IdentityRequestBuffer;
                    v167 = v32;
                    [(SCRDFileReader *)v170->_readerThread start];
                    v85 = 0;
                    v86 = kCFRunLoopDefaultMode;
                    while (1)
                    {
                      if (write(v170->_comPort, v84, 0) < 0)
                      {
                        v4 = v172;
                        v30 = v173;
                        v32 = v167;
                        goto LABEL_126;
                      }

                      v170->_bluetoothChannelIsLost = 0;
                      v170->_hasBeenUnloaded = 0;
                      v87 = CFRunLoopRunInMode(v86, 0.1, 0);
                      v88 = v87;
                      if (v170->_bluetoothChannelIsLost || v170->_hasBeenUnloaded || v87 == kCFRunLoopRunStopped)
                      {
                        break;
                      }

                      [(NSLock *)v170->_readBufferLock lock];
                      Length = CFDataGetLength(v170->_readBuffer);
                      if (Length >= 1)
                      {
                        v90 = Length;
                        v91 = v86;
                        safeReadBuffer = v170->_safeReadBuffer;
                        BytePtr = CFDataGetBytePtr(v170->_readBuffer);
                        v94 = safeReadBuffer;
                        v86 = v91;
                        CFDataAppendBytes(v94, BytePtr, v90);
                        v183.location = 0;
                        v183.length = v90;
                        CFDataDeleteBytes(v170->_readBuffer, v183);
                      }

                      [(NSLock *)v170->_readBufferLock unlock];
                      v95 = v170->_safeReadBuffer;
                      PacketFromBuffer = SCRDPapenmeierCreatePacketFromBuffer();
                      if (PacketFromBuffer)
                      {
                        v97 = PacketFromBuffer;
                        while (*v97 != 10 || *(v97 + 2) != 5)
                        {
                          SCRDPapenmeierReleasePacket();
                          v98 = v170->_safeReadBuffer;
                          v97 = SCRDPapenmeierCreatePacketFromBuffer();
                          if (!v97)
                          {
                            goto LABEL_80;
                          }
                        }

                        v108 = v75;
                        v109 = (16 * (**(v97 + 8) & 0xF)) | *(*(v97 + 8) + 1);
                        if (v109 > 98)
                        {
                          if (v109 == 99)
                          {
                            v110 = @"com.apple.scrod.braille.driver.papenmeier.braillex.live.plus";
                          }

                          else
                          {
                            if (v109 != 100)
                            {
                              goto LABEL_110;
                            }

                            v110 = @"com.apple.scrod.braille.driver.papenmeier.braillex.live.20";
                          }
                        }

                        else
                        {
                          if (v109 != 89)
                          {
                            if (v109 == 98)
                            {
                              v110 = @"com.apple.scrod.braille.driver.papenmeier.braillex.live";
                              goto LABEL_109;
                            }

LABEL_110:
                            SCRDPapenmeierReleasePacket();
                            v170->_deviceID = v109;
                            v81 = v169;
                            v75 = v108;
LABEL_111:
                            v123 = +[AXSubsystemBrailleHardware sharedInstance];
                            v124 = [v123 ignoreLogging];

                            v32 = v167;
                            if ((v124 & 1) == 0)
                            {
                              v125 = +[AXSubsystemBrailleHardware identifier];
                              v126 = AXLoggerForFacility();

                              v127 = AXOSLogLevelFromAXLogLevel();
                              if (os_log_type_enabled(v126, v127))
                              {
                                v128 = AXColorizeFormatLog();
                                deviceID = v170->_deviceID;
                                modelIdentifier = v170->_modelIdentifier;
                                v129 = _AXStringForArgs();
                                if (os_log_type_enabled(v126, v127))
                                {
                                  *v178 = 138543362;
                                  v179 = v129;
                                  _os_log_impl(&dword_0, v126, v127, "%{public}@", v178, 0xCu);
                                }

                                v32 = v167;
                              }

                              v81 = v169;
                            }

                            v130 = v170->_deviceID;
                            KeyBuffer = SCRDPapenmeierCreateKeyBuffer();
                            v170->_keysDownBuffer = KeyBuffer;
                            if (!KeyBuffer)
                            {
                              v135 = +[AXSubsystemBrailleHardware sharedInstance];
                              v136 = [v135 ignoreLogging];

                              if (v136)
                              {
                                goto LABEL_96;
                              }

                              v137 = +[AXSubsystemBrailleHardware identifier];
                              v138 = AXLoggerForFacility();

                              v116 = v138;
                              v139 = AXOSLogLevelFromAXLogLevel();
                              if (os_log_type_enabled(v138, v139))
                              {
                                v140 = AXColorizeFormatLog();
                                deviceID = v170->_deviceID;
                                v166 = v140;
                                v164 = _AXStringForArgs();
                                if (os_log_type_enabled(v138, v139))
                                {
                                  *v178 = 138543362;
                                  v179 = v164;
                                  _os_log_impl(&dword_0, v138, v139, "%{public}@", v178, 0xCu);
                                  v119 = v164;
                                  v4 = v172;
                                  v30 = v173;
                                  goto LABEL_152;
                                }

                                v4 = v172;
                                v30 = v173;
                                v32 = v167;
                                v119 = v164;
                                goto LABEL_159;
                              }

                              v4 = v172;
                              v30 = v173;
                              v32 = v167;
LABEL_160:

                              goto LABEL_126;
                            }

                            free(v84);
                            v132 = [v173 objectForKey:v170->_modelIdentifier];
                            if (v132)
                            {
                              v133 = v132;
                              v134 = [(NSLock *)v132 objectForKey:kSCROBrailleDriverMainDisplaySize];
                              v170->_mainSize = [v134 unsignedCharValue];

                              v26 = 0;
                              v170->_isDriverLoaded = 1;
                              v4 = v172;
                              v30 = v173;
                              goto LABEL_135;
                            }

                            v141 = +[AXSubsystemBrailleHardware sharedInstance];
                            v142 = [v141 ignoreLogging];

                            if (v142)
                            {
LABEL_125:
                              v84 = 0;
                              v4 = v172;
                              v30 = v173;
                              v81 = v169;
                              goto LABEL_126;
                            }

                            v155 = +[AXSubsystemBrailleHardware identifier];
                            v156 = AXLoggerForFacility();

                            v116 = v156;
                            v157 = AXOSLogLevelFromAXLogLevel();
                            if (os_log_type_enabled(v156, v157))
                            {
                              v158 = AXColorizeFormatLog();
                              deviceID = v170->_modelIdentifier;
                              v166 = v158;
                              _AXStringForArgs();
                              v165 = v163 = v156;
                              if (os_log_type_enabled(v156, v157))
                              {
                                *v178 = 138543362;
                                v116 = v156;
                                v179 = v165;
                                _os_log_impl(&dword_0, v156, v157, "%{public}@", v178, 0xCu);
                                v119 = v165;
                                v84 = 0;
LABEL_151:
                                v4 = v172;
                                v30 = v173;
                                v81 = v169;
                                v34 = v170;
LABEL_152:
                                v32 = v167;
                                goto LABEL_159;
                              }

                              v84 = 0;
LABEL_158:
                              v4 = v172;
                              v30 = v173;
                              v81 = v169;
                              v34 = v170;
                              v32 = v167;
                              v116 = v163;
                              v119 = v165;
LABEL_159:

                              goto LABEL_160;
                            }

                            v84 = 0;
LABEL_155:
                            v4 = v172;
                            v30 = v173;
                            v32 = v167;
                            v81 = v169;
                            goto LABEL_160;
                          }

                          v110 = @"com.apple.scrod.braille.driver.papenmeier.braillex.trio.40";
                        }

LABEL_109:
                        v122 = v170->_modelIdentifier;
                        v170->_modelIdentifier = &v110->isa;

                        goto LABEL_110;
                      }

LABEL_80:
                      v99 = v85++ >= 4;
                      v81 = v169;
                      if (v99)
                      {
                        goto LABEL_111;
                      }
                    }

                    v120 = +[AXSubsystemBrailleHardware sharedInstance];
                    v121 = [v120 ignoreLogging];

                    if (v121)
                    {
                      v4 = v172;
                      v30 = v173;
                      v32 = v167;
                      v81 = v169;
                      goto LABEL_126;
                    }

                    v151 = +[AXSubsystemBrailleHardware identifier];
                    v152 = AXLoggerForFacility();

                    v116 = v152;
                    v153 = AXOSLogLevelFromAXLogLevel();
                    if (os_log_type_enabled(v152, v153))
                    {
                      v154 = AXColorizeFormatLog();
                      modelIdentifier = v170->_hasBeenUnloaded;
                      v162 = v88;
                      deviceID = v170->_bluetoothChannelIsLost;
                      v166 = v154;
                      _AXStringForArgs();
                      v165 = v163 = v152;
                      if (os_log_type_enabled(v152, v153))
                      {
                        *v178 = 138543362;
                        v116 = v152;
                        v179 = v165;
                        _os_log_impl(&dword_0, v152, v153, "%{public}@", v178, 0xCu);
                        v119 = v165;
                        goto LABEL_151;
                      }

                      goto LABEL_158;
                    }

                    goto LABEL_155;
                  }

                  v111 = +[AXSubsystemBrailleHardware sharedInstance];
                  v112 = [v111 ignoreLogging];

                  if ((v112 & 1) == 0)
                  {
                    v168 = v75;
                    v113 = v32;
                    v114 = +[AXSubsystemBrailleHardware identifier];
                    v115 = AXLoggerForFacility();

                    v116 = v115;
                    v117 = AXOSLogLevelFromAXLogLevel();
                    if (os_log_type_enabled(v115, v117))
                    {
                      v166 = AXColorizeFormatLog();
                      v118 = _AXStringForArgs();
                      if (os_log_type_enabled(v116, v117))
                      {
                        *v178 = 138543362;
                        v179 = v118;
                        _os_log_impl(&dword_0, v116, v117, "%{public}@", v178, 0xCu);
                      }

                      v84 = 0;
                      v119 = v118;
                      v4 = v172;
                      v30 = v173;
                      v32 = v113;
                      v75 = v168;
                      goto LABEL_159;
                    }

                    v84 = 0;
                    v4 = v172;
                    v30 = v173;
                    v32 = v113;
                    v75 = v168;
                    goto LABEL_160;
                  }
                }
              }

              v84 = 0;
LABEL_96:
              v4 = v172;
              v30 = v173;
LABEL_126:
              [(SCRDFileReader *)v34->_readerThread invalidate:deviceID];
              v143 = v34->_readerThread;
              v34->_readerThread = 0;

              v144 = v34->_safeReadBuffer;
              if (v144)
              {
                CFRelease(v144);
                v34->_safeReadBuffer = 0;
              }

              [v81 removeObserver:v34];
              [(NSLock *)v34->_readBufferLock lock];
              readBuffer = v34->_readBuffer;
              if (readBuffer)
              {
                CFRelease(readBuffer);
                v34->_readBuffer = 0;
              }

              v133 = v34->_readBufferLock;
              v146 = v34->_readBufferLock;
              v34->_readBufferLock = 0;

              [(NSLock *)v133 unlock];
              keysDownBuffer = v34->_keysDownBuffer;
              if (keysDownBuffer)
              {
                free(keysDownBuffer);
                v34->_keysDownBuffer = 0;
              }

              if (v84)
              {
                free(v84);
              }

              device = v34->_device;
              v34->_device = 0;

              v34->_comPort = -1;
              v149 = v34->_modelIdentifier;
              v34->_modelIdentifier = 0;

              v26 = 2;
LABEL_135:

              v45 = v169;
              goto LABEL_136;
            }

            v100 = +[AXSubsystemBrailleHardware sharedInstance];
            v101 = [v100 ignoreLogging];

            if ((v101 & 1) == 0)
            {
              v102 = v32;
              v103 = +[AXSubsystemBrailleHardware identifier];
              v104 = AXLoggerForFacility();

              v105 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v104, v105))
              {
                v106 = AXColorizeFormatLog();
                deviceID = v170->_comPort;
                v107 = _AXStringForArgs();
                if (os_log_type_enabled(v104, v105))
                {
                  *v178 = 138543362;
                  v179 = v107;
                  _os_log_impl(&dword_0, v104, v105, "%{public}@", v178, 0xCu);
                }
              }

              v32 = v102;
            }

            v45 = v169;
            [v169 removeObserver:{v170, deviceID}];
            v170->_comPort = -1;
          }

          v26 = 1;
          v4 = v172;
          v30 = v173;
LABEL_136:
          v29 = v171;
          goto LABEL_137;
        }

        v58 = +[AXSubsystemBrailleHardware sharedInstance];
        v59 = [v58 ignoreLogging];

        if ((v59 & 1) == 0)
        {
          v60 = v32;
          v61 = +[AXSubsystemBrailleHardware identifier];
          v62 = AXLoggerForFacility();

          v63 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v62, v63))
          {
            v64 = AXColorizeFormatLog();
            v65 = _AXStringForArgs();
            if (os_log_type_enabled(v62, v63))
            {
              *buf = 138543362;
              v181 = v65;
              _os_log_impl(&dword_0, v62, v63, "%{public}@", buf, 0xCu);
            }
          }

          v32 = v60;
        }

        v45 = v169;
        [v169 removeObserver:v170];
        v26 = 1;
        v29 = v171;
        v4 = v172;
        v30 = v173;
      }

      else
      {
LABEL_20:

LABEL_37:
        v46 = +[AXSubsystemBrailleHardware sharedInstance];
        v47 = [v46 ignoreLogging];

        v4 = v172;
        if (v47)
        {
          v26 = 1;
          v29 = v171;
          v30 = v173;
LABEL_139:

LABEL_140:
          goto LABEL_141;
        }

        v50 = +[AXSubsystemBrailleHardware identifier];
        v32 = AXLoggerForFacility();

        v26 = 1;
        v51 = AXOSLogLevelFromAXLogLevel();
        v29 = v171;
        if (!os_log_type_enabled(v32, v51))
        {
          v30 = v173;
LABEL_138:

          goto LABEL_139;
        }

        v45 = AXColorizeFormatLog();
        v52 = _AXStringForArgs();
        v53 = v32;
        v54 = v52;
        v55 = v53;
        if (os_log_type_enabled(v53, v51))
        {
          *buf = 138543362;
          v181 = v54;
          _os_log_impl(&dword_0, v55, v51, "%{public}@", buf, 0xCu);
        }

        v30 = v173;
        v32 = v55;
      }

LABEL_137:

      goto LABEL_138;
    }

    v48 = +[AXSubsystemBrailleHardware sharedInstance];
    v49 = [v48 ignoreLogging];

    if ((v49 & 1) == 0)
    {
      v56 = +[AXSubsystemBrailleHardware identifier];
      v29 = AXLoggerForFacility();

      v26 = 1;
      v57 = AXOSLogLevelFromAXLogLevel();
      if (!os_log_type_enabled(v29, v57))
      {
LABEL_141:

        goto LABEL_142;
      }

      v30 = AXColorizeFormatLog();
      v14 = _AXStringForArgs();
      if (os_log_type_enabled(v29, v57))
      {
        *buf = 138543362;
        v181 = v14;
        _os_log_impl(&dword_0, v29, v57, "%{public}@", buf, 0xCu);
      }

      goto LABEL_139;
    }

    v26 = 1;
LABEL_142:

    goto LABEL_143;
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
        v181 = v30;
        _os_log_impl(&dword_0, v12, v28, "%{public}@", buf, 0xCu);
      }

      goto LABEL_140;
    }

    goto LABEL_142;
  }

  v26 = 1;
LABEL_143:

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
    keysDownBuffer = self->_keysDownBuffer;
    if (keysDownBuffer)
    {
      free(keysDownBuffer);
      self->_keysDownBuffer = 0;
    }
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
      v13.location = 0;
      v13.length = v5;
      CFDataDeleteBytes(self->_readBuffer, v13);
    }
  }

  [(NSLock *)self->_readBufferLock unlock];
  deviceID = self->_deviceID;
  v9 = self->_safeReadBuffer;
  keysDownBuffer = self->_keysDownBuffer;

  return _SCRDPapenmeierExtractEventsFromBuffer(v9, deviceID, keysDownBuffer);
}

- (BOOL)setMainCells:(const char *)a3 length:(int64_t)a4
{
  mainSize_low = LOBYTE(self->_mainSize);
  BrailleBufferB = SCRDPapenmeierCreateBrailleBufferB();
  if (!BrailleBufferB)
  {
    return 0;
  }

  v7 = BrailleBufferB;
  comPort = self->_comPort;
  v9 = comPort != -1 && write(comPort, v7, 0) == 0;
  free(v7);
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