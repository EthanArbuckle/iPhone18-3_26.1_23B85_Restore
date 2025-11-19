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
- (CSDAVConference)initWithFeatureFlags:(id)a3;
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
- (int64_t)_endedReasonForDidStopError:(id)a3 error:(id *)a4;
- (int64_t)callID;
- (int64_t)endedReason;
- (int64_t)inputAudioPowerSpectrumToken;
- (int64_t)outputAudioPowerSpectrumToken;
- (unsigned)remoteVideoPresentationState;
- (void)_performDelegateCallback:(id)a3;
- (void)_sendDelegateBytesOfDataUsageChanged:(int64_t)a3;
- (void)_sendDelegateConnectionClosed;
- (void)_sendDelegateEndedWithReason:(int64_t)a3 error:(id)a4;
- (void)_sendDelegateFinishedPreparing;
- (void)_sendDelegateInputFrequencyLevelChanged:(id)a3;
- (void)_sendDelegateInputLevelChanged:(float)a3;
- (void)_sendDelegateMutedChanged;
- (void)_sendDelegateOutputFrequencyLevelChanged:(id)a3;
- (void)_sendDelegateOutputLevelChanged:(float)a3;
- (void)_sendDelegateReceivedData:(id)a3 forCallID:(int64_t)a4;
- (void)_sendDelegateReceivedFirstRemoteFrame;
- (void)_sendDelegateRemoteMediaStalled:(BOOL)a3;
- (void)_sendDelegateRemoteVideoPaused;
- (void)_sendDelegateSendingAudioChanged;
- (void)_sendDelegateStarted;
- (void)_setEndedWithReason:(int64_t)a3 error:(id)a4;
- (void)_setUpDidStartTimeout;
- (void)_stop;
- (void)cancel;
- (void)conferenceProvider:(id)a3 didPauseAudio:(BOOL)a4 error:(id)a5;
- (void)conferenceProvider:(id)a3 didPauseVideo:(BOOL)a4 error:(id)a5;
- (void)conferenceProvider:(id)a3 didReceiveData:(id)a4 forCallID:(int64_t)a5;
- (void)conferenceProvider:(id)a3 didStartSession:(BOOL)a4 error:(id)a5;
- (void)conferenceProvider:(id)a3 didStopWithError:(id)a4 callMetadata:(id)a5;
- (void)conferenceProvider:(id)a3 remoteMediaStalled:(BOOL)a4;
- (void)conferenceProvider:(id)a3 remoteVideoPaused:(BOOL)a4;
- (void)conferenceProvider:(id)a3 updateInputFrequencyLevel:(id)a4;
- (void)conferenceProvider:(id)a3 updateInputLevel:(float)a4;
- (void)conferenceProvider:(id)a3 updateOutputFrequencyLevel:(id)a4;
- (void)conferenceProvider:(id)a3 updateOutputLevel:(float)a4;
- (void)conferenceProviderReceivedFirstRemoteFrame:(id)a3;
- (void)connectionClosedForConferenceProvider:(id)a3;
- (void)dealloc;
- (void)prepareWithConfiguration:(id)a3;
- (void)sendData:(id)a3;
- (void)serverDiedForConferenceProvider:(id)a3;
- (void)setAudioInjectionAllowed:(BOOL)a3;
- (void)setCaller:(BOOL)a3;
- (void)setDateConnected:(id)a3;
- (void)setDateEnded:(id)a3;
- (void)setDateStartedConnecting:(id)a3;
- (void)setDeviceRole:(int)a3;
- (void)setMuted:(BOOL)a3;
- (void)setRemoteIDSDestinationURI:(id)a3 crossDeviceIdentifier:(id)a4;
- (void)setRemoteInviteDictionary:(id)a3;
- (void)setRemoteVideoPresentationSize:(CGSize)a3;
- (void)setRemoteVideoPresentationState:(unsigned int)a3;
- (void)setSendingAudio:(BOOL)a3;
- (void)setSendingAudioData:(BOOL)a3;
- (void)setSendingVideo:(BOOL)a3;
- (void)setSendingVideoExpected:(id)a3;
- (void)setState:(int)a3;
- (void)startConnectionWithTransport:(id)a3;
- (void)startedCapturingLocalVideo:(id)a3;
- (void)stop;
- (void)stoppedCapturingLocalVideo:(id)a3;
- (void)updateCapabilities:(id)a3;
@end

