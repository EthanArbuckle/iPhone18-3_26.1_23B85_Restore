@interface CSDAVCSession
+ (AVCSessionConfiguration)defaultConfiguration;
+ (TUCallScreenShareAttributes)defaultScreenShareAttributes;
+ (id)avcScreenCaptureConfigurationForScreenAttributes:(id)attributes;
+ (unsigned)avcSessionVideoQualityFrom:(unint64_t)from;
- (BOOL)containsRemoteParticipantWithIdentifier:(unint64_t)identifier;
- (BOOL)isAudioEnabled;
- (BOOL)isAudioPaused;
- (BOOL)isAudioReady;
- (BOOL)isOneToOneModeEnabled;
- (BOOL)isRemoteScreenEnabledForParticipant:(id)participant;
- (BOOL)isScreenEnabled;
- (BOOL)isUplinkMuted;
- (BOOL)isVideoEnabled;
- (BOOL)isVideoPaused;
- (BOOL)shouldDisableOneToOneModeForScreenShare;
- (BOOL)shouldIgnoreBenignErrorOnStart:(id)start;
- (CGRect)presentationRect;
- (CSDAVCSession)initWithSessionCreationBlock:(id)block transportToken:(id)token delegate:(id)delegate queue:(id)queue reportingHierarchyToken:(id)hierarchyToken avMode:(unint64_t)mode videoEnabled:(BOOL)enabled isNearbyConversation:(BOOL)self0 captureSessionCreationBlock:(id)self1;
- (CSDAVCSession)initWithTransportToken:(id)token delegate:(id)delegate queue:(id)queue reportingHierarchyToken:(id)hierarchyToken oneToOneModeEnabled:(BOOL)enabled avMode:(unint64_t)mode videoEnabled:(BOOL)videoEnabled report:(id)self0 serviceName:(id)self1 ABTestConfiguration:(id)self2 sessionMode:(int64_t)self3 isNearbyConversation:(BOOL)self4;
- (CSDAVCSessionDelegate)delegate;
- (NSData)localParticipantData;
- (NSString)sessionIdentifier;
- (TUFeatureFlags)featureFlags;
- (id)clientBundleIDForAVCSession;
- (id)localParticipantDataWithVersion:(unint64_t)version;
- (id)pendingRemovedRemoteParticipantByIdentififer:(unint64_t)identififer;
- (int)presentationState;
- (int64_t)localCaptionsToken;
- (int64_t)maxVideoDecodesAllowed;
- (int64_t)sessionToken;
- (void)_disableRemoteControlForAllParticipants;
- (void)beginParticipantUpdates;
- (void)commitParticipantUpdates;
- (void)disableRemoteControl;
- (void)handleUpdatedControllingRemoteScreen:(BOOL)screen;
- (void)participant:(id)participant didReact:(id)react;
- (void)participant:(id)participant mediaPrioritiesDidChange:(id)change;
- (void)participant:(id)participant mixingDidStartForMediaType:(unsigned int)type mixingMediaType:(unsigned int)mediaType;
- (void)participant:(id)participant mixingDidStopForMediaType:(unsigned int)type;
- (void)participant:(id)participant remoteMediaStateDidChange:(unsigned int)change forMediaType:(unsigned int)type;
- (void)participant:(id)participant screenEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error;
- (void)queueAddParticipantRetryBlock:(id)block withVideoEnabled:(BOOL)enabled audioPaused:(BOOL)paused screenEnabled:(BOOL)screenEnabled;
- (void)removeParticipant:(id)participant;
- (void)screenCapture:(id)capture didStart:(BOOL)start withError:(id)error;
- (void)screenCapture:(id)capture didStop:(BOOL)stop withError:(id)error;
- (void)screenCapture:(id)capture didUpdateAttributes:(id)attributes error:(id)error;
- (void)session:(id)session addParticipant:(id)participant didSucceed:(BOOL)succeed error:(id)error;
- (void)session:(id)session didDetectError:(id)error;
- (void)session:(id)session didReact:(id)react;
- (void)session:(id)session didStopWithError:(id)error;
- (void)session:(id)session didStopWithError:(id)error metadata:(id)metadata;
- (void)session:(id)session didUpdate:(BOOL)update configuration:(id)configuration error:(id)error;
- (void)session:(id)session mediaStateDidChange:(unsigned int)change forMediaType:(unsigned int)type didSucceed:(BOOL)succeed error:(id)error;
- (void)session:(id)session mixingDidStartForMediaType:(unsigned int)type mixingMediaType:(unsigned int)mediaType;
- (void)session:(id)session mixingDidStopForMediaType:(unsigned int)type;
- (void)sessionDidStopReacting:(id)reacting;
- (void)sessionServerDidDisconnect:(id)disconnect;
- (void)sessionShouldReconnect:(id)reconnect;
- (void)setAudioReady:(BOOL)ready;
- (void)setGridDisplayMode:(unint64_t)mode;
- (void)setLocalParticipantCluster:(id)cluster;
- (void)setParticipantCluster:(id)cluster forParticipantWithIdentifier:(unint64_t)identifier;
- (void)setPresentationRect:(CGRect)rect;
- (void)setPresentationState:(int)state;
- (void)setRelaying:(BOOL)relaying;
- (void)setScreenEnabled:(BOOL)enabled attributes:(id)attributes;
- (void)setScreenShareAttributes:(id)attributes;
- (void)setScreening:(BOOL)screening;
- (void)setVideo:(BOOL)video;
- (void)setVideoQuality:(unint64_t)quality forParticipantWithIdentifier:(unint64_t)identifier;
- (void)setVideoQuality:(unint64_t)quality visibility:(id)visibility prominence:(id)prominence spatialPosition:(CGRect)position isInCanvas:(BOOL)canvas forParticipantWithIdentifier:(unint64_t)identifier;
- (void)start;
- (void)stopCapture;
- (void)stopWithError:(id)error;
- (void)updateConfigurationSessionMode:(int64_t)mode;
@end

