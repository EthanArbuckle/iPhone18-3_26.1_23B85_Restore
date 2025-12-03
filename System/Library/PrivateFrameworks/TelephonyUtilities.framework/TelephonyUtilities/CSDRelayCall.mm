@interface CSDRelayCall
- (BOOL)canBeAnsweredWithAudioOrVideoRelayWithRequest:(id)request;
- (BOOL)canBeAnsweredWithRequest:(id)request;
- (BOOL)canOnlyBeAnsweredWithoutAudioOrVideoRelayWithRequest:(id)request;
- (BOOL)isConferenceActive;
- (BOOL)isSendingAudio;
- (BOOL)isUplinkMuted;
- (BOOL)shouldOwnMuteHandler;
- (BOOL)supportsDisplayingFaceTimeAudioCalls;
- (BOOL)supportsScreening;
- (CSDRelayCall)initWithRelayMessage:(id)message outgoing:(BOOL)outgoing;
- (CSDRelayCallDelegate)relayDelegate;
- (NSSet)remoteParticipantHandles;
- (TUCallProvider)localProvider;
- (id)audioCategory;
- (id)audioMode;
- (id)getRelayConferenceInterfaceBlock;
- (id)initOutgoingWithDialRequest:(id)request;
- (id)initOutgoingWithJoinConversationRequest:(id)request;
- (id)recordingAllowedError;
- (id)recordingDisabledError;
- (id)relayConferenceInterface;
- (id)tokens;
- (id)translationAllowedError;
- (id)translationDisabledError;
- (int)callRelaySupport;
- (int64_t)inputAudioPowerSpectrumToken;
- (int64_t)outputAudioPowerSpectrumToken;
- (int64_t)spatialAudioSourceIdentifier;
- (void)answerWithRequest:(id)request;
- (void)becomeEndpointForPullFromRemoteDevice;
- (void)dialWithRequest:(id)request displayContext:(id)context;
- (void)groupWithOtherCall:(id)call;
- (void)hold;
- (void)joinConversationWithRequest:(id)request;
- (void)sendHardPauseDigits;
- (void)setAnnounceProviderIdentifier:(id)identifier;
- (void)setBluetoothAudioFormat:(int64_t)format;
- (void)setCallGroupUUID:(id)d;
- (void)setCallStatus:(int)status;
- (void)setCallerNameFromNetwork:(id)network;
- (void)setConversationGroupUUID:(id)d;
- (void)setEmergency:(BOOL)emergency;
- (void)setFailureExpected:(BOOL)expected;
- (void)setHandle:(id)handle;
- (void)setHardPauseDigits:(id)digits;
- (void)setHardPauseDigitsState:(int)state;
- (void)setInjectingAudio:(BOOL)audio;
- (void)setLocallyConnected;
- (void)setLocallyConnecting;
- (void)setLocallyHasSentInvitation;
- (void)setLocallyHasStartedOutgoing;
- (void)setNeedsManualInCallSounds:(BOOL)sounds;
- (void)setRemoteUplinkMuted:(BOOL)muted;
- (void)setScreenShareAttributes:(id)attributes;
- (void)setSupportsEmergencyFallback:(BOOL)fallback;
- (void)setSupportsTTYWithVoice:(BOOL)voice;
- (void)setTtyType:(int)type;
- (void)startConferenceForAnsweredCallWithTransport:(id)transport remoteInviteDictionary:(id)dictionary;
- (void)startConferenceForDialedCallWithTransport:(id)transport remoteInviteDictionary:(id)dictionary;
- (void)startConferenceForPulledCallWithTransport:(id)transport remoteInviteDictionary:(id)dictionary;
- (void)stopConference;
- (void)ungroup;
- (void)unhold;
- (void)updateWithOverrideCallProperties:(id)properties;
- (void)updateWithRelayMessage:(id)message;
@end

@implementation CSDRelayCall

- (id)initOutgoingWithDialRequest:(id)request
{
  requestCopy = request;
  uniqueProxyIdentifier = [requestCopy uniqueProxyIdentifier];
  v6 = -[CSDRelayCall initWithUniqueProxyIdentifier:endpointOnCurrentDevice:](self, "initWithUniqueProxyIdentifier:endpointOnCurrentDevice:", uniqueProxyIdentifier, [requestCopy endpointOnCurrentDevice]);

  if (v6)
  {
    localSenderIdentityUUID = [requestCopy localSenderIdentityUUID];
    localSenderIdentityUUID = v6->_localSenderIdentityUUID;
    v6->_localSenderIdentityUUID = localSenderIdentityUUID;

    localSenderIdentityAccountUUID = [requestCopy localSenderIdentityAccountUUID];
    localSenderIdentityAccountUUID = v6->_localSenderIdentityAccountUUID;
    v6->_localSenderIdentityAccountUUID = localSenderIdentityAccountUUID;

    [requestCopy ttyType];
    v6->_ttyType = TUCallTTYTypeForTUDialRequestTTYType();
    featureFlags = [(CSDRelayCall *)v6 featureFlags];
    [(CSDCall *)v6 setIsCallRecordingEnabled:TUCallRecordingEnabled()];

    [(CSDCall *)v6 setupInputMuteHandlerWithFeatureFlags:0];
  }

  return v6;
}

