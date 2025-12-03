@interface CSDProviderBargeCall
+ (id)callForChannelIdentity:(id)identity;
+ (id)callForChannelIdentity:(id)identity configuration:(id)configuration;
+ (id)callForChannelSource:(id)source joinAction:(id)action;
+ (id)defaultConfigurationWithProviderIdentifier:(id)identifier;
- (BOOL)_activeStandardCallExists;
- (BOOL)isReceivingTransmission;
- (BOOL)isSendingTransmission;
- (CSDProviderBargeCall)initWithUUID:(id)d configuration:(id)configuration;
- (CSDProviderBargeCallDelegate)providerBargeCallDelegate;
- (id)displayName;
- (id)provider;
- (void)_handlePushToTalkRecordingStateChanged:(id)changed;
- (void)_handleRecordingStateChanged:(id)changed;
- (void)audioApplicationMuteStatusChanged:(id)changed;
- (void)deactivate;
- (void)dealloc;
- (void)disconnectWithReason:(int)reason;
- (void)handleAudioSessionActivationStateChangedTo:(id)to;
- (void)playSoundForSoundType:(int64_t)type completion:(id)completion;
- (void)playSoundForTransmissionState:(int64_t)state completion:(id)completion;
- (void)setProviderSource:(id)source;
- (void)setTransmissionState:(int64_t)state;
- (void)startTransmissionWithOriginator:(int64_t)originator;
- (void)stopTransmissionWithOriginator:(int64_t)originator;
- (void)updateUplinkMuteState;
@end

@implementation CSDProviderBargeCall

+ (id)callForChannelIdentity:(id)identity
{
  identityCopy = identity;
  applicationIdentifier = [identityCopy applicationIdentifier];
  v6 = [self defaultConfigurationWithProviderIdentifier:applicationIdentifier];

  v7 = [self callForChannelIdentity:identityCopy configuration:v6];

  return v7;
}

+ (id)callForChannelIdentity:(id)identity configuration:(id)configuration
{
  configurationCopy = configuration;
  identityCopy = identity;
  v7 = objc_alloc_init(CXCallUpdate);
  [v7 setSupportsHolding:1];
  v8 = [CSDProviderBargeCall alloc];
  channelUUID = [identityCopy channelUUID];

  v10 = [(CSDProviderBargeCall *)v8 initWithUUID:channelUUID configuration:configurationCopy];
  [(CSDProviderCall *)v10 updateWithCallUpdate:v7];

  return v10;
}

+ (id)callForChannelSource:(id)source joinAction:(id)action
{
  actionCopy = action;
  sourceCopy = source;
  channelUpdate = [actionCopy channelUpdate];
  csd_callUpdate = [channelUpdate csd_callUpdate];

  [csd_callUpdate setSupportsHolding:1];
  identifier = [sourceCopy identifier];
  v11 = [self defaultConfigurationWithProviderIdentifier:identifier];

  [v11 setProviderSource:sourceCopy];
  v12 = [CSDProviderBargeCall alloc];
  channelUUID = [actionCopy channelUUID];

  v14 = [(CSDProviderBargeCall *)v12 initWithUUID:channelUUID configuration:v11];
  [(CSDProviderCall *)v14 updateWithCallUpdate:csd_callUpdate];

  return v14;
}

+ (id)defaultConfigurationWithProviderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = [[CSDProviderCallConfiguration alloc] initWithProviderIdentifier:identifierCopy];

  [(CSDProviderCallConfiguration *)v4 setEndpointOnCurrentDevice:1];
  [(CSDProviderCallConfiguration *)v4 setHeld:1];
  [(CSDProviderCallConfiguration *)v4 setOutgoing:1];
  [(CSDProviderCallConfiguration *)v4 setTransmissionMode:1];
  [(CSDProviderCallConfiguration *)v4 setAccessoryButtonEventsEnabled:1];

  return v4;
}

