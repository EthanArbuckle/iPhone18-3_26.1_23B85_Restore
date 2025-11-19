@interface CloudPushNotificationController
- (BOOL)_isSupportedJaliscoMediaKind:(id)a3;
- (CloudPushNotificationController)initWithAccountManager:(id)a3;
- (CloudUserNotificationControllerProtocol)userNotificationController;
- (ICDAccountManaging)accountManager;
- (ICMediaUserStateCenterServerProtocol)mediaUserStateCenterServer;
- (ICPlaybackPositionService)playbackPositionServer;
- (id)_intentPayloadForMessage:(id)a3;
- (id)_supportedJaliscoMediaKinds;
- (id)_supportedJaliscoMediaKindsWithSagaEnabled;
- (void)_activeConfigurationsWithCompletion:(id)a3;
- (void)_createAPNSConnectionWithCompletion:(id)a3;
- (void)_dispatchMusicPushNotificationIntentForMessage:(id)a3;
- (void)_dispatchPodcastsPushNotificationIntentForMessage:(id)a3 withCompletionHandler:(id)a4;
- (void)_handleITunesStorePushMessage:(id)a3 withCompletionHandler:(id)a4;
- (void)_handleInAppMessagesUpdatedPushMessage:(id)a3;
- (void)_handleJaliscoPushMessage:(id)a3 withCompletionHandler:(id)a4;
- (void)_handlePodcastsPushMessage:(id)a3 withCompletionHandler:(id)a4;
- (void)_handleSagaPushMessage:(id)a3 withCompletionHandler:(id)a4;
- (void)_handleStoreBookkeeperPushMessage:(id)a3 withCompletionHandler:(id)a4;
- (void)_handleUserIdentityStoreDidChangeNotification:(id)a3;
- (void)_registerAPNSToken:(id)a3 usingRequestContext:(id)a4 withCompletion:(id)a5;
- (void)_registerMediaKinds:(id)a3 usingRequestContext:(id)a4 withCompletion:(id)a5;
- (void)_updatePushNotificationsRegistration;
- (void)_updateRegistrationForConfiguration:(id)a3 completion:(id)a4;
- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5;
- (void)connection:(id)a3 didReceivePublicToken:(id)a4;
- (void)dealloc;
- (void)environmentMonitorDidChangeNetworkReachability:(id)a3;
- (void)pushPayload:(id)a3 withBadgeRequest:(id)a4;
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

- (void)pushPayload:(id)a3 withBadgeRequest:(id)a4
{
  v5 = a4;
  v6 = [(CloudPushNotificationController *)self userNotificationController];
  if (!v6)
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

  v7 = [v5 badgeIdentifier];
  v8 = [v7 isEqualToString:@"appIcon"];

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

  [v6 badgeAppWithRequest:v5];
LABEL_10:
}

- (id)_intentPayloadForMessage:(id)a3
{
  v4 = [a3 userInfo];
  v12 = 0;
  v5 = [NSJSONSerialization dataWithJSONObject:v4 options:0 error:&v12];
  v6 = v12;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = [v6 msv_description];
      *buf = 138543618;
      v14 = self;
      v15 = 2114;
      v16 = v8;
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
      v14 = self;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "%{public}@ Failed to create payload string", buf, 0xCu);
    }
  }

  v9 = 0;
LABEL_11:

  return v9;
}

- (void)_dispatchPodcastsPushNotificationIntentForMessage:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = [(CloudPushNotificationController *)self _intentPayloadForMessage:a3];
  if (v7)
  {
    v8 = objc_alloc_init(_TtC12itunescloudd22ICDAppIntentDispatcher);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10010F410;
    v9[3] = &unk_1001DF5C8;
    v10 = v6;
    [(ICDAppIntentDispatcher *)v8 dispatchPodcastsPushNotificationIntentWithTopic:@"com.apple.podcasts" payload:v7 completionHandler:v9];
  }
}

- (void)_dispatchMusicPushNotificationIntentForMessage:(id)a3
{
  v3 = [(CloudPushNotificationController *)self _intentPayloadForMessage:a3];
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

- (BOOL)_isSupportedJaliscoMediaKind:(id)a3
{
  v4 = a3;
  v5 = [(CloudPushNotificationController *)self _supportedJaliscoMediaKinds];
  v6 = [v5 containsObject:v4];

  return v6;
}

- (void)_handleInAppMessagesUpdatedPushMessage:(id)a3
{
  v4 = a3;
  v5 = [v4 apsPayload];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 ic_intValueForKey:@"payloadVersion"];
    if (v7 >= 2)
    {
      if (v7 == 2)
      {
        v11 = os_log_create("com.apple.amp.itunescloudd", "Push");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v15 = self;
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
          v9 = [v4 userInfo];
          *buf = 138543618;
          v15 = self;
          v16 = 2114;
          v17 = v9;
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
        v9 = [v4 userInfo];
        *buf = 138543618;
        v15 = self;
        v16 = 2114;
        v17 = v9;
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
      v9 = [v4 userInfo];
      *buf = 138543618;
      v15 = self;
      v16 = 2114;
      v17 = v9;
      v10 = "%{public}@ No aps payload - ignoring push %{public}@";
      goto LABEL_14;
    }
  }
}

