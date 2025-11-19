@interface PLCloudResource
+ (BOOL)_countOfLocalCloudResourcesOfType:(unint64_t)a3 inManagedObjectContext:(id)a4 forMediumSized:(BOOL)a5 localCount:(unint64_t *)a6 unavailableCount:(unint64_t *)a7 error:(id *)a8;
+ (BOOL)legacyCreateNewResourcesIn:(id)a3 inManagedObjectContext:(id)a4 forAsset:(id)a5;
+ (id)assetUUIDToCloudResourcesForCloudMaster:(id)a3;
+ (id)cloudResourceForResourceType:(unint64_t)a3 forAssetUuid:(id)a4 forCloudMaster:(id)a5;
+ (id)cloudResourcesForResourceType:(unint64_t)a3 forCloudMaster:(id)a4;
+ (id)duplicateCloudResource:(id)a3 forAsset:(id)a4 withFilePath:(id)a5 inManagedObjectContext:(id)a6;
+ (id)insertIntoPhotoLibrary:(id)a3 forAsset:(id)a4 withCPLResource:(id)a5 adjusted:(BOOL)a6 withCreationDate:(id)a7;
+ (id)legacyCloudResourceForResourceType:(unint64_t)a3 forAsset:(id)a4;
+ (id)nonLocalResourcesInManagedObjectContext:(id)a3 forAssetUUIDs:(id)a4 cplResourceTypes:(id)a5;
+ (id)validatedExternalResourceFromCloudResource:(id)a3 asset:(id)a4;
+ (id)validatedExternalResourcesUsingLegacyCloudResourcesFromAssetWithCloudMaster:(id)a3;
+ (unint64_t)bytesForAllResourcesInLibrary:(id)a3;
+ (void)_copyResourceFileFrom:(id)a3 to:(id)a4;
+ (void)resetPrefetchStateForResourcesWithResourceType:(int64_t)a3 itemIdentifiers:(id)a4 inLibrary:(id)a5;
- (CPLScopedIdentifier)scopedIdentifier;
- (id)cplResourceIncludeFile:(BOOL)a3;
- (id)description;
- (void)_duplicatePropertiesFromCloudResource:(id)a3 withFilePath:(id)a4 forAssetUuid:(id)a5;
- (void)applyPropertiesFromCloudResource:(id)a3;
- (void)prepareForDeletion;
- (void)setIsLocallyAvailable:(BOOL)a3;
- (void)setLastPrefetchDate:(id)a3;
- (void)setPrefetchCount:(signed __int16)a3;
- (void)setPrunedAt:(id)a3;
@end

@implementation PLCloudResource

+ (id)validatedExternalResourcesUsingLegacyCloudResourcesFromAssetWithCloudMaster:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [v4 master];
  v7 = [PLCloudResource assetUUIDToCloudResourcesForCloudMaster:v6];
  v8 = [v4 uuid];
  v9 = [v7 objectForKeyedSubscript:v8];

  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v10 = v9;
  v11 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v34;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v34 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = [a1 validatedExternalResourceFromCloudResource:*(*(&v33 + 1) + 8 * i) asset:v4];
        if (v15)
        {
          [v5 addObject:v15];
        }
      }

      v12 = [v10 countByEnumeratingWithState:&v33 objects:v38 count:16];
    }

    while (v12);
  }

  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v16 = [v4 resources];
  v17 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
  if (v17)
  {
    v18 = v17;
    v19 = *v30;
    do
    {
      for (j = 0; j != v18; ++j)
      {
        if (*v30 != v19)
        {
          objc_enumerationMutation(v16);
        }

        v21 = [a1 validatedExternalResourceFromCloudResource:*(*(&v29 + 1) + 8 * j) asset:v4];
        if (v21)
        {
          [v5 addObject:v21];
        }
      }

      v18 = [v16 countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v18);
  }

  if ([v4 hasUnrenderedAsyncAdjustments])
  {
    v22 = [PLResourceRecipe recipeFromID:65941];
    v23 = [v4 pathForAsyncAdjustedRenderPreviewImageFile];
    v24 = [v4 width];
    v25 = [v4 height];
    LOWORD(v28) = [v4 kind];
    v26 = [PLResourceInstaller generateValidatedExternalImageResourceOfType:0 forFilePath:v23 requireFileToBePresent:1 version:2 basedOnFullSizeWidth:v24 andHeight:v25 recipe:v22 assetKind:v28 error:0];

    if (v26)
    {
      [v5 addObject:v26];
    }
  }

  return v5;
}

+ (id)validatedExternalResourceFromCloudResource:(id)a3 asset:(id)a4
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
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:a1 file:@"PLCloudResource+Migration.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"cloudResource"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:a1 file:@"PLCloudResource+Migration.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

