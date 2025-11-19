@interface ICDMusicUserSocialProfileProvider
- (BOOL)_errorIsRecoverable:(id)a3;
- (ICDMusicUserSocialProfileProvider)initWithDelegate:(id)a3;
- (id)_cacheContainerPath;
- (id)_getCachedResponseForContext:(id)a3;
- (void)_cacheResponse:(id)a3 forContext:(id)a4;
- (void)_clearCacheForContext:(id)a3;
- (void)_onQueue_retryPendingUpdateAttempt:(unsigned int)a3;
- (void)_onQueue_setupRetrySourceForAttempt:(unsigned int)a3;
- (void)_onQueue_teardownRetrySource;
- (void)_performMusicKitRequestWithURL:(id)a3 storeRequestContext:(id)a4 ignoreCache:(BOOL)a5 completion:(id)a6;
- (void)environmentMonitorDidChangeNetworkReachability:(id)a3;
- (void)fetchMusicUserProfileWithStoreRequestContext:(id)a3 ignoreCache:(BOOL)a4 completion:(id)a5;
@end

@implementation ICDMusicUserSocialProfileProvider

- (void)_onQueue_retryPendingUpdateAttempt:(unsigned int)a3
{
  dispatch_assert_queue_V2(self->_serialQueue);
  [(ICDMusicUserSocialProfileProvider *)self _onQueue_teardownRetrySource];
  v5 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218240;
    v12 = self;
    v13 = 1024;
    v14 = a3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "<ICDMusicUserSocialProfileProvider: %p> Retrying attempt %u", buf, 0x12u);
  }

  contextsPendingUserProfileUpdate = self->_contextsPendingUserProfileUpdate;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000EB8CC;
  v9[3] = &unk_1001DDDE8;
  v9[4] = self;
  v10 = a3;
  [(NSMutableSet *)contextsPendingUserProfileUpdate enumerateObjectsUsingBlock:v9];
  v7 = +[NSMutableSet set];
  v8 = self->_contextsPendingUserProfileUpdate;
  self->_contextsPendingUserProfileUpdate = v7;
}

- (void)_onQueue_teardownRetrySource
{
  retryTimer = self->_retryTimer;
  if (retryTimer)
  {
    dispatch_source_cancel(retryTimer);
    v4 = self->_retryTimer;
    self->_retryTimer = 0;
  }
}

- (void)_onQueue_setupRetrySourceForAttempt:(unsigned int)a3
{
  dispatch_assert_queue_V2(self->_serialQueue);
  [(ICDMusicUserSocialProfileProvider *)self _onQueue_teardownRetrySource];
  v5 = dispatch_source_create(&_dispatch_source_type_timer, 0, 0, self->_serialQueue);
  retryTimer = self->_retryTimer;
  self->_retryTimer = v5;

  v7 = exp2(a3);
  v8 = dispatch_time(0, 1000000000 * v7);
  dispatch_source_set_timer(self->_retryTimer, v8, 0xFFFFFFFFFFFFFFFFLL, 0x989680uLL);
  objc_initWeak(&location, self);
  v9 = self->_retryTimer;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 3221225472;
  v10[2] = sub_1000EBE6C;
  v10[3] = &unk_1001DDD70;
  objc_copyWeak(&v11, &location);
  v12 = a3;
  v10[4] = self;
  dispatch_source_set_event_handler(v9, v10);
  dispatch_resume(self->_retryTimer);
  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);
}

- (void)_performMusicKitRequestWithURL:(id)a3 storeRequestContext:(id)a4 ignoreCache:(BOOL)a5 completion:(id)a6
{
  v7 = a5;
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = [ICMusicKitRequestContext alloc];
  v26[0] = _NSConcreteStackBlock;
  v26[1] = 3221225472;
  v26[2] = sub_1000EC208;
  v26[3] = &unk_1001DDD48;
  v14 = v11;
  v27 = v14;
  v15 = [v13 initWithBlock:v26];
  v16 = [NSMutableURLRequest requestWithURL:v10];
  v17 = v16;
  if (v7)
  {
    [v16 setCachePolicy:1];
  }

  v18 = [[ICMusicKitURLRequest alloc] initWithURLRequest:v17 requestContext:v15 resumeData:0];
  v19 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v29 = self;
    v30 = 2114;
    v31 = v18;
    v32 = 2114;
    v33 = v10;
    _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "<ICDMusicUserSocialProfileProvider: %p> Performing MusicKit request %{public}@ with URL: %{public}@", buf, 0x20u);
  }

  v20 = +[ICURLSessionManager defaultSession];
  v23[0] = _NSConcreteStackBlock;
  v23[1] = 3221225472;
  v23[2] = sub_1000EC33C;
  v23[3] = &unk_1001DDD20;
  v23[4] = self;
  v24 = v18;
  v25 = v12;
  v21 = v12;
  v22 = v18;
  [v20 enqueueDataRequest:v22 withCompletionHandler:v23];
}

