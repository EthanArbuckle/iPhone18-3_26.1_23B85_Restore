@interface TRIFBFactorPackStorage
+ (id)relPathForMAReferenceWithFactorName:(id)name;
- (BOOL)_linkAssetsUpdatingFactorLevel:(id)level fromFactorPackWithId:(id)id usingAssetStore:(id)store currentFactorPackPath:(id)path futureFactorPackPath:(id)packPath;
- (BOOL)_removeUnreferencedFactorPackSetsWithNamespaceName:(id)name removedCount:(unsigned int *)count;
- (BOOL)_removeUnreferencedFactorPackSetsWithParentDir:(id)dir removedCount:(unsigned int *)count;
- (BOOL)removeUnreferencedFactorLevelsWithRemovedCount:(unsigned int *)count;
- (BOOL)removeUnreferencedGlobalFactorPacksWithRemovedCount:(unsigned int *)count;
- (BOOL)saveFactorLevelsForFactorPack:(id)pack populatingAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map factorLevelsByNamePath:(id *)path factorLevelsByIdPath:(id *)idPath;
- (BOOL)saveFactorPackToGlobal:(id)global forFactorNames:(id)names aliasToUnaliasMap:(id)map;
- (BOOL)updateSavedFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name populatingAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map;
- (BOOL)updateSavedGlobalFactorPackAt:(id)at deletingAssetsWithFactorNames:(id)names;
- (BOOL)updateSavedGlobalFactorPackAt:(id)at populatingAssetsForFactorNames:(id)names;
- (TRIFBFactorPackStorage)initWithPaths:(id)paths;
- (TRIFBFactorPackStorage)initWithPaths:(id)paths extractor:(id)extractor;
- (id)_globalFactorPackProviderPlist;
- (id)_legacyParentDirForFactorLevelsWithNamespaceName:(id)name;
- (id)_legacyPathForFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name;
- (id)_linkAssetWithId:(id)id assetStore:(id)store forFactorName:(id)name currentFactorPackPath:(id)path futureFactorPackPath:(id)packPath;
- (id)_linkAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map copyingModifiedFactorLevelsWithPath:(id)path tempDirRef:(id)ref;
- (id)_parentDirForFactorLevelsWithNamespaceName:(id)name;
- (id)_pathForFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name;
- (id)_removeAssetsWithFactorNames:(id)names copyingModifiedFactorLevelsWithPath:(id)path appendingToPathsToRemove:(id)remove appendingToMARefsToRemove:(id)toRemove tempDirRef:(id)ref;
- (id)_writeFactorPack:(id)pack futurePath:(id)path forFactorNames:(id)names aliasToUnaliasMap:(id)map assetStore:(id)store tempDirRef:(id)ref;
- (id)_writeIdBasedFactorPack:(id)pack forFactorNames:(id)names aliasToUnaliasMap:(id)map assetStore:(id)store tempDirRef:(id)ref;
- (id)legacyPathForFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name;
- (id)loadFactorLevelsWithDir:(id)dir bufferSize:(unint64_t *)size;
- (id)loadFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name;
- (id)pathForFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name;
- (void)_reportFactorPackDiskUsagesWithNamespaceName:(id)name namespaceDirName:(id)dirName context:(id)context;
- (void)reportFactorPackDiskUsagesUsingContext:(id)context;
@end

@implementation TRIFBFactorPackStorage

- (TRIFBFactorPackStorage)initWithPaths:(id)paths extractor:(id)extractor
{
  pathsCopy = paths;
  extractorCopy = extractor;
  v12.receiver = self;
  v12.super_class = TRIFBFactorPackStorage;
  v9 = [(TRIFBFactorPackStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_paths, paths);
    objc_storeStrong(&v10->_extractor, extractor);
  }

  return v10;
}

- (TRIFBFactorPackStorage)initWithPaths:(id)paths
{
  pathsCopy = paths;
  v5 = [[TRIRemoteAssetExtractor alloc] initWithMonitoredActivity:0];
  v6 = [(TRIFBFactorPackStorage *)self initWithPaths:pathsCopy extractor:v5];

  return v6;
}

- (BOOL)saveFactorLevelsForFactorPack:(id)pack populatingAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map factorLevelsByNamePath:(id *)path factorLevelsByIdPath:(id *)idPath
{
  v60 = *MEMORY[0x277D85DE8];
  packCopy = pack;
  namesCopy = names;
  mapCopy = map;
  v15 = objc_autoreleasePoolPush();
  if (([packCopy hasFactorPackId] & 1) == 0)
  {
    v19 = TRILogCategory_Server();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v40 = "TRIClientFactorPack has missing factorPackId";
LABEL_30:
    _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, v40, buf, 2u);
    goto LABEL_24;
  }

  if (![packCopy hasSelectedNamespace] || (objc_msgSend(packCopy, "selectedNamespace"), v16 = objc_claimAutoreleasedReturnValue(), v17 = objc_msgSend(v16, "hasName"), v16, (v17 & 1) == 0))
  {
    v19 = TRILogCategory_Server();
    if (!os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *buf = 0;
    v40 = "TRIClientFactorPack has missing namespaceName";
    goto LABEL_30;
  }

  factorPackId = [packCopy factorPackId];
  v19 = TRIValidateFactorPackId();

  if (!v19)
  {
LABEL_24:
    LOBYTE(v37) = 0;
    goto LABEL_25;
  }

  location = idPath;
  selectedNamespace = [packCopy selectedNamespace];
  name = [selectedNamespace name];
  v22 = [(TRIFBFactorPackStorage *)self _pathForFactorLevelsWithFactorPackId:v19 namespaceName:name];

  if (!v22)
  {
    v43 = TRILogCategory_Server();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      factorPackId2 = [packCopy factorPackId];
      selectedNamespace2 = [packCopy selectedNamespace];
      name2 = [selectedNamespace2 name];
      *buf = 138543618;
      v57 = factorPackId2;
      v58 = 2114;
      v59 = name2;
      _os_log_error_impl(&dword_26F567000, v43, OS_LOG_TYPE_ERROR, "Failed to resolve location for factor pack %{public}@ with namespace %{public}@.", buf, 0x16u);
    }

    goto LABEL_24;
  }

  v55 = v22;
  v23 = [TRIAssetStore alloc];
  paths = self->_paths;
  extractor = self->_extractor;
  v25 = [[TRIRemoteAssetPatcher alloc] initWithMonitoredActivity:0];
  v26 = [(TRIAssetStore *)v23 initWithPaths:paths extractor:extractor patcher:v25];

  v27 = [TRITempDirScopeGuard alloc];
  localTempDir = [(TRIPaths *)self->_paths localTempDir];
  v29 = [(TRITempDirScopeGuard *)v27 initWithPath:localTempDir];

  v30 = v29;
  if (v29)
  {
    v31 = v55;
    v54 = v26;
    v51 = v30;
    v32 = [(TRIFBFactorPackStorage *)self _writeFactorPack:packCopy futurePath:v55 forFactorNames:namesCopy aliasToUnaliasMap:mapCopy assetStore:v26 tempDirRef:?];
    if (v32)
    {
      v50 = v32;
      stringByDeletingLastPathComponent = [v55 stringByDeletingLastPathComponent];
      v49 = stringByDeletingLastPathComponent;
      if ([MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:stringByDeletingLastPathComponent] && objc_msgSend(MEMORY[0x277CCAA00], "triRemoveFileProtectionIfPresentForPath:", stringByDeletingLastPathComponent))
      {
        v34 = [v55 stringByAppendingPathComponent:@"factorPack.pb"];
        v47 = [v50 stringByAppendingPathComponent:@"factorPack.pb"];
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v48 = v34;
        LODWORD(v34) = [defaultManager isReadableFileAtPath:v34];

        if (v34)
        {
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          [defaultManager2 triSafeCopyItemAtPath:v48 toPath:v47 error:0];
        }

        v31 = v55;
        v37 = [MEMORY[0x277CCAA00] triForceRenameWithSourcePath:v50 destPath:v55];
        if (v37)
        {
          v38 = TRILogCategory_Server();
          if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            v57 = v19;
            v58 = 2114;
            v59 = v55;
            _os_log_impl(&dword_26F567000, v38, OS_LOG_TYPE_DEFAULT, "Wrote factor pack %{public}@ --> %{public}@", buf, 0x16u);
          }

          v39 = [(TRIFBFactorPackStorage *)self _writeIdBasedFactorPack:packCopy forFactorNames:namesCopy aliasToUnaliasMap:mapCopy assetStore:v54 tempDirRef:v51];
          if (path)
          {
            objc_storeStrong(path, v55);
          }

          if (location)
          {
            objc_storeStrong(location, v39);
          }
        }
      }

      else
      {
        LOBYTE(v37) = 0;
      }

      v26 = v54;

      v32 = v50;
    }

    else
    {
      LOBYTE(v37) = 0;
    }

    v30 = v51;
  }

  else
  {
    LOBYTE(v37) = 0;
    v31 = v55;
  }

LABEL_25:
  objc_autoreleasePoolPop(v15);

  v41 = *MEMORY[0x277D85DE8];
  return v37;
}

