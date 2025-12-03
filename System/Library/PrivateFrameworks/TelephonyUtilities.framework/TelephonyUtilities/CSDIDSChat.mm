@interface CSDIDSChat
+ (NSUUID)faceTimeAppUUID;
- (BOOL)isConnected;
- (BOOL)isSendingAudio;
- (BOOL)isSendingAudioData;
- (BOOL)isSendingVideo;
- (CGSize)localLandscapeAspectRatio;
- (CGSize)localPortraitAspectRatio;
- (CSDIDSChat)initWithSession:(id)session remoteHandle:(id)handle wantsVideo:(BOOL)video;
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
- (void)_setLocalAspectRatiosForVideoAspectRatioDescriptor:(id)descriptor;
- (void)answerWithVideoAspectRatioDescriptor:(id)descriptor;
- (void)cancelInvitationWithAnsweredElsewhere;
- (void)cancelInvitationWithDeclinedElsewhere;
- (void)cancelInvitationWithLocalHangup;
- (void)cancelOrDeclineInvitation;
- (void)conference:(id)conference changedBytesOfDataUsed:(int64_t)used;
- (void)conference:(id)conference didReceiveData:(id)data forCallID:(int64_t)d;
- (void)conference:(id)conference endedWithReason:(int64_t)reason error:(id)error;
- (void)conference:(id)conference inputFrequencyLevelChangedTo:(id)to;
- (void)conference:(id)conference inputLevelChangedTo:(float)to;
- (void)conference:(id)conference outputFrequencyLevelChangedTo:(id)to;
- (void)conference:(id)conference outputLevelChangedTo:(float)to;
- (void)conference:(id)conference remoteMediaStalled:(BOOL)stalled;
- (void)conferenceFinishedPreparing:(id)preparing;
- (void)conferenceStarted:(id)started;
- (void)end;
- (void)mutedChangedForConference:(id)conference;
- (void)prepareConference;
- (void)receivedFirstRemoteFrameForConference:(id)conference;
- (void)remoteVideoPausedForConference:(id)conference;
- (void)sendDataUnreliably:(id)unreliably;
- (void)sendingAudioChangedForConference:(id)conference;
- (void)session:(id)session endedWithReason:(int)reason;
- (void)session:(id)session receivedData:(id)data;
- (void)session:(id)session receivedInvitationAcceptWithData:(id)data;
- (void)session:(id)session receivedInvitationCancelWithData:(id)data;
- (void)session:(id)session receivedInvitationDeclineWithData:(id)data;
- (void)sessionStarted:(id)started;
- (void)setRelaying:(BOOL)relaying;
- (void)setRemoteVideoPresentationSize:(CGSize)size;
- (void)setRemoteVideoPresentationState:(int)state;
- (void)startConnectionWithTransport:(id)transport;
- (void)startWithVideoAspectRatioDescriptor:(id)descriptor inviteCompletion:(id)completion;
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

