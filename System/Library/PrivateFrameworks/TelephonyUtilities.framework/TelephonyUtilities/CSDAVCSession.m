@interface CSDAVCSession
+ (AVCSessionConfiguration)defaultConfiguration;
+ (TUCallScreenShareAttributes)defaultScreenShareAttributes;
+ (id)avcScreenCaptureConfigurationForScreenAttributes:(id)a3;
+ (unsigned)avcSessionVideoQualityFrom:(unint64_t)a3;
- (BOOL)containsRemoteParticipantWithIdentifier:(unint64_t)a3;
- (BOOL)isAudioEnabled;
- (BOOL)isAudioPaused;
- (BOOL)isAudioReady;
- (BOOL)isOneToOneModeEnabled;
- (BOOL)isRemoteScreenEnabledForParticipant:(id)a3;
- (BOOL)isScreenEnabled;
- (BOOL)isUplinkMuted;
- (BOOL)isVideoEnabled;
- (BOOL)isVideoPaused;
- (BOOL)shouldDisableOneToOneModeForScreenShare;
- (BOOL)shouldIgnoreBenignErrorOnStart:(id)a3;
- (CGRect)presentationRect;
- (CSDAVCSession)initWithSessionCreationBlock:(id)a3 transportToken:(id)a4 delegate:(id)a5 queue:(id)a6 reportingHierarchyToken:(id)a7 avMode:(unint64_t)a8 videoEnabled:(BOOL)a9 isNearbyConversation:(BOOL)a10 captureSessionCreationBlock:(id)a11;
- (CSDAVCSession)initWithTransportToken:(id)a3 delegate:(id)a4 queue:(id)a5 reportingHierarchyToken:(id)a6 oneToOneModeEnabled:(BOOL)a7 avMode:(unint64_t)a8 videoEnabled:(BOOL)a9 report:(id)a10 serviceName:(id)a11 ABTestConfiguration:(id)a12 sessionMode:(int64_t)a13 isNearbyConversation:(BOOL)a14;
- (CSDAVCSessionDelegate)delegate;
- (NSData)localParticipantData;
- (NSString)sessionIdentifier;
- (TUFeatureFlags)featureFlags;
- (id)clientBundleIDForAVCSession;
- (id)localParticipantDataWithVersion:(unint64_t)a3;
- (id)pendingRemovedRemoteParticipantByIdentififer:(unint64_t)a3;
- (int)presentationState;
- (int64_t)localCaptionsToken;
- (int64_t)maxVideoDecodesAllowed;
- (int64_t)sessionToken;
- (void)_disableRemoteControlForAllParticipants;
- (void)beginParticipantUpdates;
- (void)commitParticipantUpdates;
- (void)disableRemoteControl;
- (void)handleUpdatedControllingRemoteScreen:(BOOL)a3;
- (void)participant:(id)a3 didReact:(id)a4;
- (void)participant:(id)a3 mediaPrioritiesDidChange:(id)a4;
- (void)participant:(id)a3 mixingDidStartForMediaType:(unsigned int)a4 mixingMediaType:(unsigned int)a5;
- (void)participant:(id)a3 mixingDidStopForMediaType:(unsigned int)a4;
- (void)participant:(id)a3 remoteMediaStateDidChange:(unsigned int)a4 forMediaType:(unsigned int)a5;
- (void)participant:(id)a3 screenEnabled:(BOOL)a4 didSucceed:(BOOL)a5 error:(id)a6;
- (void)queueAddParticipantRetryBlock:(id)a3 withVideoEnabled:(BOOL)a4 audioPaused:(BOOL)a5 screenEnabled:(BOOL)a6;
- (void)removeParticipant:(id)a3;
- (void)screenCapture:(id)a3 didStart:(BOOL)a4 withError:(id)a5;
- (void)screenCapture:(id)a3 didStop:(BOOL)a4 withError:(id)a5;
- (void)screenCapture:(id)a3 didUpdateAttributes:(id)a4 error:(id)a5;
- (void)session:(id)a3 addParticipant:(id)a4 didSucceed:(BOOL)a5 error:(id)a6;
- (void)session:(id)a3 didDetectError:(id)a4;
- (void)session:(id)a3 didReact:(id)a4;
- (void)session:(id)a3 didStopWithError:(id)a4;
- (void)session:(id)a3 didStopWithError:(id)a4 metadata:(id)a5;
- (void)session:(id)a3 didUpdate:(BOOL)a4 configuration:(id)a5 error:(id)a6;
- (void)session:(id)a3 mediaStateDidChange:(unsigned int)a4 forMediaType:(unsigned int)a5 didSucceed:(BOOL)a6 error:(id)a7;
- (void)session:(id)a3 mixingDidStartForMediaType:(unsigned int)a4 mixingMediaType:(unsigned int)a5;
- (void)session:(id)a3 mixingDidStopForMediaType:(unsigned int)a4;
- (void)sessionDidStopReacting:(id)a3;
- (void)sessionServerDidDisconnect:(id)a3;
- (void)sessionShouldReconnect:(id)a3;
- (void)setAudioReady:(BOOL)a3;
- (void)setGridDisplayMode:(unint64_t)a3;
- (void)setLocalParticipantCluster:(id)a3;
- (void)setParticipantCluster:(id)a3 forParticipantWithIdentifier:(unint64_t)a4;
- (void)setPresentationRect:(CGRect)a3;
- (void)setPresentationState:(int)a3;
- (void)setRelaying:(BOOL)a3;
- (void)setScreenEnabled:(BOOL)a3 attributes:(id)a4;
- (void)setScreenShareAttributes:(id)a3;
- (void)setScreening:(BOOL)a3;
- (void)setVideo:(BOOL)a3;
- (void)setVideoQuality:(unint64_t)a3 forParticipantWithIdentifier:(unint64_t)a4;
- (void)setVideoQuality:(unint64_t)a3 visibility:(id)a4 prominence:(id)a5 spatialPosition:(CGRect)a6 isInCanvas:(BOOL)a7 forParticipantWithIdentifier:(unint64_t)a8;
- (void)start;
- (void)stopCapture;
- (void)stopWithError:(id)a3;
- (void)updateConfigurationSessionMode:(int64_t)a3;
@end

