@interface AAServicesXPCConnection
- (BOOL)_entitledAndReturnError:(id *)error;
- (BOOL)_entitledForSystemStateMonitorAndReturnError:(id *)error;
- (BOOL)_shouldSendXPCMessage;
- (void)areHeadphonesNearbyAndEligibleToPlay:(id)play completion:(id)completion;
- (void)assetManagerShowDownloadNotificationForBTAddress:(id)address completionHandler:(id)handler;
- (void)audioRoutingControlActivate:(id)activate completion:(id)completion;
- (void)audioSessionControlActivate:(id)activate completion:(id)completion;
- (void)audioSessionControlUpdate:(id)update;
- (void)deviceManagerActivate:(id)activate completion:(id)completion;
- (void)deviceManagerFetchAADeviceBatteryInfoForAddress:(id)address deviceHandler:(id)handler;
- (void)deviceManagerFetchAADeviceBatteryInfoForIdentifier:(id)identifier deviceHandler:(id)handler;
- (void)deviceManagerFetchAudioAccessoryDeviceForBTAddress:(id)address deviceHandler:(id)handler;
- (void)deviceManagerFetchPairedAudioAccessoryDevices:(id)devices;
- (void)deviceManagerHeadGestureDetected:(id)detected;
- (void)deviceManagerReportDeviceBatteryInfoFound:(id)found;
- (void)deviceManagerReportDeviceBatteryInfoLost:(id)lost;
- (void)deviceManagerReportDeviceFound:(id)found;
- (void)deviceManagerReportDeviceLost:(id)lost;
- (void)deviceManagerSendDeviceConfig:(id)config identifier:(id)identifier completion:(id)completion;
- (void)deviceManagerUpdate:(id)update completion:(id)completion;
- (void)informDRClientSensorDataAvailable:(id)available dataTypes:(unint64_t)types completion:(id)completion;
- (void)informDRClientSensorDataUnavailable:(id)unavailable dataTypes:(unint64_t)types completion:(id)completion;
- (void)isTemporaryPairingConnectionAllowed:(id)allowed;
- (void)prewarmAudioAccessoriesForFitnessWorkout:(id)workout;
- (void)sensorServiceActivate:(id)activate completion:(id)completion;
- (void)sensorServiceReportSensorInfo:(id)info;
- (void)systemStateMonitorActivate:(id)activate completion:(id)completion;
- (void)systemStateMonitorFetchHealthKitDataWriteAllowedForDevice:(id)device completionHandler:(id)handler;
- (void)systemStateMonitorFetchPairedHRMDevices:(id)devices;
- (void)systemStateMonitorReportActiveHRMDeviceChanged:(id)changed withSREnabled:(BOOL)enabled;
- (void)systemStateMonitorShowFitEducationNotificationForIdentifier:(id)identifier completionHandler:(id)handler;
- (void)xpcConnectionInterrupted;
- (void)xpcConnectionInvalidated;
@end

@implementation AAServicesXPCConnection

- (BOOL)_entitledAndReturnError:(id *)error
{
  if (self->_entitled)
  {
    return 1;
  }

  p_xpcCnx = &self->_xpcCnx;
  v7 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.AudioAccessoryServices"];
  v8 = [v7 isEqual:&__kCFBooleanTrue];

  if (v8)
  {
    result = 1;
    self->_entitled = 1;
    return result;
  }

  if (dword_1002F6480 <= 90 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D7E04(p_xpcCnx);
    if (error)
    {
      goto LABEL_9;
    }
  }

  else if (error)
  {
LABEL_9:
    v9 = BTErrorF();
    v10 = v9;
    result = 0;
    *error = v9;
    return result;
  }

  return 0;
}

- (BOOL)_entitledForSystemStateMonitorAndReturnError:(id *)error
{
  if (self->_entitled)
  {
    return 1;
  }

  p_xpcCnx = &self->_xpcCnx;
  v7 = [(NSXPCConnection *)self->_xpcCnx cuValueForEntitlementNoCache:@"com.apple.AudioAccessorySystemStateService"];
  v8 = [v7 isEqual:&__kCFBooleanTrue];

  if (v8)
  {
    result = 1;
    self->_entitled = 1;
    return result;
  }

  if (dword_1002F6480 <= 90 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D7E54(p_xpcCnx);
    if (error)
    {
      goto LABEL_9;
    }
  }

  else if (error)
  {
LABEL_9:
    v9 = BTErrorF();
    v10 = v9;
    result = 0;
    *error = v9;
    return result;
  }

  return 0;
}

