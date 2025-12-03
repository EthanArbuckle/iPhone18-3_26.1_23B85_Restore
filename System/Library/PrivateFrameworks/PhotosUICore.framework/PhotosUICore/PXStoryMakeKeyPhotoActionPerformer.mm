@interface PXStoryMakeKeyPhotoActionPerformer
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group error:(id *)error;
+ (BOOL)providesCanPerformError;
+ (id)createPreviewActionWithTitle:(id)title image:(id)image handler:(id)handler;
- (void)performUserInteractionTask;
@end

@implementation PXStoryMakeKeyPhotoActionPerformer

+ (id)createPreviewActionWithTitle:(id)title image:(id)image handler:(id)handler
{
  handlerCopy = handler;
  v8 = MEMORY[0x1E69DC628];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __81__PXStoryMakeKeyPhotoActionPerformer_createPreviewActionWithTitle_image_handler___block_invoke;
  v12[3] = &unk_1E7742C90;
  v13 = handlerCopy;
  v9 = handlerCopy;
  v10 = [v8 actionWithTitle:title image:image identifier:0 handler:v12];

  return v10;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection person:(id)person socialGroup:(id)group error:(id *)error
{
  if (asset)
  {
    return [asset needsSensitivityProtection] ^ 1;
  }

  else
  {
    return 0;
  }
}

+ (BOOL)providesCanPerformError
{
  v4.receiver = self;
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
  assetsByAssetCollection = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  allKeys = [assetsByAssetCollection allKeys];
  firstObject = [allKeys firstObject];

  assetsByAssetCollection2 = [(PXPhotoKitAssetActionPerformer *)self assetsByAssetCollection];
  v6 = [assetsByAssetCollection2 objectForKeyedSubscript:firstObject];
  firstObject2 = [v6 firstObject];

  storyViewActionPerformer = [(PXStoryAssetActionPerformer *)self storyViewActionPerformer];
  v9 = storyViewActionPerformer;
  if (storyViewActionPerformer)
  {
    [storyViewActionPerformer makeAssetKeyPhoto:firstObject2];
  }

  [(PXActionPerformer *)self completeUserInteractionTaskWithSuccess:v9 != 0 error:0];
}

@end