@implementation CSDAVCSession

- (CSDAVCSession)initWithSessionCreationBlock:(id)a3 transportToken:(id)a4 delegate:(id)a5 queue:(id)a6 reportingHierarchyToken:(id)a7 avMode:(unint64_t)a8 videoEnabled:(BOOL)a9 isNearbyConversation:(BOOL)a10 captureSessionCreationBlock:(id)a11
{
  v16 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a6;
  v20 = a7;
  v21 = a11;
  v48.receiver = self;
  v48.super_class = CSDAVCSession;
  v22 = [(CSDAVCSession *)&v48 init];
  if (v22)
  {
    v23 = v16[2](v16, v17, v20, v19);
    if (v23)
    {
      objc_storeStrong(&v22->_queue, a6);
      objc_storeStrong(&v22->_session, v23);
      objc_storeWeak(&v22->_delegate, v18);
      v22->_hasCalledStop = 0;
      v24 = +[NSMutableDictionary dictionary];
      remoteParticipantsByIdentifier = v22->_remoteParticipantsByIdentifier;
      v22->_remoteParticipantsByIdentifier = v24;

      v26 = +[NSMutableDictionary dictionary];
      pendingRemovedParticipantsByID = v22->_pendingRemovedParticipantsByID;
      v22->_pendingRemovedParticipantsByID = v26;

      v22->_video = a8 == 2;
      v28 = objc_alloc_init(NSMutableArray);
      sessionUpdateCompletionQueue = v22->_sessionUpdateCompletionQueue;
      v22->_sessionUpdateCompletionQueue = v28;

      v30 = [[NSMutableArray alloc] initWithCapacity:1];
      captureSessionQueue = v22->_captureSessionQueue;
      v22->_captureSessionQueue = v30;

      v32 = objc_retainBlock(v21);
      captureSessionCreationBlock = v22->_captureSessionCreationBlock;
      v22->_captureSessionCreationBlock = v32;

      v22->_captureCapabilities = +[AVCScreenCapture captureCapabilities];
      mostRecentScreenShareAttributes = v22->_mostRecentScreenShareAttributes;
      v22->_mostRecentScreenShareAttributes = 0;

      v35 = 0;
      if (a9)
      {
        v35 = [(CSDAVCSession *)v22 isVideo];
      }

      [v23 setVideoEnabled:v35];
      objc_initWeak(&location, v22);
      v45[0] = _NSConcreteStackBlock;
      v45[1] = 3221225472;
      v45[2] = sub_10020EECC;
      v45[3] = &unk_10061EB38;
      objc_copyWeak(&v46, &location);
      v36 = objc_retainBlock(v45);
      avcSessionParticipantCreationBlock = v22->_avcSessionParticipantCreationBlock;
      v22->_avcSessionParticipantCreationBlock = v36;

      v38 = +[TUConversationManager allowsVideo];
      if (a8 == 2)
      {
        v39 = v38;
      }

      else
      {
        v39 = 0;
      }

      if ((v39 & 1) == 0)
      {
        v40 = sub_100004778();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v40, OS_LOG_TYPE_DEFAULT, "Updating session to videoEnabled=NO after creation since current device or call does not support video", buf, 2u);
        }

        [v23 setVideoEnabled:0];
        if (!a8)
        {
          [v23 setAudioEnabled:0];
        }
      }

      objc_destroyWeak(&v46);
      objc_destroyWeak(&location);
    }

    else
    {
      v41 = sub_100004778();
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_10047C694();
      }

      v22 = 0;
    }
  }

  return v22;
}

- (CSDAVCSession)initWithTransportToken:(id)a3 delegate:(id)a4 queue:(id)a5 reportingHierarchyToken:(id)a6 oneToOneModeEnabled:(BOOL)a7 avMode:(unint64_t)a8 videoEnabled:(BOOL)a9 report:(id)a10 serviceName:(id)a11 ABTestConfiguration:(id)a12 sessionMode:(int64_t)a13 isNearbyConversation:(BOOL)a14
{
  v19 = a3;
  v20 = a4;
  v21 = a5;
  v22 = a6;
  v23 = a10;
  v24 = a11;
  v25 = a12;
  objc_initWeak(location, self);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10020F1BC;
  v36[3] = &unk_10061EB60;
  v26 = self;
  v37 = v26;
  v42 = a7;
  v27 = v23;
  v38 = v27;
  v28 = v24;
  v39 = v28;
  v41 = a13;
  v29 = v25;
  v40 = v29;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10020F4C8;
  v34[3] = &unk_10061EB88;
  objc_copyWeak(&v35, location);
  BYTE1(v32) = a14;
  LOBYTE(v32) = a9;
  v30 = [(CSDAVCSession *)v26 initWithSessionCreationBlock:v36 transportToken:v19 delegate:v20 queue:v21 reportingHierarchyToken:v22 avMode:a8 videoEnabled:v32 isNearbyConversation:v34 captureSessionCreationBlock:?];
  objc_destroyWeak(&v35);

  objc_destroyWeak(location);
  return v30;
}

- (TUFeatureFlags)featureFlags
{
  featureFlags = self->_featureFlags;
  if (!featureFlags)
  {
    v4 = objc_alloc_init(TUFeatureFlags);
    v5 = self->_featureFlags;
    self->_featureFlags = v4;

    featureFlags = self->_featureFlags;
  }

  return featureFlags;
}

+ (AVCSessionConfiguration)defaultConfiguration
{
  v3 = objc_alloc_init(AVCSessionConfiguration);
  [v3 setSessionMode:{objc_msgSend(a1, "defaultSessionMode")}];

  return v3;
}

- (NSData)localParticipantData
{
  v3 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v3);

  return [(CSDAVCSession *)self localParticipantDataWithVersion:1];
}

- (id)localParticipantDataWithVersion:(unint64_t)a3
{
  v5 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDAVCSession *)self session];
  v7 = [v6 negotiationDataForProtocolVersion:a3 == 2];

  return v7;
}

- (BOOL)containsRemoteParticipantWithIdentifier:(unint64_t)a3
{
  v5 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  v7 = [NSNumber numberWithUnsignedLongLong:a3];
  v8 = [v6 objectForKeyedSubscript:v7];
  LOBYTE(v5) = v8 != 0;

  return v5;
}

