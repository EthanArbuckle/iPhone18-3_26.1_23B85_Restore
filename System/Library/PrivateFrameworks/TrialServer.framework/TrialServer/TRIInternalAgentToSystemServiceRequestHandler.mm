@interface TRIInternalAgentToSystemServiceRequestHandler
- (BOOL)_getOnDemandReferenceCountsAtGlobalPath:(id)a3 onDemandFactorsPerUser:(id *)a4 error:(id *)a5;
- (BOOL)_updateOnDemandReferenceCountsForUser:(id)a3 atGlobalPath:(id)a4 addingFactors:(id)a5 removingFactors:(id)a6 newlyUnreferencedFactors:(id *)a7;
- (TRIInternalAgentToSystemServiceRequestHandler)initWithEntitlementWitness:(id)a3;
- (void)addSymlinkFromAssetWithIdentifier:(id)a3 toPath:(id)a4 flockWitness:(TRIFlockWitness_ *)a5 completion:(id)a6;
- (void)fixFileProtectionForAssetStoreWithCompletion:(id)a3;
- (void)getOnDemandReferenceCountsPerUserAtGlobalPath:(id)a3 completion:(id)a4;
- (void)logSystemCovariates;
- (void)migrateToGlobalAssetStoreIfNeededFromLocalStore:(id)a3 sourceExtension:(id)a4 completion:(id)a5;
- (void)overwriteGlobalActiveFactorProvidersWithNamespaceMap:(id)a3 factorPackMap:(id)a4 rolloutDeploymentMap:(id)a5 completion:(id)a6;
- (void)removeAssetWithIdentifier:(id)a3 completion:(id)a4;
- (void)removeUnreferencedGlobalFactorPacksWithCompletion:(id)a3;
- (void)saveFactorPackForUserId:(id)a3 toGlobalPath:(id)a4 fromTemporaryPath:(id)a5 factors:(id)a6 sourceExtension:(id)a7 completion:(id)a8;
- (void)updateFactorPackForUserId:(id)a3 atGlobalPath:(id)a4 deletingFactors:(id)a5 completion:(id)a6;
- (void)updateFactorPackForUserId:(id)a3 atGlobalPath:(id)a4 populatingFactors:(id)a5 completion:(id)a6;
@end

@implementation TRIInternalAgentToSystemServiceRequestHandler

- (TRIInternalAgentToSystemServiceRequestHandler)initWithEntitlementWitness:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = TRIInternalAgentToSystemServiceRequestHandler;
  v6 = [(TRIInternalAgentToSystemServiceRequestHandler *)&v19 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_entitlementWitness, a3);
    v8 = [TRIAssetStore alloc];
    v9 = [MEMORY[0x277D737E0] sharedPaths];
    v10 = [(TRIAssetStore *)v8 initWithPaths:v9];
    store = v7->_store;
    v7->_store = v10;

    v12 = objc_opt_new();
    storageManagement = v7->_storageManagement;
    v7->_storageManagement = v12;

    v14 = [TRIAssetStoreOperator alloc];
    v15 = [MEMORY[0x277D737E0] sharedPaths];
    v16 = [(TRIAssetStoreOperator *)v14 initWithPaths:v15 storageManagement:v7->_storageManagement assetStore:v7->_store];
    operator = v7->_operator;
    v7->_operator = v16;
  }

  return v7;
}

void __146__TRIInternalAgentToSystemServiceRequestHandler_saveAssetWithIdentifier_sourcePath_flockWitness_removeSourceOnFailure_sourceExtension_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = "end";
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v12 = *(a1 + 48);
    if (!a2)
    {
      v9 = "begin";
    }

    v13 = *(a1 + 56);
    v15 = 138544642;
    v16 = v7;
    v17 = 2048;
    v18 = v10;
    v19 = 2080;
    v20 = v9;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 1024;
    v26 = v13;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %p: %s saveAssetWithIdentifier:%@ sourcePath:%@ removeSourceOnFailure:%d", &v15, 0x3Au);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeAssetWithIdentifier:(id)a3 completion:(id)a4
{
  operator = self->_operator;
  v6 = a4;
  v6[2](v6, [(TRIAssetStoreOperator *)operator removeAssetWithIdentifier:a3]);
}

- (void)addSymlinkFromAssetWithIdentifier:(id)a3 toPath:(id)a4 flockWitness:(TRIFlockWitness_ *)a5 completion:(id)a6
{
  operator = self->_operator;
  v10 = a6;
  v10[2](v10, [(TRIAssetStoreOperator *)operator addSymlinkFromAssetWithIdentifier:a3 toPath:a4 flockWitness:a5]);
}

