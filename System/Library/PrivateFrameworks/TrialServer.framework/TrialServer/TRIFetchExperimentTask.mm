@interface TRIFetchExperimentTask
+ (id)parseFromData:(id)a3;
+ (id)taskWithExperimentDeployment:(id)a3 taskAttributing:(id)a4;
- (NSString)description;
- (TRIFetchExperimentTask)initWithCoder:(id)a3;
- (TRIFetchExperimentTask)initWithExperimentDeployment:(id)a3 taskAttributing:(id)a4;
- (id)_asPersistedTask;
- (id)_nextTasksForRunStatus:(int)a3;
- (id)dimensions;
- (id)metrics;
- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4;
- (id)serialize;
- (id)trialSystemTelemetry;
- (unint64_t)requiredCapabilities;
- (void)encodeWithCoder:(id)a3;
- (void)runDequeueHandlerUsingContext:(id)a3;
- (void)runEnqueueHandlerUsingContext:(id)a3;
@end

@implementation TRIFetchExperimentTask

+ (id)taskWithExperimentDeployment:(id)a3 taskAttributing:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[TRIFetchExperimentTask alloc] initWithExperimentDeployment:v6 taskAttributing:v5];

  return v7;
}

- (TRIFetchExperimentTask)initWithExperimentDeployment:(id)a3 taskAttributing:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"TRIFetchExperimentTask.m" lineNumber:62 description:{@"Invalid parameter not satisfying: %@", @"experimentDeployment"}];
  }

  if ([v7 hasDeploymentId])
  {
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"TRIFetchExperimentTask.m" lineNumber:63 description:{@"Invalid parameter not satisfying: %@", @"experimentDeployment.hasDeploymentId"}];

    if (v8)
    {
      goto LABEL_5;
    }
  }

  v15 = [MEMORY[0x277CCA890] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"TRIFetchExperimentTask.m" lineNumber:64 description:{@"Invalid parameter not satisfying: %@", @"taskAttributing"}];

LABEL_5:
  v16.receiver = self;
  v16.super_class = TRIFetchExperimentTask;
  v9 = [(TRIExperimentBaseTask *)&v16 initWithExperiment:v7];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_taskAttributing, a4);
    trialSystemTelemetry = v10->_trialSystemTelemetry;
    v10->_trialSystemTelemetry = 0;
  }

  return v10;
}

- (void)runEnqueueHandlerUsingContext:(id)a3
{
  v4 = a3;
  v5 = [(TRIExperimentBaseTask *)self experiment];
  v7 = [TRIContentTracker contentIdentifierForExperimentArtifactWithDeployment:v5];

  v6 = [v4 contentTracker];

  [v6 addRefWithContentIdentifier:v7];
}

