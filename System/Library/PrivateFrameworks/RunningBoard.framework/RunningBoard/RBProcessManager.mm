@interface RBProcessManager
+ (id)stateApplicationQueue;
- (BOOL)_canTerminateProcess:(id)a3 withContext:(id)a4 error:(id *)a5;
- (NSString)debugDescription;
- (NSString)stateCaptureTitle;
- (RBProcessManager)init;
- (RBProcessManager)initWithBundlePropertiesManager:(id)a3 entitlementManager:(id)a4 jetsamPropertytManager:(id)a5 timeProvider:(id)a6 historialStatistics:(id)a7 delegate:(id)a8;
- (id)_executeLaunchRequest:(id)a3 withError:(id *)a4;
- (id)_getLifecycleQueueForIdentity:(id)a3;
- (id)_lifecycleQueue_addProcessWithInstance:(id)a3 properties:(id)a4;
- (id)_processForIdentifier:(id)a3;
- (id)_processForIdentifier:(id)a3 withAuditToken:(id)a4 forceStartTracking:(BOOL)a5;
- (id)_processForInstance:(id)a3;
- (id)_resolveProcessWithIdentifier:(id)a3 auditToken:(id)a4 properties:(id *)a5;
- (id)busyExtensionInstancesFromSet:(id)a3;
- (id)processForAuditToken:(id)a3;
- (id)processForIdentifier:(id)a3;
- (id)processForIdentifierWithoutStartingTracking:(id)a3;
- (id)processForInstance:(id)a3;
- (id)processesMatchingPredicate:(id)a3;
- (void)_enqueueGuaranteedRunningLaunchForIdentity:(id)a3 atTime:(double)a4;
- (void)_executeLifecycleEventForIdentity:(id)a3 sync:(BOOL)a4 withBlock:(id)a5;
- (void)_releaseLifecycleQueueForIdentity:(id)a3;
- (void)_removeProcess:(id)a3;
- (void)applySystemState:(id)a3;
- (void)didUpdateProcessStates:(id)a3 completion:(id)a4;
- (void)executeLaunchRequest:(id)a3 withCompletion:(id)a4;
- (void)executeTerminateRequest:(id)a3 completion:(id)a4;
- (void)start;
@end

@implementation RBProcessManager

+ (id)stateApplicationQueue
{
  if (stateApplicationQueue_onceToken != -1)
  {
    +[RBProcessManager stateApplicationQueue];
  }

  v3 = stateApplicationQueue_queue;

  return v3;
}

uint64_t __41__RBProcessManager_stateApplicationQueue__block_invoke()
{
  stateApplicationQueue_queue = [MEMORY[0x277D47028] createSyncingQueue:@"RBProcessManagerStateApplicator"];

  return MEMORY[0x2821F96F8]();
}

- (RBProcessManager)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RBProcessManager.m" lineNumber:356 description:@"-init is not allowed on RBProcessManager"];

  return 0;
}

- (RBProcessManager)initWithBundlePropertiesManager:(id)a3 entitlementManager:(id)a4 jetsamPropertytManager:(id)a5 timeProvider:(id)a6 historialStatistics:(id)a7 delegate:(id)a8
{
  v15 = a3;
  v45 = a4;
  v44 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v46.receiver = self;
  v46.super_class = RBProcessManager;
  v19 = [(RBProcessManager *)&v46 init];
  v20 = v19;
  if (v19)
  {
    objc_storeStrong(&v19->_bundlePropertiesManager, a3);
    objc_storeStrong(&v20->_entitlementManager, a4);
    objc_storeStrong(&v20->_delegate, a8);
    v20->_pendingExitBlockLock._os_unfair_lock_opaque = 0;
    v20->_lock._os_unfair_lock_opaque = 0;
    v21 = objc_alloc_init(RBPersonaManager);
    v22 = [[RBContainerManager alloc] initWithPersonaManager:v21, v44, v45];
    objc_storeStrong(&v20->_jetsamPropertytManager, a5);
    objc_storeStrong(&v20->_historicalStatistics, a7);
    v23 = [[RBPrewarmManager alloc] initWithDelegate:v20 timeProvider:v16];
    prewarmManager = v20->_prewarmManager;
    v20->_prewarmManager = v23;

    v25 = [RBLaunchdJobManager alloc];
    v26 = +[RBLaunchdInterface interface];
    v27 = [(RBLaunchdJobManager *)v25 initWithLaunchdInterface:v26 personaManager:v21 containerManager:v22 bundlePropertiesManager:v15];
    jobManager = v20->_jobManager;
    v20->_jobManager = v27;

    v29 = [[RBLaunchManager alloc] initWithJobManager:v20->_jobManager timeProvider:v16 delegate:v20];
    launchManager = v20->_launchManager;
    v20->_launchManager = v29;

    v31 = +[RBProcessIndex index];
    processIndex = v20->_processIndex;
    v20->_processIndex = v31;

    v33 = [RBProcessIndex indexWithCapacity:32];
    processGraveyard = v20->_processGraveyard;
    v20->_processGraveyard = v33;

    v35 = objc_alloc_init(RBProcessMap);
    processState = v20->_processState;
    v20->_processState = v35;

    v37 = [MEMORY[0x277CBEB38] dictionary];
    identityToPendingExitBlock = v20->_identityToPendingExitBlock;
    v20->_identityToPendingExitBlock = v37;

    os_unfair_lock_lock(&v20->_lock);
    v39 = [MEMORY[0x277CBEB38] dictionary];
    identityToProcessLifecycleQueue = v20->_identityToProcessLifecycleQueue;
    v20->_identityToProcessLifecycleQueue = v39;

    v41 = [MEMORY[0x277CCA940] set];
    lifecycleQueuesInUse = v20->_lifecycleQueuesInUse;
    v20->_lifecycleQueuesInUse = v41;

    os_unfair_lock_unlock(&v20->_lock);
  }

  return v20;
}

- (NSString)debugDescription
{
  os_unfair_lock_lock(&self->_lock);
  v3 = self->_systemState;
  os_unfair_lock_unlock(&self->_lock);
  v4 = objc_alloc(MEMORY[0x277CCACA8]);
  v5 = [objc_opt_class() description];
  v6 = [(RBProcessMap *)self->_processState dictionary];
  v7 = [v6 entriesToStringWithIndent:1 debug:1];
  v8 = [(RBProcessIndex *)self->_processIndex allProcesses];
  v9 = [v8 componentsJoinedByString:{@", \n\t"}];
  v10 = [v4 initWithFormat:@"<%@| system state:%@ process states:{\n%@\t} processes:[%@\n\t]>", v5, v3, v7, v9];

  return v10;
}

- (void)start
{
  activity_block[0] = MEMORY[0x277D85DD0];
  activity_block[1] = 3221225472;
  activity_block[2] = __25__RBProcessManager_start__block_invoke;
  activity_block[3] = &unk_279B32CB0;
  activity_block[4] = self;
  _os_activity_initiate(&dword_262485000, "state recovery", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
}

void __25__RBProcessManager_start__block_invoke(uint64_t a1)
{
  v25 = *MEMORY[0x277D85DE8];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v2 = [*(*(a1 + 32) + 8) synchronizeJobs];
  v3 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v19;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v19 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v18 + 1) + 8 * i);
        v8 = rbs_process_log();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v23 = v7;
          _os_log_impl(&dword_262485000, v8, OS_LOG_TYPE_DEFAULT, "Reestablishing with %{public}@...", buf, 0xCu);
        }

        v9 = [v7 identifier];
        v10 = +[RBLaunchdProperties propertiesForPid:](RBLaunchdProperties, "propertiesForPid:", [v9 pid]);

        v11 = [*(a1 + 32) _lifecycleQueue_addProcessWithInstance:v7 properties:v10];
        if (!v11)
        {
          [*(*(a1 + 32) + 8) removeJobWithInstance:v7 error:0];
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v18 objects:v24 count:16];
    }

    while (v4);
  }

  v12 = *(a1 + 32);
  v13 = *(v12 + 64);
  v14 = MEMORY[0x277CBEB98];
  v15 = [*(v12 + 88) allProcesses];
  v16 = [v14 setWithArray:v15];
  [v13 processManager:v12 didReconnectProcesses:v16];

  v17 = *MEMORY[0x277D85DE8];
}

