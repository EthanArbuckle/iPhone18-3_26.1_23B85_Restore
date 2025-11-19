@interface CSDIDSChat
+ (NSUUID)faceTimeAppUUID;
- (BOOL)isConnected;
- (BOOL)isSendingAudio;
- (BOOL)isSendingAudioData;
- (BOOL)isSendingVideo;
- (CGSize)localLandscapeAspectRatio;
- (CGSize)localPortraitAspectRatio;
- (CSDIDSChat)initWithSession:(id)a3 remoteHandle:(id)a4 wantsVideo:(BOOL)a5;
- (CSDIDSChatDelegate)delegate;
- (CXCallFailureContext)failureContext;
- (NSDate)dateConnected;
- (NSDate)dateStartedConnecting;
- (NSString)crossDeviceIdentifier;
- (NSString)remoteFromID;
- (NSString)sessionUUID;
- (id)capabilities;
- (int)deviceRole;
- (int64_t)endedReason;
- (int64_t)inputAudioPowerSpectrumToken;
- (int64_t)outputAudioPowerSpectrumToken;
- (int64_t)spatialAudioSourceIdentifier;
- (int64_t)videoStreamToken;
- (unint64_t)initialLinkType;
- (void)_setDateEndedIfNecessary;
- (void)_setLocalAspectRatiosForVideoAspectRatioDescriptor:(id)a3;
- (void)answerWithVideoAspectRatioDescriptor:(id)a3;
- (void)cancelInvitationWithAnsweredElsewhere;
- (void)cancelInvitationWithDeclinedElsewhere;
- (void)cancelInvitationWithLocalHangup;
- (void)cancelOrDeclineInvitation;
- (void)conference:(id)a3 changedBytesOfDataUsed:(int64_t)a4;
- (void)conference:(id)a3 didReceiveData:(id)a4 forCallID:(int64_t)a5;
- (void)conference:(id)a3 endedWithReason:(int64_t)a4 error:(id)a5;
- (void)conference:(id)a3 inputFrequencyLevelChangedTo:(id)a4;
- (void)conference:(id)a3 inputLevelChangedTo:(float)a4;
- (void)conference:(id)a3 outputFrequencyLevelChangedTo:(id)a4;
- (void)conference:(id)a3 outputLevelChangedTo:(float)a4;
- (void)conference:(id)a3 remoteMediaStalled:(BOOL)a4;
- (void)conferenceFinishedPreparing:(id)a3;
- (void)conferenceStarted:(id)a3;
- (void)end;
- (void)mutedChangedForConference:(id)a3;
- (void)prepareConference;
- (void)receivedFirstRemoteFrameForConference:(id)a3;
- (void)remoteVideoPausedForConference:(id)a3;
- (void)sendDataUnreliably:(id)a3;
- (void)sendingAudioChangedForConference:(id)a3;
- (void)session:(id)a3 endedWithReason:(int)a4;
- (void)session:(id)a3 receivedData:(id)a4;
- (void)session:(id)a3 receivedInvitationAcceptWithData:(id)a4;
- (void)session:(id)a3 receivedInvitationCancelWithData:(id)a4;
- (void)session:(id)a3 receivedInvitationDeclineWithData:(id)a4;
- (void)sessionStarted:(id)a3;
- (void)setRelaying:(BOOL)a3;
- (void)setRemoteVideoPresentationSize:(CGSize)a3;
- (void)setRemoteVideoPresentationState:(int)a3;
- (void)startConnectionWithTransport:(id)a3;
- (void)startWithVideoAspectRatioDescriptor:(id)a3 inviteCompletion:(id)a4;
@end

@implementation CSDIDSChat

+ (NSUUID)faceTimeAppUUID
{
  if (qword_1006ACC48 != -1)
  {
    sub_100473F0C();
  }

  v3 = qword_1006ACC40;

  return v3;
}

- (CSDIDSChat)initWithSession:(id)a3 remoteHandle:(id)a4 wantsVideo:(BOOL)a5
{
  v9 = a3;
  v10 = a4;
  v20.receiver = self;
  v20.super_class = CSDIDSChat;
  v11 = [(CSDIDSChat *)&v20 init];
  if (v11)
  {
    v12 = +[TUCallCenter sharedInstance];
    v13 = [v12 queue];
    dispatch_assert_queue_V2(v13);

    objc_storeStrong(&v11->_session, a3);
    [(CSDIDSDualSession *)v11->_session setDelegate:v11];
    v14 = +[NSUUID UUID];
    UUID = v11->_UUID;
    v11->_UUID = v14;

    objc_storeStrong(&v11->_handle, a4);
    v11->_video = a5;
    v16 = [RTCReporting newHierarchyTokenFromParentToken:0];
    reportingHierarchyToken = v11->_reportingHierarchyToken;
    v11->_reportingHierarchyToken = v16;

    conferenceCreationBlock = v11->_conferenceCreationBlock;
    v11->_conferenceCreationBlock = &stru_10061B0F8;
  }

  return v11;
}

