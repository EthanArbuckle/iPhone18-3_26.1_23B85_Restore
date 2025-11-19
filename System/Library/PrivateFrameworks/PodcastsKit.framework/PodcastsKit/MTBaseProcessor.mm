@interface MTBaseProcessor
+ (id)sharedInstance;
+ (void)initialize;
- (BOOL)isRunning;
- (BOOL)isStopping;
- (BOOL)start;
- (MTBaseProcessor)init;
- (id)createQueryObserver;
- (id)entityName;
- (id)predicate;
- (void)enqueueWorkBlock:(id)a3;
- (void)results:(id)a3;
- (void)resultsChangedWithDeletedIds:(id)a3 insertIds:(id)a4 updatedIds:(id)a5;
- (void)setIsStopping:(BOOL)a3;
- (void)stop;
- (void)updatePredicate;
@end

@implementation MTBaseProcessor

+ (void)initialize
{
  if (initialize_onceToken != -1)
  {
    +[MTBaseProcessor initialize];
  }
}

uint64_t __29__MTBaseProcessor_initialize__block_invoke()
{
  _instanceMap = objc_alloc_init(MEMORY[0x277CBEB38]);

  return MEMORY[0x2821F96F8]();
}

+ (id)sharedInstance
{
  v3 = NSStringFromClass(a1);
  v4 = _instanceMap;
  objc_sync_enter(v4);
  v5 = [_instanceMap objectForKey:v3];
  objc_sync_exit(v4);

  if (!v5)
  {
    v6 = _instanceMap;
    objc_sync_enter(v6);
    v5 = [_instanceMap objectForKey:v3];
    if (!v5)
    {
      v8.receiver = a1;
      v8.super_class = &OBJC_METACLASS___MTBaseProcessor;
      v5 = [objc_msgSendSuper2(&v8 allocWithZone_];
      [_instanceMap setObject:v5 forKey:v3];
    }

    objc_sync_exit(v6);
  }

  return v5;
}

- (MTBaseProcessor)init
{
  v6.receiver = self;
  v6.super_class = MTBaseProcessor;
  v2 = [(MTBaseProcessor *)&v6 init];
  if (v2)
  {
    v3 = objc_opt_new();
    isStoppingLock = v2->_isStoppingLock;
    v2->_isStoppingLock = v3;

    v2->_isStopping = 0;
  }

  return v2;
}

- (BOOL)start
{
  v3 = [(MTBaseProcessor *)self isStopping];
  if (!v3)
  {
    v4 = MEMORY[0x277CCACA8];
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    v7 = [v4 stringWithFormat:@"%@SerialQueue", v6];

    v8 = dispatch_queue_create([v7 UTF8String], 0);
    workQueue = self->_workQueue;
    self->_workQueue = v8;

    objc_initWeak(&location, self);
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __24__MTBaseProcessor_start__block_invoke;
    v11[3] = &unk_279A44850;
    v11[4] = self;
    objc_copyWeak(&v12, &location);
    [(MTBaseProcessor *)self enqueueWorkBlock:v11];
    objc_destroyWeak(&v12);
    objc_destroyWeak(&location);
  }

  return !v3;
}

void __24__MTBaseProcessor_start__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 createQueryObserver];
  [v2 setQueryObserver:v3];

  v4 = [v2 queryObserver];
  [v4 startObserving];

  [v2 updatePredicateDuration];
  v6 = v5;
  if (fabs(v5) > 2.22044605e-16)
  {
    WeakRetained = objc_loadWeakRetained((a1 + 40));
    v8 = [WeakRetained workQueue];
    v9 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, v8);
    [v2 setTimer:v9];

    v10 = dispatch_walltime(0, 0);
    v11 = [v2 timer];
    dispatch_source_set_timer(v11, v10, (v6 * 1000000000.0), 0);

    v12 = [v2 timer];
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __24__MTBaseProcessor_start__block_invoke_2;
    handler[3] = &unk_279A44800;
    objc_copyWeak(&v26, (a1 + 40));
    dispatch_source_set_event_handler(v12, handler);

    v13 = [v2 timer];
    dispatch_resume(v13);

    objc_destroyWeak(&v26);
  }

  v14 = [v2 defaultPropertiesThatAffectPredicate];
  if ([v14 count])
  {
    v15 = [MTDefaultsChangeNotifier alloc];
    v16 = [MEMORY[0x277CBEBD0] _applePodcastsFoundationSettingsUserDefaults];
    v17 = [(MTDefaultsChangeNotifier *)v15 initWithProperties:v14 defaults:v16];
    [v2 setDefaultsNotifier:v17];

    v18 = [v2 defaultsNotifier];
    v20 = MEMORY[0x277D85DD0];
    v21 = 3221225472;
    v22 = __24__MTBaseProcessor_start__block_invoke_3;
    v23 = &unk_279A44828;
    objc_copyWeak(&v24, (a1 + 40));
    [v18 addCallback:&v20];

    v19 = [v2 defaultsNotifier];
    [v19 start];

    objc_destroyWeak(&v24);
  }
}

void __24__MTBaseProcessor_start__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updatePredicate];
}

void __24__MTBaseProcessor_start__block_invoke_3(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __24__MTBaseProcessor_start__block_invoke_4;
  v11[3] = &unk_279A44800;
  objc_copyWeak(&v12, (a1 + 32));
  [WeakRetained enqueueWorkBlock:v11];

  objc_destroyWeak(&v12);
}

void __24__MTBaseProcessor_start__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  [WeakRetained updatePredicate];
}

