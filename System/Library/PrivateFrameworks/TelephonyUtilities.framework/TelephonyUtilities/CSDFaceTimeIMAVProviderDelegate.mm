@interface CSDFaceTimeIMAVProviderDelegate
- (BOOL)hasCallStartedConnectingWithUUID:(id)d;
- (BOOL)isManagingCallWithUUID:(id)d;
- (CSDFaceTimeIMAVProviderDelegate)initWithQueue:(id)queue;
- (CSDFaceTimeProviderDelegateManagerDelegate)faceTimeDemuxerDelegate;
- (id)chatWithUUID:(id)d;
- (id)failureContextForChat:(id)chat;
- (unsigned)IMAVChatRemoteVideoPresentationStateFromCXVideoPresentationState:(int64_t)state;
- (void)_endChatWithUUID:(id)d withEndedReason:(unsigned int)reason;
- (void)_requestPendingInvites;
- (void)_setUpListeners;
- (void)_updateProviderForConnectedChat:(id)chat;
- (void)_updateProviderForConnectingChat:(id)chat;
- (void)_updateProviderForEndedChat:(id)chat;
- (void)daemonConnected:(id)connected;
- (void)dealloc;
- (void)endCallWithUUID:(id)d;
- (void)endCallWithUUIDAsAnsweredElsewhere:(id)elsewhere;
- (void)endCallWithUUIDAsDeclinedElsewhere:(id)elsewhere;
- (void)endCallWithUUIDAsLocalHangup:(id)hangup;
- (void)handleChatCallInfoChangedNotification:(id)notification;
- (void)handleChatConferenceIDChangedNotification:(id)notification;
- (void)handleChatConferenceMetadataUpdated:(id)updated;
- (void)handleChatFirstRemoteFrameArrived:(id)arrived;
- (void)handleChatInFrequencyChangedNotification:(id)notification;
- (void)handleChatInvitationSent:(id)sent;
- (void)handleChatMayRequireBreakBeforeMakeChanged:(id)changed;
- (void)handleChatOutFrequencyChangedNotification:(id)notification;
- (void)handleChatStateChanged:(id)changed;
- (void)inviteIMAVPeersWithAction:(id)action tokensToExclude:(id)exclude joinCallActionToFulfill:(id)fulfill;
- (void)invitedToIMAVChat:(id)chat;
- (void)provider:(id)provider performAnswerCallAction:(id)action;
- (void)provider:(id)provider performEnableVideoCallAction:(id)action;
- (void)provider:(id)provider performEndCallAction:(id)action;
- (void)provider:(id)provider performSetHeldCallAction:(id)action;
- (void)provider:(id)provider performSetMutedCallAction:(id)action;
- (void)provider:(id)provider performSetRelayingCallAction:(id)action;
- (void)provider:(id)provider performSetSendingVideoCallAction:(id)action;
- (void)provider:(id)provider performSetSharingScreenCallAction:(id)action;
- (void)provider:(id)provider performSetVideoPresentationSizeCallAction:(id)action;
- (void)provider:(id)provider performSetVideoPresentationStateCallAction:(id)action;
- (void)providerDidBegin:(id)begin;
- (void)providerDidReset:(id)reset;
- (void)receivedProtectedInitiate:(id)initiate;
- (void)registerChat:(id)chat;
@end

@implementation CSDFaceTimeIMAVProviderDelegate

- (CSDFaceTimeIMAVProviderDelegate)initWithQueue:(id)queue
{
  queueCopy = queue;
  v11.receiver = self;
  v11.super_class = CSDFaceTimeIMAVProviderDelegate;
  v6 = [(CSDFaceTimeIMAVProviderDelegate *)&v11 init];
  if (v6)
  {
    v7 = +[NSMutableOrderedSet orderedSet];
    cachedChats = v6->_cachedChats;
    v6->_cachedChats = v7;

    objc_storeStrong(&v6->_queue, queue);
    v6->_accessorLock._os_unfair_lock_opaque = 0;
    imAccountForActionBlock = v6->_imAccountForActionBlock;
    v6->_imAccountForActionBlock = &stru_10061A2A0;
  }

  return v6;
}

- (void)dealloc
{
  v3 = +[NSNotificationCenter defaultCenter];
  [v3 removeObserver:self];

  v4.receiver = self;
  v4.super_class = CSDFaceTimeIMAVProviderDelegate;
  [(CSDFaceTimeIMAVProviderDelegate *)&v4 dealloc];
}

