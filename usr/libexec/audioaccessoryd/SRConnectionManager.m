@interface SRConnectionManager
+ (id)sharedSRConnectionManager;
- (BOOL)_isConnectedTo3rdPartyDevice;
- (BOOL)_isHRMHeadphoneEligibleForTipiV2:(id)a3;
- (BOOL)_isHRMHeadphonePrerequisiteMet:(id)a3 connectType:(int)a4;
- (BOOL)_isHeadphoneBackoffFor2HS:(id)a3;
- (BOOL)_isHeadphoneBackoffFor3rdParty:(id)a3;
- (BOOL)_isHeadphoneBackoffForRingtone:(id)a3;
- (BOOL)_isHeadphoneBackoffForSRDisbledSource:(id)a3;
- (BOOL)_isHeadphoneBackoffForUSBPluggedIn:(id)a3;
- (BOOL)_isHeadphoneConnected:(id)a3;
- (BOOL)_isHeadphoneConnectedToNothing:(id)a3;
- (BOOL)_isHeadphoneConnectedToSomething:(id)a3;
- (BOOL)_isHeadphoneConnecting:(id)a3;
- (BOOL)_isHeadphoneEligibleForDirectConnect:(id)a3 andNearbyDevices:(id)a4;
- (BOOL)_isHeadphoneEligibleForForceDisconnect:(id)a3 andNearbyDevices:(id)a4;
- (BOOL)_isHeadphoneEligibleForLEPipe:(id)a3;
- (BOOL)_isHeadphoneEligibleForTakingConnectionFromWatch:(id)a3;
- (BOOL)_isHeadphoneEligibleForTipiV2:(id)a3 result:(unsigned int *)a4;
- (BOOL)_isHeadphoneFWSupportForceDisconnect:(id)a3;
- (BOOL)_isHeadphoneFWSupportTipiScore:(id)a3;
- (BOOL)_isHeadphoneHasBackoffForDisconnection:(id)a3 withTime:(unsigned int)a4;
- (BOOL)_isHeadphoneHasRightSubType:(id)a3;
- (BOOL)_isHeadphoneInAirplaneMode:(id)a3;
- (BOOL)_isHeadphoneInCase:(id)a3;
- (BOOL)_isHeadphoneInDisconnectionBackoff:(id)a3;
- (BOOL)_isHeadphoneLidClosed:(id)a3;
- (BOOL)_isHeadphoneOnDemandEligible:(id)a3;
- (BOOL)_isHeadphonePaired:(id)a3;
- (BOOL)_isHeadphonePrerequisiteMet:(id)a3;
- (BOOL)_isHeadphonePreviouslyManualDisconnect:(id)a3;
- (BOOL)_isHeadphoneSRCapable:(id)a3;
- (BOOL)_isHeadphoneUSBPluggedInLastConnectedToMe:(id)a3;
- (BOOL)_isOnDemandConnectEligible:(id)a3 result:(id *)a4;
- (BOOL)_isOngoingHFPCallOnOtherHeadphone;
- (BOOL)_isSRConnectEligible:(id)a3;
- (BOOL)_isSourcePrerequisiteMet:(id *)a3;
- (BOOL)_isSourcePrerequisiteMetForOnDemandEvent:(id *)a3;
- (BOOL)_isTooSoonToConnect;
- (BOOL)evaluateNearbyHRMDeviceForConnection:(id)a3;
- (SRConnectionManager)init;
- (id)_findHeadphoneToConnectStart;
- (id)_findHeadphoneToConnectWithResult:(id *)a3;
- (id)_getNearbyConnectedSourceFromWx:(id)a3;
- (id)_getNearbyDeviceFromWxAdvLastHost:(id)a3 andNearbyDevices:(id)a4;
- (id)evaluateNearbyDevicesForConnection;
- (unint64_t)_getHeadphoneDisconnectBackoffSeconds:(id)a3;
- (unsigned)_getNearbyHighActivityLevelSourceCount:(id)a3;
- (void)_OnDemandEventTimerStart;
- (void)_postNotification:(const char *)a3;
- (void)_updateNearbyWxCount;
- (void)audioRouteChanged:(int)a3;
- (void)bluetoothStateChanged:(int64_t)a3;
- (void)callStateChanged:(BOOL)a3;
- (void)localAudioCategoryChanged:(id)a3;
- (void)nowPlayingStateChanged:(BOOL)a3;
- (void)pairedDeviceCountChanged:(unsigned int)a3;
- (void)ringtoneStateChanged:(BOOL)a3;
- (void)screenLockStateChanged:(BOOL)a3;
- (void)smartRoutingCapableStateChanged:(BOOL)a3;
- (void)tipiScoreChanged:(int)a3;
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

- (void)audioRouteChanged:(int)a3
{
  if (self->_currentAudioRoute != a3)
  {
    self->_currentAudioRoute = a3;
  }
}

