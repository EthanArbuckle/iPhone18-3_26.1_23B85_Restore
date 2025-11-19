@interface TRIXPCInternalServiceClient
- (BOOL)addWithoutRunningTask:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)deregisterNamespaceWithNamespaceName:(id)a3 withTeamId:(id)a4 error:(id *)a5;
- (BOOL)immediatelySchedulePostUpgradeActivityWithError:(id *)a3;
- (BOOL)performSyncXPCWithError:(id *)a3 block:(id)a4;
- (BOOL)resumeTaskQueueWithError:(id *)a3;
- (BOOL)setFailureInjectionDelegate:(id)a3 error:(id *)a4;
- (BOOL)setLastFetchDate:(id)a3 forContainer:(int)a4 teamId:(id)a5 error:(id *)a6;
- (BOOL)setSubscription:(id)a3 namespaceName:(id)a4 error:(id *)a5;
- (BOOL)startNamespaceDownloadWithName:(id)a3 withTeamId:(id)a4 options:(id)a5 error:(id *)a6;
- (BOOL)submitTask:(id)a3 options:(id)a4 error:(id *)a5;
- (BOOL)treatmentValidForExperimentWithID:(id)a3 treatmentID:(id)a4;
- (id)activeExperimentIdsForNamespaceName:(id)a3 error:(id *)a4;
- (id)dynamicNamespaceRecordsWithError:(id *)a3;
- (id)experimentNotificationsWithExperimentId:(id)a3 cloudKitContainer:(int)a4 teamId:(id)a5 error:(id *)a6;
- (id)initForTrialdSystem:(BOOL)a3;
- (id)lastFetchDateForContainer:(int)a3 teamId:(id)a4 error:(id *)a5;
- (id)rolloutNotificationWithLatestDeploymentForRolloutId:(id)a3 cloudKitContainer:(int)a4 teamId:(id)a5 error:(id *)a6;
- (id)subscriptionForNamespaceName:(id)a3 error:(id *)a4;
- (id)taskRecordsWithError:(id *)a3;
@end

@implementation TRIXPCInternalServiceClient

