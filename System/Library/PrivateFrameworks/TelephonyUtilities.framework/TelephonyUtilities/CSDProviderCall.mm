@interface CSDProviderCall
- (AVAudioSession)proxyAVAudioSession;
- (BOOL)accessoryButtonEventsEnabled;
- (BOOL)hasBeenRedirected;
- (BOOL)hasConnected;
- (BOOL)hasEnded;
- (BOOL)hasStartedConnecting;
- (BOOL)ignoresBluetoothDeviceUID;
- (BOOL)isBlocked;
- (BOOL)isConversation;
- (BOOL)isDomestic;
- (BOOL)isDownlinkMuted;
- (BOOL)isEmergency;
- (BOOL)isFailureExpected;
- (BOOL)isInternational;
- (BOOL)isMutuallyExclusiveCall;
- (BOOL)isOneToOneModeEnabled;
- (BOOL)isReRing;
- (BOOL)isReceptionistCapable;
- (BOOL)isRemoteUplinkMuted;
- (BOOL)isThirdPartyVideo;
- (BOOL)isUplinkMuted;
- (BOOL)isUsingBaseband;
- (BOOL)isVideo;
- (BOOL)mayRequireBreakBeforeMake;
- (BOOL)mixesVoiceWithMedia;
- (BOOL)needsManualInCallSounds;
- (BOOL)prefersExclusiveAccessToCellularNetwork;
- (BOOL)shouldSuppressInCallUI;
- (BOOL)supportsEmergencyFallback;
- (BOOL)supportsRecents;
- (BOOL)supportsScreening;
- (BOOL)supportsTTYWithVoice;
- (BOOL)usesSystemMuting;
- (CSDProviderCall)initWithHandoffContext:(id)context backingCallSource:(id)source;
- (CSDProviderCall)initWithUniqueProxyIdentifier:(id)identifier configuration:(id)configuration;
- (CSDProviderCallDelegate)providerCallDelegate;
- (CXCallUpdate)mergedCallUpdate;
- (LSApplicationRecord)applicationRecord;
- (NSNotificationCenter)defaultNotificationCenter;
- (NSUUID)callGroupUUID;
- (TUCallCenter)callCenter;
- (id)activeRemoteParticipantForCallUpdate:(id)update;
- (id)activeRemoteParticipants;
- (id)announceProviderIdentifier;
- (id)audioCategory;
- (id)audioMode;
- (id)callHistoryIdentifier;
- (id)callerNameFromNetwork;
- (id)conversationID;
- (id)endedReasonUserInfo;
- (id)handle;
- (id)handoffActivityUserInfo;
- (id)handoffDynamicIdentifier;
- (id)hardPauseDigits;
- (id)imageURLForCXSandboxExtendedURL:(id)l;
- (id)initIncomingWithBackingCallSource:(id)source UUID:(id)d update:(id)update originatingUIType:(int)type;
- (id)initOutgoingWithDialRequest:(id)request;
- (id)initOutgoingWithDialRequest:(id)request configuration:(id)configuration;
- (id)initOutgoingWithJoinConversationRequest:(id)request;
- (id)initOutgoingWithRequestedStartCallAction:(id)action backingCallSource:(id)source;
- (id)initOutgoingWithUniqueProxyIdentifier:(id)identifier backingCallSourceIdentifier:(id)sourceIdentifier callUpdate:(id)update isVideo:(BOOL)video endpointOnCurrentDevice:(BOOL)device originatingUIType:(int)type configuration:(id)configuration;
- (id)initOutgoingWithUpdate:(id)update callUUID:(id)d backingCallSource:(id)source isExpanseProvider:(BOOL)provider;
- (id)initiator;
- (id)isoCountryCode;
- (id)localSenderIdentityAccountUUID;
- (id)localSenderIdentityUUID;
- (id)provider;
- (id)providerContext;
- (id)recordingDisabledError;
- (id)remoteParticipantHandles;
- (id)startCallActionWithDialRequest:(id)request;
- (id)systemControllerSetUplinkMutedBlock;
- (id)systemControllerUplinkMutedBlock;
- (id)tuScreenShareAttributesForScreenAttributes:(id)attributes;
- (id)usesSystemMutingBlock;
- (int)_switchFromFailureReasonToDisconnectedReason:(int64_t)reason;
- (int)callStatusFromUnderlyingSource;
- (int)commTrustScore;
- (int)hardPauseDigitsState;
- (int)ttyType;
- (int64_t)_switchToCXCallFailureReasonFromTUCallDisconnectedReason:(int)reason;
- (int64_t)audioInterruptionOperationMode;
- (int64_t)audioInterruptionProviderType;
- (int64_t)bluetoothAudioFormat;
- (int64_t)inputAudioPowerSpectrumToken;
- (int64_t)nearbyMode;
- (int64_t)outputAudioPowerSpectrumToken;
- (int64_t)providerEndedReason;
- (int64_t)providerErrorCode;
- (int64_t)screenSharingIntention;
- (int64_t)serviceStatus;
- (int64_t)soundRegion;
- (int64_t)transmissionMode;
- (int64_t)videoStreamToken;
- (unint64_t)initialLinkType;
- (void)_sendDTMFDigits:(id)digits type:(int64_t)type;
- (void)_sendSoftPauseDigitsIfNecessary;
- (void)answerWithRequest:(id)request;
- (void)dealloc;
- (void)dequeueNextPauseDigits;
- (void)dialWithRequest:(id)request displayContext:(id)context;
- (void)donateHandles:(id)handles;
- (void)groupWithOtherCall:(id)call;
- (void)handleAudioSessionActivationStateChangedTo:(id)to;
- (void)hold;
- (void)joinConversationWithRequest:(id)request;
- (void)pauseDigitsQueueChanged:(id)changed;
- (void)playRemoteDTMFToneForKey:(unsigned __int8)key;
- (void)sendHardPauseDigits;
- (void)setBluetoothAudioFormat:(int64_t)format;
- (void)setCallGroupUUID:(id)d;
- (void)setDateConnected:(id)connected;
- (void)setFailureContext:(id)context;
- (void)setHeld:(BOOL)held;
- (void)setInjectingAudio:(BOOL)audio;
- (void)setMediaPlaybackOnExternalDevice:(BOOL)device;
- (void)setMixesVoiceWithMedia:(BOOL)media;
- (void)setOutgoing:(BOOL)outgoing;
- (void)setProviderFailureReasonIfNecessary:(int64_t)necessary;
- (void)setProviderSource:(id)source;
- (void)setRemoteVideoPresentationSize:(CGSize)size;
- (void)setRemoteVideoPresentationState:(int)state;
- (void)setScreenShareAttributes:(id)attributes;
- (void)setSendingVideo:(BOOL)video;
- (void)setTtyType:(int)type;
- (void)setVideo:(BOOL)video;
- (void)systemMuteStatusChanged:(id)changed;
- (void)ungroup;
- (void)unhold;
- (void)updateForDisconnection;
- (void)updateWithCallUpdate:(id)update notifyDelegate:(BOOL)delegate;
- (void)updateWithOverrideCallProperties:(id)properties;
@end

@implementation CSDProviderCall

- (BOOL)isOneToOneModeEnabled
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  isOneToOneModeEnabled = [mergedCallUpdate isOneToOneModeEnabled];

  return isOneToOneModeEnabled;
}

- (id)callerNameFromNetwork
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  localizedCallerName = [mergedCallUpdate localizedCallerName];

  return localizedCallerName;
}

- (BOOL)isInternational
{
  providerIdentifier = [(CSDProviderCall *)self providerIdentifier];
  if (TUStringsAreCaseInsensitiveEqual())
  {
    isIncoming = [(CSDProviderCall *)self isIncoming];

    if (isIncoming)
    {
      mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
      account = [mergedCallUpdate account];
      isoCountryCode = [account isoCountryCode];

      if ([isoCountryCode length])
      {
        isoCountryCode2 = [(CSDProviderCall *)self isoCountryCode];
        if ([isoCountryCode2 length])
        {
          v9 = TUStringsAreCaseInsensitiveEqual();
          if (TUStringsAreCaseInsensitiveEqual() & 1) != 0 || (TUStringsAreCaseInsensitiveEqual())
          {
            v10 = 1;
          }

          else
          {
            v10 = TUStringsAreCaseInsensitiveEqual();
          }

          userConfiguration = [(CSDProviderCall *)self userConfiguration];
          simulateInternationalCall = [userConfiguration simulateInternationalCall];

          v11 = 0;
          if (TUStringsAreCaseInsensitiveEqual() && ((v9 | v10 | simulateInternationalCall) & 1) != 0)
          {
            remoteParticipantHandles = [(CSDProviderCall *)self remoteParticipantHandles];
            anyObject = [remoteParticipantHandles anyObject];

            value = [anyObject value];
            if ([value length])
            {
              v18 = _PNCopyInternationalPrefix();
              v11 = [v18 length] != 0;
            }

            else
            {
              v11 = 0;
            }
          }

          goto LABEL_23;
        }

        v12 = sub_100004778();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v20 = 0;
          _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "International status is false; celluar network ISO country code is not available.", v20, 2u);
        }
      }

      else
      {
        isoCountryCode2 = sub_100004778();
        if (os_log_type_enabled(isoCountryCode2, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, isoCountryCode2, OS_LOG_TYPE_DEFAULT, "International status is false; service provider ISO country code is not available.", buf, 2u);
        }
      }

      v11 = 0;
LABEL_23:

      return v11;
    }
  }

  else
  {
  }

  return 0;
}

- (id)handle
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  remoteMember = [mergedCallUpdate remoteMember];

  if (!remoteMember || ([remoteMember handle], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "value"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    v16 = 0;
    goto LABEL_17;
  }

  pauseDigitsQueue = [(CSDProviderCall *)self pauseDigitsQueue];
  handle = [remoteMember handle];
  value = [handle value];
  if (pauseDigitsQueue)
  {
    pauseDigitsQueue2 = [(CSDProviderCall *)self pauseDigitsQueue];
    originalPauseDigitsString = [pauseDigitsQueue2 originalPauseDigitsString];
    v12 = [value stringByAppendingString:originalPauseDigitsString];

    value = v12;
  }

  handle2 = [remoteMember handle];
  type = [handle2 type];

  if (type == 1)
  {
    v15 = [TUHandle normalizedGenericHandleForValue:value];
LABEL_12:
    v16 = v15;
    goto LABEL_13;
  }

  if (type != 2)
  {
    if (type != 3)
    {
      v16 = 0;
      goto LABEL_16;
    }

    v15 = [TUHandle normalizedEmailAddressHandleForValue:value];
    goto LABEL_12;
  }

  isoCountryCode = [(CSDProviderCall *)self isoCountryCode];
  v16 = [TUHandle normalizedPhoneNumberHandleForValue:value isoCountryCode:isoCountryCode];

LABEL_13:
  if (!v16)
  {
    goto LABEL_17;
  }

  value = [remoteMember handle];
  siriDisplayName = [value siriDisplayName];
  [v16 setSiriDisplayName:siriDisplayName];

LABEL_16:
LABEL_17:

  return v16;
}

- (CXCallUpdate)mergedCallUpdate
{
  overridePropertiesUpdate = [(CSDCall *)self overridePropertiesUpdate];
  v4 = overridePropertiesUpdate;
  if (overridePropertiesUpdate && (([overridePropertiesUpdate hasSet], (v5 & 0x80000) != 0) || (objc_msgSend(v4, "hasSet") & 0x1000000000000000) != 0 || (objc_msgSend(v4, "hasSet"), (v6 & 0x1000000) != 0) || (objc_msgSend(v4, "hasSet") & 0x2000000000000000) != 0 || (objc_msgSend(v4, "hasSet"), (v7 & 2) != 0) || (objc_msgSend(v4, "hasSet"), (v8 & 0x100000) != 0)))
  {
    v9 = [(CXCallUpdate *)self->_mergedCallUpdate copy];
    [(CXCallUpdate *)v9 updateWithUpdate:v4];
  }

  else
  {
    v9 = self->_mergedCallUpdate;
  }

  return v9;
}

- (BOOL)mayRequireBreakBeforeMake
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  mayRequireBreakBeforeMake = [mergedCallUpdate mayRequireBreakBeforeMake];

  return mayRequireBreakBeforeMake;
}

