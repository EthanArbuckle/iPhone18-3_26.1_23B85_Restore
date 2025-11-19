@interface TRIFPNamespaceFactorProvider
- (TRIFPNamespaceFactorProvider)initWithParentId:(id)a3 deploymentId:(int)a4 promotable:(BOOL)a5;
- (TRIFPNamespaceFactorProvider)initWithPath:(id)a3 parentId:(id)a4 deploymentId:(int)a5 treatmentId:(id)a6 promotable:(BOOL)a7;
- (id)_factorLevelsWithFactorPackData:(id)a3 referencePath:(id)a4 outFactorPackId:(id *)a5 outNamespaceName:(id *)a6 outNCVs:(id *)a7;
- (id)_readAllFactorLevelsFromStorage;
- (id)factorLevels;
- (id)levelForFactor:(id)a3;
- (id)namespaceName;
- (id)rolloutId;
- (id)treatmentId;
- (unsigned)namespaceCompatibilityVersion;
- (unsigned)namespaceId;
- (void)cacheFactorLevels;
- (void)dealloc;
@end

@implementation TRIFPNamespaceFactorProvider

- (id)treatmentId
{
  *&v20[13] = *MEMORY[0x277D85DE8];
  if (self->_isFlatbufferWriteEnabled && !self->_isFlatbufferReadEnabled)
  {
    v3 = [(TRIFBFastFactorLevels *)self->_fastFactorLevels sourceAsFactorPackId];

    if (v3)
    {
      v4 = [(TRIFBFastFactorLevels *)self->_fastFactorLevels sourceAsFactorPackId];
      v5 = TRIValidateFactorPackId(v4);

      if (([v5 isEqualToString:self->_factorPackId]& 1) == 0)
      {
        v6 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          factorPackId = self->_factorPackId;
          v17 = 138412546;
          v18 = v5;
          v19 = 2112;
          *v20 = factorPackId;
          _os_log_error_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_ERROR, "Flatbuffer factor pack id: %@ does not match with protobuf factor pack id: %@", &v17, 0x16u);
        }
      }
    }

    else
    {
      v5 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        parentId = self->_parentId;
        deploymentId = self->_deploymentId;
        v15 = self->_factorPackId;
        v17 = 138543874;
        v18 = parentId;
        v19 = 1024;
        *v20 = deploymentId;
        v20[2] = 2114;
        *&v20[3] = v15;
        _os_log_error_impl(&dword_22EA6B000, v5, OS_LOG_TYPE_ERROR, "Failed to find factor pack identifier within TRIFBFastFactorLevels object for rollout:%{public}@ deployment:%d, factor-pack: %{public}@", &v17, 0x1Cu);
      }
    }
  }

  p_treatmentId = &self->_treatmentId;
  if (self->_treatmentId)
  {
    v8 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *p_treatmentId;
      v17 = 138543362;
      v18 = v9;
      _os_log_impl(&dword_22EA6B000, v8, OS_LOG_TYPE_DEFAULT, "Factor pack had explicit treatment ID, returning that instead of factor pack ID as the treatment ID: %{public}@", &v17, 0xCu);
    }
  }

  else
  {
    p_treatmentId = &self->_factorPackId;
  }

  v10 = *p_treatmentId;
  v11 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)dealloc
{
  [(TRIFPNamespaceFactorProvider *)self dispose];
  v3.receiver = self;
  v3.super_class = TRIFPNamespaceFactorProvider;
  [(TRIFPNamespaceFactorProvider *)&v3 dealloc];
}

