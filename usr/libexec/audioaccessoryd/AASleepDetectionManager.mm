@interface AASleepDetectionManager
+ (id)sharedSleepDetectionManager;
- (AASleepDetectionManager)init;
- (BOOL)_isDeviceIsMoving:(id)moving;
- (BOOL)_shouldRunPauseMediaOnSleep;
- (id)_formattedTimestamp:(id)timestamp;
- (id)_getNumberFromString:(id)string;
- (id)_getSleepDetectionTimestamp;
- (id)_notificationContentForSleepDetectionNotificationForDevice:(id)device;
- (int64_t)_minutesSinceTimestamp:(id)timestamp;
- (void)_aaControllerEnsureStarted;
- (void)_aaControllerEnsureStopped;
- (void)_activate;
- (void)_activityMonitorEnsureStarted;
- (void)_activityMonitorEnsureStopped;
- (void)_addSleepDetectionNotificationCategory;
- (void)_cleanMonitoringSourceMotion;
- (void)_connectedDeviceDiscoveryEnsureStarted;
- (void)_connectedDeviceDiscoveryEnsureStopped;
- (void)_connectedDeviceFound:(id)found;
- (void)_connectedDeviceLost:(id)lost;
- (void)_deregisterFromWirelessSplitterStateChanges;
- (void)_deregisterMediaPlaybackStateChangedNotifications;
- (void)_deviceMotionFrom:(id)from;
- (void)_fileRadar:(id)radar;
- (void)_fileRadarForSleepDetection:(BOOL)detection;
- (void)_monitorSleepDetectionToggleStateFrom:(id)from to:(id)to;
- (void)_processUserActivity;
- (void)_receivedSleepDetectionNotificationAction:(id)action forRequest:(id)request;
- (void)_registerForWirelessSplitterStateChanges;
- (void)_registerMediaPlaybackStateChangedNotifications;
- (void)_sendSDConfidenceThresholdIfNeeded;
- (void)_sendSleepDetectionConfidenceThreshold:(id)threshold;
- (void)_sendSleepDetectionReset:(id)reset withResetReason:(unsigned __int8)reason;
- (void)_sendSleepDuration;
- (void)_setSleepDetectedConfidenceLevel:(id)level;
- (void)_setSleepDetectionState:(BOOL)state;
- (void)_setSleepDetectionTimestamp;
- (void)_showSleepDetectionInternalDataCollectionNotification;
- (void)_sleepDetectionMessageReceived:(id)received;
- (void)_startCoolOffTimer;
- (void)_startMonitoringSourceMotion;
- (void)_startRewindMediaTimer;
- (void)_stopCoolOffTimer;
- (void)_stopMonitoringSourceMotion;
- (void)_stopRewindMediaTimer;
- (void)_updateSleepStatus:(unsigned __int8)status deviceLost:(BOOL)lost;
- (void)_userNotificationCenterEnsureStarted;
- (void)_userNotificationCenterEnsureStopped;
- (void)activate;
- (void)invalidate;
- (void)receivedNotificationResponse:(id)response forRequest:(id)request;
@end

@implementation AASleepDetectionManager

+ (id)sharedSleepDetectionManager
{
  if (qword_1002FA098 != -1)
  {
    sub_1001D8558();
  }

  v3 = qword_1002FA090;

  return v3;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E38C;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  v3 = +[AADeviceManagerDaemon sharedAADeviceManagerDaemon];
  aaDeviceManagerDaemon = self->_aaDeviceManagerDaemon;
  self->_aaDeviceManagerDaemon = v3;

  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D856C(&self->_aaDeviceManagerDaemon);
  }

  [(AASleepDetectionManager *)self _aaControllerEnsureStarted];
  [(AASleepDetectionManager *)self _addSleepDetectionNotificationCategory];
  [(AASleepDetectionManager *)self _connectedDeviceDiscoveryEnsureStarted];
  [(AASleepDetectionManager *)self _refreshAppPlayingState];
  [(AASleepDetectionManager *)self _registerForWirelessSplitterStateChanges];
  [(AASleepDetectionManager *)self _registerMediaPlaybackStateChangedNotifications];
  [(AASleepDetectionManager *)self _sendSDConfidenceThresholdIfNeeded];

  [(AASleepDetectionManager *)self _userNotificationCenterEnsureStarted];
}

