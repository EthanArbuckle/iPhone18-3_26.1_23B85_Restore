@interface PBFPosterRoleProcessor
- (BOOL)_executeChange:(id)change roleCoordinator:(id)coordinator changeHandler:(id)handler recursiveDepth:(unint64_t)depth transaction:(id)transaction error:(id *)error;
- (BOOL)_executeTransaction:(id)transaction block:(id)block error:(id *)error;
- (BOOL)_processEvent:(id)event changeHandler:(id)handler recursiveDepth:(unint64_t)depth transaction:(id)transaction error:(id *)error;
- (PBFPosterRoleProcessor)initWithDataStorage:(id)storage roleCoordinators:(id)coordinators;
- (id)processChanges:(id)changes context:(id)context reason:(id)reason userInfo:(id)info error:(id *)error;
- (id)processEvents:(id)events context:(id)context reason:(id)reason userInfo:(id)info error:(id *)error;
- (void)_fireDidBeginTransaction:(id)transaction;
- (void)_fireDidCommitTransaction:(id)transaction;
- (void)_fireDidEvaluateEvent:(id)event transaction:(id)transaction;
- (void)_fireDidExecuteChange:(id)change transaction:(id)transaction;
- (void)_fireDidFinalizeTransaction:(id)transaction;
- (void)_fireTransactionFinished:(id)finished result:(id)result error:(id)error;
- (void)_fireWasInvalidated:(id)invalidated;
- (void)_fireWillBeginTransaction:(id)transaction;
- (void)_fireWillCommitTransaction:(id)transaction;
- (void)_fireWillEvaluateEvent:(id)event transaction:(id)transaction;
- (void)_fireWillExecuteChange:(id)change transaction:(id)transaction;
- (void)_fireWillFinalizeTransaction:(id)transaction;
- (void)_resetRoleCoordinatorTransaction;
- (void)addObserver:(id)observer;
- (void)invalidate;
- (void)noteTransactionWasInvalidated:(id)invalidated;
- (void)removeObserver:(id)observer;
@end

@implementation PBFPosterRoleProcessor

- (PBFPosterRoleProcessor)initWithDataStorage:(id)storage roleCoordinators:(id)coordinators
{
  storageCopy = storage;
  coordinatorsCopy = coordinators;
  v10 = storageCopy;
  if (!v10)
  {
    [PBFPosterRoleProcessor initWithDataStorage:a2 roleCoordinators:?];
  }

  v11 = v10;
  if (([v10 conformsToProtocol:&unk_282D473E8] & 1) == 0)
  {
    [PBFPosterRoleProcessor initWithDataStorage:a2 roleCoordinators:?];
  }

  v12 = coordinatorsCopy;
  NSClassFromString(&cfstr_Nsarray.isa);
  if (!v12)
  {
    [PBFPosterRoleProcessor initWithDataStorage:a2 roleCoordinators:?];
  }

  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    [PBFPosterRoleProcessor initWithDataStorage:a2 roleCoordinators:?];
  }

  if (![v12 count])
  {
    [PBFPosterRoleProcessor initWithDataStorage:a2 roleCoordinators:?];
  }

  v13 = objc_opt_new();
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __63__PBFPosterRoleProcessor_initWithDataStorage_roleCoordinators___block_invoke;
  v31[3] = &unk_2782C96F8;
  v14 = v13;
  v32 = v14;
  [v12 enumerateObjectsUsingBlock:v31];
  v30.receiver = self;
  v30.super_class = PBFPosterRoleProcessor;
  v15 = [(PBFPosterRoleProcessor *)&v30 init];
  if (v15)
  {
    v16 = [v12 sortedArrayUsingComparator:&__block_literal_global_37];
    roleCoordinators = v15->_roleCoordinators;
    v15->_roleCoordinators = v16;

    v18 = MEMORY[0x277CBEB70];
    v19 = [v12 bs_mapNoNulls:&__block_literal_global_99];
    v20 = [v18 orderedSetWithArray:v19];
    roleOrderedSet = v15->_roleOrderedSet;
    v15->_roleOrderedSet = v20;

    weakObjectsHashTable = [MEMORY[0x277CCAA50] weakObjectsHashTable];
    observers = v15->_observers;
    v15->_observers = weakObjectsHashTable;

    v24 = [v14 copy];
    roleToRoleCoordinator = v15->_roleToRoleCoordinator;
    v15->_roleToRoleCoordinator = v24;

    objc_storeStrong(&v15->_dataStorage, storage);
    v26 = [objc_alloc(MEMORY[0x277CF0B78]) initWithFlag:0];
    invalidationFlag = v15->_invalidationFlag;
    v15->_invalidationFlag = v26;

    v28 = PBFLogDataStore();
    [(PBFPosterRoleProcessor *)v15 setLog:v28];
  }

  return v15;
}

void __63__PBFPosterRoleProcessor_initWithDataStorage_roleCoordinators___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v3 role];
  [v2 setObject:v3 forKey:v4];
}

uint64_t __63__PBFPosterRoleProcessor_initWithDataStorage_roleCoordinators___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 role];
  v6 = [v4 role];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)addObserver:(id)observer
{
  observerCopy = observer;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    v4 = self->_observers;
    objc_sync_enter(v4);
    [(NSHashTable *)self->_observers addObject:observerCopy];
    objc_sync_exit(v4);
  }
}

- (void)removeObserver:(id)observer
{
  observerCopy = observer;
  if (([(BSAtomicFlag *)self->_invalidationFlag getFlag]& 1) == 0)
  {
    v4 = self->_observers;
    objc_sync_enter(v4);
    [(NSHashTable *)self->_observers removeObject:observerCopy];
    objc_sync_exit(v4);
  }
}

- (id)processChanges:(id)changes context:(id)context reason:(id)reason userInfo:(id)info error:(id *)error
{
  v93 = *MEMORY[0x277D85DE8];
  changesCopy = changes;
  contextCopy = context;
  reasonCopy = reason;
  infoCopy = info;
  v14 = contextCopy;
  if (!v14)
  {
    [PBFPosterRoleProcessor processChanges:a2 context:? reason:? userInfo:? error:?];
  }

  v15 = v14;
  if (([v14 conformsToProtocol:&unk_282D46DD0] & 1) == 0)
  {
    [PBFPosterRoleProcessor processChanges:a2 context:? reason:? userInfo:? error:?];
  }

  v66 = v15;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = results = 0;
    }

    else
    {
      results = 0;
    }
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    obj = selfCopy;
    if (selfCopy->_activeTransaction)
    {
      v48 = [MEMORY[0x277CCACA8] stringWithFormat:@"Active transaction is ongoing.  Role processing is not concurrent."];
      v49 = MEMORY[0x277D86220];
      v50 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v49, OS_LOG_TYPE_ERROR))
      {
        v51 = NSStringFromSelector(a2);
        v52 = objc_opt_class();
        v53 = NSStringFromClass(v52);
        *buf = 138544642;
        *&buf[4] = v51;
        *&buf[12] = 2114;
        *&buf[14] = v53;
        *&buf[22] = 2048;
        v89 = selfCopy;
        LOWORD(v90) = 2114;
        *(&v90 + 2) = @"PBFPosterRoleProcessor.m";
        WORD5(v90) = 1024;
        HIDWORD(v90) = 125;
        v91 = 2114;
        v92 = v48;
        _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v54 = v48;
      [v48 UTF8String];
      v55 = _bs_set_crash_log_message();
      [PBFPosterRoleProcessor processChanges:v55 context:? reason:? userInfo:? error:?];
    }

    errorCopy = error;
    allObjects = [(NSHashTable *)selfCopy->_observers allObjects];
    v19 = [_PBFPosterRoleProcessorTransaction transactionWithReason:reasonCopy context:v15 userInfo:infoCopy observers:allObjects processor:selfCopy];

    objc_storeStrong(&selfCopy->_activeTransaction, v19);
    v20 = v19;
    objc_sync_exit(obj);

    v21 = [(PBFPosterRoleProcessor *)obj log];
    pbf_transitionContextIdentifier = [v15 pbf_transitionContextIdentifier];
    uUIDString = [pbf_transitionContextIdentifier UUIDString];
    v67 = [uUIDString substringToIndex:7];

    v60 = obj->_roleToRoleCoordinator;
    v24 = os_signpost_id_generate(v21);
    v25 = v21;
    v26 = v25;
    v59 = v24 - 1;
    if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v24, "processRoleCoordinatorChanges:context:reason:userInfo:error:", "", buf, 2u);
    }

    spid = v24;

    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v58 = _os_activity_create(&dword_21B526000, "processRoleCoordinatorChange", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v58, &state);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v67;
      *&buf[12] = 2114;
      *&buf[14] = v15;
      _os_log_impl(&dword_21B526000, v26, OS_LOG_TYPE_DEFAULT, "(%{public}@} Preparing to process data store update w/ context: %{public}@", buf, 0x16u);
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v67;
      _os_log_impl(&dword_21B526000, v26, OS_LOG_TYPE_DEFAULT, "(%{public}@} Changes:", buf, 0xCu);
    }

    v80 = 0u;
    v81 = 0u;
    v78 = 0u;
    v79 = 0u;
    v27 = changesCopy;
    v28 = [v27 countByEnumeratingWithState:&v78 objects:v87 count:16];
    if (v28)
    {
      v29 = 0;
      v30 = *v79;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v79 != v30)
          {
            objc_enumerationMutation(v27);
          }

          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(*(&v78 + 1) + 8 * i);
            *buf = 138543874;
            *&buf[4] = v67;
            *&buf[12] = 2048;
            *&buf[14] = v29;
            *&buf[22] = 2114;
            v89 = v32;
            _os_log_impl(&dword_21B526000, v26, OS_LOG_TYPE_DEFAULT, "(%{public}@}\tChange %lu: %{public}@", buf, 0x20u);
            ++v29;
          }
        }

        v28 = [v27 countByEnumeratingWithState:&v78 objects:v87 count:{16, spid, v58}];
      }

      while (v28);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v89 = __Block_byref_object_copy__11;
    *&v90 = __Block_byref_object_dispose__11;
    *(&v90 + 1) = 0;
    v33 = [PBFPosterRoleCoordinatorChange distillArrayOfChangesIntoChangesOrderedByPosterRoleEntropy:v27];
    v69[0] = MEMORY[0x277D85DD0];
    v69[1] = 3221225472;
    v69[2] = __71__PBFPosterRoleProcessor_processChanges_context_reason_userInfo_error___block_invoke;
    v69[3] = &unk_2782C9760;
    v34 = v26;
    v70 = v34;
    v35 = v67;
    v71 = v35;
    v36 = v33;
    v72 = v36;
    v73 = v27;
    v37 = v60;
    v77 = buf;
    v74 = v37;
    v75 = obj;
    v38 = v20;
    v76 = v38;
    v68 = 0;
    v39 = [(PBFPosterRoleProcessor *)obj _executeTransaction:v38 block:v69 error:&v68];
    v40 = v68;
    v41 = obj;
    objc_sync_enter(v41);
    activeTransaction = obj->_activeTransaction;
    obj->_activeTransaction = 0;

    objc_sync_exit(v41);
    os_activity_scope_leave(&state);
    v43 = v34;
    v44 = v43;
    if (v59 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v43))
    {
      *v83 = 0;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v44, OS_SIGNPOST_INTERVAL_END, spid, "processRoleCoordinatorChanges:context:reason:userInfo:error:", "", v83, 2u);
    }

    if (v40)
    {
      v45 = 0;
    }

    else
    {
      v45 = v39;
    }

    if (v45 && !*(*&buf[8] + 40))
    {
      results = [v38 results];
    }

    else
    {
      if (errorCopy)
      {
        if (*(*&buf[8] + 40))
        {
          v46 = *(*&buf[8] + 40);
        }

        else
        {
          v46 = v40;
        }

        *errorCopy = v46;
      }

      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v56 = *(*&buf[8] + 40);
        if (!v56)
        {
          v56 = v40;
        }

        *v83 = 138543618;
        v84 = v35;
        v85 = 2114;
        v86 = v56;
        _os_log_error_impl(&dword_21B526000, v44, OS_LOG_TYPE_ERROR, "(%{public}@} Failed to commit changes: %{public}@", v83, 0x16u);
      }

      results = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  return results;
}

