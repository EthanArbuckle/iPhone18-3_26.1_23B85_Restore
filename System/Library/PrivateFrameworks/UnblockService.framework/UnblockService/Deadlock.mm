@interface Deadlock
@end

@implementation Deadlock

void __52__UBUnblockReactiveRecovery_Deadlock__findDeadlocks__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v55 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  if ([v6 isBlockedByADeadlock])
  {
    v7 = [*(a1 + 32) objectForKeyedSubscript:v5];
    if (!v7)
    {
      v43 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v8 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v44 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v42 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v9 = v6;
      if (v9)
      {
        v10 = v9;
        v11 = 0;
        v12 = 0;
        v13 = 0.0;
        do
        {
          v14 = MEMORY[0x277CCABB0];
          v15 = [v10 thread];
          v16 = [v14 numberWithUnsignedLongLong:{objc_msgSend(v15, "threadId")}];

          v17 = [*(a1 + 32) objectForKeyedSubscript:v16];
          if (v17)
          {
            v7 = v17;

            goto LABEL_35;
          }

          if ([v10 isPartOfADeadlock])
          {
            [v42 addObject:v16];
            v18 = [v10 task];
            [v44 addObject:v18];

            v19 = v10;
            v20 = [v19 threadState];
            TimeSpentBlocked = findTimeSpentBlocked(v20);

            if (v13 > TimeSpentBlocked || v13 == 0.0)
            {
              v13 = TimeSpentBlocked;
            }

            v11 = v19;
          }

          else
          {
            [v8 addObject:v16];
            v23 = [v10 task];
            [v43 addObject:v23];
          }

          v24 = v12;
          if (!v12)
          {
            if ([v10 isPartOfADeadlock])
            {
              v24 = v10;
            }

            else
            {
              v24 = 0;
            }
          }

          v25 = v24;

          v26 = [v10 dependency];

          if (!v26)
          {
            break;
          }

          v10 = v26;
          v12 = v25;
        }

        while (v26 != v25);

        if (v11)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v13 = 0.0;
      }

      v27 = *__error();
      v28 = _ublogt();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
      {
        __52__UBUnblockReactiveRecovery_Deadlock__findDeadlocks__block_invoke_cold_1();
      }

      v11 = 0;
      *__error() = v27;
LABEL_26:
      v7 = -[UBDeadlockInfo initWithNode:timeSpentDeadlocked:tasksInvolved:numThreadsInvolved:]([UBDeadlockInfo alloc], "initWithNode:timeSpentDeadlocked:tasksInvolved:numThreadsInvolved:", v11, v44, [v42 count], v13);
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v29 = v42;
      v30 = [v29 countByEnumeratingWithState:&v49 objects:v54 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v50;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v50 != v32)
            {
              objc_enumerationMutation(v29);
            }

            [*(a1 + 32) setObject:v7 forKeyedSubscript:*(*(&v49 + 1) + 8 * i)];
          }

          v31 = [v29 countByEnumeratingWithState:&v49 objects:v54 count:16];
        }

        while (v31);
      }

      -[UBDeadlockInfo setNumThreadsBlocked:](v7, "setNumThreadsBlocked:", -[UBDeadlockInfo numThreadsBlocked](v7, "numThreadsBlocked") + [v29 count]);
      v34 = [(UBDeadlockInfo *)v7 tasksBlocked];
      [v34 unionSet:v44];

      [*(a1 + 40) addObject:v7];
LABEL_35:
      -[UBDeadlockInfo setNumThreadsBlocked:](v7, "setNumThreadsBlocked:", -[UBDeadlockInfo numThreadsBlocked](v7, "numThreadsBlocked") + [v8 count]);
      v35 = [(UBDeadlockInfo *)v7 tasksBlocked];
      [v35 unionSet:v43];

      v47 = 0u;
      v48 = 0u;
      v45 = 0u;
      v46 = 0u;
      v36 = v8;
      v37 = [v36 countByEnumeratingWithState:&v45 objects:v53 count:16];
      if (v37)
      {
        v38 = v37;
        v39 = *v46;
        do
        {
          for (j = 0; j != v38; ++j)
          {
            if (*v46 != v39)
            {
              objc_enumerationMutation(v36);
            }

            [*(a1 + 32) setObject:v7 forKeyedSubscript:*(*(&v45 + 1) + 8 * j)];
          }

          v38 = [v36 countByEnumeratingWithState:&v45 objects:v53 count:16];
        }

        while (v38);
      }
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

@end