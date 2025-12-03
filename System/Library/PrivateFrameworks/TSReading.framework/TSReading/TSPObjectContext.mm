@interface TSPObjectContext
+ (void)waitForPendingEndSaveGroup:(id)group;
- (BOOL)areExternalReferencesSupported;
- (BOOL)areExternalReferencesToDataAllowedAtURL:(id)l;
- (BOOL)areNewExternalReferencesToDataAllowed;
- (BOOL)ignoreDocumentSupport;
- (BOOL)isDocumentSupportTemporary;
- (NSURL)documentURL;
- (TSPObjectContext)init;
- (TSPObjectContext)initWithDelegate:(id)delegate;
- (TSPObjectContextDelegate)delegate;
- (id).cxx_construct;
- (id)addLoadedObjectsAndEnqueueNotifications:(id)notifications;
- (id)dataOrNilForIdentifier:(int64_t)identifier;
- (id)documentRoot;
- (id)objectForIdentifier:(int64_t)identifier;
- (id)supportDirectoryURL;
- (id)temporaryDirectory;
- (int64_t)incrementLastObjectIdentifier:(int64_t)identifier;
- (int64_t)modifyObjectTokenForNewObject;
- (void)addLoadObserver:(id)observer action:(SEL)action forLazyReference:(id)reference;
- (void)addLoadObserver:(id)observer action:(SEL)action forObjectIdentifier:(int64_t)identifier objectOrNil:(id)nil;
- (void)beginWriteOperation;
- (void)checkforDataWarningsWithPackageURL:(id)l;
- (void)dealloc;
- (void)didMoveSupportToURL:(id)l;
- (void)didMoveToURL:(id)l;
- (void)didReadDocumentObject:(id)object;
- (void)performReadOperation:(id)operation;
- (void)performReadOperationOnKnownObjects:(id)objects;
- (void)runObjectNotificationsInQueue:(id)queue;
- (void)setDocumentObject:(id)object;
- (void)setLastObjectIdentifier:(int64_t)identifier;
- (void)waitForSaveToFinishIfNeeded;
@end

@implementation TSPObjectContext

- (TSPObjectContext)init
{
  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPObjectContext init]"];
  v4 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPObjectContext.mm"];
  [currentHandler handleFailureInFunction:v3 file:v4 lineNumber:166 description:@"Do not call method"];

  v5 = MEMORY[0x277CBEAD8];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@: %s", @"Do not call method", "-[TSPObjectContext init]"];
  v7 = [v5 exceptionWithName:*MEMORY[0x277CBE658] reason:v6 userInfo:0];
  v8 = v7;

  objc_exception_throw(v7);
}

- (TSPObjectContext)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  if (!delegateCopy)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPObjectContext initWithDelegate:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPObjectContext.mm"];
    [currentHandler handleFailureInFunction:v6 file:v7 lineNumber:171 description:{@"Invalid parameter not satisfying: %s", "delegate"}];
  }

  v37.receiver = self;
  v37.super_class = TSPObjectContext;
  v8 = [(TSPObjectContext *)&v37 init];
  v9 = v8;
  if (v8)
  {
    [(TSPObjectContext *)v8 setDelegate:delegateCopy];
    v10 = [[TSPDataManager alloc] initWithContext:v9];
    dataManager = v9->_dataManager;
    v9->_dataManager = v10;

    newTspWeakObjectsMapTable = [MEMORY[0x277CCAB00] newTspWeakObjectsMapTable];
    objects = v9->_objects;
    v9->_objects = newTspWeakObjectsMapTable;

    v14 = dispatch_queue_create("TSPObjectContext.Objects", MEMORY[0x277D85CD8]);
    objectsQueue = v9->_objectsQueue;
    v9->_objectsQueue = v14;

    v16 = dispatch_queue_create("TSPObjectContext.Write", 0);
    writeQueue = v9->_writeQueue;
    v9->_writeQueue = v16;

    v18 = objc_alloc_init(MEMORY[0x277CCAC60]);
    readLock = v9->_readLock;
    v9->_readLock = v18;

    v20 = MEMORY[0x277D85CD8];
    v21 = dispatch_queue_create("TSPObjectContext.DocumentState", MEMORY[0x277D85CD8]);
    documentStateQueue = v9->_documentStateQueue;
    v9->_documentStateQueue = v21;

    v23 = dispatch_queue_create("TSPObjectContext.DocumentResourceDataProvider", 0);
    documentResourceDataProviderQueue = v9->_documentResourceDataProviderQueue;
    v9->_documentResourceDataProviderQueue = v23;

    *&v9->_lastObjectIdentifier = xmmword_26CA63C00;
    v25 = dispatch_group_create();
    pendingEndSaveGroup = v9->_pendingEndSaveGroup;
    v9->_pendingEndSaveGroup = v25;

    v27 = dispatch_group_create();
    outstandingReadsGroup = v9->_outstandingReadsGroup;
    v9->_outstandingReadsGroup = v27;

    v29 = dispatch_queue_create("TSPObjectContext.LoadObservers", v20);
    loadObserversQueue = v9->_loadObserversQueue;
    v9->_loadObserversQueue = v29;

    v31 = dispatch_queue_create("TSPObjectContext.RunLoadObservers", 0);
    runLoadObserversQueue = v9->_runLoadObserversQueue;
    v9->_runLoadObserversQueue = v31;

    v33 = dispatch_queue_create("TSPObjectContext.TemporaryDirectory", 0);
    temporaryDirectoryQueue = v9->_temporaryDirectoryQueue;
    v9->_temporaryDirectoryQueue = v33;

    v35 = v9;
  }

  return v9;
}

