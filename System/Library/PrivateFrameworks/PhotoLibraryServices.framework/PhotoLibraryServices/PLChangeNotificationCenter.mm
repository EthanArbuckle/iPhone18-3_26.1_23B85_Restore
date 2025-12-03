@interface PLChangeNotificationCenter
+ (id)allManagedObjectKeysStrategyWithContext:(id)context;
+ (id)defaultCenter;
+ (void)assertIsCompatibleWithObjectModel:(id)model;
+ (void)forceFetchingAlbumReload;
+ (void)getInsertedAssetCount:(unint64_t *)count deletedAssetCount:(unint64_t *)assetCount updatedAssets:(id)assets fromContextDidChangeNotification:(id)notification;
- (BOOL)_isInterestedInUpdatesOfObject:(id)object;
- (BOOL)_shouldForceFetchingAlbumsToReload;
- (PLChangeNotificationCenter)init;
- (id)_attributesOfInterestForObject:(id)object;
- (id)_keysOfInterestForObject:(id)object;
- (id)_orderedRelationshipsOfInterestForObject:(id)object;
- (id)_snapshotForObject:(id)object;
- (id)_takeSnapshotOfObject:(id)object useCommitedValues:(BOOL)values;
- (id)_toOneRelationshipsOfInterestForObject:(id)object;
- (id)addObserverForName:(id)name object:(id)object queue:(id)queue usingBlock:(id)block;
- (id)descriptionOfSplitChanges;
- (void)_cleanupState;
- (void)_enqueueAlbumListNotifications;
- (void)_enqueueAlbumNotifications;
- (void)_enqueueAssetChangeNotification;
- (void)_enqueueCloudCommentsNotifications;
- (void)_enqueueCloudFeedEntriesChangeNotifications;
- (void)_enqueueMomentChangeNotifications;
- (void)_enqueueNotification:(id)notification object:(id)object userInfo:(id)info;
- (void)_enqueueNotification:(id)notification object:(id)object userInfoWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count;
- (void)_enqueuePhotoLibraryNotifications;
- (void)_evaluateContainersWithUpdatedContent;
- (void)_evaluateUpdatedAssets;
- (void)_postEnqueuedNotifications;
- (void)_registerForCameraPreviewWellChanges;
- (void)_sendNotificationsForSplitChanges;
- (void)_splitContextDidChangeNotification:(id)notification;
- (void)_takeSnapshotsFromContext:(id)context forRemoteContextSaveNotification:(id)notification usingObjectIDs:(BOOL)ds;
- (void)_unregisterForCameraPreviewWellChanges;
- (void)addCameraPreviewWellImageChangeObserver:(id)observer;
- (void)addObserver:(id)observer selector:(SEL)selector name:(id)name object:(id)object;
- (void)addShouldReloadObserver:(id)observer;
- (void)dealloc;
- (void)enqueueNotification:(id)notification;
- (void)enumerateIndexMappingCachesForObject:(id)object withBlock:(id)block;
- (void)managedObjectContext:(id)context didProcessRemoteContextSave:(id)save usingObjectIDs:(BOOL)ds;
- (void)managedObjectContext:(id)context willProcessRemoteContextSave:(id)save usingObjectIDs:(BOOL)ds isCoalescedEvent:(BOOL)event;
- (void)managedObjectContextWasOverloaded:(id)overloaded withNotificationData:(id)data usingObjectIDs:(BOOL)ds;
- (void)managedObjectContextWillBeOverloaded:(id)overloaded withNotificationData:(id)data usingObjectIDs:(BOOL)ds;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)postShouldReloadNotificationWithPhotoLibrary:(id)library;
- (void)processContextDidChangeNotification:(id)notification;
- (void)removeCameraPreviewWellImageChangeObserver:(id)observer;
- (void)removeObserver:(id)observer;
- (void)removeObserver:(id)observer name:(id)name object:(id)object;
- (void)removeShouldReloadObserver:(id)observer;
@end

@implementation PLChangeNotificationCenter

+ (id)defaultCenter
{
  pl_dispatch_once();
  v2 = defaultCenter_myCenter;

  return v2;
}

void __43__PLChangeNotificationCenter_defaultCenter__block_invoke(uint64_t a1)
{
  v1 = objc_alloc_init(*(a1 + 32));
  v2 = defaultCenter_myCenter;
  defaultCenter_myCenter = v1;
}

- (PLChangeNotificationCenter)init
{
  v26.receiver = self;
  v26.super_class = PLChangeNotificationCenter;
  v2 = [(PLChangeNotificationCenter *)&v26 init];
  if (v2)
  {
    v3 = objc_alloc_init(PLChangeList);
    changedAlbumLists = v2->_changedAlbumLists;
    v2->_changedAlbumLists = v3;

    v5 = objc_alloc_init(PLContentChanges);
    albumListsContent = v2->_albumListsContent;
    v2->_albumListsContent = v5;

    v7 = objc_alloc_init(PLChangeList);
    changedAlbums = v2->_changedAlbums;
    v2->_changedAlbums = v7;

    v9 = objc_alloc_init(PLContentChanges);
    albumsContent = v2->_albumsContent;
    v2->_albumsContent = v9;

    v11 = objc_alloc_init(PLChangeList);
    changedAssets = v2->_changedAssets;
    v2->_changedAssets = v11;

    v13 = objc_alloc_init(PLContentChanges);
    momentsContent = v2->_momentsContent;
    v2->_momentsContent = v13;

    v15 = objc_alloc_init(PLChangeList);
    changedMoments = v2->_changedMoments;
    v2->_changedMoments = v15;

    v17 = objc_alloc_init(PLChangeList);
    changedCloudFeedEntries = v2->_changedCloudFeedEntries;
    v2->_changedCloudFeedEntries = v17;

    if (PLIsAssetsd())
    {
      v19 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
      v20 = dispatch_queue_attr_make_with_qos_class(v19, QOS_CLASS_BACKGROUND, 0);

      v21 = dispatch_queue_create("Camera preview well change handling queue", v20);
      notificationHandlingQueue = v2->_notificationHandlingQueue;
      v2->_notificationHandlingQueue = v21;
    }

    else
    {
      v23 = MEMORY[0x1E69E96A0];
      v24 = MEMORY[0x1E69E96A0];
      v20 = v2->_notificationHandlingQueue;
      v2->_notificationHandlingQueue = v23;
    }
  }

  return v2;
}

- (void)removeCameraPreviewWellImageChangeObserver:(id)observer
{
  observerCopy = observer;
  [(PLChangeNotificationCenter *)self _unregisterForCameraPreviewWellChanges];
  [(PLChangeNotificationCenter *)self removeObserver:observerCopy name:@"PLCameraPreviewImageWellChanged" object:0];
}

- (void)addCameraPreviewWellImageChangeObserver:(id)observer
{
  [(PLChangeNotificationCenter *)self addObserver:observer selector:sel_cameraPreviewWellImageDidChange_ name:@"PLCameraPreviewImageWellChanged" object:0];

  [(PLChangeNotificationCenter *)self _registerForCameraPreviewWellChanges];
}

- (void)_unregisterForCameraPreviewWellChanges
{
  selfCopy = self;
  objc_sync_enter(selfCopy);
  if (selfCopy->_cameraPreviewChangeListenerCount == 1)
  {
    notify_cancel([(NSNumber *)selfCopy->_cameraPreviewChangedToken intValue]);
    cameraPreviewChangedToken = selfCopy->_cameraPreviewChangedToken;
    selfCopy->_cameraPreviewChangedToken = 0;
  }

  if ([(NSNumber *)selfCopy->_cameraPreviewChangedToken integerValue]< 1)
  {
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v5 = 0;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "too many attempts to unregister from camera preview well changes, ignoring", v5, 2u);
    }
  }

  else
  {
    --selfCopy->_cameraPreviewChangeListenerCount;
  }

  objc_sync_exit(selfCopy);
}

- (void)_registerForCameraPreviewWellChanges
{
  v9 = *MEMORY[0x1E69E9840];
  selfCopy = self;
  objc_sync_enter(selfCopy);
  ++selfCopy->_cameraPreviewChangeListenerCount;
  if (!selfCopy->_cameraPreviewChangedToken)
  {
    v6 = MEMORY[0x1E69E9820];
    v3 = pl_notify_register_dispatch();
    if (v3)
    {
      p_super = PLBackendGetLog();
      if (os_log_type_enabled(p_super, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v8 = v3;
        _os_log_impl(&dword_19BF1F000, p_super, OS_LOG_TYPE_ERROR, "failed to register for camera preview image well changed notification: %u", buf, 8u);
      }
    }

    else
    {
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{0, v6, 3221225472, __66__PLChangeNotificationCenter__registerForCameraPreviewWellChanges__block_invoke, &unk_1E756B898, selfCopy}];
      p_super = &selfCopy->_cameraPreviewChangedToken->super.super;
      selfCopy->_cameraPreviewChangedToken = v5;
    }
  }

  objc_sync_exit(selfCopy);
}

void __66__PLChangeNotificationCenter__registerForCameraPreviewWellChanges__block_invoke(uint64_t a1)
{
  v3 = +[PLCameraPreviewImageWellChangeNotification notification];
  v2 = [*(a1 + 32) backingCenter];
  [v2 postNotification:v3];
}

- (void)managedObjectContext:(id)context didProcessRemoteContextSave:(id)save usingObjectIDs:(BOOL)ds
{
  [context processPendingChanges];
  [(PLChangeNotificationCenter *)self _sendNotificationsForSplitChanges];
  self->_isProcessingRemoteDidSave = 0;
  remoteNotificationData = self->_remoteNotificationData;
  self->_remoteNotificationData = 0;
}