- (void)bluetoothStateChanged:(int64_t)a3
{
  bluetoothState = self->_bluetoothState;
  if (bluetoothState != a3)
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

        if (a3 <= 0xA)
        {
          v7 = off_1002BA268[a3];
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
    self->_bluetoothState = a3;
  }
}

- (void)pairedDeviceCountChanged:(unsigned int)a3
{
  if (self->_pairedDeviceCount != a3)
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
    self->_pairedDeviceCount = a3;
  }
}

- (BOOL)evaluateNearbyHRMDeviceForConnection:(id)a3
{
  v4 = a3;
  if (![(SRConnectionManager *)self _isBluetoothOn])
  {
    [(BTSmartRoutingDaemon *)self->_srDaemon clearCacheForBluetoothOff];
    goto LABEL_5;
  }

  v5 = [(SRConnectionManager *)self _isHRMHeadphoneEligibleForTipiV2:v4];
  if (![(SRConnectionManager *)self _isSourceSRCapable]|| [(SRConnectionManager *)self _isOngoingPhoneCall])
  {
    [(SRConnectionManager *)self _isHRMHeadphonePrerequisiteMet:v4 connectType:1];
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v8 = [(SRConnectionManager *)self _isTipiConnectInProgress];
  v9 = [(SRConnectionManager *)self _isHRMHeadphonePrerequisiteMet:v4 connectType:1];
  v6 = 0;
  if ((v8 & 1) == 0 && v9)
  {
    if ([(SRConnectionManager *)self _isHeadphoneConnectedToNothing:v4])
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
        v10 = v4;
        v11 = 4;
        goto LABEL_16;
      }

      if ([(SRConnectionManager *)self _isHRMHeadphonePrerequisiteMet:v4 connectType:3])
      {
        [(SRConnectionManager *)self onDemandEventStarted:1 withEvent:3];
        v13 = 0;
        if ([(SRConnectionManager *)self _isOnDemandConnectEligible:v4 result:&v13])
        {
          v10 = v4;
          v11 = 3;
          goto LABEL_16;
        }

        [(SRConnectionManager *)self onDemandEventStarted:0 withEvent:3];
      }

      if ([v4 nearbyTipiScore1] == 15 || objc_msgSend(v4, "nearbyTipiScore2") == 15)
      {
        if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
        {
          sub_1001F3788();
        }

        goto LABEL_5;
      }

      if ([(SRConnectionManager *)self _isHeadphoneEligibleForLEPipe:v4])
      {
        v10 = v4;
        v11 = 6;
        goto LABEL_16;
      }

      if (![(SRConnectionManager *)self _isHeadphoneEligibleForTakingConnectionFromWatch:v4])
      {
        v12 = [(BTSmartRoutingDaemon *)self->_srDaemon nearbyInfoDevices];
        if (![(SRConnectionManager *)self _isHeadphoneEligibleForForceDisconnect:v4 andNearbyDevices:v12])
        {

          goto LABEL_5;
        }

        [v4 setTipiConnectType:2];

LABEL_17:
        v6 = 1;
        goto LABEL_6;
      }
    }

    v10 = v4;
    v11 = 7;
LABEL_16:
    [v10 setTipiConnectType:v11];
    goto LABEL_17;
  }

LABEL_6:

  return v6;
}

- (void)localAudioCategoryChanged:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v10 = v4;
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

        v4 = v10;
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

    v4 = v10;
  }

LABEL_10:
}

- (void)nowPlayingStateChanged:(BOOL)a3
{
  if (self->_NowPlayingPlaybackStarted != a3)
  {
    self->_NowPlayingPlaybackStarted = a3;
  }
}

- (void)callStateChanged:(BOOL)a3
{
  if (self->_callStarted != a3)
  {
    self->_callStarted = a3;
  }
}

- (void)smartRoutingCapableStateChanged:(BOOL)a3
{
  if (self->_isSourceSRCapable != a3)
  {
    self->_isSourceSRCapable = a3;
  }
}

- (void)ringtoneStateChanged:(BOOL)a3
{
  if (self->_ringtoneStarted != a3)
  {
    self->_ringtoneStarted = a3;
  }
}

- (void)tipiScoreChanged:(int)a3
{
  if (self->_currentTipiScore != a3)
  {
    self->_currentTipiScore = a3;
  }
}

- (id)_findHeadphoneToConnectWithResult:(id *)a3
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
  v5 = [(BTSmartRoutingDaemon *)self->_srDaemon srDiscoveredDeviceMap];
  v6 = [(BTSmartRoutingDaemon *)self->_srDaemon nearbyInfoDevices];
  self->_nearbyHighActivityLevelSourceCount = [(SRConnectionManager *)self _getNearbyHighActivityLevelSourceCount:v6];
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
  [v5 enumerateKeysAndObjectsUsingBlock:v9];
  v7 = v13[5];
  _Block_object_dispose(v10, 8);
  _Block_object_dispose(&v12, 8);

  (v4[2])(v4);
  _Block_object_dispose(v19, 8);

  return v7;
}