- (void)dealloc
{
  [(TSPObjectContext *)self close];
  documentObjectContainer = self->_documentObjectContainer;
  self->_documentObjectContainer = 0;

  supportObjectContainer = self->_supportObjectContainer;
  self->_supportObjectContainer = 0;

  documentObject = self->_documentObject;
  self->_documentObject = 0;

  dataManager = self->_dataManager;
  self->_dataManager = 0;

  v7.receiver = self;
  v7.super_class = TSPObjectContext;
  [(TSPObjectContext *)&v7 dealloc];
}

- (void)beginWriteOperation
{
  writeQueue = self->_writeQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__TSPObjectContext_beginWriteOperation__block_invoke;
  block[3] = &unk_279D469B8;
  block[4] = self;
  dispatch_sync(writeQueue, block);
}

- (void)performReadOperation:(id)operation
{
  operationCopy = operation;
  if (operationCopy)
  {
    v5 = operationCopy;
    dispatch_suspend(self->_writeQueue);
    [(NSRecursiveLock *)self->_readLock lock];
    v5[2]();
    [(NSRecursiveLock *)self->_readLock unlock];
    dispatch_resume(self->_writeQueue);
    operationCopy = v5;
  }
}

- (id)objectForIdentifier:(int64_t)identifier
{
  switch(identifier)
  {
    case 1:
      documentObject = self->_documentObject;
LABEL_3:
      v4 = documentObject;
      break;
    case 3:
    case 2:
      goto LABEL_9;
    case 61:
      documentObject = self->_documentObjectContainer;
      goto LABEL_3;
    case 62:
LABEL_9:
      v4 = 0;
      break;
    default:
      v9 = 0;
      v10 = &v9;
      v11 = 0x3032000000;
      v12 = __Block_byref_object_copy__1;
      v13 = __Block_byref_object_dispose__1;
      v14 = 0;
      objectsQueue = self->_objectsQueue;
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __40__TSPObjectContext_objectForIdentifier___block_invoke;
      block[3] = &unk_279D469E0;
      block[4] = self;
      block[5] = &v9;
      block[6] = identifier;
      dispatch_sync(objectsQueue, block);
      v4 = v10[5];
      _Block_object_dispose(&v9, 8);

      break;
  }

  return v4;
}

uint64_t __40__TSPObjectContext_objectForIdentifier___block_invoke(void *a1)
{
  *(*(a1[5] + 8) + 40) = [*(a1[4] + 56) tsp_objectForIdentifier:a1[6]];

  return MEMORY[0x2821F96F8]();
}

- (void)performReadOperationOnKnownObjects:(id)objects
{
  objectsCopy = objects;
  objectsQueue = self->_objectsQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __55__TSPObjectContext_performReadOperationOnKnownObjects___block_invoke;
  v7[3] = &unk_279D46A08;
  v7[4] = self;
  v8 = objectsCopy;
  v6 = objectsCopy;
  dispatch_sync(objectsQueue, v7);
}

- (id)temporaryDirectory
{
  temporaryDirectoryQueue = self->_temporaryDirectoryQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__TSPObjectContext_temporaryDirectory__block_invoke;
  block[3] = &unk_279D469B8;
  block[4] = self;
  dispatch_sync(temporaryDirectoryQueue, block);
  path = [(TSUTemporaryDirectory *)self->_temporaryDirectory path];

  return path;
}

