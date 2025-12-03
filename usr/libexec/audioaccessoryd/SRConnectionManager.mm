@interface SRConnectionManager
+ (id)sharedSRConnectionManager;
- (BOOL)_isConnectedTo3rdPartyDevice;
- (BOOL)_isHRMHeadphoneEligibleForTipiV2:(id)v2;
- (BOOL)_isHRMHeadphonePrerequisiteMet:(id)met connectType:(int)type;
- (BOOL)_isHeadphoneBackoffFor2HS:(id)s;
- (BOOL)_isHeadphoneBackoffFor3rdParty:(id)party;
- (BOOL)_isHeadphoneBackoffForRingtone:(id)ringtone;
- (BOOL)_isHeadphoneBackoffForSRDisbledSource:(id)source;
- (BOOL)_isHeadphoneBackoffForUSBPluggedIn:(id)in;
- (BOOL)_isHeadphoneConnected:(id)connected;
- (BOOL)_isHeadphoneConnectedToNothing:(id)nothing;
- (BOOL)_isHeadphoneConnectedToSomething:(id)something;
- (BOOL)_isHeadphoneConnecting:(id)connecting;
- (BOOL)_isHeadphoneEligibleForDirectConnect:(id)connect andNearbyDevices:(id)devices;
- (BOOL)_isHeadphoneEligibleForForceDisconnect:(id)disconnect andNearbyDevices:(id)devices;
- (BOOL)_isHeadphoneEligibleForLEPipe:(id)pipe;
- (BOOL)_isHeadphoneEligibleForTakingConnectionFromWatch:(id)watch;
- (BOOL)_isHeadphoneEligibleForTipiV2:(id)v2 result:(unsigned int *)result;
- (BOOL)_isHeadphoneFWSupportForceDisconnect:(id)disconnect;
- (BOOL)_isHeadphoneFWSupportTipiScore:(id)score;
- (BOOL)_isHeadphoneHasBackoffForDisconnection:(id)disconnection withTime:(unsigned int)time;
- (BOOL)_isHeadphoneHasRightSubType:(id)type;
- (BOOL)_isHeadphoneInAirplaneMode:(id)mode;
- (BOOL)_isHeadphoneInCase:(id)case;
- (BOOL)_isHeadphoneInDisconnectionBackoff:(id)backoff;
- (BOOL)_isHeadphoneLidClosed:(id)closed;
- (BOOL)_isHeadphoneOnDemandEligible:(id)eligible;
- (BOOL)_isHeadphonePaired:(id)paired;
- (BOOL)_isHeadphonePrerequisiteMet:(id)met;
- (BOOL)_isHeadphonePreviouslyManualDisconnect:(id)disconnect;
- (BOOL)_isHeadphoneSRCapable:(id)capable;
- (BOOL)_isHeadphoneUSBPluggedInLastConnectedToMe:(id)me;
- (BOOL)_isOnDemandConnectEligible:(id)eligible result:(id *)result;
- (BOOL)_isOngoingHFPCallOnOtherHeadphone;
- (BOOL)_isSRConnectEligible:(id)eligible;
- (BOOL)_isSourcePrerequisiteMet:(id *)met;
- (BOOL)_isSourcePrerequisiteMetForOnDemandEvent:(id *)event;
- (BOOL)_isTooSoonToConnect;
- (BOOL)evaluateNearbyHRMDeviceForConnection:(id)connection;
- (SRConnectionManager)init;
- (id)_findHeadphoneToConnectStart;
- (id)_findHeadphoneToConnectWithResult:(id *)result;
- (id)_getNearbyConnectedSourceFromWx:(id)wx;
- (id)_getNearbyDeviceFromWxAdvLastHost:(id)host andNearbyDevices:(id)devices;
- (id)evaluateNearbyDevicesForConnection;
- (unint64_t)_getHeadphoneDisconnectBackoffSeconds:(id)seconds;
- (unsigned)_getNearbyHighActivityLevelSourceCount:(id)count;
- (void)_OnDemandEventTimerStart;
- (void)_postNotification:(const char *)notification;
- (void)_updateNearbyWxCount;
- (void)audioRouteChanged:(int)changed;
- (void)bluetoothStateChanged:(int64_t)changed;
- (void)callStateChanged:(BOOL)changed;
- (void)localAudioCategoryChanged:(id)changed;
- (void)nowPlayingStateChanged:(BOOL)changed;
- (void)pairedDeviceCountChanged:(unsigned int)changed;
- (void)ringtoneStateChanged:(BOOL)changed;
- (void)screenLockStateChanged:(BOOL)changed;
- (void)smartRoutingCapableStateChanged:(BOOL)changed;
- (void)tipiScoreChanged:(int)changed;
@end

@implementation SRConnectionManager

+ (id)sharedSRConnectionManager
{
  if (qword_1002FA178 != -1)
  {
    sub_1001F3774();
  }

  v3 = qword_1002FA170;

  return v3;
}

- (id)evaluateNearbyDevicesForConnection
{
  p_bluetoothState = &self->_bluetoothState;
  bluetoothState = self->_bluetoothState;
  if (bluetoothState)
  {
    v5 = bluetoothState == 5;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    self->_currentAudioRoute = 1;
  }

  [(SRConnectionManager *)self _updateNearbyWxCount];
  if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    sub_1000053C0(self, p_bluetoothState);
  }

  return [(SRConnectionManager *)self _findHeadphoneToConnectStart];
}

- (id)_findHeadphoneToConnectStart
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_100003968;
  v19 = sub_100003860;
  v20 = 0;
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100005AB8;
  v14[3] = &unk_1002B6ED8;
  v14[4] = self;
  v14[5] = &v15;
  v3 = objc_retainBlock(v14);
  v5 = (v16 + 5);
  v4 = v16[5];
  if (self->_onDemandEvent)
  {
    obj = v16[5];
    v6 = [(SRConnectionManager *)self _isSourcePrerequisiteMetForOnDemandEvent:&obj];
    objc_storeStrong(v5, obj);
    if (v6)
    {
LABEL_3:
      v7 = (v16 + 5);
      v11 = v16[5];
      v8 = [(SRConnectionManager *)self _findHeadphoneToConnectWithResult:&v11];
      objc_storeStrong(v7, v11);
      goto LABEL_6;
    }
  }

  else
  {
    v12 = v16[5];
    v9 = [(SRConnectionManager *)self _isSourcePrerequisiteMet:&v12];
    objc_storeStrong(v5, v12);
    if (v9)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  (v3[2])(v3);

  _Block_object_dispose(&v15, 8);

  return v8;
}

- (SRConnectionManager)init
{
  v3.receiver = self;
  v3.super_class = SRConnectionManager;
  result = [(SRConnectionManager *)&v3 init];
  if (result)
  {
    result->_screenLocked = 1;
    result->_currentAudioRoute = 1;
  }

  return result;
}

- (void)audioRouteChanged:(int)changed
{
  if (self->_currentAudioRoute != changed)
  {
    self->_currentAudioRoute = changed;
  }
}