uint64_t __71__PBFPosterRoleProcessor_processChanges_context_reason_userInfo_error___block_invoke(uint64_t a1, void *a2)
{
  v76 = *MEMORY[0x277D85DE8];
  v54 = a2;
  v3 = *(a1 + 32);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    *buf = 138543362;
    v65 = v4;
    _os_log_impl(&dword_21B526000, v3, OS_LOG_TYPE_DEFAULT, "(%{public}@} Executing changes", buf, 0xCu);
  }

  v62 = 0u;
  v63 = 0u;
  v60 = 0u;
  v61 = 0u;
  obj = *(a1 + 48);
  v48 = [obj countByEnumeratingWithState:&v60 objects:v75 count:16];
  if (v48)
  {
    v47 = *v61;
    v51 = *MEMORY[0x277CCA470];
    *&v5 = 138543874;
    v45 = v5;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v61 != v47)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v60 + 1) + 8 * v6);
        v8 = [*(a1 + 56) firstObject];
        v9 = [v8 role];

        v10 = [*(a1 + 64) objectForKeyedSubscript:v9];
        if (!v10)
        {
          v33 = MEMORY[0x277CCA9B8];
          v73[0] = v51;
          v73[1] = @"role";
          if (v9)
          {
            v34 = v9;
          }

          else
          {
            v34 = @"(unknown role)";
          }

          v74[0] = @"Role coordinator not found.";
          v74[1] = v34;
          v35 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
          v36 = [v33 pbf_generalErrorWithCode:1 userInfo:v35];
          v37 = *(*(a1 + 88) + 8);
          v38 = *(v37 + 40);
          *(v37 + 40) = v36;

          goto LABEL_40;
        }

        v11 = v10;
        v49 = v6;
        v50 = v9;
        v58 = 0u;
        v59 = 0u;
        v56 = 0u;
        v57 = 0u;
        v12 = v7;
        v13 = [v12 countByEnumeratingWithState:&v56 objects:v72 count:16];
        if (v13)
        {
          v14 = v13;
          v15 = *v57;
          while (2)
          {
            for (i = 0; i != v14; ++i)
            {
              if (*v57 != v15)
              {
                objc_enumerationMutation(v12);
              }

              v17 = *(*(&v56 + 1) + 8 * i);
              v18 = *(a1 + 32);
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                v19 = *(a1 + 40);
                *buf = 138543618;
                v65 = v19;
                v66 = 2114;
                v67 = v17;
                _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_DEFAULT, "(%{public}@}\t Begin %{public}@", buf, 0x16u);
              }

              v20 = *(a1 + 72);
              v21 = *(a1 + 80);
              v55 = 0;
              v22 = [v20 _executeChange:v17 roleCoordinator:v11 changeHandler:v54 recursiveDepth:0 transaction:v21 error:&v55];
              v23 = v55;
              v24 = v23;
              if ((v22 & 1) == 0)
              {
                v25 = v23;
                if (!v23)
                {
                  v26 = MEMORY[0x277CCA9B8];
                  v70 = v51;
                  v71 = @"Change failed to apply and did not return an error.";
                  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v71 forKeys:&v70 count:1];
                  v52 = [v26 pbf_generalErrorWithCode:0 userInfo:?];
                  v25 = v52;
                }

                objc_storeStrong((*(*(a1 + 88) + 8) + 40), v25);
                if (!v24)
                {
                }
              }

              v27 = *(a1 + 32);
              if (*(*(*(a1 + 88) + 8) + 40))
              {
                if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                {
                  v30 = *(a1 + 40);
                  v31 = *(*(*(a1 + 88) + 8) + 40);
                  *buf = v45;
                  v65 = v30;
                  v66 = 2114;
                  v67 = v17;
                  v68 = 2114;
                  v69 = v31;
                  _os_log_error_impl(&dword_21B526000, v27, OS_LOG_TYPE_ERROR, "(%{public}@}\tChange %{public}@ failed to apply w/ error: %{public}@", buf, 0x20u);
                }

                goto LABEL_30;
              }

              if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
              {
                v28 = *(a1 + 40);
                *buf = 138543618;
                v65 = v28;
                v66 = 2114;
                v67 = v17;
                _os_log_impl(&dword_21B526000, v27, OS_LOG_TYPE_DEFAULT, "(%{public}@}\tChange %{public}@ applied successful", buf, 0x16u);
              }
            }

            v14 = [v12 countByEnumeratingWithState:&v56 objects:v72 count:16];
            if (v14)
            {
              continue;
            }

            break;
          }
        }

LABEL_30:

        v29 = *(*(*(a1 + 88) + 8) + 40);
        if (v29)
        {
          goto LABEL_33;
        }

        v6 = v49 + 1;
      }

      while (v49 + 1 != v48);
      v48 = [obj countByEnumeratingWithState:&v60 objects:v75 count:16];
      if (v48)
      {
        continue;
      }

      break;
    }
  }

LABEL_33:

  v32 = *(a1 + 32);
  if (*(*(*(a1 + 88) + 8) + 40))
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
    {
      __71__PBFPosterRoleProcessor_processChanges_context_reason_userInfo_error___block_invoke_cold_1();
    }

LABEL_40:
    v39 = 0;
  }

  else
  {
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v40 = *(a1 + 40);
      v41 = *(a1 + 56);
      v42 = v32;
      v43 = [v41 count];
      *buf = 138543618;
      v65 = v40;
      v66 = 2048;
      v67 = v43;
      _os_log_impl(&dword_21B526000, v42, OS_LOG_TYPE_DEFAULT, "(%{public}@} Executed %lu changes", buf, 0x16u);
    }

    v39 = 1;
  }

  return v39;
}

