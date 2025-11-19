@interface MTManagedObjectContext
- (BOOL)_isInternalCoreDataQueue;
- (BOOL)handleError:(id *)a3 withCallback:(id)a4;
- (MTManagedObjectContext)initWithConcurrencyType:(unint64_t)a3 name:(id)a4;
- (id)executeFetchRequest:(id)a3 error:(id *)a4;
- (id)existingObjectWithID:(id)a3 error:(id *)a4;
- (id)name;
- (id)objectRegisteredForID:(id)a3;
- (id)objectWithID:(id)a3;
- (unint64_t)countForFetchRequest:(id)a3 error:(id *)a4;
- (void)deleteObject:(id)a3;
- (void)insertObject:(id)a3;
- (void)performBlock:(id)a3;
- (void)performBlockAndWait:(id)a3;
- (void)reset;
- (void)validateConcurencyType;
- (void)validatePodcastDeletion:(id)a3;
@end

@implementation MTManagedObjectContext

- (void)validateConcurencyType
{
  if ([(MTManagedObjectContext *)self concurrencyType]== 1)
  {
    if (![(MTManagedObjectContext *)self _isInternalCoreDataQueue])
    {
      v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"Fetch request is not being run within a performBlock!" userInfo:0];
      objc_exception_throw(v3);
    }
  }

  else
  {
    v4 = [MEMORY[0x1E696AF00] isMainThread];
    if (!+[PFClientUtil isRunningOnHomepod]|| (v4 & 1) != 0)
    {
      if (v4)
      {
        return;
      }
    }

    else if ([(MTManagedObjectContext *)self _isInternalCoreDataQueue])
    {
      return;
    }

    v5 = _MTLogCategoryDefault();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_ERROR, "NSMainQueueConcurrencyType should be run on main thread", v6, 2u);
    }
  }
}

- (BOOL)_isInternalCoreDataQueue
{
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:dispatch_queue_get_label(0)];
  if ([v3 hasPrefix:@"SQLQueue"] & 1) != 0 || (objc_msgSend(v3, "hasPrefix:", @"NSSQLiteConnection"))
  {
    v4 = 1;
  }

  else
  {
    v5 = dispatch_get_current_queue();
    v6 = dispatch_get_context(v5);

    if (v6 == self)
    {
      v4 = 1;
    }

    else
    {
      v7 = [(MTManagedObjectContext *)self persistentStoreCoordinator];
      v4 = v6 == v7;
    }
  }

  return v4;
}

- (id)name
{
  v7.receiver = self;
  v7.super_class = MTManagedObjectContext;
  v3 = [(MTManagedObjectContext *)&v7 name];
  mt_immutableName = v3;
  if (!v3)
  {
    mt_immutableName = self->_mt_immutableName;
  }

  v5 = mt_immutableName;

  return mt_immutableName;
}

- (MTManagedObjectContext)initWithConcurrencyType:(unint64_t)a3 name:(id)a4
{
  v6 = a4;
  v13.receiver = self;
  v13.super_class = MTManagedObjectContext;
  v7 = [(MTManagedObjectContext *)&v13 initWithConcurrencyType:a3];
  if (v7)
  {
    v8 = [v6 copy];
    mt_immutableName = v7->_mt_immutableName;
    v7->_mt_immutableName = v8;

    if (a3 == 2)
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __55__MTManagedObjectContext_initWithConcurrencyType_name___block_invoke;
      v11[3] = &unk_1E8568E28;
      v12 = v7;
      [(MTManagedObjectContext *)v12 performBlock:v11];
    }

    else
    {
      [(MTManagedObjectContext *)v7 setName:v7->_mt_immutableName];
    }
  }

  return v7;
}

- (void)deleteObject:(id)a3
{
  v4 = a3;
  [(MTManagedObjectContext *)self validateConcurencyType];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [(MTManagedObjectContext *)self validatePodcastDeletion:v4];
  }

  if (v4)
  {
    v5.receiver = self;
    v5.super_class = MTManagedObjectContext;
    [(MTManagedObjectContext *)&v5 deleteObject:v4];
  }
}