- (CSDIDSChat)initWithSession:(id)session remoteHandle:(id)handle wantsVideo:(BOOL)video
{
  sessionCopy = session;
  handleCopy = handle;
  v20.receiver = self;
  v20.super_class = CSDIDSChat;
  v11 = [(CSDIDSChat *)&v20 init];
  if (v11)
  {
    v12 = +[TUCallCenter sharedInstance];
    queue = [v12 queue];
    dispatch_assert_queue_V2(queue);

    objc_storeStrong(&v11->_session, session);
    [(CSDIDSDualSession *)v11->_session setDelegate:v11];
    v14 = +[NSUUID UUID];
    UUID = v11->_UUID;
    v11->_UUID = v14;

    objc_storeStrong(&v11->_handle, handle);
    v11->_video = video;
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
  session = [(CSDIDSChat *)self session];
  uUID = [session UUID];

  return uUID;
}

- (int64_t)videoStreamToken
{
  conference = [(CSDIDSChat *)self conference];
  callID = [conference callID];

  return callID;
}

- (int64_t)inputAudioPowerSpectrumToken
{
  conference = [(CSDIDSChat *)self conference];
  inputAudioPowerSpectrumToken = [conference inputAudioPowerSpectrumToken];

  return inputAudioPowerSpectrumToken;
}

- (int64_t)outputAudioPowerSpectrumToken
{
  conference = [(CSDIDSChat *)self conference];
  outputAudioPowerSpectrumToken = [conference outputAudioPowerSpectrumToken];

  return outputAudioPowerSpectrumToken;
}

- (int64_t)spatialAudioSourceIdentifier
{
  conference = [(CSDIDSChat *)self conference];
  callID = [conference callID];

  return callID;
}

- (NSDate)dateStartedConnecting
{
  conference = [(CSDIDSChat *)self conference];
  dateStartedConnecting = [conference dateStartedConnecting];

  return dateStartedConnecting;
}

- (NSDate)dateConnected
{
  if ([(CSDIDSChat *)self isVideo])
  {
    dateReceivedFirstRemoteFrame = [(CSDIDSChat *)self dateReceivedFirstRemoteFrame];
  }

  else
  {
    conference = [(CSDIDSChat *)self conference];
    dateReceivedFirstRemoteFrame = [conference dateConnected];
  }

  return dateReceivedFirstRemoteFrame;
}

- (BOOL)isConnected
{
  session = [(CSDIDSChat *)self session];
  v3 = [session state] == 3;

  return v3;
}

- (int64_t)endedReason
{
  if ([(CSDIDSChat *)self hasSentInvitation])
  {
    invitedPushTokens = [(CSDIDSChat *)self invitedPushTokens];
    v4 = [invitedPushTokens count];

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
      selfCopy = self;
      v9 = "Setting disconnected reason to call failed because invitation was sent but no push tokens were available to receive the invitation for call %@";
      v10 = v8;
      v11 = 12;
LABEL_20:
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, v9, &v18, v11);
      goto LABEL_26;
    }
  }

  session = [(CSDIDSChat *)self session];
  endedReason = [session endedReason];

  v7 = -1;
  if (endedReason > 2)
  {
    if ((endedReason - 5) >= 2)
    {
      if (endedReason == 3)
      {
        v8 = sub_100004778();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 134217984;
          selfCopy = 3;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Using call ended reason declined elsewhere because CSDIDSDualSession ended reason is %ld", &v18, 0xCu);
        }

        v7 = 5;
        goto LABEL_27;
      }

      if (endedReason == 4)
      {
        v8 = sub_100004778();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 134217984;
          selfCopy = 4;
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
    selfCopy = endedReason;
    v20 = 2112;
    selfCopy2 = self;
    v9 = "Setting disconnected reason to call failed because CSDIDSDualSession ended reason is %ld for call %@";
    v10 = v8;
    v11 = 22;
    goto LABEL_20;
  }

  switch(endedReason)
  {
    case 0:
      goto LABEL_22;
    case 1:
      conference = [(CSDIDSChat *)self conference];
      dateStartedConnecting = [conference dateStartedConnecting];

      if (!dateStartedConnecting)
      {
        v8 = sub_100004778();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v18 = 134217984;
          selfCopy = 1;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Using call ended reason remote ended because CSDIDSDualSession ended reason is %ld", &v18, 0xCu);
        }

        goto LABEL_39;
      }

LABEL_22:
      conference2 = [(CSDIDSChat *)self conference];

      if (!conference2)
      {
        return -1;
      }

      conference3 = [(CSDIDSChat *)self conference];
      endedReason2 = [conference3 endedReason];

      if ((endedReason2 - 3) < 5)
      {
        goto LABEL_24;
      }

      if (endedReason2 != 2)
      {
        if (endedReason2 == 1)
        {
LABEL_24:
          v8 = sub_100004778();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            sub_100474098(self, endedReason2, v8);
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
        selfCopy = 2;
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
        selfCopy = 2;
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
    invitedPushTokens = [(CSDIDSChat *)self invitedPushTokens];
    v4 = [invitedPushTokens count];

    if (!v4)
    {
      v11 = objc_alloc_init(CXCallFailureContext);
      conference = v11;
      v12 = 1;
      goto LABEL_11;
    }
  }

  session = [(CSDIDSChat *)self session];
  endedReason = [session endedReason];

  if (endedReason == 6)
  {
    conference = objc_alloc_init(CXCallFailureContext);
    [conference setFailureReason:0];
    session2 = [(CSDIDSChat *)self session];
    [conference setProviderErrorCode:{objc_msgSend(session2, "underlyingErrorCode")}];

    goto LABEL_12;
  }

  conference = [(CSDIDSChat *)self conference];

  if (conference)
  {
    conference2 = [(CSDIDSChat *)self conference];
    endedReason2 = [conference2 endedReason];

    if (endedReason2 == 6)
    {
      v11 = objc_alloc_init(CXCallFailureContext);
      conference = v11;
      v12 = 5;
      goto LABEL_11;
    }

    if (endedReason2 == 7)
    {
      v11 = objc_alloc_init(CXCallFailureContext);
      conference = v11;
      v12 = 4;
LABEL_11:
      [v11 setFailureReason:v12];
      goto LABEL_12;
    }

    conference = 0;
  }

LABEL_12:

  return conference;
}

- (NSString)crossDeviceIdentifier
{
  session = [(CSDIDSChat *)self session];
  uUID = [session UUID];

  return uUID;
}

- (NSString)remoteFromID
{
  session = [(CSDIDSChat *)self session];
  remoteFromID = [session remoteFromID];

  return remoteFromID;
}

- (unint64_t)initialLinkType
{
  session = [(CSDIDSChat *)self session];
  initialLinkType = [session initialLinkType];

  return initialLinkType;
}

- (void)_setDateEndedIfNecessary
{
  dateEnded = [(CSDIDSChat *)self dateEnded];

  if (dateEnded)
  {
    return;
  }

  if ([(CSDIDSChat *)self hasSentInvitation])
  {
    invitedPushTokens = [(CSDIDSChat *)self invitedPushTokens];
    v5 = [invitedPushTokens count];

    if (!v5)
    {
LABEL_9:
      conference3 = +[NSDate date];
      [(CSDIDSChat *)self setDateEnded:conference3];
      goto LABEL_10;
    }
  }

  conference = [(CSDIDSChat *)self conference];

  if (!conference)
  {
    session = [(CSDIDSChat *)self session];

    if (!session)
    {
      goto LABEL_11;
    }

    session2 = [(CSDIDSChat *)self session];
    state = [session2 state];

    if (state != 5)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  conference2 = [(CSDIDSChat *)self conference];
  state2 = [conference2 state];

  if (state2 != 7)
  {
    goto LABEL_11;
  }

  conference3 = [(CSDIDSChat *)self conference];
  dateEnded2 = [conference3 dateEnded];
  [(CSDIDSChat *)self setDateEnded:dateEnded2];

LABEL_10:
LABEL_11:
  delegate = [(CSDIDSChat *)self delegate];
  dateEnded3 = [(CSDIDSChat *)self dateEnded];
  if (dateEnded3)
  {
    v15 = dateEnded3;
    v16 = objc_opt_respondsToSelector();

    if (v16)
    {
      [delegate chatEnded:self];
    }
  }
}

- (void)_setLocalAspectRatiosForVideoAspectRatioDescriptor:(id)descriptor
{
  delegate = [(CSDIDSChat *)self delegate];
  [delegate localPortraitAspectRatioForChat:self];
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

- (void)startWithVideoAspectRatioDescriptor:(id)descriptor inviteCompletion:(id)completion
{
  completionCopy = completion;
  descriptorCopy = descriptor;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "", v9, 2u);
  }

  [(CSDIDSChat *)self _setLocalAspectRatiosForVideoAspectRatioDescriptor:descriptorCopy];
  [(CSDIDSChat *)self setInviteCompletion:completionCopy];

  [(CSDIDSChat *)self prepareConference];
}

- (void)answerWithVideoAspectRatioDescriptor:(id)descriptor
{
  descriptorCopy = descriptor;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = descriptorCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "videoAspectRatioDescriptor: %@", &v7, 0xCu);
  }

  [(CSDIDSChat *)self _setLocalAspectRatiosForVideoAspectRatioDescriptor:descriptorCopy];
  v6 = +[NSUUID UUID];
  [(CSDIDSChat *)self setUpgradeSessionUUID:v6];

  [(CSDIDSChat *)self prepareConference];
}

