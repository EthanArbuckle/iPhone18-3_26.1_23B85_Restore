@interface TRIFBClientTreatmentStorage
+ (id)relPathForMAReferenceWithFactorName:(id)a3;
- (BOOL)_deleteOnDemandAssetsWithFactorNames:(id)a3 treatment:(id)a4 namespace:(id)a5;
- (BOOL)_linkAssetsUpdatingTreatment:(id)a3;
- (BOOL)_linkAssetsWithIds:(id)a3 updatingTreatment:(id)a4;
- (BOOL)_removeFactorsWithDescriptor:(id)a3 descriptorDir:(id)a4 treatmentLayer:(unint64_t)a5 namespaceName:(id)a6;
- (BOOL)_removeFactorsWithTreatmentId:(id)a3 namespaceName:(id)a4;
- (BOOL)_removeFactorsWithURL:(id)a3;
- (BOOL)_resolveAssetPathsInTreatment:(id)a3 usingReferenceURL:(id)a4;
- (BOOL)_saveNamespacePartitionedTreatmentsForTreatment:(id)a3 forNamespaceNames:(id)a4;
- (BOOL)_savePersistedTreatment:(id)a3;
- (BOOL)_writeFactorLevelsToDisk:(id)a3 namespaceName:(id)a4 writeToPath:(id)a5;
- (BOOL)removeTreatmentFromLayer:(unint64_t)a3 withNamespaceName:(id)a4 upgradeNCVs:(id)a5;
- (BOOL)removeTreatmentWithTreatmentId:(id)a3;
- (BOOL)removeUnreferencedTreatmentsWithRemovedCount:(unsigned int *)a3;
- (TRIFBClientTreatmentStorage)initWithPaths:(id)a3;
- (TRIFBClientTreatmentStorage)initWithPaths:(id)a3 extractor:(id)a4;
- (id)_assetURLForFactor:(id)a3 treatmentId:(id)a4;
- (id)_baseUrlForTreatment:(id)a3 namespaceName:(id)a4;
- (id)_collectTreatments;
- (id)_convertFastFactorLevelToClientTreatment:(id)a3;
- (id)_copyFileFromURL:(id)a3 to:(id)a4;
- (id)_linkAssetWithId:(id)a3 treatmentId:(id)a4 assetStore:(id)a5 factor:(id)a6;
- (id)loadTreatmentWithTreatmentId:(id)a3 isFilePresent:(BOOL *)a4;
- (id)saveTreatment:(id)a3;
- (id)updateSavedTreatmentWithTreatmentId:(id)a3 deletingAssetsWithFactorNames:(id)a4 forNamespaceName:(id)a5;
- (id)updateSavedTreatmentWithTreatmentId:(id)a3 linkingNewAssetIds:(id)a4 forNamespaceNames:(id)a5;
- (id)urlForFactorsWithTreatmentId:(id)a3 namespaceName:(id)a4;
- (id)urlForTreatmentWithTreatmentId:(id)a3;
@end

@implementation TRIFBClientTreatmentStorage

- (TRIFBClientTreatmentStorage)initWithPaths:(id)a3
{
  v4 = a3;
  v5 = [[TRIRemoteAssetExtractor alloc] initWithMonitoredActivity:0];
  v6 = [(TRIFBClientTreatmentStorage *)self initWithPaths:v4 extractor:v5];

  return v6;
}

- (TRIFBClientTreatmentStorage)initWithPaths:(id)a3 extractor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TRIFBClientTreatmentStorage;
  v9 = [(TRIFBClientTreatmentStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_paths, a3);
    objc_storeStrong(&v10->_extractor, a4);
  }

  return v10;
}

- (id)loadTreatmentWithTreatmentId:(id)a3 isFilePresent:(BOOL *)a4
{
  v29 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (a4)
  {
    *a4 = 1;
  }

  v8 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = [(TRIFBClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:v6];
  v22 = 0;
  v10 = [v8 initWithContentsOfURL:v9 options:1 error:&v22];
  v11 = v22;

  if (v10)
  {
    v12 = [objc_alloc(MEMORY[0x277D736F8]) initVerifiedRootObjectFromData:v10];
    if (v12)
    {
      v13 = v12;
      v14 = [(TRIFBClientTreatmentStorage *)self _convertFastFactorLevelToClientTreatment:v12];
      goto LABEL_17;
    }

    v17 = TRILogCategory_Server();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v24 = v6;
      _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Failed to verify content of factor levels: %{public}@", buf, 0xCu);
    }

    v13 = 0;
  }

  else
  {
    v15 = [v11 domain];
    v16 = v15;
    if (v15 == *MEMORY[0x277CCA050])
    {
      v18 = [v11 code];

      if (a4 && v18 == 260)
      {
        *a4 = 0;
      }
    }

    else
    {
    }

    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v21 = [(TRIFBClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:v6];
      *buf = 138412802;
      v24 = v6;
      v25 = 2112;
      v26 = v21;
      v27 = 2114;
      v28 = v11;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Unable to read treatment with ID %@ from %@: %{public}@", buf, 0x20u);
    }
  }

  v14 = 0;
LABEL_17:

  objc_autoreleasePoolPop(v7);
  v19 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)saveTreatment:(id)a3
{
  v58 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  if ([v5 hasTreatmentId] && (objc_msgSend(v5, "treatmentId"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8))
  {
    v9 = [v5 copy];
    if ([v9 factorLevelArray_Count])
    {
      v42 = self;
      v44 = v6;
      context = objc_autoreleasePoolPush();
      v49 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v43 = v9;
      obj = [v9 factorLevelArray];
      v48 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
      v11 = 0;
      if (!v48)
      {
        goto LABEL_33;
      }

      v47 = *v50;
      *&v10 = 138543362;
      v40 = v10;
      while (1)
      {
        v12 = 0;
        do
        {
          if (*v50 != v47)
          {
            objc_enumerationMutation(obj);
          }

          v13 = v5;
          v14 = *(*(&v49 + 1) + 8 * v12);
          if (!v11)
          {
            v15 = [*(*(&v49 + 1) + 8 * v12) factor];
            v16 = [v15 namespaceName];
            v11 = [TRIClientFactorPackUtils aliasesInNamespace:v16];
          }

          v17 = [v14 factor];
          v18 = [v17 name];
          v19 = [v11 objectForKeyedSubscript:v18];
          v20 = v19;
          if (!v19)
          {
            v46 = [v14 factor];
            v3 = [v46 name];
            v20 = v3;
          }

          v21 = [v14 factor];
          [v21 setName:v20];

          if (!v19)
          {
          }

          v5 = v13;
          if ([v14 hasLevel])
          {
            v22 = [v14 level];
            v23 = [v22 fileOrDirectoryLevelWithIsDir:0];

            if ([v13 hasTreatmentId])
            {
              if ([v23 hasAsset])
              {
                v24 = [v23 asset];
                v25 = [v24 hasTreatmentId];

                if ((v25 & 1) == 0)
                {
                  v26 = TRILogCategory_Server();
                  if (os_log_type_enabled(v26, OS_LOG_TYPE_DEBUG))
                  {
                    v32 = [v13 treatmentId];
                    v33 = [v14 factor];
                    v34 = [v33 name];
                    *buf = 138412546;
                    v54 = v32;
                    v55 = 2114;
                    v56 = v34;
                    _os_log_debug_impl(&dword_26F567000, v26, OS_LOG_TYPE_DEBUG, "Populating treatmentId %@ on asset for %{public}@", buf, 0x16u);

                    v5 = v13;
                  }

                  v27 = [v5 treatmentId];
                  v28 = [v23 asset];
                  [v28 setTreatmentId:v27];
                }
              }
            }

            if ([v5 hasTreatmentId] && objc_msgSend(v23, "hasAsset"))
            {
              v29 = [v23 asset];
              if ([v29 hasCloudKitContainer])
              {
                goto LABEL_29;
              }

              v30 = [v23 isOnDemand];

              if (v30)
              {
                v31 = TRILogCategory_Server();
                if (os_log_type_enabled(v31, OS_LOG_TYPE_DEBUG))
                {
                  v35 = [v14 factor];
                  v36 = [v35 name];
                  *buf = v40;
                  v54 = v36;
                  _os_log_debug_impl(&dword_26F567000, v31, OS_LOG_TYPE_DEBUG, "Populating system default cloudKitContainer on asset for %{public}@", buf, 0xCu);
                }

                v29 = [v23 asset];
                [v29 setCloudKitContainer:1];
LABEL_29:
              }
            }
          }

          ++v12;
        }

        while (v48 != v12);
        v48 = [obj countByEnumeratingWithState:&v49 objects:v57 count:16];
        if (!v48)
        {
LABEL_33:

          objc_autoreleasePoolPop(context);
          v9 = v43;
          v6 = v44;
          self = v42;
          break;
        }
      }
    }

    if ([(TRIFBClientTreatmentStorage *)self _linkAssetsUpdatingTreatment:v9]&& [(TRIFBClientTreatmentStorage *)self _saveNamespacePartitionedTreatmentsForTreatment:v9 forNamespaceNames:0]&& [(TRIFBClientTreatmentStorage *)self _savePersistedTreatment:v9])
    {
      v9 = v9;
      v37 = v9;
      goto LABEL_41;
    }
  }

  else
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "TRIClientTreatmentArtifact has nil or empty treatmentId", buf, 2u);
    }
  }

  v37 = 0;
LABEL_41:

  objc_autoreleasePoolPop(v6);
  v38 = *MEMORY[0x277D85DE8];

  return v37;
}

