@interface PXStorageManagementUtility
+ (id)storageTipAssetCollectionForType:(unint64_t)a3 photoLibrary:(id)a4;
+ (id)storageTipAssetFetchOptionsForType:(unint64_t)a3 photoLibrary:(id)a4;
+ (id)storageViewForTipType:(unint64_t)a3 customAssetSelectionHandler:(id)a4;
+ (unint64_t)_totalBytesSizeFromQuotaDictionary:(id)a3;
- (BOOL)isCPLEnabled;
- (BOOL)isCPLInExitMode;
- (BOOL)isDeletableItemsInTrash;
- (BOOL)shouldHideCPL;
- (BOOL)shouldShowCloudStorageTip;
- (NSNumber)sizeForRecentlyDeletedItems;
- (PXStorageManagementUtility)initWithPhotoLibrary:(id)a3;
- (id)_assetsInTrash;
- (unint64_t)cloudStorageTotalBytesSize;
- (unint64_t)localStorageTotalBytesSize;
- (void)enableCPLWithCompletionBlock:(id)a3;
- (void)expungeRecentlyDeletedItemsWithCompletionBlock:(id)a3;
- (void)purgeableSizeAndOriginalsInLibrary:(id)a3;
@end

@implementation PXStorageManagementUtility

- (unint64_t)localStorageTotalBytesSize
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(PXStorageManagementUtility *)self localStorageTotalBytes];

  if (!v3)
  {
    v4 = [(PXStorageManagementUtility *)self photoLibrary];
    v16 = 0;
    v17 = 0;
    v5 = [v4 localResourceBytesUsed:&v17 error:&v16];
    v6 = v17;
    v7 = v16;

    if ((v5 & 1) == 0)
    {
      PXAssertGetLog();
    }

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{+[PXStorageManagementUtility _totalBytesSizeFromQuotaDictionary:](PXStorageManagementUtility, "_totalBytesSizeFromQuotaDictionary:", v6)}];
    [(PXStorageManagementUtility *)self setLocalStorageTotalBytes:v8];
  }

  v9 = PLUIGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = MEMORY[0x1E696AAF0];
    v11 = [(PXStorageManagementUtility *)self localStorageTotalBytes];
    v12 = [v10 stringFromByteCount:objc_msgSend(v11 countStyle:{"unsignedLongValue"), 0}];
    *buf = 138412290;
    v19 = v12;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_INFO, "Local Storage Recoverable: %@", buf, 0xCu);
  }

  v13 = [(PXStorageManagementUtility *)self localStorageTotalBytes];
  v14 = [v13 unsignedLongValue];

  return v14;
}

- (unint64_t)cloudStorageTotalBytesSize
{
  v20 = *MEMORY[0x1E69E9840];
  v3 = [(PXStorageManagementUtility *)self cloudStorageTotalBytes];

  if (!v3)
  {
    v4 = [(PXStorageManagementUtility *)self photoLibrary];
    v16 = 0;
    v17 = 0;
    v5 = [v4 cloudQuotaResourceBytesUsed:&v17 error:&v16];
    v6 = v17;
    v7 = v16;

    if ((v5 & 1) == 0)
    {
      PXAssertGetLog();
    }

    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:{+[PXStorageManagementUtility _totalBytesSizeFromQuotaDictionary:](PXStorageManagementUtility, "_totalBytesSizeFromQuotaDictionary:", v6)}];
    [(PXStorageManagementUtility *)self setCloudStorageTotalBytes:v8];
  }

  v9 = PLUIGetLog();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    v10 = MEMORY[0x1E696AAF0];
    v11 = [(PXStorageManagementUtility *)self cloudStorageTotalBytes];
    v12 = [v10 stringFromByteCount:objc_msgSend(v11 countStyle:{"unsignedLongValue"), 0}];
    *buf = 138412290;
    v19 = v12;
    _os_log_impl(&dword_1A3C1C000, v9, OS_LOG_TYPE_INFO, "Cloud Storage Recoverable: %@", buf, 0xCu);
  }

  v13 = [(PXStorageManagementUtility *)self cloudStorageTotalBytes];
  v14 = [v13 unsignedLongValue];

  return v14;
}

