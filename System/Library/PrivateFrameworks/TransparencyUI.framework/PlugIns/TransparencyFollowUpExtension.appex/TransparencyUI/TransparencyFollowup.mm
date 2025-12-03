@interface TransparencyFollowup
+ (BOOL)isFollowupEnabled;
+ (id)instance;
- (BOOL)clearAllFollowups:(id *)followups;
- (BOOL)clearFollowup:(id)followup error:(id *)error;
- (BOOL)clearFollowups:(id)followups error:(id *)error;
- (BOOL)clearFollowupsByType:(id)type type:(unint64_t)a4 error:(id *)error;
- (BOOL)postFollowup:(id)followup type:(unint64_t)type eventId:(id)id errorCode:(int64_t)code optInState:(id)state infoLink:(id)link additionalInfo:(id)info error:(id *)self0;
- (TransparencyFollowup)initWithAnalytics:(id)analytics;
- (id)_localizedKTStringForKey:(id)key;
- (id)createOptOutFollowup:(id)followup infoLink:(id)link;
- (id)createSMTFollowup:(id)followup infoLink:(id)link;
- (id)createSelfFollowup:(id)followup infoLink:(id)link;
- (id)createTLTResetFollowup:(id)followup infoLink:(id)link;
- (id)createTreeRollFollowup:(id)followup infoLink:(id)link;
- (id)detailsAction:(unint64_t)action eventId:(id)id infoLink:(id)link;
- (id)getPendingFollowups;
- (id)ignoreAction;
- (id)itemForType:(unint64_t)type eventId:(id)id infoLink:(id)link;
- (id)ktFollowupStatus;
- (id)notification:(id)notification message:(id)message activateAction:(id)action clearAction:(id)clearAction;
- (id)settingsAction:(unint64_t)action eventId:(id)id;
- (void)startFollowupStatusSampler;
@end

@implementation TransparencyFollowup

+ (BOOL)isFollowupEnabled
{
  if (qword_10000C878 != -1)
  {
    sub_10000502C();
  }

  return byte_10000C870;
}

+ (id)instance
{
  if (qword_10000C890 != -1)
  {
    sub_100005054();
  }

  v3 = qword_10000C868;

  return v3;
}

- (TransparencyFollowup)initWithAnalytics:(id)analytics
{
  analyticsCopy = analytics;
  v31.receiver = self;
  v31.super_class = TransparencyFollowup;
  v5 = [(TransparencyFollowup *)&v31 init];
  if (v5)
  {
    v6 = [[FLFollowUpController alloc] initWithClientIdentifier:@"com.apple.transparency.followupclient"];
    [(TransparencyFollowup *)v5 setController:v6];

    v7 = +[NSMutableDictionary dictionary];
    [(TransparencyFollowup *)v5 setFollowUpItems:v7];

    if (!analyticsCopy)
    {
      analyticsCopy = +[TransparencyAnalytics logger];
    }

    [(TransparencyFollowup *)v5 setLogger:analyticsCopy];
    controller = [(TransparencyFollowup *)v5 controller];
    v30 = 0;
    v9 = [controller pendingFollowUpItems:&v30];
    v10 = v30;

    if (!v9 && v10)
    {
      if (qword_10000C880 != -1)
      {
        sub_100005068();
      }

      v11 = qword_10000C888;
      if (os_log_type_enabled(qword_10000C888, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v34 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "failed to get pending follow up items: %@", buf, 0xCu);
      }
    }

    v24 = v10;
    v25 = analyticsCopy;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v27;
      do
      {
        for (i = 0; i != v14; i = i + 1)
        {
          if (*v27 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v26 + 1) + 8 * i);
          userInfo = [v17 userInfo];
          v19 = [userInfo objectForKeyedSubscript:@"eventId"];

          if (v19)
          {
            v20 = [[NSUUID alloc] initWithUUIDString:v19];
            if (v20)
            {
              [(TransparencyFollowup *)v5 followUpItems];
              v22 = v21 = v5;
              [v22 setObject:v17 forKey:v20];

              v5 = v21;
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v32 count:16];
      }

      while (v14);
    }

    [(TransparencyFollowup *)v5 startFollowupStatusSampler];
    analyticsCopy = v25;
  }

  return v5;
}

