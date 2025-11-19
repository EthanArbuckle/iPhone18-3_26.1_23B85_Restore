@interface TRIRemoteAssetStoreOperator
- (BOOL)addSymlinkFromAssetWithIdentifier:(id)a3 toPath:(id)a4 flockWitness:(TRIFlockWitness_ *)a5;
- (BOOL)fixFileProtectionForAssetStoreFiles;
- (BOOL)migrateToGlobalAssetStoreIfNeeded;
- (BOOL)overwriteGlobalActiveFactorProvidersWithNamespaceMap:(id)a3 factorPackMap:(id)a4 rolloutDeploymentMap:(id)a5;
- (BOOL)removeAssetWithIdentifier:(id)a3;
- (BOOL)removeUnreferencedGlobalFactorPacksWithRemovedCount:(unsigned int *)a3;
- (BOOL)saveAssetWithIdentifier:(id)a3 sourcePath:(id)a4 flockWitness:(TRIFlockWitness_ *)a5 removeSourceOnFailure:(BOOL)a6;
- (BOOL)saveFactorPackToGlobalPath:(id)a3 fromTemporaryPath:(id)a4 factors:(id)a5;
- (BOOL)updateFactorPackAtGlobalPath:(id)a3 deletingFactors:(id)a4;
- (BOOL)updateFactorPackAtGlobalPath:(id)a3 withFactors:(id)a4;
- (TRIRemoteAssetStoreOperator)initWithPaths:(id)a3;
@end

@implementation TRIRemoteAssetStoreOperator