- (void)cancelOrDeclineInvitation
{
  session = [(CSDIDSChat *)self session];
  isInitiator = [session isInitiator];

  v5 = sub_100004778();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (isInitiator)
  {
    if (v6)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Canceling session", buf, 2u);
    }

    session2 = [(CSDIDSChat *)self session];
    [session2 cancelInvitationWithReason:0];
  }

  else
  {
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Declining session", v8, 2u);
    }

    session2 = [(CSDIDSChat *)self session];
    [session2 declineInvitation];
  }
}

- (void)end
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v15 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "end self: %@", &v15, 0xCu);
  }

  dateEnded = [(CSDIDSChat *)self dateEnded];

  if (!dateEnded)
  {
    conference = [(CSDIDSChat *)self conference];
    if (conference)
    {
      v6 = conference;
      conference2 = [(CSDIDSChat *)self conference];
      if ([conference2 state] <= 3)
      {
      }

      else
      {
        conference3 = [(CSDIDSChat *)self conference];
        state = [conference3 state];

        if (state <= 5)
        {
          v10 = sub_100004778();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            LOWORD(v15) = 0;
            _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Stopping conference", &v15, 2u);
          }

          conference4 = [(CSDIDSChat *)self conference];
          [conference4 stop];
          goto LABEL_16;
        }
      }
    }

    session = [(CSDIDSChat *)self session];
    state2 = [session state];

    if (state2 == 1)
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

    conference4 = [(CSDIDSChat *)self session];
    [conference4 end];
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
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "for call %@", &v6, 0xCu);
  }

  session = [(CSDIDSChat *)self session];
  [session cancelInvitationWithReason:1];

  conference = [(CSDIDSChat *)self conference];
  [conference cancel];
}

