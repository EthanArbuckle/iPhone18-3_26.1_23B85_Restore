@interface PLManagedObjectContext
+ (BOOL)_coreDataWorkWithRetryForReason:(id)reason error:(id *)error retryBlock:(id)block;
+ (BOOL)_pl_megamoc_isInPLMocPerform;
+ (BOOL)_shouldRetryNewPersistentStoreCoordinatorWithError:(id)error;
+ (BOOL)isDatabaseCreationContext:(id)context;
+ (id)_loadingPersistentStoreCoordinatorWithReason:(id)reason error:(id *)error workBlock:(id)block;
+ (id)changeNotificationObjectIDKeys;
+ (id)changeNotificationObjectIDMutationKeys;
+ (id)changeNotificationObjectKeys;
+ (id)changeNotificationObjectMutationKeys;
+ (id)contextForRepairingSingletonObjectsWithReason:(id)reason libraryURL:(id)l error:(id *)error;
+ (id)contextForUninitializedPhotoLibrary:(id)library automaticallyMerges:(BOOL)merges automaticallyPinToFirstFetch:(BOOL)fetch;
+ (id)loadingPersistentStoreWithReason:(id)reason error:(id *)error workBlock:(id)block;
+ (id)newContextForPhotoLibrary:(id)library automaticallyMerges:(BOOL)merges;
+ (id)sanitizedErrorFromError:(id)error;
+ (void)_pl_megamoc_contextPerformDepthPop;
+ (void)_pl_megamoc_contextPerformDepthPush;
+ (void)_pl_megamoc_runWithPerformWarningsSuppressed:(id)suppressed;
+ (void)_setupInitialQueryGenerationForContext:(id)context;
+ (void)_setupNameForContext:(id)context withLibrary:(id)library;
+ (void)getPersistentStoreURL:(id *)l options:(id *)options forDatabasePath:(id)path;
- (BOOL)_adjustmentTimestampChangedChangedAttribute:(id)attribute from:(id)from;
- (BOOL)_tooManyAssetChangesToHandle:(unint64_t)handle;
- (BOOL)getAndClearSyncChangeMarker;
- (BOOL)hasPreviouslyMergedDeleteForObject:(id)object;
- (BOOL)hasRecordedBackgroundWorkItemWithIdentifier:(id)identifier jobType:(signed __int16)type jobFlags:(int64_t)flags;
- (BOOL)isReadOnly;
- (BOOL)isValidForSelector:(SEL)selector error:(id *)error;
- (BOOL)obtainPermanentIDsForObjects:(id)objects error:(id *)error;
- (BOOL)pl_performWithOptions:(unint64_t)options andBlock:(id)block;
- (BOOL)save:(id *)save;
- (PLManagedObjectContext)initWithConcurrencyType:(unint64_t)type libraryBundle:(id)bundle;
- (PLManagedObjectContext)initWithConcurrencyType:(unint64_t)type libraryBundle:(id)bundle changeHandlingContainer:(id)container coordinator:(id)coordinator;
- (PLManagedObjectContextPTPNotificationDelegate)ptpNotificationDelegate;
- (PLPhotoLibrary)photoLibrary;
- (id)_pl_executeFetchRequest:(id)request error:(id *)error;
- (id)executeFetchRequest:(id)request error:(id *)error;
- (id)executeRequest:(id)request error:(id *)error;
- (id)existingObjectWithID:(id)d error:(id *)error;
- (id)getAndClearRecordedAvalancheUUIDsForUpdate;
- (id)getAndClearRecordedObjectsForCloudDeletion;
- (id)pathManager;
- (id)pl_fetchObjectsWithIDs:(id)ds;
- (id)pl_fetchObjectsWithIDs:(id)ds rootEntity:(id)entity;
- (id)pl_graphCache;
- (id)pl_libraryBundle;
- (id)storeUUID;
- (unint64_t)countForFetchRequest:(id)request error:(id *)error;
- (void)_addCloudUUID:(id)d forDeletionType:(int64_t)type;
- (void)_createDelayedSaveActionsWithTransaction:(id)transaction;
- (void)_destroyDelayedSaveActions;
- (void)_directPerformBlock:(id)block;
- (void)_directPerformBlockAndWait:(id)wait;
- (void)_getInsertedIDs:(id)ds deletedIDs:(id)iDs changedIDs:(id)changedIDs adjustedIDs:(id)adjustedIDs ofEntityKind:(id)kind fromRemoteContextDidSaveObjectIDsNotification:(id)notification;
- (void)_informPTPDelegateAboutChangesFromRemoteContextSaveNotification:(id)notification;
- (void)_logDatabaseDirectoryDiagnosticInfo;
- (void)_mergeChangesFromDidSaveDictionary:(id)dictionary usingObjectIDs:(BOOL)ds;
- (void)_notifyALAssetsLibraryWithChanges:(id)changes usingObjectIDs:(BOOL)ds;
- (void)_resetName;
- (void)_setNameFromCurrentQoS;
- (void)appendDelayedDeletionsToXPCMessage:(id)message;
- (void)connectToChangeHandling;
- (void)dealloc;
- (void)disconnectFromChangeHandling;
- (void)getAndClearUpdatedObjectsAttributes:(id *)attributes relationships:(id *)relationships;
- (void)invalidateWithReason:(id)reason;
- (void)performBlock:(id)block;
- (void)performBlockAndWait:(id)wait;
- (void)pl_wrapperForPerformBlock:(id)block;
- (void)recordAvalancheUUIDForUpdate:(id)update;
- (void)recordBackgroundJobWorkItemCreated:(id)created;
- (void)recordChangesFromTriggerModifiedObjectIDs:(id)ds;
- (void)recordCloudDeletionForObject:(id)object;
- (void)recordManagedObjectWillSave:(id)save;
- (void)recordNeedsBackgroundJobProcessing;
- (void)recordNeedsBackgroundJobProcessingForWorkerTypes:(id)types;
- (void)refreshAllObjects;
- (void)registerFilesystemDeletionInfo:(id)info;
- (void)reset;
- (void)resetAllFetchingAlbums;
- (void)setName:(id)name;
- (void)setPhotoLibrary:(id)library;
- (void)setPtpNotificationDelegate:(id)delegate;
- (void)setupDelegateWithBundle:(id)bundle;
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLManagedObjectContext.m" lineNumber:997 description:@"unbalanced calls to PLManagedObjectContext _contextPerformDepthPush/Pop()"];
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
    selfCopy = self;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "PLManagedObjectContext %p dealloc", buf, 0xCu);
  }

  [(PLManagedObjectContext *)self tearDownLocalChangeNotifications];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];

  [(PLManagedObjectContext *)self setPtpNotificationDelegate:0];
  if (self->_avalancheUUIDsForUpdate)
  {
    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    [defaultCenter2 removeObserver:objc_opt_class() name:*MEMORY[0x1E695D368] object:self];
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
  pl_basename = [(PLManagedObjectContext *)self pl_basename];
  qos_class_self();
  v5 = PLShortStringFromQoSClass();
  v6 = [v3 stringWithFormat:@"%@ %@", pl_basename, v5];

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
  pl_basename = [(PLManagedObjectContext *)self pl_basename];
  [(PLManagedObjectContext *)self setName:pl_basename];
}

- (void)_destroyDelayedSaveActions
{
  delayedSaveActions = self->_delayedSaveActions;
  self->_delayedSaveActions = 0;
}

- (id)pathManager
{
  photoLibrary = [(PLManagedObjectContext *)self photoLibrary];
  pathManager = [photoLibrary pathManager];

  if (!pathManager)
  {
    systemLibraryPathManager = self->_pathManager;
    if (!systemLibraryPathManager)
    {
      systemLibraryPathManager = [MEMORY[0x1E69BF2A0] systemLibraryPathManager];
    }

    pathManager = systemLibraryPathManager;
  }

  return pathManager;
}

