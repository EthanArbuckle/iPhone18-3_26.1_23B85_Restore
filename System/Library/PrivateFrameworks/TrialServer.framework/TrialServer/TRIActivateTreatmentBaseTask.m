@interface TRIActivateTreatmentBaseTask
- (BOOL)_experimentRecord:(id)a3 hasConflictWithExperimentsInDatabase:(id)a4 conflictEndTime:(id *)a5;
- (BOOL)_writeNamespaceDescriptorsWithPaths:(id)a3 toTreatmentLayer:(unint64_t)a4 forExperiment:(id)a5 treatmentURLs:(id)a6 context:(id)a7;
- (BOOL)isEqual:(id)a3;
- (TRIActivateTreatmentBaseTask)initWithExperiment:(id)a3 treatmentId:(id)a4 taskAttributing:(id)a5 requiresTreatmentInstallation:(BOOL)a6;
- (id)_nextTasksForRunStatus:(int)a3;
- (id)runTaskUsingContext:(id)a3;
- (id)runTaskUsingContext:(id)a3 experiment:(id)a4;
- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4;
- (unint64_t)hash;
- (void)runDequeueHandlerUsingContext:(id)a3;
- (void)runEnqueueHandlerUsingContext:(id)a3;
@end

@implementation TRIActivateTreatmentBaseTask

- (TRIActivateTreatmentBaseTask)initWithExperiment:(id)a3 treatmentId:(id)a4 taskAttributing:(id)a5 requiresTreatmentInstallation:(BOOL)a6
{
  v8.receiver = self;
  v8.super_class = TRIActivateTreatmentBaseTask;
  result = [(TRITreatmentBaseTask *)&v8 initWithExperiment:a3 treatmentId:a4 taskAttributing:a5];
  if (result)
  {
    result->_requiresTreatmentInstallation = a6;
  }

  return result;
}

- (void)runEnqueueHandlerUsingContext:(id)a3
{
  v4 = a3;
  v5 = [(TRIExperimentBaseTask *)self experiment];
  v6 = [TRIContentTracker contentIdentifierForExperimentArtifactWithDeployment:v5];

  v7 = [v4 contentTracker];
  [v7 addRefWithContentIdentifier:v6];

  v11 = [(TRIExperimentBaseTask *)self containerForFirstNamespaceInExperimentWithContext:v4];
  v8 = [(TRITreatmentBaseTask *)self treatmentId];
  v9 = [TRIContentTracker contentIdentifierForTreatmentArtifactWithTreatmentId:v8 container:v11];

  v10 = [v4 contentTracker];

  [v10 addRefWithContentIdentifier:v9];
}

