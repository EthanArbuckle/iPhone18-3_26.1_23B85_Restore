@interface TRIPurgeableExperimentAndRolloutProvider
- (BOOL)_checkForPurgeableFactorsInEagerFactors:(id)factors factorLevel:(id)level legacyPath:(id)path overriddenFactors:(id)overriddenFactors purgeableNamespaces:(id)namespaces returningAssets:(id)assets;
- (BOOL)_factorPackSetHasPurgeableFactorsWithFPSId:(id)id eagerFactors:(id)factors overriddenFactors:(id)overriddenFactors purgeableNamespaces:(id)namespaces returningAssets:(id)assets;
- (TRIPurgeableExperimentAndRolloutProvider)initWithPaths:(id)paths experimentDatabase:(id)database rolloutDatabase:(id)rolloutDatabase;
- (id)purgeableExperimentAssetsFromNamespaces:(id)namespaces eagerFactors:(id)factors overriddenFactors:(id)overriddenFactors;
- (id)purgeableExperimentsFromNamespaces:(id)namespaces eagerFactors:(id)factors overriddenFactors:(id)overriddenFactors;
- (id)purgeableRolloutAssetsFromNamespaces:(id)namespaces eagerFactors:(id)factors overriddenFactors:(id)overriddenFactors;
- (id)purgeableRolloutsFromNamespaces:(id)namespaces eagerFactors:(id)factors overriddenFactors:(id)overriddenFactors;
- (void)_checkTreatmentBasedExperimentForPurgeables:(id)purgeables experimentAssets:(id)assets experimentHasNamespaceWithEagerFactors:(BOOL *)factors experimentHasPurgeableNamespace:(BOOL)namespace overriddenFactors:(id)overriddenFactors record:(id)record shouldGenerateAssetPaths:(BOOL)paths storage:(id)self0;
- (void)_purgeablesForExperimentsFromNamespaces:(id)namespaces eagerFactors:(id)factors overriddenFactors:(id)overriddenFactors shouldGenerateAssetPaths:(BOOL)paths purgeableExperiments:(id *)experiments purgeableAssets:(id *)assets;
- (void)_purgeablesForRolloutsFromNamespaces:(id)namespaces eagerFactors:(id)factors overriddenFactors:(id)overriddenFactors shouldGenerateAssetPaths:(BOOL)paths purgeableExperiments:(id *)experiments purgeableAssets:(id *)assets;
@end

@implementation TRIPurgeableExperimentAndRolloutProvider

- (TRIPurgeableExperimentAndRolloutProvider)initWithPaths:(id)paths experimentDatabase:(id)database rolloutDatabase:(id)rolloutDatabase
{
  pathsCopy = paths;
  databaseCopy = database;
  rolloutDatabaseCopy = rolloutDatabase;
  v15.receiver = self;
  v15.super_class = TRIPurgeableExperimentAndRolloutProvider;
  v12 = [(TRIPurgeableExperimentAndRolloutProvider *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_paths, paths);
    objc_storeStrong(&v13->_experimentDatabase, database);
    objc_storeStrong(&v13->_rolloutDatabase, rolloutDatabase);
  }

  return v13;
}

- (id)purgeableExperimentsFromNamespaces:(id)namespaces eagerFactors:(id)factors overriddenFactors:(id)overriddenFactors
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEB98];
  overriddenFactorsCopy = overriddenFactors;
  factorsCopy = factors;
  namespacesCopy = namespaces;
  v18 = [v8 set];
  v12 = TRILogCategory_Server();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "Querying for purgeable experiments.", buf, 2u);
  }

  [(TRIPurgeableExperimentAndRolloutProvider *)self _purgeablesForExperimentsFromNamespaces:namespacesCopy eagerFactors:factorsCopy overriddenFactors:overriddenFactorsCopy shouldGenerateAssetPaths:0 purgeableExperiments:&v18 purgeableAssets:0];
  v13 = TRILogCategory_Server();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v18 count];
    *buf = 134217984;
    v20 = v14;
    _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Found %lu purgeable experiments.", buf, 0xCu);
  }

  v15 = v18;
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)purgeableExperimentAssetsFromNamespaces:(id)namespaces eagerFactors:(id)factors overriddenFactors:(id)overriddenFactors
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEAC0];
  overriddenFactorsCopy = overriddenFactors;
  factorsCopy = factors;
  namespacesCopy = namespaces;
  dictionary = [v8 dictionary];
  v12 = TRILogCategory_Server();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "Querying for purgeable experiment regular (not on-demand) assets.", buf, 2u);
  }

  [(TRIPurgeableExperimentAndRolloutProvider *)self _purgeablesForExperimentsFromNamespaces:namespacesCopy eagerFactors:factorsCopy overriddenFactors:overriddenFactorsCopy shouldGenerateAssetPaths:1 purgeableExperiments:0 purgeableAssets:&dictionary];
  v13 = TRILogCategory_Server();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [dictionary count];
    *buf = 134217984;
    v20 = v14;
    _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Found %lu purgeable experiment assets.", buf, 0xCu);
  }

  v15 = dictionary;
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)purgeableRolloutsFromNamespaces:(id)namespaces eagerFactors:(id)factors overriddenFactors:(id)overriddenFactors
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEB98];
  overriddenFactorsCopy = overriddenFactors;
  factorsCopy = factors;
  namespacesCopy = namespaces;
  v18 = [v8 set];
  v12 = TRILogCategory_Server();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "Querying for purgeable rollouts.", buf, 2u);
  }

  [(TRIPurgeableExperimentAndRolloutProvider *)self _purgeablesForRolloutsFromNamespaces:namespacesCopy eagerFactors:factorsCopy overriddenFactors:overriddenFactorsCopy shouldGenerateAssetPaths:0 purgeableExperiments:&v18 purgeableAssets:0];
  v13 = TRILogCategory_Server();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v18 count];
    *buf = 134217984;
    v20 = v14;
    _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Found %lu purgeable rollouts.", buf, 0xCu);
  }

  v15 = v18;
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (id)purgeableRolloutAssetsFromNamespaces:(id)namespaces eagerFactors:(id)factors overriddenFactors:(id)overriddenFactors
{
  v21 = *MEMORY[0x277D85DE8];
  v8 = MEMORY[0x277CBEAC0];
  overriddenFactorsCopy = overriddenFactors;
  factorsCopy = factors;
  namespacesCopy = namespaces;
  dictionary = [v8 dictionary];
  v12 = TRILogCategory_Server();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "Querying for purgeable rollout regular (not on-demand) assets.", buf, 2u);
  }

  [(TRIPurgeableExperimentAndRolloutProvider *)self _purgeablesForRolloutsFromNamespaces:namespacesCopy eagerFactors:factorsCopy overriddenFactors:overriddenFactorsCopy shouldGenerateAssetPaths:1 purgeableExperiments:0 purgeableAssets:&dictionary];
  v13 = TRILogCategory_Server();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [dictionary count];
    *buf = 134217984;
    v20 = v14;
    _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Found %lu purgeable rollout assets.", buf, 0xCu);
  }

  v15 = dictionary;
  v16 = *MEMORY[0x277D85DE8];

  return v15;
}

