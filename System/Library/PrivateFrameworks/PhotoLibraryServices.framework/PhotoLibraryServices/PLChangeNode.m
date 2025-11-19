@interface PLChangeNode
- (BOOL)_isInvalidRemoteChangeEvent:(id)a3 reply:(id)a4;
- (PLChangeNode)initWithLibraryURL:(id)a3 changeMerger:(id)a4 changePublisher:(id)a5 libraryServicesManager:(id)a6;
- (void)connectManagedObjectContext:(id)a3;
- (void)dealloc;
- (void)disconnectManagedObjectContext:(id)a3;
- (void)distributeRemoteContextDidSaveEvent:(id)a3 delayedSaveActionsDetail:(id)a4 transaction:(id)a5;
- (void)invalidate;
- (void)publishChangesForDidSaveObjectIDsNotification:(id)a3;
- (void)publishRemoteChangeEvent:(id)a3 delayedSaveActionsDetail:(id)a4 reply:(id)a5;
@end

@implementation PLChangeNode

- (void)publishChangesForDidSaveObjectIDsNotification:(id)a3
{
  v62 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    nodeUUIDShortString = self->_nodeUUIDShortString;
    v9 = NSStringFromSelector(a2);
    *buf = 138412546;
    v59 = nodeUUIDShortString;
    v60 = 2112;
    v61 = v9;
    _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_DEBUG, "PLChangeNode [%@]: %@", buf, 0x16u);
  }

  v10 = [v5 object];
  if (([v10 savingDuringMerge] & 1) == 0)
  {
    v11 = [(PLChangePublisher *)self->_changePublisher addEvent];
    [v11 startLocalPublish];
    v12 = [v10 photoLibrary];
    if (!v12)
    {
      v40 = [MEMORY[0x1E696AAA8] currentHandler];
      [v40 handleFailureInMethod:a2 object:self file:@"PLChangeNode.m" lineNumber:214 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
    }

    v46 = v6;
    if ([v10 isUserInterfaceContext])
    {
      v13 = +[PLChangeNotificationCenter defaultCenter];
      [v13 processContextDidSaveObjectIDsNotification:v5];
    }

    v44 = [v10 delayedSaveActions];
    v14 = [v44 popDelayedSaveActionsDetail];
    v15 = [v10 userInfo];
    v16 = [PLClientServerTransaction transactionFromUserInfo:v15];

    v45 = v5;
    v17 = [v5 userInfo];
    v18 = [v17 objectForKeyedSubscript:*MEMORY[0x1E695D710]];
    [v10 recordChangesFromTriggerModifiedObjectIDs:v18];

    v51 = v17;
    v19 = [v17 mutableCopy];
    v56 = 0;
    v57 = 0;
    [v10 getAndClearUpdatedObjectsAttributes:&v57 relationships:&v56];
    v20 = v57;
    v21 = v56;
    v50 = v20;
    [v19 setObject:v20 forKeyedSubscript:@"PLUpdatedAttributesByObjectIDKey"];
    v49 = v21;
    [v19 setObject:v21 forKeyedSubscript:@"PLUpdatedRelationshipsByObjectIDKey"];
    v47 = v11;
    v48 = v14;
    v43 = v12;
    if ([(PLUpdatedOrderKeys *)self->_updatedOrderKeys isObservingOrderKeys])
    {
      v22 = [(PLUpdatedOrderKeys *)self->_updatedOrderKeys getAndClearUpdatedOrderKeys];
      [v19 setObject:v22 forKeyedSubscript:@"PLUpdatedOrderKeyRelationshipsByObjectIDKey"];
    }

    else
    {
      v22 = MEMORY[0x1E695E0F8];
    }

    v23 = [v10 userInfo];
    v24 = [v23 objectForKey:@"PLMOCRedundantDeleteObjectIDs"];
    v25 = [v10 getAndClearRecordedObjectsForCloudDeletion];
    v26 = [v10 changeSource];
    BYTE4(v41) = [v10 getAndClearSyncChangeMarker];
    LODWORD(v41) = v26;
    v27 = [PLLegacyChangeEventBuilder createXPCDictionaryFromChangedObjectIDs:v51 redundantDeletes:v24 uuidsForCloudDeletion:v25 updatedAttributesByObjectID:v50 updatedRelationshipsByObjectID:v49 updatedOrderKeys:v22 changeSource:v41 syncChangeMarker:?];

    v42 = v22;
    if (v27)
    {
      v28 = v47;
      [v47 setHasMessage:1];
      [PLClientServerTransaction addTransaction:v16 toXPCDictionary:v27];
      [v10 appendDelayedDeletionsToXPCMessage:v27];
      v29 = [(PLChangePublisher *)self->_changePublisher publishChangeEvent:v27 delayedSaveActionsDetail:v48 debugEvent:v47 transaction:v16];

      v16 = v29;
      v5 = v45;
      v30 = v43;
    }

    else
    {
      v28 = v47;
      [v47 setHasMessage:0];
      v30 = v43;
      if (PLIsAssetsd())
      {
        v31 = [v16 transactionToken];
        if (v31)
        {
          v32 = v16;
          v33 = [v43 pathManager];
          v34 = [v32 changeScopes];
          v16 = [PLClientServerTransaction beginServerTransactionWithToken:v31 changeScopes:v34 pathManager:v33 identifier:"[PLChangeNode publishChangesForDidSaveObjectIDsNotification:]"];

          [v32 completeTransaction];
          v28 = v47;
        }

        v35 = v31;
        v5 = v45;
      }

      else
      {
        [v16 abortTransaction];
        v5 = v45;
      }
    }

    [v28 end];
    if (PLIsAssetsd() && [v48 shouldHandleMoments])
    {
      [(PLDelayedSaveActionsProcessor *)self->_delayedSaveActionsProcessor processDelayedMomentGeneratorSaveActionsFromDetail:v48];
    }

    changeMerger = self->_changeMerger;
    v52[0] = MEMORY[0x1E69E9820];
    v52[1] = 3221225472;
    v52[2] = __62__PLChangeNode_publishChangesForDidSaveObjectIDsNotification___block_invoke;
    v52[3] = &unk_1E7578100;
    v52[4] = self;
    v53 = v48;
    v54 = v30;
    v55 = v16;
    v37 = v16;
    v38 = v30;
    v39 = v48;
    [(PLCoreDataChangeMerger *)changeMerger mergeChangesFromRemoteContextSave:v19 intoAllContextsNotIdenticalTo:v10 debugEvent:0 completionHandler:v52];

    v6 = v46;
  }

  objc_autoreleasePoolPop(v6);
}