- (NSString)sessionUUID
{
  v2 = [(CSDIDSChat *)self session];
  v3 = [v2 UUID];

  return v3;
}

- (int64_t)videoStreamToken
{
  v2 = [(CSDIDSChat *)self conference];
  v3 = [v2 callID];

  return v3;
}

- (int64_t)inputAudioPowerSpectrumToken
{
  v2 = [(CSDIDSChat *)self conference];
  v3 = [v2 inputAudioPowerSpectrumToken];

  return v3;
}

- (int64_t)outputAudioPowerSpectrumToken
{
  v2 = [(CSDIDSChat *)self conference];
  v3 = [v2 outputAudioPowerSpectrumToken];

  return v3;
}

- (int64_t)spatialAudioSourceIdentifier
{
  v2 = [(CSDIDSChat *)self conference];
  v3 = [v2 callID];

  return v3;
}

- (NSDate)dateStartedConnecting
{
  v2 = [(CSDIDSChat *)self conference];
  v3 = [v2 dateStartedConnecting];

  return v3;
}

- (NSDate)dateConnected
{
  if ([(CSDIDSChat *)self isVideo])
  {
    v3 = [(CSDIDSChat *)self dateReceivedFirstRemoteFrame];
  }

  else
  {
    v4 = [(CSDIDSChat *)self conference];
    v3 = [v4 dateConnected];
  }

  return v3;
}

- (BOOL)isConnected
{
  v2 = [(CSDIDSChat *)self session];
  v3 = [v2 state] == 3;

  return v3;
}

- (int64_t)endedReason
{
  if ([(CSDIDSChat *)self hasSentInvitation])
  {
    v3 = [(CSDIDSChat *)self invitedPushTokens];
    v4 = [v3 count];

    if (!v4)
    {
      v8 = sub_100004778();
      if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
LABEL_26:
        v7 = 1;
LABEL_27:

        return v7;
      }

      v18 = 138412290;
      v19 = self;
      v9 = "Setting disconnected reason to call failed because invitation was sent but no push tokens were available to receive the invitation for call %@";
      v10 = v8;
      v11 = 12;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v18, v11);
      goto LABEL_26;
    }
  }

  v5 = [(CSDIDSChat *)self session];
  v6 = [v5 endedReason];

  v7 = -1;
  if (v6 > 2)
  {
    if ((v6 - 5) >= 2)
    {
      if (v6 == 3)
      {
        v8 = sub_100004778();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 134217984;
          v19 = 3;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Using call ended reason declined elsewhere because CSDIDSDualSession ended reason is %ld", &v18, 0xCu);
        }

        v7 = 5;
        goto LABEL_27;
      }

      if (v6 == 4)
      {
        v8 = sub_100004778();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 134217984;
          v19 = 4;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Using call ended reason unanswered because CSDIDSDualSession ended reason is %ld", &v18, 0xCu);
        }

        v7 = 3;
        goto LABEL_27;
      }

      return v7;
    }

    v8 = sub_100004778();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_26;
    }

    v18 = 134218242;
    v19 = v6;
    v20 = 2112;
    v21 = self;
    v9 = "Setting disconnected reason to call failed because CSDIDSDualSession ended reason is %ld for call %@";
    v10 = v8;
    v11 = 22;
    goto LABEL_20;
  }

  switch(v6)
  {
    case 0:
      goto LABEL_22;
    case 1:
      v12 = [(CSDIDSChat *)self conference];
      v13 = [v12 dateStartedConnecting];

      if (!v13)
      {
        v8 = sub_100004778();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 134217984;
          v19 = 1;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Using call ended reason remote ended because CSDIDSDualSession ended reason is %ld", &v18, 0xCu);
        }

        goto LABEL_39;
      }