- (void)managedObjectContext:(id)context willProcessRemoteContextSave:(id)save usingObjectIDs:(BOOL)ds isCoalescedEvent:(BOOL)event
{
  eventCopy = event;
  dsCopy = ds;
  self->_isProcessingRemoteDidSave = 1;
  saveCopy = save;
  contextCopy = context;
  v11 = [saveCopy mutableCopy];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:dsCopy];
  [(NSDictionary *)v11 setObject:v12 forKey:@"usingObjectIDs"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:eventCopy];
  [(NSDictionary *)v11 setObject:v13 forKey:@"coalescedEvent"];

  remoteNotificationData = self->_remoteNotificationData;
  self->_remoteNotificationData = v11;

  [(PLChangeNotificationCenter *)self _takeSnapshotsFromContext:contextCopy forRemoteContextSaveNotification:saveCopy usingObjectIDs:dsCopy];
}

- (void)managedObjectContextWasOverloaded:(id)overloaded withNotificationData:(id)data usingObjectIDs:(BOOL)ds
{
  overloadedCopy = overloaded;
  if (!self->_moc)
  {
    objc_storeStrong(&self->_moc, overloaded);
  }

  [(PLChangeNotificationCenter *)self _sendNotificationsForSplitChanges];
  overloadedObjects = self->_overloadedObjects;
  self->_overloadedObjects = 0;

  self->_isOverloaded = 0;
  self->_isProcessingRemoteDidSave = 0;
}

- (void)managedObjectContextWillBeOverloaded:(id)overloaded withNotificationData:(id)data usingObjectIDs:(BOOL)ds
{
  v47 = *MEMORY[0x1E69E9840];
  overloadedCopy = overloaded;
  dataCopy = data;
  self->_isOverloaded = 1;
  self->_isProcessingRemoteDidSave = 1;
  v9 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  overloadedObjects = self->_overloadedObjects;
  self->_overloadedObjects = v9;

  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  obj = +[PLManagedObjectContext changeNotificationObjectKeys];
  v31 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
  if (v31)
  {
    v29 = *v41;
    do
    {
      for (i = 0; i != v31; ++i)
      {
        if (*v41 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v40 + 1) + 8 * i);
        v13 = objc_autoreleasePoolPush();
        v36 = 0u;
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v14 = [dataCopy objectForKey:v12];
        v15 = [v14 countByEnumeratingWithState:&v36 objects:v45 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v37;
          do
          {
            for (j = 0; j != v16; ++j)
            {
              if (*v37 != v17)
              {
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v36 + 1) + 8 * j);
              if (ds)
              {
                v20 = [overloadedCopy objectRegisteredForID:v19];
              }

              else
              {
                v20 = v19;
              }

              v21 = v20;
              if (v20)
              {
                [(NSMutableSet *)self->_overloadedObjects addObject:v20];
              }
            }

            v16 = [v14 countByEnumeratingWithState:&v36 objects:v45 count:16];
          }

          while (v16);
        }

        objc_autoreleasePoolPop(v13);
      }

      v31 = [obj countByEnumeratingWithState:&v40 objects:v46 count:16];
    }

    while (v31);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  registeredObjects = [overloadedCopy registeredObjects];
  v23 = [registeredObjects countByEnumeratingWithState:&v32 objects:v44 count:16];
  if (v23)
  {
    v24 = v23;
    v25 = *v33;
    do
    {
      for (k = 0; k != v24; ++k)
      {
        if (*v33 != v25)
        {
          objc_enumerationMutation(registeredObjects);
        }

        v27 = *(*(&v32 + 1) + 8 * k);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [overloadedCopy refreshObject:v27 mergeChanges:{objc_msgSend(v27, "hasChanges")}];
          [(NSMutableSet *)self->_overloadedObjects addObject:v27];
        }
      }

      v24 = [registeredObjects countByEnumeratingWithState:&v32 objects:v44 count:16];
    }

    while (v24);
  }
}

- (BOOL)_shouldForceFetchingAlbumsToReload
{
  v10 = *MEMORY[0x1E69E9840];
  state64 = 0;
  pl_dispatch_once();
  state = notify_get_state(forceFetchingAlbumReloadToken_token, &state64);
  if (state)
  {
    v3 = state;
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v9 = v3;
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, "notify_get_state() failed for fetching album reload. (%u)", buf, 8u);
    }

    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = _shouldForceFetchingAlbumsToReload_oldState != state64;
    _shouldForceFetchingAlbumsToReload_oldState = state64;
  }

  return v5;
}

- (id)_takeSnapshotOfObject:(id)object useCommitedValues:(BOOL)values
{
  valuesCopy = values;
  v25 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v7 = objectCopy;
  if (objectCopy && ([objectCopy isFault] & 1) == 0)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = self->_snapshots;
    v10 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v21;
      while (2)
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v21 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v20 + 1) + 8 * i);
          managedObject = [v14 managedObject];

          if (managedObject == v7)
          {
            v8 = v14;

            goto LABEL_17;
          }
        }

        v11 = [(NSMutableArray *)v9 countByEnumeratingWithState:&v20 objects:v24 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v8 = [PLObjectSnapshot snapshotForManagedObject:v7 changeNotificationCenter:self useCommitedValues:valuesCopy];
    if (v8)
    {
      snapshots = self->_snapshots;
      if (!snapshots)
      {
        v17 = objc_alloc_init(MEMORY[0x1E695DF70]);
        v18 = self->_snapshots;
        self->_snapshots = v17;

        snapshots = self->_snapshots;
      }

      [(NSMutableArray *)snapshots addObject:v8, v20];
    }
  }

  else
  {
    v8 = 0;
  }

LABEL_17:

  return v8;
}

- (void)_takeSnapshotsFromContext:(id)context forRemoteContextSaveNotification:(id)notification usingObjectIDs:(BOOL)ds
{
  v35 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  notificationCopy = notification;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  obj = +[PLManagedObjectContext changeNotificationObjectIDKeys];
  v24 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
  if (v24)
  {
    v22 = *v30;
    do
    {
      v9 = 0;
      do
      {
        if (*v30 != v22)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v29 + 1) + 8 * v9);
        v11 = objc_autoreleasePoolPush();
        v12 = [notificationCopy objectForKey:v10];
        v25 = 0u;
        v26 = 0u;
        v27 = 0u;
        v28 = 0u;
        v13 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v26;
          do
          {
            v16 = 0;
            do
            {
              if (*v26 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v25 + 1) + 8 * v16);
              if (ds)
              {
                v18 = [contextCopy objectRegisteredForID:v17];
              }

              else
              {
                v18 = v17;
              }

              v19 = v18;
              v20 = [(PLChangeNotificationCenter *)self _takeSnapshotOfObject:v18];

              ++v16;
            }

            while (v14 != v16);
            v14 = [v12 countByEnumeratingWithState:&v25 objects:v33 count:16];
          }

          while (v14);
        }

        objc_autoreleasePoolPop(v11);
        ++v9;
      }

      while (v9 != v24);
      v24 = [obj countByEnumeratingWithState:&v29 objects:v34 count:16];
    }

    while (v24);
  }
}

- (id)_snapshotForObject:(id)object
{
  v17 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = self->_snapshots;
  v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v6)
  {
    v7 = *v13;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        managedObject = [v9 managedObject];

        if (managedObject == objectCopy)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [(NSMutableArray *)v5 countByEnumeratingWithState:&v12 objects:v16 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v6;
}

- (id)descriptionOfSplitChanges
{
  string = [MEMORY[0x1E696AD60] string];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PLChangeNotificationCenter_descriptionOfSplitChanges__block_invoke;
  aBlock[3] = &unk_1E756A370;
  v4 = string;
  v14 = v4;
  v5 = _Block_copy(aBlock);
  v5[2](v5, @"album list(s)", self->_changedAlbumLists);
  v5[2](v5, @"album(s)", self->_changedAlbums);
  v5[2](v5, @"asset(s)", self->_changedAssets);
  container = [(PLContentChanges *)self->_albumsContent container];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__PLChangeNotificationCenter_descriptionOfSplitChanges__block_invoke_3;
  v11[3] = &unk_1E756A398;
  v11[4] = self;
  v7 = v4;
  v12 = v7;
  [container enumerateObjectsUsingBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

void __55__PLChangeNotificationCenter_descriptionOfSplitChanges__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v12 = MEMORY[0x1E69E9820];
  v13 = 3221225472;
  v14 = __55__PLChangeNotificationCenter_descriptionOfSplitChanges__block_invoke_2;
  v15 = &unk_1E756A348;
  v16 = *(a1 + 32);
  v17 = v5;
  v6 = v5;
  v7 = a3;
  v8 = _Block_copy(&v12);
  v9 = [v7 inserted];
  v8[2](v8, @"inserted", v9);

  v10 = [v7 updated];
  v8[2](v8, @"updated", v10);

  v11 = [v7 deleted];

  v8[2](v8, @"deleted", v11);
}

void __55__PLChangeNotificationCenter_descriptionOfSplitChanges__block_invoke_3(uint64_t a1, void *a2, uint64_t a3)
{
  v26 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [*(*(a1 + 32) + 64) updatedContent];
  v7 = [v6 objectAtIndex:a3];

  if ([v7 count])
  {
    v20 = v5;
    v8 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v22;
      do
      {
        v13 = 0;
        do
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v21 + 1) + 8 * v13) objectID];
          v15 = [v14 URIRepresentation];
          v16 = [v15 description];
          [v8 addObject:v16];

          ++v13;
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v11);
    }

    v17 = *(a1 + 40);
    v5 = v20;
    v18 = [v20 objectID];
    v19 = [v8 componentsJoinedByString:{@", "}];
    [v17 appendFormat:@"album %@ has updated assets: { %@ }\n", v18, v19];
  }
}

