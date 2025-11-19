@interface CSDAVConferenceProvider
- (BOOL)isAudioPaused;
- (BOOL)isInputFrequencyMeteringEnabled;
- (BOOL)isMicrophoneMuted;
- (BOOL)isOutputFrequencyMeteringEnabled;
- (BOOL)isSendingAudio;
- (BOOL)isVideoPaused;
- (CSDAVConferenceProvider)initWithClientUUID:(id)a3 serialQueue:(id)a4;
- (CSDAVConferenceProviderDelegate)delegate;
- (int64_t)audioDownlinkToken;
- (int64_t)audioUplinkToken;
- (int64_t)inputAudioPowerSpectrumToken;
- (int64_t)outputAudioPowerSpectrumToken;
- (void)cancel;
- (void)conference:(id)a3 cancelRelayRequest:(int64_t)a4 requestDict:(id)a5;
- (void)conference:(id)a3 closeConnectionForCallID:(int64_t)a4;
- (void)conference:(id)a3 didReceiveData:(id)a4 forCallID:(int64_t)a5;
- (void)conference:(id)a3 didStopWithCallID:(int64_t)a4 error:(id)a5;
- (void)conference:(id)a3 didStopWithCallID:(int64_t)a4 error:(id)a5 callMetadata:(id)a6;
- (void)conference:(id)a3 inititiateRelayRequest:(int64_t)a4 requestDict:(id)a5;
- (void)conference:(id)a3 receivedFirstRemoteFrameForCallID:(int64_t)a4;
- (void)conference:(id)a3 remoteAudioPaused:(BOOL)a4 callID:(int64_t)a5;
- (void)conference:(id)a3 remoteScreenAttributesChanged:(id)a4 callID:(int64_t)a5;
- (void)conference:(id)a3 remoteVideoAttributesChanged:(id)a4 callID:(int64_t)a5;
- (void)conference:(id)a3 sendRelayUpdate:(int64_t)a4 updateDict:(id)a5;
- (void)conference:(id)a3 updateInputFrequencyLevel:(id)a4;
- (void)conference:(id)a3 updateInputMeterLevel:(float)a4;
- (void)conference:(id)a3 updateOutputFrequencyLevel:(id)a4;
- (void)conference:(id)a3 updateOutputMeterLevel:(float)a4;
- (void)conference:(id)a3 videoQualityNotificationForCallID:(int64_t)a4 isDegraded:(BOOL)a5 isRemote:(BOOL)a6;
- (void)conference:(id)a3 withCallID:(int64_t)a4 networkHint:(BOOL)a5;
- (void)dealloc;
- (void)inviteDictionaryForCallID:(int64_t)a3 remoteInviteDictionary:(id)a4 nonCellularCandidateTimeout:(double)a5 block:(id)a6 queue:(id)a7;
- (void)sendData:(id)a3;
- (void)serverDiedForConference:(id)a3;
- (void)setLocalPortraitAspectRatio:(CGSize)a3 localLandscapeAspectRatio:(CGSize)a4;
- (void)setPeerReportingIdentifier:(id)a3 sessionIdentifier:(id)a4;
- (void)setRemoteVideoPresentationSize:(CGSize)a3;
- (void)stop;
- (void)updateCapabilities:(id)a3;
@end

@implementation CSDAVConferenceProvider

- (CSDAVConferenceProvider)initWithClientUUID:(id)a3 serialQueue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = CSDAVConferenceProvider;
  v8 = [(CSDAVConferenceProvider *)&v17 init];
  if (v8)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 UUIDString];
      *buf = 138412290;
      v19 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Initializing AVConference with client UUID %@", buf, 0xCu);
    }

    v11 = [[AVConference alloc] initWithClientUUID:v6 transportType:1];
    conference = v8->_conference;
    v8->_conference = v11;

    v13 = v8->_conference;
    if (v13)
    {
      [(AVConference *)v13 setDelegate:v8];
      v14 = [[TUVideoDeviceController alloc] initWithSerialQueue:v7];
      videoDeviceController = v8->_videoDeviceController;
      v8->_videoDeviceController = v14;

      [(TUVideoDeviceController *)v8->_videoDeviceController setIgnoreStartPreview:1];
    }

    else
    {

      v8 = 0;
    }
  }

  return v8;
}

