@interface CSDAVConference
- (BOOL)_isMuted;
- (BOOL)_isSendingAudio;
- (BOOL)_isSendingAudioData;
- (BOOL)_isSendingVideo;
- (BOOL)hasReceivedFirstRemoteFrame;
- (BOOL)isCaller;
- (BOOL)isMuted;
- (BOOL)isRemoteVideoPaused;
- (BOOL)isSendingAudio;
- (BOOL)isSendingAudioData;
- (BOOL)isSendingVideo;
- (CGSize)remoteVideoPresentationSize;
- (CSDAVConference)init;
- (CSDAVConference)initWithFeatureFlags:(id)flags;
- (CSDAVConferenceDelegate)delegate;
- (NSDate)dateConnected;
- (NSDate)dateEnded;
- (NSDate)dateStartedConnecting;
- (NSDictionary)localInviteDictionary;
- (NSDictionary)remoteInviteDictionary;
- (NSNumber)isSendingVideoExpected;
- (NSString)description;
- (id)_isSendingVideoExpected;
- (int)deviceRole;
- (int)state;
- (int64_t)_endedReasonForDidStopError:(id)error error:(id *)a4;
- (int64_t)callID;
- (int64_t)endedReason;
- (int64_t)inputAudioPowerSpectrumToken;
- (int64_t)outputAudioPowerSpectrumToken;
- (unsigned)remoteVideoPresentationState;
- (void)_performDelegateCallback:(id)callback;
- (void)_sendDelegateBytesOfDataUsageChanged:(int64_t)changed;
- (void)_sendDelegateConnectionClosed;
- (void)_sendDelegateEndedWithReason:(int64_t)reason error:(id)error;
- (void)_sendDelegateFinishedPreparing;
- (void)_sendDelegateInputFrequencyLevelChanged:(id)changed;
- (void)_sendDelegateInputLevelChanged:(float)changed;
- (void)_sendDelegateMutedChanged;
- (void)_sendDelegateOutputFrequencyLevelChanged:(id)changed;
- (void)_sendDelegateOutputLevelChanged:(float)changed;
- (void)_sendDelegateReceivedData:(id)data forCallID:(int64_t)d;
- (void)_sendDelegateReceivedFirstRemoteFrame;
- (void)_sendDelegateRemoteMediaStalled:(BOOL)stalled;
- (void)_sendDelegateRemoteVideoPaused;
- (void)_sendDelegateSendingAudioChanged;
- (void)_sendDelegateStarted;
- (void)_setEndedWithReason:(int64_t)reason error:(id)error;
- (void)_setUpDidStartTimeout;
- (void)_stop;
- (void)cancel;
- (void)conferenceProvider:(id)provider didPauseAudio:(BOOL)audio error:(id)error;
- (void)conferenceProvider:(id)provider didPauseVideo:(BOOL)video error:(id)error;
- (void)conferenceProvider:(id)provider didReceiveData:(id)data forCallID:(int64_t)d;
- (void)conferenceProvider:(id)provider didStartSession:(BOOL)session error:(id)error;
- (void)conferenceProvider:(id)provider didStopWithError:(id)error callMetadata:(id)metadata;
- (void)conferenceProvider:(id)provider remoteMediaStalled:(BOOL)stalled;
- (void)conferenceProvider:(id)provider remoteVideoPaused:(BOOL)paused;
- (void)conferenceProvider:(id)provider updateInputFrequencyLevel:(id)level;
- (void)conferenceProvider:(id)provider updateInputLevel:(float)level;
- (void)conferenceProvider:(id)provider updateOutputFrequencyLevel:(id)level;
- (void)conferenceProvider:(id)provider updateOutputLevel:(float)level;
- (void)conferenceProviderReceivedFirstRemoteFrame:(id)frame;
- (void)connectionClosedForConferenceProvider:(id)provider;
- (void)dealloc;
- (void)prepareWithConfiguration:(id)configuration;
- (void)sendData:(id)data;
- (void)serverDiedForConferenceProvider:(id)provider;
- (void)setAudioInjectionAllowed:(BOOL)allowed;
- (void)setCaller:(BOOL)caller;
- (void)setDateConnected:(id)connected;
- (void)setDateEnded:(id)ended;
- (void)setDateStartedConnecting:(id)connecting;
- (void)setDeviceRole:(int)role;
- (void)setMuted:(BOOL)muted;
- (void)setRemoteIDSDestinationURI:(id)i crossDeviceIdentifier:(id)identifier;
- (void)setRemoteInviteDictionary:(id)dictionary;
- (void)setRemoteVideoPresentationSize:(CGSize)size;
- (void)setRemoteVideoPresentationState:(unsigned int)state;
- (void)setSendingAudio:(BOOL)audio;
- (void)setSendingAudioData:(BOOL)data;
- (void)setSendingVideo:(BOOL)video;
- (void)setSendingVideoExpected:(id)expected;
- (void)setState:(int)state;
- (void)startConnectionWithTransport:(id)transport;
- (void)startedCapturingLocalVideo:(id)video;
- (void)stop;
- (void)stoppedCapturingLocalVideo:(id)video;
- (void)updateCapabilities:(id)capabilities;
@end