- (unsigned)namespaceCompatibilityVersion
{
  v32 = *MEMORY[0x277D85DE8];
  if (self->_isFlatbufferWriteEnabled && !self->_isFlatbufferReadEnabled)
  {
    v3 = [(TRIFBFastFactorLevels *)self->_fastFactorLevels ncvs];
    if (v3)
    {
      v4 = v3;
      namespaceCompatibilityVersions = self->_namespaceCompatibilityVersions;
      v6 = MEMORY[0x277CBEB98];
      v7 = [(TRIFBFastFactorLevels *)self->_fastFactorLevels ncvs];
      v8 = [v6 setWithArray:v7];
      LOBYTE(namespaceCompatibilityVersions) = [(NSSet *)namespaceCompatibilityVersions isEqual:v8];

      if ((namespaceCompatibilityVersions & 1) == 0)
      {
        v9 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          v19 = MEMORY[0x277CBEB98];
          v20 = [(TRIFBFastFactorLevels *)self->_fastFactorLevels ncvs];
          v21 = [v19 setWithArray:v20];
          v22 = self->_namespaceCompatibilityVersions;
          *buf = 138412546;
          v29 = v21;
          v30 = 2112;
          v31 = v22;
          _os_log_error_impl(&dword_22EA6B000, v9, OS_LOG_TYPE_ERROR, "Flatbuffer ncvs:%@ do not match with protobuf ncvs: %@", buf, 0x16u);
        }
      }
    }
  }

  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v10 = self->_namespaceCompatibilityVersions;
  v11 = [(NSSet *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  if (!v11)
  {

LABEL_20:
    v14 = 0;
    goto LABEL_21;
  }

  v12 = v11;
  v13 = *v24;
  v14 = 0x80000000;
  do
  {
    for (i = 0; i != v12; ++i)
    {
      if (*v24 != v13)
      {
        objc_enumerationMutation(v10);
      }

      v16 = [*(*(&v23 + 1) + 8 * i) intValue];
      if (v14 <= v16)
      {
        v14 = v16;
      }
    }

    v12 = [(NSSet *)v10 countByEnumeratingWithState:&v23 objects:v27 count:16];
  }

  while (v12);

  if (v14 == 0x80000000)
  {
    goto LABEL_20;
  }

LABEL_21:
  v17 = *MEMORY[0x277D85DE8];
  return v14;
}

- (id)factorLevels
{
  if ([(NSMutableDictionary *)self->_warmupPersistentFactorLevelCache count])
  {
    [(NSMutableDictionary *)self->_warmupPersistentFactorLevelCache allValues];
  }

  else
  {
    [(TRIFPNamespaceFactorProvider *)self _readAllFactorLevelsFromStorage];
  }
  v3 = ;

  return v3;
}

- (id)_readAllFactorLevelsFromStorage
{
  v66 = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  if (self->_isFlatbufferReadEnabled)
  {
    v4 = 0;
  }

  else
  {
    v5 = objc_opt_new();
    factorLevels = self->_factorLevels;
    v58[0] = MEMORY[0x277D85DD0];
    v58[1] = 3221225472;
    v58[2] = __63__TRIFPNamespaceFactorProvider__readAllFactorLevelsFromStorage__block_invoke;
    v58[3] = &unk_27885E530;
    v4 = v5;
    v59 = v4;
    [(TRIFactorLevelCaching *)factorLevels enumerateFactorLevelsUsingBlock:v58];
  }

  if (self->_isFlatbufferWriteEnabled)
  {
    v7 = objc_alloc(MEMORY[0x277CBEB18]);
    v8 = [(TRIFBFastFactorLevels *)self->_fastFactorLevels levels];
    v9 = [v7 initWithCapacity:{objc_msgSend(v8, "count")}];

    v10 = [(TRIFBFastFactorLevels *)self->_fastFactorLevels levels];
    v56[0] = MEMORY[0x277D85DD0];
    v56[1] = 3221225472;
    v56[2] = __63__TRIFPNamespaceFactorProvider__readAllFactorLevelsFromStorage__block_invoke_2;
    v56[3] = &unk_27885E558;
    v56[4] = self;
    v11 = v9;
    v57 = v11;
    [v10 enumerateObjectsUsingBlock:v56];

    if (!self->_isFlatbufferReadEnabled)
    {
      v52 = v3;
      context = objc_autoreleasePoolPush();
      v12 = [v4 sortedArrayUsingComparator:&__block_literal_global_4];
      v51 = v11;
      v55 = [v11 sortedArrayUsingComparator:&__block_literal_global_4];
      if (([v12 isEqual:?] & 1) == 0)
      {
        v13 = [v12 count];
        if (v13 == [v55 count])
        {
          if ([v12 count])
          {
            v15 = 0;
            v53 = 0;
            *&v14 = 138412290;
            v49 = v14;
            v54 = v12;
            while (1)
            {
              v16 = [v12 objectAtIndexedSubscript:{v15, v49}];
              v17 = [v55 objectAtIndexedSubscript:v15];
              v18 = [v16 factor];
              v19 = [v18 id_p];
              v20 = [v17 factor];
              v21 = [v20 id_p];
              v22 = [v19 isEqualToString:v21];

              if (v22)
              {
                break;
              }

              v32 = v53;
              if (v53 <= 2)
              {
                v34 = TRILogCategory_ClientFramework();
                if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
                {
                  v35 = [v16 factor];
                  v36 = [v35 id_p];
                  v37 = [v17 factor];
                  v38 = [v37 id_p];
                  *buf = 138412546;
                  v61 = v36;
                  v62 = 2112;
                  v63 = v38;
                  _os_log_error_impl(&dword_22EA6B000, v34, OS_LOG_TYPE_ERROR, "primary id does not match for factors in arrays, pb:%@, fb:%@", buf, 0x16u);

                  v32 = v53;
                }

LABEL_22:

                v53 = v32 + 1;
              }

LABEL_23:

              ++v15;
              v12 = v54;
              if ([v54 count] <= v15)
              {
                goto LABEL_29;
              }
            }

            if ([v16 isEqual:v17])
            {
              goto LABEL_23;
            }

            v23 = [v17 factor];
            v24 = [v23 metadataKeysArray];
            v25 = [v16 factor];
            v26 = [v25 metadataKeysArray];

            if (v24 == v26)
            {
              goto LABEL_23;
            }

            v27 = [v17 level];
            v28 = [v27 metadata];
            v29 = [v16 level];
            v30 = [v29 metadata];
            v31 = [v28 isEqualToDictionary:v30];

            if (v31)
            {
              goto LABEL_23;
            }

            v32 = v53;
            if (v53 > 2)
            {
              goto LABEL_23;
            }

            v33 = TRILogCategory_ClientFramework();
            if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
            {
              *buf = v49;
              v61 = v17;
              _os_log_error_impl(&dword_22EA6B000, v33, OS_LOG_TYPE_ERROR, "factor level from flatbuffer storage:%@ does not match factor level from pb", buf, 0xCu);
            }

            v34 = TRILogCategory_ClientFramework();
            if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
            {
              *buf = v49;
              v61 = v16;
              _os_log_error_impl(&dword_22EA6B000, v34, OS_LOG_TYPE_ERROR, "factor level from flatbuffer storage does not match factor level from pb: %@", buf, 0xCu);
            }

            goto LABEL_22;
          }
        }

        else
        {
          v39 = TRILogCategory_ClientFramework();
          if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
          {
            namespaceName = self->_namespaceName;
            v47 = [v12 count];
            v48 = [v55 count];
            *buf = 138412802;
            v61 = namespaceName;
            v62 = 2048;
            v63 = v47;
            v64 = 2048;
            v65 = v48;
            _os_log_error_impl(&dword_22EA6B000, v39, OS_LOG_TYPE_ERROR, "Factor levels from flatbuffers do not match factor levels for protobuf for namespace: %@, with counts forPb:%lu forFb:%lu", buf, 0x20u);
          }
        }
      }

LABEL_29:

      objc_autoreleasePoolPop(context);
      v11 = v51;
      v3 = v52;
    }
  }

  else
  {
    v11 = 0;
  }

  if (self->_isFlatbufferReadEnabled)
  {
    v40 = v11;

    v4 = v40;
  }

  v41 = objc_alloc(MEMORY[0x277CBEB18]);
  if (v4)
  {
    v42 = v4;
  }

  else
  {
    v42 = MEMORY[0x277CBEBF8];
  }

  v43 = [v41 initWithArray:v42 copyItems:1];

  objc_autoreleasePoolPop(v3);
  v44 = *MEMORY[0x277D85DE8];

  return v43;
}

void __63__TRIFPNamespaceFactorProvider__readAllFactorLevelsFromStorage__block_invoke_2(uint64_t a1, void *a2)
{
  v7 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [*(*(a1 + 32) + 104) stringByDeletingLastPathComponent];
  v5 = [*(*(a1 + 32) + 80) namespaceName];
  v6 = [TRIFlatbufferUtils convertFBFactorLevelToProtoFactorLevel:v7 parentDir:v4 namespaceName:v5 isRelativePath:0];

  [*(a1 + 40) addObject:v6];
  objc_autoreleasePoolPop(v3);
}

- (TRIFPNamespaceFactorProvider)initWithParentId:(id)a3 deploymentId:(int)a4 promotable:(BOOL)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = TRIFPNamespaceFactorProvider;
  v10 = [(TRIFPNamespaceFactorProvider *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_parentId, a3);
    v11->_deploymentId = a4;
    v11->_promotable = a5;
  }

  return v11;
}

