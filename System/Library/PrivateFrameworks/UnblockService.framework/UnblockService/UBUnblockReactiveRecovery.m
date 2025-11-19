@interface UBUnblockReactiveRecovery
+ (id)getDiagnosticsQueue;
- (BOOL)avoidKillingTask:(id)a3 options:(unint64_t)a4;
- (BOOL)takeLiveStackshot;
- (BOOL)taskIs3PApp:(id)a3 options:(unint64_t)a4;
- (id)_recover:(unint64_t)a3 error:(id *)a4;
- (id)dependencyChainForNode:(id)a3 processInfos:(id)a4 options:(unint64_t)a5;
- (id)initForStuckServices:(id)a3 clientName:(id)a4;
- (id)prepareCrashMessage:(id)a3;
- (id)processThreadInfosForDeadlock:(id)a3 processInfos:(id)a4 options:(unint64_t)a5;
- (id)recover:(unint64_t)a3 error:(id *)a4;
- (id)selectNodeInDeadlocks:(id)a3 longerThan:(double)a4 serviceContext:(id)a5;
- (id)selectNodeInDeadlocksBlockingTask:(id)a3 preferredMinimumDuration:(double)a4 serviceContext:(id)a5;
- (id)selectTaskBlockingTask:(id)a3 serviceContext:(id)a4;
- (id)selectTaskForServiceNode:(id)a3 serviceResult:(id)a4 options:(unint64_t)a5;
- (id)selectTaskInDefinitiveIssuesWithServiceContext:(id)a3;
- (id)selectTaskInTasks:(id)a3 serviceContext:(id)a4;
- (id)selectTaskInvolvedInAnyIssueWithServiceContext:(id)a3;
- (id)selectThreadExhaustionBlockingTask:(id)a3 serviceContext:(id)a4;
- (id)selectThreadExhaustionInThreadExhaustions:(id)a3 allowSuspended:(BOOL)a4 serviceContext:(id)a5;
- (id)threadExhaustionsAboveLimit:(double)a3 threadIDToThreadExhaustionDict:(id *)a4;
- (void)clearCaches;
- (void)dealloc;
- (void)doTermination:(id)a3 options:(unint64_t)a4;
- (void)emitTelemetryForError:(id)a3;
- (void)fillInRecoveryInfo:(id)a3 deadlockNodeSelected:(id)a4 exhaustedTaskSelected:(id)a5 threadExhaustions:(id)a6 options:(unint64_t)a7;
- (void)findDeadlocks;
- (void)prepareDependencyGraph;
- (void)useStackshotBuffer:(const void *)a3 size:(unint64_t)a4;
- (void)writeDiagnostics:(id)a3 terminatedProcBundleID:(id)a4 options:(unint64_t)a5;
@end

@implementation UBUnblockReactiveRecovery

- (BOOL)takeLiveStackshot
{
  v3 = TakeLiveStackshot();
  stackshotData = self->_stackshotData;
  self->_stackshotData = v3;

  return self->_stackshotData != 0;
}

- (void)prepareDependencyGraph
{
  sampleStore = self->_sampleStore;
  if (!sampleStore)
  {
    goto LABEL_6;
  }

  v4 = [(SASampleStore *)sampleStore timestampOfLastStackshot];
  if (v4)
  {
    goto LABEL_3;
  }

  v8 = [(SASampleStore *)self->_sampleStore sampleTimestamps];
  v9 = [v8 count];

  if (!v9)
  {
    goto LABEL_6;
  }

  v10 = [(SASampleStore *)self->_sampleStore sampleTimestamps];
  v12 = [v10 lastObject];

  v4 = v12;
  if (v12)
  {
LABEL_3:
    v11 = v4;
    v5 = [MEMORY[0x277D4B420] dependencyGraphForThreadsInSampleStore:self->_sampleStore atTimestamp:v4];
    dependencyGraph = self->_dependencyGraph;
    self->_dependencyGraph = v5;

    v7 = v11;
  }

  else
  {
LABEL_6:
    v7 = self->_dependencyGraph;
    self->_dependencyGraph = 0;
  }
}

- (void)findDeadlocks
{
  v3 = objc_autoreleasePoolPush();
  if (self->_dependencyGraph)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
    dependencyGraph = self->_dependencyGraph;
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __52__UBUnblockReactiveRecovery_Deadlock__findDeadlocks__block_invoke;
    v18 = &unk_279E02C08;
    v19 = v5;
    v20 = v4;
    v7 = v4;
    v8 = v5;
    [(NSDictionary *)dependencyGraph enumerateKeysAndObjectsUsingBlock:&v15];
    v9 = [v7 copy];
    deadlocks = self->_deadlocks;
    self->_deadlocks = v9;

    v11 = [v8 copy];
    threadIDToDeadlockDict = self->_threadIDToDeadlockDict;
    self->_threadIDToDeadlockDict = v11;
  }

  else
  {
    v13 = self->_deadlocks;
    self->_deadlocks = 0;

    v14 = self->_threadIDToDeadlockDict;
    self->_threadIDToDeadlockDict = 0;
  }

  objc_autoreleasePoolPop(v3);
}

- (id)selectNodeInDeadlocksBlockingTask:(id)a3 preferredMinimumDuration:(double)a4 serviceContext:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v25 = a5;
  context = objc_autoreleasePoolPush();
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v10 = [v8 threads];
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = v11;
  v13 = 0;
  v14 = *v27;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v27 != v14)
      {
        objc_enumerationMutation(v10);
      }

      v16 = [(NSDictionary *)self->_threadIDToDeadlockDict objectForKeyedSubscript:*(*(&v26 + 1) + 8 * i), context];
      v17 = v16;
      if (v16)
      {
        [v16 timeSpentDeadlocked];
        v19 = v18 >= a4;
        if (v18 < a4)
        {
          if (v13)
          {
            v13 = 1;
            goto LABEL_13;
          }
        }

        else if ((v13 & 1) == 0)
        {
          [v9 removeAllObjects];
        }

        [v9 addObject:v17];
        v13 = v19;
      }

LABEL_13:
    }

    v12 = [v10 countByEnumeratingWithState:&v26 objects:v30 count:16];
  }

  while (v12);
LABEL_15:

  if ([v9 count])
  {
    v20 = v25;
    v21 = [(UBUnblockReactiveRecovery *)self selectNodeInDeadlocks:v9 longerThan:v25 serviceContext:0.0];
  }

  else
  {
    v21 = 0;
    v20 = v25;
  }

  objc_autoreleasePoolPop(context);
  v22 = *MEMORY[0x277D85DE8];

  return v21;
}

- (id)selectNodeInDeadlocks:(id)a3 longerThan:(double)a4 serviceContext:(id)a5
{
  v88 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if ([v8 count])
  {
    v64 = self;
    v66 = v9;
    v67 = objc_alloc_init(MEMORY[0x277CCA940]);
    v74 = 0u;
    v75 = 0u;
    v76 = 0u;
    v77 = 0u;
    v65 = v8;
    obj = v8;
    v10 = [obj countByEnumeratingWithState:&v74 objects:v87 count:16];
    if (v10)
    {
      v11 = v10;
      v69 = 0.0;
      v12 = *v75;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v75 != v12)
          {
            objc_enumerationMutation(obj);
          }

          v14 = *(*(&v74 + 1) + 8 * i);
          [v14 timeSpentDeadlocked];
          v16 = v15;
          v17 = [v14 tasksInvolved];
          v18 = v17;
          if (v16 >= a4)
          {
            v25 = [v17 count];
            v26 = [v14 tasksBlocked];
            v27 = [v26 count] + v25;

            if (*&v69 <= v27)
            {
              if (*&v69 < v27)
              {
                [v67 removeAllObjects];
                v69 = *&v27;
              }

              v19 = [v14 tasksInvolved];
              [v67 unionSet:v19];
            }

            else
            {
              v28 = [v14 tasksInvolved];
              v19 = [v28 anyObject];

              v29 = *__error();
              v30 = _ublogt();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_INFO))
              {
                v31 = [v19 name];
                v32 = [v19 pid];
                *buf = 138544130;
                v80 = v31;
                v81 = 1024;
                v82 = v32;
                v83 = 2048;
                v84 = v27;
                v85 = 2048;
                v86 = v69;
                _os_log_impl(&dword_270397000, v30, OS_LOG_TYPE_INFO, "Task <%{public}@[%d]>: Deadlocked or affected by a deadlock, but only %lu task affected (found deadlock affecting %lu), ignoring.", buf, 0x26u);
              }

              *__error() = v29;
            }
          }

          else
          {
            v19 = [v17 anyObject];

            v20 = *__error();
            v21 = _ublogt();
            if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
            {
              v22 = [v19 name];
              v23 = [v19 pid];
              [v14 timeSpentDeadlocked];
              *buf = 138544130;
              v80 = v22;
              v81 = 1024;
              v82 = v23;
              v83 = 2048;
              v84 = v24;
              v85 = 2048;
              v86 = a4;
              _os_log_impl(&dword_270397000, v21, OS_LOG_TYPE_INFO, "Task <%{public}@[%d]>: Deadlocked or affected by a deadlock, but only for %f (limit %f), ignoring.", buf, 0x26u);
            }

            *__error() = v20;
          }
        }

        v11 = [obj countByEnumeratingWithState:&v74 objects:v87 count:16];
      }

      while (v11);
    }

    else
    {
      v69 = 0.0;
    }

    v34 = v67;
    if ([v67 count])
    {
      v9 = v66;
      v35 = [(UBUnblockReactiveRecovery *)v64 selectTaskInTasks:v67 serviceContext:v66];
      if (v35)
      {
        v72 = 0u;
        v73 = 0u;
        v70 = 0u;
        v71 = 0u;
        v36 = obj;
        v37 = [v36 countByEnumeratingWithState:&v70 objects:v78 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v71;
          while (2)
          {
            for (j = 0; j != v38; ++j)
            {
              if (*v71 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = *(*(&v70 + 1) + 8 * j);
              [v41 timeSpentDeadlocked];
              if (v42 >= a4)
              {
                v43 = [v41 tasksInvolved];
                v44 = [v43 count];
                v45 = [v41 tasksBlocked];
                v46 = [v45 count] + v44;

                if (*&v69 <= v46)
                {
                  v47 = [v41 tasksInvolved];
                  v48 = [v47 containsObject:v35];

                  if (v48)
                  {
                    v49 = [v41 node];
                    if (v49)
                    {
                      v33 = v49;
                      v50 = 0;
                      while (1)
                      {
                        v51 = [v33 task];

                        if (v51 == v35)
                        {
                          break;
                        }

                        v52 = v50;
                        if (!v50)
                        {
                          if ([v33 isPartOfADeadlock])
                          {
                            v52 = v33;
                          }

                          else
                          {
                            v52 = 0;
                          }
                        }

                        v53 = v52;

                        v54 = [v33 dependency];

                        if (v54)
                        {
                          v33 = v54;
                          v50 = v53;
                          if (v54 != v53)
                          {
                            continue;
                          }
                        }

                        goto LABEL_43;
                      }

                      goto LABEL_52;
                    }
                  }
                }
              }

LABEL_43:
              ;
            }

            v38 = [v36 countByEnumeratingWithState:&v70 objects:v78 count:16];
            if (v38)
            {
              continue;
            }

            break;
          }
        }

        v55 = *__error();
        v56 = _ublogt();
        if (os_log_type_enabled(v56, OS_LOG_TYPE_FAULT))
        {
          [UBUnblockReactiveRecovery(Deadlock) selectNodeInDeadlocks:v35 longerThan:? serviceContext:?];
        }

        v33 = 0;
        *__error() = v55;
LABEL_52:
        v8 = v65;
        v9 = v66;
        v34 = v67;
      }

      else
      {
        v60 = *__error();
        v61 = _ublogt();
        if (os_log_type_enabled(v61, OS_LOG_TYPE_FAULT))
        {
          [UBUnblockReactiveRecovery(Deadlock) selectNodeInDeadlocks:longerThan:serviceContext:];
        }

        v33 = 0;
        *__error() = v60;
        v8 = v65;
      }
    }

    else
    {
      v57 = *__error();
      v58 = _ublogt();
      v9 = v66;
      if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
      {
        v59 = [obj count];
        *buf = 134217984;
        v80 = v59;
        _os_log_impl(&dword_270397000, v58, OS_LOG_TYPE_DEFAULT, "No long-enough deadlocks out of %lu", buf, 0xCu);
      }

      v33 = 0;
      *__error() = v57;
      v8 = v65;
    }
  }

  else
  {
    v33 = 0;
  }

  v62 = *MEMORY[0x277D85DE8];

  return v33;
}

- (id)selectThreadExhaustionInThreadExhaustions:(id)a3 allowSuspended:(BOOL)a4 serviceContext:(id)a5
{
  v33 = self;
  v47 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v34 = a5;
  v8 = [v34 serviceNode];
  v36 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v41 = 0u;
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v9 = v7;
  v10 = [v9 countByEnumeratingWithState:&v41 objects:v46 count:16];
  v35 = v9;
  if (v10)
  {
    v11 = v10;
    v12 = *v42;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v42 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v41 + 1) + 8 * i);
        v15 = [v14 task];
        v16 = [v8 task];

        if (v15 == v16)
        {
          v25 = v14;
          v30 = v9;
          goto LABEL_24;
        }

        if (a4)
        {
          goto LABEL_9;
        }

        v17 = [v14 task];
        v18 = [v17 taskStates];
        v19 = [v18 lastObject];
        v20 = [v19 isSuspended];

        v9 = v35;
        if ((v20 & 1) == 0)
        {
LABEL_9:
          v21 = [v14 task];
          [v36 addObject:v21];
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v41 objects:v46 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v22 = [(UBUnblockReactiveRecovery *)v33 selectTaskInTasks:v36 serviceContext:v34];
  v23 = v9;
  v9 = v22;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v40 = 0u;
  v24 = v23;
  v25 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
  if (v25)
  {
    v26 = *v38;
    while (2)
    {
      for (j = 0; j != v25; j = j + 1)
      {
        if (*v38 != v26)
        {
          objc_enumerationMutation(v24);
        }

        v28 = *(*(&v37 + 1) + 8 * j);
        v29 = [v28 task];

        if (v29 == v9)
        {
          v25 = v28;
          goto LABEL_23;
        }
      }

      v25 = [v24 countByEnumeratingWithState:&v37 objects:v45 count:16];
      if (v25)
      {
        continue;
      }

      break;
    }
  }

LABEL_23:

  v30 = v35;
LABEL_24:

  v31 = *MEMORY[0x277D85DE8];

  return v25;
}

