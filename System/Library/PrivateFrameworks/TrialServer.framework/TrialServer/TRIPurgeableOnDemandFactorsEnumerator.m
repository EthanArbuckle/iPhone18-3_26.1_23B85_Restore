@interface TRIPurgeableOnDemandFactorsEnumerator
- (TRIPurgeableOnDemandFactorsEnumerator)initWithPaths:(id)a3 namespaceResolver:(id)a4;
- (void)_enumerateExperimentOnDemandFactorsWithNamespaceName:(id)a3 block:(id)a4;
- (void)_enumerateRolloutOnDemandFactorsWithNamespaceName:(id)a3 block:(id)a4;
- (void)_filterOndemandAssetsForFactorLevels:(id)a3 forFactorPackId:(id)a4 treatmentId:(id)a5 block:(id)a6;
- (void)enumerateExperimentOnDemandFactorsPurgeCandidatesFromNamespaceNames:(id)a3 purgeableFactorFilterBlock:(id)a4 block:(id)a5;
- (void)enumerateRolloutOnDemandFactorsPurgeCandidatesFromNamespaceNames:(id)a3 purgeableFactorFilterBlock:(id)a4 block:(id)a5;
@end

@implementation TRIPurgeableOnDemandFactorsEnumerator

- (TRIPurgeableOnDemandFactorsEnumerator)initWithPaths:(id)a3 namespaceResolver:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TRIPurgeableOnDemandFactorsEnumerator;
  v9 = [(TRIPurgeableOnDemandFactorsEnumerator *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_paths, a3);
    objc_storeStrong(&v10->_namespaceResolver, a4);
  }

  return v10;
}

