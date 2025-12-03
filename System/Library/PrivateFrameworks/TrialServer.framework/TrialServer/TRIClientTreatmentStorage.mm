@interface TRIClientTreatmentStorage
+ (id)relPathForMAReferenceWithFactorName:(id)name;
- (BOOL)_deleteOnDemandAssetsWithFactorNames:(id)names treatment:(id)treatment namespace:(id)namespace inUseAssetDeletionBehavior:(unsigned __int8)behavior;
- (BOOL)_linkAssetsUpdatingTreatment:(id)treatment;
- (BOOL)_linkAssetsWithIds:(id)ids updatingTreatment:(id)treatment;
- (BOOL)_removeFactorsWithTreatmentId:(id)id namespaceName:(id)name;
- (BOOL)_removeFactorsWithURL:(id)l;
- (BOOL)_removeRolloutWithDescriptor:(id)descriptor descriptorDir:(id)dir treatmentLayer:(unint64_t)layer namespaceName:(id)name;
- (BOOL)_resolveAssetPathsInTreatment:(id)treatment usingReferenceURL:(id)l;
- (BOOL)_saveNamespacePartitionedTreatmentsForTreatment:(id)treatment forNamespaceNames:(id)names;
- (BOOL)_savePersistedTreatment:(id)treatment;
- (BOOL)removeTreatmentFromLayer:(unint64_t)layer withNamespaceName:(id)name upgradeNCVs:(id)vs;
- (BOOL)removeTreatmentWithTreatmentId:(id)id;
- (BOOL)removeUnreferencedTreatmentsWithRemovedCount:(unsigned int *)count;
- (TRIClientTreatmentStorage)initWithPaths:(id)paths;
- (TRIClientTreatmentStorage)initWithPaths:(id)paths extractor:(id)extractor;
- (id)_assetURLForFactor:(id)factor treatmentId:(id)id;
- (id)_baseUrlForTreatment:(id)treatment namespaceName:(id)name;
- (id)_collectTreatments;
- (id)_copyFileFromURL:(id)l to:(id)to;
- (id)_linkAssetWithId:(id)id treatmentId:(id)treatmentId assetStore:(id)store factor:(id)factor;
- (id)loadTreatmentWithTreatmentId:(id)id isFilePresent:(BOOL *)present;
- (id)saveTreatment:(id)treatment;
- (id)updateSavedTreatmentWithTreatmentId:(id)id linkingNewAssetIds:(id)ids forNamespaceNames:(id)names;
- (id)urlForFactorsWithTreatmentId:(id)id namespaceName:(id)name;
- (id)urlForTreatmentWithTreatmentId:(id)id;
@end

@implementation TRIClientTreatmentStorage

- (TRIClientTreatmentStorage)initWithPaths:(id)paths
{
  pathsCopy = paths;
  v5 = [[TRIRemoteAssetExtractor alloc] initWithMonitoredActivity:0];
  v6 = [(TRIClientTreatmentStorage *)self initWithPaths:pathsCopy extractor:v5];

  return v6;
}

- (TRIClientTreatmentStorage)initWithPaths:(id)paths extractor:(id)extractor
{
  pathsCopy = paths;
  extractorCopy = extractor;
  v12.receiver = self;
  v12.super_class = TRIClientTreatmentStorage;
  v9 = [(TRIClientTreatmentStorage *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_paths, paths);
    objc_storeStrong(&v10->_extractor, extractor);
  }

  return v10;
}