- (int64_t)sessionToken
{
  v3 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDAVCSession *)self session];
  v5 = [v4 sessionToken];

  return v5;
}

- (NSString)sessionIdentifier
{
  v3 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDAVCSession *)self session];
  v5 = [v4 uuid];

  return v5;
}

- (int64_t)maxVideoDecodesAllowed
{
  v2 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v2);

  return 0;
}

+ (TUCallScreenShareAttributes)defaultScreenShareAttributes
{
  v2 = objc_alloc_init(TUCallScreenShareAttributes);
  v3 = [NSNumber numberWithInt:0xFFFFFFFFLL];
  [v2 setDisplayID:v3];

  v4 = [NSValue valueWithRect:0.0, 0.0, -1.0, -1.0];
  [v2 setOriginalResolution:v4];

  v5 = [NSNumber numberWithDouble:60.0];
  [v2 setFrameRate:v5];

  [v2 setDeviceFamily:{+[TUCallScreenShareAttributes currentDeviceFamily](TUCallScreenShareAttributes, "currentDeviceFamily")}];

  return v2;
}

- (BOOL)isAudioReady
{
  v3 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v3);

  return self->_audioReady;
}

- (void)setAudioReady:(BOOL)a3
{
  v5 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v5);

  self->_audioReady = a3;
}

- (BOOL)isUplinkMuted
{
  v3 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDAVCSession *)self session];
  LOBYTE(v3) = [v4 isAudioMuted];

  return v3;
}

- (BOOL)isAudioEnabled
{
  v3 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDAVCSession *)self session];
  LOBYTE(v3) = [v4 isAudioEnabled];

  return v3;
}

- (BOOL)isVideoEnabled
{
  v3 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDAVCSession *)self session];
  LOBYTE(v3) = [v4 isVideoEnabled];

  return v3;
}

- (BOOL)isScreenEnabled
{
  v3 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDAVCSession *)self session];
  LOBYTE(v3) = [v4 isScreenEnabled];

  return v3;
}

- (void)setVideo:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = v3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setVideo: %d", v8, 8u);
  }

  if (v3)
  {
    v7 = sub_100004778();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v8[0]) = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Switching to video is currently not supported", v8, 2u);
    }
  }

  else
  {
    self->_video = v3;
  }
}

- (BOOL)isVideoPaused
{
  v3 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDAVCSession *)self session];
  LOBYTE(v3) = [v4 isVideoPaused];

  return v3;
}

- (BOOL)isAudioPaused
{
  v3 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDAVCSession *)self session];
  LOBYTE(v3) = [v4 isAudioPaused];

  return v3;
}

- (BOOL)isOneToOneModeEnabled
{
  v3 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDAVCSession *)self session];
  LOBYTE(v3) = [v4 isOneToOneEnabled];

  return v3;
}

- (void)handleUpdatedControllingRemoteScreen:(BOOL)a3
{
  v3 = a3;
  [(CSDAVCSession *)self _disableRemoteControlForAllParticipants];
  if (v3)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
    v6 = [v5 allValues];

    v7 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v14;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if ([v11 isScreenEnabled])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [v6 countByEnumeratingWithState:&v13 objects:v17 count:16];
          if (v8)
          {
            goto LABEL_4;
          }

          goto LABEL_13;
        }
      }

      v12 = v11;

      if (!v12)
      {
        return;
      }

      [v12 setScreenControlEnabled:1];
      v6 = v12;
    }

LABEL_13:
  }
}

- (void)disableRemoteControl
{
  v3 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Disabling remote control on AVCSession and participants", v5, 2u);
  }

  [(CSDAVCSession *)self _updateConfigurationRemoteControlEnabled:0];
  [(CSDAVCSession *)self _disableRemoteControlForAllParticipants];
}

- (void)_disableRemoteControlForAllParticipants
{
  v3 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Disabling remote control for all participants", buf, 2u);
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v5 = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  v6 = [v5 allValues];

  v7 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10) setScreenControlEnabled:0];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (int)presentationState
{
  v3 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDAVCSession *)self session];
  v5 = v4;
  if (v4)
  {
    [v4 presentationInfo];
    v6 = v8;

    if (v6 == 2)
    {
      return 2;
    }

    else
    {
      return v6 == 1;
    }
  }

  else
  {

    return 0;
  }
}

- (void)setPresentationState:(int)a3
{
  v5 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v5);

  [(CSDAVCSession *)self beginParticipantUpdates];
  v12 = 0u;
  v13 = 0u;
  if (a3 == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = a3 == 1;
  }

  v11 = 0uLL;
  v7 = [(CSDAVCSession *)self session];
  v8 = v7;
  if (v7)
  {
    [v7 presentationInfo];
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
  }

  BYTE8(v13) = v6;
  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "presentationState: %d", buf, 8u);
  }

  v10 = [(CSDAVCSession *)self session];
  *buf = v11;
  v15 = v12;
  v16 = v13;
  [v10 setPresentationInfo:buf];

  [(CSDAVCSession *)self commitParticipantUpdates];
}

- (CGRect)presentationRect
{
  v3 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDAVCSession *)self session];
  v5 = v4;
  if (v4)
  {
    [v4 presentationInfo];
    v6 = v15;
    v7 = v14;
    v8 = v17;
    v9 = v16;
  }

  else
  {
    v8 = 0.0;
    v9 = 0.0;
    v6 = 0.0;
    v7 = 0.0;
  }

  v10 = v7;
  v11 = v6;
  v12 = v9;
  v13 = v8;
  result.size.height = v13;
  result.size.width = v12;
  result.origin.y = v11;
  result.origin.x = v10;
  return result;
}

- (void)setPresentationRect:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v8 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v8);

  [(CSDAVCSession *)self beginParticipantUpdates];
  v15 = 0u;
  v9 = [(CSDAVCSession *)self session];
  v10 = v9;
  if (v9)
  {
    [v9 presentationInfo];
  }

  else
  {
    v15 = 0u;
  }

  *&v13 = x;
  *(&v13 + 1) = y;
  *&v14 = width;
  *(&v14 + 1) = height;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218752;
    *&buf[4] = x;
    *&buf[12] = 2048;
    *&buf[14] = y;
    *&buf[22] = 2048;
    *&buf[24] = width;
    LOWORD(v17) = 2048;
    *(&v17 + 2) = height;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "presentationRect: (%f, %f, %f, %f)", buf, 0x2Au);
  }

  v12 = [(CSDAVCSession *)self session];
  *buf = v13;
  *&buf[16] = v14;
  v17 = v15;
  [v12 setPresentationInfo:buf];

  [(CSDAVCSession *)self commitParticipantUpdates];
}