- (void)_setUpListeners
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  if ((+[TUCallCapabilities supportsDisplayingFaceTimeAudioCalls](TUCallCapabilities, "supportsDisplayingFaceTimeAudioCalls") & 1) != 0 || +[TUCallCapabilities supportsDisplayingFaceTimeVideoCalls])
  {
    if (qword_1006ACB58 != -1)
    {
      sub_100471A8C();
    }

    if (qword_1006ACB50)
    {
      v3 = +[NSNotificationCenter defaultCenter];
      [v3 addObserver:self selector:"daemonConnected:" name:qword_1006ACB50 object:0];
    }

    else
    {
      v3 = sub_100004778();
      if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = @"IMDaemonDidConnectNotification";
        _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "[WARN] Could not weak link notification string '%@'. Not observing notifications for it.", &v19, 0xCu);
      }
    }

    if (qword_1006ACB68 != -1)
    {
      sub_100471AA0();
    }

    if (qword_1006ACB60)
    {
      v4 = +[NSNotificationCenter defaultCenter];
      [v4 addObserver:self selector:"handleChatStateChanged:" name:qword_1006ACB60 object:0];
    }

    else
    {
      v4 = sub_100004778();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = @"IMAVChatStateChangedNotification";
        _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "[WARN] Could not weak link notification string '%@'. Not observing notifications for it.", &v19, 0xCu);
      }
    }

    if (qword_1006ACB78 != -1)
    {
      sub_100471AC8();
    }

    if (qword_1006ACB70)
    {
      v5 = +[NSNotificationCenter defaultCenter];
      [v5 addObserver:self selector:"handleChatFirstRemoteFrameArrived:" name:qword_1006ACB70 object:0];
    }

    else
    {
      v5 = sub_100004778();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = @"IMAVChatParticipantReceivedFirstFrameNotification";
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[WARN] Could not weak link notification string '%@'. Not observing notifications for it.", &v19, 0xCu);
      }
    }

    if (qword_1006ACB88 != -1)
    {
      sub_100471AF0();
    }

    if (qword_1006ACB80)
    {
      v6 = +[NSNotificationCenter defaultCenter];
      [v6 addObserver:self selector:"handleChatInvitationSent:" name:qword_1006ACB80 object:0];
    }

    else
    {
      v6 = sub_100004778();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = @"IMAVChatParticipantInvitationDeliveredNotification";
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[WARN] Could not weak link notification string '%@'. Not observing notifications for it.", &v19, 0xCu);
      }
    }

    if (qword_1006ACB98 != -1)
    {
      sub_100471B18();
    }

    if (qword_1006ACB90)
    {
      v7 = +[NSNotificationCenter defaultCenter];
      [v7 addObserver:self selector:"handleChatCallInfoChangedNotification:" name:qword_1006ACB90 object:0];
    }

    else
    {
      v7 = sub_100004778();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = @"IMAVChatParticipantCallInfoChangedNotification";
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[WARN] Could not weak link notification string '%@'. Not observing notifications for it.", &v19, 0xCu);
      }
    }

    if (qword_1006ACBA8 != -1)
    {
      sub_100471B40();
    }

    if (qword_1006ACBA0)
    {
      v8 = +[NSNotificationCenter defaultCenter];
      [v8 addObserver:self selector:"handleChatConferenceIDChangedNotification:" name:qword_1006ACBA0 object:0];
    }

    else
    {
      v8 = sub_100004778();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = @"IMAVChatConferenceIDChangedNotification";
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[WARN] Could not weak link notification string '%@'. Not observing notifications for it.", &v19, 0xCu);
      }
    }

    if (qword_1006ACBB8 != -1)
    {
      sub_100471B68();
    }

    if (qword_1006ACBB0)
    {
      v9 = +[NSNotificationCenter defaultCenter];
      [v9 addObserver:self selector:"handleChatConferenceMetadataUpdated:" name:qword_1006ACBB0 object:0];
    }

    else
    {
      v9 = sub_100004778();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = @"IMAVChatConferenceMetadataUpdatedNotification";
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "[WARN] Could not weak link notification string '%@'. Not observing notifications for it.", &v19, 0xCu);
      }
    }

    if (qword_1006ACBC8 != -1)
    {
      sub_100471B90();
    }

    if (qword_1006ACBC0)
    {
      v10 = +[NSNotificationCenter defaultCenter];
      [v10 addObserver:self selector:"handleChatMayRequireBreakBeforeMakeChanged:" name:qword_1006ACBC0 object:0];
    }

    else
    {
      v10 = sub_100004778();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = @"IMAVChatMayRequireBreakBeforeMakeChangedNotification";
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[WARN] Could not weak link notification string '%@'. Not observing notifications for it.", &v19, 0xCu);
      }
    }

    if (qword_1006ACBD8 != -1)
    {
      sub_100471BB8();
    }

    if (qword_1006ACBD0)
    {
      v11 = +[NSNotificationCenter defaultCenter];
      [v11 addObserver:self selector:"handleChatInFrequencyChangedNotification:" name:qword_1006ACBD0 object:0];
    }

    else
    {
      v11 = sub_100004778();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = @"IMAVChatParticipantInFrequencyChangedNotification";
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[WARN] Could not weak link notification string '%@'. Not observing notifications for it.", &v19, 0xCu);
      }
    }

    if (qword_1006ACBE8 != -1)
    {
      sub_100471BE0();
    }

    if (qword_1006ACBE0)
    {
      v12 = +[NSNotificationCenter defaultCenter];
      [v12 addObserver:self selector:"handleChatOutFrequencyChangedNotification:" name:qword_1006ACBE0 object:0];
    }

    else
    {
      v12 = sub_100004778();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v19 = 138412290;
        v20 = @"IMAVChatParticipantOutFrequencyChangedNotification";
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[WARN] Could not weak link notification string '%@'. Not observing notifications for it.", &v19, 0xCu);
      }
    }

    v13 = CUTWeakLinkClass();
    sharedInstance = [v13 sharedInstance];
    [sharedInstance addDelegate:self queue:&_dispatch_main_q];

    sharedInstance2 = [v13 sharedInstance];
    [sharedInstance2 setIMAVCapabilities:25 toCaps:25];

    sharedInstance3 = [v13 sharedInstance];
    [sharedInstance3 setupIMAVController];

    sharedInstance4 = [v13 sharedInstance];
    [sharedInstance4 setBlockIncomingInvitationsDuringCall:0];

    sharedInstance5 = [v13 sharedInstance];
    [sharedInstance5 setBlockMultipleIncomingInvitations:1];

    [(CSDFaceTimeIMAVProviderDelegate *)self _requestPendingInvites];
  }
}

