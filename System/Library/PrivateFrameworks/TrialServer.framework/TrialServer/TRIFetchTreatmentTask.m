@interface TRIFetchTreatmentTask
+ (id)parseFromData:(id)a3;
+ (id)taskWithExperiment:(id)a3 treatmentId:(id)a4 taskAttributing:(id)a5 capabilityModifier:(id)a6;
- (BOOL)_downloadAndSaveMAAssets:(id)a3 options:(id)a4 downloadNotificationKey:(id)a5 context:(id)a6 errorResult:(id *)a7 fetchError:(id *)a8;
- (NSArray)dependencies;
- (NSString)description;
- (TRIFetchTreatmentTask)initWithCoder:(id)a3;
- (TRIFetchTreatmentTask)initWithExperiment:(id)a3 treatmentId:(id)a4 taskAttributing:(id)a5 capabilityModifier:(id)a6;
- (id)_asPersistedTask;
- (id)_fetchAssetsWithArtifactProvider:(id)a3 recordId:(id)a4 experimentRecord:(id)a5 assetIndexes:(id)a6 downloadOptions:(id)a7 context:(id)a8 assetURLs:(id *)a9 treatmentFetchError:(id *)a10;
- (id)_fetchTreatmentWithArtifactProvider:(id)a3 experimentRecord:(id)a4 downloadOptions:(id)a5 context:(id)a6 treatment:(id *)a7 recordId:(id *)a8 treatmentFetchError:(id *)a9;
- (id)_namespaceDescriptorForNamespaceName:(id)a3 fromExperimentRecord:(id)a4 referencingFactorsURL:(id)a5;
- (id)_nextTasksForRunStatusFailureWithDeactivationReason:(unint64_t)a3;
- (id)_saveTreatment:(id)a3 experimentRecord:(id)a4 assetURLs:(id)a5 assetMetadata:(id)a6 context:(id)a7 paths:(id)a8 downloadOptions:(id)a9;
- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4;
- (id)serialize;
- (unint64_t)requiredCapabilities;
- (unsigned)_ncvForNamespaceName:(id)a3 inExperimentRecord:(id)a4;
- (void)_addMetricForFetchTreatmentTaskError:(int)a3;
- (void)encodeWithCoder:(id)a3;
- (void)runDequeueHandlerUsingContext:(id)a3;
- (void)runEnqueueHandlerUsingContext:(id)a3;
@end

@implementation TRIFetchTreatmentTask

- (TRIFetchTreatmentTask)initWithExperiment:(id)a3 treatmentId:(id)a4 taskAttributing:(id)a5 capabilityModifier:(id)a6
{
  v11 = a6;
  v15.receiver = self;
  v15.super_class = TRIFetchTreatmentTask;
  v12 = [(TRITreatmentBaseTask *)&v15 initWithExperiment:a3 treatmentId:a4 taskAttributing:a5];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_capabilityModifier, a6);
    v13->retryCount = 0;
  }

  return v13;
}

+ (id)taskWithExperiment:(id)a3 treatmentId:(id)a4 taskAttributing:(id)a5 capabilityModifier:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = [[a1 alloc] initWithExperiment:v13 treatmentId:v12 taskAttributing:v11 capabilityModifier:v10];

  return v14;
}

- (NSArray)dependencies
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = [(TRIExperimentBaseTask *)self experiment];
  v4 = [(TRITreatmentBaseTask *)self taskAttributing];
  v5 = [TRIFetchExperimentTask taskWithExperimentDeployment:v3 taskAttributing:v4];
  v9[0] = v5;
  v6 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:1];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)runEnqueueHandlerUsingContext:(id)a3
{
  v4 = a3;
  v8 = [(TRIExperimentBaseTask *)self containerForFirstNamespaceInExperimentWithContext:v4];
  v5 = [(TRITreatmentBaseTask *)self treatmentId];
  v6 = [TRIContentTracker contentIdentifierForTreatmentArtifactWithTreatmentId:v5 container:v8];

  v7 = [v4 contentTracker];

  [v7 addRefWithContentIdentifier:v6];
}

- (void)runDequeueHandlerUsingContext:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TRIExperimentBaseTask *)self containerForFirstNamespaceInExperimentWithContext:v4];
  v6 = [(TRITreatmentBaseTask *)self treatmentId];
  v7 = [TRIContentTracker contentIdentifierForTreatmentArtifactWithTreatmentId:v6 container:v5];

  v8 = [v4 contentTracker];

  LOBYTE(v4) = [v8 dropRefWithContentIdentifier:v7];
  if ((v4 & 1) == 0)
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = [(TRITreatmentBaseTask *)self treatmentId];
      v12 = 138412290;
      v13 = v11;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Failed to drop reference on artifact for treatment %@.", &v12, 0xCu);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (BOOL)_downloadAndSaveMAAssets:(id)a3 options:(id)a4 downloadNotificationKey:(id)a5 context:(id)a6 errorResult:(id *)a7 fetchError:(id *)a8
{
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  if ([v14 count])
  {
    v30 = v15;
    v18 = objc_opt_new();
    v19 = [v18 ensureMobileAssetOriginFields];
    [v19 setIsMobileAsset:1];

    [(TRIExperimentBaseTask *)self mergeTelemetry:v18];
    v37 = 0;
    v38 = &v37;
    v39 = 0x3032000000;
    v40 = __Block_byref_object_copy__53;
    v41 = __Block_byref_object_dispose__53;
    v20 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatus:3];
    v42 = [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:1 nextTasks:v20 earliestRetryDate:0];

    v21 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(v14, "count")}];
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __113__TRIFetchTreatmentTask__downloadAndSaveMAAssets_options_downloadNotificationKey_context_errorResult_fetchError___block_invoke;
    v35[3] = &unk_279DE3F58;
    v22 = v21;
    v36 = v22;
    [v14 enumerateObjectsUsingBlock:v35];
    v23 = dispatch_semaphore_create(0);
    v24 = objc_opt_new();
    v25 = [(TRITreatmentBaseTask *)self taskAttributing];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __113__TRIFetchTreatmentTask__downloadAndSaveMAAssets_options_downloadNotificationKey_context_errorResult_fetchError___block_invoke_2;
    v31[3] = &unk_279DE4160;
    v31[4] = self;
    v33 = &v37;
    v34 = a8;
    v26 = v23;
    v32 = v26;
    v27 = [v24 downloadAssets:v22 attribution:v25 aggregateProgress:0 group:0 completion:v31];

    dispatch_semaphore_wait(v26, 0xFFFFFFFFFFFFFFFFLL);
    if (a7)
    {
      objc_storeStrong(a7, v38[5]);
    }

    v28 = [v38[5] runStatus] == 2;

    _Block_object_dispose(&v37, 8);
    v15 = v30;
  }

  else
  {
    v28 = 1;
  }

  return v28;
}

void __113__TRIFetchTreatmentTask__downloadAndSaveMAAssets_options_downloadNotificationKey_context_errorResult_fetchError___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v5 = [v3 metadata];
  v4 = [v3 fullAssetId];

  [v2 setObject:v5 forKey:v4];
}

void __113__TRIFetchTreatmentTask__downloadAndSaveMAAssets_options_downloadNotificationKey_context_errorResult_fetchError___block_invoke_2(uint64_t a1, uint64_t a2, int a3, void *a4, void *a5)
{
  v17 = a4;
  v9 = a5;
  if (a3)
  {
    [*(a1 + 32) setWasDeferred:1];
  }

  v10 = *(a1 + 56);
  v11 = *v10;
  *v10 = v9;
  v12 = v9;

  v13 = [TRITaskRunResult alloc];
  v14 = [(TRITaskRunResult *)v13 initWithRunStatus:a2 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:v17];
  v15 = *(*(a1 + 48) + 8);
  v16 = *(v15 + 40);
  *(v15 + 40) = v14;

  dispatch_semaphore_signal(*(a1 + 40));
}