- (void)bluetoothStateChanged:(int64_t)changed
{
  bluetoothState = self->_bluetoothState;
  if (bluetoothState != changed)
  {
    if (dword_1002F6E08 <= 30)
    {
      if (dword_1002F6E08 != -1)
      {
LABEL_4:
        if (bluetoothState <= 0xA)
        {
          v6 = off_1002BA268[bluetoothState];
        }

        if (changed <= 0xA)
        {
          v7 = off_1002BA268[changed];
        }

        LogPrintF();
        goto LABEL_11;
      }

      if (_LogCategory_Initialize())
      {
        bluetoothState = self->_bluetoothState;
        goto LABEL_4;
      }
    }

LABEL_11:
    self->_bluetoothState = changed;
  }
}

- (void)pairedDeviceCountChanged:(unsigned int)changed
{
  if (self->_pairedDeviceCount != changed)
  {
    if (dword_1002F6E08 <= 30)
    {
      if (dword_1002F6E08 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_6;
        }

        pairedDeviceCount = self->_pairedDeviceCount;
      }

      LogPrintF();
    }

LABEL_6:
    self->_pairedDeviceCount = changed;
  }
}

- (BOOL)evaluateNearbyHRMDeviceForConnection:(id)connection
{
  connectionCopy = connection;
  if (![(SRConnectionManager *)self _isBluetoothOn])
  {
    [(BTSmartRoutingDaemon *)self->_srDaemon clearCacheForBluetoothOff];
    goto LABEL_5;
  }

  v5 = [(SRConnectionManager *)self _isHRMHeadphoneEligibleForTipiV2:connectionCopy];
  if (![(SRConnectionManager *)self _isSourceSRCapable]|| [(SRConnectionManager *)self _isOngoingPhoneCall])
  {
    [(SRConnectionManager *)self _isHRMHeadphonePrerequisiteMet:connectionCopy connectType:1];
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  _isTipiConnectInProgress = [(SRConnectionManager *)self _isTipiConnectInProgress];
  v9 = [(SRConnectionManager *)self _isHRMHeadphonePrerequisiteMet:connectionCopy connectType:1];
  v6 = 0;
  if ((_isTipiConnectInProgress & 1) == 0 && v9)
  {
    if ([(SRConnectionManager *)self _isHeadphoneConnectedToNothing:connectionCopy])
    {
      if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F37BC();
      }
    }

    else
    {
      if (v5)
      {
        v10 = connectionCopy;
        v11 = 4;
        goto LABEL_16;
      }

      if ([(SRConnectionManager *)self _isHRMHeadphonePrerequisiteMet:connectionCopy connectType:3])
      {
        [(SRConnectionManager *)self onDemandEventStarted:1 withEvent:3];
        v13 = 0;
        if ([(SRConnectionManager *)self _isOnDemandConnectEligible:connectionCopy result:&v13])
        {
          v10 = connectionCopy;
          v11 = 3;
          goto LABEL_16;
        }

        [(SRConnectionManager *)self onDemandEventStarted:0 withEvent:3];
      }

      if ([connectionCopy nearbyTipiScore1] == 15 || objc_msgSend(connectionCopy, "nearbyTipiScore2") == 15)
      {
        if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
        {
          sub_1001F3788();
        }

        goto LABEL_5;
      }

      if ([(SRConnectionManager *)self _isHeadphoneEligibleForLEPipe:connectionCopy])
      {
        v10 = connectionCopy;
        v11 = 6;
        goto LABEL_16;
      }

      if (![(SRConnectionManager *)self _isHeadphoneEligibleForTakingConnectionFromWatch:connectionCopy])
      {
        nearbyInfoDevices = [(BTSmartRoutingDaemon *)self->_srDaemon nearbyInfoDevices];
        if (![(SRConnectionManager *)self _isHeadphoneEligibleForForceDisconnect:connectionCopy andNearbyDevices:nearbyInfoDevices])
        {

          goto LABEL_5;
        }

        [connectionCopy setTipiConnectType:2];

LABEL_17:
        v6 = 1;
        goto LABEL_6;
      }
    }

    v10 = connectionCopy;
    v11 = 7;
LABEL_16:
    [v10 setTipiConnectType:v11];
    goto LABEL_17;
  }

LABEL_6:

  return v6;
}

- (void)localAudioCategoryChanged:(id)changed
{
  changedCopy = changed;
  if (changedCopy)
  {
    v10 = changedCopy;
    currentLocalAudioCategory = self->_currentLocalAudioCategory;
    v6 = v10;
    v7 = v6;
    if (currentLocalAudioCategory == v6)
    {
    }

    else
    {
      if (currentLocalAudioCategory)
      {
        v8 = [(NSNumber *)currentLocalAudioCategory isEqual:v6];

        changedCopy = v10;
        if (v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
      }

      v9 = v7;
      currentLocalAudioCategory = self->_currentLocalAudioCategory;
      self->_currentLocalAudioCategory = v9;
    }

    changedCopy = v10;
  }

LABEL_10:
}

- (void)nowPlayingStateChanged:(BOOL)changed
{
  if (self->_NowPlayingPlaybackStarted != changed)
  {
    self->_NowPlayingPlaybackStarted = changed;
  }
}

- (void)callStateChanged:(BOOL)changed
{
  if (self->_callStarted != changed)
  {
    self->_callStarted = changed;
  }
}

- (void)smartRoutingCapableStateChanged:(BOOL)changed
{
  if (self->_isSourceSRCapable != changed)
  {
    self->_isSourceSRCapable = changed;
  }
}

- (void)ringtoneStateChanged:(BOOL)changed
{
  if (self->_ringtoneStarted != changed)
  {
    self->_ringtoneStarted = changed;
  }
}

- (void)tipiScoreChanged:(int)changed
{
  if (self->_currentTipiScore != changed)
  {
    self->_currentTipiScore = changed;
  }
}

- (id)_findHeadphoneToConnectWithResult:(id *)result
{
  v19[0] = 0;
  v19[1] = v19;
  v19[2] = 0x3032000000;
  v19[3] = sub_100003968;
  v19[4] = sub_100003860;
  v20 = 0;
  v18[0] = _NSConcreteStackBlock;
  v18[1] = 3221225472;
  v18[2] = sub_10009EF68;
  v18[3] = &unk_1002B6C00;
  v18[4] = v19;
  v4 = objc_retainBlock(v18);
  srDiscoveredDeviceMap = [(BTSmartRoutingDaemon *)self->_srDaemon srDiscoveredDeviceMap];
  nearbyInfoDevices = [(BTSmartRoutingDaemon *)self->_srDaemon nearbyInfoDevices];
  self->_nearbyHighActivityLevelSourceCount = [(SRConnectionManager *)self _getNearbyHighActivityLevelSourceCount:nearbyInfoDevices];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100003968;
  v16 = sub_100003860;
  v17 = 0;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 1;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009F004;
  v9[3] = &unk_1002B8928;
  v9[4] = self;
  v9[5] = v10;
  v9[6] = &v12;
  [srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v12, 8);

  (v4[2])(v4);
  _Block_object_dispose(v19, 8);

  return v7;
}

- (BOOL)_isHRMHeadphonePrerequisiteMet:(id)met connectType:(int)type
{
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = sub_100003968;
  v28 = sub_100003860;
  v29 = 0;
  v18 = _NSConcreteStackBlock;
  v19 = 3221225472;
  v20 = sub_10009F560;
  v21 = &unk_1002B6ED8;
  v23 = &v24;
  metCopy = met;
  v22 = metCopy;
  v6 = objc_retainBlock(&v18);
  aaNearbyDevice = [metCopy aaNearbyDevice];
  heartRateMonitorCapability = [aaNearbyDevice heartRateMonitorCapability];

  aaNearbyDevice2 = [metCopy aaNearbyDevice];
  healthKitDataWriteAllowed = [aaNearbyDevice2 healthKitDataWriteAllowed];

  v11 = @"HRM not available";
  if (heartRateMonitorCapability != 2 || healthKitDataWriteAllowed != 1)
  {
    goto LABEL_30;
  }

  if (![metCopy isNearby])
  {
    v11 = @"not nearby";
LABEL_30:
    v17 = v25[5];
    v25[5] = v11;

    v15 = 0;
    goto LABEL_17;
  }

  btAddress = [metCopy btAddress];

  if (!btAddress)
  {
    v11 = @"no btAddress";
    goto LABEL_30;
  }

  btAddress2 = [metCopy btAddress];
  v14 = [(SRConnectionManager *)self _isHeadphonePaired:btAddress2];

  if (!v14)
  {
    v11 = @"not paired";
    goto LABEL_30;
  }

  if (![(SRConnectionManager *)self _isHeadphoneSRCapable:metCopy])
  {
    v11 = @"headphone not supports SR";
    goto LABEL_30;
  }

  if (![(SRConnectionManager *)self _isHeadphoneHasRightSubType:metCopy])
  {
    v11 = @"not right subtype";
    goto LABEL_30;
  }

  if ([(SRConnectionManager *)self _isHeadphoneInAirplaneMode:metCopy])
  {
    v11 = @"in airplane mode";
    goto LABEL_30;
  }

  if ([(SRConnectionManager *)self _isHeadphoneInCase:metCopy]&& [(SRConnectionManager *)self _isHeadphoneLidClosed:metCopy])
  {
    v11 = @"headphone in case nad lid closed";
    goto LABEL_30;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffForSRDisbledSource:metCopy])
  {
    v11 = @"connected source has SR disabled";
    goto LABEL_30;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffFor3rdParty:metCopy])
  {
    v11 = @"backoff for 3rd party";
    goto LABEL_30;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffForUSBPluggedIn:metCopy])
  {
    v11 = @"USB plugged in but last connected to another source";
    goto LABEL_30;
  }

  if ([(SRConnectionManager *)self _isHeadphoneConnecting:metCopy])
  {
    v11 = @"connecting headphone";
    goto LABEL_30;
  }

  if ([(SRConnectionManager *)self _isHeadphoneConnected:metCopy])
  {
    v11 = @"already connected";
    goto LABEL_30;
  }

  v15 = 1;