- (BOOL)_isHRMHeadphonePrerequisiteMet:(id)a3 connectType:(int)a4
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
  v5 = a3;
  v22 = v5;
  v6 = objc_retainBlock(&v18);
  v7 = [v5 aaNearbyDevice];
  v8 = [v7 heartRateMonitorCapability];

  v9 = [v5 aaNearbyDevice];
  v10 = [v9 healthKitDataWriteAllowed];

  v11 = @"HRM not available";
  if (v8 != 2 || v10 != 1)
  {
    goto LABEL_30;
  }

  if (![v5 isNearby])
  {
    v11 = @"not nearby";
LABEL_30:
    v17 = v25[5];
    v25[5] = v11;

    v15 = 0;
    goto LABEL_17;
  }

  v12 = [v5 btAddress];

  if (!v12)
  {
    v11 = @"no btAddress";
    goto LABEL_30;
  }

  v13 = [v5 btAddress];
  v14 = [(SRConnectionManager *)self _isHeadphonePaired:v13];

  if (!v14)
  {
    v11 = @"not paired";
    goto LABEL_30;
  }

  if (![(SRConnectionManager *)self _isHeadphoneSRCapable:v5])
  {
    v11 = @"headphone not supports SR";
    goto LABEL_30;
  }

  if (![(SRConnectionManager *)self _isHeadphoneHasRightSubType:v5])
  {
    v11 = @"not right subtype";
    goto LABEL_30;
  }

  if ([(SRConnectionManager *)self _isHeadphoneInAirplaneMode:v5])
  {
    v11 = @"in airplane mode";
    goto LABEL_30;
  }

  if ([(SRConnectionManager *)self _isHeadphoneInCase:v5]&& [(SRConnectionManager *)self _isHeadphoneLidClosed:v5])
  {
    v11 = @"headphone in case nad lid closed";
    goto LABEL_30;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffForSRDisbledSource:v5])
  {
    v11 = @"connected source has SR disabled";
    goto LABEL_30;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffFor3rdParty:v5])
  {
    v11 = @"backoff for 3rd party";
    goto LABEL_30;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffForUSBPluggedIn:v5])
  {
    v11 = @"USB plugged in but last connected to another source";
    goto LABEL_30;
  }

  if ([(SRConnectionManager *)self _isHeadphoneConnecting:v5])
  {
    v11 = @"connecting headphone";
    goto LABEL_30;
  }

  if ([(SRConnectionManager *)self _isHeadphoneConnected:v5])
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

- (BOOL)_isHeadphonePrerequisiteMet:(id)a3
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
  v4 = a3;
  v17 = v4;
  v18 = self;
  v5 = objc_retainBlock(v16);
  if (([v4 isNearby] & 1) == 0)
  {
    v10 = @"not nearby";
    goto LABEL_40;
  }

  v6 = [v4 btAddress];

  if (!v6)
  {
    v10 = @"no btAddress";
    goto LABEL_40;
  }

  v7 = [v4 btAddress];
  v8 = [(SRConnectionManager *)self _isHeadphonePaired:v7];

  if (!v8)
  {
    v10 = @"not paired";
    goto LABEL_40;
  }

  onDemandEvent = self->_onDemandEvent;
  if (onDemandEvent)
  {
    if (onDemandEvent == 1 && ![(SRConnectionManager *)self _isHeadphoneHasBackoffForDisconnection:v4 withTime:10])
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
    v11 = [v4 btAddress];
    v12 = [(SRConnectionManager *)self _isHeadphoneInDisconnectionBackoff:v11];

    if (v12)
    {
      v10 = @"too soon since last disconnection";
      goto LABEL_40;
    }
  }

  if (![(SRConnectionManager *)self _isHeadphoneSRCapable:v4])
  {
    v10 = @"headphone not supports SR";
    goto LABEL_40;
  }

  if (![(SRConnectionManager *)self _isHeadphoneHasRightSubType:v4])
  {
    v10 = @"not right subtype";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneInAirplaneMode:v4])
  {
    v10 = @"in airplane mode";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneInCase:v4]&& [(SRConnectionManager *)self _isHeadphoneLidClosed:v4])
  {
    v10 = @"headphone in case nad lid closed";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphonePreviouslyManualDisconnect:v4])
  {
    v10 = @"manually disconnect previously";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneConnecting:v4])
  {
    v10 = @"connecting headphone";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneConnected:v4])
  {
    v10 = @"already connected";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffFor2HS:v4])
  {
    v10 = @"backoff for 2HS";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffForRingtone:v4])
  {
    v10 = @"backoff for ringtone";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffFor3rdParty:v4])
  {
    v10 = @"backoff for 3rd party";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffForUSBPluggedIn:v4])
  {
    v10 = @"USB plugged in but last connected to another source";
    goto LABEL_40;
  }

  if ([(SRConnectionManager *)self _isHeadphoneBackoffForSRDisbledSource:v4])
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
  v3 = [(BTSmartRoutingDaemon *)self->_srDaemon srDiscoveredDeviceMap];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10009FAC0;
  v4[3] = &unk_1002B8368;
  v4[4] = self;
  [v3 enumerateKeysAndObjectsUsingBlock:v4];
}

