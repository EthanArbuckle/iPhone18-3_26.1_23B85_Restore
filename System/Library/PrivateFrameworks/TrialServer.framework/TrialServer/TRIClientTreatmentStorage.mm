@interface TRIClientTreatmentStorage
+ (id)relPathForMAReferenceWithFactorName:(id)a3;
- (BOOL)_deleteOnDemandAssetsWithFactorNames:(id)a3 treatment:(id)a4 namespace:(id)a5 inUseAssetDeletionBehavior:(unsigned __int8)a6;
- (BOOL)_linkAssetsUpdatingTreatment:(id)a3;
- (BOOL)_linkAssetsWithIds:(id)a3 updatingTreatment:(id)a4;
- (BOOL)_removeFactorsWithTreatmentId:(id)a3 namespaceName:(id)a4;
- (BOOL)_removeFactorsWithURL:(id)a3;
- (BOOL)_removeRolloutWithDescriptor:(id)a3 descriptorDir:(id)a4 treatmentLayer:(unint64_t)a5 namespaceName:(id)a6;
- (BOOL)_resolveAssetPathsInTreatment:(id)a3 usingReferenceURL:(id)a4;
- (BOOL)_saveNamespacePartitionedTreatmentsForTreatment:(id)a3 forNamespaceNames:(id)a4;
- (BOOL)_savePersistedTreatment:(id)a3;
- (BOOL)removeTreatmentFromLayer:(unint64_t)a3 withNamespaceName:(id)a4 upgradeNCVs:(id)a5;
- (BOOL)removeTreatmentWithTreatmentId:(id)a3;
- (BOOL)removeUnreferencedTreatmentsWithRemovedCount:(unsigned int *)a3;
- (TRIClientTreatmentStorage)initWithPaths:(id)a3;
- (TRIClientTreatmentStorage)initWithPaths:(id)a3 extractor:(id)a4;
- (id)_assetURLForFactor:(id)a3 treatmentId:(id)a4;
- (id)_baseUrlForTreatment:(id)a3 namespaceName:(id)a4;
- (id)_collectTreatments;
- (id)_copyFileFromURL:(id)a3 to:(id)a4;
- (id)_linkAssetWithId:(id)a3 treatmentId:(id)a4 assetStore:(id)a5 factor:(id)a6;
- (id)loadTreatmentWithTreatmentId:(id)a3 isFilePresent:(BOOL *)a4;
- (id)saveTreatment:(id)a3;
- (id)updateSavedTreatmentWithTreatmentId:(id)a3 linkingNewAssetIds:(id)a4 forNamespaceNames:(id)a5;
- (id)urlForFactorsWithTreatmentId:(id)a3 namespaceName:(id)a4;
- (id)urlForTreatmentWithTreatmentId:(id)a3;
@end

@implementation TRIClientTreatmentStorage

- (TRIClientTreatmentStorage)initWithPaths:(id)a3
{
  v4 = a3;
  v5 = [[TRIRemoteAssetExtractor alloc] initWithMonitoredActivity:0];
  v6 = [(TRIClientTreatmentStorage *)self initWithPaths:v4 extractor:v5];

  return v6;
}