- (id)_convertFastFactorLevelToClientTreatment:(id)a3
{
  v34 = *MEMORY[0x277D85DE8];
  v4 = a3;
  context = objc_autoreleasePoolPush();
  v5 = objc_alloc_init(MEMORY[0x277D73AF0]);
  v6 = [v4 sourceAsTreatmentId];
  v26 = v5;
  [v5 setTreatmentId:v6];

  v7 = objc_alloc(MEMORY[0x277CBEB18]);
  v8 = [v4 levels];
  v9 = [v7 initWithCapacity:{objc_msgSend(v8, "count")}];

  v10 = [v4 namespaceName];
  v11 = [v4 sourceAsTreatmentId];
  v12 = [(TRIFBClientTreatmentStorage *)self _baseUrlForTreatment:v11 namespaceName:v10];

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = v4;
  obj = [v4 levels];
  v13 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v30;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v30 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v29 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v19 = MEMORY[0x277D73738];
        v20 = [v12 path];
        v21 = [v19 convertFBFactorLevelToProtoFactorLevel:v17 parentDir:v20 namespaceName:v10 isRelativePath:0];

        [v9 addObject:v21];
        objc_autoreleasePoolPop(v18);
      }

      v14 = [obj countByEnumeratingWithState:&v29 objects:v33 count:16];
    }

    while (v14);
  }

  v22 = [objc_alloc(MEMORY[0x277CBEB18]) initWithArray:v9 copyItems:1];
  [v26 setFactorLevelArray:v22];

  objc_autoreleasePoolPop(context);
  v23 = *MEMORY[0x277D85DE8];

  return v26;
}

- (id)updateSavedTreatmentWithTreatmentId:(id)a3 linkingNewAssetIds:(id)a4 forNamespaceNames:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v20 = 0;
  v12 = [(TRIFBClientTreatmentStorage *)self loadTreatmentWithTreatmentId:v8 isFilePresent:&v20];
  if (v12)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v18 = [v9 count];
      *buf = 134218242;
      v22 = v18;
      v23 = 2112;
      v24 = v8;
      _os_log_debug_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEBUG, "Merging %tu assets for treatment %@.", buf, 0x16u);
    }

    if ([(TRIFBClientTreatmentStorage *)self _linkAssetsWithIds:v9 updatingTreatment:v12]&& [(TRIFBClientTreatmentStorage *)self _saveNamespacePartitionedTreatmentsForTreatment:v12 forNamespaceNames:v10]&& [(TRIFBClientTreatmentStorage *)self _savePersistedTreatment:v12])
    {
      v14 = v12;
      goto LABEL_13;
    }
  }

  else if ((v20 & 1) == 0)
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v19 = [(TRIFBClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:v8];
      *buf = 138412290;
      v22 = v19;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "updateSavedTreatmentWithTreatmentId failed because preexisting treatment is not present: %@", buf, 0xCu);
    }
  }

  v14 = 0;
LABEL_13:

  objc_autoreleasePoolPop(v11);
  v16 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)_linkAssetsWithIds:(id)a3 updatingTreatment:(id)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v34 = a3;
  v6 = a4;
  v7 = [TRIAssetStore alloc];
  paths = self->_paths;
  extractor = self->_extractor;
  v31 = self;
  v10 = [[TRIRemoteAssetPatcher alloc] initWithMonitoredActivity:0];
  v32 = [(TRIAssetStore *)v7 initWithPaths:paths extractor:extractor patcher:v10];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = v6;
  v11 = [v6 factorLevelArray];
  v12 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v36;
    while (2)
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v36 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v35 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        v18 = [v16 level];
        v19 = [v18 fileOrDirectoryLevelWithIsDir:0];

        if (v19)
        {
          if (([v19 hasPath] & 1) == 0)
          {
            if ([v19 hasAsset])
            {
              v20 = [v19 asset];
              v21 = [v20 hasAssetId];

              if (v21)
              {
                v22 = [v19 asset];
                v23 = [v22 assetId];
                v24 = TRIValidateAssetId();

                if (v24 && [v34 containsObject:v24])
                {
                  v25 = [v33 treatmentId];
                  v26 = [v16 factor];
                  v27 = [(TRIFBClientTreatmentStorage *)v31 _linkAssetWithId:v24 treatmentId:v25 assetStore:v32 factor:v26];

                  if (!v27)
                  {

                    objc_autoreleasePoolPop(v17);
                    v28 = 0;
                    goto LABEL_19;
                  }

                  [v19 setPath:v27];
                }
              }
            }
          }
        }

        objc_autoreleasePoolPop(v17);
      }

      v13 = [v11 countByEnumeratingWithState:&v35 objects:v39 count:16];
      if (v13)
      {
        continue;
      }

      break;
    }
  }

  v28 = 1;
LABEL_19:

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

- (id)_linkAssetWithId:(id)a3 treatmentId:(id)a4 assetStore:(id)a5 factor:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v15 = objc_autoreleasePoolPush();
  v16 = [(TRIFBClientTreatmentStorage *)self _assetURLForFactor:v14 treatmentId:v12];
  v17 = [v16 URLByDeletingLastPathComponent];
  v18 = [v17 path];

  if (!v18)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:266 description:{@"Expression was unexpectedly nil/false: %@", @"[assetURL URLByDeletingLastPathComponent].path"}];
  }

  [MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:v18];
  v19 = [v16 path];
  if (!v19)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:269 description:{@"Expression was unexpectedly nil/false: %@", @"assetURL.path"}];
  }

  if ([v13 linkAssetWithIdentifier:v11 toCurrentPath:v19 futurePath:v19])
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  objc_autoreleasePoolPop(v15);

  return v21;
}

- (id)updateSavedTreatmentWithTreatmentId:(id)a3 deletingAssetsWithFactorNames:(id)a4 forNamespaceName:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v20 = 0;
  v12 = [(TRIFBClientTreatmentStorage *)self loadTreatmentWithTreatmentId:v8 isFilePresent:&v20];
  if (v12)
  {
    [(TRIFBClientTreatmentStorage *)self _deleteOnDemandAssetsWithFactorNames:v9 treatment:v12 namespace:v10];
    v13 = [objc_alloc(MEMORY[0x277CBEB98]) initWithObjects:{v10, 0}];
    v14 = [(TRIFBClientTreatmentStorage *)self _saveNamespacePartitionedTreatmentsForTreatment:v12 forNamespaceNames:v13];

    if (v14 && [(TRIFBClientTreatmentStorage *)self _savePersistedTreatment:v12])
    {
      v15 = v12;
      goto LABEL_10;
    }
  }

  else if ((v20 & 1) == 0)
  {
    v16 = TRILogCategory_Server();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v19 = [(TRIFBClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:v8];
      *buf = 138412290;
      v22 = v19;
      _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "updateSavedTreatmentWithTreatmentId failed because preexisting treatment is not present: %@", buf, 0xCu);
    }
  }

  v15 = 0;
LABEL_10:

  objc_autoreleasePoolPop(v11);
  v17 = *MEMORY[0x277D85DE8];

  return v15;
}

