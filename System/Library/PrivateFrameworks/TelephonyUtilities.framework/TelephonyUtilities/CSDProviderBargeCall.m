@interface CSDProviderBargeCall
+ (id)callForChannelIdentity:(id)a3;
+ (id)callForChannelIdentity:(id)a3 configuration:(id)a4;
+ (id)callForChannelSource:(id)a3 joinAction:(id)a4;
+ (id)defaultConfigurationWithProviderIdentifier:(id)a3;
- (BOOL)_activeStandardCallExists;
- (BOOL)isReceivingTransmission;
- (BOOL)isSendingTransmission;
- (CSDProviderBargeCall)initWithUUID:(id)a3 configuration:(id)a4;
- (CSDProviderBargeCallDelegate)providerBargeCallDelegate;
- (id)displayName;
- (id)provider;
- (void)_handlePushToTalkRecordingStateChanged:(id)a3;
- (void)_handleRecordingStateChanged:(id)a3;
- (void)audioApplicationMuteStatusChanged:(id)a3;
- (void)deactivate;
- (void)dealloc;
- (void)disconnectWithReason:(int)a3;
- (void)handleAudioSessionActivationStateChangedTo:(id)a3;
- (void)playSoundForSoundType:(int64_t)a3 completion:(id)a4;
- (void)playSoundForTransmissionState:(int64_t)a3 completion:(id)a4;
- (void)setProviderSource:(id)a3;
- (void)setTransmissionState:(int64_t)a3;
- (void)startTransmissionWithOriginator:(int64_t)a3;
- (void)stopTransmissionWithOriginator:(int64_t)a3;
- (void)updateUplinkMuteState;
@end

@implementation CSDProviderBargeCall

+ (id)callForChannelIdentity:(id)a3
{
  v4 = a3;
  v5 = [v4 applicationIdentifier];
  v6 = [a1 defaultConfigurationWithProviderIdentifier:v5];

  v7 = [a1 callForChannelIdentity:v4 configuration:v6];

  return v7;
}

+ (id)callForChannelIdentity:(id)a3 configuration:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_alloc_init(CXCallUpdate);
  [v7 setSupportsHolding:1];
  v8 = [CSDProviderBargeCall alloc];
  v9 = [v6 channelUUID];

  v10 = [(CSDProviderBargeCall *)v8 initWithUUID:v9 configuration:v5];
  [(CSDProviderCall *)v10 updateWithCallUpdate:v7];

  return v10;
}

+ (id)callForChannelSource:(id)a3 joinAction:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [v6 channelUpdate];
  v9 = [v8 csd_callUpdate];

  [v9 setSupportsHolding:1];
  v10 = [v7 identifier];
  v11 = [a1 defaultConfigurationWithProviderIdentifier:v10];

  [v11 setProviderSource:v7];
  v12 = [CSDProviderBargeCall alloc];
  v13 = [v6 channelUUID];

  v14 = [(CSDProviderBargeCall *)v12 initWithUUID:v13 configuration:v11];
  [(CSDProviderCall *)v14 updateWithCallUpdate:v9];

  return v14;
}

+ (id)defaultConfigurationWithProviderIdentifier:(id)a3
{
  v3 = a3;
  v4 = [[CSDProviderCallConfiguration alloc] initWithProviderIdentifier:v3];

  [(CSDProviderCallConfiguration *)v4 setEndpointOnCurrentDevice:1];
  [(CSDProviderCallConfiguration *)v4 setHeld:1];
  [(CSDProviderCallConfiguration *)v4 setOutgoing:1];
  [(CSDProviderCallConfiguration *)v4 setTransmissionMode:1];
  [(CSDProviderCallConfiguration *)v4 setAccessoryButtonEventsEnabled:1];

  return v4;
}

- (CSDProviderBargeCall)initWithUUID:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v7 = [a3 UUIDString];
  v17.receiver = self;
  v17.super_class = CSDProviderBargeCall;
  v8 = [(CSDProviderCall *)&v17 initWithUniqueProxyIdentifier:v7 configuration:v6];

  if (v8)
  {
    v9 = objc_alloc_init(TUCallSoundPlayer);
    soundPlayer = v8->_soundPlayer;
    v8->_soundPlayer = v9;

    v8->_isPlayingSystemSound = 0;
    v11 = [NSArray arrayWithObject:AVSystemController_RecordingStateDidChangeNotification];
    v12 = +[AVSystemController sharedAVSystemController];
    [v12 setAttribute:v11 forKey:AVSystemController_SubscribeToNotificationsAttribute error:0];

    v13 = +[NSNotificationCenter defaultCenter];
    v14 = AVSystemController_RecordingStateDidChangeNotification;
    v15 = +[AVSystemController sharedAVSystemController];
    [v13 addObserver:v8 selector:"_handleRecordingStateChanged:" name:v14 object:v15];
  }

  return v8;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSDProviderBargeCall;
  [(CSDProviderCall *)&v4 dealloc];
}