- (id)_saveTreatment:(id)a3 experimentRecord:(id)a4 assetURLs:(id)a5 assetMetadata:(id)a6 context:(id)a7 paths:(id)a8 downloadOptions:(id)a9
{
  v16 = a9;
  v141 = *MEMORY[0x277D85DE8];
  v111 = a3;
  v116 = a4;
  v104 = a5;
  v105 = a6;
  v17 = a7;
  v117 = a8;
  v106 = a9;
  v110 = v17;
  v115 = [v17 experimentDatabase];
  v103 = [v17 namespaceDatabase];
  v102 = [[TRIUserCovariates alloc] initWithContext:v17];
  v133[0] = MEMORY[0x277D85DD0];
  v133[1] = 3221225472;
  v133[2] = __111__TRIFetchTreatmentTask__saveTreatment_experimentRecord_assetURLs_assetMetadata_context_paths_downloadOptions___block_invoke;
  v133[3] = &unk_279DE4AA0;
  v133[4] = self;
  v108 = MEMORY[0x2743948D0](v133);
  if (v111)
  {
    if ([v111 hasTreatmentId])
    {
      v18 = [(TRITreatmentBaseTask *)self treatmentId];
      v19 = [v111 treatmentId];
      v20 = [v18 isEqualToString:v19];

      if (v20)
      {
        if ([v111 factorLevelArray_Count])
        {
          v21 = objc_opt_new();
          *buf = 0;
          *&buf[8] = buf;
          *&buf[16] = 0x3032000000;
          v139 = __Block_byref_object_copy__53;
          *v140 = __Block_byref_object_dispose__53;
          *&v140[8] = 0;
          v22 = TRILogCategory_Server();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v78 = [v111 factorLevelArray_Count];
            v79 = [(TRITreatmentBaseTask *)self treatmentId];
            v80 = [(TRIExperimentBaseTask *)self experiment];
            *v135 = 134218498;
            *&v135[4] = v78;
            *&v135[12] = 2112;
            *&v135[14] = v79;
            *&v135[22] = 2114;
            v136 = v80;
            _os_log_debug_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEBUG, "got %lu factors defined in treatment %@ for experiment %{public}@", v135, 0x20u);
          }

          *v135 = 0;
          *&v135[8] = v135;
          *&v135[16] = 0x2020000000;
          LOBYTE(v136) = 1;
          v23 = [v111 factorLevelArray];
          v128[0] = MEMORY[0x277D85DD0];
          v128[1] = 3221225472;
          v128[2] = __111__TRIFetchTreatmentTask__saveTreatment_experimentRecord_assetURLs_assetMetadata_context_paths_downloadOptions___block_invoke_330;
          v128[3] = &unk_279DE4AC8;
          v128[4] = self;
          v131 = v135;
          v24 = v21;
          v129 = v24;
          v130 = v103;
          v132 = buf;
          [v23 enumerateObjectsUsingBlock:v128];

          v25 = *(*&v135[8] + 24);
          if (v25)
          {
            if (*(*&buf[8] + 40))
            {
              v26 = [MEMORY[0x277D73BE8] dimensionWithName:@"client_app_bundle_id" value:?];
              [(TRIExperimentBaseTask *)self addDimension:v26];
              v27 = [(TRIUserCovariates *)v102 tri_shortVersionStringForBundleId:*(*&buf[8] + 40)];
              v28 = [MEMORY[0x277D73BE8] dimensionWithName:@"client_app_version" value:v27];
              [(TRIExperimentBaseTask *)self addDimension:v28];
            }

            v101 = [v24 allObjects];
          }

          else
          {
            [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:26];
            v16 = v108[2](v108, 16);
            v101 = 0;
          }

          _Block_object_dispose(v135, 8);
          _Block_object_dispose(buf, 8);

          if ((v25 & 1) == 0)
          {
            goto LABEL_86;
          }

          if (v101)
          {
            if ([v101 count])
            {
              if ([v116 type] == 1)
              {
                v37 = [(TRIExperimentBaseTask *)self experiment];
                v38 = [v116 startDate];
                v39 = [v116 endDate];
                v40 = [v115 namespacesAreAvailableForExperiment:v37 startDate:v38 endDate:v39 namespaces:v101];

                if ((v40 & 1) == 0)
                {
                  v84 = TRILogCategory_Server();
                  if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
                  {
                    v94 = [(TRITreatmentBaseTask *)self treatmentId];
                    v95 = [(TRIExperimentBaseTask *)self experiment];
                    v96 = [v95 shortDesc];
                    v97 = [v101 componentsJoinedByString:{@", "}];
                    v98 = [v116 startDate];
                    v99 = [v116 endDate];
                    *buf = 138413314;
                    *&buf[4] = v94;
                    *&buf[12] = 2114;
                    *&buf[14] = v96;
                    *&buf[22] = 2114;
                    v139 = v97;
                    *v140 = 2112;
                    *&v140[2] = v98;
                    *&v140[10] = 2112;
                    *&v140[12] = v99;
                    _os_log_error_impl(&dword_26F567000, v84, OS_LOG_TYPE_ERROR, "cannot install treatment %@ of experiment %{public}@ -- namespaces %{public}@ not available for experimentation during time from %@ to %@", buf, 0x34u);
                  }

                  [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:28];
                  v16 = v108[2](v108, 17);
                  goto LABEL_86;
                }
              }

              v33 = 0;
LABEL_37:
              *v135 = 0;
              *&v135[8] = v135;
              *&v135[16] = 0x2810000000;
              v136 = &unk_26F7089E2;
              v137 = 1;
              *buf = 0;
              *&buf[8] = buf;
              *&buf[16] = 0x3032000000;
              v139 = __Block_byref_object_copy__53;
              *v140 = __Block_byref_object_dispose__53;
              *&v140[8] = 0;
              v42 = [TRIAssetStore alloc];
              v43 = [v106 activity];
              v44 = [(TRIAssetStore *)v42 initWithPaths:v117 monitoredActivity:v43];

              v45 = [v105 cloudKit];
              v122[0] = MEMORY[0x277D85DD0];
              v122[1] = 3221225472;
              v122[2] = __111__TRIFetchTreatmentTask__saveTreatment_experimentRecord_assetURLs_assetMetadata_context_paths_downloadOptions___block_invoke_337;
              v122[3] = &unk_279DE4AF0;
              v127 = a2;
              v122[4] = self;
              v123 = v104;
              v125 = v135;
              v46 = v44;
              v124 = v46;
              v126 = buf;
              [v45 enumerateObjectsUsingBlock:v122];

              if (*(*&v135[8] + 32))
              {
                if (*(*&v135[8] + 32) != 2)
                {
                  v49 = 1;
                  goto LABEL_45;
                }

                [(TRIFetchTreatmentTask *)self setWasDeferred:1];
                [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:30];
                v47 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatus:1];
                v16 = [TRITaskRunResult resultWithRunStatus:1 reportResultToServer:1 nextTasks:v47 earliestRetryDate:0];
              }

              else
              {
                v47 = [TRICKNativeArtifactProvider fetchRetryDateFromErrorAndOptions:*(*&buf[8] + 40) options:v106];
                if (v47)
                {
                  v48 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatus:1];
                  v16 = [TRITaskRunResult resultWithRunStatus:1 reportResultToServer:1 nextTasks:v48 earliestRetryDate:v47];
                }

                else
                {
                  v16 = v108[2](v108, 20);
                  v47 = 0;
                }
              }

              v49 = 0;
LABEL_45:

              _Block_object_dispose(buf, 8);
              _Block_object_dispose(v135, 8);
              if (!v49)
              {
LABEL_86:

                goto LABEL_13;
              }

              v113 = [[TRIClientTreatmentStorage alloc] initWithPaths:v117];
              v100 = [(TRIClientTreatmentStorage *)v113 saveTreatment:v111];
              if (v100)
              {
                v50 = [v116 treatmentId];
                v51 = v50 == 0;

                if (!v51 || (-[TRITreatmentBaseTask treatmentId](self, "treatmentId"), v52 = objc_claimAutoreleasedReturnValue(), -[TRIExperimentBaseTask experiment](self, "experiment"), v53 = objc_claimAutoreleasedReturnValue(), v54 = [v115 setTreatmentId:v52 forExperimentDeployment:v53 usingTransaction:0], v53, v52, (v54 & 1) != 0))
                {
                  v109 = objc_opt_new();
                  if ((v33 & 1) != 0 || ![v101 count])
                  {
                    v55 = 2;
                  }

                  else
                  {
                    v120 = 0u;
                    v121 = 0u;
                    v118 = 0u;
                    v119 = 0u;
                    obj = v101;
                    v114 = [obj countByEnumeratingWithState:&v118 objects:v134 count:16];
                    if (v114)
                    {
                      v112 = *v119;
                      v55 = 2;
                      do
                      {
                        for (i = 0; i != v114; ++i)
                        {
                          if (*v119 != v112)
                          {
                            objc_enumerationMutation(obj);
                          }

                          v57 = *(*(&v118 + 1) + 8 * i);
                          v58 = [(TRITreatmentBaseTask *)self treatmentId];
                          v59 = [(TRIClientTreatmentStorage *)v113 urlForFactorsWithTreatmentId:v58 namespaceName:v57];

                          v60 = [(TRIExperimentBaseTask *)self experiment];
                          v61 = [v115 setTreatmentURL:v59 forExperimentDeployment:v60 namespaceName:v57];

                          if ((v61 & 1) == 0)
                          {
                            [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:21];
                            v55 = 3;
                          }

                          v62 = [objc_alloc(MEMORY[0x277D737F8]) initWithPaths:v117];
                          v63 = [(TRIExperimentBaseTask *)self experiment];
                          v64 = [v63 experimentId];
                          [v62 setExperimentId:v64];

                          v65 = [(TRIExperimentBaseTask *)self experiment];
                          [v62 setDeploymentId:{objc_msgSend(v65, "deploymentId")}];

                          v66 = [(TRITreatmentBaseTask *)self treatmentId];
                          [v62 setTreatmentId:v66];

                          [v62 setNamespaceName:v57];
                          v67 = [v59 triPathAsOwner:0];
                          v68 = [v67 stringByDeletingLastPathComponent];

                          if (!v68 || ([v62 saveToDir:v68] & 1) == 0)
                          {
                            v69 = TRILogCategory_Server();
                            if (os_log_type_enabled(v69, OS_LOG_TYPE_ERROR))
                            {
                              v72 = [(TRITreatmentBaseTask *)self treatmentId];
                              v73 = [(TRIExperimentBaseTask *)self experiment];
                              *buf = 138412802;
                              *&buf[4] = v72;
                              *&buf[12] = 2114;
                              *&buf[14] = v73;
                              *&buf[22] = 2114;
                              v139 = v57;
                              _os_log_error_impl(&dword_26F567000, v69, OS_LOG_TYPE_ERROR, "failed to save info for treatment %@ of experiment %{public}@ with namespace %{public}@", buf, 0x20u);
                            }

                            [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:18];
                            v55 = 3;
                          }

                          v70 = [(TRIFetchTreatmentTask *)self _namespaceDescriptorForNamespaceName:v57 fromExperimentRecord:v116 referencingFactorsURL:v59];
                          if (v70)
                          {
                            [v109 addObject:v70];
                          }

                          else
                          {
                            v71 = TRILogCategory_Server();
                            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
                            {
                              v74 = [(TRITreatmentBaseTask *)self treatmentId];
                              v75 = [(TRIExperimentBaseTask *)self experiment];
                              *buf = 138412802;
                              *&buf[4] = v74;
                              *&buf[12] = 2114;
                              *&buf[14] = v75;
                              *&buf[22] = 2114;
                              v139 = v57;
                              _os_log_error_impl(&dword_26F567000, v71, OS_LOG_TYPE_ERROR, "failed to compute namespace descriptor set entry for treatment %@ of experiment %{public}@ with namespace %{public}@", buf, 0x20u);
                            }

                            [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:7];
                            v55 = 3;
                          }
                        }

                        v114 = [obj countByEnumeratingWithState:&v118 objects:v134 count:16];
                      }

                      while (v114);
                    }

                    else
                    {
                      v55 = 2;
                    }
                  }

                  v88 = [[TRINamespaceDescriptorSetStorage alloc] initWithPaths:v117];
                  v89 = [(TRITreatmentBaseTask *)self treatmentId];
                  v90 = [(TRINamespaceDescriptorSetStorage *)v88 overwriteNamespaceDescriptors:v109 forTreatmentId:v89];

                  if (!v90)
                  {
                    [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:17];
                    v55 = 3;
                  }

                  v91 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatus:v55];
                  v16 = [TRITaskRunResult resultWithRunStatus:v55 reportResultToServer:1 nextTasks:v91 earliestRetryDate:0];

                  goto LABEL_85;
                }

                v77 = TRILogCategory_Server();
                if (os_log_type_enabled(v77, OS_LOG_TYPE_DEBUG))
                {
                  v92 = [(TRITreatmentBaseTask *)self treatmentId];
                  v93 = [(TRIExperimentBaseTask *)self experiment];
                  *buf = 138412546;
                  *&buf[4] = v92;
                  *&buf[12] = 2114;
                  *&buf[14] = v93;
                  _os_log_debug_impl(&dword_26F567000, v77, OS_LOG_TYPE_DEBUG, "failed to save treatment id %@ to database for experiment %{public}@", buf, 0x16u);
                }

                [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:19];
                v76 = v108[2](v108, 18);
              }

              else
              {
                [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:20];
                v76 = v108[2](v108, 18);
              }

              v16 = v76;
LABEL_85:

              goto LABEL_86;
            }

            v33 = 0;
          }

          else
          {
            v101 = 0;
            v33 = 1;
          }
        }

        else
        {
          v32 = TRILogCategory_Server();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_DEBUG))
          {
            v85 = [(TRITreatmentBaseTask *)self treatmentId];
            v86 = [(TRIExperimentBaseTask *)self experiment];
            v87 = [v86 shortDesc];
            *buf = 138412546;
            *&buf[4] = v85;
            *&buf[12] = 2114;
            *&buf[14] = v87;
            _os_log_debug_impl(&dword_26F567000, v32, OS_LOG_TYPE_DEBUG, "no factors defined in treatment %@ for experiment %{public}@", buf, 0x16u);
          }

          v101 = 0;
          v33 = 1;
        }

        v41 = TRILogCategory_Server();
        if (os_log_type_enabled(v41, OS_LOG_TYPE_DEBUG))
        {
          v81 = [(TRITreatmentBaseTask *)self treatmentId];
          v82 = [(TRIExperimentBaseTask *)self experiment];
          v83 = [v82 shortDesc];
          *buf = 138412546;
          *&buf[4] = v81;
          *&buf[12] = 2114;
          *&buf[14] = v83;
          _os_log_debug_impl(&dword_26F567000, v41, OS_LOG_TYPE_DEBUG, "no namespaces used in treatment %@ for experiment %{public}@", buf, 0x16u);
        }

        goto LABEL_37;
      }
    }
  }

  v29 = TRILogCategory_Server();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v34 = [(TRITreatmentBaseTask *)self treatmentId];
    v35 = [v111 hasTreatmentId];
    if (v35)
    {
      v36 = [v111 treatmentId];
    }

    else
    {
      v36 = @"(unset)";
    }

    *buf = 138412546;
    *&buf[4] = v34;
    *&buf[12] = 2112;
    *&buf[14] = v36;
    _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "Mismatched treatmentId: (exp: %@, act: %@)", buf, 0x16u);
    if (v35)
    {
    }
  }

  [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:27];
  v16 = v108[2](v108, 15);