- (id)initForTrialdSystem:(BOOL)a3
{
  v3 = a3;
  v29.receiver = self;
  v29.super_class = TRIXPCInternalServiceClient;
  v4 = [(TRIXPCInternalServiceClient *)&v29 init];
  if (v4)
  {
    v5 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287FCCFA0];
    v6 = objc_autoreleasePoolPush();
    v7 = objc_alloc(MEMORY[0x277CBEB98]);
    v8 = objc_opt_class();
    v9 = [v7 initWithObjects:{v8, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v6);
    [v5 setClasses:v9 forSelector:sel_experimentNotificationsWithExperimentId_cloudKitContainer_teamId_completion_ argumentIndex:0 ofReply:1];

    v10 = objc_autoreleasePoolPush();
    v11 = objc_alloc(MEMORY[0x277CBEB98]);
    v12 = objc_opt_class();
    v13 = [v11 initWithObjects:{v12, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v10);
    [v5 setClasses:v13 forSelector:sel_dynamicNamespaceRecordsWithCompletion_ argumentIndex:0 ofReply:1];

    v14 = objc_autoreleasePoolPush();
    v15 = objc_alloc(MEMORY[0x277CBEB98]);
    v16 = objc_opt_class();
    v17 = [v15 initWithObjects:{v16, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v14);
    [v5 setClasses:v17 forSelector:sel_taskRecordsWithCompletion_ argumentIndex:0 ofReply:1];

    v18 = objc_autoreleasePoolPush();
    v19 = objc_alloc(MEMORY[0x277CBEB98]);
    v20 = objc_opt_class();
    v21 = [v19 initWithObjects:{v20, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v18);
    [v5 setClasses:v21 forSelector:sel_subscriptionForNamespaceName_completion_ argumentIndex:0 ofReply:1];

    if (v3)
    {
      v22 = @"com.apple.triald.system.internal";
    }

    else
    {
      v22 = @"com.apple.triald.internal";
    }

    if (v3)
    {
      v23 = 4096;
    }

    else
    {
      v23 = 0;
    }

    v24 = objc_alloc(MEMORY[0x277D42650]);
    v25 = TRILogCategory_ClientFramework();
    v26 = [v24 initWithServiceName:v22 connectionOptions:v23 allowlistedServerInterface:v5 allowlistedClientInterface:0 serverInitiatedRequestHandler:0 allowSystemToUserConnection:1 interruptionHandler:&__block_literal_global_10 invalidationHandler:&__block_literal_global_92 logHandle:v25];
    helper = v4->_helper;
    v4->_helper = v26;

    v4->_trialdSystemOnly = v3;
  }

  return v4;
}

- (BOOL)performSyncXPCWithError:(id *)a3 block:(id)a4
{
  v6 = a4;
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__10;
  v17 = __Block_byref_object_dispose__10;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __61__TRIXPCInternalServiceClient_performSyncXPCWithError_block___block_invoke;
  v12[3] = &unk_279DE09F8;
  v12[4] = &v13;
  v7 = MEMORY[0x2743948D0](v12);
  v8 = [(_PASXPCClientHelper *)self->_helper synchronousRemoteObjectProxyWithErrorHandler:v7];
  v6[2](v6, v8);
  v9 = v14[5];
  if (a3 && v9)
  {
    v9 = v9;
    *a3 = v9;
  }

  v10 = v9 == 0;

  _Block_object_dispose(&v13, 8);
  return v10;
}

- (id)taskRecordsWithError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__10;
  v18 = __Block_byref_object_dispose__10;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__10;
  v12 = __Block_byref_object_dispose__10;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __52__TRIXPCInternalServiceClient_taskRecordsWithError___block_invoke;
  v7[3] = &unk_279DE0A20;
  v7[4] = &v14;
  v7[5] = &v8;
  if (![(TRIXPCInternalServiceClient *)self performSyncXPCWithError:a3 block:v7])
  {
LABEL_5:
    v5 = 0;
    goto LABEL_7;
  }

  v4 = v9[5];
  if (v4)
  {
    if (a3)
    {
      v5 = 0;
      *a3 = v4;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v5 = v15[5];
LABEL_7:
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

uint64_t __52__TRIXPCInternalServiceClient_taskRecordsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __52__TRIXPCInternalServiceClient_taskRecordsWithError___block_invoke_2;
  v3[3] = &unk_279DE0920;
  v4 = *(a1 + 32);
  return [a2 taskRecordsWithCompletion:v3];
}

void __52__TRIXPCInternalServiceClient_taskRecordsWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)experimentNotificationsWithExperimentId:(id)a3 cloudKitContainer:(int)a4 teamId:(id)a5 error:(id *)a6
{
  v10 = a3;
  v11 = a5;
  v29 = 0;
  v30 = &v29;
  v31 = 0x3032000000;
  v32 = __Block_byref_object_copy__10;
  v33 = __Block_byref_object_dispose__10;
  v34 = 0;
  v23 = 0;
  v24 = &v23;
  v25 = 0x3032000000;
  v26 = __Block_byref_object_copy__10;
  v27 = __Block_byref_object_dispose__10;
  v28 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __102__TRIXPCInternalServiceClient_experimentNotificationsWithExperimentId_cloudKitContainer_teamId_error___block_invoke;
  v17[3] = &unk_279DE0A48;
  v12 = v10;
  v18 = v12;
  v22 = a4;
  v13 = v11;
  v19 = v13;
  v20 = &v29;
  v21 = &v23;
  if (![(TRIXPCInternalServiceClient *)self performSyncXPCWithError:a6 block:v17])
  {
LABEL_5:
    v15 = 0;
    goto LABEL_7;
  }

  v14 = v24[5];
  if (v14)
  {
    if (a6)
    {
      v15 = 0;
      *a6 = v14;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v15 = v30[5];
LABEL_7:

  _Block_object_dispose(&v23, 8);
  _Block_object_dispose(&v29, 8);

  return v15;
}

uint64_t __102__TRIXPCInternalServiceClient_experimentNotificationsWithExperimentId_cloudKitContainer_teamId_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __102__TRIXPCInternalServiceClient_experimentNotificationsWithExperimentId_cloudKitContainer_teamId_error___block_invoke_2;
  v6[3] = &unk_279DE0920;
  v7 = *(a1 + 48);
  return [a2 experimentNotificationsWithExperimentId:v3 cloudKitContainer:v2 teamId:v4 completion:v6];
}

void __102__TRIXPCInternalServiceClient_experimentNotificationsWithExperimentId_cloudKitContainer_teamId_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = a3;
  objc_storeStrong((*(*(a1 + 32) + 8) + 40), a2);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v7;

  if (v6 && [v6 count])
  {
    v10 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v12 = [v6 lastObject];
      v13 = [v12 experiment];
      v14 = [v6 lastObject];
      v15 = [v14 encodedExperimentDefinition];
      v16 = 138412546;
      v17 = v13;
      v18 = 2112;
      v19 = v15;
      _os_log_debug_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEBUG, "got artifact from server with experiment %@ -- encoded: %@", &v16, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (BOOL)treatmentValidForExperimentWithID:(id)a3 treatmentID:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v19 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __77__TRIXPCInternalServiceClient_treatmentValidForExperimentWithID_treatmentID___block_invoke;
  v15[3] = &unk_279DE0A98;
  v8 = v6;
  v16 = v8;
  v9 = v7;
  v17 = v9;
  v18 = &v20;
  [(TRIXPCInternalServiceClient *)self performSyncXPCWithError:&v19 block:v15];
  v10 = v19;
  if (v10)
  {
    v11 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v25 = v10;
      _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_INFO, "Synchronous XPC message failed with error %@", buf, 0xCu);
    }
  }

  v12 = *(v21 + 24);

  _Block_object_dispose(&v20, 8);
  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

uint64_t __77__TRIXPCInternalServiceClient_treatmentValidForExperimentWithID_treatmentID___block_invoke(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __77__TRIXPCInternalServiceClient_treatmentValidForExperimentWithID_treatmentID___block_invoke_2;
  v5[3] = &unk_279DE0A70;
  v5[4] = a1[6];
  return [a2 treatmentValidForExperimentWithId:v2 treatmentId:v3 completion:v5];
}

- (id)rolloutNotificationWithLatestDeploymentForRolloutId:(id)a3 cloudKitContainer:(int)a4 teamId:(id)a5 error:(id *)a6
{
  v39[1] = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a5;
  v32 = 0;
  v33 = &v32;
  v34 = 0x3032000000;
  v35 = __Block_byref_object_copy__10;
  v36 = __Block_byref_object_dispose__10;
  v37 = 0;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__10;
  v30 = __Block_byref_object_dispose__10;
  v31 = 0;
  if (!self->_trialdSystemOnly)
  {
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __114__TRIXPCInternalServiceClient_rolloutNotificationWithLatestDeploymentForRolloutId_cloudKitContainer_teamId_error___block_invoke;
    v19[3] = &unk_279DE0A48;
    v20 = v10;
    v24 = a4;
    v21 = v11;
    v22 = &v32;
    v23 = &v26;
    if (![(TRIXPCInternalServiceClient *)self performSyncXPCWithError:a6 block:v19])
    {
      goto LABEL_11;
    }

    v16 = v27[5];
    if (!v16)
    {
      v15 = v33[5];
      goto LABEL_13;
    }

    if (a6)
    {
      v15 = 0;
      *a6 = v16;
    }

    else
    {
LABEL_11:
      v15 = 0;
    }

LABEL_13:

    v14 = v20;
    goto LABEL_14;
  }

  if (a6)
  {
    v12 = objc_alloc(MEMORY[0x277CCA9B8]);
    v38 = *MEMORY[0x277CCA450];
    v39[0] = @"Received call for rollout notifications from triald_system on macOS, which is unsupported.";
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    *a6 = [v12 initWithDomain:@"TRIGeneralErrorDomain" code:17 userInfo:v13];
  }

  v14 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Received call for rollout notifications from triald_system on macOS, which is unsupported.", buf, 2u);
  }

  v15 = 0;
LABEL_14:

  _Block_object_dispose(&v26, 8);
  _Block_object_dispose(&v32, 8);

  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

uint64_t __114__TRIXPCInternalServiceClient_rolloutNotificationWithLatestDeploymentForRolloutId_cloudKitContainer_teamId_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __114__TRIXPCInternalServiceClient_rolloutNotificationWithLatestDeploymentForRolloutId_cloudKitContainer_teamId_error___block_invoke_2;
  v6[3] = &unk_279DE0AC0;
  v7 = *(a1 + 48);
  return [a2 rolloutNotificationWithLatestDeploymentForRolloutId:v3 cloudKitContainer:v2 teamId:v4 completion:v6];
}

void __114__TRIXPCInternalServiceClient_rolloutNotificationWithLatestDeploymentForRolloutId_cloudKitContainer_teamId_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = TRILogCategory_ClientFramework();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v14 = [v5 deployment];
    v15 = [v14 shortDesc];
    v16 = 138543362;
    v17 = v15;
    _os_log_debug_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEBUG, "Received rollout artifact from server: %{public}@", &v16, 0xCu);
  }

  v8 = *(*(a1 + 32) + 8);
  v9 = *(v8 + 40);
  *(v8 + 40) = v5;
  v10 = v5;

  v11 = *(*(a1 + 40) + 8);
  v12 = *(v11 + 40);
  *(v11 + 40) = v6;

  v13 = *MEMORY[0x277D85DE8];
}

