@interface VCCompanionSyncService
- (BOOL)service:(id)a3 startSession:(id)a4 error:(id *)a5;
- (VCCompanionSyncService)initWithSyncDataEndpoint:(id)a3;
- (VCCompanionSyncServiceDelegate)delegate;
- (void)companionSyncSession:(id)a3 didFinishWithError:(id)a4;
- (void)companionSyncSession:(id)a3 didUpdateProgress:(double)a4;
- (void)companionSyncSessionDidFinishSendingChanges:(id)a3;
- (void)configureReasonForUnderlyingSession:(id)a3 withSession:(id)a4;
- (void)dealloc;
- (void)requestFullResync;
- (void)requestSync;
- (void)requestSyncImmediately;
- (void)resetSession;
- (void)resumeServiceIfNecessary;
- (void)service:(id)a3 didSwitchFromPairingID:(id)a4 toPairingID:(id)a5;
- (void)service:(id)a3 encounteredError:(id)a4 context:(id)a5;
- (void)service:(id)a3 willSwitchFromPairingID:(id)a4 toPairingID:(id)a5;
- (void)setCurrentSyncService:(id)a3;
- (void)updateCurrentSyncServiceIfNecessary;
- (void)updateSyncDataHandlers;
@end

@implementation VCCompanionSyncService

- (VCCompanionSyncServiceDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (void)companionSyncSession:(id)a3 didUpdateProgress:(double)a4
{
  v6 = a3;
  v7 = [(VCCompanionSyncService *)self delegate];
  [v7 companionSyncService:self outgoingSyncSession:v6 didUpdateProgress:a4];
}

- (void)companionSyncSessionDidFinishSendingChanges:(id)a3
{
  v4 = a3;
  v5 = [(VCCompanionSyncService *)self delegate];
  [v5 companionSyncService:self outgoingSyncSessionDidFinishSendingChanges:v4];
}

- (void)companionSyncSession:(id)a3 didFinishWithError:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [objc_opt_class() direction];
  v9 = @"Outgoing";
  if (v8 == 1)
  {
    v9 = @"Incoming";
  }

  v10 = v9;
  v11 = getWFWatchSyncLogObject();
  v12 = v11;
  if (v7)
  {
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315906;
      v25 = "[VCCompanionSyncService companionSyncSession:didFinishWithError:]";
      v26 = 2114;
      v27 = v10;
      v28 = 2114;
      v29 = v6;
      v30 = 2114;
      v31 = v7;
      v13 = "%s %{public}@ session=%{public}@ finished with error: %{public}@";
      v14 = v12;
      v15 = OS_LOG_TYPE_ERROR;
      v16 = 42;
LABEL_8:
      _os_log_impl(&dword_23103C000, v14, v15, v13, buf, v16);
    }
  }

  else if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
  {
    *buf = 136315650;
    v25 = "[VCCompanionSyncService companionSyncSession:didFinishWithError:]";
    v26 = 2114;
    v27 = v10;
    v28 = 2114;
    v29 = v6;
    v13 = "%s %{public}@ session=%{public}@ finished successfully";
    v14 = v12;
    v15 = OS_LOG_TYPE_DEBUG;
    v16 = 32;
    goto LABEL_8;
  }

  v17 = [(VCCompanionSyncService *)self queue];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __66__VCCompanionSyncService_companionSyncSession_didFinishWithError___block_invoke;
  block[3] = &unk_2789000F8;
  block[4] = self;
  v22 = v6;
  v23 = v7;
  v18 = v7;
  v19 = v6;
  dispatch_async(v17, block);

  v20 = *MEMORY[0x277D85DE8];
}

void __66__VCCompanionSyncService_companionSyncSession_didFinishWithError___block_invoke(uint64_t a1)
{
  [*(a1 + 32) resetSession];
  v2 = [*(a1 + 32) delegate];
  [v2 companionSyncService:*(a1 + 32) didFinishSyncSession:*(a1 + 40) withError:*(a1 + 48)];
}