- (id)_writeIdBasedFactorPack:(id)pack forFactorNames:(id)names aliasToUnaliasMap:(id)map assetStore:(id)store tempDirRef:(id)ref
{
  v40 = *MEMORY[0x277D85DE8];
  packCopy = pack;
  namesCopy = names;
  mapCopy = map;
  storeCopy = store;
  refCopy = ref;
  factorPackId = [packCopy factorPackId];
  v18 = TRIValidateFactorPackId();

  if (v18)
  {
    selectedNamespace = [packCopy selectedNamespace];
    name = [selectedNamespace name];
    v21 = [(TRIFBFactorPackStorage *)self _legacyPathForFactorLevelsWithFactorPackId:v18 namespaceName:name];

    if (v21)
    {
      v22 = [(TRIFBFactorPackStorage *)self _writeFactorPack:packCopy futurePath:v21 forFactorNames:namesCopy aliasToUnaliasMap:mapCopy assetStore:storeCopy tempDirRef:refCopy];
      if (v22)
      {
        stringByDeletingLastPathComponent = [v21 stringByDeletingLastPathComponent];
        if ([MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:stringByDeletingLastPathComponent] && objc_msgSend(MEMORY[0x277CCAA00], "triRemoveFileProtectionIfPresentForPath:", stringByDeletingLastPathComponent))
        {
          v35 = [v21 stringByAppendingPathComponent:@"factorPack.pb"];
          v34 = [v22 stringByAppendingPathComponent:@"factorPack.pb"];
          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v33 = [defaultManager isReadableFileAtPath:v35];

          if (v33)
          {
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            [defaultManager2 triSafeCopyItemAtPath:v35 toPath:v34 error:0];
          }

          if ([MEMORY[0x277CCAA00] triForceRenameWithSourcePath:v22 destPath:v21])
          {
            v26 = TRILogCategory_Server();
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v37 = v18;
              v38 = 2114;
              v39 = v21;
              _os_log_impl(&dword_26F567000, v26, OS_LOG_TYPE_DEFAULT, "Wrote factor pack %{public}@ --> %{public}@ (legacy id-based directory).", buf, 0x16u);
            }

            v27 = v21;
          }

          else
          {
            v27 = 0;
          }
        }

        else
        {
          v27 = 0;
        }
      }

      else
      {
        v27 = 0;
      }
    }

    else
    {
      v21 = TRILogCategory_Server();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
      {
        factorPackId2 = [packCopy factorPackId];
        selectedNamespace2 = [packCopy selectedNamespace];
        name2 = [selectedNamespace2 name];
        *buf = 138543618;
        v37 = factorPackId2;
        v38 = 2114;
        v39 = name2;
        _os_log_impl(&dword_26F567000, v21, OS_LOG_TYPE_INFO, "Failed to resolve location for factor pack %{public}@ with namespace %{public}@.", buf, 0x16u);
      }

      v27 = 0;
    }
  }

  else
  {
    v27 = 0;
  }

  v31 = *MEMORY[0x277D85DE8];

  return v27;
}

- (BOOL)saveFactorPackToGlobal:(id)global forFactorNames:(id)names aliasToUnaliasMap:(id)map
{
  v57 = *MEMORY[0x277D85DE8];
  globalCopy = global;
  namesCopy = names;
  mapCopy = map;
  factorPackId = [globalCopy factorPackId];
  v10 = TRIValidateFactorPackId();

  if (v10)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = [(TRIPaths *)self->_paths treatmentsDirUsingGlobal:1];
    v13 = objc_alloc(MEMORY[0x277CCACA8]);
    selectedNamespace = [globalCopy selectedNamespace];
    name = [selectedNamespace name];
    v16 = [v13 initWithFormat:@"%@/factorPacks", name];
    v17 = [v12 stringByAppendingPathComponent:v16];
    v18 = [v17 stringByAppendingPathComponent:v10];

    objc_autoreleasePoolPop(v11);
    if (v18)
    {
      v19 = [TRIAssetStore alloc];
      paths = self->_paths;
      extractor = self->_extractor;
      v22 = [[TRIRemoteAssetPatcher alloc] initWithMonitoredActivity:0];
      v43 = [(TRIAssetStore *)v19 initWithPaths:paths extractor:extractor patcher:v22];

      v23 = [TRITempDirScopeGuard alloc];
      localTempDir = [(TRIPaths *)self->_paths localTempDir];
      v25 = [(TRITempDirScopeGuard *)v23 initWithPath:localTempDir];

      if (v25)
      {
        v26 = [(TRIFBFactorPackStorage *)self _writeFactorPack:globalCopy futurePath:v18 forFactorNames:namesCopy aliasToUnaliasMap:mapCopy assetStore:v43 tempDirRef:v25];
        if (v26)
        {
          v27 = [v18 stringByAppendingPathComponent:@"factorPack.pb"];
          v28 = [v26 stringByAppendingPathComponent:@"factorPack.pb"];
          defaultManager = [MEMORY[0x277CCAA00] defaultManager];
          v42 = v26;
          v30 = [defaultManager isReadableFileAtPath:v27];

          if (v30)
          {
            defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
            [defaultManager2 triSafeCopyItemAtPath:v27 toPath:v28 error:0];
          }

          *v53 = 0;
          *&v53[8] = v53;
          *&v53[16] = 0x3032000000;
          v54 = __Block_byref_object_copy__33;
          v55 = __Block_byref_object_dispose__33;
          v26 = v42;
          v56 = objc_alloc_init(MEMORY[0x277CBEB58]);
          v46[0] = MEMORY[0x277D85DD0];
          v46[1] = 3221225472;
          v46[2] = __82__TRIFBFactorPackStorage_saveFactorPackToGlobal_forFactorNames_aliasToUnaliasMap___block_invoke;
          v46[3] = &unk_279DDF720;
          v47 = namesCopy;
          v48 = v53;
          [globalCopy enumerateFactorLevelsWithBlock:v46];
          v32 = [[TRIRemoteAssetStoreOperator alloc] initWithPaths:self->_paths];
          v33 = [(TRIRemoteAssetStoreOperator *)v32 saveFactorPackToGlobalPath:v18 fromTemporaryPath:v42 factors:*(*&v53[8] + 40)];
          v34 = TRILogCategory_Server();
          v35 = v34;
          if (v33)
          {
            if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              v50 = v10;
              v51 = 2114;
              v52 = v18;
              _os_log_impl(&dword_26F567000, v35, OS_LOG_TYPE_DEFAULT, "Wrote global factor pack %{public}@ --> %{public}@", buf, 0x16u);
            }
          }

          else if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v50 = v18;
            _os_log_error_impl(&dword_26F567000, v35, OS_LOG_TYPE_ERROR, "Failed to write global factor pack to %@", buf, 0xCu);
          }

          _Block_object_dispose(v53, 8);
        }

        else
        {
          v36 = TRILogCategory_Server();
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            *v53 = 0;
            _os_log_error_impl(&dword_26F567000, v36, OS_LOG_TYPE_ERROR, "Failed to create or copy global fb factor pack to a temporary directory.", v53, 2u);
          }

          LOBYTE(v33) = 0;
        }
      }

      else
      {
        LOBYTE(v33) = 0;
      }
    }

    else
    {
      v18 = TRILogCategory_Server();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        factorPackId2 = [globalCopy factorPackId];
        selectedNamespace2 = [globalCopy selectedNamespace];
        name2 = [selectedNamespace2 name];
        *v53 = 138543618;
        *&v53[4] = factorPackId2;
        *&v53[12] = 2114;
        *&v53[14] = name2;
        _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Failed to resolve location for factor pack %{public}@ with namespace %{public}@.", v53, 0x16u);
      }

      LOBYTE(v33) = 0;
    }
  }

  else
  {
    LOBYTE(v33) = 0;
  }

  v37 = *MEMORY[0x277D85DE8];
  return v33;
}