- (BOOL)submitTask:(id)a3 options:(id)a4 error:(id *)a5
{
  v41[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"TRIXPCInternalServiceClient.m" lineNumber:207 description:{@"Invalid parameter not satisfying: %@", @"task"}];
  }

  v11 = +[TRITaskSupport sharedInstance];
  v12 = [v11 XPCTaskAllowlist];
  v13 = [v12 containsObject:objc_opt_class()];

  if (v13)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__10;
    v34 = __Block_byref_object_dispose__10;
    v35 = 0;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __56__TRIXPCInternalServiceClient_submitTask_options_error___block_invoke;
    v25[3] = &unk_279DE0B10;
    v26 = v9;
    v27 = v10;
    v28 = &v36;
    v29 = &v30;
    if (![(TRIXPCInternalServiceClient *)self performSyncXPCWithError:a5 block:v25])
    {
      goto LABEL_11;
    }

    v14 = v31[5];
    if (!v14)
    {
      v15 = *(v37 + 24);
      goto LABEL_13;
    }

    if (a5)
    {
      v15 = 0;
      *a5 = v14;
    }

    else
    {
LABEL_11:
      v15 = 0;
    }

LABEL_13:

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v36, 8);
    goto LABEL_14;
  }

  if (a5)
  {
    v16 = objc_alloc(MEMORY[0x277CCA9B8]);
    v40 = *MEMORY[0x277CCA450];
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v17 initWithFormat:@"Task class %@ is not allowlisted for remote submission.", v19];
    v41[0] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    *a5 = [v16 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v21];
  }

  v15 = 0;