LABEL_3:
  if (+[PLResourceInstaller isValidCPLResourceTypeForPersistence:](PLResourceInstaller, "isValidCPLResourceTypeForPersistence:", [v7 type]))
  {
    v32 = [[PLValidatedExternalCloudResource alloc] initWithCloudResource:v7];
    v10 = [v7 asset];

    v11 = [v7 filePath];
    if (v11)
    {
      v12 = MEMORY[0x1E695DFF8];
      v13 = [v7 filePath];
      v31 = [v12 fileURLWithPath:v13 isDirectory:0];
    }

    else
    {
      v31 = 0;
    }

    v30 = v10 != 0;

    v29 = [v7 type];
    v28 = [v9 kind];
    v15 = [v7 uniformTypeIdentifier];
    v27 = [v7 width];
    v16 = [v7 height];
    v17 = [v7 fingerprint];
    v18 = [v7 fileSize];
    v19 = [v7 isAvailable];
    v20 = [v9 master];
    v21 = [v9 managedObjectContext];
    LOBYTE(v26) = 1;
    BYTE1(v25) = v30;
    LOBYTE(v25) = v19;
    v14 = [PLResourceInstaller validatedExternalResourceFromExternalResourceCloudAttributes:v32 cplType:v29 assetType:v28 uti:v15 resourceWidth:v27 resourceHeight:v16 resourceFingerprint:v17 resourceStableHash:0 resourceSize:v18 isAvailable:v25 fromAdjustedSet:v31 resourceURL:v20 cloudMaster:v26 isForMigration:v21 context:?];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)cloudResourcesForResourceType:(unint64_t)a3 forCloudMaster:(id)a4
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v7 = [v5 resources];
  v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 type] == a3)
        {
          [v6 addObject:v12];
        }
      }

      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return v6;
}

+ (id)assetUUIDToCloudResourcesForCloudMaster:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v15 = v3;
  v5 = [v3 resources];
  v6 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v17;
    v9 = MEMORY[0x1E6994D48];
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v12 = [v11 assetUuid];
        if (v12)
        {
          v13 = [v4 objectForKey:v12];
          if (!v13)
          {
            v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [v4 setObject:v13 forKey:v12];
          }

          [v13 addObject:v11];
        }

        else
        {
          if (*v9)
          {
            goto LABEL_14;
          }

          v13 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412290;
            v21 = v11;
            _os_log_impl(&dword_19BF1F000, v13, OS_LOG_TYPE_DEFAULT, "Found nil assetUUID for master resource %@", buf, 0xCu);
          }
        }

LABEL_14:
      }

      v7 = [v5 countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  return v4;
}

+ (id)cloudResourceForResourceType:(unint64_t)a3 forAssetUuid:(id)a4 forCloudMaster:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = a4;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = [a5 resources];
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    while (2)
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 type] == a3)
        {
          v14 = [v13 assetUuid];
          v15 = [v14 isEqualToString:v7];

          if (v15)
          {
            v16 = v13;
            goto LABEL_12;
          }
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
      if (v10)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_12:

  return v16;
}

+ (BOOL)legacyCreateNewResourcesIn:(id)a3 inManagedObjectContext:(id)a4 forAsset:(id)a5
{
  v69 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v54 = a4;
  v8 = a5;
  v9 = [v7 resources];
  v52 = [v8 uuid];
  if (v9)
  {
    v10 = [v9 anyObject];
    v11 = [v10 assetUuid];

    if (v11)
    {
      v12 = [a1 assetUUIDToCloudResourcesForCloudMaster:v7];
      v13 = [v12 objectForKey:v52];

      if (v13)
      {
        if (*MEMORY[0x1E6994D48])
        {
LABEL_37:

          v15 = 1;
          goto LABEL_40;
        }

        v14 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 138412290;
          v65 = a1;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Already have master resources for asset %@", buf, 0xCu);
        }
      }

      else
      {
        v48 = v10;
        v50 = v9;
        v28 = [v12 allKeys];
        v29 = [v28 firstObject];

        v45 = v29;
        v46 = v12;
        v30 = [v12 objectForKey:v29];
        v31 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v30, "count")}];
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v32 = v30;
        v33 = [v32 countByEnumeratingWithState:&v55 objects:v63 count:16];
        if (v33)
        {
          v34 = v33;
          v35 = *v56;
          do
          {
            for (i = 0; i != v34; ++i)
            {
              if (*v56 != v35)
              {
                objc_enumerationMutation(v32);
              }

              v37 = *(*(&v55 + 1) + 8 * i);
              v38 = [v37 type];
              v39 = [v37 uniformTypeIdentifier];
              v40 = [v8 localResourcePathForMasterResourceWithCPLType:v38 andUTI:v39];

              v41 = [PLCloudResource duplicateCloudResource:v37 forAsset:v8 withFilePath:v40 inManagedObjectContext:v54];
              [a1 _copyResourceFileFrom:v37 to:v41];
              [v31 addObject:v41];
            }

            v34 = [v32 countByEnumeratingWithState:&v55 objects:v63 count:16];
          }

          while (v34);
        }

        v42 = [v7 resources];
        v43 = [v42 mutableCopy];

        [v43 addObjectsFromArray:v31];
        [v7 setResources:v43];

        v10 = v48;
        v9 = v50;
        v14 = v45;
        v12 = v46;
      }

      goto LABEL_37;
    }

    v47 = v10;
    v49 = v9;
    v51 = v7;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v16 = v9;
    v17 = [v16 countByEnumeratingWithState:&v59 objects:v68 count:16];
    if (!v17)
    {
      v15 = 1;
      goto LABEL_39;
    }

    v18 = v17;
    v19 = *v60;
    v15 = 1;
    v20 = MEMORY[0x1E6994D48];
