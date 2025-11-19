@interface PSTransitionManager3rdPartyReader
- (BOOL)commitAddedGraphs:(id)a3 removedGraphs:(id)a4 error:(id *)a5;
- (BOOL)validateTransitionBlock:(id)a3 error:(id *)a4;
- (PSExecutionSession3rdPartyReader)executionSession;
- (PSTransitionManager3rdPartyReader)initWithExecutionSession:(id)a3 withContext:(id)a4;
- (uint64_t)dealloc;
- (void)dealloc;
- (void)deliverDynamicResourcesAvailableNotification:(id)a3;
- (void)deliverDynamicResourcesNoLongerAvailableNotification:(id)a3;
- (void)setExecutionSessionDelegate:(id)a3 withQueue:(id)a4;
- (void)transitionExecutorForBlock:(id)a3;
@end

@implementation PSTransitionManager3rdPartyReader

- (PSTransitionManager3rdPartyReader)initWithExecutionSession:(id)a3 withContext:(id)a4
{
  v6 = a3;
  v7 = a4;
  v15.receiver = self;
  v15.super_class = PSTransitionManager3rdPartyReader;
  v8 = [(PSTransitionManager3rdPartyReader *)&v15 init];
  v9 = v8;
  if (v8)
  {
    objc_storeStrong(&v8->_context, a4);
    objc_storeWeak(&v9->_executionSession, v6);
    v9->_transitionLock._os_unfair_lock_opaque = 0;
    v10 = objc_alloc_init(PSExecutionDashboard);
    dashboard = v9->_dashboard;
    v9->_dashboard = v10;

    v12 = [[PSGraphCompiler3rdPartyReader alloc] initWithTransitionManager:v9 withContext:v9->_context];
    compiler = v9->_compiler;
    v9->_compiler = v12;
  }

  return v9;
}

- (void)dealloc
{
  v3 = [(PSExecutionDashboard *)self->_dashboard getRunningGraphs];
  v4 = [v3 count];

  if (v4)
  {
    v5 = [(PSTransitionManager3rdPartyReader *)&v11 dealloc];
    [(PSTransitionManager3rdPartyReader *)v5 commitAddedGraphs:v6 removedGraphs:v7 error:v8, v9];
  }

  else
  {
    v10.receiver = self;
    v10.super_class = PSTransitionManager3rdPartyReader;
    [(PSTransitionManager3rdPartyReader *)&v10 dealloc];
  }
}

- (BOOL)commitAddedGraphs:(id)a3 removedGraphs:(id)a4 error:(id *)a5
{
  v8 = a3;
  v9 = a4;
  os_unfair_lock_lock(&self->_transitionLock);
  v10 = [PSTransitionBlock generateTransitionBlockWithAddedGraphs:v8 withRemovedGraphs:v9 withDashboard:self->_dashboard withStopOption:0];
  v11 = [(PSTransitionManager3rdPartyReader *)self validateTransitionBlock:v10 error:a5];
  if (v11)
  {
    [(PSTransitionManager3rdPartyReader *)self transitionExecutorForBlock:v10];
    dashboard = self->_dashboard;
    v13 = [v10 postTransitionGraphs];
    [(PSExecutionDashboard *)dashboard setRunningGraphs:v13];
  }

  os_unfair_lock_unlock(&self->_transitionLock);
  return v11;
}