void __139__TRIInternalAgentToSystemServiceRequestHandler_referenceMAAutoAssetWithId_futurePath_currentPath_isFileFactor_sourceExtension_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = "end";
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    if (!a2)
    {
      v9 = "begin";
    }

    v12 = *(a1 + 48);
    v13 = *(a1 + 56);
    v14 = *(a1 + 64);
    v16 = 138544898;
    v17 = v7;
    v18 = 2048;
    v19 = v10;
    v20 = 2080;
    v21 = v9;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    v28 = 1024;
    v29 = v14;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %p: %s referenceMAAutoAssetWithId:%@ futurePath:%@ currentPath:%@ isFileFactor:%d", &v16, 0x44u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __175__TRIInternalAgentToSystemServiceRequestHandler_collectGarbageOlderThanNumScans_deletedAssetSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = *(a1 + 32);
    v10 = "end";
    v11 = *(a1 + 40);
    v12 = *(a1 + 44);
    if (!a2)
    {
      v10 = "begin";
    }

    v13 = *(a1 + 45);
    v15 = 138544642;
    v16 = v7;
    v17 = 2048;
    v18 = v9;
    v19 = 2080;
    v20 = v10;
    v21 = 1024;
    v22 = v11;
    v23 = 1024;
    v24 = v12;
    v25 = 1024;
    v26 = v13;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %p: %s collectGarbageOlderThanNumScans:%d ignoreRecentlyCreatedAssets:%d dryRun:%d", &v15, 0x32u);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)fixFileProtectionForAssetStoreWithCompletion:(id)a3
{
  operator = self->_operator;
  v4 = a3;
  v4[2](v4, [(TRIAssetStoreOperator *)operator fixFileProtectionForAssetStoreFiles]);
}

- (void)saveFactorPackForUserId:(id)a3 toGlobalPath:(id)a4 fromTemporaryPath:(id)a5 factors:(id)a6 sourceExtension:(id)a7 completion:(id)a8
{
  v61 = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a5;
  v17 = a6;
  v48 = a7;
  v49 = a8;
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __139__TRIInternalAgentToSystemServiceRequestHandler_saveFactorPackForUserId_toGlobalPath_fromTemporaryPath_factors_sourceExtension_completion___block_invoke;
  v52[3] = &unk_279DE0410;
  v43 = self;
  v52[4] = self;
  v46 = v14;
  v53 = v46;
  v18 = v15;
  v54 = v18;
  v19 = v16;
  v55 = v19;
  v47 = v17;
  v56 = v47;
  v20 = MEMORY[0x2743948D0](v52);
  v20[2](v20, 0);
  v50[0] = MEMORY[0x277D85DD0];
  v50[1] = 3221225472;
  v50[2] = __139__TRIInternalAgentToSystemServiceRequestHandler_saveFactorPackForUserId_toGlobalPath_fromTemporaryPath_factors_sourceExtension_completion___block_invoke_48;
  v50[3] = &unk_279DE0398;
  v45 = v20;
  v51 = v45;
  v21 = MEMORY[0x2743948D0](v50);
  v22 = [MEMORY[0x277D737E0] sharedPaths];
  v23 = [v22 treatmentsDirUsingGlobal:1];
  LOBYTE(a7) = [v18 hasPrefix:v23];

  if (a7)
  {
    v24 = [MEMORY[0x277CCAA00] defaultManager];
    v25 = [v18 stringByAppendingPathComponent:@"factorPack.pb"];
    v26 = [v24 fileExistsAtPath:v25];

    v27 = [MEMORY[0x277CCAA00] defaultManager];
    v28 = [v19 stringByAppendingPathComponent:@"factorPack.pb"];
    v29 = [v27 fileExistsAtPath:v28];

    v30 = [MEMORY[0x277CCAA00] defaultManager];
    v31 = [v18 stringByAppendingPathComponent:@"factorPack.fb"];
    v32 = [v30 fileExistsAtPath:v31];

    v33 = [MEMORY[0x277CCAA00] defaultManager];
    v34 = [v19 stringByAppendingPathComponent:@"factorPack.fb"];
    v35 = [v33 fileExistsAtPath:v34];

    if (v26 & 1 | ((v29 & 1) == 0) && ((v32 | v35 ^ 1) & 1) != 0)
    {
      v36 = TRILogCategory_Server();
      if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_26F567000, v36, OS_LOG_TYPE_DEFAULT, "Factor pack already exists in the global directory. Updating the factorpack instead.", buf, 2u);
      }

      [(TRIInternalAgentToSystemServiceRequestHandler *)v43 updateFactorPackForUserId:v46 atGlobalPath:v18 populatingFactors:v47 completion:v49];
    }

    else
    {
      v38 = v48;
      [v48 UTF8String];
      v39 = sandbox_extension_consume();
      if (v39 == -1)
      {
        v40 = TRILogCategory_Server();
        if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_26F567000, v40, OS_LOG_TYPE_ERROR, "failed to consume a sandbox extension", buf, 2u);
        }
      }

      v41 = [v18 stringByDeletingLastPathComponent];
      if ([MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:v41])
      {
        v49[2](v49, [MEMORY[0x277CCAA00] triForceRenameWithSourcePath:v19 destPath:v18] & objc_msgSend(v44, "_updateOnDemandReferenceCountsForUser:atGlobalPath:addingFactors:removingFactors:newlyUnreferencedFactors:", v46, v18, v47, 0, 0));
      }

      else
      {
        v49[2](v49, 0);
      }

      if (v39 != -1)
      {
        sandbox_extension_release();
      }
    }
  }

  else
  {
    v37 = TRILogCategory_Server();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v58 = v19;
      v59 = 2112;
      v60 = v18;
      _os_log_error_impl(&dword_26F567000, v37, OS_LOG_TYPE_ERROR, "Asked to save factor pack at %@ to non-treatment directory location: %@", buf, 0x16u);
    }

    v49[2](v49, 0);
  }

  if (v21)
  {
    v21[2](v21);
  }

  v42 = *MEMORY[0x277D85DE8];
}