- (void)_requestPendingInvites
{
  dispatch_assert_queue_V2(&_dispatch_main_q);
  v2 = CUTWeakLinkClass();
  if (+[TUCallCapabilities supportsDisplayingFaceTimeAudioCalls])
  {
    sharedInstance = [v2 sharedInstance];
    [sharedInstance requestPendingACInvitations];
  }

  if (+[TUCallCapabilities supportsDisplayingFaceTimeVideoCalls])
  {
    sharedInstance2 = [v2 sharedInstance];
    [sharedInstance2 requestPendingVCInvitations];
  }
}

- (id)chatWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  os_unfair_lock_lock(&self->_accessorLock);
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  cachedChats = [(CSDFaceTimeIMAVProviderDelegate *)self cachedChats];
  v7 = [cachedChats countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v18;
LABEL_3:
    v11 = 0;
    v12 = v9;
    while (1)
    {
      if (*v18 != v10)
      {
        objc_enumerationMutation(cachedChats);
      }

      v9 = *(*(&v17 + 1) + 8 * v11);

      gUID = [v9 GUID];
      uUIDString = [dCopy UUIDString];
      v15 = [gUID isEqualToString:uUIDString];

      if (v15)
      {
        break;
      }

      v11 = v11 + 1;
      v12 = v9;
      if (v8 == v11)
      {
        v8 = [cachedChats countByEnumeratingWithState:&v17 objects:v21 count:16];
        if (v8)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v9 = 0;
  }

  os_unfair_lock_unlock(&self->_accessorLock);

  return v9;
}

- (BOOL)isManagingCallWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(CSDFaceTimeIMAVProviderDelegate *)self chatWithUUID:dCopy];

  return v6 != 0;
}

- (void)registerChat:(id)chat
{
  chatCopy = chat;
  os_unfair_lock_lock(&self->_accessorLock);
  if ([chatCopy state] && objc_msgSend(chatCopy, "state") != 5)
  {
    cachedChats = [(CSDFaceTimeIMAVProviderDelegate *)self cachedChats];
    [cachedChats addObject:chatCopy];
  }

  else
  {
    cachedChats = [(CSDFaceTimeIMAVProviderDelegate *)self cachedChats];
    [cachedChats removeObject:chatCopy];
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)endCallWithUUIDAsAnsweredElsewhere:(id)elsewhere
{
  elsewhereCopy = elsewhere;
  queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDFaceTimeIMAVProviderDelegate *)self _endChatWithUUID:elsewhereCopy withEndedReason:27];
}

- (void)endCallWithUUIDAsDeclinedElsewhere:(id)elsewhere
{
  elsewhereCopy = elsewhere;
  queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDFaceTimeIMAVProviderDelegate *)self _endChatWithUUID:elsewhereCopy withEndedReason:29];
}

- (void)endCallWithUUIDAsLocalHangup:(id)hangup
{
  hangupCopy = hangup;
  queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDFaceTimeIMAVProviderDelegate *)self _endChatWithUUID:hangupCopy withEndedReason:1];
}

- (void)endCallWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  [(CSDFaceTimeIMAVProviderDelegate *)self _endChatWithUUID:dCopy withEndedReason:8];
}

- (void)_endChatWithUUID:(id)d withEndedReason:(unsigned int)reason
{
  dCopy = d;
  queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v8 = [(CSDFaceTimeIMAVProviderDelegate *)self chatWithUUID:dCopy];
  v9 = v8;
  if (v8)
  {
    v11[0] = _NSConcreteStackBlock;
    v11[1] = 3221225472;
    v11[2] = sub_10007F560;
    v11[3] = &unk_100619EF8;
    v12 = v8;
    reasonCopy = reason;
    dispatch_async(&_dispatch_main_q, v11);
    v10 = v12;
  }

  else
  {
    v10 = sub_100004778();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v15 = dCopy;
      v16 = 2048;
      reasonCopy2 = reason;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Asked to end chat with UUID: %@, reason: (%ld) but could not find it", buf, 0x16u);
    }
  }
}

- (BOOL)hasCallStartedConnectingWithUUID:(id)d
{
  dCopy = d;
  queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = [(CSDFaceTimeIMAVProviderDelegate *)self chatWithUUID:dCopy];

  LOBYTE(dCopy) = [v6 state] > 2;
  return dCopy;
}

- (void)inviteIMAVPeersWithAction:(id)action tokensToExclude:(id)exclude joinCallActionToFulfill:(id)fulfill
{
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_10007F780;
  v11[3] = &unk_10061A450;
  actionCopy = action;
  selfCopy = self;
  excludeCopy = exclude;
  fulfillCopy = fulfill;
  v8 = fulfillCopy;
  v9 = excludeCopy;
  v10 = actionCopy;
  dispatch_sync(&_dispatch_main_q, v11);
}

