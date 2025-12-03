@interface TRIClient
+ (BOOL)_isFactorRecordFileType:(id)type;
+ (BOOL)isPlatformBinary;
+ (BOOL)sysdiagnoseInfoToDir:(id)dir error:(id *)error;
+ (id)_sysdiagnoseLogProviders;
+ (id)activeRolloutInformation:(id *)information;
+ (id)clientWithExperimentIdentifiers:(id)identifiers;
+ (id)getSandboxExtensionTokensForIdentifierQueryWithError:(id *)error;
+ (id)printedNCVInformation;
+ (id)printedOnDemandReferenceCountsPerUserInformationWithError:(id *)error;
+ (void)logSystemCovariates;
+ (void)printCurrentSettings;
- (BOOL)_hasAppropriatePermissionsForNamespaceName:(id)name;
- (BOOL)deregisterNamespaceName:(id)name error:(id *)error;
- (BOOL)enumerateCounterfactualsWithNamespace:(id)namespace error:(id *)error usingBlock:(id)block;
- (BOOL)hasCounterfactualsForNamespace:(id)namespace;
- (BOOL)hasDownloadedNamespaceWithName:(id)name;
- (BOOL)promoteFactorsForNamespace:(id)namespace error:(id *)error;
- (BOOL)setFactorsProvisionalForNamespace:(id)namespace error:(id *)error;
- (BOOL)setPurgeabilityLevelsForFactors:(id)factors withNamespaceName:(id)name;
- (BOOL)trialIdentifiersWithNamespaceName:(id)name experimentId:(id *)id deploymentId:(int *)deploymentId treatmentId:(id *)treatmentId;
- (TRIClient)init;
- (TRIClient)initWithClientIdentifier:(int)identifier paths:(id)paths factorsState:(id)state staleFactorsUsageGracePeriod:(double)period logger:(id)logger;
- (TRITrackingId)trackingId;
- (id)_rampIdForRolloutDeployment:(id)deployment;
- (id)_refresh:(BOOL)_refresh;
- (id)addUpdateHandlerForNamespaceName:(id)name queue:(id)queue usingBlock:(id)block;
- (id)addUpdateHandlerForNamespaceName:(id)name usingBlock:(id)block;
- (id)experimentIdWithNamespaceName:(id)name;
- (id)experimentIdentifiersWithNamespaceName:(id)name;
- (id)factorLevelsWithNamespaceName:(id)name;
- (id)levelForFactor:(id)factor withNamespaceName:(id)name;
- (id)purgeabilityLevelsForFactorsWithNamespaceName:(id)name;
- (id)rolloutIdWithNamespaceName:(id)name;
- (id)rolloutIdentifiersWithNamespaceName:(id)name;
- (id)sizesForFactors:(id)factors withNamespaceName:(id)name forMetric:(unint64_t)metric error:(id *)error;
- (id)treatmentIdWithNamespaceName:(id)name;
- (int64_t)_appContainerType:(id)type;
- (unint64_t)statusOfDownloadForFactors:(id)factors withNamespace:(id)namespace token:(id *)token queue:(id)queue progress:(id)progress completion:(id)completion;
- (void)_checkEntitlements;
- (void)_invalidateFactors;
- (void)_lazyInit;
- (void)_registerUpdateHandlerForNamespaceName:(id)name notificationCallback:(id)callback clientMethodNameForLogging:(const char *)logging callingFunctionReturnAddressForLogging:(void *)forLogging;
- (void)_setupExcessiveStaleFactorsUsageTimerWithGuardedData:(id)data namespace:(id)namespace clientMethodNameForLogging:(const char *)logging callingFunctionReturnAddressForLogging:(void *)forLogging;
- (void)cacheFactorLevelsWithNamespaceName:(id)name;
- (void)dealloc;
- (void)downloadLevelsForFactors:(id)factors withNamespace:(id)namespace queue:(id)queue options:(id)options progress:(id)progress completion:(id)completion;
- (void)downloadNamespaceWithName:(id)name options:(id)options progress:(id)progress completion:(id)completion;
- (void)removeDownloadStatusHandlersWithToken:(id)token;
- (void)removeLevelsForFactors:(id)factors withNamespace:(id)namespace queue:(id)queue completion:(id)completion;
- (void)removeLevelsForFactorsImmediately:(id)immediately withNamespace:(id)namespace queue:(id)queue completion:(id)completion;
- (void)removeUpdateHandlerForToken:(id)token;
@end

@implementation TRIClient

- (void)_lazyInit
{
  lock = self->_lock;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __22__TRIClient__lazyInit__block_invoke;
  v3[3] = &unk_27885F0A0;
  v3[4] = self;
  [(_PASLock *)lock runWithLockAcquired:v3];
}

void __22__TRIClient__lazyInit__block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 40) & 1) == 0)
  {
    *(a2 + 40) = 1;
    [*(a1 + 32) refresh];
    [*(a1 + 32) _checkEntitlements];
    v3 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v4 = 0;
      _os_log_impl(&dword_22EA6B000, v3, OS_LOG_TYPE_DEFAULT, "Finished lazy initialization of TRIClient", v4, 2u);
    }
  }
}

- (void)_invalidateFactors
{
  [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_322];
  defaultFactorProvider = self->_defaultFactorProvider;

  [(TRIDefaultFactorProvider *)defaultFactorProvider invalidateAllFactorProviders];
}

void __31__TRIClient__invalidateFactors__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[4];
  v4 = a2;
  [v3 invalidate];
  v5 = a2[4];
  a2[4] = 0;
}

+ (BOOL)isPlatformBinary
{
  if (qword_280ACAE80 != -1)
  {
    dispatch_once(&qword_280ACAE80, &__block_literal_global_16);
  }

  return _MergedGlobals_13;
}

void __29__TRIClient_isPlatformBinary__block_invoke()
{
  v0 = SecTaskCreateFromSelf(0);
  if (v0)
  {
    v1 = v0;
    _MergedGlobals_13 = (SecTaskGetCodeSignStatus(v0) & 0xC000001) == 67108865;

    CFRelease(v1);
  }
}

- (void)_checkEntitlements
{
  v10 = *MEMORY[0x277D85DE8];
  requiresTrialDataVaultAccess = [objc_opt_class() requiresTrialDataVaultAccess];
  namespaceDescriptorsDir = [(TRIPaths *)self->_paths namespaceDescriptorsDir];
  fileSystemRepresentation = [namespaceDescriptorsDir fileSystemRepresentation];

  *__error() = 0;
  if (requiresTrialDataVaultAccess && access(fileSystemRepresentation, 4) && *__error() == 1)
  {
    v6 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v8 = 136315138;
      v9 = fileSystemRepresentation;
      _os_log_fault_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_FAULT, "Cannot access %s - Please ensure you have set the entitlement <key>com.apple.trial.client</key> to the right value(s)", &v8, 0xCu);
    }
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)dealloc
{
  [(_PASLock *)self->_lock runWithLockAcquired:&__block_literal_global_205];
  v3.receiver = self;
  v3.super_class = TRIClient;
  [(TRIClient *)&v3 dealloc];
}

void __20__TRIClient_dealloc__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[2];
  v4 = a2;
  [v3 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_208];
  v5 = a2[2];
  a2[2] = 0;
}

- (TRIClient)init
{
  v3 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_FAULT))
  {
    *v7 = 0;
    _os_log_fault_impl(&dword_22EA6B000, v3, OS_LOG_TYPE_FAULT, "API MISUSE IN CLIENT OF TRIAL: [TRIClient new] and TRIClient() are not supported. Please see TRIClient.h for a recommendation on what to use instead", v7, 2u);
  }

  v4 = +[TRIStandardPaths sharedPaths];
  v5 = [(TRIClient *)self initWithClientIdentifier:1 paths:v4 factorsState:0 staleFactorsUsageGracePeriod:0 logger:86400.0];

  return v5;
}

+ (id)clientWithExperimentIdentifiers:(id)identifiers
{
  asFactorsState = [identifiers asFactorsState];
  v5 = [self clientWithProjectId:0 factorsState:asFactorsState];

  return v5;
}

- (TRIClient)initWithClientIdentifier:(int)identifier paths:(id)paths factorsState:(id)state staleFactorsUsageGracePeriod:(double)period logger:(id)logger
{
  v36 = *MEMORY[0x277D85DE8];
  pathsCopy = paths;
  stateCopy = state;
  loggerCopy = logger;
  v33.receiver = self;
  v33.super_class = TRIClient;
  v16 = [(TRIClient *)&v33 init];
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v35 = @"TrialXP-474.2";
    _os_log_impl(&dword_22EA6B000, v17, OS_LOG_TYPE_DEFAULT, "Initializing TRIClient. Trial version: %@", buf, 0xCu);
  }

  objc_storeStrong(&v16->_paths, paths);
  v18 = [[TRIDefaultFactorProvider alloc] initWithPaths:pathsCopy factorsState:stateCopy];
  defaultFactorProvider = v16->_defaultFactorProvider;
  v16->_defaultFactorProvider = v18;

  if (v16->_defaultFactorProvider)
  {
    v16->_projectId = identifier;
    objc_storeStrong(&v16->_logger, logger);
    v16->_staleFactorsUsageGracePeriod = period;
    v20 = objc_opt_new();
    v21 = objc_opt_new();
    v22 = *(v20 + 16);
    *(v20 + 16) = v21;

    v23 = objc_opt_new();
    v24 = *(v20 + 24);
    *(v20 + 24) = v23;

    *(v20 + 40) = 0;
    v25 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v20];
    lock = v16->_lock;
    v16->_lock = v25;

    v27 = [MEMORY[0x277D425A0] autoreleasingSerialQueueWithLabel:"com.apple.Trial.notificationQueue" qosClass:17];
    notificationQueue = v16->_notificationQueue;
    v16->_notificationQueue = v27;

    objc_storeStrong(&v16->_factorsState, state);
LABEL_6:
    v29 = v16;
    goto LABEL_10;
  }

  v30 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_22EA6B000, v30, OS_LOG_TYPE_ERROR, "Initializing TRIClient with factor state failed. No default factor provider found", buf, 2u);
  }

  v29 = 0;
LABEL_10:

  v31 = *MEMORY[0x277D85DE8];
  return v29;
}

- (id)_refresh:(BOOL)_refresh
{
  [(TRIClient *)self _lazyInit];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3032000000;
  v13 = __Block_byref_object_copy__8;
  v14 = __Block_byref_object_dispose__8;
  v15 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __22__TRIClient__refresh___block_invoke;
  v8[3] = &unk_27885F0C8;
  _refreshCopy = _refresh;
  v8[4] = self;
  v8[5] = &v10;
  [(_PASLock *)lock runWithLockAcquired:v8];
  v6 = v11[5];
  _Block_object_dispose(&v10, 8);

  return v6;
}