@implementation CSDAVCSession

- (CSDAVCSession)initWithSessionCreationBlock:(id)block transportToken:(id)token delegate:(id)delegate queue:(id)queue reportingHierarchyToken:(id)hierarchyToken avMode:(unint64_t)mode videoEnabled:(BOOL)enabled isNearbyConversation:(BOOL)self0 captureSessionCreationBlock:(id)self1
{
  blockCopy = block;
  tokenCopy = token;
  delegateCopy = delegate;
  queueCopy = queue;
  hierarchyTokenCopy = hierarchyToken;
  creationBlockCopy = creationBlock;
  v48.receiver = self;
  v48.super_class = CSDAVCSession;
  v22 = [(CSDAVCSession *)&v48 init];
  if (v22)
  {
    v23 = blockCopy[2](blockCopy, tokenCopy, hierarchyTokenCopy, queueCopy);
    if (v23)
    {
      objc_storeStrong(&v22->_queue, queue);
      objc_storeStrong(&v22->_session, v23);
      objc_storeWeak(&v22->_delegate, delegateCopy);
      v22->_hasCalledStop = 0;
      v24 = +[NSMutableDictionary dictionary];
      remoteParticipantsByIdentifier = v22->_remoteParticipantsByIdentifier;
      v22->_remoteParticipantsByIdentifier = v24;

      v26 = +[NSMutableDictionary dictionary];
      pendingRemovedParticipantsByID = v22->_pendingRemovedParticipantsByID;
      v22->_pendingRemovedParticipantsByID = v26;

      v22->_video = mode == 2;
      v28 = objc_alloc_init(NSMutableArray);
      sessionUpdateCompletionQueue = v22->_sessionUpdateCompletionQueue;
      v22->_sessionUpdateCompletionQueue = v28;

      v30 = [[NSMutableArray alloc] initWithCapacity:1];
      captureSessionQueue = v22->_captureSessionQueue;
      v22->_captureSessionQueue = v30;

      v32 = objc_retainBlock(creationBlockCopy);
      captureSessionCreationBlock = v22->_captureSessionCreationBlock;
      v22->_captureSessionCreationBlock = v32;

      v22->_captureCapabilities = +[AVCScreenCapture captureCapabilities];
      mostRecentScreenShareAttributes = v22->_mostRecentScreenShareAttributes;
      v22->_mostRecentScreenShareAttributes = 0;

      isVideo = 0;
      if (enabled)
      {
        isVideo = [(CSDAVCSession *)v22 isVideo];
      }

      [v23 setVideoEnabled:isVideo];
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
      if (mode == 2)
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
        if (!mode)
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

- (CSDAVCSession)initWithTransportToken:(id)token delegate:(id)delegate queue:(id)queue reportingHierarchyToken:(id)hierarchyToken oneToOneModeEnabled:(BOOL)enabled avMode:(unint64_t)mode videoEnabled:(BOOL)videoEnabled report:(id)self0 serviceName:(id)self1 ABTestConfiguration:(id)self2 sessionMode:(int64_t)self3 isNearbyConversation:(BOOL)self4
{
  tokenCopy = token;
  delegateCopy = delegate;
  queueCopy = queue;
  hierarchyTokenCopy = hierarchyToken;
  reportCopy = report;
  nameCopy = name;
  configurationCopy = configuration;
  objc_initWeak(location, self);
  v36[0] = _NSConcreteStackBlock;
  v36[1] = 3221225472;
  v36[2] = sub_10020F1BC;
  v36[3] = &unk_10061EB60;
  selfCopy = self;
  v37 = selfCopy;
  enabledCopy = enabled;
  v27 = reportCopy;
  v38 = v27;
  v28 = nameCopy;
  v39 = v28;
  sessionModeCopy = sessionMode;
  v29 = configurationCopy;
  v40 = v29;
  v34[0] = _NSConcreteStackBlock;
  v34[1] = 3221225472;
  v34[2] = sub_10020F4C8;
  v34[3] = &unk_10061EB88;
  objc_copyWeak(&v35, location);
  BYTE1(v32) = conversation;
  LOBYTE(v32) = videoEnabled;
  v30 = [(CSDAVCSession *)selfCopy initWithSessionCreationBlock:v36 transportToken:tokenCopy delegate:delegateCopy queue:queueCopy reportingHierarchyToken:hierarchyTokenCopy avMode:mode videoEnabled:v32 isNearbyConversation:v34 captureSessionCreationBlock:?];
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
  [v3 setSessionMode:{objc_msgSend(self, "defaultSessionMode")}];

  return v3;
}

- (NSData)localParticipantData
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  return [(CSDAVCSession *)self localParticipantDataWithVersion:1];
}

- (id)localParticipantDataWithVersion:(unint64_t)version
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  v7 = [session negotiationDataForProtocolVersion:version == 2];

  return v7;
}

- (BOOL)containsRemoteParticipantWithIdentifier:(unint64_t)identifier
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  v7 = [NSNumber numberWithUnsignedLongLong:identifier];
  v8 = [remoteParticipantsByIdentifier objectForKeyedSubscript:v7];
  LOBYTE(queue) = v8 != 0;

  return queue;
}

- (int64_t)sessionToken
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  sessionToken = [session sessionToken];

  return sessionToken;
}

- (NSString)sessionIdentifier
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  uuid = [session uuid];

  return uuid;
}

- (int64_t)maxVideoDecodesAllowed
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

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
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  return self->_audioReady;
}

- (void)setAudioReady:(BOOL)ready
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  self->_audioReady = ready;
}

- (BOOL)isUplinkMuted
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  LOBYTE(queue) = [session isAudioMuted];

  return queue;
}

- (BOOL)isAudioEnabled
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  LOBYTE(queue) = [session isAudioEnabled];

  return queue;
}

- (BOOL)isVideoEnabled
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  LOBYTE(queue) = [session isVideoEnabled];

  return queue;
}

- (BOOL)isScreenEnabled
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  LOBYTE(queue) = [session isScreenEnabled];

  return queue;
}

