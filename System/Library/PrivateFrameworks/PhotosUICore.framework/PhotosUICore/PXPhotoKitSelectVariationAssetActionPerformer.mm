@interface PXPhotoKitSelectVariationAssetActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6;
+ (NSString)editOperationType;
- (void)cancelActionWithCompletionHandler:(id)a3;
- (void)performBackgroundTask;
@end

@implementation PXPhotoKitSelectVariationAssetActionPerformer

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6
{
  v8 = a3;
  if ([a4 assetCollectionType] == 7)
  {
    v9 = 0;
  }

  else
  {
    v10 = [a1 editOperationManager];
    v11 = [a1 editOperationType];
    v9 = [v10 canPerformEditOperationWithType:v11 onAsset:v8];
  }

  return v9;
}

+ (NSString)editOperationType
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  [v4 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitSelectVariationAssetActionPerformer.m" lineNumber:36 description:{@"Method %s is a responsibility of subclass %@", "+[PXPhotoKitSelectVariationAssetActionPerformer editOperationType]", v6}];

  abort();
}

- (void)cancelActionWithCompletionHandler:(id)a3
{
  v6 = a3;
  v4 = [(PXPhotoKitSelectVariationAssetActionPerformer *)self progress];
  [v4 cancel];

  v5 = v6;
  if (v6)
  {
    (*(v6 + 2))(v6);
    v5 = v6;
  }
}

- (void)performBackgroundTask
{
  v3 = [MEMORY[0x1E696AE38] progressWithTotalUnitCount:0];
  [(PXPhotoKitSelectVariationAssetActionPerformer *)self setProgress:v3];
  v4 = [objc_opt_class() editOperationManager];
  v5 = [objc_opt_class() editOperationType];
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = 1;
  v21[0] = 0;
  v21[1] = v21;
  v21[2] = 0x3032000000;
  v21[3] = __Block_byref_object_copy__50732;
  v21[4] = __Block_byref_object_dispose__50733;
  v22 = 0;
  v6 = dispatch_group_create();
  v7 = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __70__PXPhotoKitSelectVariationAssetActionPerformer_performBackgroundTask__block_invoke;
  v13[3] = &unk_1E7731F18;
  v8 = v6;
  v14 = v8;
  v9 = v4;
  v15 = v9;
  v10 = v5;
  v16 = v10;
  v17 = self;
  v19 = v21;
  v20 = v23;
  v11 = v3;
  v18 = v11;
  [v7 enumerateKeysAndObjectsUsingBlock:v13];

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__PXPhotoKitSelectVariationAssetActionPerformer_performBackgroundTask__block_invoke_199;
  v12[3] = &unk_1E7746888;
  v12[4] = self;
  v12[5] = v23;
  v12[6] = v21;
  dispatch_group_notify(v8, MEMORY[0x1E69E96A0], v12);

  _Block_object_dispose(v21, 8);
  _Block_object_dispose(v23, 8);
}

void __70__PXPhotoKitSelectVariationAssetActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  obj = a3;
  v4 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v19;
    do
    {
      v7 = 0;
      do
      {
        if (*v19 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v18 + 1) + 8 * v7);
        dispatch_group_enter(*(a1 + 32));
        [*(a1 + 40) enumerateEditOperationsPerformedOnAsset:v8 usingBlock:&__block_literal_global_50736];
        v9 = *(a1 + 40);
        v10 = *(a1 + 48);
        v11 = [*(a1 + 56) delegate];
        v12 = [v11 undoManagerForActionPerformer:*(a1 + 56)];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __70__PXPhotoKitSelectVariationAssetActionPerformer_performBackgroundTask__block_invoke_3;
        v15[3] = &unk_1E7740610;
        v15[4] = v8;
        v17 = *(a1 + 72);
        v16 = *(a1 + 32);
        v13 = [v9 performEditOperationWithType:v10 asset:v8 undoManager:v12 completionHandler:v15];

        if (v13)
        {
          [*(a1 + 64) px_appendChild:v13 withPendingUnitCount:1];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v5);
  }
}

void __70__PXPhotoKitSelectVariationAssetActionPerformer_performBackgroundTask__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if ((a2 & 1) == 0)
  {
    v5;
    px_dispatch_on_main_queue();
  }

  dispatch_group_leave(*(a1 + 40));
}

void __70__PXPhotoKitSelectVariationAssetActionPerformer_performBackgroundTask__block_invoke_4(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = PLUIGetLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(*(*(a1 + 48) + 8) + 40);
    v8 = 138412546;
    v9 = v3;
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_1A3C1C000, v2, OS_LOG_TYPE_ERROR, "Error performEditOperationWithType for asset:%@ error:%@", &v8, 0x16u);
  }

  *(*(*(a1 + 56) + 8) + 24) = 0;
  v5 = *(*(a1 + 48) + 8);
  v7 = *(v5 + 40);
  v6 = (v5 + 40);
  if (!v7)
  {
    objc_storeStrong(v6, *(a1 + 40));
  }
}

void __70__PXPhotoKitSelectVariationAssetActionPerformer_performBackgroundTask__block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  if (PXAssetVariationTypeForEditOperationType(a2) != -1)
  {
    [v4 cancel];
  }
}

@end