- (unsigned)_getNearbyHighActivityLevelSourceCount:(id)a3
{
  v4 = a3;
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
  [v4 enumerateKeysAndObjectsUsingBlock:v6];
  LODWORD(self) = *(v8 + 6);
  _Block_object_dispose(&v7, 8);

  return self;
}

- (void)screenLockStateChanged:(BOOL)a3
{
  if (self->_screenLocked != a3)
  {
    if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3974();
    }

    self->_screenLocked = a3;
  }
}

- (unint64_t)_getHeadphoneDisconnectBackoffSeconds:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BTSmartRoutingDaemon *)self->_srDaemon srDiscoveredDeviceMap];
    v6 = [v5 objectForKeyedSubscript:v4];
    v7 = [v6 disconnectionBackoffTick];

    if (v7)
    {
      mach_absolute_time();
      v8 = [v5 objectForKeyedSubscript:v4];
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

- (id)_getNearbyConnectedSourceFromWx:(id)a3
{
  v4 = a3;
  v5 = [(BTSmartRoutingDaemon *)self->_srDaemon nearbyInfoDevices];
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
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];
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
  v2 = [(BTSmartRoutingDaemon *)self->_srDaemon srDiscoveredDeviceMap];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000A0230;
  v5[3] = &unk_1002B8780;
  v5[4] = &v6;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
  v3 = *(v7 + 24);

  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)_isOnDemandConnectEligible:(id)a3 result:(id *)a4
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
  v5 = a3;
  v19 = v5;
  v6 = objc_retainBlock(&v15);
  if ([v5 nearbyInEar] != 1)
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
    v8 = [v5 nearbyAudioState] != 0;
    onDemandEvent = self->_onDemandEvent;
  }

  else
  {
    v8 = 1;
  }

  if (onDemandEvent == 1)
  {
    if (![v5 nearbyAudioState])
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
  v9 = [(SRConnectionManager *)self _getNearbyConnectedSourceFromWx:v5];
  if ([v9 audioRoutingScore])
  {
    v10 = 1;
  }

  else
  {
    v11 = [v9 model];
    v10 = [v11 hasPrefix:@"Watch"];
  }

LABEL_13:

  (v6[2])(v6);
  _Block_object_dispose(&v21, 8);

  return v10;
}

- (BOOL)_isSRConnectEligible:(id)a3
{
  v4 = a3;
  if (!-[SRConnectionManager _isHeadphoneConnectedToNothing:](self, "_isHeadphoneConnectedToNothing:", v4) && [v4 prevFailedTipiConnectType] != 6)
  {
    if (self->_onDemandEvent)
    {
      v12 = 0;
      if ([(SRConnectionManager *)self _isOnDemandConnectEligible:v4 result:&v12])
      {
        v5 = v4;
        v6 = 3;
        goto LABEL_4;
      }
    }

    v11 = 0;
    if ([(SRConnectionManager *)self _isHeadphoneEligibleForTipiV2:v4 result:&v11])
    {
      v5 = v4;
      v6 = 4;
      goto LABEL_4;
    }

    if ([(SRConnectionManager *)self _shouldTryLEPipe:v11])
    {
      if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F3AE0(&v11);
      }

      if ([(SRConnectionManager *)self _isHeadphoneEligibleForLEPipe:v4])
      {
        v5 = v4;
        v6 = 6;
        goto LABEL_4;
      }
    }

    if (![(SRConnectionManager *)self _isHeadphoneEligibleForTakingConnectionFromWatch:v4])
    {
      v9 = [(BTSmartRoutingDaemon *)self->_srDaemon nearbyInfoDevices];
      if ([(SRConnectionManager *)self _isHeadphoneEligibleForDirectConnect:v4 andNearbyDevices:v9])
      {
        v10 = 10;
      }

      else
      {
        if (![(SRConnectionManager *)self _isHeadphoneEligibleForForceDisconnect:v4 andNearbyDevices:v9])
        {
          v7 = 0;
          goto LABEL_24;
        }

        v10 = 2;
      }

      [v4 setTipiConnectType:v10];
      v7 = 1;
LABEL_24:

      goto LABEL_5;
    }
  }

  v5 = v4;
  v6 = 7;
LABEL_4:
  [v5 setTipiConnectType:v6];
  v7 = 1;
LABEL_5:

  return v7;
}

