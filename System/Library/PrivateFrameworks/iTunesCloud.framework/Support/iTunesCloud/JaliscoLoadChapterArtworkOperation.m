@interface JaliscoLoadChapterArtworkOperation
- (JaliscoLoadChapterArtworkOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 dictionary:(id)a5;
- (JaliscoLoadChapterArtworkOperation)initWithDictionary:(id)a3;
- (void)cancel;
- (void)main;
@end

@implementation JaliscoLoadChapterArtworkOperation

- (void)cancel
{
  [(NSOperationQueue *)self->_artworkDownloadOperationQueue cancelAllOperations];
  v3.receiver = self;
  v3.super_class = JaliscoLoadChapterArtworkOperation;
  [(JaliscoLoadChapterArtworkOperation *)&v3 cancel];
}

- (void)main
{
  v3 = +[ICCloudAvailabilityController sharedController];
  v4 = [v3 shouldProhibitVideosActionForCurrentNetworkConditions];

  if ((v4 & 1) == 0)
  {
    v5 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      powerAssertionIdentifier = self->_powerAssertionIdentifier;
      *buf = 138543362;
      v63 = powerAssertionIdentifier;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Loading Chapter Artwork with power assertion: %{public}@", buf, 0xCu);
    }

    v7 = self->_powerAssertionIdentifier;
    CPSetPowerAssertionWithIdentifier();
    v8 = [(CloudLibraryOperation *)self musicLibrary];
    v9 = [(CloudLibraryOperation *)self clientIdentity];
    [v8 setClientIdentity:v9];

    group = dispatch_group_create();
    v58 = 0u;
    v59 = 0u;
    v60 = 0u;
    v61 = 0u;
    obj = [(NSDictionary *)self->_chapterArtworkToLoad allKeys];
    v41 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
    if (v41)
    {
      v40 = *v59;
      v47 = ML3TrackPropertyPurchaseHistoryID;
      v43 = ML3TrackPropertyMediaType;
LABEL_6:
      v10 = 0;
      while (1)
      {
        if (*v59 != v40)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v58 + 1) + 8 * v10);
        if (([(JaliscoLoadChapterArtworkOperation *)self isCancelled]& 1) != 0)
        {
          break;
        }

        v42 = v10;
        v12 = [(NSDictionary *)self->_chapterArtworkToLoad objectForKeyedSubscript:v11];
        v54 = 0u;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v46 = v12;
        v45 = [v12 allKeys];
        v49 = [v45 countByEnumeratingWithState:&v54 objects:v68 count:16];
        if (v49)
        {
          v48 = *v55;
LABEL_12:
          v13 = 0;
          while (1)
          {
            if (*v55 != v48)
            {
              objc_enumerationMutation(v45);
            }

            v14 = *(*(&v54 + 1) + 8 * v13);
            if (([(JaliscoLoadChapterArtworkOperation *)self isCancelled]& 1) != 0)
            {
              break;
            }

            v15 = [(CloudLibraryOperation *)self musicLibrary];
            v16 = +[ML3ComparisonPredicate predicateWithProperty:equalToInt64:](ML3ComparisonPredicate, "predicateWithProperty:equalToInt64:", v47, [v11 longLongValue]);
            v17 = [ML3Track anyInLibrary:v15 predicate:v16 options:3];

            if (v17)
            {
              v18 = [v46 objectForKeyedSubscript:v14];
              v19 = [v17 valueForProperty:v43];
              v50 = [v19 unsignedIntValue];

              v20 = [v17 persistentID];
              [v14 doubleValue];
              v51 = [ML3MusicLibrary artworkTokenForChapterWithItemPID:v20 retrievalTime:v21 / 1000.0];
              v22 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                v23 = [v11 longLongValue];
                v24 = [v14 longLongValue];
                *buf = 134218498;
                v63 = v23;
                v64 = 2048;
                v65 = v24;
                v66 = 2114;
                v67 = v18;
                _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_DEFAULT, "Fetching chapter artwork (purchase history ID = %lld, chapter time = %lld): %{public}@", buf, 0x20u);
              }

              v25 = [CloudArtworkImportOperation alloc];
              artworkDownloadSession = self->_artworkDownloadSession;
              [(CloudLibraryOperation *)self configuration];
              v27 = v18;
              v29 = v28 = self;
              v30 = [v11 unsignedLongLongValue];
              v31 = [(CloudLibraryOperation *)v28 clientIdentity];
              v32 = [(CloudArtworkImportOperation *)v25 initWithURLSession:artworkDownloadSession configuration:v29 cloudID:v30 artworkToken:v51 artworkType:3 sourceType:400 variantType:0 clientIdentity:v31];

              self = v28;
              [(CloudArtworkImportOperation *)v32 setMediaType:v50];
              [(CloudArtworkImportOperation *)v32 setAssetURL:v27];
              v52[0] = _NSConcreteStackBlock;
              v52[1] = 3221225472;
              v52[2] = sub_1000305C8;
              v52[3] = &unk_1001DF578;
              v33 = group;
              v53 = v33;
              [(CloudArtworkImportOperation *)v32 setCompletionBlock:v52];
              [(CloudArtworkImportOperation *)v32 setQualityOfService:25];
              dispatch_group_enter(v33);
              [(NSOperationQueue *)v28->_artworkDownloadOperationQueue addOperation:v32];
            }

            if (v49 == ++v13)
            {
              v49 = [v45 countByEnumeratingWithState:&v54 objects:v68 count:16];
              if (v49)
              {
                goto LABEL_12;
              }

              break;
            }
          }
        }

        v10 = v42 + 1;
        if ((v42 + 1) == v41)
        {
          v41 = [obj countByEnumeratingWithState:&v58 objects:v69 count:16];
          if (v41)
          {
            goto LABEL_6;
          }

          break;
        }
      }
    }

    dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
    v34 = [(CloudLibraryOperation *)self musicLibrary];
    v35 = MSVTCCIdentityForCurrentProcess();
    [v34 setClientIdentity:v35];

    v36 = os_log_create("com.apple.amp.itunescloudd", "PurchaseSync");
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v37 = self->_powerAssertionIdentifier;
      *buf = 138543362;
      v63 = v37;
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_DEFAULT, "Loading Chapter Artwork Complete, releasing power assertion: %{public}@", buf, 0xCu);
    }

    v38 = self->_powerAssertionIdentifier;
    CPSetPowerAssertionWithIdentifier();
    [(CloudLibraryOperation *)self setStatus:1];
  }
}

- (JaliscoLoadChapterArtworkOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 dictionary:(id)a5
{
  v9 = a5;
  v21.receiver = self;
  v21.super_class = JaliscoLoadChapterArtworkOperation;
  v10 = [(CloudLibraryOperation *)&v21 initWithConfiguration:a3 clientIdentity:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_chapterArtworkToLoad, a5);
    v12 = [NSString stringWithFormat:@"com.apple.itunescloudd.%@", objc_opt_class()];
    powerAssertionIdentifier = v11->_powerAssertionIdentifier;
    v11->_powerAssertionIdentifier = v12;

    v14 = +[NSURLSessionConfiguration ephemeralSessionConfiguration];
    [v14 setHTTPShouldUsePipelining:1];
    v15 = +[ICCloudAvailabilityController sharedController];
    [v14 setAllowsCellularAccess:{objc_msgSend(v15, "isCellularDataRestrictedForVideos") ^ 1}];

    v16 = [[ICURLSession alloc] initWithConfiguration:v14 maxConcurrentRequests:5 qualityOfService:17];
    artworkDownloadSession = v11->_artworkDownloadSession;
    v11->_artworkDownloadSession = v16;

    v18 = objc_alloc_init(NSOperationQueue);
    artworkDownloadOperationQueue = v11->_artworkDownloadOperationQueue;
    v11->_artworkDownloadOperationQueue = v18;

    [(NSOperationQueue *)v11->_artworkDownloadOperationQueue setMaxConcurrentOperationCount:5];
  }

  return v11;
}

- (JaliscoLoadChapterArtworkOperation)initWithDictionary:(id)a3
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = MSVTCCIdentityForCurrentProcess();
  v7 = [(JaliscoLoadChapterArtworkOperation *)self initWithConfiguration:v5 clientIdentity:v6 dictionary:v4];

  return v7;
}

@end