- (BOOL)removeUnreferencedTreatmentsWithRemovedCount:(unsigned int *)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = [(TRIFBClientTreatmentStorage *)self _collectTreatments];
  if (v4)
  {
    v5 = [TRITempDirScopeGuard alloc];
    v6 = [(TRIPaths *)self->_paths localTempDir];
    v7 = [(TRITempDirScopeGuard *)v5 initWithPath:v6];

    v35 = v7;
    if (v7)
    {
      v33 = [[TRINamespaceDescriptorSetStorage alloc] initWithPaths:self->_paths];
      v36 = [(TRINamespaceDescriptorSetStorage *)v33 parentDirForNamespaceDescriptorSets];
      v8 = [MEMORY[0x277CCAA00] defaultManager];
      v9 = [v8 fileExistsAtPath:v36];

      if (v9)
      {
        v37 = objc_alloc_init(MEMORY[0x277CBEB58]);
        context = objc_autoreleasePoolPush();
        v10 = [MEMORY[0x277CCAA00] defaultManager];
        v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:v36 isDirectory:1];
        v12 = [v10 enumeratorAtURL:v11 includingPropertiesForKeys:0 options:0 errorHandler:0];

        v13 = objc_autoreleasePoolPush();
        v14 = [v12 nextObject];
        if (v14)
        {
          *&v15 = 138412290;
          v31 = v15;
          do
          {
            v16 = [v14 path];
            v17 = [v16 hasSuffix:@".plist"];

            if (v17)
            {
              v18 = MEMORY[0x277CBEAC0];
              v19 = [v14 path];
              v20 = [v18 dictionaryWithContentsOfFile:v19];

              if (v20)
              {
                v21 = [objc_alloc(MEMORY[0x277D73750]) initWithDictionary:v20];
                v22 = [v21 factorsURL];
                v23 = [v22 path];
                v24 = [v23 stringByDeletingLastPathComponent];
                [v37 addObject:v24];
              }

              else
              {
                v21 = TRILogCategory_Server();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  v25 = [v14 path];
                  LODWORD(buf) = v31;
                  *(&buf + 4) = v25;
                  _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "failed to parse dictionary from file: %@", &buf, 0xCu);
                }
              }
            }

            objc_autoreleasePoolPop(v13);
            v13 = objc_autoreleasePoolPush();
            v14 = [v12 nextObject];
          }

          while (v14);
        }

        objc_autoreleasePoolPop(v13);

        objc_autoreleasePoolPop(context);
        *&buf = 0;
        *(&buf + 1) = &buf;
        v48 = 0x2020000000;
        v49 = 0;
        v43 = 0;
        v44 = &v43;
        v45 = 0x2020000000;
        v46 = 1;
        v38[0] = MEMORY[0x277D85DD0];
        v38[1] = 3221225472;
        v38[2] = __76__TRIFBClientTreatmentStorage_removeUnreferencedTreatmentsWithRemovedCount___block_invoke;
        v38[3] = &unk_279DE2810;
        v27 = v37;
        v39 = v27;
        v41 = &v43;
        v40 = v35;
        p_buf = &buf;
        v28 = [v4 enumerateStringsWithBlock:v38];
        if (a3)
        {
          *a3 = *(*(&buf + 1) + 24);
        }

        if (v28)
        {
          v26 = *(v44 + 24);
        }

        else
        {
          v26 = 0;
        }

        _Block_object_dispose(&v43, 8);
        _Block_object_dispose(&buf, 8);
      }

      else
      {
        v27 = TRILogCategory_Server();
        if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
        {
          LODWORD(buf) = 138543362;
          *(&buf + 4) = v36;
          _os_log_impl(&dword_26F567000, v27, OS_LOG_TYPE_DEFAULT, "Experiment namespace descriptor directory does not exist at %{public}@", &buf, 0xCu);
        }

        v26 = 1;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else
  {
    v26 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v26 & 1;
}

void __76__TRIFBClientTreatmentStorage_removeUnreferencedTreatmentsWithRemovedCount___block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if ([*(a1 + 32) containsObject:v3])
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 138412290;
      v8 = v3;
      _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Treatment managed-dir %@ is referenced. Looking to see if there are any deferred-deletion items to remove", &v7, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) &= [TRIReferenceManagedDir collectDeferredDeletionItemsWithManagedDir:v3];
  }

  else
  {
    LOBYTE(v7) = 0;
    v5 = [*(a1 + 40) path];
    *(*(*(a1 + 48) + 8) + 24) &= [TRIReferenceManagedDir collectGarbageForManagedDir:v3 withExternalReferenceStore:0 usingTempDir:v5 managedDirWasDeleted:&v7];

    if (v7 == 1)
    {
      ++*(*(*(a1 + 56) + 8) + 24);
    }
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (id)_collectTreatments
{
  v60 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if (!v3)
  {
    v31 = 0;
    goto LABEL_33;
  }

  v4 = [(TRIPaths *)self->_paths treatmentsDir];
  v5 = [MEMORY[0x277CCAA00] defaultManager];
  v54 = 0;
  v6 = [v5 contentsOfDirectoryAtPath:v4 error:&v54];
  v7 = v54;

  if (v6)
  {
    v39 = v7;
    v41 = v3;
    v47 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v40 = v6;
    obj = v6;
    v8 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v51;
      v42 = *v51;
      v43 = v4;
      do
      {
        v11 = 0;
        v44 = v9;
        do
        {
          if (*v51 != v10)
          {
            objc_enumerationMutation(obj);
          }

          v12 = *(*(&v50 + 1) + 8 * v11);
          v13 = objc_autoreleasePoolPush();
          v14 = [v4 stringByAppendingPathComponent:v12];
          buf[0] = 0;
          v15 = [MEMORY[0x277CCAA00] defaultManager];
          [v15 fileExistsAtPath:v14 isDirectory:buf];

          if (buf[0] == 1)
          {
            v46 = v13;
            v16 = [MEMORY[0x277CCAA00] defaultManager];
            v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14 isDirectory:1];
            v18 = [v16 enumeratorAtURL:v17 includingPropertiesForKeys:0 options:1 errorHandler:0];

            v19 = objc_autoreleasePoolPush();
            v20 = [v18 nextObject];
            if (v20)
            {
              v21 = v20;
              while (1)
              {
                v22 = [v21 URLByAppendingPathComponent:{@"treatment.fb", v39}];
                v23 = [v22 path];
                if (v23)
                {
                  v24 = v23;
                  v25 = [MEMORY[0x277CCAA00] defaultManager];
                  v26 = [v22 path];
                  v27 = [v25 fileExistsAtPath:v26];

                  if (!v27)
                  {
                    break;
                  }
                }

                v28 = [v21 path];

                if (v28)
                {
                  v29 = [v21 path];
                  [v47 addObject:v29];
                }

                objc_autoreleasePoolPop(v19);
                v19 = objc_autoreleasePoolPush();
                v21 = [v18 nextObject];
                if (!v21)
                {
                  goto LABEL_18;
                }
              }
            }

LABEL_18:
            objc_autoreleasePoolPop(v19);

            v10 = v42;
            v4 = v43;
            v9 = v44;
            v13 = v46;
          }

          objc_autoreleasePoolPop(v13);
          ++v11;
        }

        while (v11 != v9);
        v9 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v9);
    }

    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __49__TRIFBClientTreatmentStorage__collectTreatments__block_invoke;
    v48[3] = &unk_279DE2838;
    v3 = v41;
    v30 = v41;
    v49 = v30;
    [v47 enumerateObjectsUsingBlock:v48];
    v31 = v30;

    v7 = v39;
    v6 = v40;
    goto LABEL_32;
  }

  v32 = [v7 domain];
  v33 = v32;
  if (v32 == *MEMORY[0x277CCA050])
  {
    v34 = [v7 code];

    if (v34 == 260)
    {
      v35 = TRILogCategory_Server();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v57 = v4;
        _os_log_impl(&dword_26F567000, v35, OS_LOG_TYPE_DEFAULT, "Treatments folder does not exist at %{public}@. Treating as empty", buf, 0xCu);
      }

      v31 = v3;
      goto LABEL_32;
    }
  }

  else
  {
  }

  v36 = TRILogCategory_Server();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543618;
    v57 = v4;
    v58 = 2112;
    v59 = v7;
    _os_log_error_impl(&dword_26F567000, v36, OS_LOG_TYPE_ERROR, "Unable to gather contents of treatment directory %{public}@: %@", buf, 0x16u);
  }

  v31 = 0;
LABEL_32:

LABEL_33:
  v37 = *MEMORY[0x277D85DE8];

  return v31;
}

void __49__TRIFBClientTreatmentStorage__collectTreatments__block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (([*(a1 + 32) addString:v3] & 1) == 0)
  {
    v4 = TRILogCategory_Server();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = 138412290;
      v7 = v3;
      _os_log_error_impl(&dword_26F567000, v4, OS_LOG_TYPE_ERROR, "Failed to add string %@ to file-backed mutable array", &v6, 0xCu);
    }
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)removeTreatmentFromLayer:(unint64_t)a3 withNamespaceName:(id)a4 upgradeNCVs:(id)a5
{
  v44 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  if (a3 != 32 && a3 != 4)
  {
    if (a3 == 1)
    {
      v10 = TRILogCategory_Server();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v38 = v8;
        _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "cannot remove treatment from 'installed' layer for namespace %{public}@", buf, 0xCu);
      }
    }

    goto LABEL_12;
  }

  v11 = [(TRIPaths *)self->_paths namespaceDescriptorsExperimentDir];
  if (!v11)
  {
LABEL_12:
    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v38) = a3;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "cannot remove treatment from unknown treatment layer %u", buf, 8u);
    }

    v18 = 0;
    goto LABEL_38;
  }

  v12 = v11;
  v13 = [MEMORY[0x277D73750] loadWithNamespaceName:v8 fromDirectory:v11];
  if (v13)
  {
    v14 = [MEMORY[0x277D73758] factorProviderWithNamespaceDescriptor:v13 paths:self->_paths faultOnMissingFactors:0 shouldLockFactorDirectory:0];
    v15 = v14;
    if (a3 == 4)
    {
      v16 = [v14 treatmentId];

      if (v16)
      {
        v17 = [v15 treatmentId];
        v18 = [(TRIFBClientTreatmentStorage *)self removeTreatmentWithTreatmentId:v17];
      }

      else
      {
        v18 = 1;
      }
    }

    else if (v9)
    {
      v31 = v14;
      v32 = v13;
      v19 = [v14 namespaceCompatibilityVersion];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v20 = v9;
      v21 = [v20 countByEnumeratingWithState:&v33 objects:v43 count:16];
      if (v21)
      {
        v22 = v21;
        v23 = *v34;
        while (2)
        {
          for (i = 0; i != v22; ++i)
          {
            if (*v34 != v23)
            {
              objc_enumerationMutation(v20);
            }

            if ([*(*(&v33 + 1) + 8 * i) intValue] > v19)
            {
              v27 = TRILogCategory_Server();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543874;
                v38 = v8;
                v39 = 2112;
                v40 = v20;
                v41 = 1024;
                v42 = v19;
                _os_log_error_impl(&dword_26F567000, v27, OS_LOG_TYPE_ERROR, "Error for namespace %{public}@. Every element of Namespace Upgrade Compatibility Versions %@ must be less than or equal to the current rollout Namespace Compatibility Version %u", buf, 0x1Cu);
              }

              v18 = 0;
              v15 = v31;
              v13 = v32;
              goto LABEL_36;
            }
          }

          v22 = [v20 countByEnumeratingWithState:&v33 objects:v43 count:16];
          if (v22)
          {
            continue;
          }

          break;
        }
      }

      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:v19];
      v26 = [v20 containsObject:v25];

      if (v26)
      {
        v18 = 1;
        v13 = v32;
      }

      else
      {
        v13 = v32;
        v18 = [(TRIFBClientTreatmentStorage *)self _removeFactorsWithDescriptor:v32 descriptorDir:v12 treatmentLayer:a3 namespaceName:v8];
      }

      v15 = v31;
      v28 = TRILogCategory_Server();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v38 = v8;
        v39 = 2114;
        v40 = v20;
        _os_log_impl(&dword_26F567000, v28, OS_LOG_TYPE_DEFAULT, "Not deleting rollout for namespace %{public}@ due to upgrade NCVS %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v18 = [(TRIFBClientTreatmentStorage *)self _removeFactorsWithDescriptor:v13 descriptorDir:v12 treatmentLayer:a3 namespaceName:v8];
    }

LABEL_36:
  }

  else
  {
    v18 = 1;
  }

LABEL_38:
  v29 = *MEMORY[0x277D85DE8];
  return v18;
}