void __139__TRIInternalAgentToSystemServiceRequestHandler_saveFactorPackForUserId_toGlobalPath_fromTemporaryPath_factors_sourceExtension_completion___block_invoke(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = "end";
    v10 = a1[4];
    v11 = a1[5];
    if (!a2)
    {
      v9 = "begin";
    }

    v12 = a1[6];
    v13 = a1[7];
    v14 = a1[8];
    v16 = 138544898;
    v17 = v7;
    v18 = 2048;
    v19 = v10;
    v20 = 2080;
    v21 = v9;
    v22 = 2112;
    v23 = v11;
    v24 = 2112;
    v25 = v12;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v14;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %p: %s saveFactorPackForUserId:%@ toGlobalPath:%@ fromTemporaryPath:%@ factors:%@", &v16, 0x48u);
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)updateFactorPackForUserId:(id)a3 atGlobalPath:(id)a4 populatingFactors:(id)a5 completion:(id)a6
{
  v40 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __117__TRIInternalAgentToSystemServiceRequestHandler_updateFactorPackForUserId_atGlobalPath_populatingFactors_completion___block_invoke;
  v34[3] = &unk_279DE0438;
  v34[4] = self;
  v31 = v10;
  v35 = v31;
  v14 = v11;
  v36 = v14;
  v15 = v12;
  v37 = v15;
  v16 = MEMORY[0x2743948D0](v34);
  v16[2](v16, 0);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __117__TRIInternalAgentToSystemServiceRequestHandler_updateFactorPackForUserId_atGlobalPath_populatingFactors_completion___block_invoke_56;
  v32[3] = &unk_279DE0398;
  v30 = v16;
  v33 = v30;
  v17 = MEMORY[0x2743948D0](v32);
  v18 = [MEMORY[0x277D737E0] sharedPaths];
  v19 = [v18 treatmentsDirUsingGlobal:1];
  v20 = [v14 hasPrefix:v19];

  if (v20)
  {
    v21 = [TRIFactorPackStorage alloc];
    v22 = [MEMORY[0x277D737E0] sharedPaths];
    v23 = [(TRIFactorPackStorage *)v21 initWithPaths:v22];

    v24 = [(TRIFactorPackStorage *)v23 updateSavedGlobalFactorPackAt:v14 populatingAssetsForFactorNames:v15];
    if (_os_feature_enabled_impl())
    {
      v25 = [TRIFBFactorPackStorage alloc];
      v26 = [MEMORY[0x277D737E0] sharedPaths];
      v27 = [(TRIFBFactorPackStorage *)v25 initWithPaths:v26];

      LODWORD(v26) = [(TRIFBFactorPackStorage *)v27 updateSavedGlobalFactorPackAt:v14 populatingAssetsForFactorNames:v15];
      v24 &= v26;
    }

    v13[2](v13, v24 & [(TRIInternalAgentToSystemServiceRequestHandler *)self _updateOnDemandReferenceCountsForUser:v31 atGlobalPath:v14 addingFactors:v15 removingFactors:0 newlyUnreferencedFactors:0, self]);
  }

  else
  {
    v28 = TRILogCategory_Server();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v39 = v14;
      _os_log_error_impl(&dword_26F567000, v28, OS_LOG_TYPE_ERROR, "Asked to update factor pack at non-global or non-treatment directory location: %@", buf, 0xCu);
    }

    v13[2](v13, 0);
  }

  if (v17)
  {
    v17[2](v17);
  }

  v29 = *MEMORY[0x277D85DE8];
}

