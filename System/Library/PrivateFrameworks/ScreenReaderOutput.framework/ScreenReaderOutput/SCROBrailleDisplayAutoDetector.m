@interface SCROBrailleDisplayAutoDetector
+ (id)allocWithZone:(_NSZone *)a3;
+ (void)initialize;
- (BOOL)_serialDataMatchesDriver:(id)a3 driverBundleIdentifiers:(id)a4 fileDescriptor:(int)a5;
- (SCROBrailleDisplayAutoDetector)init;
- (id)_driverBundleIdentifiers;
- (id)_serialPortMatchingDictionary;
- (void)_addBLEPeripheral:(id)a3 central:(id)a4;
- (void)_autodetectIOServices:(id)a3;
- (void)_detectSerialPorts:(id)a3;
- (void)_initializeAutodetectSerialPorts:(id)a3;
- (void)_openSerialPortService:(id)a3 sortedDriverBundleIdentifiers:(id)a4;
- (void)_registerForSerialPortNotifications;
- (void)addAutodetectBLEIdentifier:(id)a3;
- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4;
- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5;
- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6;
- (void)centralManagerDidUpdateState:(id)a3;
- (void)detectDisplays;
- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5;
- (void)peripheral:(id)a3 didDiscoverServices:(id)a4;
- (void)removeAutodetectBLEIdentifier:(id)a3;
- (void)stopDetectingDisplays;
@end

@implementation SCROBrailleDisplayAutoDetector

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    _SCROBrailleDisplayAutoDetector = objc_alloc_init(SCROBrailleDisplayAutoDetector);

    MEMORY[0x2821F96F8]();
  }
}

+ (id)allocWithZone:(_NSZone *)a3
{
  if (_SCROBrailleDisplayAutoDetector)
  {
    return 0;
  }

  v7 = v3;
  v8 = v4;
  v6.receiver = a1;
  v6.super_class = &OBJC_METACLASS___SCROBrailleDisplayAutoDetector;
  return objc_msgSendSuper2(&v6, sel_allocWithZone_, a3);
}

- (SCROBrailleDisplayAutoDetector)init
{
  v2 = self;
  if (!_SCROBrailleDisplayAutoDetector)
  {
    v6.receiver = self;
    v6.super_class = SCROBrailleDisplayAutoDetector;
    v2 = [(SCROBrailleDisplayAutoDetector *)&v6 init];
    if (v2)
    {
      v3 = [MEMORY[0x277CBEB18] array];
      bleIdentifiers = v2->_bleIdentifiers;
      v2->_bleIdentifiers = v3;
    }
  }

  return v2;
}

- (id)_driverBundleIdentifiers
{
  v2 = [MEMORY[0x277CCA8D8] brailleDriverDeviceDetectionInfo];
  v3 = CFPreferencesGetAppBooleanValue(@"SCROBrailleDriverReverseUSBLoadOrder", *MEMORY[0x277D81C18], 0) != 0;
  v4 = [v2 allKeys];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __58__SCROBrailleDisplayAutoDetector__driverBundleIdentifiers__block_invoke;
  v7[3] = &__block_descriptor_33_e11_q24__0_8_16l;
  v8 = v3;
  v5 = [v4 sortedArrayUsingComparator:v7];

  return v5;
}

uint64_t __58__SCROBrailleDisplayAutoDetector__driverBundleIdentifiers__block_invoke(uint64_t a1, void *a2)
{
  result = [a2 caseInsensitiveCompare:?];
  v4 = 1;
  if (result == 1)
  {
    v5 = -1;
  }

  else
  {
    v5 = result;
  }

  if (result != -1)
  {
    v4 = v5;
  }

  if (*(a1 + 32) == 1)
  {
    return v4;
  }

  return result;
}

- (void)detectDisplays
{
  if (!self->_isDetectingDisplays)
  {
    v3 = VOTLogBraille();
    if (os_signpost_enabled(v3))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_26490B000, v3, OS_SIGNPOST_INTERVAL_BEGIN, 0xEEEEB0B5B2B2EEEELL, "Detect Displays", "", buf, 2u);
    }

    if (!self->_iteratorDict)
    {
      v4 = objc_alloc_init(MEMORY[0x277CBEB38]);
      iteratorDict = self->_iteratorDict;
      self->_iteratorDict = v4;
    }

    self->_notificationPort = IONotificationPortCreate(*MEMORY[0x277CD2898]);
    v6 = [(SCROBrailleDisplayAutoDetector *)self _driverBundleIdentifiers];
    [(SCROBrailleDisplayAutoDetector *)self _autodetectIOServices:v6];
    [(SCROBrailleDisplayAutoDetector *)self _initializeAutodetectSerialPorts:v6];
    v7 = VOTLogBraille();
    if (os_signpost_enabled(v7))
    {
      *v8 = 0;
      _os_signpost_emit_with_name_impl(&dword_26490B000, v7, OS_SIGNPOST_INTERVAL_END, 0xEEEEB0B5B2B2EEEELL, "Detect Displays", "", v8, 2u);
    }
  }
}

