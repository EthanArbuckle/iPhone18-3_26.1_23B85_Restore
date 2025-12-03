@interface TRITaskQueue
- ($A5A652246548B43F8BC05201A1C72A70)_addTask:(id)task options:(id)options guardedData:(id)data taskId:(id *)id tryRunningEligibleTasksImmediately:(BOOL)immediately;
- ($A5A652246548B43F8BC05201A1C72A70)_addTask:(id)task options:(id)options guardedData:(id)data taskIdOut:(id *)out accumulatedNewTaskRecords:(id)records;
- ($A5A652246548B43F8BC05201A1C72A70)_addTask:(id)task options:(id)options taskId:(id *)id tryRunningEligibleTasksImmediately:(BOOL)immediately;
- (BOOL)_cancelDependenciesAndTaskWithId:(id)id guardedData:(id)data;
- (BOOL)_cancelTask:(id)task guardedData:(id)data;
- (BOOL)_isTaskWithId:(id)id inTaskGroup:(id)group runnableGivenCapabilities:(unint64_t)capabilities atDate:(id)date cachedRunnability:(id)runnability visitedPath:(id)path topoSortedRunnable:(id)runnable allowOnlyRootTasksRunnable:(BOOL)self0;
- (BOOL)_removeTaskWithId:(id)id guardedData:(id)data persistRemove:(BOOL)remove;
- (BOOL)addTaskAfterOperationsFinish:(id)finish;
- (BOOL)cancelTask:(id)task;
- (BOOL)cancelTasksWithTag:(id)tag;
- (BOOL)cancelTasksWithTag:(id)tag excludingTasks:(id)tasks;
- (BOOL)enumerateTasksWithTagsIntersectingTagSet:(id)set block:(id)block;
- (BOOL)finishXPCActivitiesWithGuardedData:(id)data;
- (BOOL)ifNotPresentAddTask:(id)task;
- (BOOL)updateActivity:(id)activity withStartDate:(id)date;
- (TRITaskQueue)initWithServerContext:(id)context operationQueue:(id)queue operationGroup:(id)group asyncQueue:(id)asyncQueue;
- (id)_addTask:(id)task withDependencies:(id)dependencies guardedData:(id)data;
- (id)_createOperationWithTask:(id)task withId:(id)id dependencies:(id)dependencies taskMap:(id)map;
- (id)_earliestStartDateFromTaskList:(id)list;
- (id)_runTask:(id)task;
- (id)activeActivityDescriptorGrantingCapability:(unint64_t)capability;
- (id)activeActivityGrantingCapability:(unint64_t)capability;
- (id)debugDescription;
- (unint64_t)count;
- (void)_evaluateRunConditionsWithGuardedData:(id)data shouldContinueWork:(BOOL *)work;
- (void)_finalizeTask:(id)task withId:(id)id runResult:(id)result;
- (void)_partitionTaskGroup:(id)group byRunnabilityGivenCapabilities:(unint64_t)capabilities runnableAtDate:(id)date topoSortedCurrentlyRunnable:(id *)runnable blocked:(id *)blocked allowOnlyRootTasksRunnable:(BOOL)tasksRunnable;
- (void)_registerRetryActivityForDate:(id)date;
- (void)_registerTaskQueueActivityForDate:(id)date;
- (void)_scheduleDeactivationBGST:(id)t;
- (void)_scheduleFutureActivitiesWithGuardedData:(id)data;
- (void)_startImmediateTasksIfNotAlreadyQueued:(id)queued guardedData:(id)data didStartNewWork:(BOOL *)work;
- (void)_startRunnableTasksIfNecessaryWithGuardedData:(id)data;
- (void)registerFinalizeBlock:(id)block;
- (void)registerFinalizeBlockToRetryWithBlock:(id)block;
- (void)resumeWithBGST:(id)t executeWhenSuspended:(id)suspended;
- (void)resumeWithXPCActivityDescriptor:(id)descriptor executeWhenSuspended:(id)suspended;
- (void)waitForAsyncQueue;
@end

@implementation TRITaskQueue

- (TRITaskQueue)initWithServerContext:(id)context operationQueue:(id)queue operationGroup:(id)group asyncQueue:(id)asyncQueue
{
  contextCopy = context;
  queueCopy = queue;
  groupCopy = group;
  asyncQueueCopy = asyncQueue;
  if (contextCopy)
  {
    if (groupCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITaskQueue.m" lineNumber:111 description:{@"Invalid parameter not satisfying: %@", @"context"}];

    if (groupCopy)
    {
LABEL_3:
      if (queueCopy)
      {
        goto LABEL_4;
      }

LABEL_10:
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRITaskQueue.m" lineNumber:113 description:{@"Invalid parameter not satisfying: %@", @"operationQueue"}];

      if (asyncQueueCopy)
      {
        goto LABEL_5;
      }

      goto LABEL_11;
    }
  }

  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRITaskQueue.m" lineNumber:112 description:{@"Invalid parameter not satisfying: %@", @"operationGroup"}];

  if (!queueCopy)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (asyncQueueCopy)
  {
    goto LABEL_5;
  }

LABEL_11:
  currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"TRITaskQueue.m" lineNumber:114 description:{@"Invalid parameter not satisfying: %@", @"asyncQueue"}];

LABEL_5:
  v37.receiver = self;
  v37.super_class = TRITaskQueue;
  v15 = [(TRITaskQueue *)&v37 init];
  v16 = v15;
  if (v15)
  {
    objc_storeWeak(&v15->_serverContext, contextCopy);
    objc_storeStrong(&v16->_opQueue, queue);
    objc_storeStrong(&v16->_opGroup, group);
    objc_storeStrong(&v16->_asyncQueue, asyncQueue);
    v17 = objc_opt_new();
    *(v17 + 8) = 0;
    taskDatabase = [contextCopy taskDatabase];
    v19 = *(v17 + 16);
    *(v17 + 16) = taskDatabase;

    v20 = objc_opt_new();
    v21 = *(v17 + 24);
    *(v17 + 24) = v20;

    v22 = objc_opt_new();
    v23 = *(v17 + 48);
    *(v17 + 48) = v22;

    *(v17 + 40) = 0;
    v24 = objc_opt_new();
    v25 = *(v17 + 64);
    *(v17 + 64) = v24;

    v26 = [[TRIBGSTManager alloc] initWithServerContext:contextCopy asyncQueue:asyncQueueCopy];
    v27 = *(v17 + 72);
    *(v17 + 72) = v26;

    v28 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v17];
    lock = v16->_lock;
    v16->_lock = v28;

    client = [contextCopy client];
    client = v16->_client;
    v16->_client = client;
  }

  return v16;
}

- (void)registerFinalizeBlock:(id)block
{
  blockCopy = block;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __38__TRITaskQueue_registerFinalizeBlock___block_invoke;
  v7[3] = &unk_279DE3528;
  v8 = blockCopy;
  v6 = blockCopy;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __38__TRITaskQueue_registerFinalizeBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 64);
  v3 = MEMORY[0x2743948D0](*(a1 + 32));
  [v2 addObject:v3];
}

- (BOOL)finishXPCActivitiesWithGuardedData:(id)data
{
  dataCopy = data;
  v5 = [dataCopy[3] count];
  v6 = TRILogCategory_Server();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "handleQueueEmptyNotificationWithGuardedData called but queue not complete processing work", buf, 2u);
    }
  }

  else
  {
    if (v7)
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "task queue has completed", buf, 2u);
    }

    notify_post("com.apple.trial.TaskQueueComplete");
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "Remove all finalizeBlocks", buf, 2u);
    }

    [dataCopy[8] removeAllObjects];
    v9 = [(TRIClient *)self->_client _refresh:0];
    v10 = dataCopy[6];
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __51__TRITaskQueue_finishXPCActivitiesWithGuardedData___block_invoke;
    v12[3] = &unk_279DE3550;
    v12[4] = self;
    [v10 enumerateKeysAndObjectsUsingBlock:v12];
    [dataCopy[9] markAllBGSTsAsCompleted];
    dataCopy[5] = 0;
    [dataCopy[6] removeAllObjects];
    [(TRITaskQueue *)self _scheduleFutureActivitiesWithGuardedData:dataCopy];
  }

  return v5 == 0;
}

void __51__TRITaskQueue_finishXPCActivitiesWithGuardedData___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [a3 futureCompletionStatus];
  v7 = *(*(a1 + 32) + 40);
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __51__TRITaskQueue_finishXPCActivitiesWithGuardedData___block_invoke_2;
  v9[3] = &unk_279DDEE68;
  v10 = v5;
  v11 = v6;
  v8 = v5;
  dispatch_async(v7, v9);
}

void __51__TRITaskQueue_finishXPCActivitiesWithGuardedData___block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) completion];
  v2[2](v2, *(a1 + 40));
}

- (void)_scheduleFutureActivitiesWithGuardedData:(id)data
{
  v32 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = +[TRILaunchDaemonActivityDescriptor taskQueueDescriptor];
  v30[0] = v5;
  v6 = +[TRILaunchDaemonActivityDescriptor retryFailuresDescriptor];
  v30[1] = v6;
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:2];

  obj = v7;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v26 + 1) + 8 * i);
        v13 = dataCopy[2];
        supportedTaskCapabilities = [v12 supportedTaskCapabilities];
        distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
        v16 = [v13 dependencyFreeTasksForAllowedCapabilities:supportedTaskCapabilities dateForRunnability:distantFuture];

        v24 = 0;
        v25 = 0;
        if (v16)
        {
          supportedTaskCapabilities2 = [v12 supportedTaskCapabilities];
          distantFuture2 = [MEMORY[0x277CBEAA8] distantFuture];
          [(TRITaskQueue *)self _partitionTaskGroup:v16 byRunnabilityGivenCapabilities:supportedTaskCapabilities2 runnableAtDate:distantFuture2 topoSortedCurrentlyRunnable:&v25 blocked:&v24 allowOnlyRootTasksRunnable:1];

          if ([v25 count])
          {
            v19 = [(TRITaskQueue *)self _earliestStartDateFromTaskList:v25];
            v20 = +[TRILaunchDaemonActivityDescriptor taskQueueDescriptor];
            v21 = [v12 isEqualToLaunchDaemonActivityDescriptor:v20];

            if (v21)
            {
              [(TRITaskQueue *)self _registerTaskQueueActivityForDate:v19];
            }

            else
            {
              [(TRITaskQueue *)self _registerRetryActivityForDate:v19];
            }
          }
        }
      }

      v9 = [obj countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v9);
  }

  [(TRITaskQueue *)self _scheduleDeactivationBGST:dataCopy];
  v22 = *MEMORY[0x277D85DE8];
}

- (void)_scheduleDeactivationBGST:(id)t
{
  tCopy = t;
  v5 = *(tCopy + 2);
  distantFuture = [MEMORY[0x277CBEAA8] distantFuture];
  v7 = [v5 dependencyFreeTasksForAllowedCapabilities:0 dateForRunnability:distantFuture];

  if (v7)
  {
    allValues = [v7 allValues];
    v9 = [allValues _pas_filteredArrayWithTest:&__block_literal_global_36];

    v10 = [(TRITaskQueue *)self _earliestStartDateFromTaskList:v9];
    if (v10)
    {
      [*(tCopy + 9) scheduleDeactivationBGSTWithEarliestDeactivationTaskScheduledDate:v10 gracePeriodInSeconds:1800];
    }

    else
    {
      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Not scheduling deactivation BGST as there's no scheduled deactivation tasks", v12, 2u);
      }
    }
  }

  else
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_INFO, "Not scheduling deactivation BGST as there's no scheduled tasks", buf, 2u);
    }
  }
}

BOOL __42__TRITaskQueue__scheduleDeactivationBGST___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 task];
  v3 = [v2 taskType] == 2;

  return v3;
}

