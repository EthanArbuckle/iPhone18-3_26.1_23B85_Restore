@interface CSDRelayCall
- (BOOL)canBeAnsweredWithAudioOrVideoRelayWithRequest:(id)a3;
- (BOOL)canBeAnsweredWithRequest:(id)a3;
- (BOOL)canOnlyBeAnsweredWithoutAudioOrVideoRelayWithRequest:(id)a3;
- (BOOL)isConferenceActive;
- (BOOL)isSendingAudio;
- (BOOL)isUplinkMuted;
- (BOOL)shouldOwnMuteHandler;
- (BOOL)supportsDisplayingFaceTimeAudioCalls;
- (BOOL)supportsScreening;
- (CSDRelayCall)initWithRelayMessage:(id)a3 outgoing:(BOOL)a4;
- (CSDRelayCallDelegate)relayDelegate;
- (NSSet)remoteParticipantHandles;
- (TUCallProvider)localProvider;
- (id)audioCategory;
- (id)audioMode;
- (id)getRelayConferenceInterfaceBlock;
- (id)initOutgoingWithDialRequest:(id)a3;
- (id)initOutgoingWithJoinConversationRequest:(id)a3;
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
- (void)answerWithRequest:(id)a3;
- (void)becomeEndpointForPullFromRemoteDevice;
- (void)dialWithRequest:(id)a3 displayContext:(id)a4;
- (void)groupWithOtherCall:(id)a3;
- (void)hold;
- (void)joinConversationWithRequest:(id)a3;
- (void)sendHardPauseDigits;
- (void)setAnnounceProviderIdentifier:(id)a3;
- (void)setBluetoothAudioFormat:(int64_t)a3;
- (void)setCallGroupUUID:(id)a3;
- (void)setCallStatus:(int)a3;
- (void)setCallerNameFromNetwork:(id)a3;
- (void)setConversationGroupUUID:(id)a3;
- (void)setEmergency:(BOOL)a3;
- (void)setFailureExpected:(BOOL)a3;
- (void)setHandle:(id)a3;
- (void)setHardPauseDigits:(id)a3;
- (void)setHardPauseDigitsState:(int)a3;
- (void)setInjectingAudio:(BOOL)a3;
- (void)setLocallyConnected;
- (void)setLocallyConnecting;
- (void)setLocallyHasSentInvitation;
- (void)setLocallyHasStartedOutgoing;
- (void)setNeedsManualInCallSounds:(BOOL)a3;
- (void)setRemoteUplinkMuted:(BOOL)a3;
- (void)setScreenShareAttributes:(id)a3;
- (void)setSupportsEmergencyFallback:(BOOL)a3;
- (void)setSupportsTTYWithVoice:(BOOL)a3;
- (void)setTtyType:(int)a3;
- (void)startConferenceForAnsweredCallWithTransport:(id)a3 remoteInviteDictionary:(id)a4;
- (void)startConferenceForDialedCallWithTransport:(id)a3 remoteInviteDictionary:(id)a4;
- (void)startConferenceForPulledCallWithTransport:(id)a3 remoteInviteDictionary:(id)a4;
- (void)stopConference;
- (void)ungroup;
- (void)unhold;
- (void)updateWithOverrideCallProperties:(id)a3;
- (void)updateWithRelayMessage:(id)a3;
@end

@implementation CSDRelayCall

- (id)initOutgoingWithDialRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 uniqueProxyIdentifier];
  v6 = -[CSDRelayCall initWithUniqueProxyIdentifier:endpointOnCurrentDevice:](self, "initWithUniqueProxyIdentifier:endpointOnCurrentDevice:", v5, [v4 endpointOnCurrentDevice]);

  if (v6)
  {
    v7 = [v4 localSenderIdentityUUID];
    localSenderIdentityUUID = v6->_localSenderIdentityUUID;
    v6->_localSenderIdentityUUID = v7;

    v9 = [v4 localSenderIdentityAccountUUID];
    localSenderIdentityAccountUUID = v6->_localSenderIdentityAccountUUID;
    v6->_localSenderIdentityAccountUUID = v9;

    [v4 ttyType];
    v6->_ttyType = TUCallTTYTypeForTUDialRequestTTYType();
    v11 = [(CSDRelayCall *)v6 featureFlags];
    [(CSDCall *)v6 setIsCallRecordingEnabled:TUCallRecordingEnabled()];

    [(CSDCall *)v6 setupInputMuteHandlerWithFeatureFlags:0];
  }

  return v6;
}