LABEL_17:
  (v6[2])(v6);

  _Block_object_dispose(&v24, 8);
  return v15;
}

- (BOOL)_isHeadphonePrerequisiteMet:(id)met
{
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = sub_100003968;
  v24 = sub_100003860;
  v25 = 0;
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_10009F964;
  v16[3] = &unk_1002B8870;
  v19 = &v20;
  metCopy = met;
  v17 = metCopy;
  selfCopy = self;
  v5 = objc_retainBlock(v16);
  if (([metCopy isNearby] & 1) == 0)
  {
    v10 = @"not nearby";
    goto LABEL_40;
  }

  btAddress = [metCopy btAddress];

  if (!btAddress)
  {
    v10 = @"no btAddress";
    goto LABEL_40;
  }

  btAddress2 = [metCopy btAddress];
  v8 = [(SRConnectionManager *)self _isHeadphonePaired:btAddress2];

  if (!v8)
  {
    v10 = @"not paired";
    goto LABEL_40;
  }

  onDemandEvent = self->_onDemandEvent;
  if (onDemandEvent)
  {
    if (onDemandEvent == 1 && ![(SRConnectionManager *)self _isHeadphoneHasBackoffForDisconnection:metCopy withTime:10])
    {
      v10 = @"too soon since last disconnection for OD media playback";
LABEL_40:
      v15 = v21[5];
      v21[5] = v10;

      v13 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    btAddress3 = [metCopy btAddress];
    v12 = [(SRConnectionManager *)self _isHeadphoneInDisconnectionBackoff:btAddress3];

    if (v12)
    {
      v10 = @"too soon since last disconnection";
      goto LABEL_40;
    }
  }

  if (![(SRConnectionManager *)self _isHeadphoneSRCapable:metCopy])
  {
    v10 = @"headphone not supports SR";
    goto LABEL_40;
  }

  if (![(SRConnectionManager *)self _isHeadphoneHasRightSubType:metCopy])
  {
    v10 = @"not right subtype";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneInAirplaneMode:metCopy])
  {
    v10 = @"in airplane mode";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneInCase:metCopy]&& [(SRConnectionManager *)self _isHeadphoneLidClosed:metCopy])
  {
    v10 = @"headphone in case nad lid closed";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphonePreviouslyManualDisconnect:metCopy])
  {
    v10 = @"manually disconnect previously";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneConnecting:metCopy])
  {
    v10 = @"connecting headphone";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneConnected:metCopy])
  {
    v10 = @"already connected";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffFor2HS:metCopy])
  {
    v10 = @"backoff for 2HS";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffForRingtone:metCopy])
  {
    v10 = @"backoff for ringtone";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffFor3rdParty:metCopy])
  {
    v10 = @"backoff for 3rd party";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffForUSBPluggedIn:metCopy])
  {
    v10 = @"USB plugged in but last connected to another source";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffForSRDisbledSource:metCopy])
  {
    v10 = @"connected source has SR disabled";
    goto LABEL_40;
  }

  v13 = 1;
LABEL_23:
  (v5[2])(v5);

  _Block_object_dispose(&v20, 8);
  return v13;
}

- (void)_updateNearbyWxCount
{
  self->_wxConnectedCount = 0;
  self->_wxNearbyCount = 0;
  srDiscoveredDeviceMap = [(BTSmartRoutingDaemon *)self->_srDaemon srDiscoveredDeviceMap];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009FAC0;
  v4[3] = &unk_1002B8368;
  v4[4] = self;
  [srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:v4];
}

- (unsigned)_getNearbyHighActivityLevelSourceCount:(id)count
{
  countCopy = count;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10009FBFC;
  v6[3] = &unk_1002B87A8;
  v6[4] = self;
  v6[5] = &v7;
  [countCopy enumerateKeysAndObjectsUsingBlock:v6];
  LODWORD(self) = *(v8 + 6);
  _Block_object_dispose(&v7, 8);

  return self;
}

- (void)screenLockStateChanged:(BOOL)changed
{
  if (self->_screenLocked != changed)
  {
    if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3974();
    }

    self->_screenLocked = changed;
  }
}

