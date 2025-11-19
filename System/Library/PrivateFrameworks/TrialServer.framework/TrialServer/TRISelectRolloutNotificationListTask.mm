@interface TRISelectRolloutNotificationListTask
+ (id)parseFromData:(id)a3;
+ (id)taskWithNamespaceNames:(id)a3 taskAttribution:(id)a4;
- ($A5A652246548B43F8BC05201A1C72A70)_processRolloutArtifact:(id)a3 rolloutsProcessed:(id)a4 remainingNamespaces:(id)a5 targeter:(id)a6 context:(id)a7 taskQueue:(id)a8;
- (BOOL)isEqual:(id)a3;
- (NSArray)tags;
- (NSString)description;
- (TRISelectRolloutNotificationListTask)initWithCoder:(id)a3;
- (TRISelectRolloutNotificationListTask)initWithNamespaceNames:(id)a3 taskAttribution:(id)a4;
- (id)_asPersistedTask;
- (id)dimensions;
- (id)metrics;
- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4;
- (id)serialize;
- (id)trialSystemTelemetry;
- (unint64_t)hash;
- (unint64_t)requiredCapabilities;
- (void)_addDimension:(id)a3;
- (void)_addMetric:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRISelectRolloutNotificationListTask

- (NSArray)tags
{
  v3 = objc_opt_new();
  [TRITaskUtils addAttribution:self->_taskAttribution toTaskTags:v3];

  return v3;
}

+ (id)taskWithNamespaceNames:(id)a3 taskAttribution:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = [[TRISelectRolloutNotificationListTask alloc] initWithNamespaceNames:v6 taskAttribution:v5];

  return v7;
}

- (TRISelectRolloutNotificationListTask)initWithNamespaceNames:(id)a3 taskAttribution:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = TRISelectRolloutNotificationListTask;
  v9 = [(TRISelectRolloutNotificationListTask *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_namespaceNames, a3);
    objc_storeStrong(&v10->_taskAttribution, a4);
    v11 = objc_opt_new();
    nextTasks = v10->_nextTasks;
    v10->_nextTasks = v11;

    v13 = objc_alloc(MEMORY[0x277D425F8]);
    v14 = objc_opt_new();
    v15 = [v13 initWithGuardedData:v14];
    lock = v10->_lock;
    v10->_lock = v15;
  }

  return v10;
}

