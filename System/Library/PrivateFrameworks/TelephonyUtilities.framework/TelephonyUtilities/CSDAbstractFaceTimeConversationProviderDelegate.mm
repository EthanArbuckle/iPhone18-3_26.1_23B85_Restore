@interface CSDAbstractFaceTimeConversationProviderDelegate
- (BOOL)_isWaitingToJoinForConversationUUID:(id)d;
- (BOOL)hasCallStartedConnectingWithUUID:(id)d;
- (BOOL)isLocalMemberOf:(id)of associatedTo:(id)to;
- (BOOL)isManagingCallWithUUID:(id)d;
- (BOOL)isManagingPendingConversationForCallWithUUID:(id)d;
- (BOOL)isWaitingToJoinForConversationUUID:(id)d;
- (BOOL)shouldAutomaticallyLeaveConversation:(id)conversation;
- (CSDAbstractFaceTimeConversationProviderDelegate)initWithConversationManager:(id)manager queue:(id)queue invitationResolver:(id)resolver;
- (CSDAbstractFaceTimeConversationProviderDelegate)initWithQueue:(id)queue conversationManager:(id)manager networkSupport:(id)support serverBag:(id)bag featureFlags:(id)flags invitationResolver:(id)resolver;
- (CSDFaceTimeProviderDelegateManagerDelegate)faceTimeDemuxerDelegate;
- (FTDeviceSupport)deviceSupport;
- (NSMutableDictionary)callUUIDsByConversationUUID;
- (NSMutableDictionary)conversationUUIDsByCallUUID;
- (NSMutableSet)conversationUUIDsWaitingToJoin;
- (id)_findPendingConversationWithCallUUID:(id)d;
- (id)callUUIDForConversationUUID:(id)d;
- (id)conversationUUIDForCallUUID:(id)d;
- (id)pendingConversationUUIDForCallWithUUID:(id)d;
- (void)cleanUpConversationIfNecessaryForConversationUUID:(id)d failureContext:(id)context;
- (void)conversationManager:(id)manager avModeChanged:(unint64_t)changed toAVMode:(unint64_t)mode forParticipantWithHandle:(id)handle forConversation:(id)conversation;
- (void)conversationManager:(id)manager conversation:(id)conversation removedActiveParticipant:(id)participant withReason:(unint64_t)reason;
- (void)conversationManager:(id)manager reportedNewIncomingConversation:(id)conversation fromHandle:(id)handle;
- (void)dealloc;
- (void)endCallWithUUIDAsAnsweredElsewhere:(id)elsewhere;
- (void)endCallWithUUIDAsDeclinedElsewhere:(id)elsewhere;
- (void)endCallWithUUIDAsLocalHangup:(id)hangup;
- (void)enqueueConversationWaitingForAudioWithConversationUUID:(id)d;
- (void)enqueueOrStartAudioForConversationUUID:(id)d;
- (void)fullfillPendingJoinActionsForCallUUIDIfNecessary:(id)necessary;
- (void)handleAudioInterruptionPropertiesChanged:(id)changed;
- (void)leaveConversation:(id)conversation withCallUUID:(id)d reason:(int64_t)reason;
- (void)leaveConversationForCallUUID:(id)d endedReason:(int64_t)reason;
- (void)proceedToJoinForConversation:(id)conversation action:(id)action;
- (void)provider:(id)provider didDeactivateAudioSession:(id)session;
- (void)provider:(id)provider performEndCallAction:(id)action;
- (void)provider:(id)provider performJoinCallAction:(id)action;
- (void)provider:(id)provider performSetMutedCallAction:(id)action;
- (void)provider:(id)provider timedOutPerformingAction:(id)action;
- (void)providerDidBegin:(id)begin;
- (void)providerDidReset:(id)reset;
- (void)removeActiveAudioSessionObjectForConversationWithUUID:(id)d;
- (void)setCallUUID:(id)d forConversationUUID:(id)iD;
- (void)setConversationUUID:(id)d forCallUUID:(id)iD;
- (void)setWaitingToJoin:(BOOL)join forConversationUUID:(id)d;
- (void)startAudioForConversationsIfNecessary;
- (void)updateNetworkCriticalStateIfNecessary;
@end

@implementation CSDAbstractFaceTimeConversationProviderDelegate

- (CSDAbstractFaceTimeConversationProviderDelegate)initWithConversationManager:(id)manager queue:(id)queue invitationResolver:(id)resolver
{
  resolverCopy = resolver;
  queueCopy = queue;
  managerCopy = manager;
  v11 = objc_alloc_init(TUFeatureFlags);
  v12 = objc_alloc_init(CSDSharedConversationServerBag);
  v13 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self initWithQueue:queueCopy conversationManager:managerCopy networkSupport:0 serverBag:v12 featureFlags:v11 invitationResolver:resolverCopy];

  return v13;
}