void __55__PLChangeNotificationCenter_descriptionOfSplitChanges__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  if ([v6 count])
  {
    v19 = a1;
    v7 = [MEMORY[0x1E695DF70] array];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v21;
      do
      {
        v12 = 0;
        do
        {
          if (*v21 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [*(*(&v20 + 1) + 8 * v12) objectID];
          v14 = [v13 URIRepresentation];
          v15 = [v14 description];
          [v7 addObject:v15];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v10);
    }

    v16 = *(v19 + 32);
    v17 = *(v19 + 40);
    v18 = [v7 componentsJoinedByString:{@", "}];
    [v16 appendFormat:@"%@ %@: { %@ }\n", v5, v17, v18];
  }
}

- (id)_keysOfInterestForObject:(id)object
{
  v3 = entityKindOfObject(object);

  return _keysOfInterestForEntityKind(v3);
}

- (BOOL)_isInterestedInUpdatesOfObject:(id)object
{
  v40 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  changedValuesForCurrentEvent = [objectCopy changedValuesForCurrentEvent];
  allKeys = [changedValuesForCurrentEvent allKeys];

  v8 = indexOfObjectEntity(objectCopy);
  v9 = _isInterestedInUpdatesOfObject__myInterests[v8];
  if (!v9)
  {
    v9 = objc_alloc_init(PLInterest);
    v10 = _isInterestedInUpdatesOfObject__myInterests[v8];
    _isInterestedInUpdatesOfObject__myInterests[v8] = v9;
  }

  allKeysMappingStrategy = [(PLInterest *)v9 allKeysMappingStrategy];

  if (!allKeysMappingStrategy)
  {
    context = objc_autoreleasePoolPush();
    v12 = [(PLChangeNotificationCenter *)self _keysOfInterestForObject:objectCopy];
    allObjects = [v12 allObjects];

    if ([allObjects count] >= 0x40)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLChangeNotificationCenter.m" lineNumber:1218 description:@"Not enough bits in bit mask."];
    }

    v14 = [objc_alloc(MEMORY[0x1E695D610]) initForKeys:allObjects];
    [(PLInterest *)v9 setAllKeysMappingStrategy:v14];
    [(PLInterest *)v9 setIndexesOfInterest:0];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = allObjects;
    v16 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v35;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v20 = [v14 indexForKey:*(*(&v34 + 1) + 8 * i)];
          if (v20 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [(PLInterest *)v9 setIndexesOfInterest:[(PLInterest *)v9 indexesOfInterest]| (1 << v20)];
          }
        }

        v17 = [v15 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v17);
    }

    objc_autoreleasePoolPop(context);
  }

  allKeysMappingStrategy2 = [(PLInterest *)v9 allKeysMappingStrategy];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v22 = allKeys;
  v23 = [v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v23)
  {
    v24 = *v31;
    while (2)
    {
      for (j = 0; j != v23; ++j)
      {
        if (*v31 != v24)
        {
          objc_enumerationMutation(v22);
        }

        v26 = [allKeysMappingStrategy2 indexForKey:*(*(&v30 + 1) + 8 * j)];
        if (v26 != 0x7FFFFFFFFFFFFFFFLL && (([(PLInterest *)v9 indexesOfInterest]>> v26) & 1) != 0)
        {
          LOBYTE(v23) = 1;
          goto LABEL_27;
        }
      }

      v23 = [v22 countByEnumeratingWithState:&v30 objects:v38 count:16];
      if (v23)
      {
        continue;
      }

      break;
    }
  }

LABEL_27:

  return v23;
}

- (void)_postEnqueuedNotifications
{
  v21 = *MEMORY[0x1E69E9840];
  for (i = self->_enqueuedNotifications; [(NSMutableArray *)i count]; i = self->_enqueuedNotifications)
  {
    v4 = objc_autoreleasePoolPush();
    v5 = [(NSMutableArray *)self->_enqueuedNotifications copy];
    enqueuedNotifications = self->_enqueuedNotifications;
    self->_enqueuedNotifications = 0;

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v17;
      do
      {
        v11 = 0;
        do
        {
          if (*v17 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v16 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          backingCenter = [(PLChangeNotificationCenter *)self backingCenter];
          [backingCenter postNotification:v12];

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v9);
    }

    objc_autoreleasePoolPop(v4);
  }

  backingCenter2 = [(PLChangeNotificationCenter *)self backingCenter];
  [backingCenter2 postNotificationName:@"PLChangeNotificationCenterDidFinishPostingNotifications" object:self];
}

- (void)_enqueueNotification:(id)notification object:(id)object userInfoWithObjects:(const void *)objects forKeys:(const void *)keys count:(unint64_t)count
{
  v19[1] = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  objectCopy = object;
  if (count)
  {
    v19[0] = v19;
    v14 = 8 * count;
    v15 = v19 - ((8 * count + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v15, 8 * count);
    bzero(v15, 8 * count);
    v16 = 0;
    do
    {
      if (*objects && *keys)
      {
        objc_storeStrong(&v15[8 * v16], *objects);
        objc_storeStrong(&v15[8 * v16++], *keys);
      }

      ++keys;
      ++objects;
      --count;
    }

    while (count);
    if (v16)
    {
      count = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v15 count:v16];
    }

    else
    {
      count = 0;
    }

    v17 = v14;
    do
    {

      v17 -= 8;
    }

    while (v17);
    v18 = v15 - 8;
    do
    {

      v14 -= 8;
    }

    while (v14);
  }

  [(PLChangeNotificationCenter *)self _enqueueNotification:notificationCopy object:objectCopy userInfo:count];
}

- (void)_enqueueNotification:(id)notification object:(id)object userInfo:(id)info
{
  v6 = [MEMORY[0x1E696AD80] notificationWithName:notification object:object userInfo:info];
  [(PLChangeNotificationCenter *)self enqueueNotification:v6];
}

- (void)_evaluateUpdatedAssets
{
  v32 = *MEMORY[0x1E69E9840];
  updated = [(PLChangeList *)self->_changedAssets updated];
  v4 = [updated count];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DFD8] setWithObjects:{@"cloudComments", @"likeComments", @"cloudHasUnseenComments", @"cloudHasCommentsByMe", 0}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [(PLChangeList *)self->_changedAssets updated];
    v6 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          if (self->_isProcessingRemoteDidSave)
          {
            if ([v10 isCloudSharedAsset])
            {
LABEL_20:
              assetsWithCloudCommentChanges = self->_assetsWithCloudCommentChanges;
              if (!assetsWithCloudCommentChanges)
              {
                v19 = objc_opt_new();
                v20 = self->_assetsWithCloudCommentChanges;
                self->_assetsWithCloudCommentChanges = v19;

                assetsWithCloudCommentChanges = self->_assetsWithCloudCommentChanges;
              }

              [(NSMutableSet *)assetsWithCloudCommentChanges addObject:v10];
            }
          }

          else
          {
            changedValuesForCurrentEvent = [v10 changedValuesForCurrentEvent];
            allKeys = [changedValuesForCurrentEvent allKeys];

            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v13 = allKeys;
            v14 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
            if (v14)
            {
              v15 = v14;
              v16 = *v23;
              while (2)
              {
                for (j = 0; j != v15; ++j)
                {
                  if (*v23 != v16)
                  {
                    objc_enumerationMutation(v13);
                  }

                  if ([v5 containsObject:*(*(&v22 + 1) + 8 * j)])
                  {

                    goto LABEL_20;
                  }
                }

                v15 = [v13 countByEnumeratingWithState:&v22 objects:v30 count:16];
                if (v15)
                {
                  continue;
                }

                break;
              }
            }
          }
        }

        v7 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
    }
  }
}

