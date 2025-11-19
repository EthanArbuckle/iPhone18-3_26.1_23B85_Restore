@interface MTBaseQueryObserver
- (MTBaseQueryObserver)initWithEntityName:(id)a3 predicate:(id)a4 background:(BOOL)a5;
- (MTBaseQueryObserver)initWithEntityName:(id)a3 predicate:(id)a4 managedObjectContext:(id)a5;
- (MTBaseQueryObserver)initWithEntityName:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5 limit:(int64_t)a6 batchSize:(int64_t)a7 propertiesToFetch:(id)a8;
- (MTBaseQueryObserver)initWithEntityName:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5 limit:(int64_t)a6 batchSize:(int64_t)a7 propertiesToFetch:(id)a8 managedObjectContext:(id)a9;
- (MTBaseQueryObserver)initWithFetchRequest:(id)a3;
- (MTBaseQueryObserver)initWithFetchRequest:(id)a3 managedObjectContext:(id)a4;
- (NSMutableDictionary)handlers;
- (id)addResultsChangedHandler:(id)a3;
- (id)predicate;
- (id)sortDescriptors;
- (id)uuids;
- (void)dealloc;
- (void)refetch:(id)a3;
- (void)removeAllResultsChangedHandlers;
- (void)removeResultsChangedHandler:(id)a3;
- (void)results:(id)a3;
- (void)setPredicate:(id)a3;
- (void)setSortDescriptors:(id)a3;
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
  v3 = [(MTBaseQueryObserver *)self identifier];
  v4 = [(NSFetchedResultsController *)self->_frc managedObjectContext];
  v6 = MEMORY[0x1E69E9820];
  v7 = 3221225472;
  v8 = __37__MTBaseQueryObserver_startObserving__block_invoke;
  v9 = &unk_1E856B350;
  v5 = v3;
  v10 = v5;
  v11 = self;
  v12 = &v14;
  v13 = &v18;
  [v4 performBlockAndWait:&v6];

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

- (MTBaseQueryObserver)initWithEntityName:(id)a3 predicate:(id)a4 background:(BOOL)a5
{
  v8 = a4;
  v9 = a3;
  v10 = +[MTDB sharedInstance];
  v11 = v10;
  if (a5)
  {
    [v10 privateQueueContext];
  }

  else
  {
    [v10 mainQueueContext];
  }
  v12 = ;

  v13 = [(MTBaseQueryObserver *)self initWithEntityName:v9 predicate:v8 managedObjectContext:v12];
  return v13;
}

- (MTBaseQueryObserver)initWithEntityName:(id)a3 predicate:(id)a4 managedObjectContext:(id)a5
{
  v8 = MEMORY[0x1E695D5E0];
  v9 = a5;
  v10 = a4;
  v11 = [v8 fetchRequestWithEntityName:a3];
  [v11 setPredicate:v10];

  [v11 setSortDescriptors:MEMORY[0x1E695E0F0]];
  v12 = [(MTBaseQueryObserver *)self initWithFetchRequest:v11 managedObjectContext:v9];

  return v12;
}

- (MTBaseQueryObserver)initWithEntityName:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5 limit:(int64_t)a6 batchSize:(int64_t)a7 propertiesToFetch:(id)a8
{
  v14 = a8;
  v15 = a5;
  v16 = a4;
  v17 = a3;
  v18 = +[MTDB sharedInstance];
  v19 = [v18 mainOrPrivateContext];
  v20 = [(MTBaseQueryObserver *)self initWithEntityName:v17 predicate:v16 sortDescriptors:v15 limit:a6 batchSize:a7 propertiesToFetch:v14 managedObjectContext:v19];

  return v20;
}

- (MTBaseQueryObserver)initWithEntityName:(id)a3 predicate:(id)a4 sortDescriptors:(id)a5 limit:(int64_t)a6 batchSize:(int64_t)a7 propertiesToFetch:(id)a8 managedObjectContext:(id)a9
{
  v15 = a8;
  v16 = MEMORY[0x1E695D5E0];
  v17 = a9;
  v18 = a5;
  v19 = a4;
  v20 = [v16 fetchRequestWithEntityName:a3];
  [v20 setPredicate:v19];

  [v20 setFetchBatchSize:a7];
  [v20 setSortDescriptors:v18];

  [v20 setFetchLimit:a6];
  if ([v15 count])
  {
    [v20 setReturnsObjectsAsFaults:1];
    [v20 setPropertiesToFetch:v15];
  }

  else
  {
    [v20 setReturnsObjectsAsFaults:0];
  }

  v21 = [(MTBaseQueryObserver *)self initWithFetchRequest:v20 managedObjectContext:v17];

  return v21;
}