void __82__TRIFBFactorPackStorage_saveFactorPackToGlobal_forFactorNames_aliasToUnaliasMap___block_invoke(uint64_t a1, void *a2)
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
  v95 = *MEMORY[0x277D85DE8];
  packCopy = pack;
  pathCopy = path;
  namesCopy = names;
  mapCopy = map;
  storeCopy = store;
  refCopy = ref;
  if (([packCopy hasFactorPackId] & 1) == 0)
  {
    v20 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      *&buf[4] = pathCopy;
      _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "Failed to find factor pack identifier when writing factor pack to path: %{public}@", buf, 0xCu);
    }

    goto LABEL_11;
  }

  factorPackId = [packCopy factorPackId];
  v20 = TRIValidateFactorPackId();

  if (!v20)
  {
LABEL_11:
    v29 = 0;
    goto LABEL_12;
  }

  v21 = objc_alloc(MEMORY[0x277CCACA8]);
  v22 = objc_opt_new();
  uUIDString = [v22 UUIDString];
  v24 = [v21 initWithFormat:@"fl-%@-%@", v20, uUIDString];

  path = [refCopy path];
  v58 = [path stringByAppendingPathComponent:v24];

  if (![MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:v58] || !objc_msgSend(MEMORY[0x277CCAA00], "triRemoveFileProtectionIfPresentForPath:", v58))
  {

    goto LABEL_11;
  }

  data = [packCopy data];
  v27 = [data length];

  v56 = [v58 stringByAppendingPathComponent:@"factorPack.fb"];
  v88 = 0;
  v57 = [objc_alloc(MEMORY[0x277CED180]) initWithFileAtPath:v56 capacity:2 * v27 error:&v88];
  v54 = v88;
  if (!v57)
  {
    v55 = TRILogCategory_Server();
    if (os_log_type_enabled(v55, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v58;
      *&buf[12] = 2114;
      *&buf[14] = v54;
      _os_log_error_impl(&dword_26F567000, v55, OS_LOG_TYPE_ERROR, "Failed to create factor levels fb at %{public}@: %{public}@", buf, 0x16u);
    }

    v29 = 0;
    goto LABEL_29;
  }

  v28 = objc_opt_new();
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2020000000;
  v94 = 0;
  v86[0] = 0;
  v86[1] = v86;
  v86[2] = 0x2020000000;
  v87 = 0;
  v82 = 0;
  v83 = &v82;
  v84 = 0x2020000000;
  v85 = 0;
  v69[0] = MEMORY[0x277D85DD0];
  v69[1] = 3221225472;
  v69[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke;
  v69[3] = &unk_279DE2DA0;
  v79 = &v82;
  v52 = v20;
  v70 = v52;
  v80 = buf;
  v71 = mapCopy;
  v53 = v57;
  v72 = v53;
  v81 = v86;
  v55 = v28;
  v73 = v55;
  v74 = namesCopy;
  selfCopy = self;
  v76 = storeCopy;
  v51 = v58;
  v77 = v51;
  v78 = pathCopy;
  [packCopy enumerateFactorLevelsWithBlock:v69];
  if ((*(*&buf[8] + 24) & 1) == 0)
  {
    v32 = [v55 count];
    if (v32 != v83[3])
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFactorPackStorage.m" lineNumber:663 description:@"Failed to serialize one or more factor levels"];
    }

    v33 = [v53 trifbCreateSortedVectorOfFactorLevelWithOffsets:v55];
    v49 = [v53 createString:v52];
    selectedNamespace = [packCopy selectedNamespace];
    name = [selectedNamespace name];
    v36 = [v53 createString:name];

    selectedNamespace2 = [packCopy selectedNamespace];
    compatibilityVersionArray_Count = [selectedNamespace2 compatibilityVersionArray_Count];
    v67[0] = MEMORY[0x277D85DD0];
    v67[1] = 3221225472;
    v67[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_421;
    v67[3] = &unk_279DE2DC8;
    v68 = packCopy;
    v39 = [v53 createVectorOfUInt32WithCount:compatibilityVersionArray_Count block:v67];

    v62[0] = MEMORY[0x277D85DD0];
    v62[1] = 3221225472;
    v62[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_2_423;
    v62[3] = &unk_279DE2DF0;
    v48 = v33;
    v63 = v48;
    v50 = v49;
    v64 = v50;
    v40 = v36;
    v65 = v40;
    v41 = v39;
    v66 = v41;
    v42 = [v53 trifbCreateFastFactorLevelsUsingBlock:v62];
    v61 = 0;
    LOBYTE(name) = [v53 trifbFinishBufferWithRootFastFactorLevelsOfs:v42 error:&v61];
    v43 = v61;
    v47 = v40;
    if (name)
    {
      v44 = v41;
      if ([TRIReferenceManagedDir createFromDir:v51])
      {
        v29 = v51;
LABEL_27:

        goto LABEL_28;
      }
    }

    else
    {
      v44 = v41;
      v45 = TRILogCategory_Server();
      if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
      {
        *v89 = 138543618;
        v90 = v52;
        v91 = 2114;
        v92 = v43;
        _os_log_error_impl(&dword_26F567000, v45, OS_LOG_TYPE_ERROR, "Failed to write factor levels for factor pack %{public}@: %{public}@", v89, 0x16u);
      }
    }

    v29 = 0;
    goto LABEL_27;
  }

  v29 = 0;
LABEL_28:

  _Block_object_dispose(&v82, 8);
  _Block_object_dispose(v86, 8);
  _Block_object_dispose(buf, 8);
LABEL_29:

LABEL_12:
  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v179 = *MEMORY[0x277D85DE8];
  v4 = a2;
  ++*(*(*(a1 + 104) + 8) + 24);
  if ([v4 hasFactor] && (objc_msgSend(v4, "factor"), v5 = objc_claimAutoreleasedReturnValue(), v6 = objc_msgSend(v5, "hasName"), v5, (v6 & 1) != 0))
  {
    if ([v4 hasLevel])
    {
      v7 = *(a1 + 40);
      v8 = [v4 factor];
      v9 = [v8 name];
      v10 = [v7 objectForKeyedSubscript:v9];
      v11 = v10;
      if (v10)
      {
        v12 = v10;
      }

      else
      {
        v15 = [v4 factor];
        v12 = [v15 name];
      }

      v128 = v12;
      v16 = [*(a1 + 48) createString:v12];
      v17 = [v4 factor];
      [v17 setName:v12];

      v18 = *(a1 + 48);
      v19 = [v4 factor];
      v20 = [v19 id_p];
      v21 = [v18 createString:v20];

      v22 = objc_alloc(MEMORY[0x277CBEB18]);
      v23 = [v4 level];
      v24 = [v22 initWithCapacity:{objc_msgSend(v23, "metadata_Count")}];

      v25 = [v4 level];
      v26 = [v25 metadata];
      v170[0] = MEMORY[0x277D85DD0];
      v170[1] = 3221225472;
      v170[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_399;
      v170[3] = &unk_279DE2C28;
      v171 = *(a1 + 48);
      v172 = v24;
      v27 = v24;
      [v26 enumerateKeysAndObjectsUsingBlock:v170];

      v28 = [*(a1 + 48) trifbCreateSortedVectorOfFactorMetadataKeyValueWithOffsets:v27];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v178 = 0;
      v163[0] = MEMORY[0x277D85DD0];
      v163[1] = 3221225472;
      v163[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_3;
      v163[3] = &unk_279DE2D78;
      v126 = v21;
      v164 = v126;
      v125 = v16;
      v165 = v125;
      v29 = v4;
      v166 = v29;
      v30 = v28;
      v31 = *(a1 + 120);
      v127 = v30;
      v167 = v30;
      v168 = v31;
      v169 = buf;
      v32 = MEMORY[0x2743948D0](v163);
      v33 = [v29 level];
      v34 = [v33 levelOneOfCase];

      if (v34 <= 14)
      {
        switch(v34)
        {
          case 10:
            v91 = objc_alloc(MEMORY[0x277D736D8]);
            v92 = [v29 level];
            v37 = [v91 initWithVal:{objc_msgSend(v92, "BOOLeanValue")}];

            v93 = [*(a1 + 48) trifbCreateBoxedBoolFromBoxedBool:v37];
            v94 = *(a1 + 48);
            v160[0] = MEMORY[0x277D85DD0];
            v160[1] = 3221225472;
            v160[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_4;
            v160[3] = &unk_279DE2C78;
            v40 = v93;
            v161 = v40;
            v162 = v32;
            v95 = [v94 trifbCreateFactorLevelUsingBlock:v160];
            [*(a1 + 56) addObject:v95];

            goto LABEL_41;
          case 11:
            v96 = *(a1 + 48);
            v97 = [v29 level];
            v98 = [v97 stringValue];
            v99 = [v96 createString:v98];

            v100 = *(a1 + 48);
            v157[0] = MEMORY[0x277D85DD0];
            v157[1] = 3221225472;
            v157[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_5;
            v157[3] = &unk_279DE2C78;
            v37 = v99;
            v158 = v37;
            v159 = v32;
            v101 = [v100 trifbCreateFactorLevelUsingBlock:v157];
            [*(a1 + 56) addObject:v101];

            v40 = v158;
            goto LABEL_41;
          case 13:
            v35 = objc_alloc(MEMORY[0x277D736E8]);
            v36 = [v29 level];
            v37 = [v35 initWithVal:{objc_msgSend(v36, "longValue")}];

            v38 = [*(a1 + 48) trifbCreateBoxedInt64FromBoxedInt64:v37];
            v39 = *(a1 + 48);
            v154[0] = MEMORY[0x277D85DD0];
            v154[1] = 3221225472;
            v154[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_6;
            v154[3] = &unk_279DE2C78;
            v40 = v38;
            v155 = v40;
            v156 = v32;
            v41 = [v39 trifbCreateFactorLevelUsingBlock:v154];
            [*(a1 + 56) addObject:v41];

LABEL_41:
            break;
        }

LABEL_42:
        if (*(*&buf[8] + 24))
        {
LABEL_47:

          _Block_object_dispose(buf, 8);
          goto LABEL_9;
        }

        v107 = TRILogCategory_Server();
        if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
        {
          v112 = [v29 factor];
          v113 = [v112 name];
          v114 = [v29 level];
          v115 = [v114 levelOneOfCase];
          *v173 = 138543618;
          v174 = v113;
          v175 = 1024;
          LODWORD(v176) = v115;
          _os_log_error_impl(&dword_26F567000, v107, OS_LOG_TYPE_ERROR, "Factor %{public}@ has unsupported factor level with type %d.", v173, 0x12u);
        }

LABEL_46:
        *(*(*(a1 + 112) + 8) + 24) = 1;
        *a3 = 1;
        goto LABEL_47;
      }

      if ((v34 - 100) >= 2)
      {
        if (v34 == 15)
        {
          v102 = objc_alloc(MEMORY[0x277D736E0]);
          v103 = [v29 level];
          [v103 doubleValue];
          v37 = [v102 initWithVal:?];

          v104 = [*(a1 + 48) trifbCreateBoxedDoubleFromBoxedDouble:v37];
          v105 = *(a1 + 48);
          v151[0] = MEMORY[0x277D85DD0];
          v151[1] = 3221225472;
          v151[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_7;
          v151[3] = &unk_279DE2C78;
          v40 = v104;
          v152 = v40;
          v153 = v32;
          v106 = [v105 trifbCreateFactorLevelUsingBlock:v151];
          [*(a1 + 56) addObject:v106];

          goto LABEL_41;
        }

        if (v34 == 104)
        {
          if ([*(a1 + 64) containsObject:v128] && (objc_msgSend(*(a1 + 72), "_linkAssetsUpdatingFactorLevel:fromFactorPackWithId:usingAssetStore:currentFactorPackPath:futureFactorPackPath:", v29, *(a1 + 32), *(a1 + 80), *(a1 + 88), *(a1 + 96)) & 1) == 0)
          {
            goto LABEL_46;
          }

          v42 = [v29 level];
          v43 = [v42 mobileAssetReferenceValue];

          if (![v43 hasAssetType] || !objc_msgSend(v43, "hasAssetSpecifier") || (objc_msgSend(v43, "hasAssetVersion") & 1) == 0)
          {
            v108 = TRILogCategory_Server();
            if (os_log_type_enabled(v108, OS_LOG_TYPE_ERROR))
            {
              v116 = [v29 factor];
              v117 = [v116 name];
              v118 = *(a1 + 32);
              *v173 = 138543618;
              v174 = v117;
              v175 = 2114;
              v176 = v118;
              _os_log_error_impl(&dword_26F567000, v108, OS_LOG_TYPE_ERROR, "Factor %{public}@ has missing MAAutoAsset metadata in factor pack %{public}@.", v173, 0x16u);
            }

            *(*(*(a1 + 112) + 8) + 24) = 1;
            *a3 = 1;

            goto LABEL_47;
          }

          v44 = *(a1 + 48);
          v45 = [v43 assetType];
          v46 = [v44 createString:v45];

          v47 = *(a1 + 48);
          v48 = [v43 assetSpecifier];
          v49 = [v47 createString:v48];

          v50 = *(a1 + 48);
          v51 = [v43 assetVersion];
          v52 = [v50 createString:v51];

          v53 = *(a1 + 48);
          v133[0] = MEMORY[0x277D85DD0];
          v133[1] = 3221225472;
          v133[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_411;
          v133[3] = &unk_279DE2CF0;
          v40 = v46;
          v134 = v40;
          v54 = v49;
          v135 = v54;
          v55 = v52;
          v136 = v55;
          v37 = v43;
          v137 = v37;
          v56 = [v53 trifbCreateMobileAssetReferenceUsingBlock:v133];
          v57 = *(a1 + 48);
          v130[0] = MEMORY[0x277D85DD0];
          v130[1] = 3221225472;
          v130[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_2_413;
          v130[3] = &unk_279DE2C78;
          v58 = v56;
          v131 = v58;
          v132 = v32;
          v59 = [v57 trifbCreateFactorLevelUsingBlock:v130];
          [*(a1 + 56) addObject:v59];

          goto LABEL_41;
        }

        goto LABEL_42;
      }

      v61 = [v29 level];
      v62 = [v61 fileOrDirectoryLevelWithIsDir:0];

      v63 = [v62 hasAsset];
      v64 = v128;
      if (v63)
      {
        v65 = [v62 asset];
        if (([v65 hasCloudKitContainer] & 1) == 0)
        {
          v66 = [v62 isOnDemand];

          v64 = v128;
          if (!v66)
          {
            goto LABEL_35;
          }

          v67 = TRILogCategory_Server();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_DEBUG))
          {
            v119 = [v29 factor];
            v120 = [v119 name];
            *v173 = 138543362;
            v174 = v120;
            _os_log_debug_impl(&dword_26F567000, v67, OS_LOG_TYPE_DEBUG, "Populating system default cloudKitContainer on asset for %{public}@", v173, 0xCu);
          }

          v65 = [v62 asset];
          [v65 setCloudKitContainer:1];
        }

        v64 = v128;
      }

LABEL_35:
      if ([*(a1 + 64) containsObject:v64] && (objc_msgSend(*(a1 + 72), "_linkAssetsUpdatingFactorLevel:fromFactorPackWithId:usingAssetStore:currentFactorPackPath:futureFactorPackPath:", v29, *(a1 + 32), *(a1 + 80), *(a1 + 88), *(a1 + 96)) & 1) == 0)
      {
        *(*(*(a1 + 112) + 8) + 24) = 1;
        *a3 = 1;

        goto LABEL_47;
      }

      v68 = *(a1 + 48);
      v69 = [v62 path];
      v123 = [v68 createString:v69];

      v70 = *(a1 + 48);
      v71 = [v62 asset];
      v72 = [v71 assetId];
      v122 = [v70 createString:v72];

      v73 = *(a1 + 48);
      v74 = [v62 asset];
      v75 = [v74 treatmentId];
      v76 = [v73 createString:v75];

      v77 = *(a1 + 48);
      v78 = [v62 asset];
      v79 = [v78 name];
      v80 = [v77 createString:v79];

      v81 = *(a1 + 48);
      v148[0] = MEMORY[0x277D85DD0];
      v148[1] = 3221225472;
      v148[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_406;
      v148[3] = &unk_279DE2CA0;
      v82 = v62;
      v149 = v82;
      v121 = v76;
      v150 = v121;
      v83 = [v81 trifbCreateCloudKitTreatmentRecordAssetUsingBlock:v148];
      v84 = *(a1 + 48);
      v141[0] = MEMORY[0x277D85DD0];
      v141[1] = 3221225472;
      v141[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_2_408;
      v141[3] = &unk_279DE2CC8;
      v37 = v82;
      v142 = v37;
      v40 = v123;
      v143 = v40;
      v144 = v29;
      v124 = v122;
      v145 = v124;
      v85 = v83;
      v146 = v85;
      v86 = v80;
      v147 = v86;
      v87 = [v84 trifbCreateTrialManagedAssetUsingBlock:v141];
      v88 = *(a1 + 48);
      v138[0] = MEMORY[0x277D85DD0];
      v138[1] = 3221225472;
      v138[2] = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_3_410;
      v138[3] = &unk_279DE2C78;
      v89 = v87;
      v139 = v89;
      v140 = v32;
      v90 = [v88 trifbCreateFactorLevelUsingBlock:v138];
      [*(a1 + 56) addObject:v90];

      goto LABEL_41;
    }

    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v109 = [v4 factor];
      v110 = [v109 name];
      v111 = *(a1 + 32);
      *buf = 138543618;
      *&buf[4] = v110;
      *&buf[12] = 2114;
      *&buf[14] = v111;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Factor %{public}@ has missing level in factor pack %{public}@.", buf, 0x16u);
    }
  }

  else
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v60 = *(a1 + 32);
      *buf = 138543362;
      *&buf[4] = v60;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Factor level has missing factor name in factor pack %{public}@.", buf, 0xCu);
    }
  }

  *(*(*(a1 + 112) + 8) + 24) = 1;
  *a3 = 1;
LABEL_9:

  v14 = *MEMORY[0x277D85DE8];
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_399(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 createString:a2];
  v8 = [*(a1 + 32) createString:v6];

  v9 = *(a1 + 32);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_2;
  v16 = &unk_279DE2C00;
  v17 = v7;
  v18 = v8;
  v10 = v8;
  v11 = v7;
  v12 = [v9 trifbCreateFactorMetadataKeyValueUsingBlock:&v13];
  [*(a1 + 40) addObject:{v12, v13, v14, v15, v16}];
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setKey:v3];
  [v4 setVal:*(a1 + 40)];
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 setFactorId:*(a1 + 32)];
  [v6 setName:*(a1 + 40)];
  if (populateNamespaceIdInSchema == 1)
  {
    v3 = [*(a1 + 48) factor];
    v4 = [v3 hasNamespaceId];

    if (v4)
    {
      v5 = [*(a1 + 48) factor];
      [v6 setNamespaceId:{objc_msgSend(v5, "namespaceId")}];
    }
  }

  [v6 setMetadata:*(a1 + 56)];
  ++*(*(*(a1 + 64) + 8) + 24);
  [v6 setCacheKey:?];
  *(*(*(a1 + 72) + 8) + 24) = 1;
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithBoolVal:v3];
  (*(*(a1 + 40) + 16))();
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithStringVal:v3];
  (*(*(a1 + 40) + 16))();
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithInt64Val:v3];
  (*(*(a1 + 40) + 16))();
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithDoubleVal:v3];
  (*(*(a1 + 40) + 16))();
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_406(uint64_t a1, void *a2)
{
  v11 = a2;
  v3 = [*(a1 + 32) asset];
  v4 = [v3 cloudKitContainer];

  if (v4 == 1)
  {
    v5 = 1;
  }

  else
  {
    v6 = [*(a1 + 32) asset];
    v7 = [v6 cloudKitContainer];

    if (v7 != 2)
    {
      goto LABEL_6;
    }

    v5 = 2;
  }

  [v11 setContainer:v5];
LABEL_6:
  [v11 setTreatmentId:*(a1 + 40)];
  v8 = [*(a1 + 32) asset];
  v9 = [v8 hasCloudKitIndex];

  if (v9)
  {
    v10 = [*(a1 + 32) asset];
    [v11 setAssetIndex:{objc_msgSend(v10, "cloudKitIndex")}];

    [v11 setHasCkIndex:1];
  }
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_2_408(uint64_t a1, void *a2)
{
  v10 = a2;
  if ([*(a1 + 32) hasPath])
  {
    [v10 setPath:*(a1 + 40)];
  }

  v3 = [*(a1 + 48) level];
  v4 = [v3 levelOneOfCase] != 101;

  [v10 setFileType:v4];
  [v10 setAssetId:*(a1 + 56)];
  if ([*(a1 + 32) hasAsset])
  {
    [v10 setCloudKitMetadataWithTreatment:*(a1 + 64)];
  }

  if ([*(a1 + 32) hasIsOnDemand])
  {
    [v10 setIsOnDemand:{objc_msgSend(*(a1 + 32), "isOnDemand")}];
    [v10 setHasOnDemandFlag:1];
  }

  v5 = [*(a1 + 32) asset];
  v6 = [v5 hasSize];

  if (v6)
  {
    v7 = [*(a1 + 32) asset];
    [v10 setDownloadSize:{objc_msgSend(v7, "size")}];
  }

  v8 = [*(a1 + 32) asset];
  v9 = [v8 hasName];

  if (v9)
  {
    [v10 setAssetName:*(a1 + 72)];
  }
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_3_410(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithTrialAssetVal:v3];
  (*(*(a1 + 40) + 16))();
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_411(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setType:*(a1 + 32)];
  [v3 setSpecifier:*(a1 + 40)];
  [v3 setVersion:*(a1 + 48)];
  [v3 setFileType:{objc_msgSend(*(a1 + 56), "isFileFactor")}];
  [v3 setIsOnDemand:{objc_msgSend(*(a1 + 56), "isOnDemand")}];
  if ([*(a1 + 56) hasSize])
  {
    [v3 setDownloadSize:{objc_msgSend(*(a1 + 56), "size")}];
  }
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_2_413(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithMaRefVal:v3];
  (*(*(a1 + 40) + 16))();
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_421(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  v6 = [*(a1 + 32) selectedNamespace];
  v5 = [v6 compatibilityVersionArray];
  *a3 = [v5 valueAtIndex:a2];
}

void __109__TRIFBFactorPackStorage__writeFactorPack_futurePath_forFactorNames_aliasToUnaliasMap_assetStore_tempDirRef___block_invoke_2_423(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setLevels:v3];
  [v4 setSourceWithFactorPackId:a1[5]];
  [v4 setNamespaceName:a1[6]];
  [v4 setNcvs:a1[7]];
}

- (id)loadFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name
{
  v5 = [(TRIFBFactorPackStorage *)self pathForFactorLevelsWithFactorPackId:id namespaceName:name];
  if (v5)
  {
    v6 = [(TRIFBFactorPackStorage *)self loadFactorLevelsWithDir:v5 bufferSize:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)loadFactorLevelsWithDir:(id)dir bufferSize:(unint64_t *)size
{
  v21 = *MEMORY[0x277D85DE8];
  dirCopy = dir;
  v6 = objc_autoreleasePoolPush();
  v16 = 0;
  v7 = [dirCopy stringByAppendingPathComponent:@"factorPack.fb"];
  v8 = [MEMORY[0x277CBEA90] triVerifiedMappedDataWithFile:v7 error:&v16];
  v9 = v8;
  if (v8)
  {
    if (size)
    {
      *size = [v8 length];
    }

    v10 = [objc_alloc(MEMORY[0x277D736F8]) initVerifiedRootObjectFromData:v9];
    if (v10)
    {
      v11 = v10;
      v12 = v11;
      goto LABEL_12;
    }

    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v18 = v7;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Failed to verify content of factor levels: %{public}@", buf, 0xCu);
    }

    v11 = 0;
  }

  else
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v18 = dirCopy;
      v19 = 2114;
      v20 = v16;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Failed to load factor levels from factor pack directory at %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v12 = 0;
LABEL_12:

  objc_autoreleasePoolPop(v6);
  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)updateSavedFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name populatingAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map
{
  v44 = *MEMORY[0x277D85DE8];
  idCopy = id;
  nameCopy = name;
  namesCopy = names;
  mapCopy = map;
  v14 = objc_autoreleasePoolPush();
  if ([namesCopy count])
  {
    v15 = [(TRIFBFactorPackStorage *)self pathForFactorLevelsWithFactorPackId:idCopy namespaceName:nameCopy];
    v16 = [(TRIFBFactorPackStorage *)self legacyPathForFactorLevelsWithFactorPackId:idCopy namespaceName:nameCopy];
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
          v20 = [(TRIFBFactorPackStorage *)self _linkAssetsForFactorNames:namesCopy aliasToUnaliasMap:mapCopy copyingModifiedFactorLevelsWithPath:v15 tempDirRef:v19];
          if (v16)
          {
LABEL_8:
            v21 = [(TRIFBFactorPackStorage *)self _linkAssetsForFactorNames:namesCopy aliasToUnaliasMap:mapCopy copyingModifiedFactorLevelsWithPath:v16 tempDirRef:v19];
            goto LABEL_15;
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
LABEL_15:
        v22 = (v20 | v21) != 0;
        v38 = v14;
        v39 = v21;
        if (v20 | v21)
        {
          v37 = v20;
          if (v20)
          {
            v34 = MEMORY[0x277CCAA00];
            v23 = [v15 stringByAppendingPathComponent:@"factorPack.fb"];
            LODWORD(v20) = [v34 triRenameOrFaultWithSourcePath:v20 destPath:v23];

            v21 = v39;
          }

          if (v21)
          {
            v24 = v21;
            v33 = MEMORY[0x277CCAA00];
            [v16 stringByAppendingPathComponent:@"factorPack.fb"];
            v20 = v35 = v20;
            LODWORD(v24) = [v33 triRenameOrFaultWithSourcePath:v24 destPath:v20];

            LODWORD(v20) = v35;
            v25 = v24;
          }

          else
          {
            v25 = 0;
          }

          v26 = v37;
          if (((v20 | v25) & 1) == 0)
          {
            v22 = 0;
            goto LABEL_38;
          }

          if (v20)
          {
            v36 = v25;
            v28 = TRILogCategory_Server();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *v41 = idCopy;
              *&v41[8] = 2114;
              *&v41[10] = v15;
              _os_log_impl(&dword_26F567000, v28, OS_LOG_TYPE_DEFAULT, "Updated factor pack %{public}@ --> %{public}@", buf, 0x16u);
            }

            v25 = v36;
          }

          if (v25)
          {
            v29 = TRILogCategory_Server();
            if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543618;
              *v41 = idCopy;
              *&v41[8] = 2114;
              *&v41[10] = v16;
              _os_log_impl(&dword_26F567000, v29, OS_LOG_TYPE_DEFAULT, "Updated factor pack %{public}@ --> %{public}@", buf, 0x16u);
            }
          }

          v30 = TRILogCategory_Server();
          if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *v41 = idCopy;
            *&v41[8] = 2114;
            *&v41[10] = v15;
            _os_log_impl(&dword_26F567000, v30, OS_LOG_TYPE_DEFAULT, "Updated factor pack %{public}@ --> %{public}@", buf, 0x16u);
          }

          v27 = TRILogCategory_Server();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138543618;
            *v41 = idCopy;
            *&v41[8] = 2114;
            *&v41[10] = v16;
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
            *v41 = 1;
            *&v41[4] = 2114;
            *&v41[6] = v15;
            *&v41[14] = 1024;
            *&v41[16] = 1;
            v42 = 2114;
            v43 = v16;
            _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "updateSavedFactorLevelsWithFactorPackId failed to link temp based factor pack for: name based directory (%d): %{public}@ OR identifier based directory (%d): %{public}@.", buf, 0x22u);
          }
        }

LABEL_38:
        v14 = v38;
        goto LABEL_39;
      }
    }

    else
    {
      v19 = TRILogCategory_Server();
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        *v41 = idCopy;
        _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "updateSavedFactorLevelsWithFactorPackId failed because preexisting factor pack %{public}@ is not present on disk.", buf, 0xCu);
      }
    }

    v22 = 0;