- (CSDAbstractFaceTimeConversationProviderDelegate)initWithQueue:(id)queue conversationManager:(id)manager networkSupport:(id)support serverBag:(id)bag featureFlags:(id)flags invitationResolver:(id)resolver
{
  queueCopy = queue;
  managerCopy = manager;
  supportCopy = support;
  bagCopy = bag;
  flagsCopy = flags;
  resolverCopy = resolver;
  v37.receiver = self;
  v37.super_class = CSDAbstractFaceTimeConversationProviderDelegate;
  v19 = [(CSDAbstractFaceTimeConversationProviderDelegate *)&v37 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_queue, queue);
    objc_storeStrong(&v20->_conversationManager, manager);
    [(CSDConversationManager *)v20->_conversationManager addDelegate:v20 queue:v20->_queue, managerCopy, queueCopy];
    if (supportCopy)
    {
      v21 = supportCopy;
    }

    else
    {
      v21 = +[FTNetworkSupport sharedInstance];
    }

    networkSupport = v20->_networkSupport;
    v20->_networkSupport = v21;

    objc_storeStrong(&v20->_serverBag, bag);
    objc_storeStrong(&v20->_invitationResolver, resolver);
    objc_storeStrong(&v20->_featureFlags, flags);
    v23 = +[NSMutableSet set];
    conversationUUIDsWaitingToJoin = v20->_conversationUUIDsWaitingToJoin;
    v20->_conversationUUIDsWaitingToJoin = v23;

    v25 = +[NSMutableDictionary dictionary];
    callUUIDsByConversationUUID = v20->_callUUIDsByConversationUUID;
    v20->_callUUIDsByConversationUUID = v25;

    v27 = +[NSMutableDictionary dictionary];
    conversationUUIDsByCallUUID = v20->_conversationUUIDsByCallUUID;
    v20->_conversationUUIDsByCallUUID = v27;

    v29 = +[NSMutableSet set];
    conversationUUIDsAwaitingActiveAudioSession = v20->_conversationUUIDsAwaitingActiveAudioSession;
    v20->_conversationUUIDsAwaitingActiveAudioSession = v29;

    v31 = +[NSMutableSet set];
    callUUIDsUpgradedForAVMode = v20->_callUUIDsUpgradedForAVMode;
    v20->_callUUIDsUpgradedForAVMode = v31;

    v33 = +[NSNotificationCenter defaultCenter];
    [v33 addObserver:v20 selector:"handleAudioInterruptionPropertiesChanged:" name:@"CSDCallAudioInterruptionPropertiesChangedNotification" object:0];
  }

  return v20;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSDAbstractFaceTimeConversationProviderDelegate;
  [(CSDAbstractFaceTimeConversationProviderDelegate *)&v4 dealloc];
}

- (NSMutableSet)conversationUUIDsWaitingToJoin
{
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationUUIDsWaitingToJoin = self->_conversationUUIDsWaitingToJoin;

  return conversationUUIDsWaitingToJoin;
}

- (BOOL)isWaitingToJoinForConversationUUID:(id)d
{
  dCopy = d;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100265758;
  block[3] = &unk_10061C678;
  v9 = dCopy;
  v10 = &v11;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(queue, block);

  LOBYTE(dCopy) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return dCopy;
}

- (BOOL)_isWaitingToJoinForConversationUUID:(id)d
{
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationUUIDsWaitingToJoin = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsWaitingToJoin];
  LOBYTE(queue) = [conversationUUIDsWaitingToJoin containsObject:dCopy];

  return queue;
}

- (void)setWaitingToJoin:(BOOL)join forConversationUUID:(id)d
{
  joinCopy = join;
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  if (dCopy)
  {
    conversationUUIDsWaitingToJoin = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsWaitingToJoin];
    v8 = conversationUUIDsWaitingToJoin;
    if (joinCopy)
    {
      [conversationUUIDsWaitingToJoin addObject:dCopy];
    }

    else
    {
      [conversationUUIDsWaitingToJoin removeObject:dCopy];
    }
  }
}

- (NSMutableDictionary)callUUIDsByConversationUUID
{
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = self->_callUUIDsByConversationUUID;

  return callUUIDsByConversationUUID;
}

- (id)callUUIDForConversationUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100028760;
  v16 = sub_10003292C;
  v17 = 0;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100265A28;
  block[3] = &unk_10061C678;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setCallUUID:(id)d forConversationUUID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  [callUUIDsByConversationUUID setObject:dCopy forKeyedSubscript:iDCopy];
}

- (void)removeActiveAudioSessionObjectForConversationWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationUUIDsAwaitingActiveAudioSession = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsAwaitingActiveAudioSession];
  [conversationUUIDsAwaitingActiveAudioSession removeObject:dCopy];
}

- (void)updateNetworkCriticalStateIfNecessary
{
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  allKeys = [callUUIDsByConversationUUID allKeys];
  v6 = [allKeys count];

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = @"NO";
    if (v6)
    {
      v8 = @"YES";
    }

    v10 = 138412290;
    v11 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Setting enableCriticalReliability %@", &v10, 0xCu);
  }

  networkSupport = [(CSDAbstractFaceTimeConversationProviderDelegate *)self networkSupport];
  [networkSupport setEnableCriticalReliability:v6 != 0];
}

- (NSMutableDictionary)conversationUUIDsByCallUUID
{
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationUUIDsByCallUUID = self->_conversationUUIDsByCallUUID;

  return conversationUUIDsByCallUUID;
}

- (id)conversationUUIDForCallUUID:(id)d
{
  dCopy = d;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100028760;
  v16 = sub_10003292C;
  v17 = 0;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100265E5C;
  block[3] = &unk_10061C678;
  v10 = dCopy;
  v11 = &v12;
  block[4] = self;
  v6 = dCopy;
  dispatch_sync(queue, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setConversationUUID:(id)d forCallUUID:(id)iD
{
  iDCopy = iD;
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  [conversationUUIDsByCallUUID setObject:dCopy forKeyedSubscript:iDCopy];
}

- (void)handleAudioInterruptionPropertiesChanged:(id)changed
{
  userInfo = [changed userInfo];
  v5 = [userInfo objectForKeyedSubscript:@"CSDCallAudioInterruptionProviderUserInfoKey"];
  v6 = [v5 isEqualToString:@"CSDCallAudioInterruptionProviderUserInfoAVAudioClient"];

  if (v6)
  {
    queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100266038;
    block[3] = &unk_100619D38;
    block[4] = self;
    dispatch_async(queue, block);
  }
}

- (void)enqueueConversationWaitingForAudioWithConversationUUID:(id)d
{
  dCopy = d;
  conversationUUIDsAwaitingActiveAudioSession = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsAwaitingActiveAudioSession];
  [conversationUUIDsAwaitingActiveAudioSession addObject:dCopy];

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self startAudioForConversationsIfNecessary];
}