- (id)selectThreadExhaustionBlockingTask:(id)a3 serviceContext:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 threadIDToThreadExhaustionDict];
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v10 = [v6 threads];
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v20;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v20 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [v8 objectForKeyedSubscript:*(*(&v19 + 1) + 8 * i)];
        if (v15)
        {
          [v9 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v12);
  }

  if ([v9 count])
  {
    v16 = [(UBUnblockReactiveRecovery *)self selectThreadExhaustionInThreadExhaustions:v9 allowSuspended:1 serviceContext:v7];
  }

  else
  {
    v16 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)threadExhaustionsAboveLimit:(double)a3 threadIDToThreadExhaustionDict:(id *)a4
{
  v7 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v9 = objc_autoreleasePoolPush();
  v10 = [(SASampleStore *)self->_sampleStore tasksByPid];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __106__UBUnblockReactiveRecovery_ThreadExhaustion__threadExhaustionsAboveLimit_threadIDToThreadExhaustionDict___block_invoke;
  v20[3] = &unk_279E02C58;
  v22 = a3;
  v20[4] = self;
  v11 = v7;
  v21 = v11;
  [v10 enumerateKeysAndObjectsUsingBlock:v20];

  if ([v11 count])
  {
    dependencyGraph = self->_dependencyGraph;
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __106__UBUnblockReactiveRecovery_ThreadExhaustion__threadExhaustionsAboveLimit_threadIDToThreadExhaustionDict___block_invoke_148;
    v17[3] = &unk_279E02C08;
    v18 = v8;
    v19 = v11;
    [(NSDictionary *)dependencyGraph enumerateKeysAndObjectsUsingBlock:v17];
  }

  objc_autoreleasePoolPop(v9);
  *a4 = [v8 copy];
  v13 = objc_alloc(MEMORY[0x277CBEB98]);
  v14 = [v11 allValues];
  v15 = [v13 initWithArray:v14];

  return v15;
}

- (id)prepareCrashMessage:(id)a3
{
  v3 = a3;
  if ([v3 recoveryStatus] != 4)
  {
    v8 = 0;
    goto LABEL_30;
  }

  v4 = [v3 selectedProcess];
  v5 = [v4 name];
  v6 = v5;
  if (v5)
  {
    v7 = _UBCopySanitizedString(v5, 12, &stru_288046330);
  }

  else
  {
    v7 = 0;
  }

  if (v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = @"Unknown";
  }

  v10 = v9;

  v11 = [v3 serviceProcessName];
  v12 = v11;
  if (v11)
  {
    v13 = _UBCopySanitizedString(v11, 12, &stru_288046330);
  }

  else
  {
    v13 = 0;
  }

  if (v13)
  {
    v14 = v13;
  }

  else
  {
    v14 = @"Unknown";
  }

  v15 = v14;

  v16 = [v3 clientName];
  v17 = v16;
  if (v16)
  {
    v18 = _UBCopySanitizedString(v16, 12, &stru_288046330);
  }

  else
  {
    v18 = 0;
  }

  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = @"Unknown";
  }

  v20 = v19;

  v21 = [v3 recoveryConfidence];
  v22 = @"likely ";
  if (v21 == 1)
  {
    v22 = &stru_288046330;
  }

  v23 = v22;
  if ([v3 issueType] == 1)
  {
    v24 = @"Process %@ [%d] was terminated due to being part of a deadlock cycle %@affecting %@-monitored service %@ [%d]";
  }

  else
  {
    if ([v3 issueType] != 2)
    {
      v8 = 0;
      goto LABEL_29;
    }

    v24 = @"Process %@ [%d] was terminated due to hitting thread exhaustion %@affecting %@-monitored service %@ [%d]";
  }

  v25 = MEMORY[0x277CCACA8];
  v26 = [v3 selectedProcess];
  v27 = [v26 pid];
  v28 = [v3 service];
  v8 = [v25 stringWithFormat:v24, v10, v27, v23, v20, v15, objc_msgSend(v28, "pid")];

LABEL_29:
LABEL_30:

  return v8;
}

- (void)writeDiagnostics:(id)a3 terminatedProcBundleID:(id)a4 options:(unint64_t)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = *__error();
  v10 = _ublogt();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v11 = [v7 serviceProcessName];
    v12 = [v7 service];
    v13 = [v12 pid];
    v14 = [v7 service];
    *buf = 138543874;
    v46 = v11;
    LOWORD(v47) = 1024;
    *(&v47 + 2) = v13;
    HIWORD(v47) = 2048;
    v48 = [v14 threadID];
    _os_log_impl(&dword_270397000, v10, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx]>: Writing diagnostics.", buf, 0x1Cu);
  }

  *__error() = v9;
  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  v16 = [(UBUnblockReactiveRecovery *)self prepareCrashMessage:v7];
  v17 = [v7 headerDescription];
  v18 = [v15 initWithFormat:@"\n%@\n%@", v16, v17];

  *buf = 20;
  v46 = WatchdogCodeForIssueType([v7 issueType]);
  v47 = 0;
  v42 = mach_absolute_time();
  Current = CFAbsoluteTimeGetCurrent();
  v20 = [UBCrackShotReport alloc];
  v21 = [v7 selectedProcess];
  v22 = [v21 pid];
  v23 = [v7 selectedProcess];
  v24 = [v23 name];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = @"Unknown";
  }

  v27 = -[UBCrackShotReport initWithPid:procName:bundleID:exitSnapshot:reason:issueType:](v20, "initWithPid:procName:bundleID:exitSnapshot:reason:issueType:", v22, v26, v8, buf, v18, [v7 issueType]);

  v28 = MEMORY[0x277CCABB0];
  v29 = [v7 service];
  v30 = [v28 numberWithInt:{objc_msgSend(v29, "pid")}];

  v31 = [v7 service];
  v32 = [v31 incidentUUID];

  if (v32)
  {
    v33 = [v7 service];
    v34 = [v33 incidentUUID];
    v35 = [v34 UUIDString];
    [(OSAStackShotReport *)v27 setIncidentID:v35];
  }

  v36 = [(NSData *)self->_stackshotData bytes];
  v37 = [(NSData *)self->_stackshotData length];
  v44 = v30;
  v38 = [MEMORY[0x277CBEA60] arrayWithObjects:&v44 count:1];
  [(OSAStackShotReport *)v27 useStackshotBuffer:v36 size:v37 frontmostPids:v38 atTime:v42 machTime:0xFFFFFFFFLL sequence:(a5 >> 1) & 1 isSnapshotDead:Current];

  if (![(OSACrackShotReport *)v27 saveWithOptions:0])
  {
    v39 = *__error();
    v40 = _ublogt();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockReactiveRecovery(Termination) writeDiagnostics:v7 terminatedProcBundleID:v40 options:?];
    }

    *__error() = v39;
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)doTermination:(id)a3 options:(unint64_t)a4
{
  v88 = *MEMORY[0x277D85DE8];
  v5 = a3;
  context = objc_autoreleasePoolPush();
  v66 = [MEMORY[0x277CBEB58] set];
  v6 = [MEMORY[0x277CBEB58] set];
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v83 = 0u;
  v63 = self;
  v7 = self->_stuckServices;
  v8 = [(NSArray *)v7 countByEnumeratingWithState:&v80 objects:v87 count:16];
  v9 = 0x277CCA000uLL;
  if (v8)
  {
    v10 = v8;
    v11 = *v81;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v81 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(*(*(&v80 + 1) + 8 * i), "pid")}];
        [v6 addObject:v13];
      }

      v10 = [(NSArray *)v7 countByEnumeratingWithState:&v80 objects:v87 count:16];
    }

    while (v10);
  }

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v14 = v5;
  v15 = [v14 countByEnumeratingWithState:&v76 objects:v86 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v77;
    v64 = v14;
    v65 = v6;
    v69 = *v77;
    do
    {
      v18 = 0;
      v68 = v16;
      do
      {
        if (*v77 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v76 + 1) + 8 * v18);
        if ([v19 recoveryStatus] == 4)
        {
          v20 = [v19 selectedProcess];
          v21 = [v20 pid];

          if (v21)
          {
            v71 = v21;
            v22 = [*(v9 + 2992) numberWithInt:v21];
            v23 = [v6 containsObject:v22];

            v70 = *__error();
            v24 = _ublogt();
            v25 = os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT);
            if (v23)
            {
              if (v25)
              {
                v26 = [v19 serviceProcessName];
                v27 = [v19 pid];
                v28 = [v19 threadID];
                v29 = [v19 selectedProcess];
                v30 = [v29 name];
                *buf = 138544386;
                *&buf[4] = v26;
                *&buf[12] = 1024;
                *&buf[14] = v27;
                v6 = v65;
                *&buf[18] = 2048;
                *&buf[20] = v28;
                v9 = 0x277CCA000;
                *&buf[28] = 2114;
                *&buf[30] = v30;
                *&buf[38] = 1024;
                LODWORD(v85) = v71;
                _os_log_impl(&dword_270397000, v24, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx]>: We selected %{public}@ [%d] for termination to recover; but, it is also one of the stuck services provided as input. Skipping termination.", buf, 0x2Cu);

                v16 = v68;
                v17 = v69;
              }

              *__error() = v70;
              [v19 setRecoveryStatus:2];
            }

            else
            {
              if (v25)
              {
                v31 = [v19 serviceProcessName];
                v32 = [v19 service];
                v33 = [v32 pid];
                v34 = [v19 service];
                v35 = [v34 threadID];
                v36 = [v19 selectedProcess];
                v37 = [v36 name];
                *buf = 138544386;
                *&buf[4] = v31;
                *&buf[12] = 1024;
                *&buf[14] = v33;
                *&buf[18] = 2048;
                *&buf[20] = v35;
                v9 = 0x277CCA000uLL;
                *&buf[28] = 2114;
                *&buf[30] = v37;
                *&buf[38] = 1024;
                LODWORD(v85) = v71;
                _os_log_impl(&dword_270397000, v24, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx]>: Will terminate %{public}@ [%d] for recovery.", buf, 0x2Cu);

                v14 = v64;
                v16 = v68;

                v6 = v65;
              }

              *__error() = v70;
              v38 = [*(v9 + 2992) numberWithInt:v71];
              v39 = [v66 containsObject:v38];

              if (v39)
              {
                v40 = *__error();
                v41 = _ublogt();
                if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
                {
                  v42 = [v19 selectedProcess];
                  v43 = [v42 name];
                  *buf = 138543618;
                  *&buf[4] = v43;
                  *&buf[12] = 1024;
                  *&buf[14] = v71;
                  _os_log_impl(&dword_270397000, v41, OS_LOG_TYPE_DEFAULT, "%{public}@ [%d] has already been terminated.", buf, 0x12u);
                }

                *__error() = v40;
                v14 = v64;
              }

              else
              {
                if ((a4 & 2) != 0)
                {
                  v46 = 0;
                }

                else
                {
                  v44 = UBCopyPathForPid(v71);
                  v45 = v44;
                  if (v44)
                  {
                    v46 = UBCopyBundleIDForPath(v44);
                  }

                  else
                  {
                    v46 = 0;
                  }
                }

                v47 = +[UBUnblockReactiveRecovery getDiagnosticsQueue];
                if (v47)
                {
                  *buf = 0;
                  *&buf[8] = buf;
                  *&buf[16] = 0x3032000000;
                  *&buf[24] = __Block_byref_object_copy_;
                  *&buf[32] = __Block_byref_object_dispose_;
                  v85 = os_transaction_create();
                  block[0] = MEMORY[0x277D85DD0];
                  block[1] = 3221225472;
                  block[2] = __64__UBUnblockReactiveRecovery_Termination__doTermination_options___block_invoke;
                  block[3] = &unk_279E02C80;
                  block[4] = v63;
                  block[5] = v19;
                  v48 = v46;
                  v74 = buf;
                  v75 = a4;
                  v73 = v48;
                  dispatch_async(v47, block);

                  _Block_object_dispose(buf, 8);
                }

                if (a4)
                {
                  v54 = *__error();
                  v55 = _ublogt();
                  if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&dword_270397000, v55, OS_LOG_TYPE_DEFAULT, "Skipping the actual termination due to kReactiveRecoverySkipTermination.", buf, 2u);
                  }

                  *__error() = v54;
                }

                else
                {
                  v49 = [(UBUnblockReactiveRecovery *)v63 prepareCrashMessage:v19];
                  WatchdogCodeForIssueType([v19 issueType]);
                  [v49 UTF8String];
                  v50 = terminate_with_reason();
                  v51 = *__error();
                  v52 = _ublogt();
                  v53 = v52;
                  if (v50)
                  {
                    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                    {
                      v59 = [v19 selectedProcess];
                      v60 = [v59 name];
                      *buf = 138543618;
                      *&buf[4] = v60;
                      *&buf[12] = 1024;
                      *&buf[14] = v71;
                      _os_log_error_impl(&dword_270397000, v53, OS_LOG_TYPE_ERROR, "Failed to terminate %{public}@ [%d]", buf, 0x12u);

                      v14 = v64;
                    }

                    *__error() = v51;
                    [v19 setRecoveryStatus:1];
                  }

                  else
                  {
                    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
                    {
                      v56 = [v19 selectedProcess];
                      v57 = [v56 name];
                      *buf = 138543618;
                      *&buf[4] = v57;
                      *&buf[12] = 1024;
                      *&buf[14] = v71;
                      _os_log_impl(&dword_270397000, v53, OS_LOG_TYPE_DEFAULT, "Successfully terminated %{public}@ [%d]", buf, 0x12u);

                      v14 = v64;
                    }

                    *__error() = v51;
                  }

                  v58 = [MEMORY[0x277CCABB0] numberWithInt:v71];
                  [v66 addObject:v58];

                  v6 = v65;
                  v16 = v68;
                }

                v9 = 0x277CCA000;
              }

              v17 = v69;
            }
          }
        }

        ++v18;
      }

      while (v16 != v18);
      v16 = [v14 countByEnumeratingWithState:&v76 objects:v86 count:16];
    }

    while (v16);
  }

  objc_autoreleasePoolPop(context);
  v61 = *MEMORY[0x277D85DE8];
}