- (void)_evaluateContainersWithUpdatedContent
{
  v128 = *MEMORY[0x1E69E9840];
  updated = [(PLChangeList *)self->_changedAssets updated];
  v4 = [updated count];

  if (v4 >= 2)
  {
    v5 = MEMORY[0x1E695D5E0];
    v6 = +[PLManagedAsset entityName];
    v7 = [v5 fetchRequestWithEntityName:v6];

    v8 = MEMORY[0x1E696AE18];
    updated2 = [(PLChangeList *)self->_changedAssets updated];
    v10 = [v8 predicateWithFormat:@"self IN %@", updated2];
    [v7 setPredicate:v10];

    [v7 setRelationshipKeyPathsForPrefetching:&unk_1F0FBFA18];
    v11 = [(PLManagedObjectContext *)self->_moc executeFetchRequest:v7 error:0];
  }

  v120 = 0u;
  v121 = 0u;
  v118 = 0u;
  v119 = 0u;
  obj = [(PLChangeList *)self->_changedAssets updated];
  v92 = [obj countByEnumeratingWithState:&v118 objects:v127 count:16];
  if (v92)
  {
    v90 = *v119;
    do
    {
      v12 = 0;
      do
      {
        if (*v119 != v90)
        {
          objc_enumerationMutation(obj);
        }

        v95 = v12;
        v13 = *(*(&v118 + 1) + 8 * v12);
        v114 = 0u;
        v115 = 0u;
        v116 = 0u;
        v117 = 0u;
        albums = [v13 albums];
        v15 = [albums countByEnumeratingWithState:&v114 objects:v126 count:16];
        if (v15)
        {
          v16 = v15;
          v17 = *v115;
          do
          {
            for (i = 0; i != v16; ++i)
            {
              if (*v115 != v17)
              {
                objc_enumerationMutation(albums);
              }

              v19 = *(*(&v114 + 1) + 8 * i);
              if ([v19 isFault])
              {
                updated3 = [(PLChangeList *)self->_changedAlbums updated];
                if ([updated3 containsObject:v19])
                {
                }

                else
                {
                  hasDerivedIndexMappers = [v19 hasDerivedIndexMappers];

                  if (!hasDerivedIndexMappers)
                  {
                    continue;
                  }
                }
              }

              if (([v19 isFault] & 1) == 0)
              {
                v22 = [(PLChangeNotificationCenter *)self _takeSnapshotOfObject:v19];
              }

              container = [(PLContentChanges *)self->_albumsContent container];

              if (!container)
              {
                v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [(PLContentChanges *)self->_albumsContent setContainer:v24];

                v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [(PLContentChanges *)self->_albumsContent setUpdatedContent:v25];
              }

              container2 = [(PLContentChanges *)self->_albumsContent container];
              v27 = [container2 indexOfObjectIdenticalTo:v19];

              if (v27 == 0x7FFFFFFFFFFFFFFFLL)
              {
                container3 = [(PLContentChanges *)self->_albumsContent container];
                v27 = [container3 count];

                container4 = [(PLContentChanges *)self->_albumsContent container];
                [container4 addObject:v19];

                updatedContent = [(PLContentChanges *)self->_albumsContent updatedContent];
                array = [MEMORY[0x1E695DF70] array];
                [updatedContent addObject:array];
              }

              updatedContent2 = [(PLContentChanges *)self->_albumsContent updatedContent];
              v33 = [updatedContent2 objectAtIndex:v27];

              [v33 addObject:v13];
            }

            v16 = [albums countByEnumeratingWithState:&v114 objects:v126 count:16];
          }

          while (v16);
        }

        v12 = v95 + 1;
      }

      while (v95 + 1 != v92);
      v92 = [obj countByEnumeratingWithState:&v118 objects:v127 count:16];
    }

    while (v92);
  }

  [(PLChangeList *)self->_changedAlbums updated];
  v110 = 0u;
  v111 = 0u;
  v112 = 0u;
  obja = v113 = 0u;
  v93 = [obja countByEnumeratingWithState:&v110 objects:v125 count:16];
  if (v93)
  {
    v91 = *v111;
    do
    {
      v34 = 0;
      do
      {
        if (*v111 != v91)
        {
          objc_enumerationMutation(obja);
        }

        v96 = v34;
        v35 = *(*(&v110 + 1) + 8 * v34);
        v106 = 0u;
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        albumLists = [v35 albumLists];
        v37 = [albumLists countByEnumeratingWithState:&v106 objects:v124 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v107;
          do
          {
            for (j = 0; j != v38; ++j)
            {
              if (*v107 != v39)
              {
                objc_enumerationMutation(albumLists);
              }

              v41 = *(*(&v106 + 1) + 8 * j);
              if (![v41 isFault] || objc_msgSend(v41, "hasDerivedIndexMappers"))
              {
                v42 = [(PLChangeNotificationCenter *)self _takeSnapshotOfObject:v41];
                container5 = [(PLContentChanges *)self->_albumListsContent container];

                if (!container5)
                {
                  v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  [(PLContentChanges *)self->_albumListsContent setContainer:v44];

                  v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  [(PLContentChanges *)self->_albumListsContent setUpdatedContent:v45];
                }

                container6 = [(PLContentChanges *)self->_albumListsContent container];
                v47 = [container6 indexOfObjectIdenticalTo:v41];

                if (v47 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  container7 = [(PLContentChanges *)self->_albumListsContent container];
                  v47 = [container7 count];

                  container8 = [(PLContentChanges *)self->_albumListsContent container];
                  [container8 addObject:v41];

                  updatedContent3 = [(PLContentChanges *)self->_albumListsContent updatedContent];
                  array2 = [MEMORY[0x1E695DF70] array];
                  [updatedContent3 addObject:array2];
                }

                updatedContent4 = [(PLContentChanges *)self->_albumListsContent updatedContent];
                v53 = [updatedContent4 objectAtIndex:v47];

                [v53 addObject:v35];
              }
            }

            v38 = [albumLists countByEnumeratingWithState:&v106 objects:v124 count:16];
          }

          while (v38);
        }

        v34 = v96 + 1;
      }

      while (v96 + 1 != v93);
      v93 = [obja countByEnumeratingWithState:&v110 objects:v125 count:16];
    }

    while (v93);
  }

  v104 = 0u;
  v105 = 0u;
  v102 = 0u;
  v103 = 0u;
  updated4 = [(PLChangeList *)self->_changedAssets updated];
  v55 = [updated4 countByEnumeratingWithState:&v102 objects:v123 count:16];
  if (v55)
  {
    v56 = v55;
    v57 = *v103;
    do
    {
      for (k = 0; k != v56; ++k)
      {
        if (*v103 != v57)
        {
          objc_enumerationMutation(updated4);
        }

        v59 = *(*(&v102 + 1) + 8 * k);
        moment = [v59 moment];
        v61 = moment;
        if (moment)
        {
          if (![moment isFault] || (-[PLChangeList updated](self->_changedMoments, "updated"), v62 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend(v62, "containsObject:", v61), v62, v63))
          {
            if (([v61 isFault] & 1) == 0)
            {
              v64 = [(PLChangeNotificationCenter *)self _takeSnapshotOfObject:v61];
            }

            container9 = [(PLContentChanges *)self->_momentsContent container];

            if (!container9)
            {
              v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [(PLContentChanges *)self->_momentsContent setContainer:v66];

              v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [(PLContentChanges *)self->_momentsContent setUpdatedContent:v67];
            }

            container10 = [(PLContentChanges *)self->_momentsContent container];
            v69 = [container10 indexOfObjectIdenticalTo:v61];

            if (v69 == 0x7FFFFFFFFFFFFFFFLL)
            {
              container11 = [(PLContentChanges *)self->_momentsContent container];
              v69 = [container11 count];

              container12 = [(PLContentChanges *)self->_momentsContent container];
              [container12 addObject:v61];

              updatedContent5 = [(PLContentChanges *)self->_momentsContent updatedContent];
              array3 = [MEMORY[0x1E695DF70] array];
              [updatedContent5 addObject:array3];
            }

            updatedContent6 = [(PLContentChanges *)self->_momentsContent updatedContent];
            v75 = [updatedContent6 objectAtIndex:v69];

            [v75 addObject:v59];
          }
        }
      }

      v56 = [updated4 countByEnumeratingWithState:&v102 objects:v123 count:16];
    }

    while (v56);
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  container13 = [(PLContentChanges *)self->_momentsContent container];
  v77 = [container13 countByEnumeratingWithState:&v98 objects:v122 count:16];
  if (v77)
  {
    v78 = v77;
    v94 = 0;
    v79 = *v99;
    do
    {
      v80 = 0;
      v97 = v78;
      do
      {
        if (*v99 != v79)
        {
          objc_enumerationMutation(container13);
        }

        v81 = *(*(&v98 + 1) + 8 * v80);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          updated5 = [(PLChangeList *)self->_changedMoments updated];
          if ([updated5 containsObject:v81])
          {
          }

          else
          {
            v83 = v79;
            v84 = container13;
            updated6 = [(PLChangeList *)self->_changedAssets updated];
            bestAsset = [v81 bestAsset];
            v87 = [updated6 containsObject:bestAsset];

            container13 = v84;
            if (v87)
            {
              v79 = v83;
              if (v94)
              {
                [v94 addObject:v81];
              }

              else
              {
                v94 = [MEMORY[0x1E695DF70] arrayWithObject:v81];
              }
            }

            else
            {
              v79 = v83;
            }

            v78 = v97;
          }
        }

        ++v80;
      }

      while (v78 != v80);
      v78 = [container13 countByEnumeratingWithState:&v98 objects:v122 count:16];
    }

    while (v78);
  }

  else
  {
    v94 = 0;
  }
}

