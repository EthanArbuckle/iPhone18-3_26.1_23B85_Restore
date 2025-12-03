@interface PXPhotoKitAssetCollectionCreateMemoryActionPerformer
+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs;
+ (id)createBarButtonItemForAssetCollectionReference:(id)reference withTarget:(id)target action:(SEL)action;
+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs;
- (void)performBackgroundTask;
- (void)performUserInteractionTask;
@end

@implementation PXPhotoKitAssetCollectionCreateMemoryActionPerformer

- (void)performBackgroundTask
{
  assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
  displayTitleInfo = [(PXPhotoKitAssetCollectionActionPerformer *)self displayTitleInfo];
  people = [(PXPhotoKitAssetCollectionActionPerformer *)self people];
  v16[0] = 0;
  v16[1] = v16;
  v16[2] = 0x2020000000;
  v17 = 0;
  photoLibrary = [assetCollection photoLibrary];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __77__PXPhotoKitAssetCollectionCreateMemoryActionPerformer_performBackgroundTask__block_invoke;
  v11[3] = &unk_1E77448A8;
  v7 = assetCollection;
  v12 = v7;
  v8 = displayTitleInfo;
  v13 = v8;
  v9 = people;
  v14 = v9;
  v15 = v16;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __77__PXPhotoKitAssetCollectionCreateMemoryActionPerformer_performBackgroundTask__block_invoke_2;
  v10[3] = &unk_1E7730900;
  v10[4] = self;
  v10[5] = v16;
  [photoLibrary performChanges:v11 completionHandler:v10];

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
  assetCollection = [(PXAssetCollectionActionPerformer *)self assetCollection];
  v9[0] = assetCollection;
  v8[1] = *MEMORY[0x1E6991E20];
  v5 = objc_opt_class();
  v6 = NSStringFromClass(v5);
  v9[1] = v6;
  v7 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v3 sendEvent:@"com.apple.photos.CPAnalytics.memoryCreatedViaAddToMemories" withPayload:v7];

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:1 error:0];
}

+ (id)localizedTitleForUseCase:(unint64_t)case assetCollectionReference:(id)reference withInputs:(id)inputs
{
  referenceCopy = reference;
  inputsCopy = inputs;
  if (case > 2)
  {
    v9 = 0;
  }

  else
  {
    v9 = PXLocalizedStringFromTable(off_1E7730920[case], @"PhotosUICore");
  }

  return v9;
}

+ (id)createBarButtonItemForAssetCollectionReference:(id)reference withTarget:(id)target action:(SEL)action
{
  v6 = MEMORY[0x1E69DC708];
  targetCopy = target;
  v8 = [[v6 alloc] initWithBarButtonSystemItem:4 target:targetCopy action:action];

  return v8;
}

+ (BOOL)canPerformOnAssetCollectionReference:(id)reference withInputs:(id)inputs
{
  assetCollection = [reference assetCollection];
  if (assetCollection)
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      v13 = objc_opt_class();
      v14 = NSStringFromClass(v13);
      px_descriptionForAssertionMessage = [assetCollection px_descriptionForAssertionMessage];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1429 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"assetCollectionReference.assetCollection", v14, px_descriptionForAssertionMessage}];
    }

    if ([assetCollection assetCollectionType] != 7)
    {
      objc_opt_class();
      v7 = objc_opt_isKindOfClass() ^ 1;
      goto LABEL_7;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = objc_opt_class();
    v11 = NSStringFromClass(v10);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXPhotoKitAssetCollectionActionManager.m" lineNumber:1429 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"assetCollectionReference.assetCollection", v11}];
  }

  v7 = 0;
LABEL_7:

  return v7 & 1;
}

@end