- (void)_checkTreatmentBasedExperimentForPurgeables:(id)purgeables experimentAssets:(id)assets experimentHasNamespaceWithEagerFactors:(BOOL *)factors experimentHasPurgeableNamespace:(BOOL)namespace overriddenFactors:(id)overriddenFactors record:(id)record shouldGenerateAssetPaths:(BOOL)paths storage:(id)self0
{
  namespaceCopy = namespace;
  v79 = *MEMORY[0x277D85DE8];
  purgeablesCopy = purgeables;
  assetsCopy = assets;
  overriddenFactorsCopy = overriddenFactors;
  recordCopy = record;
  storageCopy = storage;
  treatmentId = [recordCopy treatmentId];

  if (treatmentId)
  {
    treatmentId2 = [recordCopy treatmentId];
    v20 = [storageCopy loadTreatmentWithTreatmentId:treatmentId2 isFilePresent:0];

    if (v20)
    {
      namespaces = [recordCopy namespaces];
      v22 = [namespaces count];

      if (v22 != 1)
      {
        v23 = TRILogCategory_Server();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "Purgeable experiment candidate has too many namespace associated with it.", buf, 2u);
        }
      }

      namespaces2 = [recordCopy namespaces];
      firstObject = [namespaces2 firstObject];
      name = [firstObject name];

      if (name)
      {
        log = [overriddenFactorsCopy objectForKeyedSubscript:name];
        v62 = recordCopy;
        v63 = overriddenFactorsCopy;
        v61 = storageCopy;
        v59 = name;
        if (paths)
        {
          treatmentId3 = [recordCopy treatmentId];
          v65 = [storageCopy urlForFactorsWithTreatmentId:treatmentId3 namespaceName:name];
        }

        else
        {
          v65 = 0;
        }

        v30 = namespaceCopy;
        v73 = 0u;
        v74 = 0u;
        v71 = 0u;
        v72 = 0u;
        v60 = v20;
        obj = [v20 factorLevelArray];
        v31 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
        if (v31)
        {
          v32 = v31;
          v70 = *v72;
          v64 = purgeablesCopy;
          do
          {
            for (i = 0; i != v32; ++i)
            {
              if (*v72 != v70)
              {
                objc_enumerationMutation(obj);
              }

              v34 = *(*(&v71 + 1) + 8 * i);
              v35 = fileFromFactor(v34);
              v36 = v35;
              if (v35)
              {
                asset = [v35 asset];
                assetId = [asset assetId];
                v39 = TRIValidateAssetId();

                if (paths)
                {
                  path = [v36 path];
                  v41 = [path length];

                  if (v41 && v39 != 0)
                  {
                    v43 = [assetsCopy objectForKeyedSubscript:v39];
                    if (v43)
                    {
                      [assetsCopy setObject:v43 forKeyedSubscript:v39];
                    }

                    else
                    {
                      v44 = objc_opt_new();
                      [assetsCopy setObject:v44 forKeyedSubscript:v39];
                    }

                    v45 = [assetsCopy objectForKeyedSubscript:v39];
                    path2 = [v36 path];
                    [v45 addObject:path2];

                    v47 = [v65 triPathAsOwner:0];
                    stringByDeletingLastPathComponent = [v47 stringByDeletingLastPathComponent];

                    path3 = [v36 path];
                    [path3 lastPathComponent];
                    v51 = v50 = assetsCopy;

                    v52 = MEMORY[0x277CCACA8];
                    v75[0] = stringByDeletingLastPathComponent;
                    v75[1] = @"assets";
                    v75[2] = v51;
                    v53 = [MEMORY[0x277CBEA60] arrayWithObjects:v75 count:3];
                    v54 = [v52 pathWithComponents:v53];

                    v55 = [v50 objectForKeyedSubscript:v39];
                    [v55 addObject:v54];

                    assetsCopy = v50;
                    purgeablesCopy = v64;
                    v30 = namespaceCopy;
                  }
                }
              }

              if (factorIsValidRegularFileFactor(v34))
              {
                factor = [v34 factor];
                name2 = [factor name];

                if (v30 && !-[NSObject containsObject:](log, "containsObject:", name2) || [purgeablesCopy containsObject:name2])
                {
                  *factors = 1;
                }
              }
            }

            v32 = [obj countByEnumeratingWithState:&v71 objects:v76 count:16];
          }

          while (v32);
        }

        recordCopy = v62;
        overriddenFactorsCopy = v63;
        v20 = v60;
        storageCopy = v61;
        name = v59;
      }

      else
      {
        log = TRILogCategory_Server();
        if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_26F567000, log, OS_LOG_TYPE_ERROR, "Purgeable experiment candidate has no namespace.", buf, 2u);
        }
      }
    }
  }

  else
  {
    v20 = TRILogCategory_Server();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      experimentDeployment = [recordCopy experimentDeployment];
      experimentId = [experimentDeployment experimentId];
      *buf = 138412290;
      v78 = experimentId;
      _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "No treatment Id for experiment with experiment id: %@", buf, 0xCu);
    }
  }

  v58 = *MEMORY[0x277D85DE8];
}