LABEL_14:

  v22 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

uint64_t __56__TRIXPCInternalServiceClient_submitTask_options_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __56__TRIXPCInternalServiceClient_submitTask_options_error___block_invoke_2;
  v5[3] = &unk_279DE0AE8;
  v6 = *(a1 + 48);
  return [a2 submitTask:v2 options:v3 completion:v5];
}

- (BOOL)addWithoutRunningTask:(id)a3 options:(id)a4 error:(id *)a5
{
  v41[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"TRIXPCInternalServiceClient.m" lineNumber:247 description:{@"Invalid parameter not satisfying: %@", @"task"}];
  }

  v11 = +[TRITaskSupport sharedInstance];
  v12 = [v11 XPCTaskAllowlist];
  v13 = [v12 containsObject:objc_opt_class()];

  if (v13)
  {
    v36 = 0;
    v37 = &v36;
    v38 = 0x2020000000;
    v39 = 0;
    v30 = 0;
    v31 = &v30;
    v32 = 0x3032000000;
    v33 = __Block_byref_object_copy__10;
    v34 = __Block_byref_object_dispose__10;
    v35 = 0;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __67__TRIXPCInternalServiceClient_addWithoutRunningTask_options_error___block_invoke;
    v25[3] = &unk_279DE0B10;
    v26 = v9;
    v27 = v10;
    v28 = &v36;
    v29 = &v30;
    if (![(TRIXPCInternalServiceClient *)self performSyncXPCWithError:a5 block:v25])
    {
      goto LABEL_11;
    }

    v14 = v31[5];
    if (!v14)
    {
      v15 = *(v37 + 24);
      goto LABEL_13;
    }

    if (a5)
    {
      v15 = 0;
      *a5 = v14;
    }

    else
    {
LABEL_11:
      v15 = 0;
    }

LABEL_13:

    _Block_object_dispose(&v30, 8);
    _Block_object_dispose(&v36, 8);
    goto LABEL_14;
  }

  if (a5)
  {
    v16 = objc_alloc(MEMORY[0x277CCA9B8]);
    v40 = *MEMORY[0x277CCA450];
    v17 = objc_alloc(MEMORY[0x277CCACA8]);
    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    v20 = [v17 initWithFormat:@"Task class %@ is not allowlisted for remote submission.", v19];
    v41[0] = v20;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:&v40 count:1];
    *a5 = [v16 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v21];
  }

  v15 = 0;