- (TRIFPNamespaceFactorProvider)initWithPath:(id)a3 parentId:(id)a4 deploymentId:(int)a5 treatmentId:(id)a6 promotable:(BOOL)a7
{
  location[3] = *MEMORY[0x277D85DE8];
  v14 = a3;
  v15 = a4;
  v16 = a6;
  if (!v14)
  {
    v62 = [MEMORY[0x277CCA890] currentHandler];
    [v62 handleFailureInMethod:a2 object:self file:@"TRIFPNamespaceFactorProvider.m" lineNumber:76 description:{@"Invalid parameter not satisfying: %@", @"path"}];
  }

  v69.receiver = self;
  v69.super_class = TRIFPNamespaceFactorProvider;
  v17 = [(TRIFPNamespaceFactorProvider *)&v69 init];
  v18 = v17;
  if (!v17)
  {
    goto LABEL_36;
  }

  objc_storeStrong(&v17->_parentId, a4);
  v18->_deploymentId = a5;
  objc_storeStrong(&v18->_treatmentId, a6);
  v18->_promotable = a7;
  v19 = [[TRIReferenceManagedDirReaderLock alloc] initWithDir:v14];
  dirLock = v18->_dirLock;
  v18->_dirLock = v19;

  if (!v18->_dirLock)
  {
LABEL_43:
    v56 = 0;
    goto LABEL_44;
  }

  v21 = [MEMORY[0x277CCAA00] defaultManager];
  v22 = [v14 stringByAppendingPathComponent:@"factorPack.fb"];
  if ([v21 fileExistsAtPath:v22])
  {
    v18->_isFlatbufferReadEnabled = _os_feature_enabled_impl();
    v18->_isFlatbufferWriteEnabled = _os_feature_enabled_impl();
    objc_storeStrong(&v18->_fbFactorPath, v22);
  }

  if (v18->_isFlatbufferReadEnabled && !v18->_isFlatbufferWriteEnabled)
  {
    v23 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_22EA6B000, v23, OS_LOG_TYPE_ERROR, "Invalid configuration for flatbuffer storage", location, 2u);
    }
  }

  if (v18->_fbFactorPath && v18->_isFlatbufferWriteEnabled)
  {
    v24 = objc_alloc(MEMORY[0x277CBEA90]);
    fbFactorPath = v18->_fbFactorPath;
    v68 = 0;
    v26 = [v24 initWithContentsOfFile:fbFactorPath options:8 error:&v68];
    v27 = v68;
    if (!v26)
    {
      v43 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        LODWORD(location[0]) = 138412290;
        *(location + 4) = v27;
        _os_log_error_impl(&dword_22EA6B000, v43, OS_LOG_TYPE_ERROR, "Failed to open factor pack: %@", location, 0xCu);
      }

      goto LABEL_42;
    }

    v28 = objc_alloc_init(MEMORY[0x277CBEB38]);
    warmupPersistentFactorLevelCache = v18->_warmupPersistentFactorLevelCache;
    v18->_warmupPersistentFactorLevelCache = v28;

    v30 = [[TRIFBFastFactorLevels alloc] initVerifiedRootObjectFromData:v26];
    fastFactorLevels = v18->_fastFactorLevels;
    v18->_fastFactorLevels = v30;

    objc_storeStrong(&v18->_referencePath, a3);
    v32 = [(TRIFBFastFactorLevels *)v18->_fastFactorLevels ncvs];

    if (v32)
    {
      v33 = MEMORY[0x277CBEB98];
      v34 = [(TRIFBFastFactorLevels *)v18->_fastFactorLevels ncvs];
      v35 = [v33 setWithArray:v34];
      namespaceCompatibilityVersions = v18->_namespaceCompatibilityVersions;
      v18->_namespaceCompatibilityVersions = v35;
    }

    if (v18->_isFlatbufferReadEnabled)
    {
      v37 = [(TRIFBFastFactorLevels *)v18->_fastFactorLevels namespaceName];
      namespaceName = v18->_namespaceName;
      v18->_namespaceName = v37;

      v39 = [(TRIFBFastFactorLevels *)v18->_fastFactorLevels sourceAsFactorPackId];
      v40 = v39 == 0;

      if (v40)
      {
        v42 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
        {
          v61 = v18->_fbFactorPath;
          LODWORD(location[0]) = 138412290;
          *(location + 4) = v61;
          _os_log_error_impl(&dword_22EA6B000, v42, OS_LOG_TYPE_ERROR, "Failed to find factor pack identifier in TRIFBFastFactorLevels object for path: %@", location, 0xCu);
        }
      }

      else
      {
        v41 = [(TRIFBFastFactorLevels *)v18->_fastFactorLevels sourceAsFactorPackId];
        v42 = TRIValidateFactorPackId(v41);

        if (v42)
        {
          objc_storeStrong(&v18->_factorPackId, v42);
        }
      }
    }
  }

  if (!v18->_isFlatbufferReadEnabled)
  {
    v44 = [v14 stringByAppendingPathComponent:@"factorPack.pb"];
    pbFactorPath = v18->_pbFactorPath;
    v18->_pbFactorPath = v44;

    v46 = [MEMORY[0x277CCAA00] defaultManager];
    v47 = [v46 fileExistsAtPath:v18->_pbFactorPath];

    if (v47)
    {
      v48 = objc_alloc(MEMORY[0x277CBEA90]);
      v49 = v18->_pbFactorPath;
      v67 = 0;
      v50 = [v48 initWithContentsOfFile:v49 options:8 error:&v67];
      v27 = v67;
      if (v50)
      {
        v51 = [(TRIFPNamespaceFactorProvider *)v18 _factorLevelsWithFactorPackData:v50 referencePath:v14 outFactorPackId:&v18->_factorPackId outNamespaceName:&v18->_namespaceName outNCVs:&v18->_namespaceCompatibilityVersions];
        v52 = v51;
        if (v51)
        {
          if ([v51 count] < 0x11)
          {
            v59 = [[TRINaiveFactorLevelCache alloc] initWithFactorLevels:v52];
            factorLevels = v18->_factorLevels;
            v18->_factorLevels = v59;
          }

          else
          {
            objc_initWeak(location, v18);
            v53 = [TRIPruningFactorLevelCache alloc];
            v63[0] = MEMORY[0x277D85DD0];
            v63[1] = 3221225472;
            v63[2] = __90__TRIFPNamespaceFactorProvider_initWithPath_parentId_deploymentId_treatmentId_promotable___block_invoke;
            v63[3] = &unk_27885E4B8;
            objc_copyWeak(&v66, location);
            v64 = v50;
            v65 = v14;
            v54 = [(TRIPruningFactorLevelCache *)v53 initWithPruningDelaySeconds:v63 loadFactorLevels:5.0];
            v55 = v18->_factorLevels;
            v18->_factorLevels = v54;

            objc_destroyWeak(&v66);
            objc_destroyWeak(location);
          }

          goto LABEL_35;
        }
      }

      else
      {
        v50 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
        {
          LODWORD(location[0]) = 138412290;
          *(location + 4) = v27;
          _os_log_error_impl(&dword_22EA6B000, v50, OS_LOG_TYPE_ERROR, "Failed to open factor pack: %@", location, 0xCu);
        }
      }

      goto LABEL_42;
    }
  }

  if (!v18->_fbFactorPath)
  {
    v27 = TRILogCategory_ClientFramework();
    if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
    {
      LOWORD(location[0]) = 0;
      _os_log_error_impl(&dword_22EA6B000, v27, OS_LOG_TYPE_ERROR, "Failed to open factor pack storage based on any storage type", location, 2u);
    }

LABEL_42:

    goto LABEL_43;
  }