- (id)loadTreatmentWithTreatmentId:(id)id isFilePresent:(BOOL *)present
{
  v40 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v7 = objc_autoreleasePoolPush();
  if (present)
  {
    *present = 1;
  }

  v8 = objc_alloc(MEMORY[0x277CBEA90]);
  v9 = [(TRIClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:idCopy];
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
        treatment = [v12 treatment];
        if (-[NSObject hasTreatmentId](treatment, "hasTreatmentId") && (-[NSObject treatmentId](treatment, "treatmentId"), v14 = objc_claimAutoreleasedReturnValue(), v15 = [v14 length], v14, v15))
        {
          treatmentId = [treatment treatmentId];
          v17 = [idCopy isEqualToString:treatmentId];

          if (v17)
          {
            treatment = treatment;
            v18 = treatment;
LABEL_26:

            goto LABEL_27;
          }

          v26 = TRILogCategory_Server();
          if (!os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_24;
          }

          v29 = [(TRIClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:idCopy];
          treatmentId2 = [treatment treatmentId];
          *buf = 138412802;
          v35 = v29;
          v36 = 2112;
          v37 = idCopy;
          v38 = 2112;
          v39 = treatmentId2;
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

          v29 = [(TRIClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:idCopy];
          *buf = 138412290;
          v35 = v29;
          _os_log_error_impl(&dword_26F567000, v26, OS_LOG_TYPE_ERROR, "TRIPersistedTreatment has TRIClientTreatment with nil or empty treatmentId: %@", buf, 0xCu);
        }

        goto LABEL_24;
      }

      treatment = TRILogCategory_Server();
      if (os_log_type_enabled(treatment, OS_LOG_TYPE_ERROR))
      {
        v21 = [(TRIClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:idCopy];
        *buf = 138412290;
        v35 = v21;
        v22 = "TRIPersistedTreatment has missing treatment: %@";
        v23 = treatment;
        v24 = 12;
        goto LABEL_16;
      }
    }

    else
    {
      treatment = TRILogCategory_Server();
      if (os_log_type_enabled(treatment, OS_LOG_TYPE_ERROR))
      {
        v21 = [(TRIClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:idCopy];
        *buf = 138412546;
        v35 = v21;
        v36 = 2114;
        v37 = v11;
        v22 = "Unable to parse TRIPersistedTreatment from %@: %{public}@";
        v23 = treatment;
        v24 = 22;
LABEL_16:
        _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, v22, buf, v24);
      }
    }

LABEL_25:
    v18 = 0;
    goto LABEL_26;
  }

  domain = [v11 domain];
  v20 = domain;
  if (domain == *MEMORY[0x277CCA050])
  {
    code = [v11 code];

    if (present && code == 260)
    {
      *present = 0;
    }
  }

  else
  {
  }

  v12 = TRILogCategory_Server();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    v31 = [(TRIClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:idCopy];
    *buf = 138412802;
    v35 = idCopy;
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

- (id)saveTreatment:(id)treatment
{
  v57 = *MEMORY[0x277D85DE8];
  treatmentCopy = treatment;
  v5 = objc_autoreleasePoolPush();
  if (![treatmentCopy hasTreatmentId] || (objc_msgSend(treatmentCopy, "treatmentId"), v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "length"), v6, !v7))
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

  v8 = [treatmentCopy copy];

  if (![v8 factorLevelArray_Count])
  {
    goto LABEL_34;
  }

  selfCopy = self;
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
        factor = [*(*(&v48 + 1) + 8 * v11) factor];
        namespaceName = [factor namespaceName];
        v10 = [TRIClientFactorPackUtils aliasesInNamespace:namespaceName];
      }

      factor2 = [v13 factor];
      name = [factor2 name];
      v18 = [v10 objectForKeyedSubscript:name];
      selfCopy2 = v18;
      if (!v18)
      {
        factor3 = [v13 factor];
        self = [factor3 name];
        selfCopy2 = self;
      }

      factor4 = [v13 factor];
      [factor4 setName:selfCopy2];

      if (!v18)
      {
      }

      v8 = v12;
      if ([v13 hasLevel])
      {
        level = [v13 level];
        v22 = [level fileOrDirectoryLevelWithIsDir:0];

        if ([v12 hasTreatmentId])
        {
          if ([v22 hasAsset])
          {
            asset = [v22 asset];
            hasTreatmentId = [asset hasTreatmentId];

            if ((hasTreatmentId & 1) == 0)
            {
              v25 = TRILogCategory_Server();
              if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
              {
                treatmentId = [v12 treatmentId];
                factor5 = [v13 factor];
                name2 = [factor5 name];
                *buf = 138412546;
                v53 = treatmentId;
                v54 = 2114;
                v55 = name2;
                _os_log_debug_impl(&dword_26F567000, v25, OS_LOG_TYPE_DEBUG, "Populating treatmentId %@ on asset for %{public}@", buf, 0x16u);

                v8 = v12;
              }

              treatmentId2 = [v8 treatmentId];
              asset2 = [v22 asset];
              [asset2 setTreatmentId:treatmentId2];
            }
          }
        }

        if ([v8 hasTreatmentId] && objc_msgSend(v22, "hasAsset"))
        {
          asset3 = [v22 asset];
          if ([asset3 hasCloudKitContainer])
          {
            goto LABEL_29;
          }

          isOnDemand = [v22 isOnDemand];

          if (isOnDemand)
          {
            v30 = TRILogCategory_Server();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
            {
              factor6 = [v13 factor];
              name3 = [factor6 name];
              *buf = v40;
              v53 = name3;
              _os_log_debug_impl(&dword_26F567000, v30, OS_LOG_TYPE_DEBUG, "Populating system default cloudKitContainer on asset for %{public}@", buf, 0xCu);
            }

            asset3 = [v22 asset];
            [asset3 setCloudKitContainer:1];
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
  self = selfCopy;
  v5 = v43;
LABEL_34:
  if ([(TRIClientTreatmentStorage *)self _linkAssetsUpdatingTreatment:v8]&& [(TRIClientTreatmentStorage *)self _saveNamespacePartitionedTreatmentsForTreatment:v8 forNamespaceNames:0]&& [(TRIClientTreatmentStorage *)self _savePersistedTreatment:v8])
  {
    treatmentCopy = v8;
    v36 = treatmentCopy;
  }

  else
  {
    v36 = 0;
    treatmentCopy = v8;
  }

LABEL_42:
  objc_autoreleasePoolPop(v5);

  v38 = *MEMORY[0x277D85DE8];

  return v36;
}

- (id)updateSavedTreatmentWithTreatmentId:(id)id linkingNewAssetIds:(id)ids forNamespaceNames:(id)names
{
  v25 = *MEMORY[0x277D85DE8];
  idCopy = id;
  idsCopy = ids;
  namesCopy = names;
  v11 = objc_autoreleasePoolPush();
  v20 = 0;
  v12 = [(TRIClientTreatmentStorage *)self loadTreatmentWithTreatmentId:idCopy isFilePresent:&v20];
  if (v12)
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v18 = [idsCopy count];
      *buf = 134218242;
      v22 = v18;
      v23 = 2112;
      v24 = idCopy;
      _os_log_debug_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEBUG, "Merging %tu assets for treatment %@.", buf, 0x16u);
    }

    if ([(TRIClientTreatmentStorage *)self _linkAssetsWithIds:idsCopy updatingTreatment:v12]&& [(TRIClientTreatmentStorage *)self _saveNamespacePartitionedTreatmentsForTreatment:v12 forNamespaceNames:namesCopy]&& [(TRIClientTreatmentStorage *)self _savePersistedTreatment:v12])
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
      v19 = [(TRIClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:idCopy];
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

- (BOOL)_linkAssetsWithIds:(id)ids updatingTreatment:(id)treatment
{
  v40 = *MEMORY[0x277D85DE8];
  idsCopy = ids;
  treatmentCopy = treatment;
  v7 = [TRIAssetStore alloc];
  paths = self->_paths;
  extractor = self->_extractor;
  selfCopy = self;
  v10 = [[TRIRemoteAssetPatcher alloc] initWithMonitoredActivity:0];
  v32 = [(TRIAssetStore *)v7 initWithPaths:paths extractor:extractor patcher:v10];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = treatmentCopy;
  factorLevelArray = [treatmentCopy factorLevelArray];
  v12 = [factorLevelArray countByEnumeratingWithState:&v35 objects:v39 count:16];
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
          objc_enumerationMutation(factorLevelArray);
        }

        v16 = *(*(&v35 + 1) + 8 * i);
        v17 = objc_autoreleasePoolPush();
        level = [v16 level];
        v19 = [level fileOrDirectoryLevelWithIsDir:0];

        if (v19)
        {
          if (([v19 hasPath] & 1) == 0)
          {
            if ([v19 hasAsset])
            {
              asset = [v19 asset];
              hasAssetId = [asset hasAssetId];

              if (hasAssetId)
              {
                asset2 = [v19 asset];
                assetId = [asset2 assetId];
                v24 = TRIValidateAssetId();

                if (v24 && [idsCopy containsObject:v24])
                {
                  treatmentId = [v33 treatmentId];
                  factor = [v16 factor];
                  v27 = [(TRIClientTreatmentStorage *)selfCopy _linkAssetWithId:v24 treatmentId:treatmentId assetStore:v32 factor:factor];

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

      v13 = [factorLevelArray countByEnumeratingWithState:&v35 objects:v39 count:16];
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

- (id)_linkAssetWithId:(id)id treatmentId:(id)treatmentId assetStore:(id)store factor:(id)factor
{
  idCopy = id;
  treatmentIdCopy = treatmentId;
  storeCopy = store;
  factorCopy = factor;
  v15 = objc_autoreleasePoolPush();
  v16 = [(TRIClientTreatmentStorage *)self _assetURLForFactor:factorCopy treatmentId:treatmentIdCopy];
  uRLByDeletingLastPathComponent = [v16 URLByDeletingLastPathComponent];
  path = [uRLByDeletingLastPathComponent path];

  if (!path)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:252 description:{@"Expression was unexpectedly nil/false: %@", @"[assetURL URLByDeletingLastPathComponent].path"}];
  }

  [MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:path];
  path2 = [v16 path];
  if (!path2)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:255 description:{@"Expression was unexpectedly nil/false: %@", @"assetURL.path"}];
  }

  if ([storeCopy linkAssetWithIdentifier:idCopy toCurrentPath:path2 futurePath:path2])
  {
    v20 = path2;
  }

  else
  {
    v20 = 0;
  }

  v21 = v20;

  objc_autoreleasePoolPop(v15);

  return v21;
}

- (BOOL)removeUnreferencedTreatmentsWithRemovedCount:(unsigned int *)count
{
  v50 = *MEMORY[0x277D85DE8];
  _collectTreatments = [(TRIClientTreatmentStorage *)self _collectTreatments];
  if (_collectTreatments)
  {
    v5 = [TRITempDirScopeGuard alloc];
    localTempDir = [(TRIPaths *)self->_paths localTempDir];
    v7 = [(TRITempDirScopeGuard *)v5 initWithPath:localTempDir];

    v35 = v7;
    if (v7)
    {
      v33 = [[TRINamespaceDescriptorSetStorage alloc] initWithPaths:self->_paths];
      parentDirForNamespaceDescriptorSets = [(TRINamespaceDescriptorSetStorage *)v33 parentDirForNamespaceDescriptorSets];
      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      v9 = [defaultManager fileExistsAtPath:parentDirForNamespaceDescriptorSets];

      if (v9)
      {
        v37 = objc_alloc_init(MEMORY[0x277CBEB58]);
        context = objc_autoreleasePoolPush();
        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v11 = [MEMORY[0x277CBEBC0] fileURLWithPath:parentDirForNamespaceDescriptorSets isDirectory:1];
        v12 = [defaultManager2 enumeratorAtURL:v11 includingPropertiesForKeys:0 options:0 errorHandler:0];

        v13 = objc_autoreleasePoolPush();
        nextObject = [v12 nextObject];
        if (nextObject)
        {
          *&v15 = 138412290;
          v31 = v15;
          do
          {
            path = [nextObject path];
            v17 = [path hasSuffix:@".plist"];

            if (v17)
            {
              v18 = MEMORY[0x277CBEAC0];
              path2 = [nextObject path];
              v20 = [v18 dictionaryWithContentsOfFile:path2];

              if (v20)
              {
                v21 = [objc_alloc(MEMORY[0x277D73750]) initWithDictionary:v20];
                factorsURL = [v21 factorsURL];
                path3 = [factorsURL path];
                stringByDeletingLastPathComponent = [path3 stringByDeletingLastPathComponent];
                [v37 addObject:stringByDeletingLastPathComponent];
              }

              else
              {
                v21 = TRILogCategory_Server();
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  path4 = [nextObject path];
                  LODWORD(buf) = v31;
                  *(&buf + 4) = path4;
                  _os_log_error_impl(&dword_26F567000, v21, OS_LOG_TYPE_ERROR, "failed to parse dictionary from file: %@", &buf, 0xCu);
                }
              }
            }

            objc_autoreleasePoolPop(v13);
            v13 = objc_autoreleasePoolPush();
            nextObject = [v12 nextObject];
          }

          while (nextObject);
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
        v28 = [_collectTreatments enumerateStringsWithBlock:v38];
        if (count)
        {
          *count = *(*(&buf + 1) + 24);
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
          *(&buf + 4) = parentDirForNamespaceDescriptorSets;
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

  treatmentsDir = [(TRIPaths *)self->_paths treatmentsDir];
  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v54 = 0;
  v6 = [defaultManager contentsOfDirectoryAtPath:treatmentsDir error:&v54];
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
      v43 = treatmentsDir;
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
          v14 = [treatmentsDir stringByAppendingPathComponent:v12];
          buf[0] = 0;
          defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
          [defaultManager2 fileExistsAtPath:v14 isDirectory:buf];

          if (buf[0] == 1)
          {
            v46 = v13;
            defaultManager3 = [MEMORY[0x277CCAA00] defaultManager];
            v17 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14 isDirectory:1];
            v18 = [defaultManager3 enumeratorAtURL:v17 includingPropertiesForKeys:0 options:1 errorHandler:0];

            v19 = objc_autoreleasePoolPush();
            nextObject = [v18 nextObject];
            if (nextObject)
            {
              nextObject2 = nextObject;
              while (1)
              {
                v22 = [nextObject2 URLByAppendingPathComponent:{@"treatment.pb", v39}];
                path = [v22 path];
                if (path)
                {
                  v24 = path;
                  defaultManager4 = [MEMORY[0x277CCAA00] defaultManager];
                  path2 = [v22 path];
                  v27 = [defaultManager4 fileExistsAtPath:path2];

                  if (!v27)
                  {
                    break;
                  }
                }

                path3 = [nextObject2 path];

                if (path3)
                {
                  path4 = [nextObject2 path];
                  [v47 addObject:path4];
                }

                objc_autoreleasePoolPop(v19);
                v19 = objc_autoreleasePoolPush();
                nextObject2 = [v18 nextObject];
                if (!nextObject2)
                {
                  goto LABEL_18;
                }
              }
            }

LABEL_18:
            objc_autoreleasePoolPop(v19);

            v10 = v42;
            treatmentsDir = v43;
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

  domain = [v7 domain];
  v33 = domain;
  if (domain == *MEMORY[0x277CCA050])
  {
    code = [v7 code];

    if (code == 260)
    {
      v35 = TRILogCategory_Server();
      if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543362;
        v57 = treatmentsDir;
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
    v57 = treatmentsDir;
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

- (BOOL)removeTreatmentFromLayer:(unint64_t)layer withNamespaceName:(id)name upgradeNCVs:(id)vs
{
  v44 = *MEMORY[0x277D85DE8];
  nameCopy = name;
  vsCopy = vs;
  if (layer != 32 && layer != 4)
  {
    if (layer == 1)
    {
      v10 = TRILogCategory_Server();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543362;
        v38 = nameCopy;
        _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "cannot remove treatment from 'installed' layer for namespace %{public}@", buf, 0xCu);
      }
    }

    goto LABEL_12;
  }

  namespaceDescriptorsExperimentDir = [(TRIPaths *)self->_paths namespaceDescriptorsExperimentDir];
  if (!namespaceDescriptorsExperimentDir)
  {
LABEL_12:
    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v38) = layer;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "cannot remove treatment from unknown treatment layer %u", buf, 8u);
    }

    v18 = 0;
    goto LABEL_38;
  }

  v12 = namespaceDescriptorsExperimentDir;
  v13 = [MEMORY[0x277D73750] loadWithNamespaceName:nameCopy fromDirectory:namespaceDescriptorsExperimentDir];
  if (v13)
  {
    v14 = [MEMORY[0x277D73758] factorProviderWithNamespaceDescriptor:v13 paths:self->_paths faultOnMissingFactors:0 shouldLockFactorDirectory:0];
    v15 = v14;
    if (layer == 4)
    {
      treatmentId = [v14 treatmentId];

      if (treatmentId)
      {
        treatmentId2 = [v15 treatmentId];
        v18 = [(TRIClientTreatmentStorage *)self removeTreatmentWithTreatmentId:treatmentId2];
      }

      else
      {
        v18 = 1;
      }
    }

    else if (vsCopy)
    {
      v31 = v14;
      v32 = v13;
      namespaceCompatibilityVersion = [v14 namespaceCompatibilityVersion];
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v20 = vsCopy;
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

            if ([*(*(&v33 + 1) + 8 * i) intValue] > namespaceCompatibilityVersion)
            {
              v27 = TRILogCategory_Server();
              if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543874;
                v38 = nameCopy;
                v39 = 2112;
                v40 = v20;
                v41 = 1024;
                v42 = namespaceCompatibilityVersion;
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

      v25 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:namespaceCompatibilityVersion];
      v26 = [v20 containsObject:v25];

      if (v26)
      {
        v18 = 1;
        v13 = v32;
      }

      else
      {
        v13 = v32;
        v18 = [(TRIClientTreatmentStorage *)self _removeRolloutWithDescriptor:v32 descriptorDir:v12 treatmentLayer:layer namespaceName:nameCopy];
      }

      v15 = v31;
      v28 = TRILogCategory_Server();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138543618;
        v38 = nameCopy;
        v39 = 2114;
        v40 = v20;
        _os_log_impl(&dword_26F567000, v28, OS_LOG_TYPE_DEFAULT, "Not deleting rollout for namespace %{public}@ due to upgrade NCVS %{public}@", buf, 0x16u);
      }
    }

    else
    {
      v18 = [(TRIClientTreatmentStorage *)self _removeRolloutWithDescriptor:v13 descriptorDir:v12 treatmentLayer:layer namespaceName:nameCopy];
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

- (BOOL)removeTreatmentWithTreatmentId:(id)id
{
  v49 = *MEMORY[0x277D85DE8];
  idCopy = id;
  v6 = objc_autoreleasePoolPush();
  v44 = 0;
  v7 = [(TRIClientTreatmentStorage *)self loadTreatmentWithTreatmentId:idCopy isFilePresent:&v44];
  if (v7)
  {
    v33 = a2;
    v34 = v6;
    v8 = objc_opt_new();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    factorLevelArray = [v7 factorLevelArray];
    v10 = [factorLevelArray countByEnumeratingWithState:&v40 objects:v48 count:16];
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
            objc_enumerationMutation(factorLevelArray);
          }

          factor = [*(*(&v40 + 1) + 8 * i) factor];
          namespaceString = [factor namespaceString];

          if (namespaceString)
          {
            [v8 addObject:namespaceString];
          }
        }

        v11 = [factorLevelArray countByEnumeratingWithState:&v40 objects:v48 count:16];
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

          LODWORD(v20) = v20 & [(TRIClientTreatmentStorage *)self _removeFactorsWithTreatmentId:idCopy namespaceName:*(*(&v36 + 1) + 8 * j)];
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

    v22 = [(TRIClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:idCopy];
    path = [v22 path];
    if (!path)
    {
      currentHandler = [MEMORY[0x277CCA890] currentHandler];
      [currentHandler handleFailureInMethod:v33 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:523 description:{@"Invalid parameter not satisfying: %@", @"artifactPath"}];
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v35 = 0;
    v25 = [defaultManager triForceRemoveItemAtPath:path error:&v35];
    v26 = v35;

    if (v25)
    {
      goto LABEL_25;
    }

    domain = [v26 domain];
    v28 = domain;
    if (domain == *MEMORY[0x277CCA050])
    {
      code = [v26 code];

      if (code == 4)
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

- (BOOL)_removeFactorsWithTreatmentId:(id)id namespaceName:(id)name
{
  selfCopy = self;
  v5 = [(TRIClientTreatmentStorage *)self urlForFactorsWithTreatmentId:id namespaceName:name];
  LOBYTE(selfCopy) = [(TRIClientTreatmentStorage *)selfCopy _removeFactorsWithURL:v5];

  return selfCopy;
}

- (BOOL)_removeRolloutWithDescriptor:(id)descriptor descriptorDir:(id)dir treatmentLayer:(unint64_t)layer namespaceName:(id)name
{
  layerCopy = layer;
  v21 = *MEMORY[0x277D85DE8];
  descriptorCopy = descriptor;
  nameCopy = name;
  v12 = [descriptorCopy removeFromDirectory:dir];
  factorsURL = [descriptorCopy factorsURL];

  if (factorsURL)
  {
    factorsURL2 = [descriptorCopy factorsURL];
    v12 &= [(TRIClientTreatmentStorage *)self _removeFactorsWithURL:factorsURL2];
  }

  else
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18[0] = 67109378;
      v18[1] = layerCopy;
      v19 = 2114;
      v20 = nameCopy;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "descriptor in layer %u is missing factors URL for namespace %{public}@", v18, 0x12u);
    }
  }

  v16 = *MEMORY[0x277D85DE8];
  return v12;
}

- (BOOL)_removeFactorsWithURL:(id)l
{
  v28 = *MEMORY[0x277D85DE8];
  lCopy = l;
  if (!lCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:564 description:{@"Invalid parameter not satisfying: %@", @"factorsURL"}];
  }

  v6 = [lCopy triPathAsOwner:0];
  if (v6)
  {
    v7 = [MEMORY[0x277CBEBC0] fileURLWithPath:v6];

    if (v7)
    {
      lCopy = v7;
      uRLByDeletingLastPathComponent = [v7 URLByDeletingLastPathComponent];
      if (!uRLByDeletingLastPathComponent)
      {
        currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:584 description:{@"Invalid parameter not satisfying: %@", @"parentURL"}];
      }

      v9 = [uRLByDeletingLastPathComponent triPathAsOwner:0];
      if (!v9)
      {
        currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
        [currentHandler3 handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:586 description:{@"Invalid parameter not satisfying: %@", @"parentPath"}];
      }

      v25 = 0;
      path = [lCopy path];
      if (path)
      {
        v11 = path;
        path2 = [lCopy path];
        if ([TRIReferenceManagedDir isPathInManagedDir:path2])
        {
          path3 = [lCopy path];
          v14 = 1;
          v15 = [TRIReferenceManagedDir removeFileInManagedDirWithPath:path3 inUseDeletionBehavior:1 wasDeleted:&v25];

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

    lCopy = TRILogCategory_Server();
    if (os_log_type_enabled(lCopy, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = 0;
      _os_log_error_impl(&dword_26F567000, lCopy, OS_LOG_TYPE_ERROR, "Failed to resolve url: %{public}@", buf, 0xCu);
    }

    goto LABEL_24;
  }

  triIsContainerURL = [lCopy triIsContainerURL];
  v18 = TRILogCategory_Server();
  v19 = v18;
  if (!triIsContainerURL)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = lCopy;
      _os_log_error_impl(&dword_26F567000, v19, OS_LOG_TYPE_ERROR, "Failed to resolve url: %{public}@", buf, 0xCu);
    }

LABEL_24:
    v14 = 0;
    goto LABEL_28;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543362;
    v27 = lCopy;
    _os_log_impl(&dword_26F567000, v19, OS_LOG_TYPE_DEFAULT, "Failed to resolve container url: %{public}@", buf, 0xCu);
  }

  v14 = 1;
LABEL_28:

  v20 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)urlForFactorsWithTreatmentId:(id)id namespaceName:(id)name
{
  v14[2] = *MEMORY[0x277D85DE8];
  v6 = [(TRIClientTreatmentStorage *)self _baseUrlForTreatment:id namespaceName:name];
  v7 = MEMORY[0x277CBEBC0];
  path = [v6 path];
  v14[0] = path;
  v14[1] = @"treatment.pb";
  v9 = [MEMORY[0x277CBEA60] arrayWithObjects:v14 count:2];
  v10 = [v7 fileURLWithPathComponents:v9];

  if (!v10)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:602 description:@"urlForFactorsWithTreatmentId is nil"];
  }

  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (BOOL)_savePersistedTreatment:(id)treatment
{
  v30 = *MEMORY[0x277D85DE8];
  treatmentCopy = treatment;
  v6 = objc_autoreleasePoolPush();
  treatmentId = [treatmentCopy treatmentId];
  v8 = [(TRIClientTreatmentStorage *)self urlForTreatmentWithTreatmentId:treatmentId];

  uRLByDeletingLastPathComponent = [v8 URLByDeletingLastPathComponent];
  if (!uRLByDeletingLastPathComponent)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:611 description:{@"Invalid parameter not satisfying: %@", @"parentDirURL"}];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v25 = 0;
  v11 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v25];
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
  [v14 setTreatment:treatmentCopy];
  data = [v14 data];
  if (!data)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:625 description:{@"Invalid parameter not satisfying: %@", @"data"}];
  }

  v24 = 0;
  v16 = [data writeToURL:v8 options:268435457 error:&v24];
  v17 = v24;
  if ((v16 & 1) == 0)
  {
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      treatmentId2 = [treatmentCopy treatmentId];
      *buf = 138412546;
      v27 = treatmentId2;
      v28 = 2114;
      v29 = v17;
      _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Failed to write TRIPersistedTreatment for treatment %@: %{public}@", buf, 0x16u);
    }
  }

  objc_autoreleasePoolPop(v6);
  v19 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)_deleteOnDemandAssetsWithFactorNames:(id)names treatment:(id)treatment namespace:(id)namespace inUseAssetDeletionBehavior:(unsigned __int8)behavior
{
  behaviorCopy = behavior;
  v87 = *MEMORY[0x277D85DE8];
  namesCopy = names;
  treatmentCopy = treatment;
  namespaceCopy = namespace;
  treatmentId = [treatmentCopy treatmentId];
  selfCopy = self;
  v62 = namespaceCopy;
  v13 = [(TRIClientTreatmentStorage *)self _baseUrlForTreatment:treatmentId namespaceName:namespaceCopy];
  path = [v13 path];

  v63 = treatmentCopy;
  v64 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  v80 = 0u;
  factorLevelArray = [treatmentCopy factorLevelArray];
  v15 = [factorLevelArray countByEnumeratingWithState:&v77 objects:v86 count:16];
  if (!v15)
  {
    LOBYTE(v18) = 1;
    goto LABEL_37;
  }

  v16 = v15;
  v60 = a2;
  v17 = *v78;
  LODWORD(v18) = 1;
  v68 = factorLevelArray;
  do
  {
    v19 = 0;
    do
    {
      if (*v78 != v17)
      {
        objc_enumerationMutation(factorLevelArray);
      }

      v20 = *(*(&v77 + 1) + 8 * v19);
      v21 = objc_autoreleasePoolPush();
      level = [v20 level];
      v23 = [level fileOrDirectoryLevelWithIsDir:0];

      if (!v23)
      {
        level2 = [v20 level];
        levelOneOfCase = [level2 levelOneOfCase];

        if (levelOneOfCase != 104)
        {
          goto LABEL_28;
        }

        level3 = [v20 level];
        mobileAssetReferenceValue = [level3 mobileAssetReferenceValue];

        if ([mobileAssetReferenceValue isOnDemand])
        {
          v70 = v18;
          factor = [v20 factor];
          name = [factor name];
          v37 = [namesCopy containsObject:name];

          if (v37)
          {
            v38 = objc_opt_class();
            factor2 = [v20 factor];
            name2 = [factor2 name];
            v41 = [v38 relPathForMAReferenceWithFactorName:name2];

            v42 = [path stringByAppendingPathComponent:v41];
            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            LODWORD(factor2) = [defaultManager fileExistsAtPath:v42];

            if (factor2)
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
          factorLevelArray = v68;
        }

LABEL_27:

        goto LABEL_28;
      }

      if (![v23 hasAsset])
      {
        goto LABEL_28;
      }

      mobileAssetReferenceValue = [v23 asset];
      if (![mobileAssetReferenceValue hasCloudKitIndex])
      {
        goto LABEL_27;
      }

      hasPath = [v23 hasPath];

      if (!hasPath)
      {
        goto LABEL_28;
      }

      factor3 = [v20 factor];
      name3 = [factor3 name];
      v28 = [namesCopy containsObject:name3];

      if (v28)
      {
        if ([v23 isOnDemand])
        {
          factor4 = [v20 factor];
          treatmentId2 = [v63 treatmentId];
          v31 = [(TRIClientTreatmentStorage *)selfCopy _assetURLForFactor:factor4 treatmentId:treatmentId2];

          mobileAssetReferenceValue = [v31 path];
          if (!mobileAssetReferenceValue)
          {
            currentHandler = [MEMORY[0x277CCA890] currentHandler];
            [currentHandler handleFailureInMethod:v60 object:selfCopy file:@"TRIClientTreatmentStorage.m" lineNumber:669 description:{@"Expression was unexpectedly nil/false: %@", @"url.path"}];
          }

          [v64 addObject:mobileAssetReferenceValue];
          [v23 setPath:0];
        }

        else
        {
          mobileAssetReferenceValue = TRILogCategory_Server();
          if (os_log_type_enabled(mobileAssetReferenceValue, OS_LOG_TYPE_ERROR))
          {
            factor5 = [v20 factor];
            name4 = [factor5 name];
            treatmentId3 = [v63 treatmentId];
            buf = 138543618;
            v83 = name4;
            v84 = 2112;
            v85 = treatmentId3;
            _os_log_error_impl(&dword_26F567000, mobileAssetReferenceValue, OS_LOG_TYPE_ERROR, "Factor %{public}@ for treatment %@ is not on-demand.", &buf, 0x16u);
          }

          LODWORD(v18) = 0;
        }

        goto LABEL_26;
      }

      factorLevelArray = v68;
LABEL_28:

      objc_autoreleasePoolPop(v21);
      ++v19;
    }

    while (v16 != v19);
    v51 = [factorLevelArray countByEnumeratingWithState:&v77 objects:v86 count:16];
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
        if (![TRIReferenceManagedDir removeFileInManagedDirWithPath:v57 inUseDeletionBehavior:behaviorCopy wasDeleted:&v71])
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

- (BOOL)_linkAssetsUpdatingTreatment:(id)treatment
{
  v116 = *MEMORY[0x277D85DE8];
  treatmentCopy = treatment;
  v97 = [[TRIAssetStore alloc] initWithPaths:self->_paths];
  factorLevelArray = [treatmentCopy factorLevelArray];
  v7 = [factorLevelArray count];

  if (!v7)
  {
    namespaceName = TRILogCategory_Server();
    if (os_log_type_enabled(namespaceName, OS_LOG_TYPE_DEFAULT))
    {
      treatmentId = [treatmentCopy treatmentId];
      *buf = 138412290;
      v110 = treatmentId;
      _os_log_impl(&dword_26F567000, namespaceName, OS_LOG_TYPE_DEFAULT, "Treatment %@ has no factor levels. Proceeding without linking assets.", buf, 0xCu);
    }

    v66 = 1;
    goto LABEL_79;
  }

  v107 = 0u;
  v108 = 0u;
  v105 = 0u;
  v106 = 0u;
  factorLevelArray2 = [treatmentCopy factorLevelArray];
  v101 = [factorLevelArray2 countByEnumeratingWithState:&v105 objects:v115 count:16];
  if (v101)
  {
    v90 = a2;
    selfCopy = self;
    namespaceName = 0;
    v100 = *v106;
    v94 = treatmentCopy;
    v96 = factorLevelArray2;
    while (1)
    {
      v10 = 0;
      v11 = namespaceName;
      do
      {
        if (*v106 != v100)
        {
          objc_enumerationMutation(factorLevelArray2);
        }

        v12 = *(*(&v105 + 1) + 8 * v10);
        context = objc_autoreleasePoolPush();
        factor = [v12 factor];
        namespaceName = [factor namespaceName];

        level = [v12 level];
        v15 = [level fileOrDirectoryLevelWithIsDir:0];

        if (!v15)
        {
          level2 = [v12 level];
          levelOneOfCase = [level2 levelOneOfCase];

          if (levelOneOfCase == 104)
          {
            factor2 = [v12 factor];
            namespaceString = [factor2 namespaceString];

            if (!namespaceString)
            {
              mobileAssetReferenceValue = TRILogCategory_Server();
              if (!os_log_type_enabled(mobileAssetReferenceValue, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_71;
              }

              treatmentId2 = [treatmentCopy treatmentId];
              factor3 = [v12 factor];
              [factor3 name];
              v73 = v72 = namespaceName;
              *buf = 138543618;
              v110 = treatmentId2;
              v111 = 2114;
              v112 = v73;
              _os_log_error_impl(&dword_26F567000, mobileAssetReferenceValue, OS_LOG_TYPE_ERROR, "Treatment %{public}@ has factor %{public}@ with missing namespaceString.", buf, 0x16u);

              namespaceName = v72;
              goto LABEL_81;
            }

            level3 = [v12 level];
            mobileAssetReferenceValue = [level3 mobileAssetReferenceValue];

            if (![mobileAssetReferenceValue hasAssetType]|| ![mobileAssetReferenceValue hasAssetSpecifier]|| ([mobileAssetReferenceValue hasAssetVersion]& 1) == 0)
            {
              treatmentId2 = TRILogCategory_Server();
              if (!os_log_type_enabled(treatmentId2, OS_LOG_TYPE_ERROR))
              {
LABEL_65:

                goto LABEL_71;
              }

              factor3 = [treatmentCopy treatmentId];
              [v12 factor];
              v86 = v85 = namespaceName;
              name = [v86 name];
              *buf = 138543618;
              v110 = factor3;
              v111 = 2114;
              v112 = name;
              _os_log_error_impl(&dword_26F567000, treatmentId2, OS_LOG_TYPE_ERROR, "Treatment %{public}@ has factor %{public}@ with incomplete MobileAssetReference.", buf, 0x16u);

              namespaceName = v85;
LABEL_81:

              goto LABEL_65;
            }

            v99 = namespaceName;
            factor4 = [v12 factor];
            treatmentId3 = [treatmentCopy treatmentId];
            namespaceName2 = [factor4 namespaceName];
            v40 = [(TRIClientTreatmentStorage *)selfCopy _baseUrlForTreatment:treatmentId3 namespaceName:namespaceName2];

            v92 = v40;
            path = [v40 path];
            if (!path)
            {
              currentHandler = [MEMORY[0x277CCA890] currentHandler];
              [currentHandler handleFailureInMethod:v90 object:selfCopy file:@"TRIClientTreatmentStorage.m" lineNumber:796 description:{@"Expression was unexpectedly nil/false: %@", @"targetURL.path"}];
            }

            v42 = objc_opt_class();
            v93 = factor4;
            name2 = [factor4 name];
            v44 = [v42 relPathForMAReferenceWithFactorName:name2];

            v91 = v44;
            v45 = [path stringByAppendingPathComponent:v44];
            stringByDeletingLastPathComponent = [v45 stringByDeletingLastPathComponent];
            v47 = objc_alloc(MEMORY[0x277D73740]);
            assetType = [mobileAssetReferenceValue assetType];
            assetSpecifier = [mobileAssetReferenceValue assetSpecifier];
            assetVersion = [mobileAssetReferenceValue assetVersion];
            v51 = [v47 initWithType:assetType specifier:assetSpecifier version:assetVersion];

            [MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:stringByDeletingLastPathComponent];
            if ([mobileAssetReferenceValue hasIsFileFactor])
            {
              isFileFactor = [mobileAssetReferenceValue isFileFactor];
            }

            else
            {
              isFileFactor = 0;
            }

            treatmentCopy = v94;
            if (![(TRIAssetStore *)v97 referenceMAAutoAssetWithId:v51 isFileFactor:isFileFactor usingCurrentPath:v45 futurePath:v45])
            {
              v74 = TRILogCategory_Server();
              if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
              {
                *buf = 138543362;
                v110 = v45;
                _os_log_error_impl(&dword_26F567000, v74, OS_LOG_TYPE_ERROR, "Unable to reference maAutoAsset at %{public}@", buf, 0xCu);
              }

              namespaceName = v99;
LABEL_71:
              v75 = context;
LABEL_76:

              objc_autoreleasePoolPop(v75);
              factorLevelArray2 = v96;
LABEL_77:

              goto LABEL_78;
            }

            namespaceName = v99;
            factorLevelArray2 = v96;
          }

LABEL_38:

          objc_autoreleasePoolPop(context);
          goto LABEL_39;
        }

        if (![v15 hasAsset])
        {
          goto LABEL_38;
        }

        asset = [v15 asset];
        hasAssetId = [asset hasAssetId];

        if (!hasAssetId)
        {
          goto LABEL_38;
        }

        asset2 = [v15 asset];
        assetId = [asset2 assetId];
        mobileAssetReferenceValue = TRIValidateAssetId();

        if (!mobileAssetReferenceValue)
        {
          v76 = TRILogCategory_Server();
          if (!os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
          {
LABEL_75:
            v75 = context;

            goto LABEL_76;
          }

          treatmentId4 = [treatmentCopy treatmentId];
          [v15 asset];
          v79 = v78 = namespaceName;
          assetId2 = [v79 assetId];
          factor5 = [v12 factor];
          name3 = [factor5 name];
          *buf = 138412802;
          v110 = treatmentId4;
          v111 = 2114;
          v112 = assetId2;
          v113 = 2114;
          v114 = name3;
          _os_log_error_impl(&dword_26F567000, v76, OS_LOG_TYPE_ERROR, "Treatment %@ has unsuitable asset id %{public}@ for factor %{public}@.", buf, 0x20u);

          namespaceName = v78;
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

          treatmentId4 = [treatmentCopy treatmentId];
          *buf = 138412290;
          v110 = treatmentId4;
          _os_log_error_impl(&dword_26F567000, v76, OS_LOG_TYPE_ERROR, "Treatment %@ has missing factor.", buf, 0xCu);
          goto LABEL_83;
        }

        v98 = namespaceName;
        factor6 = [v12 factor];
        treatmentId5 = [treatmentCopy treatmentId];
        v23 = [(TRIClientTreatmentStorage *)selfCopy _assetURLForFactor:factor6 treatmentId:treatmentId5];

        path2 = [v23 path];
        if (!path2)
        {
          currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler2 handleFailureInMethod:v90 object:selfCopy file:@"TRIClientTreatmentStorage.m" lineNumber:751 description:{@"Expression was unexpectedly nil/false: %@", @"targetURL.path"}];
        }

        stringByDeletingLastPathComponent2 = [path2 stringByDeletingLastPathComponent];
        defaultManager = [MEMORY[0x277CCAA00] defaultManager];
        v104 = 0;
        v27 = [defaultManager createDirectoryAtPath:stringByDeletingLastPathComponent2 withIntermediateDirectories:1 attributes:0 error:&v104];
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

        if ([v15 hasIsOnDemand] && objc_msgSend(v15, "isOnDemand") && !-[TRIAssetStore hasAssetWithIdentifier:type:](v97, "hasAssetWithIdentifier:type:", mobileAssetReferenceValue, 0))
        {
          v31 = 0;
          v30 = 1;
        }

        else if ([(TRIAssetStore *)v97 linkAssetWithIdentifier:mobileAssetReferenceValue toPath:path2])
        {
          [v15 setPath:path2];
          v30 = 0;
          v31 = 1;
        }

        else
        {
          v31 = 0;
          v30 = 0;
        }

        treatmentCopy = v94;
        namespaceName = v98;
        factorLevelArray2 = v96;
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
        v11 = namespaceName;
      }

      while (v101 != v10);
      v55 = [factorLevelArray2 countByEnumeratingWithState:&v105 objects:v115 count:16];
      v101 = v55;
      if (!v55)
      {

        if (!namespaceName)
        {
          goto LABEL_62;
        }

        treatmentId6 = [treatmentCopy treatmentId];
        v57 = namespaceName;
        v58 = [(TRIClientTreatmentStorage *)selfCopy _baseUrlForTreatment:treatmentId6 namespaceName:namespaceName];
        path3 = [v58 path];

        defaultManager2 = [MEMORY[0x277CCAA00] defaultManager];
        v61 = path3;
        if (!v61)
        {
          currentHandler3 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler3 handleFailureInMethod:v90 object:selfCopy file:@"TRIClientTreatmentStorage.m" lineNumber:825 description:{@"Expression was unexpectedly nil/false: %@", @"directory"}];
        }

        v103 = 0;
        v62 = [defaultManager2 createDirectoryAtPath:v61 withIntermediateDirectories:1 attributes:0 error:&v103];
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
          currentHandler4 = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler4 handleFailureInMethod:v90 object:selfCopy file:@"TRIClientTreatmentStorage.m" lineNumber:831 description:{@"Expression was unexpectedly nil/false: %@", @"directory"}];
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

        namespaceName = v57;
        goto LABEL_79;
      }
    }
  }

LABEL_62:
  namespaceName = TRILogCategory_Server();
  if (os_log_type_enabled(namespaceName, OS_LOG_TYPE_ERROR))
  {
    treatmentId7 = [treatmentCopy treatmentId];
    *buf = 138543362;
    v110 = treatmentId7;
    _os_log_error_impl(&dword_26F567000, namespaceName, OS_LOG_TYPE_ERROR, "Unable to find a namespace name from factor levels in treatment %{public}@", buf, 0xCu);
  }

LABEL_78:
  v66 = 0;
LABEL_79:

  v83 = *MEMORY[0x277D85DE8];
  return v66;
}

+ (id)relPathForMAReferenceWithFactorName:(id)name
{
  triFilenameForFactorName = [name triFilenameForFactorName];
  v4 = [@"maRefs" stringByAppendingPathComponent:triFilenameForFactorName];

  return v4;
}

- (BOOL)_saveNamespacePartitionedTreatmentsForTreatment:(id)treatment forNamespaceNames:(id)names
{
  v38 = *MEMORY[0x277D85DE8];
  treatmentCopy = treatment;
  namesCopy = names;
  v23 = treatmentCopy;
  treatmentId = [treatmentCopy treatmentId];
  if (treatmentId)
  {
    v7 = objc_opt_new();
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = [treatmentCopy factorLevelArray];
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
          factor = [v11 factor];
          namespaceString = [factor namespaceString];

          if (!namespaceString)
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

          if (!namesCopy || [namesCopy containsObject:namespaceString])
          {
            v15 = [v7 objectForKeyedSubscript:namespaceString];
            if (!v15)
            {
              v15 = objc_opt_new();
              [v15 setTreatmentId:treatmentId];
              [v7 setObject:v15 forKeyedSubscript:namespaceString];
            }

            factorLevelArray = [v15 factorLevelArray];
            [factorLevelArray addObject:v11];
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
    v27 = treatmentId;
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

- (id)_assetURLForFactor:(id)factor treatmentId:(id)id
{
  idCopy = id;
  factorCopy = factor;
  namespaceString = [factorCopy namespaceString];
  if (!namespaceString)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:910 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];
  }

  v10 = [(TRIClientTreatmentStorage *)self _baseUrlForTreatment:idCopy namespaceName:namespaceString];
  v11 = MEMORY[0x277D73758];
  path = [v10 path];
  if (!path)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:912 description:{@"Expression was unexpectedly nil/false: %@", @"dir.path"}];
  }

  v13 = [v11 pathForFactor:factorCopy directory:path];

  v14 = [MEMORY[0x277CBEBC0] fileURLWithPath:v13];

  return v14;
}

- (id)_baseUrlForTreatment:(id)treatment namespaceName:(id)name
{
  v6 = MEMORY[0x277D737F8];
  nameCopy = name;
  treatmentCopy = treatment;
  v9 = [[v6 alloc] initWithPaths:self->_paths];
  v10 = [v9 baseUrlForTreatment:treatmentCopy namespaceName:nameCopy];

  return v10;
}

- (id)_copyFileFromURL:(id)l to:(id)to
{
  v28 = *MEMORY[0x277D85DE8];
  toCopy = to;
  v8 = MEMORY[0x277CBEA90];
  lCopy = l;
  v25 = 0;
  v10 = [[v8 alloc] initWithContentsOfURL:lCopy options:1 error:&v25];

  v11 = v25;
  if (!v10)
  {
    uRLByDeletingLastPathComponent = TRILogCategory_Server();
    if (os_log_type_enabled(uRLByDeletingLastPathComponent, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v27 = v11;
      _os_log_error_impl(&dword_26F567000, uRLByDeletingLastPathComponent, OS_LOG_TYPE_ERROR, "Failed to read source URL: %{public}@", buf, 0xCu);
    }

    goto LABEL_15;
  }

  uRLByDeletingLastPathComponent = [toCopy URLByDeletingLastPathComponent];
  if (!uRLByDeletingLastPathComponent)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:932 description:{@"Invalid parameter not satisfying: %@", @"parentURL"}];
  }

  defaultManager = [MEMORY[0x277CCAA00] defaultManager];
  v24 = 0;
  v14 = [defaultManager createDirectoryAtURL:uRLByDeletingLastPathComponent withIntermediateDirectories:1 attributes:0 error:&v24];
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
  v17 = [v10 writeToURL:toCopy options:268435457 error:&v23];
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

  v18 = toCopy;
LABEL_16:

  v20 = *MEMORY[0x277D85DE8];
  return v18;
}

- (id)urlForTreatmentWithTreatmentId:(id)id
{
  v5 = MEMORY[0x277D737F8];
  idCopy = id;
  v7 = [[v5 alloc] initWithPaths:self->_paths];
  v8 = [v7 baseUrlForTreatment:idCopy namespaceName:@"0"];

  if (!v8)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:957 description:{@"Invalid parameter not satisfying: %@", @"treatmentBasename"}];
  }

  v9 = [v8 URLByAppendingPathExtension:@"pb"];
  if (!v9)
  {
    currentHandler2 = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:959 description:{@"Invalid parameter not satisfying: %@", @"result"}];
  }

  return v9;
}