void __22__TRIClient__refresh___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 32);
  v6 = *(v5 + 24);
  v7 = *(v5 + 8);
  if (*(a1 + 48) == 1)
  {
    v8 = [TRITrackingId trackingIdWithProjectId:*(v5 + 24) paths:*(v5 + 8)];
    v9 = v4[1];
    v4[1] = v8;

    [*(a1 + 32) _invalidateFactors];
  }

  else
  {
    v10 = [v3[1] treatments];
    v11 = [TRITrackingId trackingIdWithProjectId:v6 paths:v7 treatments:v10];
    v12 = v4[1];
    v4[1] = v11;
  }

  v13 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
  {
    v15 = [v4[1] uuid];
    v16 = [v4[1] subject];
    v17 = [v16 deviceId];
    v18 = 138412546;
    v19 = v15;
    v20 = 2112;
    v21 = v17;
    _os_log_debug_impl(&dword_22EA6B000, v13, OS_LOG_TYPE_DEBUG, "Generated new tracking id %@ for subject with device id %@", &v18, 0x16u);
  }

  objc_storeStrong((*(*(a1 + 40) + 8) + 40), v4[1]);
  v14 = *MEMORY[0x277D85DE8];
}

- (TRITrackingId)trackingId
{
  [(TRIClient *)self _lazyInit];
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__8;
  v13 = __Block_byref_object_dispose__8;
  v14 = 0;
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __23__TRIClient_trackingId__block_invoke;
  v8[3] = &unk_27885F0F0;
  v8[4] = &v9;
  [(_PASLock *)lock runWithLockAcquired:v8];
  v5 = v10[5];
  _Block_object_dispose(&v9, 8);

  if (!v5)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:351 description:@"trackingId unexpectedly not assigned"];
  }

  return v5;
}

- (id)levelForFactor:(id)factor withNamespaceName:(id)name
{
  nameCopy = name;
  factorCopy = factor;
  [(TRIClient *)self _lazyInit];
  [(TRIClient *)self _registerUpdateHandlerForNamespaceName:nameCopy notificationCallback:0 clientMethodNameForLogging:"[TRIClient levelForFactor:withNamespaceName:]" callingFunctionReturnAddressForLogging:v4];
  v9 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider levelForFactor:factorCopy withNamespaceName:nameCopy];

  return v9;
}

- (id)factorLevelsWithNamespaceName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:373 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  [(TRIClient *)self _lazyInit];
  [(TRIClient *)self _registerUpdateHandlerForNamespaceName:nameCopy notificationCallback:0 clientMethodNameForLogging:"[TRIClient factorLevelsWithNamespaceName:]" callingFunctionReturnAddressForLogging:v3];
  v7 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider factorLevelsWithNamespaceName:nameCopy];

  return v7;
}

- (void)cacheFactorLevelsWithNamespaceName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:384 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  [(TRIClient *)self _lazyInit];
  [(TRIClient *)self _registerUpdateHandlerForNamespaceName:nameCopy notificationCallback:0 clientMethodNameForLogging:"[TRIClient cacheFactorLevelsWithNamespaceName:]" callingFunctionReturnAddressForLogging:v3];
  [(TRIDefaultFactorProvider *)self->_defaultFactorProvider cacheFactorLevelsWithNamespaceName:nameCopy];
}

- (id)addUpdateHandlerForNamespaceName:(id)name usingBlock:(id)block
{
  blockCopy = block;
  nameCopy = name;
  [(TRIClient *)self _lazyInit];
  v9 = objc_opt_new();
  [v9 setQueue:self->_notificationQueue];
  [v9 setHandler:blockCopy];

  [(TRIClient *)self _registerUpdateHandlerForNamespaceName:nameCopy notificationCallback:v9 clientMethodNameForLogging:"[TRIClient addUpdateHandlerForNamespaceName:usingBlock:]" callingFunctionReturnAddressForLogging:v4];

  return v9;
}

- (id)addUpdateHandlerForNamespaceName:(id)name queue:(id)queue usingBlock:(id)block
{
  blockCopy = block;
  queueCopy = queue;
  nameCopy = name;
  [(TRIClient *)self _lazyInit];
  v12 = objc_opt_new();
  v13 = v12;
  notificationQueue = queueCopy;
  if (!queueCopy)
  {
    notificationQueue = self->_notificationQueue;
  }

  [v12 setQueue:notificationQueue];

  [v13 setHandler:blockCopy];
  [(TRIClient *)self _registerUpdateHandlerForNamespaceName:nameCopy notificationCallback:v13 clientMethodNameForLogging:"[TRIClient addUpdateHandlerForNamespaceName:queue:usingBlock:]" callingFunctionReturnAddressForLogging:v5];

  return v13;
}

- (void)removeUpdateHandlerForToken:(id)token
{
  tokenCopy = token;
  [(TRIClient *)self _lazyInit];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = tokenCopy;
    if (v5)
    {
      lock = self->_lock;
      v7[0] = MEMORY[0x277D85DD0];
      v7[1] = 3221225472;
      v7[2] = __41__TRIClient_removeUpdateHandlerForToken___block_invoke;
      v7[3] = &unk_27885F0A0;
      v8 = v5;
      [(_PASLock *)lock runWithLockAcquired:v7];
    }
  }
}

void __41__TRIClient_removeUpdateHandlerForToken___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 24);
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __41__TRIClient_removeUpdateHandlerForToken___block_invoke_2;
  v3[3] = &unk_27885F118;
  v4 = *(a1 + 32);
  [v2 enumerateKeysAndObjectsUsingBlock:v3];
}

void __41__TRIClient_removeUpdateHandlerForToken___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 count];
  [v6 removeObject:*(a1 + 32)];
  v8 = [v6 count];

  if (v8 < v7)
  {
    v9 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [*(a1 + 32) id];
      v12 = 134218242;
      v13 = v10;
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_DEFAULT, "removed update handler %lu for namespace %@", &v12, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)_setupExcessiveStaleFactorsUsageTimerWithGuardedData:(id)data namespace:(id)namespace clientMethodNameForLogging:(const char *)logging callingFunctionReturnAddressForLogging:(void *)forLogging
{
  dataCopy = data;
  namespaceCopy = namespace;
  if (!dataCopy[4])
  {
    objc_initWeak(&location, self);
    v16 = MEMORY[0x277D85DD0];
    v17 = 3221225472;
    v18 = __142__TRIClient__setupExcessiveStaleFactorsUsageTimerWithGuardedData_namespace_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke;
    v19 = &unk_27885F168;
    objc_copyWeak(v20, &location);
    v20[1] = forLogging;
    v20[2] = logging;
    v12 = MEMORY[0x2318F2490](&v16);
    v13 = [TRIExcessiveStaleFactorsUsageTimer alloc];
    v14 = [(TRIExcessiveStaleFactorsUsageTimer *)v13 initWithNamespaceName:namespaceCopy delayTimeInSeconds:v12 block:self->_staleFactorsUsageGracePeriod, v16, v17, v18, v19];
    v15 = dataCopy[4];
    dataCopy[4] = v14;

    objc_destroyWeak(v20);
    objc_destroyWeak(&location);
  }
}

void __142__TRIClient__setupExcessiveStaleFactorsUsageTimerWithGuardedData_namespace_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (WeakRetained)
  {
    v6 = *(WeakRetained + 5);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __142__TRIClient__setupExcessiveStaleFactorsUsageTimerWithGuardedData_namespace_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke_2;
    v9[3] = &unk_27885F140;
    v11 = *(a1 + 40);
    v7 = v3;
    v8 = *(a1 + 48);
    v10 = v7;
    v12 = v8;
    [v6 runWithLockAcquired:v9];
  }
}