- (id)initOutgoingWithJoinConversationRequest:(id)request
{
  requestCopy = request;
  uUID = [requestCopy UUID];
  uUIDString = [uUID UUIDString];
  v7 = -[CSDRelayCall initWithUniqueProxyIdentifier:endpointOnCurrentDevice:](self, "initWithUniqueProxyIdentifier:endpointOnCurrentDevice:", uUIDString, [requestCopy endpointOnCurrentDevice]);

  if (v7)
  {
    [(CSDRelayCall *)v7 setConversation:1];
    v8 = [NSMutableSet alloc];
    remoteMembers = [requestCopy remoteMembers];
    v10 = [v8 initWithCapacity:{objc_msgSend(remoteMembers, "count")}];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    remoteMembers2 = [requestCopy remoteMembers];
    v12 = [remoteMembers2 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v22;
      do
      {
        v15 = 0;
        do
        {
          if (*v22 != v14)
          {
            objc_enumerationMutation(remoteMembers2);
          }

          handles = [*(*(&v21 + 1) + 8 * v15) handles];
          anyObject = [handles anyObject];
          [(NSSet *)v10 addObject:anyObject];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [remoteMembers2 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    remoteParticipantHandles = v7->_remoteParticipantHandles;
    v7->_remoteParticipantHandles = v10;

    featureFlags = [(CSDRelayCall *)v7 featureFlags];
    [(CSDCall *)v7 setIsCallRecordingEnabled:TUCallRecordingEnabled()];

    [(CSDCall *)v7 setupInputMuteHandlerWithFeatureFlags:0];
  }

  return v7;
}

- (CSDRelayCall)initWithRelayMessage:(id)message outgoing:(BOOL)outgoing
{
  outgoingCopy = outgoing;
  messageCopy = message;
  uniqueProxyIdentifier = [messageCopy uniqueProxyIdentifier];
  v8 = [(CSDRelayCall *)self initWithUniqueProxyIdentifier:uniqueProxyIdentifier];

  if (v8)
  {
    tuHandle = [messageCopy tuHandle];
    handle = v8->_handle;
    v8->_handle = tuHandle;

    isoCountryCode = [messageCopy isoCountryCode];
    v12 = [isoCountryCode copy];
    isoCountryCode = v8->_isoCountryCode;
    v8->_isoCountryCode = v12;

    callerNameFromNetwork = [messageCopy callerNameFromNetwork];
    v15 = [callerNameFromNetwork copy];
    callerNameFromNetwork = v8->_callerNameFromNetwork;
    v8->_callerNameFromNetwork = v15;

    tuProvider = [messageCopy tuProvider];
    provider = v8->_provider;
    v8->_provider = tuProvider;

    v8->_failureExpected = [messageCopy isFailureExpected];
    v8->_supportsEmergencyFallback = [messageCopy supportsEmergencyFallback];
    v8->_video = [messageCopy isVideo];
    v8->_voicemail = [messageCopy isVoicemail];
    v8->_needsManualInCallSounds = [messageCopy needsManualInCallSounds];
    v8->_outgoing = outgoingCopy;
    if (outgoingCopy)
    {
      v19 = 3;
    }

    else
    {
      v19 = 4;
    }

    v8->_callStatus = v19;
    inviteData = [messageCopy inviteData];
    relayInviteDictionary = [inviteData relayInviteDictionary];
    v22 = [relayInviteDictionary copy];
    remoteInviteDictionary = v8->_remoteInviteDictionary;
    v8->_remoteInviteDictionary = v22;

    v8->_remoteUplinkMuted = [messageCopy isRemoteUplinkMuted];
    localSenderIdentityUUID = [messageCopy localSenderIdentityUUID];
    localSenderIdentityUUID = v8->_localSenderIdentityUUID;
    v8->_localSenderIdentityUUID = localSenderIdentityUUID;

    localSenderIdentityAccountUUID = [messageCopy localSenderIdentityAccountUUID];
    localSenderIdentityAccountUUID = v8->_localSenderIdentityAccountUUID;
    v8->_localSenderIdentityAccountUUID = localSenderIdentityAccountUUID;

    remoteParticipantTUHandles = [messageCopy remoteParticipantTUHandles];
    remoteParticipantHandles = v8->_remoteParticipantHandles;
    v8->_remoteParticipantHandles = remoteParticipantTUHandles;

    v8->_ttyType = [messageCopy ttyType];
    v8->_supportsTTYWithVoice = [messageCopy supportsTTYWithVoice];
    v8->_relayHostCanScreen = [messageCopy relayHostCanScreen];
    v8->_emergency = [messageCopy isEmergency];
    -[CSDCall setSupportsDTMFUpdates:](v8, "setSupportsDTMFUpdates:", [messageCopy supportsDTMFUpdates]);
    -[CSDRelayCall setConversation:](v8, "setConversation:", [messageCopy hasGroupUUIDString]);
    v30 = [NSUUID alloc];
    groupUUIDString = [messageCopy groupUUIDString];
    v32 = [v30 initWithUUIDString:groupUUIDString];
    [(CSDRelayCall *)v8 setCallGroupUUID:v32];

    sourceIdentifier = [messageCopy sourceIdentifier];
    [(CSDRelayCall *)v8 setSourceIdentifier:sourceIdentifier];

    -[CSDCall setSoundRegion:](v8, "setSoundRegion:", [messageCopy soundRegion]);
    callModel = [messageCopy callModel];
    [(CSDCall *)v8 setModel:callModel];

    -[CSDRelayCall setReceptionistCapable:](v8, "setReceptionistCapable:", [messageCopy isReceptionistCapable]);
    -[CSDCall setLocalUserInHomeCountry:](v8, "setLocalUserInHomeCountry:", [messageCopy isLocalUserInHomeCountry]);
    featureFlags = [(CSDRelayCall *)v8 featureFlags];
    [(CSDCall *)v8 setIsCallRecordingEnabled:TUCallRecordingEnabled()];

    [(CSDCall *)v8 setupInputMuteHandlerWithFeatureFlags:0];
  }

  return v8;
}

- (void)updateWithRelayMessage:(id)message
{
  messageCopy = message;
  if ([messageCopy hasProtoProvider])
  {
    tuProvider = [messageCopy tuProvider];
    [(CSDRelayCall *)self setProvider:tuProvider];
  }

  tuHandle = [messageCopy tuHandle];
  [(CSDRelayCall *)self setHandle:tuHandle];

  isoCountryCode = [messageCopy isoCountryCode];
  [(CSDRelayCall *)self setIsoCountryCode:isoCountryCode];

  callerNameFromNetwork = [messageCopy callerNameFromNetwork];
  [(CSDRelayCall *)self setCallerNameFromNetwork:callerNameFromNetwork];

  -[CSDRelayCall setVideo:](self, "setVideo:", [messageCopy isVideo]);
  -[CSDRelayCall setVoicemail:](self, "setVoicemail:", [messageCopy isVoicemail]);
  -[CSDRelayCall setNeedsManualInCallSounds:](self, "setNeedsManualInCallSounds:", [messageCopy needsManualInCallSounds]);
  -[CSDCall setSoundRegion:](self, "setSoundRegion:", [messageCopy soundRegion]);
  sourceIdentifier = [messageCopy sourceIdentifier];
  [(CSDRelayCall *)self setSourceIdentifier:sourceIdentifier];

  -[CSDRelayCall setEmergency:](self, "setEmergency:", [messageCopy isEmergency]);
  -[CSDRelayCall setFailureExpected:](self, "setFailureExpected:", [messageCopy isFailureExpected]);
  -[CSDRelayCall setSupportsEmergencyFallback:](self, "setSupportsEmergencyFallback:", [messageCopy supportsEmergencyFallback]);
  -[CSDRelayCall setSOS:](self, "setSOS:", [messageCopy isSOS]);
  -[CSDCall setSupportsDTMFUpdates:](self, "setSupportsDTMFUpdates:", [messageCopy supportsDTMFUpdates]);
  callModel = [messageCopy callModel];
  [(CSDCall *)self setModel:callModel];

  displayContext = [(CSDCall *)self displayContext];
  displayContext2 = [messageCopy displayContext];
  v12 = [displayContext displayContextByMergingWithDisplayContext:displayContext2];
  [(CSDCall *)self setDisplayContext:v12];

  -[CSDRelayCall setRemoteUplinkMuted:](self, "setRemoteUplinkMuted:", [messageCopy isRemoteUplinkMuted]);
  localSenderIdentityUUID = [messageCopy localSenderIdentityUUID];
  [(CSDRelayCall *)self setLocalSenderIdentityUUID:localSenderIdentityUUID];

  localSenderIdentityAccountUUID = [messageCopy localSenderIdentityAccountUUID];
  [(CSDRelayCall *)self setLocalSenderIdentityAccountUUID:localSenderIdentityAccountUUID];

  -[CSDRelayCall setTtyType:](self, "setTtyType:", [messageCopy ttyType]);
  -[CSDRelayCall setSupportsTTYWithVoice:](self, "setSupportsTTYWithVoice:", [messageCopy supportsTTYWithVoice]);
  -[CSDRelayCall setOriginatingUIType:](self, "setOriginatingUIType:", [messageCopy originatingUIType]);
  -[CSDRelayCall setConversation:](self, "setConversation:", [messageCopy hasGroupUUIDString]);
  -[CSDRelayCall setReceptionistCapable:](self, "setReceptionistCapable:", [messageCopy isReceptionistCapable]);
  if ([messageCopy hasGroupUUIDString])
  {
    v15 = [NSUUID alloc];
    groupUUIDString = [messageCopy groupUUIDString];
    v17 = [v15 initWithUUIDString:groupUUIDString];
    [(CSDRelayCall *)self setCallGroupUUID:v17];
  }
}

- (id)audioCategory
{
  if (qword_1006ACCD8 != -1)
  {
    sub_1004757F0();
  }

  v3 = qword_1006ACCD0;

  return v3;
}

- (id)audioMode
{
  if (qword_1006ACCE8 != -1)
  {
    sub_100475804();
  }

  v3 = qword_1006ACCE0;

  return v3;
}

- (int)callRelaySupport
{
  provider = [(CSDRelayCall *)self provider];
  isSystemProvider = [provider isSystemProvider];

  if (!isSystemProvider)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = CSDRelayCall;
  return [(CSDCall *)&v6 callRelaySupport];
}

- (BOOL)supportsScreening
{
  featureFlags = [(CSDRelayCall *)self featureFlags];
  if ([featureFlags LVMEverywhere])
  {
    relayHostCanScreen = [(CSDRelayCall *)self relayHostCanScreen];
  }

  else
  {
    relayHostCanScreen = 0;
  }

  return relayHostCanScreen;
}

- (id)recordingDisabledError
{
  featureFlags = [(CSDRelayCall *)self featureFlags];
  relayCallRecordingEnabled = [featureFlags relayCallRecordingEnabled];

  if (relayCallRecordingEnabled)
  {
    v8.receiver = self;
    v8.super_class = CSDRelayCall;
    recordingDisabledError = [(CSDCall *)&v8 recordingDisabledError];
  }

  else
  {
    v6 = [NSError alloc];
    recordingDisabledError = [v6 initWithDomain:TUStartRecordingErrorDomain code:9 userInfo:0];
  }

  return recordingDisabledError;
}

- (id)recordingAllowedError
{
  featureFlags = [(CSDRelayCall *)self featureFlags];
  relayCallRecordingEnabled = [featureFlags relayCallRecordingEnabled];

  if (relayCallRecordingEnabled)
  {
    v8.receiver = self;
    v8.super_class = CSDRelayCall;
    recordingAllowedError = [(CSDCall *)&v8 recordingAllowedError];
  }

  else
  {
    v6 = [NSError alloc];
    recordingAllowedError = [v6 initWithDomain:TUStartRecordingErrorDomain code:9 userInfo:0];
  }

  return recordingAllowedError;
}

- (id)translationAllowedError
{
  featureFlags = [(CSDRelayCall *)self featureFlags];
  relayCallTranslationEnabled = [featureFlags relayCallTranslationEnabled];

  if (relayCallTranslationEnabled)
  {
    v8.receiver = self;
    v8.super_class = CSDRelayCall;
    translationAllowedError = [(CSDCall *)&v8 translationAllowedError];
  }

  else
  {
    v6 = [NSError alloc];
    translationAllowedError = [v6 initWithDomain:TUTranslationErrorDomain code:8 userInfo:0];
  }

  return translationAllowedError;
}

- (id)translationDisabledError
{
  featureFlags = [(CSDRelayCall *)self featureFlags];
  relayCallTranslationEnabled = [featureFlags relayCallTranslationEnabled];

  if (relayCallTranslationEnabled)
  {
    v8.receiver = self;
    v8.super_class = CSDRelayCall;
    translationDisabledError = [(CSDCall *)&v8 translationDisabledError];
  }

  else
  {
    v6 = [NSError alloc];
    translationDisabledError = [v6 initWithDomain:TUTranslationErrorDomain code:8 userInfo:0];
  }

  return translationDisabledError;
}

- (BOOL)canBeAnsweredWithRequest:(id)request
{
  requestCopy = request;
  if ([(CSDRelayCall *)self canBeAnsweredWithAudioOrVideoRelayWithRequest:requestCopy]|| [(CSDRelayCall *)self canOnlyBeAnsweredWithoutAudioOrVideoRelayWithRequest:requestCopy])
  {
    supportsDisplayingFaceTimeAudioCalls = 1;
  }

  else if (-[CSDRelayCall isVideo](self, "isVideo") && [requestCopy behavior] == 4)
  {
    supportsDisplayingFaceTimeAudioCalls = [(CSDRelayCall *)self supportsDisplayingFaceTimeAudioCalls];
  }

  else
  {
    supportsDisplayingFaceTimeAudioCalls = 0;
  }

  return supportsDisplayingFaceTimeAudioCalls;
}

- (BOOL)canBeAnsweredWithAudioOrVideoRelayWithRequest:(id)request
{
  requestCopy = request;
  if ([(CSDRelayCall *)self hasRelaySupport:2])
  {
    v5 = ![(CSDRelayCall *)self canOnlyBeAnsweredWithoutAudioOrVideoRelayWithRequest:requestCopy];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)canOnlyBeAnsweredWithoutAudioOrVideoRelayWithRequest:(id)request
{
  if ([request wantsHoldMusic])
  {
    return 1;
  }

  return [(CSDRelayCall *)self cannotRelayAudioOrVideo];
}

- (TUCallProvider)localProvider
{
  relayDelegate = [(CSDRelayCall *)self relayDelegate];
  provider = [(CSDRelayCall *)self provider];
  identifier = [provider identifier];
  v6 = [relayDelegate localProviderWithIdentifier:identifier];

  return v6;
}

- (NSSet)remoteParticipantHandles
{
  v3 = self->_remoteParticipantHandles;
  v4 = v3;
  if (v3)
  {
    remoteParticipantHandles = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CSDRelayCall;
    remoteParticipantHandles = [(CSDRelayCall *)&v8 remoteParticipantHandles];
  }

  v6 = remoteParticipantHandles;

  return v6;
}

- (BOOL)supportsDisplayingFaceTimeAudioCalls
{
  v2 = +[CSDCallCapabilities sharedInstance];
  callCapabilitiesState = [v2 callCapabilitiesState];
  supportsDisplayingFaceTimeAudioCalls = [callCapabilitiesState supportsDisplayingFaceTimeAudioCalls];

  return supportsDisplayingFaceTimeAudioCalls;
}

- (void)setAnnounceProviderIdentifier:(id)identifier
{
  identifierCopy = identifier;
  announceProviderIdentifier = [(CSDRelayCall *)self announceProviderIdentifier];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100119FF0;
    v10 = &unk_100619D88;
    selfCopy = self;
    v12 = identifierCopy;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v7];
    [(CSDCall *)self propertiesChanged:v7];
  }
}

- (void)setCallStatus:(int)status
{
  if (self->_callStatus != status)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10011A0A0;
    v6[3] = &unk_100619EF8;
    v6[4] = self;
    statusCopy = status;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setFailureExpected:(BOOL)expected
{
  if (self->_failureExpected != expected)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10011A154;
    v6[3] = &unk_100619EA8;
    v6[4] = self;
    expectedCopy = expected;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setEmergency:(BOOL)emergency
{
  if (self->_emergency != emergency)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10011A208;
    v6[3] = &unk_100619EA8;
    v6[4] = self;
    emergencyCopy = emergency;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setSupportsEmergencyFallback:(BOOL)fallback
{
  if (self->_supportsEmergencyFallback != fallback)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10011A2BC;
    v6[3] = &unk_100619EA8;
    v6[4] = self;
    fallbackCopy = fallback;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setNeedsManualInCallSounds:(BOOL)sounds
{
  if (self->_needsManualInCallSounds != sounds)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10011A370;
    v6[3] = &unk_100619EA8;
    v6[4] = self;
    soundsCopy = sounds;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setRemoteUplinkMuted:(BOOL)muted
{
  if (self->_remoteUplinkMuted != muted)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10011A424;
    v6[3] = &unk_100619EA8;
    v6[4] = self;
    mutedCopy = muted;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setTtyType:(int)type
{
  if (self->_ttyType != type)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10011A4D8;
    v6[3] = &unk_100619EF8;
    v6[4] = self;
    typeCopy = type;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setSupportsTTYWithVoice:(BOOL)voice
{
  if (self->_supportsTTYWithVoice != voice)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10011A58C;
    v6[3] = &unk_100619EA8;
    v6[4] = self;
    voiceCopy = voice;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setBluetoothAudioFormat:(int64_t)format
{
  if (self->_bluetoothAudioFormat != format)
  {
    v6[8] = v3;
    v6[9] = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10011A63C;
    v6[3] = &unk_100619D60;
    v6[4] = self;
    v6[5] = format;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setHandle:(id)handle
{
  handleCopy = handle;
  handle = [(CSDRelayCall *)self handle];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10011A71C;
    v10 = &unk_100619D88;
    selfCopy = self;
    v12 = handleCopy;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v7];
    [(CSDCall *)self propertiesChanged:v7];
  }
}

- (void)setCallerNameFromNetwork:(id)network
{
  networkCopy = network;
  callerNameFromNetwork = [(CSDRelayCall *)self callerNameFromNetwork];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10011A7FC;
    v10 = &unk_100619D88;
    selfCopy = self;
    v12 = networkCopy;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v7];
    [(CSDCall *)self propertiesChanged:v7];
  }
}

- (void)setCallGroupUUID:(id)d
{
  dCopy = d;
  callGroupUUID = [(CSDRelayCall *)self callGroupUUID];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10011A8DC;
    v10 = &unk_100619D88;
    selfCopy = self;
    v12 = dCopy;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v7];
    [(CSDCall *)self propertiesChanged:v7];
  }
}

- (void)setConversationGroupUUID:(id)d
{
  dCopy = d;
  conversationGroupUUID = [(CSDRelayCall *)self conversationGroupUUID];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10011A9BC;
    v10 = &unk_100619D88;
    selfCopy = self;
    v12 = dCopy;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v7];
    [(CSDCall *)self propertiesChanged:v7];
  }
}

- (void)setHardPauseDigitsState:(int)state
{
  if ([(CSDRelayCall *)self hardPauseDigitsState]!= state)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10011AA68;
    v5[3] = &unk_100619EF8;
    stateCopy = state;
    v5[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setHardPauseDigits:(id)digits
{
  digitsCopy = digits;
  hardPauseDigits = [(CSDRelayCall *)self hardPauseDigits];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10011AB70;
    v10 = &unk_100619D88;
    v11 = digitsCopy;
    selfCopy = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v7];
    [(CSDCall *)self propertiesChanged:v7];
  }
}

- (void)groupWithOtherCall:(id)call
{
  callCopy = call;
  callGroupUUID = [(CSDRelayCall *)self callGroupUUID];

  if (callGroupUUID)
  {
    relayDelegate = sub_100004778();
    if (os_log_type_enabled(relayDelegate, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, relayDelegate, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to group call because it is already grouped: %@", &v10, 0xCu);
    }
  }

  else
  {
    callGroupUUID2 = [callCopy callGroupUUID];

    if (!callGroupUUID2)
    {
      v8 = +[NSUUID UUID];
      [callCopy setCallGroupUUID:v8];
    }

    callGroupUUID3 = [callCopy callGroupUUID];
    [(CSDRelayCall *)self setCallGroupUUID:callGroupUUID3];

    relayDelegate = [(CSDRelayCall *)self relayDelegate];
    [relayDelegate relayCall:self didGroupWithOtherCall:callCopy];
  }
}

- (void)ungroup
{
  callGroupUUID = [(CSDRelayCall *)self callGroupUUID];

  if (callGroupUUID)
  {
    [(CSDRelayCall *)self setCallGroupUUID:0];
    relayDelegate = [(CSDRelayCall *)self relayDelegate];
    [relayDelegate relayCallDidUngroup:self];
  }

  else
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to ungroup call because it isn't grouped: %@", buf, 0xCu);
    }
  }
}

- (BOOL)shouldOwnMuteHandler
{
  if ([(CSDRelayCall *)self isConferenceActive])
  {
    v6.receiver = self;
    v6.super_class = CSDRelayCall;
    return [(CSDCall *)&v6 shouldOwnMuteHandler];
  }

  else
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      uniqueProxyIdentifier = [(CSDRelayCall *)self uniqueProxyIdentifier];
      *buf = 138412290;
      v8 = uniqueProxyIdentifier;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Call with UPI %@ cannot handle mute control requests since it is a relay call without conference active", buf, 0xCu);
    }

    return 0;
  }
}

- (BOOL)isConferenceActive
{
  relayConferenceInterface = [(CSDRelayCall *)self relayConferenceInterface];
  uniqueProxyIdentifier = [(CSDRelayCall *)self uniqueProxyIdentifier];
  v5 = [relayConferenceInterface activeConferenceConnectionForIdentifier:uniqueProxyIdentifier];
  v6 = v5 != 0;

  return v6;
}

- (BOOL)isUplinkMuted
{
  featureFlags = [(CSDRelayCall *)self featureFlags];
  sessionBasedMutingEnabled = [featureFlags sessionBasedMutingEnabled];

  if (sessionBasedMutingEnabled)
  {
    v9.receiver = self;
    v9.super_class = CSDRelayCall;
    return [(CSDCall *)&v9 isUplinkMuted];
  }

  else
  {
    relayConferenceInterface = [(CSDRelayCall *)self relayConferenceInterface];
    uniqueProxyIdentifier = [(CSDRelayCall *)self uniqueProxyIdentifier];
    v8 = [relayConferenceInterface isMutedForIdentifier:uniqueProxyIdentifier];

    return v8;
  }
}

- (id)getRelayConferenceInterfaceBlock
{
  getRelayConferenceInterfaceBlock = self->_getRelayConferenceInterfaceBlock;
  if (!getRelayConferenceInterfaceBlock)
  {
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10011B0E0;
    v8[3] = &unk_10061BD68;
    objc_copyWeak(&v9, &location);
    v4 = objc_retainBlock(v8);
    v5 = self->_getRelayConferenceInterfaceBlock;
    self->_getRelayConferenceInterfaceBlock = v4;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    getRelayConferenceInterfaceBlock = self->_getRelayConferenceInterfaceBlock;
  }

  v6 = objc_retainBlock(getRelayConferenceInterfaceBlock);

  return v6;
}

- (id)relayConferenceInterface
{
  getRelayConferenceInterfaceBlock = [(CSDRelayCall *)self getRelayConferenceInterfaceBlock];
  v3 = getRelayConferenceInterfaceBlock[2]();

  return v3;
}

- (void)setScreenShareAttributes:(id)attributes
{
  attributesCopy = attributes;
  v12.receiver = self;
  v12.super_class = CSDRelayCall;
  [(CSDCall *)&v12 setScreenShareAttributes:attributesCopy];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_10011B394;
  v9 = &unk_100619D88;
  selfCopy = self;
  v11 = attributesCopy;
  v5 = attributesCopy;
  [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v6];
  [(CSDCall *)self propertiesChanged:v6];
}

- (void)setInjectingAudio:(BOOL)audio
{
  audioCopy = audio;
  if ([(CSDRelayCall *)self isInjectingAudio]!= audio)
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
      isInjectingAudio = [(CSDRelayCall *)self isInjectingAudio];
      v9 = 67109378;
      v10 = isInjectingAudio;
      v11 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Posting notification injecting audio changed: %d %@", &v9, 0x12u);
    }

    notificationCenter = [(CSDRelayCall *)self notificationCenter];
    [notificationCenter postNotificationName:@"CSDCallInjectingAudioChangedNotification" object:self];
  }
}

