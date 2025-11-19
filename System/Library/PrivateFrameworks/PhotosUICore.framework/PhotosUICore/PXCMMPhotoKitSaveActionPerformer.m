@interface PXCMMPhotoKitSaveActionPerformer
- (void)performUserInteractionTask;
@end

@implementation PXCMMPhotoKitSaveActionPerformer

- (void)performUserInteractionTask
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = [(PXCMMActionPerformer *)self session];
  v4 = [v3 viewModel];
  v5 = [v4 selectionManager];
  v6 = [v5 selectionSnapshot];

  v7 = [v6 allItemsEnumerator];
  if ([v7 count])
  {
    v15 = 0;
    v8 = [MEMORY[0x1E69789A8] openPhotoLibraryWithWellKnownIdentifier:1 error:&v15];
    v9 = v15;
    if (v8)
    {
      v10 = [v3 importSessionID];
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v14[2] = __62__PXCMMPhotoKitSaveActionPerformer_performUserInteractionTask__block_invoke;
      v14[3] = &unk_1E774C5C0;
      v14[4] = self;
      PXMomentShareSaveAssetsToLibrary(v7, 1, v8, v10, v14);
    }

    else
    {
      v12 = PLSharingGetLog();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        *buf = 138412802;
        v17 = v13;
        v18 = 2048;
        v19 = self;
        v20 = 2112;
        v21 = v9;
        _os_log_impl(&dword_1A3C1C000, v12, OS_LOG_TYPE_ERROR, "<%@:%p> Failed to acquire destination library: %@", buf, 0x20u);
      }

      [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v9];
    }
  }

  else
  {
    v11 = PLSharingGetLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412546;
      v17 = objc_opt_class();
      v18 = 2048;
      v19 = self;
      _os_log_impl(&dword_1A3C1C000, v11, OS_LOG_TYPE_ERROR, "<%@:%p> Failed to perform action: Selection contained no assets to save", buf, 0x16u);
    }

    v9 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Selection contained no assets to save"];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v9];
  }
}

@end