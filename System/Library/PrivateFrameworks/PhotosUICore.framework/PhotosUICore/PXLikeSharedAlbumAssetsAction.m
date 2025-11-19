@interface PXLikeSharedAlbumAssetsAction
+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4;
+ (BOOL)currentValueForAssets:(id)a3;
+ (BOOL)toggledValueForAssets:(id)a3;
- (PXLikeSharedAlbumAssetsAction)initWithAssets:(id)a3;
- (PXLikeSharedAlbumAssetsAction)initWithAssets:(id)a3 like:(BOOL)a4;
- (id)actionNameLocalizationKey;
- (void)performAction:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXLikeSharedAlbumAssetsAction

- (void)performUndo:(id)a3
{
  v4 = a3;
  v5 = [(PXLikeSharedAlbumAssetsAction *)self isLike];
  v6 = [(PXAssetsAction *)self assets];
  [PXSharedAlbumsUtilities setLikedTo:!v5 forAssets:v6 completionHandler:v4];
}

- (void)performAction:(id)a3
{
  v4 = a3;
  v5 = [(PXLikeSharedAlbumAssetsAction *)self isLike];
  v6 = [(PXAssetsAction *)self assets];
  [PXSharedAlbumsUtilities setLikedTo:v5 forAssets:v6 completionHandler:v4];
}

- (id)actionNameLocalizationKey
{
  v3 = [(PXLikeSharedAlbumAssetsAction *)self isLike];
  v4 = [(PXAssetsAction *)self assets];
  v5 = [v4 count];

  v6 = [(PXLikeSharedAlbumAssetsAction *)self mediaType];
  if (v3)
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
  v10 = PXLocalizationKeyForMediaType(v6, v7, v8, v9);

  return v10;
}

- (PXLikeSharedAlbumAssetsAction)initWithAssets:(id)a3
{
  v4 = a3;
  v5 = -[PXLikeSharedAlbumAssetsAction initWithAssets:like:](self, "initWithAssets:like:", v4, [objc_opt_class() toggledValueForAssets:v4]);

  return v5;
}

- (PXLikeSharedAlbumAssetsAction)initWithAssets:(id)a3 like:(BOOL)a4
{
  v6 = a3;
  v9.receiver = self;
  v9.super_class = PXLikeSharedAlbumAssetsAction;
  v7 = [(PXAssetsAction *)&v9 initWithAssets:v6];
  if (v7)
  {
    v7->_like = a4;
    PXMediaTypeForAssets();
  }

  return 0;
}

+ (BOOL)canPerformOnAsset:(id)a3 inAssetCollection:(id)a4
{
  v4 = a3;
  if ([v4 px_isSharedAlbumAsset])
  {
    v5 = [v4 needsSensitivityProtection] ^ 1;
  }

  else
  {
    LOBYTE(v5) = 0;
  }

  return v5;
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