- (id)_earliestStartDateFromTaskList:(id)list
{
  v21 = *MEMORY[0x277D85DE8];
  listCopy = list;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v4 = [listCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v17;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(listCopy);
        }

        startDate = [*(*(&v16 + 1) + 8 * i) startDate];
        if (startDate)
        {
          if (!v6 || ([v6 timeIntervalSinceReferenceDate], v11 = v10, objc_msgSend(startDate, "timeIntervalSinceReferenceDate"), v11 > v12))
          {
            v13 = startDate;

            v6 = v13;
          }
        }
      }

      v5 = [listCopy countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_evaluateRunConditionsWithGuardedData:(id)data shouldContinueWork:(BOOL *)work
{
  v51 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if (*(dataCopy + 8) != 1)
  {
    workCopy = work;
    *work = 1;
    v6 = objc_opt_new();
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    v7 = dataCopy[6];
    v8 = [v7 countByEnumeratingWithState:&v41 objects:v50 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v42;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v42 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v41 + 1) + 8 * i);
          shouldDefer = [v12 shouldDefer];
          v14 = shouldDefer[2]();

          if (v14)
          {
            v15 = TRILogCategory_Server();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
            {
              name = [v12 name];
              *buf = 138543362;
              v46 = name;
              _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEFAULT, "Deferral requested for activity %{public}@", buf, 0xCu);
            }

            [v6 addObject:v12];
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v41 objects:v50 count:16];
      }

      while (v9);
    }

    if ([v6 count])
    {
      v17 = [v6 count];
      if (v17 == [dataCopy[6] count])
      {
        *workCopy = 0;
      }
    }

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v18 = v6;
    v19 = [v18 countByEnumeratingWithState:&v37 objects:v49 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v38;
      do
      {
        for (j = 0; j != v20; ++j)
        {
          if (*v38 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v37 + 1) + 8 * j);
          v24 = [dataCopy[6] objectForKeyedSubscript:v23];
          v25 = [v24 copyWithReplacementFutureCompletionStatus:0];
          [dataCopy[6] setObject:v25 forKeyedSubscript:v23];
        }

        v20 = [v18 countByEnumeratingWithState:&v37 objects:v49 count:16];
      }

      while (v20);
    }

    if (!*workCopy)
    {
      goto LABEL_48;
    }

    if (qword_281597840 != -1)
    {
      dispatch_once(&qword_281597840, &__block_literal_global_100);
    }

    v26 = _MergedGlobals_37;
    v27 = [v26 objectForKey:@"com.apple.triald.tests.taskQueueDeferralSequence"];
    if (v27)
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if (![v27 count])
        {
          goto LABEL_47;
        }

        firstObject = [v27 firstObject];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          bOOLValue = [firstObject BOOLValue];
          v30 = TRILogCategory_Server();
          v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT);
          if (bOOLValue)
          {
            if (v31)
            {
              *buf = 138412546;
              v46 = @"com.apple.triald.tests.taskQueueDeferralSequence";
              v47 = 2112;
              v48 = firstObject;
              _os_log_impl(&dword_26F567000, v30, OS_LOG_TYPE_DEFAULT, "Requesting task queue deferral due to NSUserDefaults %@[0] ==> %@", buf, 0x16u);
            }

            *workCopy = 0;
          }

          else
          {
            if (v31)
            {
              *buf = 138412546;
              v46 = @"com.apple.triald.tests.taskQueueDeferralSequence";
              v47 = 2112;
              v48 = firstObject;
              _os_log_impl(&dword_26F567000, v30, OS_LOG_TYPE_DEFAULT, "Omitting task queue deferral due to NSUserDefaults %@[0] ==> %@", buf, 0x16u);
            }
          }

          if ([v27 count] < 2)
          {
            [v26 removeObjectForKey:@"com.apple.triald.tests.taskQueueDeferralSequence"];
          }

          else
          {
            v33 = objc_autoreleasePoolPush();
            v34 = [v27 subarrayWithRange:{1, objc_msgSend(v27, "count") - 1}];
            [v26 setObject:v34 forKey:@"com.apple.triald.tests.taskQueueDeferralSequence"];

            objc_autoreleasePoolPop(v33);
          }
        }

        else
        {
          v32 = TRILogCategory_Server();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v46 = @"com.apple.triald.tests.taskQueueDeferralSequence";
            _os_log_error_impl(&dword_26F567000, v32, OS_LOG_TYPE_ERROR, "Expected NSNumber inside NSArray under NSUserDefaults %@", buf, 0xCu);
          }
        }
      }

      else
      {
        firstObject = TRILogCategory_Server();
        if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v46 = @"com.apple.triald.tests.taskQueueDeferralSequence";
          _os_log_error_impl(&dword_26F567000, firstObject, OS_LOG_TYPE_ERROR, "Expected NSArray<NSNumber*> under NSUserDefaults %@", buf, 0xCu);
        }
      }
    }

LABEL_47:

    if (*workCopy)
    {
      goto LABEL_49;
    }

LABEL_48:
    *(dataCopy + 8) = 1;
    [dataCopy[3] enumerateKeysAndObjectsUsingBlock:&__block_literal_global_106];
    goto LABEL_49;
  }

  *work = 0;
LABEL_49:

  v35 = *MEMORY[0x277D85DE8];
}

void __73__TRITaskQueue__evaluateRunConditionsWithGuardedData_shouldContinueWork___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v2 = _MergedGlobals_37;
  _MergedGlobals_37 = v1;

  objc_autoreleasePoolPop(v0);
}

- (void)resumeWithXPCActivityDescriptor:(id)descriptor executeWhenSuspended:(id)suspended
{
  descriptorCopy = descriptor;
  suspendedCopy = suspended;
  lock = self->_lock;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__TRITaskQueue_resumeWithXPCActivityDescriptor_executeWhenSuspended___block_invoke;
  v11[3] = &unk_279DE3600;
  v12 = descriptorCopy;
  v13 = suspendedCopy;
  v11[4] = self;
  v9 = descriptorCopy;
  v10 = suspendedCopy;
  [(_PASLock *)lock runWithLockAcquired:v11];
}

void __69__TRITaskQueue_resumeWithXPCActivityDescriptor_executeWhenSuspended___block_invoke(uint64_t a1, void *a2)
{
  v48 = *MEMORY[0x277D85DE8];
  v3 = a2;
  dispatch_suspend(*(*(a1 + 32) + 24));
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __69__TRITaskQueue_resumeWithXPCActivityDescriptor_executeWhenSuspended___block_invoke_2;
  v42[3] = &unk_279DDEEE0;
  v42[4] = *(a1 + 32);
  v4 = MEMORY[0x2743948D0](v42);
  v5 = *(a1 + 48);
  if (v5)
  {
    (*(v5 + 16))();
  }

  v6 = *(v3 + 2);
  v7 = *(v3 + 5);
  v8 = [*(a1 + 40) capabilities];
  v9 = objc_opt_new();
  v10 = [v6 dependencyFreeTasksForAllowedCapabilities:v8 | v7 dateForRunnability:v9];

  if ([v10 count] || objc_msgSend(*(v3 + 3), "count"))
  {
    v11 = [v10 allKeys];
    v12 = [v11 _pas_mappedArrayWithTransform:&__block_literal_global_110_0];

    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = [v10 count];
      v15 = *(v3 + 5);
      v16 = [*(a1 + 40) capabilities];
      *buf = 134218498;
      *&buf[4] = v14;
      v44 = 2048;
      v45 = v16 | v15;
      v46 = 2112;
      v47 = v12;
      _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Found %lu dependency-free tasks to consider resuming the task queue with for capability %llu: %@", buf, 0x20u);
    }

    v17 = TRILogCategory_Server();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = [*(a1 + 40) name];
      *buf = 138543362;
      *&buf[4] = v18;
      _os_log_impl(&dword_26F567000, v17, OS_LOG_TYPE_DEFAULT, "resuming task queue with activity %{public}@", buf, 0xCu);
    }

    v37 = *(v3 + 5);
    v19 = [*(a1 + 40) capabilities];
    v20 = *(v3 + 5) | v19;
    *(v3 + 5) = v20;
    *buf = 0;
    v41 = 0;
    v21 = *(a1 + 32);
    v22 = [MEMORY[0x277CBEAA8] now];
    if (v10)
    {
      v23 = v10;
    }

    else
    {
      v23 = MEMORY[0x277CBEC10];
    }

    [v21 _partitionTaskGroup:v23 byRunnabilityGivenCapabilities:v20 runnableAtDate:v22 topoSortedCurrentlyRunnable:buf blocked:&v41 allowOnlyRootTasksRunnable:0];

    v24 = *(v3 + 3);
    v25 = *buf;
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __69__TRITaskQueue_resumeWithXPCActivityDescriptor_executeWhenSuspended___block_invoke_115;
    v39[3] = &unk_279DE35D8;
    v26 = v24;
    v40 = v26;
    v27 = [v25 _pas_filteredArrayWithTest:v39];
    if ([v27 count] || objc_msgSend(v26, "count"))
    {
      *(v3 + 8) = 0;
      if (*(a1 + 40))
      {
        v28 = [TRIXPCActivityState xPCActivityStateWithFutureCompletionStatus:1 capabilities:v19];
        [*(v3 + 6) setObject:v28 forKeyedSubscript:*(a1 + 40)];
      }

      if ([v27 count])
      {
        v38[0] = 0;
        [*(a1 + 32) _startImmediateTasksIfNotAlreadyQueued:*buf guardedData:v3 didStartNewWork:v38];
        if ((v38[0] & 1) == 0 && ![v26 count])
        {
          *(v3 + 5) = v37;
          if (*(a1 + 40))
          {
            v29 = [*(v3 + 6) objectForKeyedSubscript:?];
            v30 = [*(a1 + 40) completion];
            v30[2](v30, [v29 futureCompletionStatus]);

            [*(v3 + 6) setObject:0 forKeyedSubscript:*(a1 + 40)];
          }
        }
      }
    }

    else
    {
      v33 = TRILogCategory_Server();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        *v38 = 0;
        _os_log_impl(&dword_26F567000, v33, OS_LOG_TYPE_DEFAULT, "task queue has no new work or work pending", v38, 2u);
      }

      *(v3 + 5) = v37;
      v34 = *(a1 + 40);
      if (v34)
      {
        v35 = [v34 completion];
        v35[2](v35, 1);
      }

      [*(a1 + 32) _scheduleFutureActivitiesWithGuardedData:v3];
    }

    goto LABEL_31;
  }

  v31 = TRILogCategory_Server();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v31, OS_LOG_TYPE_DEFAULT, "task queue has no prior or pending tasks to resume", buf, 2u);
  }

  v32 = *(a1 + 40);
  if (v32)
  {
    v12 = [v32 completion];
    v12[2](v12, 1);
LABEL_31:
  }

  if (v4)
  {
    v4[2](v4);
  }

  v36 = *MEMORY[0x277D85DE8];
}

id __69__TRITaskQueue_resumeWithXPCActivityDescriptor_executeWhenSuspended___block_invoke_107(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [[v2 alloc] initWithFormat:@"[tid:%@]", v3];

  return v4;
}

BOOL __69__TRITaskQueue_resumeWithXPCActivityDescriptor_executeWhenSuspended___block_invoke_115(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 taskId];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = v4 == 0;

  return v5;
}