- (void)setVideo:(BOOL)video
{
  videoCopy = video;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8[0] = 67109120;
    v8[1] = videoCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setVideo: %d", v8, 8u);
  }

  if (videoCopy)
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
    self->_video = videoCopy;
  }
}

- (BOOL)isVideoPaused
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  LOBYTE(queue) = [session isVideoPaused];

  return queue;
}

- (BOOL)isAudioPaused
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  LOBYTE(queue) = [session isAudioPaused];

  return queue;
}

- (BOOL)isOneToOneModeEnabled
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  LOBYTE(queue) = [session isOneToOneEnabled];

  return queue;
}

- (void)handleUpdatedControllingRemoteScreen:(BOOL)screen
{
  screenCopy = screen;
  [(CSDAVCSession *)self _disableRemoteControlForAllParticipants];
  if (screenCopy)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
    allValues = [remoteParticipantsByIdentifier allValues];

    v7 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(allValues);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        if ([v11 isScreenEnabled])
        {
          break;
        }

        if (v8 == ++v10)
        {
          v8 = [allValues countByEnumeratingWithState:&v13 objects:v17 count:16];
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
      allValues = v12;
    }

LABEL_13:
  }
}

- (void)disableRemoteControl
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

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
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

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
  remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  allValues = [remoteParticipantsByIdentifier allValues];

  v7 = [allValues countByEnumeratingWithState:&v11 objects:v16 count:16];
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
          objc_enumerationMutation(allValues);
        }

        [*(*(&v11 + 1) + 8 * v10) setScreenControlEnabled:0];
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [allValues countByEnumeratingWithState:&v11 objects:v16 count:16];
    }

    while (v8);
  }
}

- (int)presentationState
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  v5 = session;
  if (session)
  {
    [session presentationInfo];
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

- (void)setPresentationState:(int)state
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDAVCSession *)self beginParticipantUpdates];
  v12 = 0u;
  v13 = 0u;
  if (state == 2)
  {
    v6 = 2;
  }

  else
  {
    v6 = state == 1;
  }

  v11 = 0uLL;
  session = [(CSDAVCSession *)self session];
  v8 = session;
  if (session)
  {
    [session presentationInfo];
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

  session2 = [(CSDAVCSession *)self session];
  *buf = v11;
  v15 = v12;
  v16 = v13;
  [session2 setPresentationInfo:buf];

  [(CSDAVCSession *)self commitParticipantUpdates];
}

- (CGRect)presentationRect
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [(CSDAVCSession *)self session];
  v5 = session;
  if (session)
  {
    [session presentationInfo];
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

- (void)setPresentationRect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDAVCSession *)self beginParticipantUpdates];
  v15 = 0u;
  session = [(CSDAVCSession *)self session];
  v10 = session;
  if (session)
  {
    [session presentationInfo];
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

  session2 = [(CSDAVCSession *)self session];
  *buf = v13;
  *&buf[16] = v14;
  v17 = v15;
  [session2 setPresentationInfo:buf];

  [(CSDAVCSession *)self commitParticipantUpdates];
}

- (void)setGridDisplayMode:(unint64_t)mode
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDAVCSession *)self beginParticipantUpdates];
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  session = [(CSDAVCSession *)self session];
  v7 = session;
  if (session)
  {
    [session presentationInfo];
  }

  else
  {
    v11 = 0u;
    v12 = 0u;
    v10 = 0u;
  }

  DWORD1(v12) = [(CSDAVCSession *)self presentationLayoutForGridDisplayMode:mode];
  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109120;
    *&buf[4] = DWORD1(v12);
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "setting presentationLayout: (%u)", buf, 8u);
  }

  session2 = [(CSDAVCSession *)self session];
  *buf = v10;
  v14 = v11;
  v15 = v12;
  [session2 setPresentationInfo:buf];

  [(CSDAVCSession *)self commitParticipantUpdates];
}

+ (id)avcScreenCaptureConfigurationForScreenAttributes:(id)attributes
{
  attributesCopy = attributes;
  v4 = objc_alloc_init(AVCScreenCaptureConfiguration);
  [v4 setIsWindowed:{objc_msgSend(attributesCopy, "isWindowed")}];
  windowUUID = [attributesCopy windowUUID];
  uUIDString = [windowUUID UUIDString];
  [v4 setSelectiveScreenUUID:uUIDString];

  displayID = [attributesCopy displayID];
  if (displayID)
  {
    displayID2 = [attributesCopy displayID];
  }

  else
  {
    defaultScreenShareAttributes = [objc_opt_class() defaultScreenShareAttributes];
    displayID2 = [defaultScreenShareAttributes displayID];
  }

  [v4 setScreenCaptureDisplayID:{objc_msgSend(displayID2, "unsignedIntValue")}];

  return v4;
}

