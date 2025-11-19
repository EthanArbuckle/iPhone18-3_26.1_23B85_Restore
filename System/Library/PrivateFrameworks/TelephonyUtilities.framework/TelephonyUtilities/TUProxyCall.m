@interface TUProxyCall
+ (id)proxyCallWithCall:(id)a3;
- (CGRect)remoteVideoContentRect;
- (CGSize)localAspectRatioForOrientation:(int64_t)a3;
- (CGSize)remoteAspectRatio;
- (CGSize)remoteScreenAspectRatio;
- (CGSize)remoteScreenLandscapeAspectRatio;
- (CGSize)remoteScreenPortraitAspectRatio;
- (TUCallServicesProxyCallActions)proxyCallActionsDelegate;
- (TUProxyCall)initWithCoder:(id)a3;
- (int)avcRemoteVideoModeForMode:(int64_t)a3;
- (int64_t)_cameraTypeForVideoAttributeCamera:(int)a3;
- (int64_t)_orientationForVideoAttributesOrientation:(int)a3;
- (void)_createLocalVideoIfNecessary;
- (void)_createRemoteVideoIfNecessary;
- (void)_synchronizeLocalVideo;
- (void)_synchronizeRemoteVideo;
- (void)_updateVideoCallAttributes:(id)a3;
- (void)_updateVideoStreamToken:(int64_t)a3;
- (void)addScreenSharingType:(unint64_t)a3;
- (void)answerWithRequest:(id)a3;
- (void)disconnectWithReason:(int)a3;
- (void)encodeWithCoder:(id)a3;
- (void)remoteVideoClient:(id)a3 remoteMediaDidStall:(BOOL)a4;
- (void)remoteVideoClient:(id)a3 remoteScreenAttributesDidChange:(id)a4;
- (void)remoteVideoClient:(id)a3 remoteVideoAttributesDidChange:(id)a4;
- (void)remoteVideoClient:(id)a3 remoteVideoDidPause:(BOOL)a4;
- (void)remoteVideoClient:(id)a3 videoDidDegrade:(BOOL)a4;
- (void)sendHardPauseDigits;
- (void)setBluetoothAudioFormat:(int64_t)a3;
- (void)setCallDisconnectedDueToComponentCrash;
- (void)setDisconnectedReason:(int)a3;
- (void)setDownlinkMuted:(BOOL)a3;
- (void)setEmergencyMediaItems:(id)a3;
- (void)setEndpointOnCurrentDevice:(BOOL)a3;
- (void)setHasEmergencyVideoStream:(BOOL)a3;
- (void)setIsSendingVideo:(BOOL)a3;
- (void)setLocalVideoLayer:(id)a3 forMode:(int64_t)a4;
- (void)setMediaStalled:(BOOL)a3;
- (void)setMixesVoiceWithMedia:(BOOL)a3;
- (void)setRemoteVideoLayer:(id)a3 forMode:(int64_t)a4;
- (void)setRemoteVideoPresentationSize:(CGSize)a3;
- (void)setRequiresRemoteVideo:(BOOL)a3;
- (void)setScreenShareAttributes:(id)a3;
- (void)setScreening:(BOOL)a3;
- (void)setSharingScreen:(BOOL)a3;
- (void)setSharingScreen:(BOOL)a3 attributes:(id)a4;
- (void)setShouldSuppressRingtone:(BOOL)a3;
- (void)setTransitionStatus:(int)a3;
- (void)setUplinkMuted:(BOOL)a3;
- (void)setVideoDegraded:(BOOL)a3;
- (void)setVideoPaused:(BOOL)a3;
- (void)setWantsHoldMusic:(BOOL)a3;
- (void)updateProxyCallWithDaemon;
- (void)updateWithCall:(id)a3;
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
  v3 = [(TUProxyCall *)self remoteScreenOrientation];

  [(TUProxyCall *)self localAspectRatioForOrientation:v3];
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

+ (id)proxyCallWithCall:(id)a3
{
  v4 = a3;
  v5 = [[a1 alloc] initWithCall:v4];

  return v5;
}