@implementation CSDAVConference

- (CSDAVConference)init
{
  v3 = objc_alloc_init(TUFeatureFlags);
  v4 = [(CSDAVConference *)self initWithFeatureFlags:v3];

  return v4;
}

- (CSDAVConference)initWithFeatureFlags:(id)flags
{
  flagsCopy = flags;
  v18.receiver = self;
  v18.super_class = CSDAVConference;
  v6 = [(CSDAVConference *)&v18 init];
  if (v6)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17[0] = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "initWithFeatureFlags for CSDAVConference", v17, 2u);
    }

    v8 = dispatch_queue_create("com.apple.telephonyutilities.callservicesdaemon.csdavconference", 0);
    queue = v6->_queue;
    v6->_queue = v8;

    v10 = +[TUCallCenter sharedInstance];
    queue = [v10 queue];
    delegateQueue = v6->_delegateQueue;
    v6->_delegateQueue = queue;

    v6->_connectionTimeout = 30.0;
    v6->_remoteVideoPresentationSize = NSZeroSize;
    *&v6->_state = 1;
    objc_storeStrong(&v6->_featureFlags, flags);
    conferenceProviderCreationBlock = v6->_conferenceProviderCreationBlock;
    v6->_conferenceProviderCreationBlock = &stru_100619E08;

    if (TUAllowLocalVideoRecording())
    {
      v14 = +[NSNotificationCenter defaultCenter];
      [v14 addObserver:v6 selector:"startedCapturingLocalVideo:" name:@"CSDMomentsControllerStartedLocalVideoCaptureNotification" object:0];

      v15 = +[NSNotificationCenter defaultCenter];
      [v15 addObserver:v6 selector:"stoppedCapturingLocalVideo:" name:@"CSDMomentsControllerStoppedLocalVideoCaptureNotification" object:0];
    }
  }

  return v6;
}

- (void)dealloc
{
  [(CSDAVConferenceProvider *)self->_conferenceProvider setDelegate:0];
  v3.receiver = self;
  v3.super_class = CSDAVConference;
  [(CSDAVConference *)&v3 dealloc];
}

- (NSString)description
{
  v3 = objc_opt_class();
  state = self->_state;
  conferenceProvider = [(CSDAVConference *)self conferenceProvider];
  v6 = [NSString stringWithFormat:@"<%@ %p state=%d conference=%@>", v3, self, state, conferenceProvider];

  return v6;
}