- (void)setScreenEnabled:(BOOL)enabled attributes:(id)attributes
{
  enabledCopy = enabled;
  attributesCopy = attributes;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

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
    LODWORD(v32[0]) = enabledCopy;
    WORD2(v32[0]) = 2112;
    *(v32 + 6) = attributesCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "setScreenEnabled:%d screenShareAttributes: %@", buf, 0x12u);
  }

  if (!enabledCopy)
  {
    [(CSDAVCSession *)self setCurrentLocalScreenShareAttributes:0];
    session = [(CSDAVCSession *)self session];
    [session setScreenEnabled:0];

    avcScreenCapture = [(CSDAVCSession *)self avcScreenCapture];

    if (avcScreenCapture)
    {
      [(CSDAVCSession *)self stopCapture];
    }

    else
    {
      delegate = [(CSDAVCSession *)self delegate];
      [delegate session:self changedScreenEnabled:0 didSucceed:1 error:0];
    }

    captureSessionQueue = [(CSDAVCSession *)self captureSessionQueue];
    [captureSessionQueue removeAllObjects];

    goto LABEL_32;
  }

  [(CSDAVCSession *)self setCurrentLocalScreenShareAttributes:attributesCopy];
  captureCapabilities = [(CSDAVCSession *)self captureCapabilities];
  if (captureCapabilities == 1)
  {
    if ([(CSDAVCSession *)self isVideoEnabled])
    {
      v17 = sub_100004778();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Device does not support screen sharing with camera on, also updating videoEnabled", buf, 2u);
      }

      session2 = [(CSDAVCSession *)self session];
      [session2 setVideoEnabled:0];
    }
  }

  else if (!captureCapabilities)
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
  v29 = enabledCopy;
  v27 = attributesCopy;
  v19 = objc_retainBlock(&v23);
  if ([(CSDAVCSession *)self isOneToOneModeEnabled:v23])
  {
    shouldDisableOneToOneModeForScreenShare = [(CSDAVCSession *)self shouldDisableOneToOneModeForScreenShare];
  }

  else
  {
    shouldDisableOneToOneModeForScreenShare = 0;
  }

  v21 = sub_100004778();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = @"NO";
    if (shouldDisableOneToOneModeForScreenShare)
    {
      v22 = @"YES";
    }

    *buf = 138412290;
    v32[0] = v22;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Determined shouldSwitchToGFTMode: %@", buf, 0xCu);
  }

  if (shouldDisableOneToOneModeForScreenShare)
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
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  configuration = [(AVCSession *)self->_session configuration];
  sessionMode = [configuration sessionMode];

  v6 = &TUBundleIdentifierPhoneApplication;
  if (sessionMode != 3)
  {
    v6 = &TUBundleIdentifierFaceTimeApplication;
  }

  v7 = *v6;

  return v7;
}

- (BOOL)shouldDisableOneToOneModeForScreenShare
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  allValues = [remoteParticipantsByIdentifier allValues];
  v6 = [allValues count];

  if (v6 <= 1)
  {
    featureFlags = [(CSDAVCSession *)self featureFlags];
    uPlusOneScreenSharing = [featureFlags uPlusOneScreenSharing];

    if (uPlusOneScreenSharing)
    {
      delegate = [(CSDAVCSession *)self delegate];
      v11 = [delegate onlyAvailableSessionConversationParticipant:self];

      capabilities = [v11 capabilities];
      v7 = [capabilities isUPlusOneScreenShareAvailable] ^ 1;
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

- (void)setScreenShareAttributes:(id)attributes
{
  attributesCopy = attributes;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412290;
    v12 = attributesCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "screenShareAttributes: %@", &v11, 0xCu);
  }

  currentLocalScreenShareAttributes = [(CSDAVCSession *)self currentLocalScreenShareAttributes];
  v8 = [currentLocalScreenShareAttributes isEqualToScreenShareAttributes:attributesCopy];

  if (v8)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      currentLocalScreenShareAttributes2 = [(CSDAVCSession *)self currentLocalScreenShareAttributes];
      v11 = 138412546;
      v12 = attributesCopy;
      v13 = 2112;
      v14 = currentLocalScreenShareAttributes2;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Asked to set screenShareAttributes %@ when local attributes are: %@", &v11, 0x16u);
    }
  }

  else
  {
    [(CSDAVCSession *)self setCurrentLocalScreenShareAttributes:attributesCopy];
    [(CSDAVCSession *)self startAVCScreenCaptureWithAttributes:attributesCopy preferImmediateActivation:0 screenControlEnabled:0 capturesCursor:1];
  }
}

- (void)updateConfigurationSessionMode:(int64_t)mode
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    modeCopy = mode;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "updatingSessionMode: %ld", &v10, 0xCu);
  }

  session = [(CSDAVCSession *)self session];
  configuration = [session configuration];

  [configuration setSessionMode:mode];
  session2 = [(CSDAVCSession *)self session];
  [session2 updateConfiguration:configuration];
}

- (void)setRelaying:(BOOL)relaying
{
  relayingCopy = relaying;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = @"NO";
    if (relayingCopy)
    {
      v7 = @"YES";
    }

    v9 = 136315394;
    v10 = "[CSDAVCSession setRelaying:]";
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%s:  %@", &v9, 0x16u);
  }

  self->_relaying = relayingCopy;
  if (relayingCopy || [(CSDAVCSession *)self isScreening])
  {
    defaultSessionMode = 1;
  }

  else
  {
    defaultSessionMode = [objc_opt_class() defaultSessionMode];
  }

  [(CSDAVCSession *)self updateConfigurationSessionMode:defaultSessionMode];
}

- (void)setScreening:(BOOL)screening
{
  screeningCopy = screening;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  self->_screening = screeningCopy;
  if (screeningCopy || [(CSDAVCSession *)self isRelaying])
  {
    defaultSessionMode = 1;
  }

  else
  {
    defaultSessionMode = [objc_opt_class() defaultSessionMode];
  }

  session = [(CSDAVCSession *)self session];
  configuration = [session configuration];

  [configuration setSessionMode:defaultSessionMode];
  if (screeningCopy)
  {
    [configuration setOutOfProcessCodecsEnabled:1];
  }

  session2 = [(CSDAVCSession *)self session];
  [session2 updateConfiguration:configuration];
}

