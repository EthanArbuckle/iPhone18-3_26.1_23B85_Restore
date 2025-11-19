@interface PLChangeNotificationCenter
+ (id)allManagedObjectKeysStrategyWithContext:(id)a3;
+ (id)defaultCenter;
+ (void)assertIsCompatibleWithObjectModel:(id)a3;
+ (void)forceFetchingAlbumReload;
+ (void)getInsertedAssetCount:(unint64_t *)a3 deletedAssetCount:(unint64_t *)a4 updatedAssets:(id)a5 fromContextDidChangeNotification:(id)a6;
- (BOOL)_isInterestedInUpdatesOfObject:(id)a3;
- (BOOL)_shouldForceFetchingAlbumsToReload;
- (PLChangeNotificationCenter)init;
- (id)_attributesOfInterestForObject:(id)a3;
- (id)_keysOfInterestForObject:(id)a3;
- (id)_orderedRelationshipsOfInterestForObject:(id)a3;
- (id)_snapshotForObject:(id)a3;
- (id)_takeSnapshotOfObject:(id)a3 useCommitedValues:(BOOL)a4;
- (id)_toOneRelationshipsOfInterestForObject:(id)a3;
- (id)addObserverForName:(id)a3 object:(id)a4 queue:(id)a5 usingBlock:(id)a6;
- (id)descriptionOfSplitChanges;
- (void)_cleanupState;
- (void)_enqueueAlbumListNotifications;
- (void)_enqueueAlbumNotifications;
- (void)_enqueueAssetChangeNotification;
- (void)_enqueueCloudCommentsNotifications;
- (void)_enqueueCloudFeedEntriesChangeNotifications;
- (void)_enqueueMomentChangeNotifications;
- (void)_enqueueNotification:(id)a3 object:(id)a4 userInfo:(id)a5;
- (void)_enqueueNotification:(id)a3 object:(id)a4 userInfoWithObjects:(const void *)a5 forKeys:(const void *)a6 count:(unint64_t)a7;
- (void)_enqueuePhotoLibraryNotifications;
- (void)_evaluateContainersWithUpdatedContent;
- (void)_evaluateUpdatedAssets;
- (void)_postEnqueuedNotifications;
- (void)_registerForCameraPreviewWellChanges;
- (void)_sendNotificationsForSplitChanges;
- (void)_splitContextDidChangeNotification:(id)a3;
- (void)_takeSnapshotsFromContext:(id)a3 forRemoteContextSaveNotification:(id)a4 usingObjectIDs:(BOOL)a5;
- (void)_unregisterForCameraPreviewWellChanges;
- (void)addCameraPreviewWellImageChangeObserver:(id)a3;
- (void)addObserver:(id)a3 selector:(SEL)a4 name:(id)a5 object:(id)a6;
- (void)addShouldReloadObserver:(id)a3;
- (void)dealloc;
- (void)enqueueNotification:(id)a3;
- (void)enumerateIndexMappingCachesForObject:(id)a3 withBlock:(id)a4;
- (void)managedObjectContext:(id)a3 didProcessRemoteContextSave:(id)a4 usingObjectIDs:(BOOL)a5;
- (void)managedObjectContext:(id)a3 willProcessRemoteContextSave:(id)a4 usingObjectIDs:(BOOL)a5 isCoalescedEvent:(BOOL)a6;
- (void)managedObjectContextWasOverloaded:(id)a3 withNotificationData:(id)a4 usingObjectIDs:(BOOL)a5;
- (void)managedObjectContextWillBeOverloaded:(id)a3 withNotificationData:(id)a4 usingObjectIDs:(BOOL)a5;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)postShouldReloadNotificationWithPhotoLibrary:(id)a3;
- (void)processContextDidChangeNotification:(id)a3;
- (void)removeCameraPreviewWellImageChangeObserver:(id)a3;
- (void)removeObserver:(id)a3;
- (void)removeObserver:(id)a3 name:(id)a4 object:(id)a5;
- (void)removeShouldReloadObserver:(id)a3;
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

- (void)removeCameraPreviewWellImageChangeObserver:(id)a3
{
  v4 = a3;
  [(PLChangeNotificationCenter *)self _unregisterForCameraPreviewWellChanges];
  [(PLChangeNotificationCenter *)self removeObserver:v4 name:@"PLCameraPreviewImageWellChanged" object:0];
}

- (void)addCameraPreviewWellImageChangeObserver:(id)a3
{
  [(PLChangeNotificationCenter *)self addObserver:a3 selector:sel_cameraPreviewWellImageDidChange_ name:@"PLCameraPreviewImageWellChanged" object:0];

  [(PLChangeNotificationCenter *)self _registerForCameraPreviewWellChanges];
}

- (void)_unregisterForCameraPreviewWellChanges
{
  v2 = self;
  objc_sync_enter(v2);
  if (v2->_cameraPreviewChangeListenerCount == 1)
  {
    notify_cancel([(NSNumber *)v2->_cameraPreviewChangedToken intValue]);
    cameraPreviewChangedToken = v2->_cameraPreviewChangedToken;
    v2->_cameraPreviewChangedToken = 0;
  }

  if ([(NSNumber *)v2->_cameraPreviewChangedToken integerValue]< 1)
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
    --v2->_cameraPreviewChangeListenerCount;
  }

  objc_sync_exit(v2);
}