- (void)runDequeueHandlerUsingContext:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TRIExperimentBaseTask *)self experiment];
  v6 = [TRIContentTracker contentIdentifierForExperimentArtifactWithDeployment:v5];

  v7 = [v4 contentTracker];

  LOBYTE(v4) = [v7 dropRefWithContentIdentifier:v6];
  if ((v4 & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v10 = [(TRIExperimentBaseTask *)self experiment];
      v11 = [v10 shortDesc];
      v12 = 138543362;
      v13 = v11;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Failed to drop reference on artifact for experiment %{public}@", &v12, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_nextTasksForRunStatus:(int)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a3 == 3)
  {
    v4 = [(TRIExperimentBaseTask *)self experiment];
    v5 = [v4 experimentId];
    v6 = [(TRIExperimentBaseTask *)self experiment];
    v7 = +[TRIDeactivateTreatmentTask taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:](TRIDeactivateTreatmentTask, "taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:", v5, [v6 deploymentId], 0, 3, self->_taskAttributing);
    v11[0] = v7;
    v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v11 count:1];
  }

  else
  {
    v8 = MEMORY[0x277CBEBF8];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4
{
  v97 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v56 = a4;
  if (![TRIUserAdjustableSettings getExperimentOptOut:v6])
  {
    v9 = self;
    objc_sync_enter(v9);
    v50 = os_transaction_create();
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      v42 = objc_opt_class();
      v43 = [(TRIExperimentBaseTask *)v9 experiment];
      v44 = [v43 shortDesc];
      *buf = 138412546;
      *&buf[4] = v42;
      *&buf[12] = 2114;
      *&buf[14] = v44;
      _os_log_debug_impl(&dword_26F567000, v10, OS_LOG_TYPE_DEBUG, "starting %@ with experiment %{public}@", buf, 0x16u);
    }

    v11 = [v6 experimentDatabase];
    v12 = [(TRIExperimentBaseTask *)v9 experiment];
    v55 = [v11 experimentRecordWithExperimentDeployment:v12];

    if (v55)
    {
      v52 = [v55 artifact];
    }

    else
    {
      v52 = 0;
    }

    v13 = [v6 keyValueStore];
    v54 = [TRIFetchDateManager managerWithKeyValueStore:v13];

    v14 = [v6 namespaceDatabase];
    v15 = [v6 paths];
    v16 = [v15 namespaceDescriptorsDefaultDir];
    v53 = [TRINamespaceDescriptorProvider providerWithNamespaceDatabase:v14 defaultDescriptorDirectoryPath:v16];

    v17 = [(TRITaskAttributing *)v9->_taskAttributing triCloudKitContainer];
    v18 = [(TRITaskAttributing *)v9->_taskAttributing teamIdentifier];
    v19 = [(TRITaskAttributing *)v9->_taskAttributing applicationBundleIdentifier];
    v51 = [TRICKNativeArtifactProvider providerForContainer:v17 teamId:v18 bundleId:v19 dateProvider:v54 namespaceDescriptorProvider:v53 serverContext:v6];

    v20 = [(TRITaskAttributing *)v9->_taskAttributing networkOptions];
    if ([v20 allowsCellularAccess])
    {
      v21 = [MEMORY[0x277D73B40] metricWithName:@"allows_cellular_download" integerValue:{objc_msgSend(v20, "allowsCellularAccess")}];
      [(TRIExperimentBaseTask *)v9 addMetric:v21];
    }

    if ([v20 discretionaryBehavior])
    {
      v22 = [(TRIBaseTask *)v9 stateProvider];
      v23 = [v22 activeActivityGrantingCapability:{objc_msgSend(v20, "requiredCapability")}];

      if (!v23)
      {
        v39 = TRILogCategory_Server();
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26F567000, v39, OS_LOG_TYPE_DEFAULT, "no xpc activity designated for discretionary operation, failing with retry", buf, 2u);
        }

        v8 = [TRITaskRunResult resultWithRunStatus:1 reportResultToServer:0 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
        goto LABEL_33;
      }

      [v20 setActivity:v23];
    }

    v24 = [[TRIFetchOptions alloc] initWithDownloadOptions:v20 cacheDeleteAvailableSpaceClass:&unk_287FC4CC0];
    v25 = dispatch_semaphore_create(0);
    v82 = 0;
    v83 = &v82;
    v84 = 0x2020000000;
    v85 = 2;
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v94 = __Block_byref_object_copy__47;
    v95 = __Block_byref_object_dispose__47;
    v96 = 0;
    v76 = 0;
    v77 = &v76;
    v78 = 0x3032000000;
    v79 = __Block_byref_object_copy__47;
    v80 = __Block_byref_object_dispose__47;
    v81 = 0;
    v70 = 0;
    v71 = &v70;
    v72 = 0x3032000000;
    v73 = __Block_byref_object_copy__47;
    v74 = __Block_byref_object_dispose__47;
    v75 = 0;
    v26 = [(TRIExperimentBaseTask *)v9 experiment];
    v61[0] = MEMORY[0x277D85DD0];
    v61[1] = 3221225472;
    v61[2] = __56__TRIFetchExperimentTask_runUsingContext_withTaskQueue___block_invoke;
    v61[3] = &unk_279DE3E90;
    v66 = &v82;
    v67 = buf;
    v68 = &v76;
    v69 = &v70;
    v62 = v52;
    v63 = v9;
    v64 = v6;
    v27 = v25;
    v65 = v27;
    [v51 fetchExperimentWithExperimentDeployment:v26 options:v24 completion:v61];

    dispatch_semaphore_wait(v27, 0xFFFFFFFFFFFFFFFFLL);
    v28 = TRILogCategory_Server();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
    {
      v45 = objc_opt_class();
      v46 = [(TRIExperimentBaseTask *)v9 experiment];
      v47 = [v46 shortDesc];
      v48 = *(v83 + 6);
      if (v48 >= 5)
      {
        v49 = [MEMORY[0x277CCACA8] stringWithFormat:@"(unknown: %i)", *(v83 + 6), v50];
      }

      else
      {
        v49 = off_279DE3EB0[v48];
      }

      *v87 = 138412802;
      v88 = v45;
      v89 = 2114;
      v90 = v47;
      v91 = 2114;
      v92 = v49;
      _os_log_debug_impl(&dword_26F567000, v28, OS_LOG_TYPE_DEBUG, "finished %@ with experiment %{public}@ - %{public}@", v87, 0x20u);
    }

    trialSystemTelemetry = v9->_trialSystemTelemetry;
    if (!trialSystemTelemetry)
    {
      v30 = objc_opt_new();
      v31 = v9->_trialSystemTelemetry;
      v9->_trialSystemTelemetry = v30;

      trialSystemTelemetry = v9->_trialSystemTelemetry;
    }

    [(TRITrialSystemTelemetry *)trialSystemTelemetry setClientDeploymentEnv:v71[5]];
    if (v77[5])
    {
      v9->wasDeferred = [TRICKNativeArtifactProvider isActivityDeferralError:?];
      v32 = TRIFetchErrorParseToMetrics(v77[5]);
      if ([v32 count])
      {
        v59 = 0u;
        v60 = 0u;
        v57 = 0u;
        v58 = 0u;
        v33 = v32;
        v34 = [v33 countByEnumeratingWithState:&v57 objects:v86 count:16];
        if (v34)
        {
          v35 = *v58;
          do
          {
            for (i = 0; i != v34; ++i)
            {
              if (*v58 != v35)
              {
                objc_enumerationMutation(v33);
              }

              [(TRIExperimentBaseTask *)v9 addMetric:*(*(&v57 + 1) + 8 * i)];
            }

            v34 = [v33 countByEnumeratingWithState:&v57 objects:v86 count:16];
          }

          while (v34);
        }
      }
    }

    v37 = *(v83 + 6);
    v38 = [(TRIFetchExperimentTask *)v9 _nextTasksForRunStatus:v37];
    v8 = [TRITaskRunResult resultWithRunStatus:v37 reportResultToServer:0 nextTasks:v38 earliestRetryDate:0];

    _Block_object_dispose(&v70, 8);
    _Block_object_dispose(&v76, 8);

    _Block_object_dispose(buf, 8);
    _Block_object_dispose(&v82, 8);

LABEL_33:
    objc_sync_exit(v9);

    goto LABEL_34;
  }

  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Skipping TRIFetchExperimentTask due to user opt-out of experiments", buf, 2u);
  }

  v8 = [TRITaskRunResult resultWithRunStatus:4 reportResultToServer:0 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
LABEL_34:

  v40 = *MEMORY[0x277D85DE8];

  return v8;
}