LABEL_13:
    v21 = 0;
    while (1)
    {
      if (*v60 != v19)
      {
        objc_enumerationMutation(v16);
      }

      v22 = *(*(&v59 + 1) + 8 * v21);
      v23 = [v22 assetUuid];

      if (v23)
      {
        if (*v20)
        {
          v15 = 0;
          goto LABEL_23;
        }

        v24 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412546;
          v65 = v22;
          v66 = 2112;
          v67 = v16;
          _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Found cloudResource %@ with unexpected non-nil assetUuid. masterResources: %@", buf, 0x16u);
        }

        v15 = 0;
      }

      else
      {
        [v22 setAssetUuid:v52];
        v25 = [v22 type];
        v26 = [v22 uniformTypeIdentifier];
        v24 = [v8 localResourcePathForMasterResourceWithCPLType:v25 andUTI:v26];

        [v22 setFilePath:v24];
      }

LABEL_23:
      if (v18 == ++v21)
      {
        v27 = [v16 countByEnumeratingWithState:&v59 objects:v68 count:16];
        v18 = v27;
        if (!v27)
        {
LABEL_39:

          v9 = v49;
          v7 = v51;
          v10 = v47;
          goto LABEL_40;
        }

        goto LABEL_13;
      }
    }
  }

  if (*MEMORY[0x1E6994D48])
  {
    v15 = 0;
  }

  else
  {
    v10 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v65 = v7;
      v66 = 2112;
      v67 = a1;
      _os_log_impl(&dword_19BF1F000, v10, OS_LOG_TYPE_ERROR, "No resources for cloudMaster %@, unable to create master resources for asset %@", buf, 0x16u);
    }

    v15 = 0;
LABEL_40:
  }

  return v15 & 1;
}

+ (void)_copyResourceFileFrom:(id)a3 to:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v7 = [MEMORY[0x1E696AC08] defaultManager];
  v8 = [v6 filePath];
  v9 = [v5 filePath];
  if (!v9)
  {
LABEL_8:
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v11 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = v5;
        v23 = 2112;
        v24 = v6;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Missing file path for duplicated resources, skip copying from %@ to %@", buf, 0x16u);
      }

      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if ([v7 fileExistsAtPath:v9])
  {
    v10 = v8 == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (v8)
    {
      goto LABEL_28;
    }

    goto LABEL_8;
  }

  if (([v7 fileExistsAtPath:v8] & 1) == 0)
  {
    v12 = [v8 stringByDeletingLastPathComponent];
    v20 = 0;
    v13 = [v7 createDirectoryIfNeededAtPath:v12 error:&v20];
    v14 = v20;
    v11 = v14;
    if (v13)
    {
      v19 = v14;
      v15 = [v7 copyItemAtPath:v9 toPath:v8 error:&v19];
      v16 = v19;

      if (v15)
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v17 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v22 = v5;
            v23 = 2112;
            v24 = v6;
            _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Copied duplicated resource file from %@ to %@", buf, 0x16u);
          }
        }

        [v6 setIsLocallyAvailable:1];
        if ([v6 type]!= 1)
        {
          goto LABEL_25;
        }

        v18 = [v6 asset];
        [v18 persistMetadataToFilesystem];
      }

      else
      {
        if (*MEMORY[0x1E6994D48])
        {
          goto LABEL_25;
        }

        v18 = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v22 = v9;
          v23 = 2112;
          v24 = v8;
          v25 = 2112;
          v26 = v16;
          _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to copy master resource file from %@ to duplicated asset %@. Error: %@", buf, 0x20u);
        }
      }
    }

    else
    {
      if (*MEMORY[0x1E6994D48])
      {
LABEL_26:

LABEL_27:
        goto LABEL_28;
      }

      v18 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = v12;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_19BF1F000, v18, OS_LOG_TYPE_ERROR, "Failed to create directory for resource file at %@. Error: %@", buf, 0x16u);
      }

      v16 = v11;
    }