- (id)processForAuditToken:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277D46F50] identifierWithPid:{objc_msgSend(v4, "pid")}];
  if (v5)
  {
    v6 = [(RBProcessManager *)self _processForIdentifier:v5 withAuditToken:v4 forceStartTracking:1];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)processForIdentifier:(id)a3
{
  v4 = [MEMORY[0x277D46F50] identifierForIdentifier:a3];
  if (v4)
  {
    v5 = [(RBProcessManager *)self _processForIdentifier:v4 withAuditToken:0 forceStartTracking:1];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)processForIdentifierWithoutStartingTracking:(id)a3
{
  v4 = [MEMORY[0x277D46F50] identifierForIdentifier:a3];
  if (v4)
  {
    v5 = [(RBProcessManager *)self _processForIdentifier:v4 withAuditToken:0 forceStartTracking:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_processForIdentifier:(id)a3 withAuditToken:(id)a4 forceStartTracking:(BOOL)a5
{
  v5 = a5;
  v58 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__5;
  v54 = __Block_byref_object_dispose__5;
  v55 = [(RBProcessManager *)self _processForIdentifier:v8];
  v10 = v51[5];
  if (!v10)
  {
    v49 = 0;
    v17 = [(RBProcessManager *)self _resolveProcessWithIdentifier:v8 auditToken:v9 properties:&v49];
    v18 = v49;
    v19 = [v17 identity];
    if (v19)
    {
      if (v5)
      {
        v44[0] = MEMORY[0x277D85DD0];
        v44[1] = 3221225472;
        v44[2] = __76__RBProcessManager__processForIdentifier_withAuditToken_forceStartTracking___block_invoke;
        v44[3] = &unk_279B33BA0;
        v48 = &v50;
        v44[4] = self;
        v45 = v8;
        v46 = v17;
        v47 = v18;
        [(RBProcessManager *)self _executeLifecycleEventForIdentity:v19 sync:1 withBlock:v44];

LABEL_15:
        v30 = v51[5];
LABEL_34:

        goto LABEL_35;
      }

      v20 = [MEMORY[0x277D46ED8] taskNameForPID:{objc_msgSend(v17, "rbs_pid")}];
      v21 = [v20 auditToken];
      v22 = v21;
      if (v20 && v21)
      {
        v23 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v18, "hostPid")}];
        v43 = [(RBProcessManager *)self processForIdentifierWithoutStartingTracking:v23];

        v24 = [(RBBundlePropertiesManaging *)self->_bundlePropertiesManager propertiesForIdentity:v19 identifier:v8];
        jetsamPropertytManager = self->_jetsamPropertytManager;
        v26 = [v8 rbs_pid];
        [v22 realToken];
        v27 = [(RBJetsamPropertyManaging *)jetsamPropertytManager jetsamPropertiesForProcess:v26 identity:v19 bundleProperties:v24 isPlatformBinary:RBSAuditTokenRepresentsPlatformBinary()];
        v28 = [[RBProcess alloc] _initThinWithInstance:v17 auditToken:v22 bundleProperties:v24 jetsamProperties:v27 hostProcess:v43 properties:v18];
        v29 = v51[5];
        v51[5] = v28;

        goto LABEL_15;
      }

      v40 = rbs_process_log();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        [RBProcessManager _processForIdentifier:withAuditToken:forceStartTracking:];
      }
    }

    v30 = 0;
    goto LABEL_34;
  }

  if (v9)
  {
    v11 = [v10 auditToken];
    v12 = v11;
    if (v11 == v9)
    {
    }

    else if (!v11 || (v13 = [v9 isEqual:v11], v12, (v13 & 1) == 0))
    {
      [v9 realToken];
      v14 = audit_token_to_auid(&atoken);
      v15 = [v51[5] auditToken];
      v16 = v15;
      if (v15)
      {
        [v15 realToken];
      }

      else
      {
        memset(&atoken, 0, sizeof(atoken));
      }

      v31 = v14 == audit_token_to_auid(&atoken);

      if (!v31)
      {
        v32 = rbs_process_log();
        if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
        {
          v33 = [v51[5] auditToken];
          [(RBProcessManager *)v33 _processForIdentifier:v9 withAuditToken:buf forceStartTracking:v32];
        }
      }

      [v9 realToken];
      v34 = audit_token_to_euid(&atoken);
      v35 = [v51[5] auditToken];
      v36 = v35;
      if (v35)
      {
        [v35 realToken];
      }

      else
      {
        memset(&atoken, 0, sizeof(atoken));
      }

      v37 = v34 == audit_token_to_euid(&atoken);

      if (!v37)
      {
        v38 = rbs_process_log();
        if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
        {
          v39 = [v51[5] auditToken];
          atoken.val[0] = 138543618;
          *&atoken.val[1] = v39;
          LOWORD(atoken.val[3]) = 2114;
          *(&atoken.val[3] + 2) = v9;
          _os_log_impl(&dword_262485000, v38, OS_LOG_TYPE_DEFAULT, "EUID of process has changed from %{public}@ to %{public}@", &atoken, 0x16u);
        }
      }

      [v51[5] setAuditToken:v9];
      [(RBEntitlementManaging *)self->_entitlementManager purgeEntitlementsForProcess:v51[5]];
    }
  }

  v30 = v51[5];
LABEL_35:
  _Block_object_dispose(&v50, 8);

  v41 = *MEMORY[0x277D85DE8];

  return v30;
}

void __76__RBProcessManager__processForIdentifier_withAuditToken_forceStartTracking___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) _processForIdentifier:*(a1 + 40)];
  v3 = *(*(a1 + 64) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  if (!*(*(*(a1 + 64) + 8) + 40))
  {
    v5 = [*(a1 + 32) _lifecycleQueue_addProcessWithInstance:*(a1 + 48) properties:*(a1 + 56)];
    v6 = *(*(a1 + 64) + 8);
    v7 = *(v6 + 40);
    *(v6 + 40) = v5;

    MEMORY[0x2821F96F8]();
  }
}

- (id)processForInstance:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(RBProcessManager *)self processForIdentifier:v5];

  v7 = [v6 instance];
  v8 = [v7 isEqual:v4];

  if ((v8 & 1) == 0)
  {

    v6 = 0;
  }

  return v6;
}

- (id)processesMatchingPredicate:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 processIdentifiers];
  if (v5)
  {
    v6 = [MEMORY[0x277CBEB58] set];
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
    if (!v8)
    {
      goto LABEL_30;
    }

    v9 = v8;
    v31 = v5;
    v10 = *v37;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v37 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [(RBProcessManager *)self processForIdentifierWithoutStartingTracking:*(*(&v36 + 1) + 8 * i)];
        v13 = v12;
        if (v12)
        {
          v14 = [v12 handle];
          v15 = [v4 matchesProcess:v14];

          if (v15)
          {
            [v6 addObject:v13];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v36 objects:v41 count:16];
    }

    while (v9);
    goto LABEL_29;
  }

  v7 = [v4 processIdentity];
  if (!v7)
  {
    v31 = 0;
    v6 = [MEMORY[0x277CBEB58] set];
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v21 = [(RBProcessIndex *)self->_processIndex allProcesses];
    v22 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v33;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v33 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v32 + 1) + 8 * j);
          v27 = [v26 handle];
          v28 = [v4 matchesProcess:v27];

          if (v28)
          {
            [v6 addObject:v26];
          }
        }

        v23 = [v21 countByEnumeratingWithState:&v32 objects:v40 count:16];
      }

      while (v23);
    }

LABEL_29:
    v5 = v31;
    goto LABEL_30;
  }

  v16 = [(RBProcessManager *)self processForIdentity:v7];
  v17 = v16;
  if (v16 && ([v16 handle], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v4, "matchesProcess:", v18), v18, v19))
  {
    v20 = [MEMORY[0x277CBEB98] setWithObject:v17];
  }

  else
  {
    v20 = [MEMORY[0x277CBEB98] set];
  }

  v6 = v20;