LABEL_22:
      v14 = [(CSDIDSChat *)self conference];

      if (!v14)
      {
        return -1;
      }

      v15 = [(CSDIDSChat *)self conference];
      v16 = [v15 endedReason];

      if ((v16 - 3) < 5)
      {
        goto LABEL_24;
      }

      if (v16 != 2)
      {
        if (v16 == 1)
        {
LABEL_24:
          v8 = sub_100004778();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_100474098(self, v16, v8);
          }

          goto LABEL_26;
        }

        return -1;
      }

      v8 = sub_100004778();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 134217984;
        v7 = 2;
        v19 = 2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Using call ended reason remote ended because CSDAVConference ended reason is %ld", &v18, 0xCu);
        goto LABEL_27;
      }

LABEL_39:
      v7 = 2;
      goto LABEL_27;
    case 2:
      v8 = sub_100004778();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v18 = 134217984;
        v19 = 2;
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Using call ended reason answered elsewhere because CSDIDSDualSession ended reason is %ld", &v18, 0xCu);
      }

      v7 = 4;
      goto LABEL_27;
  }

  return v7;
}

- (CXCallFailureContext)failureContext
{
  if ([(CSDIDSChat *)self hasSentInvitation])
  {
    v3 = [(CSDIDSChat *)self invitedPushTokens];
    v4 = [v3 count];

    if (!v4)
    {
      v11 = objc_alloc_init(CXCallFailureContext);
      v7 = v11;
      v12 = 1;
      goto LABEL_11;
    }
  }

  v5 = [(CSDIDSChat *)self session];
  v6 = [v5 endedReason];

  if (v6 == 6)
  {
    v7 = objc_alloc_init(CXCallFailureContext);
    [v7 setFailureReason:0];
    v8 = [(CSDIDSChat *)self session];
    [v7 setProviderErrorCode:{objc_msgSend(v8, "underlyingErrorCode")}];

    goto LABEL_12;
  }

  v7 = [(CSDIDSChat *)self conference];

  if (v7)
  {
    v9 = [(CSDIDSChat *)self conference];
    v10 = [v9 endedReason];

    if (v10 == 6)
    {
      v11 = objc_alloc_init(CXCallFailureContext);
      v7 = v11;
      v12 = 5;
      goto LABEL_11;
    }

    if (v10 == 7)
    {
      v11 = objc_alloc_init(CXCallFailureContext);
      v7 = v11;
      v12 = 4;
LABEL_11:
      [v11 setFailureReason:v12];
      goto LABEL_12;
    }

    v7 = 0;
  }

LABEL_12:

  return v7;
}

- (NSString)crossDeviceIdentifier
{
  v2 = [(CSDIDSChat *)self session];
  v3 = [v2 UUID];

  return v3;
}

- (NSString)remoteFromID
{
  v2 = [(CSDIDSChat *)self session];
  v3 = [v2 remoteFromID];

  return v3;
}

- (unint64_t)initialLinkType
{
  v2 = [(CSDIDSChat *)self session];
  v3 = [v2 initialLinkType];

  return v3;
}

- (void)_setDateEndedIfNecessary
{
  v3 = [(CSDIDSChat *)self dateEnded];

  if (v3)
  {
    return;
  }

  if ([(CSDIDSChat *)self hasSentInvitation])
  {
    v4 = [(CSDIDSChat *)self invitedPushTokens];
    v5 = [v4 count];

    if (!v5)
    {
LABEL_9:
      v9 = +[NSDate date];
      [(CSDIDSChat *)self setDateEnded:v9];
      goto LABEL_10;
    }
  }

  v6 = [(CSDIDSChat *)self conference];

  if (!v6)
  {
    v11 = [(CSDIDSChat *)self session];

    if (!v11)
    {
      goto LABEL_11;
    }

    v12 = [(CSDIDSChat *)self session];
    v13 = [v12 state];

    if (v13 != 5)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v7 = [(CSDIDSChat *)self conference];
  v8 = [v7 state];

  if (v8 != 7)
  {
    goto LABEL_11;
  }

  v9 = [(CSDIDSChat *)self conference];
  v10 = [v9 dateEnded];
  [(CSDIDSChat *)self setDateEnded:v10];

LABEL_10:
LABEL_11:
  v17 = [(CSDIDSChat *)self delegate];
  v14 = [(CSDIDSChat *)self dateEnded];
  if (v14)
  {
    v15 = v14;
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      [v17 chatEnded:self];
    }
  }
}

- (void)_setLocalAspectRatiosForVideoAspectRatioDescriptor:(id)a3
{
  v4 = [(CSDIDSChat *)self delegate];
  [v4 localPortraitAspectRatioForChat:self];
  v6 = v5;
  v8 = v7;

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v16.width = v6;
    v16.height = v8;
    v10 = NSStringFromSize(v16);
    v17.width = v8;
    v17.height = v6;
    v11 = NSStringFromSize(v17);
    v12 = 138412546;
    v13 = v10;
    v14 = 2112;
    v15 = v11;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting local portrait aspect ratio %@ and local landscape aspect ratio %@", &v12, 0x16u);
  }

  [(CSDIDSChat *)self setLocalPortraitAspectRatio:v6, v8];
  [(CSDIDSChat *)self setLocalLandscapeAspectRatio:v8, v6];
}

