@interface TRIFactorPackStorage
+ (id)relPathForMAReferenceWithFactorName:(id)name;
- (BOOL)_linkAssetsUpdatingFactorLevel:(id)level fromFactorPackWithId:(id)id usingAssetStore:(id)store currentFactorPackPath:(id)path futureFactorPackPath:(id)packPath;
- (BOOL)_removeUnreferencedFactorPackSetsWithNamespaceName:(id)name removedCount:(unsigned int *)count;
- (BOOL)_removeUnreferencedFactorPackSetsWithParentDir:(id)dir removedCount:(unsigned int *)count;
- (BOOL)removeUnreferencedFactorPacksWithRemovedCount:(unsigned int *)count;
- (BOOL)saveFactorPack:(id)pack populatingAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map factorPackByNamePath:(id *)path factorPackByIdPath:(id *)idPath;
- (BOOL)saveFactorPackToGlobal:(id)global forFactorNames:(id)names aliasToUnaliasMap:(id)map;
- (BOOL)updateSavedFactorPackWithId:(id)id namespaceName:(id)name populatingAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map;
- (BOOL)updateSavedGlobalFactorPackAt:(id)at deletingAssetsWithFactorNames:(id)names;
- (BOOL)updateSavedGlobalFactorPackAt:(id)at populatingAssetsForFactorNames:(id)names;
- (TRIFactorPackStorage)initWithPaths:(id)paths;
- (TRIFactorPackStorage)initWithPaths:(id)paths extractor:(id)extractor;
- (id)_legacyParentDirForFactorPackWithNamespaceName:(id)name;
- (id)_legacyPathForFactorPackWithId:(id)id namespaceName:(id)name;
- (id)_linkAssetWithId:(id)id assetStore:(id)store forFactorName:(id)name currentFactorPackPath:(id)path futureFactorPackPath:(id)packPath;
- (id)_linkAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map copyingModifiedFactorPackWithPath:(id)path tempDirRef:(id)ref;
- (id)_parentDirForFactorPackWithNamespaceName:(id)name;
- (id)_pathForFactorPackWithId:(id)id namespaceName:(id)name;
- (id)_removeAssetsWithFactorNames:(id)names copyingModifiedFactorPackWithPath:(id)path appendingToPathsToRemove:(id)remove appendingToMARefsToRemove:(id)toRemove tempDirRef:(id)ref;
- (id)_writeFactorPack:(id)pack futurePath:(id)path forFactorNames:(id)names aliasToUnaliasMap:(id)map assetStore:(id)store tempDirRef:(id)ref;
- (id)_writeFactorPackToLegacyPath:(id)path forFactorNames:(id)names aliasToUnaliasMap:(id)map assetStore:(id)store tempDirRef:(id)ref;
- (id)legacyPathForFactorPackWithId:(id)id namespaceName:(id)name;
- (id)loadFactorPackWithDir:(id)dir;
- (id)loadFactorPackWithId:(id)id namespaceName:(id)name;
- (id)loadParsedFactorPackWithDir:(id)dir;
- (id)loadParsedFactorPackWithId:(id)id namespaceName:(id)name;
- (id)pathForFactorPackWithId:(id)id namespaceName:(id)name;
@end

@implementation TRIFactorPackStorage

- (TRIFactorPackStorage)initWithPaths:(id)paths extractor:(id)extractor
{
  pathsCopy = paths;
  extractorCopy = extractor;
  v12.receiver = self;
  v12.super_class = TRIFactorPackStorage;
  v9 = [(TRIFactorPackStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_paths, paths);
    objc_storeStrong(&v10->_extractor, extractor);
  }

  return v10;
}

- (TRIFactorPackStorage)initWithPaths:(id)paths
{
  pathsCopy = paths;
  v5 = [[TRIRemoteAssetExtractor alloc] initWithMonitoredActivity:0];
  v6 = [(TRIFactorPackStorage *)self initWithPaths:pathsCopy extractor:v5];

  return v6;
}

- (BOOL)saveFactorPack:(id)pack populatingAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map factorPackByNamePath:(id *)path factorPackByIdPath:(id *)idPath
{
  v50 = *MEMORY[0x277D85DE8];
  packCopy = pack;
  namesCopy = names;
  mapCopy = map;
  v15 = objc_autoreleasePoolPush();
  if (([packCopy hasFactorPackId] & 1) == 0)
  {
    v17 = TRILogCategory_Server();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "TRIClientFactorPack has nil factorPackId", buf, 2u);
    }

    goto LABEL_17;
  }

  factorPackId = [packCopy factorPackId];
  v17 = TRIValidateFactorPackId();

  if (!v17)
  {
LABEL_17:
    LOBYTE(v28) = 0;
    goto LABEL_18;
  }

  pathCopy = path;
  selectedNamespace = [packCopy selectedNamespace];
  name = [selectedNamespace name];
  v20 = [(TRIFactorPackStorage *)self _pathForFactorPackWithId:v17 namespaceName:name];

  if (!v20)
  {
    v37 = TRILogCategory_Server();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      factorPackId2 = [packCopy factorPackId];
      selectedNamespace2 = [packCopy selectedNamespace];
      name2 = [selectedNamespace2 name];
      *buf = 138543618;
      v47 = factorPackId2;
      v48 = 2114;
      v49 = name2;
      _os_log_error_impl(&dword_26F567000, v37, OS_LOG_TYPE_ERROR, "Failed to resolve location for factor pack %{public}@ with namespace %{public}@.", buf, 0x16u);
    }

    goto LABEL_17;
  }

  v44 = v20;
  idPathCopy = idPath;
  v21 = [TRIAssetStore alloc];
  paths = self->_paths;
  extractor = self->_extractor;
  v24 = [[TRIRemoteAssetPatcher alloc] initWithMonitoredActivity:0];
  v25 = [(TRIAssetStore *)v21 initWithPaths:paths extractor:extractor patcher:v24];

  v26 = [TRITempDirScopeGuard alloc];
  localTempDir = [(TRIPaths *)self->_paths localTempDir];
  v28 = [(TRITempDirScopeGuard *)v26 initWithPath:localTempDir];

  v45 = v28;
  if (v28)
  {
    v29 = v44;
    v30 = [(TRIFactorPackStorage *)self _writeFactorPack:packCopy futurePath:v44 forFactorNames:namesCopy aliasToUnaliasMap:mapCopy assetStore:v25 tempDirRef:v28];
    if (v30)
    {
      v41 = v30;
      stringByDeletingLastPathComponent = [v44 stringByDeletingLastPathComponent];
      v32 = [MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:stringByDeletingLastPathComponent];

      if (v32)
      {
        v29 = v44;
        if ([MEMORY[0x277CCAA00] triForceRenameWithSourcePath:v41 destPath:v44])
        {
          v33 = TRILogCategory_Server();
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v47 = v17;
            v48 = 2114;
            v49 = v44;
            _os_log_impl(&dword_26F567000, v33, OS_LOG_TYPE_DEFAULT, "Wrote factor pack %{public}@ --> %{public}@", buf, 0x16u);
          }

          v34 = [(TRIFactorPackStorage *)self _writeFactorPackToLegacyPath:packCopy forFactorNames:namesCopy aliasToUnaliasMap:mapCopy assetStore:v25 tempDirRef:v45];
          if (pathCopy)
          {
            objc_storeStrong(pathCopy, v44);
          }

          if (idPathCopy)
          {
            objc_storeStrong(idPathCopy, v34);
          }

          LOBYTE(v28) = 1;
        }

        else
        {
          LOBYTE(v28) = 0;
        }
      }

      else
      {
        LOBYTE(v28) = 0;
        v29 = v44;
      }

      v30 = v41;
    }

    else
    {
      LOBYTE(v28) = 0;
    }
  }

  else
  {
    v29 = v44;
  }

