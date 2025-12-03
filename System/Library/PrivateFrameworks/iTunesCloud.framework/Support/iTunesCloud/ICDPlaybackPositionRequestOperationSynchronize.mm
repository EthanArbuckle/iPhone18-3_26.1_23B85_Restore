@interface ICDPlaybackPositionRequestOperationSynchronize
- (ICDPlaybackPositionRequestOperationSynchronize)initWithContext:(id)context completionHandler:(id)handler;
- (id)_serializableRequestBodyPropertyListWithItems:(id)items syncAnchor:(id)anchor conflictDetectionType:(id)type;
- (id)_serializableUpdateItemPayloadDictionaryForEntity:(id)entity withKey:(id)key withConflictDetection:(id)detection;
- (void)_finishWithError:(id)error;
- (void)_parseResponseData:(id)data completion:(id)completion;
- (void)_performSyncWithBodyData:(id)data completion:(id)completion;
- (void)_performSyncWithSyncAnchor:(id)anchor itemsToSync:(id)sync conflictDetectionType:(id)type completion:(id)completion;
- (void)_synchronize;
- (void)start;
@end

@implementation ICDPlaybackPositionRequestOperationSynchronize

- (void)start
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = 138543362;
    selfCopy = self;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Setting MPDateToSyncWithUbiquitousStore to distantFuture", &v4, 0xCu);
  }

  [(ICDPlaybackPositionRequestOperationSynchronize *)self _synchronize];
}

- (void)_synchronize
{
  v3 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v3, OS_LOG_TYPE_DEFAULT, "Beginning synchronization", buf, 2u);
  }

  library = [(ICDPlaybackPositionRequestContext *)self->_context library];
  playbackPositionDomain = [(ICDPlaybackPositionRequestContext *)self->_context playbackPositionDomain];
  v21[0] = _NSConcreteStackBlock;
  v21[1] = 3221225472;
  v21[2] = sub_1000F4BDC;
  v21[3] = &unk_1001DDF68;
  v21[4] = self;
  v6 = [library beginTransactionWithItemsToSyncWithDomain:playbackPositionDomain enumerationBlock:v21];

  v7 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  v8 = v7;
  if (v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      allKeys = [(NSMutableDictionary *)self->_metadataItemsFromDataSource allKeys];
      v10 = [allKeys count];
      allKeys2 = [(NSMutableDictionary *)self->_metadataItemsFromDataSource allKeys];
      *buf = 134218242;
      selfCopy = v10;
      v24 = 2112;
      v25 = allKeys2;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_DEFAULT, "Gathered local %lu items to sync from dataSource: %@", buf, 0x16u);
    }

    v12 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      selfCopy = v6;
      _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_DEFAULT, "dataSource transaction context = %@", buf, 0xCu);
    }

    lastSyncedDomainVersion = [(ICDPlaybackPositionRequestOperationSynchronize *)v6 lastSyncedDomainVersion];
    v14 = lastSyncedDomainVersion;
    if (lastSyncedDomainVersion)
    {
      v15 = lastSyncedDomainVersion;
    }

    else
    {
      v15 = @"0";
    }

    metadataItemsFromDataSource = self->_metadataItemsFromDataSource;
    v18[0] = _NSConcreteStackBlock;
    v18[1] = 3221225472;
    v18[2] = sub_1000F4DF0;
    v18[3] = &unk_1001DE008;
    v18[4] = self;
    v19 = library;
    v20 = v6;
    [(ICDPlaybackPositionRequestOperationSynchronize *)self _performSyncWithSyncAnchor:v15 itemsToSync:metadataItemsFromDataSource conflictDetectionType:@"ordinal" completion:v18];
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy = self;
      _os_log_impl(&_mh_execute_header, v8, OS_LOG_TYPE_ERROR, "%{public}@ beginTransactionWithItemsToSyncWithDomain: did not return database context", buf, 0xCu);
    }

    v17 = [NSError errorWithDomain:ICErrorDomain code:0 userInfo:0];
    [(ICDPlaybackPositionRequestOperationSynchronize *)self _finishWithError:v17];
  }
}