- (void)enumerateRolloutOnDemandFactorsPurgeCandidatesFromNamespaceNames:(id)a3 purgeableFactorFilterBlock:(id)a4 block:(id)a5
{
  v47 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v26 = a4;
  v23 = a5;
  v27 = objc_opt_new();
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = v8;
  v9 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
  if (v9)
  {
    v24 = *v43;
LABEL_3:
    v10 = 0;
    while (1)
    {
      if (*v43 != v24)
      {
        objc_enumerationMutation(obj);
      }

      v11 = *(*(&v42 + 1) + 8 * v10);
      v12 = objc_autoreleasePoolPush();
      v13 = objc_opt_new();
      v36 = 0;
      v37 = &v36;
      v38 = 0x3032000000;
      v39 = __Block_byref_object_copy__5;
      v40 = __Block_byref_object_dispose__5;
      v41 = 0;
      v29[0] = MEMORY[0x277D85DD0];
      v29[1] = 3221225472;
      v29[2] = __139__TRIPurgeableOnDemandFactorsEnumerator_enumerateRolloutOnDemandFactorsPurgeCandidatesFromNamespaceNames_purgeableFactorFilterBlock_block___block_invoke;
      v29[3] = &unk_279DDFFB8;
      v33 = v26;
      v34 = &v36;
      v29[4] = v11;
      v14 = v13;
      v30 = v14;
      v15 = v27;
      v35 = a2;
      v31 = v15;
      v32 = self;
      v16 = MEMORY[0x2743948D0](v29);
      [(TRIPurgeableOnDemandFactorsEnumerator *)self _enumerateRolloutOnDemandFactorsWithNamespaceName:v11 block:v16];
      if (!v37[5])
      {
        goto LABEL_9;
      }

      v28 = 0;
      v17 = [TRIPurgeableConstruct alloc];
      v18 = [(TRIPurgeableConstruct *)v17 initWithFactorPackId:v37[5] treatmentId:0 namespaceName:v11 purgeableAssetFactorNames:v14];
      v23[2](v23, v18, v15, &v28);
      v19 = v28;

      if (v19)
      {
        v20 = 0;
      }

      else
      {
LABEL_9:
        v20 = 1;
      }

      _Block_object_dispose(&v36, 8);
      objc_autoreleasePoolPop(v12);
      if (!v20)
      {
        break;
      }

      if (v9 == ++v10)
      {
        v9 = [obj countByEnumeratingWithState:&v42 objects:v46 count:16];
        if (v9)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __139__TRIPurgeableOnDemandFactorsEnumerator_enumerateRolloutOnDemandFactorsPurgeCandidatesFromNamespaceNames_purgeableFactorFilterBlock_block___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 64);
  if (!v5 || ([v3 factorName], v6 = objc_claimAutoreleasedReturnValue(), v7 = (*(v5 + 16))(v5, v6, *(a1 + 32)), v6, v7))
  {
    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 40);
    if (v9)
    {
      v10 = v9;
      v11 = *(v8 + 40);
      *(v8 + 40) = v10;
    }

    else
    {
      v12 = [v4 factorPackId];
      v13 = *(*(a1 + 72) + 8);
      v11 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    v14 = [v4 filePath];
    if (v14)
    {
      v15 = *(a1 + 40);
      v16 = [v4 factorName];
      [v15 addObject:v16];

      v17 = [v4 assetId];
      v18 = [*(a1 + 48) objectForKeyedSubscript:v17];
      if (v18)
      {
        [*(a1 + 48) setObject:v18 forKeyedSubscript:v17];
      }

      else
      {
        v19 = objc_opt_new();
        [*(a1 + 48) setObject:v19 forKeyedSubscript:v17];
      }

      v20 = [*(a1 + 48) objectForKeyedSubscript:v17];
      [v20 addObject:v14];

      if (!*(*(*(a1 + 72) + 8) + 40))
      {
        v35 = [MEMORY[0x277CCA890] currentHandler];
        [v35 handleFailureInMethod:*(a1 + 80) object:*(a1 + 56) file:@"TRIPurgeableOnDemandFactorsEnumerator.m" lineNumber:62 description:@"Expected a valid factorPackId."];
      }

      v21 = [[TRIFactorPackStorage alloc] initWithPaths:*(*(a1 + 56) + 8)];
      v22 = [(TRIFactorPackStorage *)v21 legacyPathForFactorPackWithId:*(*(*(a1 + 72) + 8) + 40) namespaceName:*(a1 + 32)];
      if (v22)
      {
        v23 = v22;
        if (_os_feature_enabled_impl())
        {
          v24 = [[TRIFBFactorPackStorage alloc] initWithPaths:*(*(a1 + 56) + 8)];
          v25 = [(TRIFBFactorPackStorage *)v24 legacyPathForFactorLevelsWithFactorPackId:*(*(*(a1 + 72) + 8) + 40) namespaceName:*(a1 + 32)];
          if ([v25 isEqualToString:v23])
          {
            if (_os_feature_enabled_impl())
            {
              v26 = v25;

              v23 = v26;
            }
          }

          else
          {
            v27 = TRILogCategory_Server();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              v34 = *(*(*(a1 + 72) + 8) + 40);
              *buf = 138543874;
              v38 = v25;
              v39 = 2114;
              v40 = v23;
              v41 = 2114;
              v42 = v34;
              _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Legacy path from flatbuffers: %{public}@ does not match path from protobuf: %{public}@ for factor pack id: %{public}@", buf, 0x20u);
            }
          }
        }

        v28 = [v14 lastPathComponent];
        v29 = MEMORY[0x277CCACA8];
        v36[0] = v23;
        v36[1] = @"assets";
        v36[2] = v28;
        v30 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:3];
        v31 = [v29 pathWithComponents:v30];

        v32 = [*(a1 + 48) objectForKeyedSubscript:v17];
        [v32 addObject:v31];
      }
    }
  }

  v33 = *MEMORY[0x277D85DE8];
}

