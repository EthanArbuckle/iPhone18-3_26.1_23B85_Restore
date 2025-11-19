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
- (CSDProviderCall)initWithHandoffContext:(id)a3 backingCallSource:(id)a4;
- (CSDProviderCall)initWithUniqueProxyIdentifier:(id)a3 configuration:(id)a4;
- (CSDProviderCallDelegate)providerCallDelegate;
- (CXCallUpdate)mergedCallUpdate;
- (LSApplicationRecord)applicationRecord;
- (NSNotificationCenter)defaultNotificationCenter;
- (NSUUID)callGroupUUID;
- (TUCallCenter)callCenter;
- (id)activeRemoteParticipantForCallUpdate:(id)a3;
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
- (id)imageURLForCXSandboxExtendedURL:(id)a3;
- (id)initIncomingWithBackingCallSource:(id)a3 UUID:(id)a4 update:(id)a5 originatingUIType:(int)a6;
- (id)initOutgoingWithDialRequest:(id)a3;
- (id)initOutgoingWithDialRequest:(id)a3 configuration:(id)a4;
- (id)initOutgoingWithJoinConversationRequest:(id)a3;
- (id)initOutgoingWithRequestedStartCallAction:(id)a3 backingCallSource:(id)a4;
- (id)initOutgoingWithUniqueProxyIdentifier:(id)a3 backingCallSourceIdentifier:(id)a4 callUpdate:(id)a5 isVideo:(BOOL)a6 endpointOnCurrentDevice:(BOOL)a7 originatingUIType:(int)a8 configuration:(id)a9;
- (id)initOutgoingWithUpdate:(id)a3 callUUID:(id)a4 backingCallSource:(id)a5 isExpanseProvider:(BOOL)a6;
- (id)initiator;
- (id)isoCountryCode;
- (id)localSenderIdentityAccountUUID;
- (id)localSenderIdentityUUID;
- (id)provider;
- (id)providerContext;
- (id)recordingDisabledError;
- (id)remoteParticipantHandles;
- (id)startCallActionWithDialRequest:(id)a3;
- (id)systemControllerSetUplinkMutedBlock;
- (id)systemControllerUplinkMutedBlock;
- (id)tuScreenShareAttributesForScreenAttributes:(id)a3;
- (id)usesSystemMutingBlock;
- (int)_switchFromFailureReasonToDisconnectedReason:(int64_t)a3;
- (int)callStatusFromUnderlyingSource;
- (int)commTrustScore;
- (int)hardPauseDigitsState;
- (int)ttyType;
- (int64_t)_switchToCXCallFailureReasonFromTUCallDisconnectedReason:(int)a3;
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
- (void)_sendDTMFDigits:(id)a3 type:(int64_t)a4;
- (void)_sendSoftPauseDigitsIfNecessary;
- (void)answerWithRequest:(id)a3;
- (void)dealloc;
- (void)dequeueNextPauseDigits;
- (void)dialWithRequest:(id)a3 displayContext:(id)a4;
- (void)donateHandles:(id)a3;
- (void)groupWithOtherCall:(id)a3;
- (void)handleAudioSessionActivationStateChangedTo:(id)a3;
- (void)hold;
- (void)joinConversationWithRequest:(id)a3;
- (void)pauseDigitsQueueChanged:(id)a3;
- (void)playRemoteDTMFToneForKey:(unsigned __int8)a3;
- (void)sendHardPauseDigits;
- (void)setBluetoothAudioFormat:(int64_t)a3;
- (void)setCallGroupUUID:(id)a3;
- (void)setDateConnected:(id)a3;
- (void)setFailureContext:(id)a3;
- (void)setHeld:(BOOL)a3;
- (void)setInjectingAudio:(BOOL)a3;
- (void)setMediaPlaybackOnExternalDevice:(BOOL)a3;
- (void)setMixesVoiceWithMedia:(BOOL)a3;
- (void)setOutgoing:(BOOL)a3;
- (void)setProviderFailureReasonIfNecessary:(int64_t)a3;
- (void)setProviderSource:(id)a3;
- (void)setRemoteVideoPresentationSize:(CGSize)a3;
- (void)setRemoteVideoPresentationState:(int)a3;
- (void)setScreenShareAttributes:(id)a3;
- (void)setSendingVideo:(BOOL)a3;
- (void)setTtyType:(int)a3;
- (void)setVideo:(BOOL)a3;
- (void)systemMuteStatusChanged:(id)a3;
- (void)ungroup;
- (void)unhold;
- (void)updateForDisconnection;
- (void)updateWithCallUpdate:(id)a3 notifyDelegate:(BOOL)a4;
- (void)updateWithOverrideCallProperties:(id)a3;
@end

@implementation CSDProviderCall

- (BOOL)isOneToOneModeEnabled
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 isOneToOneModeEnabled];

  return v3;
}

- (id)callerNameFromNetwork
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 localizedCallerName];

  return v3;
}

- (BOOL)isInternational
{
  v3 = [(CSDProviderCall *)self providerIdentifier];
  if (TUStringsAreCaseInsensitiveEqual())
  {
    v4 = [(CSDProviderCall *)self isIncoming];

    if (v4)
    {
      v5 = [(CSDProviderCall *)self mergedCallUpdate];
      v6 = [v5 account];
      v7 = [v6 isoCountryCode];

      if ([v7 length])
      {
        v8 = [(CSDProviderCall *)self isoCountryCode];
        if ([v8 length])
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

          v13 = [(CSDProviderCall *)self userConfiguration];
          v14 = [v13 simulateInternationalCall];

          v11 = 0;
          if (TUStringsAreCaseInsensitiveEqual() && ((v9 | v10 | v14) & 1) != 0)
          {
            v15 = [(CSDProviderCall *)self remoteParticipantHandles];
            v16 = [v15 anyObject];

            v17 = [v16 value];
            if ([v17 length])
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
        v8 = sub_100004778();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "International status is false; service provider ISO country code is not available.", buf, 2u);
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
  v3 = [(CSDProviderCall *)self mergedCallUpdate];
  v4 = [v3 remoteMember];

  if (!v4 || ([v4 handle], v5 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v5, "value"), v6 = objc_claimAutoreleasedReturnValue(), v6, v5, !v6))
  {
    v16 = 0;
    goto LABEL_17;
  }

  v7 = [(CSDProviderCall *)self pauseDigitsQueue];
  v8 = [v4 handle];
  v9 = [v8 value];
  if (v7)
  {
    v10 = [(CSDProviderCall *)self pauseDigitsQueue];
    v11 = [v10 originalPauseDigitsString];
    v12 = [v9 stringByAppendingString:v11];

    v9 = v12;
  }

  v13 = [v4 handle];
  v14 = [v13 type];

  if (v14 == 1)
  {
    v15 = [TUHandle normalizedGenericHandleForValue:v9];
LABEL_12:
    v16 = v15;
    goto LABEL_13;
  }

  if (v14 != 2)
  {
    if (v14 != 3)
    {
      v16 = 0;
      goto LABEL_16;
    }

    v15 = [TUHandle normalizedEmailAddressHandleForValue:v9];
    goto LABEL_12;
  }

  v17 = [(CSDProviderCall *)self isoCountryCode];
  v16 = [TUHandle normalizedPhoneNumberHandleForValue:v9 isoCountryCode:v17];

LABEL_13:
  if (!v16)
  {
    goto LABEL_17;
  }

  v9 = [v4 handle];
  v18 = [v9 siriDisplayName];
  [v16 setSiriDisplayName:v18];

LABEL_16:
LABEL_17:

  return v16;
}

- (CXCallUpdate)mergedCallUpdate
{
  v3 = [(CSDCall *)self overridePropertiesUpdate];
  v4 = v3;
  if (v3 && (([v3 hasSet], (v5 & 0x80000) != 0) || (objc_msgSend(v4, "hasSet") & 0x1000000000000000) != 0 || (objc_msgSend(v4, "hasSet"), (v6 & 0x1000000) != 0) || (objc_msgSend(v4, "hasSet") & 0x2000000000000000) != 0 || (objc_msgSend(v4, "hasSet"), (v7 & 2) != 0) || (objc_msgSend(v4, "hasSet"), (v8 & 0x100000) != 0)))
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
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 mayRequireBreakBeforeMake];

  return v3;
}

- (BOOL)isEmergency
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 isEmergency];

  return v3;
}

- (id)activeRemoteParticipants
{
  v3 = [(CSDProviderCall *)self mergedCallUpdate];
  v4 = [v3 activeRemoteParticipantHandles];
  if (v4)
  {
    v5 = [(CSDProviderCall *)self mergedCallUpdate];
    v6 = [v5 activeRemoteParticipantHandles];
    v7 = [CXHandle tuHandlesWithMembers:v6];
  }

  else
  {
    v7 = +[NSSet set];
  }

  return v7;
}

- (id)remoteParticipantHandles
{
  v3 = [(CSDProviderCall *)self mergedCallUpdate];
  v4 = [v3 remoteParticipantHandles];

  if (v4)
  {
    v5 = [(CSDProviderCall *)self mergedCallUpdate];
    v6 = [v5 remoteParticipantHandles];
    v7 = [CXHandle tuHandlesWithMembers:v6];
  }

  else
  {
    v9.receiver = self;
    v9.super_class = CSDProviderCall;
    v7 = [(CSDProviderCall *)&v9 remoteParticipantHandles];
  }

  return v7;
}

