@interface TRIPostUpgradeCleanupTask
+ (id)parseFromData:(id)a3;
+ (id)task;
- (BOOL)_activeRolloutIsCompatible:(id)a3 upgradeNCVs:(id)a4 downloadNCVs:(id)a5;
- (BOOL)_migrateToGlobalAssetStoreIfNeededUsingPaths:(id)a3;
- (BOOL)_migrateTreatmentsFolderIfNeededUsingContext:(id)a3;
- (BOOL)_removePromotionsUsingPaths:(id)a3;
- (BOOL)_validateExperimentDescriptorsWithNamespaceCompatibilityVersions:(id)a3 database:(id)a4;
- (BOOL)_validateRolloutNamespaceNCVs:(id)a3 downloadNCVs:(id)a4 context:(id)a5;
- (TRIPostUpgradeCleanupTask)initWithCoder:(id)a3;
- (id)_asPersistedTask;
- (id)_nextTasksForRunStatus:(int)a3;
- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4;
- (id)serialize;
- (void)encodeWithCoder:(id)a3;
@end

@implementation TRIPostUpgradeCleanupTask

+ (id)task
{
  v2 = objc_opt_new();

  return v2;
}

- (id)_nextTasksForRunStatus:(int)a3
{
  v4 = objc_opt_new();
  v5 = [(NSMutableSet *)self->_invalidExperimentDeployments allObjects];
  v6 = [v5 _pas_mappedArrayWithTransform:&__block_literal_global_42];
  [v4 addObjectsFromArray:v6];

  return v4;
}

id __52__TRIPostUpgradeCleanupTask__nextTasksForRunStatus___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 experimentId];
  v4 = [v2 deploymentId];

  v5 = [TRIDeactivateTreatmentTask taskWithExperimentId:v3 deploymentId:v4 failOnUnrecognizedExperiment:1 triggerEvent:5 taskAttribution:0];

  return v5;
}

- (BOOL)_validateExperimentDescriptorsWithNamespaceCompatibilityVersions:(id)a3 database:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = objc_opt_new();
  invalidExperimentDeployments = self->_invalidExperimentDeployments;
  self->_invalidExperimentDeployments = v8;

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __103__TRIPostUpgradeCleanupTask__validateExperimentDescriptorsWithNamespaceCompatibilityVersions_database___block_invoke;
  v12[3] = &unk_279DE08A8;
  v13 = v6;
  v14 = self;
  v10 = v6;
  LOBYTE(v6) = [v7 enumerateExperimentRecordsWithBlock:v12];

  return v6;
}

void __103__TRIPostUpgradeCleanupTask__validateExperimentDescriptorsWithNamespaceCompatibilityVersions_database___block_invoke(uint64_t a1, void *a2)
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v4 = [v3 namespaces];
  v5 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v22;
    *&v6 = 138543362;
    v20 = v6;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v22 != v8)
        {
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v21 + 1) + 8 * i);
        v11 = *(a1 + 32);
        v12 = [v10 name];
        v13 = [v11 objectForKeyedSubscript:v12];

        if (v13)
        {
          if (![v3 deploymentEnvironment])
          {
            v14 = [v10 compatibilityVersion];
            if (v14 != [v13 unsignedIntValue])
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          v15 = TRILogCategory_Server();
          if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
          {
            v18 = [v10 name];
            *buf = v20;
            v26 = v18;
            _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "unknown system namespace compatibility version for namespace %{public}@", buf, 0xCu);
          }

          if (![v3 deploymentEnvironment])
          {
LABEL_13:
            v16 = *(*(a1 + 40) + 24);
            v17 = [v3 experimentDeployment];
            [v16 addObject:v17];
          }
        }
      }

      v7 = [v4 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v7);
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (BOOL)_validateRolloutNamespaceNCVs:(id)a3 downloadNCVs:(id)a4 context:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  v11 = [v10 rolloutDatabase];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__TRIPostUpgradeCleanupTask__validateRolloutNamespaceNCVs_downloadNCVs_context___block_invoke;
  v16[3] = &unk_279DE17A8;
  v12 = v10;
  v17 = v12;
  v18 = self;
  v13 = v8;
  v19 = v13;
  v14 = v9;
  v20 = v14;
  v21 = &v22;
  [v11 writeTransactionWithFailableBlock:v16];

  LOBYTE(v8) = *(v23 + 24);
  _Block_object_dispose(&v22, 8);

  return v8;
}

