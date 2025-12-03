@interface TUProxyCall
+ (id)proxyCallWithCall:(id)call;
- (CGRect)remoteVideoContentRect;
- (CGSize)localAspectRatioForOrientation:(int64_t)orientation;
- (CGSize)remoteAspectRatio;
- (CGSize)remoteScreenAspectRatio;
- (CGSize)remoteScreenLandscapeAspectRatio;
- (CGSize)remoteScreenPortraitAspectRatio;
- (TUCallServicesProxyCallActions)proxyCallActionsDelegate;
- (TUProxyCall)initWithCoder:(id)coder;
- (int)avcRemoteVideoModeForMode:(int64_t)mode;
- (int64_t)_cameraTypeForVideoAttributeCamera:(int)camera;
- (int64_t)_orientationForVideoAttributesOrientation:(int)orientation;
- (void)_createLocalVideoIfNecessary;
- (void)_createRemoteVideoIfNecessary;
- (void)_synchronizeLocalVideo;
- (void)_synchronizeRemoteVideo;
- (void)_updateVideoCallAttributes:(id)attributes;
- (void)_updateVideoStreamToken:(int64_t)token;
- (void)addScreenSharingType:(unint64_t)type;
- (void)answerWithRequest:(id)request;
- (void)disconnectWithReason:(int)reason;
- (void)encodeWithCoder:(id)coder;
- (void)remoteVideoClient:(id)client remoteMediaDidStall:(BOOL)stall;
- (void)remoteVideoClient:(id)client remoteScreenAttributesDidChange:(id)change;
- (void)remoteVideoClient:(id)client remoteVideoAttributesDidChange:(id)change;
- (void)remoteVideoClient:(id)client remoteVideoDidPause:(BOOL)pause;
- (void)remoteVideoClient:(id)client videoDidDegrade:(BOOL)degrade;
- (void)sendHardPauseDigits;
- (void)setBluetoothAudioFormat:(int64_t)format;
- (void)setCallDisconnectedDueToComponentCrash;
- (void)setDisconnectedReason:(int)reason;
- (void)setDownlinkMuted:(BOOL)muted;
- (void)setEmergencyMediaItems:(id)items;
- (void)setEndpointOnCurrentDevice:(BOOL)device;
- (void)setHasEmergencyVideoStream:(BOOL)stream;
- (void)setIsSendingVideo:(BOOL)video;
- (void)setLocalVideoLayer:(id)layer forMode:(int64_t)mode;
- (void)setMediaStalled:(BOOL)stalled;
- (void)setMixesVoiceWithMedia:(BOOL)media;
- (void)setRemoteVideoLayer:(id)layer forMode:(int64_t)mode;
- (void)setRemoteVideoPresentationSize:(CGSize)size;
- (void)setRequiresRemoteVideo:(BOOL)video;
- (void)setScreenShareAttributes:(id)attributes;
- (void)setScreening:(BOOL)screening;
- (void)setSharingScreen:(BOOL)screen;
- (void)setSharingScreen:(BOOL)screen attributes:(id)attributes;
- (void)setShouldSuppressRingtone:(BOOL)ringtone;
- (void)setTransitionStatus:(int)status;
- (void)setUplinkMuted:(BOOL)muted;
- (void)setVideoDegraded:(BOOL)degraded;
- (void)setVideoPaused:(BOOL)paused;
- (void)setWantsHoldMusic:(BOOL)music;
- (void)updateProxyCallWithDaemon;
- (void)updateWithCall:(id)call;
@end

@implementation TUProxyCall

- (CGSize)remoteAspectRatio
{
  width = self->_remoteAspectRatio.width;
  height = self->_remoteAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGRect)remoteVideoContentRect
{
  x = self->_remoteVideoContentRect.origin.x;
  y = self->_remoteVideoContentRect.origin.y;
  width = self->_remoteVideoContentRect.size.width;
  height = self->_remoteVideoContentRect.size.height;
  result.size.height = height;
  result.size.width = width;
  result.origin.y = y;
  result.origin.x = x;
  return result;
}

- (CGSize)remoteScreenAspectRatio
{
  remoteScreenOrientation = [(TUProxyCall *)self remoteScreenOrientation];

  [(TUProxyCall *)self localAspectRatioForOrientation:remoteScreenOrientation];
  result.height = v5;
  result.width = v4;
  return result;
}

- (CGSize)remoteScreenPortraitAspectRatio
{
  width = self->_remoteScreenPortraitAspectRatio.width;
  height = self->_remoteScreenPortraitAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

+ (id)proxyCallWithCall:(id)call
{
  callCopy = call;
  v5 = [[self alloc] initWithCall:callCopy];

  return v5;
}

- (void)updateWithCall:(id)call
{
  v74.receiver = self;
  v74.super_class = TUProxyCall;
  callCopy = call;
  [(TUCall *)&v74 updateWithCall:callCopy];
  activeRemoteParticipant = [callCopy activeRemoteParticipant];
  v6 = [activeRemoteParticipant copy];
  activeRemoteParticipant = self->_activeRemoteParticipant;
  self->_activeRemoteParticipant = v6;

  announceProviderIdentifier = [callCopy announceProviderIdentifier];
  v9 = [announceProviderIdentifier copy];
  announceProviderIdentifier = self->_announceProviderIdentifier;
  self->_announceProviderIdentifier = v9;

  handle = [callCopy handle];
  handle = self->_handle;
  self->_handle = handle;

  isoCountryCode = [callCopy isoCountryCode];
  v14 = [isoCountryCode copy];
  isoCountryCode = self->_isoCountryCode;
  self->_isoCountryCode = v14;

  provider = [callCopy provider];
  base = [provider base];
  provider = self->_provider;
  self->_provider = base;

  initiator = [callCopy initiator];
  initiator = self->_initiator;
  self->_initiator = initiator;

  self->_callStatus = [callCopy callStatus];
  callerNameFromNetwork = [callCopy callerNameFromNetwork];
  v22 = [callerNameFromNetwork copy];
  callerNameFromNetwork = self->_callerNameFromNetwork;
  self->_callerNameFromNetwork = v22;

  self->_outgoing = [callCopy isOutgoing];
  self->_voicemail = [callCopy isVoicemail];
  self->_hostedOnCurrentDevice = [callCopy isHostedOnCurrentDevice];
  callUUID = [callCopy callUUID];
  v25 = [callUUID copy];
  callUUID = self->_callUUID;
  self->_callUUID = v25;

  self->_isVideo = [callCopy isVideo];
  self->_thirdPartyVideo = [callCopy isThirdPartyVideo];
  self->_isSendingAudio = [callCopy isSendingAudio];
  self->_isSendingVideo = [callCopy isSendingVideo];
  self->_blocked = [callCopy isBlocked];
  self->_emergency = [callCopy isEmergency];
  self->_hasEmergencyVideoStream = [callCopy hasEmergencyVideoStream];
  emergencyMediaItems = [callCopy emergencyMediaItems];
  v28 = [emergencyMediaItems copy];
  emergencyMediaItems = self->_emergencyMediaItems;
  self->_emergencyMediaItems = v28;

  self->_failureExpected = [callCopy isFailureExpected];
  self->_international = [callCopy isInternational];
  self->_domestic = [callCopy isDomestic];
  self->_sos = [callCopy isSOS];
  self->_supportsEmergencyFallback = [callCopy supportsEmergencyFallback];
  self->_usingBaseband = [callCopy isUsingBaseband];
  self->_ttyType = [callCopy ttyType];
  self->_bluetoothAudioFormat = [callCopy bluetoothAudioFormat];
  self->_mixesVoiceWithMedia = [callCopy mixesVoiceWithMedia];
  self->_supportsTTYWithVoice = [callCopy supportsTTYWithVoice];
  audioCategory = [callCopy audioCategory];
  audioCategory = self->_audioCategory;
  self->_audioCategory = audioCategory;

  audioMode = [callCopy audioMode];
  audioMode = self->_audioMode;
  self->_audioMode = audioMode;

  self->_needsManualInCallSounds = [callCopy needsManualInCallSounds];
  endedReasonUserInfo = [callCopy endedReasonUserInfo];
  v35 = [endedReasonUserInfo copy];
  endedReasonUserInfo = self->_endedReasonUserInfo;
  self->_endedReasonUserInfo = v35;

  endedErrorString = [callCopy endedErrorString];
  v38 = [endedErrorString copy];
  endedErrorString = self->_endedErrorString;
  self->_endedErrorString = v38;

  endedReasonString = [callCopy endedReasonString];
  v41 = [endedReasonString copy];
  endedReasonString = self->_endedReasonString;
  self->_endedReasonString = v41;

  self->_uplinkMuted = [callCopy isUplinkMuted];
  self->_downlinkMuted = [callCopy isDownlinkMuted];
  self->_callRelaySupport = [callCopy callRelaySupport];
  localFrequency = [callCopy localFrequency];
  localFrequency = self->_localFrequency;
  self->_localFrequency = localFrequency;

  remoteFrequency = [callCopy remoteFrequency];
  remoteFrequency = self->_remoteFrequency;
  self->_remoteFrequency = remoteFrequency;

  [callCopy localMeterLevel];
  self->_localMeterLevel = v47;
  [callCopy remoteMeterLevel];
  self->_remoteMeterLevel = v48;
  callGroupUUID = [callCopy callGroupUUID];
  callGroupUUID = self->_callGroupUUID;
  self->_callGroupUUID = callGroupUUID;

  providerContext = [callCopy providerContext];
  v52 = [providerContext copy];
  providerContext = self->_providerContext;
  self->_providerContext = v52;

  displayContext = [callCopy displayContext];
  v55 = [displayContext copy];
  displayContext = self->_displayContext;
  self->_displayContext = v55;

  remoteParticipantHandles = [callCopy remoteParticipantHandles];
  v58 = [remoteParticipantHandles copy];
  remoteParticipantHandles = self->_remoteParticipantHandles;
  self->_remoteParticipantHandles = v58;

  self->_remoteUplinkMuted = [callCopy isRemoteUplinkMuted];
  localSenderIdentityUUID = [callCopy localSenderIdentityUUID];
  localSenderIdentityUUID = self->_localSenderIdentityUUID;
  self->_localSenderIdentityUUID = localSenderIdentityUUID;

  localSenderIdentityAccountUUID = [callCopy localSenderIdentityAccountUUID];
  localSenderIdentityAccountUUID = self->_localSenderIdentityAccountUUID;
  self->_localSenderIdentityAccountUUID = localSenderIdentityAccountUUID;

  self->_shouldSuppressInCallUI = [callCopy shouldSuppressInCallUI];
  self->_launchInBackground = [callCopy launchInBackground];
  self->_mutuallyExclusiveCall = [callCopy isMutuallyExclusiveCall];
  self->_wantsStagingArea = [callCopy wantsStagingArea];
  self->_inputAudioPowerSpectrumToken = [callCopy inputAudioPowerSpectrumToken];
  self->_outputAudioPowerSpectrumToken = [callCopy outputAudioPowerSpectrumToken];
  self->_isReRing = [callCopy isReRing];
  self->_originatingUIType = [callCopy originatingUIType];
  self->_sharingScreen = [callCopy isSharingScreen];
  self->_conversation = [callCopy isConversation];
  screenShareAttributes = [callCopy screenShareAttributes];
  screenShareAttributes = self->_screenShareAttributes;
  self->_screenShareAttributes = screenShareAttributes;

  tokens = [callCopy tokens];
  tokens = self->_tokens;
  self->_tokens = tokens;

  localMemberHandleValue = [callCopy localMemberHandleValue];
  localMemberHandleValue = self->_localMemberHandleValue;
  self->_localMemberHandleValue = localMemberHandleValue;

  self->_serviceStatus = [callCopy serviceStatus];
  self->_transmissionMode = [callCopy transmissionMode];
  self->_accessoryButtonEventsEnabled = [callCopy accessoryButtonEventsEnabled];
  self->_receivingTransmission = [callCopy isReceivingTransmission];
  self->_sendingTransmission = [callCopy isSendingTransmission];
  self->_ptt = [callCopy isPTT];
  channelImageURL = [callCopy channelImageURL];
  channelImageURL = self->_channelImageURL;
  self->_channelImageURL = channelImageURL;

  self->_recordingAvailability = [callCopy recordingAvailability];
  self->_translationAvailability = [callCopy translationAvailability];
  self->_supportsScreening = [callCopy supportsScreening];
  self->_screenSharingIntention = [callCopy screenSharingIntention];
  self->_screenSharingType = [callCopy screenSharingType];
  self->_isSharePlayCapable = [callCopy isSharePlayCapable];
  self->_nearbyMode = [callCopy nearbyMode];
  videoCallAttributes = [callCopy videoCallAttributes];
  [(TUProxyCall *)self _updateVideoCallAttributes:videoCallAttributes];

  videoStreamToken = [callCopy videoStreamToken];
  [(TUProxyCall *)self _updateVideoStreamToken:videoStreamToken];
}

- (void)disconnectWithReason:(int)reason
{
  v12 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = TUProxyCall;
  [(TUCall *)&v9 disconnectWithReason:?];
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    reasonCopy = reason;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "disconnectWithReason: reason: %d", buf, 8u);
  }

  proxyCallActionsDelegate = [(TUProxyCall *)self proxyCallActionsDelegate];
  uniqueProxyIdentifier = [(TUCall *)self uniqueProxyIdentifier];
  [proxyCallActionsDelegate disconnectCallWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)answerWithRequest:(id)request
{
  v6.receiver = self;
  v6.super_class = TUProxyCall;
  requestCopy = request;
  [(TUCall *)&v6 answerWithRequest:requestCopy];
  v5 = [(TUProxyCall *)self proxyCallActionsDelegate:v6.receiver];
  [v5 answerCallWithRequest:requestCopy];
}