- (BOOL)validateTransitionBlock:(id)a3 error:(id *)a4
{
  v73 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 addedGraphs];
  if ([v6 count])
  {
  }

  else
  {
    v7 = [v5 removedGraphs];
    v8 = [v7 count];

    if (!v8)
    {
      if (a4)
      {
        *a4 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-5 description:@"No graphs were requested for addition or removal"];
      }

      v45 = __PLSLogSharedInstance();
      v18 = @"No graphs were requested for addition or removal";
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v72 = @"No graphs were requested for addition or removal";
        _os_log_impl(&dword_25EA3A000, v45, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
      }

      goto LABEL_53;
    }
  }

  v56 = a4;
  v9 = [v5 removedGraphs];
  v57 = v5;
  if ([v9 count])
  {
    v10 = [v5 removedGraphs];
    v11 = [v5 preTransitionGraphs];
    v12 = [v10 isSubsetOfSet:v11];

    if (!v12)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v13 = [v5 addedGraphs];
  if (![v13 count])
  {

    goto LABEL_12;
  }

  v14 = [v5 addedGraphs];
  v15 = [v5 preTransitionGraphs];
  v16 = [v14 isSubsetOfSet:v15];

  if ((v16 & 1) == 0)
  {
LABEL_12:
    v67 = 0u;
    v68 = 0u;
    v65 = 0u;
    v66 = 0u;
    v18 = [v5 addedGraphs];
    v19 = [(__CFString *)v18 countByEnumeratingWithState:&v65 objects:v70 count:16];
    if (!v19)
    {
      v17 = 1;
      goto LABEL_54;
    }

    v20 = v19;
    v21 = *v66;
    v22 = PLSResourceKeyGCIMURight;
    v55 = v18;
    v52 = *v66;
    while (1)
    {
      v23 = 0;
      v53 = v20;
      do
      {
        if (*v66 != v21)
        {
          objc_enumerationMutation(v18);
        }

        v54 = v23;
        v24 = *(*(&v65 + 1) + 8 * v23);
        v25 = [v24 tasks];
        v26 = [v25 count];

        if (v26)
        {
          if (v56)
          {
            *v56 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-105 description:@"No tasks allowed for 3rd Party Graphs"];
          }

          v51 = __PLSLogSharedInstance();
          v45 = @"No tasks allowed for 3rd Party Graphs";
          v5 = v57;
          v18 = v55;
          v58 = v51;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v72 = @"No tasks allowed for 3rd Party Graphs";
            goto LABEL_64;
          }

LABEL_52:

LABEL_53:
          v17 = 0;
          goto LABEL_54;
        }

        v27 = [v24 writers];
        v28 = [v27 count];

        if (v28)
        {
          if (v56)
          {
            *v56 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-106 description:@"No writers allowed for 3rd Party Graphs"];
          }

          v51 = __PLSLogSharedInstance();
          v45 = @"No writers allowed for 3rd Party Graphs";
          v5 = v57;
          v18 = v55;
          v58 = v51;
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v72 = @"No writers allowed for 3rd Party Graphs";
LABEL_64:
            _os_log_impl(&dword_25EA3A000, v51, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }

          goto LABEL_52;
        }

        v63 = 0u;
        v64 = 0u;
        v61 = 0u;
        v62 = 0u;
        v29 = [v24 readers];
        v60 = [v29 countByEnumeratingWithState:&v61 objects:v69 count:16];
        if (!v60)
        {
          goto LABEL_34;
        }

        v30 = *v62;
        v58 = v29;
        while (2)
        {
          for (i = 0; i != v60; ++i)
          {
            if (*v62 != v30)
            {
              objc_enumerationMutation(v29);
            }

            v32 = *(*(&v61 + 1) + 8 * i);
            v33 = [v32 input];
            v34 = [v33 resourceKey];
            if ([v34 isEqualToString:*v22])
            {
              goto LABEL_27;
            }

            v35 = v30;
            v36 = v22;
            v37 = [v32 input];
            v38 = [v37 resourceKey];
            if ([v38 isEqualToString:PLSResourceKeyGCIMULeft[0]])
            {

              v22 = v36;
              v30 = v35;
LABEL_27:

              goto LABEL_29;
            }

            v39 = [v32 input];
            v40 = [v39 resourceKey];
            v59 = [v40 containsString:PLSResourceKeyAccessoryTrackingPrefix[0]];

            v29 = v58;
            v22 = v36;
            v30 = v35;
            if ((v59 & 1) == 0)
            {
              v46 = MEMORY[0x277CCACA8];
              v47 = [v32 input];
              v48 = [v47 resourceKey];
              v45 = [v46 stringWithFormat:@"Unsupported input for 3rd party reader session: %@", v48];

              if (v56)
              {
                *v56 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-107 description:v45];
              }

              v44 = __PLSLogSharedInstance();
              v5 = v57;
              v18 = v55;
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v72 = v45;
LABEL_50:
                _os_log_impl(&dword_25EA3A000, v44, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
              }

LABEL_51:

              goto LABEL_52;
            }

LABEL_29:
            v41 = [v32 input];
            if ([v41 type] == 2)
            {
            }

            else
            {
              v42 = [v32 input];
              v43 = [v42 type];

              if (v43 != 1)
              {
                if (v56)
                {
                  *v56 = [MEMORY[0x277CCA9B8] polarisErrorWithCode:-107 description:@"Readers can only have PSInputTypePullOptional or PSInputTypePull input type"];
                }

                v44 = __PLSLogSharedInstance();
                v45 = @"Readers can only have PSInputTypePullOptional or PSInputTypePull input type";
                v5 = v57;
                v18 = v55;
                if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v72 = @"Readers can only have PSInputTypePullOptional or PSInputTypePull input type";
                  goto LABEL_50;
                }

                goto LABEL_51;
              }
            }
          }

          v60 = [v29 countByEnumeratingWithState:&v61 objects:v69 count:16];
          if (v60)
          {
            continue;
          }

          break;
        }