void __142__TRIClient__setupExcessiveStaleFactorsUsageTimerWithGuardedData_namespace_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke_2(void *a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (a1[5])
  {
    v4 = [TRIMisc bestEffortSymbolicateAddress:?];
  }

  else
  {
    v4 = @"(not recorded)";
  }

  v5 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
  {
    v7 = a1[4];
    v8 = a1[6];
    v9 = 138413058;
    v10 = v7;
    v11 = 1024;
    v12 = 24;
    v13 = 2080;
    v14 = v8;
    v15 = 2112;
    v16 = v4;
    _os_log_fault_impl(&dword_22EA6B000, v5, OS_LOG_TYPE_FAULT, "TRIClient MISUSE: Factor levels for namespace %@ have been stale for %u hours.\n    Factor levels were pinned by TRIClient method call: %s\n    Calling function: %@\nPinning stale factor levels increases disk space requirements.  Use [TRIClient addUpdateHandlerForNamespaceName:usingBlock:] to detect factor level updates and respond to them (e.g. with [TRIClient refresh]).", &v9, 0x26u);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)_registerUpdateHandlerForNamespaceName:(id)name notificationCallback:(id)callback clientMethodNameForLogging:(const char *)logging callingFunctionReturnAddressForLogging:(void *)forLogging
{
  nameCopy = name;
  callbackCopy = callback;
  lock = self->_lock;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __139__TRIClient__registerUpdateHandlerForNamespaceName_notificationCallback_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke;
  v15[3] = &unk_27885F1B8;
  v16 = callbackCopy;
  v17 = nameCopy;
  selfCopy = self;
  loggingCopy = logging;
  forLoggingCopy = forLogging;
  v13 = nameCopy;
  v14 = callbackCopy;
  [(_PASLock *)lock runWithLockAcquired:v15];
}

void __139__TRIClient__registerUpdateHandlerForNamespaceName_notificationCallback_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (*(a1 + 32))
  {
    v4 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) id];
      v6 = *(a1 + 40);
      *buf = 134218242;
      v25 = v5;
      v26 = 2112;
      v27 = v6;
      _os_log_impl(&dword_22EA6B000, v4, OS_LOG_TYPE_DEFAULT, "adding update handler %lu for namespace %@", buf, 0x16u);
    }

    v7 = [v3[3] objectForKeyedSubscript:*(a1 + 40)];
    if (!v7)
    {
      v7 = objc_opt_new();
      [v3[3] setObject:v7 forKeyedSubscript:*(a1 + 40)];
    }

    [v7 addObject:*(a1 + 32)];
    v8 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      v14 = [*(a1 + 32) id];
      v15 = *(a1 + 40);
      v16 = [v7 count];
      *buf = 134218498;
      v25 = v14;
      v26 = 2112;
      v27 = v15;
      v28 = 2048;
      v29 = v16;
      _os_log_debug_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_DEBUG, "added update handler %lu for namespace %@ — now %lu handlers for this namespace", buf, 0x20u);
    }
  }

  v9 = [v3[2] objectForKey:*(a1 + 40)];
  v10 = v9 == 0;

  if (v10)
  {
    objc_initWeak(buf, *(a1 + 48));
    v17 = MEMORY[0x277D85DD0];
    v18 = 3221225472;
    v19 = __139__TRIClient__registerUpdateHandlerForNamespaceName_notificationCallback_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke_231;
    v20 = &unk_27885F1E0;
    v21 = *(a1 + 40);
    objc_copyWeak(&v22, buf);
    v23 = *(a1 + 56);
    v11 = MEMORY[0x2318F2490](&v17);
    v12 = [TRINamespaceUpdateNotification registerUpdateForNamespaceName:*(a1 + 40) queue:*(*(a1 + 48) + 48) usingBlock:v11, v17, v18, v19, v20];
    if (v12)
    {
      [v3[2] setObject:v12 forKeyedSubscript:*(a1 + 40)];
    }

    objc_destroyWeak(&v22);
    objc_destroyWeak(buf);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __139__TRIClient__registerUpdateHandlerForNamespaceName_notificationCallback_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke_231(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    *buf = 138412290;
    v15 = v5;
    _os_log_impl(&dword_22EA6B000, v4, OS_LOG_TYPE_DEFAULT, "handling namespace update for %@", buf, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v7 = WeakRetained;
  if (WeakRetained)
  {
    v8 = *(WeakRetained + 5);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __139__TRIClient__registerUpdateHandlerForNamespaceName_notificationCallback_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke_232;
    v10[3] = &unk_27885F1B8;
    v10[4] = WeakRetained;
    v11 = *(a1 + 32);
    v13 = *(a1 + 48);
    v12 = v3;
    [v8 runWithLockAcquired:v10];
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __139__TRIClient__registerUpdateHandlerForNamespaceName_notificationCallback_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke_232(uint64_t a1, void *a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = a2;
  [*(a1 + 32) _setupExcessiveStaleFactorsUsageTimerWithGuardedData:v3 namespace:*(a1 + 40) clientMethodNameForLogging:*(a1 + 56) callingFunctionReturnAddressForLogging:*(a1 + 64)];
  v4 = [v3[3] objectForKeyedSubscript:*(a1 + 40)];
  v5 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v26 = [v4 count];
    _os_log_impl(&dword_22EA6B000, v5, OS_LOG_TYPE_DEFAULT, "dispatching updates to %lu callbacks", buf, 0xCu);
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      v10 = 0;
      do
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * v10);
        v12 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
        {
          v14 = [v11 id];
          v15 = *(a1 + 40);
          *buf = 134218242;
          v26 = v14;
          v27 = 2112;
          v28 = v15;
          _os_log_debug_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_DEBUG, "calling update handler %lu for namespace %@", buf, 0x16u);
        }

        v13 = [v11 queue];
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = __139__TRIClient__registerUpdateHandlerForNamespaceName_notificationCallback_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke_233;
        block[3] = &unk_27885F190;
        block[4] = v11;
        v20 = *(a1 + 48);
        dispatch_async(v13, block);

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v21 objects:v29 count:16];
    }

    while (v8);
  }

  v16 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(a1 + 40);
    *buf = 138412290;
    v26 = v17;
    _os_log_impl(&dword_22EA6B000, v16, OS_LOG_TYPE_DEFAULT, "handled namespace update for %@", buf, 0xCu);
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __139__TRIClient__registerUpdateHandlerForNamespaceName_notificationCallback_clientMethodNameForLogging_callingFunctionReturnAddressForLogging___block_invoke_233(uint64_t a1)
{
  v2 = [*(a1 + 32) handler];
  v2[2](v2, *(a1 + 40));
}

- (id)rolloutIdWithNamespaceName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:538 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  [(TRIClient *)self _lazyInit];
  [(TRIClient *)self _registerUpdateHandlerForNamespaceName:nameCopy notificationCallback:0 clientMethodNameForLogging:"[TRIClient rolloutIdWithNamespaceName:]" callingFunctionReturnAddressForLogging:v3];
  v7 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider factorPackIdForRolloutWithNamespaceName:nameCopy];

  return v7;
}

- (id)treatmentIdWithNamespaceName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:548 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  [(TRIClient *)self _lazyInit];
  [(TRIClient *)self _registerUpdateHandlerForNamespaceName:nameCopy notificationCallback:0 clientMethodNameForLogging:"[TRIClient treatmentIdWithNamespaceName:]" callingFunctionReturnAddressForLogging:v3];
  v7 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider treatmentIdWithNamespaceName:nameCopy];

  return v7;
}

- (id)experimentIdentifiersWithNamespaceName:(id)name
{
  v27 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:558 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  treatmentsDir = [(TRIPaths *)self->_paths treatmentsDir];
  namespaceDescriptorsDir = [treatmentsDir stringByAppendingPathComponent:nameCopy];

  v8 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138477827;
    v24 = nameCopy;
    _os_log_debug_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_DEBUG, "Looking for experiment identifiers for namespace name: %{private}@", buf, 0xCu);
  }

  if (access([namespaceDescriptorsDir fileSystemRepresentation], 4))
  {
    if (*__error() == 1)
    {
      v9 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = namespaceDescriptorsDir;
        _os_log_error_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_ERROR, "Cannot access %@ - Please ensure you have set the entitlement \n<key>com.apple.trial.client</key> to the right value(s)", buf, 0xCu);
      }
    }

    v10 = [MEMORY[0x277D73B50] namespaceIdFromName:nameCopy];
    treatmentsDir2 = [(TRIPaths *)self->_paths treatmentsDir];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v10];
    v13 = [treatmentsDir2 stringByAppendingPathComponent:v12];

    v14 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138478083;
      v24 = nameCopy;
      v25 = 1024;
      LODWORD(v26) = v10;
      _os_log_debug_impl(&dword_22EA6B000, v14, OS_LOG_TYPE_DEBUG, "Looking for experiment identifiers for namespace name: %{private}@ and namespace id: %d", buf, 0x12u);
    }

    if (access([v13 fileSystemRepresentation], 4) && *__error() == 1)
    {
      v15 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v24 = v13;
        _os_log_error_impl(&dword_22EA6B000, v15, OS_LOG_TYPE_ERROR, "Cannot access %@ - Please ensure you have set the entitlement \n<key>com.apple.trial.client</key> to the right value(s)", buf, 0xCu);
      }

LABEL_22:
      v16 = 0;
      goto LABEL_30;
    }
  }

  namespaceDescriptorsDir = [(TRIPaths *)self->_paths namespaceDescriptorsDir];
  if (access([namespaceDescriptorsDir fileSystemRepresentation], 4) && *__error() == 1)
  {
    v13 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      *buf = 138412290;
      v24 = namespaceDescriptorsDir;
      _os_log_fault_impl(&dword_22EA6B000, v13, OS_LOG_TYPE_FAULT, "Cannot access %@ - Please ensure you have set the entitlement \n<key>com.apple.trial.client</key> to the right value(s)", buf, 0xCu);
    }

    goto LABEL_22;
  }

  namespaceDescriptorsDir = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider experimentDeploymentWithNamespaceName:nameCopy];
  v17 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider treatmentIdWithNamespaceName:nameCopy];
  v13 = v17;
  if (namespaceDescriptorsDir && v17)
  {
    v18 = [TRIExperimentIdentifiers alloc];
    experimentId = [namespaceDescriptorsDir experimentId];
    v16 = [(TRIExperimentIdentifiers *)v18 initWithExperimentId:experimentId deploymentId:[namespaceDescriptorsDir deploymentId] treatmentId:v13];
  }

  else
  {
    experimentId = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(experimentId, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138478083;
      v24 = namespaceDescriptorsDir;
      v25 = 2113;
      v26 = v13;
      _os_log_debug_impl(&dword_22EA6B000, experimentId, OS_LOG_TYPE_DEBUG, "Either of ExperimentDeployment %{private}@ or Treatment %{private}@ is nil", buf, 0x16u);
    }

    v16 = 0;
  }

LABEL_30:
  v20 = *MEMORY[0x277D85DE8];

  return v16;
}

- (id)rolloutIdentifiersWithNamespaceName:(id)name
{
  v30 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:616 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  treatmentsDir = [(TRIPaths *)self->_paths treatmentsDir];
  v7 = [treatmentsDir stringByAppendingPathComponent:nameCopy];

  namespaceDescriptorsDir = [(TRIPaths *)self->_paths namespaceDescriptorsDir];
  if (![(TRIClient *)self _hasAccessToDirectory:v7])
  {
    v9 = [MEMORY[0x277D73B50] namespaceIdFromName:nameCopy];
    if (!v9)
    {
      v21 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v27 = v7;
        goto LABEL_24;
      }

LABEL_15:

LABEL_19:
      v17 = 0;
      goto LABEL_20;
    }

    v10 = v9;
    treatmentsDir2 = [(TRIPaths *)self->_paths treatmentsDir];
    v12 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v10];
    v13 = [treatmentsDir2 stringByAppendingPathComponent:v12];

    if (![(TRIClient *)self _hasAccessToDirectory:v13])
    {
      v22 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v27 = v7;
        v28 = 2112;
        v29 = v13;
        _os_log_error_impl(&dword_22EA6B000, v22, OS_LOG_TYPE_ERROR, "Cannot access %@ or %@ - Please ensure you have set the entitlement \n<key>com.apple.trial.client</key> to the right value(s)", buf, 0x16u);
      }

      goto LABEL_19;
    }
  }

  if (![(TRIClient *)self _hasAccessToDirectory:namespaceDescriptorsDir])
  {
    v21 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v27 = namespaceDescriptorsDir;
LABEL_24:
      _os_log_error_impl(&dword_22EA6B000, v21, OS_LOG_TYPE_ERROR, "Cannot access %@ - Please ensure you have set the entitlement \n<key>com.apple.trial.client</key> to the right value(s)", buf, 0xCu);
      goto LABEL_15;
    }

    goto LABEL_15;
  }

  v14 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider rolloutDeploymentWithNamespaceName:nameCopy];
  v15 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider factorPackIdForRolloutWithNamespaceName:nameCopy];
  v16 = v15;
  v17 = 0;
  if (v14 && v15)
  {
    v18 = [(TRIClient *)self _rampIdForRolloutDeployment:v14];
    v19 = [TRIRolloutIdentifiers alloc];
    rolloutId = [v14 rolloutId];
    v17 = -[TRIRolloutIdentifiers initWithRolloutId:deploymentId:factorPackId:rampId:](v19, "initWithRolloutId:deploymentId:factorPackId:rampId:", rolloutId, [v14 deploymentId], v16, v18);
  }

