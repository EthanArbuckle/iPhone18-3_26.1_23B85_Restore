@interface TRINamespaceResolverStorage
- (BOOL)_createDeploymentDirectoryAndAddFactorPackSetWithTempDirRef:(id)a3 newDeploymentDir:(id)a4 factorPackSetPath:(id)a5;
- (BOOL)_removeUnreferencedDeploymentsWithRefStore:(id)a3 parentDir:(id)a4 removedCount:(unsigned int *)a5;
- (BOOL)_removeUnreferencedDeploymentsWithRefStore:(id)a3 topLevelDir:(id)a4 removedCount:(unsigned int *)a5;
- (BOOL)_rewriteExperimentDeployment:(id)a3 targetedTreatmentId:(id)a4 factorPackSetId:(id)a5;
- (BOOL)_rewriteExperimentDeploymentForFPSPath:(id)a3 targetedTreatmentId:(id)a4 factorPackSetId:(id)a5;
- (BOOL)_rewriteExperimentDeploymentForTreatmentPath:(id)a3 targetedTreatmentId:(id)a4;
- (BOOL)_setProvisionalFactorpackMetadata:(id)a3 forNamespaceName:(id)a4 error:(id *)a5;
- (BOOL)_updateTargetedFactorPackSetWithTempDirRef:(id)a3 existingDeploymentDir:(id)a4 factorPackSetPath:(id)a5;
- (BOOL)_writeRampId:(id)a3 parentDir:(id)a4;
- (BOOL)overwriteActiveFactorProvidersUsingTransaction:(id)a3 fromContext:(id)a4;
- (BOOL)promoteFactorPackId:(id)a3 forNamespaceName:(id)a4 rolloutDeployment:(id)a5 error:(id *)a6;
- (BOOL)rejectFactorPackId:(id)a3 forNamespaceName:(id)a4 rolloutDeployment:(id)a5 error:(id *)a6;
- (BOOL)removeUnneededPromotionsWithRemovedCount:(unsigned int *)a3 removeAll:(BOOL)a4;
- (BOOL)removeUnreferencedExperimentDeploymentsWithServerContext:(id)a3 removedCount:(unsigned int *)a4;
- (BOOL)removeUnreferencedRolloutDeploymentsWithServerContext:(id)a3 removedCount:(unsigned int *)a4;
- (BOOL)rewriteRolloutDeployment:(id)a3 rampId:(id)a4 targetedFactorPackSetId:(id)a5;
- (BOOL)setProvisionalFactorPackId:(id)a3 forNamespaceName:(id)a4 error:(id *)a5;
- (TRINamespaceResolverStorage)initWithPaths:(id)a3;
- (id)_getProvisionalFactorpackMetadataForNamespaceName:(id)a3 mustExist:(BOOL)a4 error:(id *)a5;
- (id)_pathForExperimentDeployment:(id)a3;
- (id)_pathForRolloutDeployment:(id)a3;
- (id)parentDirForExperimentDeployments;
- (id)parentDirForRolloutDeployments;
- (id)pathForExperimentDeployment:(id)a3;
- (id)pathForRolloutDeployment:(id)a3;
- (id)pathForTargetedFactorPackSetWithDeployment:(id)a3;
@end

@implementation TRINamespaceResolverStorage

- (TRINamespaceResolverStorage)initWithPaths:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = TRINamespaceResolverStorage;
  v6 = [(TRINamespaceResolverStorage *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_paths, a3);
  }

  return v7;
}