void __56__TRIFetchExperimentTask_runUsingContext_withTaskQueue___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v73 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (a2 != 4)
  {
    v33 = TRILogCategory_Server();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v70 = v11;
      _os_log_impl(&dword_26F567000, v33, OS_LOG_TYPE_DEFAULT, "error: %{public}@", buf, 0xCu);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a4);
    objc_storeStrong((*(*(a1 + 80) + 8) + 40), a5);
    goto LABEL_34;
  }

  if (!v9)
  {
    if (*(a1 + 32))
    {
      *(*(*(a1 + 64) + 8) + 24) = 2;
      v34 = TRIDeploymentEnvironment_EnumDescriptor();
      v35 = [v34 textFormatNameForValue:{objc_msgSend(*(a1 + 32), "deploymentEnvironment")}];
      v36 = *(*(a1 + 88) + 8);
      v37 = *(v36 + 40);
      *(v36 + 40) = v35;

      if (!*(*(*(a1 + 88) + 8) + 40))
      {
        v38 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%ld", objc_msgSend(*(a1 + 32), "deploymentEnvironment")];
        v39 = *(*(a1 + 88) + 8);
        v40 = *(v39 + 40);
        *(v39 + 40) = v38;
      }

      goto LABEL_34;
    }

    v41 = TRILogCategory_Server();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT))
    {
      v42 = [*(a1 + 40) experiment];
      v43 = [v42 shortDesc];
      *buf = 138543362;
      v70 = v43;
      _os_log_impl(&dword_26F567000, v41, OS_LOG_TYPE_DEFAULT, "no experiment artifact received for %{public}@", buf, 0xCu);
      goto LABEL_30;
    }

    goto LABEL_33;
  }

  v12 = TRIDeploymentEnvironment_EnumDescriptor();
  v13 = [v12 textFormatNameForValue:{objc_msgSend(v9, "deploymentEnvironment")}];
  v14 = *(*(a1 + 88) + 8);
  v15 = *(v14 + 40);
  *(v14 + 40) = v13;

  if (!*(*(*(a1 + 88) + 8) + 40))
  {
    v16 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%ld", objc_msgSend(v9, "deploymentEnvironment")];
    v17 = *(*(a1 + 88) + 8);
    v18 = *(v17 + 40);
    *(v17 + 40) = v16;
  }

  v19 = [v9 experimentId];

  if (!v19)
  {
    v41 = TRILogCategory_Server();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [*(a1 + 40) experiment];
      v43 = [v42 shortDesc];
      *buf = 138543362;
      v70 = v43;
      v44 = "artifact experiment id is nil in result for %{public}@";
      v45 = v41;
      v46 = 12;
LABEL_27:
      _os_log_error_impl(&dword_26F567000, v45, OS_LOG_TYPE_ERROR, v44, buf, v46);
LABEL_30:
    }