- (void)enqueueOrStartAudioForConversationUUID:(id)d
{
  dCopy = d;
  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v5 = [conversationManager isConversationWithUUIDRedirectingAudio:dCopy];

  if (v5)
  {
    conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [conversationManager2 startAudioForConversationWithUUID:dCopy];
  }

  else
  {
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self enqueueConversationWaitingForAudioWithConversationUUID:dCopy];
  }
}

- (void)startAudioForConversationsIfNecessary
{
  if ([(CSDAbstractFaceTimeConversationProviderDelegate *)self usesAudioSession]&& ![(CSDAbstractFaceTimeConversationProviderDelegate *)self isAudioSessionActive])
  {
    conversationUUIDsAwaitingActiveAudioSession2 = sub_100004778();
    if (os_log_type_enabled(conversationUUIDsAwaitingActiveAudioSession2, OS_LOG_TYPE_DEFAULT))
    {
      if ([(CSDAbstractFaceTimeConversationProviderDelegate *)self usesAudioSession])
      {
        v12 = @"YES";
      }

      else
      {
        v12 = @"NO";
      }

      if ([(CSDAbstractFaceTimeConversationProviderDelegate *)self isAudioSessionActive])
      {
        v13 = @"YES";
      }

      else
      {
        v13 = @"NO";
      }

      *buf = 138412546;
      v19 = v12;
      v20 = 2112;
      v21 = v13;
      _os_log_impl(&_mh_execute_header, conversationUUIDsAwaitingActiveAudioSession2, OS_LOG_TYPE_DEFAULT, "Not starting audio for conversation: usesAudioSession: %@, isAudioSessionActive: %@", buf, 0x16u);
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    conversationUUIDsAwaitingActiveAudioSession = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsAwaitingActiveAudioSession];
    v4 = [conversationUUIDsAwaitingActiveAudioSession countByEnumeratingWithState:&v14 objects:v22 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v15;
      do
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v15 != v6)
          {
            objc_enumerationMutation(conversationUUIDsAwaitingActiveAudioSession);
          }

          v8 = *(*(&v14 + 1) + 8 * i);
          v9 = sub_100004778();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v19 = v8;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Starting audio for conversation with conversationUUID %@", buf, 0xCu);
          }

          conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
          [conversationManager startAudioForConversationWithUUID:v8];
        }

        v5 = [conversationUUIDsAwaitingActiveAudioSession countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v5);
    }

    conversationUUIDsAwaitingActiveAudioSession2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsAwaitingActiveAudioSession];
    [conversationUUIDsAwaitingActiveAudioSession2 removeAllObjects];
  }
}

- (id)_findPendingConversationWithCallUUID:(id)d
{
  dCopy = d;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    pseudonymsByCallUUID = [conversationManager pseudonymsByCallUUID];
    conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    conversationsByUUID = [conversationManager2 conversationsByUUID];
    *buf = 138412546;
    v33 = pseudonymsByCallUUID;
    v34 = 2112;
    v35 = conversationsByUUID;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "pseudonymsByCallUUID: %@, conversationsByUUID: %@", buf, 0x16u);
  }

  conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  pseudonymsByCallUUID2 = [conversationManager3 pseudonymsByCallUUID];
  v12 = [pseudonymsByCallUUID2 objectForKeyedSubscript:dCopy];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  conversationManager4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID2 = [conversationManager4 conversationsByUUID];
  allValues = [conversationsByUUID2 allValues];

  v16 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v26 = dCopy;
    v17 = *v28;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(allValues);
        }

        v19 = *(*(&v27 + 1) + 8 * i);
        if ([v19 isPendingConversation])
        {
          link = [v19 link];
          if (link)
          {
            v21 = link;
            link2 = [v19 link];
            pseudonym = [link2 pseudonym];
            v24 = [pseudonym isEqualToString:v12];

            if (v24)
            {
              v16 = v19;
              goto LABEL_15;
            }
          }
        }
      }

      v16 = [allValues countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

LABEL_15:
    dCopy = v26;
  }

  return v16;
}

- (void)conversationManager:(id)manager reportedNewIncomingConversation:(id)conversation fromHandle:(id)handle
{
  conversationCopy = conversation;
  handleCopy = handle;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)conversationCopy provider];
  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self shouldHandleProvider:provider];

  v12 = sub_100004778();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v18 = 138412546;
      selfCopy = conversationCopy;
      v20 = 2112;
      v21 = handleCopy;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Conversation manager reported a new incoming conversation %@ from handle %@", &v18, 0x16u);
    }

    callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    uUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)conversationCopy UUID];
    v12 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

    if (v12)
    {
      v16 = sub_100004778();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        uUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)conversationCopy UUID];
        v18 = 138412546;
        selfCopy = uUID2;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Ignoring new conversation %@ since we are already tracking this with call %@", &v18, 0x16u);
      }
    }

    else
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self reportNewIncomingCallForConversation:conversationCopy fromHandle:handleCopy isReRing:0 invitationContext:0];
    }
  }

  else if (v13)
  {
    v18 = 138412546;
    selfCopy = self;
    v20 = 2112;
    v21 = conversationCopy;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ should not handle conversation: %@", &v18, 0x16u);
  }
}

- (void)conversationManager:(id)manager avModeChanged:(unint64_t)changed toAVMode:(unint64_t)mode forParticipantWithHandle:(id)handle forConversation:(id)conversation
{
  handleCopy = handle;
  conversationCopy = conversation;
  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  uUID = [conversationCopy UUID];
  v13 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];

  if (v13)
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      uUID2 = [conversationCopy UUID];
      v18 = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = uUID2;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Skipping to report a new call since we already have a call with UUID: %@ for conversationUUID: %@", &v18, 0x16u);
    }
  }

  else
  {
    v16 = +[NSUUID UUID];
    callUUIDsUpgradedForAVMode = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsUpgradedForAVMode];
    [callUUIDsUpgradedForAVMode addObject:v16];

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self reportNewIncomingCallForConversation:conversationCopy fromHandle:handleCopy callUUID:v16 isReRing:0 invitationContext:0];
  }
}