- (unint64_t)_getHeadphoneDisconnectBackoffSeconds:(id)seconds
{
  secondsCopy = seconds;
  if (secondsCopy)
  {
    srDiscoveredDeviceMap = [(BTSmartRoutingDaemon *)self->_srDaemon srDiscoveredDeviceMap];
    v6 = [srDiscoveredDeviceMap objectForKeyedSubscript:secondsCopy];
    disconnectionBackoffTick = [v6 disconnectionBackoffTick];

    if (disconnectionBackoffTick)
    {
      mach_absolute_time();
      v8 = [srDiscoveredDeviceMap objectForKeyedSubscript:secondsCopy];
      [v8 disconnectionBackoffTick];
      v9 = UpTicksToSeconds();
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F39CC();
    }

    v9 = 0;
  }

  return v9;
}

- (id)_getNearbyConnectedSourceFromWx:(id)wx
{
  wxCopy = wx;
  nearbyInfoDevices = [(BTSmartRoutingDaemon *)self->_srDaemon nearbyInfoDevices];
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100003968;
  v16 = sub_100003860;
  v17 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10009FF84;
  v9[3] = &unk_1002B89A0;
  v9[4] = self;
  v6 = wxCopy;
  v10 = v6;
  v11 = &v12;
  [nearbyInfoDevices enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];

  _Block_object_dispose(&v12, 8);

  return v7;
}

- (BOOL)_isConnectedTo3rdPartyDevice
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  srDiscoveredDeviceMap = [(BTSmartRoutingDaemon *)self->_srDaemon srDiscoveredDeviceMap];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A0230;
  v5[3] = &unk_1002B8780;
  v5[4] = &v6;
  [srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_isOnDemandConnectEligible:(id)eligible result:(id *)result
{
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = sub_100003968;
  v25 = sub_100003860;
  v26 = 0;
  v15 = _NSConcreteStackBlock;
  v16 = 3221225472;
  v17 = sub_1000A0504;
  v18 = &unk_1002B6ED8;
  v20 = &v21;
  eligibleCopy = eligible;
  v19 = eligibleCopy;
  v6 = objc_retainBlock(&v15);
  if ([eligibleCopy nearbyInEar] != 1)
  {
    v10 = 0;
    v13 = v22;
    v9 = v22[5];
    v14 = @"not inEar";
LABEL_17:
    v13[5] = v14;
    goto LABEL_13;
  }

  if ([(NSNumber *)self->_currentLocalAudioCategory intValue]== 401)
  {
    v10 = 0;
    v13 = v22;
    v9 = v22[5];
    v14 = @"source playing 3rd party ringtone";
    goto LABEL_17;
  }

  onDemandEvent = self->_onDemandEvent;
  if (onDemandEvent == 3)
  {
    v8 = [eligibleCopy nearbyAudioState] != 0;
    onDemandEvent = self->_onDemandEvent;
  }

  else
  {
    v8 = 1;
  }

  if (onDemandEvent == 1)
  {
    if (![eligibleCopy nearbyAudioState])
    {
      goto LABEL_10;
    }

    onDemandEvent = self->_onDemandEvent;
  }

  if (onDemandEvent != 2 && v8)
  {
    v10 = 0;
    v13 = v22;
    v9 = v22[5];
    v14 = @"Media/Call criteria not met";
    goto LABEL_17;
  }

LABEL_10:
  v9 = [(SRConnectionManager *)self _getNearbyConnectedSourceFromWx:eligibleCopy];
  if ([v9 audioRoutingScore])
  {
    v10 = 1;
  }

  else
  {
    model = [v9 model];
    v10 = [model hasPrefix:@"Watch"];
  }

LABEL_13:

  (v6[2])(v6);
  _Block_object_dispose(&v21, 8);

  return v10;
}

- (BOOL)_isSRConnectEligible:(id)eligible
{
  eligibleCopy = eligible;
  if (!-[SRConnectionManager _isHeadphoneConnectedToNothing:](self, "_isHeadphoneConnectedToNothing:", eligibleCopy) && [eligibleCopy prevFailedTipiConnectType] != 6)
  {
    if (self->_onDemandEvent)
    {
      v12 = 0;
      if ([(SRConnectionManager *)self _isOnDemandConnectEligible:eligibleCopy result:&v12])
      {
        v5 = eligibleCopy;
        v6 = 3;
        goto LABEL_4;
      }
    }

    v11 = 0;
    if ([(SRConnectionManager *)self _isHeadphoneEligibleForTipiV2:eligibleCopy result:&v11])
    {
      v5 = eligibleCopy;
      v6 = 4;
      goto LABEL_4;
    }

    if ([(SRConnectionManager *)self _shouldTryLEPipe:v11])
    {
      if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F3AE0(&v11);
      }

      if ([(SRConnectionManager *)self _isHeadphoneEligibleForLEPipe:eligibleCopy])
      {
        v5 = eligibleCopy;
        v6 = 6;
        goto LABEL_4;
      }
    }

    if (![(SRConnectionManager *)self _isHeadphoneEligibleForTakingConnectionFromWatch:eligibleCopy])
    {
      nearbyInfoDevices = [(BTSmartRoutingDaemon *)self->_srDaemon nearbyInfoDevices];
      if ([(SRConnectionManager *)self _isHeadphoneEligibleForDirectConnect:eligibleCopy andNearbyDevices:nearbyInfoDevices])
      {
        v10 = 10;
      }

      else
      {
        if (![(SRConnectionManager *)self _isHeadphoneEligibleForForceDisconnect:eligibleCopy andNearbyDevices:nearbyInfoDevices])
        {
          v7 = 0;
          goto LABEL_24;
        }

        v10 = 2;
      }

      [eligibleCopy setTipiConnectType:v10];
      v7 = 1;
LABEL_24:

      goto LABEL_5;
    }
  }

  v5 = eligibleCopy;
  v6 = 7;
LABEL_4:
  [v5 setTipiConnectType:v6];
  v7 = 1;
LABEL_5:

  return v7;
}

- (BOOL)_isHeadphoneConnected:(id)connected
{
  connectedCopy = connected;
  v4 = connectedCopy;
  if (connectedCopy)
  {
    v5 = [connectedCopy connectionState] == 2;
  }

  else
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3B3C();
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)_isHeadphoneBackoffFor3rdParty:(id)party
{
  partyCopy = party;
  if (!partyCopy)
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3B58();
    }

    goto LABEL_7;
  }

  if (![(SRConnectionManager *)self _isConnectedTo3rdPartyDevice])
  {
LABEL_7:
    v5 = 0;
    goto LABEL_8;
  }

  v5 = [partyCopy nearbyInEar] != 1;
LABEL_8:

  return v5;
}

- (BOOL)_isHeadphoneBackoffForSRDisbledSource:(id)source
{
  sourceCopy = source;
  if (!sourceCopy)
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3B74();
    }

    goto LABEL_11;
  }

  if (-[SRConnectionManager _isHeadphoneUSBPluggedInLastConnectedToMe:](self, "_isHeadphoneUSBPluggedInLastConnectedToMe:", sourceCopy) || ([sourceCopy nearbyTipiScore1] != 8 || !objc_msgSend(sourceCopy, "nearbyConnectedSourceCount")) && (objc_msgSend(sourceCopy, "nearbyTipiScore2") != 8 || objc_msgSend(sourceCopy, "nearbyConnectedSourceCount") <= 1))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = 1;
