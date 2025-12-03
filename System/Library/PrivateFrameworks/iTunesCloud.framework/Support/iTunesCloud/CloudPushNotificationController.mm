@interface CloudPushNotificationController
- (BOOL)_isSupportedJaliscoMediaKind:(id)kind;
- (CloudPushNotificationController)initWithAccountManager:(id)manager;
- (CloudUserNotificationControllerProtocol)userNotificationController;
- (ICDAccountManaging)accountManager;
- (ICMediaUserStateCenterServerProtocol)mediaUserStateCenterServer;
- (ICPlaybackPositionService)playbackPositionServer;
- (id)_intentPayloadForMessage:(id)message;
- (id)_supportedJaliscoMediaKinds;
- (id)_supportedJaliscoMediaKindsWithSagaEnabled;
- (void)_activeConfigurationsWithCompletion:(id)completion;
- (void)_createAPNSConnectionWithCompletion:(id)completion;
- (void)_dispatchMusicPushNotificationIntentForMessage:(id)message;
- (void)_dispatchPodcastsPushNotificationIntentForMessage:(id)message withCompletionHandler:(id)handler;
- (void)_handleITunesStorePushMessage:(id)message withCompletionHandler:(id)handler;
- (void)_handleInAppMessagesUpdatedPushMessage:(id)message;
- (void)_handleJaliscoPushMessage:(id)message withCompletionHandler:(id)handler;
- (void)_handlePodcastsPushMessage:(id)message withCompletionHandler:(id)handler;
- (void)_handleSagaPushMessage:(id)message withCompletionHandler:(id)handler;
- (void)_handleStoreBookkeeperPushMessage:(id)message withCompletionHandler:(id)handler;
- (void)_handleUserIdentityStoreDidChangeNotification:(id)notification;
- (void)_registerAPNSToken:(id)token usingRequestContext:(id)context withCompletion:(id)completion;
- (void)_registerMediaKinds:(id)kinds usingRequestContext:(id)context withCompletion:(id)completion;
- (void)_updatePushNotificationsRegistration;
- (void)_updateRegistrationForConfiguration:(id)configuration completion:(id)completion;
- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info;
- (void)connection:(id)connection didReceivePublicToken:(id)token;
- (void)dealloc;
- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability;
- (void)pushPayload:(id)payload withBadgeRequest:(id)request;
@end

@implementation CloudPushNotificationController

- (ICDAccountManaging)accountManager
{
  WeakRetained = objc_loadWeakRetained(&self->_accountManager);

  return WeakRetained;
}

- (CloudUserNotificationControllerProtocol)userNotificationController
{
  WeakRetained = objc_loadWeakRetained(&self->_userNotificationController);

  return WeakRetained;
}

- (ICPlaybackPositionService)playbackPositionServer
{
  WeakRetained = objc_loadWeakRetained(&self->_playbackPositionServer);

  return WeakRetained;
}

- (ICMediaUserStateCenterServerProtocol)mediaUserStateCenterServer
{
  WeakRetained = objc_loadWeakRetained(&self->_mediaUserStateCenterServer);

  return WeakRetained;
}

- (void)pushPayload:(id)payload withBadgeRequest:(id)request
{
  requestCopy = request;
  userNotificationController = [(CloudPushNotificationController *)self userNotificationController];
  if (!userNotificationController)
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v13 = 0;
      v10 = "Received a badge request but no user notification center to badge.";
      v11 = &v13;
LABEL_8:
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, v10, v11, 2u);
    }

LABEL_9:

    goto LABEL_10;
  }

  badgeIdentifier = [requestCopy badgeIdentifier];
  v8 = [badgeIdentifier isEqualToString:@"appIcon"];

  if (!v8)
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v12 = 0;
      v10 = "Received a badge request with an unrecognized badgeIdentifier.";
      v11 = &v12;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  [userNotificationController badgeAppWithRequest:requestCopy];