@implementation CSDAVConference

- (CSDAVConference)init
{
  v3 = objc_alloc_init(TUFeatureFlags);
  v4 = [(CSDAVConference *)self initWithFeatureFlags:v3];

  return v4;
}

- (CSDAVConference)initWithFeatureFlags:(id)a3
{
  v5 = a3;
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
    v11 = [v10 queue];
    delegateQueue = v6->_delegateQueue;
    v6->_delegateQueue = v11;

    v6->_connectionTimeout = 30.0;
    v6->_remoteVideoPresentationSize = NSZeroSize;
    *&v6->_state = 1;
    objc_storeStrong(&v6->_featureFlags, a3);
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
  v5 = [(CSDAVConference *)self conferenceProvider];
  v6 = [NSString stringWithFormat:@"<%@ %p state=%d conference=%@>", v3, self, state, v5];

  return v6;
}

- (void)prepareWithConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CSDAVConference *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100069120;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)startConnectionWithTransport:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CSDAVConference *)self configuration];
    *buf = 138412546;
    v12 = v4;
    v13 = 2112;
    v14 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "transport: %@ self.configuration: %@", buf, 0x16u);
  }

  v7 = [(CSDAVConference *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000698B8;
  v9[3] = &unk_100619D88;
  v9[4] = self;
  v10 = v4;
  v8 = v4;
  dispatch_async(v7, v9);
}

- (void)stop
{
  v3 = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100069CC8;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)_stop
{
  v3 = [(CSDAVConference *)self queue];
  dispatch_assert_queue_V2(v3);

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
        v7 = [(CSDAVConference *)self queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100069F00;
        block[3] = &unk_100619D38;
        block[4] = self;
        dispatch_after(v6, v7, block);
      }

      else
      {
        v8 = sub_100004778();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v9 = [(CSDAVConference *)self conferenceProvider];
          *buf = 138412290;
          v13 = v9;
          _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Calling stop on conference %@", buf, 0xCu);
        }

        v10 = [(CSDAVConference *)self conferenceProvider];
        [v10 stop];
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
  v3 = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006A06C;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v3, block);
}