LABEL_14:

  v22 = *MEMORY[0x277D85DE8];
  return v15 & 1;
}

uint64_t __67__TRIXPCInternalServiceClient_addWithoutRunningTask_options_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__TRIXPCInternalServiceClient_addWithoutRunningTask_options_error___block_invoke_2;
  v5[3] = &unk_279DE0AE8;
  v6 = *(a1 + 48);
  return [a2 addWithoutRunningForTask:v2 options:v3 completion:v5];
}

- (BOOL)resumeTaskQueueWithError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__10;
  v12 = __Block_byref_object_dispose__10;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __56__TRIXPCInternalServiceClient_resumeTaskQueueWithError___block_invoke;
  v7[3] = &unk_279DE0A20;
  v7[4] = &v14;
  v7[5] = &v8;
  v4 = [(TRIXPCInternalServiceClient *)self performSyncXPCWithError:a3 block:v7];
  if (a3)
  {
    *a3 = v9[5];
  }

  v5 = v15[3] & v4;
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return v5 & 1;
}

uint64_t __56__TRIXPCInternalServiceClient_resumeTaskQueueWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __56__TRIXPCInternalServiceClient_resumeTaskQueueWithError___block_invoke_2;
  v3[3] = &unk_279DE0AE8;
  v4 = *(a1 + 32);
  return [a2 resumeTaskQueueWithCompletion:v3];
}

- (id)lastFetchDateForContainer:(int)a3 teamId:(id)a4 error:(id *)a5
{
  v8 = a4;
  v24 = 0;
  v25 = &v24;
  v26 = 0x3032000000;
  v27 = __Block_byref_object_copy__10;
  v28 = __Block_byref_object_dispose__10;
  v29 = 0;
  v18 = 0;
  v19 = &v18;
  v20 = 0x3032000000;
  v21 = __Block_byref_object_copy__10;
  v22 = __Block_byref_object_dispose__10;
  v23 = 0;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __70__TRIXPCInternalServiceClient_lastFetchDateForContainer_teamId_error___block_invoke;
  v13[3] = &unk_279DE0B60;
  v17 = a3;
  v9 = v8;
  v14 = v9;
  v15 = &v24;
  v16 = &v18;
  if (![(TRIXPCInternalServiceClient *)self performSyncXPCWithError:a5 block:v13])
  {
LABEL_5:
    v11 = 0;
    goto LABEL_7;
  }

  v10 = v19[5];
  if (v10)
  {
    if (a5)
    {
      v11 = 0;
      *a5 = v10;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v11 = v25[5];
LABEL_7:

  _Block_object_dispose(&v18, 8);
  _Block_object_dispose(&v24, 8);

  return v11;
}

uint64_t __70__TRIXPCInternalServiceClient_lastFetchDateForContainer_teamId_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 56);
  v3 = *(a1 + 32);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __70__TRIXPCInternalServiceClient_lastFetchDateForContainer_teamId_error___block_invoke_2;
  v5[3] = &unk_279DE0B38;
  v6 = *(a1 + 40);
  return [a2 lastFetchDateForContainer:v2 teamId:v3 completion:v5];
}

void __70__TRIXPCInternalServiceClient_lastFetchDateForContainer_teamId_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)setLastFetchDate:(id)a3 forContainer:(int)a4 teamId:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a5;
  if (!v11)
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:a2 object:self file:@"TRIXPCInternalServiceClient.m" lineNumber:332 description:{@"Invalid parameter not satisfying: %@", @"date"}];
  }

  v31 = 0;
  v32 = &v31;
  v33 = 0x2020000000;
  v34 = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x3032000000;
  v28 = __Block_byref_object_copy__10;
  v29 = __Block_byref_object_dispose__10;
  v30 = 0;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __74__TRIXPCInternalServiceClient_setLastFetchDate_forContainer_teamId_error___block_invoke;
  v19[3] = &unk_279DE0A48;
  v13 = v11;
  v20 = v13;
  v24 = a4;
  v14 = v12;
  v21 = v14;
  v22 = &v31;
  v23 = &v25;
  if (![(TRIXPCInternalServiceClient *)self performSyncXPCWithError:a6 block:v19])
  {
    goto LABEL_7;
  }

  v15 = v26[5];
  if (!v15)
  {
    v16 = *(v32 + 24);
    goto LABEL_9;
  }

  if (a6)
  {
    v16 = 0;
    *a6 = v15;
  }

  else
  {
LABEL_7:
    v16 = 0;
  }