- (BOOL)isEmergency
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  isEmergency = [mergedCallUpdate isEmergency];

  return isEmergency;
}

- (id)activeRemoteParticipants
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  activeRemoteParticipantHandles = [mergedCallUpdate activeRemoteParticipantHandles];
  if (activeRemoteParticipantHandles)
  {
    mergedCallUpdate2 = [(CSDProviderCall *)self mergedCallUpdate];
    activeRemoteParticipantHandles2 = [mergedCallUpdate2 activeRemoteParticipantHandles];
    v7 = [CXHandle tuHandlesWithMembers:activeRemoteParticipantHandles2];
  }

  else
  {
    v7 = +[NSSet set];
  }

  return v7;
}

- (id)remoteParticipantHandles
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  remoteParticipantHandles = [mergedCallUpdate remoteParticipantHandles];

  if (remoteParticipantHandles)
  {
    mergedCallUpdate2 = [(CSDProviderCall *)self mergedCallUpdate];
    remoteParticipantHandles2 = [mergedCallUpdate2 remoteParticipantHandles];
    remoteParticipantHandles3 = [CXHandle tuHandlesWithMembers:remoteParticipantHandles2];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CSDProviderCall;
    remoteParticipantHandles3 = [(CSDProviderCall *)&v9 remoteParticipantHandles];
  }

  return remoteParticipantHandles3;
}

- (int64_t)audioInterruptionProviderType
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  audioInterruptionProvider = [mergedCallUpdate audioInterruptionProvider];

  if (audioInterruptionProvider == 1)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    mergedCallUpdate2 = [(CSDProviderCall *)self mergedCallUpdate];
    v9 = 134218240;
    audioInterruptionProvider2 = [mergedCallUpdate2 audioInterruptionProvider];
    v11 = 2048;
    v12 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "mergedCallUpdate.audioInterruptionProvider: %ld, providerType: %ld", &v9, 0x16u);
  }

  return v5;
}

- (int)callStatusFromUnderlyingSource
{
  if ([(CSDProviderCall *)self hasEnded])
  {
    return 6;
  }

  if ([(CSDProviderCall *)self isHeld])
  {
    return 2;
  }

  if ([(CSDProviderCall *)self hasConnected]|| [(CSDProviderCall *)self isIncoming]&& [(CSDProviderCall *)self hasStartedConnecting])
  {
    return 1;
  }

  if ([(CSDProviderCall *)self isOutgoing])
  {
    return 3;
  }

  return 4;
}

- (BOOL)hasConnected
{
  dateConnected = [(CSDProviderCall *)self dateConnected];
  v3 = dateConnected != 0;

  return v3;
}

- (id)provider
{
  providerCallDelegate = [(CSDProviderCall *)self providerCallDelegate];
  providerIdentifier = [(CSDProviderCall *)self providerIdentifier];
  v5 = [providerCallDelegate providerWithIdentifier:providerIdentifier];

  return v5;
}

- (id)initiator
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  hasSet = [mergedCallUpdate hasSet];

  if ((hasSet & 0x4000000000) != 0)
  {
    mergedCallUpdate2 = [(CSDProviderCall *)self mergedCallUpdate];
    initiator = [mergedCallUpdate2 initiator];
  }

  else
  {
    if ([(CSDProviderCall *)self service]!= 1 || [(CSDProviderCall *)self isOutgoing])
    {
      tuHandle = 0;
      goto LABEL_7;
    }

    mergedCallUpdate2 = [(CSDProviderCall *)self mergedCallUpdate];
    initiator = [mergedCallUpdate2 remoteHandle];
  }

  v8 = initiator;
  tuHandle = [initiator tuHandle];

LABEL_7:

  return tuHandle;
}

- (BOOL)supportsRecents
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  if ([mergedCallUpdate supportsRecents])
  {
    v6.receiver = self;
    v6.super_class = CSDProviderCall;
    supportsRecents = [(CSDProviderCall *)&v6 supportsRecents];
  }

  else
  {
    supportsRecents = 0;
  }

  return supportsRecents;
}

- (id)audioCategory
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  audioCategory = [mergedCallUpdate audioCategory];

  proxyAVAudioSession = [(CSDProviderCall *)self proxyAVAudioSession];

  if (proxyAVAudioSession)
  {
    proxyAVAudioSession2 = [(CSDProviderCall *)self proxyAVAudioSession];
    category = [proxyAVAudioSession2 category];

    audioCategory = category;
  }

  return audioCategory;
}

- (id)audioMode
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  audioMode = [mergedCallUpdate audioMode];

  proxyAVAudioSession = [(CSDProviderCall *)self proxyAVAudioSession];

  if (proxyAVAudioSession)
  {
    proxyAVAudioSession2 = [(CSDProviderCall *)self proxyAVAudioSession];
    mode = [proxyAVAudioSession2 mode];

    audioMode = mode;
  }

  return audioMode;
}

- (BOOL)isUsingBaseband
{
  selfCopy = self;
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  if (([mergedCallUpdate hasSet] & 0x100) != 0)
  {
    mergedCallUpdate2 = [(CSDProviderCall *)selfCopy mergedCallUpdate];
    LOBYTE(selfCopy) = [mergedCallUpdate2 isUsingBaseband];
  }

  else if ([(CSDProviderCall *)selfCopy service]== 1)
  {
    LODWORD(selfCopy) = +[TUCallCapabilities isWiFiCallingCurrentlyAvailable]^ 1;
  }

  else
  {
    LOBYTE(selfCopy) = 0;
  }

  return selfCopy;
}

- (BOOL)needsManualInCallSounds
{
  if ([(CSDCall *)self temporaryRequireInCallSounds])
  {
    return 1;
  }

  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  requiresInCallSounds = [mergedCallUpdate requiresInCallSounds];

  return requiresInCallSounds;
}

- (int64_t)soundRegion
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  inCallSoundRegion = [mergedCallUpdate inCallSoundRegion];

  if ((inCallSoundRegion - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return inCallSoundRegion;
  }
}

- (int64_t)inputAudioPowerSpectrumToken
{
  providerContext = [(CSDProviderCall *)self providerContext];
  v4 = [providerContext objectForKeyedSubscript:@"CSDIDSInputAudioPowerSpectrumTokenKey"];
  if (v4)
  {
    providerContext2 = [(CSDProviderCall *)self providerContext];
    v6 = [providerContext2 objectForKeyedSubscript:@"CSDIDSInputAudioPowerSpectrumTokenKey"];
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (int64_t)outputAudioPowerSpectrumToken
{
  providerContext = [(CSDProviderCall *)self providerContext];
  v4 = [providerContext objectForKeyedSubscript:@"CSDIDSOutputAudioPowerSpectrumTokenKey"];
  if (v4)
  {
    providerContext2 = [(CSDProviderCall *)self providerContext];
    v6 = [providerContext2 objectForKeyedSubscript:@"CSDIDSOutputAudioPowerSpectrumTokenKey"];
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (int64_t)screenSharingIntention
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = sub_1000233F8([mergedCallUpdate screenSharingIntention]);

  return v3;
}

- (BOOL)isFailureExpected
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  isFailureExpected = [mergedCallUpdate isFailureExpected];

  return isFailureExpected;
}

- (BOOL)shouldSuppressInCallUI
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  shouldSuppressInCallUI = [mergedCallUpdate shouldSuppressInCallUI];

  return shouldSuppressInCallUI;
}

- (BOOL)isMutuallyExclusiveCall
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  isMutuallyExclusiveCall = [mergedCallUpdate isMutuallyExclusiveCall];

  return isMutuallyExclusiveCall;
}

- (BOOL)isUplinkMuted
{
  featureFlags = [(CSDProviderCall *)self featureFlags];
  sessionBasedMutingEnabled = [featureFlags sessionBasedMutingEnabled];

  if (sessionBasedMutingEnabled)
  {
    v12.receiver = self;
    v12.super_class = CSDProviderCall;
    isUplinkMuted = [(CSDCall *)&v12 isUplinkMuted];
    return isUplinkMuted & 1;
  }

  provider = [(CSDProviderCall *)self provider];
  isTinCanProvider = [provider isTinCanProvider];

  isUnderlyingUplinkMuted = [(CSDProviderCall *)self isUnderlyingUplinkMuted];
  isUplinkMuted = isTinCanProvider ^ 1 | isUnderlyingUplinkMuted;
  if (isTinCanProvider & 1) != 0 || (isUnderlyingUplinkMuted)
  {
    return isUplinkMuted & 1;
  }

  v10 = +[TUAudioSystemController sharedAudioSystemController];
  isUplinkMuted2 = [v10 isUplinkMuted];

  return isUplinkMuted2;
}

- (int)ttyType
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = sub_100025BB8([mergedCallUpdate ttyType]);

  return v3;
}

- (BOOL)supportsScreening
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  supportsScreening = [mergedCallUpdate supportsScreening];

  return supportsScreening;
}

- (BOOL)isReRing
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  isReRing = [mergedCallUpdate isReRing];

  return isReRing;
}

- (int64_t)nearbyMode
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  nearbyMode = [mergedCallUpdate nearbyMode];

  return nearbyMode;
}

- (int)commTrustScore
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = sub_1000268BC([mergedCallUpdate commTrustScore]);

  return v3;
}

- (BOOL)isThirdPartyVideo
{
  provider = [(CSDProviderCall *)self provider];
  if ([provider isSystemProvider])
  {
    hasVideo = 0;
  }

  else
  {
    mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
    hasVideo = [mergedCallUpdate hasVideo];
  }

  return hasVideo;
}

- (TUCallCenter)callCenter
{
  callCenter = self->_callCenter;
  if (!callCenter)
  {
    v4 = +[TUCallCenter sharedInstance];
    v5 = self->_callCenter;
    self->_callCenter = v4;

    callCenter = self->_callCenter;
  }

  return callCenter;
}

- (id)isoCountryCode
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  iSOCountryCode = [mergedCallUpdate ISOCountryCode];

  return iSOCountryCode;
}

- (CSDProviderCallDelegate)providerCallDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_providerCallDelegate);

  return WeakRetained;
}

- (BOOL)hasEnded
{
  dateEnded = [(CSDProviderCall *)self dateEnded];
  v3 = dateEnded != 0;

  return v3;
}

- (id)announceProviderIdentifier
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  announceProviderIdentifier = [mergedCallUpdate announceProviderIdentifier];

  return announceProviderIdentifier;
}

- (BOOL)isVideo
{
  provider = [(CSDProviderCall *)self provider];
  if ([provider isSystemProvider])
  {
    video = self->_video;
  }

  else
  {
    video = 0;
  }

  return video;
}

- (NSUUID)callGroupUUID
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  participantGroupUUID = [mergedCallUpdate participantGroupUUID];

  return participantGroupUUID;
}

- (id)localSenderIdentityUUID
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  localSenderIdentityUUID = [mergedCallUpdate localSenderIdentityUUID];

  return localSenderIdentityUUID;
}

- (id)localSenderIdentityAccountUUID
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  localSenderIdentityAccountUUID = [mergedCallUpdate localSenderIdentityAccountUUID];

  if (!localSenderIdentityAccountUUID)
  {
    localSenderIdentityUUID = [(CSDProviderCall *)self localSenderIdentityUUID];
    if (localSenderIdentityUUID)
    {
      provider = [(CSDProviderCall *)self provider];
      v7 = [provider senderIdentityForUUID:localSenderIdentityUUID];
      localSenderIdentityAccountUUID = [v7 accountUUID];
    }

    else
    {
      localSenderIdentityAccountUUID = 0;
    }
  }

  return localSenderIdentityAccountUUID;
}