- (id)capabilities
{
  if (qword_1006ACC58 != -1)
  {
    sub_100474120();
  }

  v3 = objc_alloc_init(VCCapabilities);
  [v3 setIsKeyExchangeEnabled:(byte_1006ACC50 & 1) == 0];
  [v3 setIsAudioEnabled:1];
  [v3 setIsVideoEnabled:{-[CSDIDSChat isVideo](self, "isVideo")}];
  [v3 setIsDuplexAudioOnly:{objc_msgSend(v3, "isVideoEnabled") ^ 1}];
  [v3 setIsRelayForced:0];
  [v3 setIsRelayEnabled:1];
  [v3 setIsAudioPausedToStart:{-[CSDIDSChat shouldStartAudioPaused](self, "shouldStartAudioPaused")}];
  [v3 setIsVideoPausedToStart:{-[CSDIDSChat shouldStartVideoPaused](self, "shouldStartVideoPaused")}];
  [v3 setDeviceRole:{-[CSDIDSChat deviceRole](self, "deviceRole")}];

  return v3;
}

- (int)deviceRole
{
  if ([(CSDIDSChat *)self isRelaying])
  {
    return 3;
  }

  else
  {
    return 0;
  }
}

- (void)startWithVideoAspectRatioDescriptor:(id)a3 inviteCompletion:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "", v9, 2u);
  }

  [(CSDIDSChat *)self _setLocalAspectRatiosForVideoAspectRatioDescriptor:v7];
  [(CSDIDSChat *)self setInviteCompletion:v6];

  [(CSDIDSChat *)self prepareConference];
}

- (void)answerWithVideoAspectRatioDescriptor:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "videoAspectRatioDescriptor: %@", &v7, 0xCu);
  }

  [(CSDIDSChat *)self _setLocalAspectRatiosForVideoAspectRatioDescriptor:v4];
  v6 = +[NSUUID UUID];
  [(CSDIDSChat *)self setUpgradeSessionUUID:v6];

  [(CSDIDSChat *)self prepareConference];
}

- (void)cancelOrDeclineInvitation
{
  v3 = [(CSDIDSChat *)self session];
  v4 = [v3 isInitiator];

  v5 = sub_100004778();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Canceling session", buf, 2u);
    }

    v7 = [(CSDIDSChat *)self session];
    [v7 cancelInvitationWithReason:0];
  }

  else
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Declining session", v8, 2u);
    }

    v7 = [(CSDIDSChat *)self session];
    [v7 declineInvitation];
  }
}

- (void)end
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    v16 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "end self: %@", &v15, 0xCu);
  }

  v4 = [(CSDIDSChat *)self dateEnded];

  if (!v4)
  {
    v5 = [(CSDIDSChat *)self conference];
    if (v5)
    {
      v6 = v5;
      v7 = [(CSDIDSChat *)self conference];
      if ([v7 state] <= 3)
      {
      }

      else
      {
        v8 = [(CSDIDSChat *)self conference];
        v9 = [v8 state];

        if (v9 <= 5)
        {
          v10 = sub_100004778();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v15) = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Stopping conference", &v15, 2u);
          }

          v11 = [(CSDIDSChat *)self conference];
          [v11 stop];
          goto LABEL_16;
        }
      }
    }

    v12 = [(CSDIDSChat *)self session];
    v13 = [v12 state];

    if (v13 == 1)
    {
      [(CSDIDSChat *)self cancelOrDeclineInvitation];
LABEL_17:
      [(CSDIDSChat *)self _handlePushTokensInvited:&__NSArray0__struct didSendInvitation:0 didCancelInvitation:1];
      return;
    }

    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v15) = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Ending session", &v15, 2u);
    }

    v11 = [(CSDIDSChat *)self session];
    [v11 end];
LABEL_16:

    goto LABEL_17;
  }
}

- (void)cancelInvitationWithAnsweredElsewhere
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "for call %@", &v6, 0xCu);
  }

  v4 = [(CSDIDSChat *)self session];
  [v4 cancelInvitationWithReason:1];

  v5 = [(CSDIDSChat *)self conference];
  [v5 cancel];
}