- (BOOL)removeTreatmentWithTreatmentId:(id)a3
{
  v31 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v28 = 0;
  v7 = [(TRIFBClientTreatmentStorage *)self loadTreatmentWithTreatmentId:v5 isFilePresent:&v28];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 factorLevelArray];
    v10 = [v9 firstObject];

    if (!v10 || ([v10 factor], v11 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v11, "namespaceName"), v12 = objc_claimAutoreleasedReturnValue(), v13 = -[TRIFBClientTreatmentStorage _removeFactorsWithTreatmentId:namespaceName:](self, "_removeFactorsWithTreatmentId:namespaceName:", v5, v12), v12, v11, !v13))
    {
      v19 = 0;
LABEL_17:

      goto LABEL_18;
    }

    v14 = [(TRIFBClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:v5];
    v15 = [v14 path];
    if (!v15)
    {
      v26 = [MEMORY[0x277CCA890] currentHandler];
      [v26 handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:526 description:{@"Invalid parameter not satisfying: %@", @"artifactPath"}];
    }

    v16 = [MEMORY[0x277CCAA00] defaultManager];
    v27 = 0;
    v17 = [v16 triForceRemoveItemAtPath:v15 error:&v27];
    v18 = v27;

    if (v17)
    {
      goto LABEL_7;
    }

    v20 = [v18 domain];
    v21 = v20;
    if (v20 == *MEMORY[0x277CCA050])
    {
      v22 = [v18 code];

      if (v22 == 4)
      {
LABEL_7:
        v19 = 1;
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
    }

    v23 = TRILogCategory_Server();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v30 = v18;
      _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "Failed to remove artifact: %{public}@", buf, 0xCu);
    }

    v19 = 0;
    goto LABEL_16;
  }

  v19 = v28 ^ 1;
LABEL_18:

  objc_autoreleasePoolPop(v6);
  v24 = *MEMORY[0x277D85DE8];
  return v19 & 1;
}

- (BOOL)_removeFactorsWithTreatmentId:(id)a3 namespaceName:(id)a4
{
  v4 = self;
  v5 = [(TRIFBClientTreatmentStorage *)self urlForFactorsWithTreatmentId:a3 namespaceName:a4];
  LOBYTE(v4) = [(TRIFBClientTreatmentStorage *)v4 _removeFactorsWithURL:v5];

  return v4;
}

- (BOOL)_removeFactorsWithDescriptor:(id)a3 descriptorDir:(id)a4 treatmentLayer:(unint64_t)a5 namespaceName:(id)a6
{
  v7 = a5;
  v21 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a6;
  v12 = [v10 removeFromDirectory:a4];
  v13 = [v10 factorsURL];

  if (v13)
  {
    v14 = [v10 factorsURL];
    v12 &= [(TRIFBClientTreatmentStorage *)self _removeFactorsWithURL:v14];
  }

  else
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18[0] = 67109378;
      v18[1] = v7;
      v19 = 2114;
      v20 = v11;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "descriptor in layer %u is missing factors URL for namespace %{public}@", v18, 0x12u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_removeFactorsWithURL:(id)a3
{
  v28 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:568 description:{@"Invalid parameter not satisfying: %@", @"factorsURL"}];
  }

  v6 = [v5 triPathAsOwner:0];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];

    if (v7)
    {
      v5 = v7;
      v8 = [v7 URLByDeletingLastPathComponent];
      if (!v8)
      {
        v23 = [MEMORY[0x277CCA890] currentHandler];
        [v23 handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:588 description:{@"Invalid parameter not satisfying: %@", @"parentURL"}];
      }

      v9 = [v8 triPathAsOwner:0];
      if (!v9)
      {
        v24 = [MEMORY[0x277CCA890] currentHandler];
        [v24 handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:590 description:{@"Invalid parameter not satisfying: %@", @"parentPath"}];
      }

      v25 = 0;
      v10 = [v5 path];
      if (v10)
      {
        v11 = v10;
        v12 = [v5 path];
        if ([TRIReferenceManagedDir isPathInManagedDir:v12])
        {
          v13 = [v5 path];
          v14 = 1;
          v15 = [TRIReferenceManagedDir removeFileInManagedDirWithPath:v13 inUseDeletionBehavior:1 wasDeleted:&v25];

          if (!v15)
          {
            v16 = TRILogCategory_Server();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v27 = v6;
              _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Failed to remove factors path %{public}@ in managed dir", buf, 0xCu);
            }

            v14 = 0;
          }

          goto LABEL_27;
        }
      }

      v14 = 1;
LABEL_27:

      goto LABEL_28;
    }

    v5 = TRILogCategory_Server();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = 0;
      _os_log_error_impl(&dword_26F567000, v5, OS_LOG_TYPE_ERROR, "Failed to resolve url: %{public}@", buf, 0xCu);
    }

    goto LABEL_24;
  }

  v17 = [v5 triIsContainerURL];
  v18 = TRILogCategory_Server();
  v19 = v18;
  if (!v17)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = v5;
      _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "Failed to resolve url: %{public}@", buf, 0xCu);
    }

LABEL_24:
    v14 = 0;
    goto LABEL_28;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = v5;
    _os_log_impl(&dword_26F567000, v19, OS_LOG_TYPE_DEFAULT, "Failed to resolve container url: %{public}@", buf, 0xCu);
  }

  v14 = 1;
LABEL_28:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)urlForFactorsWithTreatmentId:(id)a3 namespaceName:(id)a4
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = [(TRIFBClientTreatmentStorage *)self _baseUrlForTreatment:a3 namespaceName:a4];
  v7 = MEMORY[0x277CBEBC0];
  v8 = [v6 path];
  v14[0] = v8;
  v14[1] = @"treatment.fb";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v10 = [v7 fileURLWithPathComponents:v9];

  if (!v10)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:606 description:@"urlForFactorsWithTreatmentId is nil"];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)_savePersistedTreatment:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 treatmentId];
  v8 = [(TRIFBClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:v7];

  v9 = [v8 URLByDeletingLastPathComponent];
  if (!v9)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:615 description:{@"Invalid parameter not satisfying: %@", @"parentDirURL"}];
  }

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v23 = 0;
  v11 = [v10 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v23];
  v12 = v23;

  if ((v11 & 1) == 0)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v25 = v12;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Failed to create directory: %{public}@", buf, 0xCu);
    }
  }

  v14 = [v8 path];

  if (v14 && ([v8 path], v15 = objc_claimAutoreleasedReturnValue(), v16 = -[TRIFBClientTreatmentStorage _writeFactorLevelsToDisk:namespaceName:writeToPath:](self, "_writeFactorLevelsToDisk:namespaceName:writeToPath:", v5, @"0", v15), v15, v16))
  {
    v17 = 1;
  }

  else
  {
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = [v5 treatmentId];
      *buf = 138412290;
      v25 = v21;
      _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Unable to write persisted treatment for treatment id:%@", buf, 0xCu);
    }

    v17 = 0;
  }

  objc_autoreleasePoolPop(v6);
  v19 = *MEMORY[0x277D85DE8];
  return v17;
}

- (BOOL)_deleteOnDemandAssetsWithFactorNames:(id)a3 treatment:(id)a4 namespace:(id)a5
{
  v85 = *MEMORY[0x277D85DE8];
  v67 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [v9 treatmentId];
  v65 = self;
  v60 = v10;
  v12 = [(TRIFBClientTreatmentStorage *)self _baseUrlForTreatment:v11 namespaceName:v10];
  v64 = [v12 path];

  v61 = v9;
  v62 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v13 = [v9 factorLevelArray];
  v14 = [v13 countByEnumeratingWithState:&v75 objects:v84 count:16];
  if (!v14)
  {
    LOBYTE(v17) = 1;
    goto LABEL_37;
  }

  v15 = v14;
  v59 = a2;
  v16 = *v76;
  LODWORD(v17) = 1;
  v66 = v13;
  do
  {
    v18 = 0;
    do
    {
      if (*v76 != v16)
      {
        objc_enumerationMutation(v13);
      }

      v19 = *(*(&v75 + 1) + 8 * v18);
      v20 = objc_autoreleasePoolPush();
      v21 = [v19 level];
      v22 = [v21 fileOrDirectoryLevelWithIsDir:0];

      if (!v22)
      {
        v31 = [v19 level];
        v32 = [v31 levelOneOfCase];

        if (v32 != 104)
        {
          goto LABEL_28;
        }

        v33 = [v19 level];
        v23 = [v33 mobileAssetReferenceValue];

        if ([v23 isOnDemand])
        {
          v68 = v17;
          v34 = [v19 factor];
          v35 = [v34 name];
          v36 = [v67 containsObject:v35];

          if (v36)
          {
            v37 = objc_opt_class();
            v38 = [v19 factor];
            v39 = [v38 name];
            v40 = [v37 relPathForMAReferenceWithFactorName:v39];

            v41 = [v64 stringByAppendingPathComponent:v40];
            v42 = [MEMORY[0x277CCAA00] defaultManager];
            LODWORD(v39) = [v42 fileExistsAtPath:v41];

            if (v39)
            {
              [v62 addObject:v41];
              v43 = objc_opt_new();
              v74 = 0;
              v44 = [v43 writeToFile:v41 options:0x10000000 error:&v74];
              v63 = v74;

              if ((v44 & 1) == 0)
              {
                v45 = TRILogCategory_Server();
                if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
                {
                  buf = 138543362;
                  v81 = v41;
                  _os_log_error_impl(&dword_26F567000, v45, OS_LOG_TYPE_ERROR, "Unable to nil out MARef by creating a blank file at %{public}@", &buf, 0xCu);
                }
              }
            }
          }

          LODWORD(v17) = v68;
LABEL_26:
          v13 = v66;
        }

LABEL_27:

        goto LABEL_28;
      }

      if (![v22 hasAsset])
      {
        goto LABEL_28;
      }

      v23 = [v22 asset];
      if (![v23 hasCloudKitIndex])
      {
        goto LABEL_27;
      }

      v24 = [v22 hasPath];

      if (!v24)
      {
        goto LABEL_28;
      }

      v25 = [v19 factor];
      v26 = [v25 name];
      v27 = [v67 containsObject:v26];

      if (v27)
      {
        if ([v22 isOnDemand])
        {
          v28 = [v19 factor];
          v29 = [v61 treatmentId];
          v30 = [(TRIFBClientTreatmentStorage *)v65 _assetURLForFactor:v28 treatmentId:v29];

          v23 = [v30 path];
          if (!v23)
          {
            v49 = [MEMORY[0x277CCA890] currentHandler];
            [v49 handleFailureInMethod:v59 object:v65 file:@"TRIFBClientTreatmentStorage.m" lineNumber:669 description:{@"Expression was unexpectedly nil/false: %@", @"url.path"}];
          }

          [v62 addObject:v23];
          [v22 setPath:0];
        }

        else
        {
          v23 = TRILogCategory_Server();
          if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
          {
            v46 = [v19 factor];
            v47 = [v46 name];
            v48 = [v61 treatmentId];
            buf = 138543618;
            v81 = v47;
            v82 = 2112;
            v83 = v48;
            _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "Factor %{public}@ for treatment %@ is not on-demand.", &buf, 0x16u);
          }

          LODWORD(v17) = 0;
        }

        goto LABEL_26;
      }

      v13 = v66;
LABEL_28:

      objc_autoreleasePoolPop(v20);
      ++v18;
    }

    while (v15 != v18);
    v50 = [v13 countByEnumeratingWithState:&v75 objects:v84 count:16];
    v15 = v50;
  }

  while (v50);