- (AVAudioSession)proxyAVAudioSession
{
  provider = [(CSDProviderCall *)self provider];
  if ([provider isSystemProvider])
  {
    v4 = 0;
LABEL_5:

    goto LABEL_7;
  }

  audioInterruptionProviderType = [(CSDProviderCall *)self audioInterruptionProviderType];

  if (audioInterruptionProviderType == 1)
  {
    provider = [(CSDProviderCall *)self provider];
    v4 = +[AVAudioSession retrieveSessionWithID:](AVAudioSession, "retrieveSessionWithID:", [provider audioSessionID]);
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (BOOL)isDownlinkMuted
{
  v2 = +[TUAudioSystemController sharedAudioSystemController];
  isDownlinkMuted = [v2 isDownlinkMuted];

  return isDownlinkMuted;
}

- (BOOL)supportsTTYWithVoice
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  supportsTTYWithVoice = [mergedCallUpdate supportsTTYWithVoice];

  return supportsTTYWithVoice;
}

- (BOOL)isConversation
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  isConversation = [mergedCallUpdate isConversation];

  return isConversation;
}

- (BOOL)isRemoteUplinkMuted
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  isRemoteUplinkMuted = [mergedCallUpdate isRemoteUplinkMuted];

  return isRemoteUplinkMuted;
}

- (int64_t)bluetoothAudioFormat
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = sub_1000213A4([mergedCallUpdate bluetoothAudioFormat]);

  return v3;
}

- (BOOL)supportsEmergencyFallback
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  supportsEmergencyFallback = [mergedCallUpdate supportsEmergencyFallback];

  return supportsEmergencyFallback;
}

- (BOOL)hasBeenRedirected
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  hasBeenRedirected = [mergedCallUpdate hasBeenRedirected];

  return hasBeenRedirected;
}

- (int)hardPauseDigitsState
{
  pauseDigitsQueue = [(CSDProviderCall *)self pauseDigitsQueue];
  nextPauseDigits = [pauseDigitsQueue nextPauseDigits];
  isHardPause = [nextPauseDigits isHardPause];

  if (isHardPause)
  {
    return 2;
  }

  pauseDigitsQueue2 = [(CSDProviderCall *)self pauseDigitsQueue];
  hasQueuedHardPauseDigits = [pauseDigitsQueue2 hasQueuedHardPauseDigits];

  return hasQueuedHardPauseDigits;
}

- (id)hardPauseDigits
{
  pauseDigitsQueue = [(CSDProviderCall *)self pauseDigitsQueue];
  nextPauseDigits = [pauseDigitsQueue nextPauseDigits];
  if ([nextPauseDigits isHardPause])
  {
    pauseDigitsQueue2 = [(CSDProviderCall *)self pauseDigitsQueue];
    nextPauseDigits2 = [pauseDigitsQueue2 nextPauseDigits];
    digits = [nextPauseDigits2 digits];
  }

  else
  {
    digits = 0;
  }

  return digits;
}

- (BOOL)isReceptionistCapable
{
  callReceptionistDisclosureState = self->_callReceptionistDisclosureState;
  if (!callReceptionistDisclosureState)
  {
    handle = [(CSDProviderCall *)self handle];
    normalizedValue = [handle normalizedValue];
    v6 = TUCheckReceptionistDisclosed();
    v7 = 1;
    if (v6)
    {
      v7 = 2;
    }

    self->_callReceptionistDisclosureState = v7;

    callReceptionistDisclosureState = self->_callReceptionistDisclosureState;
  }

  if (callReceptionistDisclosureState != 2)
  {
    return 0;
  }

  featureFlags = [(CSDProviderCall *)self featureFlags];
  v9 = TUReceptionistAvailable();

  return v9;
}

- (int64_t)providerErrorCode
{
  failureContext = [(CSDProviderCall *)self failureContext];
  providerErrorCode = [failureContext providerErrorCode];

  return providerErrorCode;
}

- (int64_t)providerEndedReason
{
  failureContext = [(CSDProviderCall *)self failureContext];
  providerEndedReason = [failureContext providerEndedReason];

  return providerEndedReason;
}

- (BOOL)accessoryButtonEventsEnabled
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  accessoryButtonEventsEnabled = [mergedCallUpdate accessoryButtonEventsEnabled];

  return accessoryButtonEventsEnabled;
}

- (int64_t)videoStreamToken
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  videoStreamToken = [mergedCallUpdate videoStreamToken];

  return videoStreamToken;
}

- (id)providerContext
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  context = [mergedCallUpdate context];

  return context;
}

- (BOOL)isBlocked
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  isBlocked = [mergedCallUpdate isBlocked];

  return isBlocked;
}

- (id)endedReasonUserInfo
{
  failureContext = [(CSDProviderCall *)self failureContext];
  v4 = [failureContext endedReasonUserInfoForCall:self];

  return v4;
}

- (int64_t)transmissionMode
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  transmissionMode = [mergedCallUpdate transmissionMode];

  if (transmissionMode == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (transmissionMode == 2);
  }
}

- (id)recordingDisabledError
{
  v13.receiver = self;
  v13.super_class = CSDProviderCall;
  recordingDisabledError = [(CSDCall *)&v13 recordingDisabledError];
  v4 = recordingDisabledError;
  if (recordingDisabledError)
  {
    v5 = recordingDisabledError;
  }

  else
  {
    mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
    supportsRecording = [mergedCallUpdate supportsRecording];

    if (supportsRecording)
    {
      v8 = 0;
      goto LABEL_9;
    }

    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Provider reports this call does not support recording", v12, 2u);
    }

    v10 = [NSError alloc];
    v5 = [v10 initWithDomain:TUStartRecordingErrorDomain code:4 userInfo:0];
  }

  v8 = v5;
LABEL_9:

  return v8;
}

- (BOOL)mixesVoiceWithMedia
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  mixesVoiceWithMedia = [mergedCallUpdate mixesVoiceWithMedia];

  return mixesVoiceWithMedia;
}

- (BOOL)isDomestic
{
  handle = [(CSDProviderCall *)self handle];
  type = [handle type];

  if (type != 2)
  {
    return 0;
  }

  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  account = [mergedCallUpdate account];
  isoCountryCode = [account isoCountryCode];

  v8 = _PNCopyInternationalCodeForCountry();
  v14 = INIT_DECOMPOSED_PHONE_NUMBER[0];
  v15 = INIT_DECOMPOSED_PHONE_NUMBER[1];
  v16 = INIT_DECOMPOSED_PHONE_NUMBER[2];
  v17 = INIT_DECOMPOSED_PHONE_NUMBER[3];
  handle2 = [(CSDProviderCall *)self handle];
  normalizedValue = [handle2 normalizedValue];

  [normalizedValue UTF8String];
  if (PNDecomposeForCountry() && v14)
  {
    v11 = [NSString stringWithUTF8String:?];
    v12 = [v8 isEqualToString:v11];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (int64_t)serviceStatus
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  serviceStatus = [mergedCallUpdate serviceStatus];

  if (serviceStatus == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (serviceStatus == 2);
  }
}

- (void)updateForDisconnection
{
  v40.receiver = self;
  v40.super_class = CSDProviderCall;
  [(CSDCall *)&v40 updateForDisconnection];
  if ([(CSDProviderCall *)self isOutgoing]&& ![(CSDCall *)self hasStartedOutgoing])
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      failureContext = [(CSDProviderCall *)self failureContext];
      endedReason = [(CSDProviderCall *)self endedReason];
      *buf = 138412546;
      v42 = failureContext;
      v43 = 2048;
      v44 = endedReason;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "updateForDisconnection failureContext: %@, endedReason: %ld", buf, 0x16u);
    }

    failureContext2 = [(CSDProviderCall *)self failureContext];

    if (failureContext2)
    {
      failureContext3 = [(CSDProviderCall *)self failureContext];
      -[CSDCall setDisconnectedReason:](self, "setDisconnectedReason:", -[CSDProviderCall _switchFromFailureReasonToDisconnectedReason:](self, "_switchFromFailureReasonToDisconnectedReason:", [failureContext3 failureReason]));

      return;
    }

    if (-[CSDProviderCall endedReason](self, "endedReason") != 2 || (-[CSDProviderCall provider](self, "provider"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 isFaceTimeProvider], v21, !v22))
    {
      selfCopy29 = self;
      v9 = 17;
      goto LABEL_48;
    }

LABEL_33:
    selfCopy29 = self;
    v9 = 6;
LABEL_48:
    [(CSDCall *)selfCopy29 setDisconnectedReason:v9];
    return;
  }

  endedReason2 = [(CSDProviderCall *)self endedReason];
  if (endedReason2 > 4)
  {
    if (endedReason2 <= 102)
    {
      if (endedReason2 == 5)
      {
        v30 = sub_100004778();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          endedReason3 = [(CSDProviderCall *)self endedReason];
          *buf = 134217984;
          v42 = endedReason3;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Setting disconnected reason to declined elsewhere because ended reason is %ld", buf, 0xCu);
        }

        selfCopy29 = self;
        v9 = 3;
      }

      else
      {
        if (endedReason2 != 102)
        {
          return;
        }

        v6 = sub_100004778();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          endedReason4 = [(CSDProviderCall *)self endedReason];
          *buf = 134217984;
          v42 = endedReason4;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting disconnected reason to handed off because ended reason is %ld", buf, 0xCu);
        }

        selfCopy29 = self;
        v9 = 7;
      }

      goto LABEL_48;
    }

    if (endedReason2 == 103)
    {
      v32 = sub_100004778();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        endedReason5 = [(CSDProviderCall *)self endedReason];
        *buf = 134217984;
        v42 = endedReason5;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Setting disconnected reason to user busy because ended reason is %ld", buf, 0xCu);
      }

      selfCopy29 = self;
      v9 = 15;
      goto LABEL_48;
    }

    if (endedReason2 != 104)
    {
      return;
    }

    v17 = sub_100004778();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    endedReason6 = [(CSDProviderCall *)self endedReason];
    *buf = 134217984;
    v42 = endedReason6;
    v19 = "Setting disconnected reason to remote hangup because ended reason is %ld";
    goto LABEL_31;
  }

  if (endedReason2 > 2)
  {
    if (endedReason2 != 3)
    {
      v15 = sub_100004778();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        endedReason7 = [(CSDProviderCall *)self endedReason];
        *buf = 134217984;
        v42 = endedReason7;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Setting disconnected reason to answered elsewhere because ended reason is %ld", buf, 0xCu);
      }

      selfCopy29 = self;
      v9 = 1;
      goto LABEL_48;
    }
  }

  else
  {
    if (endedReason2 == 1)
    {
      failureContext4 = [(CSDProviderCall *)self failureContext];

      if (failureContext4)
      {
        failureContext5 = [(CSDProviderCall *)self failureContext];
        failureReason = [failureContext5 failureReason];

        v26 = sub_100004778();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
        switch(failureReason)
        {
          case 0uLL:
            if (v27)
            {
              sub_1004734C4(self);
            }

            [(CSDCall *)self setDisconnectedReason:14];
            selfCopy28 = self;
            v29 = 510;
            goto LABEL_57;
          case 1uLL:
            if (v27)
            {
              sub_10047343C(self);
            }

            selfCopy29 = self;
            v9 = 18;
            goto LABEL_48;
          case 2uLL:
            if (v27)
            {
              sub_1004733B4(self);
            }

            selfCopy29 = self;
            v9 = 19;
            goto LABEL_48;
          case 3uLL:
            if (v27)
            {
              sub_10047332C(self);
            }

            selfCopy29 = self;
            v9 = 22;
            goto LABEL_48;
          case 4uLL:
            if (v27)
            {
              sub_1004732A4(self);
            }

            selfCopy29 = self;
            v9 = 23;
            goto LABEL_48;
          case 5uLL:
            if (v27)
            {
              sub_100472EEC(self);
            }

            selfCopy29 = self;
            v9 = 24;
            goto LABEL_48;
          case 6uLL:
            if (v27)
            {
              sub_10047321C(self);
            }

            selfCopy29 = self;
            v9 = 16;
            goto LABEL_48;
          case 7uLL:
            if (v27)
            {
              sub_100473194(self);
            }

            selfCopy29 = self;
            v9 = 26;
            goto LABEL_48;
          case 8uLL:
            if (v27)
            {
              sub_10047310C(self);
            }

            selfCopy29 = self;
            v9 = 27;
            goto LABEL_48;
          case 9uLL:
            if (v27)
            {
              sub_100473084(self);
            }

            selfCopy29 = self;
            v9 = 28;
            goto LABEL_48;
          case 0xAuLL:
            if (v27)
            {
              sub_100472FFC(self);
            }

            selfCopy29 = self;
            v9 = 29;
            goto LABEL_48;
          case 0xBuLL:
            if (v27)
            {
              sub_100472F74(self);
            }

            selfCopy29 = self;
            v9 = 30;
            goto LABEL_48;
          case 0xCuLL:
            if (v27)
            {
              sub_100472F74(self);
            }

            selfCopy29 = self;
            v9 = 32;
            goto LABEL_48;
          case 0xDuLL:
            if (v27)
            {
              sub_100472EEC(self);
            }

            selfCopy29 = self;
            v9 = 33;
            goto LABEL_48;
          case 0xEuLL:
            if (v27)
            {
              sub_100472E64(self);
            }

            selfCopy29 = self;
            v9 = 35;
            goto LABEL_48;
          case 0xFuLL:
            if (v27)
            {
              sub_100472DDC(self);
            }

            selfCopy29 = self;
            v9 = 37;
            goto LABEL_48;
          case 0x10uLL:
            if (v27)
            {
              sub_100472CCC(self);
            }

            selfCopy29 = self;
            v9 = 38;
            goto LABEL_48;
          case 0x14uLL:
            if (v27)
            {
              sub_100472C44(self);
            }

            selfCopy29 = self;
            v9 = 42;
            goto LABEL_48;
          case 0x15uLL:
            if (v27)
            {
              sub_100472BBC(self);
            }

            selfCopy29 = self;
            v9 = 43;
            goto LABEL_48;
          case 0x1AuLL:
            if (v27)
            {
              sub_100472D54(self);
            }

            selfCopy29 = self;
            v9 = 53;
            goto LABEL_48;
          default:
            if (v27)
            {
              sub_1004734C4(self);
            }

            selfCopy29 = self;
            v9 = 14;
            goto LABEL_48;
        }
      }

      v38 = sub_100004778();
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        sub_10047354C(self);
      }

      [(CSDCall *)self setDisconnectedReason:14];
      selfCopy28 = self;
      v29 = 511;
LABEL_57:
      [(CSDProviderCall *)selfCopy28 setProviderFailureReasonIfNecessary:v29];
      return;
    }

    if (endedReason2 != 2)
    {
      return;
    }

    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      endedReason8 = [(CSDProviderCall *)self endedReason];
      *buf = 134217984;
      v42 = endedReason8;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Setting disconnected reason to remote hangup because ended reason is %ld", buf, 0xCu);
    }

    [(CSDCall *)self setDisconnectedReason:6];
  }

  if ([(CSDProviderCall *)self hasStartedConnecting])
  {
    v17 = sub_100004778();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
LABEL_32:

      goto LABEL_33;
    }

    endedReason9 = [(CSDProviderCall *)self endedReason];
    *buf = 134217984;
    v42 = endedReason9;
    v19 = "Setting disconnected reason to remote hangup because call has started connecting and ended reason is %ld";