- (void)xpcConnectionInvalidated
{
  v14 = self->_audioSessionControl;
  audioSessionControl = self->_audioSessionControl;
  self->_audioSessionControl = 0;

  if (v14)
  {
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D7EA4();
    }

    [(NSMutableSet *)self->_daemon->_activatedAudioSessionControlSet removeObject:v14];
    currentAudioSessionControl = self->_daemon->_currentAudioSessionControl;
    v5 = v14;
    v6 = currentAudioSessionControl;
    v7 = v6;
    if (v5 == v6)
    {
    }

    else
    {
      v8 = v5;
      if (!v6)
      {
LABEL_11:

LABEL_12:
        [(AAAudioSessionControl *)v5 invalidate];
        goto LABEL_13;
      }

      v9 = [(AAAudioSessionControl *)v5 isEqual:v6];

      if (!v9)
      {
        goto LABEL_12;
      }
    }

    daemon = self->_daemon;
    v8 = daemon->_currentAudioSessionControl;
    daemon->_currentAudioSessionControl = 0;
    goto LABEL_11;
  }

LABEL_13:
  v11 = self->_deviceManager;
  deviceManager = self->_deviceManager;
  self->_deviceManager = 0;

  if (v11)
  {
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D7EA4();
    }

    [(NSMutableSet *)self->_daemon->_activatedDeviceManagerSet removeObject:v11];
    [(AADeviceManager *)v11 invalidate];
  }

  v13 = +[DataRelayDaemon sharedDataRelayInstance];
  [v13 handleXPCDisconnected:{-[AAServicesXPCConnection connectionID](self, "connectionID")}];
}

- (void)xpcConnectionInterrupted
{
  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D7EE4();
  }

  v3 = +[DataRelayDaemon sharedDataRelayInstance];
  [v3 handleXPCDisconnected:{-[AAServicesXPCConnection connectionID](self, "connectionID")}];
}

- (void)audioRoutingControlActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100003908;
  v25 = sub_100003830;
  v26 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_100029548;
  v18[3] = &unk_1002B74D0;
  v20 = &v21;
  completionCopy = completion;
  v19 = completionCopy;
  v9 = objc_retainBlock(v18);
  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    v16 = activateCopy;
    LogPrintF();
  }

  v10 = (v22 + 5);
  obj = v22[5];
  v11 = [(AAServicesXPCConnection *)self _entitledAndReturnError:&obj, v16];
  objc_storeStrong(v10, obj);
  if (v11)
  {
    activatedAudioRoutingControlSet = self->_daemon->_activatedAudioRoutingControlSet;
    if (!activatedAudioRoutingControlSet)
    {
      v13 = objc_alloc_init(NSMutableSet);
      daemon = self->_daemon;
      v15 = daemon->_activatedAudioRoutingControlSet;
      daemon->_activatedAudioRoutingControlSet = v13;

      activatedAudioRoutingControlSet = self->_daemon->_activatedAudioRoutingControlSet;
    }

    [(NSMutableSet *)activatedAudioRoutingControlSet addObject:activateCopy];
    objc_storeStrong(&self->_daemon->_currentAudioRoutingControl, activate);
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }

    [(AAServicesDaemon *)self->_daemon _update];
  }

  (v9[2])(v9);

  _Block_object_dispose(&v21, 8);
}

- (void)areHeadphonesNearbyAndEligibleToPlay:(id)play completion:(id)completion
{
  playCopy = play;
  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100003908;
  v23 = sub_100003830;
  v24 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_100029834;
  v15[3] = &unk_1002B74F8;
  v17 = &v19;
  completionCopy = completion;
  v16 = completionCopy;
  v18 = v25;
  v8 = objc_retainBlock(v15);
  v9 = (v20 + 5);
  obj = v20[5];
  LOBYTE(self) = [(AAServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v9, obj);
  if (self)
  {
    v10 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    v11 = v10;
    if (v10)
    {
      [v10 areHeadphonesNearbyAndEligibleToPlay:completionCopy];
    }

    else
    {
      v12 = NSErrorF();
      v13 = v20[5];
      v20[5] = v12;
    }
  }

  (v8[2])(v8);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(v25, 8);
}

- (void)prewarmAudioAccessoriesForFitnessWorkout:(id)workout
{
  workoutCopy = workout;
  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D7F00();
  }

  v3 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
  v4 = v3;
  if (v3)
  {
    [v3 prewarmAudioAccessoriesForFitnessWorkout];
  }

  else if (dword_1002F6480 <= 90 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D7F40();
  }
}

