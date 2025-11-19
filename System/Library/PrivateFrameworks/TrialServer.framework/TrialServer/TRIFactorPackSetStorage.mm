@interface TRIFactorPackSetStorage
- (BOOL)_forceRemoveItemAtPath:(id)a3;
- (BOOL)_nonAtomicOverwriteWithSrc:(id)a3 dest:(id)a4;
- (BOOL)hasFactorPackSetWithId:(id)a3 path:(id *)a4;
- (BOOL)migrateEligibleFactorPacksToGlobalWithServerContext:(id)a3;
- (BOOL)removeUnreferencedFactorPackSetsWithServerContext:(id)a3 removedCount:(unsigned int *)a4;
- (BOOL)saveFactorPackSet:(id)a3;
- (TRIFactorPackSetStorage)initWithPaths:(id)a3;
- (id)_collectFactorPackSets;
- (id)parentDirForFactorPackSets;
- (id)pathForFactorPackSetWithId:(id)a3;
- (void)enumerateFactorPacksForFactorPackSet:(id)a3 usingLegacyPaths:(BOOL)a4 withBlock:(id)a5;
- (void)enumerateOnlyProtobufFactorPacksForFactorPackSet:(id)a3 withBlock:(id)a4;
@end

@implementation TRIFactorPackSetStorage

- (TRIFactorPackSetStorage)initWithPaths:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TRIFactorPackSetStorage;
  v6 = [(TRIFactorPackSetStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paths, a3);
  }

  return v7;
}

