void sub_100052744(uint64_t a1)
{
  sub_100052BF4();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPHomeMonitor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213BD8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPHomeMonitorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICDMediaUserStateCenterServer.m" lineNumber:54 description:{@"Unable to find class %s", "MPHomeMonitor"}];

    __break(1u);
  }
}

void sub_10005280C(uint64_t a1)
{
  sub_100052BF4();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPHomeUserMonitor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213BE8 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPHomeUserMonitorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICDMediaUserStateCenterServer.m" lineNumber:55 description:{@"Unable to find class %s", "MPHomeUserMonitor"}];

    __break(1u);
  }
}

void sub_1000528D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) carrierBundleDeviceIdentifier];
  [v3 setCarrierBundleDeviceID:v4];

  [v3 setSubscriptionStatus:*(*(*(a1 + 48) + 8) + 40)];
  [v3 setLightweightSubscriptionStatus:*(*(*(a1 + 56) + 8) + 40)];
  v5 = [*(a1 + 32) cloudLibraryStateReason];
  v6 = [v5 objectForKey:@"CloudLibraryStateReasonKey"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = [v6 integerValue];
    if (v7 >= 7)
    {
      v8 = 2 * (v7 > 0xFFFFFFFFFFFFFFF7);
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  [v3 setCloudLibrarySyncStatus:v8];
  [v3 setUsesListeningHistory:(*(a1 + 72) & 1) == 0];
  v9 = *(a1 + 40);
  v10 = [*(a1 + 32) DSID];
  v11 = [v9 objectForKeyedSubscript:v10];
  [v3 setLibraryAuthTokenStatus:v11];

  if (*(*(*(a1 + 64) + 8) + 40))
  {
    [v3 setUserProfile:?];
  }

  v12 = [ICMusicUserStateCookies alloc];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100052ADC;
  v14[3] = &unk_1001DAFB0;
  v15 = *(a1 + 32);
  v13 = [v12 initWithBlock:v14];
  [v3 setCookies:v13];
}

void sub_100052ADC(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = +[ICHTTPCookieStore sharedCookieStore];
  v4 = [*(a1 + 32) DSID];
  v5 = [v10 getCookieWithName:@"itfe" userIdentifier:v4];
  v6 = [v5 value];
  [v3 setItfe:v6];

  v7 = [*(a1 + 32) DSID];
  v8 = [v10 getCookieWithName:@"xpAb" userIdentifier:v7];
  v9 = [v8 value];
  [v3 setXpab:v9];
}

void sub_100052BF4()
{
  v3[0] = 0;
  if (!qword_100213BE0)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100052D44;
    v3[4] = &unk_1001DF350;
    v3[5] = v3;
    v4 = off_1001DB348;
    v5 = 0;
    qword_100213BE0 = _sl_dlopen();
  }

  if (!qword_100213BE0)
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"ICDMediaUserStateCenterServer.m" lineNumber:53 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_100052D44(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100213BE0 = result;
  return result;
}

void sub_100052DB8(uint64_t a1)
{
  sub_100052E80();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("WLKConfigurationManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213BD0 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getWLKConfigurationManagerClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICDMediaUserStateCenterServer.m" lineNumber:50 description:{@"Unable to find class %s", "WLKConfigurationManager"}];

    __break(1u);
  }
}

void sub_100052E80()
{
  v3[0] = 0;
  if (!qword_100213BC8)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100052FD0;
    v3[4] = &unk_1001DF350;
    v3[5] = v3;
    v4 = off_1001DB330;
    v5 = 0;
    qword_100213BC8 = _sl_dlopen();
  }

  if (!qword_100213BC8)
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *WatchListKitLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"ICDMediaUserStateCenterServer.m" lineNumber:47 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_100052FD0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100213BC8 = result;
  return result;
}

void sub_100053044(uint64_t a1, void *a2, void *a3)
{
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v12 = 138543618;
      v13 = v8;
      v14 = 2114;
      v15 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ Failed to perform lightweight subscription status request. err=%{public}@", &v12, 0x16u);
    }

    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a3);
  }

  else
  {
    v9 = [a2 lightweightSubscriptionStatus];
    v10 = *(*(a1 + 56) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  dispatch_group_leave(*(a1 + 40));
}

BOOL sub_100053424(uint64_t a1, void *a2)
{
  v3 = [a2 dsid];

  if (!v3)
  {
    [MSVAutoBugCapture snapshotWithDomain:MSVAutoBugCaptureDomainiTunesCloud type:@"Bug" subType:@"ICMediaUserStateBug" context:@"UserState with nil dsid" triggerThresholdValues:0 events:*(a1 + 32) completion:0];
  }

  return v3 != 0;
}

void sub_1000534A8(id a1)
{
  v1 = +[NSDistributedNotificationCenter defaultCenter];
  [v1 postNotificationName:ICMediaUserStateCenterServerStateUpdatedNotification object:0 userInfo:0];
}

void sub_100053724(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch accounts forcing refresh after user updated notification. err=%{public}@", &v8, 0x16u);
    }
  }

  else
  {
    [*(a1 + 32) _notifyServerStateUpdatedIfNeeded:a2];
  }
}

void sub_100053BD8(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) _notifyServerStateUpdatedIfNeeded:a2];
  v3 = [*(a1 + 32) _sanitizedUserStatesForRemoteClientConnection:*(a1 + 40)];
  v4 = os_log_create("com.apple.amp.itunescloudd", "UserState_Oversize");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = 138543874;
    v8 = v5;
    v9 = 2114;
    v10 = v6;
    v11 = 2114;
    v12 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ refreshSocialProfilesWithReply: Returning updated user states to client connection %{public}@: %{public}@", &v7, 0x20u);
  }

  (*(*(a1 + 48) + 16))();
}

void sub_100053CE0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v13 = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ refreshSocialProfilesWithReply: Failed to get user states. err=%{public}@", &v13, 0x16u);
    }

    v8 = *(a1 + 48);
    v9 = [v5 msv_errorByRemovingUnsafeUserInfo];
    (*(v8 + 16))(v8, &__NSArray0__struct, v9);
  }

  else
  {
    [*(a1 + 32) _notifyServerStateUpdatedIfNeeded:a2];
    v9 = [*(a1 + 32) _sanitizedUserStatesForRemoteClientConnection:*(a1 + 40)];
    v10 = os_log_create("com.apple.amp.itunescloudd", "UserState_Oversize");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = 138543874;
      v14 = v11;
      v15 = 2114;
      v16 = v12;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ refreshSocialProfilesWithReply: Returning updated user states to client connection %{public}@: %{public}@", &v13, 0x20u);
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v9, 0);
  }
}

void sub_1000540D8(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v13 = 138543618;
      v14 = v7;
      v15 = 2114;
      v16 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get user states. err=%{public}@", &v13, 0x16u);
    }

    v8 = *(a1 + 48);
    v9 = [v5 msv_errorByRemovingUnsafeUserInfo];
    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    [*(a1 + 32) _notifyServerStateUpdatedIfNeeded:a2];
    v9 = [*(a1 + 32) _sanitizedUserStatesForRemoteClientConnection:*(a1 + 40)];
    v10 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v12 = *(a1 + 40);
      v13 = 138543874;
      v14 = v11;
      v15 = 2114;
      v16 = v12;
      v17 = 2114;
      v18 = v9;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ Returning updated user states to client connection %{public}@: %{public}@", &v13, 0x20u);
    }

    (*(*(a1 + 48) + 16))(*(a1 + 48), v9, 0);
  }
}

id sub_100054404(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = _NSConcreteStackBlock;
  v3[1] = 3221225472;
  v3[2] = sub_100054478;
  v3[3] = &unk_1001DEAC8;
  v3[4] = v1;
  return [v1 _fetchAccountsWithForceRefresh:0 completion:v3];
}

void sub_100054478(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 138543618;
      v9 = v7;
      v10 = 2114;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "%{public}@ Failed to get user states lazily. err=%{public}@", &v8, 0x16u);
    }
  }

  else
  {
    [*(a1 + 32) _notifyServerStateUpdatedIfNeeded:a2];
  }
}

void sub_100054F98(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "Default");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [v6 msv_description];
      v16 = 138543874;
      v17 = v9;
      v18 = 2114;
      v19 = v5;
      v20 = 2114;
      v21 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ received response: %{public}@ error=%{public}@", &v16, 0x20u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v16 = 138543618;
      v17 = v11;
      v18 = 2114;
      v19 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ received response: %{public}@", &v16, 0x16u);
    }

    if ([*(a1 + 32) isCancelled])
    {
      v12 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = *(a1 + 32);
        v16 = 138543362;
        v17 = v13;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Import was cancelled - returning", &v16, 0xCu);
      }

      v14 = *(a1 + 40);
      v15 = [NSError errorWithDomain:@"JaliscoImporterErrorDomain" code:-2 userInfo:0];
      (*(v14 + 16))(v14, v15);
    }

    else
    {
      [*(a1 + 32) _processItemsPageResponse:v5 withCompletion:*(a1 + 40)];
    }
  }
}

void sub_1000554CC(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "Default");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = [v3 msv_description];
      v8 = 138543362;
      v9 = v6;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Update complete error=%{public}@", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Update complete", &v8, 2u);
  }

  v7 = *(a1 + 32);
  if (v7)
  {
    (*(v7 + 16))(v7, v3);
  }
}

void sub_100055D44(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v27 = a4;
  v38[0] = _NSConcreteStackBlock;
  v38[1] = 3221225472;
  v38[2] = sub_1000561F4;
  v38[3] = &unk_1001DB390;
  v11 = a5;
  v39 = v11;
  v12 = objc_retainBlock(v38);
  v13 = [*(a1 + 32) objectForKey:v10];
  v23 = v11;
  v24 = v10;
  if (_NSIsNSDictionary())
  {
    v42 = v13;
    v14 = [NSArray arrayWithObjects:&v42 count:1];

    v13 = v14;
  }

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  obj = v13;
  v28 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
  if (v28)
  {
    v26 = *v35;
    do
    {
      v15 = 0;
      do
      {
        if (*v35 != v26)
        {
          objc_enumerationMutation(obj);
        }

        v29 = v15;
        v16 = [*(*(&v34 + 1) + 8 * v15) objectForKey:v27];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v17 = [v16 countByEnumeratingWithState:&v30 objects:v40 count:16];
        if (v17)
        {
          v18 = v17;
          v19 = *v31;
          do
          {
            for (i = 0; i != v18; i = i + 1)
            {
              if (*v31 != v19)
              {
                objc_enumerationMutation(v16);
              }

              v21 = *(*(&v30 + 1) + 8 * i);
              v22 = [v21 objectForKey:@"key"];
              if (_NSIsNSString() && [v22 length] && (v12[2])(v12, v21, v22))
              {
                [v9 addObject:v22];
              }
            }

            v18 = [v16 countByEnumeratingWithState:&v30 objects:v40 count:16];
          }

          while (v18);
        }

        v15 = v29 + 1;
      }

      while ((v29 + 1) != v28);
      v28 = [obj countByEnumeratingWithState:&v34 objects:v41 count:16];
    }

    while (v28);
  }
}

BOOL sub_1000560BC(id a1, NSDictionary *a2, NSString *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [(NSDictionary *)v4 objectForKey:@"reason"];
  v7 = [v6 isEqual:@"oversize"];

  if (v7)
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = 138412290;
      v13 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "ERROR: server rejected %@ because the payload was too big.", &v12, 0xCu);
    }
  }

  v9 = [(NSDictionary *)v4 objectForKey:@"reason"];
  v10 = [v9 isEqual:@"conflicted"];

  return v10;
}

uint64_t sub_1000561F4(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1)
  {
    return (*(v1 + 16))();
  }

  else
  {
    return 1;
  }
}

void sub_100056A34(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 responseData];
  if ([v7 length] && objc_msgSend(v5, "responseCode") == 200)
  {
    v8 = [NSInputStream inputStreamWithData:v7];
    v9 = [[DKDAAPParser alloc] initWithStream:v8];
    v10 = objc_alloc_init(PublishPlaylistResponseParserDelegate);
    [v9 setDelegate:v10];
    [v9 parse];
    v11 = [(PublishPlaylistResponseParserDelegate *)v10 playlistGlobalID];
    v12 = *(a1 + 32);
    v13 = *(v12 + 96);
    *(v12 + 96) = v11;

    v14 = [(PublishPlaylistResponseParserDelegate *)v10 playlistShareURL];
    v15 = *(a1 + 32);
    v16 = *(v15 + 104);
    *(v15 + 104) = v14;
  }

  v17 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = *(a1 + 32);
    v19 = *(v18 + 96);
    v20 = *(v18 + 104);
    v24 = 138543618;
    v25 = v19;
    v26 = 2114;
    v27 = v20;
    _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Received playlist globalID: %{public}@ shareURL: %{public}@", &v24, 0x16u);
  }

  v21 = [v5 responseCode];
  if (v21 <= 399)
  {
    if (v21 == 200 || v21 == 204)
    {
      if (*(*(a1 + 32) + 96))
      {
        v22 = 1;
      }

      else
      {
        v22 = 2;
      }

      goto LABEL_15;
    }

LABEL_14:
    v22 = 2;
    goto LABEL_15;
  }

  v22 = 3;
  if (v21 != 400 && v21 != 404)
  {
    goto LABEL_14;
  }

LABEL_15:
  if (v6)
  {
    v23 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v24 = 138543362;
      v25 = v6;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "SagaPublishPlaylistOperation failed with error: %{public}@", &v24, 0xCu);
    }
  }

  [*(a1 + 32) setStatus:v22];
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10005777C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 urlForBagKey:*(*(a1 + 32) + 24)];
  v7 = v6;
  if (a2 && v6)
  {
    v8 = [*(a1 + 32) _baseRequestWithURL:v6];
    v9 = [[ICStoreURLRequest alloc] initWithURLRequest:v8 requestContext:*(a1 + 40)];
    v10 = +[ICURLSessionManager defaultSession];
    v15[0] = _NSConcreteStackBlock;
    v15[1] = 3221225472;
    v15[2] = sub_10005798C;
    v15[3] = &unk_1001DF3C8;
    v15[4] = *(a1 + 32);
    [v10 enqueueDataRequest:v9 withCompletionHandler:v15];

LABEL_9:
    goto LABEL_10;
  }

  v11 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    v12 = *(a1 + 32);
    v13 = *(v12 + 24);
    *buf = 138543874;
    v17 = v12;
    v18 = 2114;
    v19 = v13;
    v20 = 2114;
    v21 = 0;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_ERROR, "%{public}@ Failed to fetch URL from bag using key %{public}@. error=%{public}@", buf, 0x20u);
  }

  v14 = *(a1 + 32);
  if (!v5)
  {
    v8 = [NSError errorWithDomain:ICErrorDomain code:-7200 userInfo:0];
    [v14 _finishWithError:v8];
    goto LABEL_9;
  }

  [v14 _finishWithError:v5];
LABEL_10:
}

void sub_10005798C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [v5 parsedBodyDictionary];
      v11 = [v6 msv_description];
      v14 = 138544130;
      v15 = v9;
      v16 = 2114;
      v17 = v5;
      v18 = 2114;
      v19 = v10;
      v20 = 2114;
      v21 = v11;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ request completed with response: %{public}@ body: %{public}@ error=%{public}@", &v14, 0x2Au);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = [v5 parsedBodyDictionary];
    v14 = 138543874;
    v15 = v12;
    v16 = 2114;
    v17 = v5;
    v18 = 2114;
    v19 = v13;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ request completed with response: %{public}@ body: %{public}@", &v14, 0x20u);
  }

  [*(a1 + 32) _finishWithResponse:v5 error:v6];
}

void sub_100057C98(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ICPlaybackPositionService];
  v2 = qword_100213BF0;
  qword_100213BF0 = v1;

  [qword_100213BF0 setClass:objc_opt_class() forSelector:"persistPlaybackPositionEntity:isCheckpoint:completionBlock:" argumentIndex:1 ofReply:1];
  v3 = qword_100213BF0;
  v4 = objc_opt_class();
  v5 = [NSSet setWithObjects:v4, objc_opt_class(), 0];
  [v3 setClasses:v5 forSelector:"pushPlaybackPositionEntity:completionBlock:" argumentIndex:0 ofReply:0];

  [qword_100213BF0 setClass:objc_opt_class() forSelector:"pushPlaybackPositionEntity:completionBlock:" argumentIndex:1 ofReply:1];
  v6 = qword_100213BF0;
  v7 = objc_opt_class();
  v8 = [NSSet setWithObjects:v7, objc_opt_class(), 0];
  [v6 setClasses:v8 forSelector:"pushPlaybackPositionEntity:completionBlock:" argumentIndex:2 ofReply:1];
}

void sub_100057F50(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 lastSyncedDomainVersion];

  if (!v4)
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v7 = [v3 accountDSID];
      v10 = 138543619;
      v11 = v6;
      v12 = 2113;
      v13 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ _handleUserIdentityStoreDidChangeNotification. Performing initial sync for user %{private}@", &v10, 0x16u);
    }

    v8 = *(a1 + 32);
    v9 = [v3 libraryUID];
    [v8 _performNotificationSyncForLibraryWithUID:v9];
  }
}

void sub_10005860C(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection interrupted from pid: %i", &v5, 0x12u);
  }
}

void sub_1000586D0(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = 138543618;
    v6 = v3;
    v7 = 1024;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ Connection invalidated from pid: %i", &v5, 0x12u);
  }
}

void sub_10005896C(void *a1, int a2, void *a3)
{
  v5 = a3;
  v6 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  v7 = v6;
  if (v5)
  {
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = a1[4];
      v9 = [v5 msv_description];
      v12 = 138544130;
      v13 = v8;
      v14 = 1024;
      v15 = a2;
      v16 = 2114;
      v17 = v5;
      v18 = 2114;
      v19 = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "[%{public}@ pushPlaybackPositionEntity:completionBlock:] Finished. success=%{BOOL}u error=%{public}@ error=%{public}@", &v12, 0x26u);
    }
  }

  else if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[4];
    v12 = 138543874;
    v13 = v10;
    v14 = 1024;
    v15 = a2;
    v16 = 2114;
    v17 = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[%{public}@ pushPlaybackPositionEntity:completionBlock:] Finished. success=%{BOOL}u error=%{public}@", &v12, 0x1Cu);
  }

  v11 = a1[5];
  (*(a1[6] + 16))();
}

void sub_100058CB4(uint64_t a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      v12 = [v7 msv_description];
      v14 = 138544386;
      v15 = v11;
      v16 = 1024;
      v17 = a2;
      v18 = 2114;
      v19 = v7;
      v20 = 2114;
      v21 = v8;
      v22 = 2114;
      v23 = v12;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}@ pullPlaybackPositionEntity:completionBlock:] Finished. success=%{BOOL}u error=%{public}@ cloudEntity=%{public}@ error=%{public}@", &v14, 0x30u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v13 = *(a1 + 32);
    v14 = 138544130;
    v15 = v13;
    v16 = 1024;
    v17 = a2;
    v18 = 2114;
    v19 = 0;
    v20 = 2114;
    v21 = v8;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@ pullPlaybackPositionEntity:completionBlock:] Finished. success=%{BOOL}u error=%{public}@ cloudEntity=%{public}@", &v14, 0x26u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100059198(void *a1, int a2, void *a3, void *a4)
{
  v7 = a3;
  v8 = a4;
  v9 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  v10 = v9;
  if (v7)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = a1[4];
      v12 = a1[5];
      v13 = [v8 count];
      v14 = [v7 msv_description];
      v17 = 138544386;
      v18 = v11;
      v19 = 2114;
      v20 = v12;
      v21 = 2048;
      v22 = v13;
      v23 = 1024;
      v24 = a2;
      v25 = 2114;
      v26 = v14;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, "[%{public}@ getLocalPlaybackPositionForEntityIdentifiers:] Completed request for library (%{public}@) with %llu entities. success=%{BOOL}u error=%{public}@", &v17, 0x30u);
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v15 = a1[4];
    v16 = a1[5];
    v17 = 138544130;
    v18 = v15;
    v19 = 2114;
    v20 = v16;
    v21 = 2048;
    v22 = [v8 count];
    v23 = 1024;
    v24 = a2;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[%{public}@ getLocalPlaybackPositionForEntityIdentifiers:] Completed request for library (%{public}@) with %llu entities. success=%{BOOL}u", &v17, 0x26u);
  }

  (*(a1[6] + 16))();
}

void sub_100059540(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 32);
    v8 = 138543618;
    v9 = v7;
    v10 = 1024;
    v11 = a2;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[%{public}@ persistPlaybackPositionEntity:isCheckpoint:completionBlock:] Finished. success=%{BOOL}u", &v8, 0x12u);
  }

  (*(*(a1 + 40) + 16))();
}

void sub_100059CE0(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "SDK");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v19 = 138543362;
      v20 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "Failed to badge application. err=%{public}@", &v19, 0xCu);
    }
  }

  v5 = [*(a1 + 32) metrics];

  if (v5)
  {
    v6 = [[AMSEngagement alloc] initWithBag:*(a1 + 40)];
    v7 = [*(a1 + 32) metrics];
    v8 = [v6 enqueueData:v7];
  }

  v9 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    LOWORD(v19) = 0;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEBUG, "Sucessfully badged application", &v19, 2u);
  }

  if ([*(a1 + 32) enabled])
  {
    v10 = *(a1 + 48);
    if (v10)
    {
      v11 = *(a1 + 56);
      if (v11)
      {
        v12 = [*(a1 + 32) badgeIdentifier];
        [v11 storeBadgeActionMetricsEvent:v10 identifier:v12];

        v13 = os_log_create("com.apple.amp.itunescloudd", "Default");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          v14 = [*(a1 + 32) badgeIdentifier];
          v19 = 138543362;
          v20 = v14;
          v15 = "Stored %{public}@ badging action metrics event";
          v16 = v13;
          v17 = OS_LOG_TYPE_DEBUG;
LABEL_18:
          _os_log_impl(&_mh_execute_header, v16, v17, v15, &v19, 0xCu);
        }
      }

      else
      {
        v13 = os_log_create("com.apple.amp.itunescloudd", "Default");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [*(a1 + 32) badgeIdentifier];
          v19 = 138543362;
          v20 = v14;
          v15 = "Dropping %{public}@ badging action metrics event; no badge controller";
          v16 = v13;
          v17 = OS_LOG_TYPE_INFO;
          goto LABEL_18;
        }
      }

LABEL_19:
    }
  }

  else
  {
    v18 = *(a1 + 56);
    if (v18)
    {
      v13 = [*(a1 + 32) badgeIdentifier];
      [v18 clearBadgeActionMetricsEventForIdentifier:v13];
      goto LABEL_19;
    }
  }
}

void sub_10005AA64(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = +[NSDate date];
  [v4 timeIntervalSince1970];
  v6 = v5;

  [v3 writeUInt32:v6 withCode:1836282979];
  [v3 writeUInt32:*(a1 + 40) withCode:1836413810];
  v8 = *(a1 + 32);
  v9 = v3;
  v7 = v3;
  ICDAAPUtilitiesWriteContainer();
}

void sub_10005AB54(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);
  ICDAAPUtilitiesWriteContainer();
}

uint64_t sub_10005ABEC(uint64_t a1, void *a2)
{
  v10 = a2;
  v3 = *(*(a1 + 32) + 152);
  [*(a1 + 40) writeUInt8:DAAPPinTypeFromICLibraryPinEntityType() withCode:1835625316];
  v4 = *(a1 + 32);
  if (v4[14] < 1)
  {
    if (v4[19] == 4)
    {
      v5 = 1634353513;
    }

    else
    {
      v5 = 1634888036;
    }

    [v10 writeString:v4[15] withCode:v5];
  }

  else
  {
    [v10 writeUInt32:? withCode:?];
  }

  v6 = [*(*(a1 + 32) + 128) length];
  v7 = *(a1 + 32);
  if (v6)
  {
    [v10 writeString:*(v7 + 128) withCode:1634364521];
  }

  else
  {
    v8 = *(v7 + 104);
    if (v8)
    {
      [v10 writeSInt32:v8 withCode:1634365556];
    }
  }

  if ([*(*(a1 + 32) + 136) length])
  {
    [v10 writeString:*(*(a1 + 32) + 136) withCode:1634364528];
  }

  return _objc_release_x1();
}

void sub_10005B5E0(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 48) newWithPersistentID:a2 inLibrary:*(a1 + 32)];
  [*(a1 + 40) addObject:v3];
}

uint64_t sub_10005B63C(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a4 = 1;
  return result;
}

void sub_10005BBF4(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 48) newWithPersistentID:a2 inLibrary:*(a1 + 32)];
  [*(a1 + 40) addObject:v3];
}

void sub_10005BC50(uint64_t a1, uint64_t a2, id *a3)
{
  if ([*a3 integerValue] != -1)
  {
    v5 = *(a1 + 32);
    v6 = [NSNumber numberWithLongLong:a2];
    [v5 addObject:v6];
  }
}

id sub_10005BCD8(void *a1, void *a2)
{
  v3 = ML3EntityPropertyKeepLocal;
  v12 = ML3EntityPropertyKeepLocal;
  v4 = a2;
  v5 = [NSArray arrayWithObjects:&v12 count:1];
  v6 = [ML3Track setValues:&off_1001EE218 forProperties:v5 forEntityPersistentIDs:a1[4] inLibrary:a1[5] usingConnection:v4];

  if (!v6)
  {
    return 0;
  }

  v7 = a1[6];
  v11[0] = v3;
  v11[1] = ML3EntityPropertyKeepLocalStatus;
  v8 = [NSArray arrayWithObjects:v11 count:2];
  v9 = [v7 setValues:&off_1001EE230 forProperties:v8];

  return v9;
}

void sub_10005C210(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = v6;
  if (v5)
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = objc_opt_class();
      v11 = *(*(a1 + 32) + 88);
      v12 = v10;
      v19 = 138543874;
      v20 = v10;
      v21 = 2048;
      v22 = [v11 count];
      v23 = 2114;
      v24 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "[%{public}@] Loading artwork info for %lu cloud IDs failed with error=%{public}@", &v19, 0x20u);
    }
  }

  else
  {
    v8 = [v6 artworkInfoDictionaries];
    if ([v8 count])
    {
      v13 = [v8 copy];
      v14 = *(a1 + 32);
      v15 = *(v14 + 104);
      *(v14 + 104) = v13;
    }
  }

  v16 = *(a1 + 32);
  v17 = [v7 responseCode];

  if (v17 > 399)
  {
    if (v17 != 404 && v17 != 400)
    {
      goto LABEL_13;
    }

    v18 = 3;
  }

  else
  {
    v18 = 1;
    if (v17 != 200 && v17 != 204)
    {
LABEL_13:
      v18 = 2;
    }
  }

  [v16 setStatus:v18];
  dispatch_semaphore_signal(*(a1 + 40));
}

