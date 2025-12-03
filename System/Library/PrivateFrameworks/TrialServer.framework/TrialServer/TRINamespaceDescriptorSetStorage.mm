@interface TRINamespaceDescriptorSetStorage
- (BOOL)hasNamespaceDescriptorsForTreatmentWithId:(id)id path:(id *)path;
- (BOOL)overwriteNamespaceDescriptors:(id)descriptors forTreatmentId:(id)id;
- (BOOL)removeUnreferencedNamespaceDescriptorSetsWithServerContext:(id)context removedCount:(unsigned int *)count;
- (TRINamespaceDescriptorSetStorage)initWithPaths:(id)paths;
- (id)_collectNamespaceDescriptorSets;
- (id)parentDirForNamespaceDescriptorSets;
- (id)pathForNamespaceDescriptorsWithTreatmentId:(id)id;
@end

@implementation TRINamespaceDescriptorSetStorage

- (TRINamespaceDescriptorSetStorage)initWithPaths:(id)paths
{
  pathsCopy = paths;
  v9.receiver = self;
  v9.super_class = TRINamespaceDescriptorSetStorage;
  v6 = [(TRINamespaceDescriptorSetStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paths, paths);
  }

  return v7;
}

- (BOOL)overwriteNamespaceDescriptors:(id)descriptors forTreatmentId:(id)id
{
  v54 = *MEMORY[0x277D85DE8];
  descriptorsCopy = descriptors;
  idCopy = id;
  v37 = [(TRINamespaceDescriptorSetStorage *)self pathForNamespaceDescriptorsWithTreatmentId:?];
  if (v37)
  {
    v6 = [TRITempDirScopeGuard alloc];
    localTempDir = [(TRIPaths *)self->_paths localTempDir];
    v8 = [(TRITempDirScopeGuard *)v6 initWithPath:localTempDir];

    if (v8)
    {
      path = [(TRITempDirScopeGuard *)v8 path];
      v10 = objc_alloc(MEMORY[0x277CCACA8]);
      v11 = objc_opt_new();
      uUIDString = [v11 UUIDString];
      v13 = [v10 initWithFormat:@"ns-desc-set-%@", uUIDString];
      v38 = [path stringByAppendingPathComponent:v13];

      v45 = 0u;
      v46 = 0u;
      v43 = 0u;
      v44 = 0u;
      stringByDeletingLastPathComponent = [v37 stringByDeletingLastPathComponent];
      v52[0] = stringByDeletingLastPathComponent;
      v15 = [v38 stringByAppendingPathComponent:@"legacyNamespaceDescriptors"];
      v52[1] = v15;
      v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];

      v17 = [v16 countByEnumeratingWithState:&v43 objects:v53 count:16];
      if (v17)
      {
        v18 = *v44;
        while (2)
        {
          for (i = 0; i != v17; ++i)
          {
            if (*v44 != v18)
            {
              objc_enumerationMutation(v16);
            }

            if (![MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:*(*(&v43 + 1) + 8 * i)])
            {

              v31 = 0;
              goto LABEL_34;
            }
          }

          v17 = [v16 countByEnumeratingWithState:&v43 objects:v53 count:16];
          if (v17)
          {
            continue;
          }

          break;
        }
      }

      v41 = 0u;
      v42 = 0u;
      v39 = 0u;
      v40 = 0u;
      v20 = descriptorsCopy;
      v21 = [v20 countByEnumeratingWithState:&v39 objects:v51 count:16];
      if (v21)
      {
        v22 = *v40;
        while (2)
        {
          for (j = 0; j != v21; ++j)
          {
            if (*v40 != v22)
            {
              objc_enumerationMutation(v20);
            }

            v24 = *(*(&v39 + 1) + 8 * j);
            v25 = objc_autoreleasePoolPush();
            v26 = [v38 stringByAppendingPathComponent:@"legacyNamespaceDescriptors"];
            v27 = [v24 saveToDirectory:v26];

            if ((v27 & 1) == 0)
            {
              v28 = TRILogCategory_Server();
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                *buf = 138412290;
                v48 = idCopy;
                _os_log_error_impl(&dword_26F567000, v28, OS_LOG_TYPE_ERROR, "Failed to save namespace descriptor set for treatment %@.", buf, 0xCu);
              }
            }

            objc_autoreleasePoolPop(v25);
            if (!v27)
            {

              goto LABEL_32;
            }
          }

          v21 = [v20 countByEnumeratingWithState:&v39 objects:v51 count:16];
          if (v21)
          {
            continue;
          }

          break;
        }
      }

      if (+[TRIReferenceManagedDir createFromDir:](TRIReferenceManagedDir, "createFromDir:", v38) && ([MEMORY[0x277CCAA00] defaultManager], v29 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v29, "triForceRemoveItemAtPath:error:", v37, 0), v29, objc_msgSend(MEMORY[0x277CCAA00], "triRenameOrFaultWithSourcePath:destPath:", v38, v37)))
      {
        v30 = TRILogCategory_Server();
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412546;
          v48 = idCopy;
          v49 = 2112;
          v50 = v37;
          _os_log_impl(&dword_26F567000, v30, OS_LOG_TYPE_DEFAULT, "Wrote namespace descriptor set %@ --> %@", buf, 0x16u);
        }

        v31 = 1;
      }

      else
      {
LABEL_32:
        v31 = 0;
      }

      defaultManager = [MEMORY[0x277CCAA00] defaultManager];
      [defaultManager triForceRemoveItemAtPath:v38 error:0];