- (BOOL)saveFactorPackSet:(id)a3
{
  v91 = *MEMORY[0x277D85DE8];
  v62 = a3;
  v3 = [v62 ident];
  v65 = [(TRIFactorPackSetStorage *)self pathForFactorPackSetWithId:v3];

  v61 = _os_feature_enabled_impl();
  v4 = [TRITempDirScopeGuard alloc];
  v5 = [(TRIPaths *)self->_paths localTempDir];
  v6 = [(TRITempDirScopeGuard *)v4 initWithPath:v5];

  v7 = v6;
  if (!v6)
  {
    goto LABEL_64;
  }

  v59 = v6;
  v8 = [(TRITempDirScopeGuard *)v6 path];
  v9 = objc_alloc(MEMORY[0x277CCACA8]);
  v10 = objc_opt_new();
  v11 = [v10 UUIDString];
  v12 = [v9 initWithFormat:@"fp-set-%@", v11];
  v63 = [v8 stringByAppendingPathComponent:v12];

  v81 = 0u;
  v82 = 0u;
  v79 = 0u;
  v80 = 0u;
  v13 = [v65 stringByDeletingLastPathComponent];
  v89[0] = v13;
  v14 = [v63 stringByAppendingPathComponent:@"factorPacks"];
  v89[1] = v14;
  v15 = [v63 stringByAppendingPathComponent:@"legacyNamespaceFactorPacks"];
  v89[2] = v15;
  v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v89 count:3];

  v17 = [(TRIFactorPackStorage *)v16 countByEnumeratingWithState:&v79 objects:v90 count:16];
  if (v17)
  {
    v18 = *v80;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v80 != v18)
        {
          objc_enumerationMutation(v16);
        }

        if (![MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:*(*(&v79 + 1) + 8 * i)])
        {
          LOBYTE(v6) = 0;
          goto LABEL_63;
        }
      }

      v17 = [(TRIFactorPackStorage *)v16 countByEnumeratingWithState:&v79 objects:v90 count:16];
    }

    while (v17);
  }

  v16 = [[TRIFactorPackStorage alloc] initWithPaths:self->_paths];
  v58 = [[TRIFBFactorPackStorage alloc] initWithPaths:self->_paths];
  v20 = objc_alloc(MEMORY[0x277CBEB18]);
  v21 = [v62 packs];
  v22 = [v20 initWithCapacity:{objc_msgSend(v21, "count")}];

  v75[0] = MEMORY[0x277D85DD0];
  v75[1] = 3221225472;
  v75[2] = __45__TRIFactorPackSetStorage_saveFactorPackSet___block_invoke;
  v75[3] = &unk_279DE2A18;
  v56 = v22;
  v76 = v56;
  v57 = v63;
  v77 = v57;
  v55 = v65;
  v78 = v55;
  v60 = MEMORY[0x2743948D0](v75);
  v73 = 0u;
  v74 = 0u;
  v71 = 0u;
  v72 = 0u;
  v23 = [v62 packs];
  v24 = [v23 countByEnumeratingWithState:&v71 objects:v88 count:16];
  if (!v24)
  {
    goto LABEL_47;
  }

  v25 = *v72;
  obj = v23;
  do
  {
    v26 = 0;
    do
    {
      if (*v72 != v25)
      {
        objc_enumerationMutation(obj);
      }

      v27 = *(*(&v71 + 1) + 8 * v26);
      v28 = objc_autoreleasePoolPush();
      if (([v27 hasFactorPackId] & 1) == 0)
      {
        v30 = TRILogCategory_Server();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          v38 = [v62 ident];
          *buf = 138543362;
          v85 = v38;
          _os_log_error_impl(&dword_26F567000, v30, OS_LOG_TYPE_ERROR, "Factor pack set %{public}@ contains factor pack with missing id.", buf, 0xCu);
        }

LABEL_22:
        LODWORD(v35) = 0;
        goto LABEL_32;
      }

      v29 = [v27 factorPackId];
      v30 = TRIValidateFactorPackId();

      if (!v30)
      {
        goto LABEL_22;
      }

      v31 = [v27 selectedNamespace];
      v32 = [v31 hasName];

      if (v32)
      {
        v33 = [v27 selectedNamespace];
        v34 = [v33 name];

        if (v61)
        {
          [(TRIFBFactorPackStorage *)v58 pathForFactorLevelsWithFactorPackId:v30 namespaceName:v34];
        }

        else
        {
          [(TRIFactorPackStorage *)v16 pathForFactorPackWithId:v30 namespaceName:v34];
        }
        v35 = ;
        if (!v35)
        {
          goto LABEL_31;
        }

        v36 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", @"factorPacks", v34];
        v37 = (v60)[2](v60, v34, v36, v35);

        if (v37)
        {
          if (v61)
          {
            [(TRIFBFactorPackStorage *)v58 legacyPathForFactorLevelsWithFactorPackId:v30 namespaceName:v34];
          }

          else
          {
            [(TRIFactorPackStorage *)v16 legacyPathForFactorPackWithId:v30 namespaceName:v34];
          }
          v39 = ;
          if (v39)
          {
            v40 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", @"legacyNamespaceFactorPacks", v34];
            v41 = (v60)[2](v60, v34, v40, v39);

            v35 = TRILogCategory_Server();
            v42 = os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT);
            if (v41)
            {
              if (v42)
              {
                *buf = 0;
                v43 = v35;
                v44 = "successfully wrote factor pack set to the (optional) id-based directory.";
                goto LABEL_44;
              }

LABEL_45:

              LODWORD(v35) = 1;
              goto LABEL_31;
            }

            if (!v42)
            {
              goto LABEL_45;
            }

            *buf = 0;
            v43 = v35;
            v44 = "Failed to write factor pack set to the (optional) id-based directory.";
          }

          else
          {
            v35 = TRILogCategory_Server();
            if (!os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
            {
              goto LABEL_45;
            }

            *buf = 0;
            v43 = v35;
            v44 = "Failed to resolve factor pack set's legacy (id-based) directory.";
          }

LABEL_44:
          _os_log_impl(&dword_26F567000, v43, OS_LOG_TYPE_DEFAULT, v44, buf, 2u);
          goto LABEL_45;
        }
      }

      else
      {
        v34 = TRILogCategory_Server();
        if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543362;
          v85 = v30;
          _os_log_error_impl(&dword_26F567000, v34, OS_LOG_TYPE_ERROR, "Factor pack %{public}@ contains no namespace name.", buf, 0xCu);
        }
      }

      LODWORD(v35) = 0;
LABEL_31:

LABEL_32:
      objc_autoreleasePoolPop(v28);
      if (!v35)
      {

        goto LABEL_54;
      }

      ++v26;
    }

    while (v24 != v26);
    v23 = obj;
    v45 = [obj countByEnumeratingWithState:&v71 objects:v88 count:16];
    v24 = v45;
  }

  while (v45);
