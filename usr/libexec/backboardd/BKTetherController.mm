@interface BKTetherController
+ (id)sharedInstance;
- (BKTetherController)init;
- (BOOL)_reverseTetheringActive;
- (BOOL)_serviceExists:(__CFString *)a3;
- (BOOL)isTethered;
- (BOOL)usesDisplayPortTethering;
- (unsigned)_demoCardConnection;
- (void)_handleDemoModeChanged;
- (void)_setTetherState:(int)a3;
- (void)dealloc;
- (void)noteInterfaceOrientationChangedWithInterfaceOrientation:(int)a3;
- (void)setDitheringEnabled:(int)a3;
- (void)updatePreferencesIfNeeded;
@end

@implementation BKTetherController

+ (id)sharedInstance
{
  if (qword_100125FB8 != -1)
  {
    dispatch_once(&qword_100125FB8, &stru_1000FB9A0);
  }

  v3 = qword_100125FB0;

  return v3;
}

- (BOOL)isTethered
{
  if (self->_tetherState)
  {
    return self->_tetherState == 1;
  }

  if (![(BKTetherController *)self usesDisplayPortTethering])
  {
    v9 = [(BKTetherController *)self _demoCardConnection];
    if (v9)
    {
      input = 0;
      outputCnt = 0;
      if (IOConnectCallScalarMethod(v9, 0, &input, 1u, 0, &outputCnt))
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }
    }

    else
    {
      v10 = 2;
    }

    v6 = self;
    goto LABEL_15;
  }

  v3 = +[BKSDefaults externalDefaults];
  v4 = [v3 lockdownDefaults];
  v5 = [v4 tetheredDisplayPortMode];

  v6 = self;
  if (!v5)
  {
    v10 = 2;
LABEL_15:
    [(BKTetherController *)v6 _setTetherState:v10];
    return self->_tetherState == 1;
  }

  [(BKTetherController *)self _setTetherState:1];
  if (BSGetDeviceType() == 2)
  {
    v7 = 9;
  }

  else
  {
    v7 = 8;
  }

  [(BKTetherController *)self _postDisplayPortNotificationCode:v7];
  v8 = sub_100005110();
  [(BKTetherController *)self noteInterfaceOrientationChangedWithInterfaceOrientation:sub_100005168(v8)];

  return self->_tetherState == 1;
}

- (void)updatePreferencesIfNeeded
{
  v6 = +[BKSDefaults localDefaults];
  if (-[BKTetherController isTethered](self, "isTethered") && ([v6 ignoreTetheringPreferences] & 1) == 0)
  {
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.backboardd.tetherPrefsNeedUpdate", 0, 0, 1u);
    [v6 setDitheringEnabled:0];
    v4 = +[BKSDefaults externalDefaults];
    v5 = [v4 persistentConnectionDefaults];

    [v5 setForceDemoMaxHBI:300];
    if ([(BKTetherController *)self _reverseTetheringActive])
    {
      [v5 setWifiInterfaceName:@"en1"];
    }
  }
}

- (BOOL)_reverseTetheringActive
{
  v3 = BKLogCommon();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Reverse-Tethering - Getting State", buf, 2u);
  }

  v4 = +[NSFileManager defaultManager];
  v5 = [v4 fileExistsAtPath:@"/Library/Preferences/SystemConfiguration/rtether.plist"];

  if (!v5)
  {
    goto LABEL_12;
  }

  existing = 0;
  v6 = IOServiceMatching("IOEthernetInterface");
  if (!v6)
  {
    v9 = BKLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Can't create a service matching dictionary\n";
      v11 = v9;
      v12 = 2;
      goto LABEL_10;
    }

LABEL_11:

LABEL_12:
    LOBYTE(v13) = 0;
    return v13;
  }

  MatchingServices = IOServiceGetMatchingServices(kIOMainPortDefault, v6, &existing);
  if (MatchingServices)
  {
    v8 = MatchingServices;
    v9 = BKLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v21 = v8;
      v10 = "IOServiceGetMatchingServices failed: 0x%x\n";
      v11 = v9;
      v12 = 8;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, v10, buf, v12);
      goto LABEL_11;
    }

    goto LABEL_11;
  }

  while (1)
  {
    v13 = IOIteratorNext(existing);
    if (!v13)
    {
      break;
    }

    v14 = v13;
    *buf = 0;
    if (!IORegistryEntryGetParentEntry(v13, "IOService", buf))
    {
      if (IOObjectConformsTo(*buf, "AppleUSBEthernetDevice") && (v15 = IORegistryEntrySearchCFProperty(v14, "IOService", @"BSD Name", kCFAllocatorDefault, 0)) != 0)
      {
        v16 = v15;
        v17 = [(BKTetherController *)self _serviceExists:v15];
        CFRelease(v16);
        IOObjectRelease(v14);
        v14 = *buf;
        if (v17)
        {
          IOObjectRelease(*buf);
          LOBYTE(v13) = 1;
          return v13;
        }
      }

      else
      {
        IOObjectRelease(v14);
        v14 = *buf;
      }
    }

    IOObjectRelease(v14);
  }

  return v13;
}

- (BOOL)_serviceExists:(__CFString *)a3
{
  v4 = BKLogCommon();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Reverse-Tethering - Looking for Service", buf, 2u);
  }

  v5 = getprogname();
  v6 = CFStringCreateWithFormat(kCFAllocatorDefault, 0, @"%s-%s", v5, "com.apple.Preferences.reverse-tethering");
  v7 = SCPreferencesCreateWithAuthorization(kCFAllocatorDefault, v6, 0, 0);
  if (v6)
  {
    CFRelease(v6);
  }

  if (!v7 || !SCPreferencesLock(v7, 1u) && (SCPreferencesSynchronize(v7), !SCPreferencesLock(v7, 1u)))
  {
    v17 = 0;
    v9 = 0;
    v16 = 1001;
LABEL_22:
    v18 = BKLogCommon();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v22 = v16;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "R-Tether Exists - Error Code: %d", buf, 8u);
    }

    goto LABEL_25;
  }

  v8 = SCNetworkServiceCopyAll(v7);
  v9 = v8;
  if (v8)
  {
    Count = CFArrayGetCount(v8);
    if (Count < 1)
    {
LABEL_16:
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v11 = Count;
      v12 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
        if (ValueAtIndex)
        {
          Interface = SCNetworkServiceGetInterface(ValueAtIndex);
          if (Interface)
          {
            BSDName = SCNetworkInterfaceGetBSDName(Interface);
            if (BSDName)
            {
              if (CFEqual(BSDName, a3))
              {
                break;
              }
            }
          }
        }

        if (v11 == ++v12)
        {
          goto LABEL_16;
        }
      }

      v20 = BKLogCommon();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Reverse-Tethering - Service Found", buf, 2u);
      }

      v16 = 0;
      v17 = 1;
    }
  }

  else
  {
    v17 = 0;
    v16 = 1001;
  }

  if (!SCPreferencesUnlock(v7))
  {
    v16 = SCError();
  }

  if (v16)
  {
    goto LABEL_22;
  }

LABEL_25:
  if (v9)
  {
    CFRelease(v9);
  }

  if (v7)
  {
    CFRelease(v7);
  }

  return v17;
}

- (void)setDitheringEnabled:(int)a3
{
  v4 = IOServiceMatching("AppleH1CLCD");
  MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v4);
  if (!MatchingService)
  {
    v6 = IOServiceMatching("AppleM2CLCD");
    MatchingService = IOServiceGetMatchingService(kIOMainPortDefault, v6);
    if (!MatchingService)
    {
      v9 = BKLogCommon();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v10 = "Couldn't find framebuffer service";
        goto LABEL_12;
      }

LABEL_13:

      return;
    }
  }

  v7 = MatchingService;
  v8 = IOMobileFramebufferOpen();
  IOObjectRelease(v7);
  if (v8)
  {
    v9 = BKLogCommon();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v10 = "Couldn't open framebuffer service";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, v10, buf, 2u);
      goto LABEL_13;
    }

    goto LABEL_13;
  }

  v11 = IOMobileFramebufferSetDebugFlags();
  v12 = BKLogCommon();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Couldn't set debug flags", buf, 2u);
    }
  }

  else if (v13)
  {
    *buf = 67109120;
    v15 = a3;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Tether dithering: %d", buf, 8u);
  }
}

