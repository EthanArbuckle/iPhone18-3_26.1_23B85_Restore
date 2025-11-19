@interface CSDMockCall
+ (id)mockCall;
+ (id)mockCallFromBlock:(id)a3;
+ (id)mockCallWithNotificationCenter:(id)a3 fromBlock:(id)a4;
- (TUCallDisplayContext)displayContext;
- (void)answerWithRequest:(id)a3;
- (void)dialWithRequest:(id)a3 displayContext:(id)a4;
- (void)setMockCallStatus:(int)a3;
- (void)updateWithCall:(id)a3;
@end

@implementation CSDMockCall

+ (id)mockCall
{
  v3 = +[NSNotificationCenter defaultCenter];
  v4 = [a1 mockCallWithNotificationCenter:v3 fromBlock:0];

  return v4;
}

+ (id)mockCallFromBlock:(id)a3
{
  v4 = a3;
  v5 = +[NSNotificationCenter defaultCenter];
  v6 = [a1 mockCallWithNotificationCenter:v5 fromBlock:v4];

  return v6;
}

+ (id)mockCallWithNotificationCenter:(id)a3 fromBlock:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [[a1 alloc] initWithNotificationCenter:v7];

  if (v6)
  {
    v6[2](v6, v8);
  }

  return v8;
}

- (void)updateWithCall:(id)a3
{
  v18.receiver = self;
  v18.super_class = CSDMockCall;
  v4 = a3;
  [(CSDMockCall *)&v18 updateWithCall:v4];
  v5 = [v4 provider];
  [(CSDMockCall *)self setMockProvider:v5];

  v6 = [v4 handle];
  [(CSDMockCall *)self setMockHandle:v6];

  -[CSDMockCall setMockCallStatus:](self, "setMockCallStatus:", [v4 callStatus]);
  -[CSDCall setTransitionStatus:](self, "setTransitionStatus:", [v4 transitionStatus]);
  -[CSDCall setDisconnectedReason:](self, "setDisconnectedReason:", [v4 disconnectedReason]);
  v7 = [v4 uniqueProxyIdentifier];
  [(CSDMockCall *)self setMockUniqueProxyIdentifier:v7];

  v8 = [v4 callUUID];
  [(CSDMockCall *)self setMockCallUUID:v8];

  -[CSDMockCall setMockHostedOnCurrentDevice:](self, "setMockHostedOnCurrentDevice:", [v4 isHostedOnCurrentDevice]);
  -[CSDMockCall setMockScreening:](self, "setMockScreening:", [v4 isScreening]);
  -[CSDMockCall setMockWasScreened:](self, "setMockWasScreened:", [v4 wasScreened]);
  -[CSDMockCall setMockScreeningAnnouncementHasFinished:](self, "setMockScreeningAnnouncementHasFinished:", [v4 screeningAnnouncementHasFinished]);
  -[CSDMockCall setEndpointOnCurrentDevice:](self, "setEndpointOnCurrentDevice:", [v4 isEndpointOnCurrentDevice]);
  v9 = [v4 callerNameFromNetwork];
  [(CSDMockCall *)self setMockCallerNameFromNetwork:v9];

  v10 = [v4 sourceIdentifier];
  [(CSDMockCall *)self setSourceIdentifier:v10];

  -[CSDMockCall setMockUsingBaseband:](self, "setMockUsingBaseband:", [v4 isUsingBaseband]);
  -[CSDMockCall setMockVoicemail:](self, "setMockVoicemail:", [v4 isVoicemail]);
  v11 = [v4 contactIdentifiers];
  [(CSDMockCall *)self setMockContactIdentifiers:v11];

  -[CSDMockCall setMockNeedsManualInCallSounds:](self, "setMockNeedsManualInCallSounds:", [v4 needsManualInCallSounds]);
  -[CSDMockCall setMockPrefersExclusiveAccessToCellularNetwork:](self, "setMockPrefersExclusiveAccessToCellularNetwork:", [v4 prefersExclusiveAccessToCellularNetwork]);
  -[CSDMockCall setMockTTYType:](self, "setMockTTYType:", [v4 ttyType]);
  -[CSDMockCall setMockSupportsTTYWithVoice:](self, "setMockSupportsTTYWithVoice:", [v4 supportsTTYWithVoice]);
  -[CSDMockCall setMockIsThirdPartyVideo:](self, "setMockIsThirdPartyVideo:", [v4 isThirdPartyVideo]);
  -[CSDMockCall setMockVideoStreamToken:](self, "setMockVideoStreamToken:", [v4 videoStreamToken]);
  -[CSDMockCall setMockConversation:](self, "setMockConversation:", [v4 isConversation]);
  -[CSDMockCall setMockFailureExpected:](self, "setMockFailureExpected:", [v4 isFailureExpected]);
  -[CSDMockCall setMockSupportsEmergencyFallback:](self, "setMockSupportsEmergencyFallback:", [v4 supportsEmergencyFallback]);
  -[CSDMockCall setMockSharingScreen:](self, "setMockSharingScreen:", [v4 isSharingScreen]);
  v12 = [v4 screenShareAttributes];
  [(CSDMockCall *)self setMockScreenShareAttributes:v12];

  -[CSDMockCall setMockHasBeenRedirected:](self, "setMockHasBeenRedirected:", [v4 hasBeenRedirected]);
  -[CSDMockCall setMockShouldSuppressRingtone:](self, "setMockShouldSuppressRingtone:", [v4 shouldSuppressRingtone]);
  v13 = [v4 blockedByExtension];
  [(CSDMockCall *)self setMockBlockedByExtension:v13];

  v14 = [v4 callDirectoryIdentityExtension];
  [(CSDMockCall *)self setMockCallDirectoryIdentityExtension:v14];

  -[CSDMockCall setMockFilteredOutReason:](self, "setMockFilteredOutReason:", [v4 filteredOutReason]);
  -[CSDMockCall setMockMixesVoiceWithMedia:](self, "setMockMixesVoiceWithMedia:", [v4 mixesVoiceWithMedia]);
  -[CSDMockCall setMockNearbyMode:](self, "setMockNearbyMode:", [v4 nearbyMode]);
  v15 = [v4 recordingSession];
  [(CSDMockCall *)self setMockRecordingSession:v15];

  v16 = [v4 translationSession];
  [(CSDMockCall *)self setMockTranslationSession:v16];

  v17 = [v4 smartHoldingSession];

  [(CSDMockCall *)self setMockSmartHoldingSession:v17];
  [(CSDCall *)self propertiesChanged];
}