- ($A5A652246548B43F8BC05201A1C72A70)_processRolloutArtifact:(id)a3 rolloutsProcessed:(id)a4 remainingNamespaces:(id)a5 targeter:(id)a6 context:(id)a7 taskQueue:(id)a8
{
  v129 = *MEMORY[0x277D85DE8];
  v15 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v104 = a7;
  v103 = a8;
  v102 = objc_autoreleasePoolPush();
  v119[0] = MEMORY[0x277D85DD0];
  v119[1] = 3221225472;
  v119[2] = __129__TRISelectRolloutNotificationListTask__processRolloutArtifact_rolloutsProcessed_remainingNamespaces_targeter_context_taskQueue___block_invoke;
  v119[3] = &unk_279DE4DB0;
  v19 = v17;
  v120 = v19;
  v20 = MEMORY[0x2743948D0](v119);
  v21 = [v15 deployment];
  v22 = [v21 rolloutId];
  LODWORD(a7) = [v16 containsObject:v22];

  if (a7)
  {
    v23 = TRILogCategory_Server();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
    {
      v24 = [v21 shortDesc];
      v25 = [v21 rolloutId];
      _NamespaceNamesForArtifact(v15);
      v26 = v20;
      v27 = v19;
      v29 = v28 = v18;
      *buf = 138543874;
      v124 = v24;
      v125 = 2114;
      v126 = v25;
      v127 = 2114;
      v128 = v29;
      _os_log_impl(&dword_26F567000, v23, OS_LOG_TYPE_INFO, "Ignoring rollout deployment %{public}@ because rolloutId %{public}@ has already been processed for namespaces %{public}@.", buf, 0x20u);

      v18 = v28;
      v19 = v27;
      v20 = v26;
    }

    v30.var0 = v20[2](v20);
    v31 = v102;
    goto LABEL_61;
  }

  v100 = self;
  v116[0] = MEMORY[0x277D85DD0];
  v116[1] = 3221225472;
  v116[2] = __129__TRISelectRolloutNotificationListTask__processRolloutArtifact_rolloutsProcessed_remainingNamespaces_targeter_context_taskQueue___block_invoke_45;
  v116[3] = &unk_279DE4DD8;
  v117 = v16;
  v32 = v19;
  v118 = v32;
  v101 = MEMORY[0x2743948D0](v116);
  v114 = 0;
  v115 = 0;
  v113 = 0;
  v33 = [v15 rollout];
  v34 = [v18 targetRollout:v33 factorPackSetId:&v115 relatedRampDeployment:&v114 error:&v113];

  if (v34 != 3)
  {
    if (v34 != 2)
    {
      if (!v34)
      {
        v94 = v20;
        v95 = v16;
        v97 = v18;
        v111 = 0u;
        v112 = 0u;
        v109 = 0u;
        v110 = 0u;
        v35 = [(TRISelectRolloutNotificationListTask *)v100 metrics];
        v36 = [v35 countByEnumeratingWithState:&v109 objects:v122 count:16];
        if (v36)
        {
          v37 = v36;
          v38 = *v110;
          while (2)
          {
            v39 = v19;
            for (i = 0; i != v37; ++i)
            {
              if (*v110 != v38)
              {
                objc_enumerationMutation(v35);
              }

              v41 = [*(*(&v109 + 1) + 8 * i) name];
              v42 = [@"targeting_error" isEqual:v41];

              if (v42)
              {
                v31 = v102;
                v19 = v39;
                goto LABEL_40;
              }
            }

            v37 = [v35 countByEnumeratingWithState:&v109 objects:v122 count:16];
            v19 = v39;
            if (v37)
            {
              continue;
            }

            break;
          }
        }

        v43 = [v113 userInfo];
        v44 = [v43 objectForKeyedSubscript:@"logMessage"];
        v45 = v44;
        v46 = @"unknown";
        if (v44)
        {
          v46 = v44;
        }

        v47 = v46;

        v35 = [MEMORY[0x277D73B40] metricWithName:@"targeting_error" categoricalValue:v47];

        [(TRISelectRolloutNotificationListTask *)v100 _addMetric:v35];
        v31 = v102;
LABEL_40:

        v20 = v94;
        v30.var0 = v94[2](v94);
        v16 = v95;
        v18 = v97;
        goto LABEL_60;
      }

      v96 = v19;
      v53 = v16;
      goto LABEL_26;
    }

LABEL_51:
    v30.var0 = v20[2](v20);
LABEL_59:
    v31 = v102;
    goto LABEL_60;
  }

  v98 = v18;
  v48 = TRILogCategory_Server();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
  {
    v49 = [v21 shortDesc];
    *buf = 138543362;
    v124 = v49;
    _os_log_impl(&dword_26F567000, v48, OS_LOG_TYPE_DEFAULT, "Rollout deployment %{public}@ will not be applied because it represents an already-active ramp. Prior deployment will be reprocessed.", buf, 0xCu);
  }

  v50 = [v104 rolloutDatabase];
  v51 = v114;
  if (!v51)
  {
    v91 = [MEMORY[0x277CCA890] currentHandler];
    [v91 handleFailureInMethod:a2 object:v100 file:@"TRISelectRolloutNotificationListTask.m" lineNumber:171 description:{@"Expression was unexpectedly nil/false: %@", @"relatedRampDeployment"}];
  }

  v52 = [v50 recordWithDeployment:v51 usingTransaction:0];

  if (!v52)
  {
    v82 = TRILogCategory_Server();
    v18 = v98;
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      v89 = [v114 shortDesc];
      v90 = _NamespaceNamesForArtifact(v15);
      *buf = 138543618;
      v124 = v89;
      v125 = 2114;
      v126 = v90;
      _os_log_error_impl(&dword_26F567000, v82, OS_LOG_TYPE_ERROR, "Unexpected failure to find related ramp deployment %{public}@ for namespaces %{public}@.", buf, 0x16u);

      v18 = v98;
    }

    goto LABEL_51;
  }

  v96 = v19;
  v53 = v16;
  v54 = [v52 artifact];

  v55 = v114;
  v21 = v55;
  v15 = v54;
  v18 = v98;
