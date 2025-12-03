@interface AAConversationDetectSessionManager
+ ($4C8C32D6F3DD873D8F91D6C082C6C785)defaultAudioTunings;
+ (id)sharedCDSessionManager;
- (AAConversationDetectSessionManager)init;
- (BOOL)_getCDTunings:(id *)tunings FromData:(id)data;
- (BOOL)getCdSignalAudioInterrupted;
- (id)descriptionWithLevel:(int)level;
- (id)getCurrentCDDeviceIdentifier;
- (void)_aaControllerEnsureStarted;
- (void)_aaControllerEnsureStopped;
- (void)_activateCDSession;
- (void)_asyncAudioSessionDuckWithLevel:(id)level completion:(id)completion;
- (void)_audioSessionEnsureStarted;
- (void)_audioSessionEnsureStopped;
- (void)_audioSessionReset;
- (void)_cdMsgNotificationReceivedHandler:(id)handler;
- (void)_cdSessionEnsureActivated:(BOOL)activated;
- (void)_cdSessionEnsureDeactivated:(unsigned __int8)deactivated;
- (void)_cdSessionSignalUpdate;
- (void)_conversationDetectMessageReceived:(id)received fromDeviceIdentifier:(id)identifier;
- (void)_deregisterFromAVAudioSessionSpeechDetectionStyleChanges;
- (void)_deregisterFromAudioSessionResetNotifications;
- (void)_deregisterFromWirelessSplitterStateChanges;
- (void)_deviceFound:(id)found;
- (void)_deviceLost:(id)lost;
- (void)_getSignalTypeFromData:(id)data signal:(int *)signal;
- (void)_invalidate;
- (void)_invalidateCDSession;
- (void)_prefsChanged;
- (void)_registerForAVAudioSessionSpeechDetectionStyleChanges;
- (void)_registerForAudioSessionResetNotifications;
- (void)_registerForWirelessSplitterStateChanges;
- (void)_requestSiriAnnounce;
- (void)_sendConversationDetectMessage:(id)message destinationIdentifier:(id)identifier completion:(id)completion;
- (void)_setCDSignalAudioTunings:(id *)tunings;
- (void)_setPedestrianFenceWithHandler:(id)handler;
- (void)_speechDetectionStyleChanged:(unint64_t)changed;
- (void)_speechDetectionUserVolumeChanged:(unint64_t)changed;
- (void)_startHeadGestureManager;
- (void)_startPedestrianFenceSession;
- (void)_startQueuedRampForDuration:(id)duration startLevel:(id)level endLevel:(id)endLevel;
- (void)_stopHeadGestureManager;
- (void)_stopPedestrianFenceSession;
- (void)_updateAccessoriesWithMotionState:(unsigned int)state;
- (void)_updateAccessoriesWithPauseState;
- (void)_updateConversationDetectSignal:(int)signal;
- (void)_updatePauseState;
- (void)activate;
- (void)activateCDSession;
- (void)didDetectedWithHeadGesture:(id)gesture;
- (void)didStartStreamingWithIsStreaming:(BOOL)streaming;
- (void)invalidate;
- (void)invalidateCDSession;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setCDTunings:(id *)tunings;
- (void)setCdSignalAudioInterrupted:(BOOL)interrupted;
- (void)setConversationDetectSignal:(int)signal;
- (void)setCurrentCDDeviceIdentifier:(id)identifier;
@end

@implementation AAConversationDetectSessionManager

+ ($4C8C32D6F3DD873D8F91D6C082C6C785)defaultAudioTunings
{
  *&retstr->var0.var0 = xmmword_100225D70;
  *&retstr->var2.var0 = xmmword_100225D80;
  *&retstr->var4.var0 = xmmword_100225D90;
  *&retstr->var6.var0 = vdupq_n_s64(0x3E99999A3F800000uLL);
  return result;
}

+ (id)sharedCDSessionManager
{
  if (qword_1002FA058 != -1)
  {
    sub_1001D3AA4();
  }

  v3 = qword_1002FA050;

  return v3;
}

- (AAConversationDetectSessionManager)init
{
  v20.receiver = self;
  v20.super_class = AAConversationDetectSessionManager;
  v2 = [(AAConversationDetectSessionManager *)&v20 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("AACDSessionManager", v3);
    v5 = *(v2 + 18);
    *(v2 + 18) = v4;

    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create("AACDChunkedRampQueue", v6);
    v8 = *(v2 + 19);
    *(v2 + 19) = v7;

    v9 = objc_alloc_init(NSMutableDictionary);
    v10 = *(v2 + 11);
    *(v2 + 11) = v9;

    *(v2 + 57) = -1;
    +[AAConversationDetectSessionManager defaultAudioTunings];
    v12 = v18;
    v11 = v19;
    v13 = v17;
    *(v2 + 24) = v16;
    *(v2 + 40) = v13;
    *(v2 + 56) = v12;
    *(v2 + 72) = v11;
    *(v2 + 48) = -1;
    v14 = v2;
  }

  return v2;
}

- (void)activate
{
  if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D3AB8();
  }

  if (self->_prefsChangedNotifyToken == -1)
  {
    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_100014E60;
    handler[3] = &unk_1002B6DF0;
    handler[4] = self;
    notify_register_dispatch("com.apple.AudioAccessory.prefsChanged", &self->_prefsChangedNotifyToken, dispatchQueue, handler);
  }

  [(AAConversationDetectSessionManager *)self _prefsChanged];
  v4 = self->_connectedDeviceDiscovery;
  if (!v4)
  {
    v5 = objc_alloc_init(CBDiscovery);
    [v5 setDispatchQueue:self->_dispatchQueue];
    objc_storeStrong(&self->_connectedDeviceDiscovery, v5);
    v25[0] = _NSConcreteStackBlock;
    v25[1] = 3221225472;
    v25[2] = sub_100014EC8;
    v25[3] = &unk_1002B6DA8;
    v6 = v5;
    v26 = v6;
    selfCopy = self;
    [v6 setDeviceFoundHandler:v25];
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_100014EE4;
    v22[3] = &unk_1002B6DA8;
    v7 = v6;
    v23 = v7;
    selfCopy2 = self;
    [v7 setDeviceLostHandler:v22];
    v19[0] = _NSConcreteStackBlock;
    v19[1] = 3221225472;
    v19[2] = sub_100014F00;
    v19[3] = &unk_1002B6D18;
    v8 = v7;
    v20 = v8;
    selfCopy3 = self;
    [v8 setInterruptionHandler:v19];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100014F94;
    v17[3] = &unk_1002B6880;
    v9 = v8;
    v18 = v9;
    [v9 setInvalidationHandler:v17];
    [v9 setDiscoveryFlags:{objc_msgSend(v9, "discoveryFlags") | 0x80000200000}];
    v11 = _NSConcreteStackBlock;
    v12 = 3221225472;
    v13 = sub_100014FF0;
    v14 = &unk_1002B68A8;
    v4 = v9;
    v15 = v4;
    selfCopy4 = self;
    [(CBDiscovery *)v4 activateWithCompletion:&v11];
  }

  [(AAConversationDetectSessionManager *)self _aaControllerEnsureStarted:v11];
  if (!self->_cdMsgReceivedObserving && IsAppleInternalBuild())
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D3AD4();
    }

    v10 = +[NSDistributedNotificationCenter defaultCenter];
    [v10 addObserver:self selector:"_cdMsgNotificationReceivedHandler:" name:@"com.apple.AudioAccessory.cdMsgNotification" object:0];
    self->_cdMsgReceivedObserving = 1;
  }

  [(AAConversationDetectSessionManager *)self _registerForWirelessSplitterStateChanges];
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
    [(AAController *)v5 setInvalidationHandler:&stru_1002B6E10];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_1000152F0;
    v10[3] = &unk_1002B6E38;
    v6 = v5;
    v11 = v6;
    selfCopy = self;
    [(AAController *)v6 setConversationDetectMessageHandler:v10];
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D3B68();
    }

    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_10001530C;
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