LABEL_13:

  v30 = *MEMORY[0x277D85DE8];

  return v16;
}

id __111__TRIFetchTreatmentTask__saveTreatment_experimentRecord_assetURLs_assetMetadata_context_paths_downloadOptions___block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    v9 = 134217984;
    v10 = a2;
    _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Saving treatment failed with reason: %lu", &v9, 0xCu);
  }

  v5 = [*(a1 + 32) _nextTasksForRunStatusFailureWithDeactivationReason:a2];
  v6 = [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:1 nextTasks:v5 earliestRetryDate:0];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

void __111__TRIFetchTreatmentTask__saveTreatment_experimentRecord_assetURLs_assetMetadata_context_paths_downloadOptions___block_invoke_330(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = [a2 factor];
  v7 = [v6 namespaceString];

  if (v7)
  {
    [*(a1 + 40) addObject:v7];
    v8 = [*(a1 + 48) dynamicNamespaceRecordWithNamespaceName:v7];
    if (v8 && !*(*(*(a1 + 64) + 8) + 40))
    {
      v9 = [*(a1 + 32) taskAttributing];
      v10 = [v9 applicationBundleIdentifier];
      v11 = *(*(a1 + 64) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }
  }

  else
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v15 = [*(a1 + 32) treatmentId];
      v16 = [*(a1 + 32) experiment];
      v17 = 138412546;
      v18 = v15;
      v19 = 2114;
      v20 = v16;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "factor message does not contain namespace field in treatment %@ of experiment %{public}@", &v17, 0x16u);
    }

    *a4 = 1;
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }

  v14 = *MEMORY[0x277D85DE8];
}

void __111__TRIFetchTreatmentTask__saveTreatment_experimentRecord_assetURLs_assetMetadata_context_paths_downloadOptions___block_invoke_337(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = [v6 metadata];
  v8 = [v7 treatmentIndex];

  if (!v8)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"TRIFetchTreatmentTask.m" lineNumber:253 description:{@"Expression was unexpectedly nil/false: %@", @"ra.metadata.treatmentIndex"}];
  }

  v9 = [v8 index];

  v10 = *(a1 + 40);
  v11 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v9];
  v12 = [v10 objectForKeyedSubscript:v11];

  if (v12)
  {
    v13 = *(a1 + 48);
    v14 = [v6 assetId];
    v15 = [v6 metadata];
    v16 = *(*(a1 + 64) + 8);
    obj = *(v16 + 40);
    LOBYTE(v13) = [v13 saveAssetWithIdentifier:v14 assetURL:v12 metadata:v15 error:&obj];
    objc_storeStrong((v16 + 40), obj);
    *(*(*(a1 + 56) + 8) + 32) = v13;

    if (*(*(*(a1 + 56) + 8) + 32) == 1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v17 = TRILogCategory_Server();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      v19 = [v6 assetId];
      v20 = [*(a1 + 32) treatmentId];
      *buf = 138543874;
      v24 = v19;
      v25 = 1024;
      v26 = v9;
      v27 = 2112;
      v28 = v20;
      _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Unexpected missing assetURL for assetId %{public}@ at ck index %d in treatment %@.", buf, 0x1Cu);
    }

    *(*(*(a1 + 56) + 8) + 32) = 0;
  }

  *a4 = 1;
LABEL_10:

  v18 = *MEMORY[0x277D85DE8];
}

- (unsigned)_ncvForNamespaceName:(id)a3 inExperimentRecord:(id)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v6 = [a4 namespaces];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        v12 = [v11 name];
        v13 = [v5 isEqualToString:v12];

        if (v13)
        {
          v14 = [v11 compatibilityVersion];
          goto LABEL_11;
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v14 = -1;
LABEL_11:

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)_namespaceDescriptorForNamespaceName:(id)a3 fromExperimentRecord:(id)a4 referencingFactorsURL:(id)a5
{
  v8 = a3;
  v9 = a5;
  v10 = [(TRIFetchTreatmentTask *)self _ncvForNamespaceName:v8 inExperimentRecord:a4];
  if (v10 == -1)
  {
    v13 = 0;
  }

  else
  {
    v11 = v10;
    v12 = objc_opt_new();
    [v12 setFactorsURL:v9];
    v13 = [objc_alloc(MEMORY[0x277D73750]) initWithNamespaceName:v8 downloadNCV:v11 optionalParams:v12];
  }

  return v13;
}