- (void)setDisconnectedReason:(int)reason
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(TUCall *)self disconnectedReason]!= reason)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v11 = @"disconnectedReason";
      v12 = 1024;
      disconnectedReason = [(TUCall *)self disconnectedReason];
      v14 = 1024;
      reasonCopy = reason;
      v16 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set %@ from %d to %d for %@. Posting necessary notifications and updating daemon", buf, 0x22u);
    }

    callNotificationManager = [(TUCall *)self callNotificationManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37__TUProxyCall_setDisconnectedReason___block_invoke;
    v8[3] = &unk_1E74256D0;
    reasonCopy2 = reason;
    v8[4] = self;
    [callNotificationManager postNotificationsForCall:self afterUpdatesInBlock:v8];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __37__TUProxyCall_setDisconnectedReason___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6.receiver = *(a1 + 32);
  v6.super_class = TUProxyCall;
  objc_msgSendSuper2(&v6, sel_setDisconnectedReason_, v2);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __37__TUProxyCall_setDisconnectedReason___block_invoke_2;
  aBlock[3] = &unk_1E7424950;
  aBlock[4] = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3);
  }
}

- (void)setShouldSuppressRingtone:(BOOL)ringtone
{
  ringtoneCopy = ringtone;
  v18 = *MEMORY[0x1E69E9840];
  if ([(TUCall *)self shouldSuppressRingtone]!= ringtone)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v11 = @"shouldSuppressRingtone";
      v12 = 1024;
      shouldSuppressRingtone = [(TUCall *)self shouldSuppressRingtone];
      v14 = 1024;
      v15 = ringtoneCopy;
      v16 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set %@ from %d to %d for %@. Posting necessary notifications and updating daemon", buf, 0x22u);
    }

    callNotificationManager = [(TUCall *)self callNotificationManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__TUProxyCall_setShouldSuppressRingtone___block_invoke;
    v8[3] = &unk_1E7425000;
    v9 = ringtoneCopy;
    v8[4] = self;
    [callNotificationManager postNotificationsForCall:self afterUpdatesInBlock:v8];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __41__TUProxyCall_setShouldSuppressRingtone___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6.receiver = *(a1 + 32);
  v6.super_class = TUProxyCall;
  objc_msgSendSuper2(&v6, sel_setShouldSuppressRingtone_, v2);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __41__TUProxyCall_setShouldSuppressRingtone___block_invoke_2;
  aBlock[3] = &unk_1E7424950;
  aBlock[4] = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3);
  }
}

- (void)setWantsHoldMusic:(BOOL)music
{
  musicCopy = music;
  v18 = *MEMORY[0x1E69E9840];
  if ([(TUCall *)self wantsHoldMusic]!= music)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v11 = @"wantsHoldMusic";
      v12 = 1024;
      wantsHoldMusic = [(TUCall *)self wantsHoldMusic];
      v14 = 1024;
      v15 = musicCopy;
      v16 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set %@ from %d to %d for %@. Posting necessary notifications and updating daemon", buf, 0x22u);
    }

    callNotificationManager = [(TUCall *)self callNotificationManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __33__TUProxyCall_setWantsHoldMusic___block_invoke;
    v8[3] = &unk_1E7425000;
    v9 = musicCopy;
    v8[4] = self;
    [callNotificationManager postNotificationsForCall:self afterUpdatesInBlock:v8];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __33__TUProxyCall_setWantsHoldMusic___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v6.receiver = *(a1 + 32);
  v6.super_class = TUProxyCall;
  objc_msgSendSuper2(&v6, sel_setWantsHoldMusic_, v2);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __33__TUProxyCall_setWantsHoldMusic___block_invoke_2;
  aBlock[3] = &unk_1E7424950;
  aBlock[4] = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3);
  }
}

- (void)setEndpointOnCurrentDevice:(BOOL)device
{
  deviceCopy = device;
  v18 = *MEMORY[0x1E69E9840];
  if ([(TUCall *)self isEndpointOnCurrentDevice]!= device)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v11 = @"isEndpointOnCurrentDevice";
      v12 = 1024;
      isEndpointOnCurrentDevice = [(TUCall *)self isEndpointOnCurrentDevice];
      v14 = 1024;
      v15 = deviceCopy;
      v16 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set %@ from %d to %d for %@. Posting necessary notifications", buf, 0x22u);
    }

    callNotificationManager = [(TUCall *)self callNotificationManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__TUProxyCall_setEndpointOnCurrentDevice___block_invoke;
    v8[3] = &unk_1E7425000;
    v9 = deviceCopy;
    v8[4] = self;
    [callNotificationManager postNotificationsForCall:self afterUpdatesInBlock:v8];
  }

  v7 = *MEMORY[0x1E69E9840];
}

id __42__TUProxyCall_setEndpointOnCurrentDevice___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = TUProxyCall;
  return objc_msgSendSuper2(&v3, sel_setEndpointOnCurrentDevice_, v1);
}

- (void)setScreening:(BOOL)screening
{
  screeningCopy = screening;
  v18 = *MEMORY[0x1E69E9840];
  if ([(TUCall *)self isScreening]!= screening)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v11 = @"isScreening";
      v12 = 1024;
      isScreening = [(TUCall *)self isScreening];
      v14 = 1024;
      v15 = screeningCopy;
      v16 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set %@ from %d to %d for %@. Posting necessary notifications", buf, 0x22u);
    }

    callNotificationManager = [(TUCall *)self callNotificationManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __28__TUProxyCall_setScreening___block_invoke;
    v8[3] = &unk_1E7425000;
    v9 = screeningCopy;
    v8[4] = self;
    [callNotificationManager postNotificationsForCall:self afterUpdatesInBlock:v8];
  }

  v7 = *MEMORY[0x1E69E9840];
}

id __28__TUProxyCall_setScreening___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = TUProxyCall;
  return objc_msgSendSuper2(&v3, sel_setScreening_, v1);
}

