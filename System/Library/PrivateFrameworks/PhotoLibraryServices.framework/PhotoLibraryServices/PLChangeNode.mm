@interface PLChangeNode
- (BOOL)_isInvalidRemoteChangeEvent:(id)event reply:(id)reply;
- (PLChangeNode)initWithLibraryURL:(id)l changeMerger:(id)merger changePublisher:(id)publisher libraryServicesManager:(id)manager;
- (void)connectManagedObjectContext:(id)context;
- (void)dealloc;
- (void)disconnectManagedObjectContext:(id)context;
- (void)distributeRemoteContextDidSaveEvent:(id)event delayedSaveActionsDetail:(id)detail transaction:(id)transaction;
- (void)invalidate;
- (void)publishChangesForDidSaveObjectIDsNotification:(id)notification;
- (void)publishRemoteChangeEvent:(id)event delayedSaveActionsDetail:(id)detail reply:(id)reply;
@end

@implementation PLChangeNode

- (void)publishChangesForDidSaveObjectIDsNotification:(id)notification
{
  v62 = *MEMORY[0x1E69E9840];
  notificationCopy = notification;
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

  object = [notificationCopy object];
  if (([object savingDuringMerge] & 1) == 0)
  {
    addEvent = [(PLChangePublisher *)self->_changePublisher addEvent];
    [addEvent startLocalPublish];
    photoLibrary = [object photoLibrary];
    if (!photoLibrary)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PLChangeNode.m" lineNumber:214 description:{@"Invalid parameter not satisfying: %@", @"photoLibrary"}];
    }

    v46 = v6;
    if ([object isUserInterfaceContext])
    {
      v13 = +[PLChangeNotificationCenter defaultCenter];
      [v13 processContextDidSaveObjectIDsNotification:notificationCopy];
    }

    delayedSaveActions = [object delayedSaveActions];
    popDelayedSaveActionsDetail = [delayedSaveActions popDelayedSaveActionsDetail];
    userInfo = [object userInfo];
    v16 = [PLClientServerTransaction transactionFromUserInfo:userInfo];

    v45 = notificationCopy;
    userInfo2 = [notificationCopy userInfo];
    v18 = [userInfo2 objectForKeyedSubscript:*MEMORY[0x1E695D710]];
    [object recordChangesFromTriggerModifiedObjectIDs:v18];

    v51 = userInfo2;
    v19 = [userInfo2 mutableCopy];
    v56 = 0;
    v57 = 0;
    [object getAndClearUpdatedObjectsAttributes:&v57 relationships:&v56];
    v20 = v57;
    v21 = v56;
    v50 = v20;
    [v19 setObject:v20 forKeyedSubscript:@"PLUpdatedAttributesByObjectIDKey"];
    v49 = v21;
    [v19 setObject:v21 forKeyedSubscript:@"PLUpdatedRelationshipsByObjectIDKey"];
    v47 = addEvent;
    v48 = popDelayedSaveActionsDetail;
    v43 = photoLibrary;
    if ([(PLUpdatedOrderKeys *)self->_updatedOrderKeys isObservingOrderKeys])
    {
      getAndClearUpdatedOrderKeys = [(PLUpdatedOrderKeys *)self->_updatedOrderKeys getAndClearUpdatedOrderKeys];
      [v19 setObject:getAndClearUpdatedOrderKeys forKeyedSubscript:@"PLUpdatedOrderKeyRelationshipsByObjectIDKey"];
    }

    else
    {
      getAndClearUpdatedOrderKeys = MEMORY[0x1E695E0F8];
    }

    userInfo3 = [object userInfo];
    v24 = [userInfo3 objectForKey:@"PLMOCRedundantDeleteObjectIDs"];
    getAndClearRecordedObjectsForCloudDeletion = [object getAndClearRecordedObjectsForCloudDeletion];
    changeSource = [object changeSource];
    BYTE4(v41) = [object getAndClearSyncChangeMarker];
    LODWORD(v41) = changeSource;
    v27 = [PLLegacyChangeEventBuilder createXPCDictionaryFromChangedObjectIDs:v51 redundantDeletes:v24 uuidsForCloudDeletion:getAndClearRecordedObjectsForCloudDeletion updatedAttributesByObjectID:v50 updatedRelationshipsByObjectID:v49 updatedOrderKeys:getAndClearUpdatedOrderKeys changeSource:v41 syncChangeMarker:?];

    v42 = getAndClearUpdatedOrderKeys;
    if (v27)
    {
      v28 = v47;
      [v47 setHasMessage:1];
      [PLClientServerTransaction addTransaction:v16 toXPCDictionary:v27];
      [object appendDelayedDeletionsToXPCMessage:v27];
      v29 = [(PLChangePublisher *)self->_changePublisher publishChangeEvent:v27 delayedSaveActionsDetail:v48 debugEvent:v47 transaction:v16];

      v16 = v29;
      notificationCopy = v45;
      v30 = v43;
    }

    else
    {
      v28 = v47;
      [v47 setHasMessage:0];
      v30 = v43;
      if (PLIsAssetsd())
      {
        transactionToken = [v16 transactionToken];
        if (transactionToken)
        {
          v32 = v16;
          pathManager = [v43 pathManager];
          changeScopes = [v32 changeScopes];
          v16 = [PLClientServerTransaction beginServerTransactionWithToken:transactionToken changeScopes:changeScopes pathManager:pathManager identifier:"[PLChangeNode publishChangesForDidSaveObjectIDsNotification:]"];

          [v32 completeTransaction];
          v28 = v47;
        }

        v35 = transactionToken;
        notificationCopy = v45;
      }

      else
      {
        [v16 abortTransaction];
        notificationCopy = v45;
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
    [(PLCoreDataChangeMerger *)changeMerger mergeChangesFromRemoteContextSave:v19 intoAllContextsNotIdenticalTo:object debugEvent:0 completionHandler:v52];

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

- (void)disconnectManagedObjectContext:(id)context
{
  v4 = MEMORY[0x1E696AD88];
  contextCopy = context;
  defaultCenter = [v4 defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E695D358] object:contextCopy];
}

- (void)connectManagedObjectContext:(id)context
{
  contextCopy = context;
  if (PLIsAssetsd())
  {
    [(PLUpdatedOrderKeys *)self->_updatedOrderKeys registerForStoreOrderKeyUpdateNotificationFromManagedObjectContext:contextCopy];
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter addObserver:self selector:sel_publishChangesForDidSaveObjectIDsNotification_ name:*MEMORY[0x1E695D358] object:contextCopy];
}

- (void)distributeRemoteContextDidSaveEvent:(id)event delayedSaveActionsDetail:(id)detail transaction:(id)transaction
{
  v35 = *MEMORY[0x1E69E9840];
  eventCopy = event;
  detailCopy = detail;
  transactionCopy = transaction;
  libraryBundle = [(PLLibraryServicesManager *)self->_libraryServicesManager libraryBundle];
  persistentContainer = [libraryBundle persistentContainer];
  v12 = [persistentContainer sharedPersistentStoreCoordinatorWithError:0];

  v13 = PLChangeHandlingGetLog();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v14 = [PLLegacyChangeEvent _descriptionForEvent:eventCopy withPersistentStoreCoordinator:v12];
    *buf = 138412290;
    v32 = v14;
    _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEBUG, "Got remote event: %@", buf, 0xCu);
  }

  v15 = [PLLegacyChangeEvent localChangeEventFromChangeHubEvent:eventCopy withLibraryBundle:libraryBundle];
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
    if ([detailCopy shouldHandleMoments])
    {
      [(PLDelayedSaveActionsProcessor *)self->_delayedSaveActionsProcessor processDelayedMomentGeneratorSaveActionsFromDetail:detailCopy];
    }

    databaseContext = [(PLLibraryServicesManager *)self->_libraryServicesManager databaseContext];
    v19 = [databaseContext newShortLivedLibraryWithName:"-[PLChangeNode distributeRemoteContextDidSaveEvent:delayedSaveActionsDetail:transaction:]"];

    if (!v19)
    {
      v20 = PLChangeHandlingGetLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        libraryServicesManager = self->_libraryServicesManager;
        databaseContext2 = [(PLLibraryServicesManager *)libraryServicesManager databaseContext];
        *buf = 134218240;
        v32 = libraryServicesManager;
        v33 = 2048;
        v34 = databaseContext2;
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
  v27 = detailCopy;
  v20 = v19;
  v28 = v20;
  v24 = transactionCopy;
  v29 = v24;
  [(PLCoreDataChangeMerger *)changeMerger mergeIntoAllContextsChangesFromRemoteContextSave:v15 debugEvent:0 completionHandler:v26];
  if (v17)
  {
    [(PLDelayedSaveActionsProcessor *)self->_delayedSaveActionsProcessor processDelayedDeletionsFromChangeHubEvent:eventCopy library:v20 transaction:v24];
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

- (BOOL)_isInvalidRemoteChangeEvent:(id)event reply:(id)reply
{
  v17 = *MEMORY[0x1E69E9840];
  replyCopy = reply;
  uint64 = xpc_dictionary_get_uint64(event, "eventKind");
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

    replyCopy[2](replyCopy, v11);
  }

  return uint64 != 1;
}

- (void)publishRemoteChangeEvent:(id)event delayedSaveActionsDetail:(id)detail reply:(id)reply
{
  eventCopy = event;
  detailCopy = detail;
  replyCopy = reply;
  if (![(PLChangeNode *)self _isInvalidRemoteChangeEvent:eventCopy reply:replyCopy])
  {
    pathManager = [(PLLibraryServicesManager *)self->_libraryServicesManager pathManager];
    v11 = [PLClientServerTransaction beginServerTransactionWithClientTransactionFromXPCDictionary:eventCopy pathManager:pathManager identifier:"[PLChangeNode publishRemoteChangeEvent:delayedSaveActionsDetail:reply:]"];

    replyCopy[2](replyCopy, 0);
    v12 = [(PLChangePublisher *)self->_changePublisher publishChangeEvent:eventCopy delayedSaveActionsDetail:detailCopy debugEvent:0 transaction:v11];

    [(PLChangeNode *)self distributeRemoteContextDidSaveEvent:eventCopy delayedSaveActionsDetail:detailCopy transaction:v12];
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
    selfCopy = self;
    v11 = 2112;
    v12 = libraryUrl;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p invalidate %@", &v7, 0x20u);
  }

  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self];
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
    selfCopy = self;
    v11 = 2112;
    v12 = libraryUrl;
    _os_log_impl(&dword_19BF1F000, v3, OS_LOG_TYPE_DEBUG, "%@ %p dealloc %@", buf, 0x20u);
  }

  v6.receiver = self;
  v6.super_class = PLChangeNode;
  [(PLChangeNode *)&v6 dealloc];
}