- (id)processEvents:(id)events context:(id)context reason:(id)reason userInfo:(id)info error:(id *)error
{
  v88 = *MEMORY[0x277D85DE8];
  eventsCopy = events;
  contextCopy = context;
  reasonCopy = reason;
  infoCopy = info;
  v15 = contextCopy;
  if (!v15)
  {
    [PBFPosterRoleProcessor processEvents:a2 context:? reason:? userInfo:? error:?];
  }

  v16 = v15;
  if (([v15 conformsToProtocol:&unk_282D46DD0] & 1) == 0)
  {
    [PBFPosterRoleProcessor processEvents:a2 context:? reason:? userInfo:? error:?];
  }

  v60 = reasonCopy;
  v63 = v16;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    if (error)
    {
      [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
      *error = results = 0;
    }

    else
    {
      results = 0;
    }
  }

  else
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    obj = selfCopy;
    if (selfCopy->_activeTransaction)
    {
      v45 = [MEMORY[0x277CCACA8] stringWithFormat:@"Active transaction is ongoing.  Role processing is not concurrent."];
      v46 = MEMORY[0x277D86220];
      v47 = MEMORY[0x277D86220];
      if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
      {
        v48 = NSStringFromSelector(a2);
        v49 = objc_opt_class();
        v50 = NSStringFromClass(v49);
        *buf = 138544642;
        *&buf[4] = v48;
        *&buf[12] = 2114;
        *&buf[14] = v50;
        *&buf[22] = 2048;
        v84 = selfCopy;
        LOWORD(v85) = 2114;
        *(&v85 + 2) = @"PBFPosterRoleProcessor.m";
        WORD5(v85) = 1024;
        HIDWORD(v85) = 225;
        v86 = 2114;
        v87 = v45;
        _os_log_error_impl(&dword_21B526000, MEMORY[0x277D86220], OS_LOG_TYPE_ERROR, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", buf, 0x3Au);
      }

      v51 = v45;
      [v45 UTF8String];
      v52 = _bs_set_crash_log_message();
      [PBFPosterRoleProcessor processChanges:v52 context:? reason:? userInfo:? error:?];
    }

    errorCopy = error;
    allObjects = [(NSHashTable *)selfCopy->_observers allObjects];
    v20 = [_PBFPosterRoleProcessorTransaction transactionWithReason:reasonCopy context:v16 userInfo:infoCopy observers:allObjects processor:selfCopy];

    v57 = v20;
    objc_storeStrong(&selfCopy->_activeTransaction, v20);
    objc_sync_exit(selfCopy);

    v21 = [(PBFPosterRoleProcessor *)selfCopy log];
    pbf_transitionContextIdentifier = [v16 pbf_transitionContextIdentifier];
    uUIDString = [pbf_transitionContextIdentifier UUIDString];
    v64 = [uUIDString substringToIndex:7];

    v24 = os_signpost_id_generate(v21);
    v25 = v21;
    v26 = v25;
    v56 = v24 - 1;
    if (v24 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v25))
    {
      *buf = 0;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v26, OS_SIGNPOST_INTERVAL_BEGIN, v24, "processEvents:context:reason:userInfo:error:", "", buf, 2u);
    }

    spid = v24;

    state.opaque[0] = 0;
    state.opaque[1] = 0;
    v55 = _os_activity_create(&dword_21B526000, "processEvents", MEMORY[0x277D86218], OS_ACTIVITY_FLAG_DEFAULT);
    os_activity_scope_enter(v55, &state);
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543618;
      *&buf[4] = v64;
      *&buf[12] = 2114;
      *&buf[14] = v16;
      _os_log_impl(&dword_21B526000, v26, OS_LOG_TYPE_DEFAULT, "(%{public}@} Preparing to process data store events w/ context: %{public}@", buf, 0x16u);
    }

    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      *&buf[4] = v64;
      _os_log_impl(&dword_21B526000, v26, OS_LOG_TYPE_DEFAULT, "(%{public}@} Events:", buf, 0xCu);
    }

    v76 = 0u;
    v74 = 0u;
    v75 = 0u;
    v73 = 0u;
    v27 = eventsCopy;
    v28 = [v27 countByEnumeratingWithState:&v73 objects:v82 count:16];
    if (v28)
    {
      v29 = 0;
      v30 = *v74;
      do
      {
        for (i = 0; i != v28; ++i)
        {
          if (*v74 != v30)
          {
            objc_enumerationMutation(v27);
          }

          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v32 = *(*(&v73 + 1) + 8 * i);
            *buf = 138543874;
            *&buf[4] = v64;
            *&buf[12] = 2048;
            *&buf[14] = v29;
            *&buf[22] = 2114;
            v84 = v32;
            _os_log_impl(&dword_21B526000, v26, OS_LOG_TYPE_DEFAULT, "(%{public}@}\tEvent %lu: %{public}@", buf, 0x20u);
            ++v29;
          }
        }

        v28 = [v27 countByEnumeratingWithState:&v73 objects:v82 count:{16, spid, v55}];
      }

      while (v28);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v84 = __Block_byref_object_copy__11;
    *&v85 = __Block_byref_object_dispose__11;
    *(&v85 + 1) = 0;
    v66[0] = MEMORY[0x277D85DD0];
    v66[1] = 3221225472;
    v66[2] = __70__PBFPosterRoleProcessor_processEvents_context_reason_userInfo_error___block_invoke;
    v66[3] = &unk_2782C9788;
    v33 = v26;
    v67 = v33;
    v34 = v64;
    v68 = v34;
    v69 = v27;
    v70 = selfCopy;
    v35 = v57;
    v71 = v35;
    v72 = buf;
    v65 = 0;
    v36 = [(PBFPosterRoleProcessor *)selfCopy _executeTransaction:v35 block:v66 error:&v65];
    v37 = v65;
    v38 = obj;
    objc_sync_enter(v38);
    activeTransaction = obj->_activeTransaction;
    obj->_activeTransaction = 0;

    objc_sync_exit(v38);
    os_activity_scope_leave(&state);
    v40 = v33;
    v41 = v40;
    if (v56 < 0xFFFFFFFFFFFFFFFELL && os_signpost_enabled(v40))
    {
      *v78 = 0;
      _os_signpost_emit_with_name_impl(&dword_21B526000, v41, OS_SIGNPOST_INTERVAL_END, spid, "processRoleCoordinatorChanges:context:reason:userInfo:error:", "", v78, 2u);
    }

    if (v37)
    {
      v42 = 0;
    }

    else
    {
      v42 = v36;
    }

    if (v42 && !*(*&buf[8] + 40))
    {
      results = [v35 results];
    }

    else
    {
      if (errorCopy)
      {
        if (*(*&buf[8] + 40))
        {
          v43 = *(*&buf[8] + 40);
        }

        else
        {
          v43 = v37;
        }

        *errorCopy = v43;
      }

      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        v53 = *(*&buf[8] + 40);
        if (!v53)
        {
          v53 = v37;
        }

        *v78 = 138543618;
        v79 = v34;
        v80 = 2114;
        v81 = v53;
        _os_log_error_impl(&dword_21B526000, v41, OS_LOG_TYPE_ERROR, "(%{public}@} Failed to commit changes: %{public}@", v78, 0x16u);
      }

      results = 0;
    }

    _Block_object_dispose(buf, 8);
  }

  return results;
}

BOOL __70__PBFPosterRoleProcessor_processEvents_context_reason_userInfo_error___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    *buf = 138543362;
    v43 = v5;
    _os_log_impl(&dword_21B526000, v4, OS_LOG_TYPE_DEFAULT, "(%{public}@} Executing events", buf, 0xCu);
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v6 = *(a1 + 48);
  v7 = [v6 countByEnumeratingWithState:&v38 objects:v50 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v39;
    v36 = *MEMORY[0x277CCA470];
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v39 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v38 + 1) + 8 * i);
        v12 = *(a1 + 32);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 40);
          *buf = 138543618;
          v43 = v13;
          v44 = 2114;
          v45 = v11;
          _os_log_impl(&dword_21B526000, v12, OS_LOG_TYPE_DEFAULT, "(%{public}@}\t Begin %{public}@", buf, 0x16u);
        }

        v14 = *(a1 + 56);
        v15 = *(a1 + 64);
        v16 = *(*(a1 + 72) + 8);
        obj = 0;
        v17 = [v14 _processEvent:v11 changeHandler:v3 recursiveDepth:0 transaction:v15 error:&obj];
        objc_storeStrong((v16 + 40), obj);
        v18 = *(a1 + 72);
        if ((v17 & 1) == 0 && !*(*(v18 + 8) + 40))
        {
          v19 = MEMORY[0x277CCA9B8];
          v48 = v36;
          v49 = @"Event failed to be fired and did not return an error.";
          v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v49 forKeys:&v48 count:1];
          v21 = [v19 pbf_generalErrorWithCode:0 userInfo:v20];
          v22 = *(*(a1 + 72) + 8);
          v23 = *(v22 + 40);
          *(v22 + 40) = v21;

          v18 = *(a1 + 72);
        }

        v24 = *(a1 + 32);
        if (*(*(v18 + 8) + 40))
        {
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v34 = *(a1 + 40);
            v35 = *(*(*(a1 + 72) + 8) + 40);
            *buf = 138543874;
            v43 = v34;
            v44 = 2114;
            v45 = v11;
            v46 = 2114;
            v47 = v35;
            _os_log_error_impl(&dword_21B526000, v24, OS_LOG_TYPE_ERROR, "(%{public}@}\tEvent %{public}@ failed to be processed w/ error: %{public}@", buf, 0x20u);
          }

          goto LABEL_21;
        }

        if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
        {
          v25 = *(a1 + 40);
          *buf = 138543618;
          v43 = v25;
          v44 = 2114;
          v45 = v11;
          _os_log_impl(&dword_21B526000, v24, OS_LOG_TYPE_DEFAULT, "(%{public}@}\tEvent %{public}@ processed successful", buf, 0x16u);
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v38 objects:v50 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_21:

  v26 = *(*(*(a1 + 72) + 8) + 40);
  v27 = *(a1 + 32);
  if (v26)
  {
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      __70__PBFPosterRoleProcessor_processEvents_context_reason_userInfo_error___block_invoke_cold_1();
    }
  }

  else if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = *(a1 + 40);
    v29 = *(a1 + 64);
    v30 = v27;
    v31 = [v29 emittedEvents];
    v32 = [v31 count];
    *buf = 138543618;
    v43 = v28;
    v44 = 2048;
    v45 = v32;
    _os_log_impl(&dword_21B526000, v30, OS_LOG_TYPE_DEFAULT, "(%{public}@} Executed %lu events", buf, 0x16u);
  }

  return v26 == 0;
}