- (TRIRemoteAssetStoreOperator)initWithPaths:(id)a3
{
  v55 = a3;
  v56.receiver = self;
  v56.super_class = TRIRemoteAssetStoreOperator;
  v5 = [(TRIRemoteAssetStoreOperator *)&v56 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_paths, a3);
    v7 = objc_opt_new();
    storageManagement = v6->_storageManagement;
    v6->_storageManagement = v7;

    v9 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287FCDDA8];
    v10 = objc_autoreleasePoolPush();
    v11 = objc_alloc(MEMORY[0x277CBEB98]);
    v12 = objc_opt_class();
    v13 = objc_opt_class();
    v14 = objc_opt_class();
    v15 = [v11 initWithObjects:{v12, v13, v14, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v10);
    [v9 setClasses:v15 forSelector:sel_overwriteGlobalActiveFactorProvidersWithNamespaceMap_factorPackMap_rolloutDeploymentMap_completion_ argumentIndex:0 ofReply:0];

    v16 = objc_autoreleasePoolPush();
    v17 = objc_alloc(MEMORY[0x277CBEB98]);
    v18 = objc_opt_class();
    v19 = objc_opt_class();
    v20 = objc_opt_class();
    v21 = [v17 initWithObjects:{v18, v19, v20, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v16);
    [v9 setClasses:v21 forSelector:sel_overwriteGlobalActiveFactorProvidersWithNamespaceMap_factorPackMap_rolloutDeploymentMap_completion_ argumentIndex:1 ofReply:0];

    v22 = objc_autoreleasePoolPush();
    v23 = objc_alloc(MEMORY[0x277CBEB98]);
    v24 = objc_opt_class();
    v25 = objc_opt_class();
    v26 = objc_opt_class();
    v27 = [v23 initWithObjects:{v24, v25, v26, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v22);
    [v9 setClasses:v27 forSelector:sel_overwriteGlobalActiveFactorProvidersWithNamespaceMap_factorPackMap_rolloutDeploymentMap_completion_ argumentIndex:2 ofReply:0];

    v28 = objc_autoreleasePoolPush();
    v29 = objc_alloc(MEMORY[0x277CBEB98]);
    v30 = objc_opt_class();
    v31 = objc_opt_class();
    v32 = [v29 initWithObjects:{v30, v31, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v28);
    [v9 setClasses:v32 forSelector:sel_collectGarbageOlderThanNumScans_deletedAssetSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_completion_ argumentIndex:4 ofReply:0];

    v33 = objc_autoreleasePoolPush();
    v34 = objc_alloc(MEMORY[0x277CBEB98]);
    v35 = objc_opt_class();
    v36 = objc_opt_class();
    v37 = [v34 initWithObjects:{v35, v36, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v33);
    [v9 setClasses:v37 forSelector:sel_collectGarbageOlderThanNumScans_deletedAssetSize_ignoreRecentlyCreatedAssets_dryRun_includedCacheDeletableAssetIds_completion_ argumentIndex:1 ofReply:1];

    v38 = objc_autoreleasePoolPush();
    v39 = objc_alloc(MEMORY[0x277CBEB98]);
    v40 = objc_opt_class();
    v41 = [v39 initWithObjects:{v40, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v38);
    [v9 setClasses:v41 forSelector:sel_saveFactorPackForUserId_toGlobalPath_fromTemporaryPath_factors_sourceExtension_completion_ argumentIndex:3 ofReply:0];

    v42 = objc_autoreleasePoolPush();
    v43 = objc_alloc(MEMORY[0x277CBEB98]);
    v44 = objc_opt_class();
    v45 = [v43 initWithObjects:{v44, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v42);
    [v9 setClasses:v45 forSelector:sel_updateFactorPackForUserId_atGlobalPath_populatingFactors_completion_ argumentIndex:2 ofReply:0];

    v46 = objc_autoreleasePoolPush();
    v47 = objc_alloc(MEMORY[0x277CBEB98]);
    v48 = objc_opt_class();
    v49 = [v47 initWithObjects:{v48, objc_opt_class(), 0}];
    objc_autoreleasePoolPop(v46);
    [v9 setClasses:v49 forSelector:sel_updateFactorPackForUserId_atGlobalPath_deletingFactors_completion_ argumentIndex:2 ofReply:0];

    v50 = objc_alloc(MEMORY[0x277D42650]);
    v51 = TRILogCategory_Server();
    v52 = [v50 initWithServiceName:@"com.apple.triald.system.from-agent" connectionOptions:4096 allowlistedServerInterface:v9 allowlistedClientInterface:0 serverInitiatedRequestHandler:0 allowSystemToUserConnection:1 interruptionHandler:&__block_literal_global_33 invalidationHandler:&__block_literal_global_364 logHandle:v51];
    internalHelper = v6->_internalHelper;
    v6->_internalHelper = v52;
  }

  return v6;
}

- (BOOL)saveAssetWithIdentifier:(id)a3 sourcePath:(id)a4 flockWitness:(TRIFlockWitness_ *)a5 removeSourceOnFailure:(BOOL)a6
{
  v29 = a6;
  v41 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = NSTemporaryDirectory();
  v13 = objc_opt_new();
  v14 = [v13 UUIDString];
  v15 = [v12 stringByAppendingPathComponent:v14];

  v16 = [MEMORY[0x277CCAA00] defaultManager];
  v36 = 0;
  LOBYTE(v14) = [v16 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v36];
  v17 = v36;

  if ((v14 & 1) == 0)
  {
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v15;
      *&buf[12] = 2112;
      *&buf[14] = v17;
      _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Unable to create global source path at %{public}@: %@", buf, 0x16u);
    }
  }

  [MEMORY[0x277CCAA00] triForceRenameWithSourcePath:v11 destPath:v15];
  v19 = v15;
  if (!v19)
  {
    v28 = [MEMORY[0x277CCA890] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"TRIRemoteAssetStoreOperator.m" lineNumber:104 description:{@"Expression was unexpectedly nil/false: %@", @"globalSourcePath"}];
  }

  v20 = [TRISandboxExtensionFactory extensionTokenForPath:v19 extensionClass:1];

  v21 = TRILogCategory_Server();
  v22 = v21;
  if (v20)
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_26F567000, v22, OS_LOG_TYPE_DEBUG, "Successfully created save asset extension.", buf, 2u);
    }

    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x3032000000;
    v38 = __Block_byref_object_copy__39;
    v39 = __Block_byref_object_dispose__39;
    v40 = 0;
    v35[0] = MEMORY[0x277D85DD0];
    v35[1] = 3221225472;
    v35[2] = __101__TRIRemoteAssetStoreOperator_saveAssetWithIdentifier_sourcePath_flockWitness_removeSourceOnFailure___block_invoke;
    v35[3] = &unk_279DE09F8;
    v35[4] = buf;
    v23 = MEMORY[0x2743948D0](v35);
    v24 = [(_PASXPCClientHelper *)self->_internalHelper synchronousRemoteObjectProxyWithErrorHandler:v23];
    v31 = 0;
    v32 = &v31;
    v33 = 0x2020000000;
    v34 = 0;
    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __101__TRIRemoteAssetStoreOperator_saveAssetWithIdentifier_sourcePath_flockWitness_removeSourceOnFailure___block_invoke_2;
    v30[3] = &unk_279DE0A70;
    v30[4] = &v31;
    [v24 saveAssetWithIdentifier:v10 sourcePath:v19 flockWitness:a5 removeSourceOnFailure:v29 sourceExtension:v20 completion:v30];
    if (*(*&buf[8] + 40))
    {
      v25 = 0;
    }

    else
    {
      v25 = *(v32 + 24);
    }

    _Block_object_dispose(&v31, 8);

    _Block_object_dispose(buf, 8);
  }

  else
  {
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "Unable to get extension token. Bailing out from saveAssetWithIdentifier", buf, 2u);
    }

    v25 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v25 & 1;
}