- (void)audioSessionControlActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100003908;
  v25 = sub_100003830;
  v26 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002A05C;
  v18[3] = &unk_1002B74D0;
  v20 = &v21;
  completionCopy = completion;
  v19 = completionCopy;
  v9 = objc_retainBlock(v18);
  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    v16 = activateCopy;
    LogPrintF();
  }

  v10 = (v22 + 5);
  obj = v22[5];
  v11 = [(AAServicesXPCConnection *)self _entitledAndReturnError:&obj, v16];
  objc_storeStrong(v10, obj);
  if (v11)
  {
    objc_storeStrong(&self->_audioSessionControl, activate);
    activatedAudioSessionControlSet = self->_daemon->_activatedAudioSessionControlSet;
    if (!activatedAudioSessionControlSet)
    {
      v13 = objc_alloc_init(NSMutableSet);
      daemon = self->_daemon;
      v15 = daemon->_activatedAudioSessionControlSet;
      daemon->_activatedAudioSessionControlSet = v13;

      activatedAudioSessionControlSet = self->_daemon->_activatedAudioSessionControlSet;
    }

    [(NSMutableSet *)activatedAudioSessionControlSet addObject:activateCopy];
    objc_storeStrong(&self->_daemon->_currentAudioSessionControl, activate);
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }

    [(AAServicesDaemon *)self->_daemon _update];
  }

  (v9[2])(v9);

  _Block_object_dispose(&v21, 8);
}

- (void)audioSessionControlUpdate:(id)update
{
  updateCopy = update;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_100003908;
  v21 = sub_100003830;
  v22 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002A3B0;
  v16[3] = &unk_1002B6C00;
  v16[4] = &v17;
  v5 = objc_retainBlock(v16);
  v6 = (v18 + 5);
  obj = v18[5];
  v7 = [(AAServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (v7)
  {
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      v12 = updateCopy;
      LogPrintF();
    }

    conversationDetectSignal = [(AAAudioSessionControl *)self->_audioSessionControl conversationDetectSignal];
    conversationDetectSignal2 = [updateCopy conversationDetectSignal];
    if (conversationDetectSignal != conversationDetectSignal2)
    {
      if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
      {
        if (conversationDetectSignal > 0xB)
        {
          v10 = "?";
        }

        else
        {
          v10 = (&off_1002B76E8)[conversationDetectSignal];
        }

        if (conversationDetectSignal2 > 0xB)
        {
          v11 = "?";
        }

        else
        {
          v11 = (&off_1002B76E8)[conversationDetectSignal2];
        }

        v13 = v10;
        v14 = v11;
        LogPrintF();
      }

      [(AAAudioSessionControl *)self->_audioSessionControl setConversationDetectSignal:conversationDetectSignal2, v13, v14];
      [(AAServicesDaemon *)self->_daemon _update];
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v17, 8);
}

- (void)systemStateMonitorActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100003908;
  v26 = sub_100003830;
  v27 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10002AC3C;
  v19[3] = &unk_1002B74D0;
  v21 = &v22;
  completionCopy = completion;
  v20 = completionCopy;
  v9 = objc_retainBlock(v19);
  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    v17 = activateCopy;
    LogPrintF();
  }

  v10 = (v23 + 5);
  obj = v23[5];
  v11 = [(AAServicesXPCConnection *)self _entitledForSystemStateMonitorAndReturnError:&obj, v17];
  objc_storeStrong(v10, obj);
  if (v11)
  {
    activatedSystemStateMonitorSet = self->_daemon->_activatedSystemStateMonitorSet;
    if (!activatedSystemStateMonitorSet)
    {
      v13 = objc_alloc_init(NSMutableSet);
      daemon = self->_daemon;
      v15 = daemon->_activatedSystemStateMonitorSet;
      daemon->_activatedSystemStateMonitorSet = v13;

      activatedSystemStateMonitorSet = self->_daemon->_activatedSystemStateMonitorSet;
    }

    [(NSMutableSet *)activatedSystemStateMonitorSet addObject:activateCopy];
    objc_storeStrong(&self->_systemStateMonitor, activate);
    v16 = +[BTSmartRoutingDaemon sharedBTSmartRoutingDaemon];
    [v16 systemStatePushRequired];

    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }

    [(AAServicesDaemon *)self->_daemon _update];
  }

  (v9[2])(v9);

  _Block_object_dispose(&v22, 8);
}

