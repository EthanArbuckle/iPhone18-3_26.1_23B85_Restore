@interface DetermineArtistStoreIDLookupTypeOperation
- (void)main;
@end

@implementation DetermineArtistStoreIDLookupTypeOperation

- (void)main
{
  v2 = dispatch_semaphore_create(0);
  v60 = 0;
  v61 = &v60;
  v62 = 0x3032000000;
  v63 = sub_10006FB34;
  v64 = sub_10006FB44;
  v65 = 0;
  v3 = [ICStoreRequestContext alloc];
  v4 = [(QueueAwareOperation *)self userIdentity];
  v55 = [v3 initWithIdentity:v4];

  v5 = +[ICURLBagProvider sharedBagProvider];
  v57[0] = _NSConcreteStackBlock;
  v57[1] = 3221225472;
  v57[2] = sub_100071AA8;
  v57[3] = &unk_1001DBEB0;
  v59 = &v60;
  dsema = v2;
  v58 = dsema;
  [v5 getBagForRequestContext:v55 withCompletionHandler:v57];

  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  if ([(DetermineArtistStoreIDLookupTypeOperation *)self isCancelled])
  {
    v6 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v7 = "Cancelled after loading URL bag";
LABEL_15:
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
      goto LABEL_61;
    }

    goto LABEL_61;
  }

  v8 = v61[5];
  if (v8)
  {
    v9 = [v8 dictionaryForBagKey:ICURLBagKeyLibraryMatchRules];
    v52 = v9;
    if (!_NSIsNSDictionary())
    {
      v14 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v53 = 0;
LABEL_47:
      v25 = [(QueueAwareOperation *)self operationQueue];
      if (v25)
      {
        if (v53)
        {
          v26 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v71 = v51;
            _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_DEFAULT, "Updating artist store IDs using the bulk artist name lookup service (batch size = %@)", buf, 0xCu);
          }

          v27 = [UpdateArtistStoreIDsByBulkLibraryMatchLookupOperation alloc];
          v28 = [(QueueAwareOperation *)self artworkImporter];
          v29 = [(QueueAwareOperation *)self clientIdentity];
          v30 = [(QueueAwareOperation *)self artistPersistentIDsToUpdate];
          v31 = [(QueueAwareOperation *)self albumArtistPersistentIDsToUpdate];
          v32 = [(QueueAwareOperation *)v27 initWithArtworkImporter:v28 clientIdentity:v29 operationQueue:v25 artistPersistentIDsToUpdate:v30 albumArtistPersistentIDsToUpdate:v31];

          [(UpdateArtistStoreIDsByBulkLibraryMatchLookupOperation *)v32 setBulkArtistNameLibraryMatchURL:v53];
          [(UpdateArtistStoreIDsByBulkLibraryMatchLookupOperation *)v32 setBulkArtistNameLibraryMatchBatchSize:v51];
          [v25 addOperation:v32];
        }

        else
        {
          v33 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
          v34 = os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT);
          if (v49)
          {
            if (v34)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Updating artist store IDs using the allArtistImagesMap", buf, 2u);
            }

            v35 = [UpdateArtistStoreIDsByMapOperation alloc];
            v36 = [(QueueAwareOperation *)self artworkImporter];
            v37 = [(QueueAwareOperation *)self clientIdentity];
            v38 = [(QueueAwareOperation *)self artistPersistentIDsToUpdate];
            v39 = [(QueueAwareOperation *)self albumArtistPersistentIDsToUpdate];
            v32 = [(QueueAwareOperation *)v35 initWithArtworkImporter:v36 clientIdentity:v37 operationQueue:v25 artistPersistentIDsToUpdate:v38 albumArtistPersistentIDsToUpdate:v39];

            [(UpdateArtistStoreIDsByBulkLibraryMatchLookupOperation *)v32 setUpdateIntervalSeconds:v50];
            [(UpdateArtistStoreIDsByBulkLibraryMatchLookupOperation *)v32 setAllArtistImagesMapURL:v49];
            [(UpdateArtistStoreIDsByBulkLibraryMatchLookupOperation *)v32 setArtistNameLibraryMatchURL:v14];
            [v25 addOperation:v32];
          }

          else
          {
            if (v34)
            {
              *buf = 0;
              _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_DEFAULT, "Updating artist store IDs using the single artist name lookup service", buf, 2u);
            }

            v40 = [UpdateArtistStoreIDsByLibraryMatchLookupOperation alloc];
            v41 = [(QueueAwareOperation *)self artworkImporter];
            v42 = [(QueueAwareOperation *)self clientIdentity];
            v43 = [(QueueAwareOperation *)self artistPersistentIDsToUpdate];
            v44 = [(QueueAwareOperation *)self albumArtistPersistentIDsToUpdate];
            v32 = [(QueueAwareOperation *)v40 initWithArtworkImporter:v41 clientIdentity:v42 operationQueue:v25 artistPersistentIDsToUpdate:v43 albumArtistPersistentIDsToUpdate:v44];

            [(UpdateArtistStoreIDsByBulkLibraryMatchLookupOperation *)v32 setArtistNameLibraryMatchURL:v14];
            [v25 addOperation:v32];
          }
        }
      }

      v6 = v53;
      goto LABEL_61;
    }

    v10 = [v9 objectForKeyedSubscript:@"artist-image-match-bulk-url"];
    v46 = v10;
    if (_NSIsNSDictionary())
    {
      v11 = [v10 objectForKeyedSubscript:@"url"];
      if (_NSIsNSString() && [v11 length])
      {
        v12 = [NSURL URLWithString:v11];
        v51 = [v10 objectForKeyedSubscript:@"an-batch-size"];
        v53 = v12;
        if (!v51)
        {
          v13 = sub_100102724();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v71 = 100;
            _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_DEFAULT, "'an-batch-size' was not in the bag, defaulting to batches of %lld.", buf, 0xCu);
          }

          v51 = &off_1001ED330;
        }
      }

      else
      {
        v51 = 0;
        v53 = 0;
      }
    }

    else
    {
      v51 = 0;
      v53 = 0;
    }

    v48 = [v9 objectForKeyedSubscript:@"all-artist-images-map-url"];
    if ([v48 length])
    {
      v49 = [NSURL URLWithString:v48];
      v50 = [v9 objectForKeyedSubscript:@"update-interval-seconds"];
      if (!v50)
      {
        v15 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v71 = 604800;
          _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_DEFAULT, "'update-interval-seconds' was not in the bag, defaulting to %lld seconds.", buf, 0xCu);
        }

        v50 = &off_1001ED348;
      }
    }

    else
    {
      v49 = 0;
      v50 = 0;
    }

    v45 = v9;
    v47 = [v45 objectForKeyedSubscript:@"artist"];
    if (_NSIsNSArray())
    {
      v68 = 0u;
      v69 = 0u;
      v66 = 0u;
      v67 = 0u;
      v16 = v47;
      v17 = [v16 countByEnumeratingWithState:&v66 objects:buf count:16];
      if (v17)
      {
        v18 = 0;
        v19 = *v67;
        do
        {
          for (i = 0; i != v17; i = i + 1)
          {
            if (*v67 != v19)
            {
              objc_enumerationMutation(v16);
            }

            v21 = *(*(&v66 + 1) + 8 * i);
            if (_NSIsNSDictionary())
            {
              v22 = [v21 objectForKeyedSubscript:@"required-fields"];
              if (_NSIsNSArray() && [v22 containsObject:@"an"])
              {
                v23 = [v21 objectForKeyedSubscript:@"url"];

                if (_NSIsNSString())
                {
                  v18 = v23;
                }

                else
                {

                  v18 = 0;
                }
              }
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v66 objects:buf count:16];
        }

        while (v17);

        if (v18)
        {
          v24 = [NSURL URLWithString:v18];
LABEL_46:
          v14 = v24;

          goto LABEL_47;
        }

LABEL_45:
        v24 = 0;
        goto LABEL_46;
      }
    }

    v18 = 0;
    goto LABEL_45;
  }

  v6 = os_log_create("com.apple.amp.itunescloudd", "Artwork");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v7 = "Failed to load URL bag, skipping artist hero image update";
    goto LABEL_15;
  }

LABEL_61:

  _Block_object_dispose(&v60, 8);
}

@end