- (TRIClientTreatmentStorage)initWithPaths:(id)a3 extractor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = TRIClientTreatmentStorage;
  v9 = [(TRIClientTreatmentStorage *)&v12 init];
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
  v40 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = objc_autoreleasePoolPush();
  if (a4)
  {
    *a4 = 1;
  }

  v8 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = [(TRIClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:v6];
  v33 = 0;
  v10 = [v8 initWithContentsOfURL:v9 options:1 error:&v33];
  v11 = v33;

  if (v10)
  {

    v32 = 0;
    v12 = [(TRIPBMessage *)TRIPersistedTreatment parseFromData:v10 error:&v32];
    v11 = v32;
    if (v12)
    {
      if (([v12 hasTreatment]& 1) != 0)
      {
        v13 = [v12 treatment];
        if (-[NSObject hasTreatmentId](v13, "hasTreatmentId") && (-[NSObject treatmentId](v13, "treatmentId"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 length], v14, v15))
        {
          v16 = [v13 treatmentId];
          v17 = [v6 isEqualToString:v16];

          if (v17)
          {
            v13 = v13;
            v18 = v13;
LABEL_26:

            goto LABEL_27;
          }

          v26 = TRILogCategory_Server();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_24;
          }

          v29 = [(TRIClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:v6];
          v30 = [v13 treatmentId];
          *buf = 138412802;
          v35 = v29;
          v36 = 2112;
          v37 = v6;
          v38 = 2112;
          v39 = v30;
          _os_log_error_impl(&dword_26F567000, v26, OS_LOG_TYPE_ERROR, "TRIClientTreatment at %@ has mismatched treatmentId (exp: %@, act: %@)", buf, 0x20u);
        }

        else
        {
          v26 = TRILogCategory_Server();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
LABEL_24:

            goto LABEL_25;
          }

          v29 = [(TRIClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:v6];
          *buf = 138412290;
          v35 = v29;
          _os_log_error_impl(&dword_26F567000, v26, OS_LOG_TYPE_ERROR, "TRIPersistedTreatment has TRIClientTreatment with nil or empty treatmentId: %@", buf, 0xCu);
        }

        goto LABEL_24;
      }

      v13 = TRILogCategory_Server();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v21 = [(TRIClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:v6];
        *buf = 138412290;
        v35 = v21;
        v22 = "TRIPersistedTreatment has missing treatment: %@";
        v23 = v13;
        v24 = 12;
        goto LABEL_16;
      }
    }

    else
    {
      v13 = TRILogCategory_Server();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
      {
        v21 = [(TRIClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:v6];
        *buf = 138412546;
        v35 = v21;
        v36 = 2114;
        v37 = v11;
        v22 = "Unable to parse TRIPersistedTreatment from %@: %{public}@";
        v23 = v13;
        v24 = 22;
LABEL_16:
        _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
      }
    }

LABEL_25:
    v18 = 0;
    goto LABEL_26;
  }

  v19 = [v11 domain];
  v20 = v19;
  if (v19 == *MEMORY[0x277CCA050])
  {
    v25 = [v11 code];

    if (a4 && v25 == 260)
    {
      *a4 = 0;
    }
  }

  else
  {
  }

  v12 = TRILogCategory_Server();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v31 = [(TRIClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:v6];
    *buf = 138412802;
    v35 = v6;
    v36 = 2112;
    v37 = v31;
    v38 = 2114;
    v39 = v11;
    _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Unable to read treatment with ID %@ from %@: %{public}@", buf, 0x20u);
  }

  v18 = 0;
LABEL_27:

  objc_autoreleasePoolPop(v7);
  v27 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)saveTreatment:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  if (![v4 hasTreatmentId] || (objc_msgSend(v4, "treatmentId"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, !v7))
  {
    v37 = TRILogCategory_Server();
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_26F567000, v37, OS_LOG_TYPE_ERROR, "TRIClientTreatmentArtifact has nil or empty treatmentId", buf, 2u);
    }

    v36 = 0;
    goto LABEL_42;
  }

  v8 = [v4 copy];

  if (![v8 factorLevelArray_Count])
  {
    goto LABEL_34;
  }

  v42 = self;
  v43 = v5;
  context = objc_autoreleasePoolPush();
  v48 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  obj = [v8 factorLevelArray];
  v47 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
  v10 = 0;
  if (!v47)
  {
    goto LABEL_33;
  }

  v46 = *v49;
  *&v9 = 138543362;
  v40 = v9;
  do
  {
    v11 = 0;
    do
    {
      if (*v49 != v46)
      {
        objc_enumerationMutation(obj);
      }

      v12 = v8;
      v13 = *(*(&v48 + 1) + 8 * v11);
      if (!v10)
      {
        v14 = [*(*(&v48 + 1) + 8 * v11) factor];
        v15 = [v14 namespaceName];
        v10 = [TRIClientFactorPackUtils aliasesInNamespace:v15];
      }

      v16 = [v13 factor];
      v17 = [v16 name];
      v18 = [v10 objectForKeyedSubscript:v17];
      v19 = v18;
      if (!v18)
      {
        v45 = [v13 factor];
        self = [v45 name];
        v19 = self;
      }

      v20 = [v13 factor];
      [v20 setName:v19];

      if (!v18)
      {
      }

      v8 = v12;
      if ([v13 hasLevel])
      {
        v21 = [v13 level];
        v22 = [v21 fileOrDirectoryLevelWithIsDir:0];

        if ([v12 hasTreatmentId])
        {
          if ([v22 hasAsset])
          {
            v23 = [v22 asset];
            v24 = [v23 hasTreatmentId];

            if ((v24 & 1) == 0)
            {
              v25 = TRILogCategory_Server();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                v31 = [v12 treatmentId];
                v32 = [v13 factor];
                v33 = [v32 name];
                *buf = 138412546;
                v53 = v31;
                v54 = 2114;
                v55 = v33;
                _os_log_debug_impl(&dword_26F567000, v25, OS_LOG_TYPE_DEBUG, "Populating treatmentId %@ on asset for %{public}@", buf, 0x16u);

                v8 = v12;
              }

              v26 = [v8 treatmentId];
              v27 = [v22 asset];
              [v27 setTreatmentId:v26];
            }
          }
        }

        if ([v8 hasTreatmentId] && objc_msgSend(v22, "hasAsset"))
        {
          v28 = [v22 asset];
          if ([v28 hasCloudKitContainer])
          {
            goto LABEL_29;
          }

          v29 = [v22 isOnDemand];

          if (v29)
          {
            v30 = TRILogCategory_Server();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              v34 = [v13 factor];
              v35 = [v34 name];
              *buf = v40;
              v53 = v35;
              _os_log_debug_impl(&dword_26F567000, v30, OS_LOG_TYPE_DEBUG, "Populating system default cloudKitContainer on asset for %{public}@", buf, 0xCu);
            }

            v28 = [v22 asset];
            [v28 setCloudKitContainer:1];
LABEL_29:
          }
        }
      }

      ++v11;
    }

    while (v47 != v11);
    v47 = [obj countByEnumeratingWithState:&v48 objects:v56 count:16];
  }

  while (v47);