- (void)_openSerialPortService:(id)a3 sortedDriverBundleIdentifiers:(id)a4
{
  v82 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 UTF8String];
  v74 = 0;
  memset(&v81, 0, sizeof(v81));
  v9 = open(v8, 131078);
  if (v9 == -1)
  {
    v40 = _SCROD_LOG();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
    {
      v41 = __error();
      v42 = strerror(*v41);
      v43 = *__error();
      *buf = 136315650;
      v76 = v8;
      v77 = 2080;
      v78 = v42;
      v79 = 1024;
      v80 = v43;
      _os_log_impl(&dword_26490B000, v40, OS_LOG_TYPE_DEFAULT, "Error opening serial port %s - %s(%d).\n", buf, 0x1Cu);
    }

    goto LABEL_56;
  }

  v10 = v9;
  if (ioctl(v9, 0x2000740DuLL) == -1)
  {
    v44 = _SCROD_LOG();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    v45 = __error();
    v46 = strerror(*v45);
    v47 = *__error();
    *buf = 136315650;
    v76 = v8;
    v77 = 2080;
    v78 = v46;
    v79 = 1024;
    v80 = v47;
    v48 = "Error setting TIOCEXCL on %s - %s(%d).\n";
LABEL_54:
    _os_log_impl(&dword_26490B000, v44, OS_LOG_TYPE_DEFAULT, v48, buf, 0x1Cu);
    goto LABEL_55;
  }

  if (fcntl(v10, 4, 0) == -1)
  {
    v44 = _SCROD_LOG();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    v49 = __error();
    v50 = strerror(*v49);
    v51 = *__error();
    *buf = 136315650;
    v76 = v8;
    v77 = 2080;
    v78 = v50;
    v79 = 1024;
    v80 = v51;
    v48 = "Error clearing O_NONBLOCK %s - %s(%d).\n";
    goto LABEL_54;
  }

  if (tcgetattr(v10, gOriginalTTYAttrs) == -1)
  {
    v44 = _SCROD_LOG();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    v52 = __error();
    v53 = strerror(*v52);
    v54 = *__error();
    *buf = 136315650;
    v76 = v8;
    v77 = 2080;
    v78 = v53;
    v79 = 1024;
    v80 = v54;
    v48 = "Error getting tty attributes %s - %s(%d).\n";
    goto LABEL_54;
  }

  v81 = *gOriginalTTYAttrs;
  v11 = _SCROD_LOG();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v76) = cfgetispeed(&v81);
    _os_log_impl(&dword_26490B000, v11, OS_LOG_TYPE_DEFAULT, "Current input baud rate is %d\n", buf, 8u);
  }

  v12 = _SCROD_LOG();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = cfgetospeed(&v81);
    *buf = 67109120;
    LODWORD(v76) = v13;
    _os_log_impl(&dword_26490B000, v12, OS_LOG_TYPE_DEFAULT, "Current output baud rate is %d\n", buf, 8u);
  }

  cfmakeraw(&v81);
  *&v81.c_cc[16] = 2560;
  cfsetspeed(&v81, 0x4B00uLL);
  v81.c_cflag |= 0x300uLL;
  v73 = 14400;
  if (ioctl(v10, 0x80085402uLL, &v73) == -1)
  {
    v14 = _SCROD_LOG();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = __error();
      v16 = strerror(*v15);
      v17 = *__error();
      *buf = 136315650;
      v76 = v8;
      v77 = 2080;
      v78 = v16;
      v79 = 1024;
      v80 = v17;
      _os_log_impl(&dword_26490B000, v14, OS_LOG_TYPE_DEFAULT, "Error calling ioctl(..., IOSSIOSPEED, ...) %s - %s(%d).\n", buf, 0x1Cu);
    }
  }

  v18 = _SCROD_LOG();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = cfgetispeed(&v81);
    *buf = 67109120;
    LODWORD(v76) = v19;
    _os_log_impl(&dword_26490B000, v18, OS_LOG_TYPE_DEFAULT, "Input baud rate changed to %d\n", buf, 8u);
  }

  v20 = _SCROD_LOG();
  if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
  {
    v21 = cfgetospeed(&v81);
    *buf = 67109120;
    LODWORD(v76) = v21;
    _os_log_impl(&dword_26490B000, v20, OS_LOG_TYPE_DEFAULT, "Output baud rate changed to %d\n", buf, 8u);
  }

  if (tcsetattr(v10, 0, &v81) == -1)
  {
    v44 = _SCROD_LOG();
    if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_55;
    }

    v55 = __error();
    v56 = strerror(*v55);
    v57 = *__error();
    *buf = 136315650;
    v76 = v8;
    v77 = 2080;
    v78 = v56;
    v79 = 1024;
    v80 = v57;
    v48 = "Error setting tty attributes %s - %s(%d).\n";
    goto LABEL_54;
  }

  if (ioctl(v10, 0x20007479uLL) == -1)
  {
    v22 = _SCROD_LOG();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = __error();
      v24 = strerror(*v23);
      v25 = *__error();
      *buf = 136315650;
      v76 = v8;
      v77 = 2080;
      v78 = v24;
      v79 = 1024;
      v80 = v25;
      _os_log_impl(&dword_26490B000, v22, OS_LOG_TYPE_DEFAULT, "Error asserting DTR %s - %s(%d).\n", buf, 0x1Cu);
    }
  }

  if (ioctl(v10, 0x20007478uLL) == -1)
  {
    v26 = _SCROD_LOG();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = __error();
      v28 = strerror(*v27);
      v29 = *__error();
      *buf = 136315650;
      v76 = v8;
      v77 = 2080;
      v78 = v28;
      v79 = 1024;
      v80 = v29;
      _os_log_impl(&dword_26490B000, v26, OS_LOG_TYPE_DEFAULT, "Error clearing DTR %s - %s(%d).\n", buf, 0x1Cu);
    }
  }

  v74 = 294;
  if (ioctl(v10, 0x8004746DuLL, &v74) == -1)
  {
    v30 = _SCROD_LOG();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = __error();
      v32 = strerror(*v31);
      v33 = *__error();
      *buf = 136315650;
      v76 = v8;
      v77 = 2080;
      v78 = v32;
      v79 = 1024;
      v80 = v33;
      _os_log_impl(&dword_26490B000, v30, OS_LOG_TYPE_DEFAULT, "Error setting handshake lines %s - %s(%d).\n", buf, 0x1Cu);
    }
  }

  if (ioctl(v10, 0x4004746AuLL, &v74) == -1)
  {
    v34 = _SCROD_LOG();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      v35 = __error();
      v36 = strerror(*v35);
      v37 = *__error();
      *buf = 136315650;
      v76 = v8;
      v77 = 2080;
      v78 = v36;
      v79 = 1024;
      v80 = v37;
      _os_log_impl(&dword_26490B000, v34, OS_LOG_TYPE_DEFAULT, "Error getting handshake lines %s - %s(%d).\n", buf, 0x1Cu);
    }
  }

  v38 = _SCROD_LOG();
  if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    LODWORD(v76) = v74;
    _os_log_impl(&dword_26490B000, v38, OS_LOG_TYPE_DEFAULT, "Handshake lines currently set to %d\n", buf, 8u);
  }

  v72 = 1;
  if (ioctl(v10, 0x80085400uLL, &v72) == -1)
  {
    v44 = _SCROD_LOG();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v58 = __error();
      v59 = strerror(*v58);
      v60 = *__error();
      *buf = 136315650;
      v76 = v8;
      v77 = 2080;
      v78 = v59;
      v79 = 1024;
      v80 = v60;
      v48 = "Error setting read latency %s - %s(%d).\n";
      goto LABEL_54;
    }

