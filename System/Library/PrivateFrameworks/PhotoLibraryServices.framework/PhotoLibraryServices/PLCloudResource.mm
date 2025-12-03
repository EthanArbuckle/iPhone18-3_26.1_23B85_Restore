@interface PLCloudResource
+ (BOOL)_countOfLocalCloudResourcesOfType:(unint64_t)type inManagedObjectContext:(id)context forMediumSized:(BOOL)sized localCount:(unint64_t *)count unavailableCount:(unint64_t *)unavailableCount error:(id *)error;
+ (BOOL)legacyCreateNewResourcesIn:(id)in inManagedObjectContext:(id)context forAsset:(id)asset;
+ (id)assetUUIDToCloudResourcesForCloudMaster:(id)master;
+ (id)cloudResourceForResourceType:(unint64_t)type forAssetUuid:(id)uuid forCloudMaster:(id)master;
+ (id)cloudResourcesForResourceType:(unint64_t)type forCloudMaster:(id)master;
+ (id)duplicateCloudResource:(id)resource forAsset:(id)asset withFilePath:(id)path inManagedObjectContext:(id)context;
+ (id)insertIntoPhotoLibrary:(id)library forAsset:(id)asset withCPLResource:(id)resource adjusted:(BOOL)adjusted withCreationDate:(id)date;
+ (id)legacyCloudResourceForResourceType:(unint64_t)type forAsset:(id)asset;
+ (id)nonLocalResourcesInManagedObjectContext:(id)context forAssetUUIDs:(id)ds cplResourceTypes:(id)types;
+ (id)validatedExternalResourceFromCloudResource:(id)resource asset:(id)asset;
+ (id)validatedExternalResourcesUsingLegacyCloudResourcesFromAssetWithCloudMaster:(id)master;
+ (unint64_t)bytesForAllResourcesInLibrary:(id)library;
+ (void)_copyResourceFileFrom:(id)from to:(id)to;
+ (void)resetPrefetchStateForResourcesWithResourceType:(int64_t)type itemIdentifiers:(id)identifiers inLibrary:(id)library;
- (CPLScopedIdentifier)scopedIdentifier;
- (id)cplResourceIncludeFile:(BOOL)file;
- (id)description;
- (void)_duplicatePropertiesFromCloudResource:(id)resource withFilePath:(id)path forAssetUuid:(id)uuid;
- (void)applyPropertiesFromCloudResource:(id)resource;
- (void)prepareForDeletion;
- (void)setIsLocallyAvailable:(BOOL)available;
- (void)setLastPrefetchDate:(id)date;
- (void)setPrefetchCount:(signed __int16)count;
- (void)setPrunedAt:(id)at;
@end

@implementation PLCloudResource

+ (id)validatedExternalResourcesUsingLegacyCloudResourcesFromAssetWithCloudMaster:(id)master
{
  v39 = *MEMORY[0x1E69E9840];
  masterCopy = master;
  array = [MEMORY[0x1E695DF70] array];
  master = [masterCopy master];
  v7 = [PLCloudResource assetUUIDToCloudResourcesForCloudMaster:master];
  uuid = [masterCopy uuid];
  v9 = [v7 objectForKeyedSubscript:uuid];

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

        v15 = [self validatedExternalResourceFromCloudResource:*(*(&v33 + 1) + 8 * i) asset:masterCopy];
        if (v15)
        {
          [array addObject:v15];
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
  resources = [masterCopy resources];
  v17 = [resources countByEnumeratingWithState:&v29 objects:v37 count:16];
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
          objc_enumerationMutation(resources);
        }

        v21 = [self validatedExternalResourceFromCloudResource:*(*(&v29 + 1) + 8 * j) asset:masterCopy];
        if (v21)
        {
          [array addObject:v21];
        }
      }

      v18 = [resources countByEnumeratingWithState:&v29 objects:v37 count:16];
    }

    while (v18);
  }

  if ([masterCopy hasUnrenderedAsyncAdjustments])
  {
    v22 = [PLResourceRecipe recipeFromID:65941];
    pathForAsyncAdjustedRenderPreviewImageFile = [masterCopy pathForAsyncAdjustedRenderPreviewImageFile];
    width = [masterCopy width];
    height = [masterCopy height];
    LOWORD(v28) = [masterCopy kind];
    v26 = [PLResourceInstaller generateValidatedExternalImageResourceOfType:0 forFilePath:pathForAsyncAdjustedRenderPreviewImageFile requireFileToBePresent:1 version:2 basedOnFullSizeWidth:width andHeight:height recipe:v22 assetKind:v28 error:0];

    if (v26)
    {
      [array addObject:v26];
    }
  }

  return array;
}