- (void)_handlePodcastsPushMessage:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = os_log_create("com.apple.amp.itunescloudd", "Push");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 138543362;
    v10 = self;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Received Podcasts push - forwarding to AppIntent", &v9, 0xCu);
  }

  [(CloudPushNotificationController *)self _dispatchPodcastsPushNotificationIntentForMessage:v7 withCompletionHandler:v6];
}

- (void)_handleStoreBookkeeperPushMessage:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.itunescloudd", "Push");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 userInfo];
    *buf = 138543619;
    *&buf[4] = self;
    *&buf[12] = 2113;
    *&buf[14] = v9;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ _handleStoreBookkeeperPushMessage: %{private}@", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_playbackPositionServer);
  v11 = WeakRetained;
  if (WeakRetained && [WeakRetained conformsToProtocol:&OBJC_PROTOCOL___ICPlaybackPositionService])
  {
    v12 = [v6 userInfo];
    v13 = [v12 objectForKeyedSubscript:@"3"];

    v14 = [v6 userInfo];
    v15 = [v14 objectForKeyedSubscript:@"1"];

    if (!v13 || !v15)
    {
      v25 = os_log_create("com.apple.amp.itunescloudd", "Push");
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        *&buf[4] = self;
        *&buf[12] = 2114;
        *&buf[14] = v6;
        _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "%{public}@ Received invalid Playback Position message %{public}@", buf, 0x16u);
      }

      v24 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:0];
      goto LABEL_34;
    }

    v16 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 accountDSID]);
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
              v22 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 accountDSID]);
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
          v31 = [v30 libraryUID];
          [v11 synchronizePlaybackPositionsForLibraryWithIdentifier:v31 forDomain:v15 isCheckpoint:1];
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
          *&buf[14] = v6;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "%{public}@ Failed to find user library for message %{public}@", buf, 0x16u);
        }

        v24 = [NSError errorWithDomain:ICErrorDomain code:0 userInfo:0];
      }

      goto LABEL_33;
    }

    v26 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
    {
      v27 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [v6 accountDSID]);
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
  v7[2](v7, v24);
}

- (void)_handleITunesStorePushMessage:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v9 = +[ICDeviceInfo currentDeviceInfo];
  v10 = [v9 isMac];

  v11 = [v6 actionType];
  if (!v10)
  {
    if (v11 > 24)
    {
      if ((v11 - 27) < 2 || v11 == 25)
      {
        [(CloudPushNotificationController *)self _handleInAppMessagesUpdatedPushMessage:v6];
        goto LABEL_31;
      }

      if (v11 == 40)
      {
        WeakRetained = objc_loadWeakRetained(&self->_mediaUserStateCenterServer);
        v15 = WeakRetained;
        if (WeakRetained && [WeakRetained conformsToProtocol:&OBJC_PROTOCOL___ICMediaUserStateCenterServerProtocol])
        {
          v29[0] = _NSConcreteStackBlock;
          v29[1] = 3221225472;
          v29[2] = sub_10011095C;
          v29[3] = &unk_1001DEAC8;
          v29[4] = self;
          [v15 refreshSocialProfilesWithReply:v29];
          goto LABEL_15;
        }

        v16 = os_log_create("com.apple.amp.itunescloudd", "Push");
        if (!os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_14;
        }

        *buf = 138543362;
        v31 = self;
        v17 = "%{public}@ Dropping MusicSocialProfileUpdate push notification. _mediaUserStateCenterServer=nil";
        v18 = v16;
        v19 = 12;
        goto LABEL_13;
      }
    }

    else
    {
      if (v11 <= 14)
      {
        if (v11 != 12)
        {
          if (v11 == 14)
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

      if (v11 == 15)
      {
        v12 = +[CloudContentTasteUpdateRequestListener sharedContentTasteRequestListener];
        [v12 handleContentTasteChangedNotification];
        goto LABEL_5;
      }

      if (v11 == 20)
      {
        v21 = [v6 moduleIdentifier];
        if (v21 != 1)
        {
          v27 = v21;
          v12 = os_log_create("com.apple.amp.itunescloudd", "Push");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            LODWORD(v31) = v27;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Unknown for-you module identifier %d", buf, 8u);
          }

          goto LABEL_5;
        }

        v22 = ICRecentlyPlayedDidChangeNotification;
        goto LABEL_30;
      }
    }

LABEL_33:
    v15 = [(CloudPushNotificationController *)self amsPushHandler];
    v24 = [v6 userInfo];
    v25 = [v15 shouldHandleNotification:v24];

    if (v25)
    {
      v26 = [v6 userInfo];
      [v15 handleNotification:v26];

      goto LABEL_15;
    }

    v16 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v6 userInfo];
      *buf = 138543618;
      v31 = self;
      v32 = 2114;
      v33 = v28;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "%{public}@ Received unsupported store push notification - ignoring. userInfo=%{public}@", buf, 0x16u);
    }

    goto LABEL_14;
  }

  if (v11 != 14)
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (!os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
LABEL_15:

      goto LABEL_31;
    }

    v16 = [v6 userInfo];
    *buf = 138543618;
    v31 = self;
    v32 = 2114;
    v33 = v16;
    v17 = "%{public}@ Received unsupported store push notification - ignoring. userInfo=%{public}@";
    v18 = v15;
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
  v7[2](v7, 0);
}