- (id)tokens
{
  v3 = +[CSDRelayConferenceInterface sharedInstance];
  uniqueProxyIdentifier = [(CSDRelayCall *)self uniqueProxyIdentifier];
  v5 = [v3 activeConferenceConnectionForIdentifier:uniqueProxyIdentifier];

  conference = [v5 conference];
  mediaTokens = [conference mediaTokens];

  return mediaTokens;
}

- (BOOL)isSendingAudio
{
  relayConferenceInterface = [(CSDRelayCall *)self relayConferenceInterface];
  uniqueProxyIdentifier = [(CSDRelayCall *)self uniqueProxyIdentifier];
  v5 = [relayConferenceInterface isSendingAudioForIdentifier:uniqueProxyIdentifier];

  return v5;
}

- (int64_t)inputAudioPowerSpectrumToken
{
  relayConferenceInterface = [(CSDRelayCall *)self relayConferenceInterface];
  uniqueProxyIdentifier = [(CSDRelayCall *)self uniqueProxyIdentifier];
  v5 = [relayConferenceInterface inputAudioPowerSpectrumTokenForIdentifier:uniqueProxyIdentifier];

  return v5;
}

- (int64_t)outputAudioPowerSpectrumToken
{
  relayConferenceInterface = [(CSDRelayCall *)self relayConferenceInterface];
  uniqueProxyIdentifier = [(CSDRelayCall *)self uniqueProxyIdentifier];
  v5 = [relayConferenceInterface outputAudioPowerSpectrumTokenForIdentifier:uniqueProxyIdentifier];

  return v5;
}

