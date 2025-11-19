@interface ICDEnhancedAudioKeyManager
- (ICDEnhancedAudioKeyManager)init;
- (id)_storeRequestContext;
- (void)_fetchSharedKeysForcingRefresh:(BOOL)a3;
- (void)contentKeySession:(id)a3 didFinishProcessingKey:(id)a4 withResponse:(id)a5 error:(id)a6;
- (void)fetchMissingOfflineKeys;
- (void)processPendingKeyInvalidations;
- (void)refreshSharedKeys;
@end

@implementation ICDEnhancedAudioKeyManager

- (void)processPendingKeyInvalidations
{
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_10000292C;
  v4[3] = &unk_1001DE8C8;
  v4[4] = self;
  v3 = [[ICAsyncBlockOperation alloc] initWithStartHandler:v4];
  [(NSOperationQueue *)self->_hlsKeyRefreshOperationQueue addOperation:v3];
}

- (id)_storeRequestContext
{
  v2 = [[ICStoreRequestContext alloc] initWithBlock:&stru_1001DD7B8];

  return v2;
}

- (void)contentKeySession:(id)a3 didFinishProcessingKey:(id)a4 withResponse:(id)a5 error:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  if (v12 && [v12 bulkRefreshWaitInterval])
  {
    v14 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = 138543874;
      v16 = self;
      v17 = 2048;
      v18 = [v12 bulkRefreshWaitInterval];
      v19 = 2114;
      v20 = v11;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ Received wait interval %lu in response to key %{public}@ - cancelling remaining key requests", &v15, 0x20u);
    }

    [(NSOperationQueue *)self->_hlsKeyRefreshOperationQueue cancelAllOperations];
  }
}

- (void)_fetchSharedKeysForcingRefresh:(BOOL)a3
{
  v3 = a3;
  v5 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v13 = self;
    v14 = 1024;
    v15 = v3;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Fetching shared key. forceRefresh = %{BOOL}u", buf, 0x12u);
  }

  v6 = [(ICDEnhancedAudioKeyManager *)self _storeRequestContext];
  v7 = +[ICURLBagProvider sharedBagProvider];
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 3221225472;
  v9[2] = sub_1000DAFA8;
  v9[3] = &unk_1001DD808;
  v9[4] = self;
  v10 = v6;
  v11 = v3;
  v8 = v6;
  [v7 getBagForRequestContext:v8 forceRefetch:0 withCompletionHandler:v9];
}

- (void)fetchMissingOfflineKeys
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Fetching missing offline keys for downloads", &buf, 0xCu);
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v29 = 0x2020000000;
  v30 = 0;
  v4 = +[NSMutableDictionary dictionary];
  +[ML3MusicLibrary autoupdatingSharedLibrary];
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 3221225472;
  v19[2] = sub_1000DB8F4;
  v5 = v19[3] = &unk_1001DD6B8;
  v20 = v5;
  v21 = self;
  p_buf = &buf;
  v6 = v4;
  v22 = v6;
  [v5 databaseConnectionAllowingWrites:0 withBlock:v19];
  v7 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = [v6 count];
    *v24 = 138543618;
    v25 = self;
    v26 = 2048;
    v27 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Found %lu offline HLS assets to check", v24, 0x16u);
  }

  objc_initWeak(&location, self);
  hlsKeyRefreshOperationQueue = self->_hlsKeyRefreshOperationQueue;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_1000DBB30;
  v15[3] = &unk_1001DD730;
  v10 = v6;
  v16 = v10;
  objc_copyWeak(&v17, &location);
  [(NSOperationQueue *)hlsKeyRefreshOperationQueue addBarrierBlock:v15];
  if (*(*(&buf + 1) + 24) == 1)
  {
    v11 = +[ICContentKeySession enhancedAudioSharedContentKeyPath];
    v12 = +[NSFileManager defaultManager];
    v13 = [v12 fileExistsAtPath:v11];

    if ((v13 & 1) == 0)
    {
      v14 = os_log_create("com.apple.amp.itunescloudd", "Default");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *v24 = 138543362;
        v25 = self;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ Fetching shared keys needed for offline HLS assets", v24, 0xCu);
      }

      [(ICDEnhancedAudioKeyManager *)self _fetchSharedKeysForcingRefresh:0];
    }
  }

  objc_destroyWeak(&v17);

  objc_destroyWeak(&location);
  _Block_object_dispose(&buf, 8);
}

- (void)refreshSharedKeys
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "Default");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 138543362;
    v9 = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Refreshing shared keys", &v8, 0xCu);
  }

  v4 = +[ICContentKeySession enhancedAudioSharedContentKeyPath];
  v5 = +[NSFileManager defaultManager];
  v6 = [v5 fileExistsAtPath:v4];

  if (v6)
  {
    [(ICDEnhancedAudioKeyManager *)self _fetchSharedKeysForcingRefresh:1];
  }

  else
  {
    v7 = os_log_create("com.apple.amp.itunescloudd", "Default");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 138543362;
      v9 = self;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "%{public}@ Skipping refreshing shared keys because we haven't tried to use them yet", &v8, 0xCu);
    }
  }
}

- (ICDEnhancedAudioKeyManager)init
{
  v6.receiver = self;
  v6.super_class = ICDEnhancedAudioKeyManager;
  v2 = [(ICDEnhancedAudioKeyManager *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(NSOperationQueue);
    hlsKeyRefreshOperationQueue = v2->_hlsKeyRefreshOperationQueue;
    v2->_hlsKeyRefreshOperationQueue = v3;

    [(NSOperationQueue *)v2->_hlsKeyRefreshOperationQueue setMaxConcurrentOperationCount:2];
    [(NSOperationQueue *)v2->_hlsKeyRefreshOperationQueue setQualityOfService:17];
    [(NSOperationQueue *)v2->_hlsKeyRefreshOperationQueue setName:@"com.apple.itunescloudd.ICDEnhancedAudioKeyManager.HLSKeyRefreshOperationQueue"];
  }

  return v2;
}

@end