LABEL_30:
  v29 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)executeLaunchRequest:(id)a3 withCompletion:(id)a4
{
  v32 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (!v7)
  {
    [RBProcessManager executeLaunchRequest:withCompletion:];
  }

  v30 = 0;
  v8 = [(RBProcessManager *)self _executeLaunchRequest:v6 withError:&v30];
  v9 = v30;
  v10 = v9;
  if (v8)
  {
    v24 = v9;
    v25 = v7;
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = [v6 context];
    v12 = [v11 managedEndpointLaunchIdentifiers];

    v13 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = 0;
      v16 = *v27;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v27 != v16)
          {
            objc_enumerationMutation(v12);
          }

          v18 = *(*(&v26 + 1) + 8 * i);
          v19 = [v8 managedEndpointByLaunchIdentifier];
          v20 = [v19 objectForKey:v18];

          if (v20)
          {
            if (v15)
            {
              [v15 setObject:v20 forKey:v18];
            }

            else
            {
              v15 = [MEMORY[0x277CBEB38] dictionaryWithObject:v20 forKey:v18];
            }
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v14);
    }

    else
    {
      v15 = 0;
    }

    v21 = [v8 handle];
    v22 = [v15 copy];
    v10 = v24;
    v7 = v25;
    (*(v25 + 2))(v25, v21, v22, v24);
  }

  else
  {
    (*(v7 + 2))(v7, 0, 0, v9);
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (id)_executeLaunchRequest:(id)a3 withError:(id *)a4
{
  v6 = a3;
  if (!v6)
  {
    [RBProcessManager _executeLaunchRequest:withError:];
  }

  v7 = [v6 context];
  v8 = [v7 identity];
  v9 = v8;
  if (v7 && v8)
  {
    v10 = [v7 requiredExistingProcess];
    if (v10)
    {
LABEL_6:
      v11 = [(RBProcessMap *)self->_processState valueForIdentity:v9];
      v12 = [v7 initialRole];
      if (v12 < [(RBSystemState *)v11 role])
      {
        [v7 setInitialRole:{-[RBSystemState role](v11, "role")}];
      }

      v13 = [v7 hostPid];
      if (v13 >= 1)
      {
        v14 = [MEMORY[0x277CCABB0] numberWithInt:v13];
        v15 = [(RBProcessManager *)self processForIdentifier:v14];

        [v7 setHostProcess:v15];
      }

      v40 = 0;
      v41 = &v40;
      v42 = 0x3032000000;
      v43 = __Block_byref_object_copy__5;
      v44 = __Block_byref_object_dispose__5;
      v45 = 0;
      v34 = 0;
      v35 = &v34;
      v36 = 0x3032000000;
      v37 = __Block_byref_object_copy__5;
      v38 = __Block_byref_object_dispose__5;
      v39 = 0;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __52__RBProcessManager__executeLaunchRequest_withError___block_invoke;
      v28[3] = &unk_279B33BC8;
      v28[4] = self;
      v29 = v9;
      v30 = v10;
      v32 = &v40;
      v33 = &v34;
      v31 = v7;
      [(RBProcessManager *)self _executeLifecycleEventForIdentity:v29 sync:1 withBlock:v28];
      if (a4)
      {
        *a4 = v41[5];
      }

      v16 = v35[5];

      _Block_object_dispose(&v34, 8);
      _Block_object_dispose(&v40, 8);

LABEL_23:
      goto LABEL_24;
    }

    os_unfair_lock_lock(&self->_lock);
    v11 = self->_systemState;
    os_unfair_lock_unlock(&self->_lock);
    v47[0] = 0;
    v21 = [v7 _launchAllowedBySystemState:v11 error:v47];
    v22 = v47[0];
    v23 = v22;
    if (v21)
    {
      v46 = v22;
      v24 = [v7 _passesRegulatoryChecksWithError:&v46];
      v25 = v46;

      if (v24)
      {

        goto LABEL_6;
      }

      v23 = v25;
    }

    if (a4)
    {
      v26 = v23;
      *a4 = v23;
    }

    v16 = 0;
    goto LABEL_23;
  }

  if (a4)
  {
    v17 = *MEMORY[0x277D47088];
    v18 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    [v18 setObject:@"Launch prevented due to invalid parameters" forKey:*MEMORY[0x277CCA470]];
    v19 = [MEMORY[0x277CCA9B8] errorWithDomain:v17 code:1 userInfo:v18];

    v20 = v19;
    v16 = 0;
    *a4 = v19;
  }

  else
  {
    v16 = 0;
  }

LABEL_24:

  return v16;
}

void __52__RBProcessManager__executeLaunchRequest_withError___block_invoke(void *a1)
{
  v37 = *MEMORY[0x277D85DE8];
  v2 = [*(a1[4] + 88) processForIdentity:a1[5]];
  v3 = v2;
  if (a1[6])
  {
    if (v2 && ([v2 identifier], v4 = objc_claimAutoreleasedReturnValue(), v5 = objc_msgSend(v4, "isEqual:", a1[6]), v4, v5))
    {
      v6 = rbs_process_log();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        v7 = a1[5];
        *buf = 138543618;
        v32 = v7;
        v33 = 2114;
        v34 = v3;
        _os_log_impl(&dword_262485000, v6, OS_LOG_TYPE_INFO, "%{public}@ is already running as %{public}@ which matches the requiredExistingProcess", buf, 0x16u);
      }

      v8 = *MEMORY[0x277D47088];
      v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
      [v9 setObject:@"The process was already running as expected." forKey:*MEMORY[0x277CCA470]];
      v10 = [MEMORY[0x277CCA9B8] errorWithDomain:v8 code:2 userInfo:v9];

      v11 = *(a1[8] + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;

      v13 = *(a1[9] + 8);
      v14 = v3;
      v15 = *(v13 + 40);
      *(v13 + 40) = v14;
    }

    else
    {
      v16 = rbs_process_log();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        v17 = a1[5];
        v18 = a1[6];
        *buf = 138543874;
        v32 = v17;
        v33 = 2114;
        v34 = v3;
        v35 = 2112;
        v36 = v18;
        _os_log_impl(&dword_262485000, v16, OS_LOG_TYPE_INFO, "%{public}@ is already running as %{public}@ which doesn't match requiredExistingProcess of %@", buf, 0x20u);
      }

      v19 = [MEMORY[0x277CCA9B8] rbs_errorClientNotAuthorized];
      v20 = *(a1[8] + 8);
      v15 = *(v20 + 40);
      *(v20 + 40) = v19;
    }
  }

  else
  {
    v21 = a1[5];
    v22 = *(a1[4] + 56);
    v23 = a1[7];
    v30 = 0;
    v24 = [v22 executeLaunchRequest:v23 existingProcess:v3 requestIdentity:v21 withError:&v30];
    v25 = v30;
    v26 = *(a1[9] + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v24;

    v28 = *(a1[8] + 8);
    v15 = *(v28 + 40);
    *(v28 + 40) = v25;
  }

  v29 = *MEMORY[0x277D85DE8];
}

- (BOOL)_canTerminateProcess:(id)a3 withContext:(id)a4 error:(id *)a5
{
  v28 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = [v8 identity];
  v11 = [(RBProcessMap *)self->_processState valueForIdentity:v10];
  v12 = [v9 maximumTerminationResistance];
  if (v12 && [v11 terminationResistance] > v12)
  {
    if (a5)
    {
      v13 = *MEMORY[0x277D47088];
      v14 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
      [v14 setObject:@"Target process has a higher termination resistance than the termination context" forKey:*MEMORY[0x277CCA470]];
      v15 = [MEMORY[0x277CCA9B8] errorWithDomain:v13 code:4 userInfo:v14];

      v16 = v15;
      *a5 = v15;
    }

    v17 = rbs_process_log();
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_15;
    }

    v26 = 138543362;
    v27 = v8;
    v18 = "Termination request for %{public}@ failed due to termination resistance";
    goto LABEL_14;
  }

  if (![v9 preventIfBeingDebugged] || (objc_msgSend(v8, "isBeingPtraced") & 1) == 0 && !objc_msgSend(v11, "isBeingDebugged"))
  {
    v23 = 1;
    goto LABEL_17;
  }

  if (a5)
  {
    v19 = *MEMORY[0x277D47088];
    v20 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
    [v20 setObject:@"Target process is being debugged and termination context forbids request" forKey:*MEMORY[0x277CCA470]];
    v21 = [MEMORY[0x277CCA9B8] errorWithDomain:v19 code:4 userInfo:v20];

    v22 = v21;
    *a5 = v21;
  }

  v17 = rbs_process_log();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138543362;
    v27 = v8;
    v18 = "Termination request for %{public}@ failed due to target being debugged";
LABEL_14:
    _os_log_impl(&dword_262485000, v17, OS_LOG_TYPE_DEFAULT, v18, &v26, 0xCu);
  }

LABEL_15:

  v23 = 0;
LABEL_17:

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

- (void)executeTerminateRequest:(id)a3 completion:(id)a4
{
  v96 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  if (!v5)
  {
    [RBProcessManager executeTerminateRequest:completion:];
  }

  v67 = [v5 context];
  v7 = [v5 targetsAllManagedProcesses];
  v8 = [v5 predicate];
  v9 = rbs_process_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"all-managed";
    if (!v7)
    {
      v10 = v8;
    }

    *buf = 138543362;
    v90 = v10;
    _os_log_impl(&dword_262485000, v9, OS_LOG_TYPE_DEFAULT, "Executing termination request for: %{public}@", buf, 0xCu);
  }

  if (v8)
  {
    v11 = 1;
  }

  else
  {
    v11 = v7;
  }

  if (!v67 || (v11 & 1) == 0)
  {
    v20 = rbs_process_log();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      [RBProcessManager executeTerminateRequest:completion:];
    }

    if (v6)
    {
      v21 = *MEMORY[0x277D47088];
      v22 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
      [v22 setObject:@"Invalid termination context" forKey:*MEMORY[0x277CCA470]];
      v12 = [MEMORY[0x277CCA9B8] errorWithDomain:v21 code:1 userInfo:v22];

      v6[2](v6, 0, v12);
      goto LABEL_82;
    }

    goto LABEL_83;
  }

  v12 = [MEMORY[0x277CBEB58] set];
  v70 = v12;
  if (v7)
  {
    v87 = 0uLL;
    v88 = 0uLL;
    v85 = 0uLL;
    v86 = 0uLL;
    v13 = [(RBProcessIndex *)self->_processIndex allProcesses];
    v14 = [v13 countByEnumeratingWithState:&v85 objects:v95 count:16];
    if (v14)
    {
      v15 = v14;
      v65 = v7;
      v16 = v8;
      v17 = *v86;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v86 != v17)
          {
            objc_enumerationMutation(v13);
          }

          v19 = *(*(&v85 + 1) + 8 * i);
          if ([v19 isReported])
          {
            [v12 addObject:v19];
          }
        }

        v15 = [v13 countByEnumeratingWithState:&v85 objects:v95 count:16];
      }

      while (v15);