- (void)service:(id)a3 didSwitchFromPairingID:(id)a4 toPairingID:(id)a5
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v14 = 136315650;
    v15 = "[VCCompanionSyncService service:didSwitchFromPairingID:toPairingID:]";
    v16 = 2114;
    v17 = v7;
    v18 = 2114;
    v19 = v8;
    _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_INFO, "%s CompanionSync did switch from %{public}@ to %{public}@", &v14, 0x20u);
  }

  if (v8 && ([MEMORY[0x277D2BD00] sharedInstance], v10 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v10, "deviceForPairingID:", v8), v11 = objc_claimAutoreleasedReturnValue(), v10, v11))
  {
    v12 = [[VCNRDeviceSyncService alloc] initWithCompanionSyncService:self device:v11];
    [(VCCompanionSyncService *)self setCurrentSyncService:v12];
  }

  else
  {
    [(VCCompanionSyncService *)self setCurrentSyncService:0];
  }

  [(VCCompanionSyncService *)self requestSyncImmediately];

  v13 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 willSwitchFromPairingID:(id)a4 toPairingID:(id)a5
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v9 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v11 = 136315650;
    v12 = "[VCCompanionSyncService service:willSwitchFromPairingID:toPairingID:]";
    v13 = 2114;
    v14 = v7;
    v15 = 2114;
    v16 = v8;
    _os_log_impl(&dword_23103C000, v9, OS_LOG_TYPE_INFO, "%s CompanionSync will switch from %{public}@ to %{public}@", &v11, 0x20u);
  }

  [(VCCompanionSyncService *)self resetSession];
  v10 = *MEMORY[0x277D85DE8];
}

