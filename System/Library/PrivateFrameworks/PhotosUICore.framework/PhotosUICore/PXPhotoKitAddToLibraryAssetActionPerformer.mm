@interface PXPhotoKitAddToLibraryAssetActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5;
- (void)_simulateImportForAssetReference:(id)a3 assetImportStatusManager:(id)a4;
- (void)importAssets:(id)a3;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAddToLibraryAssetActionPerformer

+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5
{
  v6 = MEMORY[0x1E69DCAB8];
  v7 = a3;
  v8 = [v6 systemImageNamed:@"square.and.arrow.down"];
  v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithImage:v8 style:0 target:v7 action:a4];

  return v9;
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (!v11 || [v11 sourceType] != 8 || objc_msgSend(v12, "assetCollectionType") != 7)
  {
    v16 = 0;
    goto LABEL_8;
  }

  v15 = v12;
  if (!v15)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [v18 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAddToLibraryAssetActionPerformer.m" lineNumber:28 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollection", v20}];
LABEL_11:

    goto LABEL_6;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v20 = NSStringFromClass(v21);
    v22 = [v15 px_descriptionForAssertionMessage];
    [v18 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAddToLibraryAssetActionPerformer.m" lineNumber:28 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollection", v20, v22}];

    goto LABEL_11;
  }

LABEL_6:
  v16 = [v15 status] == 3;

LABEL_8:
  return v16;
}

- (void)importAssets:(id)a3
{
  v4 = a3;
  v5 = objc_alloc_init(MEMORY[0x1E6978690]);
  [v5 setShouldDownloadOrCloudReReferenceMissingResources:1];
  v6 = [MEMORY[0x1E69789A8] px_systemPhotoLibrary];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __59__PXPhotoKitAddToLibraryAssetActionPerformer_importAssets___block_invoke;
  v12[3] = &unk_1E774A1B8;
  v13 = v4;
  v14 = v5;
  v15 = self;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __59__PXPhotoKitAddToLibraryAssetActionPerformer_importAssets___block_invoke_2;
  v9[3] = &unk_1E774B730;
  v10 = v13;
  v11 = self;
  v7 = v13;
  v8 = v5;
  [v6 performChanges:v12 completionHandler:v9];
}

void __59__PXPhotoKitAddToLibraryAssetActionPerformer_importAssets___block_invoke(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v2 = *(a1 + 32);
  v3 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v10;
    do
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = [MEMORY[0x1E6978698] creationRequestForAssetCopyFromAsset:*(*(&v9 + 1) + 8 * v6) options:{*(a1 + 40), v9}];
        v8 = [*(a1 + 48) importSessionID];
        [v7 setImportSessionID:v8];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }
}

void __59__PXPhotoKitAddToLibraryAssetActionPerformer_importAssets___block_invoke_2(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  *(a1 + 32);
  v5 = v4;
  px_dispatch_on_main_queue();
}

uint64_t __59__PXPhotoKitAddToLibraryAssetActionPerformer_importAssets___block_invoke_3(uint64_t a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  v3 = PLSharingGetLog();
  v4 = v3;
  if (v2 == 1)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      v5 = [*(a1 + 32) count];
      *buf = 134217984;
      v18 = v5;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_DEFAULT, "[AddToLibrary] Successfully started to Add %lu assets", buf, 0xCu);
    }

    v6 = MEMORY[0x1E6991F28];
    v15 = *MEMORY[0x1E6991E20];
    v7 = objc_opt_class();
    v8 = NSStringFromClass(v7);
    v16 = v8;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v16 forKeys:&v15 count:1];
    [v6 sendEvent:@"com.apple.photos.CPAnalytics.addAssetsToLibrary" withPayload:{v9, v15}];

    v10 = *(a1 + 40);
    v11 = 1;
    v12 = 0;
  }

  else
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      v13 = *(a1 + 48);
      *buf = 138412290;
      v18 = v13;
      _os_log_impl(&dword_1A3C1C000, v4, OS_LOG_TYPE_ERROR, "[AddToLibrary] Failed to start to Add to Library, err: %@", buf, 0xCu);
    }

    v10 = *(a1 + 40);
    v12 = *(a1 + 48);
    v11 = 0;
  }

  return [v10 completeUserInteractionTaskWithSuccess:v11 error:v12];
}

- (void)_simulateImportForAssetReference:(id)a3 assetImportStatusManager:(id)a4
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = PLSharingGetLog();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 asset];
    *buf = 138412290;
    v24 = v9;
    _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_DEFAULT, "[AddToLibrary] Simulating import for asset: %@", buf, 0xCu);
  }

  v10 = +[PXCompleteMyMomentSettings sharedInstance];
  v11 = [v10 simulateImportFailure];

  if (v11)
  {
    v12 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Simulated failure"];
  }

  else
  {
    v12 = 0;
  }

  [v7 beginSimulatedImportForAssetReference:v6];
  v13 = dispatch_time(0, 5000000000);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __104__PXPhotoKitAddToLibraryAssetActionPerformer__simulateImportForAssetReference_assetImportStatusManager___block_invoke;
  block[3] = &unk_1E773F018;
  v18 = v7;
  v19 = v6;
  v22 = v11;
  v20 = self;
  v21 = v12;
  v14 = v12;
  v15 = v6;
  v16 = v7;
  dispatch_after(v13, MEMORY[0x1E69E96A0], block);
}