- (id)initOutgoingWithJoinConversationRequest:(id)a3
{
  v4 = a3;
  v5 = [v4 UUID];
  v6 = [v5 UUIDString];
  v7 = -[CSDRelayCall initWithUniqueProxyIdentifier:endpointOnCurrentDevice:](self, "initWithUniqueProxyIdentifier:endpointOnCurrentDevice:", v6, [v4 endpointOnCurrentDevice]);

  if (v7)
  {
    [(CSDRelayCall *)v7 setConversation:1];
    v8 = [NSMutableSet alloc];
    v9 = [v4 remoteMembers];
    v10 = [v8 initWithCapacity:{objc_msgSend(v9, "count")}];

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [v4 remoteMembers];
    v12 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v21 + 1) + 8 * v15) handles];
          v17 = [v16 anyObject];
          [(NSSet *)v10 addObject:v17];

          v15 = v15 + 1;
        }

        while (v13 != v15);
        v13 = [v11 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v13);
    }

    remoteParticipantHandles = v7->_remoteParticipantHandles;
    v7->_remoteParticipantHandles = v10;

    v19 = [(CSDRelayCall *)v7 featureFlags];
    [(CSDCall *)v7 setIsCallRecordingEnabled:TUCallRecordingEnabled()];

    [(CSDCall *)v7 setupInputMuteHandlerWithFeatureFlags:0];
  }

  return v7;
}

- (CSDRelayCall)initWithRelayMessage:(id)a3 outgoing:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [v6 uniqueProxyIdentifier];
  v8 = [(CSDRelayCall *)self initWithUniqueProxyIdentifier:v7];

  if (v8)
  {
    v9 = [v6 tuHandle];
    handle = v8->_handle;
    v8->_handle = v9;

    v11 = [v6 isoCountryCode];
    v12 = [v11 copy];
    isoCountryCode = v8->_isoCountryCode;
    v8->_isoCountryCode = v12;

    v14 = [v6 callerNameFromNetwork];
    v15 = [v14 copy];
    callerNameFromNetwork = v8->_callerNameFromNetwork;
    v8->_callerNameFromNetwork = v15;

    v17 = [v6 tuProvider];
    provider = v8->_provider;
    v8->_provider = v17;

    v8->_failureExpected = [v6 isFailureExpected];
    v8->_supportsEmergencyFallback = [v6 supportsEmergencyFallback];
    v8->_video = [v6 isVideo];
    v8->_voicemail = [v6 isVoicemail];
    v8->_needsManualInCallSounds = [v6 needsManualInCallSounds];
    v8->_outgoing = v4;
    if (v4)
    {
      v19 = 3;
    }

    else
    {
      v19 = 4;
    }

    v8->_callStatus = v19;
    v20 = [v6 inviteData];
    v21 = [v20 relayInviteDictionary];
    v22 = [v21 copy];
    remoteInviteDictionary = v8->_remoteInviteDictionary;
    v8->_remoteInviteDictionary = v22;

    v8->_remoteUplinkMuted = [v6 isRemoteUplinkMuted];
    v24 = [v6 localSenderIdentityUUID];
    localSenderIdentityUUID = v8->_localSenderIdentityUUID;
    v8->_localSenderIdentityUUID = v24;

    v26 = [v6 localSenderIdentityAccountUUID];
    localSenderIdentityAccountUUID = v8->_localSenderIdentityAccountUUID;
    v8->_localSenderIdentityAccountUUID = v26;

    v28 = [v6 remoteParticipantTUHandles];
    remoteParticipantHandles = v8->_remoteParticipantHandles;
    v8->_remoteParticipantHandles = v28;

    v8->_ttyType = [v6 ttyType];
    v8->_supportsTTYWithVoice = [v6 supportsTTYWithVoice];
    v8->_relayHostCanScreen = [v6 relayHostCanScreen];
    v8->_emergency = [v6 isEmergency];
    -[CSDCall setSupportsDTMFUpdates:](v8, "setSupportsDTMFUpdates:", [v6 supportsDTMFUpdates]);
    -[CSDRelayCall setConversation:](v8, "setConversation:", [v6 hasGroupUUIDString]);
    v30 = [NSUUID alloc];
    v31 = [v6 groupUUIDString];
    v32 = [v30 initWithUUIDString:v31];
    [(CSDRelayCall *)v8 setCallGroupUUID:v32];

    v33 = [v6 sourceIdentifier];
    [(CSDRelayCall *)v8 setSourceIdentifier:v33];

    -[CSDCall setSoundRegion:](v8, "setSoundRegion:", [v6 soundRegion]);
    v34 = [v6 callModel];
    [(CSDCall *)v8 setModel:v34];

    -[CSDRelayCall setReceptionistCapable:](v8, "setReceptionistCapable:", [v6 isReceptionistCapable]);
    -[CSDCall setLocalUserInHomeCountry:](v8, "setLocalUserInHomeCountry:", [v6 isLocalUserInHomeCountry]);
    v35 = [(CSDRelayCall *)v8 featureFlags];
    [(CSDCall *)v8 setIsCallRecordingEnabled:TUCallRecordingEnabled()];

    [(CSDCall *)v8 setupInputMuteHandlerWithFeatureFlags:0];
  }

  return v8;
}