LABEL_20:
  v23 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_rampIdForRolloutDeployment:(id)deployment
{
  v25 = *MEMORY[0x277D85DE8];
  paths = self->_paths;
  deploymentCopy = deployment;
  namespaceDescriptorsDir = [(TRIPaths *)paths namespaceDescriptorsDir];
  v6 = objc_alloc(MEMORY[0x277CCACA8]);
  rolloutId = [deploymentCopy rolloutId];
  deploymentId = [deploymentCopy deploymentId];

  v9 = [v6 initWithFormat:@"v2/rolloutV2/%@/%d/%@", rolloutId, deploymentId, @"rampId"];
  v10 = [namespaceDescriptorsDir stringByAppendingPathComponent:v9];

  v20 = 0;
  v11 = [MEMORY[0x277CCACA8] stringWithContentsOfFile:v10 encoding:4 error:&v20];
  v12 = v20;
  v13 = v12;
  if (v11)
  {
    v14 = TRIValidateRampId(v11);
    goto LABEL_12;
  }

  if (!v12)
  {
    goto LABEL_9;
  }

  domain = [v12 domain];
  if (([domain isEqualToString:*MEMORY[0x277CCA050]] & 1) == 0)
  {

LABEL_9:
    v17 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v22 = v10;
      v23 = 2114;
      v24 = v13;
      _os_log_error_impl(&dword_22EA6B000, v17, OS_LOG_TYPE_ERROR, "Unable to read ramp ID from file at path %{public}@: %{public}@", buf, 0x16u);
    }

    goto LABEL_11;
  }

  code = [v13 code];

  if (code != 260)
  {
    goto LABEL_9;
  }

  v17 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v22 = v10;
    _os_log_debug_impl(&dword_22EA6B000, v17, OS_LOG_TYPE_DEBUG, "No ramp ID file found at path %{public}@", buf, 0xCu);
  }

LABEL_11:

  v14 = 0;
LABEL_12:

  v18 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)trialIdentifiersWithNamespaceName:(id)name experimentId:(id *)id deploymentId:(int *)deploymentId treatmentId:(id *)treatmentId
{
  nameCopy = name;
  if ([(TRIClient *)self _hasAppropriatePermissionsForNamespaceName:nameCopy])
  {
    if (id)
    {
      *id = 0;
    }

    if (deploymentId)
    {
      *deploymentId = -1;
    }

    if (treatmentId)
    {
      *treatmentId = 0;
    }

    v11 = [(TRIClient *)self treatmentIdWithNamespaceName:nameCopy];
    v12 = v11;
    if (v11)
    {
      if (treatmentId)
      {
        v13 = v11;
        *treatmentId = v12;
      }

      v14 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider experimentDeploymentWithNamespaceName:nameCopy];
      v15 = v14;
      v16 = v14 != 0;
      if (v14)
      {
        if (id)
        {
          *id = [v14 experimentId];
        }

        if (deploymentId)
        {
          *deploymentId = [v15 deploymentId];
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (id)experimentIdWithNamespaceName:(id)name
{
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:720 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  v13 = 0;
  v6 = [(TRIClient *)self trialIdentifiersWithNamespaceName:nameCopy experimentId:&v13 deploymentId:0 treatmentId:0];
  v7 = v13;
  v8 = v7;
  if (v6)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;

  return v9;
}

- (int64_t)_appContainerType:(id)type
{
  typeCopy = type;
  if (typeCopy && (v4 = MEMORY[0x277D425B0], TRILogCategory_ClientFramework(), v5 = objc_claimAutoreleasedReturnValue(), LODWORD(v4) = [v4 hasTrueBooleanEntitlement:@"application-identifier" logHandle:v5], v5, v4))
  {
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];

    if (bundleIdentifier)
    {
      if ([typeCopy isEqualToString:bundleIdentifier])
      {
        v8 = 2;
      }

      else
      {
        v8 = 3;
      }
    }

    else
    {
      v8 = 2;
    }
  }

  else
  {
    v8 = 2;
  }

  return v8;
}

- (BOOL)deregisterNamespaceName:(id)name error:(id *)error
{
  nameCopy = name;
  [(TRIClient *)self _lazyInit];
  v7 = objc_opt_new();
  v8 = [v7 deregisterNamespaceWithNamespaceName:nameCopy error:error];
  if (v8)
  {
    [(TRIDefaultFactorProvider *)self->_defaultFactorProvider setContainer:0 forNamespaceName:nameCopy];
  }

  return v8;
}

- (BOOL)hasDownloadedNamespaceWithName:(id)name
{
  nameCopy = name;
  v5 = objc_autoreleasePoolPush();
  if ([(TRIDefaultFactorProvider *)self->_defaultFactorProvider hasTreatmentInAnyOfLayers:38 withNamespaceName:nameCopy])
  {
    lastFetchWasSuccess = 1;
  }

  else
  {
    v7 = [[TRINamespaceStatusProvider alloc] initWithPaths:self->_paths];
    v8 = [(TRINamespaceStatusProvider *)v7 statusForNamespaceWithName:nameCopy];
    v9 = [(TRIClient *)self compatibilityVersionWithNamespaceName:nameCopy];
    if (v8 && [v8 compatibilityVersion] == v9)
    {
      lastFetchAttempt = [v8 lastFetchAttempt];
      if (lastFetchAttempt)
      {
        lastFetchWasSuccess = [v8 lastFetchWasSuccess];
      }

      else
      {
        lastFetchWasSuccess = 0;
      }
    }

    else
    {
      lastFetchWasSuccess = 0;
    }
  }

  objc_autoreleasePoolPop(v5);

  return lastFetchWasSuccess;
}

- (void)downloadNamespaceWithName:(id)name options:(id)options progress:(id)progress completion:(id)completion
{
  v49 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  optionsCopy = options;
  progressCopy = progress;
  completionCopy = completion;
  [(TRIClient *)self _lazyInit];
  if ([(TRIClient *)self hasRegisteredNamespaceWithName:nameCopy])
  {
    if ([(TRIClient *)self hasDownloadedNamespaceWithName:nameCopy])
    {
      v14 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v48 = nameCopy;
        _os_log_debug_impl(&dword_22EA6B000, v14, OS_LOG_TYPE_DEBUG, "namespace %@ already has downloaded treatment", buf, 0xCu);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 1, 0);
      }
    }

    else
    {
      v42[0] = MEMORY[0x277D85DD0];
      v42[1] = 3221225472;
      v42[2] = __67__TRIClient_downloadNamespaceWithName_options_progress_completion___block_invoke;
      v42[3] = &unk_27885F208;
      v20 = nameCopy;
      v43 = v20;
      v21 = completionCopy;
      v44 = v21;
      v32 = MEMORY[0x2318F2490](v42);
      v22 = [(TRIClient *)self addUpdateHandlerForNamespaceName:v20 usingBlock:?];
      v36[0] = MEMORY[0x277D85DD0];
      v36[1] = 3221225472;
      v36[2] = __67__TRIClient_downloadNamespaceWithName_options_progress_completion___block_invoke_264;
      v36[3] = &unk_27885F230;
      v23 = v20;
      v37 = v23;
      v40 = progressCopy;
      v24 = v21;
      v41 = v24;
      selfCopy = self;
      v34 = v22;
      v39 = v34;
      v31 = MEMORY[0x2318F2490](v36);
      v33 = [TRIDownloadNotification registerDownloadNotificationForKey:v23 queue:0 usingBlock:?];
      v25 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138412290;
        v48 = v23;
        _os_log_debug_impl(&dword_22EA6B000, v25, OS_LOG_TYPE_DEBUG, "requesting treatment download for namespace %@", buf, 0xCu);
      }

      v26 = objc_opt_new();
      v35 = 0;
      v27 = [v26 startNamespaceDownloadWithName:v23 options:optionsCopy error:&v35];
      v28 = v35;
      if ((v27 & 1) == 0)
      {
        v29 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138412290;
          v48 = v23;
          _os_log_debug_impl(&dword_22EA6B000, v29, OS_LOG_TYPE_DEBUG, "failed to request treatment download for namespace %@", buf, 0xCu);
        }

        if (v33)
        {
          [TRIDownloadNotification deregisterNotificationWithToken:?];
        }

        [(TRIClient *)self removeUpdateHandlerForToken:v34];
        if (v24)
        {
          (v24)[2](v24, 0, v28);
        }
      }
    }
  }

  else
  {
    v15 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138412290;
      v48 = nameCopy;
      _os_log_debug_impl(&dword_22EA6B000, v15, OS_LOG_TYPE_DEBUG, "cannot download treatment because namespace %@ is not registered", buf, 0xCu);
    }

    if (completionCopy)
    {
      v16 = MEMORY[0x277CCA9B8];
      v45 = *MEMORY[0x277CCA450];
      nameCopy = [MEMORY[0x277CCACA8] stringWithFormat:@"namespace is not registered: %@", nameCopy];
      v46 = nameCopy;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v46 forKeys:&v45 count:1];
      v19 = [v16 errorWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v18];

      (completionCopy)[2](completionCopy, 0, v19);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __67__TRIClient_downloadNamespaceWithName_options_progress_completion___block_invoke(uint64_t a1, void *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v7 = *(a1 + 32);
    v8 = 138412290;
    v9 = v7;
    _os_log_debug_impl(&dword_22EA6B000, v4, OS_LOG_TYPE_DEBUG, "received downloaded treatment activated notification for namespace %@", &v8, 0xCu);
  }

  (*(*(a1 + 40) + 16))();
  v5 = [v3 token];

  [TRINamespaceUpdateNotification deregisterUpdateWithToken:v5];
  v6 = *MEMORY[0x277D85DE8];
}

void __67__TRIClient_downloadNamespaceWithName_options_progress_completion___block_invoke_264(uint64_t a1, void *a2, void *a3)
{
  v23 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = [v6 type];
  if (v7 <= 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        v8 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          v18 = *(a1 + 32);
          v21 = 138412290;
          *v22 = v18;
          _os_log_debug_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_DEBUG, "received download completed notification for namespace %@", &v21, 0xCu);
        }

        v9 = *(a1 + 56);
        if (v9)
        {
          (*(v9 + 16))(v9, [v6 progressMaxValue]);
        }

        [TRIDownloadNotification deregisterNotificationWithToken:v5];
      }

      goto LABEL_20;
    }

    goto LABEL_11;
  }

  if (v7 != 2)
  {
    if (v7 != 3)
    {
      goto LABEL_20;
    }

LABEL_11:
    v10 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v16 = [v6 progress];
      v17 = *(a1 + 32);
      v21 = 67109378;
      *v22 = v16;
      *&v22[4] = 2112;
      *&v22[6] = v17;
      _os_log_debug_impl(&dword_22EA6B000, v10, OS_LOG_TYPE_DEBUG, "received download progress %u for namespace %@", &v21, 0x12u);
    }

    v11 = *(a1 + 56);
    if (v11)
    {
      (*(v11 + 16))(v11, [v6 progress]);
    }

    goto LABEL_20;
  }

  v12 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    v19 = *(a1 + 32);
    v20 = [v6 error];
    v21 = 138412546;
    *v22 = v19;
    *&v22[8] = 2112;
    *&v22[10] = v20;
    _os_log_debug_impl(&dword_22EA6B000, v12, OS_LOG_TYPE_DEBUG, "received download failed notification for namespace %@, error: %@", &v21, 0x16u);
  }

  v13 = *(a1 + 64);
  if (v13)
  {
    v14 = [v6 error];
    (*(v13 + 16))(v13, 0, v14);
  }

  [TRIDownloadNotification deregisterNotificationWithToken:v5];
  [*(a1 + 40) removeUpdateHandlerForToken:*(a1 + 48)];