uint64_t __62__PLChangeNode_publishChangesForDidSaveObjectIDsNotification___block_invoke(void *a1)
{
  result = PLIsAssetsd();
  if (result)
  {
    v3 = a1[5];
    v4 = *(a1[4] + 72);
    v5 = a1[6];
    v6 = a1[7];

    return [v4 processDelayedSaveActionsDetail:v3 withPhotoLibrary:v5 transaction:v6];
  }

  return result;
}

- (void)disconnectManagedObjectContext:(id)a3
{
  v4 = MEMORY[0x1E696AD88];
  v5 = a3;
  v6 = [v4 defaultCenter];
  [v6 removeObserver:self name:*MEMORY[0x1E695D358] object:v5];
}

- (void)connectManagedObjectContext:(id)a3
{
  v5 = a3;
  if (PLIsAssetsd())
  {
    [(PLUpdatedOrderKeys *)self->_updatedOrderKeys registerForStoreOrderKeyUpdateNotificationFromManagedObjectContext:v5];
  }

  v4 = [MEMORY[0x1E696AD88] defaultCenter];
  [v4 addObserver:self selector:sel_publishChangesForDidSaveObjectIDsNotification_ name:*MEMORY[0x1E695D358] object:v5];
}

- (void)distributeRemoteContextDidSaveEvent:(id)a3 delayedSaveActionsDetail:(id)a4 transaction:(id)a5
{
  v35 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v25 = a5;
  v10 = [(PLLibraryServicesManager *)self->_libraryServicesManager libraryBundle];
  v11 = [v10 persistentContainer];
  v12 = [v11 sharedPersistentStoreCoordinatorWithError:0];

  v13 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [PLLegacyChangeEvent _descriptionForEvent:v8 withPersistentStoreCoordinator:v12];
    *buf = 138412290;
    v32 = v14;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Got remote event: %@", buf, 0xCu);
  }

  v15 = [PLLegacyChangeEvent localChangeEventFromChangeHubEvent:v8 withLibraryBundle:v10];
  v16 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v32 = v15;
    _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_DEBUG, "incoming from change hub: %@", buf, 0xCu);
  }

  v17 = PLIsAssetsd();
  if (v17)
  {
    if ([v9 shouldHandleMoments])
    {
      [(PLDelayedSaveActionsProcessor *)self->_delayedSaveActionsProcessor processDelayedMomentGeneratorSaveActionsFromDetail:v9];
    }

    v18 = [(PLLibraryServicesManager *)self->_libraryServicesManager databaseContext];
    v19 = [v18 newShortLivedLibraryWithName:"-[PLChangeNode distributeRemoteContextDidSaveEvent:delayedSaveActionsDetail:transaction:]"];

    if (!v19)
    {
      v20 = PLChangeHandlingGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        libraryServicesManager = self->_libraryServicesManager;
        v22 = [(PLLibraryServicesManager *)libraryServicesManager databaseContext];
        *buf = 134218240;
        v32 = libraryServicesManager;
        v33 = 2048;
        v34 = v22;
        _os_log_impl(&dword_19BF1F000, v20, OS_LOG_TYPE_ERROR, "PLChangeNode distribute: transientLibrary is nil. LSM=%p databaseContext=%p", buf, 0x16u);
      }

      goto LABEL_15;
    }
  }

  else
  {
    v19 = 0;
  }

  changeMerger = self->_changeMerger;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __89__PLChangeNode_distributeRemoteContextDidSaveEvent_delayedSaveActionsDetail_transaction___block_invoke;
  v26[3] = &unk_1E756E508;
  v30 = v17;
  v26[4] = self;
  v27 = v9;
  v20 = v19;
  v28 = v20;
  v24 = v25;
  v29 = v24;
  [(PLCoreDataChangeMerger *)changeMerger mergeIntoAllContextsChangesFromRemoteContextSave:v15 debugEvent:0 completionHandler:v26];
  if (v17)
  {
    [(PLDelayedSaveActionsProcessor *)self->_delayedSaveActionsProcessor processDelayedDeletionsFromChangeHubEvent:v8 library:v20 transaction:v24];
  }

