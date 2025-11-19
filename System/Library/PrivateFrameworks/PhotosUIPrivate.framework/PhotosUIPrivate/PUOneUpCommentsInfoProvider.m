@interface PUOneUpCommentsInfoProvider
+ (BOOL)_canHandleDisplayAsset:(id)a3;
+ (BOOL)hasUserLikedDisplayAsset:(id)a3;
+ (unint64_t)commentCountForDisplayAsset:(id)a3;
+ (unint64_t)likeCountForDisplayAsset:(id)a3;
+ (void)toggleLike:(BOOL)a3 forDisplayAsset:(id)a4;
@end

@implementation PUOneUpCommentsInfoProvider

+ (BOOL)_canHandleDisplayAsset:(id)a3
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 px_isSharedAlbumAsset];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (void)toggleLike:(BOOL)a3 forDisplayAsset:(id)a4
{
  v4 = a3;
  v13[1] = *MEMORY[0x1E69E9840];
  v6 = a4;
  if ([a1 _canHandleDisplayAsset:v6])
  {
    v7 = v6;
    v8 = v7;
    if (v4)
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

+ (BOOL)hasUserLikedDisplayAsset:(id)a3
{
  v4 = a3;
  if ([a1 _canHandleDisplayAsset:v4])
  {
    v5 = [v4 commentProperties];
    v6 = [v5 hasUserLiked];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (unint64_t)likeCountForDisplayAsset:(id)a3
{
  v4 = a3;
  if ([a1 _canHandleDisplayAsset:v4])
  {
    v5 = [v4 commentProperties];
    v6 = [v5 likeCount];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (unint64_t)commentCountForDisplayAsset:(id)a3
{
  v4 = a3;
  if ([a1 _canHandleDisplayAsset:v4])
  {
    v5 = [v4 commentProperties];
    v6 = [v5 commentCount];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end