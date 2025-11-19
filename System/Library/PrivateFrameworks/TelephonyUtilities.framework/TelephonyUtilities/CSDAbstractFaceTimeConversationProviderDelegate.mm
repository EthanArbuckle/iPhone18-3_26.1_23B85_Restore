@interface CSDAbstractFaceTimeConversationProviderDelegate
- (BOOL)_isWaitingToJoinForConversationUUID:(id)a3;
- (BOOL)hasCallStartedConnectingWithUUID:(id)a3;
- (BOOL)isLocalMemberOf:(id)a3 associatedTo:(id)a4;
- (BOOL)isManagingCallWithUUID:(id)a3;
- (BOOL)isManagingPendingConversationForCallWithUUID:(id)a3;
- (BOOL)isWaitingToJoinForConversationUUID:(id)a3;
- (BOOL)shouldAutomaticallyLeaveConversation:(id)a3;
- (CSDAbstractFaceTimeConversationProviderDelegate)initWithConversationManager:(id)a3 queue:(id)a4 invitationResolver:(id)a5;
- (CSDAbstractFaceTimeConversationProviderDelegate)initWithQueue:(id)a3 conversationManager:(id)a4 networkSupport:(id)a5 serverBag:(id)a6 featureFlags:(id)a7 invitationResolver:(id)a8;
- (CSDFaceTimeProviderDelegateManagerDelegate)faceTimeDemuxerDelegate;
- (FTDeviceSupport)deviceSupport;
- (NSMutableDictionary)callUUIDsByConversationUUID;
- (NSMutableDictionary)conversationUUIDsByCallUUID;
- (NSMutableSet)conversationUUIDsWaitingToJoin;
- (id)_findPendingConversationWithCallUUID:(id)a3;
- (id)callUUIDForConversationUUID:(id)a3;
- (id)conversationUUIDForCallUUID:(id)a3;
- (id)pendingConversationUUIDForCallWithUUID:(id)a3;
- (void)cleanUpConversationIfNecessaryForConversationUUID:(id)a3 failureContext:(id)a4;
- (void)conversationManager:(id)a3 avModeChanged:(unint64_t)a4 toAVMode:(unint64_t)a5 forParticipantWithHandle:(id)a6 forConversation:(id)a7;
- (void)conversationManager:(id)a3 conversation:(id)a4 removedActiveParticipant:(id)a5 withReason:(unint64_t)a6;
- (void)conversationManager:(id)a3 reportedNewIncomingConversation:(id)a4 fromHandle:(id)a5;
- (void)dealloc;
- (void)endCallWithUUIDAsAnsweredElsewhere:(id)a3;
- (void)endCallWithUUIDAsDeclinedElsewhere:(id)a3;
- (void)endCallWithUUIDAsLocalHangup:(id)a3;
- (void)enqueueConversationWaitingForAudioWithConversationUUID:(id)a3;
- (void)enqueueOrStartAudioForConversationUUID:(id)a3;
- (void)fullfillPendingJoinActionsForCallUUIDIfNecessary:(id)a3;
- (void)handleAudioInterruptionPropertiesChanged:(id)a3;
- (void)leaveConversation:(id)a3 withCallUUID:(id)a4 reason:(int64_t)a5;
- (void)leaveConversationForCallUUID:(id)a3 endedReason:(int64_t)a4;
- (void)proceedToJoinForConversation:(id)a3 action:(id)a4;
- (void)provider:(id)a3 didDeactivateAudioSession:(id)a4;
- (void)provider:(id)a3 performEndCallAction:(id)a4;
- (void)provider:(id)a3 performJoinCallAction:(id)a4;
- (void)provider:(id)a3 performSetMutedCallAction:(id)a4;
- (void)provider:(id)a3 timedOutPerformingAction:(id)a4;
- (void)providerDidBegin:(id)a3;
- (void)providerDidReset:(id)a3;
- (void)removeActiveAudioSessionObjectForConversationWithUUID:(id)a3;
- (void)setCallUUID:(id)a3 forConversationUUID:(id)a4;
- (void)setConversationUUID:(id)a3 forCallUUID:(id)a4;
- (void)setWaitingToJoin:(BOOL)a3 forConversationUUID:(id)a4;
- (void)startAudioForConversationsIfNecessary;
- (void)updateNetworkCriticalStateIfNecessary;
@end

@implementation CSDAbstractFaceTimeConversationProviderDelegate

- (CSDAbstractFaceTimeConversationProviderDelegate)initWithConversationManager:(id)a3 queue:(id)a4 invitationResolver:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = objc_alloc_init(TUFeatureFlags);
  v12 = objc_alloc_init(CSDSharedConversationServerBag);
  v13 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self initWithQueue:v9 conversationManager:v10 networkSupport:0 serverBag:v12 featureFlags:v11 invitationResolver:v8];

  return v13;
}