- (unsigned)IMAVChatRemoteVideoPresentationStateFromCXVideoPresentationState:(int64_t)state
{
  if (state == 2)
  {
    return 2;
  }

  else
  {
    return state == 1;
  }
}

- (void)_updateProviderForConnectingChat:(id)chat
{
  chatCopy = chat;
  queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([chatCopy isCaller])
  {
    faceTimeDemuxerDelegate = [(CSDFaceTimeIMAVProviderDelegate *)self faceTimeDemuxerDelegate];
    v7 = chatCopy;
    v8 = [NSUUID alloc];
    gUID = [v7 GUID];

    v10 = [v8 initWithUUIDString:gUID];
    v11 = +[NSDate date];
    [faceTimeDemuxerDelegate providerDelegate:self callWithUUID:v10 startedConnectingAtDate:v11];
  }

  v12 = [[CXCallUpdate alloc] initWithIMAVChat:chatCopy];
  [v12 setFaceTimeTransportType:1];
  provider = [(CSDFaceTimeIMAVProviderDelegate *)self provider];
  v17 = chatCopy;
  v14 = [NSUUID alloc];
  gUID2 = [v17 GUID];

  v16 = [v14 initWithUUIDString:gUID2];
  [provider reportCallWithUUID:v16 updated:v12];
}

- (void)_updateProviderForConnectedChat:(id)chat
{
  chatCopy = chat;
  queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([chatCopy isCaller])
  {
    provider = [(CSDFaceTimeIMAVProviderDelegate *)self provider];
    v7 = chatCopy;
    v8 = [NSUUID alloc];
    gUID = [v7 GUID];

    v10 = [v8 initWithUUIDString:gUID];
    dateConnected = [v7 dateConnected];
    [provider reportOutgoingCallWithUUID:v10 connectedAtDate:dateConnected];
  }

  else
  {
    v12 = chatCopy;
    v13 = [NSUUID alloc];
    gUID2 = [v12 GUID];

    v15 = [v13 initWithUUIDString:gUID2];
    provider2 = [(CSDFaceTimeIMAVProviderDelegate *)self provider];
    v17 = [provider2 pendingCallActionsOfClass:objc_opt_class() withCallUUID:v15];

    if ([v17 count])
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v18 = v17;
      v19 = [v18 countByEnumeratingWithState:&v29 objects:v35 count:16];
      if (v19)
      {
        v20 = v19;
        v27 = v17;
        v28 = chatCopy;
        v21 = *v30;
        do
        {
          for (i = 0; i != v20; i = i + 1)
          {
            if (*v30 != v21)
            {
              objc_enumerationMutation(v18);
            }

            v23 = *(*(&v29 + 1) + 8 * i);
            v24 = sub_100004778();
            if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v34 = v23;
              _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "Legacy chat with matching UUID connected; attempting to fulfill pending answer call action %@", buf, 0xCu);
            }

            if (([v23 isComplete] & 1) == 0)
            {
              dateConnected2 = [v12 dateConnected];
              if (dateConnected2)
              {
                dateConnected3 = [v12 dateConnected];
                [v23 fulfillWithDateConnected:dateConnected3];
              }

              else
              {
                dateConnected3 = sub_100004778();
                if (os_log_type_enabled(dateConnected3, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v34 = v23;
                  _os_log_error_impl(&_mh_execute_header, dateConnected3, OS_LOG_TYPE_ERROR, "Legacy chat did not provide a connection date; Could not fulfill answer call action %@", buf, 0xCu);
                }
              }
            }
          }

          v20 = [v18 countByEnumeratingWithState:&v29 objects:v35 count:16];
        }

        while (v20);
        chatCopy = v28;
        v17 = v27;
      }
    }

    else
    {
      v18 = sub_100004778();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v34 = v15;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[WARN] No pending answer call actions found with UUID: %@", buf, 0xCu);
      }
    }
  }
}

- (void)_updateProviderForEndedChat:(id)chat
{
  chatCopy = chat;
  queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  v6 = chatCopy;
  v7 = [NSUUID alloc];
  gUID = [v6 GUID];

  v9 = [v7 initWithUUIDString:gUID];
  provider = [(CSDFaceTimeIMAVProviderDelegate *)self provider];
  v11 = [provider pendingCallActionsOfClass:objc_opt_class() withCallUUID:v9];

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v12 = v11;
  v13 = [v12 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v20;
    do
    {
      for (i = 0; i != v14; i = i + 1)
      {
        if (*v20 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v19 + 1) + 8 * i);
        v18 = sub_100004778();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v24 = v6;
          _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Failing answer call action for chat because it ended before connecting: %@", buf, 0xCu);
        }

        if (([v17 isComplete] & 1) == 0)
        {
          [v17 fail];
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v14);
  }
}

- (void)daemonConnected:(id)connected
{
  v4 = sub_100004778();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "", buf, 2u);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100080578;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)handleChatStateChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  [CSDSignposts trace:2];
  object = [changedCopy object];
  [(CSDFaceTimeIMAVProviderDelegate *)self registerChat:object];
  queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000806E0;
  v9[3] = &unk_100619D88;
  v10 = object;
  selfCopy = self;
  v8 = object;
  dispatch_async(queue, v9);
}

