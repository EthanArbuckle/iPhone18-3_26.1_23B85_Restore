@interface PCSCKKS
+ (BOOL)fetchWithTimeout:(unint64_t)timeout error:(id *)error;
- (BOOL)shouldRetryWithSync:(id)sync;
- (PCSCKKS)initWithIdentitySet:(_PCSIdentitySetData *)set dsid:(id)dsid;
- (id)createIdentityOperation:(id)operation;
- (id)ensurePCSFieldsOperation:(id)operation;
- (id)fetchCurrentOperation:(id)operation;
- (id)stripOperationErrorIfPCSError:(id)error;
- (id)syncViewOperation:(id)operation;
- (void)addOperations:(id)operations completionOp:(id)op allOps:(id)ops context:(id)context;
- (void)createIdentity:(id)identity complete:(id)complete;
- (void)dealloc;
- (void)submitRequest:(id)request complete:(id)complete;
@end

@implementation PCSCKKS

+ (BOOL)fetchWithTimeout:(unint64_t)timeout error:(id *)error
{
  errorCopy = error;
  v34[1] = *MEMORY[0x1E69E9840];
  v29 = 0;
  v30 = &v29;
  v31 = 0x2020000000;
  v32 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__6;
  v27 = __Block_byref_object_dispose__6;
  v28 = 0;
  v6 = [MEMORY[0x1E697AA20] controlObject:error];
  if (v6)
  {
    v7 = dispatch_semaphore_create(0);
    v16 = MEMORY[0x1E69E9820];
    v17 = 3221225472;
    v18 = __34__PCSCKKS_fetchWithTimeout_error___block_invoke;
    v19 = &unk_1E7B19358;
    v21 = &v29;
    v22 = &v23;
    v8 = v7;
    v20 = v8;
    [v6 rpcFetchAndProcessChangesIfNoRecentFetch:@"ProtectedCloudStorage" reply:&v16];
    v9 = dispatch_time(0, 1000000000 * timeout);
    if (dispatch_semaphore_wait(v8, v9))
    {
      if (errorCopy)
      {
        v10 = MEMORY[0x1E696ABC0];
        v11 = kPCSErrorDomain;
        v33 = *MEMORY[0x1E696A578];
        v34[0] = @"rpcFetchAndProcessChangesIfNoRecentFetch timed out";
        v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v34 forKeys:&v33 count:{1, v16, v17, v18, v19}];
        *errorCopy = [v10 errorWithDomain:v11 code:99 userInfo:v12];

        LOBYTE(errorCopy) = 0;
      }
    }

    else
    {
      if (errorCopy)
      {
        v13 = v24[5];
        if (v13)
        {
          *errorCopy = v13;
        }
      }

      LOBYTE(errorCopy) = *(v30 + 24);
    }
  }

  else
  {
    LOBYTE(errorCopy) = 0;
  }

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);
  v14 = *MEMORY[0x1E69E9840];
  return errorCopy & 1;
}

void __34__PCSCKKS_fetchWithTimeout_error___block_invoke(uint64_t a1, void *a2)
{
  *(*(*(a1 + 40) + 8) + 24) = a2 == 0;
  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v4 = a2;
  dispatch_semaphore_signal(*(a1 + 32));
}

