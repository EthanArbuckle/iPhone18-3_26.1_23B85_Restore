@interface PUOneUpCommentsInfoProvider
+ (BOOL)_canHandleDisplayAsset:(id)asset;
+ (BOOL)hasUserLikedDisplayAsset:(id)asset;
+ (unint64_t)commentCountForDisplayAsset:(id)asset;
+ (unint64_t)likeCountForDisplayAsset:(id)asset;
+ (void)toggleLike:(BOOL)like forDisplayAsset:(id)asset;
@end

@implementation PUOneUpCommentsInfoProvider

+ (BOOL)_canHandleDisplayAsset:(id)asset
{
  assetCopy = asset;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    px_isSharedAlbumAsset = [assetCopy px_isSharedAlbumAsset];
  }

  else
  {
    px_isSharedAlbumAsset = 0;
  }

  return px_isSharedAlbumAsset;
}

+ (void)toggleLike:(BOOL)like forDisplayAsset:(id)asset
{
  likeCopy = like;
  v13[1] = *MEMORY[0x1E69E9840];
  assetCopy = asset;
  if ([self _canHandleDisplayAsset:assetCopy])
  {
    v7 = assetCopy;
    v8 = v7;
    if (likeCopy)
    {
      [v7 px_addLikeWithCompletionHandler:0];
      v9 = @"com.apple.photos.CPAnalytics.oneUpSharedAssetLiked";
    }

    else
    {
      [v7 px_removeLikeWithCompletionHandler:0];
      v9 = @"com.apple.photos.CPAnalytics.oneUpSharedAssetUnliked";
    }

    v10 = MEMORY[0x1E6991F28];
    v12 = *MEMORY[0x1E6991E18];
    v13[0] = v8;
    v11 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    [v10 sendEvent:v9 withPayload:v11];
  }
}

+ (BOOL)hasUserLikedDisplayAsset:(id)asset
{
  assetCopy = asset;
  if ([self _canHandleDisplayAsset:assetCopy])
  {
    commentProperties = [assetCopy commentProperties];
    hasUserLiked = [commentProperties hasUserLiked];
  }

  else
  {
    hasUserLiked = 0;
  }

  return hasUserLiked;
}

+ (unint64_t)likeCountForDisplayAsset:(id)asset
{
  assetCopy = asset;
  if ([self _canHandleDisplayAsset:assetCopy])
  {
    commentProperties = [assetCopy commentProperties];
    likeCount = [commentProperties likeCount];
  }

  else
  {
    likeCount = 0;
  }

  return likeCount;
}

+ (unint64_t)commentCountForDisplayAsset:(id)asset
{
  assetCopy = asset;
  if ([self _canHandleDisplayAsset:assetCopy])
  {
    commentProperties = [assetCopy commentProperties];
    commentCount = [commentProperties commentCount];
  }

  else
  {
    commentCount = 0;
  }

  return commentCount;
}

@end