- (BOOL)shouldShowCloudStorageTip
{
  v3 = [(PXStorageManagementUtility *)self isCPLEnabled];
  if (v3)
    LOBYTE(v3) = !-[PXStorageManagementUtility isCPLInExitMode](self, "isCPLInExitMode") && (-[PXStorageManagementUtility photoLibrary](self, "photoLibrary"), v4 = {;
  }

  return v3;
}

- (void)expungeRecentlyDeletedItemsWithCompletionBlock:(id)a3
{
  v4 = a3;
  v5 = [(PXStorageManagementUtility *)self _assetsInTrash];
  if ([v5 count])
  {
    v6 = [v5 firstObject];
    v7 = [v6 photoLibrary];

    v8 = objc_alloc_init(MEMORY[0x1E69786A0]);
    [v8 setExpungeSource:5];
    v9 = MEMORY[0x1E6978648];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __77__PXStorageManagementUtility_expungeRecentlyDeletedItemsWithCompletionBlock___block_invoke;
    v10[3] = &unk_1E774BD88;
    v11 = v5;
    v12 = v4;
    [v9 performBatchExpungeWithAssets:v11 deleteOptions:v8 photoLibrary:v7 completionHandler:v10];
  }
}

void __77__PXStorageManagementUtility_expungeRecentlyDeletedItemsWithCompletionBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (v4)
  {
    v5 = PLUIGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = *(a1 + 32);
      v7 = 138412546;
      v8 = v6;
      v9 = 2112;
      v10 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Unable to expunge assets:%@ error:%@", &v7, 0x16u);
    }
  }

  (*(*(a1 + 40) + 16))();
}

- (void)enableCPLWithCompletionBlock:(id)a3
{
  v4 = a3;
  v3 = v4;
  PLCanEnableCloudPhotoLibrary();
}

void __59__PXStorageManagementUtility_enableCPLWithCompletionBlock___block_invoke(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __59__PXStorageManagementUtility_enableCPLWithCompletionBlock___block_invoke_2;
  block[3] = &unk_1E774A940;
  v11 = a2;
  v6 = *(a1 + 32);
  v9 = v5;
  v10 = v6;
  v7 = v5;
  dispatch_async(MEMORY[0x1E69E96A0], block);
}

void __59__PXStorageManagementUtility_enableCPLWithCompletionBlock___block_invoke_2(uint64_t a1)
{
  if (*(a1 + 48) == 1)
  {
    v10 = v1;
    v11 = v2;
    v3 = MEMORY[0x1E69BE328];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __59__PXStorageManagementUtility_enableCPLWithCompletionBlock___block_invoke_3;
    v8[3] = &unk_1E7747648;
    v9 = *(a1 + 40);
    [v3 enableCPL:v8];
  }

  else
  {
    v4 = *(a1 + 40);
    if (v4)
    {
      v5 = *(a1 + 32);
      v6 = *(v4 + 16);
      v7 = *(a1 + 40);

      v6(v7, 0, v5);
    }
  }
}

uint64_t __59__PXStorageManagementUtility_enableCPLWithCompletionBlock___block_invoke_3(uint64_t a1)
{
  result = *(a1 + 32);
  if (result)
  {
    return (*(result + 16))();
  }

  return result;
}

- (BOOL)isDeletableItemsInTrash
{
  v2 = [(PXStorageManagementUtility *)self _assetsInTrash];
  v3 = [v2 count] != 0;

  return v3;
}

- (NSNumber)sizeForRecentlyDeletedItems
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(PXStorageManagementUtility *)self _assetsInTrash];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v12;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v12 != v6)
        {
          objc_enumerationMutation(v2);
        }

        v8 = [*(*(&v11 + 1) + 8 * i) originalMetadataProperties];
        v5 += [v8 originalFilesize];
      }

      v4 = [v2 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v5];

  return v9;
}

- (id)_assetsInTrash
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = MEMORY[0x1E6978830];
  v3 = [(PXStorageManagementUtility *)self photoLibrary];
  v4 = [v2 fetchOptionsWithInclusiveDefaultsForPhotoLibrary:v3];

  v10[0] = *MEMORY[0x1E6978CA8];
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  [v4 addFetchPropertySets:v5];

  [v4 setIncludeTrashedAssets:1];
  v6 = [MEMORY[0x1E696AE18] predicateWithFormat:@"trashedState = %d", 1];
  [v4 setInternalPredicate:v6];

  v7 = [MEMORY[0x1E6978630] fetchAssetsWithOptions:v4];
  v8 = [v7 fetchedObjects];

  return v8;
}