LABEL_31:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
    goto LABEL_32;
  }

  if ([(CSDProviderCall *)self isOutgoing])
  {
    provider = [(CSDProviderCall *)self provider];
    isTelephonyProvider = [provider isTelephonyProvider];

    v17 = sub_100004778();
    v36 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (!isTelephonyProvider)
    {
      if (v36)
      {
        endedReason10 = [(CSDProviderCall *)self endedReason];
        *buf = 134217984;
        v42 = endedReason10;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Setting disconnected reason to remote unavailable because outgoing call has not started connecting and ended reason is %ld", buf, 0xCu);
      }

      selfCopy29 = self;
      v9 = 5;
      goto LABEL_48;
    }

    if (!v36)
    {
      goto LABEL_32;
    }

    endedReason11 = [(CSDProviderCall *)self endedReason];
    *buf = 134217984;
    v42 = endedReason11;
    v19 = "Setting disconnected reason to remote hangup because outgoing call has not started connecting and ended reason is %ld but call is a telephony call";
    goto LABEL_31;
  }
}

- (BOOL)ignoresBluetoothDeviceUID
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  ignoresBluetoothDeviceUID = [mergedCallUpdate ignoresBluetoothDeviceUID];

  return ignoresBluetoothDeviceUID;
}

- (int64_t)audioInterruptionOperationMode
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  audioInterruptionOperationMode = [mergedCallUpdate audioInterruptionOperationMode];

  if ((audioInterruptionOperationMode - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return audioInterruptionOperationMode;
  }
}

- (unint64_t)initialLinkType
{
  providerContext = [(CSDProviderCall *)self providerContext];
  v4 = [providerContext objectForKeyedSubscript:@"CSDIDSInitialLinkTypeKey"];
  if (v4)
  {
    providerContext2 = [(CSDProviderCall *)self providerContext];
    v6 = [providerContext2 objectForKeyedSubscript:@"CSDIDSInitialLinkTypeKey"];
    unsignedIntegerValue = [v6 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  return unsignedIntegerValue;
}

- (CSDProviderCall)initWithUniqueProxyIdentifier:(id)identifier configuration:(id)configuration
{
  configurationCopy = configuration;
  v33.receiver = self;
  v33.super_class = CSDProviderCall;
  v7 = [(CSDCall *)&v33 initWithUniqueProxyIdentifier:identifier configuration:configurationCopy];
  if (v7)
  {
    v7->_held = [configurationCopy isHeld];
    v8 = +[CXCallUpdate callUpdateWithDefaultValuesSet];
    mergedCallUpdate = v7->_mergedCallUpdate;
    v7->_mergedCallUpdate = v8;

    v7->_outgoing = [configurationCopy isOutgoing];
    providerIdentifier = [configurationCopy providerIdentifier];
    v11 = [providerIdentifier copy];
    providerIdentifier = v7->_providerIdentifier;
    v7->_providerIdentifier = v11;

    providerSource = [configurationCopy providerSource];
    providerSource = v7->_providerSource;
    v7->_providerSource = providerSource;

    v15 = objc_alloc_init(TUUserConfiguration);
    userConfiguration = v7->_userConfiguration;
    v7->_userConfiguration = v15;

    v7->_prefersToPlayDuringWombat = 1;
    if ([configurationCopy transmissionMode])
    {
      -[CXCallUpdate setTransmissionMode:](v7->_mergedCallUpdate, "setTransmissionMode:", [configurationCopy transmissionMode]);
    }

    if ([configurationCopy accessoryButtonEventsEnabled])
    {
      -[CXCallUpdate setAccessoryButtonEventsEnabled:](v7->_mergedCallUpdate, "setAccessoryButtonEventsEnabled:", [configurationCopy accessoryButtonEventsEnabled]);
    }

    if (v7->_providerSource)
    {
      v17 = [CSDProviderDisplayMonitor alloc];
      bundleIdentifier = [(CXAbstractProviderSource *)v7->_providerSource bundleIdentifier];
      v19 = [(CSDProviderDisplayMonitor *)v17 initWithBundleIdentifier:bundleIdentifier pid:[(CXAbstractProviderSource *)v7->_providerSource processIdentifier]];
      providerDisplayMonitor = v7->_providerDisplayMonitor;
      v7->_providerDisplayMonitor = v19;
    }
  }

  featureFlags = [configurationCopy featureFlags];
  [(CSDProviderCall *)v7 setFeatureFlags:featureFlags];

  featureFlags2 = [(CSDProviderCall *)v7 featureFlags];
  if ([featureFlags2 nameAndPhotoEnabled])
  {
    v23 = +[IMDaemonController sharedInstance];
    v24 = TUBundleIdentifierCallServicesDaemon;
    v25 = [v23 hasListenerForID:TUBundleIdentifierCallServicesDaemon];

    if (v25)
    {
      goto LABEL_14;
    }

    v26 = sub_100004778();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Connecting to IMDaemonController...", v32, 2u);
    }

    featureFlags2 = +[IMDaemonController sharedInstance];
    [featureFlags2 addListenerID:v24 capabilities:kFZListenerCapAccounts];
  }

LABEL_14:
  featureFlags3 = [(CSDProviderCall *)v7 featureFlags];
  sessionBasedMutingEnabled = [featureFlags3 sessionBasedMutingEnabled];

  if ((sessionBasedMutingEnabled & 1) == 0)
  {
    defaultNotificationCenter = [configurationCopy defaultNotificationCenter];
    v30 = defaultNotificationCenter;
    if (!defaultNotificationCenter)
    {
      v30 = +[NSNotificationCenter defaultCenter];
    }

    objc_storeStrong(&v7->_defaultNotificationCenter, v30);
    if (!defaultNotificationCenter)
    {
    }

    [(NSNotificationCenter *)v7->_defaultNotificationCenter addObserver:v7 selector:"systemMuteStatusChanged:" name:TUAudioSystemUplinkMuteStatusChangedNotification object:0];
  }

  return v7;
}

- (id)initIncomingWithBackingCallSource:(id)source UUID:(id)d update:(id)update originatingUIType:(int)type
{
  sourceCopy = source;
  updateCopy = update;
  dCopy = d;
  v14 = [CSDProviderCallConfiguration alloc];
  identifier = [sourceCopy identifier];
  v16 = [(CSDProviderCallConfiguration *)v14 initWithProviderIdentifier:identifier];

  [(CSDProviderCallConfiguration *)v16 setEndpointOnCurrentDevice:1];
  uUIDString = [dCopy UUIDString];

  v18 = [(CSDProviderCall *)self initWithUniqueProxyIdentifier:uUIDString configuration:v16];
  if (v18)
  {
    objc_storeStrong(&v18->_backingCallSource, source);
    v18->_video = [updateCopy hasVideo];
    [updateCopy hasSet];
    if ((v19 & 0x80) == 0)
    {
      v18->_sendingVideo = v18->_video;
    }

    sanitizedCallUpdate = [updateCopy sanitizedCallUpdate];
    [(CSDProviderCall *)v18 updateWithCallUpdate:sanitizedCallUpdate];

    v18->_originatingUIType = type;
  }

  return v18;
}

- (id)initOutgoingWithUniqueProxyIdentifier:(id)identifier backingCallSourceIdentifier:(id)sourceIdentifier callUpdate:(id)update isVideo:(BOOL)video endpointOnCurrentDevice:(BOOL)device originatingUIType:(int)type configuration:(id)configuration
{
  sourceIdentifierCopy = sourceIdentifier;
  updateCopy = update;
  v16 = [(CSDProviderCall *)self initWithUniqueProxyIdentifier:identifier configuration:configuration];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_21;
  }

  v16->_outgoing = 1;
  v16->_video = video;
  v16->_sendingVideo = video;
  if (v16->_originatingUIType)
  {
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      originatingUIType = v17->_originatingUIType;
      v52 = 134218240;
      v53 = originatingUIType;
      v54 = 2048;
      typeCopy = type;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No need to reset originatingUIType from %lu to %lu", &v52, 0x16u);
    }
  }

  else
  {
    v16->_originatingUIType = type;
  }

  remoteMember = [updateCopy remoteMember];
  handle = [remoteMember handle];
  value = [handle value];

  if (value)
  {
    v23 = [CSDPauseDigitsQueue alloc];
    remoteMember2 = [updateCopy remoteMember];
    handle2 = [remoteMember2 handle];
    value2 = [handle2 value];
    v27 = [(CSDPauseDigitsQueue *)v23 initWithDestinationID:value2];
    pauseDigitsQueue = v17->_pauseDigitsQueue;
    v17->_pauseDigitsQueue = v27;

    [(CSDPauseDigitsQueue *)v17->_pauseDigitsQueue setDelegate:v17];
    v29 = sub_100004778();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = v17->_pauseDigitsQueue;
      v52 = 138412290;
      v53 = v30;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Created pause digits queue: %@", &v52, 0xCu);
    }

    v31 = [CXMember alloc];
    v32 = [CXHandle alloc];
    remoteHandle = [updateCopy remoteHandle];
    type = [remoteHandle type];
    baseDestinationID = [(CSDPauseDigitsQueue *)v17->_pauseDigitsQueue baseDestinationID];
    remoteHandle2 = [updateCopy remoteHandle];
    siriDisplayName = [remoteHandle2 siriDisplayName];
    v38 = [v32 initWithType:type value:baseDestinationID siriDisplayName:siriDisplayName];
    v39 = [v31 initWithHandle:v38];
    [updateCopy setRemoteMember:v39];
  }

  sanitizedCallUpdate = [updateCopy sanitizedCallUpdate];
  [(CSDProviderCall *)v17 updateWithCallUpdate:sanitizedCallUpdate];

  if ([sourceIdentifierCopy isEqualToString:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"])
  {
    featureFlags = [(CSDProviderCall *)v17 featureFlags];
    offrampEnabled = [featureFlags offrampEnabled];

    if (offrampEnabled)
    {
      remoteParticipantHandles = [updateCopy remoteParticipantHandles];
      if (remoteParticipantHandles && (v44 = remoteParticipantHandles, [updateCopy remoteParticipantHandles], v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v45, "count"), v45, v44, v46 >= 2))
      {
        remoteParticipantHandles2 = [updateCopy remoteParticipantHandles];
        tuHandle = [CXHandle tuHandlesWithMembers:remoteParticipantHandles2];
        [(CSDProviderCall *)v17 donateHandles:tuHandle];
      }

      else
      {
        remoteHandle3 = [updateCopy remoteHandle];

        if (!remoteHandle3)
        {
          goto LABEL_19;
        }

        remoteParticipantHandles2 = [updateCopy remoteHandle];
        tuHandle = [remoteParticipantHandles2 tuHandle];
        v50 = [NSSet setWithObject:tuHandle];
        [(CSDProviderCall *)v17 donateHandles:v50];
      }
    }
  }

LABEL_19:
  if ([updateCopy startCallMuted])
  {
    -[CSDProviderCall setUplinkMuted:userInitiated:](v17, "setUplinkMuted:userInitiated:", [updateCopy startCallMuted], 0);
  }

LABEL_21:

  return v17;
}

