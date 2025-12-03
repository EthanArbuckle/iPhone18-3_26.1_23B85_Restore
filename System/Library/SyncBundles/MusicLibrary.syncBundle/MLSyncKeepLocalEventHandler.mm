@interface MLSyncKeepLocalEventHandler
+ (id)_collectionPropertiesToFetch;
+ (id)_trackPropertiesToFetch;
+ (id)hasDownloadingStatusPredicate;
+ (id)hasPendingDownloadPredicate;
+ (id)hasTrackDataAndNotManuallyPinnedPredicate;
+ (id)hasTrackDataOrPendingDownloadPredicate;
+ (id)hasTrackDataPredicate;
+ (id)isDownloadablePredicate;
+ (id)keepLocalAndDownloadingButNotDownloadablePredicate;
+ (id)keepLocalAndMissingTrackDataPredicate;
+ (id)keepLocalCancelledOrDisabledAndIsDownloadingOrPausedPredicate;
+ (id)keepLocalCancelledPredicate;
+ (id)keepLocalDisabledAndHasTrackDataOrDownloadAndIsRedownloadablePredicate;
+ (id)keepLocalDisabledPredicate;
+ (id)keepLocalEnabledPredicate;
+ (id)keepLocalNotDisabledPredicate;
+ (id)keepLocalOffPredicate;
+ (id)keepLocalWithMissingTrackDataAndIsDownloadablePredicateForIdentifier:(int64_t)identifier;
+ (id)missingTrackDataPredicate;
+ (id)trackMatchingItemIdentifierPredicate:(int64_t)predicate;
- (BOOL)_canDownloadTrackWithPersistentID:(int64_t)d andProperties:(id)properties;
- (BOOL)_canRunKeepLocalEvaluationByEnqueuingAssets:(BOOL)assets;
- (BOOL)_containerIsSmartLimited:(id)limited;
- (BOOL)_isSupportedMediaTypeFromTrackProperties:(id)properties;
- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection;
- (MLSyncKeepLocalEventHandler)initWithQueue:(id)queue library:(id)library;
- (id)_allTracksDisabledForCollection:(id)collection;
- (id)_anyTracksQueryForCollection:(id)collection;
- (id)_assetsFromTrackPersistentIds:(id)ids andProperties:(id)properties isManualDownload:(BOOL)download inForeground:(BOOL)foreground;
- (id)_inMyLibraryPredicate;
- (id)_runKeepLocalEvaluationForAlbumWithPersistentId:(int64_t)id musicLibrary:(id)library;
- (id)_runKeepLocalEvaluationForContainerWithPersistentId:(int64_t)id musicLibrary:(id)library;
- (id)_runKeepLocalEvaluationForTrackWithPersistentId:(int64_t)id musicLibrary:(id)library;
- (id)_searchableKeepLocalCollectionClasses;
- (id)_trackQueryForEntityCollection:(id)collection predicate:(id)predicate;
- (id)runDefaultKeepLocalEvaluationWithMusicLibrary:(id)library;
- (id)runKeepLocalEvaluationForItem:(int64_t)item entityType:(int64_t)type newKeepLocalStatus:(int)status musicLibrary:(id)library;
- (id)setKeepLocalForAllMusicItemsWithLibrary:(id)library;
- (int64_t)sizeOfMediaItemsDownloadedForAutomaticallyPinnedCollectionsWithMusicLibrary:(id)library;
- (void)_addTrackWithPersistentId:(int64_t)id andProperties:(id)properties withKeepLocalValue:(int)value toResult:(id)result;
- (void)_cancelDownloadsForTracksWithPersistentIDs:(id)ds withError:(id)error;
- (void)_handleAccountsChangedNotification:(id)notification;
- (void)_handleKeepLocalEvaluationOperationCompletedWithResult:(id)result inBackground:(BOOL)background andGetEnqueuedDownloads:(id *)downloads cancelledDownloads:(id *)cancelledDownloads;
- (void)_notifyObserversWithDownloadsToEnqueue:(id)enqueue downloadsPending:(id)pending downloadsToCancel:(id)cancel trackProperties:(id)properties;
- (void)_performKeepLocalEvaluationOnCollection:(id)collection withProperties:(id)properties fromLibrary:(id)library toResult:(id)result;
- (void)_pruneActiveDownloads;
- (void)cancelDownloads;
- (void)cancelDownloadsForMediaTypes:(id)types;
- (void)downloadLibraryWithCompletionBlock:(id)block;
- (void)enqueueAssetForDownload:(int64_t)download withCompletionBlock:(id)block;
- (void)handleKeepLocalStatusChanged:(int)changed forLibraryIdentifier:(int64_t)identifier entityType:(int)type withCompletionBlock:(id)block;
- (void)runKeepLocalEvaluationAndDownloadAssetsForPinningChangeWithCompletionBlock:(id)block;
- (void)start;
- (void)startKeepLocalSessionInBackground:(BOOL)background enqueueAssets:(BOOL)assets forceNoDelay:(BOOL)delay withCompletion:(id)completion;
- (void)startKeepLocalSessionInBackground:(BOOL)background forLibraryIdentifier:(int64_t)identifier entityType:(int64_t)type newKeepLocalStatus:(int)status;
- (void)startKeepLocalSessionToDownloadLibraryWithCompletion:(id)completion;
- (void)stop;
@end

@implementation MLSyncKeepLocalEventHandler

- (BOOL)listener:(id)listener shouldAcceptNewConnection:(id)connection
{
  listenerCopy = listener;
  connectionCopy = connection;
  processIdentifier = [connectionCopy processIdentifier];
  v9 = _ATLogCategoryXPC();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v24 = 1024;
    v25 = processIdentifier;
    _os_log_impl(&dword_0, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ got connection from pid %i", buf, 0x12u);
  }

  v10 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MLSyncKeepLocalRequestListener];
  [connectionCopy setExportedInterface:v10];

  [connectionCopy setExportedObject:self];
  v11 = [NSXPCInterface interfaceWithProtocol:&OBJC_PROTOCOL___MLSyncKeepLocalObserver];
  [connectionCopy setRemoteObjectInterface:v11];
  callbackQueue = self->_callbackQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_63274;
  block[3] = &unk_9EC30;
  block[4] = self;
  v13 = connectionCopy;
  v21 = v13;
  dispatch_barrier_async(callbackQueue, block);
  objc_initWeak(buf, v13);
  v17[0] = _NSConcreteStackBlock;
  v17[1] = 3221225472;
  v17[2] = sub_63280;
  v17[3] = &unk_9EE08;
  v17[4] = self;
  v19 = processIdentifier;
  objc_copyWeak(&v18, buf);
  [v13 setInterruptionHandler:v17];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_633B8;
  v15[3] = &unk_9EE30;
  v15[4] = self;
  v16 = processIdentifier;
  [v13 setInvalidationHandler:v15];
  [v13 resume];
  objc_destroyWeak(&v18);
  objc_destroyWeak(buf);

  return 1;
}

- (void)downloadLibraryWithCompletionBlock:(id)block
{
  blockCopy = block;
  v5 = +[MLSyncClientKeepLocalEventHandlerWrapper sharedInstance];
  keepLocalEventHandler = [v5 keepLocalEventHandler];
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 3221225472;
  v8[2] = sub_63544;
  v8[3] = &unk_9EDE0;
  v8[4] = self;
  v9 = blockCopy;
  v7 = blockCopy;
  [keepLocalEventHandler startKeepLocalSessionToDownloadLibraryWithCompletion:v8];
}

- (void)enqueueAssetForDownload:(int64_t)download withCompletionBlock:(id)block
{
  blockCopy = block;
  v7 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    *&buf[4] = self;
    *&buf[12] = 2048;
    *&buf[14] = download;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ got request to enqueue %lld for immediate download with ATC", buf, 0x16u);
  }

  v8 = dispatch_semaphore_create(0);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v15 = sub_637EC;
  v16 = sub_637FC;
  v17 = 0;
  v9 = +[ATAssetLinkController sharedInstance];
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 3221225472;
  v11[2] = sub_63804;
  v11[3] = &unk_9EDB8;
  v13 = buf;
  v10 = v8;
  v12 = v10;
  [v9 enqueueAssetForStoreDownload:download withCompletion:v11];

  dispatch_semaphore_wait(v10, 0xFFFFFFFFFFFFFFFFLL);
  if (blockCopy)
  {
    blockCopy[2](blockCopy, *(*&buf[8] + 40));
  }

  _Block_object_dispose(buf, 8);
}

- (void)cancelDownloadsForMediaTypes:(id)types
{
  typesCopy = types;
  v5 = +[NSMutableSet set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = typesCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      v10 = 0;
      do
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = sub_6F3C8([*(*(&v16 + 1) + 8 * v10) longLongValue]);
        [v5 addObject:v11];

        v10 = v10 + 1;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v16 objects:v24 count:16];
    }

    while (v8);
  }

  v12 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v22 = 2114;
    v23 = v5;
    _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Cancelling all downloads with assetType=%{public}@", buf, 0x16u);
  }

  v13 = [NSPredicate predicateWithFormat:@"assetType IN %@", v5];
  v14 = [NSError errorWithDomain:@"ATError" code:2 userInfo:0];
  v15 = +[ATAssetLinkController sharedInstance];
  [v15 cancelAllAssetsMatchingPredicate:v13 excludeActiveDownloads:0 withError:v14 completion:0];
}

- (void)cancelDownloads
{
  v4 = [NSPredicate predicateWithFormat:@"enqueueSource=%d", 2];
  v2 = [NSError errorWithDomain:@"ATError" code:31 userInfo:0];
  v3 = +[ATAssetLinkController sharedInstance];
  [v3 cancelAllAssetsMatchingPredicate:v4 excludeActiveDownloads:0 withError:v2 completion:0];
}

- (void)runKeepLocalEvaluationAndDownloadAssetsForPinningChangeWithCompletionBlock:(id)block
{
  blockCopy = block;
  v4 = +[MLSyncClientKeepLocalEventHandlerWrapper sharedInstance];
  keepLocalEventHandler = [v4 keepLocalEventHandler];
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_63BEC;
  v7[3] = &unk_9EB50;
  v8 = blockCopy;
  v6 = blockCopy;
  [keepLocalEventHandler startKeepLocalSessionInBackground:1 enqueueAssets:1 forceNoDelay:1 withCompletion:v7];
}

- (void)handleKeepLocalStatusChanged:(int)changed forLibraryIdentifier:(int64_t)identifier entityType:(int)type withCompletionBlock:(id)block
{
  v8 = *&changed;
  blockCopy = block;
  if (identifier && type <= 4 && ((1 << type) & 0x13) != 0 && (v8 + 2) <= 3)
  {
    typeCopy = type;
    v12 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138544130;
      selfCopy2 = self;
      v21 = 2048;
      identifierCopy2 = identifier;
      v23 = 1024;
      typeCopy3 = type;
      v25 = 1024;
      v26 = v8;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduling keep local operation for item identifier:%lld, entity type:%d, new keep local status:%d", buf, 0x22u);
    }

    v13 = +[MLSyncClientKeepLocalEventHandlerWrapper sharedInstance];
    keepLocalEventHandler = [v13 keepLocalEventHandler];
    [keepLocalEventHandler startKeepLocalSessionInBackground:0 forLibraryIdentifier:identifier entityType:typeCopy newKeepLocalStatus:v8];
  }

  else
  {
    v15 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 138544130;
      selfCopy2 = self;
      v21 = 2048;
      identifierCopy2 = identifier;
      v23 = 1024;
      typeCopy3 = type;
      v25 = 1024;
      v26 = v8;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_ERROR, "%{public}@ not scheduling keep local operation for item identifier:%lld, entity type:%d, keep local status:%d", buf, 0x22u);
    }

    v13 = [NSError errorWithDomain:@"ATError" code:23 userInfo:0];
  }

  if (blockCopy)
  {
    callbackQueue = self->_callbackQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_63E68;
    block[3] = &unk_9EB50;
    v18 = blockCopy;
    dispatch_async(callbackQueue, block);
  }
}