- (BOOL)_errorIsRecoverable:(id)a3
{
  v4 = a3;
  v5 = [v4 domain];
  v6 = [v5 isEqualToString:ICErrorDomain];

  if (!v6 || (v7 = [v4 code], v8 = 1, v7 != -7103) && v7 != -7100 && v7 != -7003)
  {
    v9 = [v4 domain];
    v10 = [v9 isEqualToString:NSURLErrorDomain];

    if (v10 && (v11 = [v4 code] + 1009, v11 <= 8) && ((1 << v11) & 0x111) != 0)
    {
      v8 = 1;
    }

    else
    {
      v12 = [v4 userInfo];
      v13 = [v12 objectForKeyedSubscript:NSUnderlyingErrorKey];

      if (v13)
      {
        v8 = [(ICDMusicUserSocialProfileProvider *)self _errorIsRecoverable:v13];
      }

      else
      {
        v8 = 0;
      }
    }
  }

  return v8;
}

- (void)_clearCacheForContext:(id)a3
{
  v26 = a3;
  v4 = +[NSFileManager defaultManager];
  v25 = self;
  v5 = [(ICDMusicUserSocialProfileProvider *)self _cacheContainerPath];
  v6 = [v4 enumeratorAtPath:v5];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v28 objects:v38 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = *v29;
    *&v8 = 134218498;
    v24 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v29 != v10)
        {
          objc_enumerationMutation(v6);
        }

        v12 = *(*(&v28 + 1) + 8 * i);
        if (MSVDeviceSupportsMultipleLibraries())
        {
          v13 = [v26 hashedDSID];
          v14 = [v12 hasPrefix:v13];

          if (!v14)
          {
            continue;
          }
        }

        v15 = [v5 stringByAppendingPathComponent:{v12, v24}];
        v27 = 0;
        v16 = [v4 removeItemAtPath:v15 error:&v27];
        v17 = v27;

        v18 = os_log_create("com.apple.amp.itunescloudd", "UserState");
        v19 = v18;
        if (v16)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134218242;
            v33 = v25;
            v34 = 2112;
            v35 = v12;
            v20 = v19;
            v21 = OS_LOG_TYPE_DEFAULT;
            v22 = "<ICDMusicUserSocialProfileProvider: %p> Clearing cache response %@.";
            v23 = 22;
            goto LABEL_13;
          }
        }

        else if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = v24;
          v33 = v25;
          v34 = 2112;
          v35 = v12;
          v36 = 2114;
          v37 = v17;
          v20 = v19;
          v21 = OS_LOG_TYPE_ERROR;
          v22 = "<ICDMusicUserSocialProfileProvider: %p> Could not clear cache response %@. error=%{public}@";
          v23 = 32;
LABEL_13:
          _os_log_impl(&_mh_execute_header, v20, v21, v22, buf, v23);
        }

        continue;
      }

      v9 = [v6 countByEnumeratingWithState:&v28 objects:v38 count:16];
    }

    while (v9);
  }
}