void sub_10005C858(uint64_t a1, void *a2)
{
  v3 = *(a1 + 48);
  v4 = a2;
  [v4 writeUInt32:v3 withCode:1836413810];
  v7 = *(a1 + 52);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  ICDAAPUtilitiesWriteContainer();
}

void sub_10005C930(uint64_t a1)
{
  v4 = *(a1 + 48);
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  ICDAAPUtilitiesWriteContainer();
}

void sub_10005C9E4(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 writeUInt32:*(a1 + 48) withCode:1835624804];
  if (*(a1 + 32))
  {
    v4 = +[ICDAAPPropertyInfo sharedContainerPropertyInfo];
    v5 = *(a1 + 32);
    v9[0] = _NSConcreteStackBlock;
    v9[1] = 3221225472;
    v9[2] = sub_10005CB40;
    v9[3] = &unk_1001DE390;
    v10 = v4;
    v11 = v3;
    v6 = v4;
    [v5 enumerateKeysAndObjectsUsingBlock:v9];
  }

  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = v7;
    ICDAAPUtilitiesWriteContainer();
  }
}

void sub_10005CB40(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if ([*(a1 + 32) hasInfoForProperty:v5])
  {
    [*(a1 + 32) elementCodeForProperty:v5];
    [*(a1 + 32) valueTypeForProperty:v5];
    v7 = *(a1 + 40);
    ICDAAPUtilitiesWriteProperty();
  }

  else
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = 138543362;
      v10 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "No DAAP code found for container property: %{public}@", &v9, 0xCu);
    }
  }
}

void sub_10005CC58(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_10005CCF0;
  v6[3] = &unk_1001DE3B8;
  v7 = v3;
  v5 = v3;
  [v4 enumerateCloudItemIDsUsingBlock:v6];
}

void sub_10005CCF0(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  v5 = [v6 unsignedLongLongValue];
  switch(a3)
  {
    case 2:
      [*(a1 + 32) writeString:v6 withCode:1634353993];
      break;
    case 1:
      [*(a1 + 32) writeUInt64:v5 withCode:1634025833];
      break;
    case 0:
      [*(a1 + 32) writeUInt32:v5 withCode:1835624804];
      break;
  }
}

void sub_10005D8DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose((v31 - 144), 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose((v31 - 224), 8);
  _Block_object_dispose((v31 - 192), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005D938(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005D950(uint64_t a1, void *a2, int a3, int a4)
{
  v7 = a2;
  dispatch_suspend(*(a1 + 32));
  v8 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = *(a1 + 40);
    v13 = 138544130;
    v14 = v9;
    v15 = 2048;
    v16 = [v7 count];
    v17 = 1024;
    v18 = a3;
    v19 = 1024;
    v20 = a4;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@] flushed %lu play events with result %d isFinalResult: %d", &v13, 0x22u);
  }

  *(*(*(a1 + 48) + 8) + 24) |= a3;
  if (!*(*(*(a1 + 56) + 8) + 40) && (a3 & 1) == 0)
  {
    v10 = [NSError errorWithDomain:ICErrorDomain code:0 userInfo:0];
    v11 = *(*(a1 + 56) + 8);
    v12 = *(v11 + 40);
    *(v11 + 40) = v10;
  }

  if (a4)
  {
    [*(a1 + 40) finishWithError:*(*(*(a1 + 56) + 8) + 40)];
  }

  dispatch_resume(*(a1 + 32));
}

id sub_10005DAD8(void *a1)
{
  v1 = a1[4];
  v2 = *(a1[5] + 8);
  v3 = *(v2 + 40);
  v4 = *(a1[6] + 8);
  v7 = *(v4 + 40);
  obj = v3;
  v5 = [v1 getStoreAccounts:&obj returningError:&v7];
  objc_storeStrong((v2 + 40), obj);
  objc_storeStrong((v4 + 40), v7);
  return v5;
}

void sub_10005DB50(uint64_t a1, void *a2)
{
  v3 = a2;
  v42 = 0;
  v43 = &v42;
  v44 = 0x3032000000;
  v45 = sub_10005D938;
  v46 = sub_10005D948;
  v47 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_10005D938;
  v40 = sub_10005D948;
  v41 = 0;
  v4 = *(a1 + 32);
  v31[0] = _NSConcreteStackBlock;
  v31[1] = 3221225472;
  v31[2] = sub_10005DF58;
  v31[3] = &unk_1001DD5F8;
  v32 = v4;
  v34 = &v42;
  v5 = v3;
  v33 = v5;
  v35 = &v36;
  [v32 performTransactionWithBlock:v31];
  v27[0] = _NSConcreteStackBlock;
  v27[1] = 3221225472;
  v27[2] = sub_10005DFE8;
  v27[3] = &unk_1001DB5F0;
  v28 = *(a1 + 40);
  v18 = *(a1 + 56);
  v6 = v18;
  v29 = v18;
  v30 = &v42;
  v7 = objc_retainBlock(v27);
  if (v37[5] || ![v43[5] count])
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = v37[5];
      *buf = 138412546;
      v49 = v5;
      v50 = 2112;
      v51 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Found no play activity events for account id: %@ with error: %@", buf, 0x16u);
    }

    (v7[2])(v7, 0);
  }

  v10 = [ICUserIdentity specificAccountWithDSID:v5, v18];
  v11 = [[ICStoreRequestContext alloc] initWithIdentity:v10];
  v12 = +[ICURLBagProvider sharedBagProvider];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_10005E09C;
  v19[3] = &unk_1001DB690;
  v13 = v11;
  v20 = v13;
  v14 = v10;
  v26 = &v42;
  v15 = *(a1 + 48);
  v21 = v14;
  v22 = v15;
  v16 = v7;
  v25 = v16;
  v17 = v5;
  v23 = v17;
  v24 = *(a1 + 32);
  [v12 getBagForRequestContext:v13 withCompletionHandler:v19];

  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v42, 8);
}

void sub_10005DF20(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 208), 8);
  _Block_object_dispose((v1 - 160), 8);
  _Unwind_Resume(a1);
}

id sub_10005DF58(uint64_t a1)
{
  v2 = *(*(a1 + 48) + 8);
  obj = *(v2 + 40);
  v3 = *(a1 + 32);
  v4 = [*(a1 + 40) longLongValue];
  v5 = *(*(a1 + 56) + 8);
  v8 = *(v5 + 40);
  v6 = [v3 getPlayActivityEvents:&obj storeAccountID:v4 limit:1000 returningError:&v8];
  objc_storeStrong((v2 + 40), obj);
  objc_storeStrong((v5 + 40), v8);
  return v6;
}

void sub_10005DFE8(uint64_t a1, char a2)
{
  v4 = *(a1 + 32);
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10005F3C8;
  block[3] = &unk_1001DB5C8;
  v6 = *(a1 + 40);
  v5 = v6;
  v8 = v6;
  v9 = *(a1 + 56);
  v10 = a2;
  dispatch_async(v4, block);
}

void sub_10005E09C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = [v5 urlForBagKey:ICURLBagKeyPlayActivityFeedRequestPostURL];
    if (v7)
    {
      v8 = [*(a1 + 32) identityStore];
      v9 = *(a1 + 40);
      v18[0] = _NSConcreteStackBlock;
      v18[1] = 3221225472;
      v18[2] = sub_10005E340;
      v18[3] = &unk_1001DB668;
      v10 = v5;
      v11 = *(a1 + 48);
      v19 = v10;
      v20 = v11;
      v17 = *(a1 + 72);
      v12 = v17;
      v26 = v17;
      v21 = *(a1 + 32);
      v22 = v7;
      v23 = *(a1 + 56);
      v24 = *(a1 + 40);
      v25 = *(a1 + 64);
      [v8 getPropertiesForUserIdentity:v9 completionHandler:v18];
    }

    else
    {
      v15 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v16 = *(a1 + 48);
        *buf = 138543362;
        v28 = v16;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "[%{public}@] Post URL missing from bag", buf, 0xCu);
      }

      (*(*(a1 + 72) + 16))();
    }
  }

  else
  {
    v13 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 48);
      *buf = 138543618;
      v28 = v14;
      v29 = 2114;
      v30 = v6;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to load URL bag with error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 72) + 16))();
  }
}

void sub_10005E340(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v41 = a3;
  v6 = objc_alloc_init(ICPlayActivityFeedSerialization);
  v42 = v5;
  v7 = [v5 storefrontIdentifier];
  v8 = [*(a1 + 32) storefrontHeaderSuffix];
  v9 = v8;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = &stru_1001E0388;
  }

  v11 = [v7 stringByAppendingString:v10];
  [(ICPlayActivityFeedSerialization *)v6 setCurrentStoreFrontID:v11];

  v54 = 0u;
  v52 = 0u;
  v53 = 0u;
  v51 = 0u;
  v12 = a1;
  v13 = *(*(*(a1 + 96) + 8) + 40);
  v14 = [v13 countByEnumeratingWithState:&v51 objects:v59 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = 0;
    v17 = *v52;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v52 != v17)
        {
          objc_enumerationMutation(v13);
        }

        v19 = [(ICPlayActivityFeedSerialization *)v6 propertyListObjectWithPlayActivityEvent:*(*(&v51 + 1) + 8 * i)];
        if (v19)
        {
          if (!v16)
          {
            v16 = [[NSMutableArray alloc] initWithCapacity:{objc_msgSend(*(*(*(v12 + 96) + 8) + 40), "count")}];
          }

          [v16 addObject:v19];
          if (MSVDeviceOSIsInternalInstall())
          {
            v20 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity_Oversize");
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v21 = *(v12 + 40);
              *buf = 138543618;
              v56 = v21;
              v57 = 2114;
              v58 = v19;
              _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "[%{public}@] Adding PAF event %{public}@.", buf, 0x16u);
            }
          }
        }
      }

      v15 = [v13 countByEnumeratingWithState:&v51 objects:v59 count:16];
    }

    while (v15);
  }

  else
  {
    v16 = 0;
  }

  if ([v16 count])
  {
    v22 = [[NSMutableDictionary alloc] initWithObjectsAndKeys:{v16, @"events", 0, v41}];
    v23 = v12;
    v24 = [*(v12 + 48) deviceInfo];
    v25 = [[NSMutableURLRequest alloc] initWithURL:*(v23 + 56)];
    [v25 setHTTPMethod:@"POST"];
    v26 = [v24 deviceGUID];
    if (v26)
    {
      [v25 setValue:v26 forHTTPHeaderField:ICStoreHTTPHeaderKeyXGUID];
    }

    if ([*(v23 + 64) longLongValue])
    {
      v27 = [*(v23 + 72) accountDSID];
      [v25 setValue:v27 forHTTPHeaderField:ICStoreHTTPHeaderKeyXDSID];
    }

    if (!v42 || ([v42 storefrontIdentifier], (v28 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v29 = [*(*(*(v23 + 96) + 8) + 40) lastObject];
      v28 = [v29 storeFrontID];

      if (v28)
      {
        if (![v28 length])
        {
          goto LABEL_37;
        }

        goto LABEL_36;
      }

      v30 = [*(v23 + 48) identityStore];
      v31 = [v30 localStoreAccountProperties];
      v28 = [v31 storefrontIdentifier];
    }

    if (![v28 length])
    {
LABEL_37:
      v34 = [[ICStoreURLRequest alloc] initWithURLRequest:v25 requestContext:*(v23 + 48)];
      v43[0] = _NSConcreteStackBlock;
      v43[1] = 3221225472;
      v43[2] = sub_10005E888;
      v43[3] = &unk_1001DB640;
      v35 = *(v23 + 40);
      v36 = *(v23 + 48);
      v44 = v22;
      v45 = v35;
      v46 = v25;
      v37 = v36;
      v38 = *(v23 + 96);
      v47 = v37;
      v50 = v38;
      v48 = *(v23 + 80);
      v49 = *(v23 + 88);
      v39 = v25;
      v40 = v22;
      [v34 buildURLRequestWithCompletionHandler:v43];

      goto LABEL_38;
    }

    v32 = [*(v23 + 32) storefrontHeaderSuffix];
    if ([v32 length])
    {
      v33 = [v28 stringByAppendingString:v32];

      v28 = v33;
    }

LABEL_36:
    [v25 setValue:v28 forHTTPHeaderField:ICStoreHTTPHeaderKeyXAppleStorefront];
    goto LABEL_37;
  }

  (*(*(v12 + 88) + 16))();
LABEL_38:
}

void sub_10005E888(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v33 = v6;
    v8 = +[ICPlayActivityFeedSerialization defaultOverrideHTTPHeaderFields];
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v9 = [v8 countByEnumeratingWithState:&v40 objects:v50 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = 0;
      v12 = *v41;
      do
      {
        for (i = 0; i != v10; i = i + 1)
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(v8);
          }

          v14 = *(*(&v40 + 1) + 8 * i);
          v15 = [v5 valueForHTTPHeaderField:v14];
          if (v15)
          {
            if (!v11)
            {
              v11 = [[NSMutableDictionary alloc] initWithCapacity:1];
            }

            [v11 setObject:v15 forKey:v14];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v40 objects:v50 count:16];
      }

      while (v10);
    }

    else
    {
      v11 = 0;
    }

    if ([v11 count])
    {
      [*(a1 + 32) setObject:v11 forKey:@"override-headers"];
    }

    v18 = *(a1 + 32);
    v39 = 0;
    v19 = [NSPropertyListSerialization dataWithPropertyList:v18 format:200 options:0 error:&v39];
    v20 = v39;
    v21 = v20;
    v7 = v33;
    if ((!v19 || v20) && MSVDeviceOSIsInternalInstall())
    {
      v22 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity_Oversize");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = *(a1 + 40);
        *buf = 138543874;
        v45 = v23;
        v46 = 2114;
        v47 = v21;
        v48 = 2114;
        v49 = v19;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%{public}@] error (%{public}@ serializing request data (%{public}@).", buf, 0x20u);
      }
    }

    v24 = v19;
    v25 = v24;
    if ([v24 length])
    {
      v26 = MSVGzipCompressData();
      if (v26)
      {
        [*(a1 + 48) setValue:ICHTTPHeaderContentEncodingGZIP forHTTPHeaderField:ICHTTPHeaderKeyContentEncoding];
        [*(a1 + 48) setValue:ICHTTPHeaderContentTypeXApplePlist forHTTPHeaderField:ICHTTPHeaderKeyContentType];
        v25 = v26;
        v27 = v24;
      }

      else
      {
        v27 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
        if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
        {
          v28 = *(a1 + 40);
          *buf = 138543362;
          v45 = v28;
          _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "[%{public}@] error compressing request data", buf, 0xCu);
        }

        v25 = v24;
      }
    }

    [*(a1 + 48) setHTTPBody:v25];
    v29 = [[ICStoreURLRequest alloc] initWithURLRequest:*(a1 + 48) requestContext:*(a1 + 56)];
    v30 = +[ICURLSessionManager defaultSession];
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_10005ED3C;
    v34[3] = &unk_1001DB618;
    v31 = *(a1 + 40);
    v38 = *(a1 + 80);
    v34[4] = v31;
    v35 = v24;
    v36 = *(a1 + 64);
    v37 = *(a1 + 72);
    v32 = v24;
    [v30 enqueueDataRequest:v29 withCompletionHandler:v34];
  }

  else
  {
    v16 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 40);
      *buf = 138543618;
      v45 = v17;
      v46 = 2114;
      v47 = v7;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_ERROR, "[%{public}@] Failed to resolve a URL request for override headers with error: %{public}@", buf, 0x16u);
    }

    (*(*(a1 + 72) + 16))();
  }
}

void sub_10005ED3C(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 parsedBodyDictionary];
  v8 = [v5 bodyData];
  if (MSVDeviceOSIsInternalInstall() && CFPreferencesGetAppBooleanValue(@"ShouldDebugLogFlushedEvents", @"com.apple.PlayActivityFeed", 0))
  {
    v9 = NSTemporaryDirectory();
    v10 = [v9 stringByAppendingPathComponent:@"com.apple.PlayActivityEvents"];

    v11 = [[ICHTTPArchive alloc] initUnboundedArchiveWithDirectoryPath:v10];
    v12 = [v5 urlRequest];
    v13 = [v5 urlResponse];
    v14 = [v5 performanceMetrics];
    [v11 archiveRequest:v12 withResponse:v13 responseData:v8 performanceMetrics:v14];
  }

  v15 = 0;
  v16 = -1;
  if (v5 && !v6)
  {
    v17 = [v5 urlResponse];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v16 = [v17 statusCode];
      v18 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        v19 = a1[4];
        v20 = [*(*(a1[8] + 8) + 40) count];
        *buf = 138543874;
        *&buf[4] = v19;
        *&buf[12] = 1024;
        *&buf[14] = v20;
        *&buf[18] = 2048;
        *&buf[20] = v16;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "[%{public}@] Flush %d PAF events finished with HTTP code %ld", buf, 0x1Cu);
      }

      if ((v16 - 200) <= 0x63)
      {
        if (v8)
        {
          v21 = v7 == 0;
        }

        else
        {
          v21 = 0;
        }

        v15 = !v21;
        goto LABEL_20;
      }

      if (v16 == 500)
      {
        v32 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
        if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
        {
          v33 = a1[4];
          *buf = 138543362;
          *&buf[4] = v33;
          _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_ERROR, "[%{public}@] MALFORMED PAF EVENTS ", buf, 0xCu);
        }

        if (MSVDeviceOSIsInternalInstall())
        {
          v34 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity_Oversize");
          if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            v35 = *(*(a1[8] + 8) + 40);
            v36 = a1[4];
            v37 = a1[5];
            *buf = 138543874;
            *&buf[4] = v36;
            *&buf[12] = 2114;
            *&buf[14] = v35;
            *&buf[22] = 2114;
            *&buf[24] = v37;
            _os_log_impl(&_mh_execute_header, v34, OS_LOG_TYPE_ERROR, "[%{public}@] MALFORMED PAF EVENTS=%{public}@, requestData=%{public}@", buf, 0x20u);
          }

          v38 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
          if (os_log_type_enabled(v38, OS_LOG_TYPE_FAULT))
          {
            v39 = a1[4];
            *buf = 138543362;
            *&buf[4] = v39;
            _os_log_impl(&_mh_execute_header, v38, OS_LOG_TYPE_FAULT, "[%{public}@] Uploading malformed PAF events", buf, 0xCu);
          }
        }

        v15 = 0;
        v16 = 500;
        goto LABEL_20;
      }
    }

    else
    {
      v22 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = a1[4];
        *buf = 138543362;
        *&buf[4] = v23;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "[%{public}@] response is NOT of kind NSHTTPURLResponse", buf, 0xCu);
      }
    }

    v15 = 0;
LABEL_20:
  }

  v24 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
  {
    v25 = a1[4];
    *buf = 138544130;
    *&buf[4] = v25;
    *&buf[12] = 2114;
    *&buf[14] = v6;
    *&buf[22] = 2048;
    *&buf[24] = v16;
    LOWORD(v49) = 2114;
    *(&v49 + 2) = v7;
    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[%{public}@] operation finished with error %{public}@, HTTTP statusCode %ld, parsedResponseBody %{public}@", buf, 0x2Au);
  }

  if (v15)
  {
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    *&buf[24] = sub_10005D938;
    *&v49 = sub_10005D948;
    *(&v49 + 1) = objc_alloc_init(NSError);
    v26 = a1[6];
    v40[0] = _NSConcreteStackBlock;
    v40[1] = 3221225472;
    v40[2] = sub_10005F368;
    v40[3] = &unk_1001DD640;
    v27 = v26;
    v28 = a1[8];
    v41 = v27;
    v42 = v28;
    v43 = buf;
    [v27 performTransactionWithBlock:v40];
    if (*(*&buf[8] + 40))
    {
      v29 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        v30 = *(*(a1[8] + 8) + 40);
        v31 = *(*&buf[8] + 40);
        *v44 = 138412546;
        v45 = v30;
        v46 = 2112;
        v47 = v31;
        _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_ERROR, "Failed to remove playActivtyEvents: %@ from table with error: %@", v44, 0x16u);
      }
    }

    _Block_object_dispose(buf, 8);
  }

  (*(a1[7] + 16))();
}

void sub_10005F348(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_10005F368(void *a1)
{
  v1 = a1[4];
  v2 = *(*(a1[5] + 8) + 40);
  v3 = *(a1[6] + 8);
  obj = *(v3 + 40);
  v4 = [v1 removePlayActivityEvents:v2 returningError:&obj];
  objc_storeStrong((v3 + 40), obj);
  return v4;
}

void sub_10005FA48(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 192), 8);
  _Block_object_dispose((v1 - 144), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10005FA90(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10005FAA8(uint64_t a1, void *a2)
{
  v8 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = +[NSAssertionHandler currentHandler];
    [v7 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"CloudArtworkOperationQueue.m" lineNumber:48 description:@"Only operations of type CloudArtworkImportOperation are supported"];
  }

  v3 = [v8 assetURL];

  if (v3)
  {
    [*(a1 + 32) addOperation:v8];
  }

  else
  {
    v4 = +[NSNumber numberWithUnsignedLongLong:](NSNumber, "numberWithUnsignedLongLong:", [v8 cloudID]);
    v5 = +[NSNumber numberWithInteger:](NSNumber, "numberWithInteger:", [v8 artworkType]);
    v6 = [*(*(*(a1 + 40) + 8) + 40) objectForKeyedSubscript:v5];
    if (!v6)
    {
      v6 = +[NSMutableArray array];
      [*(*(*(a1 + 40) + 8) + 40) setObject:v6 forKeyedSubscript:v5];
    }

    [v6 addObject:v4];
    [*(*(*(a1 + 48) + 8) + 40) setObject:v8 forKeyedSubscript:v4];
    ++*(*(*(a1 + 56) + 8) + 24);
  }
}

void sub_10005FC48(uint64_t a1, void *a2, void *a3)
{
  v21 = a2;
  v20 = a3;
  if ([v20 count])
  {
    if ([*(a1 + 32) sourceType] == 400 && -[__CFString integerValue](v21, "integerValue") == 1)
    {
      v24 = objc_opt_class();
      v25 = ICArtworkInfoKeyPurchaseHistoryID;
      v23 = 0;
      v5 = @"purchase history";
    }

    else
    {
      if ([*(a1 + 32) sourceType] == 200 && -[__CFString integerValue](v21, "integerValue") == 1)
      {
        v24 = objc_opt_class();
        v25 = ICArtworkInfoKeySagaID;
        v5 = @"cloud";
      }

      else if ([*(a1 + 32) sourceType] == 200 && -[__CFString integerValue](v21, "integerValue") == 5)
      {
        v24 = objc_opt_class();
        v25 = ICArtworkInfoKeySagaID;
        v5 = @"container cloud";
      }

      else if ([*(a1 + 32) sourceType] == 600 && -[__CFString integerValue](v21, "integerValue") == 1)
      {
        v24 = objc_opt_class();
        v25 = ICArtworkInfoKeySagaID;
        v5 = @"cloud (subscription)";
      }

      else if ([*(a1 + 32) sourceType] == 600 && -[__CFString integerValue](v21, "integerValue") == 5)
      {
        v24 = objc_opt_class();
        v25 = ICArtworkInfoKeySagaID;
        v5 = @"container cloud (subscription)";
      }

      else
      {
        v6 = +[NSAssertionHandler currentHandler];
        [v6 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"CloudArtworkOperationQueue.m" lineNumber:107 description:{@"Unknown sourceType/artworkType pair for CloudArtworkOperationQueue addOperations: %ld/%@", objc_msgSend(*(a1 + 32), "sourceType"), v21}];

        v5 = 0;
        v24 = 0;
        v25 = 0;
      }

      v23 = 1;
    }

    v7 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      v37 = [v20 count];
      v38 = 2114;
      v39 = v21;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Determined %lu operations with artworkType=%{public}@ need to resolve artwork URLs before executing.", buf, 0x16u);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    obj = [v20 subarraysOfSize:500];
    v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
    if (v8)
    {
      v9 = *v32;
      do
      {
        for (i = 0; i != v8; i = i + 1)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          v12 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v11 count];
            *buf = 134218242;
            v37 = v13;
            v38 = 2114;
            v39 = v5;
            _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Sending bulk artwork info request for %lu %{public}@ IDs.", buf, 0x16u);
          }

          v14 = [v24 alloc];
          v15 = [*(a1 + 32) configuration];
          v16 = [v14 initWithConfiguration:v15 cloudIDs:v11];

          objc_initWeak(buf, v16);
          v26[0] = _NSConcreteStackBlock;
          v26[1] = 3221225472;
          v26[2] = sub_100060378;
          v26[3] = &unk_1001DB708;
          v26[4] = v11;
          objc_copyWeak(&v30, buf);
          v27 = v5;
          v28 = v25;
          v29 = *(a1 + 32);
          [v16 setCompletionBlock:v26];
          [v16 setName:@"com.apple.itunescloudd.CloudArtworkOperation.bulkArtworkInfoOperation"];
          v17 = objc_opt_class();
          v18 = [*(a1 + 32) configuration];
          v19 = [v17 handlerForConfiguration:v18];
          [v19 addOperation:v16 forLibraryType:v23 priority:1];

          objc_destroyWeak(&v30);
          objc_destroyWeak(buf);
        }

        v8 = [obj countByEnumeratingWithState:&v31 objects:v35 count:16];
      }

      while (v8);
    }
  }
}

void sub_1000601B8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 72));
  objc_destroyWeak((v2 - 144));
  _Unwind_Resume(a1);
}

id sub_1000601E0(uint64_t a1, uint64_t a2, void *a3)
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_100060258;
  v4[3] = &unk_1001DB758;
  v5 = *(a1 + 32);
  return [a3 enumerateObjectsUsingBlock:v4];
}