LABEL_37:

  v72 = 0u;
  v73 = 0u;
  v70 = 0u;
  v71 = 0u;
  v51 = v62;
  v52 = [v51 countByEnumeratingWithState:&v70 objects:v79 count:16];
  if (v52)
  {
    v53 = v52;
    v54 = *v71;
    do
    {
      for (i = 0; i != v53; ++i)
      {
        if (*v71 != v54)
        {
          objc_enumerationMutation(v51);
        }

        v56 = *(*(&v70 + 1) + 8 * i);
        v69 = 0;
        if (![TRIReferenceManagedDir removeFileInManagedDirWithPath:v56 inUseDeletionBehavior:1 wasDeleted:&v69])
        {
          v17 = TRILogCategory_Server();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            buf = 138543362;
            v81 = v56;
            _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Failed to remove file %{public}@ in managed dir", &buf, 0xCu);
          }

          LOBYTE(v17) = 0;
        }
      }

      v53 = [v51 countByEnumeratingWithState:&v70 objects:v79 count:16];
    }

    while (v53);
  }

  v57 = *MEMORY[0x277D85DE8];
  return v17 & 1;
}

- (BOOL)_linkAssetsUpdatingTreatment:(id)a3
{
  v108 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v90 = [[TRIAssetStore alloc] initWithPaths:self->_paths];
  v6 = [v5 factorLevelArray];
  v7 = [v6 count];

  if (!v7)
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v66 = [v5 treatmentId];
      *buf = 138412290;
      v102 = v66;
      _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "Treatment %@ has no factor levels. Proceeding without linking assets.", buf, 0xCu);
    }

    v65 = 1;
    goto LABEL_73;
  }

  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  v98 = 0u;
  v8 = [v5 factorLevelArray];
  v93 = [v8 countByEnumeratingWithState:&v97 objects:v107 count:16];
  if (!v93)
  {

LABEL_56:
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v67 = [v5 treatmentId];
      *buf = 138543362;
      v102 = v67;
      _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Unable to find a namespace name from factor levels in treatment %{public}@", buf, 0xCu);
    }

LABEL_72:
    v65 = 0;
    goto LABEL_73;
  }

  v83 = a2;
  v88 = self;
  v9 = 0;
  v92 = *v98;
  v87 = v5;
  v89 = v8;
  do
  {
    v10 = 0;
    v11 = v9;
    do
    {
      if (*v98 != v92)
      {
        objc_enumerationMutation(v8);
      }

      v12 = *(*(&v97 + 1) + 8 * v10);
      context = objc_autoreleasePoolPush();
      v13 = [v12 factor];
      v9 = [v13 namespaceName];

      v14 = [v12 level];
      v15 = [v14 fileOrDirectoryLevelWithIsDir:0];

      if (!v15)
      {
        v32 = [v12 level];
        v33 = [v32 levelOneOfCase];

        if (v33 == 104)
        {
          v91 = v9;
          v34 = [v12 factor];
          v35 = [v34 namespaceString];

          if (!v35)
          {
            v20 = TRILogCategory_Server();
            if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_65;
            }

            v68 = [v5 treatmentId];
            v69 = [v12 factor];
            v70 = [v69 name];
            *buf = 138543618;
            v102 = v68;
            v103 = 2114;
            v104 = v70;
            _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "Treatment %{public}@ has factor %{public}@ with missing namespaceString.", buf, 0x16u);
            goto LABEL_75;
          }

          v36 = [v12 level];
          v20 = [v36 mobileAssetReferenceValue];

          if (![v20 hasAssetType]|| ![v20 hasAssetSpecifier]|| ([v20 hasAssetVersion]& 1) == 0)
          {
            v68 = TRILogCategory_Server();
            if (!os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
            {
LABEL_59:

              goto LABEL_65;
            }

            v69 = [v5 treatmentId];
            v70 = [v12 factor];
            v81 = [v70 name];
            *buf = 138543618;
            v102 = v69;
            v103 = 2114;
            v104 = v81;
            _os_log_error_impl(&dword_26F567000, v68, OS_LOG_TYPE_ERROR, "Treatment %{public}@ has factor %{public}@ with incomplete MobileAssetReference.", buf, 0x16u);

LABEL_75:
            v8 = v89;

            goto LABEL_59;
          }

          v37 = [v12 factor];
          v38 = [v5 treatmentId];
          v39 = [v37 namespaceName];
          v40 = [(TRIFBClientTreatmentStorage *)v88 _baseUrlForTreatment:v38 namespaceName:v39];

          v85 = v40;
          v41 = [v40 path];
          if (!v41)
          {
            v53 = [MEMORY[0x277CCA890] currentHandler];
            [v53 handleFailureInMethod:v83 object:v88 file:@"TRIFBClientTreatmentStorage.m" lineNumber:796 description:{@"Expression was unexpectedly nil/false: %@", @"targetURL.path"}];
          }

          v42 = objc_opt_class();
          v86 = v37;
          v43 = [v37 name];
          v44 = [v42 relPathForMAReferenceWithFactorName:v43];

          v84 = v44;
          v45 = [v41 stringByAppendingPathComponent:v44];
          v46 = [v45 stringByDeletingLastPathComponent];
          v47 = objc_alloc(MEMORY[0x277D73740]);
          v48 = [v20 assetType];
          v49 = [v20 assetSpecifier];
          v50 = [v20 assetVersion];
          v51 = [v47 initWithType:v48 specifier:v49 version:v50];

          [MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:v46];
          if ([v20 hasIsFileFactor])
          {
            v52 = [v20 isFileFactor];
          }

          else
          {
            v52 = 0;
          }

          v5 = v87;
          if (![(TRIAssetStore *)v90 referenceMAAutoAssetWithId:v51 isFileFactor:v52 usingCurrentPath:v45 futurePath:v45])
          {
            v71 = TRILogCategory_Server();
            if (os_log_type_enabled(v71, OS_LOG_TYPE_ERROR))
            {
              *buf = 138543362;
              v102 = v45;
              _os_log_error_impl(&dword_26F567000, v71, OS_LOG_TYPE_ERROR, "Unable to reference maAutoAsset at %{public}@", buf, 0xCu);
            }

            v8 = v89;
LABEL_65:
            v72 = context;
LABEL_70:

            objc_autoreleasePoolPop(v72);
            v9 = v91;
LABEL_71:

            goto LABEL_72;
          }

          v9 = v91;
          v8 = v89;
        }

LABEL_38:

        objc_autoreleasePoolPop(context);
        goto LABEL_39;
      }

      if (![v15 hasAsset])
      {
        goto LABEL_38;
      }

      v16 = [v15 asset];
      v17 = [v16 hasAssetId];

      if (!v17)
      {
        goto LABEL_38;
      }

      v91 = v9;
      v18 = [v15 asset];
      v19 = [v18 assetId];
      v20 = TRIValidateAssetId();

      if (!v20)
      {
        v73 = TRILogCategory_Server();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          v74 = [v5 treatmentId];
          v75 = [v15 asset];
          v76 = [v75 assetId];
          v77 = [v12 factor];
          v78 = [v77 name];
          *buf = 138412802;
          v102 = v74;
          v103 = 2114;
          v104 = v76;
          v105 = 2114;
          v106 = v78;
          _os_log_error_impl(&dword_26F567000, v73, OS_LOG_TYPE_ERROR, "Treatment %@ has unsuitable asset id %{public}@ for factor %{public}@.", buf, 0x20u);

          v8 = v89;
          goto LABEL_77;
        }

LABEL_69:
        v72 = context;

        goto LABEL_70;
      }

      if (([v12 hasFactor] & 1) == 0)
      {
        v73 = TRILogCategory_Server();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
        {
          v74 = [v5 treatmentId];
          *buf = 138412290;
          v102 = v74;
          _os_log_error_impl(&dword_26F567000, v73, OS_LOG_TYPE_ERROR, "Treatment %@ has missing factor.", buf, 0xCu);
LABEL_77:
        }

        goto LABEL_69;
      }

      v21 = [v12 factor];
      v22 = [v5 treatmentId];
      v23 = [(TRIFBClientTreatmentStorage *)v88 _assetURLForFactor:v21 treatmentId:v22];

      v24 = [v23 path];
      if (!v24)
      {
        v54 = [MEMORY[0x277CCA890] currentHandler];
        [v54 handleFailureInMethod:v83 object:v88 file:@"TRIFBClientTreatmentStorage.m" lineNumber:751 description:{@"Expression was unexpectedly nil/false: %@", @"targetURL.path"}];
      }

      v25 = [v24 stringByDeletingLastPathComponent];
      v26 = [MEMORY[0x277CCAA00] defaultManager];
      v96 = 0;
      v27 = [v26 createDirectoryAtPath:v25 withIntermediateDirectories:1 attributes:0 error:&v96];
      v28 = v96;

      if ((v27 & 1) == 0)
      {
        v29 = TRILogCategory_Server();
        if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v102 = v28;
          _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "Failed to create directory for factor: %{public}@", buf, 0xCu);
        }
      }

      if ([v15 hasIsOnDemand] && objc_msgSend(v15, "isOnDemand") && !-[TRIAssetStore hasAssetWithIdentifier:type:](v90, "hasAssetWithIdentifier:type:", v20, 0))
      {
        v31 = 0;
        v30 = 1;
      }

      else if ([(TRIAssetStore *)v90 linkAssetWithIdentifier:v20 toPath:v24])
      {
        [v15 setPath:v24];
        v30 = 0;
        v31 = 1;
      }

      else
      {
        v31 = 0;
        v30 = 0;
      }

      v5 = v87;
      v9 = v91;
      v8 = v89;
      if (v31)
      {
        goto LABEL_38;
      }

      objc_autoreleasePoolPop(context);
      if (!v30)
      {
        goto LABEL_71;
      }