- (void)updateWithCall:(id)a3
{
  v74.receiver = self;
  v74.super_class = TUProxyCall;
  v4 = a3;
  [(TUCall *)&v74 updateWithCall:v4];
  v5 = [v4 activeRemoteParticipant];
  v6 = [v5 copy];
  activeRemoteParticipant = self->_activeRemoteParticipant;
  self->_activeRemoteParticipant = v6;

  v8 = [v4 announceProviderIdentifier];
  v9 = [v8 copy];
  announceProviderIdentifier = self->_announceProviderIdentifier;
  self->_announceProviderIdentifier = v9;

  v11 = [v4 handle];
  handle = self->_handle;
  self->_handle = v11;

  v13 = [v4 isoCountryCode];
  v14 = [v13 copy];
  isoCountryCode = self->_isoCountryCode;
  self->_isoCountryCode = v14;

  v16 = [v4 provider];
  v17 = [v16 base];
  provider = self->_provider;
  self->_provider = v17;

  v19 = [v4 initiator];
  initiator = self->_initiator;
  self->_initiator = v19;

  self->_callStatus = [v4 callStatus];
  v21 = [v4 callerNameFromNetwork];
  v22 = [v21 copy];
  callerNameFromNetwork = self->_callerNameFromNetwork;
  self->_callerNameFromNetwork = v22;

  self->_outgoing = [v4 isOutgoing];
  self->_voicemail = [v4 isVoicemail];
  self->_hostedOnCurrentDevice = [v4 isHostedOnCurrentDevice];
  v24 = [v4 callUUID];
  v25 = [v24 copy];
  callUUID = self->_callUUID;
  self->_callUUID = v25;

  self->_isVideo = [v4 isVideo];
  self->_thirdPartyVideo = [v4 isThirdPartyVideo];
  self->_isSendingAudio = [v4 isSendingAudio];
  self->_isSendingVideo = [v4 isSendingVideo];
  self->_blocked = [v4 isBlocked];
  self->_emergency = [v4 isEmergency];
  self->_hasEmergencyVideoStream = [v4 hasEmergencyVideoStream];
  v27 = [v4 emergencyMediaItems];
  v28 = [v27 copy];
  emergencyMediaItems = self->_emergencyMediaItems;
  self->_emergencyMediaItems = v28;

  self->_failureExpected = [v4 isFailureExpected];
  self->_international = [v4 isInternational];
  self->_domestic = [v4 isDomestic];
  self->_sos = [v4 isSOS];
  self->_supportsEmergencyFallback = [v4 supportsEmergencyFallback];
  self->_usingBaseband = [v4 isUsingBaseband];
  self->_ttyType = [v4 ttyType];
  self->_bluetoothAudioFormat = [v4 bluetoothAudioFormat];
  self->_mixesVoiceWithMedia = [v4 mixesVoiceWithMedia];
  self->_supportsTTYWithVoice = [v4 supportsTTYWithVoice];
  v30 = [v4 audioCategory];
  audioCategory = self->_audioCategory;
  self->_audioCategory = v30;

  v32 = [v4 audioMode];
  audioMode = self->_audioMode;
  self->_audioMode = v32;

  self->_needsManualInCallSounds = [v4 needsManualInCallSounds];
  v34 = [v4 endedReasonUserInfo];
  v35 = [v34 copy];
  endedReasonUserInfo = self->_endedReasonUserInfo;
  self->_endedReasonUserInfo = v35;

  v37 = [v4 endedErrorString];
  v38 = [v37 copy];
  endedErrorString = self->_endedErrorString;
  self->_endedErrorString = v38;

  v40 = [v4 endedReasonString];
  v41 = [v40 copy];
  endedReasonString = self->_endedReasonString;
  self->_endedReasonString = v41;

  self->_uplinkMuted = [v4 isUplinkMuted];
  self->_downlinkMuted = [v4 isDownlinkMuted];
  self->_callRelaySupport = [v4 callRelaySupport];
  v43 = [v4 localFrequency];
  localFrequency = self->_localFrequency;
  self->_localFrequency = v43;

  v45 = [v4 remoteFrequency];
  remoteFrequency = self->_remoteFrequency;
  self->_remoteFrequency = v45;

  [v4 localMeterLevel];
  self->_localMeterLevel = v47;
  [v4 remoteMeterLevel];
  self->_remoteMeterLevel = v48;
  v49 = [v4 callGroupUUID];
  callGroupUUID = self->_callGroupUUID;
  self->_callGroupUUID = v49;

  v51 = [v4 providerContext];
  v52 = [v51 copy];
  providerContext = self->_providerContext;
  self->_providerContext = v52;

  v54 = [v4 displayContext];
  v55 = [v54 copy];
  displayContext = self->_displayContext;
  self->_displayContext = v55;

  v57 = [v4 remoteParticipantHandles];
  v58 = [v57 copy];
  remoteParticipantHandles = self->_remoteParticipantHandles;
  self->_remoteParticipantHandles = v58;

  self->_remoteUplinkMuted = [v4 isRemoteUplinkMuted];
  v60 = [v4 localSenderIdentityUUID];
  localSenderIdentityUUID = self->_localSenderIdentityUUID;
  self->_localSenderIdentityUUID = v60;

  v62 = [v4 localSenderIdentityAccountUUID];
  localSenderIdentityAccountUUID = self->_localSenderIdentityAccountUUID;
  self->_localSenderIdentityAccountUUID = v62;

  self->_shouldSuppressInCallUI = [v4 shouldSuppressInCallUI];
  self->_launchInBackground = [v4 launchInBackground];
  self->_mutuallyExclusiveCall = [v4 isMutuallyExclusiveCall];
  self->_wantsStagingArea = [v4 wantsStagingArea];
  self->_inputAudioPowerSpectrumToken = [v4 inputAudioPowerSpectrumToken];
  self->_outputAudioPowerSpectrumToken = [v4 outputAudioPowerSpectrumToken];
  self->_isReRing = [v4 isReRing];
  self->_originatingUIType = [v4 originatingUIType];
  self->_sharingScreen = [v4 isSharingScreen];
  self->_conversation = [v4 isConversation];
  v64 = [v4 screenShareAttributes];
  screenShareAttributes = self->_screenShareAttributes;
  self->_screenShareAttributes = v64;

  v66 = [v4 tokens];
  tokens = self->_tokens;
  self->_tokens = v66;

  v68 = [v4 localMemberHandleValue];
  localMemberHandleValue = self->_localMemberHandleValue;
  self->_localMemberHandleValue = v68;

  self->_serviceStatus = [v4 serviceStatus];
  self->_transmissionMode = [v4 transmissionMode];
  self->_accessoryButtonEventsEnabled = [v4 accessoryButtonEventsEnabled];
  self->_receivingTransmission = [v4 isReceivingTransmission];
  self->_sendingTransmission = [v4 isSendingTransmission];
  self->_ptt = [v4 isPTT];
  v70 = [v4 channelImageURL];
  channelImageURL = self->_channelImageURL;
  self->_channelImageURL = v70;

  self->_recordingAvailability = [v4 recordingAvailability];
  self->_translationAvailability = [v4 translationAvailability];
  self->_supportsScreening = [v4 supportsScreening];
  self->_screenSharingIntention = [v4 screenSharingIntention];
  self->_screenSharingType = [v4 screenSharingType];
  self->_isSharePlayCapable = [v4 isSharePlayCapable];
  self->_nearbyMode = [v4 nearbyMode];
  v72 = [v4 videoCallAttributes];
  [(TUProxyCall *)self _updateVideoCallAttributes:v72];

  v73 = [v4 videoStreamToken];
  [(TUProxyCall *)self _updateVideoStreamToken:v73];
}

- (void)disconnectWithReason:(int)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v9.receiver = self;
  v9.super_class = TUProxyCall;
  [(TUCall *)&v9 disconnectWithReason:?];
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    v11 = a3;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "disconnectWithReason: reason: %d", buf, 8u);
  }

  v6 = [(TUProxyCall *)self proxyCallActionsDelegate];
  v7 = [(TUCall *)self uniqueProxyIdentifier];
  [v6 disconnectCallWithUniqueProxyIdentifier:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)answerWithRequest:(id)a3
{
  v6.receiver = self;
  v6.super_class = TUProxyCall;
  v4 = a3;
  [(TUCall *)&v6 answerWithRequest:v4];
  v5 = [(TUProxyCall *)self proxyCallActionsDelegate:v6.receiver];
  [v5 answerCallWithRequest:v4];
}