- (BOOL)_isHeadphoneConnected:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 connectionState] == 2;
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

- (BOOL)_isHeadphoneBackoffFor3rdParty:(id)a3
{
  v4 = a3;
  if (!v4)
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

  v5 = [v4 nearbyInEar] != 1;
LABEL_8:

  return v5;
}

- (BOOL)_isHeadphoneBackoffForSRDisbledSource:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3B74();
    }

    goto LABEL_11;
  }

  if (-[SRConnectionManager _isHeadphoneUSBPluggedInLastConnectedToMe:](self, "_isHeadphoneUSBPluggedInLastConnectedToMe:", v4) || ([v4 nearbyTipiScore1] != 8 || !objc_msgSend(v4, "nearbyConnectedSourceCount")) && (objc_msgSend(v4, "nearbyTipiScore2") != 8 || objc_msgSend(v4, "nearbyConnectedSourceCount") <= 1))
  {
LABEL_11:
    v5 = 0;
    goto LABEL_12;
  }

  v5 = 1;
LABEL_12:

  return v5;
}

- (BOOL)_isHeadphoneBackoffFor2HS:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v5 = [(BTSmartRoutingDaemon *)self->_srDaemon _isAnyConnectedWxInEarCheck];
    v6 = [(BTSmartRoutingDaemon *)self->_srDaemon srDiscoveredDeviceMap];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1000A0BB4;
    v14[3] = &unk_1002B8780;
    v14[4] = &v15;
    [v6 enumerateKeysAndObjectsUsingBlock:v14];
    if (v16[6] < 1)
    {
      goto LABEL_16;
    }

    v7 = [v4 btAddress];
    v8 = [(BTSmartRoutingDaemon *)self->_srDaemon budSwapAddress];
    v9 = [v7 isEqualToString:v8];

    if ([v4 nearbyInEar] == 1 || -[BTSmartRoutingDaemon _bluetoothProductIDNoEarDetect:](self->_srDaemon, "_bluetoothProductIDNoEarDetect:", objc_msgSend(v4, "nearbyProductID")))
    {
      v10 = v5;
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

    if ((v9 & 1) == 0 && ((v10 & 1) != 0 || [v4 nearbyAudioState]))
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

- (BOOL)_isHeadphoneBackoffForRingtone:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3BAC();
    }

    goto LABEL_9;
  }

  if (!self->_ringtoneStarted || [v4 nearbyConnectedSourceCount] < 2 || -[SRConnectionManager _isOngoingPhoneCall](self, "_isOngoingPhoneCall"))
  {
LABEL_9:
    v6 = 0;
    goto LABEL_10;
  }

  v6 = 1;
LABEL_10:

  return v6;
}

- (BOOL)_isHeadphoneBackoffForUSBPluggedIn:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3BC8();
    }

    goto LABEL_7;
  }

  if (![v4 isUSBPlugIn])
  {
LABEL_7:
    LOBYTE(v6) = 0;
    goto LABEL_8;
  }

  v6 = ![(SRConnectionManager *)self _isHeadphoneUSBPluggedInLastConnectedToMe:v5];
LABEL_8:

  return v6;
}

- (BOOL)_isHeadphoneUSBPluggedInLastConnectedToMe:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3BE4();
    }

    goto LABEL_9;
  }

  if (![v3 isUSBPlugIn] || objc_msgSend(v4, "nearbyConnectedSourceCount") != 1 || objc_msgSend(v4, "nearbyTipiScore1") != 8)
  {
LABEL_9:
    v5 = 0;
    goto LABEL_10;
  }

  v5 = [v4 nearbyIsMeLastRoute];
LABEL_10:

  return v5;
}

- (BOOL)_isHeadphoneConnectedToNothing:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    if ([v4 nearbyConnectedSourceCount])
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

- (BOOL)_isHeadphoneConnectedToSomething:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3C1C();
    }

    goto LABEL_7;
  }

  if (![v4 nearbyConnectedSourceCount])
  {
LABEL_7:
    LOBYTE(v6) = 0;
    goto LABEL_8;
  }

  v6 = ![(SRConnectionManager *)self _isHeadphoneUSBPluggedInLastConnectedToMe:v5];
LABEL_8:

  return v6;
}

- (BOOL)_isHeadphoneConnecting:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 connectionState] == 1;
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

- (id)_getNearbyDeviceFromWxAdvLastHost:(id)a3 andNearbyDevices:(id)a4
{
  v6 = a3;
  v7 = a4;
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
  v8 = v6;
  v12 = v8;
  v13 = &v14;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];
  v9 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v9;
}