LABEL_47:

  if ([TRIReferenceManagedDir createFromDir:v57]&& [(TRIFactorPackSetStorage *)self _nonAtomicOverwriteWithSrc:v57 dest:v55])
  {
    v46 = TRILogCategory_Server();
    if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
    {
      v47 = [v62 ident];
      *buf = 138543618;
      v85 = v47;
      v86 = 2114;
      v87 = v55;
      _os_log_impl(&dword_26F567000, v46, OS_LOG_TYPE_DEFAULT, "Wrote factor pack set %{public}@ --> %{public}@", buf, 0x16u);
    }

    LOBYTE(v6) = 1;
  }

  else
  {
LABEL_54:
    LOBYTE(v6) = 0;
  }

  v48 = [MEMORY[0x277CCAA00] defaultManager];
  [v48 triForceRemoveItemAtPath:v57 error:0];

  v69 = 0u;
  v70 = 0u;
  v67 = 0u;
  v68 = 0u;
  v49 = v56;
  v50 = [v49 countByEnumeratingWithState:&v67 objects:v83 count:16];
  if (v50)
  {
    v51 = *v68;
    do
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v68 != v51)
        {
          objc_enumerationMutation(v49);
        }

        [*(*(&v67 + 1) + 8 * j) unlock];
      }

      v50 = [v49 countByEnumeratingWithState:&v67 objects:v83 count:16];
    }

    while (v50);
  }

LABEL_63:
  v7 = v59;
LABEL_64:

  v53 = *MEMORY[0x277D85DE8];
  return v6;
}

BOOL __45__TRIFactorPackSetStorage_saveFactorPackSet___block_invoke(id *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = [objc_alloc(MEMORY[0x277D737B8]) initWithDir:v7];
  if (v8)
  {
    [a1[4] addObject:v8];
    v9 = [a1[5] stringByAppendingPathComponent:v6];
    v10 = [a1[6] stringByAppendingPathComponent:v6];
    v11 = [v9 stringByDeletingLastPathComponent];
    [MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:v11];

    v12 = [TRIReferenceManagedDir symlinkFromCurrentPath:v9 withFuturePath:v10 toManagedPath:v7];
  }

  else
  {
    v12 = 0;
  }

  return v12;
}

- (BOOL)_nonAtomicOverwriteWithSrc:(id)a3 dest:(id)a4
{
  v49 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v6 fileSystemRepresentation];
  v9 = [v7 fileSystemRepresentation];
  rename(v8, v9, v10);
  if (v11)
  {
    v12 = [TRITempDirScopeGuard alloc];
    v13 = [(TRIPaths *)self->_paths localTempDir];
    v14 = [(TRITempDirScopeGuard *)v12 initWithPath:v13];

    if (!v14)
    {
      v28 = 0;
LABEL_12:

      goto LABEL_13;
    }

    v15 = [(TRITempDirScopeGuard *)v14 path];
    v16 = objc_opt_new();
    v17 = [v16 UUIDString];
    v18 = [v15 stringByAppendingPathComponent:v17];

    v19 = [v7 fileSystemRepresentation];
    v20 = [v18 fileSystemRepresentation];
    rename(v19, v20, v21);
    if (v22)
    {
      v23 = TRILogCategory_Server();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v24 = __error();
        v25 = strerror(*v24);
        v26 = *__error();
        v41 = 138544130;
        v42 = v7;
        v43 = 2114;
        v44 = v18;
        v45 = 2080;
        v46 = v25;
        v47 = 1024;
        v48 = v26;
        v27 = "Failed rename() to relocate before overwrite %{public}@ -> %{public}@: %s (%d)";
LABEL_16:
        _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, v27, &v41, 0x26u);
      }
    }

    else
    {
      v29 = [v6 fileSystemRepresentation];
      v30 = [v7 fileSystemRepresentation];
      rename(v29, v30, v31);
      if (!v32)
      {
        [(TRIFactorPackSetStorage *)self _forceRemoveItemAtPath:v18];
        v28 = 1;
        goto LABEL_11;
      }

      v33 = [v18 fileSystemRepresentation];
      v34 = [v7 fileSystemRepresentation];
      rename(v33, v34, v35);
      v23 = TRILogCategory_Server();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
      {
        v38 = __error();
        v39 = strerror(*v38);
        v40 = *__error();
        v41 = 138544130;
        v42 = v6;
        v43 = 2114;
        v44 = v7;
        v45 = 2080;
        v46 = v39;
        v47 = 1024;
        v48 = v40;
        v27 = "Failed to rename() even after relocating destination: %{public}@ --> %{public}@: %s (%d)";
        goto LABEL_16;
      }
    }

    v28 = 0;
LABEL_11:

    goto LABEL_12;
  }

  v28 = 1;
LABEL_13:

  v36 = *MEMORY[0x277D85DE8];
  return v28;
}