- (id)displayName
{
  v2 = [(CSDProviderCall *)self callerNameFromNetwork];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = &stru_100631E68;
  }

  v5 = v4;

  return v4;
}

- (id)provider
{
  v3 = [(CSDProviderBargeCall *)self providerBargeCallDelegate];
  v4 = [(CSDProviderCall *)self providerIdentifier];
  v5 = [v3 channelProviderForIdentifier:v4];

  return v5;
}

- (void)setProviderSource:(id)a3
{
  v4 = a3;
  v5 = [(CSDProviderCall *)self providerSource];
  v8.receiver = self;
  v8.super_class = CSDProviderBargeCall;
  [(CSDProviderCall *)&v8 setProviderSource:v4];

  v6 = [(CSDProviderBargeCall *)self deferredTransmitStartAction];
  v7 = v6;
  if (v4 && !v5 && v6)
  {
    [(CSDProviderBargeCall *)self setDeferredTransmitStartAction:0];
    -[CSDProviderBargeCall startTransmissionWithOriginator:](self, "startTransmissionWithOriginator:", [v7 originator]);
  }
}

- (void)setTransmissionState:(int64_t)a3
{
  v4.receiver = self;
  v4.super_class = CSDProviderBargeCall;
  [(CSDCall *)&v4 setTransmissionState:a3];
  [(CSDProviderBargeCall *)self updateUplinkMuteState];
}

- (void)updateUplinkMuteState
{
  if ([(CSDProviderBargeCall *)self _activeStandardCallExists])
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Skipping PushToTalk provider uplink mute state update because an active standard call exists.", v29, 2u);
    }

    return;
  }

  v4 = [(CSDProviderBargeCall *)self provider];

  if (![(CSDProviderBargeCall *)self isPlayingSystemSound])
  {
    v9 = [(CSDProviderBargeCall *)self providerBargeCallDelegate];
    if (v9 && (-[CSDProviderBargeCall channelSource](self, "channelSource"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [v9 isAppForegroundForChannelSource:v10], v10, v11))
    {
      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = @"NO";
        if (v4)
        {
          v13 = @"YES";
        }

        *v29 = 138412290;
        *&v29[4] = v13;
        v14 = "Unmuting PushToTalk provider uplink because the provider is running in the foreground. Provider configured: %@";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, v14, v29, 0xCu);
      }
    }

    else
    {
      if (([(CSDCall *)self transmissionState]& 2) != 0 && ![(CSDProviderBargeCall *)self isSendingTransmission])
      {
        v15 = [(CSDProviderCall *)self providerSource];
        v16 = -[CSDProviderBargeCall _recordingClientPIDsContainsProcessIdentifier:](self, "_recordingClientPIDsContainsProcessIdentifier:", [v15 processIdentifier]);

        if ((v16 & 1) == 0)
        {
          v25 = sub_100004778();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = @"NO";
            if (v4)
            {
              v26 = @"YES";
            }

            *v29 = 138412290;
            *&v29[4] = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Muting PushToTalk provider uplink because the barge call is in a receiving only state. Provider configured: %@", v29, 0xCu);
          }

          v27 = [(CSDProviderBargeCall *)self featureFlags];
          v28 = [v27 sessionBasedMutingEnabled];

          if (v28)
          {
            v20 = v4 != 0;
            v21 = self;
            v22 = 1;
            goto LABEL_28;
          }

          v23 = self;
          v24 = 1;
LABEL_31:
          [(CSDProviderCall *)v23 setUnderlyingUplinkMuted:v24, *v29];
          goto LABEL_32;
        }
      }

      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = @"NO";
        if (v4)
        {
          v17 = @"YES";
        }

        *v29 = 138412290;
        *&v29[4] = v17;
        v14 = "Unmuting PushToTalk provider uplink because the barge call is not in a receiving only state. Provider configured: %@";
        goto LABEL_25;
      }
    }

    v18 = [(CSDProviderBargeCall *)self featureFlags];
    v19 = [v18 sessionBasedMutingEnabled];

    if (v19)
    {
      v20 = v4 != 0;
      v21 = self;
      v22 = 0;
LABEL_28:
      [(CSDProviderCall *)v21 setUplinkMuted:v22 userInitiated:v20, *v29];
LABEL_32:

      return;
    }

    v23 = self;
    v24 = 0;
    goto LABEL_31;
  }

  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (v4)
    {
      v6 = @"YES";
    }

    *v29 = 138412290;
    *&v29[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Muting PushToTalk provider uplink because a system sound is being played. Provider configured: %@", v29, 0xCu);
  }

  v7 = [(CSDProviderBargeCall *)self featureFlags];
  v8 = [v7 sessionBasedMutingEnabled];

  if (v8)
  {
    [(CSDProviderCall *)self setUplinkMuted:1 userInitiated:v4 != 0];
  }

  else
  {
    [(CSDProviderCall *)self setUnderlyingUplinkMuted:1];
  }
}

