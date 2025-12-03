@interface PGKeyCurator_PHAsset
- (id)keyAssetInAssets:(id)assets options:(id)options criteria:(id)criteria debugInfo:(id)info progressBlock:(id)block;
- (id)keyAssetInAssets:(id)assets options:(id)options progressBlock:(id)block;
- (id)keyAssetWithFeeder:(id)feeder options:(id)options criteria:(id)criteria debugInfo:(id)info progressBlock:(id)block;
@end

@implementation PGKeyCurator_PHAsset

- (id)keyAssetInAssets:(id)assets options:(id)options progressBlock:(id)block
{
  v7.receiver = self;
  v7.super_class = PGKeyCurator_PHAsset;
  v5 = [(PGKeyCurator *)&v7 keyItemInItems:assets options:options criteria:0 debugInfo:0 progressBlock:block];

  return v5;
}

- (id)keyAssetInAssets:(id)assets options:(id)options criteria:(id)criteria debugInfo:(id)info progressBlock:(id)block
{
  v9.receiver = self;
  v9.super_class = PGKeyCurator_PHAsset;
  v7 = [(PGKeyCurator *)&v9 keyItemInItems:assets options:options criteria:criteria debugInfo:info progressBlock:block];

  return v7;
}

- (id)keyAssetWithFeeder:(id)feeder options:(id)options criteria:(id)criteria debugInfo:(id)info progressBlock:(id)block
{
  v9.receiver = self;
  v9.super_class = PGKeyCurator_PHAsset;
  v7 = [(PGKeyCurator *)&v9 keyItemWithFeeder:feeder options:options criteria:criteria debugInfo:info progressBlock:block];

  return v7;
}

@end