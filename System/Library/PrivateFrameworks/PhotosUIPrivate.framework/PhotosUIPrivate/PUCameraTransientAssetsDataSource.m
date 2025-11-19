@interface PUCameraTransientAssetsDataSource
- (BOOL)isEmpty;
- (PUCameraTransientAssetsDataSource)initWithUUIDs:(id)a3 mapping:(id)a4 representativeMapping:(id)a5 inAssetCollection:(id)a6;
- (id)_uuidAtIndexPath:(id)a3;
- (id)assetAtIndexPath:(id)a3;
- (id)assetReferenceAtIndexPath:(id)a3;
- (id)assetReferenceForAssetReference:(id)a3;
- (id)badgeInfoPromiseForAssetAtIndexPath:(id)a3 spatialPresentationEnabled:(BOOL)a4;
- (id)convertIndexPath:(id)a3 fromAssetsDataSource:(id)a4;
- (id)indexPathForAssetCollection:(id)a3;
- (id)indexPathForAssetReference:(id)a3;
- (id)startingAssetReference;
- (int64_t)numberOfSubItemsAtIndexPath:(id)a3;
@end

@implementation PUCameraTransientAssetsDataSource

- (id)_uuidAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUCameraTransientAssetsDataSource *)self _assetUUIDs];
  v6 = [v4 item];

  if (v6 >= [v5 count] - 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [v5 objectAtIndex:v6];
  }

  return v7;
}

- (BOOL)isEmpty
{
  v2 = [(PUCameraTransientAssetsDataSource *)self _assetUUIDs];
  v3 = [v2 count] == 0;

  return v3;
}

- (id)startingAssetReference
{
  v3 = [(PUCameraTransientAssetsDataSource *)self _assetUUIDs];
  v4 = [v3 count];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AC88] indexPathForItem:v4 - 1 inSection:0];
    v6 = [(PUCameraTransientAssetsDataSource *)self assetReferenceAtIndexPath:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)convertIndexPath:(id)a3 fromAssetsDataSource:(id)a4
{
  v5 = [a4 _uuidAtIndexPath:a3];
  if (v5)
  {
    v6 = [(PUCameraTransientAssetsDataSource *)self _assetUUIDs];
    v7 = [v6 indexOfObject:v5];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = 0;
    }

    else
    {
      v8 = [MEMORY[0x1E696AC88] indexPathForItem:v7 inSection:0];
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)assetReferenceForAssetReference:(id)a3
{
  v4 = [a3 asset];
  v5 = [v4 uuid];
  v6 = [(PUCameraTransientAssetsDataSource *)self _assetUUIDs];
  v7 = [v6 indexOfObject:v5];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v10 = [(PUCameraTransientAssetsDataSource *)self _assetsByUUID];
    v11 = [v10 objectForKey:v5];
    v12 = [MEMORY[0x1E696AC88] indexPathForItem:v9 inSection:0];
    v13 = [PUAssetReference alloc];
    v14 = [(PUCameraTransientAssetsDataSource *)self _transientAssetCollection];
    v15 = [(PUTilingDataSource *)self identifier];
    v8 = [(PUAssetReference *)v13 initWithAsset:v11 assetCollection:v14 indexPath:v12 dataSourceIdentifier:v15];
  }

  return v8;
}

- (id)assetAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUCameraTransientAssetsDataSource *)self _assetUUIDs];
  v6 = [(PUCameraTransientAssetsDataSource *)self _assetsByUUID];
  v7 = [v4 item];

  v8 = [v5 objectAtIndex:v7];
  v9 = [v6 objectForKey:v8];

  return v9;
}

