@interface PUCameraTransientAssetsDataSource
- (BOOL)isEmpty;
- (PUCameraTransientAssetsDataSource)initWithUUIDs:(id)ds mapping:(id)mapping representativeMapping:(id)representativeMapping inAssetCollection:(id)collection;
- (id)_uuidAtIndexPath:(id)path;
- (id)assetAtIndexPath:(id)path;
- (id)assetReferenceAtIndexPath:(id)path;
- (id)assetReferenceForAssetReference:(id)reference;
- (id)badgeInfoPromiseForAssetAtIndexPath:(id)path spatialPresentationEnabled:(BOOL)enabled;
- (id)convertIndexPath:(id)path fromAssetsDataSource:(id)source;
- (id)indexPathForAssetCollection:(id)collection;
- (id)indexPathForAssetReference:(id)reference;
- (id)startingAssetReference;
- (int64_t)numberOfSubItemsAtIndexPath:(id)path;
@end

@implementation PUCameraTransientAssetsDataSource

- (id)_uuidAtIndexPath:(id)path
{
  pathCopy = path;
  _assetUUIDs = [(PUCameraTransientAssetsDataSource *)self _assetUUIDs];
  item = [pathCopy item];

  if (item >= [_assetUUIDs count] - 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = [_assetUUIDs objectAtIndex:item];
  }

  return v7;
}

- (BOOL)isEmpty
{
  _assetUUIDs = [(PUCameraTransientAssetsDataSource *)self _assetUUIDs];
  v3 = [_assetUUIDs count] == 0;

  return v3;
}