- (id)initForStuckServices:(id)a3 clientName:(id)a4
{
  v6 = a3;
  v7 = a4;
  v16.receiver = self;
  v16.super_class = UBUnblockReactiveRecovery;
  v8 = [(UBUnblockReactiveRecovery *)&v16 init];
  v9 = v8;
  if (v8)
  {
    stackshotData = v8->_stackshotData;
    v8->_stackshotData = 0;

    v9->_lock._os_unfair_lock_opaque = 0;
    v11 = [objc_alloc(MEMORY[0x277CBEA60]) initWithArray:v6 copyItems:0];
    stuckServices = v9->_stuckServices;
    v9->_stuckServices = v11;

    objc_storeStrong(&v9->_clientName, a4);
    v13 = objc_alloc_init(MEMORY[0x277CBEB38]);
    taskIs3PAppDict = v9->_taskIs3PAppDict;
    v9->_taskIs3PAppDict = v13;
  }

  return v9;
}

- (void)dealloc
{
  [(UBUnblockReactiveRecovery *)self clearCaches];
  stuckServices = self->_stuckServices;
  self->_stuckServices = 0;

  stackshotData = self->_stackshotData;
  self->_stackshotData = 0;

  v5.receiver = self;
  v5.super_class = UBUnblockReactiveRecovery;
  [(UBUnblockReactiveRecovery *)&v5 dealloc];
}

+ (id)getDiagnosticsQueue
{
  if (getDiagnosticsQueue_onceToken != -1)
  {
    +[UBUnblockReactiveRecovery getDiagnosticsQueue];
  }

  v3 = getDiagnosticsQueue_queue;

  return v3;
}

- (void)useStackshotBuffer:(const void *)a3 size:(unint64_t)a4
{
  os_unfair_lock_lock(&self->_lock);
  v7 = [MEMORY[0x277CBEA90] dataWithBytes:a3 length:a4];
  stackshotData = self->_stackshotData;
  self->_stackshotData = v7;

  os_unfair_lock_unlock(&self->_lock);
}

- (void)clearCaches
{
  if (self->_sampleStore)
  {
    [MEMORY[0x277D4B460] clearCaches];
    [MEMORY[0x277D4B430] clearCaches];
    [MEMORY[0x277D4B410] clearCaches];
    deadlocks = self->_deadlocks;
    self->_deadlocks = 0;

    threadIDToDeadlockDict = self->_threadIDToDeadlockDict;
    self->_threadIDToDeadlockDict = 0;

    dependencyGraph = self->_dependencyGraph;
    self->_dependencyGraph = 0;

    sampleStore = self->_sampleStore;
    self->_sampleStore = 0;
  }
}

- (id)dependencyChainForNode:(id)a3 processInfos:(id)a4 options:(unint64_t)a5
{
  v6 = a3;
  v64 = a4;
  v59 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v7 = v6;
  v8 = v7;
  if (v7)
  {
    v9 = 0;
    v56 = v7;
    while (1)
    {
      v60 = v9;
      v10 = MEMORY[0x277CCABB0];
      v11 = [v8 task];
      v12 = [v10 numberWithInt:{objc_msgSend(v11, "pid")}];
      v13 = [v64 objectForKeyedSubscript:v12];

      if (!v13)
      {
        v14 = objc_alloc(MEMORY[0x277D779B0]);
        v15 = [v8 task];
        v16 = [v15 pid];
        v17 = [v8 task];
        v18 = [v17 name];
        v19 = [v8 task];
        v13 = [v14 initWithPid:v16 name:v18 is3P:{-[UBUnblockReactiveRecovery taskIs3PApp:options:](self, "taskIs3PApp:options:", v19, a5)}];

        v20 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "pid")}];
        [v64 setObject:v13 forKeyedSubscript:v20];
      }

      v61 = v13;
      v21 = objc_alloc(MEMORY[0x277D779D0]);
      v62 = [v8 thread];
      v22 = [v62 threadId];
      v23 = [v8 threadState];
      v24 = [v23 name];
      v25 = [v8 threadState];
      v26 = [v25 dispatchQueue];
      v27 = [v26 identifier];
      v28 = [v8 threadState];
      v29 = [v28 dispatchQueue];
      [v29 dispatchQueueLabel];
      v30 = v63 = v8;
      v31 = [v21 initWithTid:v22 threadName:v24 dqid:v27 dqLabel:v30];

      v32 = v63;
      v33 = [objc_alloc(MEMORY[0x277D779B8]) initWithProcess:v61 thread:v31];
      [v59 addObject:v33];

      v34 = [v63 taskDependency];

      if (v34)
      {
        v35 = MEMORY[0x277CCABB0];
        v36 = [v63 taskDependency];
        v37 = [v36 task];
        v38 = [v35 numberWithInt:{objc_msgSend(v37, "pid")}];
        v39 = [v64 objectForKeyedSubscript:v38];

        if (!v39)
        {
          v40 = objc_alloc(MEMORY[0x277D779B0]);
          v41 = [v63 taskDependency];
          v42 = [v41 task];
          v43 = [v42 pid];
          v44 = [v63 taskDependency];
          v45 = [v44 task];
          v46 = [v45 name];
          v47 = [v63 taskDependency];
          v48 = [v47 task];
          v39 = [v40 initWithPid:v43 name:v46 is3P:{-[UBUnblockReactiveRecovery taskIs3PApp:options:](self, "taskIs3PApp:options:", v48, a5)}];

          v32 = v63;
          v49 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v39, "pid")}];
          [v64 setObject:v39 forKeyedSubscript:v49];
        }

        v50 = [objc_alloc(MEMORY[0x277D779B8]) initWithProcess:v39 thread:0];
        [v59 addObject:v50];
      }

      if ([v32 isPartOfADeadlock])
      {
        break;
      }

      v51 = v60;
      if (!v60)
      {
        if ([v32 isPartOfADeadlock])
        {
          v51 = v32;
        }

        else
        {
          v51 = 0;
        }
      }

      v52 = v51;

      v53 = [v32 dependency];

      if (v53)
      {
        v8 = v53;
        v9 = v52;
        if (v53 != v52)
        {
          continue;
        }
      }

      goto LABEL_18;
    }

    v52 = v60;
    v53 = v32;
LABEL_18:

    v8 = v56;
  }

  v54 = [v59 copy];

  return v54;
}

- (id)processThreadInfosForDeadlock:(id)a3 processInfos:(id)a4 options:(unint64_t)a5
{
  v6 = a3;
  v52 = a4;
  v7 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v8 = v6;
  v9 = v8;
  if (v8)
  {
    v51 = 0;
    v10 = 0;
    v48 = v8;
    v53 = v7;
    do
    {
      v56 = v10;
      v11 = MEMORY[0x277CCABB0];
      v12 = [v9 task];
      v13 = [v11 numberWithInt:{objc_msgSend(v12, "pid")}];
      v14 = [v52 objectForKeyedSubscript:v13];

      if (!v14)
      {
        v15 = objc_alloc(MEMORY[0x277D779B0]);
        v16 = [v9 task];
        v17 = [v16 pid];
        v18 = [v9 task];
        v19 = [v18 name];
        v20 = [v9 task];
        v14 = [v15 initWithPid:v17 name:v19 is3P:{-[UBUnblockReactiveRecovery taskIs3PApp:options:](self, "taskIs3PApp:options:", v20, a5)}];

        v21 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v14, "pid")}];
        [v52 setObject:v14 forKeyedSubscript:v21];
      }

      v57 = v14;
      v54 = objc_alloc(MEMORY[0x277D779D0]);
      v55 = [v9 thread];
      v22 = [v55 threadId];
      v23 = [v9 threadState];
      v24 = [v23 name];
      v25 = [v9 threadState];
      v26 = [v25 dispatchQueue];
      v27 = [v26 identifier];
      v28 = [v9 threadState];
      v29 = [v28 dispatchQueue];
      v30 = [v29 dispatchQueueLabel];
      v31 = [v54 initWithTid:v22 threadName:v24 dqid:v27 dqLabel:v30];

      v32 = v57;
      v33 = [objc_alloc(MEMORY[0x277D779B8]) initWithProcess:v57 thread:v31];
      v7 = v53;
      [v53 addObject:v33];
      if ([v53 count] == 1)
      {
        v34 = v56;
      }

      else
      {
        v35 = [v53 objectAtIndexedSubscript:v51];
        v36 = [v35 process];
        v37 = [v53 objectAtIndexedSubscript:v51];
        v38 = [v37 thread];
        v39 = [v33 process];
        v40 = [v33 thread];
        v41 = CompareProcessesAndThreads(v36, v38, v39, v40);

        v32 = v57;
        v7 = v53;

        v34 = v56;
        if (v41 == 1)
        {
          v51 = [v53 count] - 1;
        }
      }

      v42 = v34;
      if (!v34)
      {
        if ([v9 isPartOfADeadlock])
        {
          v42 = v9;
        }

        else
        {
          v42 = 0;
        }
      }

      v43 = v42;

      v44 = [v9 dependency];

      if (!v44)
      {
        break;
      }

      v9 = v44;
      v10 = v43;
    }

    while (v44 != v43);

    v9 = v48;
    if (v51)
    {
      v45 = [v7 subarrayWithRange:{0, v51}];
      [v7 removeObjectsInRange:{0, v51}];
      [v7 addObjectsFromArray:v45];
    }
  }

  v46 = [v7 copy];

  return v46;
}

- (void)fillInRecoveryInfo:(id)a3 deadlockNodeSelected:(id)a4 exhaustedTaskSelected:(id)a5 threadExhaustions:(id)a6 options:(unint64_t)a7
{
  v147 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v94 = a6;
  if (v13 && v14)
  {
    v15 = *__error();
    v16 = _ublogt();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockReactiveRecovery fillInRecoveryInfo:deadlockNodeSelected:exhaustedTaskSelected:threadExhaustions:options:];
    }

    *__error() = v15;
    [v12 setRecoveryStatus:1];
  }

  else
  {
    v101 = v14;
    v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v136[0] = MEMORY[0x277D85DD0];
    v136[1] = 3221225472;
    v136[2] = __117__UBUnblockReactiveRecovery_fillInRecoveryInfo_deadlockNodeSelected_exhaustedTaskSelected_threadExhaustions_options___block_invoke;
    v136[3] = &unk_279E02CC8;
    v18 = v17;
    v137 = v18;
    v138 = self;
    v139 = a7;
    v19 = MEMORY[0x2743A00E0](v136);
    dependencyGraph = self->_dependencyGraph;
    v21 = MEMORY[0x277CCABB0];
    v22 = [v12 service];
    v23 = [v21 numberWithUnsignedLongLong:{objc_msgSend(v22, "threadID")}];
    v24 = [(NSDictionary *)dependencyGraph objectForKeyedSubscript:v23];

    v93 = v12;
    v106 = self;
    if (v24)
    {
      v25 = [(UBUnblockReactiveRecovery *)self dependencyChainForNode:v24 processInfos:v18 options:a7, v24];
      [v12 setServiceDependencyChain:v25];
    }

    else
    {
      v26 = *__error();
      v27 = _ublogt();
      if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
      {
        [UBUnblockReactiveRecovery fillInRecoveryInfo:deadlockNodeSelected:exhaustedTaskSelected:threadExhaustions:options:];
      }

      *__error() = v26;
      [v12 setServiceDependencyChain:{MEMORY[0x277CBEBF8], 0}];
    }

    v95 = v13;
    v92 = v18;
    if (v13)
    {
      threadIDToDeadlockDict = self->_threadIDToDeadlockDict;
      v29 = MEMORY[0x277CCABB0];
      v30 = [v13 thread];
      v31 = [v29 numberWithUnsignedLongLong:{objc_msgSend(v30, "threadId")}];
      v32 = [(NSDictionary *)threadIDToDeadlockDict objectForKeyedSubscript:v31];

      v100 = v32;
      if (!v32)
      {
        v33 = *__error();
        v34 = _ublogt();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_FAULT))
        {
          [UBUnblockReactiveRecovery fillInRecoveryInfo:deadlockNodeSelected:exhaustedTaskSelected:threadExhaustions:options:];
        }

        *__error() = v33;
      }

      v35 = [(UBUnblockReactiveRecovery *)self processThreadInfosForDeadlock:v13 processInfos:v18 options:a7];
      [v12 setProcessesAndThreadsInvolved:v35];

      v134 = 0u;
      v135 = 0u;
      v132 = 0u;
      v133 = 0u;
      v36 = [v12 processesAndThreadsInvolved];
      v37 = [v36 countByEnumeratingWithState:&v132 objects:v146 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v133;
        while (2)
        {
          for (i = 0; i != v38; ++i)
          {
            if (*v133 != v39)
            {
              objc_enumerationMutation(v36);
            }

            v41 = *(*(&v132 + 1) + 8 * i);
            v42 = [v41 process];
            v43 = [v42 pid];
            v44 = [v13 task];
            v45 = [v44 pid];

            if (v43 == v45)
            {
              v46 = [v41 process];
              [v93 setSelectedProcess:v46];

              v13 = v95;
              goto LABEL_26;
            }

            v13 = v95;
          }

          v38 = [v36 countByEnumeratingWithState:&v132 objects:v146 count:16];
          if (v38)
          {
            continue;
          }

          break;
        }
      }

