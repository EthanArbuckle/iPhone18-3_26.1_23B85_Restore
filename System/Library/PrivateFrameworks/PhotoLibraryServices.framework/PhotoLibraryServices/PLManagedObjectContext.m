@interface PLManagedObjectContext
+ (BOOL)_coreDataWorkWithRetryForReason:(id)a3 error:(id *)a4 retryBlock:(id)a5;
+ (BOOL)_pl_megamoc_isInPLMocPerform;
+ (BOOL)_shouldRetryNewPersistentStoreCoordinatorWithError:(id)a3;
+ (BOOL)isDatabaseCreationContext:(id)a3;
+ (id)_loadingPersistentStoreCoordinatorWithReason:(id)a3 error:(id *)a4 workBlock:(id)a5;
+ (id)changeNotificationObjectIDKeys;
+ (id)changeNotificationObjectIDMutationKeys;
+ (id)changeNotificationObjectKeys;
+ (id)changeNotificationObjectMutationKeys;
+ (id)contextForRepairingSingletonObjectsWithReason:(id)a3 libraryURL:(id)a4 error:(id *)a5;
+ (id)contextForUninitializedPhotoLibrary:(id)a3 automaticallyMerges:(BOOL)a4 automaticallyPinToFirstFetch:(BOOL)a5;
+ (id)loadingPersistentStoreWithReason:(id)a3 error:(id *)a4 workBlock:(id)a5;
+ (id)newContextForPhotoLibrary:(id)a3 automaticallyMerges:(BOOL)a4;
+ (id)sanitizedErrorFromError:(id)a3;
+ (void)_pl_megamoc_contextPerformDepthPop;
+ (void)_pl_megamoc_contextPerformDepthPush;
+ (void)_pl_megamoc_runWithPerformWarningsSuppressed:(id)a3;
+ (void)_setupInitialQueryGenerationForContext:(id)a3;
+ (void)_setupNameForContext:(id)a3 withLibrary:(id)a4;
+ (void)getPersistentStoreURL:(id *)a3 options:(id *)a4 forDatabasePath:(id)a5;
- (BOOL)_adjustmentTimestampChangedChangedAttribute:(id)a3 from:(id)a4;
- (BOOL)_tooManyAssetChangesToHandle:(unint64_t)a3;
- (BOOL)getAndClearSyncChangeMarker;
- (BOOL)hasPreviouslyMergedDeleteForObject:(id)a3;
- (BOOL)hasRecordedBackgroundWorkItemWithIdentifier:(id)a3 jobType:(signed __int16)a4 jobFlags:(int64_t)a5;
- (BOOL)isReadOnly;
- (BOOL)isValidForSelector:(SEL)a3 error:(id *)a4;
- (BOOL)obtainPermanentIDsForObjects:(id)a3 error:(id *)a4;
- (BOOL)pl_performWithOptions:(unint64_t)a3 andBlock:(id)a4;
- (BOOL)save:(id *)a3;
- (PLManagedObjectContext)initWithConcurrencyType:(unint64_t)a3 libraryBundle:(id)a4;
- (PLManagedObjectContext)initWithConcurrencyType:(unint64_t)a3 libraryBundle:(id)a4 changeHandlingContainer:(id)a5 coordinator:(id)a6;
- (PLManagedObjectContextPTPNotificationDelegate)ptpNotificationDelegate;
- (PLPhotoLibrary)photoLibrary;
- (id)_pl_executeFetchRequest:(id)a3 error:(id *)a4;
- (id)executeFetchRequest:(id)a3 error:(id *)a4;
- (id)executeRequest:(id)a3 error:(id *)a4;
- (id)existingObjectWithID:(id)a3 error:(id *)a4;
- (id)getAndClearRecordedAvalancheUUIDsForUpdate;
- (id)getAndClearRecordedObjectsForCloudDeletion;
- (id)pathManager;
- (id)pl_fetchObjectsWithIDs:(id)a3;
- (id)pl_fetchObjectsWithIDs:(id)a3 rootEntity:(id)a4;
- (id)pl_graphCache;
- (id)pl_libraryBundle;
- (id)storeUUID;
- (unint64_t)countForFetchRequest:(id)a3 error:(id *)a4;
- (void)_addCloudUUID:(id)a3 forDeletionType:(int64_t)a4;
- (void)_createDelayedSaveActionsWithTransaction:(id)a3;
- (void)_destroyDelayedSaveActions;
- (void)_directPerformBlock:(id)a3;
- (void)_directPerformBlockAndWait:(id)a3;
- (void)_getInsertedIDs:(id)a3 deletedIDs:(id)a4 changedIDs:(id)a5 adjustedIDs:(id)a6 ofEntityKind:(id)a7 fromRemoteContextDidSaveObjectIDsNotification:(id)a8;
- (void)_informPTPDelegateAboutChangesFromRemoteContextSaveNotification:(id)a3;
- (void)_logDatabaseDirectoryDiagnosticInfo;
- (void)_mergeChangesFromDidSaveDictionary:(id)a3 usingObjectIDs:(BOOL)a4;
- (void)_notifyALAssetsLibraryWithChanges:(id)a3 usingObjectIDs:(BOOL)a4;
- (void)_resetName;
- (void)_setNameFromCurrentQoS;
- (void)appendDelayedDeletionsToXPCMessage:(id)a3;
- (void)connectToChangeHandling;
- (void)dealloc;
- (void)disconnectFromChangeHandling;
- (void)getAndClearUpdatedObjectsAttributes:(id *)a3 relationships:(id *)a4;
- (void)invalidateWithReason:(id)a3;
- (void)performBlock:(id)a3;
- (void)performBlockAndWait:(id)a3;
- (void)pl_wrapperForPerformBlock:(id)a3;
- (void)recordAvalancheUUIDForUpdate:(id)a3;
- (void)recordBackgroundJobWorkItemCreated:(id)a3;
- (void)recordChangesFromTriggerModifiedObjectIDs:(id)a3;
- (void)recordCloudDeletionForObject:(id)a3;
- (void)recordManagedObjectWillSave:(id)a3;
- (void)recordNeedsBackgroundJobProcessing;
- (void)recordNeedsBackgroundJobProcessingForWorkerTypes:(id)a3;
- (void)refreshAllObjects;
- (void)registerFilesystemDeletionInfo:(id)a3;
- (void)reset;
- (void)resetAllFetchingAlbums;
- (void)setName:(id)a3;
- (void)setPhotoLibrary:(id)a3;
- (void)setPtpNotificationDelegate:(id)a3;
- (void)setupDelegateWithBundle:(id)a3;
- (void)updateTransactionAuthor;
@end

@implementation PLManagedObjectContext

- (PLPhotoLibrary)photoLibrary
{
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  return WeakRetained;
}

+ (void)_pl_megamoc_contextPerformDepthPush
{
  if (_contextPerformDepthThreadKey_s_onceToken != -1)
  {
    dispatch_once(&_contextPerformDepthThreadKey_s_onceToken, &__block_literal_global_597);
  }

  v2 = pthread_getspecific(_contextPerformDepthThreadKey_s_key);
  if (_contextPerformDepthThreadKey_s_onceToken != -1)
  {
    dispatch_once(&_contextPerformDepthThreadKey_s_onceToken, &__block_literal_global_597);
  }

  v3 = _contextPerformDepthThreadKey_s_key;

  pthread_setspecific(v3, v2 + 1);
}

+ (void)_pl_megamoc_contextPerformDepthPop
{
  if (_contextPerformDepthThreadKey_s_onceToken != -1)
  {
    dispatch_once(&_contextPerformDepthThreadKey_s_onceToken, &__block_literal_global_597);
  }

  v4 = pthread_getspecific(_contextPerformDepthThreadKey_s_key);
  if (v4 <= 0)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:a1 file:@"PLManagedObjectContext.m" lineNumber:997 description:@"unbalanced calls to PLManagedObjectContext _contextPerformDepthPush/Pop()"];
  }

  if (_contextPerformDepthThreadKey_s_onceToken != -1)
  {
    dispatch_once(&_contextPerformDepthThreadKey_s_onceToken, &__block_literal_global_597);
  }

  v5 = _contextPerformDepthThreadKey_s_key;

  pthread_setspecific(v5, v4 - 1);
}

void __49__PLManagedObjectContext_updateTransactionAuthor__block_invoke(uint64_t a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = [PLPersistentHistoryTransactionModifiers transactionAuthorFromChangeSource:*(*(a1 + 32) + 324) syncChangeMarker:*(*(a1 + 32) + 224) nonCoalescing:*(*(a1 + 32) + 321)];
  [*(a1 + 32) setTransactionAuthor:v2];

  v3 = PLPersistentHistoryGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = [*(a1 + 32) transactionAuthor];
    v5 = *(a1 + 32);
    v6 = 138412546;
    v7 = v4;
    v8 = 2048;
    v9 = v5;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "Updated transaction author: %@, for context: %p", &v6, 0x16u);
  }
}

- (void)updateTransactionAuthor
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = __49__PLManagedObjectContext_updateTransactionAuthor__block_invoke;
  v2[3] = &unk_1E75781E8;
  v2[4] = self;
  [(PLManagedObjectContext *)self _directPerformBlockAndWait:v2];
}

- (void)connectToChangeHandling
{
  if (!self->_isConnectedToChangeHandling)
  {
    self->_isConnectedToChangeHandling = 1;
    if ([objc_opt_class() canMergeRemoteChanges])
    {
      [(PLChangeHandlingContainer *)self->_changeHandlingContainer registerToReceiveCoreDataChanges:self];
    }

    changeHandlingContainer = self->_changeHandlingContainer;

    [(PLChangeHandlingContainer *)changeHandlingContainer connectManagedObjectContext:self];
  }
}

- (void)dealloc
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *buf = 134217984;
    v11 = self;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "PLManagedObjectContext %p dealloc", buf, 0xCu);
  }

  [(PLManagedObjectContext *)self tearDownLocalChangeNotifications];
  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 removeObserver:self];

  [(PLManagedObjectContext *)self setPtpNotificationDelegate:0];
  if (self->_avalancheUUIDsForUpdate)
  {
    v5 = [MEMORY[0x1E696AD88] defaultCenter];
    [v5 removeObserver:objc_opt_class() name:*MEMORY[0x1E695D368] object:self];
  }

  uuidsForCloudDeletion = self->_uuidsForCloudDeletion;
  self->_uuidsForCloudDeletion = 0;

  updatedObjectsAttributes = self->_updatedObjectsAttributes;
  self->_updatedObjectsAttributes = 0;

  updatedObjectsRelationships = self->_updatedObjectsRelationships;
  self->_updatedObjectsRelationships = 0;

  [(PLManagedObjectContext *)self disconnectFromChangeHandling];
  v9.receiver = self;
  v9.super_class = PLManagedObjectContext;
  [(PLManagedObjectContext *)&v9 dealloc];
}

- (void)disconnectFromChangeHandling
{
  if (self->_isConnectedToChangeHandling)
  {
    self->_isConnectedToChangeHandling = 0;
    [(PLChangeHandlingContainer *)self->_changeHandlingContainer disconnectManagedObjectContext:self];
  }
}