- (void)fullfillPendingJoinActionsForCallUUIDIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
  v7 = [provider pendingCallActionsOfClass:objc_opt_class() withCallUUID:necessaryCopy];

  faceTimeDemuxerDelegate = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
  v9 = [faceTimeDemuxerDelegate providerDelegate:self isExclusivelyManagingCallWithUUID:necessaryCopy];

  if (v9)
  {
    provider2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    v11 = [provider2 pendingCallActionsOfClass:objc_opt_class() withCallUUID:necessaryCopy];

    if ([v11 count])
    {
      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v11;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Also going to fulfill start call actions: %@ since we are exclusively managing this call", buf, 0xCu);
      }
    }

    v13 = [v7 arrayByAddingObjectsFromArray:v11];

    v7 = v13;
  }

  if ([v7 count])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v14 = v7;
    v15 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        v18 = 0;
        do
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v21 + 1) + 8 * v18) fulfill];
          v18 = v18 + 1;
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v16);
    }
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v20 = [conversationUUIDsByCallUUID objectForKeyedSubscript:necessaryCopy];

  if (v20)
  {
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self setWaitingToJoin:0 forConversationUUID:v20];
  }
}

- (BOOL)isManagingCallWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v7 = [conversationUUIDsByCallUUID objectForKeyedSubscript:dCopy];

  if (!v7)
  {
    goto LABEL_4;
  }

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v10 = [conversationsByUUID objectForKeyedSubscript:v7];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
LABEL_4:
    v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self isManagingPendingConversationForCallWithUUID:dCopy];
  }

  return v11;
}

- (BOOL)isManagingPendingConversationForCallWithUUID:(id)d
{
  dCopy = d;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  allValues = [conversationsByUUID allValues];

  v8 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(allValues);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
        uUID = [v12 UUID];
        v15 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];
        v16 = [v15 isEqual:dCopy];

        if (v16)
        {
          v17 = 1;
          goto LABEL_11;
        }
      }

      v9 = [allValues countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v17 = 0;
LABEL_11:

  return v17;
}

- (id)pendingConversationUUIDForCallWithUUID:(id)d
{
  dCopy = d;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  allValues = [conversationsByUUID allValues];

  obj = allValues;
  v8 = [allValues countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    while (2)
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
        uUID = [v12 UUID];
        v15 = [callUUIDsByConversationUUID objectForKeyedSubscript:uUID];
        v16 = [v15 isEqual:dCopy];

        if (v16)
        {
          uUID2 = [v12 UUID];
          goto LABEL_11;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v20 objects:v24 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  uUID2 = 0;
LABEL_11:

  return uUID2;
}

- (BOOL)hasCallStartedConnectingWithUUID:(id)d
{
  dCopy = d;
  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v6 = [conversationUUIDsByCallUUID objectForKeyedSubscript:dCopy];

  if (v6)
  {
    conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    conversationsByUUID = [conversationManager conversationsByUUID];
    v9 = [conversationsByUUID objectForKeyedSubscript:v6];

    if (v9)
    {
      v10 = ([v9 state] & 0xFFFFFFFFFFFFFFFELL) == 2;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)endCallWithUUIDAsAnsweredElsewhere:(id)elsewhere
{
  elsewhereCopy = elsewhere;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = elsewhereCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "endCallWithUUIDAsAnsweredElsewhere: %@", &v6, 0xCu);
  }

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversationForCallUUID:elsewhereCopy endedReason:4];
}

- (void)endCallWithUUIDAsDeclinedElsewhere:(id)elsewhere
{
  elsewhereCopy = elsewhere;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = elsewhereCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "endCallWithUUIDAsDeclinedElsewhere: %@", &v6, 0xCu);
  }

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversationForCallUUID:elsewhereCopy endedReason:5];
}

- (void)endCallWithUUIDAsLocalHangup:(id)hangup
{
  hangupCopy = hangup;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = hangupCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "endCallWithUUIDAsLocalHangup: %@", &v6, 0xCu);
  }

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversationForCallUUID:hangupCopy endedReason:-1];
}

- (void)cleanUpConversationIfNecessaryForConversationUUID:(id)d failureContext:(id)context
{
  dCopy = d;
  contextCopy = context;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  v10 = [callUUIDsByConversationUUID objectForKeyedSubscript:dCopy];

  if (v10)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10047F424(dCopy, v10, v11);
    }

    provider = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [provider reportCallWithUUID:v10 failedAtDate:0 withContext:contextCopy];

    faceTimeDemuxerDelegate = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
    v14 = +[NSDate now];
    v30 = contextCopy;
    [faceTimeDemuxerDelegate providerDelegate:self callWithUUID:v10 endedAtDate:v14 withReason:1 failureContext:contextCopy];

    conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [conversationManager leaveConversationWithUUID:dCopy];

    callUUIDsUpgradedForAVMode = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsUpgradedForAVMode];
    [callUUIDsUpgradedForAVMode removeObject:v10];

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self setCallUUID:0 forConversationUUID:dCopy];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self setConversationUUID:0 forCallUUID:v10];
    conversationUUIDsAwaitingActiveAudioSession = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsAwaitingActiveAudioSession];
    v31 = dCopy;
    [conversationUUIDsAwaitingActiveAudioSession removeObject:dCopy];

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self updateNetworkCriticalStateIfNecessary];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    provider2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    pendingTransactions = [provider2 pendingTransactions];

    obj = pendingTransactions;
    v34 = [pendingTransactions countByEnumeratingWithState:&v39 objects:v44 count:16];
    if (v34)
    {
      v33 = *v40;
      do
      {
        for (i = 0; i != v34; i = i + 1)
        {
          if (*v40 != v33)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v39 + 1) + 8 * i);
          v35 = 0u;
          v36 = 0u;
          v37 = 0u;
          v38 = 0u;
          actions = [v21 actions];
          v23 = [actions countByEnumeratingWithState:&v35 objects:v43 count:16];
          if (v23)
          {
            v24 = v23;
            v25 = *v36;
            do
            {
              for (j = 0; j != v24; j = j + 1)
              {
                if (*v36 != v25)
                {
                  objc_enumerationMutation(actions);
                }

                v27 = *(*(&v35 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  callUUID = [v27 callUUID];
                  v29 = [callUUID isEqual:v10];

                  if (v29)
                  {
                    [v27 fail];
                  }
                }
              }

              v24 = [actions countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v24);
          }
        }

        v34 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v34);
    }

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self endCallWithUUIDAsLocalHangup:v10];
    dCopy = v31;
    contextCopy = v30;
  }
}

