@interface TRIPostUpgradeCleanupTask
+ (id)parseFromData:(id)data;
+ (id)task;
- (BOOL)_activeRolloutIsCompatible:(id)compatible upgradeNCVs:(id)vs downloadNCVs:(id)cVs;
- (BOOL)_migrateToGlobalAssetStoreIfNeededUsingPaths:(id)paths;
- (BOOL)_migrateTreatmentsFolderIfNeededUsingContext:(id)context;
- (BOOL)_removePromotionsUsingPaths:(id)paths;
- (BOOL)_validateExperimentDescriptorsWithNamespaceCompatibilityVersions:(id)versions database:(id)database;
- (BOOL)_validateRolloutNamespaceNCVs:(id)vs downloadNCVs:(id)cVs context:(id)context;
- (TRIPostUpgradeCleanupTask)initWithCoder:(id)coder;
- (id)_asPersistedTask;
- (id)_nextTasksForRunStatus:(int)status;
- (id)runUsingContext:(id)context withTaskQueue:(id)queue;
- (id)serialize;
- (void)encodeWithCoder:(id)coder;
@end

@implementation TRIPostUpgradeCleanupTask

+ (id)task
{
  v2 = objc_opt_new();

  return v2;
}

- (id)_nextTasksForRunStatus:(int)status
{
  v4 = objc_opt_new();
  allObjects = [(NSMutableSet *)self->_invalidExperimentDeployments allObjects];
  v6 = [allObjects _pas_mappedArrayWithTransform:&__block_literal_global_42];
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

- (BOOL)_validateExperimentDescriptorsWithNamespaceCompatibilityVersions:(id)versions database:(id)database
{
  versionsCopy = versions;
  databaseCopy = database;
  v8 = objc_opt_new();
  invalidExperimentDeployments = self->_invalidExperimentDeployments;
  self->_invalidExperimentDeployments = v8;

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __103__TRIPostUpgradeCleanupTask__validateExperimentDescriptorsWithNamespaceCompatibilityVersions_database___block_invoke;
  v12[3] = &unk_279DE08A8;
  v13 = versionsCopy;
  selfCopy = self;
  v10 = versionsCopy;
  LOBYTE(versionsCopy) = [databaseCopy enumerateExperimentRecordsWithBlock:v12];

  return versionsCopy;
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

- (BOOL)_validateRolloutNamespaceNCVs:(id)vs downloadNCVs:(id)cVs context:(id)context
{
  vsCopy = vs;
  cVsCopy = cVs;
  contextCopy = context;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 1;
  rolloutDatabase = [contextCopy rolloutDatabase];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __80__TRIPostUpgradeCleanupTask__validateRolloutNamespaceNCVs_downloadNCVs_context___block_invoke;
  v16[3] = &unk_279DE17A8;
  v12 = contextCopy;
  v17 = v12;
  selfCopy = self;
  v13 = vsCopy;
  v19 = v13;
  v14 = cVsCopy;
  v20 = v14;
  v21 = &v22;
  [rolloutDatabase writeTransactionWithFailableBlock:v16];

  LOBYTE(vsCopy) = *(v23 + 24);
  _Block_object_dispose(&v22, 8);

  return vsCopy;
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

- (BOOL)_activeRolloutIsCompatible:(id)compatible upgradeNCVs:(id)vs downloadNCVs:(id)cVs
{
  v66 = *MEMORY[0x277D85DE8];
  compatibleCopy = compatible;
  vsCopy = vs;
  cVsCopy = cVs;
  v35 = compatibleCopy;
  artifact = [compatibleCopy artifact];
  rollout = [artifact rollout];

  v57 = 0u;
  v58 = 0u;
  v55 = 0u;
  v56 = 0u;
  obj = [rollout selectedNamespaceArray];
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
        name = [v11 name];
        v13 = [vsCopy objectForKey:name];

        name2 = [v11 name];
        v15 = [cVsCopy objectForKey:name2];

        v51 = 0;
        v52 = &v51;
        v53 = 0x2020000000;
        v54 = 0;
        v47 = 0;
        v48 = &v47;
        v49 = 0x2020000000;
        v50 = 0;
        compatibilityVersionArray = [v11 compatibilityVersionArray];
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
        [compatibilityVersionArray enumerateValuesWithBlock:v42];

        if ((v52[3] & 1) == 0)
        {
          v19 = TRILogCategory_Server();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            name3 = [v11 name];
            deployment = [v35 deployment];
            shortDesc = [deployment shortDesc];
            unsignedIntValue = [v17 unsignedIntValue];
            compatibilityVersionArray2 = [v11 compatibilityVersionArray];
            *buf = 138544130;
            v60 = name3;
            v61 = 2114;
            v62 = shortDesc;
            v63 = 1024;
            *v64 = unsignedIntValue;
            *&v64[4] = 2114;
            *&v64[6] = compatibilityVersionArray2;
            _os_log_impl(&dword_26F567000, v19, OS_LOG_TYPE_DEFAULT, "Namespace %{public}@ for rollout %{public}@ is no longer download compatible. Expected NCV: %u Actual: %{public}@", buf, 0x26u);
          }

          v9 = 0;
        }

        if (*(v48 + 24) == 1)
        {
          v25 = TRILogCategory_Server();
          if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
          {
            name4 = [v11 name];
            deployment2 = [v35 deployment];
            shortDesc2 = [deployment2 shortDesc];
            compatibilityVersionArray3 = [v11 compatibilityVersionArray];
            *buf = 138544130;
            v60 = name4;
            v61 = 2114;
            v62 = shortDesc2;
            v63 = 2112;
            *v64 = v18;
            *&v64[8] = 2114;
            *&v64[10] = compatibilityVersionArray3;
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

- (BOOL)_removePromotionsUsingPaths:(id)paths
{
  pathsCopy = paths;
  v4 = [[TRINamespaceResolverStorage alloc] initWithPaths:pathsCopy];

  LOBYTE(pathsCopy) = [(TRINamespaceResolverStorage *)v4 removeUnneededPromotionsWithRemovedCount:0 removeAll:1];
  return pathsCopy;
}

- (BOOL)_migrateToGlobalAssetStoreIfNeededUsingPaths:(id)paths
{
  pathsCopy = paths;
  v4 = [[TRIRemoteAssetStoreOperator alloc] initWithPaths:pathsCopy];

  LOBYTE(pathsCopy) = [(TRIRemoteAssetStoreOperator *)v4 migrateToGlobalAssetStoreIfNeeded];
  return pathsCopy;
}

- (BOOL)_migrateTreatmentsFolderIfNeededUsingContext:(id)context
{
  contextCopy = context;
  v4 = [TRIFactorPackSetStorage alloc];
  paths = [contextCopy paths];
  v6 = [(TRIFactorPackSetStorage *)v4 initWithPaths:paths];

  LOBYTE(paths) = [(TRIFactorPackSetStorage *)v6 migrateEligibleFactorPacksToGlobalWithServerContext:contextCopy];
  return paths;
}

- (id)runUsingContext:(id)context withTaskQueue:(id)queue
{
  selfCopy = self;
  v41 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  v5 = MEMORY[0x277D73750];
  v35 = contextCopy;
  paths = [contextCopy paths];
  namespaceDescriptorsDefaultDir = [paths namespaceDescriptorsDefaultDir];
  v8 = [v5 descriptorsForDirectory:namespaceDescriptorsDefaultDir filterBlock:0];

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
        v17 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:{objc_msgSend(v16, "downloadNCV", selfCopy)}];
        namespaceName = [v16 namespaceName];
        [v9 setObject:v17 forKeyedSubscript:namespaceName];

        upgradeNCVs = [v16 upgradeNCVs];
        namespaceName2 = [v16 namespaceName];
        [v10 setObject:upgradeNCVs forKeyedSubscript:namespaceName2];
      }

      v13 = [v11 countByEnumeratingWithState:&v36 objects:v40 count:16];
    }

    while (v13);
  }

  experimentDatabase = [v35 experimentDatabase];
  v22 = [(TRIPostUpgradeCleanupTask *)selfCopy _validateExperimentDescriptorsWithNamespaceCompatibilityVersions:v9 database:experimentDatabase];

  v23 = v22 & [(TRIPostUpgradeCleanupTask *)selfCopy _validateRolloutNamespaceNCVs:v10 downloadNCVs:v9 context:v35];
  paths2 = [v35 paths];
  v25 = [(TRIPostUpgradeCleanupTask *)selfCopy _removePromotionsUsingPaths:paths2];

  v26 = [TRIAssetStore alloc];
  paths3 = [v35 paths];
  v28 = [(TRIAssetStore *)v26 initWithPaths:paths3];

  [(TRIAssetStore *)v28 fixFileProtectionForAssetStoreFiles];
  if ((v23 & v25) != 0)
  {
    v29 = 2;
  }

  else
  {
    v29 = 3;
  }

  selfCopy = [(TRIPostUpgradeCleanupTask *)selfCopy _nextTasksForRunStatus:v29, selfCopy];
  v31 = [TRITaskRunResult resultWithRunStatus:v29 reportResultToServer:1 nextTasks:selfCopy earliestRetryDate:0];

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
  _asPersistedTask = [(TRIPostUpgradeCleanupTask *)self _asPersistedTask];
  data = [_asPersistedTask data];

  if (!data)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIPostUpgradeCleanupTask.m" lineNumber:243 description:{@"Unexpected failure to serialize %@", v9}];
  }

  return data;
}

+ (id)parseFromData:(id)data
{
  v12 = *MEMORY[0x277D85DE8];
  v9 = 0;
  v3 = [(TRIPBMessage *)TRIPostUpgradeCleanupPersistedTask parseFromData:data error:&v9];
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

- (TRIPostUpgradeCleanupTask)initWithCoder:(id)coder
{
  coderCopy = coder;
  v9.receiver = self;
  v9.super_class = TRIPostUpgradeCleanupTask;
  v5 = [(TRIPostUpgradeCleanupTask *)&v9 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pb"];
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIPostUpgradeCleanupTask.m" lineNumber:260 description:{@"Don't use NSSecureCoding to persist tasks to disk, use -[TRITask serialize]."}];
  }

  serialize = [(TRIPostUpgradeCleanupTask *)self serialize];
  [coderCopy encodeObject:serialize forKey:@"pb"];
}

@end