- (MTBaseQueryObserver)initWithFetchRequest:(id)a3
{
  v4 = a3;
  v5 = +[MTDB sharedInstance];
  v6 = [v5 mainOrPrivateContext];

  v7 = [(MTBaseQueryObserver *)self initWithFetchRequest:v4 managedObjectContext:v6];
  return v7;
}

- (MTBaseQueryObserver)initWithFetchRequest:(id)a3 managedObjectContext:(id)a4
{
  v6 = a3;
  v7 = a4;
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

- (void)setPredicate:(id)a3
{
  v4 = a3;
  v5 = [(NSFetchedResultsController *)self->_frc managedObjectContext];
  v7 = MEMORY[0x1E69E9820];
  v8 = 3221225472;
  v9 = __36__MTBaseQueryObserver_setPredicate___block_invoke;
  v10 = &unk_1E8569318;
  v11 = self;
  v12 = v4;
  v6 = v4;
  [v5 performBlockAndWait:&v7];
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
  v2 = [(NSFetchedResultsController *)self->_frc fetchRequest];
  v3 = [v2 predicate];

  return v3;
}

- (void)setSortDescriptors:(id)a3
{
  frc = self->_frc;
  v4 = a3;
  v5 = [(NSFetchedResultsController *)frc fetchRequest];
  [v5 setSortDescriptors:v4];
}

- (id)sortDescriptors
{
  v2 = [(NSFetchedResultsController *)self->_frc fetchRequest];
  v3 = [v2 sortDescriptors];

  return v3;
}

- (void)refetch:(id)a3
{
  v4 = a3;
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
  v5 = [(NSFetchedResultsController *)self->_frc managedObjectContext];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__MTBaseQueryObserver_refetch___block_invoke;
  v6[3] = &unk_1E856B378;
  v6[4] = self;
  v6[5] = &v7;
  v6[6] = &v11;
  [v5 performBlockAndWait:v6];

  if ((v8[3] & 1) == 0)
  {
    [v12[5] logAndThrow:1];
  }

  [(MTBaseQueryObserver *)self results:v4];
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

- (void)results:(id)a3
{
  v4 = a3;
  v5 = [(NSFetchedResultsController *)self->_frc managedObjectContext];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __31__MTBaseQueryObserver_results___block_invoke;
  v7[3] = &unk_1E8569228;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performBlockAndWait:v7];
}

void __31__MTBaseQueryObserver_results___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  v4 = [*(a1 + 32) _frc];
  v2 = [v4 fetchedObjects];
  v3 = [v2 copy];
  (*(v1 + 16))(v1, v3);
}

- (id)addResultsChangedHandler:(id)a3
{
  v4 = a3;
  v5 = CFUUIDCreate(0);
  v6 = CFUUIDCreateString(0, v5);
  CFRelease(v5);
  v7 = self->_handlers;
  objc_sync_enter(v7);
  handlers = self->_handlers;
  v9 = [v4 copy];
  [(NSMutableDictionary *)handlers setObject:v9 forKey:v6];

  objc_sync_exit(v7);

  return v6;
}

- (void)removeResultsChangedHandler:(id)a3
{
  v5 = a3;
  v4 = self->_handlers;
  objc_sync_enter(v4);
  [(NSMutableDictionary *)self->_handlers removeObjectForKey:v5];
  objc_sync_exit(v4);
}

- (void)stop
{
  [(MTBaseQueryObserver *)self removeAllResultsChangedHandlers];
  v3 = [MEMORY[0x1E696AD88] defaultCenter];
  [v3 removeObserver:self->_frc name:0 object:0];

  self->_isObserving = 0;
  v4 = [(NSFetchedResultsController *)self->_frc managedObjectContext];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __27__MTBaseQueryObserver_stop__block_invoke;
  v5[3] = &unk_1E8568E28;
  v5[4] = self;
  [v4 performBlock:v5];

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