+ (id)changeNotificationObjectIDMutationKeys
{
  pl_dispatch_once();
  v2 = changeNotificationObjectIDMutationKeys_pl_once_object_44;

  return v2;
}

- (void)setupDelegateWithBundle:(id)bundle
{
  bundleCopy = bundle;
  if ([PLFetchRecorder isCurrentProcessEnabledForRecordingBundle:bundleCopy])
  {
    fetchRecorder = [bundleCopy fetchRecorder];
  }

  else
  {
    fetchRecorder = 0;
  }

  v6 = objc_alloc_init(PLManagedObjectContextDelegate);
  photosDelegate = self->_photosDelegate;
  self->_photosDelegate = v6;

  [(PLManagedObjectContextDelegate *)self->_photosDelegate setFetchRecorder:fetchRecorder];
  [(PLManagedObjectContext *)self _setDelegate:self->_photosDelegate];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __50__PLManagedObjectContext_setupDelegateWithBundle___block_invoke;
  v8[3] = &unk_1E75781E8;
  v8[4] = self;
  [(PLManagedObjectContext *)self performBlockAndWait:v8];
}

- (void)appendDelayedDeletionsToXPCMessage:(id)message
{
  messageCopy = message;
  delayedDeletions = [(PLManagedObjectContext *)self delayedDeletions];
  [delayedDeletions appendToXPCMessage:messageCopy managedObjectContext:self];

  [(PLManagedObjectContext *)self setDelayedDeletions:0];
}

- (void)_informPTPDelegateAboutChangesFromRemoteContextSaveNotification:(id)notification
{
  notificationCopy = notification;
  v5 = objc_autoreleasePoolPush();
  ptpNotificationDelegate = [(PLManagedObjectContext *)self ptpNotificationDelegate];
  if (ptpNotificationDelegate)
  {
    array = [MEMORY[0x1E695DF70] array];
    array2 = [MEMORY[0x1E695DF70] array];
    array3 = [MEMORY[0x1E695DF70] array];
    array4 = [MEMORY[0x1E695DF70] array];
    v11 = [(PLManagedObject *)PLManagedAsset entityInManagedObjectContext:self];
    [(PLManagedObjectContext *)self _getInsertedIDs:array deletedIDs:array2 changedIDs:array3 adjustedIDs:array4 ofEntityKind:v11 fromRemoteContextDidSaveObjectIDsNotification:notificationCopy];
    v12 = [array count];
    v13 = [array2 count] + v12;
    v14 = v13 + [array3 count];
    if (v14 + [array4 count])
    {
      concurrencyType = [(PLManagedObjectContext *)self concurrencyType];
      if (concurrencyType == *MEMORY[0x1E695D708])
      {
        [ptpNotificationDelegate managedObjectContext:self libraryChangedWithInsertedAssetIDs:array deletedAssetIDs:array2 changedAssetIDs:array3 adjustedAssetIDs:array4];
      }

      else
      {
        v16[0] = MEMORY[0x1E69E9820];
        v16[1] = 3221225472;
        v16[2] = __90__PLManagedObjectContext__informPTPDelegateAboutChangesFromRemoteContextSaveNotification___block_invoke;
        v16[3] = &unk_1E75768C8;
        v17 = ptpNotificationDelegate;
        selfCopy = self;
        v19 = array;
        v20 = array2;
        v21 = array3;
        v22 = array4;
        [(PLManagedObjectContext *)self _directPerformBlockAndWait:v16];
      }
    }
  }

  objc_autoreleasePoolPop(v5);
}