LABEL_26:
  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v56 = [v15 namespaceNames];
  v57 = [v56 countByEnumeratingWithState:&v105 objects:v121 count:16];
  if (!v57)
  {
    goto LABEL_34;
  }

  v58 = v57;
  v59 = *v106;
  while (2)
  {
    for (j = 0; j != v58; ++j)
    {
      if (*v106 != v59)
      {
        objc_enumerationMutation(v56);
      }

      if ([v32 containsObject:*(*(&v105 + 1) + 8 * j)])
      {
        v99 = v18;

        v65 = [v21 rolloutId];
        v66 = [v15 namespaceNames];
        (v101)[2](v101, v65, v66);

        v67 = [TRIRolloutRecord alloc];
        v68 = [v15 rollout];
        v69 = [v68 hasRampId];
        if (v69)
        {
          v93 = [v15 rollout];
          v92 = [v93 rampId];
          v70 = TRIValidateRampId();
        }

        else
        {
          v70 = 0;
        }

        v16 = v53;
        v71 = [v15 namespaceNames];
        v72 = [(TRIRolloutRecord *)v67 initWithDeployment:v21 rampId:v70 activeFactorPackSetId:0 activeTargetingRuleIndex:0 targetedFactorPackSetId:0 targetedTargetingRuleIndex:0 status:0 namespaces:v71 artifact:v15];

        v19 = v96;
        if (v69)
        {
        }

        v73 = [v104 rolloutDatabase];
        [v73 addNewRolloutWithRecord:v72];

        v74 = [v104 rolloutDatabase];
        v75 = [v74 recordWithDeployment:v21 usingTransaction:0];

        if (!v75)
        {
          v83 = TRILogCategory_Server();
          v18 = v99;
          if (os_log_type_enabled(v83, OS_LOG_TYPE_ERROR))
          {
            v84 = [v21 shortDesc];
            v85 = _NamespaceNamesForArtifact(v15);
            *buf = 138543618;
            v124 = v84;
            v125 = 2114;
            v126 = v85;
            _os_log_error_impl(&dword_26F567000, v83, OS_LOG_TYPE_ERROR, "Unexpected failure to find rollout deployment %{public}@ for namespaces %{public}@.", buf, 0x16u);
          }

          goto LABEL_58;
        }

        v76 = [v75 activeFactorPackSetId];

        v77 = TRILogCategory_Server();
        v78 = os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT);
        v18 = v99;
        if (v76)
        {
          if (v78)
          {
            v79 = [v21 shortDesc];
            v80 = _NamespaceNamesForArtifact(v15);
            *buf = 138543618;
            v124 = v79;
            v125 = 2114;
            v126 = v80;
            v81 = "Rollout deployment %{public}@ was selected, but is already active. Scheduling re-activation for namespaces %{public}@";
LABEL_56:
            _os_log_impl(&dword_26F567000, v77, OS_LOG_TYPE_DEFAULT, v81, buf, 0x16u);
          }
        }

        else if (v78)
        {
          v79 = [v21 shortDesc];
          v80 = _NamespaceNamesForArtifact(v15);
          *buf = 138543618;
          v124 = v79;
          v125 = 2114;
          v126 = v80;
          v81 = "Rollout deployment %{public}@ is selected and not yet active; scheduling activation for namespaces %{public}@.";
          goto LABEL_56;
        }

        v86 = [v21 rolloutId];
        [v103 cancelTasksWithTag:v86];

        v83 = [TRIRolloutTargetingTask taskWithRolloutDeployment:v21 includeDependencies:0 taskAttribution:v100->_taskAttribution triggerEvent:0];
        [(TRISelectRolloutNotificationListTask *)v100 _addNextTask:v83];
LABEL_58:

        v30.var0 = v20[2](v20);
        goto LABEL_59;
      }
    }

    v58 = [v56 countByEnumeratingWithState:&v105 objects:v121 count:16];
    if (v58)
    {
      continue;
    }

    break;
  }