- (void)_registerForCameraPreviewWellChanges
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = self;
  objc_sync_enter(v2);
  ++v2->_cameraPreviewChangeListenerCount;
  if (!v2->_cameraPreviewChangedToken)
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
      v5 = [objc_alloc(MEMORY[0x1E696AD98]) initWithInt:{0, v6, 3221225472, __66__PLChangeNotificationCenter__registerForCameraPreviewWellChanges__block_invoke, &unk_1E756B898, v2}];
      p_super = &v2->_cameraPreviewChangedToken->super.super;
      v2->_cameraPreviewChangedToken = v5;
    }
  }

  objc_sync_exit(v2);
}

void __66__PLChangeNotificationCenter__registerForCameraPreviewWellChanges__block_invoke(uint64_t a1)
{
  v3 = +[PLCameraPreviewImageWellChangeNotification notification];
  v2 = [*(a1 + 32) backingCenter];
  [v2 postNotification:v3];
}

- (void)managedObjectContext:(id)a3 didProcessRemoteContextSave:(id)a4 usingObjectIDs:(BOOL)a5
{
  [a3 processPendingChanges];
  [(PLChangeNotificationCenter *)self _sendNotificationsForSplitChanges];
  self->_isProcessingRemoteDidSave = 0;
  remoteNotificationData = self->_remoteNotificationData;
  self->_remoteNotificationData = 0;
}

- (void)managedObjectContext:(id)a3 willProcessRemoteContextSave:(id)a4 usingObjectIDs:(BOOL)a5 isCoalescedEvent:(BOOL)a6
{
  v6 = a6;
  v7 = a5;
  self->_isProcessingRemoteDidSave = 1;
  v10 = a4;
  v15 = a3;
  v11 = [v10 mutableCopy];
  v12 = [MEMORY[0x1E696AD98] numberWithBool:v7];
  [(NSDictionary *)v11 setObject:v12 forKey:@"usingObjectIDs"];

  v13 = [MEMORY[0x1E696AD98] numberWithBool:v6];
  [(NSDictionary *)v11 setObject:v13 forKey:@"coalescedEvent"];

  remoteNotificationData = self->_remoteNotificationData;
  self->_remoteNotificationData = v11;

  [(PLChangeNotificationCenter *)self _takeSnapshotsFromContext:v15 forRemoteContextSaveNotification:v10 usingObjectIDs:v7];
}

- (void)managedObjectContextWasOverloaded:(id)a3 withNotificationData:(id)a4 usingObjectIDs:(BOOL)a5
{
  v8 = a3;
  if (!self->_moc)
  {
    objc_storeStrong(&self->_moc, a3);
  }

  [(PLChangeNotificationCenter *)self _sendNotificationsForSplitChanges];
  overloadedObjects = self->_overloadedObjects;
  self->_overloadedObjects = 0;

  self->_isOverloaded = 0;
  self->_isProcessingRemoteDidSave = 0;
}

- (void)managedObjectContextWillBeOverloaded:(id)a3 withNotificationData:(id)a4 usingObjectIDs:(BOOL)a5
{
  v47 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v30 = a4;
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
        v14 = [v30 objectForKey:v12];
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
              if (a5)
              {
                v20 = [v8 objectRegisteredForID:v19];
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
  v22 = [v8 registeredObjects];
  v23 = [v22 countByEnumeratingWithState:&v32 objects:v44 count:16];
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
          objc_enumerationMutation(v22);
        }

        v27 = *(*(&v32 + 1) + 8 * k);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v8 refreshObject:v27 mergeChanges:{objc_msgSend(v27, "hasChanges")}];
          [(NSMutableSet *)self->_overloadedObjects addObject:v27];
        }
      }

      v24 = [v22 countByEnumeratingWithState:&v32 objects:v44 count:16];
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

