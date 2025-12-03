@interface RBDaemon
+ (id)_sharedInstance;
+ (void)run;
- (NSString)debugDescription;
- (RBDaemon)init;
- (RBProcess)process;
- (id)_EnterSandbox;
- (uint64_t)setLowDiskIOPolicy;
- (void)_start;
- (void)assertionManager:(id)manager didEndTrackingStateForProcessIdentity:(id)identity;
- (void)assertionManager:(id)manager didInvalidateAssertions:(id)assertions;
- (void)assertionManager:(id)manager didRejectAcquisitionFromOriginatorWithExcessiveAssertions:(id)assertions;
- (void)assertionManager:(id)manager didRemoveProcess:(id)process withState:(id)state;
- (void)assertionManager:(id)manager didResolveSystemState:(id)state;
- (void)assertionManager:(id)manager didUpdateProcessStates:(id)states completion:(id)completion;
- (void)assertionManager:(id)manager willExpireAssertionsSoonForProcess:(id)process expirationTime:(double)time;
- (void)assertionManager:(id)manager willInvalidateAssertion:(id)assertion;
- (void)emitAssertionSignpostForTimeout:(uint64_t)timeout;
- (void)processManager:(id)manager didAddProcess:(id)process withState:(id)state;
- (void)processManager:(id)manager didReconnectProcesses:(id)processes;
- (void)processManager:(id)manager didRemoveProcess:(id)process;
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
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBDaemon.m" lineNumber:122 description:@"-init is not allowed on RBDaemon"];

  return 0;
}

- (NSString)debugDescription
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  listener = self->_listener;
  return [v3 stringWithFormat:@"<%@: %p; listener=%p assertions=%p processes=%p monitor=%p>", v4, self, listener, self->_assertionManager, self->_processManager, self->_processMonitor];
}