LABEL_34:

        v23 = v54 + 1;
        v5 = v57;
        v18 = v55;
        v21 = v52;
      }

      while (v54 + 1 != v53);
      v20 = [(__CFString *)v55 countByEnumeratingWithState:&v65 objects:v70 count:16];
      v17 = 1;
      if (!v20)
      {
LABEL_54:

        goto LABEL_55;
      }
    }
  }

LABEL_10:
  v17 = 0;
LABEL_55:

  v49 = *MEMORY[0x277D85DE8];
  return v17;
}

- (void)transitionExecutorForBlock:(id)a3
{
  v4 = a3;
  v5 = [(PSTransitionManager3rdPartyReader *)self compiler];
  [v5 createReadersForTransitionBlock:v4];

  v6 = [(PSTransitionManager3rdPartyReader *)self compiler];
  [v6 destroyReadersForTransitionBlock:v4];
}

- (void)setExecutionSessionDelegate:(id)a3 withQueue:(id)a4
{
  v6 = a3;
  transitionCallbackQueue = a4;
  v11 = transitionCallbackQueue;
  if (!transitionCallbackQueue)
  {
    transitionCallbackQueue = self->_transitionCallbackQueue;
  }

  v8 = transitionCallbackQueue;
  executionSessionDelegateQueue = self->_executionSessionDelegateQueue;
  self->_executionSessionDelegateQueue = v8;

  executionSessionDelegate = self->_executionSessionDelegate;
  self->_executionSessionDelegate = v6;
}