- (void)runDequeueHandlerUsingContext:(id)a3
{
  v22 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(TRIExperimentBaseTask *)self containerForFirstNamespaceInExperimentWithContext:v4];
  v6 = [(TRITreatmentBaseTask *)self treatmentId];
  v7 = [TRIContentTracker contentIdentifierForTreatmentArtifactWithTreatmentId:v6 container:v5];

  v8 = [v4 contentTracker];
  v9 = [v8 dropRefWithContentIdentifier:v7];

  if ((v9 & 1) == 0)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v17 = [(TRITreatmentBaseTask *)self treatmentId];
      v20 = 138412290;
      v21 = v17;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Failed to drop reference on artifact for treatment %@.", &v20, 0xCu);
    }
  }

  v11 = [(TRIExperimentBaseTask *)self experiment];
  v12 = [TRIContentTracker contentIdentifierForExperimentArtifactWithDeployment:v11];

  v13 = [v4 contentTracker];
  v14 = [v13 dropRefWithContentIdentifier:v12];

  if ((v14 & 1) == 0)
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [(TRIExperimentBaseTask *)self experiment];
      v19 = [v18 shortDesc];
      v20 = 138543362;
      v21 = v19;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Failed to drop reference on artifact for experiment %{public}@.", &v20, 0xCu);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (BOOL)_experimentRecord:(id)a3 hasConflictWithExperimentsInDatabase:(id)a4 conflictEndTime:(id *)a5
{
  v81 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = [v9 namespaces];
  v12 = objc_opt_new();
  v13 = [v11 _pas_leftFoldWithInitialObject:v12 accumulate:&__block_literal_global_37];

  v69 = 0;
  v70 = &v69;
  v71 = 0x2020000000;
  v72 = 0;
  v63 = 0;
  v64 = &v63;
  v65 = 0x3032000000;
  v66 = __Block_byref_object_copy__43;
  v67 = __Block_byref_object_dispose__43;
  v68 = 0;
  v57 = 0;
  v58 = &v57;
  v59 = 0x3032000000;
  v60 = __Block_byref_object_copy__43;
  v61 = __Block_byref_object_dispose__43;
  v62 = 0;
  v51 = 0;
  v52 = &v51;
  v53 = 0x3032000000;
  v54 = __Block_byref_object_copy__43;
  v55 = __Block_byref_object_dispose__43;
  v56 = 0;
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __103__TRIActivateTreatmentBaseTask__experimentRecord_hasConflictWithExperimentsInDatabase_conflictEndTime___block_invoke_39;
  v42[3] = &unk_279DE3B10;
  v14 = v9;
  v43 = v14;
  v46 = &v63;
  v15 = v13;
  v47 = &v69;
  v48 = &v57;
  v49 = &v51;
  v50 = a2;
  v44 = v15;
  v45 = self;
  v16 = MEMORY[0x2743948D0](v42);
  v17 = objc_autoreleasePoolPush();
  v18 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{&unk_287FC4C78, &unk_287FC4C90, 0}];
  objc_autoreleasePoolPop(v17);
  if (([v10 enumerateExperimentRecordsMatchingStatuses:v18 block:v16] & 1) == 0)
  {
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      v31 = [v14 experimentDeployment];
      v32 = [v31 shortDesc];
      *buf = 138543362;
      v74 = v32;
      _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "unable to check if treatment can be activated for %{public}@", buf, 0xCu);
    }

    v22 = [MEMORY[0x277CBEAA8] now];
    goto LABEL_13;
  }

  if (*(v70 + 24) != 1)
  {
    v23 = 0;
    goto LABEL_16;
  }

  if (!v58[5])
  {
    v35 = [MEMORY[0x277CCA890] currentHandler];
    [v35 handleFailureInMethod:a2 object:self file:@"TRIActivateTreatmentBaseTask.m" lineNumber:169 description:@"detected a conflict but experiment id is nil"];
  }

  if (!v52[5])
  {
    v26 = *a5;
    *a5 = 0;

    v20 = TRILogCategory_Server();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      v38 = [v14 treatmentId];
      v40 = [v14 experimentDeployment];
      v27 = [v40 shortDesc];
      v28 = [v64[5] firstObject];
      v29 = [v28 name];
      v30 = v58[5];
      *buf = 138413058;
      v74 = v38;
      v75 = 2114;
      v76 = v27;
      v77 = 2114;
      v78 = v29;
      v79 = 2114;
      v80 = v30;
      _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "cannot activate treatment %@ for %{public}@: namespace %{public}@ is currently used in experiment %{public}@ which has no end date", buf, 0x2Au);
    }

    goto LABEL_14;
  }

  v19 = TRILogCategory_Server();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v39 = [v14 treatmentId];
    v41 = [v14 experimentDeployment];
    v36 = [v41 shortDesc];
    v37 = [v64[5] firstObject];
    v33 = [v37 name];
    v34 = [v58[5] shortDesc];
    *buf = 138413058;
    v74 = v39;
    v75 = 2114;
    v76 = v36;
    v77 = 2114;
    v78 = v33;
    v79 = 2112;
    v80 = v34;
    _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "cannot activate treatment %@ for experiment %{public}@: namespace %{public}@ is currently used in experiment %@", buf, 0x2Au);
  }

  if ([v14 type] != 1)
  {
    v22 = v52[5];
LABEL_13:
    v20 = *a5;
    *a5 = v22;
    goto LABEL_14;
  }

  v20 = *a5;
  *a5 = 0;
LABEL_14:

  v23 = 1;