- (void)activateCDSession
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000154B4;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_activateCDSession
{
  if (!self->_activateCDSessionCalled)
  {
    v7 = v2;
    self->_activateCDSessionCalled = 1;
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D3C20();
    }

    [(AAConversationDetectSessionManager *)self _registerForAudioSessionResetNotifications:v3];

    [(AAConversationDetectSessionManager *)self _registerForAVAudioSessionSpeechDetectionStyleChanges];
  }
}

- (void)_conversationDetectMessageReceived:(id)received fromDeviceIdentifier:(id)identifier
{
  receivedCopy = received;
  identifierCopy = identifier;
  if (identifierCopy)
  {
    v8 = [(NSMutableDictionary *)self->_cdSupportedAccessories objectForKeyedSubscript:identifierCopy];

    if (v8)
    {
      v24 = 0;
      v22 = 0u;
      memset(v23, 0, sizeof(v23));
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v15 = 0u;
      v9 = [(NSMutableDictionary *)self->_cdSupportedAccessories objectForKeyedSubscript:identifierCopy];
      btAddressData = [v9 btAddressData];
      v11 = CUPrintNSDataAddress();
      [(AAConversationDetectSessionManager *)self setCurrentCDDeviceIdentifier:v11];

      if (!receivedCopy)
      {
        LOBYTE(v12) = 0;
LABEL_19:
        if (dword_1002F61A0 <= 90 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D3CD8(v12);
        }

        goto LABEL_28;
      }

      v12 = *[receivedCopy bytes];
      if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D3C3C(v12);
      }

      if (v12 != 2)
      {
        if (v12 == 1)
        {
          [(AAConversationDetectSessionManager *)self _getSignalTypeFromData:receivedCopy signal:&v24];
          [(AAConversationDetectSessionManager *)self _updateConversationDetectSignal:v24];
          goto LABEL_28;
        }

        goto LABEL_19;
      }

      if ([(AAConversationDetectSessionManager *)self _getCDTunings:&v15 FromData:receivedCopy])
      {
        if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D3CA4();
        }

        v13[6] = v21;
        v13[7] = v22;
        v14[0] = *v23;
        *(v14 + 15) = *&v23[15];
        v13[2] = v17;
        v13[3] = v18;
        v13[4] = v19;
        v13[5] = v20;
        v13[0] = v15;
        v13[1] = v16;
        [(AAConversationDetectSessionManager *)self setCDTunings:v13];
      }
    }

    else if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D3D40();
    }
  }

  else if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D3D80();
  }

LABEL_28:
}

- (void)_cdMsgNotificationReceivedHandler:(id)handler
{
  handlerCopy = handler;
  if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D3D9C();
  }

  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000158A8;
  v7[3] = &unk_1002B6D18;
  v8 = handlerCopy;
  selfCopy = self;
  v6 = handlerCopy;
  dispatch_async(dispatchQueue, v7);
}

- (id)descriptionWithLevel:(int)level
{
  cdSignal = self->_cdSignal;
  if (cdSignal <= 0xB)
  {
    v4 = (&off_1002B7018)[cdSignal];
  }

  self->_audioSessionActivated;
  unduckLevel = self->_unduckLevel;
  rampDuration = self->_rampDuration;
  duckLevel = self->_duckLevel;
  NSAppendPrintF_safe();
  v10 = 0;
  NSAppendPrintF();
  v5 = v10;

  return v10;
}

- (void)invalidateCDSession
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015AC4;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidateCDSession
{
  if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D3DD8();
  }

  self->_cdSignal = 0;
  [(AAConversationDetectSessionManager *)self _cdSessionEnsureDeactivated:0];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_audioSessionActivated = 0;
  objc_sync_exit(selfCopy);

  [(AAConversationDetectSessionManager *)selfCopy setCdSignalAudioInterrupted:0];
  if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D3DF4();
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 postNotificationName:@"CdSignalAudioInterruptedChanged" object:selfCopy];

  if ([(NSMutableDictionary *)selfCopy->_cdSupportedAccessories count])
  {
    if (dword_1002F61A0 <= 90 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D3E10(&selfCopy->_cdSupportedAccessories);
    }
  }

  else
  {
    [(AAConversationDetectSessionManager *)selfCopy _deregisterFromAudioSessionResetNotifications];
    [(AAConversationDetectSessionManager *)selfCopy _deregisterFromAVAudioSessionSpeechDetectionStyleChanges];
    selfCopy->_activateCDSessionCalled = 0;
  }
}

- (void)invalidate
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100015C84;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_invalidate
{
  if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D3E58();
  }

  [(AAConversationDetectSessionManager *)self _invalidateCDSession];
  [(AAConversationDetectSessionManager *)self _aaControllerEnsureStopped];
  [(CBDiscovery *)self->_connectedDeviceDiscovery invalidate];
  connectedDeviceDiscovery = self->_connectedDeviceDiscovery;
  self->_connectedDeviceDiscovery = 0;

  [(NSMutableDictionary *)self->_cdSupportedAccessories removeAllObjects];
  cdSupportedAccessories = self->_cdSupportedAccessories;
  self->_cdSupportedAccessories = 0;

  if (self->_cdMsgReceivedObserving)
  {
    v5 = +[NSDistributedNotificationCenter defaultCenter];
    [v5 removeObserver:self name:@"com.apple.AudioAccessory.cdMsgNotification" object:0];
    self->_cdMsgReceivedObserving = 0;
  }

  prefsChangedNotifyToken = self->_prefsChangedNotifyToken;
  if (prefsChangedNotifyToken != -1)
  {
    notify_cancel(prefsChangedNotifyToken);
    self->_prefsChangedNotifyToken = -1;
  }

  notify_cancel(self->_conversationAwarenessNotificationDispatchToken);

  [(AAConversationDetectSessionManager *)self _deregisterFromWirelessSplitterStateChanges];
}

- (void)_getSignalTypeFromData:(id)data signal:(int *)signal
{
  dataCopy = data;
  v6 = dataCopy;
  if (dataCopy)
  {
    v11 = dataCopy;
    v7 = dataCopy;
    bytes = [v11 bytes];
    dataCopy = [v11 length];
    if (dataCopy > 1)
    {
      v9 = bytes[1];
      *signal = v9;
      v6 = v11;
      if (dword_1002F61A0 > 30)
      {
        goto LABEL_15;
      }

      if (dword_1002F61A0 == -1)
      {
        dataCopy = _LogCategory_Initialize();
        v6 = v11;
        if (!dataCopy)
        {
          goto LABEL_15;
        }

        v9 = *signal;
      }

      if (v9 <= 0xB)
      {
        v10 = (&off_1002B7018)[v9];
      }

      dataCopy = LogPrintF();
      goto LABEL_14;
    }

    v6 = v11;
    if (dword_1002F61A0 <= 30)
    {
      if (dword_1002F61A0 != -1 || (dataCopy = _LogCategory_Initialize(), v6 = v11, dataCopy))
      {
        dataCopy = sub_1001D3E74();
LABEL_14:
        v6 = v11;
      }
    }
  }

LABEL_15:

  _objc_release_x1(dataCopy, v6);
}