+ (id)validatedExternalResourceFromCloudResource:(id)resource asset:(id)asset
{
  resourceCopy = resource;
  assetCopy = asset;
  v9 = assetCopy;
  if (resourceCopy)
  {
    if (assetCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCloudResource+Migration.m" lineNumber:154 description:{@"Invalid parameter not satisfying: %@", @"cloudResource"}];

    if (v9)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLCloudResource+Migration.m" lineNumber:155 description:{@"Invalid parameter not satisfying: %@", @"asset"}];

LABEL_3:
  if (+[PLResourceInstaller isValidCPLResourceTypeForPersistence:](PLResourceInstaller, "isValidCPLResourceTypeForPersistence:", [resourceCopy type]))
  {
    v32 = [[PLValidatedExternalCloudResource alloc] initWithCloudResource:resourceCopy];
    asset = [resourceCopy asset];

    filePath = [resourceCopy filePath];
    if (filePath)
    {
      v12 = MEMORY[0x1E695DFF8];
      filePath2 = [resourceCopy filePath];
      v31 = [v12 fileURLWithPath:filePath2 isDirectory:0];
    }

    else
    {
      v31 = 0;
    }

    v30 = asset != 0;

    type = [resourceCopy type];
    kind = [v9 kind];
    uniformTypeIdentifier = [resourceCopy uniformTypeIdentifier];
    width = [resourceCopy width];
    height = [resourceCopy height];
    fingerprint = [resourceCopy fingerprint];
    fileSize = [resourceCopy fileSize];
    isAvailable = [resourceCopy isAvailable];
    master = [v9 master];
    managedObjectContext = [v9 managedObjectContext];
    LOBYTE(v26) = 1;
    BYTE1(v25) = v30;
    LOBYTE(v25) = isAvailable;
    v14 = [PLResourceInstaller validatedExternalResourceFromExternalResourceCloudAttributes:v32 cplType:type assetType:kind uti:uniformTypeIdentifier resourceWidth:width resourceHeight:height resourceFingerprint:fingerprint resourceStableHash:0 resourceSize:fileSize isAvailable:v25 fromAdjustedSet:v31 resourceURL:master cloudMaster:v26 isForMigration:managedObjectContext context:?];
  }

  else
  {
    v14 = 0;
  }

  return v14;
}

+ (id)cloudResourcesForResourceType:(unint64_t)type forCloudMaster:(id)master
{
  v19 = *MEMORY[0x1E69E9840];
  masterCopy = master;
  array = [MEMORY[0x1E695DF70] array];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  resources = [masterCopy resources];
  v8 = [resources countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(resources);
        }

        v12 = *(*(&v14 + 1) + 8 * i);
        if ([v12 type] == type)
        {
          [array addObject:v12];
        }
      }

      v9 = [resources countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  return array;
}

+ (id)assetUUIDToCloudResourcesForCloudMaster:(id)master
{
  v23 = *MEMORY[0x1E69E9840];
  masterCopy = master;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v15 = masterCopy;
  resources = [masterCopy resources];
  v6 = [resources countByEnumeratingWithState:&v16 objects:v22 count:16];
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
          objc_enumerationMutation(resources);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        assetUuid = [v11 assetUuid];
        if (assetUuid)
        {
          v13 = [dictionary objectForKey:assetUuid];
          if (!v13)
          {
            v13 = objc_alloc_init(MEMORY[0x1E695DF70]);
            [dictionary setObject:v13 forKey:assetUuid];
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

      v7 = [resources countByEnumeratingWithState:&v16 objects:v22 count:16];
    }

    while (v7);
  }

  return dictionary;
}

+ (id)cloudResourceForResourceType:(unint64_t)type forAssetUuid:(id)uuid forCloudMaster:(id)master
{
  v23 = *MEMORY[0x1E69E9840];
  uuidCopy = uuid;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  resources = [master resources];
  v9 = [resources countByEnumeratingWithState:&v18 objects:v22 count:16];
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
          objc_enumerationMutation(resources);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        if ([v13 type] == type)
        {
          assetUuid = [v13 assetUuid];
          v15 = [assetUuid isEqualToString:uuidCopy];

          if (v15)
          {
            v16 = v13;
            goto LABEL_12;
          }
        }
      }

      v10 = [resources countByEnumeratingWithState:&v18 objects:v22 count:16];
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

+ (BOOL)legacyCreateNewResourcesIn:(id)in inManagedObjectContext:(id)context forAsset:(id)asset
{
  v69 = *MEMORY[0x1E69E9840];
  inCopy = in;
  contextCopy = context;
  assetCopy = asset;
  resources = [inCopy resources];
  uuid = [assetCopy uuid];
  if (resources)
  {
    anyObject = [resources anyObject];
    assetUuid = [anyObject assetUuid];

    if (assetUuid)
    {
      v12 = [self assetUUIDToCloudResourcesForCloudMaster:inCopy];
      v13 = [v12 objectForKey:uuid];

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
          selfCopy = self;
          _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_DEFAULT, "Already have master resources for asset %@", buf, 0xCu);
        }
      }

      else
      {
        v48 = anyObject;
        v50 = resources;
        allKeys = [v12 allKeys];
        firstObject = [allKeys firstObject];

        v45 = firstObject;
        v46 = v12;
        v30 = [v12 objectForKey:firstObject];
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
              type = [v37 type];
              uniformTypeIdentifier = [v37 uniformTypeIdentifier];
              v40 = [assetCopy localResourcePathForMasterResourceWithCPLType:type andUTI:uniformTypeIdentifier];

              v41 = [PLCloudResource duplicateCloudResource:v37 forAsset:assetCopy withFilePath:v40 inManagedObjectContext:contextCopy];
              [self _copyResourceFileFrom:v37 to:v41];
              [v31 addObject:v41];
            }

            v34 = [v32 countByEnumeratingWithState:&v55 objects:v63 count:16];
          }

          while (v34);
        }

        resources2 = [inCopy resources];
        v43 = [resources2 mutableCopy];

        [v43 addObjectsFromArray:v31];
        [inCopy setResources:v43];

        anyObject = v48;
        resources = v50;
        v14 = v45;
        v12 = v46;
      }

      goto LABEL_37;
    }

    v47 = anyObject;
    v49 = resources;
    v51 = inCopy;
    v61 = 0u;
    v62 = 0u;
    v59 = 0u;
    v60 = 0u;
    v16 = resources;
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
      assetUuid2 = [v22 assetUuid];

      if (assetUuid2)
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
          selfCopy = v22;
          v66 = 2112;
          selfCopy2 = v16;
          _os_log_impl(&dword_19BF1F000, v24, OS_LOG_TYPE_ERROR, "Found cloudResource %@ with unexpected non-nil assetUuid. masterResources: %@", buf, 0x16u);
        }

        v15 = 0;
      }

      else
      {
        [v22 setAssetUuid:uuid];
        type2 = [v22 type];
        uniformTypeIdentifier2 = [v22 uniformTypeIdentifier];
        v24 = [assetCopy localResourcePathForMasterResourceWithCPLType:type2 andUTI:uniformTypeIdentifier2];

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

          resources = v49;
          inCopy = v51;
          anyObject = v47;
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
    anyObject = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(anyObject, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      selfCopy = inCopy;
      v66 = 2112;
      selfCopy2 = self;
      _os_log_impl(&dword_19BF1F000, anyObject, OS_LOG_TYPE_ERROR, "No resources for cloudMaster %@, unable to create master resources for asset %@", buf, 0x16u);
    }

    v15 = 0;
LABEL_40:
  }

  return v15 & 1;
}