LABEL_25:
    v11 = v16;
    goto LABEL_26;
  }

LABEL_28:
}

+ (id)legacyCloudResourceForResourceType:(unint64_t)a3 forAsset:(id)a4
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a4 resources];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    while (2)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 type] == a3)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
      if (v7)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  return v11;
}

- (void)prepareForDeletion
{
  v2.receiver = self;
  v2.super_class = PLCloudResource;
  [(PLCloudResource *)&v2 prepareForDeletion];
}

- (void)setPrunedAt:(id)a3
{
  v4 = a3;
  [(PLCloudResource *)self willChangeValueForKey:@"prunedAt"];
  [(PLCloudResource *)self setPrimitiveValue:v4 forKey:@"prunedAt"];

  [(PLCloudResource *)self didChangeValueForKey:@"prunedAt"];
}

- (void)setPrefetchCount:(signed __int16)a3
{
  v3 = a3;
  [(PLCloudResource *)self willChangeValueForKey:@"prefetchCount"];
  v5 = [MEMORY[0x1E696AD98] numberWithShort:v3];
  [(PLCloudResource *)self setPrimitiveValue:v5 forKey:@"prefetchCount"];

  [(PLCloudResource *)self didChangeValueForKey:@"prefetchCount"];
}

- (void)setLastPrefetchDate:(id)a3
{
  v4 = a3;
  [(PLCloudResource *)self willChangeValueForKey:@"lastPrefetchDate"];
  [(PLCloudResource *)self setPrimitiveValue:v4 forKey:@"lastPrefetchDate"];

  [(PLCloudResource *)self didChangeValueForKey:@"lastPrefetchDate"];
}

- (void)setIsLocallyAvailable:(BOOL)a3
{
  v3 = a3;
  [(PLCloudResource *)self willAccessValueForKey:@"isLocallyAvailable"];
  v5 = [(PLCloudResource *)self primitiveValueForKey:@"isLocallyAvailable"];
  v6 = [v5 BOOLValue];

  [(PLCloudResource *)self didAccessValueForKey:@"isLocallyAvailable"];
  if (v6 != v3)
  {
    [(PLCloudResource *)self willChangeValueForKey:@"isLocallyAvailable"];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:v3];
    [(PLCloudResource *)self setPrimitiveValue:v7 forKey:@"isLocallyAvailable"];

    [(PLCloudResource *)self didChangeValueForKey:@"isLocallyAvailable"];
  }
}

- (id)cplResourceIncludeFile:(BOOL)a3
{
  v3 = a3;
  v27 = *MEMORY[0x1E69E9840];
  v5 = [(PLCloudResource *)self filePath];
  v6 = v5;
  v7 = 0;
  if (v3)
  {
    if (v5)
    {
      v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:v5 isDirectory:0];
      v7 = v8;
      if (v8)
      {
        v9 = [v8 URLByDeletingLastPathComponent];
        v10 = [v9 path];

        v11 = [MEMORY[0x1E696AC08] defaultManager];
        v22 = 0;
        v12 = [v11 createDirectoryIfNeededAtPath:v10 error:&v22];
        v13 = v22;

        if ((v12 & 1) == 0 && (*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v14 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v24 = self;
            v25 = 2112;
            v26 = v13;
            _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Unable to create directory for cloudResource %@: %@.", buf, 0x16u);
          }
        }
      }
    }
  }

  v15 = [(PLCloudResource *)self fingerprint];

  if (v15)
  {
    v16 = [objc_alloc(MEMORY[0x1E6994B98]) initWithFileURL:v7];
    [v16 setFileSize:[(PLCloudResource *)self fileSize]];
    [v16 setImageDimensions:[(PLCloudResource *)self width], [(PLCloudResource *)self height]];
    [v16 setAvailable:[(PLCloudResource *)self isAvailable]];
    v17 = [(PLCloudResource *)self uniformTypeIdentifier];
    [v16 setFileUTI:v17];

    v18 = [(PLCloudResource *)self fingerprint];
    [v16 setFingerPrint:v18];

    v19 = [(PLCloudResource *)self scopedIdentifier];
    v20 = [objc_alloc(MEMORY[0x1E6994B90]) initWithResourceIdentity:v16 itemScopedIdentifier:v19 resourceType:{-[PLCloudResource type](self, "type")}];

LABEL_16:
    goto LABEL_17;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v16 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = self;
      _os_log_impl(&dword_19BF1F000, v16, OS_LOG_TYPE_ERROR, "Resource %@ has no finger print", buf, 0xCu);
    }

    v20 = 0;
    goto LABEL_16;
  }

  v20 = 0;
