@interface CSDCall
+ (id)cxScreenShareAttributesForCallAttributes:(id)a3;
- (BOOL)hasStartedOutgoing;
- (BOOL)isConversation;
- (BOOL)isEmergency;
- (BOOL)isOutgoing;
- (BOOL)isSOS;
- (BOOL)isUplinkMuted;
- (BOOL)isVoicemail;
- (BOOL)launchInBackground;
- (BOOL)needsConversationOrVideoRelaySupport;
- (BOOL)needsConversationRelaySupport;
- (BOOL)shouldHandleMuteRequests;
- (BOOL)shouldOwnMuteHandler;
- (CSDAudioSessionProtocol)audioSession;
- (CSDCall)initWithUniqueProxyIdentifier:(id)a3 configuration:(id)a4;
- (CSDCallDataSource)dataSource;
- (CSDCallDelegate)delegate;
- (CSDConversationCallCoordinator)conversationCoordinator;
- (CXCall)cxCall;
- (NSDictionary)silencingUserInfo;
- (NSError)recordingAllowedError;
- (NSError)recordingDisabledError;
- (NSError)translationAllowedError;
- (NSError)translationDisabledError;
- (TUCallDisplayContext)displayContext;
- (id)getAudioSessionBlock;
- (id)handle;
- (int)callRelaySupport;
- (int)callStatus;
- (int)faceTimeIDStatus;
- (int)recordingAvailability;
- (int)translationAvailability;
- (void)_refreshFaceTimeIDSStatus;
- (void)_refreshFaceTimeIDSStatusIfNecessary;
- (void)dealloc;
- (void)dialWithRequest:(id)a3 displayContext:(id)a4;
- (void)handleAudioSessionActivationStateChangedTo:(id)a3;
- (void)handleUpdatedPropertiesAfterChangesInBlock:(id)a3;
- (void)idStatusUpdatedForDestinations:(id)a3 service:(id)a4;
- (void)propertiesChanged;
- (void)setAnsweringMachineStreamToken:(int64_t)a3;
- (void)setCurrentRecordingSession:(id)a3;
- (void)setDateConnected:(id)a3;
- (void)setDateEnded:(id)a3;
- (void)setDateSentInvitation:(id)a3;
- (void)setDateStartedConnecting:(id)a3;
- (void)setDateStartedOutgoing:(id)a3;
- (void)setDisconnectedReason:(int)a3;
- (void)setDisplayContext:(id)a3;
- (void)setEndpointOnCurrentDevice:(BOOL)a3;
- (void)setFaceTimeIDStatus:(int)a3;
- (void)setHasAudioInterruption:(BOOL)a3;
- (void)setIsKnownCaller:(BOOL)a3;
- (void)setLastReceptionistMessage:(id)a3;
- (void)setModel:(id)a3;
- (void)setReceptionistSession:(id)a3;
- (void)setReceptionistState:(int)a3;
- (void)setRelayClientTransport:(id)a3;
- (void)setRemoteActiveTranslating:(BOOL)a3;
- (void)setScreenShareAttributes:(id)a3;
- (void)setScreening:(BOOL)a3;
- (void)setScreeningAnnouncementHasFinished:(BOOL)a3;
- (void)setShouldSuppressRingtone:(BOOL)a3;
- (void)setSmartHoldingSession:(id)a3;
- (void)setSoundRegion:(int64_t)a3;
- (void)setSupportsDTMFUpdates:(BOOL)a3;
- (void)setTimeoutTimer:(id)a3;
- (void)setTransitionStatus:(int)a3;
- (void)setTranslationDisclosureLocation:(id)a3;
- (void)setTranslationSession:(id)a3;
- (void)setTransmissionState:(int64_t)a3;
- (void)setWantsHoldMusic:(BOOL)a3;
- (void)setWasDialAssisted:(BOOL)a3;
- (void)unsuppressRingtoneIfNecessary;
- (void)updatePredictedNameFromReceptionist:(id)a3;
- (void)updateWithOverrideCallProperties:(id)a3;
- (void)updateWithProxyCall:(id)a3;
@end

@implementation CSDCall

- (BOOL)hasStartedOutgoing
{
  v3 = [(CSDCall *)self temporaryDateStartedOutgoing];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v5 = [(CSDCall *)self dateStartedOutgoing];
    v4 = v5 != 0;
  }

  return v4;
}

- (BOOL)isVoicemail
{
  v3 = [(CSDCall *)self dialRequest];
  if (v3)
  {
    v4 = [(CSDCall *)self dialRequest];
    v5 = [v4 dialType] == 2;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CSDCall;
    v5 = [(CSDCall *)&v7 isVoicemail];
  }

  return v5;
}

- (CSDCallDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)propertiesChanged
{
  v3 = [(CSDCall *)self delegate];
  [v3 propertiesChangedForCall:self];
}

- (NSError)translationDisabledError
{
  v3 = [(CSDCall *)self isAppleIntelligenceEnabled];
  v4 = v3[2]();

  if ((v4 & 1) == 0)
  {
    v6 = [NSError alloc];
    v7 = TUTranslationErrorDomain;
    v8 = 19;
LABEL_5:
    v9 = [v6 initWithDomain:v7 code:v8 userInfo:{0, *v38}];
    goto LABEL_6;
  }

  v5 = [(CSDCall *)self featureFlags];
  if ([v5 audioCallTranslationEnabled])
  {
  }

  else
  {
    v11 = [(CSDCall *)self featureFlags];
    v12 = [v11 videoCallTranslationEnabled];

    if ((v12 & 1) == 0)
    {
      v6 = [NSError alloc];
      v7 = TUTranslationErrorDomain;
      v8 = 2;
      goto LABEL_5;
    }
  }

  v13 = [(CSDCall *)self provider];
  if ([v13 isFaceTimeProvider])
  {
    v14 = [(CSDCall *)self isOneToOneModeEnabled];

    if ((v14 & 1) == 0)
    {
      v6 = [NSError alloc];
      v7 = TUTranslationErrorDomain;
      v8 = 7;
      goto LABEL_5;
    }
  }

  else
  {
  }

  v15 = [(CSDCall *)self featureFlags];
  if ([v15 thirdPartyTranslationEnabled])
  {
    goto LABEL_17;
  }

  v16 = [(CSDCall *)self provider];
  if ([v16 isFaceTimeProvider])
  {

LABEL_17:
    goto LABEL_18;
  }

  v25 = [(CSDCall *)self provider];
  v26 = [v25 isTelephonyProvider];

  if ((v26 & 1) == 0)
  {
    v27 = sub_100004778();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [(CSDCall *)self provider];
      *v38 = 138412290;
      *&v38[4] = v28;
      v29 = "provider %@ doesn't support translation";
LABEL_48:
      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_DEFAULT, v29, v38, 0xCu);
    }

LABEL_49:

    v6 = [NSError alloc];
    v7 = TUTranslationErrorDomain;
    v8 = 13;
    goto LABEL_5;
  }

LABEL_18:
  v17 = [(CSDCall *)self featureFlags];
  if (![v17 thirdPartyTranslationEnabled])
  {
LABEL_23:

    goto LABEL_24;
  }

  v18 = [(CSDCall *)self provider];
  if ([v18 isTelephonyProvider])
  {
LABEL_22:

    goto LABEL_23;
  }

  v19 = [(CSDCall *)self provider];
  if ([v19 isFaceTimeProvider])
  {

    goto LABEL_22;
  }

  v33 = [(CSDCall *)self provider];
  v34 = [v33 supportsAudioTranslation];

  if ((v34 & 1) == 0)
  {
    v27 = sub_100004778();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [(CSDCall *)self provider];
      *v38 = 138412290;
      *&v38[4] = v28;
      v29 = "3P provider %@ doesn't support translation";
      goto LABEL_48;
    }

    goto LABEL_49;
  }