- (void)systemStateMonitorFetchHealthKitDataWriteAllowedForDevice:(id)device completionHandler:(id)handler
{
  deviceCopy = device;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100003908;
  v27 = sub_100003830;
  v28 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002AFA4;
  v15[3] = &unk_1002B74F8;
  v17 = &v23;
  handlerCopy = handler;
  v16 = handlerCopy;
  v18 = &v19;
  v8 = objc_retainBlock(v15);
  v9 = v24;
  obj = v24[5];
  LOBYTE(self) = [(AAServicesXPCConnection *)self _entitledForSystemStateMonitorAndReturnError:&obj];
  objc_storeStrong(v9 + 5, obj);
  if ((self & 1) == 0)
  {
    goto LABEL_12;
  }

  v10 = +[AAPairedDeviceDaemon sharedAAPairedDeviceDaemon];
  v11 = [v10 deviceWithIdentifier:deviceCopy];

  healthKitDataWriteAllowed = [v11 healthKitDataWriteAllowed];
  *(v20 + 24) = healthKitDataWriteAllowed;
  if (dword_1002F6480 <= 30)
  {
    if (dword_1002F6480 != -1)
    {
LABEL_4:
      if (healthKitDataWriteAllowed <= 2u)
      {
        v13 = (&off_1002B7780)[healthKitDataWriteAllowed];
      }

      LogPrintF();
      goto LABEL_9;
    }

    if (_LogCategory_Initialize())
    {
      healthKitDataWriteAllowed = *(v20 + 24);
      goto LABEL_4;
    }
  }

LABEL_9:
  if (handlerCopy)
  {
    (*(handlerCopy + 2))(handlerCopy, *(v20 + 24));
  }

LABEL_12:
  (v8[2])(v8);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v23, 8);
}

- (void)systemStateMonitorFetchPairedHRMDevices:(id)devices
{
  devicesCopy = devices;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003908;
  v24 = sub_100003830;
  v25 = 0;
  v5 = objc_alloc_init(NSMutableArray);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_10002B3A0;
  v17[3] = &unk_1002B74D0;
  v19 = &v20;
  v6 = devicesCopy;
  v18 = v6;
  v7 = objc_retainBlock(v17);
  v8 = (v21 + 5);
  obj = v21[5];
  LOBYTE(self) = [(AAServicesXPCConnection *)self _entitledForSystemStateMonitorAndReturnError:&obj];
  objc_storeStrong(v8, obj);
  if (self)
  {
    v9 = +[AAPairedDeviceDaemon sharedAAPairedDeviceDaemon];
    pairedDevices = [v9 pairedDevices];

    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_10002B47C;
    v14[3] = &unk_1002B7520;
    v11 = v5;
    v15 = v11;
    [pairedDevices enumerateKeysAndObjectsUsingBlock:v14];
    v12 = [[NSSortDescriptor alloc] initWithKey:@"lastSeenConnectedTime" ascending:0];
    v26 = v12;
    v13 = [NSArray arrayWithObjects:&v26 count:1];
    [v11 sortUsingDescriptors:v13];

    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (v6)
    {
      (*(v6 + 2))(v6, v11, v21[5]);
    }
  }

  (v7[2])(v7);

  _Block_object_dispose(&v20, 8);
}

- (void)systemStateMonitorShowFitEducationNotificationForIdentifier:(id)identifier completionHandler:(id)handler
{
  identifierCopy = identifier;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100003908;
  v23 = sub_100003830;
  v24 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10002B774;
  v16[3] = &unk_1002B74D0;
  v18 = &v19;
  handlerCopy = handler;
  v17 = handlerCopy;
  v8 = objc_retainBlock(v16);
  v9 = (v20 + 5);
  obj = v20[5];
  LOBYTE(self) = [(AAServicesXPCConnection *)self _entitledForSystemStateMonitorAndReturnError:&obj];
  objc_storeStrong(v9, obj);
  if (self)
  {
    v10 = +[AAFeatureOnboarding sharedInstance];
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10002B84C;
    v11[3] = &unk_1002B7548;
    v12 = identifierCopy;
    v14 = &v19;
    v13 = handlerCopy;
    [v10 showFitEducationNotificationForIdentifier:v12 withErrorHandler:v11];
  }

  (v8[2])(v8);

  _Block_object_dispose(&v19, 8);
}

