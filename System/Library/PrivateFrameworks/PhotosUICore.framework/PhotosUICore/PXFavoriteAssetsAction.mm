@interface PXFavoriteAssetsAction
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection;
+ (BOOL)currentValueForAssets:(id)assets;
+ (BOOL)toggledValueForAssets:(id)assets;
+ (id)localizedStringKeyForState:(BOOL)state;
- (PXFavoriteAssetsAction)initWithAssets:(id)assets;
- (PXFavoriteAssetsAction)initWithAssets:(id)assets favorite:(BOOL)favorite;
- (id)actionNameLocalizationKey;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXFavoriteAssetsAction

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  isFavorite = [(PXFavoriteAssetsAction *)self isFavorite];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __38__PXFavoriteAssetsAction_performUndo___block_invoke;
  v6[3] = &__block_descriptor_33_e30_v16__0__PHAssetChangeRequest_8l;
  v7 = !isFavorite;
  [(PXAssetsAction *)self performAssetChanges:v6 completionHandler:undoCopy];
}

- (void)performAction:(id)action
{
  actionCopy = action;
  isFavorite = [(PXFavoriteAssetsAction *)self isFavorite];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __40__PXFavoriteAssetsAction_performAction___block_invoke;
  v6[3] = &__block_descriptor_33_e30_v16__0__PHAssetChangeRequest_8l;
  v7 = isFavorite;
  [(PXAssetsAction *)self performAssetChanges:v6 completionHandler:actionCopy];
}

- (id)actionNameLocalizationKey
{
  v3 = objc_opt_class();
  isFavorite = [(PXFavoriteAssetsAction *)self isFavorite];

  return [v3 localizedStringKeyForState:isFavorite];
}

- (PXFavoriteAssetsAction)initWithAssets:(id)assets
{
  assetsCopy = assets;
  v5 = -[PXFavoriteAssetsAction initWithAssets:favorite:](self, "initWithAssets:favorite:", assetsCopy, [objc_opt_class() toggledValueForAssets:assetsCopy]);

  return v5;
}

- (PXFavoriteAssetsAction)initWithAssets:(id)assets favorite:(BOOL)favorite
{
  v5 = MEMORY[0x1E69E9820];
  v6 = 3221225472;
  v7 = __50__PXFavoriteAssetsAction_initWithAssets_favorite___block_invoke;
  v8 = &__block_descriptor_33_e17_B16__0__PHAsset_8l;
  favoriteCopy = favorite;
  PXFilter();
}

+ (id)localizedStringKeyForState:(BOOL)state
{
  if (state)
  {
    return @"PXAddToFavoritesActionShortName";
  }

  else
  {
    return @"PXRemoveFromFavoritesActionShortName";
  }
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  collectionCopy = collection;
  if (assetCopy && [assetCopy canPerformEditOperation:3] && (objc_msgSend(assetCopy, "isTrashed") & 1) == 0 && !objc_msgSend(assetCopy, "isRecoveredAsset"))
  {
    LOBYTE(v7) = 1;
  }

  else if ([assetCopy px_isUnsavedSyndicatedAsset])
  {
    v7 = [assetCopy px_isSyndicationPhotoLibraryAsset] ^ 1;
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
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

+ (BOOL)toggledValueForAssets:(id)assets
{
  assetsCopy = assets;
  if ([assetsCopy count])
  {
    PXExists();
  }

  return 1;
}

@end