- (void)dealloc
{
  v3 = [(CSDAVConferenceProvider *)self conference];
  [v3 setDelegate:0];

  v4.receiver = self;
  v4.super_class = CSDAVConferenceProvider;
  [(CSDAVConferenceProvider *)&v4 dealloc];
}

- (BOOL)isInputFrequencyMeteringEnabled
{
  v2 = [(CSDAVConferenceProvider *)self conference];
  v3 = [v2 isInputFrequencyMeteringEnabled];

  return v3;
}

- (BOOL)isOutputFrequencyMeteringEnabled
{
  v2 = [(CSDAVConferenceProvider *)self conference];
  v3 = [v2 isOutputFrequencyMeteringEnabled];

  return v3;
}

- (int64_t)inputAudioPowerSpectrumToken
{
  v2 = [(CSDAVConferenceProvider *)self conference];
  v3 = [v2 inputAudioPowerSpectrumToken];

  return v3;
}

- (int64_t)outputAudioPowerSpectrumToken
{
  v2 = [(CSDAVConferenceProvider *)self conference];
  v3 = [v2 outputAudioPowerSpectrumToken];

  return v3;
}

- (int64_t)audioUplinkToken
{
  v2 = [(CSDAVConferenceProvider *)self conference];
  v3 = [v2 audioUplinkToken];

  return v3;
}

- (int64_t)audioDownlinkToken
{
  v2 = [(CSDAVConferenceProvider *)self conference];
  v3 = [v2 audioDownlinkToken];

  return v3;
}

- (BOOL)isMicrophoneMuted
{
  v2 = [(CSDAVConferenceProvider *)self conference];
  v3 = [v2 isMicrophoneMuted];

  return v3;
}

- (BOOL)isSendingAudio
{
  v10 = 0;
  v3 = [(CSDAVConferenceProvider *)self conference];
  v9 = 0;
  v4 = [v3 getIsSendingAudio:&v10 callID:-[CSDAVConferenceProvider callID](self error:{"callID"), &v9}];
  v5 = v9;

  if (v4)
  {
    v6 = v10;
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Error calling getIsSendingAudio: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)isAudioPaused
{
  v10 = 0;
  v3 = [(CSDAVConferenceProvider *)self conference];
  v9 = 0;
  v4 = [v3 getIsAudioPaused:&v10 callID:-[CSDAVConferenceProvider callID](self error:{"callID"), &v9}];
  v5 = v9;

  if (v4)
  {
    v6 = v10;
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Error calling getIsAudioPaused: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6 & 1;
}

- (BOOL)isVideoPaused
{
  v10 = 0;
  v3 = [(CSDAVConferenceProvider *)self conference];
  v9 = 0;
  v4 = [v3 getIsVideoPaused:&v10 callID:-[CSDAVConferenceProvider callID](self error:{"callID"), &v9}];
  v5 = v9;

  if (v4)
  {
    v6 = v10;
  }

  else
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Error calling getIsVideoPaused: %@", buf, 0xCu);
    }

    v6 = 0;
  }

  return v6 & 1;
}

- (void)setRemoteVideoPresentationSize:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v14.width = width;
    v14.height = height;
    v7 = NSStringFromSize(v14);
    v8 = [(CSDAVConferenceProvider *)self conference];
    v10 = 138412546;
    v11 = v7;
    v12 = 2112;
    v13 = v8;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Setting conference visual rectangle of size %@ for %@", &v10, 0x16u);
  }

  v9 = [(CSDAVConferenceProvider *)self conference];
  [v9 setConferenceVisualRectangle:-[CSDAVConferenceProvider callID](self forCallID:{"callID"), 0.0, 0.0, width, height}];
}