LABEL_15:
}

uint64_t __89__PLChangeNode_distributeRemoteContextDidSaveEvent_delayedSaveActionsDetail_transaction___block_invoke(uint64_t result)
{
  if (*(result + 64) == 1)
  {
    return [*(*(result + 32) + 72) processDelayedSaveActionsDetail:*(result + 40) withPhotoLibrary:*(result + 48) transaction:*(result + 56)];
  }

  return result;
}

- (BOOL)_isInvalidRemoteChangeEvent:(id)a3 reply:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = a4;
  uint64 = xpc_dictionary_get_uint64(a3, "eventKind");
  if (uint64 != 1)
  {
    v7 = PLChangeHandlingGetLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v16 = uint64;
      _os_log_impl(&dword_19BF1F000, v7, OS_LOG_TYPE_ERROR, "Invalid change hub event kind (%d)", buf, 8u);
    }

    v8 = MEMORY[0x1E696ABC0];
    v9 = *MEMORY[0x1E69BFF48];
    v13 = *MEMORY[0x1E696A578];
    v14 = @"Invalid change hub event kind";
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v14 forKeys:&v13 count:1];
    v11 = [v8 errorWithDomain:v9 code:44002 userInfo:v10];

    v5[2](v5, v11);
  }

  return uint64 != 1;
}