void sub_100060258(uint64_t a1, uint64_t a2)
{
  v3 = [*(*(*(a1 + 40) + 8) + 40) objectForKey:a2];
  v4 = [NSString stringWithFormat:@"No store account for source_type %ld", *(*(a1 + 32) + 8), NSLocalizedDescriptionKey];
  v8 = v4;
  v5 = [NSDictionary dictionaryWithObjects:&v8 forKeys:&v7 count:1];

  v6 = [NSError ic_cloudClientErrorWithCode:2009 userInfo:v5];
  [v3 setError:v6];

  [*(a1 + 32) addOperation:v3];
}

void sub_100060378(uint64_t a1)
{
  v2 = [*(a1 + 32) mutableCopy];
  WeakRetained = objc_loadWeakRetained((a1 + 72));
  v4 = [WeakRetained cloudArtworkInfoDictionaries];

  v5 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 count];
    v7 = *(a1 + 40);
    *buf = 134218242;
    v42 = v6;
    v43 = 2114;
    v44 = v7;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Received %lu artwork info dictionaries for %{public}@ IDs.", buf, 0x16u);
  }

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v4;
  v9 = [v8 countByEnumeratingWithState:&v33 objects:v40 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v34;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v14 = [v13 objectForKeyedSubscript:*(a1 + 48)];
        [v2 removeObject:v14];
        v15 = [*(*(*(a1 + 64) + 8) + 40) objectForKey:v14];
        [v15 setAssetInfoDictionary:v13];
        [*(a1 + 56) addOperation:v15];
      }

      v10 = [v8 countByEnumeratingWithState:&v33 objects:v40 count:16];
    }

    while (v10);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v2;
  v16 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v16)
  {
    v17 = v16;
    v18 = *v30;
    do
    {
      for (j = 0; j != v17; j = j + 1)
      {
        if (*v30 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v29 + 1) + 8 * j);
        v21 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          v22 = *(a1 + 40);
          v23 = [v20 unsignedLongLongValue];
          *buf = 138543618;
          v42 = v22;
          v43 = 2048;
          v44 = v23;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "Failed to resolve artwork URL for %{public}@ ID: %llu", buf, 0x16u);
        }

        v24 = [*(*(*(a1 + 64) + 8) + 40) objectForKey:v20];
        v37 = NSLocalizedDescriptionKey;
        v25 = [NSString stringWithFormat:@"Failed to resolve artwork URL for %@ ID: %@", *(a1 + 40), v20];
        v38 = v25;
        v26 = [NSDictionary dictionaryWithObjects:&v38 forKeys:&v37 count:1];

        v27 = [NSError ic_cloudClientErrorWithCode:2008 userInfo:v26];
        [v24 setError:v27];

        [*(a1 + 56) addOperation:v24];
      }

      v17 = [obj countByEnumeratingWithState:&v29 objects:v39 count:16];
    }

    while (v17);
  }
}

intptr_t sub_100060C08(uint64_t a1, void *a2)
{
  v3 = a2;
  *(*(a1 + 32) + 120) = [v3 containerID];
  v4 = [v3 responseCode];

  if (v4 > 399)
  {
    v6 = 3;
    if (v4 == 400 || v4 == 404)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if (v4 != 200 && v4 != 204)
  {
LABEL_9:
    v6 = 2;
LABEL_10:
    v5 = *(a1 + 32);
    goto LABEL_11;
  }

  v5 = *(a1 + 32);
  if (v5[15])
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

LABEL_11:
  [v5 setStatus:v6];
  v7 = *(a1 + 40);

  return dispatch_semaphore_signal(v7);
}

id sub_10006144C(uint64_t a1, void *a2)
{
  result = [a2 statusType];
  v4 = result;
  v5 = result == 1;
  if (*(a1 + 40) != v5 || *(a1 + 41) != *(a1 + 42))
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 41);
      v8[0] = 67109376;
      v8[1] = v5;
      v9 = 1024;
      v10 = v7;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Updating AirPlay defaults: isAppleMusicSubscriber=%d, cloudLibraryIsOn=%d", v8, 0xEu);
    }

    [*(a1 + 32) setBool:v4 == 1 forKey:@"isAppleMusicSubscriber"];
    [*(a1 + 32) setBool:*(a1 + 41) forKey:@"cloudLibraryIsOn"];
    return notify_post("com.apple.airplay.prefsChanged");
  }

  return result;
}

void sub_100061960(uint64_t a1)
{
  if (!CFPreferencesGetAppBooleanValue(@"hasWipedDonationIdentifier", @"com.apple.Music", 0))
  {
    v2 = os_log_create("com.apple.amp.itunescloudd", "SDK");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      v3 = *(a1 + 32);
      *buf = 134217984;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "ICDServer %p - Music app has not yet deleted library-add intent donations, deleting now!", buf, 0xCu);
    }

    v4 = +[CSSearchableIndex defaultSearchableIndex];
    v7 = @"MusicKit-LibraryAddIntent";
    v5 = [NSArray arrayWithObjects:&v7 count:1];
    v6[0] = _NSConcreteStackBlock;
    v6[1] = 3221225472;
    v6[2] = sub_100061AE4;
    v6[3] = &unk_1001DE828;
    v6[4] = *(a1 + 32);
    [v4 deleteInteractionsWithGroupIdentifiers:v5 bundleID:@"com.apple.Music" protectionClass:0 completionHandler:v6];
  }
}

void sub_100061AE4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "SDK");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v5 = *(a1 + 32);
      v6 = 134218242;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "ICDServer %p - Failed to delete library add intent donations. err=%{public}@", &v6, 0x16u);
    }
  }

  else
  {
    CFPreferencesSetAppValue(@"hasWipedDonationIdentifier", &__kCFBooleanTrue, @"com.apple.Music");
    CFPreferencesAppSynchronize(@"com.apple.Music");
  }
}

void sub_100061DC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = [v3 msv_description];
      v9 = 138543618;
      v10 = v6;
      v11 = 2114;
      v12 = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Finished clearing default supported commands with MR for bundle id '%{public}@' error=%{public}@", &v9, 0x16u);
    }
  }

  else if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v9 = 138543362;
    v10 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Finished clearing default supported commands with MR for bundle id '%{public}@'", &v9, 0xCu);
  }
}

void sub_1000620F0(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = *(a1 + 32);
      v9 = [v6 msv_description];
      v19 = 138543618;
      v20 = v8;
      v21 = 2114;
      v22[0] = v9;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "Failed to load U18 account value from account %{public}@ error=%{public}@", &v19, 0x16u);
    }
  }

  if (v5)
  {
    v10 = [v5 value];
    v11 = [v10 BOOLValue];

    v12 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 32);
      v13 = *(a1 + 40);
      v19 = 138543874;
      v20 = v13;
      v21 = 1024;
      LODWORD(v22[0]) = v11;
      WORD2(v22[0]) = 2114;
      *(v22 + 6) = v14;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ - _updateAccountServerCachedData caching isU18 value of %{BOOL}u for account %{public}@", &v19, 0x1Cu);
    }

    v15 = +[ICDefaults standardDefaults];
    [v15 setCachedU18MinorAccountStatus:v11];

    v16 = +[AMSAccountCachedServerData sharedInstance];
    v17 = [v5 token];
    v18 = [v16 cancelUpdatesForToken:v17];
  }
}

void sub_10006238C(id a1, ICMusicSubscriptionStatus *a2, NSError *a3)
{
  v4 = a2;
  v24 = a3;
  if (v24)
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Updating HTTP Cookies] Failed to obtain subscription status for updating cookies. will be treated as unknown", buf, 2u);
    }
  }

  v6 = [sub_100062744() sharedRestrictionsMonitor];
  v7 = [v6 allowsMusicVideos];

  v8 = [sub_100062744() sharedRestrictionsMonitor];
  v9 = [v8 allowsExplicitContent];

  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"UserRequestedSubscriptionHidden", @"com.apple.mobileipod", 0);
  v25 = v4;
  v11 = [(ICMusicSubscriptionStatus *)v4 hasCapability:1];
  v12 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 67109888;
    *v27 = v9;
    *&v27[4] = 1024;
    *&v27[6] = v7;
    LOWORD(v28) = 1024;
    *(&v28 + 2) = AppBooleanValue != 0;
    HIWORD(v28) = 1024;
    v29[0] = v11;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Updating HTTP Cookies] Updating cookie store for content restrictions. explicitContentAllowed=%{BOOL}u, musicVideosAllowed=%{BOOL}u, hasDisabledAppleMusic=%{BOOL}u, isSubscriber=%{BOOL}u", buf, 0x1Au);
  }

  v23 = v11;

  v13 = ICStoreHTTPCookieNameITRE;
  v14 = sub_100062824(ICStoreHTTPCookieNameITRE);
  v15 = ICStoreHTTPCookieNameITRV;
  v16 = sub_100062824(ICStoreHTTPCookieNameITRV);
  v17 = ICStoreHTTPCookieNameITST;
  v18 = sub_100062824(ICStoreHTTPCookieNameITST);
  v19 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    *v27 = v14;
    *&v27[8] = 2114;
    v28 = v16;
    LOWORD(v29[0]) = 2114;
    *(v29 + 2) = v18;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "[Updating HTTP Cookies] Current cookie values: itre=%{public}@, itrv=%{public}@, itst=%{public}@", buf, 0x20u);
  }

  if (((v9 ^ (v14 != 0)) & 1) == 0)
  {
    if (v9)
    {
      sub_1000628B0(v13);
    }

    else
    {
      sub_100062A50(v13, @"1");
    }
  }

  if (((v7 ^ (v16 != 0)) & 1) == 0)
  {
    if (v7)
    {
      sub_1000628B0(v15);
    }

    else
    {
      sub_100062A50(v15, @"1");
    }
  }

  if (v23)
  {
    v20 = 2;
  }

  else
  {
    v20 = AppBooleanValue != 0;
  }

  if (v20 != [v18 intValue])
  {
    if (v20)
    {
      v21 = [NSString stringWithFormat:@"%ld", v20];
      sub_100062A50(v17, v21);
    }

    else
    {
      sub_1000628B0(v17);
    }
  }

  v22 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "[Updating HTTP Cookies] Finished updating cookie store for content restrictions", buf, 2u);
  }
}

id sub_100062744()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100213C38;
  v7 = qword_100213C38;
  if (!qword_100213C38)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100062CA8;
    v3[3] = &unk_1001DF318;
    v3[4] = &v4;
    sub_100062CA8(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_10006280C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_100062824(void *a1)
{
  v1 = a1;
  v2 = +[ICHTTPCookieStore sharedCookieStore];
  v3 = [v2 getCookieWithName:v1 userIdentifier:&off_1001ED2A0];

  v4 = [v3 value];

  return v4;
}

void sub_1000628B0(void *a1)
{
  v1 = a1;
  v2 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v10 = v1;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "[Updating HTTP Cookies] Removing cookie '%{public}@'", buf, 0xCu);
  }

  v7[0] = @"Domain";
  v7[1] = @"Name";
  v8[0] = @".apple.com";
  v8[1] = v1;
  v7[2] = @"Path";
  v8[2] = @"/";
  v3 = [NSDictionary dictionaryWithObjects:v8 forKeys:v7 count:3];
  v4 = +[ICHTTPCookieStore sharedCookieStore];
  v5 = [v4 removeCookiesWithProperties:v3];

  if ((v5 & 1) == 0)
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v10 = v1;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "[Updating HTTP Cookies] Failed to remove cookie '%{public}@'", buf, 0xCu);
    }
  }
}

void sub_100062A50(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v17 = v3;
    v18 = 2114;
    v19 = v4;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "[Updating HTTP Cookies] Setting cookie '%{public}@ = %{public}@'", buf, 0x16u);
  }

  v14[0] = NSHTTPCookieName;
  v14[1] = NSHTTPCookieValue;
  v15[0] = v3;
  v15[1] = v4;
  v14[2] = NSHTTPCookiePath;
  v14[3] = NSHTTPCookieDomain;
  v15[2] = @"/";
  v15[3] = @".apple.com";
  v6 = [NSDictionary dictionaryWithObjects:v15 forKeys:v14 count:4];
  v7 = [NSHTTPCookie cookieWithProperties:v6];

  v8 = +[ICHTTPCookieStore sharedCookieStore];
  v13 = v7;
  v9 = [NSArray arrayWithObjects:&v13 count:1];
  v10 = [NSURL URLWithString:@"https://www.apple.com/"];
  v11 = [v8 saveCookies:v9 forURL:v10 userIdentifier:&off_1001ED2A0];

  if ((v11 & 1) == 0)
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Updating HTTP Cookies] Failed to set cookie '%{public}@'", buf, 0xCu);
    }
  }
}

void sub_100062CA8(uint64_t a1)
{
  sub_100062D70();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPRestrictionsMonitor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213C38 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPRestrictionsMonitorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICDServer.m" lineNumber:85 description:{@"Unable to find class %s", "MPRestrictionsMonitor"}];

    __break(1u);
  }
}

void sub_100062D70()
{
  v3[0] = 0;
  if (!qword_100213C40)
  {
    v3[1] = _NSConcreteStackBlock;
    v3[2] = 3221225472;
    v3[3] = sub_100062EC0;
    v3[4] = &unk_1001DF350;
    v3[5] = v3;
    v4 = off_1001DBDC8;
    v5 = 0;
    qword_100213C40 = _sl_dlopen();
  }

  if (!qword_100213C40)
  {
    v1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v1 handleFailureInFunction:v2 file:@"ICDServer.m" lineNumber:79 description:{@"%s", v3[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v0 = v3[0];
  if (v3[0])
  {
LABEL_7:
    free(v0);
  }
}

uint64_t sub_100062EC0(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100213C40 = result;
  return result;
}

void sub_10006304C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Skipping updating enhanced audio availability because we failed to load the bag. err=%{public}@", &v11, 0xCu);
    }
  }

  else
  {
    v7 = [a2 enhancedAudioConfiguration];
    if (v7)
    {
      v6 = v7;
      v8 = +[ICMusicSubscriptionStatusController sharedStatusController];
      v9 = [[ICMusicSubscriptionStatusRequest alloc] initWithStoreRequestContext:*(a1 + 32)];
      [v9 setCarrierBundleProvisioningStyle:1];
      [v9 shouldReturnLastKnownStatusOnly];
      [v9 setShouldIgnoreCache:0];
      [v9 setAllowsFallbackToExpiredStatus:1];
      [v9 setAllowsFallbackToStatusNeedingReload:1];
      [v8 performSubscriptionStatusRequest:v9 withCompletionHandler:&stru_1001DBCF8];
    }

    else
    {
      v10 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v11) = 0;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Disabling enhanced audio because the configuration is missing", &v11, 2u);
      }

      CFPreferencesSetAppValue(@"EnhancedAudioAvailable", kCFBooleanFalse, @"com.apple.mobileipod");
      v6 = 0;
    }
  }
}

void sub_100063224(id a1, ICMusicSubscriptionStatusResponse *a2, NSError *a3)
{
  v4 = a3;
  if (v4)
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v10 = 138543362;
      v11 = v4;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "Skipping updating enhanced audio availability because we failed to load subscription status. err=%{public}@", &v10, 0xCu);
    }
  }

  else
  {
    v6 = [(ICMusicSubscriptionStatusResponse *)a2 subscriptionStatus];
    v7 = [v6 hasCapability:1];

    v8 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 67109120;
      LODWORD(v11) = v7;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Setting cached enhanced audio availability flag to %{BOOL}u", &v10, 8u);
    }

    v9 = &kCFBooleanTrue;
    if (!v7)
    {
      v9 = &kCFBooleanFalse;
    }

    CFPreferencesSetAppValue(@"EnhancedAudioAvailable", *v9, @"com.apple.mobileipod");
  }
}

void sub_10006339C(id a1, ICRequestContext *a2)
{
  v2 = a2;
  [(ICRequestContext *)v2 setAllowsExpiredBags:1];
  v3 = +[ICUserIdentity activeAccount];
  [(ICRequestContext *)v2 setIdentity:v3];

  v4 = +[ICUserIdentityStore defaultIdentityStore];
  [(ICRequestContext *)v2 setIdentityStore:v4];

  v5 = +[ICClientInfo defaultInfo];
  [(ICRequestContext *)v2 setClientInfo:v5];

  v6 = [[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:1];
  [(ICRequestContext *)v2 setAuthenticationProvider:v6];
}

void sub_100063564(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 int64ValueForBagKey:ICURLBagKeySubscriptionStatusRefreshIntervalSeconds];
  v5 = v4;
  if (v4 >= 3600)
  {
    v6 = v4;
  }

  else
  {
    v6 = 86400;
  }

  v7 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v3 serverCorrelationKey];
    v9 = [v3 serverEnvironment];
    *buf = 134218754;
    v17 = v6;
    v18 = 2048;
    v19 = v5;
    v20 = 2114;
    v21 = v8;
    v22 = 2114;
    v23 = v9;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Key Refresh> - Setting timer to perform periodic subscription tasks for %llds (value from bag: %llds; bag's server correlation key: %{public}@; server environment: %{public}@).", buf, 0x2Au);
  }

  v10 = +[ICBGTaskScheduler sharedTaskScheduler];
  if (([v10 hasScheduledTask:@"com.apple.itunescloud.subscription_status_refresh"] & 1) == 0)
  {
    [v10 scheduleRecurringTask:@"com.apple.itunescloud.subscription_status_refresh" withInterval:0 afterDelay:v6 withUserData:v6];
  }

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100063758;
  v13[3] = &unk_1001DBC78;
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  v14 = v11;
  v15 = v12;
  [v10 registerForTask:@"com.apple.itunescloud.subscription_status_refresh" handler:v13];
}

void sub_100063758(uint64_t a1)
{
  v1 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v1, OS_LOG_TYPE_DEFAULT, "<Key Refresh> - Performing periodic refresh of subscription status", buf, 2u);
  }

  v2 = +[ICPrivacyInfo sharedPrivacyInfo];
  v3 = [v2 shouldBlockPersonalizedNetworkRequestsForMusic];

  if (v3)
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Key Refresh> - Skipping periodic subscription refresh because privacy acknowledgement is required", buf, 2u);
    }
  }

  else
  {
    v5 = +[ICUserIdentityStore defaultIdentityStore];
    v36 = 0;
    v6 = [v5 userIdentitiesForManageableAccountsWithError:&v36];
    v4 = v36;

    if (v4 || ![v6 count])
    {
      v7 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v39 = v4;
        v40 = 2114;
        v41 = v6;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "<Key Refresh> - Skipping subscription status refresh [issue retrieving user identities] - error=%{public}@ - userIdentities=%{public}@", buf, 0x16u);
      }
    }

    else
    {
      v23 = v6;
      v34 = 0u;
      v35 = 0u;
      v32 = 0u;
      v33 = 0u;
      obj = v6;
      v8 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v33;
        do
        {
          for (i = 0; i != v9; i = i + 1)
          {
            if (*v33 != v10)
            {
              objc_enumerationMutation(obj);
            }

            v12 = *(*(&v32 + 1) + 8 * i);
            v13 = [ICStoreRequestContext alloc];
            v31[0] = _NSConcreteStackBlock;
            v31[1] = 3221225472;
            v31[2] = sub_100063C50;
            v31[3] = &unk_1001DBC10;
            v31[4] = v12;
            v14 = [v13 initWithBlock:v31];
            v15 = [[ICMusicSubscriptionStatusRequest alloc] initWithStoreRequestContext:v14];
            [v15 setCarrierBundleProvisioningStyle:1];
            [v15 setShouldIgnoreCache:1];
            [v15 setAllowsFallbackToExpiredStatus:1];
            [v15 setAllowsFallbackToStatusNeedingReload:1];
            v16 = *(a1 + 32);
            v27[0] = _NSConcreteStackBlock;
            v27[1] = 3221225472;
            v27[2] = sub_100063D18;
            v27[3] = &unk_1001DF4E0;
            v17 = v16;
            v28 = v17;
            v29 = v14;
            v30 = v12;
            v18 = v14;
            [v17 performSubscriptionStatusRequest:v15 withCompletionHandler:v27];
          }

          v9 = [obj countByEnumeratingWithState:&v32 objects:v37 count:16];
        }

        while (v9);
      }

      if (MSVDeviceSupportsEnhancedMusic())
      {
        v26[0] = _NSConcreteStackBlock;
        v26[1] = 3221225472;
        v26[2] = sub_100063EC0;
        v26[3] = &unk_1001DD0B8;
        v19 = *(a1 + 32);
        v26[4] = *(a1 + 40);
        [v19 getSubscriptionStatusWithCompletionHandler:v26];
        v6 = v23;
      }

      else
      {
        v20 = os_log_create("com.apple.amp.itunescloudd", "XPC");
        v6 = v23;
        if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_DEFAULT, "<Key Refresh> - Skipping offline HLS key refresh because the device does not support it", buf, 2u);
        }
      }

      v21 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Updating Media API URL mapping file", buf, 2u);
      }

      v22 = +[ICMediaAPIURLMappingProvider sharedProvider];
      [v22 updateURLMappingsWithCompletion:&stru_1001DBC50];

      [*(a1 + 40) processPendingKeyInvalidations];
    }
  }
}

void sub_100063C50(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAllowsExpiredBags:1];
  [v3 setIdentity:*(a1 + 32)];
  v4 = +[ICUserIdentityStore defaultIdentityStore];
  [v3 setIdentityStore:v4];

  v5 = +[ICClientInfo defaultInfo];
  [v3 setClientInfo:v5];

  v6 = [[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:1];
  [v3 setAuthenticationProvider:v6];
}

void sub_100063D18(void *a1, void *a2)
{
  v3 = [a2 subscriptionStatus];
  v4 = +[ICDeviceInfo currentDeviceInfo];
  if ([v4 isAppleTV])
  {
  }

  else
  {
    v5 = +[ICDeviceInfo currentDeviceInfo];
    v6 = [v5 isAudioAccessory];

    if ((v6 & 1) == 0 && [v3 hasCapability:128] && objc_msgSend(v3, "hasCapability:", 256))
    {
      v7 = a1[4];
      v8 = a1[5];
      v11[0] = _NSConcreteStackBlock;
      v11[1] = 3221225472;
      v11[2] = sub_100064058;
      v11[3] = &unk_1001DD0B8;
      v11[4] = a1[6];
      [v7 refreshSubscriptionUsingRequestContext:v8 withCompletionHandler:v11];
      goto LABEL_10;
    }
  }

  v9 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = a1[6];
    *buf = 138412546;
    v13 = v10;
    v14 = 2114;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "<Key Refresh> - Skipping subscription key refresh complete for user identity: %@ - Subscription status: %{public}@", buf, 0x16u);
  }

LABEL_10:
}

void sub_100063EC0(uint64_t a1, void *a2)
{
  v3 = [a2 hasCapability:1];
  v4 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    if (v5)
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Key Refresh> - Refreshing offline HLS keys", buf, 2u);
    }

    [*(a1 + 32) refreshEnhancedAudioSharedKeys];
    if (MSVDeviceSupportsMediaDownloads())
    {
      [*(a1 + 32) fetchEnhancedAudioOfflineKeys];
    }
  }

  else
  {
    if (v5)
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "<Key Refresh> - Skipping refreshing offline HLS keys because the user is not a subscriber", v6, 2u);
    }
  }
}

void sub_100063FA0(id a1, ICMediaAPIURLMappingSet *a2, NSError *a3)
{
  v3 = a3;
  v4 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Media API URL mapping update completed. err=%{public}@", &v5, 0xCu);
  }
}

void sub_100064058(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v13 = 138412546;
      v14 = v7;
      v15 = 2114;
      v16 = v4;
      v8 = "<Key Refresh> - Periodic subscription refresh issue for user identity: %@ - error=%{public}@";
      v9 = v6;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v9, v10, v8, &v13, v11);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = *(a1 + 32);
    v13 = 138412290;
    v14 = v12;
    v8 = "<Key Refresh> - Periodic subscription refresh complete for user identity: %@";
    v9 = v6;
    v10 = OS_LOG_TYPE_DEFAULT;
    v11 = 12;
    goto LABEL_6;
  }
}

void sub_100064174(id a1, ICStoreRequestContext *a2)
{
  v2 = a2;
  [(ICStoreRequestContext *)v2 setAllowsExpiredBags:1];
  v3 = +[ICUserIdentity activeAccount];
  [(ICStoreRequestContext *)v2 setIdentity:v3];

  v4 = +[ICUserIdentityStore defaultIdentityStore];
  [(ICStoreRequestContext *)v2 setIdentityStore:v4];

  v5 = +[ICClientInfo defaultInfo];
  [(ICStoreRequestContext *)v2 setClientInfo:v5];

  v6 = [[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:1];
  [(ICStoreRequestContext *)v2 setAuthenticationProvider:v6];
}

void sub_1000644A4(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 134217984;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Starting operation to reload cloud library for secondary accounts]", buf, 0xCu);
  }

  v4 = [*(a1 + 32) internalOperationQueue];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_1000645C0;
  v5[3] = &unk_1001DF578;
  v5[4] = *(a1 + 32);
  [v4 addOperationWithBlock:v5];
}

void sub_1000645C0(uint64_t a1)
{
  v2 = [*(a1 + 32) accountManager];
  v3 = [v2 libraryManagementPolicy];

  if (v3 == 1)
  {
    v4 = [*(a1 + 32) handlerCoordinator];
    v5 = [v4 isSetupCompleted];

    if (v5)
    {
      v6 = *(a1 + 32);

      [v6 _transitionAppleTVToParallelMultiUserLibraryManagementPolicy];
    }

    else
    {
      v9 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v10 = *(a1 + 32);
        v11 = 134217984;
        v12 = v10;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Handler Coordinator has not finished setup. Will retry loading secondary accounts]", &v11, 0xCu);
      }

      [*(a1 + 32) _retryLoadingCloudLibraryForSecondaryAccountsOnAppleTV];
    }
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      v11 = 134218240;
      v12 = v8;
      v13 = 1024;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ICDServer %p - currentPolicy=%d and is not in a supported configuration. Will not attempt to reload cloud library for secondary users]", &v11, 0x12u);
    }
  }
}

uint64_t sub_100064CD4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

intptr_t sub_100064CEC(uint64_t a1, void *a2)
{
  v3 = [a2 subscriptionStatus];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(a1 + 32);

  return dispatch_semaphore_signal(v6);
}

void sub_100065350(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    [*(a1 + 32) _writeURLResolutionCacheFileUsingBag:a2];
  }

  else
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = 138543362;
      v8 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Failed to create url resolution file because we couldn't fetch the bag. err=%{public}@", &v7, 0xCu);
    }
  }
}