- (void)updateWithRelayMessage:(id)a3
{
  v18 = a3;
  if ([v18 hasProtoProvider])
  {
    v4 = [v18 tuProvider];
    [(CSDRelayCall *)self setProvider:v4];
  }

  v5 = [v18 tuHandle];
  [(CSDRelayCall *)self setHandle:v5];

  v6 = [v18 isoCountryCode];
  [(CSDRelayCall *)self setIsoCountryCode:v6];

  v7 = [v18 callerNameFromNetwork];
  [(CSDRelayCall *)self setCallerNameFromNetwork:v7];

  -[CSDRelayCall setVideo:](self, "setVideo:", [v18 isVideo]);
  -[CSDRelayCall setVoicemail:](self, "setVoicemail:", [v18 isVoicemail]);
  -[CSDRelayCall setNeedsManualInCallSounds:](self, "setNeedsManualInCallSounds:", [v18 needsManualInCallSounds]);
  -[CSDCall setSoundRegion:](self, "setSoundRegion:", [v18 soundRegion]);
  v8 = [v18 sourceIdentifier];
  [(CSDRelayCall *)self setSourceIdentifier:v8];

  -[CSDRelayCall setEmergency:](self, "setEmergency:", [v18 isEmergency]);
  -[CSDRelayCall setFailureExpected:](self, "setFailureExpected:", [v18 isFailureExpected]);
  -[CSDRelayCall setSupportsEmergencyFallback:](self, "setSupportsEmergencyFallback:", [v18 supportsEmergencyFallback]);
  -[CSDRelayCall setSOS:](self, "setSOS:", [v18 isSOS]);
  -[CSDCall setSupportsDTMFUpdates:](self, "setSupportsDTMFUpdates:", [v18 supportsDTMFUpdates]);
  v9 = [v18 callModel];
  [(CSDCall *)self setModel:v9];

  v10 = [(CSDCall *)self displayContext];
  v11 = [v18 displayContext];
  v12 = [v10 displayContextByMergingWithDisplayContext:v11];
  [(CSDCall *)self setDisplayContext:v12];

  -[CSDRelayCall setRemoteUplinkMuted:](self, "setRemoteUplinkMuted:", [v18 isRemoteUplinkMuted]);
  v13 = [v18 localSenderIdentityUUID];
  [(CSDRelayCall *)self setLocalSenderIdentityUUID:v13];

  v14 = [v18 localSenderIdentityAccountUUID];
  [(CSDRelayCall *)self setLocalSenderIdentityAccountUUID:v14];

  -[CSDRelayCall setTtyType:](self, "setTtyType:", [v18 ttyType]);
  -[CSDRelayCall setSupportsTTYWithVoice:](self, "setSupportsTTYWithVoice:", [v18 supportsTTYWithVoice]);
  -[CSDRelayCall setOriginatingUIType:](self, "setOriginatingUIType:", [v18 originatingUIType]);
  -[CSDRelayCall setConversation:](self, "setConversation:", [v18 hasGroupUUIDString]);
  -[CSDRelayCall setReceptionistCapable:](self, "setReceptionistCapable:", [v18 isReceptionistCapable]);
  if ([v18 hasGroupUUIDString])
  {
    v15 = [NSUUID alloc];
    v16 = [v18 groupUUIDString];
    v17 = [v15 initWithUUIDString:v16];
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
  v3 = [(CSDRelayCall *)self provider];
  v4 = [v3 isSystemProvider];

  if (!v4)
  {
    return 0;
  }

  v6.receiver = self;
  v6.super_class = CSDRelayCall;
  return [(CSDCall *)&v6 callRelaySupport];
}

- (BOOL)supportsScreening
{
  v3 = [(CSDRelayCall *)self featureFlags];
  if ([v3 LVMEverywhere])
  {
    v4 = [(CSDRelayCall *)self relayHostCanScreen];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (id)recordingDisabledError
{
  v3 = [(CSDRelayCall *)self featureFlags];
  v4 = [v3 relayCallRecordingEnabled];

  if (v4)
  {
    v8.receiver = self;
    v8.super_class = CSDRelayCall;
    v5 = [(CSDCall *)&v8 recordingDisabledError];
  }

  else
  {
    v6 = [NSError alloc];
    v5 = [v6 initWithDomain:TUStartRecordingErrorDomain code:9 userInfo:0];
  }

  return v5;
}

- (id)recordingAllowedError
{
  v3 = [(CSDRelayCall *)self featureFlags];
  v4 = [v3 relayCallRecordingEnabled];

  if (v4)
  {
    v8.receiver = self;
    v8.super_class = CSDRelayCall;
    v5 = [(CSDCall *)&v8 recordingAllowedError];
  }

  else
  {
    v6 = [NSError alloc];
    v5 = [v6 initWithDomain:TUStartRecordingErrorDomain code:9 userInfo:0];
  }

  return v5;
}

- (id)translationAllowedError
{
  v3 = [(CSDRelayCall *)self featureFlags];
  v4 = [v3 relayCallTranslationEnabled];

  if (v4)
  {
    v8.receiver = self;
    v8.super_class = CSDRelayCall;
    v5 = [(CSDCall *)&v8 translationAllowedError];
  }

  else
  {
    v6 = [NSError alloc];
    v5 = [v6 initWithDomain:TUTranslationErrorDomain code:8 userInfo:0];
  }

  return v5;
}

- (id)translationDisabledError
{
  v3 = [(CSDRelayCall *)self featureFlags];
  v4 = [v3 relayCallTranslationEnabled];

  if (v4)
  {
    v8.receiver = self;
    v8.super_class = CSDRelayCall;
    v5 = [(CSDCall *)&v8 translationDisabledError];
  }

  else
  {
    v6 = [NSError alloc];
    v5 = [v6 initWithDomain:TUTranslationErrorDomain code:8 userInfo:0];
  }

  return v5;
}

- (BOOL)canBeAnsweredWithRequest:(id)a3
{
  v4 = a3;
  if ([(CSDRelayCall *)self canBeAnsweredWithAudioOrVideoRelayWithRequest:v4]|| [(CSDRelayCall *)self canOnlyBeAnsweredWithoutAudioOrVideoRelayWithRequest:v4])
  {
    v5 = 1;
  }

  else if (-[CSDRelayCall isVideo](self, "isVideo") && [v4 behavior] == 4)
  {
    v5 = [(CSDRelayCall *)self supportsDisplayingFaceTimeAudioCalls];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)canBeAnsweredWithAudioOrVideoRelayWithRequest:(id)a3
{
  v4 = a3;
  if ([(CSDRelayCall *)self hasRelaySupport:2])
  {
    v5 = ![(CSDRelayCall *)self canOnlyBeAnsweredWithoutAudioOrVideoRelayWithRequest:v4];
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (BOOL)canOnlyBeAnsweredWithoutAudioOrVideoRelayWithRequest:(id)a3
{
  if ([a3 wantsHoldMusic])
  {
    return 1;
  }

  return [(CSDRelayCall *)self cannotRelayAudioOrVideo];
}

- (TUCallProvider)localProvider
{
  v3 = [(CSDRelayCall *)self relayDelegate];
  v4 = [(CSDRelayCall *)self provider];
  v5 = [v4 identifier];
  v6 = [v3 localProviderWithIdentifier:v5];

  return v6;
}

- (NSSet)remoteParticipantHandles
{
  v3 = self->_remoteParticipantHandles;
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CSDRelayCall;
    v5 = [(CSDRelayCall *)&v8 remoteParticipantHandles];
  }

  v6 = v5;

  return v6;
}

- (BOOL)supportsDisplayingFaceTimeAudioCalls
{
  v2 = +[CSDCallCapabilities sharedInstance];
  v3 = [v2 callCapabilitiesState];
  v4 = [v3 supportsDisplayingFaceTimeAudioCalls];

  return v4;
}

- (void)setAnnounceProviderIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayCall *)self announceProviderIdentifier];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100119FF0;
    v10 = &unk_100619D88;
    v11 = self;
    v12 = v4;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v7];
    [(CSDCall *)self propertiesChanged:v7];
  }
}