LABEL_33:

    *(*(*(a1 + 64) + 8) + 24) = 3;
    goto LABEL_34;
  }

  v20 = [*(a1 + 40) experiment];
  v21 = [v9 experimentDeployment];
  v22 = [v20 isEqualToDeployment:v21];

  if ((v22 & 1) == 0)
  {
    v41 = TRILogCategory_Server();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v42 = [*(a1 + 40) experiment];
      v43 = [v9 experimentDeployment];
      *buf = 138543618;
      v70 = v42;
      v71 = 2114;
      v72 = v43;
      v44 = "mismatch in experiment deployment: %{public}@ != %{public}@";
      v45 = v41;
      v46 = 22;
      goto LABEL_27;
    }

    goto LABEL_33;
  }

  v23 = [*(a1 + 48) experimentDatabase];
  v24 = [v9 hasNamespacesAvailableForExperimentWithDatabase:v23];

  if ((v24 & 1) == 0)
  {
    v41 = TRILogCategory_Server();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v57 = [v9 experimentDeployment];
      v58 = [v57 shortDesc];
      v59 = TRICloudKitSupport_NotificationType_EnumDescriptor();
      v60 = [v59 textFormatNameForValue:{objc_msgSend(v9, "experimentType")}];
      *buf = 138543618;
      v70 = v58;
      v71 = 2112;
      v72 = v60;
      _os_log_error_impl(&dword_26F567000, v41, OS_LOG_TYPE_ERROR, "No namespace available for deployment %{public}@ of type %@", buf, 0x16u);
    }

    goto LABEL_33;
  }

  v25 = [*(a1 + 48) namespaceDatabase];
  v63 = [[TRIUserCovariates alloc] initWithContext:*(a1 + 48)];
  [v9 namespaces];
  v64 = 0u;
  v65 = 0u;
  v66 = 0u;
  v26 = v67 = 0u;
  v27 = [v26 countByEnumeratingWithState:&v64 objects:v68 count:16];
  v28 = v26;
  if (v27)
  {
    v29 = v27;
    v30 = *v65;
LABEL_10:
    v31 = 0;
    while (1)
    {
      if (*v65 != v30)
      {
        objc_enumerationMutation(v26);
      }

      v32 = [v25 dynamicNamespaceRecordWithNamespaceName:*(*(&v64 + 1) + 8 * v31)];

      if (v32)
      {
        break;
      }

      if (v29 == ++v31)
      {
        v29 = [v26 countByEnumeratingWithState:&v64 objects:v68 count:16];
        if (v29)
        {
          goto LABEL_10;
        }

        v28 = v26;
        goto LABEL_37;
      }
    }

    v28 = [*(*(a1 + 40) + 40) applicationBundleIdentifier];

    if (!v28)
    {
      goto LABEL_38;
    }

    v48 = [MEMORY[0x277D73BE8] dimensionWithName:@"client_app_bundle_id" value:v28];
    [*(a1 + 40) addDimension:v48];
    v49 = [(TRIUserCovariates *)v63 tri_shortVersionStringForBundleId:v28];
    v50 = [MEMORY[0x277D73BE8] dimensionWithName:@"client_app_version" value:v49];
    [*(a1 + 40) addDimension:v50];
  }