- (id)_fetchTreatmentWithArtifactProvider:(id)a3 experimentRecord:(id)a4 downloadOptions:(id)a5 context:(id)a6 treatment:(id *)a7 recordId:(id *)a8 treatmentFetchError:(id *)a9
{
  v63 = *MEMORY[0x277D85DE8];
  v36 = a3;
  v16 = a4;
  v37 = a5;
  v17 = a6;
  v18 = dispatch_semaphore_create(0);
  v55 = 0;
  v56 = &v55;
  v57 = 0x2020000000;
  v58 = 3;
  v49 = 0;
  v50 = &v49;
  v51 = 0x3032000000;
  v52 = __Block_byref_object_copy__53;
  v53 = __Block_byref_object_dispose__53;
  v54 = 0;
  v19 = [[TRIFetchOptions alloc] initWithDownloadOptions:v37 cacheDeleteAvailableSpaceClass:&unk_287FC4D68];
  v20 = [(TRITreatmentBaseTask *)self treatmentId];
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __141__TRIFetchTreatmentTask__fetchTreatmentWithArtifactProvider_experimentRecord_downloadOptions_context_treatment_recordId_treatmentFetchError___block_invoke;
  v38[3] = &unk_279DE4B18;
  v21 = v16;
  v39 = v21;
  v22 = v17;
  v40 = v22;
  v41 = self;
  v43 = &v55;
  v44 = &v49;
  v45 = a9;
  v46 = a7;
  v47 = a8;
  v48 = a2;
  v23 = v18;
  v42 = v23;
  v24 = [v36 fetchTreatmentWithId:v20 options:v19 completion:v38];

  [MEMORY[0x277D425A0] waitForSemaphore:v23];
  v25 = *(v56 + 6);
  if (v25 != 2)
  {
    if (v25 == 3)
    {
      v26 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatus:3];
      [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:1 nextTasks:v26 earliestRetryDate:v50[5]];
    }

    else
    {
      v26 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatusFailureWithDeactivationReason:3];
      [TRITaskRunResult resultWithRunStatus:v25 reportResultToServer:1 nextTasks:v26 earliestRetryDate:v50[5]];
    }
    v27 = ;
LABEL_13:
    v28 = v27;

    goto LABEL_14;
  }

  if (!*a7)
  {
    v29 = TRILogCategory_Server();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      v32 = [(TRITreatmentBaseTask *)self treatmentId];
      v33 = [(TRIExperimentBaseTask *)self experiment];
      v34 = [v33 shortDesc];
      *buf = 138412546;
      v60 = v32;
      v61 = 2114;
      v62 = v34;
      _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "CloudKit fetch succeeded, but a valid treatment was not obtained for treatment %@ of experiment %{public}@.", buf, 0x16u);
    }

    [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:9];
    v26 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatusFailureWithDeactivationReason:14];
    v27 = [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:1 nextTasks:v26 earliestRetryDate:0];
    goto LABEL_13;
  }

  if (!*a8)
  {
    v35 = [MEMORY[0x277CCA890] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"TRIFetchTreatmentTask.m" lineNumber:483 description:@"Decoded a treatment but failed to associate a CKRecordID"];
  }

  v28 = [TRITaskRunResult resultWithRunStatus:2 reportResultToServer:0 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:0, v36];
LABEL_14:

  _Block_object_dispose(&v49, 8);
  _Block_object_dispose(&v55, 8);

  v30 = *MEMORY[0x277D85DE8];

  return v28;
}

void __141__TRIFetchTreatmentTask__fetchTreatmentWithArtifactProvider_experimentRecord_downloadOptions_context_treatment_recordId_treatmentFetchError___block_invoke(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  v43 = *MEMORY[0x277D85DE8];
  v33 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __141__TRIFetchTreatmentTask__fetchTreatmentWithArtifactProvider_experimentRecord_downloadOptions_context_treatment_recordId_treatmentFetchError___block_invoke_2;
  v34[3] = &unk_279DE0208;
  v35 = *(a1 + 32);
  v36 = *(a1 + 40);
  v16 = MEMORY[0x2743948D0](v34);
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v24 = [MEMORY[0x277CCA890] currentHandler];
        [v24 handleFailureInMethod:*(a1 + 104) object:*(a1 + 48) file:@"TRIFetchTreatmentTask.m" lineNumber:450 description:@"Unexpected status TRIFetchStatusMoreResultsPending"];

        goto LABEL_20;
      }

      if (a2 == 4)
      {
        objc_storeStrong(*(a1 + 88), a4);
        objc_storeStrong(*(a1 + 96), a3);
        v17 = *(*(a1 + 64) + 8);
        v18 = 2;
LABEL_11:
        *(v17 + 24) = v18;
        goto LABEL_20;
      }

      goto LABEL_20;
    }

    v23 = TRILogCategory_Server();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      v27 = [*(a1 + 48) treatmentId];
      v32 = [*(a1 + 48) experiment];
      v28 = [v32 shortDesc];
      *buf = 138412802;
      v38 = v27;
      v39 = 2114;
      v40 = v28;
      v41 = 2114;
      v42 = v15;
      _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "Fetching treatment %@ of experiment %{public}@: resulted in retry-able error %{public}@", buf, 0x20u);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a6);
LABEL_19:
    objc_storeStrong(*(a1 + 80), a7);
    goto LABEL_20;
  }

  if (!a2)
  {
    v25 = TRILogCategory_Server();
    if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
    {
      v29 = [*(a1 + 48) treatmentId];
      v30 = [*(a1 + 48) experiment];
      v31 = [v30 shortDesc];
      *buf = 138412802;
      v38 = v29;
      v39 = 2114;
      v40 = v31;
      v41 = 2114;
      v42 = v15;
      _os_log_error_impl(&dword_26F567000, v25, OS_LOG_TYPE_ERROR, "Error fetching treatment %@ of experiment %{public}@: %{public}@", buf, 0x20u);
    }

    v16[2](v16, 1);
    *(*(*(a1 + 64) + 8) + 24) = 3;
    goto LABEL_19;
  }

  if (a2 == 1)
  {
    v19 = TRILogCategory_Server();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = [*(a1 + 48) treatmentId];
      v21 = [*(a1 + 48) experiment];
      v22 = [v21 shortDesc];
      *buf = 138412546;
      v38 = v20;
      v39 = 2114;
      v40 = v22;
      _os_log_impl(&dword_26F567000, v19, OS_LOG_TYPE_DEFAULT, "Cancelled fetch of treatment %@ for experiment %{public}@", buf, 0x16u);
    }

    v17 = *(*(a1 + 64) + 8);
    v18 = 4;
    goto LABEL_11;
  }

LABEL_20:
  dispatch_semaphore_signal(*(a1 + 56));

  v26 = *MEMORY[0x277D85DE8];
}

void __141__TRIFetchTreatmentTask__fetchTreatmentWithArtifactProvider_experimentRecord_downloadOptions_context_treatment_recordId_treatmentFetchError___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [*(a1 + 32) namespaces];
  v4 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = TRILogCategory_Server();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 name];
          *buf = 138543362;
          v22 = v10;
          _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "notify namespace download failed: %{public}@", buf, 0xCu);
        }

        v11 = MEMORY[0x277D73788];
        v12 = [v8 name];
        [v11 updateStatusFetchSuccess:0 forNamespaceName:v12 withContext:*(a1 + 40)];

        v13 = MEMORY[0x277D73698];
        v14 = [v8 name];
        [v13 notifyDownloadFailedForKey:v14 withError:a2];
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_fetchAssetsWithArtifactProvider:(id)a3 recordId:(id)a4 experimentRecord:(id)a5 assetIndexes:(id)a6 downloadOptions:(id)a7 context:(id)a8 assetURLs:(id *)a9 treatmentFetchError:(id *)a10
{
  v35 = a3;
  v16 = a4;
  v17 = a5;
  v18 = a6;
  v34 = a7;
  v19 = a8;
  v33 = [objc_alloc(MEMORY[0x277D736A0]) initWithAllowsCellular:0 discretionaryBehavior:0];
  v20 = [[TRIFetchOptions alloc] initWithDownloadOptions:v33 cacheDeleteAvailableSpaceClass:&unk_287FC4D68];
  v21 = dispatch_semaphore_create(0);
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 3;
  v50 = 0;
  v51 = &v50;
  v52 = 0x3032000000;
  v53 = __Block_byref_object_copy__53;
  v54 = __Block_byref_object_dispose__53;
  v55 = 0;
  v48[0] = MEMORY[0x277D85DD0];
  v48[1] = 3221225472;
  v48[2] = __151__TRIFetchTreatmentTask__fetchAssetsWithArtifactProvider_recordId_experimentRecord_assetIndexes_downloadOptions_context_assetURLs_treatmentFetchError___block_invoke;
  v48[3] = &unk_279DE4428;
  v49 = v17;
  v38[0] = MEMORY[0x277D85DD0];
  v38[1] = 3221225472;
  v38[2] = __151__TRIFetchTreatmentTask__fetchAssetsWithArtifactProvider_recordId_experimentRecord_assetIndexes_downloadOptions_context_assetURLs_treatmentFetchError___block_invoke_371;
  v38[3] = &unk_279DE4B40;
  v31 = v49;
  v39 = v31;
  v22 = v19;
  v40 = v22;
  v41 = self;
  v43 = &v56;
  v44 = &v50;
  v45 = a10;
  v46 = a9;
  v47 = a2;
  v23 = v21;
  v42 = v23;
  v36 = v18;
  v24 = v18;
  v25 = v20;
  v26 = [v35 fetchAssetsWithIndexes:v24 fromTreatmentWithRecordId:v16 options:v20 progress:v48 completion:v38];
  [MEMORY[0x277D425A0] waitForSemaphore:v23];
  v27 = *(v57 + 6);
  if (v27 == 3)
  {
    v28 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatusFailureWithDeactivationReason:19, v31];
    [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:1 nextTasks:v28 earliestRetryDate:v51[5]];
  }

  else
  {
    v28 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatus:*(v57 + 6), v31];
    [TRITaskRunResult resultWithRunStatus:v27 reportResultToServer:1 nextTasks:v28 earliestRetryDate:v51[5]];
  }
  v29 = ;

  _Block_object_dispose(&v50, 8);
  _Block_object_dispose(&v56, 8);

  return v29;
}

