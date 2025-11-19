@interface TRIMaintenanceTask
+ (id)parseFromData:(id)a3;
+ (id)task;
- (BOOL)_cleanupLocalTempStorageWithPaths:(id)a3;
- (BOOL)_cleanupTreatmentWithTreatmentId:(id)a3 paths:(id)a4;
- (BOOL)_cleanupUnusedContentWithContext:(id)a3 nextTasks:(id)a4;
- (TRIMaintenanceTask)init;
- (TRIMaintenanceTask)initWithCoder:(id)a3;
- (id)_asPersistedTask;
- (id)dimensions;
- (id)metrics;
- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4;
- (id)serialize;
- (id)trialSystemTelemetry;
- (void)_handleExpiredExperimentsWithExperimentDatabase:(id)a3 nextTasks:(id)a4;
- (void)_handleOrphanedNamespacesWithNamespaceDatabase:(id)a3 nextTasks:(id)a4;
- (void)_synchronizePushService:(id)a3 usingRolloutDatabase:(id)a4 experimentDatabase:(id)a5;
- (void)addDimension:(id)a3;
- (void)addMetric:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)mergeTelemetry:(id)a3;
@end

@implementation TRIMaintenanceTask

+ (id)task
{
  v2 = objc_opt_new();
  [v2 setRetryCount:0];

  return v2;
}

- (TRIMaintenanceTask)init
{
  v16.receiver = self;
  v16.super_class = TRIMaintenanceTask;
  v2 = [(TRIMaintenanceTask *)&v16 init];
  if (v2)
  {
    v3 = objc_opt_class();
    v4 = NSStringFromClass(v3);
    v5 = [v4 UTF8String];
    v6 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v7 = dispatch_queue_create(v5, v6);
    channelCleanupQueue = v2->_channelCleanupQueue;
    v2->_channelCleanupQueue = v7;

    v9 = objc_opt_new();
    v10 = v9[1];
    v9[1] = 0;

    v11 = v9[2];
    v9[2] = 0;

    v12 = v9[3];
    v9[3] = 0;

    v13 = [objc_alloc(MEMORY[0x277D425F8]) initWithGuardedData:v9];
    lock = v2->_lock;
    v2->_lock = v13;

    v2->_isFlatbufferReadEnabled = _os_feature_enabled_impl();
    v2->_isFlatbufferWriteEnabled = _os_feature_enabled_impl();
  }

  return v2;
}

- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4
{
  v104[12] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v59 = a4;
  v7 = objc_opt_new();
  v65 = self;
  v8 = [(TRIBaseTask *)self stateProvider];
  v9 = [v8 activeActivityDescriptorGrantingCapability:24];

  v97 = 0;
  v98 = &v97;
  v99 = 0x2020000000;
  v100 = 1;
  v61 = [TRITaskRunResult resultWithRunStatus:1 reportResultToServer:1 nextTasks:v7 earliestRetryDate:0];
  v10 = [TRIMaintenanceSubTask alloc];
  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 3221225472;
  v94[2] = __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke;
  v94[3] = &unk_279DE0080;
  v94[4] = v65;
  v11 = v6;
  v95 = v11;
  v12 = v7;
  v96 = v12;
  v66 = [(TRIMaintenanceSubTask *)v10 initWithName:@"Deactivate expired experiments" subtaskBlock:v94];
  v104[0] = v66;
  v13 = [TRIMaintenanceSubTask alloc];
  v91[0] = MEMORY[0x277D85DD0];
  v91[1] = 3221225472;
  v91[2] = __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_2;
  v91[3] = &unk_279DE0080;
  v91[4] = v65;
  v14 = v11;
  v92 = v14;
  v15 = v12;
  v93 = v15;
  v64 = [(TRIMaintenanceSubTask *)v13 initWithName:@"Deal with dynamic namespaces from uninstalled apps" subtaskBlock:v91];
  v104[1] = v64;
  v16 = [TRIMaintenanceSubTask alloc];
  v87[0] = MEMORY[0x277D85DD0];
  v87[1] = 3221225472;
  v87[2] = __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_3;
  v87[3] = &unk_279DE4BD8;
  v90 = &v97;
  v87[4] = v65;
  v17 = v14;
  v88 = v17;
  v60 = v15;
  v89 = v60;
  v63 = [(TRIMaintenanceSubTask *)v16 initWithName:@"Remove unused experiment info subtaskBlock:treatments, and assets", v87];
  v104[2] = v63;
  v18 = [TRIMaintenanceSubTask alloc];
  v85[0] = MEMORY[0x277D85DD0];
  v85[1] = 3221225472;
  v85[2] = __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_4;
  v85[3] = &unk_279DDF7A0;
  v85[4] = v65;
  v19 = v17;
  v86 = v19;
  v62 = [(TRIMaintenanceSubTask *)v18 initWithName:@"Synchronise push connections" subtaskBlock:v85];
  v104[3] = v62;
  v20 = [TRIMaintenanceSubTask alloc];
  v83[0] = MEMORY[0x277D85DD0];
  v83[1] = 3221225472;
  v83[2] = __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_5;
  v83[3] = &unk_279DDEEE0;
  v21 = v19;
  v84 = v21;
  v22 = [(TRIMaintenanceSubTask *)v20 initWithName:@"Expire old experiment history records" subtaskBlock:v83];
  v104[4] = v22;
  v23 = [TRIMaintenanceSubTask alloc];
  v81[0] = MEMORY[0x277D85DD0];
  v81[1] = 3221225472;
  v81[2] = __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_89;
  v81[3] = &unk_279DDEEE0;
  v24 = v21;
  v82 = v24;
  v25 = [(TRIMaintenanceSubTask *)v23 initWithName:@"Expire old rollout history records" subtaskBlock:v81];
  v104[5] = v25;
  v26 = [TRIMaintenanceSubTask alloc];
  v79[0] = MEMORY[0x277D85DD0];
  v79[1] = 3221225472;
  v79[2] = __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_93;
  v79[3] = &unk_279DDEEE0;
  v27 = v24;
  v80 = v27;
  v28 = [(TRIMaintenanceSubTask *)v26 initWithName:@"Compact the database" subtaskBlock:v79];
  v104[6] = v28;
  v29 = [TRIMaintenanceSubTask alloc];
  v77[0] = MEMORY[0x277D85DD0];
  v77[1] = 3221225472;
  v77[2] = __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_2_97;
  v77[3] = &unk_279DDEEE0;
  v30 = v27;
  v78 = v30;
  v31 = [(TRIMaintenanceSubTask *)v29 initWithName:@"Record daily active experiments" subtaskBlock:v77];
  v104[7] = v31;
  v32 = [TRIMaintenanceSubTask alloc];
  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_3_102;
  v75[3] = &unk_279DDEEE0;
  v33 = v30;
  v76 = v33;
  v34 = [(TRIMaintenanceSubTask *)v32 initWithName:@"Reload envvar-based factors in launchd" subtaskBlock:v75];
  v104[8] = v34;
  v35 = [TRIMaintenanceSubTask alloc];
  v73[0] = MEMORY[0x277D85DD0];
  v73[1] = 3221225472;
  v73[2] = __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_4_108;
  v73[3] = &unk_279DDEEE0;
  v36 = v33;
  v74 = v36;
  v37 = [(TRIMaintenanceSubTask *)v35 initWithName:@"Publish sysctl factors" subtaskBlock:v73];
  v104[9] = v37;
  v38 = [TRIMaintenanceSubTask alloc];
  v71[0] = MEMORY[0x277D85DD0];
  v71[1] = 3221225472;
  v71[2] = __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_5_113;
  v71[3] = &unk_279DDEEE0;
  v58 = v36;
  v72 = v58;
  v39 = [(TRIMaintenanceSubTask *)v38 initWithName:@"Clear experiment update Biome stream if opted-out" subtaskBlock:v71];
  v104[10] = v39;
  v40 = [[TRIMaintenanceSubTask alloc] initWithName:@"Prune obsolete events from Biome stream" subtaskBlock:&__block_literal_global_41];
  v104[11] = v40;
  v41 = [MEMORY[0x277CBEA60] arrayWithObjects:v104 count:12];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v42 = v41;
  v43 = [v42 countByEnumeratingWithState:&v67 objects:v103 count:16];
  if (v43)
  {
    v44 = *v68;
    while (2)
    {
      for (i = 0; i != v43; ++i)
      {
        if (*v68 != v44)
        {
          objc_enumerationMutation(v42);
        }

        v46 = *(*(&v67 + 1) + 8 * i);
        if (v9)
        {
          v47 = [v9 shouldDefer];
          v48 = v47[2]();

          if (v48)
          {
            v54 = TRILogCategory_Server();
            if (os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
            {
              v55 = [v46 name];
              *buf = 138412290;
              v102 = v55;
              _os_log_impl(&dword_26F567000, v54, OS_LOG_TYPE_DEFAULT, "Deferral requested during maintenance task before running subtask: %@", buf, 0xCu);
            }

            v65->wasDeferred = 1;
            v53 = v61;

            goto LABEL_19;
          }
        }

        v49 = TRILogCategory_Server();
        if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
        {
          v50 = [v46 name];
          *buf = 138412290;
          v102 = v50;
          _os_log_impl(&dword_26F567000, v49, OS_LOG_TYPE_DEFAULT, "Beginning maintenance subtask: %@", buf, 0xCu);
        }

        v51 = [v46 block];
        v51[2]();
      }

      v43 = [v42 countByEnumeratingWithState:&v67 objects:v103 count:16];
      if (v43)
      {
        continue;
      }

      break;
    }
  }

  if (*(v98 + 24))
  {
    v52 = 2;
  }

  else
  {
    v52 = 3;
  }

  v53 = [TRITaskRunResult resultWithRunStatus:v52 reportResultToServer:1 nextTasks:v60 earliestRetryDate:0];
LABEL_19:

  _Block_object_dispose(&v97, 8);
  v56 = *MEMORY[0x277D85DE8];

  return v53;
}

void __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) experimentDatabase];
  [v2 _handleExpiredExperimentsWithExperimentDatabase:v3 nextTasks:*(a1 + 48)];
}

void __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) namespaceDatabase];
  [v2 _handleOrphanedNamespacesWithNamespaceDatabase:v3 nextTasks:*(a1 + 48)];
}

void __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_3(uint64_t a1)
{
  *(*(*(a1 + 56) + 8) + 24) &= [*(a1 + 32) _cleanupUnusedContentWithContext:*(a1 + 40) nextTasks:*(a1 + 48)];
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) paths];
  *(*(*(a1 + 56) + 8) + 24) &= [v2 _cleanupLocalTempStorageWithPaths:v3];
}

void __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v5 = [*(a1 + 40) pushServiceMuxer];
  v3 = [*(a1 + 40) rolloutDatabase];
  v4 = [*(a1 + 40) experimentDatabase];
  [v2 _synchronizePushService:v5 usingRolloutDatabase:v3 experimentDatabase:v4];
}

