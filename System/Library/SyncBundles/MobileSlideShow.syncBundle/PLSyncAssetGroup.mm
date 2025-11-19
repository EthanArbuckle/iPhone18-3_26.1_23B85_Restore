@interface PLSyncAssetGroup
- (id)description;
@end

@implementation PLSyncAssetGroup

- (id)description
{
  v9.receiver = self;
  v9.super_class = PLSyncAssetGroup;
  v3 = [(PLSyncAssetGroup *)&v9 description];
  v4 = [(PLSyncAssetGroup *)self UUID];
  v5 = [(PLSyncAssetGroup *)self date];
  v6 = [(PLSyncAssetGroup *)self assetPairs];
  v7 = [v3 stringByAppendingFormat:@" uuid:%@ date:%@ files:%d", v4, v5, objc_msgSend(v6, "count")];

  return v7;
}

@end