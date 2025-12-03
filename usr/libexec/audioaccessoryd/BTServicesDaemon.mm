@interface BTServicesDaemon
+ (id)sharedBTServicesDaemon;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (BTServicesDaemon)init;
- (id)descriptionWithLevel:(int)level;
- (void)_activate;
- (void)_audioQualityShowBanner:(int)banner title:(id)title deviceAddressString:(id)string messageKey:(id)key messageArgs:(id)args timeoutSeconds:(double)seconds;
- (void)_cbConnectedDiscoveryEnsureStarted;
- (void)_cbConnectedDiscoveryEnsureStopped;
- (void)_fileRadar:(id)radar;
- (void)_fileRadarForFWCrash:(id)crash;
- (void)_fileRadarForHIDLag:(id)lag;
- (void)_prefsChanged;
- (void)_scheduleUpdate;
- (void)_shareAudioActionScannerDeviceFound:(id)found;
- (void)_shareAudioActionScannerDeviceLost:(id)lost;
- (void)_shareAudioActionScannerEnsureStarted;
- (void)_shareAudioActionScannerEnsureStopped;
- (void)_shareAudioConnectedDeviceFound:(id)found;
- (void)_shareAudioConnectedDeviceLost:(id)lost;
- (void)_shareAudioConnectedDiscoveryEnsureStarted;
- (void)_shareAudioConnectedDiscoveryEnsureStopped;
- (void)_shareAudioSessionEnded:(id)ended;
- (void)_shareAudioSessionProgressEvent:(int)event info:(id)info;
- (void)_shareAudioSessionStartWithDarwinDevice:(id)device cbDevice:(id)cbDevice;
- (void)_shareAudioShowConnectBanner:(id)banner;
- (void)_showConnectBannerIfEnabled:(id)enabled;
- (void)_showHIDConnected:(id)connected;
- (void)_showHIDIntervalBannerIfEnabled:(id)enabled;
- (void)_showHIDLagBannerIfEnabled:(id)enabled;
- (void)_update;
- (void)_xpcConnectionInvalidated:(id)invalidated;
- (void)activate;
- (void)invalidate;
- (void)openRadarforAudioQuality;
- (void)showCrashBannerIfNeeded:(id)needed;
@end

@implementation BTServicesDaemon

+ (id)sharedBTServicesDaemon
{
  if (qword_1002FA258[0] != -1)
  {
    sub_1001FCDF4();
  }

  v3 = qword_1002FA250;

  return v3;
}

- (BTServicesDaemon)init
{
  v8.receiver = self;
  v8.super_class = BTServicesDaemon;
  v2 = [(BTServicesDaemon *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("BTServicesDaemon", v3);
    v5 = *(v2 + 6);
    *(v2 + 6) = v4;

    *(v2 + 2) = -1;
    *(v2 + 60) = -1;
    v6 = v2;
  }

  return v2;
}

- (id)descriptionWithLevel:(int)level
{
  v75 = 0;
  v76 = &v75;
  v77 = 0x3032000000;
  v78 = sub_1000039F8;
  v79 = sub_1000038A8;
  v80 = 0;
  obj = 0;
  v4 = +[BTIdentityDaemon sharedBTIdentityDaemon];
  v46 = CUDescriptionWithLevel();
  NSAppendPrintF();
  objc_storeStrong(&v80, 0);

  v5 = (v76 + 5);
  v73 = v76[5];
  v6 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
  v47 = CUDescriptionWithLevel();
  NSAppendPrintF();
  objc_storeStrong(v5, v73);

  v7 = (v76 + 5);
  v72 = v76[5];
  v48 = [(NSMutableDictionary *)self->_shareAudioActionTriggeredDevices count];
  NSAppendPrintF();
  objc_storeStrong(v7, v72);
  v8 = self->_shareAudioActionScanner;
  if (v8)
  {
    v9 = (v76 + 5);
    v71 = v76[5];
    v48 = CUDescriptionWithLevel();
    NSAppendPrintF();
    objc_storeStrong(v9, v71);
  }

  shareAudioActionTriggeredDevices = self->_shareAudioActionTriggeredDevices;
  v70[0] = _NSConcreteStackBlock;
  v70[1] = 3221225472;
  v70[2] = sub_1000DFA6C;
  v70[3] = &unk_1002B7DC8;
  v70[4] = &v75;
  [(NSMutableDictionary *)shareAudioActionTriggeredDevices enumerateKeysAndObjectsUsingBlock:v70, v48];
  v11 = self->_shareAudioConnectedDeviceMap;
  if (v11)
  {
    v12 = (v76 + 5);
    v69 = v76[5];
    v49 = CUDescriptionWithLevel();
    NSAppendPrintF();
    objc_storeStrong(v12, v69);
  }

  v13 = self->_shareAudioActionUINoteSession;
  if (v13)
  {
    v14 = (v76 + 5);
    v68 = v76[5];
    v49 = CUDescriptionWithLevel();
    NSAppendPrintF();
    objc_storeStrong(v14, v68);
  }

  v15 = (v76 + 5);
  v67 = v76[5];
  NSAppendPrintF();
  objc_storeStrong(v15, v67);
  v16 = [(NSMutableSet *)self->_xpcConnections count];
  if (v16)
  {
    v17 = (v76 + 5);
    v66 = v76[5];
    v49 = v16;
    NSAppendPrintF();
    objc_storeStrong(v17, v66);
  }

  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v51 = self->_xpcConnections;
  v18 = [(NSMutableSet *)v51 countByEnumeratingWithState:&v62 objects:v82 count:16];
  if (v18)
  {
    v19 = *v63;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v63 != v19)
        {
          objc_enumerationMutation(v51);
        }

        v21 = *(*(&v62 + 1) + 8 * i);
        v22 = (v76 + 5);
        v61 = v76[5];
        xpcCnx = [v21 xpcCnx];
        processIdentifier = [xpcCnx processIdentifier];
        entitled = [v21 entitled];
        v26 = "no";
        if (entitled)
        {
          v26 = "yes";
        }

        v50 = v26;
        NSAppendPrintF();
        objc_storeStrong(v22, v61);

        audioSession = [v21 audioSession];
        v28 = audioSession;
        if (audioSession)
        {
          v29 = (v76 + 5);
          v60 = v76[5];
          v49 = audioSession;
          NSAppendPrintF();
          objc_storeStrong(v29, v60);
        }

        shareAudioSession = [v21 shareAudioSession];
        v31 = shareAudioSession;
        if (shareAudioSession)
        {
          v32 = (v76 + 5);
          v59 = v76[5];
          v49 = shareAudioSession;
          NSAppendPrintF();
          objc_storeStrong(v32, v59);
        }

        v33 = (v76 + 5);
        v58 = v76[5];
        NSAppendPrintF();
        objc_storeStrong(v33, v58);
      }

      v18 = [(NSMutableSet *)v51 countByEnumeratingWithState:&v62 objects:v82 count:16];
    }

    while (v18);
  }

  v56 = 0u;
  v57 = 0u;
  v54 = 0u;
  v55 = 0u;
  v34 = CFPrefs_CopyKeys();
  v35 = [v34 countByEnumeratingWithState:&v54 objects:v81 count:16];
  if (!v35)
  {
    goto LABEL_33;
  }

  v36 = 0;
  v37 = *v55;
  do
  {
    for (j = 0; j != v35; j = j + 1)
    {
      if (*v55 != v37)
      {
        objc_enumerationMutation(v34);
      }

      v39 = *(*(&v54 + 1) + 8 * j);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v40 = CFPrefs_CopyTypedValue();
        v41 = (v76 + 5);
        v53 = v76[5];
        NSAppendPrintF();
        objc_storeStrong(v41, v53);

        ++v36;
      }
    }

    v35 = [v34 countByEnumeratingWithState:&v54 objects:v81 count:16];
  }

  while (v35);

  if (v36 >= 1)
  {
    v42 = v76;
    v52 = v76[5];
    NSAppendPrintF();
    v43 = v52;
    v34 = v42[5];
    v42[5] = v43;
LABEL_33:
  }

  v44 = v76[5];
  _Block_object_dispose(&v75, 8);

  return v44;
}