- (BOOL)rewriteRolloutDeployment:(id)a3 rampId:(id)a4 targetedFactorPackSetId:(id)a5
{
  v49 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v37 = [MEMORY[0x277CCA890] currentHandler];
    [v37 handleFailureInMethod:a2 object:self file:@"TRINamespaceResolverStorage.m" lineNumber:301 description:{@"Invalid parameter not satisfying: %@", @"deployment"}];
  }

  v12 = [v9 rolloutId];
  v13 = [v12 length];

  if (v13)
  {
    if (!v11)
    {
      v38 = [MEMORY[0x277CCA890] currentHandler];
      [v38 handleFailureInMethod:a2 object:self file:@"TRINamespaceResolverStorage.m" lineNumber:303 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId"}];
    }

    v14 = [[TRIFactorPackSetStorage alloc] initWithPaths:self->_paths];
    v44 = 0;
    if ([(TRIFactorPackSetStorage *)v14 hasFactorPackSetWithId:v11 path:&v44])
    {
      if (!v44)
      {
        v39 = [MEMORY[0x277CCA890] currentHandler];
        [v39 handleFailureInMethod:a2 object:self file:@"TRINamespaceResolverStorage.m" lineNumber:312 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetPath"}];
      }

      v15 = objc_alloc(MEMORY[0x277D737B8]);
      v16 = [v15 initWithDir:v44];
      if (v16)
      {
        v17 = [TRITempDirScopeGuard alloc];
        v18 = [(TRIPaths *)self->_paths localTempDir];
        v43 = [(TRITempDirScopeGuard *)v17 initWithPath:v18];

        if (!v43)
        {
          v25 = 0;
LABEL_32:

          [v16 unlock];
          goto LABEL_33;
        }

        v41 = [(TRINamespaceResolverStorage *)self pathForRolloutDeployment:v9];
        if (v41)
        {
          if (v10 && ![(TRINamespaceResolverStorage *)self _writeRampId:v10 parentDir:v41])
          {
            v25 = 0;
            goto LABEL_31;
          }

          v19 = [(TRITempDirScopeGuard *)v43 path];
          v20 = objc_alloc(MEMORY[0x277CCACA8]);
          v21 = objc_opt_new();
          v22 = [v21 UUIDString];
          v23 = [v20 initWithFormat:@"targeting-link-%@", v22];
          v42 = [v19 stringByAppendingPathComponent:v23];

          v24 = [v41 stringByAppendingPathComponent:@"targetedFactorPackSet"];
          if ([TRIReferenceManagedDir symlinkFromCurrentPath:v42 withFuturePath:v24 toManagedPath:v44])
          {
            goto LABEL_15;
          }
        }

        else
        {
          v40 = [(TRITempDirScopeGuard *)v43 path];
          v26 = objc_alloc(MEMORY[0x277CCACA8]);
          v27 = objc_opt_new();
          v28 = [v27 UUIDString];
          v29 = [v26 initWithFormat:@"new-deployment-%@", v28];
          v42 = [v40 stringByAppendingPathComponent:v29];

          v24 = [(TRINamespaceResolverStorage *)self _pathForRolloutDeployment:v9];
          if (v24)
          {
            [MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:v42];
            v30 = MEMORY[0x277CCAA00];
            v31 = [v24 stringByDeletingLastPathComponent];
            [v30 triIdempotentCreateDirectoryOrFaultWithPath:v31];

            v32 = [v42 stringByAppendingPathComponent:@"targetedFactorPackSet"];
            v33 = [v24 stringByAppendingPathComponent:@"targetedFactorPackSet"];
            LOBYTE(v31) = [TRIReferenceManagedDir symlinkFromCurrentPath:v32 withFuturePath:v33 toManagedPath:v44];

            if ((v31 & 1) != 0 && [TRIReferenceManagedDir createFromDir:v42]&& (!v10 || [(TRINamespaceResolverStorage *)self _writeRampId:v10 parentDir:v42]))
            {
LABEL_15:
              v25 = [MEMORY[0x277CCAA00] triRenameOrFaultWithSourcePath:v42 destPath:v24];
LABEL_30:

LABEL_31:
              goto LABEL_32;
            }
          }
        }

        v25 = 0;
        goto LABEL_30;
      }
    }

    else
    {
      v16 = TRILogCategory_Server();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v36 = [v9 shortDesc];
        *buf = 138543618;
        v46 = v36;
        v47 = 2114;
        v48 = v11;
        _os_log_error_impl(&dword_26F567000, v16, OS_LOG_TYPE_ERROR, "Unable to update rollout %{public}@; targeted factor pack set %{public}@ is missing.", buf, 0x16u);
      }
    }

    v25 = 0;
LABEL_33:

    goto LABEL_34;
  }

  v14 = TRILogCategory_Server();
  if (os_log_type_enabled(&v14->super, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    v46 = "[TRINamespaceResolverStorage rewriteRolloutDeployment:rampId:targetedFactorPackSetId:]";
    _os_log_error_impl(&dword_26F567000, &v14->super, OS_LOG_TYPE_ERROR, "%s has empty path arg: deployment.rolloutId", buf, 0xCu);
  }

  v25 = 0;
LABEL_34:

  v34 = *MEMORY[0x277D85DE8];
  return v25 & 1;
}

- (BOOL)_writeRampId:(id)a3 parentDir:(id)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [a4 stringByAppendingPathComponent:@"rampId"];
  v7 = [v5 dataUsingEncoding:4];

  v13 = 0;
  v8 = [v7 writeToFile:v6 options:268435457 error:&v13];
  v9 = v13;
  if ((v8 & 1) == 0)
  {
    v10 = TRILogCategory_Server();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v15 = v6;
      v16 = 2114;
      v17 = v9;
      _os_log_error_impl(&dword_26F567000, v10, OS_LOG_TYPE_ERROR, "Failed to write ramp ID into namespace resolver storage at %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
  return v8;
}

- (id)parentDirForRolloutDeployments
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TRIPaths *)self->_paths namespaceDescriptorsDir];
  v5 = [v4 stringByAppendingPathComponent:@"v2/rolloutV2"];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)_pathForRolloutDeployment:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"TRINamespaceResolverStorage.m" lineNumber:401 description:{@"Invalid parameter not satisfying: %@", @"deployment"}];
  }

  v6 = [v5 rolloutId];
  v7 = [v6 length];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [(TRINamespaceResolverStorage *)self parentDirForRolloutDeployments];
    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = [v5 rolloutId];
    v12 = [v10 initWithFormat:@"%@/%d", v11, objc_msgSend(v5, "deploymentId")];
    v13 = [v9 stringByAppendingPathComponent:v12];

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "[TRINamespaceResolverStorage _pathForRolloutDeployment:]";
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "%s has empty path arg: deployment.rolloutId", buf, 0xCu);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)pathForRolloutDeployment:(id)a3
{
  v3 = [(TRINamespaceResolverStorage *)self _pathForRolloutDeployment:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v4 fileExistsAtPath:v3])
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)pathForTargetedFactorPackSetWithDeployment:(id)a3
{
  v3 = [(TRINamespaceResolverStorage *)self pathForRolloutDeployment:a3];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 stringByAppendingPathComponent:@"targetedFactorPackSet"];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)_removeUnreferencedDeploymentsWithRefStore:(id)a3 topLevelDir:(id)a4 removedCount:(unsigned int *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
  v13 = [v11 enumeratorAtURL:v12 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v14 = objc_opt_new();
  v15 = objc_autoreleasePoolPush();
  v16 = [v13 nextObject];
  if (v16)
  {
    v17 = v16;
    v23 = a2;
    do
    {
      v18 = [v17 path];
      if (!v18)
      {
        v22 = [MEMORY[0x277CCA890] currentHandler];
        [v22 handleFailureInMethod:v23 object:self file:@"TRINamespaceResolverStorage.m" lineNumber:441 description:{@"Expression was unexpectedly nil/false: %@", @"url.path"}];
      }

      [v14 addString:v18];

      objc_autoreleasePoolPop(v15);
      v15 = objc_autoreleasePoolPush();
      v17 = [v13 nextObject];
    }

    while (v17);
  }

  objc_autoreleasePoolPop(v15);
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 1;
  v24[0] = MEMORY[0x277D85DD0];
  v24[1] = 3221225472;
  v24[2] = __99__TRINamespaceResolverStorage__removeUnreferencedDeploymentsWithRefStore_topLevelDir_removedCount___block_invoke;
  v24[3] = &unk_279DE30C8;
  v26 = &v28;
  v24[4] = self;
  v19 = v9;
  v25 = v19;
  v27 = a5;
  if ([v14 enumerateStringsWithBlock:v24])
  {
    v20 = *(v29 + 24);
  }

  else
  {
    v20 = 0;
  }

  _Block_object_dispose(&v28, 8);
  return v20 & 1;
}

uint64_t __99__TRINamespaceResolverStorage__removeUnreferencedDeploymentsWithRefStore_topLevelDir_removedCount___block_invoke(uint64_t a1, uint64_t a2)
{
  result = [*(a1 + 32) _removeUnreferencedDeploymentsWithRefStore:*(a1 + 40) parentDir:a2 removedCount:*(a1 + 56)];
  *(*(*(a1 + 48) + 8) + 24) &= result;
  return result;
}

- (BOOL)_removeUnreferencedDeploymentsWithRefStore:(id)a3 parentDir:(id)a4 removedCount:(unsigned int *)a5
{
  v9 = a3;
  v10 = a4;
  v11 = [MEMORY[0x277CCAA00] defaultManager];
  v12 = [MEMORY[0x277CBEBC0] fileURLWithPath:v10];
  v13 = [v11 enumeratorAtURL:v12 includingPropertiesForKeys:0 options:1 errorHandler:0];

  v14 = objc_opt_new();
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
        v24 = [MEMORY[0x277CCA890] currentHandler];
        [v24 handleFailureInMethod:a2 object:self file:@"TRINamespaceResolverStorage.m" lineNumber:470 description:{@"Expression was unexpectedly nil/false: %@", @"url.path"}];
      }

      [v14 addString:v18];

      objc_autoreleasePoolPop(v15);
      v15 = objc_autoreleasePoolPush();
      v17 = [v13 nextObject];
    }

    while (v17);
  }

  objc_autoreleasePoolPop(v15);
  v19 = [TRITempDirScopeGuard alloc];
  v20 = [(TRIPaths *)self->_paths localTempDir];
  v21 = [(TRITempDirScopeGuard *)v19 initWithPath:v20];

  if (v21)
  {
    v30 = 0;
    v31 = &v30;
    v32 = 0x2020000000;
    v33 = 1;
    v25[0] = MEMORY[0x277D85DD0];
    v25[1] = 3221225472;
    v25[2] = __97__TRINamespaceResolverStorage__removeUnreferencedDeploymentsWithRefStore_parentDir_removedCount___block_invoke;
    v25[3] = &unk_279DE30C8;
    v28 = &v30;
    v26 = v9;
    v27 = v21;
    v29 = a5;
    v22 = [v14 enumerateStringsWithBlock:v25];
    rmdir([v10 fileSystemRepresentation]);
    if (v22)
    {
      LOBYTE(v22) = *(v31 + 24);
    }

    _Block_object_dispose(&v30, 8);
  }

  else
  {
    LOBYTE(v22) = 0;
  }

  return v22 & 1;
}

void __97__TRINamespaceResolverStorage__removeUnreferencedDeploymentsWithRefStore_parentDir_removedCount___block_invoke(uint64_t a1, void *a2)
{
  v8 = 0;
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = a2;
  v6 = [v4 path];
  v7 = [TRIReferenceManagedDir collectGarbageForManagedDir:v5 withExternalReferenceStore:v3 usingTempDir:v6 managedDirWasDeleted:&v8];

  *(*(*(a1 + 48) + 8) + 24) &= v7;
  if (v8 == 1)
  {
    ++**(a1 + 56);
  }
}

- (BOOL)removeUnreferencedRolloutDeploymentsWithServerContext:(id)a3 removedCount:(unsigned int *)a4
{
  v6 = a3;
  v7 = [[TRIRolloutDeploymentRefStore alloc] initWithServerContext:v6];

  v11 = 0;
  v8 = [(TRINamespaceResolverStorage *)self parentDirForRolloutDeployments];
  v9 = [(TRINamespaceResolverStorage *)self _removeUnreferencedDeploymentsWithRefStore:v7 topLevelDir:v8 removedCount:&v11];

  if (a4)
  {
    *a4 = v11;
  }

  return v9;
}

- (BOOL)_rewriteExperimentDeployment:(id)a3 targetedTreatmentId:(id)a4 factorPackSetId:(id)a5
{
  v25 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v9)
  {
    v19 = [MEMORY[0x277CCA890] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"TRINamespaceResolverStorage.m" lineNumber:526 description:{@"Invalid parameter not satisfying: %@", @"deployment"}];
  }

  v12 = [v9 experimentId];
  v13 = [v12 length];

  if (!v13)
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v22 = "[TRINamespaceResolverStorage _rewriteExperimentDeployment:targetedTreatmentId:factorPackSetId:]";
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "%s has empty path arg: deployment.experimentId", buf, 0xCu);
    }

    goto LABEL_14;
  }

  if (!v10)
  {
    v20 = [MEMORY[0x277CCA890] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"TRINamespaceResolverStorage.m" lineNumber:528 description:{@"Invalid parameter not satisfying: %@", @"treatmentId"}];
  }

  if (!v11)
  {
    v14 = [(TRINamespaceResolverStorage *)self _rewriteExperimentDeploymentForTreatmentPath:v9 targetedTreatmentId:v10];
    goto LABEL_15;
  }

  if (![(TRINamespaceResolverStorage *)self _rewriteExperimentDeploymentForFPSPath:v9 targetedTreatmentId:v10 factorPackSetId:v11])
  {
    v15 = TRILogCategory_Server();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v18 = [v9 shortDesc];
      *buf = 138543618;
      v22 = v18;
      v23 = 2114;
      v24 = v11;
      _os_log_error_impl(&dword_26F567000, v15, OS_LOG_TYPE_ERROR, "Unable to update experiment deployment %{public}@ for targeted factor pack set %{public}@.", buf, 0x16u);
    }

LABEL_14:

    v14 = 0;
    goto LABEL_15;
  }

  v14 = 1;
LABEL_15:

  v16 = *MEMORY[0x277D85DE8];
  return v14;
}