LABEL_39:

    goto LABEL_40;
  }

  v22 = 1;
LABEL_40:
  objc_autoreleasePoolPop(v14);

  v31 = *MEMORY[0x277D85DE8];
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
    v13 = [(TRIFBFactorPackStorage *)self _linkAssetsForFactorNames:namesCopy aliasToUnaliasMap:MEMORY[0x277CBEC10] copyingModifiedFactorLevelsWithPath:atCopy tempDirRef:v12];
    if (v13)
    {
      v14 = MEMORY[0x277CCAA00];
      v15 = [atCopy stringByAppendingPathComponent:@"factorPack.fb"];
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
  v69 = *MEMORY[0x277D85DE8];
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
      v64 = idCopy;
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

    factor2 = [levelCopy factor];
    name = [factor2 name];
    *buf = 138543618;
    v64 = idCopy;
    v65 = 2114;
    v66 = name;
    _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has factor %{public}@ with missing level.", buf, 0x16u);
    goto LABEL_29;
  }

  level = [levelCopy level];
  v21 = [level fileOrDirectoryLevelWithIsDir:0];

  if (!v21)
  {
    level2 = [levelCopy level];
    levelOneOfCase = [level2 levelOneOfCase];

    if (levelOneOfCase != 104)
    {
      goto LABEL_43;
    }

    factor3 = [levelCopy factor];
    namespaceString = [factor3 namespaceString];

    if (namespaceString)
    {
      level3 = [levelCopy level];
      mobileAssetReferenceValue = [level3 mobileAssetReferenceValue];

      if ([mobileAssetReferenceValue hasAssetType] && objc_msgSend(mobileAssetReferenceValue, "hasAssetSpecifier") && (objc_msgSend(mobileAssetReferenceValue, "hasAssetVersion") & 1) != 0)
      {
        v55 = objc_alloc(MEMORY[0x277D73740]);
        assetType = [mobileAssetReferenceValue assetType];
        assetSpecifier = [mobileAssetReferenceValue assetSpecifier];
        assetVersion = [mobileAssetReferenceValue assetVersion];
        v56 = [v55 initWithType:assetType specifier:assetSpecifier version:?];

        factor4 = [levelCopy factor];
        name2 = [factor4 name];
        if ([mobileAssetReferenceValue hasIsFileFactor])
        {
          isFileFactor = [mobileAssetReferenceValue isFileFactor];
        }

        else
        {
          isFileFactor = 0;
        }

        v54 = [(TRIFBFactorPackStorage *)self _referenceMAAssetWithId:v56 assetStore:storeCopy forFactorName:name2 isFileFactor:isFileFactor currentFactorPackPath:pathCopy futureFactorPackPath:packPathCopy];

        if (v54)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v47 = TRILogCategory_Server();
        if (os_log_type_enabled(v47, OS_LOG_TYPE_ERROR))
        {
          name3 = [factor name];
          *buf = 138543618;
          v64 = idCopy;
          v65 = 2114;
          v66 = name3;
          _os_log_error_impl(&dword_26F567000, v47, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has factor %{public}@ with incomplete MobileAssetReference.", buf, 0x16u);
        }
      }
    }

    else
    {
      v48 = TRILogCategory_Server();
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        name4 = [factor name];
        *buf = 138543618;
        v64 = idCopy;
        v65 = 2114;
        v66 = name4;
        _os_log_error_impl(&dword_26F567000, v48, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has factor %{public}@ with missing namespaceString.", buf, 0x16u);
      }
    }

    v21 = 0;
    goto LABEL_13;
  }

  factor5 = [levelCopy factor];
  namespaceString2 = [factor5 namespaceString];

  if (!namespaceString2)
  {
    factor2 = TRILogCategory_Server();
    if (os_log_type_enabled(factor2, OS_LOG_TYPE_ERROR))
    {
      name = [levelCopy factor];
      v35Name = [name name];
      *buf = 138543618;
      v64 = idCopy;
      v65 = 2114;
      v66 = v35Name;
      v46 = "Factor pack %{public}@ has factor %{public}@ with missing namespaceString.";
      goto LABEL_28;
    }

LABEL_39:

    goto LABEL_13;
  }

  if (!-[NSObject hasAsset](v21, "hasAsset") || (-[NSObject asset](v21, "asset"), v24 = objc_claimAutoreleasedReturnValue(), v25 = [v24 hasAssetId], v24, (v25 & 1) == 0))
  {
    factor2 = TRILogCategory_Server();
    if (os_log_type_enabled(factor2, OS_LOG_TYPE_ERROR))
    {
      name = [levelCopy factor];
      v35Name = [name name];
      *buf = 138543618;
      v64 = idCopy;
      v65 = 2114;
      v66 = v35Name;
      v46 = "Factor pack %{public}@ has factor %{public}@ with missing assetId.";
LABEL_28:
      _os_log_error_impl(&dword_26F567000, factor2, OS_LOG_TYPE_ERROR, v46, buf, 0x16u);

LABEL_29:
      goto LABEL_39;
    }

    goto LABEL_39;
  }

  asset = [v21 asset];
  assetId = [asset assetId];
  v27 = TRIValidateAssetId();

  v59 = v27;
  if (!v27)
  {
    factor2 = TRILogCategory_Server();
    if (os_log_type_enabled(factor2, OS_LOG_TYPE_ERROR))
    {
      asset2 = [v21 asset];
      assetId2 = [asset2 assetId];
      factor6 = [levelCopy factor];
      name5 = [factor6 name];
      *buf = 138543874;
      v64 = idCopy;
      v65 = 2114;
      v66 = assetId2;
      v67 = 2114;
      v68 = name5;
      _os_log_error_impl(&dword_26F567000, factor2, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ has unsuitable asset id %{public}@ for factor %{public}@.", buf, 0x20u);
    }

    goto LABEL_39;
  }

  factor7 = [levelCopy factor];
  name6 = [factor7 name];
  v30 = [(TRIFBFactorPackStorage *)self _linkAssetWithId:v59 assetStore:storeCopy forFactorName:name6 currentFactorPackPath:pathCopy futureFactorPackPath:packPathCopy];

  if (v30)
  {
    v31 = [packPathCopy stringByAppendingPathComponent:v30];
    [v21 setPath:v31];

LABEL_43:
    LOBYTE(v30) = 1;
    goto LABEL_14;
  }

LABEL_14:
  v32 = *MEMORY[0x277D85DE8];
  return v30;
}

- (id)_linkAssetsForFactorNames:(id)names aliasToUnaliasMap:(id)map copyingModifiedFactorLevelsWithPath:(id)path tempDirRef:(id)ref
{
  v66 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  mapCopy = map;
  pathCopy = path;
  refCopy = ref;
  v60 = 0;
  v13 = [(TRIFBFactorPackStorage *)self loadFactorLevelsWithDir:pathCopy bufferSize:&v60];
  if (v13)
  {
    path = [refCopy path];
    v15 = objc_alloc(MEMORY[0x277CCACA8]);
    v16 = objc_opt_new();
    uUIDString = [v16 UUIDString];
    v18 = [v15 initWithFormat:@"fl-update-%@.fb", uUIDString];
    v47 = [path stringByAppendingPathComponent:v18];

    v19 = [TRIAssetStore alloc];
    paths = self->_paths;
    extractor = self->_extractor;
    v22 = [[TRIRemoteAssetPatcher alloc] initWithMonitoredActivity:0];
    v46 = [(TRIAssetStore *)v19 initWithPaths:paths extractor:extractor patcher:v22];

    v23 = objc_alloc(MEMORY[0x277CED180]);
    v24 = *MEMORY[0x277CCA1B8];
    v59 = 0;
    v25 = [v23 initWithFileAtPath:v47 protection:v24 capacity:(3 * v60) >> 1 error:&v59];
    v45 = v59;
    if (v25)
    {
      v26 = objc_alloc(MEMORY[0x277CBEB18]);
      levels = [v13 levels];
      v28 = [v26 initWithCapacity:{objc_msgSend(levels, "count")}];

      *&buf = 0;
      *(&buf + 1) = &buf;
      v64 = 0x2020000000;
      v65 = 0;
      levels2 = [v13 levels];
      v50[0] = MEMORY[0x277D85DD0];
      v50[1] = 3221225472;
      v50[2] = __117__TRIFBFactorPackStorage__linkAssetsForFactorNames_aliasToUnaliasMap_copyingModifiedFactorLevelsWithPath_tempDirRef___block_invoke;
      v50[3] = &unk_279DE2E18;
      v51 = mapCopy;
      p_buf = &buf;
      v52 = namesCopy;
      selfCopy = self;
      v54 = v46;
      v55 = pathCopy;
      v30 = v25;
      v56 = v30;
      v31 = v28;
      v57 = v31;
      [levels2 enumerateObjectsUsingBlock:v50];

      if (*(*(&buf + 1) + 24))
      {
        v32 = 0;
      }

      else
      {
        v33 = [v31 count];
        levels3 = [v13 levels];
        LOBYTE(v33) = v33 == [levels3 count];

        if ((v33 & 1) == 0)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFactorPackStorage.m" lineNumber:1061 description:@"dropped factor level during update operation"];
        }

        v35 = [v30 trifbCreateSortedVectorOfFactorLevelWithOffsets:v31];
        v36 = objc_opt_new();
        [v36 replaceLevels:v35];
        v37 = [v13 deepCopyUsingBufferBuilder:v30 changes:v36];

        v49 = 0;
        v38 = [v30 trifbFinishBufferWithRootFastFactorLevelsOfs:v37 error:&v49];
        v39 = v49;
        if (v38)
        {
          v32 = v47;
        }

        else
        {
          v40 = TRILogCategory_Server();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
          {
            *v61 = 138543362;
            v62 = v39;
            _os_log_error_impl(&dword_26F567000, v40, OS_LOG_TYPE_ERROR, "Failed to write updated factor levels: %{public}@", v61, 0xCu);
          }

          v32 = 0;
        }
      }

      _Block_object_dispose(&buf, 8);
    }

    else
    {
      v31 = TRILogCategory_Server();
      if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
      {
        LODWORD(buf) = 138543362;
        *(&buf + 4) = v45;
        _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "Failed to instantiate buffer builder: %{public}@", &buf, 0xCu);
      }

      v32 = 0;
    }
  }

  else
  {
    v32 = 0;
  }

  v41 = *MEMORY[0x277D85DE8];

  return v32;
}

