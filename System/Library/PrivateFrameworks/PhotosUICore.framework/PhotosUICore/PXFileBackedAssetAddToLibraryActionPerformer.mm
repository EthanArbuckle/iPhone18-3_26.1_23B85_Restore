@interface PXFileBackedAssetAddToLibraryActionPerformer
- (void)performUserInteractionTask;
@end

@implementation PXFileBackedAssetAddToLibraryActionPerformer

- (void)performUserInteractionTask
{
  v3 = [(PXAssetActionPerformer *)self selectionSnapshot];
  if (([v3 isAnyItemSelected] & 1) == 0)
  {
    v4 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"No items selected for add to library action"];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v4];
    goto LABEL_9;
  }

  v4 = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
  v5 = [MEMORY[0x1E695DF70] array];
  v6 = [v3 dataSource];
  if (!v6)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFileBackedAssetAddToLibraryActionPerformer performUserInteractionTask]"];
    v13 = objc_opt_class();
    v14 = NSStringFromClass(v13);
    [v11 handleFailureInFunction:v12 file:@"PXFileBackedAssetAddToLibraryActionPerformer.m" lineNumber:36 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"snapshot.dataSource", v14}];
LABEL_12:

    goto LABEL_4;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFileBackedAssetAddToLibraryActionPerformer performUserInteractionTask]"];
    v15 = objc_opt_class();
    v14 = NSStringFromClass(v15);
    v16 = [v6 px_descriptionForAssertionMessage];
    [v11 handleFailureInFunction:v12 file:@"PXFileBackedAssetAddToLibraryActionPerformer.m" lineNumber:36 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"snapshot.dataSource", v14, v16}];

    goto LABEL_12;
  }

LABEL_4:
  v7 = [v3 selectedIndexPaths];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __74__PXFileBackedAssetAddToLibraryActionPerformer_performUserInteractionTask__block_invoke;
  v22[3] = &unk_1E7744508;
  v8 = v6;
  v23 = v8;
  v9 = v5;
  v24 = v9;
  [v7 enumerateItemIndexPathsUsingBlock:v22];

  if (v4)
  {
    objc_initWeak(&location, self);
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = __74__PXFileBackedAssetAddToLibraryActionPerformer_performUserInteractionTask__block_invoke_2;
    v19[3] = &unk_1E774C648;
    v20 = v9;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __74__PXFileBackedAssetAddToLibraryActionPerformer_performUserInteractionTask__block_invoke_3;
    v17[3] = &unk_1E7749D00;
    objc_copyWeak(&v18, &location);
    [v4 performChanges:v19 completionHandler:v17];
    objc_destroyWeak(&v18);

    objc_destroyWeak(&location);
  }

  else
  {
    v10 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Unable to acquire photo library to save to"];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v10];
  }

LABEL_9:
}

void __74__PXFileBackedAssetAddToLibraryActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 32);
  v4 = a2[1];
  v14[0] = *a2;
  v14[1] = v4;
  v5 = [v3 assetAtItemIndexPath:v14];
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFileBackedAssetAddToLibraryActionPerformer performUserInteractionTask]_block_invoke"];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v8 handleFailureInFunction:v9 file:@"PXFileBackedAssetAddToLibraryActionPerformer.m" lineNumber:38 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"[dataSource assetAtItemIndexPath:indexPath]", v11}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"-[PXFileBackedAssetAddToLibraryActionPerformer performUserInteractionTask]_block_invoke"];
    v12 = objc_opt_class();
    v11 = NSStringFromClass(v12);
    v13 = [v5 px_descriptionForAssertionMessage];
    [v8 handleFailureInFunction:v9 file:@"PXFileBackedAssetAddToLibraryActionPerformer.m" lineNumber:38 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"[dataSource assetAtItemIndexPath:indexPath]", v11, v13}];

    goto LABEL_6;
  }

LABEL_3:
  v6 = *(a1 + 40);
  v7 = [v5 url];
  [v6 addObject:v7];
}

void __74__PXFileBackedAssetAddToLibraryActionPerformer_performUserInteractionTask__block_invoke_2(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v7 = 0u;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v8;
    do
    {
      v5 = 0;
      do
      {
        if (*v8 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = [MEMORY[0x1E6978698] creationRequestForAssetFromImageAtFileURL:{*(*(&v7 + 1) + 8 * v5++), v7}];
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v7 objects:v11 count:16];
    }

    while (v3);
  }
}

void __74__PXFileBackedAssetAddToLibraryActionPerformer_performUserInteractionTask__block_invoke_3(uint64_t a1, char a2, void *a3)
{
  v5 = a3;
  objc_copyWeak(&v6, (a1 + 32));
  v7 = a2;
  v5;
  px_dispatch_on_main_queue();
}

void __74__PXFileBackedAssetAddToLibraryActionPerformer_performUserInteractionTask__block_invoke_4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  [WeakRetained _completeSaveWithSuccess:*(a1 + 48) error:*(a1 + 32)];
}

@end