- (CSDAbstractFaceTimeConversationProviderDelegate)initWithQueue:(id)a3 conversationManager:(id)a4 networkSupport:(id)a5 serverBag:(id)a6 featureFlags:(id)a7 invitationResolver:(id)a8
{
  v36 = a3;
  v35 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v37.receiver = self;
  v37.super_class = CSDAbstractFaceTimeConversationProviderDelegate;
  v19 = [(CSDAbstractFaceTimeConversationProviderDelegate *)&v37 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_queue, a3);
    objc_storeStrong(&v20->_conversationManager, a4);
    [(CSDConversationManager *)v20->_conversationManager addDelegate:v20 queue:v20->_queue, v35, v36];
    if (v15)
    {
      v21 = v15;
    }

    else
    {
      v21 = +[FTNetworkSupport sharedInstance];
    }

    networkSupport = v20->_networkSupport;
    v20->_networkSupport = v21;

    objc_storeStrong(&v20->_serverBag, a6);
    objc_storeStrong(&v20->_invitationResolver, a8);
    objc_storeStrong(&v20->_featureFlags, a7);
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
  v3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v3);

  conversationUUIDsWaitingToJoin = self->_conversationUUIDsWaitingToJoin;

  return conversationUUIDsWaitingToJoin;
}

- (BOOL)isWaitingToJoinForConversationUUID:(id)a3
{
  v4 = a3;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100265758;
  block[3] = &unk_10061C678;
  v9 = v4;
  v10 = &v11;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  LOBYTE(v4) = *(v12 + 24);
  _Block_object_dispose(&v11, 8);
  return v4;
}

- (BOOL)_isWaitingToJoinForConversationUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsWaitingToJoin];
  LOBYTE(v5) = [v6 containsObject:v4];

  return v5;
}

- (void)setWaitingToJoin:(BOOL)a3 forConversationUUID:(id)a4
{
  v4 = a3;
  v9 = a4;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  if (v9)
  {
    v7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsWaitingToJoin];
    v8 = v7;
    if (v4)
    {
      [v7 addObject:v9];
    }

    else
    {
      [v7 removeObject:v9];
    }
  }
}

- (NSMutableDictionary)callUUIDsByConversationUUID
{
  v3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v3);

  callUUIDsByConversationUUID = self->_callUUIDsByConversationUUID;

  return callUUIDsByConversationUUID;
}

- (id)callUUIDForConversationUUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100028760;
  v16 = sub_10003292C;
  v17 = 0;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100265A28;
  block[3] = &unk_10061C678;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setCallUUID:(id)a3 forConversationUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  [v9 setObject:v7 forKeyedSubscript:v6];
}

- (void)removeActiveAudioSessionObjectForConversationWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsAwaitingActiveAudioSession];
  [v6 removeObject:v4];
}

- (void)updateNetworkCriticalStateIfNecessary
{
  v3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v3);

  v4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  v5 = [v4 allKeys];
  v6 = [v5 count];

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

  v9 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self networkSupport];
  [v9 setEnableCriticalReliability:v6 != 0];
}

- (NSMutableDictionary)conversationUUIDsByCallUUID
{
  v3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v3);

  conversationUUIDsByCallUUID = self->_conversationUUIDsByCallUUID;

  return conversationUUIDsByCallUUID;
}

- (id)conversationUUIDForCallUUID:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x3032000000;
  v15 = sub_100028760;
  v16 = sub_10003292C;
  v17 = 0;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100265E5C;
  block[3] = &unk_10061C678;
  v10 = v4;
  v11 = &v12;
  block[4] = self;
  v6 = v4;
  dispatch_sync(v5, block);

  v7 = v13[5];
  _Block_object_dispose(&v12, 8);

  return v7;
}

- (void)setConversationUUID:(id)a3 forCallUUID:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  [v9 setObject:v7 forKeyedSubscript:v6];
}

- (void)handleAudioInterruptionPropertiesChanged:(id)a3
{
  v4 = [a3 userInfo];
  v5 = [v4 objectForKeyedSubscript:@"CSDCallAudioInterruptionProviderUserInfoKey"];
  v6 = [v5 isEqualToString:@"CSDCallAudioInterruptionProviderUserInfoAVAudioClient"];

  if (v6)
  {
    v7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100266038;
    block[3] = &unk_100619D38;
    block[4] = self;
    dispatch_async(v7, block);
  }
}

- (void)enqueueConversationWaitingForAudioWithConversationUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsAwaitingActiveAudioSession];
  [v5 addObject:v4];

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self startAudioForConversationsIfNecessary];
}

- (void)enqueueOrStartAudioForConversationUUID:(id)a3
{
  v7 = a3;
  v4 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v5 = [v4 isConversationWithUUIDRedirectingAudio:v7];

  if (v5)
  {
    v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [v6 startAudioForConversationWithUUID:v7];
  }

  else
  {
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self enqueueConversationWaitingForAudioWithConversationUUID:v7];
  }
}