LABEL_39:
      ++v10;
      v11 = v9;
    }

    while (v93 != v10);
    v55 = [v8 countByEnumeratingWithState:&v97 objects:v107 count:16];
    v93 = v55;
  }

  while (v55);

  if (!v9)
  {
    goto LABEL_56;
  }

  v56 = [v5 treatmentId];
  v57 = [(TRIFBClientTreatmentStorage *)v88 _baseUrlForTreatment:v56 namespaceName:v9];
  v58 = [v57 path];

  if (v58)
  {
    v59 = [MEMORY[0x277CCAA00] defaultManager];
    v95 = 0;
    v60 = [v59 createDirectoryAtPath:v58 withIntermediateDirectories:1 attributes:0 error:&v95];
    v61 = v95;

    if ((v60 & 1) == 0)
    {
      v62 = TRILogCategory_Server();
      if (os_log_type_enabled(v62, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543618;
        v102 = v58;
        v103 = 2114;
        v104 = v61;
        _os_log_error_impl(&dword_26F567000, v62, OS_LOG_TYPE_ERROR, "Failed to create directory for treatment at %{public}@: %{public}@", buf, 0x16u);
      }
    }

    v63 = v58;
    v64 = [TRIReferenceManagedDir createFromDir:v63];

    if (v64)
    {
      v65 = 1;
      goto LABEL_84;
    }

    v82 = TRILogCategory_Server();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v102 = v63;
      _os_log_error_impl(&dword_26F567000, v82, OS_LOG_TYPE_ERROR, "Failed to create reference-managed directory at %{public}@ for factor", buf, 0xCu);
    }
  }

  else
  {
    v61 = TRILogCategory_Server();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v102 = v5;
      _os_log_error_impl(&dword_26F567000, v61, OS_LOG_TYPE_ERROR, "Could not get base URL path for treatment %{public}@", buf, 0xCu);
    }
  }

  v65 = 0;
LABEL_84:

LABEL_73:
  v79 = *MEMORY[0x277D85DE8];
  return v65;
}

+ (id)relPathForMAReferenceWithFactorName:(id)a3
{
  v3 = [a3 triFilenameForFactorName];
  v4 = [@"maRefs" stringByAppendingPathComponent:v3];

  return v4;
}

- (BOOL)_saveNamespacePartitionedTreatmentsForTreatment:(id)a3 forNamespaceNames:(id)a4
{
  v38 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = a4;
  v23 = v5;
  v24 = [v5 treatmentId];
  if (v24)
  {
    v7 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [v5 factorLevelArray];
    v8 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
    if (v8)
    {
      v9 = *v31;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v31 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v30 + 1) + 8 * i);
          v12 = objc_autoreleasePoolPush();
          v13 = [v11 factor];
          v14 = [v13 namespaceString];

          if (!v14)
          {
            v18 = TRILogCategory_Server();
            if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
            {
              LODWORD(buf) = 138543362;
              *(&buf + 4) = v11;
              _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Can't save namespace-partitioned treatments: namespaceString is nil for %{public}@", &buf, 0xCu);
            }

            objc_autoreleasePoolPop(v12);
            goto LABEL_21;
          }

          if (!v6 || [v6 containsObject:v14])
          {
            v15 = [v7 objectForKeyedSubscript:v14];
            if (!v15)
            {
              v15 = objc_opt_new();
              [v15 setTreatmentId:v24];
              [v7 setObject:v15 forKeyedSubscript:v14];
            }

            v16 = [v15 factorLevelArray];
            [v16 addObject:v11];
          }

          objc_autoreleasePoolPop(v12);
        }

        v8 = [obj countByEnumeratingWithState:&v30 objects:v37 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    *&buf = 0;
    *(&buf + 1) = &buf;
    v35 = 0x2020000000;
    v36 = 1;
    v26[0] = MEMORY[0x277D85DD0];
    v26[1] = 3221225472;
    v26[2] = __97__TRIFBClientTreatmentStorage__saveNamespacePartitionedTreatmentsForTreatment_forNamespaceNames___block_invoke;
    v26[3] = &unk_279DE2860;
    v26[4] = self;
    p_buf = &buf;
    v29 = a2;
    v27 = v24;
    [v7 enumerateKeysAndObjectsUsingBlock:v26];
    v17 = *(*(&buf + 1) + 24);

    _Block_object_dispose(&buf, 8);
  }

  else
  {
    v7 = TRILogCategory_Server();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      LOWORD(buf) = 0;
      _os_log_error_impl(&dword_26F567000, v7, OS_LOG_TYPE_ERROR, "Can't save namespace-partitioned treatments: treatmentId is nil", &buf, 2u);
    }

LABEL_21:
    v17 = 0;
  }

  v19 = *MEMORY[0x277D85DE8];
  return v17 & 1;
}

void __97__TRIFBClientTreatmentStorage__saveNamespacePartitionedTreatmentsForTreatment_forNamespaceNames___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v34 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  v10 = [*(a1 + 32) urlForFactorsWithTreatmentId:*(a1 + 40) namespaceName:v7];
  v11 = [v10 URLByDeletingLastPathComponent];
  if (!v11)
  {
    v26 = [MEMORY[0x277CCA890] currentHandler];
    [v26 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIFBClientTreatmentStorage.m" lineNumber:883 description:{@"Invalid parameter not satisfying: %@", @"referenceURL"}];
  }

  if ([*(a1 + 32) _resolveAssetPathsInTreatment:v8 usingReferenceURL:v11])
  {
    v28 = v9;
    v12 = [v8 data];
    if (!v12)
    {
      v27 = [MEMORY[0x277CCA890] currentHandler];
      [v27 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIFBClientTreatmentStorage.m" lineNumber:894 description:{@"Invalid parameter not satisfying: %@", @"data"}];
    }

    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v29 = 0;
    v14 = [v13 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v29];
    v15 = v29;

    if ((v14 & 1) == 0)
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v31 = v15;
        _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Failed to create directory: %{public}@", buf, 0xCu);
      }
    }

    v17 = [v10 path];

    if (v17 && (v18 = *(a1 + 32), [v10 path], v19 = objc_claimAutoreleasedReturnValue(), LOBYTE(v18) = objc_msgSend(v18, "_writeFactorLevelsToDisk:namespaceName:writeToPath:", v8, v7, v19), v19, (v18 & 1) != 0))
    {
      v20 = TRILogCategory_Server();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(a1 + 40);
        v22 = [v10 path];
        *buf = 138543618;
        v31 = v21;
        v32 = 2114;
        v33 = v22;
        _os_log_impl(&dword_26F567000, v20, OS_LOG_TYPE_DEFAULT, "Wrote treament %{public}@ --> %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v24 = TRILogCategory_Server();
      if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v31 = v15;
        _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "Unable to write serialized namespace treatment: %{public}@", buf, 0xCu);
      }

      *(*(*(a1 + 48) + 8) + 24) = 0;
      *a4 = 1;
    }

    v9 = v28;
  }

  else
  {
    v23 = TRILogCategory_Server();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v11;
      _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "Unable to resolve asset paths with reference URL %@", buf, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    *a4 = 1;
  }

  objc_autoreleasePoolPop(v9);
  v25 = *MEMORY[0x277D85DE8];
}