- (BOOL)removeAssetWithIdentifier:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__39;
  v19 = __Block_byref_object_dispose__39;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __57__TRIRemoteAssetStoreOperator_removeAssetWithIdentifier___block_invoke;
  v14[3] = &unk_279DE09F8;
  v14[4] = &v15;
  v5 = MEMORY[0x2743948D0](v14);
  v6 = [(_PASXPCClientHelper *)self->_internalHelper synchronousRemoteObjectProxyWithErrorHandler:v5];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __57__TRIRemoteAssetStoreOperator_removeAssetWithIdentifier___block_invoke_2;
  v9[3] = &unk_279DE0A70;
  v9[4] = &v10;
  [v6 removeAssetWithIdentifier:v4 completion:v9];
  if (v16[5])
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v11 + 24);
  }

  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v15, 8);
  return v7 & 1;
}

- (BOOL)addSymlinkFromAssetWithIdentifier:(id)a3 toPath:(id)a4 flockWitness:(TRIFlockWitness_ *)a5
{
  v8 = a3;
  v9 = a4;
  if ([MEMORY[0x277D737A8] hostingProcessIsTrialdSystem])
  {
    v10 = [[TRIAssetStore alloc] initWithPaths:self->_paths];
    v11 = [[TRIAssetStoreOperator alloc] initWithPaths:self->_paths storageManagement:self->_storageManagement assetStore:v10];
    v12 = [(TRIAssetStoreOperator *)v11 addSymlinkFromAssetWithIdentifier:v8 toPath:v9 flockWitness:a5];
  }

  else
  {
    v22 = 0;
    v23 = &v22;
    v24 = 0x3032000000;
    v25 = __Block_byref_object_copy__39;
    v26 = __Block_byref_object_dispose__39;
    v27 = 0;
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 3221225472;
    v21[2] = __85__TRIRemoteAssetStoreOperator_addSymlinkFromAssetWithIdentifier_toPath_flockWitness___block_invoke;
    v21[3] = &unk_279DE09F8;
    v21[4] = &v22;
    v13 = MEMORY[0x2743948D0](v21);
    v14 = [(_PASXPCClientHelper *)self->_internalHelper synchronousRemoteObjectProxyWithErrorHandler:v13];
    v17 = 0;
    v18 = &v17;
    v19 = 0x2020000000;
    v20 = 0;
    v16[0] = MEMORY[0x277D85DD0];
    v16[1] = 3221225472;
    v16[2] = __85__TRIRemoteAssetStoreOperator_addSymlinkFromAssetWithIdentifier_toPath_flockWitness___block_invoke_2;
    v16[3] = &unk_279DE0A70;
    v16[4] = &v17;
    [v14 addSymlinkFromAssetWithIdentifier:v8 toPath:v9 flockWitness:a5 completion:v16];
    if (v23[5])
    {
      v12 = 0;
    }

    else
    {
      v12 = *(v18 + 24);
    }

    _Block_object_dispose(&v17, 8);

    _Block_object_dispose(&v22, 8);
  }

  return v12 & 1;
}