- (void)validatePodcastDeletion:(id)a3
{
  v3 = a3;
  v4 = [v3 episodes];
  v5 = [v4 count];

  if (v5)
  {
    v6 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      [(MTManagedObjectContext *)v3 validatePodcastDeletion:v6];
    }
  }
}

- (void)insertObject:(id)a3
{
  v4 = a3;
  [(MTManagedObjectContext *)self validateConcurencyType];
  v5.receiver = self;
  v5.super_class = MTManagedObjectContext;
  [(MTManagedObjectContext *)&v5 insertObject:v4];
}

- (id)executeFetchRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(MTManagedObjectContext *)self validateConcurencyType];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__MTManagedObjectContext_executeFetchRequest_error___block_invoke;
  v10[3] = &unk_1E856A048;
  v13 = &v14;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [(MTManagedObjectContext *)self handleError:a4 withCallback:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __52__MTManagedObjectContext_executeFetchRequest_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v7.receiver = *(a1 + 40);
  v7.super_class = MTManagedObjectContext;
  v4 = objc_msgSendSuper2(&v7, sel_executeFetchRequest_error_, v3, a2);
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (void)reset
{
  [(MTManagedObjectContext *)self validateConcurencyType];
  v3.receiver = self;
  v3.super_class = MTManagedObjectContext;
  [(MTManagedObjectContext *)&v3 reset];
}

- (unint64_t)countForFetchRequest:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(MTManagedObjectContext *)self validateConcurencyType];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__MTManagedObjectContext_countForFetchRequest_error___block_invoke;
  v10[3] = &unk_1E856A048;
  v13 = &v14;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [(MTManagedObjectContext *)self handleError:a4 withCallback:v10];
  v8 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v8;
}

id __53__MTManagedObjectContext_countForFetchRequest_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v5.receiver = *(a1 + 40);
  v5.super_class = MTManagedObjectContext;
  result = objc_msgSendSuper2(&v5, sel_countForFetchRequest_error_, v3, a2);
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (id)objectRegisteredForID:(id)a3
{
  v4 = a3;
  [(MTManagedObjectContext *)self validateConcurencyType];
  v7.receiver = self;
  v7.super_class = MTManagedObjectContext;
  v5 = [(MTManagedObjectContext *)&v7 objectRegisteredForID:v4];

  return v5;
}

- (id)objectWithID:(id)a3
{
  v4 = a3;
  [(MTManagedObjectContext *)self validateConcurencyType];
  v7.receiver = self;
  v7.super_class = MTManagedObjectContext;
  v5 = [(MTManagedObjectContext *)&v7 objectWithID:v4];

  return v5;
}

- (id)existingObjectWithID:(id)a3 error:(id *)a4
{
  v6 = a3;
  [(MTManagedObjectContext *)self validateConcurencyType];
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__1;
  v18 = __Block_byref_object_dispose__1;
  v19 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __53__MTManagedObjectContext_existingObjectWithID_error___block_invoke;
  v10[3] = &unk_1E856A048;
  v13 = &v14;
  v7 = v6;
  v11 = v7;
  v12 = self;
  [(MTManagedObjectContext *)self handleError:a4 withCallback:v10];
  v8 = v15[5];

  _Block_object_dispose(&v14, 8);

  return v8;
}