uint64_t __38__TSPObjectContext_temporaryDirectory__block_invoke(uint64_t result)
{
  if (!*(*(result + 32) + 152))
  {
    *(*(result + 32) + 152) = objc_alloc_init(MEMORY[0x277D6C378]);

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (void)checkforDataWarningsWithPackageURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v5 = [(TSPDataManager *)self->_dataManager checkForPersistenceWarningsWithPackageURL:lCopy];
    [WeakRetained addPersistenceWarnings:v5];
  }
}

- (NSURL)documentURL
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__1;
  v10 = __Block_byref_object_dispose__1;
  v11 = 0;
  documentStateQueue = self->_documentStateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __31__TSPObjectContext_documentURL__block_invoke;
  v5[3] = &unk_279D46A30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(documentStateQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __31__TSPObjectContext_documentURL__block_invoke(uint64_t a1)
{
  *(*(*(a1 + 40) + 8) + 40) = [*(*(a1 + 32) + 40) copy];

  return MEMORY[0x2821F96F8]();
}

- (void)didMoveToURL:(id)l
{
  lCopy = l;
  v5 = lCopy;
  if (lCopy)
  {
    documentStateQueue = self->_documentStateQueue;
    v11 = MEMORY[0x277D85DD0];
    v12 = 3221225472;
    v13 = __33__TSPObjectContext_didMoveToURL___block_invoke;
    v14 = &unk_279D46A58;
    selfCopy = self;
    v7 = lCopy;
    v16 = v7;
    dispatch_barrier_async(documentStateQueue, &v11);
    if ([(TSPObjectContext *)self areExternalReferencesSupported:v11]&& ![(TSPObjectContext *)self areExternalReferencesToDataAllowedAtURL:v7])
    {
      [(TSPDataManager *)self->_dataManager removeExternalReferences];
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPObjectContext didMoveToURL:]"];
    v10 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPObjectContext.mm"];
    [currentHandler handleFailureInFunction:v9 file:v10 lineNumber:1367 description:@"Invalid nil document URL."];
  }
}

uint64_t __33__TSPObjectContext_didMoveToURL___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 40) = [*(a1 + 40) copy];

  return MEMORY[0x2821F96F8]();
}

- (void)didMoveSupportToURL:(id)l
{
  lCopy = l;
  documentStateQueue = self->_documentStateQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __40__TSPObjectContext_didMoveSupportToURL___block_invoke;
  v7[3] = &unk_279D46A58;
  v7[4] = self;
  v8 = lCopy;
  v6 = lCopy;
  dispatch_barrier_async(documentStateQueue, v7);
}

uint64_t __40__TSPObjectContext_didMoveSupportToURL___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 48) = [*(a1 + 40) copy];

  return MEMORY[0x2821F96F8]();
}

- (BOOL)areExternalReferencesSupported
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v3 = objc_opt_respondsToSelector();

  return v3 & 1;
}

- (BOOL)areNewExternalReferencesToDataAllowed
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    areNewExternalReferencesToDataAllowed = [WeakRetained areNewExternalReferencesToDataAllowed];
  }

  else
  {
    areNewExternalReferencesToDataAllowed = 0;
  }

  return areNewExternalReferencesToDataAllowed;
}

- (BOOL)areExternalReferencesToDataAllowedAtURL:(id)l
{
  lCopy = l;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    v6 = [WeakRetained areExternalReferencesToDataAllowedAtURL:lCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (void)waitForPendingEndSaveGroup:(id)group
{
  group = group;
  if ([MEMORY[0x277CCACC8] isMainThread])
  {
    v3 = *MEMORY[0x277CBE640];
    while (dispatch_group_wait(group, 0))
    {
      currentRunLoop = [MEMORY[0x277CBEB88] currentRunLoop];
      distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
      v6 = [currentRunLoop runMode:v3 beforeDate:distantFuture];

      if ((v6 & 1) == 0)
      {
        currentHandler = [MEMORY[0x277D6C290] currentHandler];
        v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"+[TSPObjectContext waitForPendingEndSaveGroup:]"];
        v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPObjectContext.mm"];
        [currentHandler handleFailureInFunction:v8 file:v9 lineNumber:2134 description:@"Run loop could not be started."];

        break;
      }
    }
  }

  else
  {
    dispatch_group_wait(group, 0xFFFFFFFFFFFFFFFFLL);
  }
}

- (void)waitForSaveToFinishIfNeeded
{
  v3 = objc_opt_class();
  pendingEndSaveGroup = self->_pendingEndSaveGroup;

  [v3 waitForPendingEndSaveGroup:pendingEndSaveGroup];
}

- (int64_t)modifyObjectTokenForNewObject
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  documentStateQueue = self->_documentStateQueue;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __49__TSPObjectContext_modifyObjectTokenForNewObject__block_invoke;
  v5[3] = &unk_279D46A30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(documentStateQueue, v5);
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (id)supportDirectoryURL
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    supportDirectoryURL = [WeakRetained supportDirectoryURL];
  }

  else
  {
    supportDirectoryURL = 0;
  }

  return supportDirectoryURL;
}