- (id)detailsAction:(unint64_t)action eventId:(id)id infoLink:(id)link
{
  linkCopy = link;
  idCopy = id;
  v10 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=TRANSPARENCY"];
  v11 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_VIEW_DETAILS_LABEL"];
  v12 = [FLFollowUpAction actionWithLabel:v11 url:v10];

  v13 = +[NSMutableDictionary dictionary];
  uUIDString = [idCopy UUIDString];

  [v13 setObject:uUIDString forKeyedSubscript:@"eventId"];
  v15 = [NSNumber numberWithUnsignedInteger:action];
  [v13 setObject:v15 forKeyedSubscript:@"type"];

  [v13 setObject:&off_100008B18 forKeyedSubscript:@"action"];
  if (linkCopy)
  {
    [v13 setObject:linkCopy forKeyedSubscript:@"infoLink"];
  }

  [v12 setUserInfo:v13];

  return v12;
}

- (id)settingsAction:(unint64_t)action eventId:(id)id
{
  idCopy = id;
  v7 = [NSURL URLWithString:@"prefs:root=APPLE_ACCOUNT&path=TRANSPARENCY"];
  v8 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_VIEW_SETTINGS_LABEL"];
  v9 = [FLFollowUpAction actionWithLabel:v8 url:v7];

  v10 = +[NSMutableDictionary dictionary];
  uUIDString = [idCopy UUIDString];

  [v10 setObject:uUIDString forKeyedSubscript:@"eventId"];
  v12 = [NSNumber numberWithUnsignedInteger:action];
  [v10 setObject:v12 forKeyedSubscript:@"type"];

  [v10 setObject:&off_100008B30 forKeyedSubscript:@"action"];
  [v9 setUserInfo:v10];

  return v9;
}

- (id)ignoreAction
{
  v2 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_CLEAR_WARNING_LABEL"];
  v3 = [FLFollowUpAction actionWithLabel:v2 url:0];

  [v3 setUserInfo:&off_100008B70];

  return v3;
}

- (id)notification:(id)notification message:(id)message activateAction:(id)action clearAction:(id)clearAction
{
  clearActionCopy = clearAction;
  actionCopy = action;
  messageCopy = message;
  notificationCopy = notification;
  v13 = objc_alloc_init(FLFollowUpNotification);
  [v13 setTitle:notificationCopy];

  [v13 setActivateAction:actionCopy];
  [v13 setClearAction:clearActionCopy];

  [v13 setFirstNotificationDelay:0.0];
  [v13 setFrequency:0.0];
  [v13 setInformativeText:messageCopy];

  return v13;
}

- (id)createSelfFollowup:(id)followup infoLink:(id)link
{
  linkCopy = link;
  followupCopy = followup;
  v8 = objc_alloc_init(FLFollowUpItem);
  [v8 setUniqueIdentifier:@"com.apple.transparency.ValidateSelfFailed"];
  [v8 setGroupIdentifier:FLGroupIdentifierAccount];
  v9 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_ERROR_TITLE"];
  [v8 setTitle:v9];

  v10 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_SELF_ERROR"];
  [v8 setInformativeText:v10];

  [v8 setDisplayStyle:0];
  [v8 setExtensionIdentifier:@"com.apple.TransparencyUI.FollowUpExtension"];
  v11 = [(TransparencyFollowup *)self detailsAction:0 eventId:followupCopy infoLink:linkCopy];

  ignoreAction = [(TransparencyFollowup *)self ignoreAction];
  v18[0] = v11;
  v18[1] = ignoreAction;
  v13 = [NSArray arrayWithObjects:v18 count:2];
  [v8 setActions:v13];

  title = [v8 title];
  informativeText = [v8 informativeText];
  v16 = [(TransparencyFollowup *)self notification:title message:informativeText activateAction:v11 clearAction:ignoreAction];

  [v8 setNotification:v16];

  return v8;
}

