@interface PXHideAssetsAction
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4;
+ (BOOL)currentValueForAssets:(id)a3;
- (PXHideAssetsAction)initWithAssets:(id)a3;
- (PXHideAssetsAction)initWithAssets:(id)a3 hidden:(BOOL)a4;
- (id)actionNameLocalizationKey;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXHideAssetsAction

- (void)performUndo:(id)a3
{
  v4 = a3;
  v5 = [(PXHideAssetsAction *)self isHidden];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__PXHideAssetsAction_performUndo___block_invoke;
  v6[3] = &__block_descriptor_33_e30_v16__0__PHAssetChangeRequest_8l;
  v7 = !v5;
  [(PXAssetsAction *)self performAssetChanges:v6 completionHandler:v4];
}

- (void)performAction:(id)a3
{
  v4 = a3;
  v5 = [(PXHideAssetsAction *)self isHidden];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __36__PXHideAssetsAction_performAction___block_invoke;
  v6[3] = &__block_descriptor_33_e30_v16__0__PHAssetChangeRequest_8l;
  v7 = v5;
  [(PXAssetsAction *)self performAssetChanges:v6 completionHandler:v4];
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

- (PXHideAssetsAction)initWithAssets:(id)a3
{
  v4 = a3;
  v5 = -[PXHideAssetsAction initWithAssets:hidden:](self, "initWithAssets:hidden:", v4, [objc_opt_class() toggledValueForAssets:v4]);

  return v5;
}

- (PXHideAssetsAction)initWithAssets:(id)a3 hidden:(BOOL)a4
{
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __44__PXHideAssetsAction_initWithAssets_hidden___block_invoke;
  v8 = &unk_1E773DB78;
  v10 = a4;
  v9 = self;
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

+ (BOOL)currentValueForAssets:(id)a3
{
  v4 = a3;
  if ([v4 count])
  {
    v5 = [a1 toggledValueForAssets:v4] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4
{
  v4 = a3;
  if (([v4 isTrashed] & 1) != 0 || (objc_msgSend(v4, "isRecoveredAsset") & 1) != 0 || objc_msgSend(v4, "sourceType") == 2 || objc_msgSend(v4, "sourceType") == 8)
  {
    goto LABEL_5;
  }

  if (![v4 px_isSyndicatedAsset])
  {
    LOBYTE(v5) = 1;
    goto LABEL_6;
  }

  if (![v4 px_isUnsavedSyndicatedAsset])
  {
LABEL_5:
    LOBYTE(v5) = 0;
  }

  else
  {
    v5 = [v4 px_isSyndicationPhotoLibraryAsset] ^ 1;
  }

LABEL_6:

  return v5;
}

@end