- (BOOL)_resolveAssetPathsInTreatment:(id)treatment usingReferenceURL:(id)l
{
  v35 = *MEMORY[0x277D85DE8];
  treatmentCopy = treatment;
  lCopy = l;
  if (([lCopy hasDirectoryPath] & 1) == 0)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRIClientTreatmentStorage.m" lineNumber:964 description:@"referenceURL must be a directory"];
  }

  v9 = [lCopy triPathAsOwner:0];
  if (v9)
  {
    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    factorLevelArray = [treatmentCopy factorLevelArray];
    v11 = [factorLevelArray countByEnumeratingWithState:&v30 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v28 = lCopy;
      v29 = treatmentCopy;
      v13 = *v31;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v31 != v13)
          {
            objc_enumerationMutation(factorLevelArray);
          }

          level = [*(*(&v30 + 1) + 8 * i) level];
          v16 = [level fileOrDirectoryLevelWithIsDir:0];

          if (v16 && [v16 hasPath])
          {
            v17 = MEMORY[0x277CBEBC0];
            path = [v16 path];
            v19 = [v17 triParseURLFromString:path];

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
            defaultManager = [MEMORY[0x277CCAA00] defaultManager];
            v23 = [defaultManager triPath:v21 relativeToParentPath:v9];

            [v16 setPath:v23];
          }
        }

        v12 = [factorLevelArray countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }

      v24 = 1;
LABEL_21:
      lCopy = v28;
      treatmentCopy = v29;
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