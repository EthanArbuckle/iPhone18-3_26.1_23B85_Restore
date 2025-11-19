@interface VCCompanionSyncOutgoingSession
- (VCCompanionSyncOutgoingSession)initWithSYSession:(id)a3 service:(id)a4 syncDataHandlers:(id)a5 changeSet:(id)a6 metadata:(id)a7;
- (double)progress;
- (unsigned)syncSession:(id)a3 enqueueChanges:(id)a4 error:(id *)a5;
- (void)syncSession:(id)a3 successfullySynced:(id)a4;
@end

@implementation VCCompanionSyncOutgoingSession

- (void)syncSession:(id)a3 successfullySynced:(id)a4
{
  v67 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if ([v6 state] != 5)
  {
    v45 = v6;
    v8 = [(VCCompanionSyncOutgoingSession *)self sentChanges];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __65__VCCompanionSyncOutgoingSession_syncSession_successfullySynced___block_invoke;
    v56[3] = &unk_2788FFB58;
    v44 = v7;
    v57 = v7;
    v9 = [v8 indexesOfObjectsPassingTest:v56];

    v10 = [(VCCompanionSyncOutgoingSession *)self sentChanges];
    v11 = [v10 objectsAtIndexes:v9];

    v12 = [(VCCompanionSyncOutgoingSession *)self syncedChanges];
    [v12 addObjectsFromArray:v11];

    v13 = [(VCCompanionSyncOutgoingSession *)self sentChanges];
    v43 = v9;
    [v13 removeObjectsAtIndexes:v9];

    v14 = [(VCCompanionSyncSession *)self delegate];
    [(VCCompanionSyncOutgoingSession *)self progress];
    [v14 companionSyncSession:self didUpdateProgress:?];

    v15 = [(VCCompanionSyncOutgoingSession *)self pendingChanges];
    v16 = [(VCCompanionSyncOutgoingSession *)self pendingChanges];
    v17 = [v15 arrayByAddingObjectsFromArray:v16];

    v42 = v11;
    v50 = VCPartitionMessages(v11);
    v41 = v17;
    v47 = VCPartitionMessages(v17);
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    obj = [(VCCompanionSyncSession *)self syncDataHandlers];
    v18 = [obj countByEnumeratingWithState:&v52 objects:v66 count:16];
    if (!v18)
    {
      goto LABEL_20;
    }

    v19 = v18;
    v49 = *v53;
    v48 = self;
    while (1)
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v53 != v49)
        {
          objc_enumerationMutation(obj);
        }

        v21 = *(*(&v52 + 1) + 8 * i);
        v22 = objc_autoreleasePoolPush();
        v23 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(objc_opt_class(), "messageType")}];
        v24 = [v50 objectForKeyedSubscript:v23];
        if ([v24 count])
        {
          v25 = [v47 objectForKeyedSubscript:v23];
          if ([v25 count])
          {
            v26 = 0;
          }

          else
          {
            v27 = [(VCCompanionSyncOutgoingSession *)self metadata];
            v26 = [v27 objectForKeyedSubscript:v23];

            self = v48;
          }

          v28 = [(VCCompanionSyncSession *)self service];
          v51 = 0;
          v29 = [v21 markChangesAsSynced:v24 withSyncService:v28 metadata:v26 error:&v51];
          v30 = v51;

          v31 = getWFWatchSyncLogObject();
          v32 = v31;
          if (v29)
          {
            self = v48;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              v33 = [(VCCompanionSyncSession *)v48 service];
              v34 = [v24 count];
              *buf = 136315650;
              v59 = "[VCCompanionSyncOutgoingSession syncSession:successfullySynced:]";
              v60 = 2114;
              v61 = v33;
              v62 = 2048;
              v63 = v34;
              v35 = v32;
              v36 = OS_LOG_TYPE_INFO;
              v37 = "%s Service %{public}@ marked %lu changes as synced";
              v38 = 32;
              goto LABEL_16;
            }
          }

          else
          {
            self = v48;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
            {
              v33 = [(VCCompanionSyncSession *)v48 service];
              v39 = [v24 count];
              *buf = 136315906;
              v59 = "[VCCompanionSyncOutgoingSession syncSession:successfullySynced:]";
              v60 = 2114;
              v61 = v33;
              v62 = 2048;
              v63 = v39;
              v64 = 2114;
              v65 = v30;
              v35 = v32;
              v36 = OS_LOG_TYPE_FAULT;
              v37 = "%s Service %{public}@ failed to mark %lu changes as synced: %{public}@";
              v38 = 42;
LABEL_16:
              _os_log_impl(&dword_23103C000, v35, v36, v37, buf, v38);
            }
          }
        }

        objc_autoreleasePoolPop(v22);
      }

      v19 = [obj countByEnumeratingWithState:&v52 objects:v66 count:16];
      if (!v19)
      {
LABEL_20:

        v7 = v44;
        v6 = v45;
        break;
      }
    }
  }

  v40 = *MEMORY[0x277D85DE8];
}