void __117__TRIInternalAgentToSystemServiceRequestHandler_updateFactorPackForUserId_atGlobalPath_populatingFactors_completion___block_invoke(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = "end";
    v10 = a1[4];
    v11 = a1[5];
    if (!a2)
    {
      v9 = "begin";
    }

    v12 = a1[6];
    v13 = a1[7];
    v15 = 138544642;
    v16 = v7;
    v17 = 2048;
    v18 = v10;
    v19 = 2080;
    v20 = v9;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %p: %s updateFactorPackForUserId:%@ atGlobalPath:%@ populatingFactors:%@", &v15, 0x3Eu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)updateFactorPackForUserId:(id)a3 atGlobalPath:(id)a4 deletingFactors:(id)a5 completion:(id)a6
{
  v42 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __115__TRIInternalAgentToSystemServiceRequestHandler_updateFactorPackForUserId_atGlobalPath_deletingFactors_completion___block_invoke;
  v37[3] = &unk_279DE0438;
  v37[4] = self;
  v34 = v10;
  v38 = v34;
  v14 = v11;
  v39 = v14;
  v15 = v12;
  v40 = v15;
  v16 = MEMORY[0x2743948D0](v37);
  v16[2](v16, 0);
  v35[0] = MEMORY[0x277D85DD0];
  v35[1] = 3221225472;
  v35[2] = __115__TRIInternalAgentToSystemServiceRequestHandler_updateFactorPackForUserId_atGlobalPath_deletingFactors_completion___block_invoke_61;
  v35[3] = &unk_279DE0398;
  v33 = v16;
  v36 = v33;
  v17 = MEMORY[0x2743948D0](v35);
  v18 = [MEMORY[0x277D737E0] sharedPaths];
  v19 = [v18 treatmentsDirUsingGlobal:1];
  v20 = [v14 hasPrefix:v19];

  if (v20)
  {
    *buf = 0;
    v21 = [TRIFactorPackStorage alloc];
    v22 = [MEMORY[0x277D737E0] sharedPaths];
    v23 = [(TRIFactorPackStorage *)v21 initWithPaths:v22];

    v24 = [(TRIInternalAgentToSystemServiceRequestHandler *)self _updateOnDemandReferenceCountsForUser:v34 atGlobalPath:v14 addingFactors:0 removingFactors:v15 newlyUnreferencedFactors:buf];
    v25 = *buf;
    if (!v24)
    {
      v25 = v15;
    }

    v26 = v25;
    v27 = v24 & [(TRIFactorPackStorage *)v23 updateSavedGlobalFactorPackAt:v14 deletingAssetsWithFactorNames:v26];
    if (_os_feature_enabled_impl())
    {
      v28 = [TRIFBFactorPackStorage alloc];
      v29 = [MEMORY[0x277D737E0] sharedPaths];
      v30 = [(TRIFBFactorPackStorage *)v28 initWithPaths:v29];

      LODWORD(v29) = [(TRIFBFactorPackStorage *)v30 updateSavedGlobalFactorPackAt:v14 deletingAssetsWithFactorNames:v26];
      v27 = v27 & v29;
    }

    v13[2](v13, v27);
  }

  else
  {
    v31 = TRILogCategory_Server();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      *&buf[4] = v14;
      _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "Asked to delete factor pack at non-global or non-treatment directory location: %@", buf, 0xCu);
    }

    v13[2](v13, 0);
  }

  if (v17)
  {
    v17[2](v17);
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __115__TRIInternalAgentToSystemServiceRequestHandler_updateFactorPackForUserId_atGlobalPath_deletingFactors_completion___block_invoke(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = "end";
    v10 = a1[4];
    v11 = a1[5];
    if (!a2)
    {
      v9 = "begin";
    }

    v12 = a1[6];
    v13 = a1[7];
    v15 = 138544642;
    v16 = v7;
    v17 = 2048;
    v18 = v10;
    v19 = 2080;
    v20 = v9;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %p: %s updateFactorPackForUserId:%@ atGlobalPath:%@ deletingFactors:%@", &v15, 0x3Eu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)removeUnreferencedGlobalFactorPacksWithCompletion:(id)a3
{
  v4 = a3;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __99__TRIInternalAgentToSystemServiceRequestHandler_removeUnreferencedGlobalFactorPacksWithCompletion___block_invoke;
  v15[3] = &unk_279DE0460;
  v15[4] = self;
  v5 = MEMORY[0x2743948D0](v15);
  v5[2](v5, 0);
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __99__TRIInternalAgentToSystemServiceRequestHandler_removeUnreferencedGlobalFactorPacksWithCompletion___block_invoke_62;
  v13[3] = &unk_279DE0398;
  v6 = v5;
  v14 = v6;
  v7 = MEMORY[0x2743948D0](v13);
  v8 = [TRIFBFactorPackStorage alloc];
  v9 = [MEMORY[0x277D737E0] sharedPaths];
  v10 = [(TRIFBFactorPackStorage *)v8 initWithPaths:v9];

  v12 = 0;
  v11 = [(TRIFBFactorPackStorage *)v10 removeUnreferencedGlobalFactorPacksWithRemovedCount:&v12];
  v4[2](v4, v11, v12);

  if (v7)
  {
    v7[2](v7);
  }
}

void __99__TRIInternalAgentToSystemServiceRequestHandler_removeUnreferencedGlobalFactorPacksWithCompletion___block_invoke(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = *(a1 + 32);
    v9 = "end";
    v11 = 138543874;
    v12 = v7;
    if (!a2)
    {
      v9 = "begin";
    }

    v13 = 2048;
    v14 = v8;
    v15 = 2080;
    v16 = v9;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %p: %s removeUnreferencedGlobalFactorPacksWithCompletion", &v11, 0x20u);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)overwriteGlobalActiveFactorProvidersWithNamespaceMap:(id)a3 factorPackMap:(id)a4 rolloutDeploymentMap:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __148__TRIInternalAgentToSystemServiceRequestHandler_overwriteGlobalActiveFactorProvidersWithNamespaceMap_factorPackMap_rolloutDeploymentMap_completion___block_invoke;
  v25[3] = &unk_279DE0438;
  v25[4] = self;
  v14 = v10;
  v26 = v14;
  v15 = v11;
  v27 = v15;
  v16 = v12;
  v28 = v16;
  v17 = MEMORY[0x2743948D0](v25);
  v17[2](v17, 0);
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 3221225472;
  v23[2] = __148__TRIInternalAgentToSystemServiceRequestHandler_overwriteGlobalActiveFactorProvidersWithNamespaceMap_factorPackMap_rolloutDeploymentMap_completion___block_invoke_63;
  v23[3] = &unk_279DE0398;
  v18 = v17;
  v24 = v18;
  v19 = MEMORY[0x2743948D0](v23);
  v20 = [TRINamespaceResolverStorage alloc];
  v21 = [MEMORY[0x277D737E0] sharedPaths];
  v22 = [(TRINamespaceResolverStorage *)v20 initWithPaths:v21];

  v13[2](v13, [(TRINamespaceResolverStorage *)v22 overwriteGlobalActiveFactorProvidersWithNamespaceMap:v14 factorPackMap:v15 rolloutDeploymentMap:v16]);
  if (v19)
  {
    v19[2](v19);
  }
}

void __148__TRIInternalAgentToSystemServiceRequestHandler_overwriteGlobalActiveFactorProvidersWithNamespaceMap_factorPackMap_rolloutDeploymentMap_completion___block_invoke(void *a1, uint64_t a2)
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = a1[4];
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = "end";
    v10 = a1[4];
    v11 = a1[5];
    if (!a2)
    {
      v9 = "begin";
    }

    v12 = a1[6];
    v13 = a1[7];
    v15 = 138544642;
    v16 = v7;
    v17 = 2048;
    v18 = v10;
    v19 = 2080;
    v20 = v9;
    v21 = 2112;
    v22 = v11;
    v23 = 2112;
    v24 = v12;
    v25 = 2112;
    v26 = v13;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %p: %s overwriteGlobalActiveFactorProvidersWithNamespaceMap:%@ factorPackMap:%@ rolloutDeploymentMap:%@", &v15, 0x3Eu);
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (BOOL)_getOnDemandReferenceCountsAtGlobalPath:(id)a3 onDemandFactorsPerUser:(id *)a4 error:(id *)a5
{
  v32 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = [MEMORY[0x277D737E0] sharedPaths];
  v9 = [v8 treatmentsDirUsingGlobal:1];
  v10 = [v7 hasPrefix:v9];

  if (v10)
  {
    v11 = [v7 stringByAppendingPathComponent:@"onDemandFactorsSubscribedUserMap.plplist"];
    v12 = objc_opt_new();
    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = [v13 fileExistsAtPath:v11];

    if (v14)
    {
      v27 = 0;
      v15 = [MEMORY[0x277D425D8] dictionaryWithPath:v11 error:&v27];
      v16 = v27;
      v17 = TRILogCategory_Server();
      v18 = v17;
      if (v16)
      {
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v24 = [v16 localizedDescription];
          *buf = 138543618;
          v29 = v24;
          v30 = 2112;
          v31 = v11;
          _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Failed to open users per factors file with error %{public}@ at path %@", buf, 0x16u);
        }

        if (a5)
        {
          v19 = v16;
          *a5 = v16;
        }

        v20 = 0;
        goto LABEL_18;
      }

      if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26F567000, v18, OS_LOG_TYPE_INFO, "Successfully opened the users per factors file.", buf, 2u);
      }

      v25[0] = MEMORY[0x277D85DD0];
      v25[1] = 3221225472;
      v25[2] = __118__TRIInternalAgentToSystemServiceRequestHandler__getOnDemandReferenceCountsAtGlobalPath_onDemandFactorsPerUser_error___block_invoke;
      v25[3] = &unk_279DE0488;
      v26 = v12;
      [v15 enumerateKeysAndObjectsUsingBlock:v25];
    }

    else
    {
      v15 = TRILogCategory_Server();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_INFO, "Couldn't locate a global users per factors file. Will create a new one when saving.", buf, 2u);
      }
    }

    v21 = v12;
    *a4 = v12;
    v20 = 1;