- (BOOL)_isHRMHeadphoneEligibleForTipiV2:(id)a3
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
  v4 = a3;
  v28 = v4;
  v5 = objc_retainBlock(&v24);
  if ([v4 isFirstConnectionAfterSREnable])
  {
    LOBYTE(v6) = 0;
    v22 = v31;
    v15 = v31[5];
    v23 = @"First connection attemp after SR enabled";
LABEL_33:
    v22[5] = v23;
    goto LABEL_27;
  }

  v6 = [v4 fwVersion];

  if (!v6)
  {
    v22 = v31;
    v15 = v31[5];
    v23 = @"missing fw version";
    goto LABEL_33;
  }

  v7 = [v4 fwVersion];
  v8 = [@"5A187" compare:v7 options:64];

  if (v8 != -1)
  {
    LOBYTE(v6) = 0;
    v22 = v31;
    v15 = v31[5];
    v23 = @"not eligible fw version";
    goto LABEL_33;
  }

  if ([v4 nearbyTipiScore2] == 15)
  {
    LOBYTE(v6) = 0;
    v22 = v31;
    v15 = v31[5];
    v23 = @"2nd source connecting";
    goto LABEL_33;
  }

  srDaemon = self->_srDaemon;
  v10 = [v4 nearbyLastRouteHost];
  LOBYTE(srDaemon) = [(BTSmartRoutingDaemon *)srDaemon _isDevicePairedCheck:v10];

  if ((srDaemon & 1) == 0)
  {
    LOBYTE(v6) = 0;
    v22 = v31;
    v15 = v31[5];
    v23 = @"connected source not signed in with same iCloud";
    goto LABEL_33;
  }

  if ([v4 nearbyTipiScore1])
  {
    v11 = [v4 nearbyTipiScore1] < 8;
  }

  else
  {
    v11 = 0;
  }

  if (GestaltGetDeviceClass() == 1)
  {
    v12 = self->_srDaemon;
    v13 = [v4 nearbyLastRouteHost];
    v14 = [(BTSmartRoutingDaemon *)v12 _isMagnetConnectedDeviceforConnectionCheck:v13];
  }

  else
  {
    v14 = 0;
  }

  v15 = [(SRConnectionManager *)self _getNearbyConnectedSourceFromWx:v4];
  v16 = [v15 model];
  if (v16)
  {
    v17 = [v15 model];
    v18 = [v17 hasPrefix:@"Watch"];

    if (v18)
    {
      v11 &= v14;
    }
  }

  if ([v4 nearbyConnectedSourceCount] == 1)
  {
    v19 = [v4 nearbyTipiScore1] == 12 && objc_msgSend(v4, "nearbyOutOfCaseTime") <= 2 && objc_msgSend(v4, "nearbyAudioState") == 0;
    LOBYTE(v6) = v11 | v19;
  }

  else if ([v4 nearbyConnectedSourceCount] == 2)
  {
    if ([v4 nearbyTipiScore2])
    {
      v20 = [v4 nearbyTipiScore2] < 8;
    }

    else
    {
      v20 = 0;
    }

    LOBYTE(v6) = v11 & (v20 | ([v4 nearbyTipiScore2] == 9));
  }

  else
  {
    LOBYTE(v6) = 0;
  }

LABEL_27:

  (v5[2])(v5);
  _Block_object_dispose(&v30, 8);

  return v6 & 1;
}

