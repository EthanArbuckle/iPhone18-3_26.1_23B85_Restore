@interface TRIInternalServiceRequestHandler
- (TRIInternalServiceRequestHandler)initWithPromise:(id)promise auditToken:(id *)token entitlementWitness:(id)witness;
- (void)_experimentRecordsWithDeploymentEnvironments:(id)environments serverContext:(id)context completion:(id)completion;
- (void)activeExperimentInformationWithEnvironments:(id)environments completion:(id)completion;
- (void)activeRolloutInformationWithCompletion:(id)completion;
- (void)addWithoutRunningForTask:(id)task options:(id)options completion:(id)completion;
- (void)deregisterNamespaceWithNamespaceName:(id)name teamId:(id)id completion:(id)completion;
- (void)dynamicNamespaceRecordsWithCompletion:(id)completion;
- (void)experimentHasMatchingNCV:(id)v completion:(id)completion;
- (void)experimentIdsWithActiveStateAndNamespaceName:(id)name completion:(id)completion;
- (void)experimentNotificationsWithExperimentId:(id)id cloudKitContainer:(int)container teamId:(id)teamId completion:(id)completion;
- (void)immediatelySchedulePostUpgradeActivityWithCompletion:(id)completion;
- (void)isOptedOutOfExperimentationWithCompletion:(id)completion;
- (void)lastFetchDateForContainer:(int)container teamId:(id)id completion:(id)completion;
- (void)registerNamespaceWithNamespaceName:(id)name compatibilityVersion:(unsigned int)version defaultsFileURL:(id)l teamId:(id)id appContainerId:(id)containerId appContainerType:(int64_t)type cloudKitContainerId:(int)kitContainerId completion:(id)self0;
- (void)removeUnusedChannelsWithCompletion:(id)completion;
- (void)resumeSQLiteCKDatabaseQueueWithCompletion:(id)completion;
- (void)resumeTaskQueueWithCompletion:(id)completion;
- (void)rolloutNotificationWithLatestDeploymentForRolloutId:(id)id cloudKitContainer:(int)container teamId:(id)teamId completion:(id)completion;
- (void)setFailureInjectionDelegate:(id)delegate;
- (void)setLastFetchDate:(id)date forContainer:(int)container teamId:(id)id completion:(id)completion;
- (void)setSubscription:(id)subscription namespaceName:(id)name completion:(id)completion;
- (void)startDownloadNamespaceWithName:(id)name teamId:(id)id options:(id)options completion:(id)completion;
- (void)submitTask:(id)task options:(id)options completion:(id)completion;
- (void)subscriptionForNamespaceName:(id)name completion:(id)completion;
- (void)suspendSQLiteCKDatabaseQueueWithCompletion:(id)completion;
- (void)taskRecordsWithCompletion:(id)completion;
- (void)treatmentValidForExperimentWithId:(id)id treatmentId:(id)treatmentId completion:(id)completion;
@end

@implementation TRIInternalServiceRequestHandler

- (TRIInternalServiceRequestHandler)initWithPromise:(id)promise auditToken:(id *)token entitlementWitness:(id)witness
{
  promiseCopy = promise;
  witnessCopy = witness;
  if (!promiseCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCInternalService.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"promise"}];
  }

  v17.receiver = self;
  v17.super_class = TRIInternalServiceRequestHandler;
  v12 = [(TRIInternalServiceRequestHandler *)&v17 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_promise, promise);
    v14 = *token->var0;
    *&v13->_auditToken.val[4] = *&token->var0[4];
    *v13->_auditToken.val = v14;
    objc_storeStrong(&v13->_entitlementWitness, witness);
  }

  return v13;
}

- (void)taskRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__TRIInternalServiceRequestHandler_taskRecordsWithCompletion___block_invoke;
  v12[3] = &unk_279DE0460;
  v12[4] = self;
  v5 = MEMORY[0x2743948D0](v12);
  v5[2](v5, 0);
  promise = self->_promise;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __62__TRIInternalServiceRequestHandler_taskRecordsWithCompletion___block_invoke_46;
  v9[3] = &unk_279DE04F8;
  v10 = v5;
  v11 = completionCopy;
  v7 = completionCopy;
  v8 = v5;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v9];
}

void __62__TRIInternalServiceRequestHandler_taskRecordsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 44);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = *(a1 + 32);
    v10 = "end";
    v12[0] = 67109890;
    v12[1] = v5;
    if (!a2)
    {
      v10 = "begin";
    }

    v13 = 2114;
    v14 = v7;
    v15 = 2048;
    v16 = v9;
    v17 = 2080;
    v18 = v10;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s taskRecordsWithCompletion:", v12, 0x26u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __62__TRIInternalServiceRequestHandler_taskRecordsWithCompletion___block_invoke_46(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __62__TRIInternalServiceRequestHandler_taskRecordsWithCompletion___block_invoke_2;
  v12[3] = &unk_279DE0398;
  v13 = *(a1 + 32);
  v7 = MEMORY[0x2743948D0](v12);
  if (v5 && v6)
  {
    v8 = [v5 taskDatabase];
    v9 = [v8 allTasks];
    v10 = [v9 allValues];

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v11 = *(a1 + 40);
    if (!v11)
    {
      goto LABEL_7;
    }

    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
    (*(v11 + 16))(v11, 0, v10);
  }

LABEL_7:
  if (v7)
  {
    v7[2](v7);
  }
}

- (void)experimentNotificationsWithExperimentId:(id)id cloudKitContainer:(int)container teamId:(id)teamId completion:(id)completion
{
  idCopy = id;
  teamIdCopy = teamId;
  completionCopy = completion;
  applicationBundleIdentifierFromSelf = [MEMORY[0x277D736B0] applicationBundleIdentifierFromSelf];
  if (!applicationBundleIdentifierFromSelf)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCInternalService.m" lineNumber:109 description:{@"Invalid parameter not satisfying: %@", @"trialdBundleId"}];
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __112__TRIInternalServiceRequestHandler_experimentNotificationsWithExperimentId_cloudKitContainer_teamId_completion___block_invoke;
  v31[3] = &unk_279DE0520;
  v31[4] = self;
  v15 = idCopy;
  v32 = v15;
  containerCopy = container;
  v16 = MEMORY[0x2743948D0](v31);
  v16[2](v16, 0);
  promise = self->_promise;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __112__TRIInternalServiceRequestHandler_experimentNotificationsWithExperimentId_cloudKitContainer_teamId_completion___block_invoke_54;
  v24[3] = &unk_279DE0598;
  v28 = completionCopy;
  v29 = v16;
  containerCopy2 = container;
  v25 = v15;
  v26 = teamIdCopy;
  v27 = applicationBundleIdentifierFromSelf;
  v18 = applicationBundleIdentifierFromSelf;
  v19 = teamIdCopy;
  v20 = v16;
  v21 = v15;
  v22 = completionCopy;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v24];
}

void __112__TRIInternalServiceRequestHandler_experimentNotificationsWithExperimentId_cloudKitContainer_teamId_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 44);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (a2)
    {
      v8 = "end";
    }

    else
    {
      v8 = "begin";
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = TRICloudKitSupport_Container_EnumDescriptor();
    v12 = [v11 textFormatNameForValue:*(a1 + 48)];
    v14[0] = 67110402;
    v14[1] = v5;
    v15 = 2114;
    v16 = v7;
    v17 = 2048;
    v18 = v9;
    v19 = 2080;
    v20 = v8;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s experimentNotificationsWithExperimentId:%@ cloudKitContainer:%@ completion:", v14, 0x3Au);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __112__TRIInternalServiceRequestHandler_experimentNotificationsWithExperimentId_cloudKitContainer_teamId_completion___block_invoke_54(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v5 keyValueStore];

    if (!v8)
    {
      v25 = [MEMORY[0x277CCA890] currentHandler];
      v26 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIInternalServiceRequestHandler experimentNotificationsWithExperimentId:cloudKitContainer:teamId:completion:]_block_invoke"];
      [v25 handleFailureInFunction:v26 file:@"TRIXPCInternalService.m" lineNumber:123 description:{@"Invalid parameter not satisfying: %@", @"serverContext.keyValueStore"}];
    }

    v9 = [v5 paths];

    if (!v9)
    {
      v27 = [MEMORY[0x277CCA890] currentHandler];
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIInternalServiceRequestHandler experimentNotificationsWithExperimentId:cloudKitContainer:teamId:completion:]_block_invoke"];
      [v27 handleFailureInFunction:v28 file:@"TRIXPCInternalService.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"serverContext.paths"}];
    }

    v10 = [v5 namespaceDatabase];

    if (!v10)
    {
      v29 = [MEMORY[0x277CCA890] currentHandler];
      v30 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIInternalServiceRequestHandler experimentNotificationsWithExperimentId:cloudKitContainer:teamId:completion:]_block_invoke"];
      [v29 handleFailureInFunction:v30 file:@"TRIXPCInternalService.m" lineNumber:125 description:{@"Invalid parameter not satisfying: %@", @"serverContext.namespaceDatabase"}];
    }

    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __112__TRIInternalServiceRequestHandler_experimentNotificationsWithExperimentId_cloudKitContainer_teamId_completion___block_invoke_2;
    v37[3] = &unk_279DE0548;
    v38 = *(a1 + 56);
    v11 = MEMORY[0x2743948D0](v37);
    v12 = v11;
    if (*(a1 + 32))
    {
      v33 = v11;
      v13 = [v5 keyValueStore];
      v14 = [TRIFetchDateManager managerWithKeyValueStore:v13];

      v15 = [v5 paths];
      v16 = [v15 namespaceDescriptorsDefaultDir];

      if (!v16)
      {
        v31 = [MEMORY[0x277CCA890] currentHandler];
        v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIInternalServiceRequestHandler experimentNotificationsWithExperimentId:cloudKitContainer:teamId:completion:]_block_invoke"];
        [v31 handleFailureInFunction:v32 file:@"TRIXPCInternalService.m" lineNumber:143 description:{@"Expression was unexpectedly nil/false: %@", @"[serverContext.paths namespaceDescriptorsDefaultDir]"}];
      }

      v17 = [v5 namespaceDatabase];
      v18 = [TRINamespaceDescriptorProvider providerWithNamespaceDatabase:v17 defaultDescriptorDirectoryPath:v16];

      v19 = [TRICKNativeArtifactProvider providerForContainer:*(a1 + 72) teamId:*(a1 + 40) bundleId:*(a1 + 48) dateProvider:v14 namespaceDescriptorProvider:v18 serverContext:v5];
      v20 = [objc_alloc(MEMORY[0x277D736A0]) initWithAllowsCellular:0 discretionaryBehavior:0];
      v21 = [[TRIFetchOptions alloc] initWithDownloadOptions:v20 cacheDeleteAvailableSpaceClass:&unk_287FC4690];
      v22 = *(a1 + 32);
      v34[0] = MEMORY[0x277D85DD0];
      v34[1] = 3221225472;
      v34[2] = __112__TRIInternalServiceRequestHandler_experimentNotificationsWithExperimentId_cloudKitContainer_teamId_completion___block_invoke_82;
      v34[3] = &unk_279DE0570;
      v35 = *(a1 + 56);
      v36 = *(a1 + 64);
      [v19 fetchExperimentWithLatestDeploymentForExperimentId:v22 options:v21 completion:v34];

      v12 = v33;
    }

    else
    {
      (*(v11 + 16))(v11, 2, @"ExperimentId must not be nil");
      (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    v23 = *(a1 + 56);
    if (v23)
    {
      v24 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
      (*(v23 + 16))(v23, 0, v24);
    }
  }
}

void __112__TRIInternalServiceRequestHandler_experimentNotificationsWithExperimentId_cloudKitContainer_teamId_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = a3;
    v7 = [v5 alloc];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = v6;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

    (*(*(a1 + 32) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __112__TRIInternalServiceRequestHandler_experimentNotificationsWithExperimentId_cloudKitContainer_teamId_completion___block_invoke_82(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = TRILogCategory_Server();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v13 = [v7 experiment];
    *buf = 138543362;
    v16 = v13;
    _os_log_debug_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEBUG, "got artifact from CloudKit with experiment %{public}@", buf, 0xCu);
  }

  v10 = *(a1 + 32);
  if (v7)
  {
    v14 = v7;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:&v14 count:1];
    (*(v10 + 16))(v10, v11, v8);
  }

  else
  {
    (*(v10 + 16))(*(a1 + 32), 0, v8);
  }

  (*(*(a1 + 40) + 16))();

  v12 = *MEMORY[0x277D85DE8];
}

- (void)rolloutNotificationWithLatestDeploymentForRolloutId:(id)id cloudKitContainer:(int)container teamId:(id)teamId completion:(id)completion
{
  idCopy = id;
  teamIdCopy = teamId;
  completionCopy = completion;
  applicationBundleIdentifierFromSelf = [MEMORY[0x277D736B0] applicationBundleIdentifierFromSelf];
  if (!applicationBundleIdentifierFromSelf)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCInternalService.m" lineNumber:173 description:{@"Invalid parameter not satisfying: %@", @"trialdBundleId"}];
  }

  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 3221225472;
  v31[2] = __124__TRIInternalServiceRequestHandler_rolloutNotificationWithLatestDeploymentForRolloutId_cloudKitContainer_teamId_completion___block_invoke;
  v31[3] = &unk_279DE0520;
  v31[4] = self;
  v15 = idCopy;
  v32 = v15;
  containerCopy = container;
  v16 = MEMORY[0x2743948D0](v31);
  v16[2](v16, 0);
  promise = self->_promise;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __124__TRIInternalServiceRequestHandler_rolloutNotificationWithLatestDeploymentForRolloutId_cloudKitContainer_teamId_completion___block_invoke_85;
  v24[3] = &unk_279DE0598;
  v28 = completionCopy;
  v29 = v16;
  containerCopy2 = container;
  v25 = v15;
  v26 = teamIdCopy;
  v27 = applicationBundleIdentifierFromSelf;
  v18 = applicationBundleIdentifierFromSelf;
  v19 = teamIdCopy;
  v20 = v16;
  v21 = v15;
  v22 = completionCopy;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v24];
}

