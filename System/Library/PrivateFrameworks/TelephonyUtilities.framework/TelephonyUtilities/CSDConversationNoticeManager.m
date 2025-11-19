@interface CSDConversationNoticeManager
- (CSDConversationNoticeDelegate)delegate;
- (CSDConversationNoticeManager)initWithDelegate:(id)a3 queue:(id)a4;
- (id)fetchUpcomingNoticeFromQueue;
- (void)activateConversationNoticeWithActionURL:(id)a3 bundleIdentifier:(id)a4;
- (void)conversation:(id)a3 receivedActivitySessionEvent:(id)a4;
- (void)removeConversationNoticeWithUUID:(id)a3;
@end

@implementation CSDConversationNoticeManager

- (CSDConversationNoticeManager)initWithDelegate:(id)a3 queue:(id)a4
{
  v6 = a3;
  v7 = a4;
  v13.receiver = self;
  v13.super_class = CSDConversationNoticeManager;
  v8 = [(CSDConversationNoticeManager *)&v13 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_queue, a4);
    objc_storeWeak(&v9->_delegate, v6);
    v10 = objc_alloc_init(FBSOpenApplicationService);
    service = v9->_service;
    v9->_service = v10;
  }

  return v9;
}

- (void)conversation:(id)a3 receivedActivitySessionEvent:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationNoticeManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = [v7 session];
  v10 = [v9 activity];
  v11 = [v10 isSystemActivity];

  if (v11)
  {
    v12 = sub_100004778();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [v7 sessionUUID];
      *buf = 138412290;
      v64 = v13;
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
      v17 = [v7 description];
      *buf = 138412290;
      v64 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Received TUConversationActivityEvent: %@", buf, 0xCu);
    }

    v18 = [v7 sessionUUID];
    [v12 setSessionUUID:v18];

    v19 = [v7 type];
    switch(v19)
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
        v53 = [v7 item];
        [v12 setItem:v53];

        v54 = [v7 queueItemType];
        if (v54 == 2)
        {
          v55 = v12;
          v56 = 2;
        }

        else if (v54 == 1)
        {
          v55 = v12;
          v56 = 1;
        }

        else
        {
          if (v54)
          {
            goto LABEL_23;
          }

          v55 = v12;
          v56 = 0;
        }

        [v55 setQueueItemType:v56];
LABEL_23:
        v58 = v6;
        v61 = 0u;
        v62 = 0u;
        v59 = 0u;
        v60 = 0u;
        v25 = [v6 tuActivitySessions];
        v26 = [v25 countByEnumeratingWithState:&v59 objects:v67 count:16];
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
        if (v19 == 99)
        {
          v22 = v12;
          v23 = 99;
LABEL_20:
          [v22 setSessionEventType:v23];
          v24 = [v7 item];
          [v12 setItem:v24];
        }

        goto LABEL_23;
    }

    while (2)
    {
      for (i = 0; i != v27; i = i + 1)
      {
        if (*v60 != v28)
        {
          objc_enumerationMutation(v25);
        }

        v30 = *(*(&v59 + 1) + 8 * i);
        v31 = [v30 UUID];
        v32 = [v12 sessionUUID];
        v33 = [v31 isEqual:v32];

        if (v33)
        {
          v34 = [v30 activity];
          v35 = [v34 bundleIdentifier];
          [v12 setBundleIdentifier:v35];

          goto LABEL_33;
        }
      }

      v27 = [v25 countByEnumeratingWithState:&v59 objects:v67 count:16];
      if (v27)
      {
        continue;
      }

      break;
    }

LABEL_33:

    v36 = [v12 bundleIdentifier];
    v37 = [v36 length];

    if (!v37)
    {
      v38 = [v7 session];
      v39 = [v38 activity];
      v40 = [v39 bundleIdentifier];
      [v12 setBundleIdentifier:v40];
    }

    v41 = [v7 session];
    [v12 setSession:v41];

    v42 = [v7 url];
    [v12 setActionURL:v42];

    v43 = [v12 bundleIdentifier];

    if (v43)
    {
      v44 = [v7 originator];
      v6 = v58;
      if ([v44 isLightweight])
      {
        v45 = sub_100004778();
        if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v64 = v12;
          _os_log_impl(&_mh_execute_header, v45, OS_LOG_TYPE_DEFAULT, "Notice %@ is from a lightweightMember, trying to translate", buf, 0xCu);
        }

        v46 = [v58 tuConversation];
        v47 = [v44 handle];
        v48 = [v46 remoteParticipantForLightweightParticipantHandle:v47];

        if (v48)
        {
          v49 = v48;

          v44 = v49;
        }
      }

      v50 = objc_autoreleasePoolPush();
      v51 = sub_100004778();
      if (os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v64 = v12;
        v65 = 2112;
        v66 = v7;
        _os_log_impl(&_mh_execute_header, v51, OS_LOG_TYPE_DEFAULT, "Posting notice: %@ for event: %@", buf, 0x16u);
      }

      v52 = [v57 delegate];
      [v52 noticeManager:v57 conversation:v58 participant:v44 addedNotice:v12];

      objc_autoreleasePoolPop(v50);
    }

    else
    {
      v44 = sub_100004778();
      v6 = v58;
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        sub_10047ABCC(v12, v44);
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

- (void)activateConversationNoticeWithActionURL:(id)a3 bundleIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(CSDConversationNoticeManager *)self queue];
  dispatch_assert_queue_V2(v8);

  v9 = sub_100004778();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v20 = v6;
    v21 = 2112;
    v22 = v7;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "Activating conversation notice with URL: %@ and bundleID %@", buf, 0x16u);
  }

  if (v6 && v7)
  {
    v10 = [(CSDConversationNoticeManager *)self service];
    v17 = FBSOpenApplicationOptionKeyPayloadURL;
    v18 = v6;
    v11 = [NSDictionary dictionaryWithObjects:&v18 forKeys:&v17 count:1];
    v12 = [FBSOpenApplicationOptions optionsWithDictionary:v11];
    v14[0] = _NSConcreteStackBlock;
    v14[1] = 3221225472;
    v14[2] = sub_1001E5950;
    v14[3] = &unk_10061E278;
    v15 = v7;
    v16 = v6;
    [v10 openApplication:v15 withOptions:v12 completion:v14];

    v13 = v15;
  }

  else
  {
    v13 = sub_100004778();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v20 = v6;
      v21 = 2112;
      v22 = v7;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[WARN] Error activating conversation notice. Could not find action url %@ or bundleID %@", buf, 0x16u);
    }
  }
}

- (void)removeConversationNoticeWithUUID:(id)a3
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