- (BOOL)shouldHideCPL
{
  v2 = [MEMORY[0x1E69BE248] pl_sharedAccountStore];
  v3 = [v2 cachedPrimaryAppleAccount];

  if (v3)
  {
    v4 = [v3 provisionedDataclasses];
    v5 = [v4 containsObject:*MEMORY[0x1E6959AE8]] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 1;
  }

  v6 = [MEMORY[0x1E69ADFB8] sharedConnection];
  v7 = [v6 BOOLRestrictionForFeature:*MEMORY[0x1E69ADE38]];

  if (v7 == 2)
  {
    v8 = 1;
  }

  else
  {
    v8 = v5;
  }

  return v8;
}

- (BOOL)isCPLInExitMode
{
  v2 = [(PXStorageManagementUtility *)self photoLibrary];
  v3 = [v2 cplStatus];
  v4 = [v3 exitDeleteTime];
  v5 = v4 != 0;

  return v5;
}

- (BOOL)isCPLEnabled
{
  v2 = [(PXStorageManagementUtility *)self photoLibrary];
  v3 = [v2 isCloudPhotoLibraryEnabled];

  return v3;
}

- (void)purgeableSizeAndOriginalsInLibrary:(id)a3
{
  v4 = a3;
  v5 = [(PXStorageManagementUtility *)self photoLibrary];
  v6 = [v5 photoLibraryURL];

  v7 = [MEMORY[0x1E69BE688] sharedAssetsdClientForPhotoLibraryURL:v6];
  v8 = [v7 libraryInternalClient];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __65__PXStorageManagementUtility_purgeableSizeAndOriginalsInLibrary___block_invoke;
  v10[3] = &unk_1E773EA08;
  v11 = v4;
  v9 = v4;
  [v8 getLibrarySizesFromDB:1 completionHandler:v10];
}

void __65__PXStorageManagementUtility_purgeableSizeAndOriginalsInLibrary___block_invoke(uint64_t a1, char a2, void *a3, void *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (a2)
  {
    v9 = [&unk_1F190CD30 stringValue];
    v10 = [v7 objectForKeyedSubscript:v9];

    if (v10)
    {
      v11 = v10;
      v12 = PLUIGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 134217984;
        v14 = [v11 unsignedLongLongValue];
        _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "purgeableSizeAndOriginalsInLibrary potential purgeable originals in optimize mode = %llu bytes", &v13, 0xCu);
      }
    }

    else
    {
      v12 = PLUIGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v13) = 0;
        _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "purgeableSizeAndOriginalsInLibrary did not find key in sizes dictionary", &v13, 2u);
      }

      v11 = &unk_1F190CD18;
    }
  }

  else
  {
    v10 = PLUIGetLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v8;
      _os_log_impl(&dword_1A3C1C000, v10, OS_LOG_TYPE_ERROR, "Error getting library sizes from assetsd: %@", &v13, 0xCu);
    }

    v11 = &unk_1F190CD18;
  }

  (*(*(a1 + 32) + 16))();
}

- (PXStorageManagementUtility)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = PXStorageManagementUtility;
  v6 = [(PXStorageManagementUtility *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
    cloudStorageTotalBytes = v7->_cloudStorageTotalBytes;
    v7->_cloudStorageTotalBytes = 0;

    localStorageTotalBytes = v7->_localStorageTotalBytes;
    v7->_localStorageTotalBytes = 0;
  }

  return v7;
}

+ (unint64_t)_totalBytesSizeFromQuotaDictionary:(id)a3
{
  v3 = a3;
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __65__PXStorageManagementUtility__totalBytesSizeFromQuotaDictionary___block_invoke;
  v6[3] = &unk_1E773EA30;
  v6[4] = &v7;
  [v3 enumerateKeysAndObjectsUsingBlock:v6];
  v4 = v8[3];
  _Block_object_dispose(&v7, 8);

  return v4;
}