LABEL_17:

  return v20;
}

- (CPLScopedIdentifier)scopedIdentifier
{
  v3 = [(PLCloudResource *)self cloudMaster];
  v4 = [(PLCloudResource *)self asset];
  v5 = v3;
  if (v3 || (v5 = v4) != 0)
  {
    v6 = [v5 scopedIdentifier];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)_duplicatePropertiesFromCloudResource:(id)a3 withFilePath:(id)a4 forAssetUuid:(id)a5
{
  v22 = a3;
  v8 = a4;
  [(PLCloudResource *)self setAssetUuid:a5];
  [(PLCloudResource *)self setFilePath:v8];
  -[PLCloudResource setFileSize:](self, "setFileSize:", [v22 fileSize]);
  v9 = [v22 fingerprint];
  [(PLCloudResource *)self setFingerprint:v9];

  -[PLCloudResource setHeight:](self, "setHeight:", [v22 height]);
  -[PLCloudResource setIsAvailable:](self, "setIsAvailable:", [v22 isAvailable]);
  -[PLCloudResource setType:](self, "setType:", [v22 type]);
  v10 = [v22 uniformTypeIdentifier];
  [(PLCloudResource *)self setUniformTypeIdentifier:v10];

  -[PLCloudResource setWidth:](self, "setWidth:", [v22 width]);
  v11 = [v22 prunedAt];
  [(PLCloudResource *)self setPrunedAt:v11];

  v12 = [v22 lastOnDemandDownloadDate];
  [(PLCloudResource *)self setLastOnDemandDownloadDate:v12];

  v13 = [v22 itemIdentifier];
  [(PLCloudResource *)self setItemIdentifier:v13];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    v17 = v22;
    if ([v17 isCPLAssetResource])
    {
      v18 = [v17 asset];
      [(PLCloudResource *)self setAsset:v18];
    }

    else
    {
      if (![v17 isCPLMasterResource])
      {
LABEL_9:
        v20 = [v17 cloudMasterDateCreated];
        [(PLCloudResource *)self setDateCreated:v20];

        goto LABEL_10;
      }

      v18 = [v17 asset];
      v19 = [v18 master];
      [(PLCloudResource *)self setCloudMaster:v19];
    }

    goto LABEL_9;
  }

  v14 = v22;
  v15 = [v14 asset];
  [(PLCloudResource *)self setAsset:v15];

  v16 = [v14 cloudMaster];
  [(PLCloudResource *)self setCloudMaster:v16];

  v17 = [v14 dateCreated];

  [(PLCloudResource *)self setDateCreated:v17];
LABEL_10:

LABEL_11:
  v21 = [MEMORY[0x1E696AC08] defaultManager];
  -[PLCloudResource setIsLocallyAvailable:](self, "setIsLocallyAvailable:", [v21 fileExistsAtPath:v8]);
}

- (void)applyPropertiesFromCloudResource:(id)a3
{
  v4 = a3;
  v5 = [v4 resourceType];
  v13 = [v4 identity];
  -[PLCloudResource setFileSize:](self, "setFileSize:", [v13 fileSize]);
  [v13 imageDimensions];
  v7 = v6;
  [(PLCloudResource *)self setWidth:v8];
  [(PLCloudResource *)self setHeight:v7];
  [(PLCloudResource *)self setType:v5];
  -[PLCloudResource setIsAvailable:](self, "setIsAvailable:", [v13 isAvailable]);
  v9 = [v13 fileUTI];
  [(PLCloudResource *)self setUniformTypeIdentifier:v9];

  v10 = [v13 fingerPrint];
  [(PLCloudResource *)self setFingerprint:v10];

  v11 = [v4 itemScopedIdentifier];

  v12 = [v11 identifier];
  [(PLCloudResource *)self setItemIdentifier:v12];
}