- (BOOL)_forceRemoveItemAtPath:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCAA00];
  v4 = a3;
  v5 = [v3 defaultManager];
  v11 = 0;
  v6 = [v5 triForceRemoveItemAtPath:v4 error:&v11];

  v7 = v11;
  if ((v6 & 1) == 0)
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v13 = v7;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Failed to force-remove: %{public}@", buf, 0xCu);
    }
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)parentDirForFactorPackSets
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TRIPaths *)self->_paths namespaceDescriptorsDir];
  v5 = [v4 stringByAppendingPathComponent:@"v2/factorPackSets"];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)pathForFactorPackSetWithId:(id)a3
{
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = [(TRIFactorPackSetStorage *)self parentDirForFactorPackSets];
  v7 = [v6 stringByAppendingPathComponent:v4];

  objc_autoreleasePoolPop(v5);

  return v7;
}

- (BOOL)hasFactorPackSetWithId:(id)a3 path:(id *)a4
{
  v7 = a3;
  if (!v7)
  {
    v12 = [MEMORY[0x277CCA890] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"TRIFactorPackSetStorage.m" lineNumber:284 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId"}];
  }

  v8 = [(TRIFactorPackSetStorage *)self pathForFactorPackSetWithId:v7];
  if (a4)
  {
    objc_storeStrong(a4, v8);
  }

  v9 = [MEMORY[0x277CCAA00] defaultManager];
  v10 = [v9 fileExistsAtPath:v8];

  return v10;
}

- (id)_collectFactorPackSets
{
  v4 = objc_opt_new();
  if (v4)
  {
    v5 = [(TRIFactorPackSetStorage *)self parentDirForFactorPackSets];
    v6 = objc_autoreleasePoolPush();
    v7 = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:v5 isDirectory:1];
    v9 = [v7 enumeratorAtURL:v8 includingPropertiesForKeys:0 options:1 errorHandler:0];

    v10 = objc_autoreleasePoolPush();
    v11 = [v9 nextObject];
    if (v11)
    {
      v12 = v11;
      while (1)
      {
        v13 = [v12 path];
        if (!v13)
        {
          v15 = [MEMORY[0x277CCA890] currentHandler];
          [v15 handleFailureInMethod:a2 object:self file:@"TRIFactorPackSetStorage.m" lineNumber:311 description:{@"Expression was unexpectedly nil/false: %@", @"url.path"}];
        }

        v14 = [v4 addString:v13];

        objc_autoreleasePoolPop(v10);
        if (!v14)
        {
          break;
        }

        v10 = objc_autoreleasePoolPush();
        v12 = [v9 nextObject];
        if (!v12)
        {
          goto LABEL_8;
        }
      }

      objc_autoreleasePoolPop(v6);
      v16 = 0;
    }

    else
    {
LABEL_8:
      objc_autoreleasePoolPop(v10);

      objc_autoreleasePoolPop(v6);
      v16 = v4;
    }
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)removeUnreferencedFactorPackSetsWithServerContext:(id)a3 removedCount:(unsigned int *)a4
{
  v7 = a3;
  if (!v7)
  {
    v16 = [MEMORY[0x277CCA890] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"TRIFactorPackSetStorage.m" lineNumber:323 description:{@"Invalid parameter not satisfying: %@", @"serverContext"}];
  }

  v8 = [(TRIFactorPackSetStorage *)self _collectFactorPackSets];
  if (v8)
  {
    v9 = [[TRIFactorPackSetExternalReferenceStore alloc] initWithServerContext:v7];
    v10 = [TRITempDirScopeGuard alloc];
    v11 = [(TRIPaths *)self->_paths localTempDir];
    v12 = [(TRITempDirScopeGuard *)v10 initWithPath:v11];

    if (v12)
    {
      v26 = 0;
      v27 = &v26;
      v28 = 0x2020000000;
      v29 = 0;
      v22 = 0;
      v23 = &v22;
      v24 = 0x2020000000;
      v25 = 1;
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __90__TRIFactorPackSetStorage_removeUnreferencedFactorPackSetsWithServerContext_removedCount___block_invoke;
      v17[3] = &unk_279DE2A40;
      v20 = &v22;
      v18 = v9;
      v19 = v12;
      v21 = &v26;
      v13 = [v8 enumerateStringsWithBlock:v17];
      if (a4)
      {
        *a4 = *(v27 + 6);
      }

      if (v13)
      {
        v14 = *(v23 + 24);
      }

      else
      {
        v14 = 0;
      }

      _Block_object_dispose(&v22, 8);
      _Block_object_dispose(&v26, 8);
    }

    else
    {
      v14 = 0;
    }
  }

  else
  {
    v14 = 0;
  }

  return v14 & 1;
}

void __90__TRIFactorPackSetStorage_removeUnreferencedFactorPackSetsWithServerContext_removedCount___block_invoke(void *a1, void *a2)
{
  v8 = 0;
  v3 = a1[4];
  v4 = a1[5];
  v5 = a2;
  v6 = [v4 path];
  v7 = [TRIReferenceManagedDir collectGarbageForManagedDir:v5 withExternalReferenceStore:v3 usingTempDir:v6 managedDirWasDeleted:&v8];

  *(*(a1[6] + 8) + 24) &= v7;
  if (v8 == 1)
  {
    ++*(*(a1[7] + 8) + 24);
  }
}

- (void)enumerateOnlyProtobufFactorPacksForFactorPackSet:(id)a3 withBlock:(id)a4
{
  v21 = a3;
  v7 = a4;
  v8 = objc_alloc(MEMORY[0x277CCACA8]);
  v9 = [(TRIFactorPackSetStorage *)self pathForFactorPackSetWithId:v21];
  v10 = [v8 initWithFormat:@"%@/%@", v9, @"factorPacks"];

  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10 isDirectory:1];
  v13 = [v11 enumeratorAtURL:v12 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v14 = [[TRIFactorPackStorage alloc] initWithPaths:self->_paths];
  v15 = objc_autoreleasePoolPush();
  v16 = [v13 nextObject];
  if (v16)
  {
    v17 = v16;
    do
    {
      v18 = [v17 path];
      if (!v18)
      {
        v20 = [MEMORY[0x277CCA890] currentHandler];
        [v20 handleFailureInMethod:a2 object:self file:@"TRIFactorPackSetStorage.m" lineNumber:378 description:{@"Expression was unexpectedly nil/false: %@", @"url.path"}];
      }

      v19 = [(TRIFactorPackStorage *)v14 loadFactorPackWithDir:v18];

      if (v19)
      {
        v7[2](v7, v19);
      }

      objc_autoreleasePoolPop(v15);
      v15 = objc_autoreleasePoolPush();
      v17 = [v13 nextObject];
    }

    while (v17);
  }

  objc_autoreleasePoolPop(v15);
}

- (void)enumerateFactorPacksForFactorPackSet:(id)a3 usingLegacyPaths:(BOOL)a4 withBlock:(id)a5
{
  v6 = a4;
  v9 = a3;
  v10 = a5;
  if (v6)
  {
    v11 = @"legacyNamespaceFactorPacks";
  }

  else
  {
    v11 = @"factorPacks";
  }

  v12 = objc_alloc(MEMORY[0x277CCACA8]);
  v35 = v9;
  v13 = [(TRIFactorPackSetStorage *)self pathForFactorPackSetWithId:v9];
  v14 = [v12 initWithFormat:@"%@/%@", v13, v11];

  v15 = [MEMORY[0x277CCAA00] defaultManager];
  v34 = v14;
  v16 = [MEMORY[0x277CBEBC0] fileURLWithPath:v14 isDirectory:1];
  v17 = [v15 enumeratorAtURL:v16 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v37 = [[TRIFactorPackStorage alloc] initWithPaths:self->_paths];
  v36 = [[TRIFBFactorPackStorage alloc] initWithPaths:self->_paths];
  v18 = _os_feature_enabled_impl();
  v19 = _os_feature_enabled_impl();
  v38 = 0;
  v20 = objc_autoreleasePoolPush();
  v21 = [v17 nextObject];
  if (v21)
  {
    v22 = v21;
    v33 = self;
    v23 = v18 & v19;
    do
    {
      v24 = [v22 path];
      v25 = [v24 stringByAppendingPathComponent:@"factorPack.fb"];

      v26 = [MEMORY[0x277CCAA00] defaultManager];
      v27 = [v26 fileExistsAtPath:v25];

      LODWORD(v26) = v27 & v23;
      v28 = [v22 path];
      v29 = v28;
      if (v26 == 1)
      {
        if (!v28)
        {
          v31 = [MEMORY[0x277CCA890] currentHandler];
          [v31 handleFailureInMethod:a2 object:v33 file:@"TRIFactorPackSetStorage.m" lineNumber:427 description:{@"Expression was unexpectedly nil/false: %@", @"url.path"}];
        }

        v30 = [(TRIFBFactorPackStorage *)v36 loadFactorLevelsWithDir:v29 bufferSize:0];

        if (!v30)
        {
          goto LABEL_16;
        }

        v10[2](v10, 0, v30, &v38);
      }

      else
      {
        if (!v28)
        {
          v32 = [MEMORY[0x277CCA890] currentHandler];
          [v32 handleFailureInMethod:a2 object:v33 file:@"TRIFactorPackSetStorage.m" lineNumber:435 description:{@"Expression was unexpectedly nil/false: %@", @"url.path"}];
        }

        v30 = [(TRIFactorPackStorage *)v37 loadFactorPackWithDir:v29];

        if (!v30)
        {
          goto LABEL_16;
        }

        (v10)[2](v10, v30, 0, &v38);
      }

      if (v38)
      {

        break;
      }

LABEL_16:

      objc_autoreleasePoolPop(v20);
      v20 = objc_autoreleasePoolPush();
      v22 = [v17 nextObject];
    }

    while (v22);
  }

  objc_autoreleasePoolPop(v20);
}

void __101__TRIFactorPackSetStorage_enumerateCompatibleFactorPacksForFactorPackSet_usingLegacyPaths_withBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v52 = *MEMORY[0x277D85DE8];
  v7 = a2;
  v8 = a3;
  v9 = objc_autoreleasePoolPush();
  if (v8)
  {
    v10 = [v8 namespaceName];

    if (!v10)
    {
      v35 = [MEMORY[0x277CCA890] currentHandler];
      [v35 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIFactorPackSetStorage.m" lineNumber:455 description:{@"Invalid parameter not satisfying: %@", @"flatbufferFactorLevel.namespaceName"}];
    }

    v11 = MEMORY[0x277D73750];
    v12 = [v8 namespaceName];
    v13 = [MEMORY[0x277D737E0] sharedPaths];
    v14 = [v13 namespaceDescriptorsDefaultDir];
    v15 = [v11 loadWithNamespaceName:v12 fromDirectory:v14];

    if (v15)
    {
      v16 = [v8 ncvs];
      v43[0] = MEMORY[0x277D85DD0];
      v43[1] = 3221225472;
      v43[2] = __101__TRIFactorPackSetStorage_enumerateCompatibleFactorPacksForFactorPackSet_usingLegacyPaths_withBlock___block_invoke_147;
      v43[3] = &unk_279DE2A68;
      v44 = v15;
      v46 = *(a1 + 48);
      v45 = v8;
      v47 = a4;
      [v16 enumerateObjectsUsingBlock:v43];
    }

    else
    {
      v26 = TRILogCategory_Server();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        v27 = *(a1 + 40);
        v28 = [v8 namespaceName];
        *buf = 138543618;
        v49 = v27;
        v50 = 2114;
        v51 = v28;
        _os_log_impl(&dword_26F567000, v26, OS_LOG_TYPE_DEFAULT, "Factor pack set (via Flatbuffers) %{public}@ requires namespace %{public}@ which is not registered in Trial.", buf, 0x16u);
      }

      *a4 = 1;
    }

LABEL_21:

    goto LABEL_22;
  }

  v17 = [v7 selectedNamespace];
  v18 = [v17 hasName];

  if (v18)
  {
    v19 = [v7 selectedNamespace];
    v15 = [v19 name];

    if (!v15)
    {
      v36 = [MEMORY[0x277CCA890] currentHandler];
      [v36 handleFailureInMethod:*(a1 + 56) object:*(a1 + 32) file:@"TRIFactorPackSetStorage.m" lineNumber:481 description:{@"Expression was unexpectedly nil/false: %@", @"protoFactorPack.selectedNamespace.name"}];
    }

    v20 = MEMORY[0x277D73750];
    v21 = [MEMORY[0x277D737E0] sharedPaths];
    v22 = [v21 namespaceDescriptorsDefaultDir];
    v23 = [v20 loadWithNamespaceName:v15 fromDirectory:v22];

    if (v23)
    {
      v24 = [v7 selectedNamespace];
      v25 = [v24 compatibilityVersionArray];
      v38[0] = MEMORY[0x277D85DD0];
      v38[1] = 3221225472;
      v38[2] = __101__TRIFactorPackSetStorage_enumerateCompatibleFactorPacksForFactorPackSet_usingLegacyPaths_withBlock___block_invoke_152;
      v38[3] = &unk_279DE2A90;
      v39 = v23;
      v41 = *(a1 + 48);
      v40 = v7;
      v42 = a4;
      [v25 enumerateValuesWithBlock:v38];
    }

    else
    {
      v30 = TRILogCategory_Server();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = *(a1 + 40);
        v37 = [v7 selectedNamespace];
        v32 = [v37 name];
        *buf = 138543618;
        v49 = v31;
        v50 = 2114;
        v51 = v32;
        _os_log_impl(&dword_26F567000, v30, OS_LOG_TYPE_DEFAULT, "Factor pack set (via protobufs) %{public}@ requires namespace %{public}@ which is not registered in Trial.", buf, 0x16u);
      }

      *a4 = 1;
    }

    goto LABEL_21;
  }

  v29 = TRILogCategory_Server();
  if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
  {
    v34 = *(a1 + 40);
    *buf = 138543362;
    v49 = v34;
    _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "Factor pack set (via protobufs) %{public}@, when loaded from disk, had a factor pack with missing namespace. Treating this as an NCV incompatibility.", buf, 0xCu);
  }

  *a4 = 1;