void sub_10006542C(id a1, ICStoreRequestContext *a2)
{
  v2 = a2;
  [(ICStoreRequestContext *)v2 setAllowsExpiredBags:1];
  v3 = +[ICUserIdentity activeAccount];
  [(ICStoreRequestContext *)v2 setIdentity:v3];

  v4 = +[ICUserIdentityStore defaultIdentityStore];
  [(ICStoreRequestContext *)v2 setIdentityStore:v4];

  v5 = +[ICClientInfo defaultInfo];
  [(ICStoreRequestContext *)v2 setClientInfo:v5];

  v6 = [[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:1];
  [(ICStoreRequestContext *)v2 setAuthenticationProvider:v6];
}

void sub_1000658A8(uint64_t a1)
{
  v2 = +[ICDefaults standardDefaults];
  v3 = [v2 cachedSharedControlsCapability];
  v4 = v3;
  v5 = &off_1001ED270;
  if (v3)
  {
    v5 = v3;
  }

  v6 = v5;

  v7 = [*(a1 + 32) dictionaryForBagKey:ICURLBagKeyMusicSubscription];
  v8 = v7 != 0;

  v9 = +[ICDefaults standardDefaults];
  [v9 setSocialProfileSupported:v8];

  v10 = ICURLBagKeySharedControls;
  v11 = [*(a1 + 32) numberForBagKey:ICURLBagKeySharedControls];

  if (v11)
  {
    v12 = [*(a1 + 32) numberForBagKey:v10];
  }

  else
  {
    v12 = &off_1001ED288;
  }

  v13 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = *(a1 + 40);
    v18 = 134218498;
    v19 = v14;
    v20 = 2114;
    v21 = v6;
    v22 = 2114;
    v23 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "ICDServer %p CachedSharedControlsCapability. cachedStatus=%{public}@ currentStatus=%{public}@", &v18, 0x20u);
  }

  v15 = [v12 integerValue];
  if (v15 != [v6 integerValue])
  {
    v16 = +[ICDefaults standardDefaults];
    [v16 setCachedSharedControlsCapability:v12];

    v17 = +[NSDistributedNotificationCenter defaultCenter];
    [v17 postNotificationName:ICMusicUserStateGroupSessionCapabilityChangedNotification object:0];
  }
}

void sub_100065BDC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v8 = 134218242;
      v9 = v7;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "ICDServer %p - Server Setup - Encountered error fetching bag: %@", &v8, 0x16u);
    }
  }

  else
  {
    [*(a1 + 32) _updateSocialFeaturesAvailabilityIfNeededUsingBag:a2];
  }
}

void sub_100066120(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138543618;
    v11 = v5;
    v12 = 2114;
    v13 = v3;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ [Music App Removal] %{public}@; Removing cloud music library", buf, 0x16u);
  }

  v6 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:v3];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100066348;
  v8[3] = &unk_1001DFB10;
  v8[4] = *(a1 + 32);
  v9 = v3;
  v7 = v3;
  [v6 handleMusicAppRemovedWithCompletion:v8];
}

void sub_100066278(id a1, ICConnectionConfiguration *a2, unint64_t a3, BOOL *a4)
{
  v4 = a2;
  v5 = [(ICConnectionConfiguration *)v4 userIdentity];
  v8 = [ML3MusicLibrary musicLibraryForUserAccount:v5];

  [v8 setJaliscoNeedsUpdateForTokens:1];
  v6 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:v4];
  v7 = [(ICConnectionConfiguration *)v4 clientIdentity];

  [v6 updateJaliscoLibraryWithClientIdentity:v7 forReason:6 completionHandler:&stru_1001DBB80];
}

void sub_100066348(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 138543618;
    v18 = v3;
    v19 = 2114;
    v20 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "%{public}@ [Music App Removal] %{public}@; Removing other music and music video tracks", buf, 0x16u);
  }

  v5 = [*(a1 + 40) userIdentity];
  v6 = [ML3MusicLibrary musicLibraryForUserAccount:v5];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_100066524;
  v13[3] = &unk_1001DF3A0;
  v7 = v6;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v14 = v7;
  v15 = v8;
  v16 = v9;
  [v7 performDatabaseTransactionWithBlock:v13];
  v10 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    v12 = *(a1 + 40);
    *buf = 138543618;
    v18 = v11;
    v19 = 2114;
    v20 = v12;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ [Music App Removal] %{public}@; Finished removing all music data", buf, 0x16u);
  }
}

uint64_t sub_100066524(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyMediaType value:&off_1001ED258 comparison:10];
  v40[0] = v4;
  v5 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyIsLocal equalToInteger:1];
  v40[1] = v5;
  v6 = [NSArray arrayWithObjects:v40 count:2];
  v7 = [ML3AllCompoundPredicate predicateMatchingPredicates:v6];

  v8 = [ML3Track unrestrictedAllItemsQueryWithlibrary:*(a1 + 32) predicate:v7 orderingTerms:0];
  v9 = [v8 countOfEntities];
  v10 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    *buf = 138543874;
    v35 = v11;
    v36 = 2114;
    v37 = v12;
    v38 = 2048;
    v39 = v9;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "%{public}@ [Music App Removal] %{public}@; Found %lu additional tracks to remove from library", buf, 0x20u);
  }

  v13 = malloc_type_calloc(v9, 8uLL, 0x100004000313F17uLL);
  if (v13)
  {
    v14 = v13;
    v33[0] = _NSConcreteStackBlock;
    v33[1] = 3221225472;
    v33[2] = sub_100066A28;
    v33[3] = &unk_1001DBB40;
    v33[4] = v13;
    [v8 enumeratePersistentIDsUsingBlock:v33];
    if (([ML3Track deleteFromLibrary:*(a1 + 32) deletionType:2 persistentIDs:v14 count:v9 usingConnection:v3]& 1) == 0)
    {
      v15 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v16 = *(a1 + 40);
        v17 = *(a1 + 48);
        *buf = 138543618;
        v35 = v16;
        v36 = 2114;
        v37 = v17;
        _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ [Music App Removal] %{public}@; Failed to remove additional tracks", buf, 0x16u);
      }
    }

    free(v14);
  }

  else
  {
    v18 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      v19 = *(a1 + 40);
      v20 = *(a1 + 48);
      *buf = 138543618;
      v35 = v19;
      v36 = 2114;
      v37 = v20;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "%{public}@ [Music App Removal] %{public}@; Failed to allocate pid array - skipping", buf, 0x16u);
    }
  }

  v21 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = *(a1 + 40);
    v23 = *(a1 + 48);
    *buf = 138543618;
    v35 = v22;
    v36 = 2114;
    v37 = v23;
    _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "%{public}@ [Music App Removal] %{public}@; Removing empty collections", buf, 0x16u);
  }

  if (([ML3Collection removeOrphanedCollectionsInLibrary:*(a1 + 32) usingConnection:v3]& 1) == 0)
  {
    v24 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      v25 = *(a1 + 40);
      *buf = 138543362;
      v35 = v25;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ - [Music App Removal] Failed to remove empty collections", buf, 0xCu);
    }
  }

  v26 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
  {
    v27 = *(a1 + 40);
    v28 = *(a1 + 48);
    *buf = 138543618;
    v35 = v27;
    v36 = 2114;
    v37 = v28;
    _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ [Music App Removal] %{public}@; Cleaning up artwork", buf, 0x16u);
  }

  if (([*(a1 + 32) cleanupArtworkWithOptions:30] & 1) == 0)
  {
    v29 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      v30 = *(a1 + 40);
      v31 = *(a1 + 48);
      *buf = 138543618;
      v35 = v30;
      v36 = 2114;
      v37 = v31;
      _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_DEFAULT, "%{public}@ [Music App Removal] %{public}@; Artwork cleanup failed", buf, 0x16u);
    }
  }

  return 1;
}

void sub_100066A34(id a1, ICConnectionConfiguration *a2, unint64_t a3, BOOL *a4)
{
  v4 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:a2, a4];
  [v4 handleMusicAppInstalled];
}

void sub_100066BFC(uint64_t a1)
{
  v2 = +[ICDeviceInfo currentDeviceInfo];
  v3 = [v2 isAppleTV];

  v4 = [*(a1 + 32) accountManager];
  v5 = v4;
  if (!v3)
  {
    goto LABEL_6;
  }

  v6 = [v4 libraryManagementPolicy];

  v7 = *(a1 + 32);
  if (v6 != 1)
  {
    v4 = [v7 accountManager];
    v5 = v4;
LABEL_6:
    [v4 updateState];

    v11 = [*(a1 + 32) handlerCoordinator];
    v12 = [*(a1 + 32) accountManager];
    v13 = [v12 stateChange];
    [v11 updateHandlersWithAccountStateChange:v13];

LABEL_7:
    goto LABEL_8;
  }

  v8 = [v7 handlerCoordinator];
  v9 = [v8 isSetupCompleted];

  v10 = *(a1 + 32);
  if (!v9)
  {
    if (v10[10])
    {
      goto LABEL_8;
    }

    v10[10] = 1;
    v11 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v24 = *(a1 + 32);
      v25 = 134217984;
      v26 = v24;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Deferring library policy management change till handler coordinator is fully initialized", &v25, 0xCu);
    }

    goto LABEL_7;
  }

  [v10 _transitionAppleTVToParallelMultiUserLibraryManagementPolicy];
LABEL_8:
  v14 = *(a1 + 32);
  v15 = [v14 accountManager];
  v16 = [v15 activeConfiguration];
  [v14 _ensureSubscriptionInformationIsUpToDateForConfiguration:v16];

  v17 = *(a1 + 32);
  v18 = [v17 accountManager];
  v19 = [v18 activeConfiguration];
  [v17 _updateAirPlaySettingsForConfiguration:v19];

  v20 = +[ICDeviceInfo currentDeviceInfo];
  if (([v20 isIPhone] & 1) != 0 || objc_msgSend(v20, "isIPod"))
  {
    v21 = +[ICMusicLibraryRecommendationController sharedLibraryRecommendationController];
    v22 = [*(a1 + 32) accountManager];
    v23 = [v22 activeConfiguration];
    [v21 handleAccountStateChange:v23];
  }

  [*(a1 + 32) _updateAccountServerCachedData];
}

void sub_100067050(uint64_t a1, void *a2)
{
  v16[0] = _NSConcreteStackBlock;
  v16[1] = 3221225472;
  v16[2] = sub_100067200;
  v16[3] = &unk_1001DE828;
  v17 = a2;
  v3 = v17;
  v4 = objc_retainBlock(v16);
  v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Ensuring that we have off-line music subscription keys if the user has a slot", buf, 2u);
  }

  v6 = [*(a1 + 32) userIdentityStore];
  [*(a1 + 32) userIdentity];
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_100067214;
  v11 = v10[3] = &unk_1001DBAB8;
  v12 = v6;
  v13 = *(a1 + 40);
  v14 = v4;
  v7 = v6;
  v8 = v11;
  v9 = v4;
  [v7 getPropertiesForUserIdentity:v8 completionHandler:v10];
}

void sub_100067214(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = [a2 DSID];
  v7 = [v6 unsignedLongLongValue];

  if (a2 && v7)
  {
    v8 = +[ICMusicSubscriptionFairPlayController sharedController];
    v30 = 0;
    v9 = [v8 getKeyStatusForAccountUniqueIdentifier:v7 error:&v30];
    v10 = v30;

    if (v10)
    {
      v11 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v32 = v10;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Failed to get current subscription key status - skipping key refresh. err=%{public}@", buf, 0xCu);
      }

      v12 = *(*(a1 + 56) + 16);
    }

    else
    {
      if (![v9 hasOfflinePlaybackKeys])
      {
        v15 = [ICStoreRequestContext alloc];
        v27[0] = _NSConcreteStackBlock;
        v27[1] = 3221225472;
        v27[2] = sub_1000675DC;
        v27[3] = &unk_1001DBA68;
        v28 = *(a1 + 32);
        v29 = *(a1 + 40);
        v16 = [v15 initWithBlock:v27];
        v17 = +[ICMusicSubscriptionStatusController sharedStatusController];
        v18 = [[ICMusicSubscriptionStatusRequest alloc] initWithStoreRequestContext:v16];
        [v18 setCarrierBundleProvisioningStyle:1];
        [v18 setShouldIgnoreCache:0];
        [v18 setAllowsFallbackToExpiredStatus:1];
        [v18 setAllowsFallbackToStatusNeedingReload:1];
        v22[0] = _NSConcreteStackBlock;
        v22[1] = 3221225472;
        v22[2] = sub_10006768C;
        v22[3] = &unk_1001DBA90;
        v19 = *(a1 + 56);
        v23 = v17;
        v24 = v16;
        v25 = *(a1 + 48);
        v26 = v19;
        v20 = v16;
        v21 = v17;
        [v21 performSubscriptionStatusRequest:v18 withCompletionHandler:v22];

        goto LABEL_15;
      }

      v14 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134217984;
        v32 = v7;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Offline subscription keys already present for DSID %llu - skipping key refresh", buf, 0xCu);
      }

      v12 = *(*(a1 + 56) + 16);
    }

    v12();
LABEL_15:

    goto LABEL_16;
  }

  v13 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v32 = v5;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "No account properties - skipping subscription key refresh. err=%{public}@", buf, 0xCu);
  }

  (*(*(a1 + 56) + 16))();
LABEL_16:
}

void sub_1000675DC(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setAllowsExpiredBags:1];
  [v3 setIdentity:*(a1 + 32)];
  [v3 setIdentityStore:*(a1 + 40)];
  v4 = +[ICClientInfo defaultInfo];
  [v3 setClientInfo:v4];

  v5 = [[ICStoreURLResponseAuthenticationProvider alloc] initWithUserInteractionLevel:1];
  [v3 setAuthenticationProvider:v5];
}

void sub_10006768C(void *a1, void *a2, void *a3)
{
  v5 = a3;
  if (!v5)
  {
    v7 = [a2 subscriptionStatus];
    if ([v7 statusType] == 1)
    {
      if ([v7 hasCapability:128])
      {
        v8 = a1[4];
        v9 = a1[5];
        v15[0] = _NSConcreteStackBlock;
        v15[1] = 3221225472;
        v15[2] = sub_1000678D8;
        v15[3] = &unk_1001DDBD8;
        v10 = a1[7];
        v15[4] = a1[6];
        v16 = v10;
        [v8 refreshSubscriptionUsingRequestContext:v9 withCompletionHandler:v15];

LABEL_14:
        goto LABEL_15;
      }

      v11 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v18 = v7;
        v12 = "Subscription not enabled - skipping key refresh. status=%{public}@";
        v13 = v11;
        v14 = 12;
        goto LABEL_12;
      }
    }

    else
    {
      v11 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v12 = "Subscription not enabled - skipping key refresh";
        v13 = v11;
        v14 = 2;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, v12, buf, v14);
      }
    }

    (*(a1[7] + 16))();
    goto LABEL_14;
  }

  v6 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v5;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Failed to obtain subscription status - skipping key refresh. err=%{public}@", buf, 0xCu);
  }

  (*(a1[7] + 16))();
LABEL_15:
}

void sub_1000678D8(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v5;
      v9 = "Subscription refresh complete. status=%{public}@, err=%{public}@";
      v10 = v8;
      v11 = OS_LOG_TYPE_ERROR;
      v12 = 22;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v10, v11, v9, &v14, v12);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 138543362;
    v15 = v5;
    v9 = "Subscription refresh complete. status=%{public}@";
    v10 = v8;
    v11 = OS_LOG_TYPE_DEFAULT;
    v12 = 12;
    goto LABEL_6;
  }

  [*(a1 + 32) refreshEnhancedAudioSharedKeys];
  (*(*(a1 + 40) + 16))(*(a1 + 40), v6, v13);
}

void sub_1000680B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000680DC(uint64_t a1)
{
  sub_100062D70();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPHomeMonitor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213C58 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPHomeMonitorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICDServer.m" lineNumber:82 description:{@"Unable to find class %s", "MPHomeMonitor"}];

    __break(1u);
  }
}

void sub_1000681A4(uint64_t a1)
{
  sub_100062D70();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPHomeUserMonitor");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213C60 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPHomeUserMonitorClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICDServer.m" lineNumber:83 description:{@"Unable to find class %s", "MPHomeUserMonitor"}];

    __break(1u);
  }
}

void sub_10006826C(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 hasCapability:128])
  {
    v4 = [*(a1 + 32) valueForDatabaseProperty:@"MLLastUploadedExplicitContentAllowedBoolean"];
    v5 = v4;
    if (v4 && *(a1 + 64) == [v4 BOOLValue])
    {
      v6 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = *(a1 + 64);
        *buf = 67109120;
        LODWORD(v21) = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "parental control settings have not changed - allowExplicitContent %d", buf, 8u);
      }
    }

    else
    {
      v9 = [[ICSetParentalControlRequestOperation alloc] initWithRequestContext:*(a1 + 40) allowsExplicitContent:*(a1 + 64) isAutomatic:*(a1 + 65)];
      v10 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        v11 = [*(a1 + 32) accountDSID];
        v12 = [v5 BOOLValue];
        v13 = *(a1 + 64);
        v14 = *(a1 + 65);
        *buf = 138478595;
        v21 = v11;
        v22 = 1024;
        *v23 = v12;
        *&v23[4] = 1024;
        *&v23[6] = v13;
        v24 = 1024;
        v25 = v14;
        _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "updating explicit content. dsid=%{private}@, lastUploadedValue=%{BOOL}u, setting allowsExplicitContent=%{BOOL}u, automatic=%{BOOL}u", buf, 0x1Eu);
      }

      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_100068588;
      v16[3] = &unk_1001DB9F8;
      v17 = v9;
      v18 = *(a1 + 32);
      v19 = *(a1 + 64);
      v6 = v9;
      v15 = [NSBlockOperation blockOperationWithBlock:v16];
      [v6 setName:@"com.apple.itunescloudd.setParentalControlRequestOperation"];
      [v15 addDependency:v6];
      [*(a1 + 48) addBackgroundOperation:v6 priority:1];
      [*(a1 + 48) addOperation:v15 priority:1];
    }
  }

  else
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [*(a1 + 56) userIdentity];
      *buf = 138543618;
      v21 = v8;
      v22 = 2114;
      *v23 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "User Identity %{public}@ has subscription status %{public}@.", buf, 0x16u);
    }
  }
}

void sub_100068588(uint64_t a1)
{
  v2 = [*(a1 + 32) error];
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = *(a1 + 48);
      v7[0] = 67109378;
      v7[1] = v4;
      v8 = 2114;
      v9 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Could not update parental settings to %d - error %{public}@.", v7, 0x12u);
    }
  }

  else
  {
    v5 = *(a1 + 40);
    v6 = [NSNumber numberWithBool:*(a1 + 48)];
    [v5 setValue:v6 forDatabaseProperty:@"MLLastUploadedExplicitContentAllowedBoolean"];
  }
}

void sub_10006898C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000689AC(uint64_t a1)
{
  sub_100062D70();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaQuery");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213C48 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPMediaQueryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICDServer.m" lineNumber:81 description:{@"Unable to find class %s", "MPMediaQuery"}];

    __break(1u);
  }
}

id sub_100068A74()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = qword_100213C50;
  v7 = qword_100213C50;
  if (!qword_100213C50)
  {
    v3[0] = _NSConcreteStackBlock;
    v3[1] = 3221225472;
    v3[2] = sub_100068B54;
    v3[3] = &unk_1001DF318;
    v3[4] = &v4;
    sub_100068B54(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_100068B3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100068B54(uint64_t a1)
{
  sub_100062D70();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("MPMediaLibrary");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    qword_100213C50 = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = +[NSAssertionHandler currentHandler];
    v3 = [NSString stringWithUTF8String:"Class getMPMediaLibraryClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"ICDServer.m" lineNumber:80 description:{@"Unable to find class %s", "MPMediaLibrary"}];

    __break(1u);
  }
}

void sub_100068F10(uint64_t a1)
{
  v2 = [*(a1 + 32) isStartupSequenceCompleted];
  v3 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  v4 = v3;
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v5 = *(a1 + 32);
      *buf = 134217984;
      v50 = v5;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEBUG, "ICDServer %p - _completeStartupSequenceIfNeeded - Nothing to do [startup sequence completed]", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      *buf = 134217984;
      v50 = v6;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Completing server setup ....", buf, 0xCu);
    }

    dispatch_group_enter(*(*(a1 + 32) + 56));
    [*(a1 + 32) _initializeAncillaryServices];
    v7 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = *(a1 + 32);
      *buf = 134217984;
      v50 = v8;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Server Setup - 2. Services initialized...", buf, 0xCu);
    }

    v9 = *(a1 + 32);
    v10 = [v9 accountManager];
    v11 = [v10 supportedConfigurations];
    [v9 _setupMPMediaLibraryFilteringForConfigurations:v11];

    v12 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = *(a1 + 32);
      *buf = 134217984;
      v50 = v13;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Server Setup - 3. MediaLibrary filtering setup completed...", buf, 0xCu);
    }

    [*(a1 + 32) _startAncillaryServices];
    v14 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a1 + 32);
      *buf = 134217984;
      v50 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Server Setup - 4. Services started...", buf, 0xCu);
    }

    v16 = *(a1 + 32);
    v17 = [v16 accountManager];
    v18 = [v17 supportedConfigurations];
    [v16 _migrateToLatestUserVersionForConfigurations:v18];

    v19 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = *(a1 + 32);
      *buf = 134217984;
      v50 = v20;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Server Setup - 5. Migration completed...", buf, 0xCu);
    }

    v21 = [*(a1 + 32) accountManager];
    [v21 updateState];

    v22 = [*(a1 + 32) handlerCoordinator];
    v23 = [*(a1 + 32) accountManager];
    v24 = [v23 stateChange];
    [v22 setupHandlersWithAccountStateChange:v24];

    v25 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = *(a1 + 32);
      *buf = 134217984;
      v50 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Server Setup - 6. Handlers setup...", buf, 0xCu);
    }

    v27 = +[NSNotificationCenter defaultCenter];
    [v27 addObserver:*(a1 + 32) selector:"_handleURLBagProviderDidUpdateBagNotification:" name:ICURLBagProviderDidUpdateBagNotification object:0];

    [*(a1 + 32) _initializeSocialFeaturesAvailabilityIfNeeded];
    v28 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      v29 = *(a1 + 32);
      *buf = 134217984;
      v50 = v29;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Server Setup - 7. Posting notification that the service is ready", buf, 0xCu);
    }

    v30 = dword_100212C48;
    if (dword_100212C48 == -1)
    {
      notify_register_check("com.apple.itunescloud.setupcompleted", &dword_100212C48);
      v30 = dword_100212C48;
    }

    notify_set_state(v30, 1uLL);
    notify_post("com.apple.itunescloud.setupcompleted");
    v31 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 32);
      *buf = 134217984;
      v50 = v32;
      _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Server Setup - Creating push notification controller...", buf, 0xCu);
    }

    v33 = *(a1 + 32);
    if (!v33[19])
    {
      v34 = [CloudPushNotificationController alloc];
      v35 = [*(a1 + 32) accountManager];
      v36 = [(CloudPushNotificationController *)v34 initWithAccountManager:v35];
      v37 = *(a1 + 32);
      v38 = *(v37 + 152);
      *(v37 + 152) = v36;

      [*(*(a1 + 32) + 152) setMediaUserStateCenterServer:*(*(a1 + 32) + 176)];
      [*(*(a1 + 32) + 152) setPlaybackPositionServer:*(*(a1 + 32) + 88)];
      [*(*(a1 + 32) + 152) setUserNotificationController:*(*(a1 + 32) + 168)];
      v33 = *(a1 + 32);
    }

    v39 = [v33 accountManager];
    v40 = [v39 supportedConfigurations];
    v48[0] = _NSConcreteStackBlock;
    v48[1] = 3221225472;
    v48[2] = sub_100069694;
    v48[3] = &unk_1001DB910;
    v48[4] = *(a1 + 32);
    [v40 enumerateObjectsUsingBlock:v48];

    v41 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = *(a1 + 32);
      *buf = 134217984;
      v50 = v42;
      _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Server Setup - 8. Explicit content settings updated...", buf, 0xCu);
    }

    v43 = [*(a1 + 32) accountManager];
    v4 = [v43 activeConfiguration];

    [*(a1 + 32) _updateAirPlaySettingsForConfiguration:v4];
    v44 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = *(a1 + 32);
      *buf = 134217984;
      v50 = v45;
      _os_log_impl(&_mh_execute_header, v44, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Server Setup - 9. Posting notification that the service is ready", buf, 0xCu);
    }

    [*(a1 + 32) _ensureSubscriptionInformationIsUpToDateForConfiguration:v4];
    [*(a1 + 32) _updateEnhancedAudioAvailabilityIfNeeded];
    [*(a1 + 32) _updateHTTPCookieStoreForContentRestrictions];
    [*(a1 + 32) _ensureURLResolutionCacheFileExists];
    [*(a1 + 32) _updateAccountServerCachedData];
    [*(a1 + 32) _scheduleFixFaultyMusicKitPlaybackDonations];
    [*(a1 + 32) setStartupSequenceCompleted:1];
    dispatch_group_leave(*(*(a1 + 32) + 56));
    v46 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = *(a1 + 32);
      *buf = 134217984;
      v50 = v47;
      _os_log_impl(&_mh_execute_header, v46, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Server setup completed", buf, 0xCu);
    }
  }
}

void sub_100069988(id a1)
{
  v1 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ICCloudServerProtocol];
  v2 = qword_100213C20;
  qword_100213C20 = v1;

  v3 = MSVPropertyListDataClasses();
  v4 = [NSMutableSet setWithSet:v3];

  [v4 addObject:objc_opt_class()];
  [qword_100213C20 setClasses:v4 forSelector:"editCollaborationWithPersistentID:configuration:properties:trackEdits:completion:" argumentIndex:3 ofReply:0];
}

void sub_100069AA4(id a1)
{
  qword_100213C10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___ICCloudServerListenerEndpointServiceProtocol];

  _objc_release_x1();
}

id sub_10006A380(uint64_t a1)
{
  [*(*(a1 + 32) + 136) resume];
  v2 = *(*(a1 + 32) + 144);

  return [v2 startSystemXPCService];
}

void sub_10006A3C4(id a1)
{
  v1 = +[ICPlayActivityServer sharedInstance];
  [v1 start];

  v2 = +[CloudContentTasteUpdateRequestListener sharedContentTasteRequestListener];
  [v2 start];
}