- (id)description
{
  v41 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E6994B90] descriptionForResourceType:{-[PLCloudResource type](self, "type")}];
  v4 = [(PLCloudResource *)self filePath];
  v40 = [(PLCloudResource *)self fileSize];
  v5 = [(PLCloudResource *)self height];
  v6 = [(PLCloudResource *)self width];
  v7 = [(PLCloudResource *)self fingerprint];
  v8 = [(PLCloudResource *)self assetUuid];
  v9 = @"NO";
  if ([(PLCloudResource *)self isAvailable])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  if ([(PLCloudResource *)self isLocallyAvailable])
  {
    v9 = @"YES";
  }

  v11 = [v41 stringWithFormat:@"%@\n\t%@, size: %llu, height: %lld, width: %lld, fingerprint: %@, assetUUID: %@, isAvailable: %@, isLocallyAvailable: %@ cloudLocalState: %d", v3, v4, v40, v5, v6, v7, v8, v10, v9, -[PLCloudResource cloudLocalState](self, "cloudLocalState")];

  v12 = [MEMORY[0x1E696AC08] defaultManager];
  v13 = [(PLCloudResource *)self filePath];
  v14 = [v12 fileExistsAtPath:v13];

  if (v14 != [(PLCloudResource *)self isLocallyAvailable])
  {
    v15 = @"NO";
    if (v14)
    {
      v15 = @"YES";
    }

    v16 = [v11 stringByAppendingFormat:@", isReallyLocallyAvailable %@", v15];

    v11 = v16;
  }

  v17 = [(PLCloudResource *)self uniformTypeIdentifier];
  v18 = [v11 stringByAppendingFormat:@", UTI: %@", v17];

  v19 = [(PLCloudResource *)self assetUuid];
  v20 = [(PLCloudResource *)self managedObjectContext];
  v21 = [PLManagedAsset assetWithUUID:v19 inManagedObjectContext:v20];

  if ([v21 isVideo])
  {
    v22 = MEMORY[0x1E695DFF8];
    v23 = [(PLCloudResource *)self filePath];
    v24 = [v22 fileURLWithPath:v23 isDirectory:0];

    v25 = [MEMORY[0x1E6987E28] assetWithURL:v24];
    v26 = v25;
    if (v25)
    {
      v27 = [v25 plVideoCodecName];
      v28 = v27;
      if (v27)
      {
        v29 = [v18 stringByAppendingFormat:@", Codec: %@", v27];

        v18 = v29;
      }
    }
  }

  v30 = [(PLCloudResource *)self lastOnDemandDownloadDate];

  if (v30)
  {
    v31 = [(PLCloudResource *)self lastOnDemandDownloadDate];
    v32 = [v18 stringByAppendingFormat:@", OnDemand DL date: %@", v31];

    v18 = v32;
  }

  v33 = [(PLCloudResource *)self prunedAt];

  if (v33)
  {
    v34 = [(PLCloudResource *)self prunedAt];
    v35 = [v18 stringByAppendingFormat:@", Prune date: %@", v34];

    v18 = v35;
  }

  v36 = [(PLCloudResource *)self lastPrefetchDate];

  if (v36)
  {
    v37 = [(PLCloudResource *)self lastPrefetchDate];
    v38 = [v18 stringByAppendingFormat:@", Prefetch date: %@ (%d)", v37, -[PLCloudResource prefetchCount](self, "prefetchCount")];

    v18 = v38;
  }

  return v18;
}