- (void)_purgeablesForExperimentsFromNamespaces:(id)namespaces eagerFactors:(id)factors overriddenFactors:(id)overriddenFactors shouldGenerateAssetPaths:(BOOL)paths purgeableExperiments:(id *)experiments purgeableAssets:(id *)assets
{
  pathsCopy = paths;
  namespacesCopy = namespaces;
  factorsCopy = factors;
  overriddenFactorsCopy = overriddenFactors;
  if ([namespacesCopy count] || objc_msgSend(factorsCopy, "count"))
  {
    *buf = 0;
    v51[0] = buf;
    v51[1] = 0x3032000000;
    v51[2] = __Block_byref_object_copy__4;
    v51[3] = __Block_byref_object_dispose__4;
    v52 = 0;
    v47 = 0;
    v48[0] = &v47;
    v48[1] = 0x3032000000;
    v48[2] = __Block_byref_object_copy__4;
    v48[3] = __Block_byref_object_dispose__4;
    v49 = 0;
    if (pathsCopy)
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v18 = v51;
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v18 = v48;
    }

    v19 = *v18;
    v20 = *(v19 + 40);
    *(v19 + 40) = v17;

    v45[0] = 0;
    v45[1] = v45;
    v45[2] = 0x3032000000;
    v45[3] = __Block_byref_object_copy__4;
    v45[4] = __Block_byref_object_dispose__4;
    v46 = [[TRIClientTreatmentStorage alloc] initWithPaths:self->_paths];
    experimentDatabase = self->_experimentDatabase;
    v33 = MEMORY[0x277D85DD0];
    v34 = 3221225472;
    v35 = __177__TRIPurgeableExperimentAndRolloutProvider__purgeablesForExperimentsFromNamespaces_eagerFactors_overriddenFactors_shouldGenerateAssetPaths_purgeableExperiments_purgeableAssets___block_invoke;
    v36 = &unk_279DDFEC8;
    v37 = namespacesCopy;
    v44 = pathsCopy;
    v38 = factorsCopy;
    selfCopy = self;
    v40 = overriddenFactorsCopy;
    v41 = v45;
    v42 = buf;
    v43 = &v47;
    [(TRIExperimentDatabase *)experimentDatabase enumerateExperimentRecordsWithBlock:&v33];
    if (assets)
    {
      v22 = *(v51[0] + 40);
      if (v22)
      {
        v23 = [v22 copy];
        v24 = *assets;
        *assets = v23;
      }
    }

    if (experiments)
    {
      v25 = *(v48[0] + 40);
      if (v25)
      {
        v26 = [v25 copy];
        v27 = *experiments;
        *experiments = v26;
      }
    }

    _Block_object_dispose(v45, 8);
    _Block_object_dispose(&v47, 8);

    _Block_object_dispose(buf, 8);
    v28 = v52;
    goto LABEL_13;
  }

  v29 = TRILogCategory_Server();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v29, OS_LOG_TYPE_DEFAULT, "Stopping search for purgeable experiments as there are no purgeable namespaces or factors", buf, 2u);
  }

  if (assets)
  {
    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v31 = *assets;
    *assets = v30;
  }

  if (experiments)
  {
    v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v28 = *experiments;
    *experiments = v32;
LABEL_13:
  }
}