LABEL_9:

  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(&v31, 8);

  return v16 & 1;
}

uint64_t __74__TRIXPCInternalServiceClient_setLastFetchDate_forContainer_teamId_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 64);
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __74__TRIXPCInternalServiceClient_setLastFetchDate_forContainer_teamId_error___block_invoke_2;
  v6[3] = &unk_279DE0AE8;
  v7 = *(a1 + 48);
  return [a2 setLastFetchDate:v3 forContainer:v2 teamId:v4 completion:v6];
}

- (BOOL)setFailureInjectionDelegate:(id)a3 error:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"TRIXPCInternalServiceClient.m" lineNumber:361 description:{@"Invalid parameter not satisfying: %@", @"delegate"}];
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __65__TRIXPCInternalServiceClient_setFailureInjectionDelegate_error___block_invoke;
  v12[3] = &unk_279DE0B88;
  v13 = v7;
  v8 = v7;
  v9 = [(TRIXPCInternalServiceClient *)self performSyncXPCWithError:a4 block:v12];

  return v9;
}

- (BOOL)deregisterNamespaceWithNamespaceName:(id)a3 withTeamId:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = v10;
  if (v9)
  {
    if (v10)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"TRIXPCInternalServiceClient.m" lineNumber:443 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v18 = [MEMORY[0x277CCA890] currentHandler];
  [v18 handleFailureInMethod:a2 object:self file:@"TRIXPCInternalServiceClient.m" lineNumber:444 description:{@"Invalid parameter not satisfying: %@", @"teamId"}];

LABEL_3:
  v31 = 0;
  v32 = &v31;
  v33 = 0x3032000000;
  v34 = __Block_byref_object_copy__10;
  v35 = __Block_byref_object_dispose__10;
  v36 = 0;
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __85__TRIXPCInternalServiceClient_deregisterNamespaceWithNamespaceName_withTeamId_error___block_invoke;
  v30[3] = &unk_279DE09F8;
  v30[4] = &v31;
  v12 = MEMORY[0x2743948D0](v30);
  v26 = 0;
  v27 = &v26;
  v28 = 0x2020000000;
  v29 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__10;
  v24 = __Block_byref_object_dispose__10;
  v25 = 0;
  v13 = [(_PASXPCClientHelper *)self->_helper synchronousRemoteObjectProxyWithErrorHandler:v12];
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __85__TRIXPCInternalServiceClient_deregisterNamespaceWithNamespaceName_withTeamId_error___block_invoke_2;
  v19[3] = &unk_279DE0AE8;
  v19[4] = &v26;
  v19[5] = &v20;
  [v13 deregisterNamespaceWithNamespaceName:v9 teamId:v11 completion:v19];
  v14 = v32[5];
  if (!v14)
  {
    v14 = v21[5];
    if (!v14)
    {
      v15 = *(v27 + 24);
      goto LABEL_10;
    }

    if (a5)
    {
      goto LABEL_5;
    }

LABEL_8:
    v15 = 0;
    goto LABEL_10;
  }

  if (!a5)
  {
    goto LABEL_8;
  }

LABEL_5:
  v15 = 0;
  *a5 = v14;
LABEL_10:

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v26, 8);

  _Block_object_dispose(&v31, 8);
  return v15 & 1;
}

- (BOOL)startNamespaceDownloadWithName:(id)a3 withTeamId:(id)a4 options:(id)a5 error:(id *)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (v11)
  {
    if (v12)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"TRIXPCInternalServiceClient.m" lineNumber:482 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

    if (v12)
    {
      goto LABEL_3;
    }
  }

  v20 = [MEMORY[0x277CCA890] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"TRIXPCInternalServiceClient.m" lineNumber:483 description:{@"Invalid parameter not satisfying: %@", @"teamId"}];