- (void)assertionManager:(id)manager didUpdateProcessStates:(id)states completion:(id)completion
{
  statesCopy = states;
  completionCopy = completion;
  processManager = self->_processManager;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __63__RBDaemon_assertionManager_didUpdateProcessStates_completion___block_invoke;
  v12[3] = &unk_279B32F78;
  v12[4] = self;
  v13 = statesCopy;
  v14 = completionCopy;
  v10 = completionCopy;
  v11 = statesCopy;
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

- (void)assertionManager:(id)manager didResolveSystemState:(id)state
{
  processManager = self->_processManager;
  stateCopy = state;
  [(RBProcessManager *)processManager applySystemState:stateCopy];
  [(RBPowerAssertionManager *)self->_powerAssertionManager applySystemState:stateCopy];
  processMonitor = self->_processMonitor;
  preventLaunchPredicates = [stateCopy preventLaunchPredicates];

  [(RBProcessMonitor *)processMonitor didResolvePreventLaunchPredicates:preventLaunchPredicates];
}

- (void)assertionManager:(id)manager didRemoveProcess:(id)process withState:(id)state
{
  v21 = *MEMORY[0x277D85DE8];
  processCopy = process;
  stateCopy = state;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  readyClients = [(RBConnectionListener *)self->_listener readyClients];
  v10 = [readyClients countByEnumeratingWithState:&v16 objects:v20 count:16];
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
          objc_enumerationMutation(readyClients);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        [RBConnectionClient didRemoveProcess:withState:];
        ++v13;
      }

      while (v11 != v13);
      v11 = [readyClients countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  [(RBProcessMonitor *)self->_processMonitor didRemoveProcess:processCopy withState:stateCopy, v16];
  v15 = *MEMORY[0x277D85DE8];
}

- (void)assertionManager:(id)manager willExpireAssertionsSoonForProcess:(id)process expirationTime:(double)time
{
  v19 = *MEMORY[0x277D85DE8];
  processCopy = process;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  readyClients = [(RBConnectionListener *)self->_listener readyClients];
  v9 = [readyClients countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(readyClients);
        }

        [(RBConnectionClient *)*(*(&v14 + 1) + 8 * v12++) willExpireAssertionsSoonForProcess:processCopy expirationTime:time];
      }

      while (v10 != v12);
      v10 = [readyClients countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v10);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)assertionManager:(id)manager willInvalidateAssertion:(id)assertion
{
  v17 = *MEMORY[0x277D85DE8];
  assertionCopy = assertion;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  readyClients = [(RBConnectionListener *)self->_listener readyClients];
  v7 = [readyClients countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(readyClients);
        }

        [(RBConnectionClient *)*(*(&v12 + 1) + 8 * v10++) willInvalidateAssertion:assertionCopy];
      }

      while (v8 != v10);
      v8 = [readyClients countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)assertionManager:(id)manager didInvalidateAssertions:(id)assertions
{
  v49 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v6 = [assertionsCopy countByEnumeratingWithState:&v43 objects:v48 count:16];
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
          objc_enumerationMutation(assertionsCopy);
        }

        v9 = *(*(&v43 + 1) + 8 * v8);
        [(RBProcessReconnectManager *)self->_reconnectManager didInvalidateAssertion:v9, v34];
        target = [v9 target];
        identity = [target identity];

        invalidationReason = [v9 invalidationReason];
        v13 = [(RBProcessManager *)self->_processManager processForIdentity:identity];
        if (v13)
        {
          processManager = self->_processManager;
          originator = [v9 originator];
          v16 = [v9 terminationContextForTargetProcess:v13 originatorProcessIsActive:{-[RBProcessManager isActiveProcess:](processManager, "isActiveProcess:", originator)}];

          endPolicy = [v9 endPolicy];
          if ([v13 isLifecycleManaged])
          {
            v18 = invalidationReason == 4;
          }

          else
          {
            v18 = 0;
          }

          if (v18 && endPolicy == 2)
          {
            [(RBDaemon *)self emitAssertionSignpostForTimeout:v9];
            if (v16)
            {
LABEL_15:
              v20 = objc_alloc(MEMORY[0x277D47018]);
              v21 = MEMORY[0x277D46FA0];
              identifier = [v13 identifier];
              v23 = [v21 predicateMatchingIdentifier:identifier];
              v24 = [v20 initWithPredicate:v23 context:v16];

              mEMORY[0x277D47028] = [MEMORY[0x277D47028] sharedBackgroundWorkloop];
              block[0] = MEMORY[0x277D85DD0];
              block[1] = 3221225472;
              v41[0] = __53__RBDaemon_assertionManager_didInvalidateAssertions___block_invoke;
              v41[1] = &unk_279B32B80;
              v41[2] = self;
              v42 = v24;
              v26 = v24;
              dispatch_async(mEMORY[0x277D47028], block);
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
      v27 = [assertionsCopy countByEnumeratingWithState:&v43 objects:v48 count:16];
      v7 = v27;
    }

    while (v27);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  readyClients = [(RBConnectionListener *)self->_listener readyClients];
  v29 = [readyClients countByEnumeratingWithState:&v36 objects:v47 count:16];
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
          objc_enumerationMutation(readyClients);
        }

        [(RBConnectionClient *)*(*(&v36 + 1) + 8 * i) didInvalidateAssertions:assertionsCopy];
      }

      v30 = [readyClients countByEnumeratingWithState:&v36 objects:v47 count:16];
    }

    while (v30);
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)assertionManager:(id)manager didEndTrackingStateForProcessIdentity:(id)identity
{
  processManager = self->_processManager;
  identityCopy = identity;
  [(RBProcessManager *)processManager removeStateForProcessIdentity:identityCopy];
  [(RBProcessMonitor *)self->_processMonitor removeStateForProcessIdentity:identityCopy];
  [(RBPowerAssertionManager *)self->_powerAssertionManager removeStateForProcessIdentity:identityCopy];
}