LABEL_10:
}

- (id)_intentPayloadForMessage:(id)message
{
  userInfo = [message userInfo];
  v12 = 0;
  v5 = [NSJSONSerialization dataWithJSONObject:userInfo options:0 error:&v12];
  v6 = v12;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      msv_description = [v6 msv_description];
      *buf = 138543618;
      selfCopy2 = self;
      v15 = 2114;
      v16 = msv_description;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to serialize payload dictionary error=%{public}@", buf, 0x16u);
    }
  }

  if (v5)
  {
    v9 = [[NSString alloc] initWithData:v5 encoding:4];
    if (v9)
    {
      goto LABEL_11;
    }

    v10 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@ Failed to create payload string", buf, 0xCu);
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)_dispatchPodcastsPushNotificationIntentForMessage:(id)message withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  v7 = [(CloudPushNotificationController *)self _intentPayloadForMessage:message];
  if (v7)
  {
    v8 = objc_alloc_init(_TtC12itunescloudd22ICDAppIntentDispatcher);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10010F410;
    v9[3] = &unk_1001DF5C8;
    v10 = handlerCopy;
    [(ICDAppIntentDispatcher *)v8 dispatchPodcastsPushNotificationIntentWithTopic:@"com.apple.podcasts" payload:v7 completionHandler:v9];
  }
}

- (void)_dispatchMusicPushNotificationIntentForMessage:(id)message
{
  v3 = [(CloudPushNotificationController *)self _intentPayloadForMessage:message];
  if (v3)
  {
    v5 = v3;
    v4 = objc_alloc_init(_TtC12itunescloudd22ICDAppIntentDispatcher);
    [(ICDAppIntentDispatcher *)v4 dispatchMusicPushNotificationIntentWithTopic:@"com.apple.itunesstored" payload:v5 completionHandler:&stru_1001DEB28];

    v3 = v5;
  }
}

- (id)_supportedJaliscoMediaKindsWithSagaEnabled
{
  if (qword_100213E20 != -1)
  {
    dispatch_once(&qword_100213E20, &stru_1001DEB08);
  }

  v3 = qword_100213E18;

  return v3;
}

- (id)_supportedJaliscoMediaKinds
{
  if (qword_100213E10 != -1)
  {
    dispatch_once(&qword_100213E10, &stru_1001DEAE8);
  }

  v3 = qword_100213E08;

  return v3;
}

- (BOOL)_isSupportedJaliscoMediaKind:(id)kind
{
  kindCopy = kind;
  _supportedJaliscoMediaKinds = [(CloudPushNotificationController *)self _supportedJaliscoMediaKinds];
  v6 = [_supportedJaliscoMediaKinds containsObject:kindCopy];

  return v6;
}

- (void)_handleInAppMessagesUpdatedPushMessage:(id)message
{
  messageCopy = message;
  apsPayload = [messageCopy apsPayload];
  v6 = apsPayload;
  if (apsPayload)
  {
    v7 = [apsPayload ic_intValueForKey:@"payloadVersion"];
    if (v7 >= 2)
    {
      if (v7 == 2)
      {
        v11 = os_log_create("com.apple.amp.itunescloudd", "Push");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          selfCopy4 = self;
          _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@Received inApp messages push - syncing now", buf, 0xCu);
        }

        v8 = +[ICInAppMessageManager sharedManager];
        v13[0] = _NSConcreteStackBlock;
        v13[1] = 3221225472;
        v13[2] = sub_10010FA78;
        v13[3] = &unk_1001DE828;
        v13[4] = self;
        [v8 syncMessagesWithCompletion:v13];
      }

      else
      {
        v8 = os_log_create("com.apple.amp.itunescloudd", "Push");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          userInfo = [messageCopy userInfo];
          *buf = 138543618;
          selfCopy4 = self;
          v16 = 2114;
          v17 = userInfo;
          v10 = "%{public}@Received unsupported in-app sync payload version - ignoring push %{public}@";
          goto LABEL_14;
        }
      }
    }

    else
    {
      v8 = os_log_create("com.apple.amp.itunescloudd", "Push");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        userInfo = [messageCopy userInfo];
        *buf = 138543618;
        selfCopy4 = self;
        v16 = 2114;
        v17 = userInfo;
        v10 = "%{public}@Received legacy banner sync payload version - ignoring push %{public}@";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, v10, buf, 0x16u);
      }
    }
  }

  else
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      userInfo = [messageCopy userInfo];
      *buf = 138543618;
      selfCopy4 = self;
      v16 = 2114;
      v17 = userInfo;
      v10 = "%{public}@ No aps payload - ignoring push %{public}@";
      goto LABEL_14;
    }
  }
}