- (BOOL)_rewriteExperimentDeploymentForTreatmentPath:(id)a3 targetedTreatmentId:(id)a4
{
  v42 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = [[TRINamespaceDescriptorSetStorage alloc] initWithPaths:self->_paths];
  v37 = 0;
  if ([(TRINamespaceDescriptorSetStorage *)v9 hasNamespaceDescriptorsForTreatmentWithId:v8 path:&v37])
  {
    if (!v37)
    {
      v34 = [MEMORY[0x277CCA890] currentHandler];
      [v34 handleFailureInMethod:a2 object:self file:@"TRINamespaceResolverStorage.m" lineNumber:559 description:{@"Invalid parameter not satisfying: %@", @"namespaceDescriptorSetPath"}];
    }

    v10 = objc_alloc(MEMORY[0x277D737B8]);
    v11 = [v10 initWithDir:v37];
    if (v11)
    {
      v12 = [TRITempDirScopeGuard alloc];
      v13 = [(TRIPaths *)self->_paths localTempDir];
      v14 = [(TRITempDirScopeGuard *)v12 initWithPath:v13];

      if (!v14)
      {
        v22 = 0;
LABEL_18:

        [v11 unlock];
        goto LABEL_19;
      }

      v36 = [(TRINamespaceResolverStorage *)self pathForExperimentDeployment:v7];
      if (v36)
      {
        v15 = [(TRITempDirScopeGuard *)v14 path];
        v16 = objc_alloc(MEMORY[0x277CCACA8]);
        v17 = objc_opt_new();
        v18 = [v17 UUIDString];
        v19 = [v16 initWithFormat:@"targeting-link-%@", v18];
        v20 = [v15 stringByAppendingPathComponent:v19];

        v21 = [v36 stringByAppendingPathComponent:@"targetedNamespaceDescriptorSet"];
        if ([TRIReferenceManagedDir symlinkFromCurrentPath:v20 withFuturePath:v21 toManagedPath:v37])
        {
LABEL_8:
          v22 = [MEMORY[0x277CCAA00] triRenameOrFaultWithSourcePath:v20 destPath:v21];
LABEL_17:

          goto LABEL_18;
        }
      }

      else
      {
        v35 = [(TRITempDirScopeGuard *)v14 path];
        v23 = objc_alloc(MEMORY[0x277CCACA8]);
        v24 = objc_opt_new();
        v25 = [v24 UUIDString];
        v26 = [v23 initWithFormat:@"new-deployment-%@", v25];
        v20 = [v35 stringByAppendingPathComponent:v26];

        v21 = [(TRINamespaceResolverStorage *)self _pathForExperimentDeployment:v7];
        if (v21)
        {
          [MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:v20];
          v27 = MEMORY[0x277CCAA00];
          v28 = [v21 stringByDeletingLastPathComponent];
          [v27 triIdempotentCreateDirectoryOrFaultWithPath:v28];

          v29 = [v20 stringByAppendingPathComponent:@"targetedNamespaceDescriptorSet"];
          v30 = [v21 stringByAppendingPathComponent:@"targetedNamespaceDescriptorSet"];
          LOBYTE(v27) = [TRIReferenceManagedDir symlinkFromCurrentPath:v29 withFuturePath:v30 toManagedPath:v37];

          if (v27)
          {
            if ([TRIReferenceManagedDir createFromDir:v20])
            {
              goto LABEL_8;
            }
          }
        }
      }

      v22 = 0;
      goto LABEL_17;
    }
  }

  else
  {
    v11 = TRILogCategory_Server();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v33 = [v7 shortDesc];
      *buf = 138543618;
      v39 = v33;
      v40 = 2112;
      v41 = v8;
      _os_log_error_impl(&dword_26F567000, v11, OS_LOG_TYPE_ERROR, "Unable to update experiment %{public}@; targeted treatment set %@ is missing.", buf, 0x16u);
    }
  }

  v22 = 0;
LABEL_19:

  v31 = *MEMORY[0x277D85DE8];
  return v22 & 1;
}

- (BOOL)_rewriteExperimentDeploymentForFPSPath:(id)a3 targetedTreatmentId:(id)a4 factorPackSetId:(id)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  if (!v11)
  {
    v24 = [MEMORY[0x277CCA890] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"TRINamespaceResolverStorage.m" lineNumber:626 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetId"}];
  }

  v12 = [[TRIFactorPackSetStorage alloc] initWithPaths:self->_paths];
  v26 = 0;
  if (![(TRIFactorPackSetStorage *)v12 hasFactorPackSetWithId:v11 path:&v26])
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v21 = [v9 shortDesc];
      *buf = 138543618;
      v28 = v21;
      v29 = 2114;
      v30 = v11;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Unable to update experiment %{public}@; targeted factor pack set %{public}@ is missing.", buf, 0x16u);
    }

    goto LABEL_12;
  }

  if (!v26)
  {
    v25 = [MEMORY[0x277CCA890] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"TRINamespaceResolverStorage.m" lineNumber:636 description:{@"Invalid parameter not satisfying: %@", @"factorPackSetPath"}];
  }

  v13 = objc_alloc(MEMORY[0x277D737B8]);
  v14 = [v13 initWithDir:v26];
  if (!v14)
  {
LABEL_12:
    v19 = 0;
    goto LABEL_20;
  }

  v15 = [TRITempDirScopeGuard alloc];
  v16 = [(TRIPaths *)self->_paths localTempDir];
  v17 = [(TRITempDirScopeGuard *)v15 initWithPath:v16];

  if (v17)
  {
    v18 = [(TRINamespaceResolverStorage *)self pathForExperimentDeployment:v9];
    if (v18)
    {
      v19 = [(TRINamespaceResolverStorage *)self _updateTargetedFactorPackSetWithTempDirRef:v17 existingDeploymentDir:v18 factorPackSetPath:v26];
    }

    else
    {
      v20 = [(TRINamespaceResolverStorage *)self _pathForExperimentDeployment:v9];
      if (v20)
      {
        v19 = [(TRINamespaceResolverStorage *)self _createDeploymentDirectoryAndAddFactorPackSetWithTempDirRef:v17 newDeploymentDir:v20 factorPackSetPath:v26];
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v19 = 0;
  }

  [v14 unlock];
LABEL_20:

  v22 = *MEMORY[0x277D85DE8];
  return v19;
}

- (BOOL)_updateTargetedFactorPackSetWithTempDirRef:(id)a3 existingDeploymentDir:(id)a4 factorPackSetPath:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = [a3 path];
  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = objc_opt_new();
  v12 = [v11 UUIDString];
  v13 = [v10 initWithFormat:@"targeting-link-%@", v12];
  v14 = [v9 stringByAppendingPathComponent:v13];

  v15 = [v8 stringByAppendingPathComponent:@"targetedFactorPackSet"];

  LODWORD(v8) = [TRIReferenceManagedDir symlinkFromCurrentPath:v14 withFuturePath:v15 toManagedPath:v7];
  if (v8)
  {
    v16 = [MEMORY[0x277CCAA00] triRenameOrFaultWithSourcePath:v14 destPath:v15];
  }

  else
  {
    v16 = 0;
  }

  return v16;
}

- (BOOL)_createDeploymentDirectoryAndAddFactorPackSetWithTempDirRef:(id)a3 newDeploymentDir:(id)a4 factorPackSetPath:(id)a5
{
  v7 = a4;
  v8 = a5;
  v9 = [a3 path];
  v10 = objc_alloc(MEMORY[0x277CCACA8]);
  v11 = objc_opt_new();
  v12 = [v11 UUIDString];
  v13 = [v10 initWithFormat:@"new-deployment-%@", v12];
  v14 = [v9 stringByAppendingPathComponent:v13];

  [MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:v14];
  v15 = MEMORY[0x277CCAA00];
  v16 = [v7 stringByDeletingLastPathComponent];
  [v15 triIdempotentCreateDirectoryOrFaultWithPath:v16];

  v17 = [v14 stringByAppendingPathComponent:@"targetedFactorPackSet"];
  v18 = [v7 stringByAppendingPathComponent:@"targetedFactorPackSet"];
  LODWORD(v15) = [TRIReferenceManagedDir symlinkFromCurrentPath:v17 withFuturePath:v18 toManagedPath:v8];

  if (v15 && [TRIReferenceManagedDir createFromDir:v14])
  {
    v19 = [MEMORY[0x277CCAA00] triRenameOrFaultWithSourcePath:v14 destPath:v7];
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

- (id)parentDirForExperimentDeployments
{
  v3 = objc_autoreleasePoolPush();
  v4 = [(TRIPaths *)self->_paths namespaceDescriptorsDir];
  v5 = [v4 stringByAppendingPathComponent:@"v2/experiment"];

  objc_autoreleasePoolPop(v3);

  return v5;
}

- (id)_pathForExperimentDeployment:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if (!v5)
  {
    v17 = [MEMORY[0x277CCA890] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"TRINamespaceResolverStorage.m" lineNumber:797 description:{@"Invalid parameter not satisfying: %@", @"deployment"}];
  }

  v6 = [v5 experimentId];
  v7 = [v6 length];

  if (v7)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = [(TRINamespaceResolverStorage *)self parentDirForExperimentDeployments];
    v10 = objc_alloc(MEMORY[0x277CCACA8]);
    v11 = [v5 experimentId];
    v12 = [v10 initWithFormat:@"%@/%d", v11, objc_msgSend(v5, "deploymentId")];
    v13 = [v9 stringByAppendingPathComponent:v12];

    objc_autoreleasePoolPop(v8);
  }

  else
  {
    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315138;
      v19 = "[TRINamespaceResolverStorage _pathForExperimentDeployment:]";
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "%s has empty path arg: deployment.experimentId", buf, 0xCu);
    }

    v13 = 0;
  }

  v15 = *MEMORY[0x277D85DE8];

  return v13;
}