- (id)createSMTFollowup:(id)followup infoLink:(id)link
{
  linkCopy = link;
  followupCopy = followup;
  v8 = objc_alloc_init(FLFollowUpItem);
  [v8 setUniqueIdentifier:@"com.apple.transparency.AuditFailure"];
  [v8 setGroupIdentifier:FLGroupIdentifierAccount];
  v9 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_ERROR_TITLE"];
  [v8 setTitle:v9];

  v10 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_DATA_ERROR"];
  [v8 setInformativeText:v10];

  [v8 setDisplayStyle:0];
  [v8 setExtensionIdentifier:@"com.apple.TransparencyUI.FollowUpExtension"];
  v11 = [(TransparencyFollowup *)self detailsAction:1 eventId:followupCopy infoLink:linkCopy];

  ignoreAction = [(TransparencyFollowup *)self ignoreAction];
  v18[0] = v11;
  v18[1] = ignoreAction;
  v13 = [NSArray arrayWithObjects:v18 count:2];
  [v8 setActions:v13];

  title = [v8 title];
  informativeText = [v8 informativeText];
  v16 = [(TransparencyFollowup *)self notification:title message:informativeText activateAction:v11 clearAction:ignoreAction];

  [v8 setNotification:v16];

  return v8;
}

- (id)createTreeRollFollowup:(id)followup infoLink:(id)link
{
  linkCopy = link;
  followupCopy = followup;
  v8 = objc_alloc_init(FLFollowUpItem);
  [v8 setUniqueIdentifier:@"com.apple.transparency.TreeRollDetected"];
  [v8 setGroupIdentifier:FLGroupIdentifierAccount];
  v9 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_RESET_TITLE"];
  [v8 setTitle:v9];

  v10 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_RESET"];
  [v8 setInformativeText:v10];

  [v8 setDisplayStyle:0];
  [v8 setExtensionIdentifier:@"com.apple.TransparencyUI.FollowUpExtension"];
  v11 = [(TransparencyFollowup *)self detailsAction:3 eventId:followupCopy infoLink:linkCopy];

  v12 = [(TransparencyFollowup *)self settingsAction:3 eventId:followupCopy];

  v18[0] = v11;
  v18[1] = v12;
  v13 = [NSArray arrayWithObjects:v18 count:2];
  [v8 setActions:v13];

  title = [v8 title];
  informativeText = [v8 informativeText];
  v16 = [(TransparencyFollowup *)self notification:title message:informativeText activateAction:v11 clearAction:v12];

  [v8 setNotification:v16];

  return v8;
}

- (id)createTLTResetFollowup:(id)followup infoLink:(id)link
{
  linkCopy = link;
  followupCopy = followup;
  v8 = objc_alloc_init(FLFollowUpItem);
  [v8 setUniqueIdentifier:@"com.apple.transparency.TLTResetDetected"];
  [v8 setGroupIdentifier:FLGroupIdentifierAccount];
  v9 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_RESET_TITLE"];
  [v8 setTitle:v9];

  v10 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_RESET"];
  [v8 setInformativeText:v10];

  [v8 setDisplayStyle:0];
  [v8 setExtensionIdentifier:@"com.apple.TransparencyUI.FollowUpExtension"];
  v11 = [(TransparencyFollowup *)self detailsAction:5 eventId:followupCopy infoLink:linkCopy];

  ignoreAction = [(TransparencyFollowup *)self ignoreAction];
  v18[0] = v11;
  v18[1] = ignoreAction;
  v13 = [NSArray arrayWithObjects:v18 count:2];
  [v8 setActions:v13];

  title = [v8 title];
  informativeText = [v8 informativeText];
  v16 = [(TransparencyFollowup *)self notification:title message:informativeText activateAction:v11 clearAction:ignoreAction];

  [v8 setNotification:v16];

  return v8;
}

- (id)createOptOutFollowup:(id)followup infoLink:(id)link
{
  linkCopy = link;
  followupCopy = followup;
  v8 = objc_alloc_init(FLFollowUpItem);
  [v8 setUniqueIdentifier:@"com.apple.transparency.OptOut"];
  [v8 setGroupIdentifier:FLGroupIdentifierAccount];
  v9 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_DISABLED_TITLE"];
  [v8 setTitle:v9];

  v10 = [(TransparencyFollowup *)self _localizedKTStringForKey:@"KT_DISABLED"];
  [v8 setInformativeText:v10];

  [v8 setDisplayStyle:0];
  [v8 setExtensionIdentifier:@"com.apple.TransparencyUI.FollowUpExtension"];
  v11 = [(TransparencyFollowup *)self detailsAction:4 eventId:followupCopy infoLink:linkCopy];

  ignoreAction = [(TransparencyFollowup *)self ignoreAction];
  v18[0] = v11;
  v18[1] = ignoreAction;
  v13 = [NSArray arrayWithObjects:v18 count:2];
  [v8 setActions:v13];

  title = [v8 title];
  informativeText = [v8 informativeText];
  v16 = [(TransparencyFollowup *)self notification:title message:informativeText activateAction:v11 clearAction:ignoreAction];

  [v8 setNotification:v16];

  return v8;
}