- (void)openRadarforAudioQuality
{
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FCE08();
  }

  v20[0] = @"Classification";
  v20[1] = @"ComponentID";
  v21[0] = @"Performance";
  v21[1] = @"815886";
  v20[2] = @"ComponentName";
  v20[3] = @"ComponentVersion";
  v21[2] = @"CoreBluetooth - HFP Audio | iOS";
  v21[3] = @"iOS";
  v20[4] = @"ExtensionIdentifiers";
  v20[5] = @"Reproducibility";
  v21[4] = @"com.apple.DiagnosticExtensions.Bluetooth";
  v21[5] = @"I Didn't Try";
  v20[6] = @"Keywords";
  v20[7] = @"Title";
  v21[6] = @"1551854";
  v21[7] = @"Bluetooth Audio Quality Feedback";
  v2 = [NSDictionary dictionaryWithObjects:v21 forKeys:v20 count:8];
  v3 = +[NSMutableArray array];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v4 objectForKeyedSubscript:{v9, v15}];
        v11 = [NSURLQueryItem queryItemWithName:v9 value:v10];
        [v3 addObject:v11];
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v19 count:16];
    }

    while (v6);
  }

  v12 = [NSURLComponents componentsWithString:@"tap-to-radar://new"];
  [v12 setQueryItems:v3];
  v13 = +[LSApplicationWorkspace defaultWorkspace];
  v14 = [v12 URL];
  [v13 openURL:v14 configuration:0 completionHandler:0];
}

- (void)_audioQualityShowBanner:(int)banner title:(id)title deviceAddressString:(id)string messageKey:(id)key messageArgs:(id)args timeoutSeconds:(double)seconds
{
  titleCopy = title;
  keyCopy = key;
  v13 = objc_alloc_init(BTBannerUISession);
  audioQualityBanner = self->_audioQualityBanner;
  self->_audioQualityBanner = v13;
  v15 = v13;

  if (titleCopy)
  {
    v16 = titleCopy;
  }

  else
  {
    v16 = &stru_1002C1358;
  }

  [(BTBannerUISession *)v15 setCenterContentText:v16];
  [(BTBannerUISession *)v15 setCenterContentItemsText:keyCopy];

  [(BTBannerUISession *)v15 setDispatchQueue:self->_dispatchQueue];
  [(BTBannerUISession *)v15 setTimeoutSeconds:seconds];
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_1000DFEBC;
  v18[3] = &unk_1002BB740;
  v18[4] = v15;
  v18[5] = self;
  v19 = titleCopy;
  v17 = titleCopy;
  [(BTBannerUISession *)v15 setActionHandler:v18];
  [(BTBannerUISession *)v15 activate];
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E00E0;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  if (!self->_xpcListener)
  {
    v3 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.BluetoothServices"];
    xpcListener = self->_xpcListener;
    self->_xpcListener = v3;

    [(NSXPCListener *)self->_xpcListener setDelegate:self];
    [(NSXPCListener *)self->_xpcListener _setQueue:self->_dispatchQueue];
    [(NSXPCListener *)self->_xpcListener resume];
  }

  if (self->_prefsChangedNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000E04F8;
    handler[3] = &unk_1002B6DF0;
    handler[4] = self;
    notify_register_dispatch("com.apple.bluetooth.prefsChanged", &self->_prefsChangedNotifyToken, dispatchQueue, handler);
  }

  if (self->_ignoreResetNotifyToken == -1)
  {
    if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FCF38();
    }

    v6 = self->_dispatchQueue;
    v16[0] = _NSConcreteStackBlock;
    v16[1] = 3221225472;
    v16[2] = sub_1000E0560;
    v16[3] = &unk_1002B6DF0;
    v16[4] = self;
    notify_register_dispatch("com.apple.bluetooth.ignoreReset", &self->_ignoreResetNotifyToken, v6, v16);
  }

  if (IsAppleInternalBuild() && self->_audioQualityNotifyToken == -1)
  {
    if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FCF6C();
    }

    v7 = self->_dispatchQueue;
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_1000E05C0;
    v15[3] = &unk_1002B6DF0;
    v15[4] = self;
    notify_register_dispatch("com.apple.bluetooth.audioQuality", &self->_audioQualityNotifyToken, v7, v15);
  }

  if (!self->_stateHandle)
  {
    v8 = self->_dispatchQueue;
    v14[5] = _NSConcreteStackBlock;
    v14[6] = 3221225472;
    v14[7] = sub_1000E064C;
    v14[8] = &unk_1002B7390;
    v14[9] = self;
    self->_stateHandle = os_state_add_handler();
  }

  v9 = [[UNUserNotificationCenter alloc] initWithBundleIdentifier:@"com.apple.ShareAudioNotifications"];
  [v9 setWantsNotificationResponsesDelivered];
  [(BTServicesDaemon *)self _prefsChanged];
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FCFA0();
  }

  v10 = objc_alloc_init(CBController);
  cbController = self->_cbController;
  self->_cbController = v10;

  [(CBController *)self->_cbController setDispatchQueue:self->_dispatchQueue];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_1000E0668;
  v14[3] = &unk_1002B6880;
  v14[4] = self;
  [(CBController *)self->_cbController setInterruptionHandler:v14];
  v12 = self->_cbController;
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_1000E06DC;
  v13[3] = &unk_1002B6A38;
  v13[4] = self;
  [(CBController *)v12 activateWithCompletion:v13];
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000E07DC;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_prefsChanged
{
  v3 = CFPrefs_GetInt64() != 0;
  if (self->_prefShareAudioTV != v3)
  {
    if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD0A0();
    }

    self->_prefShareAudioTV = v3;
  }

  v4 = CFPrefs_GetInt64() != 0;
  if (self->_dontShowConnectBanner != v4)
  {
    if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD0F8();
    }

    self->_dontShowConnectBanner = v4;
  }

  v5 = CFPrefs_GetInt64() != 0;
  if (self->_dontShowCrashBanner != v5)
  {
    if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD150();
    }

    self->_dontShowCrashBanner = v5;
  }

  v6 = CFPrefs_GetInt64() != 0;
  if (self->_dontShowHIDLagBanner != v6)
  {
    if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD1A8();
    }

    self->_dontShowHIDLagBanner = v6;
  }

  v7 = CFPrefs_GetInt64() != 0;
  if (self->_doesShowHIDIntervalBanner != v7)
  {
    if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD200();
    }

    self->_doesShowHIDIntervalBanner = v7;
  }

  [(BTServicesDaemon *)self _scheduleUpdate];
}