- (id)failureContextForChat:(id)chat
{
  chatCopy = chat;
  queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
  dispatch_assert_queue_V2(queue);

  if ([chatCopy endedReason] == 12)
  {
    v6 = objc_alloc_init(CXCallFailureContext);
    [v6 setFailureReason:2];
    v7 = +[FTDeviceSupport sharedInstance];
    v8 = +[FTNetworkSupport sharedInstance];
    supportsWLAN = [v7 supportsWLAN];
    if (([v8 allowAnyNetwork] & 1) != 0 || (objc_msgSend(chatCopy, "isVideo") & 1) == 0 && (objc_msgSend(v7, "supportsNonWiFiCalling") & 1) != 0 || objc_msgSend(chatCopy, "isVideo") && objc_msgSend(v7, "supportsNonWiFiFaceTime"))
    {
      v10 = TUBundle();
      v11 = [v10 localizedStringForKey:@"CALL_FAILED_NO_NETWORK_CONNECTION_TITLE" value:&stru_100631E68 table:@"TelephonyUtilities"];
      [v6 setTitle:v11];

      isVideo = [chatCopy isVideo];
      v13 = TUBundle();
      v14 = v13;
      v15 = @"CALL_FAILED_NO_LOCAL_NETWORK_WLAN_MESSAGE";
      if (isVideo)
      {
        v15 = @"ALERT_VIDEO_FAILED_NO_LOCAL_NETWORK_WLAN_MESSAGE";
      }

      v16 = @"ALERT_VIDEO_FAILED_NO_LOCAL_NETWORK_WIFI_MESSAGE";
      if (!isVideo)
      {
        v16 = @"CALL_FAILED_NO_LOCAL_NETWORK_WIFI_MESSAGE";
      }

      if (supportsWLAN)
      {
        v17 = v15;
      }

      else
      {
        v17 = v16;
      }

      v18 = [v13 localizedStringForKey:v17 value:&stru_100631E68 table:@"TelephonyUtilities"];
      [v6 setMessage:v18];

      if ([v7 supportsCellularData])
      {
        v19 = +[IMMobileNetworkManager sharedInstance];
        if (([v19 isAirplaneModeEnabled] & 1) == 0)
        {
          isSIMRemoved = [v19 isSIMRemoved];

          [v6 setHasWiFiSettingsRemediation:1];
          if ((isSIMRemoved & 1) == 0)
          {
            [v6 setHasCellularSettingsRemediation:1];
          }

          goto LABEL_35;
        }
      }
    }

    else
    {
      isVideo2 = [chatCopy isVideo];
      v29 = TUBundle();
      v30 = v29;
      v31 = @"CALL_FAILED_NO_LOCAL_WLAN_MESSAGE";
      if (isVideo2)
      {
        v31 = @"ALERT_VIDEO_FAILED_NO_LOCAL_WLAN_MESSAGE";
      }

      v32 = @"ALERT_VIDEO_FAILED_NO_LOCAL_WIFI_MESSAGE";
      if (!isVideo2)
      {
        v32 = @"CALL_FAILED_NO_LOCAL_WIFI_MESSAGE";
      }

      if (supportsWLAN)
      {
        v33 = v31;
      }

      else
      {
        v33 = v32;
      }

      v34 = [v29 localizedStringForKey:v33 value:&stru_100631E68 table:@"TelephonyUtilities"];
      [v6 setMessage:v34];
    }

    [v6 setHasWiFiSettingsRemediation:1];
LABEL_35:

    goto LABEL_80;
  }

  if ([chatCopy endedReason] == 28)
  {
    v6 = objc_alloc_init(CXCallFailureContext);
    [v6 setFailureReason:1];
    if ([chatCopy endedError] == 5087)
    {
      isVideo3 = [chatCopy isVideo];
      v21 = TUBundle();
      v22 = v21;
      if (isVideo3)
      {
        v23 = @"ALERT_VIDEO_FAILED_TITLE";
      }

      else
      {
        v23 = @"CALL_FAILED_TITLE";
      }

      v24 = [v21 localizedStringForKey:v23 value:&stru_100631E68 table:@"TelephonyUtilities"];
      [v6 setTitle:v24];

      if ([chatCopy isVideo])
      {
        v25 = @"ALERT_VIDEO_FAILED_BAD_NONCE_TIMESTAMP";
      }

      else
      {
        v25 = @"CALL_FAILED_BAD_NONCE_TIMESTAMP";
      }

      v26 = TUBundle();
      v27 = [v26 localizedStringForKey:v25 value:&stru_100631E68 table:@"TelephonyUtilities"];
      [v6 setMessage:v27];

      [v6 setHasDateAndTimeSettingsRemediation:1];
      goto LABEL_80;
    }

    endedError = [chatCopy endedError];
    isVideo4 = [chatCopy isVideo];
    v46 = TUBundle();
    v47 = v46;
    if (isVideo4)
    {
      v48 = @"ALERT_VIDEO_FAILED_TITLE";
    }

    else
    {
      v48 = @"CALL_FAILED_TITLE";
    }

    v49 = [v46 localizedStringForKey:v48 value:&stru_100631E68 table:@"TelephonyUtilities"];
    [v6 setTitle:v49];

    isVideo5 = [chatCopy isVideo];
    v51 = isVideo5;
    if (endedError == 7001)
    {
      if (isVideo5)
      {
        v52 = @"ALERT_VIDEO_FAILED_UPDATE_LOCATION_MESSAGE";
      }

      else
      {
        v52 = @"CALL_FAILED_UPDATE_LOCATION_MESSAGE";
      }

      v53 = TUBundle();
      v54 = [v53 localizedStringForKey:v52 value:&stru_100631E68 table:@"TelephonyUtilities"];
      [v6 setMessage:v54];

      [v6 setHasLocationSettingsRemediation:1];
      goto LABEL_80;
    }

    v69 = TUBundle();
    v7 = v69;
    if (v51)
    {
      v70 = @"ALERT_VIDEO_FAILED_REGION_INFO_INSUFFICIENT";
    }

    else
    {
      v70 = @"CALL_FAILED_REGION_INFO_INSUFFICIENT";
    }

    v8 = [v69 localizedStringForKey:v70 value:&stru_100631E68 table:@"TelephonyUtilities"];
    [v6 setMessage:v8];
    goto LABEL_35;
  }

  if ([chatCopy endedReason] == 26)
  {
    v6 = objc_alloc_init(CXCallFailureContext);
    v35 = TUBundle();
    v36 = [v35 localizedStringForKey:@"ALERT_VIDEO_FAILED_TITLE" value:&stru_100631E68 table:@"TelephonyUtilities"];
    [v6 setTitle:v36];

    [v6 setFailureReason:2];
    otherIMHandle = [chatCopy otherIMHandle];
    v38 = [otherIMHandle ID];

    LODWORD(otherIMHandle) = [v38 destinationIdIsPhoneNumber];
    v39 = TUBundle();
    v40 = v39;
    if (otherIMHandle)
    {
      v41 = @"ALERT_VIDEO_FAILED_REMOTE_INCOMPATIBLE_MESSAGE_%@_NUMBER";
    }

    else
    {
      v41 = @"ALERT_VIDEO_FAILED_REMOTE_INCOMPATIBLE_MESSAGE_%@_NAME";
    }

    v42 = [v39 localizedStringForKey:v41 value:&stru_100631E68 table:@"TelephonyUtilities"];
    v43 = [NSString stringWithFormat:v42, @"<display_name>"];
    [v6 setMessage:v43];

    goto LABEL_79;
  }

  if ([chatCopy endedReason] == 13 || objc_msgSend(chatCopy, "endedReason") == 16 && objc_msgSend(chatCopy, "endedError") == -1)
  {
    v6 = objc_alloc_init(CXCallFailureContext);
    isVideo6 = [chatCopy isVideo];
    v56 = TUBundle();
    v57 = v56;
    if (isVideo6)
    {
      v58 = @"ALERT_VIDEO_NOT_AVAILABLE_TITLE";
    }

    else
    {
      v58 = @"CALL_NOT_AVAILABLE_TITLE";
    }

    v59 = [v56 localizedStringForKey:v58 value:&stru_100631E68 table:@"TelephonyUtilities"];
    [v6 setTitle:v59];

    [v6 setFailureReason:2];
    otherIMHandle2 = [chatCopy otherIMHandle];
    v38 = [otherIMHandle2 ID];

    destinationIdIsPhoneNumber = [v38 destinationIdIsPhoneNumber];
    isVideo7 = [chatCopy isVideo];
    v63 = TUBundle();
    v64 = v63;
    v65 = @"CALL_FAILED_%@_NOT_AVAILABLE_MESSAGE_NAME";
    if (isVideo7)
    {
      v65 = @"ALERT_VIDEO_FAILED_NOT_AVAILABLE_MESSAGE_%@_NAME";
    }

    v66 = @"ALERT_VIDEO_FAILED_NOT_AVAILABLE_MESSAGE_%@_NUMBER";
    if (!isVideo7)
    {
      v66 = @"CALL_FAILED_%@_NOT_AVAILABLE_MESSAGE_NUMBER";
    }

    if (destinationIdIsPhoneNumber)
    {
      v67 = v66;
    }

    else
    {
      v67 = v65;
    }

    goto LABEL_78;
  }

  if ([chatCopy endedReason] == 24 || objc_msgSend(chatCopy, "endedReason") == 23 || objc_msgSend(chatCopy, "endedReason") == 16 && objc_msgSend(chatCopy, "endedError") == 6400)
  {
    v6 = objc_alloc_init(CXCallFailureContext);
    isVideo8 = [chatCopy isVideo];
    v72 = TUBundle();
    v73 = v72;
    if (isVideo8)
    {
      v74 = @"ALERT_VIDEO_FAILED_TITLE";
    }

    else
    {
      v74 = @"CALL_FAILED_TITLE";
    }

    v75 = [v72 localizedStringForKey:v74 value:&stru_100631E68 table:@"TelephonyUtilities"];
    [v6 setTitle:v75];

    [v6 setFailureReason:1];
    otherIMHandle3 = [chatCopy otherIMHandle];
    v38 = [otherIMHandle3 ID];

    destinationIdIsPhoneNumber2 = [v38 destinationIdIsPhoneNumber];
    isVideo9 = [chatCopy isVideo];
    v63 = TUBundle();
    v64 = v63;
    v79 = @"CALL_FAILED_%@_NOT_AVAILABLE_MESSAGE_NUMBER";
    if (isVideo9)
    {
      v79 = @"ALERT_VIDEO_FAILED_NOT_AVAILABLE_MESSAGE_%@_NUMBER";
    }

    v80 = @"ALERT_VIDEO_FAILED_NOT_AVAILABLE_MESSAGE_%@_NAME";
    if (!isVideo9)
    {
      v80 = @"CALL_FAILED_%@_NOT_AVAILABLE_MESSAGE_NAME";
    }

    if (destinationIdIsPhoneNumber2)
    {
      v67 = v79;
    }

    else
    {
      v67 = v80;
    }

LABEL_78:
    v81 = [v63 localizedStringForKey:v67 value:&stru_100631E68 table:@"TelephonyUtilities"];
    v82 = [NSString stringWithFormat:v81, @"<display_name>"];
    [v6 setMessage:v82];

LABEL_79:
    goto LABEL_80;
  }

  if ([chatCopy endedReason] == 6 && objc_msgSend(chatCopy, "endedError") == 32005)
  {
    v84 = objc_alloc_init(CXCallFailureContext);
    v6 = v84;
    v85 = 4;
LABEL_92:
    [v84 setFailureReason:v85];
    goto LABEL_80;
  }

  if ([chatCopy endedReason] == 30)
  {
    v84 = objc_alloc_init(CXCallFailureContext);
    v6 = v84;
    v85 = 5;
    goto LABEL_92;
  }

  v6 = 0;
LABEL_80:
  [v6 setProviderErrorCode:{objc_msgSend(chatCopy, "endedReason")}];

  return v6;
}