- (void)_setNameFromCurrentQoS
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(PLManagedObjectContext *)self pl_basename];
  qos_class_self();
  v5 = PLShortStringFromQoSClass();
  v6 = [v3 stringWithFormat:@"%@ %@", v4, v5];

  [(PLManagedObjectContext *)self setName:v6];
}

+ (BOOL)_pl_megamoc_isInPLMocPerform
{
  if (_contextPerformDepthThreadKey_s_onceToken != -1)
  {
    dispatch_once(&_contextPerformDepthThreadKey_s_onceToken, &__block_literal_global_597);
  }

  return pthread_getspecific(_contextPerformDepthThreadKey_s_key) > 0;
}

- (BOOL)getAndClearSyncChangeMarker
{
  syncChangeMarker = self->_syncChangeMarker;
  self->_syncChangeMarker = 0;
  [(PLManagedObjectContext *)self updateTransactionAuthor];
  return syncChangeMarker;
}

- (id)getAndClearRecordedObjectsForCloudDeletion
{
  v3 = [(NSMutableDictionary *)self->_uuidsForCloudDeletion copy];
  [(NSMutableDictionary *)self->_uuidsForCloudDeletion removeAllObjects];

  return v3;
}

- (void)_resetName
{
  v3 = [(PLManagedObjectContext *)self pl_basename];
  [(PLManagedObjectContext *)self setName:v3];
}

- (void)_destroyDelayedSaveActions
{
  delayedSaveActions = self->_delayedSaveActions;
  self->_delayedSaveActions = 0;
}

- (id)pathManager
{
  v3 = [(PLManagedObjectContext *)self photoLibrary];
  v4 = [v3 pathManager];

  if (!v4)
  {
    v5 = self->_pathManager;
    if (!v5)
    {
      v5 = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
    }

    v4 = v5;
  }

  return v4;
}

+ (id)changeNotificationObjectIDMutationKeys
{
  pl_dispatch_once();
  v2 = changeNotificationObjectIDMutationKeys_pl_once_object_44;

  return v2;
}