- (void)prepareWithConfiguration:(id)configuration
{
  configurationCopy = configuration;
  queue = [(CSDAVConference *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100069120;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = configurationCopy;
  v6 = configurationCopy;
  dispatch_async(queue, v7);
}

- (void)startConnectionWithTransport:(id)transport
{
  transportCopy = transport;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    configuration = [(CSDAVConference *)self configuration];
    *buf = 138412546;
    v12 = transportCopy;
    v13 = 2112;
    v14 = configuration;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "transport: %@ self.configuration: %@", buf, 0x16u);
  }

  queue = [(CSDAVConference *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000698B8;
  v9[3] = &unk_100619D88;
  v9[4] = self;
  v10 = transportCopy;
  v8 = transportCopy;
  dispatch_async(queue, v9);
}

- (void)stop
{
  queue = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100069CC8;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)_stop
{
  queue = [(CSDAVConference *)self queue];
  dispatch_assert_queue_V2(queue);

  state = self->_state;
  if (state > 3)
  {
    if (state <= 5)
    {
      [(CSDAVConference *)self setState:6];
      if (TUAllowLocalVideoRecording() && [(CSDAVConference *)self capturingLocalVideo])
      {
        v5 = sub_100004778();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Delaying stop on conference...", buf, 2u);
        }

        v6 = dispatch_time(0, 1000000000);
        queue2 = [(CSDAVConference *)self queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100069F00;
        block[3] = &unk_100619D38;
        block[4] = self;
        dispatch_after(v6, queue2, block);
      }

      else
      {
        v8 = sub_100004778();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          conferenceProvider = [(CSDAVConference *)self conferenceProvider];
          *buf = 138412290;
          v13 = conferenceProvider;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling stop on conference %@", buf, 0xCu);
        }

        conferenceProvider2 = [(CSDAVConference *)self conferenceProvider];
        [conferenceProvider2 stop];
      }
    }
  }

  else
  {

    [(CSDAVConference *)self _setEndedWithReason:0 error:0];
  }
}

- (void)cancel
{
  queue = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006A06C;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)sendData:(id)data
{
  dataCopy = data;
  queue = [(CSDAVConference *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006A264;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = dataCopy;
  v6 = dataCopy;
  dispatch_async(queue, v7);
}

- (void)setRemoteIDSDestinationURI:(id)i crossDeviceIdentifier:(id)identifier
{
  iCopy = i;
  identifierCopy = identifier;
  queue = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006A390;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = iCopy;
  v13 = identifierCopy;
  v9 = identifierCopy;
  v10 = iCopy;
  dispatch_async(queue, block);
}

- (void)_setEndedWithReason:(int64_t)reason error:(id)error
{
  errorCopy = error;
  [(CSDAVConference *)self setConferenceProvider:0];
  [(CSDAVConference *)self setState:7];
  [(CSDAVConference *)self setEndedReason:reason];
  [(CSDAVConference *)self setEndedError:errorCopy];

  endedReason = self->_endedReason;
  endedError = self->_endedError;

  [(CSDAVConference *)self _sendDelegateEndedWithReason:endedReason error:endedError];
}

- (int64_t)inputAudioPowerSpectrumToken
{
  conferenceProvider = [(CSDAVConference *)self conferenceProvider];
  inputAudioPowerSpectrumToken = [conferenceProvider inputAudioPowerSpectrumToken];

  return inputAudioPowerSpectrumToken;
}

- (int64_t)outputAudioPowerSpectrumToken
{
  conferenceProvider = [(CSDAVConference *)self conferenceProvider];
  outputAudioPowerSpectrumToken = [conferenceProvider outputAudioPowerSpectrumToken];

  return outputAudioPowerSpectrumToken;
}

- (NSDictionary)localInviteDictionary
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000285D8;
  v11 = sub_100032884;
  v12 = 0;
  queue = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006A5F0;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (NSDictionary)remoteInviteDictionary
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000285D8;
  v11 = sub_100032884;
  v12 = 0;
  queue = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006A720;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setRemoteInviteDictionary:(id)dictionary
{
  dictionaryCopy = dictionary;
  queue = [(CSDAVConference *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006A83C;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = dictionaryCopy;
  v6 = dictionaryCopy;
  dispatch_async(queue, v7);
}

- (int64_t)callID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006AA10;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)isCaller
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CSDAVConference *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006AB44;
  v5[3] = &unk_100619E80;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setCaller:(BOOL)caller
{
  queue = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006AC38;
  v6[3] = &unk_100619EA8;
  v6[4] = self;
  callerCopy = caller;
  dispatch_async(queue, v6);
}

- (NSDate)dateConnected
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000285D8;
  v11 = sub_100032884;
  v12 = 0;
  queue = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006AE48;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setDateConnected:(id)connected
{
  connectedCopy = connected;
  queue = [(CSDAVConference *)self queue];
  dispatch_assert_queue_V2(queue);

  dateConnected = self->_dateConnected;
  p_dateConnected = &self->_dateConnected;
  if (dateConnected != connectedCopy)
  {
    objc_storeStrong(p_dateConnected, connected);
  }
}

- (NSDate)dateEnded
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000285D8;
  v11 = sub_100032884;
  v12 = 0;
  queue = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006AFFC;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setDateEnded:(id)ended
{
  endedCopy = ended;
  queue = [(CSDAVConference *)self queue];
  dispatch_assert_queue_V2(queue);

  dateEnded = self->_dateEnded;
  p_dateEnded = &self->_dateEnded;
  if (dateEnded != endedCopy)
  {
    objc_storeStrong(p_dateEnded, ended);
  }
}

- (NSDate)dateStartedConnecting
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000285D8;
  v11 = sub_100032884;
  v12 = 0;
  queue = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006B1B0;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setDateStartedConnecting:(id)connecting
{
  connectingCopy = connecting;
  queue = [(CSDAVConference *)self queue];
  dispatch_assert_queue_V2(queue);

  dateStartedConnecting = self->_dateStartedConnecting;
  p_dateStartedConnecting = &self->_dateStartedConnecting;
  if (dateStartedConnecting != connectingCopy)
  {
    objc_storeStrong(p_dateStartedConnecting, connecting);
  }
}

- (int)state
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  queue = [(CSDAVConference *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006B324;
  v5[3] = &unk_100619E80;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LODWORD(selfCopy) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setState:(int)state
{
  queue = [(CSDAVConference *)self queue];
  dispatch_assert_queue_V2(queue);

  p_state = &self->_state;
  state = self->_state;
  v8 = sub_100004778();
  v9 = v8;
  if (state >= state)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1004713C4(&self->_state, state, v9);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *p_state;
      v11[0] = 67109376;
      v11[1] = state;
      v12 = 1024;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "set CSDAVConferenceState to %d from %d", v11, 0xEu);
    }

    *p_state = state;
    switch(state)
    {
      case 7:
        v9 = +[NSDate date];
        [(CSDAVConference *)self setDateEnded:v9];
        break;
      case 5:
        v9 = +[NSDate date];
        [(CSDAVConference *)self setDateConnected:v9];
        break;
      case 4:
        v9 = +[NSDate date];
        [(CSDAVConference *)self setDateStartedConnecting:v9];
        break;
      default:
        return;
    }
  }
}

- (int64_t)endedReason
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  queue = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006B5A4;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)isMuted
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CSDAVConference *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006B690;
  v5[3] = &unk_100619E80;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)_isMuted
{
  if (-[CSDAVConference isAudioInjectionAllowed](self, "isAudioInjectionAllowed") && (-[CSDAVConference featureFlags](self, "featureFlags"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 relayCallRecordingEnabled], v3, v4))
  {

    return [(CSDAVConference *)self expectedUplinkMuted];
  }

  else
  {
    conferenceProvider = [(CSDAVConference *)self conferenceProvider];
    isMicrophoneMuted = [conferenceProvider isMicrophoneMuted];

    return isMicrophoneMuted;
  }
}

- (void)setMuted:(BOOL)muted
{
  queue = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006B7F0;
  v6[3] = &unk_100619EA8;
  v6[4] = self;
  mutedCopy = muted;
  dispatch_async(queue, v6);
}

- (void)setAudioInjectionAllowed:(BOOL)allowed
{
  queue = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006BA84;
  v6[3] = &unk_100619EA8;
  v6[4] = self;
  allowedCopy = allowed;
  dispatch_async(queue, v6);
}

- (BOOL)isSendingAudio
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CSDAVConference *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006BCF4;
  v5[3] = &unk_100619E80;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)_isSendingAudio
{
  conferenceProvider = [(CSDAVConference *)self conferenceProvider];

  if (conferenceProvider)
  {
    conferenceProvider2 = [(CSDAVConference *)self conferenceProvider];
    v5 = [conferenceProvider2 isAudioPaused] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)setSendingAudio:(BOOL)audio
{
  queue = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006BE1C;
  v6[3] = &unk_100619EA8;
  v6[4] = self;
  audioCopy = audio;
  dispatch_async(queue, v6);
}

- (BOOL)isSendingAudioData
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CSDAVConference *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006BFF8;
  v5[3] = &unk_100619E80;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)_isSendingAudioData
{
  conferenceProvider = [(CSDAVConference *)self conferenceProvider];

  if (!conferenceProvider)
  {
    return 0;
  }

  conferenceProvider2 = [(CSDAVConference *)self conferenceProvider];
  isSendingAudio = [conferenceProvider2 isSendingAudio];

  return isSendingAudio;
}