LABEL_55:

    close(v10);
LABEL_56:
    v10 = -1;
    _fd = -1;
    goto LABEL_57;
  }

  _fd = v10;
  if (v10)
  {
LABEL_57:
    v61 = MEMORY[0x277D85CD0];
    v62 = dispatch_source_create(MEMORY[0x277D85D28], v10, 0, MEMORY[0x277D85CD0]);
    serialSource = self->_serialSource;
    self->_serialSource = v62;

    v81.c_iflag = 0;
    v81.c_oflag = &v81;
    v81.c_cflag = 0x2020000000;
    LOBYTE(v81.c_lflag) = 0;
    v64 = self->_serialSource;
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __87__SCROBrailleDisplayAutoDetector__openSerialPortService_sortedDriverBundleIdentifiers___block_invoke;
    handler[3] = &unk_279B73F88;
    v71 = v10;
    handler[4] = self;
    v70 = &v81;
    v69 = v7;
    dispatch_source_set_event_handler(v64, handler);
    dispatch_resume(self->_serialSource);
    v65 = dispatch_time(0, 5000000000);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __87__SCROBrailleDisplayAutoDetector__openSerialPortService_sortedDriverBundleIdentifiers___block_invoke_13;
    block[3] = &unk_279B73EB0;
    block[4] = &v81;
    dispatch_after(v65, v61, block);

    _Block_object_dispose(&v81, 8);
    goto LABEL_58;
  }

  v39 = _SCROD_LOG();
  if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v81.c_iflag) = 138412290;
    *(&v81.c_iflag + 4) = v6;
    _os_log_impl(&dword_26490B000, v39, OS_LOG_TYPE_DEFAULT, "Could not open service: %@", &v81, 0xCu);
  }

LABEL_58:
  v66 = *MEMORY[0x277D85DE8];
}

void __87__SCROBrailleDisplayAutoDetector__openSerialPortService_sortedDriverBundleIdentifiers___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEB28] data];
  while (1)
  {
    handle = dispatch_source_get_handle(*(*(a1 + 32) + 8));
    v4 = read(handle, buf, 0x200uLL);
    if (v4 == -1)
    {
      break;
    }

    v5 = v4;
    [v2 appendBytes:buf length:v4];
    v6 = [v2 length];
    if (v5 < 1 || v6 >= 0x11)
    {
      if (v5 < 1)
      {
        goto LABEL_19;
      }

      *(*(*(a1 + 48) + 8) + 24) = [*(a1 + 32) _serialDataMatchesDriver:v2 driverBundleIdentifiers:*(a1 + 40) fileDescriptor:*(a1 + 56)];
      v8 = *(*(*(a1 + 48) + 8) + 24);
      v9 = _SCROD_LOG();
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (v8 == 1)
      {
        if (v10)
        {
          *buf = 0;
          v11 = "Found matching driver.  Will connect.";
          goto LABEL_17;
        }
      }

      else if (v10)
      {
        *buf = 0;
        v11 = "This serial device did not match.";
LABEL_17:
        _os_log_impl(&dword_26490B000, v9, OS_LOG_TYPE_DEFAULT, v11, buf, 2u);
      }

      dispatch_source_set_event_handler(*(*(a1 + 32) + 8), 0);
      dispatch_source_cancel(*(*(a1 + 32) + 8));
      v14 = *(a1 + 32);
      v15 = *(v14 + 8);
      *(v14 + 8) = 0;

      goto LABEL_19;
    }
  }

  v12 = _SCROD_LOG();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
  {
    v13 = *(a1 + 56);
    v17[0] = 67109120;
    v17[1] = v13;
    _os_log_impl(&dword_26490B000, v12, OS_LOG_TYPE_INFO, "Serial device: %d Could not read any data", v17, 8u);
  }

