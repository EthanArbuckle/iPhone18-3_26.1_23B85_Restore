@interface PXPhotoKitMoveToLibraryActionPerformer
+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5;
+ (id)createPreviewActionWithTitle:(id)a3 image:(id)a4 handler:(id)a5;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitMoveToLibraryActionPerformer

+ (id)createBarButtonItemWithTarget:(id)a3 action:(SEL)a4 actionManager:(id)a5
{
  v7 = a3;
  v8 = [a5 selectionManager];
  v9 = [v8 selectionSnapshot];
  v10 = [v9 selectedIndexPaths];
  v11 = [v10 itemCount];

  if (v11)
  {
    PXLocalizedSharedLibraryAssetCountForUsage(v11, 0, 0, 15);
  }

  v12 = [PXLabelBarButtonItem alloc];
  v13 = PXLocalizedStringFromTable(@"PXSelectItems", @"PhotosUICore");
  v14 = [(PXLabelBarButtonItem *)v12 initWithTitle:v13 style:0 target:v7 action:a4];

  return v14;
}

+ (id)createPreviewActionWithTitle:(id)a3 image:(id)a4 handler:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E69DC628];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __85__PXPhotoKitMoveToLibraryActionPerformer_createPreviewActionWithTitle_image_handler___block_invoke;
  v12[3] = &unk_1E7742C90;
  v13 = v7;
  v9 = v7;
  v10 = [v8 actionWithTitle:a3 image:a4 identifier:0 handler:v12];

  return v10;
}

- (void)performUserInteractionTask
{
  v3 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_Action_MoveToLibrary_Message");
  v4 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_Action_MoveToPersonalLibrary");
  v5 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v6 = _PXSharedLibraryFetchAssetsFromAssets(v5, 0, 1, 0);

  v7 = [v6 count];
  if (v7)
  {
    PXLocalizedSharedLibraryAssetCountForUsage(v7, 0, 0, 16);
  }

  v8 = PXLocalizedSharedLibraryString(@"PXSharedLibrary_Action_MoveToSharedLibrary");
  v9 = [(PXPhotoKitAssetActionPerformer *)self assets];
  v10 = _PXSharedLibraryFetchAssetsFromAssets(v9, 0, 0, 0);

  v11 = [v10 count];
  if (v11)
  {
    PXLocalizedSharedLibraryAssetCountForUsage(v11, 0, 0, 17);
  }

  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __68__PXPhotoKitMoveToLibraryActionPerformer_performUserInteractionTask__block_invoke;
  aBlock[3] = &unk_1E772E780;
  aBlock[4] = self;
  v12 = _Block_copy(aBlock);
  v13 = [MEMORY[0x1E69DC650] alertControllerWithTitle:0 message:v3 preferredStyle:0];
  v14 = MEMORY[0x1E69DC648];
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 3221225472;
  v29[2] = __68__PXPhotoKitMoveToLibraryActionPerformer_performUserInteractionTask__block_invoke_2;
  v29[3] = &unk_1E7741C90;
  v29[4] = self;
  v15 = v12;
  v30 = v15;
  v16 = [v14 actionWithTitle:v4 style:0 handler:v29];
  [v13 addAction:v16];

  v17 = MEMORY[0x1E69DC648];
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 3221225472;
  v27[2] = __68__PXPhotoKitMoveToLibraryActionPerformer_performUserInteractionTask__block_invoke_4;
  v27[3] = &unk_1E7741C90;
  v27[4] = self;
  v18 = v15;
  v28 = v18;
  v19 = [v17 actionWithTitle:v8 style:0 handler:v27];
  [v13 addAction:v19];

  v20 = MEMORY[0x1E69DC648];
  v21 = PXLocalizedStringFromTable(@"PXCancel", @"PhotosUICore");
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = __68__PXPhotoKitMoveToLibraryActionPerformer_performUserInteractionTask__block_invoke_6;
  v26[3] = &unk_1E7749600;
  v26[4] = self;
  v22 = [v20 actionWithTitle:v21 style:1 handler:v26];
  [v13 addAction:v22];

  if (![(PXActionPerformer *)self presentViewController:v13])
  {
    v23 = PLUIGetLog();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&dword_1A3C1C000, v23, OS_LOG_TYPE_ERROR, "Failed to present move to library action dialog", buf, 2u);
    }

    v24 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Failed to present move to library dialog."];
    [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:0 error:v24];
  }
}

id __68__PXPhotoKitMoveToLibraryActionPerformer_performUserInteractionTask__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) assets];
  v2 = [PXPhotoKitAssetsDataSource dataSourceWithAssets:v1];
  v3 = [objc_alloc(MEMORY[0x1E696AC90]) initWithIndexesInRange:{0, objc_msgSend(v2, "numberOfItemsInSection:", 0)}];
  v4 = [off_1E7721768 indexPathSetWithItemIndexes:v3 dataSourceIdentifier:objc_msgSend(v2 section:{"identifier"), 0}];
  v5 = [[off_1E77218D8 alloc] initWithDataSource:v2 selectedIndexPaths:v4];

  return v5;
}

void __68__PXPhotoKitMoveToLibraryActionPerformer_performUserInteractionTask__block_invoke_2(uint64_t a1)
{
  v2 = [*(a1 + 32) createPerformerWithClass:objc_opt_class() actionType:*off_1E7721B10];
  if (v2)
  {
    v3 = (*(*(a1 + 40) + 16))();
    [v2 setSelectionSnapshot:v3];

    v4 = [*(a1 + 32) delegate];
    [v2 setDelegate:v4];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__PXPhotoKitMoveToLibraryActionPerformer_performUserInteractionTask__block_invoke_3;
    v7[3] = &unk_1E774C5C0;
    v7[4] = *(a1 + 32);
    [v2 performActionWithCompletionHandler:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Move to Personal Library failed."];
    [v5 completeUserInteractionTaskWithSuccess:0 error:v6];
  }
}

void __68__PXPhotoKitMoveToLibraryActionPerformer_performUserInteractionTask__block_invoke_4(uint64_t a1)
{
  v2 = [*(a1 + 32) createPerformerWithClass:objc_opt_class() actionType:*off_1E7721B18];
  if (v2)
  {
    v3 = (*(*(a1 + 40) + 16))();
    [v2 setSelectionSnapshot:v3];

    v4 = [*(a1 + 32) delegate];
    [v2 setDelegate:v4];

    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __68__PXPhotoKitMoveToLibraryActionPerformer_performUserInteractionTask__block_invoke_5;
    v7[3] = &unk_1E774C5C0;
    v7[4] = *(a1 + 32);
    [v2 performActionWithCompletionHandler:v7];
  }

  else
  {
    v5 = *(a1 + 32);
    v6 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Move to Shared Library failed."];
    [v5 completeUserInteractionTaskWithSuccess:0 error:v6];
  }
}

void __68__PXPhotoKitMoveToLibraryActionPerformer_performUserInteractionTask__block_invoke_6(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [MEMORY[0x1E696ABC0] px_genericErrorWithDebugDescription:@"Move to Library canceled."];
  [v1 completeUserInteractionTaskWithSuccess:0 error:v2];
}

@end