- (id)pathForExperimentDeployment:(id)a3
{
  v3 = [(TRINamespaceResolverStorage *)self _pathForExperimentDeployment:a3];
  if (v3)
  {
    v4 = [MEMORY[0x277CCAA00] defaultManager];
    if ([v4 fileExistsAtPath:v3])
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (BOOL)removeUnreferencedExperimentDeploymentsWithServerContext:(id)a3 removedCount:(unsigned int *)a4
{
  v6 = a3;
  v7 = [[TRIExperimentDeploymentRefStore alloc] initWithServerContext:v6];

  v11 = 0;
  v8 = [(TRINamespaceResolverStorage *)self parentDirForExperimentDeployments];
  v9 = [(TRINamespaceResolverStorage *)self _removeUnreferencedDeploymentsWithRefStore:v7 topLevelDir:v8 removedCount:&v11];

  if (a4)
  {
    *a4 = v11;
  }

  return v9;
}

- (BOOL)overwriteActiveFactorProvidersUsingTransaction:(id)a3 fromContext:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v31 = [MEMORY[0x277CCA890] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"TRINamespaceResolverStorage.m" lineNumber:826 description:{@"Invalid parameter not satisfying: %@", @"transaction"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v32 = [MEMORY[0x277CCA890] currentHandler];
  [v32 handleFailureInMethod:a2 object:self file:@"TRINamespaceResolverStorage.m" lineNumber:827 description:{@"Invalid parameter not satisfying: %@", @"context"}];

LABEL_3:
  context = objc_autoreleasePoolPush();
  v10 = objc_opt_new();
  v11 = objc_opt_new();
  v12 = objc_opt_new();
  v13 = objc_opt_new();
  v34 = objc_opt_new();
  v35 = objc_opt_new();
  v36 = objc_opt_new();
  v14 = [[TRIFactorPackSetStorage alloc] initWithPaths:self->_paths];
  v15 = [v9 rolloutDatabase];
  v52[0] = MEMORY[0x277D85DD0];
  v52[1] = 3221225472;
  v52[2] = __90__TRINamespaceResolverStorage_overwriteActiveFactorProvidersUsingTransaction_fromContext___block_invoke;
  v52[3] = &unk_279DE3118;
  v37 = v12;
  v53 = v37;
  v16 = v10;
  v54 = v16;
  v17 = v14;
  v58 = a2;
  v55 = v17;
  v56 = self;
  v18 = v11;
  v57 = v18;
  v40 = v7;
  v33 = [v15 enumerateActiveRecordsUsingTransaction:v7 block:v52];

  v39 = v9;
  v19 = [v9 experimentDatabase];
  v42[0] = MEMORY[0x277D85DD0];
  v42[1] = 3221225472;
  v42[2] = __90__TRINamespaceResolverStorage_overwriteActiveFactorProvidersUsingTransaction_fromContext___block_invoke_2;
  v42[3] = &unk_279DE3168;
  v41 = v13;
  v43 = v41;
  v20 = v34;
  v44 = v20;
  v21 = v35;
  v45 = v21;
  v22 = v16;
  v46 = v22;
  v23 = v36;
  v47 = v23;
  v48 = v17;
  v50 = v18;
  v51 = a2;
  v24 = self;
  v49 = self;
  v25 = v18;
  v26 = v17;
  v27 = [v19 enumerateActiveExperimentRecordsWithBlock:v42];

  v28 = 0;
  if (v33)
  {
    v29 = v37;
    if (v27)
    {
      v28 = [(TRINamespaceResolverStorage *)v24 _overwriteActiveFactorProvidersUsingGlobalPath:0 withNamespaceMap:v22 rolloutDeploymentMap:v37 experimentDeploymentMap:v41 experimentTreatmentMap:v20 treatmentFactorPackSetIdsMap:v21 counterfactualTreatmentsMap:v23 factorPackMap:0];
    }
  }

  else
  {
    v29 = v37;
  }

  objc_autoreleasePoolPop(context);
  return v28;
}

void __90__TRINamespaceResolverStorage_overwriteActiveFactorProvidersUsingTransaction_fromContext___block_invoke(uint64_t a1, void *a2)
{
  v57 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 activeFactorPackSetId];

  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = [v3 deployment];
    v7 = [v6 rolloutId];
    v8 = [v5 objectForKeyedSubscript:v7];

    v41 = v3;
    if (v8)
    {
      v9 = TRILogCategory_Server();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        v33 = [v3 deployment];
        v34 = [v33 rolloutId];
        v35 = *(a1 + 32);
        v36 = [v3 deployment];
        v37 = [v36 rolloutId];
        v38 = [v35 objectForKeyedSubscript:v37];
        v39 = [v3 deployment];
        *buf = 138543874;
        v52 = v34;
        v53 = 2112;
        v54 = v38;
        v55 = 1024;
        v56 = [v39 deploymentId];
        _os_log_error_impl(&dword_26F567000, v9, OS_LOG_TYPE_ERROR, "Rollout database has conflicting active deployments for rollout %{public}@: (%@, %d)", buf, 0x1Cu);

        v3 = v41;
      }
    }

    v10 = MEMORY[0x277CCABB0];
    v11 = [v3 deployment];
    v12 = [v10 numberWithInt:{objc_msgSend(v11, "deploymentId")}];
    v13 = *(a1 + 32);
    v14 = [v3 deployment];
    v15 = [v14 rolloutId];
    [v13 setObject:v12 forKeyedSubscript:v15];

    v47 = 0u;
    v48 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = [v3 namespaces];
    v16 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v46;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v46 != v18)
          {
            objc_enumerationMutation(obj);
          }

          v20 = *(*(&v45 + 1) + 8 * i);
          v21 = objc_alloc(MEMORY[0x277D73720]);
          v22 = [v3 deployment];
          v23 = [v22 rolloutId];
          v24 = [v21 initWithType:0 value:v23];

          v25 = [*(a1 + 40) objectForKeyedSubscript:v20];
          if (v25)
          {
            v26 = [*(a1 + 40) objectForKeyedSubscript:v20];
            v27 = [v26 arrayByAddingObject:v24];
            [*(a1 + 40) setObject:v27 forKeyedSubscript:v20];

            v3 = v41;
          }

          else
          {
            v49 = v24;
            v26 = [MEMORY[0x277CBEA60] arrayWithObjects:&v49 count:1];
            [*(a1 + 40) setObject:v26 forKeyedSubscript:v20];
          }
        }

        v17 = [obj countByEnumeratingWithState:&v45 objects:v50 count:16];
      }

      while (v17);
    }

    v28 = *(a1 + 48);
    v29 = [v3 activeFactorPackSetId];
    v43[0] = MEMORY[0x277D85DD0];
    v43[1] = 3221225472;
    v43[2] = __90__TRINamespaceResolverStorage_overwriteActiveFactorProvidersUsingTransaction_fromContext___block_invoke_187;
    v43[3] = &unk_279DE30F0;
    v43[4] = *(a1 + 56);
    v42 = *(a1 + 64);
    v30 = v42;
    v44 = v42;
    [v28 enumerateCompatibleFactorPacksForFactorPackSet:v29 usingLegacyPaths:0 withBlock:v43];
  }

  else
  {
    v31 = TRILogCategory_Server();
    if (os_log_type_enabled(v31, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543362;
      v52 = v3;
      _os_log_error_impl(&dword_26F567000, v31, OS_LOG_TYPE_ERROR, "Found active rollout with missing activeFactorPackSetId: %{public}@", buf, 0xCu);
    }
  }

  v32 = *MEMORY[0x277D85DE8];
}