void __124__TRIInternalServiceRequestHandler_rolloutNotificationWithLatestDeploymentForRolloutId_cloudKitContainer_teamId_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 44);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (a2)
    {
      v8 = "end";
    }

    else
    {
      v8 = "begin";
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = TRICloudKitSupport_Container_EnumDescriptor();
    v12 = [v11 textFormatNameForValue:*(a1 + 48)];
    v14[0] = 67110402;
    v14[1] = v5;
    v15 = 2114;
    v16 = v7;
    v17 = 2048;
    v18 = v9;
    v19 = 2080;
    v20 = v8;
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s rolloutNotificationsWithLatestDeploymentForRolloutId:%@ cloudKitContainer:%@ completion:", v14, 0x3Au);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __124__TRIInternalServiceRequestHandler_rolloutNotificationWithLatestDeploymentForRolloutId_cloudKitContainer_teamId_completion___block_invoke_85(uint64_t a1, void *a2, void *a3)
{
  v49 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v5 paths];

    if (!v8)
    {
      v31 = [MEMORY[0x277CCA890] currentHandler];
      v32 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIInternalServiceRequestHandler rolloutNotificationWithLatestDeploymentForRolloutId:cloudKitContainer:teamId:completion:]_block_invoke"];
      [v31 handleFailureInFunction:v32 file:@"TRIXPCInternalService.m" lineNumber:186 description:{@"Invalid parameter not satisfying: %@", @"serverContext.paths"}];
    }

    v9 = [v5 keyValueStore];

    if (!v9)
    {
      v33 = [MEMORY[0x277CCA890] currentHandler];
      v34 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIInternalServiceRequestHandler rolloutNotificationWithLatestDeploymentForRolloutId:cloudKitContainer:teamId:completion:]_block_invoke"];
      [v33 handleFailureInFunction:v34 file:@"TRIXPCInternalService.m" lineNumber:187 description:{@"Invalid parameter not satisfying: %@", @"serverContext.keyValueStore"}];
    }

    v10 = [v5 namespaceDatabase];

    if (!v10)
    {
      v35 = [MEMORY[0x277CCA890] currentHandler];
      v36 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIInternalServiceRequestHandler rolloutNotificationWithLatestDeploymentForRolloutId:cloudKitContainer:teamId:completion:]_block_invoke"];
      [v35 handleFailureInFunction:v36 file:@"TRIXPCInternalService.m" lineNumber:188 description:{@"Invalid parameter not satisfying: %@", @"serverContext.namespaceDatabase"}];
    }

    v45[0] = MEMORY[0x277D85DD0];
    v45[1] = 3221225472;
    v45[2] = __124__TRIInternalServiceRequestHandler_rolloutNotificationWithLatestDeploymentForRolloutId_cloudKitContainer_teamId_completion___block_invoke_2;
    v45[3] = &unk_279DE0548;
    v46 = *(a1 + 56);
    v11 = MEMORY[0x2743948D0](v45);
    v12 = v11;
    if (*(a1 + 32))
    {
      v40 = v11;
      v13 = [v5 keyValueStore];
      v14 = [TRIFetchDateManager managerWithKeyValueStore:v13];

      v15 = [v5 paths];
      v16 = [v15 namespaceDescriptorsDefaultDir];

      if (!v16)
      {
        v37 = [MEMORY[0x277CCA890] currentHandler];
        v38 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIInternalServiceRequestHandler rolloutNotificationWithLatestDeploymentForRolloutId:cloudKitContainer:teamId:completion:]_block_invoke"];
        [v37 handleFailureInFunction:v38 file:@"TRIXPCInternalService.m" lineNumber:206 description:{@"Expression was unexpectedly nil/false: %@", @"[serverContext.paths namespaceDescriptorsDefaultDir]"}];
      }

      v17 = [v5 namespaceDatabase];
      v18 = [TRINamespaceDescriptorProvider providerWithNamespaceDatabase:v17 defaultDescriptorDirectoryPath:v16];

      v39 = v14;
      v19 = [TRICKNativeArtifactProvider providerForContainer:*(a1 + 72) teamId:*(a1 + 40) bundleId:*(a1 + 48) dateProvider:v14 namespaceDescriptorProvider:v18 serverContext:v5];
      v20 = [objc_alloc(MEMORY[0x277D736A0]) initWithAllowsCellular:0 discretionaryBehavior:0];
      v21 = [[TRIFetchOptions alloc] initWithDownloadOptions:v20 cacheDeleteAvailableSpaceClass:&unk_287FC46A8];
      v22 = TRILogCategory_Server();
      v23 = os_signpost_id_generate(v22);

      v24 = TRILogCategory_Server();
      v25 = v24;
      if (v23 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v24))
      {
        v26 = *(a1 + 32);
        *buf = 138543362;
        v48 = v26;
        _os_signpost_emit_with_name_impl(&dword_26F567000, v25, OS_SIGNPOST_INTERVAL_BEGIN, v23, "FetchRolloutNotificationWithLatestDeployment", "r: %{public}@", buf, 0xCu);
      }

      v27 = *(a1 + 32);
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __124__TRIInternalServiceRequestHandler_rolloutNotificationWithLatestDeploymentForRolloutId_cloudKitContainer_teamId_completion___block_invoke_91;
      v41[3] = &unk_279DE05C0;
      v42 = *(a1 + 56);
      v43 = *(a1 + 64);
      v44 = v23;
      [v19 fetchRolloutNotificationWithLatestDeploymentForRolloutId:v27 options:v21 completion:v41];

      v12 = v40;
    }

    else
    {
      (*(v11 + 16))(v11, 2, @"Parameter rolloutId must not be nil.");
      (*(*(a1 + 64) + 16))();
    }
  }

  else
  {
    v28 = *(a1 + 56);
    if (v28)
    {
      v29 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
      (*(v28 + 16))(v28, 0, v29);
    }
  }

  v30 = *MEMORY[0x277D85DE8];
}

void __124__TRIInternalServiceRequestHandler_rolloutNotificationWithLatestDeploymentForRolloutId_cloudKitContainer_teamId_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (*(a1 + 32))
  {
    v5 = MEMORY[0x277CCA9B8];
    v6 = a3;
    v7 = [v5 alloc];
    v11 = *MEMORY[0x277CCA450];
    v12[0] = v6;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

    (*(*(a1 + 32) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __124__TRIInternalServiceRequestHandler_rolloutNotificationWithLatestDeploymentForRolloutId_cloudKitContainer_teamId_completion___block_invoke_91(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  v20 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a5;
  v9 = TRILogCategory_Server();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
  {
    v16 = [v7 deployment];
    v17 = [v16 shortDesc];
    v18 = 138543362;
    v19 = v17;
    _os_log_debug_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEBUG, "Downloaded artifact from CloudKit for rollout %{public}@", &v18, 0xCu);
  }

  (*(a1[4] + 16))();
  (*(a1[5] + 16))();
  v10 = TRILogCategory_Server();
  v11 = v10;
  v12 = a1[6];
  if (v12 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v10))
  {
    v13 = [v7 deployment];
    v14 = [v13 shortDesc];
    v18 = 138543362;
    v19 = v14;
    _os_signpost_emit_with_name_impl(&dword_26F567000, v11, OS_SIGNPOST_INTERVAL_END, v12, "FetchRolloutNotificationWithLatestDeployment", "r: %{public}@", &v18, 0xCu);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)submitTask:(id)task options:(id)options completion:(id)completion
{
  taskCopy = task;
  optionsCopy = options;
  completionCopy = completion;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __66__TRIInternalServiceRequestHandler_submitTask_options_completion___block_invoke;
  v24[3] = &unk_279DE05E8;
  v24[4] = self;
  v11 = taskCopy;
  v25 = v11;
  v12 = optionsCopy;
  v26 = v12;
  v13 = MEMORY[0x2743948D0](v24);
  v13[2](v13, 0);
  promise = self->_promise;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __66__TRIInternalServiceRequestHandler_submitTask_options_completion___block_invoke_93;
  v19[3] = &unk_279DE0610;
  v22 = completionCopy;
  v23 = v13;
  v20 = v11;
  v21 = v12;
  v15 = v12;
  v16 = v11;
  v17 = v13;
  v18 = completionCopy;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v19];
}

void __66__TRIInternalServiceRequestHandler_submitTask_options_completion___block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1[4] + 44);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = "end";
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    if (!a2)
    {
      v9 = "begin";
    }

    v14[0] = 67110402;
    v14[1] = v5;
    v15 = 2114;
    v16 = v7;
    v17 = 2048;
    v18 = v10;
    v19 = 2080;
    v20 = v9;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s submitTask:%@ options:%@ completion:", v14, 0x3Au);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __66__TRIInternalServiceRequestHandler_submitTask_options_completion___block_invoke_93(uint64_t a1, void *a2, void *a3)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v22 = MEMORY[0x277D85DD0];
    v23 = 3221225472;
    v24 = __66__TRIInternalServiceRequestHandler_submitTask_options_completion___block_invoke_2;
    v25 = &unk_279DE0398;
    v26 = *(a1 + 56);
    v8 = MEMORY[0x2743948D0](&v22);
    v9 = *(a1 + 32);
    if (v9)
    {
      v10 = [v7 addTask:v9 options:{*(a1 + 40), v22, v23, v24, v25}];
      v11 = [[TRIRunningXPCActivityDescriptor alloc] initForImmediateWorkWithCapabilities:11];
      [v7 resumeWithXPCActivityDescriptor:v11 executeWhenSuspended:0];

      if (v10 == 2)
      {
        v12 = objc_alloc(MEMORY[0x277CCA9B8]);
        v27 = *MEMORY[0x277CCA450];
        v28 = @"Unable to add task.";
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
        v14 = [v12 initWithDomain:@"TRIGeneralErrorDomain" code:13 userInfo:v13];
      }

      else
      {
        v14 = 0;
      }

      v20 = *(a1 + 48);
      if (v20)
      {
        (*(v20 + 16))(v20, v10 != 2, v14);
      }
    }

    else
    {
      v17 = objc_alloc(MEMORY[0x277CCA9B8]);
      v29 = *MEMORY[0x277CCA450];
      v30[0] = @"Task parameter cannot be nil.";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:{1, v22, v23, v24, v25}];
      v14 = [v17 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v18];

      v19 = *(a1 + 48);
      if (v19)
      {
        (*(v19 + 16))(v19, 0, v14);
      }
    }

    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    v15 = *(a1 + 48);
    if (v15)
    {
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
      (*(v15 + 16))(v15, 0, v16);
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

- (void)addWithoutRunningForTask:(id)task options:(id)options completion:(id)completion
{
  taskCopy = task;
  optionsCopy = options;
  completionCopy = completion;
  v12 = completionCopy;
  if (!taskCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCInternalService.m" lineNumber:278 description:{@"Invalid parameter not satisfying: %@", @"task"}];

    if (v12)
    {
      goto LABEL_3;
    }

LABEL_5:
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIXPCInternalService.m" lineNumber:279 description:{@"Invalid parameter not satisfying: %@", @"completion"}];

    goto LABEL_3;
  }

  if (!completionCopy)
  {
    goto LABEL_5;
  }

LABEL_3:
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __80__TRIInternalServiceRequestHandler_addWithoutRunningForTask_options_completion___block_invoke;
  v26[3] = &unk_279DE05E8;
  v26[4] = self;
  v13 = taskCopy;
  v27 = v13;
  v28 = optionsCopy;
  v14 = optionsCopy;
  v15 = MEMORY[0x2743948D0](v26);
  v15[2](v15, 0);
  promise = self->_promise;
  v22[0] = MEMORY[0x277D85DD0];
  v22[1] = 3221225472;
  v22[2] = __80__TRIInternalServiceRequestHandler_addWithoutRunningForTask_options_completion___block_invoke_107;
  v22[3] = &unk_279DE0638;
  v24 = v12;
  v25 = v15;
  v23 = v13;
  v17 = v13;
  v18 = v15;
  v19 = v12;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v22];
}

void __80__TRIInternalServiceRequestHandler_addWithoutRunningForTask_options_completion___block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1[4] + 44);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = "end";
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    if (!a2)
    {
      v9 = "begin";
    }

    v14[0] = 67110402;
    v14[1] = v5;
    v15 = 2114;
    v16 = v7;
    v17 = 2048;
    v18 = v10;
    v19 = 2080;
    v20 = v9;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s addWithoutRunningForTask:%@ options:%@ completion:", v14, 0x3Au);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __80__TRIInternalServiceRequestHandler_addWithoutRunningForTask_options_completion___block_invoke_107(uint64_t a1, void *a2, void *a3)
{
  v21[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v15 = MEMORY[0x277D85DD0];
    v16 = 3221225472;
    v17 = __80__TRIInternalServiceRequestHandler_addWithoutRunningForTask_options_completion___block_invoke_2;
    v18 = &unk_279DE0398;
    v19 = *(a1 + 48);
    v8 = MEMORY[0x2743948D0](&v15);
    if ([v7 addTaskAfterOperationsFinish:{*(a1 + 32), v15, v16, v17, v18}])
    {
      v9 = 0;
    }

    else
    {
      v12 = objc_alloc(MEMORY[0x277CCA9B8]);
      v20 = *MEMORY[0x277CCA450];
      v21[0] = @"Unable to add task.";
      v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:1];
      v9 = [v12 initWithDomain:@"TRIGeneralErrorDomain" code:13 userInfo:v13];
    }

    (*(*(a1 + 40) + 16))();

    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    v10 = *(a1 + 40);
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
    (*(v10 + 16))(v10, 0, v11);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)resumeTaskQueueWithCompletion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCInternalService.m" lineNumber:307 description:{@"Invalid parameter not satisfying: %@", @"completion"}];
  }

  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __66__TRIInternalServiceRequestHandler_resumeTaskQueueWithCompletion___block_invoke;
  v14[3] = &unk_279DE0460;
  v14[4] = self;
  v6 = MEMORY[0x2743948D0](v14);
  v6[2](v6, 0);
  promise = self->_promise;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__TRIInternalServiceRequestHandler_resumeTaskQueueWithCompletion___block_invoke_108;
  v11[3] = &unk_279DE04F8;
  v12 = completionCopy;
  v13 = v6;
  v8 = v6;
  v9 = completionCopy;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v11];
}

