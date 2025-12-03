@interface PLEnumerateAndSaveController
+ (BOOL)_concurrencyLimiterEnabledForContext:(id)context;
+ (void)disableConcurrencyLimiterForContext:(id)context;
- (BOOL)processObjectsWithError:(id *)error;
- (PLEnumerateAndSaveController)initWithName:(id)name fetchRequest:(id)request context:(id)context options:(unint64_t)options generateContextBlock:(id)block didFetchObjectIDsBlock:(id)dsBlock processResultBlock:(id)resultBlock;
- (PLEnumerateAndSaveController)initWithName:(id)name fetchRequest:(id)request context:(id)context options:(unint64_t)options generateContextBlock:(id)block didFetchObjectIDsBlock:(id)dsBlock processResultsBlock:(id)resultsBlock;
- (id)_initWithName:(id)name fetchRequest:(id)request context:(id)context options:(unint64_t)options generateContextBlock:(id)block didFetchObjectIDsBlock:(id)dsBlock processResultBlock:(id)resultBlock processResultsBlock:(id)self0;
- (void)_inq_runOperationWithObjectIDs:(id)ds onContext:(id)context;
@end

@implementation PLEnumerateAndSaveController

- (BOOL)processObjectsWithError:(id *)error
{
  atomic_store(0, &self->_cancelled);
  originalFetchRequest = [(PLEnumerateAndSaveController *)self originalFetchRequest];
  v6 = [originalFetchRequest copy];

  [v6 setResultType:1];
  [v6 setIncludesPropertyValues:0];
  [v6 setIncludesPendingChanges:0];
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__99573;
  v61 = __Block_byref_object_dispose__99574;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__99573;
  v55 = __Block_byref_object_dispose__99574;
  v56 = 0;
  originalContext = [(PLEnumerateAndSaveController *)self originalContext];
  v34 = [objc_opt_class() _concurrencyLimiterEnabledForContext:originalContext];
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __56__PLEnumerateAndSaveController_processObjectsWithError___block_invoke;
  aBlock[3] = &unk_1E7578898;
  v49 = &v57;
  v8 = originalContext;
  v47 = v8;
  v9 = v6;
  v48 = v9;
  v50 = &v51;
  v10 = _Block_copy(aBlock);
  concurrencyType = [v8 concurrencyType];
  if (*MEMORY[0x1E695D708] == concurrencyType || !concurrencyType)
  {
    v10[2](v10);
  }

  else
  {
    v43[0] = MEMORY[0x1E69E9820];
    v43[1] = 3221225472;
    v43[2] = __56__PLEnumerateAndSaveController_processObjectsWithError___block_invoke_2;
    v43[3] = &unk_1E7577C08;
    v12 = v8;
    v44 = v12;
    v13 = v10;
    v45 = v13;
    v14 = _Block_copy(v43);
    v15 = v14;
    if (v34)
    {
      v16 = +[PLConcurrencyLimiter sharedLimiter];
      photoLibrary = [v12 photoLibrary];
      [v16 sync:v15 identifyingBlock:v13 library:photoLibrary];
    }

    else
    {
      (*(v14 + 2))(v14);
    }
  }

  if (!v58[5])
  {
    [(PLEnumerateAndSaveController *)self setSucceeded:0];
    [(PLEnumerateAndSaveController *)self setFirstError:v52[5]];
    if (!error)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  didFetchObjectIDsBlock = [(PLEnumerateAndSaveController *)self didFetchObjectIDsBlock];

  if (didFetchObjectIDsBlock)
  {
    didFetchObjectIDsBlock2 = [(PLEnumerateAndSaveController *)self didFetchObjectIDsBlock];
    didFetchObjectIDsBlock2[2](didFetchObjectIDsBlock2, v58[5]);
  }

  itemsPerBatch = [(PLEnumerateAndSaveController *)self itemsPerBatch];
  v21 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:itemsPerBatch];
  v22 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v23 = v58[5];
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 3221225472;
  v38[2] = __56__PLEnumerateAndSaveController_processObjectsWithError___block_invoke_3;
  v38[3] = &unk_1E7574D30;
  v24 = v21;
  v39 = v24;
  v41 = &v57;
  v42 = itemsPerBatch;
  v25 = v22;
  v40 = v25;
  [v23 enumerateObjectsUsingBlock:v38];
  if ([(PLEnumerateAndSaveController *)self isConcurrent])
  {
    v26 = 0;
  }

  else
  {
    operationName = [(PLEnumerateAndSaveController *)self operationName];
    uTF8String = [operationName UTF8String];
    v29 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v26 = dispatch_queue_create(uTF8String, v29);
  }

  v30 = [v25 count];
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __56__PLEnumerateAndSaveController_processObjectsWithError___block_invoke_4;
  block[3] = &unk_1E7574D58;
  block[4] = self;
  v36 = v25;
  v37 = v34;
  v31 = v25;
  dispatch_apply(v30, v26, block);

  if (error)
  {
LABEL_17:
    *error = [(PLEnumerateAndSaveController *)self firstError];
  }

LABEL_18:
  succeeded = [(PLEnumerateAndSaveController *)self succeeded];

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);

  return succeeded;
}

