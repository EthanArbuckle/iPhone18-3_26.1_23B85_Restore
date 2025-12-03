@interface RBAssertionManager
+ (id)sharedWorkloop;
- (BOOL)_decreaseInFlightOperationsForOriginator:(id)originator;
- (BOOL)_increaseInFlightOperationsForOriginator:(id)originator andSuspendIfNeeded:(id)needed;
- (BOOL)_lock_batchContextInvalidatesSynchronously:(id)synchronously;
- (BOOL)_lock_enforceAssertionLimitIfNecessaryForBatchContext:(id)context originatorProcess:(id)process error:(id *)error;
- (BOOL)_lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity:(id)identity;
- (BOOL)_lock_originatorHasExited:(id)exited;
- (BOOL)_lock_validateDescriptor:(id)descriptor originatorProcess:(id)process originatorState:(id)state concreteTarget:(id)target targetProcess:(id)targetProcess targetIdentity:(id)identity targetIdentifier:(id)identifier targetState:(id)self0 acquisitionContext:(id)self1 error:(id *)self2;
- (BOOL)_lock_willExceedAssertionLimitForOriginatorProcess:(id)process withIncomingCount:(unint64_t)count;
- (BOOL)addSavedEndowment:(id)endowment forProcess:(id)process;
- (BOOL)areTargetPropertiesValidForContext:(id)context forAttributeWithDomain:(id)domain andName:(id)name;
- (BOOL)containsAttributeWithDomain:(id)domain andName:(id)name;
- (BOOL)hasAssertionWithIdentifier:(id)identifier;
- (BOOL)hasAssertionWithIdentifierForTarget:(id)target identifier:(id)identifier;
- (BOOL)invalidateAssertionWithIdentifier:(id)identifier;
- (BOOL)invalidateAssertionsDueToCPUUsageViolationForProcessIdentifier:(id)identifier;
- (BOOL)isProcessForeground:(id)foreground;
- (NSString)debugDescription;
- (NSString)stateCaptureTitle;
- (RBAssertionManager)init;
- (RBAssertionManager)initWithDelegate:(id)delegate bundlePropertiesManager:(id)manager originatorPidStore:(id)store assertionDescriptorValidator:(id)validator timeProvider:(id)provider daemonContext:(id)context maxOperationsInFlight:(unint64_t)flight maxAssertionsPerOriginator:(unint64_t)self0;
- (RBSystemState)systemState;
- (double)_lock_delayedStartTimeForAssertion:(id)assertion;
- (double)_lock_invalidationTimeForAssertion:(id)assertion;
- (double)_lock_originatorExitTimeForAssertion:(id)assertion;
- (double)_lock_relativeStartTimeForAssertion:(id)assertion;
- (double)_lock_startTimeForAssertion:(id)assertion;
- (double)_remainingRuntimeForProcessIdentity:(id)identity;
- (double)eventQueue:(id)queue startTimeForAssertion:(id)assertion;
- (id)_concreteTargetForTarget:(id)target allowAbstractTarget:(BOOL)abstractTarget;
- (id)_lock_activateDelayedAssertionsForTargets:(id)targets;
- (id)_lock_assertionCreationAttributeContextForTargetIdentity:(id)identity originator:(id)originator;
- (id)_lock_createAssertionForDescriptor:(id)descriptor originatorState:(id)state acquisitionContext:(id)context error:(id *)error;
- (id)_lock_createAssertionWithAcquisitionContext:(id)context attributeContext:(id)attributeContext concreteTarget:(id)target targetIdentity:(id)identity originator:(id)originator error:(id *)error;
- (id)_lock_createAssertionsForBatchContext:(id)context originatorState:(id)state errorsByIndex:(id)index;
- (id)_lock_deactivateAssertions:(id)assertions;
- (id)_lock_deactivateDelayedAssertionsForTargets:(id)targets;
- (id)_lock_deactivateExistingAssertionsDelayedByIncomingAssertions:(id)assertions;
- (id)_lock_invalidateAssertionByConditions:(id)conditions changedAssertions:(id *)assertions;
- (id)_lock_originatorIdentifiersInAssertions:(id)assertions;
- (id)_lock_sortedAssertionsForTarget:(id)target;
- (id)_lock_targetIdentitiesInAssertions:(id)assertions;
- (id)_lock_updateStatesDueToChangingAssertions:(id)assertions invalidatedAssertions:(id)invalidatedAssertions;
- (id)additionalRestrictionsForDomain:(id)domain andName:(id)name;
- (id)allEntitlements;
- (id)assertionWithIdentifier:(id)identifier;
- (id)assertionsForOriginator:(id)originator;
- (id)attributesForDomain:(id)domain andName:(id)name context:(id)context withError:(id *)error;
- (id)endowmentNamespaceForDomain:(id)domain andName:(id)name;
- (id)limitationsForInstance:(id)instance;
- (id)originatorEntitlementsForDomain:(id)domain andName:(id)name;
- (id)popPluginHoldForAssertion:(id)assertion;
- (id)restrictionsForDomain:(id)domain andName:(id)name;
- (id)savedEndowmentsForProcess:(id)process;
- (id)stateForIdentity:(id)identity;
- (id)targetEntitlementsForDomain:(id)domain andName:(id)name;
- (unint64_t)_lock_incomingAssertionCountForBatchContext:(id)context originatorIdentifier:(id)identifier;
- (unint64_t)_lock_numberOfStartTimeDefiningAssertionsForTargetProcessIdentity:(id)identity;
- (unint64_t)_lock_resolvePreliminaryStatesForNonExistingProcessesWithAssertions:(id)assertions completionPolicy:(unint64_t)policy;
- (void)_acquireAssertions:(id)assertions invalidateIdentifiers:(id)identifiers forOriginatorProcess:(id)process completionPolicy:(unint64_t)policy acquisitionErrorsByIndex:(id)index completeStage:(id)stage;
- (void)_acquireUnderlyingAssertionForProcess:(id)process;
- (void)_decreaseInFlightOperationsForTargetIdentities:(id)identities;
- (void)_dumpAssertions;
- (void)_increaseInFlightOperationsForTargetIdentities:(id)identities;
- (void)_invalidateAssertionsWithContext:(id)context;
- (void)_lock_addAssertion:(id)assertion;
- (void)_lock_checkAssertionToInvalidateByCondition:(id)condition condition:(id)a4 currentValue:(id)value assertionsToInvalidate:(id)invalidate;
- (void)_lock_clearStartTimesForUnbusyTargets:(id)targets;
- (void)_lock_dumpAssertionsForTarget:(id)target;
- (void)_lock_enqueueAssertionsForRemoval:(id)removal;
- (void)_lock_finalizeRemovingAssertions:(id)assertions;
- (void)_lock_invalidateAssertions:(id)assertions forceSync:(BOOL)sync;
- (void)_lock_notifyDelegateOfExcessiveAssertionsForOriginatorProcess:(id)process;
- (void)_lock_notifyDelegateOfInvalidatedAssertions:(id)assertions;
- (void)_lock_notifyDelegateOfProcessStateChangeSet:(id)set;
- (void)_lock_removeAssertion:(id)assertion;
- (void)_lock_removeAssertions:(id)assertions andUpdateChangedAssertions:(id)changedAssertions;
- (void)_lock_removeInvalidAssertions;
- (void)_lock_removeStateForProcessIdentityIfNecessary:(id)necessary;
- (void)_lock_setState:(id)state forProcessIdentity:(id)identity;
- (void)_lock_setSystemState:(id)state;
- (void)_removeInvalidAssertions;
- (void)acquireAssertionWithContext:(id)context completion:(id)completion;
- (void)commitBatchWithContext:(id)context completion:(id)completion;
- (void)eventQueue:(id)queue handleAssertionsExpirationWarningEventForProcessIdentity:(id)identity expirationTime:(double)time;
- (void)eventQueue:(id)queue handleInvalidationEventForAssertion:(id)assertion;
- (void)eventQueue:(id)queue handleWarningEventForAssertion:(id)assertion;
- (void)periodicRunningProcessDump;
- (void)processDidLaunch:(id)launch;
- (void)processDidTerminate:(id)terminate;
- (void)revalidateAssertionsForProcessIdentities:(id)identities;
@end

@implementation RBAssertionManager

void __37__RBAssertionManager__dumpAssertions__block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  os_unfair_lock_lock((*(a1 + 32) + 24));
  v2 = [*(*(a1 + 32) + 192) copy];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = v2;
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(a1 + 32) _lock_dumpAssertionsForTarget:{*(*(&v9 + 1) + 8 * v7++), v9}];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  os_unfair_lock_unlock((*(a1 + 32) + 24));
  [*(a1 + 32) _dumpAssertions];

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_dumpAssertions
{
  timeProvider = self->_timeProvider;
  v4 = dispatch_get_global_queue(17, 0);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __37__RBAssertionManager__dumpAssertions__block_invoke;
  v5[3] = &unk_279B32CB0;
  v5[4] = self;
  [(RBTimeProviding *)timeProvider executeAfter:v4 onQueue:v5 block:600.0];
}

- (void)_removeInvalidAssertions
{
  os_unfair_lock_lock(&self->_lock);
  [(RBAssertionManager *)self _lock_removeInvalidAssertions];

  os_unfair_lock_unlock(&self->_lock);
}

- (void)_lock_removeInvalidAssertions
{
  v9 = *MEMORY[0x277D85DE8];
  os_unfair_lock_assert_owner(&self->_lock);
  v3 = rbs_assertion_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = [(NSMutableSet *)self->_invalidAssertions count];
    v7 = 134349056;
    v8 = v4;
    _os_log_impl(&dword_262485000, v3, OS_LOG_TYPE_INFO, "Processing invalidation queue with %{public}lu assertions", &v7, 0xCu);
  }

  v5 = [(NSMutableSet *)self->_invalidAssertions copy];
  [(RBAssertionManager *)self _lock_removeAssertions:v5 andUpdateChangedAssertions:0];

  [(NSMutableSet *)self->_invalidAssertions removeAllObjects];
  v6 = *MEMORY[0x277D85DE8];
}

- (RBSystemState)systemState
{
  os_unfair_lock_lock(&self->_lock);
  v3 = [(RBSystemState *)self->_systemState copy];
  os_unfair_lock_unlock(&self->_lock);

  return v3;
}

+ (id)sharedWorkloop
{
  if (sharedWorkloop_onceToken != -1)
  {
    +[RBAssertionManager sharedWorkloop];
  }

  v3 = sharedWorkloop_workloop;

  return v3;
}

void __36__RBAssertionManager_sharedWorkloop__block_invoke()
{
  inactive = dispatch_workloop_create_inactive("RBAssertionManager");
  v1 = sharedWorkloop_workloop;
  sharedWorkloop_workloop = inactive;

  dispatch_set_qos_class_fallback();
  v2 = sharedWorkloop_workloop;

  dispatch_activate(v2);
}

- (void)periodicRunningProcessDump
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __48__RBAssertionManager_periodicRunningProcessDump__block_invoke;
  block[3] = &unk_279B32CB0;
  block[4] = self;
  if (periodicRunningProcessDump_onceToken != -1)
  {
    dispatch_once(&periodicRunningProcessDump_onceToken, block);
  }
}

void __48__RBAssertionManager_periodicRunningProcessDump__block_invoke(uint64_t a1)
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v3 = dispatch_queue_create("RBRunningProcessDump", v2);
  v4 = periodicRunningProcessDump_periodicQueue;
  periodicRunningProcessDump_periodicQueue = v3;

  v5 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, periodicRunningProcessDump_periodicQueue);
  v6 = periodicRunningProcessDump_periodicSource;
  periodicRunningProcessDump_periodicSource = v5;

  handler[0] = MEMORY[0x277D85DD0];
  handler[1] = 3221225472;
  handler[2] = __48__RBAssertionManager_periodicRunningProcessDump__block_invoke_2;
  handler[3] = &unk_279B32CB0;
  handler[4] = *(a1 + 32);
  dispatch_source_set_event_handler(periodicRunningProcessDump_periodicSource, handler);
  dispatch_activate(periodicRunningProcessDump_periodicSource);
  v7 = periodicRunningProcessDump_periodicSource;
  v8 = dispatch_time(0, 1800000000000);
  dispatch_source_set_timer(v7, v8, 0x1A3185C5000uLL, 0x29E8D60800uLL);
}

void __48__RBAssertionManager_periodicRunningProcessDump__block_invoke_2(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v1 = [*(*(a1 + 32) + 64) allValue];
  v2 = rbs_process_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_262485000, v2, OS_LOG_TYPE_DEFAULT, "Periodic Run States >>>>>", buf, 2u);
  }

  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v16;
    *&v5 = 138543362;
    v14 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 preventSuspend])
        {
          v10 = rbs_process_log();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
          {
            v11 = [v9 debugDescription];
            *buf = v14;
            v20 = v11;
            _os_log_impl(&dword_262485000, v10, OS_LOG_TYPE_DEFAULT, "Periodic Run States %{public}@", buf, 0xCu);
          }
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  v12 = rbs_process_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_262485000, v12, OS_LOG_TYPE_DEFAULT, "Periodic Run States <<<<<", buf, 2u);
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (RBAssertionManager)init
{
  currentHandler = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"RBAssertionManager.m" lineNumber:159 description:@"-init is not allowed on RBAssertionManager"];

  return 0;
}

- (RBAssertionManager)initWithDelegate:(id)delegate bundlePropertiesManager:(id)manager originatorPidStore:(id)store assertionDescriptorValidator:(id)validator timeProvider:(id)provider daemonContext:(id)context maxOperationsInFlight:(unint64_t)flight maxAssertionsPerOriginator:(unint64_t)self0
{
  delegateCopy = delegate;
  managerCopy = manager;
  storeCopy = store;
  validatorCopy = validator;
  providerCopy = provider;
  obj = context;
  contextCopy = context;
  v67.receiver = self;
  v67.super_class = RBAssertionManager;
  v21 = [(RBAssertionManager *)&v67 init];
  if (!v21)
  {
    goto LABEL_11;
  }

  if (!delegateCopy)
  {
    [RBAssertionManager initWithDelegate:bundlePropertiesManager:originatorPidStore:assertionDescriptorValidator:timeProvider:daemonContext:maxOperationsInFlight:maxAssertionsPerOriginator:];
    if (managerCopy)
    {
      goto LABEL_4;
    }

LABEL_13:
    [RBAssertionManager initWithDelegate:bundlePropertiesManager:originatorPidStore:assertionDescriptorValidator:timeProvider:daemonContext:maxOperationsInFlight:maxAssertionsPerOriginator:];
    goto LABEL_4;
  }

  if (!managerCopy)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (!storeCopy)
  {
    [RBAssertionManager initWithDelegate:bundlePropertiesManager:originatorPidStore:assertionDescriptorValidator:timeProvider:daemonContext:maxOperationsInFlight:maxAssertionsPerOriginator:];
  }

  if (!validatorCopy)
  {
    [RBAssertionManager initWithDelegate:bundlePropertiesManager:originatorPidStore:assertionDescriptorValidator:timeProvider:daemonContext:maxOperationsInFlight:maxAssertionsPerOriginator:];
  }

  v63 = contextCopy;
  if (!contextCopy)
  {
    [RBAssertionManager initWithDelegate:bundlePropertiesManager:originatorPidStore:assertionDescriptorValidator:timeProvider:daemonContext:maxOperationsInFlight:maxAssertionsPerOriginator:];
  }

  v21->_lock._os_unfair_lock_opaque = 0;
  v22 = +[RBAssertionManager sharedWorkloop];
  workloop = v21->_workloop;
  v21->_workloop = v22;

  v24 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v25 = dispatch_queue_create("RBAssertionManagerCallOut", v24);
  calloutQueue = v21->_calloutQueue;
  v21->_calloutQueue = v25;

  objc_storeStrong(&v21->_delegate, delegate);
  objc_storeStrong(&v21->_bundlePropertiesManager, manager);
  objc_storeStrong(&v21->_descriptorValidator, validator);
  objc_storeStrong(&v21->_originatorPidStore, store);
  objc_storeStrong(&v21->_timeProvider, provider);
  v21->_maxOperationsInFlight = flight;
  v21->_maxAssertionsPerOriginator = originator;
  objc_storeStrong(&v21->_daemonContext, obj);
  v27 = objc_alloc_init(RBAssertionCollection);
  assertions = v21->_assertions;
  v21->_assertions = v27;

  v29 = objc_alloc_init(MEMORY[0x277CBEB38]);
  pluginHoldsForAssertions = v21->_pluginHoldsForAssertions;
  v21->_pluginHoldsForAssertions = v29;

  v31 = objc_alloc_init(RBProcessIndex);
  processIndex = v21->_processIndex;
  v21->_processIndex = v31;

  v33 = objc_alloc_init(RBProcessMap);
  stateMap = v21->_stateMap;
  v21->_stateMap = v33;

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  relativeStartTimesByTargetIdentity = v21->_relativeStartTimesByTargetIdentity;
  v21->_relativeStartTimesByTargetIdentity = dictionary;

  weakToStrongObjectsMapTable = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  originatorExitTimesByAssertion = v21->_originatorExitTimesByAssertion;
  v21->_originatorExitTimesByAssertion = weakToStrongObjectsMapTable;

  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  originatorToInFlightOperationsCountMap = v21->_originatorToInFlightOperationsCountMap;
  v21->_originatorToInFlightOperationsCountMap = dictionary2;

  v41 = objc_alloc_init(MEMORY[0x277CCA940]);
  inFlightAssertionTargets = v21->_inFlightAssertionTargets;
  v21->_inFlightAssertionTargets = v41;

  v21->_inFlightOperationsLock._os_unfair_lock_opaque = 0;
  v43 = objc_alloc_init(MEMORY[0x277CBEB58]);
  inFlightTerminations = v21->_inFlightTerminations;
  v21->_inFlightTerminations = v43;

  v45 = [[RBAssertionManagerEventQueue alloc] initWithTimeProvider:providerCopy];
  eventQueue = v21->_eventQueue;
  v21->_eventQueue = v45;

  [(RBAssertionManagerEventQueue *)v21->_eventQueue setDelegate:v21];
  v47 = [MEMORY[0x277CBEB58] set];
  assertionTargets = v21->_assertionTargets;
  v21->_assertionTargets = v47;

  v49 = [MEMORY[0x277CBEB58] set];
  acquiringAssertionIdentifiers = v21->_acquiringAssertionIdentifiers;
  v21->_acquiringAssertionIdentifiers = v49;

  v51 = [MEMORY[0x277CBEB58] set];
  invalidAssertions = v21->_invalidAssertions;
  v21->_invalidAssertions = v51;

  weakToStrongObjectsMapTable2 = [MEMORY[0x277CCAB00] weakToStrongObjectsMapTable];
  savedEndowments = v21->_savedEndowments;
  v21->_savedEndowments = weakToStrongObjectsMapTable2;

  v55 = objc_alloc_init(RBAssertionStateResolver);
  stateResolver = v21->_stateResolver;
  v21->_stateResolver = v55;

  [(RBAssertionStateResolver *)v21->_stateResolver setAssertionCollection:v21->_assertions];
  [(RBAssertionStateResolver *)v21->_stateResolver setProcessIndex:v21->_processIndex];
  [(RBAssertionStateResolver *)v21->_stateResolver setStateMap:v21->_stateMap];
  v57 = v21->_stateResolver;
  contextCopy = v63;
  domainAttributeManager = [v63 domainAttributeManager];
  [(RBAssertionStateResolver *)v57 setDomainAttributeManager:domainAttributeManager];

  [(RBAssertionStateResolver *)v21->_stateResolver setBundlePropertiesManager:v21->_bundlePropertiesManager];
  v59 = v21->_stateResolver;
  entitlementManager = [(RBDaemonContextProviding *)v21->_daemonContext entitlementManager];
  [(RBAssertionStateResolver *)v59 setEntitlementManager:entitlementManager];

  [(RBAssertionStateResolver *)v21->_stateResolver setSavedEndowments:v21->_savedEndowments];
  [(RBAssertionManager *)v21 periodicRunningProcessDump];
LABEL_11:

  return v21;
}