- (void)setCallStatus:(int)a3
{
  if (self->_callStatus != a3)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10011A0A0;
    v6[3] = &unk_100619EF8;
    v6[4] = self;
    v7 = a3;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setFailureExpected:(BOOL)a3
{
  if (self->_failureExpected != a3)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10011A154;
    v6[3] = &unk_100619EA8;
    v6[4] = self;
    v7 = a3;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setEmergency:(BOOL)a3
{
  if (self->_emergency != a3)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10011A208;
    v6[3] = &unk_100619EA8;
    v6[4] = self;
    v7 = a3;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setSupportsEmergencyFallback:(BOOL)a3
{
  if (self->_supportsEmergencyFallback != a3)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10011A2BC;
    v6[3] = &unk_100619EA8;
    v6[4] = self;
    v7 = a3;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setNeedsManualInCallSounds:(BOOL)a3
{
  if (self->_needsManualInCallSounds != a3)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10011A370;
    v6[3] = &unk_100619EA8;
    v6[4] = self;
    v7 = a3;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setRemoteUplinkMuted:(BOOL)a3
{
  if (self->_remoteUplinkMuted != a3)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10011A424;
    v6[3] = &unk_100619EA8;
    v6[4] = self;
    v7 = a3;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setTtyType:(int)a3
{
  if (self->_ttyType != a3)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10011A4D8;
    v6[3] = &unk_100619EF8;
    v6[4] = self;
    v7 = a3;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setSupportsTTYWithVoice:(BOOL)a3
{
  if (self->_supportsTTYWithVoice != a3)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10011A58C;
    v6[3] = &unk_100619EA8;
    v6[4] = self;
    v7 = a3;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setBluetoothAudioFormat:(int64_t)a3
{
  if (self->_bluetoothAudioFormat != a3)
  {
    v6[8] = v3;
    v6[9] = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_10011A63C;
    v6[3] = &unk_100619D60;
    v6[4] = self;
    v6[5] = a3;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setHandle:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayCall *)self handle];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10011A71C;
    v10 = &unk_100619D88;
    v11 = self;
    v12 = v4;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v7];
    [(CSDCall *)self propertiesChanged:v7];
  }
}

- (void)setCallerNameFromNetwork:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayCall *)self callerNameFromNetwork];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10011A7FC;
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
  v5 = [(CSDRelayCall *)self callGroupUUID];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10011A8DC;
    v10 = &unk_100619D88;
    v11 = self;
    v12 = v4;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v7];
    [(CSDCall *)self propertiesChanged:v7];
  }
}