- (void)_splitContextDidChangeNotification:(id)notification
{
  v86 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  context = objc_autoreleasePoolPush();
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = +[PLManagedObjectContext changeNotificationObjectKeys];
  selfCopy = self;
  v59 = [obj countByEnumeratingWithState:&v79 objects:v85 count:16];
  if (v59)
  {
    v57 = *v80;
    v4 = *MEMORY[0x1E695D4D0];
    v56 = *MEMORY[0x1E695D468];
    v55 = *MEMORY[0x1E695D340];
    p_changedCloudFeedEntries = &self->_changedCloudFeedEntries;
    p_changedAssets = &self->_changedAssets;
    p_changedAlbums = &self->_changedAlbums;
    p_changedAlbumLists = &self->_changedAlbumLists;
    p_changedMoments = &self->_changedMoments;
    v67 = *MEMORY[0x1E695D328];
    v61 = *MEMORY[0x1E695D2F8];
    do
    {
      v5 = 0;
      do
      {
        if (*v80 != v57)
        {
          objc_enumerationMutation(obj);
        }

        v60 = v5;
        v6 = *(*(&v79 + 1) + 8 * v5);
        v9 = v6 == v4 || v6 == v56 || v6 == v55;
        v75 = 0u;
        v76 = 0u;
        v77 = 0u;
        v78 = 0u;
        userInfo = [notificationCopy userInfo];
        v11 = [userInfo objectForKey:v6];

        v69 = v11;
        v12 = [v11 countByEnumeratingWithState:&v75 objects:v84 count:16];
        if (v12)
        {
          v13 = v12;
          v14 = *v76;
          do
          {
            v15 = 0;
            do
            {
              if (*v76 != v14)
              {
                objc_enumerationMutation(v69);
              }

              v16 = *(*(&v75 + 1) + 8 * v15);
              if (v6 != v4 || [(PLChangeNotificationCenter *)self _isInterestedInUpdatesOfObject:v16])
              {
                if (v9 && self->_isProcessingRemoteDidSave)
                {
                  v17 = [(PLChangeNotificationCenter *)self _takeSnapshotFromCommittedValuesOfObject:v16];
                }

                v18 = v6;
                v19 = entityKindOfObject(v16);
                if (v19 > 4)
                {
                  v20 = p_changedMoments;
                  if ((v19 - 5) < 2)
                  {
                    goto LABEL_33;
                  }

                  if (v19 == 7)
                  {
                    v20 = p_changedCloudFeedEntries;
                    goto LABEL_33;
                  }
                }

                else
                {
                  v20 = p_changedAlbumLists;
                  if (v19 != 2)
                  {
                    v20 = p_changedAlbums;
                    if (v19 != 3)
                    {
                      v20 = p_changedAssets;
                      if (v19 != 4)
                      {
                        goto LABEL_47;
                      }
                    }
                  }

LABEL_33:
                  v21 = *v20;
                  if (v21)
                  {
                    v22 = v21;
                    if ([v18 isEqualToString:v67])
                    {
                      inserted = [v22 inserted];
                      if (!inserted)
                      {
                        v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                        [v22 setInserted:v24];
                        if (!v24)
                        {
                          goto LABEL_46;
                        }

LABEL_45:
                        [v24 addObject:v16];

                        goto LABEL_46;
                      }

LABEL_44:
                      v24 = inserted;
                      goto LABEL_45;
                    }

                    if (v9)
                    {
                      inserted = [v22 updated];
                      if (inserted)
                      {
                        goto LABEL_44;
                      }

                      v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                      [v22 setUpdated:v24];
                      if (v24)
                      {
                        goto LABEL_45;
                      }
                    }

                    else
                    {
                      if (![v18 isEqualToString:v61])
                      {
                        goto LABEL_46;
                      }

                      inserted = [v22 deleted];
                      if (inserted)
                      {
                        goto LABEL_44;
                      }

                      v24 = objc_alloc_init(MEMORY[0x1E695DFA8]);
                      [v22 setDeleted:v24];
                      if (v24)
                      {
                        goto LABEL_45;
                      }
                    }

LABEL_46:

                    self = selfCopy;
                  }
                }

LABEL_47:
              }

              ++v15;
            }

            while (v13 != v15);
            v25 = [v69 countByEnumeratingWithState:&v75 objects:v84 count:16];
            v13 = v25;
          }

          while (v25);
        }

        v5 = v60 + 1;
      }

      while (v60 + 1 != v59);
      v59 = [obj countByEnumeratingWithState:&v79 objects:v85 count:16];
    }

    while (v59);
  }

  selfCopy2 = self;
  if (![(PLChangeNotificationCenter *)self _shouldForceFetchingAlbumsToReload])
  {
    inserted2 = [(PLChangeList *)self->_changedAssets inserted];
    if (![inserted2 count])
    {
      updated = [(PLChangeList *)self->_changedAssets updated];
      if (![updated count])
      {
        deleted = [(PLChangeList *)self->_changedAssets deleted];
        v52 = [deleted count];

        if (!v52)
        {
          goto LABEL_80;
        }

        goto LABEL_60;
      }
    }
  }

LABEL_60:
  [(PLGenericAlbum *)PLFetchingAlbum allAlbumsRegisteredWithManagedObjectContext:selfCopy2->_moc];
  v71 = 0u;
  v72 = 0u;
  v73 = 0u;
  v70 = v74 = 0u;
  v29 = [v70 countByEnumeratingWithState:&v71 objects:v83 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v72;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v72 != v31)
        {
          objc_enumerationMutation(v70);
        }

        v33 = *(*(&v71 + 1) + 8 * i);
        if ([v33 hasAssetsCache])
        {
          fetchRequest = [v33 fetchRequest];
          predicate = [fetchRequest predicate];
          inserted3 = [(PLChangeList *)selfCopy->_changedAssets inserted];
          v37 = [inserted3 filteredSetUsingPredicate:predicate];
          v38 = [v37 count];

          if (v38 || (-[PLChangeList deleted](selfCopy->_changedAssets, "deleted"), v39 = objc_claimAutoreleasedReturnValue(), v40 = [v33 mayHaveAssetsInCommon:v39], v39, (v40 & 1) != 0) || (-[PLChangeList updated](selfCopy->_changedAssets, "updated"), v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v33, "mayHaveAssetsInCommon:", v41), v41, (v42 & 1) != 0) || (-[PLChangeList updated](selfCopy->_changedAssets, "updated"), v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v43, "filteredSetUsingPredicate:", predicate), v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "count"), v44, v43, v45))
          {
            updated2 = [(PLChangeList *)selfCopy->_changedAlbums updated];

            if (!updated2)
            {
              v47 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              [(PLChangeList *)selfCopy->_changedAlbums setUpdated:v47];
            }

            updated3 = [(PLChangeList *)selfCopy->_changedAlbums updated];
            [updated3 addObject:v33];

            v49 = [(PLChangeNotificationCenter *)selfCopy _takeSnapshotOfObject:v33];
            if ([v49 hasSnapshotValueForProperty:@"assets"])
            {
              v50 = 0;
            }

            else
            {
              v50 = v49;
            }

            [v33 updateSnapshotAndClearCaches:v50];
          }
        }
      }

      v30 = [v70 countByEnumeratingWithState:&v71 objects:v83 count:16];
    }

    while (v30);
  }

  selfCopy2 = selfCopy;
LABEL_80:
  [(PLChangeNotificationCenter *)selfCopy2 _evaluateContainersWithUpdatedContent];
  [(PLChangeNotificationCenter *)selfCopy2 _evaluateUpdatedAssets];
  objc_autoreleasePoolPop(context);
}

- (void)_cleanupState
{
  [(PLChangeList *)self->_changedAlbumLists cleanupState];
  [(PLChangeList *)self->_changedAlbums cleanupState];
  [(PLChangeList *)self->_changedAssets cleanupState];
  assetsWithCloudCommentChanges = self->_assetsWithCloudCommentChanges;
  self->_assetsWithCloudCommentChanges = 0;

  [(PLChangeList *)self->_changedMoments cleanupState];
  [(PLContentChanges *)self->_albumsContent cleanupState];
  [(PLContentChanges *)self->_albumListsContent cleanupState];
  [(PLContentChanges *)self->_momentsContent cleanupState];
  [(PLChangeList *)self->_changedCloudFeedEntries cleanupState];
  snapshots = self->_snapshots;
  self->_snapshots = 0;
}

- (void)_enqueueAssetChangeNotification
{
  v20 = *MEMORY[0x1E69E9840];
  updated = [(PLChangeList *)self->_changedAssets updated];
  v4 = [updated count];

  if (v4)
  {
    updated2 = [(PLChangeList *)self->_changedAssets updated];
    v14 = [PLAssetChangeNotification notificationWithChangedAssets:updated2];

    [(PLChangeNotificationCenter *)self enqueueNotification:v14];
  }

  else if (self->_isOverloaded)
  {
    v6 = [MEMORY[0x1E695DFA8] set];
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = self->_overloadedObjects;
    v8 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v15 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v6 addObject:v12];
          }
        }

        v9 = [(NSMutableSet *)v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      v13 = [PLAssetChangeNotification notificationWithChangedAssets:v6];
      [(PLChangeNotificationCenter *)self enqueueNotification:v13];
    }
  }
}

- (void)_enqueueMomentChangeNotifications
{
  v40 = *MEMORY[0x1E69E9840];
  updated = [(PLChangeList *)self->_changedMoments updated];
  if ([updated count])
  {

LABEL_4:
    updated2 = [(PLChangeList *)self->_changedMoments updated];
    container = [(PLContentChanges *)self->_momentsContent container];
    v8 = [container count];

    if (v8)
    {
      if (updated2)
      {
        container2 = [(PLContentChanges *)self->_momentsContent container];
        v10 = [updated2 setByAddingObjectsFromArray:container2];

        updated2 = v10;
      }

      else
      {
        v11 = MEMORY[0x1E695DFD8];
        container2 = [(PLContentChanges *)self->_momentsContent container];
        updated2 = [v11 setWithArray:container2];
      }
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = updated2;
    v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          container3 = [(PLContentChanges *)self->_momentsContent container];
          if (container3)
          {
            container4 = [(PLContentChanges *)self->_momentsContent container];
            v20 = [container4 indexOfObjectIdenticalTo:v17];

            if (v20 == 0x7FFFFFFFFFFFFFFFLL)
            {
              container3 = 0;
            }

            else
            {
              updatedContent = [(PLContentChanges *)self->_momentsContent updatedContent];
              container3 = [updatedContent objectAtIndex:v20];
            }
          }

          v22 = [(PLChangeNotificationCenter *)self _snapshotForObject:v17];
          v23 = [PLAssetContainerChangeNotification notificationWithContainer:v17 snapshot:v22 changedAssets:container3];
          [(PLChangeNotificationCenter *)self _enqueueAssetContainerChangeNotification:v23];
        }

        v14 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v14);
    }

LABEL_21:
    return;
  }

  container5 = [(PLContentChanges *)self->_momentsContent container];
  v5 = [container5 count];

  if (v5)
  {
    goto LABEL_4;
  }

  if (self->_isOverloaded)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = self->_overloadedObjects;
    v24 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v31;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v31 != v26)
          {
            objc_enumerationMutation(v12);
          }

          v28 = *(*(&v30 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = [PLAssetContainerChangeNotification notificationWithContainer:v28 snapshot:0 changedAssets:0, v30];
            [(PLChangeNotificationCenter *)self _enqueueAssetContainerChangeNotification:v29];
          }
        }

        v25 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v25);
    }

    goto LABEL_21;
  }
}