LABEL_18:
  objc_autoreleasePoolPop(v15);

  v35 = *MEMORY[0x277D85DE8];
  return v28;
}

- (id)_writeFactorPackToLegacyPath:(id)path forFactorNames:(id)names aliasToUnaliasMap:(id)map assetStore:(id)store tempDirRef:(id)ref
{
  v35 = *MEMORY[0x277D85DE8];
  pathCopy = path;
  namesCopy = names;
  mapCopy = map;
  storeCopy = store;
  refCopy = ref;
  factorPackId = [pathCopy factorPackId];
  v18 = TRIValidateFactorPackId();

  if (v18)
  {
    selectedNamespace = [pathCopy selectedNamespace];
    name = [selectedNamespace name];
    v21 = [(TRIFactorPackStorage *)self _legacyPathForFactorPackWithId:v18 namespaceName:name];

    if (v21)
    {
      v22 = [(TRIFactorPackStorage *)self _writeFactorPack:pathCopy futurePath:v21 forFactorNames:namesCopy aliasToUnaliasMap:mapCopy assetStore:storeCopy tempDirRef:refCopy];
      if (v22)
      {
        stringByDeletingLastPathComponent = [v21 stringByDeletingLastPathComponent];
        if ([MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:stringByDeletingLastPathComponent] && objc_msgSend(MEMORY[0x277CCAA00], "triForceRenameWithSourcePath:destPath:", v22, v21))
        {
          v24 = TRILogCategory_Server();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_DEFAULT))
          {
            v31 = 138543618;
            v32 = v18;
            v33 = 2114;
            v34 = v21;
            _os_log_impl(&dword_26F567000, v24, OS_LOG_TYPE_DEFAULT, "Wrote factor pack %{public}@ --> %{public}@ (legacy id-based directory).", &v31, 0x16u);
          }

          v25 = v21;
        }

        else
        {
          v25 = 0;
        }
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v21 = TRILogCategory_Server();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        factorPackId2 = [pathCopy factorPackId];
        selectedNamespace2 = [pathCopy selectedNamespace];
        name2 = [selectedNamespace2 name];
        v31 = 138543618;
        v32 = factorPackId2;
        v33 = 2114;
        v34 = name2;
        _os_log_impl(&dword_26F567000, v21, OS_LOG_TYPE_INFO, "Failed to resolve id based location for factor pack %{public}@ with namespace %{public}@.", &v31, 0x16u);
      }

      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];

  return v25;
}

- (BOOL)saveFactorPackToGlobal:(id)global forFactorNames:(id)names aliasToUnaliasMap:(id)map
{
  v50 = *MEMORY[0x277D85DE8];
  globalCopy = global;
  namesCopy = names;
  mapCopy = map;
  if (([globalCopy hasFactorPackId] & 1) == 0)
  {
    v12 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v46 = 0;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Failed to find factor pack identifier when saving factor pack globally", v46, 2u);
    }

    goto LABEL_11;
  }

  factorPackId = [globalCopy factorPackId];
  v12 = TRIValidateFactorPackId();

  if (!v12)
  {
LABEL_11:
    LOBYTE(v28) = 0;
    goto LABEL_12;
  }

  v13 = objc_autoreleasePoolPush();
  v14 = [(TRIPaths *)self->_paths treatmentsDirUsingGlobal:1];
  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  selectedNamespace = [globalCopy selectedNamespace];
  name = [selectedNamespace name];
  v18 = [v15 initWithFormat:@"%@/factorPacks/%@", name, v12];
  v38 = [v14 stringByAppendingPathComponent:v18];

  objc_autoreleasePoolPop(v13);
  if (!v38)
  {
    v33 = TRILogCategory_Server();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      selectedNamespace2 = [globalCopy selectedNamespace];
      name2 = [selectedNamespace2 name];
      *v46 = 138543618;
      *&v46[4] = v12;
      *&v46[12] = 2114;
      *&v46[14] = name2;
      _os_log_error_impl(&dword_26F567000, v33, OS_LOG_TYPE_ERROR, "Failed to resolve location for factor pack %{public}@ with namespace %{public}@.", v46, 0x16u);
    }

    goto LABEL_11;
  }

  v19 = [TRIAssetStore alloc];
  paths = self->_paths;
  extractor = self->_extractor;
  v22 = [[TRIRemoteAssetPatcher alloc] initWithMonitoredActivity:0];
  v37 = [(TRIAssetStore *)v19 initWithPaths:paths extractor:extractor patcher:v22];

  v23 = [TRITempDirScopeGuard alloc];
  localTempDir = [(TRIPaths *)self->_paths localTempDir];
  v25 = [(TRITempDirScopeGuard *)v23 initWithPath:localTempDir];

  if (v25)
  {
    v26 = [(TRIFactorPackStorage *)self _writeFactorPack:globalCopy futurePath:v38 forFactorNames:namesCopy aliasToUnaliasMap:mapCopy assetStore:v37 tempDirRef:v25];
    if (v26)
    {
      *v46 = 0;
      *&v46[8] = v46;
      *&v46[16] = 0x3032000000;
      v47 = __Block_byref_object_copy__32;
      v48 = __Block_byref_object_dispose__32;
      v49 = objc_alloc_init(MEMORY[0x277CBEB58]);
      v39[0] = MEMORY[0x277D85DD0];
      v39[1] = 3221225472;
      v39[2] = __80__TRIFactorPackStorage_saveFactorPackToGlobal_forFactorNames_aliasToUnaliasMap___block_invoke;
      v39[3] = &unk_279DDF720;
      v40 = namesCopy;
      v41 = v46;
      [globalCopy enumerateFactorLevelsWithBlock:v39];
      v27 = [[TRIRemoteAssetStoreOperator alloc] initWithPaths:self->_paths];
      v28 = [(TRIRemoteAssetStoreOperator *)v27 saveFactorPackToGlobalPath:v38 fromTemporaryPath:v26 factors:*(*&v46[8] + 40)];
      v29 = TRILogCategory_Server();
      v30 = v29;
      if (v28)
      {
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138543618;
          v43 = v12;
          v44 = 2114;
          v45 = v38;
          _os_log_impl(&dword_26F567000, v30, OS_LOG_TYPE_DEFAULT, "Wrote global factor pack %{public}@ --> %{public}@", buf, 0x16u);
        }
      }

      else if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412290;
        v43 = v38;
        _os_log_error_impl(&dword_26F567000, v30, OS_LOG_TYPE_ERROR, "Failed to write global factor pack to %@", buf, 0xCu);
      }

      _Block_object_dispose(v46, 8);
    }

    else
    {
      v34 = TRILogCategory_Server();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *v46 = 0;
        _os_log_error_impl(&dword_26F567000, v34, OS_LOG_TYPE_ERROR, "Failed to create or copy global factor pack to a temporary directory.", v46, 2u);
      }

      LOBYTE(v28) = 0;
    }
  }

  else
  {
    LOBYTE(v28) = 0;
  }

LABEL_12:
  v31 = *MEMORY[0x277D85DE8];
  return v28;
}

void __80__TRIFactorPackStorage_saveFactorPackToGlobal_forFactorNames_aliasToUnaliasMap___block_invoke(uint64_t a1, void *a2)
{
  v9 = a2;
  if ([v9 hasLevel])
  {
    v3 = [v9 level];
    if ([v3 isFactorOnDemand])
    {
      v4 = *(a1 + 32);
      v5 = [v9 factor];
      v6 = [v5 name];
      LODWORD(v4) = [v4 containsObject:v6];

      if (!v4)
      {
        goto LABEL_6;
      }

      v7 = *(*(*(a1 + 40) + 8) + 40);
      v3 = [v9 factor];
      v8 = [v3 name];
      [v7 addObject:v8];
    }
  }

LABEL_6:
}