- (void)_cacheResponse:(id)a3 forContext:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = +[NSFileManager defaultManager];
  v9 = [(ICDMusicUserSocialProfileProvider *)self _cacheContainerPath];
  if ([v8 fileExistsAtPath:v9 isDirectory:0])
  {
    [(ICDMusicUserSocialProfileProvider *)self _clearCacheForContext:v6];
  }

  else
  {
    [v8 createDirectoryAtPath:v9 withIntermediateDirectories:1 attributes:0 error:0];
  }

  v21 = 0;
  v10 = [NSJSONSerialization dataWithJSONObject:v7 options:0 error:&v21];

  v11 = v21;
  if (!v11)
  {
    v13 = [v6 cacheKey];
    v14 = [v9 stringByAppendingPathComponent:v13];
    v20 = 0;
    [v10 writeToFile:v14 options:1 error:&v20];
    v12 = v20;
    v15 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    v16 = v15;
    if (v12)
    {
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v23 = self;
        v24 = 2114;
        v25 = v12;
        v17 = "<ICDMusicUserSocialProfileProvider: %p> failed to write JSON cache. error=%{public}@";
        v18 = v16;
        v19 = OS_LOG_TYPE_ERROR;
LABEL_12:
        _os_log_impl(&_mh_execute_header, v18, v19, v17, buf, 0x16u);
      }
    }

    else if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218243;
      v23 = self;
      v24 = 2113;
      v25 = v14;
      v17 = "<ICDMusicUserSocialProfileProvider: %p> saved JSON response to cache at path %{private}@";
      v18 = v16;
      v19 = OS_LOG_TYPE_DEFAULT;
      goto LABEL_12;
    }

    goto LABEL_14;
  }

  v12 = v11;
  v13 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    *buf = 134218242;
    v23 = self;
    v24 = 2114;
    v25 = v12;
    _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "<ICDMusicUserSocialProfileProvider: %p> failed to serializ data. error=%{public}@", buf, 0x16u);
  }

LABEL_14:
}

- (id)_getCachedResponseForContext:(id)a3
{
  v4 = a3;
  v28 = self;
  v5 = [(ICDMusicUserSocialProfileProvider *)self _cacheContainerPath];
  v29 = +[NSFileManager defaultManager];
  v30 = v5;
  v6 = [v29 enumeratorAtPath:v5];
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v33 objects:v41 count:16];
  if (v7)
  {
    v9 = v7;
    v10 = 0;
    v11 = *v34;
    *&v8 = 134218242;
    v27 = v8;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v34 != v11)
        {
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v33 + 1) + 8 * i);
        v14 = [v4 hashedDSID];
        v15 = [v13 hasPrefix:v14];

        if (v15)
        {
          v16 = [v4 cacheKey];
          v17 = [v13 isEqualToString:v16];

          if (v17)
          {
            v18 = v10;
            v10 = v13;
          }

          else
          {
            v19 = os_log_create("com.apple.amp.itunescloudd", "UserState");
            if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v27;
              v38 = v28;
              v39 = 2112;
              v40 = v13;
              _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "<ICDMusicUserSocialProfileProvider: %p> Cache response %@ is stale. Removing.", buf, 0x16u);
            }

            v18 = [v30 stringByAppendingPathComponent:v13];
            [v29 removeItemAtPath:v18 error:0];
          }
        }
      }

      v9 = [v6 countByEnumeratingWithState:&v33 objects:v41 count:16];
    }

    while (v9);
    if (v10)
    {
      v20 = [v30 stringByAppendingPathComponent:v10];
      v32 = 0;
      v21 = [NSData dataWithContentsOfFile:v20 options:0 error:&v32];
      v22 = v32;

      if (v22)
      {
        v23 = os_log_create("com.apple.amp.itunescloudd", "UserState");
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = v27;
          v38 = v28;
          v39 = 2114;
          v40 = v22;
          _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_ERROR, "<ICDMusicUserSocialProfileProvider: %p> Error reading cache file. error=%{public}@", buf, 0x16u);
        }
      }

      else
      {
        v31 = 0;
        v23 = [NSJSONSerialization JSONObjectWithData:v21 options:0 error:&v31];
        v22 = v31;
        if (!v22)
        {
          v23 = v23;
          v24 = v23;
          goto LABEL_27;
        }

        v25 = os_log_create("com.apple.amp.itunescloudd", "UserState");
        if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
        {
          *buf = v27;
          v38 = v28;
          v39 = 2114;
          v40 = v22;
          _os_log_impl(&_mh_execute_header, v25, OS_LOG_TYPE_ERROR, "<ICDMusicUserSocialProfileProvider: %p> Error deserializing cached response error=%{public}@", buf, 0x16u);
        }
      }

      v24 = 0;