- (id)_serializableUpdateItemPayloadDictionaryForEntity:(id)entity withKey:(id)key withConflictDetection:(id)detection
{
  entityCopy = entity;
  detectionCopy = detection;
  keyCopy = key;
  v11 = [(ICDPlaybackPositionRequestOperationBase *)self keyValueStorePayloadWithEntity:entityCopy];
  v17[0] = @"op";
  v17[1] = @"key";
  v18[0] = @"put";
  v18[1] = keyCopy;
  v17[2] = @"value";
  v18[2] = v11;
  v12 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:3];

  v13 = [v12 mutableCopy];
  LOBYTE(v12) = [detectionCopy isEqualToString:@"none"];

  if ((v12 & 1) == 0)
  {
    bookmarkTimestamp = [entityCopy bookmarkTimestamp];
    v15 = [(ICDPlaybackPositionRequestOperationBase *)self canonicalTimestampFromTimeInterval:bookmarkTimestamp];

    if (v15)
    {
      [v13 setObject:v15 forKey:@"ordinal"];
    }
  }

  return v13;
}

- (id)_serializableRequestBodyPropertyListWithItems:(id)items syncAnchor:(id)anchor conflictDetectionType:(id)type
{
  itemsCopy = items;
  anchorCopy = anchor;
  typeCopy = type;
  context = objc_autoreleasePoolPush();
  v34 = +[NSMutableArray array];
  v30 = +[NSMutableArray array];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v35 = itemsCopy;
  obj = [itemsCopy allKeys];
  v10 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v37;
    do
    {
      for (i = 0; i != v11; i = i + 1)
      {
        if (*v37 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = *(*(&v36 + 1) + 8 * i);
        v15 = [v35 objectForKeyedSubscript:v14];
        v16 = [(ICDPlaybackPositionRequestOperationSynchronize *)self _serializableUpdateItemPayloadDictionaryForEntity:v15 withKey:v14 withConflictDetection:typeCopy];
        if (v16)
        {
          [v34 addObject:v16];
          v17 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
          {
            goto LABEL_12;
          }

          *buf = 138412290;
          v44 = v14;
          v18 = v17;
          v19 = OS_LOG_TYPE_DEBUG;
          v20 = "[SYNC-REQUEST] Updating Key: %@";
        }

        else
        {
          v17 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
          if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_12;
          }

          *buf = 138412290;
          v44 = v14;
          v18 = v17;
          v19 = OS_LOG_TYPE_DEFAULT;
          v20 = "WARNING: no data was provided for updated key %@, skipping just that item";
        }

        _os_log_impl(&_mh_execute_header, v18, v19, v20, buf, 0xCu);
LABEL_12:
      }

      v11 = [obj countByEnumeratingWithState:&v36 objects:v45 count:16];
    }

    while (v11);
  }

  playbackPositionDomain = [(ICDPlaybackPositionRequestContext *)self->_context playbackPositionDomain];
  if (!playbackPositionDomain)
  {
    v22 = MSVAutoBugCaptureDomainiTunesCloud;
    v42 = self->_context;
    v23 = [NSArray arrayWithObjects:&v42 count:1];
    [MSVAutoBugCapture snapshotWithDomain:v22 type:@"Bug" subType:@"ICPlaybackPositionRequestBug" context:@"Context missing domain" triggerThresholdValues:0 events:v23 completion:0];

    playbackPositionDomain = ICPlaybackPositionServiceDomainDefault;
  }

  v24 = typeCopy;
  v25 = [v34 arrayByAddingObjectsFromArray:v30];
  v40[0] = @"domain";
  v40[1] = @"version";
  v41[0] = playbackPositionDomain;
  v41[1] = anchorCopy;
  v40[2] = @"ops";
  v41[2] = v25;
  v26 = [NSDictionary dictionaryWithObjects:v41 forKeys:v40 count:3];
  v27 = [v26 mutableCopy];

  if ([v24 length])
  {
    [v27 setObject:v24 forKey:@"conflict-detection"];
  }

  v28 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v44 = v27;
    _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_DEFAULT, "Sync request payload (plist): %@", buf, 0xCu);
  }

  objc_autoreleasePoolPop(context);

  return v27;
}