- (void)deviceManagerActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  v40 = 0;
  v41 = &v40;
  v42 = 0x3032000000;
  v43 = sub_100003908;
  v44 = sub_100003830;
  v45 = 0;
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_10002BE28;
  v37[3] = &unk_1002B74D0;
  v39 = &v40;
  completionCopy = completion;
  v38 = completionCopy;
  v30 = objc_retainBlock(v37);
  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    v24 = activateCopy;
    LogPrintF();
  }

  v9 = (v41 + 5);
  obj = v41[5];
  v10 = [(AAServicesXPCConnection *)self _entitledAndReturnError:&obj, v24];
  objc_storeStrong(v9, obj);
  if (v10)
  {
    objc_storeStrong(&self->_deviceManager, activate);
    activatedDeviceManagerSet = self->_daemon->_activatedDeviceManagerSet;
    if (!activatedDeviceManagerSet)
    {
      v12 = objc_alloc_init(NSMutableSet);
      daemon = self->_daemon;
      v14 = daemon->_activatedDeviceManagerSet;
      daemon->_activatedDeviceManagerSet = v12;

      activatedDeviceManagerSet = self->_daemon->_activatedDeviceManagerSet;
    }

    [(NSMutableSet *)activatedDeviceManagerSet addObject:activateCopy];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }

    [(AAServicesDaemon *)self->_daemon _update];
    v15 = +[AADeviceManagerDaemon sharedAADeviceManagerDaemon];
    availableDevices = [v15 availableDevices];

    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      v25 = [availableDevices count];
      LogPrintF();
    }

    v35[0] = _NSConcreteStackBlock;
    v35[1] = 3221225472;
    v35[2] = sub_10002BF00;
    v35[3] = &unk_1002B7520;
    v35[4] = self;
    [availableDevices enumerateKeysAndObjectsUsingBlock:{v35, v25}];
    v17 = +[AABatteryMonitorDaemon sharedAABatteryMonitorDaemon];
    devices = [v17 devices];

    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      v26 = [devices count];
      LogPrintF();
    }

    v27 = availableDevices;
    v28 = completionCopy;
    v29 = activateCopy;
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v19 = devices;
    v20 = [v19 countByEnumeratingWithState:&v31 objects:v46 count:16];
    if (v20)
    {
      v21 = *v32;
      do
      {
        for (i = 0; i != v20; i = i + 1)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v19);
          }

          v23 = *(*(&v31 + 1) + 8 * i);
          if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
          {
            v26 = v23;
            LogPrintF();
          }

          [(AAServicesXPCConnection *)self deviceManagerReportDeviceBatteryInfoFound:v23, v26];
        }

        v20 = [v19 countByEnumeratingWithState:&v31 objects:v46 count:16];
      }

      while (v20);
    }

    completionCopy = v28;
    activateCopy = v29;
  }

  (v30[2])(v30);

  _Block_object_dispose(&v40, 8);
}

- (void)deviceManagerUpdate:(id)update completion:(id)completion
{
  updateCopy = update;
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x3032000000;
  v20[3] = sub_100003908;
  v20[4] = sub_100003830;
  v21 = 0;
  v14 = _NSConcreteStackBlock;
  v15 = 3221225472;
  v16 = sub_10002C140;
  v17 = &unk_1002B74D0;
  v19 = v20;
  completionCopy = completion;
  v18 = completionCopy;
  v8 = objc_retainBlock(&v14);
  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    v11 = updateCopy;
    LogPrintF();
  }

  headGestureUpdateFlags = [(AADeviceManager *)self->_deviceManager headGestureUpdateFlags];
  headGestureUpdateFlags2 = [updateCopy headGestureUpdateFlags];
  if (headGestureUpdateFlags != headGestureUpdateFlags2)
  {
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      v12 = headGestureUpdateFlags;
      v13 = headGestureUpdateFlags2;
      LogPrintF();
    }

    [(AADeviceManager *)self->_deviceManager setHeadGestureUpdateFlags:headGestureUpdateFlags2, v12, v13, v14, v15, v16, v17];
    [(AAServicesDaemon *)self->_daemon _update];
  }

  (v8[2])(v8);

  _Block_object_dispose(v20, 8);
}

