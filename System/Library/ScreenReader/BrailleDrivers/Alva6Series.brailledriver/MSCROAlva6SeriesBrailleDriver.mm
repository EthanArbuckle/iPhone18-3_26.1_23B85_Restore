@interface MSCROAlva6SeriesBrailleDriver
- (BOOL)setMainCells:(const char *)cells length:(int64_t)length;
- (BOOL)unloadDriver;
- (MSCROAlva6SeriesBrailleDriver)init;
- (id)getInputEvents;
- (int)brailleInputMode;
- (int)loadDriverWithIOElement:(id)element;
- (void)dealloc;
- (void)fileReader:(id)reader data:(const void *)data length:(unint64_t)length;
- (void)removeDeviceNotification:(id)notification;
@end

@implementation MSCROAlva6SeriesBrailleDriver

- (MSCROAlva6SeriesBrailleDriver)init
{
  v3.receiver = self;
  v3.super_class = MSCROAlva6SeriesBrailleDriver;
  result = [(MSCROAlva6SeriesBrailleDriver *)&v3 init];
  if (result)
  {
    result->_isDriverLoaded = 0;
    result->_comPort = -1;
  }

  return result;
}

- (void)dealloc
{
  [(MSCROAlva6SeriesBrailleDriver *)self unloadDriver];
  v3.receiver = self;
  v3.super_class = MSCROAlva6SeriesBrailleDriver;
  [(MSCROAlva6SeriesBrailleDriver *)&v3 dealloc];
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
        v219 = v11;
        _os_log_impl(&dword_0, v8, v9, "%{public}@", buf, 0xCu);
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
        [(MSCROAlva6SeriesBrailleDriver *)self unloadDriver];
      }

      v202 = v12;
      infoDictionary = [v12 infoDictionary];
      v203 = [infoDictionary objectForKey:kSCROBrailleDriverModels];
      bluetoothAddress = [elementCopy bluetoothAddress];
      v212 = 0u;
      v213 = 0u;
      v214 = 0u;
      v215 = 0u;
      v15 = +[BluetoothManager sharedInstance];
      pairedDevices = [v15 pairedDevices];

      v17 = [pairedDevices countByEnumeratingWithState:&v212 objects:v220 count:16];
      if (v17)
      {
        v18 = v17;
        v19 = *v213;
LABEL_14:
        v20 = 0;
        while (1)
        {
          if (*v213 != v19)
          {
            objc_enumerationMutation(pairedDevices);
          }

          v21 = *(*(&v212 + 1) + 8 * v20);
          address = [v21 address];
          v23 = [address isEqualToString:bluetoothAddress];

          if (v23)
          {
            break;
          }

          if (v18 == ++v20)
          {
            v18 = [pairedDevices countByEnumeratingWithState:&v212 objects:v220 count:16];
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
          [v32 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectSuccessNotification object:0];
          [v32 addObserver:self selector:"removeDeviceNotification:" name:BluetoothDeviceDisconnectFailedNotification object:0];
          log = v31;
          if (([v31 connected]& 1) == 0)
          {
            v55 = +[AXSubsystemBrailleHardware sharedInstance];
            ignoreLogging2 = [v55 ignoreLogging];

            v30 = v203;
            if ((ignoreLogging2 & 1) == 0)
            {
              v37 = v32;
              v57 = +[AXSubsystemBrailleHardware identifier];
              v39 = AXLoggerForFacility();

              v58 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v39, v58))
              {
                v59 = AXColorizeFormatLog();
                v60 = _AXStringForArgs();
                if (os_log_type_enabled(v39, v58))
                {
                  *buf = 138543362;
                  v219 = v60;
                  _os_log_impl(&dword_0, v39, v58, "%{public}@", buf, 0xCu);
                }
              }

              goto LABEL_50;
            }

LABEL_51:
            [v32 removeObserver:{self, comPort}];
            v26 = 1;
            v12 = v202;
            goto LABEL_52;
          }

          [v31 device];
          ComPortForServiceWithSandboxExtension = BTDeviceGetComPortForServiceWithSandboxExtension();
          if (ComPortForServiceWithSandboxExtension)
          {
            v34 = ComPortForServiceWithSandboxExtension;
            v35 = +[AXSubsystemBrailleHardware sharedInstance];
            ignoreLogging3 = [v35 ignoreLogging];

            v30 = v203;
            if ((ignoreLogging3 & 1) == 0)
            {
              v37 = v32;
              v38 = +[AXSubsystemBrailleHardware identifier];
              v39 = AXLoggerForFacility();

              v40 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v39, v40))
              {
                v41 = AXColorizeFormatLog();
                comPort = v34;
                v42 = _AXStringForArgs();
                if (os_log_type_enabled(v39, v40))
                {
                  *v216 = 138543362;
                  v217 = v42;
                  _os_log_impl(&dword_0, v39, v40, "%{public}@", v216, 0xCu);
                }
              }

LABEL_50:

              v32 = v37;
              goto LABEL_51;
            }

            goto LABEL_51;
          }

          v30 = v203;
          if (sandbox_extension_consume() == -1)
          {
            v62 = +[AXSubsystemBrailleHardware sharedInstance];
            ignoreLogging4 = [v62 ignoreLogging];

            if ((ignoreLogging4 & 1) == 0)
            {
              v64 = +[AXSubsystemBrailleHardware identifier];
              v65 = AXLoggerForFacility();

              v66 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v65, v66))
              {
                v67 = v32;
                v68 = AXColorizeFormatLog();
                comPort = *__error();
                v69 = _AXStringForArgs();
                if (os_log_type_enabled(v65, v66))
                {
                  *v216 = 138543362;
                  v217 = v69;
                  _os_log_impl(&dword_0, v65, v66, "%{public}@", v216, 0xCu);
                }

                v32 = v67;
              }
            }
          }

          v70 = open(buf, 131074, comPort);
          self->_comPort = v70;
          if (v70 < 0)
          {
            v136 = +[AXSubsystemBrailleHardware sharedInstance];
            ignoreLogging5 = [v136 ignoreLogging];

            if ((ignoreLogging5 & 1) == 0)
            {
              v138 = v32;
              v139 = +[AXSubsystemBrailleHardware identifier];
              v140 = AXLoggerForFacility();

              v141 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v140, v141))
              {
                v142 = AXColorizeFormatLog();
                comPort = self->_comPort;
                v143 = _AXStringForArgs();
                if (os_log_type_enabled(v140, v141))
                {
                  *v216 = 138543362;
                  v217 = v143;
                  _os_log_impl(&dword_0, v140, v141, "%{public}@", v216, 0xCu);
                }
              }

              v32 = v138;
            }

            self->_comPort = -1;
            goto LABEL_51;
          }

          objc_storeStrong(&self->_device, v21);
          v196 = [objc_allocWithZone(NSFileHandle) initWithFileDescriptor:self->_comPort closeOnDealloc:1];
          v71 = [objc_allocWithZone(SCRDFileReader) initWithDelegate:self fileHandle:v196];
          readerThread = self->_readerThread;
          self->_readerThread = v71;

          Mutable = CFDataCreateMutable(kCFAllocatorDefault, 0);
          self->_safeReadBuffer = Mutable;
          if (!Mutable)
          {
            goto LABEL_171;
          }

          v74 = [objc_allocWithZone(NSLock) init];
          readBufferLock = self->_readBufferLock;
          self->_readBufferLock = v74;

          if (!self->_readBufferLock)
          {
            goto LABEL_171;
          }

          v76 = CFDataCreateMutable(kCFAllocatorDefault, 0);
          self->_readBuffer = v76;
          if (!v76)
          {
            goto LABEL_171;
          }

          [(SCRDFileReader *)self->_readerThread start];
          LOBYTE(v77) = 0;
          v78 = 0;
          v79 = 0;
          v194 = v32;
          while (1)
          {
            modelIdentifier = self->_modelIdentifier;
            if (modelIdentifier || (v77 & 1) != 0 || (v78 & 1) != 0)
            {
              goto LABEL_133;
            }

            v211 = 63;
            __buf = 16155;
            if (write(self->_comPort, &__buf, 3uLL) <= 2)
            {
              v151 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging6 = [v151 ignoreLogging];

              if (ignoreLogging6)
              {
                goto LABEL_171;
              }

              v153 = v32;
              v154 = +[AXSubsystemBrailleHardware identifier];
              v155 = AXLoggerForFacility();

              v156 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v155, v156))
              {
                v157 = AXColorizeFormatLog();
                v158 = _AXStringForArgs();
                if (os_log_type_enabled(v155, v156))
                {
                  *v216 = 138543362;
                  v217 = v158;
                  goto LABEL_167;
                }

                goto LABEL_168;
              }

              goto LABEL_169;
            }

            v209 = 63;
            v208 = 17691;
            if (write(self->_comPort, &v208, 3uLL) <= 2)
            {
              break;
            }

            v207 = 1;
            v206 = 29211;
            if (write(self->_comPort, &v206, 3uLL) <= 2)
            {
              v162 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging7 = [v162 ignoreLogging];

              if (ignoreLogging7)
              {
                goto LABEL_171;
              }

              v153 = v32;
              v164 = +[AXSubsystemBrailleHardware identifier];
              v155 = AXLoggerForFacility();

              v156 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v155, v156))
              {
                v157 = AXColorizeFormatLog();
                v158 = _AXStringForArgs();
                if (os_log_type_enabled(v155, v156))
                {
                  *v216 = 138543362;
                  v217 = v158;
LABEL_167:
                  _os_log_impl(&dword_0, v155, v156, "%{public}@", v216, 0xCu);
                }

                goto LABEL_168;
              }

              goto LABEL_169;
            }

            v205 = 63;
            v204 = 19995;
            if (write(self->_comPort, &v204, 3uLL) <= 2)
            {
              v175 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging8 = [v175 ignoreLogging];

              if (ignoreLogging8)
              {
                goto LABEL_190;
              }

              v177 = +[AXSubsystemBrailleHardware identifier];
              v147 = AXLoggerForFacility();

              v178 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v147, v178))
              {
                v149 = AXColorizeFormatLog();
                v150 = _AXStringForArgs();
                if (os_log_type_enabled(v147, v178))
                {
                  *v216 = 138543362;
                  v217 = v150;
                  _os_log_impl(&dword_0, v147, v178, "%{public}@", v216, 0xCu);
                }

                v30 = v203;
LABEL_183:
              }