void __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_5(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-15724800.0];
  v7 = 0;
  v3 = [*(a1 + 32) experimentHistoryDatabase];
  v4 = [v3 expireRecordsOlderThanDate:v2 deletedCount:&v7];

  if (v4)
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v9 = v7;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Expired %tu records from experiment history.", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_89(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceNow:-1814400.0];
  v7 = 0;
  v3 = [*(a1 + 32) rolloutHistoryDatabase];
  v4 = [v3 expireRecordsOlderThanDate:v2 deletedCount:&v7];

  if (v4)
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134217984;
      v9 = v7;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Expired %tu records from rollout history.", buf, 0xCu);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

void __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_93(uint64_t a1)
{
  v1 = [*(a1 + 32) underlyingDatabase];
  [v1 vacuum];
}

void __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_2_97(uint64_t a1)
{
  v1 = [[TRIActiveExperimentsMetricRecorder alloc] initWithServerContext:*(a1 + 32)];
  [(TRIActiveExperimentsMetricRecorder *)v1 recordMetric];
}

void __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_3_102(uint64_t a1)
{
  v2 = [[TRIActiveEnvVarFactorsPublisher alloc] initWithServerContext:*(a1 + 32)];
  [(TRIActiveEnvVarFactorsPublisher *)v2 publishLowLevelFactors];
  v1 = objc_opt_new();
  [v1 requestReloadLowLevelFactors];
}

void __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_4_108(uint64_t a1)
{
  v1 = [[TRIActiveSysctlFactorsPublisher alloc] initWithServerContext:*(a1 + 32)];
  [(TRIActiveSysctlFactorsPublisher *)v1 publishSysctlFactors];
}

uint64_t __52__TRIMaintenanceTask_runUsingContext_withTaskQueue___block_invoke_5_113(uint64_t a1)
{
  result = [TRIUserAdjustableSettings getExperimentOptOut:*(a1 + 32)];
  if (result)
  {

    return +[TRIBiomeExperimentUpdateStreamWriter clearExperimentUpdatesStream];
  }

  return result;
}

- (void)_handleExpiredExperimentsWithExperimentDatabase:(id)a3 nextTasks:(id)a4
{
  v27 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __80__TRIMaintenanceTask__handleExpiredExperimentsWithExperimentDatabase_nextTasks___block_invoke;
  v16 = &unk_279DE19B0;
  v8 = v7;
  v17 = v8;
  v18 = &v19;
  [v6 enumerateExperimentRecordsWithBlock:&v13];
  v9 = TRILogCategory_Server();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [(TRIBaseTask *)self taskName:v13];
    v11 = *(v20 + 6);
    *buf = 138543618;
    v24 = v10;
    v25 = 1024;
    v26 = v11;
    _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "%{public}@ scheduled deactivation of %u experiments", buf, 0x12u);
  }

  _Block_object_dispose(&v19, 8);
  v12 = *MEMORY[0x277D85DE8];
}