- (void)_scheduleUpdate
{
  if (!self->_updatePending)
  {
    self->_updatePending = 1;
    dispatchQueue = self->_dispatchQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000E0BF0;
    block[3] = &unk_1002B6880;
    block[4] = self;
    dispatch_async(dispatchQueue, block);
  }
}

- (void)_update
{
  self->_updatePending = 0;
  if (self->_dontShowConnectBanner)
  {
    [(BTServicesDaemon *)self _cbConnectedDiscoveryEnsureStopped];
  }

  else
  {
    [(BTServicesDaemon *)self _cbConnectedDiscoveryEnsureStarted];
  }

  if (self->_prefShareAudioTV)
  {
    [(BTServicesDaemon *)self _shareAudioActionScannerEnsureStarted];
  }

  else
  {
    [(BTServicesDaemon *)self _shareAudioActionScannerEnsureStopped];
  }

  if (self->_prefShareAudioTV)
  {

    [(BTServicesDaemon *)self _shareAudioConnectedDiscoveryEnsureStarted];
  }

  else
  {

    [(BTServicesDaemon *)self _shareAudioConnectedDiscoveryEnsureStopped];
  }
}

- (void)showCrashBannerIfNeeded:(id)needed
{
  neededCopy = needed;
  mach_absolute_time();
  showFirmwareCrashLastTicks = self->_showFirmwareCrashLastTicks;
  v6 = UpTicksToSeconds();
  if (!self->_showFirmwareCrashLastTicks || (v7 = v6, v6 >= 0x3C))
  {
    self->_showFirmwareCrashLastTicks = mach_absolute_time();
    if (IsAppleInternalBuild() && !self->_dontShowCrashBanner)
    {
      if (self->_uiNoteSession)
      {
        if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001FD274();
        }

        [(CUUserNotificationSession *)self->_uiNoteSession removeAllActions];
        [(CUUserNotificationSession *)self->_uiNoteSession invalidate];
      }

      v8 = [neededCopy objectForKeyedSubscript:@"_input"];
      v9 = [v8 isEqual:@"HostCrashed"];

      if (v9)
      {
        v10 = @"Bluetooth host has crashed";
      }

      else
      {
        v10 = @"Bluetooth firmware has crashed";
      }

      if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FD290();
      }

      v11 = objc_alloc_init(NSDateFormatter);
      [v11 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
      v12 = +[NSDate date];
      v13 = [v11 stringFromDate:v12];

      v14 = objc_alloc_init(CUUserNotificationSession);
      uiNoteSession = self->_uiNoteSession;
      self->_uiNoteSession = v14;
      v16 = v14;

      [(CUUserNotificationSession *)v16 setBundleID:@"com.apple.BTUserNotifications"];
      [(CUUserNotificationSession *)v16 setCategoryID:@"BTUserNotifications"];
      [(CUUserNotificationSession *)v16 setDispatchQueue:self->_dispatchQueue];
      [(CUUserNotificationSession *)v16 setIconName:@"Bluetooth.icns"];
      [(CUUserNotificationSession *)v16 setTitleKey:v10];
      [(CUUserNotificationSession *)v16 setBodyKey:v13];
      [(CUUserNotificationSession *)v16 setTimeoutSeconds:43200.0];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000E1050;
      v20[3] = &unk_1002BB768;
      v20[4] = v16;
      [(CUUserNotificationSession *)v16 setActionHandler:v20];
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_1000E10DC;
      v18[3] = &unk_1002B6CF0;
      v18[4] = v16;
      v18[5] = self;
      v19 = neededCopy;
      [(CUUserNotificationSession *)v16 addActionWithIdentifier:@"FileRadarAction" title:@"File Radar" flags:0 handler:v18];
      [(CUUserNotificationSession *)v16 activate];
    }

    goto LABEL_22;
  }

  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FD258();
  }

  if (v7 >= 0xA)
  {
LABEL_22:
    v21 = @"CrashType";
    CFStringGetTypeID();
    TypedValue = CFDictionaryGetTypedValue();
    v17 = [NSDictionary dictionaryWithObjects:&TypedValue forKeys:&v21 count:1];
    CUMetricsLog();
  }
}