LABEL_34:

  v61 = [v21 rolloutId];
  v62 = [v15 namespaceNames];
  (v101)[2](v101, v61, v62);

  v63 = TRILogCategory_Server();
  if (os_log_type_enabled(v63, OS_LOG_TYPE_DEFAULT))
  {
    v64 = [v21 shortDesc];
    *buf = 138543362;
    v124 = v64;
    _os_log_impl(&dword_26F567000, v63, OS_LOG_TYPE_DEFAULT, "Ignoring rollout deployment %{public}@ because it does not impact unhandled namespaces.", buf, 0xCu);
  }

  v30.var0 = v20[2](v20);
  v16 = v53;
  v31 = v102;
  v19 = v96;
LABEL_60:

LABEL_61:
  objc_autoreleasePoolPop(v31);

  v87 = *MEMORY[0x277D85DE8];
  return v30;
}

void __129__TRISelectRolloutNotificationListTask__processRolloutArtifact_rolloutsProcessed_remainingNamespaces_targeter_context_taskQueue___block_invoke_45(uint64_t a1, uint64_t a2, void *a3)
{
  v17 = *MEMORY[0x277D85DE8];
  v5 = a3;
  [*(a1 + 32) addObject:a2];
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v6 = v5;
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

        [*(a1 + 40) removeObject:{*(*(&v12 + 1) + 8 * v10++), v12}];
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v8);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4
{
  v110 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v71 = a4;
  context = objc_autoreleasePoolPush();
  v69 = os_transaction_create();
  v7 = [v6 keyValueStore];
  v73 = [TRIFetchDateManager managerWithKeyValueStore:v7];

  v8 = [v6 namespaceDatabase];
  v9 = [v6 paths];
  v10 = [v9 namespaceDescriptorsDefaultDir];
  v74 = [TRINamespaceDescriptorProvider providerWithNamespaceDatabase:v8 defaultDescriptorDirectoryPath:v10];

  v11 = [(TRITaskAttributing *)self->_taskAttribution triCloudKitContainer];
  v12 = [(TRITaskAttributing *)self->_taskAttribution teamIdentifier];
  v13 = [(TRITaskAttributing *)self->_taskAttribution applicationBundleIdentifier];
  v70 = [TRICKNativeArtifactProvider providerForContainer:v11 teamId:v12 bundleId:v13 dateProvider:v73 namespaceDescriptorProvider:v74 serverContext:v6];

  v14 = [(TRITaskAttributing *)self->_taskAttribution networkOptions];
  if ([v14 allowsCellularAccess])
  {
    v15 = [MEMORY[0x277D73B40] metricWithName:@"allows_cellular_download" integerValue:{objc_msgSend(v14, "allowsCellularAccess")}];
    [(TRISelectRolloutNotificationListTask *)self _addMetric:v15];
  }

  if (![v14 discretionaryBehavior])
  {
    goto LABEL_6;
  }

  v16 = [v14 requiredCapability];
  v17 = [(TRIBaseTask *)self stateProvider];
  v18 = [v17 activeActivityGrantingCapability:v16];

  if (v18)
  {
    [v14 setActivity:v18];

LABEL_6:
    v19 = [TRIRolloutTargeter alloc];
    v20 = [v6 rolloutDatabase];
    v21 = [TRISystemCovariates alloc];
    v22 = [v6 paths];
    v23 = [(TRISystemCovariates *)v21 initWithPaths:v22];
    v24 = [[TRIUserCovariates alloc] initWithContext:v6];
    v72 = [(TRIRolloutTargeter *)v19 initWithDatabase:v20 systemCovariateProvider:v23 userCovariateProvider:v24];

    v25 = objc_opt_new();
    v103[0] = MEMORY[0x277D85DD0];
    v103[1] = 3221225472;
    v103[2] = __70__TRISelectRolloutNotificationListTask_runUsingContext_withTaskQueue___block_invoke;
    v103[3] = &unk_279DE4E00;
    v26 = v25;
    v104 = v26;
    [v74 enumerateDefaultDescriptorsWithBlock:v103];
    v27 = [(TRISelectRolloutNotificationListTask *)self namespaceNames];
    LOBYTE(v22) = [v27 count] == 0;

    if ((v22 & 1) == 0)
    {
      v28 = [(TRISelectRolloutNotificationListTask *)self namespaceNames];
      [v26 intersectSet:v28];
    }

    if ([v26 count])
    {
      v29 = objc_autoreleasePoolPush();
      v30 = [v26 allObjects];
      v31 = [v26 count];
      if (v31 >= 3)
      {
        v32 = 3;
      }

      else
      {
        v32 = v31;
      }

      v33 = [v30 subarrayWithRange:{0, v32}];

      v34 = [v33 componentsJoinedByString:{@", "}];
      v35 = TRILogCategory_Server();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        v36 = [v26 count];
        *buf = 134218242;
        *&buf[4] = v36;
        *&buf[12] = 2114;
        *&buf[14] = v34;
        _os_log_impl(&dword_26F567000, v35, OS_LOG_TYPE_DEFAULT, "Selecting best rollout deployments for %tu namespaces: [%{public}@, ...].", buf, 0x16u);
      }

      objc_autoreleasePoolPop(v29);
      v37 = objc_opt_new();
      v38 = dispatch_semaphore_create(0);
      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x3032000000;
      v107 = __Block_byref_object_copy__55;
      v108 = __Block_byref_object_dispose__55;
      v109 = 0;
      v99 = 0;
      v100 = &v99;
      v101 = 0x2020000000;
      v102 = 0;
      v93 = 0;
      v94 = &v93;
      v95 = 0x3032000000;
      v96 = __Block_byref_object_copy__55;
      v97 = __Block_byref_object_dispose__55;
      v98 = 0;
      v92[0] = 0;
      v92[1] = v92;
      v92[2] = 0x2020000000;
      v92[3] = 0;
      v80[0] = MEMORY[0x277D85DD0];
      v80[1] = 3221225472;
      v80[2] = __70__TRISelectRolloutNotificationListTask_runUsingContext_withTaskQueue___block_invoke_76;
      v80[3] = &unk_279DE4E28;
      v88 = &v99;
      v89 = &v93;
      v90 = buf;
      v81 = v26;
      v82 = self;
      v64 = v37;
      v83 = v64;
      v84 = v72;
      v85 = v6;
      v86 = v71;
      v91 = v92;
      v39 = v38;
      v87 = v39;
      v67 = MEMORY[0x2743948D0](v80);
      v66 = [[TRIFetchOptions alloc] initWithDownloadOptions:v14 cacheDeleteAvailableSpaceClass:&unk_287FC4DC8];
      v40 = TRILogCategory_Server();
      v41 = os_signpost_id_generate(v40);

      v42 = TRILogCategory_Server();
      v43 = v42;
      if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v42))
      {
        *v79 = 0;
        _os_signpost_emit_with_name_impl(&dword_26F567000, v43, OS_SIGNPOST_INTERVAL_BEGIN, v41, "FetchRolloutNotificationsDateDescending", &unk_26F6F4845, v79, 2u);
      }

      [v70 fetchRolloutNotificationsDateDescendingWithOptions:v66 completion:v67];
      dispatch_semaphore_wait(v39, 0xFFFFFFFFFFFFFFFFLL);
      v44 = TRILogCategory_Server();
      v45 = v44;
      if (v41 - 1 <= 0xFFFFFFFFFFFFFFFDLL && os_signpost_enabled(v44))
      {
        *v79 = 0;
        _os_signpost_emit_with_name_impl(&dword_26F567000, v45, OS_SIGNPOST_INTERVAL_END, v41, "FetchRolloutNotificationsDateDescending", &unk_26F6F4845, v79, 2u);
      }

      if (v94[5])
      {
        self->wasDeferred = [TRICKNativeArtifactProvider isActivityDeferralError:v64];
        v46 = TRIFetchErrorParseToMetrics(v94[5]);
        if ([v46 count])
        {
          v77 = 0u;
          v78 = 0u;
          v75 = 0u;
          v76 = 0u;
          v47 = v46;
          v48 = [v47 countByEnumeratingWithState:&v75 objects:v105 count:16];
          if (v48)
          {
            v49 = *v76;
            do
            {
              for (i = 0; i != v48; ++i)
              {
                if (*v76 != v49)
                {
                  objc_enumerationMutation(v47);
                }

                [(TRISelectRolloutNotificationListTask *)self _addMetric:*(*(&v75 + 1) + 8 * i)];
              }

              v48 = [v47 countByEnumeratingWithState:&v75 objects:v105 count:16];
            }

            while (v48);
          }
        }
      }

      v51 = [(TRISelectRolloutNotificationListTask *)self namespaceNames];
      if (v51)
      {
        v52 = MEMORY[0x277D73698];
        v53 = [(TRISelectRolloutNotificationListTask *)self namespaceNames];
        v54 = [v53 allObjects];
        v55 = [v52 immediateDownloadNotificationKeyForNamespaceNames:v54];
      }

      else
      {
        v55 = 0;
      }

      if (*(v100 + 6) == 2)
      {
        v59 = 2;
      }

      else
      {
        [MEMORY[0x277D73698] notifyDownloadFailedForKey:v55 withCloudKitError:v94[5]];
        v59 = *(v100 + 6);
      }

      v60 = [(NSMutableArray *)self->_nextTasks copy];
      v57 = [TRITaskRunResult resultWithRunStatus:v59 reportResultToServer:1 nextTasks:v60 earliestRetryDate:*(*&buf[8] + 40)];

      _Block_object_dispose(v92, 8);
      _Block_object_dispose(&v93, 8);

      _Block_object_dispose(&v99, 8);
      _Block_object_dispose(buf, 8);
    }

    else
    {
      v56 = TRILogCategory_Server();
      if (os_log_type_enabled(v56, OS_LOG_TYPE_ERROR))
      {
        v63 = [(TRISelectRolloutNotificationListTask *)self namespaceNames];
        *buf = 138543362;
        *&buf[4] = v63;
        _os_log_error_impl(&dword_26F567000, v56, OS_LOG_TYPE_ERROR, "Request to select best rollout deployments specified unregistered namespaces: %{public}@", buf, 0xCu);
      }

      v57 = [TRITaskRunResult resultWithRunStatus:2 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0];
    }

    goto LABEL_45;
  }

  v58 = TRILogCategory_Server();
  if (os_log_type_enabled(v58, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v58, OS_LOG_TYPE_DEFAULT, "no xpc activity designated for discretionary operation, failing with retry", buf, 2u);
  }

  v72 = [(NSMutableArray *)self->_nextTasks copy];
  v57 = [TRITaskRunResult resultWithRunStatus:1 reportResultToServer:1 nextTasks:v72 earliestRetryDate:0];