- (void)leaveConversationForCallUUID:(id)d endedReason:(int64_t)reason
{
  dCopy = d;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  callUUIDsByConversationUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  v8 = [callUUIDsByConversationUUID copy];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v9 = v8;
  v10 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v30;
    do
    {
      v13 = 0;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v29 + 1) + 8 * v13);
        v15 = [v9 objectForKeyedSubscript:v14];
        v16 = [v15 isEqual:dCopy];

        if (v16)
        {
          v17 = sub_100004778();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v34 = v14;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Found an extra conversation that needs to be cleaned up: %@", buf, 0xCu);
          }

          conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
          conversationsByUUID = [conversationManager conversationsByUUID];
          v20 = [conversationsByUUID objectForKeyedSubscript:v14];

          if (v20 && ([v20 provider], v21 = objc_claimAutoreleasedReturnValue(), v22 = -[CSDAbstractFaceTimeConversationProviderDelegate shouldHandleProvider:](self, "shouldHandleProvider:", v21), v21, v22))
          {
            if ([v20 avMode])
            {
              [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversation:v20 withCallUUID:dCopy reason:reason];
LABEL_17:

              goto LABEL_18;
            }

            v23 = sub_100004778();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v34 = v20;
              v24 = v23;
              v25 = "Not leaving avless conversation on call ending %@";
              v26 = 12;
LABEL_15:
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, v25, buf, v26);
            }
          }

          else
          {
            v23 = sub_100004778();
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412546;
              v34 = v14;
              v35 = 2112;
              v36 = dCopy;
              v24 = v23;
              v25 = "[WARN] Asked to clean up conversation from our list but could not find it in conversation manager list: %@ callUUID: %@";
              v26 = 22;
              goto LABEL_15;
            }
          }

          goto LABEL_17;
        }

LABEL_18:
        v13 = v13 + 1;
      }

      while (v11 != v13);
      v27 = [v9 countByEnumeratingWithState:&v29 objects:v37 count:16];
      v11 = v27;
    }

    while (v27);
  }
}

- (void)leaveConversation:(id)conversation withCallUUID:(id)d reason:(int64_t)reason
{
  conversationCopy = conversation;
  dCopy = d;
  provider = [conversationCopy provider];
  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self shouldHandleProvider:provider];

  if (v11)
  {
    featureFlags = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    if ([featureFlags avLessSharePlayEnabled] && !objc_msgSend(conversationCopy, "avMode"))
    {
      callUUIDsUpgradedForAVMode = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsUpgradedForAVMode];
      v20 = [callUUIDsUpgradedForAVMode containsObject:dCopy];

      if (v20)
      {
        v13 = sub_100004778();
        if (!os_log_type_enabled(&v13->super, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_7;
        }

        uUID = [conversationCopy UUID];
        v21 = 138412546;
        selfCopy = dCopy;
        v23 = 2112;
        v24 = uUID;
        _os_log_impl(&_mh_execute_header, &v13->super, OS_LOG_TYPE_DEFAULT, "Not leaving conversation but stopped tracking callUUID: %@ for conversationUUID: %@", &v21, 0x16u);
LABEL_6:

LABEL_7:
        callUUIDsUpgradedForAVMode2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsUpgradedForAVMode];
        [callUUIDsUpgradedForAVMode2 removeObject:dCopy];

        uUID2 = [conversationCopy UUID];
        [(CSDAbstractFaceTimeConversationProviderDelegate *)self setCallUUID:0 forConversationUUID:uUID2];

        [(CSDAbstractFaceTimeConversationProviderDelegate *)self setConversationUUID:0 forCallUUID:dCopy];
        [(CSDAbstractFaceTimeConversationProviderDelegate *)self updateNetworkCriticalStateIfNecessary];
        goto LABEL_11;
      }
    }

    else
    {
    }

    v13 = [[CSDConversationLeaveContext alloc] initWithLeaveReason:reason == 102];
    uUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    uUID3 = [conversationCopy UUID];
    [uUID leaveConversationWithUUID:uUID3 withContext:v13];

    goto LABEL_6;
  }

  v18 = sub_100004778();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    selfCopy = self;
    v23 = 2112;
    v24 = conversationCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%@ should not handle conversation: %@", &v21, 0x16u);
  }

LABEL_11:
}

- (FTDeviceSupport)deviceSupport
{
  deviceSupport = self->_deviceSupport;
  if (deviceSupport)
  {
    v3 = deviceSupport;
  }

  else
  {
    v3 = +[FTDeviceSupport sharedInstance];
  }

  return v3;
}