- (void)setDisconnectedReason:(int)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(TUCall *)self disconnectedReason]!= a3)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v11 = @"disconnectedReason";
      v12 = 1024;
      v13 = [(TUCall *)self disconnectedReason];
      v14 = 1024;
      v15 = a3;
      v16 = 2112;
      v17 = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set %@ from %d to %d for %@. Posting necessary notifications and updating daemon", buf, 0x22u);
    }

    v6 = [(TUCall *)self callNotificationManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __37__TUProxyCall_setDisconnectedReason___block_invoke;
    v8[3] = &unk_1E74256D0;
    v9 = a3;
    v8[4] = self;
    [v6 postNotificationsForCall:self afterUpdatesInBlock:v8];
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

- (void)setShouldSuppressRingtone:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  if ([(TUCall *)self shouldSuppressRingtone]!= a3)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v11 = @"shouldSuppressRingtone";
      v12 = 1024;
      v13 = [(TUCall *)self shouldSuppressRingtone];
      v14 = 1024;
      v15 = v3;
      v16 = 2112;
      v17 = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set %@ from %d to %d for %@. Posting necessary notifications and updating daemon", buf, 0x22u);
    }

    v6 = [(TUCall *)self callNotificationManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __41__TUProxyCall_setShouldSuppressRingtone___block_invoke;
    v8[3] = &unk_1E7425000;
    v9 = v3;
    v8[4] = self;
    [v6 postNotificationsForCall:self afterUpdatesInBlock:v8];
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

- (void)setWantsHoldMusic:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  if ([(TUCall *)self wantsHoldMusic]!= a3)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v11 = @"wantsHoldMusic";
      v12 = 1024;
      v13 = [(TUCall *)self wantsHoldMusic];
      v14 = 1024;
      v15 = v3;
      v16 = 2112;
      v17 = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set %@ from %d to %d for %@. Posting necessary notifications and updating daemon", buf, 0x22u);
    }

    v6 = [(TUCall *)self callNotificationManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __33__TUProxyCall_setWantsHoldMusic___block_invoke;
    v8[3] = &unk_1E7425000;
    v9 = v3;
    v8[4] = self;
    [v6 postNotificationsForCall:self afterUpdatesInBlock:v8];
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

- (void)setEndpointOnCurrentDevice:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  if ([(TUCall *)self isEndpointOnCurrentDevice]!= a3)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v11 = @"isEndpointOnCurrentDevice";
      v12 = 1024;
      v13 = [(TUCall *)self isEndpointOnCurrentDevice];
      v14 = 1024;
      v15 = v3;
      v16 = 2112;
      v17 = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set %@ from %d to %d for %@. Posting necessary notifications", buf, 0x22u);
    }

    v6 = [(TUCall *)self callNotificationManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __42__TUProxyCall_setEndpointOnCurrentDevice___block_invoke;
    v8[3] = &unk_1E7425000;
    v9 = v3;
    v8[4] = self;
    [v6 postNotificationsForCall:self afterUpdatesInBlock:v8];
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

- (void)setScreening:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  if ([(TUCall *)self isScreening]!= a3)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v11 = @"isScreening";
      v12 = 1024;
      v13 = [(TUCall *)self isScreening];
      v14 = 1024;
      v15 = v3;
      v16 = 2112;
      v17 = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set %@ from %d to %d for %@. Posting necessary notifications", buf, 0x22u);
    }

    v6 = [(TUCall *)self callNotificationManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __28__TUProxyCall_setScreening___block_invoke;
    v8[3] = &unk_1E7425000;
    v9 = v3;
    v8[4] = self;
    [v6 postNotificationsForCall:self afterUpdatesInBlock:v8];
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

- (void)setTransitionStatus:(int)a3
{
  v18 = *MEMORY[0x1E69E9840];
  if ([(TUCall *)self transitionStatus]!= a3)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v11 = @"transitionStatus";
      v12 = 1024;
      v13 = [(TUCall *)self transitionStatus];
      v14 = 1024;
      v15 = a3;
      v16 = 2112;
      v17 = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set %@ from %d to %d for %@. Posting necessary notifications", buf, 0x22u);
    }

    v6 = [(TUCall *)self callNotificationManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __35__TUProxyCall_setTransitionStatus___block_invoke;
    v8[3] = &unk_1E74256D0;
    v9 = a3;
    v8[4] = self;
    [v6 postNotificationsForCall:self afterUpdatesInBlock:v8];
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

- (void)setVideoPaused:(BOOL)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_videoPaused != a3)
  {
    v3 = a3;
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      videoPaused = self->_videoPaused;
      *buf = 138413058;
      v12 = @"videoPaused";
      v13 = 1024;
      v14 = videoPaused;
      v15 = 1024;
      v16 = v3;
      v17 = 2112;
      v18 = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set %@ from %d to %d for %@. Posting necessary notifications", buf, 0x22u);
    }

    v7 = [(TUCall *)self callNotificationManager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __30__TUProxyCall_setVideoPaused___block_invoke;
    v9[3] = &unk_1E7425000;
    v9[4] = self;
    v10 = v3;
    [v7 postNotificationsForCall:self afterUpdatesInBlock:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setMediaStalled:(BOOL)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_mediaStalled != a3)
  {
    v3 = a3;
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      mediaStalled = self->_mediaStalled;
      *buf = 138413058;
      v12 = @"mediaStalled";
      v13 = 1024;
      v14 = mediaStalled;
      v15 = 1024;
      v16 = v3;
      v17 = 2112;
      v18 = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set %@ from %d to %d for %@. Posting necessary notifications", buf, 0x22u);
    }

    v7 = [(TUCall *)self callNotificationManager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __31__TUProxyCall_setMediaStalled___block_invoke;
    v9[3] = &unk_1E7425000;
    v9[4] = self;
    v10 = v3;
    [v7 postNotificationsForCall:self afterUpdatesInBlock:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setVideoDegraded:(BOOL)a3
{
  v19 = *MEMORY[0x1E69E9840];
  if (self->_videoDegraded != a3)
  {
    v3 = a3;
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      videoDegraded = self->_videoDegraded;
      *buf = 138413058;
      v12 = @"videoDegraded";
      v13 = 1024;
      v14 = videoDegraded;
      v15 = 1024;
      v16 = v3;
      v17 = 2112;
      v18 = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set %@ from %d to %d for %@. Posting necessary notifications", buf, 0x22u);
    }

    v7 = [(TUCall *)self callNotificationManager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __32__TUProxyCall_setVideoDegraded___block_invoke;
    v9[3] = &unk_1E7425000;
    v9[4] = self;
    v10 = v3;
    [v7 postNotificationsForCall:self afterUpdatesInBlock:v9];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setUplinkMuted:(BOOL)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_uplinkMuted != a3)
  {
    v3 = a3;
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      v11 = [(TUProxyCall *)self isUplinkMuted];
      v12 = 1024;
      v13 = v3;
      v14 = 2112;
      v15 = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set uplinkMuted from %d to %d for %@. Posting necessary notifications and updating daemon", buf, 0x18u);
    }

    v6 = [(TUCall *)self callNotificationManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __30__TUProxyCall_setUplinkMuted___block_invoke;
    v8[3] = &unk_1E7425000;
    v8[4] = self;
    v9 = v3;
    [v6 postNotificationsForCall:self afterUpdatesInBlock:v8];
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

- (void)setDownlinkMuted:(BOOL)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_downlinkMuted != a3)
  {
    v3 = a3;
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      v11 = [(TUProxyCall *)self isDownlinkMuted];
      v12 = 1024;
      v13 = v3;
      v14 = 2112;
      v15 = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set downlinkMuted from %d to %d for %@. Posting necessary notifications and updating daemon", buf, 0x18u);
    }

    v6 = [(TUCall *)self callNotificationManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __32__TUProxyCall_setDownlinkMuted___block_invoke;
    v8[3] = &unk_1E7425000;
    v8[4] = self;
    v9 = v3;
    [v6 postNotificationsForCall:self afterUpdatesInBlock:v8];
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

- (void)addScreenSharingType:(unint64_t)a3
{
  v15 = *MEMORY[0x1E69E9840];
  if (self->_screenSharingType != a3)
  {
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218498;
      v10 = a3;
      v11 = 2048;
      v12 = [(TUProxyCall *)self screenSharingType];
      v13 = 2112;
      v14 = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to add %lu to screenSharingType %lu for %@. Posting necessary notifications and updating daemon", buf, 0x20u);
    }

    v6 = [(TUCall *)self callNotificationManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __36__TUProxyCall_addScreenSharingType___block_invoke;
    v8[3] = &unk_1E7425340;
    v8[4] = self;
    v8[5] = a3;
    [v6 postNotificationsForCall:self afterUpdatesInBlock:v8];
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

- (void)setIsSendingVideo:(BOOL)a3
{
  v16 = *MEMORY[0x1E69E9840];
  if (self->_isSendingVideo != a3)
  {
    v3 = a3;
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109634;
      v11 = [(TUProxyCall *)self isSendingVideo];
      v12 = 1024;
      v13 = v3;
      v14 = 2112;
      v15 = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set isSendingVideo from %d to %d for %@. Posting necessary notifications and updating daemon", buf, 0x18u);
    }

    v6 = [(TUCall *)self callNotificationManager];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __33__TUProxyCall_setIsSendingVideo___block_invoke;
    v8[3] = &unk_1E7425000;
    v8[4] = self;
    v9 = v3;
    [v6 postNotificationsForCall:self afterUpdatesInBlock:v8];
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

- (void)setSharingScreen:(BOOL)a3
{
  v17 = *MEMORY[0x1E69E9840];
  if (self->_sharingScreen != a3)
  {
    v3 = a3;
    v5 = TUDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      sharingScreen = self->_sharingScreen;
      *buf = 67109634;
      v12 = sharingScreen;
      v13 = 1024;
      v14 = v3;
      v15 = 2112;
      v16 = self;
      _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set sharingScreen from %d to %d for %@. Posting necessary notifications and updating daemon", buf, 0x18u);
    }

    v7 = [(TUCall *)self callNotificationManager];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __32__TUProxyCall_setSharingScreen___block_invoke;
    v9[3] = &unk_1E7425000;
    v9[4] = self;
    v10 = v3;
    [v7 postNotificationsForCall:self afterUpdatesInBlock:v9];
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

- (void)setMixesVoiceWithMedia:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  mixesVoiceWithMedia = self->_mixesVoiceWithMedia;
  v6 = TUDefaultLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (mixesVoiceWithMedia == v3)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Wrong use of API", buf, 2u);
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
      v15 = v3;
      v16 = 2112;
      v17 = self;
      _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Asked to set mixesVoiceWithMedia from %d to %d for self: %@. Posting necessary notifications and updating daemon", buf, 0x18u);
    }

    v6 = [(TUCall *)self callNotificationManager];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __38__TUProxyCall_setMixesVoiceWithMedia___block_invoke;
    v10[3] = &unk_1E7425000;
    v10[4] = self;
    v11 = v3;
    [v6 postNotificationsForCall:self afterUpdatesInBlock:v10];
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

- (void)setSharingScreen:(BOOL)a3 attributes:(id)a4
{
  v4 = a3;
  v23 = *MEMORY[0x1E69E9840];
  v6 = a4;
  if (v4 && !self->_sharingScreen)
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
      v20 = v6;
      v21 = 2112;
      v22 = self;
      _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Asked to set sharingScreen from %d to %d attributes: %@ for %@. Posting necessary notifications and updating daemon", buf, 0x22u);
    }

    v11 = [(TUCall *)self callNotificationManager];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __43__TUProxyCall_setSharingScreen_attributes___block_invoke;
    v12[3] = &unk_1E7425B78;
    v12[4] = self;
    v14 = v4;
    v13 = v6;
    [v11 postNotificationsForCall:self afterUpdatesInBlock:v12];
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
  v3 = [(TUProxyCall *)self proxyCallActionsDelegate];
  [v3 updateCallWithProxy:self];
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
  v3 = [(TUProxyCall *)self proxyCallActionsDelegate];
  v4 = [(TUCall *)self uniqueProxyIdentifier];
  [v3 sendHardPauseDigitsForCallWithUniqueProxyIdentifier:v4];

  v5 = [(TUCall *)self callNotificationManager];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__TUProxyCall_sendHardPauseDigits__block_invoke;
  v6[3] = &unk_1E7424950;
  v6[4] = self;
  [v5 postNotificationsForCall:self afterUpdatesInBlock:v6];
}

uint64_t __34__TUProxyCall_sendHardPauseDigits__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setHardPauseDigitsState:0];
  v2 = *(a1 + 32);

  return [v2 setHardPauseDigits:0];
}

- (void)setHasEmergencyVideoStream:(BOOL)a3
{
  v3 = a3;
  v18 = *MEMORY[0x1E69E9840];
  hasEmergencyVideoStream = self->_hasEmergencyVideoStream;
  v6 = TUDefaultLog();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (hasEmergencyVideoStream == v3)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Wrong use of API", buf, 2u);
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
      v15 = v3;
      v16 = 2112;
      v17 = self;
      _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "Asked to set hasEmergencyVideoStream from %d to %d for self: %@. Posting necessary notifications and updating daemon", buf, 0x18u);
    }

    v6 = [(TUCall *)self callNotificationManager];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __42__TUProxyCall_setHasEmergencyVideoStream___block_invoke;
    v10[3] = &unk_1E7425000;
    v10[4] = self;
    v11 = v3;
    [v6 postNotificationsForCall:self afterUpdatesInBlock:v10];
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

- (void)setEmergencyMediaItems:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    emergencyMediaItems = self->_emergencyMediaItems;
    *buf = 138412802;
    v13 = emergencyMediaItems;
    v14 = 2112;
    v15 = v4;
    v16 = 2112;
    v17 = self;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "Asked to set emergencyMediaItems from %@ to %@ for self: %@. Posting necessary notifications and updating daemon", buf, 0x20u);
  }

  v7 = [(TUCall *)self callNotificationManager];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __38__TUProxyCall_setEmergencyMediaItems___block_invoke;
  v10[3] = &unk_1E7424898;
  v10[4] = self;
  v11 = v4;
  v8 = v4;
  [v7 postNotificationsForCall:self afterUpdatesInBlock:v10];

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

- (int)avcRemoteVideoModeForMode:(int64_t)a3
{
  if (a3 == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = -1;
  }

  if (a3 == 2)
  {
    return 1;
  }

  else
  {
    return v3;
  }
}

- (void)setRemoteVideoLayer:(id)a3 forMode:(int64_t)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(TUProxyCall *)self avcRemoteVideoModeForMode:a4];
  v8 = [(TUProxyCall *)self remoteVideoModeToLayer];

  if (!v8)
  {
    v9 = [MEMORY[0x1E695DF90] dictionary];
    [(TUProxyCall *)self setRemoteVideoModeToLayer:v9];
  }

  v10 = TUDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412546;
    v16 = v6;
    v17 = 2048;
    v18 = v7;
    _os_log_impl(&dword_1956FD000, v10, OS_LOG_TYPE_DEFAULT, "Asked to set remote video layer %@ for mode %ld", &v15, 0x16u);
  }

  v11 = [(TUProxyCall *)self remoteVideoModeToLayer];
  v12 = [MEMORY[0x1E696AD98] numberWithInt:v7];
  [v11 setObject:v6 forKeyedSubscript:v12];

  if (!v6)
  {
    v13 = [(TUProxyCall *)self remoteVideo];
    [v13 setVideoLayer:0 forMode:v7];
  }

  [(TUProxyCall *)self _synchronizeRemoteVideo];

  v14 = *MEMORY[0x1E69E9840];
}