- (void)queueAddParticipantRetryBlock:(id)block withVideoEnabled:(BOOL)enabled audioPaused:(BOOL)paused screenEnabled:(BOOL)screenEnabled
{
  blockCopy = block;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  objc_initWeak(&location, self);
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_1002124AC;
  v20 = &unk_10061EBF8;
  objc_copyWeak(&v22, &location);
  v12 = blockCopy;
  v21 = v12;
  enabledCopy = enabled;
  pausedCopy = paused;
  screenEnabledCopy = screenEnabled;
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

- (void)removeParticipant:(id)participant
{
  participantCopy = participant;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  sessionUpdateCompletionQueue = [(CSDAVCSession *)self sessionUpdateCompletionQueue];
  v7 = [sessionUpdateCompletionQueue count];

  if (v7)
  {
    objc_initWeak(&location, self);
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_100212EF0;
    v27[3] = &unk_10061A600;
    objc_copyWeak(&v29, &location);
    v8 = participantCopy;
    v28 = v8;
    v9 = objc_retainBlock(v27);
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Already have oneToOne transition in progress, delaying removeParticipant request for %@", buf, 0xCu);
    }

    sessionUpdateCompletionQueue2 = [(CSDAVCSession *)self sessionUpdateCompletionQueue];
    v12 = [v9 copy];
    [sessionUpdateCompletionQueue2 addObject:v12];

    objc_destroyWeak(&v29);
    objc_destroyWeak(&location);
  }

  else
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v32 = participantCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "removeParticipant: %@", buf, 0xCu);
    }

    remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
    v15 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy identifier]);
    v16 = [remoteParticipantsByIdentifier objectForKeyedSubscript:v15];

    pendingRemovedParticipantsByID = [(CSDAVCSession *)self pendingRemovedParticipantsByID];
    v18 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy identifier]);
    if (v16)
    {
      [pendingRemovedParticipantsByID setObject:participantCopy forKeyedSubscript:v18];

      remoteParticipantsByIdentifier2 = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
      v20 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy identifier]);
      [remoteParticipantsByIdentifier2 setObject:0 forKeyedSubscript:v20];

      session = [(CSDAVCSession *)self session];
      [session removeParticipant:v16];
    }

    else
    {
      v22 = [pendingRemovedParticipantsByID objectForKeyedSubscript:v18];

      session = sub_100004778();
      v23 = os_log_type_enabled(session, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        if (v23)
        {
          identifier = [participantCopy identifier];
          *buf = 134217984;
          v32 = identifier;
          _os_log_impl(&_mh_execute_header, session, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find participant %lu in the active participant list, but they're in the list of pending removals", buf, 0xCu);
        }
      }

      else if (v23)
      {
        identifier2 = [participantCopy identifier];
        remoteParticipantsByIdentifier3 = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
        *buf = 134218242;
        v32 = identifier2;
        v33 = 2112;
        v34 = remoteParticipantsByIdentifier3;
        _os_log_impl(&_mh_execute_header, session, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find participant with identifier %lu all participants: %@", buf, 0x16u);
      }
    }
  }
}

- (void)setParticipantCluster:(id)cluster forParticipantWithIdentifier:(unint64_t)identifier
{
  v5 = [(CSDAVCSession *)self queue:cluster];
  dispatch_assert_queue_V2(v5);

  featureFlags = [(CSDAVCSession *)self featureFlags];
  [featureFlags nearbyFaceTimeEnabled];
}

- (void)setLocalParticipantCluster:(id)cluster
{
  clusterCopy = cluster;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    uUID = [clusterCopy UUID];
    v9 = 138412290;
    v10 = uUID;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "setLocalParticipantCluster: clusterID: %@", &v9, 0xCu);
  }

  featureFlags = [(CSDAVCSession *)self featureFlags];
  [featureFlags nearbyFaceTimeEnabled];
}

+ (unsigned)avcSessionVideoQualityFrom:(unint64_t)from
{
  if (from == 1)
  {
    v3 = 5;
  }

  else
  {
    v3 = 0;
  }

  if (from == 2)
  {
    return 10;
  }

  else
  {
    return v3;
  }
}

- (void)setVideoQuality:(unint64_t)quality forParticipantWithIdentifier:(unint64_t)identifier
{
  remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  v7 = [NSNumber numberWithUnsignedLongLong:identifier];
  v8 = [remoteParticipantsByIdentifier objectForKeyedSubscript:v7];

  if (v8)
  {
    [v8 setVideoQuality:{objc_msgSend(objc_opt_class(), "avcSessionVideoQualityFrom:", quality)}];
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

- (void)setVideoQuality:(unint64_t)quality visibility:(id)visibility prominence:(id)prominence spatialPosition:(CGRect)position isInCanvas:(BOOL)canvas forParticipantWithIdentifier:(unint64_t)identifier
{
  canvasCopy = canvas;
  height = position.size.height;
  width = position.size.width;
  y = position.origin.y;
  x = position.origin.x;
  visibilityCopy = visibility;
  prominenceCopy = prominence;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  v21 = [NSNumber numberWithUnsignedLongLong:identifier];
  v22 = [remoteParticipantsByIdentifier objectForKeyedSubscript:v21];

  if (v22)
  {
    v23 = x + width * 0.5;
    v24 = y + height * 0.5;
    if ([prominenceCopy integerValue])
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
      *v29 = identifier;
      *&v29[8] = 2048;
      *&v29[10] = quality;
      *&v29[18] = 2048;
      v30 = COERCE_DOUBLE([visibilityCopy integerValue]);
      LOWORD(v31) = 2048;
      *(&v31 + 2) = [prominenceCopy integerValue];
      WORD5(v31) = 1024;
      HIDWORD(v31) = canvasCopy;
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

    [v22 setVideoQuality:{objc_msgSend(objc_opt_class(), "avcSessionVideoQualityFrom:", quality)}];
    [v22 setVisibilityIndex:{objc_msgSend(visibilityCopy, "integerValue")}];
    [v22 setProminenceIndex:{objc_msgSend(prominenceCopy, "integerValue")}];
    v28 = canvasCopy;
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
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "", v6, 2u);
  }

  session = [(CSDAVCSession *)self session];
  [session beginParticipantConfiguration];
}

- (void)commitParticipantUpdates
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "", v6, 2u);
  }

  session = [(CSDAVCSession *)self session];
  [session endParticipantConfiguration];
}

- (void)start
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "", v6, 2u);
  }

  [(CSDAVCSession *)self setHasCalledStop:0];
  session = [(CSDAVCSession *)self session];
  [session start];
}