LABEL_22:
  objc_autoreleasePoolPop(v9);

  v33 = *MEMORY[0x277D85DE8];
}

void __101__TRIFactorPackSetStorage_enumerateCompatibleFactorPacksForFactorPackSet_usingLegacyPaths_withBlock___block_invoke_147(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = a1[4];
  v7 = a2;
  LODWORD(v6) = [v6 downloadNCV];
  v8 = [v7 integerValue];

  if (v8 == v6)
  {
    *a4 = 1;
    v9 = a1[5];
    v10 = a1[7];
    v11 = *(a1[6] + 16);

    v11();
  }
}

uint64_t __101__TRIFactorPackSetStorage_enumerateCompatibleFactorPacksForFactorPackSet_usingLegacyPaths_withBlock___block_invoke_152(uint64_t a1, int a2, uint64_t a3, _BYTE *a4)
{
  result = [*(a1 + 32) downloadNCV];
  if (result == a2)
  {
    *a4 = 1;
    v8 = *(a1 + 40);
    v9 = *(a1 + 56);
    v10 = *(*(a1 + 48) + 16);

    return v10();
  }

  return result;
}

- (BOOL)migrateEligibleFactorPacksToGlobalWithServerContext:(id)a3
{
  v51 = *MEMORY[0x277D85DE8];
  v33 = a3;
  v4 = TRILogCategory_Server();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_26F567000, v4, OS_LOG_TYPE_DEFAULT, "Considering migrating the local rollout factor packs.", &buf, 2u);
  }

  context = objc_autoreleasePoolPush();
  v5 = MEMORY[0x277D73750];
  v6 = [(TRIPaths *)self->_paths namespaceDescriptorsDefaultDir];
  v32 = [v5 descriptorsForDirectory:v6 filterBlock:0];

  v7 = objc_opt_new();
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __79__TRIFactorPackSetStorage_migrateEligibleFactorPacksToGlobalWithServerContext___block_invoke;
  v42[3] = &unk_279DE2AE0;
  v8 = v7;
  v43 = v8;
  [v32 enumerateObjectsUsingBlock:v42];
  v9 = TRILogCategory_Server();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v8;
    _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_DEFAULT, "Found the following namespaces that should be available globally: %{public}@", &buf, 0xCu);
  }

  v10 = [TRIGloballyAvailableNamespaces alloc];
  v11 = [v33 keyValueStore];
  v12 = [(TRIGloballyAvailableNamespaces *)v10 initWithKVStore:v11];

  v13 = [(TRIGloballyAvailableNamespaces *)v12 namespaces];
  v14 = TRILogCategory_Server();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(buf) = 138543362;
    *(&buf + 4) = v13;
    _os_log_impl(&dword_26F567000, v14, OS_LOG_TYPE_DEFAULT, "Found the following namespaces that are already available globally: %{public}@", &buf, 0xCu);
  }

  [v8 minusSet:v13];
  if ([v8 count])
  {
    *&buf = 0;
    *(&buf + 1) = &buf;
    v47 = 0x3032000000;
    v48 = __Block_byref_object_copy__31;
    v49 = __Block_byref_object_dispose__31;
    v50 = objc_opt_new();
    v15 = [[TRIFactorPackStorage alloc] initWithPaths:self->_paths];
    v16 = [[TRIFBFactorPackStorage alloc] initWithPaths:self->_paths];
    objc_initWeak(&location, self);
    v36[0] = MEMORY[0x277D85DD0];
    v36[1] = 3221225472;
    v36[2] = __79__TRIFactorPackSetStorage_migrateEligibleFactorPacksToGlobalWithServerContext___block_invoke_158;
    v36[3] = &unk_279DE2B08;
    objc_copyWeak(&v40, &location);
    v17 = v15;
    v37 = v17;
    v18 = v16;
    v38 = v18;
    p_buf = &buf;
    v19 = MEMORY[0x2743948D0](v36);
    v20 = [v33 rolloutDatabase];
    v34[0] = MEMORY[0x277D85DD0];
    v34[1] = 3221225472;
    v34[2] = __79__TRIFactorPackSetStorage_migrateEligibleFactorPacksToGlobalWithServerContext___block_invoke_161;
    v34[3] = &unk_279DE2B30;
    v34[4] = self;
    v21 = v19;
    v35 = v21;
    v22 = [v20 enumerateRecordsOverlappingNamespaces:v8 usingTransaction:0 block:v34];

    if (v22)
    {
      v23 = [*(*(&buf + 1) + 40) count];
      if (v23)
      {
        v24 = TRILogCategory_Server();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          v30 = *(*(&buf + 1) + 40);
          *v44 = 138412290;
          v45 = v30;
          _os_log_error_impl(&dword_26F567000, v24, OS_LOG_TYPE_ERROR, "Failed to update factorpacks for the following namespaces globally: %@", v44, 0xCu);
        }

        [v8 minusSet:*(*(&buf + 1) + 40)];
      }

      v25 = ![(TRIGloballyAvailableNamespaces *)v12 setNamespaces:v8];
      if (v23)
      {
        LOBYTE(v25) = 1;
      }

      if (v25)
      {
        v22 = 0;
        goto LABEL_25;
      }

      v26 = TRILogCategory_Server();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
      {
        *v44 = 0;
        _os_log_impl(&dword_26F567000, v26, OS_LOG_TYPE_DEFAULT, "Completed factor packs migration successfully.", v44, 2u);
      }
    }

    else
    {
      v26 = TRILogCategory_Server();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        *v44 = 0;
        _os_log_error_impl(&dword_26F567000, v26, OS_LOG_TYPE_ERROR, "Failed to enumerate factor packs to be migrated.", v44, 2u);
      }
    }