void __177__TRIPurgeableExperimentAndRolloutProvider__purgeablesForExperimentsFromNamespaces_eagerFactors_overriddenFactors_shouldGenerateAssetPaths_purgeableExperiments_purgeableAssets___block_invoke(uint64_t a1, void *a2)
{
  v45 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 status] == 1)
  {
    if ([v3 deploymentEnvironment] != 2 && objc_msgSend(v3, "deploymentEnvironment") != 3)
    {
      v9 = [v3 namespaces];
      v10 = [v9 count];

      if (v10)
      {
        v11 = [v3 treatmentId];

        if (v11)
        {
          v4 = objc_opt_new();
          v38 = 0u;
          v39 = 0u;
          v40 = 0u;
          v41 = 0u;
          v35 = v3;
          v12 = [v3 namespaces];
          v13 = [v12 countByEnumeratingWithState:&v38 objects:v42 count:16];
          if (v13)
          {
            v14 = v13;
            v15 = 0;
            v16 = *v39;
            do
            {
              for (i = 0; i != v14; ++i)
              {
                if (*v39 != v16)
                {
                  objc_enumerationMutation(v12);
                }

                v18 = [*(*(&v38 + 1) + 8 * i) name];
                v19 = [*(a1 + 32) containsObject:v18];
                v20 = [*(a1 + 40) objectForKeyedSubscript:v18];

                if (v20)
                {
                  v21 = [*(a1 + 40) objectForKeyedSubscript:v18];
                  [v4 unionSet:v21];
                }

                v15 |= v19;
              }

              v14 = [v12 countByEnumeratingWithState:&v38 objects:v42 count:16];
            }

            while (v14);
          }

          else
          {
            v15 = 0;
          }

          if ([v4 count]|| (v15 & 1) != 0)
          {
            v3 = v35;
            if (*(a1 + 88) == 1)
            {
              v23 = objc_alloc_init(MEMORY[0x277CBEB38]);
            }

            else
            {
              v23 = 0;
            }

            v37 = 0;
            v26 = [v35 factorPackSetId];

            if (v26)
            {
              v27 = *(a1 + 48);
              v28 = [v35 factorPackSetId];
              LODWORD(v27) = [v27 _factorPackSetHasPurgeableFactorsWithFPSId:v28 eagerFactors:*(a1 + 40) overriddenFactors:*(a1 + 56) purgeableNamespaces:*(a1 + 32) returningAssets:v23];

              v37 = v27 != 0;
            }

            LOBYTE(v34) = *(a1 + 88);
            [*(a1 + 48) _checkTreatmentBasedExperimentForPurgeables:v4 experimentAssets:v23 experimentHasNamespaceWithEagerFactors:&v37 experimentHasPurgeableNamespace:v15 & 1 overriddenFactors:*(a1 + 56) record:v35 shouldGenerateAssetPaths:v34 storage:*(*(*(a1 + 64) + 8) + 40)];
            if (v37)
            {
              v29 = TRILogCategory_Server();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
              {
                v30 = [v35 experimentDeployment];
                v31 = [v30 experimentId];
                *buf = 138543362;
                v44 = v31;
                _os_log_impl(&dword_26F567000, v29, OS_LOG_TYPE_DEFAULT, "Found purgeable experiment %{public}@", buf, 0xCu);
              }

              if (*(a1 + 88) == 1)
              {
                v36[0] = MEMORY[0x277D85DD0];
                v36[1] = 3221225472;
                v36[2] = __177__TRIPurgeableExperimentAndRolloutProvider__purgeablesForExperimentsFromNamespaces_eagerFactors_overriddenFactors_shouldGenerateAssetPaths_purgeableExperiments_purgeableAssets___block_invoke_40;
                v36[3] = &unk_279DDFEA0;
                v36[4] = *(a1 + 72);
                [v23 enumerateKeysAndObjectsUsingBlock:v36];
              }

              else
              {
                v32 = *(*(*(a1 + 80) + 8) + 40);
                v33 = [v35 experimentDeployment];
                [v32 addObject:v33];
              }
            }
          }

          else
          {
            v23 = TRILogCategory_Server();
            v3 = v35;
            if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
            {
              v24 = [v35 experimentDeployment];
              v25 = [v24 experimentId];
              *buf = 138543362;
              v44 = v25;
              _os_log_impl(&dword_26F567000, v23, OS_LOG_TYPE_DEFAULT, "Skipping experiment %{public}@ without eager factors or purgeable namespace while looking for purgeable experiments", buf, 0xCu);
            }
          }

          goto LABEL_7;
        }

        v4 = TRILogCategory_Server();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v5 = [v3 experimentDeployment];
        v6 = [v5 experimentId];
        *buf = 138543362;
        v44 = v6;
        v22 = "Skipping experiment %{public}@ with no treatment ID.";
      }

      else
      {
        v4 = TRILogCategory_Server();
        if (!os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_7;
        }

        v5 = [v3 experimentDeployment];
        v6 = [v5 experimentId];
        *buf = 138543362;
        v44 = v6;
        v22 = "Skipping experiment %{public}@ with no namespaces.";
      }

      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, v22, buf, 0xCu);
      goto LABEL_24;
    }

    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [v3 experimentDeployment];
      v6 = [v5 experimentId];
      *buf = 138543362;
      v44 = v6;
      v7 = "Skipping experiment %{public}@ while looking for purgeable experiments since its does not have assets on device";