- (id)_writeFactorPack:(id)pack futurePath:(id)path forFactorNames:(id)names aliasToUnaliasMap:(id)map assetStore:(id)store tempDirRef:(id)ref
{
  v52 = *MEMORY[0x277D85DE8];
  packCopy = pack;
  pathCopy = path;
  namesCopy = names;
  mapCopy = map;
  storeCopy = store;
  refCopy = ref;
  if (([packCopy hasFactorPackId] & 1) == 0)
  {
    v20 = TRILogCategory_Server();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      LODWORD(buf) = 138543362;
      *(&buf + 4) = pathCopy;
      _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "Failed to find factor pack identifier when writing factor pack to path: %{public}@", &buf, 0xCu);
    }

    goto LABEL_12;
  }

  factorPackId = [packCopy factorPackId];
  v20 = TRIValidateFactorPackId();

  if (!v20)
  {
LABEL_12:
    v30 = 0;
    goto LABEL_13;
  }

  v21 = objc_alloc(MEMORY[0x277CCACA8]);
  v22 = objc_opt_new();
  uUIDString = [v22 UUIDString];
  v24 = [v21 initWithFormat:@"fp-%@-%@", v20, uUIDString];

  path = [refCopy path];
  v26 = [path stringByAppendingPathComponent:v24];

  if (![MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:v26])
  {

    goto LABEL_12;
  }

  *&buf = 0;
  *(&buf + 1) = &buf;
  v50 = 0x2020000000;
  v51 = 0;
  v36[0] = MEMORY[0x277D85DD0];
  v36[1] = 3221225472;
  v36[2] = __107__TRIFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke;
  v36[3] = &unk_279DE2B60;
  p_buf = &buf;
  v37 = mapCopy;
  v38 = namesCopy;
  selfCopy = self;
  v20 = v20;
  v40 = v20;
  v41 = storeCopy;
  v27 = v26;
  v42 = v27;
  v43 = pathCopy;
  v33 = MEMORY[0x2743948D0](v36);
  v28 = [v27 stringByAppendingPathComponent:@"factorPack.pb"];
  v35 = 0;
  if (([MEMORY[0x277D73678] copySourceFactorPack:packCopy toDestPath:v28 error:&v35 modifyFactorLevel:v33] & 1) == 0)
  {
    v29 = TRILogCategory_Server();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *v45 = 138543618;
      v46 = v27;
      v47 = 2114;
      v48 = v35;
      _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "Failed to copy factor pack to %{public}@: %{public}@", v45, 0x16u);
    }

    goto LABEL_18;
  }

  if (*(*(&buf + 1) + 24) == 1)
  {
    v29 = TRILogCategory_Server();
    if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
    {
      *v45 = 138412290;
      v46 = v20;
      _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "Failed to link assets for factor pack with Id: %@", v45, 0xCu);
    }

LABEL_18:

    goto LABEL_19;
  }

  if ([MEMORY[0x277CCAA00] triRemoveFileProtectionIfPresentForPath:v28] && +[TRIReferenceManagedDir createFromDir:](TRIReferenceManagedDir, "createFromDir:", v27))
  {
    v30 = v27;
    goto LABEL_20;
  }

LABEL_19:
  v30 = 0;
LABEL_20:

  _Block_object_dispose(&buf, 8);
LABEL_13:

  v31 = *MEMORY[0x277D85DE8];

  return v30;
}

id __107__TRIFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke(uint64_t a1, void *a2)
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = v3;
  if (*(*(*(a1 + 88) + 8) + 24))
  {
    goto LABEL_20;
  }

  if ([v3 hasLevel])
  {
    v5 = [v4 level];
    v6 = [v5 fileOrDirectoryLevelWithIsDir:0];

    if ([v6 hasAsset])
    {
      v7 = [v6 asset];
      if ([v7 hasCloudKitContainer])
      {
LABEL_9:

        goto LABEL_10;
      }

      v8 = [v6 isOnDemand];

      if (v8)
      {
        v9 = TRILogCategory_Server();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
        {
          v21 = [v4 factor];
          v22 = [v21 name];
          v23 = 138543362;
          v24 = v22;
          _os_log_debug_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEBUG, "Populating system default cloudKitContainer on asset for %{public}@", &v23, 0xCu);
        }

        v7 = [v6 asset];
        [v7 setCloudKitContainer:1];
        goto LABEL_9;
      }
    }

LABEL_10:
  }

  v10 = *(a1 + 32);
  v11 = [v4 factor];
  v12 = [v11 name];
  v13 = [v10 objectForKeyedSubscript:v12];
  v14 = v13;
  if (v13)
  {
    v15 = v13;
  }

  else
  {
    v16 = [v4 factor];
    v15 = [v16 name];
  }

  v17 = [v4 factor];
  [v17 setName:v15];

  if ([*(a1 + 40) containsObject:v15] && (objc_msgSend(*(a1 + 48), "_linkAssetsUpdatingFactorLevel:fromFactorPackWithId:usingAssetStore:currentFactorPackPath:futureFactorPackPath:", v4, *(a1 + 56), *(a1 + 64), *(a1 + 72), *(a1 + 80)) & 1) == 0)
  {
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v23 = 138412290;
      v24 = v15;
      _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Failed to link asset for factor name: %@", &v23, 0xCu);
    }

    *(*(*(a1 + 88) + 8) + 24) = 1;
  }

LABEL_20:
  v19 = *MEMORY[0x277D85DE8];

  return v4;
}

- (id)loadParsedFactorPackWithId:(id)id namespaceName:(id)name
{
  v5 = [(TRIFactorPackStorage *)self pathForFactorPackWithId:id namespaceName:name];
  if (v5)
  {
    v6 = [(TRIFactorPackStorage *)self loadParsedFactorPackWithDir:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)loadFactorPackWithDir:(id)dir
{
  v21 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  v4 = objc_autoreleasePoolPush();
  v5 = [dirCopy stringByAppendingPathComponent:@"factorPack.pb"];
  v15 = 0;
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v5 options:8 error:&v15];
  v7 = v15;
  v8 = v7;
  v16 = v7;
  if (v6)
  {
    v16 = 0;

    v9 = [objc_alloc(MEMORY[0x277D73670]) initWithData:v6 error:&v16];
    if (v9)
    {
      v10 = v9;
      v11 = v10;
      goto LABEL_10;
    }

    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = v5;
      v19 = 2114;
      v20 = v16;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Failed to parse TRIClientFactorPack at %{public}@: %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

  else
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = dirCopy;
      v19 = 2114;
      v20 = v8;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Failed to load TRIClientFactorPack from factor pack directory at %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v11 = 0;
LABEL_10:

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)loadParsedFactorPackWithDir:(id)dir
{
  v21 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  v4 = objc_autoreleasePoolPush();
  v5 = [dirCopy stringByAppendingPathComponent:@"factorPack.pb"];
  v16 = 0;
  v6 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfFile:v5 options:8 error:&v16];
  v7 = v16;
  v8 = v7;
  if (v6)
  {

    v15 = 0;
    v9 = [MEMORY[0x277D73AD8] parseFromData:v6 error:&v15];
    v8 = v15;
    if (v9)
    {
      v10 = v9;
      v11 = v10;
      goto LABEL_10;
    }

    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = v5;
      v19 = 2114;
      v20 = v8;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Failed to parse TRIClientFactorPack at %{public}@: %{public}@", buf, 0x16u);
    }

    v10 = 0;
  }

  else
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = dirCopy;
      v19 = 2114;
      v20 = v8;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Failed to load TRIClientFactorPack from factor pack directory at %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v11 = 0;
LABEL_10:

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)loadFactorPackWithId:(id)id namespaceName:(id)name
{
  idCopy = id;
  nameCopy = name;
  v8 = objc_autoreleasePoolPush();
  v9 = [(TRIFactorPackStorage *)self pathForFactorPackWithId:idCopy namespaceName:nameCopy];
  if (v9)
  {
    v10 = [(TRIFactorPackStorage *)self loadFactorPackWithDir:v9];
  }

  else
  {
    v10 = 0;
  }

  objc_autoreleasePoolPop(v8);

  return v10;
}