- (NSString)debugDescription
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  v4 = [objc_opt_class() description];
  v5 = [(RBAssertionCollection *)self->_assertions count];
  v6 = [(RBSystemState *)self->_systemState debugDescription];
  v7 = [(RBAssertionManagerEventQueue *)self->_eventQueue count];
  dictionary = [(RBProcessMap *)self->_stateMap dictionary];
  v9 = [dictionary entriesToStringWithIndent:1 debug:1];
  v10 = [v3 initWithFormat:@"<%@| assertionCount:%lu systemState:%@ eventQueueCount:%lu processStates:{\n%@}>", v4, v5, v6, v7, v9];

  return v10;
}

- (void)commitBatchWithContext:(id)context completion:(id)completion
{
  v101 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  completionCopy = completion;
  dispatch_assert_queue_not_V2(self->_workloop);
  dispatch_assert_queue_not_V2(self->_calloutQueue);
  selfCopy = self;
  if (!contextCopy)
  {
    [RBAssertionManager commitBatchWithContext:completion:];
  }

  v92[0] = 0;
  v92[1] = v92;
  v92[2] = 0x2020000000;
  v93 = 0;
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke;
  v87[3] = &unk_279B32D50;
  v90 = v92;
  v91 = a2;
  v87[4] = self;
  v59 = contextCopy;
  v88 = v59;
  v52 = completionCopy;
  v89 = v52;
  v54 = MEMORY[0x266729AD0](v87);
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  array = [MEMORY[0x277CBEB18] array];
  dictionary2 = [MEMORY[0x277CBEB38] dictionary];
  os_unfair_lock_lock(&self->_lock);
  process = [v59 process];
  identifier = [process identifier];
  identity = [process identity];
  acquisitionPolicy = [v59 acquisitionPolicy];
  if (acquisitionPolicy == 1)
  {
    v12 = 1;
  }

  else if ([(RBAssertionManager *)selfCopy _lock_batchContextInvalidatesSynchronously:v59])
  {
    v12 = 1;
  }

  else
  {
    v12 = acquisitionPolicy;
  }

  v57 = v12;
  descriptorsToAcquire = [v59 descriptorsToAcquire];
  v56 = process;
  v14 = [descriptorsToAcquire count] == 0;

  if (v14)
  {
    v51 = 0;
  }

  else
  {
    v86 = 0;
    v15 = [(RBAssertionManager *)selfCopy _lock_enforceAssertionLimitIfNecessaryForBatchContext:v59 originatorProcess:v56 error:&v86];
    v16 = v86;
    if (v15)
    {
      os_unfair_lock_unlock(&selfCopy->_lock);
      (v54)[2](v54, 0, 0, v16);
      goto LABEL_39;
    }

    v50 = [(RBProcessMap *)selfCopy->_stateMap valueForIdentity:identity];
    dictionary3 = [MEMORY[0x277CBEB38] dictionary];
    v48 = v16;

    v51 = [(RBAssertionManager *)selfCopy _lock_createAssertionsForBatchContext:v59 originatorState:v50 errorsByIndex:dictionary3];
    if ([v51 count])
    {
      v57 = [(RBAssertionManager *)selfCopy _lock_resolvePreliminaryStatesForNonExistingProcessesWithAssertions:v51 completionPolicy:v57, v16];
      v84 = 0u;
      v85 = 0u;
      v82 = 0u;
      v83 = 0u;
      obj = v51;
      v17 = [obj countByEnumeratingWithState:&v82 objects:v100 count:16];
      if (v17)
      {
        v61 = *v83;
        do
        {
          v63 = v17;
          for (i = 0; i != v63; ++i)
          {
            if (*v83 != v61)
            {
              objc_enumerationMutation(obj);
            }

            v19 = *(*(&v82 + 1) + 8 * i);
            v20 = [obj objectForKeyedSubscript:v19];
            identifier2 = [v20 identifier];
            [dictionary setObject:identifier2 forKeyedSubscript:v19];
            target = [v20 target];
            identity2 = [target identity];

            if (identity2)
            {
              [array addObject:identity2];
            }

            target2 = [v20 target];
            process2 = [target2 process];

            v26 = rbs_sp_assertion_log();
            v27 = os_signpost_id_make_with_pointer(v26, [identifier2 hash]);

            v28 = rbs_sp_assertion_log();
            v29 = v28;
            if (v27 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v28))
            {
              explanation = [v20 explanation];
              shortDescription = [process2 shortDescription];
              v32 = [identifier2 description];
              *buf = 138543874;
              v95 = explanation;
              v96 = 2114;
              v97 = shortDescription;
              v98 = 2114;
              v99 = v32;
              _os_signpost_emit_with_name_impl(&dword_262485000, v29, OS_SIGNPOST_INTERVAL_BEGIN, v27, "ClientAssertion", "explanation=%{public}@;target=%{public}@;identifier=%{public}@", buf, 0x20u);
            }
          }

          v17 = [obj countByEnumeratingWithState:&v82 objects:v100 count:16];
        }

        while (v17);
      }
    }

    dictionary2 = dictionary3;
  }

  os_unfair_lock_unlock(&selfCopy->_lock);
  dispatch_sync(selfCopy->_calloutQueue, &__block_literal_global_53);
  currentContext = [MEMORY[0x277D47038] currentContext];
  connection = [currentContext connection];

  [(RBAssertionManager *)selfCopy _increaseInFlightOperationsForTargetIdentities:array];
  if (connection && [(RBAssertionManager *)selfCopy _increaseInFlightOperationsForOriginator:identifier andSuspendIfNeeded:connection])
  {
    v35 = rbs_process_log();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
    {
      [RBAssertionManager commitBatchWithContext:completion:];
    }
  }

  v72[0] = MEMORY[0x277D85DD0];
  v72[1] = 3221225472;
  v72[2] = __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke_55;
  v72[3] = &unk_279B32D78;
  v72[4] = selfCopy;
  v73 = array;
  v36 = v51;
  v74 = v36;
  v37 = connection;
  v75 = v37;
  v76 = identifier;
  v38 = v56;
  v77 = v38;
  v81 = v57;
  v80 = v54;
  v78 = dictionary;
  v39 = dictionary2;
  v79 = v39;
  v40 = [v72 copy];
  v40[2](v40, 0, 0);
  v65[0] = MEMORY[0x277D85DD0];
  v65[1] = 3221225472;
  v65[2] = __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke_58;
  v65[3] = &unk_279B32DA0;
  v65[4] = selfCopy;
  v41 = v36;
  v66 = v41;
  v67 = v59;
  v68 = v38;
  v71 = v57;
  dictionary2 = v39;
  v69 = dictionary2;
  v42 = v40;
  v70 = v42;
  v43 = MEMORY[0x266729AD0](v65);
  currentContext2 = [MEMORY[0x277D47038] currentContext];
  v45 = currentContext2;
  if (v57 == 1 && currentContext2)
  {
    [currentContext2 handoffToQueue:selfCopy->_workloop block:v43];
  }

  else
  {
    workloop = selfCopy->_workloop;
    if (v57 == 1)
    {
      dispatch_async_and_wait(workloop, v43);
    }

    else
    {
      dispatch_async(workloop, v43);
    }
  }

  v16 = v41;
LABEL_39:

  _Block_object_dispose(v92, 8);
  v47 = *MEMORY[0x277D85DE8];
}

void __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(*(a1 + 56) + 8);
  if (*(v10 + 24) == 1)
  {
    __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke_cold_1(a1, a1 + 56, &v13);
    v10 = v13;
  }

  *(v10 + 24) = 1;
  if (v9)
  {
    v11 = rbs_assertion_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke_cold_2(a1, v9, v11);
    }
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    (*(v12 + 16))(v12, v7, v8, v9);
  }
}

void __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke_55(uint64_t a1, uint64_t a2, void *a3)
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = v5;
  if (a2 == 1)
  {
    v20 = v5;
    [*(a1 + 32) _decreaseInFlightOperationsForTargetIdentities:*(a1 + 40)];
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v7 = *(a1 + 48);
    v8 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v25;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v25 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = [*(a1 + 48) objectForKeyedSubscript:*(*(&v24 + 1) + 8 * i)];
          v13 = rbs_assertion_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            *buf = 138543362;
            v29 = v12;
            _os_log_impl(&dword_262485000, v13, OS_LOG_TYPE_INFO, "Finished acquiring assertion %{public}@", buf, 0xCu);
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v24 objects:v30 count:16];
      }

      while (v9);
    }

    v6 = v20;
    if (*(a1 + 56) && [*(a1 + 32) _decreaseInFlightOperationsForOriginator:*(a1 + 64)])
    {
      v14 = *(a1 + 32);
      v15 = *(v14 + 144);
      v16 = *(v14 + 8);
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke_56;
      v21[3] = &unk_279B32B80;
      v22 = *(a1 + 72);
      v23 = *(a1 + 56);
      [v15 executeAfter:v16 onQueue:v21 block:0.01];
    }
  }

  if (*(a1 + 104) == a2)
  {
    v17 = *(a1 + 88);
    v18 = *(a1 + 80);
    (*(*(a1 + 96) + 16))();
  }

  v19 = *MEMORY[0x277D85DE8];
}

void __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke_56(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  v2 = rbs_process_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v5 = 138543362;
    v6 = v3;
    _os_log_impl(&dword_262485000, v2, OS_LOG_TYPE_DEFAULT, "Resuming connection from %{public}@", &v5, 0xCu);
  }

  xpc_connection_resume(*(a1 + 40));
  v4 = *MEMORY[0x277D85DE8];
}

void __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke_58(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = [*(a1 + 48) identifiersToInvalidate];
  [v2 _acquireAssertions:v3 invalidateIdentifiers:v4 forOriginatorProcess:*(a1 + 56) completionPolicy:*(a1 + 80) acquisitionErrorsByIndex:*(a1 + 64) completeStage:*(a1 + 72)];
}

- (void)acquireAssertionWithContext:(id)context completion:(id)completion
{
  v19[1] = *MEMORY[0x277D85DE8];
  completionCopy = completion;
  contextCopy = context;
  process = [contextCopy process];
  descriptor = [contextCopy descriptor];
  v19[0] = descriptor;
  v10 = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:1];
  v11 = [RBAssertionBatchContext contextForProcess:process withDescriptorsToAcquire:v10 identifiersToInvalidate:MEMORY[0x277CBEBF8] daemonContext:self->_daemonContext];

  [v11 setUnitTesting:{objc_msgSend(contextCopy, "unitTesting")}];
  holdToken = [contextCopy holdToken];
  [v11 setHoldToken:holdToken];

  [v11 setAllowAbstractTarget:{objc_msgSend(contextCopy, "allowAbstractTarget")}];
  targetClientRestriction = [contextCopy targetClientRestriction];
  [v11 setTargetClientRestriction:targetClientRestriction];

  [v11 setAcquisitionPolicy:{objc_msgSend(contextCopy, "acquisitionPolicy")}];
  launchAssertion = [contextCopy launchAssertion];

  [v11 setLaunchAssertion:launchAssertion];
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __61__RBAssertionManager_acquireAssertionWithContext_completion___block_invoke;
  v17[3] = &unk_279B32DC8;
  v18 = completionCopy;
  v15 = completionCopy;
  [(RBAssertionManager *)self commitBatchWithContext:v11 completion:v17];

  v16 = *MEMORY[0x277D85DE8];
}

void __61__RBAssertionManager_acquireAssertionWithContext_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(a1 + 32);
  if (a4)
  {
    v5 = *(v4 + 16);
    v6 = *(a1 + 32);

    v5(v6, a4);
  }

  else
  {
    v7 = [a3 objectForKeyedSubscript:&unk_28751AD68];
    (*(v4 + 16))(v4, v7);
  }
}

- (BOOL)invalidateAssertionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    [RBAssertionManager invalidateAssertionWithIdentifier:];
  }

  os_unfair_lock_lock(&self->_lock);
  v5 = [(RBAssertionCollection *)self->_assertions assertionWithIdentifier:identifierCopy];
  if ([(NSMutableSet *)self->_acquiringAssertionIdentifiers containsObject:identifierCopy])
  {
    [(NSMutableSet *)self->_acquiringAssertionIdentifiers removeObject:identifierCopy];
  }

  os_unfair_lock_unlock(&self->_lock);
  v6 = [(RBAssertionManager *)self invalidateAssertion:v5];

  return v6;
}

- (BOOL)invalidateAssertionsDueToCPUUsageViolationForProcessIdentifier:(id)identifier
{
  v33 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(RBProcessIndex *)self->_processIndex processForIdentifier:identifierCopy];
  identity = [v5 identity];
  if (identity)
  {
    v23 = v5;
    v22 = [(RBProcessMap *)self->_stateMap valueForIdentity:identity];
    role = [v22 role];
    v8 = [MEMORY[0x277CBEB58] set];
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [(RBAssertionCollection *)self->_assertions assertionsForTargetIdentity:identity];
    v10 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v24 + 1) + 8 * i);
          if ([v14 maxCPUUsageViolationPolicyForRole:role] == 1)
          {
            [v14 setInvalidationReason:5];
            [v8 addObject:v14];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v24 objects:v32 count:16];
      }

      while (v11);
    }

    v15 = rbs_process_log();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [identifierCopy pid];
      v17 = [v8 count];
      *buf = 67240448;
      v29 = v16;
      v30 = 2050;
      v31 = v17;
      _os_log_impl(&dword_262485000, v15, OS_LOG_TYPE_DEFAULT, "%{public}d violated CPU limit; removing %{public}lu assertions", buf, 0x12u);
    }

    v18 = [v8 count];
    v19 = v18 != 0;
    v5 = v23;
    if (v18)
    {
      [(RBAssertionManager *)self _lock_enqueueAssertionsForRemoval:v8];
    }
  }

  else
  {
    v19 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);

  v20 = *MEMORY[0x277D85DE8];
  return v19;
}

- (id)limitationsForInstance:(id)instance
{
  v4 = MEMORY[0x277D46F78];
  instanceCopy = instance;
  v6 = objc_alloc_init(v4);
  identity = [instanceCopy identity];

  [(RBAssertionManager *)self _remainingRuntimeForProcessIdentity:identity];
  [v6 setRunTime:?];

  return v6;
}

- (id)assertionsForOriginator:(id)originator
{
  v3 = [(RBAssertionCollection *)self->_assertions assertionsForOriginator:originator];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  v6 = v5;

  return v6;
}

- (BOOL)hasAssertionWithIdentifier:(id)identifier
{
  v3 = [(RBAssertionCollection *)self->_assertions assertionWithIdentifier:identifier];
  v4 = v3 != 0;

  return v4;
}

- (id)assertionWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(RBAssertionCollection *)self->_assertions assertionWithIdentifier:identifierCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (BOOL)hasAssertionWithIdentifierForTarget:(id)target identifier:(id)identifier
{
  targetCopy = target;
  identifierCopy = identifier;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  assertions = self->_assertions;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __69__RBAssertionManager_hasAssertionWithIdentifierForTarget_identifier___block_invoke;
  v11[3] = &unk_279B32DF0;
  v9 = identifierCopy;
  v12 = v9;
  v13 = &v14;
  [(RBAssertionCollection *)assertions enumerateAssertionsForTargetProcessIdentity:targetCopy withBlock:v11];
  LOBYTE(assertions) = *(v15 + 24);

  _Block_object_dispose(&v14, 8);
  return assertions;
}

