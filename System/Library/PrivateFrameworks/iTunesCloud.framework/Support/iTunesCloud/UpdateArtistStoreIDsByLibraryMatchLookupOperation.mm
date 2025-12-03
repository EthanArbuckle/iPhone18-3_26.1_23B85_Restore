@interface UpdateArtistStoreIDsByLibraryMatchLookupOperation
- (void)main;
@end

@implementation UpdateArtistStoreIDsByLibraryMatchLookupOperation

- (void)main
{
  artistNameLibraryMatchURL = [(UpdateArtistStoreIDsByLibraryMatchLookupOperation *)self artistNameLibraryMatchURL];

  if (artistNameLibraryMatchURL)
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

    v21 = _NSConcreteStackBlock;
    v22 = 3221225472;
    v23 = sub_1000722F0;
    v24 = &unk_1001DBF50;
    selfCopy = self;
    v13 = v12;
    v26 = v13;
    [v9 enumerateObjectsUsingBlock:&v21];
    if ([(UpdateArtistStoreIDsByLibraryMatchLookupOperation *)self isCancelled:v21])
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
        v15 = [UpdateArtistArtworkTokensOperation alloc];
        artworkImporter = [(QueueAwareOperation *)self artworkImporter];
        clientIdentity = [(QueueAwareOperation *)self clientIdentity];
        artistPersistentIDsToUpdate2 = [(QueueAwareOperation *)self artistPersistentIDsToUpdate];
        albumArtistPersistentIDsToUpdate2 = [(QueueAwareOperation *)self albumArtistPersistentIDsToUpdate];
        v20 = [(QueueAwareOperation *)v15 initWithArtworkImporter:artworkImporter clientIdentity:clientIdentity operationQueue:operationQueue artistPersistentIDsToUpdate:artistPersistentIDsToUpdate2 albumArtistPersistentIDsToUpdate:albumArtistPersistentIDsToUpdate2];

        [operationQueue addOperation:v20];
      }
    }
  }

  else
  {
    v9 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "Failed to resolve an artist name lookup URL from the library match rules bag, skipping artist hero image upate.", buf, 2u);
    }
  }
}

@end