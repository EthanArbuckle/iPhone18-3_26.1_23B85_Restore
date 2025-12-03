@interface PXLikeSharedAlbumAssetsAction
+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection;
+ (BOOL)currentValueForAssets:(id)assets;
+ (BOOL)toggledValueForAssets:(id)assets;
- (PXLikeSharedAlbumAssetsAction)initWithAssets:(id)assets;
- (PXLikeSharedAlbumAssetsAction)initWithAssets:(id)assets like:(BOOL)like;
- (id)actionNameLocalizationKey;
- (void)performAction:(id)action;
- (void)performUndo:(id)undo;
@end

@implementation PXLikeSharedAlbumAssetsAction

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  isLike = [(PXLikeSharedAlbumAssetsAction *)self isLike];
  assets = [(PXAssetsAction *)self assets];
  [PXSharedAlbumsUtilities setLikedTo:!isLike forAssets:assets completionHandler:undoCopy];
}

- (void)performAction:(id)action
{
  actionCopy = action;
  isLike = [(PXLikeSharedAlbumAssetsAction *)self isLike];
  assets = [(PXAssetsAction *)self assets];
  [PXSharedAlbumsUtilities setLikedTo:isLike forAssets:assets completionHandler:actionCopy];
}

- (id)actionNameLocalizationKey
{
  isLike = [(PXLikeSharedAlbumAssetsAction *)self isLike];
  assets = [(PXAssetsAction *)self assets];
  v5 = [assets count];

  mediaType = [(PXLikeSharedAlbumAssetsAction *)self mediaType];
  if (isLike)
  {
    if (v5 != 1)
    {
      v7 = @"LIKE_ALL_PHOTOS_BUTTON_TITLE";
      v8 = @"LIKE_ALL_VIDEOS_BUTTON_TITLE";
      v9 = @"LIKE_ALL_ITEMS_BUTTON_TITLE";
      goto LABEL_9;
    }

    v8 = @"LIKE_VIDEO_BUTTON_TITLE";
    v7 = @"LIKE_PHOTO_BUTTON_TITLE";
  }

  else
  {
    if (v5 != 1)
    {
      v7 = @"UNLIKE_ALL_PHOTOS_BUTTON_TITLE";
      v8 = @"UNLIKE_ALL_VIDEOS_BUTTON_TITLE";
      v9 = @"UNLIKE_ALL_ITEMS_BUTTON_TITLE";
      goto LABEL_9;
    }

    v8 = @"UNLIKE_VIDEO_BUTTON_TITLE";
    v7 = @"UNLIKE_PHOTO_BUTTON_TITLE";
  }

  v9 = v7;
LABEL_9:
  v10 = PXLocalizationKeyForMediaType(mediaType, v7, v8, v9);

  return v10;
}

- (PXLikeSharedAlbumAssetsAction)initWithAssets:(id)assets
{
  assetsCopy = assets;
  v5 = -[PXLikeSharedAlbumAssetsAction initWithAssets:like:](self, "initWithAssets:like:", assetsCopy, [objc_opt_class() toggledValueForAssets:assetsCopy]);

  return v5;
}

- (PXLikeSharedAlbumAssetsAction)initWithAssets:(id)assets like:(BOOL)like
{
  assetsCopy = assets;
  v9.receiver = self;
  v9.super_class = PXLikeSharedAlbumAssetsAction;
  v7 = [(PXAssetsAction *)&v9 initWithAssets:assetsCopy];
  if (v7)
  {
    v7->_like = like;
    PXMediaTypeForAssets();
  }

  return 0;
}

+ (BOOL)canPerformOnAsset:(id)asset inAssetCollection:(id)collection
{
  assetCopy = asset;
  if ([assetCopy px_isSharedAlbumAsset])
  {
    v5 = [assetCopy needsSensitivityProtection] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
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

uint64_t __55__PXLikeSharedAlbumAssetsAction_toggledValueForAssets___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 px_isSharedAlbumAsset])
  {
    v3 = [v2 pl_managedAsset];
    v4 = [v3 userCloudSharedLiked] ^ 1;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end