- (void)setTransitionStatus:(int)status
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(TUCall *)self transitionStatus]!= status)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v11 = @"transitionStatus";
      v12 = 1024;
      transitionStatus = [(TUCall *)self transitionStatus];
      v14 = 1024;
      statusCopy = status;
      v16 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set %@ from %d to %d for %@. Posting necessary notifications", buf, 0x22u);
    }

    callNotificationManager = [(TUCall *)self callNotificationManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35__TUProxyCall_setTransitionStatus___block_invoke;
    v8[3] = &unk_1E74256D0;
    statusCopy2 = status;
    v8[4] = self;
    [callNotificationManager postNotificationsForCall:self afterUpdatesInBlock:v8];
  }

  v7 = *MEMORY[0x1E69E9840];
}

id __35__TUProxyCall_setTransitionStatus___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3.receiver = *(a1 + 32);
  v3.super_class = TUProxyCall;
  return objc_msgSendSuper2(&v3, sel_setTransitionStatus_, v1);
}

- (void)setVideoPaused:(BOOL)paused
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_videoPaused != paused)
  {
    pausedCopy = paused;
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      videoPaused = self->_videoPaused;
      *buf = 138413058;
      v12 = @"videoPaused";
      v13 = 1024;
      v14 = videoPaused;
      v15 = 1024;
      v16 = pausedCopy;
      v17 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set %@ from %d to %d for %@. Posting necessary notifications", buf, 0x22u);
    }

    callNotificationManager = [(TUCall *)self callNotificationManager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __30__TUProxyCall_setVideoPaused___block_invoke;
    v9[3] = &unk_1E7425000;
    v9[4] = self;
    v10 = pausedCopy;
    [callNotificationManager postNotificationsForCall:self afterUpdatesInBlock:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setMediaStalled:(BOOL)stalled
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_mediaStalled != stalled)
  {
    stalledCopy = stalled;
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      mediaStalled = self->_mediaStalled;
      *buf = 138413058;
      v12 = @"mediaStalled";
      v13 = 1024;
      v14 = mediaStalled;
      v15 = 1024;
      v16 = stalledCopy;
      v17 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set %@ from %d to %d for %@. Posting necessary notifications", buf, 0x22u);
    }

    callNotificationManager = [(TUCall *)self callNotificationManager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __31__TUProxyCall_setMediaStalled___block_invoke;
    v9[3] = &unk_1E7425000;
    v9[4] = self;
    v10 = stalledCopy;
    [callNotificationManager postNotificationsForCall:self afterUpdatesInBlock:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setVideoDegraded:(BOOL)degraded
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_videoDegraded != degraded)
  {
    degradedCopy = degraded;
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      videoDegraded = self->_videoDegraded;
      *buf = 138413058;
      v12 = @"videoDegraded";
      v13 = 1024;
      v14 = videoDegraded;
      v15 = 1024;
      v16 = degradedCopy;
      v17 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set %@ from %d to %d for %@. Posting necessary notifications", buf, 0x22u);
    }

    callNotificationManager = [(TUCall *)self callNotificationManager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __32__TUProxyCall_setVideoDegraded___block_invoke;
    v9[3] = &unk_1E7425000;
    v9[4] = self;
    v10 = degradedCopy;
    [callNotificationManager postNotificationsForCall:self afterUpdatesInBlock:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setUplinkMuted:(BOOL)muted
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_uplinkMuted != muted)
  {
    mutedCopy = muted;
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      isUplinkMuted = [(TUProxyCall *)self isUplinkMuted];
      v12 = 1024;
      v13 = mutedCopy;
      v14 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set uplinkMuted from %d to %d for %@. Posting necessary notifications and updating daemon", buf, 0x18u);
    }

    callNotificationManager = [(TUCall *)self callNotificationManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __30__TUProxyCall_setUplinkMuted___block_invoke;
    v8[3] = &unk_1E7425000;
    v8[4] = self;
    v9 = mutedCopy;
    [callNotificationManager postNotificationsForCall:self afterUpdatesInBlock:v8];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __30__TUProxyCall_setUplinkMuted___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(*(a1 + 32) + 648) = v1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__TUProxyCall_setUplinkMuted___block_invoke_2;
  v4[3] = &unk_1E7425000;
  v4[4] = *(a1 + 32);
  v5 = v1;
  v2 = _Block_copy(v4);
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2);
  }
}

void __30__TUProxyCall_setUplinkMuted___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) proxyCallActionsDelegate];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) uniqueProxyIdentifier];
  [v4 setUplinkMuted:v2 forCallWithUniqueProxyIdentifier:v3];
}

- (void)setDownlinkMuted:(BOOL)muted
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_downlinkMuted != muted)
  {
    mutedCopy = muted;
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      isDownlinkMuted = [(TUProxyCall *)self isDownlinkMuted];
      v12 = 1024;
      v13 = mutedCopy;
      v14 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set downlinkMuted from %d to %d for %@. Posting necessary notifications and updating daemon", buf, 0x18u);
    }

    callNotificationManager = [(TUCall *)self callNotificationManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __32__TUProxyCall_setDownlinkMuted___block_invoke;
    v8[3] = &unk_1E7425000;
    v8[4] = self;
    v9 = mutedCopy;
    [callNotificationManager postNotificationsForCall:self afterUpdatesInBlock:v8];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __32__TUProxyCall_setDownlinkMuted___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(*(a1 + 32) + 649) = v1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__TUProxyCall_setDownlinkMuted___block_invoke_2;
  v4[3] = &unk_1E7425000;
  v4[4] = *(a1 + 32);
  v5 = v1;
  v2 = _Block_copy(v4);
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2);
  }
}

void __32__TUProxyCall_setDownlinkMuted___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) proxyCallActionsDelegate];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) uniqueProxyIdentifier];
  [v4 setDownlinkMuted:v2 forCallWithUniqueProxyIdentifier:v3];
}

- (void)addScreenSharingType:(unint64_t)type
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_screenSharingType != type)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      typeCopy = type;
      v11 = 2048;
      screenSharingType = [(TUProxyCall *)self screenSharingType];
      v13 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to add %lu to screenSharingType %lu for %@. Posting necessary notifications and updating daemon", buf, 0x20u);
    }

    callNotificationManager = [(TUCall *)self callNotificationManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __36__TUProxyCall_addScreenSharingType___block_invoke;
    v8[3] = &unk_1E7425340;
    v8[4] = self;
    v8[5] = type;
    [callNotificationManager postNotificationsForCall:self afterUpdatesInBlock:v8];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __36__TUProxyCall_addScreenSharingType___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(*(a1 + 32) + 992) = v1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __36__TUProxyCall_addScreenSharingType___block_invoke_2;
  v4[3] = &unk_1E7425340;
  v4[4] = *(a1 + 32);
  v4[5] = v1;
  v2 = _Block_copy(v4);
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2);
  }
}

void __36__TUProxyCall_addScreenSharingType___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) proxyCallActionsDelegate];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) uniqueProxyIdentifier];
  [v4 addScreenSharingType:v2 forCallWithUniqueProxyIdentifier:v3];
}

- (void)setIsSendingVideo:(BOOL)video
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_isSendingVideo != video)
  {
    videoCopy = video;
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      isSendingVideo = [(TUProxyCall *)self isSendingVideo];
      v12 = 1024;
      v13 = videoCopy;
      v14 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set isSendingVideo from %d to %d for %@. Posting necessary notifications and updating daemon", buf, 0x18u);
    }

    callNotificationManager = [(TUCall *)self callNotificationManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __33__TUProxyCall_setIsSendingVideo___block_invoke;
    v8[3] = &unk_1E7425000;
    v8[4] = self;
    v9 = videoCopy;
    [callNotificationManager postNotificationsForCall:self afterUpdatesInBlock:v8];
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __33__TUProxyCall_setIsSendingVideo___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(*(a1 + 32) + 632) = v1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __33__TUProxyCall_setIsSendingVideo___block_invoke_2;
  v4[3] = &unk_1E7425000;
  v4[4] = *(a1 + 32);
  v5 = v1;
  v2 = _Block_copy(v4);
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2);
  }
}

void __33__TUProxyCall_setIsSendingVideo___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) proxyCallActionsDelegate];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) uniqueProxyIdentifier];
  [v4 setIsSendingVideo:v2 forCallWithUniqueProxyIdentifier:v3];
}

- (void)setSharingScreen:(BOOL)screen
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_sharingScreen != screen)
  {
    screenCopy = screen;
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sharingScreen = self->_sharingScreen;
      *buf = 67109634;
      v12 = sharingScreen;
      v13 = 1024;
      v14 = screenCopy;
      v15 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set sharingScreen from %d to %d for %@. Posting necessary notifications and updating daemon", buf, 0x18u);
    }

    callNotificationManager = [(TUCall *)self callNotificationManager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __32__TUProxyCall_setSharingScreen___block_invoke;
    v9[3] = &unk_1E7425000;
    v9[4] = self;
    v10 = screenCopy;
    [callNotificationManager postNotificationsForCall:self afterUpdatesInBlock:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __32__TUProxyCall_setSharingScreen___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(*(a1 + 32) + 657) = v1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __32__TUProxyCall_setSharingScreen___block_invoke_2;
  v4[3] = &unk_1E7425000;
  v4[4] = *(a1 + 32);
  v5 = v1;
  v2 = _Block_copy(v4);
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2);
  }
}

void __32__TUProxyCall_setSharingScreen___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) proxyCallActionsDelegate];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) uniqueProxyIdentifier];
  [v4 setSharingScreen:v2 forCallWithUniqueProxyIdentifier:v3];
}