- (void)resumeWithBGST:(id)t executeWhenSuspended:(id)suspended
{
  tCopy = t;
  lock = self->_lock;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __52__TRITaskQueue_resumeWithBGST_executeWhenSuspended___block_invoke;
  v15[3] = &unk_279DE3628;
  v9 = tCopy;
  v16 = v9;
  suspendedCopy = suspended;
  [(_PASLock *)lock runWithLockAcquired:v15];
  identifier = [v9 identifier];
  v12 = [identifier isEqualToString:@"com.apple.triald.deactivation"];

  if ((v12 & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITaskQueue.m" lineNumber:416 description:{@"New BGST added, need to update task queue capabilities"}];
  }

  v13 = [[TRIRunningXPCActivityDescriptor alloc] initForImmediateWorkWithCapabilities:0];
  [(TRITaskQueue *)self resumeWithXPCActivityDescriptor:v13 executeWhenSuspended:suspendedCopy];
}

- (void)_finalizeTask:(id)task withId:(id)id runResult:(id)result
{
  taskCopy = task;
  idCopy = id;
  resultCopy = result;
  lock = self->_lock;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __47__TRITaskQueue__finalizeTask_withId_runResult___block_invoke;
  v15[3] = &unk_279DE36A0;
  v16 = resultCopy;
  v17 = taskCopy;
  v18 = idCopy;
  selfCopy = self;
  v12 = idCopy;
  v13 = taskCopy;
  v14 = resultCopy;
  [(_PASLock *)lock runWithLockAcquired:v15];
}

void __47__TRITaskQueue__finalizeTask_withId_runResult___block_invoke(id *a1, void *a2)
{
  v68 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = os_transaction_create();
  v5 = [a1[4] runStatus];
  v6 = [a1[4] nextTasks];
  if (v5 == 3)
  {
LABEL_20:
    v20 = [v3[2] tasksDependentOnTask:a1[6]];
    v52[0] = MEMORY[0x277D85DD0];
    v52[1] = 3221225472;
    v52[2] = __47__TRITaskQueue__finalizeTask_withId_runResult___block_invoke_220;
    v52[3] = &unk_279DE3650;
    v52[4] = a1[7];
    v53 = v3;
    v54 = a1[5];
    v55 = a1[6];
    [v20 enumerateObjectsUsingBlock:v52];

    v5 = 3;
    goto LABEL_21;
  }

  if (v5 == 1)
  {
    if ([a1[5] conformsToProtocol:&unk_287FDBB78] && objc_msgSend(a1[5], "retryCount") <= 2)
    {
      v7 = a1[5];
      [v3[3] setObject:0 forKeyedSubscript:a1[6]];
      v8 = [v3[2] tasksDependentOnTask:a1[6]];
      v56 = 0u;
      v57 = 0u;
      v58 = 0u;
      v59 = 0u;
      v9 = [v8 countByEnumeratingWithState:&v56 objects:v67 count:16];
      if (v9)
      {
        v10 = v9;
        v11 = *v57;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v57 != v11)
            {
              objc_enumerationMutation(v8);
            }

            [a1[7] _cancelTaskWithId:*(*(&v56 + 1) + 8 * i) guardedData:v3 persistCancel:0];
          }

          v10 = [v8 countByEnumeratingWithState:&v56 objects:v67 count:16];
        }

        while (v10);
      }

      v13 = [a1[4] earliestRetryDate];
      v14 = v13;
      if (v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:43200.0];
      }

      v30 = v15;

      if ([a1[5] wasDeferred])
      {
        v39 = TRILogCategory_Server();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = a1[6];
          *buf = 138412290;
          v62 = v40;
          _os_log_impl(&dword_26F567000, v39, OS_LOG_TYPE_DEFAULT, "Not incrementing retry count for task [tid:%@] since it was just deferred.", buf, 0xCu);
        }
      }

      else
      {
        [v7 setRetryCount:{objc_msgSend(v7, "retryCount") + 1}];
        [v3[2] updateTaskWithTaskId:a1[6] capabilities:objc_msgSend(a1[5] task:{"requiredCapabilities"), a1[5]}];
      }

      [v3[2] updateTaskWithTaskId:a1[6] startDate:v30 task:v7];
      [a1[7] _registerRetryActivityForDate:v30];

      goto LABEL_34;
    }

    v16 = [a1[5] conformsToProtocol:&unk_287FDBB78];
    v17 = TRILogCategory_Server();
    v18 = v17;
    if (v16)
    {
      if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
      {
        v19 = a1[6];
        *buf = 138412290;
        v62 = v19;
        _os_log_impl(&dword_26F567000, v18, OS_LOG_TYPE_DEFAULT, "task [tid:%@] exceeded maximum retry count, failing", buf, 0xCu);
      }
    }

    else if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v43 = a1[6];
      *buf = 138412290;
      v62 = v43;
      _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "task [tid:%@] finished with TRITaskRunStatus_RETRY but not retryable; failing instead", buf, 0xCu);
    }

    goto LABEL_20;
  }

LABEL_21:
  v21 = [a1[7] _removeTaskWithId:a1[6] guardedData:v3 persistRemove:1];
  v22 = TRILogCategory_Server();
  v23 = v22;
  if (v21)
  {
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      v24 = a1[5];
      v25 = a1[6];
      *buf = 138543618;
      v62 = v24;
      v63 = 2112;
      v64 = v25;
      _os_log_debug_impl(&dword_26F567000, v23, OS_LOG_TYPE_DEBUG, "removing task from DB: %{public}@ [tid:%@]", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    v41 = a1[5];
    v42 = a1[6];
    *buf = 138543618;
    v62 = v41;
    v63 = 2112;
    v64 = v42;
    _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "failed to remove task from DB: %{public}@ [tid:%@]", buf, 0x16u);
  }

  if (v6 && [v6 count])
  {
    v26 = TRILogCategory_Server();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      v27 = [v6 count];
      v28 = a1[5];
      v29 = a1[6];
      *buf = 134218498;
      v62 = v27;
      v63 = 2114;
      v64 = v28;
      v65 = 2112;
      v66 = v29;
      _os_log_impl(&dword_26F567000, v26, OS_LOG_TYPE_DEFAULT, "adding %lu follow-up tasks for %{public}@ [tid:%@]", buf, 0x20u);
    }

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __47__TRITaskQueue__finalizeTask_withId_runResult___block_invoke_222;
    v48[3] = &unk_279DE3678;
    v48[4] = a1[7];
    v49 = v3;
    v50 = a1[5];
    v51 = a1[6];
    [v6 enumerateObjectsUsingBlock:v48];
  }

  if (v5 == 2)
  {
    [a1[7] _startRunnableTasksIfNecessaryWithGuardedData:v3];
  }

  v30 = 0;
LABEL_34:
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v31 = v3[8];
  v32 = [v31 countByEnumeratingWithState:&v44 objects:v60 count:16];
  if (v32)
  {
    v33 = v32;
    v34 = *v45;
    do
    {
      for (j = 0; j != v33; ++j)
      {
        if (*v45 != v34)
        {
          objc_enumerationMutation(v31);
        }

        v37 = a1[4];
        v36 = a1[5];
        (*(*(*(&v44 + 1) + 8 * j) + 16))(*(*(&v44 + 1) + 8 * j));
      }

      v33 = [v31 countByEnumeratingWithState:&v44 objects:v60 count:16];
    }

    while (v33);
  }

  v38 = *MEMORY[0x277D85DE8];
}

void __47__TRITaskQueue__finalizeTask_withId_runResult___block_invoke_220(uint64_t a1, void *a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) _cancelTaskWithId:v3 guardedData:*(a1 + 40) persistCancel:1];
  v5 = TRILogCategory_Server();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v7 = *(a1 + 48);
      v8 = *(a1 + 56);
      v12 = 138543874;
      v13 = v3;
      v14 = 2114;
      v15 = v7;
      v16 = 2112;
      v17 = v8;
      _os_log_debug_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEBUG, "removed downstream task %{public}@ of task %{public}@ [tid:%@]", &v12, 0x20u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v10 = *(a1 + 48);
    v11 = *(a1 + 56);
    v12 = 138543874;
    v13 = v3;
    v14 = 2114;
    v15 = v10;
    v16 = 2112;
    v17 = v11;
    _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "failed to remove downstream task %{public}@ of task %{public}@ [tid:%@]", &v12, 0x20u);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __47__TRITaskQueue__finalizeTask_withId_runResult___block_invoke_222(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [[TRITaskQueuingOptions alloc] initWithDuplicateTaskResolution:1];

    v4 = v5;
  }

  v13 = 0;
  v6 = [*(a1 + 32) _addTask:v3 options:v4 guardedData:*(a1 + 40) taskId:&v13 tryRunningEligibleTasksImmediately:1];
  v7 = TRILogCategory_Server();
  v8 = v7;
  if (v6 == 2)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 48);
      v10 = *(a1 + 56);
      *buf = 138543618;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "failed to add follow-up task for %{public}@ [tid:%@]", buf, 0x16u);
    }
  }

  else if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v11 = *(a1 + 56);
    *buf = 138543874;
    v15 = v3;
    v16 = 2112;
    v17 = v13;
    v18 = 2112;
    v19 = v11;
    _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "enqueued follow-up task %{public}@ [tid:%@] after execution of [tid:%@]", buf, 0x20u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_runTask:(id)task
{
  taskCopy = task;
  v5 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained(&self->_serverContext);
  v7 = [taskCopy runUsingContext:WeakRetained withTaskQueue:self];

  return v7;
}

- (id)_createOperationWithTask:(id)task withId:(id)id dependencies:(id)dependencies taskMap:(id)map
{
  v38 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  idCopy = id;
  dependenciesCopy = dependencies;
  mapCopy = map;
  v12 = objc_opt_new();
  [v12 setTask:taskCopy];
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v13 = dependenciesCopy;
  v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v14)
  {
    v15 = *v34;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v34 != v15)
        {
          objc_enumerationMutation(v13);
        }

        v17 = *(*(&v33 + 1) + 8 * i);
        v18 = [mapCopy objectForKeyedSubscript:v17];
        if (!v18)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"TRITaskQueue.m" lineNumber:537 description:{@"Creating operation for task %@ with unknown dependency id %@", taskCopy, v17}];
        }

        [v12 addDependency:v18];
      }

      v14 = [v13 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v14);
  }

  objc_initWeak(&location, v12);
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __69__TRITaskQueue__createOperationWithTask_withId_dependencies_taskMap___block_invoke;
  v27[3] = &unk_279DE36C8;
  objc_copyWeak(&v31, &location);
  v20 = taskCopy;
  v28 = v20;
  v21 = idCopy;
  v29 = v21;
  selfCopy = self;
  [v12 addExecutionBlock:v27];

  objc_destroyWeak(&v31);
  objc_destroyWeak(&location);

  v22 = *MEMORY[0x277D85DE8];

  return v12;
}