- (void)setupDelegateWithBundle:(id)a3
{
  v4 = a3;
  if ([PLFetchRecorder isCurrentProcessEnabledForRecordingBundle:v4])
  {
    v5 = [v4 fetchRecorder];
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_alloc_init(PLManagedObjectContextDelegate);
  photosDelegate = self->_photosDelegate;
  self->_photosDelegate = v6;

  [(PLManagedObjectContextDelegate *)self->_photosDelegate setFetchRecorder:v5];
  [(PLManagedObjectContext *)self _setDelegate:self->_photosDelegate];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__PLManagedObjectContext_setupDelegateWithBundle___block_invoke;
  v8[3] = &unk_1E75781E8;
  v8[4] = self;
  [(PLManagedObjectContext *)self performBlockAndWait:v8];
}

- (void)appendDelayedDeletionsToXPCMessage:(id)a3
{
  v4 = a3;
  v5 = [(PLManagedObjectContext *)self delayedDeletions];
  [v5 appendToXPCMessage:v4 managedObjectContext:self];

  [(PLManagedObjectContext *)self setDelayedDeletions:0];
}

- (void)_informPTPDelegateAboutChangesFromRemoteContextSaveNotification:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(PLManagedObjectContext *)self ptpNotificationDelegate];
  if (v6)
  {
    v7 = [MEMORY[0x1E695DF70] array];
    v8 = [MEMORY[0x1E695DF70] array];
    v9 = [MEMORY[0x1E695DF70] array];
    v10 = [MEMORY[0x1E695DF70] array];
    v11 = [(PLManagedObject *)PLManagedAsset entityInManagedObjectContext:self];
    [(PLManagedObjectContext *)self _getInsertedIDs:v7 deletedIDs:v8 changedIDs:v9 adjustedIDs:v10 ofEntityKind:v11 fromRemoteContextDidSaveObjectIDsNotification:v4];
    v12 = [v7 count];
    v13 = [v8 count] + v12;
    v14 = v13 + [v9 count];
    if (v14 + [v10 count])
    {
      v15 = [(PLManagedObjectContext *)self concurrencyType];
      if (v15 == *MEMORY[0x1E695D708])
      {
        [v6 managedObjectContext:self libraryChangedWithInsertedAssetIDs:v7 deletedAssetIDs:v8 changedAssetIDs:v9 adjustedAssetIDs:v10];
      }

      else
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __90__PLManagedObjectContext__informPTPDelegateAboutChangesFromRemoteContextSaveNotification___block_invoke;
        v16[3] = &unk_1E75768C8;
        v17 = v6;
        v18 = self;
        v19 = v7;
        v20 = v8;
        v21 = v9;
        v22 = v10;
        [(PLManagedObjectContext *)self _directPerformBlockAndWait:v16];
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)_getInsertedIDs:(id)a3 deletedIDs:(id)a4 changedIDs:(id)a5 adjustedIDs:(id)a6 ofEntityKind:(id)a7 fromRemoteContextDidSaveObjectIDsNotification:(id)a8
{
  v53 = *MEMORY[0x1E69E9840];
  v42 = a3;
  v41 = a4;
  v38 = a5;
  v37 = a6;
  v13 = a7;
  v31 = [a8 userInfo];
  v36 = [v31 objectForKeyedSubscript:@"PLUpdatedAttributesByObjectIDKey"];
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = +[PLManagedObjectContext changeNotificationObjectIDKeys];
  v32 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
  if (v32)
  {
    v30 = *v48;
    v14 = *MEMORY[0x1E695D320];
    v40 = *MEMORY[0x1E695D2F0];
    v39 = *MEMORY[0x1E695D4C8];
    v34 = *MEMORY[0x1E695D460];
    do
    {
      v15 = 0;
      do
      {
        if (*v48 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v33 = v15;
        v16 = *(*(&v47 + 1) + 8 * v15);
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v17 = [v31 objectForKey:v16];
        v18 = [v17 countByEnumeratingWithState:&v43 objects:v51 count:16];
        if (v18)
        {
          v19 = v18;
          v20 = *v44;
          do
          {
            for (i = 0; i != v19; ++i)
            {
              if (*v44 != v20)
              {
                objc_enumerationMutation(v17);
              }

              v22 = *(*(&v43 + 1) + 8 * i);
              v23 = [v22 entity];
              v24 = [v23 isKindOfEntity:v13];

              if (v24)
              {
                if (v25 = [v16 isEqualToString:v14], v26 = v42, (v25) || (v27 = objc_msgSend(v16, "isEqualToString:", v40), v26 = v41, (v27) || ((objc_msgSend(v16, "isEqualToString:", v39) & 1) != 0 || objc_msgSend(v16, "isEqualToString:", v34)) && (objc_msgSend(v38, "addObject:", v22), v28 = -[PLManagedObjectContext _adjustmentTimestampChangedChangedAttribute:from:](self, "_adjustmentTimestampChangedChangedAttribute:from:", v22, v36), v26 = v37, v28))
                {
                  [v26 addObject:v22];
                }
              }
            }

            v19 = [v17 countByEnumeratingWithState:&v43 objects:v51 count:16];
          }

          while (v19);
        }

        v15 = v33 + 1;
      }

      while (v33 + 1 != v32);
      v32 = [obj countByEnumeratingWithState:&v47 objects:v52 count:16];
    }

    while (v32);
  }
}

- (BOOL)_adjustmentTimestampChangedChangedAttribute:(id)a3 from:(id)a4
{
  v19[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = +[PLManagedAsset entityName];
  v8 = [v5 entity];
  v9 = [v8 name];
  v10 = [v7 isEqualToString:v9];

  if (v10)
  {
    v11 = [v6 objectForKeyedSubscript:v5];
    v12 = [v11 unsignedLongLongValue];

    v19[0] = @"adjustmentTimestamp";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    v14 = [v5 entity];
    v15 = [v14 name];
    v16 = [PLPropertyIndexMapping indexValueForAttributeNames:v13 entity:v15];

    v17 = (v16 & v12) != 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_mergeChangesFromDidSaveDictionary:(id)a3 usingObjectIDs:(BOOL)a4
{
  v4 = a4;
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  v8 = [(PLManagedObjectContext *)self mergingChanges];
  if (!v8)
  {
    self->_mergingChanges = 1;
  }

  v9 = [(PLManagedObjectContext *)self userInfo];
  v10 = [v9 objectForKey:@"PLMOCRedundantDeleteObjectIDs"];

  if (!v10)
  {
    v10 = [MEMORY[0x1E695DFA8] set];
    v11 = [(PLManagedObjectContext *)self userInfo];
    [v11 setObject:v10 forKey:@"PLMOCRedundantDeleteObjectIDs"];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [v6 objectForKey:*MEMORY[0x1E695D2F0]];
  v13 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v21;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v21 != v15)
        {
          objc_enumerationMutation(v12);
        }

        [v10 addObject:*(*(&v20 + 1) + 8 * i)];
      }

      v14 = [v12 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v14);
  }

  v19.receiver = self;
  v19.super_class = PLManagedObjectContext;
  [(PLManagedObjectContext *)&v19 _mergeChangesFromDidSaveDictionary:v6 usingObjectIDs:v4];
  v17 = [(PLManagedObjectContext *)self ptpNotificationDelegate];

  if (v17)
  {
    [(PLManagedObjectContext *)self processPendingChanges];
  }

  if ([(PLManagedObjectContext *)self isBackingALAssetsLibrary])
  {
    v18 = [(PLManagedObjectContext *)self photoLibrary];

    if (v18)
    {
      [(PLManagedObjectContext *)self _notifyALAssetsLibraryWithChanges:v6 usingObjectIDs:v4];
    }
  }

  if (!v8)
  {
    self->_mergingChanges = 0;
  }

  objc_autoreleasePoolPop(v7);
}

- (void)resetAllFetchingAlbums
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [(PLGenericAlbum *)PLFetchingAlbum allAlbumsRegisteredWithManagedObjectContext:self, 0];
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      v6 = 0;
      do
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v8 + 1) + 8 * v6);
        if ([objc_opt_class() _isAssetLibraryFetchingAlbum:v7])
        {
          [v7 updateSnapshotAndClearCaches:0];
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }
}

- (void)_notifyALAssetsLibraryWithChanges:(id)a3 usingObjectIDs:(BOOL)a4
{
  v128 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if (+[PLManagedObjectContext assetsLibraryLoggingEnabled])
  {
    NSLog(&cfstr_Notifyalassets.isa, self, v5);
  }

  v7 = [v5 objectForKey:*MEMORY[0x1E695D330]];

  if (v7)
  {
    goto LABEL_63;
  }

  v96 = v6;
  v8 = [(PLManagedObject *)PLManagedAlbum entityInManagedObjectContext:self];
  v9 = [(PLManagedObject *)PLManagedAsset entityInManagedObjectContext:self];
  v10 = +[PLPhotoLibrary _assetsLibrary_isSharedPhotoStreamsSupportEnabled];
  v11 = [(PLManagedObject *)PLCloudSharedAlbum entityInManagedObjectContext:self];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __75__PLManagedObjectContext__notifyALAssetsLibraryWithChanges_usingObjectIDs___block_invoke;
  aBlock[3] = &unk_1E7568348;
  v95 = v8;
  v118 = v95;
  v91 = v10;
  v121 = v10;
  v94 = v11;
  v119 = v94;
  v12 = v9;
  v120 = v12;
  v13 = _Block_copy(aBlock);
  v14 = [MEMORY[0x1E695DF70] array];
  v15 = [MEMORY[0x1E695DF70] array];
  v16 = [v5 objectForKey:*MEMORY[0x1E695D320]];
  v99 = v14;
  v13[2](v13, v16, v14, v15);

  v17 = [MEMORY[0x1E695DF70] array];
  v18 = [MEMORY[0x1E695DF70] array];
  v19 = [v5 objectForKey:*MEMORY[0x1E695D4C8]];
  v13[2](v13, v19, v17, v18);

  v20 = [v5 objectForKey:*MEMORY[0x1E695D460]];
  v13[2](v13, v20, v17, v18);

  v21 = [v5 objectForKey:*MEMORY[0x1E695D338]];
  v107 = v17;
  v13[2](v13, v21, v17, v18);

  v22 = [MEMORY[0x1E695DF70] array];
  v23 = [MEMORY[0x1E695DF70] array];
  v97 = v5;
  v24 = [v5 objectForKey:*MEMORY[0x1E695D2F0]];
  v93 = v13;
  v101 = v22;
  v106 = v23;
  v13[2](v13, v24, v22, v23);

  v25 = [MEMORY[0x1E695DFA8] set];
  v92 = v15;
  [v25 addObjectsFromArray:v15];
  [v25 addObjectsFromArray:v18];
  v100 = v18;
  v98 = -[PLManagedObjectContext _tooManyAssetChangesToHandle:](self, "_tooManyAssetChangesToHandle:", [v18 count]);
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  v105 = self;
  v26 = [(PLChangeHandlingContainer *)self->_changeHandlingContainer allDidSaveObjectIDsUserInfo];
  v27 = [v26 objectForKeyedSubscript:@"PLUpdatedAttributesByObjectIDKey"];

  v28 = [v27 countByEnumeratingWithState:&v113 objects:v127 count:16];
  if (v28)
  {
    v29 = v28;
    v30 = *v114;
    do
    {
      for (i = 0; i != v29; ++i)
      {
        if (*v114 != v30)
        {
          objc_enumerationMutation(v27);
        }

        v32 = *(*(&v113 + 1) + 8 * i);
        v33 = [v32 entity];
        v34 = [v33 isKindOfEntity:v12];

        if (v34)
        {
          [v25 addObject:v32];
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v113 objects:v127 count:16];
    }

    while (v29);
  }

  self = v105;
  v35 = v99;
  v36 = v98;
  if (!v98)
  {
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v37 = [(PLGenericAlbum *)PLFetchingAlbum allAlbumsRegisteredWithManagedObjectContext:v105];
    v38 = [v37 countByEnumeratingWithState:&v109 objects:v126 count:16];
    if (!v38)
    {
      goto LABEL_28;
    }

    v39 = v38;
    v40 = *v110;
    v103 = *v110;
    v104 = v25;
    while (1)
    {
      v41 = 0;
      v102 = v39;
      do
      {
        if (*v110 != v40)
        {
          objc_enumerationMutation(v37);
        }

        v42 = *(*(&v109 + 1) + 8 * v41);
        if ([v42 isLibrary])
        {
          if ([v106 count])
          {
            goto LABEL_25;
          }

          v43 = MEMORY[0x1E695D5E0];
          v44 = +[PLManagedAsset entityName];
          v45 = [v43 fetchRequestWithEntityName:v44];

          v46 = MEMORY[0x1E696AB28];
          v47 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", v25];
          v125[0] = v47;
          v48 = [MEMORY[0x1E69BF328] predicateForIncludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForFinderSyncedAsset"), 1}];
          v125[1] = v48;
          v49 = [MEMORY[0x1E695DEC8] arrayWithObjects:v125 count:2];
          v50 = [v46 andPredicateWithSubpredicates:v49];
          [v45 setPredicate:v50];

          v40 = v103;
          v25 = v104;
          [v45 setFetchLimit:1];
          [v45 setResultType:4];
          [v45 setIncludesPropertyValues:0];
          [v45 setIncludesPendingChanges:0];
          v51 = [(PLManagedObjectContext *)v105 countForFetchRequest:v45 error:0];

          if (v51)
          {
            goto LABEL_25;
          }
        }

        else if ([PLManagedObjectContext _isAssetLibraryFetchingAlbum:v42])
        {
          v52 = MEMORY[0x1E695D5E0];
          v53 = +[PLManagedAsset entityName];
          v54 = [v52 fetchRequestWithEntityName:v53];

          v55 = MEMORY[0x1E696AB28];
          v56 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", v25];
          v124[0] = v56;
          v57 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForNotifyALAssetsLibraryWithChangesExclusions"), 1}];
          v124[1] = v57;
          v58 = [MEMORY[0x1E695DEC8] arrayWithObjects:v124 count:2];
          v59 = [v55 andPredicateWithSubpredicates:v58];

          v60 = +[PLFetchingAlbum predicateForAlbumKind:](PLFetchingAlbum, "predicateForAlbumKind:", [v42 kindValue]);
          v61 = MEMORY[0x1E696AB28];
          v123[0] = v59;
          v123[1] = v60;
          v39 = v102;
          v62 = [MEMORY[0x1E695DEC8] arrayWithObjects:v123 count:2];
          v63 = [v61 andPredicateWithSubpredicates:v62];

          [v54 setPredicate:v63];
          [v54 setFetchLimit:1];
          [v54 setResultType:4];
          [v54 setIncludesPropertyValues:0];
          [v54 setIncludesPendingChanges:0];
          v64 = [(PLManagedObjectContext *)v105 countForFetchRequest:v54 error:0];

          v40 = v103;
          v25 = v104;

          if (v64)
          {
LABEL_25:
            v65 = [v42 objectID];
            [v107 addObject:v65];

            [v42 updateSnapshotAndClearCaches:0];
          }
        }

        ++v41;
      }

      while (v39 != v41);
      v39 = [v37 countByEnumeratingWithState:&v109 objects:v126 count:16];
      if (!v39)
      {
LABEL_28:

        self = v105;
        v35 = v99;
        if (+[PLManagedObjectContext assetsLibraryLoggingEnabled])
        {
          NSLog(&cfstr_Insertedalbumo.isa, v105, v99);
          NSLog(&cfstr_Updatedalbumoi.isa, v105, v107);
          NSLog(&cfstr_Updatedassetoi.isa, v105, v100);
        }

        v66 = v100;
        v67 = v66;
        if (v91)
        {
          v68 = v66;
        }

        else
        {
          v69 = MEMORY[0x1E695D5E0];
          v70 = +[PLManagedAsset entityName];
          v71 = [v69 fetchRequestWithEntityName:v70];

          v72 = MEMORY[0x1E696AB28];
          v73 = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", v67];
          v122[0] = v73;
          v74 = [MEMORY[0x1E69BF328] predicateForExcludeMask:objc_msgSend(MEMORY[0x1E69BF328] useIndex:{"maskForNotifyALAssetsLibraryWithChangesCloudSharedExclusions"), 1}];
          v122[1] = v74;
          v75 = [MEMORY[0x1E695DEC8] arrayWithObjects:v122 count:2];
          v76 = [v72 andPredicateWithSubpredicates:v75];
          [v71 setPredicate:v76];

          self = v105;
          [v71 setResultType:1];
          [v71 setIncludesPropertyValues:0];
          [v71 setIncludesPendingChanges:0];
          v68 = [(PLManagedObjectContext *)v105 executeFetchRequest:v71 error:0];

          if (+[PLManagedObjectContext assetsLibraryLoggingEnabled])
          {
            NSLog(&cfstr_Updatedassetoi_0.isa, v105, v68);
          }
        }

        v77 = [MEMORY[0x1E695DF90] dictionary];
        if ([v99 count] || objc_msgSend(v107, "count") || objc_msgSend(v101, "count") || objc_msgSend(v68, "count"))
        {
          v108[0] = MEMORY[0x1E69E9820];
          v108[1] = 3221225472;
          v108[2] = __75__PLManagedObjectContext__notifyALAssetsLibraryWithChanges_usingObjectIDs___block_invoke_2;
          v108[3] = &unk_1E7568370;
          v108[4] = self;
          v78 = _Block_copy(v108);
          if ([v99 count])
          {
            v79 = v78[2](v78, v99, 1);
            if ([v79 count])
            {
              [v77 setObject:v79 forKey:@"insertedAssetGroups"];
            }
          }

          if ([v107 count])
          {
            v80 = v78[2](v78, v107, 0);
            if ([v80 count])
            {
              [v77 setObject:v80 forKey:@"updatedAssetGroups"];
            }
          }

          if ([v101 count])
          {
            v81 = v78[2](v78, v101, 0);
            if ([v81 count])
            {
              [v77 setObject:v81 forKey:@"deletedAssetGroups"];
            }
          }

          if ([v68 count])
          {
            v82 = v78[2](v78, v68, 0);
            if ([v82 count])
            {
              [v77 setObject:v82 forKey:@"updatedAssets"];
            }
          }
        }

        if (v91 || [v77 count])
        {
          if (+[PLManagedObjectContext assetsLibraryLoggingEnabled])
          {
            NSLog(&cfstr_Plgenericchang.isa, self, v77);
          }

          v83 = [MEMORY[0x1E696AD88] defaultCenter];
          v84 = MEMORY[0x1E696AD80];
          v85 = [(PLManagedObjectContext *)self photoLibrary];
          v86 = [v84 notificationWithName:@"PLGenericChangeNotification" object:v85 userInfo:v77];
          [v83 postNotification:v86];
        }

        v36 = v98;
        break;
      }
    }
  }

  v6 = v96;
  v5 = v97;
  if (v36)
  {
LABEL_63:
    [(PLManagedObjectContext *)self resetAllFetchingAlbums];
    if (+[PLManagedObjectContext assetsLibraryLoggingEnabled])
    {
      NSLog(&cfstr_Plgenericchang_0.isa, self);
    }

    v87 = [MEMORY[0x1E696AD88] defaultCenter];
    v88 = MEMORY[0x1E696AD80];
    v89 = [(PLManagedObjectContext *)self photoLibrary];
    v90 = [v88 notificationWithName:@"PLGenericChangeNotification" object:v89 userInfo:0];
    [v87 postNotification:v90];
  }

  objc_autoreleasePoolPop(v6);
}

void __75__PLManagedObjectContext__notifyALAssetsLibraryWithChanges_usingObjectIDs___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v10 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v14 = *(*(&v22 + 1) + 8 * v13);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v15 = [v14 objectID];
        }

        else
        {
          v15 = v14;
        }

        v16 = v15;
        if (v15)
        {
          v17 = [v15 entity];
          v18 = v17;
          if (v8 && [v17 isKindOfEntity:*(a1 + 32)] && ((v19 = v8, (*(a1 + 56) & 1) != 0) || (v20 = objc_msgSend(v18, "isKindOfEntity:", *(a1 + 40)), v19 = v8, !v20)) || v9 && (v21 = objc_msgSend(v18, "isKindOfEntity:", *(a1 + 48)), v19 = v9, v21))
          {
            [v19 addObject:v16];
          }
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }
}

id __75__PLManagedObjectContext__notifyALAssetsLibraryWithChanges_usingObjectIDs___block_invoke_2(uint64_t a1, void *a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v5, "count")}];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v20;
    while (1)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v19 + 1) + 8 * i);
        v14 = [*(a1 + 32) objectRegisteredForID:v13];
        if (v14)
        {
          v15 = v6;
          v16 = v14;
LABEL_8:
          [v15 addObject:v16];
          goto LABEL_13;
        }

        if (a3)
        {
          if (v10)
          {
            v15 = v10;
            v16 = v13;
            goto LABEL_8;
          }

          v10 = [MEMORY[0x1E695DF70] arrayWithObjects:{v13, 0}];
        }