LABEL_33:

  objc_autoreleasePoolPop(context);
  self = v42;
  v5 = v43;
LABEL_34:
  if ([(TRIClientTreatmentStorage *)self _linkAssetsUpdatingTreatment:v8]&& [(TRIClientTreatmentStorage *)self _saveNamespacePartitionedTreatmentsForTreatment:v8 forNamespaceNames:0]&& [(TRIClientTreatmentStorage *)self _savePersistedTreatment:v8])
  {
    v4 = v8;
    v36 = v4;
  }

  else
  {
    v36 = 0;
    v4 = v8;
  }

LABEL_42:
  objc_autoreleasePoolPop(v5);

  v38 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)updateSavedTreatmentWithTreatmentId:(id)a3 linkingNewAssetIds:(id)a4 forNamespaceNames:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_autoreleasePoolPush();
  v20 = 0;
  v12 = [(TRIClientTreatmentStorage *)self loadTreatmentWithTreatmentId:v8 isFilePresent:&v20];
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

    if ([(TRIClientTreatmentStorage *)self _linkAssetsWithIds:v9 updatingTreatment:v12]&& [(TRIClientTreatmentStorage *)self _saveNamespacePartitionedTreatmentsForTreatment:v12 forNamespaceNames:v10]&& [(TRIClientTreatmentStorage *)self _savePersistedTreatment:v12])
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
      v19 = [(TRIClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:v8];
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
                  v27 = [(TRIClientTreatmentStorage *)v31 _linkAssetWithId:v24 treatmentId:v25 assetStore:v32 factor:v26];

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
  v16 = [(TRIClientTreatmentStorage *)self _assetURLForFactor:v14 treatmentId:v12];
  v17 = [v16 URLByDeletingLastPathComponent];
  v18 = [v17 path];

  if (!v18)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:252 description:{@"Expression was unexpectedly nil/false: %@", @"[assetURL URLByDeletingLastPathComponent].path"}];
  }

  [MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:v18];
  v19 = [v16 path];
  if (!v19)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:255 description:{@"Expression was unexpectedly nil/false: %@", @"assetURL.path"}];
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

- (BOOL)removeUnreferencedTreatmentsWithRemovedCount:(unsigned int *)a3
{
  v50 = *MEMORY[0x277D85DE8];
  v4 = [(TRIClientTreatmentStorage *)self _collectTreatments];
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
        v38[2] = __74__TRIClientTreatmentStorage_removeUnreferencedTreatmentsWithRemovedCount___block_invoke;
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

void __74__TRIClientTreatmentStorage_removeUnreferencedTreatmentsWithRemovedCount___block_invoke(uint64_t a1, void *a2)
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
                v22 = [v21 URLByAppendingPathComponent:{@"treatment.pb", v39}];
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
    v48[2] = __47__TRIClientTreatmentStorage__collectTreatments__block_invoke;
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

void __47__TRIClientTreatmentStorage__collectTreatments__block_invoke(uint64_t a1, void *a2)
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
        v18 = [(TRIClientTreatmentStorage *)self removeTreatmentWithTreatmentId:v17];
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
        v18 = [(TRIClientTreatmentStorage *)self _removeRolloutWithDescriptor:v32 descriptorDir:v12 treatmentLayer:a3 namespaceName:v8];
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
      v18 = [(TRIClientTreatmentStorage *)self _removeRolloutWithDescriptor:v13 descriptorDir:v12 treatmentLayer:a3 namespaceName:v8];
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
  v49 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v44 = 0;
  v7 = [(TRIClientTreatmentStorage *)self loadTreatmentWithTreatmentId:v5 isFilePresent:&v44];
  if (v7)
  {
    v33 = a2;
    v34 = v6;
    v8 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v9 = [v7 factorLevelArray];
    v10 = [v9 countByEnumeratingWithState:&v40 objects:v48 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v41;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v41 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = [*(*(&v40 + 1) + 8 * i) factor];
          v15 = [v14 namespaceString];

          if (v15)
          {
            [v8 addObject:v15];
          }
        }

        v11 = [v9 countByEnumeratingWithState:&v40 objects:v48 count:16];
      }

      while (v11);
    }

    v38 = 0u;
    v39 = 0u;
    v36 = 0u;
    v37 = 0u;
    v16 = v8;
    v17 = [v16 countByEnumeratingWithState:&v36 objects:v47 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v37;
      LODWORD(v20) = 1;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v37 != v19)
          {
            objc_enumerationMutation(v16);
          }

          LODWORD(v20) = v20 & [(TRIClientTreatmentStorage *)self _removeFactorsWithTreatmentId:v5 namespaceName:*(*(&v36 + 1) + 8 * j)];
        }

        v18 = [v16 countByEnumeratingWithState:&v36 objects:v47 count:16];
      }

      while (v18);

      v6 = v34;
      if (!v20)
      {
        goto LABEL_33;
      }
    }

    else
    {

      v6 = v34;
    }

    v22 = [(TRIClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:v5];
    v23 = [v22 path];
    if (!v23)
    {
      v32 = [MEMORY[0x277CCA890] currentHandler];
      [v32 handleFailureInMethod:v33 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:523 description:{@"Invalid parameter not satisfying: %@", @"artifactPath"}];
    }

    v24 = [MEMORY[0x277CCAA00] defaultManager];
    v35 = 0;
    v25 = [v24 triForceRemoveItemAtPath:v23 error:&v35];
    v26 = v35;

    if (v25)
    {
      goto LABEL_25;
    }

    v27 = [v26 domain];
    v28 = v27;
    if (v27 == *MEMORY[0x277CCA050])
    {
      v29 = [v26 code];

      if (v29 == 4)
      {
LABEL_25:
        LOBYTE(v20) = 1;
LABEL_32:

LABEL_33:
        goto LABEL_34;
      }
    }

    else
    {
    }

    v20 = TRILogCategory_Server();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v46 = v26;
      _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "Failed to remove artifact: %{public}@", buf, 0xCu);
    }

    LOBYTE(v20) = 0;
    goto LABEL_32;
  }

  LOBYTE(v20) = v44 ^ 1;
