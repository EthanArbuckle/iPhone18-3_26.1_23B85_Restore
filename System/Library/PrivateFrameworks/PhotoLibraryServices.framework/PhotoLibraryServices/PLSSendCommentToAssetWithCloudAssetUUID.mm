@interface PLSSendCommentToAssetWithCloudAssetUUID
@end

@implementation PLSSendCommentToAssetWithCloudAssetUUID

void ___PLSSendCommentToAssetWithCloudAssetUUID_block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) assetWithUUID:*(a1 + 40)];
  v2 = [v3 userAddCloudSharedCommentWithText:*(a1 + 48)];
}

@end