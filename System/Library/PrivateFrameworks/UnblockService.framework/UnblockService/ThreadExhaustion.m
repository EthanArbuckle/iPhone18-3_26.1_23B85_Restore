@interface ThreadExhaustion
@end

@implementation ThreadExhaustion

void __106__UBUnblockReactiveRecovery_ThreadExhaustion__threadExhaustionsAboveLimit_threadIDToThreadExhaustionDict___block_invoke(void *a1, void *a2, void *a3)
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 lastObject];
  v8 = [v7 taskStates];
  v9 = [v8 lastObject];

  if (([v9 wqExceededTotalThreadLimit] & 1) != 0 || objc_msgSend(v9, "wqExceededConstrainedThreadLimit"))
  {
    v44 = 0;
    v45 = &v44;
    v46 = 0x2020000000;
    v47 = 0;
    v40 = 0;
    v41 = &v40;
    v42 = 0x2020000000;
    v43 = 0;
    v10 = [v7 threads];
    v39[0] = MEMORY[0x277D85DD0];
    v39[1] = 3221225472;
    v39[2] = __106__UBUnblockReactiveRecovery_ThreadExhaustion__threadExhaustionsAboveLimit_threadIDToThreadExhaustionDict___block_invoke_2;
    v39[3] = &unk_279E02C30;
    v39[6] = a1[6];
    v39[4] = &v40;
    v39[5] = &v44;
    [v10 enumerateKeysAndObjectsUsingBlock:v39];

    if ([v9 wqExceededTotalThreadLimit])
    {
      v11 = [*(a1[4] + 32) workQueueHardThreadLimit];
      if (!v11)
      {
        if (UBWQTotalThreadLimit_onceToken != -1)
        {
          __106__UBUnblockReactiveRecovery_ThreadExhaustion__threadExhaustionsAboveLimit_threadIDToThreadExhaustionDict___block_invoke_cold_2();
        }

        v11 = _gUBWorkQueueTotalThreadLimit;
      }

      if (v45[3] >= v11)
      {
        v12 = *__error();
        v13 = _ublogt();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          v25 = [v7 name];
          v26 = [v7 pid];
          v27 = v45[3];
          v28 = a1[6];
          *buf = 138544386;
          v49 = v25;
          v50 = 1024;
          v51 = v26;
          v52 = 1024;
          v53 = v11;
          v54 = 2048;
          v55 = v27;
          v56 = 2048;
          v57 = v28;
          _os_log_impl(&dword_270397000, v13, OS_LOG_TYPE_DEFAULT, "Task %{public}@ [%d] has hit the total thread limit (%u) and %llu threads are blocked for at least %fs.", buf, 0x2Cu);
        }
      }

      else
      {
        v12 = *__error();
        v13 = _ublogt();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          v14 = [v7 name];
          v15 = [v7 pid];
          v16 = v45[3];
          v17 = a1[6];
          *buf = 138544386;
          v49 = v14;
          v50 = 1024;
          v51 = v15;
          v52 = 1024;
          v53 = v11;
          v54 = 2048;
          v55 = v16;
          v56 = 2048;
          v57 = v17;
          _os_log_impl(&dword_270397000, v13, OS_LOG_TYPE_INFO, "Task %{public}@ [%d] has hit the total thread limit (%u). Only %llu threads are blocked for at least %fs, still reporting.", buf, 0x2Cu);
        }
      }
    }

    else
    {
      if (![v9 wqExceededConstrainedThreadLimit])
      {
LABEL_27:
        v33 = [UBThreadExhaustionInfo alloc];
        v34 = [(UBThreadExhaustionInfo *)v33 initWithTask:v7 timeSpentBlocked:v45[3] numThreadsInvolved:v41[3]];
        v35 = [(UBThreadExhaustionInfo *)v34 tasksBlocked];
        [v35 addObject:v7];

        v36 = a1[5];
        v37 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v7, "pid")}];
        [v36 setObject:v34 forKeyedSubscript:v37];