- (void)enumerateExperimentOnDemandFactorsPurgeCandidatesFromNamespaceNames:(id)a3 purgeableFactorFilterBlock:(id)a4 block:(id)a5
{
  v52 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v24 = a4;
  v22 = a5;
  v25 = objc_opt_new();
  v47 = 0u;
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  obj = v8;
  v26 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
  if (v26)
  {
    v23 = *v48;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v48 != v23)
      {
        objc_enumerationMutation(obj);
      }

      v10 = *(*(&v47 + 1) + 8 * v9);
      v11 = objc_autoreleasePoolPush();
      v12 = objc_opt_new();
      v41 = 0;
      v42 = &v41;
      v43 = 0x3032000000;
      v44 = __Block_byref_object_copy__5;
      v45 = __Block_byref_object_dispose__5;
      v46 = 0;
      v35 = 0;
      v36 = &v35;
      v37 = 0x3032000000;
      v38 = __Block_byref_object_copy__5;
      v39 = __Block_byref_object_dispose__5;
      v40 = 0;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __142__TRIPurgeableOnDemandFactorsEnumerator_enumerateExperimentOnDemandFactorsPurgeCandidatesFromNamespaceNames_purgeableFactorFilterBlock_block___block_invoke;
      v28[3] = &unk_279DDFFE0;
      v32 = v24;
      v33 = &v41;
      v28[4] = v10;
      v34 = &v35;
      v13 = v12;
      v29 = v13;
      v14 = v25;
      v30 = v14;
      v31 = self;
      v15 = MEMORY[0x2743948D0](v28);
      [(TRIPurgeableOnDemandFactorsEnumerator *)self _enumerateExperimentOnDemandFactorsWithNamespaceName:v10 block:v15];
      if (!v42[5] && !v36[5])
      {
        goto LABEL_10;
      }

      v27 = 0;
      v16 = [TRIPurgeableConstruct alloc];
      v17 = [(TRIPurgeableConstruct *)v16 initWithFactorPackId:v42[5] treatmentId:v36[5] namespaceName:v10 purgeableAssetFactorNames:v13];
      v22[2](v22, v17, v14, &v27);
      v18 = v27;

      if (v18)
      {
        v19 = 0;
      }

      else
      {
LABEL_10:
        v19 = 1;
      }

      _Block_object_dispose(&v35, 8);
      _Block_object_dispose(&v41, 8);

      objc_autoreleasePoolPop(v11);
      if (!v19)
      {
        break;
      }

      if (v26 == ++v9)
      {
        v26 = [obj countByEnumeratingWithState:&v47 objects:v51 count:16];
        if (v26)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

void __142__TRIPurgeableOnDemandFactorsEnumerator_enumerateExperimentOnDemandFactorsPurgeCandidatesFromNamespaceNames_purgeableFactorFilterBlock_block___block_invoke(uint64_t a1, void *a2)
{
  v50 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  v5 = *(a1 + 64);
  if (!v5 || ([v3 factorName], v6 = objc_claimAutoreleasedReturnValue(), v7 = (*(v5 + 16))(v5, v6, *(a1 + 32)), v6, v7))
  {
    v8 = *(*(a1 + 72) + 8);
    v9 = *(v8 + 40);
    if (v9)
    {
      v10 = v9;
      v11 = *(v8 + 40);
      *(v8 + 40) = v10;
    }

    else
    {
      v12 = [v4 factorPackId];
      v13 = *(*(a1 + 72) + 8);
      v11 = *(v13 + 40);
      *(v13 + 40) = v12;
    }

    v14 = *(*(a1 + 80) + 8);
    v15 = *(v14 + 40);
    if (v15)
    {
      v16 = v15;
      v17 = *(v14 + 40);
      *(v14 + 40) = v16;
    }

    else
    {
      v18 = [v4 treatmentId];
      v19 = *(*(a1 + 80) + 8);
      v17 = *(v19 + 40);
      *(v19 + 40) = v18;
    }

    v20 = [v4 filePath];
    if (v20)
    {
      v21 = *(a1 + 40);
      v22 = [v4 factorName];
      [v21 addObject:v22];

      v23 = [v4 assetId];
      v24 = [*(a1 + 48) objectForKeyedSubscript:v23];
      if (v24)
      {
        [*(a1 + 48) setObject:v24 forKeyedSubscript:v23];
      }

      else
      {
        v25 = objc_opt_new();
        [*(a1 + 48) setObject:v25 forKeyedSubscript:v23];
      }

      v26 = [*(a1 + 48) objectForKeyedSubscript:v23];
      [v26 addObject:v20];

      v27 = [v4 factorPackId];

      if (v27)
      {
        v28 = [[TRIFactorPackStorage alloc] initWithPaths:*(*(a1 + 56) + 8)];
        v29 = [v4 factorPackId];
        v30 = [(TRIFactorPackStorage *)v28 legacyPathForFactorPackWithId:v29 namespaceName:*(a1 + 32)];

        if (v30)
        {
          if (_os_feature_enabled_impl())
          {
            v31 = [[TRIFBFactorPackStorage alloc] initWithPaths:*(*(a1 + 56) + 8)];
            v32 = [v4 factorPackId];
            v33 = [(TRIFBFactorPackStorage *)v31 legacyPathForFactorLevelsWithFactorPackId:v32 namespaceName:*(a1 + 32)];

            if ([v33 isEqualToString:v30])
            {
              if (_os_feature_enabled_impl())
              {
                v34 = v33;

                v30 = v34;
              }
            }

            else
            {
              v35 = TRILogCategory_Server();
              if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
              {
                v42 = *(*(*(a1 + 72) + 8) + 40);
                *buf = 138543874;
                v45 = v33;
                v46 = 2114;
                v47 = v30;
                v48 = 2114;
                v49 = v42;
                _os_log_error_impl(&dword_26F567000, v35, OS_LOG_TYPE_ERROR, "Legacy path from flatbuffers: %{public}@ does not match path from protobuf: %{public}@ for factor pack id: %{public}@", buf, 0x20u);
              }
            }
          }

          v36 = [v20 lastPathComponent];
          v37 = MEMORY[0x277CCACA8];
          v43[0] = v30;
          v43[1] = @"assets";
          v43[2] = v36;
          v38 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:3];
          v39 = [v37 pathWithComponents:v38];

          v40 = [*(a1 + 48) objectForKeyedSubscript:v23];
          [v40 addObject:v39];
        }
      }
    }
  }

  v41 = *MEMORY[0x277D85DE8];
}

- (void)_enumerateRolloutOnDemandFactorsWithNamespaceName:(id)a3 block:(id)a4
{
  v26 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = objc_autoreleasePoolPush();
  v9 = [MEMORY[0x277D73760] factorProviderWithPaths:self->_paths namespaceName:v6 resolver:self->_namespaceResolver faultOnMissingInstalledFactors:0];
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __97__TRIPurgeableOnDemandFactorsEnumerator__enumerateRolloutOnDemandFactorsWithNamespaceName_block___block_invoke;
  v20[3] = &unk_279DDEEE0;
  v10 = v9;
  v21 = v10;
  v11 = MEMORY[0x2743948D0](v20);
  if ([v10 hasAnyTreatmentInLayers:2])
  {
    v12 = [v10 providerForTreatmentLayer:2];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v19 = v12;
      v13 = [v19 factorPackId];
      if (v13 && ([v19 factorPackId], v14 = objc_claimAutoreleasedReturnValue(), TRIValidateFactorPackId(), v15 = objc_claimAutoreleasedReturnValue(), v14, v13, v15))
      {
        v16 = [v19 factorLevels];
        [(TRIPurgeableOnDemandFactorsEnumerator *)self _filterOndemandAssetsForFactorLevels:v16 forFactorPackId:v15 treatmentId:0 block:v7];
      }

      else
      {
        v15 = TRILogCategory_Server();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v18 = [v19 rolloutId];
          *buf = 138543618;
          v23 = v6;
          v24 = 2114;
          v25 = v18;
          _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Found invalid factor pack ID for namespace %{public}@ from rollout provider with rolloutId %{public}@", buf, 0x16u);
        }
      }
    }
  }

  if (v11)
  {
    v11[2](v11);
  }

  objc_autoreleasePoolPop(v8);
  v17 = *MEMORY[0x277D85DE8];
}