- (BOOL)_isHeadphoneEligibleForTipiV2:(id)a3 result:(unsigned int *)a4
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
  v6 = a3;
  v30 = v6;
  v32 = a4;
  v7 = objc_retainBlock(v29);
  if ([v6 isFirstConnectionAfterSREnable])
  {
    LOBYTE(v8) = 0;
    v25 = v34;
    v26 = 1;
LABEL_39:
    *(v25 + 6) = v26;
    goto LABEL_32;
  }

  v8 = [v6 fwVersion];

  if (!v8)
  {
    v25 = v34;
    v26 = 2;
    goto LABEL_39;
  }

  v9 = [v6 fwVersion];
  v10 = [@"5A187" compare:v9 options:64];

  if (v10 != -1)
  {
    LOBYTE(v8) = 0;
    v25 = v34;
    v26 = 3;
    goto LABEL_39;
  }

  if ([v6 nearbyTipiScore2] == 15)
  {
    LOBYTE(v8) = 0;
    v25 = v34;
    v26 = 4;
    goto LABEL_39;
  }

  currentTipiScore = self->_currentTipiScore;
  if (currentTipiScore <= [v6 nearbyTipiScore2] && objc_msgSend(v6, "nearbyTipiScore2") <= 7)
  {
    LOBYTE(v8) = 0;
    v25 = v34;
    v26 = 5;
    goto LABEL_39;
  }

  srDaemon = self->_srDaemon;
  v13 = [v6 nearbyLastRouteHost];
  LOBYTE(srDaemon) = [(BTSmartRoutingDaemon *)srDaemon _isDevicePairedCheck:v13];

  if ((srDaemon & 1) == 0)
  {
    LOBYTE(v8) = 0;
    v25 = v34;
    v26 = 6;
    goto LABEL_39;
  }

  if (GestaltGetDeviceClass() == 1)
  {
    v14 = self->_srDaemon;
    v15 = [v6 nearbyLastRouteHost];
    v16 = [(BTSmartRoutingDaemon *)v14 _isMagnetConnectedDeviceforConnectionCheck:v15];
  }

  else
  {
    v16 = 0;
  }

  if ([v6 nearbyTipiScore1])
  {
    v17 = [v6 nearbyTipiScore1] < 8;
  }

  else
  {
    v17 = 0;
  }

  v18 = [(SRConnectionManager *)self _getNearbyConnectedSourceFromWx:v6];
  v19 = [v18 model];
  if (v19)
  {
    v20 = [v18 model];
    v21 = [v20 hasPrefix:@"Watch"];

    if (v21)
    {
      v17 &= v16;
    }
  }

  if ([v6 nearbyConnectedSourceCount] == 1)
  {
    if ([v6 nearbyTipiScore1])
    {
      v22 = [v6 nearbyTipiScore1] == 12 && objc_msgSend(v6, "nearbyOutOfCaseTime") <= 2 && objc_msgSend(v6, "nearbyAudioState") == 0;
      LOBYTE(v8) = v17 | v22;
      goto LABEL_31;
    }

    LOBYTE(v8) = 0;
    v27 = v34;
    v28 = 7;
LABEL_42:
    *(v27 + 6) = v28;
    goto LABEL_31;
  }

  if ([v6 nearbyConnectedSourceCount] == 2)
  {
    if ([v6 nearbyTipiScore2])
    {
      if ([v6 nearbyTipiScore2])
      {
        v23 = [v6 nearbyTipiScore2] < 8;
      }

      else
      {
        v23 = 0;
      }

      LOBYTE(v8) = v17 & (v23 | ([v6 nearbyTipiScore2] == 9));
      goto LABEL_31;
    }

    LOBYTE(v8) = 0;
    v27 = v34;
    v28 = 8;
    goto LABEL_42;
  }

  LOBYTE(v8) = 0;
LABEL_31:

LABEL_32:
  (v7[2])(v7);

  _Block_object_dispose(&v33, 8);
  return v8 & 1;
}

- (BOOL)_isHeadphoneFWSupportForceDisconnect:(id)a3
{
  v3 = [a3 fwVersion];
  v4 = [@"4A345" compare:v3 options:64] == -1;

  return v4;
}

- (BOOL)_isHeadphoneFWSupportTipiScore:(id)a3
{
  v3 = [a3 fwVersion];
  v4 = [@"5A274" compare:v3 options:64] == -1;

  return v4;
}

- (BOOL)_isHeadphoneEligibleForTakingConnectionFromWatch:(id)a3
{
  v4 = a3;
  v5 = [(BTSmartRoutingDaemon *)self->_srDaemon nearbyInfoDevices];
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1001F34A8;
  v9[3] = &unk_1002B89A0;
  v9[4] = self;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];
  if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    *(v13 + 24);
    LogPrintF();
  }

  v7 = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return v7;
}

- (BOOL)_isHeadphoneEligibleForLEPipe:(id)a3
{
  v4 = a3;
  v5 = [(SRConnectionManager *)self _getNearbyConnectedSourceFromWx:v4];
  v6 = [v5 audioRoutingScore];
  v7 = [v4 nearbyTipiScore1] == 8 || objc_msgSend(v4, "nearbyConnectedSourceCount") == 2 && objc_msgSend(v4, "nearbyTipiScore2") == 8;
  v8 = [v5 model];
  v9 = [v8 hasPrefix:@"Watch"];

  if (v5)
  {
    v10 = v6 == 0;
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
    [v4 setNearbyLEPipeSourceDevice:v5];
  }

  return (v12 & 1) == 0;
}

- (BOOL)_isHeadphoneHasRightSubType:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 nearbySubtype] == 1;
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

- (BOOL)_isHeadphoneInAirplaneMode:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 nearbyAirplaneMode];
  }

  else
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3D74();
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)_isHeadphoneInCase:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 nearbyInCase] != 0;
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

- (BOOL)_isHeadphoneHasBackoffForDisconnection:(id)a3 withTime:(unsigned int)a4
{
  v5 = a3;
  mach_absolute_time();
  [v5 disconnectionBackoffTick];

  v6 = UpTicksToSeconds();
  if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }

  return v6 >= a4;
}

- (BOOL)_isHeadphoneInDisconnectionBackoff:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BTSmartRoutingDaemon *)self->_srDaemon srDiscoveredDeviceMap];
    mach_absolute_time();
    v6 = [v5 objectForKeyedSubscript:v4];
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

- (BOOL)_isHeadphoneLidClosed:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 nearbyLidClosed];
    v6 = v5 != 0;
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