LABEL_23:
      _os_log_debug_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEBUG, v7, buf, 0xCu);
LABEL_24:
    }
  }

  else
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      v5 = [v3 experimentDeployment];
      v6 = [v5 experimentId];
      *buf = 138543362;
      v44 = v6;
      v7 = "Skipping experiment %{public}@ while looking for purgeable experiments since its not active";
      goto LABEL_23;
    }
  }

LABEL_7:

  v8 = *MEMORY[0x277D85DE8];
}

void __177__TRIPurgeableExperimentAndRolloutProvider__purgeablesForExperimentsFromNamespaces_eagerFactors_overriddenFactors_shouldGenerateAssetPaths_purgeableExperiments_purgeableAssets___block_invoke_40(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:v10];
  v8 = v7;
  if (!v7)
  {
    v8 = objc_opt_new();
  }

  [*(*(*(a1 + 32) + 8) + 40) setObject:v8 forKeyedSubscript:v10];
  if (!v7)
  {
  }

  v9 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v10];
  [v9 unionSet:v6];
}

- (BOOL)_checkForPurgeableFactorsInEagerFactors:(id)factors factorLevel:(id)level legacyPath:(id)path overriddenFactors:(id)overriddenFactors purgeableNamespaces:(id)namespaces returningAssets:(id)assets
{
  v55[3] = *MEMORY[0x277D85DE8];
  factorsCopy = factors;
  levelCopy = level;
  pathCopy = path;
  overriddenFactorsCopy = overriddenFactors;
  namespacesCopy = namespaces;
  assetsCopy = assets;
  v19 = fileFromFactor(levelCopy);
  v20 = v19;
  v54 = assetsCopy;
  if (v19)
  {
    asset = [v19 asset];
    assetId = [asset assetId];
    v23 = TRIValidateAssetId();

    if (assetsCopy)
    {
      path = [v20 path];
      v25 = [path length];

      if (v25)
      {
        if (v23)
        {
          v26 = [assetsCopy objectForKeyedSubscript:v23];
          if (v26)
          {
            [assetsCopy setObject:v26 forKeyedSubscript:v23];
          }

          else
          {
            v27 = objc_opt_new();
            [assetsCopy setObject:v27 forKeyedSubscript:v23];
          }

          v28 = [assetsCopy objectForKeyedSubscript:v23];
          path2 = [v20 path];
          [v28 addObject:path2];

          if ([pathCopy length])
          {
            path3 = [v20 path];
            [path3 lastPathComponent];
            v31 = namespacesCopy;
            v32 = pathCopy;
            v34 = v33 = factorsCopy;

            v35 = MEMORY[0x277CCACA8];
            v55[0] = v32;
            v55[1] = @"assets";
            v55[2] = v34;
            v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v55 count:3];
            v37 = [v35 pathWithComponents:v36];

            v38 = [v54 objectForKeyedSubscript:v23];
            [v38 addObject:v37];

            factorsCopy = v33;
            pathCopy = v32;
            namespacesCopy = v31;
          }
        }
      }
    }
  }

  if (factorIsValidRegularFileFactor(levelCopy))
  {
    v53 = factorsCopy;
    factor = [levelCopy factor];
    namespaceName = [factor namespaceName];

    factor2 = [levelCopy factor];
    name = [factor2 name];

    v43 = [namespacesCopy containsObject:namespaceName];
    if (v43)
    {
      v44 = [overriddenFactorsCopy objectForKeyedSubscript:namespaceName];
      if (![v44 containsObject:name])
      {
        v49 = 1;
LABEL_19:

LABEL_20:
        factorsCopy = v53;
        goto LABEL_21;
      }

      v52 = v44;
    }

    [v53 objectForKeyedSubscript:namespaceName];
    v45 = namespacesCopy;
    v46 = overriddenFactorsCopy;
    v48 = v47 = pathCopy;
    v49 = [v48 containsObject:name];

    pathCopy = v47;
    overriddenFactorsCopy = v46;
    namespacesCopy = v45;
    v44 = v52;
    if (!v43)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v49 = 0;
LABEL_21:

  v50 = *MEMORY[0x277D85DE8];
  return v49;
}