- (void)startAudioForConversationsIfNecessary
{
  if ([(CSDAbstractFaceTimeConversationProviderDelegate *)self usesAudioSession]&& ![(CSDAbstractFaceTimeConversationProviderDelegate *)self isAudioSessionActive])
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
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
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Not starting audio for conversation: usesAudioSession: %@, isAudioSessionActive: %@", buf, 0x16u);
    }
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v3 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsAwaitingActiveAudioSession];
    v4 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
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
            objc_enumerationMutation(v3);
          }

          v8 = *(*(&v14 + 1) + 8 * i);
          v9 = sub_100004778();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v19 = v8;
            _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Starting audio for conversation with conversationUUID %@", buf, 0xCu);
          }

          v10 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
          [v10 startAudioForConversationWithUUID:v8];
        }

        v5 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
      }

      while (v5);
    }

    v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsAwaitingActiveAudioSession];
    [v11 removeAllObjects];
  }
}

- (id)_findPendingConversationWithCallUUID:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v7 = [v6 pseudonymsByCallUUID];
    v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v9 = [v8 conversationsByUUID];
    *buf = 138412546;
    v33 = v7;
    v34 = 2112;
    v35 = v9;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "pseudonymsByCallUUID: %@, conversationsByUUID: %@", buf, 0x16u);
  }

  v10 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v11 = [v10 pseudonymsByCallUUID];
  v12 = [v11 objectForKeyedSubscript:v4];

  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  v13 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v14 = [v13 conversationsByUUID];
  v15 = [v14 allValues];

  v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v16)
  {
    v26 = v4;
    v17 = *v28;
    while (2)
    {
      for (i = 0; i != v16; i = i + 1)
      {
        if (*v28 != v17)
        {
          objc_enumerationMutation(v15);
        }

        v19 = *(*(&v27 + 1) + 8 * i);
        if ([v19 isPendingConversation])
        {
          v20 = [v19 link];
          if (v20)
          {
            v21 = v20;
            v22 = [v19 link];
            v23 = [v22 pseudonym];
            v24 = [v23 isEqualToString:v12];

            if (v24)
            {
              v16 = v19;
              goto LABEL_15;
            }
          }
        }
      }

      v16 = [v15 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v16)
      {
        continue;
      }

      break;
    }

LABEL_15:
    v4 = v26;
  }

  return v16;
}

- (void)conversationManager:(id)a3 reportedNewIncomingConversation:(id)a4 fromHandle:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v9);

  v10 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v7 provider];
  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self shouldHandleProvider:v10];

  v12 = sub_100004778();
  v13 = os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT);
  if (v11)
  {
    if (v13)
    {
      v18 = 138412546;
      v19 = v7;
      v20 = 2112;
      v21 = v8;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Conversation manager reported a new incoming conversation %@ from handle %@", &v18, 0x16u);
    }

    v14 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
    v15 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v7 UUID];
    v12 = [v14 objectForKeyedSubscript:v15];

    if (v12)
    {
      v16 = sub_100004778();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v7 UUID];
        v18 = 138412546;
        v19 = v17;
        v20 = 2112;
        v21 = v12;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Ignoring new conversation %@ since we are already tracking this with call %@", &v18, 0x16u);
      }
    }

    else
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self reportNewIncomingCallForConversation:v7 fromHandle:v8 isReRing:0 invitationContext:0];
    }
  }

  else if (v13)
  {
    v18 = 138412546;
    v19 = self;
    v20 = 2112;
    v21 = v7;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%@ should not handle conversation: %@", &v18, 0x16u);
  }
}

- (void)conversationManager:(id)a3 avModeChanged:(unint64_t)a4 toAVMode:(unint64_t)a5 forParticipantWithHandle:(id)a6 forConversation:(id)a7
{
  v9 = a6;
  v10 = a7;
  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  v12 = [v10 UUID];
  v13 = [v11 objectForKeyedSubscript:v12];

  if (v13)
  {
    v14 = sub_100004778();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v10 UUID];
      v18 = 138412546;
      v19 = v13;
      v20 = 2112;
      v21 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Skipping to report a new call since we already have a call with UUID: %@ for conversationUUID: %@", &v18, 0x16u);
    }
  }

  else
  {
    v16 = +[NSUUID UUID];
    v17 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsUpgradedForAVMode];
    [v17 addObject:v16];

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self reportNewIncomingCallForConversation:v10 fromHandle:v9 callUUID:v16 isReRing:0 invitationContext:0];
  }
}