LABEL_45:

  objc_autoreleasePoolPop(context);
  v61 = *MEMORY[0x277D85DE8];

  return v57;
}

void __70__TRISelectRolloutNotificationListTask_runUsingContext_withTaskQueue___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 namespaceName];
  [v2 addObject:v3];
}

void __70__TRISelectRolloutNotificationListTask_runUsingContext_withTaskQueue___block_invoke_76(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, _BYTE *a6)
{
  v32 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = a5;
  if (a2 <= 1)
  {
    v14 = *(*(a1 + 88) + 8);
    goto LABEL_3;
  }

  if (a2 == 2)
  {
    v14 = *(*(a1 + 88) + 8);
    if (v12)
    {
      *(v14 + 24) = 1;
      objc_storeStrong((*(*(a1 + 104) + 8) + 40), a4);
      goto LABEL_7;
    }

LABEL_3:
    *(v14 + 24) = 3;
LABEL_7:
    objc_storeStrong((*(*(a1 + 96) + 8) + 40), a5);
LABEL_8:
    dispatch_semaphore_signal(*(a1 + 80));
    goto LABEL_9;
  }

  if (v11)
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v16 = [v11 namespaceNames];
    v17 = [v16 countByEnumeratingWithState:&v25 objects:v31 count:16];
    if (!v17)
    {
LABEL_19:

      goto LABEL_9;
    }

    v18 = v17;
    v19 = *v26;
LABEL_13:
    v20 = 0;
    while (1)
    {
      if (*v26 != v19)
      {
        objc_enumerationMutation(v16);
      }

      if ([*(a1 + 32) containsObject:*(*(&v25 + 1) + 8 * v20)])
      {
        break;
      }

      if (v18 == ++v20)
      {
        v18 = [v16 countByEnumeratingWithState:&v25 objects:v31 count:16];
        if (v18)
        {
          goto LABEL_13;
        }

        goto LABEL_19;
      }
    }

    v21 = [*(a1 + 40) _processRolloutArtifact:v11 rolloutsProcessed:*(a1 + 48) remainingNamespaces:*(a1 + 32) targeter:*(a1 + 56) context:*(a1 + 64) taskQueue:*(a1 + 72)];
    ++*(*(*(a1 + 112) + 8) + 24);
    if (v21)
    {
      goto LABEL_21;
    }

    if (a6)
    {
      *a6 = 1;
    }

    if (a2 - 3 >= 2)
    {
      goto LABEL_8;
    }

    goto LABEL_30;
  }