- (void)cancelInvitationWithDeclinedElsewhere
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "for call %@", &v6, 0xCu);
  }

  v4 = [(CSDIDSChat *)self session];
  [v4 cancelInvitationWithReason:2];

  v5 = [(CSDIDSChat *)self conference];
  [v5 cancel];
}

- (void)cancelInvitationWithLocalHangup
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "for call %@", &v6, 0xCu);
  }

  v4 = [(CSDIDSChat *)self session];
  [v4 cancelInvitationWithReason:0];

  v5 = [(CSDIDSChat *)self conference];
  [v5 cancel];
}

- (void)sendDataUnreliably:(id)a3
{
  v4 = a3;
  v5 = [(CSDIDSChat *)self conference];
  [v5 sendData:v4];
}

- (BOOL)isSendingAudio
{
  v2 = [(CSDIDSChat *)self conference];
  v3 = [v2 isSendingAudio];

  return v3;
}

- (BOOL)isSendingAudioData
{
  v2 = [(CSDIDSChat *)self conference];
  v3 = [v2 isSendingAudioData];

  return v3;
}

- (BOOL)isSendingVideo
{
  v2 = [(CSDIDSChat *)self conference];
  v3 = [v2 isSendingVideo];

  return v3;
}

- (void)setRelaying:(BOOL)a3
{
  if (self->_relaying != a3)
  {
    v3 = a3;
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109634;
      v8[1] = [(CSDIDSChat *)self isRelaying];
      v9 = 1024;
      v10 = v3;
      v11 = 2112;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting relaying from %d to %d for chat %@", v8, 0x18u);
    }

    self->_relaying = v3;
    v6 = [(CSDIDSChat *)self deviceRole];
    v7 = [(CSDIDSChat *)self conference];
    [v7 setDeviceRole:v6];
  }
}

- (void)startConnectionWithTransport:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "transport: %@", &v11, 0xCu);
  }

  v6 = [(CSDIDSChat *)self conference];
  v7 = [(CSDIDSChat *)self remoteFromID];
  v8 = [(CSDIDSChat *)self crossDeviceIdentifier];
  [v6 setRemoteIDSDestinationURI:v7 crossDeviceIdentifier:v8];

  v9 = [(CSDIDSChat *)self conference];
  [v9 startConnectionWithTransport:v4];

  v10 = [(CSDIDSChat *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v10 chatStartedConnecting:self];
  }
}

- (void)prepareConference
{
  v3 = [(CSDIDSChat *)self conferenceCreationBlock];
  v4 = v3[2]();
  [(CSDIDSChat *)self setConference:v4];

  v5 = [(CSDIDSChat *)self conference];
  [v5 setDelegate:self];

  v6 = +[TUCallCenter sharedInstance];
  v7 = [v6 queue];
  v8 = [(CSDIDSChat *)self conference];
  [v8 setDelegateQueue:v7];

  v14 = objc_alloc_init(CSDAVConferenceConfiguration);
  [(CSDAVConferenceConfiguration *)v14 setRequiresInviteDictionary:1];
  [(CSDAVConferenceConfiguration *)v14 setCaller:[(CSDIDSChat *)self isOutgoing]];
  v9 = [(CSDIDSChat *)self capabilities];
  [(CSDAVConferenceConfiguration *)v14 setCapabilities:v9];

  v10 = [objc_opt_class() faceTimeAppUUID];
  [(CSDAVConferenceConfiguration *)v14 setClientUUID:v10];

  v11 = [(CSDIDSChat *)self reportingHierarchyToken];
  [(CSDAVConferenceConfiguration *)v14 setReportingHierarchyToken:v11];

  v12 = [(CSDIDSChat *)self remoteInviteDictionary];
  [(CSDAVConferenceConfiguration *)v14 setRemoteInviteDictionary:v12];

  [(CSDIDSChat *)self localPortraitAspectRatio];
  [(CSDAVConferenceConfiguration *)v14 setLocalPortraitAspectRatio:?];
  [(CSDIDSChat *)self localLandscapeAspectRatio];
  [(CSDAVConferenceConfiguration *)v14 setLocalLandscapeAspectRatio:?];
  v13 = [(CSDIDSChat *)self conference];
  [v13 prepareWithConfiguration:v14];
}

- (void)setRemoteVideoPresentationSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(CSDIDSChat *)self conference];
  [v5 setRemoteVideoPresentationSize:{width, height}];
}

- (void)setRemoteVideoPresentationState:(int)a3
{
  if (a3 == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = a3 == 1;
  }

  v4 = [(CSDIDSChat *)self conference];
  [v4 setRemoteVideoPresentationState:v3];
}