void sub_10006A4B8(uint64_t a1)
{
  v2 = +[ICDeviceInfo currentDeviceInfo];
  v3 = [v2 isAudioAccessory];

  if (v3)
  {
    v4 = 2;
  }

  else
  {
    v5 = +[ICDeviceInfo currentDeviceInfo];
    v6 = [v5 isAppleTV];

    v4 = v6;
  }

  v7 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v37 = 134218240;
    v38 = v8;
    v39 = 1024;
    v40 = v4;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "ICDServer %p - policyType=%d", &v37, 0x12u);
  }

  v9 = *(a1 + 32);
  if (!v9[14])
  {
    v10 = [[ICDAccountManager alloc] initWithLibraryManagementPolicy:v4];
    v11 = *(a1 + 32);
    v12 = *(v11 + 112);
    *(v11 + 112) = v10;

    v9 = *(a1 + 32);
  }

  if (!v9[15])
  {
    v13 = [[ICDHandlerCoordinator alloc] initWithLibraryManagementPolicy:v4 backgroundTaskScheduler:*(a1 + 32)];
    v14 = *(a1 + 32);
    v15 = *(v14 + 120);
    *(v14 + 120) = v13;

    v16 = +[ICDeviceInfo currentDeviceInfo];
    v17 = [v16 isAppleTV];

    v9 = *(a1 + 32);
    if (v17)
    {
      [v9 _retryLoadingCloudLibraryForSecondaryAccountsOnAppleTV];
      v9 = *(a1 + 32);
    }
  }

  if (!v9[16])
  {
    v18 = [[ICDBackgroundTaskManager alloc] initWithAccountManager:*(*(a1 + 32) + 112) handlerCoordinator:*(*(a1 + 32) + 120)];
    v19 = *(a1 + 32);
    v20 = *(v19 + 128);
    *(v19 + 128) = v18;
  }

  v21 = +[ICDeviceInfo currentDeviceInfo];
  v22 = [v21 isMac];

  if ((v22 & 1) == 0)
  {
    v23 = *(a1 + 32);
    if (!v23[17])
    {
      v24 = +[ICDelegateAccountStoreServiceListener machServiceListener];
      v25 = *(a1 + 32);
      v26 = *(v25 + 136);
      *(v25 + 136) = v24;

      v23 = *(a1 + 32);
    }

    if (!v23[18])
    {
      v27 = [ICStoreRequestContext alloc];
      v28 = +[ICClientInfo defaultInfo];
      v29 = [v27 initWithClientInfo:v28];
      v30 = [ICDelegationProviderService systemServiceWithRequestContext:v29];
      v31 = *(a1 + 32);
      v32 = *(v31 + 144);
      *(v31 + 144) = v30;

      v23 = *(a1 + 32);
    }

    if (!v23[21])
    {
      v33 = objc_alloc_init(CloudUserNotificationController);
      v34 = *(a1 + 32);
      v35 = *(v34 + 168);
      *(v34 + 168) = v33;

      v36 = [*(a1 + 32) cloudBadgingService];
      [*(*(a1 + 32) + 168) setBadgeControllerProtocol:v36];
    }
  }
}

void sub_10006A8E0(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Handling SIGTERM event", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained stop];
  xpc_transaction_exit_clean();
}

void sub_10006B90C(id a1, NSError *a2)
{
  v2 = a2;
  if (v2)
  {
    v3 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v4 = 138543362;
      v5 = v2;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Failed to remove explicit playback intents. err=%{public}@", &v4, 0xCu);
    }
  }
}

void sub_10006BBA0(uint64_t a1)
{
  v2 = +[ICDeviceInfo currentDeviceInfo];
  v3 = [v2 isAppleTV];

  if (v3)
  {
    v4 = [*(a1 + 32) internalOperationQueue];
    v5[0] = _NSConcreteStackBlock;
    v5[1] = 3221225472;
    v5[2] = sub_10006BCE0;
    v5[3] = &unk_1001DF578;
    v5[4] = *(a1 + 32);
    [v4 addOperationWithBlock:v5];
  }
}

void sub_10006BC5C(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[10] == 1)
  {
    v3 = [v2 accountManager];
    v4 = [v3 libraryManagementPolicy];

    if (v4 == 1)
    {
      *(*(a1 + 32) + 10) = 0;
      v5 = *(a1 + 32);

      [v5 _transitionAppleTVToParallelMultiUserLibraryManagementPolicy];
    }
  }
}

void sub_10006BCE0(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[10] == 1)
  {
    v3 = [v2 accountManager];
    v4 = [v3 libraryManagementPolicy];

    if (v4 == 1)
    {
      *(*(a1 + 32) + 10) = 0;
      v5 = *(a1 + 32);

      [v5 _transitionAppleTVToParallelMultiUserLibraryManagementPolicy];
    }
  }
}

void sub_10006C26C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v5)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "[CellularDataEnabled] An active account exists, updating Purchase History...", buf, 2u);
    }

    if ([*(a1 + 32) jaliscoOnDiskDatabaseRevision] < 1)
    {
      v8 = 1;
    }

    else
    {
      v8 = 4;
    }

    v9 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:*(a1 + 40)];
    v10 = [*(a1 + 40) clientIdentity];
    [v9 updateJaliscoLibraryWithClientIdentity:v10 forReason:v8 completionHandler:&stru_1001DB8C8];

    if ([v5 isActiveLocker])
    {
      v11 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "[CellularDataEnabled] An active locker account exists, updating iCloud Music Library...", v15, 2u);
      }

      if ([*(a1 + 32) sagaOnDiskDatabaseRevision] < 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = 4;
      }

      v13 = [(BaseRequestHandler *)ICDCloudMusicLibraryRequestHandler handlerForConfiguration:*(a1 + 40)];
      v14 = [*(a1 + 40) clientIdentity];
      [v13 updateSagaLibraryWithClientIdentity:v14 forReason:v12 allowNoisyAuthPrompt:0 isExplicitUserAction:0 completionHandler:&stru_1001DB8E8];
    }
  }
}

void sub_10006CB20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006CB38(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 72);
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_10006CBD0;
  v5[3] = &unk_1001DB8A8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v3;
  v7 = v4;
  [v2 enumerateKeysAndObjectsUsingBlock:v5];
}

void sub_10006CBD0(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v10 = a2;
  if ([*(a1 + 32) isEqual:a3])
  {
    v7 = [v10 copy];
    v8 = *(*(a1 + 40) + 8);
    v9 = *(v8 + 40);
    *(v8 + 40) = v7;

    *a4 = 1;
  }
}

void sub_10006CD70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_10006CD88(uint64_t a1)
{
  v2 = *(a1 + 48);
  v3 = ICCloudServerSupportedServiceGetName();
  v4 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  v5 = v4;
  if (v3)
  {
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 32);
      v18 = 134218242;
      v19 = v6;
      v20 = 2114;
      v21 = v3;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Looking up XPC Listener [%{public}@]", &v18, 0x16u);
    }

    v7 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v3];

    if (v7)
    {
      goto LABEL_28;
    }

    v8 = *(a1 + 48);
    if (v8 > 3)
    {
      if (v8 > 5)
      {
        if (v8 == 6)
        {
          v7 = +[NSXPCListener anonymousListener];
          v11 = [*(a1 + 32) playbackPositionService];
        }

        else
        {
          if (v8 != 7)
          {
            goto LABEL_27;
          }

          v7 = +[NSXPCListener anonymousListener];
          v11 = [*(a1 + 32) cloudBadgingService];
        }
      }

      else
      {
        if (v8 == 4)
        {
          v7 = +[NSXPCListener anonymousListener];
          [*(a1 + 32) cloudServiceStatusMonitor];
        }

        else
        {
          v7 = +[NSXPCListener anonymousListener];
          [*(a1 + 32) mediaUserStateCenterServer];
        }
        v11 = ;
      }
    }

    else
    {
      if (v8 <= 1)
      {
        if (!v8)
        {
          v12 = +[NSAssertionHandler currentHandler];
          [v12 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"ICDServer.m" lineNumber:444 description:@"We should never get here"];

          v7 = 0;
          goto LABEL_27;
        }

        if (v8 != 1)
        {
LABEL_27:
          [*(*(a1 + 32) + 72) setObject:v7 forKeyedSubscript:v3];
          [v7 resume];

LABEL_28:
          v14 = os_log_create("com.apple.amp.itunescloudd", "XPC");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            v15 = *(a1 + 32);
            v18 = 134218242;
            v19 = v15;
            v20 = 2114;
            v21 = v3;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "ICDServer %p - Retrieved XPC Listener [%{public}@]", &v18, 0x16u);
          }

          v16 = [*(*(a1 + 32) + 72) objectForKeyedSubscript:v3];
          v17 = *(*(a1 + 40) + 8);
          v5 = *(v17 + 40);
          *(v17 + 40) = v16;
          goto LABEL_31;
        }

        v9 = [[NSXPCListener alloc] initWithMachServiceName:@"com.apple.itunescloudd.xpc"];
LABEL_18:
        v7 = v9;
        [v9 setDelegate:*(a1 + 32)];
        goto LABEL_27;
      }

      if (v8 != 2)
      {
        v9 = +[NSXPCListener anonymousListener];
        goto LABEL_18;
      }

      v7 = +[NSXPCListener anonymousListener];
      v11 = [*(a1 + 32) networkAvailabilityService];
    }

    v13 = v11;
    [v7 setDelegate:v11];

    goto LABEL_27;
  }

  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 32);
    v18 = 134217984;
    v19 = v10;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "ICDServer %p - No XPC listener [unknown service]", &v18, 0xCu);
  }

LABEL_31:
}

void sub_10006DD50(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 138543362;
      *v18 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Could not get ICML state reason, error=%{public}@", &v17, 0xCu);
    }

LABEL_17:

    goto LABEL_18;
  }

  if (v5)
  {
    v7 = [v5 objectForKey:@"AutoEnableCloudLibraryFailureReasonKey"];
    v8 = [v7 intValue];
    v9 = [v7 intValue];
    v10 = v9;
    if (v8 == -101 || v9 == -102)
    {
      v13 = os_log_create("com.apple.amp.itunescloudd", "XPC");
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 67109376;
        *v18 = v8 == -101;
        *&v18[4] = 1024;
        *&v18[6] = v10 == -102;
        _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Not allowing automatic enabling of iCML notEnabledInBackup=%{BOOL}u, unsupportedDisposition=%{BOOL}u", &v17, 0xEu);
      }
    }

    else
    {
      [*(a1 + 32) setSupportsAutomaticEnablingiCloudMusicLibrary:1];
    }

    v14 = os_log_create("com.apple.amp.itunescloudd", "XPC");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = sub_1000033E0(*(a1 + 40));
      v16 = [*(a1 + 32) supportsAutomaticEnablingiCloudMusicLibrary];
      v17 = 67109634;
      *v18 = v15;
      *&v18[4] = 2114;
      *&v18[6] = v5;
      v19 = 1024;
      v20 = v16;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "isEnablingICMLDestructive=%{BOOL}u, cloudLibraryStateReason=%{public}@, supportsAutomaticEnablingiCloudMusicLibrary=%d", &v17, 0x18u);
    }

    goto LABEL_17;
  }

  v11 = os_log_create("com.apple.amp.itunescloudd", "XPC");
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = sub_1000033E0(*(a1 + 40));
    v17 = 67109120;
    *v18 = v12;
    _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Allowing automatic enabling of iCML, isEnablingICMLDestructive=%{BOOL}u", &v17, 8u);
  }

  [*(a1 + 32) setSupportsAutomaticEnablingiCloudMusicLibrary:1];
LABEL_18:
  dispatch_semaphore_signal(*(a1 + 48));
}

uint64_t sub_10006E3C8(uint64_t a1)
{
  [*(*(a1 + 32) + 72) enumerateKeysAndObjectsUsingBlock:&stru_1001DB830];
  v2 = *(a1 + 32);
  v3 = *(v2 + 72);
  *(v2 + 72) = 0;

  v4 = +[CloudMusicSubscriptionStatusServiceListener sharedMusicSubscriptionStatusServiceListener];
  [v4 stop];

  v5 = *(a1 + 32);
  if (*(v5 + 200))
  {
    dispatch_source_cancel(*(v5 + 200));
    v6 = *(a1 + 32);
    v7 = *(v6 + 200);
    *(v6 + 200) = 0;

    v5 = *(a1 + 32);
  }

  if (*(v5 + 8) == 1)
  {
    [v5 _stopAncillaryServices];
    *(*(a1 + 32) + 8) = 0;
    v5 = *(a1 + 32);
  }

  [v5 _tearDownKVO];
  result = *(*(a1 + 32) + 184);
  if (result)
  {
    result = MSVLogRemoveStateHandler();
    *(*(a1 + 32) + 184) = 0;
  }

  return result;
}

uint64_t sub_10006E600(uint64_t a1)
{
  objc_initWeak(&location, *(a1 + 32));
  v1 = &_dispatch_main_q;
  objc_copyWeak(&v4, &location);
  v2 = MSVLogAddStateHandler();
  objc_destroyWeak(&v4);

  objc_destroyWeak(&location);
  return v2;
}

void sub_10006E6C4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 24));
  _Unwind_Resume(a1);
}

uint64_t sub_10006E6E8(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v7 = WeakRetained;
    if (WeakRetained)
    {
      v8 = [WeakRetained _stateDump];
      v9 = v5[2](v5, v8);
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void sub_10006E9F0(id a1)
{
  qword_100213C00 = [[ICDServer alloc] _init];

  _objc_release_x1();
}

void sub_10006EBA8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ML3DatabasePrivacyContext alloc] initWithClientIdentity:*(a1 + 32)];
  [v3 setPrivacyContext:v4];

  v5 = +[NSMutableArray array];
  v6 = [v3 executeQuery:@"SELECT DISTINCT (fetchable_artwork_token) withParameters:{purchase_history_id, media_type FROM best_artwork_token LEFT OUTER JOIN artwork ON fetchable_artwork_token = artwork_token JOIN item_store ON entity_pid = item_store.item_pid AND entity_type = 0 JOIN item USING (item_pid) WHERE artwork_token IS NULL AND best_artwork_token.artwork_type = ? AND fetchable_artwork_source_type = ? GROUP BY fetchable_artwork_token", &off_1001EE2A8}];

  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_10006ECD4;
  v9[3] = &unk_1001DF508;
  v7 = *(a1 + 32);
  v12 = *(a1 + 48);
  v10 = v7;
  v11 = v5;
  v8 = v5;
  [v6 enumerateRowsWithBlock:v9];
  [*(a1 + 40) importCloudArtworkForRequests:v8];
}

void sub_10006ECD4(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 stringForColumnIndex:0];
  v4 = [v3 int64ForColumnIndex:1];
  v5 = [v3 intForColumnIndex:2];

  v6 = [[CloudArtworkImportRequest alloc] initWithClientIdentity:*(a1 + 32)];
  [(CloudArtworkImportRequest *)v6 setCloudID:v4];
  [(CloudArtworkImportRequest *)v6 setToken:v7];
  [(CloudArtworkImportRequest *)v6 setMediaType:v5];
  [(CloudArtworkImportRequest *)v6 setArtworkType:2];
  [(CloudArtworkImportRequest *)v6 setAllowsCellularData:*(a1 + 48)];
  [*(a1 + 40) addObject:v6];
}

void sub_10006EE6C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [[ML3DatabasePrivacyContext alloc] initWithClientIdentity:*(a1 + 32)];
  [v3 setPrivacyContext:v4];

  v5 = +[NSMutableArray array];
  v6 = [v3 executeQuery:@"SELECT DISTINCT (fetchable_artwork_token) withParameters:{purchase_history_id, media_type FROM best_artwork_token LEFT OUTER JOIN artwork ON fetchable_artwork_token = artwork_token JOIN item_store ON entity_pid = item_store.item_pid AND entity_type = 0 JOIN item USING (item_pid) WHERE artwork_token IS NULL AND best_artwork_token.artwork_type = ? AND fetchable_artwork_source_type = ? GROUP BY fetchable_artwork_token", &off_1001EE290}];

  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_10006EF98;
  v10[3] = &unk_1001DBDE8;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v11 = v7;
  v12 = v8;
  v13 = v5;
  v9 = v5;
  [v6 enumerateRowsWithBlock:v10];
  [*(a1 + 40) importCloudArtworkForRequests:v9];
}

void sub_10006EF98(uint64_t a1, void *a2)
{
  v3 = a2;
  v7 = [v3 stringForColumnIndex:0];
  v4 = [v3 int64ForColumnIndex:1];
  v5 = [v3 intForColumnIndex:2];

  v6 = [[CloudArtworkImportRequest alloc] initWithClientIdentity:*(a1 + 32)];
  [(CloudArtworkImportRequest *)v6 setCloudID:v4];
  [(CloudArtworkImportRequest *)v6 setToken:v7];
  [(CloudArtworkImportRequest *)v6 setMediaType:v5];
  [(CloudArtworkImportRequest *)v6 setArtworkType:1];
  -[CloudArtworkImportRequest setAllowsCellularData:](v6, "setAllowsCellularData:", [*(a1 + 40) _cellularDataAllowedForMediaType:v5]);
  [*(a1 + 48) addObject:v6];
}

void sub_10006F7AC(uint64_t a1, void *a2)
{
  v3 = a2;
  v17 = 0;
  v18 = &v17;
  v19 = 0x3032000000;
  v20 = sub_10006FB34;
  v21 = sub_10006FB44;
  v22 = objc_opt_new();
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v4 = [[ML3DatabasePrivacyContext alloc] initWithClientIdentity:*(a1 + 32)];
  [v3 setPrivacyContext:v4];

  if (*(a1 + 56) == 1)
  {
    v25[0] = &off_1001ED300;
    v5 = [NSNumber numberWithLongLong:*(a1 + 64)];
    v25[1] = v5;
    v6 = [NSArray arrayWithObjects:v25 count:2];
    [v3 executeQuery:@"SELECT fetchable_artwork_token withParameters:{store_id FROM best_artwork_token JOIN item_artist ON entity_pid = item_artist_pid AND entity_type = ? WHERE entity_pid = ?", v6}];
  }

  else
  {
    v24[0] = &off_1001ED318;
    v5 = [NSNumber numberWithLongLong:*(a1 + 64)];
    v24[1] = v5;
    v6 = [NSArray arrayWithObjects:v24 count:2];
    [v3 executeQuery:@"SELECT fetchable_artwork_token withParameters:{store_id FROM best_artwork_token JOIN album_artist ON entity_pid = album_artist_pid AND entity_type = ? WHERE entity_pid = ?", v6}];
  }
  v7 = ;

  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10006FB4C;
  v12[3] = &unk_1001DD988;
  v12[4] = &v17;
  v12[5] = &v13;
  [v7 enumerateRowsWithBlock:v12];
  if ([v18[5] length] && v14[3])
  {
    v8 = [[CloudArtworkImportRequest alloc] initWithClientIdentity:*(a1 + 32)];
    [(CloudArtworkImportRequest *)v8 setCloudID:v14[3]];
    [(CloudArtworkImportRequest *)v8 setToken:v18[5]];
    [(CloudArtworkImportRequest *)v8 setMediaType:8];
    [(CloudArtworkImportRequest *)v8 setArtworkType:4];
    [(CloudArtworkImportRequest *)v8 setAllowsCellularData:*(a1 + 72)];
    [(CloudArtworkImportRequest *)v8 setCompletionHandler:*(a1 + 48)];
    v9 = [*(a1 + 40) artworkImporter];
    v23 = v8;
    v10 = [NSArray arrayWithObjects:&v23 count:1];
    [v9 importCloudArtworkForRequests:v10];

LABEL_9:
    goto LABEL_10;
  }

  v11 = *(a1 + 48);
  if (v11)
  {
    v8 = [NSError ic_cloudClientErrorWithCode:2015 userInfo:0];
    (*(v11 + 16))(v11, v8);
    goto LABEL_9;
  }

LABEL_10:

  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
}

void sub_10006FB00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v8 = va_arg(va1, void);
  v10 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10006FB34(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10006FB4C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 stringForColumnIndex:0];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;

  v7 = [v3 int64ForColumnIndex:1];
  *(*(*(a1 + 40) + 8) + 24) = v7;
}

void sub_10006FC44(uint64_t a1)
{
  [*(a1 + 32) setCurrentUpdateOperation:0];
  v2 = [*(a1 + 32) followupUpdateOpertion];

  if (v2)
  {
    v3 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Running second artist hero image update", v6, 2u);
    }

    v4 = [*(a1 + 32) followupUpdateOpertion];
    v5 = [*(a1 + 32) operationQueue];
    [v5 addOperation:v4];

    [*(a1 + 32) setCurrentUpdateOperation:v4];
    [*(a1 + 32) setFollowupUpdateOpertion:0];
  }
}

void sub_10006FE44(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) powerAssertionIdentifier];
  CPSetPowerAssertionWithIdentifier();

  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  if (v4)
  {
    if (!v5)
    {
      v6 = [*(a1 + 32) watchdog];
      [v6 suspend];

      v7 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        v8 = [*(a1 + 32) powerAssertionIdentifier];
        *buf = 138543362;
        v14 = v8;
        _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Releasing power assertion: %{public}@", buf, 0xCu);
      }

      [*(a1 + 32) _artistHeroImageUpdateFinished];
      return;
    }

    goto LABEL_10;
  }

  if (!v5)
  {
LABEL_10:
    if (v5 < v4)
    {
      v12 = [*(a1 + 32) watchdog];
      [v12 resume];
    }

    return;
  }

  v9 = [*(a1 + 32) watchdog];
  [v9 resume];

  v10 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [*(a1 + 32) powerAssertionIdentifier];
    *buf = 138543362;
    v14 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Taking power assertion: %{public}@", buf, 0xCu);
  }
}

id sub_1000701F0(uint64_t a1)
{
  [*(a1 + 32) setFollowupUpdateOpertion:0];
  if (*(a1 + 40) == 1)
  {
    v2 = [*(a1 + 32) operationQueue];
    [v2 waitUntilAllOperationsAreFinished];
  }

  v3 = *(a1 + 32);

  return [v3 setCurrentUpdateOperation:0];
}