- (void)fullfillPendingJoinActionsForCallUUIDIfNecessary:(id)a3
{
  v4 = a3;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
  v7 = [v6 pendingCallActionsOfClass:objc_opt_class() withCallUUID:v4];

  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
  v9 = [v8 providerDelegate:self isExclusivelyManagingCallWithUUID:v4];

  if (v9)
  {
    v10 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    v11 = [v10 pendingCallActionsOfClass:objc_opt_class() withCallUUID:v4];

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

  v19 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v20 = [v19 objectForKeyedSubscript:v4];

  if (v20)
  {
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self setWaitingToJoin:0 forConversationUUID:v20];
  }
}

- (BOOL)isManagingCallWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v7 = [v6 objectForKeyedSubscript:v4];

  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v9 = [v8 conversationsByUUID];
  v10 = [v9 objectForKeyedSubscript:v7];

  if (v10)
  {
    v11 = 1;
  }

  else
  {
LABEL_4:
    v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self isManagingPendingConversationForCallWithUUID:v4];
  }

  return v11;
}

- (BOOL)isManagingPendingConversationForCallWithUUID:(id)a3
{
  v4 = a3;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v6 = [v5 conversationsByUUID];
  v7 = [v6 allValues];

  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
        v14 = [v12 UUID];
        v15 = [v13 objectForKeyedSubscript:v14];
        v16 = [v15 isEqual:v4];

        if (v16)
        {
          v17 = 1;
          goto LABEL_11;
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
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

- (id)pendingConversationUUIDForCallWithUUID:(id)a3
{
  v4 = a3;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v6 = [v5 conversationsByUUID];
  v7 = [v6 allValues];

  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v24 count:16];
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
        v13 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
        v14 = [v12 UUID];
        v15 = [v13 objectForKeyedSubscript:v14];
        v16 = [v15 isEqual:v4];

        if (v16)
        {
          v17 = [v12 UUID];
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

  v17 = 0;
LABEL_11:

  return v17;
}

- (BOOL)hasCallStartedConnectingWithUUID:(id)a3
{
  v4 = a3;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v6 = [v5 objectForKeyedSubscript:v4];

  if (v6)
  {
    v7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v8 = [v7 conversationsByUUID];
    v9 = [v8 objectForKeyedSubscript:v6];

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

- (void)endCallWithUUIDAsAnsweredElsewhere:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "endCallWithUUIDAsAnsweredElsewhere: %@", &v6, 0xCu);
  }

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversationForCallUUID:v4 endedReason:4];
}

- (void)endCallWithUUIDAsDeclinedElsewhere:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "endCallWithUUIDAsDeclinedElsewhere: %@", &v6, 0xCu);
  }

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversationForCallUUID:v4 endedReason:5];
}

- (void)endCallWithUUIDAsLocalHangup:(id)a3
{
  v4 = a3;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "endCallWithUUIDAsLocalHangup: %@", &v6, 0xCu);
  }

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversationForCallUUID:v4 endedReason:-1];
}

- (void)cleanUpConversationIfNecessaryForConversationUUID:(id)a3 failureContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  v10 = [v9 objectForKeyedSubscript:v6];

  if (v10)
  {
    v11 = sub_100004778();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_10047F424(v6, v10, v11);
    }

    v12 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    [v12 reportCallWithUUID:v10 failedAtDate:0 withContext:v7];

    v13 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self faceTimeDemuxerDelegate];
    v14 = +[NSDate now];
    v30 = v7;
    [v13 providerDelegate:self callWithUUID:v10 endedAtDate:v14 withReason:1 failureContext:v7];

    v15 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [v15 leaveConversationWithUUID:v6];

    v16 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsUpgradedForAVMode];
    [v16 removeObject:v10];

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self setCallUUID:0 forConversationUUID:v6];
    [(CSDAbstractFaceTimeConversationProviderDelegate *)self setConversationUUID:0 forCallUUID:v10];
    v17 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsAwaitingActiveAudioSession];
    v31 = v6;
    [v17 removeObject:v6];

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self updateNetworkCriticalStateIfNecessary];
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v18 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    v19 = [v18 pendingTransactions];

    obj = v19;
    v34 = [v19 countByEnumeratingWithState:&v39 objects:v44 count:16];
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
          v22 = [v21 actions];
          v23 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
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
                  objc_enumerationMutation(v22);
                }

                v27 = *(*(&v35 + 1) + 8 * j);
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v28 = [v27 callUUID];
                  v29 = [v28 isEqual:v10];

                  if (v29)
                  {
                    [v27 fail];
                  }
                }
              }

              v24 = [v22 countByEnumeratingWithState:&v35 objects:v43 count:16];
            }

            while (v24);
          }
        }

        v34 = [obj countByEnumeratingWithState:&v39 objects:v44 count:16];
      }

      while (v34);
    }

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self endCallWithUUIDAsLocalHangup:v10];
    v6 = v31;
    v7 = v30;
  }
}