LABEL_19:
  v16 = *MEMORY[0x277D85DE8];
}

void __87__SCROBrailleDisplayAutoDetector__openSerialPortService_sortedDriverBundleIdentifiers___block_invoke_13(uint64_t a1)
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__SCROBrailleDisplayAutoDetector__openSerialPortService_sortedDriverBundleIdentifiers___block_invoke_2;
  block[3] = &unk_279B73EB0;
  block[4] = *(a1 + 32);
  dispatch_async(MEMORY[0x277D85CD0], block);
}

uint64_t __87__SCROBrailleDisplayAutoDetector__openSerialPortService_sortedDriverBundleIdentifiers___block_invoke_2(uint64_t result)
{
  if ((*(*(*(result + 32) + 8) + 24) & 1) == 0)
  {
    result = _fd;
    if (_fd)
    {
      tcdrain(_fd);
      v1 = _fd;

      return close(v1);
    }
  }

  return result;
}

- (BOOL)_serialDataMatchesDriver:(id)a3 driverBundleIdentifiers:(id)a4 fileDescriptor:(int)a5
{
  v72 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [MEMORY[0x277CCA8D8] brailleDriverDeviceDetectionInfo];
  v62 = 0u;
  v63 = 0u;
  v64 = 0u;
  v65 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v62 objects:v71 count:16];
  if (v10)
  {
    v11 = *v63;
    v46 = v9;
    v47 = v8;
    v39 = *v63;
    do
    {
      v12 = 0;
      v38 = v10;
      do
      {
        if (*v63 != v11)
        {
          objc_enumerationMutation(v9);
        }

        v42 = v12;
        v13 = *(*(&v62 + 1) + 8 * v12);
        v14 = [v8 objectForKey:v13];
        v15 = [v14 objectForKey:kSCROBrailleDriverAutoDetectDictionaries[0]];

        v16 = _SCROD_LOG();
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v70 = v13;
          _os_log_impl(&dword_26490B000, v16, OS_LOG_TYPE_DEFAULT, "Testing match for %@", buf, 0xCu);
        }

        v60 = 0u;
        v61 = 0u;
        v58 = 0u;
        v59 = 0u;
        v17 = v15;
        v43 = [v17 countByEnumeratingWithState:&v58 objects:v68 count:16];
        if (v43)
        {
          v18 = *v59;
          v40 = *v59;
          v41 = v13;
          v48 = v17;
          do
          {
            v19 = 0;
            do
            {
              if (*v59 != v18)
              {
                objc_enumerationMutation(v17);
              }

              v44 = v19;
              v20 = [*(*(&v58 + 1) + 8 * v19) objectForKeyedSubscript:kSCROBrailleDriverSerialAdvertiseBytes[0]];
              v54 = 0u;
              v55 = 0u;
              v56 = 0u;
              v57 = 0u;
              obj = v20;
              v21 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
              if (v21)
              {
                v22 = v21;
                v23 = *v55;
                while (2)
                {
                  for (i = 0; i != v22; ++i)
                  {
                    if (*v55 != v23)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v25 = *(*(&v54 + 1) + 8 * i);
                    v26 = [MEMORY[0x277CBEB28] data];
                    v50 = 0u;
                    v51 = 0u;
                    v52 = 0u;
                    v53 = 0u;
                    v27 = [v25 componentsSeparatedByString:@"\\x"];
                    v28 = [v27 countByEnumeratingWithState:&v50 objects:v66 count:16];
                    if (v28)
                    {
                      v29 = v28;
                      v30 = *v51;
                      do
                      {
                        for (j = 0; j != v29; ++j)
                        {
                          if (*v51 != v30)
                          {
                            objc_enumerationMutation(v27);
                          }

                          v32 = *(*(&v50 + 1) + 8 * j);
                          if ([v32 length])
                          {
                            buf[0] = strtol([v32 UTF8String], 0, 16);
                            [v26 appendBytes:buf length:1];
                          }
                        }

                        v29 = [v27 countByEnumeratingWithState:&v50 objects:v66 count:16];
                      }

                      while (v29);
                    }

                    if (![v6 rangeOfData:v26 options:0 range:{0, objc_msgSend(v6, "length")}])
                    {
                      v34 = [[SCROIOSerialElement alloc] initWithFileDescriptor:a5];
                      v35 = _SCROD_LOG();
                      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412290;
                        v70 = v34;
                        _os_log_impl(&dword_26490B000, v35, OS_LOG_TYPE_DEFAULT, "Matched element: %@", buf, 0xCu);
                      }

                      _postBrailleDisplayDetected(v41, v34);
                      v33 = 1;
                      v9 = v46;
                      v8 = v47;
                      goto LABEL_39;
                    }
                  }

                  v22 = [obj countByEnumeratingWithState:&v54 objects:v67 count:16];
                  if (v22)
                  {
                    continue;
                  }

                  break;
                }
              }

              v19 = v44 + 1;
              v9 = v46;
              v8 = v47;
              v17 = v48;
              v18 = v40;
            }

            while (v44 + 1 != v43);
            v43 = [v48 countByEnumeratingWithState:&v58 objects:v68 count:16];
          }

          while (v43);
        }

        v12 = v42 + 1;
        v11 = v39;
      }

      while (v42 + 1 != v38);
      v10 = [v9 countByEnumeratingWithState:&v62 objects:v71 count:16];
      v11 = v39;
      v33 = 0;
    }

    while (v10);
  }

  else
  {
    v33 = 0;
  }