- (id)itemForType:(unint64_t)type eventId:(id)id infoLink:(id)link
{
  idCopy = id;
  linkCopy = link;
  if (type > 2)
  {
    switch(type)
    {
      case 3uLL:
        v11 = [(TransparencyFollowup *)self createTreeRollFollowup:idCopy infoLink:linkCopy];
        break;
      case 4uLL:
        v11 = [(TransparencyFollowup *)self createOptOutFollowup:idCopy infoLink:linkCopy];
        break;
      case 5uLL:
        v11 = [(TransparencyFollowup *)self createTLTResetFollowup:idCopy infoLink:linkCopy];
        break;
      default:
        goto LABEL_15;
    }
  }

  else if (type)
  {
    if (type == 1)
    {
      v11 = [(TransparencyFollowup *)self createSMTFollowup:idCopy infoLink:linkCopy];
    }

    else
    {
      if (type != 2)
      {
        goto LABEL_15;
      }

      v11 = [(TransparencyFollowup *)self createSTHFollowup:idCopy infoLink:linkCopy];
    }
  }

  else
  {
    v11 = [(TransparencyFollowup *)self createSelfFollowup:idCopy infoLink:linkCopy];
  }

  v5 = v11;
LABEL_15:

  return v5;
}

- (BOOL)postFollowup:(id)followup type:(unint64_t)type eventId:(id)id errorCode:(int64_t)code optInState:(id)state infoLink:(id)link additionalInfo:(id)info error:(id *)self0
{
  followupCopy = followup;
  idCopy = id;
  stateCopy = state;
  linkCopy = link;
  infoCopy = info;
  if (qword_10000C880 != -1)
  {
    sub_100005090();
  }

  v18 = qword_10000C888;
  if (os_log_type_enabled(qword_10000C888, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218242;
    typeCopy2 = type;
    v48 = 2112;
    typeCopy3 = idCopy;
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Received a postFollowup call of type: %lu eventId: %@", buf, 0x16u);
  }

  if (stateCopy)
  {
    if ([stateCopy state] && objc_msgSend(stateCopy, "state") != 2)
    {
      if (idCopy)
      {
        v39 = [(TransparencyFollowup *)self itemForType:type eventId:idCopy infoLink:linkCopy];
        v40 = +[NSMutableDictionary dictionary];
        [v40 setObject:followupCopy forKeyedSubscript:@"application"];
        v21 = [NSNumber numberWithUnsignedInteger:type];
        [v40 setObject:v21 forKeyedSubscript:@"type"];

        uUIDString = [idCopy UUIDString];
        [v40 setObject:uUIDString forKeyedSubscript:@"eventId"];

        [v40 addEntriesFromDictionary:infoCopy];
        [v39 setUserInfo:v40];
        followUpItems = [(TransparencyFollowup *)self followUpItems];
        objc_sync_enter(followUpItems);
        followUpItems2 = [(TransparencyFollowup *)self followUpItems];
        v25 = [followUpItems2 objectForKeyedSubscript:idCopy];
        v26 = v25 == 0;

        if (v26)
        {
          followUpItems3 = [(TransparencyFollowup *)self followUpItems];
          [followUpItems3 setObject:v39 forKey:idCopy];
        }

        else
        {
          if (qword_10000C880 != -1)
          {
            sub_1000050CC();
          }

          v27 = qword_10000C888;
          if (os_log_type_enabled(qword_10000C888, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            typeCopy2 = idCopy;
            _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_INFO, "skipping follow up due to existing follow up for eventId %{public}@", buf, 0xCu);
          }

          followUpItems3 = v39;
          v39 = 0;
        }

        objc_sync_exit(followUpItems);
        if (v39)
        {
          if (qword_10000C880 != -1)
          {
            sub_1000050F4();
          }

          v33 = qword_10000C888;
          if (os_log_type_enabled(qword_10000C888, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            typeCopy2 = idCopy;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "posting follow up for eventId %{public}@", buf, 0xCu);
          }

          controller = [(TransparencyFollowup *)self controller];
          v43 = 0;
          v35 = [controller postFollowUpItem:v39 error:&v43];
          v36 = v43;

          if ((v35 & 1) == 0)
          {
            if (qword_10000C880 != -1)
            {
              sub_10000511C();
            }

            v37 = qword_10000C888;
            if (os_log_type_enabled(qword_10000C888, OS_LOG_TYPE_ERROR))
            {
              *buf = 134218242;
              typeCopy2 = type;
              v48 = 2112;
              typeCopy3 = v36;
              _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "failed to post follow up type %lu: %@", buf, 0x16u);
            }
          }
        }
      }

      else
      {
        if (qword_10000C880 != -1)
        {
          sub_100005144();
        }

        v29 = qword_10000C888;
        if (os_log_type_enabled(qword_10000C888, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "no eventId passed, not much we can do", buf, 2u);
        }

        logger = [(TransparencyFollowup *)self logger];
        v44 = @"type";
        v31 = [NSNumber numberWithUnsignedInteger:type];
        v45 = v31;
        v32 = [NSDictionary dictionaryWithObjects:&v45 forKeys:&v44 count:1];
        [logger logHardFailureForEventNamed:@"PostFollowUpMissEvent" withAttributes:v32];
      }
    }

    else
    {
      if (qword_10000C880 != -1)
      {
        sub_10000516C();
      }

      v19 = qword_10000C888;
      if (os_log_type_enabled(qword_10000C888, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        typeCopy2 = stateCopy;
        v48 = 2048;
        typeCopy3 = type;
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "opt-in state %@ follow up type %lu", buf, 0x16u);
      }
    }
  }

  else
  {
    if (qword_10000C880 != -1)
    {
      sub_1000050A4();
    }

    v20 = qword_10000C888;
    if (os_log_type_enabled(qword_10000C888, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "failed to post follow up due to missing optIn state", buf, 2u);
    }

    if (error)
    {
      *error = [TransparencyError errorWithDomain:kTransparencyErrorInternal code:-178 description:@"failed to post follow up due to missing optIn state"];
    }
  }

  return stateCopy != 0;
}