LABEL_25:
    objc_destroyWeak(&v40);
    objc_destroyWeak(&location);

    _Block_object_dispose(&buf, 8);
    goto LABEL_26;
  }

  v27 = TRILogCategory_Server();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_26F567000, v27, OS_LOG_TYPE_DEFAULT, "No namespaces need to be migrated to be available globally.", &buf, 2u);
  }

  v22 = 1;
LABEL_26:

  objc_autoreleasePoolPop(context);
  v28 = *MEMORY[0x277D85DE8];
  return v22;
}

void __79__TRIFactorPackSetStorage_migrateEligibleFactorPacksToGlobalWithServerContext___block_invoke(uint64_t a1, void *a2)
{
  v5 = a2;
  if ([v5 availableToRootUser])
  {
    v3 = *(a1 + 32);
    v4 = [v5 namespaceName];
    [v3 addObject:v4];
  }
}

void __79__TRIFactorPackSetStorage_migrateEligibleFactorPacksToGlobalWithServerContext___block_invoke_158(uint64_t a1, void *a2)
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = objc_autoreleasePoolPush();
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  v6 = [v3 selectedNamespace];
  v7 = [v6 name];

  v8 = [v3 downloadedFactorsWithPaths:WeakRetained[1]];
  v9 = TRILogCategory_Server();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = [v3 factorPackId];
    v14 = 138412802;
    v15 = v10;
    v16 = 2112;
    v17 = v7;
    v18 = 2112;
    v19 = v8;
    _os_log_impl(&dword_26F567000, v9, OS_LOG_TYPE_INFO, "Migrating factor pack with id: %@ in namespace: %@ populating factors: %@", &v14, 0x20u);
  }

  v11 = [TRIClientFactorPackUtils aliasesInNamespace:v7];
  v12 = [*(a1 + 32) saveFactorPackToGlobal:v3 forFactorNames:v8 aliasToUnaliasMap:v11];
  if ((v12 & [*(a1 + 40) saveFactorPackToGlobal:v3 forFactorNames:v8 aliasToUnaliasMap:v11] & 1) == 0 && v7)
  {
    [*(*(*(a1 + 48) + 8) + 40) addObject:v7];
  }

  objc_autoreleasePoolPop(v4);
  v13 = *MEMORY[0x277D85DE8];
}

void __79__TRIFactorPackSetStorage_migrateEligibleFactorPacksToGlobalWithServerContext___block_invoke_161(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = [v6 activeFactorPackSetId];

  if (v3)
  {
    v4 = *(a1 + 32);
    v5 = [v6 activeFactorPackSetId];
    [v4 enumerateOnlyProtobufFactorPacksForFactorPackSet:v5 withBlock:*(a1 + 40)];
  }
}

@end