void __69__RBAssertionManager_hasAssertionWithIdentifierForTarget_identifier___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = [a2 identifier];
  v6 = [v5 isEqual:*(a1 + 32)];

  if (v6)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (id)popPluginHoldForAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(NSMutableDictionary *)self->_pluginHoldsForAssertions objectForKey:assertionCopy];
  if (v5)
  {
    [(NSMutableDictionary *)self->_pluginHoldsForAssertions removeObjectForKey:assertionCopy];
  }

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)processDidLaunch:(id)launch
{
  v34 = *MEMORY[0x277D85DE8];
  launchCopy = launch;
  os_unfair_lock_assert_not_owner(&self->_lock);
  identity = [launchCopy identity];
  os_unfair_lock_lock(&self->_lock);
  if ([(RBProcessIndex *)self->_processIndex addProcess:launchCopy])
  {
    v6 = [(RBProcessMap *)self->_stateMap valueForIdentity:identity];
    if (!v6)
    {
      v6 = [[RBProcessState alloc] initWithIdentity:identity];
      [(RBAssertionManager *)self _lock_setState:v6 forProcessIdentity:identity];
    }

    v19 = v6;
    v20 = identity;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    selfCopy = self;
    v7 = [(RBAssertionCollection *)self->_assertions assertionsForTargetIdentity:identity];
    v8 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = 0;
      v11 = *v26;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v26 != v11)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v25 + 1) + 8 * i);
          [v13 setTargetProcessForAbstract:launchCopy];
          if (!v10)
          {
            v10 = [MEMORY[0x277CBEB58] set];
          }

          v14 = rbs_assertion_log();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v30 = launchCopy;
            v31 = 2112;
            v32 = v13;
            _os_log_impl(&dword_262485000, v14, OS_LOG_TYPE_DEFAULT, "%@: applying persistent assertion '%@'", buf, 0x16u);
          }

          [v10 addObject:v13];
        }

        v9 = [v7 countByEnumeratingWithState:&v25 objects:v33 count:16];
      }

      while (v9);
    }

    else
    {
      v10 = 0;
    }

    self = selfCopy;
    calloutQueue = selfCopy->_calloutQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __39__RBAssertionManager_processDidLaunch___block_invoke;
    block[3] = &unk_279B329D0;
    block[4] = selfCopy;
    v23 = launchCopy;
    v24 = v19;
    v16 = v19;
    dispatch_async(calloutQueue, block);

    if (v10)
    {
      v17 = [MEMORY[0x277CBEB98] set];
      [(RBAssertionManager *)selfCopy _lock_removeAssertions:v17 andUpdateChangedAssertions:v10];
    }

    identity = v20;
  }

  else
  {
    v10 = 0;
  }

  os_unfair_lock_unlock(&self->_lock);
  dispatch_sync(self->_calloutQueue, &__block_literal_global_70);
  [(RBAssertionManager *)self _acquireUnderlyingAssertionForProcess:launchCopy];

  v18 = *MEMORY[0x277D85DE8];
}

uint64_t __39__RBAssertionManager_processDidLaunch___block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return [*(a1[4] + 32) assertionManager:? didAddProcess:? withState:?];
}

- (BOOL)isProcessForeground:(id)foreground
{
  v34 = *MEMORY[0x277D85DE8];
  foregroundCopy = foreground;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if ([(RBProcessIndex *)self->_processIndex containsProcess:foregroundCopy])
  {
    identity = [foregroundCopy identity];
    v6 = [(RBAssertionCollection *)self->_assertions assertionsForTargetIdentity:identity];
    os_unfair_lock_unlock(&self->_lock);
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v7 = v6;
    v8 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v29;
      v11 = *MEMORY[0x277D470D0];
      v23 = *v29;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v13 = *(*(&v28 + 1) + 8 * i);
          v24 = 0u;
          v25 = 0u;
          v26 = 0u;
          v27 = 0u;
          inheritances = [v13 inheritances];
          allNamespaces = [inheritances allNamespaces];

          v16 = [allNamespaces countByEnumeratingWithState:&v24 objects:v32 count:16];
          if (v16)
          {
            v17 = v16;
            v18 = *v25;
            while (2)
            {
              for (j = 0; j != v17; ++j)
              {
                if (*v25 != v18)
                {
                  objc_enumerationMutation(allNamespaces);
                }

                if ([*(*(&v24 + 1) + 8 * j) isEqual:v11])
                {

                  v20 = 1;
                  goto LABEL_23;
                }
              }

              v17 = [allNamespaces countByEnumeratingWithState:&v24 objects:v32 count:16];
              if (v17)
              {
                continue;
              }

              break;
            }
          }

          v10 = v23;
        }

        v9 = [v7 countByEnumeratingWithState:&v28 objects:v33 count:16];
        v20 = 0;
      }

      while (v9);
    }

    else
    {
      v20 = 0;
    }

LABEL_23:
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    identity = rbs_process_log();
    if (os_log_type_enabled(identity, OS_LOG_TYPE_ERROR))
    {
      [RBAssertionManager isProcessForeground:];
    }

    v20 = 0;
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)processDidTerminate:(id)terminate
{
  v63 = *MEMORY[0x277D85DE8];
  terminateCopy = terminate;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  if ([(RBProcessIndex *)self->_processIndex containsProcess:terminateCopy])
  {
    [(NSMutableSet *)self->_inFlightTerminations addObject:terminateCopy];
    identity = [(RBProcessState *)terminateCopy identity];
    identifier = [(RBProcessState *)terminateCopy identifier];
    v6 = rbs_process_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v56 = terminateCopy;
      _os_log_impl(&dword_262485000, v6, OS_LOG_TYPE_DEFAULT, "Removing assertions for terminated process: %{public}@", buf, 0xCu);
    }

    v41 = terminateCopy;

    v7 = MEMORY[0x277CBEB58];
    v38 = identifier;
    v8 = [(RBAssertionCollection *)self->_assertions assertionsForOriginator:identifier];
    v9 = [v7 setWithSet:v8];

    v10 = [MEMORY[0x277CBEB58] set];
    v43 = [MEMORY[0x277CBEB58] set];
    v11 = MEMORY[0x277CCABB0];
    [(RBTimeProviding *)self->_timeProvider currentTime];
    v42 = [v11 numberWithDouble:?];
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v12 = v9;
    v13 = [v12 countByEnumeratingWithState:&v51 objects:v62 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v52;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v52 != v15)
          {
            objc_enumerationMutation(v12);
          }

          v17 = *(*(&v51 + 1) + 8 * i);
          if ([v17 startPolicy] == 3)
          {
            [(NSMapTable *)self->_originatorExitTimesByAssertion setObject:v42 forKey:v17];
            [v17 activate];
            [v43 addObject:v17];
            v18 = rbs_ttl_log();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
            {
              identifier2 = [v17 identifier];
              *buf = 138543362;
              v56 = identifier2;
              _os_log_impl(&dword_262485000, v18, OS_LOG_TYPE_DEFAULT, "Activating after-originator-exit assertion %{public}@", buf, 0xCu);
            }
          }

          else
          {
            [v17 setInvalidationReason:1];
            [v10 addObject:v17];
          }
        }

        v14 = [v12 countByEnumeratingWithState:&v51 objects:v62 count:16];
      }

      while (v14);
    }

    v49 = 0u;
    v50 = 0u;
    v47 = 0u;
    v48 = 0u;
    selfCopy = self;
    v20 = [(RBAssertionCollection *)self->_assertions assertionsForTargetIdentity:identity];
    v21 = [v20 countByEnumeratingWithState:&v47 objects:v61 count:16];
    v22 = v41;
    if (v21)
    {
      v23 = v21;
      v24 = *v48;
      do
      {
        for (j = 0; j != v23; ++j)
        {
          if (*v48 != v24)
          {
            objc_enumerationMutation(v20);
          }

          v26 = *(*(&v47 + 1) + 8 * j);
          if (([(RBProcessState *)v26 isPersistent]& 1) == 0)
          {
            if (![(RBProcessState *)v26 isLaunchAssertion])
            {
              goto LABEL_24;
            }

            identifier3 = [(RBProcessState *)v26 identifier];
            launchAssertionIdentifier = [(RBProcessState *)v22 launchAssertionIdentifier];
            v29 = [identifier3 isEqual:launchAssertionIdentifier];

            v22 = v41;
            if ((v29 & 1) == 0)
            {
              v30 = rbs_assertion_log();
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                rbs_pid = [(RBProcessState *)v41 rbs_pid];
                *buf = 138412802;
                v56 = v26;
                v57 = 2112;
                v58 = v41;
                v59 = 1024;
                v60 = rbs_pid;
                _os_log_impl(&dword_262485000, v30, OS_LOG_TYPE_DEFAULT, "Skipping assertion: %@ for invalidation as this doesn't belong to the terminating process: %@ with pid: %d", buf, 0x1Cu);
              }
            }

            else
            {
LABEL_24:
              [(RBProcessState *)v26 setInvalidationReason:1];
              [v10 addObject:v26];
            }
          }
        }

        v23 = [v20 countByEnumeratingWithState:&v47 objects:v61 count:16];
      }

      while (v23);
    }

    self = selfCopy;
    [(RBAssertionManager *)selfCopy _lock_removeAssertions:v10 andUpdateChangedAssertions:v43];
    [(NSMutableDictionary *)selfCopy->_relativeStartTimesByTargetIdentity removeObjectForKey:identity];
    v32 = [(RBProcessMap *)selfCopy->_stateMap valueForIdentity:identity];
    if (!v32)
    {
      v32 = [[RBProcessState alloc] initWithIdentity:identity];
    }

    v33 = rbs_process_log();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v56 = v32;
      _os_log_impl(&dword_262485000, v33, OS_LOG_TYPE_INFO, "Resolved state for exited process: %{public}@", buf, 0xCu);
    }

    [(RBProcessIndex *)selfCopy->_processIndex removeProcess:v41];
    [(NSMutableSet *)selfCopy->_inFlightTerminations removeObject:v41];
    calloutQueue = selfCopy->_calloutQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __42__RBAssertionManager_processDidTerminate___block_invoke;
    block[3] = &unk_279B329D0;
    block[4] = selfCopy;
    v45 = v41;
    v46 = v32;
    v35 = v32;
    terminateCopy = v41;
    v36 = v35;
    dispatch_async(calloutQueue, block);
    [(RBAssertionManager *)selfCopy _lock_removeStateForProcessIdentityIfNecessary:identity];
  }

  [(NSMapTable *)self->_savedEndowments removeObjectForKey:terminateCopy];
  os_unfair_lock_unlock(&self->_lock);

  v37 = *MEMORY[0x277D85DE8];
}

uint64_t __42__RBAssertionManager_processDidTerminate___block_invoke(void *a1)
{
  v1 = a1[5];
  v2 = a1[6];
  return [*(a1[4] + 32) assertionManager:? didRemoveProcess:? withState:?];
}

- (id)stateForIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(RBProcessMap *)self->_stateMap valueForIdentity:identityCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)revalidateAssertionsForProcessIdentities:(id)identities
{
  v21 = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  os_unfair_lock_lock(&self->_lock);
  v5 = [MEMORY[0x277CBEB58] set];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  obj = identitiesCopy;
  v6 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    do
    {
      v9 = 0;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v16 + 1) + 8 * v9);
        assertions = self->_assertions;
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 3221225472;
        v14[2] = __63__RBAssertionManager_revalidateAssertionsForProcessIdentities___block_invoke;
        v14[3] = &unk_279B32E18;
        v14[4] = self;
        v14[5] = v10;
        v15 = v5;
        [(RBAssertionCollection *)assertions enumerateAssertionsForTargetProcessIdentity:v10 withBlock:v14];

        ++v9;
      }

      while (v7 != v9);
      v7 = [obj countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v7);
  }

  [(RBAssertionManager *)self _lock_removeAssertions:v5 andUpdateChangedAssertions:0];
  os_unfair_lock_unlock(&self->_lock);

  v12 = *MEMORY[0x277D85DE8];
}

void __63__RBAssertionManager_revalidateAssertionsForProcessIdentities___block_invoke(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v3 target];
  v6 = MEMORY[0x277D46DC8];
  v7 = [v5 createRBSTarget];
  v8 = [v3 explanation];
  v9 = [v3 attributes];
  v33 = v4;
  v10 = [v6 descriptorWithIdentifier:v4 target:v7 explanation:v8 attributes:v9];

  v11 = [*(*(a1 + 32) + 56) processForIdentity:*(a1 + 40)];
  v12 = [v11 identifier];
  v13 = [*(*(a1 + 32) + 64) valueForIdentity:*(a1 + 40)];
  v14 = [v3 originator];
  v30 = [v14 identity];
  v15 = [*(*(a1 + 32) + 64) valueForIdentity:?];
  v16 = +[RBAssertionDescriptorValidatorContext context];
  v32 = v10;
  [v16 setAssertionDescriptor:v10];
  [v16 setOriginatorState:v15];
  [v16 setOriginatorProcess:v14];
  v29 = v15;
  [v16 setOriginatorState:v15];
  v17 = [*(*(a1 + 32) + 152) entitlementManager];
  v18 = [v17 entitlementsForProcess:v14];
  [v16 setOriginatorEntitlements:v18];

  [v16 setTarget:v5];
  [v16 setTargetProcess:v11];
  [v16 setTargetIdentity:*(a1 + 40)];
  v31 = v12;
  [v16 setTargetIdentifier:v12];
  [v16 setTargetState:v13];
  v19 = [*(*(a1 + 32) + 152) entitlementManager];
  v20 = [v19 entitlementsForProcess:v11];
  [v16 setTargetEntitlements:v20];

  v21 = [*(a1 + 32) _lock_savedEndowmentsForProcess:v14];
  [v16 setSavedEndowments:v21];

  v22 = [*(*(a1 + 32) + 152) entitlementManager];
  [v16 setEntitlementManager:v22];

  [v16 setBundlePropertiesManager:*(*(a1 + 32) + 120)];
  v23 = [*(*(a1 + 32) + 152) domainAttributeManager];
  [v16 setDomainAttributeManager:v23];

  [v16 setSystemState:*(*(a1 + 32) + 224)];
  v24 = *(*(a1 + 32) + 128);
  v34 = 0;
  LODWORD(v12) = [v24 isAssertionValidForContext:v16 error:&v34];
  v25 = v34;
  v26 = rbs_assertion_log();
  v27 = v26;
  if (v12)
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v36 = v3;
      _os_log_impl(&dword_262485000, v27, OS_LOG_TYPE_INFO, "Assertion %{public}@ revalidated correctly", buf, 0xCu);
    }
  }

  else
  {
    if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v36 = v3;
      _os_log_impl(&dword_262485000, v27, OS_LOG_TYPE_DEFAULT, "Assertion %{public}@ is invalid because its target's properties have changed", buf, 0xCu);
    }

    [v3 setInvalidationReason:6];
    [*(a1 + 48) addObject:v3];
  }

  v28 = *MEMORY[0x277D85DE8];
}

- (id)attributesForDomain:(id)domain andName:(id)name context:(id)context withError:(id *)error
{
  daemonContext = self->_daemonContext;
  contextCopy = context;
  nameCopy = name;
  domainCopy = domain;
  domainAttributeManager = [(RBDaemonContextProviding *)daemonContext domainAttributeManager];
  v14 = [domainAttributeManager attributesForDomain:domainCopy andName:nameCopy context:contextCopy withError:error];

  return v14;
}

- (id)originatorEntitlementsForDomain:(id)domain andName:(id)name
{
  daemonContext = self->_daemonContext;
  nameCopy = name;
  domainCopy = domain;
  domainAttributeManager = [(RBDaemonContextProviding *)daemonContext domainAttributeManager];
  v9 = [domainAttributeManager originatorEntitlementsForDomain:domainCopy andName:nameCopy];

  return v9;
}

- (id)endowmentNamespaceForDomain:(id)domain andName:(id)name
{
  daemonContext = self->_daemonContext;
  nameCopy = name;
  domainCopy = domain;
  domainAttributeManager = [(RBDaemonContextProviding *)daemonContext domainAttributeManager];
  v9 = [domainAttributeManager endowmentNamespaceForDomain:domainCopy andName:nameCopy];

  return v9;
}

- (BOOL)containsAttributeWithDomain:(id)domain andName:(id)name
{
  daemonContext = self->_daemonContext;
  nameCopy = name;
  domainCopy = domain;
  domainAttributeManager = [(RBDaemonContextProviding *)daemonContext domainAttributeManager];
  v9 = [domainAttributeManager containsAttributeWithDomain:domainCopy andName:nameCopy];

  return v9;
}

- (id)allEntitlements
{
  domainAttributeManager = [(RBDaemonContextProviding *)self->_daemonContext domainAttributeManager];
  allEntitlements = [domainAttributeManager allEntitlements];

  return allEntitlements;
}

- (BOOL)areTargetPropertiesValidForContext:(id)context forAttributeWithDomain:(id)domain andName:(id)name
{
  daemonContext = self->_daemonContext;
  nameCopy = name;
  domainCopy = domain;
  contextCopy = context;
  domainAttributeManager = [(RBDaemonContextProviding *)daemonContext domainAttributeManager];
  v12 = [domainAttributeManager areTargetPropertiesValidForContext:contextCopy forAttributeWithDomain:domainCopy andName:nameCopy];

  return v12;
}

- (id)additionalRestrictionsForDomain:(id)domain andName:(id)name
{
  daemonContext = self->_daemonContext;
  nameCopy = name;
  domainCopy = domain;
  domainAttributeManager = [(RBDaemonContextProviding *)daemonContext domainAttributeManager];
  v9 = [domainAttributeManager additionalRestrictionsForDomain:domainCopy andName:nameCopy];

  return v9;
}

- (id)restrictionsForDomain:(id)domain andName:(id)name
{
  daemonContext = self->_daemonContext;
  nameCopy = name;
  domainCopy = domain;
  domainAttributeManager = [(RBDaemonContextProviding *)daemonContext domainAttributeManager];
  v9 = [domainAttributeManager restrictionsForDomain:domainCopy andName:nameCopy];

  return v9;
}

- (id)targetEntitlementsForDomain:(id)domain andName:(id)name
{
  daemonContext = self->_daemonContext;
  nameCopy = name;
  domainCopy = domain;
  domainAttributeManager = [(RBDaemonContextProviding *)daemonContext domainAttributeManager];
  v9 = [domainAttributeManager targetEntitlementsForDomain:domainCopy andName:nameCopy];

  return v9;
}