- (id)initOutgoingWithUpdate:(id)update callUUID:(id)d backingCallSource:(id)source isExpanseProvider:(BOOL)provider
{
  providerCopy = provider;
  updateCopy = update;
  dCopy = d;
  sourceCopy = source;
  if (providerCopy)
  {
    v13 = 59;
  }

  else
  {
    v13 = 0;
  }

  if (!providerCopy)
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] initOutgoingWithUpdate unspecified originatingUIType!!", v19, 2u);
    }
  }

  uUIDString = [dCopy UUIDString];
  identifier = [sourceCopy identifier];
  v17 = -[CSDProviderCall initOutgoingWithUniqueProxyIdentifier:backingCallSourceIdentifier:callUpdate:isVideo:endpointOnCurrentDevice:originatingUIType:](self, "initOutgoingWithUniqueProxyIdentifier:backingCallSourceIdentifier:callUpdate:isVideo:endpointOnCurrentDevice:originatingUIType:", uUIDString, identifier, updateCopy, [updateCopy hasVideo], 1, v13);

  if (v17)
  {
    *(v17 + 341) = providerCopy;
    objc_storeStrong(v17 + 58, source);
  }

  return v17;
}

- (id)initOutgoingWithDialRequest:(id)request
{
  requestCopy = request;
  v5 = [[CXCallUpdate alloc] initWithDialRequest:requestCopy];
  uniqueProxyIdentifier = [requestCopy uniqueProxyIdentifier];
  provider = [requestCopy provider];
  identifier = [provider identifier];
  isVideo = [requestCopy isVideo];
  endpointOnCurrentDevice = [requestCopy endpointOnCurrentDevice];
  originatingUIType = [requestCopy originatingUIType];

  v12 = [(CSDProviderCall *)self initOutgoingWithUniqueProxyIdentifier:uniqueProxyIdentifier backingCallSourceIdentifier:identifier callUpdate:v5 isVideo:isVideo endpointOnCurrentDevice:endpointOnCurrentDevice originatingUIType:originatingUIType];
  return v12;
}

- (id)initOutgoingWithDialRequest:(id)request configuration:(id)configuration
{
  configurationCopy = configuration;
  requestCopy = request;
  v8 = [[CXCallUpdate alloc] initWithDialRequest:requestCopy];
  uniqueProxyIdentifier = [requestCopy uniqueProxyIdentifier];
  provider = [requestCopy provider];
  identifier = [provider identifier];
  isVideo = [requestCopy isVideo];
  endpointOnCurrentDevice = [requestCopy endpointOnCurrentDevice];
  originatingUIType = [requestCopy originatingUIType];

  v15 = [(CSDProviderCall *)self initOutgoingWithUniqueProxyIdentifier:uniqueProxyIdentifier backingCallSourceIdentifier:identifier callUpdate:v8 isVideo:isVideo endpointOnCurrentDevice:endpointOnCurrentDevice originatingUIType:originatingUIType configuration:configurationCopy];
  return v15;
}

- (id)initOutgoingWithRequestedStartCallAction:(id)action backingCallSource:(id)source
{
  sourceCopy = source;
  actionCopy = action;
  v9 = [[CXCallUpdate alloc] initWithStartCallAction:actionCopy];
  callUUID = [actionCopy callUUID];
  uUIDString = [callUUID UUIDString];
  identifier = [sourceCopy identifier];
  isVideo = [actionCopy isVideo];
  isRelay = [actionCopy isRelay];

  v15 = [(CSDProviderCall *)self initOutgoingWithUniqueProxyIdentifier:uUIDString backingCallSourceIdentifier:identifier callUpdate:v9 isVideo:isVideo endpointOnCurrentDevice:isRelay ^ 1 originatingUIType:60];
  if (v15)
  {
    objc_storeStrong(v15 + 58, source);
  }

  return v15;
}

- (id)initOutgoingWithJoinConversationRequest:(id)request
{
  requestCopy = request;
  v5 = [[CXCallUpdate alloc] initWithJoinConversationRequest:requestCopy];
  uUID = [requestCopy UUID];
  uUIDString = [uUID UUIDString];
  v8 = -[CSDProviderCall initOutgoingWithUniqueProxyIdentifier:backingCallSourceIdentifier:callUpdate:isVideo:endpointOnCurrentDevice:originatingUIType:](self, "initOutgoingWithUniqueProxyIdentifier:backingCallSourceIdentifier:callUpdate:isVideo:endpointOnCurrentDevice:originatingUIType:", uUIDString, @"com.apple.telephonyutilities.callservicesd.FaceTimeProvider", v5, 1, [requestCopy endpointOnCurrentDevice], objc_msgSend(requestCopy, "originatingUIType"));

  if (v8)
  {
    *(v8 + 351) = [requestCopy isVideoEnabled];
    remoteMembers = [requestCopy remoteMembers];
    if ([remoteMembers count] == 1)
    {
      conversationLink = [requestCopy conversationLink];
      if (conversationLink)
      {
        [*(v8 + 66) setConversation:1];
      }

      else
      {
        otherInvitedHandles = [requestCopy otherInvitedHandles];
        if ([otherInvitedHandles count])
        {
          [*(v8 + 66) setConversation:1];
        }

        else
        {
          provider = [requestCopy provider];
          if ([provider isDefaultProvider])
          {
            participantAssociation = [requestCopy participantAssociation];
            [*(v8 + 66) setConversation:participantAssociation != 0];
          }

          else
          {
            [*(v8 + 66) setConversation:1];
          }
        }
      }
    }

    else
    {
      [*(v8 + 66) setConversation:1];
    }

    provider2 = [requestCopy provider];
    v15 = +[TUConversationProvider expanseProvider];
    *(v8 + 341) = [provider2 isEqual:v15];
  }

  return v8;
}

- (CSDProviderCall)initWithHandoffContext:(id)context backingCallSource:(id)source
{
  contextCopy = context;
  sourceCopy = source;
  v8 = [(CSDProviderCall *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_backingCallSource, source);
    remoteHandle = [contextCopy remoteHandle];
    [(CXCallUpdate *)v9->_mergedCallUpdate setRemoteHandle:remoteHandle];

    v9->_outgoing = [contextCopy isOutgoing];
    identifier = [sourceCopy identifier];
    v12 = [identifier copy];
    providerIdentifier = v9->_providerIdentifier;
    v9->_providerIdentifier = v12;

    v9->_originatingUIType = 43;
  }

  return v9;
}

- (void)dealloc
{
  [(NSNotificationCenter *)self->_defaultNotificationCenter removeObserver:self];
  v3.receiver = self;
  v3.super_class = CSDProviderCall;
  [(CSDCall *)&v3 dealloc];
}

- (NSNotificationCenter)defaultNotificationCenter
{
  defaultNotificationCenter = self->_defaultNotificationCenter;
  if (!defaultNotificationCenter)
  {
    v4 = +[NSNotificationCenter defaultCenter];
    v5 = self->_defaultNotificationCenter;
    self->_defaultNotificationCenter = v4;

    defaultNotificationCenter = self->_defaultNotificationCenter;
  }

  return defaultNotificationCenter;
}

- (void)systemMuteStatusChanged:(id)changed
{
  queue = [(CSDProviderCall *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B58A8;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (id)usesSystemMutingBlock
{
  usesSystemMutingBlock = self->_usesSystemMutingBlock;
  if (!usesSystemMutingBlock)
  {
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_1000B5BD0;
    v8[3] = &unk_10061A118;
    objc_copyWeak(&v9, &location);
    v4 = objc_retainBlock(v8);
    v5 = self->_usesSystemMutingBlock;
    self->_usesSystemMutingBlock = v4;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    usesSystemMutingBlock = self->_usesSystemMutingBlock;
  }

  v6 = objc_retainBlock(usesSystemMutingBlock);

  return v6;
}

- (id)systemControllerUplinkMutedBlock
{
  systemControllerUplinkMutedBlock = self->_systemControllerUplinkMutedBlock;
  if (!systemControllerUplinkMutedBlock)
  {
    self->_systemControllerUplinkMutedBlock = &stru_10061AAE8;

    systemControllerUplinkMutedBlock = self->_systemControllerUplinkMutedBlock;
  }

  v4 = objc_retainBlock(systemControllerUplinkMutedBlock);

  return v4;
}

- (id)systemControllerSetUplinkMutedBlock
{
  systemControllerSetUplinkMutedBlock = self->_systemControllerSetUplinkMutedBlock;
  if (!systemControllerSetUplinkMutedBlock)
  {
    self->_systemControllerSetUplinkMutedBlock = &stru_10061AB28;

    systemControllerSetUplinkMutedBlock = self->_systemControllerSetUplinkMutedBlock;
  }

  v4 = objc_retainBlock(systemControllerSetUplinkMutedBlock);

  return v4;
}

- (void)updateWithOverrideCallProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = propertiesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[CSDProviderCall] updateWithOverrideCallProperties: %@", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = CSDProviderCall;
  [(CSDCall *)&v10 updateWithOverrideCallProperties:propertiesCopy];
  [propertiesCopy hasSet];
  if ((v6 & 2) != 0)
  {
    isSharingScreen = [propertiesCopy isSharingScreen];
    self->_sharingScreen = isSharingScreen;
    if ((isSharingScreen & 1) == 0)
    {
      if (self->_screenShareAttributes)
      {
        v8 = sub_100004778();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Clearing _screenShareAttributes since call is not sharing screen", buf, 2u);
        }

        screenShareAttributes = self->_screenShareAttributes;
        self->_screenShareAttributes = 0;
      }
    }
  }

  [(CSDCall *)self propertiesChanged];
}

- (void)updateWithCallUpdate:(id)update notifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  updateCopy = update;
  sanitizedCallUpdate = [updateCopy sanitizedCallUpdate];
  [(CSDCall *)self setTemporaryRequireInCallSounds:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B5F9C;
  v10[3] = &unk_100619E58;
  v11 = sanitizedCallUpdate;
  selfCopy = self;
  v13 = updateCopy;
  v8 = updateCopy;
  v9 = sanitizedCallUpdate;
  [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v10];
  if (delegateCopy)
  {
    [(CSDCall *)self propertiesChanged];
  }
}

- (int)_switchFromFailureReasonToDisconnectedReason:(int64_t)reason
{
  if (reason < 0x1B && ((0x7FFDFFFu >> reason) & 1) != 0)
  {
    v4 = dword_100579F70[reason];
  }

  else
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      reasonCopy2 = reason;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set disconnect reason to dial failed, failure reason: %ld", &v8, 0xCu);
    }

    v4 = 17;
  }

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    reasonCopy2 = reason;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "failure reason: %ld, disconnected reason: %ld", &v8, 0x16u);
  }

  return v4;
}