- (AASleepDetectionManager)init
{
  v18.receiver = self;
  v18.super_class = AASleepDetectionManager;
  v2 = [(AASleepDetectionManager *)&v18 init];
  v3 = v2;
  if (v2)
  {
    v2->_activityLevel = 0;
    v2->_activityLevelNotifyToken = -1;
    v4 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v5 = dispatch_queue_create("AASleepDetectionManager", v4);
    dispatchQueue = v3->_dispatchQueue;
    v3->_dispatchQueue = v5;

    v3->_disableSleepDetectionNotification = CFPrefs_GetInt64() != 0;
    CFStringGetTypeID();
    v7 = CFPrefs_CopyTypedValue();
    v8 = [(AASleepDetectionManager *)v3 _getNumberFromString:v7];
    internalSDCoolOffPeriod = v3->_internalSDCoolOffPeriod;
    v3->_internalSDCoolOffPeriod = v8;

    v3->_sleepDetected = CFPrefs_GetInt64() != 0;
    CFNumberGetTypeID();
    v10 = CFPrefs_CopyTypedValue();
    sleepDetectedConfidenceLevel = v3->_sleepDetectedConfidenceLevel;
    v3->_sleepDetectedConfidenceLevel = v10;

    _getSleepDetectionTimestamp = [(AASleepDetectionManager *)v3 _getSleepDetectionTimestamp];
    sleepEventTimeStamp = v3->_sleepEventTimeStamp;
    v3->_sleepEventTimeStamp = _getSleepDetectionTimestamp;

    v3->_splitterStateOnToken = -1;
    v14 = +[NSMutableDictionary dictionary];
    unCategories = v3->_unCategories;
    v3->_unCategories = v14;

    v16 = v3;
  }

  return v3;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10002E664;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_aaControllerEnsureStarted
{
  p_aaController = &self->_aaController;
  v4 = self->_aaController;
  if (!v4)
  {
    v5 = objc_alloc_init(AAController);
    [(AAController *)v5 setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(p_aaController, v5);
    [(AAController *)v5 setInvalidationHandler:&stru_1002B77B8];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002E88C;
    v10[3] = &unk_1002B6E38;
    v6 = v5;
    v11 = v6;
    selfCopy = self;
    [(AAController *)v6 setSleepDetectionMessageHandler:v10];
    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D85B0();
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10002E950;
    v7[3] = &unk_1002B68A8;
    v4 = v6;
    v8 = v4;
    selfCopy2 = self;
    [(AAController *)v4 activateWithCompletion:v7];
  }
}

- (void)_aaControllerEnsureStopped
{
  aaController = self->_aaController;
  if (aaController)
  {
    [(AAController *)aaController invalidate];
    v4 = self->_aaController;
    self->_aaController = 0;
  }
}

- (void)_connectedDeviceDiscoveryEnsureStarted
{
  p_connectedDiscovery = &self->_connectedDiscovery;
  if (!self->_connectedDiscovery)
  {
    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D86C8();
    }

    v4 = objc_alloc_init(AADeviceManager);
    [v4 setDispatchQueue:self->_dispatchQueue];
    v5 = +[AAServicesDaemon sharedAAServicesDaemon];
    [v4 setInternalServicesDaemon:v5];

    [v4 setInterruptionHandler:&stru_1002B77D8];
    [v4 setInvalidationHandler:&stru_1002B77F8];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002ECF8;
    v11[3] = &unk_1002B7820;
    v11[4] = self;
    [v4 setDeviceFoundHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_10002ED04;
    v10[3] = &unk_1002B7820;
    v10[4] = self;
    [v4 setDeviceLostHandler:v10];
    objc_storeStrong(p_connectedDiscovery, v4);
    connectedDiscovery = self->_connectedDiscovery;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002ED10;
    v8[3] = &unk_1002B68A8;
    v8[4] = self;
    v9 = v4;
    v7 = v4;
    [(AADeviceManager *)connectedDiscovery activateWithCompletion:v8];
  }
}

- (void)_connectedDeviceLost:(id)lost
{
  lostCopy = lost;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D87A0(lostCopy, self);
  }

  identifier = [lostCopy identifier];
  if ([identifier isEqualToString:self->_sleepDetectionDeviceIdentifier])
  {
    sleepDetected = self->_sleepDetected;

    if (sleepDetected)
    {
      [(AASleepDetectionManager *)self _updateSleepStatus:0 deviceLost:1];
    }
  }

  else
  {
  }

  devicesMap = self->_devicesMap;
  identifier2 = [lostCopy identifier];
  [(NSMutableDictionary *)devicesMap removeObjectForKey:identifier2];
}

- (void)_connectedDeviceDiscoveryEnsureStopped
{
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D8824();
  }

  connectedDiscovery = self->_connectedDiscovery;
  if (connectedDiscovery)
  {
    [(AADeviceManager *)connectedDiscovery invalidate];
    v4 = self->_connectedDiscovery;
    self->_connectedDiscovery = 0;
  }
}

- (void)_deregisterFromWirelessSplitterStateChanges
{
  splitterStateOnToken = self->_splitterStateOnToken;
  if (splitterStateOnToken != -1)
  {
    if (dword_1002F6550 > 30)
    {
      goto LABEL_6;
    }

    if (dword_1002F6550 != -1 || _LogCategory_Initialize())
    {
      sub_1001D8840();
    }

    splitterStateOnToken = self->_splitterStateOnToken;
    if (splitterStateOnToken != -1)
    {
LABEL_6:
      notify_cancel(splitterStateOnToken);
      self->_splitterStateOnToken = -1;
    }
  }

  self->_isWirelessSplitterOn = 0;
}