LABEL_24:
  v20 = [(CSDCall *)self featureFlags];
  if (![v20 thirdPartyTranslationEnabled])
  {
LABEL_29:

    goto LABEL_30;
  }

  v21 = [(CSDCall *)self provider];
  if ([v21 isTelephonyProvider])
  {
LABEL_28:

    goto LABEL_29;
  }

  v22 = [(CSDCall *)self provider];
  if ([v22 isFaceTimeProvider])
  {

    goto LABEL_28;
  }

  v35 = [(CSDCall *)self isVideo];

  if (v35)
  {
    v36 = sub_100004778();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = [(CSDCall *)self provider];
      *v38 = 138412290;
      *&v38[4] = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "3P call %@ doesn't support video call translation", v38, 0xCu);
    }

    v6 = [NSError alloc];
    v7 = TUTranslationErrorDomain;
    v8 = 9;
    goto LABEL_5;
  }

LABEL_30:
  if ([(CSDCall *)self isScreening])
  {
    v23 = sub_100004778();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "translation doesn't support when is screening", v38, 2u);
    }

    v6 = [NSError alloc];
    v7 = TUTranslationErrorDomain;
    v8 = 16;
    goto LABEL_5;
  }

  if ([(CSDCall *)self isEmergency])
  {
    v24 = sub_100004778();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Translation is not allowed for emergency calls", v38, 2u);
    }

    v6 = [NSError alloc];
    v7 = TUTranslationErrorDomain;
    v8 = 18;
    goto LABEL_5;
  }

  v9 = [(CSDCall *)self recordingSession];
  if (v9)
  {
    v30 = v9;
    v31 = [(CSDCall *)self recordingSession];
    v32 = [v31 recordingState];

    if (v32 != 5)
    {
      v6 = [NSError alloc];
      v7 = TUTranslationErrorDomain;
      v8 = 17;
      goto LABEL_5;
    }

    v9 = 0;
  }

LABEL_6:

  return v9;
}

- (BOOL)isSOS
{
  v3 = [(CSDCall *)self dialRequest];
  if (v3)
  {
    v4 = [(CSDCall *)self dialRequest];
    v5 = [v4 isSOS];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CSDCall;
    v5 = [(CSDCall *)&v7 isSOS];
  }

  return v5;
}

- (BOOL)isUplinkMuted
{
  v3 = [(CSDCall *)self featureFlags];
  v4 = [v3 sessionBasedMutingEnabled];

  if (v4)
  {
    return self->_uplinkMuted;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CSDCall;
    return [(CSDCall *)&v7 isUplinkMuted];
  }
}

- (int)callStatus
{
  if ([(CSDCall *)self shouldOverrideCallStatus])
  {

    return [(CSDCall *)self callStatusFromOverride];
  }

  else
  {

    return [(CSDCall *)self callStatusFromUnderlyingSource];
  }
}

- (int)translationAvailability
{
  v3 = [(CSDCall *)self translationAllowedError];
  v4 = [(CSDCall *)self translationDisabledError];
  if (v4)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = 138412290;
      v9 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "translationAvailability disabled: %@", &v8, 0xCu);
    }

    v6 = 1;
  }

  else if (v3)
  {
    v6 = 2;
  }

  else
  {
    v6 = 3;
  }

  return v6;
}

- (NSError)translationAllowedError
{
  v3 = [(CSDCall *)self translationDisabledError];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
LABEL_17:
    v12 = v5;
    goto LABEL_18;
  }

  if ([(CSDCall *)self status]!= 1)
  {
    v13 = [NSError alloc];
    v14 = TUTranslationErrorDomain;
    v15 = 5;
    goto LABEL_16;
  }

  if (([(CSDCall *)self isEndpointOnCurrentDevice]& 1) == 0)
  {
    v13 = [NSError alloc];
    v14 = TUTranslationErrorDomain;
    v15 = 15;
    goto LABEL_16;
  }

  if (![(CSDCall *)self isConferenced])
  {
LABEL_13:
    v12 = 0;
    goto LABEL_18;
  }

  v6 = [(CSDCall *)self featureFlags];
  if (![v6 thirdPartyTranslationEnabled])
  {
    goto LABEL_9;
  }

  v7 = [(CSDCall *)self provider];
  if (![v7 isTelephonyProvider])
  {
    v19 = [(CSDCall *)self provider];
    v20 = [v19 isFaceTimeProvider];

    if (v20)
    {
      goto LABEL_10;
    }

    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "3P Translation is not allowed for conference calls", buf, 2u);
    }

    v13 = [NSError alloc];
    v14 = TUTranslationErrorDomain;
    v15 = 6;
LABEL_16:
    v5 = [v13 initWithDomain:v14 code:v15 userInfo:0];
    goto LABEL_17;
  }

LABEL_9:
LABEL_10:
  v8 = +[TUCallCenter sharedInstance];
  v9 = [v8 activeConversationForCall:self];

  if (!v9 || ([v9 provider], v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isTelephonyWithSharePlayProvider"), v10, (v11 & 1) != 0))
  {

    goto LABEL_13;
  }

  v17 = sub_100004778();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Translation is not allowed for conference calls", v22, 2u);
  }

  v18 = [NSError alloc];
  v12 = [v18 initWithDomain:TUTranslationErrorDomain code:6 userInfo:0];

LABEL_18:

  return v12;
}

- (CXCall)cxCall
{
  v3 = [CXCall alloc];
  v4 = [(CSDCall *)self uniqueProxyIdentifierUUID];
  v5 = [v3 initWithUUID:v4];

  [v5 setOutgoing:{-[CSDCall isOutgoing](self, "isOutgoing")}];
  [v5 setOnHold:{-[CSDCall isOnHold](self, "isOnHold")}];
  [v5 setHasConnected:{-[CSDCall isConnected](self, "isConnected")}];
  [v5 setHasEnded:{-[CSDCall status](self, "status") == 6}];
  v6 = [(CSDCall *)self provider];
  v7 = [v6 identifier];
  [v5 setProviderIdentifier:v7];

  [v5 setEndpointOnCurrentDevice:{-[CSDCall isEndpointOnCurrentDevice](self, "isEndpointOnCurrentDevice")}];
  [v5 setHostedOnCurrentDevice:{-[CSDCall isHostedOnCurrentDevice](self, "isHostedOnCurrentDevice")}];
  if (([(CSDCall *)self isVideo]& 1) != 0)
  {
    v8 = 1;
  }

  else
  {
    v8 = [(CSDCall *)self isThirdPartyVideo];
  }

  [v5 setVideo:v8];
  [v5 setScreening:{-[CSDCall isScreening](self, "isScreening")}];

  return v5;
}

- (CSDConversationCallCoordinator)conversationCoordinator
{
  WeakRetained = objc_loadWeakRetained(&self->_conversationCoordinator);

  return WeakRetained;
}

- (int)faceTimeIDStatus
{
  [(CSDCall *)self _refreshFaceTimeIDSStatusIfNecessary];
  v4.receiver = self;
  v4.super_class = CSDCall;
  return [(CSDCall *)&v4 faceTimeIDStatus];
}

