@interface PUReviewAssetsDataSource
- (BOOL)isEmpty;
- (PUReviewAssetsDataSource)initWithAssetsByIdentifier:(id)identifier usingOrdering:(id)ordering inAssetCollection:(id)collection;
- (id)_identifierAtIndexPath:(id)path;
- (id)assetAtIndexPath:(id)path;
- (id)assetReferenceAtIndexPath:(id)path;
- (id)assetReferenceForAssetReference:(id)reference;
- (id)badgeInfoPromiseForAssetAtIndexPath:(id)path spatialPresentationEnabled:(BOOL)enabled;
- (id)convertIndexPath:(id)path fromAssetsDataSource:(id)source;
- (id)indexPathForAssetCollection:(id)collection;
- (id)indexPathForAssetReference:(id)reference;
- (id)indexPathForAssetWithIdentifier:(id)identifier;
- (id)startingAssetReference;
- (int64_t)numberOfSubItemsAtIndexPath:(id)path;
@end

@implementation PUReviewAssetsDataSource

- (id)_identifierAtIndexPath:(id)path
{
  pathCopy = path;
  _assetIdentifiers = [(PUReviewAssetsDataSource *)self _assetIdentifiers];
  item = [pathCopy item];

  if (item >= [_assetIdentifiers count] - 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [_assetIdentifiers objectAtIndex:item];
  }

  return v7;
}

- (BOOL)isEmpty
{
  _assetIdentifiers = [(PUReviewAssetsDataSource *)self _assetIdentifiers];
  v3 = [_assetIdentifiers count] == 0;

  return v3;
}

- (id)startingAssetReference
{
  _assetIdentifiers = [(PUReviewAssetsDataSource *)self _assetIdentifiers];
  v4 = [_assetIdentifiers count];
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

- (id)convertIndexPath:(id)path fromAssetsDataSource:(id)source
{
  sourceCopy = source;
  pathCopy = path;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = [sourceCopy _identifierAtIndexPath:pathCopy];

    if (v8)
    {
      _assetIdentifiers = [(PUReviewAssetsDataSource *)self _assetIdentifiers];
      v10 = [_assetIdentifiers indexOfObject:v8];
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
    v11 = [(PUAssetsDataSource *)&v13 convertIndexPath:pathCopy fromAssetsDataSource:sourceCopy];
  }

  return v11;
}

- (id)assetReferenceForAssetReference:(id)reference
{
  asset = [reference asset];
  identifier = [asset identifier];
  _assetIdentifiers = [(PUReviewAssetsDataSource *)self _assetIdentifiers];
  v7 = [_assetIdentifiers indexOfObject:identifier];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    _assetsByIdentifier = [(PUReviewAssetsDataSource *)self _assetsByIdentifier];
    v11 = [_assetsByIdentifier objectForKey:identifier];
    v12 = [MEMORY[0x1E696AC88] indexPathForItem:v9 inSection:0];
    v13 = [PUAssetReference alloc];
    _reviewAssetCollection = [(PUReviewAssetsDataSource *)self _reviewAssetCollection];
    identifier2 = [(PUTilingDataSource *)self identifier];
    v8 = [(PUAssetReference *)v13 initWithAsset:v11 assetCollection:_reviewAssetCollection indexPath:v12 dataSourceIdentifier:identifier2];
  }

  return v8;
}

- (id)assetAtIndexPath:(id)path
{
  pathCopy = path;
  _assetIdentifiers = [(PUReviewAssetsDataSource *)self _assetIdentifiers];
  _assetsByIdentifier = [(PUReviewAssetsDataSource *)self _assetsByIdentifier];
  item = [pathCopy item];

  v8 = [_assetIdentifiers objectAtIndex:item];
  v9 = [_assetsByIdentifier objectForKey:v8];

  return v9;
}