- (int64_t)audioInterruptionProviderType
{
  v3 = [(CSDProviderCall *)self mergedCallUpdate];
  v4 = [v3 audioInterruptionProvider];

  if (v4 == 1)
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
    v7 = [(CSDProviderCall *)self mergedCallUpdate];
    v9 = 134218240;
    v10 = [v7 audioInterruptionProvider];
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
  v2 = [(CSDProviderCall *)self dateConnected];
  v3 = v2 != 0;

  return v3;
}

- (id)provider
{
  v3 = [(CSDProviderCall *)self providerCallDelegate];
  v4 = [(CSDProviderCall *)self providerIdentifier];
  v5 = [v3 providerWithIdentifier:v4];

  return v5;
}

- (id)initiator
{
  v3 = [(CSDProviderCall *)self mergedCallUpdate];
  v4 = [v3 hasSet];

  if ((v4 & 0x4000000000) != 0)
  {
    v6 = [(CSDProviderCall *)self mergedCallUpdate];
    v7 = [v6 initiator];
  }

  else
  {
    if ([(CSDProviderCall *)self service]!= 1 || [(CSDProviderCall *)self isOutgoing])
    {
      v5 = 0;
      goto LABEL_7;
    }

    v6 = [(CSDProviderCall *)self mergedCallUpdate];
    v7 = [v6 remoteHandle];
  }

  v8 = v7;
  v5 = [v7 tuHandle];

LABEL_7:

  return v5;
}

- (BOOL)supportsRecents
{
  v3 = [(CSDProviderCall *)self mergedCallUpdate];
  if ([v3 supportsRecents])
  {
    v6.receiver = self;
    v6.super_class = CSDProviderCall;
    v4 = [(CSDProviderCall *)&v6 supportsRecents];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)audioCategory
{
  v3 = [(CSDProviderCall *)self mergedCallUpdate];
  v4 = [v3 audioCategory];

  v5 = [(CSDProviderCall *)self proxyAVAudioSession];

  if (v5)
  {
    v6 = [(CSDProviderCall *)self proxyAVAudioSession];
    v7 = [v6 category];

    v4 = v7;
  }

  return v4;
}

- (id)audioMode
{
  v3 = [(CSDProviderCall *)self mergedCallUpdate];
  v4 = [v3 audioMode];

  v5 = [(CSDProviderCall *)self proxyAVAudioSession];

  if (v5)
  {
    v6 = [(CSDProviderCall *)self proxyAVAudioSession];
    v7 = [v6 mode];

    v4 = v7;
  }

  return v4;
}

- (BOOL)isUsingBaseband
{
  v2 = self;
  v3 = [(CSDProviderCall *)self mergedCallUpdate];
  if (([v3 hasSet] & 0x100) != 0)
  {
    v4 = [(CSDProviderCall *)v2 mergedCallUpdate];
    LOBYTE(v2) = [v4 isUsingBaseband];
  }

  else if ([(CSDProviderCall *)v2 service]== 1)
  {
    LODWORD(v2) = +[TUCallCapabilities isWiFiCallingCurrentlyAvailable]^ 1;
  }

  else
  {
    LOBYTE(v2) = 0;
  }

  return v2;
}

- (BOOL)needsManualInCallSounds
{
  if ([(CSDCall *)self temporaryRequireInCallSounds])
  {
    return 1;
  }

  v4 = [(CSDProviderCall *)self mergedCallUpdate];
  v5 = [v4 requiresInCallSounds];

  return v5;
}

- (int64_t)soundRegion
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 inCallSoundRegion];

  if ((v3 - 1) >= 5)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (int64_t)inputAudioPowerSpectrumToken
{
  v3 = [(CSDProviderCall *)self providerContext];
  v4 = [v3 objectForKeyedSubscript:@"CSDIDSInputAudioPowerSpectrumTokenKey"];
  if (v4)
  {
    v5 = [(CSDProviderCall *)self providerContext];
    v6 = [v5 objectForKeyedSubscript:@"CSDIDSInputAudioPowerSpectrumTokenKey"];
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)outputAudioPowerSpectrumToken
{
  v3 = [(CSDProviderCall *)self providerContext];
  v4 = [v3 objectForKeyedSubscript:@"CSDIDSOutputAudioPowerSpectrumTokenKey"];
  if (v4)
  {
    v5 = [(CSDProviderCall *)self providerContext];
    v6 = [v5 objectForKeyedSubscript:@"CSDIDSOutputAudioPowerSpectrumTokenKey"];
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)screenSharingIntention
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = sub_1000233F8([v2 screenSharingIntention]);

  return v3;
}

- (BOOL)isFailureExpected
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 isFailureExpected];

  return v3;
}

- (BOOL)shouldSuppressInCallUI
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 shouldSuppressInCallUI];

  return v3;
}

- (BOOL)isMutuallyExclusiveCall
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 isMutuallyExclusiveCall];

  return v3;
}

- (BOOL)isUplinkMuted
{
  v3 = [(CSDProviderCall *)self featureFlags];
  v4 = [v3 sessionBasedMutingEnabled];

  if (v4)
  {
    v12.receiver = self;
    v12.super_class = CSDProviderCall;
    v5 = [(CSDCall *)&v12 isUplinkMuted];
    return v5 & 1;
  }

  v7 = [(CSDProviderCall *)self provider];
  v8 = [v7 isTinCanProvider];

  v9 = [(CSDProviderCall *)self isUnderlyingUplinkMuted];
  v5 = v8 ^ 1 | v9;
  if (v8 & 1) != 0 || (v9)
  {
    return v5 & 1;
  }

  v10 = +[TUAudioSystemController sharedAudioSystemController];
  v11 = [v10 isUplinkMuted];

  return v11;
}

- (int)ttyType
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = sub_100025BB8([v2 ttyType]);

  return v3;
}

- (BOOL)supportsScreening
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 supportsScreening];

  return v3;
}

- (BOOL)isReRing
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 isReRing];

  return v3;
}

- (int64_t)nearbyMode
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 nearbyMode];

  return v3;
}

- (int)commTrustScore
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = sub_1000268BC([v2 commTrustScore]);

  return v3;
}

- (BOOL)isThirdPartyVideo
{
  v3 = [(CSDProviderCall *)self provider];
  if ([v3 isSystemProvider])
  {
    v4 = 0;
  }

  else
  {
    v5 = [(CSDProviderCall *)self mergedCallUpdate];
    v4 = [v5 hasVideo];
  }

  return v4;
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
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 ISOCountryCode];

  return v3;
}

- (CSDProviderCallDelegate)providerCallDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_providerCallDelegate);

  return WeakRetained;
}

- (BOOL)hasEnded
{
  v2 = [(CSDProviderCall *)self dateEnded];
  v3 = v2 != 0;

  return v3;
}

- (id)announceProviderIdentifier
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 announceProviderIdentifier];

  return v3;
}

- (BOOL)isVideo
{
  v3 = [(CSDProviderCall *)self provider];
  if ([v3 isSystemProvider])
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
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 participantGroupUUID];

  return v3;
}

- (id)localSenderIdentityUUID
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 localSenderIdentityUUID];

  return v3;
}

- (id)localSenderIdentityAccountUUID
{
  v3 = [(CSDProviderCall *)self mergedCallUpdate];
  v4 = [v3 localSenderIdentityAccountUUID];

  if (!v4)
  {
    v5 = [(CSDProviderCall *)self localSenderIdentityUUID];
    if (v5)
    {
      v6 = [(CSDProviderCall *)self provider];
      v7 = [v6 senderIdentityForUUID:v5];
      v4 = [v7 accountUUID];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

- (AVAudioSession)proxyAVAudioSession
{
  v3 = [(CSDProviderCall *)self provider];
  if ([v3 isSystemProvider])
  {
    v4 = 0;
LABEL_5:

    goto LABEL_7;
  }

  v5 = [(CSDProviderCall *)self audioInterruptionProviderType];

  if (v5 == 1)
  {
    v3 = [(CSDProviderCall *)self provider];
    v4 = +[AVAudioSession retrieveSessionWithID:](AVAudioSession, "retrieveSessionWithID:", [v3 audioSessionID]);
    goto LABEL_5;
  }

  v4 = 0;
LABEL_7:

  return v4;
}

- (BOOL)isDownlinkMuted
{
  v2 = +[TUAudioSystemController sharedAudioSystemController];
  v3 = [v2 isDownlinkMuted];

  return v3;
}

- (BOOL)supportsTTYWithVoice
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 supportsTTYWithVoice];

  return v3;
}

- (BOOL)isConversation
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 isConversation];

  return v3;
}

- (BOOL)isRemoteUplinkMuted
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 isRemoteUplinkMuted];

  return v3;
}

- (int64_t)bluetoothAudioFormat
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = sub_1000213A4([v2 bluetoothAudioFormat]);

  return v3;
}

- (BOOL)supportsEmergencyFallback
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 supportsEmergencyFallback];

  return v3;
}

- (BOOL)hasBeenRedirected
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 hasBeenRedirected];

  return v3;
}