LABEL_39:

  v36 = *MEMORY[0x277D85DE8];
  return v33;
}

- (id)_serialPortMatchingDictionary
{
  v2 = IOServiceMatching("IOSerialBSDClient");
  CFDictionarySetValue(v2, @"IOSerialBSDClientType", @"IOSerialStream");

  return v2;
}

- (void)_registerForSerialPortNotifications
{
  v3 = [(SCROBrailleDisplayAutoDetector *)self _serialPortMatchingDictionary];
  Current = CFRunLoopGetCurrent();
  RunLoopSource = IONotificationPortGetRunLoopSource(self->_notificationPort);
  CFRunLoopAddSource(Current, RunLoopSource, *MEMORY[0x277CBF058]);
  notification = 0;
  notificationPort = self->_notificationPort;
  v7 = CFRetain(v3);
  if (IOServiceAddMatchingNotification(notificationPort, "IOServicePublish", v7, _serialPortPublishedCallback, self, &notification))
  {
    v8 = _SCROD_LOG();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_26490B000, v8, OS_LOG_TYPE_DEFAULT, "Could not register for serial publish notification", v9, 2u);
    }
  }
}

- (void)_initializeAutodetectSerialPorts:(id)a3
{
  v4 = a3;
  [(SCROBrailleDisplayAutoDetector *)self _registerForSerialPortNotifications];
  [(SCROBrailleDisplayAutoDetector *)self _detectSerialPorts:v4];
}

- (void)_detectSerialPorts:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v27 = 0;
  v5 = MEMORY[0x266745A00](0, &v27);
  if (v5 || ([MEMORY[0x277CCAC38] processInfo], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "processName"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "hasPrefix:", @"scrod"), v7, v6, (v8 & 1) == 0))
  {
    v19 = _SCROD_LOG();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v29 = v5;
      _os_log_impl(&dword_26490B000, v19, OS_LOG_TYPE_DEFAULT, "IOMainPort returned %d\n", buf, 8u);
    }
  }

  else
  {
    existing = 0;
    v9 = [(SCROBrailleDisplayAutoDetector *)self _serialPortMatchingDictionary];
    v10 = v27;
    v11 = CFRetain(v9);
    MatchingServices = IOServiceGetMatchingServices(v10, v11, &existing);
    if (MatchingServices)
    {
      v13 = MatchingServices;
      v14 = _SCROD_LOG();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        v29 = v13;
        _os_log_impl(&dword_26490B000, v14, OS_LOG_TYPE_DEFAULT, "IOServiceGetMatchingServices returned %d\n", buf, 8u);
      }
    }

    v15 = IOIteratorNext(existing);
    if (v15)
    {
      v16 = v15;
      v17 = *MEMORY[0x277CBECE8];
      while (1)
      {
        CFProperty = IORegistryEntryCreateCFProperty(v16, @"IOCalloutDevice", v17, 0);
        IOObjectRelease(v16);
        if ([CFProperty hasPrefix:@"/dev/cu.usbserial"])
        {
          break;
        }

        v16 = IOIteratorNext(existing);
        if (!v16)
        {
          goto LABEL_17;
        }
      }

      v21 = dispatch_time(0, 5000000000);
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __53__SCROBrailleDisplayAutoDetector__detectSerialPorts___block_invoke;
      v23[3] = &unk_279B73FB0;
      v23[4] = self;
      v24 = CFProperty;
      v25 = v4;
      v22 = CFProperty;
      dispatch_after(v21, MEMORY[0x277D85CD0], v23);
    }