- (id)_assetsFromTrackPersistentIds:(id)ids andProperties:(id)properties isManualDownload:(BOOL)download inForeground:(BOOL)foreground
{
  downloadCopy = download;
  foregroundCopy = foreground;
  idsCopy = ids;
  propertiesCopy = properties;
  v37 = sub_16C0(8);
  v43 = sub_16C0(4);
  v33 = sub_16C0(2);
  v9 = +[ICDeviceInfo currentDeviceInfo];
  isWatch = [v9 isWatch];

  v36 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [idsCopy count]);
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  obj = idsCopy;
  v45 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v45)
  {
    v42 = *v51;
    v40 = ML3EntityPropertyKeepLocalConstraints;
    v41 = ML3EntityPropertyKeepLocalStatus;
    v32 = ML3EntityPropertyKeepLocal;
    v39 = ML3TrackPropertyMediaType;
    v38 = ML3TrackPropertyIsStoreRedownloadable;
    *&v10 = 138543618;
    v31 = v10;
    selfCopy = self;
    do
    {
      for (i = 0; i != v45; i = i + 1)
      {
        if (*v51 != v42)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v50 + 1) + 8 * i);
        v13 = [propertiesCopy objectForKey:{v12, v31}];
        v14 = [v13 objectForKey:v41];
        integerValue = [v14 integerValue];

        v16 = [v13 objectForKey:v40];
        integerValue2 = [v16 integerValue];

        v18 = (integerValue2 >> 2) & 1;
        if ((integerValue2 & 4) == 0 && !foregroundCopy)
        {
          if (integerValue == 4)
          {
            v18 = (integerValue2 >> 2) & 1;
          }

          else
          {
            v18 = (integerValue2 >> 4) & 1;
          }
        }

        v19 = downloadCopy;
        if (!foregroundCopy)
        {
          v20 = [v13 objectForKey:v32];
          integerValue3 = [v20 integerValue];

          v19 = downloadCopy;
          if (integerValue3 != 1)
          {
            v22 = _ATLogCategorySyncBundle();
            if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
            {
              *buf = v31;
              v55 = selfCopy;
              v56 = 2112;
              v57 = v12;
              _os_log_impl(&dword_0, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ setting allowDownloadOnConstrainedNetwork=NO for background container item download with id=%@", buf, 0x16u);
            }

            v19 = 0;
          }
        }

        v23 = [v13 objectForKey:v39];
        integerValue4 = [v23 integerValue];

        if (*&v43 & ((integerValue4 & 4) >> 2) & 1) != 0 || (*&v33 & ((integerValue4 & 2) >> 1))
        {
          v25 = (integerValue2 & 2) == 0;
          if ((integerValue2 & 2) != 0)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v25 = (integerValue4 & 8) != 0 && v37 && (integerValue2 & 2) == 0;
          if (((integerValue4 & 8) == 0) | !v37 | (integerValue2 >> 1) & 1)
          {
            goto LABEL_24;
          }
        }

        if (!foregroundCopy && integerValue == 5)
        {
          v25 = (integerValue2 & 8) == 0;
        }

LABEL_24:
        v26 = [v13 objectForKey:v38];
        bOOLValue = [v26 BOOLValue];

        v28 = sub_6F464(v13, [v12 longLongValue], selfCopy->_library);
        v29 = v28;
        if (v28)
        {
          [v28 setIsForeground:foregroundCopy];
          [v29 setIsPrioritized:isWatch & downloadCopy];
          [v29 setEnqueueSource:2];
          [v29 setAllowDownloadOnConstrainedNetwork:v19];
          [v29 setPowerRequired:v18];
          [v29 setCanUseCellularData:v25];
          [v29 setCanProxyUseCellularData:v37];
          [v29 setIsRetry:integerValue == 5];
          [v29 setBypassStore:bOOLValue ^ 1];
          [v36 addObject:v29];
          v49[0] = _NSConcreteStackBlock;
          v49[1] = 3221225472;
          v49[2] = sub_64354;
          v49[3] = &unk_9ED90;
          v49[4] = selfCopy;
          [v29 setCompletionBlock:v49];
        }
      }

      v45 = [obj countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v45);
  }

  return v36;
}

- (void)_notifyObserversWithDownloadsToEnqueue:(id)enqueue downloadsPending:(id)pending downloadsToCancel:(id)cancel trackProperties:(id)properties
{
  enqueueCopy = enqueue;
  pendingCopy = pending;
  cancelCopy = cancel;
  propertiesCopy = properties;
  v10 = +[NSMutableArray array];
  v11 = +[NSMutableArray array];
  v12 = +[NSMutableArray array];
  v60 = 0u;
  v61 = 0u;
  v62 = 0u;
  v63 = 0u;
  v13 = enqueueCopy;
  v14 = [v13 countByEnumeratingWithState:&v60 objects:v66 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v61;
    do
    {
      for (i = 0; i != v15; i = i + 1)
      {
        if (*v61 != v16)
        {
          objc_enumerationMutation(v13);
        }

        identifier = [*(*(&v60 + 1) + 8 * i) identifier];
        v19 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [identifier longLongValue]);
        [v10 addObject:v19];
      }

      v15 = [v13 countByEnumeratingWithState:&v60 objects:v66 count:16];
    }

    while (v15);
  }

  v41 = v13;

  v58 = 0u;
  v59 = 0u;
  v56 = 0u;
  v57 = 0u;
  v20 = cancelCopy;
  v21 = [v20 countByEnumeratingWithState:&v56 objects:v65 count:16];
  if (v21)
  {
    v22 = v21;
    v23 = *v57;
    do
    {
      for (j = 0; j != v22; j = j + 1)
      {
        if (*v57 != v23)
        {
          objc_enumerationMutation(v20);
        }

        identifier2 = [*(*(&v56 + 1) + 8 * j) identifier];
        v26 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [identifier2 longLongValue]);
        [v11 addObject:v26];
      }

      v22 = [v20 countByEnumeratingWithState:&v56 objects:v65 count:16];
    }

    while (v22);
  }

  v40 = v20;

  v54 = 0u;
  v55 = 0u;
  v52 = 0u;
  v53 = 0u;
  v27 = pendingCopy;
  v28 = [v27 countByEnumeratingWithState:&v52 objects:v64 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v53;
    do
    {
      for (k = 0; k != v29; k = k + 1)
      {
        if (*v53 != v30)
        {
          objc_enumerationMutation(v27);
        }

        identifier3 = [*(*(&v52 + 1) + 8 * k) identifier];
        v33 = +[NSNumber numberWithLongLong:](NSNumber, "numberWithLongLong:", [identifier3 longLongValue]);
        [v12 addObject:v33];
      }

      v29 = [v27 countByEnumeratingWithState:&v52 objects:v64 count:16];
    }

    while (v29);
  }

  if ([v41 count] || objc_msgSend(v40, "count"))
  {
    callbackQueue = self->_callbackQueue;
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_649B0;
    block[3] = &unk_9ED18;
    block[4] = self;
    v50 = v10;
    v51 = v11;
    dispatch_async(callbackQueue, block);
  }

  if ([v11 count] || objc_msgSend(v41, "count") || objc_msgSend(v27, "count"))
  {
    library = self->_library;
    v42[0] = _NSConcreteStackBlock;
    v42[1] = 3221225472;
    v42[2] = sub_64ACC;
    v42[3] = &unk_9ED68;
    v43 = v11;
    selfCopy = self;
    v45 = v41;
    v46 = v10;
    v47 = v27;
    v48 = propertiesCopy;
    [(ML3MusicLibrary *)library performDatabaseTransactionWithBlock:v42];
  }
}