void __90__TRINamespaceResolverStorage_overwriteActiveFactorProvidersUsingTransaction_fromContext___block_invoke_187(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 | v6)
  {
    if (v6)
    {
      v8 = [v6 namespaceName];
      v9 = [v7 sourceAsFactorPackId];
      goto LABEL_6;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRINamespaceResolverStorage.m" lineNumber:866 description:{@"Invalid parameter not satisfying: %@", @"pbFactorPack || fbFactorLevel"}];
  }

  v11 = [v5 selectedNamespace];
  v8 = [v11 name];

  v9 = [v5 factorPackId];
LABEL_6:
  v12 = v9;
  if (v9)
  {
    if (v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRINamespaceResolverStorage.m" lineNumber:869 description:{@"Invalid parameter not satisfying: %@", @"factorPackId"}];

    if (v8)
    {
      goto LABEL_8;
    }
  }

  v19 = [MEMORY[0x277CCA890] currentHandler];
  [v19 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRINamespaceResolverStorage.m" lineNumber:870 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

LABEL_8:
  v13 = [objc_alloc(MEMORY[0x277D73720]) initWithType:0 value:v12];
  v14 = [*(a1 + 40) objectForKeyedSubscript:v8];
  if (v14)
  {
    v15 = [*(a1 + 40) objectForKeyedSubscript:v8];
    v16 = [v15 arrayByAddingObject:v13];
    [*(a1 + 40) setObject:v16 forKeyedSubscript:v8];
  }

  else
  {
    v20[0] = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    [*(a1 + 40) setObject:v15 forKeyedSubscript:v8];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __90__TRINamespaceResolverStorage_overwriteActiveFactorProvidersUsingTransaction_fromContext___block_invoke_2(id *a1, void *a2)
{
  v62 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = [v5 factorPackSetId];

  if (v6)
  {
    v7 = [v5 experimentDeployment];
    v8 = [v7 experimentId];

    v9 = [v5 experimentDeployment];
    v10 = [v9 deploymentId];

    v41 = a1;
    v11 = [a1[4] objectForKeyedSubscript:v8];

    if (v11)
    {
      v12 = TRILogCategory_Server();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v36 = [a1[4] objectForKeyedSubscript:v8];
        *buf = 138543874;
        v57 = v8;
        v58 = 2112;
        v59 = v36;
        v60 = 1024;
        v61 = v10;
        _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Experiment database has conflicting active deployments for experiment %{public}@: (%@, %d)", buf, 0x1Cu);
      }
    }

    v13 = [MEMORY[0x277CCABB0] numberWithInt:v10];
    v14 = v41;
    [v41[4] setObject:v13 forKeyedSubscript:v8];

    v15 = [v5 treatmentId];
    if (v15)
    {
      [v41[5] setObject:v15 forKeyedSubscript:v8];
      v16 = [v5 factorPackSetId];
      [v41[6] setObject:v16 forKeyedSubscript:v15];
    }

    v37 = v15;
    v38 = v5;
    v52 = 0u;
    v53 = 0u;
    v50 = 0u;
    v51 = 0u;
    obj = [v5 namespaces];
    v42 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
    if (v42)
    {
      v40 = *v51;
      do
      {
        for (i = 0; i != v42; ++i)
        {
          if (*v51 != v40)
          {
            objc_enumerationMutation(obj);
          }

          v18 = *(*(&v50 + 1) + 8 * i);
          v19 = v8;
          v20 = [objc_alloc(MEMORY[0x277D73720]) initWithType:1 value:v8];
          v21 = v14[7];
          v22 = [v18 name];
          v23 = [v21 objectForKeyedSubscript:v22];
          if (v23)
          {
            v24 = v14[7];
            v44 = [v18 name];
            v43 = [v24 objectForKeyedSubscript:?];
            v25 = [v43 arrayByAddingObject:v20];
            v2 = v25;
          }

          else
          {
            v54 = v20;
            v25 = [MEMORY[0x277CBEA60] arrayWithObjects:&v54 count:1];
            v3 = v25;
          }

          v26 = v25;
          v27 = v14[7];
          v28 = [v18 name];
          [v27 setObject:v26 forKeyedSubscript:v28];

          v29 = v3;
          if (v23)
          {

            v29 = v44;
          }

          v14 = v41;
          v8 = v19;
        }

        v42 = [obj countByEnumeratingWithState:&v50 objects:v55 count:16];
      }

      while (v42);
    }

    v5 = v38;
    v30 = [v38 counterfactualsTreatmentsToFactorPackSetIds];
    v48[0] = MEMORY[0x277D85DD0];
    v48[1] = 3221225472;
    v48[2] = __90__TRINamespaceResolverStorage_overwriteActiveFactorProvidersUsingTransaction_fromContext___block_invoke_199;
    v48[3] = &unk_279DE3140;
    v49 = v14[6];
    [v30 enumerateKeysAndObjectsUsingBlock:v48];
    if ([v30 count])
    {
      v31 = [v30 allKeys];
      [v14[8] setObject:v31 forKeyedSubscript:v8];
    }

    v32 = v14[9];
    v33 = [v38 factorPackSetId];
    v46[0] = MEMORY[0x277D85DD0];
    v46[1] = 3221225472;
    v46[2] = __90__TRINamespaceResolverStorage_overwriteActiveFactorProvidersUsingTransaction_fromContext___block_invoke_2_201;
    v46[3] = &unk_279DE30F0;
    v46[4] = v14[10];
    v45 = *(v14 + 11);
    v34 = v45;
    v47 = v45;
    [v32 enumerateCompatibleFactorPacksForFactorPackSet:v33 usingLegacyPaths:0 withBlock:v46];
  }

  else
  {
    v8 = TRILogCategory_Server();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v57 = v5;
      _os_log_impl(&dword_26F567000, v8, OS_LOG_TYPE_DEFAULT, "Found active experiment with missing factorPackSetId: %{public}@", buf, 0xCu);
    }
  }

  v35 = *MEMORY[0x277D85DE8];
}

void __90__TRINamespaceResolverStorage_overwriteActiveFactorProvidersUsingTransaction_fromContext___block_invoke_2_201(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (v5 | v6)
  {
    if (v6)
    {
      v8 = [v6 namespaceName];
      v9 = [v7 sourceAsFactorPackId];
      goto LABEL_6;
    }
  }

  else
  {
    v10 = [MEMORY[0x277CCA890] currentHandler];
    [v10 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRINamespaceResolverStorage.m" lineNumber:912 description:{@"Invalid parameter not satisfying: %@", @"pbFactorPack || fbFactorLevel"}];
  }

  v11 = [v5 selectedNamespace];
  v8 = [v11 name];

  v9 = [v5 factorPackId];
LABEL_6:
  v12 = v9;
  if (v9)
  {
    if (v8)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRINamespaceResolverStorage.m" lineNumber:915 description:{@"Invalid parameter not satisfying: %@", @"factorPackId"}];

    if (v8)
    {
      goto LABEL_8;
    }
  }

  v19 = [MEMORY[0x277CCA890] currentHandler];
  [v19 handleFailureInMethod:*(a1 + 48) object:*(a1 + 32) file:@"TRINamespaceResolverStorage.m" lineNumber:916 description:{@"Invalid parameter not satisfying: %@", @"namespaceName"}];

LABEL_8:
  v13 = [objc_alloc(MEMORY[0x277D73720]) initWithType:1 value:v12];
  v14 = [*(a1 + 40) objectForKeyedSubscript:v8];
  if (v14)
  {
    v15 = [*(a1 + 40) objectForKeyedSubscript:v8];
    v16 = [v15 arrayByAddingObject:v13];
    [*(a1 + 40) setObject:v16 forKeyedSubscript:v8];
  }

  else
  {
    v20[0] = v13;
    v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v20 count:1];
    [*(a1 + 40) setObject:v15 forKeyedSubscript:v8];
  }

  v17 = *MEMORY[0x277D85DE8];
}

void __234__TRINamespaceResolverStorage__overwriteActiveFactorProvidersUsingGlobalPath_withNamespaceMap_rolloutDeploymentMap_experimentDeploymentMap_experimentTreatmentMap_treatmentFactorPackSetIdsMap_counterfactualTreatmentsMap_factorPackMap___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = a1;
  v28 = *MEMORY[0x277D85DE8];
  v20 = a2;
  v4 = a3;
  v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(v4, "count")}];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v6 = v4;
  v7 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v22;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v22 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v21 + 1) + 8 * i);
        v12 = [v11 type];
        if (v12 == 1)
        {
          v25 = @"experiment";
          v13 = &v25;
        }

        else
        {
          if (v12)
          {
            continue;
          }

          v26 = @"rolloutV2";
          v13 = &v26;
        }

        v14 = [v11 value];
        v13[1] = v14;
        v15 = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
        [v5 addObject:v15];
      }

      v8 = [v6 countByEnumeratingWithState:&v21 objects:v27 count:16];
    }

    while (v8);
  }

  v16 = [v5 count];
  if (v16 != [v6 count])
  {
    v18 = [MEMORY[0x277CCA890] currentHandler];
    [v18 handleFailureInMethod:*(v19 + 48) object:*(v19 + 32) file:@"TRINamespaceResolverStorage.m" lineNumber:999 description:@"unhandled factor provider type"];
  }

  [*(v19 + 40) setObject:v5 forKeyedSubscript:{v20, v19}];

  v17 = *MEMORY[0x277D85DE8];
}