- (id)_takeSnapshotOfObject:(id)a3 useCommitedValues:(BOOL)a4
{
  v4 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = v6;
  if (v6 && ([v6 isFault] & 1) == 0)
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
          v15 = [v14 managedObject];

          if (v15 == v7)
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

    v8 = [PLObjectSnapshot snapshotForManagedObject:v7 changeNotificationCenter:self useCommitedValues:v4];
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

- (void)_takeSnapshotsFromContext:(id)a3 forRemoteContextSaveNotification:(id)a4 usingObjectIDs:(BOOL)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v23 = a4;
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
        v12 = [v23 objectForKey:v10];
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
              if (a5)
              {
                v18 = [v8 objectRegisteredForID:v17];
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

- (id)_snapshotForObject:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
        v10 = [v9 managedObject];

        if (v10 == v4)
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
  v3 = [MEMORY[0x1E696AD60] string];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __55__PLChangeNotificationCenter_descriptionOfSplitChanges__block_invoke;
  aBlock[3] = &unk_1E756A370;
  v4 = v3;
  v14 = v4;
  v5 = _Block_copy(aBlock);
  v5[2](v5, @"album list(s)", self->_changedAlbumLists);
  v5[2](v5, @"album(s)", self->_changedAlbums);
  v5[2](v5, @"asset(s)", self->_changedAssets);
  v6 = [(PLContentChanges *)self->_albumsContent container];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__PLChangeNotificationCenter_descriptionOfSplitChanges__block_invoke_3;
  v11[3] = &unk_1E756A398;
  v11[4] = self;
  v7 = v4;
  v12 = v7;
  [v6 enumerateObjectsUsingBlock:v11];

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

- (id)_keysOfInterestForObject:(id)a3
{
  v3 = entityKindOfObject(a3);

  return _keysOfInterestForEntityKind(v3);
}

- (BOOL)_isInterestedInUpdatesOfObject:(id)a3
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = [v5 changedValuesForCurrentEvent];
  v7 = [v6 allKeys];

  v8 = indexOfObjectEntity(v5);
  v9 = _isInterestedInUpdatesOfObject__myInterests[v8];
  if (!v9)
  {
    v9 = objc_alloc_init(PLInterest);
    v10 = _isInterestedInUpdatesOfObject__myInterests[v8];
    _isInterestedInUpdatesOfObject__myInterests[v8] = v9;
  }

  v11 = [(PLInterest *)v9 allKeysMappingStrategy];

  if (!v11)
  {
    context = objc_autoreleasePoolPush();
    v12 = [(PLChangeNotificationCenter *)self _keysOfInterestForObject:v5];
    v13 = [v12 allObjects];

    if ([v13 count] >= 0x40)
    {
      v28 = [MEMORY[0x1E696AAA8] currentHandler];
      [v28 handleFailureInMethod:a2 object:self file:@"PLChangeNotificationCenter.m" lineNumber:1218 description:@"Not enough bits in bit mask."];
    }

    v14 = [objc_alloc(MEMORY[0x1E695D610]) initForKeys:v13];
    [(PLInterest *)v9 setAllKeysMappingStrategy:v14];
    [(PLInterest *)v9 setIndexesOfInterest:0];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v15 = v13;
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

  v21 = [(PLInterest *)v9 allKeysMappingStrategy];
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v22 = v7;
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

        v26 = [v21 indexForKey:*(*(&v30 + 1) + 8 * j)];
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
          v14 = [(PLChangeNotificationCenter *)self backingCenter];
          [v14 postNotification:v12];

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

  v15 = [(PLChangeNotificationCenter *)self backingCenter];
  [v15 postNotificationName:@"PLChangeNotificationCenterDidFinishPostingNotifications" object:self];
}

- (void)_enqueueNotification:(id)a3 object:(id)a4 userInfoWithObjects:(const void *)a5 forKeys:(const void *)a6 count:(unint64_t)a7
{
  v19[1] = *MEMORY[0x1E69E9840];
  v12 = a3;
  v13 = a4;
  if (a7)
  {
    v19[0] = v19;
    v14 = 8 * a7;
    v15 = v19 - ((8 * a7 + 15) & 0xFFFFFFFFFFFFFFF0);
    bzero(v15, 8 * a7);
    bzero(v15, 8 * a7);
    v16 = 0;
    do
    {
      if (*a5 && *a6)
      {
        objc_storeStrong(&v15[8 * v16], *a5);
        objc_storeStrong(&v15[8 * v16++], *a6);
      }

      ++a6;
      ++a5;
      --a7;
    }

    while (a7);
    if (v16)
    {
      a7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v15 count:v16];
    }

    else
    {
      a7 = 0;
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

  [(PLChangeNotificationCenter *)self _enqueueNotification:v12 object:v13 userInfo:a7];
}

- (void)_enqueueNotification:(id)a3 object:(id)a4 userInfo:(id)a5
{
  v6 = [MEMORY[0x1E696AD80] notificationWithName:a3 object:a4 userInfo:a5];
  [(PLChangeNotificationCenter *)self enqueueNotification:v6];
}

- (void)_evaluateUpdatedAssets
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = [(PLChangeList *)self->_changedAssets updated];
  v4 = [v3 count];

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
            v11 = [v10 changedValuesForCurrentEvent];
            v12 = [v11 allKeys];

            v24 = 0u;
            v25 = 0u;
            v22 = 0u;
            v23 = 0u;
            v13 = v12;
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
  v3 = [(PLChangeList *)self->_changedAssets updated];
  v4 = [v3 count];

  if (v4 >= 2)
  {
    v5 = MEMORY[0x1E695D5E0];
    v6 = +[PLManagedAsset entityName];
    v7 = [v5 fetchRequestWithEntityName:v6];

    v8 = MEMORY[0x1E696AE18];
    v9 = [(PLChangeList *)self->_changedAssets updated];
    v10 = [v8 predicateWithFormat:@"self IN %@", v9];
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
        v14 = [v13 albums];
        v15 = [v14 countByEnumeratingWithState:&v114 objects:v126 count:16];
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
                objc_enumerationMutation(v14);
              }

              v19 = *(*(&v114 + 1) + 8 * i);
              if ([v19 isFault])
              {
                v20 = [(PLChangeList *)self->_changedAlbums updated];
                if ([v20 containsObject:v19])
                {
                }

                else
                {
                  v21 = [v19 hasDerivedIndexMappers];

                  if (!v21)
                  {
                    continue;
                  }
                }
              }

              if (([v19 isFault] & 1) == 0)
              {
                v22 = [(PLChangeNotificationCenter *)self _takeSnapshotOfObject:v19];
              }

              v23 = [(PLContentChanges *)self->_albumsContent container];

              if (!v23)
              {
                v24 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [(PLContentChanges *)self->_albumsContent setContainer:v24];

                v25 = objc_alloc_init(MEMORY[0x1E695DF70]);
                [(PLContentChanges *)self->_albumsContent setUpdatedContent:v25];
              }

              v26 = [(PLContentChanges *)self->_albumsContent container];
              v27 = [v26 indexOfObjectIdenticalTo:v19];

              if (v27 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v28 = [(PLContentChanges *)self->_albumsContent container];
                v27 = [v28 count];

                v29 = [(PLContentChanges *)self->_albumsContent container];
                [v29 addObject:v19];

                v30 = [(PLContentChanges *)self->_albumsContent updatedContent];
                v31 = [MEMORY[0x1E695DF70] array];
                [v30 addObject:v31];
              }

              v32 = [(PLContentChanges *)self->_albumsContent updatedContent];
              v33 = [v32 objectAtIndex:v27];

              [v33 addObject:v13];
            }

            v16 = [v14 countByEnumeratingWithState:&v114 objects:v126 count:16];
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
        v36 = [v35 albumLists];
        v37 = [v36 countByEnumeratingWithState:&v106 objects:v124 count:16];
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
                objc_enumerationMutation(v36);
              }

              v41 = *(*(&v106 + 1) + 8 * j);
              if (![v41 isFault] || objc_msgSend(v41, "hasDerivedIndexMappers"))
              {
                v42 = [(PLChangeNotificationCenter *)self _takeSnapshotOfObject:v41];
                v43 = [(PLContentChanges *)self->_albumListsContent container];

                if (!v43)
                {
                  v44 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  [(PLContentChanges *)self->_albumListsContent setContainer:v44];

                  v45 = objc_alloc_init(MEMORY[0x1E695DF70]);
                  [(PLContentChanges *)self->_albumListsContent setUpdatedContent:v45];
                }

                v46 = [(PLContentChanges *)self->_albumListsContent container];
                v47 = [v46 indexOfObjectIdenticalTo:v41];

                if (v47 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  v48 = [(PLContentChanges *)self->_albumListsContent container];
                  v47 = [v48 count];

                  v49 = [(PLContentChanges *)self->_albumListsContent container];
                  [v49 addObject:v41];

                  v50 = [(PLContentChanges *)self->_albumListsContent updatedContent];
                  v51 = [MEMORY[0x1E695DF70] array];
                  [v50 addObject:v51];
                }

                v52 = [(PLContentChanges *)self->_albumListsContent updatedContent];
                v53 = [v52 objectAtIndex:v47];

                [v53 addObject:v35];
              }
            }

            v38 = [v36 countByEnumeratingWithState:&v106 objects:v124 count:16];
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
  v54 = [(PLChangeList *)self->_changedAssets updated];
  v55 = [v54 countByEnumeratingWithState:&v102 objects:v123 count:16];
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
          objc_enumerationMutation(v54);
        }

        v59 = *(*(&v102 + 1) + 8 * k);
        v60 = [v59 moment];
        v61 = v60;
        if (v60)
        {
          if (![v60 isFault] || (-[PLChangeList updated](self->_changedMoments, "updated"), v62 = objc_claimAutoreleasedReturnValue(), v63 = objc_msgSend(v62, "containsObject:", v61), v62, v63))
          {
            if (([v61 isFault] & 1) == 0)
            {
              v64 = [(PLChangeNotificationCenter *)self _takeSnapshotOfObject:v61];
            }

            v65 = [(PLContentChanges *)self->_momentsContent container];

            if (!v65)
            {
              v66 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [(PLContentChanges *)self->_momentsContent setContainer:v66];

              v67 = objc_alloc_init(MEMORY[0x1E695DF70]);
              [(PLContentChanges *)self->_momentsContent setUpdatedContent:v67];
            }

            v68 = [(PLContentChanges *)self->_momentsContent container];
            v69 = [v68 indexOfObjectIdenticalTo:v61];

            if (v69 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v70 = [(PLContentChanges *)self->_momentsContent container];
              v69 = [v70 count];

              v71 = [(PLContentChanges *)self->_momentsContent container];
              [v71 addObject:v61];

              v72 = [(PLContentChanges *)self->_momentsContent updatedContent];
              v73 = [MEMORY[0x1E695DF70] array];
              [v72 addObject:v73];
            }

            v74 = [(PLContentChanges *)self->_momentsContent updatedContent];
            v75 = [v74 objectAtIndex:v69];

            [v75 addObject:v59];
          }
        }
      }

      v56 = [v54 countByEnumeratingWithState:&v102 objects:v123 count:16];
    }

    while (v56);
  }

  v100 = 0u;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v76 = [(PLContentChanges *)self->_momentsContent container];
  v77 = [v76 countByEnumeratingWithState:&v98 objects:v122 count:16];
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
          objc_enumerationMutation(v76);
        }

        v81 = *(*(&v98 + 1) + 8 * v80);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v82 = [(PLChangeList *)self->_changedMoments updated];
          if ([v82 containsObject:v81])
          {
          }

          else
          {
            v83 = v79;
            v84 = v76;
            v85 = [(PLChangeList *)self->_changedAssets updated];
            v86 = [v81 bestAsset];
            v87 = [v85 containsObject:v86];

            v76 = v84;
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
      v78 = [v76 countByEnumeratingWithState:&v98 objects:v122 count:16];
    }

    while (v78);
  }

  else
  {
    v94 = 0;
  }
}