LABEL_37:
      v8 = v16;
      v7 = v65;
    }
  }

  else
  {
    v83 = 0uLL;
    v84 = 0uLL;
    v81 = 0uLL;
    v82 = 0uLL;
    v13 = [(RBProcessIndex *)self->_processIndex allProcesses];
    v23 = [v13 countByEnumeratingWithState:&v81 objects:v94 count:16];
    if (v23)
    {
      v24 = v23;
      v65 = 0;
      v16 = v8;
      v61 = v6;
      v25 = *v82;
      do
      {
        for (j = 0; j != v24; ++j)
        {
          if (*v82 != v25)
          {
            objc_enumerationMutation(v13);
          }

          v27 = *(*(&v81 + 1) + 8 * j);
          v28 = [v27 handle];
          v29 = [(__CFString *)v16 matchesProcess:v28];

          v12 = v70;
          if (v29)
          {
            [v70 addObject:v27];
          }
        }

        v24 = [v13 countByEnumeratingWithState:&v81 objects:v94 count:16];
      }

      while (v24);
      v6 = v61;
      goto LABEL_37;
    }
  }

  v30 = rbs_process_log();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
  {
    v31 = [v12 count];
    *buf = 134217984;
    v90 = v31;
    _os_log_impl(&dword_262485000, v30, OS_LOG_TYPE_DEFAULT, "Found %lu processes to terminate", buf, 0xCu);
  }

  if (![v12 count])
  {
    v40 = rbs_process_log();
    if (os_log_type_enabled(v40, OS_LOG_TYPE_DEBUG))
    {
      [RBProcessManager executeTerminateRequest:completion:];
    }

    if (v6)
    {
      v41 = *MEMORY[0x277D47088];
      v42 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
      [v42 setObject:@"No such process found" forKey:*MEMORY[0x277CCA470]];
      v32 = [MEMORY[0x277CCA9B8] errorWithDomain:v41 code:3 userInfo:v42];

      v6[2](v6, 0, v32);
      goto LABEL_81;
    }

    goto LABEL_82;
  }

  if ([v67 reportType] == 2 || objc_msgSend(v67, "reportType") == 3)
  {
    if ([v12 count] == 1)
    {
      v32 = [v12 anyObject];
      v80 = 0;
      v33 = [(RBProcessManager *)self _canTerminateProcess:v32 withContext:v67 error:&v80];
      v34 = v80;
      if (v33)
      {
        v35 = [v67 reportType];
        v36 = [v67 explanation];
        v69 = [v67 exceptionDomain];
        v37 = [v67 exceptionCode];
        v38 = [v67 additionalPayload];
        v76[0] = MEMORY[0x277D85DD0];
        v76[1] = 3221225472;
        v76[2] = __55__RBProcessManager_executeTerminateRequest_completion___block_invoke;
        v76[3] = &unk_279B33BF0;
        v77 = v67;
        v78 = v32;
        v79 = v6;
        v39 = v37;
        v12 = v70;
        [v78 collectDiagnostic:v35 description:v36 domain:v69 code:v39 additionalPayload:v38 completion:v76];
      }

      else if (v6)
      {
        v6[2](v6, 0, v34);
      }

      goto LABEL_81;
    }

    v43 = rbs_process_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      [RBProcessManager executeTerminateRequest:completion:];
    }

    [v67 setReportType:1];
  }

  v60 = v8;
  v62 = v6;
  v59 = v5;
  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v44 = v12;
  v45 = [v44 countByEnumeratingWithState:&v72 objects:v93 count:16];
  if (!v45)
  {
    v32 = 0;
    v66 = 1;
    goto LABEL_75;
  }

  v46 = v45;
  v47 = v7;
  v32 = 0;
  v48 = *v73;
  v63 = *MEMORY[0x277CCA470];
  v64 = *MEMORY[0x277D47088];
  v66 = 1;
  v49 = v67;
  do
  {
    for (k = 0; k != v46; ++k)
    {
      if (*v73 != v48)
      {
        objc_enumerationMutation(v44);
      }

      v51 = *(*(&v72 + 1) + 8 * k);
      v71 = 0;
      v52 = [(RBProcessManager *)self _canTerminateProcess:v51 withContext:v49 error:&v71];
      v53 = v71;

      if (v52)
      {
        if ([v51 terminateWithContext:v49])
        {
          goto LABEL_63;
        }

        v54 = rbs_process_log();
        if (os_log_type_enabled(v54, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v90 = v51;
          _os_log_error_impl(&dword_262485000, v54, OS_LOG_TYPE_ERROR, "failed to terminate %{public}@", buf, 0xCu);
        }

        if (v47)
        {
LABEL_63:
          v32 = v53;
          continue;
        }

        v57 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
        [v57 setObject:@"Termination failed" forKey:v63];
        v32 = [MEMORY[0x277CCA9B8] errorWithDomain:v64 code:5 userInfo:v57];

        v66 = 0;
      }

      else
      {
        v55 = rbs_process_log();
        if (os_log_type_enabled(v55, OS_LOG_TYPE_INFO))
        {
          v56 = [v53 localizedFailureReason];
          *buf = 138543618;
          v90 = v51;
          v91 = 2114;
          v92 = v56;
          _os_log_impl(&dword_262485000, v55, OS_LOG_TYPE_INFO, "skipping %{public}@ for reason : %{public}@", buf, 0x16u);
        }

        if (!v47)
        {
          v66 = 0;
          v32 = v53;
          v49 = v67;
          continue;
        }

        v32 = 0;
        v49 = v67;
      }
    }

    v46 = [v44 countByEnumeratingWithState:&v72 objects:v93 count:16];
  }

  while (v46);
LABEL_75:

  v6 = v62;
  if (v62)
  {
    v62[2](v62, v66 & 1, v32);
  }

  v5 = v59;
  v8 = v60;
  v12 = v70;
LABEL_81:

LABEL_82:
LABEL_83:

  v58 = *MEMORY[0x277D85DE8];
}

void __55__RBProcessManager_executeTerminateRequest_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if ((a2 & 1) == 0)
  {
    v6 = *MEMORY[0x277D47088];
    v7 = [MEMORY[0x277CCACA8] stringWithFormat:@"Diagnostic collection failed: [%@]", v5];
    v8 = _errorWithRequestCode(v6, 5, v7);

    [*(a1 + 32) setReportType:1];
    v5 = v8;
  }

  if ([*(a1 + 40) terminateWithContext:*(a1 + 32)])
  {
    v9 = *(a1 + 48);
    if (v9)
    {
      (*(v9 + 16))(v9, a2, v5);
    }
  }

  else
  {
    v10 = rbs_process_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __55__RBProcessManager_executeTerminateRequest_completion___block_invoke_cold_1((a1 + 40), v10, v11, v12, v13, v14, v15, v16);
    }

    v17 = *(a1 + 48);
    if (v17)
    {
      v18 = *MEMORY[0x277D47088];
      v19 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:2];
      [v19 setObject:@"Termination failed" forKey:*MEMORY[0x277CCA470]];
      v20 = [MEMORY[0x277CCA9B8] errorWithDomain:v18 code:5 userInfo:v19];

      (*(v17 + 16))(v17, 0, v20);
    }
  }
}