- (void)_enumerateExperimentOnDemandFactorsWithNamespaceName:(id)a3 block:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  context = objc_autoreleasePoolPush();
  v8 = [MEMORY[0x277D73760] factorProviderWithPaths:self->_paths namespaceName:v6 resolver:self->_namespaceResolver faultOnMissingInstalledFactors:0];
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __100__TRIPurgeableOnDemandFactorsEnumerator__enumerateExperimentOnDemandFactorsWithNamespaceName_block___block_invoke;
  v24[3] = &unk_279DDEEE0;
  v9 = v8;
  v25 = v9;
  v10 = MEMORY[0x2743948D0](v24);
  if ([v9 hasAnyTreatmentInLayers:32])
  {
    v11 = [v9 providerForTreatmentLayer:32];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v12 = v11;
      v13 = [v12 factorPackId];
      if (v13 && ([v12 factorPackId], v14 = objc_claimAutoreleasedReturnValue(), TRIValidateFactorPackId(), v15 = objc_claimAutoreleasedReturnValue(), v14, v13, v15))
      {
        v16 = [v12 factorLevels];
        [(TRIPurgeableOnDemandFactorsEnumerator *)self _filterOndemandAssetsForFactorLevels:v16 forFactorPackId:v15 treatmentId:0 block:v7];
      }

      else
      {
        v15 = TRILogCategory_Server();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          v22 = [v12 experimentId];
          *buf = 138543618;
          v27 = v6;
          v28 = 2114;
          v29 = v22;
          _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Found invalid treatmentID or factorPackId for namespace %{public}@ from experiment provider with experiment %{public}@", buf, 0x16u);
        }
      }
    }
  }

  if ([v9 hasAnyTreatmentInLayers:4])
  {
    v17 = [v9 providerForTreatmentLayer:4];
    v18 = [v17 treatmentId];
    if (v18)
    {
      v19 = [v17 factorLevels];
      [(TRIPurgeableOnDemandFactorsEnumerator *)self _filterOndemandAssetsForFactorLevels:v19 forFactorPackId:0 treatmentId:v18 block:v7];
    }

    else
    {
      v19 = TRILogCategory_Server();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        v21 = [v17 experimentId];
        *buf = 138543618;
        v27 = v6;
        v28 = 2114;
        v29 = v21;
        _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "Found invalid treatmentID for namespace %{public}@ from experiment provider with experiment %{public}@", buf, 0x16u);
      }
    }
  }

  if (v10)
  {
    v10[2](v10);
  }

  objc_autoreleasePoolPop(context);
  v20 = *MEMORY[0x277D85DE8];
}