- (void)_fileRadarForFWCrash:(id)crash
{
  crashCopy = crash;
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FD30C();
  }

  CFStringGetTypeID();
  v5 = CFDictionaryGetTypedValue();
  v6 = [[NSString alloc] initWithFormat:@"Bluetooth Crashed: %@", v5];
  v8[0] = @"Classification";
  v8[1] = @"ComponentID";
  v9[0] = @"Crash/Hang/Data Loss";
  v9[1] = @"161045";
  v8[2] = @"ComponentName";
  v8[3] = @"ComponentVersion";
  v9[2] = @"Bluetooth (New Bugs)";
  v9[3] = @"iOS";
  v8[4] = @"ExtensionIdentifiers";
  v8[5] = @"Reproducibility";
  v9[4] = @"com.apple.DiagnosticExtensions.Bluetooth";
  v9[5] = @"I Didn't Try";
  v8[6] = @"Title";
  v9[6] = v6;
  v7 = [NSDictionary dictionaryWithObjects:v9 forKeys:v8 count:7];
  [(BTServicesDaemon *)self _fileRadar:v7];
}

- (void)_fileRadarForHIDLag:(id)lag
{
  lagCopy = lag;
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FD328();
  }

  v5 = [[NSString alloc] initWithFormat:@"Bluetooth HID Lag Detected"];
  v7[0] = @"Classification";
  v7[1] = @"ComponentID";
  v8[0] = @"Crash/Hang/Data Loss";
  v8[1] = @"183565";
  v7[2] = @"ComponentName";
  v7[3] = @"ComponentVersion";
  v8[2] = @"CoreBluetooth - HID Lag";
  v8[3] = @"iOS";
  v7[4] = @"ExtensionIdentifiers";
  v7[5] = @"Reproducibility";
  v8[4] = @"com.apple.DiagnosticExtensions.Bluetooth";
  v8[5] = @"I Didn't Try";
  v7[6] = @"Title";
  v8[6] = v5;
  v6 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:7];
  [(BTServicesDaemon *)self _fileRadar:v6];
}

- (void)_fileRadar:(id)radar
{
  radarCopy = radar;
  v4 = +[NSMutableArray array];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = radarCopy;
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      for (i = 0; i != v7; i = i + 1)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v16 + 1) + 8 * i);
        v11 = [v5 objectForKeyedSubscript:{v10, v16}];
        v12 = [NSURLQueryItem queryItemWithName:v10 value:v11];
        [v4 addObject:v12];
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  v13 = [NSURLComponents componentsWithString:@"tap-to-radar://new"];
  [v13 setQueryItems:v4];
  v14 = +[LSApplicationWorkspace defaultWorkspace];
  v15 = [v13 URL];
  [v14 openURL:v15 configuration:0 completionHandler:0];
}

- (void)_showConnectBannerIfEnabled:(id)enabled
{
  enabledCopy = enabled;
  mach_absolute_time();
  showConnectBannerLastTicks = self->_showConnectBannerLastTicks;
  v6 = UpTicksToSeconds();
  if (self->_showConnectBannerLastTicks)
  {
    v7 = v6 >= 0xA;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    self->_showConnectBannerLastTicks = mach_absolute_time();
    if (IsAppleInternalBuild())
    {
      if (!self->_dontShowConnectBanner)
      {
        name = [enabledCopy name];
        if (![name length])
        {
LABEL_20:

          goto LABEL_21;
        }

        connectedServices = [enabledCopy connectedServices];

        if (connectedServices && ([enabledCopy connectedServices] & 0x1000000) == 0)
        {
          if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
          {
            sub_1001FD344(enabledCopy);
          }

          name = objc_alloc_init(NSDateFormatter);
          [name setDateFormat:@"hh:mm:ss a"];
          v10 = +[NSDate date];
          v11 = [name stringFromDate:v10];

          btAddressData = [enabledCopy btAddressData];
          v13 = CUPrintNSDataAddress();

          v14 = [v13 substringFromIndex:{objc_msgSend(v13, "length") - 5}];
          if (([enabledCopy connectedServices] & 0x400000) != 0)
          {
            [NSString stringWithFormat:@"LE Connection at %@", v11];
          }

          else if (([enabledCopy connectedServices] & 0x800000) != 0)
          {
            [NSString stringWithFormat:@"Classic Connection at %@", v11];
          }

          else
          {
            [NSString stringWithFormat:@"Connected at %@", v11];
          }
          v15 = ;
          v16 = objc_alloc_init(CUUserNotificationSession);
          [v16 setBundleID:@"com.apple.BTUserNotifications"];
          [v16 setCategoryID:@"BTUserNotifications"];
          [v16 setDispatchQueue:self->_dispatchQueue];
          [v16 setIconName:@"Bluetooth.icns"];
          name2 = [enabledCopy name];
          v18 = [NSString stringWithFormat:@"%@%@%@%@", name2, @" ("), v14, CFSTR(")"];
          [v16 setTitleKey:v18];

          [v16 setSubtitleKey:v15];
          [v16 activate];
          v19[0] = _NSConcreteStackBlock;
          v19[1] = 3221225472;
          v19[2] = sub_1000E18FC;
          v19[3] = &unk_1002BB768;
          v19[4] = v16;
          [v16 setActionHandler:v19];

          goto LABEL_20;
        }
      }
    }
  }

LABEL_21:
}