- (id)busyExtensionInstancesFromSet:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = rbs_process_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 138543362;
    v23 = v4;
    _os_log_impl(&dword_262485000, v5, OS_LOG_TYPE_INFO, "matching extension instances: %{public}@", buf, 0xCu);
  }

  v6 = objc_opt_new();
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v7 = [(RBProcessIndex *)self->_processIndex allProcesses];
  v8 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v18;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v18 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v17 + 1) + 8 * i);
        if (([v12 isSuspended] & 1) == 0)
        {
          v13 = [v12 identity];
          v14 = [v13 xpcServiceIdentifier];

          if (v14 && [v4 containsObject:v14])
          {
            [v6 addObject:v14];
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v9);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)_enqueueGuaranteedRunningLaunchForIdentity:(id)a3 atTime:(double)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  RBSMachAbsoluteTime();
  v8 = v7;
  v9 = dispatch_time(0, 0);
  v10 = fmax(a4 - v8, 0.0);
  v11 = rbs_process_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v24 = v6;
    v25 = 2048;
    v26 = v10;
    _os_log_impl(&dword_262485000, v11, OS_LOG_TYPE_DEFAULT, "Enqueueing GuaranteedRunning launch for %@ in %0.2fs", buf, 0x16u);
  }

  v17 = MEMORY[0x277D85DD0];
  v18 = 3221225472;
  v19 = __70__RBProcessManager__enqueueGuaranteedRunningLaunchForIdentity_atTime___block_invoke;
  v20 = &unk_279B32B80;
  v21 = self;
  v12 = v6;
  v22 = v12;
  v13 = MEMORY[0x266729AD0](&v17);
  if (v10 >= 2.22044605e-16)
  {
    v15 = dispatch_time(v9, (v10 * 1000000000.0));
    v14 = [RBProcessManager stateApplicationQueue:v17];
    dispatch_after(v15, v14, v13);
  }

  else
  {
    v14 = [RBProcessManager stateApplicationQueue:v17];
    dispatch_async(v14, v13);
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __70__RBProcessManager__enqueueGuaranteedRunningLaunchForIdentity_atTime___block_invoke(uint64_t a1)
{
  v36 = *MEMORY[0x277D85DE8];
  v2 = (a1 + 40);
  v3 = [*(*(a1 + 32) + 112) valueForIdentity:*(a1 + 40)];
  v4 = v3;
  if (v3 && [v3 guaranteedRunning])
  {
    v5 = [*(*(a1 + 32) + 88) processForIdentity:*(a1 + 40)];
    if (v5)
    {

LABEL_10:
      v13 = rbs_process_log();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        v14 = *v2;
        *buf = 138412290;
        v35 = v14;
        _os_log_impl(&dword_262485000, v13, OS_LOG_TYPE_DEFAULT, "Applying state after GuaranteedRunning launch of %@", buf, 0xCu);
      }

      v16 = *(a1 + 32);
      v15 = *(a1 + 40);
      v30[0] = MEMORY[0x277D85DD0];
      v30[1] = 3221225472;
      v30[2] = __70__RBProcessManager__enqueueGuaranteedRunningLaunchForIdentity_atTime___block_invoke_134;
      v30[3] = &unk_279B329D0;
      v30[4] = v16;
      v31 = v15;
      v32 = v4;
      [v16 _executeLifecycleEventForIdentity:v31 sync:0 withBlock:v30];

      goto LABEL_13;
    }

    v8 = [MEMORY[0x277D46EB0] contextWithIdentity:*(a1 + 40)];
    v9 = [objc_alloc(MEMORY[0x277D46EC0]) initWithContext:v8];
    v10 = *(a1 + 32);
    v33 = 0;
    v11 = [v10 _executeLaunchRequest:v9 withError:&v33];
    v12 = v33;
    if (v11)
    {

      goto LABEL_10;
    }

    v18 = rbs_process_log();
    v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
    if (v12)
    {
      if (v19)
      {
        __70__RBProcessManager__enqueueGuaranteedRunningLaunchForIdentity_atTime___block_invoke_cold_1(v2);
      }

      if ([v12 code] != 6)
      {
        goto LABEL_26;
      }

      v18 = [v12 userInfo];
      v26 = [v18 objectForKey:*MEMORY[0x277D470A0]];
      if (!v26)
      {
        v27 = rbs_general_log();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_FAULT))
        {
          __70__RBProcessManager__enqueueGuaranteedRunningLaunchForIdentity_atTime___block_invoke_cold_2();
        }
      }

      v29 = *(a1 + 32);
      v28 = *(a1 + 40);
      [v26 doubleValue];
      [v29 _enqueueGuaranteedRunningLaunchForIdentity:v28 atTime:?];
    }

    else if (v19)
    {
      __70__RBProcessManager__enqueueGuaranteedRunningLaunchForIdentity_atTime___block_invoke_cold_3(v2, v18, v20, v21, v22, v23, v24, v25);
    }

LABEL_26:
    goto LABEL_13;
  }

  v6 = rbs_process_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *v2;
    *buf = 138412290;
    v35 = v7;
    _os_log_impl(&dword_262485000, v6, OS_LOG_TYPE_DEFAULT, "Bailing previously enqueued GuaranteedRunning launch of %@ because it is now out-of-state", buf, 0xCu);
  }

LABEL_13:
  v17 = *MEMORY[0x277D85DE8];
}

void __70__RBProcessManager__enqueueGuaranteedRunningLaunchForIdentity_atTime___block_invoke_134(void *a1)
{
  v2 = [*(a1[4] + 88) processForIdentity:a1[5]];
  if (v2)
  {
    v3 = v2;
    [v2 _applyState:a1[6]];
    v2 = v3;
  }
}