uint64_t __65__VCCompanionSyncOutgoingSession_syncSession_successfullySynced___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 objectIdentifier];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (unsigned)syncSession:(id)a3 enqueueChanges:(id)a4 error:(id *)a5
{
  v30 = a2;
  v37 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v32 = "[VCCompanionSyncOutgoingSession syncSession:enqueueChanges:error:]";
    v33 = 2114;
    v34 = self;
    v35 = 2114;
    v36 = v7;
    _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@ -enqueueChanges called by %{public}@", buf, 0x20u);
  }

  v10 = [(VCCompanionSyncOutgoingSession *)self pendingChanges];
  v11 = [v10 firstObject];

  if (v11)
  {
    while (1)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = v8[2](v8, v11);
      v14 = getWFWatchSyncLogObject();
      v15 = os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT);
      if (!v13)
      {
        break;
      }

      if (v15)
      {
        *buf = 136315650;
        v32 = "[VCCompanionSyncOutgoingSession syncSession:enqueueChanges:error:]";
        v33 = 2114;
        v34 = self;
        v35 = 2114;
        v36 = v11;
        _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_DEFAULT, "%s %{public}@ successfully enqueued change=%{public}@", buf, 0x20u);
      }

      v16 = [(VCCompanionSyncOutgoingSession *)self pendingChanges];
      v17 = [v16 indexOfObject:v11];

      if (v17)
      {
        v22 = [MEMORY[0x277CCA890] currentHandler];
        [v22 handleFailureInMethod:v30 object:self file:@"VCCompanionSyncOutgoingSession.m" lineNumber:74 description:@"Change should be the first pending change"];
      }

      v18 = [(VCCompanionSyncOutgoingSession *)self pendingChanges];
      [v18 removeObjectAtIndex:0];

      v19 = [(VCCompanionSyncOutgoingSession *)self sentChanges];
      [v19 addObject:v11];

      objc_autoreleasePoolPop(v12);
      v20 = [(VCCompanionSyncOutgoingSession *)self pendingChanges];
      v21 = [v20 firstObject];

      v11 = v21;
      if (!v21)
      {
        goto LABEL_14;
      }
    }

    if (v15)
    {
      *buf = 136315650;
      v32 = "[VCCompanionSyncOutgoingSession syncSession:enqueueChanges:error:]";
      v33 = 2114;
      v34 = self;
      v35 = 2114;
      v36 = v11;
      _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_DEFAULT, "%s %{public}@ stopped early, before sending change=%{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }

LABEL_14:
  v23 = [(VCCompanionSyncOutgoingSession *)self pendingChanges];
  v24 = [v23 count];

  v25 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v32 = "[VCCompanionSyncOutgoingSession syncSession:enqueueChanges:error:]";
    v33 = 2114;
    v34 = self;
    v35 = 2048;
    v36 = v24;
    _os_log_impl(&dword_23103C000, v25, OS_LOG_TYPE_DEFAULT, "%s %{public}@ finished enqueuing changes, with %lu remaining changes", buf, 0x20u);
  }

  if (v24)
  {
    v26 = [(VCCompanionSyncSession *)self transaction];
    os_transaction_needs_more_time();
    v27 = 1;
  }

  else
  {
    v26 = [(VCCompanionSyncSession *)self delegate];
    [v26 companionSyncSessionDidFinishSendingChanges:self];
    v27 = 2;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (double)progress
{
  v3 = [(VCCompanionSyncOutgoingSession *)self syncedChanges];
  v4 = [v3 count];

  v5 = [(VCCompanionSyncOutgoingSession *)self pendingChanges];
  v6 = [v5 count];
  v7 = [(VCCompanionSyncOutgoingSession *)self sentChanges];
  v8 = v6 + v4 + [v7 count];

  return v4 / v8;
}

- (VCCompanionSyncOutgoingSession)initWithSYSession:(id)a3 service:(id)a4 syncDataHandlers:(id)a5 changeSet:(id)a6 metadata:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = v17;
  if (v16)
  {
    if (v17)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v30 = [MEMORY[0x277CCA890] currentHandler];
    [v30 handleFailureInMethod:a2 object:self file:@"VCCompanionSyncOutgoingSession.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"changeSet"}];

    if (v18)
    {
      goto LABEL_3;
    }
  }

  v31 = [MEMORY[0x277CCA890] currentHandler];
  [v31 handleFailureInMethod:a2 object:self file:@"VCCompanionSyncOutgoingSession.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"metadata"}];

LABEL_3:
  v32.receiver = self;
  v32.super_class = VCCompanionSyncOutgoingSession;
  v19 = [(VCCompanionSyncSession *)&v32 initWithSYSession:v13 service:v14 syncDataHandlers:v15];
  if (v19)
  {
    v20 = [v16 mutableCopy];
    pendingChanges = v19->_pendingChanges;
    v19->_pendingChanges = v20;

    v22 = objc_opt_new();
    sentChanges = v19->_sentChanges;
    v19->_sentChanges = v22;

    v24 = objc_opt_new();
    syncedChanges = v19->_syncedChanges;
    v19->_syncedChanges = v24;

    v26 = [v18 copy];
    metadata = v19->_metadata;
    v19->_metadata = v26;

    v28 = v19;
  }

  return v19;
}

@end