LABEL_184:

              goto LABEL_190;
            }

            self->_bluetoothChannelIsLost = 0;
            self->_hasBeenUnloaded = 0;
            v81 = CFRunLoopRunInMode(kCFRunLoopDefaultMode, 0.5, 0);
            v82 = v81;
            if (self->_bluetoothChannelIsLost || self->_hasBeenUnloaded || v81 == kCFRunLoopRunStopped)
            {
              v144 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging9 = [v144 ignoreLogging];

              if (ignoreLogging9)
              {
                goto LABEL_190;
              }

              v146 = +[AXSubsystemBrailleHardware identifier];
              v147 = AXLoggerForFacility();

              v148 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v147, v148))
              {
                v149 = AXColorizeFormatLog();
                hasBeenUnloaded = self->_hasBeenUnloaded;
                v193 = v82;
                comPort = self->_bluetoothChannelIsLost;
                v150 = _AXStringForArgs();
                if (os_log_type_enabled(v147, v148))
                {
                  *v216 = 138543362;
                  v217 = v150;
                  _os_log_impl(&dword_0, v147, v148, "%{public}@", v216, 0xCu);
                }

                goto LABEL_183;
              }

              goto LABEL_184;
            }

            v195 = v79;
            [(NSLock *)self->_readBufferLock lock];
            Length = CFDataGetLength(self->_readBuffer);
            if (Length >= 1)
            {
              v84 = Length;
              safeReadBuffer = self->_safeReadBuffer;
              BytePtr = CFDataGetBytePtr(self->_readBuffer);
              CFDataAppendBytes(safeReadBuffer, BytePtr, v84);
              v221.location = 0;
              v221.length = v84;
              CFDataDeleteBytes(self->_readBuffer, v221);
            }

            [(NSLock *)self->_readBufferLock unlock];
            v87 = self->_safeReadBuffer;
            SCRDAdvanceBufferToPacketStart();
            v88 = CFDataGetLength(self->_safeReadBuffer);
            if (v88 >= 3)
            {
              v89 = v88;
              v77 = 0;
              v198 = 0;
              while (1)
              {
                v90 = CFDataGetBytePtr(self->_safeReadBuffer);
                v91 = v90;
                v92 = v90[1];
                if (v92 <= 0x4A)
                {
                  break;
                }

                if (v92 != 75)
                {
                  if (v92 != 78)
                  {
                    goto LABEL_107;
                  }

                  if (v89 >= 0xE)
                  {
                    self->_hasFeaturePack = (*(v90 + 2) | *(v90 + 6)) != 0;
                    v223.location = 0;
                    v223.length = 14;
                    CFDataDeleteBytes(self->_safeReadBuffer, v223);
                    v102 = +[AXSubsystemBrailleHardware sharedInstance];
                    ignoreLogging10 = [v102 ignoreLogging];

                    if ((ignoreLogging10 & 1) == 0)
                    {
                      v104 = +[AXSubsystemBrailleHardware identifier];
                      v105 = AXLoggerForFacility();

                      v106 = AXOSLogLevelFromAXLogLevel();
                      if (os_log_type_enabled(v105, v106))
                      {
                        v107 = v77;
                        v108 = AXColorizeFormatLog();
                        comPort = self->_hasFeaturePack;
                        v109 = _AXStringForArgs();
                        if (os_log_type_enabled(v105, v106))
                        {
                          *v216 = 138543362;
                          v217 = v109;
                          _os_log_impl(&dword_0, v105, v106, "%{public}@", v216, 0xCu);
                        }

                        v77 = v107;
                      }
                    }

                    v101 = 1;
                    v198 = 1;
                    goto LABEL_127;
                  }

                  goto LABEL_126;
                }

                if (v89 < 4)
                {
                  v101 = 0;
                  goto LABEL_127;
                }

                if (v90[2] == 1 && write(self->_comPort, &v208, 3uLL) < 3)
                {
                  goto LABEL_190;
                }

                v121 = self->_safeReadBuffer;
                v122.location = 0;
                v122.length = 4;
LABEL_125:
                CFDataDeleteBytes(v121, v122);
LABEL_126:
                v101 = 1;
LABEL_127:
                v124 = self->_safeReadBuffer;
                SCRDAdvanceBufferToPacketStart();
                v125 = CFDataGetLength(self->_safeReadBuffer);
                if (v125 >= 3)
                {
                  v89 = v125;
                  if (v101)
                  {
                    continue;
                  }
                }

                goto LABEL_131;
              }

              if (v92 != 63)
              {
                if (v92 == 69)
                {
                  v93 = v90[2];
                  self->_availableCells = v93;
                  self->_splitPointOffset = LOBYTE(self->_mainSize) - v93;
                  v222.location = 0;
                  v222.length = 3;
                  CFDataDeleteBytes(self->_safeReadBuffer, v222);
                  v94 = +[AXSubsystemBrailleHardware sharedInstance];
                  ignoreLogging11 = [v94 ignoreLogging];

                  if ((ignoreLogging11 & 1) == 0)
                  {
                    v96 = +[AXSubsystemBrailleHardware identifier];
                    v97 = AXLoggerForFacility();

                    v98 = AXOSLogLevelFromAXLogLevel();
                    if (os_log_type_enabled(v97, v98))
                    {
                      v99 = AXColorizeFormatLog();
                      comPort = v91[2];
                      v100 = _AXStringForArgs();
                      if (os_log_type_enabled(v97, v98))
                      {
                        *v216 = 138543362;
                        v217 = v100;
                        _os_log_impl(&dword_0, v97, v98, "%{public}@", v216, 0xCu);
                      }
                    }
                  }

                  v101 = 1;
                  v77 = 1;
                  goto LABEL_127;
                }

LABEL_107:
                v101 = 1;
                v224.location = 0;
                v224.length = 1;
                CFDataDeleteBytes(self->_safeReadBuffer, v224);
                goto LABEL_127;
              }

              v110 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging12 = [v110 ignoreLogging];

              if ((ignoreLogging12 & 1) == 0)
              {
                v197 = v77;
                v112 = +[AXSubsystemBrailleHardware identifier];
                v113 = AXLoggerForFacility();

                v114 = AXOSLogLevelFromAXLogLevel();
                if (os_log_type_enabled(v113, v114))
                {
                  v115 = AXColorizeFormatLog();
                  comPort = v91[2];
                  v116 = _AXStringForArgs();
                  if (os_log_type_enabled(v113, v114))
                  {
                    *v216 = 138543362;
                    v217 = v116;
                    _os_log_impl(&dword_0, v113, v114, "%{public}@", v216, 0xCu);
                  }
                }

                v77 = v197;
              }

              v117 = v91[2];
              if (v117 == 64)
              {
                v118 = 0;
                v119 = @"com.apple.scrod.braille.driver.alva.6.series.BC640";
                v120 = 40;
LABEL_123:
                v123 = self->_modelIdentifier;
                self->_modelIdentifier = &v119->isa;

                self->_deviceID = v118;
                self->_mainSize = v120;
                v30 = v203;
              }

              else if (v117 == 128)
              {
                v118 = 1;
                v119 = @"com.apple.scrod.braille.driver.alva.6.series.BC680";
                v120 = 80;
                goto LABEL_123;
              }

              v121 = self->_safeReadBuffer;
              v122.location = 0;
              v122.length = 3;
              goto LABEL_125;
            }

            v198 = 0;
            LOBYTE(v77) = 0;