LABEL_35:

LABEL_36:
  v56 = v18;
LABEL_44:

  v57 = *MEMORY[0x277D85DE8];
  return v56;
}

id __90__TRIFPNamespaceFactorProvider_initWithPath_parentId_deploymentId_treatmentId_promotable___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v3 = WeakRetained;
  if (WeakRetained)
  {
    v4 = [WeakRetained _factorLevelsWithFactorPackData:*(a1 + 32) referencePath:*(a1 + 40) outFactorPackId:0 outNamespaceName:0 outNCVs:0];
  }

  else
  {
    v4 = MEMORY[0x277CBEBF8];
  }

  return v4;
}

- (id)_factorLevelsWithFactorPackData:(id)a3 referencePath:(id)a4 outFactorPackId:(id *)a5 outNamespaceName:(id *)a6 outNCVs:(id *)a7
{
  v62 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v13 = objc_autoreleasePoolPush();
  v57 = 0;
  v14 = [[TRIClientFactorPackStreamingParser alloc] initWithData:v11 error:&v57];
  v15 = v14;
  if (!v14)
  {
    v24 = TRILogCategory_ClientFramework();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 138412546;
    v59 = v12;
    v60 = 2112;
    v61 = v57;
    v45 = "Unable to parse factor pack %@: %@";
    v46 = v24;
    v47 = 22;
LABEL_26:
    _os_log_error_impl(&dword_22EA6B000, v46, OS_LOG_TYPE_ERROR, v45, buf, v47);
    goto LABEL_18;
  }

  if (![(TRIClientFactorPackStreamingParser *)v14 hasSelectedNamespace])
  {
    goto LABEL_17;
  }

  v16 = [(TRIClientFactorPackStreamingParser *)v15 selectedNamespace];
  if (([v16 hasName] & 1) == 0)
  {

    goto LABEL_17;
  }

  [(TRIClientFactorPackStreamingParser *)v15 selectedNamespace];
  v17 = v50 = v11;
  [v17 name];
  v18 = v12;
  v20 = v19 = v13;
  v21 = [v20 length];

  v13 = v19;
  v12 = v18;
  v22 = a7;

  v11 = v50;
  if (!v21)
  {
LABEL_17:
    v24 = TRILogCategory_ClientFramework();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 138412290;
    v59 = v12;
    v45 = "Factor pack has unset or empty namespace name: %@";
    goto LABEL_25;
  }

  if (![(TRIClientFactorPackStreamingParser *)v15 hasFactorPackId])
  {
    v24 = TRILogCategory_ClientFramework();
    if (!os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_18;
    }

    *buf = 138412290;
    v59 = v12;
    v45 = "Factor pack has unset factor pack id: %@";
LABEL_25:
    v46 = v24;
    v47 = 12;
    goto LABEL_26;
  }

  v23 = [(TRIClientFactorPackStreamingParser *)v15 factorPackId];
  v24 = TRIValidateFactorPackId(v23);

  if (!v24)
  {
LABEL_18:
    v44 = 0;
    goto LABEL_19;
  }

  if (a5)
  {
    objc_storeStrong(a5, v24);
  }

  if (a6)
  {
    v25 = [(TRIClientFactorPackStreamingParser *)v15 selectedNamespace];
    v26 = [v25 name];
    v27 = *a6;
    *a6 = v26;
  }

  if (v22)
  {
    v28 = objc_alloc(MEMORY[0x277CBEB58]);
    v29 = [(TRIClientFactorPackStreamingParser *)v15 selectedNamespace];
    v30 = [v28 initWithCapacity:{objc_msgSend(v29, "compatibilityVersionArray_Count")}];

    v31 = [(TRIClientFactorPackStreamingParser *)v15 selectedNamespace];
    v32 = [v31 compatibilityVersionArray];
    v55[0] = MEMORY[0x277D85DD0];
    v55[1] = 3221225472;
    v55[2] = __119__TRIFPNamespaceFactorProvider__factorLevelsWithFactorPackData_referencePath_outFactorPackId_outNamespaceName_outNCVs___block_invoke;
    v55[3] = &unk_27885E4E0;
    v33 = v30;
    v56 = v33;
    [v32 enumerateValuesWithBlock:v55];

    v34 = *v22;
    *v22 = v33;
    v35 = v33;
  }

  v36 = [objc_alloc(MEMORY[0x277D425C0]) initWithBehavior:1 copyWithZone:0];
  v37 = [(TRIClientFactorPackStreamingParser *)v15 selectedNamespace];
  v38 = [v37 name];
  v39 = [v36 intern:v38];

  v40 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v51[0] = MEMORY[0x277D85DD0];
  v51[1] = 3221225472;
  v51[2] = __119__TRIFPNamespaceFactorProvider__factorLevelsWithFactorPackData_referencePath_outFactorPackId_outNamespaceName_outNCVs___block_invoke_2;
  v51[3] = &unk_27885E508;
  v41 = v12;
  v52 = v41;
  v53 = v36;
  v54 = v40;
  v42 = v40;
  v43 = v36;
  [(TRIClientFactorPackStreamingParser *)v15 enumerateFactorLevelsWithBlock:v51];
  v44 = [TRINamespaceFactorProvider populateMAPathsForFactorLevels:v42 loadedFromParentDir:v41];

  v11 = v50;
LABEL_19:

  objc_autoreleasePoolPop(v13);
  v48 = *MEMORY[0x277D85DE8];

  return v44;
}