- (void)_getInsertedIDs:(id)ds deletedIDs:(id)iDs changedIDs:(id)changedIDs adjustedIDs:(id)adjustedIDs ofEntityKind:(id)kind fromRemoteContextDidSaveObjectIDsNotification:(id)notification
{
  v53 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  iDsCopy = iDs;
  changedIDsCopy = changedIDs;
  adjustedIDsCopy = adjustedIDs;
  kindCopy = kind;
  userInfo = [notification userInfo];
  v36 = [userInfo objectForKeyedSubscript:@"PLUpdatedAttributesByObjectIDKey"];
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
        v17 = [userInfo objectForKey:v16];
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
              entity = [v22 entity];
              v24 = [entity isKindOfEntity:kindCopy];

              if (v24)
              {
                if (v25 = [v16 isEqualToString:v14], v26 = dsCopy, (v25) || (v27 = objc_msgSend(v16, "isEqualToString:", v40), v26 = iDsCopy, (v27) || ((objc_msgSend(v16, "isEqualToString:", v39) & 1) != 0 || objc_msgSend(v16, "isEqualToString:", v34)) && (objc_msgSend(changedIDsCopy, "addObject:", v22), v28 = -[PLManagedObjectContext _adjustmentTimestampChangedChangedAttribute:from:](self, "_adjustmentTimestampChangedChangedAttribute:from:", v22, v36), v26 = adjustedIDsCopy, v28))
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

- (BOOL)_adjustmentTimestampChangedChangedAttribute:(id)attribute from:(id)from
{
  v19[1] = *MEMORY[0x1E69E9840];
  attributeCopy = attribute;
  fromCopy = from;
  v7 = +[PLManagedAsset entityName];
  entity = [attributeCopy entity];
  name = [entity name];
  v10 = [v7 isEqualToString:name];

  if (v10)
  {
    v11 = [fromCopy objectForKeyedSubscript:attributeCopy];
    unsignedLongLongValue = [v11 unsignedLongLongValue];

    v19[0] = @"adjustmentTimestamp";
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
    entity2 = [attributeCopy entity];
    name2 = [entity2 name];
    v16 = [PLPropertyIndexMapping indexValueForAttributeNames:v13 entity:name2];

    v17 = (v16 & unsignedLongLongValue) != 0;
  }

  else
  {
    v17 = 0;
  }

  return v17;
}

- (void)_mergeChangesFromDidSaveDictionary:(id)dictionary usingObjectIDs:(BOOL)ds
{
  dsCopy = ds;
  v25 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  v7 = objc_autoreleasePoolPush();
  mergingChanges = [(PLManagedObjectContext *)self mergingChanges];
  if (!mergingChanges)
  {
    self->_mergingChanges = 1;
  }

  userInfo = [(PLManagedObjectContext *)self userInfo];
  v10 = [userInfo objectForKey:@"PLMOCRedundantDeleteObjectIDs"];

  if (!v10)
  {
    v10 = [MEMORY[0x1E695DFA8] set];
    userInfo2 = [(PLManagedObjectContext *)self userInfo];
    [userInfo2 setObject:v10 forKey:@"PLMOCRedundantDeleteObjectIDs"];
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v12 = [dictionaryCopy objectForKey:*MEMORY[0x1E695D2F0]];
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
  [(PLManagedObjectContext *)&v19 _mergeChangesFromDidSaveDictionary:dictionaryCopy usingObjectIDs:dsCopy];
  ptpNotificationDelegate = [(PLManagedObjectContext *)self ptpNotificationDelegate];

  if (ptpNotificationDelegate)
  {
    [(PLManagedObjectContext *)self processPendingChanges];
  }

  if ([(PLManagedObjectContext *)self isBackingALAssetsLibrary])
  {
    photoLibrary = [(PLManagedObjectContext *)self photoLibrary];

    if (photoLibrary)
    {
      [(PLManagedObjectContext *)self _notifyALAssetsLibraryWithChanges:dictionaryCopy usingObjectIDs:dsCopy];
    }
  }

  if (!mergingChanges)
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

- (void)_notifyALAssetsLibraryWithChanges:(id)changes usingObjectIDs:(BOOL)ds
{
  v128 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  v6 = objc_autoreleasePoolPush();
  if (+[PLManagedObjectContext assetsLibraryLoggingEnabled])
  {
    NSLog(&cfstr_Notifyalassets.isa, self, changesCopy);
  }

  v7 = [changesCopy objectForKey:*MEMORY[0x1E695D330]];

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
  array = [MEMORY[0x1E695DF70] array];
  array2 = [MEMORY[0x1E695DF70] array];
  v16 = [changesCopy objectForKey:*MEMORY[0x1E695D320]];
  v99 = array;
  v13[2](v13, v16, array, array2);

  array3 = [MEMORY[0x1E695DF70] array];
  array4 = [MEMORY[0x1E695DF70] array];
  v19 = [changesCopy objectForKey:*MEMORY[0x1E695D4C8]];
  v13[2](v13, v19, array3, array4);

  v20 = [changesCopy objectForKey:*MEMORY[0x1E695D460]];
  v13[2](v13, v20, array3, array4);

  v21 = [changesCopy objectForKey:*MEMORY[0x1E695D338]];
  v107 = array3;
  v13[2](v13, v21, array3, array4);

  array5 = [MEMORY[0x1E695DF70] array];
  array6 = [MEMORY[0x1E695DF70] array];
  v97 = changesCopy;
  v24 = [changesCopy objectForKey:*MEMORY[0x1E695D2F0]];
  v93 = v13;
  v101 = array5;
  v106 = array6;
  v13[2](v13, v24, array5, array6);

  v25 = [MEMORY[0x1E695DFA8] set];
  v92 = array2;
  [v25 addObjectsFromArray:array2];
  [v25 addObjectsFromArray:array4];
  v100 = array4;
  v98 = -[PLManagedObjectContext _tooManyAssetChangesToHandle:](self, "_tooManyAssetChangesToHandle:", [array4 count]);
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v116 = 0u;
  selfCopy = self;
  allDidSaveObjectIDsUserInfo = [(PLChangeHandlingContainer *)self->_changeHandlingContainer allDidSaveObjectIDsUserInfo];
  v27 = [allDidSaveObjectIDsUserInfo objectForKeyedSubscript:@"PLUpdatedAttributesByObjectIDKey"];

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
        entity = [v32 entity];
        v34 = [entity isKindOfEntity:v12];

        if (v34)
        {
          [v25 addObject:v32];
        }
      }

      v29 = [v27 countByEnumeratingWithState:&v113 objects:v127 count:16];
    }

    while (v29);
  }

  self = selfCopy;
  v35 = v99;
  v36 = v98;
  if (!v98)
  {
    v111 = 0u;
    v112 = 0u;
    v109 = 0u;
    v110 = 0u;
    v37 = [(PLGenericAlbum *)PLFetchingAlbum allAlbumsRegisteredWithManagedObjectContext:selfCopy];
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
          v51 = [(PLManagedObjectContext *)selfCopy countForFetchRequest:v45 error:0];

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
          v64 = [(PLManagedObjectContext *)selfCopy countForFetchRequest:v54 error:0];

          v40 = v103;
          v25 = v104;

          if (v64)
          {
LABEL_25:
            objectID = [v42 objectID];
            [v107 addObject:objectID];

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

        self = selfCopy;
        v35 = v99;
        if (+[PLManagedObjectContext assetsLibraryLoggingEnabled])
        {
          NSLog(&cfstr_Insertedalbumo.isa, selfCopy, v99);
          NSLog(&cfstr_Updatedalbumoi.isa, selfCopy, v107);
          NSLog(&cfstr_Updatedassetoi.isa, selfCopy, v100);
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

          self = selfCopy;
          [v71 setResultType:1];
          [v71 setIncludesPropertyValues:0];
          [v71 setIncludesPendingChanges:0];
          v68 = [(PLManagedObjectContext *)selfCopy executeFetchRequest:v71 error:0];

          if (+[PLManagedObjectContext assetsLibraryLoggingEnabled])
          {
            NSLog(&cfstr_Updatedassetoi_0.isa, selfCopy, v68);
          }
        }

        dictionary = [MEMORY[0x1E695DF90] dictionary];
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
              [dictionary setObject:v79 forKey:@"insertedAssetGroups"];
            }
          }

          if ([v107 count])
          {
            v80 = v78[2](v78, v107, 0);
            if ([v80 count])
            {
              [dictionary setObject:v80 forKey:@"updatedAssetGroups"];
            }
          }

          if ([v101 count])
          {
            v81 = v78[2](v78, v101, 0);
            if ([v81 count])
            {
              [dictionary setObject:v81 forKey:@"deletedAssetGroups"];
            }
          }

          if ([v68 count])
          {
            v82 = v78[2](v78, v68, 0);
            if ([v82 count])
            {
              [dictionary setObject:v82 forKey:@"updatedAssets"];
            }
          }
        }

        if (v91 || [dictionary count])
        {
          if (+[PLManagedObjectContext assetsLibraryLoggingEnabled])
          {
            NSLog(&cfstr_Plgenericchang.isa, self, dictionary);
          }

          defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
          v84 = MEMORY[0x1E696AD80];
          photoLibrary = [(PLManagedObjectContext *)self photoLibrary];
          v86 = [v84 notificationWithName:@"PLGenericChangeNotification" object:photoLibrary userInfo:dictionary];
          [defaultCenter postNotification:v86];
        }

        v36 = v98;
        break;
      }
    }
  }

  v6 = v96;
  changesCopy = v97;
  if (v36)
  {
LABEL_63:
    [(PLManagedObjectContext *)self resetAllFetchingAlbums];
    if (+[PLManagedObjectContext assetsLibraryLoggingEnabled])
    {
      NSLog(&cfstr_Plgenericchang_0.isa, self);
    }

    defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
    v88 = MEMORY[0x1E696AD80];
    photoLibrary2 = [(PLManagedObjectContext *)self photoLibrary];
    v90 = [v88 notificationWithName:@"PLGenericChangeNotification" object:photoLibrary2 userInfo:0];
    [defaultCenter2 postNotification:v90];
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

- (id)pl_fetchObjectsWithIDs:(id)ds
{
  v50 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  array = [MEMORY[0x1E695DF70] array];
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v41 = 0u;
  v5 = dsCopy;
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
        entity = [v10 entity];
        superentity = [entity superentity];

        if (superentity)
        {
          do
          {
            superentity2 = [entity superentity];

            v13Superentity = [superentity2 superentity];

            entity = superentity2;
          }

          while (v13Superentity);
        }

        else
        {
          superentity2 = entity;
        }

        array2 = [strongToStrongObjectsMapTable objectForKey:superentity2];
        if (!array2)
        {
          array2 = [MEMORY[0x1E695DF70] array];
          [strongToStrongObjectsMapTable setObject:array2 forKey:superentity2];
        }

        [array2 addObject:v10];
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
  v17 = strongToStrongObjectsMapTable;
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
          [array addObjectsFromArray:v25];
        }

        else
        {
          v27 = PLBackendGetLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            name = [v22 name];
            *buf = 138412802;
            v43 = name;
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

  return array;
}

- (id)pl_fetchObjectsWithIDs:(id)ds rootEntity:(id)entity
{
  v22 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  entityCopy = entity;
  v8 = objc_alloc_init(MEMORY[0x1E695D5E0]);
  [v8 setEntity:entityCopy];
  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"SELF in %@", dsCopy];
  [v8 setPredicate:dsCopy];

  v15 = 0;
  v10 = [(PLManagedObjectContext *)self executeFetchRequest:v8 error:&v15];
  v11 = v15;
  if (!v10)
  {
    v12 = PLBackendGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      name = [entityCopy name];
      *buf = 138412802;
      v17 = name;
      v18 = 2112;
      v19 = dsCopy;
      v20 = 2112;
      v21 = v11;
      _os_log_impl(&dword_19BF1F000, v12, OS_LOG_TYPE_ERROR, "Failed to fetch %@ oids %@: %@", buf, 0x20u);
    }
  }

  return v10;
}