void __80__TRIMaintenanceTask__handleExpiredExperimentsWithExperimentDatabase_nextTasks___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 isExpiredExperiment])
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [v3 experimentDeployment];
      v6 = [v5 experimentId];
      v7 = [v3 treatmentId];
      v13 = 138543618;
      v14 = v6;
      v15 = 2112;
      v16 = v7;
      _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "scheduling deactivation of experiment %{public}@ with treatment %@", &v13, 0x16u);
    }

    v8 = [v3 experimentDeployment];
    v9 = [v8 experimentId];
    v10 = [v3 experimentDeployment];
    v11 = +[TRIDeactivateTreatmentTask taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:](TRIDeactivateTreatmentTask, "taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:", v9, [v10 deploymentId], 0, 2, 0);

    [*(a1 + 32) addObject:v11];
    ++*(*(*(a1 + 40) + 8) + 24);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (BOOL)_cleanupTreatmentWithTreatmentId:(id)a3 paths:(id)a4
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v7 = TRILogCategory_Server();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v13 = 138412290;
    v14 = v5;
    _os_log_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEFAULT, "Removing treatment %@.", &v13, 0xCu);
  }

  v8 = [[TRIClientTreatmentStorage alloc] initWithPaths:v6];
  v9 = [(TRIClientTreatmentStorage *)v8 removeTreatmentWithTreatmentId:v5];
  if (!v9)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v5;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Could not remove treatment %@.", &v13, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)_cleanupUnusedContentWithContext:(id)a3 nextTasks:(id)a4
{
  v165 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v126 = a4;
  v7 = [TRINamespaceResolverStorage alloc];
  v8 = [v6 paths];
  v9 = [(TRINamespaceResolverStorage *)v7 initWithPaths:v8];

  v159 = 0;
  v10 = [(TRINamespaceResolverStorage *)v9 removeUnreferencedRolloutDeploymentsWithServerContext:v6 removedCount:&v159];
  v130 = v6;
  if (v10)
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v162 = v159;
      _os_log_impl(&dword_26F567000, v11, OS_LOG_TYPE_DEFAULT, "Removed %u unreferenced rollout deployment dirs.", buf, 8u);
    }
  }

  v159 = 0;
  v12 = [(TRINamespaceResolverStorage *)v9 removeUnreferencedExperimentDeploymentsWithServerContext:v6 removedCount:&v159];
  if (v12)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v162 = v159;
      _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Removed %u unreferenced experiment deployment metadata dirs.", buf, 8u);
    }
  }

  v14 = v10 && v12;
  v159 = 0;
  v15 = [(TRINamespaceResolverStorage *)v9 removeUnneededPromotionsWithRemovedCount:&v159 removeAll:0];
  if (v15)
  {
    v16 = TRILogCategory_Server();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v162 = v159;
      _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "Removed %u unneeded promotion dirs.", buf, 8u);
    }
  }

  v17 = v14 & v15;

  v18 = [TRIFactorPackSetStorage alloc];
  v19 = v130;
  v20 = [v130 paths];
  v21 = [(TRIFactorPackSetStorage *)v18 initWithPaths:v20];

  v159 = 0;
  v22 = [(TRIFactorPackSetStorage *)v21 removeUnreferencedFactorPackSetsWithServerContext:v130 removedCount:&v159];
  if (v22)
  {
    v23 = TRILogCategory_Server();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v162 = v159;
      _os_log_impl(&dword_26F567000, v23, OS_LOG_TYPE_DEFAULT, "Removed %u unreferenced factor pack sets.", buf, 8u);
    }

    v19 = v130;
  }

  v24 = v17 & v22;

  v25 = [TRIFactorPackStorage alloc];
  v26 = [v19 paths];
  v27 = [(TRIFactorPackStorage *)v25 initWithPaths:v26];

  v159 = 0;
  v28 = [(TRIFactorPackStorage *)v27 removeUnreferencedFactorPacksWithRemovedCount:&v159];
  if (v28)
  {
    v29 = TRILogCategory_Server();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v162 = v159;
      _os_log_impl(&dword_26F567000, v29, OS_LOG_TYPE_DEFAULT, "Removed %u unreferenced factor packs.", buf, 8u);
    }

    v19 = v130;
  }

  v30 = v24 & v28;
  if (self->_isFlatbufferWriteEnabled)
  {
    v31 = [TRIFBFactorPackStorage alloc];
    v32 = [v19 paths];
    v33 = [(TRIFBFactorPackStorage *)v31 initWithPaths:v32];

    v158 = 0;
    v34 = [(TRIFBFactorPackStorage *)v33 removeUnreferencedFactorLevelsWithRemovedCount:&v158];
    v35 = TRILogCategory_Server();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109376;
      *v162 = v34;
      *&v162[4] = 1024;
      *&v162[6] = v158;
      _os_log_impl(&dword_26F567000, v35, OS_LOG_TYPE_DEFAULT, "Removing unreferenced factor levels with flatbuffer storage was %d with removed count as: %u", buf, 0xEu);
    }

    if (!v34)
    {
      v36 = TRILogCategory_Server();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26F567000, v36, OS_LOG_TYPE_ERROR, "Unable to remove unreferenced factor levels from factor levels storage", buf, 2u);
      }
    }

    if (v159 != v158)
    {
      v37 = TRILogCategory_Server();
      if (os_log_type_enabled(v37, OS_LOG_TYPE_INFO))
      {
        *buf = 67109376;
        *v162 = v159;
        *&v162[4] = 1024;
        *&v162[6] = v158;
        _os_log_impl(&dword_26F567000, v37, OS_LOG_TYPE_INFO, "Counts for removed unreferenced factor levels dont match, pb:%d fp:%d", buf, 0xEu);
      }
    }

    v30 &= !self->_isFlatbufferReadEnabled || v34;

    v19 = v130;
  }

  v38 = [TRINamespaceDescriptorSetStorage alloc];
  v39 = [v19 paths];
  v40 = [(TRINamespaceDescriptorSetStorage *)v38 initWithPaths:v39];

  v41 = v130;
  v159 = 0;
  v42 = [(TRINamespaceDescriptorSetStorage *)v40 removeUnreferencedNamespaceDescriptorSetsWithServerContext:v130 removedCount:&v159];
  if (v42)
  {
    v43 = TRILogCategory_Server();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v162 = v159;
      _os_log_impl(&dword_26F567000, v43, OS_LOG_TYPE_DEFAULT, "Removed %u unreferenced namespace descriptor sets.", buf, 8u);
    }

    v41 = v130;
  }

  v44 = [TRIClientTreatmentStorage alloc];
  v45 = [v41 paths];
  v46 = [(TRIClientTreatmentStorage *)v44 initWithPaths:v45];

  v159 = 0;
  v47 = [(TRIClientTreatmentStorage *)v46 removeUnreferencedTreatmentsWithRemovedCount:&v159];
  if (v47)
  {
    v48 = TRILogCategory_Server();
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      *v162 = v159;
      _os_log_impl(&dword_26F567000, v48, OS_LOG_TYPE_DEFAULT, "Removed %u unreferenced treatments.", buf, 8u);
    }
  }

  v49 = objc_opt_new();
  v50 = [v130 contentTracker];
  v156[0] = MEMORY[0x277D85DD0];
  v156[1] = 3221225472;
  v156[2] = __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke;
  v156[3] = &unk_279DE4C00;
  v51 = v49;
  v157 = v51;
  v52 = v47 & v42 & [v50 enumerateTrackedItemsWithBlock:v156] & v30;

  v154 = 0u;
  v155 = 0u;
  v152 = 0u;
  v153 = 0u;
  v53 = v51;
  v128 = v53;
  v131 = [v53 countByEnumeratingWithState:&v152 objects:v164 count:16];
  if (!v131)
  {
    v56 = v130;
    goto LABEL_82;
  }

  v125 = a2;
  v54 = *v153;
  v55 = 0x279DDD000uLL;
  v56 = v130;
  v129 = *v153;
  do
  {
    for (i = 0; i != v131; ++i)
    {
      if (*v153 != v54)
      {
        objc_enumerationMutation(v53);
      }

      v58 = *(*(&v152 + 1) + 8 * i);
      v59 = objc_autoreleasePoolPush();
      v60 = [*(v55 + 3168) decodeContentIdentifier:v58];
      v61 = v60;
      if (v60)
      {
        v52 = v52 & (v60 != 0);
        v62 = [v60 type];
        if (v62 == 2)
        {
          v63 = [v61 rollout];
          if (!v63)
          {
            v85 = [MEMORY[0x277CCA890] currentHandler];
            [v85 handleFailureInMethod:v125 object:self file:@"TRIMaintenanceTask.m" lineNumber:622 description:{@"Invalid parameter not satisfying: %@", @"rolloutDeployment"}];
          }

          v74 = [v56 contentTracker];
          [v74 clearRefsWithContentIdentifier:v58];

          v75 = [v56 rolloutDatabase];
          v76 = [v75 removeRecordWithDeployment:v63 usingRefCounting:1];

          v77 = v76 == 0;
          v56 = v130;
          if (v77)
          {
            v52 = 0;
          }

          v55 = 0x279DDD000;
          goto LABEL_77;
        }

        if (v62 == 1)
        {
          v63 = [v61 treatment];
          if (!v63)
          {
            v84 = [MEMORY[0x277CCA890] currentHandler];
            [v84 handleFailureInMethod:v125 object:self file:@"TRIMaintenanceTask.m" lineNumber:602 description:{@"Invalid parameter not satisfying: %@", @"desc"}];

            v53 = v128;
          }

          v70 = [v56 paths];
          if (v70)
          {
            v71 = [v63 treatmentId];
            v72 = [(TRIMaintenanceTask *)self _cleanupTreatmentWithTreatmentId:v71 paths:v70];

            if (!v72)
            {
              v73 = 0;
              v56 = v130;
LABEL_73:
              v55 = 0x279DDD000;
              v52 &= v73;

              v54 = v129;
              goto LABEL_77;
            }
          }

          else
          {
            v78 = TRILogCategory_Server();
            if (os_log_type_enabled(v78, OS_LOG_TYPE_DEFAULT))
            {
              v79 = [v63 container];
              v80 = [v79 identifier];
              *buf = 138543362;
              *v162 = v80;
              _os_log_impl(&dword_26F567000, v78, OS_LOG_TYPE_DEFAULT, "Not removing treatment from missing app container: %{public}@", buf, 0xCu);
            }

            v53 = v128;
          }

          v56 = v130;
          v81 = [v130 contentTracker];
          [v81 clearRefsWithContentIdentifier:v58];

          v73 = 1;
          goto LABEL_73;
        }

        if (v62)
        {
          goto LABEL_78;
        }

        v63 = [v61 experiment];
        if (!v63)
        {
          v86 = [MEMORY[0x277CCA890] currentHandler];
          [v86 handleFailureInMethod:v125 object:self file:@"TRIMaintenanceTask.m" lineNumber:558 description:{@"Invalid parameter not satisfying: %@", @"experimentDeployment"}];
        }

        v64 = [v56 experimentDatabase];
        v65 = [v64 experimentRecordWithExperimentDeployment:v63];

        if (v65)
        {
          if ([v65 status] != 4 || objc_msgSend(v65, "isExpiredExperiment"))
          {
            v66 = [v56 contentTracker];
            [v66 clearRefsWithContentIdentifier:v58];

            v67 = [v56 experimentDatabase];
            v68 = [v67 removeExperimentRecordWithExperimentDeployment:v63];

            if (!v68)
            {
              v52 = 0;
            }
          }

          v69 = [v56 limitedCarryManager];
          [v69 removeProfileForExperiment:v63];
        }

        else
        {
          v69 = TRILogCategory_Server();
          if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
          {
            v82 = [v63 experimentId];
            v83 = [v63 deploymentId];
            *buf = 138543618;
            *v162 = v82;
            *&v162[8] = 1024;
            v163 = v83;
            _os_log_error_impl(&dword_26F567000, v69, OS_LOG_TYPE_ERROR, "Could not find experiment record for experiment deployment with experiment id: %{public}@ & deployment id:  %d", buf, 0x12u);
          }
        }

        v53 = v128;
        v54 = v129;
      }

      else
      {
        v63 = [v56 contentTracker];
        [v63 clearRefsWithContentIdentifier:v58];
        v52 = 0;
      }

LABEL_77:

LABEL_78:
      objc_autoreleasePoolPop(v59);
    }

    v131 = [v53 countByEnumeratingWithState:&v152 objects:v164 count:16];
  }

  while (v131);