- (PCSCKKS)initWithIdentitySet:(_PCSIdentitySetData *)set dsid:(id)dsid
{
  dsidCopy = dsid;
  if (PCSCurrentPersonaMatchesDSIDFromSet(set))
  {
    v11.receiver = self;
    v11.super_class = PCSCKKS;
    v8 = [(PCSCKKS *)&v11 init];
    if (v8)
    {
      v8->_set = CFRetain(set);
      objc_storeStrong(&v8->_dsid, dsid);
    }

    self = v8;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)dealloc
{
  set = self->_set;
  if (set)
  {
    self->_set = 0;
    CFRelease(set);
  }

  v4.receiver = self;
  v4.super_class = PCSCKKS;
  [(PCSCKKS *)&v4 dealloc];
}

- (id)syncViewOperation:(id)operation
{
  operationCopy = operation;
  v4 = [[PCSCKKSSyncViewOperation alloc] initWithItemModifyContext:operationCopy];

  return v4;
}

- (id)fetchCurrentOperation:(id)operation
{
  operationCopy = operation;
  v4 = [[PCSCKKSFetchCurrentOperation alloc] initWithItemModifyContext:operationCopy];

  return v4;
}

- (id)ensurePCSFieldsOperation:(id)operation
{
  operationCopy = operation;
  v4 = [[PCSCKKSEnsurePCSFieldsOperation alloc] initWithItemModifyContext:operationCopy];

  return v4;
}

- (id)createIdentityOperation:(id)operation
{
  operationCopy = operation;
  v4 = [[PCSCKKSCreateIdentityOperation alloc] initWithItemModifyContext:operationCopy];

  return v4;
}

- (void)addOperations:(id)operations completionOp:(id)op allOps:(id)ops context:(id)context
{
  operationsCopy = operations;
  opCopy = op;
  opsCopy = ops;
  contextCopy = context;
  if (addOperations_completionOp_allOps_context__once != -1)
  {
    [PCSCKKS addOperations:completionOp:allOps:context:];
  }

  serviceContexts = [contextCopy serviceContexts];
  v14 = [serviceContexts count];

  if (v14)
  {
    serviceContexts2 = [contextCopy serviceContexts];
    v16 = [serviceContexts2 count];

    v37 = operationsCopy;
    if (v16 == 1)
    {
      serviceContexts3 = [contextCopy serviceContexts];
      [serviceContexts3 allKeys];
      v36 = opCopy;
      v19 = v18 = operationsCopy;
      v20 = [v19 objectAtIndexedSubscript:0];

      serviceContexts4 = [contextCopy serviceContexts];
      allValues = [serviceContexts4 allValues];
      v23 = [allValues objectAtIndexedSubscript:0];

      v24 = addOperations_completionOp_allOps_context__queue;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = __53__PCSCKKS_addOperations_completionOp_allOps_context___block_invoke_2;
      block[3] = &unk_1E7B1A050;
      v25 = &v43;
      v26 = v23;
      v43 = v26;
      v27 = &v44;
      v44 = contextCopy;
      v28 = &v45;
      v29 = v18;
      opCopy = v36;
      v45 = v29;
      v46 = v36;
      dispatch_sync(v24, block);
    }

    else
    {
      v30 = addOperations_completionOp_allOps_context__queue;
      v38[0] = MEMORY[0x1E69E9820];
      v38[1] = 3221225472;
      v38[2] = __53__PCSCKKS_addOperations_completionOp_allOps_context___block_invoke_3;
      v38[3] = &unk_1E7B1A078;
      v25 = &v39;
      v39 = contextCopy;
      v27 = &v40;
      v40 = operationsCopy;
      v28 = &v41;
      v41 = opCopy;
      dispatch_sync(v30, v38);
      v26 = 0;
      v20 = @"bulk-service-identity-creation-identifier";
    }

    v31 = v20;
    v50 = 0;
    v51 = &v50;
    v52 = 0x3032000000;
    v53 = __Block_byref_object_copy__6;
    v54 = __Block_byref_object_dispose__6;
    v55 = 0;
    if (operationQueueForService_once != -1)
    {
      [PCSCKKS addOperations:completionOp:allOps:context:];
    }

    v32 = operationQueueForService_queue;
    v47[0] = MEMORY[0x1E69E9820];
    v47[1] = 3221225472;
    v47[2] = __operationQueueForService_block_invoke_2;
    v47[3] = &unk_1E7B18DE8;
    v48 = v31;
    v49 = &v50;
    v33 = v31;
    dispatch_sync(v32, v47);
    v34 = v48;
    v35 = v51[5];

    _Block_object_dispose(&v50, 8);
    [v35 addOperations:opsCopy waitUntilFinished:0];

    operationsCopy = v37;
  }
}

uint64_t __53__PCSCKKS_addOperations_completionOp_allOps_context___block_invoke()
{
  v0 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v1 = dispatch_queue_create("PCSCKKS.operationQueueForService", v0);
  v2 = addOperations_completionOp_allOps_context__queue;
  addOperations_completionOp_allOps_context__queue = v1;

  addOperations_completionOp_allOps_context__serviceOperationMap = [objc_alloc(MEMORY[0x1E696AD18]) initWithKeyOptions:0 valueOptions:5 capacity:0];

  return MEMORY[0x1EEE66BB8]();
}

void __53__PCSCKKS_addOperations_completionOp_allOps_context___block_invoke_2(uint64_t a1)
{
  v2 = addOperations_completionOp_allOps_context__serviceOperationMap;
  v3 = [*(a1 + 32) service];
  v12 = [v2 objectForKey:v3];

  if (v12)
  {
    v4 = [*(a1 + 40) log];
    v5 = [*(a1 + 32) service];
    PCSMigrationLog(v4, @"service %@, existing operation %@", v5, v12);

    [*(a1 + 48) addDependency:v12];
  }

  v6 = [addOperations_completionOp_allOps_context__serviceOperationMap objectForKey:@"bulk-service-identity-creation-identifier"];
  if (v6)
  {
    v7 = [*(a1 + 40) log];
    v8 = [*(a1 + 32) service];
    PCSMigrationLog(v7, @"service %@, existing (bulk) operation %@", v8, v12);

    [*(a1 + 48) addDependency:v6];
  }

  v9 = addOperations_completionOp_allOps_context__serviceOperationMap;
  v10 = *(a1 + 56);
  v11 = [*(a1 + 32) service];
  [v9 setObject:v10 forKey:v11];
}

uint64_t __53__PCSCKKS_addOperations_completionOp_allOps_context___block_invoke_3(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = [addOperations_completionOp_allOps_context__serviceOperationMap objectEnumerator];
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        PCSMigrationLog([*(a1 + 32) log], @"bulk operation, existing operation %@", v7);
        [*(a1 + 40) addDependency:v7];
        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  result = [addOperations_completionOp_allOps_context__serviceOperationMap setObject:*(a1 + 48) forKey:@"bulk-service-identity-creation-identifier"];
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

- (void)submitRequest:(id)request complete:(id)complete
{
  v26[5] = *MEMORY[0x1E69E9840];
  requestCopy = request;
  completeCopy = complete;
  v8 = [(PCSCKKS *)self syncViewOperation:requestCopy];
  v9 = [(PCSCKKS *)self fetchCurrentOperation:requestCopy];
  [v9 addSuccessDependency:v8];
  v10 = [(PCSCKKS *)self ensurePCSFieldsOperation:requestCopy];
  [v10 addSuccessDependency:v9];
  v11 = [(PCSCKKS *)self createIdentityOperation:requestCopy];
  [v11 addSuccessDependency:v10];
  v12 = MEMORY[0x1E696AEC0];
  serviceContexts = [requestCopy serviceContexts];
  if ([serviceContexts count] == 1)
  {
    [requestCopy serviceContexts];
    v14 = v23 = v8;
    [v14 allKeys];
    v15 = v22 = completeCopy;
    v16 = [v15 objectAtIndexedSubscript:0];
    v17 = [v12 stringWithFormat:@"CreateIdentity: %@", v16];

    completeCopy = v22;
    v8 = v23;
  }

  else
  {
    v17 = [v12 stringWithFormat:@"CreateIdentity: %@", @"bulk-service-identity-creation-identifier"];
  }

  v24[0] = MEMORY[0x1E69E9820];
  v24[1] = 3221225472;
  v24[2] = __34__PCSCKKS_submitRequest_complete___block_invoke;
  v24[3] = &unk_1E7B1A0A0;
  v24[4] = self;
  v25 = completeCopy;
  v18 = completeCopy;
  v19 = [PCSCKKSOperation operation:v17 block:v24];
  [v19 addSuccessDependency:v11];
  v26[0] = v19;
  v26[1] = v8;
  v26[2] = v9;
  v26[3] = v10;
  v26[4] = v11;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:5];
  [(PCSCKKS *)self addOperations:v8 completionOp:v19 allOps:v20 context:requestCopy];

  v21 = *MEMORY[0x1E69E9840];
}

void __34__PCSCKKS_submitRequest_complete___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) stripOperationErrorIfPCSError:a2];
  (*(v2 + 16))(v2, v3);
}