- (void)publishRemoteChangeEvent:(id)a3 delayedSaveActionsDetail:(id)a4 reply:(id)a5
{
  v13 = a3;
  v8 = a4;
  v9 = a5;
  if (![(PLChangeNode *)self _isInvalidRemoteChangeEvent:v13 reply:v9])
  {
    v10 = [(PLLibraryServicesManager *)self->_libraryServicesManager pathManager];
    v11 = [PLClientServerTransaction beginServerTransactionWithClientTransactionFromXPCDictionary:v13 pathManager:v10 identifier:"[PLChangeNode publishRemoteChangeEvent:delayedSaveActionsDetail:reply:]"];

    v9[2](v9, 0);
    v12 = [(PLChangePublisher *)self->_changePublisher publishChangeEvent:v13 delayedSaveActionsDetail:v8 debugEvent:0 transaction:v11];

    [(PLChangeNode *)self distributeRemoteContextDidSaveEvent:v13 delayedSaveActionsDetail:v8 transaction:v12];
  }
}

- (void)invalidate
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    libraryUrl = self->_libraryUrl;
    v7 = 138412802;
    v8 = v4;
    v9 = 2048;
    v10 = self;
    v11 = 2112;
    v12 = libraryUrl;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p invalidate %@", &v7, 0x20u);
  }

  v6 = [MEMORY[0x1E696AD88] defaultCenter];
  [v6 removeObserver:self];
}

- (void)dealloc
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v4 = objc_opt_class();
    libraryUrl = self->_libraryUrl;
    *buf = 138412802;
    v8 = v4;
    v9 = 2048;
    v10 = self;
    v11 = 2112;
    v12 = libraryUrl;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p dealloc %@", buf, 0x20u);
  }

  v6.receiver = self;
  v6.super_class = PLChangeNode;
  [(PLChangeNode *)&v6 dealloc];
}

- (PLChangeNode)initWithLibraryURL:(id)a3 changeMerger:(id)a4 changePublisher:(id)a5 libraryServicesManager:(id)a6
{
  v42 = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (PLIsAssetsdProxyService())
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PLChangeNode.m" lineNumber:71 description:@"PLChangeNode is disabled for assetsd proxy service"];
  }

  v35.receiver = self;
  v35.super_class = PLChangeNode;
  v15 = [(PLChangeNode *)&v35 init];
  if (v15)
  {
    v34 = v13;
    v16 = v12;
    v17 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    [v17 getUUIDBytes:v15->_nodeUUID];
    v18 = [v17 UUIDString];
    v19 = [(PLChangeNode *)v18 substringToIndex:8];
    v20 = [v19 copy];
    nodeUUIDShortString = v15->_nodeUUIDShortString;
    v15->_nodeUUIDShortString = v20;

    v22 = PLChangeHandlingGetLog();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v23 = v15->_nodeUUIDShortString;
      *buf = 138412802;
      v37 = v23;
      v38 = 2112;
      v39 = v18;
      v40 = 2112;
      v41 = v11;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "PLChangeNode [%@]: Created change node with UUID %@ for libraryURL: %@", buf, 0x20u);
    }

    v24 = [v11 copy];
    libraryUrl = v15->_libraryUrl;
    v15->_libraryUrl = v24;

    v26 = objc_alloc_init(PLUpdatedOrderKeys);
    updatedOrderKeys = v15->_updatedOrderKeys;
    v15->_updatedOrderKeys = v26;

    objc_storeStrong(&v15->_changeMerger, a4);
    objc_storeStrong(&v15->_changePublisher, a5);
    if (v14)
    {
      v28 = [[PLDelayedSaveActionsProcessor alloc] initWithLibraryServicesManager:v14];
      delayedSaveActionsProcessor = v15->_delayedSaveActionsProcessor;
      v15->_delayedSaveActionsProcessor = v28;
    }

    objc_storeStrong(&v15->_libraryServicesManager, a6);

    v12 = v16;
    v13 = v34;
  }

  v30 = PLPhotosObjectLifecycleGetLog();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v31 = objc_opt_class();
    *buf = 138412802;
    v37 = v31;
    v38 = 2048;
    v39 = v15;
    v40 = 2112;
    v41 = v11;
    _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEBUG, "%@ %p initWithLibraryURL:%@", buf, 0x20u);
  }

  return v15;
}

@end