- (void)handleChatFirstRemoteFrameArrived:(id)arrived
{
  object = [arrived object];
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = object;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_10008167C;
  v8[3] = &unk_100619D88;
  v9 = object;
  selfCopy = self;
  v7 = object;
  dispatch_async(queue, v8);
}

- (void)handleChatInvitationSent:(id)sent
{
  object = [sent object];
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v11 = object;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100081828;
  v8[3] = &unk_100619D88;
  v8[4] = self;
  v9 = object;
  v7 = object;
  dispatch_async(queue, v8);
}

- (void)handleChatCallInfoChangedNotification:(id)notification
{
  object = [notification object];
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v15 = object;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  avChat = [object avChat];
  queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100081A38;
  block[3] = &unk_100619E58;
  v11 = avChat;
  v12 = object;
  selfCopy = self;
  v8 = object;
  v9 = avChat;
  dispatch_async(queue, block);
}

- (void)handleChatConferenceIDChangedNotification:(id)notification
{
  notificationCopy = notification;
  object = [notificationCopy object];
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = notificationCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  if ([object state] >= 2)
  {
    queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
    v8[0] = _NSConcreteStackBlock;
    v8[1] = 3221225472;
    v8[2] = sub_100081C7C;
    v8[3] = &unk_100619D88;
    v9 = object;
    selfCopy = self;
    dispatch_async(queue, v8);
  }
}