- (BOOL)updateSavedFactorPackWithId:(id)id namespaceName:(id)name populatingAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map
{
  v42 = *MEMORY[0x277D85DE8];
  idCopy = id;
  nameCopy = name;
  namesCopy = names;
  mapCopy = map;
  v14 = objc_autoreleasePoolPush();
  if ([namesCopy count])
  {
    v15 = [(TRIFactorPackStorage *)self pathForFactorPackWithId:idCopy namespaceName:nameCopy];
    v16 = [(TRIFactorPackStorage *)self legacyPathForFactorPackWithId:idCopy namespaceName:nameCopy];
    if (v15 | v16)
    {
      v17 = [TRITempDirScopeGuard alloc];
      localTempDir = [(TRIPaths *)self->_paths localTempDir];
      v19 = [(TRITempDirScopeGuard *)v17 initWithPath:localTempDir];

      if (v19)
      {
        if (!mapCopy)
        {
          mapCopy = MEMORY[0x277CBEC10];
        }

        if (v15)
        {
          v20 = [(TRIFactorPackStorage *)self _linkAssetsForFactorNames:namesCopy aliasToUnaliasMap:mapCopy copyingModifiedFactorPackWithPath:v15 tempDirRef:v19];
          if (v16)
          {
LABEL_8:
            v21 = [(TRIFactorPackStorage *)self _linkAssetsForFactorNames:namesCopy aliasToUnaliasMap:mapCopy copyingModifiedFactorPackWithPath:v16 tempDirRef:v19];
            goto LABEL_17;
          }
        }

        else
        {
          v20 = 0;
          if (v16)
          {
            goto LABEL_8;
          }
        }

        v21 = 0;
LABEL_17:
        v22 = (v20 | v21) != 0;
        v36 = v14;
        v37 = v21;
        if (v20 | v21)
        {
          v35 = v20;
          if (v20)
          {
            v32 = MEMORY[0x277CCAA00];
            v23 = [v15 stringByAppendingPathComponent:@"factorPack.pb"];
            LODWORD(v20) = [v32 triRenameOrFaultWithSourcePath:v20 destPath:v23];

            v21 = v37;
          }

          if (v21)
          {
            v24 = v21;
            v31 = MEMORY[0x277CCAA00];
            [v16 stringByAppendingPathComponent:@"factorPack.pb"];
            v20 = v33 = v20;
            LODWORD(v24) = [v31 triRenameOrFaultWithSourcePath:v24 destPath:v20];

            LODWORD(v20) = v33;
            v25 = v24;
          }

          else
          {
            v25 = 0;
          }

          v26 = v35;
          if (((v20 | v25) & 1) == 0)
          {
            v22 = 0;
            goto LABEL_36;
          }

          if (v20)
          {
            v34 = v25;
            v28 = TRILogCategory_Server();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *v39 = idCopy;
              *&v39[8] = 2114;
              *&v39[10] = v15;
              _os_log_impl(&dword_26F567000, v28, OS_LOG_TYPE_DEFAULT, "Updated factor pack %{public}@ --> %{public}@", buf, 0x16u);
            }

            v25 = v34;
          }

          if (!v25)
          {
            v22 = 1;
            goto LABEL_36;
          }

          v27 = TRILogCategory_Server();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *v39 = idCopy;
            *&v39[8] = 2114;
            *&v39[10] = v16;
            _os_log_impl(&dword_26F567000, v27, OS_LOG_TYPE_DEFAULT, "Updated factor pack %{public}@ --> %{public}@", buf, 0x16u);
          }
        }

        else
        {
          v26 = v20;
          v27 = TRILogCategory_Server();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109890;
            *v39 = 1;
            *&v39[4] = 2114;
            *&v39[6] = v15;
            *&v39[14] = 1024;
            *&v39[16] = 1;
            v40 = 2114;
            v41 = v16;
            _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "updateSavedFactorPackWithId failed to link temp based factor pack for: name based directory (%d): %{public}@ OR identifier based directory (%d): %{public}@.", buf, 0x22u);
          }
        }

LABEL_36:
        v14 = v36;
        goto LABEL_37;
      }
    }

    else
    {
      v19 = TRILogCategory_Server();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *v39 = idCopy;
        _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "updateSavedFactorPackWithId failed because preexisting factor pack %{public}@ is not present on disk.", buf, 0xCu);
      }
    }

    v22 = 0;
LABEL_37:

    goto LABEL_38;
  }

  v15 = TRILogCategory_Server();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    *v39 = idCopy;
    _os_log_impl(&dword_26F567000, v15, OS_LOG_TYPE_DEFAULT, "Updating factor pack %{public}@ was a no-op. No factor names specified", buf, 0xCu);
  }

  v22 = 1;