LABEL_26:

      [v100 timeSpentDeadlocked];
      v47 = v93;
      [v93 setTimeSinceIssueBegan:?];
      v48 = [v100 numThreadsBlocked];
    }

    else
    {
      if (v101)
      {
        v49 = [v101 task];
        v50 = (v19)[2](v19, v49);
        v47 = v12;
        [v12 setSelectedProcess:v50];

        [v101 timeSpentBlocked];
        [v12 setTimeSinceIssueBegan:?];
        [v12 setProcessesAndThreadsInvolved:MEMORY[0x277CBEBF8]];
        v48 = [v101 numThreadsBlocked];
      }

      else
      {
        v47 = v12;
        [v12 setSelectedProcess:0];
        [v12 setTimeSinceIssueBegan:0.0];
        [v12 setProcessesAndThreadsInvolved:MEMORY[0x277CBEBF8]];
        v48 = 0;
      }

      v100 = 0;
    }

    [v47 setNumThreadsBlockedByThisIssue:v48];
    [v47 setNumOtherIssues:{objc_msgSend(v94, "count") - ((v13 | v101) != 0) + -[NSSet count](v106->_deadlocks, "count")}];
    v51 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v52 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v128 = 0u;
    v129 = 0u;
    v130 = 0u;
    v131 = 0u;
    obj = v106->_deadlocks;
    v102 = [(NSSet *)obj countByEnumeratingWithState:&v128 objects:v145 count:16];
    if (v102)
    {
      v107 = 0;
      v98 = *v129;
      do
      {
        for (j = 0; j != v102; ++j)
        {
          if (*v129 != v98)
          {
            objc_enumerationMutation(obj);
          }

          v54 = *(*(&v128 + 1) + 8 * j);
          if (v54 == v100)
          {
            v122 = 0uLL;
            v123 = 0uLL;
            v120 = 0uLL;
            v121 = 0uLL;
            v61 = [v54 tasksBlocked];
            v62 = [v61 countByEnumeratingWithState:&v120 objects:v143 count:16];
            if (v62)
            {
              v63 = v62;
              v64 = *v121;
              do
              {
                for (k = 0; k != v63; ++k)
                {
                  if (*v121 != v64)
                  {
                    objc_enumerationMutation(v61);
                  }

                  v66 = v19[2](v19, *(*(&v120 + 1) + 8 * k));
                  [v51 addObject:v66];
                }

                v63 = [v61 countByEnumeratingWithState:&v120 objects:v143 count:16];
              }

              while (v63);
            }
          }

          else
          {
            v126 = 0uLL;
            v127 = 0uLL;
            v124 = 0uLL;
            v125 = 0uLL;
            v104 = v54;
            v55 = [v54 tasksBlocked];
            v56 = [v55 countByEnumeratingWithState:&v124 objects:v144 count:16];
            if (v56)
            {
              v57 = v56;
              v58 = *v125;
              do
              {
                for (m = 0; m != v57; ++m)
                {
                  if (*v125 != v58)
                  {
                    objc_enumerationMutation(v55);
                  }

                  v60 = v19[2](v19, *(*(&v124 + 1) + 8 * m));
                  [v52 addObject:v60];
                }

                v57 = [v55 countByEnumeratingWithState:&v124 objects:v144 count:16];
              }

              while (v57);
            }

            v107 += [v104 numThreadsBlocked];
          }
        }

        v102 = [(NSSet *)obj countByEnumeratingWithState:&v128 objects:v145 count:16];
      }

      while (v102);
    }

    else
    {
      v107 = 0;
    }

    v118 = 0u;
    v119 = 0u;
    v116 = 0u;
    v117 = 0u;
    obja = v94;
    v103 = [obja countByEnumeratingWithState:&v116 objects:v142 count:16];
    if (v103)
    {
      v99 = *v117;
      do
      {
        for (n = 0; n != v103; ++n)
        {
          if (*v117 != v99)
          {
            objc_enumerationMutation(obja);
          }

          v68 = *(*(&v116 + 1) + 8 * n);
          if (v68 == v101)
          {
            v110 = 0uLL;
            v111 = 0uLL;
            v108 = 0uLL;
            v109 = 0uLL;
            v75 = [v68 tasksBlocked];
            v76 = [v75 countByEnumeratingWithState:&v108 objects:v140 count:16];
            if (v76)
            {
              v77 = v76;
              v78 = *v109;
              do
              {
                for (ii = 0; ii != v77; ++ii)
                {
                  if (*v109 != v78)
                  {
                    objc_enumerationMutation(v75);
                  }

                  v80 = v19[2](v19, *(*(&v108 + 1) + 8 * ii));
                  [v51 addObject:v80];
                }

                v77 = [v75 countByEnumeratingWithState:&v108 objects:v140 count:16];
              }

              while (v77);
            }
          }

          else
          {
            v114 = 0uLL;
            v115 = 0uLL;
            v112 = 0uLL;
            v113 = 0uLL;
            v105 = v68;
            v69 = [v68 tasksBlocked];
            v70 = [v69 countByEnumeratingWithState:&v112 objects:v141 count:16];
            if (v70)
            {
              v71 = v70;
              v72 = *v113;
              do
              {
                for (jj = 0; jj != v71; ++jj)
                {
                  if (*v113 != v72)
                  {
                    objc_enumerationMutation(v69);
                  }

                  v74 = v19[2](v19, *(*(&v112 + 1) + 8 * jj));
                  [v52 addObject:v74];
                }

                v71 = [v69 countByEnumeratingWithState:&v112 objects:v141 count:16];
              }

              while (v71);
            }

            v107 += [v105 numThreadsBlocked];
          }
        }

        v103 = [obja countByEnumeratingWithState:&v116 objects:v142 count:16];
      }

      while (v103);
    }

    v12 = v93;
    [v93 setNumThreadsBlockedByOtherIssues:v107];
    v81 = [v51 mutableCopy];
    [v81 minusSet:v52];
    v82 = [v81 allObjects];
    v83 = [v82 sortedArrayUsingComparator:&__block_literal_global_198];
    [v93 setProcessesBlockedByThisIssueOnly:v83];

    v84 = [v51 mutableCopy];
    [v84 intersectSet:v52];
    v85 = [v84 allObjects];
    v86 = [v85 sortedArrayUsingComparator:&__block_literal_global_198];
    [v93 setProcessesBlockedByThisAndOtherIssues:v86];

    v87 = [v52 mutableCopy];
    [v87 minusSet:v51];
    v88 = [v87 allObjects];
    v89 = [v88 sortedArrayUsingComparator:&__block_literal_global_198];
    [v93 setProcessesBlockedByOtherIssuesOnly:v89];

    v13 = v95;
    v14 = v101;
  }

  v90 = *MEMORY[0x277D85DE8];
}

- (BOOL)taskIs3PApp:(id)a3 options:(unint64_t)a4
{
  v4 = a4;
  v71 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [v6 pid];
  v8 = self->_taskIs3PAppDict;
  objc_sync_enter(v8);
  taskIs3PAppDict = self->_taskIs3PAppDict;
  v10 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  v11 = [(NSMutableDictionary *)taskIs3PAppDict objectForKeyedSubscript:v10];

  if (v11)
  {
    goto LABEL_2;
  }

  if ((v4 & 2) != 0)
  {
    v11 = 0;
    v13 = 0;
    goto LABEL_4;
  }

  v16 = MEMORY[0x277CCABB0];
  v53 = v6;
  if ([v53 pid])
  {
    v17 = [v53 mainBinaryPath];
    v18 = v17;
    if (v17 && ([v17 isAbsolutePath] & 1) != 0)
    {
      v19 = v18;
    }

    else
    {
      v19 = UBCopyPathForPid([v53 pid]);

      if (!v19 || ([v19 isAbsolutePath] & 1) == 0)
      {
        v33 = *__error();
        v34 = _ublogt();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          v35 = [v53 name];
          -[UBUnblockReactiveRecovery taskIs3PApp:options:].cold.1(v35, v70, [v53 pid], v34);
        }

        *__error() = v33;
        v32 = 1;
        goto LABEL_39;
      }
    }

    v60 = 0u;
    v61 = 0u;
    *location = 0u;
    v59 = 0u;
    v20 = [&unk_288046F98 countByEnumeratingWithState:location objects:v70 count:16];
    if (v20)
    {
      v21 = *v59;
      while (2)
      {
        v22 = v16;
        for (i = 0; i != v20; ++i)
        {
          if (*v59 != v21)
          {
            objc_enumerationMutation(&unk_288046F98);
          }

          if ([v19 hasPrefix:*(location[1] + i)])
          {
            v16 = v22;
            v36 = *__error();
            v37 = _ublogt();
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              v47 = [v53 name];
              v48 = [v53 pid];
              *buf = 138412802;
              v63 = v47;
              v64 = 1024;
              v65 = v48;
              v66 = 2112;
              v67 = v19;
              _os_log_debug_impl(&dword_270397000, v37, OS_LOG_TYPE_DEBUG, "%@ [%d]'s path %@ is in system dir, not 3P app", buf, 0x1Cu);
            }

            v32 = 0;
            *__error() = v36;
            goto LABEL_39;
          }
        }

        v20 = [&unk_288046F98 countByEnumeratingWithState:location objects:v70 count:16];
        v16 = v22;
        if (v20)
        {
          continue;
        }

        break;
      }
    }

    v24 = UBCopyBundleIDForPath(v19);
    v25 = v24;
    if (v24)
    {
      v26 = [v24 hasPrefix:@"com.apple."];
      v27 = *__error();
      v28 = _ublogt();
      v29 = os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG);
      if (!v26)
      {
        if (v29)
        {
          v51 = [v53 name];
          v52 = [v53 pid];
          *buf = 138544130;
          v63 = v51;
          v64 = 1024;
          v65 = v52;
          v66 = 2114;
          v67 = v19;
          v68 = 2114;
          v69 = v25;
          _os_log_debug_impl(&dword_270397000, v28, OS_LOG_TYPE_DEBUG, "Non-Apple bundle for %{public}@ [%d] (%{public}@), %{public}@, 3P app", buf, 0x26u);
        }

        v32 = 1;
        goto LABEL_38;
      }

      if (v29)
      {
        v30 = [v53 name];
        v31 = [v53 pid];
        *buf = 138544130;
        v63 = v30;
        v64 = 1024;
        v65 = v31;
        v66 = 2114;
        v67 = v19;
        v68 = 2114;
        v69 = v25;
        _os_log_debug_impl(&dword_270397000, v28, OS_LOG_TYPE_DEBUG, "Apple bundle for %{public}@ [%d] (%{public}@), %{public}@, not 3P app", buf, 0x26u);
      }
    }

    else
    {
      v27 = *__error();
      v28 = _ublogt();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v49 = [v53 name];
        v50 = [v53 pid];
        *buf = 138543874;
        v63 = v49;
        v64 = 1024;
        v65 = v50;
        v66 = 2114;
        v67 = v19;
        _os_log_debug_impl(&dword_270397000, v28, OS_LOG_TYPE_DEBUG, "No bundle for %{public}@ [%d] (%{public}@, not 3P app", buf, 0x1Cu);
      }
    }

    v32 = 0;
LABEL_38:

    *__error() = v27;
LABEL_39:

    goto LABEL_40;
  }

  v32 = 0;
LABEL_40:

  v11 = [v16 numberWithBool:v32];
  v38 = self->_taskIs3PAppDict;
  v39 = [MEMORY[0x277CCABB0] numberWithInt:v7];
  [(NSMutableDictionary *)v38 setObject:v11 forKeyedSubscript:v39];

  if (!v7)
  {
    v12 = [v11 BOOLValue];
    goto LABEL_3;
  }

  v40 = dispatch_get_global_queue(17, 0);
  v41 = dispatch_source_create(MEMORY[0x277D85D20], v7, 0xE0000000uLL, v40);

  if (v41)
  {
    objc_initWeak(location, self);
    handler[0] = MEMORY[0x277D85DD0];
    handler[1] = 3221225472;
    handler[2] = __49__UBUnblockReactiveRecovery_taskIs3PApp_options___block_invoke;
    handler[3] = &unk_279E02D10;
    objc_copyWeak(&v56, location);
    v57 = v7;
    v42 = v41;
    v55 = v42;
    dispatch_source_set_event_handler(v42, handler);
    dispatch_activate(v42);

    objc_destroyWeak(&v56);
    objc_destroyWeak(location);
  }

  else
  {
    v43 = *__error();
    v44 = _ublogt();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockReactiveRecovery taskIs3PApp:options:];
    }

    *__error() = v43;
    v45 = self->_taskIs3PAppDict;
    v46 = [MEMORY[0x277CCABB0] numberWithInt:v7];
    [(NSMutableDictionary *)v45 setObject:0 forKeyedSubscript:v46];
  }

LABEL_2:
  v12 = [v11 BOOLValue];
LABEL_3:
  v13 = v12;
LABEL_4:

  objc_sync_exit(v8);
  v14 = *MEMORY[0x277D85DE8];
  return v13;
}