void __119__TRIFPNamespaceFactorProvider__factorLevelsWithFactorPackData_referencePath_outFactorPackId_outNamespaceName_outNCVs___block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a2];
  [v2 addObject:v3];
}

void __119__TRIFPNamespaceFactorProvider__factorLevelsWithFactorPackData_referencePath_outFactorPackId_outNamespaceName_outNCVs___block_invoke_2(uint64_t a1, void *a2)
{
  v18 = a2;
  if ([v18 hasFactor])
  {
    v3 = [v18 factor];
    if ([v3 hasName])
    {
      v4 = [v18 hasLevel];

      if (!v4)
      {
        goto LABEL_12;
      }

      v5 = [v18 level];
      v3 = [v5 fileOrDirectoryLevelWithIsDir:0];

      if (v3)
      {
        if ([v3 hasPath])
        {
          v6 = [v3 path];
          v7 = [v6 isAbsolutePath];

          if ((v7 & 1) == 0)
          {
            v8 = *(a1 + 32);
            v9 = [v3 path];
            v10 = [v8 stringByAppendingPathComponent:v9];
            [v3 setPath:v10];
          }
        }
      }

      v11 = [v18 factor];
      v12 = [v11 hasNamespaceName];

      if (v12)
      {
        v13 = *(a1 + 40);
        v14 = [v18 factor];
        v15 = [v14 namespaceName];
        v16 = [v13 intern:v15];
        v17 = [v18 factor];
        [v17 setNamespaceName:v16];
      }

      [*(a1 + 48) addObject:v18];
    }
  }

LABEL_12:
}