LABEL_34:

  objc_autoreleasePoolPop(v6);
  v30 = *MEMORY[0x277D85DE8];
  return v20 & 1;
}

- (BOOL)_removeFactorsWithTreatmentId:(id)a3 namespaceName:(id)a4
{
  v4 = self;
  v5 = [(TRIClientTreatmentStorage *)self urlForFactorsWithTreatmentId:a3 namespaceName:a4];
  LOBYTE(v4) = [(TRIClientTreatmentStorage *)v4 _removeFactorsWithURL:v5];

  return v4;
}

- (BOOL)_removeRolloutWithDescriptor:(id)a3 descriptorDir:(id)a4 treatmentLayer:(unint64_t)a5 namespaceName:(id)a6
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
    v12 &= [(TRIClientTreatmentStorage *)self _removeFactorsWithURL:v14];
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
    [v22 handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:564 description:{@"Invalid parameter not satisfying: %@", @"factorsURL"}];
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
        [v23 handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:584 description:{@"Invalid parameter not satisfying: %@", @"parentURL"}];
      }

      v9 = [v8 triPathAsOwner:0];
      if (!v9)
      {
        v24 = [MEMORY[0x277CCA890] currentHandler];
        [v24 handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:586 description:{@"Invalid parameter not satisfying: %@", @"parentPath"}];
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
  v6 = [(TRIClientTreatmentStorage *)self _baseUrlForTreatment:a3 namespaceName:a4];
  v7 = MEMORY[0x277CBEBC0];
  v8 = [v6 path];
  v14[0] = v8;
  v14[1] = @"treatment.pb";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v10 = [v7 fileURLWithPathComponents:v9];

  if (!v10)
  {
    v13 = [MEMORY[0x277CCA890] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:602 description:@"urlForFactorsWithTreatmentId is nil"];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)_savePersistedTreatment:(id)a3
{
  v30 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = objc_autoreleasePoolPush();
  v7 = [v5 treatmentId];
  v8 = [(TRIClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:v7];

  v9 = [v8 URLByDeletingLastPathComponent];
  if (!v9)
  {
    v22 = [MEMORY[0x277CCA890] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:611 description:{@"Invalid parameter not satisfying: %@", @"parentDirURL"}];
  }

  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v25 = 0;
  v11 = [v10 createDirectoryAtURL:v9 withIntermediateDirectories:1 attributes:0 error:&v25];
  v12 = v25;

  if ((v11 & 1) == 0)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = v12;
      _os_log_error_impl(&dword_26F567000, v13, OS_LOG_TYPE_ERROR, "Failed to create directory: %{public}@", buf, 0xCu);
    }
  }

  v14 = objc_opt_new();
  [v14 setTreatment:v5];
  v15 = [v14 data];
  if (!v15)
  {
    v23 = [MEMORY[0x277CCA890] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:625 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  v24 = 0;
  v16 = [v15 writeToURL:v8 options:268435457 error:&v24];
  v17 = v24;
  if ((v16 & 1) == 0)
  {
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v21 = [v5 treatmentId];
      *buf = 138412546;
      v27 = v21;
      v28 = 2114;
      v29 = v17;
      _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Failed to write TRIPersistedTreatment for treatment %@: %{public}@", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v6);
  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)_deleteOnDemandAssetsWithFactorNames:(id)a3 treatment:(id)a4 namespace:(id)a5 inUseAssetDeletionBehavior:(unsigned __int8)a6
{
  v61 = a6;
  v87 = *MEMORY[0x277D85DE8];
  v69 = a3;
  v10 = a4;
  v11 = a5;
  v12 = [v10 treatmentId];
  v67 = self;
  v62 = v11;
  v13 = [(TRIClientTreatmentStorage *)self _baseUrlForTreatment:v12 namespaceName:v11];
  v66 = [v13 path];

  v63 = v10;
  v64 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  v14 = [v10 factorLevelArray];
  v15 = [v14 countByEnumeratingWithState:&v77 objects:v86 count:16];
  if (!v15)
  {
    LOBYTE(v18) = 1;
    goto LABEL_37;
  }

  v16 = v15;
  v60 = a2;
  v17 = *v78;
  LODWORD(v18) = 1;
  v68 = v14;
  do
  {
    v19 = 0;
    do
    {
      if (*v78 != v17)
      {
        objc_enumerationMutation(v14);
      }

      v20 = *(*(&v77 + 1) + 8 * v19);
      v21 = objc_autoreleasePoolPush();
      v22 = [v20 level];
      v23 = [v22 fileOrDirectoryLevelWithIsDir:0];

      if (!v23)
      {
        v32 = [v20 level];
        v33 = [v32 levelOneOfCase];

        if (v33 != 104)
        {
          goto LABEL_28;
        }

        v34 = [v20 level];
        v24 = [v34 mobileAssetReferenceValue];

        if ([v24 isOnDemand])
        {
          v70 = v18;
          v35 = [v20 factor];
          v36 = [v35 name];
          v37 = [v69 containsObject:v36];

          if (v37)
          {
            v38 = objc_opt_class();
            v39 = [v20 factor];
            v40 = [v39 name];
            v41 = [v38 relPathForMAReferenceWithFactorName:v40];

            v42 = [v66 stringByAppendingPathComponent:v41];
            v43 = [MEMORY[0x277CCAA00] defaultManager];
            LODWORD(v39) = [v43 fileExistsAtPath:v42];

            if (v39)
            {
              [v64 addObject:v42];
              v44 = objc_opt_new();
              v76 = 0;
              v45 = [v44 writeToFile:v42 options:0x10000000 error:&v76];
              v65 = v76;

              if ((v45 & 1) == 0)
              {
                v46 = TRILogCategory_Server();
                if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
                {
                  buf = 138543362;
                  v83 = v42;
                  _os_log_error_impl(&dword_26F567000, v46, OS_LOG_TYPE_ERROR, "Unable to nil out MARef by creating a blank file at %{public}@", &buf, 0xCu);
                }
              }
            }
          }

          LODWORD(v18) = v70;
LABEL_26:
          v14 = v68;
        }

LABEL_27:

        goto LABEL_28;
      }

      if (![v23 hasAsset])
      {
        goto LABEL_28;
      }

      v24 = [v23 asset];
      if (![v24 hasCloudKitIndex])
      {
        goto LABEL_27;
      }

      v25 = [v23 hasPath];

      if (!v25)
      {
        goto LABEL_28;
      }

      v26 = [v20 factor];
      v27 = [v26 name];
      v28 = [v69 containsObject:v27];

      if (v28)
      {
        if ([v23 isOnDemand])
        {
          v29 = [v20 factor];
          v30 = [v63 treatmentId];
          v31 = [(TRIClientTreatmentStorage *)v67 _assetURLForFactor:v29 treatmentId:v30];

          v24 = [v31 path];
          if (!v24)
          {
            v50 = [MEMORY[0x277CCA890] currentHandler];
            [v50 handleFailureInMethod:v60 object:v67 file:@"TRIClientTreatmentStorage.m" lineNumber:669 description:{@"Expression was unexpectedly nil/false: %@", @"url.path"}];
          }

          [v64 addObject:v24];
          [v23 setPath:0];
        }

        else
        {
          v24 = TRILogCategory_Server();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            v47 = [v20 factor];
            v48 = [v47 name];
            v49 = [v63 treatmentId];
            buf = 138543618;
            v83 = v48;
            v84 = 2112;
            v85 = v49;
            _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "Factor %{public}@ for treatment %@ is not on-demand.", &buf, 0x16u);
          }

          LODWORD(v18) = 0;
        }

        goto LABEL_26;
      }

      v14 = v68;
LABEL_28:

      objc_autoreleasePoolPop(v21);
      ++v19;
    }

    while (v16 != v19);
    v51 = [v14 countByEnumeratingWithState:&v77 objects:v86 count:16];
    v16 = v51;
  }

  while (v51);
LABEL_37:

  v74 = 0u;
  v75 = 0u;
  v72 = 0u;
  v73 = 0u;
  v52 = v64;
  v53 = [v52 countByEnumeratingWithState:&v72 objects:v81 count:16];
  if (v53)
  {
    v54 = v53;
    v55 = *v73;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v73 != v55)
        {
          objc_enumerationMutation(v52);
        }

        v57 = *(*(&v72 + 1) + 8 * i);
        v71 = 0;
        if (![TRIReferenceManagedDir removeFileInManagedDirWithPath:v57 inUseDeletionBehavior:v61 wasDeleted:&v71])
        {
          v18 = TRILogCategory_Server();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
          {
            buf = 138543362;
            v83 = v57;
            _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Failed to remove file %{public}@ in managed dir", &buf, 0xCu);
          }

          LOBYTE(v18) = 0;
        }
      }

      v54 = [v52 countByEnumeratingWithState:&v72 objects:v81 count:16];
    }

    while (v54);
  }

  v58 = *MEMORY[0x277D85DE8];
  return v18 & 1;
}

