@interface AAAccessoryUsageSummaryManager
+ (id)sharedAccessoryUsageSummaryManager;
- (AAAccessoryUsageSummaryManager)init;
- (BOOL)_isConnectedToAnyAirPods;
- (id)_getTopMagicPairingErrorCount:(id)count;
- (id)_getUsageSummary:(id)summary;
- (unsigned)_getUsageTypeWithData:(id)data;
- (void)_aaControllerEnsureStarted;
- (void)_aaControllerEnsureStopped;
- (void)_aaDeviceFound:(id)found;
- (void)_aaDeviceLost:(id)lost;
- (void)_accessoryDiscoveryEnsureStarted;
- (void)_accessoryDiscoveryEnsureStopped;
- (void)_accessoryUsageSummaryMessageReceived:(id)received forWxAddress:(id)address;
- (void)_activate;
- (void)_cleanupAirPodsUsageSummary;
- (void)_createPowerLogIdentifier;
- (void)_deregisterBackgroundSystemTaskScheduler;
- (void)_deregisterDisconnectionNotification;
- (void)_deregisterVolumeChangeNotification;
- (void)_handleRepeatingTask:(id)task;
- (void)_registerBackgroundSystemTaskScheduler;
- (void)_registerDisconnectionNotification;
- (void)_registerVolumeChangeNotification;
- (void)_submitAllAirPodsSummary;
- (void)_submitDeviceSummaryToPowerLog:(id)log;
- (void)_updateA2DPSummary:(id)summary wxAddress:(id)address;
- (void)_updateAirPodsConnectionSummary:(id)summary wxAddress:(id)address;
- (void)_updateAirPodsDisconnectionSummary:(unint64_t)summary wxAddress:(id)address;
- (void)_updateAirPodsVolumeSummary:(id)summary;
- (void)_updateBasicInfo:(id)info;
- (void)_updateHFPSummary:(id)summary wxAddress:(id)address;
- (void)_updatePacketFlushSummary:(id)summary wxAddress:(id)address;
- (void)_updatePairingSummary:(id)summary wxAddress:(id)address;
- (void)_updatemMagicPairingSummary:(id)summary wxAddress:(id)address;
- (void)activate;
- (void)invalidate;
@end

@implementation AAAccessoryUsageSummaryManager

+ (id)sharedAccessoryUsageSummaryManager
{
  if (qword_1002FA108 != -1)
  {
    sub_1001EE170();
  }

  v3 = qword_1002FA100;

  return v3;
}

- (AAAccessoryUsageSummaryManager)init
{
  v8.receiver = self;
  v8.super_class = AAAccessoryUsageSummaryManager;
  v2 = [(AAAccessoryUsageSummaryManager *)&v8 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AAAccessoryUsageSummaryManager", v3);
    dispatchQueue = v2->_dispatchQueue;
    v2->_dispatchQueue = v4;

    v6 = v2;
  }

  return v2;
}

- (void)activate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100078C24;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activate
{
  [(AAAccessoryUsageSummaryManager *)self _aaControllerEnsureStarted];
  [(AAAccessoryUsageSummaryManager *)self _accessoryDiscoveryEnsureStarted];
  [(AAAccessoryUsageSummaryManager *)self _createPowerLogIdentifier];
  v3 = objc_alloc_init(NSMutableDictionary);
  wxSummaryDeviceMap = self->_wxSummaryDeviceMap;
  self->_wxSummaryDeviceMap = v3;

  [(AAAccessoryUsageSummaryManager *)self _registerDisconnectionNotification];
  [(AAAccessoryUsageSummaryManager *)self _registerVolumeChangeNotification];

  [(AAAccessoryUsageSummaryManager *)self _registerBackgroundSystemTaskScheduler];
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
    [(AAController *)v5 setInvalidationHandler:&stru_1002B9338];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100078EBC;
    v10[3] = &unk_1002B6E38;
    v6 = v5;
    v11 = v6;
    selfCopy = self;
    [(AAController *)v6 setAccessoryUsageSummaryMessageHandler:v10];
    if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EE1A0();
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100078ED8;
    v7[3] = &unk_1002B68A8;
    v4 = v6;
    v8 = v4;
    selfCopy2 = self;
    [(AAController *)v4 activateWithCompletion:v7];
  }
}

- (id)_getUsageSummary:(id)summary
{
  summaryCopy = summary;
  if (summaryCopy)
  {
    v5 = [(NSMutableDictionary *)self->_wxSummaryDeviceMap objectForKeyedSubscript:summaryCopy];
    if (!v5)
    {
      v5 = objc_alloc_init(AAAccessoryUsageSummary);
      [(NSMutableDictionary *)self->_wxSummaryDeviceMap setObject:v5 forKeyedSubscript:summaryCopy];
    }
  }

  else
  {
    if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EE258();
    }

    v5 = 0;
  }

  return v5;
}