LABEL_13:
      }

      v9 = [v7 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (!v9)
      {

        if (v10)
        {
          v17 = [*(a1 + 32) pl_fetchObjectsWithIDs:v7];
          [v6 addObjectsFromArray:v17];
          goto LABEL_18;
        }

        goto LABEL_19;
      }
    }
  }

  v10 = 0;
  v17 = v7;
LABEL_18:

LABEL_19:

  return v6;
}

- (id)pl_fetchObjectsWithIDs:(id)a3
{
  v50 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v31 = [MEMORY[0x1E695DF70] array];
  v4 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = v3;
  v6 = [v5 countByEnumeratingWithState:&v38 objects:v49 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v39;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v39 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v38 + 1) + 8 * i);
        v11 = [v10 entity];
        v12 = [v11 superentity];

        if (v12)
        {
          do
          {
            v13 = [v11 superentity];

            v14 = [v13 superentity];

            v11 = v13;
          }

          while (v14);
        }

        else
        {
          v13 = v11;
        }

        v15 = [v4 objectForKey:v13];
        if (!v15)
        {
          v15 = [MEMORY[0x1E695DF70] array];
          [v4 setObject:v15 forKey:v13];
        }

        [v15 addObject:v10];
      }

      v7 = [v5 countByEnumeratingWithState:&v38 objects:v49 count:16];
    }

    while (v7);
  }

  v30 = v5;

  v16 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  [v16 setIncludesPropertyValues:0];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v17 = v4;
  v18 = [v17 countByEnumeratingWithState:&v34 objects:v48 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v35;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v35 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v34 + 1) + 8 * j);
        v23 = [v17 objectForKey:v22];
        [v16 setEntity:v22];
        v24 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF in %@", v23, v30];
        [v16 setPredicate:v24];

        v33 = 0;
        v25 = [(PLManagedObjectContext *)self executeFetchRequest:v16 error:&v33];
        v26 = v33;
        if (v25)
        {
          [v31 addObjectsFromArray:v25];
        }

        else
        {
          v27 = PLBackendGetLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            v28 = [v22 name];
            *buf = 138412802;
            v43 = v28;
            v44 = 2112;
            v45 = v23;
            v46 = 2112;
            v47 = v26;
            _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, "Failed to fetch %@ oids %@: %@", buf, 0x20u);
          }
        }
      }

      v19 = [v17 countByEnumeratingWithState:&v34 objects:v48 count:16];
    }

    while (v19);
  }

  return v31;
}

- (id)pl_fetchObjectsWithIDs:(id)a3 rootEntity:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  [v8 setEntity:v7];
  v9 = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF in %@", v6];
  [v8 setPredicate:v9];

  v15 = 0;
  v10 = [(PLManagedObjectContext *)self executeFetchRequest:v8 error:&v15];
  v11 = v15;
  if (!v10)
  {
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = [v7 name];
      *buf = 138412802;
      v17 = v13;
      v18 = 2112;
      v19 = v6;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Failed to fetch %@ oids %@: %@", buf, 0x20u);
    }
  }

  return v10;
}

- (BOOL)hasRecordedBackgroundWorkItemWithIdentifier:(id)a3 jobType:(signed __int16)a4 jobFlags:(int64_t)a5
{
  backgroundWorkItemIdentifiers = self->_backgroundWorkItemIdentifiers;
  v6 = [PLBackgroundJobWorkItem jobIdentifierWithIdentifier:a3 jobType:a4 jobFlags:a5];
  LOBYTE(backgroundWorkItemIdentifiers) = [(NSMutableSet *)backgroundWorkItemIdentifiers containsObject:v6];

  return backgroundWorkItemIdentifiers;
}

- (void)recordBackgroundJobWorkItemCreated:(id)a3
{
  backgroundWorkItemIdentifiers = self->_backgroundWorkItemIdentifiers;
  v4 = [a3 jobIdentifier];
  [(NSMutableSet *)backgroundWorkItemIdentifiers addObject:v4];
}

- (void)recordNeedsBackgroundJobProcessingForWorkerTypes:(id)a3
{
  v4 = a3;
  workerTypesForBackgroundJobProcessing = self->_workerTypesForBackgroundJobProcessing;
  v8 = v4;
  if (workerTypesForBackgroundJobProcessing)
  {
    v6 = [(PLBackgroundJobWorkerTypes *)workerTypesForBackgroundJobProcessing typesMaskByUnioningWithTypes:v4];
  }

  else
  {
    v6 = v4;
  }

  v7 = self->_workerTypesForBackgroundJobProcessing;
  self->_workerTypesForBackgroundJobProcessing = v6;
}

- (void)recordNeedsBackgroundJobProcessing
{
  v3 = +[PLBackgroundJobWorkerTypes allTypesMask];
  [(PLManagedObjectContext *)self recordNeedsBackgroundJobProcessingForWorkerTypes:v3];
}

- (BOOL)_tooManyAssetChangesToHandle:(unint64_t)a3
{
  v4 = [(PLChangeHandlingContainer *)self->_changeHandlingContainer isMergingCoalescedSaveNotification];
  v5 = 100;
  if (v4)
  {
    v5 = 50;
  }

  return v5 < a3;
}

- (void)_addCloudUUID:(id)a3 forDeletionType:(int64_t)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (a4)
  {
    if (a4 > 0x11)
    {
      v7 = @"cloudUnknownDeleteGUIDs";
    }

    else
    {
      v7 = off_1E756C158[a4 - 1];
    }

    v9 = v7;
    v10 = [(NSMutableDictionary *)self->_uuidsForCloudDeletion objectForKey:v9];
    v11 = [v10 mutableCopy];

    if (!v11)
    {
      v11 = objc_opt_new();
    }

    [v11 addObject:v6];
    [(NSMutableDictionary *)self->_uuidsForCloudDeletion setObject:v11 forKey:v9];
  }

  else
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      v12 = 134218242;
      v13 = 0;
      v14 = 2112;
      v15 = v6;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_FAULT, "unexpected cloudDeletionType %ld for cloudUUID %@", &v12, 0x16u);
    }
  }
}

- (void)recordCloudDeletionForObject:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [v4 cloudDeletionType];
  v6 = [v4 cloudUUIDForDeletion];
  if (v6 && !-[PLManagedObjectContext isLocalOnlyDelete](self, "isLocalOnlyDelete") && (-[PLManagedObjectContext photoLibrary](self, "photoLibrary"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isCloudPhotoLibraryEnabled], v7, v8))
  {
    v9 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v15 = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Marking as CPLCloudDeleteStateDeleted: %{public}@ [cloudGUID: %{public}@]", &v15, 0x16u);
    }

    [v4 setCloudDeleteState:1];
    [(PLManagedObjectContext *)self recordSyncChangeMarker];
    [(PLManagedObjectContext *)self _addCloudUUID:v6 forDeletionType:v5];
  }

  else
  {
    v12 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = 138543618;
      v16 = v14;
      v17 = 2114;
      v18 = v6;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_DEBUG, "NOT marking as CPLCloudDeleteStateDeleted: %{public}@ [cloudGUID: %{public}@]", &v15, 0x16u);
    }
  }
}

- (id)getAndClearRecordedAvalancheUUIDsForUpdate
{
  v3 = [(NSMutableSet *)self->_avalancheUUIDsForUpdate copy];
  [(NSMutableSet *)self->_avalancheUUIDsForUpdate removeAllObjects];

  return v3;
}

- (void)recordAvalancheUUIDForUpdate:(id)a3
{
  v9 = a3;
  v4 = [v9 avalancheUUID];
  if (v4 && [v9 isDeleted] && (objc_msgSend(v9, "isFinderSyncedAsset") & 1) == 0)
  {
    avalancheUUIDsForUpdate = self->_avalancheUUIDsForUpdate;
    if (!avalancheUUIDsForUpdate)
    {
      v6 = objc_opt_new();
      v7 = self->_avalancheUUIDsForUpdate;
      self->_avalancheUUIDsForUpdate = v6;

      v8 = [MEMORY[0x1E696AD88] defaultCenter];
      [v8 addObserver:objc_opt_class() selector:sel_handleUpdatesForContextWillSave_ name:*MEMORY[0x1E695D368] object:self];

      avalancheUUIDsForUpdate = self->_avalancheUUIDsForUpdate;
    }

    [(NSMutableSet *)avalancheUUIDsForUpdate addObject:v4];
  }
}

- (void)registerFilesystemDeletionInfo:(id)a3
{
  v7 = a3;
  if (!self->_delayedDeletions)
  {
    v4 = objc_alloc_init(PLDelayedFiledSystemDeletions);
    delayedDeletions = self->_delayedDeletions;
    self->_delayedDeletions = v4;
  }

  v6 = [(PLManagedObjectContext *)self delayedDeletions];
  [v6 addFilesystemDeletionInfo:v7];
}

- (BOOL)hasPreviouslyMergedDeleteForObject:(id)a3
{
  v4 = a3;
  v5 = [(PLManagedObjectContext *)self userInfo];
  v6 = [v5 objectForKey:@"PLMOCRedundantDeleteObjectIDs"];

  v7 = [v4 objectID];

  LOBYTE(v4) = [v6 containsObject:v7];
  return v4;
}

- (void)_createDelayedSaveActionsWithTransaction:(id)a3
{
  v4 = a3;
  v5 = [[PLDelayedSaveActions alloc] initWithClientTransaction:v4];

  delayedSaveActions = self->_delayedSaveActions;
  self->_delayedSaveActions = v5;
}