void __117__TRIFBFactorPackStorage__linkAssetsForFactorNames_aliasToUnaliasMap_copyingModifiedFactorLevelsWithPath_tempDirRef___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v39 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v7 = *(a1 + 32);
  v8 = [v6 name];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = [v6 name];
  }

  v12 = v11;

  if (![*(a1 + 40) containsObject:v12])
  {
    goto LABEL_19;
  }

  v13 = [v6 levelType];
  if (v13 == 6)
  {
    v14 = [v6 levelAsMaRefVal];
    v29 = objc_alloc(MEMORY[0x277D73740]);
    v30 = [v14 type];
    v31 = [v14 specifier];
    v32 = [v14 version];
    v17 = [v29 initWithType:v30 specifier:v31 version:v32];

    v33 = *(a1 + 48);
    v34 = *(a1 + 56);
    v35 = [v6 name];
    LOBYTE(v33) = [v33 _referenceMAAssetWithId:v17 assetStore:v34 forFactorName:v35 isFileFactor:objc_msgSend(v14 currentFactorPackPath:"hasFileType") futureFactorPackPath:{*(a1 + 64), *(a1 + 64)}];

    if ((v33 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_18:
    goto LABEL_19;
  }

  if (v13 == 5)
  {
    v14 = [v6 levelAsTrialAssetVal];
    v15 = [v14 path];

    if (!v15)
    {
      v16 = [v14 assetId];
      v17 = TRIValidateAssetId();

      if (!v17)
      {
        *(*(*(a1 + 88) + 8) + 24) = 1;
        *a4 = 1;
        goto LABEL_23;
      }

      v18 = *(a1 + 48);
      v19 = *(a1 + 56);
      v20 = [v6 name];
      v21 = [v18 _linkAssetWithId:v17 assetStore:v19 forFactorName:v20 currentFactorPackPath:*(a1 + 64) futureFactorPackPath:*(a1 + 64)];

      if (v21)
      {
        v22 = [*(a1 + 64) stringByAppendingPathComponent:v21];
        if (![TRIReferenceManagedDir saveFromGarbageCollectionItemWithPath:v22])
        {
          v23 = TRILogCategory_Server();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v37 = 138543362;
            v38 = v22;
            _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "Unable to prevent newly linked asset at path %{public}@ from being garbage collected in the future", &v37, 0xCu);
          }
        }

        v24 = [*(a1 + 72) createString:v22];
        v25 = objc_opt_new();
        [v25 replacePath:v24];
        v26 = [v14 deepCopyUsingBufferBuilder:*(a1 + 72) changes:v25];

        v27 = objc_opt_new();
        [v27 replaceLevelWithTrialAssetVal:v26];
        v28 = [v6 deepCopyUsingBufferBuilder:*(a1 + 72) changes:v27];

        if (v28)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

LABEL_22:
      *(*(*(a1 + 88) + 8) + 24) = 1;
      *a4 = 1;

LABEL_23:
      goto LABEL_21;
    }

    goto LABEL_18;
  }

LABEL_19:
  v28 = [v6 deepCopyUsingBufferBuilder:*(a1 + 72)];
LABEL_20:
  [*(a1 + 80) addObject:v28];

LABEL_21:
  v36 = *MEMORY[0x277D85DE8];
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

void __129__TRIFBFactorPackStorage_updateSavedFactorLevelsWithFactorPackId_namespaceName_deletingAssetsWithFactorNames_inUseAssetBehavior___block_invoke(uint64_t a1, uint64_t a2, void *a3)
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
    v14 = [(TRIFBFactorPackStorage *)self _removeAssetsWithFactorNames:namesCopy copyingModifiedFactorLevelsWithPath:atCopy appendingToPathsToRemove:v13 appendingToMARefsToRemove:0 tempDirRef:v12];
    v15 = MEMORY[0x277CCAA00];
    v16 = [atCopy stringByAppendingPathComponent:@"factorPack.fb"];
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

- (id)_removeAssetsWithFactorNames:(id)names copyingModifiedFactorLevelsWithPath:(id)path appendingToPathsToRemove:(id)remove appendingToMARefsToRemove:(id)toRemove tempDirRef:(id)ref
{
  v69 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  pathCopy = path;
  removeCopy = remove;
  toRemoveCopy = toRemove;
  refCopy = ref;
  v66 = 0;
  v18 = [(TRIFBFactorPackStorage *)self loadFactorLevelsWithDir:pathCopy bufferSize:&v66];
  if (v18)
  {
    v49 = a2;
    v55 = toRemoveCopy;
    v53 = refCopy;
    path = [refCopy path];
    v20 = objc_alloc(MEMORY[0x277CCACA8]);
    v21 = objc_opt_new();
    uUIDString = [v21 UUIDString];
    v23 = [v20 initWithFormat:@"fl-update-%@.fb", uUIDString];
    v24 = [path stringByAppendingPathComponent:v23];

    v25 = objc_alloc(MEMORY[0x277CED180]);
    v26 = *MEMORY[0x277CCA1B8];
    v65 = 0;
    v54 = v24;
    v27 = [v25 initWithFileAtPath:v24 protection:v26 capacity:(3 * v66) >> 1 error:&v65];
    v28 = v65;
    v52 = v28;
    if (v27)
    {
      v29 = objc_alloc(MEMORY[0x277CBEB18]);
      levels = [v18 levels];
      v31 = [v29 initWithCapacity:{objc_msgSend(levels, "count")}];

      levels2 = [v18 levels];
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = __153__TRIFBFactorPackStorage__removeAssetsWithFactorNames_copyingModifiedFactorLevelsWithPath_appendingToPathsToRemove_appendingToMARefsToRemove_tempDirRef___block_invoke;
      v57[3] = &unk_279DE2E40;
      v51 = namesCopy;
      v58 = namesCopy;
      v50 = removeCopy;
      v59 = removeCopy;
      v33 = v27;
      v60 = v33;
      selfCopy = self;
      v62 = pathCopy;
      v63 = v55;
      v34 = v31;
      v64 = v34;
      [levels2 enumerateObjectsUsingBlock:v57];

      v35 = [v34 count];
      levels3 = [v18 levels];
      v37 = [levels3 count];

      if (v35 != v37)
      {
        currentHandler = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler handleFailureInMethod:v49 object:self file:@"TRIFBFactorPackStorage.m" lineNumber:1378 description:@"dropped factor level during update operation"];
      }

      v38 = [v33 trifbCreateSortedVectorOfFactorLevelWithOffsets:v34];
      v39 = objc_opt_new();
      [v39 replaceLevels:v38];
      v40 = [v18 deepCopyUsingBufferBuilder:v33 changes:v39];

      v56 = 0;
      v41 = [v33 trifbFinishBufferWithRootFastFactorLevelsOfs:v40 error:&v56];
      v42 = v56;
      refCopy = v53;
      if (v41)
      {
        v43 = v54;
        removeCopy = v50;
        namesCopy = v51;
      }

      else
      {
        v45 = TRILogCategory_Server();
        removeCopy = v50;
        namesCopy = v51;
        if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v68 = v42;
          _os_log_error_impl(&dword_26F567000, v45, OS_LOG_TYPE_ERROR, "Failed to write updated factor levels: %{public}@", buf, 0xCu);
        }

        v43 = 0;
      }

      toRemoveCopy = v55;
    }

    else
    {
      v44 = v28;
      v34 = TRILogCategory_Server();
      if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v68 = v44;
        _os_log_error_impl(&dword_26F567000, v34, OS_LOG_TYPE_ERROR, "Failed to instantiate buffer builder: %{public}@", buf, 0xCu);
      }

      v43 = 0;
      toRemoveCopy = v55;
      refCopy = v53;
    }
  }

  else
  {
    v43 = 0;
  }

  v46 = *MEMORY[0x277D85DE8];

  return v43;
}