- (void)setMixesVoiceWithMedia:(BOOL)media
{
  mediaCopy = media;
  v18 = *MEMORY[0x1E69E9840];
  mixesVoiceWithMedia = self->_mixesVoiceWithMedia;
  callNotificationManager = TUDefaultLog();
  v7 = os_log_type_enabled(callNotificationManager, OS_LOG_TYPE_DEFAULT);
  if (mixesVoiceWithMedia == mediaCopy)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, callNotificationManager, OS_LOG_TYPE_DEFAULT, "[WARN] Wrong use of API", buf, 2u);
    }
  }

  else
  {
    if (v7)
    {
      v8 = self->_mixesVoiceWithMedia;
      *buf = 67109634;
      v13 = v8;
      v14 = 1024;
      v15 = mediaCopy;
      v16 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1956FD000, callNotificationManager, OS_LOG_TYPE_DEFAULT, "Asked to set mixesVoiceWithMedia from %d to %d for self: %@. Posting necessary notifications and updating daemon", buf, 0x18u);
    }

    callNotificationManager = [(TUCall *)self callNotificationManager];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __38__TUProxyCall_setMixesVoiceWithMedia___block_invoke;
    v10[3] = &unk_1E7425000;
    v10[4] = self;
    v11 = mediaCopy;
    [callNotificationManager postNotificationsForCall:self afterUpdatesInBlock:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __38__TUProxyCall_setMixesVoiceWithMedia___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(*(a1 + 32) + 662) = v1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __38__TUProxyCall_setMixesVoiceWithMedia___block_invoke_2;
  v4[3] = &unk_1E7425000;
  v4[4] = *(a1 + 32);
  v5 = v1;
  v2 = _Block_copy(v4);
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2);
  }
}

void __38__TUProxyCall_setMixesVoiceWithMedia___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) proxyCallActionsDelegate];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) uniqueProxyIdentifier];
  [v4 setMixesVoiceWithMedia:v2 forCallWithUniqueProxyIdentifier:v3];
}

- (void)setSharingScreen:(BOOL)screen attributes:(id)attributes
{
  screenCopy = screen;
  v23 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  if (screenCopy && !self->_sharingScreen)
  {
    v9 = TUDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      sharingScreen = self->_sharingScreen;
      *buf = 67109890;
      v16 = sharingScreen;
      v17 = 1024;
      v18 = 1;
      v19 = 2112;
      v20 = attributesCopy;
      v21 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Asked to set sharingScreen from %d to %d attributes: %@ for %@. Posting necessary notifications and updating daemon", buf, 0x22u);
    }

    callNotificationManager = [(TUCall *)self callNotificationManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__TUProxyCall_setSharingScreen_attributes___block_invoke;
    v12[3] = &unk_1E7425B78;
    v12[4] = self;
    v14 = screenCopy;
    v13 = attributesCopy;
    [callNotificationManager postNotificationsForCall:self afterUpdatesInBlock:v12];
  }

  else
  {
    v7 = TUDefaultLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Wrong use of API", buf, 2u);
    }
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __43__TUProxyCall_setSharingScreen_attributes___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 48);
  *(*(a1 + 32) + 657) = v1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__TUProxyCall_setSharingScreen_attributes___block_invoke_2;
  aBlock[3] = &unk_1E7425B78;
  v2 = *(a1 + 40);
  aBlock[4] = *(a1 + 32);
  v7 = v1;
  v6 = v2;
  v3 = _Block_copy(aBlock);
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3);
  }
}

void __43__TUProxyCall_setSharingScreen_attributes___block_invoke_2(uint64_t a1)
{
  v5 = [*(a1 + 32) proxyCallActionsDelegate];
  v2 = *(a1 + 48);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 32) uniqueProxyIdentifier];
  [v5 setSharingScreen:v2 attributes:v3 forCallWithUniqueProxyIdentifier:v4];
}

- (void)updateProxyCallWithDaemon
{
  proxyCallActionsDelegate = [(TUProxyCall *)self proxyCallActionsDelegate];
  [proxyCallActionsDelegate updateCallWithProxy:self];
}

- (void)setCallDisconnectedDueToComponentCrash
{
  [(TUProxyCall *)self setCallStatus:6];
  v3.receiver = self;
  v3.super_class = TUProxyCall;
  [(TUCall *)&v3 setDisconnectedReason:11];
}

- (void)sendHardPauseDigits
{
  proxyCallActionsDelegate = [(TUProxyCall *)self proxyCallActionsDelegate];
  uniqueProxyIdentifier = [(TUCall *)self uniqueProxyIdentifier];
  [proxyCallActionsDelegate sendHardPauseDigitsForCallWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  callNotificationManager = [(TUCall *)self callNotificationManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__TUProxyCall_sendHardPauseDigits__block_invoke;
  v6[3] = &unk_1E7424950;
  v6[4] = self;
  [callNotificationManager postNotificationsForCall:self afterUpdatesInBlock:v6];
}

uint64_t __34__TUProxyCall_sendHardPauseDigits__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHardPauseDigitsState:0];
  v2 = *(a1 + 32);

  return [v2 setHardPauseDigits:0];
}

- (void)setHasEmergencyVideoStream:(BOOL)stream
{
  streamCopy = stream;
  v18 = *MEMORY[0x1E69E9840];
  hasEmergencyVideoStream = self->_hasEmergencyVideoStream;
  callNotificationManager = TUDefaultLog();
  v7 = os_log_type_enabled(callNotificationManager, OS_LOG_TYPE_DEFAULT);
  if (hasEmergencyVideoStream == streamCopy)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, callNotificationManager, OS_LOG_TYPE_DEFAULT, "[WARN] Wrong use of API", buf, 2u);
    }
  }

  else
  {
    if (v7)
    {
      v8 = self->_hasEmergencyVideoStream;
      *buf = 67109634;
      v13 = v8;
      v14 = 1024;
      v15 = streamCopy;
      v16 = 2112;
      selfCopy = self;
      _os_log_impl(&dword_1956FD000, callNotificationManager, OS_LOG_TYPE_DEFAULT, "Asked to set hasEmergencyVideoStream from %d to %d for self: %@. Posting necessary notifications and updating daemon", buf, 0x18u);
    }

    callNotificationManager = [(TUCall *)self callNotificationManager];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__TUProxyCall_setHasEmergencyVideoStream___block_invoke;
    v10[3] = &unk_1E7425000;
    v10[4] = self;
    v11 = streamCopy;
    [callNotificationManager postNotificationsForCall:self afterUpdatesInBlock:v10];
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __42__TUProxyCall_setHasEmergencyVideoStream___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  *(*(a1 + 32) + 639) = v1;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __42__TUProxyCall_setHasEmergencyVideoStream___block_invoke_2;
  v4[3] = &unk_1E7425000;
  v4[4] = *(a1 + 32);
  v5 = v1;
  v2 = _Block_copy(v4);
  v3 = v2;
  if (v2)
  {
    (*(v2 + 2))(v2);
  }
}

void __42__TUProxyCall_setHasEmergencyVideoStream___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) proxyCallActionsDelegate];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) uniqueProxyIdentifier];
  [v4 setHasEmergencyVideoStream:v2 forCallWithUniqueProxyIdentifier:v3];
}

- (void)setEmergencyMediaItems:(id)items
{
  v18 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    emergencyMediaItems = self->_emergencyMediaItems;
    *buf = 138412802;
    v13 = emergencyMediaItems;
    v14 = 2112;
    v15 = itemsCopy;
    v16 = 2112;
    selfCopy = self;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set emergencyMediaItems from %@ to %@ for self: %@. Posting necessary notifications and updating daemon", buf, 0x20u);
  }

  callNotificationManager = [(TUCall *)self callNotificationManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__TUProxyCall_setEmergencyMediaItems___block_invoke;
  v10[3] = &unk_1E7424898;
  v10[4] = self;
  v11 = itemsCopy;
  v8 = itemsCopy;
  [callNotificationManager postNotificationsForCall:self afterUpdatesInBlock:v10];

  v9 = *MEMORY[0x1E69E9840];
}

void __38__TUProxyCall_setEmergencyMediaItems___block_invoke(uint64_t a1)
{
  objc_storeStrong((*(a1 + 32) + 792), *(a1 + 40));
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __38__TUProxyCall_setEmergencyMediaItems___block_invoke_2;
  v5[3] = &unk_1E7424898;
  v2 = *(a1 + 40);
  v5[4] = *(a1 + 32);
  v6 = v2;
  v3 = _Block_copy(v5);
  v4 = v3;
  if (v3)
  {
    (*(v3 + 2))(v3);
  }
}

void __38__TUProxyCall_setEmergencyMediaItems___block_invoke_2(uint64_t a1)
{
  v4 = [*(a1 + 32) proxyCallActionsDelegate];
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) uniqueProxyIdentifier];
  [v4 setEmergencyMediaItems:v2 forCallWithUniqueProxyIdentifier:v3];
}

- (int)avcRemoteVideoModeForMode:(int64_t)mode
{
  if (mode == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (mode == 2)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (void)setRemoteVideoLayer:(id)layer forMode:(int64_t)mode
{
  v19 = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  v7 = [(TUProxyCall *)self avcRemoteVideoModeForMode:mode];
  remoteVideoModeToLayer = [(TUProxyCall *)self remoteVideoModeToLayer];

  if (!remoteVideoModeToLayer)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(TUProxyCall *)self setRemoteVideoModeToLayer:dictionary];
  }

  v10 = TUDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = layerCopy;
    v17 = 2048;
    v18 = v7;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Asked to set remote video layer %@ for mode %ld", &v15, 0x16u);
  }

  remoteVideoModeToLayer2 = [(TUProxyCall *)self remoteVideoModeToLayer];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:v7];
  [remoteVideoModeToLayer2 setObject:layerCopy forKeyedSubscript:v12];

  if (!layerCopy)
  {
    remoteVideo = [(TUProxyCall *)self remoteVideo];
    [remoteVideo setVideoLayer:0 forMode:v7];
  }

  [(TUProxyCall *)self _synchronizeRemoteVideo];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setLocalVideoLayer:(id)layer forMode:(int64_t)mode
{
  v18 = *MEMORY[0x1E69E9840];
  layerCopy = layer;
  localVideoModeToLayer = [(TUProxyCall *)self localVideoModeToLayer];

  if (!localVideoModeToLayer)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    [(TUProxyCall *)self setLocalVideoModeToLayer:dictionary];
  }

  v9 = TUDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = layerCopy;
    v16 = 2048;
    modeCopy = mode;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Asked to set local video layer %@ for mode %ld", &v14, 0x16u);
  }

  localVideoModeToLayer2 = [(TUProxyCall *)self localVideoModeToLayer];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:mode];
  [localVideoModeToLayer2 setObject:layerCopy forKeyedSubscript:v11];

  if (!layerCopy)
  {
    localVideo = [(TUProxyCall *)self localVideo];
    [localVideo setVideoLayer:0 forMode:{-[TUProxyCall avcRemoteVideoModeForMode:](self, "avcRemoteVideoModeForMode:", mode)}];
  }

  [(TUProxyCall *)self _synchronizeLocalVideo];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setRequiresRemoteVideo:(BOOL)video
{
  if (self->_requiresRemoteVideo != video)
  {
    self->_requiresRemoteVideo = video;
    [(TUProxyCall *)self _synchronizeRemoteVideo];
  }
}