- (void)setLocalVideoLayer:(id)a3 forMode:(int64_t)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [(TUProxyCall *)self localVideoModeToLayer];

  if (!v7)
  {
    v8 = [MEMORY[0x1E695DF90] dictionary];
    [(TUProxyCall *)self setLocalVideoModeToLayer:v8];
  }

  v9 = TUDefaultLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138412546;
    v15 = v6;
    v16 = 2048;
    v17 = a4;
    _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "Asked to set local video layer %@ for mode %ld", &v14, 0x16u);
  }

  v10 = [(TUProxyCall *)self localVideoModeToLayer];
  v11 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  [v10 setObject:v6 forKeyedSubscript:v11];

  if (!v6)
  {
    v12 = [(TUProxyCall *)self localVideo];
    [v12 setVideoLayer:0 forMode:{-[TUProxyCall avcRemoteVideoModeForMode:](self, "avcRemoteVideoModeForMode:", a4)}];
  }

  [(TUProxyCall *)self _synchronizeLocalVideo];

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setRequiresRemoteVideo:(BOOL)a3
{
  if (self->_requiresRemoteVideo != a3)
  {
    self->_requiresRemoteVideo = a3;
    [(TUProxyCall *)self _synchronizeRemoteVideo];
  }
}

- (void)_updateVideoCallAttributes:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(TUCall *)self videoCallAttributes];
  v6 = [v5 isEqualToVideoCallAttributes:v4];

  if ((v6 & 1) == 0)
  {
    v7 = [(TUCall *)self videoCallAttributes];
    v8 = [v7 localVideoContextSlotIdentifier];
    v9 = [v4 localVideoContextSlotIdentifier];

    if (v8 != v9)
    {
      [(TUProxyCall *)self setLocalVideo:0];
    }

    v10 = [(TUCall *)self videoCallAttributes];
    v11 = [v10 remoteVideoContextSlotIdentifier];
    v12 = [v4 remoteVideoContextSlotIdentifier];

    if (v11 != v12)
    {
      [(TUProxyCall *)self setRemoteVideo:0];
    }

    v13 = [(TUCall *)self videoCallAttributes];
    v14 = [v13 remoteCameraOrientation];
    v15 = [v4 remoteCameraOrientation];

    if (v14 != v15)
    {
      -[TUProxyCall setRemoteCameraOrientation:](self, "setRemoteCameraOrientation:", [v4 remoteCameraOrientation]);
    }

    [(TUCall *)self setVideoCallAttributes:v4];
    v16 = TUDefaultLog();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138412290;
      v19 = v4;
      _os_log_impl(&dword_1956FD000, v16, OS_LOG_TYPE_DEFAULT, "Updating video call attributes %@", &v18, 0xCu);
    }

    [(TUProxyCall *)self _synchronizeLocalVideo];
    [(TUProxyCall *)self _synchronizeRemoteVideo];
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)_updateVideoStreamToken:(int64_t)a3
{
  if (self->_videoStreamToken != a3)
  {
    self->_videoStreamToken = a3;
    [(TUProxyCall *)self setRemoteVideo:0];

    [(TUProxyCall *)self _synchronizeRemoteVideo];
  }
}