- (void)_showHIDLagBannerIfEnabled:(id)enabled
{
  enabledCopy = enabled;
  mach_absolute_time();
  showHIDLagBannerLastTicks = self->_showHIDLagBannerLastTicks;
  v6 = UpTicksToSeconds();
  if (self->_showHIDLagBannerLastTicks && v6 < 0x3C)
  {
    if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD3E8();
    }
  }

  else
  {
    self->_showHIDLagBannerLastTicks = mach_absolute_time();
    if (IsAppleInternalBuild() && !self->_dontShowHIDLagBanner)
    {
      if (self->_uiNoteSession)
      {
        if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001FD404();
        }

        [(CUUserNotificationSession *)self->_uiNoteSession removeAllActions];
        [(CUUserNotificationSession *)self->_uiNoteSession invalidate];
      }

      v7 = [enabledCopy objectForKeyedSubscript:@"_input"];
      v8 = [v7 isEqual:@"HIDLagDetected"];

      if (v8)
      {
        v9 = @"Bluetooth HID Lag Detected";
      }

      else
      {
        v9 = @"Bluetooth HID Lag detected";
      }

      if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FD420();
      }

      v10 = objc_alloc_init(CUUserNotificationSession);
      uiNoteSession = self->_uiNoteSession;
      self->_uiNoteSession = v10;
      v12 = v10;

      [(CUUserNotificationSession *)v12 setBundleID:@"com.apple.BTUserNotifications"];
      [(CUUserNotificationSession *)v12 setCategoryID:@"BTUserNotifications"];
      [(CUUserNotificationSession *)v12 setDispatchQueue:self->_dispatchQueue];
      [(CUUserNotificationSession *)v12 setIconName:@"Bluetooth.icns"];
      [(CUUserNotificationSession *)v12 setTitleKey:v9];
      [(CUUserNotificationSession *)v12 setBodyKey:@"Please file a radar"];
      v20[0] = _NSConcreteStackBlock;
      v20[1] = 3221225472;
      v20[2] = sub_1000E1C4C;
      v20[3] = &unk_1002BB768;
      v20[4] = v12;
      [(CUUserNotificationSession *)v12 setActionHandler:v20];
      v13 = _NSConcreteStackBlock;
      v14 = 3221225472;
      v15 = sub_1000E1CD8;
      v16 = &unk_1002B6CF0;
      v17 = v12;
      selfCopy = self;
      v19 = enabledCopy;
      [(CUUserNotificationSession *)v12 addActionWithIdentifier:@"FileRadarAction" title:@"File Radar" flags:0 handler:&v13];
      [(CUUserNotificationSession *)v12 activate:v13];
    }
  }
}

- (void)_showHIDIntervalBannerIfEnabled:(id)enabled
{
  enabledCopy = enabled;
  if (IsAppleInternalBuild() && self->_doesShowHIDIntervalBanner)
  {
    if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD49C();
    }

    v4 = [enabledCopy objectForKeyedSubscript:@"DeviceName"];
    v5 = [enabledCopy objectForKeyedSubscript:@"Intervalms"];
    [v5 doubleValue];
    v7 = [NSString stringWithFormat:@"%@ is %.2f ms", v4, v6];
    v8 = objc_alloc_init(CUUserNotificationSession);
    [v8 setBundleID:@"com.apple.BTUserNotifications"];
    [v8 setCategoryID:@"BTUserNotifications"];
    [v8 setFlags:8];
    [v8 setDispatchQueue:self->_dispatchQueue];
    [v8 setIconName:@"Bluetooth.icns"];
    [v8 setTimeoutSeconds:5.0];
    [v8 setTitleKey:@"Update HID interval"];
    [v8 setSubtitleKey:v7];
    [v8 activate];
  }
}

- (void)_showHIDConnected:(id)connected
{
  connectedCopy = connected;
  [connectedCopy batteryLevelMain];
  v6 = v5;
  name = [connectedCopy name];
  if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FD4B8();
  }

  p_uiHIDDeviceBanner = &self->_uiHIDDeviceBanner;
  uiHIDDeviceBanner = self->_uiHIDDeviceBanner;
  if (uiHIDDeviceBanner)
  {
    [(BTBannerUISession *)uiHIDDeviceBanner invalidate];
    v10 = *p_uiHIDDeviceBanner;
    *p_uiHIDDeviceBanner = 0;
  }

  v11 = objc_alloc_init(BTBannerUISession);
  [v11 setDispatchQueue:self->_dispatchQueue];
  [v11 setBatteryLevelInfo:v6];
  [v11 setTimeoutSeconds:10.0];
  [v11 setBannerType:3];
  objc_storeStrong(&self->_uiHIDDeviceBanner, v11);
  [v11 setCenterContentText:name];
  deviceType = [connectedCopy deviceType];
  v13 = @"gamecontroller.fill";
  if (deviceType == 24)
  {
    v13 = @"keyboard.fill";
  }

  if (deviceType == 25)
  {
    v13 = @"magicmouse.fill";
  }

  if (deviceType == 49)
  {
    v14 = @"rectangle.fill";
  }

  else
  {
    v14 = v13;
  }

  [v11 setLeadingAccessoryImageName:v14];
  v15 = +[NSBundle mainBundle];
  v16 = [v15 localizedStringForKey:@"CONNECTED" value:&stru_1002C1358 table:0];
  [v11 setCenterContentItemsText:v16];

  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_1000E20A0;
  v17[3] = &unk_1002B7430;
  v17[4] = v11;
  v17[5] = self;
  [v11 setActionHandler:v17];
  [v11 activate];
}

- (void)_cbConnectedDiscoveryEnsureStarted
{
  if (!self->_cbConnectedDiscovery)
  {
    v11[5] = v5;
    v11[6] = v4;
    v11[9] = v2;
    v11[10] = v3;
    if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD558();
    }

    v7 = objc_alloc_init(CBDiscovery);
    cbConnectedDiscovery = self->_cbConnectedDiscovery;
    self->_cbConnectedDiscovery = v7;

    [(CBDiscovery *)self->_cbConnectedDiscovery setDispatchQueue:self->_dispatchQueue];
    [(CBDiscovery *)self->_cbConnectedDiscovery setDiscoveryFlags:[(CBDiscovery *)self->_cbConnectedDiscovery discoveryFlags]| 0x200000];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000E22A0;
    v11[3] = &unk_1002B6858;
    v11[4] = self;
    [(CBDiscovery *)self->_cbConnectedDiscovery setDeviceFoundHandler:v11];
    v9 = self->_cbConnectedDiscovery;
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000E22AC;
    v10[3] = &unk_1002B6A38;
    v10[4] = self;
    [(CBDiscovery *)v9 activateWithCompletion:v10];
  }
}