- (BOOL)avoidKillingTask:(id)a3 options:(unint64_t)a4
{
  v6 = a3;
  v7 = [v6 name];
  v8 = [v6 pid];
  if (([v7 isEqualToString:@"logd"] & 1) != 0 || (objc_msgSend(v7, "isEqualToString:", @"watchdogd") & 1) != 0 || (v13 = getpid(), v8 < 2) || v8 == v13)
  {
    v9 = *__error();
    v10 = _ublogt();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      [UBUnblockReactiveRecovery avoidKillingTask:options:];
    }

    *__error() = v9;
    v11 = 1;
  }

  else
  {
    v11 = [(UBUnblockReactiveRecovery *)self taskIs3PApp:v6 options:a4];
  }

  return v11;
}

- (id)selectTaskInDefinitiveIssuesWithServiceContext:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [v4 serviceResult];
  v45 = [v4 threadExhaustions];
  v7 = [v4 options];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v6 service];
  v10 = [v8 numberWithUnsignedLongLong:{objc_msgSend(v9, "threadID")}];

  v11 = *__error();
  v12 = _ublogt();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    [UBUnblockReactiveRecovery selectTaskInDefinitiveIssuesWithServiceContext:v6];
  }

  *__error() = v11;
  v13 = [(NSDictionary *)self->_threadIDToDeadlockDict objectForKeyedSubscript:v10];
  if (v13)
  {
    v43 = v10;
    v14 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v13, 0}];
    v15 = [(UBUnblockReactiveRecovery *)self selectNodeInDeadlocks:v14 longerThan:v4 serviceContext:0.0];

    [v6 setIssueType:1];
    [v6 setRecoveryConfidence:1];
    [(UBUnblockReactiveRecovery *)self fillInRecoveryInfo:v6 deadlockNodeSelected:v15 exhaustedTaskSelected:0 threadExhaustions:v45 options:v7];
    v16 = [v15 task];
    v17 = *__error();
    v18 = _ublogt();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      [v6 serviceProcessName];
      v19 = v39 = v13;
      v38 = [v6 service];
      v36 = [v38 pid];
      v37 = [v6 service];
      v20 = [v37 threadID];
      [v6 service];
      v21 = v41 = v5;
      [v21 timeElapsed];
      v23 = v22;
      v24 = [v16 name];
      *buf = 138544642;
      v47 = v19;
      v48 = 1024;
      v49 = v36;
      v50 = 2048;
      v51 = v20;
      v52 = 2048;
      v53 = v23;
      v54 = 2114;
      v55 = v24;
      v56 = 1024;
      v57 = [v16 pid];
      _os_log_impl(&dword_270397000, v18, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Impacted by deadlock involving %{public}@ [%d]", buf, 0x36u);

      v5 = v41;
      v13 = v39;
    }

    *__error() = v17;
    v10 = v43;
  }

  else
  {
    v25 = *__error();
    v26 = _ublogt();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      v27 = [v6 serviceProcessName];
      v40 = [v6 service];
      v42 = v25;
      v28 = v5;
      v29 = [v40 pid];
      [v6 service];
      v30 = v44 = v10;
      v31 = [v30 threadID];
      v32 = [v6 service];
      [v32 timeElapsed];
      *buf = 138544130;
      v47 = v27;
      v48 = 1024;
      v49 = v29;
      v5 = v28;
      v25 = v42;
      v50 = 2048;
      v51 = v31;
      v52 = 2048;
      v53 = v33;
      _os_log_impl(&dword_270397000, v26, OS_LOG_TYPE_INFO, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Not impacted directly by deadlock", buf, 0x26u);

      v10 = v44;
    }

    v16 = 0;
    *__error() = v25;
  }

  objc_autoreleasePoolPop(v5);
  v34 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)selectTaskBlockingTask:(id)a3 serviceContext:(id)a4
{
  v178 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  context = objc_autoreleasePoolPush();
  v8 = [v7 serviceResult];
  v9 = [v7 threadExhaustions];
  v10 = [v7 threadIDToThreadExhaustionDict];
  v160 = [v7 options];
  v11 = MEMORY[0x277CCABB0];
  v12 = [v8 service];
  v13 = [v11 numberWithUnsignedLongLong:{objc_msgSend(v12, "threadID")}];

  v14 = [v8 service];
  [v14 timeElapsed];
  v16 = v15;

  v17 = *__error();
  v18 = _ublogt();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
  {
    [UBUnblockReactiveRecovery selectTaskBlockingTask:serviceContext:];
  }

  *__error() = v17;
  v19 = [v10 objectForKeyedSubscript:v13];
  v156 = v13;
  v157 = v6;
  v154 = v9;
  v155 = v7;
  v153 = v10;
  v158 = self;
  if (v19)
  {
    [v8 setIssueType:2];
    [v8 setRecoveryConfidence:2];
    [(UBUnblockReactiveRecovery *)self fillInRecoveryInfo:v8 deadlockNodeSelected:0 exhaustedTaskSelected:v19 threadExhaustions:v9 options:v160];
    v20 = [v19 task];
    v21 = *__error();
    v22 = _ublogt();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      v136 = [v8 serviceProcessName];
      v142 = [v8 service];
      v23 = [v142 pid];
      v24 = [v8 service];
      v25 = [v24 threadID];
      v26 = [v8 service];
      [v26 timeElapsed];
      v28 = v27;
      [v20 name];
      v150 = v8;
      v29 = v21;
      v30 = v19;
      v32 = v31 = v20;
      *buf = 138544642;
      v163 = v136;
      v164 = 1024;
      v165 = v23;
      v10 = v153;
      v166 = 2048;
      v167 = v25;
      v6 = v157;
      v168 = 2048;
      v169 = v28;
      v170 = 2114;
      v171 = v32;
      v172 = 1024;
      v173 = [v31 pid];
      _os_log_impl(&dword_270397000, v22, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Last dependency %{public}@ [%d] is impacted by thread exhaustions", buf, 0x36u);

      v20 = v31;
      v19 = v30;
      v21 = v29;
      v8 = v150;

      v13 = v156;
      v9 = v154;
    }

    *__error() = v21;
    self = v158;
    if (![(UBUnblockReactiveRecovery *)v158 avoidKillingTask:v20 options:v160])
    {
      goto LABEL_44;
    }

    v151 = v20;
    v33 = *__error();
    v34 = _ublogt();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
    {
      [v8 serviceProcessName];
      v132 = v143 = v19;
      v137 = [v8 service];
      v35 = v33;
      v36 = [v137 pid];
      v37 = [v8 service];
      v38 = [v37 threadID];
      v39 = [v8 service];
      [v39 timeElapsed];
      v41 = v40;
      v42 = [v151 name];
      self = v158;
      v43 = [v151 pid];
      *buf = 138544642;
      v163 = v132;
      v164 = 1024;
      v165 = v36;
      v33 = v35;
      v166 = 2048;
      v167 = v38;
      v10 = v153;
      v168 = 2048;
      v169 = v41;
      v170 = 2114;
      v171 = v42;
      v172 = 1024;
      v173 = v43;
      _os_log_impl(&dword_270397000, v34, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: %{public}@ [%d] is not killable, checking for other issues", buf, 0x36u);

      v6 = v157;
      v13 = v156;

      v9 = v154;
      v19 = v143;
    }
  }

  else
  {
    v33 = *__error();
    v34 = _ublogt();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
    {
      v138 = [v8 serviceProcessName];
      v152 = [v8 service];
      v44 = v33;
      v45 = [v152 pid];
      v46 = [v8 service];
      v47 = [v46 threadID];
      v48 = [v8 service];
      [v48 timeElapsed];
      v50 = v49;
      v51 = [v6 name];
      *buf = 138544642;
      v163 = v138;
      v164 = 1024;
      v165 = v45;
      v33 = v44;
      v166 = 2048;
      v167 = v47;
      v10 = v153;
      v168 = 2048;
      v169 = v50;
      v170 = 2114;
      v171 = v51;
      v172 = 1024;
      v173 = [v157 pid];
      _os_log_impl(&dword_270397000, v34, OS_LOG_TYPE_INFO, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Last dependency %{public}@ [%d] is not impacted by thread exhaustions", buf, 0x36u);

      v6 = v157;
      v13 = v156;

      v9 = v154;
      v19 = 0;
    }

    v151 = 0;
  }

  v52 = v16 * 0.66666;

  *__error() = v33;
  v53 = *__error();
  v54 = _ublogt();
  if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
  {
    [UBUnblockReactiveRecovery selectTaskBlockingTask:serviceContext:];
  }

  *__error() = v53;
  [(UBUnblockReactiveRecovery *)self selectNodeInDeadlocksBlockingTask:v6 preferredMinimumDuration:v7 serviceContext:v52];
  v56 = v55 = self;
  if (v56)
  {
    [v8 setIssueType:1];
    [v8 setRecoveryConfidence:2];
    [(UBUnblockReactiveRecovery *)v55 fillInRecoveryInfo:v8 deadlockNodeSelected:v56 exhaustedTaskSelected:0 threadExhaustions:v9 options:v160];
    v57 = [v56 task];
    v58 = *__error();
    v59 = _ublogt();
    if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
    {
      [v8 serviceProcessName];
      v60 = v144 = v57;
      v139 = [v8 service];
      v130 = [v139 pid];
      v133 = [v8 service];
      v61 = [v133 threadID];
      v62 = [v8 service];
      [v62 timeElapsed];
      v64 = v63;
      v65 = [v6 name];
      v66 = v56;
      v67 = v58;
      v68 = [v6 pid];
      v69 = [v144 name];
      v70 = [v144 pid];
      *buf = 138545154;
      v163 = v60;
      v164 = 1024;
      v165 = v130;
      v166 = 2048;
      v167 = v61;
      v7 = v155;
      v168 = 2048;
      v169 = v64;
      v170 = 2114;
      v171 = v65;
      v172 = 1024;
      v173 = v68;
      v58 = v67;
      v56 = v66;
      v174 = 2114;
      v175 = v69;
      v176 = 1024;
      v177 = v70;
      _os_log_impl(&dword_270397000, v59, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Last dependency %{public}@ [%d] is blocked by deadlock involving %{public}@ [%d]", buf, 0x46u);

      v6 = v157;
      v10 = v153;

      v9 = v154;
      v57 = v144;
    }

    *__error() = v58;
    if (![(UBUnblockReactiveRecovery *)v158 avoidKillingTask:v57 options:v160])
    {

      v19 = v151;
      goto LABEL_42;
    }

    v71 = *__error();
    v72 = _ublogt();
    if (os_log_type_enabled(v72, OS_LOG_TYPE_DEFAULT))
    {
      v134 = [v8 serviceProcessName];
      v140 = [v8 service];
      v73 = [v140 pid];
      v74 = [v8 service];
      v75 = [v74 threadID];
      v76 = [v8 service];
      [v76 timeElapsed];
      v78 = v77;
      [v57 name];
      v79 = v145 = v71;
      v80 = [v57 pid];
      *buf = 138544642;
      v163 = v134;
      v164 = 1024;
      v165 = v73;
      v166 = 2048;
      v167 = v75;
      v6 = v157;
      v168 = 2048;
      v169 = v78;
      v170 = 2114;
      v171 = v79;
      v172 = 1024;
      v173 = v80;
      _os_log_impl(&dword_270397000, v72, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: %{public}@ [%d] is not killable, checking for other issues", buf, 0x36u);

      v71 = v145;
      v10 = v153;

      v9 = v154;
      v7 = v155;
    }

    *__error() = v71;
    v81 = v151;
    if (!v151)
    {
      v81 = v57;
    }

    v151 = v81;

    v13 = v156;
  }

  else
  {
    v82 = *__error();
    v83 = _ublogt();
    if (os_log_type_enabled(v83, OS_LOG_TYPE_INFO))
    {
      [v8 serviceProcessName];
      v84 = v146 = v82;
      v85 = [v8 service];
      v86 = [v85 pid];
      v87 = [v8 service];
      v88 = [v87 threadID];
      v89 = [v8 service];
      [v89 timeElapsed];
      v91 = v90;
      v92 = [v6 name];
      v93 = [v157 pid];
      *buf = 138544642;
      v163 = v84;
      v164 = 1024;
      v165 = v86;
      v166 = 2048;
      v167 = v88;
      v10 = v153;
      v168 = 2048;
      v169 = v91;
      v170 = 2114;
      v171 = v92;
      v172 = 1024;
      v173 = v93;
      _os_log_impl(&dword_270397000, v83, OS_LOG_TYPE_INFO, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Last dependency %{public}@ [%d] is not blocked by any deadlocks", buf, 0x36u);

      v6 = v157;
      v13 = v156;

      v9 = v154;
      v7 = v155;

      v82 = v146;
    }

    *__error() = v82;
  }

  v94 = *__error();
  v95 = _ublogt();
  if (os_log_type_enabled(v95, OS_LOG_TYPE_DEBUG))
  {
    [UBUnblockReactiveRecovery selectTaskBlockingTask:serviceContext:];
  }

  *__error() = v94;
  v19 = [(UBUnblockReactiveRecovery *)v158 selectThreadExhaustionBlockingTask:v6 serviceContext:v7];
  if (v19)
  {
    [v8 setIssueType:2];
    [v8 setRecoveryConfidence:2];
    [(UBUnblockReactiveRecovery *)v158 fillInRecoveryInfo:v8 deadlockNodeSelected:0 exhaustedTaskSelected:v19 threadExhaustions:v9 options:v160];
    v57 = [v19 task];
    v96 = *__error();
    v97 = _ublogt();
    if (os_log_type_enabled(v97, OS_LOG_TYPE_DEFAULT))
    {
      v131 = [v8 serviceProcessName];
      v147 = [v8 service];
      v129 = [v147 pid];
      v141 = [v8 service];
      v128 = [v141 threadID];
      v135 = [v8 service];
      [v135 timeElapsed];
      v99 = v98;
      v100 = [v6 name];
      v101 = v96;
      v102 = v19;
      v103 = [v6 pid];
      v104 = [v57 name];
      v105 = [v57 pid];
      *buf = 138545154;
      v163 = v131;
      v164 = 1024;
      v165 = v129;
      v166 = 2048;
      v167 = v128;
      v7 = v155;
      v168 = 2048;
      v169 = v99;
      v170 = 2114;
      v171 = v100;
      v172 = 1024;
      v173 = v103;
      v19 = v102;
      v96 = v101;
      v174 = 2114;
      v175 = v104;
      v176 = 1024;
      v177 = v105;
      _os_log_impl(&dword_270397000, v97, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Last dependency %{public}@ [%d] is blocked by thread exhaustion in %{public}@ [%d]", buf, 0x46u);

      v6 = v157;
      v10 = v153;

      v9 = v154;
    }

    *__error() = v96;
    v20 = v151;
    if ([(UBUnblockReactiveRecovery *)v158 avoidKillingTask:v57 options:v160])
    {
      v106 = *__error();
      v107 = _ublogt();
      if (os_log_type_enabled(v107, OS_LOG_TYPE_DEFAULT))
      {
        v148 = [v8 serviceProcessName];
        v159 = [v8 service];
        v108 = [v159 pid];
        v109 = [v8 service];
        v110 = [v109 threadID];
        v111 = [v8 service];
        [v111 timeElapsed];
        v113 = v112;
        [v57 name];
        v161 = v106;
        v115 = v114 = v19;
        v116 = [v57 pid];
        *buf = 138544642;
        v163 = v148;
        v164 = 1024;
        v165 = v108;
        v20 = v151;
        v166 = 2048;
        v167 = v110;
        v6 = v157;
        v168 = 2048;
        v169 = v113;
        v170 = 2114;
        v171 = v115;
        v172 = 1024;
        v173 = v116;
        _os_log_impl(&dword_270397000, v107, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: %{public}@ [%d] is not killable, checking for other issues", buf, 0x36u);

        v19 = v114;
        v106 = v161;

        v10 = v153;
        v9 = v154;

        v7 = v155;
      }

      *__error() = v106;
      if (!v20)
      {
        v20 = v57;
      }

      goto LABEL_43;
    }

    v19 = v151;
LABEL_42:
    v20 = v57;
LABEL_43:
    v13 = v156;
    goto LABEL_44;
  }

  v117 = *__error();
  v118 = _ublogt();
  if (os_log_type_enabled(v118, OS_LOG_TYPE_INFO))
  {
    v119 = [v8 serviceProcessName];
    v120 = [v8 service];
    v121 = [v120 pid];
    v122 = [v8 service];
    v123 = [v122 threadID];
    v124 = [v8 service];
    [v124 timeElapsed];
    *buf = 138544130;
    v163 = v119;
    v164 = 1024;
    v165 = v121;
    v166 = 2048;
    v167 = v123;
    v13 = v156;
    v168 = 2048;
    v169 = v125;
    _os_log_impl(&dword_270397000, v118, OS_LOG_TYPE_INFO, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: No relevant thread exhaustions.", buf, 0x26u);

    v10 = v153;
    v9 = v154;

    v7 = v155;
  }

  *__error() = v117;
  v20 = v151;
  v19 = 0;
LABEL_44:

  objc_autoreleasePoolPop(context);
  v126 = *MEMORY[0x277D85DE8];

  return v20;
}

- (id)selectTaskInvolvedInAnyIssueWithServiceContext:(id)a3
{
  v151 = *MEMORY[0x277D85DE8];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v5 = [v4 serviceNode];
  v6 = [v4 serviceResult];
  v7 = [v4 threadExhaustions];
  v8 = [v4 options];
  v9 = [v6 service];
  [v9 timeElapsed];
  v11 = v10;

  v12 = *__error();
  v13 = _ublogt();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    [UBUnblockReactiveRecovery selectTaskInvolvedInAnyIssueWithServiceContext:v6];
  }

  *__error() = v12;
  v14 = [(UBUnblockReactiveRecovery *)self selectThreadExhaustionInThreadExhaustions:v7 allowSuspended:0 serviceContext:v4];
  v128 = self;
  v132 = v4;
  v134 = v8;
  if (!v14)
  {
    v26 = *__error();
    v27 = _ublogt();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_INFO))
    {
      v38 = [v6 serviceProcessName];
      v115 = [v6 service];
      v121 = v26;
      v39 = [v115 pid];
      v40 = [v6 service];
      v41 = v7;
      v42 = v5;
      v43 = [v40 threadID];
      v44 = [v6 service];
      [v44 timeElapsed];
      *buf = 138544130;
      v139 = v38;
      v140 = 1024;
      v141 = v39;
      v26 = v121;
      v142 = 2048;
      v143 = v43;
      v5 = v42;
      v7 = v41;
      v144 = 2048;
      v145 = v45;
      _os_log_impl(&dword_270397000, v27, OS_LOG_TYPE_INFO, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: No relevant thread exhaustions.", buf, 0x26u);

      v14 = 0;
      self = v128;
    }

    v15 = 0;
    goto LABEL_12;
  }

  [v6 setIssueType:2];
  [v6 setRecoveryConfidence:2];
  [(UBUnblockReactiveRecovery *)self fillInRecoveryInfo:v6 deadlockNodeSelected:0 exhaustedTaskSelected:v14 threadExhaustions:v7 options:v8];
  v15 = [v14 task];
  v16 = *__error();
  v17 = _ublogt();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v18 = [v6 serviceProcessName];
    v113 = [v6 service];
    v119 = v14;
    v19 = [v113 pid];
    v110 = [v6 service];
    v108 = [v110 threadID];
    v20 = [v6 service];
    [v20 timeElapsed];
    v22 = v21;
    v23 = v16;
    v24 = [v7 count];
    [v15 name];
    v25 = v123 = v5;
    *buf = 138544898;
    v139 = v18;
    v140 = 1024;
    v141 = v19;
    v14 = v119;
    v142 = 2048;
    v143 = v108;
    v144 = 2048;
    v145 = v22;
    v146 = 2048;
    *v147 = v24;
    v16 = v23;
    *&v147[8] = 2114;
    v148 = v25;
    v149 = 1024;
    v150 = [v15 pid];
    _os_log_impl(&dword_270397000, v17, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Found %lu thread exhaustions, selected %{public}@ [%d]", buf, 0x40u);

    v5 = v123;
    self = v128;

    v4 = v132;
  }

  *__error() = v16;
  if ([(UBUnblockReactiveRecovery *)self avoidKillingTask:v15 options:v134])
  {
    v26 = *__error();
    v27 = _ublogt();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = [v6 serviceProcessName];
      v114 = [v6 service];
      v120 = v26;
      v29 = [v114 pid];
      v111 = [v6 service];
      v30 = v5;
      v31 = [v111 threadID];
      v32 = [v6 service];
      [v32 timeElapsed];
      v34 = v33;
      [v15 name];
      v124 = v6;
      v36 = v35 = v14;
      v37 = [v15 pid];
      *buf = 138544642;
      v139 = v28;
      v140 = 1024;
      v141 = v29;
      v26 = v120;
      v142 = 2048;
      v143 = v31;
      v5 = v30;
      v144 = 2048;
      v145 = v34;
      v146 = 2114;
      *v147 = v36;
      *&v147[8] = 1024;
      LODWORD(v148) = v37;
      _os_log_impl(&dword_270397000, v27, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: %{public}@ [%d] is not killable, checking for other issues", buf, 0x36u);

      v14 = v35;
      v6 = v124;

      self = v128;
      v4 = v132;
    }

LABEL_12:
    v46 = v11 * 0.66666;

    *__error() = v26;
    v47 = *__error();
    v48 = _ublogt();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEBUG))
    {
      [UBUnblockReactiveRecovery selectTaskInvolvedInAnyIssueWithServiceContext:v6];
    }

    *__error() = v47;
    v49 = [(UBUnblockReactiveRecovery *)self selectNodeInDeadlocks:self->_deadlocks longerThan:v4 serviceContext:v46];
    v14 = v49;
    if (v49)
    {
      v122 = v15;
      v50 = [v49 task];
      v51 = [v50 taskStates];
      v52 = [v51 lastObject];
      v53 = [v52 effectiveJetsamPriority];

      v54 = [v5 task];
      v55 = [v54 taskStates];
      v56 = [v55 lastObject];
      v57 = [v56 effectiveJetsamPriority];

      if (v53 <= v57)
      {
        [v6 setIssueType:1];
        [v6 setRecoveryConfidence:2];
        v78 = v128;
        [(UBUnblockReactiveRecovery *)v128 fillInRecoveryInfo:v6 deadlockNodeSelected:v14 exhaustedTaskSelected:0 threadExhaustions:v7 options:v134];
        v79 = [v14 task];
        v80 = *__error();
        v81 = _ublogt();
        if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
        {
          v109 = [v6 serviceProcessName];
          v117 = [v6 service];
          v107 = [v117 pid];
          v112 = [v6 service];
          v82 = v80;
          v83 = v7;
          v84 = v5;
          v85 = [v112 threadID];
          v86 = [v6 service];
          [v86 timeElapsed];
          v88 = v87;
          [v79 name];
          v126 = v6;
          v90 = v89 = v14;
          v91 = [v79 pid];
          *buf = 138544642;
          v139 = v109;
          v140 = 1024;
          v141 = v107;
          v142 = 2048;
          v143 = v85;
          v5 = v84;
          v7 = v83;
          v80 = v82;
          v144 = 2048;
          v145 = v88;
          v146 = 2114;
          *v147 = v90;
          *&v147[8] = 1024;
          LODWORD(v148) = v91;
          _os_log_impl(&dword_270397000, v81, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Correlated deadlock found involving %{public}@ [%d]", buf, 0x36u);

          v14 = v89;
          v6 = v126;

          v78 = v128;
          v4 = v132;
        }

        *__error() = v80;
        if ([(UBUnblockReactiveRecovery *)v78 avoidKillingTask:v79 options:v134])
        {
          v92 = *__error();
          v93 = _ublogt();
          if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
          {
            v94 = [v6 serviceProcessName];
            [v6 service];
            v118 = v137 = v7;
            v131 = v92;
            v95 = [v118 pid];
            v96 = [v6 service];
            v97 = v5;
            v98 = [v96 threadID];
            v99 = [v6 service];
            [v99 timeElapsed];
            v101 = v100;
            [v79 name];
            v127 = v6;
            v103 = v102 = v14;
            v104 = [v79 pid];
            *buf = 138544642;
            v139 = v94;
            v140 = 1024;
            v141 = v95;
            v92 = v131;
            v142 = 2048;
            v143 = v98;
            v5 = v97;
            v144 = 2048;
            v145 = v101;
            v146 = 2114;
            *v147 = v103;
            *&v147[8] = 1024;
            LODWORD(v148) = v104;
            _os_log_impl(&dword_270397000, v93, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: %{public}@ [%d] is not killable, checking for other issues", buf, 0x36u);

            v14 = v102;
            v6 = v127;

            v4 = v132;
            v7 = v137;
          }

          *__error() = v92;
          v15 = v122;
          if (!v122)
          {
            v15 = v79;
          }
        }

        else
        {

          v14 = v122;
          v15 = v79;
        }
      }

      else
      {
        v58 = *__error();
        v59 = _ublogt();
        if (os_log_type_enabled(v59, OS_LOG_TYPE_DEFAULT))
        {
          v60 = [v6 serviceProcessName];
          v129 = [v6 service];
          v135 = v58;
          v61 = [v129 pid];
          v116 = [v6 service];
          v62 = v7;
          v63 = v5;
          v64 = [v116 threadID];
          [v6 service];
          v125 = v6;
          v66 = v65 = v14;
          [v66 timeElapsed];
          *buf = 138544642;
          v139 = v60;
          v140 = 1024;
          v141 = v61;
          v58 = v135;
          v142 = 2048;
          v143 = v64;
          v5 = v63;
          v7 = v62;
          v144 = 2048;
          v145 = v67;
          v146 = 1024;
          *v147 = v53;
          *&v147[4] = 1024;
          *&v147[6] = v57;
          _os_log_impl(&dword_270397000, v59, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Correlated deadlocks involve only processes of higher jetsam priority (lowest %d) than service (%d)", buf, 0x32u);

          v14 = v65;
          v6 = v125;

          v4 = v132;
        }

        *__error() = v58;
        v15 = v122;
      }
    }

    else
    {
      v68 = *__error();
      v69 = _ublogt();
      if (os_log_type_enabled(v69, OS_LOG_TYPE_INFO))
      {
        v70 = [v6 serviceProcessName];
        [v6 service];
        v130 = v136 = v7;
        v71 = v68;
        v72 = [v130 pid];
        v73 = [v6 service];
        v74 = v5;
        v75 = [v73 threadID];
        v76 = [v6 service];
        [v76 timeElapsed];
        *buf = 138544130;
        v139 = v70;
        v140 = 1024;
        v141 = v72;
        v68 = v71;
        v142 = 2048;
        v143 = v75;
        v5 = v74;
        v144 = 2048;
        v145 = v77;
        _os_log_impl(&dword_270397000, v69, OS_LOG_TYPE_INFO, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: No correlated deadlock found", buf, 0x26u);

        v14 = 0;
        v7 = v136;
      }

      *__error() = v68;
      v4 = v132;
    }
  }

  objc_autoreleasePoolPop(context);
  v105 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)selectTaskForServiceNode:(id)a3 serviceResult:(id)a4 options:(unint64_t)a5
{
  v58 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v9 service];
  [v10 timeElapsed];
  v12 = v11 * 0.66666;

  v47 = 0;
  v13 = [(UBUnblockReactiveRecovery *)self threadExhaustionsAboveLimit:&v47 threadIDToThreadExhaustionDict:v12];
  v14 = v47;
  v46 = v13;
  v15 = [[UBServiceContext alloc] initWithServiceNode:v8 serviceResult:v9 deadlocks:self->_deadlocks threadIDToDeadlockDict:self->_threadIDToDeadlockDict threadExhaustions:v13 threadIDToThreadExhaustionDict:v14 options:a5];
  v16 = [(UBUnblockReactiveRecovery *)self selectTaskInDefinitiveIssuesWithServiceContext:v15];
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v45 = v14;
    v42 = a5;
    v18 = v8;
    v19 = v18;
    if (v18)
    {
      v43 = v8;
      v20 = 0;
      v21 = 0;
      v22 = v18;
      while (![v22 isPartOfADeadlock])
      {
        v23 = v22;

        v24 = v20;
        if (!v20)
        {
          if ([v23 isPartOfADeadlock])
          {
            v24 = v23;
          }

          else
          {
            v24 = 0;
          }
        }

        v25 = v24;

        v22 = [v23 dependency];

        if (v22)
        {
          v20 = v25;
          v21 = v23;
          if (v22 != v25)
          {
            continue;
          }
        }

        v8 = v43;
        goto LABEL_14;
      }

      v8 = v43;
    }

    else
    {
      v23 = 0;
LABEL_14:
      v21 = v23;
      v22 = v21;
    }

    v26 = [v22 taskDependency];
    v27 = [v26 task];
    v28 = v27;
    if (v27)
    {
      v29 = v27;
    }

    else
    {
      v29 = [v22 task];
    }

    v30 = v29;

    v31 = *__error();
    v32 = _ublogt();
    if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
    {
      v33 = [v9 serviceProcessName];
      v44 = [v9 service];
      v39 = [v44 pid];
      v41 = [v9 service];
      v40 = v31;
      v34 = [v41 threadID];
      v35 = [v30 name];
      v36 = [v30 pid];
      *buf = 138544386;
      v49 = v33;
      v50 = 1024;
      v51 = v39;
      v52 = 2048;
      v53 = v34;
      v31 = v40;
      v54 = 2114;
      v55 = v35;
      v56 = 1024;
      v57 = v36;
      _os_log_impl(&dword_270397000, v32, OS_LOG_TYPE_INFO, "Service <%{public}@ [%d] tid[%llx]>: The last known blocking task is %{public}@ [%d].", buf, 0x2Cu);
    }

    *__error() = v31;
    v17 = [(UBUnblockReactiveRecovery *)self selectTaskBlockingTask:v30 serviceContext:v15];

    if (v17)
    {
      v14 = v45;
    }

    else
    {
      v17 = [(UBUnblockReactiveRecovery *)self selectTaskInvolvedInAnyIssueWithServiceContext:v15];
      v14 = v45;
      if (!v17)
      {
        [(UBUnblockReactiveRecovery *)self fillInRecoveryInfo:v9 deadlockNodeSelected:0 exhaustedTaskSelected:0 threadExhaustions:v46 options:v42];
      }
    }
  }

  v37 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)selectTaskInTasks:(id)a3 serviceContext:(id)a4
{
  v127 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = [v6 serviceNode];
  v91 = v6;
  v86 = [v6 options];
  if ([v5 count] <= 1)
  {
    v8 = [v5 anyObject];
    goto LABEL_109;
  }

  v82 = v7;
  v90 = [v7 task];
  v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v116 = 0u;
  v117 = 0u;
  v118 = 0u;
  v119 = 0u;
  v10 = v5;
  v11 = [v10 countByEnumeratingWithState:&v116 objects:v126 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v117;
    v14 = 0x80000000;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v117 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v16 = *(*(&v116 + 1) + 8 * i);
        v17 = [v16 taskStates];
        v18 = [v17 lastObject];

        if (v18)
        {
          v19 = [v18 effectiveJetsamPriority];
          v20 = v19;
          if (v14 == 0x80000000 || (v19 != 0x80000000 ? (v21 = v19 <= v14) : (v21 = 0), v21))
          {
            if (v19 != v14)
            {
              [v9 removeAllObjects];
              v14 = v20;
            }

            [v9 addObject:v16];
          }
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v116 objects:v126 count:16];
    }

    while (v12);
  }

  if ([v9 count] <= 1)
  {
    v5 = v10;
    v8 = [v9 anyObject];

LABEL_107:
    v7 = v82;
    goto LABEL_108;
  }

  v22 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  v115 = 0u;
  v23 = v9;
  v24 = [v23 countByEnumeratingWithState:&v112 objects:v125 count:16];
  if (!v24)
  {
    goto LABEL_39;
  }

  v25 = v24;
  v26 = 0;
  v27 = 0;
  v28 = *v113;
  do
  {
    for (j = 0; j != v25; ++j)
    {
      if (*v113 != v28)
      {
        objc_enumerationMutation(v23);
      }

      v30 = *(*(&v112 + 1) + 8 * j);
      v31 = [v30 taskStates];
      v32 = [v31 lastObject];

      if (v32)
      {
        v33 = [(UBUnblockReactiveRecovery *)self avoidKillingTask:v30 options:v86];
        if ((v27 & (v30 == v90 || v33) & 1) == 0 && (v26 & v33 & 1) == 0)
        {
          if (v30 == v90 || v33)
          {
            if ((v30 != v90) | v26 & 1)
            {
              v34 = v27;
LABEL_36:
              [v22 addObject:v30];
              v27 = v34;
              goto LABEL_37;
            }

            v26 = 1;
            v34 = v27;
          }

          else
          {
            v34 = 1;
            if (v27)
            {
              goto LABEL_36;
            }
          }

          [v22 removeAllObjects];
          goto LABEL_36;
        }
      }

LABEL_37:
    }

    v25 = [v23 countByEnumeratingWithState:&v112 objects:v125 count:16];
  }

  while (v25);
LABEL_39:

  if ([v22 count] <= 1)
  {
    v5 = v23;
    v8 = [v22 anyObject];

    goto LABEL_107;
  }

  v83 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v108 = 0u;
  v109 = 0u;
  v110 = 0u;
  v111 = 0u;
  v5 = v22;
  v87 = [v5 countByEnumeratingWithState:&v108 objects:v124 count:16];
  if (v87)
  {
    v89 = 0;
    v84 = *v109;
    v85 = v5;
    do
    {
      for (k = 0; k != v87; ++k)
      {
        if (*v109 != v84)
        {
          objc_enumerationMutation(v5);
        }

        v36 = *(*(&v108 + 1) + 8 * k);
        v37 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v104 = 0u;
        v105 = 0u;
        v106 = 0u;
        v107 = 0u;
        v38 = [v91 deadlocks];
        v39 = [v38 countByEnumeratingWithState:&v104 objects:v123 count:16];
        if (v39)
        {
          v40 = v39;
          v41 = *v105;
          do
          {
            for (m = 0; m != v40; ++m)
            {
              if (*v105 != v41)
              {
                objc_enumerationMutation(v38);
              }

              v43 = *(*(&v104 + 1) + 8 * m);
              v44 = [v43 tasksInvolved];
              v45 = [v44 containsObject:v36];

              if (v45)
              {
                v46 = [v43 tasksBlocked];
                [v37 unionSet:v46];
              }
            }

            v40 = [v38 countByEnumeratingWithState:&v104 objects:v123 count:16];
          }

          while (v40);
        }

        v102 = 0u;
        v103 = 0u;
        v100 = 0u;
        v101 = 0u;
        v47 = [v91 threadExhaustions];
        v48 = [v47 countByEnumeratingWithState:&v100 objects:v122 count:16];
        if (v48)
        {
          v49 = v48;
          v50 = *v101;
          do
          {
            for (n = 0; n != v49; ++n)
            {
              if (*v101 != v50)
              {
                objc_enumerationMutation(v47);
              }

              v52 = *(*(&v100 + 1) + 8 * n);
              v53 = [v52 task];

              if (v53 == v36)
              {
                v54 = [v52 tasksBlocked];
                [v37 unionSet:v54];
              }
            }

            v49 = [v47 countByEnumeratingWithState:&v100 objects:v122 count:16];
          }

          while (v49);
        }

        v55 = [v37 count];
        if (v55 >= v89)
        {
          v5 = v85;
          if (v55 != v89)
          {
            v56 = v55;
            [v83 removeAllObjects];
            v89 = v56;
          }

          [v83 addObject:v36];
        }

        else
        {
          v5 = v85;
        }
      }

      v87 = [v5 countByEnumeratingWithState:&v108 objects:v124 count:16];
    }

    while (v87);
  }

  v57 = v83;
  if ([v83 count] <= 1)
  {
    v8 = [v83 anyObject];

    goto LABEL_107;
  }

  v7 = v82;
  v58 = v82;
  if (v58)
  {
    v59 = v58;
    v60 = 0;
    v61 = 0uLL;
    do
    {
      v98 = v61;
      v99 = v61;
      v96 = v61;
      v97 = v61;
      v5 = v83;
      v62 = [v5 countByEnumeratingWithState:&v96 objects:v121 count:16];
      if (v62)
      {
        v63 = v62;
        v64 = *v97;
        while (2)
        {
          for (ii = 0; ii != v63; ++ii)
          {
            if (*v97 != v64)
            {
              objc_enumerationMutation(v5);
            }

            v66 = *(*(&v96 + 1) + 8 * ii);
            v67 = [v59 task];
            v68 = v67;
            if (v66 == v67)
            {

LABEL_106:
              v8 = v66;

              goto LABEL_107;
            }

            v69 = [v59 taskDependency];
            v70 = [v69 task];

            if (v66 == v70)
            {
              goto LABEL_106;
            }
          }

          v63 = [v5 countByEnumeratingWithState:&v96 objects:v121 count:16];
          if (v63)
          {
            continue;
          }

          break;
        }
      }

      v71 = v60;
      if (!v60)
      {
        if ([v59 isPartOfADeadlock])
        {
          v71 = v59;
        }

        else
        {
          v71 = 0;
        }
      }

      v72 = v71;

      v73 = [v59 dependency];

      v61 = 0uLL;
      if (!v73)
      {
        break;
      }

      v60 = v72;
      v59 = v73;
    }

    while (v73 != v72);

    v7 = v82;
    v57 = v83;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v74 = v57;
    v57 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v5 = v74;
    v75 = [v5 countByEnumeratingWithState:&v92 objects:v120 count:16];
    if (v75)
    {
      v76 = v75;
      v77 = *v93;
      do
      {
        for (jj = 0; jj != v76; ++jj)
        {
          if (*v93 != v77)
          {
            objc_enumerationMutation(v5);
          }

          v79 = *(*(&v92 + 1) + 8 * jj);
          if ([v5 countForObject:v79])
          {
            [v57 removeAllObjects];
          }

          [v57 addObject:v79];
        }

        v76 = [v5 countByEnumeratingWithState:&v92 objects:v120 count:16];
      }

      while (v76);
    }

    if ([v57 count] >= 2)
    {

      goto LABEL_101;
    }

    v8 = [v57 anyObject];
  }

  else
  {
LABEL_101:
    v8 = [v57 anyObject];
    v5 = v57;
  }

LABEL_108:

LABEL_109:
  v80 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)_recover:(unint64_t)a3 error:(id *)a4
{
  v6 = self;
  v118 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock(&self->_lock);
  if (![(NSArray *)v6->_stuckServices count])
  {
    v70 = *__error();
    v71 = _ublogt();
    if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockReactiveRecovery _recover:error:];
    }

    *__error() = v70;
    if (!a4)
    {
      goto LABEL_73;
    }

    v72 = MEMORY[0x277CCA9B8];
    v73 = *MEMORY[0x277D779D8];
    v74 = MEMORY[0x277CBEAC0];
    v75 = *MEMORY[0x277CCA450];
    v76 = @"No services provided for watchdogtimeout recovery.";
    goto LABEL_72;
  }

  stackshotData = v6->_stackshotData;
  if ((a3 & 2) == 0 && !stackshotData)
  {
    if (![(UBUnblockReactiveRecovery *)v6 takeLiveStackshot])
    {
      v79 = *__error();
      v80 = _ublogt();
      if (os_log_type_enabled(v80, OS_LOG_TYPE_ERROR))
      {
        [UBUnblockReactiveRecovery _recover:error:];
      }

      *__error() = v79;
      if (!a4)
      {
        goto LABEL_73;
      }

      v72 = MEMORY[0x277CCA9B8];
      v73 = *MEMORY[0x277D779D8];
      v74 = MEMORY[0x277CBEAC0];
      v75 = *MEMORY[0x277CCA450];
      v76 = @"Failed to take a live stackshot of the system.";
      goto LABEL_72;
    }

    stackshotData = v6->_stackshotData;
  }

  if (![(NSData *)stackshotData length])
  {
    v77 = *__error();
    v78 = _ublogt();
    if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
    {
      [UBUnblockReactiveRecovery _recover:error:];
    }

    *__error() = v77;
    if (!a4)
    {
      goto LABEL_73;
    }

    v72 = MEMORY[0x277CCA9B8];
    v73 = *MEMORY[0x277D779D8];
    v74 = MEMORY[0x277CBEAC0];
    v75 = *MEMORY[0x277CCA450];
    v76 = @"Invalid stackshot data received.";
LABEL_72:
    v81 = [v74 dictionaryWithObject:v76 forKey:v75];
    *a4 = [v72 errorWithDomain:v73 code:1 userInfo:v81];

LABEL_73:
    v8 = 0;
    goto LABEL_74;
  }

  v98 = a3;
  v8 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{-[NSArray count](v6->_stuckServices, "count")}];
  context = objc_autoreleasePoolPush();
  v9 = [objc_alloc(MEMORY[0x277D4B458]) initForFileParsing];
  sampleStore = v6->_sampleStore;
  v6->_sampleStore = v9;

  [(SASampleStore *)v6->_sampleStore setDataGatheringOptions:2048];
  [(SASampleStore *)v6->_sampleStore addKCDataStackshot:v6->_stackshotData];
  [(SASampleStore *)v6->_sampleStore postprocess];
  v11 = *__error();
  v12 = _ublogt();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270397000, v12, OS_LOG_TYPE_DEFAULT, "Successfully initialized a sample store with stackshot data.", buf, 2u);
  }

  *__error() = v11;
  [(UBUnblockReactiveRecovery *)v6 prepareDependencyGraph];
  [(UBUnblockReactiveRecovery *)v6 findDeadlocks];
  v13 = *__error();
  v14 = _ublogt();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_270397000, v14, OS_LOG_TYPE_DEFAULT, "Parsed dependency graph and deadlocks from a sample store.", buf, 2u);
  }

  *__error() = v13;
  v101 = 0u;
  v102 = 0u;
  v103 = 0u;
  v104 = 0u;
  obj = v6->_stuckServices;
  v15 = [(NSArray *)obj countByEnumeratingWithState:&v101 objects:v117 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = *v102;
    *&v16 = 138412546;
    v84 = v16;
    v99 = v8;
    v96 = v6;
    do
    {
      v19 = 0;
      do
      {
        if (*v102 != v18)
        {
          objc_enumerationMutation(obj);
        }

        v20 = *(*(&v101 + 1) + 8 * v19);
        v21 = objc_alloc(MEMORY[0x277D779C8]);
        v22 = [(UBUnblockReactiveRecovery *)v6 clientName];
        v23 = [v21 initWithService:v20 clientName:v22];

        [v8 addObject:v23];
        if ([v20 pid] >= 1)
        {
          if ([v20 threadID])
          {
            [v20 timeElapsed];
            if (v24 > 0.0)
            {
              v25 = [(SASampleStore *)v6->_sampleStore tasksByPid];
              v26 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v20, "pid")}];
              v27 = [v25 objectForKeyedSubscript:v26];
              v28 = [v27 lastObject];

              if (v28)
              {
                v29 = [v28 name];
                [v23 setServiceProcessName:v29];

                [v23 setServiceProcessIs3P:{-[UBUnblockReactiveRecovery taskIs3PApp:options:](v6, "taskIs3PApp:options:", v28, v98)}];
                if ([v20 threadID] != 1)
                {
                  goto LABEL_23;
                }

                v30 = [v28 mainThread];

                if (v30)
                {
                  v31 = [v28 mainThread];
                  [v20 setThreadID:{objc_msgSend(v31, "threadId")}];

LABEL_23:
                  v32 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(v20, "threadID", v84)}];
                  v33 = [(NSDictionary *)v6->_dependencyGraph objectForKeyedSubscript:v32];
                  if (v33)
                  {
                    v34 = [(UBUnblockReactiveRecovery *)v6 selectTaskForServiceNode:v33 serviceResult:v23 options:v98];
                    *&v97[4] = v34;
                    if (v34)
                    {
                      if (v34 == v28)
                      {
                        *v97 = *__error();
                        v36 = _ublogt();
                        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                        {
                          v95 = [v23 serviceProcessName];
                          v91 = [v20 pid];
                          v59 = v33;
                          v60 = v32;
                          v61 = [v20 threadID];
                          [v20 timeElapsed];
                          *buf = 138544130;
                          *v106 = v95;
                          *&v106[8] = 1024;
                          *&v106[10] = v91;
                          v107 = 2048;
                          v108 = v61;
                          v32 = v60;
                          v33 = v59;
                          v6 = v96;
                          v109 = 2048;
                          v110 = v62;
                          _os_log_impl(&dword_270397000, v36, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Best option is service process itself", buf, 0x26u);
                        }

                        v42 = 3;
                      }

                      else
                      {
                        v93 = v32;
                        v35 = [(UBUnblockReactiveRecovery *)v6 avoidKillingTask:v34 options:v98];
                        *v97 = *__error();
                        v36 = _ublogt();
                        v37 = os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT);
                        if (v35)
                        {
                          if (v37)
                          {
                            v90 = [v23 serviceProcessName];
                            v88 = [v20 pid];
                            v86 = [v20 threadID];
                            [v20 timeElapsed];
                            v39 = v38;
                            v40 = [*&v97[4] name];
                            v41 = [*&v97[4] pid];
                            *buf = 138544642;
                            *v106 = v90;
                            *&v106[8] = 1024;
                            *&v106[10] = v88;
                            v107 = 2048;
                            v108 = v86;
                            v109 = 2048;
                            v110 = v39;
                            v111 = 2114;
                            v112 = v40;
                            v113 = 1024;
                            v114 = v41;
                            _os_log_impl(&dword_270397000, v36, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Best option is non-killable process %{public}@ [%d]", buf, 0x36u);
                          }

                          v42 = 2;
                        }

                        else
                        {
                          if (v37)
                          {
                            v92 = [v23 serviceProcessName];
                            v89 = [v20 pid];
                            v87 = [v20 threadID];
                            [v20 timeElapsed];
                            v64 = v63;
                            v65 = [*&v97[4] name];
                            v66 = [*&v97[4] pid];
                            *buf = 138544642;
                            *v106 = v92;
                            *&v106[8] = 1024;
                            *&v106[10] = v89;
                            v107 = 2048;
                            v108 = v87;
                            v109 = 2048;
                            v110 = v64;
                            v111 = 2114;
                            v112 = v65;
                            v113 = 1024;
                            v114 = v66;
                            _os_log_impl(&dword_270397000, v36, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx] time-elapsed[%fs]>: Best option is killable process %{public}@ [%d]", buf, 0x36u);
                          }

                          v42 = 4;
                        }

                        v32 = v93;
                      }
                    }

                    else
                    {
                      *v97 = *__error();
                      v36 = _ublogt();
                      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
                      {
                        v94 = [v23 serviceProcessName];
                        v53 = v33;
                        v54 = v32;
                        v55 = [v20 pid];
                        v56 = [v20 threadID];
                        *buf = 138543874;
                        *v106 = v94;
                        *&v106[8] = 1024;
                        *&v106[10] = v55;
                        v32 = v54;
                        v33 = v53;
                        v6 = v96;
                        v107 = 2048;
                        v108 = v56;
                        _os_log_impl(&dword_270397000, v36, OS_LOG_TYPE_DEFAULT, "Service <%{public}@ [%d] tid[%llx]>: Could not find any relevant unrecoverable issues affecting it.", buf, 0x1Cu);
                      }

                      v42 = 2;
                    }

                    *__error() = *v97;
                    [v23 setRecoveryStatus:v42];
                  }

                  else
                  {
                    v50 = v32;
                    v51 = *__error();
                    v52 = _ublogt();
                    if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                    {
                      [UBUnblockReactiveRecovery _recover:v115 error:v20];
                    }

                    *__error() = v51;
                    [v23 setRecoveryStatus:1];
                    v32 = v50;
                    v33 = 0;
                    v6 = v96;
                  }

LABEL_57:
                  v8 = v99;

                  goto LABEL_33;
                }

                v57 = *__error();
                v58 = _ublogt();
                if (os_log_type_enabled(v58, OS_LOG_TYPE_ERROR))
                {
                  v67 = [v28 name];
                  v68 = [v20 pid];
                  *buf = v84;
                  *v106 = v67;
                  *&v106[8] = 1024;
                  *&v106[10] = v68;
                  _os_log_error_impl(&dword_270397000, v58, OS_LOG_TYPE_ERROR, "%@ [%d] does not have a dedicated main thread.", buf, 0x12u);
                }

                *__error() = v57;
              }

              else
              {
                v45 = *__error();
                v46 = _ublogt();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                {
                  [UBUnblockReactiveRecovery _recover:v116 error:v20];
                }

                *__error() = v45;
              }

              [v23 setRecoveryStatus:{1, v84}];
              goto LABEL_57;
            }
          }
        }

        v43 = *__error();
        v44 = _ublogt();
        if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
        {
          v47 = [v20 pid];
          v48 = [v20 threadID];
          [v20 timeElapsed];
          *buf = 67109632;
          *v106 = v47;
          *&v106[4] = 2048;
          *&v106[6] = v48;
          v8 = v99;
          v107 = 2048;
          v108 = v49;
          _os_log_error_impl(&dword_270397000, v44, OS_LOG_TYPE_ERROR, "Invalid input. pid:%d, threadID:%llu timeElapsed:%f", buf, 0x1Cu);
        }

        *__error() = v43;
        [v23 setRecoveryStatus:1];
