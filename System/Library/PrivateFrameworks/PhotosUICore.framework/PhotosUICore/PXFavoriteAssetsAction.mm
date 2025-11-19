@interface PXFavoriteAssetsAction
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4;
+ (BOOL)currentValueForAssets:(id)a3;
+ (BOOL)toggledValueForAssets:(id)a3;
+ (id)localizedStringKeyForState:(BOOL)a3;
- (PXFavoriteAssetsAction)initWithAssets:(id)a3;
- (PXFavoriteAssetsAction)initWithAssets:(id)a3 favorite:(BOOL)a4;
- (id)actionNameLocalizationKey;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXFavoriteAssetsAction

- (void)performUndo:(id)a3
{
  v4 = a3;
  v5 = [(PXFavoriteAssetsAction *)self isFavorite];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__PXFavoriteAssetsAction_performUndo___block_invoke;
  v6[3] = &__block_descriptor_33_e30_v16__0__PHAssetChangeRequest_8l;
  v7 = !v5;
  [(PXAssetsAction *)self performAssetChanges:v6 completionHandler:v4];
}

- (void)performAction:(id)a3
{
  v4 = a3;
  v5 = [(PXFavoriteAssetsAction *)self isFavorite];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__PXFavoriteAssetsAction_performAction___block_invoke;
  v6[3] = &__block_descriptor_33_e30_v16__0__PHAssetChangeRequest_8l;
  v7 = v5;
  [(PXAssetsAction *)self performAssetChanges:v6 completionHandler:v4];
}

- (id)actionNameLocalizationKey
{
  v3 = objc_opt_class();
  v4 = [(PXFavoriteAssetsAction *)self isFavorite];

  return [v3 localizedStringKeyForState:v4];
}

- (PXFavoriteAssetsAction)initWithAssets:(id)a3
{
  v4 = a3;
  v5 = -[PXFavoriteAssetsAction initWithAssets:favorite:](self, "initWithAssets:favorite:", v4, [objc_opt_class() toggledValueForAssets:v4]);

  return v5;
}

- (PXFavoriteAssetsAction)initWithAssets:(id)a3 favorite:(BOOL)a4
{
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __50__PXFavoriteAssetsAction_initWithAssets_favorite___block_invoke;
  v8 = &__block_descriptor_33_e17_B16__0__PHAsset_8l;
  v9 = a4;
  PXFilter();
}

+ (id)localizedStringKeyForState:(BOOL)a3
{
  if (a3)
  {
    return @"PXAddToFavoritesActionShortName";
  }

  else
  {
    return @"PXRemoveFromFavoritesActionShortName";
  }
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4
{
  v5 = a3;
  v6 = a4;
  if (v5 && [v5 canPerformEditOperation:3] && (objc_msgSend(v5, "isTrashed") & 1) == 0 && !objc_msgSend(v5, "isRecoveredAsset"))
  {
    LOBYTE(v7) = 1;
  }

  else if ([v5 px_isUnsavedSyndicatedAsset])
  {
    v7 = [v5 px_isSyndicationPhotoLibraryAsset] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
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

+ (BOOL)toggledValueForAssets:(id)a3
{
  v3 = a3;
  if ([v3 count])
  {
    PXExists();
  }

  return 1;
}

@end