- (void)_updateVideoCallAttributes:(id)attributes
{
  v20 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  videoCallAttributes = [(TUCall *)self videoCallAttributes];
  v6 = [videoCallAttributes isEqualToVideoCallAttributes:attributesCopy];

  if ((v6 & 1) == 0)
  {
    videoCallAttributes2 = [(TUCall *)self videoCallAttributes];
    localVideoContextSlotIdentifier = [videoCallAttributes2 localVideoContextSlotIdentifier];
    localVideoContextSlotIdentifier2 = [attributesCopy localVideoContextSlotIdentifier];

    if (localVideoContextSlotIdentifier != localVideoContextSlotIdentifier2)
    {
      [(TUProxyCall *)self setLocalVideo:0];
    }

    videoCallAttributes3 = [(TUCall *)self videoCallAttributes];
    remoteVideoContextSlotIdentifier = [videoCallAttributes3 remoteVideoContextSlotIdentifier];
    remoteVideoContextSlotIdentifier2 = [attributesCopy remoteVideoContextSlotIdentifier];

    if (remoteVideoContextSlotIdentifier != remoteVideoContextSlotIdentifier2)
    {
      [(TUProxyCall *)self setRemoteVideo:0];
    }

    videoCallAttributes4 = [(TUCall *)self videoCallAttributes];
    remoteCameraOrientation = [videoCallAttributes4 remoteCameraOrientation];
    remoteCameraOrientation2 = [attributesCopy remoteCameraOrientation];

    if (remoteCameraOrientation != remoteCameraOrientation2)
    {
      -[TUProxyCall setRemoteCameraOrientation:](self, "setRemoteCameraOrientation:", [attributesCopy remoteCameraOrientation]);
    }

    [(TUCall *)self setVideoCallAttributes:attributesCopy];
    v16 = TUDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = attributesCopy;
      _os_log_impl(&dword_1956FD000, v16, OS_LOG_TYPE_DEFAULT, "Updating video call attributes %@", &v18, 0xCu);
    }

    [(TUProxyCall *)self _synchronizeLocalVideo];
    [(TUProxyCall *)self _synchronizeRemoteVideo];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_updateVideoStreamToken:(int64_t)token
{
  if (self->_videoStreamToken != token)
  {
    self->_videoStreamToken = token;
    [(TUProxyCall *)self setRemoteVideo:0];

    [(TUProxyCall *)self _synchronizeRemoteVideo];
  }
}

- (void)_synchronizeLocalVideo
{
  v30 = *MEMORY[0x1E69E9840];
  localVideoModeToLayer = [(TUProxyCall *)self localVideoModeToLayer];
  v4 = [localVideoModeToLayer count];

  if (v4)
  {
    [(TUProxyCall *)self _createLocalVideoIfNecessary];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    localVideoModeToLayer2 = [(TUProxyCall *)self localVideoModeToLayer];
    v6 = [localVideoModeToLayer2 countByEnumeratingWithState:&v21 objects:v29 count:16];
    if (v6)
    {
      v8 = v6;
      v9 = *v22;
      *&v7 = 138412546;
      v20 = v7;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v22 != v9)
          {
            objc_enumerationMutation(localVideoModeToLayer2);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          localVideoModeToLayer3 = [(TUProxyCall *)self localVideoModeToLayer];
          v13 = [localVideoModeToLayer3 objectForKeyedSubscript:v11];

          v14 = TUDefaultLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            intValue = [v11 intValue];
            *buf = v20;
            v26 = v13;
            v27 = 1024;
            v28 = intValue;
            _os_log_impl(&dword_1956FD000, v14, OS_LOG_TYPE_DEFAULT, "Setting video layer %@ for mode %d", buf, 0x12u);
          }

          localVideo = [(TUProxyCall *)self localVideo];
          [localVideo setVideoLayer:v13 forMode:{objc_msgSend(v11, "intValue")}];
        }

        v8 = [localVideoModeToLayer2 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v8);
    }
  }

  else
  {
    localVideo2 = [(TUProxyCall *)self localVideo];

    if (localVideo2)
    {
      v18 = TUDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1956FD000, v18, OS_LOG_TYPE_DEFAULT, "No layers to synchronize, set local TURemoteVideoClient to nil", buf, 2u);
      }

      [(TUProxyCall *)self setLocalVideo:0];
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)_synchronizeRemoteVideo
{
  v32 = *MEMORY[0x1E69E9840];
  remoteVideoModeToLayer = [(TUProxyCall *)self remoteVideoModeToLayer];
  if ([remoteVideoModeToLayer count])
  {

    goto LABEL_4;
  }

  requiresRemoteVideo = [(TUProxyCall *)self requiresRemoteVideo];

  if (requiresRemoteVideo)
  {
LABEL_4:
    [(TUProxyCall *)self _createRemoteVideoIfNecessary];
    remoteVideo = [(TUProxyCall *)self remoteVideo];

    if (remoteVideo)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      remoteVideoModeToLayer2 = [(TUProxyCall *)self remoteVideoModeToLayer];
      v7 = [remoteVideoModeToLayer2 countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v7)
      {
        v9 = v7;
        v10 = *v24;
        *&v8 = 138412546;
        v22 = v8;
        do
        {
          v11 = 0;
          do
          {
            if (*v24 != v10)
            {
              objc_enumerationMutation(remoteVideoModeToLayer2);
            }

            v12 = *(*(&v23 + 1) + 8 * v11);
            remoteVideoModeToLayer3 = [(TUProxyCall *)self remoteVideoModeToLayer];
            v14 = [remoteVideoModeToLayer3 objectForKeyedSubscript:v12];

            v15 = TUDefaultLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              intValue = [v12 intValue];
              *buf = v22;
              v28 = v14;
              v29 = 1024;
              v30 = intValue;
              _os_log_impl(&dword_1956FD000, v15, OS_LOG_TYPE_DEFAULT, "Setting video layer %@ for mode %d", buf, 0x12u);
            }

            remoteVideo2 = [(TUProxyCall *)self remoteVideo];
            [remoteVideo2 setVideoLayer:v14 forMode:{objc_msgSend(v12, "intValue")}];

            ++v11;
          }

          while (v9 != v11);
          v9 = [remoteVideoModeToLayer2 countByEnumeratingWithState:&v23 objects:v31 count:16];
        }

        while (v9);
      }
    }

    else
    {
      v18 = TUDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1956FD000, v18, OS_LOG_TYPE_DEFAULT, "Client asked to synchronize remote video layers but we don't have a AVCRemoteVideoClient which is only created once we have a nonzero videoStreamToken", buf, 2u);
      }
    }

    goto LABEL_22;
  }

  remoteVideo3 = [(TUProxyCall *)self remoteVideo];

  if (remoteVideo3)
  {
    v20 = TUDefaultLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v20, OS_LOG_TYPE_DEFAULT, "No layers to synchronize so setting self.remoteVideo to nil", buf, 2u);
    }

    [(TUProxyCall *)self setRemoteVideo:0];
  }

LABEL_22:
  v21 = *MEMORY[0x1E69E9840];
}

- (void)_createLocalVideoIfNecessary
{
  localVideo = [(TUProxyCall *)self localVideo];

  if (!localVideo)
  {
    videoCallAttributes = [(TUCall *)self videoCallAttributes];
    localVideoContextSlotIdentifier = [videoCallAttributes localVideoContextSlotIdentifier];

    if (localVideoContextSlotIdentifier)
    {
      v6 = [TURemoteVideoClient alloc];
      videoCallAttributes2 = [(TUCall *)self videoCallAttributes];
      v7 = -[TURemoteVideoClient initWithVideoContextSlotIdentifier:](v6, "initWithVideoContextSlotIdentifier:", [videoCallAttributes2 localVideoContextSlotIdentifier]);
      [(TUProxyCall *)self setLocalVideo:v7];
    }
  }
}