LABEL_20:

  v15 = *MEMORY[0x277D85DE8];
}

- (id)sizesForFactors:(id)factors withNamespaceName:(id)name forMetric:(unint64_t)metric error:(id *)error
{
  v96[1] = *MEMORY[0x277D85DE8];
  factorsCopy = factors;
  nameCopy = name;
  v13 = nameCopy;
  if (!factorsCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:953 description:{@"Invalid parameter not satisfying: %@", @"factors"}];

    if (v13)
    {
      goto LABEL_3;
    }

LABEL_57:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:954 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

    goto LABEL_3;
  }

  if (!nameCopy)
  {
    goto LABEL_57;
  }

LABEL_3:
  if (qword_280ACAE88 != -1)
  {
    dispatch_once(&qword_280ACAE88, &__block_literal_global_278);
  }

  v14 = byte_280ACAE71;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __63__TRIClient_sizesForFactors_withNamespaceName_forMetric_error___block_invoke_2;
  block[3] = &unk_27885F278;
  v77 = &__block_literal_global_272;
  if (qword_280ACAE90 != -1)
  {
    dispatch_once(&qword_280ACAE90, block);
  }

  v15 = byte_280ACAE72;

  if ((v14 & 1) == 0 && (v15 & 1) == 0)
  {
    v43 = objc_alloc(MEMORY[0x277CCA9B8]);
    v95 = *MEMORY[0x277CCA450];
    v96[0] = @"Process is not entitled for on-demand factor download, please see logs for details.";
    v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v96 forKeys:&v95 count:1];
    v45 = [v43 initWithDomain:@"TRIGeneralErrorDomain" code:3 userInfo:v44];

    if (error)
    {
      v46 = v45;
      *error = v45;
    }

    v42 = 0;
    goto LABEL_52;
  }

  v74 = 0;
  v75 = 0;
  v73 = 0;
  [(TRIClient *)self _lazyInit];
  if (![TRIFactorDownloadValidator validateDownloadForFactors:factorsCopy withNamespace:v13 paths:self->_paths container:0 factorsState:self->_factorsState assetIndexesByTreatment:&v74 experimentIds:0 assetIdsByFactorPack:&v73 rolloutFactorNames:0 rolloutDeployments:0 error:&v75])
  {
    v41 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_INFO))
    {
      *buf = 138412802;
      v90 = factorsCopy;
      v91 = 2112;
      v92 = v13;
      v93 = 2112;
      v94 = v75;
      _os_log_impl(&dword_22EA6B000, v41, OS_LOG_TYPE_INFO, "Download not allowed for factors:%@, namespace:%@. Error: %@", buf, 0x20u);
    }

    v42 = 0;
    if (error)
    {
      *error = v75;
    }

    goto LABEL_51;
  }

  v16 = objc_opt_new();
  v69 = 0u;
  v70 = 0u;
  v71 = 0u;
  v72 = 0u;
  v17 = factorsCopy;
  v66 = [v17 countByEnumeratingWithState:&v69 objects:v88 count:16];
  if (!v66)
  {

LABEL_49:
    v42 = v16;
    v18 = 0;
    goto LABEL_50;
  }

  metricCopy = metric;
  v18 = 0;
  v67 = *v70;
  v63 = v13;
  v64 = *MEMORY[0x277CCA450];
  selfCopy = self;
  errorCopy = error;
  v59 = factorsCopy;
  v61 = v16;
  obj = v17;
  do
  {
    v68 = v18;
    v19 = 0;
    do
    {
      if (*v70 != v67)
      {
        objc_enumerationMutation(obj);
      }

      v20 = *(*(&v69 + 1) + 8 * v19);
      v21 = objc_autoreleasePoolPush();
      if (![(TRIClient *)self hasDownloadedNamespaceWithName:v13])
      {
        v47 = MEMORY[0x277CCA9B8];
        v86 = v64;
        v22 = [MEMORY[0x277CCACA8] stringWithFormat:@"No active rollout or experiment found for factor %@", v20];
        v87 = v22;
        v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v87 forKeys:&v86 count:1];
        v49 = [v47 errorWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v48];
        v50 = v68;
LABEL_44:

        objc_autoreleasePoolPop(v21);
        v18 = v49;
        v40 = errorCopy;
        factorsCopy = v59;
        v16 = v61;
        v38 = obj;
        goto LABEL_46;
      }

      v22 = [TRINamespaceFactorProviderChain factorProviderWithPaths:self->_paths namespaceName:v13 excludingTreatmentLayers:1];
      v23 = [v22 levelForFactor:v20];
      if (!v23)
      {
        v51 = MEMORY[0x277CCA9B8];
        v84 = v64;
        v50 = [MEMORY[0x277CCACA8] stringWithFormat:@"No level found for factor %@", v20];
        v85 = v50;
        v52 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v85 forKeys:&v84 count:1];
        v49 = [v51 errorWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v52];

        v48 = 0;
        goto LABEL_44;
      }

      v24 = v23;
      v25 = [v23 fileOrDirectoryLevelWithIsDir:0];
      v26 = v25;
      if (!v25)
      {
        v29 = MEMORY[0x277CCA9B8];
        v82 = v64;
        asset = [MEMORY[0x277CCACA8] stringWithFormat:@"Factor %@ is not file / directory typed", v20];
        v83 = asset;
        v30 = MEMORY[0x277CBEAC0];
        v31 = &v83;
        v32 = &v82;
LABEL_24:
        v33 = [v30 dictionaryWithObjects:v31 forKeys:v32 count:1];
        v34 = [v29 errorWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v33];

        v28 = 0;
        v68 = v34;
        goto LABEL_25;
      }

      if (([v25 hasAsset] & 1) == 0)
      {
        v29 = MEMORY[0x277CCA9B8];
        v80 = v64;
        asset = [MEMORY[0x277CCACA8] stringWithFormat:@"No asset metadata found for factor %@", v20];
        v81 = asset;
        v30 = MEMORY[0x277CBEAC0];
        v31 = &v81;
        v32 = &v80;
        goto LABEL_24;
      }

      asset = [v26 asset];
      if ([asset hasSize])
      {
        if (metricCopy)
        {
          v28 = 1;
          goto LABEL_26;
        }

        v33 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:{objc_msgSend(asset, "size")}];
        [v61 setObject:v33 forKeyedSubscript:v20];
        v28 = 1;
      }

      else
      {
        v35 = MEMORY[0x277CCA9B8];
        v78 = v64;
        v33 = [MEMORY[0x277CCACA8] stringWithFormat:@"No size found for asset of factor %@", v20];
        v79 = v33;
        v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
        v37 = [v35 errorWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v36];

        v28 = 0;
        v68 = v37;
      }

LABEL_25:

      v13 = v63;
LABEL_26:

      objc_autoreleasePoolPop(v21);
      if (!v28)
      {
        v40 = errorCopy;
        factorsCopy = v59;
        v16 = v61;
        v38 = obj;
        v18 = v68;
        goto LABEL_46;
      }

      ++v19;
      self = selfCopy;
    }

    while (v66 != v19);
    v38 = obj;
    v39 = [obj countByEnumeratingWithState:&v69 objects:v88 count:16];
    v40 = errorCopy;
    factorsCopy = v59;
    v16 = v61;
    v18 = v68;
    v66 = v39;
  }

  while (v39);
LABEL_46:

  if (!v18)
  {
    goto LABEL_49;
  }

  if (v40)
  {
    v53 = v18;
    v42 = 0;
    *v40 = v18;
  }

  else
  {
    v42 = 0;
  }

LABEL_50:

LABEL_51:
LABEL_52:

  v54 = *MEMORY[0x277D85DE8];

  return v42;
}

uint64_t __63__TRIClient_sizesForFactors_withNamespaceName_forMetric_error___block_invoke()
{
  v25 = *MEMORY[0x277D85DE8];
  v0 = [TRIEntitlement objectForCurrentProcessEntitlement:@"com.apple.trial.client"];
  if (!v0)
  {
    v1 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v19 = @"com.apple.trial.client";
      _os_log_error_impl(&dword_22EA6B000, v1, OS_LOG_TYPE_ERROR, "Process is missing entitlement required for on-demand factor download: <key>%@</key><array>    <string>...</string></array>", buf, 0xCu);
    }

    goto LABEL_17;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
LABEL_15:
    v1 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      v10 = [MEMORY[0x277CCAC38] processInfo];
      v11 = [v10 processName];
      v12 = objc_opt_class();
      v13 = NSStringFromClass(v12);
      *buf = 138412802;
      v19 = v11;
      v20 = 2112;
      v21 = @"com.apple.trial.client";
      v22 = 2112;
      v23 = v13;
      _os_log_error_impl(&dword_22EA6B000, v1, OS_LOG_TYPE_ERROR, "Process %@ has incorrectly-typed entitlement %@ (expected array of string, decoded %@)", buf, 0x20u);
    }

LABEL_17:
    v7 = 0;
    goto LABEL_18;
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v1 = v0;
  v2 = [v1 countByEnumeratingWithState:&v14 objects:v24 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v15;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v15 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {

          goto LABEL_15;
        }
      }

      v3 = [v1 countByEnumeratingWithState:&v14 objects:v24 count:16];
      v7 = 1;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v7 = 1;
  }

LABEL_18:

  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void __63__TRIClient_sizesForFactors_withNamespaceName_forMetric_error___block_invoke_276()
{
  v0 = objc_autoreleasePoolPush();
  v1 = MEMORY[0x277D425B0];
  v2 = TRILogCategory_ClientFramework();
  byte_280ACAE71 = [v1 hasTrueBooleanEntitlement:@"com.apple.private.security.storage.triald" logHandle:v2];

  objc_autoreleasePoolPop(v0);
}

void __63__TRIClient_sizesForFactors_withNamespaceName_forMetric_error___block_invoke_2(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  byte_280ACAE72 = (*(*(a1 + 32) + 16))();

  objc_autoreleasePoolPop(v2);
}