- (void)_accessoryDiscoveryEnsureStarted
{
  v3 = self->_aaDeviceManager;
  if (!v3)
  {
    v4 = objc_alloc_init(AADeviceManager);
    aaDeviceManager = self->_aaDeviceManager;
    self->_aaDeviceManager = v4;

    [(AADeviceManager *)v4 setDispatchQueue:self->_dispatchQueue];
    v6 = +[AAServicesDaemon sharedAAServicesDaemon];
    [(AADeviceManager *)v4 setInternalServicesDaemon:v6];

    [(AADeviceManager *)v4 setInterruptionHandler:&stru_1002B9358];
    [(AADeviceManager *)v4 setInvalidationHandler:&stru_1002B9378];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_1000792FC;
    v11[3] = &unk_1002B7820;
    v11[4] = self;
    [(AADeviceManager *)v4 setDeviceFoundHandler:v11];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100079308;
    v10[3] = &unk_1002B7820;
    v10[4] = self;
    [(AADeviceManager *)v4 setDeviceLostHandler:v10];
    if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EE274();
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_100079314;
    v7[3] = &unk_1002B68A8;
    v3 = v4;
    v8 = v3;
    selfCopy = self;
    [(AADeviceManager *)v3 activateWithCompletion:v7];
  }
}

- (void)_accessoryDiscoveryEnsureStopped
{
  aaDeviceManager = self->_aaDeviceManager;
  if (aaDeviceManager)
  {
    [(AADeviceManager *)aaDeviceManager invalidate];
    v4 = self->_aaDeviceManager;
    self->_aaDeviceManager = 0;
  }
}

- (void)_aaDeviceFound:(id)found
{
  foundCopy = found;
  bluetoothAddress = [foundCopy bluetoothAddress];
  if (bluetoothAddress)
  {
    v5 = [(AAAccessoryUsageSummaryManager *)self _getUsageSummary:bluetoothAddress];
    if (([v5 devicedConnected] & 1) == 0 && dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EE370();
    }

    [v5 setAaDevice:foundCopy];
    [(AAAccessoryUsageSummaryManager *)self _updateBasicInfo:foundCopy];
    [v5 _updateInEarState:0];
    [v5 _updateListeningMode:0];
    [v5 setDevicedConnected:1];
  }

  else
  {
    sub_1001EE3B0();
  }
}

- (void)_aaDeviceLost:(id)lost
{
  bluetoothAddress = [lost bluetoothAddress];
  if (bluetoothAddress)
  {
    v5 = [(AAAccessoryUsageSummaryManager *)self _getUsageSummary:bluetoothAddress];
    if ([v5 devicedConnected] && dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EE410();
    }

    [v5 _updateInEarState:1];
    [v5 _updateListeningMode:1];
    [v5 setDevicedConnected:0];
    if (![(AAAccessoryUsageSummaryManager *)self _isConnectedToAnyAirPods])
    {
      v6 = +[BGSystemTaskScheduler sharedScheduler];
      v9 = 0;
      v7 = [v6 resumeScheduling:@"com.apple.audioaccessoryd.AAAccessoryUsageSummary" error:&v9];
      v8 = v9;

      if ((v7 & 1) == 0 && dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EE450();
      }
    }
  }

  else
  {
    sub_1001EE490();
  }
}

- (void)_accessoryUsageSummaryMessageReceived:(id)received forWxAddress:(id)address
{
  receivedCopy = received;
  addressCopy = address;
  v7 = [(AAAccessoryUsageSummaryManager *)self _getUsageTypeWithData:receivedCopy];
  if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EE4F0(v7);
  }

  if (v7 > 3)
  {
    switch(v7)
    {
      case 4:
        [(AAAccessoryUsageSummaryManager *)self _updatemMagicPairingSummary:receivedCopy wxAddress:addressCopy];
        goto LABEL_21;
      case 5:
        [(AAAccessoryUsageSummaryManager *)self _updateAirPodsConnectionSummary:receivedCopy wxAddress:addressCopy];
        goto LABEL_21;
      case 6:
        [(AAAccessoryUsageSummaryManager *)self _updatePairingSummary:receivedCopy wxAddress:addressCopy];
        goto LABEL_21;
    }
  }

  else
  {
    switch(v7)
    {
      case 1:
        [(AAAccessoryUsageSummaryManager *)self _updateA2DPSummary:receivedCopy wxAddress:addressCopy];
        goto LABEL_21;
      case 2:
        [(AAAccessoryUsageSummaryManager *)self _updateHFPSummary:receivedCopy wxAddress:addressCopy];
        goto LABEL_21;
      case 3:
        [(AAAccessoryUsageSummaryManager *)self _updatePacketFlushSummary:receivedCopy wxAddress:addressCopy];
        goto LABEL_21;
    }
  }

  if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EE558();
  }