- (void)_refreshFaceTimeIDSStatusIfNecessary
{
  if (![(CSDCall *)self faceTimeIDStatusRefreshed])
  {
    [(CSDCall *)self setFaceTimeIDStatusRefreshed:1];

    [(CSDCall *)self _refreshFaceTimeIDSStatus];
  }
}

- (void)_refreshFaceTimeIDSStatus
{
  v3 = [(CSDCall *)self provider];
  v4 = [v3 isFaceTimeProvider];

  if (v4)
  {
    v5 = self;
    v6 = 2;
  }

  else
  {
    v7 = [(CSDCall *)self handle];
    v8 = [v7 value];
    v9 = [v8 length];

    if (v9)
    {
      v10 = [(CSDCall *)self idQueryController];
      v11 = [(CSDCall *)self handle];
      v12 = TUCopyIDSCanonicalAddressForHandle();
      v13 = IDSServiceNameFaceTime;
      v14 = [(CSDCall *)self queue];
      v15[0] = _NSConcreteStackBlock;
      v15[1] = 3221225472;
      v15[2] = sub_100026BEC;
      v15[3] = &unk_10061C850;
      v15[4] = self;
      [v10 currentIDStatusForDestination:v12 service:v13 listenerID:@"com.apple.TUCallCenter" queue:v14 completionBlock:v15];

      return;
    }

    v5 = self;
    v6 = 0;
  }

  [(CSDCall *)v5 setFaceTimeIDStatus:v6];
}

- (int)recordingAvailability
{
  v3 = [(CSDCall *)self recordingAllowedError];
  v4 = [(CSDCall *)self recordingDisabledError];
  if (v3)
  {
    v5 = 2;
  }

  else
  {
    v5 = 3;
  }

  if (v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  return v6;
}

- (NSError)recordingAllowedError
{
  v3 = [(CSDCall *)self recordingDisabledError];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
LABEL_12:
    v10 = v5;
    goto LABEL_13;
  }

  if ([(CSDCall *)self status]!= 1)
  {
    v7 = [NSError alloc];
    v8 = TUStartRecordingErrorDomain;
    v9 = 5;
LABEL_11:
    v5 = [v7 initWithDomain:v8 code:v9 userInfo:0];
    goto LABEL_12;
  }

  if (([(CSDCall *)self isEndpointOnCurrentDevice]& 1) == 0)
  {
    v7 = [NSError alloc];
    v8 = TUStartRecordingErrorDomain;
    v9 = 8;
    goto LABEL_11;
  }

  if ([(CSDCall *)self isConferenced])
  {
    v6 = sub_100004778();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Recording is not allowed for conference calls", v12, 2u);
    }

    v7 = [NSError alloc];
    v8 = TUStartRecordingErrorDomain;
    v9 = 10;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_13:

  return v10;
}

- (NSError)recordingDisabledError
{
  v3 = [(CSDCall *)self featureFlags];
  v4 = [v3 callRecordingEnabled];

  if ((v4 & 1) == 0)
  {
    v6 = [NSError alloc];
    v7 = TUStartRecordingErrorDomain;
    v8 = 2;
LABEL_32:
    v22 = [v6 initWithDomain:v7 code:v8 userInfo:0];
    goto LABEL_33;
  }

  if (![(CSDCall *)self isCallRecordingEnabled])
  {
    v6 = [NSError alloc];
    v7 = TUStartRecordingErrorDomain;
    v8 = 14;
    goto LABEL_32;
  }

  v5 = [(CSDCall *)self provider];
  if ([v5 isTelephonyProvider])
  {
  }

  else
  {
    v9 = [(CSDCall *)self provider];
    v10 = [v9 isFaceTimeProvider];

    if ((v10 & 1) == 0)
    {
      v6 = [NSError alloc];
      v7 = TUStartRecordingErrorDomain;
      v8 = 3;
      goto LABEL_32;
    }
  }

  if ([(CSDCall *)self isEmergency])
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Recording is not allowed for emergency calls", buf, 2u);
    }

    v6 = [NSError alloc];
    v7 = TUStartRecordingErrorDomain;
    v8 = 11;
    goto LABEL_32;
  }

  if ([(CSDCall *)self isVideo])
  {
    v6 = [NSError alloc];
    v7 = TUStartRecordingErrorDomain;
    v8 = 6;
    goto LABEL_32;
  }

  v12 = [(CSDCall *)self delegate];
  v13 = [v12 multipleCallsActiveOrHeld];

  if (v13)
  {
    v6 = [NSError alloc];
    v7 = TUStartRecordingErrorDomain;
    v8 = 13;
    goto LABEL_32;
  }

  v14 = [(CSDCall *)self provider];
  if ([v14 isFaceTimeProvider])
  {
    v15 = [(CSDCall *)self isOneToOneModeEnabled];

    if ((v15 & 1) == 0)
    {
      v6 = [NSError alloc];
      v7 = TUStartRecordingErrorDomain;
      v8 = 7;
      goto LABEL_32;
    }
  }

  else
  {
  }

  if ([(CSDCall *)self isScreening])
  {
    v6 = [NSError alloc];
    v7 = TUStartRecordingErrorDomain;
    v8 = 15;
    goto LABEL_32;
  }

  v16 = [(CSDCall *)self translationSession];
  if (v16)
  {
    v17 = v16;
    v18 = [(CSDCall *)self translationSession];
    if ([v18 translationState])
    {
      v19 = [(CSDCall *)self translationSession];
      v20 = [v19 translationState];

      if (v20 != 5)
      {
        v6 = [NSError alloc];
        v7 = TUTranslationErrorDomain;
        v8 = 16;
        goto LABEL_32;
      }
    }

    else
    {
    }
  }

  if ([(CSDCall *)self isRemoteActiveTranslating])
  {
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Recording is not allowed when remote starts translation", v24, 2u);
    }

    v6 = [NSError alloc];
    v7 = TUTranslationErrorDomain;
    v8 = 17;
    goto LABEL_32;
  }

  v22 = 0;
LABEL_33:

  return v22;
}

- (TUCallDisplayContext)displayContext
{
  v3 = [(CSDCall *)self dynamicDisplayContext];
  if (!v3)
  {
    v4 = [(CSDCall *)self queue];

    if (!v4)
    {
      goto LABEL_5;
    }

    v5 = [TUDynamicCallDisplayContext alloc];
    v6 = [(CSDCall *)self dialRequest];
    v7 = [v6 contactIdentifier];
    v8 = [(CSDCall *)self queue];
    v9 = [v5 initWithCall:self contactIdentifier:v7 serialQueue:v8 cacheOnly:{-[CSDCall isIncoming](self, "isIncoming") ^ 1}];
    [(CSDCall *)self setDynamicDisplayContext:v9];

    v3 = [(CSDCall *)self dynamicDisplayContext];
    [v3 setDelegate:self];
  }

LABEL_5:
  v10 = [(CSDCall *)self dynamicDisplayContext];
  v11 = [v10 copy];

  return v11;
}