- (void)_splitContextDidChangeNotification:(id)a3
{
  v86 = *MEMORY[0x1E69E9840];
  v58 = a3;
  context = objc_autoreleasePoolPush();
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  obj = +[PLManagedObjectContext changeNotificationObjectKeys];
  v68 = self;
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
        v10 = [v58 userInfo];
        v11 = [v10 objectForKey:v6];

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
                      v23 = [v22 inserted];
                      if (!v23)
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
                      v24 = v23;
                      goto LABEL_45;
                    }

                    if (v9)
                    {
                      v23 = [v22 updated];
                      if (v23)
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

                      v23 = [v22 deleted];
                      if (v23)
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

                    self = v68;
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

  v26 = self;
  if (![(PLChangeNotificationCenter *)self _shouldForceFetchingAlbumsToReload])
  {
    v27 = [(PLChangeList *)self->_changedAssets inserted];
    if (![v27 count])
    {
      v28 = [(PLChangeList *)self->_changedAssets updated];
      if (![v28 count])
      {
        v51 = [(PLChangeList *)self->_changedAssets deleted];
        v52 = [v51 count];

        if (!v52)
        {
          goto LABEL_80;
        }

        goto LABEL_60;
      }
    }
  }

LABEL_60:
  [(PLGenericAlbum *)PLFetchingAlbum allAlbumsRegisteredWithManagedObjectContext:v26->_moc];
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
          v34 = [v33 fetchRequest];
          v35 = [v34 predicate];
          v36 = [(PLChangeList *)v68->_changedAssets inserted];
          v37 = [v36 filteredSetUsingPredicate:v35];
          v38 = [v37 count];

          if (v38 || (-[PLChangeList deleted](v68->_changedAssets, "deleted"), v39 = objc_claimAutoreleasedReturnValue(), v40 = [v33 mayHaveAssetsInCommon:v39], v39, (v40 & 1) != 0) || (-[PLChangeList updated](v68->_changedAssets, "updated"), v41 = objc_claimAutoreleasedReturnValue(), v42 = objc_msgSend(v33, "mayHaveAssetsInCommon:", v41), v41, (v42 & 1) != 0) || (-[PLChangeList updated](v68->_changedAssets, "updated"), v43 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v43, "filteredSetUsingPredicate:", v35), v44 = objc_claimAutoreleasedReturnValue(), v45 = objc_msgSend(v44, "count"), v44, v43, v45))
          {
            v46 = [(PLChangeList *)v68->_changedAlbums updated];

            if (!v46)
            {
              v47 = objc_alloc_init(MEMORY[0x1E695DFA8]);
              [(PLChangeList *)v68->_changedAlbums setUpdated:v47];
            }

            v48 = [(PLChangeList *)v68->_changedAlbums updated];
            [v48 addObject:v33];

            v49 = [(PLChangeNotificationCenter *)v68 _takeSnapshotOfObject:v33];
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

  v26 = v68;
LABEL_80:
  [(PLChangeNotificationCenter *)v26 _evaluateContainersWithUpdatedContent];
  [(PLChangeNotificationCenter *)v26 _evaluateUpdatedAssets];
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
  v3 = [(PLChangeList *)self->_changedAssets updated];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(PLChangeList *)self->_changedAssets updated];
    v14 = [PLAssetChangeNotification notificationWithChangedAssets:v5];

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
  v3 = [(PLChangeList *)self->_changedMoments updated];
  if ([v3 count])
  {

LABEL_4:
    v6 = [(PLChangeList *)self->_changedMoments updated];
    v7 = [(PLContentChanges *)self->_momentsContent container];
    v8 = [v7 count];

    if (v8)
    {
      if (v6)
      {
        v9 = [(PLContentChanges *)self->_momentsContent container];
        v10 = [v6 setByAddingObjectsFromArray:v9];

        v6 = v10;
      }

      else
      {
        v11 = MEMORY[0x1E695DFD8];
        v9 = [(PLContentChanges *)self->_momentsContent container];
        v6 = [v11 setWithArray:v9];
      }
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = v6;
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
          v18 = [(PLContentChanges *)self->_momentsContent container];
          if (v18)
          {
            v19 = [(PLContentChanges *)self->_momentsContent container];
            v20 = [v19 indexOfObjectIdenticalTo:v17];

            if (v20 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v18 = 0;
            }

            else
            {
              v21 = [(PLContentChanges *)self->_momentsContent updatedContent];
              v18 = [v21 objectAtIndex:v20];
            }
          }

          v22 = [(PLChangeNotificationCenter *)self _snapshotForObject:v17];
          v23 = [PLAssetContainerChangeNotification notificationWithContainer:v17 snapshot:v22 changedAssets:v18];
          [(PLChangeNotificationCenter *)self _enqueueAssetContainerChangeNotification:v23];
        }

        v14 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v14);
    }

