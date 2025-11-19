@interface PXStorageTipCollectionViewDataSectionManager
- (PXStorageTipCollectionViewDataSectionManager)initWithPhotoLibrary:(id)a3;
- (id)createDataSection;
- (id)tipQueue_fetchCountsDictionary;
- (id)tipQueue_fetchSizesDictionary;
- (void)photoLibraryDidChangeOnMainQueue:(id)a3;
- (void)tipQueue_createPendingDataSection;
- (void)tipQueue_populateInitialFetches;
@end

@implementation PXStorageTipCollectionViewDataSectionManager

- (void)photoLibraryDidChangeOnMainQueue:(id)a3
{
  v4 = a3;
  tipQueue = self->_tipQueue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __81__PXStorageTipCollectionViewDataSectionManager_photoLibraryDidChangeOnMainQueue___block_invoke;
  v7[3] = &unk_1E774C620;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(tipQueue, v7);
}

void __81__PXStorageTipCollectionViewDataSectionManager_photoLibraryDidChangeOnMainQueue___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) dataSection];
  v3 = [v2 count];

  if (v3 >= 1)
  {
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a1 + 40);
      v7 = [*(a1 + 32) fetchResults];
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
      v9 = [v7 objectForKeyedSubscript:v8];
      v10 = [v6 changeDetailsForFetchResult:v9];

      if (v10)
      {
        v11 = [v10 fetchResultAfterChanges];
        v12 = [*(a1 + 32) fetchResults];
        v13 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
        [v12 setObject:v11 forKeyedSubscript:v13];

        v4 = 1;
      }

      ++v5;
      v14 = [*(a1 + 32) dataSection];
      v15 = [v14 count];
    }

    while (v5 < v15);
    if (v4)
    {
      v16 = *(a1 + 32);

      [v16 tipQueue_createPendingDataSection];
    }
  }
}

- (id)tipQueue_fetchCountsDictionary
{
  v22 = *MEMORY[0x1E69E9840];
  v16 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  obj = [(PXStorageTipCollectionViewDataSectionManager *)self fetchResults];
  v3 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v18;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v18 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = [*(*(&v17 + 1) + 8 * i) intValue];
        v8 = MEMORY[0x1E696AD98];
        v9 = [(PXStorageTipCollectionViewDataSectionManager *)self fetchResults];
        v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
        v11 = [v9 objectForKeyedSubscript:v10];
        v12 = [v8 numberWithUnsignedInteger:{objc_msgSend(v11, "count")}];
        v13 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v7];
        [v16 setObject:v12 forKeyedSubscript:v13];
      }

      v4 = [obj countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v4);
  }

  return v16;
}

- (id)tipQueue_fetchSizesDictionary
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = [(PXStorageTipCollectionViewDataSectionManager *)self photoLibrary];
  v4 = [v3 isCloudPhotoLibraryEnabled];

  v5 = [(PXStorageTipCollectionViewDataSectionManager *)self photoLibrary];
  v6 = v5;
  if (v4)
  {
    v30 = 0;
    v31 = 0;
    v7 = &v31;
    v8 = &v30;
    v9 = [v5 cloudQuotaResourceBytesUsed:&v31 error:&v30];
  }

  else
  {
    v28 = 0;
    v29 = 0;
    v7 = &v29;
    v8 = &v28;
    v9 = [v5 localResourceBytesUsed:&v29 error:&v28];
  }

  v10 = v9;
  v11 = *v7;
  v12 = *v8;

  if ((v10 & 1) == 0 && !v12)
  {
    PXAssertGetLog();
  }

  v13 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v14 = v11;
  v15 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v25;
    do
    {
      for (i = 0; i != v16; ++i)
      {
        if (*v25 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v24 + 1) + 8 * i);
        v20 = [PXStorageTipListItem storageTipTypeForCloudQuotaUsedBytesIdentifier:v19, v24];
        v21 = [v14 objectForKeyedSubscript:v19];
        v22 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v20];
        [v13 setObject:v21 forKeyedSubscript:v22];
      }

      v16 = [v14 countByEnumeratingWithState:&v24 objects:v32 count:16];
    }

    while (v16);
  }

  return v13;
}