- (void)proceedToJoinForConversation:(id)conversation action:(id)action
{
  conversationCopy = conversation;
  actionCopy = action;
  provider = [conversationCopy provider];
  v9 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self shouldHandleProvider:provider];

  if (v9)
  {
    uUID = [conversationCopy UUID];
    localMember = [conversationCopy localMember];
    handle = [localMember handle];

    if (!handle)
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy fail];
      goto LABEL_64;
    }

    featureFlags = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    if ([featureFlags avLessSharePlayEnabled])
    {
      avMode = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy avMode];

      if (!avMode)
      {
        goto LABEL_16;
      }
    }

    else
    {
      isEligibleForCall = [conversationCopy isEligibleForCall];

      if (!isEligibleForCall)
      {
        goto LABEL_16;
      }
    }

    callUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy callUUID];
    v17 = [[CXCallUpdate alloc] initWithTUConversation:conversationCopy];
    remoteParticipantHandles = [v17 remoteParticipantHandles];
    anyObject = [remoteParticipantHandles anyObject];
    [v17 setRemoteMember:anyObject];

    localSenderIdentityUUID = [v17 localSenderIdentityUUID];

    if (!localSenderIdentityUUID)
    {
      if ([conversationCopy isLocallyCreated])
      {
        initiator = [conversationCopy initiator];
      }

      else
      {
        localMember2 = [conversationCopy localMember];
        initiator = [localMember2 handle];
      }

      conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      [conversationManager senderIdentityUUIDForCallerIDHandle:initiator];
      v25 = v24 = self;
      [v17 setLocalSenderIdentityUUID:v25];

      self = v24;
    }

    provider2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    callUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy callUUID];
    [provider2 reportCallWithUUID:callUUID2 updated:v17];

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self associateCallUUID:callUUID withConversationUUID:uUID waitingToJoin:1];
LABEL_16:
    v28 = objc_alloc_init(CSDConversationJoinContext);
    [(CSDConversationJoinContext *)v28 setShouldSuppressInCallUI:[(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy shouldSuppressInCallUI]];
    [(CSDConversationJoinContext *)v28 setWantsStagingArea:[(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy wantsStagingArea]];
    if ([(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy isVideoEnabled])
    {
      featureFlags2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
      if ([featureFlags2 groupFacetimeAsAServiceEnabled])
      {
        provider3 = [conversationCopy provider];
        -[CSDConversationJoinContext setVideoEnabled:](v28, "setVideoEnabled:", [provider3 supportsVideo]);
      }

      else
      {
        [(CSDConversationJoinContext *)v28 setVideoEnabled:1];
      }
    }

    else
    {
      [(CSDConversationJoinContext *)v28 setVideoEnabled:0];
    }

    [(CSDConversationJoinContext *)v28 setVideo:[(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy isVideo]];
    [(CSDConversationJoinContext *)v28 setUpgrade:[(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy isUpgrade]];
    upgradeSessionUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy upgradeSessionUUID];
    [(CSDConversationJoinContext *)v28 setUpgradeSessionUUID:upgradeSessionUUID];

    provider4 = [conversationCopy provider];
    [(CSDConversationJoinContext *)v28 setProvider:provider4];

    [(CSDConversationJoinContext *)v28 setAvMode:[(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy avMode]];
    [(CSDConversationJoinContext *)v28 setPresentationMode:[(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy presentationMode]];
    joinCallActivity = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy joinCallActivity];
    tuActivity = [joinCallActivity tuActivity];
    [(CSDConversationJoinContext *)v28 setActivity:tuActivity];

    featureFlags3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    LODWORD(tuActivity) = [featureFlags3 nearbyFaceTimeEnabled];

    if (tuActivity)
    {
      tuParticipantCluster = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy tuParticipantCluster];
      [(CSDConversationJoinContext *)v28 setParticipantCluster:tuParticipantCluster];
    }

    featureFlags4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    uplevelFTAEnabled = [featureFlags4 uplevelFTAEnabled];

    if (uplevelFTAEnabled)
    {
      [(CSDConversationJoinContext *)v28 setUpgradeToVideo:[(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy isUpgradeToVideo]];
    }

    featureFlags5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    callScreeningEnabled = [featureFlags5 callScreeningEnabled];

    if (callScreeningEnabled)
    {
      [(CSDConversationJoinContext *)v28 setScreening:[(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy isScreening]];
    }

    featureFlags6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    if ([featureFlags6 conversationHandoffEnabled])
    {
      associationIdentifier = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy associationIdentifier];

      if (!associationIdentifier)
      {
        goto LABEL_32;
      }

      v43 = objc_alloc_init(TUConversationParticipantAssociation);
      [(CSDConversationJoinContext *)v28 setParticipantAssociation:v43];

      associationIdentifier2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy associationIdentifier];
      unsignedLongLongValue = [associationIdentifier2 unsignedLongLongValue];
      participantAssociation = [(CSDConversationJoinContext *)v28 participantAssociation];
      [participantAssociation setIdentifier:unsignedLongLongValue];

      featureFlags6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy associationAVCIdentifier];
      participantAssociation2 = [(CSDConversationJoinContext *)v28 participantAssociation];
      [participantAssociation2 setAvcIdentifier:featureFlags6];
    }

LABEL_32:
    featureFlags7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    usesModernScreenSharingFromMessages = [featureFlags7 usesModernScreenSharingFromMessages];

    if (usesModernScreenSharingFromMessages)
    {
      tuScreenSharingRequest = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy tuScreenSharingRequest];
      [(CSDConversationJoinContext *)v28 setScreenSharingRequest:tuScreenSharingRequest];
    }

    notificationStylesByHandleType = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy notificationStylesByHandleType];
    v52 = [notificationStylesByHandleType count];

    if (v52)
    {
      v92 = v28;
      selfCopy = self;
      v94 = uUID;
      v53 = +[NSMutableSet set];
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v54 = actionCopy;
      obj = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy notificationStylesByHandleType];
      v55 = [obj countByEnumeratingWithState:&v96 objects:v100 count:16];
      if (v55)
      {
        v56 = v55;
        v57 = *v97;
        do
        {
          for (i = 0; i != v56; i = i + 1)
          {
            if (*v97 != v57)
            {
              objc_enumerationMutation(obj);
            }

            v59 = *(*(&v96 + 1) + 8 * i);
            v60 = [TUConversationInvitationPreference alloc];
            integerValue = [v59 integerValue];
            notificationStylesByHandleType2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v54 notificationStylesByHandleType];
            v63 = [notificationStylesByHandleType2 objectForKeyedSubscript:v59];
            v64 = [v60 initWithHandleType:integerValue notificationStyles:{objc_msgSend(v63, "integerValue")}];

            [v53 addObject:v64];
          }

          v56 = [obj countByEnumeratingWithState:&v96 objects:v100 count:16];
        }

        while (v56);
      }

      v65 = v53;
      v66 = [v53 copy];
      v28 = v92;
      [(CSDConversationJoinContext *)v92 setInvitationPreferences:v66];

      v67 = sub_100004778();
      if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
      {
        invitationPreferences = [(CSDConversationJoinContext *)v92 invitationPreferences];
        *buf = 138412290;
        selfCopy2 = invitationPreferences;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Invitation preferences were set on the action, using those for the join context: %@", buf, 0xCu);
      }

      uUID = v94;
      actionCopy = v54;
      self = selfCopy;
    }

    else
    {
      invitationPreferences2 = [conversationCopy invitationPreferences];

      if (!invitationPreferences2)
      {
        goto LABEL_46;
      }

      invitationPreferences3 = [conversationCopy invitationPreferences];
      v90 = [invitationPreferences3 copy];
      [(CSDConversationJoinContext *)v28 setInvitationPreferences:v90];

      v65 = sub_100004778();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        invitationPreferences4 = [(CSDConversationJoinContext *)v28 invitationPreferences];
        *buf = 138412290;
        selfCopy2 = invitationPreferences4;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Invitation preferences weren't set on the action but existed on the conversation, using those for the join context: %@", buf, 0xCu);
      }
    }