- (void)assertionManager:(id)manager didRejectAcquisitionFromOriginatorWithExcessiveAssertions:(id)assertions
{
  v29 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  v7 = MEMORY[0x277D47010];
  assertionsCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"Process %@ has an excessive number of assertions. Direct this report to owners of that process", assertionsCopy];
  v9 = [v7 defaultContextWithExplanation:assertionsCopy];

  [v9 setPreventIfBeingDebugged:1];
  [v9 setReportType:1];
  [v9 setExceptionCode:3490524077];
  identity = [assertionsCopy identity];
  v11 = rbs_sp_telemetry_log();
  if (os_signpost_enabled(v11))
  {
    embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
    v13 = embeddedApplicationIdentifier;
    if (embeddedApplicationIdentifier)
    {
      v14 = 0;
      consistentLaunchdJobLabel = embeddedApplicationIdentifier;
    }

    else
    {
      xpcServiceIdentifier = [identity xpcServiceIdentifier];
      v4 = xpcServiceIdentifier;
      if (xpcServiceIdentifier)
      {
        v14 = 0;
        consistentLaunchdJobLabel = xpcServiceIdentifier;
      }

      else
      {
        consistentLaunchdJobLabel = [identity consistentLaunchdJobLabel];
        v14 = 1;
      }
    }

    *buf = 138543362;
    v28 = consistentLaunchdJobLabel;
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
  identifier = [assertionsCopy identifier];
  v20 = [v18 predicateMatchingIdentifier:identifier];
  v21 = [v17 initWithPredicate:v20 context:v9];

  mEMORY[0x277D47028] = [MEMORY[0x277D47028] sharedBackgroundWorkloop];
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __87__RBDaemon_assertionManager_didRejectAcquisitionFromOriginatorWithExcessiveAssertions___block_invoke;
  block[3] = &unk_279B32B80;
  block[4] = self;
  v26 = v21;
  v23 = v21;
  dispatch_async(mEMORY[0x277D47028], block);

  v24 = *MEMORY[0x277D85DE8];
}

- (void)processManager:(id)manager didReconnectProcesses:(id)processes
{
  [(RBProcessReconnectManager *)self->_reconnectManager reconnectProcesses:processes];
  listener = self->_listener;

  [(RBConnectionListener *)listener start];
}

- (void)processManager:(id)manager didAddProcess:(id)process withState:(id)state
{
  assertionManager = self->_assertionManager;
  stateCopy = state;
  processCopy = process;
  [(RBAssertionManager *)assertionManager processDidLaunch:processCopy];
  [(RBPowerAssertionManager *)self->_powerAssertionManager addProcess:processCopy];
  [(RBThrottleBestEffortNetworkingManager *)self->_throttleBestEffortNetworkingManager addProcess:processCopy];
  [(RBCoalitionManager *)self->_coalitionManager addProcess:processCopy withState:stateCopy];
}