- (void)sessionStarted:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sessionStarted: %@", &v13, 0xCu);
  }

  v6 = [(CSDIDSChat *)self delegate];
  v7 = [v6 isMediaAllowedForChat:self];

  if (v7)
  {
    v8 = [(CSDIDSChat *)self conference];
    v9 = [v8 remoteInviteDictionary];

    if (v9)
    {
      v10 = [(CSDIDSChat *)v4 transport];
      [(CSDIDSChat *)self startConnectionWithTransport:v10];
    }

    else
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [(CSDIDSChat *)self conference];
        v12 = [v11 state];
        v13 = 67109120;
        LODWORD(v14) = v12;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Not starting connection because conference state is %d", &v13, 8u);
      }
    }
  }

  else
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      v14 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Not starting connection because the chat is not allowed to start media: %@", &v13, 0xCu);
    }
  }
}

- (void)session:(id)a3 endedWithReason:(int)a4
{
  v6 = a3;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = v6;
    v11 = 1024;
    v12 = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "session %@ endedWithReason %d", &v9, 0x12u);
  }

  v8 = [(CSDIDSChat *)self conference];
  [v8 stop];

  [(CSDIDSChat *)self _handlePushTokensInvited:&__NSArray0__struct didSendInvitation:0 didCancelInvitation:1];
  [(CSDIDSChat *)self _setDateEndedIfNecessary];
}

- (void)session:(id)a3 receivedInvitationAcceptWithData:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [[CSDMessagingCallMessage alloc] initWithData:v7];

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v43 = v6;
    *&v43[8] = 2112;
    v44 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "session %@ receivedInvitationAcceptWithData %@", buf, 0x16u);
  }

  v10 = [(CSDIDSChat *)self delegate];
  v11 = [v10 isMediaAllowedForChat:self];

  if ((v11 & 1) == 0)
  {
    v16 = sub_100004778();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    *buf = 138412290;
    *v43 = self;
    v30 = "[WARN] Dropping invitation accept since the chat is not allowed to start media: %@";
LABEL_25:
    v31 = v16;
    v32 = 12;
LABEL_26:
    _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
    goto LABEL_34;
  }

  if (![(CSDIDSChat *)self isOutgoing])
  {
    v16 = sub_100004778();
    if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_34;
    }

    *buf = 138412290;
    *v43 = self;
    v30 = "[WARN] Ignoring invitation accept since chat is incoming: %@";
    goto LABEL_25;
  }

  v12 = [v6 remoteFromID];
  v13 = [v12 length];

  if (v13)
  {
    v14 = [v6 remoteFromID];
    v41 = 0;
    v15 = [v14 _stripPotentialTokenURIWithToken:&v41];
    v16 = v41;

    if (![v16 length])
    {
      v29 = sub_100004778();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_100474210(v29);
      }

      goto LABEL_33;
    }

    v17 = [(CSDIDSChat *)self invitedPushTokens];
    v18 = [v17 containsObject:v16];

    if ((v18 & 1) == 0)
    {
      v29 = sub_100004778();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        sub_100474134(v29);
      }

      goto LABEL_33;
    }

    if (!v8)
    {
      v29 = sub_100004778();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring incoming accept since accompanying message was nil", buf, 2u);
      }

      goto LABEL_33;
    }

    if ([(CSDMessagingCallMessage *)v8 type]!= 1)
    {
      v29 = sub_100004778();
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        v33 = [(CSDMessagingCallMessage *)v8 type];
        if (v33 >= 3)
        {
          v34 = [NSString stringWithFormat:@"(unknown: %i)", v33];
        }

        else
        {
          v34 = off_10061B138[v33];
        }

        *buf = 138412290;
        *v43 = v34;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring incoming message since message with type=%@ was not invite.", buf, 0xCu);
      }

      goto LABEL_33;
    }

    v19 = [(CSDMessagingCallMessage *)v8 inviteData];
    v20 = [v19 faceTimeInviteDictionary];
    v21 = [(CSDIDSChat *)self conference];
    [v21 setRemoteInviteDictionary:v20];

    [(CSDIDSChat *)self setRemoteMomentsAvailable:[(CSDMessagingCallMessage *)v8 isMomentsAvailable]];
    if ([(CSDMessagingCallMessage *)v8 hasProtoUpgradeSessionUUID]&& ([(CSDIDSChat *)self upgradeSessionUUID], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
    {
      v39 = [NSUUID alloc];
      v40 = [(CSDMessagingCallMessage *)v8 protoUpgradeSessionUUID];
      v23 = [v39 initWithUUIDString:v40];

      if (v23)
      {
        [(CSDIDSChat *)self setUpgradeSessionUUID:v23];
LABEL_15:

        if ([(CSDMessagingCallMessage *)v8 hasProtoWantsVideo])
        {
          if ([(CSDIDSChat *)self isVideo])
          {
            v25 = [(CSDIDSChat *)self isVideo];
            v26 = [(CSDMessagingCallMessage *)v8 protoWantsVideo];
            [(CSDIDSChat *)self setVideo:[(CSDMessagingCallMessage *)v8 protoWantsVideo]];
            if (v25 != v26)
            {
              v27 = [(CSDIDSChat *)self conference];
              v28 = [(CSDIDSChat *)self capabilities];
              [v27 updateCapabilities:v28];
            }
          }
        }

        if ([v6 state] == 3)
        {
          v29 = [v6 transport];
          [(CSDIDSChat *)self startConnectionWithTransport:v29];
        }

        else
        {
          v29 = sub_100004778();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
          {
            v35 = [(CSDIDSChat *)self session];
            v36 = [v35 state];
            v37 = [(CSDIDSChat *)self conference];
            v38 = [v37 state];
            *buf = 67109376;
            *v43 = v36;
            *&v43[4] = 1024;
            *&v43[6] = v38;
            _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "Not starting connecting because session state is %d and conference state is %d", buf, 0xEu);
          }
        }

LABEL_33:

        goto LABEL_34;
      }

      v24 = sub_100004778();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        sub_100474178(v8, v24);
      }
    }

    else
    {
      v23 = sub_100004778();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      v24 = [(CSDIDSChat *)self upgradeSessionUUID];
      *buf = 138412546;
      *v43 = v8;
      *&v43[8] = 2112;
      v44 = v24;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[WARN] Not setting upgradeSessionUUID for message: %@ self.upgradeSessionUUID: %@", buf, 0x16u);
    }

    goto LABEL_15;
  }

  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v30 = "[WARN] Ignoring invitation accept since there is no remote from ID set on the session.";
    v31 = v16;
    v32 = 2;
    goto LABEL_26;
  }