uint64_t __80__TRIPostUpgradeCleanupTask__validateRolloutNamespaceNCVs_downloadNCVs_context___block_invoke(uint64_t a1, void *a2)
{
  v44 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = objc_opt_new();
  v6 = [*(a1 + 32) rolloutDatabase];
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __80__TRIPostUpgradeCleanupTask__validateRolloutNamespaceNCVs_downloadNCVs_context___block_invoke_2;
  v37[3] = &unk_279DE4C50;
  v7 = *(a1 + 48);
  v37[4] = *(a1 + 40);
  v38 = v7;
  v39 = *(a1 + 56);
  v8 = v5;
  v40 = v8;
  v31 = v3;
  v9 = [v6 enumerateActiveRecordsUsingTransaction:v3 block:v37];

  if (v9)
  {
    v26 = v9;
    v27 = v8;
    v28 = v4;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    obj = v8;
    v32 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
    if (v32)
    {
      v30 = *v34;
      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v34 != v30)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v33 + 1) + 8 * i);
          v12 = TRILogCategory_Server();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
          {
            v13 = [v11 deployment];
            v14 = [v13 shortDesc];
            *buf = 138543362;
            v42 = v14;
            _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "Post-upgrade task deactivated rollout %{public}@ since it's incompatible with existing NCVs", buf, 0xCu);
          }

          v15 = [*(a1 + 32) rolloutDatabase];
          v16 = [v11 deployment];
          *(*(*(a1 + 64) + 8) + 24) &= [v15 deactivateDeployment:v16 usingTransaction:v31];

          v6 = [v11 deployment];
          v17 = [v6 rolloutId];
          v18 = [v11 rampId];
          v19 = [v11 deployment];
          v20 = [v19 deploymentId];
          v21 = [v11 activeFactorPackSetId];
          LOBYTE(v25) = 0;
          [TRITaskUtils updateRolloutHistoryDatabaseWithAllocationStatus:4 forRollout:v17 ramp:v18 deployment:v20 fps:v21 namespaces:0 telemetryMetric:0 rolloutRecord:v11 isBecomingObsolete:v25 context:*(a1 + 32)];
        }

        v32 = [obj countByEnumeratingWithState:&v33 objects:v43 count:16];
      }

      while (v32);
    }

    v8 = v27;
    v4 = v28;
    v9 = v26;
  }

  else
  {
    *(*(*(a1 + 64) + 8) + 24) = 0;
    v6 = *MEMORY[0x277D42678];
  }

  objc_autoreleasePoolPop(v4);
  if (v9)
  {
    if (*(*(*(a1 + 64) + 8) + 24))
    {
      v22 = MEMORY[0x277D42670];
    }

    else
    {
      v22 = MEMORY[0x277D42678];
    }

    v6 = *v22;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v6;
}

void __80__TRIPostUpgradeCleanupTask__validateRolloutNamespaceNCVs_downloadNCVs_context___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = v3;
  if (([*(a1 + 32) _activeRolloutIsCompatible:? upgradeNCVs:? downloadNCVs:?] & 1) == 0)
  {
    [*(a1 + 56) addObject:v6];
  }
}