- (id)callHistoryIdentifier
{
  if ([(CSDProviderCall *)self isConversation])
  {
    v10.receiver = self;
    v10.super_class = CSDProviderCall;
    callHistoryIdentifier = [(CSDProviderCall *)&v10 callHistoryIdentifier];
  }

  else
  {
    mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
    crossDeviceIdentifier = [mergedCallUpdate crossDeviceIdentifier];
    v6 = crossDeviceIdentifier;
    if (crossDeviceIdentifier)
    {
      callHistoryIdentifier2 = crossDeviceIdentifier;
    }

    else
    {
      v9.receiver = self;
      v9.super_class = CSDProviderCall;
      callHistoryIdentifier2 = [(CSDProviderCall *)&v9 callHistoryIdentifier];
    }

    callHistoryIdentifier = callHistoryIdentifier2;
  }

  return callHistoryIdentifier;
}

- (id)handoffDynamicIdentifier
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  handoffContext = [mergedCallUpdate handoffContext];
  handoffIdentifier = [handoffContext handoffIdentifier];

  return handoffIdentifier;
}

- (id)handoffActivityUserInfo
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  handoffContext = [mergedCallUpdate handoffContext];
  handoffActivityUserInfo = [handoffContext handoffActivityUserInfo];
  v6 = [handoffActivityUserInfo mutableCopy];

  provider = [(CSDProviderCall *)self provider];
  identifier = [provider identifier];
  [v6 setObject:identifier forKeyedSubscript:TUCallUserActivityProviderIdentifierKey];

  v9 = [v6 copy];

  return v9;
}

- (BOOL)prefersExclusiveAccessToCellularNetwork
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  prefersExclusiveAccessToCellularNetwork = [mergedCallUpdate prefersExclusiveAccessToCellularNetwork];

  return prefersExclusiveAccessToCellularNetwork;
}

- (id)conversationID
{
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  conversationID = [mergedCallUpdate conversationID];

  return conversationID;
}

- (LSApplicationRecord)applicationRecord
{
  providerIdentifier = [(CSDProviderCall *)self providerIdentifier];
  v3 = [LSApplicationRecord csd_applicationRecordForApplicationIdentifier:providerIdentifier];

  return v3;
}

- (BOOL)hasStartedConnecting
{
  dateStartedConnecting = [(CSDProviderCall *)self dateStartedConnecting];
  v3 = dateStartedConnecting != 0;

  return v3;
}

- (BOOL)usesSystemMuting
{
  provider = [(CSDProviderCall *)self provider];
  isSystemProvider = [provider isSystemProvider];

  return isSystemProvider;
}

- (void)setHeld:(BOOL)held
{
  if (self->_held != held)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000B6DF4;
    v6[3] = &unk_100619EA8;
    v6[4] = self;
    heldCopy = held;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setOutgoing:(BOOL)outgoing
{
  if (self->_outgoing != outgoing)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000B6EA8;
    v6[3] = &unk_100619EA8;
    v6[4] = self;
    outgoingCopy = outgoing;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setSendingVideo:(BOOL)video
{
  if (self->_sendingVideo != video)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000B6F5C;
    v6[3] = &unk_100619EA8;
    v6[4] = self;
    videoCopy = video;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setVideo:(BOOL)video
{
  if (self->_video != video)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000B7010;
    v6[3] = &unk_100619EA8;
    v6[4] = self;
    videoCopy = video;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setFailureContext:(id)context
{
  contextCopy = context;
  failureContext = [(CSDProviderCall *)self failureContext];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_1000B70F4;
    v10 = &unk_100619D88;
    selfCopy = self;
    v12 = contextCopy;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v7];
    [(CSDCall *)self propertiesChanged:v7];
  }
}

- (void)setCallGroupUUID:(id)d
{
  dCopy = d;
  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  participantGroupUUID = [mergedCallUpdate participantGroupUUID];
  v7 = TUObjectsAreEqualOrNil();

  if ((v7 & 1) == 0)
  {
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1000B71EC;
    v11 = &unk_100619D88;
    selfCopy = self;
    v13 = dCopy;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v8];
    [(CSDCall *)self propertiesChanged:v8];
  }
}

- (void)setDateConnected:(id)connected
{
  v4.receiver = self;
  v4.super_class = CSDProviderCall;
  [(CSDCall *)&v4 setDateConnected:connected];
  [(CSDProviderCall *)self setFailureContext:0];
  [(CSDProviderCall *)self _sendSoftPauseDigitsIfNecessary];
}

- (void)setProviderSource:(id)source
{
  sourceCopy = source;
  if (self->_providerSource != sourceCopy)
  {
    v10 = sourceCopy;
    objc_storeStrong(&self->_providerSource, source);
    if (v10)
    {
      v6 = [CSDProviderDisplayMonitor alloc];
      bundleIdentifier = [(CXAbstractProviderSource *)v10 bundleIdentifier];
      v8 = [(CSDProviderDisplayMonitor *)v6 initWithBundleIdentifier:bundleIdentifier pid:[(CXAbstractProviderSource *)v10 processIdentifier]];
      providerDisplayMonitor = self->_providerDisplayMonitor;
      self->_providerDisplayMonitor = v8;
    }

    else
    {
      bundleIdentifier = self->_providerDisplayMonitor;
      self->_providerDisplayMonitor = 0;
    }

    sourceCopy = v10;
  }
}

- (void)setInjectingAudio:(BOOL)audio
{
  audioCopy = audio;
  if ([(CSDProviderCall *)self isInjectingAudio]!= audio)
  {
    self->_injectingAudio = audioCopy;
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 67109120;
      v10 = audioCopy;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setting injecting audio to %d", &v9, 8u);
    }

    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      isInjectingAudio = [(CSDProviderCall *)self isInjectingAudio];
      v9 = 67109378;
      v10 = isInjectingAudio;
      v11 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Posting notification injecting audio changed: %d %@", &v9, 0x12u);
    }

    notificationCenter = [(CSDProviderCall *)self notificationCenter];
    [notificationCenter postNotificationName:@"CSDCallInjectingAudioChangedNotification" object:self];
  }
}

- (void)setBluetoothAudioFormat:(int64_t)format
{
  v6.receiver = self;
  v6.super_class = CSDProviderCall;
  [(CSDProviderCall *)&v6 setBluetoothAudioFormat:?];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B78B0;
  v5[3] = &unk_100619D60;
  v5[4] = self;
  v5[5] = format;
  [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
  [(CSDCall *)self propertiesChanged];
}

- (void)setMixesVoiceWithMedia:(BOOL)media
{
  v7.receiver = self;
  v7.super_class = CSDProviderCall;
  [(CSDCall *)&v7 setMixesVoiceWithMedia:?];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B79A4;
  v5[3] = &unk_100619EA8;
  v5[4] = self;
  mediaCopy = media;
  [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
  [(CSDCall *)self propertiesChanged];
}

- (void)setMediaPlaybackOnExternalDevice:(BOOL)device
{
  v7.receiver = self;
  v7.super_class = CSDProviderCall;
  [(CSDProviderCall *)&v7 setMediaPlaybackOnExternalDevice:?];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B7A64;
  v5[3] = &unk_100619EA8;
  v5[4] = self;
  deviceCopy = device;
  [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
  [(CSDCall *)self propertiesChanged];
}

- (id)startCallActionWithDialRequest:(id)request
{
  requestCopy = request;
  callCenter = [(CSDProviderCall *)self callCenter];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000B7D90;
  v23[3] = &unk_10061A040;
  v23[4] = self;
  v6 = [callCenter anyCallPassesTest:v23];

  mergedCallUpdate = [(CSDProviderCall *)self mergedCallUpdate];
  remoteMember = [mergedCallUpdate remoteMember];
  if (remoteMember)
  {
    mergedCallUpdate2 = [(CSDProviderCall *)self mergedCallUpdate];
    remoteMember2 = [mergedCallUpdate2 remoteMember];
    handle = [remoteMember2 handle];
  }

  else
  {
    handle = [[CXHandle alloc] initWithType:2];
  }

  v12 = [CXStartCallAction alloc];
  v13 = [NSUUID alloc];
  uniqueProxyIdentifier = [(CSDProviderCall *)self uniqueProxyIdentifier];
  v15 = [v13 initWithUUIDString:uniqueProxyIdentifier];
  v16 = [v12 initWithCallUUID:v15 handle:handle];

  [v16 setVideo:{-[CSDProviderCall isVideo](self, "isVideo")}];
  [v16 setRelay:{-[CSDProviderCall isEndpointOnCurrentDevice](self, "isEndpointOnCurrentDevice") ^ 1}];
  contactIdentifier = [requestCopy contactIdentifier];
  [v16 setContactIdentifier:contactIdentifier];

  [v16 setUpgrade:v6];
  [v16 setRetry:{objc_msgSend(requestCopy, "isRedial")}];
  localSenderIdentityUUID = [requestCopy localSenderIdentityUUID];
  [v16 setLocalSenderIdentityUUID:localSenderIdentityUUID];

  [v16 setShouldSuppressInCallUI:{objc_msgSend(requestCopy, "shouldSuppressInCallUI")}];
  [v16 setLaunchInBackground:{objc_msgSend(requestCopy, "launchInBackground")}];
  [requestCopy localLandscapeAspectRatio];
  [v16 setLocalLandscapeAspectRatio:?];
  [requestCopy localPortraitAspectRatio];
  [v16 setLocalPortraitAspectRatio:?];
  [v16 setStartCallMuted:{objc_msgSend(requestCopy, "shouldStartWithUplinkMuted")}];
  featureFlags = [(CSDProviderCall *)self featureFlags];
  LODWORD(localSenderIdentityUUID) = [featureFlags uplevelFTAEnabled];

  if (localSenderIdentityUUID)
  {
    upgradedFromCallUUID = [requestCopy upgradedFromCallUUID];
    [v16 setIsUpgradeToVideo:upgradedFromCallUUID != 0];
  }

  if ([requestCopy ttyType] - 1 <= 2)
  {
    [v16 setTTYType:?];
  }

  dialType = [requestCopy dialType];
  if (dialType == 2)
  {
    [v16 setVoicemail:1];
  }

  else if (dialType == 1)
  {
    [v16 setEmergency:1];
  }

  return v16;
}

- (void)dialWithRequest:(id)request displayContext:(id)context
{
  requestCopy = request;
  v14.receiver = self;
  v14.super_class = CSDProviderCall;
  [(CSDCall *)&v14 dialWithRequest:requestCopy displayContext:context];
  providerCallDelegate = [(CSDProviderCall *)self providerCallDelegate];
  v8 = [providerCallDelegate callSourceForDialRequest:requestCopy];
  if (v8)
  {
    [(CSDProviderCall *)self setBackingCallSource:v8];
    v9 = [(CSDProviderCall *)self startCallActionWithDialRequest:requestCopy];
    handle = [requestCopy handle];
    siriDisplayName = [handle siriDisplayName];
    handle2 = [v9 handle];
    [handle2 setSiriDisplayName:siriDisplayName];

    [providerCallDelegate performStartCallAction:v9 forCall:self];
  }

  else
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_1004735C4();
    }

    [(CSDCall *)self setDisconnectedReason:17];
  }

  [(CSDCall *)self propertiesChanged];
}

- (void)joinConversationWithRequest:(id)request
{
  requestCopy = request;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = requestCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CSDProviderCall joinConversationWithRequest: %@", buf, 0xCu);
  }

  providerCallDelegate = [(CSDProviderCall *)self providerCallDelegate];
  v7 = [providerCallDelegate callSourceForJoinConversationRequest:requestCopy];
  [(CSDProviderCall *)self setBackingCallSource:v7];

  if ([(CSDCall *)self callStatus]== 4)
  {
    [(CSDProviderCall *)self setShouldAcceptDateConnectedProviderUpdates:1];
    v8 = +[NSDate date];
    [(CSDCall *)self setDateStartedConnecting:v8];
  }

  if (![requestCopy originatingUIType])
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_100473638();
    }
  }

  [(CSDCall *)self setIsSendingAudio:1];
  -[CSDProviderCall setWantsStagingArea:](self, "setWantsStagingArea:", [requestCopy wantsStagingArea]);
  conversationLink = [requestCopy conversationLink];
  [(CSDCall *)self setJoinedFromLink:conversationLink != 0];

  audioSourceIdentifier = [requestCopy audioSourceIdentifier];
  [(CSDProviderCall *)self setSourceIdentifier:audioSourceIdentifier];

  [(CSDProviderCall *)self setIsUnderlyingLinksConnected:1];
  -[CSDProviderCall setLaunchInBackground:](self, "setLaunchInBackground:", [requestCopy launchInBackground]);
  joinCallAction = [requestCopy joinCallAction];
  conversationLink2 = [requestCopy conversationLink];
  if (conversationLink2 && (v14 = conversationLink2, v15 = [(CSDProviderCall *)self lockdownModeEnabled], v14, v15))
  {
    [(CSDCall *)self setDisconnectedReason:29];
    publicKey = 0;
    pseudonym = 0;
    v18 = 0;
  }

  else
  {
    conversationLink3 = [requestCopy conversationLink];
    if (conversationLink3 && (v20 = conversationLink3, v21 = [requestCopy isJoiningConversationWithLink], v20, (v21 & 1) == 0))
    {
      v47 = +[CSDFaceTimeMultiwayIDSService sharedInstance];
      callerID = [v47 callerID];
      v25 = [TUHandle normalizedHandleWithDestinationID:callerID];
      v18 = [CXHandle handleWithTUHandle:v25];
      v26 = sub_100004778();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v18;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "LMI: callerID is: %@", buf, 0xCu);
      }

      conversationLink4 = [requestCopy conversationLink];
      pseudonym = [conversationLink4 pseudonym];

      conversationLink5 = [requestCopy conversationLink];
      publicKey = [conversationLink5 publicKey];
    }

    else
    {
      callerID2 = [requestCopy callerID];
      if (callerID2)
      {
        callerID3 = [requestCopy callerID];
        v18 = [CXHandle handleWithTUHandle:callerID3];
      }

      else
      {
        v18 = 0;
      }

      pseudonym = [requestCopy conversationLink];
      if (pseudonym)
      {
        isJoiningConversationWithLink = [requestCopy isJoiningConversationWithLink];

        if (isJoiningConversationWithLink)
        {
          conversationLink6 = [requestCopy conversationLink];
          pseudonym = [conversationLink6 pseudonym];

          conversationLink7 = [requestCopy conversationLink];
          publicKey = [conversationLink7 publicKey];
        }

        else
        {
          publicKey = 0;
          pseudonym = 0;
        }
      }

      else
      {
        publicKey = 0;
      }
    }
  }

  [joinCallAction setCallerID:v18];
  [joinCallAction setPseudonym:pseudonym];
  [joinCallAction setPublicKey:publicKey];
  [joinCallAction setScreenShareRequestType:0];
  featureFlags = [(CSDProviderCall *)self featureFlags];
  usesModernScreenSharingFromMessages = [featureFlags usesModernScreenSharingFromMessages];

  if (usesModernScreenSharingFromMessages)
  {
    if ([requestCopy requestToShareScreen])
    {
      [joinCallAction setScreenShareRequestType:1];
    }

    else if ([requestCopy requestToShareMyScreen])
    {
      [joinCallAction setScreenShareRequestType:2];
      screenSharingRequestMetadata = [requestCopy screenSharingRequestMetadata];
      v35 = [CXScreenSharingRequestMetadata metadataWithTUScreenSharingRequestMetadata:screenSharingRequestMetadata];
      [joinCallAction setScreenSharingRequestMetadata:v35];
    }

    [joinCallAction setShouldSendLegacyScreenSharingInvite:{objc_msgSend(requestCopy, "shouldSendLegacyScreenSharingInvite")}];
  }

  featureFlags2 = [(CSDProviderCall *)self featureFlags];
  if ([featureFlags2 conversationHandoffEnabled])
  {
    participantAssociation = [requestCopy participantAssociation];

    if (participantAssociation)
    {
      participantAssociation2 = [requestCopy participantAssociation];
      v39 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantAssociation2 identifier]);
      [joinCallAction setAssociationIdentifier:v39];

      participantAssociation3 = [requestCopy participantAssociation];
      avcIdentifier = [participantAssociation3 avcIdentifier];
      [joinCallAction setAssociationAVCIdentifier:avcIdentifier];

      [(CSDCall *)self setStartAsHandoff:1];
    }
  }

  else
  {
  }

  invitationPreferences = [requestCopy invitationPreferences];
  v43 = [invitationPreferences count];

  if (v43)
  {
    v44 = sub_100004778();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      invitationPreferences2 = [requestCopy invitationPreferences];
      *buf = 138412290;
      v49 = invitationPreferences2;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Join request specifies invitation preferences: %@", buf, 0xCu);
    }

    notificationStylesByHandleType = [requestCopy notificationStylesByHandleType];
    [joinCallAction setNotificationStylesByHandleType:notificationStylesByHandleType];
  }

  [providerCallDelegate performCallAction:joinCallAction forCall:self];
  -[CSDCall setUplinkMuted:](self, "setUplinkMuted:", [requestCopy isUplinkMuted]);
  -[CSDProviderCall setIsSendingVideo:](self, "setIsSendingVideo:", [requestCopy isVideoEnabled]);
  [(CSDCall *)self propertiesChanged];
}