- (void)sendData:(id)a3
{
  v4 = a3;
  v5 = [(CSDAVConference *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006A264;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)setRemoteIDSDestinationURI:(id)a3 crossDeviceIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006A390;
  block[3] = &unk_100619E58;
  block[4] = self;
  v12 = v6;
  v13 = v7;
  v9 = v7;
  v10 = v6;
  dispatch_async(v8, block);
}

- (void)_setEndedWithReason:(int64_t)a3 error:(id)a4
{
  v6 = a4;
  [(CSDAVConference *)self setConferenceProvider:0];
  [(CSDAVConference *)self setState:7];
  [(CSDAVConference *)self setEndedReason:a3];
  [(CSDAVConference *)self setEndedError:v6];

  endedReason = self->_endedReason;
  endedError = self->_endedError;

  [(CSDAVConference *)self _sendDelegateEndedWithReason:endedReason error:endedError];
}

- (int64_t)inputAudioPowerSpectrumToken
{
  v2 = [(CSDAVConference *)self conferenceProvider];
  v3 = [v2 inputAudioPowerSpectrumToken];

  return v3;
}

- (int64_t)outputAudioPowerSpectrumToken
{
  v2 = [(CSDAVConference *)self conferenceProvider];
  v3 = [v2 outputAudioPowerSpectrumToken];

  return v3;
}

- (NSDictionary)localInviteDictionary
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000285D8;
  v11 = sub_100032884;
  v12 = 0;
  v3 = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006A5F0;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

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
  v3 = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006A720;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setRemoteInviteDictionary:(id)a3
{
  v4 = a3;
  v5 = [(CSDAVConference *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006A83C;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (int64_t)callID
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v3 = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006AA10;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)isCaller
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CSDAVConference *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006AB44;
  v5[3] = &unk_100619E80;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setCaller:(BOOL)a3
{
  v5 = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006AC38;
  v6[3] = &unk_100619EA8;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (NSDate)dateConnected
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000285D8;
  v11 = sub_100032884;
  v12 = 0;
  v3 = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006AE48;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setDateConnected:(id)a3
{
  v8 = a3;
  v5 = [(CSDAVConference *)self queue];
  dispatch_assert_queue_V2(v5);

  dateConnected = self->_dateConnected;
  p_dateConnected = &self->_dateConnected;
  if (dateConnected != v8)
  {
    objc_storeStrong(p_dateConnected, a3);
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
  v3 = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006AFFC;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setDateEnded:(id)a3
{
  v8 = a3;
  v5 = [(CSDAVConference *)self queue];
  dispatch_assert_queue_V2(v5);

  dateEnded = self->_dateEnded;
  p_dateEnded = &self->_dateEnded;
  if (dateEnded != v8)
  {
    objc_storeStrong(p_dateEnded, a3);
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
  v3 = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006B1B0;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (void)setDateStartedConnecting:(id)a3
{
  v8 = a3;
  v5 = [(CSDAVConference *)self queue];
  dispatch_assert_queue_V2(v5);

  dateStartedConnecting = self->_dateStartedConnecting;
  p_dateStartedConnecting = &self->_dateStartedConnecting;
  if (dateStartedConnecting != v8)
  {
    objc_storeStrong(p_dateStartedConnecting, a3);
  }
}

- (int)state
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 1;
  v3 = [(CSDAVConference *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006B324;
  v5[3] = &unk_100619E80;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LODWORD(v2) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setState:(int)a3
{
  v5 = [(CSDAVConference *)self queue];
  dispatch_assert_queue_V2(v5);

  p_state = &self->_state;
  state = self->_state;
  v8 = sub_100004778();
  v9 = v8;
  if (state >= a3)
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1004713C4(&self->_state, a3, v9);
    }
  }

  else
  {
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = *p_state;
      v11[0] = 67109376;
      v11[1] = a3;
      v12 = 1024;
      v13 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "set CSDAVConferenceState to %d from %d", v11, 0xEu);
    }

    *p_state = a3;
    switch(a3)
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
  v3 = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006B5A4;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[3];
  _Block_object_dispose(&v7, 8);
  return v4;
}

- (BOOL)isMuted
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CSDAVConference *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006B690;
  v5[3] = &unk_100619E80;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)_isMuted
{
  if (-[CSDAVConference isAudioInjectionAllowed](self, "isAudioInjectionAllowed") && (-[CSDAVConference featureFlags](self, "featureFlags"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 relayCallRecordingEnabled], v3, v4))
  {

    return [(CSDAVConference *)self expectedUplinkMuted];
  }

  else
  {
    v6 = [(CSDAVConference *)self conferenceProvider];
    v7 = [v6 isMicrophoneMuted];

    return v7;
  }
}

- (void)setMuted:(BOOL)a3
{
  v5 = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006B7F0;
  v6[3] = &unk_100619EA8;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (void)setAudioInjectionAllowed:(BOOL)a3
{
  v5 = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006BA84;
  v6[3] = &unk_100619EA8;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (BOOL)isSendingAudio
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CSDAVConference *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006BCF4;
  v5[3] = &unk_100619E80;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)_isSendingAudio
{
  v3 = [(CSDAVConference *)self conferenceProvider];

  if (v3)
  {
    v4 = [(CSDAVConference *)self conferenceProvider];
    v5 = [v4 isAudioPaused] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

- (void)setSendingAudio:(BOOL)a3
{
  v5 = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006BE1C;
  v6[3] = &unk_100619EA8;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (BOOL)isSendingAudioData
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CSDAVConference *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006BFF8;
  v5[3] = &unk_100619E80;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)_isSendingAudioData
{
  v3 = [(CSDAVConference *)self conferenceProvider];

  if (!v3)
  {
    return 0;
  }

  v4 = [(CSDAVConference *)self conferenceProvider];
  v5 = [v4 isSendingAudio];

  return v5;
}

- (void)setSendingAudioData:(BOOL)a3
{
  v5 = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006C120;
  v6[3] = &unk_100619EA8;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (BOOL)hasReceivedFirstRemoteFrame
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CSDAVConference *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006C2F8;
  v5[3] = &unk_100619E80;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)isSendingVideo
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CSDAVConference *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006C3E4;
  v5[3] = &unk_100619E80;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (BOOL)_isSendingVideo
{
  v3 = [(CSDAVConference *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDAVConference *)self conferenceProvider];

  if (v4)
  {
    v5 = [(CSDAVConference *)self _isSendingVideoExpected];
    v6 = v5;
    if (v5)
    {
      LOBYTE(v7) = [v5 BOOLValue];
    }

    else
    {
      v8 = [(CSDAVConference *)self conferenceProvider];
      v7 = [v8 isVideoPaused] ^ 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)setSendingVideo:(BOOL)a3
{
  v5 = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006C554;
  v6[3] = &unk_100619EA8;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (NSNumber)isSendingVideoExpected
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = sub_1000285D8;
  v11 = sub_100032884;
  v12 = 0;
  v3 = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006C930;
  v6[3] = &unk_100619E80;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

- (id)_isSendingVideoExpected
{
  v3 = [(CSDAVConference *)self queue];
  dispatch_assert_queue_V2(v3);

  sendingVideoExpected = self->_sendingVideoExpected;

  return sendingVideoExpected;
}

- (void)setSendingVideoExpected:(id)a3
{
  v8 = a3;
  v5 = [(CSDAVConference *)self queue];
  dispatch_assert_queue_V2(v5);

  sendingVideoExpected = self->_sendingVideoExpected;
  p_sendingVideoExpected = &self->_sendingVideoExpected;
  if ((TUObjectsAreEqualOrNil() & 1) == 0)
  {
    objc_storeStrong(p_sendingVideoExpected, a3);
  }
}

- (void)updateCapabilities:(id)a3
{
  v4 = a3;
  v5 = [(CSDAVConference *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006CAFC;
  v7[3] = &unk_100619D88;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (BOOL)isRemoteVideoPaused
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CSDAVConference *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006CD04;
  v5[3] = &unk_100619E80;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LOBYTE(v2) = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (CGSize)remoteVideoPresentationSize
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3010000000;
  v12 = &unk_1004DFFDA;
  v13 = NSZeroSize;
  v3 = [(CSDAVConference *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006CE14;
  v8[3] = &unk_100619E80;
  v8[4] = self;
  v8[5] = &v9;
  dispatch_sync(v3, v8);

  v4 = v10[4];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);
  v6 = v4;
  v7 = v5;
  result.height = v7;
  result.width = v6;
  return result;
}

- (void)setRemoteVideoPresentationSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006CEC4;
  block[3] = &unk_100619ED0;
  block[4] = self;
  *&block[5] = width;
  *&block[6] = height;
  dispatch_async(v6, block);
}

- (unsigned)remoteVideoPresentationState
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CSDAVConference *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006D0E8;
  v5[3] = &unk_100619E80;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LODWORD(v2) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setRemoteVideoPresentationState:(unsigned int)a3
{
  v5 = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006D194;
  v6[3] = &unk_100619EF8;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (void)_setUpDidStartTimeout
{
  [(CSDAVConference *)self connectionTimeout];
  v4 = dispatch_time(0, (v3 * 1000000000.0));
  v5 = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006D364;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_after(v4, v5, block);
}

- (int)deviceRole
{
  v2 = self;
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v3 = [(CSDAVConference *)self queue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006D4C0;
  v5[3] = &unk_100619E80;
  v5[4] = v2;
  v5[5] = &v6;
  dispatch_sync(v3, v5);

  LODWORD(v2) = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v2;
}

- (void)setDeviceRole:(int)a3
{
  v5 = [(CSDAVConference *)self queue];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006D5C4;
  v6[3] = &unk_100619EF8;
  v6[4] = self;
  v7 = a3;
  dispatch_async(v5, v6);
}

- (void)startedCapturingLocalVideo:(id)a3
{
  if (TUAllowLocalVideoRecording())
  {
    v4 = [(CSDAVConference *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006D7F0;
    block[3] = &unk_100619D38;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

- (void)stoppedCapturingLocalVideo:(id)a3
{
  if (TUAllowLocalVideoRecording())
  {
    v4 = [(CSDAVConference *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10006D890;
    block[3] = &unk_100619D38;
    block[4] = self;
    dispatch_async(v4, block);
  }
}

- (void)_performDelegateCallback:(id)a3
{
  block = a3;
  v4 = [(CSDAVConference *)self queue];
  dispatch_assert_queue_V2(v4);

  v5 = [(CSDAVConference *)self delegate];
  if (v5)
  {
    v6 = v5;
    v7 = [(CSDAVConference *)self delegateQueue];

    if (v7)
    {
      v8 = [(CSDAVConference *)self delegateQueue];
      v9 = dispatch_block_create(DISPATCH_BLOCK_ENFORCE_QOS_CLASS|DISPATCH_BLOCK_ASSIGN_CURRENT, block);
      dispatch_async(v8, v9);
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

- (void)_sendDelegateEndedWithReason:(int64_t)a3 error:(id)a4
{
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006DBA8;
  v7[3] = &unk_100619F20;
  v8 = a4;
  v9 = a3;
  v7[4] = self;
  v6 = v8;
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

- (void)_sendDelegateRemoteMediaStalled:(BOOL)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10006E0A8;
  v3[3] = &unk_100619EA8;
  v3[4] = self;
  v4 = a3;
  [(CSDAVConference *)self _performDelegateCallback:v3];
}

- (void)_sendDelegateInputFrequencyLevelChanged:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006E1A8;
  v4[3] = &unk_100619D88;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(CSDAVConference *)v5 _performDelegateCallback:v4];
}

- (void)_sendDelegateOutputFrequencyLevelChanged:(id)a3
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10006E2A4;
  v4[3] = &unk_100619D88;
  v5 = self;
  v6 = a3;
  v3 = v6;
  [(CSDAVConference *)v5 _performDelegateCallback:v4];
}

- (void)_sendDelegateInputLevelChanged:(float)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10006E37C;
  v3[3] = &unk_100619EF8;
  v3[4] = self;
  v4 = a3;
  [(CSDAVConference *)self _performDelegateCallback:v3];
}

- (void)_sendDelegateOutputLevelChanged:(float)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10006E458;
  v3[3] = &unk_100619EF8;
  v3[4] = self;
  v4 = a3;
  [(CSDAVConference *)self _performDelegateCallback:v3];
}

- (void)_sendDelegateBytesOfDataUsageChanged:(int64_t)a3
{
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_10006E530;
  v3[3] = &unk_100619D60;
  v3[4] = self;
  v3[5] = a3;
  [(CSDAVConference *)self _performDelegateCallback:v3];
}

- (void)_sendDelegateReceivedData:(id)a3 forCallID:(int64_t)a4
{
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10006E634;
  v6[3] = &unk_100619F20;
  v7 = self;
  v8 = a3;
  v9 = a4;
  v5 = v8;
  [(CSDAVConference *)v7 _performDelegateCallback:v6];
}

- (int64_t)_endedReasonForDidStopError:(id)a3 error:(id *)a4
{
  v5 = a3;
  v6 = v5;
  if (!v5)
  {
    v9 = 0;
    if (!a4)
    {
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  v7 = [v5 code];
  v8 = 1;
  if (v7 == 32005)
  {
    v8 = 7;
  }

  if (v7 == 32003)
  {
    v9 = 2;
  }

  else
  {
    v9 = v8;
  }

  if (v7 == 32003)
  {
    v5 = 0;
  }

  else
  {
    v5 = v6;
  }

  if (a4)
  {
LABEL_11:
    *a4 = v5;
  }

LABEL_12:

  return v9;
}

- (void)conferenceProvider:(id)a3 didStartSession:(BOOL)a4 error:(id)a5
{
  v7 = a5;
  v8 = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006E7E0;
  block[3] = &unk_100619F48;
  v12 = a4;
  block[4] = self;
  v11 = v7;
  v9 = v7;
  dispatch_async(v8, block);
}

- (void)conferenceProvider:(id)a3 didStopWithError:(id)a4 callMetadata:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006EB08;
  block[3] = &unk_100619E58;
  v13 = v7;
  v14 = v8;
  v15 = self;
  v10 = v8;
  v11 = v7;
  dispatch_async(v9, block);
}

- (void)connectionClosedForConferenceProvider:(id)a3
{
  v4 = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006ED84;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)conferenceProvider:(id)a3 updateInputFrequencyLevel:(id)a4
{
  v5 = [a4 copy];
  v6 = [(CSDAVConference *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006EEB0;
  v8[3] = &unk_100619D88;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)conferenceProvider:(id)a3 updateOutputFrequencyLevel:(id)a4
{
  v5 = [a4 copy];
  v6 = [(CSDAVConference *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10006EF74;
  v8[3] = &unk_100619D88;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  dispatch_async(v6, v8);
}

- (void)conferenceProvider:(id)a3 updateInputLevel:(float)a4
{
  v6 = [(CSDAVConference *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F018;
  v7[3] = &unk_100619EF8;
  v7[4] = self;
  v8 = a4;
  dispatch_async(v6, v7);
}

- (void)conferenceProvider:(id)a3 updateOutputLevel:(float)a4
{
  v6 = [(CSDAVConference *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F0C0;
  v7[3] = &unk_100619EF8;
  v7[4] = self;
  v8 = a4;
  dispatch_async(v6, v7);
}

- (void)conferenceProvider:(id)a3 didPauseAudio:(BOOL)a4 error:(id)a5
{
  v7 = a5;
  v8 = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F18C;
  block[3] = &unk_100619F48;
  v13 = a4;
  v11 = v7;
  v12 = self;
  v9 = v7;
  dispatch_async(v8, block);
}

- (void)conferenceProvider:(id)a3 didPauseVideo:(BOOL)a4 error:(id)a5
{
  v7 = a5;
  v8 = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F308;
  block[3] = &unk_100619F48;
  v13 = a4;
  v11 = v7;
  v12 = self;
  v9 = v7;
  dispatch_async(v8, block);
}

- (void)conferenceProviderReceivedFirstRemoteFrame:(id)a3
{
  v4 = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006F580;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(v4, block);
}

- (void)conferenceProvider:(id)a3 remoteVideoPaused:(BOOL)a4
{
  v6 = [(CSDAVConference *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F698;
  v7[3] = &unk_100619EA8;
  v8 = a4;
  v7[4] = self;
  dispatch_async(v6, v7);
}

- (void)conferenceProvider:(id)a3 remoteMediaStalled:(BOOL)a4
{
  v6 = [(CSDAVConference *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F7EC;
  v7[3] = &unk_100619EA8;
  v8 = a4;
  v7[4] = self;
  dispatch_async(v6, v7);
}

- (void)serverDiedForConferenceProvider:(id)a3
{
  v4 = a3;
  v5 = [(CSDAVConference *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006F954;
  v7[3] = &unk_100619D88;
  v8 = v4;
  v9 = self;
  v6 = v4;
  dispatch_async(v5, v7);
}

- (void)conferenceProvider:(id)a3 didReceiveData:(id)a4 forCallID:(int64_t)a5
{
  v7 = [a4 copy];
  v8 = [(CSDAVConference *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10006FA70;
  block[3] = &unk_100619F20;
  block[4] = self;
  v11 = v7;
  v12 = a5;
  v9 = v7;
  dispatch_async(v8, block);
}

- (CSDAVConferenceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end