void __69__TRITaskQueue__createOperationWithTask_withId_dependencies_taskMap___block_invoke(uint64_t a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v2 = os_transaction_create();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v4 = [WeakRetained isCancelled];
  v5 = TRILogCategory_Server();
  v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
  if (v4)
  {
    if (v6)
    {
      v7 = *(a1 + 32);
      v8 = *(a1 + 40);
      *buf = 138543618;
      v46 = v7;
      v47 = 2112;
      v48 = v8;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "%{public}@ [tid:%@] was cancelled", buf, 0x16u);
    }

    v9 = [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
  }

  else
  {
    if (v6)
    {
      v10 = *(a1 + 32);
      v11 = *(a1 + 40);
      v12 = [v10 tags];
      v13 = [v12 componentsJoinedByString:{@", "}];
      v14 = v13;
      v15 = &stru_287FA0430;
      *buf = 138543874;
      if (v13)
      {
        v15 = v13;
      }

      v46 = v10;
      v47 = 2112;
      v48 = v11;
      v49 = 2114;
      v50 = v15;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Starting %{public}@ [tid:%@] with tags {%{public}@}", buf, 0x20u);
    }

    [*(a1 + 32) setStateProvider:*(a1 + 48)];
    v9 = [*(a1 + 48) _runTask:*(a1 + 32)];
    if (([v9 reportResultToServer] & 1) == 0)
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
      {
        v42 = *(a1 + 32);
        *buf = 138412546;
        v46 = v42;
        v47 = 2112;
        v48 = v9;
        _os_log_debug_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEBUG, "Asked not to report telemetry for task %@ with result %@", buf, 0x16u);
      }
    }

    if ([v9 reportResultToServer] && objc_msgSend(*(*(a1 + 48) + 48), "shouldLogAtLevel:", 20))
    {
      v17 = [MEMORY[0x277D73B40] metricWithName:@"task_status" integerValue:{objc_msgSend(v9, "runStatus")}];
      v44 = v17;
      v18 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
      v19 = [v18 mutableCopy];

      v20 = *(a1 + 32);
      if ([objc_opt_class() conformsToProtocol:&unk_287FDBB78])
      {
        if ([v9 runStatus] != 1)
        {
          v21 = [*(a1 + 32) retryCount];
          if (v21 >= 1)
          {
            v22 = [MEMORY[0x277D73B40] metricWithName:@"retry_count" integerValue:v21];
            [v19 addObject:v22];
          }
        }
      }

      v23 = objc_opt_new();
      v24 = [*(a1 + 32) taskName];
      [v23 setTrialdTaskName:v24];

      v43 = v2;
      if ([*(*(a1 + 48) + 48) shouldLogAtLevel:20 withPrivacyRadar:54260918] && (v25 = *(a1 + 32), objc_msgSend(objc_opt_class(), "conformsToProtocol:", &unk_287FDB4A0)))
      {
        v26 = [*(a1 + 32) dimensions];
        v27 = [*(a1 + 32) metrics];
        if (v27)
        {
          [v19 addObjectsFromArray:v27];
        }

        v28 = [*(a1 + 32) trialSystemTelemetry];
        if (v28)
        {
          [v23 mergeFrom:v28];
        }

        v29 = v23;
        v30 = v19;
      }

      else
      {
        v29 = v23;
        v30 = v19;
        v26 = 0;
      }

      v31 = [*(*(a1 + 48) + 48) logger];
      v32 = [*(*(a1 + 48) + 48) trackingId];
      v33 = MEMORY[0x277D73BB8];
      v34 = objc_loadWeakRetained((*(a1 + 48) + 16));
      v35 = [v33 fullSystemDimensions:v34];
      [v31 logWithTrackingId:v32 metrics:v30 dimensions:v26 systemDimensions:v35 trialSystemTelemetry:v29];

      v2 = v43;
    }

    v36 = TRILogCategory_Server();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      v38 = *(a1 + 32);
      v37 = *(a1 + 40);
      v39 = [v9 runStatus];
      if (v39 >= 5)
      {
        v40 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", v39];
      }

      else
      {
        v40 = off_279DE39F8[v39];
      }

      *buf = 138543874;
      v46 = v38;
      v47 = 2112;
      v48 = v37;
      v49 = 2112;
      v50 = v40;
      _os_log_impl(&dword_26F567000, v36, OS_LOG_TYPE_DEFAULT, "%{public}@ [tid:%@] finished with status %@", buf, 0x20u);
    }

    if ([v9 runStatus] != 2)
    {
      [WeakRetained cancel];
    }
  }

  [*(a1 + 48) _finalizeTask:*(a1 + 32) withId:*(a1 + 40) runResult:v9];

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_startImmediateTasksIfNotAlreadyQueued:(id)queued guardedData:(id)data didStartNewWork:(BOOL *)work
{
  v80 = *MEMORY[0x277D85DE8];
  queuedCopy = queued;
  dataCopy = data;
  buf[0] = 0;
  selfCopy = self;
  [(TRITaskQueue *)self _evaluateRunConditionsWithGuardedData:dataCopy shouldContinueWork:buf];
  if (buf[0] == 1)
  {
    v52 = os_transaction_create();
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v10 = v9;
    v59 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(queuedCopy, "count")}];
    v70 = 0u;
    v71 = 0u;
    v72 = 0u;
    v73 = 0u;
    v53 = queuedCopy;
    obj = queuedCopy;
    v11 = [obj countByEnumeratingWithState:&v70 objects:v79 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v71;
      v55 = *v71;
      do
      {
        v14 = 0;
        v56 = v12;
        do
        {
          if (*v71 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v70 + 1) + 8 * v14);
          v16 = objc_autoreleasePoolPush();
          v17 = dataCopy[3];
          taskId = [v15 taskId];
          v19 = [v17 objectForKeyedSubscript:taskId];

          if (v19)
          {
            taskId2 = [v15 taskId];
            [v59 setObject:v19 forKeyedSubscript:taskId2];
          }

          else
          {
            taskId2 = [v15 copy];
            startDate = [v15 startDate];
            v22 = startDate;
            if (startDate)
            {
              [startDate timeIntervalSinceReferenceDate];
              if (v23 > v10)
              {
                v24 = TRILogCategory_Server();
                if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
                {
                  taskId3 = [v15 taskId];
                  *buf = 138412546;
                  v76 = taskId3;
                  v77 = 2112;
                  v78 = v22;
                  _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "asked to start task [tid:%@] with future start date %@", buf, 0x16u);
                }
              }
            }

            task = [taskId2 task];
            v20TaskId = [taskId2 taskId];
            dependencies = [taskId2 dependencies];
            v19 = [(TRITaskQueue *)selfCopy _createOperationWithTask:task withId:v20TaskId dependencies:dependencies taskMap:v59];

            v20TaskId2 = [taskId2 taskId];
            [v59 setObject:v19 forKeyedSubscript:v20TaskId2];

            v13 = v55;
            v12 = v56;
          }

          objc_autoreleasePoolPop(v16);
          ++v14;
        }

        while (v12 != v14);
        v12 = [obj countByEnumeratingWithState:&v70 objects:v79 count:16];
      }

      while (v12);
    }

    v68 = 0u;
    v69 = 0u;
    v66 = 0u;
    v67 = 0u;
    v30 = obj;
    v31 = [v30 countByEnumeratingWithState:&v66 objects:v74 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v67;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v67 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v66 + 1) + 8 * i);
          v36 = dataCopy[3];
          taskId4 = [v35 taskId];
          v38 = [v36 objectForKeyedSubscript:taskId4];

          if (!v38)
          {
            taskId5 = [v35 taskId];
            v40 = [v59 objectForKeyedSubscript:taskId5];

            if (v40)
            {
              if (work)
              {
                *work = 1;
              }

              v41 = dataCopy[3];
              taskId6 = [v35 taskId];
              [v41 setObject:v40 forKeyedSubscript:taskId6];

              v43 = TRILogCategory_Server();
              if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
              {
                task2 = [v35 task];
                taskId7 = [v35 taskId];
                *buf = 138543618;
                v76 = task2;
                v77 = 2112;
                v78 = taskId7;
                _os_log_impl(&dword_26F567000, v43, OS_LOG_TYPE_DEFAULT, "Enqueueing eligible task %{public}@ [tid:%@]", buf, 0x16u);
              }

              opQueue = selfCopy->_opQueue;
              opGroup = selfCopy->_opGroup;
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              block[2] = __83__TRITaskQueue__startImmediateTasksIfNotAlreadyQueued_guardedData_didStartNewWork___block_invoke;
              block[3] = &unk_279DE0080;
              v63 = v40;
              v64 = selfCopy;
              v65 = v35;
              dispatch_group_async(opGroup, opQueue, block);
              if (!dataCopy[7])
              {
                v60[0] = MEMORY[0x277D85DD0];
                v60[1] = 3221225472;
                v60[2] = __83__TRITaskQueue__startImmediateTasksIfNotAlreadyQueued_guardedData_didStartNewWork___block_invoke_3;
                v60[3] = &unk_279DDF7A0;
                v60[4] = selfCopy;
                v61 = dataCopy;
                v48 = MEMORY[0x2743948D0](v60);
                v49 = [v48 copy];
                v50 = dataCopy[7];
                dataCopy[7] = v49;

                v48[2](v48);
              }
            }
          }
        }

        v32 = [v30 countByEnumeratingWithState:&v66 objects:v74 count:16];
      }

      while (v32);
    }

    queuedCopy = v53;
  }

  v51 = *MEMORY[0x277D85DE8];
}

uint64_t __83__TRITaskQueue__startImmediateTasksIfNotAlreadyQueued_guardedData_didStartNewWork___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) isCancelled])
  {
    v2 = *(*(a1 + 40) + 8);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __83__TRITaskQueue__startImmediateTasksIfNotAlreadyQueued_guardedData_didStartNewWork___block_invoke_2;
    v5[3] = &unk_279DE3628;
    v5[4] = *(a1 + 48);
    return [v2 runWithLockAcquired:v5];
  }

  else
  {
    [*(a1 + 32) setInProgress:1];
    [*(a1 + 32) main];
    v4 = *(a1 + 32);

    return [v4 setInProgress:0];
  }
}

void __83__TRITaskQueue__startImmediateTasksIfNotAlreadyQueued_guardedData_didStartNewWork___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3 = [*(a1 + 32) taskId];
  [v2 setObject:0 forKeyedSubscript:v3];
}

void __83__TRITaskQueue__startImmediateTasksIfNotAlreadyQueued_guardedData_didStartNewWork___block_invoke_3(uint64_t a1)
{
  v2 = TRILogCategory_Server();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v2, OS_LOG_TYPE_DEFAULT, "setting up task queue completion block", buf, 2u);
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 32);
  v6 = *(v4 + 40);
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__TRITaskQueue__startImmediateTasksIfNotAlreadyQueued_guardedData_didStartNewWork___block_invoke_250;
  v7[3] = &unk_279DDF7A0;
  v7[4] = v4;
  v8 = v3;
  dispatch_group_notify(v5, v6, v7);
}

void __83__TRITaskQueue__startImmediateTasksIfNotAlreadyQueued_guardedData_didStartNewWork___block_invoke_250(uint64_t a1)
{
  v2 = TRILogCategory_Server();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v2, OS_LOG_TYPE_DEFAULT, "task queue completion block called", buf, 2u);
  }

  v4 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5 = *(v4 + 8);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __83__TRITaskQueue__startImmediateTasksIfNotAlreadyQueued_guardedData_didStartNewWork___block_invoke_251;
  v6[3] = &unk_279DE36F0;
  v6[4] = v4;
  v7 = v3;
  [v5 runWithLockAcquired:v6];
}

void __83__TRITaskQueue__startImmediateTasksIfNotAlreadyQueued_guardedData_didStartNewWork___block_invoke_251(uint64_t a1, uint64_t a2)
{
  if ([*(a1 + 32) finishXPCActivitiesWithGuardedData:a2])
  {
    v3 = *(a1 + 40);
    v4 = *(v3 + 56);
    *(v3 + 56) = 0;
  }

  else
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *v6 = 0;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "task queue not complete yet", v6, 2u);
    }

    (*(*(*(a1 + 40) + 56) + 16))();
  }
}

- (BOOL)_removeTaskWithId:(id)id guardedData:(id)data persistRemove:(BOOL)remove
{
  removeCopy = remove;
  v20 = *MEMORY[0x277D85DE8];
  idCopy = id;
  dataCopy = data;
  v10 = TRILogCategory_Server();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412290;
    v19 = idCopy;
    _os_log_debug_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEBUG, "removing task with [tid:%@]", buf, 0xCu);
  }

  [dataCopy[3] setObject:0 forKeyedSubscript:idCopy];
  if (removeCopy)
  {
    v11 = dataCopy[2];
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __60__TRITaskQueue__removeTaskWithId_guardedData_persistRemove___block_invoke;
    v15[3] = &unk_279DE3718;
    v16 = idCopy;
    selfCopy = self;
    v12 = [v11 removeTaskWithId:v16 cleanupBlock:v15];
  }

  else
  {
    v12 = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

void __60__TRITaskQueue__removeTaskWithId_guardedData_persistRemove___block_invoke(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v7;
    _os_log_debug_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEBUG, "Running dequeue handler for %@ [tid:%@]", &v8, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained((*(a1 + 40) + 16));
  [v3 runDequeueHandlerUsingContext:WeakRetained];

  v6 = *MEMORY[0x277D85DE8];
}

- (BOOL)ifNotPresentAddTask:(id)task
{
  taskCopy = task;
  v5 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
  LODWORD(self) = [(TRITaskQueue *)self _addTask:taskCopy options:v5 taskId:0 tryRunningEligibleTasksImmediately:0];

  return self != 2;
}

- (BOOL)addTaskAfterOperationsFinish:(id)finish
{
  finishCopy = finish;
  v5 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
  dispatch_group_wait(self->_opGroup, 0xFFFFFFFFFFFFFFFFLL);
  LODWORD(self) = [(TRITaskQueue *)self _addTask:finishCopy options:v5 taskId:0 tryRunningEligibleTasksImmediately:0];

  return self != 2;
}

- ($A5A652246548B43F8BC05201A1C72A70)_addTask:(id)task options:(id)options taskId:(id *)id tryRunningEligibleTasksImmediately:(BOOL)immediately
{
  taskCopy = task;
  optionsCopy = options;
  v12 = os_transaction_create();
  v24 = 0;
  v25 = &v24;
  v26 = 0x2810000000;
  v27 = &unk_26F7089E2;
  v28 = 2;
  lock = self->_lock;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __75__TRITaskQueue__addTask_options_taskId_tryRunningEligibleTasksImmediately___block_invoke;
  v18[3] = &unk_279DE3740;
  v21 = &v24;
  v18[4] = self;
  v14 = taskCopy;
  v19 = v14;
  v15 = optionsCopy;
  v20 = v15;
  idCopy = id;
  immediatelyCopy = immediately;
  [(_PASLock *)lock runWithLockAcquired:v18];
  v16.var0 = *(v25 + 32);

  _Block_object_dispose(&v24, 8);
  return v16;
}

uint64_t __75__TRITaskQueue__addTask_options_taskId_tryRunningEligibleTasksImmediately___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _addTask:*(a1 + 40) options:*(a1 + 48) guardedData:a2 taskId:*(a1 + 64) tryRunningEligibleTasksImmediately:*(a1 + 72)];
  *(*(*(a1 + 56) + 8) + 32) = result;
  return result;
}