- (void)noteTransactionWasInvalidated:(id)invalidated
{
  v12 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  if (invalidatedCopy)
  {
    selfCopy = self;
    objc_sync_enter(selfCopy);
    if (selfCopy->_activeTransaction == invalidatedCopy)
    {
      v6 = [(PBFPosterRoleProcessor *)selfCopy log];
      shortIdentifier = [(_PBFPosterRoleProcessorTransaction *)invalidatedCopy shortIdentifier];
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v8 = 138543618;
        v9 = shortIdentifier;
        v10 = 2114;
        v11 = invalidatedCopy;
        _os_log_impl(&dword_21B526000, v6, OS_LOG_TYPE_DEFAULT, "(%{public}@} Transaction Invalidated %{public}@", &v8, 0x16u);
      }
    }

    objc_sync_exit(selfCopy);
  }
}

- (BOOL)_executeTransaction:(id)transaction block:(id)block error:(id *)error
{
  v101 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  blockCopy = block;
  v49 = transactionCopy;
  shortIdentifier = [transactionCopy shortIdentifier];
  context = [transactionCopy context];
  v7 = [(PBFPosterRoleProcessor *)self log];
  v57 = self->_roleToRoleCoordinator;
  BSAbsoluteMachTimeNow();
  v9 = v8;
  v10 = PBFLogDataStore();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = shortIdentifier;
    _os_log_impl(&dword_21B526000, v10, OS_LOG_TYPE_DEFAULT, "(%{public}@} Starting transaction", buf, 0xCu);
  }

  v88 = 0u;
  v89 = 0u;
  v86 = 0u;
  v87 = 0u;
  v11 = self->_roleOrderedSet;
  v12 = [(NSOrderedSet *)v11 countByEnumeratingWithState:&v86 objects:v100 count:16];
  if (v12)
  {
    v13 = *v87;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v87 != v13)
        {
          objc_enumerationMutation(v11);
        }

        v15 = [(NSDictionary *)v57 objectForKeyedSubscript:*(*(&v86 + 1) + 8 * i)];
        [v15 incrementTransactionCount];
      }

      v12 = [(NSOrderedSet *)v11 countByEnumeratingWithState:&v86 objects:v100 count:16];
    }

    while (v12);
  }

  [(PBFPosterRoleProcessor *)self _fireWillBeginTransaction:v49];
  v54 = objc_opt_new();
  v55 = objc_opt_new();
  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v16 = self->_roleOrderedSet;
  v17 = [(NSOrderedSet *)v16 countByEnumeratingWithState:&v82 objects:v99 count:16];
  if (v17)
  {
    v18 = *v83;
    do
    {
      for (j = 0; j != v17; ++j)
      {
        if (*v83 != v18)
        {
          objc_enumerationMutation(v16);
        }

        v20 = *(*(&v82 + 1) + 8 * j);
        v21 = [(NSDictionary *)v57 objectForKeyedSubscript:v20];
        v22 = [context pbf_currentActivePosterForRole:v20];
        [v55 setObject:v22 forKeyedSubscript:v20];
        posterCollection = [v21 posterCollection];
        if (posterCollection)
        {
          [v54 setObject:posterCollection forKeyedSubscript:v20];
        }

        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543874;
          *&buf[4] = shortIdentifier;
          *&buf[12] = 2114;
          *&buf[14] = v20;
          *&buf[22] = 2114;
          v96 = posterCollection;
          _os_log_impl(&dword_21B526000, v7, OS_LOG_TYPE_DEFAULT, "(%{public}@} Stashing collection for role %{public}@: %{public}@", buf, 0x20u);
        }
      }

      v17 = [(NSOrderedSet *)v16 countByEnumeratingWithState:&v82 objects:v99 count:16];
    }

    while (v17);
  }

  pbf_extensionStoreCoordinatorForProvider = [context pbf_extensionStoreCoordinatorForProvider];
  objectEnumerator = [pbf_extensionStoreCoordinatorForProvider objectEnumerator];
  allObjects = [objectEnumerator allObjects];

  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = __58__PBFPosterRoleProcessor__executeTransaction_block_error___block_invoke;
  aBlock[3] = &unk_2782C6428;
  v27 = allObjects;
  v79 = v27;
  v28 = v7;
  v80 = v28;
  v29 = shortIdentifier;
  v81 = v29;
  v46 = _Block_copy(aBlock);
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x3032000000;
  v96 = __Block_byref_object_copy__11;
  v97 = __Block_byref_object_dispose__11;
  v98 = 0;
  v47 = objc_opt_new();
  v51 = objc_opt_new();
  v53 = objc_opt_new();
  if (blockCopy)
  {
    dataStorage = self->_dataStorage;
    v63[0] = MEMORY[0x277D85DD0];
    v63[1] = 3221225472;
    v63[2] = __58__PBFPosterRoleProcessor__executeTransaction_block_error___block_invoke_149;
    v63[3] = &unk_2782C97B0;
    v63[4] = self;
    v64 = v49;
    v65 = v28;
    v66 = v29;
    v75 = blockCopy;
    v76 = v46;
    v77 = buf;
    v67 = v57;
    v68 = v27;
    v69 = v53;
    v70 = v54;
    v71 = v51;
    v72 = v55;
    v73 = context;
    v74 = v47;
    v62 = 0;
    v31 = [(PBFPosterExtensionDataStorage *)dataStorage performChanges:v63 error:&v62];
    v32 = v62;
  }

  else
  {
    [(PBFPosterRoleProcessor *)self _fireDidBeginTransaction:v49];
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
    {
      *v90 = 138543362;
      v91 = v29;
      _os_log_impl(&dword_21B526000, v28, OS_LOG_TYPE_DEFAULT, "(%{public}@} completed null transaction", v90, 0xCu);
    }

    [(PBFPosterRoleProcessor *)self _fireWillCommitTransaction:v49];
    v32 = 0;
    v31 = 1;
  }

  v60 = 0u;
  v61 = 0u;
  v58 = 0u;
  v59 = 0u;
  v33 = self->_roleOrderedSet;
  v34 = [(NSOrderedSet *)v33 countByEnumeratingWithState:&v58 objects:v94 count:16];
  if (v34)
  {
    v35 = *v59;
    do
    {
      for (k = 0; k != v34; ++k)
      {
        if (*v59 != v35)
        {
          objc_enumerationMutation(v33);
        }

        v37 = [(NSDictionary *)v57 objectForKeyedSubscript:*(*(&v58 + 1) + 8 * k)];
        [v37 decrementTransactionCount];
      }

      v34 = [(NSOrderedSet *)v33 countByEnumeratingWithState:&v58 objects:v94 count:16];
    }

    while (v34);
  }

  v38 = *(*&buf[8] + 40);
  if (v31 && !(v38 | v32))
  {
    [(PBFPosterRoleProcessor *)self _fireDidCommitTransaction:v49];
    v39 = objc_alloc_init(_PBFPosterRoleProcessorTransactionResult);
    [(_PBFPosterRoleProcessorTransactionResult *)v39 setAffectedRoles:v53];
    [(_PBFPosterRoleProcessorTransactionResult *)v39 setCollectionDiffsPerRole:v51];
    [(_PBFPosterRoleProcessorTransactionResult *)v39 setPreCommitActivePosterConfigurationForRole:v55];
    [(_PBFPosterRoleProcessorTransactionResult *)v39 setPostCommitActivePosterConfigurationForRole:v47];
    emittedEvents = [v49 emittedEvents];
    [(_PBFPosterRoleProcessorTransactionResult *)v39 setEmittedEvents:emittedEvents];

    [v49 setResults:v39];
    [(PBFPosterRoleProcessor *)self _fireTransactionFinished:v49 result:v39 error:0];
    BSAbsoluteMachTimeNow();
    v43 = v42;
    v44 = PBFLogDataStore();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      *v90 = 138543618;
      v91 = v29;
      v92 = 2048;
      v93 = v43 - v9;
      _os_log_impl(&dword_21B526000, v44, OS_LOG_TYPE_DEFAULT, "(%{public}@} Fin; finished transaction successfully in %f", v90, 0x16u);
    }

    v40 = 1;
  }

  else
  {
    if (!v38)
    {
      v38 = v32;
    }

    v39 = v38;
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      [PBFPosterRoleProcessor _executeTransaction:v29 block:v39 error:v28];
    }

    [(PBFPosterRoleProcessor *)self _fireTransactionFinished:v49 result:0 error:v39];
    v40 = 0;
  }

  _Block_object_dispose(buf, 8);
  return v40;
}