- (int64_t)spatialAudioSourceIdentifier
{
  relayConferenceInterface = [(CSDRelayCall *)self relayConferenceInterface];
  uniqueProxyIdentifier = [(CSDRelayCall *)self uniqueProxyIdentifier];
  v5 = [relayConferenceInterface spatialAudioSourceIdentifierForIdentifier:uniqueProxyIdentifier];

  return v5;
}

- (void)dialWithRequest:(id)request displayContext:(id)context
{
  v13.receiver = self;
  v13.super_class = CSDRelayCall;
  requestCopy = request;
  [(CSDCall *)&v13 dialWithRequest:requestCopy displayContext:context];
  handle = [requestCopy handle];
  [(CSDRelayCall *)self setHandle:handle];

  provider = [requestCopy provider];
  [(CSDRelayCall *)self setProvider:provider];

  localSenderIdentityUUID = [requestCopy localSenderIdentityUUID];
  [(CSDRelayCall *)self setLocalSenderIdentityUUID:localSenderIdentityUUID];

  localSenderIdentityAccountUUID = [requestCopy localSenderIdentityAccountUUID];
  [(CSDRelayCall *)self setLocalSenderIdentityAccountUUID:localSenderIdentityAccountUUID];

  [(CSDRelayCall *)self setCallStatus:3];
  [(CSDRelayCall *)self setOutgoing:1];
  -[CSDRelayCall setVoicemail:](self, "setVoicemail:", [requestCopy dialType] == 2);
  -[CSDRelayCall setEmergency:](self, "setEmergency:", [requestCopy dialType] == 1);
  -[CSDRelayCall setSOS:](self, "setSOS:", [requestCopy isSOS]);
  [requestCopy ttyType];
  [(CSDRelayCall *)self setTtyType:TUCallTTYTypeForTUDialRequestTTYType()];
  originatingUIType = [requestCopy originatingUIType];

  [(CSDRelayCall *)self setOriginatingUIType:originatingUIType];
  relayDelegate = [(CSDRelayCall *)self relayDelegate];
  [relayDelegate relayCallDidDial:self];

  [(CSDCall *)self propertiesChanged];
}