- (void)_fileRadarForSleepDetection:(BOOL)detection
{
  detectionCopy = detection;
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D885C();
  }

  sleepEventTimeStamp = self->_sleepEventTimeStamp;
  rewindMediaInSeconds = self->_rewindMediaInSeconds;
  if (rewindMediaInSeconds)
  {
    integerValue = [(NSNumber *)rewindMediaInSeconds integerValue];
  }

  else
  {
    integerValue = 5;
  }

  v8 = [(NSDate *)sleepEventTimeStamp dateByAddingTimeInterval:-integerValue];
  v9 = [(AASleepDetectionManager *)self _formattedTimestamp:v8];

  v10 = [NSString alloc];
  v11 = @"Wrong";
  if (detectionCopy)
  {
    v11 = @"Correct";
  }

  v12 = [v10 initWithFormat:@"%@ Sleep Detection wearing AirPods at %@", v11, v9];
  v14[0] = @"Classification";
  v14[1] = @"ComponentID";
  v15[0] = @"Other Bug";
  v15[1] = @"1786398";
  v14[2] = @"ComponentName";
  v14[3] = @"ComponentVersion";
  v15[2] = @"CoreBluetooth | Pause Media On Sleep";
  v15[3] = @"iOS";
  v14[4] = @"Description";
  v14[5] = @"ExtensionIdentifiers";
  v15[4] = @"\n 1. What were you doing when you got the sleep detected notification (meditating, watching movie, etc.)? \n2. Did you have your AirPods (one/both) In-Ear? \n3. Were you super stationary around the timestamp shown on the notification? \n4. How were you positioned (sitting, laying down, standing, etc.)?";
  v15[5] = @"com.apple.DiagnosticExtensions.Bluetooth";
  v14[6] = @"Reproducibility";
  v14[7] = @"Title";
  v15[6] = @"I Didn't Try";
  v15[7] = v12;
  v13 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:8];
  [(AASleepDetectionManager *)self _fileRadar:v13];
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

- (id)_formattedTimestamp:(id)timestamp
{
  timestampCopy = timestamp;
  v4 = objc_alloc_init(NSDateFormatter);
  [v4 setDateFormat:@"HH:mm"];
  v5 = [v4 stringFromDate:timestampCopy];

  return v5;
}

- (id)_getNumberFromString:(id)string
{
  stringCopy = string;
  v4 = objc_alloc_init(NSNumberFormatter);
  [v4 setNumberStyle:1];
  v5 = [v4 numberFromString:stringCopy];

  return v5;
}

- (id)_getSleepDetectionTimestamp
{
  CFDateGetTypeID();
  v2 = CFPrefs_CopyTypedValue();

  return v2;
}

- (int64_t)_minutesSinceTimestamp:(id)timestamp
{
  if (!timestamp)
  {
    return 0;
  }

  timestampCopy = timestamp;
  v4 = +[NSDate now];
  [v4 timeIntervalSinceDate:timestampCopy];
  v6 = v5;

  return (v6 / 60.0);
}

- (void)_registerForWirelessSplitterStateChanges
{
  p_splitterStateOnToken = &self->_splitterStateOnToken;
  if (self->_splitterStateOnToken == -1)
  {
    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D88B4();
    }

    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10002F604;
    handler[3] = &unk_1002B6DF0;
    handler[4] = self;
    notify_register_dispatch("com.apple.bluetooth.WirelessSplitterOn", p_splitterStateOnToken, dispatchQueue, handler);
  }
}

- (void)_sendSDConfidenceThresholdIfNeeded
{
  aaDeviceManagerDaemon = self->_aaDeviceManagerDaemon;
  if (aaDeviceManagerDaemon)
  {
    availableDevices = [(AADeviceManagerDaemon *)aaDeviceManagerDaemon availableDevices];
    allValues = [availableDevices allValues];

    if (allValues)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v6 = allValues;
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v14;
        do
        {
          v10 = 0;
          do
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(v6);
            }

            v11 = *(*(&v13 + 1) + 8 * v10);
            if (v11 && [*(*(&v13 + 1) + 8 * v10) routed] && objc_msgSend(v11, "sleepDetectionCapability") == 2 && objc_msgSend(v11, "sleepDetectionEnabled") == 1)
            {
              identifier = [v11 identifier];
              [(AASleepDetectionManager *)self _sendSleepDetectionConfidenceThreshold:identifier];
            }

            v10 = v10 + 1;
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
        }

        while (v8);
      }
    }

    else
    {
      sub_1001D8AFC();
    }
  }

  else
  {
    sub_1001D8B5C();
  }
}

- (void)_setSleepDetectedConfidenceLevel:(id)level
{
  objc_storeStrong(&self->_sleepDetectedConfidenceLevel, level);
  levelCopy = level;
  CFPrefs_SetValue();
}

- (void)_setSleepDetectionState:(BOOL)state
{
  self->_sleepDetected = state;
  v3 = &kCFBooleanTrue;
  if (!state)
  {
    v3 = &kCFBooleanFalse;
  }

  v4 = *v3;
  CFPrefs_SetValue();
}

- (void)_setSleepDetectionTimestamp
{
  v3 = +[NSDate date];
  sleepEventTimeStamp = self->_sleepEventTimeStamp;
  self->_sleepEventTimeStamp = v3;

  v5 = self->_sleepEventTimeStamp;

  CFPrefs_SetValue();
}

- (BOOL)_shouldRunPauseMediaOnSleep
{
  if (self->_isStreaming)
  {
    if (!self->_isWirelessSplitterOn)
    {
      LOBYTE(v3) = 1;
      return v3;
    }

    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D8BD8();
    }

    [(AASleepDetectionManager *)self _setSleepDetectionState:0];
    [(AASleepDetectionManager *)self _sendSleepDetectionFailureMetric:3];
    goto LABEL_11;
  }

  if (dword_1002F6550 > 30)
  {
LABEL_11:
    LOBYTE(v3) = 0;
    return v3;
  }

  if (dword_1002F6550 != -1 || (v3 = _LogCategory_Initialize()) != 0)
  {
    sub_1001D8BBC();
    goto LABEL_11;
  }

  return v3;
}