- (void)didUpdateProcessStates:(id)a3 completion:(id)a4
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a3;
  block = a4;
  [v6 processIdentities];
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  obj = v35 = 0u;
  v7 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v7)
  {
    v8 = *v35;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v35 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v34 + 1) + 8 * i);
        v11 = [v6 processStateChangeForIdentity:v10];
        v12 = [v11 updatedState];

        v13 = [(RBProcessMap *)self->_processState setValue:v12 forIdentity:v10];
        v28 = 0;
        v29 = &v28;
        v30 = 0x3032000000;
        v31 = __Block_byref_object_copy__5;
        v32 = __Block_byref_object_dispose__5;
        v33 = [(RBProcessIndex *)self->_processIndex processForIdentity:v10];
        if (!v29[5] && [v12 guaranteedRunning])
        {
          [(RBProcessManager *)self _enqueueGuaranteedRunningLaunchForIdentity:v10 atTime:0.0];
        }

        v25[0] = MEMORY[0x277D85DD0];
        v25[1] = 3221225472;
        v25[2] = __54__RBProcessManager_didUpdateProcessStates_completion___block_invoke;
        v25[3] = &unk_279B33C18;
        v27 = &v28;
        v25[4] = self;
        v25[5] = v10;
        v14 = v12;
        v26 = v14;
        [(RBProcessManager *)self _executeLifecycleEventForIdentity:v10 sync:0 withBlock:v25];

        _Block_object_dispose(&v28, 8);
      }

      v7 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v7);
  }

  if (block)
  {
    v15 = [MEMORY[0x277D47038] currentContext];
    v16 = +[RBProcessManager stateApplicationQueue];
    v17 = v16;
    if (v15)
    {
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __54__RBProcessManager_didUpdateProcessStates_completion___block_invoke_2;
      v21[3] = &unk_279B32F78;
      v22 = obj;
      v23 = self;
      v24 = block;
      [v15 handoffToQueue:v17 block:v21];

      v17 = v22;
    }

    else
    {
      dispatch_async(v16, block);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void *__54__RBProcessManager_didUpdateProcessStates_completion___block_invoke(void *a1)
{
  v2 = [*(a1[4] + 88) processForIdentity:a1[5]];
  v3 = *(a1[7] + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  result = *(*(a1[7] + 8) + 40);
  if (result)
  {
    v6 = a1[6];

    return [result _applyState:v6];
  }

  return result;
}

uint64_t __54__RBProcessManager_didUpdateProcessStates_completion___block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [*(a1 + 40) _executeLifecycleEventForIdentity:*(*(&v10 + 1) + 8 * v6++) sync:1 withBlock:{&__block_literal_global_138, v10}];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v7 = +[RBProcess processStateApplicationQueue];
  dispatch_async_and_wait(v7, &__block_literal_global_140);

  result = (*(*(a1 + 48) + 16))();
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)applySystemState:(id)a3
{
  v11 = a3;
  os_unfair_lock_lock(&self->_lock);
  v4 = [v11 prewarmConfiguration];
  v5 = [(RBSystemState *)self->_systemState prewarmConfiguration];
  v6 = v5;
  if (v4 == v5)
  {

LABEL_9:
    goto LABEL_10;
  }

  if (!v4 || !v5)
  {

    goto LABEL_8;
  }

  v7 = [v4 isEqual:v5];

  if ((v7 & 1) == 0)
  {
LABEL_8:
    prewarmManager = self->_prewarmManager;
    v4 = [v11 prewarmConfiguration];
    [(RBPrewarmManager *)prewarmManager prewarmingConfigurationDidChange:v4];
    goto LABEL_9;
  }

LABEL_10:
  v9 = [v11 copy];
  systemState = self->_systemState;
  self->_systemState = v9;

  os_unfair_lock_unlock(&self->_lock);
}

- (NSString)stateCaptureTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (id)_processForIdentifier:(id)a3
{
  v4 = a3;
  if (v4)
  {
    v5 = [(RBProcessIndex *)self->_processIndex processForIdentifier:v4];
    if (!v5)
    {
      v5 = [(RBProcessIndex *)self->_processGraveyard processForIdentifier:v4];
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_processForInstance:(id)a3
{
  v4 = a3;
  v5 = [v4 identifier];
  v6 = [(RBProcessManager *)self _processForIdentifier:v5];

  v7 = [v6 instance];
  v8 = [v7 isEqual:v4];

  if ((v8 & 1) == 0)
  {

    v6 = 0;
  }

  return v6;
}

- (id)_resolveProcessWithIdentifier:(id)a3 auditToken:(id)a4 properties:(id *)a5
{
  v50 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [a3 rbs_pid];
  if (v9 < 1)
  {
    v14 = 0;
    goto LABEL_59;
  }

  v10 = v9;
  v11 = [RBLaunchdProperties propertiesForPid:v9];
  v12 = v11;
  if (a5)
  {
    v13 = v11;
    *a5 = v12;
  }

  memset(&buf[1], 0, sizeof(audit_token_t));
  if (v8)
  {
    [v8 realToken];
  }

  else
  {
    v15 = [MEMORY[0x277D46ED8] taskNameForPID:v10];
    v16 = [v15 auditToken];
    v17 = v16;
    if (v16)
    {
      [v16 realToken];
    }

    else
    {
      memset(buf, 0, 32);
    }

    buf[1] = buf[0];
  }

  if ([v12 hasVariableEUID])
  {
    v18 = rbs_process_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
    {
      buf[0].val[0] = 67109120;
      buf[0].val[1] = v10;
      _os_log_impl(&dword_262485000, v18, OS_LOG_TYPE_DEFAULT, "Process %d has variable EUID - just use AUID/EUID 0", buf, 8u);
    }

LABEL_22:
    v21 = 0;
    goto LABEL_23;
  }

  buf[0] = buf[1];
  if (!RBSRealAuditTokenValid())
  {
    v18 = rbs_process_log();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_FAULT))
    {
      [RBProcessManager _resolveProcessWithIdentifier:v8 auditToken:v10 properties:v18];
    }

    goto LABEL_22;
  }

  buf[0] = buf[1];
  v19 = audit_token_to_euid(buf);
  buf[0] = buf[1];
  v20 = audit_token_to_auid(buf);
  if (v20 + 1 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = v19;
  }

  v18 = rbs_process_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    buf[0].val[0] = 67109632;
    buf[0].val[1] = v10;
    LOWORD(buf[0].val[2]) = 1024;
    *(&buf[0].val[2] + 2) = v19;
    HIWORD(buf[0].val[3]) = 1024;
    buf[0].val[4] = v21;
    _os_log_impl(&dword_262485000, v18, OS_LOG_TYPE_DEFAULT, "_resolveProcessWithIdentifier pid %d euid %d auid %d", buf, 0x14u);
  }

LABEL_23:

  v22 = [v12 specifiedIdentity];

  if (v22)
  {
    v23 = [v12 specifiedIdentity];
    if (v23)
    {
      goto LABEL_51;
    }
  }

  else if ([v12 isXPCService])
  {
    v24 = [v12 hostPid];
    if (v24 < 1)
    {
      v26 = 0;
    }

    else
    {
      v25 = [MEMORY[0x277CCABB0] numberWithInt:v24];
      v26 = [(RBProcessManager *)self processForIdentifier:v25];
    }

    v28 = [v26 auditToken];
    v29 = v28;
    if (v28)
    {
      memset(buf, 0, 32);
      [v28 realToken];
      v48 = buf[0];
      LODWORD(v21) = audit_token_to_euid(&v48);
      v48 = buf[0];
      v30 = audit_token_to_auid(&v48);
      if (v30 + 1 >= 2)
      {
        v21 = v30;
      }

      else
      {
        v21 = v21;
      }

      v31 = rbs_process_log();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
      {
        v48.val[0] = 67109376;
        v48.val[1] = v10;
        LOWORD(v48.val[2]) = 1024;
        *(&v48.val[2] + 2) = v21;
        _os_log_impl(&dword_262485000, v31, OS_LOG_TYPE_DEFAULT, "_resolveProcessWithIdentifier pid %d host is auid %d", &v48, 0xEu);
      }
    }

    v32 = MEMORY[0x277D46F60];
    v33 = [v12 executablePath];
    v34 = [v26 instance];
    v35 = [v12 uuid];
    v23 = [v32 identityForXPCServiceExecutablePath:v33 pid:v10 auid:v21 host:v34 UUID:v35];

    if (v23)
    {
      goto LABEL_51;
    }
  }

  else
  {
    v27 = [v12 resolvedIdentityWithPid:v10 auid:v21];
    if (v27)
    {
      v23 = v27;
      goto LABEL_51;
    }

    v36 = rbs_process_log();
    if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
    {
      buf[0].val[0] = 67109120;
      buf[0].val[1] = v10;
      _os_log_impl(&dword_262485000, v36, OS_LOG_TYPE_DEFAULT, "Unable to obtain process properties from launchd for pid=%d", buf, 8u);
    }
  }

  if (!RBSPIDExists())
  {
    v23 = rbs_process_log();
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
LABEL_57:
      v14 = 0;
      goto LABEL_58;
    }

    buf[0].val[0] = 67109120;
    buf[0].val[1] = v10;
    v45 = "Can't lookup pid %d because it does not exist";
LABEL_56:
    _os_log_impl(&dword_262485000, v23, OS_LOG_TYPE_DEFAULT, v45, buf, 8u);
    goto LABEL_57;
  }

  v37 = RBSExecutablePathForPID();
  v38 = v37;
  if (v37)
  {
    goto LABEL_50;
  }

  v39 = RBSPIDExists();
  v23 = rbs_process_log();
  v40 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (!v39)
  {
    if (!v40)
    {
      goto LABEL_57;
    }

    buf[0].val[0] = 67109120;
    buf[0].val[1] = v10;
    v45 = "Can't lookup pid %d because it does not exist anymore";
    goto LABEL_56;
  }

  if (v40)
  {
    buf[0].val[0] = 67109120;
    buf[0].val[1] = v10;
    _os_log_impl(&dword_262485000, v23, OS_LOG_TYPE_DEFAULT, "RBSExecutablePathForPID couldn't get exec path for pid that exists, %d", buf, 8u);
  }

  v38 = @"no-exec-path";
LABEL_50:
  v23 = [MEMORY[0x277D46F60] identityForExecutablePath:v38 pid:v10 auid:v21];

  if (!v23)
  {
    v43 = rbs_process_log();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_FAULT))
    {
      [RBProcessManager _resolveProcessWithIdentifier:v10 auditToken:v43 properties:?];
    }

    v23 = 0;
    v14 = 0;
    goto LABEL_53;
  }

LABEL_51:
  v41 = MEMORY[0x277D46F70];
  v42 = [MEMORY[0x277D46F50] identifierWithPid:v10];
  v14 = [v41 instanceWithIdentifier:v42 identity:v23];

  v43 = rbs_process_log();
  if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
  {
    v44 = [v23 shortDescription];
    buf[0].val[0] = 67109634;
    buf[0].val[1] = v10;
    LOWORD(buf[0].val[2]) = 2114;
    *(&buf[0].val[2] + 2) = v44;
    HIWORD(buf[0].val[4]) = 1024;
    buf[0].val[5] = v10;
    _os_log_impl(&dword_262485000, v43, OS_LOG_TYPE_DEFAULT, "Resolved pid %d to [%{public}@:%d]", buf, 0x18u);
  }

LABEL_53:

LABEL_58:
LABEL_59:

  v46 = *MEMORY[0x277D85DE8];

  return v14;
}

- (void)_executeLifecycleEventForIdentity:(id)a3 sync:(BOOL)a4 withBlock:(id)a5
{
  v6 = a4;
  v8 = a3;
  v9 = a5;
  if (!v8)
  {
    [RBProcessManager _executeLifecycleEventForIdentity:sync:withBlock:];
  }

  v10 = [(RBProcessManager *)self _getLifecycleQueueForIdentity:v8];
  v11 = v10;
  if (v6)
  {
    dispatch_async_and_wait(v10, v9);
    [(RBProcessManager *)self _releaseLifecycleQueueForIdentity:v8];
  }

  else
  {
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __69__RBProcessManager__executeLifecycleEventForIdentity_sync_withBlock___block_invoke;
    block[3] = &unk_279B33C40;
    v15 = v9;
    block[4] = self;
    v14 = v8;
    v12 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, block);
    dispatch_async(v11, v12);
  }
}

uint64_t __69__RBProcessManager__executeLifecycleEventForIdentity_sync_withBlock___block_invoke(void *a1)
{
  (*(a1[6] + 16))();
  v2 = a1[4];
  v3 = a1[5];

  return [v2 _releaseLifecycleQueueForIdentity:v3];
}

