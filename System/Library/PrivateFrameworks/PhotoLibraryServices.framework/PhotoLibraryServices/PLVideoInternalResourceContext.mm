@interface PLVideoInternalResourceContext
- (BOOL)validateResource:(id)resource;
- (PLVideoInternalResourceContext)initWithManagedObjectContext:(id)context asset:(id)asset;
- (id)onDemandInstallAdjustedFullSizeVideoComplementResourceIfPresent;
- (id)videoResourcesMatchingVersions:(id)versions;
- (void)repairResource:(id)resource;
@end

@implementation PLVideoInternalResourceContext

- (BOOL)validateResource:(id)resource
{
  resourceCopy = resource;
  v4 = resourceCopy;
  if (resourceCopy)
  {
    if ([resourceCopy isLocallyAvailable])
    {
      fileURLIfLocal = [v4 fileURLIfLocal];
      defaultManager = [MEMORY[0x1E696AC08] defaultManager];
      path = [fileURLIfLocal path];
      v8 = [defaultManager fileExistsAtPath:path];
    }

    else
    {
      v8 = 1;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)repairResource:(id)resource
{
  resourceCopy = resource;
  backingResource = [resourceCopy backingResource];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  v5 = resourceCopy;
  if (isKindOfClass)
  {
    backingResource2 = [resourceCopy backingResource];
    fileSystemBookmark = [backingResource2 fileSystemBookmark];

    if (!fileSystemBookmark)
    {
      [backingResource2 markAsNotLocallyAvailable];
    }

    v5 = resourceCopy;
  }
}

- (id)onDemandInstallAdjustedFullSizeVideoComplementResourceIfPresent
{
  v2 = [PLResourceInstaller onDemand_installAdjustedFullSizeVideoComplementResourceIfPresentForAsset:self->_asset];
  if (v2)
  {
    v3 = [[PLVideoInternalResource alloc] initWithBackingResource:v2];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (id)videoResourcesMatchingVersions:(id)versions
{
  v41 = *MEMORY[0x1E69E9840];
  versionsCopy = versions;
  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"utiConformanceHint == %d AND resourceType IN %@", 3, &unk_1F0FBFFA0];
  isWalrusEnabled = self->_isWalrusEnabled;
  objectID = [(PLManagedAsset *)self->_asset objectID];
  managedObjectContext = [(PLManagedAsset *)self->_asset managedObjectContext];
  v30 = v5;
  v31 = versionsCopy;
  v9 = [PLManagedAsset fetchResourcesForAssetWithObjectID:objectID inContext:managedObjectContext versions:versionsCopy includeVirtualResources:1 allowDerivatives:1 excludeDynamicCPLResources:isWalrusEnabled additionalPredicate:v5 relationshipKeyPathsForPrefetching:0 error:0];

  array = [MEMORY[0x1E695DF70] array];
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v11 = v9;
  v12 = [v11 countByEnumeratingWithState:&v32 objects:v40 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v33;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v33 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v32 + 1) + 8 * i);
        if (![v16 isVirtual])
        {
          v24 = v16;
          goto LABEL_17;
        }

        recipeID = [v16 recipeID];
        v18 = recipeID == 65938 || recipeID == 131272;
        if (v18 || recipeID == 0x20000)
        {
          hasAdjustments = [(PLManagedAsset *)self->_asset hasAdjustments];
          v20 = PLImageManagerGetLog();
          v21 = v20;
          if (hasAdjustments)
          {
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              v22 = PLResourceRecipeIDDescription([v16 recipeID], 0);
              uuid = [(PLManagedAsset *)self->_asset uuid];
              *buf = 138543618;
              v37 = v22;
              v38 = 2114;
              v39 = uuid;
              _os_log_impl(&dword_19BF1F000, v21, OS_LOG_TYPE_DEFAULT, "[RM] installing full size render %{public}@ video resource because a persisted resource was not found for adjusted asset: %{public}@", buf, 0x16u);
            }

            v24 = [PLResourceInstaller onDemand_installResourceWithResourceIdentity:v16 forAsset:self->_asset];
LABEL_17:
            v21 = v24;
            if (!v24)
            {
              continue;
            }

            v25 = [[PLVideoInternalResource alloc] initWithBackingResource:v24];
            [array addObject:v25];
            goto LABEL_24;
          }

          if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
          {
            v25 = PLResourceRecipeIDDescription([v16 recipeID], 0);
            uuid2 = [(PLManagedAsset *)self->_asset uuid];
            *buf = 138543618;
            v37 = v25;
            v38 = 2114;
            v39 = uuid2;
            v27 = v21;
            v28 = "[RM] found virtual full size render %{public}@ video resource on unadjusted asset: %{public}@";
            goto LABEL_23;
          }
        }

        else
        {
          v21 = PLImageManagerGetLog();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v25 = PLResourceRecipeIDDescription([v16 recipeID], 0);
            uuid2 = [(PLManagedAsset *)self->_asset uuid];
            *buf = 138543618;
            v37 = v25;
            v38 = 2114;
            v39 = uuid2;
            v27 = v21;
            v28 = "[RM] invalid virtual %{public}@ video resource found on asset: %{public}@";
LABEL_23:
            _os_log_impl(&dword_19BF1F000, v27, OS_LOG_TYPE_ERROR, v28, buf, 0x16u);

LABEL_24:
          }
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v32 objects:v40 count:16];
    }

    while (v13);
  }

  return array;
}

- (PLVideoInternalResourceContext)initWithManagedObjectContext:(id)context asset:(id)asset
{
  contextCopy = context;
  assetCopy = asset;
  v13.receiver = self;
  v13.super_class = PLVideoInternalResourceContext;
  v9 = [(PLVideoInternalResourceContext *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_moc, context);
    objc_storeStrong(&v10->_asset, asset);
    photoLibrary = [assetCopy photoLibrary];
    v10->_isWalrusEnabled = [photoLibrary isWalrusEnabled];
  }

  return v10;
}

@end