void __66__TRIInternalServiceRequestHandler_resumeTaskQueueWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 44);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = *(a1 + 32);
    v10 = "end";
    v12[0] = 67109890;
    v12[1] = v5;
    if (!a2)
    {
      v10 = "begin";
    }

    v13 = 2114;
    v14 = v7;
    v15 = 2048;
    v16 = v9;
    v17 = 2080;
    v18 = v10;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s resumeTaskQueueWithCompletion:", v12, 0x26u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __66__TRIInternalServiceRequestHandler_resumeTaskQueueWithCompletion___block_invoke_108(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __66__TRIInternalServiceRequestHandler_resumeTaskQueueWithCompletion___block_invoke_2;
    v12[3] = &unk_279DE0398;
    v13 = *(a1 + 40);
    v8 = MEMORY[0x2743948D0](v12);
    v9 = [[TRIRunningXPCActivityDescriptor alloc] initForImmediateWorkWithCapabilities:11];
    [v7 resumeWithXPCActivityDescriptor:v9 executeWhenSuspended:0];
    (*(*(a1 + 32) + 16))();

    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    v10 = *(a1 + 32);
    v11 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
    (*(v10 + 16))(v10, 0, v11);
  }
}

- (void)lastFetchDateForContainer:(int)container teamId:(id)id completion:(id)completion
{
  idCopy = id;
  completionCopy = completion;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __80__TRIInternalServiceRequestHandler_lastFetchDateForContainer_teamId_completion___block_invoke;
  v21[3] = &unk_279DE0520;
  v21[4] = self;
  containerCopy = container;
  v10 = idCopy;
  v22 = v10;
  v11 = MEMORY[0x2743948D0](v21);
  v11[2](v11, 0);
  promise = self->_promise;
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__TRIInternalServiceRequestHandler_lastFetchDateForContainer_teamId_completion___block_invoke_109;
  v16[3] = &unk_279DE0660;
  v18 = completionCopy;
  v19 = v11;
  containerCopy2 = container;
  v17 = v10;
  v13 = v10;
  v14 = v11;
  v15 = completionCopy;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v16];
}

void __80__TRIInternalServiceRequestHandler_lastFetchDateForContainer_teamId_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 44);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *(a1 + 32);
    if (a2)
    {
      v9 = "end";
    }

    else
    {
      v9 = "begin";
    }

    v10 = TRICloudKitSupport_Container_EnumDescriptor();
    v11 = [v10 enumNameForValue:*(a1 + 48)];
    v12 = *(a1 + 40);
    v14[0] = 67110402;
    v14[1] = v5;
    v15 = 2114;
    v16 = v7;
    v17 = 2048;
    v18 = v8;
    v19 = 2080;
    v20 = v9;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s lastFetchDateForContainer:%@ teamId:%@ completion:", v14, 0x3Au);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __80__TRIInternalServiceRequestHandler_lastFetchDateForContainer_teamId_completion___block_invoke_109(uint64_t a1, void *a2, void *a3)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __80__TRIInternalServiceRequestHandler_lastFetchDateForContainer_teamId_completion___block_invoke_2;
    v22[3] = &unk_279DE0398;
    v23 = *(a1 + 48);
    v8 = MEMORY[0x2743948D0](v22);
    v9 = [v5 keyValueStore];
    v10 = v9 == 0;

    if (v10)
    {
      v20 = [MEMORY[0x277CCA890] currentHandler];
      v21 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIInternalServiceRequestHandler lastFetchDateForContainer:teamId:completion:]_block_invoke"];
      [v20 handleFailureInFunction:v21 file:@"TRIXPCInternalService.m" lineNumber:344 description:{@"Invalid parameter not satisfying: %@", @"serverContext.keyValueStore"}];
    }

    if (*(a1 + 40))
    {
      v11 = *(a1 + 56);
      if (TRICloudKitSupport_Container_IsValidValue() && *(a1 + 56))
      {
        v12 = [v5 keyValueStore];
        v13 = [TRIFetchDateManager managerWithKeyValueStore:v12];

        v14 = [v13 lastFetchDateWithType:0 container:*(a1 + 56) teamId:*(a1 + 32)];
        (*(*(a1 + 40) + 16))();
      }

      else
      {
        v17 = objc_alloc(MEMORY[0x277CCA9B8]);
        v24 = *MEMORY[0x277CCA450];
        v25[0] = @"Container value is unsupported.";
        v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:&v24 count:1];
        v13 = [v17 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v18];

        (*(*(a1 + 40) + 16))();
      }
    }

    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    v15 = *(a1 + 40);
    if (v15)
    {
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
      (*(v15 + 16))(v15, 0, v16);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)setLastFetchDate:(id)date forContainer:(int)container teamId:(id)id completion:(id)completion
{
  dateCopy = date;
  idCopy = id;
  completionCopy = completion;
  v27[0] = MEMORY[0x277D85DD0];
  v27[1] = 3221225472;
  v27[2] = __84__TRIInternalServiceRequestHandler_setLastFetchDate_forContainer_teamId_completion___block_invoke;
  v27[3] = &unk_279DE0688;
  v27[4] = self;
  v13 = dateCopy;
  v28 = v13;
  containerCopy = container;
  v14 = idCopy;
  v29 = v14;
  v15 = MEMORY[0x2743948D0](v27);
  v15[2](v15, 0);
  promise = self->_promise;
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __84__TRIInternalServiceRequestHandler_setLastFetchDate_forContainer_teamId_completion___block_invoke_113;
  v21[3] = &unk_279DE06B0;
  v24 = completionCopy;
  v25 = v15;
  containerCopy2 = container;
  v22 = v13;
  v23 = v14;
  v17 = v14;
  v18 = v13;
  v19 = v15;
  v20 = completionCopy;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v21];
}

void __84__TRIInternalServiceRequestHandler_setLastFetchDate_forContainer_teamId_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 44);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    if (a2)
    {
      v8 = "end";
    }

    else
    {
      v8 = "begin";
    }

    v9 = *(a1 + 32);
    v10 = *(a1 + 40);
    v11 = TRICloudKitSupport_Container_EnumDescriptor();
    v12 = [v11 enumNameForValue:*(a1 + 56)];
    v13 = *(a1 + 48);
    v15[0] = 67110658;
    v15[1] = v5;
    v16 = 2114;
    v17 = v7;
    v18 = 2048;
    v19 = v9;
    v20 = 2080;
    v21 = v8;
    v22 = 2112;
    v23 = v10;
    v24 = 2112;
    v25 = v12;
    v26 = 2114;
    v27 = v13;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s setLastFetchDate:%@ forContainer:%@ teamId:%{public}@ completion:", v15, 0x44u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __84__TRIInternalServiceRequestHandler_setLastFetchDate_forContainer_teamId_completion___block_invoke_113(uint64_t a1, void *a2, void *a3)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __84__TRIInternalServiceRequestHandler_setLastFetchDate_forContainer_teamId_completion___block_invoke_2;
    v25[3] = &unk_279DE0398;
    v26 = *(a1 + 56);
    v8 = MEMORY[0x2743948D0](v25);
    v9 = [v5 keyValueStore];
    v10 = v9 == 0;

    if (v10)
    {
      v23 = [MEMORY[0x277CCA890] currentHandler];
      v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIInternalServiceRequestHandler setLastFetchDate:forContainer:teamId:completion:]_block_invoke"];
      [v23 handleFailureInFunction:v24 file:@"TRIXPCInternalService.m" lineNumber:381 description:{@"Invalid parameter not satisfying: %@", @"serverContext.keyValueStore"}];
    }

    if (*(a1 + 32))
    {
      v11 = *(a1 + 64);
      if (TRICloudKitSupport_Container_IsValidValue() && *(a1 + 64))
      {
        v12 = [v5 keyValueStore];
        v13 = [TRIFetchDateManager managerWithKeyValueStore:v12];

        [v13 setLastFetchDate:*(a1 + 32) type:0 container:*(a1 + 64) teamId:*(a1 + 40)];
        v14 = *(a1 + 48);
        if (v14)
        {
          (*(v14 + 16))(v14, 1, 0);
        }

        goto LABEL_16;
      }

      v17 = objc_alloc(MEMORY[0x277CCA9B8]);
      v27 = *MEMORY[0x277CCA450];
      v28 = @"Container value is unsupported.";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v28 forKeys:&v27 count:1];
      v13 = [v17 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v18];

      v19 = *(a1 + 48);
      if (v19)
      {
        goto LABEL_15;
      }
    }

    else
    {
      v20 = objc_alloc(MEMORY[0x277CCA9B8]);
      v29 = *MEMORY[0x277CCA450];
      v30[0] = @"Date parameter must be non-nil.";
      v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      v13 = [v20 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v21];

      v19 = *(a1 + 48);
      if (v19)
      {
LABEL_15:
        (*(v19 + 16))(v19, 0, v13);
      }
    }

LABEL_16:

    if (v8)
    {
      v8[2](v8);
    }

    goto LABEL_19;
  }

  v15 = *(a1 + 48);
  if (v15)
  {
    v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
    (*(v15 + 16))(v15, 0, v16);
  }

LABEL_19:

  v22 = *MEMORY[0x277D85DE8];
}

- (void)setFailureInjectionDelegate:(id)delegate
{
  delegateCopy = delegate;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __64__TRIInternalServiceRequestHandler_setFailureInjectionDelegate___block_invoke;
  v13[3] = &unk_279DE0208;
  v13[4] = self;
  v5 = delegateCopy;
  v14 = v5;
  v6 = MEMORY[0x2743948D0](v13);
  v6[2](v6, 0);
  promise = self->_promise;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __64__TRIInternalServiceRequestHandler_setFailureInjectionDelegate___block_invoke_117;
  v10[3] = &unk_279DE06D8;
  v11 = v5;
  v12 = v6;
  v8 = v5;
  v9 = v6;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v10];
}

void __64__TRIInternalServiceRequestHandler_setFailureInjectionDelegate___block_invoke(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 44);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = "end";
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13[0] = 67110146;
    if (!a2)
    {
      v9 = "begin";
    }

    v13[1] = v5;
    v14 = 2114;
    v15 = v7;
    v16 = 2048;
    v17 = v10;
    v18 = 2080;
    v19 = v9;
    v20 = 2112;
    v21 = v11;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s setFailureInjectionDelegate: %@", v13, 0x30u);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __64__TRIInternalServiceRequestHandler_setFailureInjectionDelegate___block_invoke_117(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = __64__TRIInternalServiceRequestHandler_setFailureInjectionDelegate___block_invoke_2;
    v9[3] = &unk_279DE0398;
    v10 = *(a1 + 40);
    v8 = MEMORY[0x2743948D0](v9);
    [v5 setFailureInjectionDelegate:*(a1 + 32)];
    if (v8)
    {
      v8[2](v8);
    }
  }
}

- (void)suspendSQLiteCKDatabaseQueueWithCompletion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __79__TRIInternalServiceRequestHandler_suspendSQLiteCKDatabaseQueueWithCompletion___block_invoke;
  v12[3] = &unk_279DE0460;
  v12[4] = self;
  v5 = MEMORY[0x2743948D0](v12);
  v5[2](v5, 0);
  promise = self->_promise;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __79__TRIInternalServiceRequestHandler_suspendSQLiteCKDatabaseQueueWithCompletion___block_invoke_118;
  v9[3] = &unk_279DE04F8;
  v10 = completionCopy;
  v11 = v5;
  v7 = v5;
  v8 = completionCopy;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v9];
}

void __79__TRIInternalServiceRequestHandler_suspendSQLiteCKDatabaseQueueWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 44);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = *(a1 + 32);
    v10 = "end";
    v12[0] = 67109890;
    v12[1] = v5;
    if (!a2)
    {
      v10 = "begin";
    }

    v13 = 2114;
    v14 = v7;
    v15 = 2048;
    v16 = v9;
    v17 = 2080;
    v18 = v10;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s suspendSQLiteCKDatabaseQueueWithCompletion:", v12, 0x26u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __79__TRIInternalServiceRequestHandler_suspendSQLiteCKDatabaseQueueWithCompletion___block_invoke_118(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __79__TRIInternalServiceRequestHandler_suspendSQLiteCKDatabaseQueueWithCompletion___block_invoke_2;
    v12[3] = &unk_279DE0398;
    v13 = *(a1 + 40);
    v8 = MEMORY[0x2743948D0](v12);
    if ([MEMORY[0x277D42590] isInternalBuild])
    {
      v9 = [v5 ensureFakeCKDatabase];
      v10 = [v9 operationQueue];
      dispatch_suspend(v10);
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      (*(v11 + 16))();
    }

    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)resumeSQLiteCKDatabaseQueueWithCompletion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __78__TRIInternalServiceRequestHandler_resumeSQLiteCKDatabaseQueueWithCompletion___block_invoke;
  v12[3] = &unk_279DE0460;
  v12[4] = self;
  v5 = MEMORY[0x2743948D0](v12);
  v5[2](v5, 0);
  promise = self->_promise;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __78__TRIInternalServiceRequestHandler_resumeSQLiteCKDatabaseQueueWithCompletion___block_invoke_120;
  v9[3] = &unk_279DE04F8;
  v10 = completionCopy;
  v11 = v5;
  v7 = v5;
  v8 = completionCopy;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v9];
}