void __153__TRIFBFactorPackStorage__removeAssetsWithFactorNames_copyingModifiedFactorLevelsWithPath_appendingToPathsToRemove_appendingToMARefsToRemove_tempDirRef___block_invoke(uint64_t a1, void *a2)
{
  v38 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = [v3 name];
  LODWORD(v4) = [v4 containsObject:v5];

  if (!v4)
  {
    goto LABEL_20;
  }

  v6 = [v3 levelType];
  if (v6 == 6)
  {
    v7 = [v3 levelAsMaRefVal];
    if ([v7 isOnDemand])
    {
      v15 = *(a1 + 32);
      v16 = [v3 name];
      LODWORD(v15) = [v15 containsObject:v16];

      if (v15)
      {
        v17 = *(a1 + 56);
        v18 = objc_opt_class();
        v19 = [v3 name];
        v20 = [v18 relPathForMAReferenceWithFactorName:v19];

        v21 = [*(a1 + 64) stringByAppendingPathComponent:v20];
        v22 = [MEMORY[0x277CCAA00] defaultManager];
        v23 = [v22 fileExistsAtPath:v21];

        if (v23)
        {
          [*(a1 + 40) addObject:v21];
          v24 = objc_alloc(MEMORY[0x277D73740]);
          v25 = [v7 type];
          v26 = [v7 specifier];
          v27 = [v7 version];
          v28 = [v24 initWithType:v25 specifier:v26 version:v27];

          v29 = *(a1 + 72);
          if (v29)
          {
            [v29 setObject:v28 forKey:v21];
          }

          v30 = objc_opt_new();
          v35 = 0;
          v31 = [v30 writeToFile:v21 options:0x10000000 error:&v35];
          v32 = v35;

          if ((v31 & 1) == 0)
          {
            v33 = TRILogCategory_Server();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v37 = v21;
              _os_log_error_impl(&dword_26F567000, v33, OS_LOG_TYPE_ERROR, "Unable to nil out MARef by creating a blank file at %{public}@", buf, 0xCu);
            }
          }
        }
      }
    }

    goto LABEL_19;
  }

  if (v6 != 5)
  {
LABEL_20:
    v14 = [v3 deepCopyUsingBufferBuilder:*(a1 + 48)];
    goto LABEL_21;
  }

  v7 = [v3 levelAsTrialAssetVal];
  if (![v7 isOnDemand] || (objc_msgSend(v7, "path"), v8 = objc_claimAutoreleasedReturnValue(), v8, !v8))
  {
LABEL_19:

    goto LABEL_20;
  }

  v9 = *(a1 + 40);
  v10 = [v7 path];
  [v9 addObject:v10];

  v11 = objc_opt_new();
  [v11 omitPath];
  v12 = [v7 deepCopyUsingBufferBuilder:*(a1 + 48) changes:v11];

  v13 = objc_opt_new();
  [v13 replaceLevelWithTrialAssetVal:v12];
  v14 = [v3 deepCopyUsingBufferBuilder:*(a1 + 48) changes:v13];

  if (!v14)
  {
    goto LABEL_20;
  }