LABEL_34:
    }

    else
    {
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  v33 = *MEMORY[0x277D85DE8];
  return v31;
}

- (id)pathForNamespaceDescriptorsWithTreatmentId:(id)id
{
  v13 = *MEMORY[0x277D85DE8];
  idCopy = id;
  if ([idCopy triIsPathSafePlausibleUniqueId])
  {
    v5 = objc_autoreleasePoolPush();
    parentDirForNamespaceDescriptorSets = [(TRINamespaceDescriptorSetStorage *)self parentDirForNamespaceDescriptorSets];
    v7 = [parentDirForNamespaceDescriptorSets stringByAppendingPathComponent:idCopy];

    objc_autoreleasePoolPop(v5);
  }

  else
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v11 = 138412290;
      v12 = idCopy;
      _os_log_error_impl(&dword_26F567000, v8, OS_LOG_TYPE_ERROR, "Rejecting use of bad treatmentId: %@", &v11, 0xCu);
    }

    v7 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (id)parentDirForNamespaceDescriptorSets
{
  v3 = objc_autoreleasePoolPush();
  namespaceDescriptorsDir = [(TRIPaths *)self->_paths namespaceDescriptorsDir];
  v5 = [namespaceDescriptorsDir stringByAppendingPathComponent:@"v2/namespaceDescriptorSets"];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (BOOL)hasNamespaceDescriptorsForTreatmentWithId:(id)id path:(id *)path
{
  idCopy = id;
  if (!idCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceDescriptorSetStorage.m" lineNumber:171 description:{@"Invalid parameter not satisfying: %@", @"treatmentId"}];
  }

  v8 = [(TRINamespaceDescriptorSetStorage *)self pathForNamespaceDescriptorsWithTreatmentId:idCopy];
  if (v8)
  {
    if (path)
    {
      objc_storeStrong(path, v8);
    }

    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v10 = [defaultManager fileExistsAtPath:v8];
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)_collectNamespaceDescriptorSets
{
  v4 = objc_opt_new();
  if (v4)
  {
    parentDirForNamespaceDescriptorSets = [(TRINamespaceDescriptorSetStorage *)self parentDirForNamespaceDescriptorSets];
    v6 = objc_autoreleasePoolPush();
    defaultManager = [MEMORY[0x277CCAA00] defaultManager];
    v8 = [MEMORY[0x277CBEBC0] fileURLWithPath:parentDirForNamespaceDescriptorSets isDirectory:1];
    v9 = [defaultManager enumeratorAtURL:v8 includingPropertiesForKeys:0 options:1 errorHandler:0];

    v10 = objc_autoreleasePoolPush();
    nextObject = [v9 nextObject];
    if (nextObject)
    {
      nextObject2 = nextObject;
      while (1)
      {
        path = [nextObject2 path];
        if (!path)
        {
          currentHandler = [MEMORY[0x277CCA890] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceDescriptorSetStorage.m" lineNumber:199 description:{@"Expression was unexpectedly nil/false: %@", @"url.path"}];
        }

        v14 = [v4 addString:path];

        objc_autoreleasePoolPop(v10);
        if (!v14)
        {
          break;
        }

        v10 = objc_autoreleasePoolPush();
        nextObject2 = [v9 nextObject];
        if (!nextObject2)
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

- (BOOL)removeUnreferencedNamespaceDescriptorSetsWithServerContext:(id)context removedCount:(unsigned int *)count
{
  contextCopy = context;
  if (!contextCopy)
  {
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"TRINamespaceDescriptorSetStorage.m" lineNumber:211 description:{@"Invalid parameter not satisfying: %@", @"serverContext"}];
  }

  _collectNamespaceDescriptorSets = [(TRINamespaceDescriptorSetStorage *)self _collectNamespaceDescriptorSets];
  if (_collectNamespaceDescriptorSets)
  {
    v9 = [TRITempDirScopeGuard alloc];
    localTempDir = [(TRIPaths *)self->_paths localTempDir];
    v11 = [(TRITempDirScopeGuard *)v9 initWithPath:localTempDir];

    if (v11)
    {
      v12 = [[TRINamespaceDescriptorSetExternalRefStore alloc] initWithServerContext:contextCopy];
      v27 = 0;
      v28 = &v27;
      v29 = 0x2020000000;
      v30 = 0;
      v23 = 0;
      v24 = &v23;
      v25 = 0x2020000000;
      v26 = 1;
      v18[0] = MEMORY[0x277D85DD0];
      v18[1] = 3221225472;
      v18[2] = __108__TRINamespaceDescriptorSetStorage_removeUnreferencedNamespaceDescriptorSetsWithServerContext_removedCount___block_invoke;
      v18[3] = &unk_279DE2A40;
      v21 = &v23;
      v13 = v12;
      v19 = v13;
      v20 = v11;
      v22 = &v27;
      v14 = [_collectNamespaceDescriptorSets enumerateStringsWithBlock:v18];
      if (count)
      {
        *count = *(v28 + 6);
      }

      if (v14)
      {
        v15 = *(v24 + 24);
      }

      else
      {
        v15 = 0;
      }

      _Block_object_dispose(&v23, 8);
      _Block_object_dispose(&v27, 8);
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void __108__TRINamespaceDescriptorSetStorage_removeUnreferencedNamespaceDescriptorSetsWithServerContext_removedCount___block_invoke(void *a1, void *a2)
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

@end