void __78__TRIInternalServiceRequestHandler_resumeSQLiteCKDatabaseQueueWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 44);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = *(a1 + 32);
    v10 = "end";
    v12[0] = 67109890;
    v12[1] = v5;
    if (!a2)
    {
      v10 = "begin";
    }

    v13 = 2114;
    v14 = v7;
    v15 = 2048;
    v16 = v9;
    v17 = 2080;
    v18 = v10;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s resumeSQLiteCKDatabaseQueueWithCompletion:", v12, 0x26u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __78__TRIInternalServiceRequestHandler_resumeSQLiteCKDatabaseQueueWithCompletion___block_invoke_120(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __78__TRIInternalServiceRequestHandler_resumeSQLiteCKDatabaseQueueWithCompletion___block_invoke_2;
    v12[3] = &unk_279DE0398;
    v13 = *(a1 + 40);
    v8 = MEMORY[0x2743948D0](v12);
    if ([MEMORY[0x277D42590] isInternalBuild])
    {
      v9 = [v5 ensureFakeCKDatabase];
      v10 = [v9 operationQueue];
      dispatch_resume(v10);
    }

    v11 = *(a1 + 32);
    if (v11)
    {
      (*(v11 + 16))();
    }

    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

- (void)removeUnusedChannelsWithCompletion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __71__TRIInternalServiceRequestHandler_removeUnusedChannelsWithCompletion___block_invoke;
  v12[3] = &unk_279DE0460;
  v12[4] = self;
  v5 = MEMORY[0x2743948D0](v12);
  v5[2](v5, 0);
  promise = self->_promise;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __71__TRIInternalServiceRequestHandler_removeUnusedChannelsWithCompletion___block_invoke_121;
  v9[3] = &unk_279DE04F8;
  v10 = completionCopy;
  v11 = v5;
  v7 = v5;
  v8 = completionCopy;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v9];
}

void __71__TRIInternalServiceRequestHandler_removeUnusedChannelsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 44);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = *(a1 + 32);
    v10 = "end";
    v12[0] = 67109890;
    v12[1] = v5;
    if (!a2)
    {
      v10 = "begin";
    }

    v13 = 2114;
    v14 = v7;
    v15 = 2048;
    v16 = v9;
    v17 = 2080;
    v18 = v10;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s removeUnusedChannelsWithCompletion:", v12, 0x26u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __71__TRIInternalServiceRequestHandler_removeUnusedChannelsWithCompletion___block_invoke_121(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __71__TRIInternalServiceRequestHandler_removeUnusedChannelsWithCompletion___block_invoke_2;
    v21[3] = &unk_279DE0398;
    v22 = *(a1 + 40);
    v8 = MEMORY[0x2743948D0](v21);
    v9 = objc_opt_new();
    v10 = [v5 rolloutDatabase];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __71__TRIInternalServiceRequestHandler_removeUnusedChannelsWithCompletion___block_invoke_3;
    v19[3] = &unk_279DE0700;
    v11 = v9;
    v20 = v11;
    [v10 enumerateActiveRecordsUsingTransaction:0 block:v19];

    v12 = objc_opt_new();
    v13 = [v5 experimentDatabase];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __71__TRIInternalServiceRequestHandler_removeUnusedChannelsWithCompletion___block_invoke_4;
    v17[3] = &unk_279DE0728;
    v14 = v12;
    v18 = v14;
    [v13 enumerateActiveExperimentRecordsWithBlock:v17];

    v15 = [v5 pushServiceMuxer];
    [v15 ensureSubscriptionsExistOnlyForRolloutDeployments:v11 experimentIds:v14 maxChannelsAllowed:75];

    v16 = *(a1 + 32);
    if (v16)
    {
      (*(v16 + 16))();
    }

    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    (*(*(a1 + 32) + 16))();
  }
}

void __71__TRIInternalServiceRequestHandler_removeUnusedChannelsWithCompletion___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 deployment];
  [v2 addObject:v3];
}

void __71__TRIInternalServiceRequestHandler_removeUnusedChannelsWithCompletion___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 experimentDeployment];
  v3 = [v4 experimentId];
  [v2 addObject:v3];
}

- (void)registerNamespaceWithNamespaceName:(id)name compatibilityVersion:(unsigned int)version defaultsFileURL:(id)l teamId:(id)id appContainerId:(id)containerId appContainerType:(int64_t)type cloudKitContainerId:(int)kitContainerId completion:(id)self0
{
  nameCopy = name;
  lCopy = l;
  idCopy = id;
  containerIdCopy = containerId;
  completionCopy = completion;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 3221225472;
  v43[2] = __178__TRIInternalServiceRequestHandler_registerNamespaceWithNamespaceName_compatibilityVersion_defaultsFileURL_teamId_appContainerId_appContainerType_cloudKitContainerId_completion___block_invoke;
  v43[3] = &unk_279DE0750;
  v43[4] = self;
  v19 = nameCopy;
  v44 = v19;
  versionCopy = version;
  v20 = lCopy;
  v45 = v20;
  v21 = idCopy;
  v46 = v21;
  v22 = containerIdCopy;
  v47 = v22;
  typeCopy = type;
  kitContainerIdCopy = kitContainerId;
  v23 = MEMORY[0x2743948D0](v43);
  v23[2](v23, 0);
  promise = self->_promise;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __178__TRIInternalServiceRequestHandler_registerNamespaceWithNamespaceName_compatibilityVersion_defaultsFileURL_teamId_appContainerId_appContainerType_cloudKitContainerId_completion___block_invoke_125;
  v33[3] = &unk_279DE07A0;
  v38 = completionCopy;
  v39 = v23;
  v34 = v19;
  v35 = v22;
  v36 = v21;
  v37 = v20;
  typeCopy2 = type;
  versionCopy2 = version;
  kitContainerIdCopy2 = kitContainerId;
  v25 = v20;
  v26 = v21;
  v27 = v22;
  v28 = v19;
  v29 = v23;
  v30 = completionCopy;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v33];
}

void __178__TRIInternalServiceRequestHandler_registerNamespaceWithNamespaceName_compatibilityVersion_defaultsFileURL_teamId_appContainerId_appContainerType_cloudKitContainerId_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(*(a1 + 32) + 44);
    v5 = objc_opt_class();
    v6 = NSStringFromClass(v5);
    if (a2)
    {
      v7 = "end";
    }

    else
    {
      v7 = "begin";
    }

    v8 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = *(a1 + 80);
    v12 = *(a1 + 48);
    v11 = *(a1 + 56);
    v16 = *(a1 + 64);
    v18 = *(a1 + 72);
    v13 = TRICloudKitSupport_Container_EnumDescriptor();
    v14 = [v13 enumNameForValue:*(a1 + 84)];
    *buf = 67111682;
    v20 = v17;
    v21 = 2114;
    v22 = v6;
    v23 = 2048;
    v24 = v8;
    v25 = 2080;
    v26 = v7;
    v27 = 2114;
    v28 = v9;
    v29 = 1024;
    v30 = v10;
    v31 = 2112;
    v32 = v12;
    v33 = 2114;
    v34 = v11;
    v35 = 2112;
    v36 = v16;
    v37 = 1024;
    v38 = v18;
    v39 = 2112;
    v40 = v14;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s registerNamespaceWithNamespaceName:%{public}@ compatibilityVersion:%u defaultsFileURL:%@ teamId:%{public}@ appContainerId:%@ appContainerType:%u cloudKitContainerId:%@", buf, 0x64u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __178__TRIInternalServiceRequestHandler_registerNamespaceWithNamespaceName_compatibilityVersion_defaultsFileURL_teamId_appContainerId_appContainerType_cloudKitContainerId_completion___block_invoke_125(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __178__TRIInternalServiceRequestHandler_registerNamespaceWithNamespaceName_compatibilityVersion_defaultsFileURL_teamId_appContainerId_appContainerType_cloudKitContainerId_completion___block_invoke_2;
    v19[3] = &unk_279DE0398;
    v20 = *(a1 + 72);
    v8 = MEMORY[0x2743948D0](v19);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __178__TRIInternalServiceRequestHandler_registerNamespaceWithNamespaceName_compatibilityVersion_defaultsFileURL_teamId_appContainerId_appContainerType_cloudKitContainerId_completion___block_invoke_3;
    v16[3] = &unk_279DE0778;
    v18 = *(a1 + 64);
    v17 = *(a1 + 32);
    v9 = MEMORY[0x2743948D0](v16);
    if (*(a1 + 32))
    {
      if ([MEMORY[0x277D73810] validateSafeASCIISubsetIdentifier:?])
      {
        if (!*(a1 + 40))
        {
          v13 = @"bundleOrGroupId must be non-nil.";
          goto LABEL_17;
        }

        if ([MEMORY[0x277D73810] validateSafeASCIISubsetIdentifier:?])
        {
          v10 = *(a1 + 48);
          if (v10)
          {
            LODWORD(v15) = *(a1 + 92);
            [TRIXPCNamespaceManagementRequestHandler usingServerContext:v5 registerNamespaceWithNamespaceName:*(a1 + 32) compatibilityVersion:*(a1 + 88) defaultsFileURL:*(a1 + 56) teamId:v10 appContainerId:*(a1 + 40) appContainerType:*(a1 + 80) cloudKitContainerId:v15 bundleId:@"com.apple.trial" completion:*(a1 + 64)];
LABEL_18:

            if (v8)
            {
              v8[2](v8);
            }

            goto LABEL_21;
          }

          v13 = @"teamId not found in caller entitlements.";
LABEL_17:
          (v9)[2](v9, 2, v13);
          goto LABEL_18;
        }

        v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"appContainerId(%@) can only contain alphanumeric characters, underscore (_), hyphen (-) or period (.)", *(a1 + 40)];
        (v9)[2](v9, 2, v14);
      }

      else
      {
        v14 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"namespaceName(%@) can only contain alphanumeric characters, underscore (_), hyphen (-) or period (.)", *(a1 + 32)];
        (v9)[2](v9, 2, v14);
      }

      goto LABEL_18;
    }

    v13 = @"namespaceName must be non-nil.";
    goto LABEL_17;
  }

  v11 = *(a1 + 64);
  if (v11)
  {
    v12 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
    (*(v11 + 16))(v11, 0, v12);
  }

LABEL_21:
}

void __178__TRIInternalServiceRequestHandler_registerNamespaceWithNamespaceName_compatibilityVersion_defaultsFileURL_teamId_appContainerId_appContainerType_cloudKitContainerId_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (*(a1 + 40))
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v5;
      _os_log_debug_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEBUG, "failed to register namespace %{public}@: %{public}@", buf, 0x16u);
    }

    v7 = objc_alloc(MEMORY[0x277CCA9B8]);
    v12 = *MEMORY[0x277CCA450];
    v13 = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

    (*(*(a1 + 40) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)deregisterNamespaceWithNamespaceName:(id)name teamId:(id)id completion:(id)completion
{
  nameCopy = name;
  idCopy = id;
  completionCopy = completion;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __91__TRIInternalServiceRequestHandler_deregisterNamespaceWithNamespaceName_teamId_completion___block_invoke;
  v24[3] = &unk_279DE05E8;
  v24[4] = self;
  v11 = nameCopy;
  v25 = v11;
  v12 = idCopy;
  v26 = v12;
  v13 = MEMORY[0x2743948D0](v24);
  v13[2](v13, 0);
  promise = self->_promise;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __91__TRIInternalServiceRequestHandler_deregisterNamespaceWithNamespaceName_teamId_completion___block_invoke_146;
  v19[3] = &unk_279DE0610;
  v22 = completionCopy;
  v23 = v13;
  v20 = v11;
  v21 = v12;
  v15 = v12;
  v16 = v11;
  v17 = v13;
  v18 = completionCopy;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v19];
}