- (void)_handlePodcastsPushMessage:(id)message withCompletionHandler:(id)handler
{
  handlerCopy = handler;
  messageCopy = message;
  v8 = os_log_create("com.apple.amp.itunescloudd", "Push");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Received Podcasts push - forwarding to AppIntent", &v9, 0xCu);
  }

  [(CloudPushNotificationController *)self _dispatchPodcastsPushNotificationIntentForMessage:messageCopy withCompletionHandler:handlerCopy];
}

- (void)_handleStoreBookkeeperPushMessage:(id)message withCompletionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  v8 = os_log_create("com.apple.amp.itunescloudd", "Push");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    userInfo = [messageCopy userInfo];
    *buf = 138543619;
    *&buf[4] = self;
    *&buf[12] = 2113;
    *&buf[14] = userInfo;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ _handleStoreBookkeeperPushMessage: %{private}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_playbackPositionServer);
  v11 = WeakRetained;
  if (WeakRetained && [WeakRetained conformsToProtocol:&OBJC_PROTOCOL___ICPlaybackPositionService])
  {
    userInfo2 = [messageCopy userInfo];
    v13 = [userInfo2 objectForKeyedSubscript:@"3"];

    userInfo3 = [messageCopy userInfo];
    v15 = [userInfo3 objectForKeyedSubscript:@"1"];

    if (!v13 || !v15)
    {
      v25 = os_log_create("com.apple.amp.itunescloudd", "Push");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = messageCopy;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}@ Received invalid Playback Position message %{public}@", buf, 0x16u);
      }

      v24 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:0];
      goto LABEL_34;
    }

    v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [messageCopy accountDSID]);
    v17 = [ICUserIdentity specificAccountWithDSID:v16];

    if (v17)
    {
      if ((MSVDeviceSupportsMultipleLibraries() & 1) == 0)
      {
        v18 = +[ICUserIdentity activeAccount];
        v19 = v18;
        if (v17 == v18)
        {
        }

        else
        {
          v20 = [v17 isEqual:v18];

          if ((v20 & 1) == 0)
          {
            v21 = sub_100102804();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              v22 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [messageCopy accountDSID]);
              *buf = 138543619;
              *&buf[4] = self;
              *&buf[12] = 2113;
              *&buf[14] = v22;
              _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "%{public}@ _handleStoreBookkeeperPushMessage: Ignoring update for non-active dsid=%{private}@", buf, 0x16u);
            }

            v23 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:0];
LABEL_21:
            v24 = v23;
LABEL_33:

LABEL_34:
            goto LABEL_35;
          }
        }
      }

      v33 = 0;
      v34 = &v33;
      v35 = 0x2050000000;
      v28 = qword_100213E28;
      v36 = qword_100213E28;
      if (!qword_100213E28)
      {
        *buf = _NSConcreteStackBlock;
        *&buf[8] = 3221225472;
        *&buf[16] = sub_100110204;
        v38 = &unk_1001DF318;
        v39 = &v33;
        sub_100110204(buf);
        v28 = v34[3];
      }

      v29 = v28;
      _Block_object_dispose(&v33, 8);
      v30 = [v28 musicLibraryForUserAccount:{v17, v33}];
      if (v30)
      {
        if (![v13 intValue])
        {
          libraryUID = [v30 libraryUID];
          [v11 synchronizePlaybackPositionsForLibraryWithIdentifier:libraryUID forDomain:v15 isCheckpoint:1];
        }

        v24 = 0;
      }

      else
      {
        v32 = os_log_create("com.apple.amp.itunescloudd", "Push");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          *&buf[4] = self;
          *&buf[12] = 2114;
          *&buf[14] = messageCopy;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}@ Failed to find user library for message %{public}@", buf, 0x16u);
        }

        v24 = [NSError errorWithDomain:ICErrorDomain code:0 userInfo:0];
      }

      goto LABEL_33;
    }

    v26 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [messageCopy accountDSID]);
      *buf = 138543619;
      *&buf[4] = self;
      *&buf[12] = 2113;
      *&buf[14] = v27;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "%{public}@ _handleStoreBookkeeperPushMessage: Could not find userIdentity with dsid=%{private}@", buf, 0x16u);
    }

    v23 = [NSError errorWithDomain:ICErrorDomain code:-7401 userInfo:0];
    goto LABEL_21;
  }

  v24 = 0;
LABEL_35:
  handlerCopy[2](handlerCopy, v24);
}

- (void)_handleITunesStorePushMessage:(id)message withCompletionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v9 = +[ICDeviceInfo currentDeviceInfo];
  isMac = [v9 isMac];

  actionType = [messageCopy actionType];
  if (!isMac)
  {
    if (actionType > 24)
    {
      if ((actionType - 27) < 2 || actionType == 25)
      {
        [(CloudPushNotificationController *)self _handleInAppMessagesUpdatedPushMessage:messageCopy];
        goto LABEL_31;
      }

      if (actionType == 40)
      {
        WeakRetained = objc_loadWeakRetained(&self->_mediaUserStateCenterServer);
        amsPushHandler = WeakRetained;
        if (WeakRetained && [WeakRetained conformsToProtocol:&OBJC_PROTOCOL___ICMediaUserStateCenterServerProtocol])
        {
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_10011095C;
          v29[3] = &unk_1001DEAC8;
          v29[4] = self;
          [amsPushHandler refreshSocialProfilesWithReply:v29];
          goto LABEL_15;
        }

        userInfo4 = os_log_create("com.apple.amp.itunescloudd", "Push");
        if (!os_log_type_enabled(userInfo4, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *buf = 138543362;
        selfCopy3 = self;
        v17 = "%{public}@ Dropping MusicSocialProfileUpdate push notification. _mediaUserStateCenterServer=nil";
        v18 = userInfo4;
        v19 = 12;
        goto LABEL_13;
      }
    }

    else
    {
      if (actionType <= 14)
      {
        if (actionType != 12)
        {
          if (actionType == 14)
          {
            v12 = +[ICMusicSubscriptionStatusController sharedStatusController];
            [v12 invalidateCachedSubscriptionStatusWithCompletionHandler:&stru_1001DEA80];
            v13 = +[ICUserIdentity activeAccount];
            v14 = &stru_1001DEAA0;
            goto LABEL_4;
          }

          goto LABEL_33;
        }

        v23 = os_log_create("com.apple.amp.itunescloudd", "Push");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "[Lease] - Posting darwin notification for lease end'", buf, 2u);
        }

        v22 = @"com.apple.itunesstored.PlaybackLeaseDidEnd";
LABEL_30:
        CFNotificationCenterPostNotification(DarwinNotifyCenter, v22, 0, 0, 1u);
        goto LABEL_31;
      }

      if (actionType == 15)
      {
        v12 = +[CloudContentTasteUpdateRequestListener sharedContentTasteRequestListener];
        [v12 handleContentTasteChangedNotification];
        goto LABEL_5;
      }

      if (actionType == 20)
      {
        moduleIdentifier = [messageCopy moduleIdentifier];
        if (moduleIdentifier != 1)
        {
          v27 = moduleIdentifier;
          v12 = os_log_create("com.apple.amp.itunescloudd", "Push");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(selfCopy3) = v27;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unknown for-you module identifier %d", buf, 8u);
          }

          goto LABEL_5;
        }

        v22 = ICRecentlyPlayedDidChangeNotification;
        goto LABEL_30;
      }
    }