- (BOOL)_isHeadphoneOnDemandEligible:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(NSNumber *)self->_currentLocalAudioCategory intValue];
    v6 = (self->_NowPlayingPlaybackStarted || -[NSNumber intValue](self->_currentLocalAudioCategory, "intValue") >= 301) && [v4 nearbyAudioState] == 0;
    callStarted = self->_callStarted;
    v9 = [v4 nearbyInEar] == 1 && (callStarted || v6);
    v7 = v5 != 401 && v9;
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

- (BOOL)_isHeadphonePaired:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(BTSmartRoutingDaemon *)self->_srDaemon srDiscoveredDeviceMap];
    v6 = [v5 objectForKeyedSubscript:v4];
    v7 = [v6 nearbyPaired];
  }

  else
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3E00();
    }

    v7 = 0;
  }

  return v7;
}

- (BOOL)_isHeadphonePreviouslyManualDisconnect:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isManualDisconnectLastTime];
  }

  else
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3E1C();
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)_isHeadphoneSRCapable:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isSRCapable];
  }

  else
  {
    if (dword_1002F6E08 <= 90 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
    {
      sub_1001F3E38();
    }

    v5 = 0;
  }

  return v5;
}

- (BOOL)_isSourcePrerequisiteMetForOnDemandEvent:(id *)a3
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
  v10[5] = a3;
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

- (BOOL)_isSourcePrerequisiteMet:(id *)a3
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
  v10[5] = a3;
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
  v3 = [(SRConnectConfig *)self->_currentConnectConfig connectTick];
  if (v3)
  {
    mach_absolute_time();
    [(SRConnectConfig *)self->_currentConnectConfig connectTick];
    if (UpTicksToSeconds() > 0x1DF)
    {
      LOBYTE(v3) = 0;
    }

    else
    {
      if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
      {
        sub_1001F3EA0();
      }

      LOBYTE(v3) = 1;
    }
  }

  return v3;
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

- (void)_postNotification:(const char *)a3
{
  if (dword_1002F6E08 <= 30 && (dword_1002F6E08 != -1 || _LogCategory_Initialize()))
  {
    sub_1001F3F7C();
  }

  notify_post(a3);
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

- (BOOL)_isHeadphoneEligibleForDirectConnect:(id)a3 andNearbyDevices:(id)a4
{
  v5 = a3;
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
  v8 = [v5 nearbyLastRouteHost];
  LOBYTE(srDaemon) = [(BTSmartRoutingDaemon *)srDaemon _isDevicePairedCheck:v8];

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

  if (![sub_100072F04() _isHeadphoneFWSupportTipiScore:?] || !objc_msgSend(v5, "nearbyTipiScore1") || objc_msgSend(v5, "nearbyInEar") != 1)
  {
    goto LABEL_33;
  }

  if ([v5 nearbyConnectedSourceCount] != 1 || objc_msgSend(v5, "nearbyTipiScore1") > 3)
  {
    if ([v5 nearbyConnectedSourceCount] == 2)
    {
      if ([v5 nearbyTipiScore2])
      {
        if ([v5 nearbyTipiScore1] <= 3)
        {
          currentTipiScore = self->_currentTipiScore;
          if (currentTipiScore > [v5 nearbyTipiScore2])
          {
            if (dword_1002F6E08 > 30 || dword_1002F6E08 == -1 && !_LogCategory_Initialize())
            {
              goto LABEL_23;
            }

            sub_10009E97C(self->_currentTipiScore);
            sub_10009E97C([v5 nearbyTipiScore2]);
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

  sub_10009E97C([v5 nearbyTipiScore1]);
LABEL_19:
  LogPrintF();
LABEL_23:
  v10 = 1;
LABEL_34:

  return v10;
}

- (BOOL)_isHeadphoneEligibleForForceDisconnect:(id)a3 andNearbyDevices:(id)a4
{
  v5 = a3;
  v6 = [sub_100072F04() _getNearbyDeviceFromWxAdvLastHost:? andNearbyDevices:?];

  if (v6)
  {
    goto LABEL_13;
  }

  srDaemon = self->_srDaemon;
  v8 = [v5 nearbyLastRouteHost];
  v9 = [(BTSmartRoutingDaemon *)srDaemon _isDevicePairedCheck:v8];

  mach_absolute_time();
  [(BTSmartRoutingDaemon *)self->_srDaemon prefSmartRoutingForcedDisconnectionTicks];
  v10 = UpTicksToSeconds();
  if (![v5 nearbyTipiScore1])
  {
    goto LABEL_13;
  }

  v11 = 0;
  if ([v5 nearbyInEar] != 1 || ((v9 ^ 1) & 1) != 0 || v10 < 2)
  {
    goto LABEL_14;
  }

  if (![sub_100072F04() _isHeadphoneFWSupportForceDisconnect:?] || self->_currentTipiScore < 3 || objc_msgSend(v5, "nearbyBLErssi") < -60 || !objc_msgSend(v5, "nearbyForceDisconnectBit"))
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