- (void)eventQueue:(id)queue handleAssertionsExpirationWarningEventForProcessIdentity:(id)identity expirationTime:(double)time
{
  v17 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  os_unfair_lock_lock(&self->_lock);
  v8 = [(RBProcessIndex *)self->_processIndex processForIdentity:identityCopy];

  if (v8)
  {
    v9 = rbs_process_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v16 = v8;
      _os_log_impl(&dword_262485000, v9, OS_LOG_TYPE_DEFAULT, "Assertions for process will expire soon: %{public}@", buf, 0xCu);
    }

    calloutQueue = self->_calloutQueue;
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    block[2] = __105__RBAssertionManager_eventQueue_handleAssertionsExpirationWarningEventForProcessIdentity_expirationTime___block_invoke;
    block[3] = &unk_279B32E40;
    block[4] = self;
    v13 = v8;
    timeCopy = time;
    dispatch_async(calloutQueue, block);
  }

  os_unfair_lock_unlock(&self->_lock);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)eventQueue:(id)queue handleWarningEventForAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_lock(&self->_lock);
  if ([(RBAssertionCollection *)self->_assertions hasAssertion:assertionCopy])
  {
    calloutQueue = self->_calloutQueue;
    v7[0] = MEMORY[0x277D85DD0];
    v7[1] = 3221225472;
    v7[2] = __64__RBAssertionManager_eventQueue_handleWarningEventForAssertion___block_invoke;
    v7[3] = &unk_279B32B80;
    v7[4] = self;
    v8 = assertionCopy;
    dispatch_async(calloutQueue, v7);
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (void)eventQueue:(id)queue handleInvalidationEventForAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_lock(&self->_lock);
  if ([assertionCopy isValid])
  {
    [assertionCopy setInvalidationReason:4];
    v5 = [MEMORY[0x277CBEB98] setWithObject:assertionCopy];
    [(RBAssertionManager *)self _lock_enqueueAssertionsForRemoval:v5];
  }

  os_unfair_lock_unlock(&self->_lock);
}

- (double)eventQueue:(id)queue startTimeForAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_lock(&self->_lock);
  [(RBAssertionManager *)self _lock_startTimeForAssertion:assertionCopy];
  v7 = v6;

  os_unfair_lock_unlock(&self->_lock);
  return v7;
}

- (NSString)stateCaptureTitle
{
  v2 = objc_opt_class();

  return NSStringFromClass(v2);
}

- (double)_remainingRuntimeForProcessIdentity:(id)identity
{
  v37 = *MEMORY[0x277D85DE8];
  identityCopy = identity;
  os_unfair_lock_assert_not_owner(&self->_lock);
  os_unfair_lock_lock(&self->_lock);
  [(RBTimeProviding *)self->_timeProvider currentTime];
  v6 = v5;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v7 = [(RBAssertionCollection *)self->_assertions assertionsForTargetIdentity:identityCopy, 0];
  v8 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    v12 = *v33;
    v13 = 0.0;
    v14 = 1.79769313e308;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v33 != v12)
        {
          objc_enumerationMutation(v7);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        if ([v16 isActive])
        {
          [v16 invalidationDuration];
          if (v17 <= 0.0)
          {
            processState = [v16 processState];
            v28 = [processState role] > 1;

            v11 |= v28;
          }

          else
          {
            v18 = v17;
            [(RBAssertionManager *)self _lock_startTimeForAssertion:v16];
            v20 = v19;
            endPolicy = [v16 endPolicy];
            v22 = v18 + v20 - v6;
            if (v14 >= v22)
            {
              v23 = v22;
            }

            else
            {
              v23 = v14;
            }

            if (endPolicy == 2)
            {
              v14 = v23;
            }

            v10 |= endPolicy == 2;
            processState2 = [v16 processState];
            role = [processState2 role];

            if (v13 < v22 && role > 1)
            {
              v13 = v22;
            }
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v32 objects:v36 count:16];
    }

    while (v9);

    os_unfair_lock_unlock(&self->_lock);
    if (v11)
    {
      if (v10)
      {
        v13 = v14;
      }

      else
      {
        v13 = *MEMORY[0x277D47080];
      }
    }

    else if (v10)
    {
      if (v14 >= v13)
      {
        v29 = v13;
      }

      else
      {
        v29 = v14;
      }

      if (v13 > 0.0)
      {
        v13 = v29;
      }

      else
      {
        v13 = 0.0;
      }
    }
  }

  else
  {

    os_unfair_lock_unlock(&self->_lock);
    v13 = 0.0;
  }

  v30 = *MEMORY[0x277D85DE8];
  return v13;
}

- (id)_concreteTargetForTarget:(id)target allowAbstractTarget:(BOOL)abstractTarget
{
  abstractTargetCopy = abstractTarget;
  v20 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  if (!targetCopy)
  {
    [RBAssertionManager _concreteTargetForTarget:allowAbstractTarget:];
  }

  if ([targetCopy isSystem])
  {
    v7 = +[RBConcreteTarget systemTarget];
    goto LABEL_22;
  }

  processIdentity = [targetCopy processIdentity];
  processIndex = self->_processIndex;
  if (processIdentity)
  {
    v10 = [(RBProcessIndex *)processIndex processForIdentity:processIdentity];
  }

  else
  {
    processIdentifier = [targetCopy processIdentifier];
    v10 = [(RBProcessIndex *)processIndex processForIdentifier:processIdentifier];
  }

  if ([v10 isTerminating])
  {
    v12 = rbs_assertion_log();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v18 = 138543362;
      v19 = v10;
      _os_log_impl(&dword_262485000, v12, OS_LOG_TYPE_DEFAULT, "ignoring %{public}@ as candidate for concrete target as it is terminating", &v18, 0xCu);
    }

    v10 = 0;
    v7 = 0;
    if (!abstractTargetCopy)
    {
      goto LABEL_21;
    }

    goto LABEL_14;
  }

  if (abstractTargetCopy)
  {
LABEL_14:
    if (processIdentity)
    {
      identity = processIdentity;
LABEL_19:
      environment = [targetCopy environment];
      v7 = [RBConcreteTarget targetWithIdentity:identity environment:environment];

      goto LABEL_21;
    }

    identity = [v10 identity];
    if (identity)
    {
      goto LABEL_19;
    }

LABEL_20:
    v7 = 0;
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_20;
  }

  environment2 = [targetCopy environment];
  v7 = [RBConcreteTarget targetWithProcess:v10 environment:environment2];

LABEL_21:
LABEL_22:

  v16 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)_increaseInFlightOperationsForTargetIdentities:(id)identities
{
  v19 = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  if (identitiesCopy)
  {
    os_unfair_lock_lock(&self->_inFlightOperationsLock);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = identitiesCopy;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          [(NSCountedSet *)self->_inFlightAssertionTargets addObject:v10];
          if ([(NSCountedSet *)self->_inFlightAssertionTargets countForObject:v10]== 1)
          {
            calloutQueue = self->_calloutQueue;
            v13[0] = MEMORY[0x277D85DD0];
            v13[1] = 3221225472;
            v13[2] = __69__RBAssertionManager__increaseInFlightOperationsForTargetIdentities___block_invoke;
            v13[3] = &unk_279B32B80;
            v13[4] = self;
            v13[5] = v10;
            dispatch_async(calloutQueue, v13);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    os_unfair_lock_unlock(&self->_inFlightOperationsLock);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_decreaseInFlightOperationsForTargetIdentities:(id)identities
{
  v19 = *MEMORY[0x277D85DE8];
  identitiesCopy = identities;
  if (identitiesCopy)
  {
    os_unfair_lock_lock(&self->_inFlightOperationsLock);
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = identitiesCopy;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          [(NSCountedSet *)self->_inFlightAssertionTargets removeObject:v10];
          if (![(NSCountedSet *)self->_inFlightAssertionTargets countForObject:v10])
          {
            calloutQueue = self->_calloutQueue;
            v13[0] = MEMORY[0x277D85DD0];
            v13[1] = 3221225472;
            v13[2] = __69__RBAssertionManager__decreaseInFlightOperationsForTargetIdentities___block_invoke;
            v13[3] = &unk_279B32B80;
            v13[4] = self;
            v13[5] = v10;
            dispatch_async(calloutQueue, v13);
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v7);
    }

    os_unfair_lock_unlock(&self->_inFlightOperationsLock);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_increaseInFlightOperationsForOriginator:(id)originator andSuspendIfNeeded:(id)needed
{
  neededCopy = needed;
  originatorCopy = originator;
  os_unfair_lock_lock(&self->_inFlightOperationsLock);
  v8 = [(NSMutableDictionary *)self->_originatorToInFlightOperationsCountMap objectForKeyedSubscript:originatorCopy];
  v9 = [v8 unsignedIntegerValue] + 1;
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v9];
  [(NSMutableDictionary *)self->_originatorToInFlightOperationsCountMap setObject:v10 forKeyedSubscript:originatorCopy];

  maxOperationsInFlight = self->_maxOperationsInFlight;
  if (v9 == maxOperationsInFlight)
  {
    xpc_connection_suspend(neededCopy);
  }

  os_unfair_lock_unlock(&self->_inFlightOperationsLock);

  return v9 == maxOperationsInFlight;
}

- (BOOL)_decreaseInFlightOperationsForOriginator:(id)originator
{
  originatorCopy = originator;
  os_unfair_lock_lock(&self->_inFlightOperationsLock);
  v5 = [(NSMutableDictionary *)self->_originatorToInFlightOperationsCountMap objectForKeyedSubscript:originatorCopy];
  v6 = v5;
  if (v5)
  {
    unsignedIntegerValue = [v5 unsignedIntegerValue];
    v8 = unsignedIntegerValue - 1;
    if (unsignedIntegerValue == 1)
    {
      [(NSMutableDictionary *)self->_originatorToInFlightOperationsCountMap setObject:0 forKeyedSubscript:originatorCopy];
    }

    else
    {
      v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v8];
      [(NSMutableDictionary *)self->_originatorToInFlightOperationsCountMap setObject:v9 forKeyedSubscript:originatorCopy];
    }
  }

  else
  {
    v8 = 0;
  }

  v10 = v8 == self->_maxOperationsInFlight - 1;
  os_unfair_lock_unlock(&self->_inFlightOperationsLock);

  return v10;
}

- (void)_lock_enqueueAssertionsForRemoval:(id)removal
{
  removalCopy = removal;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([(NSMutableSet *)self->_invalidAssertions count])
  {
    [(NSMutableSet *)self->_invalidAssertions unionSet:removalCopy];
  }

  else
  {
    v5 = [removalCopy count];
    [(NSMutableSet *)self->_invalidAssertions unionSet:removalCopy];
    if (v5)
    {
      timeProvider = self->_timeProvider;
      mEMORY[0x277D47028] = [MEMORY[0x277D47028] sharedBackgroundWorkloop];
      v8[0] = MEMORY[0x277D85DD0];
      v8[1] = 3221225472;
      v8[2] = __56__RBAssertionManager__lock_enqueueAssertionsForRemoval___block_invoke;
      v8[3] = &unk_279B32CB0;
      v8[4] = self;
      [(RBTimeProviding *)timeProvider executeAfter:mEMORY[0x277D47028] onQueue:v8 block:0.1];
    }
  }
}

- (void)_lock_notifyDelegateOfProcessStateChangeSet:(id)set
{
  setCopy = set;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __66__RBAssertionManager__lock_notifyDelegateOfProcessStateChangeSet___block_invoke;
  v6[3] = &unk_279B32B80;
  v6[4] = self;
  v7 = setCopy;
  v5 = setCopy;
  _os_activity_initiate(&dword_262485000, "state notification", OS_ACTIVITY_FLAG_DEFAULT, v6);
}

void __66__RBAssertionManager__lock_notifyDelegateOfProcessStateChangeSet___block_invoke(uint64_t a1)
{
  os_unfair_lock_assert_owner((*(a1 + 32) + 24));
  if ([*(a1 + 40) hasChanges])
  {
    v3 = *(a1 + 32);
    v2 = *(a1 + 40);
    v4 = *(v3 + 16);
    v5[0] = MEMORY[0x277D85DD0];
    v5[1] = 3221225472;
    v5[2] = __66__RBAssertionManager__lock_notifyDelegateOfProcessStateChangeSet___block_invoke_2;
    v5[3] = &unk_279B32B80;
    v5[4] = v3;
    v6 = v2;
    dispatch_async(v4, v5);
  }
}

- (id)_lock_targetIdentitiesInAssertions:(id)assertions
{
  v19 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  v4 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = assertionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        target = [*(*(&v14 + 1) + 8 * i) target];
        identity = [target identity];

        if (identity)
        {
          [v4 addObject:identity];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_lock_originatorIdentifiersInAssertions:(id)assertions
{
  v19 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  v4 = [MEMORY[0x277CBEB58] set];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = assertionsCopy;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        originator = [*(*(&v14 + 1) + 8 * i) originator];
        identifier = [originator identifier];

        if (identifier)
        {
          [v4 addObject:identifier];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)_lock_deactivateAssertions:(id)assertions
{
  v46 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  selfCopy = self;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = rbs_assertion_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    *buf = 134349056;
    v45 = [assertionsCopy count];
    _os_log_impl(&dword_262485000, v5, OS_LOG_TYPE_INFO, "Removing %{public}lu assertions", buf, 0xCu);
  }

  if ([assertionsCopy count])
  {
    context = objc_autoreleasePoolPush();
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    v33 = [MEMORY[0x277CBEB58] set];
    v38 = 0u;
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v31 = assertionsCopy;
    v7 = assertionsCopy;
    v8 = [v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v39;
      do
      {
        for (i = 0; i != v9; ++i)
        {
          if (*v39 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v38 + 1) + 8 * i);
          if (![v12 invalidationReason])
          {
            [RBAssertionManager _lock_deactivateAssertions:];
          }

          target = [v12 target];
          identity = [target identity];

          if (identity && [v12 definesRelativeStartTime] && objc_msgSend(v12, "isActive"))
          {
            v15 = [dictionary objectForKeyedSubscript:identity];
            if (v15)
            {
              v16 = v15;
              v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v15, "unsignedIntegerValue") - 1}];
            }

            else
            {
              v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{-[RBAssertionManager _lock_numberOfStartTimeDefiningAssertionsForTargetProcessIdentity:](selfCopy, "_lock_numberOfStartTimeDefiningAssertionsForTargetProcessIdentity:", identity) - 1}];
            }

            [dictionary setObject:v17 forKeyedSubscript:identity];
            if (![v17 unsignedIntegerValue])
            {
              v18 = rbs_assertion_log();
              if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 138543362;
                v45 = identity;
                _os_log_impl(&dword_262485000, v18, OS_LOG_TYPE_DEFAULT, "Removed last relative-start-date-defining assertion for process %{public}@", buf, 0xCu);
              }

              [v33 addObject:identity];
            }
          }
        }

        v9 = [v7 countByEnumeratingWithState:&v38 objects:v43 count:16];
      }

      while (v9);
    }

    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v19 = v7;
    v20 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
    if (v20)
    {
      v21 = v20;
      v22 = *v35;
      do
      {
        for (j = 0; j != v21; ++j)
        {
          if (*v35 != v22)
          {
            objc_enumerationMutation(v19);
          }

          [*(*(&v34 + 1) + 8 * j) deactivate];
        }

        v21 = [v19 countByEnumeratingWithState:&v34 objects:v42 count:16];
      }

      while (v21);
    }

    v24 = [(RBAssertionManager *)selfCopy _lock_activateDelayedAssertionsForTargets:v33];
    v25 = [(RBAssertionManager *)selfCopy _lock_targetIdentitiesInAssertions:v19];
    [(RBAssertionManager *)selfCopy _lock_clearStartTimesForUnbusyTargets:v25];
    if (v24)
    {
      v26 = [v19 setByAddingObjectsFromSet:v24];
    }

    else
    {
      v26 = v19;
    }

    v27 = v26;
    assertionsCopy = v31;

    objc_autoreleasePoolPop(context);
  }

  else
  {
    v27 = 0;
  }

  v28 = *MEMORY[0x277D85DE8];

  return v27;
}