- (BOOL)_getCDTunings:(id *)tunings FromData:(id)data
{
  dataCopy = data;
  v6 = dataCopy;
  if (!dataCopy)
  {
LABEL_12:
    v15 = 0;
    goto LABEL_13;
  }

  bytes = [dataCopy bytes];
  if ([v6 length] <= 0x93)
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D3ED0();
    }

    goto LABEL_12;
  }

  if (!tunings)
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D3EB4();
    }

    goto LABEL_12;
  }

  v8 = *(bytes + 17);
  *&tunings->var0.var0 = *(bytes + 1);
  *&tunings->var0.var4 = v8;
  v9 = *(bytes + 33);
  v10 = *(bytes + 49);
  v11 = *(bytes + 81);
  *&tunings->var0.var16 = *(bytes + 65);
  *&tunings->var0.var21 = v11;
  *&tunings->var0.var8 = v9;
  *&tunings->var0.var12 = v10;
  v12 = *(bytes + 97);
  v13 = *(bytes + 113);
  v14 = *(bytes + 129);
  *(&tunings->var2.var6.var0 + 3) = *(bytes + 36);
  *&tunings->var2.var2.var1 = v13;
  *&tunings->var2.var4.var1 = v14;
  *&tunings->var2.var0.var1 = v12;
  v15 = 1;
LABEL_13:

  return v15;
}

- (BOOL)getCdSignalAudioInterrupted
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  cdSignalAudioInterrupted = selfCopy->_cdSignalAudioInterrupted;
  objc_sync_exit(selfCopy);

  return cdSignalAudioInterrupted;
}

- (id)getCurrentCDDeviceIdentifier
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  v3 = selfCopy->_currentCDDeviceIdentifier;
  objc_sync_exit(selfCopy);

  return v3;
}

- (void)_prefsChanged
{
  CFPrefs_GetDouble();
  if (v3 >= 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 3.0;
  }

  if (v4 == self->_cdSignalAudioTunings.unlatchSignalTunables.signalRampDurationSecs)
  {
    goto LABEL_10;
  }

  if (dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_9;
      }

      signalRampDurationSecs = self->_cdSignalAudioTunings.unlatchSignalTunables.signalRampDurationSecs;
    }

    LogPrintF();
  }

LABEL_9:
  v5 = v4;
  self->_cdSignalAudioTunings.unlatchSignalTunables.signalRampDurationSecs = v5;
LABEL_10:
  CFPrefs_GetDouble();
  if (v6 >= 0.0)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0.1;
  }

  if (v7 != self->_prefCDRampChunkDuration)
  {
    if (dword_1002F61A0 <= 30)
    {
      if (dword_1002F61A0 == -1)
      {
        if (!_LogCategory_Initialize())
        {
          goto LABEL_18;
        }

        prefCDRampChunkDuration = self->_prefCDRampChunkDuration;
      }

      LogPrintF();
    }

LABEL_18:
    self->_prefCDRampChunkDuration = v7;
  }

  v8 = CFPrefs_GetInt64() != 0;
  if (self->_prefCDShouldDisableCustomDuckingCurve != v8)
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D3F10();
    }

    self->_prefCDShouldDisableCustomDuckingCurve = v8;
  }

  v9 = CFPrefs_GetInt64() != 0;
  if (self->_prefCDSiriDidAnnounce != v9)
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D3F6C();
    }

    self->_prefCDSiriDidAnnounce = v9;
  }
}

- (void)_sendConversationDetectMessage:(id)message destinationIdentifier:(id)identifier completion:(id)completion
{
  messageCopy = message;
  identifierCopy = identifier;
  completionCopy = completion;
  [(AAConversationDetectSessionManager *)self _aaControllerEnsureStarted];
  aaController = self->_aaController;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000163E8;
  v15[3] = &unk_1002B6E60;
  v16 = messageCopy;
  v17 = identifierCopy;
  v18 = completionCopy;
  v12 = completionCopy;
  v13 = identifierCopy;
  v14 = messageCopy;
  [(AAController *)aaController sendConversationDetectMessage:v14 destinationIdentifier:v13 completionHandler:v15];
}

- (void)setConversationDetectSignal:(int)signal
{
  dispatchQueue = self->_dispatchQueue;
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100016558;
  v4[3] = &unk_1002B68F8;
  v4[4] = self;
  signalCopy = signal;
  dispatch_async(dispatchQueue, v4);
}

- (void)setCDTunings:(id *)tunings
{
  dispatchQueue = self->_dispatchQueue;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v4 = *&tunings->var2.var2.var1;
  v15 = *&tunings->var2.var0.var1;
  v16 = v4;
  *v17 = *&tunings->var2.var4.var1;
  v5 = *&tunings->var0.var12;
  v11 = *&tunings->var0.var8;
  v12 = v5;
  v6 = *&tunings->var0.var21;
  v13 = *&tunings->var0.var16;
  v14 = v6;
  v7 = *&tunings->var0.var4;
  v9 = *&tunings->var0.var0;
  v8[2] = sub_10001661C;
  v8[3] = &unk_1002B6E88;
  *&v17[15] = *(&tunings->var2.var6.var0 + 3);
  v10 = v7;
  v8[4] = self;
  dispatch_async(dispatchQueue, v8);
}

- (void)setCdSignalAudioInterrupted:(BOOL)interrupted
{
  obj = self;
  objc_sync_enter(obj);
  obj->_cdSignalAudioInterrupted = interrupted;
  objc_sync_exit(obj);
}

- (void)_setCDSignalAudioTunings:(id *)tunings
{
  v4 = 0;
  v5 = *&tunings->var2.var0;
  v44[0] = *&tunings->var0.var0;
  v44[1] = v5;
  p_cdSignalAudioTunings = &self->_cdSignalAudioTunings;
  v7 = *&tunings->var6.var0;
  v44[2] = *&tunings->var4.var0;
  v44[3] = v7;
  do
  {
    v8 = *(v44 + v4);
    if (v8 >= 0.0)
    {
      v9 = flt_100225DC8[v4];
      if (v8 <= v9)
      {
        v9 = *(v44 + v4);
      }

      else if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
      {
LABEL_9:
        LogPrintF();
      }
    }

    else
    {
      v9 = 0.0;
      if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
      {
        goto LABEL_9;
      }
    }

    *(&p_cdSignalAudioTunings->startSignalTunables.signalDuckingLevel + v4++) = v9;
  }

  while (v4 != 16);
  if (dword_1002F61A0 < 31 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    signalDuckingLevel = self->_cdSignalAudioTunings.startSignalTunables.signalDuckingLevel;
    signalRampDurationSecs = self->_cdSignalAudioTunings.startSignalTunables.signalRampDurationSecs;
    v13 = self->_cdSignalAudioTunings.latch1SignalTunables.signalDuckingLevel;
    v12 = self->_cdSignalAudioTunings.latch1SignalTunables.signalRampDurationSecs;
    v15 = self->_cdSignalAudioTunings.latch2SignalTunables.signalDuckingLevel;
    v14 = self->_cdSignalAudioTunings.latch2SignalTunables.signalRampDurationSecs;
    v17 = self->_cdSignalAudioTunings.unlatchSignalTunables.signalDuckingLevel;
    v16 = self->_cdSignalAudioTunings.unlatchSignalTunables.signalRampDurationSecs;
    v36 = self->_cdSignalAudioTunings.end1SignalTunables.signalDuckingLevel;
    v37 = self->_cdSignalAudioTunings.end1SignalTunables.signalRampDurationSecs;
    v38 = self->_cdSignalAudioTunings.end2SignalTunables.signalDuckingLevel;
    v39 = self->_cdSignalAudioTunings.end2SignalTunables.signalRampDurationSecs;
    v40 = self->_cdSignalAudioTunings.resetSignalTunables.signalDuckingLevel;
    v41 = self->_cdSignalAudioTunings.resetSignalTunables.signalRampDurationSecs;
    v42 = self->_cdSignalAudioTunings.pauseSignalTunables.signalDuckingLevel;
    v43 = self->_cdSignalAudioTunings.pauseSignalTunables.signalRampDurationSecs;
    v62 = 0;
    NSAppendPrintF();
    v18 = v62;
    v61 = v18;
    NSAppendPrintF();
    v19 = v61;

    v60 = v19;
    NSAppendPrintF();
    v20 = v60;

    v59 = v20;
    NSAppendPrintF();
    v21 = v59;

    v58 = v21;
    NSAppendPrintF();
    v22 = v58;

    v57 = v22;
    NSAppendPrintF();
    v23 = v57;

    v56 = v23;
    NSAppendPrintF();
    v24 = v56;

    v55 = v24;
    NSAppendPrintF();
    v25 = v55;

    v54 = v25;
    NSAppendPrintF();
    v26 = v54;

    v53 = v26;
    NSAppendPrintF();
    v27 = v53;

    v52 = v27;
    NSAppendPrintF();
    v28 = v52;

    v51 = v28;
    NSAppendPrintF();
    v29 = v51;

    v50 = v29;
    NSAppendPrintF();
    v30 = v50;

    v49 = v30;
    NSAppendPrintF();
    v31 = v49;

    v48 = v31;
    NSAppendPrintF();
    v32 = v48;

    v47 = v32;
    NSAppendPrintF();
    v33 = v47;

    v46 = v33;
    NSAppendPrintF();
    v34 = v46;

    v45 = v34;
    NSAppendPrintF();
    v35 = v45;

    LogPrintF();
  }
}