void __56__PLEnumerateAndSaveController_processObjectsWithError___block_invoke(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = *(a1[6] + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t __56__PLEnumerateAndSaveController_processObjectsWithError___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  [*(a1 + 32) addObject:a2];
  v5 = [*(*(*(a1 + 48) + 8) + 40) count];
  result = [*(a1 + 32) count];
  if (result == *(a1 + 56) || v5 - 1 == a3)
  {
    v8 = *(a1 + 40);
    v9 = [*(a1 + 32) copy];
    [v8 addObject:v9];

    v10 = *(a1 + 32);

    return [v10 removeAllObjects];
  }

  return result;
}

void __56__PLEnumerateAndSaveController_processObjectsWithError___block_invoke_4(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((*(a1 + 32) + 8));
  if ((v2 & 1) == 0)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = [*(a1 + 40) objectAtIndexedSubscript:a2];
    v7 = [*(a1 + 32) generateContextBlock];
    v8 = v7[2]();

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = __56__PLEnumerateAndSaveController_processObjectsWithError___block_invoke_5;
    aBlock[3] = &unk_1E75761B8;
    v9 = v8;
    v10 = *(a1 + 32);
    v18 = v9;
    v19 = v10;
    v11 = v6;
    v20 = v11;
    v12 = _Block_copy(aBlock);
    if (([*(a1 + 32) isConcurrent] & 1) != 0 || *(a1 + 48) != 1)
    {
      v12[2](v12);
    }

    else
    {
      v13 = +[PLConcurrencyLimiter sharedLimiter];
      v15 = MEMORY[0x1E69E9820];
      v16 = v12;
      v14 = [v9 photoLibrary];
      [v13 sync:&v15 identifyingBlock:0 library:v14];
    }

    objc_autoreleasePoolPop(v5);
  }
}

void __56__PLEnumerateAndSaveController_processObjectsWithError___block_invoke_5(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __56__PLEnumerateAndSaveController_processObjectsWithError___block_invoke_6;
  v5[3] = &unk_1E75761B8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = v2;
  v7 = v3;
  v8 = v4;
  [PLManagedObjectContext _pl_megamoc_runWithPerformWarningsSuppressed:v5];
}

void __56__PLEnumerateAndSaveController_processObjectsWithError___block_invoke_6(uint64_t a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __56__PLEnumerateAndSaveController_processObjectsWithError___block_invoke_7;
  v4[3] = &unk_1E75761B8;
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4[4] = *(a1 + 40);
  v5 = v3;
  v6 = *(a1 + 32);
  [v2 pl_performBlockAndWait:v4];
}