LABEL_21:
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

- (void)_cleanupAirPodsUsageSummary
{
  if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EE5C4();
  }

  [(NSMutableDictionary *)self->_wxSummaryDeviceMap removeAllObjects];
  wxSummaryDeviceMap = self->_wxSummaryDeviceMap;
  self->_wxSummaryDeviceMap = 0;
}

- (void)_createPowerLogIdentifier
{
  p_powerLogStreamID = &self->_powerLogStreamID;
  if (self->_powerLogStreamID)
  {
    sub_1001EE5E0(&self->_powerLogStreamID);
  }

  else
  {
    v3 = PPSCreateTelemetryIdentifier();
    *p_powerLogStreamID = v3;
    if (v3)
    {
      if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EE664();
      }
    }

    else if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EE680();
    }
  }
}

- (id)_getTopMagicPairingErrorCount:(id)count
{
  countCopy = count;
  if (countCopy)
  {
    v5 = objc_alloc_init(NSMutableDictionary);
    v21 = countCopy;
    [(AAAccessoryUsageSummaryManager *)self _getUsageSummary:countCopy];
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v20 = v25 = 0u;
    pairingErrors = [v20 pairingErrors];
    v7 = [pairingErrors countByEnumeratingWithState:&v22 objects:v27 count:16];
    if (!v7)
    {
      goto LABEL_26;
    }

    v8 = v7;
    v9 = *v23;
    while (1)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v23 != v9)
        {
          objc_enumerationMutation(pairingErrors);
        }

        intValue = [*(*(&v22 + 1) + 8 * i) intValue];
        if (intValue > 1)
        {
          switch(intValue)
          {
            case 2:
              v17 = v5;
              v18 = @"error3";
              break;
            case 6:
              v17 = v5;
              v18 = @"error1";
              break;
            case 7:
              v12 = [v5 objectForKeyedSubscript:@"error2"];
              v13 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 intValue] + 1);
              v14 = v5;
              v15 = v13;
              v16 = @"error2";
LABEL_23:
              [v14 setObject:v15 forKeyedSubscript:v16];

              continue;
            default:
LABEL_21:
              v17 = v5;
              v18 = @"errorGeneral";
              break;
          }

          goto LABEL_22;
        }

        if (intValue)
        {
          if (intValue != 1)
          {
            goto LABEL_21;
          }

          v17 = v5;
          v18 = @"error4";
LABEL_22:
          v12 = [v17 objectForKeyedSubscript:v18];
          v13 = +[NSNumber numberWithInt:](NSNumber, "numberWithInt:", [v12 intValue] + 1);
          v14 = v5;
          v15 = v13;
          v16 = v18;
          goto LABEL_23;
        }

        if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
        {
          sub_1001EE69C();
        }
      }

      v8 = [pairingErrors countByEnumeratingWithState:&v22 objects:v27 count:16];
      if (!v8)
      {
LABEL_26:

        countCopy = v21;
        goto LABEL_27;
      }
    }
  }

  sub_1001EE6D0(&v26);
  v5 = v26;
LABEL_27:

  return v5;
}

- (void)_handleRepeatingTask:(id)task
{
  taskCopy = task;
  if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    sub_1001EE744(taskCopy);
  }

  [taskCopy setExpirationHandler:&stru_1002B9398];
  if ([(AAAccessoryUsageSummaryManager *)self _isConnectedToAnyAirPods])
  {
    v7 = 0;
    v5 = [taskCopy setTaskExpiredWithRetryAfter:&v7 error:64000000.0];
    v6 = v7;
    if (v5)
    {
      if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EE7FC();
      }
    }

    else
    {
      if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EE7BC();
      }

      [taskCopy setTaskCompleted];
    }
  }

  else
  {
    [(AAAccessoryUsageSummaryManager *)self _submitAllAirPodsSummary];
    if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EE7A0();
    }

    [taskCopy setTaskCompleted];
    v6 = 0;
  }
}