- (int)callRelaySupport
{
  if (([(CSDCall *)self lockdownModeEnabled]& 1) != 0)
  {
    return 0;
  }

  if (-[CSDCall isConversation](self, "isConversation") && (-[CSDCall provider](self, "provider"), v4 = objc_claimAutoreleasedReturnValue(), v5 = [v4 isTelephonyProvider], v4, (v5 & 1) == 0))
  {
    v6 = +[TUCallCenter sharedInstance];
    v7 = [v6 activeConversationForCall:self];

    v8 = [v7 activitySessions];
    v9 = [v8 anyObject];

    if (v9)
    {
      if ([v9 state] == 1)
      {
        v3 = 1;
      }

      else
      {
        v3 = 2;
      }
    }

    else
    {
      v3 = 2;
    }
  }

  else if ([(CSDCall *)self isVideo])
  {
    return 1;
  }

  else
  {
    return 2;
  }

  return v3;
}

- (BOOL)needsConversationOrVideoRelaySupport
{
  if (![(CSDCall *)self isConversation])
  {
    return 0;
  }

  v3 = [(CSDCall *)self remoteParticipantHandles];
  if ([v3 count] <= 1)
  {
    v4 = [(CSDCall *)self isVideo];
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

- (CSDAudioSessionProtocol)audioSession
{
  v2 = [(CSDCall *)self getAudioSessionBlock];
  v3 = v2[2]();

  return v3;
}

- (id)getAudioSessionBlock
{
  getAudioSessionBlock = self->_getAudioSessionBlock;
  if (!getAudioSessionBlock)
  {
    objc_initWeak(&location, self);
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_10003F2C0;
    v8[3] = &unk_10061C828;
    objc_copyWeak(&v9, &location);
    v4 = objc_retainBlock(v8);
    v5 = self->_getAudioSessionBlock;
    self->_getAudioSessionBlock = v4;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
    getAudioSessionBlock = self->_getAudioSessionBlock;
  }

  v6 = objc_retainBlock(getAudioSessionBlock);

  return v6;
}

- (CSDCall)initWithUniqueProxyIdentifier:(id)a3 configuration:(id)a4
{
  v6 = a4;
  v7 = a3;
  v11.receiver = self;
  v11.super_class = CSDCall;
  v8 = -[CSDCall initWithUniqueProxyIdentifier:endpointOnCurrentDevice:](&v11, "initWithUniqueProxyIdentifier:endpointOnCurrentDevice:", v7, [v6 isEndpointOnCurrentDevice]);

  if (v8)
  {
    v9 = [v6 featureFlags];
    v8->_isCallRecordingEnabled = TUCallRecordingEnabled();

    v8->_isUnderlyingLinksConnected = 1;
  }

  return v8;
}

- (void)dealloc
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Call is being deallocated", buf, 2u);
  }

  [(CSDCall *)self setTimeoutTimer:0];
  v4.receiver = self;
  v4.super_class = CSDCall;
  [(CSDCall *)&v4 dealloc];
}

- (BOOL)needsConversationRelaySupport
{
  if (![(CSDCall *)self isConversation])
  {
    return 0;
  }

  v3 = [(CSDCall *)self remoteParticipantHandles];
  v4 = [v3 count] > 1;

  return v4;
}

- (BOOL)isConversation
{
  v3 = [(CSDCall *)self overridePropertiesUpdate];
  v4 = [v3 hasSet];

  if ((v4 & 0x1000000000000000) != 0)
  {
    v6 = [(CSDCall *)self overridePropertiesUpdate];
    v7 = [v6 isConversation];

    return v7;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = CSDCall;
    return [(CSDCall *)&v8 isConversation];
  }
}

- (void)dialWithRequest:(id)a3 displayContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (([v7 isValid] & 1) == 0)
  {
    sub_1004764B4(a2, self, v7);
  }

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138412546;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "dialRequest: %@ displayContext: %@", &v16, 0x16u);
  }

  [(CSDCall *)self setDialRequest:v7];
  -[CSDCall setWasDialAssisted:](self, "setWasDialAssisted:", [v7 isDialAssisted]);
  v10 = [v7 audioSourceIdentifier];
  [(CSDCall *)self setSourceIdentifier:v10];

  v11 = [v7 upgradedFromCallUUID];
  [(CSDCall *)self setUpgradedFromCallUUID:v11];

  if (v8)
  {
    v12 = [TUDynamicCallDisplayContext alloc];
    v13 = [(CSDCall *)self queue];
    v14 = [v12 initWithDisplayContext:v8 call:self serialQueue:v13];
    [(CSDCall *)self setDynamicDisplayContext:v14];

    v15 = [(CSDCall *)self dynamicDisplayContext];
    [v15 setDelegate:self];
  }
}

- (void)setScreenShareAttributes:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[CSDCall] setScreenShareAttributes: %@", &v10, 0xCu);
  }

  v6 = [(CSDCall *)self featureFlags];
  v7 = [v6 sharePlayInCallsEnabled];

  if (v7)
  {
    v8 = [(CSDCall *)self conversationCoordinator];
    v9 = [(CSDCall *)self uniqueProxyIdentifierUUID];
    [v8 handleSetScreenShareAttributes:v9 tuAttributes:v4];
  }
}

- (void)unsuppressRingtoneIfNecessary
{
  if ([(CSDCall *)self shouldSuppressRingtone])
  {
    v3 = objc_alloc_init(CUTWeakLinkClass());
    [v3 setType:2];
    objc_initWeak(&location, self);
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_1001501B4;
    v6[3] = &unk_10061C800;
    objc_copyWeak(&v8, &location);
    v4 = v3;
    v7 = v4;
    [v4 setCompletionHandler:v6];
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Starting coordinated alert request to determine ringtone un-suppression: %@", buf, 0xCu);
    }

    [v4 start];
    objc_destroyWeak(&v8);
    objc_destroyWeak(&location);
  }
}

- (void)updateWithProxyCall:(id)a3
{
  v4 = a3;
  -[CSDCall setDisconnectedReason:](self, "setDisconnectedReason:", [v4 disconnectedReason]);
  -[CSDCall setShouldSuppressRingtone:](self, "setShouldSuppressRingtone:", [v4 shouldSuppressRingtone]);
  -[CSDCall setWantsHoldMusic:](self, "setWantsHoldMusic:", [v4 wantsHoldMusic]);
  v5 = [v4 reminderUUID];

  [(CSDCall *)self setReminderUUID:v5];
}