- (void)_enqueueCloudFeedEntriesChangeNotifications
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v5 = NSStringFromSelector(a2);
    *buf = 138412290;
    v32 = v5;
    _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_DEBUG, "%@", buf, 0xCu);
  }

  v6 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    inserted = [(PLChangeList *)self->_changedCloudFeedEntries inserted];
    *buf = 138412290;
    v32 = inserted;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "inserted=%@", buf, 0xCu);
  }

  v8 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    updated = [(PLChangeList *)self->_changedCloudFeedEntries updated];
    *buf = 138412290;
    v32 = updated;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "updated=%@", buf, 0xCu);
  }

  v10 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    deleted = [(PLChangeList *)self->_changedCloudFeedEntries deleted];
    *buf = 138412290;
    v32 = deleted;
    _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_DEBUG, "deleted=%@", buf, 0xCu);
  }

  v12 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    isOverloaded = self->_isOverloaded;
    *buf = 67109120;
    LODWORD(v32) = isOverloaded;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "_isOverloaded=%i", buf, 8u);
  }

  inserted2 = [(PLChangeList *)self->_changedCloudFeedEntries inserted];
  if ([inserted2 count])
  {
    goto LABEL_14;
  }

  updated2 = [(PLChangeList *)self->_changedCloudFeedEntries updated];
  if ([updated2 count])
  {

LABEL_14:
LABEL_15:
    inserted3 = [(PLChangeList *)self->_changedCloudFeedEntries inserted];
    updated3 = [(PLChangeList *)self->_changedCloudFeedEntries updated];
    deleted2 = [(PLChangeList *)self->_changedCloudFeedEntries deleted];
    v19 = [PLCloudFeedEntriesChangeNotification notificationWithInsertedEntries:inserted3 updatedEntries:updated3 deletedEntries:deleted2];

LABEL_16:
    if (v19)
    {
      [(PLChangeNotificationCenter *)self enqueueNotification:v19];
LABEL_18:

      return;
    }

    return;
  }

  deleted3 = [(PLChangeList *)self->_changedCloudFeedEntries deleted];
  v21 = [deleted3 count];

  if (v21)
  {
    goto LABEL_15;
  }

  if (self->_isOverloaded)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    inserted3 = self->_overloadedObjects;
    v22 = [(NSMutableSet *)inserted3 countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v27;
      while (2)
      {
        v25 = 0;
        do
        {
          if (*v27 != v24)
          {
            objc_enumerationMutation(inserted3);
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v19 = +[PLCloudFeedEntriesChangeNotification notificationWithFullReload];
            goto LABEL_16;
          }

          ++v25;
        }

        while (v23 != v25);
        v23 = [(NSMutableSet *)inserted3 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v19 = inserted3;
    goto LABEL_18;
  }
}

- (void)_enqueueCloudCommentsNotifications
{
  selfCopy = self;
  v37 = *MEMORY[0x1E69E9840];
  if ([(NSMutableSet *)self->_assetsWithCloudCommentChanges count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = selfCopy->_assetsWithCloudCommentChanges;
    v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v3)
    {
      v5 = v3;
      v6 = *v25;
      v7 = 0x1E755F000uLL;
      *&v4 = 138544130;
      v20 = v4;
      v21 = selfCopy;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v25 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v24 + 1) + 8 * i);
          v10 = [(PLChangeNotificationCenter *)selfCopy _snapshotForObject:v9, v20];
          v11 = [*(v7 + 2400) notificationWithAsset:v9 snapshot:v10];
          v12 = PLChangeHandlingGetLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            NSStringFromSelector(a2);
            v13 = v5;
            v14 = v6;
            v16 = v15 = v7;
            uuid = [v9 uuid];
            orderedLikeComments = [v9 orderedLikeComments];
            v19 = [orderedLikeComments count];
            *buf = v20;
            v29 = v16;
            v30 = 2114;
            v31 = uuid;
            v32 = 2048;
            v33 = v19;
            v34 = 2112;
            v35 = v11;
            _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: PLManagedAsset = %{public}@, like count = %tu, PLCloudCommentsChangeNotification = %@", buf, 0x2Au);

            v7 = v15;
            v6 = v14;
            v5 = v13;
            selfCopy = v21;
          }

          [(PLChangeNotificationCenter *)selfCopy enqueueNotification:v11];
        }

        v5 = [(NSMutableSet *)obj countByEnumeratingWithState:&v24 objects:v36 count:16];
      }

      while (v5);
    }
  }
}

- (void)_enqueueAlbumNotifications
{
  v43 = *MEMORY[0x1E69E9840];
  updated = [(PLChangeList *)self->_changedAlbums updated];
  if ([updated count])
  {

LABEL_4:
    updated2 = [(PLChangeList *)self->_changedAlbums updated];
    container = [(PLContentChanges *)self->_albumsContent container];
    v8 = [container count];

    if (v8)
    {
      if (updated2)
      {
        container2 = [(PLContentChanges *)self->_albumsContent container];
        v10 = [updated2 setByAddingObjectsFromArray:container2];

        updated2 = v10;
      }

      else
      {
        v11 = MEMORY[0x1E695DFD8];
        container2 = [(PLContentChanges *)self->_albumsContent container];
        updated2 = [v11 setWithArray:container2];
      }
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v12 = updated2;
    v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v38;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v38 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v37 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            updated3 = [(PLChangeList *)self->_changedAssets updated];
            allObjects = [updated3 allObjects];
          }

          else
          {
            container3 = [(PLContentChanges *)self->_albumsContent container];
            if (!container3)
            {
              goto LABEL_21;
            }

            container4 = [(PLContentChanges *)self->_albumsContent container];
            v22 = [container4 indexOfObjectIdenticalTo:v17];

            if (v22 == 0x7FFFFFFFFFFFFFFFLL)
            {
              container3 = 0;
              goto LABEL_21;
            }

            updated3 = [(PLContentChanges *)self->_albumsContent updatedContent];
            allObjects = [updated3 objectAtIndex:v22];
          }

          container3 = allObjects;

LABEL_21:
          v23 = [(PLChangeNotificationCenter *)self _snapshotForObject:v17];
          v24 = [PLAssetContainerChangeNotification notificationWithContainer:v17 snapshot:v23 changedAssets:container3];
          v25 = [PLInvitationRecordsChangeNotification notificationWithAlbum:v17 snapshot:v23];
          [(PLChangeNotificationCenter *)self _enqueueAlbumChangeNotification:v24];
          [(PLChangeNotificationCenter *)self _enqueueInvitationRecordsChangeNotification:v25];
        }

        v14 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v14);
    }

    goto LABEL_24;
  }

  container5 = [(PLContentChanges *)self->_albumsContent container];
  v5 = [container5 count];

  if (v5)
  {
    goto LABEL_4;
  }

  if (self->_isOverloaded)
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = self->_overloadedObjects;
    v26 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
    if (v26)
    {
      v27 = v26;
      v28 = *v34;
      do
      {
        for (j = 0; j != v27; ++j)
        {
          if (*v34 != v28)
          {
            objc_enumerationMutation(v12);
          }

          v30 = *(*(&v33 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v31 = [PLAssetContainerChangeNotification notificationWithContainer:v30 snapshot:0 changedAssets:0, v33];
            v32 = [PLInvitationRecordsChangeNotification notificationWithAlbum:v30 snapshot:0];
            [(PLChangeNotificationCenter *)self _enqueueAlbumChangeNotification:v31];
            [(PLChangeNotificationCenter *)self _enqueueInvitationRecordsChangeNotification:v32];
          }
        }

        v27 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v33 objects:v41 count:16];
      }

      while (v27);
    }

LABEL_24:
  }
}

- (void)_enqueueAlbumListNotifications
{
  v40 = *MEMORY[0x1E69E9840];
  updated = [(PLChangeList *)self->_changedAlbumLists updated];
  if ([updated count])
  {

LABEL_4:
    updated2 = [(PLChangeList *)self->_changedAlbumLists updated];
    container = [(PLContentChanges *)self->_albumListsContent container];
    v8 = [container count];

    if (v8)
    {
      if (updated2)
      {
        container2 = [(PLContentChanges *)self->_albumListsContent container];
        v10 = [updated2 setByAddingObjectsFromArray:container2];

        updated2 = v10;
      }

      else
      {
        v11 = MEMORY[0x1E695DFD8];
        container2 = [(PLContentChanges *)self->_albumListsContent container];
        updated2 = [v11 setWithArray:container2];
      }
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = updated2;
    v13 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v35;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v35 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v34 + 1) + 8 * i);
          container3 = [(PLContentChanges *)self->_albumListsContent container];
          if (container3)
          {
            container4 = [(PLContentChanges *)self->_albumListsContent container];
            v20 = [container4 indexOfObjectIdenticalTo:v17];

            if (v20 == 0x7FFFFFFFFFFFFFFFLL)
            {
              container3 = 0;
            }

            else
            {
              updatedContent = [(PLContentChanges *)self->_albumListsContent updatedContent];
              container3 = [updatedContent objectAtIndex:v20];
            }
          }

          v22 = [(PLChangeNotificationCenter *)self _snapshotForObject:v17];
          v23 = [PLAssetContainerListChangeNotification notificationWithContainerList:v17 snapshot:v22 changedContainers:container3];
          [(PLChangeNotificationCenter *)self _enqueueAssetContainerListChangeNotification:v23];
        }

        v14 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v14);
    }