- (id)dataOrNilForIdentifier:(int64_t)identifier
{
  dataManager = [(TSPObjectContext *)self dataManager];
  v5 = [dataManager dataOrNilForIdentifier:identifier];

  return v5;
}

- (BOOL)ignoreDocumentSupport
{
  if (self->_mode)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    ignoreDocumentSupport = [WeakRetained ignoreDocumentSupport];
  }

  else
  {
    ignoreDocumentSupport = 0;
  }

  return ignoreDocumentSupport;
}

- (BOOL)isDocumentSupportTemporary
{
  if ((self->_mode & 2) != 0)
  {
    return 1;
  }

  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (objc_opt_respondsToSelector())
  {
    isDocumentSupportTemporary = [WeakRetained isDocumentSupportTemporary];
  }

  else
  {
    isDocumentSupportTemporary = 0;
  }

  return isDocumentSupportTemporary;
}

- (void)setDocumentObject:(id)object
{
  objectCopy = object;
  context = [objectCopy context];

  if (context != self)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPObjectContext setDocumentObject:]"];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPObjectContext.mm"];
    [currentHandler handleFailureInFunction:v7 file:v8 lineNumber:2403 description:{@"Document object should belong to object context %@.", self}];
  }

  packageLocator = [objectCopy packageLocator];

  if (packageLocator)
  {
    currentHandler2 = [MEMORY[0x277D6C290] currentHandler];
    v11 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPObjectContext setDocumentObject:]"];
    v12 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPObjectContext.mm"];
    [currentHandler2 handleFailureInFunction:v11 file:v12 lineNumber:2404 description:@"Document object shouldn't have a package locator."];
  }

  documentObject = self->_documentObject;
  p_documentObject = &self->_documentObject;
  if (documentObject)
  {
    currentHandler3 = [MEMORY[0x277D6C290] currentHandler];
    v16 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPObjectContext setDocumentObject:]"];
    v17 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPObjectContext.mm"];
    [currentHandler3 handleFailureInFunction:v16 file:v17 lineNumber:2421 description:@"Already have a document object"];
  }

  else
  {
    objc_storeStrong(p_documentObject, object);
    [(TSPObject *)*p_documentObject setTsp_identifier:1];
  }
}

- (void)didReadDocumentObject:(id)object
{
  objectCopy = object;
  if (self->_documentObject)
  {
    currentHandler = [MEMORY[0x277D6C290] currentHandler];
    v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPObjectContext didReadDocumentObject:]"];
    v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPObjectContext.mm"];
    [currentHandler handleFailureInFunction:v6 file:v7 lineNumber:2427 description:{@"expected nil value for '%s'", "_documentObject"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    TSULogErrorInFunction();

    objectCopy = 0;
  }

  documentObject = self->_documentObject;
  self->_documentObject = objectCopy;
}

- (void)setLastObjectIdentifier:(int64_t)identifier
{
  do
  {
    lastObjectIdentifier = self->_lastObjectIdentifier;
    if (lastObjectIdentifier >= identifier)
    {
      break;
    }

    v4 = self->_lastObjectIdentifier;
    atomic_compare_exchange_strong(&self->_lastObjectIdentifier, &v4, identifier);
  }

  while (v4 != lastObjectIdentifier);
}

- (int64_t)incrementLastObjectIdentifier:(int64_t)identifier
{
  if (identifier > 0)
  {
    return atomic_fetch_add(&self->_lastObjectIdentifier, identifier) + identifier;
  }

  currentHandler = [MEMORY[0x277D6C290] currentHandler];
  v6 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TSPObjectContext incrementLastObjectIdentifier:]"];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/AlderShared/persistence/src/TSPObjectContext.mm"];
  [currentHandler handleFailureInFunction:v6 file:v7 lineNumber:2547 description:@"don't increment by a negative value"];

  return self->_lastObjectIdentifier;
}