- (id)startingAssetReference
{
  _assetUUIDs = [(PUCameraTransientAssetsDataSource *)self _assetUUIDs];
  v4 = [_assetUUIDs count];
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

- (id)convertIndexPath:(id)path fromAssetsDataSource:(id)source
{
  v5 = [source _uuidAtIndexPath:path];
  if (v5)
  {
    _assetUUIDs = [(PUCameraTransientAssetsDataSource *)self _assetUUIDs];
    v7 = [_assetUUIDs indexOfObject:v5];
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

- (id)assetReferenceForAssetReference:(id)reference
{
  asset = [reference asset];
  uuid = [asset uuid];
  _assetUUIDs = [(PUCameraTransientAssetsDataSource *)self _assetUUIDs];
  v7 = [_assetUUIDs indexOfObject:uuid];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  else
  {
    v9 = v7;
    _assetsByUUID = [(PUCameraTransientAssetsDataSource *)self _assetsByUUID];
    v11 = [_assetsByUUID objectForKey:uuid];
    v12 = [MEMORY[0x1E696AC88] indexPathForItem:v9 inSection:0];
    v13 = [PUAssetReference alloc];
    _transientAssetCollection = [(PUCameraTransientAssetsDataSource *)self _transientAssetCollection];
    identifier = [(PUTilingDataSource *)self identifier];
    v8 = [(PUAssetReference *)v13 initWithAsset:v11 assetCollection:_transientAssetCollection indexPath:v12 dataSourceIdentifier:identifier];
  }

  return v8;
}

- (id)assetAtIndexPath:(id)path
{
  pathCopy = path;
  _assetUUIDs = [(PUCameraTransientAssetsDataSource *)self _assetUUIDs];
  _assetsByUUID = [(PUCameraTransientAssetsDataSource *)self _assetsByUUID];
  item = [pathCopy item];

  v8 = [_assetUUIDs objectAtIndex:item];
  v9 = [_assetsByUUID objectForKey:v8];

  return v9;
}

- (id)badgeInfoPromiseForAssetAtIndexPath:(id)path spatialPresentationEnabled:(BOOL)enabled
{
  pathCopy = path;
  _assetUUIDs = [(PUCameraTransientAssetsDataSource *)self _assetUUIDs];
  _assetsByUUID = [(PUCameraTransientAssetsDataSource *)self _assetsByUUID];
  item = [pathCopy item];

  v9 = [_assetUUIDs objectAtIndex:item];
  v10 = [_assetsByUUID objectForKey:v9];
  isHDR = [v10 isHDR];
  mediaSubtypes = [v10 mediaSubtypes];
  canPlayPhotoIris = [v10 canPlayPhotoIris];
  burstIdentifier = [v10 burstIdentifier];
  numberOfRepresentedAssets = [v10 numberOfRepresentedAssets];
  v16 = *(MEMORY[0x1E69C4840] + 8);
  v17 = *(MEMORY[0x1E69C4840] + 24);
  v18 = burstIdentifier != 0;
  v19 = numberOfRepresentedAssets > 1;
  if (v18 && v19)
  {
    v20 = numberOfRepresentedAssets;
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

  if (canPlayPhotoIris)
  {
    v21 |= 0x40uLL;
  }

  if (isHDR)
  {
    v21 |= 4uLL;
  }

  v24[0] = v21 | (mediaSubtypes >> 10) & 0x400;
  v24[1] = v16;
  v24[2] = v20;
  v24[3] = v17;
  v22 = [[PUBadgeInfoPromise alloc] initWithBadgeInfo:v24];

  return v22;
}

- (id)indexPathForAssetCollection:(id)collection
{
  collectionCopy = collection;
  _transientAssetCollection = [(PUCameraTransientAssetsDataSource *)self _transientAssetCollection];

  if (_transientAssetCollection == collectionCopy)
  {
    v6 = [MEMORY[0x1E696AC88] indexPathWithIndex:0];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)indexPathForAssetReference:(id)reference
{
  referenceCopy = reference;
  v5 = referenceCopy;
  if (referenceCopy && ([referenceCopy dataSourceIdentifier], v6 = objc_claimAutoreleasedReturnValue(), -[PUTilingDataSource identifier](self, "identifier"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v6, "isEqual:", v7), v7, v6, !v8))
  {
    _assetUUIDs = [(PUCameraTransientAssetsDataSource *)self _assetUUIDs];
    asset = [v5 asset];
    uuid = [asset uuid];
    v13 = [_assetUUIDs indexOfObject:uuid];

    if (v13 == 0x7FFFFFFFFFFFFFFFLL)
    {
      indexPath = 0;
    }

    else
    {
      indexPath = [MEMORY[0x1E696AC88] indexPathForItem:v13 inSection:0];
    }
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
  _assetUUIDs = [(PUCameraTransientAssetsDataSource *)self _assetUUIDs];
  _assetsByUUID = [(PUCameraTransientAssetsDataSource *)self _assetsByUUID];
  v7 = [_assetUUIDs objectAtIndex:{objc_msgSend(pathCopy, "item")}];
  v8 = [_assetsByUUID objectForKey:v7];
  _transientAssetCollection = [(PUCameraTransientAssetsDataSource *)self _transientAssetCollection];
  v10 = [PUAssetReference alloc];
  identifier = [(PUTilingDataSource *)self identifier];
  v12 = [(PUAssetReference *)v10 initWithAsset:v8 assetCollection:_transientAssetCollection indexPath:pathCopy dataSourceIdentifier:identifier];

  return v12;
}

- (int64_t)numberOfSubItemsAtIndexPath:(id)path
{
  pathCopy = path;
  v6 = [pathCopy length];
  if (v6 == 1)
  {
    _assetUUIDs = [(PUCameraTransientAssetsDataSource *)self _assetUUIDs];
    v8 = [_assetUUIDs count];
  }

  else if (v6)
  {
    _assetUUIDs = [MEMORY[0x1E696AAA8] currentHandler];
    [_assetUUIDs handleFailureInMethod:a2 object:self file:@"PUCameraTransientAssetsDataSource.m" lineNumber:62 description:{@"invalid indexPath %@", pathCopy}];
    v8 = 0;
  }

  else
  {
    _assetUUIDs = [(PUCameraTransientAssetsDataSource *)self _assetUUIDs];
    v8 = [_assetUUIDs count] != 0;
  }

  return v8;
}

- (PUCameraTransientAssetsDataSource)initWithUUIDs:(id)ds mapping:(id)mapping representativeMapping:(id)representativeMapping inAssetCollection:(id)collection
{
  dsCopy = ds;
  mappingCopy = mapping;
  representativeMappingCopy = representativeMapping;
  collectionCopy = collection;
  v19.receiver = self;
  v19.super_class = PUCameraTransientAssetsDataSource;
  v15 = [(PUTilingDataSource *)&v19 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->__assetUUIDs, ds);
    objc_storeStrong(&v16->__assetsByUUID, mapping);
    objc_storeStrong(&v16->__representativeAssetsByBurstIdentifier, representativeMapping);
    objc_storeStrong(&v16->__transientAssetCollection, collection);
    v17 = v16;
  }

  return v16;
}

@end