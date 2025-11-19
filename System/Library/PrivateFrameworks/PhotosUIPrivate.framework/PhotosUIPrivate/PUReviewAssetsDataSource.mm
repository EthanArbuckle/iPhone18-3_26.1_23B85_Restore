@interface PUReviewAssetsDataSource
- (BOOL)isEmpty;
- (PUReviewAssetsDataSource)initWithAssetsByIdentifier:(id)a3 usingOrdering:(id)a4 inAssetCollection:(id)a5;
- (id)_identifierAtIndexPath:(id)a3;
- (id)assetAtIndexPath:(id)a3;
- (id)assetReferenceAtIndexPath:(id)a3;
- (id)assetReferenceForAssetReference:(id)a3;
- (id)badgeInfoPromiseForAssetAtIndexPath:(id)a3 spatialPresentationEnabled:(BOOL)a4;
- (id)convertIndexPath:(id)a3 fromAssetsDataSource:(id)a4;
- (id)indexPathForAssetCollection:(id)a3;
- (id)indexPathForAssetReference:(id)a3;
- (id)indexPathForAssetWithIdentifier:(id)a3;
- (id)startingAssetReference;
- (int64_t)numberOfSubItemsAtIndexPath:(id)a3;
@end

@implementation PUReviewAssetsDataSource

- (id)_identifierAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUReviewAssetsDataSource *)self _assetIdentifiers];
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
  v2 = [(PUReviewAssetsDataSource *)self _assetIdentifiers];
  v3 = [v2 count] == 0;

  return v3;
}

- (id)startingAssetReference
{
  v3 = [(PUReviewAssetsDataSource *)self _assetIdentifiers];
  v4 = [v3 count];
  if (v4)
  {
    v5 = [MEMORY[0x1E696AC88] indexPathForItem:v4 - 1 inSection:0];
    v6 = [(PUReviewAssetsDataSource *)self assetReferenceAtIndexPath:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)convertIndexPath:(id)a3 fromAssetsDataSource:(id)a4
{
  v6 = a4;
  v7 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [v6 _identifierAtIndexPath:v7];

    if (v8)
    {
      v9 = [(PUReviewAssetsDataSource *)self _assetIdentifiers];
      v10 = [v9 indexOfObject:v8];
      if (v10 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v11 = 0;
      }

      else
      {
        v11 = [MEMORY[0x1E696AC88] indexPathForItem:v10 inSection:0];
      }
    }

    else
    {
      v11 = 0;
    }
  }

  else
  {
    v13.receiver = self;
    v13.super_class = PUReviewAssetsDataSource;
    v11 = [(PUAssetsDataSource *)&v13 convertIndexPath:v7 fromAssetsDataSource:v6];
  }

  return v11;
}

- (id)assetReferenceForAssetReference:(id)a3
{
  v4 = [a3 asset];
  v5 = [v4 identifier];
  v6 = [(PUReviewAssetsDataSource *)self _assetIdentifiers];
  v7 = [v6 indexOfObject:v5];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    v10 = [(PUReviewAssetsDataSource *)self _assetsByIdentifier];
    v11 = [v10 objectForKey:v5];
    v12 = [MEMORY[0x1E696AC88] indexPathForItem:v9 inSection:0];
    v13 = [PUAssetReference alloc];
    v14 = [(PUReviewAssetsDataSource *)self _reviewAssetCollection];
    v15 = [(PUTilingDataSource *)self identifier];
    v8 = [(PUAssetReference *)v13 initWithAsset:v11 assetCollection:v14 indexPath:v12 dataSourceIdentifier:v15];
  }

  return v8;
}

- (id)assetAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUReviewAssetsDataSource *)self _assetIdentifiers];
  v6 = [(PUReviewAssetsDataSource *)self _assetsByIdentifier];
  v7 = [v4 item];

  v8 = [v5 objectAtIndex:v7];
  v9 = [v6 objectForKey:v8];

  return v9;
}