void __151__TRIFetchTreatmentTask__fetchAssetsWithArtifactProvider_recordId_experimentRecord_assetIndexes_downloadOptions_context_assetURLs_treatmentFetchError___block_invoke(uint64_t a1, double a2)
{
  v23 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [*(a1 + 32) namespaces];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * v7);
        v9 = TRILogCategory_Server();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v12 = [v8 name];
          *buf = 138543618;
          v19 = v12;
          v20 = 2048;
          v21 = (a2 * 100.0);
          _os_log_debug_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEBUG, "notify namespace download progress: %{public}@, %tu%%", buf, 0x16u);
        }

        v10 = MEMORY[0x277D73698];
        v11 = [v8 name];
        [v10 notifyDownloadProgressForKey:v11 withProgress:(a2 * 100.0)];

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v22 count:16];
    }

    while (v5);
  }

  v13 = *MEMORY[0x277D85DE8];
}

void __151__TRIFetchTreatmentTask__fetchAssetsWithArtifactProvider_recordId_experimentRecord_assetIndexes_downloadOptions_context_assetURLs_treatmentFetchError___block_invoke_371(uint64_t a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v38 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __151__TRIFetchTreatmentTask__fetchAssetsWithArtifactProvider_recordId_experimentRecord_assetIndexes_downloadOptions_context_assetURLs_treatmentFetchError___block_invoke_2;
  v29[3] = &unk_279DE0208;
  v30 = *(a1 + 32);
  v31 = *(a1 + 40);
  v13 = MEMORY[0x2743948D0](v29);
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        v20 = [MEMORY[0x277CCA890] currentHandler];
        [v20 handleFailureInMethod:*(a1 + 96) object:*(a1 + 48) file:@"TRIFetchTreatmentTask.m" lineNumber:550 description:@"Unexpected status TRIFetchStatusMoreResultsPending"];
      }

      else if (a2 == 4)
      {
        objc_storeStrong(*(a1 + 88), a3);
        if (v10)
        {
          v14 = 2;
        }

        else
        {
          v14 = 3;
        }

        *(*(*(a1 + 64) + 8) + 24) = v14;
      }

      goto LABEL_22;
    }

    v19 = TRILogCategory_Server();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v23 = [*(a1 + 48) treatmentId];
      v28 = [*(a1 + 48) experiment];
      v24 = [v28 shortDesc];
      *buf = 138412802;
      v33 = v23;
      v34 = 2114;
      v35 = v24;
      v36 = 2114;
      v37 = v12;
      _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "Fetching assets for treatment %@ of experiment %{public}@: resulted in retry-able error %{public}@", buf, 0x20u);
    }

    *(*(*(a1 + 64) + 8) + 24) = 1;
    objc_storeStrong((*(*(a1 + 72) + 8) + 40), a4);
LABEL_21:
    objc_storeStrong(*(a1 + 80), a5);
    goto LABEL_22;
  }

  if (!a2)
  {
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v25 = [*(a1 + 48) treatmentId];
      v26 = [*(a1 + 48) experiment];
      v27 = [v26 shortDesc];
      *buf = 138412802;
      v33 = v25;
      v34 = 2114;
      v35 = v27;
      v36 = 2114;
      v37 = v12;
      _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "Error fetching assets for treatment %@ of experiment %{public}@: %{public}@", buf, 0x20u);
    }

    v13[2](v13, 1);
    *(*(*(a1 + 64) + 8) + 24) = 3;
    goto LABEL_21;
  }

  if (a2 == 1)
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      v16 = [*(a1 + 48) treatmentId];
      v17 = [*(a1 + 48) experiment];
      v18 = [v17 shortDesc];
      *buf = 138412546;
      v33 = v16;
      v34 = 2114;
      v35 = v18;
      _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEFAULT, "Cancelled fetch of assets for treatment %@ of experiment %{public}@", buf, 0x16u);
    }

    *(*(*(a1 + 64) + 8) + 24) = 4;
  }

LABEL_22:
  dispatch_semaphore_signal(*(a1 + 56));

  v22 = *MEMORY[0x277D85DE8];
}

void __151__TRIFetchTreatmentTask__fetchAssetsWithArtifactProvider_recordId_experimentRecord_assetIndexes_downloadOptions_context_assetURLs_treatmentFetchError___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [*(a1 + 32) namespaces];
  v4 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v18;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v18 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v17 + 1) + 8 * i);
        v9 = TRILogCategory_Server();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          v10 = [v8 name];
          *buf = 138543362;
          v22 = v10;
          _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "notify namespace download failed: %{public}@", buf, 0xCu);
        }

        v11 = MEMORY[0x277D73788];
        v12 = [v8 name];
        [v11 updateStatusFetchSuccess:0 forNamespaceName:v12 withContext:*(a1 + 40)];

        v13 = MEMORY[0x277D73698];
        v14 = [v8 name];
        [v13 notifyDownloadFailedForKey:v14 withError:a2];
      }

      v5 = [obj countByEnumeratingWithState:&v17 objects:v23 count:16];
    }

    while (v5);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (id)_nextTasksForRunStatusFailureWithDeactivationReason:(unint64_t)a3
{
  v14[1] = *MEMORY[0x277D85DE8];
  v5 = [(TRIExperimentBaseTask *)self experiment];
  v6 = [v5 experimentId];
  v7 = [(TRIExperimentBaseTask *)self experiment];
  v8 = [v7 deploymentId];
  v9 = [(TRITreatmentBaseTask *)self taskAttributing];
  v10 = [TRIDeactivateTreatmentTask taskWithExperimentId:v6 deploymentId:v8 failOnUnrecognizedExperiment:0 triggerEvent:a3 taskAttribution:v9];
  v14[0] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:1];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)_addMetricForFetchTreatmentTaskError:(int)a3
{
  v4 = MEMORY[0x277D73B40];
  v5 = fetchTaskErrorAsString(a3);
  v6 = [v4 metricWithName:@"fetchtreatmenttask_error" categoricalValue:v5];

  [(TRIExperimentBaseTask *)self addMetric:v6];
}

- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4
{
  v211 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v142 = a4;
  v150 = v7;
  v8 = [v7 keyValueStore];
  v147 = [TRIFetchDateManager managerWithKeyValueStore:v8];

  v9 = [v7 experimentDatabase];
  v10 = [(TRIExperimentBaseTask *)self experiment];
  v149 = [v9 experimentRecordWithExperimentDeployment:v10];

  if (v149)
  {
    v146 = [(TRIExperimentBaseTask *)self containerForFirstNamespaceInExperimentWithContext:v7];
    v145 = [v7 paths];
    if (!v145)
    {
      v78 = TRILogCategory_Server();
      if (os_log_type_enabled(v78, OS_LOG_TYPE_ERROR))
      {
        v125 = [v146 identifier];
        *buf = 138543362;
        v202 = v125;
        _os_log_error_impl(&dword_26F567000, v78, OS_LOG_TYPE_ERROR, "Unable to fetch treatment into missing app container: %{public}@", buf, 0xCu);
      }

      [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:2];
      v79 = [(TRIExperimentBaseTask *)self experiment];
      v80 = [v79 experimentId];
      v81 = [(TRITreatmentBaseTask *)self treatmentId];
      v82 = [(TRIExperimentBaseTask *)self experiment];
      +[TRITaskUtils updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:](TRITaskUtils, "updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:", 7, v80, v81, [v82 deploymentId], v149, 0, v7);

      v141 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatusFailureWithDeactivationReason:21];
      v143 = [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:1 nextTasks:v141 earliestRetryDate:0];
      goto LABEL_101;
    }

    v11 = [v7 namespaceDatabase];
    v12 = [v7 paths];
    v13 = [v12 namespaceDescriptorsDefaultDir];
    v141 = [TRINamespaceDescriptorProvider providerWithNamespaceDatabase:v11 defaultDescriptorDirectoryPath:v13];

    v191 = 0;
    v192 = &v191;
    v193 = 0x3032000000;
    v194 = __Block_byref_object_copy__53;
    v195 = __Block_byref_object_dispose__53;
    v14 = [(TRITreatmentBaseTask *)self taskAttributing];
    v196 = [v14 applicationBundleIdentifier];

    v185 = 0;
    v186 = &v185;
    v187 = 0x3032000000;
    v188 = __Block_byref_object_copy__53;
    v189 = __Block_byref_object_dispose__53;
    v190 = 0;
    v181 = 0;
    v182 = &v181;
    v183 = 0x2020000000;
    v184 = 0;
    v15 = objc_autoreleasePoolPush();
    v16 = [v149 artifact];
    v17 = [v16 namespaces];
    v175[0] = MEMORY[0x277D85DD0];
    v175[1] = 3221225472;
    v175[2] = __55__TRIFetchTreatmentTask_runUsingContext_withTaskQueue___block_invoke;
    v175[3] = &unk_279DE4B68;
    v18 = v145;
    v178 = &v185;
    v179 = &v191;
    v176 = v18;
    v177 = self;
    v180 = &v181;
    [v17 enumerateObjectsUsingBlock:v175];

    objc_autoreleasePoolPop(v15);
    v19 = [(TRITreatmentBaseTask *)self taskAttributing];
    v20 = [v19 triCloudKitContainer];
    v21 = [(TRITreatmentBaseTask *)self taskAttributing];
    v22 = [v21 teamIdentifier];
    v140 = [TRICKNativeArtifactProvider providerForContainer:v20 teamId:v22 bundleId:v192[5] dateProvider:v147 namespaceDescriptorProvider:v141 serverContext:v150];

    v23 = [(TRITreatmentBaseTask *)self taskAttributing];
    v148 = [v23 networkOptions];

    if ([v148 allowsCellularAccess])
    {
      v24 = [MEMORY[0x277D73B40] metricWithName:@"allows_cellular_download" integerValue:{objc_msgSend(v148, "allowsCellularAccess")}];
      [(TRIExperimentBaseTask *)self addMetric:v24];
    }

    if ([v148 discretionaryBehavior])
    {
      v25 = [(TRIBaseTask *)self stateProvider];
      v26 = [v25 activeActivityDescriptorGrantingCapability:16];
      v27 = [v26 activity];
      if (v27)
      {
        [v148 setActivity:v27];
        v28 = [v25 activeActivityDescriptorGrantingCapability:1];

        v29 = [v148 allowsCellularAccess];
        if (v28)
        {
          v30 = 0;
        }

        else
        {
          v30 = v29;
        }

        if (v30 != 1 || (v31 = v192[5]) != 0 && [v31 length] && (v182[3] & 1) != 0)
        {

          goto LABEL_15;
        }

        v95 = TRILogCategory_Server();
        if (os_log_type_enabled(v95, OS_LOG_TYPE_ERROR))
        {
          v126 = [(TRITreatmentBaseTask *)self treatmentId];
          v127 = [v149 experimentDeployment];
          v128 = [v127 experimentId];
          v144 = [v149 namespaces];
          v129 = [v144 firstObject];
          v130 = [v129 name];
          v131 = v130;
          v132 = v192[5];
          if (*(v182 + 24))
          {
            v133 = @"YES";
          }

          else
          {
            v133 = @"NO";
          }

          *buf = 138413314;
          v202 = v126;
          v203 = 2114;
          v204 = v128;
          v205 = 2114;
          v206 = v130;
          v207 = 2114;
          v208 = v132;
          v209 = 2114;
          v210 = v133;
          _os_log_error_impl(&dword_26F567000, v95, OS_LOG_TYPE_ERROR, "preventing fetch of treatment %@ on cellular for experiment %{public}@ namespace %{public}@, resourceAttributionBundleIdentifier: %{public}@ expensiveNetworkingAllowed: %{public}@", buf, 0x34u);
        }

        [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:23];
        v94 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatus:1];
        v143 = [TRITaskRunResult resultWithRunStatus:1 reportResultToServer:0 nextTasks:v94 earliestRetryDate:0];
      }

      else
      {
        v93 = TRILogCategory_Server();
        if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_26F567000, v93, OS_LOG_TYPE_DEFAULT, "no xpc activity designated for discretionary operation, failing with retry", buf, 2u);
        }

        [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:3];
        v94 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatus:1];
        v143 = [TRITaskRunResult resultWithRunStatus:1 reportResultToServer:1 nextTasks:v94 earliestRetryDate:0];
      }

LABEL_100:
      _Block_object_dispose(&v181, 8);
      _Block_object_dispose(&v185, 8);

      _Block_object_dispose(&v191, 8);
LABEL_101:

      goto LABEL_102;
    }

LABEL_15:
    v173 = 0;
    v174 = 0;
    v172 = 0;
    v171 = [(TRIFetchTreatmentTask *)self _fetchTreatmentWithArtifactProvider:v140 experimentRecord:v149 downloadOptions:v148 context:v150 treatment:&v173 recordId:&v174 treatmentFetchError:&v172];
    if ([v171 runStatus] != 2)
    {
      if (v172)
      {
        self->wasDeferred = [TRICKNativeArtifactProvider isActivityDeferralError:?];
        v83 = TRIFetchErrorParseToMetrics(v172);
        if ([v83 count])
        {
          v169 = 0u;
          v170 = 0u;
          v167 = 0u;
          v168 = 0u;
          v84 = v83;
          v85 = [v84 countByEnumeratingWithState:&v167 objects:v200 count:16];
          if (v85)
          {
            v86 = *v168;
            do
            {
              for (i = 0; i != v85; ++i)
              {
                if (*v168 != v86)
                {
                  objc_enumerationMutation(v84);
                }

                [(TRIExperimentBaseTask *)self addMetric:*(*(&v167 + 1) + 8 * i)];
              }

              v85 = [v84 countByEnumeratingWithState:&v167 objects:v200 count:16];
            }

            while (v85);
          }
        }
      }

      if ([v171 runStatus] == 3)
      {
        v88 = [(TRIExperimentBaseTask *)self experiment];
        v89 = [v88 experimentId];
        v90 = [(TRITreatmentBaseTask *)self treatmentId];
        v91 = [(TRIExperimentBaseTask *)self experiment];
        +[TRITaskUtils updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:](TRITaskUtils, "updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:", 7, v89, v90, [v91 deploymentId], v149, 0, v150);
      }

      v92 = v171;
      v143 = v92;
      goto LABEL_99;
    }

    if (!v173)
    {
      v134 = [MEMORY[0x277CCA890] currentHandler];
      [v134 handleFailureInMethod:a2 object:self file:@"TRIFetchTreatmentTask.m" lineNumber:724 description:{@"Invalid parameter not satisfying: %@", @"treatment"}];
    }

    if (!v174)
    {
      v135 = [MEMORY[0x277CCA890] currentHandler];
      [v135 handleFailureInMethod:a2 object:self file:@"TRIFetchTreatmentTask.m" lineNumber:725 description:{@"Invalid parameter not satisfying: %@", @"treatmentRecordId"}];
    }

    v138 = objc_opt_new();
    v32 = [[TRIAssetStore alloc] initWithPaths:v18];
    v33 = v173;
    v34 = v186[5];
    v35 = [v150 keyValueStore];
    v36 = [TRINamespaceFactorSubscriptionSettings settingsWithKeyValueStore:v35];
    v37 = [TRIClientFactorPackUtils aliasesInNamespace:v186[5]];
    v139 = [v33 requiredAssetsForInstallationForNamespace:v34 assetStore:v32 maProvider:v138 subscriptionSettings:v36 aliasToUnaliasMap:v37];

    if (!v139)
    {
      [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:5];
      v96 = [(TRIExperimentBaseTask *)self experiment];
      v97 = [v96 experimentId];
      v98 = [(TRITreatmentBaseTask *)self treatmentId];
      v99 = [(TRIExperimentBaseTask *)self experiment];
      +[TRITaskUtils updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:](TRITaskUtils, "updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:", 7, v97, v98, [v99 deploymentId], v149, 0, v150);

      v100 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatusFailureWithDeactivationReason:22];
      v143 = [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:1 nextTasks:v100 earliestRetryDate:0];
LABEL_98:

      v92 = v171;