LABEL_131:
            v79 = v195 + 1;
            v32 = v194;
            v78 = v198;
            if (v195 == 6)
            {
              modelIdentifier = self->_modelIdentifier;
LABEL_133:
              if (modelIdentifier && (v77 & 1) != 0 && (v78 & 1) != 0)
              {
                v126 = [v30 objectForKey:?];
                if (v126)
                {
                  v127 = v126;
                  if (self->_mainSize < self->_availableCells)
                  {
                    v128 = v32;
                    v129 = +[AXSubsystemBrailleHardware sharedInstance];
                    ignoreLogging13 = [v129 ignoreLogging];

                    if ((ignoreLogging13 & 1) == 0)
                    {
                      v131 = +[AXSubsystemBrailleHardware identifier];
                      v132 = AXLoggerForFacility();

                      v133 = AXOSLogLevelFromAXLogLevel();
                      if (os_log_type_enabled(v132, v133))
                      {
                        v134 = AXColorizeFormatLog();
                        comPort = self->_availableCells;
                        hasBeenUnloaded = self->_mainSize;
                        v135 = _AXStringForArgs();
                        if (os_log_type_enabled(v132, v133))
                        {
                          *v216 = 138543362;
                          v217 = v135;
                          _os_log_impl(&dword_0, v132, v133, "%{public}@", v216, 0xCu);
                        }
                      }
                    }

                    goto LABEL_198;
                  }

                  v26 = 0;
                  self->_isDriverLoaded = 1;
                  v12 = v202;
LABEL_177:

LABEL_52:
                  v29 = infoDictionary;
LABEL_53:

                  goto LABEL_55;
                }

                v128 = v32;
                v184 = +[AXSubsystemBrailleHardware sharedInstance];
                ignoreLogging14 = [v184 ignoreLogging];

                if ((ignoreLogging14 & 1) == 0)
                {
                  v186 = +[AXSubsystemBrailleHardware identifier];
                  v187 = AXLoggerForFacility();

                  v188 = AXOSLogLevelFromAXLogLevel();
                  if (os_log_type_enabled(v187, v188))
                  {
                    v189 = AXColorizeFormatLog();
                    comPort = self->_modelIdentifier;
                    v190 = _AXStringForArgs();
                    if (os_log_type_enabled(v187, v188))
                    {
                      *v216 = 138543362;
                      v217 = v190;
                      _os_log_impl(&dword_0, v187, v188, "%{public}@", v216, 0xCu);
                    }
                  }
                }

                v127 = 0;
LABEL_198:
                v12 = v202;
                v30 = v203;
                v32 = v128;
LABEL_172:
                [(SCRDFileReader *)self->_readerThread invalidate:comPort];
                v168 = self->_readerThread;
                self->_readerThread = 0;

                v169 = self->_safeReadBuffer;
                if (v169)
                {
                  CFRelease(v169);
                  self->_safeReadBuffer = 0;
                }

                [v32 removeObserver:self];
                [(NSLock *)self->_readBufferLock lock];
                readBuffer = self->_readBuffer;
                if (readBuffer)
                {
                  CFRelease(readBuffer);
                  self->_readBuffer = 0;
                }

                v171 = self->_readBufferLock;
                self->_readBufferLock = 0;
                v172 = v171;

                [(NSLock *)v172 unlock];
                device = self->_device;
                self->_device = 0;

                self->_comPort = -1;
                self->_hasFeaturePack = 0;
                v174 = self->_modelIdentifier;
                self->_modelIdentifier = 0;

                v26 = 2;
                goto LABEL_177;
              }

              v165 = v77;
              v199 = v78;
              v166 = +[AXSubsystemBrailleHardware sharedInstance];
              ignoreLogging15 = [v166 ignoreLogging];

              if (ignoreLogging15)
              {
LABEL_171:
                v127 = 0;
                v12 = v202;
                goto LABEL_172;
              }

              v179 = +[AXSubsystemBrailleHardware identifier];
              v180 = AXLoggerForFacility();

              v181 = AXOSLogLevelFromAXLogLevel();
              if (os_log_type_enabled(v180, v181))
              {
                v182 = AXColorizeFormatLog();
                hasBeenUnloaded = v165 & 1;
                v193 = v199 & 1;
                comPort = self->_modelIdentifier;
                v183 = _AXStringForArgs();
                if (os_log_type_enabled(v180, v181))
                {
                  *v216 = 138543362;
                  v217 = v183;
                  _os_log_impl(&dword_0, v180, v181, "%{public}@", v216, 0xCu);
                }

                v30 = v203;
              }

LABEL_190:
              v127 = 0;
              v12 = v202;
              v32 = v194;
              goto LABEL_172;
            }
          }

          v159 = +[AXSubsystemBrailleHardware sharedInstance];
          ignoreLogging16 = [v159 ignoreLogging];

          if (ignoreLogging16)
          {
            goto LABEL_171;
          }

          v153 = v32;
          v161 = +[AXSubsystemBrailleHardware identifier];
          v155 = AXLoggerForFacility();

          v156 = AXOSLogLevelFromAXLogLevel();
          if (os_log_type_enabled(v155, v156))
          {
            v157 = AXColorizeFormatLog();
            v158 = _AXStringForArgs();
            if (os_log_type_enabled(v155, v156))
            {
              *v216 = 138543362;
              v217 = v158;
              goto LABEL_167;
            }

LABEL_168:

            v30 = v203;
          }