- (void)_lock_finalizeRemovingAssertions:(id)assertions
{
  v25 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v5 = [assertionsCopy countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v20;
    do
    {
      v8 = 0;
      do
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(assertionsCopy);
        }

        [(RBAssertionManager *)self _lock_removeAssertion:*(*(&v19 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [assertionsCopy countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v6);
  }

  v9 = [(RBAssertionManager *)self _lock_targetIdentitiesInAssertions:assertionsCopy];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v16;
    do
    {
      v13 = 0;
      do
      {
        if (*v16 != v12)
        {
          objc_enumerationMutation(v9);
        }

        [(RBAssertionManager *)self _lock_removeStateForProcessIdentityIfNecessary:*(*(&v15 + 1) + 8 * v13++)];
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_lock_notifyDelegateOfInvalidatedAssertions:(id)assertions
{
  assertionsCopy = assertions;
  calloutQueue = self->_calloutQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__RBAssertionManager__lock_notifyDelegateOfInvalidatedAssertions___block_invoke;
  v7[3] = &unk_279B32B80;
  v7[4] = self;
  v8 = assertionsCopy;
  v6 = assertionsCopy;
  dispatch_async(calloutQueue, v7);
}

- (void)_lock_removeAssertions:(id)assertions andUpdateChangedAssertions:(id)changedAssertions
{
  assertionsCopy = assertions;
  changedAssertionsCopy = changedAssertions;
  os_unfair_lock_assert_owner(&self->_lock);
  v7 = [(RBAssertionManager *)self _lock_deactivateAssertions:assertionsCopy];
  v8 = [MEMORY[0x277CBEB58] set];
  if ([v7 count])
  {
    [v8 unionSet:v7];
  }

  if ([changedAssertionsCopy count])
  {
    [v8 unionSet:changedAssertionsCopy];
  }

  v9 = [assertionsCopy mutableCopy];
  v10 = [(RBAssertionManager *)self _lock_updateStatesDueToChangingAssertions:v8 invalidatedAssertions:v9];
  [(RBAssertionManager *)self _lock_finalizeRemovingAssertions:v9];
  [(RBAssertionManager *)self _lock_notifyDelegateOfInvalidatedAssertions:v9];
  [(RBAssertionManager *)self _lock_notifyDelegateOfProcessStateChangeSet:v10];
}

- (void)_lock_dumpAssertionsForTarget:(id)target
{
  v37 = *MEMORY[0x277D85DE8];
  targetCopy = target;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(RBAssertionManager *)self _lock_sortedAssertionsForTarget:targetCopy];
  v18 = [v5 count];
  v6 = rbs_assertion_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    *buf = 138543618;
    v25 = targetCopy;
    v26 = 2048;
    v27 = v18;
    _os_log_impl(&dword_262485000, v6, OS_LOG_TYPE_INFO, "%{public}@ has %lu targeting assertions. Debug log lines of their details follow.", buf, 0x16u);
  }

  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = v5;
  v7 = [obj countByEnumeratingWithState:&v20 objects:v36 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = 0;
    v10 = *v21;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = rbs_assertion_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          ++v9;
          identifier = [v12 identifier];
          explanation = [v12 explanation];
          attributes = [v12 attributes];
          *buf = 138544642;
          v25 = targetCopy;
          v26 = 2048;
          v27 = v9;
          v28 = 2048;
          v29 = v18;
          v30 = 2114;
          v31 = identifier;
          v32 = 2114;
          v33 = explanation;
          v34 = 2114;
          v35 = attributes;
          _os_log_impl(&dword_262485000, v13, OS_LOG_TYPE_INFO, "%{public}@ assertion details %lu/%lu. ID:%{public}@ Explanation:%{public}@ Attributes:\n%{public}@", buf, 0x3Eu);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v20 objects:v36 count:16];
    }

    while (v8);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (id)_lock_sortedAssertionsForTarget:(id)target
{
  targetCopy = target;
  os_unfair_lock_assert_owner(&self->_lock);
  v5 = [(RBAssertionCollection *)self->_assertions assertionsForTargetIdentity:targetCopy];

  allObjects = [v5 allObjects];
  v7 = [allObjects sortedArrayUsingComparator:&__block_literal_global_84];

  return v7;
}

uint64_t __54__RBAssertionManager__lock_sortedAssertionsForTarget___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = MEMORY[0x277CCABB0];
  v5 = a3;
  v6 = [a2 identifier];
  v7 = [v4 numberWithUnsignedLongLong:{objc_msgSend(v6, "count")}];
  v8 = MEMORY[0x277CCABB0];
  v9 = [v5 identifier];

  v10 = [v8 numberWithUnsignedLongLong:{objc_msgSend(v9, "count")}];
  v11 = [v7 compare:v10];

  return v11;
}

- (void)_lock_removeAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_assert_owner(&self->_lock);
  [(RBAssertionCollection *)self->_assertions removeAssertion:assertionCopy];
  historicalStatistics = [(RBDaemonContextProviding *)self->_daemonContext historicalStatistics];
  [historicalStatistics notifyAssertionCount:{-[RBAssertionCollection count](self->_assertions, "count")}];

  stateCaptureManager = [(RBDaemonContextProviding *)self->_daemonContext stateCaptureManager];
  [stateCaptureManager removeItem:assertionCopy];

  originator = [assertionCopy originator];
  identifier = [originator identifier];

  if (![(RBAssertionCollection *)self->_assertions hasAssertionsForOriginator:identifier])
  {
    v8 = [(RBProcessIndex *)self->_processIndex processForIdentifier:identifier];
    if ([v8 isReported])
    {
      -[RBAssertionOriginatorPidPersisting removePid:](self->_originatorPidStore, "removePid:", [identifier pid]);
    }
  }

  target = [assertionCopy target];
  identity = [target identity];

  if (identity)
  {
    RBPowerlogEvent(2, identity, [(RBAssertionCollection *)self->_assertions assertionCountForTargetProcessIdentity:identity], 0xFFFFFFFFLL);
  }
}

- (void)_lock_addAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_assert_owner(&self->_lock);
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __41__RBAssertionManager__lock_addAssertion___block_invoke;
  block[3] = &unk_279B32CB0;
  block[4] = self;
  if (_lock_addAssertion__onceToken != -1)
  {
    dispatch_once(&_lock_addAssertion__onceToken, block);
  }

  originator = [assertionCopy originator];
  identifier = [originator identifier];

  if (![(RBAssertionCollection *)self->_assertions hasAssertionsForOriginator:identifier])
  {
    v7 = [(RBProcessIndex *)self->_processIndex processForIdentifier:identifier];
    if ([v7 isReported])
    {
      -[RBAssertionOriginatorPidPersisting addPid:](self->_originatorPidStore, "addPid:", [identifier pid]);
    }
  }

  [(RBAssertionCollection *)self->_assertions addAssertion:assertionCopy];
  historicalStatistics = [(RBDaemonContextProviding *)self->_daemonContext historicalStatistics];
  [historicalStatistics notifyAssertionCount:{-[RBAssertionCollection count](self->_assertions, "count")}];

  stateCaptureManager = [(RBDaemonContextProviding *)self->_daemonContext stateCaptureManager];
  [stateCaptureManager addItem:assertionCopy];

  target = [assertionCopy target];
  identity = [target identity];

  if (identity)
  {
    RBPowerlogEvent(1, identity, [(RBAssertionCollection *)self->_assertions assertionCountForTargetProcessIdentity:identity], 0xFFFFFFFFLL);
  }
}

- (void)_lock_checkAssertionToInvalidateByCondition:(id)condition condition:(id)a4 currentValue:(id)value assertionsToInvalidate:(id)invalidate
{
  conditionCopy = condition;
  v9 = a4;
  valueCopy = value;
  invalidateCopy = invalidate;
  if ([conditionCopy isActive])
  {
    intransientState = [conditionCopy intransientState];
    invalidatesOnConditions = [intransientState invalidatesOnConditions];
    v14 = [invalidatesOnConditions objectForKey:v9];

    if (v14)
    {
      if (!valueCopy)
      {
        [RBAssertionManager _lock_checkAssertionToInvalidateByCondition:condition:currentValue:assertionsToInvalidate:];
      }

      integerValue = [valueCopy integerValue];
      if (integerValue > [v14 integerValue])
      {
        [invalidateCopy addObject:conditionCopy];
        [conditionCopy setInvalidationReason:8];
      }
    }
  }
}

- (id)_lock_invalidateAssertionByConditions:(id)conditions changedAssertions:(id *)assertions
{
  v27 = *MEMORY[0x277D85DE8];
  conditionsCopy = conditions;
  v6 = [MEMORY[0x277CBEB58] set];
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = conditionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v23;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v23 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v22 + 1) + 8 * i);
        v13 = [v7 objectForKey:v12];
        assertions = self->_assertions;
        v19[0] = MEMORY[0x277D85DD0];
        v19[1] = 3221225472;
        v19[2] = __78__RBAssertionManager__lock_invalidateAssertionByConditions_changedAssertions___block_invoke;
        v19[3] = &unk_279B32E88;
        v19[4] = self;
        v19[5] = v12;
        v20 = v13;
        v21 = v6;
        v15 = v13;
        [(RBAssertionCollection *)assertions enumerateAssertionsWithBlock:v19];
      }

      v9 = [v7 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v9);
  }

  *assertions = [(RBAssertionManager *)self _lock_deactivateAssertions:v6];

  v16 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)_lock_updateStatesDueToChangingAssertions:(id)assertions invalidatedAssertions:(id)invalidatedAssertions
{
  assertionsCopy = assertions;
  invalidatedAssertionsCopy = invalidatedAssertions;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__1;
  v22 = __Block_byref_object_dispose__1;
  v8 = [RBProcessStateChangeSet alloc];
  v23 = [(RBProcessStateChangeSet *)v8 initWithChanges:MEMORY[0x277CBEBF8]];
  os_unfair_lock_assert_owner(&self->_lock);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __86__RBAssertionManager__lock_updateStatesDueToChangingAssertions_invalidatedAssertions___block_invoke;
  v13[3] = &unk_279B32EB0;
  v14 = assertionsCopy;
  selfCopy = self;
  v16 = invalidatedAssertionsCopy;
  v17 = &v18;
  v9 = invalidatedAssertionsCopy;
  v10 = assertionsCopy;
  _os_activity_initiate(&dword_262485000, "state update", OS_ACTIVITY_FLAG_DEFAULT, v13);

  v11 = v19[5];
  _Block_object_dispose(&v18, 8);

  return v11;
}

void __86__RBAssertionManager__lock_updateStatesDueToChangingAssertions_invalidatedAssertions___block_invoke(uint64_t a1)
{
  v55 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v45 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v44 = [*(*(a1 + 40) + 224) conditions];
  v3 = 0;
  v4 = 0;
  while (1)
  {
    v5 = *(a1 + 40);
    v6 = *(v5 + 176);
    if (v4)
    {
      v7 = [v4 systemState];
      [v6 setSystemState:v7];
    }

    else
    {
      [*(v5 + 176) setSystemState:*(v5 + 224)];
    }

    v8 = [*(*(a1 + 40) + 176) resolveForAssertions:v2];

    v9 = *(*(*(a1 + 56) + 8) + 40);
    v10 = [v8 changeSet];
    [v9 applyChanges:v10];

    v11 = *(a1 + 40);
    v12 = [v8 gainedStartTimeDefining];
    v13 = [v11 _lock_deactivateDelayedAssertionsForTargets:v12];

    v14 = *(a1 + 40);
    v15 = [v8 lostStartTimeDefining];
    v16 = [v14 _lock_activateDelayedAssertionsForTargets:v15];

    v48 = v16;
    v17 = [v16 setByAddingObjectsFromSet:v13];

    if (_os_feature_enabled_impl())
    {
      v18 = *(a1 + 40);
      v19 = [v8 systemState];
      v20 = [v19 conditions];
      v53 = 0;
      v21 = [v18 _lock_invalidateAssertionByConditions:v20 changedAssertions:&v53];
      v22 = v53;

      if ([v21 count])
      {
        if (!v22)
        {
          __86__RBAssertionManager__lock_updateStatesDueToChangingAssertions_invalidatedAssertions___block_invoke_cold_1();
        }

        [*(a1 + 48) unionSet:v21];
        v23 = [v17 setByAddingObjectsFromSet:v22];

        v17 = v23;
      }

      else if (v22)
      {
        __86__RBAssertionManager__lock_updateStatesDueToChangingAssertions_invalidatedAssertions___block_invoke_cold_2();
      }

      v24 = [v8 systemState];
      v25 = [v24 conditions];
      if (v44 == v25)
      {
      }

      else
      {
        if (v44 && v25)
        {
          v26 = [v44 isEqual:v25];

          if (v26)
          {
            goto LABEL_19;
          }
        }

        else
        {
        }

        v27 = [v8 systemState];
        v28 = [v27 conditions];

        [*(*(a1 + 40) + 40) allAssertions];
        v24 = v17;
        v17 = v44 = v28;
      }

LABEL_19:
    }

    v2 = v17;
    if (v3 == 50)
    {
      break;
    }

    v46 = v17;
    v47 = v13;
    v51 = 0u;
    v52 = 0u;
    v49 = 0u;
    v50 = 0u;
    v29 = [v8 changeSet];
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

          v34 = *(*(&v49 + 1) + 8 * i);
          v35 = *(a1 + 40);
          v36 = [v34 updatedState];
          v37 = [v34 identity];
          [v35 _lock_setState:v36 forProcessIdentity:v37];
        }

        v31 = [v29 countByEnumeratingWithState:&v49 objects:v54 count:16];
      }

      while (v31);
    }

    ++v3;

    v38 = [v8 touchedAssertions];
    [v45 unionSet:v38];

    v2 = v46;
    v39 = [v46 anyObject];

    v4 = v8;
    if (!v39)
    {
      goto LABEL_33;
    }
  }

  v40 = rbs_assertion_log();
  if (os_log_type_enabled(v40, OS_LOG_TYPE_FAULT))
  {
    __86__RBAssertionManager__lock_updateStatesDueToChangingAssertions_invalidatedAssertions___block_invoke_cold_3(v17, a1 + 56, v40);
  }

LABEL_33:
  v41 = *(a1 + 40);
  v42 = [v8 systemState];
  [v41 _lock_setSystemState:v42];

  [*(*(a1 + 40) + 184) updateEventsForAssertions:v45];
  v43 = *MEMORY[0x277D85DE8];
}

- (void)_lock_removeStateForProcessIdentityIfNecessary:(id)necessary
{
  v12 = *MEMORY[0x277D85DE8];
  necessaryCopy = necessary;
  os_unfair_lock_assert_owner(&self->_lock);
  if (![(RBAssertionCollection *)self->_assertions assertionCountForTargetProcessIdentity:necessaryCopy]&& ![(RBProcessIndex *)self->_processIndex containsIdentity:necessaryCopy])
  {
    [(RBProcessMap *)self->_stateMap removeIdentity:necessaryCopy];
    [(NSMutableSet *)self->_assertionTargets removeObject:necessaryCopy];
    v5 = rbs_process_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v11 = necessaryCopy;
      _os_log_impl(&dword_262485000, v5, OS_LOG_TYPE_INFO, "Ended tracking state for process identity %{public}@", buf, 0xCu);
    }

    calloutQueue = self->_calloutQueue;
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __69__RBAssertionManager__lock_removeStateForProcessIdentityIfNecessary___block_invoke;
    v8[3] = &unk_279B32B80;
    v8[4] = self;
    v9 = necessaryCopy;
    dispatch_async(calloutQueue, v8);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)_lock_setState:(id)state forProcessIdentity:(id)identity
{
  stateCopy = state;
  identityCopy = identity;
  os_unfair_lock_assert_owner(&self->_lock);
  v8 = [(RBProcessMap *)self->_stateMap containsIdentity:identityCopy];
  v9 = [(RBProcessMap *)self->_stateMap setValue:stateCopy forIdentity:identityCopy];
  if (!v8)
  {
    [(NSMutableSet *)self->_assertionTargets addObject:identityCopy];
    calloutQueue = self->_calloutQueue;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __56__RBAssertionManager__lock_setState_forProcessIdentity___block_invoke;
    v11[3] = &unk_279B32B80;
    v11[4] = self;
    v12 = identityCopy;
    dispatch_async(calloutQueue, v11);
  }
}

- (void)_lock_setSystemState:(id)state
{
  stateCopy = state;
  os_unfair_lock_assert_owner(&self->_lock);
  if (([stateCopy isEqual:self->_systemState] & 1) == 0)
  {
    v5 = [stateCopy copy];
    systemState = self->_systemState;
    self->_systemState = v5;

    calloutQueue = self->_calloutQueue;
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __43__RBAssertionManager__lock_setSystemState___block_invoke;
    v9[3] = &unk_279B32B80;
    v9[4] = self;
    v10 = v5;
    v8 = v5;
    dispatch_async(calloutQueue, v9);
  }
}

- (double)_lock_startTimeForAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_assert_owner(&self->_lock);
  [assertionCopy creationTime];
  v6 = v5;
  startPolicy = [assertionCopy startPolicy];
  if (startPolicy > 100)
  {
    if (startPolicy == 101)
    {
      [(RBAssertionManager *)self _lock_relativeStartTimeForAssertion:assertionCopy];
    }

    else
    {
      if (startPolicy != 102)
      {
        if (startPolicy == 103)
        {
          [(RBAssertionManager *)self _lock_delayedStartTimeForAssertion:assertionCopy];
          v6 = v8;
          [assertionCopy creationTime];
          if (v6 < v9)
          {
            v6 = v9;
          }
        }

        goto LABEL_14;
      }

      [(RBAssertionManager *)self _lock_delayedStartTimeForAssertion:assertionCopy];
    }

LABEL_13:
    v6 = v10;
    goto LABEL_14;
  }

  if (startPolicy != 2)
  {
    if (startPolicy != 3)
    {
      goto LABEL_14;
    }

    [(RBAssertionManager *)self _lock_originatorExitTimeForAssertion:assertionCopy];
    goto LABEL_13;
  }

  target = [assertionCopy target];
  process = [target process];

  if (process)
  {
    timeProvider = self->_timeProvider;
    target2 = [assertionCopy target];
    process2 = [target2 process];
    [(RBTimeProviding *)timeProvider startTimeForProcess:process2];
    v6 = v17;
  }

LABEL_14:

  return v6;
}

- (double)_lock_invalidationTimeForAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_assert_owner(&self->_lock);
  [(RBAssertionManager *)self _lock_startTimeForAssertion:assertionCopy];
  v6 = v5;
  [assertionCopy invalidationDuration];
  v8 = v6 + v7;
  startPolicy = [assertionCopy startPolicy];
  if (((startPolicy - 102) < 2 || startPolicy == 3) && ![assertionCopy isActive])
  {
    v8 = 1.79769313e308;
  }

  return v8;
}

- (double)_lock_relativeStartTimeForAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_assert_owner(&self->_lock);
  [(RBTimeProviding *)self->_timeProvider currentTime];
  v6 = v5;
  target = [assertionCopy target];
  identity = [target identity];

  if (identity)
  {
    if (([assertionCopy isActive] & 1) != 0 || !-[RBAssertionManager _lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity:](self, "_lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity:", identity))
    {
      v10 = [(NSMutableDictionary *)self->_relativeStartTimesByTargetIdentity objectForKeyedSubscript:identity];
      v11 = v10;
      if (v10)
      {
        [v10 doubleValue];
        v6 = v12;
      }
    }

    else
    {
      [(RBTimeProviding *)self->_timeProvider currentTime];
      v6 = v9;
    }
  }

  return v6;
}

- (double)_lock_originatorExitTimeForAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_assert_owner(&self->_lock);
  [(RBTimeProviding *)self->_timeProvider currentTime];
  v6 = v5;
  originator = [assertionCopy originator];
  identifier = [originator identifier];

  if (identifier)
  {
    if ([assertionCopy isActive])
    {
      v9 = [(NSMapTable *)self->_originatorExitTimesByAssertion objectForKey:assertionCopy];
      if (v9)
      {
        v10 = v9;
      }

      else
      {
        v11 = MEMORY[0x277CCABB0];
        [(RBTimeProviding *)self->_timeProvider currentTime];
        v10 = [v11 numberWithDouble:?];
        [(NSMapTable *)self->_originatorExitTimesByAssertion setObject:v10 forKey:assertionCopy];
        if (!v10)
        {
          [RBAssertionManager _lock_originatorExitTimeForAssertion:];
        }
      }

      [v10 doubleValue];
      v6 = v12;
    }

    else
    {
      v6 = 1.79769313e308;
    }
  }

  return v6;
}

- (id)_lock_deactivateDelayedAssertionsForTargets:(id)targets
{
  v22 = *MEMORY[0x277D85DE8];
  targetsCopy = targets;
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = targetsCopy;
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([(RBAssertionManager *)self _lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity:v11])
        {
          assertions = self->_assertions;
          v15[0] = MEMORY[0x277D85DD0];
          v15[1] = 3221225472;
          v15[2] = __66__RBAssertionManager__lock_deactivateDelayedAssertionsForTargets___block_invoke;
          v15[3] = &unk_279B32ED8;
          v16 = v5;
          [(RBAssertionCollection *)assertions enumerateAssertionsForTargetProcessIdentity:v11 withBlock:v15];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x277D85DE8];

  return v5;
}