- (void)setCurrentCDDeviceIdentifier:(id)identifier
{
  identifierCopy = identifier;
  obj = self;
  objc_sync_enter(obj);
  currentCDDeviceIdentifier = obj->_currentCDDeviceIdentifier;
  obj->_currentCDDeviceIdentifier = identifierCopy;

  objc_sync_exit(obj);
}

- (void)_updateAccessoriesWithMotionState:(unsigned int)state
{
  if ([(NSMutableDictionary *)self->_cdSupportedAccessories count])
  {
    v10 = 4;
    stateCopy = state;
    v5 = [NSData dataWithBytes:&v10 length:5];
    cdSupportedAccessories = self->_cdSupportedAccessories;
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100017280;
    v8[3] = &unk_1002B6EB0;
    v8[4] = self;
    v9 = v5;
    v7 = v5;
    [(NSMutableDictionary *)cdSupportedAccessories enumerateKeysAndObjectsUsingBlock:v8];
  }

  else if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D400C();
  }
}

- (void)_updateAccessoriesWithPauseState
{
  if ([(NSMutableDictionary *)self->_cdSupportedAccessories count])
  {
    _getPauseMessage = [(AAConversationDetectSessionManager *)self _getPauseMessage];
    v9 = _getPauseMessage;
    v10 = BYTE2(_getPauseMessage);
    v4 = [NSData dataWithBytes:&v9 length:3];
    cdSupportedAccessories = self->_cdSupportedAccessories;
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1000173E4;
    v7[3] = &unk_1002B6EB0;
    v7[4] = self;
    v8 = v4;
    v6 = v4;
    [(NSMutableDictionary *)cdSupportedAccessories enumerateKeysAndObjectsUsingBlock:v7];
  }

  else if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D4028();
  }
}

- (void)_updateConversationDetectSignal:(int)signal
{
  cdSignal = self->_cdSignal;
  if (cdSignal == signal)
  {
    return;
  }

  if (dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 != -1)
    {
LABEL_4:
      if (cdSignal <= 0xB)
      {
        v7 = (&off_1002B7018)[cdSignal];
      }

      if (signal <= 0xB)
      {
        v8 = (&off_1002B7018)[signal];
      }

      LogPrintF();
      goto LABEL_11;
    }

    if (_LogCategory_Initialize())
    {
      cdSignal = self->_cdSignal;
      goto LABEL_4;
    }
  }

LABEL_11:
  self->_cdSignal = signal;

  [(AAConversationDetectSessionManager *)self _cdSessionSignalUpdate];
}

- (void)_updatePauseState
{
  currentSpeechDetectionStyle = self->_currentSpeechDetectionStyle;
  isWirelessSplitterOn = self->_isWirelessSplitterOn;
  pauseConversationDetect = currentSpeechDetectionStyle == 4 || self->_isWirelessSplitterOn;
  self->_pauseConversationDetect = pauseConversationDetect;
  if (dword_1002F61A0 <= 30)
  {
    if (dword_1002F61A0 == -1)
    {
      v9 = _LogCategory_Initialize();
      pauseConversationDetect = self->_pauseConversationDetect;
      if (!v9)
      {
        goto LABEL_16;
      }

      isWirelessSplitterOn = self->_isWirelessSplitterOn;
    }

    v6 = "no";
    if (pauseConversationDetect)
    {
      v7 = "yes";
    }

    else
    {
      v7 = "no";
    }

    if (isWirelessSplitterOn)
    {
      v8 = "yes";
    }

    else
    {
      v8 = "no";
    }

    if (currentSpeechDetectionStyle == 4)
    {
      v6 = "yes";
    }

    v11 = v8;
    v12 = v6;
    v10 = v7;
    LogPrintF();
    pauseConversationDetect = self->_pauseConversationDetect;
  }

LABEL_16:
  if (!pauseConversationDetect)
  {
    self->_currentPauseReason = 0;
  }

  [(AAConversationDetectSessionManager *)self _updateAccessoriesWithPauseState:v10];
  if (self->_pauseConversationDetect)
  {

    [(AAConversationDetectSessionManager *)self _cdSessionEnsureDeactivated:0];
  }
}

- (void)_audioSessionEnsureStarted
{
  if (!self->_audioSessionActivated)
  {
    v3 = +[AVAudioSession sharedInstance];
    v4 = kMXSessionProperty_InterruptionStyle;
    v5 = [NSNumber numberWithInt:32];
    v11 = 0;
    [v3 setMXSessionProperty:v4 value:v5 error:&v11];
    v6 = v11;

    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D4060();
    }

    v7 = +[AVAudioSession sharedInstance];
    v10 = v6;
    [v7 setActive:1 error:&v10];
    v8 = v10;

    if (v8)
    {
      if (dword_1002F61A0 <= 90 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D4094();
      }
    }

    else
    {
      selfCopy = self;
      objc_sync_enter(selfCopy);
      self->_audioSessionActivated = 1;
      objc_sync_exit(selfCopy);
    }
  }
}

- (void)_audioSessionEnsureStopped
{
  obj = self;
  objc_sync_enter(obj);
  if (obj->_audioSessionActivated)
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v2 = +[AVAudioSession sharedInstance];
    v9 = 0;
    [v2 setDuckingFadeOutDuration:0 fadeInDuration:0 error:&v9];
    v3 = v9;

    if (v3 && dword_1002F61A0 <= 90 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    v4 = +[AVAudioSession sharedInstance];
    v8 = v3;
    [v4 setActive:0 withOptions:1 error:&v8];
    v5 = v8;

    if (v5 && dword_1002F61A0 <= 90 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      LogPrintF();
    }

    obj->_audioSessionActivated = 0;

    objc_sync_exit(obj);
    [(AAConversationDetectSessionManager *)obj setCdSignalAudioInterrupted:0];
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D40D4();
    }

    v6 = +[NSNotificationCenter defaultCenter];
    [v6 postNotificationName:@"CdSignalAudioInterruptedChanged" object:obj];
  }

  else
  {
    objc_sync_exit(obj);
  }
}