- (void)service:(id)a3 encounteredError:(id)a4 context:(id)a5
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v8 = 136315394;
    v9 = "[VCCompanionSyncService service:encounteredError:context:]";
    v10 = 2114;
    v11 = v5;
    _os_log_impl(&dword_23103C000, v6, OS_LOG_TYPE_ERROR, "%s CompanionSync service encountered error: %{public}@", &v8, 0x16u);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (BOOL)service:(id)a3 startSession:(id)a4 error:(id *)a5
{
  v97 = *MEMORY[0x277D85DE8];
  v8 = a4;
  [(VCCompanionSyncService *)self resetSession];
  v9 = [(VCCompanionSyncService *)self isRunningOnWatch];
  if (v9 == [v8 isSending])
  {
    v20 = [(VCCompanionSyncService *)self isRunningOnWatch];
    v11 = getWFWatchSyncLogObject();
    v21 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v20)
    {
      if (v21)
      {
        *buf = 136315138;
        v90 = "[VCCompanionSyncService service:startSession:error:]";
        v22 = "%s Ignoring sending session from watch; we have nothing to send";
LABEL_11:
        _os_log_impl(&dword_23103C000, v11, OS_LOG_TYPE_DEFAULT, v22, buf, 0xCu);
      }
    }

    else if (v21)
    {
      *buf = 136315138;
      v90 = "[VCCompanionSyncService service:startSession:error:]";
      v22 = "%s Ignoring receiving session from phone; we have nothing to receive";
      goto LABEL_11;
    }

LABEL_18:
    v19 = 0;
    goto LABEL_19;
  }

  [(VCCompanionSyncService *)self updateCurrentSyncServiceIfNecessary];
  [(VCCompanionSyncService *)self updateSyncDataHandlers];
  v10 = [(VCCompanionSyncService *)self currentSyncService];
  if (!v10)
  {
    v23 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
    {
      *buf = 136315138;
      v90 = "[VCCompanionSyncService service:startSession:error:]";
      _os_log_impl(&dword_23103C000, v23, OS_LOG_TYPE_FAULT, "%s Not starting sync because the target device is unknown", buf, 0xCu);
    }

    v11 = 0;
    goto LABEL_18;
  }

  v11 = v10;
  v12 = [(VCCompanionSyncService *)self delegate];
  v13 = [v12 companionSyncServiceShouldStartSession:self];

  if ((v13 & 1) == 0)
  {
    v24 = getWFWatchSyncLogObject();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
    {
      v25 = [(VCCompanionSyncService *)self delegate];
      *buf = 136315394;
      v90 = "[VCCompanionSyncService service:startSession:error:]";
      v91 = 2114;
      v92 = v25;
      _os_log_impl(&dword_23103C000, v24, OS_LOG_TYPE_INFO, "%s Not starting sync the %{public}@ returned NO", buf, 0x16u);
    }

    goto LABEL_18;
  }

  if (![(VCCompanionSyncService *)self isRunningOnWatch])
  {
    v71 = a2;
    v72 = a5;
    v73 = v8;
    v74 = self;
    if ([v8 isResetSync])
    {
      v28 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 136315394;
        v90 = "[VCCompanionSyncService service:startSession:error:]";
        v91 = 2114;
        v92 = v11;
        _os_log_impl(&dword_23103C000, v28, OS_LOG_TYPE_DEFAULT, "%s Clearing sync state for service %{public}@", buf, 0x16u);
      }

      v87 = 0u;
      v88 = 0u;
      v85 = 0u;
      v86 = 0u;
      v29 = [(VCCompanionSyncService *)self currentDataHandlers];
      v30 = [v29 countByEnumeratingWithState:&v85 objects:v96 count:16];
      if (v30)
      {
        v31 = v30;
        v32 = *v86;
        do
        {
          for (i = 0; i != v31; ++i)
          {
            if (*v86 != v32)
            {
              objc_enumerationMutation(v29);
            }

            v34 = *(*(&v85 + 1) + 8 * i);
            v84 = 0;
            v35 = [v34 resetSyncStateForService:v11 error:&v84];
            v36 = v84;
            if ((v35 & 1) == 0)
            {
              v37 = getWFWatchSyncLogObject();
              if (os_log_type_enabled(v37, OS_LOG_TYPE_FAULT))
              {
                *buf = 136315394;
                v90 = "[VCCompanionSyncService service:startSession:error:]";
                v91 = 2112;
                v92 = v36;
                _os_log_impl(&dword_23103C000, v37, OS_LOG_TYPE_FAULT, "%s Error removing sync state: %@", buf, 0x16u);
              }
            }
          }

          v31 = [v29 countByEnumeratingWithState:&v85 objects:v96 count:16];
        }

        while (v31);
      }
    }

    v76 = objc_opt_new();
    v77 = objc_opt_new();
    v75 = objc_opt_new();
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v38 = [(VCCompanionSyncService *)self currentDataHandlers];
    v39 = [v38 countByEnumeratingWithState:&v80 objects:v95 count:16];
    if (v39)
    {
      v40 = v39;
      v41 = *v81;
      do
      {
        v42 = 0;
        do
        {
          if (*v81 != v41)
          {
            objc_enumerationMutation(v38);
          }

          v43 = *(*(&v80 + 1) + 8 * v42);
          v78 = 0;
          v79 = 0;
          v44 = [v43 unsyncedChangesForSyncService:v11 metadata:&v79 error:&v78];
          v45 = v79;
          v46 = v78;
          v47 = v46;
          if (v45)
          {
            if ([MEMORY[0x277CCAC58] propertyList:v45 isValidForFormat:200])
            {
              if (!v47)
              {
                goto LABEL_43;
              }
            }

            else
            {
              v52 = [MEMORY[0x277CCA890] currentHandler];
              [v52 handleFailureInMethod:v71 object:v74 file:@"VCCompanionSyncService.m" lineNumber:244 description:@"Metadata dictionary must be serializable to a property list file"];

              if (!v47)
              {
LABEL_43:
                v48 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(objc_opt_class(), "messageType")}];
                [v76 setObject:v45 forKey:v48];

LABEL_48:
                if (v44)
                {
                  [v75 addObjectsFromArray:v44];
                }

                goto LABEL_50;
              }
            }
          }

          else if (!v46)
          {
            goto LABEL_48;
          }

          v49 = getWFWatchSyncLogObject();
          if (os_log_type_enabled(v49, OS_LOG_TYPE_FAULT))
          {
            v50 = objc_opt_class();
            v51 = NSStringFromClass(v50);
            *buf = 136315650;
            v90 = "[VCCompanionSyncService service:startSession:error:]";
            v91 = 2114;
            v92 = v51;
            v93 = 2112;
            v94 = v47;
            _os_log_impl(&dword_23103C000, v49, OS_LOG_TYPE_FAULT, "%s Error getting unsynced changes from %{public}@: %@", buf, 0x20u);
          }

          [v77 addObject:v47];
LABEL_50:

          ++v42;
        }

        while (v40 != v42);
        v53 = [v38 countByEnumeratingWithState:&v80 objects:v95 count:16];
        v40 = v53;
      }

      while (v53);
    }

    v54 = [v75 count];
    v19 = v54 != 0;
    if (v54)
    {
      v55 = getWFWatchSyncLogObject();
      v8 = v73;
      if (os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
      {
        v56 = [v75 count];
        *buf = 136315394;
        v90 = "[VCCompanionSyncService service:startSession:error:]";
        v91 = 2048;
        v92 = v56;
        _os_log_impl(&dword_23103C000, v55, OS_LOG_TYPE_DEFAULT, "%s Got %lu changes to send", buf, 0x16u);
      }

      v57 = [VCCompanionSyncOutgoingSession alloc];
      v58 = [(VCCompanionSyncService *)v74 currentDataHandlers];
      v59 = v76;
      v60 = [(VCCompanionSyncOutgoingSession *)v57 initWithSYSession:v73 service:v11 syncDataHandlers:v58 changeSet:v75 metadata:v76];
      [(VCCompanionSyncService *)v74 setCurrentSession:v60];

      v61 = [(VCCompanionSyncService *)v74 currentSession];
      [v61 setDelegate:v74];

      v62 = [(VCCompanionSyncService *)v74 currentSession];
      [(VCCompanionSyncService *)v74 configureReasonForUnderlyingSession:v73 withSession:v62];
LABEL_67:

      goto LABEL_19;
    }

    v62 = [v77 firstObject];
    v63 = getWFWatchSyncLogObject();
    v64 = v63;
    v8 = v73;
    if (v62)
    {
      if (!os_log_type_enabled(v63, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_65;
      }

      *buf = 136315394;
      v90 = "[VCCompanionSyncService service:startSession:error:]";
      v91 = 2112;
      v92 = v62;
      v65 = "%s Error getting any changes to sync: %@";
      v66 = v64;
      v67 = OS_LOG_TYPE_FAULT;
      v68 = 22;
    }

    else
    {
      if (!os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_65;
      }

      *buf = 136315138;
      v90 = "[VCCompanionSyncService service:startSession:error:]";
      v65 = "%s No changes to sync";
      v66 = v64;
      v67 = OS_LOG_TYPE_DEFAULT;
      v68 = 12;
    }

    _os_log_impl(&dword_23103C000, v66, v67, v65, buf, v68);
LABEL_65:

    v69 = [(VCCompanionSyncService *)v74 delegate];
    [v69 companionSyncService:v74 didRejectSessionWithError:v62];

    v59 = v76;
    if (v72)
    {
      v70 = v62;
      *v72 = v62;
    }

    goto LABEL_67;
  }

  v14 = [VCCompanionSyncIncomingSession alloc];
  v15 = [(VCCompanionSyncService *)self currentDataHandlers];
  v16 = [(VCCompanionSyncSession *)v14 initWithSYSession:v8 service:v11 syncDataHandlers:v15];
  [(VCCompanionSyncService *)self setCurrentSession:v16];

  v17 = [(VCCompanionSyncService *)self currentSession];
  [v17 setDelegate:self];

  v18 = [(VCCompanionSyncService *)self currentSession];
  [(VCCompanionSyncService *)self configureReasonForUnderlyingSession:v8 withSession:v18];

  v19 = 1;
LABEL_19:

  v26 = *MEMORY[0x277D85DE8];
  return v19;
}