- (void)downloadLevelsForFactors:(id)factors withNamespace:(id)namespace queue:(id)queue options:(id)options progress:(id)progress completion:(id)completion
{
  v40[1] = *MEMORY[0x277D85DE8];
  factorsCopy = factors;
  namespaceCopy = namespace;
  queueCopy = queue;
  optionsCopy = options;
  progressCopy = progress;
  completionCopy = completion;
  if (factorsCopy)
  {
    if (namespaceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1096 description:{@"Invalid parameter not satisfying: %@", @"factors"}];

    if (namespaceCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1097 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

LABEL_3:
  if (qword_280ACAE98 != -1)
  {
    dispatch_once(&qword_280ACAE98, &__block_literal_global_302);
  }

  if (dword_280ACAE74)
  {
    v31 = 0;
    v32 = 0;
    v30 = 0;
    [(TRIClient *)self _lazyInit];
    if ([TRIFactorDownloadValidator validateDownloadForFactors:factorsCopy withNamespace:namespaceCopy paths:self->_paths container:0 factorsState:self->_factorsState assetIndexesByTreatment:&v31 experimentIds:0 assetIdsByFactorPack:&v30 rolloutFactorNames:0 rolloutDeployments:0 error:&v32])
    {
      v21 = objc_opt_new();
      [v21 downloadLevelsForFactors:factorsCopy withNamespace:namespaceCopy queue:queueCopy factorsState:self->_factorsState options:optionsCopy progress:progressCopy completion:completionCopy];
    }

    else
    {
      v26 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412802;
        v34 = factorsCopy;
        v35 = 2112;
        v36 = namespaceCopy;
        v37 = 2112;
        v38 = v32;
        _os_log_impl(&dword_22EA6B000, v26, OS_LOG_TYPE_DEFAULT, "Download not allowed for factors:%@, namespace:%@. Error: %@", buf, 0x20u);
      }

      if (completionCopy)
      {
        completionCopy[2](completionCopy, 0, v32);
      }
    }
  }

  else
  {
    v22 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v34 = @"com.apple.trial.client";
      _os_log_error_impl(&dword_22EA6B000, v22, OS_LOG_TYPE_ERROR, "Process is missing entitlement required for on-demand factor download: <key>%@</key><array>...</array>", buf, 0xCu);
    }

    v23 = objc_alloc(MEMORY[0x277CCA9B8]);
    v39 = *MEMORY[0x277CCA450];
    v40[0] = @"Process is not entitled for on-demand factor download.";
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
    v25 = [v23 initWithDomain:@"TRIGeneralErrorDomain" code:3 userInfo:v24];

    if (completionCopy)
    {
      completionCopy[2](completionCopy, 0, v25);
    }
  }

  v27 = *MEMORY[0x277D85DE8];
}

void __86__TRIClient_downloadLevelsForFactors_withNamespace_queue_options_progress_completion___block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  v1 = MEMORY[0x277D425B0];
  v2 = TRILogCategory_ClientFramework();
  if ([v1 hasTrueBooleanEntitlement:@"com.apple.private.security.storage.triald" logHandle:v2])
  {
    dword_280ACAE74 = 1;
  }

  else
  {
    v3 = [TRIEntitlement objectForCurrentProcessEntitlement:@"com.apple.trial.client"];
    dword_280ACAE74 = v3 != 0;
  }

  objc_autoreleasePoolPop(v0);
}

- (void)removeLevelsForFactors:(id)factors withNamespace:(id)namespace queue:(id)queue completion:(id)completion
{
  factorsCopy = factors;
  namespaceCopy = namespace;
  queueCopy = queue;
  completionCopy = completion;
  if (factorsCopy)
  {
    if (namespaceCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1158 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1157 description:{@"Invalid parameter not satisfying: %@", @"factors"}];

  if (!namespaceCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (completionCopy)
  {
    goto LABEL_4;
  }

LABEL_11:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1159 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_4:
  [(TRIClient *)self _lazyInit];
  v15 = objc_opt_new();
  factorsState = self->_factorsState;
  v26 = 0;
  v17 = [v15 removeLevelsForFactors:factorsCopy withNamespace:namespaceCopy factorsState:factorsState removeImmediately:0 error:&v26];
  v18 = v26;
  if (completionCopy)
  {
    if (queueCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __67__TRIClient_removeLevelsForFactors_withNamespace_queue_completion___block_invoke;
      block[3] = &unk_27885F2A0;
      v24 = completionCopy;
      v25 = v17;
      v23 = v18;
      dispatch_async(queueCopy, block);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, v17, v18);
    }
  }
}

- (void)removeLevelsForFactorsImmediately:(id)immediately withNamespace:(id)namespace queue:(id)queue completion:(id)completion
{
  immediatelyCopy = immediately;
  namespaceCopy = namespace;
  queueCopy = queue;
  completionCopy = completion;
  if (immediatelyCopy)
  {
    if (namespaceCopy)
    {
      goto LABEL_3;
    }

LABEL_10:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1189 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

    if (completionCopy)
    {
      goto LABEL_4;
    }

    goto LABEL_11;
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1188 description:{@"Invalid parameter not satisfying: %@", @"factors"}];

  if (!namespaceCopy)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (completionCopy)
  {
    goto LABEL_4;
  }

LABEL_11:
  currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1190 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

LABEL_4:
  [(TRIClient *)self _lazyInit];
  v15 = objc_opt_new();
  factorsState = self->_factorsState;
  v26 = 0;
  v17 = [v15 removeLevelsForFactors:immediatelyCopy withNamespace:namespaceCopy factorsState:factorsState removeImmediately:1 error:&v26];
  v18 = v26;
  if (completionCopy)
  {
    if (queueCopy)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __78__TRIClient_removeLevelsForFactorsImmediately_withNamespace_queue_completion___block_invoke;
      block[3] = &unk_27885F2A0;
      v24 = completionCopy;
      v25 = v17;
      v23 = v18;
      dispatch_async(queueCopy, block);
    }

    else
    {
      (*(completionCopy + 2))(completionCopy, v17, v18);
    }
  }
}