- (BOOL)_writeFactorLevelsToDisk:(id)a3 namespaceName:(id)a4 writeToPath:(id)a5
{
  v62 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v35 = a4;
  v36 = a5;
  v10 = [v9 data];
  v11 = 2 * [v10 length];

  v55 = 0;
  v12 = [objc_alloc(MEMORY[0x277CED180]) initWithFileAtPath:v36 capacity:v11 error:&v55];
  v34 = v55;
  if (v12)
  {
    v13 = objc_opt_new();
    *buf = 0;
    *&buf[8] = buf;
    *&buf[16] = 0x2020000000;
    v61 = 0;
    v53[0] = 0;
    v53[1] = v53;
    v53[2] = 0x2020000000;
    v54 = 0;
    v49 = 0;
    v50 = &v49;
    v51 = 0x2020000000;
    v52 = 0;
    v14 = [v9 factorLevelArray];
    v42[0] = MEMORY[0x277D85DD0];
    v42[1] = 3221225472;
    v42[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke;
    v42[3] = &unk_279DE2D18;
    v46 = &v49;
    v15 = v9;
    v43 = v15;
    v47 = buf;
    v16 = v12;
    v44 = v16;
    v48 = v53;
    v17 = v13;
    v45 = v17;
    [v14 enumerateObjectsUsingBlock:v42];

    if (*(*&buf[8] + 24))
    {
      v18 = 0;
    }

    else
    {
      v19 = [v17 count];
      if (v19 != v50[3])
      {
        v32 = [MEMORY[0x277CCA890] currentHandler];
        [v32 handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:1158 description:@"Failed to serialize one or more factor levels"];
      }

      v20 = [v16 trifbCreateSortedVectorOfFactorLevelWithOffsets:v17];
      v21 = [v15 treatmentId];
      v22 = [v16 createString:v21];

      v23 = [v16 createString:v35];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_140;
      v38[3] = &unk_279DE2D40;
      v33 = v20;
      v39 = v33;
      v24 = v22;
      v40 = v24;
      v25 = v23;
      v41 = v25;
      v26 = [v16 trifbCreateFastFactorLevelsUsingBlock:v38];
      v37 = 0;
      v18 = [v16 trifbFinishBufferWithRootFastFactorLevelsOfs:v26 error:&v37];
      v27 = v37;
      if ((v18 & 1) == 0)
      {
        v28 = TRILogCategory_Server();
        if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
        {
          v31 = [v15 treatmentId];
          *v56 = 138543618;
          v57 = v31;
          v58 = 2114;
          v59 = v27;
          _os_log_error_impl(&dword_26F567000, v28, OS_LOG_TYPE_ERROR, "Failed to write factor levels for treatment %{public}@: %{public}@", v56, 0x16u);
        }
      }
    }

    _Block_object_dispose(&v49, 8);
    _Block_object_dispose(v53, 8);
    _Block_object_dispose(buf, 8);
  }

  else
  {
    v17 = TRILogCategory_Server();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      *&buf[4] = v36;
      *&buf[12] = 2114;
      *&buf[14] = v34;
      _os_log_error_impl(&dword_26F567000, v17, OS_LOG_TYPE_ERROR, "Failed to create factor levels fb at %{public}@: %{public}@", buf, 0x16u);
    }

    v18 = 0;
  }

  v29 = *MEMORY[0x277D85DE8];
  return v18;
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v178 = *MEMORY[0x277D85DE8];
  v5 = a2;
  ++*(*(*(a1 + 56) + 8) + 24);
  if ([v5 hasFactor] && (objc_msgSend(v5, "factor"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "hasName"), v6, (v7 & 1) != 0))
  {
    if ([v5 hasLevel])
    {
      v8 = *(a1 + 40);
      v9 = [v5 factor];
      v10 = [v9 name];
      v11 = [v8 createString:v10];

      v12 = *(a1 + 40);
      v13 = [v5 factor];
      v14 = [v13 namespaceName];
      v15 = [v12 createString:v14];

      v16 = *(a1 + 40);
      v17 = [v5 factor];
      v18 = [v17 id_p];
      v19 = [v16 createString:v18];

      v20 = objc_alloc(MEMORY[0x277CBEB18]);
      v21 = [v5 level];
      v22 = [v20 initWithCapacity:{objc_msgSend(v21, "metadata_Count")}];

      v23 = [v5 level];
      v24 = [v23 metadata];
      v169[0] = MEMORY[0x277D85DD0];
      v169[1] = 3221225472;
      v169[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_121;
      v169[3] = &unk_279DE2C28;
      v170 = *(a1 + 40);
      v171 = v22;
      v25 = v22;
      [v24 enumerateKeysAndObjectsUsingBlock:v169];

      v26 = [*(a1 + 40) trifbCreateSortedVectorOfFactorMetadataKeyValueWithOffsets:v25];

      *buf = 0;
      *&buf[8] = buf;
      *&buf[16] = 0x2020000000;
      v177 = 0;
      v161[0] = MEMORY[0x277D85DD0];
      v161[1] = 3221225472;
      v161[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_3;
      v161[3] = &unk_279DE2C50;
      v124 = v19;
      v162 = v124;
      v122 = v11;
      v163 = v122;
      v123 = v15;
      v164 = v123;
      v27 = v26;
      v28 = *(a1 + 72);
      v125 = v27;
      v165 = v27;
      v167 = v28;
      v126 = v5;
      v166 = v126;
      v168 = buf;
      v29 = MEMORY[0x2743948D0](v161);
      v30 = [v126 level];
      v31 = [v30 levelOneOfCase];

      if (v31 <= 14)
      {
        switch(v31)
        {
          case 10:
            v90 = objc_alloc(MEMORY[0x277D736D8]);
            v91 = [v126 level];
            v34 = [v90 initWithVal:{objc_msgSend(v91, "BOOLeanValue")}];

            v92 = [*(a1 + 40) trifbCreateBoxedBoolFromBoxedBool:v34];
            v93 = *(a1 + 40);
            v158[0] = MEMORY[0x277D85DD0];
            v158[1] = 3221225472;
            v158[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_4;
            v158[3] = &unk_279DE2C78;
            v37 = v92;
            v159 = v37;
            v160 = v29;
            v94 = [v93 trifbCreateFactorLevelUsingBlock:v158];
            [*(a1 + 48) addObject:v94];

            break;
          case 11:
            v95 = *(a1 + 40);
            v96 = [v126 level];
            v97 = [v96 stringValue];
            v98 = [v95 createString:v97];

            v99 = *(a1 + 40);
            v155[0] = MEMORY[0x277D85DD0];
            v155[1] = 3221225472;
            v155[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_5;
            v155[3] = &unk_279DE2C78;
            v34 = v98;
            v156 = v34;
            v157 = v29;
            v100 = [v99 trifbCreateFactorLevelUsingBlock:v155];
            [*(a1 + 48) addObject:v100];

            v37 = v156;
            break;
          case 13:
            v32 = objc_alloc(MEMORY[0x277D736E8]);
            v33 = [v126 level];
            v34 = [v32 initWithVal:{objc_msgSend(v33, "longValue")}];

            v35 = [*(a1 + 40) trifbCreateBoxedInt64FromBoxedInt64:v34];
            v36 = *(a1 + 40);
            v152[0] = MEMORY[0x277D85DD0];
            v152[1] = 3221225472;
            v152[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_6;
            v152[3] = &unk_279DE2C78;
            v37 = v35;
            v153 = v37;
            v154 = v29;
            v38 = [v36 trifbCreateFactorLevelUsingBlock:v152];
            [*(a1 + 48) addObject:v38];

            break;
          default:
            goto LABEL_35;
        }

        goto LABEL_34;
      }

      if ((v31 - 100) >= 2)
      {
        if (v31 == 15)
        {
          v101 = objc_alloc(MEMORY[0x277D736E0]);
          v102 = [v126 level];
          [v102 doubleValue];
          v34 = [v101 initWithVal:?];

          v103 = [*(a1 + 40) trifbCreateBoxedDoubleFromBoxedDouble:v34];
          v104 = *(a1 + 40);
          v149[0] = MEMORY[0x277D85DD0];
          v149[1] = 3221225472;
          v149[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_7;
          v149[3] = &unk_279DE2C78;
          v37 = v103;
          v150 = v37;
          v151 = v29;
          v105 = [v104 trifbCreateFactorLevelUsingBlock:v149];
          [*(a1 + 48) addObject:v105];
        }

        else
        {
          if (v31 != 104)
          {
            goto LABEL_35;
          }

          v41 = [v126 level];
          v42 = [v41 mobileAssetReferenceValue];

          if (![v42 hasAssetType] || !objc_msgSend(v42, "hasAssetSpecifier") || (objc_msgSend(v42, "hasAssetVersion") & 1) == 0)
          {
            v107 = TRILogCategory_Server();
            if (os_log_type_enabled(v107, OS_LOG_TYPE_ERROR))
            {
              v115 = [v126 factor];
              v116 = [v115 name];
              v117 = [*(a1 + 32) treatmentId];
              *v172 = 138543618;
              v173 = v116;
              v174 = 2114;
              v175 = v117;
              _os_log_error_impl(&dword_26F567000, v107, OS_LOG_TYPE_ERROR, "Factor %{public}@ has missing MAAutoAsset metadata in treatment %{public}@.", v172, 0x16u);
            }

            *(*(*(a1 + 64) + 8) + 24) = 1;
            *a4 = 1;

            goto LABEL_39;
          }

          v43 = *(a1 + 40);
          v44 = [v42 assetType];
          v45 = [v43 createString:v44];

          v46 = *(a1 + 40);
          v47 = [v42 assetSpecifier];
          v48 = [v46 createString:v47];

          v49 = *(a1 + 40);
          v50 = [v42 assetVersion];
          v51 = [v49 createString:v50];

          v52 = *(a1 + 40);
          v131[0] = MEMORY[0x277D85DD0];
          v131[1] = 3221225472;
          v131[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_133;
          v131[3] = &unk_279DE2CF0;
          v37 = v45;
          v132 = v37;
          v53 = v48;
          v133 = v53;
          v54 = v51;
          v134 = v54;
          v34 = v42;
          v135 = v34;
          v55 = [v52 trifbCreateMobileAssetReferenceUsingBlock:v131];
          v56 = *(a1 + 40);
          v128[0] = MEMORY[0x277D85DD0];
          v128[1] = 3221225472;
          v128[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_2_135;
          v128[3] = &unk_279DE2C78;
          v57 = v55;
          v129 = v57;
          v130 = v29;
          v58 = [v56 trifbCreateFactorLevelUsingBlock:v128];
          [*(a1 + 48) addObject:v58];
        }

LABEL_34:

LABEL_35:
        if ((*(*&buf[8] + 24) & 1) == 0)
        {
          v106 = TRILogCategory_Server();
          if (os_log_type_enabled(v106, OS_LOG_TYPE_ERROR))
          {
            v111 = [v126 factor];
            v112 = [v111 name];
            v113 = [v126 level];
            v114 = [v113 levelOneOfCase];
            *v172 = 138543618;
            v173 = v112;
            v174 = 1024;
            LODWORD(v175) = v114;
            _os_log_error_impl(&dword_26F567000, v106, OS_LOG_TYPE_ERROR, "Factor %{public}@ has unsupported factor level with type %d.", v172, 0x12u);
          }

          *(*(*(a1 + 64) + 8) + 24) = 1;
          *a4 = 1;
        }

LABEL_39:

        _Block_object_dispose(buf, 8);
        goto LABEL_12;
      }

      v60 = [v126 level];
      v61 = [v60 fileOrDirectoryLevelWithIsDir:0];

      if ([v61 hasAsset])
      {
        v62 = [v61 asset];
        if ([v62 hasCloudKitContainer])
        {
LABEL_29:

          goto LABEL_30;
        }

        v63 = [v61 isOnDemand];

        if (v63)
        {
          v64 = TRILogCategory_Server();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_DEBUG))
          {
            v118 = [v126 factor];
            v119 = [v118 name];
            *v172 = 138543362;
            v173 = v119;
            _os_log_debug_impl(&dword_26F567000, v64, OS_LOG_TYPE_DEBUG, "Populating system default cloudKitContainer on asset for %{public}@", v172, 0xCu);
          }

          v62 = [v61 asset];
          [v62 setCloudKitContainer:1];
          goto LABEL_29;
        }
      }

LABEL_30:
      v65 = *(a1 + 40);
      v66 = [v61 path];
      v121 = [v65 createString:v66];

      v67 = *(a1 + 40);
      v68 = [v61 asset];
      v69 = [v68 assetId];
      v70 = [v67 createString:v69];

      v71 = *(a1 + 40);
      v72 = [v61 asset];
      v73 = [v72 treatmentId];
      v74 = [v71 createString:v73];

      v75 = *(a1 + 40);
      v76 = [v61 asset];
      v77 = [v76 name];
      v78 = [v75 createString:v77];

      v79 = *(a1 + 40);
      v146[0] = MEMORY[0x277D85DD0];
      v146[1] = 3221225472;
      v146[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_128;
      v146[3] = &unk_279DE2CA0;
      v80 = v61;
      v147 = v80;
      v120 = v74;
      v148 = v120;
      v81 = [v79 trifbCreateCloudKitTreatmentRecordAssetUsingBlock:v146];
      v82 = *(a1 + 40);
      v139[0] = MEMORY[0x277D85DD0];
      v139[1] = 3221225472;
      v139[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_2_130;
      v139[3] = &unk_279DE2CC8;
      v34 = v80;
      v140 = v34;
      v37 = v121;
      v141 = v37;
      v142 = v126;
      v83 = v70;
      v143 = v83;
      v84 = v81;
      v144 = v84;
      v85 = v78;
      v145 = v85;
      v86 = [v82 trifbCreateTrialManagedAssetUsingBlock:v139];
      v87 = *(a1 + 40);
      v136[0] = MEMORY[0x277D85DD0];
      v136[1] = 3221225472;
      v136[2] = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_3_132;
      v136[3] = &unk_279DE2C78;
      v88 = v86;
      v137 = v88;
      v138 = v29;
      v89 = [v87 trifbCreateFactorLevelUsingBlock:v136];
      [*(a1 + 48) addObject:v89];

      goto LABEL_34;
    }

    v39 = TRILogCategory_Server();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v108 = [v5 factor];
      v109 = [v108 name];
      v110 = [*(a1 + 32) treatmentId];
      *buf = 138543618;
      *&buf[4] = v109;
      *&buf[12] = 2114;
      *&buf[14] = v110;
      _os_log_error_impl(&dword_26F567000, v39, OS_LOG_TYPE_ERROR, "Factor %{public}@ has missing level in treatment %{public}@.", buf, 0x16u);
    }
  }

  else
  {
    v39 = TRILogCategory_Server();
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      v59 = [*(a1 + 32) treatmentId];
      *buf = 138543362;
      *&buf[4] = v59;
      _os_log_error_impl(&dword_26F567000, v39, OS_LOG_TYPE_ERROR, "Factor level has missing factor name in treatment %{public}@.", buf, 0xCu);
    }
  }

  *(*(*(a1 + 64) + 8) + 24) = 1;
  *a4 = 1;
LABEL_12:

  v40 = *MEMORY[0x277D85DE8];
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_121(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);
  v6 = a3;
  v7 = [v5 createString:a2];
  v8 = [*(a1 + 32) createString:v6];

  v9 = *(a1 + 32);
  v13 = MEMORY[0x277D85DD0];
  v14 = 3221225472;
  v15 = __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_2;
  v16 = &unk_279DE2C00;
  v17 = v7;
  v18 = v8;
  v10 = v8;
  v11 = v7;
  v12 = [v9 trifbCreateFactorMetadataKeyValueUsingBlock:&v13];
  [*(a1 + 40) addObject:{v12, v13, v14, v15, v16}];
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setKey:v3];
  [v4 setVal:*(a1 + 40)];
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_3(uint64_t a1, void *a2)
{
  v6 = a2;
  [v6 setFactorId:*(a1 + 32)];
  [v6 setName:*(a1 + 40)];
  [v6 setFactorNamespaceName:*(a1 + 48)];
  [v6 setMetadata:*(a1 + 56)];
  ++*(*(*(a1 + 72) + 8) + 24);
  [v6 setCacheKey:?];
  if (populateNamespaceIdInTreatmentSchema == 1)
  {
    v3 = [*(a1 + 64) factor];
    v4 = [v3 hasNamespaceId];

    if (v4)
    {
      v5 = [*(a1 + 64) factor];
      [v6 setNamespaceId:{objc_msgSend(v5, "namespaceId")}];
    }
  }

  *(*(*(a1 + 80) + 8) + 24) = 1;
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_4(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithBoolVal:v3];
  (*(*(a1 + 40) + 16))();
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_5(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithStringVal:v3];
  (*(*(a1 + 40) + 16))();
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_6(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithInt64Val:v3];
  (*(*(a1 + 40) + 16))();
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_7(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithDoubleVal:v3];
  (*(*(a1 + 40) + 16))();
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_128(uint64_t a1, void *a2)
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

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_2_130(uint64_t a1, void *a2)
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

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_3_132(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithTrialAssetVal:v3];
  (*(*(a1 + 40) + 16))();
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_133(uint64_t a1, void *a2)
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

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_2_135(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  [v4 setLevelWithMaRefVal:v3];
  (*(*(a1 + 40) + 16))();
}

void __82__TRIFBClientTreatmentStorage__writeFactorLevelsToDisk_namespaceName_writeToPath___block_invoke_140(void *a1, void *a2)
{
  v3 = a1[4];
  v4 = a2;
  [v4 setLevels:v3];
  [v4 setSourceWithTreatmentId:a1[5]];
  [v4 setNamespaceName:a1[6]];
}

- (id)_assetURLForFactor:(id)a3 treatmentId:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 namespaceString];
  if (!v9)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:1187 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  v10 = [(TRIFBClientTreatmentStorage *)self _baseUrlForTreatment:v7 namespaceName:v9];
  v11 = MEMORY[0x277D73758];
  v12 = [v10 path];
  if (!v12)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:1189 description:{@"Expression was unexpectedly nil/false: %@", @"dir.path"}];
  }

  v13 = [v11 pathForFactor:v8 directory:v12];

  v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v13];

  return v14;
}

- (id)_baseUrlForTreatment:(id)a3 namespaceName:(id)a4
{
  v6 = MEMORY[0x277D737F8];
  v7 = a4;
  v8 = a3;
  v9 = [[v6 alloc] initWithPaths:self->_paths];
  v10 = [v9 baseUrlForTreatment:v8 namespaceName:v7];

  return v10;
}

- (id)_copyFileFromURL:(id)a3 to:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = a4;
  v8 = MEMORY[0x277CBEA90];
  v9 = a3;
  v25 = 0;
  v10 = [[v8 alloc] initWithContentsOfURL:v9 options:1 error:&v25];

  v11 = v25;
  if (!v10)
  {
    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Failed to read source URL: %{public}@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  v12 = [v7 URLByDeletingLastPathComponent];
  if (!v12)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:1209 description:{@"Invalid parameter not satisfying: %@", @"parentURL"}];
  }

  v13 = [MEMORY[0x277CCAA00] defaultManager];
  v24 = 0;
  v14 = [v13 createDirectoryAtURL:v12 withIntermediateDirectories:1 attributes:0 error:&v24];
  v15 = v24;

  if ((v14 & 1) == 0)
  {
    v16 = TRILogCategory_Server();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = v15;
      _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Failed to create directory for target file: %{public}@", buf, 0xCu);
    }
  }

  v23 = 0;
  v17 = [v10 writeToURL:v7 options:268435457 error:&v23];
  v11 = v23;
  if ((v17 & 1) == 0)
  {
    v19 = TRILogCategory_Server();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "Failed to write to target URL: %{public}@", buf, 0xCu);
    }