- ($A5A652246548B43F8BC05201A1C72A70)_addTask:(id)task options:(id)options guardedData:(id)data taskId:(id *)id tryRunningEligibleTasksImmediately:(BOOL)immediately
{
  immediatelyCopy = immediately;
  dataCopy = data;
  optionsCopy = options;
  taskCopy = task;
  v15 = os_transaction_create();
  v16 = objc_opt_new();
  obj = 0;
  v17.var0 = [(TRITaskQueue *)self _addTask:taskCopy options:optionsCopy guardedData:dataCopy taskIdOut:&obj accumulatedNewTaskRecords:v16];

  if (v17.var0 != 2 && [v16 count] && immediatelyCopy)
  {
    [(TRITaskQueue *)self _startRunnableTasksIfNecessaryWithGuardedData:dataCopy];
  }

  if (id)
  {
    objc_storeStrong(id, obj);
  }

  return v17;
}

- (void)_startRunnableTasksIfNecessaryWithGuardedData:(id)data
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  v5 = dataCopy[2];
  v6 = dataCopy[5];
  v7 = objc_opt_new();
  v8 = [v5 dependencyFreeTasksForAllowedCapabilities:v6 dateForRunnability:v7];

  allKeys = [v8 allKeys];
  v10 = [allKeys _pas_mappedArrayWithTransform:&__block_literal_global_256];

  v11 = TRILogCategory_Server();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    v12 = [v8 count];
    v13 = dataCopy[5];
    *buf = 134218498;
    *&buf[4] = v12;
    v19 = 2048;
    v20 = v13;
    v21 = 2112;
    v22 = v10;
    _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Found %lu dependency-free tasks to consider starting for capability %llu: %@", buf, 0x20u);
  }

  if (v8)
  {
    v17 = 0;
    *buf = 0;
    v14 = dataCopy[5];
    v15 = [MEMORY[0x277CBEAA8] now];
    [(TRITaskQueue *)self _partitionTaskGroup:v8 byRunnabilityGivenCapabilities:v14 runnableAtDate:v15 topoSortedCurrentlyRunnable:buf blocked:&v17 allowOnlyRootTasksRunnable:1];

    [(TRITaskQueue *)self _startImmediateTasksIfNotAlreadyQueued:*buf guardedData:dataCopy didStartNewWork:0];
  }

  v16 = *MEMORY[0x277D85DE8];
}

id __62__TRITaskQueue__startRunnableTasksIfNecessaryWithGuardedData___block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [[v2 alloc] initWithFormat:@"[tid:%@]", v3];

  return v4;
}

- (BOOL)_isTaskWithId:(id)id inTaskGroup:(id)group runnableGivenCapabilities:(unint64_t)capabilities atDate:(id)date cachedRunnability:(id)runnability visitedPath:(id)path topoSortedRunnable:(id)runnable allowOnlyRootTasksRunnable:(BOOL)self0
{
  v78 = *MEMORY[0x277D85DE8];
  idCopy = id;
  groupCopy = group;
  v19 = idCopy;
  v66 = groupCopy;
  dateCopy = date;
  runnabilityCopy = runnability;
  pathCopy = path;
  runnableCopy = runnable;
  v22 = objc_autoreleasePoolPush();
  v23 = [runnabilityCopy objectForKeyedSubscript:idCopy];
  v24 = v23;
  if (!v23)
  {
    v62 = v22;
    if ([pathCopy containsObject:idCopy])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"TRITaskQueue.m" lineNumber:816 description:@"Dependency graph contains a cycle"];
    }

    v26 = [pathCopy setByAddingObject:idCopy];

    v63 = v19;
    v27 = [v66 objectForKeyedSubscript:v19];
    if (!v27)
    {
      currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRITaskQueue.m" lineNumber:820 description:{@"Invalid parameter not satisfying: %@", @"record"}];
    }

    v69 = 0u;
    v70 = 0u;
    v67 = 0u;
    v68 = 0u;
    v61 = v27;
    dependencies = [v27 dependencies];
    v29 = [dependencies countByEnumeratingWithState:&v67 objects:v77 count:16];
    if (v29)
    {
      v30 = v29;
      v31 = *v68;
      while (2)
      {
        for (i = 0; i != v30; ++i)
        {
          if (*v68 != v31)
          {
            objc_enumerationMutation(dependencies);
          }

          v33 = *(*(&v67 + 1) + 8 * i);
          LOBYTE(v60) = tasksRunnable;
          if (![(TRITaskQueue *)self _isTaskWithId:v33 inTaskGroup:v66 runnableGivenCapabilities:capabilities atDate:dateCopy cachedRunnability:runnabilityCopy visitedPath:v26 topoSortedRunnable:runnableCopy allowOnlyRootTasksRunnable:v60])
          {
            v41 = TRILogCategory_Server();
            v34 = v61;
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              task = [v61 task];
              *buf = 138543618;
              v72 = task;
              v73 = 2112;
              v74 = v33;
              _os_log_impl(&dword_26F567000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ not runnable, dependency with [tid:%@] is not runnable", buf, 0x16u);
            }

            v19 = v63;
            [runnabilityCopy setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v63];

            goto LABEL_23;
          }
        }

        v30 = [dependencies countByEnumeratingWithState:&v67 objects:v77 count:16];
        if (v30)
        {
          continue;
        }

        break;
      }
    }

    v34 = v61;
    if (tasksRunnable)
    {
      dependencies2 = [v61 dependencies];
      v36 = [dependencies2 count];

      if (v36)
      {
        v37 = TRILogCategory_Server();
        v19 = v63;
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          task2 = [v61 task];
          dependencies3 = [v61 dependencies];
          v40 = [dependencies3 count];
          *buf = 138543618;
          v72 = task2;
          v73 = 2048;
          v74 = v40;
          _os_log_impl(&dword_26F567000, v37, OS_LOG_TYPE_DEFAULT, "%{public}@ not runnable, waiting on %tu dependency/dependencies", buf, 0x16u);
        }

        [runnabilityCopy setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v63];
LABEL_23:
        bOOLValue = 0;
        v24 = 0;
        goto LABEL_24;
      }
    }

    task3 = [v61 task];
    requiredCapabilities = [task3 requiredCapabilities];

    v19 = v63;
    if ([TRITaskCapabilityUtilities requiredCapabilities:requiredCapabilities areSupportedByAllowedCapabilities:capabilities])
    {
      startDate = [v61 startDate];
      v24 = 0;
      if (!startDate)
      {
        goto LABEL_34;
      }

      v48 = startDate;
      startDate2 = [v61 startDate];
      [startDate2 timeIntervalSinceReferenceDate];
      v51 = v50;
      [dateCopy timeIntervalSinceReferenceDate];
      v53 = v52;

      if (v51 <= v53)
      {
LABEL_34:
        [runnabilityCopy setObject:MEMORY[0x277CBEC38] forKeyedSubscript:v63];
        [runnableCopy addObject:v61];
        bOOLValue = 1;
        goto LABEL_24;
      }

      v54 = TRILogCategory_Server();
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        task4 = [v61 task];
        startDate3 = [v61 startDate];
        *buf = 138543618;
        v72 = task4;
        v73 = 2112;
        v74 = startDate3;
        _os_log_impl(&dword_26F567000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@ not runnable, start date %@ in the future", buf, 0x16u);
      }
    }

    else
    {
      v54 = TRILogCategory_Server();
      v24 = 0;
      if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
      {
        task5 = [v61 task];
        *buf = 138543874;
        v72 = task5;
        v73 = 2048;
        v74 = requiredCapabilities;
        v75 = 2048;
        capabilitiesCopy = capabilities;
        _os_log_impl(&dword_26F567000, v54, OS_LOG_TYPE_DEFAULT, "%{public}@ not runnable, capabilities required: %llu, supported: %llu", buf, 0x20u);
      }
    }

    [runnabilityCopy setObject:MEMORY[0x277CBEC28] forKeyedSubscript:v63];
    bOOLValue = 0;
LABEL_24:

    v22 = v62;
    goto LABEL_25;
  }

  bOOLValue = [v23 BOOLValue];
  v26 = pathCopy;
LABEL_25:

  objc_autoreleasePoolPop(v22);
  v43 = *MEMORY[0x277D85DE8];
  return bOOLValue;
}

- (void)_partitionTaskGroup:(id)group byRunnabilityGivenCapabilities:(unint64_t)capabilities runnableAtDate:(id)date topoSortedCurrentlyRunnable:(id *)runnable blocked:(id *)blocked allowOnlyRootTasksRunnable:(BOOL)tasksRunnable
{
  v52 = *MEMORY[0x277D85DE8];
  groupCopy = group;
  dateCopy = date;
  context = objc_autoreleasePoolPush();
  v14 = objc_opt_new();
  v15 = objc_opt_new();
  v16 = objc_opt_new();
  v17 = objc_opt_new();
  v18 = TRILogCategory_Server();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    capabilitiesCopy = capabilities;
    _os_log_impl(&dword_26F567000, v18, OS_LOG_TYPE_DEFAULT, "Partitioning task group into runnable/blocked for capabilities %llu", buf, 0xCu);
  }

  v39[0] = MEMORY[0x277D85DD0];
  v39[1] = 3221225472;
  v39[2] = __145__TRITaskQueue__partitionTaskGroup_byRunnabilityGivenCapabilities_runnableAtDate_topoSortedCurrentlyRunnable_blocked_allowOnlyRootTasksRunnable___block_invoke;
  v39[3] = &unk_279DE3768;
  v39[4] = self;
  v19 = groupCopy;
  v40 = v19;
  capabilitiesCopy2 = capabilities;
  v20 = dateCopy;
  v41 = v20;
  v42 = v14;
  v43 = v17;
  v21 = v15;
  v44 = v21;
  tasksRunnableCopy = tasksRunnable;
  v22 = v16;
  v45 = v22;
  v23 = v17;
  v24 = v14;
  [v19 enumerateKeysAndObjectsUsingBlock:v39];
  v25 = [v21 _pas_mappedArrayWithTransform:&__block_literal_global_268];
  v26 = [v22 _pas_mappedArrayWithTransform:&__block_literal_global_270];
  v27 = TRILogCategory_Server();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    v28 = [v25 count];
    *buf = 134218242;
    capabilitiesCopy = v28;
    v50 = 2114;
    v51 = v25;
    _os_log_impl(&dword_26F567000, v27, OS_LOG_TYPE_DEFAULT, "Found %lu runnable tasks: %{public}@", buf, 0x16u);
  }

  v29 = TRILogCategory_Server();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    v30 = [v26 count];
    *buf = 134218242;
    capabilitiesCopy = v30;
    v50 = 2114;
    v51 = v26;
    _os_log_impl(&dword_26F567000, v29, OS_LOG_TYPE_DEFAULT, "Found %lu blocked tasks: %{public}@", buf, 0x16u);
  }

  v31 = *runnable;
  *runnable = v21;
  v32 = v21;

  v33 = *blocked;
  *blocked = v22;
  v34 = v22;

  objc_autoreleasePoolPop(context);
  v35 = *MEMORY[0x277D85DE8];
}