- (void)processManager:(id)manager didRemoveProcess:(id)process
{
  v21 = *MEMORY[0x277D85DE8];
  processCopy = process;
  identity = [processCopy identity];
  if ([identity isApplication])
  {
    lastExitContext = [processCopy lastExitContext];
    status = [lastExitContext status];
    embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
    v10 = [(RBAssertionManager *)self->_assertionManager isProcessForeground:processCopy];
    v11 = rbs_sp_telemetry_log();
    if (os_signpost_enabled(v11))
    {
      domain = [status domain];
      code = [status code];
      v14 = "NO";
      *v16 = 138544130;
      *&v16[12] = 1026;
      *&v16[4] = embeddedApplicationIdentifier;
      if (v10)
      {
        v14 = "YES";
      }

      *&v16[14] = domain;
      v17 = 2050;
      v18 = code;
      v19 = 2082;
      v20 = v14;
      _os_signpost_emit_with_name_impl(&dword_262485000, v11, OS_SIGNPOST_EVENT, 0xEEEEB0B5B2B2EEEELL, "ProcessExited", "BundleIdOverride=%{public,signpost.description:attribute}@ exitStatusDomain=%{public,signpost.telemetry:number1}u exitStatusCode=%{public,signpost.telemetry:number2}llu foreground=%{public,signpost.telemetry:string1}s  enableTelemetry=YES ", v16, 0x26u);
    }
  }

  [(RBAssertionManager *)self->_assertionManager processDidTerminate:processCopy, *v16];
  [(RBPowerAssertionManager *)self->_powerAssertionManager removeProcess:processCopy];
  [(RBThrottleBestEffortNetworkingManager *)self->_throttleBestEffortNetworkingManager removeProcess:processCopy];
  [(RBBundlePropertiesManager *)self->_bundlePropertiesManager removeProcess:processCopy];
  [(RBCoalitionManager *)self->_coalitionManager removeProcess:processCopy];

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
  *a2 = self;
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
  if (self)
  {
    v2 = rbs_general_log();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_262485000, v2, OS_LOG_TYPE_DEFAULT, "Battlecruiser operational.", buf, 2u);
    }

    [(RBDaemon *)self setLowDiskIOPolicy];
    [(RBDaemon *)self watchdogRegister];
    [(RBDaemon *)self _EnterSandbox];
    [MEMORY[0x277CCA9B8] _setFileNameLocalizationEnabled:0];
    processInfo = [MEMORY[0x277CCAC38] processInfo];
    environment = [processInfo environment];
    v5 = [environment objectForKey:@"XPC_SERVICE_NAME"];
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
    v9 = *(self + 104);
    *(self + 104) = v8;

    v10 = objc_alloc_init(RBPowerAssertionManager);
    v11 = *(self + 72);
    *(self + 72) = v10;

    [*(self + 72) setDelegate:self];
    v12 = RBSPathForSystemDirectory();
    v13 = [v12 stringByAppendingPathComponent:@"LifecyclePolicy"];
    v14 = [v13 stringByAppendingPathComponent:@"DomainAttributes"];

    v15 = [[RBDomainAttributeManagerDataProvider alloc] initWithPath:v14];
    v16 = [[RBDomainAttributeManager alloc] initWithDataProvider:v15];
    v17 = *(self + 32);
    *(self + 32) = v16;

    v18 = [RBEntitlementManager alloc];
    allEntitlements = [*(self + 32) allEntitlements];
    v20 = [(RBEntitlementManager *)v18 initWithDomainAttributeEntitlements:allEntitlements];
    v21 = *(self + 48);
    *(self + 48) = v20;

    v22 = [[RBJetsamPropertyManager alloc] initWithEntitlementManager:*(self + 48)];
    v23 = *(self + 56);
    *(self + 56) = v22;

    v24 = objc_alloc_init(RBBundlePropertiesManager);
    v25 = *(self + 40);
    *(self + 40) = v24;

    [*(self + 40) setDelegate:self];
    v26 = objc_alloc_init(RBAssertionDescriptorValidator);
    v27 = *(self + 8);
    *(self + 8) = v26;

    v28 = [[RBAssertionOriginatorPidStore alloc] initWithPath:@"/runningboard"];
    v29 = *(self + 24);
    *(self + 24) = v28;

    v30 = [[RBHistoricalStatistics alloc] initWithReportFrequency:30];
    v31 = *(self + 128);
    *(self + 128) = v30;

    v32 = [RBProcessManager alloc];
    v33 = *(self + 40);
    v34 = *(self + 48);
    v35 = *(self + 56);
    v36 = +[RBTimeProvider sharedInstance];
    v37 = *(self + 128);
    v38 = [OUTLINED_FUNCTION_4_7() initWithBundlePropertiesManager:? entitlementManager:? jetsamPropertytManager:? timeProvider:? historialStatistics:? delegate:?];
    v39 = *(self + 80);
    *(self + 80) = v38;

    v40 = [RBAssertionManager alloc];
    v41 = *(self + 40);
    v42 = *(self + 24);
    v43 = *(self + 8);
    v44 = +[RBTimeProvider sharedInstance];
    v45 = [(RBAssertionManager *)v40 initWithDelegate:self bundlePropertiesManager:v41 originatorPidStore:v42 assertionDescriptorValidator:v43 timeProvider:v44 daemonContext:self maxOperationsInFlight:50 maxAssertionsPerOriginator:2000];
    v46 = *(self + 16);
    *(self + 16) = v45;

    v47 = [RBProcessReconnectManager alloc];
    process = [self process];
    v49 = [(RBProcessReconnectManager *)v47 initWithDaemonContext:self originatorProcess:process];
    v50 = *(self + 96);
    *(self + 96) = v49;

    v51 = objc_alloc_init(RBThrottleBestEffortNetworkingManager);
    v52 = *(self + 112);
    *(self + 112) = v51;

    v53 = +[RBResourceViolationHandler sharedInstance];
    [(RBResourceViolationHandler *)v53 startWithAssertionManager:?];

    v54 = [RBProcessMonitor alloc];
    v55 = *(self + 104);
    v56 = *(self + 128);
    v57 = objc_alloc_init(RBXNUWrapper);
    v58 = [OUTLINED_FUNCTION_4_7() initWithStateCaptureManager:? historialStatistics:? xnuWrapper:?];
    v59 = *(self + 88);
    *(self + 88) = v58;

    v60 = [[RBConnectionListener alloc] initWithContext:self];
    v61 = *(self + 64);
    *(self + 64) = v60;

    v62 = objc_alloc_init(RBExtensionDataProvider);
    v63 = *(self + 144);
    *(self + 144) = v62;

    v64 = [[RBRequestManager alloc] initWithContext:self];
    v65 = *(self + 152);
    *(self + 152) = v64;

    v66 = *(self + 136);
    *(self + 136) = 0;

    [*(self + 104) addItem:*(self + 16) withIdentifier:@"assertion"];
    [*(self + 104) addItem:*(self + 64) withIdentifier:@"connection"];
    [*(self + 104) addItem:*(self + 32) withIdentifier:@"domain"];
    [*(self + 104) addItem:*(self + 48) withIdentifier:@"entitlements"];
    [*(self + 104) addItem:*(self + 24) withIdentifier:@"originatorpids"];
    [*(self + 104) addItem:*(self + 72) withIdentifier:@"power"];
    [*(self + 104) addItem:*(self + 80) withIdentifier:@"process"];
    [*(self + 104) addItem:*(self + 40) withIdentifier:@"bundles"];
    [*(self + 104) addItem:*(self + 112) withIdentifier:@"throttleBestEffort"];
    [*(self + 104) addItem:*(self + 88) withIdentifier:@"processMonitor"];
    [*(self + 80) start];
    if (currentDeviceClass() == 2)
    {
      v67 = [RBThermalResponseManager managerWithDaemonContext:self notificationName:@"com.apple.system.thermalpressurelevel"];
      v68 = *(self + 120);
      *(self + 120) = v67;
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

- (void)emitAssertionSignpostForTimeout:(uint64_t)timeout
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = v6;
  if (timeout)
  {
    target = [v6 target];
    identity = [target identity];

    legacyReason = [v7 legacyReason];
    v11 = rbs_sp_telemetry_log();
    v12 = os_signpost_enabled(v11);
    switch(legacyReason)
    {
      case 1:
        if (v12)
        {
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
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
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
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
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
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
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
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
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
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
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
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
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
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
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
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
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
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
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
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
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
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
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
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
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
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
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
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
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
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
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
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
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
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
          embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
          if (embeddedApplicationIdentifier)
          {
            OUTLINED_FUNCTION_3_5();
          }

          else
          {
            xpcServiceIdentifier = [identity xpcServiceIdentifier];
            if (xpcServiceIdentifier)
            {
              OUTLINED_FUNCTION_2_11();
            }

            else
            {
              [identity consistentLaunchdJobLabel];
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

          if (!embeddedApplicationIdentifier)
          {
          }
        }

        break;
      default:
        switch(legacyReason)
        {
          case 10000:
            if (!v12)
            {
              goto LABEL_208;
            }

            embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
            if (embeddedApplicationIdentifier)
            {
              OUTLINED_FUNCTION_3_5();
            }

            else
            {
              xpcServiceIdentifier = [identity xpcServiceIdentifier];
              if (xpcServiceIdentifier)
              {
                OUTLINED_FUNCTION_2_11();
              }

              else
              {
                [identity consistentLaunchdJobLabel];
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

            embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
            if (embeddedApplicationIdentifier)
            {
              OUTLINED_FUNCTION_3_5();
            }

            else
            {
              xpcServiceIdentifier = [identity xpcServiceIdentifier];
              if (xpcServiceIdentifier)
              {
                OUTLINED_FUNCTION_2_11();
              }

              else
              {
                [identity consistentLaunchdJobLabel];
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

            embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
            if (embeddedApplicationIdentifier)
            {
              OUTLINED_FUNCTION_3_5();
            }

            else
            {
              xpcServiceIdentifier = [identity xpcServiceIdentifier];
              if (xpcServiceIdentifier)
              {
                OUTLINED_FUNCTION_2_11();
              }

              else
              {
                [identity consistentLaunchdJobLabel];
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

            embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
            if (embeddedApplicationIdentifier)
            {
              OUTLINED_FUNCTION_3_5();
            }

            else
            {
              xpcServiceIdentifier = [identity xpcServiceIdentifier];
              if (xpcServiceIdentifier)
              {
                OUTLINED_FUNCTION_2_11();
              }

              else
              {
                [identity consistentLaunchdJobLabel];
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

            embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
            if (embeddedApplicationIdentifier)
            {
              OUTLINED_FUNCTION_3_5();
            }

            else
            {
              xpcServiceIdentifier = [identity xpcServiceIdentifier];
              if (xpcServiceIdentifier)
              {
                OUTLINED_FUNCTION_2_11();
              }

              else
              {
                [identity consistentLaunchdJobLabel];
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

            embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
            if (embeddedApplicationIdentifier)
            {
              OUTLINED_FUNCTION_3_5();
            }

            else
            {
              xpcServiceIdentifier = [identity xpcServiceIdentifier];
              if (xpcServiceIdentifier)
              {
                OUTLINED_FUNCTION_2_11();
              }

              else
              {
                [identity consistentLaunchdJobLabel];
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

            embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
            if (embeddedApplicationIdentifier)
            {
              OUTLINED_FUNCTION_3_5();
            }

            else
            {
              xpcServiceIdentifier = [identity xpcServiceIdentifier];
              if (xpcServiceIdentifier)
              {
                OUTLINED_FUNCTION_2_11();
              }

              else
              {
                [identity consistentLaunchdJobLabel];
                objc_claimAutoreleasedReturnValue();
                OUTLINED_FUNCTION_1_21();
              }
            }

            [v7 invalidationDuration];
            OUTLINED_FUNCTION_0_19();
            v14 = "ExceededTimeLimit_PIP";
            goto LABEL_203;
          default:
            if (legacyReason == 50000)
            {
              if (!v12)
              {
                goto LABEL_208;
              }

              embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
              if (embeddedApplicationIdentifier)
              {
                OUTLINED_FUNCTION_3_5();
              }

              else
              {
                xpcServiceIdentifier = [identity xpcServiceIdentifier];
                if (xpcServiceIdentifier)
                {
                  OUTLINED_FUNCTION_2_11();
                }

                else
                {
                  [identity consistentLaunchdJobLabel];
                  objc_claimAutoreleasedReturnValue();
                  OUTLINED_FUNCTION_1_21();
                }
              }

              [v7 invalidationDuration];
              OUTLINED_FUNCTION_0_19();
              v14 = "ExceededTimeLimit_FinishTaskAfterBackgroundContentFetching";
              goto LABEL_203;
            }

            if (legacyReason == 50003)
            {
              if (!v12)
              {
                goto LABEL_208;
              }

              embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
              if (embeddedApplicationIdentifier)
              {
                OUTLINED_FUNCTION_3_5();
              }

              else
              {
                xpcServiceIdentifier = [identity xpcServiceIdentifier];
                if (xpcServiceIdentifier)
                {
                  OUTLINED_FUNCTION_2_11();
                }

                else
                {
                  [identity consistentLaunchdJobLabel];
                  objc_claimAutoreleasedReturnValue();
                  OUTLINED_FUNCTION_1_21();
                }
              }

              [v7 invalidationDuration];
              OUTLINED_FUNCTION_0_19();
              v14 = "ExceededTimeLimit_FinishTaskAfterNotificationAction";
              goto LABEL_203;
            }

            if (legacyReason != 50004)
            {
              goto LABEL_16;
            }

            if (v12)
            {
              embeddedApplicationIdentifier = [identity embeddedApplicationIdentifier];
              if (embeddedApplicationIdentifier)
              {
                OUTLINED_FUNCTION_3_5();
              }

              else
              {
                xpcServiceIdentifier = [identity xpcServiceIdentifier];
                if (xpcServiceIdentifier)
                {
                  OUTLINED_FUNCTION_2_11();
                }

                else
                {
                  [identity consistentLaunchdJobLabel];
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
  *self = 0;
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
  v5 = *self;
  _os_crash_msg();
  __break(1u);
}

@end