- (void)configureReasonForUnderlyingSession:(id)a3 withSession:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(VCCompanionSyncService *)self delegate];
  v8 = [v7 companionSyncService:self typeForSession:v6];

  if (v8 == 1)
  {
    v9 = MEMORY[0x277CFBAB8];
  }

  else
  {
    if (v8 != 2)
    {
      goto LABEL_6;
    }

    v9 = MEMORY[0x277CFBAC0];
  }

  [v10 setReason:*v9];
LABEL_6:
}

- (void)setCurrentSyncService:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  p_currentSyncService = &self->_currentSyncService;
  v7 = [(VCNRDeviceSyncService *)self->_currentSyncService isEqual:v5];
  if (!v7 && *p_currentSyncService)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v8 = [(VCCompanionSyncService *)self currentDataHandlers];
    v9 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v25;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v25 != v11)
          {
            objc_enumerationMutation(v8);
          }

          [*(*(&v24 + 1) + 8 * i) deregisterSyncService:*p_currentSyncService];
        }

        v10 = [v8 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v10);
    }
  }

  objc_storeStrong(&self->_currentSyncService, a3);
  if (v5)
  {
    v13 = v7;
  }

  else
  {
    v13 = 1;
  }

  if ((v13 & 1) == 0)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = [(VCCompanionSyncService *)self currentDataHandlers];
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v20 + 1) + 8 * j) registerSyncService:v5];
        }

        v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v16);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)updateCurrentSyncServiceIfNecessary
{
  v3 = [(VCCompanionSyncService *)self currentSyncService];

  if (!v3)
  {
    v4 = [MEMORY[0x277D2BD00] sharedInstance];
    v6 = [v4 getActivePairedDevice];

    if (v6)
    {
      v5 = [[VCNRDeviceSyncService alloc] initWithCompanionSyncService:self device:v6];
      [(VCCompanionSyncService *)self setCurrentSyncService:v5];
    }
  }
}