LABEL_38:

  objc_autoreleasePoolPop(v14);
  v29 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)updateSavedGlobalFactorPackAt:(id)at populatingAssetsForFactorNames:(id)names
{
  atCopy = at;
  namesCopy = names;
  v8 = NSTemporaryDirectory();
  v9 = objc_opt_new();
  uUIDString = [v9 UUIDString];
  v11 = [v8 stringByAppendingPathComponent:uUIDString];

  v12 = [[TRITempDirScopeGuard alloc] initWithPath:v11];
  if (v12)
  {
    v13 = [(TRIFactorPackStorage *)self _linkAssetsForFactorNames:namesCopy aliasToUnaliasMap:0 copyingModifiedFactorPackWithPath:atCopy tempDirRef:v12];
    if (v13)
    {
      v14 = MEMORY[0x277CCAA00];
      v15 = [atCopy stringByAppendingPathComponent:@"factorPack.pb"];
      v16 = [v14 triRenameOrFaultWithSourcePath:v13 destPath:v15];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)_linkAssetsUpdatingFactorLevel:(id)level fromFactorPackWithId:(id)id usingAssetStore:(id)store currentFactorPackPath:(id)path futureFactorPackPath:(id)packPath
{
  v68 = *MEMORY[0x277D85DE8];
  levelCopy = level;
  idCopy = id;
  storeCopy = store;
  pathCopy = path;
  packPathCopy = packPath;
  factor = [levelCopy factor];
  if (![factor hasName] || (objc_msgSend(factor, "name"), v18 = objc_claimAutoreleasedReturnValue(), v19 = objc_msgSend(v18, "length"), v18, !v19))
  {
    v21 = TRILogCategory_Server();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v63 = idCopy;
      _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has factor with missing or empty name.", buf, 0xCu);
    }

    goto LABEL_13;
  }

  if (([levelCopy hasLevel] & 1) == 0)
  {
    v21 = TRILogCategory_Server();
    if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
LABEL_13:
      LOBYTE(v30) = 0;
      goto LABEL_14;
    }

    name = [factor name];
    *buf = 138543618;
    v63 = idCopy;
    v64 = 2114;
    v65 = name;
    _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has factor %{public}@ with missing level.", buf, 0x16u);
    goto LABEL_27;
  }

  level = [levelCopy level];
  v21 = [level fileOrDirectoryLevelWithIsDir:0];

  if (!v21)
  {
    level2 = [levelCopy level];
    levelOneOfCase = [level2 levelOneOfCase];

    if (levelOneOfCase != 104)
    {
      goto LABEL_42;
    }

    factor2 = [levelCopy factor];
    namespaceString = [factor2 namespaceString];

    if (namespaceString)
    {
      level3 = [levelCopy level];
      mobileAssetReferenceValue = [level3 mobileAssetReferenceValue];

      if ([mobileAssetReferenceValue hasAssetType] && objc_msgSend(mobileAssetReferenceValue, "hasAssetSpecifier") && (objc_msgSend(mobileAssetReferenceValue, "hasAssetVersion") & 1) != 0)
      {
        v54 = objc_alloc(MEMORY[0x277D73740]);
        assetType = [mobileAssetReferenceValue assetType];
        assetSpecifier = [mobileAssetReferenceValue assetSpecifier];
        assetVersion = [mobileAssetReferenceValue assetVersion];
        v55 = [v54 initWithType:assetType specifier:assetSpecifier version:?];

        factor3 = [levelCopy factor];
        name2 = [factor3 name];
        if ([mobileAssetReferenceValue hasIsFileFactor])
        {
          isFileFactor = [mobileAssetReferenceValue isFileFactor];
        }

        else
        {
          isFileFactor = 0;
        }

        v53 = [(TRIFactorPackStorage *)self _referenceMAAssetWithId:v55 assetStore:storeCopy forFactorName:name2 isFileFactor:isFileFactor currentFactorPackPath:pathCopy futureFactorPackPath:packPathCopy];

        if (v53)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v46 = TRILogCategory_Server();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          name3 = [factor name];
          *buf = 138543618;
          v63 = idCopy;
          v64 = 2114;
          v65 = name3;
          _os_log_error_impl(&dword_26F567000, v46, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has factor %{public}@ with incomplete MobileAssetReference.", buf, 0x16u);
        }
      }
    }

    else
    {
      v47 = TRILogCategory_Server();
      if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
      {
        name4 = [factor name];
        *buf = 138543618;
        v63 = idCopy;
        v64 = 2114;
        v65 = name4;
        _os_log_error_impl(&dword_26F567000, v47, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has factor %{public}@ with missing namespaceString.", buf, 0x16u);
      }
    }

    v21 = 0;
    goto LABEL_13;
  }

  factor4 = [levelCopy factor];
  namespaceString2 = [factor4 namespaceString];

  if (!namespaceString2)
  {
    name = TRILogCategory_Server();
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      name5 = [factor name];
      *buf = 138543618;
      v63 = idCopy;
      v64 = 2114;
      v65 = name5;
      v45 = "Factor pack %{public}@ has factor %{public}@ with missing namespaceString.";
      goto LABEL_39;
    }

LABEL_27:

    goto LABEL_13;
  }

  if (!-[NSObject hasAsset](v21, "hasAsset") || (-[NSObject asset](v21, "asset"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 hasAssetId], v24, (v25 & 1) == 0))
  {
    name = TRILogCategory_Server();
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      name5 = [factor name];
      *buf = 138543618;
      v63 = idCopy;
      v64 = 2114;
      v65 = name5;
      v45 = "Factor pack %{public}@ has factor %{public}@ with missing assetId.";
LABEL_39:
      _os_log_error_impl(&dword_26F567000, name, OS_LOG_TYPE_ERROR, v45, buf, 0x16u);

      goto LABEL_27;
    }

    goto LABEL_27;
  }

  asset = [v21 asset];
  assetId = [asset assetId];
  v27 = TRIValidateAssetId();

  v58 = v27;
  if (!v27)
  {
    name = TRILogCategory_Server();
    if (os_log_type_enabled(name, OS_LOG_TYPE_ERROR))
    {
      asset2 = [v21 asset];
      assetId2 = [asset2 assetId];
      factor5 = [levelCopy factor];
      name6 = [factor5 name];
      *buf = 138543874;
      v63 = idCopy;
      v64 = 2114;
      v65 = assetId2;
      v66 = 2114;
      v67 = name6;
      _os_log_error_impl(&dword_26F567000, name, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has unsuitable asset id %{public}@ for factor %{public}@.", buf, 0x20u);
    }

    goto LABEL_27;
  }

  factor6 = [levelCopy factor];
  name7 = [factor6 name];
  v30 = [(TRIFactorPackStorage *)self _linkAssetWithId:v58 assetStore:storeCopy forFactorName:name7 currentFactorPackPath:pathCopy futureFactorPackPath:packPathCopy];

  if (v30)
  {
    v31 = [packPathCopy stringByAppendingPathComponent:v30];
    [v21 setPath:v31];

LABEL_42:
    LOBYTE(v30) = 1;
    goto LABEL_14;
  }

LABEL_14:
  v32 = *MEMORY[0x277D85DE8];
  return v30;
}

- (id)_linkAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map copyingModifiedFactorPackWithPath:(id)path tempDirRef:(id)ref
{
  v46 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  mapCopy = map;
  pathCopy = path;
  refCopy = ref;
  v13 = [(TRIFactorPackStorage *)self loadFactorPackWithDir:pathCopy];
  if (!v13)
  {
    v27 = 0;
    goto LABEL_12;
  }

  path = [refCopy path];
  v15 = objc_alloc(MEMORY[0x277CCACA8]);
  v16 = objc_opt_new();
  uUIDString = [v16 UUIDString];
  v18 = [v15 initWithFormat:@"fp-update-%@.pb", uUIDString];
  v19 = [path stringByAppendingPathComponent:v18];

  v20 = [TRIAssetStore alloc];
  paths = self->_paths;
  extractor = self->_extractor;
  v23 = [[TRIRemoteAssetPatcher alloc] initWithMonitoredActivity:0];
  v24 = [(TRIAssetStore *)v20 initWithPaths:paths extractor:extractor patcher:v23];

  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v33[0] = MEMORY[0x277D85DD0];
  v33[1] = 3221225472;
  v33[2] = __113__TRIFactorPackStorage__linkAssetsForFactorNames_aliasToUnaliasMap_copyingModifiedFactorPackWithPath_tempDirRef___block_invoke;
  v33[3] = &unk_279DE2B88;
  v39 = &v40;
  v34 = mapCopy;
  v35 = namesCopy;
  selfCopy = self;
  v25 = v24;
  v37 = v25;
  v38 = pathCopy;
  v26 = MEMORY[0x2743948D0](v33);
  v32 = 0;
  if (([MEMORY[0x277D73678] copySourceFactorPack:v13 toDestPath:v19 error:&v32 modifyFactorLevel:v26] & 1) == 0)
  {
    v28 = TRILogCategory_Server();
    if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v45 = v32;
      _os_log_error_impl(&dword_26F567000, v28, OS_LOG_TYPE_ERROR, "Failed to make modified copy of factor pack: %{public}@", buf, 0xCu);
    }

    goto LABEL_10;
  }

  if ((v41[3] & 1) != 0 || ![MEMORY[0x277CCAA00] triRemoveFileProtectionIfPresentForPath:v19])
  {
LABEL_10:
    v27 = 0;
    goto LABEL_11;
  }

  v27 = v19;
LABEL_11:

  _Block_object_dispose(&v40, 8);
LABEL_12:

  v29 = *MEMORY[0x277D85DE8];

  return v27;
}