- (void)setGridDisplayMode:(unint64_t)a3
{
  v5 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v5);

  [(CSDAVCSession *)self beginParticipantUpdates];
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v6 = [(CSDAVCSession *)self session];
  v7 = v6;
  if (v6)
  {
    [v6 presentationInfo];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  DWORD1(v12) = [(CSDAVCSession *)self presentationLayoutForGridDisplayMode:a3];
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = DWORD1(v12);
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setting presentationLayout: (%u)", buf, 8u);
  }

  v9 = [(CSDAVCSession *)self session];
  *buf = v10;
  v14 = v11;
  v15 = v12;
  [v9 setPresentationInfo:buf];

  [(CSDAVCSession *)self commitParticipantUpdates];
}

+ (id)avcScreenCaptureConfigurationForScreenAttributes:(id)a3
{
  v3 = a3;
  v4 = objc_alloc_init(AVCScreenCaptureConfiguration);
  [v4 setIsWindowed:{objc_msgSend(v3, "isWindowed")}];
  v5 = [v3 windowUUID];
  v6 = [v5 UUIDString];
  [v4 setSelectiveScreenUUID:v6];

  v7 = [v3 displayID];
  if (v7)
  {
    v8 = [v3 displayID];
  }

  else
  {
    v9 = [objc_opt_class() defaultScreenShareAttributes];
    v8 = [v9 displayID];
  }

  [v4 setScreenCaptureDisplayID:{objc_msgSend(v8, "unsignedIntValue")}];

  return v4;
}

- (void)setScreenEnabled:(BOOL)a3 attributes:(id)a4
{
  v4 = a3;
  v6 = a4;
  v7 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = TUSharePlayForceDisabled();
  v9 = sub_100004778();
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
  if (v8)
  {
    if (v10)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "screenEnabled is not supported - returning", buf, 2u);
    }

    goto LABEL_32;
  }

  if (v10)
  {
    *buf = 67109378;
    LODWORD(v32[0]) = v4;
    WORD2(v32[0]) = 2112;
    *(v32 + 6) = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setScreenEnabled:%d screenShareAttributes: %@", buf, 0x12u);
  }

  if (!v4)
  {
    [(CSDAVCSession *)self setCurrentLocalScreenShareAttributes:0];
    v13 = [(CSDAVCSession *)self session];
    [v13 setScreenEnabled:0];

    v14 = [(CSDAVCSession *)self avcScreenCapture];

    if (v14)
    {
      [(CSDAVCSession *)self stopCapture];
    }

    else
    {
      v15 = [(CSDAVCSession *)self delegate];
      [v15 session:self changedScreenEnabled:0 didSucceed:1 error:0];
    }

    v16 = [(CSDAVCSession *)self captureSessionQueue];
    [v16 removeAllObjects];

    goto LABEL_32;
  }

  [(CSDAVCSession *)self setCurrentLocalScreenShareAttributes:v6];
  v11 = [(CSDAVCSession *)self captureCapabilities];
  if (v11 == 1)
  {
    if ([(CSDAVCSession *)self isVideoEnabled])
    {
      v17 = sub_100004778();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Device does not support screen sharing with camera on, also updating videoEnabled", buf, 2u);
      }

      v18 = [(CSDAVCSession *)self session];
      [v18 setVideoEnabled:0];
    }
  }

  else if (!v11)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Device does not support screen sharing, ignoring to set screenEnabled", buf, 2u);
    }

    goto LABEL_32;
  }

  objc_initWeak(&location, self);
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_1002111CC;
  v26 = &unk_10061EBB0;
  objc_copyWeak(&v28, &location);
  v29 = v4;
  v27 = v6;
  v19 = objc_retainBlock(&v23);
  if ([(CSDAVCSession *)self isOneToOneModeEnabled:v23])
  {
    v20 = [(CSDAVCSession *)self shouldDisableOneToOneModeForScreenShare];
  }

  else
  {
    v20 = 0;
  }

  v21 = sub_100004778();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = @"NO";
    if (v20)
    {
      v22 = @"YES";
    }

    *buf = 138412290;
    v32[0] = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Determined shouldSwitchToGFTMode: %@", buf, 0xCu);
  }

  if (v20)
  {
    [(CSDAVCSession *)self setOneToOneModeEnabled:0 withCompletionBlock:v19];
  }

  else
  {
    (v19[2])(v19);
  }

  objc_destroyWeak(&v28);
  objc_destroyWeak(&location);
LABEL_32:
}

- (id)clientBundleIDForAVCSession
{
  v3 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(AVCSession *)self->_session configuration];
  v5 = [v4 sessionMode];

  v6 = &TUBundleIdentifierPhoneApplication;
  if (v5 != 3)
  {
    v6 = &TUBundleIdentifierFaceTimeApplication;
  }

  v7 = *v6;

  return v7;
}

- (BOOL)shouldDisableOneToOneModeForScreenShare
{
  v3 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  v5 = [v4 allValues];
  v6 = [v5 count];

  if (v6 <= 1)
  {
    v8 = [(CSDAVCSession *)self featureFlags];
    v9 = [v8 uPlusOneScreenSharing];

    if (v9)
    {
      v10 = [(CSDAVCSession *)self delegate];
      v11 = [v10 onlyAvailableSessionConversationParticipant:self];

      v12 = [v11 capabilities];
      v7 = [v12 isUPlusOneScreenShareAvailable] ^ 1;
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (void)setScreenShareAttributes:(id)a3
{
  v4 = a3;
  v5 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "screenShareAttributes: %@", &v11, 0xCu);
  }

  v7 = [(CSDAVCSession *)self currentLocalScreenShareAttributes];
  v8 = [v7 isEqualToScreenShareAttributes:v4];

  if (v8)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [(CSDAVCSession *)self currentLocalScreenShareAttributes];
      v11 = 138412546;
      v12 = v4;
      v13 = 2112;
      v14 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Asked to set screenShareAttributes %@ when local attributes are: %@", &v11, 0x16u);
    }
  }

  else
  {
    [(CSDAVCSession *)self setCurrentLocalScreenShareAttributes:v4];
    [(CSDAVCSession *)self startAVCScreenCaptureWithAttributes:v4 preferImmediateActivation:0 screenControlEnabled:0 capturesCursor:1];
  }
}