void __91__TRIInternalServiceRequestHandler_deregisterNamespaceWithNamespaceName_teamId_completion___block_invoke(void *a1, uint64_t a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1[4] + 44);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = "end";
    v10 = a1[4];
    v11 = a1[5];
    v12 = a1[6];
    if (!a2)
    {
      v9 = "begin";
    }

    v14[0] = 67110402;
    v14[1] = v5;
    v15 = 2114;
    v16 = v7;
    v17 = 2048;
    v18 = v10;
    v19 = 2080;
    v20 = v9;
    v21 = 2114;
    v22 = v11;
    v23 = 2114;
    v24 = v12;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s deregisterNamespaceWithNamespaceName:%{public}@ teamId:%{public}@ completion:", v14, 0x3Au);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __91__TRIInternalServiceRequestHandler_deregisterNamespaceWithNamespaceName_teamId_completion___block_invoke_146(id *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __91__TRIInternalServiceRequestHandler_deregisterNamespaceWithNamespaceName_teamId_completion___block_invoke_2;
    v19[3] = &unk_279DE0398;
    v20 = a1[7];
    v8 = MEMORY[0x2743948D0](v19);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __91__TRIInternalServiceRequestHandler_deregisterNamespaceWithNamespaceName_teamId_completion___block_invoke_3;
    v16[3] = &unk_279DE0778;
    v18 = a1[6];
    v17 = a1[4];
    v9 = MEMORY[0x2743948D0](v16);
    if (a1[4])
    {
      v10 = a1[5];
      if (v10)
      {
        if ([v10 length])
        {
          v11 = a1[4];
          v12 = [a1[5] stringByAppendingString:@"."];
          LOBYTE(v11) = [v11 hasPrefix:v12];

          if (v11)
          {
            [TRIXPCNamespaceManagementRequestHandler usingServerContext:v5 deregisterNamespaceWithName:a1[4] teamId:a1[5] taskQueue:v7 completion:a1[6]];
LABEL_14:

            if (v8)
            {
              v8[2](v8);
            }

            goto LABEL_17;
          }
        }

        v15 = @"app not entitled to remove namespace.";
      }

      else
      {
        v15 = @"teamId must be non-nil.";
      }
    }

    else
    {
      v15 = @"namespaceName must be non-nil.";
    }

    (v9)[2](v9, 2, v15);
    goto LABEL_14;
  }

  v13 = a1[6];
  if (v13)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
    v13[2](v13, 0, v14);
  }

LABEL_17:
}

void __91__TRIInternalServiceRequestHandler_deregisterNamespaceWithNamespaceName_teamId_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (*(a1 + 40))
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v5;
      _os_log_debug_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEBUG, "failed to deregister namespace %{public}@: %{public}@", buf, 0x16u);
    }

    v7 = objc_alloc(MEMORY[0x277CCA9B8]);
    v12 = *MEMORY[0x277CCA450];
    v13 = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

    (*(*(a1 + 40) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)startDownloadNamespaceWithName:(id)name teamId:(id)id options:(id)options completion:(id)completion
{
  nameCopy = name;
  idCopy = id;
  optionsCopy = options;
  completionCopy = completion;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __93__TRIInternalServiceRequestHandler_startDownloadNamespaceWithName_teamId_options_completion___block_invoke;
  v30[3] = &unk_279DE0438;
  v30[4] = self;
  v14 = nameCopy;
  v31 = v14;
  v15 = idCopy;
  v32 = v15;
  v16 = optionsCopy;
  v33 = v16;
  v17 = MEMORY[0x2743948D0](v30);
  v17[2](v17, 0);
  promise = self->_promise;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __93__TRIInternalServiceRequestHandler_startDownloadNamespaceWithName_teamId_options_completion___block_invoke_156;
  v24[3] = &unk_279DE07C8;
  v28 = completionCopy;
  v29 = v17;
  v25 = v14;
  v26 = v15;
  v27 = v16;
  v19 = v16;
  v20 = v15;
  v21 = v14;
  v22 = v17;
  v23 = completionCopy;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v24];
}

void __93__TRIInternalServiceRequestHandler_startDownloadNamespaceWithName_teamId_options_completion___block_invoke(void *a1, uint64_t a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1[4] + 44);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = "end";
    v10 = a1[4];
    v11 = a1[5];
    if (!a2)
    {
      v9 = "begin";
    }

    v12 = a1[6];
    v13 = a1[7];
    v15[0] = 67110658;
    v15[1] = v5;
    v16 = 2114;
    v17 = v7;
    v18 = 2048;
    v19 = v10;
    v20 = 2080;
    v21 = v9;
    v22 = 2114;
    v23 = v11;
    v24 = 2114;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s startDownloadNamespaceWithName:%{public}@ teamId:%{public}@ options:%@ completion:", v15, 0x44u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __93__TRIInternalServiceRequestHandler_startDownloadNamespaceWithName_teamId_options_completion___block_invoke_156(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __93__TRIInternalServiceRequestHandler_startDownloadNamespaceWithName_teamId_options_completion___block_invoke_2;
    v19[3] = &unk_279DE0398;
    v20 = *(a1 + 64);
    v8 = MEMORY[0x2743948D0](v19);
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __93__TRIInternalServiceRequestHandler_startDownloadNamespaceWithName_teamId_options_completion___block_invoke_3;
    v16[3] = &unk_279DE0778;
    v18 = *(a1 + 56);
    v17 = *(a1 + 32);
    v9 = MEMORY[0x2743948D0](v16);
    v10 = v9;
    if (*(a1 + 32))
    {
      if (*(a1 + 40))
      {
        v11 = [MEMORY[0x277D737A8] callerBundleId];
        v12 = [[TRITaskAttributionInternalInsecure alloc] initWithTeamIdentifier:*(a1 + 40) triCloudKitContainer:2 applicationBundleIdentifier:v11 networkOptions:*(a1 + 48)];
        [TRIXPCNamespaceManagementRequestHandler usingServerContext:v5 taskQueue:v7 startDownloadNamespaceWithName:*(a1 + 32) attribution:v12 completion:*(a1 + 56)];

LABEL_11:
        if (v8)
        {
          v8[2](v8);
        }

        goto LABEL_14;
      }

      v15 = @"teamId must be non-nil.";
    }

    else
    {
      v15 = @"namespaceName must be non-nil.";
    }

    (*(v9 + 16))(v9, 2, v15);
    goto LABEL_11;
  }

  v13 = *(a1 + 56);
  if (v13)
  {
    v14 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
    (*(v13 + 16))(v13, 0, v14);
  }

LABEL_14:
}

void __93__TRIInternalServiceRequestHandler_startDownloadNamespaceWithName_teamId_options_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (*(a1 + 40))
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      v11 = *(a1 + 32);
      *buf = 138543618;
      v15 = v11;
      v16 = 2114;
      v17 = v5;
      _os_log_debug_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEBUG, "failed to deregister namespace %{public}@: %{public}@", buf, 0x16u);
    }

    v7 = objc_alloc(MEMORY[0x277CCA9B8]);
    v12 = *MEMORY[0x277CCA450];
    v13 = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v13 forKeys:&v12 count:1];
    v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

    (*(*(a1 + 40) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)dynamicNamespaceRecordsWithCompletion:(id)completion
{
  completionCopy = completion;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __74__TRIInternalServiceRequestHandler_dynamicNamespaceRecordsWithCompletion___block_invoke;
  v12[3] = &unk_279DE0460;
  v12[4] = self;
  v5 = MEMORY[0x2743948D0](v12);
  v5[2](v5, 0);
  promise = self->_promise;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __74__TRIInternalServiceRequestHandler_dynamicNamespaceRecordsWithCompletion___block_invoke_159;
  v9[3] = &unk_279DE04F8;
  v10 = completionCopy;
  v11 = v5;
  v7 = v5;
  v8 = completionCopy;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v9];
}

void __74__TRIInternalServiceRequestHandler_dynamicNamespaceRecordsWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 44);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = *(a1 + 32);
    v10 = "end";
    v12[0] = 67109890;
    v12[1] = v5;
    if (!a2)
    {
      v10 = "begin";
    }

    v13 = 2114;
    v14 = v7;
    v15 = 2048;
    v16 = v9;
    v17 = 2080;
    v18 = v10;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s dynamicNamespaceRecordsWithCompletion:", v12, 0x26u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __74__TRIInternalServiceRequestHandler_dynamicNamespaceRecordsWithCompletion___block_invoke_159(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __74__TRIInternalServiceRequestHandler_dynamicNamespaceRecordsWithCompletion___block_invoke_2;
    v19[3] = &unk_279DE0398;
    v20 = *(a1 + 40);
    v8 = MEMORY[0x2743948D0](v19);
    v9 = objc_opt_new();
    v10 = [v5 namespaceDatabase];
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __74__TRIInternalServiceRequestHandler_dynamicNamespaceRecordsWithCompletion___block_invoke_3;
    v17[3] = &unk_279DDF748;
    v11 = v9;
    v18 = v11;
    v12 = [v10 enumerateDynamicNamespaceRecordsWithBlock:v17];

    v13 = *(a1 + 32);
    if (v13)
    {
      if (v12)
      {
        v14 = v11;
      }

      else
      {
        v14 = 0;
      }

      (*(v13 + 16))(v13, v14, 0);
    }

    if (v8)
    {
      v8[2](v8);
    }
  }

  else
  {
    v15 = *(a1 + 32);
    if (v15)
    {
      v16 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
      (*(v15 + 16))(v15, 0, v16);
    }
  }
}

- (void)subscriptionForNamespaceName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  promise = self->_promise;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __76__TRIInternalServiceRequestHandler_subscriptionForNamespaceName_completion___block_invoke;
  v11[3] = &unk_279DE06D8;
  v12 = nameCopy;
  v13 = completionCopy;
  v9 = nameCopy;
  v10 = completionCopy;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v11];
}

void __76__TRIInternalServiceRequestHandler_subscriptionForNamespaceName_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v14 = a2;
  v5 = a3;
  if (v14 && v5)
  {
    v6 = [v14 keyValueStore];

    if (!v6)
    {
      v12 = [MEMORY[0x277CCA890] currentHandler];
      v13 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIInternalServiceRequestHandler subscriptionForNamespaceName:completion:]_block_invoke"];
      [v12 handleFailureInFunction:v13 file:@"TRIXPCInternalService.m" lineNumber:707 description:{@"Invalid parameter not satisfying: %@", @"serverContext.keyValueStore"}];
    }

    v7 = [v14 keyValueStore];
    v8 = [TRINamespaceFactorSubscriptionSettings settingsWithKeyValueStore:v7];

    v9 = [v8 subscribedFactorsForNamespaceName:*(a1 + 32)];
    v10 = *(a1 + 40);
    if (v10)
    {
      (*(v10 + 16))(v10, v9, 0);
    }
  }

  else
  {
    v11 = *(a1 + 40);
    if (!v11)
    {
      goto LABEL_11;
    }

    v8 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
    (*(v11 + 16))(v11, MEMORY[0x277CBEBF8], v8);
  }

LABEL_11:
}

- (void)setSubscription:(id)subscription namespaceName:(id)name completion:(id)completion
{
  subscriptionCopy = subscription;
  nameCopy = name;
  completionCopy = completion;
  promise = self->_promise;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__TRIInternalServiceRequestHandler_setSubscription_namespaceName_completion___block_invoke;
  v15[3] = &unk_279DE07F0;
  v17 = nameCopy;
  v18 = completionCopy;
  v16 = subscriptionCopy;
  v12 = nameCopy;
  v13 = subscriptionCopy;
  v14 = completionCopy;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v15];
}

void __77__TRIInternalServiceRequestHandler_setSubscription_namespaceName_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v5 keyValueStore];

    if (!v8)
    {
      v17 = [MEMORY[0x277CCA890] currentHandler];
      v18 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIInternalServiceRequestHandler setSubscription:namespaceName:completion:]_block_invoke"];
      [v17 handleFailureInFunction:v18 file:@"TRIXPCInternalService.m" lineNumber:724 description:{@"Invalid parameter not satisfying: %@", @"serverContext.keyValueStore"}];
    }

    v9 = [v5 keyValueStore];
    v10 = [TRINamespaceFactorSubscriptionSettings settingsWithKeyValueStore:v9];

    v11 = a1[4];
    v12 = a1[5];
    v19 = 0;
    v13 = [v10 setSubscriptionWithFactorNames:v11 inNamespaceName:v12 error:&v19];
    v14 = v19;
    v15 = a1[6];
    if (v15)
    {
      (*(v15 + 16))(v15, v13, v14);
    }

    goto LABEL_10;
  }

  v16 = a1[6];
  if (v16)
  {
    v10 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
    (*(v16 + 16))(v16, 0, v10);
LABEL_10:
  }
}

- (void)activeRolloutInformationWithCompletion:(id)completion
{
  completionCopy = completion;
  promise = self->_promise;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __75__TRIInternalServiceRequestHandler_activeRolloutInformationWithCompletion___block_invoke;
  v7[3] = &unk_279DE0880;
  v8 = completionCopy;
  v6 = completionCopy;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v7];
}