LABEL_18:

    goto LABEL_19;
  }

  v11 = TRILogCategory_Server();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v29 = v7;
    _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Asked to update ref count at non-global or non-treatment directory location: %@", buf, 0xCu);
  }

  v20 = 0;
LABEL_19:

  v22 = *MEMORY[0x277D85DE8];
  return v20;
}

void __118__TRIInternalAgentToSystemServiceRequestHandler__getOnDemandReferenceCountsAtGlobalPath_onDemandFactorsPerUser_error___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a2;
  v6 = [a3 mutableCopy];
  [v4 setValue:v6 forKey:v5];
}

- (BOOL)_updateOnDemandReferenceCountsForUser:(id)a3 atGlobalPath:(id)a4 addingFactors:(id)a5 removingFactors:(id)a6 newlyUnreferencedFactors:(id *)a7
{
  v81 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v61 = [v13 stringByAppendingPathComponent:@"onDemandFactorsSubscribedUserMap.plplist"];
  v16 = objc_opt_new();
  v72 = v16;
  LOBYTE(a5) = [(TRIInternalAgentToSystemServiceRequestHandler *)self _getOnDemandReferenceCountsAtGlobalPath:v13 onDemandFactorsPerUser:&v72 error:0];
  v17 = v72;

  if (a5)
  {
    v57 = a7;
    v58 = v14;
    v59 = v13;
    v60 = v15;
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v18 = v14;
    v19 = [v18 countByEnumeratingWithState:&v68 objects:v80 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v69;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v69 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = *(*(&v68 + 1) + 8 * i);
          v24 = [v17 objectForKeyedSubscript:{v23, v57}];
          if (v24)
          {
            [v17 setObject:v24 forKeyedSubscript:v23];
          }

          else
          {
            v25 = objc_opt_new();
            [v17 setObject:v25 forKeyedSubscript:v23];
          }

          v26 = [v17 objectForKeyedSubscript:v23];
          v27 = [v26 containsObject:v12];

          if ((v27 & 1) == 0)
          {
            v28 = [v17 objectForKeyedSubscript:v23];
            [v28 addObject:v12];
          }
        }

        v20 = [v18 countByEnumeratingWithState:&v68 objects:v80 count:16];
      }

      while (v20);
    }

    log = objc_opt_new();
    v64 = 0u;
    v65 = 0u;
    v66 = 0u;
    v67 = 0u;
    v29 = v60;
    v30 = [v29 countByEnumeratingWithState:&v64 objects:v79 count:16];
    if (v30)
    {
      v31 = v30;
      v32 = *v65;
      do
      {
        for (j = 0; j != v31; ++j)
        {
          if (*v65 != v32)
          {
            objc_enumerationMutation(v29);
          }

          v34 = *(*(&v64 + 1) + 8 * j);
          v35 = [v17 objectForKeyedSubscript:{v34, v57}];

          if (v35)
          {
            v36 = [v17 objectForKeyedSubscript:v34];
            [v36 removeObject:v12];

            v37 = [v17 objectForKeyedSubscript:v34];
            v38 = [v37 count];

            if (v38)
            {
              continue;
            }

            [v17 removeObjectForKey:v34];
            [log addObject:v34];
            v39 = TRILogCategory_Server();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v74 = v34;
              v40 = v39;
              v41 = "Factor %@ is now unreferenced by all users.";
LABEL_25:
              _os_log_impl(&dword_26F567000, v40, OS_LOG_TYPE_DEFAULT, v41, buf, 0xCu);
            }
          }

          else
          {
            v39 = TRILogCategory_Server();
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v74 = v34;
              v40 = v39;
              v41 = "Attempting to remove factor %@ that was not referenced.";
              goto LABEL_25;
            }
          }
        }

        v31 = [v29 countByEnumeratingWithState:&v64 objects:v79 count:16];
      }

      while (v31);
    }

    v63 = 0;
    v42 = v61;
    v43 = [MEMORY[0x277D425D8] fileBackedDataWithPropertyList:v17 writtenToPath:v61 error:&v63];
    v44 = v63;
    v45 = v44;
    if (v43)
    {
      v46 = v44 == 0;
    }

    else
    {
      v46 = 0;
    }

    v47 = v46;
    v48 = TRILogCategory_Server();
    v49 = v48;
    if (v47)
    {
      v13 = v59;
      if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
      {
        v50 = [v18 count];
        v51 = [v29 count];
        v52 = [log count];
        *buf = 134218496;
        v74 = v50;
        v42 = v61;
        v75 = 2048;
        v76 = v51;
        v77 = 2048;
        v78 = v52;
        _os_log_impl(&dword_26F567000, v49, OS_LOG_TYPE_DEFAULT, "Successfully referenced %lu assets and unreferenced %lu assets for current user. %lu assets are to be deleted as they are not referenced by any users.", buf, 0x20u);
      }

      v14 = v58;
      v15 = v60;
      if (!v57)
      {
        goto LABEL_47;
      }

      v53 = [objc_alloc(MEMORY[0x277CBEB98]) initWithSet:log];
      v49 = *v57;
      *v57 = v53;
    }

    else
    {
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        v56 = [v45 localizedDescription];
        *buf = 138543362;
        v74 = v56;
        _os_log_error_impl(&dword_26F567000, v49, OS_LOG_TYPE_ERROR, "Failed to write users per factor file to temp path with error: %{public}@", buf, 0xCu);

        v42 = v61;
      }

      v14 = v58;
      v13 = v59;
      v15 = v60;
    }