void sub_100070314(uint64_t a1)
{
  v2 = [*(a1 + 32) musicLibrary];
  v3 = [v2 currentRevision];

  v4 = [*(a1 + 32) musicLibrary];
  v5 = [v4 valueForDatabaseProperty:@"MLArtistHeroImageImportDatabaseRevision"];
  v6 = [v5 longLongValue];

  v7 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
  if (v3 > v6)
  {
    if (v8)
    {
      *buf = 134217984;
      v109 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Searching for artists added since database revision %lld", buf, 0xCu);
    }

    v9 = +[NSMutableSet set];
    v10 = [*(a1 + 32) musicLibrary];
    v11 = +[ML3Artist revisionTrackingCode];
    v104[0] = _NSConcreteStackBlock;
    v104[1] = 3221225472;
    v104[2] = sub_100070DF8;
    v104[3] = &unk_1001DBE38;
    v104[4] = *(a1 + 32);
    v7 = v9;
    v105 = v7;
    [v10 enumeratePersistentIDsAfterRevision:v6 revisionTrackingCode:v11 maximumRevisionType:0 forMediaTypes:0 inUsersLibrary:0 usingBlock:v104];

    v12 = +[NSMutableSet set];
    v13 = [*(a1 + 32) musicLibrary];
    v14 = +[ML3AlbumArtist revisionTrackingCode];
    v102[0] = _NSConcreteStackBlock;
    v102[1] = 3221225472;
    v102[2] = sub_100070EB8;
    v102[3] = &unk_1001DBE38;
    v102[4] = *(a1 + 32);
    v15 = v12;
    v103 = v15;
    [v13 enumeratePersistentIDsAfterRevision:v6 revisionTrackingCode:v14 maximumRevisionType:0 forMediaTypes:0 inUsersLibrary:0 usingBlock:v102];

    if (-[NSObject count](v7, "count") || [v15 count])
    {
      v16 = [NSMutableSet setWithSet:v7];
      [v16 unionSet:v15];
      v17 = [*(a1 + 32) musicLibrary];
      v98[0] = _NSConcreteStackBlock;
      v98[1] = 3221225472;
      v98[2] = sub_100070F78;
      v98[3] = &unk_1001DBE88;
      v99 = v16;
      v100 = v7;
      v101 = v15;
      v18 = v16;
      [v17 databaseConnectionAllowingWrites:0 withBlock:v98];
    }

    v19 = [v7 allObjects];
    v20 = [NSMutableArray arrayWithArray:v19];

    v21 = [v15 allObjects];
    v22 = [NSMutableArray arrayWithArray:v21];

    if (![v20 count] && !objc_msgSend(v22, "count"))
    {
      v53 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_DEFAULT, "Found zero new artists and zero new album artists to update", buf, 2u);
      }

      v30 = [*(a1 + 32) musicLibrary];
      sub_1000710A8(v30, v3);
      goto LABEL_69;
    }

    v23 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      v24 = [v20 count];
      v25 = [v22 count];
      *buf = 134218240;
      v109 = v24;
      v110 = 2048;
      v111 = v25;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_DEFAULT, "Found %lu artist(s) and %lu album artist(s) to update", buf, 0x16u);
    }

    v26 = [DetermineArtistStoreIDLookupTypeOperation alloc];
    v27 = [*(a1 + 32) artworkImporter];
    v28 = *(a1 + 40);
    v29 = [*(a1 + 32) operationQueue];
    v30 = [(QueueAwareOperation *)v26 initWithArtworkImporter:v27 clientIdentity:v28 operationQueue:v29 artistPersistentIDsToUpdate:v20 albumArtistPersistentIDsToUpdate:v22];

    v31 = [*(a1 + 32) currentUpdateOperation];

    v32 = *(a1 + 32);
    if (!v31)
    {
      v46 = [v32 operationQueue];
      [v46 addOperation:v30];

      [*(a1 + 32) setCurrentUpdateOperation:v30];
LABEL_69:

      goto LABEL_70;
    }

    v33 = [v32 followupUpdateOpertion];

    v34 = *(a1 + 32);
    if (v33)
    {
      v35 = [v34 followupUpdateOpertion];
      v36 = [v35 shouldProcessSpecificArtists];

      v37 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT);
      if (!v36)
      {
        if (v38)
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "A follow-up artist hero image update already exists, it should include the specific artist persistent ids.", buf, 2u);
        }

        goto LABEL_69;
      }

      if (v38)
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_DEFAULT, "A follow-up artist hero image update already exists, merging artist persistent ids to update.", buf, 2u);
      }

      v39 = [*(a1 + 32) currentUpdateOperation];
      v40 = [v39 artistPersistentIDsToUpdate];

      v41 = [*(a1 + 32) followupUpdateOpertion];
      v42 = [v41 artistPersistentIDsToUpdate];

      v88 = v30;
      if (!v20 || v42)
      {
        if (v20 || !v42)
        {
          v83 = v22;
          v85 = v15;
          v81 = v42;
          v44 = [v42 mutableCopy];
          v94 = 0u;
          v95 = 0u;
          v96 = 0u;
          v97 = 0u;
          v57 = v20;
          v58 = v20;
          v59 = [v58 countByEnumeratingWithState:&v94 objects:v107 count:16];
          if (v59)
          {
            v60 = v59;
            v61 = *v95;
            do
            {
              for (i = 0; i != v60; i = i + 1)
              {
                if (*v95 != v61)
                {
                  objc_enumerationMutation(v58);
                }

                v63 = *(*(&v94 + 1) + 8 * i);
                if (([v44 containsObject:v63] & 1) == 0 && (objc_msgSend(v40, "containsObject:", v63) & 1) == 0)
                {
                  [v44 addObject:v63];
                }
              }

              v60 = [v58 countByEnumeratingWithState:&v94 objects:v107 count:16];
            }

            while (v60);
          }

          v64 = [*(a1 + 32) followupUpdateOpertion];
          [v64 setArtistPersistentIDsToUpdate:v44];

          v20 = v57;
          v22 = v83;
          v15 = v85;
          v42 = v81;
LABEL_50:

          v65 = [*(a1 + 32) currentUpdateOperation];
          v66 = [v65 albumArtistPersistentIDsToUpdate];

          v67 = [*(a1 + 32) followupUpdateOpertion];
          v68 = [v67 albumArtistPersistentIDsToUpdate];

          v87 = v68;
          if (!v22 || v68)
          {
            if (v22 || !v68)
            {
              v82 = v42;
              v86 = v15;
              v70 = [v68 mutableCopy];
              v90 = 0u;
              v91 = 0u;
              v92 = 0u;
              v93 = 0u;
              v84 = v22;
              v72 = v22;
              v73 = [v72 countByEnumeratingWithState:&v90 objects:v106 count:16];
              if (v73)
              {
                v74 = v73;
                v75 = *v91;
                do
                {
                  for (j = 0; j != v74; j = j + 1)
                  {
                    if (*v91 != v75)
                    {
                      objc_enumerationMutation(v72);
                    }

                    v77 = *(*(&v90 + 1) + 8 * j);
                    if (([v70 containsObject:v77] & 1) == 0 && (objc_msgSend(v66, "containsObject:", v77) & 1) == 0)
                    {
                      [v70 addObject:v77];
                    }
                  }

                  v74 = [v72 countByEnumeratingWithState:&v90 objects:v106 count:16];
                }

                while (v74);
              }

              v78 = [*(a1 + 32) followupUpdateOpertion];
              [v78 setAlbumArtistPersistentIDsToUpdate:v70];

              v22 = v84;
              v15 = v86;
              v20 = v80;
              v42 = v82;
              goto LABEL_68;
            }

            v69 = [*(a1 + 32) followupUpdateOpertion];
            v71 = v68;
            v70 = v69;
          }

          else
          {
            [v22 removeObjectsInArray:v66];
            v69 = [*(a1 + 32) followupUpdateOpertion];
            v70 = v69;
            v71 = v22;
          }

          [v69 setAlbumArtistPersistentIDsToUpdate:v71];
LABEL_68:

          v30 = v88;
          goto LABEL_69;
        }

        v43 = [*(a1 + 32) followupUpdateOpertion];
        v44 = v43;
        v45 = v42;
      }

      else
      {
        [v20 removeObjectsInArray:v40];
        v43 = [*(a1 + 32) followupUpdateOpertion];
        v44 = v43;
        v45 = v20;
      }

      [v43 setArtistPersistentIDsToUpdate:v45];
      goto LABEL_50;
    }

    v47 = [v34 currentUpdateOperation];
    v48 = [v47 artistPersistentIDsToUpdate];

    v49 = v48;
    [v20 removeObjectsInArray:v48];
    [(QueueAwareOperation *)v30 setArtistPersistentIDsToUpdate:v20];
    v50 = [*(a1 + 32) currentUpdateOperation];
    v51 = [v50 albumArtistPersistentIDsToUpdate];

    [v22 removeObjectsInArray:v51];
    [(QueueAwareOperation *)v30 setAlbumArtistPersistentIDsToUpdate:v22];
    v52 = [(QueueAwareOperation *)v30 artistPersistentIDsToUpdate];
    v89 = v30;
    if ([v52 count])
    {
    }

    else
    {
      v54 = [(QueueAwareOperation *)v30 albumArtistPersistentIDsToUpdate];
      v55 = [v54 count];

      if (!v55)
      {
        v79 = sub_100102724();
        if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v79, OS_LOG_TYPE_DEFAULT, "The artist hero image update that is already in progress will already update all of the requests artists, skipping a follow-up update.", buf, 2u);
        }

        v30 = v89;
        goto LABEL_38;
      }
    }

    v56 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v56, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v56, OS_LOG_TYPE_DEFAULT, "Artist hero image update already in progress: scheduling a follow-up update.", buf, 2u);
    }

    v30 = v89;
    [*(a1 + 32) setFollowupUpdateOpertion:v89];
LABEL_38:

    goto LABEL_69;
  }

  if (v8)
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Database revision is the same as the last update.", buf, 2u);
  }

LABEL_70:
}

void sub_100070DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a5)
  {
    v13 = v5;
    v14 = v6;
    v9 = [*(a1 + 32) musicLibrary];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100078030;
    v10[3] = &unk_1001DBE10;
    v12 = a2;
    v11 = *(a1 + 40);
    [v9 databaseConnectionAllowingWrites:0 withBlock:v10];
  }
}

void sub_100070EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  if (!a5)
  {
    v13 = v5;
    v14 = v6;
    v9 = [*(a1 + 32) musicLibrary];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100077F1C;
    v10[3] = &unk_1001DBE10;
    v12 = a2;
    v11 = *(a1 + 40);
    [v9 databaseConnectionAllowingWrites:0 withBlock:v10];
  }
}

void sub_100070F78(id *a1, void *a2)
{
  v3 = a2;
  v4 = +[ML3DatabaseStatementRenderer defaultRenderer];
  v5 = [v4 statementWithPrefix:@"SELECT entity_pid FROM artwork_token WHERE entity_pid" inParameterCount:{objc_msgSend(a1[4], "count")}];

  v6 = [a1[4] allObjects];
  v7 = [v3 executeQuery:v5 withParameters:v6];

  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100077E70;
  v8[3] = &unk_1001DBE60;
  v9 = a1[5];
  v10 = a1[6];
  [v7 enumerateRowsWithBlock:v8];
}

void sub_1000710A8(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = [NSNumber numberWithLongLong:a2];
  [v3 setValue:v4 forDatabaseProperty:@"MLArtistHeroImageImportDatabaseRevision"];
}

void sub_100071AA8(uint64_t a1, void *a2)
{
  objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

id sub_100071E04(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v28 = a3;
  v30 = +[NSMutableSet setWithCapacity:](NSMutableSet, "setWithCapacity:", [v6 count] + objc_msgSend(v28, "count"));
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v37;
    v10 = ML3ArtistPropertyStoreID;
    v11 = ML3ArtistPropertyName;
    do
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v37 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v13 = +[ML3Artist newWithPersistentID:inLibrary:](ML3Artist, "newWithPersistentID:inLibrary:", [*(*(&v36 + 1) + 8 * i) longLongValue], v5);
        v14 = [v13 valueForProperty:v10];
        v15 = [v14 longLongValue];

        if (!v15)
        {
          v16 = [v13 valueForProperty:v11];
          if ([v16 length])
          {
            [v30 addObject:v16];
          }
        }
      }

      v8 = [obj countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v8);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v17 = v28;
  v18 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v33;
    v21 = ML3AlbumArtistPropertyStoreID;
    v29 = ML3AlbumArtistPropertyName;
    do
    {
      for (j = 0; j != v19; j = j + 1)
      {
        if (*v33 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v23 = +[ML3AlbumArtist newWithPersistentID:inLibrary:](ML3AlbumArtist, "newWithPersistentID:inLibrary:", [*(*(&v32 + 1) + 8 * j) longLongValue], v5);
        v24 = [v23 valueForProperty:v21];
        v25 = [v24 longLongValue];

        if (!v25)
        {
          v26 = [v23 valueForProperty:v29];
          if ([v26 length])
          {
            [v30 addObject:v26];
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v19);
  }

  return v30;
}

id sub_100072108(void *a1)
{
  v1 = a1;
  v2 = +[NSMutableSet set];
  v3 = sub_1000755D8(v1);
  v17 = ML3ArtistPropertyName;
  v4 = [NSArray arrayWithObjects:&v17 count:1];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_100075674;
  v14[3] = &unk_1001DF8D0;
  v5 = v2;
  v15 = v5;
  [v3 enumeratePersistentIDsAndProperties:v4 usingBlock:v14];

  v6 = sub_1000756D0(v1);

  v16 = ML3AlbumArtistPropertyName;
  v7 = [NSArray arrayWithObjects:&v16 count:1];
  v12[0] = _NSConcreteStackBlock;
  v12[1] = 3221225472;
  v12[2] = sub_10007576C;
  v12[3] = &unk_1001DF8D0;
  v8 = v5;
  v13 = v8;
  [v6 enumeratePersistentIDsAndProperties:v7 usingBlock:v12];

  v9 = v13;
  v10 = v8;

  return v8;
}

void sub_1000722F0(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  v6 = [*(a1 + 32) artistNameLibraryMatchURL];
  v26[0] = @"kind";
  v26[1] = @"an";
  v27[0] = @"artist";
  v27[1] = v5;
  v7 = [NSDictionary dictionaryWithObjects:v27 forKeys:v26 count:2];
  v8 = [v6 ic_URLByAppendingQueryParameters:v7];
  v9 = [NSMutableURLRequest requestWithURL:v8];

  [v9 setTimeoutInterval:180.0];
  v10 = [[ICStoreURLRequest alloc] initWithURLRequest:v9 requestContext:*(a1 + 40)];
  v11 = dispatch_semaphore_create(0);
  v12 = +[ICURLSessionManager defaultSession];
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 3221225472;
  v20[2] = sub_100075180;
  v20[3] = &unk_1001DE008;
  v13 = v5;
  v14 = *(a1 + 32);
  v21 = v13;
  v22 = v14;
  v15 = v11;
  v23 = v15;
  [v12 enqueueDataRequest:v10 withCompletionHandler:v20];

  v16 = dispatch_time(0, 300000000000);
  if (dispatch_semaphore_wait(v15, v16))
  {
    v17 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v25 = 300;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to receive response for artist id look up request after %d seconds, cancelling request", buf, 8u);
    }

    v18 = +[ICURLSessionManager defaultSession];
    [v18 cancelRequest:v10];
  }

  if ([*(a1 + 32) isCancelled])
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Noticed cancel flag while looking up artist store ids by name, stopping...", buf, 2u);
    }

    *a3 = 1;
  }
}

void sub_10007279C(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 executeQuery:@"SELECT store_id FROM item_artist LEFT OUTER JOIN artwork_token ON item_artist_pid = entity_pid AND entity_type = ? AND artwork_type = ? AND artwork_source_type = ? WHERE store_id != 0 AND EXISTS (SELECT item_pid from item where item.item_artist_pid = item_artist.item_artist_pid AND in_my_library = 1)" withParameters:&off_1001EE2C0];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_1000728E4;
  v8[3] = &unk_1001DEE48;
  v9 = *(a1 + 32);
  [v4 enumerateRowsWithBlock:v8];
  v5 = [v3 executeQuery:@"SELECT store_id FROM album_artist LEFT OUTER JOIN artwork_token ON album_artist_pid = entity_pid AND entity_type = ? AND artwork_type = ? AND artwork_source_type = ? WHERE store_id != 0 AND (liked_state=? OR EXISTS (SELECT item_pid from item where item.album_artist_pid = album_artist.album_artist_pid AND in_my_library = 1))" withParameters:&off_1001EE2D8];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100072940;
  v6[3] = &unk_1001DEE48;
  v7 = *(a1 + 32);
  [v5 enumerateRowsWithBlock:v6];
}

void sub_1000728E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectAtIndexedSubscript:0];
  [v2 addObject:v3];
}

void sub_100072940(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectAtIndexedSubscript:0];
  [v2 addObject:v3];
}

void sub_1000730C8(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a2;
  v7 = +[NSMutableArray array];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v42 objects:v50 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v43;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v43 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v42 + 1) + 8 * i) stringValue];
        [v7 addObject:v13];
      }

      v10 = [v8 countByEnumeratingWithState:&v42 objects:v50 count:16];
    }

    while (v10);
  }

  v14 = objc_alloc_init(ICStorePlatformRequest);
  v15 = [ICStoreRequestContext alloc];
  v16 = [*(a1 + 32) userIdentity];
  v17 = [v15 initWithIdentity:v16];

  [v14 setRequestContext:v17];
  [v14 setItemIdentifiers:v7];
  [v14 setPersonalizationStyle:1];
  [v14 setProtocolVersion:@"2"];
  v18 = dispatch_semaphore_create(0);
  v19 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v47 = v14;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Sending lookup request: %p", buf, 0xCu);
  }

  v34 = _NSConcreteStackBlock;
  v35 = 3221225472;
  v36 = sub_100074FC8;
  v37 = &unk_1001DBF78;
  v20 = v8;
  v21 = *(a1 + 32);
  v22 = *(a1 + 40);
  v38 = v20;
  v39 = v21;
  v40 = v22;
  v23 = v18;
  v41 = v23;
  v24 = [v14 performWithResponseHandler:&v34];
  v25 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v47 = v14;
    _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Waiting for lookup request: %p", buf, 0xCu);
  }

  v26 = dispatch_time(0, 300000000000);
  v27 = dispatch_semaphore_wait(v23, v26);
  v28 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
  if (v27)
  {
    if (!v29)
    {
      goto LABEL_18;
    }

    *buf = 134218240;
    v47 = v14;
    v48 = 1024;
    v49 = 300;
    v30 = "Failed to receive response for lookup request: %p after %d seconds";
    v31 = v28;
    v32 = 18;
  }

  else
  {
    if (!v29)
    {
      goto LABEL_18;
    }

    *buf = 134217984;
    v47 = v14;
    v30 = "Received response for lookup request: %p";
    v31 = v28;
    v32 = 12;
  }

  _os_log_impl(&_mh_execute_header, v31, OS_LOG_TYPE_DEFAULT, v30, buf, v32);
LABEL_18:

  if ([*(a1 + 32) isCancelled])
  {
    v33 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Noticed cancel flag while looking up artist hero image URLs, stopping...", buf, 2u);
    }

    *a4 = 1;
  }
}

uint64_t sub_100073514(void *a1, void *a2)
{
  v3 = a2;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100074808;
  v8[3] = &unk_1001DBFC8;
  v4 = a1[4];
  v5 = a1[6];
  v8[4] = a1[5];
  v9 = v5;
  v10 = v3;
  v6 = v3;
  [v4 enumerateObjectsUsingBlock:v8];

  return 1;
}

void sub_100073A70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100073A90(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 executeQuery:@"SELECT DISTINCT (fetchable_artwork_token) withParameters:{store_id FROM best_artwork_token LEFT OUTER JOIN artwork ON fetchable_artwork_token = artwork_token LEFT OUTER JOIN item_artist ON item_artist_pid = entity_pid WHERE artwork_token IS NULL AND entity_type = ? AND best_artwork_token.artwork_type = ? AND fetchable_artwork_source_type = ? GROUP BY fetchable_artwork_token", &off_1001EE2F0}];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_100074294;
  v8[3] = &unk_1001DEE48;
  v9 = *(a1 + 32);
  [v4 enumerateRowsWithBlock:v8];
  v5 = [v3 executeQuery:@"SELECT DISTINCT (fetchable_artwork_token) withParameters:{store_id FROM best_artwork_token LEFT OUTER JOIN artwork ON fetchable_artwork_token = artwork_token LEFT OUTER JOIN album_artist ON album_artist_pid = entity_pid WHERE artwork_token IS NULL AND entity_type = ? AND best_artwork_token.artwork_type = ? AND fetchable_artwork_source_type = ? GROUP BY fetchable_artwork_token", &off_1001EE308}];

  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100074334;
  v6[3] = &unk_1001DEE48;
  v7 = *(a1 + 32);
  [v5 enumerateRowsWithBlock:v6];
}

Class sub_100073BD8(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100213C70)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_100074220;
    v6[4] = &unk_1001DF350;
    v6[5] = v6;
    v7 = off_1001DC010;
    v8 = 0;
    qword_100213C70 = _sl_dlopen();
  }

  if (!qword_100213C70)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CloudArtistHeroImageImporter.m" lineNumber:29 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MPMediaLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getMPMediaLibraryClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CloudArtistHeroImageImporter.m" lineNumber:30 description:{@"Unable to find class %s", "MPMediaLibrary"}];

LABEL_10:
    __break(1u);
  }

  qword_100213C68 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_100073DC4(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [NSURL URLWithString:v8];
  v10 = [ML3MusicLibrary artworkTokenForArtistHeroURL:v9];
  v11 = [ML3MusicLibrary artworkRelativePathFromToken:v10];
  if (([*(a1 + 32) hasOriginalArtworkForRelativePath:v11] & 1) == 0)
  {
    v16 = [CloudArtworkImportRequest alloc];
    v17 = [*(a1 + 40) clientIdentity];
    v15 = [(CloudArtworkImportRequest *)v16 initWithClientIdentity:v17];

    v18 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Creating request for artwork token: %{public}@", buf, 0xCu);
    }

    -[NSObject setCloudID:](v15, "setCloudID:", [v7 longLongValue]);
    [v15 setToken:v8];
    [v15 setMediaType:8];
    [v15 setArtworkType:4];
    [v15 setAllowsCellularData:*(a1 + 56)];
    v20[0] = _NSConcreteStackBlock;
    v20[1] = 3221225472;
    v20[2] = sub_100074148;
    v20[3] = &unk_1001DE828;
    v21 = v10;
    [v15 setCompletionHandler:v20];
    [*(a1 + 48) addObject:v15];

    goto LABEL_10;
  }

  v12 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v23 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "Found hero image on disk for artwork token: %{public}@, attempting to import into database...", buf, 0xCu);
  }

  v13 = [*(a1 + 40) musicLibrary];
  v14 = [v13 importExistingOriginalArtworkWithArtworkToken:v10 artworkType:4 sourceType:500 mediaType:8];

  if (v14)
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v23 = v10;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Inserted artist hero image for artwork token: %{public}@", buf, 0xCu);
    }

LABEL_10:
  }

  if ([*(a1 + 40) isCancelled])
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "Noticed cancel flag while downloading artist hero images, stopping...", buf, 2u);
    }

    *a4 = 1;
  }
}

void sub_100074148(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(a1 + 32);
      v6 = 138543618;
      v7 = v5;
      v8 = 2114;
      v9 = v3;
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Import request for artwork token: %{public}@ failed with error: %{public}@", &v6, 0x16u);
    }
  }
}

uint64_t sub_100074220(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100213C70 = result;
  return result;
}

void sub_100074294(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 stringForColumnIndex:0];
  v4 = [v3 int64ForColumnIndex:1];

  v5 = [NSNumber numberWithLongLong:v4];
  [*(a1 + 32) setObject:v6 forKey:v5];
}

void sub_100074334(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = [v3 stringForColumnIndex:0];
  v4 = [v3 int64ForColumnIndex:1];

  v5 = [NSNumber numberWithLongLong:v4];
  [*(a1 + 32) setObject:v6 forKey:v5];
}

void sub_100074808(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([*(a1 + 32) isCancelled])
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cancelled while processing artist artwork tokens.", buf, 2u);
    }

    if (a3)
    {
      *a3 = 1;
    }
  }

  else
  {
    v7 = [*(a1 + 40) objectForKey:v5];
    if (v7)
    {
      v48 = v7;
      v8 = [ML3MusicLibrary artworkTokenForArtistHeroURL:v7];
      v9 = +[NSMutableArray array];
      v10 = [*(a1 + 32) musicLibrary];
      v49 = v5;
      v11 = +[ML3ComparisonPredicate predicateWithProperty:equalToInt64:](ML3ComparisonPredicate, "predicateWithProperty:equalToInt64:", ML3ArtistPropertyStoreID, [v5 longLongValue]);
      v12 = [ML3Artist queryWithLibrary:v10 predicate:v11];

      v63[0] = _NSConcreteStackBlock;
      v63[1] = 3221225472;
      v63[2] = sub_100074F08;
      v63[3] = &unk_1001DED58;
      v13 = v9;
      v64 = v13;
      v47 = v12;
      [v12 enumeratePersistentIDsUsingBlock:v63];
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      obj = v13;
      v14 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
      if (v14)
      {
        v15 = v14;
        v16 = *v60;
        v50 = ML3ArtistPropertyName;
        do
        {
          for (i = 0; i != v15; i = i + 1)
          {
            if (*v60 != v16)
            {
              objc_enumerationMutation(obj);
            }

            v18 = *(*(&v59 + 1) + 8 * i);
            v19 = [v18 longLongValue];
            v20 = [*(a1 + 32) musicLibrary];
            v21 = [ML3Artist newWithPersistentID:v19 inLibrary:v20];

            if (v21)
            {
              v22 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = [v18 longLongValue];
                v24 = [v21 valueForProperty:v50];
                *buf = 138543874;
                v67 = v8;
                v68 = 2048;
                v69 = v23;
                v70 = 2114;
                v71 = v24;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Setting artist hero image artwork_token '%{public}@' for item_artist with pid: %lld (name = %{public}@)", buf, 0x20u);
              }

              v25 = [*(a1 + 32) musicLibrary];
              [v25 importArtworkTokenForEntityPersistentID:objc_msgSend(v21 entityType:"persistentID") artworkToken:2 artworkType:v8 sourceType:4 usingConnection:{500, *(a1 + 48)}];

              v26 = [*(a1 + 32) musicLibrary];
              [v26 updateBestArtworkTokenForEntityPersistentID:objc_msgSend(v21 entityType:"persistentID") artworkType:2 retrievalTime:4 usingConnection:{*(a1 + 48), 0.0}];
            }
          }

          v15 = [obj countByEnumeratingWithState:&v59 objects:v72 count:16];
        }

        while (v15);
      }

      v27 = +[NSMutableArray array];
      v28 = [*(a1 + 32) musicLibrary];
      v29 = +[ML3ComparisonPredicate predicateWithProperty:equalToInt64:](ML3ComparisonPredicate, "predicateWithProperty:equalToInt64:", ML3AlbumArtistPropertyStoreID, [v49 longLongValue]);
      v30 = [ML3AlbumArtist queryWithLibrary:v28 predicate:v29];

      v57[0] = _NSConcreteStackBlock;
      v57[1] = 3221225472;
      v57[2] = sub_100074F68;
      v57[3] = &unk_1001DED58;
      v31 = v27;
      v58 = v31;
      v46 = v30;
      [v30 enumeratePersistentIDsUsingBlock:v57];
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v32 = v31;
      v33 = [v32 countByEnumeratingWithState:&v53 objects:v65 count:16];
      if (v33)
      {
        v34 = v33;
        v35 = *v54;
        v51 = ML3AlbumArtistPropertyName;
        do
        {
          for (j = 0; j != v34; j = j + 1)
          {
            if (*v54 != v35)
            {
              objc_enumerationMutation(v32);
            }

            v37 = *(*(&v53 + 1) + 8 * j);
            v38 = [v37 longLongValue];
            v39 = [*(a1 + 32) musicLibrary];
            v40 = [ML3AlbumArtist newWithPersistentID:v38 inLibrary:v39];

            if (v40)
            {
              v41 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
              if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
              {
                v42 = [v37 longLongValue];
                v43 = [v40 valueForProperty:v51];
                *buf = 138543874;
                v67 = v8;
                v68 = 2048;
                v69 = v42;
                v70 = 2114;
                v71 = v43;
                _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_DEFAULT, "Setting artist hero image artwork_token '%{public}@' for album_artist with pid: %lld (name = %{public}@)", buf, 0x20u);
              }

              v44 = [*(a1 + 32) musicLibrary];
              [v44 importArtworkTokenForEntityPersistentID:objc_msgSend(v40 entityType:"persistentID") artworkToken:7 artworkType:v8 sourceType:4 usingConnection:{500, *(a1 + 48)}];

              v45 = [*(a1 + 32) musicLibrary];
              [v45 updateBestArtworkTokenForEntityPersistentID:objc_msgSend(v40 entityType:"persistentID") artworkType:7 retrievalTime:4 usingConnection:{*(a1 + 48), 0.0}];
            }
          }

          v34 = [v32 countByEnumeratingWithState:&v53 objects:v65 count:16];
        }

        while (v34);
      }

      v7 = v48;
      v5 = v49;
    }
  }
}

void sub_100074F08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

void sub_100074F68(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [NSNumber numberWithLongLong:a2];
  [v2 addObject:v3];
}

void sub_100074FC8(uint64_t a1, void *a2)
{
  v3 = a2;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = *(a1 + 32);
  v4 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v17;
    do
    {
      for (i = 0; i != v5; i = i + 1)
      {
        if (*v17 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v16 + 1) + 8 * i);
        v9 = [v8 stringValue];
        v10 = [v3 itemForIdentifier:v9];

        v11 = [v10 metadataDictionary];
        v12 = [v11 objectForKey:@"artwork"];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v13 = [*(a1 + 40) _imageURLFromArtworkInfo:v12];
          if (v13)
          {
            v14 = v13;
            [*(a1 + 48) setObject:v13 forKey:v8];
          }
        }
      }

      v5 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  dispatch_semaphore_signal(*(a1 + 56));
}