+ (BOOL)_countOfLocalCloudResourcesOfType:(unint64_t)a3 inManagedObjectContext:(id)a4 forMediumSized:(BOOL)a5 localCount:(unint64_t *)a6 unavailableCount:(unint64_t *)a7 error:(id *)a8
{
  v65[4] = *MEMORY[0x1E69E9840];
  v54 = a4;
  v53 = +[PLCloudResource entityName];
  v11 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:?];
  [MEMORY[0x1E6994B90] derivativeGenerationThreshold];
  v13 = (v12 * [MEMORY[0x1E6994B90] maxPixelSizeForResourceType:4]);
  v14 = MEMORY[0x1E696AE18];
  v15 = [*MEMORY[0x1E6982E58] identifier];
  v65[0] = v15;
  v65[1] = @"public.heic";
  v65[2] = @"public.heif";
  v65[3] = @"public.avci";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:4];
  v17 = [v14 predicateWithFormat:@"width * height <= %d AND uniformTypeIdentifier IN %@", v13, v16];

  v18 = [MEMORY[0x1E696AE18] predicateWithFormat:@"isAvailable == YES AND type = %d", a3];
  v19 = v18;
  v52 = v17;
  if (a5)
  {
    v20 = MEMORY[0x1E696AB28];
    v64[0] = v18;
    v64[1] = v17;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
    v22 = [v20 andPredicateWithSubpredicates:v21];
    [v11 setPredicate:v22];
  }

  else
  {
    [v11 setPredicate:v18];
  }

  v23 = v11;
  [v11 setResultType:2];
  v24 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v24 setName:@"count"];
  v25 = MEMORY[0x1E696ABC8];
  v26 = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
  v63 = v26;
  v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v63 count:1];
  v28 = [v25 expressionForFunction:@"count:" arguments:v27];

  [v24 setExpression:v28];
  [v24 setExpressionResultType:200];
  v62[0] = @"isLocallyAvailable";
  v62[1] = v24;
  v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v62 count:2];
  [v23 setPropertiesToFetch:v29];

  [v23 setPropertiesToGroupBy:&unk_1F0FBFA48];
  v60 = 0;
  v30 = v54;
  v31 = [v54 executeFetchRequest:v23 error:&v60];
  v32 = v60;
  v33 = v32;
  if (v31)
  {
    if (a6)
    {
      *a6 = 0;
    }

    v46 = v32;
    v48 = v28;
    v49 = v24;
    v51 = v23;
    if (a7)
    {
      *a7 = 0;
    }

    v58 = 0u;
    v59 = 0u;
    v56 = 0u;
    v57 = 0u;
    v47 = v31;
    v34 = v31;
    v35 = [v34 countByEnumeratingWithState:&v56 objects:v61 count:16];
    if (v35)
    {
      v36 = v35;
      v37 = *v57;
      do
      {
        for (i = 0; i != v36; ++i)
        {
          if (*v57 != v37)
          {
            objc_enumerationMutation(v34);
          }

          v39 = *(*(&v56 + 1) + 8 * i);
          v40 = [v39 objectForKeyedSubscript:@"count"];
          v41 = [v40 unsignedIntegerValue];

          v42 = [v39 objectForKeyedSubscript:@"isLocallyAvailable"];
          LODWORD(v40) = [v42 BOOLValue];

          v43 = a7;
          if (v40)
          {
            v43 = a6;
          }

          if (v43)
          {
            *v43 = v41;
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v36);
    }

    v30 = v54;
    v23 = v51;
    v28 = v48;
    v24 = v49;
    v33 = v46;
    v31 = v47;
  }

  else if (a8)
  {
    v44 = v32;
    *a8 = v33;
  }

  return v31 != 0;
}

+ (unint64_t)bytesForAllResourcesInLibrary:(id)a3
{
  v5 = a3;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__PLCloudResource_bytesForAllResourcesInLibrary___block_invoke;
  v9[3] = &unk_1E7576590;
  v12 = a1;
  v6 = v5;
  v10 = v6;
  v11 = &v14;
  v13 = a2;
  [v6 performTransactionAndWait:v9];
  v7 = v15[3];

  _Block_object_dispose(&v14, 8);
  return v7;
}

void __49__PLCloudResource_bytesForAllResourcesInLibrary___block_invoke(uint64_t a1)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [*(a1 + 48) entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v5 setName:@"totalResourceSize"];
  v6 = [MEMORY[0x1E696ABC8] expressionWithFormat:@"@sum.fileSize"];
  [v5 setExpression:v6];

  [v5 setExpressionResultType:300];
  v30[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v30 count:1];
  [v4 setPropertiesToFetch:v7];

  [v4 setResultType:2];
  v8 = [*(a1 + 32) managedObjectContext];
  v24 = 0;
  v9 = [v8 executeFetchRequest:v4 error:&v24];
  v10 = v24;
  if (v9)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v11 = v9;
    v12 = [v11 countByEnumeratingWithState:&v20 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v18 = v10;
      v19 = v8;
      v14 = *v21;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = [*(*(&v20 + 1) + 8 * i) objectForKeyedSubscript:{@"totalResourceSize", v18, v19, v20}];
          *(*(*(a1 + 40) + 8) + 24) += [v16 longLongValue];
        }

        v13 = [v11 countByEnumeratingWithState:&v20 objects:v29 count:16];
      }

      while (v13);
      v10 = v18;
      v8 = v19;
    }

LABEL_13:

    goto LABEL_14;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v11 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      v17 = NSStringFromSelector(*(a1 + 56));
      *buf = 138412546;
      v26 = v17;
      v27 = 2112;
      v28 = v10;
      _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "%@ failed to calculate totalResourceSize %@", buf, 0x16u);
    }

    goto LABEL_13;
  }

LABEL_14:
}

+ (void)resetPrefetchStateForResourcesWithResourceType:(int64_t)a3 itemIdentifiers:(id)a4 inLibrary:(id)a5
{
  v8 = a4;
  v9 = a5;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __92__PLCloudResource_resetPrefetchStateForResourcesWithResourceType_itemIdentifiers_inLibrary___block_invoke;
  v12[3] = &unk_1E7576400;
  v15 = a1;
  v16 = a3;
  v13 = v8;
  v14 = v9;
  v10 = v9;
  v11 = v8;
  [v10 performTransactionAndWait:v12];
}