LABEL_28:
        _Block_object_dispose(&v40, 8);
        _Block_object_dispose(&v44, 8);
        goto LABEL_29;
      }

      v18 = [*(a1[4] + 32) workQueueSoftThreadLimit];
      if (!v18)
      {
        if (UBWQConstrainedThreadLimit_onceToken != -1)
        {
          __106__UBUnblockReactiveRecovery_ThreadExhaustion__threadExhaustionsAboveLimit_threadIDToThreadExhaustionDict___block_invoke_cold_1();
        }

        v18 = _gUBWorkQueueConstrainedThreadLimit;
      }

      if (v45[3] < v18)
      {
        v19 = *__error();
        v20 = _ublogt();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          v21 = [v7 name];
          v22 = [v7 pid];
          v23 = v45[3];
          v24 = a1[6];
          *buf = 138544386;
          v49 = v21;
          v50 = 1024;
          v51 = v22;
          v52 = 1024;
          v53 = v18;
          v54 = 2048;
          v55 = v23;
          v56 = 2048;
          v57 = v24;
          _os_log_impl(&dword_270397000, v20, OS_LOG_TYPE_INFO, "Task %{public}@ [%d] has hit the constrained thread limit (%u) but only %llu threads are blocked for at least %fs, ignoring.", buf, 0x2Cu);
        }

        *__error() = v19;
        goto LABEL_28;
      }

      v12 = *__error();
      v13 = _ublogt();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v29 = [v7 name];
        v30 = [v7 pid];
        v31 = v45[3];
        v32 = a1[6];
        *buf = 138544386;
        v49 = v29;
        v50 = 1024;
        v51 = v30;
        v52 = 1024;
        v53 = v18;
        v54 = 2048;
        v55 = v31;
        v56 = 2048;
        v57 = v32;
        _os_log_impl(&dword_270397000, v13, OS_LOG_TYPE_DEFAULT, "Task %{public}@ [%d] has hit the constrained thread limit (%u) and %llu threads are blocked for at least %fs.", buf, 0x2Cu);
      }
    }

    *__error() = v12;
    goto LABEL_27;
  }

LABEL_29:

  v38 = *MEMORY[0x277D85DE8];
}

void __106__UBUnblockReactiveRecovery_ThreadExhaustion__threadExhaustionsAboveLimit_threadIDToThreadExhaustionDict___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = [a3 threadStates];
  v5 = [v4 lastObject];
  TimeSpentBlocked = findTimeSpentBlocked(v5);

  if (TimeSpentBlocked > 0.0 && TimeSpentBlocked >= *(a1 + 48))
  {
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 24);
    if (v8 == 0.0 || TimeSpentBlocked < v8)
    {
      *(v7 + 24) = TimeSpentBlocked;
    }

    ++*(*(*(a1 + 40) + 8) + 24);
  }
}

void __106__UBUnblockReactiveRecovery_ThreadExhaustion__threadExhaustionsAboveLimit_threadIDToThreadExhaustionDict___block_invoke_148(uint64_t a1, void *a2, void *a3)
{
  v39 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if (([v6 isBlockedByADeadlock] & 1) == 0)
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
    if (v7)
    {
LABEL_29:

      goto LABEL_30;
    }

    v33 = v5;
    v8 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
    v10 = v6;
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = 0;
      while (1)
      {
        v14 = MEMORY[0x277CCABB0];
        v15 = [v11 thread];
        v16 = [v14 numberWithUnsignedLongLong:{objc_msgSend(v15, "threadId")}];

        v17 = [*(a1 + 32) objectForKeyedSubscript:v16];
        if (v17)
        {
          break;
        }

        [v9 addObject:v16];
        v18 = [v11 task];

        [v8 addObject:v18];
        v19 = [v11 taskDependency];

        if (v19)
        {
          v20 = [v11 taskDependency];
          v13 = [v20 task];

          [v8 addObject:v13];
        }

        else
        {
          v13 = v18;
        }

        v21 = v12;
        if (!v12)
        {
          if ([v11 isPartOfADeadlock])
          {
            v21 = v11;
          }

          else
          {
            v21 = 0;
          }
        }

        v22 = v21;

        v23 = [v11 dependency];

        if (v23)
        {
          v12 = v22;
          v11 = v23;
          if (v23 != v22)
          {
            continue;
          }
        }

        goto LABEL_17;
      }

      v7 = v17;
    }

    else
    {
      v13 = 0;
LABEL_17:
      v24 = *(a1 + 40);
      v25 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v13, "pid")}];
      v7 = [v24 objectForKeyedSubscript:v25];

      if (!v7)
      {
        goto LABEL_28;
      }
    }

    [v7 setNumThreadsBlocked:{objc_msgSend(v7, "numThreadsBlocked") + objc_msgSend(v9, "count")}];
    v26 = [v7 tasksBlocked];
    [v26 unionSet:v8];

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v27 = v9;
    v28 = [v27 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v28)
    {
      v29 = v28;
      v30 = *v35;
      do
      {
        for (i = 0; i != v29; ++i)
        {
          if (*v35 != v30)
          {
            objc_enumerationMutation(v27);
          }

          [*(a1 + 32) setObject:v7 forKeyedSubscript:*(*(&v34 + 1) + 8 * i)];
        }

        v29 = [v27 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v29);
    }

LABEL_28:
    v5 = v33;

    goto LABEL_29;
  }

LABEL_30:

  v32 = *MEMORY[0x277D85DE8];
}

@end