LABEL_47:
    goto LABEL_48;
  }

  log = TRILogCategory_Server();
  if (os_log_type_enabled(log, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_26F567000, log, OS_LOG_TYPE_ERROR, "Could not update on demand reference counts since the existing data could not be read", buf, 2u);
  }

  v47 = 0;
  v42 = v61;
LABEL_48:

  v54 = *MEMORY[0x277D85DE8];
  return v47;
}

- (void)getOnDemandReferenceCountsPerUserAtGlobalPath:(id)a3 completion:(id)a4
{
  v39[1] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v34[0] = MEMORY[0x277D85DD0];
  v34[1] = 3221225472;
  v34[2] = __106__TRIInternalAgentToSystemServiceRequestHandler_getOnDemandReferenceCountsPerUserAtGlobalPath_completion___block_invoke;
  v34[3] = &unk_279DE0208;
  v34[4] = self;
  v8 = v6;
  v35 = v8;
  v9 = MEMORY[0x2743948D0](v34);
  v9[2](v9, 0);
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 3221225472;
  v32[2] = __106__TRIInternalAgentToSystemServiceRequestHandler_getOnDemandReferenceCountsPerUserAtGlobalPath_completion___block_invoke_70;
  v32[3] = &unk_279DE0398;
  v10 = v9;
  v33 = v10;
  v11 = MEMORY[0x2743948D0](v32);
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__8;
  v30 = __Block_byref_object_dispose__8;
  v31 = 0;
  v12 = [MEMORY[0x277D73728] arrayFromDirectory:v8];
  if (v12)
  {
    v13 = objc_opt_new();
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __106__TRIInternalAgentToSystemServiceRequestHandler_getOnDemandReferenceCountsPerUserAtGlobalPath_completion___block_invoke_77;
    v22[3] = &unk_279DE04B0;
    v25 = &v26;
    v14 = v7;
    v24 = v14;
    v22[4] = self;
    v15 = v13;
    v23 = v15;
    if (([v12 enumerateStringsWithBlock:v22] & 1) == 0)
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v37 = v8;
        _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Could not iterate through namespaces in %@", buf, 0xCu);
      }
    }

    (*(v14 + 2))(v14, v15, v27[5]);
  }

  else
  {
    v17 = objc_alloc(MEMORY[0x277CCA9B8]);
    v38 = *MEMORY[0x277CCA450];
    v39[0] = @"Unable to iterate through the list of namespaces";
    v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:&v38 count:1];
    v19 = [v17 initWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:v18];
    v20 = v27[5];
    v27[5] = v19;

    (*(v7 + 2))(v7, 0, v27[5]);
  }

  _Block_object_dispose(&v26, 8);
  if (v11)
  {
    v11[2](v11);
  }

  v21 = *MEMORY[0x277D85DE8];
}