- (BOOL)hasRecordedBackgroundWorkItemWithIdentifier:(id)identifier jobType:(signed __int16)type jobFlags:(int64_t)flags
{
  backgroundWorkItemIdentifiers = self->_backgroundWorkItemIdentifiers;
  v6 = [PLBackgroundJobWorkItem jobIdentifierWithIdentifier:identifier jobType:type jobFlags:flags];
  LOBYTE(backgroundWorkItemIdentifiers) = [(NSMutableSet *)backgroundWorkItemIdentifiers containsObject:v6];

  return backgroundWorkItemIdentifiers;
}

- (void)recordBackgroundJobWorkItemCreated:(id)created
{
  backgroundWorkItemIdentifiers = self->_backgroundWorkItemIdentifiers;
  jobIdentifier = [created jobIdentifier];
  [(NSMutableSet *)backgroundWorkItemIdentifiers addObject:jobIdentifier];
}

- (void)recordNeedsBackgroundJobProcessingForWorkerTypes:(id)types
{
  typesCopy = types;
  workerTypesForBackgroundJobProcessing = self->_workerTypesForBackgroundJobProcessing;
  v8 = typesCopy;
  if (workerTypesForBackgroundJobProcessing)
  {
    v6 = [(PLBackgroundJobWorkerTypes *)workerTypesForBackgroundJobProcessing typesMaskByUnioningWithTypes:typesCopy];
  }

  else
  {
    v6 = typesCopy;
  }

  v7 = self->_workerTypesForBackgroundJobProcessing;
  self->_workerTypesForBackgroundJobProcessing = v6;
}

- (void)recordNeedsBackgroundJobProcessing
{
  v3 = +[PLBackgroundJobWorkerTypes allTypesMask];
  [(PLManagedObjectContext *)self recordNeedsBackgroundJobProcessingForWorkerTypes:v3];
}

- (BOOL)_tooManyAssetChangesToHandle:(unint64_t)handle
{
  isMergingCoalescedSaveNotification = [(PLChangeHandlingContainer *)self->_changeHandlingContainer isMergingCoalescedSaveNotification];
  v5 = 100;
  if (isMergingCoalescedSaveNotification)
  {
    v5 = 50;
  }

  return v5 < handle;
}

- (void)_addCloudUUID:(id)d forDeletionType:(int64_t)type
{
  v16 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (type)
  {
    if (type > 0x11)
    {
      v7 = @"cloudUnknownDeleteGUIDs";
    }

    else
    {
      v7 = off_1E756C158[type - 1];
    }

    v9 = v7;
    v10 = [(NSMutableDictionary *)self->_uuidsForCloudDeletion objectForKey:v9];
    v11 = [v10 mutableCopy];

    if (!v11)
    {
      v11 = objc_opt_new();
    }

    [v11 addObject:dCopy];
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
      v15 = dCopy;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_FAULT, "unexpected cloudDeletionType %ld for cloudUUID %@", &v12, 0x16u);
    }
  }
}

- (void)recordCloudDeletionForObject:(id)object
{
  v19 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  cloudDeletionType = [objectCopy cloudDeletionType];
  cloudUUIDForDeletion = [objectCopy cloudUUIDForDeletion];
  if (cloudUUIDForDeletion && !-[PLManagedObjectContext isLocalOnlyDelete](self, "isLocalOnlyDelete") && (-[PLManagedObjectContext photoLibrary](self, "photoLibrary"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isCloudPhotoLibraryEnabled], v7, v8))
  {
    v9 = PLPersistentHistoryGetLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = objc_opt_class();
      v11 = NSStringFromClass(v10);
      v15 = 138543618;
      v16 = v11;
      v17 = 2114;
      v18 = cloudUUIDForDeletion;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_DEFAULT, "Marking as CPLCloudDeleteStateDeleted: %{public}@ [cloudGUID: %{public}@]", &v15, 0x16u);
    }

    [objectCopy setCloudDeleteState:1];
    [(PLManagedObjectContext *)self recordSyncChangeMarker];
    [(PLManagedObjectContext *)self _addCloudUUID:cloudUUIDForDeletion forDeletionType:cloudDeletionType];
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
      v18 = cloudUUIDForDeletion;
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

- (void)recordAvalancheUUIDForUpdate:(id)update
{
  updateCopy = update;
  avalancheUUID = [updateCopy avalancheUUID];
  if (avalancheUUID && [updateCopy isDeleted] && (objc_msgSend(updateCopy, "isFinderSyncedAsset") & 1) == 0)
  {
    avalancheUUIDsForUpdate = self->_avalancheUUIDsForUpdate;
    if (!avalancheUUIDsForUpdate)
    {
      v6 = objc_opt_new();
      v7 = self->_avalancheUUIDsForUpdate;
      self->_avalancheUUIDsForUpdate = v6;

      defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter addObserver:objc_opt_class() selector:sel_handleUpdatesForContextWillSave_ name:*MEMORY[0x1E695D368] object:self];

      avalancheUUIDsForUpdate = self->_avalancheUUIDsForUpdate;
    }

    [(NSMutableSet *)avalancheUUIDsForUpdate addObject:avalancheUUID];
  }
}

- (void)registerFilesystemDeletionInfo:(id)info
{
  infoCopy = info;
  if (!self->_delayedDeletions)
  {
    v4 = objc_alloc_init(PLDelayedFiledSystemDeletions);
    delayedDeletions = self->_delayedDeletions;
    self->_delayedDeletions = v4;
  }

  delayedDeletions = [(PLManagedObjectContext *)self delayedDeletions];
  [delayedDeletions addFilesystemDeletionInfo:infoCopy];
}

- (BOOL)hasPreviouslyMergedDeleteForObject:(id)object
{
  objectCopy = object;
  userInfo = [(PLManagedObjectContext *)self userInfo];
  v6 = [userInfo objectForKey:@"PLMOCRedundantDeleteObjectIDs"];

  objectID = [objectCopy objectID];

  LOBYTE(objectCopy) = [v6 containsObject:objectID];
  return objectCopy;
}

- (void)_createDelayedSaveActionsWithTransaction:(id)transaction
{
  transactionCopy = transaction;
  v5 = [[PLDelayedSaveActions alloc] initWithClientTransaction:transactionCopy];

  delayedSaveActions = self->_delayedSaveActions;
  self->_delayedSaveActions = v5;
}

- (void)getAndClearUpdatedObjectsAttributes:(id *)attributes relationships:(id *)relationships
{
  if (attributes)
  {
    *attributes = [(NSMutableDictionary *)self->_updatedObjectsAttributes copy];
    [(NSMutableDictionary *)self->_updatedObjectsAttributes removeAllObjects];
  }

  if (relationships)
  {
    *relationships = [(NSMutableDictionary *)self->_updatedObjectsRelationships copy];
    updatedObjectsRelationships = self->_updatedObjectsRelationships;

    [(NSMutableDictionary *)updatedObjectsRelationships removeAllObjects];
  }
}