- (unsigned)_getUsageTypeWithData:(id)data
{
  dataCopy = data;
  v4 = dataCopy;
  if (dataCopy)
  {
    v7 = 0;
    [dataCopy getBytes:&v7 length:1];
    v5 = v7;
  }

  else
  {
    if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EE84C();
    }

    v5 = 0;
  }

  return v5;
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100079EE4;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_registerBackgroundSystemTaskScheduler
{
  if (!self->_backgroundSubmissionSchedulerStarted)
  {
    v3 = +[BGSystemTaskScheduler sharedScheduler];
    dispatchQueue = self->_dispatchQueue;
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_10007A148;
    v13[3] = &unk_1002B93C0;
    v13[4] = self;
    [v3 registerForTaskWithIdentifier:@"com.apple.audioaccessoryd.AAAccessoryUsageSummary" usingQueue:dispatchQueue launchHandler:v13];

    v5 = +[BGSystemTaskScheduler sharedScheduler];
    v6 = [v5 taskRequestForIdentifier:@"com.apple.audioaccessoryd.AAAccessoryUsageSummary"];

    if (v6)
    {
      sub_1001EE868(v6, &v14);
      v7 = v14;
    }

    else
    {
      v7 = [[BGRepeatingSystemTaskRequest alloc] initWithIdentifier:@"com.apple.audioaccessoryd.AAAccessoryUsageSummary"];
      [v7 setRequiresNetworkConnectivity:0];
      [v7 setRequiresExternalPower:0];
      [v7 setInterval:86400.0];
      [v7 interval];
      [v7 setMinDurationBetweenInstances:v8 * 0.8];
      v9 = +[BGSystemTaskScheduler sharedScheduler];
      v12 = 0;
      v10 = [v9 submitTaskRequest:v7 error:&v12];
      v11 = v12;

      if (v10)
      {
        if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
        {
          sub_1001EE920(v7);
        }

        self->_backgroundSubmissionSchedulerStarted = 1;
      }

      else if (dword_1002F6998 <= 90 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EE8E0();
      }
    }
  }
}

- (void)_registerDisconnectionNotification
{
  dispatchQueue = self->_dispatchQueue;
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_10007A1D4;
  handler[3] = &unk_1002B6DF0;
  handler[4] = self;
  notify_register_dispatch("com.apple.bluetooth.SmartRoutingDisconnectReason", &self->_disconnectToken, dispatchQueue, handler);
}

- (void)_registerVolumeChangeNotification
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 addObserver:self selector:"_updateAirPodsVolumeSummary:" name:@"com.apple.audioaccessoryd.usageSummary.volumeChange" object:0];
}

- (void)_deregisterBackgroundSystemTaskScheduler
{
  v2 = +[BGSystemTaskScheduler sharedScheduler];
  [v2 deregisterTaskWithIdentifier:@"com.apple.audioaccessoryd.AAAccessoryUsageSummary"];
}

- (void)_deregisterDisconnectionNotification
{
  disconnectToken = self->_disconnectToken;
  if (disconnectToken != -1)
  {
    notify_cancel(disconnectToken);
    self->_disconnectToken = -1;
  }
}

- (void)_deregisterVolumeChangeNotification
{
  v3 = +[NSDistributedNotificationCenter defaultCenter];
  [v3 removeObserver:self name:@"com.apple.audioaccessoryd.usageSummary.volumeChange" object:0];
}

- (void)_submitAllAirPodsSummary
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v3 = self->_wxSummaryDeviceMap;
  v4 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(AAAccessoryUsageSummaryManager *)self _submitDeviceSummaryToPowerLog:*(*(&v8 + 1) + 8 * v7), v8];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [(NSMutableDictionary *)v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }

  [(AAAccessoryUsageSummaryManager *)self _cleanupAirPodsUsageSummary];
}