- (void)_handleKeepLocalEvaluationOperationCompletedWithResult:(id)result inBackground:(BOOL)background andGetEnqueuedDownloads:(id *)downloads cancelledDownloads:(id *)cancelledDownloads
{
  backgroundCopy = background;
  resultCopy = result;
  v85 = +[ICEnvironmentMonitor sharedMonitor];
  networkType = [v85 networkType];
  isCharging = [v85 isCharging];
  isNetworkConstrained = [v85 isNetworkConstrained];
  IsCellular = ICEnvironmentNetworkTypeIsCellular();
  v8 = +[ICDeviceInfo currentDeviceInfo];
  isWatch = [v8 isWatch];

  if (isWatch)
  {
    v10 = +[ATUserDefaults sharedInstance];
    minimumNetworkLinkQualityForDownloads = [v10 minimumNetworkLinkQualityForDownloads];

    unsignedIntValue = [minimumNetworkLinkQualityForDownloads unsignedIntValue];
  }

  else
  {
    unsignedIntValue = 0;
  }

  v12 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    manualDownloads = [resultCopy manualDownloads];
    v14 = [manualDownloads count];
    automaticDownloads = [resultCopy automaticDownloads];
    v16 = [automaticDownloads count];
    v17 = @"Unknown";
    if (networkType > 99)
    {
      if (networkType > 1000)
      {
        if (networkType == &stru_3D8.segname[1])
        {
          v17 = @"Bridged WiFi";
        }

        else if (networkType == &stru_790.flags)
        {
          v17 = @"Wired Ethernet";
        }

        else if (networkType == &stru_B98.addr)
        {
          v17 = @"Other";
        }

        goto LABEL_8;
      }

      if (networkType != &stru_20.flags)
      {
        if (networkType == &stru_1A8.reserved3)
        {
          v17 = @"Bluetooth";
        }

        else if (networkType == stru_3D8.segname)
        {
          v17 = @"WiFi";
        }

        goto LABEL_8;
      }
    }

    else if ((networkType - 1) >= 8)
    {
LABEL_8:
      currentNetworkLinkQuality = [v85 currentNetworkLinkQuality];
      [v85 currentNetworkLinkQuality];
      v19 = ICEnvironmentNetworkLinkQualityDescription();
      *buf = 138545410;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = v14;
      *&buf[22] = 2048;
      *&buf[24] = v16;
      *&buf[32] = 1024;
      *&buf[34] = isCharging;
      v129 = 2114;
      v130 = v17;
      v131 = 1024;
      v132 = isNetworkConstrained;
      v133 = 2048;
      v134 = currentNetworkLinkQuality;
      v135 = 2114;
      v136 = v19;
      v137 = 2048;
      v138 = unsignedIntValue;
      _os_log_impl(&dword_0, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ Processing %lu manual and %lu automatic keep-local results. isCharging = %{BOOL}u, networkType = %{public}@, isConstrained = %{BOOL}u, networkLinkQuality = %lu (%{public}@), minimumNetworkLinkQuality = %lu", buf, 0x54u);

      goto LABEL_9;
    }

    v17 = @"Cellular";
    goto LABEL_8;
  }

LABEL_9:

  manualDownloads2 = [resultCopy manualDownloads];
  v21 = [manualDownloads2 count];
  automaticDownloads2 = [resultCopy automaticDownloads];
  v23 = [automaticDownloads2 count] + v21 == 0;

  if (v23)
  {
    v24 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = self;
      _os_log_impl(&dword_0, v24, OS_LOG_TYPE_DEFAULT, "%{public}@ Found no new assets to download", buf, 0xCu);
    }
  }

  else
  {
    trackProperties = [resultCopy trackProperties];
    manualDownloads3 = [resultCopy manualDownloads];
    v76 = [(MLSyncKeepLocalEventHandler *)self _assetsFromTrackPersistentIds:manualDownloads3 andProperties:trackProperties isManualDownload:1 inForeground:!backgroundCopy];

    automaticDownloads3 = [resultCopy automaticDownloads];
    v75 = [(MLSyncKeepLocalEventHandler *)self _assetsFromTrackPersistentIds:automaticDownloads3 andProperties:trackProperties isManualDownload:0 inForeground:0];

    v27 = +[ATAssetLinkController sharedInstance];
    v84 = [v27 filteredAssetsToDownloadForAssets:v76];

    v28 = +[ATAssetLinkController sharedInstance];
    v29 = [v28 filteredAssetsToDownloadForAssets:v75];

    v30 = _ATLogCategorySyncBundle_Oversize();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      v31 = [v84 count];
      v32 = [v29 count];
      *buf = 138543874;
      *&buf[4] = self;
      *&buf[12] = 2048;
      *&buf[14] = v31;
      *&buf[22] = 2048;
      *&buf[24] = v32;
      _os_log_impl(&dword_0, v30, OS_LOG_TYPE_DEFAULT, "%{public}@ Keep Local evaluation produced %lu manual and %lu automatic downloads after filtering", buf, 0x20u);
    }

    if ([v84 count] || objc_msgSend(v29, "count"))
    {
      v33 = +[NSMutableDictionary dictionary];
      v114 = 0;
      v115 = &v114;
      v116 = 0x2020000000;
      v34 = +[ICStorageManager sharedManager];
      storageSpaceAvailable = [v34 storageSpaceAvailable];

      v117 = storageSpaceAvailable;
      AppBooleanValue = CFPreferencesGetAppBooleanValue(@"OptimizeStorage", @"com.apple.Music", 0);
      if (AppBooleanValue)
      {
        totalSizeOfManualDownloads = [resultCopy totalSizeOfManualDownloads];
        totalSizeOfManualDownloads2 = &totalSizeOfManualDownloads[[resultCopy totalSizeOfAutomaticDownloads]];
      }

      else
      {
        totalSizeOfManualDownloads2 = [resultCopy totalSizeOfManualDownloads];
      }

      v39 = _ATLogCategorySyncBundle();
      v77 = v29;
      if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
      {
        totalSizeOfManualDownloads3 = [resultCopy totalSizeOfManualDownloads];
        totalSizeOfAutomaticDownloads = [resultCopy totalSizeOfAutomaticDownloads];
        v42 = v115[3];
        *buf = 138544386;
        *&buf[4] = self;
        *&buf[12] = 1024;
        *&buf[14] = AppBooleanValue != 0;
        *&buf[18] = 2048;
        *&buf[20] = totalSizeOfManualDownloads3;
        *&buf[28] = 2048;
        *&buf[30] = totalSizeOfAutomaticDownloads;
        v129 = 2048;
        v130 = v42;
        _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ checking storage limits for downloads. optimizeStorageEnabled=%d, totalSizeOfManualDownloads=%lld, totalSizeOfAutomaticDownloads=%lld, available=%lld", buf, 0x30u);
      }

      if (totalSizeOfManualDownloads2 > v115[3])
      {
        v43 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = self;
          _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ not enough free space for  downloads - clearing purgeable space from media library", buf, 0xCu);
        }

        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        *&buf[24] = [(ML3MusicLibrary *)self->_library clearPurgeableStorageAmount:&totalSizeOfManualDownloads2[-v115[3]] withUrgency:AppBooleanValue != 0];
        v44 = v115[3] + *(*&buf[8] + 24);
        v115[3] = v44;
        if (totalSizeOfManualDownloads2 > v44)
        {
          v45 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
          {
            *v120 = 138543362;
            selfCopy2 = self;
            _os_log_impl(&dword_0, v45, OS_LOG_TYPE_DEFAULT, "%{public}@ still not enough free space for  downloads - asking CacheDelete to help us out", v120, 0xCu);
          }

          v46 = dispatch_semaphore_create(0);
          v127[0] = @"/private/var";
          v126[0] = @"CACHE_DELETE_VOLUME";
          v126[1] = @"CACHE_DELETE_AMOUNT";
          v47 = [NSNumber numberWithUnsignedLongLong:&totalSizeOfManualDownloads2[-v115[3]]];
          v126[2] = @"CACHE_DELETE_PURGE_TIMEOUT";
          v127[1] = v47;
          v127[2] = &off_A0F28;
          v48 = [NSDictionary dictionaryWithObjects:v127 forKeys:v126 count:3];

          v107 = _NSConcreteStackBlock;
          v108 = 3221225472;
          v109 = sub_6625C;
          v110 = &unk_9ECA8;
          v112 = buf;
          v113 = &v114;
          v49 = v46;
          v111 = v49;
          CacheDeletePurgeSpaceWithInfo();
          dispatch_semaphore_wait(v49, 0xFFFFFFFFFFFFFFFFLL);
          v50 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v50, OS_LOG_TYPE_DEFAULT))
          {
            v51 = *(*&buf[8] + 24);
            v52 = v115[3];
            *v120 = 138543874;
            selfCopy2 = self;
            v122 = 2048;
            v123 = v51;
            v124 = 2048;
            v125 = v52;
            _os_log_impl(&dword_0, v50, OS_LOG_TYPE_DEFAULT, "%{public}@ CacheDelete freed %lld bytes, available storage = %lld", v120, 0x20u);
          }
        }

        _Block_object_dispose(buf, 8);
      }

      totalSizeOfAutomaticDownloads2 = [resultCopy totalSizeOfAutomaticDownloads];
      v54 = &totalSizeOfAutomaticDownloads2[[resultCopy totalSizeOfManualDownloads]];
      if (v54 > v115[3])
      {
        v55 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
        {
          totalSizeOfAutomaticDownloads3 = [resultCopy totalSizeOfAutomaticDownloads];
          totalSizeOfManualDownloads4 = [resultCopy totalSizeOfManualDownloads];
          v58 = v115[3];
          *buf = 138543874;
          *&buf[4] = self;
          *&buf[12] = 2048;
          *&buf[14] = &totalSizeOfAutomaticDownloads3[totalSizeOfManualDownloads4];
          *&buf[22] = 2048;
          *&buf[24] = v58;
          _os_log_impl(&dword_0, v55, OS_LOG_TYPE_DEFAULT, "%{public}@ not enough free space for all downloads. needed=%lld, available=%lld", buf, 0x20u);
        }
      }

      v59 = +[NSMutableArray arrayWithCapacity:](NSMutableArray, "arrayWithCapacity:", [v84 count] + objc_msgSend(v29, "count"));
      v60 = +[NSMutableArray array];
      v73 = +[NSMutableArray array];
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      *&buf[24] = 0;
      v95[0] = _NSConcreteStackBlock;
      v95[1] = 3221225472;
      v95[2] = sub_662E8;
      v95[3] = &unk_9ECD0;
      v101 = buf;
      v102 = &v114;
      v95[4] = self;
      v104 = isCharging;
      v105 = isNetworkConstrained;
      v106 = IsCellular;
      v96 = v85;
      v103 = unsignedIntValue;
      v61 = v60;
      v97 = v61;
      v81 = v33;
      v98 = v81;
      v62 = v59;
      v99 = v62;
      v63 = trackProperties;
      v100 = v63;
      v64 = objc_retainBlock(v95);
      v93 = 0u;
      v94 = 0u;
      v91 = 0u;
      v92 = 0u;
      v65 = v84;
      v66 = [v65 countByEnumeratingWithState:&v91 objects:v119 count:16];
      if (v66)
      {
        v67 = *v92;
        do
        {
          for (i = 0; i != v66; i = i + 1)
          {
            if (*v92 != v67)
            {
              objc_enumerationMutation(v65);
            }

            (v64[2])(v64, *(*(&v91 + 1) + 8 * i));
          }

          v66 = [v65 countByEnumeratingWithState:&v91 objects:v119 count:16];
        }

        while (v66);
      }

      v89 = 0u;
      v90 = 0u;
      v87 = 0u;
      v88 = 0u;
      v69 = v77;
      v70 = [v69 countByEnumeratingWithState:&v87 objects:v118 count:16];
      if (v70)
      {
        v71 = *v88;
        do
        {
          for (j = 0; j != v70; j = j + 1)
          {
            if (*v88 != v71)
            {
              objc_enumerationMutation(v69);
            }

            (v64[2])(v64, *(*(&v87 + 1) + 8 * j));
          }

          v70 = [v69 countByEnumeratingWithState:&v87 objects:v118 count:16];
        }

        while (v70);
      }

      v29 = v77;
      [(MLSyncKeepLocalEventHandler *)self _notifyObserversWithDownloadsToEnqueue:v62 downloadsPending:v61 downloadsToCancel:v73 trackProperties:v63];

      _Block_object_dispose(buf, 8);
      _Block_object_dispose(&v114, 8);
    }

    v24 = trackProperties;
  }
}