- (BOOL)_activeStandardCallExists
{
  v2 = +[TUCallCenter sharedInstance];
  v3 = [v2 countOfCallsPassingTest:&stru_10061AFE0];

  return v3 != 0;
}

- (BOOL)isReceivingTransmission
{
  v3 = objc_opt_class();
  v4 = [(CSDCall *)self transmissionState];

  return [v3 isReceivingTransmission:v4];
}

- (BOOL)isSendingTransmission
{
  v3 = objc_opt_class();
  v4 = [(CSDCall *)self transmissionState];

  return [v3 isSendingTransmission:v4];
}

- (void)startTransmissionWithOriginator:(int64_t)a3
{
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received start transmission request for barge call.", buf, 2u);
  }

  if (a3 == 1 && ![(CSDProviderCall *)self accessoryButtonEventsEnabled])
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      v7 = "Ignoring barge call transmit request because the request originated from an accessory and accessory events are disabled for the call.";
      v8 = v14;
      goto LABEL_17;
    }
  }

  else if ([(CSDProviderBargeCall *)self isSendingTransmission])
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v7 = "Ignoring barge call transmit request because we are already transmitting.";
      v8 = &v13;
LABEL_17:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else if ([(CSDProviderBargeCall *)self isReceivingTransmission]&& [(CSDProviderCall *)self transmissionMode])
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v7 = "Could not begin sending transmission because barge call was receiving a transmission and does not support full-duplex mode.";
      v8 = &v12;
      goto LABEL_17;
    }
  }

  else
  {
    v6 = [(CSDProviderBargeCall *)self providerBargeCallDelegate];
    [v6 acquireIndefiniteProcessAssertionForCall:self];
    if ([(CSDProviderBargeCall *)self isOnHold])
    {
      [(CSDProviderCall *)self unhold];
    }

    v9 = [CXChannelTransmitStartAction alloc];
    v10 = [(CSDProviderBargeCall *)self uniqueProxyIdentifierUUID];
    v11 = [v9 initWithChannelUUID:v10];

    [v11 setOriginator:a3];
    [v6 performChannelAction:v11 forCall:self];
  }
}

- (void)stopTransmissionWithOriginator:(int64_t)a3
{
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received stop transmission request for barge call.", buf, 2u);
  }

  if (a3 == 1 && ![(CSDProviderCall *)self accessoryButtonEventsEnabled])
  {
    v6 = sub_100004778();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    *v13 = 0;
    v10 = "Ignoring barge call end transmit request because the request originated from an accessory and accessory events are disabled for the call.";
    v11 = v13;
    goto LABEL_13;
  }

  if (![(CSDProviderBargeCall *)self isSendingTransmission])
  {
    v6 = sub_100004778();
    if (!os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v12 = 0;
    v10 = "Ignoring barge call end transmit request because we are not transmitting.";
    v11 = &v12;
LABEL_13:
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
    goto LABEL_14;
  }

  if (![(CSDProviderBargeCall *)self isReceivingTransmission])
  {
    [(CSDProviderCall *)self hold];
  }

  v6 = [(CSDProviderBargeCall *)self providerBargeCallDelegate];
  v7 = [CXChannelTransmitStopAction alloc];
  v8 = [(CSDProviderBargeCall *)self uniqueProxyIdentifierUUID];
  v9 = [v7 initWithChannelUUID:v8];

  [v9 setOriginator:a3];
  [v6 performChannelAction:v9 forCall:self];

LABEL_14:
}

