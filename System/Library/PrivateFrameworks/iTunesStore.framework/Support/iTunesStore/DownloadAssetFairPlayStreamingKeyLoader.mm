@interface DownloadAssetFairPlayStreamingKeyLoader
- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource;
- (DownloadAssetFairPlayStreamingKeyLoader)initWithDownloadEntity:(id)entity;
- (DownloadAssetFairPlayStreamingKeyLoaderDelegate)delegate;
- (id)_pastisCertificateURL;
- (id)_pastisKeyServerURL;
- (id)_track;
- (void)_persistKeys;
- (void)_persistURI:(id)i persistentContentKey:(id)key;
- (void)persistKeys;
@end

@implementation DownloadAssetFairPlayStreamingKeyLoader

- (DownloadAssetFairPlayStreamingKeyLoader)initWithDownloadEntity:(id)entity
{
  entityCopy = entity;
  v17.receiver = self;
  v17.super_class = DownloadAssetFairPlayStreamingKeyLoader;
  v5 = [(DownloadAssetFairPlayStreamingKeyLoader *)&v17 init];
  if (v5)
  {
    v6 = dispatch_queue_create("com.apple.itunesstore.PipelineDownloadTaskState", 0);
    resourceLoaderQueue = v5->_resourceLoaderQueue;
    v5->_resourceLoaderQueue = v6;

    v8 = dispatch_queue_create("com.apple.itunesstore.PipelineDownloadTaskState.persistKeys", 0);
    persistenceQueue = v5->_persistenceQueue;
    v5->_persistenceQueue = v8;

    v10 = [[NSMutableDictionary alloc] initWithCapacity:3];
    mutableCachedKeys = v5->_mutableCachedKeys;
    v5->_mutableCachedKeys = v10;

    if (entityCopy)
    {
      v12 = [entityCopy valueForProperty:@"rental_id"];
      v5->_rentalIdentifier = [v12 integerValue];

      v13 = [entityCopy valueForProperty:@"store_item_id"];
      v5->_storeItemIdentifier = [v13 integerValue];

      v5->_downloadIdentifier = [entityCopy persistentID];
      copyDownloadingIPodLibraryItem = [entityCopy copyDownloadingIPodLibraryItem];
      libraryItem = v5->_libraryItem;
      v5->_libraryItem = copyDownloadingIPodLibraryItem;
    }
  }

  return v5;
}

- (void)persistKeys
{
  persistenceQueue = self->_persistenceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100115CA0;
  block[3] = &unk_100327110;
  block[4] = self;
  dispatch_barrier_sync(persistenceQueue, block);
}

- (BOOL)resourceLoader:(id)loader shouldWaitForLoadingOfRequestedResource:(id)resource
{
  resourceCopy = resource;
  if (SSVAssetResourceLoadingRequestContainsSecureKeyDeliveryRequest())
  {
    _pastisCertificateURL = [(DownloadAssetFairPlayStreamingKeyLoader *)self _pastisCertificateURL];
    if (_pastisCertificateURL)
    {
      _pastisKeyServerURL = [(DownloadAssetFairPlayStreamingKeyLoader *)self _pastisKeyServerURL];
      v8 = _pastisKeyServerURL != 0;
      if (_pastisKeyServerURL)
      {
        v32 = _pastisCertificateURL;
        SSVAVFoundationFramework();
        v9 = SSVWeakLinkedStringConstantForString();
        SSVAVFoundationFramework();
        v10 = SSVWeakLinkedStringConstantForString();
        contentInformationRequest = [resourceCopy contentInformationRequest];
        v12 = contentInformationRequest;
        if (contentInformationRequest)
        {
          allowedContentTypes = [contentInformationRequest allowedContentTypes];
          v14 = [allowedContentTypes containsObject:v9];
        }

        else
        {
          v14 = 0;
        }

        objc_initWeak(location, self);
        v27 = dispatch_get_global_queue(0, 0);
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_100116120;
        block[3] = &unk_100328F70;
        objc_copyWeak(&v40, location);
        v41 = v14;
        v34 = resourceCopy;
        _pastisCertificateURL = v32;
        v35 = v32;
        v36 = _pastisKeyServerURL;
        selfCopy = self;
        v38 = v9;
        v39 = v10;
        v28 = v10;
        v29 = v9;
        dispatch_async(v27, block);

        objc_destroyWeak(&v40);
        objc_destroyWeak(location);
        goto LABEL_34;
      }

      v12 = +[SSLogConfig sharediTunesStoreConfig];
      if (!v12)
      {
        v12 = +[SSLogConfig sharedConfig];
      }

      shouldLog = [v12 shouldLog];
      if ([v12 shouldLogToDisk])
      {
        v22 = shouldLog | 2;
      }

      else
      {
        v22 = shouldLog;
      }

      oSLogObject = [v12 OSLogObject];
      if (os_log_type_enabled(oSLogObject, OS_LOG_TYPE_ERROR))
      {
        v24 = v22;
      }

      else
      {
        v24 = v22 & 2;
      }

      if (v24)
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = objc_opt_class();
        v25 = *(location + 4);
        LODWORD(v31) = 12;
        v26 = _os_log_send_and_compose_impl();

        if (!v26)
        {
LABEL_34:

          goto LABEL_35;
        }

        oSLogObject = [NSString stringWithCString:v26 encoding:4, location, v31];
        free(v26);
        SSFileLog();
      }

      goto LABEL_34;
    }

    _pastisKeyServerURL = +[SSLogConfig sharediTunesStoreConfig];
    if (!_pastisKeyServerURL)
    {
      _pastisKeyServerURL = +[SSLogConfig sharedConfig];
    }

    shouldLog2 = [_pastisKeyServerURL shouldLog];
    if ([_pastisKeyServerURL shouldLogToDisk])
    {
      v16 = shouldLog2 | 2;
    }

    else
    {
      v16 = shouldLog2;
    }

    oSLogObject2 = [_pastisKeyServerURL OSLogObject];
    if (os_log_type_enabled(oSLogObject2, OS_LOG_TYPE_ERROR))
    {
      v18 = v16;
    }

    else
    {
      v18 = v16 & 2;
    }

    if (v18)
    {
      LODWORD(location[0]) = 138412290;
      *(location + 4) = objc_opt_class();
      v19 = *(location + 4);
      LODWORD(v31) = 12;
      v20 = _os_log_send_and_compose_impl();

      if (!v20)
      {
LABEL_19:
        v8 = 0;
LABEL_35:

        goto LABEL_36;
      }

      oSLogObject2 = [NSString stringWithCString:v20 encoding:4, location, v31];
      free(v20);
      SSFileLog();
    }

    goto LABEL_19;
  }

  v8 = 0;