- (void)tipQueue_createPendingDataSection
{
  v3 = [PXStorageTipCollectionViewDataSection alloc];
  v4 = [(PXStorageTipCollectionViewDataSectionManager *)self tipQueue_fetchSizesDictionary];
  v5 = [(PXStorageTipCollectionViewDataSectionManager *)self tipQueue_fetchCountsDictionary];
  v6 = [(PXStorageTipCollectionViewDataSection *)v3 initWithSizesDictionary:v4 countsDictionary:v5];

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __81__PXStorageTipCollectionViewDataSectionManager_tipQueue_createPendingDataSection__block_invoke;
  v8[3] = &unk_1E774C620;
  v8[4] = self;
  v9 = v6;
  v7 = v6;
  dispatch_async(MEMORY[0x1E69E96A0], v8);
}

void __81__PXStorageTipCollectionViewDataSectionManager_tipQueue_createPendingDataSection__block_invoke(uint64_t a1)
{
  [*(a1 + 32) setPendingDataSection:*(a1 + 40)];
  v2 = *(a1 + 32);
  v3 = [off_1E7721450 changeDetailsWithNoIncrementalChanges];
  [v2 updateDataSectionWithChangeDetails:v3];
}

- (void)tipQueue_populateInitialFetches
{
  v9 = [(PXStorageTipCollectionViewDataSectionManager *)self photoLibrary];
  for (i = 0; i != 3; ++i)
  {
    v4 = [PXStorageManagementUtility storageTipAssetFetchOptionsForType:i photoLibrary:v9];
    v5 = [PXStorageManagementUtility storageTipAssetCollectionForType:i photoLibrary:v9];
    v6 = [MEMORY[0x1E6978630] fetchAssetsInAssetCollection:v5 options:v4];
    v7 = [(PXStorageTipCollectionViewDataSectionManager *)self fetchResults];
    v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
    [v7 setObject:v6 forKeyedSubscript:v8];
  }
}

- (id)createDataSection
{
  v3 = [(PXStorageTipCollectionViewDataSectionManager *)self pendingDataSection];
  [(PXStorageTipCollectionViewDataSectionManager *)self setPendingDataSection:0];

  return v3;
}

- (PXStorageTipCollectionViewDataSectionManager)initWithPhotoLibrary:(id)a3
{
  v5 = a3;
  v19.receiver = self;
  v19.super_class = PXStorageTipCollectionViewDataSectionManager;
  v6 = [(PXDataSectionManager *)&v19 initWithChildDataSectionManagers:MEMORY[0x1E695E0F0]];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_photoLibrary, a3);
    [(PHPhotoLibrary *)v7->_photoLibrary px_registerChangeObserver:v7];
    v8 = dispatch_queue_create("storageTipQueue", 0);
    tipQueue = v7->_tipQueue;
    v7->_tipQueue = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF90]);
    fetchResults = v7->_fetchResults;
    v7->_fetchResults = v10;

    v12 = [[PXStorageTipCollectionViewDataSection alloc] initWithZerosWithStorageTipCount:3];
    pendingDataSection = v7->_pendingDataSection;
    v7->_pendingDataSection = v12;

    v14 = [off_1E7721450 changeDetailsWithNoIncrementalChanges];
    [(PXDataSectionManager *)v7 updateDataSectionWithChangeDetails:v14];

    v15 = v7->_tipQueue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __69__PXStorageTipCollectionViewDataSectionManager_initWithPhotoLibrary___block_invoke;
    block[3] = &unk_1E774C648;
    v18 = v7;
    dispatch_async(v15, block);
  }

  return v7;
}

uint64_t __69__PXStorageTipCollectionViewDataSectionManager_initWithPhotoLibrary___block_invoke(uint64_t a1)
{
  [*(a1 + 32) tipQueue_populateInitialFetches];
  v2 = *(a1 + 32);

  return [v2 tipQueue_createPendingDataSection];
}

@end