- (BOOL)clearAllFollowups:(id *)followups
{
  if (qword_10000C880 != -1)
  {
    sub_100005194();
  }

  v5 = qword_10000C888;
  if (os_log_type_enabled(qword_10000C888, OS_LOG_TYPE_INFO))
  {
    LOWORD(v13) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_INFO, "clearing all Transparency followups", &v13, 2u);
  }

  controller = [(TransparencyFollowup *)self controller];
  v7 = [controller clearPendingFollowUpItems:followups];

  if (v7)
  {
    followUpItems = [(TransparencyFollowup *)self followUpItems];
    objc_sync_enter(followUpItems);
    followUpItems2 = [(TransparencyFollowup *)self followUpItems];
    [followUpItems2 removeAllObjects];

    objc_sync_exit(followUpItems);
  }

  else
  {
    if (qword_10000C880 != -1)
    {
      sub_1000051A8();
    }

    v10 = qword_10000C888;
    if (os_log_type_enabled(qword_10000C888, OS_LOG_TYPE_ERROR))
    {
      if (followups)
      {
        v11 = *followups;
      }

      else
      {
        v11 = 0;
      }

      v13 = 138412290;
      v14 = v11;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "failed to clear Transparency followups: %@", &v13, 0xCu);
    }
  }

  return v7;
}