LABEL_169:

          v32 = v153;
          goto LABEL_171;
        }
      }

      else
      {
LABEL_20:
      }

      v43 = +[AXSubsystemBrailleHardware sharedInstance];
      ignoreLogging17 = [v43 ignoreLogging];

      v12 = v202;
      if (ignoreLogging17)
      {
        v26 = 1;
        v29 = infoDictionary;
        v30 = v203;
      }

      else
      {
        v47 = +[AXSubsystemBrailleHardware identifier];
        v48 = AXLoggerForFacility();

        v26 = 1;
        v49 = AXOSLogLevelFromAXLogLevel();
        v29 = infoDictionary;
        log = v48;
        if (os_log_type_enabled(v48, v49))
        {
          v50 = AXColorizeFormatLog();
          v51 = _AXStringForArgs();
          v52 = os_log_type_enabled(v48, v49);
          v30 = v203;
          if (v52)
          {
            *buf = 138543362;
            v219 = v51;
            _os_log_impl(&dword_0, log, v49, "%{public}@", buf, 0xCu);
          }

          v32 = v50;
          goto LABEL_53;
        }

        v30 = v203;
LABEL_55:
      }

LABEL_56:

LABEL_57:
      goto LABEL_58;
    }

    v45 = +[AXSubsystemBrailleHardware sharedInstance];
    ignoreLogging18 = [v45 ignoreLogging];

    if ((ignoreLogging18 & 1) == 0)
    {
      v53 = +[AXSubsystemBrailleHardware identifier];
      v29 = AXLoggerForFacility();

      v26 = 1;
      v54 = AXOSLogLevelFromAXLogLevel();
      if (!os_log_type_enabled(v29, v54))
      {
LABEL_58:

        goto LABEL_59;
      }

      v30 = AXColorizeFormatLog();
      bluetoothAddress = _AXStringForArgs();
      if (os_log_type_enabled(v29, v54))
      {
        *buf = 138543362;
        v219 = bluetoothAddress;
        _os_log_impl(&dword_0, v29, v54, "%{public}@", buf, 0xCu);
      }

      goto LABEL_56;
    }

    v26 = 1;