LABEL_16:

  _Block_object_dispose(&v51, 8);
  _Block_object_dispose(&v57, 8);

  _Block_object_dispose(&v63, 8);
  _Block_object_dispose(&v69, 8);

  v24 = *MEMORY[0x277D85DE8];
  return v23;
}

id __103__TRIActivateTreatmentBaseTask__experimentRecord_hasConflictWithExperimentsInDatabase_conflictEndTime___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = [a3 name];
  [v4 addObject:v5];

  return v4;
}

void __103__TRIActivateTreatmentBaseTask__experimentRecord_hasConflictWithExperimentsInDatabase_conflictEndTime___block_invoke_39(uint64_t a1, void *a2, _BYTE *a3)
{
  v47 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 experimentDeployment];
  v7 = [v6 experimentId];
  v8 = [*(a1 + 32) experimentDeployment];
  v9 = [v8 experimentId];
  v10 = [v7 isEqualToString:v9];

  if ((v10 & 1) == 0)
  {
    v11 = [v5 namespaces];

    if (v11)
    {
      v12 = [v5 namespaces];
      v41[0] = MEMORY[0x277D85DD0];
      v41[1] = 3221225472;
      v41[2] = __103__TRIActivateTreatmentBaseTask__experimentRecord_hasConflictWithExperimentsInDatabase_conflictEndTime___block_invoke_40;
      v41[3] = &unk_279DE0E60;
      v42 = *(a1 + 40);
      v13 = [v12 _pas_filteredArrayWithTest:v41];
      v14 = *(*(a1 + 56) + 8);
      v15 = *(v14 + 40);
      *(v14 + 40) = v13;

      if ([*(*(*(a1 + 56) + 8) + 40) count] && objc_msgSend(v5, "type") == 1 && objc_msgSend(v5, "status") == 1 && objc_msgSend(v5, "experimentType") != 1)
      {
        *(*(*(a1 + 64) + 8) + 24) = 1;
        v16 = [v5 endDate];

        if (v16)
        {
          v17 = *(*(*(a1 + 80) + 8) + 40);
          if (!v17 || ([v5 endDate], v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v17, "compare:", v18), v18, v19 == -1))
          {
            v24 = [v5 experimentDeployment];
            v25 = *(*(a1 + 72) + 8);
            v26 = *(v25 + 40);
            *(v25 + 40) = v24;

            v27 = [v5 endDate];
            v28 = *(*(a1 + 80) + 8);
            v29 = *(v28 + 40);
            *(v28 + 40) = v27;
          }

          else if (!*(*(*(a1 + 80) + 8) + 40))
          {
            v20 = [MEMORY[0x277CCA890] currentHandler];
            [v20 handleFailureInMethod:*(a1 + 88) object:*(a1 + 48) file:@"TRIActivateTreatmentBaseTask.m" lineNumber:150 description:@"expected end date of conflicting experiment to be non-nil here"];
          }
        }

        else
        {
          v30 = TRILogCategory_Server();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
          {
            v37 = [v5 experimentDeployment];
            v38 = [v37 shortDesc];
            v39 = [*(a1 + 32) experimentDeployment];
            v40 = [v39 shortDesc];
            *buf = 138412546;
            v44 = v38;
            v45 = 2112;
            v46 = v40;
            _os_log_error_impl(&dword_26F567000, v30, OS_LOG_TYPE_ERROR, "active experiment %@ has no end date, which prevents treatment for %@ from getting activated", buf, 0x16u);
          }

          v31 = [v5 experimentDeployment];
          v32 = *(*(a1 + 72) + 8);
          v33 = *(v32 + 40);
          *(v32 + 40) = v31;

          v34 = *(*(a1 + 80) + 8);
          v35 = *(v34 + 40);
          *(v34 + 40) = 0;

          *a3 = 1;
        }
      }

      v21 = v42;
    }

    else
    {
      v21 = TRILogCategory_Server();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v22 = [v5 experimentDeployment];
        v23 = [v22 shortDesc];
        *buf = 138543362;
        v44 = v23;
        _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "experiment record for %{public}@ is missing namespaces", buf, 0xCu);
      }
    }
  }

  v36 = *MEMORY[0x277D85DE8];
}