- (BOOL)fixFileProtectionForAssetStoreFiles
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x3032000000;
  v16 = __Block_byref_object_copy__39;
  v17 = __Block_byref_object_dispose__39;
  v18 = 0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __66__TRIRemoteAssetStoreOperator_fixFileProtectionForAssetStoreFiles__block_invoke;
  v12[3] = &unk_279DE09F8;
  v12[4] = &v13;
  v3 = MEMORY[0x2743948D0](v12, a2);
  v4 = [(_PASXPCClientHelper *)self->_internalHelper synchronousRemoteObjectProxyWithErrorHandler:v3];
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __66__TRIRemoteAssetStoreOperator_fixFileProtectionForAssetStoreFiles__block_invoke_2;
  v7[3] = &unk_279DE0A70;
  v7[4] = &v8;
  [v4 fixFileProtectionForAssetStoreWithCompletion:v7];
  if (v14[5])
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v9 + 24);
  }

  _Block_object_dispose(&v8, 8);

  _Block_object_dispose(&v13, 8);
  return v5 & 1;
}

- (BOOL)saveFactorPackToGlobalPath:(id)a3 fromTemporaryPath:(id)a4 factors:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v26 = 0;
  v27 = &v26;
  v28 = 0x3032000000;
  v29 = __Block_byref_object_copy__39;
  v30 = __Block_byref_object_dispose__39;
  v31 = 0;
  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __84__TRIRemoteAssetStoreOperator_saveFactorPackToGlobalPath_fromTemporaryPath_factors___block_invoke;
  v25[3] = &unk_279DE09F8;
  v25[4] = &v26;
  v12 = MEMORY[0x2743948D0](v25);
  v13 = v10;
  if (!v13)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"TRIRemoteAssetStoreOperator.m" lineNumber:299 description:{@"Expression was unexpectedly nil/false: %@", @"temporaryPath"}];
  }

  v14 = [TRISandboxExtensionFactory extensionTokenForPath:v13 extensionClass:1];

  if (v14)
  {
    v15 = [(_PASXPCClientHelper *)self->_internalHelper synchronousRemoteObjectProxyWithErrorHandler:v12];
    *buf = 0;
    v22 = buf;
    v23 = 0x2020000000;
    v24 = 0;
    v16 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", getuid()];
    v20[0] = MEMORY[0x277D85DD0];
    v20[1] = 3221225472;
    v20[2] = __84__TRIRemoteAssetStoreOperator_saveFactorPackToGlobalPath_fromTemporaryPath_factors___block_invoke_394;
    v20[3] = &unk_279DE0A70;
    v20[4] = buf;
    [v15 saveFactorPackForUserId:v16 toGlobalPath:v9 fromTemporaryPath:v13 factors:v11 sourceExtension:v14 completion:v20];

    if (v27[5])
    {
      v17 = 0;
    }

    else
    {
      v17 = v22[24];
    }

    _Block_object_dispose(buf, 8);
  }

  else
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Unable to get extension token. Bailing out from saveFactorPackToGlobalPath", buf, 2u);
    }

    v17 = 0;
  }

  _Block_object_dispose(&v26, 8);
  return v17 & 1;
}

- (BOOL)updateFactorPackAtGlobalPath:(id)a3 withFactors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__39;
  v23 = __Block_byref_object_dispose__39;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __72__TRIRemoteAssetStoreOperator_updateFactorPackAtGlobalPath_withFactors___block_invoke;
  v18[3] = &unk_279DE09F8;
  v18[4] = &v19;
  v8 = MEMORY[0x2743948D0](v18);
  v9 = [(_PASXPCClientHelper *)self->_internalHelper synchronousRemoteObjectProxyWithErrorHandler:v8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", getuid()];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __72__TRIRemoteAssetStoreOperator_updateFactorPackAtGlobalPath_withFactors___block_invoke_2;
  v13[3] = &unk_279DE0A70;
  v13[4] = &v14;
  [v9 updateFactorPackForUserId:v10 atGlobalPath:v6 populatingFactors:v7 completion:v13];

  if (v20[5])
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v15 + 24);
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v19, 8);
  return v11 & 1;
}