LABEL_21:
    return;
  }

  v4 = [(PLContentChanges *)self->_momentsContent container];
  v5 = [v4 count];

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
    v7 = [(PLChangeList *)self->_changedCloudFeedEntries inserted];
    *buf = 138412290;
    v32 = v7;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "inserted=%@", buf, 0xCu);
  }

  v8 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = [(PLChangeList *)self->_changedCloudFeedEntries updated];
    *buf = 138412290;
    v32 = v9;
    _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEBUG, "updated=%@", buf, 0xCu);
  }

  v10 = PLCloudFeedGetLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    v11 = [(PLChangeList *)self->_changedCloudFeedEntries deleted];
    *buf = 138412290;
    v32 = v11;
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

  v14 = [(PLChangeList *)self->_changedCloudFeedEntries inserted];
  if ([v14 count])
  {
    goto LABEL_14;
  }

  v15 = [(PLChangeList *)self->_changedCloudFeedEntries updated];
  if ([v15 count])
  {

LABEL_14:
LABEL_15:
    v16 = [(PLChangeList *)self->_changedCloudFeedEntries inserted];
    v17 = [(PLChangeList *)self->_changedCloudFeedEntries updated];
    v18 = [(PLChangeList *)self->_changedCloudFeedEntries deleted];
    v19 = [PLCloudFeedEntriesChangeNotification notificationWithInsertedEntries:v16 updatedEntries:v17 deletedEntries:v18];

LABEL_16:
    if (v19)
    {
      [(PLChangeNotificationCenter *)self enqueueNotification:v19];
LABEL_18:

      return;
    }

    return;
  }

  v20 = [(PLChangeList *)self->_changedCloudFeedEntries deleted];
  v21 = [v20 count];

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
    v16 = self->_overloadedObjects;
    v22 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
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
            objc_enumerationMutation(v16);
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
        v23 = [(NSMutableSet *)v16 countByEnumeratingWithState:&v26 objects:v30 count:16];
        if (v23)
        {
          continue;
        }

        break;
      }
    }

    v19 = v16;
    goto LABEL_18;
  }
}