- (void)_synchronizeLocalVideo
{
  v30 = *MEMORY[0x1E69E9840];
  v3 = [(TUProxyCall *)self localVideoModeToLayer];
  v4 = [v3 count];

  if (v4)
  {
    [(TUProxyCall *)self _createLocalVideoIfNecessary];
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = [(TUProxyCall *)self localVideoModeToLayer];
    v6 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
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
            objc_enumerationMutation(v5);
          }

          v11 = *(*(&v21 + 1) + 8 * i);
          v12 = [(TUProxyCall *)self localVideoModeToLayer];
          v13 = [v12 objectForKeyedSubscript:v11];

          v14 = TUDefaultLog();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = [v11 intValue];
            *buf = v20;
            v26 = v13;
            v27 = 1024;
            v28 = v15;
            _os_log_impl(&dword_1956FD000, v14, OS_LOG_TYPE_DEFAULT, "Setting video layer %@ for mode %d", buf, 0x12u);
          }

          v16 = [(TUProxyCall *)self localVideo];
          [v16 setVideoLayer:v13 forMode:{objc_msgSend(v11, "intValue")}];
        }

        v8 = [v5 countByEnumeratingWithState:&v21 objects:v29 count:16];
      }

      while (v8);
    }
  }

  else
  {
    v17 = [(TUProxyCall *)self localVideo];

    if (v17)
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
  v3 = [(TUProxyCall *)self remoteVideoModeToLayer];
  if ([v3 count])
  {

    goto LABEL_4;
  }

  v4 = [(TUProxyCall *)self requiresRemoteVideo];

  if (v4)
  {
LABEL_4:
    [(TUProxyCall *)self _createRemoteVideoIfNecessary];
    v5 = [(TUProxyCall *)self remoteVideo];

    if (v5)
    {
      v25 = 0u;
      v26 = 0u;
      v23 = 0u;
      v24 = 0u;
      v6 = [(TUProxyCall *)self remoteVideoModeToLayer];
      v7 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
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
              objc_enumerationMutation(v6);
            }

            v12 = *(*(&v23 + 1) + 8 * v11);
            v13 = [(TUProxyCall *)self remoteVideoModeToLayer];
            v14 = [v13 objectForKeyedSubscript:v12];

            v15 = TUDefaultLog();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              v16 = [v12 intValue];
              *buf = v22;
              v28 = v14;
              v29 = 1024;
              v30 = v16;
              _os_log_impl(&dword_1956FD000, v15, OS_LOG_TYPE_DEFAULT, "Setting video layer %@ for mode %d", buf, 0x12u);
            }

            v17 = [(TUProxyCall *)self remoteVideo];
            [v17 setVideoLayer:v14 forMode:{objc_msgSend(v12, "intValue")}];

            ++v11;
          }

          while (v9 != v11);
          v9 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
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

  v19 = [(TUProxyCall *)self remoteVideo];

  if (v19)
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
  v3 = [(TUProxyCall *)self localVideo];

  if (!v3)
  {
    v4 = [(TUCall *)self videoCallAttributes];
    v5 = [v4 localVideoContextSlotIdentifier];

    if (v5)
    {
      v6 = [TURemoteVideoClient alloc];
      v8 = [(TUCall *)self videoCallAttributes];
      v7 = -[TURemoteVideoClient initWithVideoContextSlotIdentifier:](v6, "initWithVideoContextSlotIdentifier:", [v8 localVideoContextSlotIdentifier]);
      [(TUProxyCall *)self setLocalVideo:v7];
    }
  }
}

- (void)_createRemoteVideoIfNecessary
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(TUProxyCall *)self remoteVideo];

  if (!v3)
  {
    v4 = [(TUCall *)self videoCallAttributes];
    v5 = [v4 remoteVideoContextSlotIdentifier];

    if (v5)
    {
      v6 = [TURemoteVideoClient alloc];
      v7 = [(TUCall *)self videoCallAttributes];
      v8 = -[TURemoteVideoClient initWithVideoContextSlotIdentifier:](v6, "initWithVideoContextSlotIdentifier:", [v7 remoteVideoContextSlotIdentifier]);
      [(TUProxyCall *)self setRemoteVideo:v8];
    }

    else if ([(TUProxyCall *)self videoStreamToken]>= 1)
    {
      v9 = CUTWeakLinkClass();
      v10 = TUDefaultLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134217984;
        v14 = [(TUProxyCall *)self videoStreamToken];
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

- (CGSize)localAspectRatioForOrientation:(int64_t)a3
{
  if (__CUTWeakCGSizeZero__pred_CGSizeZeroCoreGraphics != -1)
  {
    [TUProxyCall localAspectRatioForOrientation:];
  }

  if ((a3 - 3) < 2)
  {

    [(TUProxyCall *)self remoteScreenLandscapeAspectRatio];
  }

  else if ((a3 - 1) > 1)
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

- (void)setRemoteVideoPresentationSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v16 = *MEMORY[0x1E69E9840];
  v6 = TUDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [(TUProxyCall *)self videoStreamToken];
    v17.width = width;
    v17.height = height;
    v8 = NSStringFromSize(v17);
    v12 = 134218242;
    v13 = v7;
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_1956FD000, v6, OS_LOG_TYPE_DEFAULT, "self.videoStreamToken: %ld remoteVideoPresentationSize: %@", &v12, 0x16u);
  }

  if ([(TUProxyCall *)self isVideo])
  {
    v9 = [(TUProxyCall *)self proxyCallActionsDelegate];
    v10 = [(TUCall *)self uniqueProxyIdentifier];
    [v9 setRemoteVideoPresentationSizeForCallWithUniqueProxyIdentifier:v10 size:width, height];
  }

  else
  {
    v9 = TUDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 138412290;
      v13 = self;
      _os_log_impl(&dword_1956FD000, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to set remote video presentation size because call is not a video call: %@", &v12, 0xCu);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)setScreenShareAttributes:(id)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "screenShareAttributes: %@", &v9, 0xCu);
  }

  v6 = [(TUProxyCall *)self proxyCallActionsDelegate];
  v7 = [(TUCall *)self uniqueProxyIdentifier];
  [v6 setScreenShareAttributesForCallWithUniqueProxyIdentifier:v7 attributes:v4];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)setBluetoothAudioFormat:(int64_t)a3
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = TUDefaultLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 134217984;
    v10 = a3;
    _os_log_impl(&dword_1956FD000, v5, OS_LOG_TYPE_DEFAULT, "bluetoothAudioFormat: %ld", &v9, 0xCu);
  }

  v6 = [(TUProxyCall *)self proxyCallActionsDelegate];
  v7 = [(TUCall *)self uniqueProxyIdentifier];
  [v6 setBluetoothAudioFormatForCallWithUniqueProxyIdentifier:v7 bluetoothAudioFormat:a3];

  v8 = *MEMORY[0x1E69E9840];
}