- (void)noteInterfaceOrientationChangedWithInterfaceOrientation:(int)a3
{
  if ([(BKTetherController *)self usesDisplayPortTethering])
  {
    v5 = +[BKDisplayController sharedInstance];
    v6 = [v5 displayIsBlanked:0];

    if (v6)
    {
      v7 = 5;
      goto LABEL_42;
    }

    buf[0] = 0;
    input[0] = _NSConcreteStackBlock;
    input[1] = 3221225472;
    input[2] = sub_100002FE0;
    input[3] = &unk_1000FA7F8;
    memset(&input[4], 0, 24);
    input[7] = buf;
    input[8] = 0;
    input[9] = 0;
    sub_100002E40(input);
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        if (buf[0] == 3)
        {
          v16 = 4;
        }

        else
        {
          v16 = 2;
        }

        if (buf[0] == 1)
        {
          v7 = 1;
        }

        else
        {
          v7 = v16;
        }

LABEL_42:
        if (v7 != self->_lastOrientationCode)
        {
          if (!self->_orientationNotificationsDisabled)
          {
            [(BKTetherController *)self _postDisplayPortNotificationCode:v7];
          }

          self->_lastOrientationCode = v7;
        }

        return;
      }

      if (a3 != 4)
      {
        return;
      }

      if (buf[0] == 3)
      {
        v10 = 1;
      }

      else
      {
        v10 = 3;
      }

      v11 = buf[0] == 1;
      v12 = 4;
    }

    else if (a3 == 1)
    {
      if (buf[0] == 3)
      {
        v10 = 2;
      }

      else
      {
        v10 = 1;
      }

      v11 = buf[0] == 1;
      v12 = 3;
    }

    else
    {
      if (a3 != 2)
      {
        return;
      }

      if (buf[0] == 3)
      {
        v10 = 3;
      }

      else
      {
        v10 = 4;
      }

      v11 = buf[0] == 1;
      v12 = 2;
    }

    if (v11)
    {
      v7 = v12;
    }

    else
    {
      v7 = v10;
    }

    goto LABEL_42;
  }

  v8 = [(BKTetherController *)self _demoCardConnection];
  if (!v8)
  {
    return;
  }

  input[0] = 0;
  switch(a3)
  {
    case 4:
      v9 = 2;
      break;
    case 3:
      v9 = 3;
      break;
    case 2:
      v9 = 1;
      break;
    default:
      goto LABEL_25;
  }

  input[0] = v9;
LABEL_25:
  outputCnt = 0;
  v13 = IOConnectCallScalarMethod(v8, 1u, input, 1u, 0, &outputCnt);
  if (v13)
  {
    v14 = v13;
    v15 = BKLogCommon();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v20 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Demo card rotation failed, result = %08x\n", buf, 8u);
    }
  }
}

- (void)_handleDemoModeChanged
{
  if ([(BKTetherController *)self usesDisplayPortTethering])
  {
    [(BKTetherController *)self _setTetherState:0];
    v3 = +[NSNotificationCenter defaultCenter];
    [v3 postNotificationName:@"BKTetherControllerTetherStateChangedNotification" object:self];

    v4 = BKLogDetailed();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v6 = [(BKTetherController *)self isTethered];
      v7 = @"not tethered";
      if (v6)
      {
        v7 = @"tethered";
      }

      v8 = 138412290;
      v9 = v7;
      _os_log_debug_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "DEMO MODE CHANGED: Now %@", &v8, 0xCu);
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"com.apple.backboardd.tetherStateChanged", 0, 0, 1u);
  }
}

- (BOOL)usesDisplayPortTethering
{
  if (qword_100125FC8 != -1)
  {
    dispatch_once(&qword_100125FC8, &stru_1000FB9C0);
  }

  return byte_100125FC0;
}

