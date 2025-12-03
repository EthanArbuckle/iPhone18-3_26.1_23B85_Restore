@interface VCCompanionSyncOutgoingSession
- (VCCompanionSyncOutgoingSession)initWithSYSession:(id)session service:(id)service syncDataHandlers:(id)handlers changeSet:(id)set metadata:(id)metadata;
- (double)progress;
- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error;
- (void)syncSession:(id)session successfullySynced:(id)synced;
@end

@implementation VCCompanionSyncOutgoingSession

- (void)syncSession:(id)session successfullySynced:(id)synced
{
  v67 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  syncedCopy = synced;
  if ([sessionCopy state] != 5)
  {
    v45 = sessionCopy;
    sentChanges = [(VCCompanionSyncOutgoingSession *)self sentChanges];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __65__VCCompanionSyncOutgoingSession_syncSession_successfullySynced___block_invoke;
    v56[3] = &unk_2788FFB58;
    v44 = syncedCopy;
    v57 = syncedCopy;
    v9 = [sentChanges indexesOfObjectsPassingTest:v56];

    sentChanges2 = [(VCCompanionSyncOutgoingSession *)self sentChanges];
    v11 = [sentChanges2 objectsAtIndexes:v9];

    syncedChanges = [(VCCompanionSyncOutgoingSession *)self syncedChanges];
    [syncedChanges addObjectsFromArray:v11];

    sentChanges3 = [(VCCompanionSyncOutgoingSession *)self sentChanges];
    v43 = v9;
    [sentChanges3 removeObjectsAtIndexes:v9];

    delegate = [(VCCompanionSyncSession *)self delegate];
    [(VCCompanionSyncOutgoingSession *)self progress];
    [delegate companionSyncSession:self didUpdateProgress:?];

    pendingChanges = [(VCCompanionSyncOutgoingSession *)self pendingChanges];
    pendingChanges2 = [(VCCompanionSyncOutgoingSession *)self pendingChanges];
    v17 = [pendingChanges arrayByAddingObjectsFromArray:pendingChanges2];

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
    selfCopy = self;
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
            metadata = [(VCCompanionSyncOutgoingSession *)self metadata];
            v26 = [metadata objectForKeyedSubscript:v23];

            self = selfCopy;
          }

          service = [(VCCompanionSyncSession *)self service];
          v51 = 0;
          v29 = [v21 markChangesAsSynced:v24 withSyncService:service metadata:v26 error:&v51];
          v30 = v51;

          v31 = getWFWatchSyncLogObject();
          v32 = v31;
          if (v29)
          {
            self = selfCopy;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
            {
              service2 = [(VCCompanionSyncSession *)selfCopy service];
              v34 = [v24 count];
              *buf = 136315650;
              v59 = "[VCCompanionSyncOutgoingSession syncSession:successfullySynced:]";
              v60 = 2114;
              v61 = service2;
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
            self = selfCopy;
            if (os_log_type_enabled(v31, OS_LOG_TYPE_FAULT))
            {
              service2 = [(VCCompanionSyncSession *)selfCopy service];
              v39 = [v24 count];
              *buf = 136315906;
              v59 = "[VCCompanionSyncOutgoingSession syncSession:successfullySynced:]";
              v60 = 2114;
              v61 = service2;
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

        syncedCopy = v44;
        sessionCopy = v45;
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

- (unsigned)syncSession:(id)session enqueueChanges:(id)changes error:(id *)error
{
  v30 = a2;
  v37 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  changesCopy = changes;
  v9 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v32 = "[VCCompanionSyncOutgoingSession syncSession:enqueueChanges:error:]";
    v33 = 2114;
    selfCopy4 = self;
    v35 = 2114;
    v36 = sessionCopy;
    _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_DEFAULT, "%s %{public}@ -enqueueChanges called by %{public}@", buf, 0x20u);
  }

  pendingChanges = [(VCCompanionSyncOutgoingSession *)self pendingChanges];
  firstObject = [pendingChanges firstObject];

  if (firstObject)
  {
    while (1)
    {
      v12 = objc_autoreleasePoolPush();
      v13 = changesCopy[2](changesCopy, firstObject);
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
        selfCopy4 = self;
        v35 = 2114;
        v36 = firstObject;
        _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_DEFAULT, "%s %{public}@ successfully enqueued change=%{public}@", buf, 0x20u);
      }

      pendingChanges2 = [(VCCompanionSyncOutgoingSession *)self pendingChanges];
      v17 = [pendingChanges2 indexOfObject:firstObject];

      if (v17)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:v30 object:self file:@"VCCompanionSyncOutgoingSession.m" lineNumber:74 description:@"Change should be the first pending change"];
      }

      pendingChanges3 = [(VCCompanionSyncOutgoingSession *)self pendingChanges];
      [pendingChanges3 removeObjectAtIndex:0];

      sentChanges = [(VCCompanionSyncOutgoingSession *)self sentChanges];
      [sentChanges addObject:firstObject];

      objc_autoreleasePoolPop(v12);
      pendingChanges4 = [(VCCompanionSyncOutgoingSession *)self pendingChanges];
      firstObject2 = [pendingChanges4 firstObject];

      firstObject = firstObject2;
      if (!firstObject2)
      {
        goto LABEL_14;
      }
    }

    if (v15)
    {
      *buf = 136315650;
      v32 = "[VCCompanionSyncOutgoingSession syncSession:enqueueChanges:error:]";
      v33 = 2114;
      selfCopy4 = self;
      v35 = 2114;
      v36 = firstObject;
      _os_log_impl(&dword_23103C000, v14, OS_LOG_TYPE_DEFAULT, "%s %{public}@ stopped early, before sending change=%{public}@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
  }

LABEL_14:
  pendingChanges5 = [(VCCompanionSyncOutgoingSession *)self pendingChanges];
  v24 = [pendingChanges5 count];

  v25 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v32 = "[VCCompanionSyncOutgoingSession syncSession:enqueueChanges:error:]";
    v33 = 2114;
    selfCopy4 = self;
    v35 = 2048;
    v36 = v24;
    _os_log_impl(&dword_23103C000, v25, OS_LOG_TYPE_DEFAULT, "%s %{public}@ finished enqueuing changes, with %lu remaining changes", buf, 0x20u);
  }

  if (v24)
  {
    transaction = [(VCCompanionSyncSession *)self transaction];
    os_transaction_needs_more_time();
    v27 = 1;
  }

  else
  {
    transaction = [(VCCompanionSyncSession *)self delegate];
    [transaction companionSyncSessionDidFinishSendingChanges:self];
    v27 = 2;
  }

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (double)progress
{
  syncedChanges = [(VCCompanionSyncOutgoingSession *)self syncedChanges];
  v4 = [syncedChanges count];

  pendingChanges = [(VCCompanionSyncOutgoingSession *)self pendingChanges];
  v6 = [pendingChanges count];
  sentChanges = [(VCCompanionSyncOutgoingSession *)self sentChanges];
  v8 = v6 + v4 + [sentChanges count];

  return v4 / v8;
}

- (VCCompanionSyncOutgoingSession)initWithSYSession:(id)session service:(id)service syncDataHandlers:(id)handlers changeSet:(id)set metadata:(id)metadata
{
  sessionCopy = session;
  serviceCopy = service;
  handlersCopy = handlers;
  setCopy = set;
  metadataCopy = metadata;
  v18 = metadataCopy;
  if (setCopy)
  {
    if (metadataCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"VCCompanionSyncOutgoingSession.m" lineNumber:42 description:{@"Invalid parameter not satisfying: %@", @"changeSet"}];

    if (v18)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"VCCompanionSyncOutgoingSession.m" lineNumber:43 description:{@"Invalid parameter not satisfying: %@", @"metadata"}];

LABEL_3:
  v32.receiver = self;
  v32.super_class = VCCompanionSyncOutgoingSession;
  v19 = [(VCCompanionSyncSession *)&v32 initWithSYSession:sessionCopy service:serviceCopy syncDataHandlers:handlersCopy];
  if (v19)
  {
    v20 = [setCopy mutableCopy];
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