- (void)_pruneActiveDownloads
{
  v3 = +[NSMutableSet set];
  v33 = +[MLSyncKeepLocalEventHandler keepLocalCancelledOrDisabledAndIsDownloadingOrPausedPredicate];
  v4 = [ML3Track unrestrictedAllItemsQueryWithlibrary:"unrestrictedAllItemsQueryWithlibrary:predicate:orderingTerms:" predicate:self->_library orderingTerms:?];
  v45[0] = _NSConcreteStackBlock;
  v45[1] = 3221225472;
  v45[2] = sub_66DF4;
  v45[3] = &unk_9EEC0;
  v5 = v3;
  v46 = v5;
  v32 = v4;
  [v4 enumeratePersistentIDsUsingBlock:v45];
  if ([v5 count])
  {
    v6 = _ATLogCategorySyncBundle_Oversize();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 count];
      *buf = 138543874;
      selfCopy4 = self;
      v52 = 1024;
      v53 = v7;
      v54 = 2114;
      v55 = v5;
      _os_log_impl(&dword_0, v6, OS_LOG_TYPE_DEFAULT, "%{public}@ Cancelling downloads for %d tracks because they are marked ML3EntityKeepLocalCancelled: %{public}@", buf, 0x1Cu);
    }

    allObjects = [v5 allObjects];
    v9 = [NSError errorWithDomain:@"ATError" code:2 userInfo:0];
    [(MLSyncKeepLocalEventHandler *)self _cancelDownloadsForTracksWithPersistentIDs:allObjects withError:v9];
  }

  v10 = +[NSMutableArray array];
  v31 = +[MLSyncKeepLocalEventHandler keepLocalDisabledAndHasTrackDataOrDownloadAndIsRedownloadablePredicate];
  v11 = [ML3Track unrestrictedAllItemsQueryWithlibrary:"unrestrictedAllItemsQueryWithlibrary:predicate:orderingTerms:" predicate:self->_library orderingTerms:?];
  v12 = ML3EntityPropertyKeepLocalStatus;
  v49 = ML3EntityPropertyKeepLocalStatus;
  v13 = [NSArray arrayWithObjects:&v49 count:1];
  v42[0] = _NSConcreteStackBlock;
  v42[1] = 3221225472;
  v42[2] = sub_66E54;
  v42[3] = &unk_9EC58;
  v29 = v5;
  v43 = v29;
  v14 = v10;
  v44 = v14;
  v30 = v11;
  [v11 enumeratePersistentIDsAndProperties:v13 usingBlock:v42];

  if ([v14 count])
  {
    v15 = _ATLogCategorySyncBundle_Oversize();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [v14 count];
      *buf = 138543874;
      selfCopy4 = self;
      v52 = 1024;
      v53 = v16;
      v54 = 2114;
      v55 = v14;
      _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Removing assets for %d tracks because they are marked ML3EntityKeepLocalDisabled: %{public}@", buf, 0x1Cu);
    }

    [ML3Track unlinkRedownloadableAssetsFromLibrary:self->_library persistentIDs:v14];
    library = self->_library;
    v39[0] = _NSConcreteStackBlock;
    v39[1] = 3221225472;
    v39[2] = sub_66ED8;
    v39[3] = &unk_9EEE8;
    v40 = v14;
    selfCopy3 = self;
    [(ML3MusicLibrary *)library performDatabaseTransactionWithBlock:v39];
  }

  v18 = +[NSMutableArray array];
  v19 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyHasNonPurgeableAsset value:&off_A0EF8 comparison:1];
  v20 = [ML3ComparisonPredicate predicateWithProperty:ML3EntityPropertyKeepLocal value:&off_A0F10 comparison:1];
  v48[0] = v19;
  v48[1] = v20;
  v21 = [NSArray arrayWithObjects:v48 count:2];
  v22 = [ML3AllCompoundPredicate predicateMatchingPredicates:v21];

  v23 = [ML3Track unrestrictedAllItemsQueryWithlibrary:self->_library predicate:v22 orderingTerms:0];
  v47 = v12;
  v24 = [NSArray arrayWithObjects:&v47 count:1];
  v37[0] = _NSConcreteStackBlock;
  v37[1] = 3221225472;
  v37[2] = sub_67354;
  v37[3] = &unk_9EC80;
  v25 = v18;
  v38 = v25;
  [v23 enumeratePersistentIDsAndProperties:v24 usingBlock:v37];

  if ([v25 count])
  {
    v26 = _ATLogCategorySyncBundle_Oversize();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v25 count];
      *buf = 138543874;
      selfCopy4 = self;
      v52 = 1024;
      v53 = v27;
      v54 = 2114;
      v55 = v25;
      _os_log_impl(&dword_0, v26, OS_LOG_TYPE_DEFAULT, "%{public}@ Clearing keep-local for %d tracks because they are marked ML3EntityKeepLocalCancelled but have downloaded assets: %{public}@", buf, 0x1Cu);
    }

    v28 = self->_library;
    v34[0] = _NSConcreteStackBlock;
    v34[1] = 3221225472;
    v34[2] = sub_673B4;
    v34[3] = &unk_9EEE8;
    v35 = v25;
    selfCopy5 = self;
    [(ML3MusicLibrary *)v28 performDatabaseTransactionWithBlock:v34];
  }
}

- (void)_handleAccountsChangedNotification:(id)notification
{
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_675D4;
  block[3] = &unk_9F248;
  block[4] = self;
  dispatch_async(queue, block);
}

- (BOOL)_canRunKeepLocalEvaluationByEnqueuingAssets:(BOOL)assets
{
  if (self->_startupCompleted)
  {
    if (self->_stop)
    {
      v4 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v10 = 138543362;
        selfCopy5 = self;
        v5 = "%{public}@ keep-local evaluations are stopped";
LABEL_10:
        _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, v5, &v10, 0xCu);
      }
    }

    else
    {
      assetsCopy = assets;
      if (CFPreferencesGetAppBooleanValue(@"PinningDisabled", @"com.apple.mobileipod", 0))
      {
        v4 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 138543362;
          selfCopy5 = self;
          v5 = "%{public}@ not starting a keep-local evaluation because pinning is disabled";
          goto LABEL_10;
        }
      }

      else
      {
        if (assetsCopy)
        {
          v8 = +[ICDeviceSetupStatusMonitor sharedMonitor];
          isDeviceSetupComplete = [v8 isDeviceSetupComplete];

          if ((isDeviceSetupComplete & 1) == 0)
          {
            v4 = _ATLogCategorySyncBundle();
            if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_11;
            }

            v10 = 138543362;
            selfCopy5 = self;
            v5 = "%{public}@ not starting a keep-local evaluation because device has not finished buddy";
            goto LABEL_10;
          }
        }

        if (ICSystemApplicationIsInstalled() & 1) != 0 || (ICSystemApplicationIsInstalled() & 1) != 0 || (ICSystemApplicationIsInstalled())
        {
          return 1;
        }

        v4 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
        {
          v10 = 138543362;
          selfCopy5 = self;
          v5 = "%{public}@ not starting a keep-local evaluation because there are no supported media apps installed";
          goto LABEL_10;
        }
      }
    }
  }

  else
  {
    v4 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138543362;
      selfCopy5 = self;
      v5 = "%{public}@ not starting a keep-local evaluation because atc hasn't finished starting up";
      goto LABEL_10;
    }
  }

LABEL_11:

  return 0;
}

- (void)_cancelDownloadsForTracksWithPersistentIDs:(id)ds withError:(id)error
{
  dsCopy = ds;
  callbackQueue = self->_callbackQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_67B50;
  block[3] = &unk_9EC30;
  block[4] = self;
  v8 = dsCopy;
  v19 = v8;
  errorCopy = error;
  dispatch_sync(callbackQueue, block);
  v10 = [v8 valueForKey:@"stringValue"];
  v11 = [NSPredicate predicateWithFormat:@"enqueueSource=%d and identifier IN %@", 2, v10];

  v12 = +[ATAssetLinkController sharedInstance];
  [v12 cancelAllAssetsMatchingPredicate:v11 excludeActiveDownloads:0 withError:errorCopy completion:0];

  library = self->_library;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_67C80;
  v15[3] = &unk_9EEE8;
  v16 = v8;
  selfCopy = self;
  v14 = v8;
  [(ML3MusicLibrary *)library performDatabaseTransactionWithBlock:v15];
}

- (void)startKeepLocalSessionInBackground:(BOOL)background forLibraryIdentifier:(int64_t)identifier entityType:(int64_t)type newKeepLocalStatus:(int)status
{
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_67DDC;
  v7[3] = &unk_9EBC8;
  statusCopy = status;
  backgroundCopy = background;
  v7[4] = self;
  v7[5] = identifier;
  v7[6] = type;
  dispatch_async(queue, v7);
}

- (void)startKeepLocalSessionToDownloadLibraryWithCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_68178;
  v7[3] = &unk_9EDE0;
  v7[4] = self;
  v8 = completionCopy;
  v6 = completionCopy;
  dispatch_async(queue, v7);
}

- (void)startKeepLocalSessionInBackground:(BOOL)background enqueueAssets:(BOOL)assets forceNoDelay:(BOOL)delay withCompletion:(id)completion
{
  completionCopy = completion;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_68430;
  block[3] = &unk_9EB78;
  assetsCopy = assets;
  backgroundCopy = background;
  delayCopy = delay;
  block[4] = self;
  v14 = completionCopy;
  v12 = completionCopy;
  dispatch_async(queue, block);
}

- (void)stop
{
  v3 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Stopping keep local event handler", &v6, 0xCu);
  }

  self->_stop = 1;
  [(NSXPCListener *)self->_keepLocalTaskConnection invalidate];
  v4 = +[NSNotificationCenter defaultCenter];
  [v4 removeObserver:self];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"com.apple.mobileipod.keeplocalstatechanged", 0);
}

- (void)start
{
  v3 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    selfCopy = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ AirTraffic startup complete - register for keep-local notifications", buf, 0xCu);
  }

  v4 = +[NSNotificationCenter defaultCenter];
  [v4 addObserver:self selector:"_handleImportFinishedNotification:" name:ML3MusicLibraryEntitiesAddedOrRemovedNotification object:0];

  v5 = +[NSNotificationCenter defaultCenter];
  [v5 addObserver:self selector:"_handleInitiateDownloadsNotification:" name:ATInitiateDownloadSessionsNotification object:0];

  v6 = +[NSNotificationCenter defaultCenter];
  [v6 addObserver:self selector:"_handleAccountsChangedNotification:" name:ICUserIdentityStoreDidChangeNotification object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, self, sub_68CC4, @"com.apple.mobileipod.keeplocalstatechanged", 0, CFNotificationSuspensionBehaviorDrop);
  v8 = +[ICBGTaskScheduler sharedTaskScheduler];
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 3221225472;
  v15[2] = sub_68BEC;
  v15[3] = &unk_9EB28;
  v15[4] = self;
  v9 = objc_retainBlock(v15);
  [v8 registerForTask:@"MLKeepLocalSessionPeriodicEvent" handler:v9];
  [v8 registerForTask:@"MLKeepLocalSessionEvent" handler:v9];
  if (([v8 hasScheduledTask:@"MLKeepLocalSessionPeriodicEvent"] & 1) == 0)
  {
    [v8 scheduleRecurringTask:@"MLKeepLocalSessionPeriodicEvent" withInterval:0 afterDelay:86400.0 withUserData:86400.0];
  }

  [v8 scheduleTask:@"MLKeepLocalSessionEvent" afterDelay:0 withUserData:60.0];
  v10 = [MSVXPCListener alloc];
  v11 = [v10 initWithMachServiceName:ATMachKeepLocalRequestHandlerServiceName];
  keepLocalTaskConnection = self->_keepLocalTaskConnection;
  self->_keepLocalTaskConnection = v11;

  [(NSXPCListener *)self->_keepLocalTaskConnection setDelegate:self];
  [(NSXPCListener *)self->_keepLocalTaskConnection resume];
  v13 = +[ICDeviceSetupStatusMonitor sharedMonitor];
  v14[0] = _NSConcreteStackBlock;
  v14[1] = 3221225472;
  v14[2] = sub_68CB8;
  v14[3] = &unk_9F248;
  v14[4] = self;
  [v13 performBlockAfterDeviceSetup:v14];

  self->_startupCompleted = 1;
}

- (MLSyncKeepLocalEventHandler)initWithQueue:(id)queue library:(id)library
{
  queueCopy = queue;
  libraryCopy = library;
  v21.receiver = self;
  v21.super_class = MLSyncKeepLocalEventHandler;
  v9 = [(MLSyncKeepLocalEventHandler *)&v21 init];
  if (v9)
  {
    v10 = dispatch_queue_create("com.apple.amp.MusicLibrarySyncBundle.MLSyncKeepLocalEventHandler.callBackQueue", &_dispatch_queue_attr_concurrent);
    callbackQueue = v9->_callbackQueue;
    v9->_callbackQueue = v10;

    v12 = +[ICEnvironmentMonitor sharedMonitor];
    environmentMonitor = v9->_environmentMonitor;
    v9->_environmentMonitor = v12;

    v14 = +[NSMutableSet set];
    keepLocalObservers = v9->_keepLocalObservers;
    v9->_keepLocalObservers = v14;

    v9->_startupCompleted = 0;
    v23 = 0;
    v24 = &v23;
    v25 = 0x2050000000;
    v16 = qword_A7728;
    v26 = qword_A7728;
    if (!qword_A7728)
    {
      v22[0] = _NSConcreteStackBlock;
      v22[1] = 3221225472;
      v22[2] = sub_68E84;
      v22[3] = &unk_9EE58;
      v22[4] = &v23;
      sub_68E84(v22);
      v16 = v24[3];
    }

    v17 = v16;
    _Block_object_dispose(&v23, 8);
    sharedDefaults = [v16 sharedDefaults];
    nanoSyncSettings = v9->_nanoSyncSettings;
    v9->_nanoSyncSettings = sharedDefaults;

    objc_storeStrong(&v9->_library, library);
    objc_storeStrong(&v9->_queue, queue);
  }

  return v9;
}