void __58__PBFPosterRoleProcessor__executeTransaction_block_error___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  obj = *(a1 + 32);
  v16 = [obj countByEnumeratingWithState:&v23 objects:v32 count:16];
  if (v16)
  {
    v15 = *v24;
    do
    {
      v2 = 0;
      do
      {
        if (*v24 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v23 + 1) + 8 * v2);
        v19 = 0u;
        v20 = 0u;
        v21 = 0u;
        v22 = 0u;
        v17 = v3;
        v18 = v2;
        v4 = [v3 configurationStoreCoordinatorsWithError:0];
        v5 = [v4 countByEnumeratingWithState:&v19 objects:v31 count:16];
        if (v5)
        {
          v6 = v5;
          v7 = *v20;
          do
          {
            for (i = 0; i != v6; ++i)
            {
              if (*v20 != v7)
              {
                objc_enumerationMutation(v4);
              }

              v9 = *(*(&v19 + 1) + 8 * i);
              v10 = *(a1 + 40);
              if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
              {
                v11 = *(a1 + 48);
                *buf = 138543618;
                v28 = v11;
                v29 = 2114;
                v30 = v9;
                _os_log_impl(&dword_21B526000, v10, OS_LOG_TYPE_DEFAULT, "(%{public}@} Aborting staged changes for %{public}@", buf, 0x16u);
              }

              [v9 abortStaged];
            }

            v6 = [v4 countByEnumeratingWithState:&v19 objects:v31 count:16];
          }

          while (v6);
        }

        v12 = *(a1 + 40);
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          v13 = *(a1 + 48);
          *buf = 138543618;
          v28 = v13;
          v29 = 2114;
          v30 = v17;
          _os_log_impl(&dword_21B526000, v12, OS_LOG_TYPE_DEFAULT, "(%{public}@} Aborting staged changes for %{public}@", buf, 0x16u);
        }

        [v17 abortStaged];
        v2 = v18 + 1;
      }

      while (v18 + 1 != v16);
      v16 = [obj countByEnumeratingWithState:&v23 objects:v32 count:16];
    }

    while (v16);
  }
}

uint64_t __58__PBFPosterRoleProcessor__executeTransaction_block_error___block_invoke_149(uint64_t a1, void *a2)
{
  v189[1] = *MEMORY[0x277D85DE8];
  v136 = a2;
  [*(a1 + 32) _fireDidBeginTransaction:*(a1 + 40)];
  v3 = *(a1 + 48);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 56);
    *buf = 138543362;
    v172 = v4;
    _os_log_impl(&dword_21B526000, v3, OS_LOG_TYPE_DEFAULT, "(%{public}@} Executing transaction", buf, 0xCu);
  }

  v5 = (*(*(a1 + 128) + 16))();
  v6 = [*(a1 + 40) isInvalidated];
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v10 = *(a1 + 48);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 56);
      *buf = 138543362;
      v172 = v11;
      _os_log_impl(&dword_21B526000, v10, OS_LOG_TYPE_DEFAULT, "(%{public}@} Finalizing Changes for transaction", buf, 0xCu);
    }

    [*(a1 + 32) _fireWillFinalizeTransaction:*(a1 + 40)];
    v169 = 0u;
    v170 = 0u;
    v167 = 0u;
    v168 = 0u;
    obj = [*(a1 + 64) objectEnumerator];
    v12 = [obj countByEnumeratingWithState:&v167 objects:v187 count:16];
    v137 = a1;
    if (v12)
    {
      v13 = v12;
      v14 = *v168;
      v133 = *v168;
LABEL_13:
      v15 = 0;
      while (1)
      {
        if (*v168 != v14)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v167 + 1) + 8 * v15);
        v166 = 0;
        v165 = 0;
        v17 = [v16 finalizeChangesWithChangeHandler:v136 outEvents:&v166 error:&v165];
        v18 = v166;
        v19 = v165;
        v20 = v19;
        if ((v17 & 1) == 0)
        {
          break;
        }

        v163 = 0u;
        v164 = 0u;
        v161 = 0u;
        v162 = 0u;
        v21 = v18;
        v22 = [v21 countByEnumeratingWithState:&v161 objects:v186 count:16];
        if (!v22)
        {
          goto LABEL_25;
        }

        v23 = v22;
        v24 = *v162;
        while (2)
        {
          v25 = 0;
          v26 = v20;
          do
          {
            if (*v162 != v24)
            {
              objc_enumerationMutation(v21);
            }

            v27 = *(*(&v161 + 1) + 8 * v25);
            v28 = *(v137 + 32);
            v29 = *(v137 + 40);
            v160 = 0;
            v30 = [v28 _processEvent:v27 changeHandler:v136 recursiveDepth:1 transaction:v29 error:&v160];
            v20 = v160;

            if ((v30 & 1) == 0)
            {
              v51 = *(*(v137 + 144) + 8);
              v52 = *(v51 + 40);
              *(v51 + 40) = v20;
              v53 = v20;

              goto LABEL_52;
            }

            ++v25;
            v26 = v20;
          }

          while (v23 != v25);
          v23 = [v21 countByEnumeratingWithState:&v161 objects:v186 count:16];
          if (v23)
          {
            continue;
          }

          break;
        }

LABEL_25:

        ++v15;
        a1 = v137;
        v14 = v133;
        if (v15 == v13)
        {
          v13 = [obj countByEnumeratingWithState:&v167 objects:v187 count:16];
          if (!v13)
          {
            goto LABEL_27;
          }

          goto LABEL_13;
        }
      }

      v122 = *(*(v137 + 144) + 8);
      v21 = *(v122 + 40);
      *(v122 + 40) = v19;
      v53 = v19;
LABEL_52:

LABEL_57:
      v9 = 0;
LABEL_128:

      goto LABEL_129;
    }