void __145__TRITaskQueue__partitionTaskGroup_byRunnabilityGivenCapabilities_runnableAtDate_topoSortedCurrentlyRunnable_blocked_allowOnlyRootTasksRunnable___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  LOBYTE(v5) = *(a1 + 96);
  if (([*(a1 + 32) _isTaskWithId:a2 inTaskGroup:*(a1 + 40) runnableGivenCapabilities:*(a1 + 88) atDate:*(a1 + 48) cachedRunnability:*(a1 + 56) visitedPath:*(a1 + 64) topoSortedRunnable:*(a1 + 72) allowOnlyRootTasksRunnable:v5] & 1) == 0)
  {
    [*(a1 + 80) addObject:v6];
  }
}

id __145__TRITaskQueue__partitionTaskGroup_byRunnabilityGivenCapabilities_runnableAtDate_topoSortedCurrentlyRunnable_blocked_allowOnlyRootTasksRunnable___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 taskId];

  v6 = [v4 initWithFormat:@"[tid:%@]", v5];

  return v6;
}

id __145__TRITaskQueue__partitionTaskGroup_byRunnabilityGivenCapabilities_runnableAtDate_topoSortedCurrentlyRunnable_blocked_allowOnlyRootTasksRunnable___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCACA8];
  v3 = a2;
  v4 = [v2 alloc];
  v5 = [v3 taskId];

  v6 = [v4 initWithFormat:@"[tid:%@]", v5];

  return v6;
}

- ($A5A652246548B43F8BC05201A1C72A70)_addTask:(id)task options:(id)options guardedData:(id)data taskIdOut:(id *)out accumulatedNewTaskRecords:(id)records
{
  v69 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  optionsCopy = options;
  dataCopy = data;
  recordsCopy = records;
  v14 = [dataCopy[2] idForTask:taskCopy];
  if (!v14)
  {
    goto LABEL_17;
  }

  duplicateTaskResolution = [optionsCopy duplicateTaskResolution];
  if (duplicateTaskResolution == 1)
  {
    v17 = [dataCopy[3] objectForKeyedSubscript:v14];
    v18 = v17;
    if (v17 && [v17 inProgress])
    {
      v19 = TRILogCategory_Server();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        *&buf[4] = v14;
        *&buf[12] = 2112;
        *&buf[14] = taskCopy;
        _os_log_impl(&dword_26F567000, v19, OS_LOG_TYPE_DEFAULT, "task with [tid:%@] is already running. Not replacing it with: %@", buf, 0x16u);
      }

      goto LABEL_12;
    }

    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *&buf[4] = v14;
      *&buf[12] = 2112;
      *&buf[14] = taskCopy;
      _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEFAULT, "replacing existing task with [tid:%@]: %@", buf, 0x16u);
    }

    [(TRITaskQueue *)self _cancelDependenciesAndTaskWithId:v14 guardedData:dataCopy];
LABEL_17:
    v23 = TRILogCategory_Server();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      *&buf[4] = taskCopy;
      _os_log_impl(&dword_26F567000, v23, OS_LOG_TYPE_DEFAULT, "adding task to task queue: %@", buf, 0xCu);
    }

    dependencies = [taskCopy dependencies];
    v25 = dependencies;
    v26 = MEMORY[0x277CBEBF8];
    if (dependencies)
    {
      v26 = dependencies;
    }

    v27 = v26;

    v28 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v27, "count")}];
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v68 = 1;
    v29 = [v27 count];
    v30 = TRILogCategory_Server();
    v31 = os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG);
    if (v29)
    {
      if (v31)
      {
        *v63 = 138412290;
        v64 = taskCopy;
        _os_log_debug_impl(&dword_26F567000, v30, OS_LOG_TYPE_DEBUG, "checking dependencies for task: %@", v63, 0xCu);
      }

      v32 = +[TRITaskQueuingOptions defaultOptionsWithIgnoreDuplicates];
      v55[0] = MEMORY[0x277D85DD0];
      v55[1] = 3221225472;
      v55[2] = __81__TRITaskQueue__addTask_options_guardedData_taskIdOut_accumulatedNewTaskRecords___block_invoke;
      v55[3] = &unk_279DE37B0;
      v55[4] = self;
      v30 = v32;
      v56 = v30;
      v57 = dataCopy;
      v58 = recordsCopy;
      v62 = a2;
      v59 = v28;
      v61 = buf;
      v60 = taskCopy;
      [v27 enumerateObjectsUsingBlock:v55];
    }

    else if (v31)
    {
      *v63 = 138412290;
      v64 = taskCopy;
      _os_log_debug_impl(&dword_26F567000, v30, OS_LOG_TYPE_DEBUG, "task %@ has no dependencies", v63, 0xCu);
    }

    if (*(*&buf[8] + 24))
    {
      v33 = TRILogCategory_Server();
      if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
      {
        v34 = [v28 count];
        *v63 = 134218242;
        v64 = v34;
        v65 = 2112;
        v66 = taskCopy;
        _os_log_impl(&dword_26F567000, v33, OS_LOG_TYPE_DEFAULT, "adding task with %tu dependencies to task queue: %@", v63, 0x16u);
      }

      v35 = [(TRITaskQueue *)self _addTask:taskCopy withDependencies:v28 guardedData:dataCopy];

      if (v35)
      {
        v36 = [TRITaskRecord alloc];
        startTime = [taskCopy startTime];
        requiredCapabilities = [taskCopy requiredCapabilities];
        tags = [taskCopy tags];
        v40 = tags;
        if (tags)
        {
          v41 = tags;
        }

        else
        {
          v41 = MEMORY[0x277CBEBF8];
        }

        v42 = [(TRITaskRecord *)v36 initWithTaskId:v35 task:taskCopy startDate:startTime dependencies:v28 capabilities:requiredCapabilities tags:v41];

        [recordsCopy addObject:v42];
        v20.var0 = 0;
      }

      else
      {
        v20.var0 = 2;
      }

      v14 = v35;
      v45 = *out;
      *out = v14;
    }

    else
    {
      if (![v28 count])
      {
        v20.var0 = 2;
LABEL_43:
        _Block_object_dispose(buf, 8);

        goto LABEL_44;
      }

      v43 = TRILogCategory_Server();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        v44 = [v28 count];
        *v63 = 134218242;
        v64 = v44;
        v65 = 2112;
        v66 = taskCopy;
        _os_log_impl(&dword_26F567000, v43, OS_LOG_TYPE_DEFAULT, "cancelling %tu dependencies of task: %@", v63, 0x16u);
      }

      v51[0] = MEMORY[0x277D85DD0];
      v51[1] = 3221225472;
      v51[2] = __81__TRITaskQueue__addTask_options_guardedData_taskIdOut_accumulatedNewTaskRecords___block_invoke_277;
      v51[3] = &unk_279DE37D8;
      v52 = taskCopy;
      selfCopy = self;
      v54 = dataCopy;
      [v28 enumerateObjectsUsingBlock:v51];

      v20.var0 = 2;
      v45 = v52;
    }

    goto LABEL_43;
  }

  if (duplicateTaskResolution)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRITaskQueue.m" lineNumber:935 description:{@"failed to handle duplicate task resolution: %u", objc_msgSend(optionsCopy, "duplicateTaskResolution")}];

    goto LABEL_17;
  }

  v16 = TRILogCategory_Server();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    *&buf[4] = v14;
    *&buf[12] = 2112;
    *&buf[14] = taskCopy;
    _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "task already exists with id [tid:%@]: %@", buf, 0x16u);
  }

  objc_storeStrong(out, v14);
LABEL_12:
  v20.var0 = 1;
LABEL_44:

  v46 = *MEMORY[0x277D85DE8];
  return v20;
}

void __81__TRITaskQueue__addTask_options_guardedData_taskIdOut_accumulatedNewTaskRecords___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v11 = 0;
  if ([*(a1 + 32) _addTask:v6 options:*(a1 + 40) guardedData:*(a1 + 48) taskIdOut:&v11 accumulatedNewTaskRecords:*(a1 + 56)] == 2)
  {
    *a4 = 1;
    *(*(*(a1 + 80) + 8) + 24) = 0;
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v9 = *(a1 + 72);
      *buf = 138412546;
      v13 = v6;
      v14 = 2112;
      v15 = v9;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "failed to add dependency %@ for task: %@", buf, 0x16u);
    }
  }

  else
  {
    if (!v11)
    {
      v10 = [MEMORY[0x277CCA890] currentHandler];
      [v10 handleFailureInMethod:*(a1 + 88) object:*(a1 + 32) file:@"TRITaskQueue.m" lineNumber:958 description:{@"Invalid parameter not satisfying: %@", @"depTaskId != nil"}];
    }

    [*(a1 + 64) addObject:?];
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __81__TRITaskQueue__addTask_options_guardedData_taskIdOut_accumulatedNewTaskRecords___block_invoke_277(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v3;
    v9 = 2112;
    v10 = v5;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "cancelling dependency task [tid:%@] of task %@", &v7, 0x16u);
  }

  [*(a1 + 40) _cancelTaskWithId:v3 guardedData:*(a1 + 48) persistCancel:1];
  v6 = *MEMORY[0x277D85DE8];
}

- (id)_addTask:(id)task withDependencies:(id)dependencies guardedData:(id)data
{
  v28 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  dataCopy = data;
  dependenciesCopy = dependencies;
  tags = [taskCopy tags];
  startTime = [taskCopy startTime];
  v13 = dataCopy[2];

  v21 = 0;
  v14 = [v13 addTask:taskCopy startTime:startTime tags:tags dependencies:dependenciesCopy error:&v21];

  v15 = v21;
  if (!v14)
  {
    goto LABEL_5;
  }

  v16 = TRILogCategory_Server();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138412546;
    v23 = taskCopy;
    v24 = 2112;
    v25 = v14;
    _os_log_debug_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEBUG, "Running enqueue handler for %@ [tid:%@]", buf, 0x16u);
  }

  WeakRetained = objc_loadWeakRetained(&self->_serverContext);
  [taskCopy runEnqueueHandlerUsingContext:WeakRetained];

  if (v15)
  {
LABEL_5:
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412802;
      v23 = taskCopy;
      v24 = 2112;
      v25 = startTime;
      v26 = 2112;
      v27 = v15;
      _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "failed to add %@ with start time %@: %@", buf, 0x20u);
    }

    v14 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)cancelTask:(id)task
{
  taskCopy = task;
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __27__TRITaskQueue_cancelTask___block_invoke;
  v8[3] = &unk_279DE3828;
  v10 = &v11;
  v8[4] = self;
  v6 = taskCopy;
  v9 = v6;
  [(_PASLock *)lock runWithLockAcquired:v8];
  LOBYTE(lock) = *(v12 + 24);

  _Block_object_dispose(&v11, 8);
  return lock;
}

uint64_t __27__TRITaskQueue_cancelTask___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _cancelTask:*(a1 + 40) guardedData:a2];
  *(*(*(a1 + 48) + 8) + 24) = result;
  return result;
}