- (void)stop
{
  [(MTBaseProcessor *)self setIsStopping:1];
  v3 = [(MTBaseProcessor *)self queryObserver];
  [v3 stop];

  v4 = [(MTBaseProcessor *)self defaultsNotifier];
  [v4 stop];
}

- (BOOL)isStopping
{
  v2 = self;
  v3 = [(MTBaseProcessor *)self isStoppingLock];
  objc_sync_enter(v3);
  LOBYTE(v2) = v2->_isStopping;
  objc_sync_exit(v3);

  return v2;
}

- (void)setIsStopping:(BOOL)a3
{
  obj = [(MTBaseProcessor *)self isStoppingLock];
  objc_sync_enter(obj);
  self->_isStopping = a3;
  objc_sync_exit(obj);
}

- (BOOL)isRunning
{
  if (self->_workQueue)
  {
    return ![(MTBaseProcessor *)self isStopping];
  }

  else
  {
    return 0;
  }
}

- (id)createQueryObserver
{
  v3 = [MTSafeUuidQueryObserver alloc];
  v4 = [(MTBaseProcessor *)self entityName];
  v5 = [(MTBaseProcessor *)self predicate];
  v6 = [(MTBaseQueryObserver *)v3 initWithEntityName:v4 predicate:v5];

  v7 = objc_opt_class();
  v8 = NSStringFromClass(v7);
  [(MTBaseQueryObserver *)v6 setIdentifier:v8];

  objc_initWeak(&location, self);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __38__MTBaseProcessor_createQueryObserver__block_invoke;
  v11[3] = &unk_279A44878;
  objc_copyWeak(&v12, &location);
  v9 = [(MTSafeUuidQueryObserver *)v6 addResultsChangedHandler:v11];
  objc_destroyWeak(&v12);
  objc_destroyWeak(&location);

  return v6;
}

void __38__MTBaseProcessor_createQueryObserver__block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __38__MTBaseProcessor_createQueryObserver__block_invoke_2;
  v14[3] = &unk_279A446C8;
  objc_copyWeak(&v18, (a1 + 32));
  v11 = v7;
  v15 = v11;
  v12 = v8;
  v16 = v12;
  v13 = v9;
  v17 = v13;
  [WeakRetained enqueueWorkBlock:v14];

  objc_destroyWeak(&v18);
}

void __38__MTBaseProcessor_createQueryObserver__block_invoke_2(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  [WeakRetained resultsChangedWithDeletedIds:*(a1 + 32) insertIds:*(a1 + 40) updatedIds:*(a1 + 48)];
}

- (void)updatePredicate
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = _MTLogCategoryDefault();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = objc_opt_class();
    v5 = NSStringFromClass(v4);
    v9 = 138543362;
    v10 = v5;
    _os_log_impl(&dword_25E9F0000, v3, OS_LOG_TYPE_DEFAULT, "%{public}@ updated predicate", &v9, 0xCu);
  }

  v6 = [(MTBaseProcessor *)self queryObserver];
  v7 = [(MTBaseProcessor *)self predicate];
  [v6 setPredicate:v7];

  v8 = *MEMORY[0x277D85DE8];
}

- (id)entityName
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"entityName must be implemented by subclasses" userInfo:0];
  objc_exception_throw(v2);
}

- (id)predicate
{
  v2 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"Predicate must be implemented by subclasses" userInfo:0];
  objc_exception_throw(v2);
}

- (void)resultsChangedWithDeletedIds:(id)a3 insertIds:(id)a4 updatedIds:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE648] reason:@"resulstChanged must be implemented by subclasses" userInfo:0];
  objc_exception_throw(v10);
}

- (void)results:(id)a3
{
  v4 = a3;
  v5 = [(MTBaseProcessor *)self queryObserver];
  [v5 results:v4];
}

- (void)enqueueWorkBlock:(id)a3
{
  v4 = a3;
  v5 = [(MTBaseProcessor *)self workQueue];

  if (v5)
  {
    if (![(MTBaseProcessor *)self isStopping])
    {
      objc_initWeak(buf, self);
      v8 = [(MTBaseProcessor *)self workQueue];
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __36__MTBaseProcessor_enqueueWorkBlock___block_invoke;
      v9[3] = &unk_279A448A0;
      objc_copyWeak(&v11, buf);
      v10 = v4;
      dispatch_async(v8, v9);

      objc_destroyWeak(&v11);
      objc_destroyWeak(buf);
      goto LABEL_10;
    }

    v6 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v7 = "Attempting to enqueue work after the processor has stopped.";
LABEL_7:
      _os_log_impl(&dword_25E9F0000, v6, OS_LOG_TYPE_DEFAULT, v7, buf, 2u);
    }
  }

  else
  {
    v6 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(buf[0]) = 0;
      v7 = "Attempting to enqueue work before processor has been started.";
      goto LABEL_7;
    }
  }

LABEL_10:
}

void __36__MTBaseProcessor_enqueueWorkBlock___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    if (![WeakRetained isStopping])
    {
      (*(*(a1 + 32) + 16))();
      goto LABEL_10;
    }

    v4 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 0;
      v5 = "Attempting to execute work after the processor has stopped.";
      v6 = &v7;
LABEL_7:
      _os_log_impl(&dword_25E9F0000, v4, OS_LOG_TYPE_DEFAULT, v5, v6, 2u);
    }
  }

  else
  {
    v4 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v5 = "Attempting to execute work after the processor has been deallocated.";
      v6 = buf;
      goto LABEL_7;
    }
  }

LABEL_10:
}

@end