- (CSDProviderBargeCall)initWithUUID:(id)d configuration:(id)configuration
{
  configurationCopy = configuration;
  uUIDString = [d UUIDString];
  v17.receiver = self;
  v17.super_class = CSDProviderBargeCall;
  v8 = [(CSDProviderCall *)&v17 initWithUniqueProxyIdentifier:uUIDString configuration:configurationCopy];

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
  callerNameFromNetwork = [(CSDProviderCall *)self callerNameFromNetwork];
  v3 = callerNameFromNetwork;
  if (callerNameFromNetwork)
  {
    v4 = callerNameFromNetwork;
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
  providerBargeCallDelegate = [(CSDProviderBargeCall *)self providerBargeCallDelegate];
  providerIdentifier = [(CSDProviderCall *)self providerIdentifier];
  v5 = [providerBargeCallDelegate channelProviderForIdentifier:providerIdentifier];

  return v5;
}

- (void)setProviderSource:(id)source
{
  sourceCopy = source;
  providerSource = [(CSDProviderCall *)self providerSource];
  v8.receiver = self;
  v8.super_class = CSDProviderBargeCall;
  [(CSDProviderCall *)&v8 setProviderSource:sourceCopy];

  deferredTransmitStartAction = [(CSDProviderBargeCall *)self deferredTransmitStartAction];
  v7 = deferredTransmitStartAction;
  if (sourceCopy && !providerSource && deferredTransmitStartAction)
  {
    [(CSDProviderBargeCall *)self setDeferredTransmitStartAction:0];
    -[CSDProviderBargeCall startTransmissionWithOriginator:](self, "startTransmissionWithOriginator:", [v7 originator]);
  }
}

- (void)setTransmissionState:(int64_t)state
{
  v4.receiver = self;
  v4.super_class = CSDProviderBargeCall;
  [(CSDCall *)&v4 setTransmissionState:state];
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

  provider = [(CSDProviderBargeCall *)self provider];

  if (![(CSDProviderBargeCall *)self isPlayingSystemSound])
  {
    providerBargeCallDelegate = [(CSDProviderBargeCall *)self providerBargeCallDelegate];
    if (providerBargeCallDelegate && (-[CSDProviderBargeCall channelSource](self, "channelSource"), v10 = objc_claimAutoreleasedReturnValue(), v11 = [providerBargeCallDelegate isAppForegroundForChannelSource:v10], v10, v11))
    {
      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = @"NO";
        if (provider)
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
        providerSource = [(CSDProviderCall *)self providerSource];
        v16 = -[CSDProviderBargeCall _recordingClientPIDsContainsProcessIdentifier:](self, "_recordingClientPIDsContainsProcessIdentifier:", [providerSource processIdentifier]);

        if ((v16 & 1) == 0)
        {
          v25 = sub_100004778();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = @"NO";
            if (provider)
            {
              v26 = @"YES";
            }

            *v29 = 138412290;
            *&v29[4] = v26;
            _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Muting PushToTalk provider uplink because the barge call is in a receiving only state. Provider configured: %@", v29, 0xCu);
          }

          featureFlags = [(CSDProviderBargeCall *)self featureFlags];
          sessionBasedMutingEnabled = [featureFlags sessionBasedMutingEnabled];

          if (sessionBasedMutingEnabled)
          {
            v20 = provider != 0;
            selfCopy3 = self;
            v22 = 1;
            goto LABEL_28;
          }

          selfCopy4 = self;
          v24 = 1;
LABEL_31:
          [(CSDProviderCall *)selfCopy4 setUnderlyingUplinkMuted:v24, *v29];
          goto LABEL_32;
        }
      }

      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v17 = @"NO";
        if (provider)
        {
          v17 = @"YES";
        }

        *v29 = 138412290;
        *&v29[4] = v17;
        v14 = "Unmuting PushToTalk provider uplink because the barge call is not in a receiving only state. Provider configured: %@";
        goto LABEL_25;
      }
    }

    featureFlags2 = [(CSDProviderBargeCall *)self featureFlags];
    sessionBasedMutingEnabled2 = [featureFlags2 sessionBasedMutingEnabled];

    if (sessionBasedMutingEnabled2)
    {
      v20 = provider != 0;
      selfCopy3 = self;
      v22 = 0;
LABEL_28:
      [(CSDProviderCall *)selfCopy3 setUplinkMuted:v22 userInitiated:v20, *v29];
LABEL_32:

      return;
    }

    selfCopy4 = self;
    v24 = 0;
    goto LABEL_31;
  }

  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = @"NO";
    if (provider)
    {
      v6 = @"YES";
    }

    *v29 = 138412290;
    *&v29[4] = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Muting PushToTalk provider uplink because a system sound is being played. Provider configured: %@", v29, 0xCu);
  }

  featureFlags3 = [(CSDProviderBargeCall *)self featureFlags];
  sessionBasedMutingEnabled3 = [featureFlags3 sessionBasedMutingEnabled];

  if (sessionBasedMutingEnabled3)
  {
    [(CSDProviderCall *)self setUplinkMuted:1 userInitiated:provider != 0];
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
  transmissionState = [(CSDCall *)self transmissionState];

  return [v3 isReceivingTransmission:transmissionState];
}

- (BOOL)isSendingTransmission
{
  v3 = objc_opt_class();
  transmissionState = [(CSDCall *)self transmissionState];

  return [v3 isSendingTransmission:transmissionState];
}