- (int)hardPauseDigitsState
{
  v3 = [(CSDProviderCall *)self pauseDigitsQueue];
  v4 = [v3 nextPauseDigits];
  v5 = [v4 isHardPause];

  if (v5)
  {
    return 2;
  }

  v7 = [(CSDProviderCall *)self pauseDigitsQueue];
  v6 = [v7 hasQueuedHardPauseDigits];

  return v6;
}

- (id)hardPauseDigits
{
  v3 = [(CSDProviderCall *)self pauseDigitsQueue];
  v4 = [v3 nextPauseDigits];
  if ([v4 isHardPause])
  {
    v5 = [(CSDProviderCall *)self pauseDigitsQueue];
    v6 = [v5 nextPauseDigits];
    v7 = [v6 digits];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (BOOL)isReceptionistCapable
{
  callReceptionistDisclosureState = self->_callReceptionistDisclosureState;
  if (!callReceptionistDisclosureState)
  {
    v4 = [(CSDProviderCall *)self handle];
    v5 = [v4 normalizedValue];
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

  v8 = [(CSDProviderCall *)self featureFlags];
  v9 = TUReceptionistAvailable();

  return v9;
}

- (int64_t)providerErrorCode
{
  v2 = [(CSDProviderCall *)self failureContext];
  v3 = [v2 providerErrorCode];

  return v3;
}

- (int64_t)providerEndedReason
{
  v2 = [(CSDProviderCall *)self failureContext];
  v3 = [v2 providerEndedReason];

  return v3;
}

- (BOOL)accessoryButtonEventsEnabled
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 accessoryButtonEventsEnabled];

  return v3;
}

- (int64_t)videoStreamToken
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 videoStreamToken];

  return v3;
}

- (id)providerContext
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 context];

  return v3;
}

- (BOOL)isBlocked
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 isBlocked];

  return v3;
}

- (id)endedReasonUserInfo
{
  v3 = [(CSDProviderCall *)self failureContext];
  v4 = [v3 endedReasonUserInfoForCall:self];

  return v4;
}

- (int64_t)transmissionMode
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 transmissionMode];

  if (v3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v3 == 2);
  }
}

- (id)recordingDisabledError
{
  v13.receiver = self;
  v13.super_class = CSDProviderCall;
  v3 = [(CSDCall *)&v13 recordingDisabledError];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v6 = [(CSDProviderCall *)self mergedCallUpdate];
    v7 = [v6 supportsRecording];

    if (v7)
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
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 mixesVoiceWithMedia];

  return v3;
}

- (BOOL)isDomestic
{
  v3 = [(CSDProviderCall *)self handle];
  v4 = [v3 type];

  if (v4 != 2)
  {
    return 0;
  }

  v5 = [(CSDProviderCall *)self mergedCallUpdate];
  v6 = [v5 account];
  v7 = [v6 isoCountryCode];

  v8 = _PNCopyInternationalCodeForCountry();
  v14 = INIT_DECOMPOSED_PHONE_NUMBER[0];
  v15 = INIT_DECOMPOSED_PHONE_NUMBER[1];
  v16 = INIT_DECOMPOSED_PHONE_NUMBER[2];
  v17 = INIT_DECOMPOSED_PHONE_NUMBER[3];
  v9 = [(CSDProviderCall *)self handle];
  v10 = [v9 normalizedValue];

  [v10 UTF8String];
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
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 serviceStatus];

  if (v3 == 1)
  {
    return 1;
  }

  else
  {
    return 2 * (v3 == 2);
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
      v11 = [(CSDProviderCall *)self failureContext];
      v12 = [(CSDProviderCall *)self endedReason];
      *buf = 138412546;
      v42 = v11;
      v43 = 2048;
      v44 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "updateForDisconnection failureContext: %@, endedReason: %ld", buf, 0x16u);
    }

    v13 = [(CSDProviderCall *)self failureContext];

    if (v13)
    {
      v14 = [(CSDProviderCall *)self failureContext];
      -[CSDCall setDisconnectedReason:](self, "setDisconnectedReason:", -[CSDProviderCall _switchFromFailureReasonToDisconnectedReason:](self, "_switchFromFailureReasonToDisconnectedReason:", [v14 failureReason]));

      return;
    }

    if (-[CSDProviderCall endedReason](self, "endedReason") != 2 || (-[CSDProviderCall provider](self, "provider"), v21 = objc_claimAutoreleasedReturnValue(), v22 = [v21 isFaceTimeProvider], v21, !v22))
    {
      v8 = self;
      v9 = 17;
      goto LABEL_48;
    }

LABEL_33:
    v8 = self;
    v9 = 6;
LABEL_48:
    [(CSDCall *)v8 setDisconnectedReason:v9];
    return;
  }

  v3 = [(CSDProviderCall *)self endedReason];
  if (v3 > 4)
  {
    if (v3 <= 102)
    {
      if (v3 == 5)
      {
        v30 = sub_100004778();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          v31 = [(CSDProviderCall *)self endedReason];
          *buf = 134217984;
          v42 = v31;
          _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Setting disconnected reason to declined elsewhere because ended reason is %ld", buf, 0xCu);
        }

        v8 = self;
        v9 = 3;
      }

      else
      {
        if (v3 != 102)
        {
          return;
        }

        v6 = sub_100004778();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
        {
          v7 = [(CSDProviderCall *)self endedReason];
          *buf = 134217984;
          v42 = v7;
          _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting disconnected reason to handed off because ended reason is %ld", buf, 0xCu);
        }

        v8 = self;
        v9 = 7;
      }

      goto LABEL_48;
    }

    if (v3 == 103)
    {
      v32 = sub_100004778();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [(CSDProviderCall *)self endedReason];
        *buf = 134217984;
        v42 = v33;
        _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Setting disconnected reason to user busy because ended reason is %ld", buf, 0xCu);
      }

      v8 = self;
      v9 = 15;
      goto LABEL_48;
    }

    if (v3 != 104)
    {
      return;
    }

    v17 = sub_100004778();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_32;
    }

    v18 = [(CSDProviderCall *)self endedReason];
    *buf = 134217984;
    v42 = v18;
    v19 = "Setting disconnected reason to remote hangup because ended reason is %ld";
    goto LABEL_31;
  }

  if (v3 > 2)
  {
    if (v3 != 3)
    {
      v15 = sub_100004778();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = [(CSDProviderCall *)self endedReason];
        *buf = 134217984;
        v42 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Setting disconnected reason to answered elsewhere because ended reason is %ld", buf, 0xCu);
      }

      v8 = self;
      v9 = 1;
      goto LABEL_48;
    }
  }

  else
  {
    if (v3 == 1)
    {
      v23 = [(CSDProviderCall *)self failureContext];

      if (v23)
      {
        v24 = [(CSDProviderCall *)self failureContext];
        v25 = [v24 failureReason];

        v26 = sub_100004778();
        v27 = os_log_type_enabled(v26, OS_LOG_TYPE_ERROR);
        switch(v25)
        {
          case 0uLL:
            if (v27)
            {
              sub_1004734C4(self);
            }

            [(CSDCall *)self setDisconnectedReason:14];
            v28 = self;
            v29 = 510;
            goto LABEL_57;
          case 1uLL:
            if (v27)
            {
              sub_10047343C(self);
            }

            v8 = self;
            v9 = 18;
            goto LABEL_48;
          case 2uLL:
            if (v27)
            {
              sub_1004733B4(self);
            }

            v8 = self;
            v9 = 19;
            goto LABEL_48;
          case 3uLL:
            if (v27)
            {
              sub_10047332C(self);
            }

            v8 = self;
            v9 = 22;
            goto LABEL_48;
          case 4uLL:
            if (v27)
            {
              sub_1004732A4(self);
            }

            v8 = self;
            v9 = 23;
            goto LABEL_48;
          case 5uLL:
            if (v27)
            {
              sub_100472EEC(self);
            }

            v8 = self;
            v9 = 24;
            goto LABEL_48;
          case 6uLL:
            if (v27)
            {
              sub_10047321C(self);
            }

            v8 = self;
            v9 = 16;
            goto LABEL_48;
          case 7uLL:
            if (v27)
            {
              sub_100473194(self);
            }

            v8 = self;
            v9 = 26;
            goto LABEL_48;
          case 8uLL:
            if (v27)
            {
              sub_10047310C(self);
            }

            v8 = self;
            v9 = 27;
            goto LABEL_48;
          case 9uLL:
            if (v27)
            {
              sub_100473084(self);
            }

            v8 = self;
            v9 = 28;
            goto LABEL_48;
          case 0xAuLL:
            if (v27)
            {
              sub_100472FFC(self);
            }

            v8 = self;
            v9 = 29;
            goto LABEL_48;
          case 0xBuLL:
            if (v27)
            {
              sub_100472F74(self);
            }

            v8 = self;
            v9 = 30;
            goto LABEL_48;
          case 0xCuLL:
            if (v27)
            {
              sub_100472F74(self);
            }

            v8 = self;
            v9 = 32;
            goto LABEL_48;
          case 0xDuLL:
            if (v27)
            {
              sub_100472EEC(self);
            }

            v8 = self;
            v9 = 33;
            goto LABEL_48;
          case 0xEuLL:
            if (v27)
            {
              sub_100472E64(self);
            }

            v8 = self;
            v9 = 35;
            goto LABEL_48;
          case 0xFuLL:
            if (v27)
            {
              sub_100472DDC(self);
            }

            v8 = self;
            v9 = 37;
            goto LABEL_48;
          case 0x10uLL:
            if (v27)
            {
              sub_100472CCC(self);
            }

            v8 = self;
            v9 = 38;
            goto LABEL_48;
          case 0x14uLL:
            if (v27)
            {
              sub_100472C44(self);
            }

            v8 = self;
            v9 = 42;
            goto LABEL_48;
          case 0x15uLL:
            if (v27)
            {
              sub_100472BBC(self);
            }

            v8 = self;
            v9 = 43;
            goto LABEL_48;
          case 0x1AuLL:
            if (v27)
            {
              sub_100472D54(self);
            }

            v8 = self;
            v9 = 53;
            goto LABEL_48;
          default:
            if (v27)
            {
              sub_1004734C4(self);
            }

            v8 = self;
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
      v28 = self;
      v29 = 511;
LABEL_57:
      [(CSDProviderCall *)v28 setProviderFailureReasonIfNecessary:v29];
      return;
    }

    if (v3 != 2)
    {
      return;
    }

    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(CSDProviderCall *)self endedReason];
      *buf = 134217984;
      v42 = v5;
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

    v20 = [(CSDProviderCall *)self endedReason];
    *buf = 134217984;
    v42 = v20;
    v19 = "Setting disconnected reason to remote hangup because call has started connecting and ended reason is %ld";
LABEL_31:
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, v19, buf, 0xCu);
    goto LABEL_32;
  }

  if ([(CSDProviderCall *)self isOutgoing])
  {
    v34 = [(CSDProviderCall *)self provider];
    v35 = [v34 isTelephonyProvider];

    v17 = sub_100004778();
    v36 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
    if (!v35)
    {
      if (v36)
      {
        v39 = [(CSDProviderCall *)self endedReason];
        *buf = 134217984;
        v42 = v39;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Setting disconnected reason to remote unavailable because outgoing call has not started connecting and ended reason is %ld", buf, 0xCu);
      }

      v8 = self;
      v9 = 5;
      goto LABEL_48;
    }

    if (!v36)
    {
      goto LABEL_32;
    }

    v37 = [(CSDProviderCall *)self endedReason];
    *buf = 134217984;
    v42 = v37;
    v19 = "Setting disconnected reason to remote hangup because outgoing call has not started connecting and ended reason is %ld but call is a telephony call";
    goto LABEL_31;
  }
}