- (void)getAndClearUpdatedObjectsAttributes:(id *)a3 relationships:(id *)a4
{
  if (a3)
  {
    *a3 = [(NSMutableDictionary *)self->_updatedObjectsAttributes copy];
    [(NSMutableDictionary *)self->_updatedObjectsAttributes removeAllObjects];
  }

  if (a4)
  {
    *a4 = [(NSMutableDictionary *)self->_updatedObjectsRelationships copy];
    updatedObjectsRelationships = self->_updatedObjectsRelationships;

    [(NSMutableDictionary *)updatedObjectsRelationships removeAllObjects];
  }
}

- (void)recordChangesFromTriggerModifiedObjectIDs:(id)a3
{
  v24 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v18;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v18 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        v10 = [v9 entity];
        v11 = [(PLManagedObject *)PLPerson entityInManagedObjectContext:self];
        v12 = [v10 isKindOfEntity:v11];

        if (v12)
        {
          v22 = @"faceCount";
          v13 = &v22;
        }

        else
        {
          v14 = [(PLManagedObject *)PLDetectedFace entityInManagedObjectContext:self];
          v15 = [v10 isKindOfEntity:v14];

          if (!v15)
          {
            goto LABEL_11;
          }

          v21 = @"assetVisible";
          v13 = &v21;
        }

        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:1];
        [(PLManagedObjectContext *)self _recordChangedKeys:v16 forObjectID:v9];

LABEL_11:
      }

      v6 = [v4 countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }
}

- (void)recordManagedObjectWillSave:(id)a3
{
  v10 = a3;
  if (([v10 isInserted] & 1) == 0)
  {
    if ([v10 isDeleted])
    {
      updatedObjectsAttributes = self->_updatedObjectsAttributes;
      v5 = [v10 objectID];
      [(NSMutableDictionary *)updatedObjectsAttributes removeObjectForKey:v5];

      updatedObjectsRelationships = self->_updatedObjectsRelationships;
      v7 = [v10 objectID];
      [(NSMutableDictionary *)updatedObjectsRelationships removeObjectForKey:v7];
    }

    else
    {
      if (![v10 isUpdated])
      {
        goto LABEL_9;
      }

      v7 = [v10 changedValues];
      v8 = [v7 allKeys];
      if ([v8 count])
      {
        v9 = [v10 objectID];
        [(PLManagedObjectContext *)self _recordChangedKeys:v8 forObjectID:v9];
      }
    }
  }

LABEL_9:
}

- (void)setName:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v8 = objc_opt_class();
    v9 = 2048;
    v10 = self;
    v11 = 2112;
    v12 = v4;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "%@ %p setName:%@", buf, 0x20u);
  }

  v6.receiver = self;
  v6.super_class = PLManagedObjectContext;
  [(PLManagedObjectContext *)&v6 setName:v4];
}

- (void)performBlockAndWait:(id)a3
{
  v4 = a3;
  v5 = [(PLManagedObjectContext *)self photoLibrary];
  if (PLIsAssetsd())
  {
    v6 = !self->_initFinished || v5 == 0;
    if (!v6 && !+[PLManagedObjectContext _pl_megamoc_isInPLMocPerform](PLManagedObjectContext, "_pl_megamoc_isInPLMocPerform") && !+[PLConcurrencyLimiter isRunningUnderLimiter])
    {
      v7 = PLBackendGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_FAULT, "Unexpected direct call to performBlockAndWait: sidesteps concurrency limits, convert to a perform call on photoLibrary, or call PLConcurrencyLimiter directly for plain NSManagedObjectContexts.", v8, 2u);
      }
    }
  }

  [(PLManagedObjectContext *)self _directPerformBlockAndWait:v4];
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  v5 = [(PLManagedObjectContext *)self photoLibrary];
  if (PLIsAssetsd())
  {
    v6 = !self->_initFinished || v5 == 0;
    if (!v6 && !+[PLManagedObjectContext _pl_megamoc_isInPLMocPerform](PLManagedObjectContext, "_pl_megamoc_isInPLMocPerform") && !+[PLConcurrencyLimiter isRunningUnderLimiter])
    {
      v7 = PLBackendGetLog();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
      {
        *v8 = 0;
        _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_FAULT, "Unexpected direct call to performBlock: sidesteps concurrency limits, convert to a perform call on photoLibrary, or call PLConcurrencyLimiter directly for plain NSManagedObjectContexts.", v8, 2u);
      }
    }
  }

  [(PLManagedObjectContext *)self _directPerformBlock:v4];
}

- (void)refreshAllObjects
{
  v4.receiver = self;
  v4.super_class = PLManagedObjectContext;
  [(PLManagedObjectContext *)&v4 refreshAllObjects];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_lastResetTimestamp = v3;
}

- (void)reset
{
  v4.receiver = self;
  v4.super_class = PLManagedObjectContext;
  [(PLManagedObjectContext *)&v4 reset];
  [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
  self->_lastResetTimestamp = v3;
}

- (BOOL)obtainPermanentIDsForObjects:(id)a3 error:(id *)a4
{
  v11.receiver = self;
  v11.super_class = PLManagedObjectContext;
  v12 = 0;
  v6 = [(PLManagedObjectContext *)&v11 obtainPermanentIDsForObjects:a3 error:&v12];
  v7 = v12;
  if (!v6)
  {
    v8 = [(PLManagedObjectContext *)self photoLibrary];
    [v8 handlePossibleCoreDataError:v7];

    if (a4)
    {
      v9 = v7;
      *a4 = v7;
    }
  }

  return v6;
}

- (BOOL)save:(id *)a3
{
  v39[1] = *MEMORY[0x1E69E9840];
  if ([(PLManagedObjectContext *)self isValidForSelector:a2 error:a3])
  {
    [PLUnintendedChangeChecker checkForUnintendedChangesDuringeSave:self withBlock:&__block_literal_global_17276];
    if ([objc_opt_class() shouldHavePhotoLibrary])
    {
      v5 = [(PLManagedObjectContext *)self photoLibrary];
      if (!v5)
      {
        v6 = PLBackendGetLog();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "strongPhotoLibrary is nil during PLMOC save", buf, 2u);
        }

        v7 = MEMORY[0x1E696ABC0];
        v8 = *MEMORY[0x1E69BFF48];
        v38 = *MEMORY[0x1E696A278];
        v39[0] = @"strongPhotoLibrary is nil during PLMOC save";
        v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:&v38 count:1];
        v10 = [v7 errorWithDomain:v8 code:41003 userInfo:v9];

        if (a3)
        {
          v11 = v10;
          v5 = 0;
          LOBYTE(v12) = 0;
          *a3 = v10;
        }

        else
        {
          v5 = 0;
          LOBYTE(v12) = 0;
        }

LABEL_32:

        return v12;
      }
    }

    else
    {
      v5 = 0;
    }

    if (PLIsAssetsdProxyService())
    {
      [(PLManagedObjectContext *)self hasChanges];
      v13 = 0;
      v14 = 1;
    }

    else
    {
      v14 = [(PLManagedObjectContext *)self isDatabaseCreationContext];
      v13 = 0;
      if ([(PLManagedObjectContext *)self hasChanges]&& !v14)
      {
        v15 = [MEMORY[0x1E695DFD8] setWithObject:@"PLTransactionScopeFileIngestion"];
        v16 = [(PLManagedObjectContext *)self pathManager];
        v13 = [PLClientServerTransaction beginClientTransactionWithChangeScopes:v15 pathManager:v16 identifier:"[PLManagedObjectContext save:]"];

        v17 = [(PLManagedObjectContext *)self postDelayedSaveActionsReply];
        if (v17)
        {
          [v13 addPostDelayedSaveActionsReply:v17];
        }

        [(PLManagedObjectContext *)self setPostDelayedSaveActionsReply:0];
        v18 = [(PLManagedObjectContext *)self userInfo];
        [PLClientServerTransaction addTransaction:v13 toUserInfo:v18];

        [(PLManagedObjectContext *)self _createDelayedSaveActionsWithTransaction:v13];
        v14 = 0;
      }
    }

    [(PLManagedObjectContext *)self _setNameFromCurrentQoS];
    v35.receiver = self;
    v35.super_class = PLManagedObjectContext;
    v36 = 0;
    v12 = [(PLManagedObjectContext *)&v35 save:&v36];
    v10 = v36;
    [(PLManagedObjectContext *)self _resetName];
    if (!v12)
    {
      [v13 abortTransaction];
      [v5 handlePossibleCoreDataError:v10];
      if (a3)
      {
        v19 = v10;
        *a3 = v10;
      }
    }

    v20 = [(PLManagedObjectContext *)self userInfo];
    [v20 removeObjectForKey:@"PLMOCRedundantDeleteObjectIDs"];

    if (!v14)
    {
      v21 = [(PLManagedObjectContext *)self userInfo];
      [PLClientServerTransaction removeTransactionFromUserInfo:v21];

      [(PLManagedObjectContext *)self _destroyDelayedSaveActions];
    }

    v22 = [(PLManagedObjectContext *)self postDelayedSaveActionsReply];

    if (v22)
    {
      v23 = [(PLManagedObjectContext *)self postDelayedSaveActionsReply];
      v23[2]();

      [(PLManagedObjectContext *)self setPostDelayedSaveActionsReply:0];
    }

    if (v12)
    {
      if ([(PLBackgroundJobWorkerTypes *)self->_workerTypesForBackgroundJobProcessing hasWork])
      {
        v24 = [v5 libraryServicesManager];
        v25 = [v24 backgroundJobService];
        v26 = [(PLManagedObjectContext *)self pl_libraryBundle];
        [v25 signalBackgroundProcessingNeededOnBundle:v26 workerTypes:self->_workerTypesForBackgroundJobProcessing];

        workerTypesForBackgroundJobProcessing = self->_workerTypesForBackgroundJobProcessing;
        self->_workerTypesForBackgroundJobProcessing = 0;
      }

      if ([(NSMutableSet *)self->_backgroundWorkItemIdentifiers count])
      {
        [(NSMutableSet *)self->_backgroundWorkItemIdentifiers removeAllObjects];
      }

      v28 = [(PLManagedObjectContext *)self userInfo];
      v29 = [v28 objectForKeyedSubscript:@"com.apple.photos.PLCameraPreviewWellNeedsUpdate"];
      v30 = [v29 BOOLValue];

      if (v30)
      {
        v31 = [v5 libraryServicesManager];
        v32 = [v31 cameraPreviewWellManager];
        [v32 refreshPreviewWellImageWithContext:self avoidNotificationIfLinkIsAlreadySet:1];

        v33 = [(PLManagedObjectContext *)self userInfo];
        [v33 setObject:0 forKeyedSubscript:@"com.apple.photos.PLCameraPreviewWellNeedsUpdate"];
      }
    }

    goto LABEL_32;
  }

  LOBYTE(v12) = 0;
  return v12;
}

void __31__PLManagedObjectContext_save___block_invoke(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v22 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = PLBackendGetLog();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
  {
    *buf = 138413058;
    v15 = v8;
    v16 = 2112;
    v17 = v9;
    v18 = 2112;
    v19 = v10;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_FAULT, "Unintended change during save: key %@, value: %@, context %@, object %@", buf, 0x2Au);
  }

  v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"Unintended change during save: key %@, value: %@, context %@, object %@", v8, v9, v10, v11];
  [PLDiagnostics fileRadarUserNotificationWithHeader:@"Unexpected Photo Library state" message:@"Please file a Radar against Photos" radarTitle:@"TTR: Unintended change during save" radarDescription:v13];
}