- (id)addLoadedObjectsAndEnqueueNotifications:(id)notifications
{
  notificationsCopy = notifications;
  v5 = notificationsCopy;
  if (notificationsCopy)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x3032000000;
    v15 = __Block_byref_object_copy__1;
    v16 = __Block_byref_object_dispose__1;
    v17 = 0;
    objectsQueue = self->_objectsQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __60__TSPObjectContext_addLoadedObjectsAndEnqueueNotifications___block_invoke;
    block[3] = &unk_279D46AA8;
    block[4] = self;
    v10 = notificationsCopy;
    v11 = &v12;
    dispatch_barrier_sync(objectsQueue, block);
    v7 = v13[5];

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void __60__TSPObjectContext_addLoadedObjectsAndEnqueueNotifications___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 96);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __60__TSPObjectContext_addLoadedObjectsAndEnqueueNotifications___block_invoke_2;
  block[3] = &unk_279D46AA8;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  v8 = *(a1 + 48);
  dispatch_sync(v2, block);
}

uint64_t __60__TSPObjectContext_addLoadedObjectsAndEnqueueNotifications___block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__TSPObjectContext_addLoadedObjectsAndEnqueueNotifications___block_invoke_3;
  v3[3] = &unk_279D46A80;
  v4 = *(a1 + 40);
  return [v1 enumerateObjectsUsingBlock:v3];
}

void __60__TSPObjectContext_addLoadedObjectsAndEnqueueNotifications___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 tsp_identifier];
  v15 = v4;
  if (![TSPObject tsp_isTransientObjectIdentifier:v4])
  {
    [*(*(a1 + 32) + 56) tsp_setObject:v3 forIdentifier:v4];
    v5 = std::__hash_table<std::__hash_value_type<long long const,NSMutableArray * {__strong}>,std::__unordered_map_hasher<long long const,std::__hash_value_type<long long const,NSMutableArray * {__strong}>,TSP::IdentifierHash,std::equal_to<long long const>,true>,std::__unordered_map_equal<long long const,std::__hash_value_type<long long const,NSMutableArray * {__strong}>,std::equal_to<long long const>,TSP::IdentifierHash,true>,std::allocator<std::__hash_value_type<long long const,NSMutableArray * {__strong}>>>::find<long long>((*(a1 + 32) + 160), &v15);
    if (v5)
    {
      v6 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v5[3]];
      v7 = *(*(*(a1 + 40) + 8) + 40);
      if (!v7)
      {
        v8 = dispatch_queue_create("TSPObjectContext.RunLoadObserversForRead", 0);
        v9 = *(*(a1 + 40) + 8);
        v10 = *(v9 + 40);
        *(v9 + 40) = v8;

        dispatch_set_target_queue(*(*(*(a1 + 40) + 8) + 40), *(*(a1 + 32) + 104));
        dispatch_suspend(*(*(*(a1 + 40) + 8) + 40));
        v7 = *(*(*(a1 + 40) + 8) + 40);
      }

      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __60__TSPObjectContext_addLoadedObjectsAndEnqueueNotifications___block_invoke_4;
      block[3] = &unk_279D46A58;
      v13 = v6;
      v14 = v3;
      v11 = v6;
      dispatch_async(v7, block);
    }
  }
}

void __60__TSPObjectContext_addLoadedObjectsAndEnqueueNotifications___block_invoke_4(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v3)
  {
    v4 = *v9;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v9 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v8 + 1) + 8 * i);
        v7 = [v6 target];
        [v7 performSelector:objc_msgSend(v6 withObject:{"action"), *(a1 + 40)}];
      }

      v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v3);
  }
}

- (void)runObjectNotificationsInQueue:(id)queue
{
  if (queue)
  {
    dispatch_resume(queue);
  }

  runLoadObserversQueue = self->_runLoadObserversQueue;

  dispatch_sync(runLoadObserversQueue, &__block_literal_global_5);
}

- (void)addLoadObserver:(id)observer action:(SEL)action forObjectIdentifier:(int64_t)identifier objectOrNil:(id)nil
{
  observerCopy = observer;
  nilCopy = nil;
  loadObserversQueue = self->_loadObserversQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __75__TSPObjectContext_addLoadObserver_action_forObjectIdentifier_objectOrNil___block_invoke;
  block[3] = &unk_279D46AF8;
  v16 = observerCopy;
  selfCopy = self;
  actionCopy = action;
  identifierCopy = identifier;
  v18 = nilCopy;
  v13 = nilCopy;
  v14 = observerCopy;
  dispatch_barrier_async(loadObserversQueue, block);
}

