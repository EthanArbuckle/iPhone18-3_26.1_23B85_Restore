@interface UpdateArtistStoreIDsByMapOperation
- (id)_fetchAndCacheLatestAllArtistImagesMap;
- (id)_latestAllArtistImagesMap;
- (void)_updateAllArtistStoreIDsUsingAllArtistImagesMap:(id)a3;
- (void)_updateSpecificArtistStoreIDsUsingAllArtistImagesMap:(id)a3;
- (void)main;
@end

@implementation UpdateArtistStoreIDsByMapOperation

- (void)_updateAllArtistStoreIDsUsingAllArtistImagesMap:(id)a3
{
  v4 = a3;
  v5 = [(QueueAwareOperation *)self musicLibrary];
  v6 = sub_1000755D8(v5);

  v7 = [(QueueAwareOperation *)self musicLibrary];
  v8 = sub_1000756D0(v7);

  v21 = ML3ArtistPropertyName;
  v9 = [NSArray arrayWithObjects:&v21 count:1];
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_100075AD8;
  v17[3] = &unk_1001DE538;
  v10 = v4;
  v18 = v10;
  v19 = self;
  [v6 enumeratePersistentIDsAndProperties:v9 usingBlock:v17];

  if ([(UpdateArtistStoreIDsByMapOperation *)self isCancelled])
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Cancelled after updating artist store ids.", buf, 2u);
    }
  }

  else
  {
    v20 = ML3AlbumArtistPropertyName;
    v12 = [NSArray arrayWithObjects:&v20 count:1];
    v13[0] = _NSConcreteStackBlock;
    v13[1] = 3221225472;
    v13[2] = sub_100075BF0;
    v13[3] = &unk_1001DE538;
    v14 = v10;
    v15 = self;
    [v8 enumeratePersistentIDsAndProperties:v12 usingBlock:v13];

    v11 = v14;
  }
}