- (void)_enqueueCloudCommentsNotifications
{
  v2 = self;
  v37 = *MEMORY[0x1E69E9840];
  if ([(NSMutableSet *)self->_assetsWithCloudCommentChanges count])
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    obj = v2->_assetsWithCloudCommentChanges;
    v3 = [(NSMutableSet *)obj countByEnumeratingWithState:&v24 objects:v36 count:16];
    if (v3)
    {
      v5 = v3;
      v6 = *v25;
      v7 = 0x1E755F000uLL;
      *&v4 = 138544130;
      v20 = v4;
      v21 = v2;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v25 != v6)
          {
            objc_enumerationMutation(obj);
          }

          v9 = *(*(&v24 + 1) + 8 * i);
          v10 = [(PLChangeNotificationCenter *)v2 _snapshotForObject:v9, v20];
          v11 = [*(v7 + 2400) notificationWithAsset:v9 snapshot:v10];
          v12 = PLChangeHandlingGetLog();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            NSStringFromSelector(a2);
            v13 = v5;
            v14 = v6;
            v16 = v15 = v7;
            v17 = [v9 uuid];
            v18 = [v9 orderedLikeComments];
            v19 = [v18 count];
            *buf = v20;
            v29 = v16;
            v30 = 2114;
            v31 = v17;
            v32 = 2048;
            v33 = v19;
            v34 = 2112;
            v35 = v11;
            _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@: PLManagedAsset = %{public}@, like count = %tu, PLCloudCommentsChangeNotification = %@", buf, 0x2Au);

            v7 = v15;
            v6 = v14;
            v5 = v13;
            v2 = v21;
          }

          [(PLChangeNotificationCenter *)v2 enqueueNotification:v11];
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
  v3 = [(PLChangeList *)self->_changedAlbums updated];
  if ([v3 count])
  {

LABEL_4:
    v6 = [(PLChangeList *)self->_changedAlbums updated];
    v7 = [(PLContentChanges *)self->_albumsContent container];
    v8 = [v7 count];

    if (v8)
    {
      if (v6)
      {
        v9 = [(PLContentChanges *)self->_albumsContent container];
        v10 = [v6 setByAddingObjectsFromArray:v9];

        v6 = v10;
      }

      else
      {
        v11 = MEMORY[0x1E695DFD8];
        v9 = [(PLContentChanges *)self->_albumsContent container];
        v6 = [v11 setWithArray:v9];
      }
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v12 = v6;
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
            v18 = [(PLChangeList *)self->_changedAssets updated];
            v19 = [v18 allObjects];
          }

          else
          {
            v20 = [(PLContentChanges *)self->_albumsContent container];
            if (!v20)
            {
              goto LABEL_21;
            }

            v21 = [(PLContentChanges *)self->_albumsContent container];
            v22 = [v21 indexOfObjectIdenticalTo:v17];

            if (v22 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v20 = 0;
              goto LABEL_21;
            }

            v18 = [(PLContentChanges *)self->_albumsContent updatedContent];
            v19 = [v18 objectAtIndex:v22];
          }

          v20 = v19;

LABEL_21:
          v23 = [(PLChangeNotificationCenter *)self _snapshotForObject:v17];
          v24 = [PLAssetContainerChangeNotification notificationWithContainer:v17 snapshot:v23 changedAssets:v20];
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

  v4 = [(PLContentChanges *)self->_albumsContent container];
  v5 = [v4 count];

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
  v3 = [(PLChangeList *)self->_changedAlbumLists updated];
  if ([v3 count])
  {

LABEL_4:
    v6 = [(PLChangeList *)self->_changedAlbumLists updated];
    v7 = [(PLContentChanges *)self->_albumListsContent container];
    v8 = [v7 count];

    if (v8)
    {
      if (v6)
      {
        v9 = [(PLContentChanges *)self->_albumListsContent container];
        v10 = [v6 setByAddingObjectsFromArray:v9];

        v6 = v10;
      }

      else
      {
        v11 = MEMORY[0x1E695DFD8];
        v9 = [(PLContentChanges *)self->_albumListsContent container];
        v6 = [v11 setWithArray:v9];
      }
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v12 = v6;
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
          v18 = [(PLContentChanges *)self->_albumListsContent container];
          if (v18)
          {
            v19 = [(PLContentChanges *)self->_albumListsContent container];
            v20 = [v19 indexOfObjectIdenticalTo:v17];

            if (v20 == 0x7FFFFFFFFFFFFFFFLL)
            {
              v18 = 0;
            }

            else
            {
              v21 = [(PLContentChanges *)self->_albumListsContent updatedContent];
              v18 = [v21 objectAtIndex:v20];
            }
          }

          v22 = [(PLChangeNotificationCenter *)self _snapshotForObject:v17];
          v23 = [PLAssetContainerListChangeNotification notificationWithContainerList:v17 snapshot:v22 changedContainers:v18];
          [(PLChangeNotificationCenter *)self _enqueueAssetContainerListChangeNotification:v23];
        }

        v14 = [(NSMutableSet *)v12 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v14);
    }

LABEL_21:
    return;
  }

  v4 = [(PLContentChanges *)self->_albumListsContent container];
  v5 = [v4 count];

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
  v3 = [(PLChangeList *)self->_changedAlbums inserted];
  if ([v3 count])
  {

LABEL_4:
    v6 = [(PLManagedObjectContext *)self->_moc photoLibrary];
    v7 = [(PLChangeList *)self->_changedAlbums inserted];
    v8 = [v7 allObjects];
    v13[0] = v8;
    v9 = [(PLChangeList *)self->_changedAlbums deleted];
    v10 = [v9 allObjects];
    v13[1] = v10;
    v12[0] = @"AddedItemsKey";
    v12[1] = @"DeletedItemsKey";
    [(PLChangeNotificationCenter *)self _enqueueNotification:@"PLPhotoLibraryDidChangeNotification" object:v6 userInfoWithObjects:v13 forKeys:v12 count:2];

    goto LABEL_5;
  }

  v4 = [(PLChangeList *)self->_changedAlbums deleted];
  v5 = [v4 count];

  if (v5)
  {
    goto LABEL_4;
  }

  if (!self->_isOverloaded)
  {
    goto LABEL_6;
  }

  v6 = [(PLManagedObjectContext *)self->_moc photoLibrary];
  [(PLChangeNotificationCenter *)self _enqueueNotification:@"PLPhotoLibraryDidChangeNotification" object:v6 userInfoWithObjects:0 forKeys:0 count:0];
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
    v4 = [(PLChangeNotificationCenter *)self descriptionOfSplitChanges];
    v6 = 138412290;
    v7 = v4;
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