- (BOOL)shouldRetryWithSync:(id)sync
{
  v30 = *MEMORY[0x1E69E9840];
  syncCopy = sync;
  domain = [syncCopy domain];
  v5 = [domain isEqualToString:@"CKErrorDomain"];

  if (!v5)
  {
    domain2 = [syncCopy domain];
    v19 = [domain2 isEqualToString:@"securityd"];

    if (v19)
    {
      v20 = [syncCopy code] == -50;
      goto LABEL_21;
    }

    domain3 = [syncCopy domain];
    v22 = [domain3 isEqualToString:@"CKKSErrorDomain"];

    if (!v22)
    {
      v17 = 0;
      goto LABEL_31;
    }

    if ([syncCopy code] == 12 || objc_msgSend(syncCopy, "code") == 13)
    {
      v17 = 1;
      goto LABEL_31;
    }

LABEL_20:
    v20 = [syncCopy code] == 14;
LABEL_21:
    v17 = v20;
    goto LABEL_31;
  }

  if ([syncCopy code] != 2)
  {
    goto LABEL_20;
  }

  userInfo = [syncCopy userInfo];
  v7 = [userInfo objectForKeyedSubscript:@"CKPartialErrors"];

  if ([v7 count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v26;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [v8 objectForKeyedSubscript:{*(*(&v25 + 1) + 8 * i), v25}];
          domain4 = [v13 domain];
          v15 = [domain4 isEqualToString:@"CKErrorDomain"];

          if (!v15)
          {

LABEL_28:
            v17 = 0;
            goto LABEL_29;
          }

          code = [v13 code];

          if (code != 14)
          {
            goto LABEL_28;
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v25 objects:v29 count:16];
        v17 = 1;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v17 = 1;
    }

LABEL_29:
  }

  else
  {
    v17 = 0;
  }

LABEL_31:
  v23 = *MEMORY[0x1E69E9840];
  return v17;
}