void __75__TRIInternalServiceRequestHandler_activeRolloutInformationWithCompletion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v150 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v93 = v4;
  v91 = v5;
  if (v4 && v5)
  {
    v6 = [v4 paths];

    if (!v6)
    {
      v75 = [MEMORY[0x277CCA890] currentHandler];
      v76 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIInternalServiceRequestHandler activeRolloutInformationWithCompletion:]_block_invoke"];
      [v75 handleFailureInFunction:v76 file:@"TRIXPCInternalService.m" lineNumber:740 description:{@"Invalid parameter not satisfying: %@", @"serverContext.paths"}];
    }

    v128 = 0;
    v129 = &v128;
    v130 = 0x3032000000;
    v131 = __Block_byref_object_copy__9;
    v132 = __Block_byref_object_dispose__9;
    v133 = objc_opt_new();
    v7 = [v93 rolloutDatabase];
    v127[0] = MEMORY[0x277D85DD0];
    v127[1] = 3221225472;
    v127[2] = __75__TRIInternalServiceRequestHandler_activeRolloutInformationWithCompletion___block_invoke_162;
    v127[3] = &unk_279DE0818;
    v127[4] = &v128;
    v8 = [v7 enumerateRecordsUsingTransaction:0 block:v127];

    if (v8)
    {
      v9 = objc_alloc(MEMORY[0x277CBEB18]);
      v10 = [v129[5] sortedArrayUsingComparator:&__block_literal_global_9];
      v11 = [v9 initWithArray:v10];
      v12 = v129[5];
      v129[5] = v11;

      v13 = objc_alloc(MEMORY[0x277D73690]);
      v14 = [v93 paths];
      v101 = [v13 initWithPaths:v14 factorsState:0];

      v87 = objc_alloc_init(MEMORY[0x277CBEB18]);
      v125 = 0u;
      v126 = 0u;
      v123 = 0u;
      v124 = 0u;
      obj = v129[5];
      v15 = [obj countByEnumeratingWithState:&v123 objects:v148 count:16];
      if (v15)
      {
        v86 = *v124;
        v83 = *MEMORY[0x277D73A68];
        v82 = *MEMORY[0x277D73A10];
        v81 = *MEMORY[0x277D73A78];
        v80 = *MEMORY[0x277D73A60];
        v79 = *MEMORY[0x277D739F0];
        v78 = *MEMORY[0x277D73A80];
        v77 = *MEMORY[0x277D73A48];
        v113 = *MEMORY[0x277D73A40];
        v97 = *MEMORY[0x277D73A20];
        v96 = *MEMORY[0x277D73A50];
        v95 = *MEMORY[0x277D73A28];
        v111 = *MEMORY[0x277D73A90];
        v110 = *MEMORY[0x277D73A38];
        v106 = *MEMORY[0x277D73A58];
        v107 = *MEMORY[0x277D739F8];
        v105 = *MEMORY[0x277D73A70];
        v109 = *MEMORY[0x277D73A30];
        do
        {
          v89 = 0;
          v84 = v15;
          do
          {
            if (*v124 != v86)
            {
              objc_enumerationMutation(obj);
            }

            v16 = *(*(&v123 + 1) + 8 * v89);
            context = objc_autoreleasePoolPush();
            v17 = [v16 activeFactorPackSetId];
            v18 = v17 == 0;

            if (!v18)
            {
              v146[0] = v83;
              v19 = [v16 deployment];
              v20 = [v19 rolloutId];
              v147[0] = v20;
              v146[1] = v82;
              v21 = MEMORY[0x277CCABB0];
              v22 = [v16 deployment];
              v23 = [v21 numberWithInt:{objc_msgSend(v22, "deploymentId")}];
              v147[1] = v23;
              v146[2] = v81;
              v24 = [v16 status] - 1;
              v25 = @"inactive  ";
              if (v24 <= 3)
              {
                v25 = off_279DE09D0[v24];
              }

              v26 = [(__CFString *)v25 triTrim];
              v147[2] = v26;
              v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v147 forKeys:v146 count:3];
              v90 = [v27 mutableCopy];

              [v87 addObject:v90];
              v28 = [v16 rampId];
              [v90 setObject:v28 forKeyedSubscript:v80];

              v29 = [v16 activeFactorPackSetId];
              [v90 setObject:v29 forKeyedSubscript:v79];

              v30 = [v16 targetedFactorPackSetId];
              [v90 setObject:v30 forKeyedSubscript:v78];

              v31 = objc_opt_new();
              [v90 setObject:v31 forKeyedSubscript:v77];
              v99 = v31;
              v32 = [v16 artifact];
              v33 = [v32 rollout];
              v34 = [v33 selectedNamespaceArray];
              v35 = [(__CFString *)v34 sortedArrayUsingComparator:&__block_literal_global_186];

              v121 = 0u;
              v122 = 0u;
              v119 = 0u;
              v120 = 0u;
              v94 = v35;
              v100 = [v94 countByEnumeratingWithState:&v119 objects:v145 count:16];
              if (v100)
              {
                v98 = *v120;
                do
                {
                  for (i = 0; i != v100; ++i)
                  {
                    if (*v120 != v98)
                    {
                      objc_enumerationMutation(v94);
                    }

                    v116 = *(*(&v119 + 1) + 8 * i);
                    v102 = v101;
                    v104 = [MEMORY[0x277CBEB38] dictionary];
                    v36 = [v116 name];
                    [v104 setObject:v36 forKeyedSubscript:v113];

                    v37 = [v116 name];
                    v38 = [v102 factorPackIdForRolloutWithNamespaceName:v37];
                    [v104 setObject:v38 forKeyedSubscript:v97];

                    v139 = 0;
                    v140 = &v139;
                    v141 = 0x3032000000;
                    v142 = __Block_byref_object_copy__9;
                    v143 = __Block_byref_object_dispose__9;
                    v144 = objc_opt_new();
                    v39 = [v116 compatibilityVersionArray];
                    v138[0] = MEMORY[0x277D85DD0];
                    v138[1] = 3221225472;
                    v138[2] = ___namespaceDictionaryForClientSelectedNamespace_block_invoke;
                    v138[3] = &unk_279DE0990;
                    v138[4] = &v139;
                    [v39 enumerateValuesWithBlock:v138];

                    [v104 setObject:v140[5] forKeyedSubscript:v96];
                    v40 = objc_opt_new();
                    [v104 setObject:v40 forKeyedSubscript:v95];
                    v114 = v40;
                    v115 = [MEMORY[0x277D73660] client];
                    v41 = [v116 name];
                    v42 = [v115 factorLevelsWithNamespaceName:v41];
                    v43 = [v42 sortedArrayUsingComparator:&__block_literal_global_384];

                    v136 = 0u;
                    v137 = 0u;
                    v134 = 0u;
                    v135 = 0u;
                    v108 = v43;
                    v44 = [v108 countByEnumeratingWithState:&v134 objects:v149 count:16];
                    if (v44)
                    {
                      v112 = *v135;
                      do
                      {
                        v117 = v44;
                        for (j = 0; j != v117; ++j)
                        {
                          if (*v135 != v112)
                          {
                            objc_enumerationMutation(v108);
                          }

                          v46 = *(*(&v134 + 1) + 8 * j);
                          v47 = [v46 factor];
                          v48 = [v47 name];
                          v49 = [v116 name];
                          v50 = [v115 levelForFactor:v48 withNamespaceName:v49];

                          if ([v50 levelOneOfCase] == 101)
                          {
                            v51 = [v50 directoryValue];
                            v52 = [v51 path];

                            v53 = [v50 directoryValue];
                            v54 = [v53 asset];
                            v55 = [v54 size];

                            v56 = [v50 directoryValue];
                            v57 = [v56 asset];
                            v58 = [v57 assetId];
                          }

                          else
                          {
                            if ([v50 levelOneOfCase] != 100)
                            {
                              v55 = 0;
                              v62 = 0;
                              v52 = &stru_287FA0430;
                              goto LABEL_30;
                            }

                            v59 = [v50 fileValue];
                            v52 = [v59 path];

                            v60 = [v50 fileValue];
                            v61 = [v60 asset];
                            v55 = [v61 size];

                            v56 = [v50 fileValue];
                            v57 = [v56 asset];
                            v58 = [v57 assetId];
                          }

                          v62 = v58;

LABEL_30:
                          v63 = [MEMORY[0x277CBEB38] dictionary];
                          v64 = [v46 factor];
                          v65 = [v64 name];
                          [v63 setObject:v65 forKeyedSubscript:v113];

                          v66 = [v46 factor];
                          v67 = [v66 typeString];
                          [v63 setObject:v67 forKeyedSubscript:v111];

                          v68 = [v50 metadata];
                          [v63 setObject:v68 forKeyedSubscript:v110];

                          if (v52 && [(__CFString *)v52 length])
                          {
                            [v63 setObject:v62 forKeyedSubscript:v107];
                            [v63 setObject:v52 forKeyedSubscript:v106];
                            if (!v55)
                            {
                              goto LABEL_40;
                            }

                            v69 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v55];
                            [v63 setObject:v69 forKeyedSubscript:v105];
                          }

                          else
                          {
                            v69 = [v50 object];
                            if (v69)
                            {
                              v70 = MEMORY[0x277CCACA8];
                              v118 = [v50 object];
                              v34 = [v70 stringWithFormat:@"%@", v118];
                              v71 = v34;
                            }

                            else
                            {
                              v71 = &stru_287FA0430;
                            }

                            [v63 setObject:v71 forKeyedSubscript:v109];
                            if (v69)
                            {
                            }
                          }

LABEL_40:
                          [v114 addObject:v63];
                        }

                        v44 = [v108 countByEnumeratingWithState:&v134 objects:v149 count:16];
                      }

                      while (v44);
                    }

                    _Block_object_dispose(&v139, 8);
                    [v99 addObject:v104];
                  }

                  v100 = [v94 countByEnumeratingWithState:&v119 objects:v145 count:16];
                }

                while (v100);
              }
            }

            objc_autoreleasePoolPop(context);
            ++v89;
          }

          while (v89 != v84);
          v15 = [obj countByEnumeratingWithState:&v123 objects:v148 count:16];
        }

        while (v15);
      }

      (*(*(a1 + 32) + 16))();
    }

    else
    {
      (*(*(a1 + 32) + 16))();
    }

    _Block_object_dispose(&v128, 8);
  }

  else
  {
    v72 = *(a1 + 32);
    if (v72)
    {
      v73 = [MEMORY[0x277CCA9B8] errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:0];
      (*(v72 + 16))(v72, 0, v73);
    }
  }

  v74 = *MEMORY[0x277D85DE8];
}

uint64_t __75__TRIInternalServiceRequestHandler_activeRolloutInformationWithCompletion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v6 = [v4 deployment];
  v7 = [v6 rolloutId];
  v8 = [v5 deployment];
  v9 = [v8 rolloutId];
  v10 = [v7 compare:v9];

  if (!v10)
  {
    v11 = MEMORY[0x277CCABB0];
    v12 = [v4 deployment];
    v13 = [v11 numberWithInt:{objc_msgSend(v12, "deploymentId")}];
    v14 = MEMORY[0x277CCABB0];
    v15 = [v5 deployment];
    v16 = [v14 numberWithInt:{objc_msgSend(v15, "deploymentId")}];
    v10 = [v13 compare:v16];
  }

  return v10;
}

uint64_t __75__TRIInternalServiceRequestHandler_activeRolloutInformationWithCompletion___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 compare:v6];
  return v7;
}

- (void)_experimentRecordsWithDeploymentEnvironments:(id)environments serverContext:(id)context completion:(id)completion
{
  environmentsCopy = environments;
  contextCopy = context;
  completionCopy = completion;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __106__TRIInternalServiceRequestHandler__experimentRecordsWithDeploymentEnvironments_serverContext_completion___block_invoke;
  v28[3] = &unk_279DE0460;
  v28[4] = self;
  v11 = MEMORY[0x2743948D0](v28);
  v11[2](v11, 0);
  v26[0] = MEMORY[0x277D85DD0];
  v26[1] = 3221225472;
  v26[2] = __106__TRIInternalServiceRequestHandler__experimentRecordsWithDeploymentEnvironments_serverContext_completion___block_invoke_187;
  v26[3] = &unk_279DE0398;
  v12 = v11;
  v27 = v12;
  v13 = MEMORY[0x2743948D0](v26);
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __106__TRIInternalServiceRequestHandler__experimentRecordsWithDeploymentEnvironments_serverContext_completion___block_invoke_2;
  v24[3] = &unk_279DE0548;
  v14 = completionCopy;
  v25 = v14;
  v15 = MEMORY[0x2743948D0](v24);
  v16 = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_287FC4F30];
  if (environmentsCopy)
  {
    if ([environmentsCopy isSubsetOfSet:v16])
    {
      v17 = objc_opt_new();
      experimentDatabase = [contextCopy experimentDatabase];
      v21[0] = MEMORY[0x277D85DD0];
      v21[1] = 3221225472;
      v21[2] = __106__TRIInternalServiceRequestHandler__experimentRecordsWithDeploymentEnvironments_serverContext_completion___block_invoke_204;
      v21[3] = &unk_279DE08A8;
      v22 = environmentsCopy;
      environmentsCopy = v17;
      v23 = environmentsCopy;
      v20 = [experimentDatabase enumerateExperimentRecordsWithBlock:v21];

      if (v20)
      {
        if (v14)
        {
          (*(v14 + 2))(v14, environmentsCopy, 0);
        }
      }

      else
      {
        (v15)[2](v15, 12, @"The database query failed.");
      }
    }

    else
    {
      environmentsCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"The calling process is not entitled for access to deployment environments %@.", environmentsCopy];
      (v15)[2](v15, 3, environmentsCopy);
    }
  }

  else
  {
    (v15)[2](v15, 2, @"Parameter 'environments' must be non-nil.");
  }

  if (v13)
  {
    v13[2](v13);
  }
}

void __106__TRIInternalServiceRequestHandler__experimentRecordsWithDeploymentEnvironments_serverContext_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 44);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = *(a1 + 32);
    v10 = "end";
    v12[0] = 67109890;
    v12[1] = v5;
    if (!a2)
    {
      v10 = "begin";
    }

    v13 = 2114;
    v14 = v7;
    v15 = 2048;
    v16 = v9;
    v17 = 2080;
    v18 = v10;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s experimentRecordsWithDeploymentEnvironments:completion:", v12, 0x26u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __106__TRIInternalServiceRequestHandler__experimentRecordsWithDeploymentEnvironments_serverContext_completion___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (*(a1 + 32))
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_debug_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEBUG, "experimentRecordsWithDeploymentEnvironments: %{public}@", buf, 0xCu);
    }

    v7 = objc_alloc(MEMORY[0x277CCA9B8]);
    v11 = *MEMORY[0x277CCA450];
    v12 = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

    (*(*(a1 + 32) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __106__TRIInternalServiceRequestHandler__experimentRecordsWithDeploymentEnvironments_serverContext_completion___block_invoke_204(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v22 = v3;
  v5 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v3, "deploymentEnvironment")}];
  LODWORD(v4) = [v4 containsObject:v5];

  if (v4)
  {
    v6 = objc_alloc(MEMORY[0x277D73798]);
    v7 = [v22 deploymentEnvironment];
    v20 = [v22 experimentDeployment];
    v19 = [v22 treatmentId];
    [v22 factorPackSetId];
    v8 = v21 = a1;
    v18 = [v22 type];
    v9 = [v22 status];
    v10 = [v22 startDate];
    v11 = [v22 endDate];
    v12 = [v22 namespaces];
    v13 = [v22 experimentType];
    v14 = [v22 counterfactualsTreatmentsToFactorPackSetIds];
    v15 = [v14 allKeys];
    LODWORD(v17) = v13;
    v16 = [v6 initWithDeploymentEnvironment:v7 experimentDeployment:v20 treatmentId:v19 factorPackSetId:v8 type:v18 status:v9 startDate:v10 endDate:v11 namespaces:v12 experimentType:v17 counterfactualTreatmentIds:v15];

    [*(v21 + 40) addObject:v16];
  }
}