- (void)cancelInvitationWithDeclinedElsewhere
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "for call %@", &v6, 0xCu);
  }

  session = [(CSDIDSChat *)self session];
  [session cancelInvitationWithReason:2];

  conference = [(CSDIDSChat *)self conference];
  [conference cancel];
}

- (void)cancelInvitationWithLocalHangup
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "for call %@", &v6, 0xCu);
  }

  session = [(CSDIDSChat *)self session];
  [session cancelInvitationWithReason:0];

  conference = [(CSDIDSChat *)self conference];
  [conference cancel];
}

- (void)sendDataUnreliably:(id)unreliably
{
  unreliablyCopy = unreliably;
  conference = [(CSDIDSChat *)self conference];
  [conference sendData:unreliablyCopy];
}

- (BOOL)isSendingAudio
{
  conference = [(CSDIDSChat *)self conference];
  isSendingAudio = [conference isSendingAudio];

  return isSendingAudio;
}

- (BOOL)isSendingAudioData
{
  conference = [(CSDIDSChat *)self conference];
  isSendingAudioData = [conference isSendingAudioData];

  return isSendingAudioData;
}

- (BOOL)isSendingVideo
{
  conference = [(CSDIDSChat *)self conference];
  isSendingVideo = [conference isSendingVideo];

  return isSendingVideo;
}

- (void)setRelaying:(BOOL)relaying
{
  if (self->_relaying != relaying)
  {
    relayingCopy = relaying;
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8[0] = 67109634;
      v8[1] = [(CSDIDSChat *)self isRelaying];
      v9 = 1024;
      v10 = relayingCopy;
      v11 = 2112;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Setting relaying from %d to %d for chat %@", v8, 0x18u);
    }

    self->_relaying = relayingCopy;
    deviceRole = [(CSDIDSChat *)self deviceRole];
    conference = [(CSDIDSChat *)self conference];
    [conference setDeviceRole:deviceRole];
  }
}

- (void)startConnectionWithTransport:(id)transport
{
  transportCopy = transport;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = transportCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "transport: %@", &v11, 0xCu);
  }

  conference = [(CSDIDSChat *)self conference];
  remoteFromID = [(CSDIDSChat *)self remoteFromID];
  crossDeviceIdentifier = [(CSDIDSChat *)self crossDeviceIdentifier];
  [conference setRemoteIDSDestinationURI:remoteFromID crossDeviceIdentifier:crossDeviceIdentifier];

  conference2 = [(CSDIDSChat *)self conference];
  [conference2 startConnectionWithTransport:transportCopy];

  delegate = [(CSDIDSChat *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate chatStartedConnecting:self];
  }
}