- (TUCallDisplayContext)displayContext
{
  mockDisplayContext = self->_mockDisplayContext;
  if (mockDisplayContext)
  {
    v3 = mockDisplayContext;
  }

  else
  {
    v5.receiver = self;
    v5.super_class = CSDMockCall;
    v3 = [(CSDCall *)&v5 displayContext];
  }

  return v3;
}

- (void)setMockCallStatus:(int)a3
{
  self->_mockCallStatus = a3;
  if (a3 == 1)
  {
    v4 = [(CSDMockCall *)self dateConnected];

    if (!v4)
    {
      v5 = +[NSDate date];
      [(CSDMockCall *)self setMockDateConnected:v5];
    }
  }
}

- (void)answerWithRequest:(id)a3
{
  v6.receiver = self;
  v6.super_class = CSDMockCall;
  [(CSDMockCall *)&v6 answerWithRequest:a3];
  [(CSDMockCall *)self setMockCallStatus:1];
  v4 = +[NSDate date];
  [(CSDCall *)self setDateStartedConnecting:v4];

  v5 = +[NSDate date];
  [(CSDCall *)self setDateConnected:v5];

  [(CSDCall *)self propertiesChanged];
}

- (void)dialWithRequest:(id)a3 displayContext:(id)a4
{
  v11.receiver = self;
  v11.super_class = CSDMockCall;
  v6 = a3;
  [(CSDCall *)&v11 dialWithRequest:v6 displayContext:a4];
  [(CSDMockCall *)self setMockCallStatus:1, v11.receiver, v11.super_class];
  v7 = [v6 provider];
  [(CSDMockCall *)self setMockProvider:v7];

  v8 = [v6 handle];
  [(CSDMockCall *)self setMockHandle:v8];

  -[CSDMockCall setMockHostedOnCurrentDevice:](self, "setMockHostedOnCurrentDevice:", [v6 hostOnCurrentDevice]);
  v9 = [v6 endpointOnCurrentDevice];

  [(CSDMockCall *)self setMockEndpointOnCurrentDevice:v9];
  v10 = +[NSDate date];
  [(CSDCall *)self setDateStartedConnecting:v10];

  [(CSDCall *)self setSoundRegion:1];
  [(CSDMockCall *)self setMockNeedsManualInCallSounds:0];
  [(CSDCall *)self propertiesChanged];
}

@end