LABEL_59:

    goto LABEL_60;
  }

  v24 = +[AXSubsystemBrailleHardware sharedInstance];
  ignoreLogging19 = [v24 ignoreLogging];

  if ((ignoreLogging19 & 1) == 0)
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
        v219 = v30;
        _os_log_impl(&dword_0, v12, v28, "%{public}@", buf, 0xCu);
      }

      goto LABEL_57;
    }

    goto LABEL_59;
  }

  v26 = 1;
LABEL_60:

  return v26;
}

- (BOOL)unloadDriver
{
  self->_hasBeenUnloaded = 1;
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

    self->_mainSize = 0;
    *&self->_availableCells = 0;
    self->_hasFeaturePack = 0;
  }

  return 1;
}

- (int)brailleInputMode
{
  if (self->_hasFeaturePack)
  {
    return 2;
  }

  else
  {
    return 0;
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
      v28.location = 0;
      v28.length = v5;
      CFDataDeleteBytes(self->_readBuffer, v28);
    }
  }

  [(NSLock *)self->_readBufferLock unlock];
  v8 = self->_safeReadBuffer;
  SCRDAdvanceBufferToPacketStart();
  v9 = CFDataGetLength(self->_safeReadBuffer);
  if (v9 >= 3)
  {
    v10 = v9;
    v11 = +[NSMutableArray array];
    while (1)
    {
      v12 = CFDataGetBytePtr(self->_safeReadBuffer);
      v13.location = 0;
      v13.length = 3;
      switch(v12[1])
      {
        case '?':
        case 'D':
        case 'I':
        case 'L':
        case 'O':
        case 'P':
        case 'R':
        case 'S':
        case 'U':
          goto LABEL_7;
        case '@':
        case 'A':
        case 'B':
        case 'C':
        case 'J':
        case 'M':
        case 'Q':
          goto LABEL_11;
        case 'E':
          v16 = v12[2];
          if (v16 != self->_availableCells)
          {
            self->_availableCells = v16;
            self->_splitPointOffset = LOBYTE(self->_mainSize) - v16;
            v17 = +[NSNotificationCenter defaultCenter];
            [v17 postNotificationName:@"SCROBrailleDriverProtocolConfigurationChangeNotification" object:self userInfo:0];
          }

          v13.location = 0;
          v13.length = 3;
          goto LABEL_7;
        case 'F':
          if (v10 < 6)
          {
            goto LABEL_30;
          }

          v13.location = 0;
          v13.length = 6;
          goto LABEL_7;
        case 'G':
          if (v10 < 0xB)
          {
            goto LABEL_30;
          }

          v13.location = 0;
          v13.length = 11;
          goto LABEL_7;
        case 'H':
          if (v10 < 8)
          {
            goto LABEL_30;
          }

          v13.location = 0;
          v13.length = 8;
          goto LABEL_7;
        case 'K':
          if (v10 < 4)
          {
            goto LABEL_30;
          }

          if (v12[2] == 1)
          {
            v27 = 63;
            __buf = 17691;
            comPort = self->_comPort;
            if (comPort != -1)
            {
              write(comPort, &__buf, 3uLL);
            }
          }

          else
          {
            deviceID = self->_deviceID;
            v21 = v12[3];
            availableCells = self->_availableCells;
            SCRDAlva6SeriesAppendKeyEvent();
          }

LABEL_36:
          v13.location = 0;
          v13.length = 4;
          goto LABEL_7;
        case 'N':
          if (v10 < 0xE)
          {
            goto LABEL_30;
          }

          v13.location = 0;
          v13.length = 14;
          goto LABEL_7;
        case 'T':
          if (v10 >= 4)
          {
            goto LABEL_36;
          }

          goto LABEL_30;
        case 'V':
          if (v10 < 0xD)
          {
            goto LABEL_30;
          }

          v13.location = 0;
          v13.length = 13;
          goto LABEL_7;
        default:
          if (v12[1] != 2)
          {
LABEL_11:
            v13.location = 0;
            v13.length = 1;
            goto LABEL_7;
          }

          if (v10 >= 5)
          {
            v13.location = 0;
            v13.length = 5;
LABEL_7:
            CFDataDeleteBytes(self->_safeReadBuffer, v13);
            v14 = 1;
            goto LABEL_31;
          }

LABEL_30:
          v14 = 0;
LABEL_31:
          v18 = self->_safeReadBuffer;
          SCRDAdvanceBufferToPacketStart();
          v19 = CFDataGetLength(self->_safeReadBuffer);
          if (v19 < 3)
          {
            goto LABEL_38;
          }

          v10 = v19;
          if ((v14 & 1) == 0)
          {
            goto LABEL_38;
          }

          break;
      }
    }
  }

  v11 = 0;
LABEL_38:
  if ([v11 count])
  {
    v23 = v11;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  return v23;
}

- (BOOL)setMainCells:(const char *)cells length:(int64_t)length
{
  v7 = self->_availableCells + 4;
  v8 = malloc_type_malloc(v7, 0xD5D4D399uLL);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  strcpy(v8, "\x1BB");
  availableCells = self->_availableCells;
  v8[3] = availableCells;
  v11 = v8 + 4;
  if (availableCells <= length)
  {
    memcpy(v8 + 4, cells, availableCells);
  }

  else
  {
    memcpy(v8 + 4, cells, length);
    bzero(&v11[length], self->_availableCells - length);
  }

  comPort = self->_comPort;
  v12 = comPort != -1 && write(comPort, v9, v7) == v7;
  free(v9);
  return v12;
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