- (void)_createRemoteVideoIfNecessary
{
  v15 = *MEMORY[0x1E69E9840];
  remoteVideo = [(TUProxyCall *)self remoteVideo];

  if (!remoteVideo)
  {
    videoCallAttributes = [(TUCall *)self videoCallAttributes];
    remoteVideoContextSlotIdentifier = [videoCallAttributes remoteVideoContextSlotIdentifier];

    if (remoteVideoContextSlotIdentifier)
    {
      v6 = [TURemoteVideoClient alloc];
      videoCallAttributes2 = [(TUCall *)self videoCallAttributes];
      v8 = -[TURemoteVideoClient initWithVideoContextSlotIdentifier:](v6, "initWithVideoContextSlotIdentifier:", [videoCallAttributes2 remoteVideoContextSlotIdentifier]);
      [(TUProxyCall *)self setRemoteVideo:v8];
    }

    else if ([(TUProxyCall *)self videoStreamToken]>= 1)
    {
      v9 = CUTWeakLinkClass();
      v10 = TUDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134217984;
        videoStreamToken = [(TUProxyCall *)self videoStreamToken];
        _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Creating AVCRemoteVideoClient with stream token %ld", &v13, 0xCu);
      }

      v11 = [[v9 alloc] initWithStreamToken:-[TUProxyCall videoStreamToken](self delegate:{"videoStreamToken"), self}];
      [(TUProxyCall *)self setRemoteVideo:v11];
    }

    [(TUProxyCall *)self setMediaStalled:0];
    [(TUProxyCall *)self setVideoDegraded:0];
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (CGSize)localAspectRatioForOrientation:(int64_t)orientation
{
  if (__CUTWeakCGSizeZero__pred_CGSizeZeroCoreGraphics != -1)
  {
    [TUProxyCall localAspectRatioForOrientation:];
  }

  if ((orientation - 3) < 2)
  {

    [(TUProxyCall *)self remoteScreenLandscapeAspectRatio];
  }

  else if ((orientation - 1) > 1)
  {
    v6 = *(&__CUTStaticWeak_CGSizeZero + 1);
    v5 = *&__CUTStaticWeak_CGSizeZero;
  }

  else
  {

    [(TUProxyCall *)self remoteScreenPortraitAspectRatio];
  }

  result.height = v6;
  result.width = v5;
  return result;
}

- (void)setRemoteVideoPresentationSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v16 = *MEMORY[0x1E69E9840];
  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    videoStreamToken = [(TUProxyCall *)self videoStreamToken];
    v17.width = width;
    v17.height = height;
    v8 = NSStringFromSize(v17);
    v12 = 134218242;
    selfCopy = videoStreamToken;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "self.videoStreamToken: %ld remoteVideoPresentationSize: %@", &v12, 0x16u);
  }

  if ([(TUProxyCall *)self isVideo])
  {
    proxyCallActionsDelegate = [(TUProxyCall *)self proxyCallActionsDelegate];
    uniqueProxyIdentifier = [(TUCall *)self uniqueProxyIdentifier];
    [proxyCallActionsDelegate setRemoteVideoPresentationSizeForCallWithUniqueProxyIdentifier:uniqueProxyIdentifier size:width, height];
  }

  else
  {
    proxyCallActionsDelegate = TUDefaultLog();
    if (os_log_type_enabled(proxyCallActionsDelegate, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      selfCopy = self;
      _os_log_impl(&dword_1956FD000, proxyCallActionsDelegate, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to set remote video presentation size because call is not a video call: %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setScreenShareAttributes:(id)attributes
{
  v11 = *MEMORY[0x1E69E9840];
  attributesCopy = attributes;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = attributesCopy;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "screenShareAttributes: %@", &v9, 0xCu);
  }

  proxyCallActionsDelegate = [(TUProxyCall *)self proxyCallActionsDelegate];
  uniqueProxyIdentifier = [(TUCall *)self uniqueProxyIdentifier];
  [proxyCallActionsDelegate setScreenShareAttributesForCallWithUniqueProxyIdentifier:uniqueProxyIdentifier attributes:attributesCopy];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setBluetoothAudioFormat:(int64_t)format
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    formatCopy = format;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "bluetoothAudioFormat: %ld", &v9, 0xCu);
  }

  proxyCallActionsDelegate = [(TUProxyCall *)self proxyCallActionsDelegate];
  uniqueProxyIdentifier = [(TUCall *)self uniqueProxyIdentifier];
  [proxyCallActionsDelegate setBluetoothAudioFormatForCallWithUniqueProxyIdentifier:uniqueProxyIdentifier bluetoothAudioFormat:format];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)remoteVideoClient:(id)client remoteVideoDidPause:(BOOL)pause
{
  queue = [(TUCall *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__TUProxyCall_remoteVideoClient_remoteVideoDidPause___block_invoke;
  v7[3] = &unk_1E7425000;
  v7[4] = self;
  pauseCopy = pause;
  dispatch_async(queue, v7);
}

uint64_t __53__TUProxyCall_remoteVideoClient_remoteVideoDidPause___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) videoStreamToken];
    v4 = *(a1 + 40);
    v7 = 134218240;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "self.videoStreamToken: %ld didPause: %d", &v7, 0x12u);
  }

  result = [*(a1 + 32) setVideoPaused:*(a1 + 40)];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)remoteVideoClient:(id)client remoteMediaDidStall:(BOOL)stall
{
  queue = [(TUCall *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__TUProxyCall_remoteVideoClient_remoteMediaDidStall___block_invoke;
  v7[3] = &unk_1E7425000;
  v7[4] = self;
  stallCopy = stall;
  dispatch_async(queue, v7);
}

uint64_t __53__TUProxyCall_remoteVideoClient_remoteMediaDidStall___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) videoStreamToken];
    v4 = *(a1 + 40);
    v7 = 134218240;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "self.videoStreamToken: %ld didStall: %d", &v7, 0x12u);
  }

  result = [*(a1 + 32) setMediaStalled:*(a1 + 40)];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)remoteVideoClient:(id)client videoDidDegrade:(BOOL)degrade
{
  queue = [(TUCall *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__TUProxyCall_remoteVideoClient_videoDidDegrade___block_invoke;
  v7[3] = &unk_1E7425000;
  v7[4] = self;
  degradeCopy = degrade;
  dispatch_async(queue, v7);
}

uint64_t __49__TUProxyCall_remoteVideoClient_videoDidDegrade___block_invoke(uint64_t a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) videoStreamToken];
    v4 = *(a1 + 40);
    v7 = 134218240;
    v8 = v3;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "self.videoStreamToken: %ld didStall: %d", &v7, 0x12u);
  }

  result = [*(a1 + 32) setVideoDegraded:*(a1 + 40)];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)remoteVideoClient:(id)client remoteScreenAttributesDidChange:(id)change
{
  changeCopy = change;
  queue = [(TUCall *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__TUProxyCall_remoteVideoClient_remoteScreenAttributesDidChange___block_invoke;
  v8[3] = &unk_1E7424898;
  v8[4] = self;
  v9 = changeCopy;
  v7 = changeCopy;
  dispatch_async(queue, v8);
}

void __65__TUProxyCall_remoteVideoClient_remoteScreenAttributesDidChange___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) videoStreamToken];
    v4 = *(a1 + 40);
    *buf = 134218242;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "self.videoStreamToken: %ld screenAttributes: %@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) callNotificationManager];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__TUProxyCall_remoteVideoClient_remoteScreenAttributesDidChange___block_invoke_55;
  v8[3] = &unk_1E7424898;
  v8[4] = v6;
  v9 = *(a1 + 40);
  [v5 postNotificationsForCall:v6 afterUpdatesInBlock:v8];

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __65__TUProxyCall_remoteVideoClient_remoteScreenAttributesDidChange___block_invoke_55(uint64_t a1)
{
  [*(a1 + 32) setRemoteScreenOrientation:{objc_msgSend(*(a1 + 32), "_orientationForVideoAttributesOrientation:", objc_msgSend(*(a1 + 40), "orientation"))}];
  result = [*(a1 + 32) remoteScreenOrientation];
  if ((result - 3) < 2)
  {
    [*(a1 + 40) ratio];
    v4 = *(a1 + 32);

    return [v4 setRemoteScreenLandscapeAspectRatio:?];
  }

  else if ((result - 1) <= 1)
  {
    [*(a1 + 40) ratio];
    v3 = *(a1 + 32);

    return [v3 setRemoteScreenPortraitAspectRatio:?];
  }

  return result;
}

- (void)remoteVideoClient:(id)client remoteVideoAttributesDidChange:(id)change
{
  changeCopy = change;
  queue = [(TUCall *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__TUProxyCall_remoteVideoClient_remoteVideoAttributesDidChange___block_invoke;
  v8[3] = &unk_1E7424898;
  v8[4] = self;
  v9 = changeCopy;
  v7 = changeCopy;
  dispatch_async(queue, v8);
}

void __64__TUProxyCall_remoteVideoClient_remoteVideoAttributesDidChange___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = TUDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) videoStreamToken];
    v4 = *(a1 + 40);
    *buf = 134218242;
    v11 = v3;
    v12 = 2112;
    v13 = v4;
    _os_log_impl(&dword_1956FD000, v2, OS_LOG_TYPE_DEFAULT, "self.videoStreamToken: %ld videoAttributes: %@", buf, 0x16u);
  }

  v5 = [*(a1 + 32) callNotificationManager];
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__TUProxyCall_remoteVideoClient_remoteVideoAttributesDidChange___block_invoke_56;
  v8[3] = &unk_1E7424898;
  v8[4] = v6;
  v9 = *(a1 + 40);
  [v5 postNotificationsForCall:v6 afterUpdatesInBlock:v8];

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t __64__TUProxyCall_remoteVideoClient_remoteVideoAttributesDidChange___block_invoke_56(uint64_t a1)
{
  [*(a1 + 40) ratio];
  [*(a1 + 32) setRemoteAspectRatio:?];
  [*(a1 + 40) contentsRect];
  [*(a1 + 32) setRemoteVideoContentRect:?];
  [*(a1 + 32) setCameraType:{objc_msgSend(*(a1 + 32), "_cameraTypeForVideoAttributeCamera:", objc_msgSend(*(a1 + 40), "camera"))}];
  [*(a1 + 32) setRemoteCameraOrientation:{objc_msgSend(*(a1 + 32), "_orientationForVideoAttributesOrientation:", objc_msgSend(*(a1 + 40), "orientation"))}];
  v2 = *(a1 + 40);
  result = objc_opt_respondsToSelector();
  if (result)
  {
    v4 = [*(a1 + 40) videoMirrored];
    v5 = *(a1 + 32);

    return [v5 setVideoMirrored:v4];
  }

  return result;
}