- (void)leaveConversationForCallUUID:(id)a3 endedReason:(int64_t)a4
{
  v5 = a3;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsByConversationUUID];
  v8 = [v7 copy];

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
        v16 = [v15 isEqual:v5];

        if (v16)
        {
          v17 = sub_100004778();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v34 = v14;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Found an extra conversation that needs to be cleaned up: %@", buf, 0xCu);
          }

          v18 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
          v19 = [v18 conversationsByUUID];
          v20 = [v19 objectForKeyedSubscript:v14];

          if (v20 && ([v20 provider], v21 = objc_claimAutoreleasedReturnValue(), v22 = -[CSDAbstractFaceTimeConversationProviderDelegate shouldHandleProvider:](self, "shouldHandleProvider:", v21), v21, v22))
          {
            if ([v20 avMode])
            {
              [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversation:v20 withCallUUID:v5 reason:a4];
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
              v36 = v5;
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

- (void)leaveConversation:(id)a3 withCallUUID:(id)a4 reason:(int64_t)a5
{
  v8 = a3;
  v9 = a4;
  v10 = [v8 provider];
  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self shouldHandleProvider:v10];

  if (v11)
  {
    v12 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    if ([v12 avLessSharePlayEnabled] && !objc_msgSend(v8, "avMode"))
    {
      v19 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsUpgradedForAVMode];
      v20 = [v19 containsObject:v9];

      if (v20)
      {
        v13 = sub_100004778();
        if (!os_log_type_enabled(&v13->super, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_7;
        }

        v14 = [v8 UUID];
        v21 = 138412546;
        v22 = v9;
        v23 = 2112;
        v24 = v14;
        _os_log_impl(&_mh_execute_header, &v13->super, OS_LOG_TYPE_DEFAULT, "Not leaving conversation but stopped tracking callUUID: %@ for conversationUUID: %@", &v21, 0x16u);
LABEL_6:

LABEL_7:
        v16 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsUpgradedForAVMode];
        [v16 removeObject:v9];

        v17 = [v8 UUID];
        [(CSDAbstractFaceTimeConversationProviderDelegate *)self setCallUUID:0 forConversationUUID:v17];

        [(CSDAbstractFaceTimeConversationProviderDelegate *)self setConversationUUID:0 forCallUUID:v9];
        [(CSDAbstractFaceTimeConversationProviderDelegate *)self updateNetworkCriticalStateIfNecessary];
        goto LABEL_11;
      }
    }

    else
    {
    }

    v13 = [[CSDConversationLeaveContext alloc] initWithLeaveReason:a5 == 102];
    v14 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v15 = [v8 UUID];
    [v14 leaveConversationWithUUID:v15 withContext:v13];

    goto LABEL_6;
  }

  v18 = sub_100004778();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412546;
    v22 = self;
    v23 = 2112;
    v24 = v8;
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

- (void)proceedToJoinForConversation:(id)a3 action:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 provider];
  v9 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self shouldHandleProvider:v8];

  if (v9)
  {
    v10 = [v6 UUID];
    v11 = [v6 localMember];
    v12 = [v11 handle];

    if (!v12)
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)v7 fail];
      goto LABEL_64;
    }

    v13 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    if ([v13 avLessSharePlayEnabled])
    {
      v14 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v7 avMode];

      if (!v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v15 = [v6 isEligibleForCall];

      if (!v15)
      {
        goto LABEL_16;
      }
    }

    v16 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v7 callUUID];
    v17 = [[CXCallUpdate alloc] initWithTUConversation:v6];
    v18 = [v17 remoteParticipantHandles];
    v19 = [v18 anyObject];
    [v17 setRemoteMember:v19];

    v20 = [v17 localSenderIdentityUUID];

    if (!v20)
    {
      if ([v6 isLocallyCreated])
      {
        v21 = [v6 initiator];
      }

      else
      {
        v22 = [v6 localMember];
        v21 = [v22 handle];
      }

      v23 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      [v23 senderIdentityUUIDForCallerIDHandle:v21];
      v25 = v24 = self;
      [v17 setLocalSenderIdentityUUID:v25];

      self = v24;
    }

    v26 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self provider];
    v27 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v7 callUUID];
    [v26 reportCallWithUUID:v27 updated:v17];

    [(CSDAbstractFaceTimeConversationProviderDelegate *)self associateCallUUID:v16 withConversationUUID:v10 waitingToJoin:1];