- (void)updateSyncDataHandlers
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = [(VCCompanionSyncService *)self currentDataHandlers];
  v4 = [(VCCompanionSyncService *)self syncDataEndpoint];
  v5 = [v4 syncDataHandlers];

  v6 = [(VCCompanionSyncService *)self currentSyncService];
  if (v6)
  {
    v7 = [v5 mutableCopy];
    [v7 minusSet:v3];
    v8 = [v3 mutableCopy];
    [v8 minusSet:v5];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        v13 = 0;
        do
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          [*(*(&v24 + 1) + 8 * v13++) registerSyncService:v6];
        }

        while (v11 != v13);
        v11 = [v9 countByEnumeratingWithState:&v24 objects:v29 count:16];
      }

      while (v11);
    }

    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v14 = v8;
    v15 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v21;
      do
      {
        v18 = 0;
        do
        {
          if (*v21 != v17)
          {
            objc_enumerationMutation(v14);
          }

          [*(*(&v20 + 1) + 8 * v18++) deregisterSyncService:{v6, v20}];
        }

        while (v16 != v18);
        v16 = [v14 countByEnumeratingWithState:&v20 objects:v28 count:16];
      }

      while (v16);
    }
  }

  [(VCCompanionSyncService *)self setCurrentDataHandlers:v5, v20];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)resetSession
{
  v3 = [(VCCompanionSyncService *)self currentSession];
  [v3 setDelegate:0];

  [(VCCompanionSyncService *)self setCurrentSession:0];
}

- (void)requestFullResync
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[VCCompanionSyncService requestFullResync]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_DEBUG, "%s Requesting a full resync", &v6, 0xCu);
  }

  [(VCCompanionSyncService *)self resumeServiceIfNecessary];
  v4 = [(VCCompanionSyncService *)self service];
  [v4 setNeedsResetSync];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)requestSyncImmediately
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[VCCompanionSyncService requestSyncImmediately]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_DEBUG, "%s Requesting a sync", &v6, 0xCu);
  }

  [(VCCompanionSyncService *)self resumeServiceIfNecessary];
  v4 = [(VCCompanionSyncService *)self service];
  [v4 setHasChangesAvailable];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)resumeServiceIfNecessary
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [(VCCompanionSyncService *)self service];
  v14 = 0;
  v3 = [v2 resume:&v14];
  v4 = v14;

  v5 = [v4 domain];
  if ([v5 isEqualToString:*MEMORY[0x277CFBAA8]])
  {
    v6 = [v4 code];

    if (v6 == 2002)
    {
      v7 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v16 = "[VCCompanionSyncService resumeServiceIfNecessary]";
        v8 = "%s SYService is already running";
LABEL_9:
        v10 = v7;
        v11 = OS_LOG_TYPE_INFO;
        v12 = 12;
LABEL_12:
        _os_log_impl(&dword_23103C000, v10, v11, v8, buf, v12);
        goto LABEL_13;
      }

      goto LABEL_13;
    }
  }

  else
  {
  }

  v9 = getWFWatchSyncLogObject();
  v7 = v9;
  if (v3)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v16 = "[VCCompanionSyncService resumeServiceIfNecessary]";
      v8 = "%s Successfully resumed SYService";
      goto LABEL_9;
    }
  }

  else if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v16 = "[VCCompanionSyncService resumeServiceIfNecessary]";
    v17 = 2114;
    v18 = v4;
    v8 = "%s Error resuming SYService: %{public}@";
    v10 = v7;
    v11 = OS_LOG_TYPE_ERROR;
    v12 = 22;
    goto LABEL_12;
  }