- (void)postShouldReloadNotificationWithPhotoLibrary:(id)a3
{
  v7 = a3;
  v4 = objc_autoreleasePoolPush();
  v5 = [[PLPhotoLibraryShouldReloadNotification alloc] initNotificationWithPhotoLibrary:v7];
  v6 = [(PLChangeNotificationCenter *)self backingCenter];
  [v6 postNotification:v5];

  objc_autoreleasePoolPop(v4);
}

- (void)enumerateIndexMappingCachesForObject:(id)a3 withBlock:(id)a4
{
  v5 = a3;
  v6 = a4;
  v7 = v5;
  pl_dispatch_once();
  if (enumerateIndexMappingCachesForObject_withBlock__isIndexMappersDataOrigin[indexOfObjectEntity(v7)] == 1)
  {
    [v7 enumerateDerivedIndexMappers:v6];
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

- (id)_toOneRelationshipsOfInterestForObject:(id)a3
{
  v7 = a3;
  v3 = v7;
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

- (id)_attributesOfInterestForObject:(id)a3
{
  v7 = a3;
  v3 = v7;
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

- (id)_orderedRelationshipsOfInterestForObject:(id)a3
{
  v3 = a3;
  pl_dispatch_once();
  v4 = indexOfObjectEntity(v3);
  if (v4 >= 76)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PLChangeNotificationCenter _orderedRelationshipsOfInterestForObject:]"];
    [v8 handleFailureInFunction:v9 file:@"PLChangeNotificationCenter.m" lineNumber:445 description:@"Out of bounds."];
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

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (a6 == &PLChangeNotificationCenterKVOContext)
  {
    if (!self->_isProcessingRemoteDidSave)
    {
      v13 = v11;
      if (![v13 faultingState] && (objc_msgSend(v13, "isDeleted") & 1) == 0)
      {
        v14 = [v13 managedObjectContext];

        if (v14)
        {
          v15 = [v12 objectForKey:*MEMORY[0x1E696A4F8]];
          v16 = [v15 BOOLValue];

          if (v16)
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
    [(PLChangeNotificationCenter *)&v18 observeValueForKeyPath:v10 ofObject:v11 change:v12 context:a6];
  }
}

- (void)processContextDidChangeNotification:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v7 = [v4 name];
    v8 = [v4 userInfo];
    *buf = 138412546;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEBUG, "Transforming local %@ with %@", buf, 0x16u);
  }

  if (v4)
  {
    v9 = [v4 object];
    moc = self->_moc;
    self->_moc = v9;

    v11 = self->_moc;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __66__PLChangeNotificationCenter_processContextDidChangeNotification___block_invoke;
    v12[3] = &unk_1E7578848;
    v12[4] = self;
    v13 = v4;
    [(NSManagedObjectContext *)v11 pl_performBlockAndWait:v12];
  }

  objc_autoreleasePoolPop(v5);
}

- (void)removeObserver:(id)a3 name:(id)a4 object:(id)a5
{
  v8 = a5;
  v9 = a4;
  v10 = a3;
  v11 = [(PLChangeNotificationCenter *)self backingCenter];
  [v11 removeObserver:v10 name:v9 object:v8];
}

- (void)removeObserver:(id)a3
{
  v4 = a3;
  v5 = [(PLChangeNotificationCenter *)self backingCenter];
  [v5 removeObserver:v4];
}

- (id)addObserverForName:(id)a3 object:(id)a4 queue:(id)a5 usingBlock:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [(PLChangeNotificationCenter *)self backingCenter];
  v15 = [v14 addObserverForName:v13 object:v12 queue:v11 usingBlock:v10];

  return v15;
}

- (void)addObserver:(id)a3 selector:(SEL)a4 name:(id)a5 object:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a3;
  v13 = [(PLChangeNotificationCenter *)self backingCenter];
  [v13 addObserver:v12 selector:a4 name:v11 object:v10];
}

- (void)removeShouldReloadObserver:(id)a3
{
  v4 = a3;
  v5 = [(PLChangeNotificationCenter *)self backingCenter];
  [v5 removeObserver:v4 name:@"PLPhotoLibraryShouldReload" object:0];
}

- (void)addShouldReloadObserver:(id)a3
{
  v4 = a3;
  v5 = [(PLChangeNotificationCenter *)self backingCenter];
  [v5 addObserver:v4 selector:sel_shouldReload_ name:@"PLPhotoLibraryShouldReload" object:0];
}

- (void)enqueueNotification:(id)a3
{
  v4 = a3;
  if (v4)
  {
    enqueuedNotifications = self->_enqueuedNotifications;
    v8 = v4;
    if (!enqueuedNotifications)
    {
      v6 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v7 = self->_enqueuedNotifications;
      self->_enqueuedNotifications = v6;

      enqueuedNotifications = self->_enqueuedNotifications;
    }

    [(NSMutableArray *)enqueuedNotifications addObject:v8];
    v4 = v8;
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

+ (void)assertIsCompatibleWithObjectModel:(id)a3
{
  v5 = [a3 entitiesByName];
  v6 = [v5 allKeys];
  v7 = [v6 count];

  if (v7 >= 0x4C)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"PLChangeNotificationCenter.m" lineNumber:1427 description:{@"Need to increase maxEntityCount (%tu < %d)", v7, 76}];
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

+ (void)getInsertedAssetCount:(unint64_t *)a3 deletedAssetCount:(unint64_t *)a4 updatedAssets:(id)a5 fromContextDidChangeNotification:(id)a6
{
  v44 = *MEMORY[0x1E69E9840];
  v31 = a5;
  v28 = a6;
  *a3 = 0;
  v32 = a4;
  *a4 = 0;
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
        v14 = [v28 userInfo];
        v15 = [v14 objectForKey:v13];

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
                  ++*a3;
                }

                else if (v13 == v10)
                {
                  ++*v32;
                }

                else if (v20)
                {
                  [v31 addObject:v22];
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

+ (id)allManagedObjectKeysStrategyWithContext:(id)a3
{
  v7 = a3;
  v3 = v7;
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