+ (void)_copyResourceFileFrom:(id)from to:(id)to
{
  v27 = *MEMORY[0x1E69E9840];
  fromCopy = from;
  toCopy = to;
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  filePath = [toCopy filePath];
  filePath2 = [fromCopy filePath];
  if (!filePath2)
  {
LABEL_8:
    if ((*MEMORY[0x1E6994D48] & 1) == 0)
    {
      v11 = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = fromCopy;
        v23 = 2112;
        v24 = toCopy;
        _os_log_impl(&dword_19BF1F000, v11, OS_LOG_TYPE_ERROR, "Missing file path for duplicated resources, skip copying from %@ to %@", buf, 0x16u);
      }

      goto LABEL_27;
    }

    goto LABEL_28;
  }

  if ([defaultManager fileExistsAtPath:filePath2])
  {
    v10 = filePath == 0;
  }

  else
  {
    v10 = 1;
  }

  if (v10)
  {
    if (filePath)
    {
      goto LABEL_28;
    }

    goto LABEL_8;
  }

  if (([defaultManager fileExistsAtPath:filePath] & 1) == 0)
  {
    stringByDeletingLastPathComponent = [filePath stringByDeletingLastPathComponent];
    v20 = 0;
    v13 = [defaultManager createDirectoryIfNeededAtPath:stringByDeletingLastPathComponent error:&v20];
    v14 = v20;
    v11 = v14;
    if (v13)
    {
      v19 = v14;
      v15 = [defaultManager copyItemAtPath:filePath2 toPath:filePath error:&v19];
      v16 = v19;

      if (v15)
      {
        if ((*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v17 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412546;
            v22 = fromCopy;
            v23 = 2112;
            v24 = toCopy;
            _os_log_impl(&dword_19BF1F000, v17, OS_LOG_TYPE_DEFAULT, "Copied duplicated resource file from %@ to %@", buf, 0x16u);
          }
        }

        [toCopy setIsLocallyAvailable:1];
        if ([toCopy type]!= 1)
        {
          goto LABEL_25;
        }

        asset = [toCopy asset];
        [asset persistMetadataToFilesystem];
      }

      else
      {
        if (*MEMORY[0x1E6994D48])
        {
          goto LABEL_25;
        }

        asset = __CPLAssetsdOSLogDomain();
        if (os_log_type_enabled(asset, OS_LOG_TYPE_ERROR))
        {
          *buf = 138412802;
          v22 = filePath2;
          v23 = 2112;
          v24 = filePath;
          v25 = 2112;
          v26 = v16;
          _os_log_impl(&dword_19BF1F000, asset, OS_LOG_TYPE_ERROR, "Failed to copy master resource file from %@ to duplicated asset %@. Error: %@", buf, 0x20u);
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

      asset = __CPLAssetsdOSLogDomain();
      if (os_log_type_enabled(asset, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v22 = stringByDeletingLastPathComponent;
        v23 = 2112;
        v24 = v11;
        _os_log_impl(&dword_19BF1F000, asset, OS_LOG_TYPE_ERROR, "Failed to create directory for resource file at %@. Error: %@", buf, 0x16u);
      }

      v16 = v11;
    }

LABEL_25:
    v11 = v16;
    goto LABEL_26;
  }

LABEL_28:
}

+ (id)legacyCloudResourceForResourceType:(unint64_t)type forAsset:(id)asset
{
  v18 = *MEMORY[0x1E69E9840];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  resources = [asset resources];
  v6 = [resources countByEnumeratingWithState:&v13 objects:v17 count:16];
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
          objc_enumerationMutation(resources);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        if ([v10 type] == type)
        {
          v11 = v10;
          goto LABEL_11;
        }
      }

      v7 = [resources countByEnumeratingWithState:&v13 objects:v17 count:16];
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

- (void)setPrunedAt:(id)at
{
  atCopy = at;
  [(PLCloudResource *)self willChangeValueForKey:@"prunedAt"];
  [(PLCloudResource *)self setPrimitiveValue:atCopy forKey:@"prunedAt"];

  [(PLCloudResource *)self didChangeValueForKey:@"prunedAt"];
}

- (void)setPrefetchCount:(signed __int16)count
{
  countCopy = count;
  [(PLCloudResource *)self willChangeValueForKey:@"prefetchCount"];
  v5 = [MEMORY[0x1E696AD98] numberWithShort:countCopy];
  [(PLCloudResource *)self setPrimitiveValue:v5 forKey:@"prefetchCount"];

  [(PLCloudResource *)self didChangeValueForKey:@"prefetchCount"];
}

- (void)setLastPrefetchDate:(id)date
{
  dateCopy = date;
  [(PLCloudResource *)self willChangeValueForKey:@"lastPrefetchDate"];
  [(PLCloudResource *)self setPrimitiveValue:dateCopy forKey:@"lastPrefetchDate"];

  [(PLCloudResource *)self didChangeValueForKey:@"lastPrefetchDate"];
}

- (void)setIsLocallyAvailable:(BOOL)available
{
  availableCopy = available;
  [(PLCloudResource *)self willAccessValueForKey:@"isLocallyAvailable"];
  v5 = [(PLCloudResource *)self primitiveValueForKey:@"isLocallyAvailable"];
  bOOLValue = [v5 BOOLValue];

  [(PLCloudResource *)self didAccessValueForKey:@"isLocallyAvailable"];
  if (bOOLValue != availableCopy)
  {
    [(PLCloudResource *)self willChangeValueForKey:@"isLocallyAvailable"];
    v7 = [MEMORY[0x1E696AD98] numberWithBool:availableCopy];
    [(PLCloudResource *)self setPrimitiveValue:v7 forKey:@"isLocallyAvailable"];

    [(PLCloudResource *)self didChangeValueForKey:@"isLocallyAvailable"];
  }
}

- (id)cplResourceIncludeFile:(BOOL)file
{
  fileCopy = file;
  v27 = *MEMORY[0x1E69E9840];
  filePath = [(PLCloudResource *)self filePath];
  v6 = filePath;
  v7 = 0;
  if (fileCopy)
  {
    if (filePath)
    {
      v8 = [MEMORY[0x1E695DFF8] fileURLWithPath:filePath isDirectory:0];
      v7 = v8;
      if (v8)
      {
        uRLByDeletingLastPathComponent = [v8 URLByDeletingLastPathComponent];
        path = [uRLByDeletingLastPathComponent path];

        defaultManager = [MEMORY[0x1E696AC08] defaultManager];
        v22 = 0;
        v12 = [defaultManager createDirectoryIfNeededAtPath:path error:&v22];
        v13 = v22;

        if ((v12 & 1) == 0 && (*MEMORY[0x1E6994D48] & 1) == 0)
        {
          v14 = __CPLAssetsdOSLogDomain();
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            selfCopy2 = self;
            v25 = 2112;
            v26 = v13;
            _os_log_impl(&dword_19BF1F000, v14, OS_LOG_TYPE_ERROR, "Unable to create directory for cloudResource %@: %@.", buf, 0x16u);
          }
        }
      }
    }
  }

  fingerprint = [(PLCloudResource *)self fingerprint];

  if (fingerprint)
  {
    v16 = [objc_alloc(MEMORY[0x1E6994B98]) initWithFileURL:v7];
    [v16 setFileSize:[(PLCloudResource *)self fileSize]];
    [v16 setImageDimensions:[(PLCloudResource *)self width], [(PLCloudResource *)self height]];
    [v16 setAvailable:[(PLCloudResource *)self isAvailable]];
    uniformTypeIdentifier = [(PLCloudResource *)self uniformTypeIdentifier];
    [v16 setFileUTI:uniformTypeIdentifier];

    fingerprint2 = [(PLCloudResource *)self fingerprint];
    [v16 setFingerPrint:fingerprint2];

    scopedIdentifier = [(PLCloudResource *)self scopedIdentifier];
    v20 = [objc_alloc(MEMORY[0x1E6994B90]) initWithResourceIdentity:v16 itemScopedIdentifier:scopedIdentifier resourceType:{-[PLCloudResource type](self, "type")}];

LABEL_16:
    goto LABEL_17;
  }

  if ((*MEMORY[0x1E6994D48] & 1) == 0)
  {
    v16 = __CPLAssetsdOSLogDomain();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      selfCopy2 = self;
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
  cloudMaster = [(PLCloudResource *)self cloudMaster];
  asset = [(PLCloudResource *)self asset];
  v5 = cloudMaster;
  if (cloudMaster || (v5 = asset) != 0)
  {
    scopedIdentifier = [v5 scopedIdentifier];
  }

  else
  {
    scopedIdentifier = 0;
  }

  return scopedIdentifier;
}

- (void)_duplicatePropertiesFromCloudResource:(id)resource withFilePath:(id)path forAssetUuid:(id)uuid
{
  resourceCopy = resource;
  pathCopy = path;
  [(PLCloudResource *)self setAssetUuid:uuid];
  [(PLCloudResource *)self setFilePath:pathCopy];
  -[PLCloudResource setFileSize:](self, "setFileSize:", [resourceCopy fileSize]);
  fingerprint = [resourceCopy fingerprint];
  [(PLCloudResource *)self setFingerprint:fingerprint];

  -[PLCloudResource setHeight:](self, "setHeight:", [resourceCopy height]);
  -[PLCloudResource setIsAvailable:](self, "setIsAvailable:", [resourceCopy isAvailable]);
  -[PLCloudResource setType:](self, "setType:", [resourceCopy type]);
  uniformTypeIdentifier = [resourceCopy uniformTypeIdentifier];
  [(PLCloudResource *)self setUniformTypeIdentifier:uniformTypeIdentifier];

  -[PLCloudResource setWidth:](self, "setWidth:", [resourceCopy width]);
  prunedAt = [resourceCopy prunedAt];
  [(PLCloudResource *)self setPrunedAt:prunedAt];

  lastOnDemandDownloadDate = [resourceCopy lastOnDemandDownloadDate];
  [(PLCloudResource *)self setLastOnDemandDownloadDate:lastOnDemandDownloadDate];

  itemIdentifier = [resourceCopy itemIdentifier];
  [(PLCloudResource *)self setItemIdentifier:itemIdentifier];

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_11;
    }

    dateCreated = resourceCopy;
    if ([dateCreated isCPLAssetResource])
    {
      asset = [dateCreated asset];
      [(PLCloudResource *)self setAsset:asset];
    }

    else
    {
      if (![dateCreated isCPLMasterResource])
      {
LABEL_9:
        cloudMasterDateCreated = [dateCreated cloudMasterDateCreated];
        [(PLCloudResource *)self setDateCreated:cloudMasterDateCreated];

        goto LABEL_10;
      }

      asset = [dateCreated asset];
      master = [asset master];
      [(PLCloudResource *)self setCloudMaster:master];
    }

    goto LABEL_9;
  }

  v14 = resourceCopy;
  asset2 = [v14 asset];
  [(PLCloudResource *)self setAsset:asset2];

  cloudMaster = [v14 cloudMaster];
  [(PLCloudResource *)self setCloudMaster:cloudMaster];

  dateCreated = [v14 dateCreated];

  [(PLCloudResource *)self setDateCreated:dateCreated];
LABEL_10:

LABEL_11:
  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  -[PLCloudResource setIsLocallyAvailable:](self, "setIsLocallyAvailable:", [defaultManager fileExistsAtPath:pathCopy]);
}