- (void)setConversationGroupUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayCall *)self conversationGroupUUID];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10011A9BC;
    v10 = &unk_100619D88;
    v11 = self;
    v12 = v4;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v7];
    [(CSDCall *)self propertiesChanged:v7];
  }
}

- (void)setHardPauseDigitsState:(int)a3
{
  if ([(CSDRelayCall *)self hardPauseDigitsState]!= a3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10011AA68;
    v5[3] = &unk_100619EF8;
    v6 = a3;
    v5[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setHardPauseDigits:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayCall *)self hardPauseDigits];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_10011AB70;
    v10 = &unk_100619D88;
    v11 = v4;
    v12 = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v7];
    [(CSDCall *)self propertiesChanged:v7];
  }
}

- (void)groupWithOtherCall:(id)a3
{
  v4 = a3;
  v5 = [(CSDRelayCall *)self callGroupUUID];

  if (v5)
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to group call because it is already grouped: %@", &v10, 0xCu);
    }
  }

  else
  {
    v7 = [v4 callGroupUUID];

    if (!v7)
    {
      v8 = +[NSUUID UUID];
      [v4 setCallGroupUUID:v8];
    }

    v9 = [v4 callGroupUUID];
    [(CSDRelayCall *)self setCallGroupUUID:v9];

    v6 = [(CSDRelayCall *)self relayDelegate];
    [v6 relayCall:self didGroupWithOtherCall:v4];
  }
}