void __234__TRINamespaceResolverStorage__overwriteActiveFactorProvidersUsingGlobalPath_withNamespaceMap_rolloutDeploymentMap_experimentDeploymentMap_experimentTreatmentMap_treatmentFactorPackSetIdsMap_counterfactualTreatmentsMap_factorPackMap___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v11 = *MEMORY[0x277D85DE8];
  v5 = a2;
  memset(v9, 0, sizeof(v9));
  if ([a3 countByEnumeratingWithState:v9 objects:v10 count:16])
  {
    v6 = [**(&v9[0] + 1) value];
    if (v6)
    {
      v7 = v6;
      [*(a1 + 32) setObject:v6 forKeyedSubscript:v5];
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (BOOL)_setProvisionalFactorpackMetadata:(id)a3 forNamespaceName:(id)a4 error:(id *)a5
{
  v42 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v36[0] = 0;
  v36[1] = v36;
  v36[2] = 0x3032000000;
  v36[3] = __Block_byref_object_copy__35;
  v36[4] = __Block_byref_object_dispose__35;
  v37 = 0;
  if (a5)
  {
    v10 = *a5;
    *a5 = 0;
  }

  v11 = [MEMORY[0x277D73778] promotionDirForNamespaceName:v9 withPaths:self->_paths];
  v12 = [TRITempDirScopeGuard alloc];
  v13 = [(TRIPaths *)self->_paths localTempDir];
  v14 = [(TRITempDirScopeGuard *)v12 initWithPath:v13];

  if (v14)
  {
    v15 = [(TRITempDirScopeGuard *)v14 path];
    v16 = objc_alloc(MEMORY[0x277CCACA8]);
    v17 = objc_opt_new();
    v18 = [v17 UUIDString];
    v19 = [v16 initWithFormat:@"fp-provisional-%@", v18];
    v20 = [v15 stringByAppendingPathComponent:v19];

    v30[0] = MEMORY[0x277D85DD0];
    v30[1] = 3221225472;
    v30[2] = __88__TRINamespaceResolverStorage__setProvisionalFactorpackMetadata_forNamespaceName_error___block_invoke;
    v30[3] = &unk_279DE31B8;
    v31 = v11;
    v21 = v20;
    v32 = v21;
    v22 = v8;
    v33 = v22;
    v35 = v36;
    v23 = v9;
    v34 = v23;
    v24 = __88__TRINamespaceResolverStorage__setProvisionalFactorpackMetadata_forNamespaceName_error___block_invoke(v30);
    v25 = [MEMORY[0x277CCAA00] defaultManager];
    [v25 triForceRemoveItemAtPath:v21 error:0];

    if ((v24 & 1) == 0)
    {
      v26 = TRILogCategory_Server();
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v29 = [v22 factorPackId];
        *buf = 138543618;
        v39 = v29;
        v40 = 2114;
        v41 = v23;
        _os_log_error_impl(&dword_26F567000, v26, OS_LOG_TYPE_ERROR, "Failed to set factor pack %{public}@ as provisional for namespace %{public}@", buf, 0x16u);
      }
    }
  }

  else
  {
    v24 = 0;
  }

  _Block_object_dispose(v36, 8);
  v27 = *MEMORY[0x277D85DE8];
  return v24;
}

uint64_t __88__TRINamespaceResolverStorage__setProvisionalFactorpackMetadata_forNamespaceName_error___block_invoke(uint64_t a1)
{
  v45 = *MEMORY[0x277D85DE8];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v2 = *(a1 + 40);
  v43[0] = *(a1 + 32);
  v43[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:2];
  v4 = [v3 countByEnumeratingWithState:&v31 objects:v44 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
    while (2)
    {
      v7 = 0;
      do
      {
        if (*v32 != v6)
        {
          objc_enumerationMutation(v3);
        }

        if (![MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:*(*(&v31 + 1) + 8 * v7)])
        {
          v15 = 0;
          goto LABEL_22;
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v31 objects:v44 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v3 = [*(a1 + 40) stringByAppendingPathComponent:@"provisional.pb"];
  v8 = [*(a1 + 32) stringByAppendingPathComponent:@"provisional.pb"];
  v9 = [*(a1 + 48) data];
  v10 = *(*(a1 + 64) + 8);
  obj = *(v10 + 40);
  v11 = [v9 writeToFile:v3 options:0x10000000 error:&obj];
  objc_storeStrong((v10 + 40), obj);

  if (v11)
  {
    if ([MEMORY[0x277CCAA00] triRenameOrFaultWithSourcePath:v3 destPath:v8])
    {
      v12 = TRILogCategory_Server();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = [*(a1 + 48) factorPackId];
        v14 = *(a1 + 56);
        *buf = 138543618;
        v38 = v13;
        v39 = 2114;
        v40 = v14;
        _os_log_impl(&dword_26F567000, v12, OS_LOG_TYPE_DEFAULT, "Set factor pack %{public}@ as provisional for namespace %{public}@", buf, 0x16u);
      }

      v15 = 1;
      goto LABEL_21;
    }

    v23 = objc_alloc(MEMORY[0x277CCA9B8]);
    v35 = *MEMORY[0x277CCA450];
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to rename %@ to %@", v3, v8];
    v36 = v12;
    v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
    v25 = [v23 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v24];
    v26 = *(*(a1 + 64) + 8);
    v27 = *(v26 + 40);
    *(v26 + 40) = v25;
  }

  else
  {
    if (!*(*(*(a1 + 64) + 8) + 40))
    {
      v16 = objc_alloc(MEMORY[0x277CCA9B8]);
      v41 = *MEMORY[0x277CCA450];
      v17 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to write %@", v3];
      v42 = v17;
      v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v42 forKeys:&v41 count:1];
      v19 = [v16 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v18];
      v20 = *(*(a1 + 64) + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;
    }

    v12 = TRILogCategory_Server();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v22 = *(*(*(a1 + 64) + 8) + 40);
      *buf = 138543618;
      v38 = v3;
      v39 = 2114;
      v40 = v22;
      _os_log_error_impl(&dword_26F567000, v12, OS_LOG_TYPE_ERROR, "Failed write %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v15 = 0;
LABEL_21:

LABEL_22:
  v28 = *MEMORY[0x277D85DE8];
  return v15;
}

- (id)_getProvisionalFactorpackMetadataForNamespaceName:(id)a3 mustExist:(BOOL)a4 error:(id *)a5
{
  v6 = a4;
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (a5)
  {
    v9 = *a5;
    *a5 = 0;
  }

  v10 = [MEMORY[0x277D73778] promotionDirForNamespaceName:v8 withPaths:self->_paths];
  v11 = [v10 stringByAppendingPathComponent:@"provisional.pb"];

  v12 = [MEMORY[0x277CCAA00] defaultManager];
  v13 = [v12 fileExistsAtPath:v11];

  if (v13)
  {
    v24 = 0;
    v14 = [MEMORY[0x277CBEA90] dataWithContentsOfFile:v11 options:0 error:&v24];
    v15 = v24;
    if (v14)
    {
      v23 = v15;
      v16 = [MEMORY[0x277D73BA0] parseFromData:v14 error:&v23];
      v17 = v23;

      if (v16)
      {
        v18 = v16;
        v19 = v18;
      }

      else
      {
        v20 = TRILogCategory_Server();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543874;
          v26 = v11;
          v27 = 2114;
          v28 = v8;
          v29 = 2114;
          v30 = v17;
          _os_log_error_impl(&dword_26F567000, v20, OS_LOG_TYPE_ERROR, "Error parsing provisional file %{public}@ for namespace %{public}@: %{public}@", buf, 0x20u);
        }

        v18 = 0;
        v19 = 0;
      }
    }

    else
    {
      v18 = TRILogCategory_Server();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138543874;
        v26 = v11;
        v27 = 2114;
        v28 = v8;
        v29 = 2114;
        v30 = v15;
        _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Error opening provisional file %{public}@ for namespace %{public}@: %{public}@", buf, 0x20u);
      }

      v19 = 0;
      v17 = v15;
    }
  }

  else
  {
    if (!v6)
    {
      v17 = 0;
      v19 = 0;
      goto LABEL_20;
    }

    v14 = TRILogCategory_Server();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v26 = v11;
      v27 = 2114;
      v28 = v8;
      _os_log_error_impl(&dword_26F567000, v14, OS_LOG_TYPE_ERROR, "Provisional file %{public}@ for namespace %{public}@ does not exist", buf, 0x16u);
    }

    v17 = 0;
    v19 = 0;
  }

LABEL_20:
  v21 = *MEMORY[0x277D85DE8];

  return v19;
}

- (BOOL)setProvisionalFactorPackId:(id)a3 forNamespaceName:(id)a4 error:(id *)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = objc_alloc_init(MEMORY[0x277D73BA0]);
  [v10 setFactorPackId:v8];
  [v10 setAttempts:1];
  v11 = [(TRINamespaceResolverStorage *)self _getProvisionalFactorpackMetadataForNamespaceName:v9 mustExist:0 error:0];
  v12 = v11;
  if (v11 && [v11 hasFactorPackId])
  {
    v13 = [v12 factorPackId];
    if ([v13 isEqualToString:v8])
    {
      v14 = [v12 hasAttempts];

      if (v14)
      {
        [v10 setAttempts:{objc_msgSend(v10, "attempts") + objc_msgSend(v12, "attempts")}];
      }
    }

    else
    {
    }
  }

  v15 = [(TRINamespaceResolverStorage *)self _setProvisionalFactorpackMetadata:v10 forNamespaceName:v9 error:a5];
  if (v15)
  {
    v16 = TRILogCategory_Server();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 138543618;
      v20 = v8;
      v21 = 2114;
      v22 = v9;
      _os_log_impl(&dword_26F567000, v16, OS_LOG_TYPE_DEFAULT, "Set factor pack %{public}@ as provisional for namespace %{public}@", &v19, 0x16u);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)rejectFactorPackId:(id)a3 forNamespaceName:(id)a4 rolloutDeployment:(id)a5 error:(id *)a6
{
  v32 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v25 = 0;
  if (a6)
  {
    v13 = *a6;
    *a6 = 0;
  }

  v14 = [(TRINamespaceResolverStorage *)self _getProvisionalFactorpackMetadataForNamespaceName:v11 mustExist:1 error:&v25];
  v15 = v14;
  if (v14)
  {
    if ([v14 hasFactorPackId])
    {
      v16 = [v15 factorPackId];
      v17 = [v16 isEqualToString:v10];

      if (v17)
      {
        if ([v15 hasRejected] && objc_msgSend(v15, "rejected"))
        {
          v18 = TRILogCategory_Server();
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
LABEL_22:
            v22 = 1;
            goto LABEL_16;
          }

          *buf = 138543618;
          v27 = v10;
          v28 = 2114;
          v29 = v11;
          v19 = "Skipping setting factor pack %{public}@ as rejected for namespace %{public}@ as it is already set";
        }

        else
        {
          [v15 setRejected:1];
          if (![(TRINamespaceResolverStorage *)self _setProvisionalFactorpackMetadata:v15 forNamespaceName:v11 error:a6])
          {
            v22 = 0;
            goto LABEL_17;
          }

          v18 = TRILogCategory_Server();
          if (!os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
          {
            goto LABEL_22;
          }

          *buf = 138543618;
          v27 = v10;
          v28 = 2114;
          v29 = v11;
          v19 = "Set factor pack %{public}@ as rejected for namespace %{public}@";
        }

        _os_log_impl(&dword_26F567000, v18, OS_LOG_TYPE_DEFAULT, v19, buf, 0x16u);
        goto LABEL_22;
      }
    }

    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      v20 = [v15 hasFactorPackId];
      if (v20)
      {
        v21 = [v15 factorPackId];
      }

      else
      {
        v21 = &stru_287FA0430;
      }

      *buf = 138543874;
      v27 = v10;
      v28 = 2114;
      v29 = v11;
      v30 = 2114;
      v31 = v21;
      _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Can't reject factorpack %{public}@ when currently provisional factorpack for namespace %{public}@ is %{public}@", buf, 0x20u);
      if (v20)
      {
      }
    }
  }

  else
  {
    v18 = TRILogCategory_Server();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      *buf = 138543618;
      v27 = v11;
      v28 = 2114;
      v29 = v25;
      _os_log_error_impl(&dword_26F567000, v18, OS_LOG_TYPE_ERROR, "Failed to get provisional file for namespace %{public}@: %{public}@", buf, 0x16u);
    }
  }

  v22 = 0;
LABEL_16:

LABEL_17:
  v23 = *MEMORY[0x277D85DE8];
  return v22;
}

- (BOOL)promoteFactorPackId:(id)a3 forNamespaceName:(id)a4 rolloutDeployment:(id)a5 error:(id *)a6
{
  v88 = *MEMORY[0x277D85DE8];
  v11 = a3;
  v12 = a4;
  v61 = a5;
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__35;
  v76 = __Block_byref_object_dispose__35;
  v77 = 0;
  if (a6)
  {
    v13 = *a6;
    *a6 = 0;
  }

  v14 = [[TRIFactorPackStorage alloc] initWithPaths:self->_paths];
  *(&v63 + 1) = [(TRIFactorPackStorage *)v14 pathForFactorPackWithId:v11 namespaceName:v12];
  v60 = v14;
  *&v63 = [(TRIFactorPackStorage *)v14 legacyPathForFactorPackWithId:v11 namespaceName:v12];
  if (_os_feature_enabled_impl())
  {
    v15 = [[TRIFBFactorPackStorage alloc] initWithPaths:self->_paths];
    v16 = [(TRIFBFactorPackStorage *)v15 pathForFactorLevelsWithFactorPackId:v11 namespaceName:v12];
    v17 = [(TRIFBFactorPackStorage *)v15 legacyPathForFactorLevelsWithFactorPackId:v11 namespaceName:v12];
    v18 = 0;
    if (*(&v63 + 1) && v16)
    {
      v18 = [*(&v63 + 1) isEqualToString:v16];
    }

    v19 = 0;
    if (v63 && v17 && (v20 = [v63 isEqualToString:v17], v19 = v20, (v18 & v20 & 1) != 0))
    {
      if (!_os_feature_enabled_impl())
      {
LABEL_20:

        goto LABEL_21;
      }

      v21 = v16;

      v22 = v63;
      *&v63 = v17;
      *(&v63 + 1) = v21;
    }

    else
    {
      if ((v18 & 1) == 0)
      {
        v23 = TRILogCategory_Server();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v83 = v11;
          v84 = 2112;
          v85 = *(&v63 + 1);
          v86 = 2112;
          v87 = v16;
          _os_log_error_impl(&dword_26F567000, v23, OS_LOG_TYPE_ERROR, "pb and factor paths do not match for factor pack id:%@, pb path:%@, fb path:%@", buf, 0x20u);
        }
      }

      if (v19)
      {
        goto LABEL_20;
      }

      v22 = TRILogCategory_Server();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412802;
        v83 = v11;
        v84 = 2112;
        v85 = v63;
        v86 = 2112;
        v87 = v17;
        _os_log_error_impl(&dword_26F567000, v22, OS_LOG_TYPE_ERROR, "pb and  factor paths do not match for factor pack id:%@, pb path:%@, fb path:%@", buf, 0x20u);
      }
    }

    goto LABEL_20;
  }