- (void)_setTetherState:(int)a3
{
  if (self->_tetherState != a3)
  {
    if ([(BKTetherController *)self usesDisplayPortTethering])
    {
      if (a3 == 1)
      {
        DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100056DD0, @"com.apple.backboardd.deviceinterfaceorientation", 0, CFNotificationSuspensionBehaviorDrop);
        CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_100056DD0, @"com.apple.springboard.hasBlankedScreen", 0, CFNotificationSuspensionBehaviorDrop);
      }

      else if (self->_tetherState == 1)
      {
        v6 = CFNotificationCenterGetDarwinNotifyCenter();
        CFNotificationCenterRemoveObserver(v6, self, @"com.apple.backboardd.deviceinterfaceorientation", 0);
        CFNotificationCenterRemoveObserver(v6, self, @"com.apple.springboard.hasBlankedScreen", 0);
        self->_lastOrientationCode = -1;
      }
    }

    self->_tetherState = a3;
  }
}

- (unsigned)_demoCardConnection
{
  p_demoCardConnection = &self->_demoCardConnection;
  result = self->_demoCardConnection;
  if (!result)
  {
    *mainPort = 0;
    if (IOMainPort(0, &mainPort[1]))
    {
      v4 = BKLogCommon();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315138;
        v14 = "[BKTetherController _demoCardConnection]";
        v5 = "%s IOMainPort failed";
LABEL_5:
        v6 = v4;
        v7 = 12;
LABEL_13:
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v5, buf, v7);
        goto LABEL_14;
      }

      goto LABEL_14;
    }

    v8 = IOServiceMatching("AppleTetheredDevice");
    if (v8)
    {
      if (IOServiceGetMatchingServices(mainPort[1], v8, mainPort))
      {
        v4 = BKLogCommon();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315138;
          v14 = "[BKTetherController _demoCardConnection]";
          v5 = "%s IOServiceGetMatchingServices failed";
          goto LABEL_5;
        }

LABEL_14:

        return 0;
      }

      v9 = IOIteratorNext(mainPort[0]);
      if (v9)
      {
        v10 = v9;
        v11 = IOServiceOpen(v9, mach_task_self_, 0, p_demoCardConnection);
        IOObjectRelease(v10);
        if (!v11)
        {
          return *p_demoCardConnection;
        }

        v4 = BKLogCommon();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *buf = 136315394;
        v14 = "[BKTetherController _demoCardConnection]";
        v15 = 2082;
        v16 = "AppleTetheredDevice";
        v5 = "%s IOServiceOpen failed for class '%{public}s'";
      }

      else
      {
        v4 = BKLogCommon();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *buf = 136315394;
        v14 = "[BKTetherController _demoCardConnection]";
        v15 = 2082;
        v16 = "AppleTetheredDevice";
        v5 = "%s No %{public}s instance found";
      }
    }

    else
    {
      v4 = BKLogCommon();
      if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_14;
      }

      *buf = 136315394;
      v14 = "[BKTetherController _demoCardConnection]";
      v15 = 2082;
      v16 = "AppleTetheredDevice";
      v5 = "%s IOServiceMatching failed for %{public}s";
    }

    v6 = v4;
    v7 = 22;
    goto LABEL_13;
  }

  return result;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = BKTetherController;
  [(BKTetherController *)&v4 dealloc];
}

- (BKTetherController)init
{
  v8.receiver = self;
  v8.super_class = BKTetherController;
  v2 = [(BKTetherController *)&v8 init];
  v3 = v2;
  if (v2)
  {
    if ([(BKTetherController *)v2 usesDisplayPortTethering])
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterAddObserver(DarwinNotifyCenter, v3, sub_1000572B4, @"com.apple.mobile.demo_mode_changed", 0, CFNotificationSuspensionBehaviorDrop);
      v3->_lastOrientationCode = -1;
    }

    if ([(BKTetherController *)v3 isTethered])
    {
      v5 = +[BKSDefaults localDefaults];
      v6 = [v5 isDitheringEnabled];

      [(BKTetherController *)v3 setDitheringEnabled:v6];
    }
  }

  return v3;
}

@end