- (void)_sendSleepDetectionConfidenceThreshold:(id)threshold
{
  thresholdCopy = threshold;
  v13 = 16643;
  v5 = [NSData dataWithBytes:&v13 length:2];
  [(AASleepDetectionManager *)self _aaControllerEnsureStarted];
  aaController = self->_aaController;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10002FFBC;
  v9[3] = &unk_1002B7898;
  v10 = v5;
  v11 = thresholdCopy;
  v12 = v13;
  v7 = thresholdCopy;
  v8 = v5;
  [(AAController *)aaController sendSleepDetectionMessage:v8 destinationIdentifier:v7 completionHandler:v9];
}

- (void)_sendSleepDetectionReset:(id)reset withResetReason:(unsigned __int8)reason
{
  resetCopy = reset;
  LOBYTE(v15) = 4;
  HIBYTE(v15) = reason;
  v7 = [NSData dataWithBytes:&v15 length:2];
  [(AASleepDetectionManager *)self _aaControllerEnsureStarted];
  aaController = self->_aaController;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1000301A4;
  v11[3] = &unk_1002B7898;
  v12 = v7;
  v13 = resetCopy;
  v14 = v15;
  v9 = resetCopy;
  v10 = v7;
  [(AAController *)aaController sendSleepDetectionMessage:v10 destinationIdentifier:v9 completionHandler:v11];
  [(AASleepDetectionManager *)self _sendSleepDetectionConfidenceThreshold:v9];
}

- (void)_sleepDetectionMessageReceived:(id)received
{
  receivedCopy = received;
  if ([receivedCopy length] <= 6)
  {
    sub_1001D8DFC();
    goto LABEL_16;
  }

  *&v10[3] = 0;
  *v10 = 0;
  [receivedCopy getBytes:v10 length:7];
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D8CF4(v10);
  }

  if ([(AudioAccessoryDevice *)self->_currentAudioDevice sleepDetectionCapability]!= 2 || [(AudioAccessoryDevice *)self->_currentAudioDevice sleepDetectionEnabled]!= 1)
  {
    sub_1001D8D94();
    goto LABEL_16;
  }

  if (v10[0] == 2)
  {
    v5 = v10[1];
    if (v10[6])
    {
      v6 = [NSNumber numberWithUnsignedChar:?];
      if (v5 != 1)
      {
        v7 = 184;
        goto LABEL_14;
      }

      [(AASleepDetectionManager *)self _setSleepDetectedConfidenceLevel:v6];
    }

    else if (v10[1] != 1)
    {
LABEL_15:
      dispatchQueue = self->_dispatchQueue;
      MRMediaRemoteGetNowPlayingApplicationIsPlaying();
      goto LABEL_16;
    }

    v6 = [NSNumber numberWithInt:5 * v10[5]];
    v7 = 120;
LABEL_14:
    v8 = *(&self->super.isa + v7);
    *(&self->super.isa + v7) = v6;

    goto LABEL_15;
  }

LABEL_16:
}

- (void)_startCoolOffTimer
{
  [(AASleepDetectionManager *)self _stopCoolOffTimer];
  internalSDCoolOffPeriod = self->_internalSDCoolOffPeriod;
  if (internalSDCoolOffPeriod)
  {
    [(NSNumber *)internalSDCoolOffPeriod integerValue];
  }

  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D8E9C();
  }

  v4 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  sleepDetectionCoolOffTimer = self->_sleepDetectionCoolOffTimer;
  self->_sleepDetectionCoolOffTimer = v4;
  v6 = v4;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000305F8;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v6, handler);
  v7 = self->_sleepDetectionCoolOffTimer;
  CUDispatchTimerSet();
  dispatch_activate(self->_sleepDetectionCoolOffTimer);
  [(AASleepDetectionManager *)self _startMonitoringSourceMotion];
  [(AASleepDetectionManager *)self _activityMonitorEnsureStarted];
}

- (void)_stopCoolOffTimer
{
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D8EF8();
  }

  sleepDetectionCoolOffTimer = self->_sleepDetectionCoolOffTimer;
  if (sleepDetectionCoolOffTimer)
  {
    v4 = sleepDetectionCoolOffTimer;
    dispatch_source_cancel(v4);
    v5 = self->_sleepDetectionCoolOffTimer;
    self->_sleepDetectionCoolOffTimer = 0;
  }

  [(AASleepDetectionManager *)self _stopMonitoringSourceMotion];

  [(AASleepDetectionManager *)self _activityMonitorEnsureStopped];
}

- (void)_startRewindMediaTimer
{
  [(AASleepDetectionManager *)self _stopRewindMediaTimer];
  v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueue);
  sleepDetectionRewindMediaTimer = self->_sleepDetectionRewindMediaTimer;
  self->_sleepDetectionRewindMediaTimer = v3;
  v5 = v3;

  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_1000307E4;
  handler[3] = &unk_1002B6880;
  handler[4] = self;
  dispatch_source_set_event_handler(v5, handler);
  v6 = self->_sleepDetectionRewindMediaTimer;
  CUDispatchTimerSet();
  dispatch_activate(self->_sleepDetectionRewindMediaTimer);
}