- (void)prepareConference
{
  conferenceCreationBlock = [(CSDIDSChat *)self conferenceCreationBlock];
  v4 = conferenceCreationBlock[2]();
  [(CSDIDSChat *)self setConference:v4];

  conference = [(CSDIDSChat *)self conference];
  [conference setDelegate:self];

  v6 = +[TUCallCenter sharedInstance];
  queue = [v6 queue];
  conference2 = [(CSDIDSChat *)self conference];
  [conference2 setDelegateQueue:queue];

  v14 = objc_alloc_init(CSDAVConferenceConfiguration);
  [(CSDAVConferenceConfiguration *)v14 setRequiresInviteDictionary:1];
  [(CSDAVConferenceConfiguration *)v14 setCaller:[(CSDIDSChat *)self isOutgoing]];
  capabilities = [(CSDIDSChat *)self capabilities];
  [(CSDAVConferenceConfiguration *)v14 setCapabilities:capabilities];

  faceTimeAppUUID = [objc_opt_class() faceTimeAppUUID];
  [(CSDAVConferenceConfiguration *)v14 setClientUUID:faceTimeAppUUID];

  reportingHierarchyToken = [(CSDIDSChat *)self reportingHierarchyToken];
  [(CSDAVConferenceConfiguration *)v14 setReportingHierarchyToken:reportingHierarchyToken];

  remoteInviteDictionary = [(CSDIDSChat *)self remoteInviteDictionary];
  [(CSDAVConferenceConfiguration *)v14 setRemoteInviteDictionary:remoteInviteDictionary];

  [(CSDIDSChat *)self localPortraitAspectRatio];
  [(CSDAVConferenceConfiguration *)v14 setLocalPortraitAspectRatio:?];
  [(CSDIDSChat *)self localLandscapeAspectRatio];
  [(CSDAVConferenceConfiguration *)v14 setLocalLandscapeAspectRatio:?];
  conference3 = [(CSDIDSChat *)self conference];
  [conference3 prepareWithConfiguration:v14];
}

- (void)setRemoteVideoPresentationSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  conference = [(CSDIDSChat *)self conference];
  [conference setRemoteVideoPresentationSize:{width, height}];
}

- (void)setRemoteVideoPresentationState:(int)state
{
  if (state == 2)
  {
    v3 = 2;
  }

  else
  {
    v3 = state == 1;
  }

  conference = [(CSDIDSChat *)self conference];
  [conference setRemoteVideoPresentationState:v3];
}

- (void)sessionStarted:(id)started
{
  startedCopy = started;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    selfCopy = startedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "sessionStarted: %@", &v13, 0xCu);
  }

  delegate = [(CSDIDSChat *)self delegate];
  v7 = [delegate isMediaAllowedForChat:self];

  if (v7)
  {
    conference = [(CSDIDSChat *)self conference];
    remoteInviteDictionary = [conference remoteInviteDictionary];

    if (remoteInviteDictionary)
    {
      transport = [(CSDIDSChat *)startedCopy transport];
      [(CSDIDSChat *)self startConnectionWithTransport:transport];
    }

    else
    {
      transport = sub_100004778();
      if (os_log_type_enabled(transport, OS_LOG_TYPE_DEFAULT))
      {
        conference2 = [(CSDIDSChat *)self conference];
        state = [conference2 state];
        v13 = 67109120;
        LODWORD(selfCopy) = state;
        _os_log_impl(&_mh_execute_header, transport, OS_LOG_TYPE_DEFAULT, "Not starting connection because conference state is %d", &v13, 8u);
      }
    }
  }

  else
  {
    transport = sub_100004778();
    if (os_log_type_enabled(transport, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, transport, OS_LOG_TYPE_DEFAULT, "[WARN] Not starting connection because the chat is not allowed to start media: %@", &v13, 0xCu);
    }
  }
}

- (void)session:(id)session endedWithReason:(int)reason
{
  sessionCopy = session;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412546;
    v10 = sessionCopy;
    v11 = 1024;
    reasonCopy = reason;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "session %@ endedWithReason %d", &v9, 0x12u);
  }

  conference = [(CSDIDSChat *)self conference];
  [conference stop];

  [(CSDIDSChat *)self _handlePushTokensInvited:&__NSArray0__struct didSendInvitation:0 didCancelInvitation:1];
  [(CSDIDSChat *)self _setDateEndedIfNecessary];
}