- (void)setLocalPortraitAspectRatio:(CGSize)a3 localLandscapeAspectRatio:(CGSize)a4
{
  height = a4.height;
  width = a4.width;
  v6 = a3.height;
  v7 = a3.width;
  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v20.width = v7;
    v20.height = v6;
    v10 = NSStringFromSize(v20);
    v21.width = width;
    v21.height = height;
    v11 = NSStringFromSize(v21);
    v12 = [(CSDAVConferenceProvider *)self conference];
    v14 = 138412802;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    v18 = 2112;
    v19 = v12;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Setting local portrait aspect ratio %@ and local landscape aspect ratio %@ for %@", &v14, 0x20u);
  }

  v13 = [(CSDAVConferenceProvider *)self videoDeviceController];
  [v13 setLocalPortraitAspectRatio:v7 localLandscapeAspectRatio:{v6, width, height}];
}

- (void)setPeerReportingIdentifier:(id)a3 sessionIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [(CSDAVConferenceProvider *)self conference];
    v11 = 138412802;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    v15 = 2112;
    v16 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting peer reporting identifer %@ and session identifier %@ for %@", &v11, 0x20u);
  }

  v10 = [(CSDAVConferenceProvider *)self conference];
  [v10 setPeerReportingIdentifier:v6 sessionIdentifier:v7 forCallID:{-[CSDAVConferenceProvider callID](self, "callID")}];
}

- (void)inviteDictionaryForCallID:(int64_t)a3 remoteInviteDictionary:(id)a4 nonCellularCandidateTimeout:(double)a5 block:(id)a6 queue:(id)a7
{
  v12 = a7;
  v13 = a6;
  v14 = a4;
  v15 = [(CSDAVConferenceProvider *)self conference];
  [v15 inviteDictionaryForCallID:a3 remoteInviteDictionary:v14 nonCellularCandidateTimeout:v13 block:v12 queue:a5];
}

- (void)stop
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = [(CSDAVConferenceProvider *)self callID];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Stopping AVConference with callID=%ld", &v5, 0xCu);
  }

  v4 = [(CSDAVConferenceProvider *)self conference];
  [v4 stopCallID:{-[CSDAVConferenceProvider callID](self, "callID")}];
}

- (void)cancel
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 134217984;
    v6 = [(CSDAVConferenceProvider *)self callID];
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Canceling AVConference with callID=%ld", &v5, 0xCu);
  }

  v4 = [(CSDAVConferenceProvider *)self conference];
  [v4 cancelCallID:{-[CSDAVConferenceProvider callID](self, "callID")}];
}

- (void)updateCapabilities:(id)a3
{
  v4 = a3;
  v5 = [(CSDAVConferenceProvider *)self conference];
  [v5 updateCapabilities:v4 forCallID:{-[CSDAVConferenceProvider callID](self, "callID")}];
}

- (void)sendData:(id)a3
{
  v4 = a3;
  v5 = [(CSDAVConferenceProvider *)self conference];
  [v5 sendData:v4 forCallID:-[CSDAVConferenceProvider callID](self encrypted:{"callID"), 0}];
}

- (void)conference:(id)a3 didStopWithCallID:(int64_t)a4 error:(id)a5
{
  v7 = a5;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218242;
    v11 = a4;
    v12 = 2112;
    v13 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "callID=%ld error=%@", &v10, 0x16u);
  }

  v9 = [(CSDAVConferenceProvider *)self delegate];
  [v9 conferenceProvider:self didStopWithError:v7 callMetadata:0];
}

- (void)conference:(id)a3 didStopWithCallID:(int64_t)a4 error:(id)a5 callMetadata:(id)a6
{
  v9 = a5;
  v10 = a6;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 134218498;
    v14 = a4;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "callID=%ld error=%@ callMetadata=%@", &v13, 0x20u);
  }

  v12 = [(CSDAVConferenceProvider *)self delegate];
  [v12 conferenceProvider:self didStopWithError:v9 callMetadata:v10];
}

- (void)conference:(id)a3 closeConnectionForCallID:(int64_t)a4
{
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "callID=%ld", &v8, 0xCu);
  }

  v7 = [(CSDAVConferenceProvider *)self delegate];
  [v7 connectionClosedForConferenceProvider:self];
}

- (void)conference:(id)a3 updateInputFrequencyLevel:(id)a4
{
  v5 = a4;
  v6 = [(CSDAVConferenceProvider *)self delegate];
  [v6 conferenceProvider:self updateInputFrequencyLevel:v5];
}