LABEL_3:
  v33 = 0;
  v34 = &v33;
  v35 = 0x3032000000;
  v36 = __Block_byref_object_copy__10;
  v37 = __Block_byref_object_dispose__10;
  v38 = 0;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __87__TRIXPCInternalServiceClient_startNamespaceDownloadWithName_withTeamId_options_error___block_invoke;
  v32[3] = &unk_279DE09F8;
  v32[4] = &v33;
  v14 = MEMORY[0x2743948D0](v32);
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__10;
  v26 = __Block_byref_object_dispose__10;
  v27 = 0;
  v15 = [(_PASXPCClientHelper *)self->_helper synchronousRemoteObjectProxyWithErrorHandler:v14];
  v21[0] = MEMORY[0x277D85DD0];
  v21[1] = 3221225472;
  v21[2] = __87__TRIXPCInternalServiceClient_startNamespaceDownloadWithName_withTeamId_options_error___block_invoke_2;
  v21[3] = &unk_279DE0AE8;
  v21[4] = &v28;
  v21[5] = &v22;
  [v15 startDownloadNamespaceWithName:v11 teamId:v12 options:v13 completion:v21];
  v16 = v34[5];
  if (!v16)
  {
    v16 = v23[5];
    if (!v16)
    {
      v17 = *(v29 + 24);
      goto LABEL_10;
    }

    if (a6)
    {
      goto LABEL_5;
    }

LABEL_8:
    v17 = 0;
    goto LABEL_10;
  }

  if (!a6)
  {
    goto LABEL_8;
  }

LABEL_5:
  v17 = 0;
  *a6 = v16;
LABEL_10:

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  _Block_object_dispose(&v33, 8);
  return v17 & 1;
}

- (id)dynamicNamespaceRecordsWithError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__10;
  v18 = __Block_byref_object_dispose__10;
  v19 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__10;
  v12 = __Block_byref_object_dispose__10;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __64__TRIXPCInternalServiceClient_dynamicNamespaceRecordsWithError___block_invoke;
  v7[3] = &unk_279DE0A20;
  v7[4] = &v14;
  v7[5] = &v8;
  if (![(TRIXPCInternalServiceClient *)self performSyncXPCWithError:a3 block:v7])
  {
LABEL_5:
    v5 = 0;
    goto LABEL_7;
  }

  v4 = v9[5];
  if (v4)
  {
    if (a3)
    {
      v5 = 0;
      *a3 = v4;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v5 = v15[5];
LABEL_7:
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);

  return v5;
}

uint64_t __64__TRIXPCInternalServiceClient_dynamicNamespaceRecordsWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __64__TRIXPCInternalServiceClient_dynamicNamespaceRecordsWithError___block_invoke_2;
  v3[3] = &unk_279DE0920;
  v4 = *(a1 + 32);
  return [a2 dynamicNamespaceRecordsWithCompletion:v3];
}

void __64__TRIXPCInternalServiceClient_dynamicNamespaceRecordsWithError___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)activeExperimentIdsForNamespaceName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__10;
  v25 = __Block_byref_object_dispose__10;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__10;
  v19 = __Block_byref_object_dispose__10;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __73__TRIXPCInternalServiceClient_activeExperimentIdsForNamespaceName_error___block_invoke;
  v11[3] = &unk_279DE0BD0;
  v7 = v6;
  v12 = v7;
  v13 = &v21;
  v14 = &v15;
  if (![(TRIXPCInternalServiceClient *)self performSyncXPCWithError:a4 block:v11])
  {
LABEL_5:
    v9 = 0;
    goto LABEL_7;
  }

  v8 = v16[5];
  if (v8)
  {
    if (a4)
    {
      v9 = 0;
      *a4 = v8;
      goto LABEL_7;
    }

    goto LABEL_5;
  }

  v9 = v22[5];
LABEL_7:

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

uint64_t __73__TRIXPCInternalServiceClient_activeExperimentIdsForNamespaceName_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __73__TRIXPCInternalServiceClient_activeExperimentIdsForNamespaceName_error___block_invoke_2;
  v4[3] = &unk_279DE0920;
  v5 = *(a1 + 40);
  return [a2 experimentIdsWithActiveStateAndNamespaceName:v2 completion:v4];
}