- (void)answerWithRequest:(id)request
{
  requestCopy = request;
  if (!-[CSDProviderCall isScreening](self, "isScreening") || ([requestCopy sendToScreening] & 1) != 0 || objc_msgSend(requestCopy, "screeningType") || -[CSDCall callStatus](self, "callStatus") != 1)
  {
    v12.receiver = self;
    v12.super_class = CSDProviderCall;
    [(CSDProviderCall *)&v12 answerWithRequest:requestCopy];
    v6 = +[NSDate date];
    [(CSDCall *)self setDateStartedConnecting:v6];

    if ([requestCopy pauseVideoToStart])
    {
      [(CSDProviderCall *)self setIsSendingVideo:0];
    }

    v7 = [CXAnswerCallAction alloc];
    uniqueProxyIdentifierUUID = [(CSDProviderCall *)self uniqueProxyIdentifierUUID];
    sourceIdentifier = [v7 initWithCallUUID:uniqueProxyIdentifierUUID];

    if ([requestCopy behavior] == 4 || objc_msgSend(requestCopy, "downgradeToAudio"))
    {
      [(CSDProviderCall *)self setIsSendingVideo:0];
      if (![(CSDProviderCall *)self isConversation])
      {
        [(CSDProviderCall *)self setVideo:0];
      }

      [sourceIdentifier setDowngradeToAudio:1];
    }

    if ([requestCopy pauseVideoToStart])
    {
      v9 = 1;
    }

    else
    {
      v9 = [(CSDProviderCall *)self isSendingVideo]^ 1;
    }

    [sourceIdentifier setPauseVideoToStart:v9];
    [requestCopy localLandscapeAspectRatio];
    [sourceIdentifier setLocalLandscapeAspectRatio:?];
    [requestCopy localPortraitAspectRatio];
    [sourceIdentifier setLocalPortraitAspectRatio:?];
    v10 = ([requestCopy sendToScreening] & 1) != 0 || objc_msgSend(requestCopy, "screeningType") != 0;
    [sourceIdentifier setScreening:v10];
    providerCallDelegate = [(CSDProviderCall *)self providerCallDelegate];
    [providerCallDelegate performCallAction:sourceIdentifier forCall:self];
  }

  else
  {
    [(CSDProviderCall *)self setScreening:0];
    sourceIdentifier = [requestCopy sourceIdentifier];
    [(CSDProviderCall *)self setSourceIdentifier:sourceIdentifier];
  }
}

- (void)hold
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000B8834;
  v2[3] = &unk_100619D38;
  v2[4] = self;
  [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v2];
}

- (void)unhold
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_1000B88F4;
  v2[3] = &unk_100619D38;
  v2[4] = self;
  [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v2];
}

- (void)groupWithOtherCall:(id)call
{
  v10.receiver = self;
  v10.super_class = CSDProviderCall;
  callCopy = call;
  [(CSDProviderCall *)&v10 groupWithOtherCall:callCopy];
  v5 = [CXSetGroupCallAction alloc];
  v6 = [(CSDProviderCall *)self uniqueProxyIdentifierUUID:v10.receiver];
  uniqueProxyIdentifierUUID = [callCopy uniqueProxyIdentifierUUID];

  v8 = [v5 initWithCallUUID:v6 callUUIDToGroupWith:uniqueProxyIdentifierUUID];
  providerCallDelegate = [(CSDProviderCall *)self providerCallDelegate];
  [providerCallDelegate performCallAction:v8 forCall:self];
}

- (void)ungroup
{
  v7.receiver = self;
  v7.super_class = CSDProviderCall;
  [(CSDProviderCall *)&v7 ungroup];
  v3 = [CXSetGroupCallAction alloc];
  uniqueProxyIdentifierUUID = [(CSDProviderCall *)self uniqueProxyIdentifierUUID];
  v5 = [v3 initWithCallUUID:uniqueProxyIdentifierUUID callUUIDToGroupWith:0];

  providerCallDelegate = [(CSDProviderCall *)self providerCallDelegate];
  [providerCallDelegate performCallAction:v5 forCall:self];
}

- (void)setProviderFailureReasonIfNecessary:(int64_t)necessary
{
  failureContext = [(CSDProviderCall *)self failureContext];

  if (!failureContext)
  {
    v6 = objc_alloc_init(CXCallFailureContext);
    [(CSDProviderCall *)self setFailureContext:v6];
  }

  failureContext2 = [(CSDProviderCall *)self failureContext];
  providerEndedReason = [failureContext2 providerEndedReason];

  if (!providerEndedReason)
  {
    failureContext3 = [(CSDProviderCall *)self failureContext];
    [failureContext3 setProviderEndedReason:necessary];
  }
}

- (void)setScreenShareAttributes:(id)attributes
{
  attributesCopy = attributes;
  v17.receiver = self;
  v17.super_class = CSDProviderCall;
  [(CSDCall *)&v17 setScreenShareAttributes:attributesCopy];
  v5 = [CSDCall cxScreenShareAttributesForCallAttributes:attributesCopy];
  v6 = [CXSetScreenShareAttributesCallAction alloc];
  uniqueProxyIdentifierUUID = [(CSDProviderCall *)self uniqueProxyIdentifierUUID];
  v8 = [v6 initWithCallUUID:uniqueProxyIdentifierUUID attributes:v5];

  providerCallDelegate = [(CSDProviderCall *)self providerCallDelegate];
  [providerCallDelegate performCallAction:v8 forCall:self];

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000B91F0;
  v14 = &unk_100619D88;
  selfCopy = self;
  v16 = attributesCopy;
  v10 = attributesCopy;
  [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v11];
  [(CSDCall *)self propertiesChanged:v11];
}

- (void)setTtyType:(int)type
{
  v9.receiver = self;
  v9.super_class = CSDProviderCall;
  [(CSDProviderCall *)&v9 setTtyType:?];
  if ([(CSDProviderCall *)self ttyType]!= type)
  {
    v5 = [CXSetTTYTypeCallAction alloc];
    uniqueProxyIdentifierUUID = [(CSDProviderCall *)self uniqueProxyIdentifierUUID];
    v7 = [v5 initWithCallUUID:uniqueProxyIdentifierUUID ttyType:sub_100122CC0(type)];

    providerCallDelegate = [(CSDProviderCall *)self providerCallDelegate];
    [providerCallDelegate performCallAction:v7 forCall:self];
  }
}