LABEL_16:
    v28 = objc_alloc_init(CSDConversationJoinContext);
    [(CSDConversationJoinContext *)v28 setShouldSuppressInCallUI:[(CSDAbstractFaceTimeConversationProviderDelegate *)v7 shouldSuppressInCallUI]];
    [(CSDConversationJoinContext *)v28 setWantsStagingArea:[(CSDAbstractFaceTimeConversationProviderDelegate *)v7 wantsStagingArea]];
    if ([(CSDAbstractFaceTimeConversationProviderDelegate *)v7 isVideoEnabled])
    {
      v29 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
      if ([v29 groupFacetimeAsAServiceEnabled])
      {
        v30 = [v6 provider];
        -[CSDConversationJoinContext setVideoEnabled:](v28, "setVideoEnabled:", [v30 supportsVideo]);
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

    [(CSDConversationJoinContext *)v28 setVideo:[(CSDAbstractFaceTimeConversationProviderDelegate *)v7 isVideo]];
    [(CSDConversationJoinContext *)v28 setUpgrade:[(CSDAbstractFaceTimeConversationProviderDelegate *)v7 isUpgrade]];
    v31 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v7 upgradeSessionUUID];
    [(CSDConversationJoinContext *)v28 setUpgradeSessionUUID:v31];

    v32 = [v6 provider];
    [(CSDConversationJoinContext *)v28 setProvider:v32];

    [(CSDConversationJoinContext *)v28 setAvMode:[(CSDAbstractFaceTimeConversationProviderDelegate *)v7 avMode]];
    [(CSDConversationJoinContext *)v28 setPresentationMode:[(CSDAbstractFaceTimeConversationProviderDelegate *)v7 presentationMode]];
    v33 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v7 joinCallActivity];
    v34 = [v33 tuActivity];
    [(CSDConversationJoinContext *)v28 setActivity:v34];

    v35 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    LODWORD(v34) = [v35 nearbyFaceTimeEnabled];

    if (v34)
    {
      v36 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v7 tuParticipantCluster];
      [(CSDConversationJoinContext *)v28 setParticipantCluster:v36];
    }

    v37 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    v38 = [v37 uplevelFTAEnabled];

    if (v38)
    {
      [(CSDConversationJoinContext *)v28 setUpgradeToVideo:[(CSDAbstractFaceTimeConversationProviderDelegate *)v7 isUpgradeToVideo]];
    }

    v39 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    v40 = [v39 callScreeningEnabled];

    if (v40)
    {
      [(CSDConversationJoinContext *)v28 setScreening:[(CSDAbstractFaceTimeConversationProviderDelegate *)v7 isScreening]];
    }

    v41 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    if ([v41 conversationHandoffEnabled])
    {
      v42 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v7 associationIdentifier];

      if (!v42)
      {
        goto LABEL_32;
      }

      v43 = objc_alloc_init(TUConversationParticipantAssociation);
      [(CSDConversationJoinContext *)v28 setParticipantAssociation:v43];

      v44 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v7 associationIdentifier];
      v45 = [v44 unsignedLongLongValue];
      v46 = [(CSDConversationJoinContext *)v28 participantAssociation];
      [v46 setIdentifier:v45];

      v41 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v7 associationAVCIdentifier];
      v47 = [(CSDConversationJoinContext *)v28 participantAssociation];
      [v47 setAvcIdentifier:v41];
    }

LABEL_32:
    v48 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    v49 = [v48 usesModernScreenSharingFromMessages];

    if (v49)
    {
      v50 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v7 tuScreenSharingRequest];
      [(CSDConversationJoinContext *)v28 setScreenSharingRequest:v50];
    }

    v51 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v7 notificationStylesByHandleType];
    v52 = [v51 count];

    if (v52)
    {
      v92 = v28;
      v93 = self;
      v94 = v10;
      v53 = +[NSMutableSet set];
      v96 = 0u;
      v97 = 0u;
      v98 = 0u;
      v99 = 0u;
      v54 = v7;
      obj = [(CSDAbstractFaceTimeConversationProviderDelegate *)v7 notificationStylesByHandleType];
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
            v61 = [v59 integerValue];
            v62 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v54 notificationStylesByHandleType];
            v63 = [v62 objectForKeyedSubscript:v59];
            v64 = [v60 initWithHandleType:v61 notificationStyles:{objc_msgSend(v63, "integerValue")}];

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
        v68 = [(CSDConversationJoinContext *)v92 invitationPreferences];
        *buf = 138412290;
        v102 = v68;
        _os_log_impl(&_mh_execute_header, v67, OS_LOG_TYPE_DEFAULT, "Invitation preferences were set on the action, using those for the join context: %@", buf, 0xCu);
      }

      v10 = v94;
      v7 = v54;
      self = v93;
    }

    else
    {
      v88 = [v6 invitationPreferences];

      if (!v88)
      {
        goto LABEL_46;
      }

      v89 = [v6 invitationPreferences];
      v90 = [v89 copy];
      [(CSDConversationJoinContext *)v28 setInvitationPreferences:v90];

      v65 = sub_100004778();
      if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
      {
        v91 = [(CSDConversationJoinContext *)v28 invitationPreferences];
        *buf = 138412290;
        v102 = v91;
        _os_log_impl(&_mh_execute_header, v65, OS_LOG_TYPE_DEFAULT, "Invitation preferences weren't set on the action but existed on the conversation, using those for the join context: %@", buf, 0xCu);
      }
    }