- (unint64_t)countForFetchRequest:(id)a3 error:(id *)a4
{
  v22[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = [(PLManagedObjectContext *)self isValidForSelector:a2 error:a4];
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8)
  {
    v19.receiver = self;
    v19.super_class = PLManagedObjectContext;
    v20 = 0;
    v9 = [(PLManagedObjectContext *)&v19 countForFetchRequest:v7 error:&v20];
    v10 = v20;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = [(PLManagedObjectContext *)self photoLibrary];
      [v11 handlePossibleCoreDataError:v10];

      if (!v10)
      {
        v12 = PLBackendGetLog();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_FAULT))
        {
          *v18 = 0;
          _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_FAULT, "countForFetchRequest returned NSNotFound but no error was returned", v18, 2u);
        }

        v13 = MEMORY[0x1E696ABC0];
        v14 = *MEMORY[0x1E69BFF48];
        v21 = *MEMORY[0x1E696A278];
        v22[0] = @"countForFetchRequest returned NSNotFound but no error was returned";
        v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:&v21 count:1];
        v10 = [v13 errorWithDomain:v14 code:41001 userInfo:v15];
      }

      if (a4)
      {
        v16 = v10;
        *a4 = v10;
      }
    }
  }

  return v9;
}

- (id)executeRequest:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([(PLManagedObjectContext *)self isValidForSelector:a2 error:a4])
  {
    v13.receiver = self;
    v13.super_class = PLManagedObjectContext;
    v14 = 0;
    v8 = [(PLManagedObjectContext *)&v13 executeRequest:v7 error:&v14];
    v9 = v14;
    if (!v8)
    {
      v10 = [(PLManagedObjectContext *)self photoLibrary];
      [v10 handlePossibleCoreDataError:v9];

      if (a4)
      {
        v11 = v9;
        *a4 = v9;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)executeFetchRequest:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([(PLManagedObjectContext *)self isValidForSelector:a2 error:a4])
  {
    v13 = 0;
    v8 = [(PLManagedObjectContext *)self _pl_executeFetchRequest:v7 error:&v13];
    v9 = v13;
    if (!v8)
    {
      v10 = [(PLManagedObjectContext *)self photoLibrary];
      [v10 handlePossibleCoreDataError:v9];

      if (a4)
      {
        v11 = v9;
        *a4 = v9;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)existingObjectWithID:(id)a3 error:(id *)a4
{
  v7 = a3;
  if ([(PLManagedObjectContext *)self isValidForSelector:a2 error:a4])
  {
    v13.receiver = self;
    v13.super_class = PLManagedObjectContext;
    v14 = 0;
    v8 = [(PLManagedObjectContext *)&v13 existingObjectWithID:v7 error:&v14];
    v9 = v14;
    if (!v8)
    {
      v10 = [(PLManagedObjectContext *)self photoLibrary];
      [v10 handlePossibleCoreDataError:v9];

      if (a4)
      {
        v11 = v9;
        *a4 = v9;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)_logDatabaseDirectoryDiagnosticInfo
{
  v2 = [(PLManagedObjectContext *)self pathManager];
  v3 = [v2 photosDatabasePath];
  v4 = [v3 stringByDeletingLastPathComponent];

  if (v4)
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:v4];
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Diagnostic info for database directory:", buf, 2u);
    }

    [MEMORY[0x1E69BF238] logDiagnosticInfoForURL:v5];
  }

  else
  {
    v5 = PLBackendGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v7 = 0;
      _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_ERROR, "PLMOC pathManager database directory path is nil", v7, 2u);
    }
  }
}

- (BOOL)pl_performWithOptions:(unint64_t)a3 andBlock:(id)a4
{
  v7 = a4;
  v8 = [(PLManagedObjectContext *)self isValidForSelector:a2 error:0];
  if (v8)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__PLManagedObjectContext_pl_performWithOptions_andBlock___block_invoke;
    v11[3] = &unk_1E7576850;
    objc_copyWeak(&v13, &location);
    v12 = v7;
    v10.receiver = self;
    v10.super_class = PLManagedObjectContext;
    [(PLManagedObjectContext *)&v10 performWithOptions:a3 andBlock:v11];

    objc_destroyWeak(&v13);
    objc_destroyWeak(&location);
  }

  return v8;
}

void __57__PLManagedObjectContext_pl_performWithOptions_andBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained pl_wrapperForPerformBlock:*(a1 + 32)];
}

- (void)pl_wrapperForPerformBlock:(id)a3
{
  v3 = a3;
  [objc_opt_class() _pl_megamoc_contextPerformDepthPush];
  v3[2](v3);
  [objc_opt_class() _pl_megamoc_contextPerformDepthPop];
}

- (void)invalidateWithReason:(id)a3
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"PLManagedObjectContext.m" lineNumber:673 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
  }

  if ([(PLManagedObjectContext *)self isValidForSelector:a2 error:0])
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "PLManagedObjectContext invalidateWithReason: %@", buf, 0xCu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__PLManagedObjectContext_invalidateWithReason___block_invoke;
    aBlock[3] = &unk_1E7578848;
    aBlock[4] = self;
    v10 = v5;
    v7 = _Block_copy(aBlock);
    if ([(PLManagedObjectContext *)self concurrencyType]== 1)
    {
      [(PLManagedObjectContext *)self _directPerformBlockAndWait:v7];
    }

    else
    {
      v7[2](v7);
    }
  }
}

void __47__PLManagedObjectContext_invalidateWithReason___block_invoke(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 280));
  objc_storeStrong((*(a1 + 32) + 288), *(a1 + 40));
  v2 = (*(a1 + 32) + 280);

  os_unfair_lock_unlock(v2);
}

- (BOOL)isValidForSelector:(SEL)a3 error:(id *)a4
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_invalidationStateLock);
  invalidationReason = self->_invalidationReason;
  if (invalidationReason)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(a3);
      v10 = self->_invalidationReason;
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ called after invalidate: %@", &v12, 0x16u);
    }

    if (a4)
    {
      *a4 = self->_invalidationReason;
    }
  }

  os_unfair_lock_unlock(&self->_invalidationStateLock);
  return invalidationReason == 0;
}

- (id)pl_graphCache
{
  v2 = [(PLManagedObjectContext *)self pl_libraryBundle];
  v3 = [v2 graphCache];

  return v3;
}

- (id)pl_libraryBundle
{
  v2 = [(PLManagedObjectContext *)self photoLibrary];
  v3 = [v2 libraryBundle];

  if (!v3)
  {
    v4 = +[PLPhotoLibraryBundleController sharedBundleController];
    v5 = [MEMORY[0x1E69BF2A0] systemLibraryURL];
    v3 = [v4 bundleForLibraryURL:v5];
  }

  return v3;
}

- (BOOL)isReadOnly
{
  v2 = [(PLManagedObjectContext *)self persistentStoreCoordinator];
  v3 = [v2 persistentStores];
  v4 = [v3 lastObject];
  v5 = [v4 isReadOnly];

  return v5;
}

- (id)storeUUID
{
  v2 = [(PLManagedObjectContext *)self persistentStoreCoordinator];
  v3 = [v2 persistentStores];
  v4 = [v3 firstObject];
  v5 = [v4 metadata];
  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x1E695D4B8]];

  return v6;
}

- (void)setPtpNotificationDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_ptpNotificationDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_storeWeak(&self->_ptpNotificationDelegate, obj);

    if (obj)
    {
      v7 = objc_loadWeakRetained(&self->_photoLibrary);
      v8 = [v7 libraryBundle];
      [v8 beginObservingChanges];

      v5 = obj;
      if (!self->_isObservingChangesForPTPNotificationDelegate)
      {
        v9 = [MEMORY[0x1E696AD88] defaultCenter];
        [v9 addObserver:self selector:sel__informPTPDelegateAboutChangesFromRemoteContextSaveNotification_ name:@"PLManagedObjectContextsPhotoKitNotification" object:0];

        v5 = obj;
        self->_isObservingChangesForPTPNotificationDelegate = 1;
      }
    }

    else
    {
      v10 = [MEMORY[0x1E696AD88] defaultCenter];
      [v10 removeObserver:self name:@"PLManagedObjectContextsPhotoKitNotification" object:0];

      self->_isObservingChangesForPTPNotificationDelegate = 0;
      v11 = objc_loadWeakRetained(&self->_photoLibrary);
      v12 = [v11 libraryBundle];
      [v12 endObservingChanges];

      v5 = 0;
    }
  }
}

- (PLManagedObjectContextPTPNotificationDelegate)ptpNotificationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_ptpNotificationDelegate);

  return WeakRetained;
}

- (void)setPhotoLibrary:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  if (WeakRetained)
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"PLManagedObjectContext.m" lineNumber:575 description:@"photoLibrary cannot be changed once set."];
  }

  objc_storeWeak(&self->_photoLibrary, obj);
}

- (void)_directPerformBlockAndWait:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PLManagedObjectContext__directPerformBlockAndWait___block_invoke;
  v7[3] = &unk_1E7577C08;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = PLManagedObjectContext;
  v5 = v4;
  [(PLManagedObjectContext *)&v6 performBlockAndWait:v7];
}

uint64_t __53__PLManagedObjectContext__directPerformBlockAndWait___block_invoke(uint64_t a1)
{
  [objc_opt_class() _pl_megamoc_contextPerformDepthPush];
  (*(*(a1 + 40) + 16))();
  v2 = objc_opt_class();

  return [v2 _pl_megamoc_contextPerformDepthPop];
}

- (void)_directPerformBlock:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PLManagedObjectContext__directPerformBlock___block_invoke;
  v7[3] = &unk_1E7577C08;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = PLManagedObjectContext;
  v5 = v4;
  [(PLManagedObjectContext *)&v6 performBlock:v7];
}

uint64_t __46__PLManagedObjectContext__directPerformBlock___block_invoke(uint64_t a1)
{
  [objc_opt_class() _pl_megamoc_contextPerformDepthPush];
  (*(*(a1 + 40) + 16))();
  v2 = objc_opt_class();

  return [v2 _pl_megamoc_contextPerformDepthPop];
}

- (id)_pl_executeFetchRequest:(id)a3 error:(id *)a4
{
  v20 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [PLFetchRequest pl_importantFetchNameForFetchRequest:v6];
  if (v7)
  {
    v8 = PLImportantFetchGetLog();
    v9 = os_signpost_id_generate(v8);

    v10 = v8;
    v11 = v10;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
    {
      *buf = 138543362;
      v19 = v7;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v11, OS_SIGNPOST_INTERVAL_BEGIN, v9, "ImportantPhotosFetch", "%{public}@", buf, 0xCu);
    }
  }

  else
  {
    v11 = 0;
    v9 = 0;
  }

  v17.receiver = self;
  v17.super_class = PLManagedObjectContext;
  v12 = [(PLManagedObjectContext *)&v17 executeFetchRequest:v6 error:a4];
  if (v7)
  {
    v13 = v11;
    v14 = v13;
    if (v9 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v13))
    {
      v15 = [v12 count];
      *buf = 134217984;
      v19 = v15;
      _os_signpost_emit_with_name_impl(&dword_19BF1F000, v14, OS_SIGNPOST_INTERVAL_END, v9, "ImportantPhotosFetch", "%tu", buf, 0xCu);
    }
  }

  return v12;
}

