@interface PLLikeAssetWithCloudAssetUUID
@end

@implementation PLLikeAssetWithCloudAssetUUID

void ___PLLikeAssetWithCloudAssetUUID_block_invoke(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) assetWithUUID:*(a1 + 40)];
  v3 = [MEMORY[0x1E695DFD8] setWithObject:v2];
  v8 = 0;
  v4 = [PLPhotoSharingHelper canSetUserCloudSharedLiked:1 forAssets:v3 error:&v8];
  v5 = v8;

  if (v4)
  {
    [v2 setUserCloudSharedLiked:1];
  }

  else
  {
    v6 = PLPhotoSharingGetLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v7 = *(a1 + 40);
      *buf = 138412546;
      v10 = v7;
      v11 = 2112;
      v12 = v5;
      _os_log_impl(&dword_19BF1F000, v6, OS_LOG_TYPE_ERROR, "Cannot like asset with UUID: %@, Error: %@", buf, 0x16u);
    }
  }
}

@end