- (void)stopCapture
{
  avcScreenCapture = [(CSDAVCSession *)self avcScreenCapture];

  if (avcScreenCapture)
  {
    v4 = sub_100004778();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      avcScreenCapture2 = [(CSDAVCSession *)self avcScreenCapture];
      v8 = 134217984;
      v9 = avcScreenCapture2;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Calling stop on screen capture %p", &v8, 0xCu);
    }

    avcScreenCapture3 = [(CSDAVCSession *)self avcScreenCapture];
    [avcScreenCapture3 stopCapture];

    clientBundleIDForAVCSession = [(CSDAVCSession *)self clientBundleIDForAVCSession];
    sub_10022B084(clientBundleIDForAVCSession, 0);
  }
}

- (void)stopWithError:(id)error
{
  errorCopy = error;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDAVCSession *)self setHasCalledStop:1];
  [(CSDAVCSession *)self stopCapture];
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = errorCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "CSDAVCSession: stop with error: %@", &v8, 0xCu);
  }

  session = [(CSDAVCSession *)self session];
  [session stopWithError:errorCopy];
}

- (BOOL)shouldIgnoreBenignErrorOnStart:(id)start
{
  startCopy = start;
  if (startCopy && [(CSDAVCSession *)self hasCalledStop])
  {
    domain = [startCopy domain];
    if ([domain isEqualToString:@"GKVoiceChatServiceErrorDomain"] && objc_msgSend(startCopy, "code") == 32028)
    {
      localizedFailureReason = [startCopy localizedFailureReason];
      v7 = [localizedFailureReason isEqualToString:@"Stop called on a starting session"];
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

- (void)session:(id)session didStopWithError:(id)error
{
  errorCopy = error;
  sessionCopy = session;
  v8 = objc_alloc_init(NSDictionary);
  [(CSDAVCSession *)self session:sessionCopy didStopWithError:errorCopy metadata:v8];
}

- (void)session:(id)session didStopWithError:(id)error metadata:(id)metadata
{
  errorCopy = error;
  metadataCopy = metadata;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v25 = 138412290;
    v26 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "error: %@", &v25, 0xCu);
  }

  v11 = errorCopy;
  hasCalledStop = [(CSDAVCSession *)self hasCalledStop];
  v13 = v11;
  if (!v11)
  {
    v13 = 0;
    if ((hasCalledStop & 1) == 0)
    {
      v13 = [[NSError alloc] initWithDomain:@"CSDAVCSessionError" code:505 userInfo:0];
    }
  }

  integerValue = [metadataCopy objectForKey:@"avcKeySessionSentBytes"];
  if (integerValue)
  {
    v15 = [metadataCopy objectForKeyedSubscript:@"avcKeySessionSentBytes"];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v17 = [metadataCopy objectForKeyedSubscript:@"avcKeySessionSentBytes"];
      integerValue = [v17 integerValue];
    }

    else
    {
      integerValue = 0;
    }
  }

  v18 = [metadataCopy objectForKey:@"avcKeySessionReceivedBytes"];
  if (v18)
  {
    v19 = v18;
    v20 = [metadataCopy objectForKeyedSubscript:@"avcKeySessionReceivedBytes"];
    objc_opt_class();
    v21 = objc_opt_isKindOfClass();

    if (v21)
    {
      v22 = [metadataCopy objectForKeyedSubscript:@"avcKeySessionReceivedBytes"];
      integerValue += [v22 integerValue];
    }
  }

  delegate = [(CSDAVCSession *)self delegate];
  if (integerValue >= 1)
  {
    v24 = sub_100004778();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = 134217984;
      v26 = integerValue;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Sending delegate bytesOfDataUsageChanged: %ld", &v25, 0xCu);
    }

    [delegate session:self changedBytesOfDataUsed:integerValue];
  }

  [delegate session:self didStopWithError:v13];
}

- (id)pendingRemovedRemoteParticipantByIdentififer:(unint64_t)identififer
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  pendingRemovedParticipantsByID = [(CSDAVCSession *)self pendingRemovedParticipantsByID];
  v7 = [NSNumber numberWithUnsignedLongLong:identififer];
  v8 = [pendingRemovedParticipantsByID objectForKeyedSubscript:v7];

  return v8;
}

- (void)session:(id)session didDetectError:(id)error
{
  errorCopy = error;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = errorCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "didDetectError: %@", &v9, 0xCu);
  }

  delegate = [(CSDAVCSession *)self delegate];
  [delegate session:self didDetectError:errorCopy];
}

- (void)sessionServerDidDisconnect:(id)disconnect
{
  disconnectCopy = disconnect;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    sub_10047C82C();
  }

  delegate = [(CSDAVCSession *)self delegate];
  [delegate serverDisconnectedForSession:self];
}