- (void)_handleJaliscoPushMessage:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 accountDSID];
  if (v8)
  {
    v9 = [NSNumber numberWithLongLong:v8];
    v10 = [ICUserIdentity specificAccountWithDSID:v9];
  }

  else
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v6 userInfo];
      *buf = 138543618;
      v20 = self;
      v21 = 2114;
      v22 = v12;
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
  v17 = v6;
  v18 = v10;
  v14 = v10;
  v15 = v6;
  [v13 getPropertiesForUserIdentity:v14 completionHandler:v16];

  v7[2](v7, 0);
}

- (void)_handleSagaPushMessage:(id)a3 withCompletionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 accountDSID];
  if (!v8)
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v6 userInfo];
      *buf = 138543618;
      v31 = self;
      v32 = 2114;
      v33 = v10;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ Received saga push notification with no DSID - using active account. userInfo=%{public}@", buf, 0x16u);
    }
  }

  v11 = +[ICDefaults standardDefaults];
  v12 = [v11 sagaPushNotificationTimes];
  v13 = [v12 mutableCopy];

  if (v13)
  {
    if (v8)
    {
      goto LABEL_7;
    }

LABEL_16:
    v19 = @"0";
    goto LABEL_17;
  }

  v13 = [NSMutableDictionary dictionaryWithCapacity:1];
  if (!v8)
  {
    goto LABEL_16;
  }

LABEL_7:
  v14 = &v34 + 1;
  quot = v8;
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
  if (v8 < 0)
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

  if (v8)
  {
    v22 = [NSNumber numberWithLongLong:v8];
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
  v28 = v6;
  v29 = v23;
  v25 = v23;
  v26 = v6;
  [v24 getPropertiesForUserIdentity:v25 completionHandler:v27];

  v7[2](v7, 0);
}

- (void)_handleUserIdentityStoreDidChangeNotification:(id)a3
{
  v4 = os_log_create("com.apple.amp.itunescloudd", "Push");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = self;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ received accounts changed notification - updating push notifications", &v5, 0xCu);
  }

  [(CloudPushNotificationController *)self _updatePushNotificationsRegistration];
}

- (void)_registerMediaKinds:(id)a3 usingRequestContext:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = +[ICDeviceInfo currentDeviceInfo];
  v12 = [v11 isMac];

  if (v12)
  {
    v10[2](v10, 0);
  }

  else
  {
    v13 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      v22 = self;
      v23 = 2114;
      v24 = v8;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ Registering updated media types: %{public}@", buf, 0x16u);
    }

    v19 = @"media-kinds";
    v20 = v8;
    v14 = [NSDictionary dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v15 = [ICPushNotificationsEnableTypesRequest alloc];
    v16 = [v15 initWithRequestContext:v9 notificationType:ICPushNotificationTypePurchase notificationParameters:v14];
    v17[0] = _NSConcreteStackBlock;
    v17[1] = 3221225472;
    v17[2] = sub_100111A50;
    v17[3] = &unk_1001DE9B8;
    v17[4] = self;
    v18 = v10;
    [v16 performRequestWithResponseHandler:v17];
  }
}

- (void)_registerAPNSToken:(id)a3 usingRequestContext:(id)a4 withCompletion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.amp.itunescloudd", "Push");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v18 = self;
    v19 = 2114;
    v20 = v8;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Registering updated push token %{public}@", buf, 0x16u);
  }

  v12 = +[ICDeviceInfo currentDeviceInfo];
  v13 = [v12 isWatch];

  if (v13)
  {
    v14 = [[ICPushNotificationsRegisterAPNSTokenRequest alloc] initWithRequestContext:v9 token:v8];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_100111D74;
    v15[3] = &unk_1001DE9B8;
    v15[4] = self;
    v16 = v10;
    [v14 performRequestWithResponseHandler:v15];
  }

  else if (v10)
  {
    (*(v10 + 2))(v10, 0);
  }
}