- (id)_allTracksDisabledForCollection:(id)collection
{
  collectionCopy = collection;
  _inMyLibraryPredicate = [(MLSyncKeepLocalEventHandler *)self _inMyLibraryPredicate];
  trackForeignPersistentID = [objc_opt_class() trackForeignPersistentID];
  persistentID = [collectionCopy persistentID];

  v8 = [ML3ComparisonPredicate predicateWithProperty:trackForeignPersistentID equalToInt64:persistentID];

  v9 = +[ML3MusicLibrary autoupdatingSharedLibrary];
  v14[0] = v8;
  v14[1] = _inMyLibraryPredicate;
  v10 = [NSArray arrayWithObjects:v14 count:2];
  v11 = [ML3AllCompoundPredicate predicateMatchingPredicates:v10];
  v12 = [ML3Track queryWithLibrary:v9 predicate:v11];

  return v12;
}

- (id)_anyTracksQueryForCollection:(id)collection
{
  collectionCopy = collection;
  _inMyLibraryPredicate = [(MLSyncKeepLocalEventHandler *)self _inMyLibraryPredicate];
  trackForeignPersistentID = [objc_opt_class() trackForeignPersistentID];
  persistentID = [collectionCopy persistentID];

  v8 = [ML3ComparisonPredicate predicateWithProperty:trackForeignPersistentID equalToInt64:persistentID];

  v9 = +[ML3MusicLibrary autoupdatingSharedLibrary];
  v14[0] = v8;
  v14[1] = _inMyLibraryPredicate;
  v10 = [NSArray arrayWithObjects:v14 count:2];
  v11 = [ML3AllCompoundPredicate predicateMatchingPredicates:v10];
  v12 = [ML3Track queryWithLibrary:v9 predicate:v11];

  return v12;
}

- (id)_trackQueryForEntityCollection:(id)collection predicate:(id)predicate
{
  collectionCopy = collection;
  predicateCopy = predicate;
  _inMyLibraryPredicate = [(MLSyncKeepLocalEventHandler *)self _inMyLibraryPredicate];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9 = collectionCopy;
    v10 = [v9 valueForProperty:ML3ContainerPropertySmartIsLimited];
    if ([v10 BOOLValue])
    {
      limitingProperty = [v9 limitingProperty];

      if (!limitingProperty)
      {
LABEL_6:
        v12 = [ML3Track containerQueryWithContainer:v9 predicate:predicateCopy];
LABEL_9:

        goto LABEL_11;
      }

      v10 = predicateCopy;
      predicateCopy = 0;
    }

    goto LABEL_6;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    trackForeignPersistentID = [objc_opt_class() trackForeignPersistentID];
    v9 = +[ML3ComparisonPredicate predicateWithProperty:equalToInt64:](ML3ComparisonPredicate, "predicateWithProperty:equalToInt64:", trackForeignPersistentID, [collectionCopy persistentID]);

    v14 = +[ML3MusicLibrary autoupdatingSharedLibrary];
    v19[0] = v9;
    v19[1] = _inMyLibraryPredicate;
    v19[2] = predicateCopy;
    v15 = [NSArray arrayWithObjects:v19 count:3];
    v16 = [ML3AllCompoundPredicate predicateMatchingPredicates:v15];
    v17 = +[ML3Track albumsByAlbumArtistDefaultOrderingTerms];
    v12 = [ML3Track queryWithLibrary:v14 predicate:v16 orderingTerms:v17];

    goto LABEL_9;
  }

  [NSException raise:NSInternalInconsistencyException format:@"Unexpected entity type %@", objc_opt_class()];
  v12 = 0;
LABEL_11:

  return v12;
}

- (id)_inMyLibraryPredicate
{
  if (qword_A7870 != -1)
  {
    dispatch_once(&qword_A7870, &stru_9F1B8);
  }

  v3 = qword_A7868;

  return v3;
}

- (BOOL)_isSupportedMediaTypeFromTrackProperties:(id)properties
{
  propertiesCopy = properties;
  v4 = [propertiesCopy objectForKey:ML3TrackPropertyMediaType];
  integerValue = [v4 integerValue];

  if (MSVDeviceIsWatch())
  {
    v6 = integerValue == 8;
  }

  else if ((integerValue & 8) != 0)
  {
    v6 = 1;
  }

  else
  {
    v7 = [propertiesCopy objectForKey:ML3TrackPropertyIsMusicShow];
    bOOLValue = [v7 BOOLValue];

    if ((integerValue & 0xA00) != 0)
    {
      v6 = bOOLValue;
    }

    else
    {
      v6 = 0;
    }
  }

  return v6;
}