- (BOOL)_linkAssetsUpdatingTreatment:(id)a3
{
  v116 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v97 = [[TRIAssetStore alloc] initWithPaths:self->_paths];
  v6 = [v5 factorLevelArray];
  v7 = [v6 count];

  if (!v7)
  {
    v9 = TRILogCategory_Server();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v68 = [v5 treatmentId];
      *buf = 138412290;
      v110 = v68;
      _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "Treatment %@ has no factor levels. Proceeding without linking assets.", buf, 0xCu);
    }

    v66 = 1;
    goto LABEL_79;
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  v8 = [v5 factorLevelArray];
  v101 = [v8 countByEnumeratingWithState:&v105 objects:v115 count:16];
  if (v101)
  {
    v90 = a2;
    v95 = self;
    v9 = 0;
    v100 = *v106;
    v94 = v5;
    v96 = v8;
    while (1)
    {
      v10 = 0;
      v11 = v9;
      do
      {
        if (*v106 != v100)
        {
          objc_enumerationMutation(v8);
        }

        v12 = *(*(&v105 + 1) + 8 * v10);
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
            v34 = [v12 factor];
            v35 = [v34 namespaceString];

            if (!v35)
            {
              v20 = TRILogCategory_Server();
              if (!os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_71;
              }

              v70 = [v5 treatmentId];
              v71 = [v12 factor];
              [v71 name];
              v73 = v72 = v9;
              *buf = 138543618;
              v110 = v70;
              v111 = 2114;
              v112 = v73;
              _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "Treatment %{public}@ has factor %{public}@ with missing namespaceString.", buf, 0x16u);

              v9 = v72;
              goto LABEL_81;
            }

            v36 = [v12 level];
            v20 = [v36 mobileAssetReferenceValue];

            if (![v20 hasAssetType]|| ![v20 hasAssetSpecifier]|| ([v20 hasAssetVersion]& 1) == 0)
            {
              v70 = TRILogCategory_Server();
              if (!os_log_type_enabled(v70, OS_LOG_TYPE_ERROR))
              {
LABEL_65:

                goto LABEL_71;
              }

              v71 = [v5 treatmentId];
              [v12 factor];
              v86 = v85 = v9;
              v87 = [v86 name];
              *buf = 138543618;
              v110 = v71;
              v111 = 2114;
              v112 = v87;
              _os_log_error_impl(&dword_26F567000, v70, OS_LOG_TYPE_ERROR, "Treatment %{public}@ has factor %{public}@ with incomplete MobileAssetReference.", buf, 0x16u);

              v9 = v85;
LABEL_81:

              goto LABEL_65;
            }

            v99 = v9;
            v37 = [v12 factor];
            v38 = [v5 treatmentId];
            v39 = [v37 namespaceName];
            v40 = [(TRIClientTreatmentStorage *)v95 _baseUrlForTreatment:v38 namespaceName:v39];

            v92 = v40;
            v41 = [v40 path];
            if (!v41)
            {
              v53 = [MEMORY[0x277CCA890] currentHandler];
              [v53 handleFailureInMethod:v90 object:v95 file:@"TRIClientTreatmentStorage.m" lineNumber:796 description:{@"Expression was unexpectedly nil/false: %@", @"targetURL.path"}];
            }

            v42 = objc_opt_class();
            v93 = v37;
            v43 = [v37 name];
            v44 = [v42 relPathForMAReferenceWithFactorName:v43];

            v91 = v44;
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

            v5 = v94;
            if (![(TRIAssetStore *)v97 referenceMAAutoAssetWithId:v51 isFileFactor:v52 usingCurrentPath:v45 futurePath:v45])
            {
              v74 = TRILogCategory_Server();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v110 = v45;
                _os_log_error_impl(&dword_26F567000, v74, OS_LOG_TYPE_ERROR, "Unable to reference maAutoAsset at %{public}@", buf, 0xCu);
              }

              v9 = v99;
LABEL_71:
              v75 = context;
LABEL_76:

              objc_autoreleasePoolPop(v75);
              v8 = v96;
LABEL_77:

              goto LABEL_78;
            }

            v9 = v99;
            v8 = v96;
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

        v18 = [v15 asset];
        v19 = [v18 assetId];
        v20 = TRIValidateAssetId();

        if (!v20)
        {
          v76 = TRILogCategory_Server();
          if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
LABEL_75:
            v75 = context;

            goto LABEL_76;
          }

          v77 = [v5 treatmentId];
          [v15 asset];
          v79 = v78 = v9;
          v80 = [v79 assetId];
          v81 = [v12 factor];
          v82 = [v81 name];
          *buf = 138412802;
          v110 = v77;
          v111 = 2114;
          v112 = v80;
          v113 = 2114;
          v114 = v82;
          _os_log_error_impl(&dword_26F567000, v76, OS_LOG_TYPE_ERROR, "Treatment %@ has unsuitable asset id %{public}@ for factor %{public}@.", buf, 0x20u);

          v9 = v78;
LABEL_83:

          goto LABEL_75;
        }

        if (([v12 hasFactor] & 1) == 0)
        {
          v76 = TRILogCategory_Server();
          if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_75;
          }

          v77 = [v5 treatmentId];
          *buf = 138412290;
          v110 = v77;
          _os_log_error_impl(&dword_26F567000, v76, OS_LOG_TYPE_ERROR, "Treatment %@ has missing factor.", buf, 0xCu);
          goto LABEL_83;
        }

        v98 = v9;
        v21 = [v12 factor];
        v22 = [v5 treatmentId];
        v23 = [(TRIClientTreatmentStorage *)v95 _assetURLForFactor:v21 treatmentId:v22];

        v24 = [v23 path];
        if (!v24)
        {
          v54 = [MEMORY[0x277CCA890] currentHandler];
          [v54 handleFailureInMethod:v90 object:v95 file:@"TRIClientTreatmentStorage.m" lineNumber:751 description:{@"Expression was unexpectedly nil/false: %@", @"targetURL.path"}];
        }

        v25 = [v24 stringByDeletingLastPathComponent];
        v26 = [MEMORY[0x277CCAA00] defaultManager];
        v104 = 0;
        v27 = [v26 createDirectoryAtPath:v25 withIntermediateDirectories:1 attributes:0 error:&v104];
        v28 = v104;

        if ((v27 & 1) == 0)
        {
          v29 = TRILogCategory_Server();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v110 = v28;
            _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "Failed to create directory for factor: %{public}@", buf, 0xCu);
          }
        }

        if ([v15 hasIsOnDemand] && objc_msgSend(v15, "isOnDemand") && !-[TRIAssetStore hasAssetWithIdentifier:type:](v97, "hasAssetWithIdentifier:type:", v20, 0))
        {
          v31 = 0;
          v30 = 1;
        }

        else if ([(TRIAssetStore *)v97 linkAssetWithIdentifier:v20 toPath:v24])
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

        v5 = v94;
        v9 = v98;
        v8 = v96;
        if (v31)
        {
          goto LABEL_38;
        }

        objc_autoreleasePoolPop(context);
        if (!v30)
        {
          goto LABEL_77;
        }