LABEL_12:

  return v5;
}

- (BOOL)_isHeadphoneBackoffFor2HS:(id)s
{
  sCopy = s;
  if (sCopy)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    _isAnyConnectedWxInEarCheck = [(BTSmartRoutingDaemon *)self->_srDaemon _isAnyConnectedWxInEarCheck];
    srDiscoveredDeviceMap = [(BTSmartRoutingDaemon *)self->_srDaemon srDiscoveredDeviceMap];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000A0BB4;
    v14[3] = &unk_1002B8780;
    v14[4] = &v15;
    [srDiscoveredDeviceMap enumerateKeysAndObjectsUsingBlock:v14];
    if (v16[6] < 1)
    {
      goto LABEL_16;
    }

    btAddress = [sCopy btAddress];
    budSwapAddress = [(BTSmartRoutingDaemon *)self->_srDaemon budSwapAddress];
    v9 = [btAddress isEqualToString:budSwapAddress];

    if ([sCopy nearbyInEar] == 1 || -[BTSmartRoutingDaemon _bluetoothProductIDNoEarDetect:](self->_srDaemon, "_bluetoothProductIDNoEarDetect:", objc_msgSend(sCopy, "nearbyProductID")))
    {
      v10 = _isAnyConnectedWxInEarCheck;
    }

    else
    {
      v10 = 0;
    }

    if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      v13 = v16[6];
      LogPrintF();
    }

    if ((v9 & 1) == 0 && ((v10 & 1) != 0 || [sCopy nearbyAudioState]))
    {
      v11 = 1;
    }

    else
    {
LABEL_16:
      v11 = 0;
    }

    _Block_object_dispose(&v15, 8);
  }

  else
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3B90();
    }

    v11 = 0;
  }

  return v11;
}

- (BOOL)_isHeadphoneBackoffForRingtone:(id)ringtone
{
  ringtoneCopy = ringtone;
  v5 = ringtoneCopy;
  if (!ringtoneCopy)
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3BAC();
    }

    goto LABEL_9;
  }

  if (!self->_ringtoneStarted || [ringtoneCopy nearbyConnectedSourceCount] < 2 || -[SRConnectionManager _isOngoingPhoneCall](self, "_isOngoingPhoneCall"))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  v6 = 1;
LABEL_10:

  return v6;
}

- (BOOL)_isHeadphoneBackoffForUSBPluggedIn:(id)in
{
  inCopy = in;
  v5 = inCopy;
  if (!inCopy)
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3BC8();
    }

    goto LABEL_7;
  }

  if (![inCopy isUSBPlugIn])
  {
LABEL_7:
    LOBYTE(v6) = 0;
    goto LABEL_8;
  }

  v6 = ![(SRConnectionManager *)self _isHeadphoneUSBPluggedInLastConnectedToMe:v5];
LABEL_8:

  return v6;
}

- (BOOL)_isHeadphoneUSBPluggedInLastConnectedToMe:(id)me
{
  meCopy = me;
  v4 = meCopy;
  if (!meCopy)
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3BE4();
    }

    goto LABEL_9;
  }

  if (![meCopy isUSBPlugIn] || objc_msgSend(v4, "nearbyConnectedSourceCount") != 1 || objc_msgSend(v4, "nearbyTipiScore1") != 8)
  {
LABEL_9:
    nearbyIsMeLastRoute = 0;
    goto LABEL_10;
  }

  nearbyIsMeLastRoute = [v4 nearbyIsMeLastRoute];
LABEL_10:

  return nearbyIsMeLastRoute;
}

- (BOOL)_isHeadphoneConnectedToNothing:(id)nothing
{
  nothingCopy = nothing;
  v5 = nothingCopy;
  if (nothingCopy)
  {
    if ([nothingCopy nearbyConnectedSourceCount])
    {
      v6 = [(SRConnectionManager *)self _isHeadphoneUSBPluggedInLastConnectedToMe:v5];
    }

    else
    {
      v6 = 1;
    }
  }

  else
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3C00();
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)_isHeadphoneConnectedToSomething:(id)something
{
  somethingCopy = something;
  v5 = somethingCopy;
  if (!somethingCopy)
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3C1C();
    }

    goto LABEL_7;
  }

  if (![somethingCopy nearbyConnectedSourceCount])
  {
LABEL_7:
    LOBYTE(v6) = 0;
    goto LABEL_8;
  }

  v6 = ![(SRConnectionManager *)self _isHeadphoneUSBPluggedInLastConnectedToMe:v5];
LABEL_8:

  return v6;
}

- (BOOL)_isHeadphoneConnecting:(id)connecting
{
  connectingCopy = connecting;
  v4 = connectingCopy;
  if (connectingCopy)
  {
    v5 = [connectingCopy connectionState] == 1;
  }

  else
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3C38();
    }

    v5 = 0;
  }

  return v5;
}