- (void)handleChatConferenceMetadataUpdated:(id)updated
{
  updatedCopy = updated;
  object = [updatedCopy object];
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = updatedCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_100081EA0;
  v9[3] = &unk_100619D88;
  v9[4] = self;
  v10 = object;
  v8 = object;
  dispatch_async(queue, v9);
}

- (void)handleChatMayRequireBreakBeforeMakeChanged:(id)changed
{
  changedCopy = changed;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v13 = changedCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  object = [changedCopy object];
  queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000820B4;
  v9[3] = &unk_100619D88;
  v10 = object;
  selfCopy = self;
  v8 = object;
  dispatch_async(queue, v9);
}

- (void)handleChatInFrequencyChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100082240;
  v7[3] = &unk_100619D88;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)handleChatOutFrequencyChangedNotification:(id)notification
{
  notificationCopy = notification;
  queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000823D0;
  v7[3] = &unk_100619D88;
  v8 = notificationCopy;
  selfCopy = self;
  v6 = notificationCopy;
  dispatch_async(queue, v7);
}

- (void)invitedToIMAVChat:(id)chat
{
  chatCopy = chat;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = chatCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%@", buf, 0xCu);
  }

  [CSDAnalyticsReporter sendIncomingIMAVCallEventWithSilenced:0];
  queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000825EC;
  v8[3] = &unk_100619D88;
  v9 = chatCopy;
  selfCopy = self;
  v7 = chatCopy;
  dispatch_async(queue, v8);
}

- (void)receivedProtectedInitiate:(id)initiate
{
  initiateCopy = initiate;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v12 = initiateCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "protected chat: %@", buf, 0xCu);
  }

  [CSDAnalyticsReporter sendIncomingIMAVCallEventWithSilenced:1];
  queue = [(CSDFaceTimeIMAVProviderDelegate *)self queue];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100082A54;
  v8[3] = &unk_100619D88;
  v9 = initiateCopy;
  selfCopy = self;
  v7 = initiateCopy;
  dispatch_async(queue, v8);
}

- (void)providerDidBegin:(id)begin
{
  beginCopy = begin;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v8 = beginCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "provider: %@", buf, 0xCu);
  }

  [(CSDFaceTimeIMAVProviderDelegate *)self setProvider:beginCopy];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100082E88;
  block[3] = &unk_100619D38;
  block[4] = self;
  dispatch_async(&_dispatch_main_q, block);
}