- (void)_updateSpecificArtistStoreIDsUsingAllArtistImagesMap:(id)a3
{
  v42 = a3;
  v43 = self;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v4 = [(QueueAwareOperation *)self artistPersistentIDsToUpdate];
  v5 = [v4 countByEnumeratingWithState:&v48 objects:v53 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v49;
    v8 = ML3ArtistPropertyStoreID;
    obj = ML3ArtistPropertyName;
    do
    {
      v9 = 0;
      v38 = v6;
      do
      {
        if (*v49 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v10 = [*(*(&v48 + 1) + 8 * v9) longLongValue];
        v11 = [(QueueAwareOperation *)v43 musicLibrary];
        v12 = [ML3Artist newWithPersistentID:v10 inLibrary:v11];

        v13 = [v12 valueForProperty:v8];
        v14 = [v13 longLongValue];

        if (!v14)
        {
          v15 = [v12 valueForProperty:obj];
          v16 = [v42 objectForKey:v15];
          if (v16)
          {
            [(QueueAwareOperation *)v43 musicLibrary];
            v17 = v7;
            v19 = v18 = v4;
            sub_100075ED8(v19, v10, v15, [v16 longLongValue]);

            v4 = v18;
            v7 = v17;
            v6 = v38;
          }
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [v4 countByEnumeratingWithState:&v48 objects:v53 count:16];
    }

    while (v6);
  }

  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  obja = [(QueueAwareOperation *)v43 albumArtistPersistentIDsToUpdate];
  v20 = [obja countByEnumeratingWithState:&v44 objects:v52 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v45;
    v23 = ML3AlbumArtistPropertyStoreID;
    v39 = ML3AlbumArtistPropertyName;
    v24 = ICPushNotificationMessage_ptr;
    do
    {
      v25 = 0;
      do
      {
        if (*v45 != v22)
        {
          objc_enumerationMutation(obja);
        }

        v26 = [*(*(&v44 + 1) + 8 * v25) longLongValue];
        v27 = v24[264];
        v28 = [(QueueAwareOperation *)v43 musicLibrary];
        v29 = [v27 newWithPersistentID:v26 inLibrary:v28];

        v30 = [v29 valueForProperty:v23];
        v31 = [v30 longLongValue];

        if (!v31)
        {
          v32 = v23;
          v33 = v22;
          v34 = v24;
          v35 = [v29 valueForProperty:v39];
          v36 = [v42 objectForKey:v35];
          if (v36)
          {
            v37 = [(QueueAwareOperation *)v43 musicLibrary];
            sub_100075D08(v37, v26, v35, [v36 longLongValue]);
          }

          v24 = v34;
          v22 = v33;
          v23 = v32;
        }

        v25 = v25 + 1;
      }

      while (v21 != v25);
      v21 = [obja countByEnumeratingWithState:&v44 objects:v52 count:16];
    }

    while (v21);
  }
}

- (id)_fetchAndCacheLatestAllArtistImagesMap
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Attempting to fetch latest all-artist-images-map", &buf, 2u);
  }

  v4 = [(UpdateArtistStoreIDsByMapOperation *)self allArtistImagesMapURL];

  v5 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = [(UpdateArtistStoreIDsByMapOperation *)self allArtistImagesMapURL];
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v7;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "all-artist-images-map-url: %{public}@", &buf, 0xCu);
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v37 = 0x3032000000;
    v38 = sub_10006FB34;
    v39 = sub_10006FB44;
    v40 = 0;
    v8 = [(UpdateArtistStoreIDsByMapOperation *)self allArtistImagesMapURL];
    v9 = [NSMutableURLRequest requestWithURL:v8];

    [v9 setTimeoutInterval:180.0];
    v10 = [ICStoreRequestContext alloc];
    v11 = [(QueueAwareOperation *)self userIdentity];
    v12 = [v10 initWithIdentity:v11];

    v13 = [[ICStoreURLRequest alloc] initWithURLRequest:v9 requestContext:v12];
    v14 = dispatch_semaphore_create(0);
    v15 = +[ICURLSessionManager defaultSession];
    v26 = _NSConcreteStackBlock;
    v27 = 3221225472;
    v28 = sub_1000768E4;
    v29 = &unk_1001DBF28;
    p_buf = &buf;
    v16 = v14;
    v30 = v16;
    [v15 enqueueDataRequest:v13 withCompletionHandler:&v26];

    v17 = dispatch_time(0, 300000000000);
    if (dispatch_semaphore_wait(v16, v17))
    {
      v18 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *v34 = 67109120;
        v35 = 300;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_DEFAULT, "Failed to receive response for all-artist-images-map after %d seconds, cancelling request", v34, 8u);
      }

      v19 = [ICURLSessionManager defaultSession:v26];
      [v19 cancelRequest:v13];
    }

    if (*(*(&buf + 1) + 40))
    {
      v32[0] = @"AllArtistImagesMapNextUpdateDateKey";
      v20 = +[NSDate date];
      v21 = [(UpdateArtistStoreIDsByMapOperation *)self updateIntervalSeconds];
      v22 = [v20 dateByAddingTimeInterval:{objc_msgSend(v21, "unsignedIntegerValue")}];
      v32[1] = @"AllArtistImagesMapDataDictionaryKey";
      v33[0] = v22;
      v33[1] = *(*(&buf + 1) + 40);
      v23 = [NSDictionary dictionaryWithObjects:v33 forKeys:v32 count:2];

      v24 = +[CloudArtistHeroImageImporter allArtistImagesMapCacheFilePathURL];
      [v23 writeToURL:v24 atomically:1];
    }

    else
    {
      v23 = 0;
    }

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    if (v6)
    {
      LOWORD(buf) = 0;
      _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Failed to get 'all-artist-images-map-url'. Cannot fetch map at this time.", &buf, 2u);
    }

    v23 = 0;
  }

  return v23;
}