LABEL_39:
        ++v10;
        v11 = v9;
      }

      while (v101 != v10);
      v55 = [v8 countByEnumeratingWithState:&v105 objects:v115 count:16];
      v101 = v55;
      if (!v55)
      {

        if (!v9)
        {
          goto LABEL_62;
        }

        v56 = [v5 treatmentId];
        v57 = v9;
        v58 = [(TRIClientTreatmentStorage *)v95 _baseUrlForTreatment:v56 namespaceName:v9];
        v59 = [v58 path];

        v60 = [MEMORY[0x277CCAA00] defaultManager];
        v61 = v59;
        if (!v61)
        {
          v88 = [MEMORY[0x277CCA890] currentHandler];
          [v88 handleFailureInMethod:v90 object:v95 file:@"TRIClientTreatmentStorage.m" lineNumber:825 description:{@"Expression was unexpectedly nil/false: %@", @"directory"}];
        }

        v103 = 0;
        v62 = [v60 createDirectoryAtPath:v61 withIntermediateDirectories:1 attributes:0 error:&v103];
        v63 = v103;

        if ((v62 & 1) == 0)
        {
          v64 = TRILogCategory_Server();
          if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v110 = v61;
            v111 = 2114;
            v112 = v63;
            _os_log_error_impl(&dword_26F567000, v64, OS_LOG_TYPE_ERROR, "Failed to create directory for treatment at %{public}@: %{public}@", buf, 0x16u);
          }
        }

        v65 = v61;
        if (!v61)
        {
          v89 = [MEMORY[0x277CCA890] currentHandler];
          [v89 handleFailureInMethod:v90 object:v95 file:@"TRIClientTreatmentStorage.m" lineNumber:831 description:{@"Expression was unexpectedly nil/false: %@", @"directory"}];
        }

        v66 = [TRIReferenceManagedDir createFromDir:v65];

        if (!v66)
        {
          v67 = TRILogCategory_Server();
          if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543362;
            v110 = v65;
            _os_log_error_impl(&dword_26F567000, v67, OS_LOG_TYPE_ERROR, "Failed to create reference-managed directory at %{public}@ for factor", buf, 0xCu);
          }
        }

        v9 = v57;
        goto LABEL_79;
      }
    }
  }