LABEL_33:
    amsPushHandler = [(CloudPushNotificationController *)self amsPushHandler];
    userInfo = [messageCopy userInfo];
    v25 = [amsPushHandler shouldHandleNotification:userInfo];

    if (v25)
    {
      userInfo2 = [messageCopy userInfo];
      [amsPushHandler handleNotification:userInfo2];

      goto LABEL_15;
    }

    userInfo4 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(userInfo4, OS_LOG_TYPE_DEFAULT))
    {
      userInfo3 = [messageCopy userInfo];
      *buf = 138543618;
      selfCopy3 = self;
      v32 = 2114;
      v33 = userInfo3;
      _os_log_impl(&_mh_execute_header, userInfo4, OS_LOG_TYPE_DEFAULT, "%{public}@ Received unsupported store push notification - ignoring. userInfo=%{public}@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  if (actionType != 14)
  {
    amsPushHandler = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (!os_log_type_enabled(amsPushHandler, OS_LOG_TYPE_DEFAULT))
    {
LABEL_15:

      goto LABEL_31;
    }

    userInfo4 = [messageCopy userInfo];
    *buf = 138543618;
    selfCopy3 = self;
    v32 = 2114;
    v33 = userInfo4;
    v17 = "%{public}@ Received unsupported store push notification - ignoring. userInfo=%{public}@";
    v18 = amsPushHandler;
    v19 = 22;
LABEL_13:
    _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, v17, buf, v19);
LABEL_14:

    goto LABEL_15;
  }

  v12 = +[ICMusicSubscriptionStatusController sharedStatusController];
  [v12 invalidateCachedSubscriptionStatusWithCompletionHandler:&stru_1001DEA20];
  v13 = +[ICUserIdentity activeAccount];
  v14 = &stru_1001DEA60;
LABEL_4:
  [v12 getSubscriptionStatusForUserIdentity:v13 bypassingCache:1 withCompletionHandler:v14];

LABEL_5:
LABEL_31:
  handlerCopy[2](handlerCopy, 0);
}

- (void)_handleJaliscoPushMessage:(id)message withCompletionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  accountDSID = [messageCopy accountDSID];
  if (accountDSID)
  {
    v9 = [NSNumber numberWithLongLong:accountDSID];
    v10 = [ICUserIdentity specificAccountWithDSID:v9];
  }

  else
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      userInfo = [messageCopy userInfo];
      *buf = 138543618;
      selfCopy = self;
      v21 = 2114;
      v22 = userInfo;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Received jalisco push notification with no DSID - using active account. userInfo=%{public}@", buf, 0x16u);
    }

    v10 = +[ICUserIdentity activeAccount];
  }

  v13 = +[ICUserIdentityStore defaultIdentityStore];
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100110CA4;
  v16[3] = &unk_1001DE9E0;
  v16[4] = self;
  v17 = messageCopy;
  v18 = v10;
  v14 = v10;
  v15 = messageCopy;
  [v13 getPropertiesForUserIdentity:v14 completionHandler:v16];

  handlerCopy[2](handlerCopy, 0);
}