- (BOOL)clearFollowupsByType:(id)type type:(unint64_t)a4 error:(id *)error
{
  typeCopy = type;
  selfCopy = self;
  obj = [(TransparencyFollowup *)self followUpItems];
  objc_sync_enter(obj);
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  followUpItems = [(TransparencyFollowup *)self followUpItems];
  v7 = [followUpItems countByEnumeratingWithState:&v34 objects:v43 count:16];
  if (v7)
  {
    v32 = *v35;
    v27 = 1;
    v31 = followUpItems;
    do
    {
      v8 = 0;
      do
      {
        if (*v35 != v32)
        {
          objc_enumerationMutation(v31);
        }

        v9 = *(*(&v34 + 1) + 8 * v8);
        followUpItems2 = [(TransparencyFollowup *)selfCopy followUpItems];
        v11 = [followUpItems2 objectForKeyedSubscript:v9];

        if (v11)
        {
          userInfo = [v11 userInfo];
          v13 = userInfo == 0;

          if (!v13)
          {
            userInfo2 = [v11 userInfo];
            v15 = [userInfo2 objectForKeyedSubscript:@"application"];
            v16 = [userInfo2 objectForKeyedSubscript:@"type"];
            unsignedIntegerValue = [v16 unsignedIntegerValue];

            if (unsignedIntegerValue == a4 && [v15 isEqualToString:typeCopy])
            {
              controller = [(TransparencyFollowup *)selfCopy controller];
              uniqueIdentifier = [v11 uniqueIdentifier];
              v42 = uniqueIdentifier;
              v20 = [NSArray arrayWithObjects:&v42 count:1];
              v21 = [controller clearPendingFollowUpItemsWithUniqueIdentifiers:v20 error:error];

              if (v21)
              {
                followUpItems3 = [(TransparencyFollowup *)selfCopy followUpItems];
                [followUpItems3 removeObjectForKey:v9];
              }

              else
              {
                if (qword_10000C880 != -1)
                {
                  sub_1000051D0();
                }

                v23 = qword_10000C888;
                if (os_log_type_enabled(qword_10000C888, OS_LOG_TYPE_ERROR))
                {
                  errorCopy = error;
                  if (error)
                  {
                    errorCopy = *error;
                  }

                  *buf = 138412546;
                  v39 = v9;
                  v40 = 2112;
                  v41 = errorCopy;
                  _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to clear tree reset CFU for event id %@ with error: %@", buf, 0x16u);
                }

                v27 = 0;
              }
            }
          }
        }

        v8 = v8 + 1;
      }

      while (v7 != v8);
      followUpItems = v31;
      v7 = [v31 countByEnumeratingWithState:&v34 objects:v43 count:16];
    }

    while (v7);
  }

  else
  {
    v27 = 1;
  }

  objc_sync_exit(obj);
  return v27 & 1;
}

- (BOOL)clearFollowup:(id)followup error:(id *)error
{
  followupCopy = followup;
  controller = [(TransparencyFollowup *)self controller];
  uniqueIdentifier = [followupCopy uniqueIdentifier];
  v18 = uniqueIdentifier;
  v9 = [NSArray arrayWithObjects:&v18 count:1];
  v10 = [controller clearPendingFollowUpItemsWithUniqueIdentifiers:v9 error:error];

  if (v10)
  {
    v11 = [NSUUID alloc];
    userInfo = [followupCopy userInfo];
    v13 = [userInfo objectForKeyedSubscript:@"eventId"];
    v14 = [v11 initWithUUIDString:v13];

    if (v14)
    {
      followUpItems = [(TransparencyFollowup *)self followUpItems];
      objc_sync_enter(followUpItems);
      followUpItems2 = [(TransparencyFollowup *)self followUpItems];
      [followUpItems2 removeObjectForKey:v14];

      objc_sync_exit(followUpItems);
    }
  }

  return v10;
}

- (id)getPendingFollowups
{
  followUpItems = [(TransparencyFollowup *)self followUpItems];
  objc_sync_enter(followUpItems);
  followUpItems2 = [(TransparencyFollowup *)self followUpItems];
  allKeys = [followUpItems2 allKeys];

  objc_sync_exit(followUpItems);

  return allKeys;
}