LABEL_46:
    collaborationIdentifier = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy collaborationIdentifier];

    if (collaborationIdentifier)
    {
      collaborationIdentifier2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy collaborationIdentifier];
      [(CSDConversationJoinContext *)v28 setCollaborationIdentifier:collaborationIdentifier2];
    }

    callUUIDsUpgradedForAVMode = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsUpgradedForAVMode];
    callUUID3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy callUUID];
    v73 = [callUUIDsUpgradedForAVMode containsObject:callUUID3];

    if (([(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy isUpgrade]& 1) == 0)
    {
      v73 |= [conversationCopy isOneToOneModeEnabled] ^ 1;
    }

    if (+[AVAudioClient hasActiveAudioSession]|| (v73 & 1) == 0)
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self setAudioSessionActive:1];
    }

    conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    messagesGroupName = [(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy messagesGroupName];
    [conversationManager2 setMessagesGroupName:messagesGroupName onConversationWithUUID:uUID];

    conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    uUID2 = [conversationCopy UUID];
    [conversationManager3 joinExistingConversationWithUUID:uUID2 context:v28];

    conversationManager4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [conversationManager4 setRelaying:-[CSDAbstractFaceTimeConversationProviderDelegate isRelay](actionCopy forConversationWithUUID:{"isRelay"), uUID}];

    featureFlags8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    LODWORD(uUID2) = TUCallScreeningEnabled();

    if (uUID2)
    {
      conversationManager5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      [conversationManager5 setScreening:-[CSDAbstractFaceTimeConversationProviderDelegate isScreening](actionCopy forConversationWithUUID:{"isScreening"), uUID}];
    }

    if ([(CSDAbstractFaceTimeConversationProviderDelegate *)actionCopy isUplinkMuted])
    {
      v81 = sub_100004778();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        selfCopy2 = actionCopy;
        v103 = 2112;
        v104 = conversationCopy;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Setting uplinkMuted for action: %@ conversation: %@", buf, 0x16u);
      }

      conversationManager6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      uUID3 = [conversationCopy UUID];
      [conversationManager6 setUplinkMuted:1 forConversationWithUUID:uUID3];
    }

    conversationManager7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v85 = [conversationManager7 isConversationWithUUIDRedirectingAudio:uUID];

    if ((v85 & 1) == 0)
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self enqueueConversationWaitingForAudioWithConversationUUID:uUID];
    }

    conversationManager8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v87 = [conversationManager8 isConversationWithUUIDRelaying:uUID];

    if (v87)
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self enqueueOrStartAudioForConversationUUID:uUID];
    }

    goto LABEL_64;
  }

  uUID = sub_100004778();
  if (os_log_type_enabled(uUID, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    selfCopy2 = self;
    v103 = 2112;
    v104 = conversationCopy;
    _os_log_impl(&_mh_execute_header, uUID, OS_LOG_TYPE_DEFAULT, "%@ should not handle conversation: %@", buf, 0x16u);
  }

LABEL_64:
}

- (void)conversationManager:(id)manager conversation:(id)conversation removedActiveParticipant:(id)participant withReason:(unint64_t)reason
{
  managerCopy = manager;
  conversationCopy = conversation;
  participantCopy = participant;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  objc_initWeak(&location, self);
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_100269B9C;
  v26 = &unk_10061FEA8;
  objc_copyWeak(&v31, &location);
  v14 = conversationCopy;
  v27 = v14;
  v15 = participantCopy;
  v28 = v15;
  v16 = managerCopy;
  v29 = v16;
  selfCopy = self;
  v17 = objc_retainBlock(&v23);
  if (reason == 1)
  {
    v18 = sub_100004778();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v34 = v15;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Delaying check on whether to end call since participant %@ left conversation due to handoff", buf, 0xCu);
    }

    v19 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self serverBag:v23];
    v20 = dispatch_time(0, 1000000000 * [v19 handoffUPlusOneLeaveTimeout]);
    queue2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
    dispatch_after(v20, queue2, v17);
  }

  else
  {
    v22 = sub_100004778();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Not delaying check on whether to end call on participant leave", buf, 2u);
    }

    (v17[2])(v17);
  }

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);
}