- (void)_cbConnectedDiscoveryEnsureStopped
{
  if (self->_cbConnectedDiscovery)
  {
    if (dword_1002F76E0 <= 30 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD5B4();
    }

    [(CBDiscovery *)self->_cbConnectedDiscovery invalidate];
    cbConnectedDiscovery = self->_cbConnectedDiscovery;
    self->_cbConnectedDiscovery = 0;
  }
}

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  connectionCopy = connection;
  v6 = objc_alloc_init(BTServicesXPCConnection);
  [(BTServicesXPCConnection *)v6 setDaemon:self];
  [(BTServicesXPCConnection *)v6 setDispatchQueue:self->_dispatchQueue];
  [(BTServicesXPCConnection *)v6 setXpcCnx:connectionCopy];
  xpcConnections = self->_xpcConnections;
  if (!xpcConnections)
  {
    v8 = objc_alloc_init(NSMutableSet);
    v9 = self->_xpcConnections;
    self->_xpcConnections = v8;

    xpcConnections = self->_xpcConnections;
  }

  [(NSMutableSet *)xpcConnections addObject:v6];
  v31 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BTServicesXPCClientInterface];
  v32 = [NSSet alloc];
  v29 = objc_opt_class();
  v10 = objc_opt_class();
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  v13 = objc_opt_class();
  v14 = objc_opt_class();
  v15 = objc_opt_class();
  v34 = v6;
  v16 = objc_opt_class();
  v33 = [v32 initWithObjects:{v29, v10, v11, v12, v13, v14, v15, v16, objc_opt_class(), 0}];
  [v31 setClasses:? forSelector:? argumentIndex:? ofReply:?];
  [connectionCopy _setQueue:self->_dispatchQueue];
  v30 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___BTServicesXPCDaemonInterface];
  v28 = [NSSet alloc];
  v17 = objc_opt_class();
  v18 = objc_opt_class();
  v19 = objc_opt_class();
  v20 = objc_opt_class();
  v21 = objc_opt_class();
  v22 = objc_opt_class();
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  v27 = objc_opt_class();
  v25 = [v28 initWithObjects:{v17, v18, v19, v20, v21, v22, v23, v24, v27, objc_opt_class(), 0}];
  [v30 setClasses:v25 forSelector:"showHIDConnectedBannerAperture:completion:" argumentIndex:0 ofReply:1];
  [connectionCopy setExportedInterface:v30];
  [connectionCopy setExportedObject:v34];
  v35[0] = _NSConcreteStackBlock;
  v35[1] = 3221225472;
  v35[2] = sub_1000E276C;
  v35[3] = &unk_1002B6D18;
  v35[4] = self;
  v35[5] = v34;
  [connectionCopy setInvalidationHandler:v35];
  [connectionCopy setRemoteObjectInterface:v31];
  [connectionCopy resume];
  if (dword_1002F76E0 <= 20 && (dword_1002F76E0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FD5D0(connectionCopy);
  }

  return 1;
}

- (void)_xpcConnectionInvalidated:(id)invalidated
{
  invalidatedCopy = invalidated;
  v6 = invalidatedCopy;
  if (dword_1002F76E0 <= 20)
  {
    if (dword_1002F76E0 != -1 || (v5 = _LogCategory_Initialize(), invalidatedCopy = v6, v5))
    {
      sub_1001FD614(invalidatedCopy);
      invalidatedCopy = v6;
    }
  }

  [invalidatedCopy xpcConnectionInvalidated];
  [(NSMutableSet *)self->_xpcConnections removeObject:v6];
}

- (void)_shareAudioActionScannerEnsureStarted
{
  if (!self->_shareAudioActionScanner)
  {
    v12[6] = v5;
    v12[7] = v4;
    v12[12] = v2;
    v12[13] = v3;
    v7 = objc_alloc_init(SFDeviceDiscovery);
    shareAudioActionScanner = self->_shareAudioActionScanner;
    self->_shareAudioActionScanner = v7;

    [(SFDeviceDiscovery *)v7 setChangeFlags:5];
    [(SFDeviceDiscovery *)v7 setDiscoveryFlags:16];
    [(SFDeviceDiscovery *)v7 setDispatchQueue:self->_dispatchQueue];
    [(SFDeviceDiscovery *)v7 setPurpose:@"ShareAudio"];
    [(SFDeviceDiscovery *)v7 setRssiThreshold:-70];
    [(SFDeviceDiscovery *)v7 setScanRate:20];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000E2A34;
    v12[3] = &unk_1002B8428;
    v12[4] = self;
    v12[5] = v7;
    [(SFDeviceDiscovery *)v7 setDeviceFoundHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_100003498;
    v11[3] = &unk_1002B8428;
    v11[4] = self;
    v11[5] = v7;
    [(SFDeviceDiscovery *)v7 setDeviceLostHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10000304C;
    v10[3] = &unk_1002B8450;
    v10[4] = self;
    v10[5] = v7;
    [(SFDeviceDiscovery *)v7 setDeviceChangedHandler:v10];
    if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD678();
    }

    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_1000E2A58;
    v9[3] = &unk_1002B68A8;
    v9[4] = self;
    v9[5] = v7;
    [(SFDeviceDiscovery *)v7 activateWithCompletion:v9];
  }
}

- (void)_shareAudioActionScannerEnsureStopped
{
  if (self->_shareAudioActionScanner)
  {
    if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD6EC();
    }

    [(SFDeviceDiscovery *)self->_shareAudioActionScanner invalidate];
    shareAudioActionScanner = self->_shareAudioActionScanner;
    self->_shareAudioActionScanner = 0;
  }
}