- (PLChangeNode)initWithLibraryURL:(id)l changeMerger:(id)merger changePublisher:(id)publisher libraryServicesManager:(id)manager
{
  v42 = *MEMORY[0x1E69E9840];
  lCopy = l;
  mergerCopy = merger;
  publisherCopy = publisher;
  managerCopy = manager;
  if (PLIsAssetsdProxyService())
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLChangeNode.m" lineNumber:71 description:@"PLChangeNode is disabled for assetsd proxy service"];
  }

  v35.receiver = self;
  v35.super_class = PLChangeNode;
  v15 = [(PLChangeNode *)&v35 init];
  if (v15)
  {
    v34 = publisherCopy;
    v16 = mergerCopy;
    v17 = objc_alloc_init(MEMORY[0x1E696AFB0]);
    [v17 getUUIDBytes:v15->_nodeUUID];
    uUIDString = [v17 UUIDString];
    v19 = [(PLChangeNode *)uUIDString substringToIndex:8];
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
      v39 = uUIDString;
      v40 = 2112;
      v41 = lCopy;
      _os_log_impl(&dword_19BF1F000, v22, OS_LOG_TYPE_DEFAULT, "PLChangeNode [%@]: Created change node with UUID %@ for libraryURL: %@", buf, 0x20u);
    }

    v24 = [lCopy copy];
    libraryUrl = v15->_libraryUrl;
    v15->_libraryUrl = v24;

    v26 = objc_alloc_init(PLUpdatedOrderKeys);
    updatedOrderKeys = v15->_updatedOrderKeys;
    v15->_updatedOrderKeys = v26;

    objc_storeStrong(&v15->_changeMerger, merger);
    objc_storeStrong(&v15->_changePublisher, publisher);
    if (managerCopy)
    {
      v28 = [[PLDelayedSaveActionsProcessor alloc] initWithLibraryServicesManager:managerCopy];
      delayedSaveActionsProcessor = v15->_delayedSaveActionsProcessor;
      v15->_delayedSaveActionsProcessor = v28;
    }

    objc_storeStrong(&v15->_libraryServicesManager, manager);

    mergerCopy = v16;
    publisherCopy = v34;
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
    v41 = lCopy;
    _os_log_impl(&dword_19BF1F000, v30, OS_LOG_TYPE_DEBUG, "%@ %p initWithLibraryURL:%@", buf, 0x20u);
  }

  return v15;
}

@end