LABEL_27:

    [*(a1 + 32) _fireDidFinalizeTransaction:*(a1 + 40)];
    [*(a1 + 32) _fireWillCommitTransaction:*(a1 + 40)];
    v31 = *(a1 + 48);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
    {
      v32 = *(a1 + 56);
      *buf = 138543362;
      v172 = v32;
      _os_log_impl(&dword_21B526000, v31, OS_LOG_TYPE_DEFAULT, "(%{public}@} Transaction finished executing; attempting to commit staged changes.", buf, 0xCu);
    }

    obj = objc_opt_new();
    v156 = 0u;
    v157 = 0u;
    v158 = 0u;
    v159 = 0u;
    v33 = *(a1 + 72);
    v34 = [v33 countByEnumeratingWithState:&v156 objects:v185 count:16];
    if (v34)
    {
      v35 = v34;
      v134 = *v157;
      v131 = 1;
      v127 = v33;
      do
      {
        for (i = 0; i != v35; ++i)
        {
          if (*v157 != v134)
          {
            objc_enumerationMutation(v127);
          }

          v37 = *(*(&v156 + 1) + 8 * i);
          v152 = 0u;
          v153 = 0u;
          v154 = 0u;
          v155 = 0u;
          v38 = [v37 configurationStoreCoordinatorsWithError:0];
          v39 = [v38 countByEnumeratingWithState:&v152 objects:v184 count:16];
          if (v39)
          {
            v40 = v39;
            v41 = 0;
            v42 = *v153;
            while (2)
            {
              v43 = 0;
              v44 = v41;
              do
              {
                if (*v153 != v42)
                {
                  objc_enumerationMutation(v38);
                }

                v45 = *(*(&v152 + 1) + 8 * v43);
                v151 = 0;
                v46 = [v45 commitStagedWithError:&v151];
                v41 = v151;

                if ((v46 & 1) == 0)
                {
                  [obj addObject:v41];
                  a1 = v137;
                  v47 = *(v137 + 48);
                  if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
                  {
                    v48 = *(v137 + 56);
                    *buf = 138543874;
                    v172 = v48;
                    v173 = 2114;
                    v174 = v45;
                    v175 = 2114;
                    v176 = v41;
                    _os_log_error_impl(&dword_21B526000, v47, OS_LOG_TYPE_ERROR, "(%{public}@} Error committing staged changes for csc %{public}@: %{public}@", buf, 0x20u);
                  }

                  v131 = 0;
                  goto LABEL_46;
                }

                ++v43;
                v44 = v41;
              }

              while (v40 != v43);
              v40 = [v38 countByEnumeratingWithState:&v152 objects:v184 count:16];
              if (v40)
              {
                continue;
              }

              break;
            }

            a1 = v137;
LABEL_46:
          }
        }

        v35 = [v127 countByEnumeratingWithState:&v156 objects:v185 count:16];
      }

      while (v35);

      if ((v131 & 1) == 0)
      {
        v49 = 1;
        v50 = 1;
        goto LABEL_74;
      }
    }

    else
    {
    }

    v149 = 0u;
    v150 = 0u;
    v147 = 0u;
    v148 = 0u;
    v61 = *(a1 + 72);
    v62 = [v61 countByEnumeratingWithState:&v147 objects:v183 count:16];
    if (v62)
    {
      v63 = v62;
      v64 = *v148;
      while (2)
      {
        for (j = 0; j != v63; ++j)
        {
          if (*v148 != v64)
          {
            objc_enumerationMutation(v61);
          }

          v66 = *(*(&v147 + 1) + 8 * j);
          v146 = 0;
          v67 = [v66 commitStagedWithError:&v146];
          v68 = v146;
          v69 = v68;
          if ((v67 & 1) == 0)
          {
            [obj addObject:v68];
            a1 = v137;
            v70 = *(v137 + 48);
            if (os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
            {
              v123 = *(v137 + 56);
              *buf = 138543874;
              v172 = v123;
              v173 = 2114;
              v174 = v66;
              v175 = 2114;
              v176 = v69;
              _os_log_error_impl(&dword_21B526000, v70, OS_LOG_TYPE_ERROR, "(%{public}@} Error committing staged changes for esc %{public}@: %{public}@", buf, 0x20u);
            }

            v50 = 1;
            goto LABEL_73;
          }
        }

        v63 = [v61 countByEnumeratingWithState:&v147 objects:v183 count:16];
        if (v63)
        {
          continue;
        }

        break;
      }

      v50 = 0;
      a1 = v137;
    }

    else
    {
      v50 = 0;
    }

LABEL_73:

    v49 = 0;
LABEL_74:
    if ([obj count])
    {
      v71 = 1;
    }

    else
    {
      v71 = v49;
    }

    v72 = *(a1 + 48);
    v124 = v50 | v71;
    if ((v50 | v71) == 1)
    {
      if (os_log_type_enabled(v72, OS_LOG_TYPE_ERROR))
      {
        __58__PBFPosterRoleProcessor__executeTransaction_block_error___block_invoke_149_cold_1();
      }

      v73 = *(a1 + 48);
      if (os_log_type_enabled(v73, OS_LOG_TYPE_DEFAULT))
      {
        v74 = *(a1 + 56);
        *buf = 138543362;
        v172 = v74;
        _os_log_impl(&dword_21B526000, v73, OS_LOG_TYPE_DEFAULT, "(%{public}@} Executing revert of changes for events:", buf, 0xCu);
      }

      v144 = 0u;
      v145 = 0u;
      v142 = 0u;
      v143 = 0u;
      v75 = [*(a1 + 40) emittedEvents];
      v76 = [v75 countByEnumeratingWithState:&v142 objects:v182 count:16];
      if (v76)
      {
        v77 = v76;
        v78 = *v143;
        do
        {
          for (k = 0; k != v77; ++k)
          {
            if (*v143 != v78)
            {
              objc_enumerationMutation(v75);
            }

            v80 = *(*(&v142 + 1) + 8 * k);
            v81 = *(v137 + 48);
            if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
            {
              v82 = *(v137 + 56);
              v83 = v81;
              v84 = [v80 originatingRoleCoordinatorChange];
              *buf = 138543874;
              v172 = v82;
              v173 = 2114;
              v174 = v80;
              v175 = 2114;
              v176 = v84;
              _os_log_impl(&dword_21B526000, v83, OS_LOG_TYPE_DEFAULT, "(%{public}@} Reverting event: %{public}@; origin change: %{public}@", buf, 0x20u);
            }

            if ([v80 couldRevert])
            {
              v85 = [v80 revert];
              v86 = *(v137 + 48);
              if (v85)
              {
                if (os_log_type_enabled(*(v137 + 48), OS_LOG_TYPE_DEFAULT))
                {
                  v87 = *(v137 + 56);
                  *buf = 138543618;
                  v172 = v87;
                  v173 = 2114;
                  v174 = v80;
                  _os_log_impl(&dword_21B526000, v86, OS_LOG_TYPE_DEFAULT, "(%{public}@} Reverted %{public}@", buf, 0x16u);
                }
              }

              else if (os_log_type_enabled(*(v137 + 48), OS_LOG_TYPE_ERROR))
              {
                v88 = *(v137 + 56);
                *buf = 138543618;
                v172 = v88;
                v173 = 2114;
                v174 = v80;
                _os_log_error_impl(&dword_21B526000, v86, OS_LOG_TYPE_ERROR, "(%{public}@} Unable to revert %{public}@", buf, 0x16u);
              }
            }
          }

          v77 = [v75 countByEnumeratingWithState:&v142 objects:v182 count:16];
        }

        while (v77);
      }

      v89 = MEMORY[0x277CCA9B8];
      v90 = @"(null tx identifier)";
      if (*(v137 + 56))
      {
        v90 = *(v137 + 56);
      }

      v91 = *MEMORY[0x277CCA578];
      v180[0] = @"txIdentifier";
      v180[1] = v91;
      v181[0] = v90;
      v181[1] = obj;
      v92 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v181 forKeys:v180 count:2];
      v93 = [v89 pbf_generalErrorWithCode:8 userInfo:v92];
      v94 = *(*(v137 + 144) + 8);
      v95 = *(v94 + 40);
      *(v94 + 40) = v93;

      (*(*(v137 + 136) + 16))();
LABEL_127:
      v9 = v124 ^ 1u;
      goto LABEL_128;
    }

    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v96 = *(a1 + 56);
      *buf = 138543362;
      v172 = v96;
      _os_log_impl(&dword_21B526000, v72, OS_LOG_TYPE_DEFAULT, "(%{public}@ Data store has committed changes w/ no errors; building results", buf, 0xCu);
    }

    v97 = *(a1 + 80);
    v98 = [*(a1 + 40) affectedRoles];
    [v97 unionSet:v98];

    v140 = 0u;
    v141 = 0u;
    v138 = 0u;
    v139 = 0u;
    v126 = *(*(a1 + 32) + 16);
    v128 = [v126 countByEnumeratingWithState:&v138 objects:v179 count:16];
    if (!v128)
    {
LABEL_125:

      v119 = *(a1 + 48);
      if (os_log_type_enabled(v119, OS_LOG_TYPE_DEFAULT))
      {
        v120 = *(a1 + 56);
        *buf = 138543362;
        v172 = v120;
        _os_log_impl(&dword_21B526000, v119, OS_LOG_TYPE_DEFAULT, "(%{public}@ Successfully performed changes and committed staged changes.", buf, 0xCu);
      }

      goto LABEL_127;
    }

    v99 = *v139;
    v125 = *v139;
LABEL_104:
    v100 = 0;
    while (1)
    {
      if (*v139 != v99)
      {
        objc_enumerationMutation(v126);
      }

      v101 = *(*(&v138 + 1) + 8 * v100);
      v102 = [*(a1 + 64) objectForKeyedSubscript:v101];
      v103 = [*(a1 + 88) objectForKey:v101];
      v104 = [v102 buildNewPosterCollectionFromStorage:v136];
      v135 = v103;
      v132 = [objc_alloc(MEMORY[0x277D3ED38]) initWithCollection:v103 newCollection:v104];
      [*(a1 + 96) setObject:? forKey:?];
      v105 = [*(a1 + 104) objectForKeyedSubscript:v101];
      v106 = [*(a1 + 112) pbf_desiredActiveConfigurationForRole:v101];
      if (v106 && ([v104 posterWithUUID:v106], (v107 = objc_claimAutoreleasedReturnValue()) != 0))
      {
        v108 = v107;
      }

      else
      {
        v108 = [v102 determineActivePosterConfigurationForStorage:v136 context:*(a1 + 112)];
        if (!v108)
        {
          goto LABEL_112;
        }
      }

      if (([v108 isEqual:v105] & 1) == 0)
      {
        v112 = [PBFPosterDataStoreEventBuilder posterActivated:v108 previous:v105];
        v113 = [v112 buildWithError:0];

        if (v113)
        {
          v114 = *(a1 + 48);
          if (os_log_type_enabled(v114, OS_LOG_TYPE_DEFAULT))
          {
            v115 = *(a1 + 56);
            *buf = 138544130;
            v172 = v115;
            v173 = 2114;
            v174 = v101;
            v175 = 2114;
            v176 = v105;
            v177 = 2114;
            v178 = v108;
            _os_log_impl(&dword_21B526000, v114, OS_LOG_TYPE_DEFAULT, "(%{public}@ Active poster configuration updated for role '%{public}@' from %{public}@ -> %{public}@", buf, 0x2Au);
          }

          [*(a1 + 32) _processEvent:v113 changeHandler:v136 recursiveDepth:0 transaction:*(a1 + 40) error:0];
          v116 = *(a1 + 80);
          v117 = [*(a1 + 40) affectedRoles];
          [v116 unionSet:v117];

          a1 = v137;
        }

        [*(a1 + 120) setObject:v108 forKeyedSubscript:v101];

        v99 = v125;
        goto LABEL_123;
      }

LABEL_112:
      v109 = *(a1 + 48);
      v110 = os_log_type_enabled(v109, OS_LOG_TYPE_DEFAULT);
      if (v105)
      {
        if (v110)
        {
          v111 = *(a1 + 56);
          *buf = 138543874;
          v172 = v111;
          v173 = 2114;
          v174 = v101;
          v175 = 2114;
          v176 = v105;
          _os_log_impl(&dword_21B526000, v109, OS_LOG_TYPE_DEFAULT, "(%{public}@ Active poster configuration stays the same for role '%{public}@': %{public}@", buf, 0x20u);
        }

        [*(a1 + 120) setObject:v105 forKeyedSubscript:v101];
      }

      else if (v110)
      {
        v118 = *(a1 + 56);
        *buf = 138543874;
        v172 = v118;
        v173 = 2114;
        v174 = v101;
        v175 = 2114;
        v176 = 0;
        _os_log_impl(&dword_21B526000, v109, OS_LOG_TYPE_DEFAULT, "(%{public}@ Active poster configuration for role '%{public}@' is invalid: %{public}@", buf, 0x20u);
      }

LABEL_123:

      if (v128 == ++v100)
      {
        v128 = [v126 countByEnumeratingWithState:&v138 objects:v179 count:16];
        if (!v128)
        {
          goto LABEL_125;
        }

        goto LABEL_104;
      }
    }
  }

  v8 = v6;
  (*(*(a1 + 136) + 16))();
  if (!*(*(*(a1 + 144) + 8) + 40))
  {
    v54 = MEMORY[0x277CCA9B8];
    if (!v8)
    {
      v59 = [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:0 userInfo:0];
      v9 = 0;
      v60 = *(*(a1 + 144) + 8);
      obja = *(v60 + 40);
      *(v60 + 40) = v59;

      goto LABEL_129;
    }

    v55 = @"(null tx identifier)";
    if (*(a1 + 56))
    {
      v55 = *(a1 + 56);
    }

    v188 = @"txIdentifier";
    v189[0] = v55;
    obj = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v189 forKeys:&v188 count:1];
    v56 = [v54 pbf_generalErrorWithCode:3 userInfo:?];
    v57 = *(*(a1 + 144) + 8);
    v58 = *(v57 + 40);
    *(v57 + 40) = v56;

    goto LABEL_57;
  }

  v9 = 0;