LABEL_21:
  [*(a1 + 80) addObject:v14];

  v34 = *MEMORY[0x277D85DE8];
}

- (id)pathForFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [(TRIFBFactorPackStorage *)self _pathForFactorLevelsWithFactorPackId:id namespaceName:name];
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

- (id)_pathForFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name
{
  idCopy = id;
  nameCopy = name;
  v8 = [(TRIFBFactorPackStorage *)self _parentDirForFactorLevelsWithNamespaceName:nameCopy];
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

- (id)_parentDirForFactorLevelsWithNamespaceName:(id)name
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
      v13 = "[TRIFBFactorPackStorage _parentDirForFactorLevelsWithNamespaceName:]";
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "%s has empty path arg: namespaceName", buf, 0xCu);
    }

    v8 = 0;
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)legacyPathForFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name
{
  v4 = [(TRIFBFactorPackStorage *)self _legacyPathForFactorLevelsWithFactorPackId:id namespaceName:name];
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

- (id)_legacyPathForFactorLevelsWithFactorPackId:(id)id namespaceName:(id)name
{
  idCopy = id;
  nameCopy = name;
  v8 = [(TRIFBFactorPackStorage *)self _legacyParentDirForFactorLevelsWithNamespaceName:nameCopy];
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

- (id)_legacyParentDirForFactorLevelsWithNamespaceName:(id)name
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
      v16 = "[TRIFBFactorPackStorage _legacyParentDirForFactorLevelsWithNamespaceName:]";
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "%s has empty path arg: namespaceName", buf, 0xCu);
    }
  }

  v11 = 0;
LABEL_8:

  v13 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BOOL)removeUnreferencedFactorLevelsWithRemovedCount:(unsigned int *)count
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
              v8 &= [(TRIFBFactorPackStorage *)self _removeUnreferencedFactorPackSetsWithNamespaceName:v16 removedCount:&v22];
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
          v8 &= [(TRIFBFactorPackStorage *)self _removeUnreferencedFactorPackSetsWithNamespaceName:lastPathComponent removedCount:&v22];
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
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIFBFactorPackStorage.m" lineNumber:1514 description:{@"Invalid parameter not satisfying: %@", @"removedCount"}];
  }

  if ([nameCopy length])
  {
    v8 = [(TRIFBFactorPackStorage *)self _parentDirForFactorLevelsWithNamespaceName:nameCopy];
    v9 = [(TRIFBFactorPackStorage *)self _legacyParentDirForFactorLevelsWithNamespaceName:nameCopy];
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
            v15 &= [(TRIFBFactorPackStorage *)self _removeUnreferencedFactorPackSetsWithParentDir:v17 removedCount:count];
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
      v31 = "[TRIFBFactorPackStorage _removeUnreferencedFactorPackSetsWithNamespaceName:removedCount:]";
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
      v13[2] = __86__TRIFBFactorPackStorage__removeUnreferencedFactorPackSetsWithParentDir_removedCount___block_invoke;
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

void __86__TRIFBFactorPackStorage__removeUnreferencedFactorPackSetsWithParentDir_removedCount___block_invoke(uint64_t a1, void *a2)
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

- (void)reportFactorPackDiskUsagesUsingContext:(id)context
{
  v26 = *MEMORY[0x277D85DE8];
  contextCopy = context;
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v5 = MEMORY[0x277CBEBC0];
  treatmentsDir = [(TRIPaths *)self->_paths treatmentsDir];
  v7 = [v5 fileURLWithPath:treatmentsDir];
  v8 = [defaultManager enumeratorAtURL:v7 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v9 = objc_opt_new();
  v10 = objc_autoreleasePoolPush();
  nextObject = [v8 nextObject];
  if (nextObject)
  {
    nextObject2 = nextObject;
    *&v12 = 138543362;
    v21 = v12;
    while (1)
    {
      lastPathComponent = [nextObject2 lastPathComponent];
      if (lastPathComponent)
      {
        break;
      }

LABEL_16:

      objc_autoreleasePoolPop(v10);
      v10 = objc_autoreleasePoolPush();
      nextObject2 = [v8 nextObject];
      if (!nextObject2)
      {
        goto LABEL_21;
      }
    }

    v15 = lastPathComponent;
    v23 = -1;
    if ([MEMORY[0x277D73748] convertFromString:lastPathComponent usingBase:10 toI64:&v23])
    {
      if ((v23 - 1) > 0x7FFFFFFE)
      {
        v18 = TRILogCategory_Server();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v25 = v23;
          _os_log_impl(&dword_26F567000, v18, OS_LOG_TYPE_DEFAULT, "Skipping reporting disk usage of factor packs for unrecognized id-based namespace: %lld", buf, 0xCu);
        }

        goto LABEL_14;
      }

      v16 = TRINamespace_NamespaceId_EnumDescriptor();
      v17 = [v16 textFormatNameForValue:v23];

      if (!v17)
      {
        v18 = TRILogCategory_Server();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 134217984;
          v25 = v23;
          _os_log_impl(&dword_26F567000, v18, OS_LOG_TYPE_DEFAULT, "Skipping reporting disk usage of factor packs for unrecognized id-based namespace: %lld", buf, 0xCu);
        }

        goto LABEL_14;
      }

      v15 = v17;
    }

    if (![v9 containsObject:v15])
    {
      lastPathComponent2 = [nextObject2 lastPathComponent];
      [(TRIFBFactorPackStorage *)self _reportFactorPackDiskUsagesWithNamespaceName:v15 namespaceDirName:lastPathComponent2 context:contextCopy];

      [v9 addObject:v15];
LABEL_15:

      goto LABEL_16;
    }

    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *buf = v21;
      v25 = v15;
      _os_log_debug_impl(&dword_26F567000, v18, OS_LOG_TYPE_DEBUG, "Skipping reporting disk usage of factor packs for already visited namespace: %{public}@", buf, 0xCu);
    }

LABEL_14:

    goto LABEL_15;
  }