- (BOOL)ignoresBluetoothDeviceUID
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 ignoresBluetoothDeviceUID];

  return v3;
}

- (int64_t)audioInterruptionOperationMode
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 audioInterruptionOperationMode];

  if ((v3 - 1) >= 3)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

- (unint64_t)initialLinkType
{
  v3 = [(CSDProviderCall *)self providerContext];
  v4 = [v3 objectForKeyedSubscript:@"CSDIDSInitialLinkTypeKey"];
  if (v4)
  {
    v5 = [(CSDProviderCall *)self providerContext];
    v6 = [v5 objectForKeyedSubscript:@"CSDIDSInitialLinkTypeKey"];
    v7 = [v6 unsignedIntegerValue];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (CSDProviderCall)initWithUniqueProxyIdentifier:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v33.receiver = self;
  v33.super_class = CSDProviderCall;
  v7 = [(CSDCall *)&v33 initWithUniqueProxyIdentifier:a3 configuration:v6];
  if (v7)
  {
    v7->_held = [v6 isHeld];
    v8 = +[CXCallUpdate callUpdateWithDefaultValuesSet];
    mergedCallUpdate = v7->_mergedCallUpdate;
    v7->_mergedCallUpdate = v8;

    v7->_outgoing = [v6 isOutgoing];
    v10 = [v6 providerIdentifier];
    v11 = [v10 copy];
    providerIdentifier = v7->_providerIdentifier;
    v7->_providerIdentifier = v11;

    v13 = [v6 providerSource];
    providerSource = v7->_providerSource;
    v7->_providerSource = v13;

    v15 = objc_alloc_init(TUUserConfiguration);
    userConfiguration = v7->_userConfiguration;
    v7->_userConfiguration = v15;

    v7->_prefersToPlayDuringWombat = 1;
    if ([v6 transmissionMode])
    {
      -[CXCallUpdate setTransmissionMode:](v7->_mergedCallUpdate, "setTransmissionMode:", [v6 transmissionMode]);
    }

    if ([v6 accessoryButtonEventsEnabled])
    {
      -[CXCallUpdate setAccessoryButtonEventsEnabled:](v7->_mergedCallUpdate, "setAccessoryButtonEventsEnabled:", [v6 accessoryButtonEventsEnabled]);
    }

    if (v7->_providerSource)
    {
      v17 = [CSDProviderDisplayMonitor alloc];
      v18 = [(CXAbstractProviderSource *)v7->_providerSource bundleIdentifier];
      v19 = [(CSDProviderDisplayMonitor *)v17 initWithBundleIdentifier:v18 pid:[(CXAbstractProviderSource *)v7->_providerSource processIdentifier]];
      providerDisplayMonitor = v7->_providerDisplayMonitor;
      v7->_providerDisplayMonitor = v19;
    }
  }

  v21 = [v6 featureFlags];
  [(CSDProviderCall *)v7 setFeatureFlags:v21];

  v22 = [(CSDProviderCall *)v7 featureFlags];
  if ([v22 nameAndPhotoEnabled])
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

    v22 = +[IMDaemonController sharedInstance];
    [v22 addListenerID:v24 capabilities:kFZListenerCapAccounts];
  }

LABEL_14:
  v27 = [(CSDProviderCall *)v7 featureFlags];
  v28 = [v27 sessionBasedMutingEnabled];

  if ((v28 & 1) == 0)
  {
    v29 = [v6 defaultNotificationCenter];
    v30 = v29;
    if (!v29)
    {
      v30 = +[NSNotificationCenter defaultCenter];
    }

    objc_storeStrong(&v7->_defaultNotificationCenter, v30);
    if (!v29)
    {
    }

    [(NSNotificationCenter *)v7->_defaultNotificationCenter addObserver:v7 selector:"systemMuteStatusChanged:" name:TUAudioSystemUplinkMuteStatusChangedNotification object:0];
  }

  return v7;
}

- (id)initIncomingWithBackingCallSource:(id)a3 UUID:(id)a4 update:(id)a5 originatingUIType:(int)a6
{
  v11 = a3;
  v12 = a5;
  v13 = a4;
  v14 = [CSDProviderCallConfiguration alloc];
  v15 = [v11 identifier];
  v16 = [(CSDProviderCallConfiguration *)v14 initWithProviderIdentifier:v15];

  [(CSDProviderCallConfiguration *)v16 setEndpointOnCurrentDevice:1];
  v17 = [v13 UUIDString];

  v18 = [(CSDProviderCall *)self initWithUniqueProxyIdentifier:v17 configuration:v16];
  if (v18)
  {
    objc_storeStrong(&v18->_backingCallSource, a3);
    v18->_video = [v12 hasVideo];
    [v12 hasSet];
    if ((v19 & 0x80) == 0)
    {
      v18->_sendingVideo = v18->_video;
    }

    v20 = [v12 sanitizedCallUpdate];
    [(CSDProviderCall *)v18 updateWithCallUpdate:v20];

    v18->_originatingUIType = a6;
  }

  return v18;
}

- (id)initOutgoingWithUniqueProxyIdentifier:(id)a3 backingCallSourceIdentifier:(id)a4 callUpdate:(id)a5 isVideo:(BOOL)a6 endpointOnCurrentDevice:(BOOL)a7 originatingUIType:(int)a8 configuration:(id)a9
{
  v14 = a4;
  v15 = a5;
  v16 = [(CSDProviderCall *)self initWithUniqueProxyIdentifier:a3 configuration:a9];
  v17 = v16;
  if (!v16)
  {
    goto LABEL_21;
  }

  v16->_outgoing = 1;
  v16->_video = a6;
  v16->_sendingVideo = a6;
  if (v16->_originatingUIType)
  {
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      originatingUIType = v17->_originatingUIType;
      v52 = 134218240;
      v53 = originatingUIType;
      v54 = 2048;
      v55 = a8;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "No need to reset originatingUIType from %lu to %lu", &v52, 0x16u);
    }
  }

  else
  {
    v16->_originatingUIType = a8;
  }

  v20 = [v15 remoteMember];
  v21 = [v20 handle];
  v22 = [v21 value];

  if (v22)
  {
    v23 = [CSDPauseDigitsQueue alloc];
    v24 = [v15 remoteMember];
    v25 = [v24 handle];
    v26 = [v25 value];
    v27 = [(CSDPauseDigitsQueue *)v23 initWithDestinationID:v26];
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
    v33 = [v15 remoteHandle];
    v34 = [v33 type];
    v35 = [(CSDPauseDigitsQueue *)v17->_pauseDigitsQueue baseDestinationID];
    v36 = [v15 remoteHandle];
    v37 = [v36 siriDisplayName];
    v38 = [v32 initWithType:v34 value:v35 siriDisplayName:v37];
    v39 = [v31 initWithHandle:v38];
    [v15 setRemoteMember:v39];
  }

  v40 = [v15 sanitizedCallUpdate];
  [(CSDProviderCall *)v17 updateWithCallUpdate:v40];

  if ([v14 isEqualToString:@"com.apple.telephonyutilities.callservicesd.FaceTimeProvider"])
  {
    v41 = [(CSDProviderCall *)v17 featureFlags];
    v42 = [v41 offrampEnabled];

    if (v42)
    {
      v43 = [v15 remoteParticipantHandles];
      if (v43 && (v44 = v43, [v15 remoteParticipantHandles], v45 = objc_claimAutoreleasedReturnValue(), v46 = objc_msgSend(v45, "count"), v45, v44, v46 >= 2))
      {
        v47 = [v15 remoteParticipantHandles];
        v48 = [CXHandle tuHandlesWithMembers:v47];
        [(CSDProviderCall *)v17 donateHandles:v48];
      }

      else
      {
        v49 = [v15 remoteHandle];

        if (!v49)
        {
          goto LABEL_19;
        }

        v47 = [v15 remoteHandle];
        v48 = [v47 tuHandle];
        v50 = [NSSet setWithObject:v48];
        [(CSDProviderCall *)v17 donateHandles:v50];
      }
    }
  }