- (BOOL)_activeRolloutIsCompatible:(id)a3 upgradeNCVs:(id)a4 downloadNCVs:(id)a5
{
  v66 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v39 = a4;
  v38 = a5;
  v35 = v7;
  v8 = [v7 artifact];
  v33 = [v8 rollout];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = [v33 selectedNamespaceArray];
  v40 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
  if (v40)
  {
    v34 = 0;
    v37 = *v56;
    v9 = 1;
    do
    {
      for (i = 0; i != v40; ++i)
      {
        if (*v56 != v37)
        {
          objc_enumerationMutation(obj);
        }

        v11 = *(*(&v55 + 1) + 8 * i);
        context = objc_autoreleasePoolPush();
        v12 = [v11 name];
        v13 = [v39 objectForKey:v12];

        v14 = [v11 name];
        v15 = [v38 objectForKey:v14];

        v51 = 0;
        v52 = &v51;
        v53 = 0x2020000000;
        v54 = 0;
        v47 = 0;
        v48 = &v47;
        v49 = 0x2020000000;
        v50 = 0;
        v16 = [v11 compatibilityVersionArray];
        v42[0] = MEMORY[0x277D85DD0];
        v42[1] = 3221225472;
        v42[2] = __81__TRIPostUpgradeCleanupTask__activeRolloutIsCompatible_upgradeNCVs_downloadNCVs___block_invoke;
        v42[3] = &unk_279DE4D38;
        v17 = v15;
        v43 = v17;
        v45 = &v51;
        v18 = v13;
        v44 = v18;
        v46 = &v47;
        [v16 enumerateValuesWithBlock:v42];

        if ((v52[3] & 1) == 0)
        {
          v19 = TRILogCategory_Server();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [v11 name];
            v21 = [v35 deployment];
            v22 = [v21 shortDesc];
            v23 = [v17 unsignedIntValue];
            v24 = [v11 compatibilityVersionArray];
            *buf = 138544130;
            v60 = v20;
            v61 = 2114;
            v62 = v22;
            v63 = 1024;
            *v64 = v23;
            *&v64[4] = 2114;
            *&v64[6] = v24;
            _os_log_impl(&dword_26F567000, v19, OS_LOG_TYPE_DEFAULT, "Namespace %{public}@ for rollout %{public}@ is no longer download compatible. Expected NCV: %u Actual: %{public}@", buf, 0x26u);
          }

          v9 = 0;
        }

        if (*(v48 + 24) == 1)
        {
          v25 = TRILogCategory_Server();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            v26 = [v11 name];
            v27 = [v35 deployment];
            v28 = [v27 shortDesc];
            v29 = [v11 compatibilityVersionArray];
            *buf = 138544130;
            v60 = v26;
            v61 = 2114;
            v62 = v28;
            v63 = 2112;
            *v64 = v18;
            *&v64[8] = 2114;
            *&v64[10] = v29;
            _os_log_impl(&dword_26F567000, v25, OS_LOG_TYPE_DEFAULT, "Namespace %{public}@ for rollout %{public}@ is upgrade compatible. Upgrade NCVs: %@ Namespace NCVs: %{public}@", buf, 0x2Au);
          }

          v34 = 1;
        }

        _Block_object_dispose(&v47, 8);
        _Block_object_dispose(&v51, 8);

        objc_autoreleasePoolPop(context);
      }

      v40 = [obj countByEnumeratingWithState:&v55 objects:v65 count:16];
    }

    while (v40);
    v30 = v9 | v34;
  }

  else
  {
    v30 = 1;
  }

  v31 = *MEMORY[0x277D85DE8];
  return v30 & 1;
}

void __81__TRIPostUpgradeCleanupTask__activeRolloutIsCompatible_upgradeNCVs_downloadNCVs___block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[4];
  if (v4 && [v4 unsignedIntValue] == a2)
  {
    *(*(a1[6] + 8) + 24) = 1;
  }

  v5 = a1[5];
  if (v5)
  {
    v6 = [MEMORY[0x277CCABB0] numberWithInt:a2];
    v7 = [v5 containsObject:v6];

    if (v7)
    {
      *(*(a1[7] + 8) + 24) = 1;
    }
  }
}

- (BOOL)_removePromotionsUsingPaths:(id)a3
{
  v3 = a3;
  v4 = [[TRINamespaceResolverStorage alloc] initWithPaths:v3];

  LOBYTE(v3) = [(TRINamespaceResolverStorage *)v4 removeUnneededPromotionsWithRemovedCount:0 removeAll:1];
  return v3;
}

- (BOOL)_migrateToGlobalAssetStoreIfNeededUsingPaths:(id)a3
{
  v3 = a3;
  v4 = [[TRIRemoteAssetStoreOperator alloc] initWithPaths:v3];

  LOBYTE(v3) = [(TRIRemoteAssetStoreOperator *)v4 migrateToGlobalAssetStoreIfNeeded];
  return v3;
}