- (BOOL)_containerIsSmartLimited:(id)limited
{
  limitedCopy = limited;
  v4 = [limitedCopy valueForProperty:ML3ContainerPropertySmartIsLimited];
  if ([v4 BOOLValue])
  {
    limitingProperty = [limitedCopy limitingProperty];
    v6 = limitingProperty != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)_searchableKeepLocalCollectionClasses
{
  if (qword_A7760 != -1)
  {
    dispatch_once(&qword_A7760, &stru_9F038);
  }

  v3 = qword_A7758;

  return v3;
}

- (void)_addTrackWithPersistentId:(int64_t)id andProperties:(id)properties withKeepLocalValue:(int)value toResult:(id)result
{
  propertiesCopy = properties;
  resultCopy = result;
  if ([(MLSyncKeepLocalEventHandler *)self _canDownloadTrackWithPersistentID:id andProperties:propertiesCopy])
  {
    valueCopy = value;
    v12 = ML3TrackPropertyTotalSize;
    v13 = [propertiesCopy objectForKey:ML3TrackPropertyTotalSize];
    unsignedLongLongValue = [v13 unsignedLongLongValue];

    v15 = ML3EntityPropertyKeepLocalConstraints;
    v16 = [propertiesCopy objectForKey:ML3EntityPropertyKeepLocalConstraints];
    integerValue = [v16 integerValue];

    v18 = [propertiesCopy mutableCopy];
    v19 = v18;
    if (!unsignedLongLongValue)
    {
      v49 = v18;
      v20 = [propertiesCopy objectForKey:ML3TrackPropertyMediaType];
      unsignedLongValue = [v20 unsignedLongValue];

      v22 = [propertiesCopy objectForKey:ML3TrackPropertyTotalTime];
      unsignedLongValue2 = [v22 unsignedLongValue];

      if ((unsignedLongValue & 4) != 0)
      {
        v24 = 52428800;
      }

      else if (unsignedLongValue2)
      {
        v24 = (unsignedLongValue2 * 35.8260224);
      }

      else
      {
        v24 = 7340032;
      }

      v25 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138544130;
        selfCopy3 = self;
        v57 = 2048;
        idCopy3 = id;
        v59 = 1024;
        *v60 = unsignedLongValue;
        *&v60[4] = 2048;
        *&v60[6] = v24;
        _os_log_impl(&dword_0, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ Estimating the size of track %lld media_type %u to %llu", buf, 0x26u);
      }

      v26 = [NSNumber numberWithUnsignedLongLong:v24];
      v19 = v49;
      [v49 setObject:v26 forKey:v12];
    }

    v27 = [resultCopy getTrackPropertiesForPersistentID:id];
    v28 = v27;
    if (!v27)
    {
LABEL_31:
      if (![resultCopy addTrackWithPersistentId:id properties:v19 downloadType:valueCopy == 1])
      {
LABEL_52:

        goto LABEL_53;
      }

      v40 = _ATLogCategorySyncBundle();
      if (!os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
LABEL_51:

        goto LABEL_52;
      }

      v52 = v19;
      if (valueCopy == 1)
      {
        v41 = "manual";
      }

      else
      {
        v41 = "automatic";
      }

      v42 = [[NSMutableArray alloc] initWithCapacity:3];
      if (integerValue)
      {
        v45 = [NSString stringWithFormat:@"inexpensive"];
        [v42 addObject:v45];

        if ((integerValue & 2) == 0)
        {
LABEL_38:
          if ((integerValue & 4) == 0)
          {
            goto LABEL_39;
          }

          goto LABEL_46;
        }
      }

      else if ((integerValue & 2) == 0)
      {
        goto LABEL_38;
      }

      v46 = [NSString stringWithFormat:@"wifi", v52];
      [v42 addObject:v46];

      if ((integerValue & 4) == 0)
      {
LABEL_39:
        if ((integerValue & 8) == 0)
        {
          goto LABEL_40;
        }

        goto LABEL_47;
      }

LABEL_46:
      v47 = [NSString stringWithFormat:@"power", v52];
      [v42 addObject:v47];

      if ((integerValue & 8) == 0)
      {
LABEL_40:
        if ((integerValue & 0x10) == 0)
        {
LABEL_42:
          if ([v42 count])
          {
            v44 = [v42 componentsJoinedByString:{@", "}];
          }

          else
          {
            v44 = @"None";
          }

          *buf = 138544130;
          selfCopy3 = self;
          v57 = 2048;
          idCopy3 = id;
          v59 = 2080;
          *v60 = v41;
          *&v60[8] = 2114;
          *&v60[10] = v44;
          _os_log_impl(&dword_0, v40, OS_LOG_TYPE_DEFAULT, "%{public}@ Adding track (%lld) for %s download with constraints [%{public}@]", buf, 0x2Au);

          v19 = v53;
          goto LABEL_51;
        }

LABEL_41:
        v43 = [NSString stringWithFormat:@"power-updates", v52];
        [v42 addObject:v43];

        goto LABEL_42;
      }

LABEL_47:
      v48 = [NSString stringWithFormat:@"wifi-updates", v52];
      [v42 addObject:v48];

      if ((integerValue & 0x10) == 0)
      {
        goto LABEL_42;
      }

      goto LABEL_41;
    }

    v29 = [v27 objectForKeyedSubscript:v15];
    longLongValue = [v29 longLongValue];

    integerValue &= longLongValue;
    if (integerValue == longLongValue)
    {
      LOBYTE(integerValue) = longLongValue;
      goto LABEL_31;
    }

    v31 = [NSNumber numberWithUnsignedInteger:integerValue];
    [v19 setObject:v31 forKeyedSubscript:v15];

    [resultCopy updateTrackProperties:v19 forPersistendID:id];
    v32 = _ATLogCategorySyncBundle();
    if (!os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
LABEL_30:

      goto LABEL_31;
    }

    v50 = v19;
    v33 = [[NSMutableArray alloc] initWithCapacity:3];
    if (integerValue)
    {
      v36 = [NSString stringWithFormat:@"inexpensive"];
      [v33 addObject:v36];

      if ((integerValue & 2) == 0)
      {
LABEL_17:
        if ((integerValue & 4) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_25;
      }
    }

    else if ((integerValue & 2) == 0)
    {
      goto LABEL_17;
    }

    v37 = [NSString stringWithFormat:@"wifi", v50];
    [v33 addObject:v37];

    if ((integerValue & 4) == 0)
    {
LABEL_18:
      if ((integerValue & 8) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_26;
    }

LABEL_25:
    v38 = [NSString stringWithFormat:@"power", v50];
    [v33 addObject:v38];

    if ((integerValue & 8) == 0)
    {
LABEL_19:
      if ((integerValue & 0x10) == 0)
      {
LABEL_21:
        if ([v33 count])
        {
          v35 = [v33 componentsJoinedByString:{@", "}];
        }

        else
        {
          v35 = @"None";
        }

        *buf = 138543874;
        selfCopy3 = self;
        v57 = 2048;
        idCopy3 = id;
        v59 = 2114;
        *v60 = v35;
        _os_log_impl(&dword_0, v32, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating track (%lld) with new constraints [%{public}@]", buf, 0x20u);

        v19 = v51;
        goto LABEL_30;
      }

LABEL_20:
      v34 = [NSString stringWithFormat:@"power-updates", v50];
      [v33 addObject:v34];

      goto LABEL_21;
    }

LABEL_26:
    v39 = [NSString stringWithFormat:@"wifi-updates", v50];
    [v33 addObject:v39];

    if ((integerValue & 0x10) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

LABEL_53:
}

- (BOOL)_canDownloadTrackWithPersistentID:(int64_t)d andProperties:(id)properties
{
  propertiesCopy = properties;
  v8 = [propertiesCopy objectForKey:ML3EntityPropertyKeepLocal];
  integerValue = [v8 integerValue];

  if (integerValue == -1)
  {
    v14 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [propertiesCopy objectForKeyedSubscript:ML3TrackPropertyTitle];
      v26 = 138543874;
      selfCopy3 = self;
      v28 = 2048;
      dCopy3 = d;
      v30 = 2114;
      v31 = v15;
      v16 = "%{public}@ Track %lld (%{public}@) is marked as disabled - ignoring";
      goto LABEL_17;
    }

LABEL_18:

    v24 = 0;
    goto LABEL_19;
  }

  v10 = [propertiesCopy objectForKey:ML3TrackPropertyStoreSagaID];
  longLongValue = [v10 longLongValue];
  if (longLongValue || ([propertiesCopy objectForKey:ML3TrackPropertySubscriptionStoreItemID], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v4, "longLongValue")))
  {
    v12 = [propertiesCopy objectForKey:ML3TrackPropertyStoreCloudAssetAvailable];
    bOOLValue = [v12 BOOLValue];

    if (!longLongValue)
    {
    }

    if ((bOOLValue & 1) == 0)
    {
      v14 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = [propertiesCopy objectForKeyedSubscript:ML3TrackPropertyTitle];
        v26 = 138543874;
        selfCopy3 = self;
        v28 = 2048;
        dCopy3 = d;
        v30 = 2114;
        v31 = v15;
        v16 = "%{public}@ Track %lld (%{public}@) has cloud asset unavailable - ignoring";
LABEL_17:
        _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, v16, &v26, 0x20u);

        goto LABEL_18;
      }

      goto LABEL_18;
    }
  }

  else
  {
  }

  v17 = [propertiesCopy objectForKey:ML3TrackPropertyMediaType];
  unsignedIntValue = [v17 unsignedIntValue];

  v19 = unsignedIntValue & 0xA00;
  v20 = [propertiesCopy objectForKey:ML3TrackPropertyNeedsRestore];
  bOOLValue2 = [v20 BOOLValue];

  v22 = [propertiesCopy objectForKey:ML3TrackPropertyIsMusicShow];
  bOOLValue3 = [v22 BOOLValue];

  v24 = 1;
  if (v19 && (bOOLValue2 & 1) == 0 && (bOOLValue3 & 1) == 0)
  {
    v14 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [propertiesCopy objectForKeyedSubscript:ML3TrackPropertyTitle];
      v26 = 138543874;
      selfCopy3 = self;
      v28 = 2048;
      dCopy3 = d;
      v30 = 2114;
      v31 = v15;
      v16 = "%{public}@ Track %lld (%{public}@) is a non-Restore, non-Music show or movie - ignoring";
      goto LABEL_17;
    }

    goto LABEL_18;
  }

LABEL_19:

  return v24;
}

- (void)_performKeepLocalEvaluationOnCollection:(id)collection withProperties:(id)properties fromLibrary:(id)library toResult:(id)result
{
  collectionCopy = collection;
  propertiesCopy = properties;
  libraryCopy = library;
  resultCopy = result;
  v71 = 0;
  v72 = &v71;
  v73 = 0x2020000000;
  v74 = 1;
  v67 = 0;
  v68 = &v67;
  v69 = 0x2020000000;
  v70 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x2020000000;
  v66 = 0;
  v59 = 0;
  v60 = &v59;
  v61 = 0x2020000000;
  v62 = 0;
  v46 = propertiesCopy;
  v13 = [propertiesCopy objectForKeyedSubscript:ML3EntityPropertyKeepLocalConstraints];
  longLongValue = [v13 longLongValue];

  v15 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [[NSMutableArray alloc] initWithCapacity:3];
    if (longLongValue)
    {
      v17 = [NSString stringWithFormat:@"inexpensive"];
      [v16 addObject:v17];
    }

    if ((longLongValue & 2) != 0)
    {
      v18 = [NSString stringWithFormat:@"wifi"];
      [v16 addObject:v18];
    }

    if ((longLongValue & 4) != 0)
    {
      v19 = [NSString stringWithFormat:@"power"];
      [v16 addObject:v19];
    }

    if ((longLongValue & 8) != 0)
    {
      v20 = [NSString stringWithFormat:@"wifi-updates"];
      [v16 addObject:v20];
    }

    if ((longLongValue & 0x10) != 0)
    {
      v21 = [NSString stringWithFormat:@"power-updates"];
      [v16 addObject:v21];
    }

    if ([v16 count])
    {
      v22 = [v16 componentsJoinedByString:{@", "}];
    }

    else
    {
      v22 = @"None";
    }

    *buf = 138543874;
    selfCopy8 = self;
    v80 = 2114;
    v81 = collectionCopy;
    v82 = 2114;
    v83 = v22;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Evaluating keep-local on %{public}@ with constraints [%{public}@]", buf, 0x20u);
  }

  v23 = ML3EntityPropertyKeepLocal;
  v24 = [v46 objectForKeyedSubscript:ML3EntityPropertyKeepLocal];
  integerValue = [v24 integerValue];

  v44 = ML3EntityPropertyKeepLocalStatus;
  v26 = [v46 objectForKeyedSubscript:?];
  integerValue2 = [v26 integerValue];

  v28 = +[MLSyncKeepLocalEventHandler _trackPropertiesToFetch];
  missingTrackDataPredicate = [objc_opt_class() missingTrackDataPredicate];
  v30 = [(MLSyncKeepLocalEventHandler *)self _trackQueryForEntityCollection:collectionCopy predicate:missingTrackDataPredicate];

  v47[0] = _NSConcreteStackBlock;
  v47[1] = 3221225472;
  v47[2] = sub_6ABB4;
  v47[3] = &unk_9EFD8;
  v53 = &v63;
  v31 = libraryCopy;
  v48 = v31;
  v32 = v28;
  v49 = v32;
  v33 = collectionCopy;
  v50 = v33;
  selfCopy2 = self;
  v54 = &v67;
  v55 = &v71;
  v56 = &v59;
  v57 = longLongValue;
  v58 = integerValue;
  v34 = resultCopy;
  v52 = v34;
  [v30 enumeratePersistentIDsUsingBlock:v47];
  v35 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
  {
    v36 = v60[3];
    *buf = 138543874;
    selfCopy8 = self;
    v80 = 2048;
    v81 = v36;
    v82 = 2114;
    v83 = v33;
    _os_log_impl(&dword_0, v35, OS_LOG_TYPE_DEFAULT, "%{public}@ Found %lu tracks to download for %{public}@", buf, 0x20u);
  }

  if (v68[3])
  {
    if (v60[3])
    {
      if ((integerValue2 & 0xFFFFFFFD) == 0)
      {
        v37 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy8 = self;
          v80 = 2114;
          v81 = v33;
          _os_log_impl(&dword_0, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ Marking %{public}@ as downloading", buf, 0x16u);
        }

        v75[0] = v44;
        v75[1] = ML3EntityPropertyKeepLocalStatusReason;
        v38 = [NSArray arrayWithObjects:v75 count:2];
        [(__CFString *)v33 setValues:&off_A15C0 forProperties:v38];
LABEL_45:
      }
    }

    else if (integerValue2 - 1 <= 1)
    {
      v43 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy8 = self;
        v80 = 2114;
        v81 = v33;
        _os_log_impl(&dword_0, v43, OS_LOG_TYPE_DEFAULT, "%{public}@ Marking %{public}@ as none", buf, 0x16u);
      }

      v76[0] = v44;
      v76[1] = ML3EntityPropertyKeepLocalStatusReason;
      v38 = [NSArray arrayWithObjects:v76 count:2];
      [(__CFString *)v33 setValues:&off_A15A8 forProperties:v38];
      goto LABEL_45;
    }
  }

  else
  {
    if (*(v64 + 24) == 1 && *(v72 + 24) == 1)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([(MLSyncKeepLocalEventHandler *)self _containerIsSmartLimited:v33])
        {
          v39 = _ATLogCategorySyncBundle();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            selfCopy8 = self;
            v80 = 2114;
            v81 = v33;
            _os_log_impl(&dword_0, v39, OS_LOG_TYPE_DEFAULT, "%{public}@ de-Up-Pinning %{public}@ because all tracks are marked as disabled", buf, 0x16u);
          }

          [(__CFString *)v33 setValue:&off_A0F88 forProperty:v23];
        }
      }
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v40 = [(MLSyncKeepLocalEventHandler *)self _anyTracksQueryForCollection:v33];
      if (([v40 hasEntities] & 1) == 0)
      {
        v41 = _ATLogCategorySyncBundle();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          selfCopy8 = self;
          v80 = 2114;
          v81 = v33;
          _os_log_impl(&dword_0, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ Disabling pinning for %{public}@ because it has no tracks", buf, 0x16u);
        }

        [(__CFString *)v33 setValue:&off_A0F88 forProperty:v23];
      }
    }

    if (integerValue2 != 2)
    {
      v42 = _ATLogCategorySyncBundle();
      if (os_log_type_enabled(v42, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        selfCopy8 = self;
        v80 = 2114;
        v81 = v33;
        _os_log_impl(&dword_0, v42, OS_LOG_TYPE_DEFAULT, "%{public}@ Marking %{public}@ as complete", buf, 0x16u);
      }

      v77[0] = v44;
      v77[1] = ML3EntityPropertyKeepLocalStatusReason;
      v38 = [NSArray arrayWithObjects:v77 count:2];
      [(__CFString *)v33 setValues:&off_A1590 forProperties:v38];
      goto LABEL_45;
    }
  }

  _Block_object_dispose(&v59, 8);
  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v67, 8);
  _Block_object_dispose(&v71, 8);
}

