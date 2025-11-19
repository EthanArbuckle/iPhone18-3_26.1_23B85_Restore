@interface PGAllowlistAssetFilter
- (BOOL)passesWithAsset:(id)a3;
- (PGAllowlistAssetFilter)initWithAllowedAssetUUIDs:(id)a3;
- (id)filteredAssetsFromAssets:(id)a3;
@end

@implementation PGAllowlistAssetFilter

- (BOOL)passesWithAsset:(id)a3
{
  allowedAssetUUIDs = self->_allowedAssetUUIDs;
  v4 = [a3 uuid];
  LOBYTE(allowedAssetUUIDs) = [(NSSet *)allowedAssetUUIDs containsObject:v4];

  return allowedAssetUUIDs;
}

- (id)filteredAssetsFromAssets:(id)a3
{
  v3 = MEMORY[0x277CCAC30];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __51__PGAllowlistAssetFilter_filteredAssetsFromAssets___block_invoke;
  v8[3] = &unk_2788894C0;
  v8[4] = self;
  v4 = a3;
  v5 = [v3 predicateWithBlock:v8];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  return v6;
}

- (PGAllowlistAssetFilter)initWithAllowedAssetUUIDs:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PGAllowlistAssetFilter;
  v6 = [(PGAllowlistAssetFilter *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_allowedAssetUUIDs, a3);
  }

  return v7;
}

@end