- (void)experimentHasMatchingNCV:(id)v completion:(id)completion
{
  vCopy = v;
  completionCopy = completion;
  if (!vCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIXPCInternalService.m" lineNumber:928 description:{@"Invalid parameter not satisfying: %@", @"deployment"}];
  }

  promise = self->_promise;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__TRIInternalServiceRequestHandler_experimentHasMatchingNCV_completion___block_invoke;
  v13[3] = &unk_279DE06D8;
  v14 = vCopy;
  v15 = completionCopy;
  v10 = vCopy;
  v11 = completionCopy;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v13];
}

void __72__TRIInternalServiceRequestHandler_experimentHasMatchingNCV_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 && v6)
  {
    v8 = [v5 experimentDatabase];
    v9 = [v8 experimentRecordWithExperimentDeployment:*(a1 + 32)];

    if (v9)
    {
      *buf = 0;
      v10 = [v5 namespaceDatabase];
      if (!v10)
      {
        v21 = [MEMORY[0x277CCA890] currentHandler];
        v22 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIInternalServiceRequestHandler experimentHasMatchingNCV:completion:]_block_invoke"];
        [v21 handleFailureInFunction:v22 file:@"TRIXPCInternalService.m" lineNumber:956 description:{@"Expression was unexpectedly nil/false: %@", @"serverContext.namespaceDatabase"}];
      }

      v11 = [v5 paths];
      v12 = [v11 namespaceDescriptorsDefaultDir];

      if (!v12)
      {
        v23 = [MEMORY[0x277CCA890] currentHandler];
        v24 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIInternalServiceRequestHandler experimentHasMatchingNCV:completion:]_block_invoke"];
        [v23 handleFailureInFunction:v24 file:@"TRIXPCInternalService.m" lineNumber:957 description:{@"Expression was unexpectedly nil/false: %@", @"[serverContext.paths namespaceDescriptorsDefaultDir]"}];
      }

      v13 = [TRINamespaceDescriptorProvider providerWithNamespaceDatabase:v10 defaultDescriptorDirectoryPath:v12];

      v14 = [v9 artifact];
      [v14 isCompatibleWithNamespaceDescriptorProvider:v13 error:buf];

      (*(*(a1 + 40) + 16))();
    }

    else
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v20 = *(a1 + 32);
        *buf = 138412290;
        *&buf[4] = v20;
        _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Asked to check for matching NCVs for deployment %@, but a record couldn't be found!", buf, 0xCu);
      }

      v17 = objc_alloc(MEMORY[0x277CCA9B8]);
      v25 = *MEMORY[0x277CCA450];
      v26 = @"NCV check couldn't be performed because requested experiment record wasn't found";
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
      v9 = [v17 initWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:v18];

      (*(*(a1 + 40) + 16))();
    }
  }

  else
  {
    v15 = *(a1 + 40);
    if (v15)
    {
      (*(v15 + 16))(v15, 0, 0);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)treatmentValidForExperimentWithId:(id)id treatmentId:(id)treatmentId completion:(id)completion
{
  idCopy = id;
  treatmentIdCopy = treatmentId;
  completionCopy = completion;
  objc_initWeak(&location, self);
  promise = self->_promise;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __93__TRIInternalServiceRequestHandler_treatmentValidForExperimentWithId_treatmentId_completion___block_invoke;
  v15[3] = &unk_279DE08F8;
  objc_copyWeak(&v19, &location);
  v12 = completionCopy;
  v18 = v12;
  v13 = idCopy;
  v16 = v13;
  v14 = treatmentIdCopy;
  v17 = v14;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v15];

  objc_destroyWeak(&v19);
  objc_destroyWeak(&location);
}

void __93__TRIInternalServiceRequestHandler_treatmentValidForExperimentWithId_treatmentId_completion___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (v5 && v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_287FC46C0, &unk_287FC46F0, &unk_287FC46D8, 0}];
    objc_autoreleasePoolPop(v8);
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __93__TRIInternalServiceRequestHandler_treatmentValidForExperimentWithId_treatmentId_completion___block_invoke_2;
    v12[3] = &unk_279DE08D0;
    v13 = *(a1 + 32);
    v14 = *(a1 + 40);
    v15 = &v16;
    [WeakRetained _experimentRecordsWithDeploymentEnvironments:v9 serverContext:v5 completion:v12];
    v10 = *(a1 + 48);
    if (v10)
    {
      (*(v10 + 16))(v10, *(v17 + 24));
    }

    _Block_object_dispose(&v16, 8);
  }

  else
  {
    v11 = *(a1 + 48);
    if (v11)
    {
      (*(v11 + 16))(v11, 1);
    }
  }
}

void __93__TRIInternalServiceRequestHandler_treatmentValidForExperimentWithId_treatmentId_completion___block_invoke_2(void *a1, void *a2, void *a3)
{
  v33 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (!v5 || v6)
  {
    if ([v5 count])
    {
      v18 = [v5 count];
    }

    else
    {
      v18 = 0;
    }

    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v20 = a1[4];
      v21 = [v7 localizedDescription];
      *buf = 67109634;
      v28 = v18;
      v29 = 2112;
      v30 = v20;
      v31 = 2112;
      v32 = v21;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Discovered %i experiment records for experiment with Id: %@ and error: %@", buf, 0x1Cu);
    }
  }

  else
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v8 = v5;
    v9 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v23;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v23 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v22 + 1) + 8 * i);
          v14 = [v13 treatmentId];
          if ([v14 isEqualToString:a1[5]])
          {
            v15 = [v13 experimentDeployment];
            v16 = [v15 experimentId];
            v17 = [v16 isEqualToString:a1[4]];

            if (v17)
            {
              *(*(a1[6] + 8) + 24) = 1;
              goto LABEL_17;
            }
          }

          else
          {
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v10);
LABEL_17:
      v7 = 0;
    }
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)activeExperimentInformationWithEnvironments:(id)environments completion:(id)completion
{
  environmentsCopy = environments;
  completionCopy = completion;
  promise = self->_promise;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __91__TRIInternalServiceRequestHandler_activeExperimentInformationWithEnvironments_completion___block_invoke;
  v11[3] = &unk_279DE07F0;
  v12 = environmentsCopy;
  v13 = completionCopy;
  v11[4] = self;
  v9 = environmentsCopy;
  v10 = completionCopy;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v11];
}

void __91__TRIInternalServiceRequestHandler_activeExperimentInformationWithEnvironments_completion___block_invoke(void *a1, void *a2, void *a3)
{
  v122 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = a3;
  v68 = v4;
  v66 = v5;
  if (v4 && v5)
  {
    v6 = &v111;
    v111 = 0;
    v112 = &v111;
    v113 = 0x3032000000;
    v114 = __Block_byref_object_copy__9;
    v115 = __Block_byref_object_dispose__9;
    v116 = 0;
    v105 = 0;
    v106 = &v105;
    v107 = 0x3032000000;
    v108 = __Block_byref_object_copy__9;
    v109 = __Block_byref_object_dispose__9;
    v110 = objc_opt_new();
    v7 = a1[4];
    v8 = a1[5];
    v104[0] = MEMORY[0x277D85DD0];
    v104[1] = 3221225472;
    v104[2] = __91__TRIInternalServiceRequestHandler_activeExperimentInformationWithEnvironments_completion___block_invoke_2;
    v104[3] = &unk_279DE0920;
    v104[4] = &v111;
    v104[5] = &v105;
    [v7 _experimentRecordsWithDeploymentEnvironments:v8 serverContext:v4 completion:v104];
    v64 = objc_opt_new();
    v85 = [MEMORY[0x277D73660] client];
    v102 = 0u;
    v103 = 0u;
    v100 = 0u;
    v101 = 0u;
    obj = v112[5];
    v56 = [obj countByEnumeratingWithState:&v100 objects:v121 count:16];
    if (!v56)
    {
      goto LABEL_42;
    }

    v61 = *v101;
    v59 = *MEMORY[0x277D73A10];
    v60 = *MEMORY[0x277D73A18];
    v58 = *MEMORY[0x277D73A88];
    v55 = *MEMORY[0x277D73A08];
    v57 = *MEMORY[0x277D73A48];
    v87 = *MEMORY[0x277D73A40];
    v71 = *MEMORY[0x277D73A28];
    v72 = *MEMORY[0x277D73A00];
    v83 = *MEMORY[0x277D73A90];
    v84 = *MEMORY[0x277D73A38];
    v79 = *MEMORY[0x277D73A58];
    v80 = *MEMORY[0x277D739F8];
    v78 = *MEMORY[0x277D73A70];
    v82 = *MEMORY[0x277D73A30];
    while (1)
    {
      for (i = 0; i != v56; ++i)
      {
        if (*v101 != v61)
        {
          objc_enumerationMutation(obj);
        }

        v9 = *(*(&v100 + 1) + 8 * i);
        v119[0] = v60;
        v10 = [v9 experimentId];
        v120[0] = v10;
        v119[1] = v59;
        v11 = [MEMORY[0x277CCABB0] numberWithInt:{objc_msgSend(v9, "deploymentId")}];
        v120[1] = v11;
        v119[2] = v58;
        v12 = [v9 treatmentId];
        v120[2] = v12;
        v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v120 forKeys:v119 count:3];
        v67 = [v13 mutableCopy];

        [v64 addObject:v67];
        v14 = MEMORY[0x277D736C0];
        v15 = [v9 experimentId];
        v65 = [v14 deploymentWithExperimentId:v15 deploymentId:{objc_msgSend(v9, "deploymentId")}];

        v16 = [v106[5] objectForKeyedSubscript:v65];

        if (v16)
        {
          v17 = [v106[5] objectForKeyedSubscript:v65];
          [v67 setObject:v17 forKeyedSubscript:v55];
        }

        v18 = objc_opt_new();
        [v67 setObject:v18 forKeyedSubscript:v57];
        v75 = v18;
        v98 = 0u;
        v99 = 0u;
        v96 = 0u;
        v97 = 0u;
        v70 = [v9 namespaces];
        v74 = [v70 countByEnumeratingWithState:&v96 objects:v118 count:16];
        if (v74)
        {
          v73 = *v97;
          do
          {
            for (j = 0; j != v74; ++j)
            {
              if (*v97 != v73)
              {
                objc_enumerationMutation(v70);
              }

              v89 = *(*(&v96 + 1) + 8 * j);
              v77 = [MEMORY[0x277CBEB38] dictionary];
              [v75 addObject:v77];
              v19 = [v89 name];
              [v77 setObject:v19 forKeyedSubscript:v87];

              v20 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v89, "compatibilityVersion")}];
              [v77 setObject:v20 forKeyedSubscript:v72];

              v21 = objc_opt_new();
              [v77 setObject:v21 forKeyedSubscript:v71];
              v88 = v21;
              v22 = objc_opt_new();
              v23 = [v89 name];
              v24 = [v22 factorLevelsForNamespaceName:v23];

              v94 = 0u;
              v95 = 0u;
              v92 = 0u;
              v93 = 0u;
              v81 = v24;
              v25 = [v81 countByEnumeratingWithState:&v92 objects:v117 count:16];
              if (v25)
              {
                v86 = *v93;
                do
                {
                  v90 = v25;
                  for (k = 0; k != v90; ++k)
                  {
                    if (*v93 != v86)
                    {
                      objc_enumerationMutation(v81);
                    }

                    v27 = *(*(&v92 + 1) + 8 * k);
                    v28 = [v27 factor];
                    v29 = [v28 name];
                    v30 = [v89 name];
                    v31 = [v85 levelForFactor:v29 withNamespaceName:v30];

                    if ([v31 levelOneOfCase] == 101)
                    {
                      v32 = [v31 directoryValue];
                      v33 = [v32 path];

                      v34 = [v31 directoryValue];
                      v35 = [v34 asset];
                      v36 = [v35 size];

                      v37 = [v31 directoryValue];
                      v38 = [v37 asset];
                      v39 = [v38 assetId];
                    }

                    else
                    {
                      if ([v31 levelOneOfCase] != 100)
                      {
                        v36 = 0;
                        v43 = 0;
                        v33 = &stru_287FA0430;
                        goto LABEL_26;
                      }

                      v40 = [v31 fileValue];
                      v33 = [v40 path];

                      v41 = [v31 fileValue];
                      v42 = [v41 asset];
                      v36 = [v42 size];

                      v37 = [v31 fileValue];
                      v38 = [v37 asset];
                      v39 = [v38 assetId];
                    }

                    v43 = v39;

LABEL_26:
                    v44 = [MEMORY[0x277CBEB38] dictionary];
                    v45 = [v27 factor];
                    v46 = [v45 name];
                    [v44 setObject:v46 forKeyedSubscript:v87];

                    v47 = [v31 metadata];
                    [v44 setObject:v47 forKeyedSubscript:v84];

                    v48 = [v27 factor];
                    v49 = [v48 typeString];
                    [v44 setObject:v49 forKeyedSubscript:v83];

                    if (v33 && [(__CFString *)v33 length])
                    {
                      [v44 setObject:v43 forKeyedSubscript:v80];
                      [v44 setObject:v33 forKeyedSubscript:v79];
                      if (!v36)
                      {
                        goto LABEL_36;
                      }

                      v50 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:v36];
                      [v44 setObject:v50 forKeyedSubscript:v78];
                    }

                    else
                    {
                      v50 = [v31 object];
                      if (v50)
                      {
                        v51 = MEMORY[0x277CCACA8];
                        v91 = [v31 object];
                        v6 = [v51 stringWithFormat:@"%@", v91];
                        v52 = v6;
                      }

                      else
                      {
                        v52 = &stru_287FA0430;
                      }

                      [v44 setObject:v52 forKeyedSubscript:v82];
                      if (v50)
                      {
                      }
                    }

LABEL_36:
                    [v88 addObject:v44];
                  }

                  v25 = [v81 countByEnumeratingWithState:&v92 objects:v117 count:16];
                }

                while (v25);
              }
            }

            v74 = [v70 countByEnumeratingWithState:&v96 objects:v118 count:16];
          }

          while (v74);
        }
      }

      v56 = [obj countByEnumeratingWithState:&v100 objects:v121 count:16];
      if (!v56)
      {
LABEL_42:

        (*(a1[6] + 16))();
        _Block_object_dispose(&v105, 8);

        _Block_object_dispose(&v111, 8);
        goto LABEL_45;
      }
    }
  }

  v53 = a1[6];
  if (v53)
  {
    (*(v53 + 16))(v53, MEMORY[0x277CBEBF8]);
  }