LABEL_82:

  v87 = [TRIAssetStoreDatabase alloc];
  v88 = [v56 paths];
  v132 = [(TRIAssetStoreDatabase *)v87 initWithPaths:v88 storageManagement:0];

  v89 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v150[0] = MEMORY[0x277D85DD0];
  v150[1] = 3221225472;
  v150[2] = __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke_149;
  v150[3] = &unk_279DDEF30;
  v90 = v89;
  v151 = v90;
  [(TRIAssetStoreDatabase *)v132 enumerateOnDiskMAReferencesWithoutCorrespondingDatabaseEntriesUsingBlock:v150];
  v91 = objc_alloc(MEMORY[0x277D73690]);
  [v56 paths];
  v93 = v92 = v56;
  v94 = [v91 initWithPaths:v93 factorsState:0];

  v95 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v96 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v97 = [v92 rolloutDatabase];
  v145[0] = MEMORY[0x277D85DD0];
  v145[1] = 3221225472;
  v145[2] = __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke_2;
  v145[3] = &unk_279DE4C50;
  v146 = v94;
  v147 = v90;
  v148 = v96;
  v149 = v95;
  v98 = v95;
  v99 = v96;
  v100 = v90;
  v101 = v94;
  [v97 enumerateActiveRecordsUsingTransaction:0 block:v145];

  v102 = [TRIFactorPackSetStorage alloc];
  v103 = [v92 paths];
  v104 = [(TRIFactorPackSetStorage *)v102 initWithPaths:v103];

  v142[0] = MEMORY[0x277D85DD0];
  v142[1] = 3221225472;
  v142[2] = __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke_155;
  v142[3] = &unk_279DE4C78;
  v105 = v126;
  v143 = v105;
  v144 = v104;
  v106 = v104;
  [v99 enumerateObjectsUsingBlock:v142];
  v107 = [TRIFactorPackStorage alloc];
  v108 = [v92 paths];
  v109 = [(TRIFactorPackStorage *)v107 initWithPaths:v108];

  v140[0] = MEMORY[0x277D85DD0];
  v140[1] = 3221225472;
  v140[2] = __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke_159;
  v140[3] = &unk_279DDF658;
  v141 = v109;
  v110 = v109;
  [v98 enumerateKeysAndObjectsUsingBlock:v140];

  v111 = objc_opt_new();
  v112 = [v92 paths];
  [v111 addObject:v112];

  v113 = [v92 namespaceDatabase];
  v137[0] = MEMORY[0x277D85DD0];
  v137[1] = 3221225472;
  v137[2] = __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke_161;
  v137[3] = &unk_279DE4CA0;
  v114 = v92;
  v138 = v114;
  v115 = v111;
  v139 = v115;
  v116 = v52 & [v113 enumerateDynamicNamespaceRecordsWithBlock:v137];

  v135 = 0u;
  v136 = 0u;
  v133 = 0u;
  v134 = 0u;
  v117 = v115;
  v118 = [v117 countByEnumeratingWithState:&v133 objects:v160 count:16];
  if (v118)
  {
    v119 = v118;
    v120 = *v134;
    do
    {
      for (j = 0; j != v119; ++j)
      {
        if (*v134 != v120)
        {
          objc_enumerationMutation(v117);
        }

        v122 = [[TRIAssetStore alloc] initWithPaths:*(*(&v133 + 1) + 8 * j)];
        v116 &= [(TRIAssetStore *)v122 collectGarbageOlderThanNumScans:2 deletedAssetSize:0];
      }

      v119 = [v117 countByEnumeratingWithState:&v133 objects:v160 count:16];
    }

    while (v119);
  }

  v123 = *MEMORY[0x277D85DE8];
  return v116 & 1;
}