- (void)_inq_runOperationWithObjectIDs:(id)ds onContext:(id)context
{
  v46 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLEnumerateAndSaveController.m" lineNumber:122 description:{@"Invalid parameter not satisfying: %@", @"context"}];
  }

  originalFetchRequest = [(PLEnumerateAndSaveController *)self originalFetchRequest];
  v9 = [originalFetchRequest copy];

  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"self in %@", dsCopy];
  [v9 setPredicate:dsCopy];

  v40 = 0;
  v34 = [contextCopy executeFetchRequest:v9 error:&v40];
  v32 = v40;
  if (v34)
  {
    processResultsBlock = [(PLEnumerateAndSaveController *)self processResultsBlock];

    if (processResultsBlock)
    {
      v12 = objc_autoreleasePoolPush();
      buf[0] = 0;
      processResultsBlock2 = [(PLEnumerateAndSaveController *)self processResultsBlock];
      (processResultsBlock2)[2](processResultsBlock2, contextCopy, v34, buf);

      if (buf[0] == 1)
      {
        atomic_store(1u, &self->_cancelled);
      }

      objc_autoreleasePoolPop(v12);
    }

    else
    {
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v17 = v34;
      v18 = [v17 countByEnumeratingWithState:&v36 objects:v45 count:16];
      if (v18)
      {
        v19 = *v37;
        while (2)
        {
          for (i = 0; i != v18; ++i)
          {
            if (*v37 != v19)
            {
              objc_enumerationMutation(v17);
            }

            v21 = *(*(&v36 + 1) + 8 * i);
            v22 = objc_autoreleasePoolPush();
            buf[0] = 0;
            processResultBlock = [(PLEnumerateAndSaveController *)self processResultBlock];
            (processResultBlock)[2](processResultBlock, contextCopy, v21, buf);

            if (buf[0] == 1)
            {
              atomic_store(1u, &self->_cancelled);
              objc_autoreleasePoolPop(v22);
              goto LABEL_23;
            }

            objc_autoreleasePoolPop(v22);
          }

          v18 = [v17 countByEnumeratingWithState:&v36 objects:v45 count:16];
          if (v18)
          {
            continue;
          }

          break;
        }
      }

LABEL_23:
    }

    hasChanges = [contextCopy hasChanges];
    if ([(PLEnumerateAndSaveController *)self isReadOnly])
    {
      if (hasChanges)
      {
        v25 = PLBackendGetLog();
        if (os_log_type_enabled(v25, OS_LOG_TYPE_FAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_19BF1F000, v25, OS_LOG_TYPE_FAULT, "PLEnumerateAndSaveController is readOnly and context hasChanges", buf, 2u);
        }
      }

      if ([(PLEnumerateAndSaveController *)self shouldResetAfterSave])
      {
        [contextCopy reset];
      }
    }

    else if (hasChanges)
    {
      v35 = 0;
      v26 = [contextCopy save:&v35];
      v27 = v35;
      if ((v26 & 1) == 0)
      {
        v28 = PLBackendGetLog();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          operationName = [(PLEnumerateAndSaveController *)self operationName];
          *buf = 138412546;
          v42 = operationName;
          v43 = 2112;
          v44 = v27;
          _os_log_impl(&dword_19BF1F000, v28, OS_LOG_TYPE_ERROR, "PLEnumerateAndSaveController (%@) error saving changes from batch: %@, cancelling remaining operations.", buf, 0x16u);
        }

        selfCopy = self;
        objc_sync_enter(selfCopy);
        if ([(PLEnumerateAndSaveController *)selfCopy succeeded])
        {
          [(PLEnumerateAndSaveController *)selfCopy setSucceeded:0];
          [(PLEnumerateAndSaveController *)selfCopy setFirstError:v27];
        }

        objc_sync_exit(selfCopy);

        atomic_store(1u, &selfCopy->_cancelled);
      }

      if ([(PLEnumerateAndSaveController *)self shouldResetAfterSave])
      {
        [contextCopy reset];
      }

      else if ([(PLEnumerateAndSaveController *)self shouldRefreshAllAfterSave])
      {
        [contextCopy refreshAllObjects];
      }
    }
  }

  else
  {
    v14 = PLBackendGetLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      operationName2 = [(PLEnumerateAndSaveController *)self operationName];
      *buf = 138412546;
      v42 = operationName2;
      v43 = 2112;
      v44 = v32;
      _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "PLEnumerateAndSaveController (%@) error fetching batch: %@, cancelling remaining operations.", buf, 0x16u);
    }

    selfCopy2 = self;
    objc_sync_enter(selfCopy2);
    if ([(PLEnumerateAndSaveController *)selfCopy2 succeeded])
    {
      [(PLEnumerateAndSaveController *)selfCopy2 setSucceeded:0];
      [(PLEnumerateAndSaveController *)selfCopy2 setFirstError:v32];
    }

    objc_sync_exit(selfCopy2);

    atomic_store(1u, &selfCopy2->_cancelled);
  }
}

- (id)_initWithName:(id)name fetchRequest:(id)request context:(id)context options:(unint64_t)options generateContextBlock:(id)block didFetchObjectIDsBlock:(id)dsBlock processResultBlock:(id)resultBlock processResultsBlock:(id)self0
{
  nameCopy = name;
  requestCopy = request;
  contextCopy = context;
  blockCopy = block;
  dsBlockCopy = dsBlock;
  v20 = nameCopy;
  resultBlockCopy = resultBlock;
  resultsBlockCopy = resultsBlock;
  v43 = v20;
  if (!v20)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLEnumerateAndSaveController.m" lineNumber:82 description:{@"Invalid parameter not satisfying: %@", @"name"}];
  }

  v23 = requestCopy;
  selfCopy = self;
  if (!v23)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:selfCopy file:@"PLEnumerateAndSaveController.m" lineNumber:83 description:{@"Invalid parameter not satisfying: %@", @"request"}];
  }

  if (contextCopy)
  {
    if (blockCopy)
    {
      goto LABEL_7;
    }
  }

  else
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:selfCopy file:@"PLEnumerateAndSaveController.m" lineNumber:84 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    if (blockCopy)
    {
      goto LABEL_7;
    }
  }

  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:selfCopy file:@"PLEnumerateAndSaveController.m" lineNumber:85 description:{@"Invalid parameter not satisfying: %@", @"generateContextBlock"}];