- (void)startTransmissionWithOriginator:(int64_t)originator
{
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received start transmission request for barge call.", buf, 2u);
  }

  if (originator == 1 && ![(CSDProviderCall *)self accessoryButtonEventsEnabled])
  {
    providerBargeCallDelegate = sub_100004778();
    if (os_log_type_enabled(providerBargeCallDelegate, OS_LOG_TYPE_DEFAULT))
    {
      *v14 = 0;
      v7 = "Ignoring barge call transmit request because the request originated from an accessory and accessory events are disabled for the call.";
      v8 = v14;
      goto LABEL_17;
    }
  }

  else if ([(CSDProviderBargeCall *)self isSendingTransmission])
  {
    providerBargeCallDelegate = sub_100004778();
    if (os_log_type_enabled(providerBargeCallDelegate, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 0;
      v7 = "Ignoring barge call transmit request because we are already transmitting.";
      v8 = &v13;
LABEL_17:
      _os_log_impl(&_mh_execute_header, providerBargeCallDelegate, OS_LOG_TYPE_DEFAULT, v7, v8, 2u);
    }
  }

  else if ([(CSDProviderBargeCall *)self isReceivingTransmission]&& [(CSDProviderCall *)self transmissionMode])
  {
    providerBargeCallDelegate = sub_100004778();
    if (os_log_type_enabled(providerBargeCallDelegate, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 0;
      v7 = "Could not begin sending transmission because barge call was receiving a transmission and does not support full-duplex mode.";
      v8 = &v12;
      goto LABEL_17;
    }
  }

  else
  {
    providerBargeCallDelegate = [(CSDProviderBargeCall *)self providerBargeCallDelegate];
    [providerBargeCallDelegate acquireIndefiniteProcessAssertionForCall:self];
    if ([(CSDProviderBargeCall *)self isOnHold])
    {
      [(CSDProviderCall *)self unhold];
    }

    v9 = [CXChannelTransmitStartAction alloc];
    uniqueProxyIdentifierUUID = [(CSDProviderBargeCall *)self uniqueProxyIdentifierUUID];
    v11 = [v9 initWithChannelUUID:uniqueProxyIdentifierUUID];

    [v11 setOriginator:originator];
    [providerBargeCallDelegate performChannelAction:v11 forCall:self];
  }
}

- (void)stopTransmissionWithOriginator:(int64_t)originator
{
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received stop transmission request for barge call.", buf, 2u);
  }

  if (originator == 1 && ![(CSDProviderCall *)self accessoryButtonEventsEnabled])
  {
    providerBargeCallDelegate = sub_100004778();
    if (!os_log_type_enabled(providerBargeCallDelegate, OS_LOG_TYPE_DEFAULT))
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
    providerBargeCallDelegate = sub_100004778();
    if (!os_log_type_enabled(providerBargeCallDelegate, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_14;
    }

    v12 = 0;
    v10 = "Ignoring barge call end transmit request because we are not transmitting.";
    v11 = &v12;
LABEL_13:
    _os_log_impl(&_mh_execute_header, providerBargeCallDelegate, OS_LOG_TYPE_DEFAULT, v10, v11, 2u);
    goto LABEL_14;
  }

  if (![(CSDProviderBargeCall *)self isReceivingTransmission])
  {
    [(CSDProviderCall *)self hold];
  }

  providerBargeCallDelegate = [(CSDProviderBargeCall *)self providerBargeCallDelegate];
  v7 = [CXChannelTransmitStopAction alloc];
  uniqueProxyIdentifierUUID = [(CSDProviderBargeCall *)self uniqueProxyIdentifierUUID];
  v9 = [v7 initWithChannelUUID:uniqueProxyIdentifierUUID];

  [v9 setOriginator:originator];
  [providerBargeCallDelegate performChannelAction:v9 forCall:self];

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

  isSendingTransmission = [(CSDProviderBargeCall *)self isSendingTransmission];
  [(CSDProviderCall *)self setActiveRemoteParticipant:0];
  [(CSDProviderBargeCall *)self setTransmissionState:1];
  if (isSendingTransmission)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Stopping transmission for PushToTalk barge call deactivation.", v10, 2u);
    }

    providerBargeCallDelegate = [(CSDProviderBargeCall *)self providerBargeCallDelegate];
    v7 = [CXChannelTransmitStopAction alloc];
    uniqueProxyIdentifierUUID = [(CSDProviderBargeCall *)self uniqueProxyIdentifierUUID];
    v9 = [v7 initWithChannelUUID:uniqueProxyIdentifierUUID];

    [v9 setOriginator:3];
    [providerBargeCallDelegate performChannelAction:v9 forCall:self];
  }

  [(CSDProviderCall *)self hold];
  [(CSDProviderCall *)self setHeld:1];
}