- (void)_shareAudioConnectedDiscoveryEnsureStarted
{
  if (!self->_shareAudioConnectedDeviceDiscovery)
  {
    v12[6] = v5;
    v12[7] = v4;
    v12[12] = v2;
    v12[13] = v3;
    if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD708();
    }

    v7 = objc_alloc_init(CBDiscovery);
    shareAudioConnectedDeviceDiscovery = self->_shareAudioConnectedDeviceDiscovery;
    self->_shareAudioConnectedDeviceDiscovery = v7;
    v9 = v7;

    [(CBDiscovery *)v9 setDispatchQueue:self->_dispatchQueue];
    [(CBDiscovery *)v9 setDiscoveryFlags:[(CBDiscovery *)v9 discoveryFlags]| 0x200000];
    [(CBDiscovery *)v9 setLabel:@"ShareAudio"];
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 3221225472;
    v12[2] = sub_1000E2D34;
    v12[3] = &unk_1002B6DA8;
    v12[4] = v9;
    v12[5] = self;
    [(CBDiscovery *)v9 setDeviceFoundHandler:v12];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000E2D50;
    v11[3] = &unk_1002B6DA8;
    v11[4] = v9;
    v11[5] = self;
    [(CBDiscovery *)v9 setDeviceLostHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000E2D6C;
    v10[3] = &unk_1002B6A38;
    v10[4] = self;
    [(CBDiscovery *)v9 activateWithCompletion:v10];
  }
}

- (void)_shareAudioConnectedDiscoveryEnsureStopped
{
  if (self->_shareAudioConnectedDeviceDiscovery)
  {
    if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD764();
    }

    [(CBDiscovery *)self->_shareAudioConnectedDeviceDiscovery invalidate];
    shareAudioConnectedDeviceDiscovery = self->_shareAudioConnectedDeviceDiscovery;
    self->_shareAudioConnectedDeviceDiscovery = 0;
  }
}

- (void)_shareAudioConnectedDeviceFound:(id)found
{
  foundCopy = found;
  deviceFlags = [foundCopy deviceFlags];
  v5 = foundCopy;
  if ((deviceFlags & 4) != 0)
  {
    identifier = [foundCopy identifier];
    if (identifier)
    {
      if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FD780();
      }

      shareAudioConnectedDeviceMap = self->_shareAudioConnectedDeviceMap;
      if (!shareAudioConnectedDeviceMap)
      {
        v8 = objc_alloc_init(NSMutableDictionary);
        v9 = self->_shareAudioConnectedDeviceMap;
        self->_shareAudioConnectedDeviceMap = v8;

        shareAudioConnectedDeviceMap = self->_shareAudioConnectedDeviceMap;
      }

      [(NSMutableDictionary *)shareAudioConnectedDeviceMap setObject:foundCopy forKeyedSubscript:identifier];
    }

    v5 = foundCopy;
  }

  _objc_release_x1(deviceFlags, v5);
}

- (void)_shareAudioConnectedDeviceLost:(id)lost
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_shareAudioConnectedDeviceMap objectForKeyedSubscript:identifier];

    if (v5)
    {
      if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
      {
        sub_1001FD7C0();
      }

      [(NSMutableDictionary *)self->_shareAudioConnectedDeviceMap setObject:0 forKeyedSubscript:identifier];
    }
  }
}

- (void)_shareAudioShowConnectBanner:(id)banner
{
  bannerCopy = banner;
  allValues = [(NSMutableDictionary *)self->_shareAudioConnectedDeviceMap allValues];
  firstObject = [allValues firstObject];

  if (firstObject)
  {
    name = [bannerCopy name];
    if (![name length])
    {
      v8 = [NSBundle bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.ShareAudioNotifications.bundle"];
      v9 = CULocalizedStringEx();

      name = v9;
    }

    v10 = objc_alloc_init(CUUserNotificationSession);
    shareAudioActionUINoteSession = self->_shareAudioActionUINoteSession;
    self->_shareAudioActionUINoteSession = v10;
    v12 = v10;

    [(CUUserNotificationSession *)v12 setBundleID:@"com.apple.ShareAudioNotifications"];
    [(CUUserNotificationSession *)v12 setCategoryID:@"ShareAudioCategoryID"];
    [(CUUserNotificationSession *)v12 setDispatchQueue:self->_dispatchQueue];
    [(CUUserNotificationSession *)v12 setFlags:9];
    identifier = [bannerCopy identifier];
    uUIDString = [identifier UUIDString];
    [(CUUserNotificationSession *)v12 setIdentifier:uUIDString];

    [(CUUserNotificationSession *)v12 setLabel:@"ShareAudio"];
    [(CUUserNotificationSession *)v12 setTitleKey:name];
    [(CUUserNotificationSession *)v12 setBodyKey:@"SHARE_AUDIO_BODY_FORMAT"];
    name2 = [firstObject name];
    v16 = name2;
    v17 = @"?";
    if (name2)
    {
      v17 = name2;
    }

    v28 = v17;
    v18 = [NSArray arrayWithObjects:&v28 count:1];
    [(CUUserNotificationSession *)v12 setBodyArguments:v18];

    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_1000E3310;
    v27[3] = &unk_1002B7430;
    v27[4] = v12;
    v27[5] = self;
    [(CUUserNotificationSession *)v12 setActionHandler:v27];
    v19 = _NSConcreteStackBlock;
    v20 = 3221225472;
    v21 = sub_1000E33C0;
    v22 = &unk_1002B7B18;
    v23 = v12;
    selfCopy = self;
    v25 = bannerCopy;
    v26 = firstObject;
    [(CUUserNotificationSession *)v12 addActionWithIdentifier:@"ShareAudioActionIDConnect" title:@"SHARE_AUDIO_BUTTON" flags:0 handler:&v19];
    [(CUUserNotificationSession *)v12 activate:v19];
  }

  else
  {
    sub_1001FD800();
  }
}

- (void)_shareAudioSessionStartWithDarwinDevice:(id)device cbDevice:(id)cbDevice
{
  deviceCopy = device;
  cbDeviceCopy = cbDevice;
  if (self->_shareAudioSession)
  {
    if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
    {
      sub_1001FD8DC();
    }

    [(BTShareAudioSessionDaemon *)self->_shareAudioSession invalidate];
  }

  if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v8 = objc_alloc_init(BTShareAudioSessionDaemon);
  shareAudioSession = self->_shareAudioSession;
  self->_shareAudioSession = v8;
  v10 = v8;

  [(BTShareAudioSessionDaemon *)v10 setDarwinDevice:deviceCopy];
  [(BTShareAudioSessionDaemon *)v10 setDispatchQueue:self->_dispatchQueue];
  [(BTShareAudioSessionDaemon *)v10 setMode:1];
  [(BTShareAudioSessionDaemon *)v10 setCbDevice:cbDeviceCopy];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000E35F4;
  v11[3] = &unk_1002BB790;
  v11[4] = v10;
  v11[5] = self;
  [(BTShareAudioSessionDaemon *)v10 setProgressHandler:v11];
  [(BTShareAudioSessionDaemon *)v10 activate];
}

- (void)_shareAudioSessionEnded:(id)ended
{
  endedCopy = ended;
  if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FD91C();
  }

  [(BTShareAudioSessionDaemon *)self->_shareAudioSession invalidate];
  shareAudioSession = self->_shareAudioSession;
  self->_shareAudioSession = 0;
}