- (void)_cdSessionSignalUpdate
{
  p_duckLevel = &self->_duckLevel;
  v4 = self->_duckLevel;
  v5 = *p_duckLevel;
  *p_duckLevel = 0;

  p_rampDuration = &self->_rampDuration;
  rampDuration = self->_rampDuration;
  self->_rampDuration = 0;

  selfCopy = self;
  objc_sync_enter(selfCopy);
  selfCopy->_shouldQueueRamp = 0;
  objc_sync_exit(selfCopy);

  unduckLevel = selfCopy->_unduckLevel;
  selfCopy->_unduckLevel = 0;

  cdSignal = selfCopy->_cdSignal;
  if (cdSignal > 5)
  {
    if (cdSignal <= 8)
    {
      if (cdSignal == 6)
      {
        *&v10 = selfCopy->_cdSignalAudioTunings.end2SignalTunables.signalRampDurationSecs;
        v40 = [NSNumber numberWithFloat:v10];
        v41 = *p_rampDuration;
        *p_rampDuration = v40;

        *&v14 = selfCopy->_cdSignalAudioTunings.end2SignalTunables.signalDuckingLevel;
      }

      else if (cdSignal == 7)
      {
        *&v10 = selfCopy->_cdSignalAudioTunings.resetSignalTunables.signalRampDurationSecs;
        v32 = [NSNumber numberWithFloat:v10];
        v33 = *p_rampDuration;
        *p_rampDuration = v32;

        *&v14 = selfCopy->_cdSignalAudioTunings.resetSignalTunables.signalDuckingLevel;
      }

      else
      {
        *&v10 = selfCopy->_cdSignalAudioTunings.pauseSignalTunables.signalRampDurationSecs;
        v12 = [NSNumber numberWithFloat:v10];
        v13 = *p_rampDuration;
        *p_rampDuration = v12;

        *&v14 = selfCopy->_cdSignalAudioTunings.pauseSignalTunables.signalDuckingLevel;
      }

      goto LABEL_33;
    }

    switch(cdSignal)
    {
      case 9:
        v43 = *p_rampDuration;
        *p_rampDuration = &off_1002CB608;
        goto LABEL_34;
      case 10:
        if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D4108();
        }

        goto LABEL_69;
      case 11:
        [(AAConversationDetectSessionManager *)selfCopy _audioSessionEnsureStopped];
LABEL_31:
        v15 = 0;
        v23 = 0;
        v24 = 1;
        goto LABEL_45;
    }

LABEL_36:
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D4270();
    }

    goto LABEL_69;
  }

  if (cdSignal <= 2)
  {
    if (cdSignal != 1)
    {
      if (cdSignal == 2)
      {
        *&v10 = selfCopy->_cdSignalAudioTunings.latch1SignalTunables.signalRampDurationSecs;
        v18 = [NSNumber numberWithFloat:v10];
        v19 = *p_rampDuration;
        *p_rampDuration = v18;

        *&v20 = selfCopy->_cdSignalAudioTunings.latch1SignalTunables.signalDuckingLevel;
        v21 = [NSNumber numberWithFloat:v20];
        v22 = *p_duckLevel;
        *p_duckLevel = v21;

        v23 = 0;
        v24 = 1;
        v15 = 1;
        goto LABEL_45;
      }

      goto LABEL_36;
    }

    v15 = 0;
    v16 = 28;
    v17 = 24;
  }

  else
  {
    if (cdSignal == 3)
    {
      *&v10 = selfCopy->_cdSignalAudioTunings.unlatchSignalTunables.signalRampDurationSecs;
      v34 = [NSNumber numberWithFloat:v10];
      v35 = *p_rampDuration;
      *p_rampDuration = v34;

      *&v36 = selfCopy->_cdSignalAudioTunings.unlatchSignalTunables.signalDuckingLevel;
      v37 = [NSNumber numberWithFloat:v36];
      v38 = selfCopy->_unduckLevel;
      selfCopy->_unduckLevel = v37;

      v39 = selfCopy;
      objc_sync_enter(v39);
      selfCopy->_shouldQueueRamp = _os_feature_enabled_impl() ^ 1;
      objc_sync_exit(v39);

      goto LABEL_31;
    }

    if (cdSignal == 4)
    {
      *&v10 = selfCopy->_cdSignalAudioTunings.end1SignalTunables.signalRampDurationSecs;
      v30 = [NSNumber numberWithFloat:v10];
      v31 = *p_rampDuration;
      *p_rampDuration = v30;

      *&v14 = selfCopy->_cdSignalAudioTunings.end1SignalTunables.signalDuckingLevel;
LABEL_33:
      v42 = [NSNumber numberWithFloat:v14];
      v43 = selfCopy->_unduckLevel;
      selfCopy->_unduckLevel = v42;
LABEL_34:

      v24 = 0;
      v15 = 0;
      v23 = 0;
      goto LABEL_45;
    }

    v15 = 1;
    v16 = 44;
    v17 = 40;
  }

  LODWORD(v10) = *(&selfCopy->super.isa + v16);
  v25 = [NSNumber numberWithFloat:v10];
  v26 = *p_rampDuration;
  *p_rampDuration = v25;

  LODWORD(v27) = *(&selfCopy->super.isa + v17);
  v28 = [NSNumber numberWithFloat:v27];
  v29 = *p_duckLevel;
  *p_duckLevel = v28;

  if (!selfCopy->_audioSessionActivated)
  {
    if (selfCopy->_prefCDShouldDisableCustomDuckingCurve)
    {
      if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D416C();
      }
    }

    else
    {
      v44 = +[AVSystemController sharedInstance];
      [v44 getActiveCategoryVolume:&selfCopy->_currentVolume andName:0];

      if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D4124(&selfCopy->_currentVolume);
      }

      *&v45 = selfCopy->_currentVolume;
      [(AAConversationDetectSessionManager *)selfCopy _calibrateDuckingLevelForVolumeLevel:v45];
    }
  }

  v24 = 1;
  v23 = 1;
LABEL_45:
  v46 = 0;
  currentSpeechDetectionStyle = selfCopy->_currentSpeechDetectionStyle;
  if (currentSpeechDetectionStyle < 2)
  {
    v48 = 0;
    goto LABEL_61;
  }

  if (currentSpeechDetectionStyle != 3)
  {
    if (currentSpeechDetectionStyle != 2)
    {
      if (dword_1002F61A0 <= 30)
      {
        if (dword_1002F61A0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_83;
          }

          currentSpeechDetectionStyle = selfCopy->_currentSpeechDetectionStyle;
        }

        if (currentSpeechDetectionStyle > 6)
        {
          v49 = "?";
        }

        else
        {
          v49 = (&off_1002B70A0)[currentSpeechDetectionStyle];
        }

        v60 = v49;
        LogPrintF();
      }

LABEL_83:
      v53 = 0;
      goto LABEL_84;
    }

    if (v15)
    {
      v48 = selfCopy->_cdSignal == 5;
      v46 = 1;
      goto LABEL_57;
    }

    v46 = 0;
  }

  v48 = 1;
