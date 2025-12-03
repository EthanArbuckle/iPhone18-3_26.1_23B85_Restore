@interface PLSyncAssetGroup
- (id)description;
@end

@implementation PLSyncAssetGroup

- (id)description
{
  v9.receiver = self;
  v9.super_class = PLSyncAssetGroup;
  v3 = [(PLSyncAssetGroup *)&v9 description];
  uUID = [(PLSyncAssetGroup *)self UUID];
  date = [(PLSyncAssetGroup *)self date];
  assetPairs = [(PLSyncAssetGroup *)self assetPairs];
  v7 = [v3 stringByAppendingFormat:@" uuid:%@ date:%@ files:%d", uUID, date, objc_msgSend(assetPairs, "count")];

  return v7;
}

@end