- (PLManagedObjectContext)initWithConcurrencyType:(unint64_t)a3 libraryBundle:(id)a4 changeHandlingContainer:(id)a5 coordinator:(id)a6
{
  v46 = *MEMORY[0x1E69E9840];
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v37.receiver = self;
  v37.super_class = PLManagedObjectContext;
  v13 = [(PLManagedObjectContext *)&v37 initWithConcurrencyType:a3];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_4;
  }

  if (v12)
  {
    v13->_changeSource = 0;
    [(PLManagedObjectContext *)v13 updateTransactionAuthor];
    v15 = [v10 pathManager];
    pathManager = v14->_pathManager;
    v14->_pathManager = v15;
    v17 = v15;

    objc_storeStrong(&v14->_changeHandlingContainer, a5);
    [(PLManagedObjectContext *)v14 setPersistentStoreCoordinator:v12];
    v18 = [(NSMergePolicy *)[PLMergePolicy alloc] initWithMergeType:2];
    [(PLManagedObjectContext *)v14 setMergePolicy:v18];
    v19 = objc_alloc(MEMORY[0x1E695DF90]);
    v20 = PLAllCloudDeletionKeys();
    v21 = [v19 initWithCapacity:{objc_msgSend(v20, "count")}];
    uuidsForCloudDeletion = v14->_uuidsForCloudDeletion;
    v14->_uuidsForCloudDeletion = v21;

    v23 = objc_opt_new();
    updatedObjectsAttributes = v14->_updatedObjectsAttributes;
    v14->_updatedObjectsAttributes = v23;

    v25 = objc_opt_new();
    updatedObjectsRelationships = v14->_updatedObjectsRelationships;
    v14->_updatedObjectsRelationships = v25;

    [(PLManagedObjectContext *)v14 connectToChangeHandling];
    [(PLManagedObjectContext *)v14 setupLocalChangeNotifications];
    [MEMORY[0x1E695DF00] timeIntervalSinceReferenceDate];
    v14->_lastResetTimestamp = v27;
    v14->_initFinished = 1;
    v28 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    backgroundWorkItemIdentifiers = v14->_backgroundWorkItemIdentifiers;
    v14->_backgroundWorkItemIdentifiers = v28;

    [(PLManagedObjectContext *)v14 setupDelegateWithBundle:v10];
LABEL_4:
    v30 = PLPhotosObjectLifecycleGetLog();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
    {
      v31 = objc_opt_class();
      v32 = v14->_pathManager;
      *buf = 138413058;
      v39 = v31;
      v40 = 2048;
      v41 = v14;
      v42 = 2048;
      v43 = a3;
      v44 = 2112;
      v45 = v32;
      _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEBUG, "%@ %p initWithConcurrencyType:%tu pathManager:%@", buf, 0x2Au);
    }

    v33 = v14;
    goto LABEL_10;
  }

  v34 = PLBackendGetLog();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v35 = objc_opt_class();
    *buf = 138412546;
    v39 = v35;
    v40 = 2080;
    v41 = "[PLManagedObjectContext initWithConcurrencyType:libraryBundle:changeHandlingContainer:coordinator:]";
    _os_log_impl(&dword_19BF1F000, v34, OS_LOG_TYPE_ERROR, "Returning nil context, %@:%s requires a non-nil coordinator", buf, 0x16u);
  }

  v33 = 0;
LABEL_10:

  return v33;
}

- (PLManagedObjectContext)initWithConcurrencyType:(unint64_t)a3 libraryBundle:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = [v6 changeHandlingContainer];
  v8 = [v6 persistentContainer];
  v15 = 0;
  v9 = [v8 sharedPersistentStoreCoordinatorWithError:&v15];
  v10 = v15;
  if (v9)
  {
    self = [(PLManagedObjectContext *)self initWithConcurrencyType:a3 libraryBundle:v6 changeHandlingContainer:v7 coordinator:v9];
    v11 = self;
  }

  else
  {
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = objc_opt_class();
      *buf = 138412802;
      v17 = v13;
      v18 = 2080;
      v19 = "[PLManagedObjectContext initWithConcurrencyType:libraryBundle:]";
      v20 = 2112;
      v21 = v10;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Returning nil context, %@:%s failed to get shared PSC: %@", buf, 0x20u);
    }

    v11 = 0;
  }

  return v11;
}

void __53__PLManagedObjectContext_assetsLibraryLoggingEnabled__block_invoke()
{
  v0 = [MEMORY[0x1E695E000] standardUserDefaults];
  assetsLibraryLoggingEnabled_alLogging = [v0 BOOLForKey:@"ALAssetsLibraryLoggingEnabled"];
}

+ (id)changeNotificationObjectIDKeys
{
  pl_dispatch_once();
  v2 = changeNotificationObjectIDKeys_pl_once_object_45;

  return v2;
}

void __56__PLManagedObjectContext_changeNotificationObjectIDKeys__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = [v0 initWithObjects:{*MEMORY[0x1E695D320], *MEMORY[0x1E695D4C8], *MEMORY[0x1E695D2F0], *MEMORY[0x1E695D710], *MEMORY[0x1E695D460], *MEMORY[0x1E695D338], 0}];
  v2 = changeNotificationObjectIDKeys_pl_once_object_45;
  changeNotificationObjectIDKeys_pl_once_object_45 = v1;
}

void __64__PLManagedObjectContext_changeNotificationObjectIDMutationKeys__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = [v0 initWithObjects:{*MEMORY[0x1E695D320], *MEMORY[0x1E695D4C8], *MEMORY[0x1E695D2F0], *MEMORY[0x1E695D710], 0}];
  v2 = changeNotificationObjectIDMutationKeys_pl_once_object_44;
  changeNotificationObjectIDMutationKeys_pl_once_object_44 = v1;
}

+ (id)changeNotificationObjectKeys
{
  pl_dispatch_once();
  v2 = changeNotificationObjectKeys_pl_once_object_43;

  return v2;
}

void __54__PLManagedObjectContext_changeNotificationObjectKeys__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = [v0 initWithObjects:{*MEMORY[0x1E695D328], *MEMORY[0x1E695D4D0], *MEMORY[0x1E695D2F8], *MEMORY[0x1E695D718], *MEMORY[0x1E695D468], *MEMORY[0x1E695D340], 0}];
  v2 = changeNotificationObjectKeys_pl_once_object_43;
  changeNotificationObjectKeys_pl_once_object_43 = v1;
}

+ (id)changeNotificationObjectMutationKeys
{
  pl_dispatch_once();
  v2 = changeNotificationObjectMutationKeys_pl_once_object_42;

  return v2;
}

void __62__PLManagedObjectContext_changeNotificationObjectMutationKeys__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = [v0 initWithObjects:{*MEMORY[0x1E695D328], *MEMORY[0x1E695D4D0], *MEMORY[0x1E695D2F8], *MEMORY[0x1E695D718], 0}];
  v2 = changeNotificationObjectMutationKeys_pl_once_object_42;
  changeNotificationObjectMutationKeys_pl_once_object_42 = v1;
}

+ (void)getPersistentStoreURL:(id *)a3 options:(id *)a4 forDatabasePath:(id)a5
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__PLManagedObjectContext_getPersistentStoreURL_options_forDatabasePath___block_invoke;
  v5[3] = &__block_descriptor_48_e32_v24__0__NSURL_8__NSDictionary_16l;
  v5[4] = a3;
  v5[5] = a4;
  [PLPersistentContainer getConfigurationForDatabasePath:a5 withBlock:v5];
}

id __72__PLManagedObjectContext_getPersistentStoreURL_options_forDatabasePath___block_invoke(uint64_t a1, id a2, void *a3)
{
  v6 = a2;
  **(a1 + 32) = a2;
  result = a3;
  **(a1 + 40) = a3;
  return result;
}

+ (BOOL)isDatabaseCreationContext:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = v3;
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    v7 = [v6 isDatabaseCreationContext];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

+ (id)sanitizedErrorFromError:(id)a3
{
  v3 = a3;
  if (v3)
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    v5 = [v3 localizedDescription];
    if (v5)
    {
      [v4 setObject:v5 forKeyedSubscript:*MEMORY[0x1E696A578]];
    }

    v6 = [v3 localizedFailureReason];
    if (v6)
    {
      [v4 setObject:v6 forKeyedSubscript:*MEMORY[0x1E696A588]];
    }

    v7 = MEMORY[0x1E696ABC0];
    v8 = [v3 domain];
    v9 = [v7 errorWithDomain:v8 code:objc_msgSend(v3 userInfo:{"code"), v4}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)_pl_megamoc_runWithPerformWarningsSuppressed:(id)a3
{
  v3 = a3;
  [objc_opt_class() _pl_megamoc_contextPerformDepthPush];
  v3[2](v3);

  v4 = objc_opt_class();

  [v4 _pl_megamoc_contextPerformDepthPop];
}

+ (id)contextForRepairingSingletonObjectsWithReason:(id)a3 libraryURL:(id)a4 error:(id *)a5
{
  v44[1] = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  pl_dispatch_once();
  v10 = +[PLPhotoLibraryBundleController sharedBundleController];
  v11 = [v10 lookupOrCreateBundleForLibraryURL:v9];

  if (v11)
  {
    v12 = [v11 persistentContainer];
    if (v12)
    {
      v38 = 0;
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __89__PLManagedObjectContext_contextForRepairingSingletonObjectsWithReason_libraryURL_error___block_invoke;
      v36 = &unk_1E75682E0;
      v13 = v12;
      v37 = v13;
      v14 = [a1 _loadingPersistentStoreCoordinatorWithReason:v8 error:&v38 workBlock:&v33];
      v15 = v38;
      if (v14)
      {
        v16 = [(PLManagedObjectContext *)[PLDisconnectedManagedObjectContext alloc] initWithConcurrencyType:1 libraryBundle:v11 changeHandlingContainer:0 coordinator:v14];
        if (v16)
        {
          v17 = v16;
          v18 = MEMORY[0x1E696AEC0];
          v19 = [v9 path];
          v20 = [v18 stringWithFormat:@"reason:%@ (%@)", v8, v19, v33, v34, v35, v36];
          [(PLManagedObjectContext *)v17 setName:v20];
LABEL_14:

          goto LABEL_16;
        }

        if (a5)
        {
          v30 = MEMORY[0x1E696ABC0];
          v31 = *MEMORY[0x1E69BFF48];
          v43 = *MEMORY[0x1E696A278];
          v44[0] = @"Failed to create PLDisconnectedManagedObjectContext";
          v19 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
          [v30 errorWithDomain:v31 code:46502 userInfo:v19];
          v17 = 0;
          v15 = v20 = v15;
          goto LABEL_14;
        }
      }

      v17 = 0;
LABEL_16:

      v28 = v15;
      if (v17)
      {
        goto LABEL_17;
      }

      goto LABEL_9;
    }

    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E69BFF48];
    v41[0] = *MEMORY[0x1E696A278];
    v41[1] = @"libraryURL";
    v42[0] = @"Failed to create persistent container";
    v42[1] = v9;
    v23 = MEMORY[0x1E695DF20];
    v24 = v42;
    v25 = v41;
  }

  else
  {
    v21 = MEMORY[0x1E696ABC0];
    v22 = *MEMORY[0x1E69BFF48];
    v39[0] = *MEMORY[0x1E696A278];
    v39[1] = @"libraryURL";
    v40[0] = @"Failed to create library bundle";
    v40[1] = v9;
    v23 = MEMORY[0x1E695DF20];
    v24 = v40;
    v25 = v39;
  }

  v26 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:2];
  v27 = [v21 errorWithDomain:v22 code:46102 userInfo:v26];

  v28 = v27;