LABEL_33:

        ++v19;
      }

      while (v17 != v19);
      v69 = [(NSArray *)obj countByEnumeratingWithState:&v101 objects:v117 count:16];
      v17 = v69;
    }

    while (v69);
  }

  [(UBUnblockReactiveRecovery *)v6 clearCaches];
  objc_autoreleasePoolPop(context);
  [(UBUnblockReactiveRecovery *)v6 doTermination:v8 options:v98];
LABEL_74:
  os_unfair_lock_unlock(&v6->_lock);
  v82 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)recover:(unint64_t)a3 error:(id *)a4
{
  v10 = 0;
  v6 = [(UBUnblockReactiveRecovery *)self _recover:a3 error:&v10];
  v7 = v10;
  if (!v6)
  {
    [(UBUnblockReactiveRecovery *)self emitTelemetryForError:v7];
  }

  if (a4)
  {
    v8 = v7;
    *a4 = v7;
  }

  return v6;
}

- (void)emitTelemetryForError:(id)a3
{
  v4 = a3;
  v3 = v4;
  AnalyticsSendEventLazy();
}

- (void)fillInRecoveryInfo:deadlockNodeSelected:exhaustedTaskSelected:threadExhaustions:options:.cold.3()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)taskIs3PApp:(int)a3 options:(os_log_t)log .cold.1(void *a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_270397000, log, OS_LOG_TYPE_ERROR, "Unable to get path for %@ [%d], assuming 3P app", buf, 0x12u);
}