- (id)_latestAllArtistImagesMap
{
  v3 = +[CloudArtistHeroImageImporter allArtistImagesMapCacheFilePathURL];
  v4 = [NSDictionary dictionaryWithContentsOfURL:v3];
  v5 = v4;
  if (!v4)
  {
    v11 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 67109120;
      LODWORD(v20) = 1;
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "allArtistImagesMap.plist (null) needsUpdate: %d", &v19, 8u);
    }

    goto LABEL_11;
  }

  v6 = [v4 objectForKey:@"AllArtistImagesMapNextUpdateDateKey"];
  v7 = +[NSDate date];
  v8 = v7;
  if (v6)
  {
    v9 = [v7 earlierDate:v6];
    v10 = v8 != v9;
  }

  else
  {
    v10 = 1;
  }

  v12 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    v13 = [v5 objectForKey:@"AllArtistImagesMapDataDictionaryKey"];
    v19 = 134218240;
    v20 = [v13 count];
    v21 = 1024;
    v22 = v10;
    _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "allArtistImagesMap.plist (count = %lu) needsUpdate: %d", &v19, 0x12u);
  }

  if (v10)
  {
LABEL_11:
    v14 = [(UpdateArtistStoreIDsByMapOperation *)self _fetchAndCacheLatestAllArtistImagesMap];
    v15 = v14;
    if (v14)
    {
      v16 = v14;

      v5 = v16;
    }
  }

  v17 = [v5 objectForKey:@"AllArtistImagesMapDataDictionaryKey"];

  return v17;
}

- (void)main
{
  v3 = [(UpdateArtistStoreIDsByMapOperation *)self _latestAllArtistImagesMap];
  if ([(UpdateArtistStoreIDsByMapOperation *)self isCancelled])
  {
    v4 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v21 = 0;
      v5 = "Cancelled after getting latest all artist image map data.";
      v6 = &v21;
LABEL_13:
      _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
      goto LABEL_14;
    }

    goto LABEL_14;
  }

  if (!v3)
  {
    v7 = [(QueueAwareOperation *)self operationQueue];
    if (v7)
    {
      v8 = [UpdateArtistStoreIDsByLibraryMatchLookupOperation alloc];
      v9 = [(QueueAwareOperation *)self artworkImporter];
      v10 = [(QueueAwareOperation *)self clientIdentity];
      v11 = [(QueueAwareOperation *)self artistPersistentIDsToUpdate];
      v12 = [(QueueAwareOperation *)self albumArtistPersistentIDsToUpdate];
      v13 = [(QueueAwareOperation *)v8 initWithArtworkImporter:v9 clientIdentity:v10 operationQueue:v7 artistPersistentIDsToUpdate:v11 albumArtistPersistentIDsToUpdate:v12];

      v14 = [(UpdateArtistStoreIDsByMapOperation *)self artistNameLibraryMatchURL];
      [(UpdateArtistStoreIDsByLibraryMatchLookupOperation *)v13 setArtistNameLibraryMatchURL:v14];

LABEL_17:
      [v7 addOperation:v13];
    }

LABEL_18:

    goto LABEL_19;
  }

  if ([(QueueAwareOperation *)self shouldProcessSpecificArtists])
  {
    [(UpdateArtistStoreIDsByMapOperation *)self _updateSpecificArtistStoreIDsUsingAllArtistImagesMap:v3];
  }

  else
  {
    [(UpdateArtistStoreIDsByMapOperation *)self _updateAllArtistStoreIDsUsingAllArtistImagesMap:v3];
  }

  if (![(UpdateArtistStoreIDsByMapOperation *)self isCancelled])
  {
    v7 = [(QueueAwareOperation *)self operationQueue];
    if (v7)
    {
      v15 = [UpdateArtistArtworkTokensOperation alloc];
      v16 = [(QueueAwareOperation *)self artworkImporter];
      v17 = [(QueueAwareOperation *)self clientIdentity];
      v18 = [(QueueAwareOperation *)self artistPersistentIDsToUpdate];
      v19 = [(QueueAwareOperation *)self albumArtistPersistentIDsToUpdate];
      v13 = [(QueueAwareOperation *)v15 initWithArtworkImporter:v16 clientIdentity:v17 operationQueue:v7 artistPersistentIDsToUpdate:v18 albumArtistPersistentIDsToUpdate:v19];

      goto LABEL_17;
    }

    goto LABEL_18;
  }

  v4 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 0;
    v5 = "Cancelled after updating album_artist store ids.";
    v6 = &v20;
    goto LABEL_13;
  }

LABEL_14:

LABEL_19:
}

@end