LABEL_9:
  if (a5)
  {
    v29 = v28;
    v17 = 0;
    *a5 = v28;
  }

  else
  {
    v17 = 0;
  }

LABEL_17:

  return v17;
}

id __89__PLManagedObjectContext_contextForRepairingSingletonObjectsWithReason_libraryURL_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v10 = 0;
  v4 = [v3 newPersistentStoreCoordinatorForMigration:&v10];
  v5 = v10;
  v6 = v5;
  if (v4)
  {
    v7 = 1;
  }

  else
  {
    v7 = a2 == 0;
  }

  if (!v7)
  {
    v8 = v5;
    *a2 = v6;
  }

  return v4;
}

+ (id)_loadingPersistentStoreCoordinatorWithReason:(id)a3 error:(id *)a4 workBlock:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__17410;
  v25 = __Block_byref_object_dispose__17411;
  v26 = 0;
  v19 = &v21;
  v20 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __87__PLManagedObjectContext__loadingPersistentStoreCoordinatorWithReason_error_workBlock___block_invoke;
  v17[3] = &unk_1E75682B8;
  v10 = v9;
  v18 = v10;
  v11 = [a1 _coreDataWorkWithRetryForReason:v8 error:&v20 retryBlock:v17];
  v12 = v20;
  if ((v11 & 1) == 0)
  {
    v13 = PLMigrationGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v28 = v8;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to load coordinator (reason: %{public}@). Error: %@", buf, 0x16u);
    }

    if (a4)
    {
      v14 = v12;
      *a4 = v12;
    }
  }

  v15 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v15;
}

BOOL __87__PLManagedObjectContext__loadingPersistentStoreCoordinatorWithReason_error_workBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v16 = 0;
  v5 = (*(v4 + 16))();
  v6 = v16;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  v9 = *(*(*(a1 + 40) + 8) + 40);
  v10 = v6;
  v11 = v10;
  if (v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = a2 == 0;
  }

  if (!v12)
  {
    v13 = v10;
    *a2 = v11;
  }

  v14 = *(*(*(a1 + 40) + 8) + 40) != 0;
  return v14;
}

+ (id)loadingPersistentStoreWithReason:(id)a3 error:(id *)a4 workBlock:(id)a5
{
  v31 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__17410;
  v25 = __Block_byref_object_dispose__17411;
  v26 = 0;
  v19 = &v21;
  v20 = 0;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __75__PLManagedObjectContext_loadingPersistentStoreWithReason_error_workBlock___block_invoke;
  v17[3] = &unk_1E75682B8;
  v10 = v9;
  v18 = v10;
  v11 = [a1 _coreDataWorkWithRetryForReason:v8 error:&v20 retryBlock:v17];
  v12 = v20;
  if ((v11 & 1) == 0)
  {
    v13 = PLMigrationGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v28 = v8;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to load the store (reason: %{public}@). Error: %@", buf, 0x16u);
    }

    if (a4)
    {
      v14 = v12;
      *a4 = v12;
    }
  }

  v15 = v22[5];

  _Block_object_dispose(&v21, 8);

  return v15;
}

BOOL __75__PLManagedObjectContext_loadingPersistentStoreWithReason_error_workBlock___block_invoke(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v16 = 0;
  v5 = (*(v4 + 16))();
  v6 = v16;
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;

  v9 = *(*(*(a1 + 40) + 8) + 40);
  v10 = v6;
  v11 = v10;
  if (v9)
  {
    v12 = 1;
  }

  else
  {
    v12 = a2 == 0;
  }

  if (!v12)
  {
    v13 = v10;
    *a2 = v11;
  }

  v14 = *(*(*(a1 + 40) + 8) + 40) != 0;
  return v14;
}

+ (BOOL)_coreDataWorkWithRetryForReason:(id)a3 error:(id *)a4 retryBlock:(id)a5
{
  v35[2] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a5;
  v9 = [MEMORY[0x1E696AD98] numberWithDouble:{vcvtd_n_f64_u32(arc4random(), 0x20uLL) * 0.02 + 0.08}];
  v35[0] = v9;
  v10 = [MEMORY[0x1E696AD98] numberWithDouble:{vcvtd_n_f64_u32(arc4random(), 0x20uLL) * 0.25 + 0.75}];
  v35[1] = v10;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:2];

  [v11 count];
  v12 = 0;
  v13 = 0;
  do
  {
    v14 = v13;
    v26 = v13;
    v15 = v8[2](v8, &v26);
    v13 = v26;

    if (v15)
    {
      v22 = v13;
      goto LABEL_11;
    }

    if ([v11 count] <= v12 || !objc_msgSend(a1, "_shouldRetryNewPersistentStoreCoordinatorWithError:", v13))
    {
      break;
    }

    v16 = [v11 objectAtIndexedSubscript:v12];
    [v16 floatValue];
    v18 = v17;

    v19 = PLMigrationGetLog();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138413058;
      v28 = v7;
      v29 = 2048;
      v30 = v18;
      v31 = 1024;
      v32 = v12;
      v33 = 2112;
      v34 = v13;
      _os_log_impl(&dword_19BF1F000, v19, OS_LOG_TYPE_ERROR, "Failed to load coordinator (reason: %@), retry in %2.2f s, retry count %d (%@)", buf, 0x26u);
    }

    usleep((v18 * 1000000.0));
  }

  while ([v11 count] > v12++);
  v21 = v13;
  v22 = v21;
  if (a4)
  {
    v23 = v21;
    *a4 = v22;
  }

LABEL_11:

  return v15;
}

+ (BOOL)_shouldRetryNewPersistentStoreCoordinatorWithError:(id)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E695D488];
  v8[0] = &unk_1F0FBF610;
  v3 = MEMORY[0x1E695DF20];
  v4 = a3;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];
  LOBYTE(v3) = MEMORY[0x19EAEE1B0](v4, v5);

  return v3;
}

+ (void)_setupInitialQueryGenerationForContext:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695D6E0] currentQueryGenerationToken];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__17410;
  v22 = __Block_byref_object_dispose__17411;
  v23 = 0;
  v6 = [v4 concurrencyType];
  if (!v6 || *MEMORY[0x1E695D708] == v6)
  {
    v7 = (v19 + 5);
    obj = v19[5];
    v8 = [v4 setQueryGenerationFromToken:v5 error:&obj];
    objc_storeStrong(v7, obj);
    *(v25 + 24) = v8;
    if (v8)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __65__PLManagedObjectContext__setupInitialQueryGenerationForContext___block_invoke;
    v13[3] = &unk_1E7578898;
    v14 = v4;
    v16 = &v24;
    v15 = v5;
    v17 = &v18;
    [PLManagedObjectContext _pl_megamoc_runWithPerformWarningsSuppressed:v13];

    if (v25[3])
    {
      goto LABEL_9;
    }
  }

  v9 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v10 = objc_opt_class();
    v11 = v19[5];
    *buf = 138412802;
    v29 = v10;
    v30 = 2048;
    v31 = a1;
    v32 = 2114;
    v33 = v11;
    _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "%@ %p unable to set query generation to current: %{public}@", buf, 0x20u);
  }

LABEL_9:
  _Block_object_dispose(&v18, 8);

  _Block_object_dispose(&v24, 8);
}

void __65__PLManagedObjectContext__setupInitialQueryGenerationForContext___block_invoke(uint64_t a1)
{
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __65__PLManagedObjectContext__setupInitialQueryGenerationForContext___block_invoke_2;
  v8[3] = &unk_1E7578898;
  v2 = (a1 + 56);
  v7 = *(a1 + 48);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  *&v5 = v3;
  *(&v5 + 1) = v4;
  *&v6 = v7;
  *(&v6 + 1) = *v2;
  v9 = v5;
  v10 = v6;
  [v3 performBlockAndWait:v8];
}

void __65__PLManagedObjectContext__setupInitialQueryGenerationForContext___block_invoke_2(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  obj = 0;
  v4 = [v2 setQueryGenerationFromToken:v3 error:&obj];
  v5 = obj;
  *(*(a1[6] + 8) + 24) = v4;
  objc_storeStrong((*(a1[7] + 8) + 40), v5);
}

+ (void)_setupNameForContext:(id)a3 withLibrary:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [v5 pathManager];
  v16 = [v7 libraryURL];

  v8 = [MEMORY[0x1E69BF238] redactedDescriptionForFileURL:v16];
  v9 = [v5 name];
  v10 = v9;
  v11 = @"anon";
  if (v9)
  {
    v11 = v9;
  }

  v12 = v11;

  v13 = [v5 role];
  v14 = [PLPhotoLibrary stringFromLibraryRole:v13];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@) %@", v12, v8, v14];

  [v6 setPl_basename:v15];
  [v6 setName:v15];
}

+ (id)newContextForPhotoLibrary:(id)a3 automaticallyMerges:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v6 = [v5 libraryBundle];
  v7 = objc_opt_class();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 || !v4)
  {
    if (isKindOfClass)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    v7 = objc_opt_class();
  }

  else
  {
    v9 = 1;
  }

  v10 = [[v7 alloc] initWithConcurrencyType:v9 libraryBundle:v6];

  return v10;
}

+ (id)contextForUninitializedPhotoLibrary:(id)a3 automaticallyMerges:(BOOL)a4 automaticallyPinToFirstFetch:(BOOL)a5
{
  v5 = a5;
  v6 = a4;
  v8 = a3;
  pl_dispatch_once();
  v9 = [a1 newContextForPhotoLibrary:v8 automaticallyMerges:v6];
  [a1 _setupNameForContext:v9 withLibrary:v8];
  if (v5)
  {
    [a1 _setupInitialQueryGenerationForContext:v9];
  }

  [v9 _pl_setupStalenessInterval];
  [v9 setPhotoLibrary:v8];

  return v9;
}

@end