void __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = a2;
  if (a3 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = [v5 str];
      v11 = 138543618;
      v12 = v7;
      v13 = 2048;
      v14 = a3;
      _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "%{public}@: refCount %lld", &v11, 0x16u);
    }

    if (a3 <= 0)
    {
      if (a3 < 0)
      {
        notify_post("com.apple.trial.MaintenanceFoundNegativeRefcount");
        v8 = TRILogCategory_Server();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          v10 = [v5 str];
          v11 = 134218242;
          v12 = a3;
          v13 = 2114;
          v14 = v10;
          _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "refCount went negative (%lld) for content identifier %{public}@", &v11, 0x16u);
        }
      }

      [*(a1 + 32) addObject:v5];
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke_2(uint64_t a1, void *a2)
{
  v32 = *MEMORY[0x277D85DE8];
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v19 = a2;
  obj = [v19 namespaces];
  v3 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v24;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v24 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v23 + 1) + 8 * i);
        v8 = [*(a1 + 32) factorPackIdForRolloutWithNamespaceName:v7];
        if (v8)
        {
          v9 = *(a1 + 40);
          v21[0] = MEMORY[0x277D85DD0];
          v21[1] = 3221225472;
          v21[2] = __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke_3;
          v21[3] = &unk_279DE4C28;
          v10 = v8;
          v22 = v10;
          v11 = [v9 _pas_filteredSetWithTest:v21];
          v12 = [v11 count];

          if (v12)
          {
            v13 = TRILogCategory_Server();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
            {
              v15 = [v19 deployment];
              v16 = [v15 rolloutId];
              v17 = [v19 deployment];
              v18 = [v17 deploymentId];
              *buf = 138543618;
              v28 = v16;
              v29 = 1024;
              v30 = v18;
              _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Rollout %{public}@.%d contains maRefs file without DB reference.", buf, 0x12u);
            }

            [*(a1 + 48) addObject:v19];
            [*(a1 + 56) setValue:v10 forKey:v7];

            goto LABEL_15;
          }
        }
      }

      v4 = [obj countByEnumeratingWithState:&v23 objects:v31 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v14 = *MEMORY[0x277D85DE8];
}