- (void)taskIs3PApp:options:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_13();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)avoidKillingTask:options:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_12();
  v4 = 1024;
  v5 = v0;
  _os_log_debug_impl(&dword_270397000, v1, OS_LOG_TYPE_DEBUG, "Candidate task %{public}@ [%d] is not eligible for termination", v3, 0x12u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)selectTaskInDefinitiveIssuesWithServiceContext:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [a1 serviceProcessName];
  v3 = [a1 service];
  [v3 pid];
  v4 = [a1 service];
  [v4 threadID];
  v5 = [a1 service];
  [v5 timeElapsed];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x26u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)selectTaskBlockingTask:serviceContext:.cold.1()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6();
  v14 = *MEMORY[0x277D85DE8];
  v3 = [v2 serviceProcessName];
  v4 = [v0 service];
  [v4 pid];
  v5 = [v0 service];
  [v5 threadID];
  v6 = [v0 service];
  [v6 timeElapsed];
  v7 = [v1 name];
  [v1 pid];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x36u);

  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
}

- (void)selectTaskBlockingTask:serviceContext:.cold.2()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6();
  v14 = *MEMORY[0x277D85DE8];
  v3 = [v2 serviceProcessName];
  v4 = [v0 service];
  [v4 pid];
  v5 = [v0 service];
  [v5 threadID];
  v6 = [v0 service];
  [v6 timeElapsed];
  v7 = [v1 name];
  [v1 pid];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x36u);

  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
}