LABEL_19:
  if ([v15 startCallMuted])
  {
    -[CSDProviderCall setUplinkMuted:userInitiated:](v17, "setUplinkMuted:userInitiated:", [v15 startCallMuted], 0);
  }

LABEL_21:

  return v17;
}

- (id)initOutgoingWithUpdate:(id)a3 callUUID:(id)a4 backingCallSource:(id)a5 isExpanseProvider:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v6)
  {
    v13 = 59;
  }

  else
  {
    v13 = 0;
  }

  if (!v6)
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "[WARN] initOutgoingWithUpdate unspecified originatingUIType!!", v19, 2u);
    }
  }

  v15 = [v11 UUIDString];
  v16 = [v12 identifier];
  v17 = -[CSDProviderCall initOutgoingWithUniqueProxyIdentifier:backingCallSourceIdentifier:callUpdate:isVideo:endpointOnCurrentDevice:originatingUIType:](self, "initOutgoingWithUniqueProxyIdentifier:backingCallSourceIdentifier:callUpdate:isVideo:endpointOnCurrentDevice:originatingUIType:", v15, v16, v10, [v10 hasVideo], 1, v13);

  if (v17)
  {
    *(v17 + 341) = v6;
    objc_storeStrong(v17 + 58, a5);
  }

  return v17;
}

- (id)initOutgoingWithDialRequest:(id)a3
{
  v4 = a3;
  v5 = [[CXCallUpdate alloc] initWithDialRequest:v4];
  v6 = [v4 uniqueProxyIdentifier];
  v7 = [v4 provider];
  v8 = [v7 identifier];
  v9 = [v4 isVideo];
  v10 = [v4 endpointOnCurrentDevice];
  v11 = [v4 originatingUIType];

  v12 = [(CSDProviderCall *)self initOutgoingWithUniqueProxyIdentifier:v6 backingCallSourceIdentifier:v8 callUpdate:v5 isVideo:v9 endpointOnCurrentDevice:v10 originatingUIType:v11];
  return v12;
}

- (id)initOutgoingWithDialRequest:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[CXCallUpdate alloc] initWithDialRequest:v7];
  v9 = [v7 uniqueProxyIdentifier];
  v10 = [v7 provider];
  v11 = [v10 identifier];
  v12 = [v7 isVideo];
  v13 = [v7 endpointOnCurrentDevice];
  v14 = [v7 originatingUIType];

  v15 = [(CSDProviderCall *)self initOutgoingWithUniqueProxyIdentifier:v9 backingCallSourceIdentifier:v11 callUpdate:v8 isVideo:v12 endpointOnCurrentDevice:v13 originatingUIType:v14 configuration:v6];
  return v15;
}

- (id)initOutgoingWithRequestedStartCallAction:(id)a3 backingCallSource:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [[CXCallUpdate alloc] initWithStartCallAction:v8];
  v10 = [v8 callUUID];
  v11 = [v10 UUIDString];
  v12 = [v7 identifier];
  v13 = [v8 isVideo];
  v14 = [v8 isRelay];

  v15 = [(CSDProviderCall *)self initOutgoingWithUniqueProxyIdentifier:v11 backingCallSourceIdentifier:v12 callUpdate:v9 isVideo:v13 endpointOnCurrentDevice:v14 ^ 1 originatingUIType:60];
  if (v15)
  {
    objc_storeStrong(v15 + 58, a4);
  }

  return v15;
}

- (id)initOutgoingWithJoinConversationRequest:(id)a3
{
  v4 = a3;
  v5 = [[CXCallUpdate alloc] initWithJoinConversationRequest:v4];
  v6 = [v4 UUID];
  v7 = [v6 UUIDString];
  v8 = -[CSDProviderCall initOutgoingWithUniqueProxyIdentifier:backingCallSourceIdentifier:callUpdate:isVideo:endpointOnCurrentDevice:originatingUIType:](self, "initOutgoingWithUniqueProxyIdentifier:backingCallSourceIdentifier:callUpdate:isVideo:endpointOnCurrentDevice:originatingUIType:", v7, @"com.apple.telephonyutilities.callservicesd.FaceTimeProvider", v5, 1, [v4 endpointOnCurrentDevice], objc_msgSend(v4, "originatingUIType"));

  if (v8)
  {
    *(v8 + 351) = [v4 isVideoEnabled];
    v9 = [v4 remoteMembers];
    if ([v9 count] == 1)
    {
      v10 = [v4 conversationLink];
      if (v10)
      {
        [*(v8 + 66) setConversation:1];
      }

      else
      {
        v11 = [v4 otherInvitedHandles];
        if ([v11 count])
        {
          [*(v8 + 66) setConversation:1];
        }

        else
        {
          v12 = [v4 provider];
          if ([v12 isDefaultProvider])
          {
            v13 = [v4 participantAssociation];
            [*(v8 + 66) setConversation:v13 != 0];
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

    v14 = [v4 provider];
    v15 = +[TUConversationProvider expanseProvider];
    *(v8 + 341) = [v14 isEqual:v15];
  }

  return v8;
}

- (CSDProviderCall)initWithHandoffContext:(id)a3 backingCallSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDProviderCall *)self init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_backingCallSource, a4);
    v10 = [v6 remoteHandle];
    [(CXCallUpdate *)v9->_mergedCallUpdate setRemoteHandle:v10];

    v9->_outgoing = [v6 isOutgoing];
    v11 = [v7 identifier];
    v12 = [v11 copy];
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

- (void)systemMuteStatusChanged:(id)a3
{
  v4 = [(CSDProviderCall *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000B58A8;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v4, block);
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

- (void)updateWithOverrideCallProperties:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[CSDProviderCall] updateWithOverrideCallProperties: %@", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = CSDProviderCall;
  [(CSDCall *)&v10 updateWithOverrideCallProperties:v4];
  [v4 hasSet];
  if ((v6 & 2) != 0)
  {
    v7 = [v4 isSharingScreen];
    self->_sharingScreen = v7;
    if ((v7 & 1) == 0)
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

- (void)updateWithCallUpdate:(id)a3 notifyDelegate:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 sanitizedCallUpdate];
  [(CSDCall *)self setTemporaryRequireInCallSounds:0];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000B5F9C;
  v10[3] = &unk_100619E58;
  v11 = v7;
  v12 = self;
  v13 = v6;
  v8 = v6;
  v9 = v7;
  [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v10];
  if (v4)
  {
    [(CSDCall *)self propertiesChanged];
  }
}

- (int)_switchFromFailureReasonToDisconnectedReason:(int64_t)a3
{
  if (a3 < 0x1B && ((0x7FFDFFFu >> a3) & 1) != 0)
  {
    v4 = dword_100579F70[a3];
  }

  else
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set disconnect reason to dial failed, failure reason: %ld", &v8, 0xCu);
    }

    v4 = 17;
  }

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = a3;
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
    v3 = [(CSDProviderCall *)&v10 callHistoryIdentifier];
  }

  else
  {
    v4 = [(CSDProviderCall *)self mergedCallUpdate];
    v5 = [v4 crossDeviceIdentifier];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v9.receiver = self;
      v9.super_class = CSDProviderCall;
      v7 = [(CSDProviderCall *)&v9 callHistoryIdentifier];
    }

    v3 = v7;
  }

  return v3;
}

- (id)handoffDynamicIdentifier
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 handoffContext];
  v4 = [v3 handoffIdentifier];

  return v4;
}

- (id)handoffActivityUserInfo
{
  v3 = [(CSDProviderCall *)self mergedCallUpdate];
  v4 = [v3 handoffContext];
  v5 = [v4 handoffActivityUserInfo];
  v6 = [v5 mutableCopy];

  v7 = [(CSDProviderCall *)self provider];
  v8 = [v7 identifier];
  [v6 setObject:v8 forKeyedSubscript:TUCallUserActivityProviderIdentifierKey];

  v9 = [v6 copy];

  return v9;
}

- (BOOL)prefersExclusiveAccessToCellularNetwork
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 prefersExclusiveAccessToCellularNetwork];

  return v3;
}

- (id)conversationID
{
  v2 = [(CSDProviderCall *)self mergedCallUpdate];
  v3 = [v2 conversationID];

  return v3;
}