- (void)setSendingAudioData:(BOOL)data
{
  queue = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006C120;
  v6[3] = &unk_100619EA8;
  v6[4] = self;
  dataCopy = data;
  dispatch_async(queue, v6);
}

- (BOOL)hasReceivedFirstRemoteFrame
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CSDAVConference *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006C2F8;
  v5[3] = &unk_100619E80;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)isSendingVideo
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CSDAVConference *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006C3E4;
  v5[3] = &unk_100619E80;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (BOOL)_isSendingVideo
{
  queue = [(CSDAVConference *)self queue];
  dispatch_assert_queue_V2(queue);

  conferenceProvider = [(CSDAVConference *)self conferenceProvider];

  if (conferenceProvider)
  {
    _isSendingVideoExpected = [(CSDAVConference *)self _isSendingVideoExpected];
    v6 = _isSendingVideoExpected;
    if (_isSendingVideoExpected)
    {
      LOBYTE(v7) = [_isSendingVideoExpected BOOLValue];
    }

    else
    {
      conferenceProvider2 = [(CSDAVConference *)self conferenceProvider];
      v7 = [conferenceProvider2 isVideoPaused] ^ 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)setSendingVideo:(BOOL)video
{
  queue = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006C554;
  v6[3] = &unk_100619EA8;
  v6[4] = self;
  videoCopy = video;
  dispatch_async(queue, v6);
}

- (NSNumber)isSendingVideoExpected
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000285D8;
  v11 = sub_100032884;
  v12 = 0;
  queue = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006C930;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(queue, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_isSendingVideoExpected
{
  queue = [(CSDAVConference *)self queue];
  dispatch_assert_queue_V2(queue);

  sendingVideoExpected = self->_sendingVideoExpected;

  return sendingVideoExpected;
}

- (void)setSendingVideoExpected:(id)expected
{
  expectedCopy = expected;
  queue = [(CSDAVConference *)self queue];
  dispatch_assert_queue_V2(queue);

  sendingVideoExpected = self->_sendingVideoExpected;
  p_sendingVideoExpected = &self->_sendingVideoExpected;
  if ((TUObjectsAreEqualOrNil() & 1) == 0)
  {
    objc_storeStrong(p_sendingVideoExpected, expected);
  }
}

- (void)updateCapabilities:(id)capabilities
{
  capabilitiesCopy = capabilities;
  queue = [(CSDAVConference *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006CAFC;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = capabilitiesCopy;
  v6 = capabilitiesCopy;
  dispatch_async(queue, v7);
}

- (BOOL)isRemoteVideoPaused
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CSDAVConference *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006CD04;
  v5[3] = &unk_100619E80;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LOBYTE(selfCopy) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (CGSize)remoteVideoPresentationSize
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v12 = &unk_1004DFFDA;
  v13 = NSZeroSize;
  queue = [(CSDAVConference *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006CE14;
  v8[3] = &unk_100619E80;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(queue, v8);

  v4 = v10[4];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);
  v6 = v4;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)setRemoteVideoPresentationSize:(CGSize)size
{
  height = size.height;
  width = size.width;
  queue = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006CEC4;
  block[3] = &unk_100619ED0;
  block[4] = self;
  *&block[5] = width;
  *&block[6] = height;
  dispatch_async(queue, block);
}

- (unsigned)remoteVideoPresentationState
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CSDAVConference *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006D0E8;
  v5[3] = &unk_100619E80;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LODWORD(selfCopy) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setRemoteVideoPresentationState:(unsigned int)state
{
  queue = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006D194;
  v6[3] = &unk_100619EF8;
  v6[4] = self;
  stateCopy = state;
  dispatch_async(queue, v6);
}

- (void)_setUpDidStartTimeout
{
  [(CSDAVConference *)self connectionTimeout];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  queue = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D364;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_after(v4, queue, block);
}

- (int)deviceRole
{
  selfCopy = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = [(CSDAVConference *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006D4C0;
  v5[3] = &unk_100619E80;
  v5[4] = selfCopy;
  v5[5] = &v6;
  dispatch_sync(queue, v5);

  LODWORD(selfCopy) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return selfCopy;
}

- (void)setDeviceRole:(int)role
{
  queue = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006D5C4;
  v6[3] = &unk_100619EF8;
  v6[4] = self;
  roleCopy = role;
  dispatch_async(queue, v6);
}

- (void)startedCapturingLocalVideo:(id)video
{
  if (TUAllowLocalVideoRecording())
  {
    queue = [(CSDAVConference *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006D7F0;
    block[3] = &unk_100619D38;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)stoppedCapturingLocalVideo:(id)video
{
  if (TUAllowLocalVideoRecording())
  {
    queue = [(CSDAVConference *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006D890;
    block[3] = &unk_100619D38;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)_performDelegateCallback:(id)callback
{
  block = callback;
  queue = [(CSDAVConference *)self queue];
  dispatch_assert_queue_V2(queue);

  delegate = [(CSDAVConference *)self delegate];
  if (delegate)
  {
    v6 = delegate;
    delegateQueue = [(CSDAVConference *)self delegateQueue];

    if (delegateQueue)
    {
      delegateQueue2 = [(CSDAVConference *)self delegateQueue];
      v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(delegateQueue2, v9);
    }
  }
}

- (void)_sendDelegateFinishedPreparing
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10006D9D0;
  v2[3] = &unk_100619D38;
  v2[4] = self;
  [(CSDAVConference *)self _performDelegateCallback:v2];
}

- (void)_sendDelegateStarted
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10006DAA4;
  v2[3] = &unk_100619D38;
  v2[4] = self;
  [(CSDAVConference *)self _performDelegateCallback:v2];
}

- (void)_sendDelegateEndedWithReason:(int64_t)reason error:(id)error
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006DBA8;
  v7[3] = &unk_100619F20;
  errorCopy = error;
  reasonCopy = reason;
  v7[4] = self;
  v6 = errorCopy;
  [(CSDAVConference *)self _performDelegateCallback:v7];
}

- (void)_sendDelegateConnectionClosed
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10006DC80;
  v2[3] = &unk_100619D38;
  v2[4] = self;
  [(CSDAVConference *)self _performDelegateCallback:v2];
}

- (void)_sendDelegateMutedChanged
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10006DD54;
  v2[3] = &unk_100619D38;
  v2[4] = self;
  [(CSDAVConference *)self _performDelegateCallback:v2];
}

- (void)_sendDelegateSendingAudioChanged
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10006DE28;
  v2[3] = &unk_100619D38;
  v2[4] = self;
  [(CSDAVConference *)self _performDelegateCallback:v2];
}

- (void)_sendDelegateReceivedFirstRemoteFrame
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10006DEFC;
  v2[3] = &unk_100619D38;
  v2[4] = self;
  [(CSDAVConference *)self _performDelegateCallback:v2];
}

- (void)_sendDelegateRemoteVideoPaused
{
  v2[0] = _NSConcreteStackBlock;
  v2[1] = 3221225472;
  v2[2] = sub_10006DFD0;
  v2[3] = &unk_100619D38;
  v2[4] = self;
  [(CSDAVConference *)self _performDelegateCallback:v2];
}

- (void)_sendDelegateRemoteMediaStalled:(BOOL)stalled
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10006E0A8;
  v3[3] = &unk_100619EA8;
  v3[4] = self;
  stalledCopy = stalled;
  [(CSDAVConference *)self _performDelegateCallback:v3];
}

- (void)_sendDelegateInputFrequencyLevelChanged:(id)changed
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006E1A8;
  v4[3] = &unk_100619D88;
  selfCopy = self;
  changedCopy = changed;
  v3 = changedCopy;
  [(CSDAVConference *)selfCopy _performDelegateCallback:v4];
}

- (void)_sendDelegateOutputFrequencyLevelChanged:(id)changed
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006E2A4;
  v4[3] = &unk_100619D88;
  selfCopy = self;
  changedCopy = changed;
  v3 = changedCopy;
  [(CSDAVConference *)selfCopy _performDelegateCallback:v4];
}

- (void)_sendDelegateInputLevelChanged:(float)changed
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10006E37C;
  v3[3] = &unk_100619EF8;
  v3[4] = self;
  changedCopy = changed;
  [(CSDAVConference *)self _performDelegateCallback:v3];
}

- (void)_sendDelegateOutputLevelChanged:(float)changed
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10006E458;
  v3[3] = &unk_100619EF8;
  v3[4] = self;
  changedCopy = changed;
  [(CSDAVConference *)self _performDelegateCallback:v3];
}

- (void)_sendDelegateBytesOfDataUsageChanged:(int64_t)changed
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10006E530;
  v3[3] = &unk_100619D60;
  v3[4] = self;
  v3[5] = changed;
  [(CSDAVConference *)self _performDelegateCallback:v3];
}