void __106__TRIInternalAgentToSystemServiceRequestHandler_getOnDemandReferenceCountsPerUserAtGlobalPath_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = "end";
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = 138544130;
    if (!a2)
    {
      v9 = "begin";
    }

    v14 = v7;
    v15 = 2048;
    v16 = v10;
    v17 = 2080;
    v18 = v9;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %p: %s getOnDemandReferenceCountsPerUserAtGlobalPath:%@", &v13, 0x2Au);
  }

  v12 = *MEMORY[0x277D85DE8];
}

void __106__TRIInternalAgentToSystemServiceRequestHandler_getOnDemandReferenceCountsPerUserAtGlobalPath_completion___block_invoke_77(uint64_t a1, void *a2)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lastPathComponent];
  v5 = objc_autoreleasePoolPush();
  v6 = [v3 stringByAppendingPathComponent:@"factorPacks"];
  objc_autoreleasePoolPop(v5);
  v7 = [MEMORY[0x277D73728] arrayFromDirectory:v6];
  if (v7)
  {
    v8 = objc_opt_new();
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __106__TRIInternalAgentToSystemServiceRequestHandler_getOnDemandReferenceCountsPerUserAtGlobalPath_completion___block_invoke_2;
    v26[3] = &unk_279DE04B0;
    v26[4] = *(a1 + 32);
    v25 = *(a1 + 48);
    v9 = v25;
    v28 = v25;
    v10 = v8;
    v27 = v10;
    if ([v7 enumerateStringsWithBlock:v26])
    {
      [*(a1 + 40) setValue:v10 forKey:v4];
    }

    else
    {
      v17 = TRILogCategory_Server();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v32 = v4;
        _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Could not iterate through factor packs for namespace %@", buf, 0xCu);
      }

      v18 = objc_alloc(MEMORY[0x277CCA9B8]);
      v29 = *MEMORY[0x277CCA450];
      v30 = @"Failed to iterate through the list of factor packs";
      v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v30 forKeys:&v29 count:1];
      v20 = [v18 initWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:v19];
      v21 = *(*(a1 + 56) + 8);
      v22 = *(v21 + 40);
      *(v21 + 40) = v20;

      v23 = *(*(*(a1 + 56) + 8) + 40);
      (*(*(a1 + 48) + 16))();
    }
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CCA9B8]);
    v33 = *MEMORY[0x277CCA450];
    v34[0] = @"Unable to iterate through the list of factor packs";
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];
    v13 = [v11 initWithDomain:@"TRIGeneralErrorDomain" code:12 userInfo:v12];
    v14 = *(*(a1 + 56) + 8);
    v15 = *(v14 + 40);
    *(v14 + 40) = v13;

    v16 = *(*(*(a1 + 56) + 8) + 40);
    (*(*(a1 + 48) + 16))();
  }

  v24 = *MEMORY[0x277D85DE8];
}