- (void)_submitDeviceSummaryToPowerLog:(id)log
{
  logCopy = log;
  if (logCopy)
  {
    if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      sub_1001EE964();
    }

    [(AAAccessoryUsageSummaryManager *)self _getUsageSummary:logCopy];
    v5 = v91 = self;
    accessoryPID = [v5 accessoryPID];
    v92 = logCopy;
    v112 = logCopy;
    totalNumberOfConnections = [v5 totalNumberOfConnections];
    connectionErroReasonrMap = [v5 connectionErroReasonrMap];
    v7 = [connectionErroReasonrMap objectForKeyedSubscript:@"ACL Connect Failed"];
    intValue = [v7 intValue];

    connectionErroReasonrMap2 = [v5 connectionErroReasonrMap];
    v9 = [connectionErroReasonrMap2 objectForKeyedSubscript:@"Magic Pairing failed due to OPERATION_TIMED_OUT"];
    intValue2 = [v9 intValue];

    connectionErroReasonrMap3 = [v5 connectionErroReasonrMap];
    v11 = [connectionErroReasonrMap3 objectForKeyedSubscript:@"Peer device has no pairing keys BT_MAGIC_PAIRING_KEY_NOT_FOUND"];
    intValue3 = [v11 intValue];

    connectionErroReasonrMap4 = [v5 connectionErroReasonrMap];
    v13 = [connectionErroReasonrMap4 objectForKeyedSubscript:@"HFP Connect Failed"];
    intValue4 = [v13 intValue];

    connectionErrorGeneralCount = [v5 connectionErrorGeneralCount];
    pairingCount = [v5 pairingCount];
    pairingErrorMap = [v5 pairingErrorMap];
    v15 = [pairingErrorMap objectForKeyedSubscript:&off_1002CB768];
    intValue5 = [v15 intValue];

    pairingErrorMap2 = [v5 pairingErrorMap];
    v17 = [pairingErrorMap2 objectForKeyedSubscript:&off_1002CB780];
    intValue6 = [v17 intValue];

    pairingErrorMap3 = [v5 pairingErrorMap];
    v19 = [pairingErrorMap3 objectForKeyedSubscript:&off_1002CB798];
    intValue7 = [v19 intValue];

    pairingErrorMap4 = [v5 pairingErrorMap];
    v21 = [pairingErrorMap4 objectForKeyedSubscript:&off_1002CB7B0];
    intValue8 = [v21 intValue];

    pairingGeneralErrorCount = [v5 pairingGeneralErrorCount];
    disconnectionErrorMap = [v5 disconnectionErrorMap];
    v25 = [disconnectionErrorMap objectForKeyedSubscript:&off_1002CB7C8];
    intValue9 = [v25 intValue];

    disconnectionErrorMap2 = [v5 disconnectionErrorMap];
    v28 = [disconnectionErrorMap2 objectForKeyedSubscript:&off_1002CB7E0];
    intValue10 = [v28 intValue];

    disconnectionErrorGeneralCount = [v5 disconnectionErrorGeneralCount];
    singleBudDuration = [v5 singleBudDuration];
    bothBudDuration = [v5 bothBudDuration];
    listeningModeANCDuration = [v5 listeningModeANCDuration];
    listeningModeTransparencyDuration = [v5 listeningModeTransparencyDuration];
    listeningModeAutoAncDuration = [v5 listeningModeAutoAncDuration];
    v97 = [v5 totalDurationA2dp] / 0x3CuLL;
    v56 = [v5 a2dpTotalSpatialDuration] / 0x3CuLL;
    v51 = [v5 a2dpTotalGameDuration] / 0x3CuLL;
    v96 = [v5 totalDurationHfp] / 0x3CuLL;
    a2dpRssiPoorCount = [v5 a2dpRssiPoorCount];
    a2dpRssiMidCount = [v5 a2dpRssiMidCount];
    a2dpRssiGoodCount = [v5 a2dpRssiGoodCount];
    a2dpRetxPoorCount = [v5 a2dpRetxPoorCount];
    a2dpRetxMidCount = [v5 a2dpRetxMidCount];
    a2dpRetxGoodCount = [v5 a2dpRetxGoodCount];
    a2dpSnrPoorCount = [v5 a2dpSnrPoorCount];
    a2dpSnrGoodCount = [v5 a2dpSnrGoodCount];
    a2dpOverwaitAbove50msCount = [v5 a2dpOverwaitAbove50msCount];
    v95 = &a2dpOverwaitAbove50msCount[[v5 a2dpPacketFlushCount]];
    a2dpPacketFlushPoorRssiCount = [v5 a2dpPacketFlushPoorRssiCount];
    a2dpOverwaitAbove50msCount2 = [v5 a2dpOverwaitAbove50msCount];
    a2dpPacketFlushCount = [v5 a2dpPacketFlushCount];
    volumeChangeAudioVideoCount = [v5 volumeChangeAudioVideoCount];
    volumeChnagePhoneCallCount = [v5 volumeChnagePhoneCallCount];
    v113[0] = @"ProductID";
    v90 = [NSNumber numberWithUnsignedInt:accessoryPID];
    v114[0] = v90;
    v114[1] = v112;
    v113[1] = @"Address";
    v113[2] = @"ConnectionCount";
    v89 = [NSNumber numberWithUnsignedInt:totalNumberOfConnections];
    v114[2] = v89;
    v113[3] = @"ConnectionError1Count";
    v88 = [NSNumber numberWithUnsignedInt:intValue];
    v114[3] = v88;
    v113[4] = @"ConnectionError2Count";
    v87 = [NSNumber numberWithUnsignedInt:intValue2];
    v114[4] = v87;
    v113[5] = @"ConnectionError3Count";
    v86 = [NSNumber numberWithUnsignedInt:intValue3];
    v114[5] = v86;
    v113[6] = @"ConnectionError4Count";
    v85 = [NSNumber numberWithUnsignedInt:intValue4];
    v114[6] = v85;
    v113[7] = @"ConnectionErrorGeneralCount";
    v84 = [NSNumber numberWithUnsignedInt:connectionErrorGeneralCount];
    v114[7] = v84;
    v113[8] = @"PairingError1Count";
    v83 = [NSNumber numberWithUnsignedInt:intValue5];
    v114[8] = v83;
    v113[9] = @"PairingError2Count";
    v82 = [NSNumber numberWithUnsignedInt:intValue6];
    v114[9] = v82;
    v113[10] = @"PairingError3Count";
    v81 = [NSNumber numberWithUnsignedInt:intValue7];
    v114[10] = v81;
    v113[11] = @"PairingError4Count";
    v80 = [NSNumber numberWithUnsignedInt:intValue8];
    v114[11] = v80;
    v113[12] = @"PairingErrorGeneralCount";
    v79 = [NSNumber numberWithUnsignedInt:pairingGeneralErrorCount];
    v114[12] = v79;
    v113[13] = @"DisconnectionError1Count";
    v78 = [NSNumber numberWithUnsignedInt:intValue9];
    v114[13] = v78;
    v113[14] = @"DisconnectionError2Count";
    v75 = [NSNumber numberWithUnsignedInt:intValue10];
    v114[14] = v75;
    v113[15] = @"DisconnectionError3Count";
    v72 = [NSNumber numberWithUnsignedInt:0];
    v114[15] = v72;
    v113[16] = @"DisconnectionError4Count";
    v69 = [NSNumber numberWithUnsignedInt:0];
    v114[16] = v69;
    v113[17] = @"DisconnectionGeneralCount";
    v62 = [NSNumber numberWithUnsignedInt:disconnectionErrorGeneralCount];
    v114[17] = v62;
    v113[18] = @"PairingCount";
    v53 = [NSNumber numberWithUnsignedInt:pairingCount];
    v114[18] = v53;
    v113[19] = @"SingleBudTotalDuration";
    v50 = [NSNumber numberWithUnsignedInt:singleBudDuration];
    v114[19] = v50;
    v113[20] = @"BothBudTotalDuration";
    v49 = [NSNumber numberWithUnsignedInt:bothBudDuration];
    v114[20] = v49;
    v113[21] = @"ANCTotalDuration";
    v48 = [NSNumber numberWithUnsignedInt:listeningModeANCDuration];
    v114[21] = v48;
    v113[22] = @"TransparencyTotalDuration";
    v47 = [NSNumber numberWithUnsignedInt:listeningModeTransparencyDuration];
    v114[22] = v47;
    v113[23] = @"AdaptiveTotalDuration";
    v46 = [NSNumber numberWithUnsignedInt:listeningModeAutoAncDuration];
    v114[23] = v46;
    v113[24] = @"A2DPTotalDuration";
    v45 = [NSNumber numberWithUnsignedInt:v97];
    v114[24] = v45;
    v113[25] = @"SpatialTotalDuration";
    v57 = [NSNumber numberWithUnsignedInt:v56];
    v114[25] = v57;
    v113[26] = @"GameTotalDuration";
    v52 = [NSNumber numberWithUnsignedInt:v51];
    v114[26] = v52;
    v113[27] = @"HFPTotalDuration";
    v44 = [NSNumber numberWithUnsignedInt:v96];
    v114[27] = v44;
    v113[28] = @"A2DPRSSIPoor";
    v55 = [NSNumber numberWithUnsignedInt:a2dpRssiPoorCount];
    v114[28] = v55;
    v113[29] = @"A2DPRSSIMiddle";
    v59 = [NSNumber numberWithUnsignedInt:a2dpRssiMidCount];
    v114[29] = v59;
    v113[30] = @"A2DPRSSIHigh";
    v61 = [NSNumber numberWithUnsignedInt:a2dpRssiGoodCount];
    v114[30] = v61;
    v113[31] = @"A2DPRetransLow";
    v64 = [NSNumber numberWithUnsignedInt:a2dpRetxPoorCount];
    v114[31] = v64;
    v113[32] = @"A2DPRetransMiddle";
    v66 = [NSNumber numberWithUnsignedInt:a2dpRetxMidCount];
    v114[32] = v66;
    v113[33] = @"A2DPRetransHigh";
    v68 = [NSNumber numberWithUnsignedInt:a2dpRetxGoodCount];
    v114[33] = v68;
    v113[34] = @"A2DPSNRLow";
    v71 = [NSNumber numberWithUnsignedInt:a2dpSnrPoorCount];
    v114[34] = v71;
    v113[35] = @"A2DPSNRMiddle";
    v34 = [NSNumber numberWithUnsignedInt:0];
    v114[35] = v34;
    v113[36] = @"A2DPSNRHigh";
    v35 = [NSNumber numberWithUnsignedInt:a2dpSnrGoodCount];
    v114[36] = v35;
    v113[37] = @"AudioDropCount";
    v36 = [NSNumber numberWithUnsignedLongLong:v95];
    v114[37] = v36;
    v113[38] = @"AudioDropPoorRSSICount";
    v37 = [NSNumber numberWithUnsignedInt:a2dpPacketFlushPoorRssiCount];
    v114[38] = v37;
    v113[39] = @"AudioDropOverWaitCount";
    v38 = [NSNumber numberWithUnsignedLongLong:a2dpOverwaitAbove50msCount2];
    v114[39] = v38;
    v113[40] = @"AudioDropPacketFlushCount";
    v39 = [NSNumber numberWithUnsignedLongLong:a2dpPacketFlushCount];
    v114[40] = v39;
    v113[41] = @"VolumeChangeAudioVideoCount";
    v40 = [NSNumber numberWithUnsignedInt:volumeChangeAudioVideoCount];
    v114[41] = v40;
    v113[42] = @"VolumeChangePhoneCallCount";
    v41 = [NSNumber numberWithUnsignedInt:volumeChnagePhoneCallCount];
    v114[42] = v41;
    v42 = [NSDictionary dictionaryWithObjects:v114 forKeys:v113 count:43];

    powerLogStreamID = v91->_powerLogStreamID;
    PPSSendTelemetry();
    if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    logCopy = v92;
  }

  else
  {
    sub_1001EE9A4(dword_1002F6998);
  }
}

