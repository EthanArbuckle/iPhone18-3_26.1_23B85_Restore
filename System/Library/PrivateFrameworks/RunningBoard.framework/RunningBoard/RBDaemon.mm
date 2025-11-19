@interface RBDaemon
+ (id)_sharedInstance;
+ (void)run;
- (NSString)debugDescription;
- (RBDaemon)init;
- (RBProcess)process;
- (id)_EnterSandbox;
- (uint64_t)setLowDiskIOPolicy;
- (void)_start;
- (void)assertionManager:(id)a3 didEndTrackingStateForProcessIdentity:(id)a4;
- (void)assertionManager:(id)a3 didInvalidateAssertions:(id)a4;
- (void)assertionManager:(id)a3 didRejectAcquisitionFromOriginatorWithExcessiveAssertions:(id)a4;
- (void)assertionManager:(id)a3 didRemoveProcess:(id)a4 withState:(id)a5;
- (void)assertionManager:(id)a3 didResolveSystemState:(id)a4;
- (void)assertionManager:(id)a3 didUpdateProcessStates:(id)a4 completion:(id)a5;
- (void)assertionManager:(id)a3 willExpireAssertionsSoonForProcess:(id)a4 expirationTime:(double)a5;
- (void)assertionManager:(id)a3 willInvalidateAssertion:(id)a4;
- (void)emitAssertionSignpostForTimeout:(uint64_t)a1;
- (void)processManager:(id)a3 didAddProcess:(id)a4 withState:(id)a5;
- (void)processManager:(id)a3 didReconnectProcesses:(id)a4;
- (void)processManager:(id)a3 didRemoveProcess:(id)a4;
- (void)setLowDiskIOPolicy;
- (void)watchdogRegister;
@end

@implementation RBDaemon

- (RBProcess)process
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __19__RBDaemon_process__block_invoke;
  block[3] = &unk_279B32CB0;
  block[4] = self;
  if (process_onceToken != -1)
  {
    dispatch_once(&process_onceToken, block);
  }

  return process_process;
}

+ (void)run
{
  if (run_onceToken != -1)
  {
    +[RBDaemon run];
  }
}

void __15__RBDaemon_run__block_invoke()
{
  v0 = +[RBDaemon _sharedInstance];
  [(RBDaemon *)v0 _start];
}

+ (id)_sharedInstance
{
  objc_opt_self();
  if (_sharedInstance_onceToken != -1)
  {
    +[RBDaemon _sharedInstance];
  }

  v0 = _sharedInstance___sharedInstance;

  return v0;
}

- (RBDaemon)init
{
  v4 = [MEMORY[0x277CCA890] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"RBDaemon.m" lineNumber:122 description:@"-init is not allowed on RBDaemon"];

  return 0;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  listener = self->_listener;
  return [v3 stringWithFormat:@"<%@: %p; listener=%p assertions=%p processes=%p monitor=%p>", v4, self, listener, self->_assertionManager, self->_processManager, self->_processMonitor];
}

- (void)assertionManager:(id)a3 didUpdateProcessStates:(id)a4 completion:(id)a5
{
  v7 = a4;
  v8 = a5;
  processManager = self->_processManager;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__RBDaemon_assertionManager_didUpdateProcessStates_completion___block_invoke;
  v12[3] = &unk_279B32F78;
  v12[4] = self;
  v13 = v7;
  v14 = v8;
  v10 = v8;
  v11 = v7;
  [(RBProcessManager *)processManager didUpdateProcessStates:v11 completion:v12];
  [(RBCoalitionManager *)self->_coalitionManager didUpdateProcessStates:v11];
  [(RBPowerAssertionManager *)self->_powerAssertionManager didUpdateProcessStates:v11];
  [(RBThrottleBestEffortNetworkingManager *)self->_throttleBestEffortNetworkingManager didUpdateProcessStates:v11];
  [(RBProcessMonitor *)self->_processMonitor didUpdateProcessStates:v11];
}

uint64_t __63__RBDaemon_assertionManager_didUpdateProcessStates_completion___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = [(RBConnectionListener *)*(*(a1 + 32) + 64) readyClients];
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        [(RBConnectionClient *)*(*(&v9 + 1) + 8 * v6++) didUpdateProcessStates:?];
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  result = *(a1 + 48);
  if (result)
  {
    result = (*(result + 16))(result);
  }

  v8 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)assertionManager:(id)a3 didResolveSystemState:(id)a4
{
  processManager = self->_processManager;
  v6 = a4;
  [(RBProcessManager *)processManager applySystemState:v6];
  [(RBPowerAssertionManager *)self->_powerAssertionManager applySystemState:v6];
  processMonitor = self->_processMonitor;
  v8 = [v6 preventLaunchPredicates];

  [(RBProcessMonitor *)processMonitor didResolvePreventLaunchPredicates:v8];
}