- (void)_filterOndemandAssetsForFactorLevels:(id)a3 forFactorPackId:(id)a4 treatmentId:(id)a5 block:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v31 = a4;
  v30 = a5;
  v32 = a6;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v10 = [v9 countByEnumeratingWithState:&v33 objects:v39 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v34;
    v29 = (v32 + 2);
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v34 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v33 + 1) + 8 * i);
        v15 = [v14 factor];
        v16 = [v15 name];

        if (v16)
        {
          v17 = [v14 level];
          v18 = [v17 fileOrDirectoryLevelWithIsDir:0];
          v19 = v18;
          if (v18)
          {
            if ([v18 isOnDemand])
            {
              v20 = [v19 path];
              v21 = [v20 length];

              if (v21)
              {
                v22 = [v19 asset];
                v23 = [v22 assetId];
                v24 = TRIValidateAssetId();

                if (v24)
                {
                  v25 = [TRIPurgeableAsset alloc];
                  v26 = [v19 path];
                  v27 = [(TRIPurgeableAsset *)v25 initWithFactorName:v16 assetId:v24 filePath:v26 factorPackId:v31 treatmentId:v30];

                  v32[2](v32, v27);
                }

                else
                {
                  v27 = TRILogCategory_Server();
                  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138543362;
                    v38 = v19;
                    _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Invalid asset id for fileLevel %{public}@", buf, 0xCu);
                  }
                }
              }
            }
          }
        }

        else
        {
          v17 = TRILogCategory_Server();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543362;
            v38 = v14;
            _os_log_impl(&dword_26F567000, v17, OS_LOG_TYPE_DEFAULT, "Got nil factorName for factorLevel %{public}@", buf, 0xCu);
          }
        }
      }

      v11 = [v9 countByEnumeratingWithState:&v33 objects:v39 count:16];
    }

    while (v11);
  }

  v28 = *MEMORY[0x277D85DE8];
}

@end