- (void)updateConfigurationSessionMode:(int64_t)a3
{
  v5 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = a3;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "updatingSessionMode: %ld", &v10, 0xCu);
  }

  v7 = [(CSDAVCSession *)self session];
  v8 = [v7 configuration];

  [v8 setSessionMode:a3];
  v9 = [(CSDAVCSession *)self session];
  [v9 updateConfiguration:v8];
}

- (void)setRelaying:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (v3)
    {
      v7 = @"YES";
    }

    v9 = 136315394;
    v10 = "[CSDAVCSession setRelaying:]";
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s:  %@", &v9, 0x16u);
  }

  self->_relaying = v3;
  if (v3 || [(CSDAVCSession *)self isScreening])
  {
    v8 = 1;
  }

  else
  {
    v8 = [objc_opt_class() defaultSessionMode];
  }

  [(CSDAVCSession *)self updateConfigurationSessionMode:v8];
}

- (void)setScreening:(BOOL)a3
{
  v3 = a3;
  v5 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v5);

  self->_screening = v3;
  if (v3 || [(CSDAVCSession *)self isRelaying])
  {
    v6 = 1;
  }

  else
  {
    v6 = [objc_opt_class() defaultSessionMode];
  }

  v7 = [(CSDAVCSession *)self session];
  v9 = [v7 configuration];

  [v9 setSessionMode:v6];
  if (v3)
  {
    [v9 setOutOfProcessCodecsEnabled:1];
  }

  v8 = [(CSDAVCSession *)self session];
  [v8 updateConfiguration:v9];
}

- (void)queueAddParticipantRetryBlock:(id)a3 withVideoEnabled:(BOOL)a4 audioPaused:(BOOL)a5 screenEnabled:(BOOL)a6
{
  v10 = a3;
  v11 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v11);

  objc_initWeak(&location, self);
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1002124AC;
  v20 = &unk_10061EBF8;
  objc_copyWeak(&v22, &location);
  v12 = v10;
  v21 = v12;
  v23 = a4;
  v24 = a5;
  v25 = a6;
  v13 = objc_retainBlock(&v17);
  v14 = sub_100004778();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v28 = v12;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Already have oneToOne transition in progress, delaying addParticipant request for participant: %@", buf, 0xCu);
  }

  v15 = [(CSDAVCSession *)self sessionUpdateCompletionQueue:v17];
  v16 = [v13 copy];
  [v15 addObject:v16];

  objc_destroyWeak(&v22);
  objc_destroyWeak(&location);
}

- (void)removeParticipant:(id)a3
{
  v4 = a3;
  v5 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDAVCSession *)self sessionUpdateCompletionQueue];
  v7 = [v6 count];

  if (v7)
  {
    objc_initWeak(&location, self);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100212EF0;
    v27[3] = &unk_10061A600;
    objc_copyWeak(&v29, &location);
    v8 = v4;
    v28 = v8;
    v9 = objc_retainBlock(v27);
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Already have oneToOne transition in progress, delaying removeParticipant request for %@", buf, 0xCu);
    }

    v11 = [(CSDAVCSession *)self sessionUpdateCompletionQueue];
    v12 = [v9 copy];
    [v11 addObject:v12];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v4;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "removeParticipant: %@", buf, 0xCu);
    }

    v14 = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
    v15 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 identifier]);
    v16 = [v14 objectForKeyedSubscript:v15];

    v17 = [(CSDAVCSession *)self pendingRemovedParticipantsByID];
    v18 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 identifier]);
    if (v16)
    {
      [v17 setObject:v4 forKeyedSubscript:v18];

      v19 = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
      v20 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v4 identifier]);
      [v19 setObject:0 forKeyedSubscript:v20];

      v21 = [(CSDAVCSession *)self session];
      [v21 removeParticipant:v16];
    }

    else
    {
      v22 = [v17 objectForKeyedSubscript:v18];

      v21 = sub_100004778();
      v23 = os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        if (v23)
        {
          v24 = [v4 identifier];
          *buf = 134217984;
          v32 = v24;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find participant %lu in the active participant list, but they're in the list of pending removals", buf, 0xCu);
        }
      }

      else if (v23)
      {
        v25 = [v4 identifier];
        v26 = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
        *buf = 134218242;
        v32 = v25;
        v33 = 2112;
        v34 = v26;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find participant with identifier %lu all participants: %@", buf, 0x16u);
      }
    }
  }
}

- (void)setParticipantCluster:(id)a3 forParticipantWithIdentifier:(unint64_t)a4
{
  v5 = [(CSDAVCSession *)self queue:a3];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDAVCSession *)self featureFlags];
  [v6 nearbyFaceTimeEnabled];
}

- (void)setLocalParticipantCluster:(id)a3
{
  v4 = a3;
  v5 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = [v4 UUID];
    v9 = 138412290;
    v10 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setLocalParticipantCluster: clusterID: %@", &v9, 0xCu);
  }

  v8 = [(CSDAVCSession *)self featureFlags];
  [v8 nearbyFaceTimeEnabled];
}

+ (unsigned)avcSessionVideoQualityFrom:(unint64_t)a3
{
  if (a3 == 1)
  {
    v3 = 5;
  }

  else
  {
    v3 = 0;
  }

  if (a3 == 2)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

- (void)setVideoQuality:(unint64_t)a3 forParticipantWithIdentifier:(unint64_t)a4
{
  v6 = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  v7 = [NSNumber numberWithUnsignedLongLong:a4];
  v8 = [v6 objectForKeyedSubscript:v7];

  if (v8)
  {
    [v8 setVideoQuality:{objc_msgSend(objc_opt_class(), "avcSessionVideoQualityFrom:", a3)}];
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_10047C7A0();
    }
  }
}