LABEL_34:
}

- (void)session:(id)a3 receivedInvitationDeclineWithData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "session %@ receivedInvitationDeclineWithData %@", &v8, 0x16u);
  }
}

- (void)session:(id)a3 receivedInvitationCancelWithData:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "session %@ receivedInvitationCancelWithData %@", &v8, 0x16u);
  }
}

- (void)session:(id)a3 receivedData:(id)a4
{
  v5 = a3;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"non-nil";
    if (!a4)
    {
      v7 = @"nil";
    }

    v8 = 138412546;
    v9 = v5;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "session %@ receivedData (data is %@)", &v8, 0x16u);
  }
}

- (void)conferenceFinishedPreparing:(id)a3
{
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "", &v25, 2u);
  }

  v5 = [(CSDIDSChat *)self delegate];
  v6 = [objc_opt_class() faceTimeAppUUID];
  v7 = [(CSDIDSChat *)self session];
  [v7 setClientUUID:v6];

  v8 = [v5 isWiFiAllowedForChat:self];
  v9 = [(CSDIDSChat *)self session];
  [v9 setWiFiAllowed:v8];

  v10 = [v5 isCellularDataAllowedForChat:self];
  v11 = [(CSDIDSChat *)self session];
  [v11 setCellularDataAllowed:v10];

  v12 = [v5 isCellularDataPreferredForChat:self];
  v13 = [(CSDIDSChat *)self session];
  [v13 setCellularDataPreferred:v12];

  v14 = objc_alloc_init(CSDMessagingCallMessage);
  [(CSDMessagingCallMessage *)v14 addProtocolVersion];
  [(CSDMessagingCallMessage *)v14 setType:1];
  v15 = [CSDMessagingAVConferenceInviteData alloc];
  v16 = [(CSDIDSChat *)self conference];
  v17 = [v16 localInviteDictionary];
  v18 = [(CSDMessagingAVConferenceInviteData *)v15 initWithFaceTimeInviteDictionary:v17];
  [(CSDMessagingCallMessage *)v14 setInviteData:v18];

  [(CSDMessagingCallMessage *)v14 setShouldSuppressInCallUI:[(CSDIDSChat *)self shouldSuppressInCallUI]];
  v19 = [(CSDIDSChat *)self upgradeSessionUUID];
  v20 = [v19 UUIDString];
  [(CSDMessagingCallMessage *)v14 setProtoUpgradeSessionUUID:v20];

  if (objc_opt_respondsToSelector())
  {
    -[CSDMessagingCallMessage setMomentsAvailable:](v14, "setMomentsAvailable:", [v5 isMomentsAvailableForChat:self]);
  }

  [(CSDMessagingCallMessage *)v14 setProtoWantsVideo:[(CSDIDSChat *)self isVideo]];
  v21 = sub_100004778();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "message: %@", &v25, 0xCu);
  }

  v22 = [(CSDIDSChat *)self isOutgoing];
  v23 = [(CSDIDSChat *)self session];
  v24 = [(CSDMessagingCallMessage *)v14 data];
  if (v22)
  {
    [v23 sendInvitationWithData:v24];
  }

  else
  {
    [v23 acceptInvitationWithData:v24];
  }
}