LABEL_21:
  if (a2 != 3)
  {
    if (a2 != 4)
    {
      goto LABEL_8;
    }

LABEL_30:
    if (!*(*(*(a1 + 112) + 8) + 24))
    {
      v24 = TRILogCategory_Server();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F567000, v24, OS_LOG_TYPE_DEFAULT, "Fetch status success but 0 results fetched.", buf, 2u);
      }
    }

    *(*(*(a1 + 88) + 8) + 24) = 2;
    goto LABEL_8;
  }

  v22 = TRILogCategory_Server();
  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
  {
    v23 = *(*(*(a1 + 112) + 8) + 24);
    *buf = 134217984;
    v30 = v23;
    _os_log_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEFAULT, "Fetched %ld results, with more results pending.", buf, 0xCu);
  }

LABEL_9:
  v15 = *MEMORY[0x277D85DE8];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = TRISelectRolloutNotificationListTask;
  if ([(TRIBaseTask *)&v12 isEqual:v4])
  {
    v5 = v4;
    if ([(TRITaskAttributing *)self->_taskAttribution isEqual:v5[4]])
    {
      v6 = [(TRISelectRolloutNotificationListTask *)self namespaceNames];
      v7 = [v5 namespaceNames];
      v8 = v7;
      if (v6 == v7)
      {

        goto LABEL_10;
      }

      if (v6 && v7)
      {
        v9 = [v6 isEqualToSet:v7];

        if ((v9 & 1) == 0)
        {
          goto LABEL_12;
        }

LABEL_10:
        v10 = 1;
LABEL_13:

        goto LABEL_14;
      }
    }

LABEL_12:
    v10 = 0;
    goto LABEL_13;
  }

  v10 = 0;