- (void)_stopRewindMediaTimer
{
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D8F30();
  }

  sleepDetectionRewindMediaTimer = self->_sleepDetectionRewindMediaTimer;
  if (sleepDetectionRewindMediaTimer)
  {
    v5 = sleepDetectionRewindMediaTimer;
    dispatch_source_cancel(v5);
    v4 = self->_sleepDetectionRewindMediaTimer;
    self->_sleepDetectionRewindMediaTimer = 0;
  }
}

- (void)_updateSleepStatus:(unsigned __int8)status deviceLost:(BOOL)lost
{
  lostCopy = lost;
  statusCopy = status;
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D8F4C(statusCopy);
  }

  if (statusCopy != 1)
  {
    if (self->_sleepDetected)
    {
      if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D8FB8();
      }

      if (_os_feature_enabled_impl() && MGGetBoolAnswer() && !self->_disableSleepDetectionNotification && (self->_sleepDetectedConfidenceLevel || lostCopy))
      {
        [(AASleepDetectionManager *)self _showSleepDetectionInternalDataCollectionNotification];
      }

      [(AASleepDetectionManager *)self _sendSleepDuration];
      [(AASleepDetectionManager *)self _setSleepDetectionState:0];
    }

    goto LABEL_24;
  }

  if ([(NSNumber *)self->_sleepDetectedConfidenceLevel unsignedIntegerValue]<= 0x40)
  {
    sub_1001D9024();
    return;
  }

  if (![(AASleepDetectionManager *)self _shouldRunPauseMediaOnSleep])
  {
    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D90A4();
    }

    self->_pausedMediaOnSleep = 0;
LABEL_24:
    if (self->_sleepDetectionCoolOffTimer)
    {
      [(AASleepDetectionManager *)self _sendSleepDetectionFailureMetric:0];
      [(AASleepDetectionManager *)self _stopCoolOffTimer];
    }

    goto LABEL_31;
  }

  v7 = +[NSDate date];
  rewindMediaInSeconds = self->_rewindMediaInSeconds;
  if (rewindMediaInSeconds)
  {
    integerValue = [(NSNumber *)rewindMediaInSeconds integerValue];
  }

  else
  {
    integerValue = 5;
  }

  v10 = [v7 dateByAddingTimeInterval:-integerValue];
  v11 = [(AASleepDetectionManager *)self _formattedTimestamp:v10];

  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D90C0();
  }

  [(AASleepDetectionManager *)self _setSleepDetectionTimestamp];
  [(AASleepDetectionManager *)self _startCoolOffTimer];

LABEL_31:
  if (self->_sleepDetectionRewindMediaTimer)
  {

    [(AASleepDetectionManager *)self _stopRewindMediaTimer];
  }
}

- (void)_cleanMonitoringSourceMotion
{
  motionActivityManager = self->_motionActivityManager;
  self->_motionActivityManager = 0;

  motionActivityUpdateQueue = self->_motionActivityUpdateQueue;
  self->_motionActivityUpdateQueue = 0;
}

- (void)_deviceMotionFrom:(id)from
{
  fromCopy = from;
  v5 = ([(CMMotionActivity *)fromCopy walking]|| [(CMMotionActivity *)fromCopy running]|| [(CMMotionActivity *)fromCopy cycling]) && [(CMMotionActivity *)fromCopy confidence]== 2 || [(AASleepDetectionManager *)self _isDeviceIsMoving:fromCopy];
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    v8 = v5;
    stateChangedFromStationaryToMoving = self->_stateChangedFromStationaryToMoving;
    v7 = fromCopy;
    LogPrintF();
  }

  if (v5)
  {
    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D9100();
    }

    [(AASleepDetectionManager *)self _sendSleepDetectionFailureMetric:1, v7, v8, stateChangedFromStationaryToMoving];
    [(AASleepDetectionManager *)self _stopCoolOffTimer];
    [(AASleepDetectionManager *)self _sendSleepDetectionReset:self->_sleepDetectionDeviceIdentifier withResetReason:2];
  }

  previousMotionActivity = self->_previousMotionActivity;
  self->_previousMotionActivity = fromCopy;
}

- (BOOL)_isDeviceIsMoving:(id)moving
{
  movingCopy = moving;
  v5 = movingCopy;
  if (self->_previousMotionActivity)
  {
    LOBYTE(v6) = 0;
  }

  else
  {
    v6 = ([movingCopy automotive] & 1) == 0 && (objc_msgSend(v5, "cycling") & 1) == 0 && (objc_msgSend(v5, "running") & 1) == 0 && (objc_msgSend(v5, "stationary") & 1) == 0 && (objc_msgSend(v5, "unknown") & 1) == 0 && (objc_msgSend(v5, "walking") & 1) == 0 && objc_msgSend(v5, "confidence") == 2;
    if (!self->_previousMotionActivity)
    {
      sub_1001D911C(v6, &v11);
      v9 = v11;
      goto LABEL_22;
    }
  }

  if (([v5 automotive] & 1) == 0 && (objc_msgSend(v5, "cycling") & 1) == 0 && (objc_msgSend(v5, "running") & 1) == 0 && (objc_msgSend(v5, "stationary") & 1) == 0 && (objc_msgSend(v5, "unknown") & 1) == 0 && (objc_msgSend(v5, "walking") & 1) == 0)
  {
    LOBYTE(v6) = ([v5 confidence] == 2) | v6;
  }

  stationary = [(CMMotionActivity *)self->_previousMotionActivity stationary];
  stateChangedFromStationaryToMoving = self->_stateChangedFromStationaryToMoving;
  if (stationary && (v6 & 1) != 0)
  {
    self->_stateChangedFromStationaryToMoving = ++stateChangedFromStationaryToMoving;
  }

  v9 = stateChangedFromStationaryToMoving > 1u;
LABEL_22:

  return v9;
}