- (void)_shareAudioSessionProgressEvent:(int)event info:(id)info
{
  infoCopy = info;
  if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
  {
    sub_1001FD95C();
  }

  if (event == 50)
  {
    CFErrorGetTypeID();
    v6 = CFDictionaryGetTypedValue();
    if (v6)
    {
      [(BTServicesDaemon *)self _shareAudioSessionEnded:v6];
    }

    else
    {
      v7 = BTErrorF();
      [(BTServicesDaemon *)self _shareAudioSessionEnded:v7];
    }
  }

  else if (event == 40)
  {
    [(BTServicesDaemon *)self _shareAudioSessionEnded:0];
  }
}

- (void)_shareAudioActionScannerDeviceFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    if ([foundCopy deviceActionType] != 31)
    {
      [(BTServicesDaemon *)self _shareAudioActionScannerDeviceLost:foundCopy];
      goto LABEL_21;
    }

    bleDevice = [foundCopy bleDevice];
    if (self->_shareAudioActionUINoteSession)
    {
      if (dword_1002F7810 > 10 || dword_1002F7810 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_20;
      }
    }

    else if (self->_shareAudioSession)
    {
      if (dword_1002F7810 > 10 || dword_1002F7810 == -1 && !_LogCategory_Initialize())
      {
        goto LABEL_20;
      }
    }

    else
    {
      v7 = [(NSMutableDictionary *)self->_shareAudioActionTriggeredDevices objectForKeyedSubscript:uUIDString];

      if (v7)
      {
        if (dword_1002F7810 > 10 || dword_1002F7810 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_20;
        }
      }

      else if ([bleDevice smoothedRSSI] <= -71)
      {
        if (dword_1002F7810 > 10 || dword_1002F7810 == -1 && !_LogCategory_Initialize())
        {
          goto LABEL_20;
        }
      }

      else
      {
        if ([(NSMutableDictionary *)self->_shareAudioConnectedDeviceMap count])
        {
          if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
          {
            v14 = bleDevice;
            LogPrintF();
          }

          shareAudioActionTriggeredDevices = self->_shareAudioActionTriggeredDevices;
          v9 = foundCopy;
          if (!shareAudioActionTriggeredDevices)
          {
            v10 = objc_alloc_init(NSMutableDictionary);
            v11 = self->_shareAudioActionTriggeredDevices;
            self->_shareAudioActionTriggeredDevices = v10;

            v9 = foundCopy;
            shareAudioActionTriggeredDevices = self->_shareAudioActionTriggeredDevices;
          }

          [(NSMutableDictionary *)shareAudioActionTriggeredDevices setObject:v9 forKeyedSubscript:uUIDString, v14];
          allValues = [(NSMutableDictionary *)self->_shareAudioConnectedDeviceMap allValues];
          firstObject = [allValues firstObject];

          if (firstObject && ([foundCopy deviceFlags] & 8) != 0)
          {
            [(BTServicesDaemon *)self _shareAudioSessionStartWithDarwinDevice:foundCopy cbDevice:firstObject];
          }

          else
          {
            [(BTServicesDaemon *)self _shareAudioShowConnectBanner:foundCopy];
          }

          goto LABEL_20;
        }

        if (dword_1002F7810 > 10 || dword_1002F7810 == -1 && !_LogCategory_Initialize())
        {
LABEL_20:

          goto LABEL_21;
        }
      }
    }

    LogPrintF();
    goto LABEL_20;
  }

LABEL_21:
}

- (void)_shareAudioActionScannerDeviceLost:(id)lost
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  uUIDString = [identifier UUIDString];

  if (uUIDString)
  {
    v6 = [(NSMutableDictionary *)self->_shareAudioActionTriggeredDevices objectForKeyedSubscript:uUIDString];

    if (v6)
    {
      if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
      {
        bleDevice = [lostCopy bleDevice];
        LogPrintF();

        [(NSMutableDictionary *)self->_shareAudioActionTriggeredDevices setObject:0 forKeyedSubscript:uUIDString, bleDevice];
      }

      else
      {
        [(NSMutableDictionary *)self->_shareAudioActionTriggeredDevices setObject:0 forKeyedSubscript:uUIDString, bleDevice2];
      }
    }

    identifier2 = [(CUUserNotificationSession *)self->_shareAudioActionUINoteSession identifier];
    v8 = [identifier2 isEqual:uUIDString];

    if (v8)
    {
      if (dword_1002F7810 <= 30 && (dword_1002F7810 != -1 || _LogCategory_Initialize()))
      {
        bleDevice2 = [lostCopy bleDevice];
        LogPrintF();
      }

      [(CUUserNotificationSession *)self->_shareAudioActionUINoteSession invalidate];
      shareAudioActionUINoteSession = self->_shareAudioActionUINoteSession;
      self->_shareAudioActionUINoteSession = 0;
    }
  }
}

@end