- (void)_updateBasicInfo:(id)info
{
  infoCopy = info;
  v8 = infoCopy;
  if (infoCopy)
  {
    bluetoothAddress = [infoCopy bluetoothAddress];
    if (bluetoothAddress)
    {
      v6 = [(AAAccessoryUsageSummaryManager *)self _getUsageSummary:bluetoothAddress];
      [v6 setAccessoryPID:{objc_msgSend(v8, "productID")}];
      name = [v8 name];
      [v6 setName:name];
    }

    else
    {
      sub_1001EE9FC();
    }
  }

  else
  {
    sub_1001EEA5C();
  }
}

- (void)_updateA2DPSummary:(id)summary wxAddress:(id)address
{
  summaryCopy = summary;
  addressCopy = address;
  v8 = addressCopy;
  if (!summaryCopy)
  {
    sub_1001EEB7C();
    goto LABEL_10;
  }

  if (!addressCopy)
  {
    sub_1001EEB1C();
    goto LABEL_10;
  }

  v9 = [(AAAccessoryUsageSummaryManager *)self _getUsageSummary:addressCopy];
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  [summaryCopy getBytes:&v19 length:72];
  v10 = v20;
  if (!v20)
  {
    sub_1001EEABC(dword_1002F6998);
    goto LABEL_9;
  }

  if (dword_1002F6998 <= 30)
  {
    if (dword_1002F6998 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_8;
      }

      v10 = v20;
    }

    v17 = DWORD1(v19);
    v18 = DWORD2(v19);
    v15 = v10;
    v16 = *(&v22 + 1);
    v14 = v8;
    LogPrintF();
  }