id __113__TRIFactorPackStorage__linkAssetsForFactorNames_aliasToUnaliasMap_copyingModifiedFactorPackWithPath_tempDirRef___block_invoke(uint64_t a1, void *a2)
{
  v51 = *MEMORY[0x277D85DE8];
  v4 = a2;
  v5 = v4;
  if (*(*(*(a1 + 72) + 8) + 24) == 1 || ![v4 hasFactor] || (objc_msgSend(v5, "factor"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hasName"), v6, (v7 & 1) == 0))
  {
    v15 = v5;
    goto LABEL_8;
  }

  v8 = *(a1 + 32);
  if (v8 && ([v5 factor], v7 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v7, "name"), v2 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v8, "objectForKeyedSubscript:", v2), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = v9;
    v11 = *(a1 + 32);
    v12 = [v5 factor];
    v13 = [v12 name];
    v14 = [v11 objectForKeyedSubscript:v13];
  }

  else
  {
    v18 = [v5 factor];
    v14 = [v18 name];

    if (!v8)
    {
      goto LABEL_13;
    }
  }

LABEL_13:
  if ([*(a1 + 40) containsObject:v14])
  {
    v19 = [v5 level];
    v20 = [v19 fileOrDirectoryLevelWithIsDir:0];

    if (v20)
    {
      if ([v20 hasPath])
      {
        goto LABEL_37;
      }

      if (![v20 hasAsset])
      {
        goto LABEL_37;
      }

      v21 = [v20 asset];
      v22 = [v21 hasAssetId];

      if ((v22 & 1) == 0)
      {
        goto LABEL_37;
      }

      v23 = [v20 asset];
      v24 = [v23 assetId];
      v25 = TRIValidateAssetId();

      if (!v25)
      {
        goto LABEL_37;
      }

      v26 = *(a1 + 48);
      v27 = *(a1 + 56);
      v28 = [v5 factor];
      v29 = [v28 name];
      v30 = [v26 _linkAssetWithId:v25 assetStore:v27 forFactorName:v29 currentFactorPackPath:*(a1 + 64) futureFactorPackPath:*(a1 + 64)];

      if (v30)
      {
        v31 = [*(a1 + 64) stringByAppendingPathComponent:v30];
        if (![TRIReferenceManagedDir saveFromGarbageCollectionItemWithPath:v31])
        {
          v32 = TRILogCategory_Server();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
          {
            v49 = 138543362;
            v50 = v31;
            _os_log_error_impl(&dword_26F567000, v32, OS_LOG_TYPE_ERROR, "Unable to prevent newly linked asset at path %{public}@ from being garbage collected in the future", &v49, 0xCu);
          }
        }

        [v20 setPath:v31];

        goto LABEL_36;
      }
    }

    else
    {
      v34 = [v5 level];
      v35 = [v34 levelOneOfCase];

      if (v35 != 104)
      {
LABEL_37:
        v48 = v5;
        goto LABEL_38;
      }

      v36 = [v5 level];
      v25 = [v36 mobileAssetReferenceValue];

      if (![v25 hasAssetType] || !objc_msgSend(v25, "hasAssetSpecifier") || (objc_msgSend(v25, "hasAssetVersion") & 1) == 0)
      {
        v46 = v5;

LABEL_38:
        goto LABEL_39;
      }

      v37 = objc_alloc(MEMORY[0x277D73740]);
      v38 = [v25 assetType];
      v39 = [v25 assetSpecifier];
      v40 = [v25 assetVersion];
      v30 = [v37 initWithType:v38 specifier:v39 version:v40];

      v41 = *(a1 + 48);
      v42 = *(a1 + 56);
      v43 = [v5 factor];
      v44 = [v43 name];
      if ([v25 hasIsFileFactor])
      {
        v45 = [v25 isFileFactor];
      }

      else
      {
        v45 = 0;
      }

      v47 = [v41 _referenceMAAssetWithId:v30 assetStore:v42 forFactorName:v44 isFileFactor:v45 currentFactorPackPath:*(a1 + 64) futureFactorPackPath:*(a1 + 64)];

      if (v47)
      {
LABEL_36:

        goto LABEL_37;
      }
    }

    *(*(*(a1 + 72) + 8) + 24) = 1;
    goto LABEL_36;
  }

  v33 = v5;
LABEL_39:

LABEL_8:
  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)_linkAssetWithId:(id)id assetStore:(id)store forFactorName:(id)name currentFactorPackPath:(id)path futureFactorPackPath:(id)packPath
{
  packPathCopy = packPath;
  pathCopy = path;
  storeCopy = store;
  idCopy = id;
  triFilenameForFactorName = [name triFilenameForFactorName];
  v16 = MEMORY[0x277CCAA00];
  v17 = [pathCopy stringByAppendingPathComponent:@"assets"];
  [v16 triIdempotentCreateDirectoryOrFaultWithPath:v17];

  v18 = [@"assets" stringByAppendingPathComponent:triFilenameForFactorName];
  v19 = [pathCopy stringByAppendingPathComponent:v18];

  v20 = [packPathCopy stringByAppendingPathComponent:v18];

  LODWORD(packPathCopy) = [storeCopy linkAssetWithIdentifier:idCopy toCurrentPath:v19 futurePath:v20];
  if (packPathCopy)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0;
  }

  v22 = v21;

  return v21;
}

+ (id)relPathForMAReferenceWithFactorName:(id)name
{
  triFilenameForFactorName = [name triFilenameForFactorName];
  v4 = [@"maRefs" stringByAppendingPathComponent:triFilenameForFactorName];

  return v4;
}

void __115__TRIFactorPackStorage_updateSavedFactorPackWithId_namespaceName_deletingAssetsWithFactorNames_inUseAssetBehavior___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = TRILogCategory_Server();
  v6 = v5;
  if (v4)
  {
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 32);
      v10 = 138543618;
      v11 = v7;
      v12 = 2114;
      v13 = v4;
      _os_log_error_impl(&dword_26F567000, v6, OS_LOG_TYPE_ERROR, "Failed to eliminate MAAutoAsset %{public}@: %{public}@", &v10, 0x16u);
    }
  }

  else if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 32);
    v10 = 138543362;
    v11 = v8;
    _os_log_impl(&dword_26F567000, v6, OS_LOG_TYPE_DEFAULT, "Eliminated MAAutoAsset: %{public}@", &v10, 0xCu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (BOOL)updateSavedGlobalFactorPackAt:(id)at deletingAssetsWithFactorNames:(id)names
{
  v42 = *MEMORY[0x277D85DE8];
  atCopy = at;
  namesCopy = names;
  v8 = NSTemporaryDirectory();
  v9 = objc_opt_new();
  uUIDString = [v9 UUIDString];
  v11 = [v8 stringByAppendingPathComponent:uUIDString];

  v12 = [[TRITempDirScopeGuard alloc] initWithPath:v11];
  if (v12)
  {
    v13 = objc_opt_new();
    v14 = [(TRIFactorPackStorage *)self _removeAssetsWithFactorNames:namesCopy copyingModifiedFactorPackWithPath:atCopy appendingToPathsToRemove:v13 appendingToMARefsToRemove:0 tempDirRef:v12];
    v15 = MEMORY[0x277CCAA00];
    v16 = [atCopy stringByAppendingPathComponent:@"factorPack.pb"];
    LOBYTE(v15) = [v15 triRenameOrFaultWithSourcePath:v14 destPath:v16];

    if (v15)
    {
      v28 = v14;
      v29 = v12;
      v30 = namesCopy;
      v31 = atCopy;
      v35 = 0u;
      v36 = 0u;
      v33 = 0u;
      v34 = 0u;
      v17 = v13;
      v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v34;
        v21 = 1;
        do
        {
          for (i = 0; i != v19; ++i)
          {
            if (*v34 != v20)
            {
              objc_enumerationMutation(v17);
            }

            v23 = *(*(&v33 + 1) + 8 * i);
            v32 = 0;
            if (![TRIReferenceManagedDir removeFileInManagedDirWithPath:v23 inUseDeletionBehavior:2 wasDeleted:&v32, v28])
            {
              v24 = TRILogCategory_Server();
              if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
              {
                buf = 138543362;
                v39 = v23;
                _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "Failed to remove file %{public}@ in global managed dir", &buf, 0xCu);
              }

              v21 = 0;
            }
          }

          v19 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
        }

        while (v19);
      }

      else
      {
        v21 = 1;
      }

      v25 = TRILogCategory_Server();
      v14 = v28;
      if (os_log_type_enabled(v25, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_26F567000, v25, OS_LOG_TYPE_INFO, "Successfuly removed factors from global path.", &buf, 2u);
      }

      namesCopy = v30;
      atCopy = v31;
      v12 = v29;
    }

    else
    {
      v25 = TRILogCategory_Server();
      if (os_log_type_enabled(v25, OS_LOG_TYPE_ERROR))
      {
        buf = 138543618;
        v39 = v14;
        v40 = 2114;
        v41 = atCopy;
        _os_log_error_impl(&dword_26F567000, v25, OS_LOG_TYPE_ERROR, "Failed to move the temp factorPack.pb file in %{public}@ to the global path %{public}@", &buf, 0x16u);
      }

      v21 = 0;
    }
  }

  else
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Failed to create temp directory while attempting to delete assets from global directory.", &buf, 2u);
    }

    v21 = 0;
  }

  v26 = *MEMORY[0x277D85DE8];
  return v21 & 1;
}