uint64_t __104__PXPhotoKitAddToLibraryAssetActionPerformer__simulateImportForAssetReference_assetImportStatusManager___block_invoke(uint64_t a1)
{
  [*(a1 + 32) completeSimulatedImportForAssetReference:*(a1 + 40) withSuccess:(*(a1 + 64) & 1) == 0];
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = (*(a1 + 64) & 1) == 0;

  return [v2 completeUserInteractionTaskWithSuccess:v4 error:v3];
}

- (void)performUserInteractionTask
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = [(PXAssetActionPerformer *)self selectionSnapshot];
  v5 = [v4 selectedIndexPaths];
  v6 = [v5 count];

  if (!v4 || !v6)
  {
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:0];
    goto LABEL_13;
  }

  v7 = [v4 dataSource];
  if (v7)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_5;
    }

    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v21 = objc_opt_class();
    v20 = NSStringFromClass(v21);
    v22 = [v7 px_descriptionForAssertionMessage];
    [v18 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAddToLibraryAssetActionPerformer.m" lineNumber:61 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"selectionSnapshot.dataSource", v20, v22}];
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = objc_opt_class();
    v20 = NSStringFromClass(v19);
    [v18 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAddToLibraryAssetActionPerformer.m" lineNumber:61 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"selectionSnapshot.dataSource", v20}];
  }

LABEL_5:
  v8 = [(PXPhotoKitAssetActionPerformer *)self importStatusManager];
  v9 = v8;
  if (v8 && [v8 supportsStateSimulation])
  {
    v10 = [v4 selectedIndexPaths];
    v28[0] = MEMORY[0x1E69E9820];
    v28[1] = 3221225472;
    v28[2] = __72__PXPhotoKitAddToLibraryAssetActionPerformer_performUserInteractionTask__block_invoke;
    v28[3] = &unk_1E7743210;
    v29 = v7;
    v30 = self;
    v31 = v9;
    [v10 enumerateItemIndexPathsUsingBlock:v28];

    v11 = v29;
  }

  else
  {
    v12 = [MEMORY[0x1E695DF70] arrayWithCapacity:v6];
    v13 = [v4 selectedIndexPaths];
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __72__PXPhotoKitAddToLibraryAssetActionPerformer_performUserInteractionTask__block_invoke_2;
    v23[3] = &unk_1E773BA50;
    v24 = v12;
    v14 = v7;
    v26 = self;
    v27 = a2;
    v25 = v14;
    v11 = v12;
    [v13 enumerateItemIndexPathsUsingBlock:v23];

    v15 = [v14 identifier];
    *&buf[8] = xmmword_1A5380D10;
    *buf = v15;
    v33 = 0x7FFFFFFFFFFFFFFFLL;
    v16 = [v14 assetCollectionAtSectionIndexPath:buf];
    v17 = PLSharingGetLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218242;
      *&buf[4] = v6;
      *&buf[12] = 2112;
      *&buf[14] = v16;
      _os_log_impl(&dword_1A3C1C000, v17, OS_LOG_TYPE_DEFAULT, "[AddToLibrary] Starting to Add %lu assets from Moment Share: %@.", buf, 0x16u);
    }

    [(PXPhotoKitAddToLibraryAssetActionPerformer *)self importAssets:v11];
  }

LABEL_13:
}

void __72__PXPhotoKitAddToLibraryAssetActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 32);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v5 = [v3 assetReferenceAtItemIndexPath:v6];
  [*(a1 + 40) _simulateImportForAssetReference:v5 assetImportStatusManager:*(a1 + 48)];
}

void __72__PXPhotoKitAddToLibraryAssetActionPerformer_performUserInteractionTask__block_invoke_2(void *a1, _OWORD *a2)
{
  v4 = a1[4];
  v3 = a1[5];
  v5 = a2[1];
  v16[0] = *a2;
  v16[1] = v5;
  v6 = [v3 assetAtItemIndexPath:v16];
  if (!v6)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = a1[6];
    v8 = a1[7];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v7 handleFailureInMethod:v8 object:v9 file:@"PXPhotoKitAddToLibraryAssetActionPerformer.m" lineNumber:76 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[dataSource assetAtItemIndexPath:indexPath]", v11}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = a1[6];
    v12 = a1[7];
    v14 = objc_opt_class();
    v11 = NSStringFromClass(v14);
    v15 = [v6 px_descriptionForAssertionMessage];
    [v7 handleFailureInMethod:v12 object:v13 file:@"PXPhotoKitAddToLibraryAssetActionPerformer.m" lineNumber:76 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[dataSource assetAtItemIndexPath:indexPath]", v11, v15}];

    goto LABEL_6;
  }

LABEL_3:
  [v4 addObject:v6];
}

@end