LABEL_8:
  [v9 addA2DPRssi:{DWORD1(v19), v14, v15, v16, v17, v18}];
  [v9 addA2DPRetx:DWORD2(v19)];
  [v9 adda2DPSnr:v22];
  [v9 addA2DPDuration:v20 audioCategory:v21];
  a2dpAudioCategory = [v9 a2dpAudioCategory];
  v12 = [NSNumber numberWithUnsignedLongLong:v21];
  [a2dpAudioCategory addObject:v12];

  a2dpOverwaitAbove50msCount = [v9 a2dpOverwaitAbove50msCount];
  [v9 setA2dpOverwaitAbove50msCount:&a2dpOverwaitAbove50msCount[*(&v22 + 1)]];
LABEL_9:

LABEL_10:
}

- (void)_updateAirPodsConnectionSummary:(id)summary wxAddress:(id)address
{
  summaryCopy = summary;
  addressCopy = address;
  v8 = addressCopy;
  if (summaryCopy)
  {
    if (addressCopy)
    {
      v9 = [(AAAccessoryUsageSummaryManager *)self _getUsageSummary:addressCopy];
      memset(v14, 0, 108);
      [summaryCopy getBytes:v14 length:108];
      if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
      {
        v12 = DWORD1(v14[0]);
        v13 = v14 + 8;
        v11 = v8;
        LogPrintF();
      }

      [v9 addConnectionError:{DWORD1(v14[0]), v11, v12, v13}];
      v10 = [NSString stringWithUTF8String:v14 + 8];
      [v9 updateConnectionErrorReason:v10];
    }

    else
    {
      sub_1001EEBDC();
    }
  }

  else
  {
    sub_1001EEC3C();
  }
}