- (int64_t)_cameraTypeForVideoAttributeCamera:(int)camera
{
  if (camera > 2)
  {
    return 0;
  }

  else
  {
    return qword_19589E4C8[camera];
  }
}

- (int64_t)_orientationForVideoAttributesOrientation:(int)orientation
{
  if (orientation < 4)
  {
    return orientation + 1;
  }

  else
  {
    return 0;
  }
}

- (TUProxyCall)initWithCoder:(id)coder
{
  coderCopy = coder;
  v94.receiver = self;
  v94.super_class = TUProxyCall;
  v5 = [(TUCall *)&v94 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_activeRemoteParticipant);
    v8 = [coderCopy decodeObjectOfClass:v6 forKey:v7];
    activeRemoteParticipant = v5->_activeRemoteParticipant;
    v5->_activeRemoteParticipant = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"announceProviderIdentifier"];
    announceProviderIdentifier = v5->_announceProviderIdentifier;
    v5->_announceProviderIdentifier = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"initiator"];
    initiator = v5->_initiator;
    v5->_initiator = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"isoCountryCode"];
    isoCountryCode = v5->_isoCountryCode;
    v5->_isoCountryCode = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callerNameFromNetwork"];
    callerNameFromNetwork = v5->_callerNameFromNetwork;
    v5->_callerNameFromNetwork = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callUUID"];
    callUUID = v5->_callUUID;
    v5->_callUUID = v20;

    v5->_callStatus = [coderCopy decodeInt32ForKey:@"callStatus"];
    v5->_hostedOnCurrentDevice = [coderCopy decodeBoolForKey:@"hostedOnCurrentDevice"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"provider"];
    provider = v5->_provider;
    v5->_provider = v22;

    v5->_outgoing = [coderCopy decodeBoolForKey:@"outgoing"];
    v5->_voicemail = [coderCopy decodeBoolForKey:@"voicemail"];
    v5->_isVideo = [coderCopy decodeBoolForKey:@"isVideo"];
    v5->_thirdPartyVideo = [coderCopy decodeBoolForKey:@"thirdPartyVideo"];
    v5->_isSendingAudio = [coderCopy decodeBoolForKey:@"isSendingAudio"];
    v5->_isSendingVideo = [coderCopy decodeBoolForKey:@"isSendingVideo"];
    v5->_blocked = [coderCopy decodeBoolForKey:@"blocked"];
    v5->_emergency = [coderCopy decodeBoolForKey:@"emergency"];
    v5->_hasEmergencyVideoStream = [coderCopy decodeBoolForKey:@"hasEmergencyVideoStream"];
    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [coderCopy decodeObjectOfClasses:v26 forKey:@"emergencyMediaItems"];
    emergencyMediaItems = v5->_emergencyMediaItems;
    v5->_emergencyMediaItems = v27;

    v5->_failureExpected = [coderCopy decodeBoolForKey:@"failureExpected"];
    v5->_international = [coderCopy decodeBoolForKey:@"international"];
    v5->_domestic = [coderCopy decodeBoolForKey:@"domestic"];
    v5->_sos = [coderCopy decodeBoolForKey:@"sos"];
    v5->_supportsEmergencyFallback = [coderCopy decodeBoolForKey:@"supportsEmergencyFallback"];
    v5->_usingBaseband = [coderCopy decodeBoolForKey:@"usingBaseband"];
    v5->_ttyType = [coderCopy decodeInt32ForKey:@"ttyType"];
    v5->_supportsTTYWithVoice = [coderCopy decodeBoolForKey:@"supportsTTYWithVoice"];
    v5->_bluetoothAudioFormat = [coderCopy decodeInt32ForKey:@"bluetoothAudioFormat"];
    v5->_mixesVoiceWithMedia = [coderCopy decodeBoolForKey:@"mixesVoiceWithMedia"];
    v29 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioCategory"];
    audioCategory = v5->_audioCategory;
    v5->_audioCategory = v29;

    v31 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"audioMode"];
    audioMode = v5->_audioMode;
    v5->_audioMode = v31;

    v5->_needsManualInCallSounds = [coderCopy decodeBoolForKey:@"needsManualInCallSounds"];
    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = [v33 setWithObjects:{v34, v35, objc_opt_class(), 0}];
    v37 = [coderCopy decodeObjectOfClasses:v36 forKey:@"endedReasonUserInfo"];
    v38 = [v37 copy];
    endedReasonUserInfo = v5->_endedReasonUserInfo;
    v5->_endedReasonUserInfo = v38;

    v40 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endedReasonString"];
    endedReasonString = v5->_endedReasonString;
    v5->_endedReasonString = v40;

    v42 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"endedErrorString"];
    endedErrorString = v5->_endedErrorString;
    v5->_endedErrorString = v42;

    v5->_uplinkMuted = [coderCopy decodeBoolForKey:@"uplinkMuted"];
    v5->_downlinkMuted = [coderCopy decodeBoolForKey:@"downlinkMuted"];
    v5->_callRelaySupport = [coderCopy decodeInt32ForKey:@"callRelaySupport"];
    v5->_videoStreamToken = [coderCopy decodeIntegerForKey:@"videoStreamToken"];
    v44 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"callGroupUUID"];
    callGroupUUID = v5->_callGroupUUID;
    v5->_callGroupUUID = v44;

    v46 = MEMORY[0x1E695DFD8];
    v47 = objc_opt_class();
    v48 = objc_opt_class();
    v49 = objc_opt_class();
    v50 = objc_opt_class();
    v51 = [v46 setWithObjects:{v47, v48, v49, v50, objc_opt_class(), 0}];
    v52 = [coderCopy decodeObjectOfClasses:v51 forKey:@"providerContext"];
    v53 = [v52 copy];
    providerContext = v5->_providerContext;
    v5->_providerContext = v53;

    v55 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"displayContext"];
    v56 = [v55 copy];
    displayContext = v5->_displayContext;
    v5->_displayContext = v56;

    v58 = MEMORY[0x1E695DFD8];
    v59 = objc_opt_class();
    v60 = [v58 setWithObjects:{v59, objc_opt_class(), 0}];
    v61 = [coderCopy decodeObjectOfClasses:v60 forKey:@"remoteParticipantHandles"];
    v62 = [v61 copy];
    remoteParticipantHandles = v5->_remoteParticipantHandles;
    v5->_remoteParticipantHandles = v62;

    v5->_remoteUplinkMuted = [coderCopy decodeBoolForKey:@"remoteUplinkMuted"];
    v64 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localSenderIdentityUUID"];
    localSenderIdentityUUID = v5->_localSenderIdentityUUID;
    v5->_localSenderIdentityUUID = v64;

    v66 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localSenderIdentityAccountUUID"];
    localSenderIdentityAccountUUID = v5->_localSenderIdentityAccountUUID;
    v5->_localSenderIdentityAccountUUID = v66;

    v5->_shouldSuppressInCallUI = [coderCopy decodeBoolForKey:@"shouldSuppressInCallUI"];
    v5->_launchInBackground = [coderCopy decodeBoolForKey:@"launchInBackground"];
    v5->_mutuallyExclusiveCall = [coderCopy decodeBoolForKey:@"mutuallyExclusiveCall"];
    v5->_screenSharingIntention = [coderCopy decodeIntegerForKey:@"screenSharingIntention"];
    v5->_wantsStagingArea = [coderCopy decodeBoolForKey:@"wantsStagingArea"];
    v5->_inputAudioPowerSpectrumToken = [coderCopy decodeIntegerForKey:@"inputAudioPowerSpectrumToken"];
    v5->_outputAudioPowerSpectrumToken = [coderCopy decodeIntegerForKey:@"outputAudioPowerSpectrumToken"];
    v5->_isReRing = [coderCopy decodeBoolForKey:@"isReRing"];
    v5->_originatingUIType = [coderCopy decodeInt32ForKey:@"originatingUIType"];
    v5->_sharingScreen = [coderCopy decodeBoolForKey:@"sharingScreen"];
    v5->_conversation = [coderCopy decodeBoolForKey:@"conversation"];
    v68 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"screenShareAttributes"];
    screenShareAttributes = v5->_screenShareAttributes;
    v5->_screenShareAttributes = v68;

    v70 = objc_opt_class();
    v71 = NSStringFromSelector(sel_tokens);
    v72 = [coderCopy decodeObjectOfClass:v70 forKey:v71];
    tokens = v5->_tokens;
    v5->_tokens = v72;

    v74 = objc_opt_class();
    v75 = NSStringFromSelector(sel_localMemberHandleValue);
    v76 = [coderCopy decodeObjectOfClass:v74 forKey:v75];
    localMemberHandleValue = v5->_localMemberHandleValue;
    v5->_localMemberHandleValue = v76;

    v78 = NSStringFromSelector(sel_serviceStatus);
    v5->_serviceStatus = [coderCopy decodeIntegerForKey:v78];

    v79 = NSStringFromSelector(sel_transmissionMode);
    v5->_transmissionMode = [coderCopy decodeIntegerForKey:v79];

    v80 = NSStringFromSelector(sel_accessoryButtonEventsEnabled);
    v5->_accessoryButtonEventsEnabled = [coderCopy decodeBoolForKey:v80];

    v81 = NSStringFromSelector(sel_isReceivingTransmission);
    v5->_receivingTransmission = [coderCopy decodeBoolForKey:v81];

    v82 = NSStringFromSelector(sel_isSendingTransmission);
    v5->_sendingTransmission = [coderCopy decodeBoolForKey:v82];

    v83 = NSStringFromSelector(sel_recordingAvailability);
    v5->_recordingAvailability = [coderCopy decodeIntForKey:v83];

    v84 = NSStringFromSelector(sel_translationAvailability);
    v5->_translationAvailability = [coderCopy decodeIntForKey:v84];

    v85 = NSStringFromSelector(sel_supportsScreening);
    v5->_supportsScreening = [coderCopy decodeBoolForKey:v85];

    v5->_ptt = [coderCopy decodeBoolForKey:@"ptt"];
    v86 = objc_opt_class();
    v87 = NSStringFromSelector(sel_channelImageURL);
    v88 = [coderCopy decodeObjectOfClass:v86 forKey:v87];
    channelImageURL = v5->_channelImageURL;
    v5->_channelImageURL = v88;

    v90 = NSStringFromSelector(sel_screenSharingType);
    v5->_screenSharingType = [coderCopy decodeIntegerForKey:v90];

    v91 = NSStringFromSelector(sel_isSharePlayCapable);
    v5->_isSharePlayCapable = [coderCopy decodeBoolForKey:v91];

    v92 = NSStringFromSelector(sel_nearbyMode);
    v5->_nearbyMode = [coderCopy decodeIntegerForKey:v92];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v33.receiver = self;
  v33.super_class = TUProxyCall;
  coderCopy = coder;
  [(TUCall *)&v33 encodeWithCoder:coderCopy];
  activeRemoteParticipant = self->_activeRemoteParticipant;
  v6 = NSStringFromSelector(sel_activeRemoteParticipant);
  [coderCopy encodeObject:activeRemoteParticipant forKey:{v6, v33.receiver, v33.super_class}];

  [coderCopy encodeObject:self->_announceProviderIdentifier forKey:@"announceProviderIdentifier"];
  [coderCopy encodeObject:self->_callUUID forKey:@"callUUID"];
  [coderCopy encodeObject:self->_initiator forKey:@"initiator"];
  [coderCopy encodeObject:self->_handle forKey:@"handle"];
  [coderCopy encodeObject:self->_isoCountryCode forKey:@"isoCountryCode"];
  [coderCopy encodeObject:self->_callerNameFromNetwork forKey:@"callerNameFromNetwork"];
  [coderCopy encodeInt32:self->_callStatus forKey:@"callStatus"];
  [coderCopy encodeBool:self->_hostedOnCurrentDevice forKey:@"hostedOnCurrentDevice"];
  [coderCopy encodeObject:self->_provider forKey:@"provider"];
  [coderCopy encodeBool:self->_outgoing forKey:@"outgoing"];
  [coderCopy encodeBool:self->_voicemail forKey:@"voicemail"];
  [coderCopy encodeBool:self->_isVideo forKey:@"isVideo"];
  [coderCopy encodeBool:self->_thirdPartyVideo forKey:@"thirdPartyVideo"];
  [coderCopy encodeBool:self->_isSendingAudio forKey:@"isSendingAudio"];
  [coderCopy encodeBool:self->_isSendingVideo forKey:@"isSendingVideo"];
  [coderCopy encodeBool:self->_blocked forKey:@"blocked"];
  [coderCopy encodeBool:self->_emergency forKey:@"emergency"];
  [coderCopy encodeBool:self->_hasEmergencyVideoStream forKey:@"hasEmergencyVideoStream"];
  [coderCopy encodeObject:self->_emergencyMediaItems forKey:@"emergencyMediaItems"];
  [coderCopy encodeBool:self->_failureExpected forKey:@"failureExpected"];
  [coderCopy encodeBool:self->_international forKey:@"international"];
  [coderCopy encodeBool:self->_domestic forKey:@"domestic"];
  [coderCopy encodeBool:self->_sos forKey:@"sos"];
  [coderCopy encodeBool:self->_supportsEmergencyFallback forKey:@"supportsEmergencyFallback"];
  [coderCopy encodeBool:self->_usingBaseband forKey:@"usingBaseband"];
  [coderCopy encodeInt32:self->_ttyType forKey:@"ttyType"];
  [coderCopy encodeBool:self->_supportsTTYWithVoice forKey:@"supportsTTYWithVoice"];
  [coderCopy encodeInt32:LODWORD(self->_bluetoothAudioFormat) forKey:@"bluetoothAudioFormat"];
  [coderCopy encodeBool:self->_mixesVoiceWithMedia forKey:@"mixesVoiceWithMedia"];
  [coderCopy encodeObject:self->_audioCategory forKey:@"audioCategory"];
  [coderCopy encodeObject:self->_audioMode forKey:@"audioMode"];
  [coderCopy encodeBool:self->_needsManualInCallSounds forKey:@"needsManualInCallSounds"];
  [coderCopy encodeObject:self->_endedReasonUserInfo forKey:@"endedReasonUserInfo"];
  [coderCopy encodeObject:self->_endedReasonString forKey:@"endedReasonString"];
  [coderCopy encodeObject:self->_endedErrorString forKey:@"endedErrorString"];
  [coderCopy encodeBool:self->_uplinkMuted forKey:@"uplinkMuted"];
  [coderCopy encodeBool:self->_downlinkMuted forKey:@"downlinkMuted"];
  [coderCopy encodeInt32:self->_callRelaySupport forKey:@"callRelaySupport"];
  [coderCopy encodeInteger:self->_videoStreamToken forKey:@"videoStreamToken"];
  [coderCopy encodeObject:self->_callGroupUUID forKey:@"callGroupUUID"];
  [coderCopy encodeObject:self->_providerContext forKey:@"providerContext"];
  [coderCopy encodeObject:self->_displayContext forKey:@"displayContext"];
  [coderCopy encodeObject:self->_remoteParticipantHandles forKey:@"remoteParticipantHandles"];
  [coderCopy encodeBool:self->_remoteUplinkMuted forKey:@"remoteUplinkMuted"];
  [coderCopy encodeObject:self->_localSenderIdentityUUID forKey:@"localSenderIdentityUUID"];
  [coderCopy encodeObject:self->_localSenderIdentityAccountUUID forKey:@"localSenderIdentityAccountUUID"];
  [coderCopy encodeBool:self->_shouldSuppressInCallUI forKey:@"shouldSuppressInCallUI"];
  [coderCopy encodeBool:self->_launchInBackground forKey:@"launchInBackground"];
  [coderCopy encodeBool:self->_mutuallyExclusiveCall forKey:@"mutuallyExclusiveCall"];
  [coderCopy encodeBool:self->_wantsStagingArea forKey:@"wantsStagingArea"];
  [coderCopy encodeInteger:self->_inputAudioPowerSpectrumToken forKey:@"inputAudioPowerSpectrumToken"];
  [coderCopy encodeInteger:self->_outputAudioPowerSpectrumToken forKey:@"outputAudioPowerSpectrumToken"];
  [coderCopy encodeBool:self->_isReRing forKey:@"isReRing"];
  [coderCopy encodeInt32:self->_originatingUIType forKey:@"originatingUIType"];
  [coderCopy encodeBool:self->_sharingScreen forKey:@"sharingScreen"];
  [coderCopy encodeBool:self->_conversation forKey:@"conversation"];
  [coderCopy encodeObject:self->_screenShareAttributes forKey:@"screenShareAttributes"];
  [coderCopy encodeInteger:self->_screenSharingIntention forKey:@"screenSharingIntention"];
  [coderCopy encodeObject:self->_tokens forKey:@"tokens"];
  localMemberHandleValue = self->_localMemberHandleValue;
  v8 = NSStringFromSelector(sel_localMemberHandleValue);
  [coderCopy encodeObject:localMemberHandleValue forKey:v8];

  serviceStatus = self->_serviceStatus;
  v10 = NSStringFromSelector(sel_serviceStatus);
  [coderCopy encodeInteger:serviceStatus forKey:v10];

  transmissionMode = self->_transmissionMode;
  v12 = NSStringFromSelector(sel_transmissionMode);
  [coderCopy encodeInteger:transmissionMode forKey:v12];

  accessoryButtonEventsEnabled = self->_accessoryButtonEventsEnabled;
  v14 = NSStringFromSelector(sel_accessoryButtonEventsEnabled);
  [coderCopy encodeBool:accessoryButtonEventsEnabled forKey:v14];

  receivingTransmission = self->_receivingTransmission;
  v16 = NSStringFromSelector(sel_isReceivingTransmission);
  [coderCopy encodeBool:receivingTransmission forKey:v16];

  sendingTransmission = self->_sendingTransmission;
  v18 = NSStringFromSelector(sel_isSendingTransmission);
  [coderCopy encodeBool:sendingTransmission forKey:v18];

  recordingAvailability = self->_recordingAvailability;
  v20 = NSStringFromSelector(sel_recordingAvailability);
  [coderCopy encodeInt:recordingAvailability forKey:v20];

  translationAvailability = self->_translationAvailability;
  v22 = NSStringFromSelector(sel_translationAvailability);
  [coderCopy encodeInt:translationAvailability forKey:v22];

  supportsScreening = self->_supportsScreening;
  v24 = NSStringFromSelector(sel_supportsScreening);
  [coderCopy encodeBool:supportsScreening forKey:v24];

  [coderCopy encodeBool:self->_ptt forKey:@"ptt"];
  channelImageURL = self->_channelImageURL;
  v26 = NSStringFromSelector(sel_channelImageURL);
  [coderCopy encodeObject:channelImageURL forKey:v26];

  screenSharingType = self->_screenSharingType;
  v28 = NSStringFromSelector(sel_screenSharingType);
  [coderCopy encodeInteger:screenSharingType forKey:v28];

  isSharePlayCapable = self->_isSharePlayCapable;
  v30 = NSStringFromSelector(sel_isSharePlayCapable);
  [coderCopy encodeBool:isSharePlayCapable forKey:v30];

  nearbyMode = self->_nearbyMode;
  v32 = NSStringFromSelector(sel_nearbyMode);
  [coderCopy encodeInteger:nearbyMode forKey:v32];
}

- (TUCallServicesProxyCallActions)proxyCallActionsDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_proxyCallActionsDelegate);

  return WeakRetained;
}

- (CGSize)remoteScreenLandscapeAspectRatio
{
  width = self->_remoteScreenLandscapeAspectRatio.width;
  height = self->_remoteScreenLandscapeAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

@end