- (id)badgeInfoPromiseForAssetAtIndexPath:(id)a3 spatialPresentationEnabled:(BOOL)a4
{
  v5 = a3;
  v6 = [(PUCameraTransientAssetsDataSource *)self _assetUUIDs];
  v7 = [(PUCameraTransientAssetsDataSource *)self _assetsByUUID];
  v8 = [v5 item];

  v9 = [v6 objectAtIndex:v8];
  v10 = [v7 objectForKey:v9];
  v11 = [v10 isHDR];
  v12 = [v10 mediaSubtypes];
  v13 = [v10 canPlayPhotoIris];
  v14 = [v10 burstIdentifier];
  v15 = [v10 numberOfRepresentedAssets];
  v16 = *(MEMORY[0x1E69C4840] + 8);
  v17 = *(MEMORY[0x1E69C4840] + 24);
  v18 = v14 != 0;
  v19 = v15 > 1;
  if (v18 && v19)
  {
    v20 = v15;
  }

  else
  {
    v20 = *(MEMORY[0x1E69C4840] + 16);
  }

  if (v18 && v19)
  {
    v21 = *MEMORY[0x1E69C4840] | 8;
  }

  else
  {
    v21 = *MEMORY[0x1E69C4840];
  }

  if (v13)
  {
    v21 |= 0x40uLL;
  }

  if (v11)
  {
    v21 |= 4uLL;
  }

  v24[0] = v21 | (v12 >> 10) & 0x400;
  v24[1] = v16;
  v24[2] = v20;
  v24[3] = v17;
  v22 = [[PUBadgeInfoPromise alloc] initWithBadgeInfo:v24];

  return v22;
}

- (id)indexPathForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PUCameraTransientAssetsDataSource *)self _transientAssetCollection];

  if (v5 == v4)
  {
    v6 = [MEMORY[0x1E696AC88] indexPathWithIndex:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)indexPathForAssetReference:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 dataSourceIdentifier], v6 = objc_claimAutoreleasedReturnValue(), -[PUTilingDataSource identifier](self, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v6, !v8))
  {
    v10 = [(PUCameraTransientAssetsDataSource *)self _assetUUIDs];
    v11 = [v5 asset];
    v12 = [v11 uuid];
    v13 = [v10 indexOfObject:v12];

    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = 0;
    }

    else
    {
      v9 = [MEMORY[0x1E696AC88] indexPathForItem:v13 inSection:0];
    }
  }

  else
  {
    v9 = [v5 indexPath];
  }

  return v9;
}

- (id)assetReferenceAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUCameraTransientAssetsDataSource *)self _assetUUIDs];
  v6 = [(PUCameraTransientAssetsDataSource *)self _assetsByUUID];
  v7 = [v5 objectAtIndex:{objc_msgSend(v4, "item")}];
  v8 = [v6 objectForKey:v7];
  v9 = [(PUCameraTransientAssetsDataSource *)self _transientAssetCollection];
  v10 = [PUAssetReference alloc];
  v11 = [(PUTilingDataSource *)self identifier];
  v12 = [(PUAssetReference *)v10 initWithAsset:v8 assetCollection:v9 indexPath:v4 dataSourceIdentifier:v11];

  return v12;
}

- (int64_t)numberOfSubItemsAtIndexPath:(id)a3
{
  v5 = a3;
  v6 = [v5 length];
  if (v6 == 1)
  {
    v7 = [(PUCameraTransientAssetsDataSource *)self _assetUUIDs];
    v8 = [v7 count];
  }

  else if (v6)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUCameraTransientAssetsDataSource.m" lineNumber:62 description:{@"invalid indexPath %@", v5}];
    v8 = 0;
  }

  else
  {
    v7 = [(PUCameraTransientAssetsDataSource *)self _assetUUIDs];
    v8 = [v7 count] != 0;
  }

  return v8;
}

- (PUCameraTransientAssetsDataSource)initWithUUIDs:(id)a3 mapping:(id)a4 representativeMapping:(id)a5 inAssetCollection:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v19.receiver = self;
  v19.super_class = PUCameraTransientAssetsDataSource;
  v15 = [(PUTilingDataSource *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->__assetUUIDs, a3);
    objc_storeStrong(&v16->__assetsByUUID, a4);
    objc_storeStrong(&v16->__representativeAssetsByBurstIdentifier, a5);
    objc_storeStrong(&v16->__transientAssetCollection, a6);
    v17 = v16;
  }

  return v16;
}

@end