- (void)deliverDynamicResourcesAvailableNotification:(id)a3
{
  v4 = a3;
  v5 = [(PSTransitionManager3rdPartyReader *)self executionSessionDelegate];
  if (!v5 || (v6 = v5, [(PSTransitionManager3rdPartyReader *)self executionSessionDelegateQueue], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v11 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      v12 = "The 3PR execution session delegate or dispatch queue is invalid";
LABEL_9:
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_ERROR, v12, location, 2u);
    }

LABEL_10:

    goto LABEL_11;
  }

  v8 = [(PSTransitionManager3rdPartyReader *)self executionSessionDelegate];
  v9 = [v8 conformsToProtocol:&unk_2870DB620];

  if ((v9 & 1) == 0)
  {
    v11 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      v12 = "The 3PR execution session delegate doesn't conforms to protocol PS3PRSessionDelegate";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  objc_initWeak(location, self);
  v10 = [(PSTransitionManager3rdPartyReader *)self executionSessionDelegateQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __82__PSTransitionManager3rdPartyReader_deliverDynamicResourcesAvailableNotification___block_invoke;
  v13[3] = &unk_279A48120;
  objc_copyWeak(&v15, location);
  v14 = v4;
  dispatch_async(v10, v13);

  objc_destroyWeak(&v15);
  objc_destroyWeak(location);
LABEL_11:
}

void __82__PSTransitionManager3rdPartyReader_deliverDynamicResourcesAvailableNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained executionSessionDelegate];
    [v3 dynamicResourcesAreAvailable:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (void)deliverDynamicResourcesNoLongerAvailableNotification:(id)a3
{
  v4 = a3;
  v5 = [(PSTransitionManager3rdPartyReader *)self executionSessionDelegate];
  if (!v5 || (v6 = v5, [(PSTransitionManager3rdPartyReader *)self executionSessionDelegateQueue], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, !v7))
  {
    v11 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      v12 = "The 3PR execution session delegate or dispatch queue is invalid";
LABEL_9:
      _os_log_impl(&dword_25EA3A000, v11, OS_LOG_TYPE_ERROR, v12, location, 2u);
    }

LABEL_10:

    goto LABEL_11;
  }

  v8 = [(PSTransitionManager3rdPartyReader *)self executionSessionDelegate];
  v9 = [v8 conformsToProtocol:&unk_2870DB620];

  if ((v9 & 1) == 0)
  {
    v11 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      v12 = "The execution session delegate doesn't conforms to protocol PS3PRSessionDelegate";
      goto LABEL_9;
    }

    goto LABEL_10;
  }

  objc_initWeak(location, self);
  v10 = [(PSTransitionManager3rdPartyReader *)self executionSessionDelegateQueue];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __90__PSTransitionManager3rdPartyReader_deliverDynamicResourcesNoLongerAvailableNotification___block_invoke;
  v13[3] = &unk_279A48120;
  objc_copyWeak(&v15, location);
  v14 = v4;
  dispatch_async(v10, v13);

  objc_destroyWeak(&v15);
  objc_destroyWeak(location);
LABEL_11:
}

void __90__PSTransitionManager3rdPartyReader_deliverDynamicResourcesNoLongerAvailableNotification___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (WeakRetained)
  {
    v4 = WeakRetained;
    v3 = [WeakRetained executionSessionDelegate];
    [v3 dynamicResourcesAreNoLongerAvailable:*(a1 + 32)];

    WeakRetained = v4;
  }
}

- (PSExecutionSession3rdPartyReader)executionSession
{
  WeakRetained = objc_loadWeakRetained(&self->_executionSession);

  return WeakRetained;
}

- (uint64_t)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  *a1 = 0;
  asprintf(a1, "Transition Manager was deallocated while graphs were still running.");
  v2 = __PLSLogSharedInstance();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_FAULT))
  {
    v9 = 136315394;
    v10 = "[PSTransitionManager3rdPartyReader dealloc]";
    v11 = 1024;
    v12 = 50;
    _os_log_impl(&dword_25EA3A000, v2, OS_LOG_TYPE_FAULT, "%s:%d Transition Manager was deallocated while graphs were still running.", &v9, 0x12u);
  }

  v3 = OSLogFlushBuffers();
  if (v3)
  {
    v4 = v3;
    v5 = __PLSLogSharedInstance();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "[PSTransitionManager3rdPartyReader dealloc]";
      v11 = 1024;
      v12 = v4;
      _os_log_impl(&dword_25EA3A000, v5, OS_LOG_TYPE_ERROR, "%s() failed to flush buffers with error code: %d", &v9, 0x12u);
    }
  }

  else
  {
    usleep(0x1E8480u);
  }

  v6 = *a1;
  v7 = abort_with_reason();
  return [PSDaemonCommsStream initWithKey:v7];
}

@end