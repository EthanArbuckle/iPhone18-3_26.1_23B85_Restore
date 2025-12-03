@interface PXCMMFileBackedSaveToLibraryActionPerformer
- (void)performBackgroundTask;
@end

@implementation PXCMMFileBackedSaveToLibraryActionPerformer

- (void)performBackgroundTask
{
  array = [MEMORY[0x1E695DF70] array];
  session = [(PXCMMActionPerformer *)self session];
  viewModel = [session viewModel];
  selectionManager = [viewModel selectionManager];
  selectionSnapshot = [selectionManager selectionSnapshot];

  if (selectionSnapshot)
  {
    dataSource = [selectionSnapshot dataSource];
    selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __68__PXCMMFileBackedSaveToLibraryActionPerformer_performBackgroundTask__block_invoke;
    v17[3] = &unk_1E7744508;
    v18 = array;
    v19 = dataSource;
    v10 = dataSource;
    [selectedIndexPaths enumerateItemIndexPathsUsingBlock:v17];
  }

  if ([array count])
  {
    px_deprecated_appPhotoLibrary = [MEMORY[0x1E69789A8] px_deprecated_appPhotoLibrary];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __68__PXCMMFileBackedSaveToLibraryActionPerformer_performBackgroundTask__block_invoke_2;
    v15[3] = &unk_1E774C648;
    v16 = array;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __68__PXCMMFileBackedSaveToLibraryActionPerformer_performBackgroundTask__block_invoke_193;
    v14[3] = &unk_1E774C5C0;
    v14[4] = self;
    [px_deprecated_appPhotoLibrary performChanges:v15 completionHandler:v14];
  }

  else
  {
    v12 = PLSharingGetLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *v13 = 0;
      _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_DEFAULT, "CMM File-backed save action triggered without any selected assets. This may indicate a UI logic bug", v13, 2u);
    }

    [(PXActionPerformer *)self completeBackgroundTaskWithSuccess:1 error:0];
  }
}

void __68__PXCMMFileBackedSaveToLibraryActionPerformer_performBackgroundTask__block_invoke(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v5 = [v2 assetAtItemIndexPath:v6];
  [v3 addObject:v5];
}

void __68__PXCMMFileBackedSaveToLibraryActionPerformer_performBackgroundTask__block_invoke_2(uint64_t a1)
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v1 = *(a1 + 32);
  v2 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(v1);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        v7 = [MEMORY[0x1E6978698] creationRequestForAsset];
        if ([v6 mediaType] == 1)
        {
          v8 = [v6 url];
          [v7 addResourceWithType:1 fileURL:v8 options:0];
        }

        else
        {
          v8 = PLSharingGetLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
          {
            *v9 = 0;
            _os_log_impl(&dword_1A3C1C000, v8, OS_LOG_TYPE_ERROR, "Non-photo resources aren't supported in this debug flow", v9, 2u);
          }
        }

        ++v5;
      }

      while (v3 != v5);
      v3 = [v1 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v3);
  }
}

void __68__PXCMMFileBackedSaveToLibraryActionPerformer_performBackgroundTask__block_invoke_193(uint64_t a1, char a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ((a2 & 1) == 0)
  {
    v5 = PLSharingGetLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v8 = v4;
      _os_log_impl(&dword_1A3C1C000, v5, OS_LOG_TYPE_ERROR, "Failed to save assets with error: %@", buf, 0xCu);
    }
  }

  v6 = v4;
  px_dispatch_on_main_queue();
}

@end