- (BOOL)updateFactorPackAtGlobalPath:(id)a3 deletingFactors:(id)a4
{
  v6 = a3;
  v7 = a4;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__39;
  v23 = __Block_byref_object_dispose__39;
  v24 = 0;
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __76__TRIRemoteAssetStoreOperator_updateFactorPackAtGlobalPath_deletingFactors___block_invoke;
  v18[3] = &unk_279DE09F8;
  v18[4] = &v19;
  v8 = MEMORY[0x2743948D0](v18);
  v9 = [(_PASXPCClientHelper *)self->_internalHelper synchronousRemoteObjectProxyWithErrorHandler:v8];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = [MEMORY[0x277CCACA8] stringWithFormat:@"%u", getuid()];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __76__TRIRemoteAssetStoreOperator_updateFactorPackAtGlobalPath_deletingFactors___block_invoke_2;
  v13[3] = &unk_279DE0A70;
  v13[4] = &v14;
  [v9 updateFactorPackForUserId:v10 atGlobalPath:v6 deletingFactors:v7 completion:v13];

  if (v20[5])
  {
    v11 = 0;
  }

  else
  {
    v11 = *(v15 + 24);
  }

  _Block_object_dispose(&v14, 8);

  _Block_object_dispose(&v19, 8);
  return v11 & 1;
}

- (BOOL)removeUnreferencedGlobalFactorPacksWithRemovedCount:(unsigned int *)a3
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__39;
  v19 = __Block_byref_object_dispose__39;
  v20 = 0;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 3221225472;
  v14[2] = __83__TRIRemoteAssetStoreOperator_removeUnreferencedGlobalFactorPacksWithRemovedCount___block_invoke;
  v14[3] = &unk_279DE09F8;
  v14[4] = &v15;
  v5 = MEMORY[0x2743948D0](v14, a2);
  v6 = [(_PASXPCClientHelper *)self->_internalHelper synchronousRemoteObjectProxyWithErrorHandler:v5];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __83__TRIRemoteAssetStoreOperator_removeUnreferencedGlobalFactorPacksWithRemovedCount___block_invoke_2;
  v9[3] = &unk_279DE33D8;
  v9[4] = &v10;
  v9[5] = a3;
  [v6 removeUnreferencedGlobalFactorPacksWithCompletion:v9];
  if (v16[5])
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v11 + 24);
  }

  _Block_object_dispose(&v10, 8);

  _Block_object_dispose(&v15, 8);
  return v7 & 1;
}

uint64_t __83__TRIRemoteAssetStoreOperator_removeUnreferencedGlobalFactorPacksWithRemovedCount___block_invoke_2(uint64_t result, char a2, int a3)
{
  v3 = *(result + 40);
  *(*(*(result + 32) + 8) + 24) = a2;
  if (v3)
  {
    *v3 = a3;
  }

  return result;
}

- (BOOL)overwriteGlobalActiveFactorProvidersWithNamespaceMap:(id)a3 factorPackMap:(id)a4 rolloutDeploymentMap:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__39;
  v25 = __Block_byref_object_dispose__39;
  v26 = 0;
  v20[0] = MEMORY[0x277D85DD0];
  v20[1] = 3221225472;
  v20[2] = __119__TRIRemoteAssetStoreOperator_overwriteGlobalActiveFactorProvidersWithNamespaceMap_factorPackMap_rolloutDeploymentMap___block_invoke;
  v20[3] = &unk_279DE09F8;
  v20[4] = &v21;
  v11 = MEMORY[0x2743948D0](v20);
  v12 = [(_PASXPCClientHelper *)self->_internalHelper synchronousRemoteObjectProxyWithErrorHandler:v11];
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 3221225472;
  v15[2] = __119__TRIRemoteAssetStoreOperator_overwriteGlobalActiveFactorProvidersWithNamespaceMap_factorPackMap_rolloutDeploymentMap___block_invoke_2;
  v15[3] = &unk_279DE0A70;
  v15[4] = &v16;
  [v12 overwriteGlobalActiveFactorProvidersWithNamespaceMap:v8 factorPackMap:v9 rolloutDeploymentMap:v10 completion:v15];
  if (v22[5])
  {
    v13 = 0;
  }

  else
  {
    v13 = *(v17 + 24);
  }

  _Block_object_dispose(&v16, 8);

  _Block_object_dispose(&v21, 8);
  return v13 & 1;
}