- (BOOL)clearFollowups:(id)followups error:(id *)error
{
  followupsCopy = followups;
  if (followupsCopy)
  {
    v21 = followupsCopy;
    if ([followupsCopy count])
    {
      obj = [(TransparencyFollowup *)self followUpItems];
      objc_sync_enter(obj);
      v25 = 0u;
      v26 = 0u;
      v27 = 0u;
      v28 = 0u;
      v23 = v21;
      v6 = [v23 countByEnumeratingWithState:&v25 objects:v34 count:16];
      if (v6)
      {
        v7 = *v26;
        v22 = 1;
        do
        {
          v8 = 0;
          do
          {
            if (*v26 != v7)
            {
              objc_enumerationMutation(v23);
            }

            v9 = *(*(&v25 + 1) + 8 * v8);
            followUpItems = [(TransparencyFollowup *)self followUpItems];
            v11 = [followUpItems objectForKeyedSubscript:v9];

            if (v11)
            {
              controller = [(TransparencyFollowup *)self controller];
              uniqueIdentifier = [v11 uniqueIdentifier];
              v33 = uniqueIdentifier;
              v14 = [NSArray arrayWithObjects:&v33 count:1];
              v15 = [controller clearPendingFollowUpItemsWithUniqueIdentifiers:v14 error:error];

              if (v15)
              {
                followUpItems2 = [(TransparencyFollowup *)self followUpItems];
                [followUpItems2 removeObjectForKey:v9];
              }

              else
              {
                if (qword_10000C880 != -1)
                {
                  sub_1000051F8();
                }

                v17 = qword_10000C888;
                if (os_log_type_enabled(qword_10000C888, OS_LOG_TYPE_ERROR))
                {
                  errorCopy = error;
                  if (error)
                  {
                    errorCopy = *error;
                  }

                  *buf = 138412546;
                  v30 = v9;
                  v31 = 2112;
                  v32 = errorCopy;
                  _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to clear followup for event id %@ with error: %@", buf, 0x16u);
                }

                v22 = 0;
              }
            }

            v8 = v8 + 1;
          }

          while (v6 != v8);
          v6 = [v23 countByEnumeratingWithState:&v25 objects:v34 count:16];
        }

        while (v6);
      }

      else
      {
        v22 = 1;
      }

      objc_sync_exit(obj);
    }

    else
    {
      v22 = 1;
    }

    followupsCopy = v21;
  }

  else
  {
    v22 = 1;
  }

  return v22 & 1;
}

- (id)_localizedKTStringForKey:(id)key
{
  keyCopy = key;
  v4 = [NSBundle bundleWithPath:@"/System/Library/PrivateFrameworks/Transparency.framework"];
  v5 = v4;
  if (v4)
  {
    localizations = [v4 localizations];
    v7 = &TransparencyFollowUpExtensionViewController__metaData;
    v8 = &TransparencyFollowUpExtensionViewController__metaData;
    if (localizations)
    {
      v9 = CFPreferencesCopyValue(@"AppleLanguages", kCFPreferencesAnyApplication, @"mobile", kCFPreferencesAnyHost);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v10 = [NSBundle preferredLocalizationsFromArray:localizations forPreferences:v9];
        if ([v10 count])
        {
          v30 = 0u;
          v31 = 0u;
          v28 = 0u;
          v29 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
          if (v12)
          {
            v13 = v12;
            v27 = localizations;
            v14 = *v29;
            while (2)
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v29 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v28 + 1) + 8 * i);
                v17 = [v5 localizedStringForKey:keyCopy value:0 table:@"Localizable-NARWHAL" localization:v16];
                if (v17)
                {
                  v18 = v17;
                  v7 = &TransparencyFollowUpExtensionViewController__metaData;
                  if (qword_10000C880 != -1)
                  {
                    sub_100005234();
                  }

                  localizations = v27;
                  v8 = &TransparencyFollowUpExtensionViewController__metaData;
                  v22 = qword_10000C888;
                  if (os_log_type_enabled(qword_10000C888, OS_LOG_TYPE_DEBUG))
                  {
                    *buf = 138543618;
                    v33 = v16;
                    v34 = 2114;
                    v35 = v18;
                    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEBUG, "followup localized string (%{public}@) = %{public}@", buf, 0x16u);
                  }

                  goto LABEL_46;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v28 objects:v36 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }

            v18 = 0;
            localizations = v27;
            v8 = &TransparencyFollowUpExtensionViewController__metaData;
            v7 = &TransparencyFollowUpExtensionViewController__metaData;
          }

          else
          {
            v18 = 0;
          }

LABEL_46:

          if (v18)
          {
            goto LABEL_47;
          }

          goto LABEL_37;
        }

        if (qword_10000C880 != -1)
        {
          sub_10000525C();
        }

        v23 = qword_10000C888;
        if (os_log_type_enabled(qword_10000C888, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "failed to get preferred localizations", buf, 2u);
        }
      }

      else
      {
        if (qword_10000C880 != -1)
        {
          sub_100005220();
        }

        v21 = qword_10000C888;
        if (os_log_type_enabled(qword_10000C888, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "failed to get languages for the current user", buf, 2u);
        }
      }
    }

    else
    {
      if (qword_10000C880 != -1)
      {
        sub_100005270();
      }

      v20 = qword_10000C888;
      if (os_log_type_enabled(qword_10000C888, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v33 = @"/System/Library/PrivateFrameworks/Transparency.framework";
        _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "failed to get localizations from the localization bundle (%{public}@)", buf, 0xCu);
      }
    }