LABEL_129:

  return v9;
}

- (BOOL)_executeChange:(id)change roleCoordinator:(id)coordinator changeHandler:(id)handler recursiveDepth:(unint64_t)depth transaction:(id)transaction error:(id *)error
{
  v43[1] = *MEMORY[0x277D85DE8];
  changeCopy = change;
  coordinatorCopy = coordinator;
  handlerCopy = handler;
  transactionCopy = transaction;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    *error = v18 = 0;
    goto LABEL_23;
  }

  [(PBFPosterRoleProcessor *)self _fireWillExecuteChange:changeCopy transaction:transactionCopy];
  if (![transactionCopy isInvalidated])
  {
    v38 = 0;
    v21 = [coordinatorCopy updateCoordinatorWithChange:changeCopy changeHandler:handlerCopy emitEvents:&v38 error:error];
    v22 = v38;
    if (v21)
    {
      affectedRoles = [transactionCopy affectedRoles];
      v33 = coordinatorCopy;
      role = [coordinatorCopy role];
      [affectedRoles addObject:role];

      v36 = 0u;
      v37 = 0u;
      v34 = 0u;
      v35 = 0u;
      v32 = v22;
      v25 = v22;
      v26 = [v25 countByEnumeratingWithState:&v34 objects:v41 count:16];
      if (v26)
      {
        v27 = v26;
        v28 = *v35;
        while (2)
        {
          for (i = 0; i != v27; ++i)
          {
            if (*v35 != v28)
            {
              objc_enumerationMutation(v25);
            }

            if (![(PBFPosterRoleProcessor *)self _processEvent:*(*(&v34 + 1) + 8 * i) changeHandler:handlerCopy recursiveDepth:depth + 1 transaction:transactionCopy error:error, v32])
            {
              v22 = v32;
              coordinatorCopy = v33;
              goto LABEL_20;
            }
          }

          v27 = [v25 countByEnumeratingWithState:&v34 objects:v41 count:16];
          if (v27)
          {
            continue;
          }

          break;
        }
      }

      [(PBFPosterRoleProcessor *)self _fireDidExecuteChange:changeCopy transaction:transactionCopy];
      if (![transactionCopy isInvalidated])
      {
        v18 = 1;
        v22 = v32;
        coordinatorCopy = v33;
        goto LABEL_22;
      }

      v22 = v32;
      if (!error)
      {
        v18 = 0;
        coordinatorCopy = v33;
        goto LABEL_22;
      }

      v30 = MEMORY[0x277CCA9B8];
      v39 = *MEMORY[0x277CCA470];
      v40 = @"transaction invalidated";
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v40 forKeys:&v39 count:1];
      *error = [v30 pbf_generalErrorWithCode:3 userInfo:v25];
      coordinatorCopy = v33;
LABEL_20:
    }

    v18 = 0;
LABEL_22:

    goto LABEL_23;
  }

  if (error)
  {
    v19 = MEMORY[0x277CCA9B8];
    v42 = *MEMORY[0x277CCA470];
    v43[0] = @"transaction invalidated";
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:&v42 count:1];
    *error = [v19 pbf_generalErrorWithCode:3 userInfo:v20];
  }

  v18 = 0;
LABEL_23:

  return v18;
}

- (BOOL)_processEvent:(id)event changeHandler:(id)handler recursiveDepth:(unint64_t)depth transaction:(id)transaction error:(id *)error
{
  v73[1] = *MEMORY[0x277D85DE8];
  eventCopy = event;
  handlerCopy = handler;
  transactionCopy = transaction;
  if ([(BSAtomicFlag *)self->_invalidationFlag getFlag])
  {
    [MEMORY[0x277CCA9B8] pbf_generalErrorWithCode:3 userInfo:0];
    *error = v14 = 0;
  }

  else
  {
    [transactionCopy appendEmittedEvent:eventCopy];
    [(PBFPosterRoleProcessor *)self _fireWillEvaluateEvent:eventCopy transaction:transactionCopy];
    if ([transactionCopy isInvalidated])
    {
      if (error)
      {
        v15 = MEMORY[0x277CCA9B8];
        v72 = *MEMORY[0x277CCA470];
        v73[0] = @"transaction invalidated";
        v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v73 forKeys:&v72 count:1];
        *error = [v15 pbf_generalErrorWithCode:3 userInfo:v16];
      }

      v14 = 0;
    }

    else
    {
      shortIdentifier = [transactionCopy shortIdentifier];
      v18 = [(PBFPosterRoleProcessor *)self log];
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v66 = shortIdentifier;
        v67 = 2114;
        v68 = eventCopy;
        _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_DEFAULT, "(%{public}@} Processing event: %{public}@", buf, 0x16u);
      }

      affectedRoles = [transactionCopy affectedRoles];
      v41 = [affectedRoles count];
      v45 = v18;

      roleCoordinators = self->_roleCoordinators;
      v58[0] = MEMORY[0x277D85DD0];
      v58[1] = 3221225472;
      v58[2] = __87__PBFPosterRoleProcessor__processEvent_changeHandler_recursiveDepth_transaction_error___block_invoke;
      v58[3] = &unk_2782C97D8;
      v61 = v41 != 0;
      v21 = transactionCopy;
      v59 = v21;
      v42 = eventCopy;
      v60 = v42;
      [(NSArray *)roleCoordinators bs_filter:v58];
      v54 = 0u;
      v55 = 0u;
      v56 = 0u;
      obj = v57 = 0u;
      v43 = [obj countByEnumeratingWithState:&v54 objects:v71 count:16];
      if (v43)
      {
        v44 = *v55;
        v38 = transactionCopy;
        v39 = eventCopy;
        v40 = shortIdentifier;
        do
        {
          v22 = 0;
          v23 = v42;
          do
          {
            if (*v55 != v44)
            {
              objc_enumerationMutation(obj);
            }

            v24 = *(*(&v54 + 1) + 8 * v22);
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              v66 = shortIdentifier;
              v67 = 2114;
              v68 = v23;
              v69 = 2114;
              v70 = v24;
              _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_DEFAULT, "(%{public}@} Issuing event %{public}@ to %{public}@", buf, 0x20u);
            }

            v53 = 0;
            v25 = [v24 notifyEventWasReceived:v23 changes:&v53 storage:{handlerCopy, v38, v39}];
            v26 = v53;
            v46 = v26;
            if (v25)
            {
              if (!v41)
              {
                v27 = v26;
                affectedRoles2 = [v21 affectedRoles];
                role = [v24 role];
                [affectedRoles2 addObject:role];

                v26 = v27;
              }

              v51 = 0u;
              v52 = 0u;
              v49 = 0u;
              v50 = 0u;
              v30 = v26;
              v31 = [v30 countByEnumeratingWithState:&v49 objects:v64 count:16];
              if (v31)
              {
                v32 = v31;
                v33 = *v50;
                while (2)
                {
                  for (i = 0; i != v32; ++i)
                  {
                    if (*v50 != v33)
                    {
                      objc_enumerationMutation(v30);
                    }

                    if (![(PBFPosterRoleProcessor *)self _executeChange:*(*(&v49 + 1) + 8 * i) roleCoordinator:v24 changeHandler:handlerCopy recursiveDepth:depth + 1 transaction:v21 error:error])
                    {

                      v36 = obj;
                      transactionCopy = v38;
                      eventCopy = v39;
                      shortIdentifier = v40;
                      v18 = v45;
                      goto LABEL_36;
                    }
                  }

                  v32 = [v30 countByEnumeratingWithState:&v49 objects:v64 count:16];
                  if (v32)
                  {
                    continue;
                  }

                  break;
                }
              }

              shortIdentifier = v40;
              v18 = v45;
              v23 = v42;
            }

            else if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543874;
              v66 = shortIdentifier;
              v67 = 2114;
              v68 = v23;
              v69 = 2114;
              v70 = v24;
              _os_log_impl(&dword_21B526000, v18, OS_LOG_TYPE_DEFAULT, "(%{public}@} Event %{public}@ was not handled by role coordinator %{public}@; continuing", buf, 0x20u);
            }

            ++v22;
          }

          while (v22 != v43);
          transactionCopy = v38;
          eventCopy = v39;
          v43 = [obj countByEnumeratingWithState:&v54 objects:v71 count:16];
        }

        while (v43);
      }

      [(PBFPosterRoleProcessor *)self _fireDidEvaluateEvent:v42 transaction:v21];
      if ([v21 isInvalidated])
      {
        if (error)
        {
          v35 = MEMORY[0x277CCA9B8];
          v62 = *MEMORY[0x277CCA470];
          v63 = @"transaction invalidated";
          v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v63 forKeys:&v62 count:1];
          *error = [v35 pbf_generalErrorWithCode:3 userInfo:v36];
LABEL_36:
        }

        v14 = 0;
      }

      else
      {
        v14 = 1;
      }
    }
  }

  return v14;
}