- (id)_runKeepLocalEvaluationForAlbumWithPersistentId:(int64_t)id musicLibrary:(id)library
{
  libraryCopy = library;
  v7 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    selfCopy = self;
    v15 = 2048;
    idCopy = id;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Evaluating keep-local rules for album:%lld", &v13, 0x16u);
  }

  v8 = [[ML3Album alloc] initWithPersistentID:id inLibrary:libraryCopy];
  v9 = +[MLSyncKeepLocalEventHandler _collectionPropertiesToFetch];
  v10 = [v8 getValuesForProperties:v9];
  v11 = objc_alloc_init(MLSyncKeepLocalEvaluationResult);
  [(MLSyncKeepLocalEventHandler *)self _performKeepLocalEvaluationOnCollection:v8 withProperties:v10 fromLibrary:libraryCopy toResult:v11];

  return v11;
}

- (id)_runKeepLocalEvaluationForContainerWithPersistentId:(int64_t)id musicLibrary:(id)library
{
  libraryCopy = library;
  v7 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138543618;
    selfCopy = self;
    v15 = 2048;
    idCopy = id;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Evaluating keep-local rules for playlist:%lld", &v13, 0x16u);
  }

  v8 = [ML3Container newWithPersistentID:id inLibrary:libraryCopy];
  v9 = +[MLSyncKeepLocalEventHandler _collectionPropertiesToFetch];
  v10 = [v8 getValuesForProperties:v9];
  v11 = objc_alloc_init(MLSyncKeepLocalEvaluationResult);
  [(MLSyncKeepLocalEventHandler *)self _performKeepLocalEvaluationOnCollection:v8 withProperties:v10 fromLibrary:libraryCopy toResult:v11];

  return v11;
}

- (id)_runKeepLocalEvaluationForTrackWithPersistentId:(int64_t)id musicLibrary:(id)library
{
  libraryCopy = library;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = sub_6B3A8;
  v22 = sub_6B3B8;
  v23 = objc_alloc_init(MLSyncKeepLocalEvaluationResult);
  v7 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    selfCopy = self;
    v26 = 2048;
    idCopy = id;
    _os_log_impl(&dword_0, v7, OS_LOG_TYPE_DEFAULT, "%{public}@ Evaluating keep-local rules for track:%lld", buf, 0x16u);
  }

  v8 = [objc_opt_class() keepLocalWithMissingTrackDataAndIsDownloadablePredicateForIdentifier:id];
  v9 = [ML3Track queryWithLibrary:libraryCopy predicate:v8];

  v13[0] = _NSConcreteStackBlock;
  v13[1] = 3221225472;
  v13[2] = sub_6B3C0;
  v13[3] = &unk_9EFB0;
  idCopy2 = id;
  v10 = libraryCopy;
  v14 = v10;
  selfCopy2 = self;
  v16 = &v18;
  [v9 enumeratePersistentIDsUsingBlock:v13];
  v11 = v19[5];

  _Block_object_dispose(&v18, 8);

  return v11;
}

- (int64_t)sizeOfMediaItemsDownloadedForAutomaticallyPinnedCollectionsWithMusicLibrary:(id)library
{
  v4 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138543618;
    selfCopy = self;
    v8 = 2048;
    v9 = 0;
    _os_log_impl(&dword_0, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ sizeOfMediaItemsDownloadedForAutomaticallyPinnedCollections=%lld", &v6, 0x16u);
  }

  return 0;
}

- (id)setKeepLocalForAllMusicItemsWithLibrary:(id)library
{
  libraryCopy = library;
  v5 = [[MSVXPCTransaction alloc] initWithName:@"setKeepLocalForAllMusicItemsWithLibrary"];
  [v5 beginTransaction];
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = sub_6B3A8;
  v36 = sub_6B3B8;
  v37 = objc_alloc_init(MLSyncKeepLocalEvaluationResult);
  v21 = +[MLSyncKeepLocalEventHandler _trackPropertiesToFetch];
  v6 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyMediaType value:&off_A1000 comparison:10];
  _inMyLibraryPredicate = [(MLSyncKeepLocalEventHandler *)self _inMyLibraryPredicate];
  v44[0] = _inMyLibraryPredicate;
  v8 = +[MLSyncKeepLocalEventHandler isDownloadablePredicate];
  v44[1] = v8;
  v44[2] = v6;
  v9 = +[MLSyncKeepLocalEventHandler hasTrackDataOrPendingDownloadPredicate];
  v10 = [ML3NegationPredicate predicateWithPredicate:v9];
  v44[3] = v10;
  v11 = [NSArray arrayWithObjects:v44 count:4];
  v12 = [ML3AllCompoundPredicate predicateMatchingPredicates:v11];

  v13 = [ML3Track unrestrictedAllItemsQueryWithlibrary:libraryCopy predicate:v12 orderingTerms:0];
  +[NSMutableSet set];
  v30[0] = _NSConcreteStackBlock;
  v30[1] = 3221225472;
  v30[2] = sub_6B9A8;
  v14 = v30[3] = &unk_9EEC0;
  v31 = v14;
  [v13 enumeratePersistentIDsUsingBlock:v30];
  v15 = _ATLogCategorySyncBundle_Oversize();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543874;
    selfCopy = self;
    v40 = 1024;
    v41 = 1;
    v42 = 2114;
    v43 = v14;
    _os_log_impl(&dword_0, v15, OS_LOG_TYPE_DEFAULT, "%{public}@ Manually setting keep local=%d on %{public}@ tracks", buf, 0x1Cu);
  }

  if ([v14 count])
  {
    v27[0] = _NSConcreteStackBlock;
    v27[1] = 3221225472;
    v27[2] = sub_6BA08;
    v27[3] = &unk_9EEE8;
    v16 = v14;
    v28 = v16;
    v17 = libraryCopy;
    v29 = v17;
    [v17 performDatabaseTransactionWithBlock:v27];
    v18 = objc_autoreleasePoolPush();
    v22[0] = _NSConcreteStackBlock;
    v22[1] = 3221225472;
    v22[2] = sub_6BAEC;
    v22[3] = &unk_9EF88;
    v23 = v17;
    v24 = v21;
    selfCopy2 = self;
    v26 = &v32;
    [v16 enumerateObjectsUsingBlock:v22];

    objc_autoreleasePoolPop(v18);
  }

  [v5 endTransaction];
  v19 = v33[5];

  _Block_object_dispose(&v32, 8);

  return v19;
}

- (id)runDefaultKeepLocalEvaluationWithMusicLibrary:(id)library
{
  libraryCopy = library;
  v3 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = self;
    _os_log_impl(&dword_0, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ Evaluating default keep-local rules", &buf, 0xCu);
  }

  v61 = [[MSVXPCTransaction alloc] initWithName:@"RunDefaultKeepLocalRulesOperation"];
  [v61 beginTransaction];
  *&buf = 0;
  *(&buf + 1) = &buf;
  v119 = 0x3032000000;
  v120 = sub_6B3A8;
  v121 = sub_6B3B8;
  v122 = objc_alloc_init(MLSyncKeepLocalEvaluationResult);
  v4 = +[MLSyncKeepLocalEventHandler _trackPropertiesToFetch];
  v65 = +[MLSyncKeepLocalEventHandler _collectionPropertiesToFetch];
  v5 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v108 = 138543362;
    selfCopy7 = self;
    _os_log_impl(&dword_0, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ Searching for keep-local tracks", v108, 0xCu);
  }

  keepLocalAndMissingTrackDataPredicate = [objc_opt_class() keepLocalAndMissingTrackDataPredicate];
  v6 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyNeedsRestore equalToInt64:1];
  [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyStoreItemID value:&off_A0F88 comparison:2];
  v56 = v55 = v6;
  v117[0] = v6;
  v117[1] = v56;
  v7 = [NSArray arrayWithObjects:v117 count:2];
  v62 = [ML3AllCompoundPredicate predicateMatchingPredicates:v7];

  v116[0] = keepLocalAndMissingTrackDataPredicate;
  v116[1] = v62;
  v8 = [NSArray arrayWithObjects:v116 count:2];
  v59 = [ML3AnyCompoundPredicate predicateMatchingPredicates:v8];

  v9 = [ML3Track unrestrictedAllItemsQueryWithlibrary:libraryCopy predicate:v59 orderingTerms:0];
  v104[0] = _NSConcreteStackBlock;
  v104[1] = 3221225472;
  v104[2] = sub_6C940;
  v104[3] = &unk_9EE98;
  v10 = v4;
  v105 = v10;
  selfCopy2 = self;
  p_buf = &buf;
  [v9 enumeratePersistentIDsAndProperties:v10 usingBlock:v104];
  v11 = +[NSMutableArray array];
  [objc_opt_class() keepLocalAndDownloadingButNotDownloadablePredicate];
  v52 = v10;
  v54 = v53 = v9;
  v115[0] = v54;
  v12 = [ML3NegationPredicate predicateWithPredicate:v62];
  v115[1] = v12;
  v13 = [NSArray arrayWithObjects:v115 count:2];
  v58 = [ML3AllCompoundPredicate predicateMatchingPredicates:v13];

  v57 = [ML3Track unrestrictedAllItemsQueryWithlibrary:libraryCopy predicate:v58 orderingTerms:0];
  v102[0] = _NSConcreteStackBlock;
  v102[1] = 3221225472;
  v102[2] = sub_6CA54;
  v102[3] = &unk_9EEC0;
  v63 = v11;
  v103 = v63;
  [v57 enumeratePersistentIDsUsingBlock:v102];
  v14 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *v108 = 138543618;
    selfCopy7 = self;
    v110 = 2114;
    *v111 = v63;
    _os_log_impl(&dword_0, v14, OS_LOG_TYPE_DEFAULT, "%{public}@ Clearing keep-local downloading status for tracks no longer downloadable: %{public}@", v108, 0x16u);
  }

  if ([v63 count])
  {
    v99[0] = _NSConcreteStackBlock;
    v99[1] = 3221225472;
    v99[2] = sub_6CAB4;
    v99[3] = &unk_9EEE8;
    v100 = v63;
    v101 = libraryCopy;
    [v101 performDatabaseTransactionWithBlock:v99];
  }

  v15 = objc_opt_new();
  v66 = objc_opt_new();
  _searchableKeepLocalCollectionClasses = [(MLSyncKeepLocalEventHandler *)self _searchableKeepLocalCollectionClasses];
  v17 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *v108 = 138543618;
    selfCopy7 = self;
    v110 = 2114;
    *v111 = _searchableKeepLocalCollectionClasses;
    _os_log_impl(&dword_0, v17, OS_LOG_TYPE_DEFAULT, "%{public}@ Searching for keep local collections in %{public}@", v108, 0x16u);
  }

  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = _searchableKeepLocalCollectionClasses;
  v18 = [obj countByEnumeratingWithState:&v95 objects:v114 count:16];
  if (v18)
  {
    v19 = *v96;
    do
    {
      for (i = 0; i != v18; i = i + 1)
      {
        if (*v96 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v95 + 1) + 8 * i);
        v22 = objc_autoreleasePoolPush();
        keepLocalEnabledPredicate = [objc_opt_class() keepLocalEnabledPredicate];
        v24 = [v21 queryWithLibrary:libraryCopy predicate:keepLocalEnabledPredicate];

        v89[0] = _NSConcreteStackBlock;
        v89[1] = 3221225472;
        v89[2] = sub_6CB88;
        v89[3] = &unk_9EF10;
        v25 = v65;
        v90 = v25;
        v94 = v21;
        v91 = libraryCopy;
        v92 = v66;
        v93 = v15;
        [v24 enumeratePersistentIDsAndProperties:v25 usingBlock:v89];

        objc_autoreleasePoolPop(v22);
      }

      v18 = [obj countByEnumeratingWithState:&v95 objects:v114 count:16];
    }

    while (v18);
  }

  v87 = 0u;
  v88 = 0u;
  v85 = 0u;
  v86 = 0u;
  v26 = v15;
  v27 = [v26 countByEnumeratingWithState:&v85 objects:v113 count:16];
  if (v27)
  {
    v28 = *v86;
    do
    {
      for (j = 0; j != v27; j = j + 1)
      {
        if (*v86 != v28)
        {
          objc_enumerationMutation(v26);
        }

        v30 = *(*(&v85 + 1) + 8 * j);
        v31 = objc_autoreleasePoolPush();
        v32 = [v66 objectForKeyedSubscript:v30];
        [(MLSyncKeepLocalEventHandler *)self _performKeepLocalEvaluationOnCollection:v30 withProperties:v32 fromLibrary:libraryCopy toResult:*(*(&buf + 1) + 40)];

        objc_autoreleasePoolPop(v31);
      }

      v27 = [v26 countByEnumeratingWithState:&v85 objects:v113 count:16];
    }

    while (v27);
  }

  v33 = objc_opt_new();
  v34 = objc_opt_new();
  v82[0] = _NSConcreteStackBlock;
  v82[1] = 3221225472;
  v82[2] = sub_6CC8C;
  v82[3] = &unk_9EF38;
  v35 = v33;
  v83 = v35;
  v36 = v34;
  v84 = v36;
  [libraryCopy databaseConnectionAllowingWrites:0 withBlock:v82];
  if ([v35 count] || objc_msgSend(v36, "count"))
  {
    v77[0] = _NSConcreteStackBlock;
    v77[1] = 3221225472;
    v77[2] = sub_6CDD4;
    v77[3] = &unk_9EF60;
    v78 = v35;
    selfCopy5 = self;
    v80 = libraryCopy;
    v81 = v36;
    [v80 performDatabaseTransactionWithBlock:v77];
  }

  v37 = +[NSMutableArray array];
  v38 = [ML3ComparisonPredicate predicateWithProperty:ML3EntityPropertyKeepLocalStatus value:&off_A0FB8 comparison:2];
  v39 = [ML3ComparisonPredicate predicateWithProperty:ML3TrackPropertyHasNonPurgeableAsset value:&off_A0FE8 comparison:1];
  v112[0] = v39;
  v51 = v38;
  v112[1] = v38;
  v40 = [NSArray arrayWithObjects:v112 count:2];
  v41 = [ML3AllCompoundPredicate predicateMatchingPredicates:v40];

  v42 = [ML3Track unrestrictedAllItemsQueryWithlibrary:libraryCopy predicate:v41 orderingTerms:0];
  v75[0] = _NSConcreteStackBlock;
  v75[1] = 3221225472;
  v75[2] = sub_6CFD4;
  v75[3] = &unk_9EEC0;
  v43 = v37;
  v76 = v43;
  [v42 enumeratePersistentIDsUsingBlock:v75];
  if ([v43 count])
  {
    v44 = _ATLogCategorySyncBundle_Oversize();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = [v43 count];
      *v108 = 138543874;
      selfCopy7 = self;
      v110 = 1024;
      *v111 = v45;
      *&v111[4] = 2114;
      *&v111[6] = v43;
      _os_log_impl(&dword_0, v44, OS_LOG_TYPE_DEFAULT, "%{public}@ Updating keep-local-status to complete for %d tracks because they have downloaded assets: %{public}@", v108, 0x1Cu);
    }

    v72[0] = _NSConcreteStackBlock;
    v72[1] = 3221225472;
    v72[2] = sub_6D034;
    v72[3] = &unk_9EEE8;
    v73 = v43;
    v74 = libraryCopy;
    [v74 performDatabaseTransactionWithBlock:v72];
  }

  v46 = +[ICDeviceInfo currentDeviceInfo];
  isWatch = [v46 isWatch];

  if (isWatch)
  {
    v48 = _ATLogCategorySyncBundle();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *v108 = 138543362;
      selfCopy7 = self;
      _os_log_impl(&dword_0, v48, OS_LOG_TYPE_DEFAULT, "%{public}@ Checking if we should perform a keep-local reset", v108, 0xCu);
    }

    v69[0] = _NSConcreteStackBlock;
    v69[1] = 3221225472;
    v69[2] = sub_6D108;
    v69[3] = &unk_9EEE8;
    v70 = libraryCopy;
    selfCopy8 = self;
    [v70 performDatabaseTransactionWithBlock:v69];
  }

  [v61 endTransaction];
  v49 = *(*(&buf + 1) + 40);

  _Block_object_dispose(&buf, 8);

  return v49;
}