- (void)updateWithOverrideCallProperties:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v29 = 138412290;
    v30 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[CSDCall] Overriding call with properties: %@", &v29, 0xCu);
  }

  v6 = [(CSDCall *)self overridePropertiesUpdate];

  if (!v6)
  {
    v7 = objc_alloc_init(CXCallUpdate);
    overridePropertiesUpdate = self->_overridePropertiesUpdate;
    self->_overridePropertiesUpdate = v7;
  }

  v9 = [(CSDCall *)self overridePropertiesUpdate];
  [v9 updateWithUpdate:v4];

  v10 = [(CSDCall *)self overridePropertiesUpdate];
  [v10 hasSet];
  v12 = v11;

  if ((v12 & 0x80000) != 0)
  {
    v13 = [(CSDCall *)self overridePropertiesUpdate];
    -[CSDCall setIsSharePlayCapable:](self, "setIsSharePlayCapable:", [v13 isSharePlayCapable]);
  }

  v14 = [(CSDCall *)self overridePropertiesUpdate];
  v15 = [v14 hasSet];

  if ((v15 & 0x1000000000000000) != 0)
  {
    v16 = [(CSDCall *)self overridePropertiesUpdate];
    -[CSDCall setConversation:](self, "setConversation:", [v16 isConversation]);
  }

  v17 = [(CSDCall *)self overridePropertiesUpdate];
  [v17 hasSet];
  v19 = v18;

  if ((v19 & 0x1000000) != 0)
  {
    v20 = [(CSDCall *)self overridePropertiesUpdate];
    v21 = [v20 conversationGroupUUID];
    [(CSDCall *)self setConversationGroupUUID:v21];
  }

  v22 = [(CSDCall *)self overridePropertiesUpdate];
  v23 = [v22 hasSet];

  if ((v23 & 0x2000000000000000) != 0)
  {
    v24 = [(CSDCall *)self overridePropertiesUpdate];
    -[CSDCall setMixesVoiceWithMedia:](self, "setMixesVoiceWithMedia:", [v24 mixesVoiceWithMedia]);
  }

  v25 = [(CSDCall *)self overridePropertiesUpdate];
  [v25 hasSet];
  v27 = v26;

  if ((v27 & 0x100000) != 0)
  {
    v28 = [(CSDCall *)self overridePropertiesUpdate];
    -[CSDCall setAnyRemoteSupportsRequestToScreenShare:](self, "setAnyRemoteSupportsRequestToScreenShare:", [v28 anyRemoteSupportsRequestToScreenShare]);
  }

  [(CSDCall *)self propertiesChanged];
}

- (void)setHasAudioInterruption:(BOOL)a3
{
  if (self->_hasAudioInterruption != a3)
  {
    v8 = v3;
    v9 = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100150774;
    v6[3] = &unk_100619EA8;
    v6[4] = self;
    v7 = a3;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setRelayClientTransport:(id)a3
{
  v4 = a3;
  v5 = [(CSDCall *)self relayClientTransport];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100150858;
    v10 = &unk_100619D88;
    v11 = self;
    v12 = v4;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v7];
    [(CSDCall *)self propertiesChanged:v7];
  }
}