- (BOOL)shouldAutomaticallyLeaveConversation:(id)conversation
{
  conversationCopy = conversation;
  if ([(CSDAbstractFaceTimeConversationProviderDelegate *)self isConversationJoiningOrJoined:conversationCopy])
  {
    remoteMembers = [conversationCopy remoteMembers];
    activeRemoteParticipants = [conversationCopy activeRemoteParticipants];
    if ([remoteMembers count] == 1 && !objc_msgSend(activeRemoteParticipants, "count"))
    {
      goto LABEL_9;
    }

    featureFlags = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    if ([featureFlags oneToOneFaceTimeMyselfEnabled])
    {
      serverBag = [(CSDAbstractFaceTimeConversationProviderDelegate *)self serverBag];
      isFaceTimeMyselfEnabled = [serverBag isFaceTimeMyselfEnabled];

      if (isFaceTimeMyselfEnabled && ![remoteMembers count] && !objc_msgSend(activeRemoteParticipants, "count") && (objc_msgSend(conversationCopy, "isOneToOneModeEnabled") & 1) != 0)
      {
LABEL_9:
        v10 = 1;
LABEL_20:

        goto LABEL_21;
      }
    }

    else
    {
    }

    featureFlags2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    lagunaEnabled = [featureFlags2 lagunaEnabled];

    if (!lagunaEnabled)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v13 = [remoteMembers bs_filter:&stru_10061FEE8];
    if ([v13 count] != 1)
    {
      goto LABEL_18;
    }

    v14 = [activeRemoteParticipants count];
    if (!v14)
    {
      v10 = 1;
      goto LABEL_19;
    }

    if (v14 == 1)
    {
      anyObject = [activeRemoteParticipants anyObject];
      v10 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self isLocalMemberOf:conversationCopy associatedTo:anyObject];
    }

    else
    {
LABEL_18:
      v10 = 0;
    }

LABEL_19:

    goto LABEL_20;
  }

  v10 = 0;
LABEL_21:

  return v10;
}

- (BOOL)isLocalMemberOf:(id)of associatedTo:(id)to
{
  ofCopy = of;
  handle = [to handle];
  if (handle)
  {
    localMember = [ofCopy localMember];
    association = [localMember association];

    if (association)
    {
      handle2 = [association handle];
      v10 = [handle2 isEquivalentToHandle:handle];
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (void)providerDidBegin:(id)begin
{
  beginCopy = begin;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = beginCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "providerDidBegin: %@", &v9, 0xCu);
  }

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self setProvider:beginCopy];
  providerDidBegin = [(CSDAbstractFaceTimeConversationProviderDelegate *)self providerDidBegin];

  if (providerDidBegin)
  {
    providerDidBegin2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self providerDidBegin];
    providerDidBegin2[2]();
  }
}

- (void)providerDidReset:(id)reset
{
  resetCopy = reset;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = resetCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "providerDidReset: %@", &v8, 0xCu);
  }

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  [conversationManager leaveAllConversations];
}

- (void)provider:(id)provider didDeactivateAudioSession:(id)session
{
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue:provider];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "providerDidDeactivateAudioSession", v7, 2u);
  }

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self setAudioSessionActive:0];
}

- (void)provider:(id)provider timedOutPerformingAction:(id)action
{
  actionCopy = action;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = actionCopy;
    conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
    callUUID = [v5 callUUID];
    v8 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

    if (v8)
    {
      v9 = objc_alloc_init(CXCallFailureContext);
      [v9 setFailureReason:0];
      [v9 setProviderEndedReason:503];
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self cleanUpConversationIfNecessaryForConversationUUID:v8 failureContext:v9];
    }
  }
}

- (void)provider:(id)provider performEndCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = actionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Performing end call action %@", &v20, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v10 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v13 = [conversationsByUUID objectForKeyedSubscript:v10];

  if (v13)
  {
    goto LABEL_6;
  }

  v14 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self _findPendingConversationWithCallUUID:callUUID];
  if (v14)
  {
    v13 = v14;
LABEL_6:
    if ([v13 avMode])
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversation:v13 withCallUUID:callUUID reason:-1];
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversationForCallUUID:callUUID endedReason:-1];
    }

    else
    {
      v15 = sub_100004778();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v20) = 0;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Received an end call action for avLess conversation, not leaving the conversation but call will end", &v20, 2u);
      }
    }

    [actionCopy fulfill];

    goto LABEL_12;
  }

  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    conversationUUIDsByCallUUID2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
    conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    conversationsByUUID2 = [conversationManager2 conversationsByUUID];
    v20 = 138412802;
    v21 = callUUID;
    v22 = 2112;
    v23 = conversationUUIDsByCallUUID2;
    v24 = 2112;
    v25 = conversationsByUUID2;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for end call action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v20, 0x20u);
  }

  [actionCopy fail];
LABEL_12:
}

- (void)provider:(id)provider performJoinCallAction:(id)action
{
  actionCopy = action;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = actionCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "action: %@", &v6, 0xCu);
  }

  [actionCopy fail];
}

- (void)provider:(id)provider performSetMutedCallAction:(id)action
{
  actionCopy = action;
  queue = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = actionCopy;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "action: %@", &v21, 0xCu);
  }

  conversationUUIDsByCallUUID = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  callUUID = [actionCopy callUUID];
  v10 = [conversationUUIDsByCallUUID objectForKeyedSubscript:callUUID];

  conversationManager = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  conversationsByUUID = [conversationManager conversationsByUUID];
  v13 = [conversationsByUUID objectForKeyedSubscript:v10];

  if (v13)
  {
    conversationManager2 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [conversationManager2 setUplinkMuted:objc_msgSend(actionCopy forConversationWithUUID:{"isMuted"), v10}];
  }

  else
  {
    callUUID2 = [actionCopy callUUID];
    v16 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self isManagingPendingConversationForCallWithUUID:callUUID2];

    if (!v16)
    {
      [actionCopy fail];
      goto LABEL_8;
    }

    conversationManager3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    isMuted = [actionCopy isMuted];
    callUUID3 = [actionCopy callUUID];
    v20 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self pendingConversationUUIDForCallWithUUID:callUUID3];
    [conversationManager3 setUplinkMuted:isMuted forPendingConversationWithUUID:v20];
  }

  [actionCopy fulfill];
LABEL_8:
}

- (CSDFaceTimeProviderDelegateManagerDelegate)faceTimeDemuxerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_faceTimeDemuxerDelegate);

  return WeakRetained;
}

@end