- (void)setVideoQuality:(unint64_t)a3 visibility:(id)a4 prominence:(id)a5 spatialPosition:(CGRect)a6 isInCanvas:(BOOL)a7 forParticipantWithIdentifier:(unint64_t)a8
{
  v9 = a7;
  height = a6.size.height;
  width = a6.size.width;
  y = a6.origin.y;
  x = a6.origin.x;
  v17 = a4;
  v18 = a5;
  v19 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v19);

  v20 = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  v21 = [NSNumber numberWithUnsignedLongLong:a8];
  v22 = [v20 objectForKeyedSubscript:v21];

  if (v22)
  {
    v23 = x + width * 0.5;
    v24 = y + height * 0.5;
    if ([v18 integerValue])
    {
      v25 = 0.0;
    }

    else
    {
      v25 = 1.0;
    }

    v26 = sub_100004778();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v28 = 134220288;
      *v29 = a8;
      *&v29[8] = 2048;
      *&v29[10] = a3;
      *&v29[18] = 2048;
      v30 = COERCE_DOUBLE([v17 integerValue]);
      LOWORD(v31) = 2048;
      *(&v31 + 2) = [v18 integerValue];
      WORD5(v31) = 1024;
      HIDWORD(v31) = v9;
      v32 = 2048;
      v33 = v23;
      v34 = 2048;
      v35 = v24;
      v36 = 2048;
      v37 = v25;
      v38 = 2048;
      v39 = width;
      v40 = 2048;
      v41 = height;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "identifier: %lu videoQuality: %lu visibility: %lu prominence: %lu positionalInfo: <flags: %u, position: (x: %f, y: %f, z: %f, w: %f, h: %f)>", &v28, 0x62u);
    }

    [v22 setVideoQuality:{objc_msgSend(objc_opt_class(), "avcSessionVideoQualityFrom:", a3)}];
    [v22 setVisibilityIndex:{objc_msgSend(v17, "integerValue")}];
    [v22 setProminenceIndex:{objc_msgSend(v18, "integerValue")}];
    v28 = v9;
    *v29 = 0;
    *&v29[4] = width;
    *&v29[12] = height;
    v30 = v23;
    *&v31 = v24;
    *(&v31 + 1) = v25;
    [v22 setVideoPositionalInfo:&v28];
  }

  else
  {
    v27 = sub_100004778();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      sub_10047C7A0();
    }
  }
}

- (void)beginParticipantUpdates
{
  v3 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "", v6, 2u);
  }

  v5 = [(CSDAVCSession *)self session];
  [v5 beginParticipantConfiguration];
}

- (void)commitParticipantUpdates
{
  v3 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "", v6, 2u);
  }

  v5 = [(CSDAVCSession *)self session];
  [v5 endParticipantConfiguration];
}

- (void)start
{
  v3 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "", v6, 2u);
  }

  [(CSDAVCSession *)self setHasCalledStop:0];
  v5 = [(CSDAVCSession *)self session];
  [v5 start];
}

- (void)stopCapture
{
  v3 = [(CSDAVCSession *)self avcScreenCapture];

  if (v3)
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [(CSDAVCSession *)self avcScreenCapture];
      v8 = 134217984;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling stop on screen capture %p", &v8, 0xCu);
    }

    v6 = [(CSDAVCSession *)self avcScreenCapture];
    [v6 stopCapture];

    v7 = [(CSDAVCSession *)self clientBundleIDForAVCSession];
    sub_10022B084(v7, 0);
  }
}

- (void)stopWithError:(id)a3
{
  v4 = a3;
  v5 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v5);

  [(CSDAVCSession *)self setHasCalledStop:1];
  [(CSDAVCSession *)self stopCapture];
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CSDAVCSession: stop with error: %@", &v8, 0xCu);
  }

  v7 = [(CSDAVCSession *)self session];
  [v7 stopWithError:v4];
}

- (BOOL)shouldIgnoreBenignErrorOnStart:(id)a3
{
  v4 = a3;
  if (v4 && [(CSDAVCSession *)self hasCalledStop])
  {
    v5 = [v4 domain];
    if ([v5 isEqualToString:@"GKVoiceChatServiceErrorDomain"] && objc_msgSend(v4, "code") == 32028)
    {
      v6 = [v4 localizedFailureReason];
      v7 = [v6 isEqualToString:@"Stop called on a starting session"];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)session:(id)a3 didStopWithError:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = objc_alloc_init(NSDictionary);
  [(CSDAVCSession *)self session:v7 didStopWithError:v6 metadata:v8];
}

- (void)session:(id)a3 didStopWithError:(id)a4 metadata:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = v7;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "error: %@", &v25, 0xCu);
  }

  v11 = v7;
  v12 = [(CSDAVCSession *)self hasCalledStop];
  v13 = v11;
  if (!v11)
  {
    v13 = 0;
    if ((v12 & 1) == 0)
    {
      v13 = [[NSError alloc] initWithDomain:@"CSDAVCSessionError" code:505 userInfo:0];
    }
  }

  v14 = [v8 objectForKey:@"avcKeySessionSentBytes"];
  if (v14)
  {
    v15 = [v8 objectForKeyedSubscript:@"avcKeySessionSentBytes"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v17 = [v8 objectForKeyedSubscript:@"avcKeySessionSentBytes"];
      v14 = [v17 integerValue];
    }

    else
    {
      v14 = 0;
    }
  }

  v18 = [v8 objectForKey:@"avcKeySessionReceivedBytes"];
  if (v18)
  {
    v19 = v18;
    v20 = [v8 objectForKeyedSubscript:@"avcKeySessionReceivedBytes"];
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    if (v21)
    {
      v22 = [v8 objectForKeyedSubscript:@"avcKeySessionReceivedBytes"];
      v14 += [v22 integerValue];
    }
  }

  v23 = [(CSDAVCSession *)self delegate];
  if (v14 >= 1)
  {
    v24 = sub_100004778();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 134217984;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Sending delegate bytesOfDataUsageChanged: %ld", &v25, 0xCu);
    }

    [v23 session:self changedBytesOfDataUsed:v14];
  }

  [v23 session:self didStopWithError:v13];
}