LABEL_57:
  if (v24 & v48)
  {
    if (selfCopy->_shouldQueueRamp)
    {
      [(AAConversationDetectSessionManager *)selfCopy _startQueuedRampForDuration:*p_rampDuration startLevel:v4 endLevel:selfCopy->_unduckLevel];
LABEL_60:
      v48 = 1;
      goto LABEL_62;
    }

    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D4188(&selfCopy->_cdSignal, p_duckLevel, &selfCopy->_unduckLevel, p_rampDuration);
    }

    v55 = +[AVAudioSession sharedInstance];
    v56 = *p_rampDuration;
    v63 = 0;
    [v55 setDuckingFadeOutDuration:v56 fadeInDuration:v56 error:&v63];
    v53 = v63;

    if (!v53)
    {
      v57 = +[AVAudioSession sharedInstance];
      v58 = *p_duckLevel;
      v59 = selfCopy->_unduckLevel;
      v62 = 0;
      [v57 setDuckToLevelScalar:v58 unduckToLevelScalar:v59 error:&v62];
      v53 = v62;

      if (!v53)
      {
        goto LABEL_60;
      }
    }

    if (dword_1002F61A0 <= 90 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D41FC();
    }

LABEL_84:
    [(AAConversationDetectSessionManager *)selfCopy _cdSessionEnsureDeactivated:0, v60];
    goto LABEL_85;
  }

LABEL_61:
  if ((v24 & 1) == 0)
  {
    goto LABEL_83;
  }

LABEL_62:
  if (v23)
  {
    [(AAConversationDetectSessionManager *)selfCopy _cdSessionEnsureActivated:v48];
  }

  if (!v46)
  {
LABEL_69:
    v53 = 0;
    goto LABEL_85;
  }

  v50 = +[AVAudioSession sharedInstance];
  v51 = kMXSessionProperty_InterruptionStyle;
  v52 = [NSNumber numberWithInt:4];
  v61 = 0;
  [v50 setMXSessionProperty:v51 value:v52 error:&v61];
  v53 = v61;

  [(AAConversationDetectSessionManager *)selfCopy setCdSignalAudioInterrupted:1];
  if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D423C();
  }

  v54 = +[NSNotificationCenter defaultCenter];
  [v54 postNotificationName:@"CdSignalAudioInterruptedChanged" object:selfCopy];

LABEL_85:
}

- (void)_cdSessionEnsureActivated:(BOOL)activated
{
  if (self->_pauseConversationDetect)
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D428C();
    }
  }

  else
  {
    if (activated)
    {
      [(AAConversationDetectSessionManager *)self _audioSessionEnsureStarted];
    }

    [(AAConversationDetectSessionManager *)self _startPedestrianFenceSession];

    [(AAConversationDetectSessionManager *)self _startHeadGestureManager];
  }
}

- (void)_cdSessionEnsureDeactivated:(unsigned __int8)deactivated
{
  deactivatedCopy = deactivated;
  if (GestaltGetDeviceClass() == 1)
  {
    if (self->_audioSessionActivated && (self->_cdSignal | 2) == 6 && !self->_prefCDSiriDidAnnounce && !self->_isSiriAnnouncePending)
    {
      if (dword_1002F61A0 <= 30)
      {
        if (dword_1002F61A0 == -1)
        {
          if (!_LogCategory_Initialize())
          {
            goto LABEL_23;
          }

          self->_audioSessionActivated;
          self->_prefCDSiriDidAnnounce;
          self->_isSiriAnnouncePending;
        }

        LogPrintF();
      }

LABEL_23:
      self->_isSiriAnnouncePending = 1;

      [(AAConversationDetectSessionManager *)self _requestSiriAnnounce];
      return;
    }
  }

  else if (dword_1002F61A0 <= 10 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D42A8();
  }

  [(AAConversationDetectSessionManager *)self _audioSessionEnsureStopped];
  [(AAConversationDetectSessionManager *)self _stopPedestrianFenceSession];
  [(AAConversationDetectSessionManager *)self _stopHeadGestureManager];
  if (deactivatedCopy)
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D42C4();
    }

    [(AAConversationDetectSessionManager *)self _updateAccessoriesWithResetState:?];
  }
}

- (void)_requestSiriAnnounce
{
  v34 = 0;
  v35 = &v34;
  v36 = 0x3032000000;
  v37 = sub_1000038E8;
  v38 = sub_100003820;
  v39 = 0;
  v33[0] = _NSConcreteStackBlock;
  v33[1] = 3221225472;
  v33[2] = sub_100018BCC;
  v33[3] = &unk_1002B6ED8;
  v33[4] = self;
  v33[5] = &v34;
  v3 = objc_retainBlock(v33);
  v4 = [NSString stringWithFormat:@"/System/Library/UserNotifications/Bundles/%@.bundle", @"com.apple.BTUserNotifications"];
  v5 = [NSBundle bundleWithPath:v4];
  v6 = +[AFPreferences sharedPreferences];
  assistantIsEnabled = [v6 assistantIsEnabled];

  if (assistantIsEnabled)
  {
    v8 = +[AFPreferences sharedPreferences];
    outputVoice = [v8 outputVoice];
    languageCode = [outputVoice languageCode];

    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      v30 = languageCode;
      LogPrintF();
    }

    if (languageCode)
    {
      v12 = objc_alloc_init(UNMutableNotificationContent);
      [v12 setCategoryIdentifier:@"BTUserNotifications"];
      localizations = [v5 localizations];
      v40 = languageCode;
      v14 = [NSArray arrayWithObjects:&v40 count:1];
      v15 = [NSBundle preferredLocalizationsFromArray:localizations forPreferences:v14];

      if ([v15 count])
      {
        firstObject = [v15 firstObject];
        v17 = [v5 localizedStringForKey:@"CA_FIRST_TRIGGER_TITLE" value:0 table:0 localization:firstObject];
        [v12 setTitle:v17];

        firstObject2 = [v15 firstObject];
        v19 = [v5 localizedStringForKey:@"CA_FIRST_TRIGGER_SUBTITLE" value:0 table:0 localization:firstObject2];
        [v12 setSubtitle:v19];
      }

      title = [v12 title];
      if (!title || ([v12 subtitle], v21 = objc_claimAutoreleasedReturnValue(), v22 = v21 == 0, v21, title, v22))
      {
        v28 = NSErrorF();
        uUIDString = v35[5];
        v35[5] = v28;
      }

      else
      {
        v23 = +[NSUUID UUID];
        uUIDString = [v23 UUIDString];

        v31 = [UNNotificationRequest requestWithIdentifier:uUIDString content:v12 trigger:0];
        v25 = +[NSDate date];
        v26 = [UNNotification notificationWithRequest:v31 date:v25 sourceIdentifier:@"com.apple.BTUserNotifications" intentIdentifiers:&__NSArray0__struct];

        v27 = [[AFSiriUserNotificationRequest alloc] initWithUserNotification:v26 sourceAppId:@"com.apple.BTUserNotifications" platform:1];
        v32[0] = _NSConcreteStackBlock;
        v32[1] = 3221225472;
        v32[2] = sub_100018C94;
        v32[3] = &unk_1002B6F00;
        v32[4] = self;
        [v27 performRequestWithCompletion:v32];
      }
    }

    else
    {
      v29 = NSErrorF();
      v12 = v35[5];
      v35[5] = v29;
    }
  }

  else
  {
    v11 = NSErrorF();
    languageCode = v35[5];
    v35[5] = v11;
  }

  (v3[2])(v3);
  _Block_object_dispose(&v34, 8);
}