LABEL_13:

  v13 = *MEMORY[0x277D85DE8];
}

- (void)requestSync
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = getWFWatchSyncLogObject();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v6 = 136315138;
    v7 = "[VCCompanionSyncService requestSync]";
    _os_log_impl(&dword_23103C000, v3, OS_LOG_TYPE_DEBUG, "%s Poking the debouncer to request a sync", &v6, 0xCu);
  }

  v4 = [(VCCompanionSyncService *)self debouncer];
  [v4 poke];

  v5 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  v3 = [(VCCompanionSyncService *)self service];
  [v3 suspend];

  [(VCCompanionSyncService *)self setCurrentSyncService:0];
  v4.receiver = self;
  v4.super_class = VCCompanionSyncService;
  [(VCCompanionSyncService *)&v4 dealloc];
}

- (VCCompanionSyncService)initWithSyncDataEndpoint:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v26.receiver = self;
  v26.super_class = VCCompanionSyncService;
  v6 = [(VCCompanionSyncService *)&v26 init];
  if (v6)
  {
    if (objc_opt_class())
    {
      if (objc_opt_class())
      {
        v7 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
        v8 = dispatch_queue_attr_make_with_qos_class(v7, QOS_CLASS_USER_INITIATED, 0);

        v9 = dispatch_queue_create("com.apple.shortcuts.VCCompanionSyncService", v8);
        queue = v6->_queue;
        v6->_queue = v9;

        objc_storeStrong(&v6->_syncDataEndpoint, a3);
        v11 = [v5 syncDataHandlers];
        currentDataHandlers = v6->_currentDataHandlers;
        v6->_currentDataHandlers = v11;

        v13 = [objc_alloc(MEMORY[0x277D79F00]) initWithDelay:v6->_queue maximumDelay:2.0 queue:10.0];
        debouncer = v6->_debouncer;
        v6->_debouncer = v13;

        [(WFDebouncer *)v6->_debouncer addTarget:v6 action:sel_requestSyncImmediately];
        v27 = *MEMORY[0x277CFBAB0];
        v28 = &unk_2845ED170;
        v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v16 = [objc_alloc(MEMORY[0x277CFBA98]) initWithService:@"com.apple.private.alloy.siri.voiceshortcuts" priority:0 asMasterStore:-[VCCompanionSyncService isRunningOnWatch](v6 options:{"isRunningOnWatch") ^ 1, v15}];
        service = v6->_service;
        v6->_service = v16;

        [(SYService *)v6->_service setDelegate:v6 queue:v6->_queue];
        [(VCCompanionSyncService *)v6 resumeServiceIfNecessary];
        v18 = v6->_queue;
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __51__VCCompanionSyncService_initWithSyncDataEndpoint___block_invoke;
        block[3] = &unk_278900148;
        v19 = v6;
        v25 = v19;
        dispatch_async(v18, block);
        v20 = v19;

LABEL_12:
        goto LABEL_13;
      }

      v8 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v30 = "[VCCompanionSyncService initWithSyncDataEndpoint:]";
        v21 = "%s The NanoRegistry framework is not present on this device";
        goto LABEL_10;
      }
    }

    else
    {
      v8 = getWFWatchSyncLogObject();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        *buf = 136315138;
        v30 = "[VCCompanionSyncService initWithSyncDataEndpoint:]";
        v21 = "%s The CompanionSync framework is not present on this device";
LABEL_10:
        _os_log_impl(&dword_23103C000, v8, OS_LOG_TYPE_INFO, v21, buf, 0xCu);
      }
    }

    v20 = 0;
    goto LABEL_12;
  }

  v20 = 0;
LABEL_13:

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

@end