void __73__TRIXPCInternalServiceClient_activeExperimentIdsForNamespaceName_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (id)subscriptionForNamespaceName:(id)a3 error:(id *)a4
{
  v6 = a3;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__10;
  v25 = __Block_byref_object_dispose__10;
  v26 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__10;
  v19 = __Block_byref_object_dispose__10;
  v20 = 0;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __66__TRIXPCInternalServiceClient_subscriptionForNamespaceName_error___block_invoke;
  v11[3] = &unk_279DE0BD0;
  v7 = v6;
  v12 = v7;
  v13 = &v21;
  v14 = &v15;
  if (![(TRIXPCInternalServiceClient *)self performSyncXPCWithError:a4 block:v11])
  {
LABEL_5:
    v9 = MEMORY[0x277CBEBF8];
    goto LABEL_6;
  }

  v8 = v16[5];
  if (v8)
  {
    if (a4)
    {
      *a4 = v8;
    }

    goto LABEL_5;
  }

  v9 = v22[5];
LABEL_6:

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v21, 8);

  return v9;
}

uint64_t __66__TRIXPCInternalServiceClient_subscriptionForNamespaceName_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __66__TRIXPCInternalServiceClient_subscriptionForNamespaceName_error___block_invoke_2;
  v4[3] = &unk_279DE0920;
  v5 = *(a1 + 40);
  return [a2 subscriptionForNamespaceName:v2 completion:v4];
}

void __66__TRIXPCInternalServiceClient_subscriptionForNamespaceName_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

- (BOOL)setSubscription:(id)a3 namespaceName:(id)a4 error:(id *)a5
{
  v9 = a3;
  v10 = a4;
  if (!v9)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"TRIXPCInternalServiceClient.m" lineNumber:591 description:{@"Invalid parameter not satisfying: %@", @"factorNames"}];
  }

  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__10;
  v26 = __Block_byref_object_dispose__10;
  v27 = 0;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __67__TRIXPCInternalServiceClient_setSubscription_namespaceName_error___block_invoke;
  v17[3] = &unk_279DE0B10;
  v11 = v9;
  v18 = v11;
  v12 = v10;
  v19 = v12;
  v20 = &v28;
  v21 = &v22;
  if (![(TRIXPCInternalServiceClient *)self performSyncXPCWithError:a5 block:v17])
  {
    goto LABEL_7;
  }

  v13 = v23[5];
  if (!v13)
  {
    v14 = *(v29 + 24);
    goto LABEL_9;
  }

  if (a5)
  {
    v14 = 0;
    *a5 = v13;
  }

  else
  {
LABEL_7:
    v14 = 0;
  }

LABEL_9:

  _Block_object_dispose(&v22, 8);
  _Block_object_dispose(&v28, 8);

  return v14 & 1;
}

uint64_t __67__TRIXPCInternalServiceClient_setSubscription_namespaceName_error___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __67__TRIXPCInternalServiceClient_setSubscription_namespaceName_error___block_invoke_2;
  v5[3] = &unk_279DE0AE8;
  v6 = *(a1 + 48);
  return [a2 setSubscription:v2 namespaceName:v3 completion:v5];
}

- (BOOL)immediatelySchedulePostUpgradeActivityWithError:(id *)a3
{
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = 0;
  v9 = &v8;
  v10 = 0x3032000000;
  v11 = __Block_byref_object_copy__10;
  v12 = __Block_byref_object_dispose__10;
  v13 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __79__TRIXPCInternalServiceClient_immediatelySchedulePostUpgradeActivityWithError___block_invoke;
  v7[3] = &unk_279DE0A20;
  v7[4] = &v14;
  v7[5] = &v8;
  if (![(TRIXPCInternalServiceClient *)self performSyncXPCWithError:a3 block:v7])
  {
    goto LABEL_5;
  }

  v4 = v9[5];
  if (!v4)
  {
    v5 = *(v15 + 24);
    goto LABEL_7;
  }

  if (a3)
  {
    v5 = 0;
    *a3 = v4;
  }

  else
  {
LABEL_5:
    v5 = 0;
  }

LABEL_7:
  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v14, 8);
  return v5 & 1;
}

uint64_t __79__TRIXPCInternalServiceClient_immediatelySchedulePostUpgradeActivityWithError___block_invoke(uint64_t a1, void *a2)
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __79__TRIXPCInternalServiceClient_immediatelySchedulePostUpgradeActivityWithError___block_invoke_2;
  v3[3] = &unk_279DE0AE8;
  v4 = *(a1 + 32);
  return [a2 immediatelySchedulePostUpgradeActivityWithCompletion:v3];
}

@end