- (void)_asyncAudioSessionDuckWithLevel:(id)level completion:(id)completion
{
  levelCopy = level;
  completionCopy = completion;
  chunkedRampingQueue = self->_chunkedRampingQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100018E1C;
  block[3] = &unk_1002B6BB0;
  block[4] = self;
  v12 = levelCopy;
  v13 = completionCopy;
  v9 = completionCopy;
  v10 = levelCopy;
  dispatch_async(chunkedRampingQueue, block);
}

- (void)_audioSessionReset
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019120;
  block[3] = &unk_1002B6880;
  block[4] = self;
  dispatch_async(dispatchQueue, block);
}

- (void)_deregisterFromAudioSessionResetNotifications
{
  if (self->_avAudioSessionResetNotificationRegistered)
  {
    v8 = v2;
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D43F4();
    }

    v7 = [NSNotificationCenter defaultCenter:v3];
    [v7 removeObserver:self name:AVAudioSessionMediaServicesWereResetNotification object:0];

    self->_avAudioSessionResetNotificationRegistered = 0;
  }
}

- (void)_deregisterFromAVAudioSessionSpeechDetectionStyleChanges
{
  if (self->_cdStyleChangeNotificationRegistered)
  {
    v8 = v2;
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D4410();
    }

    v7 = [AVAudioSession sharedInstance:v3];
    [v7 removeObserver:self forKeyPath:@"speechDetectionStyle"];

    self->_cdStyleChangeNotificationRegistered = 0;
  }
}

- (void)_startQueuedRampForDuration:(id)duration startLevel:(id)level endLevel:(id)endLevel
{
  durationCopy = duration;
  levelCopy = level;
  endLevelCopy = endLevel;
  v11 = endLevelCopy;
  if (levelCopy && endLevelCopy && ([levelCopy floatValue], v13 = v12, objc_msgSend(v11, "floatValue"), v13 < v14))
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      v29 = v11;
      v31 = durationCopy;
      v28 = levelCopy;
      LogPrintF();
    }

    [durationCopy floatValue];
    v16 = (v15 / self->_prefCDRampChunkDuration);
    v48 = 0;
    v49 = &v48;
    v50 = 0x2020000000;
    [v11 floatValue];
    v18 = v17;
    [levelCopy floatValue];
    v51 = (v18 - v19) / v16;
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    [levelCopy floatValue];
    v47 = v20 + v49[6];
    v21 = v45[6];
    [v11 floatValue];
    if (v21 > v22)
    {
      [v11 floatValue];
      *(v45 + 6) = v23;
    }

    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      v30 = v49[6];
      LogPrintF();
    }

    v38 = 0;
    v39 = &v38;
    v40 = 0x3032000000;
    v41 = sub_100019654;
    v42 = sub_100019680;
    v43 = 0;
    v32[0] = _NSConcreteStackBlock;
    v32[1] = 3221225472;
    v32[2] = sub_100019688;
    v32[3] = &unk_1002B6F28;
    v35 = &v44;
    v33 = v11;
    selfCopy = self;
    v36 = &v48;
    v37 = &v38;
    v24 = objc_retainBlock(v32);
    v25 = v39[5];
    v39[5] = v24;

    *&v26 = v45[6];
    v27 = [NSNumber numberWithFloat:v26];
    [(AAConversationDetectSessionManager *)self _asyncAudioSessionDuckWithLevel:v27 completion:v39[5]];

    _Block_object_dispose(&v38, 8);
    _Block_object_dispose(&v44, 8);
    _Block_object_dispose(&v48, 8);
  }

  else if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    LogPrintF();
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  changeCopy = change;
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100019894;
  block[3] = &unk_1002B6CF0;
  v14 = pathCopy;
  v15 = changeCopy;
  selfCopy = self;
  v11 = changeCopy;
  v12 = pathCopy;
  dispatch_async(dispatchQueue, block);
}

- (void)_registerForAudioSessionResetNotifications
{
  if (!self->_avAudioSessionResetNotificationRegistered)
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D4480();
    }

    v3 = +[NSNotificationCenter defaultCenter];
    v4 = +[AVAudioSession sharedInstance];
    [v3 addObserver:self selector:"_audioSessionReset" name:AVAudioSessionMediaServicesWereResetNotification object:v4];

    self->_avAudioSessionResetNotificationRegistered = 1;
  }
}

- (void)_registerForAVAudioSessionSpeechDetectionStyleChanges
{
  v3 = +[AVAudioSession sharedInstance];
  v7 = 0;
  [v3 setCategory:AVAudioSessionCategorySpeechDetection withOptions:2 error:&v7];
  v4 = v7;

  if (v4 && dword_1002F61A0 <= 90 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D449C();
  }

  if (!self->_cdStyleChangeNotificationRegistered)
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D44DC();
    }

    v5 = +[AVAudioSession sharedInstance];
    [v5 addObserver:self forKeyPath:@"speechDetectionStyle" options:5 context:0];

    self->_cdStyleChangeNotificationRegistered = 1;
  }

  v6 = +[AVAudioSession sharedInstance];
  self->_currentSpeechDetectionStyle = [v6 speechDetectionStyle];

  if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D4510(&self->_currentSpeechDetectionStyle);
  }

  if (self->_currentSpeechDetectionStyle == 4)
  {
    self->_currentPauseReason = 2;
  }

  [(AAConversationDetectSessionManager *)self _updatePauseState];
}

- (void)_speechDetectionStyleChanged:(unint64_t)changed
{
  if (changed - 5 <= 1)
  {

    [(AAConversationDetectSessionManager *)self _speechDetectionUserVolumeChanged:?];
    return;
  }

  currentSpeechDetectionStyle = self->_currentSpeechDetectionStyle;
  if (currentSpeechDetectionStyle == changed)
  {
    return;
  }

  if (dword_1002F61A0 <= 30)
  {
    v6 = self->_currentSpeechDetectionStyle;
    if (dword_1002F61A0 == -1)
    {
      if (!_LogCategory_Initialize())
      {
        goto LABEL_18;
      }

      v6 = self->_currentSpeechDetectionStyle;
    }

    if (v6 > 6)
    {
      v7 = "?";
    }

    else
    {
      v7 = (&off_1002B70A0)[v6];
    }

    if (changed > 4)
    {
      v8 = "?";
    }

    else
    {
      v8 = (&off_1002B7078)[changed];
    }

    v13 = v7;
    v14 = v8;
    LogPrintF();
  }

LABEL_18:
  self->_currentSpeechDetectionStyle = changed;
  v9 = [(AAConversationDetectSessionManager *)self cdSignalAudioInterrupted:v13];
  v10 = self->_currentSpeechDetectionStyle;
  if (v9 && v10 == 1)
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D45AC();
    }

    return;
  }

  if (currentSpeechDetectionStyle == 1 && (v10 & 0xFFFFFFFFFFFFFFFELL) == 2)
  {
    if (self->_cdSignal == 11)
    {
      if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D4590();
      }

      goto LABEL_37;
    }

    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D4574();
    }

    selfCopy2 = self;
    v12 = 1;
  }

  else
  {
    selfCopy2 = self;
    v12 = 0;
  }

  [(AAConversationDetectSessionManager *)selfCopy2 _cdSessionEnsureDeactivated:v12];
LABEL_37:
  if (self->_currentSpeechDetectionStyle == 4)
  {
    self->_currentPauseReason = 2;
  }

  [(AAConversationDetectSessionManager *)self _updatePauseState];
}

- (void)_speechDetectionUserVolumeChanged:(unint64_t)changed
{
  if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
  {
    sub_1001D45C8(changed);
  }

  if (changed == 5 && self->_audioSessionActivated && !self->_cdSignalAudioInterrupted)
  {

    [(AAConversationDetectSessionManager *)self _cdSessionEnsureDeactivated:2];
  }
}