- (void)deactivate
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Deactivating PushToTalk barge call.", buf, 2u);
  }

  v4 = [(CSDProviderBargeCall *)self isSendingTransmission];
  [(CSDProviderCall *)self setActiveRemoteParticipant:0];
  [(CSDProviderBargeCall *)self setTransmissionState:1];
  if (v4)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopping transmission for PushToTalk barge call deactivation.", v10, 2u);
    }

    v6 = [(CSDProviderBargeCall *)self providerBargeCallDelegate];
    v7 = [CXChannelTransmitStopAction alloc];
    v8 = [(CSDProviderBargeCall *)self uniqueProxyIdentifierUUID];
    v9 = [v7 initWithChannelUUID:v8];

    [v9 setOriginator:3];
    [v6 performChannelAction:v9 forCall:self];
  }

  [(CSDProviderCall *)self hold];
  [(CSDProviderCall *)self setHeld:1];
}

- (void)disconnectWithReason:(int)a3
{
  v10.receiver = self;
  v10.super_class = CSDProviderBargeCall;
  [(CSDProviderCall *)&v10 disconnectWithReason:?];
  v5 = [CXChannelLeaveAction alloc];
  v6 = [(CSDProviderBargeCall *)self uniqueProxyIdentifierUUID];
  v7 = [v5 initWithChannelUUID:v6];

  if (a3 == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 4;
  }

  [v7 setOriginator:v8];
  v9 = [(CSDProviderBargeCall *)self providerBargeCallDelegate];
  [v9 performChannelAction:v7 forCall:self];
}

- (void)_handleRecordingStateChanged:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v5 = [(CSDProviderBargeCall *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5A6C;
  block[3] = &unk_10061A600;
  objc_copyWeak(&v9, &location);
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_handlePushToTalkRecordingStateChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDProviderCall *)self providerSource];
  v6 = -[CSDProviderBargeCall _recordingClientPIDsNotification:containsProcessIdentifier:](self, "_recordingClientPIDsNotification:containsProcessIdentifier:", v4, [v5 processIdentifier]);

  if (v6)
  {
    if ([(CSDProviderBargeCall *)self isSendingTransmission])
    {
      v7 = [(CSDCall *)self transmissionState];

      [(CSDProviderBargeCall *)self playSoundForTransmissionState:v7 completion:0];
    }
  }

  else
  {

    [(CSDProviderBargeCall *)self updateUplinkMuteState];
  }
}

- (void)playSoundForTransmissionState:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  if ((a3 & 8) != 0)
  {
    if ((a3 & 4) != 0)
    {
      v8 = 20;
    }

    else
    {
      v8 = 21;
    }

    [(CSDProviderBargeCall *)self playSoundForSoundType:v8 completion:v6];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = a3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "There was no sound type found for transmission state %lu", &v9, 0xCu);
    }
  }
}

- (void)playSoundForSoundType:(int64_t)a3 completion:(id)a4
{
  v6 = a4;
  [(CSDProviderBargeCall *)self setIsPlayingSystemSound:1];
  if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 0x14)
  {
    v7 = [(CSDProviderBargeCall *)self featureFlags];
    v8 = [v7 sessionBasedMutingEnabled];

    if (v8)
    {
      [(CSDCall *)self setUplinkMuted:1];
    }

    else
    {
      [(CSDProviderCall *)self setUnderlyingUplinkMuted:1];
    }
  }

  v13 = _NSConcreteStackBlock;
  v14 = 3221225472;
  v15 = sub_1000D5ED0;
  v16 = &unk_10061B030;
  v17 = self;
  v18 = v6;
  v9 = v6;
  v10 = objc_retainBlock(&v13);
  v11 = [(CSDProviderBargeCall *)self soundPlayer:v13];
  v12 = [v11 attemptToPlaySoundType:a3 forCall:self completion:v10];

  if ((v12 & 1) == 0)
  {
    [(CSDProviderBargeCall *)self setIsPlayingSystemSound:0];
    [(CSDProviderBargeCall *)self updateUplinkMuteState];
  }
}

- (void)handleAudioSessionActivationStateChangedTo:(id)a3
{
  v6.receiver = self;
  v6.super_class = CSDProviderBargeCall;
  v4 = a3;
  [(CSDProviderCall *)&v6 handleAudioSessionActivationStateChangedTo:v4];
  if ([(CSDCall *)self transmissionState:v6.receiver]== 5)
  {
    [(CSDProviderBargeCall *)self playSoundForTransmissionState:[(CSDCall *)self transmissionState] completion:0];
  }

  v5 = [(CSDProviderBargeCall *)self channelSource];
  [v5 handleAudioSessionActivationStateChangedTo:v4];
}

- (void)audioApplicationMuteStatusChanged:(id)a3
{
  v4 = a3;
  v5 = [(CSDProviderBargeCall *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D6140;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (CSDProviderBargeCallDelegate)providerBargeCallDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_providerBargeCallDelegate);

  return WeakRetained;
}

@end