void __92__PLCloudResource_resetPrefetchStateForResourcesWithResourceType_itemIdentifiers_inLibrary___block_invoke(uint64_t a1)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E695D5E0];
  v3 = [*(a1 + 48) entityName];
  v4 = [v2 fetchRequestWithEntityName:v3];

  v5 = [MEMORY[0x1E696AE18] predicateWithFormat:@"itemIdentifier IN %@ AND type = %d", *(a1 + 32), *(a1 + 56)];
  [v4 setPredicate:v5];
  [v4 setFetchBatchSize:100];
  v6 = [*(a1 + 40) managedObjectContext];
  v25 = 0;
  v7 = [v6 executeFetchRequest:v4 error:&v25];
  v8 = v25;
  if (v7)
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v9 = v7;
    v10 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
    if (v10)
    {
      v11 = v10;
      v19 = v8;
      v20 = v6;
      v12 = *v22;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v22 != v12)
          {
            objc_enumerationMutation(v9);
          }

          v14 = *(*(&v21 + 1) + 8 * i);
          v15 = objc_autoreleasePoolPush();
          [v14 setPrefetchCount:0];
          v16 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:0.0];
          [v14 setLastPrefetchDate:v16];

          objc_autoreleasePoolPop(v15);
        }

        v11 = [v9 countByEnumeratingWithState:&v21 objects:v26 count:16];
      }

      while (v11);
      v6 = v20;
      v8 = v19;
    }

LABEL_13:

    goto LABEL_14;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v9 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v17 = *(a1 + 32);
      v18 = *(a1 + 56);
      *buf = 138412802;
      v28 = v17;
      v29 = 2048;
      v30 = v18;
      v31 = 2112;
      v32 = v8;
      _os_log_impl(&dword_19BF1F000, v9, OS_LOG_TYPE_ERROR, "Error fetching Cloud Resources for %@/%ld: %@", buf, 0x20u);
    }

    goto LABEL_13;
  }

LABEL_14:
}

+ (id)nonLocalResourcesInManagedObjectContext:(id)a3 forAssetUUIDs:(id)a4 cplResourceTypes:(id)a5
{
  v22[3] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E695D5E0];
  v9 = a5;
  v10 = a4;
  v11 = a3;
  v12 = [a1 entityName];
  v13 = [v8 fetchRequestWithEntityName:v12];

  v14 = [MEMORY[0x1E696AE18] predicateWithFormat:@"assetUuid in %@", v10];

  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex(isLocallyAvailable) == NO"];
  v16 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex(type) in %@", v9];

  v17 = MEMORY[0x1E696AB28];
  v22[0] = v14;
  v22[1] = v15;
  v22[2] = v16;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v19 = [v17 andPredicateWithSubpredicates:v18];
  [v13 setPredicate:v19];

  v20 = [v11 executeFetchRequest:v13 error:0];

  return v20;
}

+ (id)duplicateCloudResource:(id)a3 forAsset:(id)a4 withFilePath:(id)a5 inManagedObjectContext:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (v14)
  {
    if (v11)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:a1 file:@"PLCloudResource.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"moc"}];

    if (v11)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:a1 file:@"PLCloudResource.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"resource"}];

LABEL_3:
  v15 = [a1 entityName];
  v16 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v15, v14, 0);

  v17 = [v12 uuid];
  [v16 _duplicatePropertiesFromCloudResource:v11 withFilePath:v13 forAssetUuid:v17];

  v18 = [v12 master];
  v19 = [v18 creationDate];
  [v16 setDateCreated:v19];

  return v16;
}

+ (id)insertIntoPhotoLibrary:(id)a3 forAsset:(id)a4 withCPLResource:(id)a5 adjusted:(BOOL)a6 withCreationDate:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (!v13)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:a1 file:@"PLCloudResource.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"library"}];

    if (v15)
    {
      goto LABEL_3;
    }

LABEL_13:
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:a1 file:@"PLCloudResource.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"cplResource"}];

    goto LABEL_3;
  }

  if (!v15)
  {
    goto LABEL_13;
  }

LABEL_3:
  v17 = [v13 managedObjectContext];
  v18 = [a1 entityName];
  v19 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(v18, v17, 0);

  [v19 applyPropertiesFromCloudResource:v15];
  v20 = [v14 uuid];
  [v19 setAssetUuid:v20];

  [v19 setDateCreated:v16];
  if (v14 && v19)
  {
    if (a6)
    {
      v21 = [v14 pathForCPLResourceType:objc_msgSend(v15 adjusted:{"resourceType"), 1}];
    }

    else
    {
      v22 = [v19 type];
      v23 = [v19 uniformTypeIdentifier];
      v21 = [v14 localResourcePathForMasterResourceWithCPLType:v22 andUTI:v23];
    }

    [v19 setFilePath:v21];
    v24 = [MEMORY[0x1E696AC08] defaultManager];
    v25 = [v24 fileExistsAtPath:v21 isDirectory:0];

    [v19 setIsLocallyAvailable:v25];
  }

  return v19;
}

@end