- (void)session:(id)session addParticipant:(id)participant didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  participantCopy = participant;
  errorCopy = error;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v43 = participantCopy;
    v44 = 1024;
    LODWORD(v45[0]) = succeedCopy;
    WORD2(v45[0]) = 2112;
    *(v45 + 6) = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "addParticipant: %@ didSucceed: %d error: %@", buf, 0x1Cu);
  }

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
    *buf = 138412546;
    v43 = participantCopy;
    v44 = 2112;
    v45[0] = remoteParticipantsByIdentifier;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "addParticipant: %@ Active remote participants: %@", buf, 0x16u);
  }

  delegate = [(CSDAVCSession *)self delegate];
  if (succeedCopy)
  {
    captionsToken = [participantCopy captionsToken];
    v17 = sub_100004778();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v43 = captionsToken;
      v44 = 2112;
      v45[0] = participantCopy;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Got captions token: %lu for participant %@", buf, 0x16u);
    }

    [delegate addedRemoteParticipantWithIdentifier:objc_msgSend(participantCopy updatedAudioEnabled:"participantID") updatedVideoEnabled:1 streamToken:objc_msgSend(participantCopy screenToken:"isVideoEnabled") captionsToken:{objc_msgSend(participantCopy, "videoToken"), objc_msgSend(participantCopy, "screenToken"), captionsToken}];
    pendingRemovedParticipantsByID = [(CSDAVCSession *)self pendingRemovedParticipantsByID];
    v19 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy participantID]);
    v20 = [pendingRemovedParticipantsByID objectForKeyedSubscript:v19];

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

    remoteParticipantsByIdentifier2 = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
    v23 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy participantID]);
    [remoteParticipantsByIdentifier2 setObject:0 forKeyedSubscript:v23];

    userInfo = [errorCopy userInfo];
    v20 = userInfo;
    if (userInfo)
    {
      v25 = GKSErrorDetailedError;
      v26 = [userInfo objectForKeyedSubscript:GKSErrorDetailedError];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & 1) == 0)
      {
        [errorCopy code];
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

    if ([errorCopy code] == 32016 && (v30 & 1) == 0)
    {
      v31 = [delegate session:self conversationParticipantWithParticipantIdentifier:{objc_msgSend(participantCopy, "participantID")}];
      session = sub_100004778();
      v33 = os_log_type_enabled(session, OS_LOG_TYPE_DEFAULT);
      v41 = v31;
      if (v31)
      {
        if (v33)
        {
          *buf = 138412546;
          v43 = participantCopy;
          v44 = 2112;
          v45[0] = errorCopy;
          _os_log_impl(&_mh_execute_header, session, OS_LOG_TYPE_DEFAULT, "Retrying to add participant after one to one mode changes %@: %@", buf, 0x16u);
        }

        session = [(CSDAVCSession *)self session];
        isVideoEnabled = [session isVideoEnabled];
        session2 = [(CSDAVCSession *)self session];
        isAudioPaused = [session2 isAudioPaused];
        session3 = [(CSDAVCSession *)self session];
        isScreenEnabled = [session3 isScreenEnabled];
        selfCopy = self;
        v40 = v41;
        [(CSDAVCSession *)selfCopy queueAddParticipantRetryBlock:v41 withVideoEnabled:isVideoEnabled audioPaused:isAudioPaused screenEnabled:isScreenEnabled];
      }

      else
      {
        if (v33)
        {
          *buf = 138412290;
          v43 = participantCopy;
          _os_log_impl(&_mh_execute_header, session, OS_LOG_TYPE_DEFAULT, "[WARN] Delegate responded that we are not tracking active remote participant anymore, not retrying to add participant: %@", buf, 0xCu);
        }

        v40 = 0;
      }
    }
  }

LABEL_27:
}

- (void)session:(id)session didUpdate:(BOOL)update configuration:(id)configuration error:(id)error
{
  updateCopy = update;
  configurationCopy = configuration;
  errorCopy = error;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v12 = sub_100004778();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109634;
    v14[1] = updateCopy;
    v15 = 2112;
    v16 = configurationCopy;
    v17 = 2112;
    v18 = errorCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "didUpdate: %d configuration: %@ error: %@", v14, 0x1Cu);
  }

  if (!updateCopy)
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      sub_10047CA14();
    }
  }
}

- (void)session:(id)session mediaStateDidChange:(unsigned int)change forMediaType:(unsigned int)type didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  errorCopy = error;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v13 = sub_100004778();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14[0] = 67109890;
    v14[1] = change;
    v15 = 1024;
    typeCopy = type;
    v17 = 1024;
    v18 = succeedCopy;
    v19 = 2112;
    v20 = errorCopy;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "mediaStateDidChange: %d forMediaType: %d didSucceed: %d error: %@", v14, 0x1Eu);
  }
}

- (void)sessionShouldReconnect:(id)reconnect
{
  reconnectCopy = reconnect;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = reconnectCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "session: %@", &v8, 0xCu);
  }

  delegate = [(CSDAVCSession *)self delegate];
  [delegate sessionShouldReconnect:self];
}

- (void)session:(id)session mixingDidStartForMediaType:(unsigned int)type mixingMediaType:(unsigned int)mediaType
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11[0] = 67109376;
    v11[1] = type;
    v12 = 1024;
    mediaTypeCopy = mediaType;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "mixingDidStartForMediaType: %d mixingMediaType: %d", v11, 0xEu);
  }

  if (type == 2 && mediaType == 1)
  {
    delegate = [(CSDAVCSession *)self delegate];
    [delegate session:self cameraMixedWithScreenDidChange:1];
  }
}

- (void)session:(id)session mixingDidStopForMediaType:(unsigned int)type
{
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = type;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "mixingDidStopForMediaType: %d", v9, 8u);
  }

  if (type == 2)
  {
    delegate = [(CSDAVCSession *)self delegate];
    [delegate session:self cameraMixedWithScreenDidChange:0];
  }
}

- (void)session:(id)session didReact:(id)react
{
  sessionCopy = session;
  reactCopy = react;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = sessionCopy;
    v13 = 2112;
    v14 = reactCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "session: %@ didReact: %@", &v11, 0x16u);
  }

  delegate = [(CSDAVCSession *)self delegate];
  [delegate session:self localParticipantDidReact:reactCopy];
}

- (void)sessionDidStopReacting:(id)reacting
{
  reactingCopy = reacting;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = reactingCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "session: %@ didStopReacting", &v8, 0xCu);
  }

  delegate = [(CSDAVCSession *)self delegate];
  [delegate sessionLocalParticipantDidStopReacting:self];
}

- (void)participant:(id)participant screenEnabled:(BOOL)enabled didSucceed:(BOOL)succeed error:(id)error
{
  succeedCopy = succeed;
  enabledCopy = enabled;
  participantCopy = participant;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  remoteParticipantsByIdentifier = [(CSDAVCSession *)self remoteParticipantsByIdentifier];
  v12 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [participantCopy participantID]);
  v13 = [remoteParticipantsByIdentifier objectForKeyedSubscript:v12];

  if (v13)
  {
    v14 = [(CSDAVCSession *)self isRemoteScreenEnabledForParticipant:participantCopy];
    v15 = sub_100004778();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138413058;
      v18 = participantCopy;
      v19 = 1024;
      v20 = enabledCopy;
      v21 = 1024;
      v22 = succeedCopy;
      v23 = 1024;
      v24 = v14;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "participant: %@ screenEnabled: %d didSucceed: %d remoteScreenEnabled: %d", &v17, 0x1Eu);
    }

    delegate = [(CSDAVCSession *)self delegate];
    [delegate remoteParticipantWithIdentifier:objc_msgSend(participantCopy updatedScreenEnabled:"participantID") streamToken:enabledCopy & v14 screenToken:objc_msgSend(participantCopy captionsToken:{"videoToken"), objc_msgSend(participantCopy, "screenToken"), objc_msgSend(participantCopy, "captionsToken")}];
  }
}

