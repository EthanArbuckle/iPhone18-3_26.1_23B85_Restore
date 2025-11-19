@interface JaliscoMediaImporter
+ (id)logCategory;
+ (id)oversizeLogCategory;
- (BOOL)needsUpdateForTokens;
- (JaliscoMediaImporter)initWithConnection:(id)a3 supportedMediaKindsHandler:(id)a4;
- (id)_chapterArtworkURLsForData:(id)a3 baseURL:(id)a4;
- (id)_chapterDataFromURL:(id)a3;
- (id)_supportedMediaKindsDatabasePropertyValue;
- (id)mediaFilter;
- (id)purchaseTokens;
- (id)queryFilter;
- (id)supportedMediaKinds;
- (unsigned)onDiskRevision;
- (void)cancel;
- (void)clearNeedsUpdateForTokens;
@end

@implementation JaliscoMediaImporter

- (id)_supportedMediaKindsDatabasePropertyValue
{
  v2 = [(JaliscoMediaImporter *)self mediaFilter];
  v3 = [v2 supportedMediaKinds];
  v4 = [v3 componentsJoinedByString:{@", "}];

  return v4;
}

- (id)_chapterArtworkURLsForData:(id)a3 baseURL:(id)a4
{
  v5 = a3;
  v27 = a4;
  v28 = +[NSMutableDictionary dictionary];
  v6 = [v5 objectForKeyedSubscript:@"chapters"];
  v7 = [v6 objectForKeyedSubscript:@"chapter-list"];

  v25 = v5;
  v8 = [v5 objectForKeyedSubscript:@"chapters"];
  v9 = [v8 objectForKeyedSubscript:@"nominal-image-resolutions"];
  v10 = [v9 lastObject];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  obj = v7;
  v11 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v30;
    do
    {
      for (i = 0; i != v12; i = i + 1)
      {
        if (*v30 != v13)
        {
          objc_enumerationMutation(obj);
        }

        v15 = *(*(&v29 + 1) + 8 * i);
        v16 = [v15 objectForKeyedSubscript:@"images"];
        v17 = [v16 objectForKeyedSubscript:v10];
        v18 = [v17 objectForKeyedSubscript:@"url"];

        if ([v18 length])
        {
          v19 = [v15 objectForKey:@"start"];
          [v19 floatValue];
          v21 = (v20 * 1000.0);

          v22 = [v27 URLByAppendingPathComponent:v18 isDirectory:0];
          v23 = [NSNumber numberWithUnsignedInt:v21];
          [v28 setObject:v22 forKey:v23];
        }
      }

      v12 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v12);
  }

  return v28;
}

- (id)_chapterDataFromURL:(id)a3
{
  v3 = a3;
  v4 = [NSDictionary alloc];
  v5 = [NSURL URLWithString:v3];

  v6 = [v4 initWithContentsOfURL:v5];

  return v6;
}

- (void)clearNeedsUpdateForTokens
{
  v2 = [(JaliscoImporter *)self musicLibrary];
  [v2 setJaliscoNeedsUpdateForTokens:0];
}

- (BOOL)needsUpdateForTokens
{
  v3 = [(JaliscoImporter *)self musicLibrary];
  v4 = [v3 jaliscoNeedsUpdateForTokens];

  if (v4)
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = 138543362;
      v12 = self;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ - JaliscoNeedsUpdateForTokens is YES, forcing a full token refresh.", &v11, 0xCu);
    }

    v6 = 1;
  }

  else
  {
    v7 = [(JaliscoImporter *)self musicLibrary];
    v5 = [v7 jaliscoLastSupportedMediaKinds];

    v8 = [(JaliscoMediaImporter *)self _supportedMediaKindsDatabasePropertyValue];
    if (v5 && ([v5 isEqualToString:v8]& 1) != 0)
    {
      v6 = 0;
    }

    else
    {
      v9 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v11 = 138543874;
        v12 = self;
        v13 = 2114;
        v14 = v5;
        v15 = 2114;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "%{public}@ - Supported media kinds are different, forcing a full token refresh. lastSupportedMediaKinds=%{public}@, currentSupportedMediaKinds=%{public}@", &v11, 0x20u);
      }

      v6 = 1;
    }
  }

  return v6;
}