- (LSApplicationRecord)applicationRecord
{
  v2 = [(CSDProviderCall *)self providerIdentifier];
  v3 = [LSApplicationRecord csd_applicationRecordForApplicationIdentifier:v2];

  return v3;
}

- (BOOL)hasStartedConnecting
{
  v2 = [(CSDProviderCall *)self dateStartedConnecting];
  v3 = v2 != 0;

  return v3;
}

- (BOOL)usesSystemMuting
{
  v2 = [(CSDProviderCall *)self provider];
  v3 = [v2 isSystemProvider];

  return v3;
}

- (void)setHeld:(BOOL)a3
{
  if (self->_held != a3)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000B6DF4;
    v6[3] = &unk_100619EA8;
    v6[4] = self;
    v7 = a3;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setOutgoing:(BOOL)a3
{
  if (self->_outgoing != a3)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000B6EA8;
    v6[3] = &unk_100619EA8;
    v6[4] = self;
    v7 = a3;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setSendingVideo:(BOOL)a3
{
  if (self->_sendingVideo != a3)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000B6F5C;
    v6[3] = &unk_100619EA8;
    v6[4] = self;
    v7 = a3;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setVideo:(BOOL)a3
{
  if (self->_video != a3)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1000B7010;
    v6[3] = &unk_100619EA8;
    v6[4] = self;
    v7 = a3;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setFailureContext:(id)a3
{
  v4 = a3;
  v5 = [(CSDProviderCall *)self failureContext];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_1000B70F4;
    v10 = &unk_100619D88;
    v11 = self;
    v12 = v4;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v7];
    [(CSDCall *)self propertiesChanged:v7];
  }
}

- (void)setCallGroupUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDProviderCall *)self mergedCallUpdate];
  v6 = [v5 participantGroupUUID];
  v7 = TUObjectsAreEqualOrNil();

  if ((v7 & 1) == 0)
  {
    v8 = _NSConcreteStackBlock;
    v9 = 3221225472;
    v10 = sub_1000B71EC;
    v11 = &unk_100619D88;
    v12 = self;
    v13 = v4;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v8];
    [(CSDCall *)self propertiesChanged:v8];
  }
}

- (void)setDateConnected:(id)a3
{
  v4.receiver = self;
  v4.super_class = CSDProviderCall;
  [(CSDCall *)&v4 setDateConnected:a3];
  [(CSDProviderCall *)self setFailureContext:0];
  [(CSDProviderCall *)self _sendSoftPauseDigitsIfNecessary];
}

- (void)setProviderSource:(id)a3
{
  v5 = a3;
  if (self->_providerSource != v5)
  {
    v10 = v5;
    objc_storeStrong(&self->_providerSource, a3);
    if (v10)
    {
      v6 = [CSDProviderDisplayMonitor alloc];
      v7 = [(CXAbstractProviderSource *)v10 bundleIdentifier];
      v8 = [(CSDProviderDisplayMonitor *)v6 initWithBundleIdentifier:v7 pid:[(CXAbstractProviderSource *)v10 processIdentifier]];
      providerDisplayMonitor = self->_providerDisplayMonitor;
      self->_providerDisplayMonitor = v8;
    }

    else
    {
      v7 = self->_providerDisplayMonitor;
      self->_providerDisplayMonitor = 0;
    }

    v5 = v10;
  }
}

- (void)setInjectingAudio:(BOOL)a3
{
  v3 = a3;
  if ([(CSDProviderCall *)self isInjectingAudio]!= a3)
  {
    self->_injectingAudio = v3;
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 67109120;
      v10 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "setting injecting audio to %d", &v9, 8u);
    }

    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(CSDProviderCall *)self isInjectingAudio];
      v9 = 67109378;
      v10 = v7;
      v11 = 2112;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Posting notification injecting audio changed: %d %@", &v9, 0x12u);
    }

    v8 = [(CSDProviderCall *)self notificationCenter];
    [v8 postNotificationName:@"CSDCallInjectingAudioChangedNotification" object:self];
  }
}

- (void)setBluetoothAudioFormat:(int64_t)a3
{
  v6.receiver = self;
  v6.super_class = CSDProviderCall;
  [(CSDProviderCall *)&v6 setBluetoothAudioFormat:?];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B78B0;
  v5[3] = &unk_100619D60;
  v5[4] = self;
  v5[5] = a3;
  [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
  [(CSDCall *)self propertiesChanged];
}

- (void)setMixesVoiceWithMedia:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = CSDProviderCall;
  [(CSDCall *)&v7 setMixesVoiceWithMedia:?];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B79A4;
  v5[3] = &unk_100619EA8;
  v5[4] = self;
  v6 = a3;
  [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
  [(CSDCall *)self propertiesChanged];
}

- (void)setMediaPlaybackOnExternalDevice:(BOOL)a3
{
  v7.receiver = self;
  v7.super_class = CSDProviderCall;
  [(CSDProviderCall *)&v7 setMediaPlaybackOnExternalDevice:?];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000B7A64;
  v5[3] = &unk_100619EA8;
  v5[4] = self;
  v6 = a3;
  [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
  [(CSDCall *)self propertiesChanged];
}

- (id)startCallActionWithDialRequest:(id)a3
{
  v4 = a3;
  v5 = [(CSDProviderCall *)self callCenter];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000B7D90;
  v23[3] = &unk_10061A040;
  v23[4] = self;
  v6 = [v5 anyCallPassesTest:v23];

  v7 = [(CSDProviderCall *)self mergedCallUpdate];
  v8 = [v7 remoteMember];
  if (v8)
  {
    v9 = [(CSDProviderCall *)self mergedCallUpdate];
    v10 = [v9 remoteMember];
    v11 = [v10 handle];
  }

  else
  {
    v11 = [[CXHandle alloc] initWithType:2];
  }

  v12 = [CXStartCallAction alloc];
  v13 = [NSUUID alloc];
  v14 = [(CSDProviderCall *)self uniqueProxyIdentifier];
  v15 = [v13 initWithUUIDString:v14];
  v16 = [v12 initWithCallUUID:v15 handle:v11];

  [v16 setVideo:{-[CSDProviderCall isVideo](self, "isVideo")}];
  [v16 setRelay:{-[CSDProviderCall isEndpointOnCurrentDevice](self, "isEndpointOnCurrentDevice") ^ 1}];
  v17 = [v4 contactIdentifier];
  [v16 setContactIdentifier:v17];

  [v16 setUpgrade:v6];
  [v16 setRetry:{objc_msgSend(v4, "isRedial")}];
  v18 = [v4 localSenderIdentityUUID];
  [v16 setLocalSenderIdentityUUID:v18];

  [v16 setShouldSuppressInCallUI:{objc_msgSend(v4, "shouldSuppressInCallUI")}];
  [v16 setLaunchInBackground:{objc_msgSend(v4, "launchInBackground")}];
  [v4 localLandscapeAspectRatio];
  [v16 setLocalLandscapeAspectRatio:?];
  [v4 localPortraitAspectRatio];
  [v16 setLocalPortraitAspectRatio:?];
  [v16 setStartCallMuted:{objc_msgSend(v4, "shouldStartWithUplinkMuted")}];
  v19 = [(CSDProviderCall *)self featureFlags];
  LODWORD(v18) = [v19 uplevelFTAEnabled];

  if (v18)
  {
    v20 = [v4 upgradedFromCallUUID];
    [v16 setIsUpgradeToVideo:v20 != 0];
  }

  if ([v4 ttyType] - 1 <= 2)
  {
    [v16 setTTYType:?];
  }

  v21 = [v4 dialType];
  if (v21 == 2)
  {
    [v16 setVoicemail:1];
  }

  else if (v21 == 1)
  {
    [v16 setEmergency:1];
  }

  return v16;
}

- (void)dialWithRequest:(id)a3 displayContext:(id)a4
{
  v6 = a3;
  v14.receiver = self;
  v14.super_class = CSDProviderCall;
  [(CSDCall *)&v14 dialWithRequest:v6 displayContext:a4];
  v7 = [(CSDProviderCall *)self providerCallDelegate];
  v8 = [v7 callSourceForDialRequest:v6];
  if (v8)
  {
    [(CSDProviderCall *)self setBackingCallSource:v8];
    v9 = [(CSDProviderCall *)self startCallActionWithDialRequest:v6];
    v10 = [v6 handle];
    v11 = [v10 siriDisplayName];
    v12 = [v9 handle];
    [v12 setSiriDisplayName:v11];

    [v7 performStartCallAction:v9 forCall:self];
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

- (void)joinConversationWithRequest:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v49 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CSDProviderCall joinConversationWithRequest: %@", buf, 0xCu);
  }

  v6 = [(CSDProviderCall *)self providerCallDelegate];
  v7 = [v6 callSourceForJoinConversationRequest:v4];
  [(CSDProviderCall *)self setBackingCallSource:v7];

  if ([(CSDCall *)self callStatus]== 4)
  {
    [(CSDProviderCall *)self setShouldAcceptDateConnectedProviderUpdates:1];
    v8 = +[NSDate date];
    [(CSDCall *)self setDateStartedConnecting:v8];
  }

  if (![v4 originatingUIType])
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      sub_100473638();
    }
  }

  [(CSDCall *)self setIsSendingAudio:1];
  -[CSDProviderCall setWantsStagingArea:](self, "setWantsStagingArea:", [v4 wantsStagingArea]);
  v10 = [v4 conversationLink];
  [(CSDCall *)self setJoinedFromLink:v10 != 0];

  v11 = [v4 audioSourceIdentifier];
  [(CSDProviderCall *)self setSourceIdentifier:v11];

  [(CSDProviderCall *)self setIsUnderlyingLinksConnected:1];
  -[CSDProviderCall setLaunchInBackground:](self, "setLaunchInBackground:", [v4 launchInBackground]);
  v12 = [v4 joinCallAction];
  v13 = [v4 conversationLink];
  if (v13 && (v14 = v13, v15 = [(CSDProviderCall *)self lockdownModeEnabled], v14, v15))
  {
    [(CSDCall *)self setDisconnectedReason:29];
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    v19 = [v4 conversationLink];
    if (v19 && (v20 = v19, v21 = [v4 isJoiningConversationWithLink], v20, (v21 & 1) == 0))
    {
      v47 = +[CSDFaceTimeMultiwayIDSService sharedInstance];
      v24 = [v47 callerID];
      v25 = [TUHandle normalizedHandleWithDestinationID:v24];
      v18 = [CXHandle handleWithTUHandle:v25];
      v26 = sub_100004778();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v49 = v18;
        _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "LMI: callerID is: %@", buf, 0xCu);
      }

      v27 = [v4 conversationLink];
      v17 = [v27 pseudonym];

      v28 = [v4 conversationLink];
      v16 = [v28 publicKey];
    }

    else
    {
      v22 = [v4 callerID];
      if (v22)
      {
        v23 = [v4 callerID];
        v18 = [CXHandle handleWithTUHandle:v23];
      }

      else
      {
        v18 = 0;
      }

      v17 = [v4 conversationLink];
      if (v17)
      {
        v29 = [v4 isJoiningConversationWithLink];

        if (v29)
        {
          v30 = [v4 conversationLink];
          v17 = [v30 pseudonym];

          v31 = [v4 conversationLink];
          v16 = [v31 publicKey];
        }

        else
        {
          v16 = 0;
          v17 = 0;
        }
      }

      else
      {
        v16 = 0;
      }
    }
  }

  [v12 setCallerID:v18];
  [v12 setPseudonym:v17];
  [v12 setPublicKey:v16];
  [v12 setScreenShareRequestType:0];
  v32 = [(CSDProviderCall *)self featureFlags];
  v33 = [v32 usesModernScreenSharingFromMessages];

  if (v33)
  {
    if ([v4 requestToShareScreen])
    {
      [v12 setScreenShareRequestType:1];
    }

    else if ([v4 requestToShareMyScreen])
    {
      [v12 setScreenShareRequestType:2];
      v34 = [v4 screenSharingRequestMetadata];
      v35 = [CXScreenSharingRequestMetadata metadataWithTUScreenSharingRequestMetadata:v34];
      [v12 setScreenSharingRequestMetadata:v35];
    }

    [v12 setShouldSendLegacyScreenSharingInvite:{objc_msgSend(v4, "shouldSendLegacyScreenSharingInvite")}];
  }

  v36 = [(CSDProviderCall *)self featureFlags];
  if ([v36 conversationHandoffEnabled])
  {
    v37 = [v4 participantAssociation];

    if (v37)
    {
      v38 = [v4 participantAssociation];
      v39 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v38 identifier]);
      [v12 setAssociationIdentifier:v39];

      v40 = [v4 participantAssociation];
      v41 = [v40 avcIdentifier];
      [v12 setAssociationAVCIdentifier:v41];

      [(CSDCall *)self setStartAsHandoff:1];
    }
  }

  else
  {
  }

  v42 = [v4 invitationPreferences];
  v43 = [v42 count];

  if (v43)
  {
    v44 = sub_100004778();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = [v4 invitationPreferences];
      *buf = 138412290;
      v49 = v45;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "Join request specifies invitation preferences: %@", buf, 0xCu);
    }

    v46 = [v4 notificationStylesByHandleType];
    [v12 setNotificationStylesByHandleType:v46];
  }

  [v6 performCallAction:v12 forCall:self];
  -[CSDCall setUplinkMuted:](self, "setUplinkMuted:", [v4 isUplinkMuted]);
  -[CSDProviderCall setIsSendingVideo:](self, "setIsSendingVideo:", [v4 isVideoEnabled]);
  [(CSDCall *)self propertiesChanged];
}