void sub_100075180(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 urlResponse];
  if ([v4 statusCode] == 200)
  {
    v5 = [v3 parsedBodyDictionary];
    v6 = os_log_create("com.apple.amp.itunescloudd", "Artwork_Oversize");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = *(a1 + 32);
      *buf = 138543618;
      v36 = v7;
      v37 = 2114;
      v38 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Library match results for '%{public}@': %{public}@", buf, 0x16u);
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = [v5 objectForKey:@"id"];
  if (objc_opt_respondsToSelector())
  {
    v9 = [v8 longLongValue];
    if (v9)
    {
      v32 = v9;
      v10 = [ML3ComparisonPredicate predicateWithProperty:ML3ArtistPropertyName equalToValue:*(a1 + 32)];
      v34[0] = v10;
      v29 = ML3ArtistPropertyStoreID;
      v11 = [ML3ComparisonPredicate predicateWithProperty:"predicateWithProperty:equalToInt64:" equalToInt64:?];
      v34[1] = v11;
      v12 = [NSArray arrayWithObjects:v34 count:2];
      v13 = [ML3AllCompoundPredicate predicateMatchingPredicates:v12];

      v14 = [*(a1 + 40) musicLibrary];
      v31 = v13;
      v15 = [ML3Artist anyInLibrary:v14 predicate:v13];

      if (v15)
      {
        v16 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
        if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
        {
          v17 = *(a1 + 32);
          *buf = 134218242;
          v36 = v32;
          v37 = 2114;
          v38 = v17;
          _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "Setting store_id '%lld' for item_artist with name: '%{public}@'", buf, 0x16u);
        }

        v18 = [NSNumber numberWithLongLong:v32];
        [v15 setValue:v18 forProperty:v29];
      }

      v30 = v15;
      v19 = [ML3ComparisonPredicate predicateWithProperty:ML3AlbumArtistPropertyName equalToValue:*(a1 + 32)];
      v33[0] = v19;
      v28 = ML3AlbumArtistPropertyStoreID;
      v20 = [ML3ComparisonPredicate predicateWithProperty:"predicateWithProperty:equalToInt64:" equalToInt64:?];
      v33[1] = v20;
      v21 = [NSArray arrayWithObjects:v33 count:2];
      v22 = [ML3AllCompoundPredicate predicateMatchingPredicates:v21];

      v23 = [*(a1 + 40) musicLibrary];
      v24 = [ML3AlbumArtist anyInLibrary:v23 predicate:v22];

      if (v24)
      {
        v25 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
        {
          v26 = *(a1 + 32);
          *buf = 134218242;
          v36 = v32;
          v37 = 2114;
          v38 = v26;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Setting store_id '%lld' for album_artist with name: '%{public}@'", buf, 0x16u);
        }

        v27 = [NSNumber numberWithLongLong:v32];
        [v24 setValue:v27 forProperty:v28];
      }
    }
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

id sub_1000755D8(void *a1)
{
  v1 = ML3ArtistPropertyStoreID;
  v2 = a1;
  v3 = [ML3ComparisonPredicate predicateWithProperty:v1 value:&off_1001ED390 comparison:1];
  v4 = [ML3Artist queryWithLibrary:v2 predicate:v3];

  return v4;
}

void sub_100075674(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = *a3;
  if ([v4 length])
  {
    [*(a1 + 32) addObject:v4];
  }
}

id sub_1000756D0(void *a1)
{
  v1 = ML3AlbumArtistPropertyStoreID;
  v2 = a1;
  v3 = [ML3ComparisonPredicate predicateWithProperty:v1 value:&off_1001ED390 comparison:1];
  v4 = [ML3AlbumArtist queryWithLibrary:v2 predicate:v3];

  return v4;
}

void sub_10007576C(uint64_t a1, uint64_t a2, id *a3)
{
  v4 = *a3;
  if ([v4 length])
  {
    [*(a1 + 32) addObject:v4];
  }
}

void sub_100075AD8(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, _BYTE *a5)
{
  v8 = *(a1 + 32);
  v9 = *a3;
  v10 = [v8 objectForKey:v9];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 longLongValue];
  }

  else
  {
    v12 = 0;
  }

  v13 = [*(a1 + 40) musicLibrary];
  sub_100075ED8(v13, a2, v9, v12);

  v14 = [*(a1 + 40) isCancelled];
  if (v14)
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Noticed cancel flag while updating artist store ids, stopping...", v16, 2u);
    }

    *a5 = 1;
  }
}

void sub_100075BF0(uint64_t a1, uint64_t a2, id *a3, uint64_t a4, _BYTE *a5)
{
  v8 = *(a1 + 32);
  v9 = *a3;
  v10 = [v8 objectForKey:v9];
  v11 = v10;
  if (v10)
  {
    v12 = [v10 longLongValue];
  }

  else
  {
    v12 = 0;
  }

  v13 = [*(a1 + 40) musicLibrary];
  sub_100075D08(v13, a2, v9, v12);

  v14 = [*(a1 + 40) isCancelled];
  if (v14)
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Noticed cancel flag while updating album_artist store ids, stopping...", v16, 2u);
    }

    *a5 = 1;
  }
}

void sub_100075D08(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  if (a4)
  {
    v9 = [ML3ComparisonPredicate predicateWithProperty:ML3EntityPropertyPersistentID equalToInt64:a2];
    v10 = [ML3AlbumArtist anyInLibrary:v7 predicate:v9];

    if (v10)
    {
      v11 = [NSNumber numberWithLongLong:a4];
      [v10 setValue:v11 forProperty:ML3AlbumArtistPropertyStoreID];

      v12 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134218242;
        v14 = a4;
        v15 = 2114;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Album Artist] Assigned store artist ID %lld to %{public}@", &v13, 0x16u);
      }
    }
  }

  else
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Album Artist] No store artist id found for: '%{public}@'", &v13, 0xCu);
    }
  }
}

void sub_100075ED8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  if (a4)
  {
    v9 = [ML3ComparisonPredicate predicateWithProperty:ML3EntityPropertyPersistentID equalToInt64:a2];
    v10 = [ML3Artist anyInLibrary:v7 predicate:v9];

    if (v10)
    {
      v11 = [NSNumber numberWithLongLong:a4];
      [v10 setValue:v11 forProperty:ML3ArtistPropertyStoreID];

      v12 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134218242;
        v14 = a4;
        v15 = 2114;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "[Item Artist] Assigned store artist ID %lld to %{public}@", &v13, 0x16u);
      }
    }
  }

  else
  {
    v10 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v13 = 138543362;
      v14 = v8;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "[Item Artist] No store artist id found for: '%{public}@'", &v13, 0xCu);
    }
  }
}

void sub_1000768B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1000768E4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 urlResponse];
  if ([v7 statusCode] == 200)
  {
    v8 = [v5 bodyData];
    v9 = [NSJSONSerialization JSONObjectWithData:v8 options:0 error:0];
    v10 = *(*(a1 + 40) + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = [*(*(*(a1 + 40) + 8) + 40) count];
      v17 = 134217984;
      v18 = v13;
      v14 = "Received all artist images map with %lu artist ids.";
      v15 = v12;
      v16 = 12;
LABEL_6:
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, v14, &v17, v16);
    }
  }

  else
  {
    v12 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v17 = 134218242;
      v18 = [v7 statusCode];
      v19 = 2114;
      v20 = v6;
      v14 = "Failed to fetch all artist images map [HTTP %ld] - error: %{public}@";
      v15 = v12;
      v16 = 22;
      goto LABEL_6;
    }
  }

  dispatch_semaphore_signal(*(a1 + 32));
}

void sub_1000773FC(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v5 = a2;
  v6 = [*(a1 + 32) bulkArtistNameLibraryMatchURL];
  v27 = [NSURLComponents componentsWithURL:v6 resolvingAgainstBaseURL:0];

  v7 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v5 count]);
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = v5;
  v9 = [v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v32;
    do
    {
      for (i = 0; i != v10; i = i + 1)
      {
        if (*v32 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = [*(*(&v31 + 1) + 8 * i) stringByAddingPercentEncodingWithAllowedCharacters:*(a1 + 40)];
        v14 = [NSURLQueryItem queryItemWithName:@"an" value:v13];
        [v7 addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v31 objects:v37 count:16];
    }

    while (v10);
  }

  [v27 setPercentEncodedQueryItems:v7];
  v15 = [v27 URL];
  v16 = [NSMutableURLRequest requestWithURL:v15];

  [v16 setTimeoutInterval:180.0];
  v17 = [[ICStoreURLRequest alloc] initWithURLRequest:v16 requestContext:*(a1 + 48)];
  v18 = dispatch_semaphore_create(0);
  v19 = +[ICURLSessionManager defaultSession];
  v28[0] = _NSConcreteStackBlock;
  v28[1] = 3221225472;
  v28[2] = sub_1000777D4;
  v28[3] = &unk_1001DE008;
  v28[4] = *(a1 + 32);
  v20 = v8;
  v29 = v20;
  v21 = v18;
  v30 = v21;
  [v19 enqueueDataRequest:v17 withCompletionHandler:v28];

  v22 = dispatch_time(0, 300000000000);
  if (dispatch_semaphore_wait(v21, v22))
  {
    v23 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v36 = 300;
      _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "Failed to receive response for bulk artist id look up request after %d seconds, cancelling request", buf, 8u);
    }

    v24 = +[ICURLSessionManager defaultSession];
    [v24 cancelRequest:v17];
  }

  if ([*(a1 + 32) isCancelled])
  {
    v25 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_DEFAULT, "Noticed cancel flag while looking up artist store ids by name, stopping...", buf, 2u);
    }

    *a4 = 1;
  }
}

void sub_1000777D4(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 urlResponse];
  if ([v4 statusCode] == 200)
  {
    v5 = [v3 parsedBodyDictionary];
    v6 = os_log_create("com.apple.amp.itunescloudd", "Artwork_Oversize");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v15 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Bulk library match results: %{public}@", buf, 0xCu);
    }
  }

  else
  {
    v5 = 0;
  }

  if ([v5 count])
  {
    v7 = [*(a1 + 32) musicLibrary];
    v10[0] = _NSConcreteStackBlock;
    v10[1] = 3221225472;
    v10[2] = sub_100077978;
    v10[3] = &unk_1001DF3A0;
    v11 = *(a1 + 40);
    v8 = v5;
    v9 = *(a1 + 32);
    v12 = v8;
    v13 = v9;
    [v7 performDatabaseTransactionWithBlock:v10];
  }

  dispatch_semaphore_signal(*(a1 + 48));
}

uint64_t sub_100077978(id *a1, void *a2)
{
  v39 = a2;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  obj = a1[4];
  v3 = [obj countByEnumeratingWithState:&v45 objects:v59 count:16];
  if (v3)
  {
    v5 = v3;
    v6 = *v46;
    v35 = ML3ArtistPropertyName;
    v41 = ML3ArtistPropertyStoreID;
    v34 = ML3AlbumArtistPropertyName;
    v40 = ML3AlbumArtistPropertyStoreID;
    v7 = ICPushNotificationMessage_ptr;
    *&v4 = 134218242;
    v33 = v4;
    v36 = *v46;
    v37 = a1;
    do
    {
      v8 = 0;
      v38 = v5;
      do
      {
        if (*v46 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v45 + 1) + 8 * v8);
        v10 = [a1[5] objectForKeyedSubscript:{v9, v33}];
        if (objc_opt_respondsToSelector())
        {
          v11 = [v10 longLongValue];
          if (v11)
          {
            v44 = v11;
            v12 = [ML3ComparisonPredicate predicateWithProperty:v35 equalToValue:v9];
            v58[0] = v12;
            v13 = [ML3ComparisonPredicate predicateWithProperty:v41 equalToInt64:0];
            v58[1] = v13;
            v14 = [v7[314] arrayWithObjects:v58 count:2];
            v15 = [ML3AllCompoundPredicate predicateMatchingPredicates:v14];

            v16 = [a1[6] musicLibrary];
            v43 = v15;
            v17 = [ML3Artist anyInLibrary:v16 predicate:v15];

            if (v17)
            {
              v18 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v33;
                v55 = v44;
                v56 = 2114;
                v57 = v9;
                _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Setting store_id '%lld' for item_artist with name: '%{public}@'", buf, 0x16u);
              }

              v19 = [NSNumber numberWithLongLong:v44];
              v53 = v19;
              v7 = ICPushNotificationMessage_ptr;
              v20 = [NSArray arrayWithObjects:&v53 count:1];
              v52 = v41;
              v21 = [NSArray arrayWithObjects:&v52 count:1];
              [v17 setValues:v20 forProperties:v21 usingConnection:v39];
            }

            v22 = [ML3ComparisonPredicate predicateWithProperty:v34 equalToValue:v9];
            v51[0] = v22;
            v23 = [ML3ComparisonPredicate predicateWithProperty:v40 equalToInt64:0];
            v51[1] = v23;
            v24 = [v7[314] arrayWithObjects:v51 count:2];
            v25 = [ML3AllCompoundPredicate predicateMatchingPredicates:v24];

            a1 = v37;
            v26 = [v37[6] musicLibrary];
            v27 = [ML3AlbumArtist anyInLibrary:v26 predicate:v25];

            if (v27)
            {
              v28 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = v33;
                v55 = v44;
                v56 = 2114;
                v57 = v9;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Setting store_id '%lld' for album_artist with name: '%{public}@'", buf, 0x16u);
              }

              v29 = [NSNumber numberWithLongLong:v44];
              v50 = v29;
              v30 = [NSArray arrayWithObjects:&v50 count:1];
              v49 = v40;
              v31 = [NSArray arrayWithObjects:&v49 count:1];
              [v27 setValues:v30 forProperties:v31 usingConnection:v39];
            }

            v6 = v36;
            v5 = v38;
            v7 = ICPushNotificationMessage_ptr;
          }
        }

        v8 = v8 + 1;
      }

      while (v5 != v8);
      v5 = [obj countByEnumeratingWithState:&v45 objects:v59 count:16];
    }

    while (v5);
  }

  return 1;
}

void sub_100077E70(uint64_t a1, void *a2)
{
  v3 = [a2 int64ForColumnIndex:0];
  v4 = *(a1 + 32);
  v5 = [NSNumber numberWithLongLong:v3];
  [v4 removeObject:v5];

  v6 = *(a1 + 40);
  v7 = [NSNumber numberWithLongLong:v3];
  [v6 removeObject:v7];
}

void sub_100077F1C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [NSNumber numberWithLongLong:v3];
  v10[0] = v5;
  v10[1] = &off_1001ED300;
  v6 = [NSArray arrayWithObjects:v10 count:2];
  v7 = [v4 executeQuery:@"SELECT album_artist.album_artist_pid FROM album_artist LEFT OUTER JOIN item ON (item.album_artist_pid=album_artist.album_artist_pid) WHERE (album_artist.album_artist_pid=? AND (album_artist.liked_state=? OR in_my_library = 1))" withParameters:v6];

  LODWORD(v4) = [v7 hasAtLeastOneRow];
  if (v4)
  {
    v8 = *(a1 + 32);
    v9 = [NSNumber numberWithLongLong:*(a1 + 40)];
    [v8 addObject:v9];
  }
}

void sub_100078030(uint64_t a1, void *a2)
{
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [NSNumber numberWithLongLong:v3];
  v10 = v5;
  v6 = [NSArray arrayWithObjects:&v10 count:1];
  v7 = [v4 executeQuery:@"SELECT item_pid FROM item WHERE item_artist_pid = ? AND in_my_library = 1" withParameters:v6];

  LODWORD(v4) = [v7 hasAtLeastOneRow];
  if (v4)
  {
    v8 = *(a1 + 32);
    v9 = [NSNumber numberWithLongLong:*(a1 + 40)];
    [v8 addObject:v9];
  }
}

void sub_1000782A4(uint64_t a1)
{
  v2 = [*(a1 + 32) musicLibrary];
  v3 = [v2 valueForDatabaseProperty:@"MLArtistHeroImageImportDate"];
  [v3 doubleValue];
  v4 = [NSDate dateWithTimeIntervalSinceReferenceDate:?];

  v5 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    [v4 timeIntervalSince1970];
    v27 = 134217984;
    v28 = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Last artist update time: %{time_t}zd", &v27, 0xCu);
  }

  if (!v4)
  {
    goto LABEL_7;
  }

  v7 = +[NSDate date];
  [v7 timeIntervalSinceDate:v4];
  v9 = v8;

  v10 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 48);
    v27 = 134218240;
    v28 = *&v9;
    v29 = 2048;
    v30 = v11;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "Elapsed time since last artist hero image update: %g, minimum: %g", &v27, 0x16u);
  }

  if (v9 < *(a1 + 48))
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v27) = 0;
      v20 = "Skipping update, not enough time has passed since last update.";
      goto LABEL_14;
    }
  }

  else
  {
LABEL_7:
    v12 = [*(a1 + 32) currentUpdateOperation];

    if (v12)
    {
      v13 = [*(a1 + 32) followupUpdateOpertion];

      if (!v13)
      {
        v14 = [DetermineArtistStoreIDLookupTypeOperation alloc];
        v15 = [*(a1 + 32) artworkImporter];
        v16 = *(a1 + 40);
        v17 = [*(a1 + 32) operationQueue];
        v18 = [(QueueAwareOperation *)v14 initWithArtworkImporter:v15 clientIdentity:v16 operationQueue:v17 artistPersistentIDsToUpdate:0 albumArtistPersistentIDsToUpdate:0];
        [*(a1 + 32) setFollowupUpdateOpertion:v18];
      }

      v19 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        v20 = "Artist hero image update already in progress: scheduling a maximum of one additional update.";
LABEL_14:
        _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, v20, &v27, 2u);
      }
    }

    else
    {
      v21 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        LOWORD(v27) = 0;
        _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "Updating all artist hero images...", &v27, 2u);
      }

      v22 = [DetermineArtistStoreIDLookupTypeOperation alloc];
      v23 = [*(a1 + 32) artworkImporter];
      v24 = *(a1 + 40);
      v25 = [*(a1 + 32) operationQueue];
      v19 = [(QueueAwareOperation *)v22 initWithArtworkImporter:v23 clientIdentity:v24 operationQueue:v25 artistPersistentIDsToUpdate:0 albumArtistPersistentIDsToUpdate:0];

      v26 = [*(a1 + 32) operationQueue];
      [v26 addOperation:v19];

      [*(a1 + 32) setCurrentUpdateOperation:v19];
    }
  }
}

void sub_1000788D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1000788F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained accessQueue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_10007899C;
    block[3] = &unk_1001DF578;
    v5 = v2;
    dispatch_async(v3, block);
  }
}

void sub_10007899C(uint64_t a1)
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "Artwork_Oversize");
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = [*(a1 + 32) operationQueue];
    v4 = [v3 operations];
    v8 = 138543362;
    v9 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Watchdog fired, operation queue contents: %{public}@", &v8, 0xCu);
  }

  v5 = [*(a1 + 32) powerAssertionIdentifier];
  CPSetPowerAssertionWithIdentifier();

  v6 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v7 = [*(a1 + 32) powerAssertionIdentifier];
    v8 = 138543362;
    v9 = v7;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Watchdog fired, releasing power assertion: %{public}@", &v8, 0xCu);
  }
}

uint64_t sub_100079A10(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_100079A28(uint64_t a1)
{
  v2 = [*(a1 + 32) _pendingChanges];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return _objc_release_x1();
}

id sub_100079BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);
  v7 = *(a1 + 48);
  if (v6)
  {
    return [v5 _addPendingChangesForContentTasteUpdateOperation:v7 invalidateLocalCache:*(a1 + 56)];
  }

  else
  {
    return [v5 _removePendingChangesForContentTasteUpdateOperation:{v7, a4}];
  }
}

void sub_10007A2CC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      v10 = [v6 msv_description];
      *buf = 138543618;
      v28 = v9;
      v29 = 2114;
      v30 = v10;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ Finished request to end collaboration error=%{public}@", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 32);
    *buf = 138543362;
    v28 = v11;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ Finished request to end collaboration", buf, 0xCu);
  }

  v12 = [v5 responseCode];
  if (v12 > 399)
  {
    if (v12 == 404 || v12 == 400)
    {
      v13 = 3;
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v13 = 1;
  if (v12 != 200 && v12 != 204)
  {
LABEL_13:
    v13 = 2;
  }

LABEL_14:
  [*(a1 + 32) setStatus:v13];
  [*(a1 + 32) setError:v6];
  if (v6)
  {
    v14 = 0;
  }

  else
  {
    if (*(a1 + 56) == 1)
    {
      v15 = v5;
      v16 = +[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", [v15 convertedPlaylistCloudLibraryID]);
      v17 = *(a1 + 32);
      v18 = *(v17 + 106);
      *(v17 + 106) = v16;

      [v15 convertedPlaylistGlobalID];
    }

    else
    {
      [v5 globalPlaylistID];
    }
    v19 = ;
    v20 = *(a1 + 32);
    v21 = *(v20 + 98);
    *(v20 + 98) = v19;

    v14 = [v5 updateRequired];
    v22 = [*(a1 + 32) musicLibrary];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_10007A5D0;
    v24[3] = &unk_1001DF530;
    v23 = *(a1 + 40);
    v24[4] = *(a1 + 32);
    v26 = *(a1 + 56);
    v25 = v23;
    [v22 databaseConnectionAllowingWrites:1 withBlock:v24];

    *(*(a1 + 32) + 122) = [*(*(a1 + 32) + 106) unsignedLongLongValue];
  }

  *(*(a1 + 32) + 114) = v14;
  [*(a1 + 48) endTransaction];
  [*(a1 + 32) finish];
}

void sub_10007A5D0(uint64_t a1, void *a2)
{
  v3 = a2;
  v31[0] = ML3ContainerPropertyStoreCloudID;
  v32[0] = *(*(a1 + 32) + 106);
  v32[1] = &off_1001ED3A8;
  v31[1] = ML3ContainerPropertyCollaborationJoinRequestPending;
  v31[2] = ML3ContainerPropertyCollaboratorStatus;
  v4 = &off_1001ED3D8;
  if (*(a1 + 48))
  {
    v4 = &off_1001ED3C0;
  }

  v32[2] = v4;
  v5 = [NSDictionary dictionaryWithObjects:v32 forKeys:v31 count:3];
  v6 = [NSMutableDictionary dictionaryWithDictionary:v5];

  if (*(a1 + 48) == 1)
  {
    v29[0] = ML3ContainerPropertyCollaborationMode;
    v29[1] = ML3ContainerPropertyCollaboratorPermissions;
    v30[0] = &off_1001ED3A8;
    v30[1] = &off_1001ED3A8;
    v29[2] = ML3ContainerPropertyIsCollaborative;
    v29[3] = ML3ContainerPropertyCollaborationInvitationURL;
    v30[2] = &__kCFBooleanFalse;
    v30[3] = &stru_1001E0388;
    v29[4] = ML3ContainerPropertyCollaborationInvitationURLExpirationDate;
    v30[4] = &off_1001ED3A8;
    v7 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:5];
    [v6 addEntriesFromDictionary:v7];
  }

  if (([*(a1 + 40) setValuesForPropertiesWithDictionary:v6] & 1) == 0)
  {
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 32);
      *buf = 138543362;
      v25 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ Failed to update container properties", buf, 0xCu);
    }
  }

  v28 = *(*(a1 + 32) + 106);
  v10 = [NSArray arrayWithObjects:&v28 count:1];
  v22 = 0;
  v11 = [v3 executeUpdate:@"DELETE FROM container_author WHERE container_pid = ?" withParameters:v10 error:&v22];
  v12 = v22;

  if ((v11 & 1) == 0)
  {
    v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(a1 + 32);
      *buf = 138543618;
      v25 = v14;
      v26 = 2114;
      v27 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "%{public}@ Failed to clear container_author entries. err=%{public}@", buf, 0x16u);
    }
  }

  v15 = [NSNumber numberWithUnsignedLongLong:*(*(a1 + 32) + 90)];
  v23 = v15;
  v16 = [NSArray arrayWithObjects:&v23 count:1];
  v21 = v12;
  v17 = [v3 executeUpdate:@"DELETE FROM container_item_reaction WHERE container_item_pid IN (SELECT container_item_pid FROM container_item WHERE container_pid = ?)" withParameters:v16 error:&v21];
  v18 = v21;

  if ((v17 & 1) == 0)
  {
    v19 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = *(a1 + 32);
      *buf = 138543618;
      v25 = v20;
      v26 = 2114;
      v27 = v18;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "%{public}@ Failed to clear container_item_reaction entries. err=%{public}@", buf, 0x16u);
    }
  }
}

void sub_10007AEB8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) _queryFilterString];
  if (v4)
  {
    [v3 writeString:v4 withCode:1836152165];
  }

  *(a1 + 48);
  *(a1 + 48);
  v5 = *(a1 + 40);
  ICDAAPUtilitiesWriteContainer();
}

void sub_10007AFC0(uint64_t a1, void *a2)
{
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * v8);
        v10 = *(a1 + 48);
        v11 = *(a1 + 40);
        ICDAAPUtilitiesWriteProperty();
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }
}

void *sub_10007B6B0(void *a1)
{
  v5[0] = 0;
  if (!qword_100213C80)
  {
    v5[1] = _NSConcreteStackBlock;
    v5[2] = 3221225472;
    v5[3] = sub_10007B834;
    v5[4] = &unk_1001DF350;
    v5[5] = v5;
    v6 = off_1001DC0A0;
    v7 = 0;
    qword_100213C80 = _sl_dlopen();
  }

  v2 = qword_100213C80;
  if (!qword_100213C80)
  {
    a1 = +[NSAssertionHandler currentHandler];
    v2 = [NSString stringWithUTF8String:"void *SpringBoardServicesLibrary(void)"];
    [a1 handleFailureInFunction:v2 file:@"ICDServerOperationsManager.m" lineNumber:19 description:{@"%s", v5[0]}];

    __break(1u);
    goto LABEL_7;
  }

  v3 = v5[0];
  if (v5[0])
  {
LABEL_7:
    free(v3);
  }

  result = dlsym(v2, "SBSSetStatusBarShowsActivityForApplication");
  *(*(a1[4] + 8) + 24) = result;
  off_100213C78 = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t sub_10007B834(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100213C80 = result;
  return result;
}

void sub_10007C5BC(id *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  ICDAAPUtilitiesWriteContainer();
}

void sub_10007C67C(id *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  ICDAAPUtilitiesWriteContainer();
}

void sub_10007C73C(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 writeString:*(a1 + 32) withCode:1835626093];
  [v3 writeUInt8:3 withCode:1634029643];
  v7 = *(a1 + 40);
  ICDAAPUtilitiesWriteContainer();
  if ([*(a1 + 48) count])
  {
    v8 = @"geniusSeedTrackIDs";
    v9 = *(a1 + 48);
    v4 = [NSDictionary dictionaryWithObjects:&v9 forKeys:&v8 count:1];
    v5 = [NSPropertyListSerialization dataWithPropertyList:v4 format:200 options:0 error:0];
    [v3 writeData:v5 withCode:1634029636];
    v6 = *(a1 + 48);
    ICDAAPUtilitiesWriteContainer();
  }
}