uint64_t __87__PBFPosterRoleProcessor__processEvent_changeHandler_recursiveDepth_transaction_error___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 48) == 1 && ([*(a1 + 32) affectedRoles], v4 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v3, "role"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v4, "containsObject:", v5), v5, v4, !v6))
  {
    v7 = 0;
  }

  else
  {
    v7 = [v3 validateEventIsRelevant:*(a1 + 40)];
  }

  return v7;
}

- (void)_fireWillBeginTransaction:(id)transaction
{
  v16 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [transactionCopy observers];
  v6 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(observers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 roleProcessor:self willBeginTransaction:transactionCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_fireDidBeginTransaction:(id)transaction
{
  v16 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [transactionCopy observers];
  v6 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(observers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 roleProcessor:self didBeginTransaction:transactionCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_fireWillExecuteChange:(id)change transaction:(id)transaction
{
  v19 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  transactionCopy = transaction;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  observers = [transactionCopy observers];
  v9 = [observers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(observers);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 roleProcessor:self willExecuteChange:changeCopy transaction:transactionCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [observers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_fireDidExecuteChange:(id)change transaction:(id)transaction
{
  v19 = *MEMORY[0x277D85DE8];
  changeCopy = change;
  transactionCopy = transaction;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  observers = [transactionCopy observers];
  v9 = [observers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(observers);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 roleProcessor:self didExecuteChange:changeCopy transaction:transactionCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [observers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_fireWillEvaluateEvent:(id)event transaction:(id)transaction
{
  v19 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  transactionCopy = transaction;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  observers = [transactionCopy observers];
  v9 = [observers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(observers);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 roleProcessor:self willEvaluateEvent:eventCopy transaction:transactionCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [observers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_fireDidEvaluateEvent:(id)event transaction:(id)transaction
{
  v19 = *MEMORY[0x277D85DE8];
  eventCopy = event;
  transactionCopy = transaction;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  observers = [transactionCopy observers];
  v9 = [observers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(observers);
        }

        v13 = *(*(&v14 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 roleProcessor:self didEvaluateEvent:eventCopy transaction:transactionCopy];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [observers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }
}

- (void)_fireWillFinalizeTransaction:(id)transaction
{
  v16 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [transactionCopy observers];
  v6 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(observers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 roleProcessor:self willFinalizeTransaction:transactionCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_fireDidFinalizeTransaction:(id)transaction
{
  v16 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [transactionCopy observers];
  v6 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(observers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 roleProcessor:self didFinalizeTransaction:transactionCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_fireWillCommitTransaction:(id)transaction
{
  v16 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [transactionCopy observers];
  v6 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(observers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 roleProcessor:self willCommitTransaction:transactionCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_fireDidCommitTransaction:(id)transaction
{
  v16 = *MEMORY[0x277D85DE8];
  transactionCopy = transaction;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [transactionCopy observers];
  v6 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(observers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 roleProcessor:self didCommitTransaction:transactionCopy];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }
}

- (void)_fireTransactionFinished:(id)finished result:(id)result error:(id)error
{
  v23 = *MEMORY[0x277D85DE8];
  finishedCopy = finished;
  resultCopy = result;
  errorCopy = error;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  observers = [finishedCopy observers];
  v11 = [observers countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v19;
    if (errorCopy)
    {
      v14 = 0;
    }

    else
    {
      v14 = resultCopy;
    }

    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v13)
        {
          objc_enumerationMutation(observers);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 roleProcessor:self transactionFinished:finishedCopy success:errorCopy == 0 results:v14 error:errorCopy];
        }

        ++v15;
      }

      while (v12 != v15);
      v12 = [observers countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v12);
  }

  [finishedCopy cancel];
  [(PBFPosterRoleProcessor *)self _resetRoleCoordinatorTransaction];
}

- (void)_fireWasInvalidated:(id)invalidated
{
  v16 = *MEMORY[0x277D85DE8];
  invalidatedCopy = invalidated;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  observers = [invalidatedCopy observers];
  v6 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v12;
    do
    {
      v9 = 0;
      do
      {
        if (*v12 != v8)
        {
          objc_enumerationMutation(observers);
        }

        v10 = *(*(&v11 + 1) + 8 * v9);
        if (objc_opt_respondsToSelector())
        {
          [v10 roleProcessorWasInvalidated:self];
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [observers countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v7);
  }

  [invalidatedCopy cancel];
  [(PBFPosterRoleProcessor *)self _resetRoleCoordinatorTransaction];
}

- (void)_resetRoleCoordinatorTransaction
{
  v12 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = self->_roleCoordinators;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v8;
    do
    {
      v6 = 0;
      do
      {
        if (*v8 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(*(&v7 + 1) + 8 * v6++) finalizeTransactionCount];
      }

      while (v4 != v6);
      v4 = [(NSArray *)v2 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v4);
  }
}

- (void)invalidate
{
  if ([(BSAtomicFlag *)self->_invalidationFlag setFlag:1])
  {
    obj = self;
    objc_sync_enter(obj);
    [(_PBFPosterRoleProcessorTransaction *)obj->_activeTransaction invalidate];
    activeTransaction = obj->_activeTransaction;
    obj->_activeTransaction = 0;

    objc_sync_exit(obj);
  }
}

- (void)initWithDataStorage:(char *)a1 roleCoordinators:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(PBFPosterExtensionDataStorage)]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDataStorage:(char *)a1 roleCoordinators:.cold.2(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object isKindOfClass:NSArrayClass]", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDataStorage:(char *)a1 roleCoordinators:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[roleCoordinators count] > 0", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDataStorage:(char *)a1 roleCoordinators:.cold.4(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)initWithDataStorage:(char *)a1 roleCoordinators:.cold.5(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v10, v11);
  }

  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)processChanges:(char *)a1 context:reason:userInfo:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(PBFPosterRoleCoordinatorTransitionContext)]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)processChanges:(char *)a1 context:reason:userInfo:error:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __71__PBFPosterRoleProcessor_processChanges_context_reason_userInfo_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_2_1(&dword_21B526000, v0, v1, "(%{public}@} Failed to execute changes w/ error: %{public}@");
}

- (void)processEvents:(char *)a1 context:reason:userInfo:error:.cold.1(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"[_bs_assert_object conformsToProtocol:@protocol(PBFPosterRoleCoordinatorTransitionContext)]", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

- (void)processEvents:(char *)a1 context:reason:userInfo:error:.cold.3(char *a1)
{
  v2 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid condition not satisfying: %@"];
  if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
  {
    NSStringFromSelector(a1);
    objc_claimAutoreleasedReturnValue();
    v3 = OUTLINED_FUNCTION_3();
    v4 = NSStringFromClass(v3);
    OUTLINED_FUNCTION_0();
    OUTLINED_FUNCTION_1(&dword_21B526000, MEMORY[0x277D86220], v5, "failure in %{public}@ of <%{public}@:%p> (%{public}@:%i) : %{public}@", v6, v7, v8, v9, @"_bs_assert_object != nil", v11, v12);
  }

  v10 = v2;
  [v2 UTF8String];
  _bs_set_crash_log_message();
  __break(0);
}

void __70__PBFPosterRoleProcessor_processEvents_context_reason_userInfo_error___block_invoke_cold_1()
{
  OUTLINED_FUNCTION_5_6(*MEMORY[0x277D85DE8]);
  OUTLINED_FUNCTION_3_4();
  OUTLINED_FUNCTION_2_1(&dword_21B526000, v0, v1, "(%{public}@} Failed to process events w/ error: %{public}@");
}

- (void)_executeTransaction:(uint64_t)a1 block:(uint64_t)a2 error:(NSObject *)a3 .cold.1(uint64_t a1, uint64_t a2, NSObject *a3)
{
  *v3 = 138543618;
  *&v3[4] = a1;
  *&v3[12] = 2114;
  *&v3[14] = a2;
  OUTLINED_FUNCTION_2_1(&dword_21B526000, a2, a3, "(%{public}@} Failed to execute transaction: %{public}@", *v3, *&v3[8], *&v3[16], *MEMORY[0x277D85DE8]);
}

@end