LABEL_21:
  if (v63 == 0)
  {
    v36 = objc_alloc(MEMORY[0x277CCA9B8]);
    v80 = *MEMORY[0x277CCA450];
    v62 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"FactorPackId %@ unknown", v11];
    v81 = v62;
    v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v81 forKeys:&v80 count:1];
    v37 = [v36 initWithDomain:@"TRIGeneralErrorDomain" code:2 userInfo:v28];
    v35 = 0;
    v31 = v73[5];
    v73[5] = v37;
    goto LABEL_47;
  }

  v24 = [(TRIPaths *)self->_paths namespaceDescriptorsDir];
  v25 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"%@/%@", @"v2/promotion", v12];
  v62 = [v24 stringByAppendingPathComponent:v25];

  v26 = [v62 stringByAppendingPathComponent:@"promoted"];
  v27 = [MEMORY[0x277CCAA00] defaultManager];
  v28 = v26;
  if (!v28)
  {
    v58 = [MEMORY[0x277CCA890] currentHandler];
    [v58 handleFailureInMethod:a2 object:self file:@"TRINamespaceResolverStorage.m" lineNumber:1320 description:{@"Expression was unexpectedly nil/false: %@", @"existingPromotedPath"}];
  }

  v29 = [v27 fileExistsAtPath:v28];

  if (!v29)
  {
LABEL_34:
    v38 = *(&v63 + 1);
    if (!*(&v63 + 1))
    {
      v38 = v63;
    }

    v31 = v38;
    v59 = [objc_alloc(MEMORY[0x277D737B8]) initWithDir:v31];
    if (v59)
    {
      v39 = [TRITempDirScopeGuard alloc];
      v40 = [(TRIPaths *)self->_paths localTempDir];
      v41 = [(TRITempDirScopeGuard *)v39 initWithPath:v40];

      if (!v41)
      {
        v35 = 0;
        goto LABEL_46;
      }

      v42 = [(TRITempDirScopeGuard *)v41 path];
      v43 = objc_alloc(MEMORY[0x277CCACA8]);
      v44 = objc_opt_new();
      v45 = [v44 UUIDString];
      v46 = [v43 initWithFormat:@"fp-promotion-%@", v45];
      v47 = [v42 stringByAppendingPathComponent:v46];

      v64[0] = MEMORY[0x277D85DD0];
      v64[1] = 3221225472;
      v64[2] = __92__TRINamespaceResolverStorage_promoteFactorPackId_forNamespaceName_rolloutDeployment_error___block_invoke;
      v64[3] = &unk_279DE3208;
      v65 = v62;
      v48 = v47;
      v66 = v48;
      v71 = &v72;
      v67 = *(&v63 + 1);
      v68 = v63;
      v49 = v11;
      v69 = v49;
      v50 = v12;
      v70 = v50;
      v35 = __92__TRINamespaceResolverStorage_promoteFactorPackId_forNamespaceName_rolloutDeployment_error___block_invoke(v64);
      v51 = [MEMORY[0x277CCAA00] defaultManager];
      [v51 triForceRemoveItemAtPath:v48 error:0];

      [v59 unlock];
      if ((v35 & 1) == 0)
      {
        v52 = TRILogCategory_Server();
        if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
        {
          *buf = 138543618;
          v83 = v49;
          v84 = 2114;
          v85 = v50;
          _os_log_error_impl(&dword_26F567000, v52, OS_LOG_TYPE_ERROR, "Failed to promote factor pack %{public}@ for namespace %{public}@", buf, 0x16u);
        }
      }

      v53 = v65;
    }

    else
    {
      v54 = objc_alloc(MEMORY[0x277CCA9B8]);
      v78 = *MEMORY[0x277CCA450];
      v41 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to lock %@", v31];
      v79 = v41;
      v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v79 forKeys:&v78 count:1];
      v55 = [v54 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v48];
      v35 = 0;
      v53 = v73[5];
      v73[5] = v55;
    }

