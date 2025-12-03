@interface MTBaseQueryObserver
- (MTBaseQueryObserver)initWithEntityName:(id)name predicate:(id)predicate background:(BOOL)background;
- (MTBaseQueryObserver)initWithEntityName:(id)name predicate:(id)predicate managedObjectContext:(id)context;
- (MTBaseQueryObserver)initWithEntityName:(id)name predicate:(id)predicate sortDescriptors:(id)descriptors limit:(int64_t)limit batchSize:(int64_t)size propertiesToFetch:(id)fetch;
- (MTBaseQueryObserver)initWithEntityName:(id)name predicate:(id)predicate sortDescriptors:(id)descriptors limit:(int64_t)limit batchSize:(int64_t)size propertiesToFetch:(id)fetch managedObjectContext:(id)context;
- (MTBaseQueryObserver)initWithFetchRequest:(id)request;
- (MTBaseQueryObserver)initWithFetchRequest:(id)request managedObjectContext:(id)context;
- (NSMutableDictionary)handlers;
- (id)addResultsChangedHandler:(id)handler;
- (id)predicate;
- (id)sortDescriptors;
- (id)uuids;
- (void)dealloc;
- (void)refetch:(id)refetch;
- (void)removeAllResultsChangedHandlers;
- (void)removeResultsChangedHandler:(id)handler;
- (void)results:(id)results;
- (void)setPredicate:(id)predicate;
- (void)setSortDescriptors:(id)descriptors;
- (void)startObserving;
- (void)stop;
@end

@implementation MTBaseQueryObserver

- (void)startObserving
{
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__8;
  v22 = __Block_byref_object_dispose__8;
  v23 = 0;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  identifier = [(MTBaseQueryObserver *)self identifier];
  managedObjectContext = [(NSFetchedResultsController *)self->_frc managedObjectContext];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __37__MTBaseQueryObserver_startObserving__block_invoke;
  v9 = &unk_1E856B350;
  v5 = identifier;
  v10 = v5;
  selfCopy = self;
  v12 = &v14;
  v13 = &v18;
  [managedObjectContext performBlockAndWait:&v6];

  if ((v15[3] & 1) == 0)
  {
    [v19[5] logAndThrow:{1, v6, v7, v8, v9}];
  }

  self->_isObserving = 1;

  _Block_object_dispose(&v14, 8);
  _Block_object_dispose(&v18, 8);
}

void __37__MTBaseQueryObserver_startObserving__block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = _MTLogCategoryDatabaseTelemetry();
  v3 = os_signpost_id_generate(v2);

  v4 = _MTLogCategoryDatabaseTelemetry();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v6 = *(a1 + 32);
    *buf = 138412290;
    v15 = v6;
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "MTBaseQueryObserverStartObserving", "Starting MTBaseQueryObserver id: %{name=MTBaseQueryObserverID}@", buf, 0xCu);
  }

  v7 = [*(a1 + 40) _frc];
  v8 = *(*(a1 + 56) + 8);
  obj = *(v8 + 40);
  v9 = [v7 performFetch:&obj];
  objc_storeStrong((v8 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v9;

  v10 = _MTLogCategoryDatabaseTelemetry();
  v11 = v10;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    *buf = 0;
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v11, OS_SIGNPOST_INTERVAL_END, v3, "MTBaseQueryObserverStartObserving", "", buf, 2u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (NSMutableDictionary)handlers
{
  v3 = self->_handlers;
  objc_sync_enter(v3);
  v4 = [(NSMutableDictionary *)self->_handlers copy];
  objc_sync_exit(v3);

  return v4;
}

- (id)uuids
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__8;
  v9 = __Block_byref_object_dispose__8;
  v10 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __28__MTBaseQueryObserver_uuids__block_invoke;
  v4[3] = &unk_1E856B3A0;
  v4[4] = &v5;
  [(MTBaseQueryObserver *)self results:v4];
  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void __28__MTBaseQueryObserver_uuids__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E695DFD8];
  v7 = [a2 valueForKey:@"uuid"];
  v4 = [v3 setWithArray:v7];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (MTBaseQueryObserver)initWithEntityName:(id)name predicate:(id)predicate background:(BOOL)background
{
  predicateCopy = predicate;
  nameCopy = name;
  v10 = +[MTDB sharedInstance];
  v11 = v10;
  if (background)
  {
    [v10 privateQueueContext];
  }

  else
  {
    [v10 mainQueueContext];
  }
  v12 = ;

  v13 = [(MTBaseQueryObserver *)self initWithEntityName:nameCopy predicate:predicateCopy managedObjectContext:v12];
  return v13;
}

- (MTBaseQueryObserver)initWithEntityName:(id)name predicate:(id)predicate managedObjectContext:(id)context
{
  v8 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  predicateCopy = predicate;
  v11 = [v8 fetchRequestWithEntityName:name];
  [v11 setPredicate:predicateCopy];

  [v11 setSortDescriptors:MEMORY[0x1E695E0F0]];
  v12 = [(MTBaseQueryObserver *)self initWithFetchRequest:v11 managedObjectContext:contextCopy];

  return v12;
}

- (MTBaseQueryObserver)initWithEntityName:(id)name predicate:(id)predicate sortDescriptors:(id)descriptors limit:(int64_t)limit batchSize:(int64_t)size propertiesToFetch:(id)fetch
{
  fetchCopy = fetch;
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  nameCopy = name;
  v18 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v18 mainOrPrivateContext];
  v20 = [(MTBaseQueryObserver *)self initWithEntityName:nameCopy predicate:predicateCopy sortDescriptors:descriptorsCopy limit:limit batchSize:size propertiesToFetch:fetchCopy managedObjectContext:mainOrPrivateContext];

  return v20;
}