LABEL_7:
  v45.receiver = selfCopy;
  v45.super_class = PLEnumerateAndSaveController;
  v25 = [(PLEnumerateAndSaveController *)&v45 init];
  v26 = v25;
  if (v25)
  {
    v25->_options = options;
    objc_storeStrong(&v25->_operationName, name);
    objc_storeStrong(&v26->_originalContext, context);
    objc_storeStrong(&v26->_originalFetchRequest, request);
    v27 = _Block_copy(resultBlockCopy);
    processResultBlock = v26->_processResultBlock;
    v26->_processResultBlock = v27;

    v29 = _Block_copy(resultsBlockCopy);
    processResultsBlock = v26->_processResultsBlock;
    v26->_processResultsBlock = v29;

    v31 = _Block_copy(blockCopy);
    generateContextBlock = v26->_generateContextBlock;
    v26->_generateContextBlock = v31;

    v33 = _Block_copy(dsBlockCopy);
    didFetchObjectIDsBlock = v26->_didFetchObjectIDsBlock;
    v26->_didFetchObjectIDsBlock = v33;

    v26->_succeeded = 1;
    firstError = v26->_firstError;
    v26->_firstError = 0;

    v26->_itemsPerBatch = 200;
  }

  return v26;
}

- (PLEnumerateAndSaveController)initWithName:(id)name fetchRequest:(id)request context:(id)context options:(unint64_t)options generateContextBlock:(id)block didFetchObjectIDsBlock:(id)dsBlock processResultsBlock:(id)resultsBlock
{
  nameCopy = name;
  requestCopy = request;
  contextCopy = context;
  blockCopy = block;
  dsBlockCopy = dsBlock;
  resultsBlockCopy = resultsBlock;
  if (!resultsBlockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLEnumerateAndSaveController.m" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"processResultsBlock"}];
  }

  v22 = [(PLEnumerateAndSaveController *)self _initWithName:nameCopy fetchRequest:requestCopy context:contextCopy options:options generateContextBlock:blockCopy didFetchObjectIDsBlock:dsBlockCopy processResultBlock:0 processResultsBlock:resultsBlockCopy];

  return v22;
}

- (PLEnumerateAndSaveController)initWithName:(id)name fetchRequest:(id)request context:(id)context options:(unint64_t)options generateContextBlock:(id)block didFetchObjectIDsBlock:(id)dsBlock processResultBlock:(id)resultBlock
{
  nameCopy = name;
  requestCopy = request;
  contextCopy = context;
  blockCopy = block;
  dsBlockCopy = dsBlock;
  resultBlockCopy = resultBlock;
  if (!resultBlockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLEnumerateAndSaveController.m" lineNumber:59 description:{@"Invalid parameter not satisfying: %@", @"processResultBlock"}];
  }

  v22 = [(PLEnumerateAndSaveController *)self _initWithName:nameCopy fetchRequest:requestCopy context:contextCopy options:options generateContextBlock:blockCopy didFetchObjectIDsBlock:dsBlockCopy processResultBlock:resultBlockCopy processResultsBlock:0];

  return v22;
}

+ (BOOL)_concurrencyLimiterEnabledForContext:(id)context
{
  contextCopy = context;
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  if (PLIsAssetsd())
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __69__PLEnumerateAndSaveController__concurrencyLimiterEnabledForContext___block_invoke;
    v6[3] = &unk_1E7578910;
    v8 = &v9;
    v7 = contextCopy;
    [v7 pl_performBlockAndWait:v6];

    v4 = *(v10 + 24) ^ 1;
  }

  else
  {
    v4 = 0;
    *(v10 + 24) = 1;
  }

  _Block_object_dispose(&v9, 8);

  return v4 & 1;
}

void __69__PLEnumerateAndSaveController__concurrencyLimiterEnabledForContext___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) userInfo];
  v2 = [v3 objectForKeyedSubscript:@"PLEnumerateAndSaveControllerDisableConcurrencyLimiter"];
  *(*(*(a1 + 40) + 8) + 24) = [v2 BOOLValue];
}

+ (void)disableConcurrencyLimiterForContext:(id)context
{
  contextCopy = context;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __68__PLEnumerateAndSaveController_disableConcurrencyLimiterForContext___block_invoke;
  v5[3] = &unk_1E75781E8;
  v6 = contextCopy;
  v4 = contextCopy;
  [v4 pl_performBlockAndWait:v5];
}

void __68__PLEnumerateAndSaveController_disableConcurrencyLimiterForContext___block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) userInfo];
  [v1 setObject:MEMORY[0x1E695E118] forKeyedSubscript:@"PLEnumerateAndSaveControllerDisableConcurrencyLimiter"];
}

@end