- (void)_startMonitoringSourceMotion
{
  if (!self->_motionActivityManager)
  {
    v3 = objc_alloc_init(CMMotionActivityManager);
    motionActivityManager = self->_motionActivityManager;
    self->_motionActivityManager = v3;
  }

  motionActivityUpdateQueue = self->_motionActivityUpdateQueue;
  if (!motionActivityUpdateQueue)
  {
    v6 = objc_alloc_init(NSOperationQueue);
    v7 = self->_motionActivityUpdateQueue;
    self->_motionActivityUpdateQueue = v6;

    motionActivityUpdateQueue = self->_motionActivityUpdateQueue;
  }

  [(NSOperationQueue *)motionActivityUpdateQueue setMaxConcurrentOperationCount:1];
  v8 = self->_motionActivityManager;
  v9 = self->_motionActivityUpdateQueue;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100030F08;
  v10[3] = &unk_1002B78E8;
  v10[4] = self;
  [(CMMotionActivityManager *)v8 startActivityUpdatesToQueue:v9 withHandler:v10];
}

- (void)_stopMonitoringSourceMotion
{
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D9198();
  }

  motionActivityManager = self->_motionActivityManager;
  if (motionActivityManager)
  {
    [(CMMotionActivityManager *)motionActivityManager stopActivityUpdates];
  }

  self->_stateChangedFromStationaryToMoving = 0;
  previousMotionActivity = self->_previousMotionActivity;
  self->_previousMotionActivity = 0;
}

- (void)_activityMonitorEnsureStarted
{
  p_activityLevelNotifyToken = &self->_activityLevelNotifyToken;
  if (self->_activityLevelNotifyToken == -1)
  {
    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D91B4();
    }

    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100031100;
    handler[3] = &unk_1002B6DF0;
    handler[4] = self;
    notify_register_dispatch("com.apple.sharing.activity-level-changed", p_activityLevelNotifyToken, dispatchQueue, handler);
    [(AASleepDetectionManager *)self _processUserActivity];
  }
}

- (void)_processUserActivity
{
  v3 = objc_alloc_init(SFClient);
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1000311A4;
  v4[3] = &unk_1002B7910;
  v4[4] = self;
  [v3 activityStateWithCompletion:v4];
}

- (void)_activityMonitorEnsureStopped
{
  activityLevelNotifyToken = self->_activityLevelNotifyToken;
  if (activityLevelNotifyToken == -1)
  {
    return;
  }

  if (dword_1002F6550 >= 31)
  {
    self->_activityLevel = 0;
LABEL_8:
    notify_cancel(activityLevelNotifyToken);
    self->_activityLevelNotifyToken = -1;
    return;
  }

  if (dword_1002F6550 != -1 || _LogCategory_Initialize())
  {
    sub_1001D92B0();
  }

  activityLevelNotifyToken = self->_activityLevelNotifyToken;
  self->_activityLevel = 0;
  if (activityLevelNotifyToken != -1)
  {
    goto LABEL_8;
  }
}

- (void)_sendSleepDuration
{
  currentAudioDevice = self->_currentAudioDevice;
  if (currentAudioDevice)
  {
    v9[0] = @"accessoryFW";
    firmwareVersion = [(AudioAccessoryDevice *)currentAudioDevice firmwareVersion];
    v10[0] = firmwareVersion;
    v9[1] = @"accessoryProductID";
    v5 = self->_currentAudioDevice;
    if (v5)
    {
      v6 = [NSNumber numberWithUnsignedInt:[(AudioAccessoryDevice *)self->_currentAudioDevice productID]];
    }

    else
    {
      v6 = &off_1002CB690;
    }

    v10[1] = v6;
    v9[2] = @"sleepDuration";
    v7 = [NSNumber numberWithInteger:[(AASleepDetectionManager *)self _minutesSinceTimestamp:self->_sleepEventTimeStamp]];
    v10[2] = v7;
    v8 = [NSDictionary dictionaryWithObjects:v10 forKeys:v9 count:3];
    CUMetricsLog();

    if (v5)
    {
    }
  }

  else
  {
    sub_1001D950C();
  }
}

- (void)_deregisterMediaPlaybackStateChangedNotifications
{
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D956C();
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self name:kMRMediaRemoteOriginNowPlayingApplicationPlaybackStateDidChangeNotification object:0];
}

- (void)_registerMediaPlaybackStateChangedNotifications
{
  if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D9764();
  }

  v3 = +[NSNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_handleNowPlayingStateChangedNotification" name:kMRMediaRemoteOriginNowPlayingApplicationPlaybackStateDidChangeNotification object:0];
}