LABEL_14:

  return v10;
}

- (unint64_t)hash
{
  v8.receiver = self;
  v8.super_class = TRISelectRolloutNotificationListTask;
  v3 = [(TRIBaseTask *)&v8 hash];
  v4 = [(TRISelectRolloutNotificationListTask *)self namespaceNames];
  if (v4)
  {
    v5 = [(TRISelectRolloutNotificationListTask *)self namespaceNames];
    v6 = [v5 hash];
  }

  else
  {
    v6 = 0;
  }

  return [(TRITaskAttributing *)self->_taskAttribution hash]+ 37 * (v6 + 37 * v3);
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(TRISelectRolloutNotificationListTask *)self namespaceNames];
  v6 = [v3 stringWithFormat:@"<%@:%@>", v4, v5];

  return v6;
}

- (void)_addMetric:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __51__TRISelectRolloutNotificationListTask__addMetric___block_invoke;
  v7[3] = &unk_279DE4E50;
  v8 = v4;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

uint64_t __51__TRISelectRolloutNotificationListTask__addMetric___block_invoke(uint64_t a1, void *a2)
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

- (void)_addDimension:(id)a3
{
  v4 = a3;
  lock = self->_lock;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __54__TRISelectRolloutNotificationListTask__addDimension___block_invoke;
  v7[3] = &unk_279DE4E50;
  v8 = v4;
  v6 = v4;
  [(_PASLock *)lock runWithLockAcquired:v7];
}

uint64_t __54__TRISelectRolloutNotificationListTask__addDimension___block_invoke(uint64_t a1, void *a2)
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