LABEL_99:

      goto LABEL_100;
    }

    v38 = TRILogCategory_Server();
    if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
    {
      v39 = [v139 cloudKit];
      v40 = [v39 count];
      v41 = [v139 mobileAsset];
      v42 = [v41 count];
      v43 = [(TRITreatmentBaseTask *)self treatmentId];
      *buf = 134218498;
      v202 = v40;
      v203 = 2048;
      v204 = v42;
      v205 = 2114;
      v206 = v43;
      _os_log_impl(&dword_26F567000, v38, OS_LOG_TYPE_DEFAULT, "Found %lu required CK assets and %lu required MA assets for treatment %{public}@", buf, 0x20u);
    }

    v44 = objc_opt_new();
    v45 = [v139 cloudKit];
    v164[0] = MEMORY[0x277D85DD0];
    v164[1] = 3221225472;
    v164[2] = __55__TRIFetchTreatmentTask_runUsingContext_withTaskQueue___block_invoke_397;
    v164[3] = &unk_279DE4B90;
    v164[4] = self;
    v137 = v44;
    v165 = v137;
    v166 = a2;
    [v45 enumerateObjectsUsingBlock:v164];

    v46 = TRILogCategory_Server();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = [(TRITreatmentBaseTask *)self treatmentId];
      v48 = [(TRIExperimentBaseTask *)self experiment];
      v49 = [v48 shortDesc];
      v50 = [v137 count];
      *buf = 138412802;
      v202 = v47;
      v203 = 2114;
      v204 = v49;
      v205 = 2048;
      v206 = v50;
      _os_log_impl(&dword_26F567000, v46, OS_LOG_TYPE_DEFAULT, "Treatment %@ of experiment %{public}@ references %tu assets which are required for enrollment and are not already on disk.", buf, 0x20u);
    }

    v163 = 0;
    v51 = v172;
    v172 = 0;

    v52 = [(TRIFetchTreatmentTask *)self _fetchAssetsWithArtifactProvider:v140 recordId:v174 experimentRecord:v149 assetIndexes:v137 downloadOptions:v148 context:v150 assetURLs:&v163 treatmentFetchError:&v172];
    v53 = v171;
    v171 = v52;

    if ([v171 runStatus] == 2)
    {
      if (!v163)
      {
        v136 = [MEMORY[0x277CCA890] currentHandler];
        [v136 handleFailureInMethod:a2 object:self file:@"TRIFetchTreatmentTask.m" lineNumber:782 description:{@"Invalid parameter not satisfying: %@", @"assetURLs"}];
      }

      v54 = v172;
      v172 = 0;

      v55 = [v139 mobileAsset];
      v56 = [v149 namespaces];
      v57 = [v56 firstObject];
      v58 = [v57 name];
      v59 = [(TRIFetchTreatmentTask *)self _downloadAndSaveMAAssets:v55 options:v148 downloadNotificationKey:v58 context:v150 errorResult:&v171 fetchError:&v172];

      if (v59 && [v171 runStatus] == 2)
      {
        v143 = [(TRIFetchTreatmentTask *)self _saveTreatment:v173 experimentRecord:v149 assetURLs:v163 assetMetadata:v139 context:v150 paths:v18 downloadOptions:v148];
        if ([v143 runStatus] == 2)
        {
          [v163 enumerateKeysAndObjectsUsingBlock:&__block_literal_global_40];
          v153 = 0u;
          v154 = 0u;
          v151 = 0u;
          v152 = 0u;
          v60 = [v149 namespaces];
          v61 = [v60 countByEnumeratingWithState:&v151 objects:v197 count:16];
          if (v61)
          {
            v62 = *v152;
            do
            {
              for (j = 0; j != v61; ++j)
              {
                if (*v152 != v62)
                {
                  objc_enumerationMutation(v60);
                }

                v64 = *(*(&v151 + 1) + 8 * j);
                v65 = TRILogCategory_Server();
                if (os_log_type_enabled(v65, OS_LOG_TYPE_DEFAULT))
                {
                  v66 = [v64 name];
                  *buf = 138543362;
                  v202 = v66;
                  _os_log_impl(&dword_26F567000, v65, OS_LOG_TYPE_DEFAULT, "notify namespace download completed: %{public}@", buf, 0xCu);
                }

                v67 = MEMORY[0x277D73698];
                v68 = [v64 name];
                [v67 notifyDownloadCompletedForKey:v68];
              }

              v61 = [v60 countByEnumeratingWithState:&v151 objects:v197 count:16];
            }

            while (v61);
          }

          v69 = [(TRIExperimentBaseTask *)self experiment];
          v70 = [v69 experimentId];
          v71 = [(TRITreatmentBaseTask *)self treatmentId];
          v72 = [(TRIExperimentBaseTask *)self experiment];
          +[TRITaskUtils updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:](TRITaskUtils, "updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:", 4, v70, v71, [v72 deploymentId], v149, 0, v150);
          goto LABEL_107;
        }

        if ([v143 runStatus] == 3)
        {
          v69 = [(TRIExperimentBaseTask *)self experiment];
          v70 = [v69 experimentId];
          v71 = [(TRITreatmentBaseTask *)self treatmentId];
          v72 = [(TRIExperimentBaseTask *)self experiment];
          +[TRITaskUtils updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:](TRITaskUtils, "updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:", 7, v70, v71, [v72 deploymentId], v149, 0, v150);
LABEL_107:
        }

LABEL_97:

        v100 = v137;
        goto LABEL_98;
      }

      if (v172)
      {
        v110 = TRIFetchErrorParseToMetrics(v172);
        if ([v110 count])
        {
          v157 = 0u;
          v158 = 0u;
          v155 = 0u;
          v156 = 0u;
          v111 = v110;
          v112 = [v111 countByEnumeratingWithState:&v155 objects:v198 count:16];
          if (v112)
          {
            v113 = *v156;
            do
            {
              for (k = 0; k != v112; ++k)
              {
                if (*v156 != v113)
                {
                  objc_enumerationMutation(v111);
                }

                [(TRIExperimentBaseTask *)self addMetric:*(*(&v155 + 1) + 8 * k)];
              }

              v112 = [v111 countByEnumeratingWithState:&v155 objects:v198 count:16];
            }

            while (v112);
          }
        }
      }

      v115 = TRILogCategory_Server();
      if (os_log_type_enabled(v115, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v202 = v172;
        _os_log_error_impl(&dword_26F567000, v115, OS_LOG_TYPE_ERROR, "Failed to download MA treatment assets: %@", buf, 0xCu);
      }

      if ([v171 runStatus] == 3)
      {
        v116 = [(TRIExperimentBaseTask *)self experiment];
        v117 = [v116 experimentId];
        v118 = [(TRITreatmentBaseTask *)self treatmentId];
        v119 = [(TRIExperimentBaseTask *)self experiment];
        +[TRITaskUtils updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:](TRITaskUtils, "updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:", 7, v117, v118, [v119 deploymentId], v149, 0, v150);
      }
    }

    else
    {
      if (v172)
      {
        v101 = TRIFetchErrorParseToMetrics(v172);
        if ([v101 count])
        {
          v161 = 0u;
          v162 = 0u;
          v159 = 0u;
          v160 = 0u;
          v102 = v101;
          v103 = [v102 countByEnumeratingWithState:&v159 objects:v199 count:16];
          if (v103)
          {
            v104 = *v160;
            do
            {
              for (m = 0; m != v103; ++m)
              {
                if (*v160 != v104)
                {
                  objc_enumerationMutation(v102);
                }

                [(TRIExperimentBaseTask *)self addMetric:*(*(&v159 + 1) + 8 * m)];
              }

              v103 = [v102 countByEnumeratingWithState:&v159 objects:v199 count:16];
            }

            while (v103);
          }
        }
      }

      if ([v171 runStatus] == 3)
      {
        v106 = [(TRIExperimentBaseTask *)self experiment];
        v107 = [v106 experimentId];
        v108 = [(TRITreatmentBaseTask *)self treatmentId];
        v109 = [(TRIExperimentBaseTask *)self experiment];
        +[TRITaskUtils updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:](TRITaskUtils, "updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:", 7, v107, v108, [v109 deploymentId], v149, 0, v150);
      }
    }

    v143 = v171;
    goto LABEL_97;
  }

  v73 = TRILogCategory_Server();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
  {
    v122 = [(TRIExperimentBaseTask *)self experiment];
    v123 = [v122 shortDesc];
    v124 = [(TRITreatmentBaseTask *)self treatmentId];
    *buf = 138543618;
    v202 = v123;
    v203 = 2112;
    v204 = v124;
    _os_log_error_impl(&dword_26F567000, v73, OS_LOG_TYPE_ERROR, "Unable to look up experiment %{public}@ associated with treatment %@.", buf, 0x16u);
  }

  [(TRIFetchTreatmentTask *)self _addMetricForFetchTreatmentTaskError:2];
  v74 = [(TRIExperimentBaseTask *)self experiment];
  v75 = [v74 experimentId];
  v76 = [(TRITreatmentBaseTask *)self treatmentId];
  v77 = [(TRIExperimentBaseTask *)self experiment];
  +[TRITaskUtils updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:](TRITaskUtils, "updateExperimentHistoryDatabaseWithAllocationStatus:forExperiment:treatment:deployment:experimentRecord:isBecomingObsolete:context:", 7, v75, v76, [v77 deploymentId], 0, 0, v7);

  v146 = [(TRIFetchTreatmentTask *)self _nextTasksForRunStatusFailureWithDeactivationReason:3];
  v143 = [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:0 nextTasks:v146 earliestRetryDate:0];
LABEL_102:

  v120 = *MEMORY[0x277D85DE8];

  return v143;
}