- (unsigned)namespaceId
{
  v5 = 0;
  v3 = TRINamespace_NamespaceId_EnumDescriptor();
  LODWORD(self) = [v3 getValue:&v5 forEnumTextFormatName:self->_namespaceName];

  if (self)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (id)namespaceName
{
  v15 = *MEMORY[0x277D85DE8];
  if (self->_isFlatbufferWriteEnabled && !self->_isFlatbufferReadEnabled)
  {
    namespaceName = self->_namespaceName;
    v4 = [(TRIFBFastFactorLevels *)self->_fastFactorLevels namespaceName];
    LOBYTE(namespaceName) = [(NSString *)namespaceName isEqualToString:v4];

    if ((namespaceName & 1) == 0)
    {
      v5 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v9 = [(TRIFBFastFactorLevels *)self->_fastFactorLevels namespaceName];
        v10 = self->_namespaceName;
        v11 = 138412546;
        v12 = v9;
        v13 = 2112;
        v14 = v10;
        _os_log_error_impl(&dword_22EA6B000, v5, OS_LOG_TYPE_ERROR, "Flatbuffer namespace name: %@ does not match with protobuf name: %@", &v11, 0x16u);
      }
    }
  }

  v6 = self->_namespaceName;
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)rolloutId
{
  *&v17[13] = *MEMORY[0x277D85DE8];
  if (self->_isFlatbufferWriteEnabled && !self->_isFlatbufferReadEnabled)
  {
    v3 = [(TRIFBFastFactorLevels *)self->_fastFactorLevels sourceAsFactorPackId];

    if (v3)
    {
      v4 = [(TRIFBFastFactorLevels *)self->_fastFactorLevels sourceAsFactorPackId];
      v5 = TRIValidateFactorPackId(v4);

      if (([v5 isEqualToString:self->_factorPackId]& 1) == 0)
      {
        v6 = TRILogCategory_ClientFramework();
        if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
        {
          factorPackId = self->_factorPackId;
          v14 = 138412546;
          v15 = v5;
          v16 = 2112;
          *v17 = factorPackId;
          _os_log_error_impl(&dword_22EA6B000, v6, OS_LOG_TYPE_ERROR, "Flatbuffer rollout id: %@ does not match with protobuf rollout id: %@", &v14, 0x16u);
        }
      }
    }

    else
    {
      v5 = TRILogCategory_ClientFramework();
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        parentId = self->_parentId;
        deploymentId = self->_deploymentId;
        v12 = self->_factorPackId;
        v14 = 138543874;
        v15 = parentId;
        v16 = 1024;
        *v17 = deploymentId;
        v17[2] = 2114;
        *&v17[3] = v12;
        _os_log_error_impl(&dword_22EA6B000, v5, OS_LOG_TYPE_ERROR, "Failed to find factor pack identifier within TRIFBFastFactorLevels object for rollout:%{public}@ deployment:%d, factor-pack: %{public}@", &v14, 0x1Cu);
      }
    }
  }

  v7 = self->_factorPackId;
  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)levelForFactor:(id)a3
{
  v36 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NSMutableDictionary *)self->_warmupPersistentFactorLevelCache count])
  {
    v5 = [(NSMutableDictionary *)self->_warmupPersistentFactorLevelCache objectForKey:v4];
    v6 = v5;
    if (!v5 || ![v5 hasLevel])
    {
      v8 = 0;
      goto LABEL_40;
    }

    v7 = [v6 level];
    v8 = [TRILevelChecked wrapLevel:v7];
  }

  else
  {
    if (self->_isFlatbufferReadEnabled)
    {
      v7 = 0;
      v6 = 0;
    }

    else
    {
      v9 = [(TRIFactorLevelCaching *)self->_factorLevels objectForKeyedSubscript:v4];
      v6 = v9;
      if (v9)
      {
        v10 = [v9 level];
        if (v10)
        {
          v7 = [TRILevelChecked wrapLevel:v10];
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
    }

    if (self->_isFlatbufferWriteEnabled)
    {
      v11 = [(TRIFBFastFactorLevels *)self->_fastFactorLevels levelsAsDict];
      v12 = [v11 objectForKeyedSubscript:v4];

      if (v12)
      {
        v13 = [(NSString *)self->_fbFactorPath stringByDeletingLastPathComponent];
        v14 = [(TRIFBFastFactorLevels *)self->_fastFactorLevels namespaceName];
        v15 = [TRIFlatbufferUtils convertFBFactorLevelToProtoFactorLevel:v12 parentDir:v13 namespaceName:v14 isRelativePath:0];
      }

      else
      {
        v15 = 0;
      }

      if (!self->_isFlatbufferReadEnabled && ([v6 isEqual:v15] & 1) == 0)
      {
        v17 = [v15 factor];
        v18 = [v17 metadataKeysArray];
        v19 = [v6 factor];
        v20 = [v19 metadataKeysArray];

        if (v18 != v20)
        {
          v33 = [v15 level];
          v21 = [v33 metadata];
          v22 = [v6 level];
          v23 = [v22 metadata];
          v24 = v23;
          v25 = v23 ? v23 : MEMORY[0x277CBEC10];
          v26 = [v21 isEqualToDictionary:v25];

          if ((v26 & 1) == 0)
          {
            v27 = TRILogCategory_ClientFramework();
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v35 = v15;
              _os_log_error_impl(&dword_22EA6B000, v27, OS_LOG_TYPE_ERROR, "factor level from flatbuffer storage:%@ does not match factor level from pb", buf, 0xCu);
            }

            v28 = TRILogCategory_ClientFramework();
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412290;
              v35 = v6;
              _os_log_error_impl(&dword_22EA6B000, v28, OS_LOG_TYPE_ERROR, "factor level from flatbuffer storage does not match factor level from pb: %@", buf, 0xCu);
            }
          }
        }
      }

      if (v15)
      {
        v29 = [v15 level];
        v16 = [TRILevelChecked wrapLevel:v29];
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

    if (self->_isFlatbufferReadEnabled)
    {
      v30 = v16;
    }

    else
    {
      v30 = v7;
    }

    v8 = v30;
  }

LABEL_40:
  v31 = *MEMORY[0x277D85DE8];

  return v8;
}

uint64_t __63__TRIFPNamespaceFactorProvider__readAllFactorLevelsFromStorage__block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 factor];
  v6 = [v5 id_p];
  v7 = [v4 factor];

  v8 = [v7 id_p];
  v9 = [v6 compare:v8];

  return v9;
}

- (void)cacheFactorLevels
{
  v3 = [(TRIFPNamespaceFactorProvider *)self _readAllFactorLevelsFromStorage];
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __49__TRIFPNamespaceFactorProvider_cacheFactorLevels__block_invoke;
  v4[3] = &unk_27885E350;
  v4[4] = self;
  [v3 enumerateObjectsUsingBlock:v4];
}

void __49__TRIFPNamespaceFactorProvider_cacheFactorLevels__block_invoke(uint64_t a1, void *a2)
{
  v2 = *(*(a1 + 32) + 72);
  v3 = a2;
  v5 = [v3 factor];
  v4 = [v5 name];
  [v2 setObject:v3 forKey:v4];
}

@end