- (id)_getNearbyDeviceFromWxAdvLastHost:(id)host andNearbyDevices:(id)devices
{
  hostCopy = host;
  devicesCopy = devices;
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = sub_100003968;
  v18 = sub_100003860;
  v19 = 0;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_1001F2EEC;
  v11[3] = &unk_1002B89A0;
  v11[4] = self;
  v8 = hostCopy;
  v12 = v8;
  v13 = &v14;
  [devicesCopy enumerateKeysAndObjectsUsingBlock:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (BOOL)_isHRMHeadphoneEligibleForTipiV2:(id)v2
{
  v30 = 0;
  v31 = &v30;
  v32 = 0x3032000000;
  v33 = sub_100003968;
  v34 = sub_100003860;
  v35 = 0;
  v24 = _NSConcreteStackBlock;
  v25 = 3221225472;
  v26 = sub_1000A14B8;
  v27 = &unk_1002B6ED8;
  v29 = &v30;
  v2Copy = v2;
  v28 = v2Copy;
  v5 = objc_retainBlock(&v24);
  if ([v2Copy isFirstConnectionAfterSREnable])
  {
    LOBYTE(fwVersion) = 0;
    v22 = v31;
    v15 = v31[5];
    v23 = @"First connection attemp after SR enabled";
LABEL_33:
    v22[5] = v23;
    goto LABEL_27;
  }

  fwVersion = [v2Copy fwVersion];

  if (!fwVersion)
  {
    v22 = v31;
    v15 = v31[5];
    v23 = @"missing fw version";
    goto LABEL_33;
  }

  fwVersion2 = [v2Copy fwVersion];
  v8 = [@"5A187" compare:fwVersion2 options:64];

  if (v8 != -1)
  {
    LOBYTE(fwVersion) = 0;
    v22 = v31;
    v15 = v31[5];
    v23 = @"not eligible fw version";
    goto LABEL_33;
  }

  if ([v2Copy nearbyTipiScore2] == 15)
  {
    LOBYTE(fwVersion) = 0;
    v22 = v31;
    v15 = v31[5];
    v23 = @"2nd source connecting";
    goto LABEL_33;
  }

  srDaemon = self->_srDaemon;
  nearbyLastRouteHost = [v2Copy nearbyLastRouteHost];
  LOBYTE(srDaemon) = [(BTSmartRoutingDaemon *)srDaemon _isDevicePairedCheck:nearbyLastRouteHost];

  if ((srDaemon & 1) == 0)
  {
    LOBYTE(fwVersion) = 0;
    v22 = v31;
    v15 = v31[5];
    v23 = @"connected source not signed in with same iCloud";
    goto LABEL_33;
  }

  if ([v2Copy nearbyTipiScore1])
  {
    v11 = [v2Copy nearbyTipiScore1] < 8;
  }

  else
  {
    v11 = 0;
  }

  if (GestaltGetDeviceClass() == 1)
  {
    v12 = self->_srDaemon;
    nearbyLastRouteHost2 = [v2Copy nearbyLastRouteHost];
    v14 = [(BTSmartRoutingDaemon *)v12 _isMagnetConnectedDeviceforConnectionCheck:nearbyLastRouteHost2];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(SRConnectionManager *)self _getNearbyConnectedSourceFromWx:v2Copy];
  model = [v15 model];
  if (model)
  {
    model2 = [v15 model];
    v18 = [model2 hasPrefix:@"Watch"];

    if (v18)
    {
      v11 &= v14;
    }
  }

  if ([v2Copy nearbyConnectedSourceCount] == 1)
  {
    v19 = [v2Copy nearbyTipiScore1] == 12 && objc_msgSend(v2Copy, "nearbyOutOfCaseTime") <= 2 && objc_msgSend(v2Copy, "nearbyAudioState") == 0;
    LOBYTE(fwVersion) = v11 | v19;
  }

  else if ([v2Copy nearbyConnectedSourceCount] == 2)
  {
    if ([v2Copy nearbyTipiScore2])
    {
      v20 = [v2Copy nearbyTipiScore2] < 8;
    }

    else
    {
      v20 = 0;
    }

    LOBYTE(fwVersion) = v11 & (v20 | ([v2Copy nearbyTipiScore2] == 9));
  }

  else
  {
    LOBYTE(fwVersion) = 0;
  }

LABEL_27:

  (v5[2])(v5);
  _Block_object_dispose(&v30, 8);

  return fwVersion & 1;
}

- (BOOL)_isHeadphoneEligibleForTipiV2:(id)v2 result:(unsigned int *)result
{
  v33 = 0;
  v34 = &v33;
  v35 = 0x2020000000;
  v36 = 0;
  v29[0] = _NSConcreteStackBlock;
  v29[1] = 3221225472;
  v29[2] = sub_1000A193C;
  v29[3] = &unk_1002BA220;
  v31 = &v33;
  v2Copy = v2;
  v30 = v2Copy;
  resultCopy = result;
  v7 = objc_retainBlock(v29);
  if ([v2Copy isFirstConnectionAfterSREnable])
  {
    LOBYTE(fwVersion) = 0;
    v25 = v34;
    v26 = 1;
LABEL_39:
    *(v25 + 6) = v26;
    goto LABEL_32;
  }

  fwVersion = [v2Copy fwVersion];

  if (!fwVersion)
  {
    v25 = v34;
    v26 = 2;
    goto LABEL_39;
  }

  fwVersion2 = [v2Copy fwVersion];
  v10 = [@"5A187" compare:fwVersion2 options:64];

  if (v10 != -1)
  {
    LOBYTE(fwVersion) = 0;
    v25 = v34;
    v26 = 3;
    goto LABEL_39;
  }

  if ([v2Copy nearbyTipiScore2] == 15)
  {
    LOBYTE(fwVersion) = 0;
    v25 = v34;
    v26 = 4;
    goto LABEL_39;
  }

  currentTipiScore = self->_currentTipiScore;
  if (currentTipiScore <= [v2Copy nearbyTipiScore2] && objc_msgSend(v2Copy, "nearbyTipiScore2") <= 7)
  {
    LOBYTE(fwVersion) = 0;
    v25 = v34;
    v26 = 5;
    goto LABEL_39;
  }

  srDaemon = self->_srDaemon;
  nearbyLastRouteHost = [v2Copy nearbyLastRouteHost];
  LOBYTE(srDaemon) = [(BTSmartRoutingDaemon *)srDaemon _isDevicePairedCheck:nearbyLastRouteHost];

  if ((srDaemon & 1) == 0)
  {
    LOBYTE(fwVersion) = 0;
    v25 = v34;
    v26 = 6;
    goto LABEL_39;
  }

  if (GestaltGetDeviceClass() == 1)
  {
    v14 = self->_srDaemon;
    nearbyLastRouteHost2 = [v2Copy nearbyLastRouteHost];
    v16 = [(BTSmartRoutingDaemon *)v14 _isMagnetConnectedDeviceforConnectionCheck:nearbyLastRouteHost2];
  }

  else
  {
    v16 = 0;
  }

  if ([v2Copy nearbyTipiScore1])
  {
    v17 = [v2Copy nearbyTipiScore1] < 8;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(SRConnectionManager *)self _getNearbyConnectedSourceFromWx:v2Copy];
  model = [v18 model];
  if (model)
  {
    model2 = [v18 model];
    v21 = [model2 hasPrefix:@"Watch"];

    if (v21)
    {
      v17 &= v16;
    }
  }

  if ([v2Copy nearbyConnectedSourceCount] == 1)
  {
    if ([v2Copy nearbyTipiScore1])
    {
      v22 = [v2Copy nearbyTipiScore1] == 12 && objc_msgSend(v2Copy, "nearbyOutOfCaseTime") <= 2 && objc_msgSend(v2Copy, "nearbyAudioState") == 0;
      LOBYTE(fwVersion) = v17 | v22;
      goto LABEL_31;
    }

    LOBYTE(fwVersion) = 0;
    v27 = v34;
    v28 = 7;
LABEL_42:
    *(v27 + 6) = v28;
    goto LABEL_31;
  }

  if ([v2Copy nearbyConnectedSourceCount] == 2)
  {
    if ([v2Copy nearbyTipiScore2])
    {
      if ([v2Copy nearbyTipiScore2])
      {
        v23 = [v2Copy nearbyTipiScore2] < 8;
      }

      else
      {
        v23 = 0;
      }

      LOBYTE(fwVersion) = v17 & (v23 | ([v2Copy nearbyTipiScore2] == 9));
      goto LABEL_31;
    }

    LOBYTE(fwVersion) = 0;
    v27 = v34;
    v28 = 8;
    goto LABEL_42;
  }

  LOBYTE(fwVersion) = 0;
LABEL_31:

LABEL_32:
  (v7[2])(v7);

  _Block_object_dispose(&v33, 8);
  return fwVersion & 1;
}

- (BOOL)_isHeadphoneFWSupportForceDisconnect:(id)disconnect
{
  fwVersion = [disconnect fwVersion];
  v4 = [@"4A345" compare:fwVersion options:64] == -1;

  return v4;
}

- (BOOL)_isHeadphoneFWSupportTipiScore:(id)score
{
  fwVersion = [score fwVersion];
  v4 = [@"5A274" compare:fwVersion options:64] == -1;

  return v4;
}

- (BOOL)_isHeadphoneEligibleForTakingConnectionFromWatch:(id)watch
{
  watchCopy = watch;
  nearbyInfoDevices = [(BTSmartRoutingDaemon *)self->_srDaemon nearbyInfoDevices];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F34A8;
  v9[3] = &unk_1002B89A0;
  v9[4] = self;
  v6 = watchCopy;
  v10 = v6;
  v11 = &v12;
  [nearbyInfoDevices enumerateKeysAndObjectsUsingBlock:v9];
  if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    *(v13 + 24);
    LogPrintF();
  }

  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (BOOL)_isHeadphoneEligibleForLEPipe:(id)pipe
{
  pipeCopy = pipe;
  v5 = [(SRConnectionManager *)self _getNearbyConnectedSourceFromWx:pipeCopy];
  audioRoutingScore = [v5 audioRoutingScore];
  v7 = [pipeCopy nearbyTipiScore1] == 8 || objc_msgSend(pipeCopy, "nearbyConnectedSourceCount") == 2 && objc_msgSend(pipeCopy, "nearbyTipiScore2") == 8;
  model = [v5 model];
  v9 = [model hasPrefix:@"Watch"];

  if (v5)
  {
    v10 = audioRoutingScore == 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  v12 = v11 | v9 | v7;
  if (v12)
  {
    if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }
  }

  else
  {
    [pipeCopy setNearbyLEPipeSourceDevice:v5];
  }

  return (v12 & 1) == 0;
}

- (BOOL)_isHeadphoneHasRightSubType:(id)type
{
  typeCopy = type;
  v4 = typeCopy;
  if (typeCopy)
  {
    v5 = [typeCopy nearbySubtype] == 1;
  }

  else
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3D58();
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)_isHeadphoneInAirplaneMode:(id)mode
{
  modeCopy = mode;
  v4 = modeCopy;
  if (modeCopy)
  {
    nearbyAirplaneMode = [modeCopy nearbyAirplaneMode];
  }

  else
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3D74();
    }

    nearbyAirplaneMode = 0;
  }

  return nearbyAirplaneMode;
}