- (void)applyPropertiesFromCloudResource:(id)resource
{
  resourceCopy = resource;
  resourceType = [resourceCopy resourceType];
  identity = [resourceCopy identity];
  -[PLCloudResource setFileSize:](self, "setFileSize:", [identity fileSize]);
  [identity imageDimensions];
  v7 = v6;
  [(PLCloudResource *)self setWidth:v8];
  [(PLCloudResource *)self setHeight:v7];
  [(PLCloudResource *)self setType:resourceType];
  -[PLCloudResource setIsAvailable:](self, "setIsAvailable:", [identity isAvailable]);
  fileUTI = [identity fileUTI];
  [(PLCloudResource *)self setUniformTypeIdentifier:fileUTI];

  fingerPrint = [identity fingerPrint];
  [(PLCloudResource *)self setFingerprint:fingerPrint];

  itemScopedIdentifier = [resourceCopy itemScopedIdentifier];

  identifier = [itemScopedIdentifier identifier];
  [(PLCloudResource *)self setItemIdentifier:identifier];
}

- (id)description
{
  v41 = MEMORY[0x1E696AEC0];
  v3 = [MEMORY[0x1E6994B90] descriptionForResourceType:{-[PLCloudResource type](self, "type")}];
  filePath = [(PLCloudResource *)self filePath];
  fileSize = [(PLCloudResource *)self fileSize];
  height = [(PLCloudResource *)self height];
  width = [(PLCloudResource *)self width];
  fingerprint = [(PLCloudResource *)self fingerprint];
  assetUuid = [(PLCloudResource *)self assetUuid];
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

  v11 = [v41 stringWithFormat:@"%@\n\t%@, size: %llu, height: %lld, width: %lld, fingerprint: %@, assetUUID: %@, isAvailable: %@, isLocallyAvailable: %@ cloudLocalState: %d", v3, filePath, fileSize, height, width, fingerprint, assetUuid, v10, v9, -[PLCloudResource cloudLocalState](self, "cloudLocalState")];

  defaultManager = [MEMORY[0x1E696AC08] defaultManager];
  filePath2 = [(PLCloudResource *)self filePath];
  v14 = [defaultManager fileExistsAtPath:filePath2];

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

  uniformTypeIdentifier = [(PLCloudResource *)self uniformTypeIdentifier];
  v18 = [v11 stringByAppendingFormat:@", UTI: %@", uniformTypeIdentifier];

  assetUuid2 = [(PLCloudResource *)self assetUuid];
  managedObjectContext = [(PLCloudResource *)self managedObjectContext];
  v21 = [PLManagedAsset assetWithUUID:assetUuid2 inManagedObjectContext:managedObjectContext];

  if ([v21 isVideo])
  {
    v22 = MEMORY[0x1E695DFF8];
    filePath3 = [(PLCloudResource *)self filePath];
    v24 = [v22 fileURLWithPath:filePath3 isDirectory:0];

    v25 = [MEMORY[0x1E6987E28] assetWithURL:v24];
    v26 = v25;
    if (v25)
    {
      plVideoCodecName = [v25 plVideoCodecName];
      v28 = plVideoCodecName;
      if (plVideoCodecName)
      {
        v29 = [v18 stringByAppendingFormat:@", Codec: %@", plVideoCodecName];

        v18 = v29;
      }
    }
  }

  lastOnDemandDownloadDate = [(PLCloudResource *)self lastOnDemandDownloadDate];

  if (lastOnDemandDownloadDate)
  {
    lastOnDemandDownloadDate2 = [(PLCloudResource *)self lastOnDemandDownloadDate];
    v32 = [v18 stringByAppendingFormat:@", OnDemand DL date: %@", lastOnDemandDownloadDate2];

    v18 = v32;
  }

  prunedAt = [(PLCloudResource *)self prunedAt];

  if (prunedAt)
  {
    prunedAt2 = [(PLCloudResource *)self prunedAt];
    v35 = [v18 stringByAppendingFormat:@", Prune date: %@", prunedAt2];

    v18 = v35;
  }

  lastPrefetchDate = [(PLCloudResource *)self lastPrefetchDate];

  if (lastPrefetchDate)
  {
    lastPrefetchDate2 = [(PLCloudResource *)self lastPrefetchDate];
    v38 = [v18 stringByAppendingFormat:@", Prefetch date: %@ (%d)", lastPrefetchDate2, -[PLCloudResource prefetchCount](self, "prefetchCount")];

    v18 = v38;
  }

  return v18;
}