- (void)_updateRegistrationForConfiguration:(id)a3 completion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = os_log_create("com.apple.amp.itunescloudd", "Push");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = self;
    v18 = 2114;
    v19 = v6;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating push registration for configuration %{public}@", buf, 0x16u);
  }

  v9 = [v6 userIdentityStore];
  v10 = [v6 userIdentity];
  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100112068;
  v13[3] = &unk_1001DE990;
  v13[4] = self;
  v14 = v6;
  v15 = v7;
  v11 = v7;
  v12 = v6;
  [v9 getPropertiesForUserIdentity:v10 completionHandler:v13];
}

- (void)_createAPNSConnectionWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [ICStoreRequestContext alloc];
  v6 = +[ICUserIdentity activeAccount];
  v7 = [v5 initWithIdentity:v6];

  v8 = +[ICURLBagProvider sharedBagProvider];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100112CF0;
  v10[3] = &unk_1001DE8F0;
  v10[4] = self;
  v11 = v4;
  v9 = v4;
  [v8 getBagForRequestContext:v7 withCompletionHandler:v10];
}

- (void)_activeConfigurationsWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(CloudPushNotificationController *)self accountManager];
  v6 = [v5 supportedConfigurations];

  if (v6)
  {
    v4[2](v4, v6, 0);
  }

  else
  {
    v7 = [ICConnectionConfiguration alloc];
    v8 = +[ICUserIdentity activeAccount];
    v9 = [v7 initWithUserIdentity:v8];

    v11 = v9;
    v10 = [NSArray arrayWithObjects:&v11 count:1];
    v4[2](v4, v10, 0);
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

- (void)environmentMonitorDidChangeNetworkReachability:(id)a3
{
  v4 = a3;
  if ([v4 isRemoteServerLikelyReachable] && objc_msgSend(v4, "isCurrentNetworkLinkHighQuality"))
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "Push");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Network reachability changed to available - updating push registration if needed", &v6, 0xCu);
    }

    [(CloudPushNotificationController *)self _updatePushNotificationsRegistration];
  }
}

- (void)connection:(id)a3 didReceiveMessageForTopic:(id)a4 userInfo:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = os_log_create("com.apple.amp.itunescloudd", "Push");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v26 = v9;
    v27 = 2114;
    v28 = v10;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Received push notification on topic %{public}@: %{public}@", buf, 0x16u);
  }

  v12 = [ICAsyncBlockOperation alloc];
  v17 = _NSConcreteStackBlock;
  v18 = 3221225472;
  v19 = sub_100113F0C;
  v20 = &unk_1001DE878;
  v21 = v8;
  v22 = self;
  v23 = v9;
  v24 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  v16 = [v12 initWithStartHandler:&v17];
  [(NSOperationQueue *)self->_operationQueue addOperation:v16, v17, v18, v19, v20];
}

- (void)connection:(id)a3 didReceivePublicToken:(id)a4
{
  v5 = a4;
  v6 = os_log_create("com.apple.amp.itunescloudd", "Push");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543618;
    v9 = self;
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ received new token '%{public}@'", &v8, 0x16u);
  }

  currentAPNSToken = self->_currentAPNSToken;
  self->_currentAPNSToken = v5;

  [(CloudPushNotificationController *)self _updatePushNotificationsRegistration];
}

- (void)dealloc
{
  v3 = +[ICEnvironmentMonitor sharedMonitor];
  [v3 unregisterObserver:self];

  v4 = [(CloudPushNotificationController *)self connection];
  [v4 setDelegate:0];

  v5.receiver = self;
  v5.super_class = CloudPushNotificationController;
  [(CloudPushNotificationController *)&v5 dealloc];
}

- (CloudPushNotificationController)initWithAccountManager:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CloudPushNotificationController;
  v5 = [(CloudPushNotificationController *)&v26 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_accountManager, v4);
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
    v13 = [v12 pushNotificationState];
    v14 = [(ICDCloudPushNotificationRegistrationState *)v11 initWithDictionaryRepresentation:v13];
    currentRegistrationState = v6->_currentRegistrationState;
    v6->_currentRegistrationState = v14;

    v16 = +[ICEnvironmentMonitor sharedMonitor];
    [v16 registerObserver:v6];

    v17 = +[ICEnvironmentMonitor sharedMonitor];
    if ([v17 isRemoteServerLikelyReachable])
    {
      v18 = +[ICEnvironmentMonitor sharedMonitor];
      v19 = [v18 isCurrentNetworkLinkHighQuality];

      if (v19)
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