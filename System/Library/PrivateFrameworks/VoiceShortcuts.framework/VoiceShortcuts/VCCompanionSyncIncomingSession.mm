@interface VCCompanionSyncIncomingSession
- (void)resetDataStoreForSyncSession:(id)session completion:(id)completion;
- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion;
@end

@implementation VCCompanionSyncIncomingSession

- (void)resetDataStoreForSyncSession:(id)session completion:(id)completion
{
  v40 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  completionCopy = completion;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  syncDataHandlers = [(VCCompanionSyncSession *)self syncDataHandlers];
  v9 = [syncDataHandlers countByEnumeratingWithState:&v29 objects:v39 count:16];
  if (v9)
  {
    v10 = v9;
    v26 = completionCopy;
    v27 = sessionCopy;
    v11 = 0;
    v12 = *v30;
    while (2)
    {
      v13 = 0;
      v14 = v11;
      do
      {
        if (*v30 != v12)
        {
          objc_enumerationMutation(syncDataHandlers);
        }

        v15 = *(*(&v29 + 1) + 8 * v13);
        v16 = objc_autoreleasePoolPush();
        v28 = v14;
        v17 = [v15 deleteSyncedData:&v28];
        v11 = v28;

        v18 = getWFWatchSyncLogObject();
        v19 = v18;
        if (!v17)
        {
          if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
          {
            *buf = 136315650;
            v34 = "[VCCompanionSyncIncomingSession resetDataStoreForSyncSession:completion:]";
            v35 = 2114;
            selfCopy2 = self;
            v37 = 2114;
            v38 = v11;
            _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_FAULT, "%s %{public}@ failed to reset local data: %{public}@", buf, 0x20u);
          }

          if (!v11)
          {
            v21 = MEMORY[0x277CCA9B8];
            v22 = objc_opt_class();
            v23 = NSStringFromClass(v22);
            v11 = [v21 vc_voiceShortcutErrorWithCode:3001 reason:{@"%@ failed to reset data store", v23}];
          }

          objc_autoreleasePoolPop(v16);
          v20 = 0;
          goto LABEL_17;
        }

        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v34 = "[VCCompanionSyncIncomingSession resetDataStoreForSyncSession:completion:]";
          v35 = 2114;
          selfCopy2 = self;
          _os_log_impl(&dword_23103C000, v19, OS_LOG_TYPE_DEFAULT, "%s %{public}@ successfully reset local data", buf, 0x16u);
        }

        objc_autoreleasePoolPop(v16);
        ++v13;
        v14 = v11;
      }

      while (v10 != v13);
      v10 = [syncDataHandlers countByEnumeratingWithState:&v29 objects:v39 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }

    v20 = 1;
LABEL_17:
    completionCopy = v26;
    sessionCopy = v27;
  }

  else
  {
    v11 = 0;
    v20 = 1;
  }

  completionCopy[2](completionCopy, v20, v11);
  transaction = [(VCCompanionSyncSession *)self transaction];
  os_transaction_needs_more_time();

  v25 = *MEMORY[0x277D85DE8];
}

