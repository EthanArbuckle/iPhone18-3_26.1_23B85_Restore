@interface PXPhotoKitAssetCollectionCreateMemoryActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4;
+ (id)createBarButtonItemForAssetCollectionReference:(id)a3 withTarget:(id)a4 action:(SEL)a5;
+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionCreateMemoryActionPerformer

- (void)performBackgroundTask
{
  v3 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v4 = [(PXPhotoKitAssetCollectionActionPerformer *)self displayTitleInfo];
  v5 = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  v6 = [v3 photoLibrary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__PXPhotoKitAssetCollectionCreateMemoryActionPerformer_performBackgroundTask__block_invoke;
  v11[3] = &unk_1E77448A8;
  v7 = v3;
  v12 = v7;
  v8 = v4;
  v13 = v8;
  v9 = v5;
  v14 = v9;
  v15 = v16;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__PXPhotoKitAssetCollectionCreateMemoryActionPerformer_performBackgroundTask__block_invoke_2;
  v10[3] = &unk_1E7730900;
  v10[4] = self;
  v10[5] = v16;
  [v6 performChanges:v11 completionHandler:v10];

  _Block_object_dispose(v16, 8);
}

void __77__PXPhotoKitAssetCollectionCreateMemoryActionPerformer_performBackgroundTask__block_invoke(void *a1)
{
  v2 = [MEMORY[0x1E6978900] px_creationRequestForAssetCollection:a1[4] displayTitleInfo:a1[5] people:a1[6]];
  [v2 setUserCreatedFromSourceObject:a1[4]];
  *(*(a1[7] + 8) + 24) = v2 != 0;
}

uint64_t __77__PXPhotoKitAssetCollectionCreateMemoryActionPerformer_performBackgroundTask__block_invoke_3(uint64_t a1)
{
  if (*(*(*(a1 + 48) + 8) + 24) == 1)
  {
    v1 = *(a1 + 56);
  }

  else
  {
    v1 = 0;
  }

  return [*(a1 + 32) completeBackgroundTaskWithSuccess:v1 & 1 error:*(a1 + 40)];
}

- (void)performUserInteractionTask
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = MEMORY[0x1E6991F28];
  v8[0] = *MEMORY[0x1E6991E08];
  v4 = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v9[0] = v4;
  v8[1] = *MEMORY[0x1E6991E20];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v3 sendEvent:@"com.apple.photos.CPAnalytics.memoryCreatedViaAddToMemories" withPayload:v7];

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
}

+ (id)localizedTitleForUseCase:(unint64_t)a3 assetCollectionReference:(id)a4 withInputs:(id)a5
{
  v7 = a4;
  v8 = a5;
  if (a3 > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = PXLocalizedStringFromTable(off_1E7730920[a3], @"PhotosUICore");
  }

  return v9;
}

+ (id)createBarButtonItemForAssetCollectionReference:(id)a3 withTarget:(id)a4 action:(SEL)a5
{
  v6 = MEMORY[0x1E69DC708];
  v7 = a4;
  v8 = [[v6 alloc] initWithBarButtonSystemItem:4 target:v7 action:a5];

  return v8;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)a3 withInputs:(id)a4
{
  v6 = [a3 assetCollection];
  if (v6)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v12 = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      v15 = [v6 px_descriptionForAssertionMessage];
      [v12 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1429 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v14, v15}];
    }

    if ([v6 assetCollectionType] != 7)
    {
      objc_opt_class();
      v7 = objc_opt_isKindOfClass() ^ 1;
      goto LABEL_7;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [v9 handleFailureInMethod:a2 object:a1 file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1429 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v11}];
  }

  v7 = 0;
LABEL_7:

  return v7 & 1;
}

@end