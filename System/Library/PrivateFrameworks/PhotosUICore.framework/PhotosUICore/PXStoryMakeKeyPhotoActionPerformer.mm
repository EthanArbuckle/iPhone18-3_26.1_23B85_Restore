@interface PXStoryMakeKeyPhotoActionPerformer
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6 error:(id *)a7;
+ (BOOL)providesCanPerformError;
+ (id)createPreviewActionWithTitle:(id)a3 image:(id)a4 handler:(id)a5;
- (void)performUserInteractionTask;
@end

@implementation PXStoryMakeKeyPhotoActionPerformer

+ (id)createPreviewActionWithTitle:(id)a3 image:(id)a4 handler:(id)a5
{
  v7 = a5;
  v8 = MEMORY[0x1E69DC628];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__PXStoryMakeKeyPhotoActionPerformer_createPreviewActionWithTitle_image_handler___block_invoke;
  v12[3] = &unk_1E7742C90;
  v13 = v7;
  v9 = v7;
  v10 = [v8 actionWithTitle:a3 image:a4 identifier:0 handler:v12];

  return v10;
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4 person:(id)a5 socialGroup:(id)a6 error:(id *)a7
{
  if (a3)
  {
    return [a3 needsSensitivityProtection] ^ 1;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)providesCanPerformError
{
  v4.receiver = a1;
  v4.super_class = &OBJC_METACLASS___PXStoryMakeKeyPhotoActionPerformer;
  v2 = objc_msgSendSuper2(&v4, sel_providesCanPerformError);
  if ((v2 & 1) == 0)
  {
    PXAssertGetLog();
  }

  return v2;
}

- (void)performUserInteractionTask
{
  v3 = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  v4 = [v3 allKeys];
  v10 = [v4 firstObject];

  v5 = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  v6 = [v5 objectForKeyedSubscript:v10];
  v7 = [v6 firstObject];

  v8 = [(PXStoryAssetActionPerformer *)self storyViewActionPerformer];
  v9 = v8;
  if (v8)
  {
    [v8 makeAssetKeyPhoto:v7];
  }

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:v9 != 0 error:0];
}

@end