void sub_10007C928(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        ICDAAPUtilitiesWriteProperty();
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

void sub_10007CA34(uint64_t a1, void *a2)
{
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = *(a1 + 32);
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v10 + 1) + 8 * v8);
        ICDAAPUtilitiesWriteProperty();
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }
}

__CFString *sub_10007E664(unint64_t a1)
{
  if (a1 == 1)
  {
    v2 = [NSString stringWithFormat:@"%llu", 1];
  }

  else if (a1 - 1 >= 4)
  {
    if (a1 - 5 >= 3)
    {
      if (a1 - 8 >= 3)
      {
        if (a1 - 11 >= 5)
        {
          if (a1 - 16 >= 5)
          {
            if (a1 - 21 >= 5)
            {
              if (a1 <= 0x19)
              {
                v2 = @"-1";
              }

              else
              {
                v2 = @"26+";
              }
            }

            else
            {
              v2 = @"21-25";
            }
          }

          else
          {
            v2 = @"16-20";
          }
        }

        else
        {
          v2 = @"11-15";
        }
      }

      else
      {
        v2 = @"8-10";
      }
    }

    else
    {
      v2 = @"5-7";
    }
  }

  else
  {
    v2 = @"2-4";
  }

  return v2;
}

void sub_10007E848(void *a1)
{
  v1 = a1;
  if (MSVDeviceSupportsMediaDownloads())
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2050000000;
    v2 = qword_100213C88;
    v11 = qword_100213C88;
    if (!qword_100213C88)
    {
      *buf = _NSConcreteStackBlock;
      v13 = 3221225472;
      v14 = sub_10007EA00;
      v15 = &unk_1001DF318;
      v16 = &v8;
      sub_10007EA00(buf);
      v2 = v9[3];
    }

    v3 = v2;
    _Block_object_dispose(&v8, 8);
    v4 = [v2 sharedManager];
    v5 = [v4 allMediaDownloadLibraryIdentifiers];
    if ([v5 count])
    {
      v6 = os_log_create("com.apple.amp.itunescloudd", "Downloads");
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v5 count];
        *buf = 67109120;
        *&buf[4] = v7;
        _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cancelling %d downloads", buf, 8u);
      }

      [v4 cancelDownloads:v5];
    }
  }
}

Class sub_10007EA00(uint64_t a1)
{
  v6[0] = 0;
  if (!qword_100213C90)
  {
    v6[1] = _NSConcreteStackBlock;
    v6[2] = 3221225472;
    v6[3] = sub_10007EBEC;
    v6[4] = &unk_1001DF350;
    v6[5] = v6;
    v7 = off_1001DC0E0;
    v8 = 0;
    qword_100213C90 = _sl_dlopen();
  }

  if (!qword_100213C90)
  {
    v3 = +[NSAssertionHandler currentHandler];
    v4 = [NSString stringWithUTF8String:"void *MediaPlayerLibrary(void)"];
    [v3 handleFailureInFunction:v4 file:@"CloudTrackDownloadManager.m" lineNumber:17 description:{@"%s", v6[0]}];

    goto LABEL_10;
  }

  if (v6[0])
  {
    free(v6[0]);
  }

  result = objc_getClass("MPMediaDownloadManager");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v3 = +[NSAssertionHandler currentHandler];
    v5 = [NSString stringWithUTF8String:"Class getMPMediaDownloadManagerClass(void)_block_invoke"];
    [v3 handleFailureInFunction:v5 file:@"CloudTrackDownloadManager.m" lineNumber:18 description:{@"Unable to find class %s", "MPMediaDownloadManager"}];

LABEL_10:
    __break(1u);
  }

  qword_100213C88 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t sub_10007EBEC(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  qword_100213C90 = result;
  return result;
}

void sub_10007F3A4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 userIdentity];
  v3 = [v4 accountDSID];
  [v2 addObject:v3];
}

void sub_10007F690(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v8 = v3;
  v5 = [*(a1 + 32) _configurationForAccount:? baseConfiguration:?];
  if (v5)
  {
    v6 = *(a1 + 48);
    v7 = [*(a1 + 32) _configurationForAccount:v8 baseConfiguration:*(a1 + 40)];
    [v6 addObject:v7];
  }
}

void sub_10007FF08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_10007FF28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_10007FF40(uint64_t a1, void *a2)
{
  v4 = a2;
  if (([v4 isManageable] & 1) != 0 || objc_msgSend(v4, "isActive"))
  {
    if (([v4 isManageable] & 1) == 0)
    {
      v5 = os_log_create("com.apple.amp.itunescloudd", "Accounts");
      if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
      {
        v6 = *(a1 + 48);
        v7 = 134217984;
        v8 = v6;
        _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "ICDAccountManagerState %p - stateForAccounts: active account is not manageable!", &v7, 0xCu);
      }
    }

    [*(a1 + 32) addObject:v4];
    if ([v4 isActive])
    {
      objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
    }
  }
}

void sub_100080334(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_100080354(uint64_t a1, void *a2)
{
  v5 = a2;
  v4 = [v5 accountDSID];
  if ([*(a1 + 32) containsObject:v4])
  {
    [*(a1 + 40) addObject:v5];
  }

  if (*(a1 + 48) && [v4 isEqualToString:?])
  {
    objc_storeStrong((*(*(a1 + 56) + 8) + 40), a2);
  }
}

void sub_1000805C4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (!v6)
  {
    v10 = [v5 bodyData];
    v7 = COERCE_DOUBLE([v10 length]);

    if (v7 == 0.0)
    {
      v12 = 0;
    }

    else
    {
      v11 = [v5 bodyData];
      v12 = [NSPropertyListSerialization propertyListWithData:v11 options:0 format:0 error:0];

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v13 = [v12 objectForKey:@"status"];
        v14 = COERCE_DOUBLE([v13 integerValue]);

        if (v14 == 0.0)
        {
          [v12 objectForKey:@"retry-in-ms"];
          v7 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

          if (v7 != 0.0)
          {
            v21 = [v12 objectForKey:@"retry-in-ms"];
            v22 = [v21 unsignedIntegerValue];

            v23 = +[NSDate date];
            [v23 timeIntervalSinceDate:*(a1 + 40)];
            v25 = v24;
            v26 = *(a1 + 64);

            v27 = os_log_create("com.apple.amp.itunescloudd", "Genius");
            v28 = v27;
            if (v25 >= v26)
            {
              if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
              {
                v34 = *(a1 + 32);
                v35 = *(a1 + 64);
                v37 = 138543618;
                v38 = v34;
                v39 = 2048;
                v40 = v35;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_FAULT, "Failed to load %{public}@ after %g seconds", &v37, 0x16u);
              }

              v36 = *(a1 + 56);
              v33 = [NSError errorWithDomain:@"SSURLConnectionRequest+GeniusAdditions" code:-1 userInfo:0];
              (*(v36 + 16))(v36, 0, 0, v33);
            }

            else
            {
              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v29 = *(a1 + 32);
                v37 = 138543618;
                v38 = v29;
                v39 = 2048;
                v40 = v22 / 1000.0;
                _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Retrying loading %{public}@ in %g seconds", &v37, 0x16u);
              }

              usleep(((((125000 * v22) & 0x1FFFFFFFFFFFFFFFLL) * 0x20C49BA5E353F7CFuLL) >> 64) >> 4);
              v30 = [ICStoreURLRequest alloc];
              v31 = [*(a1 + 48) urlRequest];
              v32 = [*(a1 + 48) storeRequestContext];
              v33 = [v30 initWithURLRequest:v31 requestContext:v32];

              [v33 setMaxRetryCount:{objc_msgSend(*(a1 + 48), "maxRetryCount")}];
              [v33 setShouldUseMescalSigning:{objc_msgSend(*(a1 + 48), "shouldUseMescalSigning")}];
              [v33 _startGeniusRequestWithStartDate:*(a1 + 40) retryTimeout:*(a1 + 32) debugName:*(a1 + 56) connectionResponseBlock:*(a1 + 64)];
            }

            v7 = 0.0;
            goto LABEL_14;
          }
        }

        else
        {
          v43 = @"server-status-code";
          v15 = [NSNumber numberWithInteger:*&v14];
          v44 = v15;
          v16 = [NSDictionary dictionaryWithObjects:&v44 forKeys:&v43 count:1];
          [NSError errorWithDomain:@"SSURLConnectionRequestGeniusAdditionsErrorDomain" code:0 userInfo:v16];
          v7 = COERCE_DOUBLE(objc_claimAutoreleasedReturnValue());

          v17 = os_log_create("com.apple.amp.itunescloudd", "Genius");
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            v18 = *(a1 + 32);
            v19 = [v5 urlResponse];
            v20 = [v19 URL];
            v37 = 138543874;
            v38 = v18;
            v39 = 2048;
            v40 = v14;
            v41 = 2114;
            v42 = v20;
            _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Received non-zero status response loading %{public}@: Status=%ld responseURL: %{public}@", &v37, 0x20u);
          }
        }
      }

      else
      {
        v7 = 0.0;
      }
    }

    (*(*(a1 + 56) + 16))();
LABEL_14:

    goto LABEL_15;
  }

  v7 = *&v6;
  v8 = os_log_create("com.apple.amp.itunescloudd", "Genius");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    v9 = *(a1 + 32);
    v37 = 138543618;
    v38 = v9;
    v39 = 2114;
    v40 = v7;
    _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "Received error loading %{public}@: %{public}@", &v37, 0x16u);
  }

  (*(*(a1 + 56) + 16))();
LABEL_15:
}

uint64_t sub_100080F2C(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    do
    {
      if ([a2 hasError])
      {
        break;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        LOBYTE(v24[0]) = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:v24 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v24[0] & 0x7F) << v5;
        if ((v24[0] & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        if (v6++ >= 9)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        break;
      }

      if ((v12 >> 3) == 2)
      {
        if ((v12 & 7) == 2)
        {
          v24[0] = 0;
          v24[1] = 0;
          result = PBReaderPlaceMark();
          if (!result)
          {
            return result;
          }

          while (1)
          {
            v16 = [a2 position];
            if (v16 >= [a2 length] || (objc_msgSend(a2, "hasError") & 1) != 0)
            {
              break;
            }

            v25 = 0;
            v17 = [a2 position] + 4;
            if (v17 >= [a2 position] && (v18 = objc_msgSend(a2, "position") + 4, v18 <= objc_msgSend(a2, "length")))
            {
              v19 = [a2 data];
              [v19 getBytes:&v25 range:{objc_msgSend(a2, "position"), 4}];

              [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
            }

            else
            {
              [a2 _setError];
            }

            PBRepeatedFloatAdd();
          }

          PBReaderRecallMark();
        }

        else
        {
          LODWORD(v24[0]) = 0;
          v20 = [a2 position] + 4;
          if (v20 >= [a2 position] && (v21 = objc_msgSend(a2, "position") + 4, v21 <= objc_msgSend(a2, "length")))
          {
            v22 = [a2 data];
            [v22 getBytes:v24 range:{objc_msgSend(a2, "position"), 4}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 4}];
          }

          else
          {
            [a2 _setError];
          }

          PBRepeatedFloatAdd();
        }
      }

      else if ((v12 >> 3) == 1)
      {
        v13 = PBReaderReadString();
        v14 = *(a1 + 32);
        *(a1 + 32) = v13;
      }

      else if ((PBReaderSkipValueWithTag() & 1) == 0)
      {
        return 0;
      }

      v23 = [a2 position];
    }

    while (v23 < [a2 length]);
  }

  return [a2 hasError] ^ 1;
}

uint64_t sub_1000819CC(uint64_t a1, void *a2)
{
  v4 = [a2 position];
  if (v4 < [a2 length])
  {
    while (1)
    {
      if ([a2 hasError])
      {
        return [a2 hasError] ^ 1;
      }

      v5 = 0;
      v6 = 0;
      v7 = 0;
      while (1)
      {
        v52 = 0;
        v8 = [a2 position] + 1;
        if (v8 >= [a2 position] && (v9 = objc_msgSend(a2, "position") + 1, v9 <= objc_msgSend(a2, "length")))
        {
          v10 = [a2 data];
          [v10 getBytes:&v52 range:{objc_msgSend(a2, "position"), 1}];

          [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
        }

        else
        {
          [a2 _setError];
        }

        v7 |= (v52 & 0x7F) << v5;
        if ((v52 & 0x80) == 0)
        {
          break;
        }

        v5 += 7;
        v11 = v6++ >= 9;
        if (v11)
        {
          v12 = 0;
          goto LABEL_15;
        }
      }

      v12 = [a2 hasError] ? 0 : v7;
LABEL_15:
      if (([a2 hasError] & 1) != 0 || (v12 & 7) == 4)
      {
        return [a2 hasError] ^ 1;
      }

      v13 = v12 >> 3;
      if ((v12 >> 3) > 3)
      {
        break;
      }

      if (v13 == 1)
      {
        v23 = 0;
        v24 = 0;
        v25 = 0;
        while (1)
        {
          v54 = 0;
          v26 = [a2 position] + 1;
          if (v26 >= [a2 position] && (v27 = objc_msgSend(a2, "position") + 1, v27 <= objc_msgSend(a2, "length")))
          {
            v28 = [a2 data];
            [v28 getBytes:&v54 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v25 |= (v54 & 0x7F) << v23;
          if ((v54 & 0x80) == 0)
          {
            break;
          }

          v23 += 7;
          v11 = v24++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_75;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v25;
        }

LABEL_75:
        v49 = 40;
LABEL_93:
        *(a1 + v49) = v29;
        goto LABEL_94;
      }

      if (v13 == 2)
      {
        v37 = 0;
        v38 = 0;
        v39 = 0;
        *(a1 + 48) |= 2u;
        while (1)
        {
          v57 = 0;
          v40 = [a2 position] + 1;
          if (v40 >= [a2 position] && (v41 = objc_msgSend(a2, "position") + 1, v41 <= objc_msgSend(a2, "length")))
          {
            v42 = [a2 data];
            [v42 getBytes:&v57 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v39 |= (v57 & 0x7F) << v37;
          if ((v57 & 0x80) == 0)
          {
            break;
          }

          v37 += 7;
          v11 = v38++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_87;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v39;
        }

LABEL_87:
        v50 = 16;
LABEL_88:
        *(a1 + v50) = v22;
        goto LABEL_94;
      }

      if (v13 != 3)
      {
        goto LABEL_52;
      }

      v14 = PBReaderReadString();
      v15 = *(a1 + 32);
      *(a1 + 32) = v14;

LABEL_94:
      v51 = [a2 position];
      if (v51 >= [a2 length])
      {
        return [a2 hasError] ^ 1;
      }
    }

    switch(v13)
    {
      case 4:
        v30 = 0;
        v31 = 0;
        v32 = 0;
        *(a1 + 48) |= 4u;
        while (1)
        {
          v56 = 0;
          v33 = [a2 position] + 1;
          if (v33 >= [a2 position] && (v34 = objc_msgSend(a2, "position") + 1, v34 <= objc_msgSend(a2, "length")))
          {
            v35 = [a2 data];
            [v35 getBytes:&v56 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v32 |= (v56 & 0x7F) << v30;
          if ((v56 & 0x80) == 0)
          {
            break;
          }

          v30 += 7;
          v11 = v31++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_79;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v32;
        }

LABEL_79:
        v50 = 24;
        break;
      case 5:
        v43 = 0;
        v44 = 0;
        v45 = 0;
        *(a1 + 48) |= 8u;
        while (1)
        {
          v53 = 0;
          v46 = [a2 position] + 1;
          if (v46 >= [a2 position] && (v47 = objc_msgSend(a2, "position") + 1, v47 <= objc_msgSend(a2, "length")))
          {
            v48 = [a2 data];
            [v48 getBytes:&v53 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v45 |= (v53 & 0x7F) << v43;
          if ((v53 & 0x80) == 0)
          {
            break;
          }

          v43 += 7;
          v11 = v44++ >= 9;
          if (v11)
          {
            v29 = 0;
            goto LABEL_92;
          }
        }

        if ([a2 hasError])
        {
          v29 = 0;
        }

        else
        {
          v29 = v45;
        }

LABEL_92:
        v49 = 44;
        goto LABEL_93;
      case 6:
        v16 = 0;
        v17 = 0;
        v18 = 0;
        *(a1 + 48) |= 1u;
        while (1)
        {
          v55 = 0;
          v19 = [a2 position] + 1;
          if (v19 >= [a2 position] && (v20 = objc_msgSend(a2, "position") + 1, v20 <= objc_msgSend(a2, "length")))
          {
            v21 = [a2 data];
            [v21 getBytes:&v55 range:{objc_msgSend(a2, "position"), 1}];

            [a2 setPosition:{objc_msgSend(a2, "position") + 1}];
          }

          else
          {
            [a2 _setError];
          }

          v18 |= (v55 & 0x7F) << v16;
          if ((v55 & 0x80) == 0)
          {
            break;
          }

          v16 += 7;
          v11 = v17++ >= 9;
          if (v11)
          {
            v22 = 0;
            goto LABEL_83;
          }
        }

        if ([a2 hasError])
        {
          v22 = 0;
        }

        else
        {
          v22 = v18;
        }

LABEL_83:
        v50 = 8;
        break;
      default:
LABEL_52:
        result = PBReaderSkipValueWithTag();
        if (!result)
        {
          return result;
        }

        goto LABEL_94;
    }

    goto LABEL_88;
  }

  return [a2 hasError] ^ 1;
}

void sub_100082AF4(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 libraryIdentifier];
    v6 = [*(a1 + 32) libraryIdentifier];
    v7 = [v5 isEqualToString:v6];

    v8 = *(a1 + 32);
    v9 = [objc_opt_class() logCategory];
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v11 = *(a1 + 32);
        v12 = objc_opt_class();
        v13 = *(a1 + 32);
        v14 = v12;
        v25 = 138544130;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        v29 = 2114;
        v30 = objc_opt_class();
        v31 = 2048;
        v32 = v4;
        v15 = v30;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %p -  Calling block on one of our operations [%{public}@ %p]", &v25, 0x2Au);
      }

      (*(*(a1 + 40) + 16))(*(a1 + 40), v4, v16, v17, v18, v19);
    }

    else
    {
      if (v10)
      {
        v20 = *(a1 + 32);
        v21 = objc_opt_class();
        v22 = *(a1 + 32);
        v23 = v21;
        v25 = 138544130;
        v26 = v21;
        v27 = 2048;
        v28 = v22;
        v29 = 2114;
        v30 = objc_opt_class();
        v31 = 2048;
        v32 = v4;
        v24 = v30;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %p -  Ignoring operation which is not ours [%{public}@ %p]", &v25, 0x2Au);
      }
    }
  }
}

void sub_100082D18(uint64_t a1, void *a2)
{
  v3 = a2;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
    v5 = [v4 libraryIdentifier];
    v6 = [*(a1 + 32) libraryIdentifier];
    v7 = [v5 isEqualToString:v6];

    v8 = *(a1 + 32);
    v9 = [objc_opt_class() logCategory];
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      if (v10)
      {
        v11 = *(a1 + 32);
        v12 = objc_opt_class();
        v13 = *(a1 + 32);
        v14 = v12;
        v25 = 138544130;
        v26 = v12;
        v27 = 2048;
        v28 = v13;
        v29 = 2114;
        v30 = objc_opt_class();
        v31 = 2048;
        v32 = v4;
        v15 = v30;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %p -  Calling block on one of our background operations [%{public}@ %p]", &v25, 0x2Au);
      }

      (*(*(a1 + 40) + 16))(*(a1 + 40), v4, v16, v17, v18, v19);
    }

    else
    {
      if (v10)
      {
        v20 = *(a1 + 32);
        v21 = objc_opt_class();
        v22 = *(a1 + 32);
        v23 = v21;
        v25 = 138544130;
        v26 = v21;
        v27 = 2048;
        v28 = v22;
        v29 = 2114;
        v30 = objc_opt_class();
        v31 = 2048;
        v32 = v4;
        v24 = v30;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ %p -  Ignoring background operation which is not ours [%{public}@ %p]", &v25, 0x2Au);
      }
    }
  }
}

void sub_100083000(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = [objc_opt_class() logCategory];
  v8 = v7;
  if (a2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *(a1 + 32);
      *buf = 134217984;
      v30 = v9;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "CloudLibrary %p - Connected to library successfully.", buf, 0xCu);
    }

    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, *(a1 + 40));
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 32);
      *buf = 134218242;
      v30 = v11;
      v31 = 2114;
      v32 = v5;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "CloudLibrary %p - Failed to connect to library with error: %{public}@", buf, 0x16u);
    }

    v12 = [*(*(a1 + 32) + 32) userIdentity];
    v13 = [*(*(a1 + 32) + 32) userIdentityStore];
    v14 = v13;
    if (v12)
    {
      v15 = v13 == 0;
    }

    else
    {
      v15 = 1;
    }

    if (v15)
    {
      v16 = *(a1 + 40);
      (*(*(a1 + 48) + 16))();
    }

    else
    {
      v28 = 0;
      v17 = [v13 getVerificationContextForUserIdentity:v12 error:&v28];
      v18 = v28;
      v19 = v18;
      if (v17)
      {
        [v17 setInteractionLevel:1];
        [v17 setDebugReason:@"Connecting to cloud library"];
        v20 = [[ICUserVerificationRequest alloc] initWithVerificationContext:v17];
        v21 = [ICStoreRequestContext alloc];
        v22 = +[ICClientInfo defaultInfo];
        v23 = [v21 initWithIdentity:v12 identityStore:v14 clientInfo:v22];
        [v20 setStoreRequestContext:v23];

        v25[0] = _NSConcreteStackBlock;
        v25[1] = 3221225472;
        v25[2] = sub_1000832EC;
        v25[3] = &unk_1001DC268;
        v27 = *(a1 + 48);
        v26 = *(a1 + 40);
        [v20 performWithResponseHandler:v25];
      }

      else
      {
        v24 = *(a1 + 40);
        (*(*(a1 + 48) + 16))();
      }
    }
  }
}

uint64_t sub_1000832EC(uint64_t a1, char a2)
{
  v3 = *(a1 + 40);
  if (a2)
  {
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  return (*(v3 + 16))(v3, v4);
}

void sub_1000834CC(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = a2;
  v3 = [v2 _userIdentity];
  [v4 setIdentity:v3];

  [v4 setPersonalizationStyle:2];
}

void sub_10008353C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [objc_opt_class() logCategory];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v8 = *(a1 + 32);
    v42 = 134218242;
    v43 = v8;
    v44 = 2114;
    v45 = v6;
    v9 = "CloudLibrary %p - failed to load url bag. err=%{public}@";
    v10 = v7;
    v11 = 22;
    goto LABEL_12;
  }

  if (![*(a1 + 32) _isEnabledWithURLBag:v5])
  {
    v7 = [objc_opt_class() logCategory];
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_13;
    }

    v23 = *(a1 + 32);
    v42 = 134217984;
    v43 = v23;
    v9 = "CloudLibrary %p - Service disabled in URL bag.";
    v10 = v7;
    v11 = 12;
LABEL_12:
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_ERROR, v9, &v42, v11);
LABEL_13:

    v24 = *(a1 + 40);
    if (v24)
    {
      (*(v24 + 16))(v24, 0);
    }

    goto LABEL_35;
  }

  v12 = [*(a1 + 32) _bagKey];
  v13 = [v5 dictionaryForBagKey:v12];

  objc_opt_class();
  LOBYTE(v12) = objc_opt_isKindOfClass();
  v14 = *(a1 + 32);
  v15 = objc_opt_class();
  if (v12)
  {
    v16 = [v15 oversizeLogCategory];
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v17 = *(a1 + 32);
      v42 = 134218242;
      v43 = v17;
      v44 = 2114;
      v45 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEFAULT, "CloudLibrary %p - Library Bag: %{public}@", &v42, 0x16u);
    }

    v18 = ICGetCloudDAAPClientPrefix();
    v19 = [v18 stringByAppendingString:@"base-url"];
    v20 = [v13 objectForKey:v19];
    v21 = v20;
    if (v20)
    {
      v22 = v20;
    }

    else
    {
      v22 = [v13 objectForKey:@"base-url"];
    }

    v28 = v22;

    if (v28 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0))
    {
      v29 = *(a1 + 32);
      v30 = [objc_opt_class() logCategory];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(a1 + 32);
        v42 = 134218242;
        v43 = v31;
        v44 = 2114;
        v45 = v28;
        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "CloudLibrary %p - Determined server URL: %{public}@", &v42, 0x16u);
      }

      v32 = *(*(a1 + 32) + 32);
      v33 = [v28 stringByAppendingString:@"/"];
      v34 = [NSURL URLWithString:v33];
      [v32 setBaseURL:v34];

      [*(a1 + 32) _continueConnectingToLibraryWithCompletionHandler:*(a1 + 40)];
    }

    else
    {
      v35 = *(a1 + 48);
      v36 = *(a1 + 32);
      v37 = [objc_opt_class() logCategory];
      v38 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
      if (v35 == 1)
      {
        if (v38)
        {
          v39 = *(a1 + 32);
          v42 = 134217984;
          v43 = v39;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "CloudLibrary %p - No library URL found, invalidating the URL bag and retrying...", &v42, 0xCu);
        }

        [*(a1 + 32) _connectToLibraryWithCompletionHandler:*(a1 + 40) allowRetry:0 forceBagReload:1];
      }

      else
      {
        if (v38)
        {
          v40 = *(a1 + 32);
          v42 = 134217984;
          v43 = v40;
          _os_log_impl(&_mh_execute_header, v37, OS_LOG_TYPE_ERROR, "CloudLibrary %p - No library URL found.", &v42, 0xCu);
        }

        v41 = *(a1 + 40);
        if (v41)
        {
          (*(v41 + 16))(v41, 0);
        }
      }
    }
  }

  else
  {
    v25 = [v15 logCategory];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v26 = *(a1 + 32);
      v42 = 134217984;
      v43 = v26;
      _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "CloudLibrary %p - No URL bag found", &v42, 0xCu);
    }

    v27 = *(a1 + 40);
    if (v27)
    {
      (*(v27 + 16))(v27, 0);
    }
  }

LABEL_35:
}