- (void)_purgeablesForRolloutsFromNamespaces:(id)namespaces eagerFactors:(id)factors overriddenFactors:(id)overriddenFactors shouldGenerateAssetPaths:(BOOL)paths purgeableExperiments:(id *)experiments purgeableAssets:(id *)assets
{
  pathsCopy = paths;
  namespacesCopy = namespaces;
  factorsCopy = factors;
  overriddenFactorsCopy = overriddenFactors;
  if ([namespacesCopy count] || objc_msgSend(factorsCopy, "count"))
  {
    *buf = 0;
    v45[0] = buf;
    v45[1] = 0x3032000000;
    v45[2] = __Block_byref_object_copy__4;
    v45[3] = __Block_byref_object_dispose__4;
    v46 = 0;
    v41 = 0;
    v42[0] = &v41;
    v42[1] = 0x3032000000;
    v42[2] = __Block_byref_object_copy__4;
    v42[3] = __Block_byref_object_dispose__4;
    v43 = 0;
    if (pathsCopy)
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB38]);
      v18 = v45;
    }

    else
    {
      v17 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v18 = v42;
    }

    v19 = *v18;
    v20 = *(v19 + 40);
    *(v19 + 40) = v17;

    v33[0] = MEMORY[0x277D85DD0];
    v33[1] = 3221225472;
    v33[2] = __174__TRIPurgeableExperimentAndRolloutProvider__purgeablesForRolloutsFromNamespaces_eagerFactors_overriddenFactors_shouldGenerateAssetPaths_purgeableExperiments_purgeableAssets___block_invoke;
    v33[3] = &unk_279DDFEF0;
    v34 = namespacesCopy;
    v40 = pathsCopy;
    v35 = factorsCopy;
    selfCopy = self;
    v37 = overriddenFactorsCopy;
    v38 = buf;
    v39 = &v41;
    v21 = MEMORY[0x2743948D0](v33);
    [(TRIRolloutDatabase *)self->_rolloutDatabase enumerateRecordsUsingTransaction:0 block:v21];
    if (assets)
    {
      v22 = *(v45[0] + 40);
      if (v22)
      {
        v23 = [v22 copy];
        v24 = *assets;
        *assets = v23;
      }
    }

    if (experiments)
    {
      v25 = *(v42[0] + 40);
      if (v25)
      {
        v26 = [v25 copy];
        v27 = *experiments;
        *experiments = v26;
      }
    }

    _Block_object_dispose(&v41, 8);
    _Block_object_dispose(buf, 8);
    v28 = v46;
    goto LABEL_13;
  }

  v29 = TRILogCategory_Server();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_26F567000, v29, OS_LOG_TYPE_DEFAULT, "Stopping search for purgeable rollouts as there are no purgeable namespaces or factors", buf, 2u);
  }

  if (assets)
  {
    v30 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v31 = *assets;
    *assets = v30;
  }

  if (experiments)
  {
    v32 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v28 = *experiments;
    *experiments = v32;
LABEL_13:
  }
}

void __174__TRIPurgeableExperimentAndRolloutProvider__purgeablesForRolloutsFromNamespaces_eagerFactors_overriddenFactors_shouldGenerateAssetPaths_purgeableExperiments_purgeableAssets___block_invoke(uint64_t a1, void *a2)
{
  v35 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([v3 status] != 1)
  {
    v14 = TRILogCategory_Server();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v15 = [v3 deployment];
    v16 = [v15 rolloutId];
    *buf = 138543362;
    v34 = v16;
    v17 = "Skipping inactive rollout %{public}@ while looking for purgeable rollouts";
    goto LABEL_20;
  }

  v4 = [v3 activeFactorPackSetId];

  if (v4)
  {
    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    v5 = [v3 namespaces];
    v6 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = 0;
      v10 = *v29;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v29 != v10)
          {
            objc_enumerationMutation(v5);
          }

          v12 = *(*(&v28 + 1) + 8 * i);
          v8 |= [*(a1 + 32) containsObject:v12];
          v13 = [*(a1 + 40) objectForKeyedSubscript:v12];
          v9 |= v13 != 0;
        }

        v7 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
      }

      while (v7);

      if ((v9 | v8))
      {
        if (*(a1 + 80) == 1)
        {
          v14 = objc_alloc_init(MEMORY[0x277CBEB38]);
        }

        else
        {
          v14 = 0;
        }

        v19 = *(a1 + 48);
        v20 = [v3 activeFactorPackSetId];
        LODWORD(v19) = [v19 _factorPackSetHasPurgeableFactorsWithFPSId:v20 eagerFactors:*(a1 + 40) overriddenFactors:*(a1 + 56) purgeableNamespaces:*(a1 + 32) returningAssets:v14];

        if (v19)
        {
          v21 = TRILogCategory_Server();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
          {
            v22 = [v3 deployment];
            v23 = [v22 rolloutId];
            *buf = 138543362;
            v34 = v23;
            _os_log_impl(&dword_26F567000, v21, OS_LOG_TYPE_DEFAULT, "Found purgeable rollout %{public}@", buf, 0xCu);
          }

          if (*(a1 + 80) == 1)
          {
            v27[0] = MEMORY[0x277D85DD0];
            v27[1] = 3221225472;
            v27[2] = __174__TRIPurgeableExperimentAndRolloutProvider__purgeablesForRolloutsFromNamespaces_eagerFactors_overriddenFactors_shouldGenerateAssetPaths_purgeableExperiments_purgeableAssets___block_invoke_43;
            v27[3] = &unk_279DDFEA0;
            v27[4] = *(a1 + 64);
            [v14 enumerateKeysAndObjectsUsingBlock:v27];
          }

          else
          {
            v24 = *(*(*(a1 + 72) + 8) + 40);
            v25 = [v3 deployment];
            v26 = [v25 rolloutId];
            [v24 addObject:v26];
          }
        }

        goto LABEL_21;
      }
    }

    else
    {
    }

    v14 = TRILogCategory_Server();
    if (!os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_21;
    }

    v15 = [v3 deployment];
    v16 = [v15 rolloutId];
    *buf = 138543362;
    v34 = v16;
    v17 = "Skipping rollout %{public}@ without eager factors or purgeable namespace while looking for purgeable rollouts";