- (void)syncSession:(id)session applyChanges:(id)changes completion:(id)completion
{
  v65 = *MEMORY[0x277D85DE8];
  sessionCopy = session;
  changesCopy = changes;
  completionCopy = completion;
  v10 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v57 = "[VCCompanionSyncIncomingSession syncSession:applyChanges:completion:]";
    v58 = 2114;
    selfCopy3 = self;
    v60 = 2048;
    v61 = [changesCopy count];
    _os_log_impl(&dword_23103C000, v10, OS_LOG_TYPE_DEFAULT, "%s %{public}@ received %lu incoming changes", buf, 0x20u);
  }

  v11 = [[VCSYChangeEnumerator alloc] initWithLazyArray:changesCopy];
  allObjects = [(VCSYChangeEnumerator *)v11 allObjects];

  v13 = [allObjects count];
  if (v13 >= [changesCopy count])
  {
    v15 = objc_alloc(MEMORY[0x277CBEB38]);
    v16 = VCPartitionMessages(allObjects);
    v14 = [v15 initWithDictionary:v16];

    v54 = 0u;
    v55 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = [(VCCompanionSyncSession *)self syncDataHandlers];
    v17 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
    v48 = v14;
    if (v17)
    {
      v18 = v17;
      v43 = allObjects;
      v44 = completionCopy;
      v45 = changesCopy;
      v46 = sessionCopy;
      v19 = 0;
      v49 = *v53;
      while (2)
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v53 != v49)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v52 + 1) + 8 * i);
          v22 = objc_autoreleasePoolPush();
          v23 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(objc_opt_class(), "messageType")}];
          v24 = [v14 objectForKeyedSubscript:v23];
          [v14 removeObjectForKey:v23];
          if ([v24 count])
          {
            service = [(VCCompanionSyncSession *)self service];
            v51 = v19;
            v26 = [v21 applyChanges:v24 fromSyncService:service error:&v51];
            v27 = v51;

            v28 = getWFWatchSyncLogObject();
            v29 = v28;
            if (!v26)
            {
              if (os_log_type_enabled(v28, OS_LOG_TYPE_FAULT))
              {
                v32 = [v24 count];
                *buf = 136315906;
                v57 = "[VCCompanionSyncIncomingSession syncSession:applyChanges:completion:]";
                v58 = 2114;
                selfCopy3 = self;
                v60 = 2048;
                v61 = v32;
                v62 = 2114;
                v63 = v27;
                _os_log_impl(&dword_23103C000, v29, OS_LOG_TYPE_FAULT, "%s %{public}@ error applying %lu changes: %{public}@", buf, 0x2Au);
              }

              sessionCopy = v46;
              v14 = v48;
              if (!v27)
              {
                v33 = MEMORY[0x277CCA9B8];
                v34 = objc_opt_class();
                v35 = NSStringFromClass(v34);
                v27 = [v33 vc_voiceShortcutErrorWithCode:3001 reason:{@"%@ failed to apply %lu changes", v35, objc_msgSend(v24, "count")}];
              }

              objc_autoreleasePoolPop(v22);
              v31 = 0;
              v19 = v27;
              goto LABEL_23;
            }

            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              v30 = [v24 count];
              *buf = 136315906;
              v57 = "[VCCompanionSyncIncomingSession syncSession:applyChanges:completion:]";
              v58 = 2114;
              selfCopy3 = self;
              v60 = 2048;
              v61 = v30;
              v62 = 2112;
              v63 = v24;
              _os_log_impl(&dword_23103C000, v29, OS_LOG_TYPE_DEFAULT, "%s %{public}@ successfully applied %lu changes=%@", buf, 0x2Au);
            }

            v19 = v27;
            v14 = v48;
          }

          objc_autoreleasePoolPop(v22);
        }

        v18 = [obj countByEnumeratingWithState:&v52 objects:v64 count:16];
        if (v18)
        {
          continue;
        }

        break;
      }

      v31 = 1;
      sessionCopy = v46;
LABEL_23:
      completionCopy = v44;
      changesCopy = v45;
      allObjects = v43;
    }

    else
    {
      v19 = 0;
      v31 = 1;
    }

    if ([v14 count])
    {
      allKeys = [v14 allKeys];
      v37 = [allKeys if_compactMap:&__block_literal_global_3912];
      v38 = [v37 componentsJoinedByString:{@", "}];

      v39 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:3005 reason:{@"Changes of type %@ were unhandled", v38}];

      v40 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
      {
        *buf = 136315394;
        v57 = "[VCCompanionSyncIncomingSession syncSession:applyChanges:completion:]";
        v58 = 2114;
        selfCopy3 = v38;
        _os_log_impl(&dword_23103C000, v40, OS_LOG_TYPE_FAULT, "%s Changes of type %{public}@ were unhandled, failing", buf, 0x16u);
      }

      v31 = 0;
      v19 = v39;
      v14 = v48;
    }

    completionCopy[2](completionCopy, v31, v19);
    transaction = [(VCCompanionSyncSession *)self transaction];
    os_transaction_needs_more_time();
  }

  else
  {
    v14 = [MEMORY[0x277CCA9B8] vc_voiceShortcutErrorWithCode:3001 reason:{@"Failed to apply %lu changes because %lu of them failed to deserialize", objc_msgSend(changesCopy, "count"), objc_msgSend(changesCopy, "count") - objc_msgSend(allObjects, "count")}];
    completionCopy[2](completionCopy, 0, v14);
  }

  v42 = *MEMORY[0x277D85DE8];
}

__CFString *__70__VCCompanionSyncIncomingSession_syncSession_applyChanges_completion___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 intValue];
  v3 = @"IntentDefinition";
  if (v2 == 2)
  {
    v3 = @"VoiceShortcut";
  }

  if (v2 == 3)
  {
    return @"Workflow";
  }

  else
  {
    return v3;
  }
}

@end