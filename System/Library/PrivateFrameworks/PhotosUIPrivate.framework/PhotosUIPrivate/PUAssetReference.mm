@interface PUAssetReference
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (PUAssetReference)initWithAsset:(id)asset assetCollection:(id)collection indexPath:(id)path dataSourceIdentifier:(id)identifier;
- (PXAssetReference)pxAssetReference;
- (PXSimpleIndexPath)simpleIndexPath;
- (unint64_t)hash;
@end

@implementation PUAssetReference

- (PXAssetReference)pxAssetReference
{
  if (pxAssetReference_onceToken != -1)
  {
    dispatch_once(&pxAssetReference_onceToken, &__block_literal_global_10797);
  }

  indexPath = [(PUAssetReference *)self indexPath];
  PXSimpleIndexPathFromIndexPath();

  v4 = objc_alloc(MEMORY[0x1E69C4498]);
  assetCollection = [(PUAssetReference *)self assetCollection];
  asset = [(PUAssetReference *)self asset];
  memset(v9, 0, sizeof(v9));
  v7 = [v4 initWithSectionObject:assetCollection itemObject:asset subitemObject:0 indexPath:v9];

  return v7;
}

uint64_t __36__PUAssetReference_pxAssetReference__block_invoke()
{
  result = PXDataSourceIdentifierMakeUnique();
  pxAssetReference_unknownDataSourceIdentifier = result;
  return result;
}

- (PXSimpleIndexPath)simpleIndexPath
{
  indexPath = [(PUAssetReference *)self indexPath];
  *&retstr->var0 = 0u;
  *&retstr->var2 = 0u;
  PXSimpleIndexPathFromIndexPath();

  return result;
}

- (NSString)description
{
  v10.receiver = self;
  v10.super_class = PUAssetReference;
  v3 = [(PUAssetReference *)&v10 description];
  asset = [(PUAssetReference *)self asset];
  assetCollection = [(PUAssetReference *)self assetCollection];
  indexPath = [(PUAssetReference *)self indexPath];
  dataSourceIdentifier = [(PUAssetReference *)self dataSourceIdentifier];
  v8 = [v3 stringByAppendingFormat:@" asset=%@ assetCollection=%@ indexPath=%@ dataSourceIdentifier=%@", asset, assetCollection, indexPath, dataSourceIdentifier];

  return v8;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSIndexPath *)self->_indexPath isEqual:equalCopy[3]]&& [(NSString *)self->_dataSourceIdentifier isEqual:equalCopy[4]])
  {
    v5 = [(PUDisplayAsset *)self->_asset isEqual:equalCopy[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  asset = [(PUAssetReference *)self asset];
  v3 = [asset hash];

  return v3;
}

- (PUAssetReference)initWithAsset:(id)asset assetCollection:(id)collection indexPath:(id)path dataSourceIdentifier:(id)identifier
{
  assetCopy = asset;
  collectionCopy = collection;
  pathCopy = path;
  identifierCopy = identifier;
  v25.receiver = self;
  v25.super_class = PUAssetReference;
  v16 = [(PUAssetReference *)&v25 init];
  if (v16)
  {
    if (!assetCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:v16 file:@"PUAssetReference.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];
    }

    objc_storeStrong(&v16->_asset, asset);
    if (identifierCopy)
    {
      if (!pathCopy)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler2 handleFailureInMethod:a2 object:v16 file:@"PUAssetReference.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];
      }

      v17 = identifierCopy;
      dataSourceIdentifier = v16->_dataSourceIdentifier;
      v16->_dataSourceIdentifier = v17;
    }

    else
    {
      dataSourceIdentifier = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [dataSourceIdentifier UUIDString];
      v20 = [@"random-" stringByAppendingString:uUIDString];
      v21 = v16->_dataSourceIdentifier;
      v16->_dataSourceIdentifier = v20;
    }

    objc_storeStrong(&v16->_assetCollection, collection);
    objc_storeStrong(&v16->_indexPath, path);
  }

  return v16;
}

@end