- (BOOL)setPurgeabilityLevelsForFactors:(id)factors withNamespaceName:(id)name
{
  v23 = *MEMORY[0x277D85DE8];
  factorsCopy = factors;
  nameCopy = name;
  v9 = nameCopy;
  if (factorsCopy)
  {
    if (nameCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1217 description:{@"Invalid parameter not satisfying: %@", @"factorsWithPurgeabilityLevels"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1218 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

LABEL_3:
  if ([(TRIClient *)self _hasAppropriatePermissionsForNamespaceName:v9])
  {
    v10 = objc_opt_new();
    v18 = 0;
    v11 = [v10 setPurgeabilityLevelsForFactors:factorsCopy forNamespaceName:v9 error:&v18];
    v12 = v18;
    if ((v11 & 1) == 0)
    {
      v13 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v20 = v9;
        v21 = 2112;
        v22 = v12;
        _os_log_error_impl(&dword_22EA6B000, v13, OS_LOG_TYPE_ERROR, "Failed to save purgeability levels for namespace %@ : %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v11 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)purgeabilityLevelsForFactorsWithNamespaceName:(id)name
{
  v25 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!nameCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1240 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  dictionary = [MEMORY[0x277CBEB38] dictionary];
  if ([(TRIClient *)self _hasAppropriatePermissionsForNamespaceName:nameCopy])
  {
    v7 = objc_opt_new();
    v20 = 0;
    v8 = [v7 loadNamespaceMetadataForNamespaceName:nameCopy error:&v20];
    v9 = v20;
    if (!v8)
    {
      v10 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = nameCopy;
        v23 = 2112;
        v24 = v9;
        _os_log_error_impl(&dword_22EA6B000, v10, OS_LOG_TYPE_ERROR, "Failed to save purgeability levels for namespace %@ : %@", buf, 0x16u);
      }
    }

    factorNamePurgeabilityLevels = [v8 factorNamePurgeabilityLevels];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __59__TRIClient_purgeabilityLevelsForFactorsWithNamespaceName___block_invoke;
    v18[3] = &unk_27885F2C8;
    v12 = dictionary;
    v19 = v12;
    [factorNamePurgeabilityLevels enumerateKeysAndEnumsUsingBlock:v18];

    v13 = v19;
    v14 = v12;
  }

  v15 = *MEMORY[0x277D85DE8];

  return dictionary;
}

void __59__TRIClient_purgeabilityLevelsForFactorsWithNamespaceName___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = MEMORY[0x277CCABB0];
  v6 = a2;
  v7 = [v5 numberWithInt:a3];
  [*(a1 + 32) setObject:v7 forKeyedSubscript:v6];
}

- (BOOL)setFactorsProvisionalForNamespace:(id)namespace error:(id *)error
{
  namespaceCopy = namespace;
  if (!namespaceCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1269 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  [(TRIClient *)self _lazyInit];
  v8 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider promotableFactorPackIdForNamespaceName:namespaceCopy];
  if (!v8)
  {
    v11 = 0;
    v10 = 1;
    if (!error)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = objc_opt_new();
  v15 = 0;
  v10 = [v9 setProvisionalFactorPackId:v8 forNamespaceName:namespaceCopy error:&v15];
  v11 = v15;

  if (error)
  {
LABEL_5:
    v12 = v11;
    *error = v11;
  }

LABEL_6:

  return v10;
}

- (BOOL)promoteFactorsForNamespace:(id)namespace error:(id *)error
{
  namespaceCopy = namespace;
  if (!namespaceCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1289 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  [(TRIClient *)self _lazyInit];
  v8 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider promotableFactorPackIdForNamespaceName:namespaceCopy];
  if (!v8)
  {
    v13 = 0;
    v14 = 1;
    if (!error)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  v9 = [(TRIClient *)self rolloutIdentifiersWithNamespaceName:namespaceCopy];
  v10 = v9;
  if (v9)
  {
    rolloutId = [v9 rolloutId];
    v12 = +[TRIRolloutDeployment deploymentWithRolloutId:deploymentId:](TRIRolloutDeployment, "deploymentWithRolloutId:deploymentId:", rolloutId, [v10 deploymentId]);
  }

  else
  {
    v12 = 0;
  }

  v15 = objc_opt_new();
  v19 = 0;
  v14 = [v15 promoteFactorPackId:v8 forNamespaceName:namespaceCopy rolloutDeployment:v12 error:&v19];
  v13 = v19;

  if (error)
  {
LABEL_10:
    v16 = v13;
    *error = v13;
  }

LABEL_11:

  return v14;
}

- (unint64_t)statusOfDownloadForFactors:(id)factors withNamespace:(id)namespace token:(id *)token queue:(id)queue progress:(id)progress completion:(id)completion
{
  v71[1] = *MEMORY[0x277D85DE8];
  factorsCopy = factors;
  namespaceCopy = namespace;
  queueCopy = queue;
  progressCopy = progress;
  completionCopy = completion;
  if (token)
  {
    *token = 0;
  }

  if (factorsCopy)
  {
    if (namespaceCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1322 description:{@"Invalid parameter not satisfying: %@", @"factors"}];

    if (namespaceCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClient.m" lineNumber:1323 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

LABEL_5:
  v61[0] = MEMORY[0x277D85DD0];
  v61[1] = 3221225472;
  v61[2] = __86__TRIClient_statusOfDownloadForFactors_withNamespace_token_queue_progress_completion___block_invoke;
  v61[3] = &unk_27885F2F0;
  v20 = completionCopy;
  v63 = v20;
  v21 = queueCopy;
  v62 = v21;
  v22 = MEMORY[0x2318F2490](v61);
  if (qword_280ACAEA0 != -1)
  {
    dispatch_once(&qword_280ACAEA0, &__block_literal_global_316);
  }

  if (dword_280ACAE78)
  {
    v59 = 0;
    v60 = 0;
    v58 = 0;
    [(TRIClient *)self _lazyInit];
    if ([TRIFactorDownloadValidator validateDownloadForFactors:factorsCopy withNamespace:namespaceCopy paths:self->_paths container:0 factorsState:self->_factorsState assetIndexesByTreatment:&v59 experimentIds:0 assetIdsByFactorPack:&v58 rolloutFactorNames:0 rolloutDeployments:0 error:&v60])
    {
      if ([v59 count] || objc_msgSend(v58, "count"))
      {
        v51[0] = MEMORY[0x277D85DD0];
        v51[1] = 3221225472;
        v51[2] = __86__TRIClient_statusOfDownloadForFactors_withNamespace_token_queue_progress_completion___block_invoke_320;
        v51[3] = &unk_27885F318;
        v23 = progressCopy;
        v52 = progressCopy;
        v53 = v20;
        v24 = MEMORY[0x2318F2490](v51);
        *buf = 0;
        v50 = 0;
        v25 = objc_opt_new();
        v26 = [v25 statusOfDownloadForFactors:factorsCopy withNamespace:namespaceCopy factorsState:self->_factorsState notificationKey:buf error:&v50];
        v27 = v26;
        if ((v26 - 2) < 2)
        {
          if (*buf)
          {
            v33 = [TRIDownloadNotification registerDownloadNotificationForKey:*buf queue:v21 usingBlock:v24];
            if (token)
            {
              v33 = v33;
              *token = v33;
            }
          }
        }

        else if (v26)
        {
          if (v26 == 1)
          {
            v22[2](v22, 0, 0);
          }
        }

        else
        {
          (v22)[2](v22, 0, v50);
        }

        progressCopy = v23;
      }

      else
      {
        v47 = v20;
        v48 = v21;
        v49 = progressCopy;
        v56 = 0u;
        v57 = 0u;
        v54 = 0u;
        v55 = 0u;
        v36 = factorsCopy;
        v37 = [v36 countByEnumeratingWithState:&v54 objects:v64 count:16];
        if (v37)
        {
          v38 = v37;
          v39 = *v55;
          while (2)
          {
            for (i = 0; i != v38; ++i)
            {
              if (*v55 != v39)
              {
                objc_enumerationMutation(v36);
              }

              v41 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider levelForFactor:*(*(&v54 + 1) + 8 * i) withNamespaceName:namespaceCopy];
              if (v41)
              {
                v42 = v41;
                v43 = [v41 fileOrDirectoryLevelWithIsDir:0];
                v44 = v43;
                if (v43 && ([v43 hasAsset] & 1) == 0)
                {
                  v22[2](v22, 0, 0);

                  v27 = 1;
                  goto LABEL_42;
                }
              }
            }

            v38 = [v36 countByEnumeratingWithState:&v54 objects:v64 count:16];
            if (v38)
            {
              continue;
            }

            break;
          }
        }

        v22[2](v22, 1, 0);
        v27 = 4;
LABEL_42:
        v21 = v48;
        progressCopy = v49;
        v20 = v47;
      }
    }

    else
    {
      v32 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v32, OS_LOG_TYPE_INFO))
      {
        *buf = 138412802;
        *&buf[4] = factorsCopy;
        v66 = 2112;
        v67 = namespaceCopy;
        v68 = 2112;
        v69 = v60;
        _os_log_impl(&dword_22EA6B000, v32, OS_LOG_TYPE_INFO, "Download not allowed for factors:%@, namespace:%@. Error: %@", buf, 0x20u);
      }

      (v22)[2](v22, 0, v60);
      v27 = 0;
    }
  }

  else
  {
    v28 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = @"com.apple.trial.client";
      _os_log_error_impl(&dword_22EA6B000, v28, OS_LOG_TYPE_ERROR, "Process is missing entitlement required for on-demand factor status: <key>%@</key><array>...</array>", buf, 0xCu);
    }

    v29 = objc_alloc(MEMORY[0x277CCA9B8]);
    v70 = *MEMORY[0x277CCA450];
    v71[0] = @"Process is not entitled for on-demand factor status.";
    v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v71 forKeys:&v70 count:1];
    v31 = [v29 initWithDomain:@"TRIGeneralErrorDomain" code:3 userInfo:v30];

    (v22)[2](v22, 0, v31);
    v27 = 0;
  }

  v34 = *MEMORY[0x277D85DE8];
  return v27;
}

void __86__TRIClient_statusOfDownloadForFactors_withNamespace_token_queue_progress_completion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 40);
  if (v6)
  {
    v7 = *(a1 + 32);
    if (v7)
    {
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __86__TRIClient_statusOfDownloadForFactors_withNamespace_token_queue_progress_completion___block_invoke_2;
      block[3] = &unk_27885F2A0;
      v10 = v6;
      v11 = a2;
      v9 = v5;
      dispatch_async(v7, block);
    }

    else
    {
      (v6)[2](v6, a2, v5);
    }
  }
}

void __86__TRIClient_statusOfDownloadForFactors_withNamespace_token_queue_progress_completion___block_invoke_3()
{
  v0 = objc_autoreleasePoolPush();
  v1 = MEMORY[0x277D425B0];
  v2 = TRILogCategory_ClientFramework();
  if ([v1 hasTrueBooleanEntitlement:@"com.apple.private.security.storage.triald" logHandle:v2])
  {
    dword_280ACAE78 = 1;
  }

  else
  {
    v3 = [TRIEntitlement objectForCurrentProcessEntitlement:@"com.apple.trial.client"];
    dword_280ACAE78 = v3 != 0;
  }

  objc_autoreleasePoolPop(v0);
}

void __86__TRIClient_statusOfDownloadForFactors_withNamespace_token_queue_progress_completion___block_invoke_320(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = [v5 type];
  if (v6 > 1)
  {
    if (v6 == 2)
    {
      v13 = *(a1 + 32);
      if (v13)
      {
        (*(v13 + 16))(v13, 1, [v5 progress] / 100.0);
      }

      v14 = *(a1 + 40);
      if (v14)
      {
        v15 = [v5 error];
        (*(v14 + 16))(v14, 0, v15);
      }

LABEL_19:
      [TRIDownloadNotification deregisterNotificationWithToken:v16];
      goto LABEL_20;
    }

    if (v6 == 3)
    {
      v9 = *(a1 + 32);
      if (v9)
      {
        v10.n128_f64[0] = [v5 progress] / 100.0;
        (*(v9 + 16))(v9, 3, v10);
      }
    }
  }

  else
  {
    if (v6)
    {
      if (v6 != 1)
      {
        goto LABEL_20;
      }

      v7 = *(a1 + 32);
      if (v7)
      {
        (*(v7 + 16))(v7, 4, 1.0);
      }

      v8 = *(a1 + 40);
      if (v8)
      {
        (*(v8 + 16))(v8, 1, 0);
      }

      goto LABEL_19;
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      v12.n128_f64[0] = [v5 progress] / 100.0;
      (*(v11 + 16))(v11, 2, v12);
    }
  }

LABEL_20:
}

- (void)removeDownloadStatusHandlersWithToken:(id)token
{
  if (token)
  {
    tokenCopy = token;
    [(TRIClient *)self _lazyInit];
    [TRIDownloadNotification deregisterNotificationWithToken:tokenCopy];
  }
}

- (BOOL)_hasAppropriatePermissionsForNamespaceName:(id)name
{
  v15 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277D73B50] namespaceIdFromName:name];
  treatmentsDir = [(TRIPaths *)self->_paths treatmentsDir];
  v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", v4];
  v7 = [treatmentsDir stringByAppendingPathComponent:v6];

  namespaceDescriptorsDir = [(TRIPaths *)self->_paths namespaceDescriptorsDir];
  if (access([v7 fileSystemRepresentation], 4) && *__error() == 1)
  {
    v9 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = v7;
LABEL_12:
      _os_log_error_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_ERROR, "Cannot access %@ - Please ensure you have set the entitlement \n<key>com.apple.trial.client</key> to the right value(s)", buf, 0xCu);
    }
  }

  else
  {
    if (!access([namespaceDescriptorsDir fileSystemRepresentation], 4) || *__error() != 1)
    {
      v10 = 1;
      goto LABEL_10;
    }

    v9 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = namespaceDescriptorsDir;
      goto LABEL_12;
    }
  }

  v10 = 0;
LABEL_10:

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

+ (id)activeRolloutInformation:(id *)information
{
  v4 = objc_opt_new();
  v5 = [v4 activeRolloutInformation:information];

  return v5;
}

+ (BOOL)_isFactorRecordFileType:(id)type
{
  typeCopy = type;
  v4 = [typeCopy objectForKey:@"assetReference"];
  if (v4)
  {
    v5 = 1;
  }

  else
  {
    v6 = [typeCopy objectForKey:@"path"];
    if (v6)
    {
      v5 = 1;
    }

    else
    {
      v7 = [typeCopy objectForKey:@"type"];
      v5 = [@"file" isEqual:v7];
    }
  }

  return v5;
}

+ (id)printedNCVInformation
{
  v31 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  [v2 addObject:@"NCVs:"];
  v3 = +[TRIStandardPaths sharedPaths];
  namespaceDescriptorsDefaultDir = [v3 namespaceDescriptorsDefaultDir];
  v5 = [TRINamespaceDescriptor descriptorsForDirectory:namespaceDescriptorsDefaultDir filterBlock:0];

  v6 = [v5 sortedArrayUsingComparator:&__block_literal_global_346];

  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  obj = v6;
  v7 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v27;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v27 != v9)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v26 + 1) + 8 * i);
        v12 = objc_autoreleasePoolPush();
        v13 = objc_alloc(MEMORY[0x277CCACA8]);
        namespaceName = [v11 namespaceName];
        v15 = [v13 initWithFormat:@"    - %@", namespaceName];
        [v2 addObject:v15];

        v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"       downloadNCV: %u", objc_msgSend(v11, "downloadNCV")];
        [v2 addObject:v16];

        upgradeNCVs = [v11 upgradeNCVs];

        if (upgradeNCVs)
        {
          v18 = objc_alloc(MEMORY[0x277CCACA8]);
          upgradeNCVs2 = [v11 upgradeNCVs];
          allObjects = [upgradeNCVs2 allObjects];
          v21 = [allObjects componentsJoinedByString:{@", "}];
          v22 = [v18 initWithFormat:@"       upgradeNCVs: [%@]", v21];
          [v2 addObject:v22];
        }

        objc_autoreleasePoolPop(v12);
      }

      v8 = [obj countByEnumeratingWithState:&v26 objects:v30 count:16];
    }

    while (v8);
  }

  v23 = *MEMORY[0x277D85DE8];

  return v2;
}