- (void)remoteVideoClient:(id)a3 remoteVideoDidPause:(BOOL)a4
{
  v6 = [(TUCall *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__TUProxyCall_remoteVideoClient_remoteVideoDidPause___block_invoke;
  v7[3] = &unk_1E7425000;
  v7[4] = self;
  v8 = a4;
  dispatch_async(v6, v7);
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

- (void)remoteVideoClient:(id)a3 remoteMediaDidStall:(BOOL)a4
{
  v6 = [(TUCall *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__TUProxyCall_remoteVideoClient_remoteMediaDidStall___block_invoke;
  v7[3] = &unk_1E7425000;
  v7[4] = self;
  v8 = a4;
  dispatch_async(v6, v7);
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

- (void)remoteVideoClient:(id)a3 videoDidDegrade:(BOOL)a4
{
  v6 = [(TUCall *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __49__TUProxyCall_remoteVideoClient_videoDidDegrade___block_invoke;
  v7[3] = &unk_1E7425000;
  v7[4] = self;
  v8 = a4;
  dispatch_async(v6, v7);
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

- (void)remoteVideoClient:(id)a3 remoteScreenAttributesDidChange:(id)a4
{
  v5 = a4;
  v6 = [(TUCall *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__TUProxyCall_remoteVideoClient_remoteScreenAttributesDidChange___block_invoke;
  v8[3] = &unk_1E7424898;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
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

- (void)remoteVideoClient:(id)a3 remoteVideoAttributesDidChange:(id)a4
{
  v5 = a4;
  v6 = [(TUCall *)self queue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__TUProxyCall_remoteVideoClient_remoteVideoAttributesDidChange___block_invoke;
  v8[3] = &unk_1E7424898;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
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

- (int64_t)_cameraTypeForVideoAttributeCamera:(int)a3
{
  if (a3 > 2)
  {
    return 0;
  }

  else
  {
    return qword_19589E4C8[a3];
  }
}

- (int64_t)_orientationForVideoAttributesOrientation:(int)a3
{
  if (a3 < 4)
  {
    return a3 + 1;
  }

  else
  {
    return 0;
  }
}

- (TUProxyCall)initWithCoder:(id)a3
{
  v4 = a3;
  v94.receiver = self;
  v94.super_class = TUProxyCall;
  v5 = [(TUCall *)&v94 initWithCoder:v4];
  if (v5)
  {
    v6 = objc_opt_class();
    v7 = NSStringFromSelector(sel_activeRemoteParticipant);
    v8 = [v4 decodeObjectOfClass:v6 forKey:v7];
    activeRemoteParticipant = v5->_activeRemoteParticipant;
    v5->_activeRemoteParticipant = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"announceProviderIdentifier"];
    announceProviderIdentifier = v5->_announceProviderIdentifier;
    v5->_announceProviderIdentifier = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"initiator"];
    initiator = v5->_initiator;
    v5->_initiator = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"handle"];
    handle = v5->_handle;
    v5->_handle = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"isoCountryCode"];
    isoCountryCode = v5->_isoCountryCode;
    v5->_isoCountryCode = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callerNameFromNetwork"];
    callerNameFromNetwork = v5->_callerNameFromNetwork;
    v5->_callerNameFromNetwork = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callUUID"];
    callUUID = v5->_callUUID;
    v5->_callUUID = v20;

    v5->_callStatus = [v4 decodeInt32ForKey:@"callStatus"];
    v5->_hostedOnCurrentDevice = [v4 decodeBoolForKey:@"hostedOnCurrentDevice"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"provider"];
    provider = v5->_provider;
    v5->_provider = v22;

    v5->_outgoing = [v4 decodeBoolForKey:@"outgoing"];
    v5->_voicemail = [v4 decodeBoolForKey:@"voicemail"];
    v5->_isVideo = [v4 decodeBoolForKey:@"isVideo"];
    v5->_thirdPartyVideo = [v4 decodeBoolForKey:@"thirdPartyVideo"];
    v5->_isSendingAudio = [v4 decodeBoolForKey:@"isSendingAudio"];
    v5->_isSendingVideo = [v4 decodeBoolForKey:@"isSendingVideo"];
    v5->_blocked = [v4 decodeBoolForKey:@"blocked"];
    v5->_emergency = [v4 decodeBoolForKey:@"emergency"];
    v5->_hasEmergencyVideoStream = [v4 decodeBoolForKey:@"hasEmergencyVideoStream"];
    v24 = MEMORY[0x1E695DFD8];
    v25 = objc_opt_class();
    v26 = [v24 setWithObjects:{v25, objc_opt_class(), 0}];
    v27 = [v4 decodeObjectOfClasses:v26 forKey:@"emergencyMediaItems"];
    emergencyMediaItems = v5->_emergencyMediaItems;
    v5->_emergencyMediaItems = v27;

    v5->_failureExpected = [v4 decodeBoolForKey:@"failureExpected"];
    v5->_international = [v4 decodeBoolForKey:@"international"];
    v5->_domestic = [v4 decodeBoolForKey:@"domestic"];
    v5->_sos = [v4 decodeBoolForKey:@"sos"];
    v5->_supportsEmergencyFallback = [v4 decodeBoolForKey:@"supportsEmergencyFallback"];
    v5->_usingBaseband = [v4 decodeBoolForKey:@"usingBaseband"];
    v5->_ttyType = [v4 decodeInt32ForKey:@"ttyType"];
    v5->_supportsTTYWithVoice = [v4 decodeBoolForKey:@"supportsTTYWithVoice"];
    v5->_bluetoothAudioFormat = [v4 decodeInt32ForKey:@"bluetoothAudioFormat"];
    v5->_mixesVoiceWithMedia = [v4 decodeBoolForKey:@"mixesVoiceWithMedia"];
    v29 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"audioCategory"];
    audioCategory = v5->_audioCategory;
    v5->_audioCategory = v29;

    v31 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"audioMode"];
    audioMode = v5->_audioMode;
    v5->_audioMode = v31;

    v5->_needsManualInCallSounds = [v4 decodeBoolForKey:@"needsManualInCallSounds"];
    v33 = MEMORY[0x1E695DFD8];
    v34 = objc_opt_class();
    v35 = objc_opt_class();
    v36 = [v33 setWithObjects:{v34, v35, objc_opt_class(), 0}];
    v37 = [v4 decodeObjectOfClasses:v36 forKey:@"endedReasonUserInfo"];
    v38 = [v37 copy];
    endedReasonUserInfo = v5->_endedReasonUserInfo;
    v5->_endedReasonUserInfo = v38;

    v40 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endedReasonString"];
    endedReasonString = v5->_endedReasonString;
    v5->_endedReasonString = v40;

    v42 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"endedErrorString"];
    endedErrorString = v5->_endedErrorString;
    v5->_endedErrorString = v42;

    v5->_uplinkMuted = [v4 decodeBoolForKey:@"uplinkMuted"];
    v5->_downlinkMuted = [v4 decodeBoolForKey:@"downlinkMuted"];
    v5->_callRelaySupport = [v4 decodeInt32ForKey:@"callRelaySupport"];
    v5->_videoStreamToken = [v4 decodeIntegerForKey:@"videoStreamToken"];
    v44 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"callGroupUUID"];
    callGroupUUID = v5->_callGroupUUID;
    v5->_callGroupUUID = v44;

    v46 = MEMORY[0x1E695DFD8];
    v47 = objc_opt_class();
    v48 = objc_opt_class();
    v49 = objc_opt_class();
    v50 = objc_opt_class();
    v51 = [v46 setWithObjects:{v47, v48, v49, v50, objc_opt_class(), 0}];
    v52 = [v4 decodeObjectOfClasses:v51 forKey:@"providerContext"];
    v53 = [v52 copy];
    providerContext = v5->_providerContext;
    v5->_providerContext = v53;

    v55 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"displayContext"];
    v56 = [v55 copy];
    displayContext = v5->_displayContext;
    v5->_displayContext = v56;

    v58 = MEMORY[0x1E695DFD8];
    v59 = objc_opt_class();
    v60 = [v58 setWithObjects:{v59, objc_opt_class(), 0}];
    v61 = [v4 decodeObjectOfClasses:v60 forKey:@"remoteParticipantHandles"];
    v62 = [v61 copy];
    remoteParticipantHandles = v5->_remoteParticipantHandles;
    v5->_remoteParticipantHandles = v62;

    v5->_remoteUplinkMuted = [v4 decodeBoolForKey:@"remoteUplinkMuted"];
    v64 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localSenderIdentityUUID"];
    localSenderIdentityUUID = v5->_localSenderIdentityUUID;
    v5->_localSenderIdentityUUID = v64;

    v66 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localSenderIdentityAccountUUID"];
    localSenderIdentityAccountUUID = v5->_localSenderIdentityAccountUUID;
    v5->_localSenderIdentityAccountUUID = v66;

    v5->_shouldSuppressInCallUI = [v4 decodeBoolForKey:@"shouldSuppressInCallUI"];
    v5->_launchInBackground = [v4 decodeBoolForKey:@"launchInBackground"];
    v5->_mutuallyExclusiveCall = [v4 decodeBoolForKey:@"mutuallyExclusiveCall"];
    v5->_screenSharingIntention = [v4 decodeIntegerForKey:@"screenSharingIntention"];
    v5->_wantsStagingArea = [v4 decodeBoolForKey:@"wantsStagingArea"];
    v5->_inputAudioPowerSpectrumToken = [v4 decodeIntegerForKey:@"inputAudioPowerSpectrumToken"];
    v5->_outputAudioPowerSpectrumToken = [v4 decodeIntegerForKey:@"outputAudioPowerSpectrumToken"];
    v5->_isReRing = [v4 decodeBoolForKey:@"isReRing"];
    v5->_originatingUIType = [v4 decodeInt32ForKey:@"originatingUIType"];
    v5->_sharingScreen = [v4 decodeBoolForKey:@"sharingScreen"];
    v5->_conversation = [v4 decodeBoolForKey:@"conversation"];
    v68 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"screenShareAttributes"];
    screenShareAttributes = v5->_screenShareAttributes;
    v5->_screenShareAttributes = v68;

    v70 = objc_opt_class();
    v71 = NSStringFromSelector(sel_tokens);
    v72 = [v4 decodeObjectOfClass:v70 forKey:v71];
    tokens = v5->_tokens;
    v5->_tokens = v72;

    v74 = objc_opt_class();
    v75 = NSStringFromSelector(sel_localMemberHandleValue);
    v76 = [v4 decodeObjectOfClass:v74 forKey:v75];
    localMemberHandleValue = v5->_localMemberHandleValue;
    v5->_localMemberHandleValue = v76;

    v78 = NSStringFromSelector(sel_serviceStatus);
    v5->_serviceStatus = [v4 decodeIntegerForKey:v78];

    v79 = NSStringFromSelector(sel_transmissionMode);
    v5->_transmissionMode = [v4 decodeIntegerForKey:v79];

    v80 = NSStringFromSelector(sel_accessoryButtonEventsEnabled);
    v5->_accessoryButtonEventsEnabled = [v4 decodeBoolForKey:v80];

    v81 = NSStringFromSelector(sel_isReceivingTransmission);
    v5->_receivingTransmission = [v4 decodeBoolForKey:v81];

    v82 = NSStringFromSelector(sel_isSendingTransmission);
    v5->_sendingTransmission = [v4 decodeBoolForKey:v82];

    v83 = NSStringFromSelector(sel_recordingAvailability);
    v5->_recordingAvailability = [v4 decodeIntForKey:v83];

    v84 = NSStringFromSelector(sel_translationAvailability);
    v5->_translationAvailability = [v4 decodeIntForKey:v84];

    v85 = NSStringFromSelector(sel_supportsScreening);
    v5->_supportsScreening = [v4 decodeBoolForKey:v85];

    v5->_ptt = [v4 decodeBoolForKey:@"ptt"];
    v86 = objc_opt_class();
    v87 = NSStringFromSelector(sel_channelImageURL);
    v88 = [v4 decodeObjectOfClass:v86 forKey:v87];
    channelImageURL = v5->_channelImageURL;
    v5->_channelImageURL = v88;

    v90 = NSStringFromSelector(sel_screenSharingType);
    v5->_screenSharingType = [v4 decodeIntegerForKey:v90];

    v91 = NSStringFromSelector(sel_isSharePlayCapable);
    v5->_isSharePlayCapable = [v4 decodeBoolForKey:v91];

    v92 = NSStringFromSelector(sel_nearbyMode);
    v5->_nearbyMode = [v4 decodeIntegerForKey:v92];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v33.receiver = self;
  v33.super_class = TUProxyCall;
  v4 = a3;
  [(TUCall *)&v33 encodeWithCoder:v4];
  activeRemoteParticipant = self->_activeRemoteParticipant;
  v6 = NSStringFromSelector(sel_activeRemoteParticipant);
  [v4 encodeObject:activeRemoteParticipant forKey:{v6, v33.receiver, v33.super_class}];

  [v4 encodeObject:self->_announceProviderIdentifier forKey:@"announceProviderIdentifier"];
  [v4 encodeObject:self->_callUUID forKey:@"callUUID"];
  [v4 encodeObject:self->_initiator forKey:@"initiator"];
  [v4 encodeObject:self->_handle forKey:@"handle"];
  [v4 encodeObject:self->_isoCountryCode forKey:@"isoCountryCode"];
  [v4 encodeObject:self->_callerNameFromNetwork forKey:@"callerNameFromNetwork"];
  [v4 encodeInt32:self->_callStatus forKey:@"callStatus"];
  [v4 encodeBool:self->_hostedOnCurrentDevice forKey:@"hostedOnCurrentDevice"];
  [v4 encodeObject:self->_provider forKey:@"provider"];
  [v4 encodeBool:self->_outgoing forKey:@"outgoing"];
  [v4 encodeBool:self->_voicemail forKey:@"voicemail"];
  [v4 encodeBool:self->_isVideo forKey:@"isVideo"];
  [v4 encodeBool:self->_thirdPartyVideo forKey:@"thirdPartyVideo"];
  [v4 encodeBool:self->_isSendingAudio forKey:@"isSendingAudio"];
  [v4 encodeBool:self->_isSendingVideo forKey:@"isSendingVideo"];
  [v4 encodeBool:self->_blocked forKey:@"blocked"];
  [v4 encodeBool:self->_emergency forKey:@"emergency"];
  [v4 encodeBool:self->_hasEmergencyVideoStream forKey:@"hasEmergencyVideoStream"];
  [v4 encodeObject:self->_emergencyMediaItems forKey:@"emergencyMediaItems"];
  [v4 encodeBool:self->_failureExpected forKey:@"failureExpected"];
  [v4 encodeBool:self->_international forKey:@"international"];
  [v4 encodeBool:self->_domestic forKey:@"domestic"];
  [v4 encodeBool:self->_sos forKey:@"sos"];
  [v4 encodeBool:self->_supportsEmergencyFallback forKey:@"supportsEmergencyFallback"];
  [v4 encodeBool:self->_usingBaseband forKey:@"usingBaseband"];
  [v4 encodeInt32:self->_ttyType forKey:@"ttyType"];
  [v4 encodeBool:self->_supportsTTYWithVoice forKey:@"supportsTTYWithVoice"];
  [v4 encodeInt32:LODWORD(self->_bluetoothAudioFormat) forKey:@"bluetoothAudioFormat"];
  [v4 encodeBool:self->_mixesVoiceWithMedia forKey:@"mixesVoiceWithMedia"];
  [v4 encodeObject:self->_audioCategory forKey:@"audioCategory"];
  [v4 encodeObject:self->_audioMode forKey:@"audioMode"];
  [v4 encodeBool:self->_needsManualInCallSounds forKey:@"needsManualInCallSounds"];
  [v4 encodeObject:self->_endedReasonUserInfo forKey:@"endedReasonUserInfo"];
  [v4 encodeObject:self->_endedReasonString forKey:@"endedReasonString"];
  [v4 encodeObject:self->_endedErrorString forKey:@"endedErrorString"];
  [v4 encodeBool:self->_uplinkMuted forKey:@"uplinkMuted"];
  [v4 encodeBool:self->_downlinkMuted forKey:@"downlinkMuted"];
  [v4 encodeInt32:self->_callRelaySupport forKey:@"callRelaySupport"];
  [v4 encodeInteger:self->_videoStreamToken forKey:@"videoStreamToken"];
  [v4 encodeObject:self->_callGroupUUID forKey:@"callGroupUUID"];
  [v4 encodeObject:self->_providerContext forKey:@"providerContext"];
  [v4 encodeObject:self->_displayContext forKey:@"displayContext"];
  [v4 encodeObject:self->_remoteParticipantHandles forKey:@"remoteParticipantHandles"];
  [v4 encodeBool:self->_remoteUplinkMuted forKey:@"remoteUplinkMuted"];
  [v4 encodeObject:self->_localSenderIdentityUUID forKey:@"localSenderIdentityUUID"];
  [v4 encodeObject:self->_localSenderIdentityAccountUUID forKey:@"localSenderIdentityAccountUUID"];
  [v4 encodeBool:self->_shouldSuppressInCallUI forKey:@"shouldSuppressInCallUI"];
  [v4 encodeBool:self->_launchInBackground forKey:@"launchInBackground"];
  [v4 encodeBool:self->_mutuallyExclusiveCall forKey:@"mutuallyExclusiveCall"];
  [v4 encodeBool:self->_wantsStagingArea forKey:@"wantsStagingArea"];
  [v4 encodeInteger:self->_inputAudioPowerSpectrumToken forKey:@"inputAudioPowerSpectrumToken"];
  [v4 encodeInteger:self->_outputAudioPowerSpectrumToken forKey:@"outputAudioPowerSpectrumToken"];
  [v4 encodeBool:self->_isReRing forKey:@"isReRing"];
  [v4 encodeInt32:self->_originatingUIType forKey:@"originatingUIType"];
  [v4 encodeBool:self->_sharingScreen forKey:@"sharingScreen"];
  [v4 encodeBool:self->_conversation forKey:@"conversation"];
  [v4 encodeObject:self->_screenShareAttributes forKey:@"screenShareAttributes"];
  [v4 encodeInteger:self->_screenSharingIntention forKey:@"screenSharingIntention"];
  [v4 encodeObject:self->_tokens forKey:@"tokens"];
  localMemberHandleValue = self->_localMemberHandleValue;
  v8 = NSStringFromSelector(sel_localMemberHandleValue);
  [v4 encodeObject:localMemberHandleValue forKey:v8];

  serviceStatus = self->_serviceStatus;
  v10 = NSStringFromSelector(sel_serviceStatus);
  [v4 encodeInteger:serviceStatus forKey:v10];

  transmissionMode = self->_transmissionMode;
  v12 = NSStringFromSelector(sel_transmissionMode);
  [v4 encodeInteger:transmissionMode forKey:v12];

  accessoryButtonEventsEnabled = self->_accessoryButtonEventsEnabled;
  v14 = NSStringFromSelector(sel_accessoryButtonEventsEnabled);
  [v4 encodeBool:accessoryButtonEventsEnabled forKey:v14];

  receivingTransmission = self->_receivingTransmission;
  v16 = NSStringFromSelector(sel_isReceivingTransmission);
  [v4 encodeBool:receivingTransmission forKey:v16];

  sendingTransmission = self->_sendingTransmission;
  v18 = NSStringFromSelector(sel_isSendingTransmission);
  [v4 encodeBool:sendingTransmission forKey:v18];

  recordingAvailability = self->_recordingAvailability;
  v20 = NSStringFromSelector(sel_recordingAvailability);
  [v4 encodeInt:recordingAvailability forKey:v20];

  translationAvailability = self->_translationAvailability;
  v22 = NSStringFromSelector(sel_translationAvailability);
  [v4 encodeInt:translationAvailability forKey:v22];

  supportsScreening = self->_supportsScreening;
  v24 = NSStringFromSelector(sel_supportsScreening);
  [v4 encodeBool:supportsScreening forKey:v24];

  [v4 encodeBool:self->_ptt forKey:@"ptt"];
  channelImageURL = self->_channelImageURL;
  v26 = NSStringFromSelector(sel_channelImageURL);
  [v4 encodeObject:channelImageURL forKey:v26];

  screenSharingType = self->_screenSharingType;
  v28 = NSStringFromSelector(sel_screenSharingType);
  [v4 encodeInteger:screenSharingType forKey:v28];

  isSharePlayCapable = self->_isSharePlayCapable;
  v30 = NSStringFromSelector(sel_isSharePlayCapable);
  [v4 encodeBool:isSharePlayCapable forKey:v30];

  nearbyMode = self->_nearbyMode;
  v32 = NSStringFromSelector(sel_nearbyMode);
  [v4 encodeInteger:nearbyMode forKey:v32];
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