void __55__TRIFetchTreatmentTask_runUsingContext_withTaskQueue___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = MEMORY[0x277D73750];
  v9 = [*(a1 + 32) namespaceDescriptorsDefaultDir];
  v10 = [v8 loadWithNamespaceName:v7 fromDirectory:v9];

  objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
  v11 = [v10 resourceAttributionIdentifier];

  if (v11)
  {
    v12 = [v10 resourceAttributionIdentifier];
    v13 = *(*(a1 + 56) + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
    {
      v16 = [*(a1 + 40) treatmentId];
      v17 = *(*(*(a1 + 56) + 8) + 40);
      v19 = 138412546;
      v20 = v16;
      v21 = 2114;
      v22 = v17;
      _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_INFO, "attributing treatment fetch for %@ to %{public}@", &v19, 0x16u);
    }

    *(*(*(a1 + 64) + 8) + 24) = [v10 expensiveNetworkingAllowed];
    *a4 = 1;
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __55__TRIFetchTreatmentTask_runUsingContext_withTaskQueue___block_invoke_397(uint64_t a1, void *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = [*(a1 + 32) treatmentId];
    v6 = [v3 assetId];
    *buf = 138412546;
    v13 = v5;
    v14 = 2114;
    v15 = v6;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Treatment %@ requires asset %{public}@ which is not already on disk; will be downloaded.", buf, 0x16u);
  }

  v7 = *(a1 + 40);
  v8 = [v3 metadata];
  v9 = [v8 treatmentIndex];

  if (!v9)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRIFetchTreatmentTask.m" lineNumber:748 description:{@"Expression was unexpectedly nil/false: %@", @"ra.metadata.treatmentIndex"}];
  }

  [v7 addIndex:{objc_msgSend(v9, "index")}];

  v10 = *MEMORY[0x277D85DE8];
}

void __55__TRIFetchTreatmentTask_runUsingContext_withTaskQueue___block_invoke_401(uint64_t a1, uint64_t a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v11 = 0;
  v4 = *MEMORY[0x277CBE838];
  v10 = 0;
  v5 = [v3 getResourceValue:&v11 forKey:v4 error:&v10];
  v6 = v11;
  v7 = v10;
  if ((v5 & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = v3;
      v14 = 2114;
      v15 = v7;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "failed fetching file size for url %@ error %{public}@", buf, 0x16u);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (id)_asPersistedTask
{
  v3 = objc_opt_new();
  v4 = [(TRIExperimentBaseTask *)self experiment];
  v5 = [v4 experimentId];
  [v3 setExperimentId:v5];

  v6 = [(TRIExperimentBaseTask *)self experiment];
  [v3 setDeploymentId:{objc_msgSend(v6, "deploymentId")}];

  v7 = [(TRITreatmentBaseTask *)self treatmentId];
  [v3 setTreatmentId:v7];

  v8 = [(TRITreatmentBaseTask *)self taskAttributing];
  v9 = [v8 asPersistedTaskAttribution];
  [v3 setTaskAttribution:v9];

  [v3 setRetryCount:{-[TRIFetchTreatmentTask retryCount](self, "retryCount")}];
  v10 = [(TRITaskCapabilityModifier *)self->_capabilityModifier asPersistedModifier];
  [v3 setCapabilityModifier:v10];

  return v3;
}

- (id)serialize
{
  v4 = [(TRIFetchTreatmentTask *)self _asPersistedTask];
  v5 = [v4 data];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"TRIFetchTreatmentTask.m" lineNumber:853 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return v5;
}

+ (id)parseFromData:(id)a3
{
  v45 = *MEMORY[0x277D85DE8];
  v42 = 0;
  v3 = [(TRIPBMessage *)TRIFetchTreatmentPersistedTask parseFromData:a3 error:&v42];
  v4 = v42;
  if (!v3)
  {
    v10 = TRILogCategory_Server();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
LABEL_32:
      v34 = 0;
      goto LABEL_33;
    }

    *buf = 138543362;
    v44 = v4;
    v19 = "Unable to parse buffer as TRIFetchTreatmentPersistedTask: %{public}@";
    v20 = v10;
    v21 = 12;
LABEL_14:
    _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, v19, buf, v21);
    goto LABEL_32;
  }

  if (([v3 hasExperimentId] & 1) == 0)
  {
    v22 = TRILogCategory_Server();
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      v31 = objc_opt_class();
      v32 = NSStringFromClass(v31);
      *buf = 138412290;
      v44 = v32;
      _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: experimentId", buf, 0xCu);
    }

    v10 = TRILogCategory_Server();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v23 = objc_opt_class();
    v24 = NSStringFromClass(v23);
    *buf = 138412290;
    v44 = v24;
    v25 = "Cannot decode message of type %@ with missing field: experimentId";
    goto LABEL_31;
  }

  v5 = [v3 experimentId];
  v6 = [v5 length];

  if (!v6)
  {
    v10 = TRILogCategory_Server();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v26 = objc_opt_class();
    v24 = NSStringFromClass(v26);
    *buf = 138412290;
    v44 = v24;
    v25 = "Cannot decode message of type %@ with field of length 0: experimentId";
LABEL_31:
    _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, v25, buf, 0xCu);

    goto LABEL_32;
  }

  if (([v3 hasTreatmentId] & 1) == 0)
  {
    v27 = TRILogCategory_Server();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      v37 = objc_opt_class();
      v38 = NSStringFromClass(v37);
      *buf = 138412290;
      v44 = v38;
      _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Cannot decode message of type %@ with missing field: treatmentId", buf, 0xCu);
    }

    v10 = TRILogCategory_Server();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v28 = objc_opt_class();
    v24 = NSStringFromClass(v28);
    *buf = 138412290;
    v44 = v24;
    v25 = "Cannot decode message of type %@ with missing field: treatmentId";
    goto LABEL_31;
  }

  v7 = [v3 treatmentId];
  v8 = [v7 length];

  if (!v8)
  {
    v10 = TRILogCategory_Server();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v29 = objc_opt_class();
    v24 = NSStringFromClass(v29);
    *buf = 138412290;
    v44 = v24;
    v25 = "Cannot decode message of type %@ with field of length 0: treatmentId";
    goto LABEL_31;
  }

  if (([v3 hasDeploymentId] & 1) == 0)
  {
    v10 = TRILogCategory_Server();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v30 = objc_opt_class();
    v24 = NSStringFromClass(v30);
    *buf = 138412290;
    v44 = v24;
    v25 = "Cannot decode message of type %@ with missing field: deploymentId";
    goto LABEL_31;
  }

  if (([v3 hasTaskAttribution] & 1) == 0)
  {
    v10 = TRILogCategory_Server();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    v33 = objc_opt_class();
    v24 = NSStringFromClass(v33);
    *buf = 138412290;
    v44 = v24;
    v25 = "Cannot decode message of type %@ with missing field: taskAttribution";
    goto LABEL_31;
  }

  if ([v3 deploymentId] == -1)
  {
    v10 = TRILogCategory_Server();
    if (!os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_32;
    }

    *buf = 0;
    v19 = "TRIFetchTreatmentPersistedTask encodes unspecified deploymentId.";
    v20 = v10;
    v21 = 2;
    goto LABEL_14;
  }

  v9 = [v3 taskAttribution];
  v10 = [TRITaskAttributionInternalInsecure taskAttributionFromPersistedTask:v9];

  if (v10)
  {
    v11 = objc_alloc(MEMORY[0x277D736C0]);
    v12 = [v3 experimentId];
    v13 = [v11 initWithExperimentId:v12 deploymentId:{objc_msgSend(v3, "deploymentId")}];

    if ([v3 hasCapabilityModifier])
    {
      v14 = [TRITaskCapabilityModifier alloc];
      v15 = [v3 capabilityModifier];
      v16 = [v15 add];
      v17 = [v3 capabilityModifier];
      v18 = -[TRITaskCapabilityModifier initWithAdd:remove:](v14, "initWithAdd:remove:", v16, [v17 remove]);
    }

    else
    {
      v18 = objc_opt_new();
    }

    v39 = objc_opt_class();
    v40 = [v3 treatmentId];
    v34 = [v39 taskWithExperiment:v13 treatmentId:v40 taskAttributing:v10 capabilityModifier:v18];

    if ([v3 hasRetryCount])
    {
      v41 = [v3 retryCount];
    }

    else
    {
      v41 = 0;
    }

    [v34 setRetryCount:v41];
  }

  else
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "invalid de-serialized TRITaskAttribution pb message", buf, 2u);
    }

    v34 = 0;
  }

LABEL_33:
  v35 = *MEMORY[0x277D85DE8];

  return v34;
}

- (unint64_t)requiredCapabilities
{
  v3 = [(TRITreatmentBaseTask *)self taskAttributing];
  v4 = [v3 networkOptions];
  v5 = [v4 requiredCapability];
  v9.receiver = self;
  v9.super_class = TRIFetchTreatmentTask;
  v6 = [(TRIBaseTask *)&v9 requiredCapabilities]| v5;
  v7 = v6 | (4 * ([(TRIFetchTreatmentTask *)self retryCount]> 0));

  return [(TRITaskCapabilityModifier *)self->_capabilityModifier updateCapability:v7];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(TRIExperimentBaseTask *)self experiment];
  v6 = [v5 shortDesc];
  v7 = [(TRITreatmentBaseTask *)self treatmentId];
  v8 = [(TRITreatmentBaseTask *)self taskAttributing];
  v9 = [v8 applicationBundleIdentifier];
  v10 = [v3 stringWithFormat:@"<%@:%@, %@, %@, r:%d>", v4, v6, v7, v9, -[TRIFetchTreatmentTask retryCount](self, "retryCount")];

  return v10;
}

- (TRIFetchTreatmentTask)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRIFetchTreatmentTask;
  v5 = [(TRIFetchTreatmentTask *)&v9 init];
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
    [v6 handleFailureInMethod:a2 object:self file:@"TRIFetchTreatmentTask.m" lineNumber:907 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  v5 = [(TRIFetchTreatmentTask *)self serialize];
  [v7 encodeObject:v5 forKey:@"pb"];
}

@end