- (id)supportedMediaKinds
{
  supportedMediaKinds = self->_supportedMediaKinds;
  if (!supportedMediaKinds)
  {
    v4 = [(JaliscoMediaImporter *)self mediaFilter];
    v5 = [v4 supportedMediaKinds];
    v6 = self->_supportedMediaKinds;
    self->_supportedMediaKinds = v5;

    supportedMediaKinds = self->_supportedMediaKinds;
  }

  return supportedMediaKinds;
}

- (id)purchaseTokens
{
  if ([(JaliscoMediaImporter *)self onDiskRevision])
  {
    v3 = [(JaliscoImporter *)self connection];
    v4 = [v3 userIdentity];
    v5 = [ML3MusicLibrary musicLibraryForUserAccount:v4];

    v6 = v5;
    v22 = +[NSMutableDictionary dictionary];
    context = objc_autoreleasePoolPush();
    v7 = ML3TrackPropertyPurchaseHistoryID;
    v8 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyPurchaseHistoryID value:&off_1001ED8D0 comparison:2];
    v9 = ML3TrackPropertyStoreAccountID;
    v10 = [v6 jaliscoAccountID];
    v11 = [ML3ComparisonPredicate predicateWithProperty:v9 value:v10 comparison:1];
    v28[0] = v11;
    v12 = [ML3ComparisonPredicate predicateWithProperty:v9 value:&off_1001ED8D0 comparison:1];
    v28[1] = v12;
    v13 = [NSArray arrayWithObjects:v28 count:2];
    v14 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v13];

    v27[0] = v8;
    v27[1] = v14;
    v15 = [NSArray arrayWithObjects:v27 count:2];
    v16 = [ML3AllCompoundPredicate predicateMatchingPredicates:v15];

    v17 = [ML3Track queryWithLibrary:v6 predicate:v16];
    [v17 setIgnoreSystemFilterPredicates:1];
    v26[0] = v7;
    v26[1] = ML3TrackPropertyPurchaseHistoryToken;
    v18 = [NSArray arrayWithObjects:v26 count:2];
    v24[0] = _NSConcreteStackBlock;
    v24[1] = 3221225472;
    v24[2] = sub_1001049E4;
    v24[3] = &unk_1001DF8D0;
    v19 = v22;
    v25 = v19;
    [v17 enumeratePersistentIDsAndProperties:v18 usingBlock:v24];

    for (i = 1; i != -1; --i)
    {
    }

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v19 = &__NSDictionary0__struct;
  }

  return v19;
}

- (id)queryFilter
{
  v2 = [(JaliscoMediaImporter *)self mediaFilter];
  v3 = [v2 daapQueryFilterString];

  return v3;
}

- (id)mediaFilter
{
  mediaFilter = self->_mediaFilter;
  if (!mediaFilter)
  {
    v4 = [ICDJaliscoMediaFilter alloc];
    v5 = [(JaliscoImporter *)self musicLibrary];
    v6 = [v5 jaliscoLastExcludedMediaKinds];
    v7 = [(ICDJaliscoMediaFilter *)v4 initWithKindsToExclude:v6 supportedMediaKindsHandler:self->_supportedMediaKindsHandler];
    v8 = self->_mediaFilter;
    self->_mediaFilter = v7;

    mediaFilter = self->_mediaFilter;
  }

  return mediaFilter;
}

- (unsigned)onDiskRevision
{
  v2 = [(JaliscoImporter *)self musicLibrary];
  v3 = [v2 jaliscoOnDiskDatabaseRevision];

  return v3;
}

- (void)cancel
{
  v7.receiver = self;
  v7.super_class = JaliscoMediaImporter;
  [(JaliscoImporter *)&v7 cancel];
  v2 = dispatch_semaphore_create(0);
  v3 = +[MLMediaLibraryService sharedMediaLibraryService];
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100104CA0;
  v5[3] = &unk_1001DE788;
  v6 = v2;
  v4 = v2;
  [v3 cancelImportOperation:1 completionHandler:v5];

  dispatch_semaphore_wait(v4, 0xFFFFFFFFFFFFFFFFLL);
}

- (JaliscoMediaImporter)initWithConnection:(id)a3 supportedMediaKindsHandler:(id)a4
{
  v7 = a4;
  v11.receiver = self;
  v11.super_class = JaliscoMediaImporter;
  v8 = [(JaliscoImporter *)&v11 initWithConnection:a3];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_supportedMediaKindsHandler, a4);
  }

  return v9;
}

+ (id)oversizeLogCategory
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync_Oversize");

  return v2;
}

+ (id)logCategory
{
  v2 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");

  return v2;
}

@end