- (void)recordChangesFromTriggerModifiedObjectIDs:(id)ds
{
  v24 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [dsCopy countByEnumeratingWithState:&v17 objects:v23 count:16];
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
          objc_enumerationMutation(dsCopy);
        }

        v9 = *(*(&v17 + 1) + 8 * i);
        entity = [v9 entity];
        v11 = [(PLManagedObject *)PLPerson entityInManagedObjectContext:self];
        v12 = [entity isKindOfEntity:v11];

        if (v12)
        {
          v22 = @"faceCount";
          v13 = &v22;
        }

        else
        {
          v14 = [(PLManagedObject *)PLDetectedFace entityInManagedObjectContext:self];
          v15 = [entity isKindOfEntity:v14];

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

      v6 = [dsCopy countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v6);
  }
}

- (void)recordManagedObjectWillSave:(id)save
{
  saveCopy = save;
  if (([saveCopy isInserted] & 1) == 0)
  {
    if ([saveCopy isDeleted])
    {
      updatedObjectsAttributes = self->_updatedObjectsAttributes;
      objectID = [saveCopy objectID];
      [(NSMutableDictionary *)updatedObjectsAttributes removeObjectForKey:objectID];

      updatedObjectsRelationships = self->_updatedObjectsRelationships;
      objectID2 = [saveCopy objectID];
      [(NSMutableDictionary *)updatedObjectsRelationships removeObjectForKey:objectID2];
    }

    else
    {
      if (![saveCopy isUpdated])
      {
        goto LABEL_9;
      }

      objectID2 = [saveCopy changedValues];
      allKeys = [objectID2 allKeys];
      if ([allKeys count])
      {
        objectID3 = [saveCopy objectID];
        [(PLManagedObjectContext *)self _recordChangedKeys:allKeys forObjectID:objectID3];
      }
    }
  }

LABEL_9:
}

- (void)setName:(id)name
{
  v13 = *MEMORY[0x1E69E9840];
  nameCopy = name;
  v5 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412802;
    v8 = objc_opt_class();
    v9 = 2048;
    selfCopy = self;
    v11 = 2112;
    v12 = nameCopy;
    _os_log_impl(&dword_19BF1F000, v5, OS_LOG_TYPE_DEBUG, "%@ %p setName:%@", buf, 0x20u);
  }

  v6.receiver = self;
  v6.super_class = PLManagedObjectContext;
  [(PLManagedObjectContext *)&v6 setName:nameCopy];
}