- (void)ungroup
{
  v3 = [(CSDRelayCall *)self callGroupUUID];

  if (v3)
  {
    [(CSDRelayCall *)self setCallGroupUUID:0];
    v5 = [(CSDRelayCall *)self relayDelegate];
    [v5 relayCallDidUngroup:self];
  }

  else
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = self;
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
      v5 = [(CSDRelayCall *)self uniqueProxyIdentifier];
      *buf = 138412290;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Call with UPI %@ cannot handle mute control requests since it is a relay call without conference active", buf, 0xCu);
    }

    return 0;
  }
}

- (BOOL)isConferenceActive
{
  v3 = [(CSDRelayCall *)self relayConferenceInterface];
  v4 = [(CSDRelayCall *)self uniqueProxyIdentifier];
  v5 = [v3 activeConferenceConnectionForIdentifier:v4];
  v6 = v5 != 0;

  return v6;
}

- (BOOL)isUplinkMuted
{
  v3 = [(CSDRelayCall *)self featureFlags];
  v4 = [v3 sessionBasedMutingEnabled];

  if (v4)
  {
    v9.receiver = self;
    v9.super_class = CSDRelayCall;
    return [(CSDCall *)&v9 isUplinkMuted];
  }

  else
  {
    v6 = [(CSDRelayCall *)self relayConferenceInterface];
    v7 = [(CSDRelayCall *)self uniqueProxyIdentifier];
    v8 = [v6 isMutedForIdentifier:v7];

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
  v2 = [(CSDRelayCall *)self getRelayConferenceInterfaceBlock];
  v3 = v2[2]();

  return v3;
}

- (void)setScreenShareAttributes:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CSDRelayCall;
  [(CSDCall *)&v12 setScreenShareAttributes:v4];
  v6 = _NSConcreteStackBlock;
  v7 = 3221225472;
  v8 = sub_10011B394;
  v9 = &unk_100619D88;
  v10 = self;
  v11 = v4;
  v5 = v4;
  [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v6];
  [(CSDCall *)self propertiesChanged:v6];
}

- (void)setInjectingAudio:(BOOL)a3
{
  v3 = a3;
  if ([(CSDRelayCall *)self isInjectingAudio]!= a3)
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
      v7 = [(CSDRelayCall *)self isInjectingAudio];
      v9 = 67109378;
      v10 = v7;
      v11 = 2112;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Posting notification injecting audio changed: %d %@", &v9, 0x12u);
    }

    v8 = [(CSDRelayCall *)self notificationCenter];
    [v8 postNotificationName:@"CSDCallInjectingAudioChangedNotification" object:self];
  }
}

- (id)tokens
{
  v3 = +[CSDRelayConferenceInterface sharedInstance];
  v4 = [(CSDRelayCall *)self uniqueProxyIdentifier];
  v5 = [v3 activeConferenceConnectionForIdentifier:v4];

  v6 = [v5 conference];
  v7 = [v6 mediaTokens];

  return v7;
}