void __60__PCSCKKS_createNewIdentities_roll_sync_forceSync_complete___block_invoke(uint64_t a1, void *a2)
{
  v60[2] = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = [*(a1 + 32) mtt];
  [v4 stop];

  v5 = [*(a1 + 32) lockAssertion];

  if (v5)
  {
    v6 = [*(a1 + 32) lockAssertion];
    [v6 dropAssertion];

    [*(a1 + 32) setLockAssertion:0];
  }

  [*(a1 + 32) setTransaction:0];
  v7 = [*(a1 + 32) activityAssertion];

  if (v7)
  {
    v8 = [MEMORY[0x1E696AE30] processInfo];
    v9 = [*(a1 + 32) activityAssertion];
    [v8 endActivity:v9];

    [*(a1 + 32) setActivityAssertion:0];
  }

  if (*(a1 + 56) == 1)
  {
    v60[0] = @"PCSEventKeyCreation";
    v60[1] = @"PCSEventIndividualKeyRoll";
    v10 = MEMORY[0x1E695DEC8];
    v11 = v60;
    v12 = 2;
  }

  else
  {
    v59 = @"PCSEventKeyCreation";
    v10 = MEMORY[0x1E695DEC8];
    v11 = &v59;
    v12 = 1;
  }

  v13 = [v10 arrayWithObjects:v11 count:v12];
  v14 = +[PCSAnalytics logger];
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v53 = 0u;
  v15 = [*(a1 + 32) serviceContexts];
  v16 = [v15 allValues];

  v17 = [v16 countByEnumeratingWithState:&v50 objects:v58 count:16];
  if (v17)
  {
    v18 = 0;
    v19 = *v51;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v51 != v19)
        {
          objc_enumerationMutation(v16);
        }

        if ([*(*(&v50 + 1) + 8 * i) currentIdentity])
        {
          ++v18;
        }
      }

      v17 = [v16 countByEnumeratingWithState:&v50 objects:v58 count:16];
    }

    while (v17);
    v17 = v18;
  }

  if ([*(a1 + 40) count] == v17)
  {
    v48 = 0u;
    v49 = 0u;
    v46 = 0u;
    v47 = 0u;
    v21 = v13;
    v22 = [v21 countByEnumeratingWithState:&v46 objects:v57 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v47;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v47 != v24)
          {
            objc_enumerationMutation(v21);
          }

          [v14 logSuccessForEvent:*(*(&v46 + 1) + 8 * j)];
        }

        v23 = [v21 countByEnumeratingWithState:&v46 objects:v57 count:16];
      }

      while (v23);
    }
  }

  else
  {
    v55[0] = @"roll";
    v26 = [MEMORY[0x1E696AD98] numberWithBool:*(a1 + 56)];
    v56[0] = v26;
    v55[1] = @"sync";
    v27 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(*(a1 + 32), "sync")}];
    v56[1] = v27;
    v55[2] = @"lockassertion";
    v28 = [MEMORY[0x1E696AD98] numberWithBool:v5 != 0];
    v55[3] = @"service";
    v29 = *(a1 + 40);
    v56[2] = v28;
    v56[3] = v29;
    v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v56 forKeys:v55 count:4];

    v44 = 0u;
    v45 = 0u;
    v42 = 0u;
    v43 = 0u;
    v30 = v13;
    v31 = [v30 countByEnumeratingWithState:&v42 objects:v54 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v43;
      do
      {
        for (k = 0; k != v32; ++k)
        {
          if (*v43 != v33)
          {
            objc_enumerationMutation(v30);
          }

          [v14 logUnrecoverableError:v3 forEvent:*(*(&v42 + 1) + 8 * k) withAttributes:v21];
        }

        v32 = [v30 countByEnumeratingWithState:&v42 objects:v54 count:16];
      }

      while (v32);
    }
  }

  if (*(a1 + 56) == 1)
  {
    v35 = MEMORY[0x1E696AEC0];
    v36 = [*(a1 + 40) objectAtIndexedSubscript:0];
    v37 = [v35 stringWithFormat:@"com.apple.protectedcloudstorage.roll.%@", v36];
    notify_post([v37 UTF8String]);
  }

  v38 = *(a1 + 48);
  v39 = [*(a1 + 32) serviceContexts];
  v40 = [*(a1 + 32) mtt];
  (*(v38 + 16))(v38, v39, v40, v3);

  v41 = *MEMORY[0x1E69E9840];
}