- (id)metrics
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__55;
  v10 = __Block_byref_object_dispose__55;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __47__TRISelectRolloutNotificationListTask_metrics__block_invoke;
  v5[3] = &unk_279DE4E78;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __47__TRISelectRolloutNotificationListTask_metrics__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 8) copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (id)dimensions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = __Block_byref_object_copy__55;
  v10 = __Block_byref_object_dispose__55;
  v11 = 0;
  lock = self->_lock;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __50__TRISelectRolloutNotificationListTask_dimensions__block_invoke;
  v5[3] = &unk_279DE4E78;
  v5[4] = &v6;
  [(_PASLock *)lock runWithLockAcquired:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

uint64_t __50__TRISelectRolloutNotificationListTask_dimensions__block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a2 + 16) copy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x2821F96F8]();
}

- (id)trialSystemTelemetry
{
  v3 = [TRITelemetryFactory containerOriginTelemetryForTaskAttribution:self->_taskAttribution];
  v4 = [(TRITaskAttributing *)self->_taskAttribution teamIdentifier];
  [v3 setClientTeamId:v4];

  return v3;
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  v4 = [(TRITaskAttributing *)self->_taskAttribution asPersistedTaskAttribution];
  [v3 setTaskAttribution:v4];

  v5 = [(TRISelectRolloutNotificationListTask *)self namespaceNames];
  v6 = [v5 count];

  if (v6)
  {
    v7 = [(TRISelectRolloutNotificationListTask *)self namespaceNames];
    v8 = [v7 allObjects];
    v9 = [v8 mutableCopy];
    [v3 setNamespacesArray:v9];
  }

  [v3 setRetryCount:{-[TRISelectRolloutNotificationListTask retryCount](self, "retryCount")}];

  return v3;
}

- (id)serialize
{
  v4 = [(TRISelectRolloutNotificationListTask *)self _asPersistedTask];
  v5 = [v4 data];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"TRISelectRolloutNotificationListTask.m" lineNumber:543 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return v5;
}

+ (id)parseFromData:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v17 = 0;
  v4 = [(TRIPBMessage *)TRISelectRolloutNotificationListPersistedTask parseFromData:a3 error:&v17];
  v5 = v17;
  if (!v4)
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v19 = v5;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRISelectRolloutNotificationListPersistedTask: %{public}@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if (([v4 hasTaskAttribution] & 1) == 0)
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v15 = objc_opt_class();
      v16 = NSStringFromClass(v15);
      *buf = 138412290;
      v19 = v16;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: taskAttribution", buf, 0xCu);
    }

LABEL_10:
    v11 = 0;
    goto LABEL_20;
  }

  v6 = [v4 taskAttribution];
  v7 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:v6];

  if (v7)
  {
    if ([v4 namespacesArray_Count])
    {
      v8 = objc_alloc(MEMORY[0x277CBEB98]);
      v9 = [v4 namespacesArray];
      v10 = [v8 initWithArray:v9];
    }

    else
    {
      v10 = 0;
    }

    v11 = [[a1 alloc] initWithNamespaceNames:v10 taskAttribution:v7];
    if ([v4 hasRetryCount])
    {
      v12 = [v4 retryCount];
    }

    else
    {
      v12 = 0;
    }

    [v11 setRetryCount:v12];
  }

  else
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "invalid de-serialized TRITaskAttribution pb message", buf, 2u);
    }

    v11 = 0;
  }

LABEL_20:
  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (unint64_t)requiredCapabilities
{
  v3 = [(TRITaskAttributing *)self->_taskAttribution networkOptions];
  v4 = [v3 requiredCapability];

  if ([(TRISelectRolloutNotificationListTask *)self retryCount])
  {
    return v4 | 4;
  }

  else
  {
    return v4;
  }
}

- (TRISelectRolloutNotificationListTask)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRISelectRolloutNotificationListTask;
  v5 = [(TRISelectRolloutNotificationListTask *)&v9 init];
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
    [v6 handleFailureInMethod:a2 object:self file:@"TRISelectRolloutNotificationListTask.m" lineNumber:581 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  v5 = [(TRISelectRolloutNotificationListTask *)self serialize];
  [v7 encodeObject:v5 forKey:@"pb"];
}

@end