- (id)badgeInfoPromiseForAssetAtIndexPath:(id)a3 spatialPresentationEnabled:(BOOL)a4
{
  v5 = a3;
  v6 = [(PUReviewAssetsDataSource *)self _assetIdentifiers];
  v7 = [(PUReviewAssetsDataSource *)self _assetsByIdentifier];
  v8 = [v5 item];

  v9 = [v6 objectAtIndex:v8];
  v10 = [v7 objectForKey:v9];
  v11 = [v10 isHDR];
  v12 = [v10 canPlayPhotoIris];
  v13 = [v10 burstIdentifier];
  v14 = [v10 numberOfRepresentedAssets];
  v15 = *(MEMORY[0x1E69C4840] + 8);
  v16 = *(MEMORY[0x1E69C4840] + 24);
  v17 = v13 != 0;
  v18 = v14 > 1;
  if (v17 && v18)
  {
    v19 = v14;
  }

  else
  {
    v19 = *(MEMORY[0x1E69C4840] + 16);
  }

  if (v17 && v18)
  {
    v20 = *MEMORY[0x1E69C4840] | 8;
  }

  else
  {
    v20 = *MEMORY[0x1E69C4840];
  }

  if (v12)
  {
    v20 |= 0x40uLL;
  }

  if (v11)
  {
    v21 = v20 | 4;
  }

  else
  {
    v21 = v20;
  }

  v24[0] = v21 | ([v10 mediaSubtypes] >> 10) & 0x400;
  v24[1] = v15;
  v24[2] = v19;
  v24[3] = v16;
  v22 = [[PUBadgeInfoPromise alloc] initWithBadgeInfo:v24];

  return v22;
}

- (id)indexPathForAssetCollection:(id)a3
{
  v4 = a3;
  v5 = [(PUReviewAssetsDataSource *)self _reviewAssetCollection];

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

- (id)indexPathForAssetWithIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(PUReviewAssetsDataSource *)self _assetIdentifiers];
  v6 = [v5 indexOfObject:v4];

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = [MEMORY[0x1E696AC88] indexPathForItem:v6 inSection:0];
  }

  return v7;
}

- (id)indexPathForAssetReference:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && ([v4 dataSourceIdentifier], v6 = objc_claimAutoreleasedReturnValue(), -[PUTilingDataSource identifier](self, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v6, !v8))
  {
    v10 = [v5 asset];
    v11 = [v10 identifier];
    v9 = [(PUReviewAssetsDataSource *)self indexPathForAssetWithIdentifier:v11];
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
  v5 = [(PUReviewAssetsDataSource *)self _assetIdentifiers];
  v6 = [(PUReviewAssetsDataSource *)self _assetsByIdentifier];
  v7 = [v5 objectAtIndex:{objc_msgSend(v4, "item")}];
  v8 = [v6 objectForKey:v7];
  v9 = [(PUReviewAssetsDataSource *)self _reviewAssetCollection];
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
    v7 = [(PUReviewAssetsDataSource *)self _assetIdentifiers];
    v8 = [v7 count];
  }

  else if (v6)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    [v7 handleFailureInMethod:a2 object:self file:@"PUReviewAssetsDataSource.m" lineNumber:57 description:{@"invalid indexPath %@", v5}];
    v8 = 0;
  }

  else
  {
    v7 = [(PUReviewAssetsDataSource *)self _assetIdentifiers];
    v8 = [v7 count] != 0;
  }

  return v8;
}

- (PUReviewAssetsDataSource)initWithAssetsByIdentifier:(id)a3 usingOrdering:(id)a4 inAssetCollection:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v18.receiver = self;
  v18.super_class = PUReviewAssetsDataSource;
  v11 = [(PUTilingDataSource *)&v18 init];
  if (v11)
  {
    v12 = [v8 copy];
    assetsByIdentifier = v11->__assetsByIdentifier;
    v11->__assetsByIdentifier = v12;

    v14 = [v9 copy];
    assetIdentifiers = v11->__assetIdentifiers;
    v11->__assetIdentifiers = v14;

    objc_storeStrong(&v11->__reviewAssetCollection, a5);
    v16 = v11;
  }

  return v11;
}

@end