LABEL_45:

  v54 = *MEMORY[0x277D85DE8];
}

void __91__TRIInternalServiceRequestHandler_activeExperimentInformationWithEnvironments_completion___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v63 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5)
  {
    v8 = objc_opt_new();
    v9 = *(*(a1 + 32) + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v57 = 0u;
    v58 = 0u;
    v55 = 0u;
    v56 = 0u;
    obj = v5;
    v11 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
    if (v11)
    {
      v12 = v11;
      v41 = v7;
      v42 = v5;
      v13 = *v56;
      v44 = *v56;
      do
      {
        v14 = 0;
        v45 = v12;
        do
        {
          if (*v56 != v13)
          {
            objc_enumerationMutation(obj);
          }

          v15 = *(*(&v55 + 1) + 8 * v14);
          if ([v15 status] == 1)
          {
            v16 = [v15 treatmentId];

            if (v16)
            {
              v17 = objc_opt_new();
              v51 = 0u;
              v52 = 0u;
              v53 = 0u;
              v54 = 0u;
              v50 = v15;
              v18 = [v15 namespaces];
              v19 = [v18 countByEnumeratingWithState:&v51 objects:v59 count:16];
              if (v19)
              {
                v20 = v19;
                v21 = *v52;
                do
                {
                  for (i = 0; i != v20; ++i)
                  {
                    if (*v52 != v21)
                    {
                      objc_enumerationMutation(v18);
                    }

                    v23 = *(*(&v51 + 1) + 8 * i);
                    v24 = objc_alloc(MEMORY[0x277D73808]);
                    v25 = [v23 name];
                    v26 = [v24 initWithName:v25 compatibilityVersion:{objc_msgSend(v23, "compatibilityVersion")}];
                    [v17 addObject:v26];
                  }

                  v20 = [v18 countByEnumeratingWithState:&v51 objects:v59 count:16];
                }

                while (v20);
              }

              v49 = *(*(*(a1 + 32) + 8) + 40);
              v47 = objc_alloc(MEMORY[0x277D736B8]);
              v27 = [v50 startDate];
              v28 = v27;
              if (!v27)
              {
                v28 = objc_opt_new();
                v43 = v28;
              }

              v48 = [v50 experimentDeployment];
              v29 = [v48 experimentId];
              v30 = [v50 experimentDeployment];
              v31 = [v30 deploymentId];
              v32 = [v50 treatmentId];
              v33 = [v47 initWithType:2 date:v28 experimentId:v29 deploymentId:v31 treatmentId:v32 namespaces:v17];
              [v49 addObject:v33];

              if (!v27)
              {
              }

              v34 = [v50 counterfactualTreatmentIds];
              v35 = [v34 count];

              v12 = v45;
              if (v35)
              {
                v36 = [v50 counterfactualTreatmentIds];
                v37 = *(*(*(a1 + 40) + 8) + 40);
                v38 = [v50 experimentDeployment];
                [v37 setObject:v36 forKeyedSubscript:v38];
              }

              v13 = v44;
            }
          }

          ++v14;
        }

        while (v14 != v12);
        v12 = [obj countByEnumeratingWithState:&v55 objects:v60 count:16];
      }

      while (v12);
      v7 = v41;
      v5 = v42;
    }

LABEL_29:

    goto LABEL_30;
  }

  if (v6)
  {
    obj = TRILogCategory_Server();
    if (os_log_type_enabled(obj, OS_LOG_TYPE_ERROR))
    {
      v40 = [v7 localizedDescription];
      *buf = 138543362;
      v62 = v40;
      _os_log_error_impl(&dword_26F567000, obj, OS_LOG_TYPE_ERROR, "activeExperimentInformationWithEnvironments: %{public}@", buf, 0xCu);
    }

    goto LABEL_29;
  }

LABEL_30:

  v39 = *MEMORY[0x277D85DE8];
}

- (void)immediatelySchedulePostUpgradeActivityWithCompletion:(id)completion
{
  completionCopy = completion;
  promise = self->_promise;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __89__TRIInternalServiceRequestHandler_immediatelySchedulePostUpgradeActivityWithCompletion___block_invoke;
  v7[3] = &unk_279DE0880;
  v8 = completionCopy;
  v6 = completionCopy;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v7];
}

void __89__TRIInternalServiceRequestHandler_immediatelySchedulePostUpgradeActivityWithCompletion___block_invoke(uint64_t a1)
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (([MEMORY[0x277D42590] isInternalBuild] & 1) == 0)
  {
    v6 = objc_alloc(MEMORY[0x277CCA9B8]);
    v11 = *MEMORY[0x277CCA450];
    v12[0] = @"Permission denied.";
    v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
    v8 = [v6 initWithDomain:@"TRIGeneralErrorDomain" code:3 userInfo:v7];

    v9 = *(a1 + 32);
    if (v9)
    {
      (*(v9 + 16))(v9, 0, v8);
    }

    goto LABEL_9;
  }

  v2 = +[TRILaunchDaemonActivityDescriptor postUpgradeDescriptor];
  [TRIXPCActivitySupport unsafe_immediatelyScheduleActivityWithLaunchDaemonDescriptor:v2];

  v3 = *(a1 + 32);
  if (!v3)
  {
LABEL_9:
    v10 = *MEMORY[0x277D85DE8];
    return;
  }

  v4 = *(v3 + 16);
  v5 = *MEMORY[0x277D85DE8];

  v4();
}

void __55__TRIInternalServiceRequestHandler_logSystemCovariates__block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  if (v4 && a3)
  {
    v6 = [v4 paths];

    if (!v6)
    {
      v13 = [MEMORY[0x277CCA890] currentHandler];
      v14 = [MEMORY[0x277CCACA8] stringWithUTF8String:"-[TRIInternalServiceRequestHandler logSystemCovariates]_block_invoke"];
      [v13 handleFailureInFunction:v14 file:@"TRIXPCInternalService.m" lineNumber:1139 description:{@"Invalid parameter not satisfying: %@", @"serverContext.paths"}];
    }

    v7 = [TRISystemCovariates alloc];
    v8 = [v5 paths];
    v9 = [(TRISystemCovariates *)v7 initWithPaths:v8];

    v10 = TRILogCategory_Backtrace();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = [v9 dictionary];
      *buf = 138412290;
      v16 = v11;
      _os_log_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEFAULT, "System covariates at the time of sysdiagnose: %@", buf, 0xCu);
    }
  }

  else
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "server context not full initialised before logging system covariates", buf, 2u);
    }
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)experimentIdsWithActiveStateAndNamespaceName:(id)name completion:(id)completion
{
  nameCopy = name;
  completionCopy = completion;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __92__TRIInternalServiceRequestHandler_experimentIdsWithActiveStateAndNamespaceName_completion___block_invoke;
  v17[3] = &unk_279DE0460;
  v17[4] = self;
  v8 = MEMORY[0x2743948D0](v17);
  promise = self->_promise;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __92__TRIInternalServiceRequestHandler_experimentIdsWithActiveStateAndNamespaceName_completion___block_invoke_237;
  v13[3] = &unk_279DE0638;
  v15 = v8;
  v16 = completionCopy;
  v14 = nameCopy;
  v10 = nameCopy;
  v11 = completionCopy;
  v12 = v8;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v13];
}

void __92__TRIInternalServiceRequestHandler_experimentIdsWithActiveStateAndNamespaceName_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(*(a1 + 32) + 44);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = *(a1 + 32);
    v10 = "end";
    v12[0] = 67109890;
    v12[1] = v5;
    if (!a2)
    {
      v10 = "begin";
    }

    v13 = 2114;
    v14 = v7;
    v15 = 2048;
    v16 = v9;
    v17 = 2080;
    v18 = v10;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "(%d) %{public}@ %p: %s experimentIdsWithActiveStateAndNamespaceName:completion:", v12, 0x26u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __92__TRIInternalServiceRequestHandler_experimentIdsWithActiveStateAndNamespaceName_completion___block_invoke_237(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  (*(*(a1 + 40) + 16))();
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __92__TRIInternalServiceRequestHandler_experimentIdsWithActiveStateAndNamespaceName_completion___block_invoke_2;
  v19[3] = &unk_279DE0398;
  v20 = *(a1 + 40);
  v7 = MEMORY[0x2743948D0](v19);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __92__TRIInternalServiceRequestHandler_experimentIdsWithActiveStateAndNamespaceName_completion___block_invoke_3;
  v17[3] = &unk_279DE0548;
  v18 = *(a1 + 48);
  v8 = MEMORY[0x2743948D0](v17);
  v9 = v8;
  if (*(a1 + 32))
  {
    v10 = objc_opt_new();
    v11 = [v5 experimentDatabase];
    v12 = *(a1 + 32);
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 3221225472;
    v15[2] = __92__TRIInternalServiceRequestHandler_experimentIdsWithActiveStateAndNamespaceName_completion___block_invoke_241;
    v15[3] = &unk_279DE0728;
    v13 = v10;
    v16 = v13;
    LOBYTE(v12) = [v11 enumerateExperimentRecordsMatchingNamespaceName:v12 block:v15];

    if (v12)
    {
      v14 = *(a1 + 48);
      if (v14)
      {
        (*(v14 + 16))(v14, v13, 0);
      }
    }

    else
    {
      (v9)[2](v9, 12, @"The database query failed.");
    }
  }

  else
  {
    (*(v8 + 16))(v8, 2, @"Parameter 'namespace-name' must be non-nil.");
  }

  if (v7)
  {
    v7[2](v7);
  }
}

void __92__TRIInternalServiceRequestHandler_experimentIdsWithActiveStateAndNamespaceName_completion___block_invoke_3(uint64_t a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (*(a1 + 32))
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v14 = v5;
      _os_log_debug_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEBUG, "_experimentIdsWithActiveStateAndNamespaceName: %{public}@", buf, 0xCu);
    }

    v7 = objc_alloc(MEMORY[0x277CCA9B8]);
    v11 = *MEMORY[0x277CCA450];
    v12 = v5;
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v12 forKeys:&v11 count:1];
    v9 = [v7 initWithDomain:@"TRIGeneralErrorDomain" code:a2 userInfo:v8];

    (*(*(a1 + 32) + 16))();
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __92__TRIInternalServiceRequestHandler_experimentIdsWithActiveStateAndNamespaceName_completion___block_invoke_241(uint64_t a1, void *a2)
{
  v6 = a2;
  if ([v6 status] == 1 || objc_msgSend(v6, "status") == 2)
  {
    v3 = *(a1 + 32);
    v4 = [v6 experimentDeployment];
    v5 = [v4 experimentId];
    [v3 addObject:v5];
  }
}

- (void)isOptedOutOfExperimentationWithCompletion:(id)completion
{
  completionCopy = completion;
  promise = self->_promise;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __78__TRIInternalServiceRequestHandler_isOptedOutOfExperimentationWithCompletion___block_invoke;
  v7[3] = &unk_279DE0880;
  v8 = completionCopy;
  v6 = completionCopy;
  [(TRIXPCServerContextPromise *)promise addBlockToExecuteAfterPromiseFullfillment:v7];
}

void __78__TRIInternalServiceRequestHandler_isOptedOutOfExperimentationWithCompletion___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x277D85DE8];
  if (a2 && a3)
  {
    v4 = *(a1 + 32);
    v5 = [TRIUserAdjustableSettings getExperimentOptOut:a2];
    v6 = *(v4 + 16);
    v7 = *MEMORY[0x277D85DE8];

    v6(v4, v5, 0);
  }

  else
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *v14 = 0;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "server context not fully initialised", v14, 2u);
    }

    v9 = *(a1 + 32);
    v10 = MEMORY[0x277CCA9B8];
    v15 = *MEMORY[0x277CCA450];
    v16[0] = @"server context not fully initialised";
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:&v15 count:1];
    v12 = [v10 errorWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:v11];
    (*(v9 + 16))(v9, 0, v12);

    v13 = *MEMORY[0x277D85DE8];
  }
}

@end