- (void)_addSleepDetectionNotificationCategory
{
  v3 = [NSBundle bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.AudioAccessoryUserNotifications.bundle"];
  v4 = CULocalizedStringEx();
  v5 = [UNNotificationAction actionWithIdentifier:@"SleepDetectionUserNotificationActionIDYes" title:v4 options:0];
  v6 = CULocalizedStringEx();
  v7 = [UNNotificationAction actionWithIdentifier:@"SleepDetectionUserNotificationActionIDNo" title:v6 options:0];
  v8 = CULocalizedStringEx();
  v9 = [UNNotificationAction actionWithIdentifier:@"SleepDetectionUserNotificationActionIDDisable" title:v8 options:0];
  v14[0] = v5;
  v14[1] = v7;
  v14[2] = v9;
  v10 = [NSArray arrayWithObjects:v14 count:3];
  v11 = [UNNotificationCategory categoryWithIdentifier:@"SleepDetectionUserNotification" actions:v10 intentIdentifiers:&__NSArray0__struct options:1];

  if (dword_1002F6550 <= 10 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D9780(v11);
  }

  unCategories = self->_unCategories;
  identifier = [v11 identifier];
  [(NSMutableDictionary *)unCategories setObject:v11 forKeyedSubscript:identifier];
}

- (void)_showSleepDetectionInternalDataCollectionNotification
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000323AC;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (id)_notificationContentForSleepDetectionNotificationForDevice:(id)device
{
  v4 = [NSBundle bundleWithPath:@"/System/Library/UserNotifications/Bundles/com.apple.AudioAccessoryUserNotifications.bundle"];
  v5 = objc_alloc_init(UNMutableNotificationContent);
  [v5 setCategoryIdentifier:@"SleepDetectionUserNotification"];
  v6 = [(AAUserNotificationCenter *)self->_unCenter deviceIconForProductID:[(AudioAccessoryDevice *)self->_currentAudioDevice productID]];
  [v5 setIcon:v6];

  sleepEventTimeStamp = self->_sleepEventTimeStamp;
  if (sleepEventTimeStamp)
  {
    rewindMediaInSeconds = self->_rewindMediaInSeconds;
    if (rewindMediaInSeconds)
    {
      integerValue = [(NSNumber *)rewindMediaInSeconds integerValue];
    }

    else
    {
      integerValue = 5;
    }

    v10 = [(NSDate *)sleepEventTimeStamp dateByAddingTimeInterval:-integerValue];
    v11 = [(AASleepDetectionManager *)self _formattedTimestamp:v10];

    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D98D0();
    }

    v12 = CULocalizedStringEx();
    v13 = CULocalizedStringEx();
    v14 = &stru_1002C1358;
    if (v11)
    {
      v14 = v11;
    }

    v15 = [NSString stringWithFormat:v13, v14];

    [v5 setTitle:v12];
    [v5 setBody:v15];
    [v5 setShouldIgnoreDoNotDisturb:1];
    [v5 setShouldSuppressDefaultAction:0];
    [v5 setShouldBackgroundDefaultAction:1];
    v16 = +[NSMutableDictionary dictionary];
    currentAudioDevice = self->_currentAudioDevice;
    if (currentAudioDevice)
    {
      firmwareVersion = [(AudioAccessoryDevice *)currentAudioDevice firmwareVersion];
      [v16 setObject:firmwareVersion forKeyedSubscript:@"accessoryFW"];
    }

    else
    {
      [v16 setObject:&stru_1002C1358 forKeyedSubscript:@"accessoryFW"];
    }

    v19 = self->_currentAudioDevice;
    if (v19)
    {
      v20 = [NSNumber numberWithUnsignedInt:[(AudioAccessoryDevice *)v19 productID]];
      [v16 setObject:v20 forKeyedSubscript:@"accessoryProductID"];
    }

    else
    {
      [v16 setObject:&off_1002CB690 forKeyedSubscript:@"accessoryProductID"];
    }

    if (self->_sleepDetectedConfidenceLevel)
    {
      sleepDetectedConfidenceLevel = self->_sleepDetectedConfidenceLevel;
    }

    else
    {
      sleepDetectedConfidenceLevel = &off_1002CB690;
    }

    [v16 setObject:sleepDetectedConfidenceLevel forKeyedSubscript:@"confidenceLevel"];
    v22 = [NSNumber numberWithInteger:[(AASleepDetectionManager *)self _minutesSinceTimestamp:self->_sleepEventTimeStamp]];
    [v16 setObject:v22 forKeyedSubscript:@"sleepDuration"];

    [v16 setObject:&off_1002CB690 forKeyedSubscript:@"sourceType"];
    [v5 setUserInfo:v16];
    v23 = v5;
  }

  else
  {
    sub_1001D9910(&v25);
    v23 = v25;
  }

  return v23;
}