- (BOOL)_isHeadphoneInCase:(id)case
{
  caseCopy = case;
  v4 = caseCopy;
  if (caseCopy)
  {
    v5 = [caseCopy nearbyInCase] != 0;
  }

  else
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3D90();
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)_isHeadphoneHasBackoffForDisconnection:(id)disconnection withTime:(unsigned int)time
{
  disconnectionCopy = disconnection;
  mach_absolute_time();
  [disconnectionCopy disconnectionBackoffTick];

  v6 = UpTicksToSeconds();
  if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v6 >= time;
}

- (BOOL)_isHeadphoneInDisconnectionBackoff:(id)backoff
{
  backoffCopy = backoff;
  if (backoffCopy)
  {
    srDiscoveredDeviceMap = [(BTSmartRoutingDaemon *)self->_srDaemon srDiscoveredDeviceMap];
    mach_absolute_time();
    v6 = [srDiscoveredDeviceMap objectForKeyedSubscript:backoffCopy];
    [v6 disconnectionBackoffTick];
    v7 = UpTicksToSeconds();

    v8 = v7 < 0x1E;
  }

  else
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3DAC();
    }

    v8 = 0;
  }

  return v8;
}

- (BOOL)_isHeadphoneLidClosed:(id)closed
{
  closedCopy = closed;
  v4 = closedCopy;
  if (closedCopy)
  {
    nearbyLidClosed = [closedCopy nearbyLidClosed];
    v6 = nearbyLidClosed != 0;
  }

  else
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3DC8();
    }

    v6 = 0;
  }

  return v6;
}

- (BOOL)_isHeadphoneOnDemandEligible:(id)eligible
{
  eligibleCopy = eligible;
  if (eligibleCopy)
  {
    intValue = [(NSNumber *)self->_currentLocalAudioCategory intValue];
    v6 = (self->_NowPlayingPlaybackStarted || -[NSNumber intValue](self->_currentLocalAudioCategory, "intValue") >= 301) && [eligibleCopy nearbyAudioState] == 0;
    callStarted = self->_callStarted;
    v9 = [eligibleCopy nearbyInEar] == 1 && (callStarted || v6);
    v7 = intValue != 401 && v9;
  }

  else
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3DE4();
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_isHeadphonePaired:(id)paired
{
  pairedCopy = paired;
  if (pairedCopy)
  {
    srDiscoveredDeviceMap = [(BTSmartRoutingDaemon *)self->_srDaemon srDiscoveredDeviceMap];
    v6 = [srDiscoveredDeviceMap objectForKeyedSubscript:pairedCopy];
    nearbyPaired = [v6 nearbyPaired];
  }

  else
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3E00();
    }

    nearbyPaired = 0;
  }

  return nearbyPaired;
}

- (BOOL)_isHeadphonePreviouslyManualDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  v4 = disconnectCopy;
  if (disconnectCopy)
  {
    isManualDisconnectLastTime = [disconnectCopy isManualDisconnectLastTime];
  }

  else
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3E1C();
    }

    isManualDisconnectLastTime = 0;
  }

  return isManualDisconnectLastTime;
}

- (BOOL)_isHeadphoneSRCapable:(id)capable
{
  capableCopy = capable;
  v4 = capableCopy;
  if (capableCopy)
  {
    isSRCapable = [capableCopy isSRCapable];
  }

  else
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3E38();
    }

    isSRCapable = 0;
  }

  return isSRCapable;
}

- (BOOL)_isSourcePrerequisiteMetForOnDemandEvent:(id *)event
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100003968;
  v15 = sub_100003860;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A2500;
  v10[3] = &unk_1002BA248;
  v10[4] = &v11;
  v10[5] = event;
  v4 = objc_retainBlock(v10);
  if (![(SRConnectionManager *)self _isBluetoothOn])
  {
    v7 = v12[5];
    v12[5] = @"BT is off";

    [(BTSmartRoutingDaemon *)self->_srDaemon clearCacheForBluetoothOff];
LABEL_10:
    v5 = 0;
    goto LABEL_5;
  }

  if (![(SRConnectionManager *)self _isSourceSRCapable])
  {
    v8 = @"source not SR capable";
LABEL_9:
    v9 = v12[5];
    v12[5] = v8;

    goto LABEL_10;
  }

  if ([(SRConnectionManager *)self _isOngoingSRConnection])
  {
    v8 = @"ongoing SR connection";
    goto LABEL_9;
  }

  v5 = 1;
LABEL_5:
  (v4[2])(v4);

  _Block_object_dispose(&v11, 8);
  return v5;
}