- (void)session:(id)session receivedInvitationAcceptWithData:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  v8 = [[CSDMessagingCallMessage alloc] initWithData:dataCopy];

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *v43 = sessionCopy;
    *&v43[8] = 2112;
    v44 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "session %@ receivedInvitationAcceptWithData %@", buf, 0x16u);
  }

  delegate = [(CSDIDSChat *)self delegate];
  v11 = [delegate isMediaAllowedForChat:self];

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

  remoteFromID = [sessionCopy remoteFromID];
  v13 = [remoteFromID length];

  if (v13)
  {
    remoteFromID2 = [sessionCopy remoteFromID];
    v41 = 0;
    v15 = [remoteFromID2 _stripPotentialTokenURIWithToken:&v41];
    v16 = v41;

    if (![v16 length])
    {
      transport = sub_100004778();
      if (os_log_type_enabled(transport, OS_LOG_TYPE_ERROR))
      {
        sub_100474210(transport);
      }

      goto LABEL_33;
    }

    invitedPushTokens = [(CSDIDSChat *)self invitedPushTokens];
    v18 = [invitedPushTokens containsObject:v16];

    if ((v18 & 1) == 0)
    {
      transport = sub_100004778();
      if (os_log_type_enabled(transport, OS_LOG_TYPE_ERROR))
      {
        sub_100474134(transport);
      }

      goto LABEL_33;
    }

    if (!v8)
    {
      transport = sub_100004778();
      if (os_log_type_enabled(transport, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, transport, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring incoming accept since accompanying message was nil", buf, 2u);
      }

      goto LABEL_33;
    }

    if ([(CSDMessagingCallMessage *)v8 type]!= 1)
    {
      transport = sub_100004778();
      if (os_log_type_enabled(transport, OS_LOG_TYPE_DEFAULT))
      {
        type = [(CSDMessagingCallMessage *)v8 type];
        if (type >= 3)
        {
          v34 = [NSString stringWithFormat:@"(unknown: %i)", type];
        }

        else
        {
          v34 = off_10061B138[type];
        }

        *buf = 138412290;
        *v43 = v34;
        _os_log_impl(&_mh_execute_header, transport, OS_LOG_TYPE_DEFAULT, "[WARN] Ignoring incoming message since message with type=%@ was not invite.", buf, 0xCu);
      }

      goto LABEL_33;
    }

    inviteData = [(CSDMessagingCallMessage *)v8 inviteData];
    faceTimeInviteDictionary = [inviteData faceTimeInviteDictionary];
    conference = [(CSDIDSChat *)self conference];
    [conference setRemoteInviteDictionary:faceTimeInviteDictionary];

    [(CSDIDSChat *)self setRemoteMomentsAvailable:[(CSDMessagingCallMessage *)v8 isMomentsAvailable]];
    if ([(CSDMessagingCallMessage *)v8 hasProtoUpgradeSessionUUID]&& ([(CSDIDSChat *)self upgradeSessionUUID], v22 = objc_claimAutoreleasedReturnValue(), v22, !v22))
    {
      v39 = [NSUUID alloc];
      protoUpgradeSessionUUID = [(CSDMessagingCallMessage *)v8 protoUpgradeSessionUUID];
      v23 = [v39 initWithUUIDString:protoUpgradeSessionUUID];

      if (v23)
      {
        [(CSDIDSChat *)self setUpgradeSessionUUID:v23];
LABEL_15:

        if ([(CSDMessagingCallMessage *)v8 hasProtoWantsVideo])
        {
          if ([(CSDIDSChat *)self isVideo])
          {
            isVideo = [(CSDIDSChat *)self isVideo];
            protoWantsVideo = [(CSDMessagingCallMessage *)v8 protoWantsVideo];
            [(CSDIDSChat *)self setVideo:[(CSDMessagingCallMessage *)v8 protoWantsVideo]];
            if (isVideo != protoWantsVideo)
            {
              conference2 = [(CSDIDSChat *)self conference];
              capabilities = [(CSDIDSChat *)self capabilities];
              [conference2 updateCapabilities:capabilities];
            }
          }
        }

        if ([sessionCopy state] == 3)
        {
          transport = [sessionCopy transport];
          [(CSDIDSChat *)self startConnectionWithTransport:transport];
        }

        else
        {
          transport = sub_100004778();
          if (os_log_type_enabled(transport, OS_LOG_TYPE_DEFAULT))
          {
            session = [(CSDIDSChat *)self session];
            state = [session state];
            conference3 = [(CSDIDSChat *)self conference];
            state2 = [conference3 state];
            *buf = 67109376;
            *v43 = state;
            *&v43[4] = 1024;
            *&v43[6] = state2;
            _os_log_impl(&_mh_execute_header, transport, OS_LOG_TYPE_DEFAULT, "Not starting connecting because session state is %d and conference state is %d", buf, 0xEu);
          }
        }

LABEL_33:

        goto LABEL_34;
      }

      upgradeSessionUUID = sub_100004778();
      if (os_log_type_enabled(upgradeSessionUUID, OS_LOG_TYPE_ERROR))
      {
        sub_100474178(v8, upgradeSessionUUID);
      }
    }

    else
    {
      v23 = sub_100004778();
      if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_15;
      }

      upgradeSessionUUID = [(CSDIDSChat *)self upgradeSessionUUID];
      *buf = 138412546;
      *v43 = v8;
      *&v43[8] = 2112;
      v44 = upgradeSessionUUID;
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

- (void)session:(id)session receivedInvitationDeclineWithData:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = sessionCopy;
    v10 = 2112;
    v11 = dataCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "session %@ receivedInvitationDeclineWithData %@", &v8, 0x16u);
  }
}

