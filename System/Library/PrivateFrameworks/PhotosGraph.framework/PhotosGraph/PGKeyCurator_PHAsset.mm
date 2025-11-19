@interface PGKeyCurator_PHAsset
- (id)keyAssetInAssets:(id)a3 options:(id)a4 criteria:(id)a5 debugInfo:(id)a6 progressBlock:(id)a7;
- (id)keyAssetInAssets:(id)a3 options:(id)a4 progressBlock:(id)a5;
- (id)keyAssetWithFeeder:(id)a3 options:(id)a4 criteria:(id)a5 debugInfo:(id)a6 progressBlock:(id)a7;
@end

@implementation PGKeyCurator_PHAsset

- (id)keyAssetInAssets:(id)a3 options:(id)a4 progressBlock:(id)a5
{
  v7.receiver = self;
  v7.super_class = PGKeyCurator_PHAsset;
  v5 = [(PGKeyCurator *)&v7 keyItemInItems:a3 options:a4 criteria:0 debugInfo:0 progressBlock:a5];

  return v5;
}

- (id)keyAssetInAssets:(id)a3 options:(id)a4 criteria:(id)a5 debugInfo:(id)a6 progressBlock:(id)a7
{
  v9.receiver = self;
  v9.super_class = PGKeyCurator_PHAsset;
  v7 = [(PGKeyCurator *)&v9 keyItemInItems:a3 options:a4 criteria:a5 debugInfo:a6 progressBlock:a7];

  return v7;
}

- (id)keyAssetWithFeeder:(id)a3 options:(id)a4 criteria:(id)a5 debugInfo:(id)a6 progressBlock:(id)a7
{
  v9.receiver = self;
  v9.super_class = PGKeyCurator_PHAsset;
  v7 = [(PGKeyCurator *)&v9 keyItemWithFeeder:a3 options:a4 criteria:a5 debugInfo:a6 progressBlock:a7];

  return v7;
}

@end