void __66__RBAssertionManager__lock_deactivateDelayedAssertionsForTargets___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 startPolicy] == 103 || objc_msgSend(v3, "startPolicy") == 102) && objc_msgSend(v3, "isActive") && !objc_msgSend(v3, "invalidationReason"))
  {
    v4 = rbs_ttl_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_262485000, v4, OS_LOG_TYPE_DEFAULT, "Deactivating delayed assertion %{public}@", &v6, 0xCu);
    }

    [v3 deactivate];
    [*(a1 + 32) addObject:v3];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (id)_lock_activateDelayedAssertionsForTargets:(id)targets
{
  v25 = *MEMORY[0x277D85DE8];
  targetsCopy = targets;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([targetsCopy count])
  {
    v5 = [MEMORY[0x277CBEB58] set];
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v17 = targetsCopy;
    v6 = targetsCopy;
    v7 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v21;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v21 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v20 + 1) + 8 * i);
          v12 = MEMORY[0x277CCABB0];
          [(RBTimeProviding *)self->_timeProvider currentTime];
          v13 = [v12 numberWithDouble:?];
          [(NSMutableDictionary *)self->_relativeStartTimesByTargetIdentity setObject:v13 forKeyedSubscript:v11];

          if (![(RBAssertionManager *)self _lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity:v11])
          {
            assertions = self->_assertions;
            v18[0] = MEMORY[0x277D85DD0];
            v18[1] = 3221225472;
            v18[2] = __64__RBAssertionManager__lock_activateDelayedAssertionsForTargets___block_invoke;
            v18[3] = &unk_279B32ED8;
            v19 = v5;
            [(RBAssertionCollection *)assertions enumerateAssertionsForTargetProcessIdentity:v11 withBlock:v18];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v8);
    }

    targetsCopy = v17;
  }

  else
  {
    v5 = [MEMORY[0x277CBEB98] set];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v5;
}

void __64__RBAssertionManager__lock_activateDelayedAssertionsForTargets___block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([v3 startPolicy] & 0xFFFFFFFFFFFFFFFELL) == 0x66 && (objc_msgSend(v3, "isActive") & 1) == 0 && objc_msgSend(v3, "isValid"))
  {
    v4 = rbs_ttl_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v6 = 138543362;
      v7 = v3;
      _os_log_impl(&dword_262485000, v4, OS_LOG_TYPE_DEFAULT, "Activating delayed assertion %{public}@", &v6, 0xCu);
    }

    [v3 activate];
    [*(a1 + 32) addObject:v3];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_lock_clearStartTimesForUnbusyTargets:(id)targets
{
  v23 = *MEMORY[0x277D85DE8];
  targetsCopy = targets;
  os_unfair_lock_assert_owner(&self->_lock);
  if ([targetsCopy count])
  {
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = targetsCopy;
    v5 = targetsCopy;
    v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = *v19;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v19 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v18 + 1) + 8 * i);
          if (![(RBAssertionManager *)self _lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity:v9, v12])
          {
            v14 = 0;
            v15 = &v14;
            v16 = 0x2020000000;
            v17 = 0;
            assertions = self->_assertions;
            v13[0] = MEMORY[0x277D85DD0];
            v13[1] = 3221225472;
            v13[2] = __60__RBAssertionManager__lock_clearStartTimesForUnbusyTargets___block_invoke;
            v13[3] = &unk_279B32F00;
            v13[4] = &v14;
            [(RBAssertionCollection *)assertions enumerateAssertionsForTargetProcessIdentity:v9 withBlock:v13];
            if ((v15[3] & 1) == 0)
            {
              [(NSMutableDictionary *)self->_relativeStartTimesByTargetIdentity removeObjectForKey:v9];
            }

            _Block_object_dispose(&v14, 8);
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v6);
    }

    targetsCopy = v12;
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __60__RBAssertionManager__lock_clearStartTimesForUnbusyTargets___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (([v3 startPolicy] - 101) <= 2 && objc_msgSend(v3, "isActive") && objc_msgSend(v3, "isValid"))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

- (double)_lock_delayedStartTimeForAssertion:(id)assertion
{
  assertionCopy = assertion;
  os_unfair_lock_assert_owner(&self->_lock);
  [(RBTimeProviding *)self->_timeProvider currentTime];
  v6 = v5;
  target = [assertionCopy target];
  identity = [target identity];

  if (identity)
  {
    if (([assertionCopy isActive] & 1) != 0 || !-[RBAssertionManager _lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity:](self, "_lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity:", identity))
    {
      v9 = [(NSMutableDictionary *)self->_relativeStartTimesByTargetIdentity objectForKeyedSubscript:identity];
      v10 = v9;
      if (v9)
      {
        [v9 doubleValue];
        v6 = v11;
      }
    }

    else
    {
      v6 = 1.79769313e308;
    }
  }

  return v6;
}

- (unint64_t)_lock_numberOfStartTimeDefiningAssertionsForTargetProcessIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_lock_assert_owner(&self->_lock);
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  assertions = self->_assertions;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __88__RBAssertionManager__lock_numberOfStartTimeDefiningAssertionsForTargetProcessIdentity___block_invoke;
  v8[3] = &unk_279B32F00;
  v8[4] = &v9;
  [(RBAssertionCollection *)assertions enumerateAssertionsForTargetProcessIdentity:identityCopy withBlock:v8];
  v6 = v10[3];
  _Block_object_dispose(&v9, 8);

  return v6;
}

void __88__RBAssertionManager__lock_numberOfStartTimeDefiningAssertionsForTargetProcessIdentity___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 definesRelativeStartTime] && objc_msgSend(v3, "isActive"))
  {
    ++*(*(*(a1 + 32) + 8) + 24);
  }
}

- (BOOL)_lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity:(id)identity
{
  identityCopy = identity;
  os_unfair_lock_assert_owner(&self->_lock);
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  assertions = self->_assertions;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __83__RBAssertionManager__lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity___block_invoke;
  v7[3] = &unk_279B32F00;
  v7[4] = &v8;
  [(RBAssertionCollection *)assertions enumerateAssertionsForTargetProcessIdentity:identityCopy withBlock:v7];
  LOBYTE(self) = *(v9 + 24);
  _Block_object_dispose(&v8, 8);

  return self;
}

void __83__RBAssertionManager__lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v5 = a2;
  if ([v5 definesRelativeStartTime] && objc_msgSend(v5, "isActive"))
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a3 = 1;
  }
}

- (void)_acquireUnderlyingAssertionForProcess:(id)process
{
  v37 = *MEMORY[0x277D85DE8];
  processCopy = process;
  v28 = 0;
  v29 = &v28;
  v30 = 0x3032000000;
  v31 = __Block_byref_object_copy__1;
  v32 = __Block_byref_object_dispose__1;
  underlyingAssertion = [processCopy underlyingAssertion];
  if (!v29[5])
  {
    identity = [processCopy identity];
    isApplication = [identity isApplication];

    if (isApplication)
    {
      if (!os_variant_has_internal_content() || ([processCopy identity], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "embeddedApplicationIdentifier"), v8 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v8, "hasPrefix:", @"com.apple.runningboard.test"), v8, v7, (v9 & 1) == 0))
      {
        v10 = v29[5];
        v29[5] = @"defaultUnderlyingAppAssertion";

        v11 = rbs_assertion_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v36 = processCopy;
          _os_log_impl(&dword_262485000, v11, OS_LOG_TYPE_DEFAULT, "Using default underlying assertion for app: %{public}@", buf, 0xCu);
        }
      }
    }
  }

  if (v29[5])
  {
    auditToken = [processCopy auditToken];
    v13 = auditToken == 0;

    if (v13)
    {
      v22 = rbs_assertion_log();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        [RBAssertionManager _acquireUnderlyingAssertionForProcess:];
      }
    }

    else
    {
      v14 = MEMORY[0x277D46DC8];
      v15 = [MEMORY[0x277D46DD0] identifierWithClientPid:getpid()];
      v16 = MEMORY[0x277D47008];
      identifier = [processCopy identifier];
      v18 = [v16 targetWithProcessIdentifier:identifier];
      v19 = [MEMORY[0x277D46E38] attributeWithDomain:@"com.apple.underlying" name:v29[5]];
      v34[0] = v19;
      v20 = [MEMORY[0x277D46D78] attributeWithCompletionPolicy:1];
      v34[1] = v20;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:2];
      v22 = [v14 descriptorWithIdentifier:v15 target:v18 explanation:@"RB Underlying Assertion" attributes:v21];

      v23 = [RBAssertionAcquisitionContext contextForProcess:processCopy withDescriptor:v22 daemonContext:self->_daemonContext];
      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __60__RBAssertionManager__acquireUnderlyingAssertionForProcess___block_invoke;
      v25[3] = &unk_279B32F28;
      v26 = processCopy;
      v27 = &v28;
      [(RBAssertionManager *)self acquireAssertionWithContext:v23 completion:v25];
    }
  }

  _Block_object_dispose(&v28, 8);

  v24 = *MEMORY[0x277D85DE8];
}

void __60__RBAssertionManager__acquireUnderlyingAssertionForProcess___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (v3)
  {
    v5 = [v3 userInfo];
    v6 = [v5 valueForKey:@"IgnoreOnReconnect"];
    v7 = rbs_assertion_log();
    v8 = v7;
    if (v6)
    {
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        v9 = *(a1 + 32);
        v10 = *(*(*(a1 + 40) + 8) + 40);
        v13 = 138543874;
        v14 = v9;
        v15 = 2114;
        v16 = v10;
        v17 = 2114;
        v18 = v4;
        _os_log_impl(&dword_262485000, v8, OS_LOG_TYPE_INFO, "Underlying assertion for %{public}@ with name %{public}@ failed to acquire with error %{public}@", &v13, 0x20u);
      }
    }

    else if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
    {
      __60__RBAssertionManager__acquireUnderlyingAssertionForProcess___block_invoke_cold_1(a1, v4, v8);
    }
  }

  else
  {
    v5 = rbs_assertion_log();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 32);
      v13 = 138543362;
      v14 = v11;
      _os_log_impl(&dword_262485000, v5, OS_LOG_TYPE_DEFAULT, "Successfully acquired underlying assertion for %{public}@", &v13, 0xCu);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)_invalidateAssertionsWithContext:(id)context
{
  v23 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = [MEMORY[0x277CBEB58] set];
  os_unfair_lock_lock(&self->_lock);
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v15 = contextCopy;
  identifiersToInvalidate = [contextCopy identifiersToInvalidate];
  v7 = [identifiersToInvalidate countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(identifiersToInvalidate);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [(RBAssertionCollection *)self->_assertions assertionWithIdentifier:v11];
        if (v12)
        {
          [v5 addObject:v12];
        }

        else if ([(NSMutableSet *)self->_acquiringAssertionIdentifiers containsObject:v11])
        {
          [(NSMutableSet *)self->_acquiringAssertionIdentifiers removeObject:v11];
        }

        else
        {
          v13 = rbs_assertion_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v21 = v11;
            _os_log_error_impl(&dword_262485000, v13, OS_LOG_TYPE_ERROR, "Attempt to invalidate nonexistent assertion failed for identifier %@", buf, 0xCu);
          }
        }
      }

      v8 = [identifiersToInvalidate countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v8);
  }

  if ([v5 count])
  {
    [(RBAssertionManager *)self _lock_invalidateAssertions:v5 forceSync:0];
  }

  os_unfair_lock_unlock(&self->_lock);

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_lock_validateDescriptor:(id)descriptor originatorProcess:(id)process originatorState:(id)state concreteTarget:(id)target targetProcess:(id)targetProcess targetIdentity:(id)identity targetIdentifier:(id)identifier targetState:(id)self0 acquisitionContext:(id)self1 error:(id *)self2
{
  contextCopy = context;
  targetStateCopy = targetState;
  identifierCopy = identifier;
  identityCopy = identity;
  targetProcessCopy = targetProcess;
  targetCopy = target;
  stateCopy = state;
  processCopy = process;
  descriptorCopy = descriptor;
  os_unfair_lock_assert_owner(&self->_lock);
  v26 = +[RBAssertionDescriptorValidatorContext context];
  [v26 setAssertionDescriptor:descriptorCopy];

  [v26 setOriginatorProcess:processCopy];
  [v26 setOriginatorState:stateCopy];

  [v26 setTarget:targetCopy];
  [v26 setTargetProcess:targetProcessCopy];

  [v26 setTargetIdentity:identityCopy];
  [v26 setTargetIdentifier:identifierCopy];

  [v26 setTargetState:targetStateCopy];
  [v26 setAcquisitionContext:contextCopy];

  entitlementManager = [(RBDaemonContextProviding *)self->_daemonContext entitlementManager];
  [v26 setEntitlementManager:entitlementManager];

  [v26 setBundlePropertiesManager:self->_bundlePropertiesManager];
  domainAttributeManager = [(RBDaemonContextProviding *)self->_daemonContext domainAttributeManager];
  [v26 setDomainAttributeManager:domainAttributeManager];

  v29 = [(RBAssertionManager *)self _lock_savedEndowmentsForProcess:processCopy];

  [v26 setSavedEndowments:v29];
  [v26 setSystemState:self->_systemState];
  descriptorValidator = self->_descriptorValidator;
  v38 = 0;
  v31 = [(RBAssertionDescriptorValidating *)descriptorValidator isAssertionValidForContext:v26 error:&v38];
  v32 = v38;
  v33 = v32;
  if ((v31 & 1) == 0)
  {
    if (!v32)
    {
      [RBAssertionManager _lock_validateDescriptor:originatorProcess:originatorState:concreteTarget:targetProcess:targetIdentity:targetIdentifier:targetState:acquisitionContext:error:];
      if (!error)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }

    if (error)
    {
LABEL_4:
      v34 = v33;
      *error = v33;
    }
  }

LABEL_5:

  return v31;
}

- (id)_lock_assertionCreationAttributeContextForTargetIdentity:(id)identity originator:(id)originator
{
  originatorCopy = originator;
  identityCopy = identity;
  os_unfair_lock_assert_owner(&self->_lock);
  v8 = objc_alloc_init(RBAttributeContext);
  entitlementManager = [(RBDaemonContextProviding *)self->_daemonContext entitlementManager];
  [(RBAttributeContext *)v8 setEntitlementManager:entitlementManager];

  domainAttributeManager = [(RBDaemonContextProviding *)self->_daemonContext domainAttributeManager];
  [(RBAttributeContext *)v8 setDomainAttributeManager:domainAttributeManager];

  [(RBAttributeContext *)v8 setBundlePropertiesManager:self->_bundlePropertiesManager];
  v11 = [(RBProcessMap *)self->_stateMap valueForIdentity:identityCopy];

  [(RBAttributeContext *)v8 setInitialProcessState:v11];
  v12 = [(RBAssertionManager *)self _lock_savedEndowmentsForProcess:originatorCopy];

  [(RBAttributeContext *)v8 setSavedEndowments:v12];
  [(RBAttributeContext *)v8 setSystemState:self->_systemState];

  return v8;
}

- (BOOL)_lock_originatorHasExited:(id)exited
{
  originator = [exited originator];
  v4 = originator;
  if (originator)
  {
    isTerminating = [originator isTerminating];
  }

  else
  {
    isTerminating = 1;
  }

  return isTerminating;
}

- (id)_lock_createAssertionWithAcquisitionContext:(id)context attributeContext:(id)attributeContext concreteTarget:(id)target targetIdentity:(id)identity originator:(id)originator error:(id *)error
{
  v52 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  targetCopy = target;
  identityCopy = identity;
  originatorCopy = originator;
  attributeContextCopy = attributeContext;
  descriptor = [contextCopy descriptor];
  [(RBTimeProviding *)self->_timeProvider currentTime];
  v20 = [RBAssertion assertionWithDescriptor:descriptor target:targetCopy originator:originatorCopy context:attributeContextCopy creationTime:?];

  startPolicy = [v20 startPolicy];
  if (startPolicy <= 100)
  {
    if (startPolicy >= 3)
    {
      if (startPolicy != 3)
      {
        goto LABEL_22;
      }

      v22 = [(RBAssertionManager *)self _lock_originatorHasExited:v20];
      v23 = rbs_ttl_log();
      v24 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
      if (v22)
      {
        if (v24)
        {
          *buf = 138543362;
          v51 = v20;
          v25 = "Assertion %{public}@ will be created as active as originator process has exited";
LABEL_14:
          _os_log_impl(&dword_262485000, v23, OS_LOG_TYPE_DEFAULT, v25, buf, 0xCu);
          goto LABEL_15;
        }

        goto LABEL_15;
      }

      if (v24)
      {
        *buf = 138543362;
        v51 = v20;
        v28 = "Assertion %{public}@ will be created as inactive as originator process has not exited";
        goto LABEL_20;
      }

      goto LABEL_21;
    }

LABEL_12:
    v23 = rbs_ttl_log();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v51 = v20;
      v25 = "Assertion %{public}@ will be created as active";
      goto LABEL_14;
    }

LABEL_15:

    [v20 activate];
    goto LABEL_22;
  }

  if ((startPolicy - 102) >= 2)
  {
    if (startPolicy != 101)
    {
      goto LABEL_22;
    }

    goto LABEL_12;
  }

  v26 = [(RBAssertionManager *)self _lock_hasStartTimeDefiningAssertionsForTargetProcessIdentity:identityCopy];
  v23 = rbs_ttl_log();
  v27 = os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT);
  if (!v26)
  {
    if (!v27)
    {
      goto LABEL_15;
    }

    *buf = 138543362;
    v51 = v20;
    v25 = "Assertion %{public}@ will be created as active as no start-time-defining assertions exist";
    goto LABEL_14;
  }

  if (v27)
  {
    *buf = 138543362;
    v51 = v20;
    v28 = "Assertion %{public}@ will be created as inactive as start-time-defining assertions exist";
LABEL_20:
    _os_log_impl(&dword_262485000, v23, OS_LOG_TYPE_DEFAULT, v28, buf, 0xCu);
  }

LABEL_21:

  [v20 deactivate];