void __75__TSPObjectContext_addLoadObserver_action_forObjectIdentifier_objectOrNil___block_invoke(uint64_t a1)
{
  v2 = [[TSPObjectContextObserver alloc] initWithTarget:*(a1 + 32) action:*(a1 + 56)];
  v3 = std::__hash_table<std::__hash_value_type<long long const,NSMutableArray * {__strong}>,std::__unordered_map_hasher<long long const,std::__hash_value_type<long long const,NSMutableArray * {__strong}>,TSP::IdentifierHash,std::equal_to<long long const>,true>,std::__unordered_map_equal<long long const,std::__hash_value_type<long long const,NSMutableArray * {__strong}>,std::equal_to<long long const>,TSP::IdentifierHash,true>,std::allocator<std::__hash_value_type<long long const,NSMutableArray * {__strong}>>>::find<long long>((*(a1 + 40) + 160), (a1 + 64));
  if (v3)
  {
    v4 = v3[3];
    for (i = [v4 count] - 1; i < objc_msgSend(v4, "count"); --i)
    {
      v6 = [v4 objectAtIndex:i];
      v7 = [v6 target];

      if (!v7)
      {
        [v4 removeObjectAtIndex:i];
      }
    }

    [v4 addObject:v2];
  }

  else
  {
    v8 = *(a1 + 40);
    v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithObjects:{v2, 0}];
    v21 = *(a1 + 64);
    v22 = v9;
    std::__hash_table<std::__hash_value_type<long long const,NSMutableArray * {__strong}>,std::__unordered_map_hasher<long long const,std::__hash_value_type<long long const,NSMutableArray * {__strong}>,TSP::IdentifierHash,std::equal_to<long long const>,true>,std::__unordered_map_equal<long long const,std::__hash_value_type<long long const,NSMutableArray * {__strong}>,std::equal_to<long long const>,TSP::IdentifierHash,true>,std::allocator<std::__hash_value_type<long long const,NSMutableArray * {__strong}>>>::__emplace_unique_key_args<long long,std::pair<long long const,NSMutableArray * {__strong}>>((v8 + 160), &v21);
  }

  v10 = *(a1 + 48);
  if (v10)
  {
    v11 = *(a1 + 40);
    v12 = *(v11 + 64);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__TSPObjectContext_addLoadObserver_action_forObjectIdentifier_objectOrNil___block_invoke_2;
    block[3] = &unk_279D46AF8;
    v13 = *(a1 + 64);
    block[4] = v11;
    v19 = v13;
    v17 = v10;
    v14 = *(a1 + 32);
    v15 = *(a1 + 56);
    v18 = v14;
    v20 = v15;
    dispatch_async(v12, block);
  }
}

void __75__TSPObjectContext_addLoadObserver_action_forObjectIdentifier_objectOrNil___block_invoke_2(uint64_t a1)
{
  v2 = [*(*(a1 + 32) + 56) tsp_objectForIdentifier:*(a1 + 56)];
  v3 = *(a1 + 40);

  if (v2 == v3)
  {
    v4 = *(*(a1 + 32) + 104);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __75__TSPObjectContext_addLoadObserver_action_forObjectIdentifier_objectOrNil___block_invoke_3;
    block[3] = &unk_279D46AD0;
    v5 = *(a1 + 48);
    v6 = *(a1 + 64);
    v8 = v5;
    v10 = v6;
    v9 = *(a1 + 40);
    dispatch_async(v4, block);
  }
}

- (void)addLoadObserver:(id)observer action:(SEL)action forLazyReference:(id)reference
{
  observerCopy = observer;
  referenceCopy = reference;
  weakObject = [referenceCopy weakObject];
  v10 = weakObject;
  if (weakObject)
  {
    tsp_identifier = [weakObject tsp_identifier];
  }

  else
  {
    tsp_identifier = [referenceCopy identifier];
  }

  [(TSPObjectContext *)self addLoadObserver:observerCopy action:action forObjectIdentifier:tsp_identifier objectOrNil:v10];
}

- (TSPObjectContextDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id).cxx_construct
{
  *(self + 10) = 0u;
  *(self + 11) = 0u;
  *(self + 48) = 1065353216;
  return self;
}

- (id)documentRoot
{
  objc_opt_class();
  [(TSPObjectContext *)self documentObject];

  return TSUDynamicCast();
}

@end