LABEL_46:
    v69 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v7 collaborationIdentifier];

    if (v69)
    {
      v70 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v7 collaborationIdentifier];
      [(CSDConversationJoinContext *)v28 setCollaborationIdentifier:v70];
    }

    v71 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self callUUIDsUpgradedForAVMode];
    v72 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v7 callUUID];
    v73 = [v71 containsObject:v72];

    if (([(CSDAbstractFaceTimeConversationProviderDelegate *)v7 isUpgrade]& 1) == 0)
    {
      v73 |= [v6 isOneToOneModeEnabled] ^ 1;
    }

    if (+[AVAudioClient hasActiveAudioSession]|| (v73 & 1) == 0)
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self setAudioSessionActive:1];
    }

    v74 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v75 = [(CSDAbstractFaceTimeConversationProviderDelegate *)v7 messagesGroupName];
    [v74 setMessagesGroupName:v75 onConversationWithUUID:v10];

    v76 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v77 = [v6 UUID];
    [v76 joinExistingConversationWithUUID:v77 context:v28];

    v78 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [v78 setRelaying:-[CSDAbstractFaceTimeConversationProviderDelegate isRelay](v7 forConversationWithUUID:{"isRelay"), v10}];

    v79 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    LODWORD(v77) = TUCallScreeningEnabled();

    if (v77)
    {
      v80 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      [v80 setScreening:-[CSDAbstractFaceTimeConversationProviderDelegate isScreening](v7 forConversationWithUUID:{"isScreening"), v10}];
    }

    if ([(CSDAbstractFaceTimeConversationProviderDelegate *)v7 isUplinkMuted])
    {
      v81 = sub_100004778();
      if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v102 = v7;
        v103 = 2112;
        v104 = v6;
        _os_log_impl(&_mh_execute_header, v81, OS_LOG_TYPE_DEFAULT, "Setting uplinkMuted for action: %@ conversation: %@", buf, 0x16u);
      }

      v82 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
      v83 = [v6 UUID];
      [v82 setUplinkMuted:1 forConversationWithUUID:v83];
    }

    v84 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v85 = [v84 isConversationWithUUIDRedirectingAudio:v10];

    if ((v85 & 1) == 0)
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self enqueueConversationWaitingForAudioWithConversationUUID:v10];
    }

    v86 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v87 = [v86 isConversationWithUUIDRelaying:v10];

    if (v87)
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self enqueueOrStartAudioForConversationUUID:v10];
    }

    goto LABEL_64;
  }

  v10 = sub_100004778();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v102 = self;
    v103 = 2112;
    v104 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%@ should not handle conversation: %@", buf, 0x16u);
  }

LABEL_64:
}

- (void)conversationManager:(id)a3 conversation:(id)a4 removedActiveParticipant:(id)a5 withReason:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v13);

  objc_initWeak(&location, self);
  v23 = _NSConcreteStackBlock;
  v24 = 3221225472;
  v25 = sub_100269B9C;
  v26 = &unk_10061FEA8;
  objc_copyWeak(&v31, &location);
  v14 = v11;
  v27 = v14;
  v15 = v12;
  v28 = v15;
  v16 = v10;
  v29 = v16;
  v30 = self;
  v17 = objc_retainBlock(&v23);
  if (a6 == 1)
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
    v21 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
    dispatch_after(v20, v21, v17);
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

- (BOOL)shouldAutomaticallyLeaveConversation:(id)a3
{
  v4 = a3;
  if ([(CSDAbstractFaceTimeConversationProviderDelegate *)self isConversationJoiningOrJoined:v4])
  {
    v5 = [v4 remoteMembers];
    v6 = [v4 activeRemoteParticipants];
    if ([v5 count] == 1 && !objc_msgSend(v6, "count"))
    {
      goto LABEL_9;
    }

    v7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    if ([v7 oneToOneFaceTimeMyselfEnabled])
    {
      v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self serverBag];
      v9 = [v8 isFaceTimeMyselfEnabled];

      if (v9 && ![v5 count] && !objc_msgSend(v6, "count") && (objc_msgSend(v4, "isOneToOneModeEnabled") & 1) != 0)
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

    v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self featureFlags];
    v12 = [v11 lagunaEnabled];

    if (!v12)
    {
      v10 = 0;
      goto LABEL_20;
    }

    v13 = [v5 bs_filter:&stru_10061FEE8];
    if ([v13 count] != 1)
    {
      goto LABEL_18;
    }

    v14 = [v6 count];
    if (!v14)
    {
      v10 = 1;
      goto LABEL_19;
    }

    if (v14 == 1)
    {
      v15 = [v6 anyObject];
      v10 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self isLocalMemberOf:v4 associatedTo:v15];
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

- (BOOL)isLocalMemberOf:(id)a3 associatedTo:(id)a4
{
  v5 = a3;
  v6 = [a4 handle];
  if (v6)
  {
    v7 = [v5 localMember];
    v8 = [v7 association];

    if (v8)
    {
      v9 = [v8 handle];
      v10 = [v9 isEquivalentToHandle:v6];
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

- (void)providerDidBegin:(id)a3
{
  v4 = a3;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138412290;
    v10 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "providerDidBegin: %@", &v9, 0xCu);
  }

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self setProvider:v4];
  v7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self providerDidBegin];

  if (v7)
  {
    v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self providerDidBegin];
    v8[2]();
  }
}