- (id)pendingRemovedRemoteParticipantByIdentififer:(unint64_t)a3
{
  v5 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDAVCSession *)self pendingRemovedParticipantsByID];
  v7 = [NSNumber numberWithUnsignedLongLong:a3];
  v8 = [v6 objectForKeyedSubscript:v7];

  return v8;
}

- (void)session:(id)a3 didDetectError:(id)a4
{
  v5 = a4;
  v6 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "didDetectError: %@", &v9, 0xCu);
  }

  v8 = [(CSDAVCSession *)self delegate];
  [v8 session:self didDetectError:v5];
}

- (void)sessionServerDidDisconnect:(id)a3
{
  v4 = a3;
  v5 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10047C82C();
  }

  v7 = [(CSDAVCSession *)self delegate];
  [v7 serverDisconnectedForSession:self];
}

- (void)session:(id)a3 addParticipant:(id)a4 didSucceed:(BOOL)a5 error:(id)a6
{
  v7 = a5;
  v9 = a4;
  v10 = a6;
  v11 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v43 = v9;
    v44 = 1024;
    LODWORD(v45[0]) = v7;
    WORD2(v45[0]) = 2112;
    *(v45 + 6) = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "addParticipant: %@ didSucceed: %d error: %@", buf, 0x1Cu);
  }

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
    *buf = 138412546;
    v43 = v9;
    v44 = 2112;
    v45[0] = v14;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "addParticipant: %@ Active remote participants: %@", buf, 0x16u);
  }

  v15 = [(CSDAVCSession *)self delegate];
  if (v7)
  {
    v16 = [v9 captionsToken];
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v43 = v16;
      v44 = 2112;
      v45[0] = v9;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Got captions token: %lu for participant %@", buf, 0x16u);
    }

    [v15 addedRemoteParticipantWithIdentifier:objc_msgSend(v9 updatedAudioEnabled:"participantID") updatedVideoEnabled:1 streamToken:objc_msgSend(v9 screenToken:"isVideoEnabled") captionsToken:{objc_msgSend(v9, "videoToken"), objc_msgSend(v9, "screenToken"), v16}];
    v18 = [(CSDAVCSession *)self pendingRemovedParticipantsByID];
    v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 participantID]);
    v20 = [v18 objectForKeyedSubscript:v19];

    if (v20)
    {
      [(CSDAVCSession *)self removeParticipant:v20];
    }
  }

  else
  {
    v21 = sub_100004778();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_10047C8A0();
    }

    v22 = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
    v23 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 participantID]);
    [v22 setObject:0 forKeyedSubscript:v23];

    v24 = [v10 userInfo];
    v20 = v24;
    if (v24)
    {
      v25 = GKSErrorDetailedError;
      v26 = [v24 objectForKeyedSubscript:GKSErrorDetailedError];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        [v10 code];
        goto LABEL_27;
      }

      v28 = [v20 objectForKeyedSubscript:v25];
      v29 = [v28 isEqualToNumber:&off_10063EDC8];

      v30 = v29 ^ 1;
    }

    else
    {
      v30 = 0;
    }

    if ([v10 code] == 32016 && (v30 & 1) == 0)
    {
      v31 = [v15 session:self conversationParticipantWithParticipantIdentifier:{objc_msgSend(v9, "participantID")}];
      v32 = sub_100004778();
      v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
      v41 = v31;
      if (v31)
      {
        if (v33)
        {
          *buf = 138412546;
          v43 = v9;
          v44 = 2112;
          v45[0] = v10;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Retrying to add participant after one to one mode changes %@: %@", buf, 0x16u);
        }

        v32 = [(CSDAVCSession *)self session];
        v34 = [v32 isVideoEnabled];
        v35 = [(CSDAVCSession *)self session];
        v36 = [v35 isAudioPaused];
        v37 = [(CSDAVCSession *)self session];
        v38 = [v37 isScreenEnabled];
        v39 = self;
        v40 = v41;
        [(CSDAVCSession *)v39 queueAddParticipantRetryBlock:v41 withVideoEnabled:v34 audioPaused:v36 screenEnabled:v38];
      }

      else
      {
        if (v33)
        {
          *buf = 138412290;
          v43 = v9;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "[WARN] Delegate responded that we are not tracking active remote participant anymore, not retrying to add participant: %@", buf, 0xCu);
        }

        v40 = 0;
      }
    }
  }

LABEL_27:
}

- (void)session:(id)a3 didUpdate:(BOOL)a4 configuration:(id)a5 error:(id)a6
{
  v7 = a4;
  v9 = a5;
  v10 = a6;
  v11 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v11);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109634;
    v14[1] = v7;
    v15 = 2112;
    v16 = v9;
    v17 = 2112;
    v18 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "didUpdate: %d configuration: %@ error: %@", v14, 0x1Cu);
  }

  if (!v7)
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10047CA14();
    }
  }
}

- (void)session:(id)a3 mediaStateDidChange:(unsigned int)a4 forMediaType:(unsigned int)a5 didSucceed:(BOOL)a6 error:(id)a7
{
  v7 = a6;
  v11 = a7;
  v12 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v12);

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109890;
    v14[1] = a4;
    v15 = 1024;
    v16 = a5;
    v17 = 1024;
    v18 = v7;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "mediaStateDidChange: %d forMediaType: %d didSucceed: %d error: %@", v14, 0x1Eu);
  }
}

- (void)sessionShouldReconnect:(id)a3
{
  v4 = a3;
  v5 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "session: %@", &v8, 0xCu);
  }

  v7 = [(CSDAVCSession *)self delegate];
  [v7 sessionShouldReconnect:self];
}

- (void)session:(id)a3 mixingDidStartForMediaType:(unsigned int)a4 mixingMediaType:(unsigned int)a5
{
  v8 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109376;
    v11[1] = a4;
    v12 = 1024;
    v13 = a5;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "mixingDidStartForMediaType: %d mixingMediaType: %d", v11, 0xEu);
  }

  if (a4 == 2 && a5 == 1)
  {
    v10 = [(CSDAVCSession *)self delegate];
    [v10 session:self cameraMixedWithScreenDidChange:1];
  }
}