- (void)conferenceStarted:(id)a3
{
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  if ([(CSDIDSChat *)self isVideo])
  {
    v5 = dispatch_time(0, 3000000000);
    v6 = +[TUCallCenter sharedInstance];
    v7 = [v6 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DB6E0;
    block[3] = &unk_100619D38;
    block[4] = self;
    dispatch_after(v5, v7, block);
  }

  else
  {
    v8 = [(CSDIDSChat *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v8 chatConnected:self];
    }
  }
}

- (void)conference:(id)a3 endedWithReason:(int64_t)a4 error:(id)a5
{
  v7 = a5;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    v12 = a4;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "reason=%ld error=%@", &v11, 0x16u);
  }

  v9 = [(CSDIDSChat *)self session];
  v10 = [v9 state];

  if (v10 == 1)
  {
    [(CSDIDSChat *)self cancelOrDeclineInvitation];
  }

  [(CSDIDSChat *)self _setDateEndedIfNecessary];
}

- (void)mutedChangedForConference:(id)a3
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }
}

- (void)sendingAudioChangedForConference:(id)a3
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }
}

- (void)receivedFirstRemoteFrameForConference:(id)a3
{
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "", v8, 2u);
  }

  v5 = [(CSDIDSChat *)self dateReceivedFirstRemoteFrame];

  if (!v5)
  {
    v6 = +[NSDate date];
    [(CSDIDSChat *)self setDateReceivedFirstRemoteFrame:v6];

    v7 = [(CSDIDSChat *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [v7 chatConnected:self];
    }
  }
}

- (void)remoteVideoPausedForConference:(id)a3
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }
}

- (void)conference:(id)a3 remoteMediaStalled:(BOOL)a4
{
  if (a4)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remote media stalled for chat: %@. Reconnecting IDS session.", &v7, 0xCu);
    }

    v6 = [(CSDIDSChat *)self session];
    [v6 reconnectSession];
  }
}

- (void)conference:(id)a3 inputFrequencyLevelChangedTo:(id)a4
{
  v6 = a4;
  v5 = [(CSDIDSChat *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 chat:self inputFrequencyLevelChangedTo:v6];
  }
}

- (void)conference:(id)a3 outputFrequencyLevelChangedTo:(id)a4
{
  v6 = a4;
  v5 = [(CSDIDSChat *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 chat:self outputFrequencyLevelChangedTo:v6];
  }
}

- (void)conference:(id)a3 inputLevelChangedTo:(float)a4
{
  v7 = [(CSDIDSChat *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    *&v6 = a4;
    [v7 chat:self inputLevelChangedTo:v6];
  }
}

- (void)conference:(id)a3 outputLevelChangedTo:(float)a4
{
  v7 = [(CSDIDSChat *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    *&v6 = a4;
    [v7 chat:self outputLevelChangedTo:v6];
  }
}

- (void)conference:(id)a3 changedBytesOfDataUsed:(int64_t)a4
{
  v6 = [(CSDIDSChat *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 chat:self changedBytesOfDataUsed:a4];
  }
}

- (void)conference:(id)a3 didReceiveData:(id)a4 forCallID:(int64_t)a5
{
  v7 = a4;
  v6 = [(CSDIDSChat *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [v6 chat:self receivedData:v7];
  }
}

- (CSDIDSChatDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (CGSize)localLandscapeAspectRatio
{
  width = self->_localLandscapeAspectRatio.width;
  height = self->_localLandscapeAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

- (CGSize)localPortraitAspectRatio
{
  width = self->_localPortraitAspectRatio.width;
  height = self->_localPortraitAspectRatio.height;
  result.height = height;
  result.width = width;
  return result;
}

@end