- (void)providerDidReset:(id)a3
{
  v4 = a3;
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138412290;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "providerDidReset: %@", &v8, 0xCu);
  }

  v7 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  [v7 leaveAllConversations];
}

- (void)provider:(id)a3 didDeactivateAudioSession:(id)a4
{
  v5 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue:a3];
  dispatch_assert_queue_V2(v5);

  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "providerDidDeactivateAudioSession", v7, 2u);
  }

  [(CSDAbstractFaceTimeConversationProviderDelegate *)self setAudioSessionActive:0];
}

- (void)provider:(id)a3 timedOutPerformingAction:(id)a4
{
  v10 = a4;
  objc_opt_class();
  if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()) || (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v5 = v10;
    v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
    v7 = [v5 callUUID];
    v8 = [v6 objectForKeyedSubscript:v7];

    if (v8)
    {
      v9 = objc_alloc_init(CXCallFailureContext);
      [v9 setFailureReason:0];
      [v9 setProviderEndedReason:503];
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self cleanUpConversationIfNecessaryForConversationUUID:v8 failureContext:v9];
    }
  }
}

- (void)provider:(id)a3 performEndCallAction:(id)a4
{
  v5 = a4;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412290;
    v21 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Performing end call action %@", &v20, 0xCu);
  }

  v8 = [v5 callUUID];
  v9 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v10 = [v9 objectForKeyedSubscript:v8];

  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v12 = [v11 conversationsByUUID];
  v13 = [v12 objectForKeyedSubscript:v10];

  if (v13)
  {
    goto LABEL_6;
  }

  v14 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self _findPendingConversationWithCallUUID:v8];
  if (v14)
  {
    v13 = v14;
LABEL_6:
    if ([v13 avMode])
    {
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversation:v13 withCallUUID:v8 reason:-1];
      [(CSDAbstractFaceTimeConversationProviderDelegate *)self leaveConversationForCallUUID:v8 endedReason:-1];
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

    [v5 fulfill];

    goto LABEL_12;
  }

  v16 = sub_100004778();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
    v18 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v19 = [v18 conversationsByUUID];
    v20 = 138412802;
    v21 = v8;
    v22 = 2112;
    v23 = v17;
    v24 = 2112;
    v25 = v19;
    _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "[WARN] Could not find conversation for end call action call UUID %@. self.conversationUUIDsByCallUUID: %@ self.conversationManager.conversationsByUUID: %@", &v20, 0x20u);
  }

  [v5 fail];
LABEL_12:
}

- (void)provider:(id)a3 performJoinCallAction:(id)a4
{
  v4 = a4;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "action: %@", &v6, 0xCu);
  }

  [v4 fail];
}

- (void)provider:(id)a3 performSetMutedCallAction:(id)a4
{
  v5 = a4;
  v6 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self queue];
  dispatch_assert_queue_V2(v6);

  v7 = sub_100004778();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v21 = 138412290;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "action: %@", &v21, 0xCu);
  }

  v8 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationUUIDsByCallUUID];
  v9 = [v5 callUUID];
  v10 = [v8 objectForKeyedSubscript:v9];

  v11 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
  v12 = [v11 conversationsByUUID];
  v13 = [v12 objectForKeyedSubscript:v10];

  if (v13)
  {
    v14 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    [v14 setUplinkMuted:objc_msgSend(v5 forConversationWithUUID:{"isMuted"), v10}];
  }

  else
  {
    v15 = [v5 callUUID];
    v16 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self isManagingPendingConversationForCallWithUUID:v15];

    if (!v16)
    {
      [v5 fail];
      goto LABEL_8;
    }

    v17 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self conversationManager];
    v18 = [v5 isMuted];
    v19 = [v5 callUUID];
    v20 = [(CSDAbstractFaceTimeConversationProviderDelegate *)self pendingConversationUUIDForCallWithUUID:v19];
    [v17 setUplinkMuted:v18 forPendingConversationWithUUID:v20];
  }

  [v5 fulfill];
LABEL_8:
}

- (CSDFaceTimeProviderDelegateManagerDelegate)faceTimeDemuxerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_faceTimeDemuxerDelegate);

  return WeakRetained;
}

@end