+ (BOOL)_countOfLocalCloudResourcesOfType:(unint64_t)type inManagedObjectContext:(id)context forMediumSized:(BOOL)sized localCount:(unint64_t *)count unavailableCount:(unint64_t *)unavailableCount error:(id *)error
{
  v65[4] = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v53 = +[PLCloudResource entityName];
  v11 = [MEMORY[0x1E695D5E0] fetchRequestWithEntityName:?];
  [MEMORY[0x1E6994B90] derivativeGenerationThreshold];
  v13 = (v12 * [MEMORY[0x1E6994B90] maxPixelSizeForResourceType:4]);
  v14 = MEMORY[0x1E696AE18];
  identifier = [*MEMORY[0x1E6982E58] identifier];
  v65[0] = identifier;
  v65[1] = @"public.heic";
  v65[2] = @"public.heif";
  v65[3] = @"public.avci";
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:v65 count:4];
  v17 = [v14 predicateWithFormat:@"width * height <= %d AND uniformTypeIdentifier IN %@", v13, v16];

  type = [MEMORY[0x1E696AE18] predicateWithFormat:@"isAvailable == YES AND type = %d", type];
  v19 = type;
  v52 = v17;
  if (sized)
  {
    v20 = MEMORY[0x1E696AB28];
    v64[0] = type;
    v64[1] = v17;
    v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:v64 count:2];
    v22 = [v20 andPredicateWithSubpredicates:v21];
    [v11 setPredicate:v22];
  }

  else
  {
    [v11 setPredicate:type];
  }

  v23 = v11;
  [v11 setResultType:2];
  v24 = objc_alloc_init(MEMORY[0x1E695D5C8]);
  [v24 setName:@"count"];
  v25 = MEMORY[0x1E696ABC8];
  expressionForEvaluatedObject = [MEMORY[0x1E696ABC8] expressionForEvaluatedObject];
  v63 = expressionForEvaluatedObject;
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
  v30 = contextCopy;
  v31 = [contextCopy executeFetchRequest:v23 error:&v60];
  v32 = v60;
  v33 = v32;
  if (v31)
  {
    if (count)
    {
      *count = 0;
    }

    v46 = v32;
    v48 = v28;
    v49 = v24;
    v51 = v23;
    if (unavailableCount)
    {
      *unavailableCount = 0;
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
          unsignedIntegerValue = [v40 unsignedIntegerValue];

          v42 = [v39 objectForKeyedSubscript:@"isLocallyAvailable"];
          LODWORD(v40) = [v42 BOOLValue];

          countCopy = unavailableCount;
          if (v40)
          {
            countCopy = count;
          }

          if (countCopy)
          {
            *countCopy = unsignedIntegerValue;
          }
        }

        v36 = [v34 countByEnumeratingWithState:&v56 objects:v61 count:16];
      }

      while (v36);
    }

    v30 = contextCopy;
    v23 = v51;
    v28 = v48;
    v24 = v49;
    v33 = v46;
    v31 = v47;
  }

  else if (error)
  {
    v44 = v32;
    *error = v33;
  }

  return v31 != 0;
}