LABEL_20:
    _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, v17, buf, 0xCu);

    goto LABEL_21;
  }

  v14 = TRILogCategory_Server();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v34 = v3;
    _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Found active rollout with missing activeFactorPackSetId: %{public}@", buf, 0xCu);
  }

LABEL_21:

  v18 = *MEMORY[0x277D85DE8];
}

void __174__TRIPurgeableExperimentAndRolloutProvider__purgeablesForRolloutsFromNamespaces_eagerFactors_overriddenFactors_shouldGenerateAssetPaths_purgeableExperiments_purgeableAssets___block_invoke_43(uint64_t a1, void *a2, void *a3)
{
  v10 = a2;
  v5 = *(*(*(a1 + 32) + 8) + 40);
  v6 = a3;
  v7 = [v5 objectForKeyedSubscript:v10];
  v8 = v7;
  if (!v7)
  {
    v8 = objc_opt_new();
  }

  [*(*(*(a1 + 32) + 8) + 40) setObject:v8 forKeyedSubscript:v10];
  if (!v7)
  {
  }

  v9 = [*(*(*(a1 + 32) + 8) + 40) objectForKeyedSubscript:v10];
  [v9 unionSet:v6];
}

- (BOOL)_factorPackSetHasPurgeableFactorsWithFPSId:(id)id eagerFactors:(id)factors overriddenFactors:(id)overriddenFactors purgeableNamespaces:(id)namespaces returningAssets:(id)assets
{
  idCopy = id;
  factorsCopy = factors;
  overriddenFactorsCopy = overriddenFactors;
  namespacesCopy = namespaces;
  assetsCopy = assets;
  v17 = [[TRIFactorPackSetStorage alloc] initWithPaths:self->_paths];
  v18 = [[TRIFactorPackStorage alloc] initWithPaths:self->_paths];
  v19 = [[TRIFBFactorPackStorage alloc] initWithPaths:self->_paths];
  v37 = 0;
  v38 = &v37;
  v39 = 0x2020000000;
  v40 = 0;
  v28[0] = MEMORY[0x277D85DD0];
  v28[1] = 3221225472;
  v28[2] = __154__TRIPurgeableExperimentAndRolloutProvider__factorPackSetHasPurgeableFactorsWithFPSId_eagerFactors_overriddenFactors_purgeableNamespaces_returningAssets___block_invoke;
  v28[3] = &unk_279DDFF68;
  v36 = a2;
  v28[4] = self;
  v20 = v19;
  v29 = v20;
  v21 = factorsCopy;
  v30 = v21;
  v22 = overriddenFactorsCopy;
  v31 = v22;
  v23 = namespacesCopy;
  v32 = v23;
  v24 = assetsCopy;
  v33 = v24;
  v35 = &v37;
  v25 = v18;
  v34 = v25;
  [(TRIFactorPackSetStorage *)v17 enumerateFactorPacksForFactorPackSet:idCopy usingLegacyPaths:0 withBlock:v28];
  LOBYTE(overriddenFactorsCopy) = *(v38 + 24);

  _Block_object_dispose(&v37, 8);
  return overriddenFactorsCopy;
}

void __154__TRIPurgeableExperimentAndRolloutProvider__factorPackSetHasPurgeableFactorsWithFPSId_eagerFactors_overriddenFactors_purgeableNamespaces_returningAssets___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v6)
  {
    v8 = [v6 levels];
    v37[0] = MEMORY[0x277D85DD0];
    v37[1] = 3221225472;
    v37[2] = __154__TRIPurgeableExperimentAndRolloutProvider__factorPackSetHasPurgeableFactorsWithFPSId_eagerFactors_overriddenFactors_purgeableNamespaces_returningAssets___block_invoke_2;
    v37[3] = &unk_279DDFF18;
    v38 = v7;
    v9 = *(a1 + 96);
    v10 = &v40;
    v29 = &v40 + 1;
    v28 = *(a1 + 32);
    v11 = *(&v28 + 1);
    v12 = v5;
    v13 = *(a1 + 48);
    v14 = *(a1 + 56);
    *&v15 = v13;
    *(&v15 + 1) = v14;
    v39 = v28;
    v40 = v15;
    v16 = v41;
    v17 = *(a1 + 64);
    v18 = v41 + 1;
    v19 = *(a1 + 72);
    *&v20 = *(a1 + 88);
    *(&v20 + 1) = v9;
    *&v21 = v17;
    v5 = v12;
    v22 = &v39 + 1;
    v23 = &v38;
    *(&v21 + 1) = v19;
    v41[0] = v21;
    v41[1] = v20;
    [v8 enumerateObjectsUsingBlock:v37];
  }

  else
  {
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __154__TRIPurgeableExperimentAndRolloutProvider__factorPackSetHasPurgeableFactorsWithFPSId_eagerFactors_overriddenFactors_purgeableNamespaces_returningAssets___block_invoke_63;
    v30[3] = &unk_279DDFF40;
    v23 = v31;
    v24 = v5;
    v36[2] = *(a1 + 96);
    v25 = *(a1 + 32);
    v31[0] = v24;
    v31[1] = v25;
    v22 = &v32;
    v32 = *(a1 + 80);
    v10 = &v33;
    v33 = *(a1 + 48);
    v29 = &v34;
    v34 = *(a1 + 56);
    v16 = &v35;
    v35 = *(a1 + 64);
    v18 = v36;
    v26 = *(a1 + 72);
    v27 = *(a1 + 88);
    v36[0] = v26;
    v36[1] = v27;
    [v24 enumerateFactorLevelsWithBlock:v30];
  }
}