LABEL_37:
    if (v7[30].ivar_lyt != -1)
    {
      sub_100005284();
    }

    name = v8[30].name;
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, name, OS_LOG_TYPE_ERROR, "failed to get localized string for the current user localization", buf, 2u);
    }

    v18 = [v5 localizedStringForKey:keyCopy value:keyCopy table:@"Localizable-NARWHAL"];
    if (v7[30].ivar_lyt != -1)
    {
      sub_1000052AC();
    }

    v25 = v8[30].name;
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v33 = v18;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEBUG, "followup localized string = %{public}@", buf, 0xCu);
    }

LABEL_47:

    goto LABEL_48;
  }

  if (qword_10000C880 != -1)
  {
    sub_1000052D4();
  }

  v19 = qword_10000C888;
  if (os_log_type_enabled(qword_10000C888, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v33 = @"/System/Library/PrivateFrameworks/Transparency.framework";
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "failed to get the localization bundle (%{public}@)", buf, 0xCu);
  }

  v18 = keyCopy;
LABEL_48:

  return v18;
}

- (id)ktFollowupStatus
{
  v2 = +[NSMutableDictionary dictionary];
  if (+[TransparencyFollowup isFollowupEnabled])
  {
    obj = [(TransparencyFollowup *)self followUpItems];
    objc_sync_enter(obj);
    followUpItems = [(TransparencyFollowup *)self followUpItems];
    allKeys = [followUpItems allKeys];
    v5 = [allKeys sortedArrayUsingSelector:"compare:"];

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v26 = v5;
    v6 = [v26 countByEnumeratingWithState:&v30 objects:v36 count:16];
    if (v6)
    {
      v27 = *v31;
      do
      {
        v29 = v6;
        for (i = 0; i != v29; i = i + 1)
        {
          if (*v31 != v27)
          {
            objc_enumerationMutation(v26);
          }

          v8 = *(*(&v30 + 1) + 8 * i);
          followUpItems2 = [(TransparencyFollowup *)self followUpItems];
          v10 = [followUpItems2 objectForKey:v8];

          if (v10)
          {
            notification = [v10 notification];
            creationDate = [notification creationDate];

            if (creationDate)
            {
              v13 = [NSNumber numberWithInteger:[SFAnalytics fuzzyDaysSinceDate:creationDate]];
            }

            else
            {
              v13 = 0;
            }

            uniqueIdentifier = [v10 uniqueIdentifier];
            v15 = [NSString stringWithFormat:@"ktcfu-%@-days", uniqueIdentifier];

            uniqueIdentifier2 = [v10 uniqueIdentifier];
            v17 = [NSString stringWithFormat:@"ktcfu-%@-count", uniqueIdentifier2];

            v18 = [v2 objectForKeyedSubscript:v15];
            v19 = v18;
            if (!v18 || ([v18 compare:v13] & 0x8000000000000000) != 0)
            {
              [v2 setObject:v13 forKeyedSubscript:v15];
            }

            v20 = [v2 objectForKeyedSubscript:v17];
            integerValue = [v20 integerValue];

            v22 = [NSNumber numberWithInteger:integerValue + 1];
            [v2 setObject:v22 forKeyedSubscript:v17];
          }
        }

        v6 = [v26 countByEnumeratingWithState:&v30 objects:v36 count:16];
      }

      while (v6);
    }

    objc_sync_exit(obj);
    if (qword_10000C880 != -1)
    {
      sub_1000052E8();
    }

    v23 = qword_10000C888;
    if (os_log_type_enabled(qword_10000C888, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v35 = v2;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEBUG, "Analytics for KT CFUs are %@", buf, 0xCu);
    }
  }

  return v2;
}

- (void)startFollowupStatusSampler
{
  objc_initWeak(&location, self);
  logger = [(TransparencyFollowup *)self logger];
  v4 = SFAnalyticsSamplerIntervalOncePerReport;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100004DD8;
  v5[3] = &unk_1000086C8;
  objc_copyWeak(&v6, &location);
  [logger addMultiSamplerForName:@"transparencyFollowupStatus" withTimeInterval:v5 block:v4];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&location);
}

@end