- (void)deviceManagerSendDeviceConfig:(id)config identifier:(id)identifier completion:(id)completion
{
  configCopy = config;
  identifierCopy = identifier;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = sub_100003908;
  v26 = sub_100003830;
  v27 = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10002C4E8;
  v19[3] = &unk_1002B74D0;
  v21 = &v22;
  completionCopy = completion;
  v20 = completionCopy;
  v11 = objc_retainBlock(v19);
  v12 = (v23 + 5);
  obj = v23[5];
  v13 = [(AAServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v12, obj);
  if (v13)
  {
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v14 = self->_deviceManager;
    if (v14)
    {
      v15 = +[AADeviceManagerDaemon sharedAADeviceManagerDaemon];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_10002C5C0;
      v16[3] = &unk_1002B6A10;
      v17 = completionCopy;
      [v15 sendDeviceConfig:configCopy identifier:identifierCopy completion:v16];
    }

    else if (dword_1002F6480 <= 90 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  (v11[2])(v11);

  _Block_object_dispose(&v22, 8);
}

- (void)deviceManagerFetchAADeviceBatteryInfoForAddress:(id)address deviceHandler:(id)handler
{
  addressCopy = address;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = sub_100003908;
  v33 = sub_100003830;
  v34 = 0;
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_10002C968;
  v26[3] = &unk_1002B74D0;
  v28 = &v29;
  handlerCopy = handler;
  v27 = handlerCopy;
  v20 = objc_retainBlock(v26);
  v8 = v30;
  obj = v30[5];
  LOBYTE(self) = [(AAServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v8 + 5, obj);
  if (self)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = +[AABatteryMonitorDaemon sharedAABatteryMonitorDaemon];
    devices = [v9 devices];

    v11 = [devices countByEnumeratingWithState:&v21 objects:v35 count:16];
    if (v11)
    {
      v12 = *v22;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(devices);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          bluetoothAddress = [v14 bluetoothAddress];
          v16 = addressCopy;
          v17 = v16;
          if (bluetoothAddress == v16)
          {

LABEL_16:
            if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
            {
              LogPrintF();
            }

            (*(handlerCopy + 2))(handlerCopy, v14);
            goto LABEL_21;
          }

          if ((addressCopy == 0) != (bluetoothAddress != 0))
          {
            v18 = [bluetoothAddress isEqual:v16];

            if (v18)
            {
              goto LABEL_16;
            }
          }

          else
          {
          }
        }

        v11 = [devices countByEnumeratingWithState:&v21 objects:v35 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v19 = NSErrorF();
    devices = v30[5];
    v30[5] = v19;
LABEL_21:
  }

  (v20[2])(v20);

  _Block_object_dispose(&v29, 8);
}

- (void)deviceManagerFetchAADeviceBatteryInfoForIdentifier:(id)identifier deviceHandler:(id)handler
{
  identifierCopy = identifier;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_100003908;
  v22 = sub_100003830;
  v23 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002CC88;
  v15[3] = &unk_1002B74D0;
  v17 = &v18;
  handlerCopy = handler;
  v16 = handlerCopy;
  v8 = objc_retainBlock(v15);
  v9 = (v19 + 5);
  obj = v19[5];
  LOBYTE(self) = [(AAServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v9, obj);
  if (self)
  {
    v10 = +[AABatteryMonitorDaemon sharedAABatteryMonitorDaemon];
    v11 = [v10 deviceWithIdentifier:identifierCopy];

    if (v11)
    {
      if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      (*(handlerCopy + 2))(handlerCopy, v11);
    }

    else
    {
      v12 = NSErrorF();
      v13 = v19[5];
      v19[5] = v12;
    }
  }

  (v8[2])(v8);

  _Block_object_dispose(&v18, 8);
}

- (void)deviceManagerFetchAudioAccessoryDeviceForBTAddress:(id)address deviceHandler:(id)handler
{
  addressCopy = address;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = sub_100003908;
  v29 = sub_100003830;
  v30 = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = sub_100003908;
  v23 = sub_100003830;
  v24 = 0;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_10002CFD4;
  v15[3] = &unk_1002B74F8;
  v17 = &v19;
  handlerCopy = handler;
  v16 = handlerCopy;
  v18 = &v25;
  v8 = objc_retainBlock(v15);
  v9 = (v20 + 5);
  obj = v20[5];
  LOBYTE(self) = [(AAServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v9, obj);
  if (self)
  {
    v10 = +[AADeviceManagerDaemon sharedAADeviceManagerDaemon];
    v11 = [v10 deviceWithBluetoothAddress:addressCopy];
    v12 = v26[5];
    v26[5] = v11;

    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      v13 = v26[5];
      LogPrintF();
    }

    (*(handlerCopy + 2))(handlerCopy, v26[5]);
  }

  (v8[2])(v8);

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
}

- (void)deviceManagerFetchPairedAudioAccessoryDevices:(id)devices
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100003908;
  v18 = sub_100003830;
  v19 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10002D2B4;
  v10[3] = &unk_1002B7570;
  v13 = &v14;
  devicesCopy = devices;
  v11 = 0;
  v12 = devicesCopy;
  v5 = objc_retainBlock(v10);
  v6 = (v15 + 5);
  obj = v15[5];
  LOBYTE(self) = [(AAServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (self)
  {
    v7 = +[AAPairedDeviceDaemon sharedAAPairedDeviceDaemon];
    pairedDevices = [v7 pairedDevices];

    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    if (devicesCopy)
    {
      (*(devicesCopy + 2))(devicesCopy, pairedDevices);
    }
  }

  else
  {
    pairedDevices = 0;
  }

  (v5[2])(v5);

  _Block_object_dispose(&v14, 8);
}

- (void)informDRClientSensorDataAvailable:(id)available dataTypes:(unint64_t)types completion:(id)completion
{
  completionCopy = completion;
  availableCopy = available;
  v10 = +[DataRelayDaemon sharedDataRelayInstance];
  [v10 informDRClientSensorDataAvailable:availableCopy dataTypes:types connectionID:-[AAServicesXPCConnection connectionID](self completion:{"connectionID"), completionCopy}];
}

- (void)informDRClientSensorDataUnavailable:(id)unavailable dataTypes:(unint64_t)types completion:(id)completion
{
  completionCopy = completion;
  unavailableCopy = unavailable;
  v10 = +[DataRelayDaemon sharedDataRelayInstance];
  [v10 informDRClientSensorDataUnavailable:unavailableCopy dataTypes:types connectionID:-[AAServicesXPCConnection connectionID](self completion:{"connectionID"), completionCopy}];
}

- (void)sensorServiceActivate:(id)activate completion:(id)completion
{
  activateCopy = activate;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100003908;
  v25 = sub_100003830;
  v26 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10002D708;
  v18[3] = &unk_1002B74D0;
  v20 = &v21;
  completionCopy = completion;
  v19 = completionCopy;
  v9 = objc_retainBlock(v18);
  if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
  {
    v16 = activateCopy;
    LogPrintF();
  }

  v10 = (v22 + 5);
  obj = v22[5];
  v11 = [(AAServicesXPCConnection *)self _entitledAndReturnError:&obj, v16];
  objc_storeStrong(v10, obj);
  if (v11)
  {
    objc_storeStrong(&self->_sensorService, activate);
    activatedSensorServiceSet = self->_daemon->_activatedSensorServiceSet;
    if (!activatedSensorServiceSet)
    {
      v13 = objc_alloc_init(NSMutableSet);
      daemon = self->_daemon;
      v15 = daemon->_activatedSensorServiceSet;
      daemon->_activatedSensorServiceSet = v13;

      activatedSensorServiceSet = self->_daemon->_activatedSensorServiceSet;
    }

    [(NSMutableSet *)activatedSensorServiceSet addObject:activateCopy];
    if (completionCopy)
    {
      (*(completionCopy + 2))(completionCopy, 0);
    }
  }

  (v9[2])(v9);

  _Block_object_dispose(&v21, 8);
}

- (void)isTemporaryPairingConnectionAllowed:(id)allowed
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100003908;
  v19 = sub_100003830;
  v20 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10002DA10;
  v11[3] = &unk_1002B74F8;
  v13 = &v15;
  allowedCopy = allowed;
  v12 = allowedCopy;
  v14 = &v21;
  v5 = objc_retainBlock(v11);
  v6 = (v16 + 5);
  obj = v16[5];
  LOBYTE(self) = [(AAServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v6, obj);
  if (self)
  {
    if (_os_feature_enabled_impl())
    {
      v7 = +[AAManagedSettingsDaemon sharedAAManagedSettingsDaemon];
      allowTemporaryPairingConnection = [v7 allowTemporaryPairingConnection];
      *(v22 + 24) = allowTemporaryPairingConnection;

      if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
      {
        v9 = *(v22 + 24);
        LogPrintF();
      }
    }
  }

  (v5[2])(v5);

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);
}

- (BOOL)_shouldSendXPCMessage
{
  p_xpcMessageCounter = &self->_xpcMessageCounter;
  xpcMessageCounter = self->_xpcMessageCounter;
  if (xpcMessageCounter == -1)
  {
    return 0;
  }

  *p_xpcMessageCounter = xpcMessageCounter + 1;
  if (xpcMessageCounter > 0x27)
  {
    return 0;
  }

  if (xpcMessageCounter == 19)
  {
    xpcCnx = self->_xpcCnx;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10002DC1C;
    v8[3] = &unk_1002B6880;
    v8[4] = self;
    [(NSXPCConnection *)xpcCnx scheduleSendBarrierBlock:v8];
  }

  else if (xpcMessageCounter == 39)
  {
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D805C(self, p_xpcMessageCounter);
    }

    remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [remoteObjectProxy aaServicesRequireReset];

    return 0;
  }

  return 1;
}

- (void)assetManagerShowDownloadNotificationForBTAddress:(id)address completionHandler:(id)handler
{
  addressCopy = address;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = sub_100003908;
  v27 = sub_100003830;
  v28 = 0;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_10002DF40;
  v20[3] = &unk_1002B74D0;
  v22 = &v23;
  handlerCopy = handler;
  v21 = handlerCopy;
  v8 = objc_retainBlock(v20);
  v9 = (v24 + 5);
  obj = v24[5];
  LOBYTE(self) = [(AAServicesXPCConnection *)self _entitledAndReturnError:&obj];
  objc_storeStrong(v9, obj);
  if (self)
  {
    v10 = +[AADeviceManagerDaemon sharedAADeviceManagerDaemon];
    v11 = [v10 deviceWithBluetoothAddress:addressCopy];

    if (v11)
    {
      v12 = +[AAFeatureOnboarding sharedInstance];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_10002E018;
      v15[3] = &unk_1002B7548;
      v16 = addressCopy;
      v18 = &v23;
      v17 = handlerCopy;
      [v12 showAssetManagerShowDownloadNotificationForDevice:v11 withErrorHandler:v15];

      v13 = v16;
    }

    else
    {
      if (dword_1002F6480 <= 90 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
      {
        LogPrintF();
      }

      v14 = NSErrorF();
      v13 = v24[5];
      v24[5] = v14;
    }
  }

  (v8[2])(v8);

  _Block_object_dispose(&v23, 8);
}

- (void)systemStateMonitorReportActiveHRMDeviceChanged:(id)changed withSREnabled:(BOOL)enabled
{
  changedCopy = changed;
  if ([(AAServicesXPCConnection *)self _shouldSendXPCMessage])
  {
    [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    objc_claimAutoreleasedReturnValue();
    sub_10002E278();
    [v5 activeHRMDeviceChanged:? withSREnabled:?];
  }
}

- (void)deviceManagerReportDeviceBatteryInfoFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  if (identifier)
  {
    v5 = self->_deviceManager;
    if (v5)
    {
      batteryInfoDict = self->_batteryInfoDict;
      if (!batteryInfoDict)
      {
        v7 = objc_alloc_init(NSMutableDictionary);
        v8 = self->_batteryInfoDict;
        self->_batteryInfoDict = v7;

        batteryInfoDict = self->_batteryInfoDict;
      }

      [(NSMutableDictionary *)batteryInfoDict setObject:foundCopy forKeyedSubscript:identifier];
      if ([(AAServicesXPCConnection *)self _shouldSendXPCMessage])
      {
        [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
        objc_claimAutoreleasedReturnValue();
        sub_10002E278();
        [v9 deviceManagerFoundBatteryInfo:?];
      }
    }
  }
}

- (void)deviceManagerReportDeviceBatteryInfoLost:(id)lost
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_batteryInfoDict objectForKeyedSubscript:identifier];

    if (v5)
    {
      v6 = self->_deviceManager;
      if (v6)
      {
        [(NSMutableDictionary *)self->_batteryInfoDict setObject:0 forKeyedSubscript:identifier];
        if ([(AAServicesXPCConnection *)self _shouldSendXPCMessage])
        {
          [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
          objc_claimAutoreleasedReturnValue();
          sub_10002E278();
          [v7 deviceManagerLostBatteryInfo:?];
        }
      }
    }
  }
}

- (void)deviceManagerReportDeviceFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  if (identifier)
  {
    bluetoothAddress = [foundCopy bluetoothAddress];
    if (bluetoothAddress)
    {
      v6 = self->_deviceManager;
      if (v6)
      {
        devices = self->_devices;
        if (!devices)
        {
          v8 = objc_alloc_init(NSMutableDictionary);
          v9 = self->_devices;
          self->_devices = v8;

          devices = self->_devices;
        }

        [(NSMutableDictionary *)devices setObject:foundCopy forKeyedSubscript:identifier];
        if ([(AAServicesXPCConnection *)self _shouldSendXPCMessage])
        {
          if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
          {
            v11 = foundCopy;
            LogPrintF();
          }

          remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
          [remoteObjectProxy deviceManagerFoundDevice:foundCopy];
        }
      }
    }
  }
}

- (void)deviceManagerReportDeviceLost:(id)lost
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];

    if (v5)
    {
      v6 = self->_deviceManager;
      if (v6)
      {
        [(NSMutableDictionary *)self->_devices setObject:0 forKeyedSubscript:identifier];
        if ([(AAServicesXPCConnection *)self _shouldSendXPCMessage])
        {
          [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
          objc_claimAutoreleasedReturnValue();
          sub_10002E278();
          [v7 deviceManagerLostDevice:?];
        }
      }
    }
  }
}

- (void)deviceManagerHeadGestureDetected:(id)detected
{
  detectedCopy = detected;
  identifier = [detectedCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_devices objectForKeyedSubscript:identifier];

    if (v5)
    {
      v6 = self->_deviceManager;
      if (v6 && [(AAServicesXPCConnection *)self _shouldSendXPCMessage])
      {
        [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
        objc_claimAutoreleasedReturnValue();
        sub_10002E278();
        [v7 deviceHeadGestureDetected:?];
      }
    }
  }
}

- (void)sensorServiceReportSensorInfo:(id)info
{
  infoCopy = info;
  _shouldSendXPCMessage = [(AAServicesXPCConnection *)self _shouldSendXPCMessage];
  v5 = infoCopy;
  if (_shouldSendXPCMessage)
  {
    v6 = [infoCopy copy];
    if (dword_1002F6480 <= 30 && (dword_1002F6480 != -1 || _LogCategory_Initialize()))
    {
      v8 = v6;
      LogPrintF();
    }

    remoteObjectProxy = [(NSXPCConnection *)self->_xpcCnx remoteObjectProxy];
    [remoteObjectProxy sensorServiceReportSensorInfo:v6];

    v5 = infoCopy;
  }

  _objc_release_x1(_shouldSendXPCMessage, v5);
}

@end