uint64_t __34__TRIClient_printedNCVInformation__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 namespaceName];
  v6 = [v4 namespaceName];

  v7 = [v5 compare:v6];
  return v7;
}

+ (id)printedOnDemandReferenceCountsPerUserInformationWithError:(id *)error
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v5 = objc_opt_new();
  v6 = +[TRIStandardPaths sharedPaths];
  v7 = [v6 treatmentsDirUsingGlobal:1];
  v8 = [v5 getOnDemandReferenceCountsPerUserAtGlobalPath:v7 error:error];

  if (*error)
  {
    v9 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      localizedDescription = [*error localizedDescription];
      *buf = 138412290;
      v19 = localizedDescription;
      _os_log_error_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_ERROR, "Could not get the on-demand references: %@", buf, 0xCu);
    }

    v10 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"unable to get on-demand reference counts per user", 0}];
    goto LABEL_5;
  }

  if (![v8 count])
  {
    v10 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{@"no on-demand references", 0}];
LABEL_5:
    v11 = v10;
    goto LABEL_8;
  }

  [v4 addObject:@"on-demand reference per user:"];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __71__TRIClient_printedOnDemandReferenceCountsPerUserInformationWithError___block_invoke;
  v16[3] = &unk_27885F388;
  v12 = v4;
  v17 = v12;
  [v8 enumerateKeysAndObjectsUsingBlock:v16];
  v11 = v12;

LABEL_8:
  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

void __71__TRIClient_printedOnDemandReferenceCountsPerUserInformationWithError___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = MEMORY[0x277CCACA8];
  v7 = a3;
  v8 = a2;
  v9 = [[v6 alloc] initWithFormat:@"    - %@", v8];

  [v5 addObject:v9];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __71__TRIClient_printedOnDemandReferenceCountsPerUserInformationWithError___block_invoke_2;
  v10[3] = &unk_27885F388;
  v11 = *(a1 + 32);
  [v7 enumerateKeysAndObjectsUsingBlock:v10];
}

void __71__TRIClient_printedOnDemandReferenceCountsPerUserInformationWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = MEMORY[0x277CCACA8];
  v8 = a2;
  v9 = [[v7 alloc] initWithFormat:@"       factorPackId: %@", v8];

  [v6 addObject:v9];
  if ([v5 count])
  {
    [*(a1 + 32) addObject:@"       factors:"];
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __71__TRIClient_printedOnDemandReferenceCountsPerUserInformationWithError___block_invoke_3;
    v10[3] = &unk_27885F360;
    v11 = *(a1 + 32);
    [v5 enumerateKeysAndObjectsUsingBlock:v10];
  }
}

void __71__TRIClient_printedOnDemandReferenceCountsPerUserInformationWithError___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = MEMORY[0x277CCACA8];
  v6 = a3;
  v7 = a2;
  v8 = [v5 alloc];
  v10 = [v6 componentsJoinedByString:{@", "}];

  v9 = [v8 initWithFormat:@"       - %@: [%@]", v7, v10];
  [v4 addObject:v9];
}

+ (id)_sysdiagnoseLogProviders
{
  v22[2] = *MEMORY[0x277D85DE8];
  v2 = [[TRIBlockBasedSysdiagnoseInfoProvider alloc] initWithOutputFilename:@"trial-namespace-compatibility-versions.log" block:&__block_literal_global_385];
  v22[0] = v2;
  v3 = objc_opt_new();
  v22[1] = v3;
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
  v5 = [v4 mutableCopy];

  v6 = [TRIActiveExperimentsSysdiagnoseProvider alloc];
  v7 = +[TRIAllocationStatus _defaultProviderImpl];
  v8 = [(TRIActiveExperimentsSysdiagnoseProvider *)v6 initWithAllocationStatusProvider:v7 outputFilename:@"trial-experiment-info.log" environments:&unk_28436FB70];
  v9 = [TRIActiveExperimentsSysdiagnoseProvider alloc];
  v10 = +[TRIAllocationStatus _defaultProviderImpl];
  v11 = [(TRIActiveExperimentsSysdiagnoseProvider *)v9 initWithAllocationStatusProvider:v10 outputFilename:@"trial-server-side-experiment-info.log" environments:&unk_28436FB88];
  v21[1] = v11;
  v12 = [TRIActiveExperimentsSysdiagnoseProvider alloc];
  v13 = +[TRIAllocationStatus _defaultProviderImpl];
  v14 = [(TRIActiveExperimentsSysdiagnoseProvider *)v12 initWithAllocationStatusProvider:v13 outputFilename:@"trial-mixed-experiment-info.log" environments:&unk_28436FBA0];
  v21[2] = v14;
  v15 = +[TRIExperimentHistorySysdiagnoseProvider defaultProvider];
  v21[3] = v15;
  v16 = objc_opt_new();
  v21[4] = v16;
  v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:5];

  [v5 addObjectsFromArray:v17];
  v18 = [v5 copy];

  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

+ (BOOL)sysdiagnoseInfoToDir:(id)dir error:(id *)error
{
  v28 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  _sysdiagnoseLogProviders = [self _sysdiagnoseLogProviders];
  v8 = [[TRISysdiagnoseLogWriter alloc] initWithDirectory:dirCopy];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v9 = _sysdiagnoseLogProviders;
  v10 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v24;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v24 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v23 + 1) + 8 * i);
        v15 = objc_autoreleasePoolPush();
        v22 = 0;
        v16 = [(TRISysdiagnoseLogWriter *)v8 writeSysdiagnoseInfoForProvider:v14 error:&v22];
        v17 = v22;
        objc_autoreleasePoolPop(v15);
        if (!v16)
        {
          if (error)
          {
            if (!v17)
            {
              v17 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:0];
            }

            v19 = v17;
            *error = v17;
          }

          v18 = 0;
          goto LABEL_15;
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v23 objects:v27 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  +[TRIClient logSystemCovariates];
  +[TRIClient printCurrentSettings];
  v18 = 1;
LABEL_15:

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

+ (void)printCurrentSettings
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.triald"];
  v3 = [v2 integerForKey:@"com.apple.triald.population.override"];
  isInternalBuild = [MEMORY[0x277D42590] isInternalBuild];
  v5 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    if (isInternalBuild)
    {
      v6 = @"INTERNAL";
    }

    else
    {
      v6 = @"GENERAL_PUBLIC";
    }

    v7 = [MEMORY[0x277CCABB0] numberWithInteger:v3];
    v12 = 138412546;
    v13 = v6;
    v14 = 2112;
    v15 = v7;
    _os_log_impl(&dword_22EA6B000, v5, OS_LOG_TYPE_DEFAULT, "Current population is %@ with population override: %@", &v12, 0x16u);
  }

  v8 = +[TRICEnvironmentManager currentEnv];
  v9 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [TRICEnvironmentManager envToString:v8];
    v12 = 138412290;
    v13 = v10;
    _os_log_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_DEFAULT, "Current CloudKit environment is %@", &v12, 0xCu);
  }

  v11 = *MEMORY[0x277D85DE8];
}

+ (void)logSystemCovariates
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = 0;
  v2 = objc_opt_new();
  [v2 logSystemCovariatesWithError:&v5];
  if (v5)
  {
    v3 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v7 = v5;
      _os_log_impl(&dword_22EA6B000, v3, OS_LOG_TYPE_DEFAULT, "Could not log covariates -- %@", buf, 0xCu);
    }
  }

  v4 = *MEMORY[0x277D85DE8];
}

+ (id)getSandboxExtensionTokensForIdentifierQueryWithError:(id *)error
{
  v15 = *MEMORY[0x277D85DE8];
  if (+[TRIProcessInfo hostingProcessIsCoreAnalytics])
  {
    v4 = objc_opt_new();
    v5 = [v4 getSandboxExtensionTokensForIdentifierQueryWithError:error];
  }

  else
  {
    v6 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v14 = @"Process is not allowlisted to access getSandboxExtensionTokensForIdentifierQueryWithError, please contact Trial team to request access if necessary.";
      _os_log_error_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_ERROR, "Error generating sandbox tokens: %@", buf, 0xCu);
    }

    if (error)
    {
      v7 = objc_alloc(MEMORY[0x277CCA9B8]);
      v11 = *MEMORY[0x277CCA450];
      v12 = @"Process is not allowlisted to access getSandboxExtensionTokensForIdentifierQueryWithError, please contact Trial team to request access if necessary.";
      v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
      *error = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:16 userInfo:v8];
    }

    v5 = objc_opt_new();
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

- (BOOL)hasCounterfactualsForNamespace:(id)namespace
{
  v3 = [(TRIDefaultFactorProvider *)self->_defaultFactorProvider counterfactualFactorsStatesForNamespace:namespace];
  v4 = [v3 count] != 0;

  return v4;
}

- (BOOL)enumerateCounterfactualsWithNamespace:(id)namespace error:(id *)error usingBlock:(id)block
{
  v30 = *MEMORY[0x277D85DE8];
  blockCopy = block;
  [(TRIDefaultFactorProvider *)self->_defaultFactorProvider counterfactualFactorsStatesForNamespace:namespace];
  v26 = 0;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v8 = v25 = 0u;
  v9 = [v8 countByEnumeratingWithState:&v22 objects:v29 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v23;
LABEL_3:
    v12 = 0;
    while (1)
    {
      if (*v23 != v11)
      {
        objc_enumerationMutation(v8);
      }

      if (v26)
      {
        break;
      }

      experimentIdentifiers = [*(*(&v22 + 1) + 8 * v12) experimentIdentifiers];
      treatmentId = [experimentIdentifiers treatmentId];

      if (treatmentId)
      {
        v15 = [TRIExperimentIdentifiers alloc];
        experimentId = [experimentIdentifiers experimentId];
        deploymentId = [experimentIdentifiers deploymentId];
        treatmentId2 = [experimentIdentifiers treatmentId];
        v19 = [(TRIExperimentIdentifiers *)v15 initWithExperimentId:experimentId deploymentId:deploymentId treatmentId:treatmentId2];
        blockCopy[2](blockCopy, v19, &v26);
      }

      else
      {
        experimentId = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(experimentId, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412290;
          v28 = experimentIdentifiers;
          _os_log_error_impl(&dword_22EA6B000, experimentId, OS_LOG_TYPE_ERROR, "Skipping counterfactual due to not having a treatment ID: %@", buf, 0xCu);
        }
      }

      if (v10 == ++v12)
      {
        v10 = [v8 countByEnumeratingWithState:&v22 objects:v29 count:16];
        if (v10)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
  return 1;
}

@end