- (void)answerWithRequest:(id)a3
{
  v4 = a3;
  if (!-[CSDProviderCall isScreening](self, "isScreening") || ([v4 sendToScreening] & 1) != 0 || objc_msgSend(v4, "screeningType") || -[CSDCall callStatus](self, "callStatus") != 1)
  {
    v12.receiver = self;
    v12.super_class = CSDProviderCall;
    [(CSDProviderCall *)&v12 answerWithRequest:v4];
    v6 = +[NSDate date];
    [(CSDCall *)self setDateStartedConnecting:v6];

    if ([v4 pauseVideoToStart])
    {
      [(CSDProviderCall *)self setIsSendingVideo:0];
    }

    v7 = [CXAnswerCallAction alloc];
    v8 = [(CSDProviderCall *)self uniqueProxyIdentifierUUID];
    v5 = [v7 initWithCallUUID:v8];

    if ([v4 behavior] == 4 || objc_msgSend(v4, "downgradeToAudio"))
    {
      [(CSDProviderCall *)self setIsSendingVideo:0];
      if (![(CSDProviderCall *)self isConversation])
      {
        [(CSDProviderCall *)self setVideo:0];
      }

      [v5 setDowngradeToAudio:1];
    }

    if ([v4 pauseVideoToStart])
    {
      v9 = 1;
    }

    else
    {
      v9 = [(CSDProviderCall *)self isSendingVideo]^ 1;
    }

    [v5 setPauseVideoToStart:v9];
    [v4 localLandscapeAspectRatio];
    [v5 setLocalLandscapeAspectRatio:?];
    [v4 localPortraitAspectRatio];
    [v5 setLocalPortraitAspectRatio:?];
    v10 = ([v4 sendToScreening] & 1) != 0 || objc_msgSend(v4, "screeningType") != 0;
    [v5 setScreening:v10];
    v11 = [(CSDProviderCall *)self providerCallDelegate];
    [v11 performCallAction:v5 forCall:self];
  }

  else
  {
    [(CSDProviderCall *)self setScreening:0];
    v5 = [v4 sourceIdentifier];
    [(CSDProviderCall *)self setSourceIdentifier:v5];
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

- (void)groupWithOtherCall:(id)a3
{
  v10.receiver = self;
  v10.super_class = CSDProviderCall;
  v4 = a3;
  [(CSDProviderCall *)&v10 groupWithOtherCall:v4];
  v5 = [CXSetGroupCallAction alloc];
  v6 = [(CSDProviderCall *)self uniqueProxyIdentifierUUID:v10.receiver];
  v7 = [v4 uniqueProxyIdentifierUUID];

  v8 = [v5 initWithCallUUID:v6 callUUIDToGroupWith:v7];
  v9 = [(CSDProviderCall *)self providerCallDelegate];
  [v9 performCallAction:v8 forCall:self];
}

- (void)ungroup
{
  v7.receiver = self;
  v7.super_class = CSDProviderCall;
  [(CSDProviderCall *)&v7 ungroup];
  v3 = [CXSetGroupCallAction alloc];
  v4 = [(CSDProviderCall *)self uniqueProxyIdentifierUUID];
  v5 = [v3 initWithCallUUID:v4 callUUIDToGroupWith:0];

  v6 = [(CSDProviderCall *)self providerCallDelegate];
  [v6 performCallAction:v5 forCall:self];
}

- (void)setProviderFailureReasonIfNecessary:(int64_t)a3
{
  v5 = [(CSDProviderCall *)self failureContext];

  if (!v5)
  {
    v6 = objc_alloc_init(CXCallFailureContext);
    [(CSDProviderCall *)self setFailureContext:v6];
  }

  v7 = [(CSDProviderCall *)self failureContext];
  v8 = [v7 providerEndedReason];

  if (!v8)
  {
    v9 = [(CSDProviderCall *)self failureContext];
    [v9 setProviderEndedReason:a3];
  }
}

- (void)setScreenShareAttributes:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = CSDProviderCall;
  [(CSDCall *)&v17 setScreenShareAttributes:v4];
  v5 = [CSDCall cxScreenShareAttributesForCallAttributes:v4];
  v6 = [CXSetScreenShareAttributesCallAction alloc];
  v7 = [(CSDProviderCall *)self uniqueProxyIdentifierUUID];
  v8 = [v6 initWithCallUUID:v7 attributes:v5];

  v9 = [(CSDProviderCall *)self providerCallDelegate];
  [v9 performCallAction:v8 forCall:self];

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000B91F0;
  v14 = &unk_100619D88;
  v15 = self;
  v16 = v4;
  v10 = v4;
  [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v11];
  [(CSDCall *)self propertiesChanged:v11];
}

- (void)setTtyType:(int)a3
{
  v9.receiver = self;
  v9.super_class = CSDProviderCall;
  [(CSDProviderCall *)&v9 setTtyType:?];
  if ([(CSDProviderCall *)self ttyType]!= a3)
  {
    v5 = [CXSetTTYTypeCallAction alloc];
    v6 = [(CSDProviderCall *)self uniqueProxyIdentifierUUID];
    v7 = [v5 initWithCallUUID:v6 ttyType:sub_100122CC0(a3)];

    v8 = [(CSDProviderCall *)self providerCallDelegate];
    [v8 performCallAction:v7 forCall:self];
  }
}

- (void)sendHardPauseDigits
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [(CSDProviderCall *)self pauseDigitsQueue];
    v9 = 138412546;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "for call: %@ pauseDigitsQueue: %@", &v9, 0x16u);
  }

  v5 = [(CSDProviderCall *)self pauseDigitsQueue];
  v6 = [v5 nextPauseDigits];

  if (!v6)
  {
    v7 = sub_100004778();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v9) = 0;
    v8 = "[WARN] No next pause digits exist";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, v8, &v9, 2u);
    goto LABEL_11;
  }

  if (![v6 isHardPause])
  {
    v7 = sub_100004778();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    LOWORD(v9) = 0;
    v8 = "[WARN] Next pause digits are not hard pause";
    goto LABEL_10;
  }

  v7 = [v6 digits];
  [(CSDProviderCall *)self _sendDTMFDigits:v7 type:3];