void __106__TRIInternalAgentToSystemServiceRequestHandler_getOnDemandReferenceCountsPerUserAtGlobalPath_completion___block_invoke_2(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lastPathComponent];
  v5 = objc_opt_new();
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 56) + 8);
  obj = *(v7 + 40);
  v14 = v5;
  v8 = [v6 _getOnDemandReferenceCountsAtGlobalPath:v3 onDemandFactorsPerUser:&v14 error:&obj];
  v9 = v14;

  objc_storeStrong((v7 + 40), obj);
  if (v8)
  {
    [*(a1 + 40) setValue:v9 forKey:v4];
  }

  else
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v16 = v3;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Could not get onDemandReferenceCounts for %@", buf, 0xCu);
    }

    v11 = *(*(*(a1 + 56) + 8) + 40);
    (*(*(a1 + 48) + 16))();
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)migrateToGlobalAssetStoreIfNeededFromLocalStore:(id)a3 sourceExtension:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19[0] = MEMORY[0x277D85DD0];
  v19[1] = 3221225472;
  v19[2] = __124__TRIInternalAgentToSystemServiceRequestHandler_migrateToGlobalAssetStoreIfNeededFromLocalStore_sourceExtension_completion___block_invoke;
  v19[3] = &unk_279DE0208;
  v19[4] = self;
  v11 = v8;
  v20 = v11;
  v12 = MEMORY[0x2743948D0](v19);
  v12[2](v12, 0);
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 3221225472;
  v17[2] = __124__TRIInternalAgentToSystemServiceRequestHandler_migrateToGlobalAssetStoreIfNeededFromLocalStore_sourceExtension_completion___block_invoke_88;
  v17[3] = &unk_279DE0398;
  v13 = v12;
  v18 = v13;
  v14 = MEMORY[0x2743948D0](v17);
  [v9 UTF8String];
  if (sandbox_extension_consume() == -1)
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *v16 = 0;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "failed to consume a sandbox extension", v16, 2u);
    }

    v10[2](v10, 0);
  }

  else
  {
    (v10)[2](v10, [(TRIAssetStoreOperator *)self->_operator migrateToGlobalAssetStoreFromLocalAssetStore:v11]);
    sandbox_extension_release();
  }

  if (v14)
  {
    v14[2](v14);
  }
}

void __124__TRIInternalAgentToSystemServiceRequestHandler_migrateToGlobalAssetStoreIfNeededFromLocalStore_sourceExtension_completion___block_invoke(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = objc_opt_class();
    v7 = NSStringFromClass(v6);
    v8 = v7;
    v9 = "end";
    v10 = *(a1 + 32);
    v11 = *(a1 + 40);
    v13 = 138544130;
    if (!a2)
    {
      v9 = "begin";
    }

    v14 = v7;
    v15 = 2048;
    v16 = v10;
    v17 = 2080;
    v18 = v9;
    v19 = 2112;
    v20 = v11;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "%{public}@ %p: %s migrateToGlobalAssetStoreIfNeededFromLocalStore:%@", &v13, 0x2Au);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)logSystemCovariates
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = [TRISystemCovariates alloc];
  v3 = [MEMORY[0x277D737E0] sharedPaths];
  v4 = [(TRISystemCovariates *)v2 initWithPaths:v3];

  v5 = TRILogCategory_Backtrace();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [(TRISystemCovariates *)v4 dictionary];
    v8 = 138412290;
    v9 = v6;
    _os_log_impl(&dword_26F567000, v5, OS_LOG_TYPE_DEFAULT, "System covariates at the time of sysdiagnose: %@", &v8, 0xCu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

@end