- (void)receivedNotificationResponse:(id)response forRequest:(id)request
{
  responseCopy = response;
  requestCopy = request;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000329D0;
  block[3] = &unk_1002B6CF0;
  v12 = responseCopy;
  v13 = requestCopy;
  selfCopy = self;
  v9 = requestCopy;
  v10 = responseCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_receivedSleepDetectionNotificationAction:(id)action forRequest:(id)request
{
  actionCopy = action;
  content = [request content];
  userInfo = [content userInfo];

  v9 = actionCopy;
  v23 = v9;
  if (UNNotificationDismissActionIdentifier == v9)
  {

    goto LABEL_6;
  }

  if ((v9 != 0) == (UNNotificationDismissActionIdentifier == 0))
  {

    goto LABEL_11;
  }

  v10 = [(NSString *)v9 isEqual:UNNotificationDismissActionIdentifier];

  if (v10)
  {
LABEL_6:
    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D9A58();
    }

    goto LABEL_28;
  }

LABEL_11:
  v11 = v23;
  v12 = v11;
  if (UNNotificationDefaultActionIdentifier == v11)
  {

    goto LABEL_16;
  }

  if ((v23 != 0) != (UNNotificationDefaultActionIdentifier == 0))
  {
    v13 = [(NSString *)v11 isEqual:UNNotificationDefaultActionIdentifier];

    if (!v13)
    {
      goto LABEL_21;
    }

LABEL_16:
    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D9A18();
    }

    goto LABEL_28;
  }

LABEL_21:
  v14 = v12;
  if (v14 == @"SleepDetectionUserNotificationActionIDYes")
  {
    goto LABEL_24;
  }

  v15 = v14;
  if (!v14)
  {
    goto LABEL_52;
  }

  v16 = [(__CFString *)v14 isEqual:@"SleepDetectionUserNotificationActionIDYes"];

  if (v16)
  {
LABEL_24:
    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D99FC();
    }

    [(AASleepDetectionManager *)self _sendSleepDetectionMetricsForYesNo:1 withUserInfo:userInfo];
    goto LABEL_28;
  }

  v17 = v15;
  if (v17 == @"SleepDetectionUserNotificationActionIDNo" || (v18 = v17, v19 = [(__CFString *)v17 isEqual:@"SleepDetectionUserNotificationActionIDNo"], v18, v19))
  {
    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D99A0();
    }

    [(AASleepDetectionManager *)self _sendSleepDetectionMetricsForYesNo:0 withUserInfo:userInfo];
    [(AASleepDetectionManager *)self _fileRadarForSleepDetection:0];
    goto LABEL_28;
  }

  v20 = v18;
  if (v20 == @"SleepDetectionUserNotificationActionIDDisable" || (v21 = v20, v22 = [(__CFString *)v20 isEqual:@"SleepDetectionUserNotificationActionIDDisable"], v21, v22))
  {
    if (dword_1002F6550 <= 30 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D9984();
    }

    [(AASleepDetectionManager *)self _setDisableSleepDetectionNotification];
  }

  else
  {
LABEL_52:
    if (dword_1002F6550 <= 90 && (dword_1002F6550 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D99BC();
    }
  }

LABEL_28:
}

- (void)_userNotificationCenterEnsureStarted
{
  if (!self->_unCenter)
  {
    v4 = +[AAUserNotificationCenter sharedInstance];
    [v4 activate];

    v5 = +[AAUserNotificationCenter sharedInstance];
    unCenter = self->_unCenter;
    self->_unCenter = v5;

    v7 = self->_unCenter;
    allValues = [(NSMutableDictionary *)self->_unCategories allValues];
    [(AAUserNotificationCenter *)v7 registerNotificationCategories:allValues responseDelegate:self];
  }
}

- (void)_userNotificationCenterEnsureStopped
{
  unCenter = self->_unCenter;
  allKeys = [(NSMutableDictionary *)self->_unCategories allKeys];
  [(AAUserNotificationCenter *)unCenter deregisterNotificationCategoryWithIdentifiers:allKeys];

  v5 = self->_unCenter;
  self->_unCenter = 0;
}

- (void)_connectedDeviceFound:(id)found
{
  foundCopy = found;
  dispatch_assert_queue_V2(self->_dispatchQueue);
  identifier = [foundCopy identifier];
  devicesMap = self->_devicesMap;
  if (!devicesMap)
  {
    v6 = objc_alloc_init(NSMutableDictionary);
    v7 = self->_devicesMap;
    self->_devicesMap = v6;

    devicesMap = self->_devicesMap;
  }

  v8 = [(NSMutableDictionary *)devicesMap objectForKeyedSubscript:identifier];
  [(NSMutableDictionary *)self->_devicesMap setObject:foundCopy forKeyedSubscript:identifier];
  if (v8)
  {
    v9 = [v8 routed] ^ 1;
  }

  else
  {
    v9 = 1;
  }

  routed = [foundCopy routed];
  [(AASleepDetectionManager *)self _monitorSleepDetectionToggleStateFrom:v8 to:foundCopy];
  if (v9 && routed && [foundCopy sleepDetectionCapability] == 2 && objc_msgSend(foundCopy, "sleepDetectionEnabled") == 1)
  {
    identifier2 = [foundCopy identifier];
    [(AASleepDetectionManager *)self _sendSleepDetectionConfidenceThreshold:identifier2];
  }
}

- (void)_monitorSleepDetectionToggleStateFrom:(id)from to:(id)to
{
  fromCopy = from;
  toCopy = to;
  if ([toCopy sleepDetectionCapability] == 2)
  {
    v7 = fromCopy && [fromCopy sleepDetectionEnabled] == 1;
    sleepDetectionEnabled = [toCopy sleepDetectionEnabled];
    if (sleepDetectionEnabled == 1 && !v7)
    {
      identifier = [toCopy identifier];
      [(AASleepDetectionManager *)self _sendSleepDetectionConfidenceThreshold:identifier];
    }
  }
}

@end