- (BOOL)_cancelDependenciesAndTaskWithId:(id)id guardedData:(id)data
{
  v27 = *MEMORY[0x277D85DE8];
  idCopy = id;
  dataCopy = data;
  v8 = [dataCopy[2] tasksDependentOnTask:idCopy];
  v9 = v8;
  if (v8 && [v8 count])
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v24 = idCopy;
      v25 = 2112;
      v26 = v9;
      _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "cannot cancel task with [tid:%@] since other tasks depend on it: %@", buf, 0x16u);
    }

    v11 = 0;
  }

  else
  {
    v10 = [dataCopy[2] directDependenciesOfTaskWithId:idCopy];
    v11 = [(TRITaskQueue *)self _cancelTaskWithId:idCopy guardedData:dataCopy persistCancel:1];
    if (v10)
    {
      v20 = 0u;
      v21 = 0u;
      v18 = 0u;
      v19 = 0u;
      v10 = v10;
      v12 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v12)
      {
        v13 = v12;
        v14 = *v19;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v19 != v14)
            {
              objc_enumerationMutation(v10);
            }

            [(TRITaskQueue *)self _cancelDependenciesAndTaskWithId:*(*(&v18 + 1) + 8 * i) guardedData:dataCopy, v18];
          }

          v13 = [v10 countByEnumeratingWithState:&v18 objects:v22 count:16];
        }

        while (v13);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_cancelTask:(id)task guardedData:(id)data
{
  v19 = *MEMORY[0x277D85DE8];
  taskCopy = task;
  dataCopy = data;
  v8 = [dataCopy[2] idForTask:taskCopy];
  if (!v8)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v15 = 138412290;
      v16 = taskCopy;
      _os_log_debug_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEBUG, "cannot cancel task since it is not queued: %@", &v15, 0xCu);
    }

    goto LABEL_7;
  }

  v9 = [(TRITaskQueue *)self _cancelDependenciesAndTaskWithId:v8 guardedData:dataCopy];
  v10 = TRILogCategory_Server();
  v11 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
  if (v9)
  {
    if (v11)
    {
      v15 = 138412546;
      v16 = v8;
      v17 = 2112;
      v18 = taskCopy;
      _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "cancelled task with [tid:%@]: %@", &v15, 0x16u);
    }

LABEL_7:
    v12 = 1;
    goto LABEL_11;
  }

  if (v11)
  {
    v15 = 138412546;
    v16 = v8;
    v17 = 2112;
    v18 = taskCopy;
    _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "could not cancel task with [tid:%@]: %@", &v15, 0x16u);
  }

  v12 = 0;
LABEL_11:

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)cancelTasksWithTag:(id)tag
{
  tagCopy = tag;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 1;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __35__TRITaskQueue_cancelTasksWithTag___block_invoke;
  v8[3] = &unk_279DE3828;
  v6 = tagCopy;
  v9 = v6;
  selfCopy = self;
  v11 = &v12;
  [(_PASLock *)lock runWithLockAcquired:v8];
  LOBYTE(self) = *(v13 + 24);

  _Block_object_dispose(&v12, 8);
  return self;
}

void __35__TRITaskQueue_cancelTasksWithTag___block_invoke(void *a1, void *a2)
{
  v3 = a2;
  v4 = [v3[2] taskIdsWithTag:a1[4]];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__TRITaskQueue_cancelTasksWithTag___block_invoke_2;
  v7[3] = &unk_279DE3800;
  v5 = a1[6];
  v7[4] = a1[5];
  v8 = v3;
  v9 = v5;
  v6 = v3;
  [v4 enumerateObjectsUsingBlock:v7];
}

uint64_t __35__TRITaskQueue_cancelTasksWithTag___block_invoke_2(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _cancelTaskWithId:a2 guardedData:*(a1 + 40) persistCancel:1];
  *(*(*(a1 + 48) + 8) + 24) &= result;
  return result;
}

- (BOOL)cancelTasksWithTag:(id)tag excludingTasks:(id)tasks
{
  tagCopy = tag;
  tasksCopy = tasks;
  v8 = [tasksCopy _pas_mappedArrayWithTransform:&__block_literal_global_283];
  v9 = [MEMORY[0x277CBEB98] setWithArray:v8];
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 1;
  lock = self->_lock;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __50__TRITaskQueue_cancelTasksWithTag_excludingTasks___block_invoke_2;
  v14[3] = &unk_279DE3898;
  v11 = tagCopy;
  v15 = v11;
  v12 = v9;
  v16 = v12;
  selfCopy = self;
  v18 = &v19;
  [(_PASLock *)lock runWithLockAcquired:v14];
  LOBYTE(self) = *(v20 + 24);

  _Block_object_dispose(&v19, 8);
  return self;
}

void __50__TRITaskQueue_cancelTasksWithTag_excludingTasks___block_invoke_2(uint64_t a1, void *a2)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_opt_new();
  v5 = v3[2];
  v6 = MEMORY[0x277CBEB98];
  v19[0] = *(a1 + 32);
  v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v8 = [v6 setWithArray:v7];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __50__TRITaskQueue_cancelTasksWithTag_excludingTasks___block_invoke_3;
  v16[3] = &unk_279DE3870;
  v17 = *(a1 + 40);
  v18 = v4;
  v9 = v4;
  [v5 enumerateTasksWithTagsIntersectingTagSet:v8 block:v16];

  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __50__TRITaskQueue_cancelTasksWithTag_excludingTasks___block_invoke_4;
  v13[3] = &unk_279DE3800;
  v10 = *(a1 + 56);
  v13[4] = *(a1 + 48);
  v14 = v3;
  v15 = v10;
  v11 = v3;
  [v9 enumerateObjectsUsingBlock:v13];

  v12 = *MEMORY[0x277D85DE8];
}

void __50__TRITaskQueue_cancelTasksWithTag_excludingTasks___block_invoke_3(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [v11 task];
  v4 = [v3 serialize];
  if (([*(a1 + 32) containsObject:v4] & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_5;
    }

    v5 = [v3 lastTask];
    if (!v5 || (v6 = v5, v7 = *(a1 + 32), [v5 serialize], v8 = objc_claimAutoreleasedReturnValue(), LOBYTE(v7) = objc_msgSend(v7, "containsObject:", v8), v8, v6, (v7 & 1) == 0))
    {
LABEL_5:
      v9 = *(a1 + 40);
      v10 = [v11 taskId];
      [v9 addObject:v10];
    }
  }
}

uint64_t __50__TRITaskQueue_cancelTasksWithTag_excludingTasks___block_invoke_4(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _cancelTaskWithId:a2 guardedData:*(a1 + 40) persistCancel:1];
  *(*(*(a1 + 48) + 8) + 24) &= result;
  return result;
}

- (BOOL)enumerateTasksWithTagsIntersectingTagSet:(id)set block:(id)block
{
  setCopy = set;
  blockCopy = block;
  v8 = objc_opt_new();
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __63__TRITaskQueue_enumerateTasksWithTagsIntersectingTagSet_block___block_invoke;
  v26[3] = &unk_279DE3870;
  v26[4] = self;
  v9 = v8;
  v27 = v9;
  v10 = MEMORY[0x2743948D0](v26);
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  lock = self->_lock;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __63__TRITaskQueue_enumerateTasksWithTagsIntersectingTagSet_block___block_invoke_2;
  v18[3] = &unk_279DE38E8;
  v21 = &v22;
  v12 = setCopy;
  v19 = v12;
  v13 = v10;
  v20 = v13;
  [(_PASLock *)lock runWithLockAcquired:v18];
  if (*(v23 + 24) == 1)
  {
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __63__TRITaskQueue_enumerateTasksWithTagsIntersectingTagSet_block___block_invoke_3;
    v16[3] = &unk_279DE3910;
    v17 = blockCopy;
    [v9 enumerateObjectsUsingBlock:v16];

    v14 = *(v23 + 24);
  }

  else
  {
    v14 = 0;
  }

  _Block_object_dispose(&v22, 8);
  return v14 & 1;
}

void __63__TRITaskQueue_enumerateTasksWithTagsIntersectingTagSet_block___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__40;
  v17 = __Block_byref_object_dispose__40;
  v18 = 0;
  v4 = *(*(a1 + 32) + 8);
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __63__TRITaskQueue_enumerateTasksWithTagsIntersectingTagSet_block___block_invoke_286;
  v10 = &unk_279DE38C0;
  v12 = &v13;
  v5 = v3;
  v11 = v5;
  [v4 runWithLockAcquired:&v7];
  if (v14[5])
  {
    v6 = [v5 copyWithReplacementTask:{v7, v8, v9, v10}];

    v5 = v6;
  }

  [*(a1 + 40) addObject:{v5, v7, v8, v9, v10}];

  _Block_object_dispose(&v13, 8);
}

void __63__TRITaskQueue_enumerateTasksWithTagsIntersectingTagSet_block___block_invoke_286(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v8 = [*(a1 + 32) taskId];
  v4 = [v3 objectForKeyedSubscript:v8];
  v5 = [v4 task];
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 40);
  *(v6 + 40) = v5;
}

uint64_t __63__TRITaskQueue_enumerateTasksWithTagsIntersectingTagSet_block___block_invoke_2(void *a1, uint64_t a2)
{
  result = [*(a2 + 16) enumerateTasksWithTagsIntersectingTagSet:a1[4] block:a1[5]];
  *(*(a1[6] + 8) + 24) = result;
  return result;
}

- (unint64_t)count
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __21__TRITaskQueue_count__block_invoke;
  v5[3] = &unk_279DE3938;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __21__TRITaskQueue_count__block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a2 + 16) count];
  *(*(*(a1 + 32) + 8) + 24) = result;
  return result;
}

- (BOOL)updateActivity:(id)activity withStartDate:(id)date
{
  v22 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  activityCopy = activity;
  v7 = xpc_activity_copy_criteria(activityCopy);
  if (!v7)
  {
    v7 = xpc_dictionary_create(0, 0, 0);
  }

  v8 = objc_opt_new();
  [dateCopy timeIntervalSinceDate:v8];
  v10 = v9;

  if (v10 <= 10)
  {
    v11 = 10;
  }

  else
  {
    v11 = v10;
  }

  xpc_dictionary_set_BOOL(v7, *MEMORY[0x277D86360], 0);
  xpc_dictionary_set_int64(v7, *MEMORY[0x277D86250], v11);
  xpc_dictionary_set_int64(v7, *MEMORY[0x277D86270], 1800);
  xpc_activity_set_criteria(activityCopy, v7);
  state = xpc_activity_get_state(activityCopy);

  v13 = TRILogCategory_Server();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 134218496;
    v17 = v11;
    v18 = 2048;
    v19 = 1800;
    v20 = 2048;
    v21 = state;
    _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "set activity delay %lld [+%lld] (state %ld)", &v16, 0x20u);
  }

  v14 = *MEMORY[0x277D85DE8];
  return 1;
}

- (void)_registerRetryActivityForDate:(id)date
{
  v29 = *MEMORY[0x277D85DE8];
  dateCopy = date;
  if (!dateCopy)
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "no date specified to retry, defaulting to 24 hours", buf, 2u);
    }

    dateCopy = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:86400.0];
  }

  WeakRetained = objc_loadWeakRetained(&self->_serverContext);
  keyValueStore = [WeakRetained keyValueStore];
  v24 = 0;
  v8 = [TRISetupAssistantFetchUtils getValueInKeyValueStore:keyValueStore key:@"post-upgrade-activity-in-progress" error:&v24];
  v9 = v24;

  keyValueStore2 = [WeakRetained keyValueStore];
  v23 = v9;
  v11 = [TRISetupAssistantFetchUtils getValueInKeyValueStore:keyValueStore2 key:@"post-upgrade-require-inexpensive-networking-activity-in-progress" error:&v23];
  v12 = v23;

  if (([v8 isEqualToNumber:&unk_287FC4BE8] & 1) != 0 || objc_msgSend(v11, "isEqualToNumber:", &unk_287FC4BE8))
  {
    [dateCopy timeIntervalSinceNow];
    if (v13 > 7200.0)
    {
      v14 = TRILogCategory_Server();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v26 = dateCopy;
        v27 = 2048;
        v28 = 7200;
        _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "One of the tasks enqueued during post upgrade resulted in a retry. The original retry date is set to: %@. Modifying it to be %lld seconds from now", buf, 0x16u);
      }

      v15 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:7200.0];

      dateCopy = v15;
    }
  }

  v16 = TRILogCategory_Server();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v26 = dateCopy;
    _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "registering retry activity for date: %@", buf, 0xCu);
  }

  asyncQueue = self->_asyncQueue;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __46__TRITaskQueue__registerRetryActivityForDate___block_invoke;
  v20[3] = &unk_279DDF7A0;
  v21 = dateCopy;
  selfCopy = self;
  v18 = dateCopy;
  dispatch_async(asyncQueue, v20);

  v19 = *MEMORY[0x277D85DE8];
}