- (MTBaseQueryObserver)initWithEntityName:(id)name predicate:(id)predicate sortDescriptors:(id)descriptors limit:(int64_t)limit batchSize:(int64_t)size propertiesToFetch:(id)fetch managedObjectContext:(id)context
{
  fetchCopy = fetch;
  v16 = MEMORY[0x1E695D5E0];
  contextCopy = context;
  descriptorsCopy = descriptors;
  predicateCopy = predicate;
  v20 = [v16 fetchRequestWithEntityName:name];
  [v20 setPredicate:predicateCopy];

  [v20 setFetchBatchSize:size];
  [v20 setSortDescriptors:descriptorsCopy];

  [v20 setFetchLimit:limit];
  if ([fetchCopy count])
  {
    [v20 setReturnsObjectsAsFaults:1];
    [v20 setPropertiesToFetch:fetchCopy];
  }

  else
  {
    [v20 setReturnsObjectsAsFaults:0];
  }

  v21 = [(MTBaseQueryObserver *)self initWithFetchRequest:v20 managedObjectContext:contextCopy];

  return v21;
}

- (MTBaseQueryObserver)initWithFetchRequest:(id)request
{
  requestCopy = request;
  v5 = +[MTDB sharedInstance];
  mainOrPrivateContext = [v5 mainOrPrivateContext];

  v7 = [(MTBaseQueryObserver *)self initWithFetchRequest:requestCopy managedObjectContext:mainOrPrivateContext];
  return v7;
}

- (MTBaseQueryObserver)initWithFetchRequest:(id)request managedObjectContext:(id)context
{
  requestCopy = request;
  contextCopy = context;
  v15.receiver = self;
  v15.super_class = MTBaseQueryObserver;
  v8 = [(MTBaseQueryObserver *)&v15 init];
  v9 = v8;
  if (v8)
  {
    v8->_isObserving = 0;
    v10 = [objc_alloc(objc_msgSend(objc_opt_class() "fetchedResultsControllerClass"))];
    frc = v9->_frc;
    v9->_frc = v10;

    [(NSFetchedResultsController *)v9->_frc setDelegate:v9];
    v12 = objc_alloc_init(MEMORY[0x1E695DF90]);
    handlers = v9->_handlers;
    v9->_handlers = v12;
  }

  return v9;
}

- (void)dealloc
{
  if (!self->_stopCalled || self->_isObserving || (+[IMLogger sharedLogger](IMLogger, "sharedLogger"), v3 = objc_claimAutoreleasedReturnValue(), v4 = [v3 shouldOverrideCondition:@"!assertCondition" file:@"/Library/Caches/com.apple.xbs/Sources/PodcastsFoundation/PodcastsFoundation/PodcastsFoundation/Query/MTBaseQueryObserver.m"], v3, v4))
  {
    v5 = +[IMLogger sharedLogger];
    [v5 logFile:"/Library/Caches/com.apple.xbs/Sources/PodcastsFoundation/PodcastsFoundation/PodcastsFoundation/Query/MTBaseQueryObserver.m" lineNumber:164 format:{@"%@", @"The observer's -[stop] must be called before deallocating. This is a programmer error."}];
  }

  v6.receiver = self;
  v6.super_class = MTBaseQueryObserver;
  [(MTBaseQueryObserver *)&v6 dealloc];
}