- (id)_getLifecycleQueueForIdentity:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [RBProcessManager _getLifecycleQueueForIdentity:];
  }

  os_unfair_lock_lock_with_options();
  v5 = [(NSMutableDictionary *)self->_identityToProcessLifecycleQueue objectForKey:v4];
  if (!v5)
  {
    if ([(NSCountedSet *)self->_lifecycleQueuesInUse countForObject:v4])
    {
      [RBProcessManager _getLifecycleQueueForIdentity:];
    }

    v6 = MEMORY[0x277CCACA8];
    v7 = [v4 shortDescription];
    v8 = [v6 stringWithFormat:@"com.apple.runningboard.process-manager.%@", v7];

    v9 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v10 = dispatch_queue_attr_make_initially_inactive(v9);

    v5 = dispatch_queue_create([v8 UTF8String], v10);
    dispatch_set_qos_class_fallback();
    [(NSMutableDictionary *)self->_identityToProcessLifecycleQueue setObject:v5 forKey:v4];
    dispatch_activate(v5);
  }

  [(NSCountedSet *)self->_lifecycleQueuesInUse addObject:v4];
  os_unfair_lock_unlock(&self->_lock);
  if (!v5)
  {
    [RBProcessManager _getLifecycleQueueForIdentity:];
  }

  return v5;
}

- (void)_releaseLifecycleQueueForIdentity:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    [RBProcessManager _releaseLifecycleQueueForIdentity:];
  }

  os_unfair_lock_lock_with_options();
  v4 = [(NSCountedSet *)self->_lifecycleQueuesInUse countForObject:v6];
  if (!v4)
  {
    [RBProcessManager _releaseLifecycleQueueForIdentity:];
  }

  v5 = v4;
  [(NSCountedSet *)self->_lifecycleQueuesInUse removeObject:v6];
  if (v5 == 1)
  {
    [(NSMutableDictionary *)self->_identityToProcessLifecycleQueue removeObjectForKey:v6];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (id)_lifecycleQueue_addProcessWithInstance:(id)a3 properties:(id)a4
{
  v77 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v61 = a4;
  if (!v7)
  {
    [RBProcessManager _lifecycleQueue_addProcessWithInstance:properties:];
  }

  v69 = 0;
  v70 = &v69;
  v71 = 0x3032000000;
  v72 = __Block_byref_object_copy__5;
  v73 = __Block_byref_object_dispose__5;
  v74 = [v7 identity];
  v8 = [v7 identifier];
  v58 = v8;
  if (v70[5])
  {
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v50 = [MEMORY[0x277CCA890] currentHandler];
    [v50 handleFailureInMethod:a2 object:self file:@"RBProcessManager.m" lineNumber:1170 description:{@"Invalid parameter not satisfying: %@", @"identity"}];

    if (v58)
    {
      goto LABEL_5;
    }
  }

  v51 = [MEMORY[0x277CCA890] currentHandler];
  [v51 handleFailureInMethod:a2 object:self file:@"RBProcessManager.m" lineNumber:1171 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];

LABEL_5:
  if ([v61 isDaemon])
  {
    v9 = 2;
  }

  else
  {
    if (![v61 isAngel])
    {
      goto LABEL_10;
    }

    v9 = 3;
  }

  [v70[5] setOsServiceType:v9];
LABEL_10:
  os_unfair_lock_lock(&self->_pendingExitBlockLock);
  v60 = [(NSMutableDictionary *)self->_identityToPendingExitBlock objectForKeyedSubscript:v70[5]];
  os_unfair_lock_unlock(&self->_pendingExitBlockLock);
  processIndex = self->_processIndex;
  v11 = [v7 identifier];
  v12 = [(RBProcessIndex *)processIndex processForIdentifier:v11];

  v13 = rbs_ttl_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *&buf[4] = v12;
    _os_log_impl(&dword_262485000, v13, OS_LOG_TYPE_DEFAULT, "existingInstance is: %{public}@", buf, 0xCu);
  }

  if (v12 && ([v12 identity], v14 = objc_claimAutoreleasedReturnValue(), v15 = objc_msgSend(v14, "isExtension"), v14, v15))
  {
    v16 = rbs_process_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      -[RBProcessManager _lifecycleQueue_addProcessWithInstance:properties:].cold.2(v12, buf, [v12 rbs_pid], v16);
    }

    v17 = v12;
  }

  else
  {
    v59 = [(RBProcessIndex *)self->_processIndex processForIdentity:v70[5]];
    if (v60)
    {
      if (v59)
      {
        v18 = [v59 handle];
        [v18 pid];
        v19 = RBSPIDExists();

        if (v19)
        {
          v20 = rbs_process_log();
          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            [RBProcessManager _lifecycleQueue_addProcessWithInstance:properties:];
          }
        }
      }

      v21 = rbs_process_log();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
      {
        v22 = v70[5];
        *buf = 138543618;
        *&buf[4] = v22;
        *&buf[12] = 2114;
        *&buf[14] = v59;
        _os_log_impl(&dword_262485000, v21, OS_LOG_TYPE_DEFAULT, "New process with identity (%{public}@) detected with pending exit from a prior process (%{public}@).  Forcing cleanup of the prior instance immediately.", buf, 0x16u);
      }

      v60[2]();
    }

    v23 = [MEMORY[0x277D46ED8] taskNameForPID:{objc_msgSend(v7, "rbs_pid")}];
    v24 = [v23 auditToken];
    v25 = v24;
    if (v23 && v24)
    {
      v26 = self->_processIndex;
      v27 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v61, "hostPid")}];
      v57 = [(RBProcessIndex *)v26 processForIdentifier:v27];

      v56 = [(RBProcessMap *)self->_processState valueForIdentity:v70[5]];
      v28 = [(RBBundlePropertiesManaging *)self->_bundlePropertiesManager propertiesForIdentity:v70[5] identifier:v58];
      jetsamPropertytManager = self->_jetsamPropertytManager;
      v30 = [v58 rbs_pid];
      v31 = v70[5];
      [v25 realToken];
      v55 = [(RBJetsamPropertyManaging *)jetsamPropertytManager jetsamPropertiesForProcess:v30 identity:v31 bundleProperties:v28 isPlatformBinary:RBSAuditTokenRepresentsPlatformBinary()];
      v54 = v28;
      v32 = [RBProcess alloc];
      LOBYTE(v52) = self->_systemPreventsIdleSleep;
      v17 = [(RBProcess *)v32 _initWithInstance:v7 auditToken:v25 bundleProperties:v28 jetsamProperties:v55 initialState:v56 hostProcess:v57 properties:v61 systemPreventsIdleSleep:v52];
      if (v17)
      {
        v33 = rbs_ttl_log();
        if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v17;
          _os_log_impl(&dword_262485000, v33, OS_LOG_TYPE_DEFAULT, "Now tracking process: %{public}@", buf, 0xCu);
        }

        v34 = self->_processIndex;
        v68 = 0;
        [(RBProcessIndex *)v34 addProcess:v17 existingProcess:&v68];
        v35 = v68;
        v36 = rbs_ttl_log();
        if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          *&buf[4] = v35;
          _os_log_impl(&dword_262485000, v36, OS_LOG_TYPE_DEFAULT, "existingProcess in RBProcessManager is: %{public}@", buf, 0xCu);
        }

        v37 = v35;
        [(RBHistoricalStatisticsMaintaining *)self->_historicalStatistics notifyProcessCount:[(RBProcessIndex *)self->_processIndex count]];
        if (v35)
        {
          os_unfair_lock_lock(&self->_pendingExitBlockLock);
          identityToPendingExitBlock = self->_identityToPendingExitBlock;
          v39 = [v35 identity];
          v40 = [(NSMutableDictionary *)identityToPendingExitBlock objectForKeyedSubscript:v39];

          os_unfair_lock_unlock(&self->_pendingExitBlockLock);
          if (v40)
          {
            v41 = rbs_process_log();
            if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *&buf[4] = v37;
              *&buf[12] = 2114;
              *&buf[14] = v17;
              _os_log_impl(&dword_262485000, v41, OS_LOG_TYPE_DEFAULT, "Cleaning up (%{public}@) which was exec'ed into (%{public}@)", buf, 0x16u);
            }

            v40[2](v40);
          }
        }

        v53 = [(RBProcessManager *)self _getLifecycleQueueForIdentity:v70[5]];
        v42 = [MEMORY[0x277D47028] sharedBackgroundWorkloop];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __70__RBProcessManager__lifecycleQueue_addProcessWithInstance_properties___block_invoke;
        block[3] = &unk_279B32B80;
        block[4] = self;
        v43 = v17;
        v67 = v43;
        dispatch_async(v42, block);

        [(RBProcessManagerDelegate *)self->_delegate processManager:self didAddProcess:v43 withState:v56];
        *buf = 0;
        *&buf[8] = buf;
        *&buf[16] = 0x2020000000;
        v76 = 0;
        v62[0] = MEMORY[0x277D85DD0];
        v62[1] = 3221225472;
        v62[2] = __70__RBProcessManager__lifecycleQueue_addProcessWithInstance_properties___block_invoke_2;
        v62[3] = &unk_279B33C68;
        v64 = buf;
        v62[4] = self;
        v65 = &v69;
        v44 = v43;
        v63 = v44;
        v45 = dispatch_block_create_with_qos_class(DISPATCH_BLOCK_ENFORCE_QOS_CLASS, QOS_CLASS_USER_INITIATED, 0, v62);
        os_unfair_lock_lock(&self->_pendingExitBlockLock);
        v46 = MEMORY[0x266729AD0](v45);
        [(NSMutableDictionary *)self->_identityToPendingExitBlock setObject:v46 forKeyedSubscript:v70[5]];

        os_unfair_lock_unlock(&self->_pendingExitBlockLock);
        [(RBLaunchdJobManager *)self->_jobManager invokeOnProcessDeath:v44 handler:v45 onQueue:v53];
        v47 = v44;

        _Block_object_dispose(buf, 8);
      }

      else
      {
        v37 = rbs_process_log();
        if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
        {
          [RBProcessManager _lifecycleQueue_addProcessWithInstance:properties:];
        }
      }
    }

    else
    {
      v57 = rbs_process_log();
      if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
      {
        [RBProcessManager _lifecycleQueue_addProcessWithInstance:properties:];
      }

      v17 = 0;
    }
  }

  _Block_object_dispose(&v69, 8);
  v48 = *MEMORY[0x277D85DE8];

  return v17;
}