void __53__MTManagedObjectContext_existingObjectWithID_error___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v7.receiver = *(a1 + 40);
  v7.super_class = MTManagedObjectContext;
  v4 = objc_msgSendSuper2(&v7, sel_existingObjectWithID_error_, v3, a2);
  v5 = *(*(a1 + 48) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

- (BOOL)handleError:(id *)a3 withCallback:(id)a4
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v13 = 0;
  v5[2](v5, &v13);
  v6 = v13;
  if (v13)
  {
    v7 = v13;
    if (a3)
    {
      v8 = v13;
      *a3 = v6;
      v7 = v13;
    }

    if ([v7 isFileCorruptError])
    {
      if (+[PFClientUtil isPodcastsApp])
      {
        [IMMetrics recordUserAction:@"corrupt_db" dataSource:v13];
        v11 = _MTLogCategoryDatabase();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
        {
          v12 = *a3;
          *buf = 138412290;
          v15 = v12;
          _os_log_impl(&dword_1D8CEC000, v11, OS_LOG_TYPE_FAULT, "Marking database as corrupt with error: %@", buf, 0xCu);
        }

        [MTDB setCorrupt:1];
      }

      exit(0);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v6 == 0;
}

- (void)performBlockAndWait:(id)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([MEMORY[0x1E696AF00] isMainThread] && -[MTManagedObjectContext type](self, "type") == 1 && (isRunningUnitTests() & 1) == 0)
  {
    v5 = _MTLogCategoryDatabase();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [MEMORY[0x1E696AF00] callStackSymbols];
      *buf = 138412290;
      v19 = v6;
      _os_log_impl(&dword_1D8CEC000, v5, OS_LOG_TYPE_ERROR, "Blocking the main thread on a background queue is error prone:\n %@", buf, 0xCu);
    }
  }

  v7 = _MTLogCategoryDatabase();
  v8 = os_signpost_id_generate(v7);

  v9 = _MTLogCategoryDatabase();
  v10 = v9;
  if (v8 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v9))
  {
    mt_immutableName = self->_mt_immutableName;
    *buf = 138543362;
    v19 = mt_immutableName;
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v10, OS_SIGNPOST_INTERVAL_BEGIN, v8, "performBlockAndWait waiting", "context: %{public}@", buf, 0xCu);
  }

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __46__MTManagedObjectContext_performBlockAndWait___block_invoke;
  v15[3] = &unk_1E856A070;
  v16 = v4;
  v17 = v8;
  v15[4] = self;
  v14.receiver = self;
  v14.super_class = MTManagedObjectContext;
  v12 = v4;
  [(MTManagedObjectContext *)&v14 performBlockAndWait:v15];

  v13 = *MEMORY[0x1E69E9840];
}

void __46__MTManagedObjectContext_performBlockAndWait___block_invoke(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = _MTLogCategoryDatabase();
  v3 = v2;
  v4 = a1[6];
  if (v4 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v2))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v3, OS_SIGNPOST_INTERVAL_END, v4, "performBlockAndWait waiting", "", &v13, 2u);
  }

  v5 = _MTLogCategoryDatabase();
  v6 = os_signpost_id_generate(v5);

  v7 = _MTLogCategoryDatabase();
  v8 = v7;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    v9 = *(a1[4] + 192);
    v13 = 138543362;
    v14 = v9;
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v8, OS_SIGNPOST_INTERVAL_BEGIN, v6, "performBlockAndWait performing", "context: %{public}@", &v13, 0xCu);
  }

  (*(a1[5] + 16))();
  v10 = _MTLogCategoryDatabase();
  v11 = v10;
  if (v6 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    LOWORD(v13) = 0;
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v11, OS_SIGNPOST_INTERVAL_END, v6, "performBlockAndWait performing", "", &v13, 2u);
  }

  v12 = *MEMORY[0x1E69E9840];
}

- (void)performBlock:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__MTManagedObjectContext_performBlock___block_invoke;
  v7[3] = &unk_1E85692C8;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = MTManagedObjectContext;
  v5 = v4;
  [(MTManagedObjectContext *)&v6 performBlock:v7];
}

void __39__MTManagedObjectContext_performBlock___block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = _MTLogCategoryDatabase();
  v3 = os_signpost_id_generate(v2);

  v4 = _MTLogCategoryDatabase();
  v5 = v4;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v4))
  {
    v6 = *(*(a1 + 32) + 192);
    v10 = 138543362;
    v11 = v6;
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v5, OS_SIGNPOST_INTERVAL_BEGIN, v3, "performBlock", "context: %{public}@", &v10, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v7 = _MTLogCategoryDatabase();
  v8 = v7;
  if (v3 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v7))
  {
    LOWORD(v10) = 0;
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v8, OS_SIGNPOST_INTERVAL_END, v3, "performBlock", "", &v10, 2u);
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (void)validatePodcastDeletion:(void *)a1 .cold.1(void *a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = [a1 uuid];
  v5 = 138412290;
  v6 = v3;
  _os_log_fault_impl(&dword_1D8CEC000, a2, OS_LOG_TYPE_FAULT, "Deleting podcast %@ without deleting its episodes first will cause on exception on context save.", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

@end