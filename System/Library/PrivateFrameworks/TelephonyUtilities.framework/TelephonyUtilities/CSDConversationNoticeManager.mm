@interface CSDConversationNoticeManager
- (CSDConversationNoticeDelegate)delegate;
- (CSDConversationNoticeManager)initWithDelegate:(id)delegate queue:(id)queue;
- (id)fetchUpcomingNoticeFromQueue;
- (void)activateConversationNoticeWithActionURL:(id)l bundleIdentifier:(id)identifier;
- (void)conversation:(id)conversation receivedActivitySessionEvent:(id)event;
- (void)removeConversationNoticeWithUUID:(id)d;
@end

@implementation CSDConversationNoticeManager

- (CSDConversationNoticeManager)initWithDelegate:(id)delegate queue:(id)queue
{
  delegateCopy = delegate;
  queueCopy = queue;
  v13.receiver = self;
  v13.super_class = CSDConversationNoticeManager;
  v8 = [(CSDConversationNoticeManager *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, queue);
    objc_storeWeak(&v9->_delegate, delegateCopy);
    v10 = objc_alloc_init(FBSOpenApplicationService);
    service = v9->_service;
    v9->_service = v10;
  }

  return v9;
}

- (void)conversation:(id)conversation receivedActivitySessionEvent:(id)event
{
  conversationCopy = conversation;
  eventCopy = event;
  queue = [(CSDConversationNoticeManager *)self queue];
  dispatch_assert_queue_V2(queue);

  session = [eventCopy session];
  activity = [session activity];
  isSystemActivity = [activity isSystemActivity];

  if (isSystemActivity)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      sessionUUID = [eventCopy sessionUUID];
      *buf = 138412290;
      v64 = sessionUUID;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Ignoring event for session %@, since the activity is a system group activity", buf, 0xCu);
    }
  }

  else
  {
    v14 = [TUConversationNotice alloc];
    v15 = +[NSUUID UUID];
    v12 = [v14 initWithUUID:v15];

    v16 = sub_100004778();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = [eventCopy description];
      *buf = 138412290;
      v64 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received TUConversationActivityEvent: %@", buf, 0xCu);
    }

    sessionUUID2 = [eventCopy sessionUUID];
    [v12 setSessionUUID:sessionUUID2];

    type = [eventCopy type];
    switch(type)
    {
      case 1uLL:
        v20 = v12;
        v21 = 1;
        goto LABEL_22;
      case 2uLL:
        v20 = v12;
        v21 = 2;
        goto LABEL_22;
      case 3uLL:
        v20 = v12;
        v21 = 3;
        goto LABEL_22;
      case 4uLL:
        v22 = v12;
        v23 = 4;
        goto LABEL_20;
      case 5uLL:
        v20 = v12;
        v21 = 5;
        goto LABEL_22;
      case 6uLL:
        v20 = v12;
        v21 = 6;
        goto LABEL_22;
      case 7uLL:
        v22 = v12;
        v23 = 7;
        goto LABEL_20;
      case 8uLL:
        v20 = v12;
        v21 = 8;
        goto LABEL_22;
      case 9uLL:
        goto LABEL_23;
      case 0xAuLL:
        [v12 setSessionEventType:10];
        item = [eventCopy item];
        [v12 setItem:item];

        queueItemType = [eventCopy queueItemType];
        if (queueItemType == 2)
        {
          v55 = v12;
          v56 = 2;
        }

        else if (queueItemType == 1)
        {
          v55 = v12;
          v56 = 1;
        }

        else
        {
          if (queueItemType)
          {
            goto LABEL_23;
          }

          v55 = v12;
          v56 = 0;
        }

        [v55 setQueueItemType:v56];
LABEL_23:
        v58 = conversationCopy;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        tuActivitySessions = [conversationCopy tuActivitySessions];
        v26 = [tuActivitySessions countByEnumeratingWithState:&v59 objects:v67 count:16];
        if (!v26)
        {
          goto LABEL_33;
        }

        v27 = v26;
        v28 = *v60;
        break;
      case 0xBuLL:
        v20 = v12;
        v21 = 11;
        goto LABEL_22;
      case 0xCuLL:
        v20 = v12;
        v21 = 12;
        goto LABEL_22;
      case 0xDuLL:
        v22 = v12;
        v23 = 13;
        goto LABEL_20;
      case 0xEuLL:
        v20 = v12;
        v21 = 14;
LABEL_22:
        [v20 setSessionEventType:v21];
        goto LABEL_23;
      default:
        if (type == 99)
        {
          v22 = v12;
          v23 = 99;
LABEL_20:
          [v22 setSessionEventType:v23];
          item2 = [eventCopy item];
          [v12 setItem:item2];
        }

        goto LABEL_23;
    }

    while (2)
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v60 != v28)
        {
          objc_enumerationMutation(tuActivitySessions);
        }

        v30 = *(*(&v59 + 1) + 8 * i);
        uUID = [v30 UUID];
        sessionUUID3 = [v12 sessionUUID];
        v33 = [uUID isEqual:sessionUUID3];

        if (v33)
        {
          activity2 = [v30 activity];
          bundleIdentifier = [activity2 bundleIdentifier];
          [v12 setBundleIdentifier:bundleIdentifier];

          goto LABEL_33;
        }
      }

      v27 = [tuActivitySessions countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }

LABEL_33:

    bundleIdentifier2 = [v12 bundleIdentifier];
    v37 = [bundleIdentifier2 length];

    if (!v37)
    {
      session2 = [eventCopy session];
      activity3 = [session2 activity];
      bundleIdentifier3 = [activity3 bundleIdentifier];
      [v12 setBundleIdentifier:bundleIdentifier3];
    }

    session3 = [eventCopy session];
    [v12 setSession:session3];

    v42 = [eventCopy url];
    [v12 setActionURL:v42];

    bundleIdentifier4 = [v12 bundleIdentifier];

    if (bundleIdentifier4)
    {
      originator = [eventCopy originator];
      conversationCopy = v58;
      if ([originator isLightweight])
      {
        v45 = sub_100004778();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v64 = v12;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Notice %@ is from a lightweightMember, trying to translate", buf, 0xCu);
        }

        tuConversation = [v58 tuConversation];
        handle = [originator handle];
        v48 = [tuConversation remoteParticipantForLightweightParticipantHandle:handle];

        if (v48)
        {
          v49 = v48;

          originator = v49;
        }
      }

      v50 = objc_autoreleasePoolPush();
      v51 = sub_100004778();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v64 = v12;
        v65 = 2112;
        v66 = eventCopy;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Posting notice: %@ for event: %@", buf, 0x16u);
      }

      delegate = [v57 delegate];
      [delegate noticeManager:v57 conversation:v58 participant:originator addedNotice:v12];

      objc_autoreleasePoolPop(v50);
    }

    else
    {
      originator = sub_100004778();
      conversationCopy = v58;
      if (os_log_type_enabled(originator, OS_LOG_TYPE_ERROR))
      {
        sub_10047ABCC(v12, originator);
      }
    }
  }
}

- (id)fetchUpcomingNoticeFromQueue
{
  v2 = sub_100004778();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Fetching notices is a no-op", v4, 2u);
  }

  return 0;
}

- (void)activateConversationNoticeWithActionURL:(id)l bundleIdentifier:(id)identifier
{
  lCopy = l;
  identifierCopy = identifier;
  queue = [(CSDConversationNoticeManager *)self queue];
  dispatch_assert_queue_V2(queue);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = lCopy;
    v21 = 2112;
    v22 = identifierCopy;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Activating conversation notice with URL: %@ and bundleID %@", buf, 0x16u);
  }

  if (lCopy && identifierCopy)
  {
    service = [(CSDConversationNoticeManager *)self service];
    v17 = FBSOpenApplicationOptionKeyPayloadURL;
    v18 = lCopy;
    v11 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v12 = [FBSOpenApplicationOptions optionsWithDictionary:v11];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001E5950;
    v14[3] = &unk_10061E278;
    v15 = identifierCopy;
    v16 = lCopy;
    [service openApplication:v15 withOptions:v12 completion:v14];

    v13 = v15;
  }

  else
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = lCopy;
      v21 = 2112;
      v22 = identifierCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Error activating conversation notice. Could not find action url %@ or bundleID %@", buf, 0x16u);
    }
  }
}

- (void)removeConversationNoticeWithUUID:(id)d
{
  v3 = sub_100004778();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Removing conversation notice is a no-op", v4, 2u);
  }
}

- (CSDConversationNoticeDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end