- (void)createIdentity:(id)identity complete:(id)complete
{
  identityCopy = identity;
  completeCopy = complete;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __35__PCSCKKS_createIdentity_complete___block_invoke;
  v10[3] = &unk_1E7B1A0F0;
  v11 = identityCopy;
  selfCopy = self;
  v13 = completeCopy;
  v8 = completeCopy;
  v9 = identityCopy;
  [(PCSCKKS *)self submitRequest:v9 complete:v10];
}

void __35__PCSCKKS_createIdentity_complete___block_invoke(uint64_t a1, void *a2)
{
  v12 = a2;
  v3 = [*(a1 + 32) serviceContexts];
  v4 = [v3 count];

  if (v4 == 1)
  {
    v5 = [*(a1 + 32) serviceContexts];
    v6 = [v5 allValues];
    v7 = [v6 objectAtIndexedSubscript:0];

    v8 = [v7 retryLeftCount];
    if (v12 && v8 >= 1 && [*(a1 + 40) shouldRetryWithSync:?])
    {
      [v7 setRetryLeftCount:{objc_msgSend(v7, "retryLeftCount", v12) - 1}];
      [v7 resetIdentity];
      [*(a1 + 32) setSync:1];
      v9 = [*(a1 + 32) transaction];
      os_transaction_needs_more_time();

      if (PCSTestsEnabled())
      {
        v10 = [*(a1 + 40) blockAfterCreate];

        if (v10)
        {
          v11 = [*(a1 + 40) blockAfterCreate];
          v11[2]();
        }
      }

      [*(a1 + 40) createIdentity:*(a1 + 32) complete:*(a1 + 48)];
    }

    else
    {
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    (*(*(a1 + 48) + 16))();
  }
}

- (id)stripOperationErrorIfPCSError:(id)error
{
  errorCopy = error;
  if ([errorCopy code] != 1)
  {
    goto LABEL_4;
  }

  domain = [errorCopy domain];
  v5 = [domain isEqualToString:PCSCKKSOperationErrorDomain];

  if (!v5 || ([errorCopy userInfo], v6 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v6, "objectForKeyedSubscript:", *MEMORY[0x1E696AA08]), v7 = objc_claimAutoreleasedReturnValue(), v6, !v7))
  {
LABEL_4:
    v7 = errorCopy;
  }

  return v7;
}

@end