- (BOOL)isSendingAudio
{
  v3 = [(CSDRelayCall *)self relayConferenceInterface];
  v4 = [(CSDRelayCall *)self uniqueProxyIdentifier];
  v5 = [v3 isSendingAudioForIdentifier:v4];

  return v5;
}

- (int64_t)inputAudioPowerSpectrumToken
{
  v3 = [(CSDRelayCall *)self relayConferenceInterface];
  v4 = [(CSDRelayCall *)self uniqueProxyIdentifier];
  v5 = [v3 inputAudioPowerSpectrumTokenForIdentifier:v4];

  return v5;
}

- (int64_t)outputAudioPowerSpectrumToken
{
  v3 = [(CSDRelayCall *)self relayConferenceInterface];
  v4 = [(CSDRelayCall *)self uniqueProxyIdentifier];
  v5 = [v3 outputAudioPowerSpectrumTokenForIdentifier:v4];

  return v5;
}

- (int64_t)spatialAudioSourceIdentifier
{
  v3 = [(CSDRelayCall *)self relayConferenceInterface];
  v4 = [(CSDRelayCall *)self uniqueProxyIdentifier];
  v5 = [v3 spatialAudioSourceIdentifierForIdentifier:v4];

  return v5;
}

- (void)dialWithRequest:(id)a3 displayContext:(id)a4
{
  v13.receiver = self;
  v13.super_class = CSDRelayCall;
  v6 = a3;
  [(CSDCall *)&v13 dialWithRequest:v6 displayContext:a4];
  v7 = [v6 handle];
  [(CSDRelayCall *)self setHandle:v7];

  v8 = [v6 provider];
  [(CSDRelayCall *)self setProvider:v8];

  v9 = [v6 localSenderIdentityUUID];
  [(CSDRelayCall *)self setLocalSenderIdentityUUID:v9];

  v10 = [v6 localSenderIdentityAccountUUID];
  [(CSDRelayCall *)self setLocalSenderIdentityAccountUUID:v10];

  [(CSDRelayCall *)self setCallStatus:3];
  [(CSDRelayCall *)self setOutgoing:1];
  -[CSDRelayCall setVoicemail:](self, "setVoicemail:", [v6 dialType] == 2);
  -[CSDRelayCall setEmergency:](self, "setEmergency:", [v6 dialType] == 1);
  -[CSDRelayCall setSOS:](self, "setSOS:", [v6 isSOS]);
  [v6 ttyType];
  [(CSDRelayCall *)self setTtyType:TUCallTTYTypeForTUDialRequestTTYType()];
  v11 = [v6 originatingUIType];

  [(CSDRelayCall *)self setOriginatingUIType:v11];
  v12 = [(CSDRelayCall *)self relayDelegate];
  [v12 relayCallDidDial:self];

  [(CSDCall *)self propertiesChanged];
}

- (void)joinConversationWithRequest:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "CSDRelayCall joinConversationWithRequest: %@", &v9, 0xCu);
  }

  [(CSDRelayCall *)self setJoinConversationRequest:v4];
  [(CSDRelayCall *)self setCallStatus:3];
  [(CSDRelayCall *)self setOutgoing:1];
  [(CSDRelayCall *)self setVoicemail:0];
  [(CSDRelayCall *)self setEmergency:0];
  [(CSDRelayCall *)self setSOS:0];
  v6 = objc_alloc_init(TUCallProviderManager);
  v7 = [v6 faceTimeProvider];
  [(CSDRelayCall *)self setProvider:v7];

  -[CSDRelayCall setOriginatingUIType:](self, "setOriginatingUIType:", [v4 originatingUIType]);
  v8 = [(CSDRelayCall *)self relayDelegate];
  [v8 relayCallDidJoin:self];

  [(CSDCall *)self propertiesChanged];
}