LABEL_36:

  return v8;
}

- (id)_pastisCertificateURL
{
  v2 = [SSURLBagContext contextWithBagType:0];
  v3 = [SSURLBag URLBagForContext:v2];
  v4 = [v3 valueForKey:@"fps-cert" error:0];
  if (v4)
  {
    v5 = [NSURL URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_pastisKeyServerURL
{
  v2 = [SSURLBagContext contextWithBagType:0];
  v3 = [SSURLBag URLBagForContext:v2];
  v4 = [v3 valueForKey:@"fps-request" error:0];
  if (v4)
  {
    v5 = [NSURL URLWithString:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_persistKeys
{
  _track = [(DownloadAssetFairPlayStreamingKeyLoader *)self _track];
  v4 = +[ML3MusicLibrary sharedLibrary];
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 3221225472;
  v6[2] = sub_100116B78;
  v6[3] = &unk_100328F98;
  v7 = _track;
  selfCopy = self;
  v5 = _track;
  [v4 performDatabaseTransactionWithBlock:v6];
}

- (void)_persistURI:(id)i persistentContentKey:(id)key
{
  iCopy = i;
  keyCopy = key;
  persistenceQueue = self->_persistenceQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100117324;
  block[3] = &unk_1003281A0;
  block[4] = self;
  v12 = keyCopy;
  v13 = iCopy;
  v9 = iCopy;
  v10 = keyCopy;
  dispatch_async(persistenceQueue, block);
}

- (id)_track
{
  v3 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStoreItemID equalToInt64:self->_storeItemIdentifier];
  v4 = +[ML3MusicLibrary sharedLibrary];
  v5 = [ML3Track anyInLibrary:v4 predicate:v3];

  if (!v5)
  {
    libraryItem = [(DownloadAssetFairPlayStreamingKeyLoader *)self libraryItem];
    v7 = +[SSLogConfig sharedDaemonConfig];
    if (!v7)
    {
      v7 = +[SSLogConfig sharedConfig];
    }

    shouldLog = [v7 shouldLog];
    if ([v7 shouldLogToDisk])
    {
      v9 = shouldLog | 2;
    }

    else
    {
      v9 = shouldLog;
    }

    oSLogObject = [v7 OSLogObject];
    if (!os_log_type_enabled(oSLogObject, OS_LOG_TYPE_INFO))
    {
      v9 &= 2u;
    }

    if (v9)
    {
      v11 = objc_opt_class();
      v12 = v11;
      [libraryItem itemMediaPath];
      v21 = 138412546;
      v22 = v11;
      v24 = v23 = 2112;
      LODWORD(v19) = 22;
      v13 = _os_log_send_and_compose_impl();

      if (!v13)
      {
        goto LABEL_13;
      }

      oSLogObject = [NSString stringWithCString:v13 encoding:4, &v21, v19];
      free(v13);
      SSFileLog();
    }

LABEL_13:
    v14 = +[IPodLibrary deviceIPodLibrary];
    v20 = 0;
    v15 = [v14 addLibraryItem:libraryItem error:&v20];

    if (v15)
    {
      v16 = [ML3Track alloc];
      v17 = +[ML3MusicLibrary sharedLibrary];
      v5 = [v16 initWithPersistentID:v15 inLibrary:v17];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (DownloadAssetFairPlayStreamingKeyLoaderDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end