- (BOOL)migrateToGlobalAssetStoreIfNeeded
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_INFO, "Considering migrating to the global asset store.", &buf, 2u);
  }

  v5 = [(TRIPaths *)self->_paths assetStoreUsingGlobal:0];
  v6 = [MEMORY[0x277CCAA00] defaultManager];
  v7 = [v6 fileExistsAtPath:v5];

  if (v7)
  {
    v8 = [(TRIPaths *)self->_paths trialRootDirUsingGlobal:0];
    if (!v8)
    {
      v21 = [MEMORY[0x277CCA890] currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"TRIRemoteAssetStoreOperator.m" lineNumber:422 description:{@"Expression was unexpectedly nil/false: %@", @"extensionPath"}];
    }

    v9 = [TRISandboxExtensionFactory extensionTokenForPath:v8 extensionClass:1];

    if (v9)
    {
      *&buf = 0;
      *(&buf + 1) = &buf;
      v32 = 0x3032000000;
      v33 = __Block_byref_object_copy__39;
      v34 = __Block_byref_object_dispose__39;
      v35 = 0;
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __64__TRIRemoteAssetStoreOperator_migrateToGlobalAssetStoreIfNeeded__block_invoke;
      v28[3] = &unk_279DE09F8;
      v28[4] = &buf;
      v10 = MEMORY[0x2743948D0](v28);
      v11 = [(_PASXPCClientHelper *)self->_internalHelper synchronousRemoteObjectProxyWithErrorHandler:v10];
      v24 = 0;
      v25 = &v24;
      v26 = 0x2020000000;
      v27 = 0;
      v23[0] = MEMORY[0x277D85DD0];
      v23[1] = 3221225472;
      v23[2] = __64__TRIRemoteAssetStoreOperator_migrateToGlobalAssetStoreIfNeeded__block_invoke_2;
      v23[3] = &unk_279DE0A70;
      v23[4] = &v24;
      [v11 migrateToGlobalAssetStoreIfNeededFromLocalStore:v5 sourceExtension:v9 completion:v23];
      if (*(*(&buf + 1) + 40) || *(v25 + 24) != 1)
      {
        v17 = 0;
      }

      else
      {
        v12 = TRILogCategory_Server();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
        {
          *v29 = 0;
          _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "Removing local asset store following successful migration to global.", v29, 2u);
        }

        v13 = [MEMORY[0x277CCAA00] defaultManager];
        v22 = 0;
        v14 = [v13 triForceRemoveItemAtPath:v5 error:&v22];
        v15 = v22;

        if ((v14 & 1) == 0)
        {
          v16 = TRILogCategory_Server();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *v29 = 138543362;
            v30 = v5;
            _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Failed to delete local asset store after successfully migrating: %{public}@", v29, 0xCu);
          }

          *(v25 + 24) = 0;
        }

        v17 = *(v25 + 24);
      }

      _Block_object_dispose(&v24, 8);

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v18 = TRILogCategory_Server();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Unable to get extension token. Bailing out from migrateToGlobalAssetStoreIfNeeded", &buf, 2u);
      }

      v17 = 0;
    }
  }

  else
  {
    v8 = TRILogCategory_Server();
    v17 = 1;
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = v5;
      _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_INFO, "No local asset store exists at %{public}@. No need to migrate.", &buf, 0xCu);
    }
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17 & 1;
}

@end