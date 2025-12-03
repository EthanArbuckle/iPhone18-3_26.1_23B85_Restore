@interface UpdateArtistStoreIDsByBulkLibraryMatchLookupOperation
- (void)main;
@end

@implementation UpdateArtistStoreIDsByBulkLibraryMatchLookupOperation

- (void)main
{
  bulkArtistNameLibraryMatchURL = [(UpdateArtistStoreIDsByBulkLibraryMatchLookupOperation *)self bulkArtistNameLibraryMatchURL];

  if (bulkArtistNameLibraryMatchURL)
  {
    shouldProcessSpecificArtists = [(QueueAwareOperation *)self shouldProcessSpecificArtists];
    musicLibrary = [(QueueAwareOperation *)self musicLibrary];
    v6 = musicLibrary;
    if (shouldProcessSpecificArtists)
    {
      artistPersistentIDsToUpdate = [(QueueAwareOperation *)self artistPersistentIDsToUpdate];
      albumArtistPersistentIDsToUpdate = [(QueueAwareOperation *)self albumArtistPersistentIDsToUpdate];
      v9 = sub_100071E04(v6, artistPersistentIDsToUpdate, albumArtistPersistentIDsToUpdate);
    }

    else
    {
      v9 = sub_100072108(musicLibrary);
    }

    v10 = [ICStoreRequestContext alloc];
    userIdentity = [(QueueAwareOperation *)self userIdentity];
    v12 = [v10 initWithIdentity:userIdentity];

    v13 = +[NSCharacterSet URLQueryAllowedCharacterSet];
    v14 = [v13 mutableCopy];

    [v14 removeCharactersInString:@"+?"];
    bulkArtistNameLibraryMatchBatchSize = [(UpdateArtistStoreIDsByBulkLibraryMatchLookupOperation *)self bulkArtistNameLibraryMatchBatchSize];
    integerValue = [bulkArtistNameLibraryMatchBatchSize integerValue];

    v17 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v33 = [v9 count];
      v34 = 2048;
      v35 = integerValue;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_DEFAULT, "Batching %lu library match requests in to chunks of size %ld.", buf, 0x16u);
    }

    allObjects = [v9 allObjects];
    v19 = [allObjects subarraysOfSize:integerValue];

    v29[0] = _NSConcreteStackBlock;
    v29[1] = 3221225472;
    v29[2] = sub_1000773FC;
    v29[3] = &unk_1001DBF00;
    v29[4] = self;
    v20 = v14;
    v30 = v20;
    v21 = v12;
    v31 = v21;
    [v19 enumerateObjectsUsingBlock:v29];
    if ([(UpdateArtistStoreIDsByBulkLibraryMatchLookupOperation *)self isCancelled])
    {
      operationQueue = os_log_create("com.apple.amp.itunescloudd", "Artwork");
      if (os_log_type_enabled(operationQueue, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, operationQueue, OS_LOG_TYPE_DEFAULT, "Cancelled after looking up artist store ids by name.", buf, 2u);
      }
    }

    else
    {
      operationQueue = [(QueueAwareOperation *)self operationQueue];
      if (operationQueue)
      {
        v23 = [UpdateArtistArtworkTokensOperation alloc];
        artworkImporter = [(QueueAwareOperation *)self artworkImporter];
        clientIdentity = [(QueueAwareOperation *)self clientIdentity];
        artistPersistentIDsToUpdate2 = [(QueueAwareOperation *)self artistPersistentIDsToUpdate];
        albumArtistPersistentIDsToUpdate2 = [(QueueAwareOperation *)self albumArtistPersistentIDsToUpdate];
        v28 = [(QueueAwareOperation *)v23 initWithArtworkImporter:artworkImporter clientIdentity:clientIdentity operationQueue:operationQueue artistPersistentIDsToUpdate:artistPersistentIDsToUpdate2 albumArtistPersistentIDsToUpdate:albumArtistPersistentIDsToUpdate2];

        [operationQueue addOperation:v28];
      }
    }
  }

  else
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to resolve bulk artist name lookup URL from the library match rules bag, skipping artist hero image upate.", buf, 2u);
    }
  }
}

@end