- (void)_deviceFound:(id)found
{
  foundCopy = found;
  identifier = [foundCopy identifier];
  if (identifier)
  {
    if ([foundCopy conversationDetectCapability] == 1)
    {
      v5 = [(NSMutableDictionary *)self->_cdSupportedAccessories objectForKeyedSubscript:identifier];
      cdSupportedAccessories = self->_cdSupportedAccessories;
      if (!cdSupportedAccessories)
      {
        v7 = objc_alloc_init(NSMutableDictionary);
        v8 = self->_cdSupportedAccessories;
        self->_cdSupportedAccessories = v7;

        cdSupportedAccessories = self->_cdSupportedAccessories;
      }

      if (![(NSMutableDictionary *)cdSupportedAccessories count])
      {
        [(AAConversationDetectSessionManager *)self _activateCDSession];
      }

      [(NSMutableDictionary *)self->_cdSupportedAccessories setObject:foundCopy forKeyedSubscript:identifier];
      if (v5)
      {
        if (dword_1002F61A0 <= 10 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D46A4();
        }
      }

      else
      {
        if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
        {
          sub_1001D46E4();
        }

        [(AAConversationDetectSessionManager *)self _updatePauseState];
      }
    }

    else
    {
      sub_1001D4628();
    }
  }

  else
  {
    sub_1001D4724();
  }
}

- (void)_deviceLost:(id)lost
{
  lostCopy = lost;
  identifier = [lostCopy identifier];
  if (identifier)
  {
    v5 = [(NSMutableDictionary *)self->_cdSupportedAccessories objectForKeyedSubscript:identifier];
    if (v5)
    {
      [(NSMutableDictionary *)self->_cdSupportedAccessories setObject:0 forKeyedSubscript:identifier];
      if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D47A0();
      }

      if (![(NSMutableDictionary *)self->_cdSupportedAccessories count])
      {
        [(AAConversationDetectSessionManager *)self _invalidateCDSession];
      }
    }
  }

  else
  {
    sub_1001D47E0();
  }
}

- (void)_setPedestrianFenceWithHandler:(id)handler
{
  handlerCopy = handler;
  v5 = handlerCopy;
  pedestrianFenceManager = self->_pedestrianFenceManager;
  if (pedestrianFenceManager)
  {
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10001A14C;
    v9[3] = &unk_1002B6F50;
    v9[4] = pedestrianFenceManager;
    v9[5] = self;
    v10 = handlerCopy;
    v7 = pedestrianFenceManager;
    LODWORD(v8) = 4.0;
    [(CMPedestrianFenceManager *)v7 setFence:@"com.apple.audioaccessoryd.cdFence" withRadius:v9 withCompletion:v8];
  }
}

- (void)_startPedestrianFenceSession
{
  if ((+[CMPedestrianFenceManager isAvailable]& 1) == 0)
  {
    if (dword_1002F61A0 > 10 || dword_1002F61A0 == -1 && !_LogCategory_Initialize())
    {
      return;
    }

LABEL_11:
    sub_1001D48A0();
    return;
  }

  if (GestaltGetDeviceClass() != 1)
  {
    if (dword_1002F61A0 > 10 || dword_1002F61A0 == -1 && !_LogCategory_Initialize())
    {
      return;
    }

    goto LABEL_11;
  }

  if (self->_pedestrianFenceManager)
  {
    if (dword_1002F61A0 <= 10 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D48BC();
    }
  }

  else
  {
    v3 = objc_alloc_init(CMPedestrianFenceManager);
    pedestrianFenceManager = self->_pedestrianFenceManager;
    self->_pedestrianFenceManager = v3;

    [(CMPedestrianFenceManager *)self->_pedestrianFenceManager startSession];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10001A3B8;
    v6[3] = &unk_1002B6F78;
    v6[4] = self;
    v5 = objc_retainBlock(v6);
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D48D8();
    }

    [(AAConversationDetectSessionManager *)self _setPedestrianFenceWithHandler:v5];
  }
}

- (void)_stopPedestrianFenceSession
{
  if (self->_pedestrianFenceManager)
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D49A8();
    }

    [(CMPedestrianFenceManager *)self->_pedestrianFenceManager clearFence:@"com.apple.audioaccessoryd.cdFence"];
    [(CMPedestrianFenceManager *)self->_pedestrianFenceManager endSession];
    pedestrianFenceManager = self->_pedestrianFenceManager;
    self->_pedestrianFenceManager = 0;
  }
}

- (void)_startHeadGestureManager
{
  if (_os_feature_enabled_impl())
  {
    if (self->_headGestureManager)
    {
      if (dword_1002F61A0 <= 10 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D49C4();
      }
    }

    else
    {
      v9 = objc_alloc_init(HGConfiguration);
      v3 = objc_alloc_init(HGAudioFeedbackConfiguration);
      [v9 setAudioFeedbackConfig:v3];

      v4 = +[AVAudioSession sharedInstance];
      opaqueSessionID = [v4 opaqueSessionID];
      audioFeedbackConfig = [v9 audioFeedbackConfig];
      [audioFeedbackConfig setAudioSessionID:opaqueSessionID];

      v7 = [[HGManager alloc] initWithDelegate:self config:v9];
      headGestureManager = self->_headGestureManager;
      self->_headGestureManager = v7;

      if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
      {
        sub_1001D49E0();
      }

      [(HGManager *)self->_headGestureManager start];
    }
  }
}

- (void)_stopHeadGestureManager
{
  if (self->_headGestureManager)
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D49FC();
    }

    [(HGManager *)self->_headGestureManager stop];
    headGestureManager = self->_headGestureManager;
    self->_headGestureManager = 0;
  }
}

- (void)didDetectedWithHeadGesture:(id)gesture
{
  gestureCopy = gesture;
  dispatchQueue = self->_dispatchQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10001A7B0;
  v7[3] = &unk_1002B6D18;
  v8 = gestureCopy;
  selfCopy = self;
  v6 = gestureCopy;
  dispatch_async(dispatchQueue, v7);
}

- (void)didStartStreamingWithIsStreaming:(BOOL)streaming
{
  dispatchQueue = self->_dispatchQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10001A8AC;
  block[3] = &unk_1002B6F98;
  streamingCopy = streaming;
  dispatch_async(dispatchQueue, block);
}

- (void)_registerForWirelessSplitterStateChanges
{
  p_splitterStateOnToken = &self->_splitterStateOnToken;
  if (self->_splitterStateOnToken == -1)
  {
    if (dword_1002F61A0 <= 30 && (dword_1002F61A0 != -1 || _LogCategory_Initialize()))
    {
      sub_1001D4B0C();
    }

    dispatchQueue = self->_dispatchQueue;
    handler[0] = _NSConcreteStackBlock;
    handler[1] = 3221225472;
    handler[2] = sub_10001A9D4;
    handler[3] = &unk_1002B6DF0;
    handler[4] = self;
    notify_register_dispatch("com.apple.bluetooth.WirelessSplitterOn", p_splitterStateOnToken, dispatchQueue, handler);
  }
}

- (void)_deregisterFromWirelessSplitterStateChanges
{
  splitterStateOnToken = self->_splitterStateOnToken;
  if (splitterStateOnToken != -1)
  {
    if (dword_1002F61A0 > 30)
    {
      goto LABEL_6;
    }

    if (dword_1002F61A0 != -1 || _LogCategory_Initialize())
    {
      sub_1001D4B84();
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

  [(AAConversationDetectSessionManager *)self _updatePauseState];
}

@end