- (void)providerDidReset:(id)reset
{
  resetCopy = reset;
  v5 = sub_100004778();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v19 = resetCopy;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "provider: %@", buf, 0xCu);
  }

  os_unfair_lock_lock(&self->_accessorLock);
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  cachedChats = [(CSDFaceTimeIMAVProviderDelegate *)self cachedChats];
  v7 = [cachedChats countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(cachedChats);
        }

        v11 = *(*(&v13 + 1) + 8 * v10);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100083170;
        block[3] = &unk_100619D38;
        block[4] = v11;
        dispatch_async(&_dispatch_main_q, block);
        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [cachedChats countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  os_unfair_lock_unlock(&self->_accessorLock);
}

- (void)provider:(id)provider performAnswerCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", buf, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDFaceTimeIMAVProviderDelegate *)self chatWithUUID:callUUID];

  if ([v8 state] == 4)
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100471DC4();
    }

    if (([actionCopy isComplete] & 1) == 0)
    {
      [actionCopy fail];
    }
  }

  else
  {
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_100083328;
    block[3] = &unk_100619E58;
    block[4] = self;
    v11 = actionCopy;
    v12 = v8;
    dispatch_async(&_dispatch_main_q, block);
  }
}

- (void)provider:(id)provider performEndCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", buf, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDFaceTimeIMAVProviderDelegate *)self chatWithUUID:callUUID];

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Calling endChat on chat %@", buf, 0xCu);
  }

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1000835D8;
  block[3] = &unk_100619D38;
  v10 = v8;
  v12 = v10;
  dispatch_async(&_dispatch_main_q, block);
  if (([actionCopy isComplete] & 1) == 0)
  {
    [actionCopy fulfill];
  }
}

- (void)provider:(id)provider performSetHeldCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v17 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", buf, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDFaceTimeIMAVProviderDelegate *)self chatWithUUID:callUUID];

  if ([v8 state] == 4)
  {
    v10 = _NSConcreteStackBlock;
    v11 = 3221225472;
    v12 = sub_1000837A0;
    v13 = &unk_100619EA8;
    v15 = [actionCopy isOnHold] ^ 1;
    v14 = v8;
    dispatch_async(&_dispatch_main_q, &v10);
    if (([actionCopy isComplete] & 1) == 0)
    {
      [actionCopy fulfill];
    }
  }

  else
  {
    v9 = sub_100004778();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      sub_100471E2C();
    }

    if (([actionCopy isComplete] & 1) == 0)
    {
      [actionCopy fail];
    }
  }
}

- (void)provider:(id)provider performSetSendingVideoCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", buf, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDFaceTimeIMAVProviderDelegate *)self chatWithUUID:callUUID];

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_1000839D4;
  v14 = &unk_100619D88;
  v9 = actionCopy;
  v15 = v9;
  v16 = v8;
  v10 = v8;
  dispatch_async(&_dispatch_main_q, &v11);
  if (([v9 isComplete] & 1) == 0)
  {
    [v9 fulfill];
  }
}

- (void)provider:(id)provider performSetSharingScreenCallAction:(id)action
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

- (void)provider:(id)provider performEnableVideoCallAction:(id)action
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

- (void)provider:(id)provider performSetVideoPresentationSizeCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", buf, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDFaceTimeIMAVProviderDelegate *)self chatWithUUID:callUUID];

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_100083D7C;
  v14 = &unk_100619D88;
  v9 = actionCopy;
  v15 = v9;
  v16 = v8;
  v10 = v8;
  dispatch_async(&_dispatch_main_q, &v11);
  if (([v9 isComplete] & 1) == 0)
  {
    [v9 fulfill];
  }
}

- (void)provider:(id)provider performSetVideoPresentationStateCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", buf, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDFaceTimeIMAVProviderDelegate *)self chatWithUUID:callUUID];

  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100083FD4;
  block[3] = &unk_100619E58;
  v9 = actionCopy;
  v12 = v9;
  v13 = v8;
  selfCopy = self;
  v10 = v8;
  dispatch_async(&_dispatch_main_q, block);
  if (([v9 isComplete] & 1) == 0)
  {
    [v9 fulfill];
  }
}

- (void)provider:(id)provider performSetRelayingCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", buf, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDFaceTimeIMAVProviderDelegate *)self chatWithUUID:callUUID];

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10008422C;
  v14 = &unk_100619D88;
  v9 = actionCopy;
  v15 = v9;
  v16 = v8;
  v10 = v8;
  dispatch_async(&_dispatch_main_q, &v11);
  if (([v9 isComplete] & 1) == 0)
  {
    [v9 fulfill];
  }
}

- (void)provider:(id)provider performSetMutedCallAction:(id)action
{
  actionCopy = action;
  v6 = sub_100004778();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v18 = actionCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "action: %@", buf, 0xCu);
  }

  callUUID = [actionCopy callUUID];
  v8 = [(CSDFaceTimeIMAVProviderDelegate *)self chatWithUUID:callUUID];

  v11 = _NSConcreteStackBlock;
  v12 = 3221225472;
  v13 = sub_10008446C;
  v14 = &unk_100619D88;
  v9 = actionCopy;
  v15 = v9;
  v16 = v8;
  v10 = v8;
  dispatch_async(&_dispatch_main_q, &v11);
  if (([v9 isComplete] & 1) == 0)
  {
    [v9 fulfill];
  }
}

- (CSDFaceTimeProviderDelegateManagerDelegate)faceTimeDemuxerDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_faceTimeDemuxerDelegate);

  return WeakRetained;
}

@end