void __65__PXStorageManagementUtility__totalBytesSizeFromQuotaDictionary___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  *(*(*(a1 + 32) + 8) + 24) += [v6 unsignedLongValue];
  v7 = PLUIGetLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = [MEMORY[0x1E696AAF0] stringFromByteCount:objc_msgSend(v6 countStyle:{"unsignedLongValue"), 0}];
    v9 = 138412546;
    v10 = v5;
    v11 = 2112;
    v12 = v8;
    _os_log_impl(&dword_1A3C1C000, v7, OS_LOG_TYPE_INFO, "Storage Recoverable for %@: %@", &v9, 0x16u);
  }
}

+ (id)storageViewForTipType:(unint64_t)a3 customAssetSelectionHandler:(id)a4
{
  v8 = a4;
  if (a3 <= 1)
  {
    if (a3)
    {
      if (a3 != 1)
      {
        goto LABEL_9;
      }

      v9 = off_1E771F570;
    }

    else
    {
      v9 = off_1E771DC00;
    }

    goto LABEL_8;
  }

  if (a3 == 2)
  {
    v9 = off_1E771E308;
LABEL_8:
    v4 = [objc_alloc(*v9) initWithCustomAssetSelectionHandler:v8];
    goto LABEL_9;
  }

  if (a3 == 3)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:a1 file:@"PXStorageManagementUtility.m" lineNumber:231 description:@"Code which should be unreachable has been reached"];

    abort();
  }

LABEL_9:

  return v4;
}

+ (id)storageTipAssetFetchOptionsForType:(unint64_t)a3 photoLibrary:(id)a4
{
  v26[2] = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 librarySpecificFetchOptions];
  if ([v5 isCloudPhotoLibraryEnabled])
  {
    v7 = +[PXStorageManagementUtility predicateForUploadedAssetFetch];
    [v6 setInternalPredicate:v7];
  }

  if (a3 == 2)
  {
    v8 = [v6 internalPredicate];
    if (v8)
    {
      v9 = MEMORY[0x1E696AB28];
      v10 = [v6 internalPredicate];
      v26[0] = v10;
      v11 = +[PXStorageManagementUtility predicateForMinimumVideoSize];
      v26[1] = v11;
      v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:2];
      v13 = [v9 andPredicateWithSubpredicates:v12];
      [v6 setInternalPredicate:v13];
    }

    else
    {
      v14 = +[PXStorageManagementUtility predicateForMinimumVideoSize];
      [v6 setInternalPredicate:v14];
    }
  }

  v15 = [PXSharedLibraryStatusProvider sharedLibraryStatusProviderWithPhotoLibrary:v5];
  v16 = [v15 sharedLibrary];
  v17 = [v16 isOwned];

  if ((v17 & 1) == 0)
  {
    v18 = [v6 internalPredicate];
    if (v18)
    {
      v19 = MEMORY[0x1E696AB28];
      v20 = [v6 internalPredicate];
      v25[0] = v20;
      v21 = +[PXStorageManagementUtility _predicateForPersonalLibraryAssets];
      v25[1] = v21;
      v22 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];
      v23 = [v19 andPredicateWithSubpredicates:v22];
      [v6 setInternalPredicate:v23];
    }

    else
    {
      v20 = +[PXStorageManagementUtility _predicateForPersonalLibraryAssets];
      [v6 setInternalPredicate:v20];
    }
  }

  return v6;
}

+ (id)storageTipAssetCollectionForType:(unint64_t)a3 photoLibrary:(id)a4
{
  v7 = a4;
  v8 = v7;
  if (a3 > 1)
  {
    if (a3 == 2)
    {
      v10 = 202;
    }

    else
    {
      v10 = 0;
      if (a3 == 3)
      {
        v13 = [MEMORY[0x1E696AAA8] currentHandler];
        [v13 handleFailureInMethod:a2 object:a1 file:@"PXStorageManagementUtility.m" lineNumber:195 description:@"Code which should be unreachable has been reached"];

        abort();
      }
    }
  }

  else
  {
    v9 = 211;
    if (a3 != 1)
    {
      v9 = 0;
    }

    if (a3)
    {
      v10 = v9;
    }

    else
    {
      v10 = 1000000212;
    }
  }

  v11 = [v7 px_assetCollectionForSmartAlbumWithSubtype:v10];

  return v11;
}

@end