- (void)_handleSagaPushMessage:(id)message withCompletionHandler:(id)handler
{
  messageCopy = message;
  handlerCopy = handler;
  accountDSID = [messageCopy accountDSID];
  if (!accountDSID)
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      userInfo = [messageCopy userInfo];
      *buf = 138543618;
      selfCopy = self;
      v32 = 2114;
      v33 = userInfo;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Received saga push notification with no DSID - using active account. userInfo=%{public}@", buf, 0x16u);
    }
  }

  v11 = +[ICDefaults standardDefaults];
  sagaPushNotificationTimes = [v11 sagaPushNotificationTimes];
  v13 = [sagaPushNotificationTimes mutableCopy];

  if (v13)
  {
    if (accountDSID)
    {
      goto LABEL_7;
    }

LABEL_16:
    v19 = @"0";
    goto LABEL_17;
  }

  v13 = [NSMutableDictionary dictionaryWithCapacity:1];
  if (!accountDSID)
  {
    goto LABEL_16;
  }

LABEL_7:
  v14 = &v34 + 1;
  quot = accountDSID;
  do
  {
    v16 = lldiv(quot, 10);
    quot = v16.quot;
    if (v16.rem >= 0)
    {
      LOBYTE(v17) = v16.rem;
    }

    else
    {
      v17 = -v16.rem;
    }

    *(v14 - 2) = v17 + 48;
    v18 = (v14 - 2);
    --v14;
  }

  while (v16.quot);
  if (accountDSID < 0)
  {
    *(v14 - 2) = 45;
    v18 = (v14 - 2);
  }

  v19 = CFStringCreateWithBytes(0, v18, &v34 - v18, 0x8000100u, 0);
LABEL_17:
  v20 = +[NSDate now];
  [v13 setObject:v20 forKeyedSubscript:v19];

  v21 = +[ICDefaults standardDefaults];
  [v21 setSagaPushNotificationTimes:v13];

  if (accountDSID)
  {
    v22 = [NSNumber numberWithLongLong:accountDSID];
    v23 = [ICUserIdentity specificAccountWithDSID:v22];
  }

  else
  {
    v23 = +[ICUserIdentity activeAccount];
  }

  v24 = +[ICUserIdentityStore defaultIdentityStore];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_100111378;
  v27[3] = &unk_1001DE9E0;
  v27[4] = self;
  v28 = messageCopy;
  v29 = v23;
  v25 = v23;
  v26 = messageCopy;
  [v24 getPropertiesForUserIdentity:v25 completionHandler:v27];

  handlerCopy[2](handlerCopy, 0);
}

- (void)_handleUserIdentityStoreDidChangeNotification:(id)notification
{
  v4 = os_log_create("com.apple.amp.itunescloudd", "Push");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ received accounts changed notification - updating push notifications", &v5, 0xCu);
  }

  [(CloudPushNotificationController *)self _updatePushNotificationsRegistration];
}

- (void)_registerMediaKinds:(id)kinds usingRequestContext:(id)context withCompletion:(id)completion
{
  kindsCopy = kinds;
  contextCopy = context;
  completionCopy = completion;
  v11 = +[ICDeviceInfo currentDeviceInfo];
  isMac = [v11 isMac];

  if (isMac)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v13 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      selfCopy = self;
      v23 = 2114;
      v24 = kindsCopy;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Registering updated media types: %{public}@", buf, 0x16u);
    }

    v19 = @"media-kinds";
    v20 = kindsCopy;
    v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v15 = [ICPushNotificationsEnableTypesRequest alloc];
    v16 = [v15 initWithRequestContext:contextCopy notificationType:ICPushNotificationTypePurchase notificationParameters:v14];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100111A50;
    v17[3] = &unk_1001DE9B8;
    v17[4] = self;
    v18 = completionCopy;
    [v16 performRequestWithResponseHandler:v17];
  }
}