LABEL_27:

      goto LABEL_28;
    }
  }

  v22 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v38 = v28;
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "<ICDMusicUserSocialProfileProvider: %p> Cache is empty.", buf, 0xCu);
  }

  v10 = 0;
  v24 = 0;
LABEL_28:

  return v24;
}

- (id)_cacheContainerPath
{
  v5[0] = CPSharedResourcesDirectory();
  v5[1] = @"Library";
  v5[2] = @"com.apple.iTunesCloud";
  v5[3] = @"ICMusicUserProfileResponsesCache";
  v2 = [NSArray arrayWithObjects:v5 count:4];
  v3 = [NSString pathWithComponents:v2];

  return v3;
}

- (void)environmentMonitorDidChangeNetworkReachability:(id)a3
{
  v4 = a3;
  serialQueue = self->_serialQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_1000ED4F0;
  v7[3] = &unk_1001DF618;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(serialQueue, v7);
}

- (void)fetchMusicUserProfileWithStoreRequestContext:(id)a3 ignoreCache:(BOOL)a4 completion:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  v10 = os_log_create("com.apple.amp.itunescloudd", "UserState");
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134218498;
    v25 = self;
    v26 = 2114;
    v27 = v8;
    v28 = 1024;
    v29 = v6;
    _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_DEFAULT, "<ICDMusicUserSocialProfileProvider: %p> fetchMusicUserProfileWithStoreRequestContext storeRequestContext=%{public}@ ignoreCache=%{BOOL}u", buf, 0x1Cu);
  }

  v11 = +[ICDefaults standardDefaults];
  v12 = [v11 socialProfileSupported];

  if (v12)
  {
    if (v8)
    {
      v13 = [v8 identity];
      v14 = [ICPrivacyInfo sharedPrivacyInfoForUserIdentity:v13];

      if (v14 && ![v14 shouldBlockPersonalizedNetworkRequestsForMusic])
      {
        v16 = [[ICMusicSubscriptionStatusRequest alloc] initWithStoreRequestContext:v8];
        v19 = +[ICMusicSubscriptionStatusController sharedStatusController];
        v20[0] = _NSConcreteStackBlock;
        v20[1] = 3221225472;
        v20[2] = sub_1000ED944;
        v20[3] = &unk_1001DDCF8;
        v20[4] = self;
        v21 = v8;
        v22 = v9;
        v23 = v6;
        [v19 performSubscriptionStatusRequest:v16 withCompletionHandler:v20];
      }

      else
      {
        v15 = os_log_create("com.apple.amp.itunescloudd", "UserState");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          *buf = 134217984;
          v25 = self;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "<ICDMusicUserSocialProfileProvider: %p> Privacy acknowledgement required. Returning nil profile.", buf, 0xCu);
        }

        v16 = [NSError errorWithDomain:ICErrorDomain code:-7007 userInfo:0];
        (*(v9 + 2))(v9, 0, v16);
      }
    }

    else
    {
      v18 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:0];
      (*(v9 + 2))(v9, 0, v18);
    }
  }

  else
  {
    v17 = os_log_create("com.apple.amp.itunescloudd", "UserState");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v25 = self;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "<ICDMusicUserSocialProfileProvider: %p> Social Profiles are not supported. Returning nil profile.", buf, 0xCu);
    }

    (*(v9 + 2))(v9, 0, 0);
  }
}

- (ICDMusicUserSocialProfileProvider)initWithDelegate:(id)a3
{
  v5 = a3;
  v12.receiver = self;
  v12.super_class = ICDMusicUserSocialProfileProvider;
  v6 = [(ICDMusicUserSocialProfileProvider *)&v12 init];
  if (v6)
  {
    v7 = +[NSMutableSet set];
    contextsPendingUserProfileUpdate = v6->_contextsPendingUserProfileUpdate;
    v6->_contextsPendingUserProfileUpdate = v7;

    v9 = dispatch_queue_create("com.apple.iTunesCloud.ICDMusicUserSocialProfileProvider", 0);
    serialQueue = v6->_serialQueue;
    v6->_serialQueue = v9;

    objc_storeStrong(&v6->_delegate, a3);
  }

  return v6;
}

@end