- (void)sendHardPauseDigits
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    pauseDigitsQueue = [(CSDProviderCall *)self pauseDigitsQueue];
    v9 = 138412546;
    selfCopy = self;
    v11 = 2112;
    v12 = pauseDigitsQueue;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "for call: %@ pauseDigitsQueue: %@", &v9, 0x16u);
  }

  pauseDigitsQueue2 = [(CSDProviderCall *)self pauseDigitsQueue];
  nextPauseDigits = [pauseDigitsQueue2 nextPauseDigits];

  if (!nextPauseDigits)
  {
    digits = sub_100004778();
    if (!os_log_type_enabled(digits, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v9) = 0;
    v8 = "[WARN] No next pause digits exist";
LABEL_10:
    _os_log_impl(&_mh_execute_header, digits, OS_LOG_TYPE_DEFAULT, v8, &v9, 2u);
    goto LABEL_11;
  }

  if (![nextPauseDigits isHardPause])
  {
    digits = sub_100004778();
    if (!os_log_type_enabled(digits, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v9) = 0;
    v8 = "[WARN] Next pause digits are not hard pause";
    goto LABEL_10;
  }

  digits = [nextPauseDigits digits];
  [(CSDProviderCall *)self _sendDTMFDigits:digits type:3];
LABEL_11:
}

- (void)playRemoteDTMFToneForKey:(unsigned __int8)key
{
  keyCopy = key;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    selfCopy = self;
    v11 = 1024;
    v12 = keyCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "for call: %@ key: %d", &v9, 0x12u);
  }

  pauseDigitsQueue = [(CSDProviderCall *)self pauseDigitsQueue];
  dequeueAllPauseDigits = [pauseDigitsQueue dequeueAllPauseDigits];

  LOWORD(v9) = keyCopy;
  v8 = [NSString stringWithCharacters:&v9 length:1];
  [(CSDProviderCall *)self _sendDTMFDigits:v8 type:1];
}

- (void)setRemoteVideoPresentationSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16.width = width;
    v16.height = height;
    v7 = NSStringFromSize(v16);
    v12 = 138412546;
    selfCopy = self;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "for call: %@ remoteVideoPresentationSize: %@", &v12, 0x16u);
  }

  v8 = [CXSetVideoPresentationSizeCallAction alloc];
  uniqueProxyIdentifierUUID = [(CSDProviderCall *)self uniqueProxyIdentifierUUID];
  v10 = [v8 initWithCallUUID:uniqueProxyIdentifierUUID videoPresentationSize:{width, height}];

  providerCallDelegate = [(CSDProviderCall *)self providerCallDelegate];
  [providerCallDelegate performCallAction:v10 forCall:self];
}

- (void)setRemoteVideoPresentationState:(int)state
{
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    selfCopy = self;
    v13 = 1024;
    stateCopy = state;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "for call: %@ remoteVideoPresentationState: %d", &v11, 0x12u);
  }

  if (state == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = state == 1;
  }

  v7 = [CXSetVideoPresentationStateCallAction alloc];
  uniqueProxyIdentifierUUID = [(CSDProviderCall *)self uniqueProxyIdentifierUUID];
  v9 = [v7 initWithCallUUID:uniqueProxyIdentifierUUID videoPresentationState:v6];

  providerCallDelegate = [(CSDProviderCall *)self providerCallDelegate];
  [providerCallDelegate performCallAction:v9 forCall:self];
}

- (void)dequeueNextPauseDigits
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dequeueing next pause digits", v6, 2u);
  }

  pauseDigitsQueue = [(CSDProviderCall *)self pauseDigitsQueue];
  dequeueNextPauseDigits = [pauseDigitsQueue dequeueNextPauseDigits];

  [(CSDProviderCall *)self _sendSoftPauseDigitsIfNecessary];
}

- (void)donateHandles:(id)handles
{
  handlesCopy = handles;
  v6 = +[CSDFaceTimeMultiwayIDSService sharedInstance];
  allObjects = [handlesCopy allObjects];

  v5 = +[NSDate date];
  [v6 addFirewallEntriesForHandles:allObjects lastSeenDate:v5];
}

- (id)tuScreenShareAttributesForScreenAttributes:(id)attributes
{
  if (self->_screenShareAttributes)
  {
    attributesCopy = attributes;
    windowUUID = [attributesCopy windowUUID];

    [(TUCallScreenShareAttributes *)self->_screenShareAttributes setWindowUUID:windowUUID];
    v6 = self->_screenShareAttributes;
  }

  else
  {
    attributesCopy2 = attributes;
    v6 = objc_alloc_init(TUCallScreenShareAttributes);
    -[TUCallScreenShareAttributes setDeviceFamily:](v6, "setDeviceFamily:", [attributesCopy2 deviceFamily]);
    -[TUCallScreenShareAttributes setDeviceHomeButtonType:](v6, "setDeviceHomeButtonType:", [attributesCopy2 deviceHomeButtonType]);
    -[TUCallScreenShareAttributes setStyle:](v6, "setStyle:", [attributesCopy2 style]);
    displayID = [attributesCopy2 displayID];
    [(TUCallScreenShareAttributes *)v6 setDisplayID:displayID];

    frameRate = [attributesCopy2 frameRate];
    [(TUCallScreenShareAttributes *)v6 setFrameRate:frameRate];

    -[TUCallScreenShareAttributes setWindowed:](v6, "setWindowed:", [attributesCopy2 isWindowed]);
    windowUUID2 = [attributesCopy2 windowUUID];
    [(TUCallScreenShareAttributes *)v6 setWindowUUID:windowUUID2];

    displayScale = [attributesCopy2 displayScale];
    [(TUCallScreenShareAttributes *)v6 setDisplayScale:displayScale];

    scaleFactor = [attributesCopy2 scaleFactor];
    [(TUCallScreenShareAttributes *)v6 setScaleFactor:scaleFactor];

    systemRootLayerTransform = [attributesCopy2 systemRootLayerTransform];
    [(TUCallScreenShareAttributes *)v6 setSystemRootLayerTransform:systemRootLayerTransform];

    originalResolution = [attributesCopy2 originalResolution];

    v15 = [originalResolution copy];
    [(TUCallScreenShareAttributes *)v6 setOriginalResolution:v15];
  }

  return v6;
}

- (void)_sendDTMFDigits:(id)digits type:(int64_t)type
{
  digitsCopy = digits;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = digitsCopy;
    v14 = 2048;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending DTMF digits: %@ type: %ld", &v12, 0x16u);
  }

  v8 = [CXPlayDTMFCallAction alloc];
  uniqueProxyIdentifierUUID = [(CSDProviderCall *)self uniqueProxyIdentifierUUID];
  v10 = [v8 initWithCallUUID:uniqueProxyIdentifierUUID digits:digitsCopy type:type];

  providerCallDelegate = [(CSDProviderCall *)self providerCallDelegate];
  [providerCallDelegate performCallAction:v10 forCall:self];
}

- (void)_sendSoftPauseDigitsIfNecessary
{
  pauseDigitsQueue = [(CSDProviderCall *)self pauseDigitsQueue];
  nextPauseDigits = [pauseDigitsQueue nextPauseDigits];

  if (-[CSDProviderCall isConnected](self, "isConnected") && nextPauseDigits && ([nextPauseDigits isHardPause] & 1) == 0)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      digits = [nextPauseDigits digits];
      v8 = 138412290;
      v9 = digits;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found queued soft pause digits: %@", &v8, 0xCu);
    }

    digits2 = [nextPauseDigits digits];
    [(CSDProviderCall *)self _sendDTMFDigits:digits2 type:2];
  }
}

- (int64_t)_switchToCXCallFailureReasonFromTUCallDisconnectedReason:(int)reason
{
  if (reason < 0x36 && ((0x2A33EA7DCD0001uLL >> reason) & 1) != 0)
  {
    v4 = qword_100579FE0[reason];
  }

  else
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      reasonCopy2 = reason;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set failure reason CXCallFailureReasonGenericError, disconnect reason: %ld", &v8, 0xCu);
    }

    v4 = 0;
  }

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    reasonCopy2 = reason;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "disconnect reason: %ld, failureReason: %ld", &v8, 0x16u);
  }

  return v4;
}

- (void)pauseDigitsQueueChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "for pauseDigitsQueue: %@", &v6, 0xCu);
  }

  [(CSDCall *)self propertiesChanged];
}

- (void)handleAudioSessionActivationStateChangedTo:(id)to
{
  v6.receiver = self;
  v6.super_class = CSDProviderCall;
  toCopy = to;
  [(CSDCall *)&v6 handleAudioSessionActivationStateChangedTo:toCopy];
  v5 = [(CSDProviderCall *)self backingCallSource:v6.receiver];
  [v5 handleAudioSessionActivationStateChangedTo:toCopy];
}

- (id)activeRemoteParticipantForCallUpdate:(id)update
{
  updateCopy = update;
  activeRemoteParticipant = [updateCopy activeRemoteParticipant];
  name = [activeRemoteParticipant name];
  v7 = [name length];
  sandboxExtendedImageURL = [activeRemoteParticipant sandboxExtendedImageURL];
  v9 = sandboxExtendedImageURL;
  if (v7)
  {
    if (sandboxExtendedImageURL)
    {
      v10 = [(CSDProviderCall *)self imageURLForCXSandboxExtendedURL:sandboxExtendedImageURL];
    }

    else
    {
      v10 = 0;
    }

    v16 = [[TUMutableParticipant alloc] initWithName:name];
    [v16 setImageURL:v10];
  }

  else
  {

    if (v9)
    {
      sandboxExtendedImageURL2 = [activeRemoteParticipant sandboxExtendedImageURL];
      sandboxExtensionHandle = [sandboxExtendedImageURL2 sandboxExtensionHandle];

      if (sandboxExtensionHandle >= 1)
      {
        v13 = sub_100004778();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          localizedCallerImageURL = [updateCopy localizedCallerImageURL];
          v15 = [localizedCallerImageURL URL];
          v19 = 138412290;
          v20 = v15;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Releasing sandbox extension handle because we are not processing the participant image URL: %@", &v19, 0xCu);
        }

        sandbox_extension_release();
      }
    }

    v16 = 0;
  }

  v17 = [v16 copy];

  return v17;
}

- (id)imageURLForCXSandboxExtendedURL:(id)l
{
  lCopy = l;
  v4 = lCopy;
  if (!lCopy)
  {
    v6 = 0;
    goto LABEL_36;
  }

  if ([lCopy csd_isSymbolicLink])
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Symbolic link found for URL %@", buf, 0xCu);
    }

    v6 = 0;
    goto LABEL_35;
  }

  v7 = [v4 URL];
  lastPathComponent = [v7 lastPathComponent];
  if (![lastPathComponent length])
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Could not determine source file for URL %@", buf, 0xCu);
    }

    v12 = 0;
    v5 = 0;
    v6 = 0;
    goto LABEL_34;
  }

  relativePath = [v7 relativePath];
  v10 = [relativePath isEqualToString:@"/stock"];

  if (v10)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Not copying generic image", buf, 2u);
    }

    v6 = [[NSURL alloc] initFileURLWithPath:@"/stock"];
    v12 = 0;
    v5 = 0;
    goto LABEL_34;
  }

  v14 = lastPathComponent;
  if ([v14 length])
  {
    v24 = 0;
    v15 = [[CSDSandboxExtensionDirectory alloc] initWithName:@"Images" error:&v24];
    v16 = v24;
    v12 = v16;
    if (v15)
    {
      v23 = v16;
      v17 = [(CSDSandboxExtensionDirectory *)v15 createLinkIfNecessaryWithFilename:v14 toURL:v7 error:&v23];
      v18 = v23;

      if (!v17)
      {
        v19 = sub_100004778();
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v26 = v7;
          v27 = 2112;
          v28 = v14;
          v29 = 2112;
          v30 = v18;
          _os_log_error_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Copying URL '%@' to filename '%@'failed with error %@", buf, 0x20u);
        }
      }

      if ([v4 sandboxExtensionHandle] >= 1)
      {
        v20 = sub_100004778();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "Releasing sandbox extension handle", buf, 2u);
        }

        sandbox_extension_release();
      }

      v5 = v17;
      v12 = v18;
      goto LABEL_33;
    }

    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_100473720();
    }
  }

  else
  {
    v15 = sub_100004778();
    if (os_log_type_enabled(&v15->super, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v4;
      _os_log_impl(&_mh_execute_header, &v15->super, OS_LOG_TYPE_DEFAULT, "[WARN] Could not determine destination file for URL %@", buf, 0xCu);
    }

    v12 = 0;
  }

  v5 = 0;
LABEL_33:

  v6 = v5;
LABEL_34:

LABEL_35:
LABEL_36:

  return v6;
}

@end