void __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke_155(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 deployment];
  v6 = [v5 rolloutId];
  v7 = [TRIDisenrollRolloutTask taskWithRolloutId:v6 triggerEvent:3];
  [v4 addObject:v7];

  v8 = [v3 activeFactorPackSetId];

  if (v8)
  {
    v9 = *(a1 + 40);
    v10 = [v3 activeFactorPackSetId];
    v11 = [v9 pathForFactorPackSetWithId:v10];

    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v18 = 0;
    v13 = [v12 removeItemAtPath:v11 error:&v18];
    v14 = v18;

    if ((v13 & 1) == 0)
    {
      v15 = TRILogCategory_Server();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
      {
        v17 = [v3 activeFactorPackSetId];
        *buf = 138543874;
        v20 = v17;
        v21 = 2114;
        v22 = v11;
        v23 = 2114;
        v24 = v14;
        _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Unable to cleanup factor pack set %{public}@ at %{public}@: %{public}@", buf, 0x20u);
      }
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke_159(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TRIValidateFactorPackId();
  if (v4)
  {
    v5 = [*(a1 + 32) pathForFactorPackWithId:v4 namespaceName:v3];
    v6 = [*(a1 + 32) legacyPathForFactorPackWithId:v4 namespaceName:v3];
    v7 = v6;
    if (v5)
    {
      v8 = [MEMORY[0x277CCAA00] defaultManager];
      v17 = 0;
      v9 = [v8 removeItemAtPath:v5 error:&v17];
      v10 = v17;

      if ((v9 & 1) == 0)
      {
        v11 = TRILogCategory_Server();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v19 = v4;
          v20 = 2114;
          v21 = v5;
          v22 = 2114;
          v23 = v10;
          _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Unable to cleanup factor pack %{public}@ at %{public}@: %{public}@", buf, 0x20u);
        }
      }

      if (!v7)
      {
        goto LABEL_14;
      }
    }

    else
    {
      v10 = 0;
      if (!v6)
      {
LABEL_14:

        goto LABEL_15;
      }
    }

    v12 = [MEMORY[0x277CCAA00] defaultManager];
    v16 = 0;
    v13 = [v12 removeItemAtPath:v7 error:&v16];
    v10 = v16;

    if ((v13 & 1) == 0)
    {
      v14 = TRILogCategory_Server();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v19 = v4;
        v20 = 2114;
        v21 = v7;
        v22 = 2114;
        v23 = v10;
        _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Unable to cleanup legacy factor pack %{public}@ at %{public}@: %{public}@", buf, 0x20u);
      }
    }

    goto LABEL_14;
  }

LABEL_15:

  v15 = *MEMORY[0x277D85DE8];
}

void __65__TRIMaintenanceTask__cleanupUnusedContentWithContext_nextTasks___block_invoke_161(uint64_t a1, void *a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [*(a1 + 32) paths];
  if (v4)
  {
    [*(a1 + 40) addObject:v4];
  }

  else
  {
    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = [v3 appContainer];
      v7 = [v6 identifier];
      v9 = 138543362;
      v10 = v7;
      _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "Not GC'ing AssetStore in missing app container: %{public}@", &v9, 0xCu);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)_handleOrphanedNamespacesWithNamespaceDatabase:(id)a3 nextTasks:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v30[0] = MEMORY[0x277D85DD0];
  v30[1] = 3221225472;
  v30[2] = __79__TRIMaintenanceTask__handleOrphanedNamespacesWithNamespaceDatabase_nextTasks___block_invoke;
  v30[3] = &unk_279DDF748;
  v6 = v5;
  v31 = v6;
  [v4 enumerateDynamicNamespaceRecordsWithBlock:v30];
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v7 = v6;
  v8 = [v7 countByEnumeratingWithState:&v26 objects:v36 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v27;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v27 != v11)
        {
          objc_enumerationMutation(v7);
        }

        v13 = *(*(&v26 + 1) + 8 * i);
        v14 = [v13 name];
        v15 = [v4 removeDynamicNamespaceRecordWithNamespaceName:v14];

        v16 = TRILogCategory_Server();
        v17 = v16;
        if (v15)
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [v13 name];
            v19 = [v13 appContainer];
            v20 = [v19 identifier];
            *buf = 138543618;
            v33 = v18;
            v34 = 2114;
            v35 = v20;
            _os_log_impl(&dword_26F567000, v17, OS_LOG_TYPE_DEFAULT, "removed dynamic namespace %{public}@ registered to app container %{public}@", buf, 0x16u);
          }

          ++v10;
        }

        else
        {
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v21 = [v13 name];
            *buf = 138543362;
            v33 = v21;
            _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Unable to deregister namespace %{public}@", buf, 0xCu);
          }
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v26 objects:v36 count:16];
    }

    while (v9);
  }

  else
  {
    v10 = 0;
  }

  v22 = TRILogCategory_Server();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = [(TRIBaseTask *)self taskName];
    *buf = 138543618;
    v33 = v23;
    v34 = 1024;
    LODWORD(v35) = v10;
    _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEFAULT, "%{public}@ deregistered %u dynamic namespaces", buf, 0x12u);
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __79__TRIMaintenanceTask__handleOrphanedNamespacesWithNamespaceDatabase_nextTasks___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  v3 = [v5 appContainer];
  v4 = v3;
  if (v3 && [v3 fetchStatus] == 2)
  {
    [*(a1 + 32) addObject:v5];
  }
}

- (BOOL)_cleanupLocalTempStorageWithPaths:(id)a3
{
  v3 = [a3 localTempDir];
  v4 = [TRITempDirScopeGuard ifUnreferencedCleanupPath:v3];

  return v4;
}

- (void)_synchronizePushService:(id)a3 usingRolloutDatabase:(id)a4 experimentDatabase:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = a4;
  v11 = objc_opt_new();
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __86__TRIMaintenanceTask__synchronizePushService_usingRolloutDatabase_experimentDatabase___block_invoke;
  v25[3] = &unk_279DE0700;
  v12 = v11;
  v26 = v12;
  [v10 enumerateActiveRecordsUsingTransaction:0 block:v25];

  v13 = objc_opt_new();
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __86__TRIMaintenanceTask__synchronizePushService_usingRolloutDatabase_experimentDatabase___block_invoke_2;
  v23[3] = &unk_279DE0728;
  v14 = v13;
  v24 = v14;
  [v9 enumerateActiveExperimentRecordsWithBlock:v23];

  channelCleanupQueue = self->_channelCleanupQueue;
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __86__TRIMaintenanceTask__synchronizePushService_usingRolloutDatabase_experimentDatabase___block_invoke_3;
  block[3] = &unk_279DE0080;
  v20 = v8;
  v21 = v12;
  v22 = v14;
  v16 = v14;
  v17 = v12;
  v18 = v8;
  dispatch_async(channelCleanupQueue, block);
}