LABEL_22:
  identity = [targetCopy identity];
  if (([v20 startPolicy] == 103 || objc_msgSend(v20, "startPolicy") == 101 || objc_msgSend(v20, "startPolicy") == 102) && (-[NSMutableDictionary objectForKeyedSubscript:](self->_relativeStartTimesByTargetIdentity, "objectForKeyedSubscript:", identity), v30 = objc_claimAutoreleasedReturnValue(), v30, !v30))
  {
    v32 = MEMORY[0x277CCABB0];
    [(RBTimeProviding *)self->_timeProvider currentTime];
    v33 = [v32 numberWithDouble:?];
    [(NSMutableDictionary *)self->_relativeStartTimesByTargetIdentity setObject:v33 forKeyedSubscript:identity];

    v31 = 1;
  }

  else
  {
    v31 = 0;
  }

  [v20 invalidationDuration];
  v35 = v34;
  [(RBAssertionManager *)self _lock_invalidationTimeForAssertion:v20];
  if (v35 == 0.0 || (v37 = v36, [(RBTimeProviding *)self->_timeProvider currentTime], v37 > v38))
  {
    holdToken = [contextCopy holdToken];

    if (holdToken)
    {
      pluginHoldsForAssertions = self->_pluginHoldsForAssertions;
      holdToken2 = [contextCopy holdToken];
      identifier = [v20 identifier];
      [(NSMutableDictionary *)pluginHoldsForAssertions setObject:holdToken2 forKey:identifier];
    }

    error = v20;
  }

  else
  {
    if (v31)
    {
      [(NSMutableDictionary *)self->_relativeStartTimesByTargetIdentity setObject:0 forKeyedSubscript:identity];
    }

    if (error)
    {
      v43 = MEMORY[0x277CCA9B8];
      v44 = *MEMORY[0x277D47050];
      v48[0] = *MEMORY[0x277CCA470];
      v48[1] = @"IgnoreOnReconnect";
      v49[0] = @"Assertion's invalidation time is in the past";
      v49[1] = MEMORY[0x277CBEC38];
      v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
      *error = [v43 errorWithDomain:v44 code:2 userInfo:v45];

      error = 0;
    }
  }

  v46 = *MEMORY[0x277D85DE8];

  return error;
}

- (id)_lock_createAssertionForDescriptor:(id)descriptor originatorState:(id)state acquisitionContext:(id)context error:(id *)error
{
  v58 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  stateCopy = state;
  contextCopy = context;
  target = [descriptorCopy target];
  process = [contextCopy process];
  v13 = -[RBAssertionManager _concreteTargetForTarget:allowAbstractTarget:](self, "_concreteTargetForTarget:allowAbstractTarget:", target, [contextCopy allowAbstractTarget]);
  if ([contextCopy allowAbstractTarget])
  {
    v14 = [(RBAssertionManager *)self _concreteTargetForTarget:target allowAbstractTarget:0];
    process2 = [v14 process];
  }

  else
  {
    process2 = 0;
  }

  v15 = rbs_ttl_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    v16 = [v13 description];
    shortDescription = v16;
    if (!v16)
    {
      shortDescription = [target shortDescription];
    }

    v18 = [descriptorCopy debugDescription];
    *buf = 138543874;
    v53 = shortDescription;
    v54 = 2114;
    v55 = process;
    v56 = 2114;
    v57 = v18;
    _os_log_impl(&dword_262485000, v15, OS_LOG_TYPE_DEFAULT, "Acquiring assertion targeting %{public}@ from originator %{public}@ with description %{public}@", buf, 0x20u);
    if (!v16)
    {
    }
  }

  v47 = process;
  if (v13)
  {
    v43 = target;
    identity = [v13 identity];
    process3 = [v13 process];
    v21 = process3;
    if (process3)
    {
      v22 = process3;
    }

    else
    {
      v22 = [(RBProcessIndex *)self->_processIndex processForIdentity:identity];
    }

    v27 = v22;

    identifier = [v27 identifier];
    v31 = [(RBProcessMap *)self->_stateMap valueForIdentity:identity];
    v49 = 0;
    v42 = identifier;
    v32 = [(RBAssertionManager *)self _lock_validateDescriptor:descriptorCopy originatorProcess:v47 originatorState:stateCopy concreteTarget:v13 targetProcess:v27 targetIdentity:identity targetIdentifier:identifier targetState:v31 acquisitionContext:contextCopy error:&v49];
    v33 = v49;
    v34 = v33;
    if (v32)
    {
      v41 = [(RBAssertionManager *)self _lock_assertionCreationAttributeContextForTargetIdentity:identity originator:v47];
      v28 = [RBAssertionManager _lock_createAssertionWithAcquisitionContext:"_lock_createAssertionWithAcquisitionContext:attributeContext:concreteTarget:targetIdentity:originator:error:" attributeContext:contextCopy concreteTarget:? targetIdentity:? originator:? error:?];
      shortDescription2 = 0;

      if (v28)
      {
        v29 = process2;
        if ([contextCopy allowAbstractTarget] && process2)
        {
          v35 = rbs_ttl_log();
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            v45 = [descriptorCopy debugDescription];
            *buf = 138543618;
            v53 = v45;
            v54 = 2114;
            v55 = process2;
            _os_log_impl(&dword_262485000, v35, OS_LOG_TYPE_DEFAULT, "setting abstract target for %{public}@ to %{public}@", buf, 0x16u);
          }

          [v28 setTargetProcessForAbstract:process2];
        }

        if ([contextCopy launchAssertion])
        {
          [v28 setLaunchAssertion:1];
        }

        v36 = v28;
      }

      else
      {
        v29 = process2;
        if (error)
        {
          v38 = shortDescription2;
          *error = shortDescription2;
        }
      }
    }

    else
    {
      if (error)
      {
        v37 = v33;
        v28 = 0;
        *error = v34;
      }

      else
      {
        v28 = 0;
      }

      shortDescription2 = v34;
      v29 = process2;
    }
  }

  else
  {
    if (!error)
    {
      v28 = 0;
      v29 = process2;
      goto LABEL_36;
    }

    v23 = MEMORY[0x277CCA9B8];
    v24 = *MEMORY[0x277D47050];
    v50 = *MEMORY[0x277CCA470];
    v25 = MEMORY[0x277CCACA8];
    v43 = target;
    shortDescription2 = [target shortDescription];
    identity = [v25 stringWithFormat:@"Specified target process %@ does not exist", shortDescription2];
    v51 = identity;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v51 forKeys:&v50 count:1];
    [v23 errorWithDomain:v24 code:2 userInfo:v27];
    *error = v28 = 0;
    v29 = process2;
  }

  target = v43;
  process = v47;
LABEL_36:

  v39 = *MEMORY[0x277D85DE8];

  return v28;
}

- (unint64_t)_lock_incomingAssertionCountForBatchContext:(id)context originatorIdentifier:(id)identifier
{
  v27 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  identifierCopy = identifier;
  descriptorsToAcquire = [contextCopy descriptorsToAcquire];
  v9 = [descriptorsToAcquire count];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = contextCopy;
  obj = [contextCopy identifiersToInvalidate];
  v10 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      v13 = 0;
      do
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(obj);
        }

        v14 = [(RBAssertionCollection *)self->_assertions assertionWithIdentifier:*(*(&v22 + 1) + 8 * v13)];
        originator = [v14 originator];
        identifier = [originator identifier];
        v17 = [identifier isEqual:identifierCopy];

        v9 -= v17;
        ++v13;
      }

      while (v11 != v13);
      v11 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v18 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)_lock_willExceedAssertionLimitForOriginatorProcess:(id)process withIncomingCount:(unint64_t)count
{
  processCopy = process;
  v7 = processCopy;
  maxAssertionsPerOriginator = self->_maxAssertionsPerOriginator;
  v9 = maxAssertionsPerOriginator >= count;
  v10 = maxAssertionsPerOriginator - count;
  if (v10 != 0 && v9)
  {
    assertions = self->_assertions;
    identifier = [processCopy identifier];
    v13 = [(RBAssertionCollection *)assertions hasAssertionsForOriginator:identifier exceedingCount:v10];

    if (v13)
    {
      entitlementManager = [(RBDaemonContextProviding *)self->_daemonContext entitlementManager];
      v15 = [entitlementManager entitlementsForProcess:v7];
      v16 = [v15 rb_hasEntitlement:@"com.apple.runningboard.performancetest"];

      v17 = v16 ^ 1;
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 1;
  }

  return v17;
}

- (void)_lock_notifyDelegateOfExcessiveAssertionsForOriginatorProcess:(id)process
{
  processCopy = process;
  calloutQueue = self->_calloutQueue;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __84__RBAssertionManager__lock_notifyDelegateOfExcessiveAssertionsForOriginatorProcess___block_invoke;
  v7[3] = &unk_279B32B80;
  v7[4] = self;
  v8 = processCopy;
  v6 = processCopy;
  dispatch_async(calloutQueue, v7);
}

- (BOOL)_lock_enforceAssertionLimitIfNecessaryForBatchContext:(id)context originatorProcess:(id)process error:(id *)error
{
  v19[1] = *MEMORY[0x277D85DE8];
  processCopy = process;
  contextCopy = context;
  identifier = [processCopy identifier];
  v11 = [(RBAssertionManager *)self _lock_incomingAssertionCountForBatchContext:contextCopy originatorIdentifier:identifier];

  v12 = [(RBAssertionManager *)self _lock_willExceedAssertionLimitForOriginatorProcess:processCopy withIncomingCount:v11];
  if (v12)
  {
    [(RBAssertionManager *)self _lock_notifyDelegateOfExcessiveAssertionsForOriginatorProcess:processCopy];
    if (error)
    {
      v13 = MEMORY[0x277CCA9B8];
      v14 = *MEMORY[0x277D47050];
      v18 = *MEMORY[0x277CCA470];
      v19[0] = @"Originator is holding too many assertions";
      v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:&v18 count:1];
      *error = [v13 errorWithDomain:v14 code:2 userInfo:v15];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)_lock_createAssertionsForBatchContext:(id)context originatorState:(id)state errorsByIndex:(id)index
{
  contextCopy = context;
  stateCopy = state;
  indexCopy = index;
  descriptorsToAcquire = [contextCopy descriptorsToAcquire];
  v10 = [descriptorsToAcquire count];

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if (v10)
  {
    for (i = 0; i != v10; ++i)
    {
      descriptorsToAcquire2 = [contextCopy descriptorsToAcquire];
      v13 = [descriptorsToAcquire2 objectAtIndexedSubscript:i];

      v14 = [contextCopy acquisitionContextForDescriptor:v13];
      v24 = 0;
      v15 = [(RBAssertionManager *)self _lock_createAssertionForDescriptor:v13 originatorState:stateCopy acquisitionContext:v14 error:&v24];
      v16 = v24;
      if (v15)
      {
        acquiringAssertionIdentifiers = self->_acquiringAssertionIdentifiers;
        identifier = [v15 identifier];
        [(NSMutableSet *)acquiringAssertionIdentifiers addObject:identifier];

        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
        [dictionary setObject:v15 forKeyedSubscript:v19];
      }

      else
      {
        v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:i];
        [indexCopy setObject:v16 forKeyedSubscript:v19];
      }
    }
  }

  return dictionary;
}

- (id)_lock_deactivateExistingAssertionsDelayedByIncomingAssertions:(id)assertions
{
  v23 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  v5 = [MEMORY[0x277CBEB58] set];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v6 = assertionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v19;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v18 + 1) + 8 * i);
        target = [v11 target];
        identity = [target identity];

        if ([v11 definesRelativeStartTime])
        {
          v14 = identity == 0;
        }

        else
        {
          v14 = 1;
        }

        if (!v14 && ([v5 containsObject:identity] & 1) == 0)
        {
          [v5 addObject:identity];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v8);
  }

  v15 = [(RBAssertionManager *)self _lock_deactivateDelayedAssertionsForTargets:v5];

  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)_lock_invalidateAssertions:(id)assertions forceSync:(BOOL)sync
{
  syncCopy = sync;
  v29 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  os_unfair_lock_assert_owner(&self->_lock);
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = assertionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v21;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v21 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v20 + 1) + 8 * i);
        v13 = rbs_ttl_log();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
        {
          originator = [v12 originator];
          *buf = 138543618;
          v25 = v12;
          v26 = 2114;
          v27 = originator;
          _os_log_impl(&dword_262485000, v13, OS_LOG_TYPE_DEFAULT, "Invalidating assertion %{public}@ from originator %{public}@", buf, 0x16u);
        }

        [v12 setInvalidationReason:3];
        identifier = [v12 identifier];
        if (([(NSMutableSet *)self->_acquiringAssertionIdentifiers containsObject:identifier]& 1) != 0)
        {
          [(NSMutableSet *)self->_acquiringAssertionIdentifiers removeObject:identifier];
        }

        else
        {
          v16 = [MEMORY[0x277CBEB98] setWithObject:v12];
          [(RBAssertionManager *)self _lock_enqueueAssertionsForRemoval:v16];

          syncCopy |= [v12 invalidatesSynchronously];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v20 objects:v28 count:16];
    }

    while (v9);
  }

  if (syncCopy)
  {
    v17 = rbs_assertion_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      v18 = [(NSMutableSet *)self->_invalidAssertions count];
      *buf = 134349056;
      v25 = v18;
      _os_log_impl(&dword_262485000, v17, OS_LOG_TYPE_INFO, "Invalidating %{public}lu assertions synchronously", buf, 0xCu);
    }

    [(RBAssertionManager *)self _lock_removeInvalidAssertions];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)_acquireAssertions:(id)assertions invalidateIdentifiers:(id)identifiers forOriginatorProcess:(id)process completionPolicy:(unint64_t)policy acquisitionErrorsByIndex:(id)index completeStage:(id)stage
{
  v126 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  identifiersCopy = identifiers;
  processCopy = process;
  indexCopy = index;
  stageCopy = stage;
  dispatch_assert_queue_V2(self->_workloop);
  os_unfair_lock_lock(&self->_lock);
  v83 = [MEMORY[0x277CBEB58] set];
  v84 = [MEMORY[0x277CBEB58] set];
  v111 = 0u;
  v112 = 0u;
  v113 = 0u;
  v114 = 0u;
  obj = assertionsCopy;
  v88 = [obj countByEnumeratingWithState:&v111 objects:v125 count:16];
  if (v88)
  {
    v89 = *v112;
    v80 = *MEMORY[0x277CCA470];
    v81 = *MEMORY[0x277D47050];
    v86 = processCopy;
    do
    {
      v15 = 0;
      do
      {
        if (*v112 != v89)
        {
          objc_enumerationMutation(obj);
        }

        v16 = *(*(&v111 + 1) + 8 * v15);
        v17 = [obj objectForKeyedSubscript:v16];
        identifier = [v17 identifier];
        target = [v17 target];
        process = [target process];
        v96 = identifier;
        v97 = v15;
        v94 = process;
        v95 = target;
        v90 = v16;
        v93 = [(NSMutableSet *)self->_acquiringAssertionIdentifiers containsObject:identifier];
        if (!process)
        {
          v21 = 1;
          goto LABEL_10;
        }

        if ([(RBProcessIndex *)self->_processIndex containsProcess:process])
        {
          v21 = [(NSMutableSet *)self->_inFlightTerminations containsObject:process]^ 1;
LABEL_10:
          v92 = v21;
          goto LABEL_12;
        }

        v92 = 0;
LABEL_12:
        v91 = [(RBProcessIndex *)self->_processIndex containsProcess:processCopy];
        v99 = objc_alloc_init(MEMORY[0x277CBEB18]);
        v107 = 0u;
        v108 = 0u;
        v109 = 0u;
        v110 = 0u;
        conditions = [(RBSystemState *)self->_systemState conditions];
        allKeys = [conditions allKeys];

        v24 = [allKeys countByEnumeratingWithState:&v107 objects:v124 count:16];
        if (v24)
        {
          v25 = v24;
          v26 = *v108;
          do
          {
            for (i = 0; i != v25; ++i)
            {
              if (*v108 != v26)
              {
                objc_enumerationMutation(allKeys);
              }

              v28 = *(*(&v107 + 1) + 8 * i);
              intransientState = [v17 intransientState];
              invalidatesOnConditions = [intransientState invalidatesOnConditions];
              v31 = [invalidatesOnConditions objectForKey:v28];

              if (v31)
              {
                conditions2 = [(RBSystemState *)self->_systemState conditions];
                v33 = [conditions2 objectForKey:v28];

                if (!v33)
                {
                  [RBAssertionManager _acquireAssertions:invalidateIdentifiers:forOriginatorProcess:completionPolicy:acquisitionErrorsByIndex:completeStage:];
                }

                integerValue = [v33 integerValue];
                if (integerValue > [v31 integerValue])
                {
                  [v99 addObject:v28];
                }
              }
            }

            v25 = [allKeys countByEnumeratingWithState:&v107 objects:v124 count:16];
          }

          while (v25);
        }

        if ([v17 suspendsOnOriginatorSuspension])
        {
          processCopy = v86;
          v35 = v96;
          if ([v86 isLifecycleManaged])
          {
            stateMap = self->_stateMap;
            identity = [v86 identity];
            v38 = [(RBProcessMap *)stateMap valueForIdentity:identity];
            v39 = [v38 role] == 1;
          }

          else
          {
            v39 = 0;
          }
        }

        else
        {
          v39 = 0;
          processCopy = v86;
          v35 = v96;
        }

        [(NSMutableSet *)self->_acquiringAssertionIdentifiers removeObject:v35];
        if ([v99 count])
        {
          if (policy != 1)
          {
            [v84 addObject:v17];
            v46 = rbs_assertion_log();
            v44 = v97;
            v45 = v95;
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v119 = v17;
              v120 = 2114;
              v121 = v99;
              v47 = v46;
              v48 = "Invalidating assertion <%{public}@> on acquisition for unmet conditions: %{public}@";
              v49 = 22;
              goto LABEL_40;
            }

            goto LABEL_41;
          }

          v40 = MEMORY[0x277CCA9B8];
          v122 = v80;
          v123 = @"Conditions do not allow this assertion";
          v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v123 forKeys:&v122 count:1];
          v42 = [v40 errorWithDomain:v81 code:5 userInfo:v41];

          goto LABEL_32;
        }

        if (!v39 && (v93 & v91 & v92 & 1) != 0)
        {
          [(RBAssertionManager *)self _lock_addAssertion:v17];
          [v83 addObject:v17];
          goto LABEL_43;
        }

        if ((v93 & v91 & v92 & v39) != 1)
        {
          if ((v93 & v91 ^ 1 | v92))
          {
            v46 = rbs_ttl_log();
            v44 = v97;
            v45 = v95;
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v119 = v17;
              v47 = v46;
              v48 = "Silently discarding acquired but invalid %{public}@";
              goto LABEL_53;
            }

            goto LABEL_41;
          }

          if (policy != 1)
          {
            [v84 addObject:v17];
            v46 = rbs_assertion_log();
            v44 = v97;
            v45 = v95;
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v119 = v17;
              v47 = v46;
              v48 = "Silently discarding assertion acquired after target exited: %{public}@";
LABEL_53:
              v49 = 12;
LABEL_40:
              _os_log_impl(&dword_262485000, v47, OS_LOG_TYPE_DEFAULT, v48, buf, v49);
            }

LABEL_41:

            goto LABEL_44;
          }

          v50 = MEMORY[0x277CCA9B8];
          v116 = v80;
          v51 = MEMORY[0x277CCACA8];
          shortDescription = [v94 shortDescription];
          v53 = [v51 stringWithFormat:@"Specified target process %@ does not exist", shortDescription];
          v117 = v53;
          v54 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v117 forKeys:&v116 count:1];
          v42 = [v50 errorWithDomain:v81 code:2 userInfo:v54];

