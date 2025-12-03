@interface PGAllowlistAssetFilter
- (BOOL)passesWithAsset:(id)asset;
- (PGAllowlistAssetFilter)initWithAllowedAssetUUIDs:(id)ds;
- (id)filteredAssetsFromAssets:(id)assets;
@end

@implementation PGAllowlistAssetFilter

- (BOOL)passesWithAsset:(id)asset
{
  allowedAssetUUIDs = self->_allowedAssetUUIDs;
  uuid = [asset uuid];
  LOBYTE(allowedAssetUUIDs) = [(NSSet *)allowedAssetUUIDs containsObject:uuid];

  return allowedAssetUUIDs;
}

- (id)filteredAssetsFromAssets:(id)assets
{
  v3 = MEMORY[0x277CCAC30];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__PGAllowlistAssetFilter_filteredAssetsFromAssets___block_invoke;
  v8[3] = &unk_2788894C0;
  v8[4] = self;
  assetsCopy = assets;
  v5 = [v3 predicateWithBlock:v8];
  v6 = [assetsCopy filteredArrayUsingPredicate:v5];

  return v6;
}

- (PGAllowlistAssetFilter)initWithAllowedAssetUUIDs:(id)ds
{
  dsCopy = ds;
  v9.receiver = self;
  v9.super_class = PGAllowlistAssetFilter;
  v6 = [(PGAllowlistAssetFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_allowedAssetUUIDs, ds);
  }

  return v7;
}

@end