+ (unint64_t)bytesForAllResourcesInLibrary:(id)library
{
  libraryCopy = library;
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __49__PLCloudResource_bytesForAllResourcesInLibrary___block_invoke;
  v9[3] = &unk_1E7576590;
  selfCopy = self;
  v6 = libraryCopy;
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

+ (void)resetPrefetchStateForResourcesWithResourceType:(int64_t)type itemIdentifiers:(id)identifiers inLibrary:(id)library
{
  identifiersCopy = identifiers;
  libraryCopy = library;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __92__PLCloudResource_resetPrefetchStateForResourcesWithResourceType_itemIdentifiers_inLibrary___block_invoke;
  v12[3] = &unk_1E7576400;
  selfCopy = self;
  typeCopy = type;
  v13 = identifiersCopy;
  v14 = libraryCopy;
  v10 = libraryCopy;
  v11 = identifiersCopy;
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

+ (id)nonLocalResourcesInManagedObjectContext:(id)context forAssetUUIDs:(id)ds cplResourceTypes:(id)types
{
  v22[3] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x1E695D5E0];
  typesCopy = types;
  dsCopy = ds;
  contextCopy = context;
  entityName = [self entityName];
  v13 = [v8 fetchRequestWithEntityName:entityName];

  dsCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"assetUuid in %@", dsCopy];

  v15 = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex(isLocallyAvailable) == NO"];
  typesCopy = [MEMORY[0x1E696AE18] predicateWithFormat:@"noindex(type) in %@", typesCopy];

  v17 = MEMORY[0x1E696AB28];
  v22[0] = dsCopy;
  v22[1] = v15;
  v22[2] = typesCopy;
  v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:3];
  v19 = [v17 andPredicateWithSubpredicates:v18];
  [v13 setPredicate:v19];

  v20 = [contextCopy executeFetchRequest:v13 error:0];

  return v20;
}