LABEL_15:
    v18 = 0;
    goto LABEL_16;
  }

  v18 = v7;
LABEL_16:

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)urlForTreatmentWithTreatmentId:(id)a3
{
  v5 = MEMORY[0x277D737F8];
  v6 = a3;
  v7 = [[v5 alloc] initWithPaths:self->_paths];
  v8 = [v7 baseUrlForTreatment:v6 namespaceName:@"0"];

  if (!v8)
  {
    v11 = [MEMORY[0x277CCA890] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:1234 description:{@"Invalid parameter not satisfying: %@", @"treatmentBasename"}];
  }

  v9 = [v8 URLByAppendingPathExtension:@"fb"];
  if (!v9)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:1236 description:{@"Invalid parameter not satisfying: %@", @"result"}];
  }

  return v9;
}

- (BOOL)_resolveAssetPathsInTreatment:(id)a3 usingReferenceURL:(id)a4
{
  v35 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  if (([v8 hasDirectoryPath] & 1) == 0)
  {
    v27 = [MEMORY[0x277CCA890] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"TRIFBClientTreatmentStorage.m" lineNumber:1241 description:@"referenceURL must be a directory"];
  }

  v9 = [v8 triPathAsOwner:0];
  if (v9)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v10 = [v7 factorLevelArray];
    v11 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v28 = v8;
      v29 = v7;
      v13 = *v31;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = [*(*(&v30 + 1) + 8 * i) level];
          v16 = [v15 fileOrDirectoryLevelWithIsDir:0];

          if (v16 && [v16 hasPath])
          {
            v17 = MEMORY[0x277CBEBC0];
            v18 = [v16 path];
            v19 = [v17 triParseURLFromString:v18];

            if (!v19)
            {
              goto LABEL_20;
            }

            v20 = [v19 triPathAsOwner:0];
            if (!v20)
            {

LABEL_20:
              v24 = 0;
              goto LABEL_21;
            }

            v21 = v20;
            v22 = [MEMORY[0x277CCAA00] defaultManager];
            v23 = [v22 triPath:v21 relativeToParentPath:v9];

            [v16 setPath:v23];
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      v24 = 1;
LABEL_21:
      v8 = v28;
      v7 = v29;
    }

    else
    {
      v24 = 1;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];
  return v24;
}

@end