LABEL_21:
  objc_autoreleasePoolPop(v10);

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_reportFactorPackDiskUsagesWithNamespaceName:(id)name namespaceDirName:(id)dirName context:(id)context
{
  v21 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  dirNameCopy = dirName;
  contextCopy = context;
  v11 = [(TRIFBFactorPackStorage *)self _parentDirForFactorLevelsWithNamespaceName:dirNameCopy];
  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = [MEMORY[0x277D73728] arrayFromDirectory:v11];
    if (v13)
    {
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 3221225472;
      v16[2] = __96__TRIFBFactorPackStorage__reportFactorPackDiskUsagesWithNamespaceName_namespaceDirName_context___block_invoke;
      v16[3] = &unk_279DE2E68;
      v17 = nameCopy;
      v18 = contextCopy;
      if (([v13 enumerateStringsWithBlock:v16] & 1) == 0)
      {
        v14 = TRILogCategory_Server();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v20 = v13;
          _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Failed to enumerate %{public}@ to report factor pack disk usage", buf, 0xCu);
        }
      }
    }

    objc_autoreleasePoolPop(v12);
  }

  v15 = *MEMORY[0x277D85DE8];
}

void __96__TRIFBFactorPackStorage__reportFactorPackDiskUsagesWithNamespaceName_namespaceDirName_context___block_invoke(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lastPathComponent];
  v5 = TRIValidateFactorPackId();

  if (v5)
  {
    v6 = [MEMORY[0x277CCAA00] triDiskUsageForDirectory:v3];
    v7 = v6;
    if (v6)
    {
      v8 = [MEMORY[0x277D73B40] metricWithName:@"triald_disk_usage" integerValue:{-[NSObject compressedSum](v6, "compressedSum")}];
      v9 = objc_opt_new();
      v10 = *(a1 + 32);
      v11 = [v9 ensureFactorFields];
      [v11 setNamespaceName:v10];

      v12 = [v9 ensureFactorFields];
      [v12 setClientFactorPackId:v5];

      v13 = [*(a1 + 40) client];
      v14 = [v13 logger];
      v15 = [*(a1 + 40) client];
      v16 = [v15 trackingId];
      v19 = v8;
      v17 = [MEMORY[0x277CBEA60] arrayWithObjects:&v19 count:1];
      [v14 logWithTrackingId:v16 metrics:v17 dimensions:0 trialSystemTelemetry:v9];
    }

    else
    {
      v8 = TRILogCategory_Server();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        *buf = 138543362;
        v21 = v3;
        _os_log_debug_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEBUG, "Skipping reporting disk usage for dir %{public}@ as it couldn't be determined", buf, 0xCu);
      }
    }
  }

  else
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138543362;
      v21 = v3;
      _os_log_debug_impl(&dword_26F567000, v7, OS_LOG_TYPE_DEBUG, "Skipping reporting disk usage for dir %{public}@ whose last path component isn't a valid factor pack id", buf, 0xCu);
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeUnreferencedGlobalFactorPacksWithRemovedCount:(unsigned int *)count
{
  v36 = *MEMORY[0x277D85DE8];
  _globalFactorPackProviderPlist = [(TRIFBFactorPackStorage *)self _globalFactorPackProviderPlist];
  v24 = _globalFactorPackProviderPlist;
  if (_globalFactorPackProviderPlist)
  {
    v25 = [_globalFactorPackProviderPlist objectForKeyedSubscript:@"namespaceFactorPackMap"];
    *v30 = 0;
    v31 = v30;
    v32 = 0x2020000000;
    v33 = 0;
    v5 = [(TRIPaths *)self->_paths treatmentsDirUsingGlobal:1];
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5];
    v8 = [defaultManager enumeratorAtURL:v7 includingPropertiesForKeys:0 options:1 errorHandler:0];

    v9 = 1;
    do
    {
      v10 = objc_autoreleasePoolPush();
      nextObject = [v8 nextObject];
      v12 = nextObject;
      if (nextObject)
      {
        lastPathComponent = [nextObject lastPathComponent];
        if (lastPathComponent)
        {
          v14 = objc_autoreleasePoolPush();
          v15 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/factorPacks", lastPathComponent];
          v16 = [v5 stringByAppendingPathComponent:v15];

          objc_autoreleasePoolPop(v14);
          v17 = [MEMORY[0x277D73728] arrayFromDirectory:v16];
          if (v17)
          {
            v26[0] = MEMORY[0x277D85DD0];
            v26[1] = 3221225472;
            v26[2] = __78__TRIFBFactorPackStorage_removeUnreferencedGlobalFactorPacksWithRemovedCount___block_invoke;
            v26[3] = &unk_279DE2E90;
            v27 = v25;
            v28 = lastPathComponent;
            v29 = v30;
            v18 = [v17 enumerateStringsWithBlock:v26];

            v9 &= v18;
            v19 = v27;
          }

          else
          {
            v19 = TRILogCategory_Server();
            if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v35 = lastPathComponent;
              _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "Couldn't locate global factor packs for namespace name: %@", buf, 0xCu);
            }

            v9 = 0;
          }
        }

        else
        {
          v16 = TRILogCategory_Server();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Invalid namespace name found in global treatment directory.", buf, 2u);
          }
        }
      }

      objc_autoreleasePoolPop(v10);
    }

    while (v12);
    if (count)
    {
      *count = *(v31 + 6);
    }

    _Block_object_dispose(v30, 8);
  }

  else
  {
    v20 = TRILogCategory_Server();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *v30 = 0;
      _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEFAULT, "Couldn't open global factor pack provider plist. Stopping the removal of unreferenced global factor packs.", v30, 2u);
    }

    v9 = 0;
    if (count)
    {
      *count = 0;
    }
  }

  v21 = *MEMORY[0x277D85DE8];
  return v9 & 1;
}

void __78__TRIFBFactorPackStorage_removeUnreferencedGlobalFactorPacksWithRemovedCount___block_invoke(uint64_t a1, void *a2)
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 lastPathComponent];
  v5 = v4;
  if (!v4 || ![v4 length])
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v16 = v3;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Invalid factor pack Id in global factor pack directory %{public}@", buf, 0xCu);
    }

    goto LABEL_12;
  }

  v6 = [*(a1 + 32) objectForKey:*(a1 + 40)];
  v7 = [v6 isEqualToString:v5];

  if ((v7 & 1) == 0)
  {
    v8 = [MEMORY[0x277CCAA00] defaultManager];
    v14 = 0;
    v9 = [v8 triForceRemoveItemAtPath:v3 error:&v14];
    v10 = v14;

    if (v10)
    {
      v11 = TRILogCategory_Server();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = [v10 localizedDescription];
        *buf = 138543618;
        v16 = v3;
        v17 = 2112;
        v18 = v13;
        _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Failed to remove factor pack at %{public}@ with the following error %@", buf, 0x16u);
      }
    }

    if (v9)
    {
      ++*(*(*(a1 + 48) + 8) + 24);
    }

LABEL_12:
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)_globalFactorPackProviderPlist
{
  v16 = *MEMORY[0x277D85DE8];
  v2 = [(TRIPaths *)self->_paths namespaceDescriptorsDirUsingGlobal:1];
  v3 = [v2 stringByAppendingPathComponent:@"v2/globalActiveFactorProviders.plplist"];

  *__error() = 0;
  if (access([v3 fileSystemRepresentation], 4))
  {
    if (*__error() == 1)
    {
      v4 = TRILogCategory_Server();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Cannot access global factor pack provider plplist.", buf, 2u);
      }

LABEL_8:
      v5 = 0;
      goto LABEL_16;
    }

    if (*__error() == 2)
    {
      v4 = TRILogCategory_Server();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v13 = v3;
        _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Global factor pack provider plplist file not present: %@", buf, 0xCu);
      }

      goto LABEL_8;
    }
  }

  v11 = 0;
  v5 = [MEMORY[0x277D425D8] propertyListWithPath:v3 error:&v11];
  v6 = v11;
  v4 = v6;
  if (v5)
  {
    v7 = v5;
  }

  else if (v6)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v13 = v3;
      v14 = 2112;
      v15 = v4;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Error opening global factor pack provider plplist %@: %@", buf, 0x16u);
    }
  }

LABEL_16:
  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

@end