void __86__TRIMaintenanceTask__synchronizePushService_usingRolloutDatabase_experimentDatabase___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 deployment];
  [v2 addObject:v3];
}

void __86__TRIMaintenanceTask__synchronizePushService_usingRolloutDatabase_experimentDatabase___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v4 = [a2 experimentDeployment];
  v3 = [v4 experimentId];
  [v2 addObject:v3];
}

- (void)addMetric:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __32__TRIMaintenanceTask_addMetric___block_invoke;
  v7[3] = &unk_279DE4CC8;
  v8 = v4;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

uint64_t __32__TRIMaintenanceTask_addMetric___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[1];
  if (!v3)
  {
    v5 = a2;
    v6 = objc_opt_new();
    v7 = a2[1];
    a2[1] = v6;

    v3 = a2[1];
  }

  v8 = *(a1 + 32);

  return [v3 addObject:v8];
}

- (void)addDimension:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __35__TRIMaintenanceTask_addDimension___block_invoke;
  v7[3] = &unk_279DE4CC8;
  v8 = v4;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

uint64_t __35__TRIMaintenanceTask_addDimension___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2[2];
  if (!v3)
  {
    v5 = a2;
    v6 = objc_opt_new();
    v7 = a2[2];
    a2[2] = v6;

    v3 = a2[2];
  }

  v8 = *(a1 + 32);

  return [v3 addObject:v8];
}

- (void)mergeTelemetry:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__TRIMaintenanceTask_mergeTelemetry___block_invoke;
  v7[3] = &unk_279DE4CC8;
  v8 = v4;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

void __37__TRIMaintenanceTask_mergeTelemetry___block_invoke(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = v6[3];
  if (v3)
  {
    [v3 mergeFrom:*(a1 + 32)];
  }

  else
  {
    v4 = [*(a1 + 32) copy];
    v5 = v6[3];
    v6[3] = v4;
  }
}

- (id)metrics
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__54;
  v10 = __Block_byref_object_dispose__54;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __29__TRIMaintenanceTask_metrics__block_invoke;
  v5[3] = &unk_279DE4CF0;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

void *__29__TRIMaintenanceTask_metrics__block_invoke(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 8);
  if (result)
  {
    v4 = [result copy];
    v5 = *(*(a1 + 32) + 8);
    v6 = *(v5 + 40);
    *(v5 + 40) = v4;

    return MEMORY[0x2821F96F8]();
  }

  return result;
}

- (id)dimensions
{
  v3 = objc_autoreleasePoolPush();
  v4 = objc_opt_new();
  lock = self->_lock;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __32__TRIMaintenanceTask_dimensions__block_invoke;
  v8[3] = &unk_279DE4CC8;
  v6 = v4;
  v9 = v6;
  [(_PASLock *)lock runWithLockAcquired:v8];

  objc_autoreleasePoolPop(v3);

  return v6;
}

uint64_t __32__TRIMaintenanceTask_dimensions__block_invoke(uint64_t result, uint64_t a2)
{
  if (*(a2 + 16))
  {
    return [*(result + 32) addObjectsFromArray:?];
  }

  return result;
}

- (id)trialSystemTelemetry
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x3032000000;
  v10 = __Block_byref_object_copy__54;
  v11 = __Block_byref_object_dispose__54;
  v12 = objc_alloc_init(MEMORY[0x277D73BE0]);
  lock = self->_lock;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __42__TRIMaintenanceTask_trialSystemTelemetry__block_invoke;
  v6[3] = &unk_279DE4CF0;
  v6[4] = &v7;
  [(_PASLock *)lock runWithLockAcquired:v6];
  v4 = [v8[5] copy];
  _Block_object_dispose(&v7, 8);

  return v4;
}

uint64_t __42__TRIMaintenanceTask_trialSystemTelemetry__block_invoke(uint64_t result, uint64_t a2)
{
  if (*(a2 + 24))
  {
    return [*(*(*(result + 32) + 8) + 40) mergeFrom:?];
  }

  return result;
}

- (id)_asPersistedTask
{
  v2 = objc_opt_new();

  return v2;
}

- (id)serialize
{
  v4 = [(TRIMaintenanceTask *)self _asPersistedTask];
  v5 = [v4 data];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"TRIMaintenanceTask.m" lineNumber:869 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return v5;
}

+ (id)parseFromData:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v10 = 0;
  v3 = [(TRIPBMessage *)TRIMaintenancePersistedTask parseFromData:a3 error:&v10];
  v4 = v10;
  if (v3)
  {
    v5 = objc_opt_new();
    if ([v3 hasRetryCount])
    {
      v6 = [v3 retryCount];
    }

    else
    {
      v6 = 0;
    }

    [v5 setRetryCount:v6];
  }

  else
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v12 = v4;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRIMaintenancePersistedTask: %{public}@", buf, 0xCu);
    }

    v5 = 0;
  }

  v8 = *MEMORY[0x277D85DE8];

  return v5;
}

- (TRIMaintenanceTask)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRIMaintenanceTask;
  v5 = [(TRIMaintenanceTask *)&v9 init];
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
    [v6 handleFailureInMethod:a2 object:self file:@"TRIMaintenanceTask.m" lineNumber:887 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  v5 = [(TRIMaintenanceTask *)self serialize];
  [v7 encodeObject:v5 forKey:@"pb"];
}

@end