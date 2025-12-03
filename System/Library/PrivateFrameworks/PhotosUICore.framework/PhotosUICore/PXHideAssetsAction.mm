@interface PXHideAssetsAction
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection;
+ (BOOL)currentValueForAssets:(id)assets;
- (PXHideAssetsAction)initWithAssets:(id)assets;
- (PXHideAssetsAction)initWithAssets:(id)assets hidden:(BOOL)hidden;
- (id)actionNameLocalizationKey;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXHideAssetsAction

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  isHidden = [(PXHideAssetsAction *)self isHidden];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__PXHideAssetsAction_performUndo___block_invoke;
  v6[3] = &__block_descriptor_33_e30_v16__0__PHAssetChangeRequest_8l;
  v7 = !isHidden;
  [(PXAssetsAction *)self performAssetChanges:v6 completionHandler:undoCopy];
}

- (void)performAction:(id)action
{
  actionCopy = action;
  isHidden = [(PXHideAssetsAction *)self isHidden];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__PXHideAssetsAction_performAction___block_invoke;
  v6[3] = &__block_descriptor_33_e30_v16__0__PHAssetChangeRequest_8l;
  v7 = isHidden;
  [(PXAssetsAction *)self performAssetChanges:v6 completionHandler:actionCopy];
}

- (id)actionNameLocalizationKey
{
  if ([(PXHideAssetsAction *)self isHidden])
  {
    v2 = @"PXHideActionName";
  }

  else
  {
    v2 = @"PXUnhideActionName";
  }

  return v2;
}

- (PXHideAssetsAction)initWithAssets:(id)assets
{
  assetsCopy = assets;
  v5 = -[PXHideAssetsAction initWithAssets:hidden:](self, "initWithAssets:hidden:", assetsCopy, [objc_opt_class() toggledValueForAssets:assetsCopy]);

  return v5;
}

- (PXHideAssetsAction)initWithAssets:(id)assets hidden:(BOOL)hidden
{
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __44__PXHideAssetsAction_initWithAssets_hidden___block_invoke;
  v8 = &unk_1E773DB78;
  hiddenCopy = hidden;
  selfCopy = self;
  PXFilter();
}

uint64_t __44__PXHideAssetsAction_initWithAssets_hidden___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (*(a1 + 40) == [v3 isHidden])
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_opt_class() canPerformOnAsset:v3 inAssetCollection:0];
  }

  return v4;
}

+ (BOOL)currentValueForAssets:(id)assets
{
  assetsCopy = assets;
  if ([assetsCopy count])
  {
    v5 = [self toggledValueForAssets:assetsCopy] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  if (([assetCopy isTrashed] & 1) != 0 || (objc_msgSend(assetCopy, "isRecoveredAsset") & 1) != 0 || objc_msgSend(assetCopy, "sourceType") == 2 || objc_msgSend(assetCopy, "sourceType") == 8)
  {
    goto LABEL_5;
  }

  if (![assetCopy px_isSyndicatedAsset])
  {
    LOBYTE(v5) = 1;
    goto LABEL_6;
  }

  if (![assetCopy px_isUnsavedSyndicatedAsset])
  {
LABEL_5:
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [assetCopy px_isSyndicationPhotoLibraryAsset] ^ 1;
  }

LABEL_6:

  return v5;
}

@end