LABEL_17:
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_autodetectIOServices:(id)a3
{
  v68 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v40 = [MEMORY[0x277CCA8D8] brailleDriverDeviceDetectionInfo];
  notificationPort = self->_notificationPort;
  if (notificationPort)
  {
    RunLoopSource = IONotificationPortGetRunLoopSource(notificationPort);
    if (RunLoopSource)
    {
      v62 = 0u;
      v63 = 0u;
      v60 = 0u;
      v61 = 0u;
      v37 = v4;
      obj = v4;
      v41 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
      if (v41)
      {
        v6 = 0;
        v39 = *v61;
        v43 = *MEMORY[0x277CBF058];
        allocator = *MEMORY[0x277CBECE8];
        do
        {
          v7 = 0;
          do
          {
            if (*v61 != v39)
            {
              objc_enumerationMutation(obj);
            }

            v42 = v7;
            v8 = *(*(&v60 + 1) + 8 * v7);
            v9 = [v40 objectForKey:v8];
            v10 = [v9 objectForKey:kSCROBrailleDriverAutoDetectDictionaries[0]];

            v58 = 0u;
            v59 = 0u;
            v56 = 0u;
            v57 = 0u;
            v45 = v10;
            v11 = [v45 countByEnumeratingWithState:&v56 objects:v66 count:16];
            if (v11)
            {
              v12 = v11;
              v13 = *v57;
              do
              {
                for (i = 0; i != v12; ++i)
                {
                  if (*v57 != v13)
                  {
                    objc_enumerationMutation(v45);
                  }

                  v15 = *(*(&v56 + 1) + 8 * i);
                  if ((v6 & 1) == 0)
                  {
                    Current = CFRunLoopGetCurrent();
                    CFRunLoopAddSource(Current, RunLoopSource, v43);
                  }

                  notification = 0;
                  v17 = [v15 objectForKeyedSubscript:@"IOProviderClass"];
                  v18 = [v17 isEqual:@"IOUSBDevice"];

                  if (v18)
                  {
                    v19 = [v15 mutableCopy];
                    [v19 setObject:@"IOUSBDevice" forKey:@"IOProviderClass"];
                    Copy = CFDictionaryCreateCopy(allocator, v19);
                  }

                  else
                  {
                    Copy = CFDictionaryCreateCopy(allocator, v15);
                  }

                  v21 = IOServiceAddMatchingNotification(self->_notificationPort, "IOServiceFirstMatch", Copy, _connectHandler, v8, &notification);
                  if (v21)
                  {
                    NSLog(&cfstr_ErrorDWhileCre.isa, v21, v8);
                  }

                  else
                  {
                    v22 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:notification];
                    v23 = [(NSMutableDictionary *)self->_iteratorDict objectForKey:v8];
                    if (v23)
                    {
                      v24 = v23;
                    }

                    else
                    {
                      v24 = objc_alloc_init(MEMORY[0x277CBEB18]);
                      [(NSMutableDictionary *)self->_iteratorDict setObject:v24 forKey:v8];
                    }

                    [v24 addObject:v22];
                  }

                  v6 = 1;
                }

                v12 = [v45 countByEnumeratingWithState:&v56 objects:v66 count:16];
              }

              while (v12);
            }

            v7 = v42 + 1;
          }

          while (v42 + 1 != v41);
          v41 = [obj countByEnumeratingWithState:&v60 objects:v67 count:16];
        }

        while (v41);
      }

      v4 = v37;
    }

    self->_isDetectingDisplays = 1;
  }

  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v25 = v4;
  v26 = [v25 countByEnumeratingWithState:&v51 objects:v65 count:16];
  if (v26)
  {
    v27 = v26;
    v28 = *v52;
    do
    {
      for (j = 0; j != v27; ++j)
      {
        if (*v52 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v51 + 1) + 8 * j);
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v31 = [(NSMutableDictionary *)self->_iteratorDict objectForKey:v30];
        v32 = [v31 countByEnumeratingWithState:&v47 objects:v64 count:16];
        if (v32)
        {
          v33 = v32;
          v34 = *v48;
          do
          {
            for (k = 0; k != v33; ++k)
            {
              if (*v48 != v34)
              {
                objc_enumerationMutation(v31);
              }

              _connectHandler(v30, [*(*(&v47 + 1) + 8 * k) unsignedIntValue]);
            }

            v33 = [v31 countByEnumeratingWithState:&v47 objects:v64 count:16];
          }

          while (v33);
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v51 objects:v65 count:16];
    }

    while (v27);
  }

  v36 = *MEMORY[0x277D85DE8];
}

- (void)stopDetectingDisplays
{
  v27 = *MEMORY[0x277D85DE8];
  notificationPort = self->_notificationPort;
  if (notificationPort)
  {
    IONotificationPortDestroy(notificationPort);
  }

  self->_notificationPort = 0;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = self->_iteratorDict;
  v5 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v22;
    do
    {
      v8 = 0;
      do
      {
        if (*v22 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v21 + 1) + 8 * v8);
        v17 = 0u;
        v18 = 0u;
        v19 = 0u;
        v20 = 0u;
        v10 = [(NSMutableDictionary *)self->_iteratorDict objectForKey:v9, 0];
        v11 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
        if (v11)
        {
          v12 = v11;
          v13 = *v18;
          do
          {
            v14 = 0;
            do
            {
              if (*v18 != v13)
              {
                objc_enumerationMutation(v10);
              }

              IOObjectRelease([*(*(&v17 + 1) + 8 * v14++) unsignedIntValue]);
            }

            while (v12 != v14);
            v12 = [v10 countByEnumeratingWithState:&v17 objects:v25 count:16];
          }

          while (v12);
        }

        ++v8;
      }

      while (v8 != v6);
      v6 = [(NSMutableDictionary *)v4 countByEnumeratingWithState:&v21 objects:v26 count:16];
    }

    while (v6);
  }

  iteratorDict = self->_iteratorDict;
  self->_iteratorDict = 0;

  self->_isDetectingDisplays = 0;
  v16 = *MEMORY[0x277D85DE8];
}