- (void)conference:(id)a3 updateOutputFrequencyLevel:(id)a4
{
  v5 = a4;
  v6 = [(CSDAVConferenceProvider *)self delegate];
  [v6 conferenceProvider:self updateOutputFrequencyLevel:v5];
}

- (void)conference:(id)a3 updateInputMeterLevel:(float)a4
{
  v7 = [(CSDAVConferenceProvider *)self delegate];
  *&v6 = a4;
  [v7 conferenceProvider:self updateInputLevel:v6];
}

- (void)conference:(id)a3 updateOutputMeterLevel:(float)a4
{
  v7 = [(CSDAVConferenceProvider *)self delegate];
  *&v6 = a4;
  [v7 conferenceProvider:self updateOutputLevel:v6];
}

- (void)conference:(id)a3 receivedFirstRemoteFrameForCallID:(int64_t)a4
{
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "callID=%ld", &v8, 0xCu);
  }

  v7 = [(CSDAVConferenceProvider *)self delegate];
  [v7 conferenceProviderReceivedFirstRemoteFrame:self];
}

- (void)conference:(id)a3 remoteScreenAttributesChanged:(id)a4 callID:(int64_t)a5
{
  v6 = a4;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v6;
    v10 = 2048;
    v11 = a5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "screenAttributes=%@ callID=%ld", &v8, 0x16u);
  }
}

- (void)conference:(id)a3 remoteVideoAttributesChanged:(id)a4 callID:(int64_t)a5
{
  v6 = a4;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412546;
    v9 = v6;
    v10 = 2048;
    v11 = a5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "videoAttributes=%@ callID=%ld", &v8, 0x16u);
  }
}

- (void)conference:(id)a3 remoteAudioPaused:(BOOL)a4 callID:(int64_t)a5
{
  v6 = a4;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109376;
    v8[1] = v6;
    v9 = 2048;
    v10 = a5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "didPause=%d callID=%ld", v8, 0x12u);
  }
}

- (void)serverDiedForConference:(id)a3
{
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_10047E9E0(v4);
  }

  v5 = [(CSDAVConferenceProvider *)self delegate];
  [v5 serverDiedForConferenceProvider:self];
}

- (void)conference:(id)a3 inititiateRelayRequest:(int64_t)a4 requestDict:(id)a5
{
  v6 = a5;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = a4;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "callID=%ld parameters=%@", &v8, 0x16u);
  }
}

- (void)conference:(id)a3 sendRelayUpdate:(int64_t)a4 updateDict:(id)a5
{
  v6 = a5;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = a4;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "callID=%ld parameters=%@", &v8, 0x16u);
  }
}

- (void)conference:(id)a3 cancelRelayRequest:(int64_t)a4 requestDict:(id)a5
{
  v6 = a5;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218242;
    v9 = a4;
    v10 = 2112;
    v11 = v6;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "callID=%ld parameters=%@", &v8, 0x16u);
  }
}

- (void)conference:(id)a3 videoQualityNotificationForCallID:(int64_t)a4 isDegraded:(BOOL)a5 isRemote:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134218496;
    v11 = a4;
    v12 = 1024;
    v13 = v7;
    v14 = 1024;
    v15 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "callID=%ld isDegraded=%d isRemoteVideo=%d", &v10, 0x18u);
  }
}

- (void)conference:(id)a3 withCallID:(int64_t)a4 networkHint:(BOOL)a5
{
  v5 = a5;
  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134218240;
    v9 = a4;
    v10 = 1024;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] callID=%ld isNetworkBad=%d", &v8, 0x12u);
  }
}

- (void)conference:(id)a3 didReceiveData:(id)a4 forCallID:(int64_t)a5
{
  v7 = a4;
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = @"non-nil";
    if (!v7)
    {
      v9 = @"nil";
    }

    v11 = 134218242;
    v12 = a5;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "callID=%ld didReceiveData=%@", &v11, 0x16u);
  }

  v10 = [(CSDAVConferenceProvider *)self delegate];
  [v10 conferenceProvider:self didReceiveData:v7 forCallID:a5];
}

- (CSDAVConferenceProviderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end