void __70__RBProcessManager__lifecycleQueue_addProcessWithInstance_properties___block_invoke_2(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v1 = *(*(a1 + 48) + 8);
  if ((*(v1 + 24) & 1) == 0)
  {
    *(v1 + 24) = 1;
    v3 = [*(*(a1 + 32) + 112) valueForIdentity:*(*(*(a1 + 56) + 8) + 40)];
    os_unfair_lock_lock((*(a1 + 32) + 76));
    [*(*(a1 + 32) + 120) removeObjectForKey:*(*(*(a1 + 56) + 8) + 40)];
    os_unfair_lock_unlock((*(a1 + 32) + 76));
    [*(a1 + 32) _removeProcess:*(a1 + 40)];
    [*(a1 + 32) _releaseLifecycleQueueForIdentity:*(*(*(a1 + 56) + 8) + 40)];
    if ([v3 guaranteedRunning])
    {
      v4 = rbs_process_log();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        v5 = *(*(*(a1 + 56) + 8) + 40);
        v7 = 138412290;
        v8 = v5;
        _os_log_impl(&dword_262485000, v4, OS_LOG_TYPE_DEFAULT, "Exiting process %@ is GuaranteedRunning", &v7, 0xCu);
      }

      [*(a1 + 32) _enqueueGuaranteedRunningLaunchForIdentity:*(*(*(a1 + 56) + 8) + 40) atTime:0.0];
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_removeProcess:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = rbs_process_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v18 = v4;
    _os_log_impl(&dword_262485000, v5, OS_LOG_TYPE_DEFAULT, "Removing process: %{public}@", buf, 0xCu);
  }

  [v4 invalidate];
  [(RBProcessIndex *)self->_processGraveyard addProcess:v4];
  [(RBProcessIndex *)self->_processIndex removeProcess:v4];
  [(RBHistoricalStatisticsMaintaining *)self->_historicalStatistics notifyProcessCount:[(RBProcessIndex *)self->_processIndex count]];
  v6 = [v4 lastExitContext];
  jobManager = self->_jobManager;
  v8 = [v4 instance];
  v16 = 0;
  v9 = [(RBLaunchdJobManager *)jobManager removeJobWithInstance:v8 error:&v16];
  v10 = v16;

  if (!v9)
  {
    v11 = rbs_process_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v4 shortDescription];
      *buf = 138543618;
      v18 = v12;
      v19 = 2114;
      v20 = v10;
      _os_log_impl(&dword_262485000, v11, OS_LOG_TYPE_DEFAULT, "%{public}@ Error deleting launchd job: <%{public}@>", buf, 0x16u);
    }
  }

  [(RBProcessManagerDelegate *)self->_delegate processManager:self didRemoveProcess:v4];
  [(RBBundlePropertiesManaging *)self->_bundlePropertiesManager removeProcess:v4];
  prewarmManager = self->_prewarmManager;
  v14 = [v4 identity];
  [(RBPrewarmManager *)prewarmManager identityDidTerminate:v14];

  v15 = *MEMORY[0x277D85DE8];
}

- (void)_processForIdentifier:(uint8_t *)buf withAuditToken:(os_log_t)log forceStartTracking:.cold.1(void *a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 138543618;
  *(buf + 4) = a1;
  *(buf + 6) = 2114;
  *(buf + 14) = a2;
  _os_log_fault_impl(&dword_262485000, log, OS_LOG_TYPE_FAULT, "AUID of process has changed from %{public}@ to %{public}@", buf, 0x16u);
}

- (void)_processForIdentifier:withAuditToken:forceStartTracking:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v0, v1, "%{public}@ queried in _processForIdentifier but is already dead!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)executeLaunchRequest:withCompletion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"completion" object:? file:? lineNumber:? description:?];
}

- (void)_executeLaunchRequest:withError:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"request" object:? file:? lineNumber:? description:?];
}

- (void)executeTerminateRequest:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"request" object:? file:? lineNumber:? description:?];
}

- (void)executeTerminateRequest:completion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v0, v1, "invalid terminate request : %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)executeTerminateRequest:completion:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v0, v1, "Terminate request attempted with multiple stackshots : %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)executeTerminateRequest:completion:.cold.4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_debug_impl(&dword_262485000, v0, OS_LOG_TYPE_DEBUG, "no process found to terminate : %{public}@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void __55__RBProcessManager_executeTerminateRequest_completion___block_invoke_cold_1(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_2_2(&dword_262485000, a2, a3, "failed to terminate %{public}@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

void __70__RBProcessManager__enqueueGuaranteedRunningLaunchForIdentity_atTime___block_invoke_cold_1(void *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  LODWORD(v4) = 138412546;
  *(&v4 + 4) = *a1;
  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_4(&dword_262485000, v1, v2, "Failed GuaranteedRunning launch of %@ because of %@", v4, DWORD2(v4));
  v3 = *MEMORY[0x277D85DE8];
}

void __70__RBProcessManager__enqueueGuaranteedRunningLaunchForIdentity_atTime___block_invoke_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  v4 = 2114;
  v5 = v0;
  _os_log_fault_impl(&dword_262485000, v1, OS_LOG_TYPE_FAULT, "Backoff triggered without backoff time %{public}@ : %{public}@", v3, 0x16u);
  v2 = *MEMORY[0x277D85DE8];
}

void __70__RBProcessManager__enqueueGuaranteedRunningLaunchForIdentity_atTime___block_invoke_cold_3(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x277D85DE8];
  v9 = HIDWORD(*a1);
  OUTLINED_FUNCTION_2_2(&dword_262485000, a2, a3, "Failed GuaranteedRunning launch of %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x277D85DE8];
}

- (void)_resolveProcessWithIdentifier:(uint64_t)a1 auditToken:(int)a2 properties:(os_log_t)log .cold.1(uint64_t a1, int a2, os_log_t log)
{
  v7 = *MEMORY[0x277D85DE8];
  v4[0] = 67109378;
  v4[1] = a2;
  v5 = 2114;
  v6 = a1;
  _os_log_fault_impl(&dword_262485000, log, OS_LOG_TYPE_FAULT, "_resolveProcessWithIdentifier could not get auid/euid for pid %d auditToken %{public}@", v4, 0x12u);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)_resolveProcessWithIdentifier:(int)a1 auditToken:(NSObject *)a2 properties:.cold.2(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_fault_impl(&dword_262485000, a2, OS_LOG_TYPE_FAULT, "failed to determine identity for pid=%d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_executeLifecycleEventForIdentity:sync:withBlock:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"identity" object:? file:? lineNumber:? description:?];
}

- (void)_getLifecycleQueueForIdentity:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"identity" object:? file:? lineNumber:? description:?];
}

- (void)_getLifecycleQueueForIdentity:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)_releaseLifecycleQueueForIdentity:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"identity" object:? file:? lineNumber:? description:?];
}

- (void)_lifecycleQueue_addProcessWithInstance:properties:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"instance" object:? file:? lineNumber:? description:?];
}

- (void)_lifecycleQueue_addProcessWithInstance:(int)a3 properties:(os_log_t)log .cold.2(uint64_t a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 1024;
  *(buf + 14) = a3;
  _os_log_error_impl(&dword_262485000, log, OS_LOG_TYPE_ERROR, "We already have an extension %@ with this pid: %d, were two launches for the same extension executed? Returning the existing instance.", buf, 0x12u);
}

- (void)_lifecycleQueue_addProcessWithInstance:properties:.cold.3()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v0, v1, "Prior process for %@ is reporting a pid when we're not expecting it to (should be dead).", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_lifecycleQueue_addProcessWithInstance:properties:.cold.4()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v0, v1, "Failed to create process object for %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_lifecycleQueue_addProcessWithInstance:properties:.cold.5()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v0, v1, "%{public}@ Cannot track instance that is already dead!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end