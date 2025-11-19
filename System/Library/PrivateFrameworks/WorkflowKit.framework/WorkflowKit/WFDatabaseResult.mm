@interface WFDatabaseResult
+ (id)callbackQueue;
- (NSArray)descriptors;
- (NSArray)observers;
- (WFDatabaseResult)initWithStaticDescriptors:(id)a3;
- (id)_init;
- (id)description;
- (unint64_t)count;
- (void)registerObserver:(id)a3;
- (void)reset;
- (void)setSearchPredicate:(id)a3;
- (void)unregisterObserver:(id)a3;
- (void)updateDescriptorsAndNotify:(id)a3 state:(id)a4;
@end

@implementation WFDatabaseResult

- (id)_init
{
  v6.receiver = self;
  v6.super_class = WFDatabaseResult;
  v2 = [(WFDatabaseResult *)&v6 init];
  v3 = v2;
  if (v2)
  {
    WFDatabaseResultCommonInit(v2);
    v4 = v3;
  }

  return v3;
}

- (NSArray)descriptors
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__73010;
  v11 = __Block_byref_object_dispose__73011;
  v12 = 0;
  v3 = [(WFDatabaseResult *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __31__WFDatabaseResult_descriptors__block_invoke;
  v6[3] = &unk_1E837F898;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __31__WFDatabaseResult_descriptors__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  if (!v3)
  {
    v4 = *(v2 + 48);
    if (v4)
    {
      objc_storeStrong((v2 + 8), v4);
    }

    else
    {
      v5 = [v2 database];
      v6 = *(a1 + 32);
      v23 = 0;
      v24 = 0;
      v7 = [v5 descriptorsForResult:v6 state:&v24 error:&v23];
      v8 = v24;
      v9 = v23;
      v10 = *(a1 + 32);
      v11 = *(v10 + 8);
      *(v10 + 8) = v7;

      v12 = *(a1 + 32);
      v13 = *(v12 + 40);
      *(v12 + 40) = v8;
      v14 = v8;

      v15 = *(a1 + 32);
      v16 = *(v15 + 24);
      *(v15 + 24) = v9;
      v17 = v9;
    }

    v18 = *(a1 + 32);
    if (*(v18 + 32))
    {
      v19 = [*(v18 + 8) filteredArrayUsingPredicate:?];
      v20 = *(a1 + 32);
      v21 = *(v20 + 8);
      *(v20 + 8) = v19;

      v18 = *(a1 + 32);
    }

    v22 = *(v18 + 72);
    *(v18 + 72) = 0;

    v3 = *(*(a1 + 32) + 8);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v3);
}

- (void)reset
{
  v3 = [(WFDatabaseResult *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__WFDatabaseResult_reset__block_invoke;
  block[3] = &unk_1E837FA70;
  block[4] = self;
  dispatch_sync(v3, block);
}

void __25__WFDatabaseResult_reset__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 8);
  *(v2 + 8) = 0;

  v4 = *(a1 + 32);
  v5 = *(v4 + 24);
  *(v4 + 24) = 0;

  v6 = *(a1 + 32);
  v7 = *(v6 + 72);
  *(v6 + 72) = 0;
}

- (unint64_t)count
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v3 = [(WFDatabaseResult *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __25__WFDatabaseResult_count__block_invoke;
  block[3] = &unk_1E837F898;
  block[4] = self;
  block[5] = &v10;
  dispatch_sync(v3, block);

  v4 = v11[3];
  if (!v4)
  {
    v5 = [(WFDatabase *)self->_database countForResult:self];
    v11[3] = v5;
    v6 = [(WFDatabaseResult *)self queue];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __25__WFDatabaseResult_count__block_invoke_2;
    v8[3] = &unk_1E837F898;
    v8[4] = self;
    v8[5] = &v10;
    dispatch_sync(v6, v8);

    v4 = v11[3];
  }

  _Block_object_dispose(&v10, 8);
  return v4;
}

void __25__WFDatabaseResult_count__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2[1])
  {
    v3 = v2[1];
LABEL_3:
    *(*(*(a1 + 40) + 8) + 24) = [v3 count];
    return;
  }

  v4 = [v2 cachedCount];

  v5 = *(a1 + 32);
  if (v4)
  {
    v6 = [v5 cachedCount];
    *(*(*(a1 + 40) + 8) + 24) = [v6 unsignedIntValue];
  }

  else
  {
    v3 = v5[6];
    if (v3)
    {
      goto LABEL_3;
    }
  }
}

void __25__WFDatabaseResult_count__block_invoke_2(uint64_t a1)
{
  v2 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:*(*(*(a1 + 40) + 8) + 24)];
  [*(a1 + 32) setCachedCount:v2];
}

- (void)unregisterObserver:(id)a3
{
  v4 = a3;
  v5 = [(WFDatabaseResult *)self queue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __39__WFDatabaseResult_unregisterObserver___block_invoke;
  v7[3] = &unk_1E837F870;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_sync(v5, v7);
}

void __39__WFDatabaseResult_unregisterObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observersTable];
  [v2 removeObject:*(a1 + 40)];
}

- (void)registerObserver:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:self file:@"WFDatabaseResult.m" lineNumber:199 description:{@"Invalid parameter not satisfying: %@", @"observer"}];
  }

  v6 = [(WFDatabaseResult *)self queue];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __37__WFDatabaseResult_registerObserver___block_invoke;
  block[3] = &unk_1E837F870;
  block[4] = self;
  v10 = v5;
  v7 = v5;
  dispatch_sync(v6, block);
}