- (void)disconnectWithReason:(int)reason
{
  v10.receiver = self;
  v10.super_class = CSDProviderBargeCall;
  [(CSDProviderCall *)&v10 disconnectWithReason:?];
  v5 = [CXChannelLeaveAction alloc];
  uniqueProxyIdentifierUUID = [(CSDProviderBargeCall *)self uniqueProxyIdentifierUUID];
  v7 = [v5 initWithChannelUUID:uniqueProxyIdentifierUUID];

  if (reason == 2)
  {
    v8 = 2;
  }

  else
  {
    v8 = 4;
  }

  [v7 setOriginator:v8];
  providerBargeCallDelegate = [(CSDProviderBargeCall *)self providerBargeCallDelegate];
  [providerBargeCallDelegate performChannelAction:v7 forCall:self];
}

- (void)_handleRecordingStateChanged:(id)changed
{
  changedCopy = changed;
  objc_initWeak(&location, self);
  queue = [(CSDProviderBargeCall *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000D5A6C;
  block[3] = &unk_10061A600;
  objc_copyWeak(&v9, &location);
  v8 = changedCopy;
  v6 = changedCopy;
  dispatch_async(queue, block);

  objc_destroyWeak(&v9);
  objc_destroyWeak(&location);
}

- (void)_handlePushToTalkRecordingStateChanged:(id)changed
{
  changedCopy = changed;
  providerSource = [(CSDProviderCall *)self providerSource];
  v6 = -[CSDProviderBargeCall _recordingClientPIDsNotification:containsProcessIdentifier:](self, "_recordingClientPIDsNotification:containsProcessIdentifier:", changedCopy, [providerSource processIdentifier]);

  if (v6)
  {
    if ([(CSDProviderBargeCall *)self isSendingTransmission])
    {
      transmissionState = [(CSDCall *)self transmissionState];

      [(CSDProviderBargeCall *)self playSoundForTransmissionState:transmissionState completion:0];
    }
  }

  else
  {

    [(CSDProviderBargeCall *)self updateUplinkMuteState];
  }
}

- (void)playSoundForTransmissionState:(int64_t)state completion:(id)completion
{
  completionCopy = completion;
  if ((state & 8) != 0)
  {
    if ((state & 4) != 0)
    {
      v8 = 20;
    }

    else
    {
      v8 = 21;
    }

    [(CSDProviderBargeCall *)self playSoundForSoundType:v8 completion:completionCopy];
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      stateCopy = state;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "There was no sound type found for transmission state %lu", &v9, 0xCu);
    }
  }
}

- (void)playSoundForSoundType:(int64_t)type completion:(id)completion
{
  completionCopy = completion;
  [(CSDProviderBargeCall *)self setIsPlayingSystemSound:1];
  if ((type & 0xFFFFFFFFFFFFFFFELL) == 0x14)
  {
    featureFlags = [(CSDProviderBargeCall *)self featureFlags];
    sessionBasedMutingEnabled = [featureFlags sessionBasedMutingEnabled];

    if (sessionBasedMutingEnabled)
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
  selfCopy = self;
  v18 = completionCopy;
  v9 = completionCopy;
  v10 = objc_retainBlock(&v13);
  v11 = [(CSDProviderBargeCall *)self soundPlayer:v13];
  v12 = [v11 attemptToPlaySoundType:type forCall:self completion:v10];

  if ((v12 & 1) == 0)
  {
    [(CSDProviderBargeCall *)self setIsPlayingSystemSound:0];
    [(CSDProviderBargeCall *)self updateUplinkMuteState];
  }
}

- (void)handleAudioSessionActivationStateChangedTo:(id)to
{
  v6.receiver = self;
  v6.super_class = CSDProviderBargeCall;
  toCopy = to;
  [(CSDProviderCall *)&v6 handleAudioSessionActivationStateChangedTo:toCopy];
  if ([(CSDCall *)self transmissionState:v6.receiver]== 5)
  {
    [(CSDProviderBargeCall *)self playSoundForTransmissionState:[(CSDCall *)self transmissionState] completion:0];
  }

  channelSource = [(CSDProviderBargeCall *)self channelSource];
  [channelSource handleAudioSessionActivationStateChangedTo:toCopy];
}

- (void)audioApplicationMuteStatusChanged:(id)changed
{
  changedCopy = changed;
  queue = [(CSDProviderBargeCall *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000D6140;
  v7[3] = &unk_100619D88;
  v8 = changedCopy;
  selfCopy = self;
  v6 = changedCopy;
  dispatch_async(queue, v7);
}

- (CSDProviderBargeCallDelegate)providerBargeCallDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_providerBargeCallDelegate);

  return WeakRetained;
}

@end