- (void)participant:(id)participant mediaPrioritiesDidChange:(id)change
{
  changeCopy = change;
  participantCopy = participant;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = [changeCopy objectForKeyedSubscript:AVCSessionParticipantMediaTypeKeyAudio];
  integerValue = [v9 integerValue];

  v11 = [changeCopy objectForKeyedSubscript:AVCSessionParticipantMediaTypeKeyVideo];

  integerValue2 = [v11 integerValue];
  delegate = [(CSDAVCSession *)self delegate];
  participantID = [participantCopy participantID];

  [delegate remoteParticipantWithIdentifier:participantID didChangeAudioPriority:integerValue videoPriority:integerValue2];
}

- (void)participant:(id)participant didReact:(id)react
{
  participantCopy = participant;
  reactCopy = react;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412546;
    v12 = participantCopy;
    v13 = 2112;
    v14 = reactCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "participant: %@ didReact: %@", &v11, 0x16u);
  }

  delegate = [(CSDAVCSession *)self delegate];
  [delegate remoteParticipantWithIdentifier:objc_msgSend(participantCopy didReact:{"participantID"), reactCopy}];
}

- (void)participant:(id)participant remoteMediaStateDidChange:(unsigned int)change forMediaType:(unsigned int)type
{
  participantCopy = participant;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 138412802;
    v12 = participantCopy;
    v13 = 1024;
    changeCopy = change;
    v15 = 1024;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "participant: %@ remoteMediaStateDidChange: %d forMediaType: %d", &v11, 0x18u);
  }
}

- (void)participant:(id)participant mixingDidStartForMediaType:(unsigned int)type mixingMediaType:(unsigned int)mediaType
{
  participantCopy = participant;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 138412802;
    v13 = participantCopy;
    v14 = 1024;
    typeCopy = type;
    v16 = 1024;
    mediaTypeCopy = mediaType;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "participant: %@ mixingDidStartForMediaType: %d mixingMediaType: %d", &v12, 0x18u);
  }

  if (type == 2 && mediaType == 1)
  {
    delegate = [(CSDAVCSession *)self delegate];
    [delegate remoteParticipantWithIdentifier:objc_msgSend(participantCopy cameraMixedWithScreenDidChange:{"participantID"), 1}];
  }
}

- (void)participant:(id)participant mixingDidStopForMediaType:(unsigned int)type
{
  participantCopy = participant;
  queue = [(CSDAVCSession *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = sub_100004778();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412546;
    v11 = participantCopy;
    v12 = 1024;
    typeCopy = type;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "participant: %@ mixingDidStopForMediaType: %d", &v10, 0x12u);
  }

  if (type == 2)
  {
    delegate = [(CSDAVCSession *)self delegate];
    [delegate remoteParticipantWithIdentifier:objc_msgSend(participantCopy cameraMixedWithScreenDidChange:{"participantID"), 0}];
  }
}

- (void)screenCapture:(id)capture didStart:(BOOL)start withError:(id)error
{
  captureCopy = capture;
  errorCopy = error;
  queue = [(CSDAVCSession *)self queue];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100216DB4;
  v13[3] = &unk_10061BE38;
  startCopy = start;
  v14 = captureCopy;
  v15 = errorCopy;
  selfCopy = self;
  v11 = errorCopy;
  v12 = captureCopy;
  dispatch_async(queue, v13);
}

- (void)screenCapture:(id)capture didStop:(BOOL)stop withError:(id)error
{
  stopCopy = stop;
  captureCopy = capture;
  errorCopy = error;
  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v17 = captureCopy;
    v18 = 1024;
    v19 = stopCopy;
    v20 = 2112;
    v21 = errorCopy;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "screenCapture: %@ didStop: %d, captureWithError: %@", buf, 0x1Cu);
  }

  queue = [(CSDAVCSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100217038;
  block[3] = &unk_100619F48;
  v15 = stopCopy;
  block[4] = self;
  v14 = errorCopy;
  v12 = errorCopy;
  dispatch_async(queue, block);
}

- (void)screenCapture:(id)capture didUpdateAttributes:(id)attributes error:(id)error
{
  captureCopy = capture;
  attributesCopy = attributes;
  errorCopy = error;
  v11 = sub_100004778();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v20 = captureCopy;
    v21 = 2112;
    v22 = attributesCopy;
    v23 = 2112;
    v24 = errorCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "screenCapture: %@ didUpdateAttributes: %@, error: %@", buf, 0x20u);
  }

  queue = [(CSDAVCSession *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100217388;
  block[3] = &unk_100619E58;
  v16 = errorCopy;
  v17 = attributesCopy;
  selfCopy = self;
  v13 = attributesCopy;
  v14 = errorCopy;
  dispatch_async(queue, block);
}

- (BOOL)isRemoteScreenEnabledForParticipant:(id)participant
{
  participantCopy = participant;
  v4 = (objc_opt_respondsToSelector() & 1) != 0 && [participantCopy performSelector:"remoteScreenEnabled"] != 0;

  return v4;
}

- (int64_t)localCaptionsToken
{
  session = [(CSDAVCSession *)self session];
  v4 = objc_opt_respondsToSelector();

  if ((v4 & 1) == 0)
  {
    return 0;
  }

  session2 = [(CSDAVCSession *)self session];
  v6 = [session2 streamTokenForStreamGroupID:1667330164];

  return v6;
}

- (CSDAVCSessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end