LABEL_37:

LABEL_38:
  v51 = TRILogCategory_Server();
  if (os_log_type_enabled(v51, OS_LOG_TYPE_INFO))
  {
    v52 = [v9 experimentDeployment];
    *buf = 138412290;
    v70 = v52;
    _os_log_impl(&dword_26F567000, v51, OS_LOG_TYPE_INFO, "Saving artifact for deployment %@", buf, 0xCu);
  }

  v53 = [*(a1 + 48) experimentDatabase];
  v54 = [*(a1 + 48) paths];
  v55 = [v9 saveWithDatabase:v53 paths:v54];

  if ((v55 & 1) == 0)
  {
    v56 = TRILogCategory_Server();
    if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
    {
      v61 = [*(a1 + 40) experiment];
      v62 = [v61 shortDesc];
      *buf = 138543362;
      v70 = v62;
      _os_log_error_impl(&dword_26F567000, v56, OS_LOG_TYPE_ERROR, "could not save experiment %{public}@", buf, 0xCu);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
  }

LABEL_34:
  dispatch_semaphore_signal(*(a1 + 56));

  v47 = *MEMORY[0x277D85DE8];
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  v4 = [(TRIExperimentBaseTask *)self experiment];
  v5 = [v4 experimentId];
  [v3 setExperimentId:v5];

  v6 = [(TRIExperimentBaseTask *)self experiment];
  [v3 setDeploymentId:{objc_msgSend(v6, "deploymentId")}];

  v7 = [(TRITaskAttributing *)self->_taskAttributing asPersistedTaskAttribution];
  [v3 setTaskAttribution:v7];

  [v3 setRetryCount:{-[TRIFetchExperimentTask retryCount](self, "retryCount")}];

  return v3;
}

- (id)serialize
{
  v4 = [(TRIFetchExperimentTask *)self _asPersistedTask];
  v5 = [v4 data];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"TRIFetchExperimentTask.m" lineNumber:267 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return v5;
}

+ (id)parseFromData:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v28 = 0;
  v3 = [(TRIPBMessage *)TRIFetchExperimentPersistedTask parseFromData:a3 error:&v28];
  v4 = v28;
  if (!v3)
  {
    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
LABEL_25:
      v12 = 0;
      goto LABEL_26;
    }

    *buf = 138543362;
    v30 = v4;
    v14 = "Unable to parse buffer as TRIFetchExperimentPersistedTask: %{public}@";
    v15 = v8;
    v16 = 12;