- (void)_performSyncWithBodyData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  storeRequestContext = [(ICDPlaybackPositionRequestContext *)self->_context storeRequestContext];
  v9 = storeRequestContext;
  if (storeRequestContext)
  {
    identity = [storeRequestContext identity];
    v11 = [ICPrivacyInfo sharedPrivacyInfoForUserIdentity:identity];

    if (v11 && [v11 privacyAcknowledgementRequiredForMedia])
    {
      v12 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        selfCopy2 = self;
        _os_log_impl(&_mh_execute_header, v12, OS_LOG_TYPE_ERROR, "%{public}@ Not performing sync because privacy acknowledgement needed for a media application to proceed", buf, 0xCu);
      }

      v13 = [NSError msv_errorWithDomain:ICErrorDomain code:-7007 debugDescription:@"Privacy acknowledgement required"];
      completionCopy[2](completionCopy, 0, v13);
    }

    else
    {
      v14 = +[ICURLBagProvider sharedBagProvider];
      v16[0] = _NSConcreteStackBlock;
      v16[1] = 3221225472;
      v16[2] = sub_1000F4080;
      v16[3] = &unk_1001DE058;
      v16[4] = self;
      v19 = completionCopy;
      v17 = dataCopy;
      v18 = v9;
      [v14 getBagForRequestContext:v18 withCompletionHandler:v16];
    }
  }

  else
  {
    v15 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      selfCopy2 = self;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "%{public}@ context.requestContext=nil", buf, 0xCu);
    }

    v11 = [NSError errorWithDomain:ICErrorDomain code:-7101 userInfo:0];
    completionCopy[2](completionCopy, 0, v11);
  }
}

- (void)_performSyncWithSyncAnchor:(id)anchor itemsToSync:(id)sync conflictDetectionType:(id)type completion:(id)completion
{
  anchorCopy = anchor;
  completionCopy = completion;
  typeCopy = type;
  syncCopy = sync;
  v14 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    selfCopy = anchorCopy;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_DEFAULT, "Performing sync with server using syncAnchor = %@", buf, 0xCu);
  }

  v15 = [(ICDPlaybackPositionRequestOperationSynchronize *)self _serializableRequestBodyPropertyListWithItems:syncCopy syncAnchor:anchorCopy conflictDetectionType:typeCopy];

  v19 = 0;
  v16 = [NSPropertyListSerialization dataWithPropertyList:v15 format:[(ICDPlaybackPositionRequestOperationBase *)self bodyContentFormat] options:0 error:&v19];
  v17 = v19;
  if (v17)
  {
    v18 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      selfCopy = self;
      v22 = 2114;
      v23 = v17;
      _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_ERROR, "%{public}@ Error serializing body data. error=%{public}@", buf, 0x16u);
    }

    completionCopy[2](completionCopy, 0, v17);
  }

  else
  {
    [(ICDPlaybackPositionRequestOperationSynchronize *)self _performSyncWithBodyData:v16 completion:completionCopy];
  }
}