- (void)session:(id)session receivedInvitationCancelWithData:(id)data
{
  sessionCopy = session;
  dataCopy = data;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = sessionCopy;
    v10 = 2112;
    v11 = dataCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "session %@ receivedInvitationCancelWithData %@", &v8, 0x16u);
  }
}

- (void)session:(id)session receivedData:(id)data
{
  sessionCopy = session;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"non-nil";
    if (!data)
    {
      v7 = @"nil";
    }

    v8 = 138412546;
    v9 = sessionCopy;
    v10 = 2112;
    v11 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "session %@ receivedData (data is %@)", &v8, 0x16u);
  }
}

- (void)conferenceFinishedPreparing:(id)preparing
{
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v25) = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "", &v25, 2u);
  }

  delegate = [(CSDIDSChat *)self delegate];
  faceTimeAppUUID = [objc_opt_class() faceTimeAppUUID];
  session = [(CSDIDSChat *)self session];
  [session setClientUUID:faceTimeAppUUID];

  v8 = [delegate isWiFiAllowedForChat:self];
  session2 = [(CSDIDSChat *)self session];
  [session2 setWiFiAllowed:v8];

  v10 = [delegate isCellularDataAllowedForChat:self];
  session3 = [(CSDIDSChat *)self session];
  [session3 setCellularDataAllowed:v10];

  v12 = [delegate isCellularDataPreferredForChat:self];
  session4 = [(CSDIDSChat *)self session];
  [session4 setCellularDataPreferred:v12];

  v14 = objc_alloc_init(CSDMessagingCallMessage);
  [(CSDMessagingCallMessage *)v14 addProtocolVersion];
  [(CSDMessagingCallMessage *)v14 setType:1];
  v15 = [CSDMessagingAVConferenceInviteData alloc];
  conference = [(CSDIDSChat *)self conference];
  localInviteDictionary = [conference localInviteDictionary];
  v18 = [(CSDMessagingAVConferenceInviteData *)v15 initWithFaceTimeInviteDictionary:localInviteDictionary];
  [(CSDMessagingCallMessage *)v14 setInviteData:v18];

  [(CSDMessagingCallMessage *)v14 setShouldSuppressInCallUI:[(CSDIDSChat *)self shouldSuppressInCallUI]];
  upgradeSessionUUID = [(CSDIDSChat *)self upgradeSessionUUID];
  uUIDString = [upgradeSessionUUID UUIDString];
  [(CSDMessagingCallMessage *)v14 setProtoUpgradeSessionUUID:uUIDString];

  if (objc_opt_respondsToSelector())
  {
    -[CSDMessagingCallMessage setMomentsAvailable:](v14, "setMomentsAvailable:", [delegate isMomentsAvailableForChat:self]);
  }

  [(CSDMessagingCallMessage *)v14 setProtoWantsVideo:[(CSDIDSChat *)self isVideo]];
  v21 = sub_100004778();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "message: %@", &v25, 0xCu);
  }

  isOutgoing = [(CSDIDSChat *)self isOutgoing];
  session5 = [(CSDIDSChat *)self session];
  data = [(CSDMessagingCallMessage *)v14 data];
  if (isOutgoing)
  {
    [session5 sendInvitationWithData:data];
  }

  else
  {
    [session5 acceptInvitationWithData:data];
  }
}