- (void)assertionManager:(id)a3 didRemoveProcess:(id)a4 withState:(id)a5
{
  v21 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = a5;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v9 = [(RBConnectionListener *)self->_listener readyClients];
  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        [RBConnectionClient didRemoveProcess:withState:];
        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [(RBProcessMonitor *)self->_processMonitor didRemoveProcess:v7 withState:v8, v16];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)assertionManager:(id)a3 willExpireAssertionsSoonForProcess:(id)a4 expirationTime:(double)a5
{
  v19 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(RBConnectionListener *)self->_listener readyClients];
  v9 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v15;
    do
    {
      v12 = 0;
      do
      {
        if (*v15 != v11)
        {
          objc_enumerationMutation(v8);
        }

        [(RBConnectionClient *)*(*(&v14 + 1) + 8 * v12++) willExpireAssertionsSoonForProcess:v7 expirationTime:a5];
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)assertionManager:(id)a3 willInvalidateAssertion:(id)a4
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(RBConnectionListener *)self->_listener readyClients];
  v7 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [(RBConnectionClient *)*(*(&v12 + 1) + 8 * v10++) willInvalidateAssertion:v5];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)assertionManager:(id)a3 didInvalidateAssertions:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v43 objects:v48 count:16];
  if (v6)
  {
    v7 = v6;
    v34 = v41;
    v35 = *v44;
    do
    {
      v8 = 0;
      do
      {
        if (*v44 != v35)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v43 + 1) + 8 * v8);
        [(RBProcessReconnectManager *)self->_reconnectManager didInvalidateAssertion:v9, v34];
        v10 = [v9 target];
        v11 = [v10 identity];

        v12 = [v9 invalidationReason];
        v13 = [(RBProcessManager *)self->_processManager processForIdentity:v11];
        if (v13)
        {
          processManager = self->_processManager;
          v15 = [v9 originator];
          v16 = [v9 terminationContextForTargetProcess:v13 originatorProcessIsActive:{-[RBProcessManager isActiveProcess:](processManager, "isActiveProcess:", v15)}];

          v17 = [v9 endPolicy];
          if ([v13 isLifecycleManaged])
          {
            v18 = v12 == 4;
          }

          else
          {
            v18 = 0;
          }

          if (v18 && v17 == 2)
          {
            [(RBDaemon *)self emitAssertionSignpostForTimeout:v9];
            if (v16)
            {
LABEL_15:
              v20 = objc_alloc(MEMORY[0x277D47018]);
              v21 = MEMORY[0x277D46FA0];
              v22 = [v13 identifier];
              v23 = [v21 predicateMatchingIdentifier:v22];
              v24 = [v20 initWithPredicate:v23 context:v16];

              v25 = [MEMORY[0x277D47028] sharedBackgroundWorkloop];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              v41[0] = __53__RBDaemon_assertionManager_didInvalidateAssertions___block_invoke;
              v41[1] = &unk_279B32B80;
              v41[2] = self;
              v42 = v24;
              v26 = v24;
              dispatch_async(v25, block);
            }
          }

          else if (v16)
          {
            goto LABEL_15;
          }
        }

        ++v8;
      }

      while (v7 != v8);
      v27 = [v5 countByEnumeratingWithState:&v43 objects:v48 count:16];
      v7 = v27;
    }

    while (v27);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v28 = [(RBConnectionListener *)self->_listener readyClients];
  v29 = [v28 countByEnumeratingWithState:&v36 objects:v47 count:16];
  if (v29)
  {
    v30 = v29;
    v31 = *v37;
    do
    {
      for (i = 0; i != v30; ++i)
      {
        if (*v37 != v31)
        {
          objc_enumerationMutation(v28);
        }

        [(RBConnectionClient *)*(*(&v36 + 1) + 8 * i) didInvalidateAssertions:v5];
      }

      v30 = [v28 countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v30);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)assertionManager:(id)a3 didEndTrackingStateForProcessIdentity:(id)a4
{
  processManager = self->_processManager;
  v6 = a4;
  [(RBProcessManager *)processManager removeStateForProcessIdentity:v6];
  [(RBProcessMonitor *)self->_processMonitor removeStateForProcessIdentity:v6];
  [(RBPowerAssertionManager *)self->_powerAssertionManager removeStateForProcessIdentity:v6];
}

- (void)assertionManager:(id)a3 didRejectAcquisitionFromOriginatorWithExcessiveAssertions:(id)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = MEMORY[0x277D47010];
  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Process %@ has an excessive number of assertions. Direct this report to owners of that process", v6];
  v9 = [v7 defaultContextWithExplanation:v8];

  [v9 setPreventIfBeingDebugged:1];
  [v9 setReportType:1];
  [v9 setExceptionCode:3490524077];
  v10 = [v6 identity];
  v11 = rbs_sp_telemetry_log();
  if (os_signpost_enabled(v11))
  {
    v12 = [v10 embeddedApplicationIdentifier];
    v13 = v12;
    if (v12)
    {
      v14 = 0;
      v15 = v12;
    }

    else
    {
      v16 = [v10 xpcServiceIdentifier];
      v4 = v16;
      if (v16)
      {
        v14 = 0;
        v15 = v16;
      }

      else
      {
        v15 = [v10 consistentLaunchdJobLabel];
        v14 = 1;
      }
    }

    *buf = 138543362;
    v28 = v15;
    _os_signpost_emit_with_name_impl(&dword_262485000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "RBAssertionMaxCountReached_ProcessTerminated", "BundleIdOverride=%{public, signpost.description:attribute}@ enableTelemetry=YES ", buf, 0xCu);
    if (v14)
    {
    }

    if (!v13)
    {
    }
  }

  v17 = objc_alloc(MEMORY[0x277D47018]);
  v18 = MEMORY[0x277D46FA0];
  v19 = [v6 identifier];
  v20 = [v18 predicateMatchingIdentifier:v19];
  v21 = [v17 initWithPredicate:v20 context:v9];

  v22 = [MEMORY[0x277D47028] sharedBackgroundWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__RBDaemon_assertionManager_didRejectAcquisitionFromOriginatorWithExcessiveAssertions___block_invoke;
  block[3] = &unk_279B32B80;
  block[4] = self;
  v26 = v21;
  v23 = v21;
  dispatch_async(v22, block);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)processManager:(id)a3 didReconnectProcesses:(id)a4
{
  [(RBProcessReconnectManager *)self->_reconnectManager reconnectProcesses:a4];
  listener = self->_listener;

  [(RBConnectionListener *)listener start];
}

- (void)processManager:(id)a3 didAddProcess:(id)a4 withState:(id)a5
{
  assertionManager = self->_assertionManager;
  v8 = a5;
  v9 = a4;
  [(RBAssertionManager *)assertionManager processDidLaunch:v9];
  [(RBPowerAssertionManager *)self->_powerAssertionManager addProcess:v9];
  [(RBThrottleBestEffortNetworkingManager *)self->_throttleBestEffortNetworkingManager addProcess:v9];
  [(RBCoalitionManager *)self->_coalitionManager addProcess:v9 withState:v8];
}

- (void)processManager:(id)a3 didRemoveProcess:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = a4;
  v6 = [v5 identity];
  if ([v6 isApplication])
  {
    v7 = [v5 lastExitContext];
    v8 = [v7 status];
    v9 = [v6 embeddedApplicationIdentifier];
    v10 = [(RBAssertionManager *)self->_assertionManager isProcessForeground:v5];
    v11 = rbs_sp_telemetry_log();
    if (os_signpost_enabled(v11))
    {
      v12 = [v8 domain];
      v13 = [v8 code];
      v14 = "NO";
      *v16 = 138544130;
      *&v16[12] = 1026;
      *&v16[4] = v9;
      if (v10)
      {
        v14 = "YES";
      }

      *&v16[14] = v12;
      v17 = 2050;
      v18 = v13;
      v19 = 2082;
      v20 = v14;
      _os_signpost_emit_with_name_impl(&dword_262485000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ProcessExited", "BundleIdOverride=%{public,signpost.description:attribute}@ exitStatusDomain=%{public,signpost.telemetry:number1}u exitStatusCode=%{public,signpost.telemetry:number2}llu foreground=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", v16, 0x26u);
    }
  }

  [(RBAssertionManager *)self->_assertionManager processDidTerminate:v5, *v16];
  [(RBPowerAssertionManager *)self->_powerAssertionManager removeProcess:v5];
  [(RBThrottleBestEffortNetworkingManager *)self->_throttleBestEffortNetworkingManager removeProcess:v5];
  [(RBBundlePropertiesManager *)self->_bundlePropertiesManager removeProcess:v5];
  [(RBCoalitionManager *)self->_coalitionManager removeProcess:v5];

  v15 = *MEMORY[0x277D85DE8];
}

- (uint64_t)setLowDiskIOPolicy
{
  v4 = *MEMORY[0x277D85DE8];
  if (result)
  {
    result = setiopolicy_np(9, 0, 1);
    if (result)
    {
      [(RBDaemon *)&v2 setLowDiskIOPolicy];
    }
  }

  v1 = *MEMORY[0x277D85DE8];
  return result;
}

- (void)watchdogRegister
{
  v4 = 0;
  *a2 = a1;
  do
  {
    v5 = *(a3 + v4);
    wd_endpoint_add_queue();
    v4 += 8;
  }

  while (v4 != 40);
  wd_endpoint_activate();
  for (i = 32; i != -8; i -= 8)
  {
  }
}

- (id)_EnterSandbox
{
  if (result)
  {
    if ((_set_user_dir_suffix() & 1) == 0)
    {
      v1 = rbs_general_log();
      if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
      {
        [(RBDaemon *)v1 _EnterSandbox];
      }

      exit(1);
    }

    return NSTemporaryDirectory();
  }

  return result;
}

void __19__RBDaemon_process__block_invoke(uint64_t a1)
{
  v10 = [MEMORY[0x277D46F50] identifierWithPid:getpid()];
  v2 = MEMORY[0x277D46F60];
  v3 = [MEMORY[0x277CCAC38] processInfo];
  v4 = [v3 environment];
  v5 = [v4 objectForKey:@"XPC_SERVICE_NAME"];
  v6 = [v2 identityForDaemonJobLabel:v5];

  v7 = [MEMORY[0x277D46F70] instanceWithIdentifier:v10 identity:v6];
  v8 = [*(*(a1 + 32) + 80) processForInstance:v7];
  v9 = process_process;
  process_process = v8;
}

- (void)_start
{
  v73 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = rbs_general_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_262485000, v2, OS_LOG_TYPE_DEFAULT, "Battlecruiser operational.", buf, 2u);
    }

    [(RBDaemon *)a1 setLowDiskIOPolicy];
    [(RBDaemon *)a1 watchdogRegister];
    [(RBDaemon *)a1 _EnterSandbox];
    [MEMORY[0x277CCA9B8] _setFileNameLocalizationEnabled:0];
    v3 = [MEMORY[0x277CCAC38] processInfo];
    v4 = [v3 environment];
    v5 = [v4 objectForKey:@"XPC_SERVICE_NAME"];
    v6 = [RBLaunchdJobManager lastExitStatusForLabel:v5 error:0];

    if ([v6 isValid])
    {
      v7 = rbs_general_log();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v72 = v6;
        _os_log_impl(&dword_262485000, v7, OS_LOG_TYPE_DEFAULT, "Back online after last exit: %{public}@", buf, 0xCu);
      }
    }

    [MEMORY[0x277D46E20] setInDaemon];
    v8 = objc_alloc_init(RBStateCaptureManager);
    v9 = *(a1 + 104);
    *(a1 + 104) = v8;

    v10 = objc_alloc_init(RBPowerAssertionManager);
    v11 = *(a1 + 72);
    *(a1 + 72) = v10;

    [*(a1 + 72) setDelegate:a1];
    v12 = RBSPathForSystemDirectory();
    v13 = [v12 stringByAppendingPathComponent:@"LifecyclePolicy"];
    v14 = [v13 stringByAppendingPathComponent:@"DomainAttributes"];

    v15 = [[RBDomainAttributeManagerDataProvider alloc] initWithPath:v14];
    v16 = [[RBDomainAttributeManager alloc] initWithDataProvider:v15];
    v17 = *(a1 + 32);
    *(a1 + 32) = v16;

    v18 = [RBEntitlementManager alloc];
    v19 = [*(a1 + 32) allEntitlements];
    v20 = [(RBEntitlementManager *)v18 initWithDomainAttributeEntitlements:v19];
    v21 = *(a1 + 48);
    *(a1 + 48) = v20;

    v22 = [[RBJetsamPropertyManager alloc] initWithEntitlementManager:*(a1 + 48)];
    v23 = *(a1 + 56);
    *(a1 + 56) = v22;

    v24 = objc_alloc_init(RBBundlePropertiesManager);
    v25 = *(a1 + 40);
    *(a1 + 40) = v24;

    [*(a1 + 40) setDelegate:a1];
    v26 = objc_alloc_init(RBAssertionDescriptorValidator);
    v27 = *(a1 + 8);
    *(a1 + 8) = v26;

    v28 = [[RBAssertionOriginatorPidStore alloc] initWithPath:@"/runningboard"];
    v29 = *(a1 + 24);
    *(a1 + 24) = v28;

    v30 = [[RBHistoricalStatistics alloc] initWithReportFrequency:30];
    v31 = *(a1 + 128);
    *(a1 + 128) = v30;

    v32 = [RBProcessManager alloc];
    v33 = *(a1 + 40);
    v34 = *(a1 + 48);
    v35 = *(a1 + 56);
    v36 = +[RBTimeProvider sharedInstance];
    v37 = *(a1 + 128);
    v38 = [OUTLINED_FUNCTION_4_7() initWithBundlePropertiesManager:? entitlementManager:? jetsamPropertytManager:? timeProvider:? historialStatistics:? delegate:?];
    v39 = *(a1 + 80);
    *(a1 + 80) = v38;

    v40 = [RBAssertionManager alloc];
    v41 = *(a1 + 40);
    v42 = *(a1 + 24);
    v43 = *(a1 + 8);
    v44 = +[RBTimeProvider sharedInstance];
    v45 = [(RBAssertionManager *)v40 initWithDelegate:a1 bundlePropertiesManager:v41 originatorPidStore:v42 assertionDescriptorValidator:v43 timeProvider:v44 daemonContext:a1 maxOperationsInFlight:50 maxAssertionsPerOriginator:2000];
    v46 = *(a1 + 16);
    *(a1 + 16) = v45;

    v47 = [RBProcessReconnectManager alloc];
    v48 = [a1 process];
    v49 = [(RBProcessReconnectManager *)v47 initWithDaemonContext:a1 originatorProcess:v48];
    v50 = *(a1 + 96);
    *(a1 + 96) = v49;

    v51 = objc_alloc_init(RBThrottleBestEffortNetworkingManager);
    v52 = *(a1 + 112);
    *(a1 + 112) = v51;

    v53 = +[RBResourceViolationHandler sharedInstance];
    [(RBResourceViolationHandler *)v53 startWithAssertionManager:?];

    v54 = [RBProcessMonitor alloc];
    v55 = *(a1 + 104);
    v56 = *(a1 + 128);
    v57 = objc_alloc_init(RBXNUWrapper);
    v58 = [OUTLINED_FUNCTION_4_7() initWithStateCaptureManager:? historialStatistics:? xnuWrapper:?];
    v59 = *(a1 + 88);
    *(a1 + 88) = v58;

    v60 = [[RBConnectionListener alloc] initWithContext:a1];
    v61 = *(a1 + 64);
    *(a1 + 64) = v60;

    v62 = objc_alloc_init(RBExtensionDataProvider);
    v63 = *(a1 + 144);
    *(a1 + 144) = v62;

    v64 = [[RBRequestManager alloc] initWithContext:a1];
    v65 = *(a1 + 152);
    *(a1 + 152) = v64;

    v66 = *(a1 + 136);
    *(a1 + 136) = 0;

    [*(a1 + 104) addItem:*(a1 + 16) withIdentifier:@"assertion"];
    [*(a1 + 104) addItem:*(a1 + 64) withIdentifier:@"connection"];
    [*(a1 + 104) addItem:*(a1 + 32) withIdentifier:@"domain"];
    [*(a1 + 104) addItem:*(a1 + 48) withIdentifier:@"entitlements"];
    [*(a1 + 104) addItem:*(a1 + 24) withIdentifier:@"originatorpids"];
    [*(a1 + 104) addItem:*(a1 + 72) withIdentifier:@"power"];
    [*(a1 + 104) addItem:*(a1 + 80) withIdentifier:@"process"];
    [*(a1 + 104) addItem:*(a1 + 40) withIdentifier:@"bundles"];
    [*(a1 + 104) addItem:*(a1 + 112) withIdentifier:@"throttleBestEffort"];
    [*(a1 + 104) addItem:*(a1 + 88) withIdentifier:@"processMonitor"];
    [*(a1 + 80) start];
    if (currentDeviceClass() == 2)
    {
      v67 = [RBThermalResponseManager managerWithDaemonContext:a1 notificationName:@"com.apple.system.thermalpressurelevel"];
      v68 = *(a1 + 120);
      *(a1 + 120) = v67;
    }

    else
    {
      v68 = rbs_process_log();
      if (os_log_type_enabled(v68, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_262485000, v68, OS_LOG_TYPE_DEFAULT, "Thermal mitigation disabled, device is not an iPad", buf, 2u);
      }
    }

    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, *MEMORY[0x277D47068], 0, 0, 1u);
  }

  v70 = *MEMORY[0x277D85DE8];
}