LABEL_21:
    return;
  }

  container5 = [(PLContentChanges *)self->_albumListsContent container];
  v5 = [container5 count];

  if (v5)
  {
    goto LABEL_4;
  }

  if (self->_isOverloaded)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v12 = self->_overloadedObjects;
    v24 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v31;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v31 != v26)
          {
            objc_enumerationMutation(v12);
          }

          v28 = *(*(&v30 + 1) + 8 * j);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v29 = [PLAssetContainerListChangeNotification notificationWithContainerList:v28 snapshot:0 changedContainers:0, v30];
            [(PLChangeNotificationCenter *)self _enqueueAssetContainerListChangeNotification:v29];
          }
        }

        v25 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v30 objects:v38 count:16];
      }

      while (v25);
    }

    goto LABEL_21;
  }
}

- (void)_enqueuePhotoLibraryNotifications
{
  v13[2] = *MEMORY[0x1E69E9840];
  inserted = [(PLChangeList *)self->_changedAlbums inserted];
  if ([inserted count])
  {

LABEL_4:
    photoLibrary = [(PLManagedObjectContext *)self->_moc photoLibrary];
    inserted2 = [(PLChangeList *)self->_changedAlbums inserted];
    allObjects = [inserted2 allObjects];
    v13[0] = allObjects;
    deleted = [(PLChangeList *)self->_changedAlbums deleted];
    allObjects2 = [deleted allObjects];
    v13[1] = allObjects2;
    v12[0] = @"AddedItemsKey";
    v12[1] = @"DeletedItemsKey";
    [(PLChangeNotificationCenter *)self _enqueueNotification:@"PLPhotoLibraryDidChangeNotification" object:photoLibrary userInfoWithObjects:v13 forKeys:v12 count:2];

    goto LABEL_5;
  }

  deleted2 = [(PLChangeList *)self->_changedAlbums deleted];
  v5 = [deleted2 count];

  if (v5)
  {
    goto LABEL_4;
  }

  if (!self->_isOverloaded)
  {
    goto LABEL_6;
  }

  photoLibrary = [(PLManagedObjectContext *)self->_moc photoLibrary];
  [(PLChangeNotificationCenter *)self _enqueueNotification:@"PLPhotoLibraryDidChangeNotification" object:photoLibrary userInfoWithObjects:0 forKeys:0 count:0];
LABEL_5:

LABEL_6:
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"PLPhotoLibraryDidChangeNotification", 0, 0, 1u);
}

- (void)_sendNotificationsForSplitChanges
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    descriptionOfSplitChanges = [(PLChangeNotificationCenter *)self descriptionOfSplitChanges];
    v6 = 138412290;
    v7 = descriptionOfSplitChanges;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Change split into:\n%@", &v6, 0xCu);
  }

  [(PLChangeNotificationCenter *)self _enqueuePhotoLibraryNotifications];
  [(PLChangeNotificationCenter *)self _enqueueAlbumNotifications];
  [(PLChangeNotificationCenter *)self _enqueueMomentChangeNotifications];
  [(PLChangeNotificationCenter *)self _enqueueAlbumListNotifications];
  [(PLChangeNotificationCenter *)self _enqueueCloudCommentsNotifications];
  [(PLChangeNotificationCenter *)self _enqueueCloudFeedEntriesChangeNotifications];
  [(PLChangeNotificationCenter *)self _enqueueAssetChangeNotification];
  [(PLChangeNotificationCenter *)self _cleanupState];
  moc = self->_moc;
  self->_moc = 0;

  [(PLChangeNotificationCenter *)self _postEnqueuedNotifications];
}

- (void)postShouldReloadNotificationWithPhotoLibrary:(id)library
{
  libraryCopy = library;
  v4 = objc_autoreleasePoolPush();
  v5 = [[PLPhotoLibraryShouldReloadNotification alloc] initNotificationWithPhotoLibrary:libraryCopy];
  backingCenter = [(PLChangeNotificationCenter *)self backingCenter];
  [backingCenter postNotification:v5];

  objc_autoreleasePoolPop(v4);
}

- (void)enumerateIndexMappingCachesForObject:(id)object withBlock:(id)block
{
  objectCopy = object;
  blockCopy = block;
  v7 = objectCopy;
  pl_dispatch_once();
  if (enumerateIndexMappingCachesForObject_withBlock__isIndexMappersDataOrigin[indexOfObjectEntity(v7)] == 1)
  {
    [v7 enumerateDerivedIndexMappers:blockCopy];
  }
}

uint64_t __77__PLChangeNotificationCenter_enumerateIndexMappingCachesForObject_withBlock___block_invoke(uint64_t a1)
{
  for (i = 0; ; ++i)
  {
    result = objectEntitiesCount(*(a1 + 32));
    if (i >= result)
    {
      break;
    }

    v4 = entityAtIndex(i, *(a1 + 32));
    v5 = [v4 managedObjectClassName];
    v6 = [NSClassFromString(v5) instanceMethodSignatureForSelector:sel_enumerateDerivedIndexMappers_];

    if (v6)
    {
      enumerateIndexMappingCachesForObject_withBlock__isIndexMappersDataOrigin[i] = 1;
    }
  }

  return result;
}

- (id)_toOneRelationshipsOfInterestForObject:(id)object
{
  objectCopy = object;
  v3 = objectCopy;
  pl_dispatch_once();
  v4 = _toOneRelationshipsOfInterestForObject__myKeys[indexOfObjectEntity(v3)];
  v5 = v4;

  return v4;
}

void __69__PLChangeNotificationCenter__toOneRelationshipsOfInterestForObject___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFA8] set];
  for (i = 0; i < objectEntitiesCount(*(a1 + 32)); ++i)
  {
    [v2 removeAllObjects];
    v4 = entityKindAtEntityIndex(i, *(a1 + 32));
    v5 = _keysOfInterestForEntityKind(v4);
    v6 = entityAtIndex(i, *(a1 + 32));
    v7 = [v6 relationshipsByName];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__PLChangeNotificationCenter__toOneRelationshipsOfInterestForObject___block_invoke_2;
    v12[3] = &unk_1E756DD90;
    v8 = v5;
    v13 = v8;
    v9 = v2;
    v14 = v9;
    [v7 enumerateKeysAndObjectsUsingBlock:v12];
    if ([v9 count])
    {
      v10 = [v9 copy];
      v11 = _toOneRelationshipsOfInterestForObject__myKeys[i];
      _toOneRelationshipsOfInterestForObject__myKeys[i] = v10;
    }
  }
}

void __69__PLChangeNotificationCenter__toOneRelationshipsOfInterestForObject___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v6] && objc_msgSend(v5, "maxCount") == 1)
  {
    [*(a1 + 40) addObject:v6];
  }
}

- (id)_attributesOfInterestForObject:(id)object
{
  objectCopy = object;
  v3 = objectCopy;
  pl_dispatch_once();
  v4 = _attributesOfInterestForObject__myKeys[indexOfObjectEntity(v3)];
  v5 = v4;

  return v4;
}

void __61__PLChangeNotificationCenter__attributesOfInterestForObject___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFA8] set];
  for (i = 0; i < objectEntitiesCount(*(a1 + 32)); ++i)
  {
    [v2 removeAllObjects];
    v4 = entityKindAtEntityIndex(i, *(a1 + 32));
    v5 = _keysOfInterestForEntityKind(v4);
    v6 = entityAtIndex(i, *(a1 + 32));
    v7 = [v6 attributesByName];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __61__PLChangeNotificationCenter__attributesOfInterestForObject___block_invoke_2;
    v12[3] = &unk_1E756DD90;
    v8 = v5;
    v13 = v8;
    v9 = v2;
    v14 = v9;
    [v7 enumerateKeysAndObjectsUsingBlock:v12];
    if ([v9 count])
    {
      v10 = [v9 copy];
      v11 = _attributesOfInterestForObject__myKeys[i];
      _attributesOfInterestForObject__myKeys[i] = v10;
    }
  }
}

void __61__PLChangeNotificationCenter__attributesOfInterestForObject___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([*(a1 + 32) containsObject:?])
  {
    [*(a1 + 40) addObject:v3];
  }
}

- (id)_orderedRelationshipsOfInterestForObject:(id)object
{
  objectCopy = object;
  pl_dispatch_once();
  v4 = indexOfObjectEntity(objectCopy);
  if (v4 >= 76)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLChangeNotificationCenter _orderedRelationshipsOfInterestForObject:]"];
    [currentHandler handleFailureInFunction:v9 file:@"PLChangeNotificationCenter.m" lineNumber:445 description:@"Out of bounds."];
  }

  v5 = _orderedRelationshipsOfInterestForObject__myKeys[v4];
  v6 = v5;

  return v5;
}

void __71__PLChangeNotificationCenter__orderedRelationshipsOfInterestForObject___block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x1E695DFA8] set];
  for (i = 0; i < objectEntitiesCount(*(a1 + 32)); ++i)
  {
    [v2 removeAllObjects];
    v4 = entityKindAtEntityIndex(i, *(a1 + 32));
    v5 = _keysOfInterestForEntityKind(v4);
    v6 = entityAtIndex(i, *(a1 + 32));
    v7 = [v6 relationshipsByName];
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __71__PLChangeNotificationCenter__orderedRelationshipsOfInterestForObject___block_invoke_2;
    v12[3] = &unk_1E756DD90;
    v8 = v5;
    v13 = v8;
    v9 = v2;
    v14 = v9;
    [v7 enumerateKeysAndObjectsUsingBlock:v12];
    if ([v9 count])
    {
      v10 = [v9 copy];
      v11 = _orderedRelationshipsOfInterestForObject__myKeys[i];
      _orderedRelationshipsOfInterestForObject__myKeys[i] = v10;
    }
  }
}