- (void)conferenceStarted:(id)started
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
    queue = [v6 queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1000DB6E0;
    block[3] = &unk_100619D38;
    block[4] = self;
    dispatch_after(v5, queue, block);
  }

  else
  {
    delegate = [(CSDIDSChat *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate chatConnected:self];
    }
  }
}

- (void)conference:(id)conference endedWithReason:(int64_t)reason error:(id)error
{
  errorCopy = error;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 134218242;
    reasonCopy = reason;
    v13 = 2112;
    v14 = errorCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "reason=%ld error=%@", &v11, 0x16u);
  }

  session = [(CSDIDSChat *)self session];
  state = [session state];

  if (state == 1)
  {
    [(CSDIDSChat *)self cancelOrDeclineInvitation];
  }

  [(CSDIDSChat *)self _setDateEndedIfNecessary];
}

- (void)mutedChangedForConference:(id)conference
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }
}

- (void)sendingAudioChangedForConference:(id)conference
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }
}

- (void)receivedFirstRemoteFrameForConference:(id)conference
{
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "", v8, 2u);
  }

  dateReceivedFirstRemoteFrame = [(CSDIDSChat *)self dateReceivedFirstRemoteFrame];

  if (!dateReceivedFirstRemoteFrame)
  {
    v6 = +[NSDate date];
    [(CSDIDSChat *)self setDateReceivedFirstRemoteFrame:v6];

    delegate = [(CSDIDSChat *)self delegate];
    if (objc_opt_respondsToSelector())
    {
      [delegate chatConnected:self];
    }
  }
}

- (void)remoteVideoPausedForConference:(id)conference
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "", v4, 2u);
  }
}

- (void)conference:(id)conference remoteMediaStalled:(BOOL)stalled
{
  if (stalled)
  {
    v5 = sub_100004778();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Remote media stalled for chat: %@. Reconnecting IDS session.", &v7, 0xCu);
    }

    session = [(CSDIDSChat *)self session];
    [session reconnectSession];
  }
}

- (void)conference:(id)conference inputFrequencyLevelChangedTo:(id)to
{
  toCopy = to;
  delegate = [(CSDIDSChat *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate chat:self inputFrequencyLevelChangedTo:toCopy];
  }
}

- (void)conference:(id)conference outputFrequencyLevelChangedTo:(id)to
{
  toCopy = to;
  delegate = [(CSDIDSChat *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate chat:self outputFrequencyLevelChangedTo:toCopy];
  }
}

- (void)conference:(id)conference inputLevelChangedTo:(float)to
{
  delegate = [(CSDIDSChat *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    *&v6 = to;
    [delegate chat:self inputLevelChangedTo:v6];
  }
}

- (void)conference:(id)conference outputLevelChangedTo:(float)to
{
  delegate = [(CSDIDSChat *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    *&v6 = to;
    [delegate chat:self outputLevelChangedTo:v6];
  }
}

- (void)conference:(id)conference changedBytesOfDataUsed:(int64_t)used
{
  delegate = [(CSDIDSChat *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate chat:self changedBytesOfDataUsed:used];
  }
}

- (void)conference:(id)conference didReceiveData:(id)data forCallID:(int64_t)d
{
  dataCopy = data;
  delegate = [(CSDIDSChat *)self delegate];
  if (objc_opt_respondsToSelector())
  {
    [delegate chat:self receivedData:dataCopy];
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