LABEL_11:
}

- (void)playRemoteDTMFToneForKey:(unsigned __int8)a3
{
  v3 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = self;
    v11 = 1024;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "for call: %@ key: %d", &v9, 0x12u);
  }

  v6 = [(CSDProviderCall *)self pauseDigitsQueue];
  v7 = [v6 dequeueAllPauseDigits];

  LOWORD(v9) = v3;
  v8 = [NSString stringWithCharacters:&v9 length:1];
  [(CSDProviderCall *)self _sendDTMFDigits:v8 type:1];
}

- (void)setRemoteVideoPresentationSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v16.width = width;
    v16.height = height;
    v7 = NSStringFromSize(v16);
    v12 = 138412546;
    v13 = self;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "for call: %@ remoteVideoPresentationSize: %@", &v12, 0x16u);
  }

  v8 = [CXSetVideoPresentationSizeCallAction alloc];
  v9 = [(CSDProviderCall *)self uniqueProxyIdentifierUUID];
  v10 = [v8 initWithCallUUID:v9 videoPresentationSize:{width, height}];

  v11 = [(CSDProviderCall *)self providerCallDelegate];
  [v11 performCallAction:v10 forCall:self];
}

- (void)setRemoteVideoPresentationState:(int)a3
{
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = self;
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "for call: %@ remoteVideoPresentationState: %d", &v11, 0x12u);
  }

  if (a3 == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = a3 == 1;
  }

  v7 = [CXSetVideoPresentationStateCallAction alloc];
  v8 = [(CSDProviderCall *)self uniqueProxyIdentifierUUID];
  v9 = [v7 initWithCallUUID:v8 videoPresentationState:v6];

  v10 = [(CSDProviderCall *)self providerCallDelegate];
  [v10 performCallAction:v9 forCall:self];
}

- (void)dequeueNextPauseDigits
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Dequeueing next pause digits", v6, 2u);
  }

  v4 = [(CSDProviderCall *)self pauseDigitsQueue];
  v5 = [v4 dequeueNextPauseDigits];

  [(CSDProviderCall *)self _sendSoftPauseDigitsIfNecessary];
}

- (void)donateHandles:(id)a3
{
  v3 = a3;
  v6 = +[CSDFaceTimeMultiwayIDSService sharedInstance];
  v4 = [v3 allObjects];

  v5 = +[NSDate date];
  [v6 addFirewallEntriesForHandles:v4 lastSeenDate:v5];
}

- (id)tuScreenShareAttributesForScreenAttributes:(id)a3
{
  if (self->_screenShareAttributes)
  {
    v4 = a3;
    v5 = [v4 windowUUID];

    [(TUCallScreenShareAttributes *)self->_screenShareAttributes setWindowUUID:v5];
    v6 = self->_screenShareAttributes;
  }

  else
  {
    v7 = a3;
    v6 = objc_alloc_init(TUCallScreenShareAttributes);
    -[TUCallScreenShareAttributes setDeviceFamily:](v6, "setDeviceFamily:", [v7 deviceFamily]);
    -[TUCallScreenShareAttributes setDeviceHomeButtonType:](v6, "setDeviceHomeButtonType:", [v7 deviceHomeButtonType]);
    -[TUCallScreenShareAttributes setStyle:](v6, "setStyle:", [v7 style]);
    v8 = [v7 displayID];
    [(TUCallScreenShareAttributes *)v6 setDisplayID:v8];

    v9 = [v7 frameRate];
    [(TUCallScreenShareAttributes *)v6 setFrameRate:v9];

    -[TUCallScreenShareAttributes setWindowed:](v6, "setWindowed:", [v7 isWindowed]);
    v10 = [v7 windowUUID];
    [(TUCallScreenShareAttributes *)v6 setWindowUUID:v10];

    v11 = [v7 displayScale];
    [(TUCallScreenShareAttributes *)v6 setDisplayScale:v11];

    v12 = [v7 scaleFactor];
    [(TUCallScreenShareAttributes *)v6 setScaleFactor:v12];

    v13 = [v7 systemRootLayerTransform];
    [(TUCallScreenShareAttributes *)v6 setSystemRootLayerTransform:v13];

    v14 = [v7 originalResolution];

    v15 = [v14 copy];
    [(TUCallScreenShareAttributes *)v6 setOriginalResolution:v15];
  }

  return v6;
}

- (void)_sendDTMFDigits:(id)a3 type:(int64_t)a4
{
  v6 = a3;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412546;
    v13 = v6;
    v14 = 2048;
    v15 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Sending DTMF digits: %@ type: %ld", &v12, 0x16u);
  }

  v8 = [CXPlayDTMFCallAction alloc];
  v9 = [(CSDProviderCall *)self uniqueProxyIdentifierUUID];
  v10 = [v8 initWithCallUUID:v9 digits:v6 type:a4];

  v11 = [(CSDProviderCall *)self providerCallDelegate];
  [v11 performCallAction:v10 forCall:self];
}

- (void)_sendSoftPauseDigitsIfNecessary
{
  v3 = [(CSDProviderCall *)self pauseDigitsQueue];
  v4 = [v3 nextPauseDigits];

  if (-[CSDProviderCall isConnected](self, "isConnected") && v4 && ([v4 isHardPause] & 1) == 0)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v4 digits];
      v8 = 138412290;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found queued soft pause digits: %@", &v8, 0xCu);
    }

    v7 = [v4 digits];
    [(CSDProviderCall *)self _sendDTMFDigits:v7 type:2];
  }
}

- (int64_t)_switchToCXCallFailureReasonFromTUCallDisconnectedReason:(int)a3
{
  if (a3 < 0x36 && ((0x2A33EA7DCD0001uLL >> a3) & 1) != 0)
  {
    v4 = qword_100579FE0[a3];
  }

  else
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 134217984;
      v9 = a3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Set failure reason CXCallFailureReasonGenericError, disconnect reason: %ld", &v8, 0xCu);
    }

    v4 = 0;
  }

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = a3;
    v10 = 2048;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "disconnect reason: %ld, failureReason: %ld", &v8, 0x16u);
  }

  return v4;
}

- (void)pauseDigitsQueueChanged:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "for pauseDigitsQueue: %@", &v6, 0xCu);
  }

  [(CSDCall *)self propertiesChanged];
}

- (void)handleAudioSessionActivationStateChangedTo:(id)a3
{
  v6.receiver = self;
  v6.super_class = CSDProviderCall;
  v4 = a3;
  [(CSDCall *)&v6 handleAudioSessionActivationStateChangedTo:v4];
  v5 = [(CSDProviderCall *)self backingCallSource:v6.receiver];
  [v5 handleAudioSessionActivationStateChangedTo:v4];
}

- (id)activeRemoteParticipantForCallUpdate:(id)a3
{
  v4 = a3;
  v5 = [v4 activeRemoteParticipant];
  v6 = [v5 name];
  v7 = [v6 length];
  v8 = [v5 sandboxExtendedImageURL];
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      v10 = [(CSDProviderCall *)self imageURLForCXSandboxExtendedURL:v8];
    }

    else
    {
      v10 = 0;
    }

    v16 = [[TUMutableParticipant alloc] initWithName:v6];
    [v16 setImageURL:v10];
  }

  else
  {

    if (v9)
    {
      v11 = [v5 sandboxExtendedImageURL];
      v12 = [v11 sandboxExtensionHandle];

      if (v12 >= 1)
      {
        v13 = sub_100004778();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v14 = [v4 localizedCallerImageURL];
          v15 = [v14 URL];
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

- (id)imageURLForCXSandboxExtendedURL:(id)a3
{
  v3 = a3;
  v4 = v3;
  if (!v3)
  {
    v6 = 0;
    goto LABEL_36;
  }

  if ([v3 csd_isSymbolicLink])
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
  v8 = [v7 lastPathComponent];
  if (![v8 length])
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

  v9 = [v7 relativePath];
  v10 = [v9 isEqualToString:@"/stock"];

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

  v14 = v8;
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