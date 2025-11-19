@interface UpdateArtistArtworkTokensOperation
- (id)_imageURLFromArtworkInfo:(id)a3;
- (void)_addAllStoreArtistIDsToSet:(id)a3;
- (void)_addSpecificStoreArtistIDsToSet:(id)a3;
- (void)main;
@end

@implementation UpdateArtistArtworkTokensOperation

- (id)_imageURLFromArtworkInfo:(id)a3
{
  v3 = a3;
  v4 = [[ICStoreArtworkInfo alloc] initWithArtworkResponseDictionary:v3];

  MSVGetMaximumScreenSize();
  v6 = v5;
  v8 = v7;
  v9 = [v4 sizeInfo];
  [v9 maxSupportedSize];
  v11 = v10;
  v13 = v12;

  if (v11 != CGSizeZero.width || v13 != CGSizeZero.height)
  {
    MSVImageUtilitiesMakeBoundingBoxSize();
    v6 = v15;
    v8 = v16;
  }

  v17 = [v4 artworkURLWithSize:ICStoreArtworkInfoCropStyleSpecificRectangle cropStyle:ICStoreArtworkInfoImageFormatJPEG format:MSVDeviceSupportsExtendedColorDisplay() preferP3ColorSpace:{v6, v8}];

  return v17;
}

- (void)_addAllStoreArtistIDsToSet:(id)a3
{
  v4 = a3;
  v5 = [(QueueAwareOperation *)self musicLibrary];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10007279C;
  v7[3] = &unk_1001DCC68;
  v8 = v4;
  v6 = v4;
  [v5 databaseConnectionAllowingWrites:0 withBlock:v7];
}

- (void)_addSpecificStoreArtistIDsToSet:(id)a3
{
  v4 = a3;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = [(QueueAwareOperation *)self artistPersistentIDsToUpdate];
  v5 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v30;
    v8 = ML3ArtistPropertyStoreID;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v7)
        {
          objc_enumerationMutation(obj);
        }

        v10 = [*(*(&v29 + 1) + 8 * v9) longLongValue];
        v11 = [(QueueAwareOperation *)self musicLibrary];
        v12 = [ML3Artist newWithPersistentID:v10 inLibrary:v11];

        v13 = [v12 valueForProperty:v8];
        if ([v13 longLongValue])
        {
          [v4 addObject:v13];
        }

        v9 = v9 + 1;
      }

      while (v6 != v9);
      v6 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v6);
  }

  v27 = 0u;
  v28 = 0u;
  v25 = 0u;
  v26 = 0u;
  obja = [(QueueAwareOperation *)self albumArtistPersistentIDsToUpdate];
  v14 = [obja countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v26;
    v17 = ML3AlbumArtistPropertyStoreID;
    do
    {
      v18 = 0;
      do
      {
        if (*v26 != v16)
        {
          objc_enumerationMutation(obja);
        }

        v19 = [*(*(&v25 + 1) + 8 * v18) longLongValue];
        v20 = [(QueueAwareOperation *)self musicLibrary];
        v21 = [ML3AlbumArtist newWithPersistentID:v19 inLibrary:v20];

        v22 = [v21 valueForProperty:v17];
        if ([v22 longLongValue])
        {
          [v4 addObject:v22];
        }

        v18 = v18 + 1;
      }

      while (v15 != v18);
      v15 = [obja countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v15);
  }
}

- (void)main
{
  v3 = [(QueueAwareOperation *)self musicLibrary];
  v4 = [v3 currentRevision];

  v5 = objc_alloc_init(NSMutableSet);
  if ([(QueueAwareOperation *)self shouldProcessSpecificArtists])
  {
    [(UpdateArtistArtworkTokensOperation *)self _addSpecificStoreArtistIDsToSet:v5];
  }

  else
  {
    [(UpdateArtistArtworkTokensOperation *)self _addAllStoreArtistIDsToSet:v5];
  }

  if ([(UpdateArtistArtworkTokensOperation *)self isCancelled])
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Cancelled after gathering artist artwork tokens.", buf, 2u);
    }
  }

  else
  {
    v7 = [[NSMutableDictionary alloc] initWithCapacity:{objc_msgSend(v5, "count")}];
    v8 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v31 = [v5 count];
      v32 = 1024;
      v33 = 100;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Batching %lu lookup requests in to chunks of size %d.", buf, 0x12u);
    }

    v9 = [v5 allObjects];
    v10 = [v9 subarraysOfSize:100];

    v28[0] = _NSConcreteStackBlock;
    v28[1] = 3221225472;
    v28[2] = sub_1000730C8;
    v28[3] = &unk_1001DBFA0;
    v28[4] = self;
    v6 = v7;
    v29 = v6;
    [v10 enumerateObjectsUsingBlock:v28];
    if ([(UpdateArtistArtworkTokensOperation *)self isCancelled])
    {
      v11 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Cancelled after looking up artist hero image URLs.", buf, 2u);
      }
    }

    else
    {
      v12 = [(QueueAwareOperation *)self musicLibrary];
      v24[0] = _NSConcreteStackBlock;
      v24[1] = 3221225472;
      v24[2] = sub_100073514;
      v24[3] = &unk_1001DF3A0;
      v25 = v5;
      v26 = self;
      v27 = v6;
      [v12 performDatabaseTransactionWithBlock:v24];

      if ([(UpdateArtistArtworkTokensOperation *)self isCancelled])
      {
        v13 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "Cancelled after updating artist artwork tokens.", buf, 2u);
        }
      }

      else
      {
        v13 = [(QueueAwareOperation *)self operationQueue];
        if (v13)
        {
          v14 = +[ICDeviceInfo currentDeviceInfo];
          if ([v14 isWatch])
          {

            v15 = &off_1001D8AF0;
          }

          else
          {
            v16 = +[ICDeviceInfo currentDeviceInfo];
            v17 = [v16 isAppleTV];

            v15 = off_1001D8AE8;
            if (v17)
            {
              v15 = &off_1001D8AF0;
            }
          }

          v18 = objc_alloc(*v15);
          v19 = [(QueueAwareOperation *)self artworkImporter];
          v20 = [(QueueAwareOperation *)self clientIdentity];
          v21 = [(QueueAwareOperation *)self artistPersistentIDsToUpdate];
          v22 = [(QueueAwareOperation *)self albumArtistPersistentIDsToUpdate];
          v23 = [v18 initWithArtworkImporter:v19 clientIdentity:v20 operationQueue:v13 artistPersistentIDsToUpdate:v21 albumArtistPersistentIDsToUpdate:v22];

          [v23 setCurrentDatabaseRevision:v4];
          [v13 addOperation:v23];
        }
      }

      v11 = v25;
    }
  }
}

@end