- (id)runKeepLocalEvaluationForItem:(int64_t)item entityType:(int64_t)type newKeepLocalStatus:(int)status musicLibrary:(id)library
{
  libraryCopy = library;
  v10 = [[MSVXPCTransaction alloc] initWithName:@"RunKeepLocalRulesOperation"];
  [v10 beginTransaction];
  switch(type)
  {
    case 4:
      v11 = [(MLSyncKeepLocalEventHandler *)self _runKeepLocalEvaluationForAlbumWithPersistentId:item musicLibrary:libraryCopy];
      goto LABEL_7;
    case 1:
      v11 = [(MLSyncKeepLocalEventHandler *)self _runKeepLocalEvaluationForContainerWithPersistentId:item musicLibrary:libraryCopy];
      goto LABEL_7;
    case 0:
      v11 = [(MLSyncKeepLocalEventHandler *)self _runKeepLocalEvaluationForTrackWithPersistentId:item musicLibrary:libraryCopy];
LABEL_7:
      v12 = v11;
      goto LABEL_11;
  }

  v13 = _ATLogCategorySyncBundle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v15 = 138543618;
    selfCopy = self;
    v17 = 1024;
    typeCopy = type;
    _os_log_impl(&dword_0, v13, OS_LOG_TYPE_ERROR, "%{public}@ Cannot evaluate keep-local rules for invalid entity type:%d", &v15, 0x12u);
  }

  v12 = 0;
LABEL_11:
  [v10 endTransaction];

  return v12;
}

+ (id)keepLocalAndDownloadingButNotDownloadablePredicate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6D6F0;
  block[3] = &unk_9F118;
  block[4] = self;
  if (qword_A7860 != -1)
  {
    dispatch_once(&qword_A7860, block);
  }

  v2 = qword_A7858;

  return v2;
}

+ (id)hasDownloadingStatusPredicate
{
  if (qword_A7850 != -1)
  {
    dispatch_once(&qword_A7850, &stru_9F198);
  }

  v3 = qword_A7848;

  return v3;
}

+ (id)isDownloadablePredicate
{
  if (qword_A7840 != -1)
  {
    dispatch_once(&qword_A7840, &stru_9F178);
  }

  v3 = qword_A7838;

  return v3;
}

+ (id)keepLocalCancelledOrDisabledAndIsDownloadingOrPausedPredicate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6D9FC;
  block[3] = &unk_9F118;
  block[4] = self;
  if (qword_A7830 != -1)
  {
    dispatch_once(&qword_A7830, block);
  }

  v2 = qword_A7828;

  return v2;
}

+ (id)keepLocalDisabledAndHasTrackDataOrDownloadAndIsRedownloadablePredicate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6DBCC;
  block[3] = &unk_9F118;
  block[4] = self;
  if (qword_A7820 != -1)
  {
    dispatch_once(&qword_A7820, block);
  }

  v2 = qword_A7818;

  return v2;
}

+ (id)hasTrackDataOrPendingDownloadPredicate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6DD60;
  block[3] = &unk_9F118;
  block[4] = self;
  if (qword_A7810 != -1)
  {
    dispatch_once(&qword_A7810, block);
  }

  v2 = qword_A7808;

  return v2;
}

+ (id)hasPendingDownloadPredicate
{
  if (qword_A7800 != -1)
  {
    dispatch_once(&qword_A7800, &stru_9F158);
  }

  v3 = qword_A77F8;

  return v3;
}

+ (id)keepLocalWithMissingTrackDataAndIsDownloadablePredicateForIdentifier:(int64_t)identifier
{
  v4 = [self trackMatchingItemIdentifierPredicate:identifier];
  missingTrackDataPredicate = [self missingTrackDataPredicate];
  v10[1] = missingTrackDataPredicate;
  isDownloadablePredicate = [self isDownloadablePredicate];
  v10[2] = isDownloadablePredicate;
  v7 = [NSArray arrayWithObjects:v10 count:3];
  v8 = [ML3AllCompoundPredicate predicateMatchingPredicates:v7];

  return v8;
}

+ (id)keepLocalAndMissingTrackDataPredicate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6E150;
  block[3] = &unk_9F118;
  block[4] = self;
  if (qword_A77F0 != -1)
  {
    dispatch_once(&qword_A77F0, block);
  }

  v2 = qword_A77E8;

  return v2;
}

+ (id)keepLocalCancelledPredicate
{
  if (qword_A77E0 != -1)
  {
    dispatch_once(&qword_A77E0, &stru_9F138);
  }

  v3 = qword_A77D8;

  return v3;
}

+ (id)hasTrackDataAndNotManuallyPinnedPredicate
{
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_6E370;
  block[3] = &unk_9F118;
  block[4] = self;
  if (qword_A77D0 != -1)
  {
    dispatch_once(&qword_A77D0, block);
  }

  v2 = qword_A77C8;

  return v2;
}

+ (id)keepLocalOffPredicate
{
  if (qword_A77C0 != -1)
  {
    dispatch_once(&qword_A77C0, &stru_9F0F8);
  }

  v3 = qword_A77B8;

  return v3;
}

+ (id)keepLocalDisabledPredicate
{
  if (qword_A77B0 != -1)
  {
    dispatch_once(&qword_A77B0, &stru_9F0D8);
  }

  v3 = qword_A77A8;

  return v3;
}

+ (id)keepLocalNotDisabledPredicate
{
  if (qword_A77A0 != -1)
  {
    dispatch_once(&qword_A77A0, &stru_9F0B8);
  }

  v3 = qword_A7798;

  return v3;
}

+ (id)keepLocalEnabledPredicate
{
  if (qword_A7790 != -1)
  {
    dispatch_once(&qword_A7790, &stru_9F098);
  }

  v3 = qword_A7788;

  return v3;
}

+ (id)hasTrackDataPredicate
{
  if (qword_A7780 != -1)
  {
    dispatch_once(&qword_A7780, &stru_9F078);
  }

  v3 = qword_A7778;

  return v3;
}

+ (id)missingTrackDataPredicate
{
  if (qword_A7770 != -1)
  {
    dispatch_once(&qword_A7770, &stru_9F058);
  }

  v3 = qword_A7768;

  return v3;
}

+ (id)trackMatchingItemIdentifierPredicate:(int64_t)predicate
{
  v3 = ML3EntityPropertyPersistentID;
  v4 = [NSNumber numberWithLongLong:predicate];
  v5 = [ML3ComparisonPredicate predicateWithProperty:v3 value:v4 comparison:1];

  return v5;
}

+ (id)_collectionPropertiesToFetch
{
  if (qword_A7750 != -1)
  {
    dispatch_once(&qword_A7750, &stru_9F018);
  }

  v3 = qword_A7748;

  return v3;
}

+ (id)_trackPropertiesToFetch
{
  if (qword_A7740 != -1)
  {
    dispatch_once(&qword_A7740, &stru_9EFF8);
  }

  v3 = qword_A7738;

  return v3;
}

@end