- (id)_removeAssetsWithFactorNames:(id)names copyingModifiedFactorPackWithPath:(id)path appendingToPathsToRemove:(id)remove appendingToMARefsToRemove:(id)toRemove tempDirRef:(id)ref
{
  v45 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  pathCopy = path;
  removeCopy = remove;
  toRemoveCopy = toRemove;
  refCopy = ref;
  v17 = [(TRIFactorPackStorage *)self loadFactorPackWithDir:pathCopy];
  if (!v17)
  {
    v30 = 0;
    goto LABEL_11;
  }

  v35 = refCopy;
  path = [refCopy path];
  selfCopy = self;
  v19 = objc_alloc(MEMORY[0x277CCACA8]);
  v20 = objc_opt_new();
  [v20 UUIDString];
  v21 = v17;
  v22 = pathCopy;
  v23 = toRemoveCopy;
  v25 = v24 = namesCopy;
  v26 = removeCopy;
  v27 = [v19 initWithFormat:@"fp-update-%@.pb", v25];
  v28 = [path stringByAppendingPathComponent:v27];

  removeCopy = v26;
  namesCopy = v24;
  toRemoveCopy = v23;
  pathCopy = v22;
  v17 = v21;

  v37[0] = MEMORY[0x277D85DD0];
  v37[1] = 3221225472;
  v37[2] = __149__TRIFactorPackStorage__removeAssetsWithFactorNames_copyingModifiedFactorPackWithPath_appendingToPathsToRemove_appendingToMARefsToRemove_tempDirRef___block_invoke;
  v37[3] = &unk_279DE2BB0;
  v38 = namesCopy;
  v39 = v26;
  v40 = selfCopy;
  v41 = pathCopy;
  v42 = toRemoveCopy;
  v29 = MEMORY[0x2743948D0](v37);
  v36 = 0;
  if (([MEMORY[0x277D73678] copySourceFactorPack:v17 toDestPath:v28 error:&v36 modifyFactorLevel:v29] & 1) == 0)
  {
    v31 = TRILogCategory_Server();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v44 = v36;
      _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "Failed to make modified copy of factor pack: %{public}@", buf, 0xCu);
    }

    goto LABEL_9;
  }

  if (![MEMORY[0x277CCAA00] triRemoveFileProtectionIfPresentForPath:v28])
  {
LABEL_9:
    v30 = 0;
    goto LABEL_10;
  }

  v30 = v28;
LABEL_10:
  refCopy = v35;

LABEL_11:
  v32 = *MEMORY[0x277D85DE8];

  return v30;
}

id __149__TRIFactorPackStorage__removeAssetsWithFactorNames_copyingModifiedFactorPackWithPath_appendingToPathsToRemove_appendingToMARefsToRemove_tempDirRef___block_invoke(uint64_t a1, void *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 factor];
  v5 = [v4 hasName];

  if ((v5 & 1) == 0)
  {
    v13 = v3;
    goto LABEL_21;
  }

  v6 = [v3 level];
  v7 = [v6 fileOrDirectoryLevelWithIsDir:0];

  if (v7)
  {
    if ([v7 isOnDemand])
    {
      if ([v7 hasPath])
      {
        v8 = *(a1 + 32);
        v9 = [v3 factor];
        v10 = [v9 name];
        LOBYTE(v8) = [v8 containsObject:v10];

        if (v8)
        {
          v11 = *(a1 + 40);
          v12 = [v7 path];
          [v11 addObject:v12];

          [v7 setPath:0];
        }
      }
    }
  }

  else
  {
    v14 = [v3 level];
    v15 = [v14 levelOneOfCase];

    if (v15 == 104)
    {
      v16 = [v3 level];
      v17 = [v16 mobileAssetReferenceValue];

      if (![v17 isOnDemand])
      {
        goto LABEL_24;
      }

      v18 = *(a1 + 32);
      v19 = [v3 factor];
      v20 = [v19 name];
      LOBYTE(v18) = [v18 containsObject:v20];

      if (v18)
      {
        v21 = *(a1 + 48);
        v22 = objc_opt_class();
        v23 = [v3 factor];
        v24 = [v23 name];
        v25 = [v22 relPathForMAReferenceWithFactorName:v24];

        v26 = [*(a1 + 56) stringByAppendingPathComponent:v25];
        v27 = [MEMORY[0x277CCAA00] defaultManager];
        v28 = [v27 fileExistsAtPath:v26];

        if (v28)
        {
          [*(a1 + 40) addObject:v26];
          v29 = *(a1 + 64);
          if (v29)
          {
            [v29 setObject:v17 forKey:v26];
          }

          v30 = objc_opt_new();
          v40 = 0;
          v31 = [v30 writeToFile:v26 options:0x10000000 error:&v40];
          v32 = v40;

          if ((v31 & 1) == 0)
          {
            v33 = TRILogCategory_Server();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v42 = v26;
              _os_log_error_impl(&dword_26F567000, v33, OS_LOG_TYPE_ERROR, "Unable to nil out MARef by creating a blank file at %{public}@", buf, 0xCu);
            }
          }

          v34 = v3;
        }

        else
        {
          v39 = v3;
        }
      }

      else
      {
LABEL_24:
        v38 = v3;
      }

      goto LABEL_20;
    }
  }

  v35 = v3;
LABEL_20:

LABEL_21:
  v36 = *MEMORY[0x277D85DE8];

  return v3;
}

- (id)pathForFactorPackWithId:(id)id namespaceName:(id)name
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [(TRIFactorPackStorage *)self _pathForFactorPackWithId:id namespaceName:name];
  if (v4)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v6 = [defaultManager fileExistsAtPath:v4];

    if (v6)
    {
      v7 = v4;
      goto LABEL_8;
    }

    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138543362;
      v12 = v4;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Factor pack does not exist at %{public}@", &v11, 0xCu);
    }
  }

  v7 = 0;