- (void)_sendDelegateReceivedData:(id)data forCallID:(int64_t)d
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006E634;
  v6[3] = &unk_100619F20;
  selfCopy = self;
  dataCopy = data;
  dCopy = d;
  v5 = dataCopy;
  [(CSDAVConference *)selfCopy _performDelegateCallback:v6];
}

- (int64_t)_endedReasonForDidStopError:(id)error error:(id *)a4
{
  errorCopy = error;
  v6 = errorCopy;
  if (!errorCopy)
  {
    v9 = 0;
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  code = [errorCopy code];
  v8 = 1;
  if (code == 32005)
  {
    v8 = 7;
  }

  if (code == 32003)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  if (code == 32003)
  {
    errorCopy = 0;
  }

  else
  {
    errorCopy = v6;
  }

  if (a4)
  {
LABEL_11:
    *a4 = errorCopy;
  }

LABEL_12:

  return v9;
}

- (void)conferenceProvider:(id)provider didStartSession:(BOOL)session error:(id)error
{
  errorCopy = error;
  queue = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006E7E0;
  block[3] = &unk_100619F48;
  sessionCopy = session;
  block[4] = self;
  v11 = errorCopy;
  v9 = errorCopy;
  dispatch_async(queue, block);
}

- (void)conferenceProvider:(id)provider didStopWithError:(id)error callMetadata:(id)metadata
{
  errorCopy = error;
  metadataCopy = metadata;
  queue = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006EB08;
  block[3] = &unk_100619E58;
  v13 = errorCopy;
  v14 = metadataCopy;
  selfCopy = self;
  v10 = metadataCopy;
  v11 = errorCopy;
  dispatch_async(queue, block);
}

- (void)connectionClosedForConferenceProvider:(id)provider
{
  queue = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006ED84;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)conferenceProvider:(id)provider updateInputFrequencyLevel:(id)level
{
  v5 = [level copy];
  queue = [(CSDAVConference *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006EEB0;
  v8[3] = &unk_100619D88;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)conferenceProvider:(id)provider updateOutputFrequencyLevel:(id)level
{
  v5 = [level copy];
  queue = [(CSDAVConference *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006EF74;
  v8[3] = &unk_100619D88;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(queue, v8);
}

- (void)conferenceProvider:(id)provider updateInputLevel:(float)level
{
  queue = [(CSDAVConference *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F018;
  v7[3] = &unk_100619EF8;
  v7[4] = self;
  levelCopy = level;
  dispatch_async(queue, v7);
}

- (void)conferenceProvider:(id)provider updateOutputLevel:(float)level
{
  queue = [(CSDAVConference *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F0C0;
  v7[3] = &unk_100619EF8;
  v7[4] = self;
  levelCopy = level;
  dispatch_async(queue, v7);
}

- (void)conferenceProvider:(id)provider didPauseAudio:(BOOL)audio error:(id)error
{
  errorCopy = error;
  queue = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F18C;
  block[3] = &unk_100619F48;
  audioCopy = audio;
  v11 = errorCopy;
  selfCopy = self;
  v9 = errorCopy;
  dispatch_async(queue, block);
}

- (void)conferenceProvider:(id)provider didPauseVideo:(BOOL)video error:(id)error
{
  errorCopy = error;
  queue = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F308;
  block[3] = &unk_100619F48;
  videoCopy = video;
  v11 = errorCopy;
  selfCopy = self;
  v9 = errorCopy;
  dispatch_async(queue, block);
}

- (void)conferenceProviderReceivedFirstRemoteFrame:(id)frame
{
  queue = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F580;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)conferenceProvider:(id)provider remoteVideoPaused:(BOOL)paused
{
  queue = [(CSDAVConference *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F698;
  v7[3] = &unk_100619EA8;
  pausedCopy = paused;
  v7[4] = self;
  dispatch_async(queue, v7);
}

- (void)conferenceProvider:(id)provider remoteMediaStalled:(BOOL)stalled
{
  queue = [(CSDAVConference *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F7EC;
  v7[3] = &unk_100619EA8;
  stalledCopy = stalled;
  v7[4] = self;
  dispatch_async(queue, v7);
}

- (void)serverDiedForConferenceProvider:(id)provider
{
  providerCopy = provider;
  queue = [(CSDAVConference *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F954;
  v7[3] = &unk_100619D88;
  v8 = providerCopy;
  selfCopy = self;
  v6 = providerCopy;
  dispatch_async(queue, v7);
}

- (void)conferenceProvider:(id)provider didReceiveData:(id)data forCallID:(int64_t)d
{
  v7 = [data copy];
  queue = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006FA70;
  block[3] = &unk_100619F20;
  block[4] = self;
  v11 = v7;
  dCopy = d;
  v9 = v7;
  dispatch_async(queue, block);
}

- (CSDAVConferenceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end