- (void)removeAutodetectBLEIdentifier:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _SCROD_BRAILLE_LOG();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = v4;
    _os_log_impl(&dword_26490B000, v5, OS_LOG_TYPE_DEFAULT, "Stop autodetecting ble: %@", buf, 0xCu);
  }

  if ([v4 length])
  {
    [(NSMutableArray *)self->_bleIdentifiers removeObject:v4];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v19 = self;
    v6 = [(SCROBrailleDisplayAutoDetector *)self centralManager];
    v7 = [v6 retrieveConnectedPeripheralsWithServices:0 allowAll:1];

    v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v21;
      while (2)
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v21 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v20 + 1) + 8 * i);
          v13 = _SCROD_BRAILLE_LOG();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v26 = v12;
            _os_log_impl(&dword_26490B000, v13, OS_LOG_TYPE_DEFAULT, "Checking peripheral %@", buf, 0xCu);
          }

          v14 = [v12 identifier];
          v15 = [v14 UUIDString];
          v16 = [v4 isEqualToString:v15];

          if (v16)
          {
            v17 = [(SCROBrailleDisplayAutoDetector *)v19 centralManager];
            [v17 cancelPeripheralConnection:v12];

            if (libAccessibilityLibraryCore())
            {
              soft__AXSVoiceOverTouchSetTactileGraphicsDisplay(0);
            }

            goto LABEL_17;
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)addAutodetectBLEIdentifier:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (!self->_centralManager)
  {
    v5 = _SCROD_LOG();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      centralManager = self->_centralManager;
      *buf = 138412290;
      v30 = centralManager;
      _os_log_impl(&dword_26490B000, v5, OS_LOG_TYPE_DEFAULT, "Auto detect BTLE devices: %@", buf, 0xCu);
    }

    v7 = [objc_alloc(MEMORY[0x277CBDFF8]) initWithDelegate:self queue:0];
    v8 = self->_centralManager;
    self->_centralManager = v7;
  }

  v9 = _SCROD_BRAILLE_LOG();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v30 = v4;
    _os_log_impl(&dword_26490B000, v9, OS_LOG_TYPE_DEFAULT, "Autodetect ble: %@", buf, 0xCu);
  }

  if (v4 && ([(NSMutableArray *)self->_bleIdentifiers containsObject:v4]& 1) == 0)
  {
    [(NSMutableArray *)self->_bleIdentifiers addObject:v4];
  }

  v23 = v4;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [(SCROBrailleDisplayAutoDetector *)self centralManager];
  v11 = [v10 retrieveConnectedPeripheralsWithServices:0 allowAll:1];

  v12 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v25;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v25 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v24 + 1) + 8 * i);
        v17 = _SCROD_BRAILLE_LOG();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v30 = v16;
          _os_log_impl(&dword_26490B000, v17, OS_LOG_TYPE_DEFAULT, "Checking peripheral %@", buf, 0xCu);
        }

        bleIdentifiers = self->_bleIdentifiers;
        v19 = [(CBCentralManager *)v16 identifier];
        v20 = [v19 UUIDString];
        LODWORD(bleIdentifiers) = [(NSMutableArray *)bleIdentifiers containsObject:v20];

        if (bleIdentifiers)
        {
          v21 = [(SCROBrailleDisplayAutoDetector *)self centralManager];
          [(SCROBrailleDisplayAutoDetector *)self _addBLEPeripheral:v16 central:v21];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v24 objects:v28 count:16];
    }

    while (v13);
  }

  v22 = *MEMORY[0x277D85DE8];
}