LABEL_62:
  v9 = TRILogCategory_Server();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    v69 = [v5 treatmentId];
    *buf = 138543362;
    v110 = v69;
    _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Unable to find a namespace name from factor levels in treatment %{public}@", buf, 0xCu);
  }

LABEL_78:
  v66 = 0;
LABEL_79:

  v83 = *MEMORY[0x277D85DE8];
  return v66;
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
    v26[2] = __95__TRIClientTreatmentStorage__saveNamespacePartitionedTreatmentsForTreatment_forNamespaceNames___block_invoke;
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

void __95__TRIClientTreatmentStorage__saveNamespacePartitionedTreatmentsForTreatment_forNamespaceNames___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
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
    [v26 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIClientTreatmentStorage.m" lineNumber:879 description:{@"Invalid parameter not satisfying: %@", @"referenceURL"}];
  }

  if ([*(a1 + 32) _resolveAssetPathsInTreatment:v8 usingReferenceURL:v11])
  {
    v29 = a4;
    v12 = [v8 data];
    if (!v12)
    {
      v27 = [MEMORY[0x277CCA890] currentHandler];
      [v27 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIClientTreatmentStorage.m" lineNumber:889 description:{@"Invalid parameter not satisfying: %@", @"data"}];
    }

    v13 = [MEMORY[0x277CCAA00] defaultManager];
    v31 = 0;
    v14 = [v13 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:&v31];
    v15 = v31;
    v16 = v15;
    if (v14)
    {
      v30 = v15;
      v28 = [v12 writeToURL:v10 options:268435457 error:&v30];
      v17 = v8;
      v18 = v10;
      v19 = v12;
      v20 = v7;
      v21 = v9;
      v22 = v30;

      v16 = v22;
      v9 = v21;
      v7 = v20;
      v12 = v19;
      v10 = v18;
      v8 = v17;
      if (v28)
      {
LABEL_16:

        goto LABEL_17;
      }
    }

    else
    {
    }

    v24 = TRILogCategory_Server();
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v33 = v16;
      _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "Unable to write serialized namespace treatment: %{public}@", buf, 0xCu);
    }

    *(*(*(a1 + 48) + 8) + 24) = 0;
    *v29 = 1;
    goto LABEL_16;
  }

  v23 = TRILogCategory_Server();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412290;
    v33 = v11;
    _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "Unable to resolve asset paths with reference URL %@", buf, 0xCu);
  }

  *(*(*(a1 + 48) + 8) + 24) = 0;
  *a4 = 1;
LABEL_17:

  objc_autoreleasePoolPop(v9);
  v25 = *MEMORY[0x277D85DE8];
}

- (id)_assetURLForFactor:(id)a3 treatmentId:(id)a4
{
  v7 = a4;
  v8 = a3;
  v9 = [v8 namespaceString];
  if (!v9)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:910 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  v10 = [(TRIClientTreatmentStorage *)self _baseUrlForTreatment:v7 namespaceName:v9];
  v11 = MEMORY[0x277D73758];
  v12 = [v10 path];
  if (!v12)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:912 description:{@"Expression was unexpectedly nil/false: %@", @"dir.path"}];
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
    [v22 handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:932 description:{@"Invalid parameter not satisfying: %@", @"parentURL"}];
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
    [v11 handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:957 description:{@"Invalid parameter not satisfying: %@", @"treatmentBasename"}];
  }

  v9 = [v8 URLByAppendingPathExtension:@"pb"];
  if (!v9)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:959 description:{@"Invalid parameter not satisfying: %@", @"result"}];
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
    [v27 handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:964 description:@"referenceURL must be a directory"];
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