- (void)answerWithRequest:(id)a3
{
  v4 = a3;
  if (([(CSDRelayCall *)self isConnecting]& 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = CSDRelayCall;
    [(CSDRelayCall *)&v7 answerWithRequest:v4];
LABEL_10:
    v5 = [(CSDRelayCall *)self relayDelegate];
    [v5 relayCall:self didAnswerWithRequest:v4];
LABEL_11:

    goto LABEL_12;
  }

  v5 = [(CSDRelayCall *)self featureFlags];
  if (![v5 LVMEverywhere] || (objc_msgSend(v4, "sendToScreening") & 1) != 0)
  {
    goto LABEL_11;
  }

  v6 = [v4 screeningType];

  if (!v6)
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

- (void)startConferenceForAnsweredCallWithTransport:(id)a3 remoteInviteDictionary:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDRelayCall *)self relayConferenceInterface];
  v9 = [(CSDRelayCall *)self uniqueProxyIdentifier];
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
  [v8 startConferenceForIdentifier:v9 usingTransport:v7 remoteInviteDictionary:v6 didStartHandler:v11 didStopHandler:v10];
}

- (void)startConferenceForDialedCallWithTransport:(id)a3 remoteInviteDictionary:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDRelayCall *)self relayConferenceInterface];
  v9 = [(CSDRelayCall *)self uniqueProxyIdentifier];
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
  [v8 startConferenceForIdentifier:v9 usingTransport:v7 remoteInviteDictionary:v6 didStartHandler:v11 didStopHandler:v10];
}

- (void)startConferenceForPulledCallWithTransport:(id)a3 remoteInviteDictionary:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDRelayCall *)self relayConferenceInterface];
  v9 = [(CSDRelayCall *)self uniqueProxyIdentifier];
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
  [v8 startConferenceForIdentifier:v9 usingTransport:v7 remoteInviteDictionary:v6 didStartHandler:v11 didStopHandler:v10];
}

- (void)stopConference
{
  v4 = [(CSDRelayCall *)self relayConferenceInterface];
  v3 = [(CSDRelayCall *)self uniqueProxyIdentifier];
  [v4 stopConferenceForIdentifier:v3];
}

- (void)hold
{
  if ([(CSDRelayCall *)self status]== 2)
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v6 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to hold call because it is already held: %@", buf, 0xCu);
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
    v3 = [(CSDRelayCall *)self relayDelegate];
    [v3 relayCallDidHold:self];
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
    v3 = [(CSDRelayCall *)self relayDelegate];
    [v3 relayCallDidUnhold:self];
  }

  else
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v6 = self;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring request to unhold call because it isn't held: %@", buf, 0xCu);
    }
  }
}

- (void)sendHardPauseDigits
{
  v3 = [(CSDRelayCall *)self relayDelegate];
  [v3 relayCallDidSendHardPauseDigits:self];
}

- (void)becomeEndpointForPullFromRemoteDevice
{
  [(CSDCall *)self setEndpointOnCurrentDevice:1];
  v3 = [(CSDRelayCall *)self relayDelegate];
  [v3 relayCallDidBecomeEndpointForPull:self];
}

- (void)updateWithOverrideCallProperties:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[CSDRelayCall] updateWithOverrideCallProperties: %@", buf, 0xCu);
  }

  v10.receiver = self;
  v10.super_class = CSDRelayCall;
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

- (void)setLocallyHasStartedOutgoing
{
  if ([(CSDRelayCall *)self isOutgoing])
  {
    v3 = [(CSDCall *)self dateStartedOutgoing];

    if (!v3)
    {
      v4 = +[NSDate date];
      [(CSDCall *)self setDateStartedOutgoing:v4];
    }
  }
}

- (void)setLocallyHasSentInvitation
{
  v3 = [(CSDRelayCall *)self dateSentInvitation];

  if (!v3)
  {
    v4 = +[NSDate date];
    [(CSDCall *)self setDateSentInvitation:v4];
  }
}

- (void)setLocallyConnecting
{
  [(CSDRelayCall *)self setCallStatus:1];
  v3 = [(CSDRelayCall *)self dateStartedConnecting];

  if (!v3)
  {
    v4 = +[NSDate date];
    [(CSDCall *)self setDateStartedConnecting:v4];
  }
}

- (void)setLocallyConnected
{
  [(CSDRelayCall *)self setLocallyConnecting];
  v3 = [(CSDRelayCall *)self dateConnected];

  if (!v3)
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