- (void)_updateAirPodsDisconnectionSummary:(unint64_t)summary wxAddress:(id)address
{
  addressCopy = address;
  v10 = addressCopy;
  if (addressCopy)
  {
    if (summary)
    {
      v7 = [(AAAccessoryUsageSummaryManager *)self _getUsageSummary:addressCopy];
      if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
      {
        v8 = v10;
        summaryCopy = summary;
        LogPrintF();
      }

      [v7 addDisconnectionErrors:{summary, v8, summaryCopy}];
    }

    else
    {
      sub_1001EEC9C();
    }
  }

  else
  {
    sub_1001EECFC();
  }
}

- (void)_updateAirPodsVolumeSummary:(id)summary
{
  summaryCopy = summary;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007B74C;
  v7[3] = &unk_1002B6D18;
  v8 = summaryCopy;
  selfCopy = self;
  v6 = summaryCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)_updateHFPSummary:(id)summary wxAddress:(id)address
{
  summaryCopy = summary;
  addressCopy = address;
  v8 = addressCopy;
  if (summaryCopy)
  {
    if (addressCopy)
    {
      v9 = [(AAAccessoryUsageSummaryManager *)self _getUsageSummary:addressCopy];
      v23 = 0;
      v21 = 0u;
      v22 = 0u;
      v19 = 0u;
      v20 = 0u;
      [summaryCopy getBytes:&v19 length:72];
      v10 = v20;
      if (v20)
      {
        if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || (v11 = _LogCategory_Initialize(), v10 = v20, v11)))
        {
          v16 = DWORD1(v19);
          v18 = DWORD2(v19);
          v14 = v10;
          LogPrintF();
          [v9 addHFPDuration:{v20, v8, v14, v16, v18}];
        }

        else
        {
          [v9 addHFPDuration:{v10, v12, v13, v15, v17}];
        }
      }

      else
      {
        sub_1001EEE20(dword_1002F6998);
      }
    }

    else
    {
      sub_1001EEE80();
    }
  }

  else
  {
    sub_1001EEEE0();
  }
}

- (void)_updatemMagicPairingSummary:(id)summary wxAddress:(id)address
{
  summaryCopy = summary;
  addressCopy = address;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = sub_100003928;
  v17 = sub_100003840;
  v18 = 0;
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007BB48;
  v12[3] = &unk_1002B6C00;
  v12[4] = &v13;
  v7 = objc_retainBlock(v12);
  if (!summaryCopy)
  {
    v8 = v14;
    v9 = v14[5];
    v10 = @"data is null";
LABEL_10:
    v8[5] = v10;

    goto LABEL_7;
  }

  if (!addressCopy)
  {
    v8 = v14;
    v9 = v14[5];
    v10 = @"wxAddress is null";
    goto LABEL_10;
  }

  v11 = 0;
  [summaryCopy getBytes:&v11 length:8];
  if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

LABEL_7:
  (v7[2])(v7);

  _Block_object_dispose(&v13, 8);
}

- (void)_updatePacketFlushSummary:(id)summary wxAddress:(id)address
{
  summaryCopy = summary;
  addressCopy = address;
  v8 = addressCopy;
  if (summaryCopy)
  {
    if (addressCopy)
    {
      v9 = [(AAAccessoryUsageSummaryManager *)self _getUsageSummary:addressCopy];
      v11 = 0;
      memset(v10, 0, sizeof(v10));
      [summaryCopy getBytes:v10 length:72];
      if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
      {
        sub_1001EEF40(v10);
      }

      [v9 addA2DPPacketFlushRssi:DWORD1(v10[0])];
      [v9 addA2DPPacketFlushRetx:DWORD2(v10[0])];
      [v9 setA2dpPacketFlushCount:{objc_msgSend(v9, "a2dpPacketFlushCount") + 1}];
    }

    else
    {
      sub_1001EEF88();
    }
  }

  else
  {
    sub_1001EEFE8();
  }
}

- (void)_updatePairingSummary:(id)summary wxAddress:(id)address
{
  summaryCopy = summary;
  addressCopy = address;
  v8 = addressCopy;
  if (summaryCopy)
  {
    if (addressCopy)
    {
      v9 = [(AAAccessoryUsageSummaryManager *)self _getUsageSummary:addressCopy];
      v12 = 0;
      [summaryCopy getBytes:&v12 length:8];
      if (dword_1002F6998 <= 30 && (dword_1002F6998 != -1 || _LogCategory_Initialize()))
      {
        v10 = v8;
        v11 = HIDWORD(v12);
        LogPrintF();
      }

      [v9 _updatePairingError:{HIDWORD(v12), v10, v11}];
    }

    else
    {
      sub_1001EF048();
    }
  }

  else
  {
    sub_1001EF0A8();
  }
}

- (BOOL)_isConnectedToAnyAirPods
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  wxSummaryDeviceMap = self->_wxSummaryDeviceMap;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10007BE9C;
  v5[3] = &unk_1002B93E8;
  v5[4] = &v6;
  [(NSMutableDictionary *)wxSummaryDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

@end