LABEL_12:
    _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
    goto LABEL_25;
  }

  if (([v3 hasExperimentId] & 1) == 0)
  {
    v17 = TRILogCategory_Server();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v24 = objc_opt_class();
      v25 = NSStringFromClass(v24);
      *buf = 138412290;
      v30 = v25;
      _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: experimentId", buf, 0xCu);
    }

    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v18 = objc_opt_class();
    v19 = NSStringFromClass(v18);
    *buf = 138412290;
    v30 = v19;
    v20 = "Cannot decode message of type %@ with missing field: experimentId";
    goto LABEL_23;
  }

  v5 = [v3 experimentId];
  v6 = [v5 length];

  if (!v6)
  {
    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v21 = objc_opt_class();
    v19 = NSStringFromClass(v21);
    *buf = 138412290;
    v30 = v19;
    v20 = "Cannot decode message of type %@ with field of length 0: experimentId";
LABEL_23:
    _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, v20, buf, 0xCu);

    goto LABEL_25;
  }

  if (([v3 hasDeploymentId] & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v22 = objc_opt_class();
    v19 = NSStringFromClass(v22);
    *buf = 138412290;
    v30 = v19;
    v20 = "Cannot decode message of type %@ with missing field: deploymentId";
    goto LABEL_23;
  }

  if (([v3 hasTaskAttribution] & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    v23 = objc_opt_class();
    v19 = NSStringFromClass(v23);
    *buf = 138412290;
    v30 = v19;
    v20 = "Cannot decode message of type %@ with missing field: taskAttribution";
    goto LABEL_23;
  }

  if ([v3 deploymentId] == -1)
  {
    v8 = TRILogCategory_Server();
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_25;
    }

    *buf = 0;
    v14 = "TRIFetchExperimentPersistedTask encodes unspecified deploymentId.";
    v15 = v8;
    v16 = 2;
    goto LABEL_12;
  }

  v7 = [v3 taskAttribution];
  v8 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:v7];

  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x277D736C0]);
    v10 = [v3 experimentId];
    v11 = [v9 initWithExperimentId:v10 deploymentId:{objc_msgSend(v3, "deploymentId")}];

    v12 = [objc_opt_class() taskWithExperimentDeployment:v11 taskAttributing:v8];
    if ([v3 hasRetryCount])
    {
      v13 = [v3 retryCount];
    }

    else
    {
      v13 = 0;
    }

    [v12 setRetryCount:v13];
  }

  else
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "invalid de-serialized TRITaskAttribution pb message", buf, 2u);
    }

    v12 = 0;
  }

LABEL_26:
  v26 = *MEMORY[0x277D85DE8];

  return v12;
}

- (unint64_t)requiredCapabilities
{
  v3 = [(TRITaskAttributing *)self->_taskAttributing networkOptions];
  v4 = [v3 requiredCapability];

  if ([(TRIFetchExperimentTask *)self retryCount])
  {
    return v4 | 4;
  }

  else
  {
    return v4;
  }
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(TRIExperimentBaseTask *)self experiment];
  v6 = [v5 shortDesc];
  v7 = [v3 stringWithFormat:@"<%@:%@, r:%d>", v4, v6, -[TRIFetchExperimentTask retryCount](self, "retryCount")];

  return v7;
}

- (id)metrics
{
  v4.receiver = self;
  v4.super_class = TRIFetchExperimentTask;
  v2 = [(TRIExperimentBaseTask *)&v4 metrics];

  return v2;
}

- (id)dimensions
{
  v4.receiver = self;
  v4.super_class = TRIFetchExperimentTask;
  v2 = [(TRIExperimentBaseTask *)&v4 dimensions];

  return v2;
}

- (id)trialSystemTelemetry
{
  v7.receiver = self;
  v7.super_class = TRIFetchExperimentTask;
  v3 = [(TRIExperimentBaseTask *)&v7 trialSystemTelemetry];
  if (!v3)
  {
    v3 = objc_opt_new();
  }

  v4 = [(TRITaskAttributing *)self->_taskAttributing teamIdentifier];
  [v3 setClientTeamId:v4];

  if (self->_trialSystemTelemetry)
  {
    [v3 mergeFrom:?];
  }

  if (([v3 hasContainerOriginFields] & 1) == 0)
  {
    v5 = [TRITelemetryFactory containerOriginTelemetryForTaskAttribution:self->_taskAttributing];
    [v3 mergeFrom:v5];
  }

  return v3;
}

- (TRIFetchExperimentTask)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRIFetchExperimentTask;
  v5 = [(TRIFetchExperimentTask *)&v9 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pb"];
    if (v6)
    {
      v7 = [objc_opt_class() parseFromData:v6];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [MEMORY[0x277CCA890] currentHandler];
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFetchExperimentTask.m" lineNumber:343 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  v5 = [(TRIFetchExperimentTask *)self serialize];
  [v7 encodeObject:v5 forKey:@"pb"];
}

@end