void __71__PLChangeNotificationCenter__orderedRelationshipsOfInterestForObject___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  if ([*(a1 + 32) containsObject:v7])
  {
    v6 = v5;
    if (![v6 maxCount] || objc_msgSend(v6, "isToMany"))
    {
      [*(a1 + 40) addObject:v7];
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  pathCopy = path;
  objectCopy = object;
  changeCopy = change;
  if (context == &PLChangeNotificationCenterKVOContext)
  {
    if (!self->_isProcessingRemoteDidSave)
    {
      v13 = objectCopy;
      if (![v13 faultingState] && (objc_msgSend(v13, "isDeleted") & 1) == 0)
      {
        managedObjectContext = [v13 managedObjectContext];

        if (managedObjectContext)
        {
          v15 = [changeCopy objectForKey:*MEMORY[0x1E696A4F8]];
          bOOLValue = [v15 BOOLValue];

          if (bOOLValue)
          {
            v17 = [(PLChangeNotificationCenter *)self _takeSnapshotOfObject:v13];
          }
        }
      }
    }
  }

  else
  {
    v18.receiver = self;
    v18.super_class = PLChangeNotificationCenter;
    [(PLChangeNotificationCenter *)&v18 observeValueForKeyPath:pathCopy ofObject:objectCopy change:changeCopy context:context];
  }
}

- (void)processContextDidChangeNotification:(id)notification
{
  v18 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  v6 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    name = [notificationCopy name];
    userInfo = [notificationCopy userInfo];
    *buf = 138412546;
    v15 = name;
    v16 = 2112;
    v17 = userInfo;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "Transforming local %@ with %@", buf, 0x16u);
  }

  if (notificationCopy)
  {
    object = [notificationCopy object];
    moc = self->_moc;
    self->_moc = object;

    v11 = self->_moc;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__PLChangeNotificationCenter_processContextDidChangeNotification___block_invoke;
    v12[3] = &unk_1E7578848;
    v12[4] = self;
    v13 = notificationCopy;
    [(NSManagedObjectContext *)v11 pl_performBlockAndWait:v12];
  }

  objc_autoreleasePoolPop(v5);
}

- (void)removeObserver:(id)observer name:(id)name object:(id)object
{
  objectCopy = object;
  nameCopy = name;
  observerCopy = observer;
  backingCenter = [(PLChangeNotificationCenter *)self backingCenter];
  [backingCenter removeObserver:observerCopy name:nameCopy object:objectCopy];
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  backingCenter = [(PLChangeNotificationCenter *)self backingCenter];
  [backingCenter removeObserver:observerCopy];
}

- (id)addObserverForName:(id)name object:(id)object queue:(id)queue usingBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  objectCopy = object;
  nameCopy = name;
  backingCenter = [(PLChangeNotificationCenter *)self backingCenter];
  v15 = [backingCenter addObserverForName:nameCopy object:objectCopy queue:queueCopy usingBlock:blockCopy];

  return v15;
}

- (void)addObserver:(id)observer selector:(SEL)selector name:(id)name object:(id)object
{
  objectCopy = object;
  nameCopy = name;
  observerCopy = observer;
  backingCenter = [(PLChangeNotificationCenter *)self backingCenter];
  [backingCenter addObserver:observerCopy selector:selector name:nameCopy object:objectCopy];
}

- (void)removeShouldReloadObserver:(id)observer
{
  observerCopy = observer;
  backingCenter = [(PLChangeNotificationCenter *)self backingCenter];
  [backingCenter removeObserver:observerCopy name:@"PLPhotoLibraryShouldReload" object:0];
}

- (void)addShouldReloadObserver:(id)observer
{
  observerCopy = observer;
  backingCenter = [(PLChangeNotificationCenter *)self backingCenter];
  [backingCenter addObserver:observerCopy selector:sel_shouldReload_ name:@"PLPhotoLibraryShouldReload" object:0];
}

- (void)enqueueNotification:(id)notification
{
  notificationCopy = notification;
  if (notificationCopy)
  {
    enqueuedNotifications = self->_enqueuedNotifications;
    v8 = notificationCopy;
    if (!enqueuedNotifications)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = self->_enqueuedNotifications;
      self->_enqueuedNotifications = v6;

      enqueuedNotifications = self->_enqueuedNotifications;
    }

    [(NSMutableArray *)enqueuedNotifications addObject:v8];
    notificationCopy = v8;
  }
}

- (void)dealloc
{
  cameraPreviewChangedToken = self->_cameraPreviewChangedToken;
  if (cameraPreviewChangedToken)
  {
    notify_cancel([(NSNumber *)cameraPreviewChangedToken intValue]);
  }

  v4.receiver = self;
  v4.super_class = PLChangeNotificationCenter;
  [(PLChangeNotificationCenter *)&v4 dealloc];
}

+ (void)assertIsCompatibleWithObjectModel:(id)model
{
  entitiesByName = [model entitiesByName];
  allKeys = [entitiesByName allKeys];
  v7 = [allKeys count];

  if (v7 >= 0x4C)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLChangeNotificationCenter.m" lineNumber:1427 description:{@"Need to increase maxEntityCount (%tu < %d)", v7, 76}];
  }
}

+ (void)forceFetchingAlbumReload
{
  v11 = *MEMORY[0x1E69E9840];
  state64 = 0;
  pl_dispatch_once();
  state = notify_get_state(forceFetchingAlbumReloadToken_token, &state64);
  if (state)
  {
    v3 = state;
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v10 = v3;
      v5 = "notify_get_state() failed for fetching album reload. (%u)";
LABEL_7:
      _os_log_impl(&dword_19BF1F000, v4, OS_LOG_TYPE_ERROR, v5, buf, 8u);
    }
  }

  else
  {
    ++state64;
    pl_dispatch_once();
    v6 = notify_set_state(forceFetchingAlbumReloadToken_token, state64);
    if (!v6)
    {
      return;
    }

    v7 = v6;
    v4 = PLBackendGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v10 = v7;
      v5 = "notify_set_state() failed for fetching album reload. (%u)";
      goto LABEL_7;
    }
  }
}

+ (void)getInsertedAssetCount:(unint64_t *)count deletedAssetCount:(unint64_t *)assetCount updatedAssets:(id)assets fromContextDidChangeNotification:(id)notification
{
  v44 = *MEMORY[0x1E69E9840];
  assetsCopy = assets;
  notificationCopy = notification;
  *count = 0;
  assetCountCopy = assetCount;
  *assetCount = 0;
  context = objc_autoreleasePoolPush();
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v9 = *MEMORY[0x1E695D328];
  v10 = *MEMORY[0x1E695D2F8];
  v42[0] = *MEMORY[0x1E695D328];
  v42[1] = v10;
  v25 = *MEMORY[0x1E695D468];
  v11 = *MEMORY[0x1E695D468];
  v26 = *MEMORY[0x1E695D4D0];
  v42[2] = *MEMORY[0x1E695D4D0];
  v42[3] = v11;
  obj = [MEMORY[0x1E695DEC8] arrayWithObjects:v42 count:4];
  v29 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
  if (v29)
  {
    v27 = *v38;
    do
    {
      v12 = 0;
      do
      {
        if (*v38 != v27)
        {
          objc_enumerationMutation(obj);
        }

        v30 = v12;
        v13 = *(*(&v37 + 1) + 8 * v12);
        v33 = 0u;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        userInfo = [notificationCopy userInfo];
        v15 = [userInfo objectForKey:v13];

        v16 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
        if (v16)
        {
          v17 = v16;
          v18 = *v34;
          v20 = v13 == v26 || v13 == v25;
          do
          {
            for (i = 0; i != v17; ++i)
            {
              if (*v34 != v18)
              {
                objc_enumerationMutation(v15);
              }

              v22 = *(*(&v33 + 1) + 8 * i);
              if (entityKindOfObject(v22) == 4)
              {
                if (v13 == v9)
                {
                  ++*count;
                }

                else if (v13 == v10)
                {
                  ++*assetCountCopy;
                }

                else if (v20)
                {
                  [assetsCopy addObject:v22];
                }
              }
            }

            v17 = [v15 countByEnumeratingWithState:&v33 objects:v41 count:16];
          }

          while (v17);
        }

        v12 = v30 + 1;
      }

      while (v30 + 1 != v29);
      v29 = [obj countByEnumeratingWithState:&v37 objects:v43 count:16];
    }

    while (v29);
  }

  objc_autoreleasePoolPop(context);
}

+ (id)allManagedObjectKeysStrategyWithContext:(id)context
{
  contextCopy = context;
  v3 = contextCopy;
  pl_dispatch_once();
  v4 = allManagedObjectKeysStrategyWithContext__myStrategy;
  v5 = allManagedObjectKeysStrategyWithContext__myStrategy;

  return v4;
}

void __70__PLChangeNotificationCenter_allManagedObjectKeysStrategyWithContext___block_invoke(uint64_t a1)
{
  v23 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E695DFA8] set];
  v3 = [v1 persistentStoreCoordinator];
  v4 = [v3 managedObjectModel];

  if (!v4)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"+[PLChangeNotificationCenter allManagedObjectKeysStrategyWithContext:]_block_invoke"];
    [v16 handleFailureInFunction:v17 file:@"PLChangeNotificationCenter.m" lineNumber:544 description:@"NSManagedObjectModel is nil."];
  }

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = [v4 entities];
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v19;
    do
    {
      v9 = 0;
      do
      {
        if (*v19 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = [*(*(&v18 + 1) + 8 * v9) propertiesByName];
        v11 = [v10 allKeys];

        if (v11)
        {
          [v2 addObjectsFromArray:v11];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v7);
  }

  v12 = objc_alloc(MEMORY[0x1E695D610]);
  v13 = [v2 allObjects];
  v14 = [v12 initForKeys:v13];
  v15 = allManagedObjectKeysStrategyWithContext__myStrategy;
  allManagedObjectKeysStrategyWithContext__myStrategy = v14;
}

@end