LABEL_32:
          [indexCopy setObject:v42 forKeyedSubscript:v90];

LABEL_43:
          v44 = v97;
          v45 = v95;
          goto LABEL_44;
        }

        v43 = rbs_assertion_log();
        v44 = v97;
        v45 = v95;
        if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543362;
          v119 = v17;
          _os_log_impl(&dword_262485000, v43, OS_LOG_TYPE_DEFAULT, "Suspended assertion %{public}@ on acquisition", buf, 0xCu);
        }

        [v17 suspend];
        [(RBAssertionManager *)self _lock_addAssertion:v17];
LABEL_44:

        v15 = v44 + 1;
      }

      while (v15 != v88);
      v55 = [obj countByEnumeratingWithState:&v111 objects:v125 count:16];
      v88 = v55;
    }

    while (v55);
  }

  v56 = v83;
  v57 = [(RBAssertionManager *)self _lock_deactivateExistingAssertionsDelayedByIncomingAssertions:v83];
  [v83 unionSet:v57];
  v58 = identifiersCopy;
  if ([identifiersCopy count])
  {
    v87 = processCopy;
    v59 = [MEMORY[0x277CBEB58] set];
    v103 = 0u;
    v104 = 0u;
    v105 = 0u;
    v106 = 0u;
    v60 = identifiersCopy;
    v61 = [v60 countByEnumeratingWithState:&v103 objects:v115 count:16];
    if (v61)
    {
      v62 = v61;
      v63 = *v104;
      do
      {
        for (j = 0; j != v62; ++j)
        {
          if (*v104 != v63)
          {
            objc_enumerationMutation(v60);
          }

          v65 = *(*(&v103 + 1) + 8 * j);
          if ([(NSMutableSet *)self->_acquiringAssertionIdentifiers containsObject:v65])
          {
            [(NSMutableSet *)self->_acquiringAssertionIdentifiers removeObject:v65];
            v66 = rbs_assertion_log();
            if (os_log_type_enabled(v66, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v119 = v65;
              _os_log_impl(&dword_262485000, v66, OS_LOG_TYPE_DEFAULT, "Dropping unacquired identifier %{public}@", buf, 0xCu);
            }
          }

          else
          {
            v66 = [(RBAssertionCollection *)self->_assertions assertionWithIdentifier:v65];
            v67 = rbs_assertion_log();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v119 = v65;
              _os_log_impl(&dword_262485000, v67, OS_LOG_TYPE_DEFAULT, "Invalidating identifier %{public}@", buf, 0xCu);
            }

            if (v66)
            {
              [v66 setInvalidationReason:3];
              [v59 addObject:v66];
            }

            else
            {
              v68 = rbs_assertion_log();
              if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v119 = v65;
                _os_log_error_impl(&dword_262485000, v68, OS_LOG_TYPE_ERROR, "Cannot invalidate unknown identifier %{public}@", buf, 0xCu);
              }
            }
          }
        }

        v62 = [v60 countByEnumeratingWithState:&v103 objects:v115 count:16];
      }

      while (v62);
    }

    v69 = [(RBAssertionManager *)self _lock_deactivateAssertions:v59];
    v56 = v83;
    [v83 unionSet:v69];
    [v84 unionSet:v59];

    v58 = identifiersCopy;
    processCopy = v87;
  }

  if ([v56 count])
  {
    v70 = v56;
    v71 = v84;
    v72 = [(RBAssertionManager *)self _lock_updateStatesDueToChangingAssertions:v70 invalidatedAssertions:v84];
    v73 = stageCopy;
  }

  else
  {
    v72 = 0;
    v73 = stageCopy;
    v71 = v84;
  }

  if ([v71 count])
  {
    [(RBAssertionManager *)self _lock_finalizeRemovingAssertions:v71];
    [(RBAssertionManager *)self _lock_notifyDelegateOfInvalidatedAssertions:v71];
  }

  if ([v72 hasChanges])
  {
    v100[0] = MEMORY[0x277D85DD0];
    v100[1] = 3221225472;
    v100[2] = __140__RBAssertionManager__acquireAssertions_invalidateIdentifiers_forOriginatorProcess_completionPolicy_acquisitionErrorsByIndex_completeStage___block_invoke;
    v100[3] = &unk_279B32F78;
    v100[4] = self;
    v101 = v72;
    v102 = v73;
    v74 = MEMORY[0x266729AD0](v100);
    currentContext = [MEMORY[0x277D47038] currentContext];
    v76 = currentContext;
    if (policy == 1 && currentContext)
    {
      [currentContext handoffToQueue:self->_calloutQueue block:v74];
      os_unfair_lock_unlock(&self->_lock);
    }

    else
    {
      dispatch_async(self->_calloutQueue, v74);
      os_unfair_lock_unlock(&self->_lock);
      if (policy == 1)
      {
        dispatch_sync(self->_calloutQueue, &__block_literal_global_132);
      }
    }

    v73 = stageCopy;
  }

  else
  {
    os_unfair_lock_unlock(&self->_lock);
    v73[2](v73, 1, 0);
  }

  os_unfair_lock_assert_not_owner(&self->_lock);

  v77 = *MEMORY[0x277D85DE8];
}

void __140__RBAssertionManager__acquireAssertions_invalidateIdentifiers_forOriginatorProcess_completionPolicy_acquisitionErrorsByIndex_completeStage___block_invoke(uint64_t a1)
{
  os_unfair_lock_assert_not_owner((*(a1 + 32) + 24));
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v2 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __140__RBAssertionManager__acquireAssertions_invalidateIdentifiers_forOriginatorProcess_completionPolicy_acquisitionErrorsByIndex_completeStage___block_invoke_2;
  v5[3] = &unk_279B32F50;
  v6 = *(a1 + 48);
  [v4 assertionManager:v2 didUpdateProcessStates:v3 completion:v5];
}

- (unint64_t)_lock_resolvePreliminaryStatesForNonExistingProcessesWithAssertions:(id)assertions completionPolicy:(unint64_t)policy
{
  policyCopy = policy;
  v55 = *MEMORY[0x277D85DE8];
  assertionsCopy = assertions;
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v6 = assertionsCopy;
  v7 = [v6 countByEnumeratingWithState:&v49 objects:v54 count:16];
  v38 = v6;
  if (v7)
  {
    v8 = v7;
    v42 = 0;
    v9 = *v50;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v50 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = [v6 objectForKeyedSubscript:{*(*(&v49 + 1) + 8 * i), policyCopy}];
        target = [v11 target];
        process = [target process];
        identity = [target identity];
        v15 = identity;
        if (process)
        {
          v16 = 1;
        }

        else
        {
          v16 = identity == 0;
        }

        if (!v16)
        {
          selfCopy = self;
          v18 = [(RBProcessMap *)self->_stateMap valueForIdentity:identity];
          if (!v18 && [v11 isActive] && (objc_msgSend(v11, "isPersistent") & 1) == 0)
          {
            originator = [v11 originator];
            v19 = [(RBAssertionManager *)selfCopy _lock_assertionCreationAttributeContextForTargetIdentity:v15 originator:originator];

            v41 = v19;
            v20 = [v11 updateProcessStateWithAttributeContext:v19];
            if (v20)
            {
              v39 = v20;
              v21 = [dictionary objectForKeyedSubscript:v15];
              if (v21)
              {
                v22 = v21;
                [v21 unionState:v39];
              }

              else
              {
                v22 = [v39 mutableCopy];
                [dictionary setObject:v22 forKeyedSubscript:v15];
              }

              v20 = v39;
            }

            ++v42;

            v6 = v38;
          }

          self = selfCopy;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v8);
  }

  else
  {
    v42 = 0;
  }

  if ([dictionary count])
  {
    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    v23 = dictionary;
    v24 = [v23 countByEnumeratingWithState:&v45 objects:v53 count:16];
    if (v24)
    {
      v25 = v24;
      v26 = *v46;
      do
      {
        for (j = 0; j != v25; ++j)
        {
          if (*v46 != v26)
          {
            objc_enumerationMutation(v23);
          }

          v28 = *(*(&v45 + 1) + 8 * j);
          v29 = [v23 objectForKeyedSubscript:{v28, policyCopy}];
          [(RBAssertionManager *)self _lock_setState:v29 forProcessIdentity:v28];
        }

        v25 = [v23 countByEnumeratingWithState:&v45 objects:v53 count:16];
      }

      while (v25);
    }

    v30 = policyCopy;
    if (v42 == [v38 count] && policyCopy == 1)
    {
      v30 = 0;
    }

    v32 = MEMORY[0x277D47038];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __107__RBAssertionManager__lock_resolvePreliminaryStatesForNonExistingProcessesWithAssertions_completionPolicy___block_invoke;
    v43[3] = &unk_279B32B80;
    v43[4] = self;
    v44 = v23;
    v33 = v32;
    v6 = v38;
    [v33 runWithoutContext:v43];
  }

  else
  {
    v30 = policyCopy;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v30;
}

void __107__RBAssertionManager__lock_resolvePreliminaryStatesForNonExistingProcessesWithAssertions_completionPolicy___block_invoke(uint64_t a1)
{
  v2 = *(*(a1 + 32) + 16);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __107__RBAssertionManager__lock_resolvePreliminaryStatesForNonExistingProcessesWithAssertions_completionPolicy___block_invoke_2;
  v5[3] = &unk_279B32B80;
  v3 = *(a1 + 40);
  v4 = *(a1 + 32);
  v6 = v3;
  v7 = v4;
  dispatch_async(v2, v5);
}

void __107__RBAssertionManager__lock_resolvePreliminaryStatesForNonExistingProcessesWithAssertions_completionPolicy___block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  obj = *(a1 + 32);
  v2 = [obj countByEnumeratingWithState:&v14 objects:v19 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    do
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        v7 = [*(a1 + 32) objectForKeyedSubscript:v6];
        v8 = [[RBProcessStateChange alloc] initWithIdentity:v6 originalState:0 updatedState:v7];
        v9 = [RBProcessStateChangeSet alloc];
        v18 = v8;
        v10 = [MEMORY[0x277CBEA60] arrayWithObjects:&v18 count:1];
        v11 = [(RBProcessStateChangeSet *)v9 initWithChanges:v10];

        [*(*(a1 + 40) + 32) assertionManager:*(a1 + 40) didUpdateProcessStates:v11 completion:0];
      }

      v3 = [obj countByEnumeratingWithState:&v14 objects:v19 count:16];
    }

    while (v3);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_lock_batchContextInvalidatesSynchronously:(id)synchronously
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  identifiersToInvalidate = [synchronously identifiersToInvalidate];
  v5 = [identifiersToInvalidate countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(identifiersToInvalidate);
        }

        v9 = [(RBAssertionCollection *)self->_assertions assertionWithIdentifier:*(*(&v14 + 1) + 8 * i)];
        invalidatesSynchronously = [v9 invalidatesSynchronously];

        if (invalidatesSynchronously)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v6 = [identifiersToInvalidate countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)addSavedEndowment:(id)endowment forProcess:(id)process
{
  endowmentCopy = endowment;
  processCopy = process;
  os_unfair_lock_lock(&self->_lock);
  p_savedEndowments = &self->_savedEndowments;
  v9 = [(NSMapTable *)self->_savedEndowments objectForKey:processCopy];
  if (v9)
  {
    v10 = v9;
    v11 = [endowmentCopy key];
    v12 = [v10 objectForKey:v11];

    if (v12)
    {
      v13 = 0;
      goto LABEL_7;
    }

    v17 = [v10 mutableCopy];
    endowment = [endowmentCopy endowment];
    v19 = [endowmentCopy key];
    [v17 setObject:endowment forKey:v19];

    v20 = *p_savedEndowments;
    v21 = [v17 copy];
    [v20 setObject:v21 forKey:processCopy];
  }

  else
  {
    v14 = MEMORY[0x277CBEAC0];
    endowment2 = [endowmentCopy endowment];
    v16 = [endowmentCopy key];
    v10 = [v14 dictionaryWithObject:endowment2 forKey:v16];

    [*p_savedEndowments setObject:v10 forKey:processCopy];
  }

  v13 = 1;
LABEL_7:
  v22 = rbs_assertion_log();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
  {
    [RBAssertionManager addSavedEndowment:v22 forProcess:?];
  }

  os_unfair_lock_unlock(&self->_lock);
  return v13;
}

- (id)savedEndowmentsForProcess:(id)process
{
  processCopy = process;
  os_unfair_lock_lock(&self->_lock);
  v5 = [(RBAssertionManager *)self _lock_savedEndowmentsForProcess:processCopy];

  os_unfair_lock_unlock(&self->_lock);

  return v5;
}

- (void)initWithDelegate:bundlePropertiesManager:originatorPidStore:assertionDescriptorValidator:timeProvider:daemonContext:maxOperationsInFlight:maxAssertionsPerOriginator:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v1 handleFailureInMethod:@"delegate" object:? file:? lineNumber:? description:?];
}

- (void)initWithDelegate:bundlePropertiesManager:originatorPidStore:assertionDescriptorValidator:timeProvider:daemonContext:maxOperationsInFlight:maxAssertionsPerOriginator:.cold.2()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v1 handleFailureInMethod:@"bundlePropertiesManager" object:? file:? lineNumber:? description:?];
}

- (void)initWithDelegate:bundlePropertiesManager:originatorPidStore:assertionDescriptorValidator:timeProvider:daemonContext:maxOperationsInFlight:maxAssertionsPerOriginator:.cold.3()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v1 handleFailureInMethod:@"originatorPidStore" object:? file:? lineNumber:? description:?];
}

- (void)initWithDelegate:bundlePropertiesManager:originatorPidStore:assertionDescriptorValidator:timeProvider:daemonContext:maxOperationsInFlight:maxAssertionsPerOriginator:.cold.4()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v1 handleFailureInMethod:@"validator" object:? file:? lineNumber:? description:?];
}

- (void)initWithDelegate:bundlePropertiesManager:originatorPidStore:assertionDescriptorValidator:timeProvider:daemonContext:maxOperationsInFlight:maxAssertionsPerOriginator:.cold.5()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v1 handleFailureInMethod:@"daemonContext" object:? file:? lineNumber:? description:?];
}

- (void)commitBatchWithContext:completion:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"batchContext" object:? file:? lineNumber:? description:?];
}

- (void)commitBatchWithContext:completion:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v0, v1, "Suspending connection from %{public}@ because there are too many assertions in flight", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke_cold_1(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:*(a1 + 64) object:*(a1 + 32) file:@"RBAssertionManager.m" lineNumber:249 description:@"called completion more than once"];

  *a3 = *(*a2 + 8);
}

void __56__RBAssertionManager_commitBatchWithContext_completion___block_invoke_cold_2(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 40);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_262485000, log, OS_LOG_TYPE_ERROR, "Error committing batch context %@: %@", &v5, 0x16u);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)invalidateAssertionWithIdentifier:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"identifier" object:? file:? lineNumber:? description:?];
}

- (void)isProcessForeground:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v0, v1, "isProcessForeground called for untracked process: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_concreteTargetForTarget:allowAbstractTarget:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v1 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v0 handleFailureInMethod:@"target" object:? file:? lineNumber:? description:?];
}

- (void)_lock_deactivateAssertions:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

void __86__RBAssertionManager__lock_updateStatesDueToChangingAssertions_invalidatedAssertions___block_invoke_cold_3(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = [*(*(*a2 + 8) + 40) processIdentities];
  v7 = 138543618;
  v8 = a1;
  v9 = 2114;
  v10 = v5;
  _os_log_fault_impl(&dword_262485000, a3, OS_LOG_TYPE_FAULT, "State resolution exceeded max depth, possible cycle in assertion activation, latest assertions %{public}@ and changed ids %{public}@", &v7, 0x16u);

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_acquireUnderlyingAssertionForProcess:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_2_2(&dword_262485000, v0, v1, "Not acquiring underlying assertion for %{public}@ as it has no audit token", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __60__RBAssertionManager__acquireUnderlyingAssertionForProcess___block_invoke_cold_1(uint64_t a1, uint64_t a2, os_log_t log)
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = *(*(*(a1 + 40) + 8) + 40);
  v6 = 138543874;
  v7 = v3;
  v8 = 2114;
  v9 = v4;
  v10 = 2114;
  v11 = a2;
  _os_log_fault_impl(&dword_262485000, log, OS_LOG_TYPE_FAULT, "Underlying assertion for %{public}@ with name %{public}@ failed to acquire with error %{public}@", &v6, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_lock_validateDescriptor:originatorProcess:originatorState:concreteTarget:targetProcess:targetIdentity:targetIdentifier:targetState:acquisitionContext:error:.cold.1()
{
  OUTLINED_FUNCTION_0_0();
  v0 = [MEMORY[0x277CCA890] currentHandler];
  OUTLINED_FUNCTION_1_3();
  [v1 handleFailureInMethod:? object:? file:? lineNumber:? description:?];
}

- (void)addSavedEndowment:(id *)a1 forProcess:(NSObject *)a2 .cold.1(id *a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v3 = [*a1 description];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(&dword_262485000, a2, OS_LOG_TYPE_ERROR, "Saved endowments: %@", v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end