LABEL_8:

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)_pathForFactorPackWithId:(id)id namespaceName:(id)name
{
  idCopy = id;
  nameCopy = name;
  v8 = [(TRIFactorPackStorage *)self _parentDirForFactorPackWithNamespaceName:nameCopy];
  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [v8 stringByAppendingPathComponent:idCopy];
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_parentDirForFactorPackWithNamespaceName:(id)name
{
  v14 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy length])
  {
    v5 = objc_autoreleasePoolPush();
    treatmentsDir = [(TRIPaths *)self->_paths treatmentsDir];
    nameCopy = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/factorPacks", nameCopy];
    v8 = [treatmentsDir stringByAppendingPathComponent:nameCopy];

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v13 = "[TRIFactorPackStorage _parentDirForFactorPackWithNamespaceName:]";
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "%s has empty path arg: namespaceName", buf, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)legacyPathForFactorPackWithId:(id)id namespaceName:(id)name
{
  v4 = [(TRIFactorPackStorage *)self _legacyPathForFactorPackWithId:id namespaceName:name];
  if (v4)
  {
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    if ([defaultManager fileExistsAtPath:v4])
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (id)_legacyPathForFactorPackWithId:(id)id namespaceName:(id)name
{
  idCopy = id;
  nameCopy = name;
  v8 = [(TRIFactorPackStorage *)self _legacyParentDirForFactorPackWithNamespaceName:nameCopy];
  if (v8)
  {
    v9 = objc_autoreleasePoolPush();
    v10 = [v8 stringByAppendingPathComponent:idCopy];
    objc_autoreleasePoolPop(v9);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_legacyParentDirForFactorPackWithNamespaceName:(id)name
{
  v17 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if ([nameCopy length])
  {
    *buf = 0;
    v5 = TRINamespace_NamespaceId_EnumDescriptor();
    v6 = [v5 getValue:buf forEnumTextFormatName:nameCopy];

    if (v6)
    {
      v7 = objc_autoreleasePoolPush();
      treatmentsDir = [(TRIPaths *)self->_paths treatmentsDir];
      v9 = objc_alloc(MEMORY[0x277CCACA8]);
      v10 = [v9 initWithFormat:@"%d/factorPacks", *buf];
      v11 = [treatmentsDir stringByAppendingPathComponent:v10];

      objc_autoreleasePoolPop(v7);
      goto LABEL_8;
    }
  }

  else
  {
    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v16 = "[TRIFactorPackStorage _legacyParentDirForFactorPackWithNamespaceName:]";
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "%s has empty path arg: namespaceName", buf, 0xCu);
    }
  }

  v11 = 0;
LABEL_8:

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)removeUnreferencedFactorPacksWithRemovedCount:(unsigned int *)count
{
  v25 = *MEMORY[0x277D85DE8];
  v22 = 0;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = MEMORY[0x277CBEBC0];
  treatmentsDir = [(TRIPaths *)self->_paths treatmentsDir];
  v7 = [v5 fileURLWithPath:treatmentsDir];
  LOBYTE(v8) = 1;
  v9 = [defaultManager enumeratorAtURL:v7 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v10 = objc_autoreleasePoolPush();
  nextObject = [v9 nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    v8 = 1;
    *&v12 = 134217984;
    v19 = v12;
    do
    {
      lastPathComponent = [nextObject2 lastPathComponent];
      if (lastPathComponent)
      {
        v21 = -1;
        if ([MEMORY[0x277D73748] convertFromString:lastPathComponent usingBase:10 toI64:&v21])
        {
          if ((v21 - 1) > 0x7FFFFFFE)
          {
            v16 = TRILogCategory_Server();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
            {
              *buf = v19;
              v24 = v21;
              _os_log_debug_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEBUG, "Skipping removal of factor packs for unrecognized id-based namespace: %lld", buf, 0xCu);
            }
          }

          else
          {
            v15 = TRINamespace_NamespaceId_EnumDescriptor();
            v16 = [v15 textFormatNameForValue:v21];

            if (v16)
            {
              v8 &= [(TRIFactorPackStorage *)self _removeUnreferencedFactorPackSetsWithNamespaceName:v16 removedCount:&v22];
            }

            else
            {
              v16 = TRILogCategory_Server();
              if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
              {
                *buf = v19;
                v24 = v21;
                _os_log_debug_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEBUG, "Skipping removal of factor packs for unrecognized id-based namespace: %lld", buf, 0xCu);
              }
            }
          }
        }

        else
        {
          v8 &= [(TRIFactorPackStorage *)self _removeUnreferencedFactorPackSetsWithNamespaceName:lastPathComponent removedCount:&v22];
        }
      }

      objc_autoreleasePoolPop(v10);
      v10 = objc_autoreleasePoolPush();
      nextObject2 = [v9 nextObject];
    }

    while (nextObject2);
  }

  objc_autoreleasePoolPop(v10);
  if (count)
  {
    *count = v22;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

- (BOOL)_removeUnreferencedFactorPackSetsWithNamespaceName:(id)name removedCount:(unsigned int *)count
{
  v32 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  if (!count)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFactorPackStorage.m" lineNumber:1172 description:{@"Invalid parameter not satisfying: %@", @"removedCount"}];
  }

  if ([nameCopy length])
  {
    v8 = [(TRIFactorPackStorage *)self _parentDirForFactorPackWithNamespaceName:nameCopy];
    v9 = [(TRIFactorPackStorage *)self _legacyParentDirForFactorPackWithNamespaceName:nameCopy];
    v10 = v9;
    if (v8 && v9)
    {
      v26 = 0u;
      v27 = 0u;
      v24 = 0u;
      v25 = 0u;
      v28[0] = v8;
      v28[1] = v9;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:2];
      v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
      if (v12)
      {
        v13 = v12;
        v22 = v10;
        v23 = v8;
        v14 = *v25;
        v15 = 1;
        do
        {
          for (i = 0; i != v13; ++i)
          {
            if (*v25 != v14)
            {
              objc_enumerationMutation(v11);
            }

            v17 = *(*(&v24 + 1) + 8 * i);
            v18 = objc_autoreleasePoolPush();
            v15 &= [(TRIFactorPackStorage *)self _removeUnreferencedFactorPackSetsWithParentDir:v17 removedCount:count];
            objc_autoreleasePoolPop(v18);
          }

          v13 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
        }

        while (v13);
        v10 = v22;
        v8 = v23;
      }

      else
      {
        LOBYTE(v15) = 1;
      }
    }

    else
    {
      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v31 = nameCopy;
        _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Unable to determine parent dir(s) for factor pack with namespace name: %{public}@", buf, 0xCu);
      }

      LOBYTE(v15) = 0;
    }
  }

  else
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v31 = "[TRIFactorPackStorage _removeUnreferencedFactorPackSetsWithNamespaceName:removedCount:]";
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "%s has empty path arg: namespaceName", buf, 0xCu);
    }

    LOBYTE(v15) = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)_removeUnreferencedFactorPackSetsWithParentDir:(id)dir removedCount:(unsigned int *)count
{
  dirCopy = dir;
  v7 = [MEMORY[0x277D73728] arrayFromDirectory:dirCopy];
  if (v7)
  {
    v8 = [TRITempDirScopeGuard alloc];
    localTempDir = [(TRIPaths *)self->_paths localTempDir];
    v10 = [(TRITempDirScopeGuard *)v8 initWithPath:localTempDir];

    if (v10)
    {
      v17 = 0;
      v18 = &v17;
      v19 = 0x2020000000;
      v20 = 1;
      v13[0] = MEMORY[0x277D85DD0];
      v13[1] = 3221225472;
      v13[2] = __84__TRIFactorPackStorage__removeUnreferencedFactorPackSetsWithParentDir_removedCount___block_invoke;
      v13[3] = &unk_279DE2BD8;
      v15 = &v17;
      v14 = v10;
      countCopy = count;
      if ([v7 enumerateStringsWithBlock:v13])
      {
        v11 = *(v18 + 24);
      }

      else
      {
        v11 = 0;
      }

      _Block_object_dispose(&v17, 8);
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

void __84__TRIFactorPackStorage__removeUnreferencedFactorPackSetsWithParentDir_removedCount___block_invoke(uint64_t a1, void *a2)
{
  v7 = 0;
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [v3 path];
  v6 = [TRIReferenceManagedDir collectGarbageForManagedDir:v4 withExternalReferenceStore:0 usingTempDir:v5 managedDirWasDeleted:&v7];

  *(*(*(a1 + 40) + 8) + 24) &= v6;
  if (v7 == 1)
  {
    ++**(a1 + 48);
  }
}

@end