- (void)emitAssertionSignpostForTimeout:(uint64_t)a1
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = v6;
  if (a1)
  {
    v8 = [v6 target];
    v9 = [v8 identity];

    v10 = [v7 legacyReason];
    v11 = rbs_sp_telemetry_log();
    v12 = os_signpost_enabled(v11);
    switch(v10)
    {
      case 1:
        if (v12)
        {
          v13 = [v9 embeddedApplicationIdentifier];
          if (v13)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            v2 = [v9 xpcServiceIdentifier];
            if (v2)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [v9 consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_MediaPlayback";
          goto LABEL_203;
        }

        break;
      case 2:
        if (v12)
        {
          v13 = [v9 embeddedApplicationIdentifier];
          if (v13)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            v2 = [v9 xpcServiceIdentifier];
            if (v2)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [v9 consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_Location";
          goto LABEL_203;
        }

        break;
      case 3:
        if (v12)
        {
          v13 = [v9 embeddedApplicationIdentifier];
          if (v13)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            v2 = [v9 xpcServiceIdentifier];
            if (v2)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [v9 consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_ExternalAccessory";
          goto LABEL_203;
        }

        break;
      case 4:
        if (v12)
        {
          v13 = [v9 embeddedApplicationIdentifier];
          if (v13)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            v2 = [v9 xpcServiceIdentifier];
            if (v2)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [v9 consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_FinishTask";
          goto LABEL_203;
        }

        break;
      case 5:
        if (v12)
        {
          v13 = [v9 embeddedApplicationIdentifier];
          if (v13)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            v2 = [v9 xpcServiceIdentifier];
            if (v2)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [v9 consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_Bluetooth";
          goto LABEL_203;
        }

        break;
      case 6:
      case 11:
      case 14:
      case 15:
      case 17:
      case 22:
LABEL_16:
        if (v12)
        {
          v13 = [v9 embeddedApplicationIdentifier];
          if (v13)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            v2 = [v9 xpcServiceIdentifier];
            if (v2)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [v9 consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "AssertionTimedOut";
          goto LABEL_203;
        }

        break;
      case 7:
        if (v12)
        {
          v13 = [v9 embeddedApplicationIdentifier];
          if (v13)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            v2 = [v9 xpcServiceIdentifier];
            if (v2)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [v9 consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_BackgroundUI";
          goto LABEL_203;
        }

        break;
      case 8:
        if (v12)
        {
          v13 = [v9 embeddedApplicationIdentifier];
          if (v13)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            v2 = [v9 xpcServiceIdentifier];
            if (v2)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [v9 consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_InterAppAudioStreaming";
          goto LABEL_203;
        }

        break;
      case 9:
        if (v12)
        {
          v13 = [v9 embeddedApplicationIdentifier];
          if (v13)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            v2 = [v9 xpcServiceIdentifier];
            if (v2)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [v9 consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_ViewService";
          goto LABEL_203;
        }

        break;
      case 10:
        if (v12)
        {
          v13 = [v9 embeddedApplicationIdentifier];
          if (v13)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            v2 = [v9 xpcServiceIdentifier];
            if (v2)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [v9 consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_NewsstandDownload";
          goto LABEL_203;
        }

        break;
      case 12:
        if (v12)
        {
          v13 = [v9 embeddedApplicationIdentifier];
          if (v13)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            v2 = [v9 xpcServiceIdentifier];
            if (v2)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [v9 consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_VoIP";
          goto LABEL_203;
        }

        break;
      case 13:
        if (v12)
        {
          v13 = [v9 embeddedApplicationIdentifier];
          if (v13)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            v2 = [v9 xpcServiceIdentifier];
            if (v2)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [v9 consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_Extension";
          goto LABEL_203;
        }

        break;
      case 16:
        if (v12)
        {
          v13 = [v9 embeddedApplicationIdentifier];
          if (v13)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            v2 = [v9 xpcServiceIdentifier];
            if (v2)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [v9 consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_WatchConnectivity";
          goto LABEL_203;
        }

        break;
      case 18:
        if (v12)
        {
          v13 = [v9 embeddedApplicationIdentifier];
          if (v13)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            v2 = [v9 xpcServiceIdentifier];
            if (v2)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [v9 consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_ComplicationUpdate";
          goto LABEL_203;
        }

        break;
      case 19:
        if (v12)
        {
          v13 = [v9 embeddedApplicationIdentifier];
          if (v13)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            v2 = [v9 xpcServiceIdentifier];
            if (v2)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [v9 consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_WorkoutProcessing";
          goto LABEL_203;
        }

        break;
      case 20:
        if (v12)
        {
          v13 = [v9 embeddedApplicationIdentifier];
          if (v13)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            v2 = [v9 xpcServiceIdentifier];
            if (v2)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [v9 consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_ComplicationPushUpdate";
          goto LABEL_203;
        }

        break;
      case 21:
        if (v12)
        {
          v13 = [v9 embeddedApplicationIdentifier];
          if (v13)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            v2 = [v9 xpcServiceIdentifier];
            if (v2)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [v9 consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_BackgroundLocationProcessing";
          goto LABEL_203;
        }

        break;
      case 23:
        if (v12)
        {
          v13 = [v9 embeddedApplicationIdentifier];
          if (v13)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            v2 = [v9 xpcServiceIdentifier];
            if (v2)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [v9 consistentLaunchdJobLabel];
              objc_claimAutoreleasedReturnValue();
              OUTLINED_FUNCTION_1_21();
            }
          }

          [v7 invalidationDuration];
          OUTLINED_FUNCTION_0_19();
          v14 = "ExceededTimeLimit_AudioRecording";
LABEL_203:
          _os_signpost_emit_with_name_impl(&dword_262485000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, v14, "BundleIdOverride=%{public, signpost.description:attribute}@ permittedBackgroundDuration=%{public, signpost.telemetry:number1}f enableTelemetry=YES ", v16, 0x16u);
          if (v4)
          {
          }

          if (!v13)
          {
          }
        }

        break;
      default:
        switch(v10)
        {
          case 10000:
            if (!v12)
            {
              goto LABEL_208;
            }

            v13 = [v9 embeddedApplicationIdentifier];
            if (v13)
            {
              OUTLINED_FUNCTION_3_5();
            }

            else
            {
              v2 = [v9 xpcServiceIdentifier];
              if (v2)
              {
                OUTLINED_FUNCTION_2_11();
              }

              else
              {
                [v9 consistentLaunchdJobLabel];
                objc_claimAutoreleasedReturnValue();
                OUTLINED_FUNCTION_1_21();
              }
            }

            [v7 invalidationDuration];
            OUTLINED_FUNCTION_0_19();
            v14 = "ExceededTimeLimit_Resume";
            goto LABEL_203;
          case 10001:
          case 10003:
            goto LABEL_16;
          case 10002:
            if (!v12)
            {
              goto LABEL_208;
            }

            v13 = [v9 embeddedApplicationIdentifier];
            if (v13)
            {
              OUTLINED_FUNCTION_3_5();
            }

            else
            {
              v2 = [v9 xpcServiceIdentifier];
              if (v2)
              {
                OUTLINED_FUNCTION_2_11();
              }

              else
              {
                [v9 consistentLaunchdJobLabel];
                objc_claimAutoreleasedReturnValue();
                OUTLINED_FUNCTION_1_21();
              }
            }

            [v7 invalidationDuration];
            OUTLINED_FUNCTION_0_19();
            v14 = "ExceededTimeLimit_TransientWakeup";
            goto LABEL_203;
          case 10004:
            if (!v12)
            {
              goto LABEL_208;
            }

            v13 = [v9 embeddedApplicationIdentifier];
            if (v13)
            {
              OUTLINED_FUNCTION_3_5();
            }

            else
            {
              v2 = [v9 xpcServiceIdentifier];
              if (v2)
              {
                OUTLINED_FUNCTION_2_11();
              }

              else
              {
                [v9 consistentLaunchdJobLabel];
                objc_claimAutoreleasedReturnValue();
                OUTLINED_FUNCTION_1_21();
              }
            }

            [v7 invalidationDuration];
            OUTLINED_FUNCTION_0_19();
            v14 = "ExceededTimeLimit_FinishTaskUnbounded";
            goto LABEL_203;
          case 10005:
            if (!v12)
            {
              goto LABEL_208;
            }

            v13 = [v9 embeddedApplicationIdentifier];
            if (v13)
            {
              OUTLINED_FUNCTION_3_5();
            }

            else
            {
              v2 = [v9 xpcServiceIdentifier];
              if (v2)
              {
                OUTLINED_FUNCTION_2_11();
              }

              else
              {
                [v9 consistentLaunchdJobLabel];
                objc_claimAutoreleasedReturnValue();
                OUTLINED_FUNCTION_1_21();
              }
            }

            [v7 invalidationDuration];
            OUTLINED_FUNCTION_0_19();
            v14 = "ExceededTimeLimit_Continuous";
            goto LABEL_203;
          case 10006:
            if (!v12)
            {
              goto LABEL_208;
            }

            v13 = [v9 embeddedApplicationIdentifier];
            if (v13)
            {
              OUTLINED_FUNCTION_3_5();
            }

            else
            {
              v2 = [v9 xpcServiceIdentifier];
              if (v2)
              {
                OUTLINED_FUNCTION_2_11();
              }

              else
              {
                [v9 consistentLaunchdJobLabel];
                objc_claimAutoreleasedReturnValue();
                OUTLINED_FUNCTION_1_21();
              }
            }

            [v7 invalidationDuration];
            OUTLINED_FUNCTION_0_19();
            v14 = "ExceededTimeLimit_BackgroundContentFetching";
            goto LABEL_203;
          case 10007:
            if (!v12)
            {
              goto LABEL_208;
            }

            v13 = [v9 embeddedApplicationIdentifier];
            if (v13)
            {
              OUTLINED_FUNCTION_3_5();
            }

            else
            {
              v2 = [v9 xpcServiceIdentifier];
              if (v2)
              {
                OUTLINED_FUNCTION_2_11();
              }

              else
              {
                [v9 consistentLaunchdJobLabel];
                objc_claimAutoreleasedReturnValue();
                OUTLINED_FUNCTION_1_21();
              }
            }

            [v7 invalidationDuration];
            OUTLINED_FUNCTION_0_19();
            v14 = "ExceededTimeLimit_NotificationAction";
            goto LABEL_203;
          case 10008:
            if (!v12)
            {
              goto LABEL_208;
            }

            v13 = [v9 embeddedApplicationIdentifier];
            if (v13)
            {
              OUTLINED_FUNCTION_3_5();
            }

            else
            {
              v2 = [v9 xpcServiceIdentifier];
              if (v2)
              {
                OUTLINED_FUNCTION_2_11();
              }

              else
              {
                [v9 consistentLaunchdJobLabel];
                objc_claimAutoreleasedReturnValue();
                OUTLINED_FUNCTION_1_21();
              }
            }

            [v7 invalidationDuration];
            OUTLINED_FUNCTION_0_19();
            v14 = "ExceededTimeLimit_PIP";
            goto LABEL_203;
          default:
            if (v10 == 50000)
            {
              if (!v12)
              {
                goto LABEL_208;
              }

              v13 = [v9 embeddedApplicationIdentifier];
              if (v13)
              {
                OUTLINED_FUNCTION_3_5();
              }

              else
              {
                v2 = [v9 xpcServiceIdentifier];
                if (v2)
                {
                  OUTLINED_FUNCTION_2_11();
                }

                else
                {
                  [v9 consistentLaunchdJobLabel];
                  objc_claimAutoreleasedReturnValue();
                  OUTLINED_FUNCTION_1_21();
                }
              }

              [v7 invalidationDuration];
              OUTLINED_FUNCTION_0_19();
              v14 = "ExceededTimeLimit_FinishTaskAfterBackgroundContentFetching";
              goto LABEL_203;
            }

            if (v10 == 50003)
            {
              if (!v12)
              {
                goto LABEL_208;
              }

              v13 = [v9 embeddedApplicationIdentifier];
              if (v13)
              {
                OUTLINED_FUNCTION_3_5();
              }

              else
              {
                v2 = [v9 xpcServiceIdentifier];
                if (v2)
                {
                  OUTLINED_FUNCTION_2_11();
                }

                else
                {
                  [v9 consistentLaunchdJobLabel];
                  objc_claimAutoreleasedReturnValue();
                  OUTLINED_FUNCTION_1_21();
                }
              }

              [v7 invalidationDuration];
              OUTLINED_FUNCTION_0_19();
              v14 = "ExceededTimeLimit_FinishTaskAfterNotificationAction";
              goto LABEL_203;
            }

            if (v10 != 50004)
            {
              goto LABEL_16;
            }

            if (v12)
            {
              v13 = [v9 embeddedApplicationIdentifier];
              if (v13)
              {
                OUTLINED_FUNCTION_3_5();
              }

              else
              {
                v2 = [v9 xpcServiceIdentifier];
                if (v2)
                {
                  OUTLINED_FUNCTION_2_11();
                }

                else
                {
                  [v9 consistentLaunchdJobLabel];
                  objc_claimAutoreleasedReturnValue();
                  OUTLINED_FUNCTION_1_21();
                }
              }

              [v7 invalidationDuration];
              OUTLINED_FUNCTION_0_19();
              v14 = "ExceededTimeLimit_FinishTaskAfterWatchConnectivity";
              goto LABEL_203;
            }

            break;
        }

        break;
    }

LABEL_208:
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __27__RBDaemon__sharedInstance__block_invoke()
{
  v0 = [RBDaemon alloc];
  if (v0)
  {
    v2.receiver = v0;
    v2.super_class = RBDaemon;
    v0 = objc_msgSendSuper2(&v2, sel_init);
  }

  v1 = _sharedInstance___sharedInstance;
  _sharedInstance___sharedInstance = v0;
}

- (void)setLowDiskIOPolicy
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR);
  v3 = *__error();
  v4 = __error();
  strerror(*v4);
  _os_log_send_and_compose_impl();
  v5 = *a1;
  _os_crash_msg();
  __break(1u);
}

@end