- (void)centralManagerDidUpdateState:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 state];
  if (v5 == 5)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v6 = [(SCROBrailleDisplayAutoDetector *)self centralManager];
    v7 = [v6 retrieveConnectedPeripheralsWithServices:0 allowAll:1];

    v8 = [v7 countByEnumeratingWithState:&v25 objects:v35 count:16];
    if (v8)
    {
      v10 = v8;
      v11 = *v26;
      *&v9 = 138412290;
      v24 = v9;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          bleIdentifiers = self->_bleIdentifiers;
          v15 = [v13 identifier];
          v16 = [v15 UUIDString];
          LODWORD(bleIdentifiers) = [(NSMutableArray *)bleIdentifiers containsObject:v16];

          if (bleIdentifiers)
          {
            v17 = _SCROD_BRAILLE_LOG();
            if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v24;
              v32 = v13;
              _os_log_impl(&dword_26490B000, v17, OS_LOG_TYPE_DEFAULT, "Checking peripheral power on %@", buf, 0xCu);
            }

            [(SCROBrailleDisplayAutoDetector *)self _addBLEPeripheral:v13 central:v4];
          }
        }

        v10 = [v7 countByEnumeratingWithState:&v25 objects:v35 count:16];
      }

      while (v10);
    }

    v18 = [v4 isScanning];
    v19 = _SCROD_LOG();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [MEMORY[0x277CCABB0] numberWithBool:v18];
      *buf = 138412546;
      v32 = v4;
      v33 = 2112;
      v34 = v20;
      _os_log_impl(&dword_26490B000, v19, OS_LOG_TYPE_DEFAULT, "Starting scan: %@ scanning: %@", buf, 0x16u);
    }

    if ((v18 & 1) == 0)
    {
      [v4 setDelegate:self];
      v21 = *MEMORY[0x277CBDEF8];
      v29[0] = *MEMORY[0x277CBDDB0];
      v29[1] = v21;
      v30[0] = MEMORY[0x277CBEC38];
      v30[1] = MEMORY[0x277CBEC38];
      v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
      [v4 scanForPeripheralsWithServices:0 options:v22];
    }
  }

  else if (v5 == 4)
  {
    [v4 stopScan];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)_addBLEPeripheral:(id)a3 central:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = _SCROD_LOG();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 name];
    *buf = 138412546;
    *&buf[4] = v6;
    *&buf[12] = 2112;
    *&buf[14] = v9;
    _os_log_impl(&dword_26490B000, v8, OS_LOG_TYPE_DEFAULT, "Trying to add peripheral %@ %@", buf, 0x16u);
  }

  v10 = [v6 name];
  v11 = [v10 hasPrefix:@"DotPad"];

  v12 = [v6 name];
  v13 = [v12 hasPrefix:@"DotPocket"];

  if ((v11 | v13))
  {
    v14 = [[SCROIODotPadElement alloc] initWithCentral:v7 peripheral:v6];
    v15 = _SCROD_LOG();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = v6;
      _os_log_impl(&dword_26490B000, v15, OS_LOG_TYPE_DEFAULT, "Matched dot pad element: %@ %@", buf, 0x16u);
    }

    if (v11 && libAccessibilityLibraryCore())
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v16 = get_AXSVoiceOverTouchCopyTactileGraphicsDisplaySymbolLoc_ptr;
      v31 = get_AXSVoiceOverTouchCopyTactileGraphicsDisplaySymbolLoc_ptr;
      if (!get_AXSVoiceOverTouchCopyTactileGraphicsDisplaySymbolLoc_ptr)
      {
        *buf = MEMORY[0x277D85DD0];
        *&buf[8] = 3221225472;
        *&buf[16] = __get_AXSVoiceOverTouchCopyTactileGraphicsDisplaySymbolLoc_block_invoke;
        v33 = &unk_279B73EB0;
        v34 = &v28;
        v17 = libAccessibilityLibrary();
        v18 = dlsym(v17, "_AXSVoiceOverTouchCopyTactileGraphicsDisplay");
        *(v34[1] + 24) = v18;
        get_AXSVoiceOverTouchCopyTactileGraphicsDisplaySymbolLoc_ptr = *(v34[1] + 24);
        v16 = v29[3];
      }

      _Block_object_dispose(&v28, 8);
      if (!v16)
      {
        [SCROBrailleDisplayAutoDetector _addBLEPeripheral:central:];
      }

      v20 = v16(v19);
      v21 = [v6 identifier];
      v22 = [v21 UUIDString];
      v23 = [v20 isEqualToString:v22];

      if ((v23 & 1) == 0)
      {
        v24 = [v6 identifier];
        v25 = [v24 UUIDString];
        soft__AXSVoiceOverTouchSetTactileGraphicsDisplay(v25);
      }
    }

    v26 = [(SCROIODotPadElement *)v14 dotFamilyIdentifier];
    _postBrailleDisplayDetected(v26, v14);
  }

  else
  {
    [v7 connectPeripheral:v6 options:0];
    if (([(NSMutableArray *)self->_connectedPeripherals containsObject:v6]& 1) == 0)
    {
      [(NSMutableArray *)self->_connectedPeripherals addObject:v6];
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(id)a3 didConnectPeripheral:(id)a4
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = _SCROD_LOG();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_impl(&dword_26490B000, v6, OS_LOG_TYPE_DEFAULT, "Did connect periperhal: %@", &v10, 0xCu);
  }

  v7 = [v5 name];
  v8 = [v7 hasPrefix:@"DotPad"];

  if ((v8 & 1) == 0)
  {
    [v5 setDelegate:self];
    [v5 discoverServices:0];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(id)a3 didDiscoverServices:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 name];
  v6 = [v5 hasPrefix:@"DotPad"];

  if ((v6 & 1) == 0)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = [v4 services];
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [v4 discoverCharacteristics:0 forService:*(*(&v13 + 1) + 8 * v11++)];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v17 count:16];
      }

      while (v9);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)peripheral:(id)a3 didDiscoverCharacteristicsForService:(id)a4 error:(id)a5
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 name];
  v9 = [v8 hasPrefix:@"DotPad"];

  if ((v9 & 1) == 0)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v10 = [v7 characteristics];
    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * i);
          [v6 readValueForCharacteristic:v15];
          [v6 setNotifyValue:1 forCharacteristic:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(id)a3 didDiscoverPeripheral:(id)a4 advertisementData:(id)a5 RSSI:(id)a6
{
  v17 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  bleIdentifiers = self->_bleIdentifiers;
  v11 = [v9 identifier];
  v12 = [v11 UUIDString];
  LODWORD(bleIdentifiers) = [(NSMutableArray *)bleIdentifiers containsObject:v12];

  if (bleIdentifiers)
  {
    [v8 stopScan];
    v13 = _SCROD_BRAILLE_LOG();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v15 = 138412290;
      v16 = v9;
      _os_log_impl(&dword_26490B000, v13, OS_LOG_TYPE_DEFAULT, "Discovered periperhal %@", &v15, 0xCu);
    }

    [(SCROBrailleDisplayAutoDetector *)self _addBLEPeripheral:v9 central:v8];
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)centralManager:(id)a3 didDisconnectPeripheral:(id)a4 error:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = _SCROD_LOG();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    bleIdentifiers = self->_bleIdentifiers;
    v16 = 138412546;
    v17 = bleIdentifiers;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_26490B000, v9, OS_LOG_TYPE_DEFAULT, "Peripheral disconnected that we're monitoring, rescanning: %@ %@", &v16, 0x16u);
  }

  v11 = self->_bleIdentifiers;
  v12 = [v8 identifier];
  v13 = [v12 UUIDString];
  LODWORD(v11) = [(NSMutableArray *)v11 containsObject:v13];

  if (v11)
  {
    [(SCROBrailleDisplayAutoDetector *)self centralManagerDidUpdateState:v7];
    v14 = _SCROD_LOG();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v16) = 0;
      _os_log_impl(&dword_26490B000, v14, OS_LOG_TYPE_DEFAULT, "Peripheral disconnected that we're monitoring, rescanning", &v16, 2u);
    }
  }

  [(NSMutableArray *)self->_connectedPeripherals removeObject:v8];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_addBLEPeripheral:central:.cold.1()
{
  v0 = [MEMORY[0x277CCA890] currentHandler];
  v1 = [MEMORY[0x277CCACA8] stringWithUTF8String:"CFStringRef soft__AXSVoiceOverTouchCopyTactileGraphicsDisplay(void)"];
  [v0 handleFailureInFunction:v1 file:@"SCROBrailleDisplayAutoDetector.m" lineNumber:48 description:{@"%s", dlerror()}];

  __break(1u);
}

@end