- (void)setTransitionStatus:(int)a3
{
  if ([(CSDCall *)self transitionStatus]!= a3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100150904;
    v5[3] = &unk_100619EF8;
    v6 = a3;
    v5[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setWantsHoldMusic:(BOOL)a3
{
  if ([(CSDCall *)self wantsHoldMusic]!= a3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001509DC;
    v5[3] = &unk_100619EA8;
    v6 = a3;
    v5[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setWasDialAssisted:(BOOL)a3
{
  if ([(CSDCall *)self wasDialAssisted]!= a3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100150AB4;
    v5[3] = &unk_100619EA8;
    v6 = a3;
    v5[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setScreeningAnnouncementHasFinished:(BOOL)a3
{
  if ([(CSDCall *)self screeningAnnouncementHasFinished]!= a3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100150B8C;
    v5[3] = &unk_100619EA8;
    v6 = a3;
    v5[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setDisconnectedReason:(int)a3
{
  if ([(CSDCall *)self disconnectedReason]!= a3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100150C64;
    v5[3] = &unk_100619EF8;
    v6 = a3;
    v5[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setFaceTimeIDStatus:(int)a3
{
  if ([(CSDCall *)self faceTimeIDStatus]!= a3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100150D3C;
    v5[3] = &unk_100619EF8;
    v6 = a3;
    v5[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setSoundRegion:(int64_t)a3
{
  if ([(CSDCall *)self soundRegion]!= a3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100150E10;
    v5[3] = &unk_100619D60;
    v5[4] = self;
    v5[5] = a3;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setModel:(id)a3
{
  v4 = a3;
  v5 = [(CSDCall *)self model];

  if (v5 != v4)
  {
    v6 = _NSConcreteStackBlock;
    v7 = 3221225472;
    v8 = sub_100150F0C;
    v9 = &unk_100619D88;
    v10 = v4;
    v11 = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v6];
    [(CSDCall *)self propertiesChanged:v6];
  }
}

- (void)setAnsweringMachineStreamToken:(int64_t)a3
{
  if ([(CSDCall *)self answeringMachineStreamToken]!= a3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100150FDC;
    v5[3] = &unk_100619D60;
    v5[4] = self;
    v5[5] = a3;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setSupportsDTMFUpdates:(BOOL)a3
{
  if ([(CSDCall *)self supportsDTMFUpdates]!= a3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001510B0;
    v5[3] = &unk_100619EA8;
    v6 = a3;
    v5[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setShouldSuppressRingtone:(BOOL)a3
{
  if ([(CSDCall *)self shouldSuppressRingtone]!= a3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_100151188;
    v5[3] = &unk_100619EA8;
    v6 = a3;
    v5[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setEndpointOnCurrentDevice:(BOOL)a3
{
  if ([(CSDCall *)self isEndpointOnCurrentDevice]!= a3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001512A0;
    v5[3] = &unk_100619EA8;
    v6 = a3;
    v5[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setScreening:(BOOL)a3
{
  v3 = a3;
  if ([(CSDCall *)self isScreening]!= a3)
  {
    [(CSDCall *)self setWasScreened:[(CSDCall *)self wasScreened]| v3];
    v7[0] = _NSConcreteStackBlock;
    v7[1] = 3221225472;
    v7[2] = sub_1001513E0;
    v7[3] = &unk_100619EA8;
    v8 = v3;
    v7[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v7];
    v5 = +[CSDRelayConferenceInterface sharedInstance];
    v6 = [(CSDCall *)self uniqueProxyIdentifier];
    [v5 updateConferenceForIdentifier:v6 isUsingBaseband:-[CSDCall isUsingBaseband](self disableAudio:"isUsingBaseband") isTinCan:{0, 0}];

    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setReceptionistState:(int)a3
{
  if ([(CSDCall *)self receptionistState]!= a3)
  {
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_1001514B8;
    v5[3] = &unk_100619EF8;
    v6 = a3;
    v5[4] = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v5];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setLastReceptionistMessage:(id)a3
{
  v4 = a3;
  v5 = [(CSDCall *)self lastReceptionistMessage];
  v6 = [v5 isEqualToString:v4];

  if ((v6 & 1) == 0)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_1001515C0;
    v10 = &unk_100619D88;
    v11 = v4;
    v12 = self;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v7];
    [(CSDCall *)self propertiesChanged:v7];
  }
}

- (void)setReceptionistSession:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting TUReceptionistSession %@", &v7, 0xCu);
  }

  receptionistSession = self->_receptionistSession;
  self->_receptionistSession = v4;

  [(CSDCall *)self propertiesChanged];
}

- (void)setDateSentInvitation:(id)a3
{
  v4 = a3;
  v5 = [(CSDCall *)self dateSentInvitation];
  v6 = TUObjectsAreEqualOrNil();

  if (v6)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      [(CSDCall *)self dateSentInvitation];
      v8 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());
      *buf = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = v4;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "self.dateSentInvitation: %@, dateSentInvitation: %@", buf, 0x16u);
    }
  }

  else
  {
    if ([(CSDCall *)self isOutgoing])
    {
      v9 = [(CSDCall *)self dateStartedOutgoing];

      if (!v9)
      {
        [(CSDCall *)self setDateStartedOutgoing:v4];
      }
    }

    v14.receiver = self;
    v14.super_class = CSDCall;
    [(CSDCall *)&v14 setDateSentInvitation:v4];
    v10 = [(CSDCall *)self dateCreated];
    [v4 timeIntervalSinceDate:v10];
    v12 = v11;

    v13 = sub_10022AEEC();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v16 = v12 * 1000.0;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "csdcall_durationToSendInvitation=%f", buf, 0xCu);
    }

    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setDateStartedConnecting:(id)a3
{
  v4 = a3;
  v5 = [(CSDCall *)self dateStartedConnecting];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    if ([(CSDCall *)self isOutgoing])
    {
      v7 = [(CSDCall *)self dateSentInvitation];

      if (!v7)
      {
        [(CSDCall *)self setDateSentInvitation:v4];
      }
    }

    v8.receiver = self;
    v8.super_class = CSDCall;
    [(CSDCall *)&v8 setDateStartedConnecting:v4];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setDateConnected:(id)a3
{
  v4 = a3;
  v5 = [(CSDCall *)self dateConnected];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    v7 = [(CSDCall *)self dateStartedConnecting];

    if (!v7)
    {
      [(CSDCall *)self setDateStartedConnecting:v4];
    }

    v13.receiver = self;
    v13.super_class = CSDCall;
    [(CSDCall *)&v13 setDateConnected:v4];
    v8 = [(CSDCall *)self dateStartedConnecting];

    if (v8)
    {
      v9 = [(CSDCall *)self dateStartedConnecting];
      [v4 timeIntervalSinceDate:v9];
      v11 = v10;

      v12 = sub_10022AEEC();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v15 = v11 * 1000.0;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "csdcall_durationToConnect=%f", buf, 0xCu);
      }
    }

    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setCurrentRecordingSession:(id)a3
{
  v5 = a3;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412290;
    v13 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting recording session %@", &v12, 0xCu);
  }

  objc_storeStrong(&self->_currentRecordingSession, a3);
  if (!v5)
  {
    recordingSession = self->_recordingSession;
    self->_recordingSession = 0;

    podcastRecordingSession = self->_podcastRecordingSession;
    self->_podcastRecordingSession = 0;
    goto LABEL_9;
  }

  currentRecordingSession = self->_currentRecordingSession;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = self->_currentRecordingSession;
    podcastRecordingSession = self->_recordingSession;
    self->_recordingSession = v8;
LABEL_9:

    goto LABEL_10;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v11 = self->_currentRecordingSession;
    podcastRecordingSession = self->_podcastRecordingSession;
    self->_podcastRecordingSession = v11;
    goto LABEL_9;
  }

LABEL_10:
  [(CSDCall *)self propertiesChanged];
}

- (void)setTranslationSession:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting translation session %@", &v7, 0xCu);
  }

  translationSession = self->_translationSession;
  self->_translationSession = v4;

  [(CSDCall *)self propertiesChanged];
}

- (void)setRemoteActiveTranslating:(BOOL)a3
{
  if (self->_remoteActiveTranslating != a3)
  {
    v3 = a3;
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = @"NO";
      if (v3)
      {
        v6 = @"YES";
      }

      v7 = 138412290;
      v8 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting remote active translating to %@", &v7, 0xCu);
    }

    self->_remoteActiveTranslating = v3;
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setTranslationDisclosureLocation:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting translation disclosure location %@", &v7, 0xCu);
  }

  translationDisclosureLocation = self->_translationDisclosureLocation;
  self->_translationDisclosureLocation = v4;
}

- (void)setSmartHoldingSession:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting smart holding session %@", &v9, 0xCu);
  }

  smartHoldingSession = self->_smartHoldingSession;
  self->_smartHoldingSession = v4;
  v7 = v4;

  if ([(TUSmartHoldingSession *)v7 state]== 2)
  {
    self->_smartHoldingTipPresented = 1;
  }

  v8 = [(TUSmartHoldingSession *)v7 state];

  if (!v8)
  {
    [(CSDCall *)self setShouldSuppressRingtone:0];
  }

  [(CSDCall *)self propertiesChanged];
}

- (void)setDateEnded:(id)a3
{
  v4 = a3;
  v5 = [(CSDCall *)self dateEnded];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    v7.receiver = self;
    v7.super_class = CSDCall;
    [(CSDCall *)&v7 setDateEnded:v4];
    [(CSDCall *)self updateForDisconnection];
    [(CSDCall *)self propertiesChanged];
  }
}

- (void)setDateStartedOutgoing:(id)a3
{
  v4 = a3;
  v5 = [(CSDCall *)self dateStartedOutgoing];
  v6 = TUObjectsAreEqualOrNil();

  if ((v6 & 1) == 0)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100152148;
    v10 = &unk_100619D88;
    v11 = self;
    v12 = v4;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v7];
    [(CSDCall *)self propertiesChanged:v7];
  }
}

- (void)setIsKnownCaller:(BOOL)a3
{
  if ([(CSDCall *)self isKnownCaller]!= a3)
  {
    self->_isKnownCaller = a3;

    [(CSDCall *)self propertiesChanged];
  }
}

- (BOOL)shouldOwnMuteHandler
{
  if ([(CSDCall *)self isOnHold])
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = [(CSDCall *)self uniqueProxyIdentifier];
      v6 = 138412290;
      v7 = v4;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Call with UPI %@ cannot own mute handler since it is held", &v6, 0xCu);
    }

    return 0;
  }

  else
  {

    return [(CSDCall *)self shouldHandleMuteRequests];
  }
}

- (BOOL)shouldHandleMuteRequests
{
  if ([(CSDCall *)self status]!= 1 && [(CSDCall *)self status]!= 3 && [(CSDCall *)self status]!= 2)
  {
    v3 = sub_100004778();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [(CSDCall *)self uniqueProxyIdentifier];
      v8 = 138412546;
      v9 = v7;
      v10 = 1024;
      v11 = [(CSDCall *)self status];
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Call with UPI %@ cannot handle mute control requests since the call status is not eligible for mute control %d", &v8, 0x12u);
    }

    goto LABEL_8;
  }

  if ([(CSDCall *)self isScreening])
  {
    v3 = sub_100004778();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
LABEL_8:

      return 0;
    }

    v4 = [(CSDCall *)self uniqueProxyIdentifier];
    v8 = 138412290;
    v9 = v4;
    v5 = "Call with UPI %@ cannot handle mute control requests since it is screening";
LABEL_7:
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, v5, &v8, 0xCu);

    goto LABEL_8;
  }

  if (([(CSDCall *)self isEndpointOnCurrentDevice]& 1) == 0 && ([(CSDCall *)self isHostedOnCurrentDevice]& 1) == 0)
  {
    v3 = sub_100004778();
    if (!os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_8;
    }

    v4 = [(CSDCall *)self uniqueProxyIdentifier];
    v8 = 138412290;
    v9 = v4;
    v5 = "Call with UPI %@ cannot handle mute control requests since it is not endpoint for the call";
    goto LABEL_7;
  }

  return 1;
}

- (void)setTimeoutTimer:(id)a3
{
  v5 = a3;
  timeoutTimer = self->_timeoutTimer;
  v8 = v5;
  if (timeoutTimer != v5)
  {
    if (timeoutTimer)
    {
      dispatch_source_cancel(timeoutTimer);
    }

    objc_storeStrong(&self->_timeoutTimer, a3);
    v7 = self->_timeoutTimer;
    if (v7)
    {
      dispatch_activate(v7);
    }
  }
}

- (void)setTransmissionState:(int64_t)a3
{
  if (self->_transmissionState != a3)
  {
    v6[8] = v3;
    v6[9] = v4;
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100152910;
    v6[3] = &unk_100619D60;
    v6[4] = self;
    v6[5] = a3;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:v6];
    [(CSDCall *)self propertiesChanged];
  }
}

- (id)handle
{
  v3 = [(CSDCall *)self dialRequest];
  if (v3)
  {
    v4 = [(CSDCall *)self dialRequest];
    v5 = [v4 handle];
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CSDCall;
    v5 = [(CSDCall *)&v7 handle];
  }

  return v5;
}

- (BOOL)isOutgoing
{
  v3 = [(CSDCall *)self dialRequest];
  if (v3)
  {
    v4 = 1;
  }

  else
  {
    v6.receiver = self;
    v6.super_class = CSDCall;
    v4 = [(CSDCall *)&v6 isOutgoing];
  }

  return v4;
}

- (BOOL)isEmergency
{
  v3 = [(CSDCall *)self dialRequest];
  if (v3)
  {
    v4 = [(CSDCall *)self dialRequest];
    v5 = [v4 dialType] == 1;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = CSDCall;
    v5 = [(CSDCall *)&v7 isEmergency];
  }

  return v5;
}

- (BOOL)launchInBackground
{
  v3 = [(CSDCall *)self dialRequest];
  if (v3)
  {
    v4 = v3;
    v5 = [(CSDCall *)self dialRequest];
    v6 = [v5 launchInBackground];

    if (v6)
    {
      return 1;
    }
  }

  v8.receiver = self;
  v8.super_class = CSDCall;
  return [(CSDCall *)&v8 launchInBackground];
}

- (NSDictionary)silencingUserInfo
{
  silencingUserInfo = self->_silencingUserInfo;
  if (!silencingUserInfo)
  {
    v4 = objc_alloc_init(NSDictionary);
    v5 = self->_silencingUserInfo;
    self->_silencingUserInfo = v4;

    silencingUserInfo = self->_silencingUserInfo;
  }

  return silencingUserInfo;
}

- (void)setDisplayContext:(id)a3
{
  v4 = a3;
  v5 = [(CSDCall *)self displayContext];
  v6 = [v5 isEqual:v4];

  if ((v6 & 1) == 0)
  {
    v7 = _NSConcreteStackBlock;
    v8 = 3221225472;
    v9 = sub_100152C90;
    v10 = &unk_100619D88;
    v11 = self;
    v12 = v4;
    [(CSDCall *)self handleUpdatedPropertiesAfterChangesInBlock:&v7];
    [(CSDCall *)self propertiesChanged:v7];
  }
}

- (void)updatePredictedNameFromReceptionist:(id)a3
{
  v4 = a3;
  v5 = [(CSDCall *)self dynamicDisplayContext];
  [v5 updatePredictedNameFromReceptionist:v4];
}

+ (id)cxScreenShareAttributesForCallAttributes:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(CXScreenShareAttributes);
  [v4 setDeviceFamily:{objc_msgSend(v3, "deviceFamily")}];
  [v4 setDeviceHomeButtonType:{objc_msgSend(v3, "deviceHomeButtonType")}];
  [v4 setStyle:{objc_msgSend(v3, "style")}];
  v5 = [v3 displayID];
  [v4 setDisplayID:v5];

  v6 = [v3 frameRate];
  [v4 setFrameRate:v6];

  [v4 setWindowed:{objc_msgSend(v3, "isWindowed")}];
  v7 = [v3 windowUUID];
  [v4 setWindowUUID:v7];

  v8 = [v3 displayScale];
  [v4 setDisplayScale:v8];

  v9 = [v3 cornerRadius];
  [v4 setCornerRadius:v9];

  v10 = [v3 scaleFactor];
  [v4 setScaleFactor:v10];

  v11 = [v3 systemRootLayerTransform];
  [v4 setSystemRootLayerTransform:v11];

  v12 = [v3 originalResolution];

  v13 = [v12 copy];
  [v4 setOriginalResolution:v13];

  return v4;
}

- (void)handleUpdatedPropertiesAfterChangesInBlock:(id)a3
{
  v4 = a3;
  v77 = [(CSDCall *)self handle];
  v75 = [(CSDCall *)self callerNameFromNetwork];
  v52 = [(CSDCall *)self isInternational];
  v67 = [(CSDCall *)self relayClientTransport];
  v73 = [(CSDCall *)self mayRequireBreakBeforeMake];
  v55 = [(CSDCall *)self hasStartedOutgoing];
  v56 = [(CSDCall *)self hasAudioInterruption];
  v53 = [(CSDCall *)self isEmergency];
  v51 = [(CSDCall *)self isVoicemail];
  v5 = [(CSDCall *)self activeRemoteParticipants];
  v59 = [(CSDCall *)self isOneToOneModeEnabled];
  v61 = [(CSDCall *)self mediaPlaybackOnExternalDevice];
  v63 = [(CSDCall *)self transmissionState];
  v65 = [(CSDCall *)self prefersToPlayDuringWombat];
  v70 = [(CSDCall *)self remoteParticipantHandles];
  v6 = [(CSDCall *)self displayContext];
  v68 = [(CSDCall *)self audioInterruptionProviderType];
  v4[2](v4);

  v76 = [(CSDCall *)self handle];
  v74 = [(CSDCall *)self callerNameFromNetwork];
  v7 = [(CSDCall *)self isInternational];
  v8 = [(CSDCall *)self relayClientTransport];
  v71 = [(CSDCall *)self mayRequireBreakBeforeMake];
  v72 = [(CSDCall *)self hasStartedOutgoing];
  v54 = [(CSDCall *)self hasAudioInterruption];
  v9 = [(CSDCall *)self isEmergency];
  v10 = [(CSDCall *)self isVoicemail];
  v11 = [(CSDCall *)self activeRemoteParticipants];
  v57 = [(CSDCall *)self isOneToOneModeEnabled];
  v58 = [(CSDCall *)self mediaPlaybackOnExternalDevice];
  v60 = [(CSDCall *)self transmissionState];
  v62 = [(CSDCall *)self prefersToPlayDuringWombat];
  v69 = [(CSDCall *)self remoteParticipantHandles];
  v12 = [(CSDCall *)self displayContext];
  v64 = [(CSDCall *)self isUnderlyingLinksConnected];
  v66 = [(CSDCall *)self audioInterruptionProviderType];
  v13 = [(CSDCall *)self dynamicDisplayContext];
  if (v13)
  {
    v14 = v13;
    if (!TUObjectsAreEqualOrNil() || !TUStringsAreEqualOrNil() || ((v53 ^ v9) & 1) != 0 || ((v52 ^ v7) & 1) != 0 || ((v51 ^ v10) & 1) != 0)
    {
    }

    else
    {
      v15 = [v70 isEqualToSet:v69];

      if (v15)
      {
        goto LABEL_13;
      }
    }

    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79 = self;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Invalidating display context for %@", buf, 0xCu);
    }

    [(CSDCall *)self setDynamicDisplayContext:0];
  }

LABEL_13:
  v17 = v67;
  if ((TUObjectsAreEqualOrNil() & 1) == 0)
  {
    v18 = sub_100004778();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
    v20 = TUCallCenterCallContinuityStateChangedNotification;
    if (v19)
    {
      *buf = 138413058;
      v79 = TUCallCenterCallContinuityStateChangedNotification;
      v80 = 2112;
      *v81 = v67;
      *&v81[8] = 2112;
      *v82 = v8;
      *&v82[8] = 2112;
      v83 = self;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Posting %@ because relayClientTransport changed from %@ to %@ for %@", buf, 0x2Au);
    }

    v21 = [(CSDCall *)self notificationCenter];
    [v21 postNotificationName:v20 object:self];
  }

  if ((TUObjectsAreEqualOrNil() & 1) == 0)
  {
    v22 = sub_100004778();
    v23 = os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT);
    v24 = TUCallDisplayContextChangedNotification;
    if (v23)
    {
      *buf = 138413058;
      v79 = TUCallDisplayContextChangedNotification;
      v80 = 2112;
      *v81 = v6;
      *&v81[8] = 2112;
      *v82 = v12;
      *&v82[8] = 2112;
      v83 = self;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Posting %@ because DisplayContext changed from %@ to %@ for %@", buf, 0x2Au);
    }

    v25 = [(CSDCall *)self notificationCenter];
    [v25 postNotificationName:v24 object:self];
  }

  if (v73 != v71)
  {
    v26 = sub_100004778();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v79 = @"CSDCallMayRequireBreakBeforeMakeChangedNotification";
      v80 = 1024;
      *v81 = v73;
      *&v81[4] = 1024;
      *&v81[6] = v71;
      *v82 = 2112;
      *&v82[2] = self;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Posting %@ because mayRequireBreakBeforeMake changed from %d to %d for %@", buf, 0x22u);
    }

    v27 = [(CSDCall *)self notificationCenter];
    [v27 postNotificationName:@"CSDCallMayRequireBreakBeforeMakeChangedNotification" object:self];
  }

  if (v55 != v72)
  {
    v28 = sub_100004778();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v79 = @"CSDCallHasStartedOutgoingChangedNotification";
      v80 = 1024;
      *v81 = v55;
      *&v81[4] = 1024;
      *&v81[6] = v72;
      *v82 = 2112;
      *&v82[2] = self;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Posting %@ because hasStartedOutgoing changed from %d to %d for %@", buf, 0x22u);
    }

    v29 = [(CSDCall *)self notificationCenter];
    [v29 postNotificationName:@"CSDCallHasStartedOutgoingChangedNotification" object:self];
  }

  if (v56 != v54)
  {
    v30 = sub_100004778();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138413058;
      v79 = @"CSDCallHasAudioInterruptionChangedNotification";
      v80 = 1024;
      *v81 = v56;
      *&v81[4] = 1024;
      *&v81[6] = v54;
      *v82 = 2112;
      *&v82[2] = self;
      _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "Posting %@ because hasAudioInterruption changed from %d to %d for %@", buf, 0x22u);
    }

    v31 = [(CSDCall *)self notificationCenter];
    [v31 postNotificationName:@"CSDCallHasAudioInterruptionChangedNotification" object:self];
  }

  if (([(__CFString *)v5 isEqualToSet:v11]& 1) == 0)
  {
    v32 = sub_100004778();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412802;
      v79 = v5;
      v80 = 2112;
      *v81 = v11;
      *&v81[8] = 2112;
      *v82 = self;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "activeRemoteParticipants changed from %@ to %@ for %@", buf, 0x20u);
    }

    v33 = [v11 mutableCopy];
    [v33 minusSet:v5];
    if ([v33 count])
    {
      v34 = sub_100004778();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v79 = @"CSDCallRemoteParticipantJoinedNotification";
        _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_DEFAULT, "Posting %@", buf, 0xCu);
      }

      v35 = [(CSDCall *)self notificationCenter];
      [v35 postNotificationName:@"CSDCallRemoteParticipantJoinedNotification" object:self];
    }

    v36 = [(__CFString *)v5 mutableCopy];
    [v36 minusSet:v11];
    if ([v36 count])
    {
      v37 = sub_100004778();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v79 = @"CSDCallRemoteParticipantLeftNotification";
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "Posting %@", buf, 0xCu);
      }

      v38 = [(CSDCall *)self notificationCenter];
      [v38 postNotificationName:@"CSDCallRemoteParticipantLeftNotification" object:self];

      v17 = v67;
    }
  }

  if (v59 != v57)
  {
    v39 = sub_100004778();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79 = @"CSDCallOneToOneModeChangedNotification";
      _os_log_impl(&_mh_execute_header, v39, OS_LOG_TYPE_DEFAULT, "Posting %@", buf, 0xCu);
    }

    v40 = [(CSDCall *)self notificationCenter];
    [v40 postNotificationName:@"CSDCallOneToOneModeChangedNotification" object:self];
  }

  if (v61 != v58)
  {
    v41 = sub_100004778();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79 = @"CSDMediaPlaybackOnExternalDeviceChangedNotification";
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Posting %@", buf, 0xCu);
    }

    v42 = [(CSDCall *)self notificationCenter];
    [v42 postNotificationName:@"CSDMediaPlaybackOnExternalDeviceChangedNotification" object:self];
  }

  if (v63 != v60)
  {
    v43 = sub_100004778();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79 = @"CSDCallTransmissionStateChangedNotification";
      _os_log_impl(&_mh_execute_header, v43, OS_LOG_TYPE_DEFAULT, "Posting %@", buf, 0xCu);
    }

    v44 = [(CSDCall *)self notificationCenter];
    [v44 postNotificationName:@"CSDCallTransmissionStateChangedNotification" object:self];
  }

  if (v65 != v62)
  {
    v45 = sub_100004778();
    if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79 = @"CSDCallPrefersToPlayDuringWombatChangedNotification";
      _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Posting %@", buf, 0xCu);
    }

    v46 = [(CSDCall *)self notificationCenter];
    [v46 postNotificationName:@"CSDCallPrefersToPlayDuringWombatChangedNotification" object:self];
  }

  if (v64 != [(CSDCall *)self isUnderlyingLinksConnected])
  {
    v47 = sub_100004778();
    if (os_log_type_enabled(v47, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79 = @"CSDCallUnderlyingLinksConnectionChangedNotification";
      _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_DEFAULT, "Posting %@", buf, 0xCu);
    }

    v48 = [(CSDCall *)self notificationCenter];
    [v48 postNotificationName:@"CSDCallUnderlyingLinksConnectionChangedNotification" object:self];
  }

  if (v68 != v66)
  {
    v49 = sub_100004778();
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v79 = @"CSDCallAudioInterruptionProviderTypeChangedNotification";
      _os_log_impl(&_mh_execute_header, v49, OS_LOG_TYPE_DEFAULT, "Posting %@", buf, 0xCu);
    }

    v50 = [(CSDCall *)self notificationCenter];
    [v50 postNotificationName:@"CSDCallAudioInterruptionProviderTypeChangedNotification" object:self];
  }
}

- (void)handleAudioSessionActivationStateChangedTo:(id)a3
{
  -[CSDCall setHasAudioInterruption:](self, "setHasAudioInterruption:", [a3 BOOLValue]);
  v4 = [(CSDCall *)self notificationCenter];
  [v4 postNotificationName:@"CSDCallAudioInterruptionPropertiesChangedNotification" object:self];
}

- (void)idStatusUpdatedForDestinations:(id)a3 service:(id)a4
{
  v5 = a4;
  v6 = [(CSDCall *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = self;
    v10 = 2112;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%@ Received update about new query cache on service %@", &v8, 0x16u);
  }

  [(CSDCall *)self _refreshFaceTimeIDSStatus];
}

- (CSDCallDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

@end