- (BOOL)_migrateTreatmentsFolderIfNeededUsingContext:(id)a3
{
  v3 = a3;
  v4 = [TRIFactorPackSetStorage alloc];
  v5 = [v3 paths];
  v6 = [(TRIFactorPackSetStorage *)v4 initWithPaths:v5];

  LOBYTE(v5) = [(TRIFactorPackSetStorage *)v6 migrateEligibleFactorPacksToGlobalWithServerContext:v3];
  return v5;
}

- (id)runUsingContext:(id)a3 withTaskQueue:(id)a4
{
  v34 = self;
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D73750];
  v35 = v4;
  v6 = [v4 paths];
  v7 = [v6 namespaceDescriptorsDefaultDir];
  v8 = [v5 descriptorsForDirectory:v7 filterBlock:0];

  v9 = objc_opt_new();
  v10 = objc_opt_new();
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v11 = v8;
  v12 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v37;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v37 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v36 + 1) + 8 * i);
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v16, "downloadNCV", v34)}];
        v18 = [v16 namespaceName];
        [v9 setObject:v17 forKeyedSubscript:v18];

        v19 = [v16 upgradeNCVs];
        v20 = [v16 namespaceName];
        [v10 setObject:v19 forKeyedSubscript:v20];
      }

      v13 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v13);
  }

  v21 = [v35 experimentDatabase];
  v22 = [(TRIPostUpgradeCleanupTask *)v34 _validateExperimentDescriptorsWithNamespaceCompatibilityVersions:v9 database:v21];

  v23 = v22 & [(TRIPostUpgradeCleanupTask *)v34 _validateRolloutNamespaceNCVs:v10 downloadNCVs:v9 context:v35];
  v24 = [v35 paths];
  v25 = [(TRIPostUpgradeCleanupTask *)v34 _removePromotionsUsingPaths:v24];

  v26 = [TRIAssetStore alloc];
  v27 = [v35 paths];
  v28 = [(TRIAssetStore *)v26 initWithPaths:v27];

  [(TRIAssetStore *)v28 fixFileProtectionForAssetStoreFiles];
  if ((v23 & v25) != 0)
  {
    v29 = 2;
  }

  else
  {
    v29 = 3;
  }

  v30 = [(TRIPostUpgradeCleanupTask *)v34 _nextTasksForRunStatus:v29, v34];
  v31 = [TRITaskRunResult resultWithRunStatus:v29 reportResultToServer:1 nextTasks:v30 earliestRetryDate:0];

  v32 = *MEMORY[0x277D85DE8];

  return v31;
}

- (id)_asPersistedTask
{
  v2 = objc_opt_new();

  return v2;
}

- (id)serialize
{
  v4 = [(TRIPostUpgradeCleanupTask *)self _asPersistedTask];
  v5 = [v4 data];

  if (!v5)
  {
    v7 = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [v7 handleFailureInMethod:a2 object:self file:@"TRIPostUpgradeCleanupTask.m" lineNumber:243 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return v5;
}

+ (id)parseFromData:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v3 = [(TRIPBMessage *)TRIPostUpgradeCleanupPersistedTask parseFromData:a3 error:&v9];
  v4 = v9;
  if (v3)
  {
    v5 = objc_opt_new();
  }

  else
  {
    v6 = TRILogCategory_Server();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v11 = v4;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Unable to parse buffer as TRIPostUpgradeCleanupTask: %{public}@", buf, 0xCu);
    }

    v5 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];

  return v5;
}

- (TRIPostUpgradeCleanupTask)initWithCoder:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = TRIPostUpgradeCleanupTask;
  v5 = [(TRIPostUpgradeCleanupTask *)&v9 init];
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
    [v6 handleFailureInMethod:a2 object:self file:@"TRIPostUpgradeCleanupTask.m" lineNumber:260 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  v5 = [(TRIPostUpgradeCleanupTask *)self serialize];
  [v7 encodeObject:v5 forKey:@"pb"];
}

@end