- (id)badgeInfoPromiseForAssetAtIndexPath:(id)path spatialPresentationEnabled:(BOOL)enabled
{
  pathCopy = path;
  _assetIdentifiers = [(PUReviewAssetsDataSource *)self _assetIdentifiers];
  _assetsByIdentifier = [(PUReviewAssetsDataSource *)self _assetsByIdentifier];
  item = [pathCopy item];

  v9 = [_assetIdentifiers objectAtIndex:item];
  v10 = [_assetsByIdentifier objectForKey:v9];
  isHDR = [v10 isHDR];
  canPlayPhotoIris = [v10 canPlayPhotoIris];
  burstIdentifier = [v10 burstIdentifier];
  numberOfRepresentedAssets = [v10 numberOfRepresentedAssets];
  v15 = *(MEMORY[0x1E69C4840] + 8);
  v16 = *(MEMORY[0x1E69C4840] + 24);
  v17 = burstIdentifier != 0;
  v18 = numberOfRepresentedAssets > 1;
  if (v17 && v18)
  {
    v19 = numberOfRepresentedAssets;
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

  if (canPlayPhotoIris)
  {
    v20 |= 0x40uLL;
  }

  if (isHDR)
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

- (id)indexPathForAssetCollection:(id)collection
{
  collectionCopy = collection;
  _reviewAssetCollection = [(PUReviewAssetsDataSource *)self _reviewAssetCollection];

  if (_reviewAssetCollection == collectionCopy)
  {
    v6 = [MEMORY[0x1E696AC88] indexPathWithIndex:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)indexPathForAssetWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  _assetIdentifiers = [(PUReviewAssetsDataSource *)self _assetIdentifiers];
  v6 = [_assetIdentifiers indexOfObject:identifierCopy];

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

- (id)indexPathForAssetReference:(id)reference
{
  referenceCopy = reference;
  v5 = referenceCopy;
  if (referenceCopy && ([referenceCopy dataSourceIdentifier], v6 = objc_claimAutoreleasedReturnValue(), -[PUTilingDataSource identifier](self, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v6, !v8))
  {
    asset = [v5 asset];
    identifier = [asset identifier];
    indexPath = [(PUReviewAssetsDataSource *)self indexPathForAssetWithIdentifier:identifier];
  }

  else
  {
    indexPath = [v5 indexPath];
  }

  return indexPath;
}

- (id)assetReferenceAtIndexPath:(id)path
{
  pathCopy = path;
  _assetIdentifiers = [(PUReviewAssetsDataSource *)self _assetIdentifiers];
  _assetsByIdentifier = [(PUReviewAssetsDataSource *)self _assetsByIdentifier];
  v7 = [_assetIdentifiers objectAtIndex:{objc_msgSend(pathCopy, "item")}];
  v8 = [_assetsByIdentifier objectForKey:v7];
  _reviewAssetCollection = [(PUReviewAssetsDataSource *)self _reviewAssetCollection];
  v10 = [PUAssetReference alloc];
  identifier = [(PUTilingDataSource *)self identifier];
  v12 = [(PUAssetReference *)v10 initWithAsset:v8 assetCollection:_reviewAssetCollection indexPath:pathCopy dataSourceIdentifier:identifier];

  return v12;
}

- (int64_t)numberOfSubItemsAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [pathCopy length];
  if (v6 == 1)
  {
    _assetIdentifiers = [(PUReviewAssetsDataSource *)self _assetIdentifiers];
    v8 = [_assetIdentifiers count];
  }

  else if (v6)
  {
    _assetIdentifiers = [MEMORY[0x1E696AAA8] currentHandler];
    [_assetIdentifiers handleFailureInMethod:a2 object:self file:@"PUReviewAssetsDataSource.m" lineNumber:57 description:{@"invalid indexPath %@", pathCopy}];
    v8 = 0;
  }

  else
  {
    _assetIdentifiers = [(PUReviewAssetsDataSource *)self _assetIdentifiers];
    v8 = [_assetIdentifiers count] != 0;
  }

  return v8;
}

- (PUReviewAssetsDataSource)initWithAssetsByIdentifier:(id)identifier usingOrdering:(id)ordering inAssetCollection:(id)collection
{
  identifierCopy = identifier;
  orderingCopy = ordering;
  collectionCopy = collection;
  v18.receiver = self;
  v18.super_class = PUReviewAssetsDataSource;
  v11 = [(PUTilingDataSource *)&v18 init];
  if (v11)
  {
    v12 = [identifierCopy copy];
    assetsByIdentifier = v11->__assetsByIdentifier;
    v11->__assetsByIdentifier = v12;

    v14 = [orderingCopy copy];
    assetIdentifiers = v11->__assetIdentifiers;
    v11->__assetIdentifiers = v14;

    objc_storeStrong(&v11->__reviewAssetCollection, collection);
    v16 = v11;
  }

  return v11;
}

@end