- (void)session:(id)a3 mixingDidStopForMediaType:(unsigned int)a4
{
  v6 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = a4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "mixingDidStopForMediaType: %d", v9, 8u);
  }

  if (a4 == 2)
  {
    v8 = [(CSDAVCSession *)self delegate];
    [v8 session:self cameraMixedWithScreenDidChange:0];
  }
}

- (void)session:(id)a3 didReact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "session: %@ didReact: %@", &v11, 0x16u);
  }

  v10 = [(CSDAVCSession *)self delegate];
  [v10 session:self localParticipantDidReact:v7];
}

- (void)sessionDidStopReacting:(id)a3
{
  v4 = a3;
  v5 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "session: %@ didStopReacting", &v8, 0xCu);
  }

  v7 = [(CSDAVCSession *)self delegate];
  [v7 sessionLocalParticipantDidStopReacting:self];
}

- (void)participant:(id)a3 screenEnabled:(BOOL)a4 didSucceed:(BOOL)a5 error:(id)a6
{
  v6 = a5;
  v7 = a4;
  v9 = a3;
  v10 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v10);

  v11 = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v9 participantID]);
  v13 = [v11 objectForKeyedSubscript:v12];

  if (v13)
  {
    v14 = [(CSDAVCSession *)self isRemoteScreenEnabledForParticipant:v9];
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138413058;
      v18 = v9;
      v19 = 1024;
      v20 = v7;
      v21 = 1024;
      v22 = v6;
      v23 = 1024;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "participant: %@ screenEnabled: %d didSucceed: %d remoteScreenEnabled: %d", &v17, 0x1Eu);
    }

    v16 = [(CSDAVCSession *)self delegate];
    [v16 remoteParticipantWithIdentifier:objc_msgSend(v9 updatedScreenEnabled:"participantID") streamToken:v7 & v14 screenToken:objc_msgSend(v9 captionsToken:{"videoToken"), objc_msgSend(v9, "screenToken"), objc_msgSend(v9, "captionsToken")}];
  }
}

- (void)participant:(id)a3 mediaPrioritiesDidChange:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [v6 objectForKeyedSubscript:AVCSessionParticipantMediaTypeKeyAudio];
  v10 = [v9 integerValue];

  v11 = [v6 objectForKeyedSubscript:AVCSessionParticipantMediaTypeKeyVideo];

  v12 = [v11 integerValue];
  v14 = [(CSDAVCSession *)self delegate];
  v13 = [v7 participantID];

  [v14 remoteParticipantWithIdentifier:v13 didChangeAudioPriority:v10 videoPriority:v12];
}

- (void)participant:(id)a3 didReact:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = v6;
    v13 = 2112;
    v14 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "participant: %@ didReact: %@", &v11, 0x16u);
  }

  v10 = [(CSDAVCSession *)self delegate];
  [v10 remoteParticipantWithIdentifier:objc_msgSend(v6 didReact:{"participantID"), v7}];
}

- (void)participant:(id)a3 remoteMediaStateDidChange:(unsigned int)a4 forMediaType:(unsigned int)a5
{
  v8 = a3;
  v9 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = v8;
    v13 = 1024;
    v14 = a4;
    v15 = 1024;
    v16 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "participant: %@ remoteMediaStateDidChange: %d forMediaType: %d", &v11, 0x18u);
  }
}

- (void)participant:(id)a3 mixingDidStartForMediaType:(unsigned int)a4 mixingMediaType:(unsigned int)a5
{
  v8 = a3;
  v9 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = v8;
    v14 = 1024;
    v15 = a4;
    v16 = 1024;
    v17 = a5;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "participant: %@ mixingDidStartForMediaType: %d mixingMediaType: %d", &v12, 0x18u);
  }

  if (a4 == 2 && a5 == 1)
  {
    v11 = [(CSDAVCSession *)self delegate];
    [v11 remoteParticipantWithIdentifier:objc_msgSend(v8 cameraMixedWithScreenDidChange:{"participantID"), 1}];
  }
}

- (void)participant:(id)a3 mixingDidStopForMediaType:(unsigned int)a4
{
  v6 = a3;
  v7 = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(v7);

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = v6;
    v12 = 1024;
    v13 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "participant: %@ mixingDidStopForMediaType: %d", &v10, 0x12u);
  }

  if (a4 == 2)
  {
    v9 = [(CSDAVCSession *)self delegate];
    [v9 remoteParticipantWithIdentifier:objc_msgSend(v6 cameraMixedWithScreenDidChange:{"participantID"), 0}];
  }
}

- (void)screenCapture:(id)a3 didStart:(BOOL)a4 withError:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(CSDAVCSession *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100216DB4;
  v13[3] = &unk_10061BE38;
  v17 = a4;
  v14 = v8;
  v15 = v9;
  v16 = self;
  v11 = v9;
  v12 = v8;
  dispatch_async(v10, v13);
}

- (void)screenCapture:(id)a3 didStop:(BOOL)a4 withError:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v17 = v8;
    v18 = 1024;
    v19 = v6;
    v20 = 2112;
    v21 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "screenCapture: %@ didStop: %d, captureWithError: %@", buf, 0x1Cu);
  }

  v11 = [(CSDAVCSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100217038;
  block[3] = &unk_100619F48;
  v15 = v6;
  block[4] = self;
  v14 = v9;
  v12 = v9;
  dispatch_async(v11, block);
}

- (void)screenCapture:(id)a3 didUpdateAttributes:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    v23 = 2112;
    v24 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "screenCapture: %@ didUpdateAttributes: %@, error: %@", buf, 0x20u);
  }

  v12 = [(CSDAVCSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100217388;
  block[3] = &unk_100619E58;
  v16 = v10;
  v17 = v9;
  v18 = self;
  v13 = v9;
  v14 = v10;
  dispatch_async(v12, block);
}

- (BOOL)isRemoteScreenEnabledForParticipant:(id)a3
{
  v3 = a3;
  v4 = (objc_opt_respondsToSelector() & 1) != 0 && [v3 performSelector:"remoteScreenEnabled"] != 0;

  return v4;
}

- (int64_t)localCaptionsToken
{
  v3 = [(CSDAVCSession *)self session];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = [(CSDAVCSession *)self session];
  v6 = [v5 streamTokenForStreamGroupID:1667330164];

  return v6;
}

- (CSDAVCSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end