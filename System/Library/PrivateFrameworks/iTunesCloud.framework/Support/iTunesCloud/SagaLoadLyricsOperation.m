@interface SagaLoadLyricsOperation
- (SagaLoadLyricsOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 sagaIDs:(id)a5;
- (void)main;
@end

@implementation SagaLoadLyricsOperation

- (void)main
{
  v2 = +[ICCloudAvailabilityController sharedController];
  v3 = [v2 shouldProhibitMusicActionForCurrentNetworkConditions];

  if ((v3 & 1) == 0)
  {
    v45 = [(CloudLibraryOperation *)self musicLibrary];
    v43 = [(CloudLibraryOperation *)self connection];
    v4 = [(NSArray *)self->_sagaIDs count];
    v36 = [NSString stringWithFormat:@"SagaLoadLyricsOperation-bulk (item count = %llu)", v4];
    v35 = [[MSVXPCTransaction alloc] initWithName:v36];
    [v35 beginTransaction];
    v5 = [(CloudLibraryOperation *)self musicLibrary];
    v6 = [(CloudLibraryOperation *)self clientIdentity];
    [v5 setClientIdentity:v6];

    v7 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Taking power assertion: com.apple.itunescloudd.SagaLoadLyricsOperation", buf, 2u);
    }

    CPSetPowerAssertionWithIdentifier();
    v8 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v4;
      *&buf[12] = 1024;
      *&buf[14] = 100;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Fetching lyrics for %ld tracks (batch size = %u)", buf, 0x12u);
    }

    [(NSArray *)self->_sagaIDs subarraysOfSize:100];
    v63 = 0u;
    v64 = 0u;
    v62 = 0u;
    obj = v61 = 0u;
    v39 = [obj countByEnumeratingWithState:&v61 objects:v74 count:16];
    if (v39)
    {
      v38 = *v62;
      v44 = ML3TrackPropertyStoreSagaID;
      v40 = ML3TrackPropertyLyrics;
      while (2)
      {
        v9 = 0;
        do
        {
          if (*v62 != v38)
          {
            v10 = v9;
            objc_enumerationMutation(obj);
            v9 = v10;
          }

          v41 = v9;
          v47 = +[ICBulkLyricsInfoRequest requestWithDatabaseID:itemIDs:useLongIDs:](ICBulkLyricsInfoRequest, "requestWithDatabaseID:itemIDs:useLongIDs:", [v43 databaseID], *(*(&v61 + 1) + 8 * v9), 0);
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v71 = sub_1000BD7E8;
          v72 = sub_1000BD7F8;
          v73 = 0;
          v11 = dispatch_semaphore_create(0);
          v58[0] = _NSConcreteStackBlock;
          v58[1] = 3221225472;
          v58[2] = sub_1000BD800;
          v58[3] = &unk_1001DF8A8;
          v60 = buf;
          v12 = v11;
          v59 = v12;
          [v43 sendRequest:v47 withResponseHandler:v58];
          dispatch_semaphore_wait(v12, 0xFFFFFFFFFFFFFFFFLL);
          v42 = v12;
          if (([(SagaLoadLyricsOperation *)self isCancelled]& 1) != 0)
          {

            _Block_object_dispose(buf, 8);
            goto LABEL_42;
          }

          v46 = [*(*&buf[8] + 40) lyricsInfoDictionaries];
          if (v46)
          {
            v13 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              v14 = [v46 count];
              *v65 = 134217984;
              v66 = v14;
              _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "[Bulk] Received %lu lyrics info dictionaries", v65, 0xCu);
            }

            v56 = 0u;
            v57 = 0u;
            v54 = 0u;
            v55 = 0u;
            v48 = v46;
            v15 = [v48 countByEnumeratingWithState:&v54 objects:v69 count:16];
            if (v15)
            {
              v50 = *v55;
LABEL_17:
              v16 = 0;
              v51 = v15;
              while (1)
              {
                if (*v55 != v50)
                {
                  objc_enumerationMutation(v48);
                }

                v17 = *(*(&v54 + 1) + 8 * v16);
                v18 = objc_autoreleasePoolPush();
                v19 = [(SagaLoadLyricsOperation *)self isCancelled];
                if ((v19 & 1) == 0)
                {
                  v20 = [v17 objectForKey:@"dmap.itemid"];
                  v21 = [v20 longLongValue];

                  v49 = [v17 objectForKey:@"dmap.dictionary"];
                  v22 = [v49 objectForKey:@"text-url"];
                  v23 = [NSURL URLWithString:v22];
                  v24 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
                  if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
                  {
                    *v65 = 138543362;
                    v66 = v23;
                    _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_DEFAULT, "[Bulk] Loading lyrics from URL '%{public}@'...", v65, 0xCu);
                  }

                  v53 = 0;
                  v25 = [NSString stringWithContentsOfURL:v23 encoding:4 error:&v53];
                  v26 = v53;
                  if (v26)
                  {
                    v27 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
                    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                    {
                      *v65 = 138543618;
                      v66 = v23;
                      v67 = 2114;
                      v68 = v26;
                      _os_log_impl(&_mh_execute_header, v27, OS_LOG_TYPE_ERROR, "[Bulk] Error getting lyrics from %{public}@: %{public}@", v65, 0x16u);
                    }
                  }

                  else
                  {
                    v28 = [ML3ComparisonPredicate predicateWithProperty:v44 equalToInt64:v21];
                    v27 = [ML3Track anyInLibrary:v45 predicate:v28];

                    v29 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
                    v30 = v29;
                    if (v27)
                    {
                      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
                      {
                        v31 = [v25 length];
                        *v65 = 134218240;
                        v66 = v31;
                        v67 = 2048;
                        v68 = v21;
                        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEFAULT, "[Bulk] Setting lyrics of length: %lu on track with saga ID %lld", v65, 0x16u);
                      }

                      [v27 setValue:v25 forProperty:v40];
                    }

                    else
                    {
                      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
                      {
                        *v65 = 134217984;
                        v66 = v21;
                        _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_ERROR, "[Bulk] No track found for saga ID %lld when attempting to set lyrics.", v65, 0xCu);
                      }

                      v27 = 0;
                    }
                  }
                }

                objc_autoreleasePoolPop(v18);
                if (v19)
                {
                  break;
                }

                if (v51 == ++v16)
                {
                  v15 = [v48 countByEnumeratingWithState:&v54 objects:v69 count:16];
                  if (v15)
                  {
                    goto LABEL_17;
                  }

                  break;
                }
              }
            }
          }

          _Block_object_dispose(buf, 8);
          v9 = v41 + 1;
        }

        while ((v41 + 1) != v39);
        v39 = [obj countByEnumeratingWithState:&v61 objects:v74 count:16];
        if (v39)
        {
          continue;
        }

        break;
      }
    }

LABEL_42:

    v32 = os_log_create("com.apple.amp.itunescloudd", "CloudSync");
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v32, OS_LOG_TYPE_DEFAULT, "Releasing power assertion: com.apple.itunescloudd.SagaLoadLyricsOperation", buf, 2u);
    }

    CPSetPowerAssertionWithIdentifier();
    v33 = [(CloudLibraryOperation *)self musicLibrary];
    v34 = MSVTCCIdentityForCurrentProcess();
    [v33 setClientIdentity:v34];

    [(CloudLibraryOperation *)self setStatus:1];
    [v35 endTransaction];
  }
}

- (SagaLoadLyricsOperation)initWithConfiguration:(id)a3 clientIdentity:(id)a4 sagaIDs:(id)a5
{
  v9 = a5;
  v13.receiver = self;
  v13.super_class = SagaLoadLyricsOperation;
  v10 = [(CloudLibraryOperation *)&v13 initWithConfiguration:a3 clientIdentity:a4];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_sagaIDs, a5);
  }

  return v11;
}

@end