uint64_t __103__TRIActivateTreatmentBaseTask__experimentRecord_hasConflictWithExperimentsInDatabase_conflictEndTime___block_invoke_40(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 name];
  v4 = [v2 containsObject:v3];

  return v4;
}

- (BOOL)_writeNamespaceDescriptorsWithPaths:(id)a3 toTreatmentLayer:(unint64_t)a4 forExperiment:(id)a5 treatmentURLs:(id)a6 context:(id)a7
{
  v105 = *MEMORY[0x277D85DE8];
  v75 = a3;
  v12 = a5;
  v83 = a6;
  v84 = a7;
  v76 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = MEMORY[0x277CBEB18];
  v14 = [v12 namespaces];
  v73 = [v13 arrayWithCapacity:{objc_msgSend(v14, "count")}];

  v15 = MEMORY[0x277CBEB18];
  v16 = [v12 namespaces];
  v17 = [v15 arrayWithCapacity:{objc_msgSend(v16, "count")}];

  v94 = 0u;
  v95 = 0u;
  v92 = 0u;
  v93 = 0u;
  v71 = v12;
  v18 = [v12 namespaces];
  v19 = [v18 countByEnumeratingWithState:&v92 objects:v104 count:16];
  v20 = v19 == 0;
  if (v19)
  {
    v21 = v19;
    v68 = self;
    v69 = a2;
    v70 = v19 == 0;
    v22 = *v93;
    v85 = 1;
    v23 = v75;
    v74 = *v93;
    while (2)
    {
      v24 = 0;
      v81 = v21;
      do
      {
        if (*v93 != v22)
        {
          objc_enumerationMutation(v18);
        }

        v25 = *(*(&v92 + 1) + 8 * v24);
        v26 = [v25 name];

        if (v26)
        {
          v87 = v23;
          v27 = [v84 namespaceDatabase];
          v28 = [v25 name];
          v29 = [v27 dynamicNamespaceRecordWithNamespaceName:v28];

          if (v29)
          {
            v30 = [v29 appContainer];

            if (!v23)
            {
              if (v30)
              {
                v55 = TRILogCategory_Server();
                if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
                {
                  v66 = [v29 appContainer];
                  v67 = [v66 identifier];
                  *buf = 138543362;
                  v99 = v67;
                  _os_log_error_impl(&dword_26F567000, v55, OS_LOG_TYPE_ERROR, "Can't write descriptor for dynamic namespace to missing container: %{public}@", buf, 0xCu);

                  v23 = v75;
                }

                goto LABEL_44;
              }
            }
          }

          v86 = v29;
          v31 = [v87 namespaceDescriptorsPathForLayer:a4];
          if (!v31)
          {
            v54 = [MEMORY[0x277CCA890] currentHandler];
            [v54 handleFailureInMethod:v69 object:v68 file:@"TRIActivateTreatmentBaseTask.m" lineNumber:224 description:@"namespace descriptor directory is NIL"];
          }

          v32 = [v25 name];
          v33 = [v83 objectForKey:v32];

          if (v33)
          {
            v34 = [v33 triPathAsOwner:0];
            if (v34)
            {
              v35 = v34;
              if (([v34 isAbsolutePath]& 1) != 0)
              {
                v36 = v35;
              }

              else
              {
                v38 = [v87 containerDir];
                if (v38)
                {
                  v77 = MEMORY[0x277CCACA8];
                  v39 = [v87 containerDir];
                  v97[0] = v39;
                  v97[1] = v35;
                  v40 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:2];
                  v78 = [v77 pathWithComponents:v40];

                  v23 = v75;
                  v36 = v78;
                }

                else
                {
                  v36 = v35;
                }
              }

              if ([v76 fileExistsAtPath:v36])
              {
                v79 = v36;
                if (v86)
                {
                  v41 = [v86 appContainer];
                  v42 = [v86 cloudKitContainer];
                }

                else
                {
                  v41 = 0;
                  v42 = 1;
                }

                v72 = v41;
                v44 = objc_opt_new();
                [v44 setFactorsURL:v33];
                [v44 setAppContainer:v41];
                [v44 setCloudKitContainerId:v42];
                v45 = objc_alloc(MEMORY[0x277D73750]);
                v46 = [v25 name];
                v47 = [v45 initWithNamespaceName:v46 downloadNCV:objc_msgSend(v25 optionalParams:{"compatibilityVersion"), v44}];

                [v73 addObject:v47];
                [v17 addObject:v31];
                v85 &= [v47 saveToDirectory:v31];

                v37 = 1;
                v23 = v75;
              }

              else
              {
                v43 = TRILogCategory_Server();
                if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
                {
                  [v71 experimentDeployment];
                  v51 = v80 = v36;
                  v52 = [v51 shortDesc];
                  v53 = [v25 name];
                  *buf = 138543618;
                  v99 = v52;
                  v100 = 2114;
                  v101 = v53;
                  _os_log_error_impl(&dword_26F567000, v43, OS_LOG_TYPE_ERROR, "treatment file does not exist for experiment %{public}@ on namespace %{public}@", buf, 0x16u);

                  v23 = v75;
                  v36 = v80;
                }

                v37 = 0;
                v85 = 0;
              }

              v22 = v74;
            }

            else
            {
              v35 = TRILogCategory_Server();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v48 = [v71 experimentDeployment];
                v49 = [v48 shortDesc];
                v50 = [v25 name];
                *buf = 138412802;
                v99 = v33;
                v100 = 2114;
                v101 = v49;
                v102 = 2114;
                v103 = v50;
                _os_log_error_impl(&dword_26F567000, v35, OS_LOG_TYPE_ERROR, "can't resolve factorsPath for URL %@ from experiment %{public}@ on namespace %{public}@", buf, 0x20u);

                v22 = v74;
              }

              v37 = 0;
              v85 = 0;
            }

            v21 = v81;
          }

          else
          {
            v37 = 1;
          }

          if (!v37)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v85 = 0;
        }

        ++v24;
      }

      while (v21 != v24);
      v21 = [v18 countByEnumeratingWithState:&v92 objects:v104 count:16];
      if (v21)
      {
        continue;
      }

      break;
    }