- (void)_parseResponseData:(id)data completion:(id)completion
{
  dataCopy = data;
  completionCopy = completion;
  v6 = +[NSMutableDictionary dictionary];
  v38 = +[NSMutableDictionary dictionary];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v48 = 0u;
  updatedKeys = [dataCopy updatedKeys];
  v8 = [updatedKeys countByEnumeratingWithState:&v45 objects:v54 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v46;
    do
    {
      for (i = 0; i != v9; i = i + 1)
      {
        if (*v46 != v10)
        {
          objc_enumerationMutation(updatedKeys);
        }

        v12 = *(*(&v45 + 1) + 8 * i);
        v13 = [dataCopy metadataWithPlaybackPositionKey:v12 failuresOkay:0];
        if (v13)
        {
          [v6 setObject:v13 forKeyedSubscript:v12];
        }

        else
        {
          v14 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            selfCopy2 = self;
            v52 = 2114;
            v53 = v12;
            _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "%{public}@ Could not create remote entity from key %{public}@", buf, 0x16u);
          }
        }
      }

      v9 = [updatedKeys countByEnumeratingWithState:&v45 objects:v54 count:16];
    }

    while (v9);
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  obj = [dataCopy conflictedKeys];
  v15 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v42;
    do
    {
      for (j = 0; j != v16; j = j + 1)
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v41 + 1) + 8 * j);
        v20 = [dataCopy metadataWithPlaybackPositionKey:v19 failuresOkay:0];
        if (v20)
        {
          v21 = [(NSMutableDictionary *)self->_metadataItemsFromDataSource objectForKeyedSubscript:v19];
          v22 = v21;
          if (v21)
          {
            bookmarkTimestamp = [v21 bookmarkTimestamp];
            [bookmarkTimestamp doubleValue];
            v25 = v24;
            bookmarkTimestamp2 = [v20 bookmarkTimestamp];
            [bookmarkTimestamp2 doubleValue];
            v28 = v27;

            if (v25 < v28)
            {
              v29 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543362;
                selfCopy2 = v19;
                v30 = v29;
                v31 = "Merging remote entity with key %{public}@ - remote entity is newer";
                goto LABEL_27;
              }

              goto LABEL_28;
            }

            v33 = [v22 isEqual:v20];
            v29 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
            v34 = os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG);
            if (v33)
            {
              if (v34)
              {
                *buf = 138543362;
                selfCopy2 = v19;
                v35 = v29;
                v36 = "Keeping local entity with key %{public}@ - Local and remote entities are the same.";
                goto LABEL_34;
              }
            }

            else if (v34)
            {
              *buf = 138543362;
              selfCopy2 = v19;
              v35 = v29;
              v36 = "Keeping local entity with key %{public}@";
LABEL_34:
              _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEBUG, v36, buf, 0xCu);
            }

            v32 = v38;
          }

          else
          {
            v29 = os_log_create("com.apple.amp.itunescloudd", "PlayActivity");
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
            {
              *buf = 138543362;
              selfCopy2 = v19;
              v30 = v29;
              v31 = "Merging remote entity with key %{public}@ - No local entity";
LABEL_27:
              _os_log_impl(&_mh_execute_header, v30, OS_LOG_TYPE_DEBUG, v31, buf, 0xCu);
            }

LABEL_28:
            v32 = v6;
          }

          [v32 setObject:v20 forKeyedSubscript:v19];
          goto LABEL_37;
        }

        v22 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
        if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          selfCopy2 = self;
          v52 = 2114;
          v53 = v19;
          _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "%{public}@ Could not create remote entity from key %{public}@", buf, 0x16u);
        }

LABEL_37:
      }

      v16 = [obj countByEnumeratingWithState:&v41 objects:v49 count:16];
    }

    while (v16);
  }

  completionCopy[2](completionCopy, v6, v38);
}

- (void)_finishWithError:(id)error
{
  errorCopy = error;
  v5 = os_log_create("com.apple.amp.itunescloudd", "PlaybackPosition");
  v6 = v5;
  if (errorCopy)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      msv_description = [errorCopy msv_description];
      v8 = 138543362;
      v9 = msv_description;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "Finished synchronization error=%{public}@", &v8, 0xCu);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(v8) = 0;
    _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "Finished synchronization", &v8, 2u);
  }

  (*(self->_completionHandler + 2))();
  [(ICDPlaybackPositionRequestOperationSynchronize *)self finishWithError:errorCopy];
}

- (ICDPlaybackPositionRequestOperationSynchronize)initWithContext:(id)context completionHandler:(id)handler
{
  contextCopy = context;
  handlerCopy = handler;
  v16.receiver = self;
  v16.super_class = ICDPlaybackPositionRequestOperationSynchronize;
  v9 = [(ICDPlaybackPositionRequestOperationSynchronize *)&v16 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_urlBagKey, ICURLBagKeyKVSRequestURLSync);
    objc_storeStrong(&v10->_context, context);
    v11 = objc_retainBlock(handlerCopy);
    completionHandler = v10->_completionHandler;
    v10->_completionHandler = v11;

    v13 = +[NSMutableDictionary dictionary];
    metadataItemsFromDataSource = v10->_metadataItemsFromDataSource;
    v10->_metadataItemsFromDataSource = v13;
  }

  return v10;
}

@end