- (void)joinConversationWithRequest:(id)request
{
  requestCopy = request;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = requestCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CSDRelayCall joinConversationWithRequest: %@", &v9, 0xCu);
  }

  [(CSDRelayCall *)self setJoinConversationRequest:requestCopy];
  [(CSDRelayCall *)self setCallStatus:3];
  [(CSDRelayCall *)self setOutgoing:1];
  [(CSDRelayCall *)self setVoicemail:0];
  [(CSDRelayCall *)self setEmergency:0];
  [(CSDRelayCall *)self setSOS:0];
  v6 = objc_alloc_init(TUCallProviderManager);
  faceTimeProvider = [v6 faceTimeProvider];
  [(CSDRelayCall *)self setProvider:faceTimeProvider];

  -[CSDRelayCall setOriginatingUIType:](self, "setOriginatingUIType:", [requestCopy originatingUIType]);
  relayDelegate = [(CSDRelayCall *)self relayDelegate];
  [relayDelegate relayCallDidJoin:self];

  [(CSDCall *)self propertiesChanged];
}

- (void)answerWithRequest:(id)request
{
  requestCopy = request;
  if (([(CSDRelayCall *)self isConnecting]& 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = CSDRelayCall;
    [(CSDRelayCall *)&v7 answerWithRequest:requestCopy];
LABEL_10:
    relayDelegate = [(CSDRelayCall *)self relayDelegate];
    [relayDelegate relayCall:self didAnswerWithRequest:requestCopy];
LABEL_11:

    goto LABEL_12;
  }

  relayDelegate = [(CSDRelayCall *)self featureFlags];
  if (![relayDelegate LVMEverywhere] || (objc_msgSend(requestCopy, "sendToScreening") & 1) != 0)
  {
    goto LABEL_11;
  }

  screeningType = [requestCopy screeningType];

  if (!screeningType)
  {
    if ([(CSDRelayCall *)self isScreening]&& ![(CSDRelayCall *)self isHostedOnCurrentDevice])
    {
      [(CSDRelayCall *)self setAnswerFromScreening:1];
    }

    [(CSDCall *)self setScreening:0];
    goto LABEL_10;
  }

LABEL_12:
}

- (void)startConferenceForAnsweredCallWithTransport:(id)transport remoteInviteDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  transportCopy = transport;
  relayConferenceInterface = [(CSDRelayCall *)self relayConferenceInterface];
  uniqueProxyIdentifier = [(CSDRelayCall *)self uniqueProxyIdentifier];
  v10[4] = self;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011C294;
  v11[3] = &unk_10061A5D8;
  v11[4] = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10011C3DC;
  v10[3] = &unk_10061A5D8;
  [relayConferenceInterface startConferenceForIdentifier:uniqueProxyIdentifier usingTransport:transportCopy remoteInviteDictionary:dictionaryCopy didStartHandler:v11 didStopHandler:v10];
}