- (void)_registerAPNSToken:(id)token usingRequestContext:(id)context withCompletion:(id)completion
{
  tokenCopy = token;
  contextCopy = context;
  completionCopy = completion;
  v11 = os_log_create("com.apple.amp.itunescloudd", "Push");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v19 = 2114;
    v20 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Registering updated push token %{public}@", buf, 0x16u);
  }

  v12 = +[ICDeviceInfo currentDeviceInfo];
  isWatch = [v12 isWatch];

  if (isWatch)
  {
    v14 = [[ICPushNotificationsRegisterAPNSTokenRequest alloc] initWithRequestContext:contextCopy token:tokenCopy];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100111D74;
    v15[3] = &unk_1001DE9B8;
    v15[4] = self;
    v16 = completionCopy;
    [v14 performRequestWithResponseHandler:v15];
  }

  else if (completionCopy)
  {
    (*(completionCopy + 2))(completionCopy, 0);
  }
}

- (void)_updateRegistrationForConfiguration:(id)configuration completion:(id)completion
{
  configurationCopy = configuration;
  completionCopy = completion;
  v8 = os_log_create("com.apple.amp.itunescloudd", "Push");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v18 = 2114;
    v19 = configurationCopy;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating push registration for configuration %{public}@", buf, 0x16u);
  }

  userIdentityStore = [configurationCopy userIdentityStore];
  userIdentity = [configurationCopy userIdentity];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100112068;
  v13[3] = &unk_1001DE990;
  v13[4] = self;
  v14 = configurationCopy;
  v15 = completionCopy;
  v11 = completionCopy;
  v12 = configurationCopy;
  [userIdentityStore getPropertiesForUserIdentity:userIdentity completionHandler:v13];
}

- (void)_createAPNSConnectionWithCompletion:(id)completion
{
  completionCopy = completion;
  v5 = [ICStoreRequestContext alloc];
  v6 = +[ICUserIdentity activeAccount];
  v7 = [v5 initWithIdentity:v6];

  v8 = +[ICURLBagProvider sharedBagProvider];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100112CF0;
  v10[3] = &unk_1001DE8F0;
  v10[4] = self;
  v11 = completionCopy;
  v9 = completionCopy;
  [v8 getBagForRequestContext:v7 withCompletionHandler:v10];
}

- (void)_activeConfigurationsWithCompletion:(id)completion
{
  completionCopy = completion;
  accountManager = [(CloudPushNotificationController *)self accountManager];
  supportedConfigurations = [accountManager supportedConfigurations];

  if (supportedConfigurations)
  {
    completionCopy[2](completionCopy, supportedConfigurations, 0);
  }

  else
  {
    v7 = [ICConnectionConfiguration alloc];
    v8 = +[ICUserIdentity activeAccount];
    v9 = [v7 initWithUserIdentity:v8];

    v11 = v9;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    completionCopy[2](completionCopy, v10, 0);
  }
}

- (void)_updatePushNotificationsRegistration
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100113468;
  block[3] = &unk_1001DF578;
  block[4] = self;
  dispatch_async(queue, block);
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)reachability
{
  reachabilityCopy = reachability;
  if ([reachabilityCopy isRemoteServerLikelyReachable] && objc_msgSend(reachabilityCopy, "isCurrentNetworkLinkHighQuality"))
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Network reachability changed to available - updating push registration if needed", &v6, 0xCu);
    }

    [(CloudPushNotificationController *)self _updatePushNotificationsRegistration];
  }
}

- (void)connection:(id)connection didReceiveMessageForTopic:(id)topic userInfo:(id)info
{
  connectionCopy = connection;
  topicCopy = topic;
  infoCopy = info;
  v11 = os_log_create("com.apple.amp.itunescloudd", "Push");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = topicCopy;
    v27 = 2114;
    v28 = infoCopy;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received push notification on topic %{public}@: %{public}@", buf, 0x16u);
  }

  v12 = [ICAsyncBlockOperation alloc];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100113F0C;
  v20 = &unk_1001DE878;
  v21 = connectionCopy;
  selfCopy = self;
  v23 = topicCopy;
  v24 = infoCopy;
  v13 = infoCopy;
  v14 = topicCopy;
  v15 = connectionCopy;
  v16 = [v12 initWithStartHandler:&v17];
  [(NSOperationQueue *)self->_operationQueue addOperation:v16, v17, v18, v19, v20];
}