- (void)performBlockAndWait:(id)wait
{
  waitCopy = wait;
  photoLibrary = [(PLManagedObjectContext *)self photoLibrary];
  if (PLIsAssetsd())
  {
    v6 = !self->_initFinished || photoLibrary == 0;
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

  [(PLManagedObjectContext *)self _directPerformBlockAndWait:waitCopy];
}

- (void)performBlock:(id)block
{
  blockCopy = block;
  photoLibrary = [(PLManagedObjectContext *)self photoLibrary];
  if (PLIsAssetsd())
  {
    v6 = !self->_initFinished || photoLibrary == 0;
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

  [(PLManagedObjectContext *)self _directPerformBlock:blockCopy];
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

- (BOOL)obtainPermanentIDsForObjects:(id)objects error:(id *)error
{
  v11.receiver = self;
  v11.super_class = PLManagedObjectContext;
  v12 = 0;
  v6 = [(PLManagedObjectContext *)&v11 obtainPermanentIDsForObjects:objects error:&v12];
  v7 = v12;
  if (!v6)
  {
    photoLibrary = [(PLManagedObjectContext *)self photoLibrary];
    [photoLibrary handlePossibleCoreDataError:v7];

    if (error)
    {
      v9 = v7;
      *error = v7;
    }
  }

  return v6;
}

- (BOOL)save:(id *)save
{
  v39[1] = *MEMORY[0x1E69E9840];
  if ([(PLManagedObjectContext *)self isValidForSelector:a2 error:save])
  {
    [PLUnintendedChangeChecker checkForUnintendedChangesDuringeSave:self withBlock:&__block_literal_global_17276];
    if ([objc_opt_class() shouldHavePhotoLibrary])
    {
      photoLibrary = [(PLManagedObjectContext *)self photoLibrary];
      if (!photoLibrary)
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

        if (save)
        {
          v11 = v10;
          photoLibrary = 0;
          LOBYTE(v12) = 0;
          *save = v10;
        }

        else
        {
          photoLibrary = 0;
          LOBYTE(v12) = 0;
        }

LABEL_32:

        return v12;
      }
    }

    else
    {
      photoLibrary = 0;
    }

    if (PLIsAssetsdProxyService())
    {
      [(PLManagedObjectContext *)self hasChanges];
      v13 = 0;
      isDatabaseCreationContext = 1;
    }

    else
    {
      isDatabaseCreationContext = [(PLManagedObjectContext *)self isDatabaseCreationContext];
      v13 = 0;
      if ([(PLManagedObjectContext *)self hasChanges]&& !isDatabaseCreationContext)
      {
        v15 = [MEMORY[0x1E695DFD8] setWithObject:@"PLTransactionScopeFileIngestion"];
        pathManager = [(PLManagedObjectContext *)self pathManager];
        v13 = [PLClientServerTransaction beginClientTransactionWithChangeScopes:v15 pathManager:pathManager identifier:"[PLManagedObjectContext save:]"];

        postDelayedSaveActionsReply = [(PLManagedObjectContext *)self postDelayedSaveActionsReply];
        if (postDelayedSaveActionsReply)
        {
          [v13 addPostDelayedSaveActionsReply:postDelayedSaveActionsReply];
        }

        [(PLManagedObjectContext *)self setPostDelayedSaveActionsReply:0];
        userInfo = [(PLManagedObjectContext *)self userInfo];
        [PLClientServerTransaction addTransaction:v13 toUserInfo:userInfo];

        [(PLManagedObjectContext *)self _createDelayedSaveActionsWithTransaction:v13];
        isDatabaseCreationContext = 0;
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
      [photoLibrary handlePossibleCoreDataError:v10];
      if (save)
      {
        v19 = v10;
        *save = v10;
      }
    }

    userInfo2 = [(PLManagedObjectContext *)self userInfo];
    [userInfo2 removeObjectForKey:@"PLMOCRedundantDeleteObjectIDs"];

    if (!isDatabaseCreationContext)
    {
      userInfo3 = [(PLManagedObjectContext *)self userInfo];
      [PLClientServerTransaction removeTransactionFromUserInfo:userInfo3];

      [(PLManagedObjectContext *)self _destroyDelayedSaveActions];
    }

    postDelayedSaveActionsReply2 = [(PLManagedObjectContext *)self postDelayedSaveActionsReply];

    if (postDelayedSaveActionsReply2)
    {
      postDelayedSaveActionsReply3 = [(PLManagedObjectContext *)self postDelayedSaveActionsReply];
      postDelayedSaveActionsReply3[2]();

      [(PLManagedObjectContext *)self setPostDelayedSaveActionsReply:0];
    }

    if (v12)
    {
      if ([(PLBackgroundJobWorkerTypes *)self->_workerTypesForBackgroundJobProcessing hasWork])
      {
        libraryServicesManager = [photoLibrary libraryServicesManager];
        backgroundJobService = [libraryServicesManager backgroundJobService];
        pl_libraryBundle = [(PLManagedObjectContext *)self pl_libraryBundle];
        [backgroundJobService signalBackgroundProcessingNeededOnBundle:pl_libraryBundle workerTypes:self->_workerTypesForBackgroundJobProcessing];

        workerTypesForBackgroundJobProcessing = self->_workerTypesForBackgroundJobProcessing;
        self->_workerTypesForBackgroundJobProcessing = 0;
      }

      if ([(NSMutableSet *)self->_backgroundWorkItemIdentifiers count])
      {
        [(NSMutableSet *)self->_backgroundWorkItemIdentifiers removeAllObjects];
      }

      userInfo4 = [(PLManagedObjectContext *)self userInfo];
      v29 = [userInfo4 objectForKeyedSubscript:@"com.apple.photos.PLCameraPreviewWellNeedsUpdate"];
      bOOLValue = [v29 BOOLValue];

      if (bOOLValue)
      {
        libraryServicesManager2 = [photoLibrary libraryServicesManager];
        cameraPreviewWellManager = [libraryServicesManager2 cameraPreviewWellManager];
        [cameraPreviewWellManager refreshPreviewWellImageWithContext:self avoidNotificationIfLinkIsAlreadySet:1];

        userInfo5 = [(PLManagedObjectContext *)self userInfo];
        [userInfo5 setObject:0 forKeyedSubscript:@"com.apple.photos.PLCameraPreviewWellNeedsUpdate"];
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

- (unint64_t)countForFetchRequest:(id)request error:(id *)error
{
  v22[1] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v8 = [(PLManagedObjectContext *)self isValidForSelector:a2 error:error];
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (v8)
  {
    v19.receiver = self;
    v19.super_class = PLManagedObjectContext;
    v20 = 0;
    v9 = [(PLManagedObjectContext *)&v19 countForFetchRequest:requestCopy error:&v20];
    v10 = v20;
    if (v9 == 0x7FFFFFFFFFFFFFFFLL)
    {
      photoLibrary = [(PLManagedObjectContext *)self photoLibrary];
      [photoLibrary handlePossibleCoreDataError:v10];

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

      if (error)
      {
        v16 = v10;
        *error = v10;
      }
    }
  }

  return v9;
}

- (id)executeRequest:(id)request error:(id *)error
{
  requestCopy = request;
  if ([(PLManagedObjectContext *)self isValidForSelector:a2 error:error])
  {
    v13.receiver = self;
    v13.super_class = PLManagedObjectContext;
    v14 = 0;
    v8 = [(PLManagedObjectContext *)&v13 executeRequest:requestCopy error:&v14];
    v9 = v14;
    if (!v8)
    {
      photoLibrary = [(PLManagedObjectContext *)self photoLibrary];
      [photoLibrary handlePossibleCoreDataError:v9];

      if (error)
      {
        v11 = v9;
        *error = v9;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)executeFetchRequest:(id)request error:(id *)error
{
  requestCopy = request;
  if ([(PLManagedObjectContext *)self isValidForSelector:a2 error:error])
  {
    v13 = 0;
    v8 = [(PLManagedObjectContext *)self _pl_executeFetchRequest:requestCopy error:&v13];
    v9 = v13;
    if (!v8)
    {
      photoLibrary = [(PLManagedObjectContext *)self photoLibrary];
      [photoLibrary handlePossibleCoreDataError:v9];

      if (error)
      {
        v11 = v9;
        *error = v9;
      }
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)existingObjectWithID:(id)d error:(id *)error
{
  dCopy = d;
  if ([(PLManagedObjectContext *)self isValidForSelector:a2 error:error])
  {
    v13.receiver = self;
    v13.super_class = PLManagedObjectContext;
    v14 = 0;
    v8 = [(PLManagedObjectContext *)&v13 existingObjectWithID:dCopy error:&v14];
    v9 = v14;
    if (!v8)
    {
      photoLibrary = [(PLManagedObjectContext *)self photoLibrary];
      [photoLibrary handlePossibleCoreDataError:v9];

      if (error)
      {
        v11 = v9;
        *error = v9;
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
  pathManager = [(PLManagedObjectContext *)self pathManager];
  photosDatabasePath = [pathManager photosDatabasePath];
  stringByDeletingLastPathComponent = [photosDatabasePath stringByDeletingLastPathComponent];

  if (stringByDeletingLastPathComponent)
  {
    v5 = [MEMORY[0x1E695DFF8] fileURLWithPath:stringByDeletingLastPathComponent];
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

- (BOOL)pl_performWithOptions:(unint64_t)options andBlock:(id)block
{
  blockCopy = block;
  v8 = [(PLManagedObjectContext *)self isValidForSelector:a2 error:0];
  if (v8)
  {
    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__PLManagedObjectContext_pl_performWithOptions_andBlock___block_invoke;
    v11[3] = &unk_1E7576850;
    objc_copyWeak(&v13, &location);
    v12 = blockCopy;
    v10.receiver = self;
    v10.super_class = PLManagedObjectContext;
    [(PLManagedObjectContext *)&v10 performWithOptions:options andBlock:v11];

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

- (void)pl_wrapperForPerformBlock:(id)block
{
  blockCopy = block;
  [objc_opt_class() _pl_megamoc_contextPerformDepthPush];
  blockCopy[2](blockCopy);
  [objc_opt_class() _pl_megamoc_contextPerformDepthPop];
}

- (void)invalidateWithReason:(id)reason
{
  v13 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  if (!reasonCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLManagedObjectContext.m" lineNumber:673 description:{@"Invalid parameter not satisfying: %@", @"reason"}];
  }

  if ([(PLManagedObjectContext *)self isValidForSelector:a2 error:0])
  {
    v6 = PLBackendGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v12 = reasonCopy;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_DEFAULT, "PLManagedObjectContext invalidateWithReason: %@", buf, 0xCu);
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __47__PLManagedObjectContext_invalidateWithReason___block_invoke;
    aBlock[3] = &unk_1E7578848;
    aBlock[4] = self;
    v10 = reasonCopy;
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

- (BOOL)isValidForSelector:(SEL)selector error:(id *)error
{
  v16 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&self->_invalidationStateLock);
  invalidationReason = self->_invalidationReason;
  if (invalidationReason)
  {
    v8 = PLBackendGetLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = NSStringFromSelector(selector);
      v10 = self->_invalidationReason;
      v12 = 138543618;
      v13 = v9;
      v14 = 2112;
      v15 = v10;
      _os_log_impl(&dword_19BF1F000, v8, OS_LOG_TYPE_DEFAULT, "%{public}@ called after invalidate: %@", &v12, 0x16u);
    }

    if (error)
    {
      *error = self->_invalidationReason;
    }
  }

  os_unfair_lock_unlock(&self->_invalidationStateLock);
  return invalidationReason == 0;
}

- (id)pl_graphCache
{
  pl_libraryBundle = [(PLManagedObjectContext *)self pl_libraryBundle];
  graphCache = [pl_libraryBundle graphCache];

  return graphCache;
}

- (id)pl_libraryBundle
{
  photoLibrary = [(PLManagedObjectContext *)self photoLibrary];
  libraryBundle = [photoLibrary libraryBundle];

  if (!libraryBundle)
  {
    v4 = +[PLPhotoLibraryBundleController sharedBundleController];
    systemLibraryURL = [MEMORY[0x1E69BF2A0] systemLibraryURL];
    libraryBundle = [v4 bundleForLibraryURL:systemLibraryURL];
  }

  return libraryBundle;
}

- (BOOL)isReadOnly
{
  persistentStoreCoordinator = [(PLManagedObjectContext *)self persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  lastObject = [persistentStores lastObject];
  isReadOnly = [lastObject isReadOnly];

  return isReadOnly;
}

- (id)storeUUID
{
  persistentStoreCoordinator = [(PLManagedObjectContext *)self persistentStoreCoordinator];
  persistentStores = [persistentStoreCoordinator persistentStores];
  firstObject = [persistentStores firstObject];
  metadata = [firstObject metadata];
  v6 = [metadata objectForKeyedSubscript:*MEMORY[0x1E695D4B8]];

  return v6;
}

- (void)setPtpNotificationDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_ptpNotificationDelegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    v6 = objc_storeWeak(&self->_ptpNotificationDelegate, obj);

    if (obj)
    {
      v7 = objc_loadWeakRetained(&self->_photoLibrary);
      libraryBundle = [v7 libraryBundle];
      [libraryBundle beginObservingChanges];

      v5 = obj;
      if (!self->_isObservingChangesForPTPNotificationDelegate)
      {
        defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
        [defaultCenter addObserver:self selector:sel__informPTPDelegateAboutChangesFromRemoteContextSaveNotification_ name:@"PLManagedObjectContextsPhotoKitNotification" object:0];

        v5 = obj;
        self->_isObservingChangesForPTPNotificationDelegate = 1;
      }
    }

    else
    {
      defaultCenter2 = [MEMORY[0x1E696AD88] defaultCenter];
      [defaultCenter2 removeObserver:self name:@"PLManagedObjectContextsPhotoKitNotification" object:0];

      self->_isObservingChangesForPTPNotificationDelegate = 0;
      v11 = objc_loadWeakRetained(&self->_photoLibrary);
      libraryBundle2 = [v11 libraryBundle];
      [libraryBundle2 endObservingChanges];

      v5 = 0;
    }
  }
}

- (PLManagedObjectContextPTPNotificationDelegate)ptpNotificationDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_ptpNotificationDelegate);

  return WeakRetained;
}

- (void)setPhotoLibrary:(id)library
{
  obj = library;
  WeakRetained = objc_loadWeakRetained(&self->_photoLibrary);

  if (WeakRetained)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLManagedObjectContext.m" lineNumber:575 description:@"photoLibrary cannot be changed once set."];
  }

  objc_storeWeak(&self->_photoLibrary, obj);
}

- (void)_directPerformBlockAndWait:(id)wait
{
  waitCopy = wait;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53__PLManagedObjectContext__directPerformBlockAndWait___block_invoke;
  v7[3] = &unk_1E7577C08;
  v7[4] = self;
  v8 = waitCopy;
  v6.receiver = self;
  v6.super_class = PLManagedObjectContext;
  v5 = waitCopy;
  [(PLManagedObjectContext *)&v6 performBlockAndWait:v7];
}

uint64_t __53__PLManagedObjectContext__directPerformBlockAndWait___block_invoke(uint64_t a1)
{
  [objc_opt_class() _pl_megamoc_contextPerformDepthPush];
  (*(*(a1 + 40) + 16))();
  v2 = objc_opt_class();

  return [v2 _pl_megamoc_contextPerformDepthPop];
}

- (void)_directPerformBlock:(id)block
{
  blockCopy = block;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __46__PLManagedObjectContext__directPerformBlock___block_invoke;
  v7[3] = &unk_1E7577C08;
  v7[4] = self;
  v8 = blockCopy;
  v6.receiver = self;
  v6.super_class = PLManagedObjectContext;
  v5 = blockCopy;
  [(PLManagedObjectContext *)&v6 performBlock:v7];
}

uint64_t __46__PLManagedObjectContext__directPerformBlock___block_invoke(uint64_t a1)
{
  [objc_opt_class() _pl_megamoc_contextPerformDepthPush];
  (*(*(a1 + 40) + 16))();
  v2 = objc_opt_class();

  return [v2 _pl_megamoc_contextPerformDepthPop];
}

- (id)_pl_executeFetchRequest:(id)request error:(id *)error
{
  v20 = *MEMORY[0x1E69E9840];
  requestCopy = request;
  v7 = [PLFetchRequest pl_importantFetchNameForFetchRequest:requestCopy];
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
  v12 = [(PLManagedObjectContext *)&v17 executeFetchRequest:requestCopy error:error];
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

- (PLManagedObjectContext)initWithConcurrencyType:(unint64_t)type libraryBundle:(id)bundle changeHandlingContainer:(id)container coordinator:(id)coordinator
{
  v46 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  containerCopy = container;
  coordinatorCopy = coordinator;
  v37.receiver = self;
  v37.super_class = PLManagedObjectContext;
  v13 = [(PLManagedObjectContext *)&v37 initWithConcurrencyType:type];
  v14 = v13;
  if (!v13)
  {
    goto LABEL_4;
  }

  if (coordinatorCopy)
  {
    v13->_changeSource = 0;
    [(PLManagedObjectContext *)v13 updateTransactionAuthor];
    pathManager = [bundleCopy pathManager];
    pathManager = v14->_pathManager;
    v14->_pathManager = pathManager;
    v17 = pathManager;

    objc_storeStrong(&v14->_changeHandlingContainer, container);
    [(PLManagedObjectContext *)v14 setPersistentStoreCoordinator:coordinatorCopy];
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

    [(PLManagedObjectContext *)v14 setupDelegateWithBundle:bundleCopy];
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
      typeCopy = type;
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

- (PLManagedObjectContext)initWithConcurrencyType:(unint64_t)type libraryBundle:(id)bundle
{
  v22 = *MEMORY[0x1E69E9840];
  bundleCopy = bundle;
  changeHandlingContainer = [bundleCopy changeHandlingContainer];
  persistentContainer = [bundleCopy persistentContainer];
  v15 = 0;
  v9 = [persistentContainer sharedPersistentStoreCoordinatorWithError:&v15];
  v10 = v15;
  if (v9)
  {
    self = [(PLManagedObjectContext *)self initWithConcurrencyType:type libraryBundle:bundleCopy changeHandlingContainer:changeHandlingContainer coordinator:v9];
    selfCopy = self;
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

    selfCopy = 0;
  }

  return selfCopy;
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

+ (void)getPersistentStoreURL:(id *)l options:(id *)options forDatabasePath:(id)path
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __72__PLManagedObjectContext_getPersistentStoreURL_options_forDatabasePath___block_invoke;
  v5[3] = &__block_descriptor_48_e32_v24__0__NSURL_8__NSDictionary_16l;
  v5[4] = l;
  v5[5] = options;
  [PLPersistentContainer getConfigurationForDatabasePath:path withBlock:v5];
}

id __72__PLManagedObjectContext_getPersistentStoreURL_options_forDatabasePath___block_invoke(uint64_t a1, id a2, void *a3)
{
  v6 = a2;
  **(a1 + 32) = a2;
  result = a3;
  **(a1 + 40) = a3;
  return result;
}

+ (BOOL)isDatabaseCreationContext:(id)context
{
  contextCopy = context;
  objc_opt_class();
  v4 = contextCopy;
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
    isDatabaseCreationContext = [v6 isDatabaseCreationContext];
  }

  else
  {
    isDatabaseCreationContext = 0;
  }

  return isDatabaseCreationContext;
}

+ (id)sanitizedErrorFromError:(id)error
{
  errorCopy = error;
  if (errorCopy)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    localizedDescription = [errorCopy localizedDescription];
    if (localizedDescription)
    {
      [dictionary setObject:localizedDescription forKeyedSubscript:*MEMORY[0x1E696A578]];
    }

    localizedFailureReason = [errorCopy localizedFailureReason];
    if (localizedFailureReason)
    {
      [dictionary setObject:localizedFailureReason forKeyedSubscript:*MEMORY[0x1E696A588]];
    }

    v7 = MEMORY[0x1E696ABC0];
    domain = [errorCopy domain];
    v9 = [v7 errorWithDomain:domain code:objc_msgSend(errorCopy userInfo:{"code"), dictionary}];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

+ (void)_pl_megamoc_runWithPerformWarningsSuppressed:(id)suppressed
{
  suppressedCopy = suppressed;
  [objc_opt_class() _pl_megamoc_contextPerformDepthPush];
  suppressedCopy[2](suppressedCopy);

  v4 = objc_opt_class();

  [v4 _pl_megamoc_contextPerformDepthPop];
}

+ (id)contextForRepairingSingletonObjectsWithReason:(id)reason libraryURL:(id)l error:(id *)error
{
  v44[1] = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  lCopy = l;
  pl_dispatch_once();
  v10 = +[PLPhotoLibraryBundleController sharedBundleController];
  v11 = [v10 lookupOrCreateBundleForLibraryURL:lCopy];

  if (v11)
  {
    persistentContainer = [v11 persistentContainer];
    if (persistentContainer)
    {
      v38 = 0;
      v33 = MEMORY[0x1E69E9820];
      v34 = 3221225472;
      v35 = __89__PLManagedObjectContext_contextForRepairingSingletonObjectsWithReason_libraryURL_error___block_invoke;
      v36 = &unk_1E75682E0;
      v13 = persistentContainer;
      v37 = v13;
      v14 = [self _loadingPersistentStoreCoordinatorWithReason:reasonCopy error:&v38 workBlock:&v33];
      v15 = v38;
      if (v14)
      {
        v16 = [(PLManagedObjectContext *)[PLDisconnectedManagedObjectContext alloc] initWithConcurrencyType:1 libraryBundle:v11 changeHandlingContainer:0 coordinator:v14];
        if (v16)
        {
          v17 = v16;
          v18 = MEMORY[0x1E696AEC0];
          path = [lCopy path];
          v20 = [v18 stringWithFormat:@"reason:%@ (%@)", reasonCopy, path, v33, v34, v35, v36];
          [(PLManagedObjectContext *)v17 setName:v20];
LABEL_14:

          goto LABEL_16;
        }

        if (error)
        {
          v30 = MEMORY[0x1E696ABC0];
          v31 = *MEMORY[0x1E69BFF48];
          v43 = *MEMORY[0x1E696A278];
          v44[0] = @"Failed to create PLDisconnectedManagedObjectContext";
          path = [MEMORY[0x1E695DF20] dictionaryWithObjects:v44 forKeys:&v43 count:1];
          [v30 errorWithDomain:v31 code:46502 userInfo:path];
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
    v42[1] = lCopy;
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
    v40[1] = lCopy;
    v23 = MEMORY[0x1E695DF20];
    v24 = v40;
    v25 = v39;
  }

  v26 = [v23 dictionaryWithObjects:v24 forKeys:v25 count:2];
  v27 = [v21 errorWithDomain:v22 code:46102 userInfo:v26];

  v28 = v27;
LABEL_9:
  if (error)
  {
    v29 = v28;
    v17 = 0;
    *error = v28;
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

+ (id)_loadingPersistentStoreCoordinatorWithReason:(id)reason error:(id *)error workBlock:(id)block
{
  v31 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  blockCopy = block;
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
  v10 = blockCopy;
  v18 = v10;
  v11 = [self _coreDataWorkWithRetryForReason:reasonCopy error:&v20 retryBlock:v17];
  v12 = v20;
  if ((v11 & 1) == 0)
  {
    v13 = PLMigrationGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v28 = reasonCopy;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to load coordinator (reason: %{public}@). Error: %@", buf, 0x16u);
    }

    if (error)
    {
      v14 = v12;
      *error = v12;
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

+ (id)loadingPersistentStoreWithReason:(id)reason error:(id *)error workBlock:(id)block
{
  v31 = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  blockCopy = block;
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
  v10 = blockCopy;
  v18 = v10;
  v11 = [self _coreDataWorkWithRetryForReason:reasonCopy error:&v20 retryBlock:v17];
  v12 = v20;
  if ((v11 & 1) == 0)
  {
    v13 = PLMigrationGetLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v28 = reasonCopy;
      v29 = 2112;
      v30 = v12;
      _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_ERROR, "Failed to load the store (reason: %{public}@). Error: %@", buf, 0x16u);
    }

    if (error)
    {
      v14 = v12;
      *error = v12;
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

+ (BOOL)_coreDataWorkWithRetryForReason:(id)reason error:(id *)error retryBlock:(id)block
{
  v35[2] = *MEMORY[0x1E69E9840];
  reasonCopy = reason;
  blockCopy = block;
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
    v15 = blockCopy[2](blockCopy, &v26);
    v13 = v26;

    if (v15)
    {
      v22 = v13;
      goto LABEL_11;
    }

    if ([v11 count] <= v12 || !objc_msgSend(self, "_shouldRetryNewPersistentStoreCoordinatorWithError:", v13))
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
      v28 = reasonCopy;
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
  if (error)
  {
    v23 = v21;
    *error = v22;
  }

LABEL_11:

  return v15;
}

+ (BOOL)_shouldRetryNewPersistentStoreCoordinatorWithError:(id)error
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = *MEMORY[0x1E695D488];
  v8[0] = &unk_1F0FBF610;
  v3 = MEMORY[0x1E695DF20];
  errorCopy = error;
  v5 = [v3 dictionaryWithObjects:v8 forKeys:&v7 count:1];
  LOBYTE(v3) = MEMORY[0x19EAEE1B0](errorCopy, v5);

  return v3;
}

+ (void)_setupInitialQueryGenerationForContext:(id)context
{
  v34 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  currentQueryGenerationToken = [MEMORY[0x1E695D6E0] currentQueryGenerationToken];
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
  concurrencyType = [contextCopy concurrencyType];
  if (!concurrencyType || *MEMORY[0x1E695D708] == concurrencyType)
  {
    v7 = (v19 + 5);
    obj = v19[5];
    v8 = [contextCopy setQueryGenerationFromToken:currentQueryGenerationToken error:&obj];
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
    v14 = contextCopy;
    v16 = &v24;
    v15 = currentQueryGenerationToken;
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
    selfCopy = self;
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

+ (void)_setupNameForContext:(id)context withLibrary:(id)library
{
  libraryCopy = library;
  contextCopy = context;
  pathManager = [libraryCopy pathManager];
  libraryURL = [pathManager libraryURL];

  v8 = [MEMORY[0x1E69BF238] redactedDescriptionForFileURL:libraryURL];
  name = [libraryCopy name];
  v10 = name;
  v11 = @"anon";
  if (name)
  {
    v11 = name;
  }

  v12 = v11;

  role = [libraryCopy role];
  v14 = [PLPhotoLibrary stringFromLibraryRole:role];
  v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ (%@) %@", v12, v8, v14];

  [contextCopy setPl_basename:v15];
  [contextCopy setName:v15];
}

+ (id)newContextForPhotoLibrary:(id)library automaticallyMerges:(BOOL)merges
{
  mergesCopy = merges;
  libraryCopy = library;
  libraryBundle = [libraryCopy libraryBundle];
  v7 = objc_opt_class();
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) != 0 || !mergesCopy)
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

  v10 = [[v7 alloc] initWithConcurrencyType:v9 libraryBundle:libraryBundle];

  return v10;
}

+ (id)contextForUninitializedPhotoLibrary:(id)library automaticallyMerges:(BOOL)merges automaticallyPinToFirstFetch:(BOOL)fetch
{
  fetchCopy = fetch;
  mergesCopy = merges;
  libraryCopy = library;
  pl_dispatch_once();
  v9 = [self newContextForPhotoLibrary:libraryCopy automaticallyMerges:mergesCopy];
  [self _setupNameForContext:v9 withLibrary:libraryCopy];
  if (fetchCopy)
  {
    [self _setupInitialQueryGenerationForContext:v9];
  }

  [v9 _pl_setupStalenessInterval];
  [v9 setPhotoLibrary:libraryCopy];

  return v9;
}

@end