- (BOOL)_isSourcePrerequisiteMet:(id *)met
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = sub_100003968;
  v15 = sub_100003860;
  v16 = 0;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000A2768;
  v10[3] = &unk_1002BA248;
  v10[4] = &v11;
  v10[5] = met;
  v4 = objc_retainBlock(v10);
  if (![(SRConnectionManager *)self _isBluetoothOn])
  {
    v7 = v12[5];
    v12[5] = @"BT not PowerOn";

    [(BTSmartRoutingDaemon *)self->_srDaemon clearCacheForBluetoothOff];
LABEL_18:
    v5 = 0;
    goto LABEL_9;
  }

  if (![(SRConnectionManager *)self _isSourceSRCapable])
  {
    v8 = @"source not SR capable";
LABEL_17:
    v9 = v12[5];
    v12[5] = v8;

    goto LABEL_18;
  }

  if ([(SRConnectionManager *)self _isOngoingSRConnection])
  {
    v8 = @"ongoing SR connection";
    goto LABEL_17;
  }

  if ([(SRConnectionManager *)self _isTooSoonToConnect])
  {
    v8 = @"too soon since last connect";
    goto LABEL_17;
  }

  if ([(SRConnectionManager *)self _isOngoingHFPCallOnOtherHeadphone])
  {
    v8 = @"ongoing HFP call playing on other headphone";
    goto LABEL_17;
  }

  if ([(SRConnectionManager *)self _isUserActivityLow])
  {
    v8 = @"source activity low";
    goto LABEL_17;
  }

  if ([(SRConnectionManager *)self _isTipiConnectInProgress])
  {
    v8 = @"Tipi connect in progress";
    goto LABEL_17;
  }

  v5 = 1;
LABEL_9:
  (v4[2])(v4);

  _Block_object_dispose(&v11, 8);
  return v5;
}

- (BOOL)_isTooSoonToConnect
{
  connectTick = [(SRConnectConfig *)self->_currentConnectConfig connectTick];
  if (connectTick)
  {
    mach_absolute_time();
    [(SRConnectConfig *)self->_currentConnectConfig connectTick];
    if (UpTicksToSeconds() > 0x1DF)
    {
      LOBYTE(connectTick) = 0;
    }

    else
    {
      if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F3EA0();
      }

      LOBYTE(connectTick) = 1;
    }
  }

  return connectTick;
}

- (BOOL)_isOngoingHFPCallOnOtherHeadphone
{
  if ([(NSNumber *)self->_currentLocalAudioCategory intValue]!= 501 || self->_currentAudioRoute != 3)
  {
    return 0;
  }

  if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F3EE8();
  }

  return 1;
}

- (void)_postNotification:(const char *)notification
{
  if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F3F7C();
  }

  notify_post(notification);
}

- (void)_OnDemandEventTimerStart
{
  if (self->_onDemandEventTimer)
  {
    if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3FBC();
    }
  }

  else
  {
    v3 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_dispatchQueueSRDaemon);
    onDemandEventTimer = self->_onDemandEventTimer;
    self->_onDemandEventTimer = v3;

    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_1000A2B5C;
    handler[3] = &unk_1002B6880;
    handler[4] = self;
    dispatch_source_set_event_handler(v3, handler);
    CUDispatchTimerSet();
    if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3FD8();
    }

    dispatch_activate(v3);
  }
}

- (BOOL)_isHeadphoneEligibleForDirectConnect:(id)connect andNearbyDevices:(id)devices
{
  connectCopy = connect;
  v6 = [sub_100072F04() _getNearbyDeviceFromWxAdvLastHost:? andNearbyDevices:?];

  if (v6)
  {
    if (dword_1002F6E08 > 30 || dword_1002F6E08 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_33;
    }

LABEL_32:
    LogPrintF();
    goto LABEL_33;
  }

  srDaemon = self->_srDaemon;
  nearbyLastRouteHost = [connectCopy nearbyLastRouteHost];
  LOBYTE(srDaemon) = [(BTSmartRoutingDaemon *)srDaemon _isDevicePairedCheck:nearbyLastRouteHost];

  if ((srDaemon & 1) == 0)
  {
    if (dword_1002F6E08 > 30 || dword_1002F6E08 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  mach_absolute_time();
  [(BTSmartRoutingDaemon *)self->_srDaemon prefSmartRoutingForcedDisconnectionTicks];
  if (UpTicksToSeconds() <= 1)
  {
    if (dword_1002F6E08 > 30 || dword_1002F6E08 == -1 && !_LogCategory_Initialize())
    {
      goto LABEL_33;
    }

    goto LABEL_32;
  }

  if (![sub_100072F04() _isHeadphoneFWSupportTipiScore:?] || !objc_msgSend(connectCopy, "nearbyTipiScore1") || objc_msgSend(connectCopy, "nearbyInEar") != 1)
  {
    goto LABEL_33;
  }

  if ([connectCopy nearbyConnectedSourceCount] != 1 || objc_msgSend(connectCopy, "nearbyTipiScore1") > 3)
  {
    if ([connectCopy nearbyConnectedSourceCount] == 2)
    {
      if ([connectCopy nearbyTipiScore2])
      {
        if ([connectCopy nearbyTipiScore1] <= 3)
        {
          currentTipiScore = self->_currentTipiScore;
          if (currentTipiScore > [connectCopy nearbyTipiScore2])
          {
            if (dword_1002F6E08 > 30 || dword_1002F6E08 == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_23;
            }

            sub_10009E97C(self->_currentTipiScore);
            sub_10009E97C([connectCopy nearbyTipiScore2]);
            goto LABEL_19;
          }
        }
      }
    }

LABEL_33:
    v10 = 0;
    goto LABEL_34;
  }

  if (dword_1002F6E08 > 30 || dword_1002F6E08 == -1 && !_LogCategory_Initialize())
  {
    goto LABEL_23;
  }

  sub_10009E97C([connectCopy nearbyTipiScore1]);
LABEL_19:
  LogPrintF();
LABEL_23:
  v10 = 1;
LABEL_34:

  return v10;
}

- (BOOL)_isHeadphoneEligibleForForceDisconnect:(id)disconnect andNearbyDevices:(id)devices
{
  disconnectCopy = disconnect;
  v6 = [sub_100072F04() _getNearbyDeviceFromWxAdvLastHost:? andNearbyDevices:?];

  if (v6)
  {
    goto LABEL_13;
  }

  srDaemon = self->_srDaemon;
  nearbyLastRouteHost = [disconnectCopy nearbyLastRouteHost];
  v9 = [(BTSmartRoutingDaemon *)srDaemon _isDevicePairedCheck:nearbyLastRouteHost];

  mach_absolute_time();
  [(BTSmartRoutingDaemon *)self->_srDaemon prefSmartRoutingForcedDisconnectionTicks];
  v10 = UpTicksToSeconds();
  if (![disconnectCopy nearbyTipiScore1])
  {
    goto LABEL_13;
  }

  v11 = 0;
  if ([disconnectCopy nearbyInEar] != 1 || ((v9 ^ 1) & 1) != 0 || v10 < 2)
  {
    goto LABEL_14;
  }

  if (![sub_100072F04() _isHeadphoneFWSupportForceDisconnect:?] || self->_currentTipiScore < 3 || objc_msgSend(disconnectCopy, "nearbyBLErssi") < -60 || !objc_msgSend(disconnectCopy, "nearbyForceDisconnectBit"))
  {
LABEL_13:
    v11 = 0;
    goto LABEL_14;
  }

  if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  v11 = 1;
LABEL_14:

  return v11;
}

@end