- (void)connection:(id)connection didReceivePublicToken:(id)token
{
  tokenCopy = token;
  v6 = os_log_create("com.apple.amp.itunescloudd", "Push");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    selfCopy = self;
    v10 = 2114;
    v11 = tokenCopy;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ received new token '%{public}@'", &v8, 0x16u);
  }

  currentAPNSToken = self->_currentAPNSToken;
  self->_currentAPNSToken = tokenCopy;

  [(CloudPushNotificationController *)self _updatePushNotificationsRegistration];
}

- (void)dealloc
{
  v3 = +[ICEnvironmentMonitor sharedMonitor];
  [v3 unregisterObserver:self];

  connection = [(CloudPushNotificationController *)self connection];
  [connection setDelegate:0];

  v5.receiver = self;
  v5.super_class = CloudPushNotificationController;
  [(CloudPushNotificationController *)&v5 dealloc];
}

- (CloudPushNotificationController)initWithAccountManager:(id)manager
{
  managerCopy = manager;
  v26.receiver = self;
  v26.super_class = CloudPushNotificationController;
  v5 = [(CloudPushNotificationController *)&v26 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_accountManager, managerCopy);
    v7 = objc_alloc_init(NSOperationQueue);
    operationQueue = v6->_operationQueue;
    v6->_operationQueue = v7;

    [(NSOperationQueue *)v6->_operationQueue setMaxConcurrentOperationCount:1];
    [(NSOperationQueue *)v6->_operationQueue setQualityOfService:17];
    [(NSOperationQueue *)v6->_operationQueue setName:@"com.apple.itunescloudd.NSOperationQueue.CloudPushNotificationController.operationQueue"];
    v9 = dispatch_queue_create("com.apple.itunescloudd.NSOperationQueue.CloudPushNotificationController.updatePushNotificationsOperationSyncQueue", 0);
    queue = v6->_queue;
    v6->_queue = v9;

    v11 = [ICDCloudPushNotificationRegistrationState alloc];
    v12 = +[ICDefaults standardDefaults];
    pushNotificationState = [v12 pushNotificationState];
    v14 = [(ICDCloudPushNotificationRegistrationState *)v11 initWithDictionaryRepresentation:pushNotificationState];
    currentRegistrationState = v6->_currentRegistrationState;
    v6->_currentRegistrationState = v14;

    v16 = +[ICEnvironmentMonitor sharedMonitor];
    [v16 registerObserver:v6];

    v17 = +[ICEnvironmentMonitor sharedMonitor];
    if ([v17 isRemoteServerLikelyReachable])
    {
      v18 = +[ICEnvironmentMonitor sharedMonitor];
      isCurrentNetworkLinkHighQuality = [v18 isCurrentNetworkLinkHighQuality];

      if (isCurrentNetworkLinkHighQuality)
      {
        [(CloudPushNotificationController *)v6 _updatePushNotificationsRegistration];
      }
    }

    else
    {
    }

    v20 = +[NSNotificationCenter defaultCenter];
    [v20 addObserver:v6 selector:"_handleUserIdentityStoreDidChangeNotification:" name:ICUserIdentityStoreDidChangeNotification object:0];

    v21 = objc_alloc_init(AMSPushConfiguration);
    [v21 setUserNotificationExtensionId:@"music-notification-default"];
    [v21 setEngagementPushTopic:@"com.apple.music.engagement"];
    v22 = [AMSBag bagForProfile:@"Music" profileVersion:@"1"];
    v23 = [[AMSPushHandler alloc] initWithConfiguration:v21 bag:v22];
    amsPushHandler = v6->_amsPushHandler;
    v6->_amsPushHandler = v23;

    [(AMSPushHandler *)v6->_amsPushHandler setDelegate:v6];
  }

  return v6;
}

@end