- (void)setPredicate:(id)predicate
{
  predicateCopy = predicate;
  managedObjectContext = [(NSFetchedResultsController *)self->_frc managedObjectContext];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __36__MTBaseQueryObserver_setPredicate___block_invoke;
  v10 = &unk_1E8569318;
  selfCopy = self;
  v12 = predicateCopy;
  v6 = predicateCopy;
  [managedObjectContext performBlockAndWait:&v7];
  if (self->_isObserving)
  {
    [(MTBaseQueryObserver *)self startObserving:v7];
  }
}

void __36__MTBaseQueryObserver_setPredicate___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v3 = [*(a1 + 32) _frc];
  v2 = [v3 fetchRequest];
  [v2 setPredicate:v1];
}

- (id)predicate
{
  fetchRequest = [(NSFetchedResultsController *)self->_frc fetchRequest];
  predicate = [fetchRequest predicate];

  return predicate;
}

- (void)setSortDescriptors:(id)descriptors
{
  frc = self->_frc;
  descriptorsCopy = descriptors;
  fetchRequest = [(NSFetchedResultsController *)frc fetchRequest];
  [fetchRequest setSortDescriptors:descriptorsCopy];
}

- (id)sortDescriptors
{
  fetchRequest = [(NSFetchedResultsController *)self->_frc fetchRequest];
  sortDescriptors = [fetchRequest sortDescriptors];

  return sortDescriptors;
}

- (void)refetch:(id)refetch
{
  refetchCopy = refetch;
  v11 = 0;
  v12 = &v11;
  v13 = 0x3032000000;
  v14 = __Block_byref_object_copy__8;
  v15 = __Block_byref_object_dispose__8;
  v16 = 0;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  managedObjectContext = [(NSFetchedResultsController *)self->_frc managedObjectContext];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__MTBaseQueryObserver_refetch___block_invoke;
  v6[3] = &unk_1E856B378;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = &v11;
  [managedObjectContext performBlockAndWait:v6];

  if ((v8[3] & 1) == 0)
  {
    [v12[5] logAndThrow:1];
  }

  [(MTBaseQueryObserver *)self results:refetchCopy];
  _Block_object_dispose(&v7, 8);
  _Block_object_dispose(&v11, 8);
}

void __31__MTBaseQueryObserver_refetch___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _frc];
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 performFetch:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 40) + 8) + 24) = v4;
}

- (void)results:(id)results
{
  resultsCopy = results;
  managedObjectContext = [(NSFetchedResultsController *)self->_frc managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__MTBaseQueryObserver_results___block_invoke;
  v7[3] = &unk_1E8569228;
  v7[4] = self;
  v8 = resultsCopy;
  v6 = resultsCopy;
  [managedObjectContext performBlockAndWait:v7];
}

void __31__MTBaseQueryObserver_results___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v4 = [*(a1 + 32) _frc];
  v2 = [v4 fetchedObjects];
  v3 = [v2 copy];
  (*(v1 + 16))(v1, v3);
}

- (id)addResultsChangedHandler:(id)handler
{
  handlerCopy = handler;
  v5 = CFUUIDCreate(0);
  v6 = CFUUIDCreateString(0, v5);
  CFRelease(v5);
  v7 = self->_handlers;
  objc_sync_enter(v7);
  handlers = self->_handlers;
  v9 = [handlerCopy copy];
  [(NSMutableDictionary *)handlers setObject:v9 forKey:v6];

  objc_sync_exit(v7);

  return v6;
}

- (void)removeResultsChangedHandler:(id)handler
{
  handlerCopy = handler;
  v4 = self->_handlers;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)self->_handlers removeObjectForKey:handlerCopy];
  objc_sync_exit(v4);
}

- (void)stop
{
  [(MTBaseQueryObserver *)self removeAllResultsChangedHandlers];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self->_frc name:0 object:0];

  self->_isObserving = 0;
  managedObjectContext = [(NSFetchedResultsController *)self->_frc managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__MTBaseQueryObserver_stop__block_invoke;
  v5[3] = &unk_1E8568E28;
  v5[4] = self;
  [managedObjectContext performBlock:v5];

  [(MTBaseQueryObserver *)self setStopCalled:1];
}

void __27__MTBaseQueryObserver_stop__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) _frc];
  [v1 setDelegate:0];
}

- (void)removeAllResultsChangedHandlers
{
  obj = self->_handlers;
  objc_sync_enter(obj);
  [(NSMutableDictionary *)self->_handlers removeAllObjects];
  objc_sync_exit(obj);
}

@end