void __37__WFDatabaseResult_registerObserver___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) observersTable];
  [v2 addObject:*(a1 + 40)];
}

- (NSArray)observers
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__73010;
  v11 = __Block_byref_object_dispose__73011;
  v12 = 0;
  v3 = [(WFDatabaseResult *)self queue];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __29__WFDatabaseResult_observers__block_invoke;
  v6[3] = &unk_1E837F898;
  v6[4] = self;
  v6[5] = &v7;
  dispatch_sync(v3, v6);

  v4 = v8[5];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __29__WFDatabaseResult_observers__block_invoke(uint64_t a1)
{
  v5 = [*(a1 + 32) observersTable];
  v2 = [v5 allObjects];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

- (void)setSearchPredicate:(id)a3
{
  v4 = a3;
  if (self->_searchPredicate != v4)
  {
    v5 = [(WFDatabaseResult *)self queue];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __39__WFDatabaseResult_setSearchPredicate___block_invoke;
    v6[3] = &unk_1E837F870;
    v6[4] = self;
    v7 = v4;
    dispatch_sync(v5, v6);
  }
}

void __39__WFDatabaseResult_setSearchPredicate___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 40) copy];
  v3 = *(a1 + 32);
  v4 = *(v3 + 32);
  *(v3 + 32) = v2;

  v5 = *(a1 + 32);
  v6 = *(v5 + 8);
  *(v5 + 8) = 0;

  v7 = *(a1 + 32);
  v8 = *(v7 + 72);
  *(v7 + 72) = 0;
}

- (void)updateDescriptorsAndNotify:(id)a3 state:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(WFDatabaseResult *)self descriptors];
  v9 = [(WFDatabaseResult *)self queue];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __53__WFDatabaseResult_updateDescriptorsAndNotify_state___block_invoke;
  v13[3] = &unk_1E837F848;
  v14 = v6;
  v15 = self;
  v16 = v8;
  v17 = v7;
  v10 = v7;
  v11 = v8;
  v12 = v6;
  dispatch_sync(v9, v13);
}

void __53__WFDatabaseResult_updateDescriptorsAndNotify_state___block_invoke(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) searchPredicate];

  if (v3)
  {
    v4 = [*(a1 + 40) searchPredicate];
    v5 = [v2 filteredArrayUsingPredicate:v4];

    v2 = v5;
  }

  v6 = *(a1 + 48);
  v7 = v2;
  v8 = v7;
  if (v6 == v7)
  {
  }

  else
  {
    if (v7 && v6)
    {
      v9 = [v6 isEqualToArray:v7];

      if (v9)
      {
        goto LABEL_14;
      }
    }

    else
    {
    }

    v10 = [v8 copy];
    [*(a1 + 40) setDescriptors:v10];

    [*(a1 + 40) setFetchError:0];
    [*(a1 + 40) setCachedCount:0];
    [*(a1 + 40) setState:*(a1 + 56)];
    v11 = getWFDatabaseLogObject();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = *(a1 + 40);
      *buf = 136315394;
      v16 = "[WFDatabaseResult updateDescriptorsAndNotify:state:]_block_invoke";
      v17 = 2112;
      v18 = v12;
      _os_log_impl(&dword_1CA256000, v11, OS_LOG_TYPE_DEBUG, "%s Database result changed: %@", buf, 0x16u);
    }

    v6 = +[WFDatabaseResult callbackQueue];
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __53__WFDatabaseResult_updateDescriptorsAndNotify_state___block_invoke_186;
    block[3] = &unk_1E837FA70;
    block[4] = *(a1 + 40);
    dispatch_async(v6, block);
  }

LABEL_14:
  v13 = *MEMORY[0x1E69E9840];
}

void __53__WFDatabaseResult_updateDescriptorsAndNotify_state___block_invoke_186(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) observers];
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

        [*(*(&v8 + 1) + 8 * v6++) databaseResultDidChange:*(a1 + 32)];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v4);
  }

  v7 = *MEMORY[0x1E69E9840];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p>", v5, self];

  return v6;
}

- (WFDatabaseResult)initWithStaticDescriptors:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"WFDatabaseResult.m" lineNumber:71 description:{@"Invalid parameter not satisfying: %@", @"descriptors"}];
  }

  v13.receiver = self;
  v13.super_class = WFDatabaseResult;
  v6 = [(WFDatabaseResult *)&v13 init];
  v7 = v6;
  if (v6)
  {
    WFDatabaseResultCommonInit(v6);
    v8 = [v5 copy];
    staticDescriptors = v7->_staticDescriptors;
    v7->_staticDescriptors = v8;

    v10 = v7;
  }

  return v7;
}

+ (id)callbackQueue
{
  if (callbackQueue_onceToken != -1)
  {
    dispatch_once(&callbackQueue_onceToken, &__block_literal_global_73029);
  }

  v3 = callbackQueue_callbackQueue;

  return v3;
}

void __33__WFDatabaseResult_callbackQueue__block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.shortcuts.WFDatabaseResult-callback", v2);
  v1 = callbackQueue_callbackQueue;
  callbackQueue_callbackQueue = v0;
}

@end