+ (id)duplicateCloudResource:(id)resource forAsset:(id)asset withFilePath:(id)path inManagedObjectContext:(id)context
{
  resourceCopy = resource;
  assetCopy = asset;
  pathCopy = path;
  contextCopy = context;
  if (contextCopy)
  {
    if (resourceCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCloudResource.m" lineNumber:73 description:{@"Invalid parameter not satisfying: %@", @"moc"}];

    if (resourceCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLCloudResource.m" lineNumber:74 description:{@"Invalid parameter not satisfying: %@", @"resource"}];

LABEL_3:
  entityName = [self entityName];
  v16 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(entityName, contextCopy, 0);

  uuid = [assetCopy uuid];
  [v16 _duplicatePropertiesFromCloudResource:resourceCopy withFilePath:pathCopy forAssetUuid:uuid];

  master = [assetCopy master];
  creationDate = [master creationDate];
  [v16 setDateCreated:creationDate];

  return v16;
}

+ (id)insertIntoPhotoLibrary:(id)library forAsset:(id)asset withCPLResource:(id)resource adjusted:(BOOL)adjusted withCreationDate:(id)date
{
  libraryCopy = library;
  assetCopy = asset;
  resourceCopy = resource;
  dateCopy = date;
  if (!libraryCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PLCloudResource.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"library"}];

    if (resourceCopy)
    {
      goto LABEL_3;
    }

LABEL_13:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PLCloudResource.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"cplResource"}];

    goto LABEL_3;
  }

  if (!resourceCopy)
  {
    goto LABEL_13;
  }

LABEL_3:
  managedObjectContext = [libraryCopy managedObjectContext];
  entityName = [self entityName];
  v19 = PLSafeInsertNewObjectForEntityForNameInManagedObjectContext(entityName, managedObjectContext, 0);

  [v19 applyPropertiesFromCloudResource:resourceCopy];
  uuid = [assetCopy uuid];
  [v19 setAssetUuid:uuid];

  [v19 setDateCreated:dateCopy];
  if (assetCopy && v19)
  {
    if (adjusted)
    {
      v21 = [assetCopy pathForCPLResourceType:objc_msgSend(resourceCopy adjusted:{"resourceType"), 1}];
    }

    else
    {
      type = [v19 type];
      uniformTypeIdentifier = [v19 uniformTypeIdentifier];
      v21 = [assetCopy localResourcePathForMasterResourceWithCPLType:type andUTI:uniformTypeIdentifier];
    }

    [v19 setFilePath:v21];
    defaultManager = [MEMORY[0x1E696AC08] defaultManager];
    v25 = [defaultManager fileExistsAtPath:v21 isDirectory:0];

    [v19 setIsLocallyAvailable:v25];
  }

  return v19;
}

@end