LABEL_38:

    if (v85)
    {
      v20 = 1;
      goto LABEL_54;
    }

LABEL_44:
    v90 = 0u;
    v91 = 0u;
    v88 = 0u;
    v89 = 0u;
    v18 = v73;
    v56 = [v18 countByEnumeratingWithState:&v88 objects:v96 count:16];
    if (v56)
    {
      v57 = v56;
      v58 = 0;
      v59 = *v89;
      do
      {
        v60 = 0;
        v61 = v58;
        do
        {
          if (*v89 != v59)
          {
            objc_enumerationMutation(v18);
          }

          v62 = *(*(&v88 + 1) + 8 * v60);
          v58 = v61 + 1;
          v63 = [v17 objectAtIndexedSubscript:v61];
          [v62 removeFromDirectory:v63];

          ++v60;
          v61 = v58;
        }

        while (v57 != v60);
        v57 = [v18 countByEnumeratingWithState:&v88 objects:v96 count:16];
      }

      while (v57);
      v23 = v75;
    }

    v20 = v70;
  }

  else
  {
    v23 = v75;
  }

LABEL_54:
  v64 = *MEMORY[0x277D85DE8];
  return v20;
}

- (id)runTaskUsingContext:(id)a3 experiment:(id)a4
{
  v6 = [MEMORY[0x277CCA890] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"TRIActivateTreatmentBaseTask.m" lineNumber:278 description:@"method not implemented"];

  v7 = MEMORY[0x277CBEBF8];

  return [TRITaskRunResult resultWithRunStatus:3 reportResultToServer:1 nextTasks:v7 earliestRetryDate:0];
}

- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4
{
  v24[1] = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = objc_autoreleasePoolPush();
  v10 = os_transaction_create();
  if (([(TRIActivateTreatmentBaseTask *)self conformsToProtocol:&unk_287FD33B8]& 1) == 0)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    v21 = objc_opt_class();
    v22 = NSStringFromClass(v21);
    [v20 handleFailureInMethod:a2 object:self file:@"TRIActivateTreatmentBaseTask.m" lineNumber:289 description:{@"TRIActivateTreatmentBaseTask subclass of type %@ is not a TRITask", v22}];
  }

  v11 = [(TRIExperimentBaseTask *)self experiment];
  v12 = [v11 taskTag];
  v24[0] = self;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:1];
  [v8 cancelTasksWithTag:v12 excludingTasks:v13];

  v14 = [(TRIExperimentBaseTask *)self experiment];
  v15 = [v14 experimentId];
  v23 = self;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
  [v8 cancelTasksWithTag:v15 excludingTasks:v16];

  v17 = [(TRIActivateTreatmentBaseTask *)self runTaskUsingContext:v7];

  objc_autoreleasePoolPop(v9);
  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (id)_nextTasksForRunStatus:(int)a3
{
  v11[1] = *MEMORY[0x277D85DE8];
  if (a3 == 3)
  {
    v4 = [(TRIExperimentBaseTask *)self experiment];
    v5 = [v4 experimentId];
    v6 = [(TRIExperimentBaseTask *)self experiment];
    v7 = +[TRIDeactivateTreatmentTask taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:](TRIDeactivateTreatmentTask, "taskWithExperimentId:deploymentId:failOnUnrecognizedExperiment:triggerEvent:taskAttribution:", v5, [v6 deploymentId], 0, 23, 0);
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

- (id)runTaskUsingContext:(id)a3
{
  v64 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 experimentDatabase];
  v6 = [(TRIExperimentBaseTask *)self experiment];
  v7 = [v5 experimentRecordWithExperimentDeployment:v6];

  if (!v7)
  {
    v28 = TRILogCategory_Server();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v28, OS_LOG_TYPE_ERROR, "failed to retrieve experiment record from database", buf, 2u);
    }

    v7 = [(TRIActivateTreatmentBaseTask *)self _nextTasksForRunStatus:1];
    v29 = 1;
    v30 = v7;
    goto LABEL_24;
  }

  v8 = objc_opt_new();
  v9 = TRIDeploymentEnvironment_EnumDescriptor();
  v10 = [v9 textFormatNameForValue:{objc_msgSend(v7, "deploymentEnvironment")}];

  if (!v10)
  {
    v10 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%ld", objc_msgSend(v7, "deploymentEnvironment")];
  }

  [v8 setClientDeploymentEnv:v10];
  [(TRIExperimentBaseTask *)self mergeTelemetry:v8];

  v11 = [v7 treatmentId];
  if (!v11)
  {
    goto LABEL_6;
  }

  v12 = v11;
  v13 = [(TRITreatmentBaseTask *)self treatmentId];
  v14 = [v7 treatmentId];
  v15 = [v13 isEqualToString:v14];

  if ((v15 & 1) == 0)
  {
LABEL_6:
    v16 = [v7 treatmentId];

    if (v16)
    {
      v17 = TRILogCategory_Server();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        v47 = [v7 experimentDeployment];
        v48 = [v47 shortDesc];
        v49 = [v7 treatmentId];
        v50 = [(TRITreatmentBaseTask *)self treatmentId];
        *buf = 138543874;
        *&buf[4] = v48;
        v60 = 2112;
        v61 = v49;
        v62 = 2112;
        v63 = v50;
        _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "experiment %{public}@ already has treatment %@ assigned.  Overwriting with treatment %@", buf, 0x20u);
      }
    }

    v18 = [v4 experimentDatabase];
    v19 = [(TRITreatmentBaseTask *)self treatmentId];
    v20 = [v7 experimentDeployment];
    v21 = [v18 setTreatmentId:v19 forExperimentDeployment:v20 usingTransaction:0];

    if (!v21)
    {
      v30 = MEMORY[0x277CBEBF8];
      v29 = 1;
LABEL_24:
      v35 = [TRITaskRunResult resultWithRunStatus:v29 reportResultToServer:1 nextTasks:v30 earliestRetryDate:0];
      goto LABEL_25;
    }

    v22 = [(TRITreatmentBaseTask *)self treatmentId];
    v23 = [v7 copyWithReplacementTreatmentId:v22];

    v7 = v23;
  }

  v24 = [MEMORY[0x277CBEAA8] date];
  [v24 timeIntervalSince1970];
  v26 = v25;

  v27 = [(TRIActivateTreatmentBaseTask *)self endTime];
  if (v27)
  {
    [(TRIActivateTreatmentBaseTask *)self endTime];
  }

  else
  {
    [v7 endDate];
  }
  v31 = ;
  [v31 timeIntervalSince1970];
  v33 = v32;

  if (v33 > 0.0 && v33 <= v26)
  {
    v34 = TRILogCategory_Server();
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      v51 = [(TRITreatmentBaseTask *)self treatmentId];
      v52 = [(TRIExperimentBaseTask *)self experiment];
      v53 = [v52 shortDesc];
      v54 = [v7 endDate];
      *buf = 138412802;
      *&buf[4] = v51;
      v60 = 2114;
      v61 = v53;
      v62 = 2112;
      v63 = v54;
      _os_log_error_impl(&dword_26F567000, v34, OS_LOG_TYPE_ERROR, "cannot activate treatment %@ for experiment %{public}@: end time %@ is in the past", buf, 0x20u);
    }

    v30 = MEMORY[0x277CBEBF8];
    v29 = 3;
    goto LABEL_24;
  }

  v38 = [v7 startDate];
  [v38 timeIntervalSince1970];
  v40 = v39;

  if (v40 <= 0.0 || v40 <= v26)
  {
    *buf = 0;
    v43 = [v4 experimentDatabase];
    v44 = [(TRIActivateTreatmentBaseTask *)self _experimentRecord:v7 hasConflictWithExperimentsInDatabase:v43 conflictEndTime:buf];

    if (v44)
    {
      if (*buf)
      {
        v45 = 1;
      }

      else
      {
        v45 = 3;
      }

      v46 = [(TRIActivateTreatmentBaseTask *)self _nextTasksForRunStatus:v45];
      v35 = [TRITaskRunResult resultWithRunStatus:v45 reportResultToServer:1 nextTasks:v46 earliestRetryDate:*buf];
    }

    else
    {
      v35 = [(TRIActivateTreatmentBaseTask *)self runTaskUsingContext:v4 experiment:v7];
    }
  }

  else
  {
    v41 = TRILogCategory_Server();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      v55 = [(TRITreatmentBaseTask *)self treatmentId];
      v56 = [(TRIExperimentBaseTask *)self experiment];
      v57 = [v56 shortDesc];
      v58 = [v7 startDate];
      *buf = 138412802;
      *&buf[4] = v55;
      v60 = 2114;
      v61 = v57;
      v62 = 2112;
      v63 = v58;
      _os_log_error_impl(&dword_26F567000, v41, OS_LOG_TYPE_ERROR, "cannot activate treatment %@ for experiment %{public}@: start time %@ is in the future", buf, 0x20u);
    }

    v42 = [v7 startDate];
    v35 = [TRITaskRunResult resultWithRunStatus:1 reportResultToServer:1 nextTasks:MEMORY[0x277CBEBF8] earliestRetryDate:v42];
  }

LABEL_25:

  v36 = *MEMORY[0x277D85DE8];

  return v35;
}

- (unint64_t)hash
{
  v3.receiver = self;
  v3.super_class = TRIActivateTreatmentBaseTask;
  return self->_requiresTreatmentInstallation + 37 * [(TRITreatmentBaseTask *)&v3 hash];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v6 = 1;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = TRIActivateTreatmentBaseTask;
    v5 = [(TRITreatmentBaseTask *)&v8 isEqual:v4];
    v6 = 0;
    if (v4 && v5)
    {
      objc_opt_class();
      v6 = (objc_opt_isKindOfClass() & 1) != 0 && self->_requiresTreatmentInstallation == v4->_requiresTreatmentInstallation;
    }
  }

  return v6;
}

@end