void __46__TRITaskQueue__registerRetryActivityForDate___block_invoke(uint64_t a1)
{
  v2 = +[TRILaunchDaemonActivityDescriptor retryFailuresDescriptor];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__TRITaskQueue__registerRetryActivityForDate___block_invoke_2;
  v4[3] = &unk_279DE00F8;
  v5 = *(a1 + 32);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __46__TRITaskQueue__registerRetryActivityForDate___block_invoke_3;
  v3[3] = &unk_279DE0030;
  v3[4] = *(a1 + 40);
  [TRIXPCActivitySupport registerActivityWithLaunchDaemonDescriptor:v2 checkInBlock:v4 asyncHandler:v3];
}

void __46__TRITaskQueue__registerRetryActivityForDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  xdict = xpc_activity_copy_criteria(v3);
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x277CBEAA8] now];
  [v4 timeIntervalSinceDate:v5];
  v7 = v6;

  if (xdict && xpc_dictionary_get_count(xdict))
  {
    xpc_dictionary_set_int64(xdict, *MEMORY[0x277D86250], v7 + 5);
  }

  else
  {
    v8 = xpc_dictionary_create(0, 0, 0);

    xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D86360], 0);
    xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D86230], 0);
    xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D86380], 1);
    xpc_dictionary_set_BOOL(v8, *MEMORY[0x277D86390], 1);
    xpc_dictionary_set_string(v8, *MEMORY[0x277D86340], *MEMORY[0x277D86348]);
    xpc_dictionary_set_int64(v8, *MEMORY[0x277D86270], 1800);
    xpc_dictionary_set_int64(v8, *MEMORY[0x277D86250], v7 + 5);
    xdict = v8;
  }

  xpc_activity_set_criteria(v3, xdict);
}

void __46__TRITaskQueue__registerRetryActivityForDate___block_invoke_3(uint64_t a1, void *a2)
{
  v3 = a2;
  notify_post([@"com.apple.trial.Server.test.retries-networking" cStringUsingEncoding:4]);
  [*(a1 + 32) resumeWithXPCActivityDescriptor:v3 executeWhenSuspended:0];
}

- (void)_registerTaskQueueActivityForDate:(id)date
{
  dateCopy = date;
  asyncQueue = self->_asyncQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __50__TRITaskQueue__registerTaskQueueActivityForDate___block_invoke;
  v7[3] = &unk_279DDF7A0;
  v8 = dateCopy;
  selfCopy = self;
  v6 = dateCopy;
  dispatch_async(asyncQueue, v7);
}

void __50__TRITaskQueue__registerTaskQueueActivityForDate___block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = TRILogCategory_Server();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    *buf = 138412290;
    v12 = v3;
    _os_log_impl(&dword_26F567000, v2, OS_LOG_TYPE_DEFAULT, "registering TaskQueue activity for date: %@", buf, 0xCu);
  }

  v4 = *(*(a1 + 40) + 8);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __50__TRITaskQueue__registerTaskQueueActivityForDate___block_invoke_293;
  v8[3] = &unk_279DE36F0;
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v9 = v5;
  v10 = v6;
  [v4 runWithLockAcquired:v8];

  v7 = *MEMORY[0x277D85DE8];
}

void __50__TRITaskQueue__registerTaskQueueActivityForDate___block_invoke_293(int8x16_t *a1, void *a2)
{
  v3 = a2;
  v4 = v3;
  v5 = a1[2].i64[0];
  if (v5)
  {
    if (!v3[4])
    {
LABEL_5:
      objc_storeStrong(v4 + 4, v5);
      v6 = +[TRILaunchDaemonActivityDescriptor taskQueueDescriptor];
      v10[0] = MEMORY[0x277D85DD0];
      v10[1] = 3221225472;
      v10[2] = __50__TRITaskQueue__registerTaskQueueActivityForDate___block_invoke_2;
      v10[3] = &unk_279DE3960;
      v8 = a1[2];
      v7 = v8.i64[0];
      v11 = vextq_s8(v8, v8, 8uLL);
      v9[0] = MEMORY[0x277D85DD0];
      v9[1] = 3221225472;
      v9[2] = __50__TRITaskQueue__registerTaskQueueActivityForDate___block_invoke_294;
      v9[3] = &unk_279DE0030;
      v9[4] = a1[2].i64[1];
      [TRIXPCActivitySupport registerActivityWithLaunchDaemonDescriptor:v6 checkInBlock:v10 asyncHandler:v9];

      goto LABEL_6;
    }

    if ([a1[2].i64[0] compare:?] != 1)
    {
      v5 = a1[2].i64[0];
      goto LABEL_5;
    }
  }

LABEL_6:
}

void __50__TRITaskQueue__registerTaskQueueActivityForDate___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "TaskQueue checking in", v5, 2u);
  }

  [*(a1 + 32) updateActivity:v3 withStartDate:*(a1 + 40)];
}

void __50__TRITaskQueue__registerTaskQueueActivityForDate___block_invoke_294(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "TaskQueue running activity", v5, 2u);
  }

  [*(a1 + 32) resumeWithXPCActivityDescriptor:v3 executeWhenSuspended:0];
}

- (void)registerFinalizeBlockToRetryWithBlock:(id)block
{
  blockCopy = block;
  v13[0] = 0;
  v13[1] = v13;
  v13[2] = 0x2020000000;
  v14 = 0;
  v7 = MEMORY[0x277D85DD0];
  v8 = 3221225472;
  v9 = __54__TRITaskQueue_registerFinalizeBlockToRetryWithBlock___block_invoke;
  v10 = &unk_279DE3988;
  v12 = v13;
  v5 = blockCopy;
  v11 = v5;
  v6 = MEMORY[0x2743948D0](&v7);
  [(TRITaskQueue *)self registerFinalizeBlock:v6, v7, v8, v9, v10];

  _Block_object_dispose(v13, 8);
}

void __54__TRITaskQueue_registerFinalizeBlockToRetryWithBlock___block_invoke(uint64_t a1, void *a2, int a3, uint64_t a4, void *a5)
{
  v8 = a2;
  v9 = a5;
  if (a3 == 1 && [v8 conformsToProtocol:&unk_287FDBB78] && (*(*(*(a1 + 40) + 8) + 24) & 1) == 0)
  {
    if ([v8 retryCount] > 2)
    {
      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        *v12 = 0;
        _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "finalizeBlock: exceeded the number of retry counts. Not doing anything", v12, 2u);
      }
    }

    else
    {
      if (v9)
      {
        [v9 timeIntervalSinceNow];
      }

      else
      {
        v10.n128_u64[0] = 0;
      }

      (*(*(a1 + 32) + 16))(v10);
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }
  }
}

- (id)debugDescription
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__40;
  v12 = __Block_byref_object_dispose__40;
  v13 = 0;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__TRITaskQueue_debugDescription__block_invoke;
  v7[3] = &unk_279DE3938;
  v7[4] = &v8;
  [(_PASLock *)lock runWithLockAcquired:v7];
  v3 = [v9[5] _pas_mappedArrayWithTransform:&__block_literal_global_299];
  v4 = [v3 componentsJoinedByString:@"\n"];

  v5 = [MEMORY[0x277CCACA8] stringWithFormat:@"TaskQueue with %lu tasks:\n%@", objc_msgSend(v9[5], "count"), v4];

  _Block_object_dispose(&v8, 8);

  return v5;
}

void __32__TRITaskQueue_debugDescription__block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = [*(a2 + 16) allTasks];
  v3 = [v7 allValues];
  v4 = [v3 sortedArrayUsingSelector:sel_taskId];
  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

id __32__TRITaskQueue_debugDescription__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 dependencies];
  v4 = [v3 _pas_mappedArrayWithTransform:&__block_literal_global_301];
  v5 = [v4 componentsJoinedByString:{@", "}];

  v6 = MEMORY[0x277CCACA8];
  v7 = [v2 taskId];
  v8 = [v7 intValue];
  v9 = [v2 task];

  v10 = [v6 stringWithFormat:@"%5d|%@ : %@", v8, v5, v9];

  return v10;
}

- (id)activeActivityGrantingCapability:(unint64_t)capability
{
  v3 = [(TRITaskQueue *)self activeActivityDescriptorGrantingCapability:capability];
  activity = [v3 activity];

  return activity;
}

- (id)activeActivityDescriptorGrantingCapability:(unint64_t)capability
{
  v23 = *MEMORY[0x277D85DE8];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__40;
  v17 = __Block_byref_object_dispose__40;
  v18 = 0;
  lock = self->_lock;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __59__TRITaskQueue_activeActivityDescriptorGrantingCapability___block_invoke;
  v12[3] = &unk_279DE39D8;
  v12[4] = &v13;
  v12[5] = capability;
  [(_PASLock *)lock runWithLockAcquired:v12];
  v5 = v14[5];
  v6 = TRILogCategory_Server();
  v7 = os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    if (v7)
    {
      name = [v14[5] name];
      *buf = 134218242;
      capabilityCopy2 = capability;
      v21 = 2114;
      v22 = name;
      _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "Found Active XPC activity with capability %llu: %{public}@", buf, 0x16u);
    }
  }

  else if (v7)
  {
    *buf = 134217984;
    capabilityCopy2 = capability;
    _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "No active XPC activity with capability %llu", buf, 0xCu);
  }

  v9 = v14[5];
  _Block_object_dispose(&v13, 8);

  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

void __59__TRITaskQueue_activeActivityDescriptorGrantingCapability___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v11[0] = 0;
  v11[1] = v11;
  v11[2] = 0x2020000000;
  v12 = 0;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = [v3[6] allKeys];
    *buf = 134218242;
    v14 = v5;
    v15 = 2114;
    v16 = v6;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Looking for XPC activity granting capability %llu. Currently active activities: %{public}@", buf, 0x16u);
  }

  v7 = v3[6];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __59__TRITaskQueue_activeActivityDescriptorGrantingCapability___block_invoke_311;
  v10[3] = &unk_279DE39B0;
  v8 = *(a1 + 40);
  v10[5] = *(a1 + 32);
  v10[6] = v8;
  v10[4] = v11;
  [v7 enumerateKeysAndObjectsUsingBlock:v10];
  _Block_object_dispose(v11, 8);

  v9 = *MEMORY[0x277D85DE8];
}

void __59__TRITaskQueue_activeActivityDescriptorGrantingCapability___block_invoke_311(void *a1, void *a2, void *a3)
{
  v10 = a2;
  if (+[TRITaskCapabilityUtilities requiredCapabilities:areSupportedByAllowedCapabilities:](TRITaskCapabilityUtilities, "requiredCapabilities:areSupportedByAllowedCapabilities:", a1[6], [a3 capabilities]))
  {
    v6 = [v10 activity];
    if (v6)
    {
      v7 = v6;
      v8 = [v10 generationCount];
      v9 = *(*(a1[4] + 8) + 24);

      if (v8 >= v9)
      {
        *(*(a1[4] + 8) + 24) = [v10 generationCount];
        objc_storeStrong((*(a1[5] + 8) + 40), a2);
      }
    }
  }
}

- (void)waitForAsyncQueue
{
  dispatch_sync(self->_asyncQueue, &__block_literal_global_313);
  asyncQueue = self->_asyncQueue;

  dispatch_sync(asyncQueue, &__block_literal_global_315);
}

@end