- (void)selectTaskBlockingTask:serviceContext:.cold.3()
{
  OUTLINED_FUNCTION_8();
  OUTLINED_FUNCTION_6();
  v14 = *MEMORY[0x277D85DE8];
  v3 = [v2 serviceProcessName];
  v4 = [v0 service];
  [v4 pid];
  v5 = [v0 service];
  [v5 threadID];
  v6 = [v0 service];
  [v6 timeElapsed];
  v7 = [v1 name];
  [v1 pid];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v8, v9, v10, v11, v12, 0x36u);

  v13 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_7();
}

- (void)selectTaskInvolvedInAnyIssueWithServiceContext:(void *)a1 .cold.1(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [a1 serviceProcessName];
  v3 = [a1 service];
  [v3 pid];
  v4 = [a1 service];
  [v4 threadID];
  v5 = [a1 service];
  [v5 timeElapsed];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x26u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)selectTaskInvolvedInAnyIssueWithServiceContext:(void *)a1 .cold.2(void *a1)
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [a1 serviceProcessName];
  v3 = [a1 service];
  [v3 pid];
  v4 = [a1 service];
  [v4 threadID];
  v5 = [a1 service];
  [v5 timeElapsed];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(v6, v7, v8, v9, v10, 0x26u);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_recover:error:.cold.1()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_recover:(uint64_t)a1 error:(uint64_t)a2 .cold.2(uint64_t a1, uint64_t a2)
{
  v5 = [OUTLINED_FUNCTION_10(a1 a2)];
  *v4 = 134217984;
  *v3 = v5;
  _os_log_error_impl(&dword_270397000, v2, OS_LOG_TYPE_ERROR, "No dependency node for thread 0x%#llx", v4, 0xCu);
}

- (void)_recover:(uint64_t)a1 error:(uint64_t)a2 .cold.3(uint64_t a1, uint64_t a2)
{
  v5 = [OUTLINED_FUNCTION_10(a1 a2)];
  *v4 = 67109120;
  *v3 = v5;
  _os_log_error_impl(&dword_270397000, v2, OS_LOG_TYPE_ERROR, "Unable to find a service with pid [%d]", v4, 8u);
}

- (void)_recover:error:.cold.4()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

- (void)_recover:error:.cold.5()
{
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

@end