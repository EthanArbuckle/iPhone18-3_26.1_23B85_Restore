@interface DownloadArtistHeroImagesOperation
- (void)main;
@end

@implementation DownloadArtistHeroImagesOperation

- (void)main
{
  v3 = [(QueueAwareOperation *)self musicLibrary];
  +[NSMutableDictionary dictionary];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_100073A90;
  v4 = v30[3] = &unk_1001DCC68;
  v31 = v4;
  [v3 databaseConnectionAllowingWrites:0 withBlock:v30];
  v5 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 count];
    LODWORD(buf) = 134217984;
    *(&buf + 4) = v6;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Found %lu artist artwork tokens to download", &buf, 0xCu);
  }

  v7 = +[NSMutableArray array];
  v32 = 0;
  v33 = &v32;
  v34 = 0x2050000000;
  v8 = qword_100213C68;
  v35 = qword_100213C68;
  if (!qword_100213C68)
  {
    *&buf = _NSConcreteStackBlock;
    *(&buf + 1) = 3221225472;
    v37 = sub_100073BD8;
    v38 = &unk_1001DF318;
    v39 = &v32;
    sub_100073BD8(&buf);
    v8 = v33[3];
  }

  v9 = v8;
  _Block_object_dispose(&v32, 8);
  v10 = [(QueueAwareOperation *)self userIdentity];
  v24 = [v8 deviceMediaLibraryWithUserIdentity:v10];

  v11 = [v24 artworkDataSource];
  [v11 setUsesFallbackCache:0];

  v12 = +[ICCloudAvailabilityController sharedController];
  LOBYTE(v10) = [v12 isCellularDataRestrictedForMusic];

  v25[0] = _NSConcreteStackBlock;
  v25[1] = 3221225472;
  v25[2] = sub_100073DC4;
  v25[3] = &unk_1001DBFF0;
  v13 = v3;
  v26 = v13;
  v27 = self;
  v29 = v10 ^ 1;
  v14 = v7;
  v28 = v14;
  [v4 enumerateKeysAndObjectsUsingBlock:v25];
  if ([(DownloadArtistHeroImagesOperation *)self isCancelled])
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "Cancelled after starting downloads for artist hero images.", &buf, 2u);
    }
  }

  else
  {
    if ([v14 count])
    {
      v16 = [(QueueAwareOperation *)self artworkImporter];
      [v16 importCloudArtworkForRequests:v14];
    }

    v17 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Enqueued all artist hero images to download.", &buf, 2u);
    }

    v15 = [(QueueAwareOperation *)self operationQueue];
    if (v15)
    {
      v18 = [FinishArtistHeroUpdateOperation alloc];
      v19 = [(QueueAwareOperation *)self artworkImporter];
      v20 = [(QueueAwareOperation *)self clientIdentity];
      v21 = [(QueueAwareOperation *)self artistPersistentIDsToUpdate];
      v22 = [(QueueAwareOperation *)self albumArtistPersistentIDsToUpdate];
      v23 = [(QueueAwareOperation *)v18 initWithArtworkImporter:v19 clientIdentity:v20 operationQueue:v15 artistPersistentIDsToUpdate:v21 albumArtistPersistentIDsToUpdate:v22];

      [(FinishArtistHeroUpdateOperation *)v23 setCurrentDatabaseRevision:[(DownloadArtistHeroImagesOperation *)self currentDatabaseRevision]];
      [v15 addOperation:v23];
    }
  }
}

@end