- (void)startConferenceForDialedCallWithTransport:(id)transport remoteInviteDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  transportCopy = transport;
  relayConferenceInterface = [(CSDRelayCall *)self relayConferenceInterface];
  uniqueProxyIdentifier = [(CSDRelayCall *)self uniqueProxyIdentifier];
  v10[4] = self;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011C5E8;
  v11[3] = &unk_10061A5D8;
  v11[4] = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10011C730;
  v10[3] = &unk_10061A5D8;
  [relayConferenceInterface startConferenceForIdentifier:uniqueProxyIdentifier usingTransport:transportCopy remoteInviteDictionary:dictionaryCopy didStartHandler:v11 didStopHandler:v10];
}

- (void)startConferenceForPulledCallWithTransport:(id)transport remoteInviteDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  transportCopy = transport;
  relayConferenceInterface = [(CSDRelayCall *)self relayConferenceInterface];
  uniqueProxyIdentifier = [(CSDRelayCall *)self uniqueProxyIdentifier];
  v10[4] = self;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10011C93C;
  v11[3] = &unk_10061A5D8;
  v11[4] = self;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10011CA50;
  v10[3] = &unk_10061A5D8;
  [relayConferenceInterface startConferenceForIdentifier:uniqueProxyIdentifier usingTransport:transportCopy remoteInviteDictionary:dictionaryCopy didStartHandler:v11 didStopHandler:v10];
}