LABEL_46:
    goto LABEL_47;
  }

  v30 = [v28 triStringByResolvingSymlinksInPath];
  v31 = v30;
  if (!v30)
  {
LABEL_33:

    goto LABEL_34;
  }

  v32 = [v30 lastPathComponent];
  v33 = TRIValidateFactorPackId();

  if (!v33 || ![v33 isEqualToString:v11])
  {

    goto LABEL_33;
  }

  v34 = TRILogCategory_Server();
  if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138543618;
    v83 = v11;
    v84 = 2114;
    v85 = v12;
    _os_log_impl(&dword_26F567000, v34, OS_LOG_TYPE_DEFAULT, "Skipping promotion of factor pack %{public}@ for namespace %{public}@ as it is already promoted", buf, 0x16u);
  }

  v35 = 1;
LABEL_47:

  _Block_object_dispose(&v72, 8);
  v56 = *MEMORY[0x277D85DE8];
  return v35;
}

uint64_t __92__TRINamespaceResolverStorage_promoteFactorPackId_forNamespaceName_rolloutDeployment_error___block_invoke(uint64_t a1)
{
  v41 = *MEMORY[0x277D85DE8];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v2 = *(a1 + 40);
  v39[0] = *(a1 + 32);
  v39[1] = v2;
  v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
  v4 = [v3 countByEnumeratingWithState:&v29 objects:v40 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v30;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v30 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v29 + 1) + 8 * i);
        if (![MEMORY[0x277CCAA00] triIdempotentCreateDirectoryOrFaultWithPath:v8])
        {
          v17 = objc_alloc(MEMORY[0x277CCA9B8]);
          v37 = *MEMORY[0x277CCA450];
          v18 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to create %@", v8];
          v38 = v18;
          v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v38 forKeys:&v37 count:1];
          v20 = [v17 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v19];
          v21 = *(*(a1 + 80) + 8);
          v22 = *(v21 + 40);
          *(v21 + 40) = v20;

          v16 = 0;
          goto LABEL_19;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v29 objects:v40 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v25[0] = MEMORY[0x277D85DD0];
  v25[1] = 3221225472;
  v25[2] = __92__TRINamespaceResolverStorage_promoteFactorPackId_forNamespaceName_rolloutDeployment_error___block_invoke_2;
  v25[3] = &unk_279DE31E0;
  v26 = *(a1 + 40);
  v9 = *(a1 + 32);
  v10 = *(a1 + 80);
  v27 = v9;
  v28 = v10;
  v11 = MEMORY[0x2743948D0](v25);
  v12 = v11;
  if (*(a1 + 48) && !(*(v11 + 16))(v11, @"promoted") || *(a1 + 56) && !(v12)[2](v12, @"legacyPromoted"))
  {
    v16 = 0;
  }

  else
  {
    v13 = TRILogCategory_Server();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(a1 + 64);
      v15 = *(a1 + 72);
      *buf = 138543618;
      v34 = v14;
      v35 = 2114;
      v36 = v15;
      _os_log_impl(&dword_26F567000, v13, OS_LOG_TYPE_DEFAULT, "Promoted factor pack %{public}@ for namespace %{public}@", buf, 0x16u);
    }

    v16 = 1;
  }

  v3 = v26;
LABEL_19:

  v23 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t __92__TRINamespaceResolverStorage_promoteFactorPackId_forNamespaceName_rolloutDeployment_error___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v20[1] = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = *(a1 + 32);
  v7 = a2;
  v8 = [v6 stringByAppendingPathComponent:v7];
  v9 = [*(a1 + 40) stringByAppendingPathComponent:v7];

  if ([TRIReferenceManagedDir symlinkFromCurrentPath:v8 withFuturePath:v9 toManagedPath:v5])
  {
    v10 = [MEMORY[0x277CCAA00] triRenameOrFaultWithSourcePath:v8 destPath:v9];
  }

  else
  {
    v11 = objc_alloc(MEMORY[0x277CCA9B8]);
    v19 = *MEMORY[0x277CCA450];
    v12 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"Failed to symlink to %@ for %@ from %@", v8, v9, v5, v19];
    v20[0] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:&v19 count:1];
    v14 = [v11 initWithDomain:@"TRIGeneralErrorDomain" code:1 userInfo:v13];
    v15 = *(*(a1 + 48) + 8);
    v16 = *(v15 + 40);
    *(v15 + 40) = v14;

    v10 = 0;
  }

  v17 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)removeUnneededPromotionsWithRemovedCount:(unsigned int *)a3 removeAll:(BOOL)a4
{
  v52[1] = *MEMORY[0x277D85DE8];
  context = objc_autoreleasePoolPush();
  v35 = self;
  v6 = [(TRIPaths *)self->_paths namespaceDescriptorsDir];
  v7 = [v6 stringByAppendingPathComponent:@"v2/promotion"];

  LOBYTE(v8) = 1;
  v36 = v7;
  v9 = [MEMORY[0x277CBEBC0] fileURLWithPath:v7 isDirectory:1];
  v10 = [MEMORY[0x277CCAA00] defaultManager];
  v40 = *MEMORY[0x277CBE868];
  v52[0] = *MEMORY[0x277CBE868];
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:1];
  v33 = v9;
  v12 = [v10 contentsOfDirectoryAtURL:v9 includingPropertiesForKeys:v11 options:0 error:0];

  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  obj = v12;
  v13 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
  if (v13)
  {
    v14 = v13;
    v32 = a2;
    v15 = *v44;
    v8 = 1;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v44 != v15)
        {
          objc_enumerationMutation(obj);
        }

        v17 = *(*(&v43 + 1) + 8 * i);
        v18 = objc_autoreleasePoolPush();
        v41 = 0;
        v42 = 0;
        v19 = [v17 getResourceValue:&v42 forKey:v40 error:&v41];
        v20 = v42;
        v21 = v41;
        if ((v19 & 1) == 0)
        {
          v29 = TRILogCategory_Server();
          if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
          {
            *buf = 138543618;
            v48 = v17;
            v49 = 2114;
            v50 = v21;
            _os_log_error_impl(&dword_26F567000, v29, OS_LOG_TYPE_ERROR, "Failed to determine if %{public}@ is a directory: %{public}@", buf, 0x16u);
          }

          objc_autoreleasePoolPop(v18);
          LOBYTE(v8) = 0;
          goto LABEL_25;
        }

        if ([v20 BOOLValue])
        {
          v22 = [v17 lastPathComponent];
          if (!v22)
          {
            v28 = [MEMORY[0x277CCA890] currentHandler];
            [v28 handleFailureInMethod:v32 object:v35 file:@"TRINamespaceResolverStorage.m" lineNumber:1435 description:{@"Expression was unexpectedly nil/false: %@", @"dirEntry.lastPathComponent"}];
          }

          if (a4 || ([MEMORY[0x277D73760] factorProviderWithPaths:v35->_paths namespaceName:v22], v23 = objc_claimAutoreleasedReturnValue(), objc_msgSend(v23, "providerForTreatmentLayer:", 2), v24 = objc_claimAutoreleasedReturnValue(), v24, v23, !v24))
          {
            v25 = TRILogCategory_Server();
            if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138543362;
              v48 = v22;
              _os_log_impl(&dword_26F567000, v25, OS_LOG_TYPE_DEFAULT, "Removing promotion dir for %{public}@", buf, 0xCu);
            }

            v26 = [v36 stringByAppendingPathComponent:v22];
            v27 = [MEMORY[0x277CCAA00] defaultManager];
            v8 &= [v27 triForceRemoveItemAtPath:v26 error:0];

            if (a3 && v8)
            {
              ++*a3;
            }
          }
        }

        objc_autoreleasePoolPop(v18);
      }

      v14 = [obj countByEnumeratingWithState:&v43 objects:v51 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

LABEL_25:

  objc_autoreleasePoolPop(context);
  v30 = *MEMORY[0x277D85DE8];
  return v8 & 1;
}

@end