void __154__TRIPurgeableExperimentAndRolloutProvider__factorPackSetHasPurgeableFactorsWithFPSId_eagerFactors_overriddenFactors_purgeableNamespaces_returningAssets___block_invoke_2(uint64_t a1, void *a2)
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  v5 = [*(a1 + 32) sourceAsFactorPackId];

  if (!v5)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:*(a1 + 96) object:*(a1 + 40) file:@"TRIPurgeableExperimentAndRolloutProvider.m" lineNumber:516 description:{@"Invalid parameter not satisfying: %@", @"fbFactorPack.sourceAsFactorPackId"}];
  }

  v6 = [*(a1 + 32) namespaceName];

  if (!v6)
  {
    v21 = [MEMORY[0x277CCA890] currentHandler];
    [v21 handleFailureInMethod:*(a1 + 96) object:*(a1 + 40) file:@"TRIPurgeableExperimentAndRolloutProvider.m" lineNumber:517 description:{@"Invalid parameter not satisfying: %@", @"fbFactorPack.namespaceName"}];
  }

  v7 = [*(a1 + 32) sourceAsFactorPackId];
  v8 = TRIValidateFactorPackId();

  if (v8)
  {
    v9 = *(a1 + 48);
    v10 = [*(a1 + 32) namespaceName];
    v11 = [v9 pathForFactorLevelsWithFactorPackId:v8 namespaceName:v10];

    v12 = MEMORY[0x277D73738];
    v13 = [*(a1 + 32) namespaceName];
    v14 = [v12 convertFBFactorLevelToProtoFactorLevel:v3 parentDir:v11 namespaceName:v13 isRelativePath:0];

    v15 = *(a1 + 48);
    v16 = [*(a1 + 32) namespaceName];
    v17 = [v15 legacyPathForFactorLevelsWithFactorPackId:v8 namespaceName:v16];

    if ([*(a1 + 40) _checkForPurgeableFactorsInEagerFactors:*(a1 + 56) factorLevel:v14 legacyPath:v17 overriddenFactors:*(a1 + 64) purgeableNamespaces:*(a1 + 72) returningAssets:*(a1 + 80)])
    {
      *(*(*(a1 + 88) + 8) + 24) = 1;
    }
  }

  else
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v19 = [*(a1 + 32) sourceAsFactorPackId];
      *buf = 138412290;
      v23 = v19;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Invalid factor pack id %@ while enumerating factor levels:", buf, 0xCu);
    }
  }

  objc_autoreleasePoolPop(v4);
  v18 = *MEMORY[0x277D85DE8];
}

void __154__TRIPurgeableExperimentAndRolloutProvider__factorPackSetHasPurgeableFactorsWithFPSId_eagerFactors_overriddenFactors_purgeableNamespaces_returningAssets___block_invoke_63(uint64_t a1, void *a2)
{
  v15 = a2;
  v3 = *(a1 + 32);
  if (!v3)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 96) object:*(a1 + 40) file:@"TRIPurgeableExperimentAndRolloutProvider.m" lineNumber:540 description:{@"Invalid parameter not satisfying: %@", @"factorPack"}];

    v3 = *(a1 + 32);
  }

  v4 = [v3 factorPackId];

  if (!v4)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:*(a1 + 96) object:*(a1 + 40) file:@"TRIPurgeableExperimentAndRolloutProvider.m" lineNumber:541 description:{@"Invalid parameter not satisfying: %@", @"factorPack.factorPackId"}];
  }

  v5 = [*(a1 + 32) selectedNamespace];

  if (!v5)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:*(a1 + 96) object:*(a1 + 40) file:@"TRIPurgeableExperimentAndRolloutProvider.m" lineNumber:542 description:{@"Invalid parameter not satisfying: %@", @"factorPack.selectedNamespace"}];
  }

  v6 = *(a1 + 48);
  v7 = [*(a1 + 32) factorPackId];
  v8 = [*(a1 + 32) selectedNamespace];
  v9 = [v8 name];

  if (!v9)
  {
    v14 = [MEMORY[0x277CCA890] currentHandler];
    [v14 handleFailureInMethod:*(a1 + 96) object:*(a1 + 40) file:@"TRIPurgeableExperimentAndRolloutProvider.m" lineNumber:543 description:{@"Expression was unexpectedly nil/false: %@", @"factorPack.selectedNamespace.name"}];
  }

  v10 = [v6 legacyPathForFactorPackWithId:v7 namespaceName:v9];

  if ([*(a1 + 40) _checkForPurgeableFactorsInEagerFactors:*(a1 + 56) factorLevel:v15 legacyPath:v10 overriddenFactors:*(a1 + 64) purgeableNamespaces:*(a1 + 72) returningAssets:*(a1 + 80)])
  {
    *(*(*(a1 + 88) + 8) + 24) = 1;
  }
}

@end