- (void)stopConference
{
  relayConferenceInterface = [(CSDRelayCall *)self relayConferenceInterface];
  uniqueProxyIdentifier = [(CSDRelayCall *)self uniqueProxyIdentifier];
  [relayConferenceInterface stopConferenceForIdentifier:uniqueProxyIdentifier];
}

- (void)hold
{
  if ([(CSDRelayCall *)self status]== 2)
  {
    relayDelegate = sub_100004778();
    if (os_log_type_enabled(relayDelegate, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, relayDelegate, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to hold call because it is already held: %@", buf, 0xCu);
    }
  }

  else
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10011CCD0;
    v4[3] = &unk_100619D38;
    v4[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v4];
    relayDelegate = [(CSDRelayCall *)self relayDelegate];
    [relayDelegate relayCallDidHold:self];
  }
}

- (void)unhold
{
  if ([(CSDRelayCall *)self status]== 2)
  {
    v4[0] = _NSConcreteStackBlock;
    v4[1] = 3221225472;
    v4[2] = sub_10011CDFC;
    v4[3] = &unk_100619D38;
    v4[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v4];
    relayDelegate = [(CSDRelayCall *)self relayDelegate];
    [relayDelegate relayCallDidUnhold:self];
  }

  else
  {
    relayDelegate = sub_100004778();
    if (os_log_type_enabled(relayDelegate, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, relayDelegate, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to unhold call because it isn't held: %@", buf, 0xCu);
    }
  }
}

- (void)sendHardPauseDigits
{
  relayDelegate = [(CSDRelayCall *)self relayDelegate];
  [relayDelegate relayCallDidSendHardPauseDigits:self];
}

- (void)becomeEndpointForPullFromRemoteDevice
{
  [(CSDCall *)self setEndpointOnCurrentDevice:1];
  relayDelegate = [(CSDRelayCall *)self relayDelegate];
  [relayDelegate relayCallDidBecomeEndpointForPull:self];
}

- (void)updateWithOverrideCallProperties:(id)properties
{
  propertiesCopy = properties;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = propertiesCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[CSDRelayCall] updateWithOverrideCallProperties: %@", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = CSDRelayCall;
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

- (void)setLocallyHasStartedOutgoing
{
  if ([(CSDRelayCall *)self isOutgoing])
  {
    dateStartedOutgoing = [(CSDCall *)self dateStartedOutgoing];

    if (!dateStartedOutgoing)
    {
      v4 = +[NSDate date];
      [(CSDCall *)self setDateStartedOutgoing:v4];
    }
  }
}

- (void)setLocallyHasSentInvitation
{
  dateSentInvitation = [(CSDRelayCall *)self dateSentInvitation];

  if (!dateSentInvitation)
  {
    v4 = +[NSDate date];
    [(CSDCall *)self setDateSentInvitation:v4];
  }
}

- (void)setLocallyConnecting
{
  [(CSDRelayCall *)self setCallStatus:1];
  dateStartedConnecting = [(CSDRelayCall *)self dateStartedConnecting];

  if (!dateStartedConnecting)
  {
    v4 = +[NSDate date];
    [(CSDCall *)self setDateStartedConnecting:v4];
  }
}

- (void)setLocallyConnected
{
  [(CSDRelayCall *)self setLocallyConnecting];
  dateConnected = [(CSDRelayCall *)self dateConnected];

  if (!dateConnected)
  {
    v4 = +[NSDate date];
    [(CSDCall *)self setDateConnected:v4];
  }
}

- (CSDRelayCallDelegate)relayDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_relayDelegate);

  return WeakRetained;
}

@end