@interface PUAssetReference
- (BOOL)isEqual:(id)a3;
- (NSString)description;
- (PUAssetReference)initWithAsset:(id)a3 assetCollection:(id)a4 indexPath:(id)a5 dataSourceIdentifier:(id)a6;
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

  v3 = [(PUAssetReference *)self indexPath];
  PXSimpleIndexPathFromIndexPath();

  v4 = objc_alloc(MEMORY[0x1E69C4498]);
  v5 = [(PUAssetReference *)self assetCollection];
  v6 = [(PUAssetReference *)self asset];
  memset(v9, 0, sizeof(v9));
  v7 = [v4 initWithSectionObject:v5 itemObject:v6 subitemObject:0 indexPath:v9];

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
  v5 = [(PUAssetReference *)self indexPath];
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
  v4 = [(PUAssetReference *)self asset];
  v5 = [(PUAssetReference *)self assetCollection];
  v6 = [(PUAssetReference *)self indexPath];
  v7 = [(PUAssetReference *)self dataSourceIdentifier];
  v8 = [v3 stringByAppendingFormat:@" asset=%@ assetCollection=%@ indexPath=%@ dataSourceIdentifier=%@", v4, v5, v6, v7];

  return v8;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSIndexPath *)self->_indexPath isEqual:v4[3]]&& [(NSString *)self->_dataSourceIdentifier isEqual:v4[4]])
  {
    v5 = [(PUDisplayAsset *)self->_asset isEqual:v4[1]];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)hash
{
  v2 = [(PUAssetReference *)self asset];
  v3 = [v2 hash];

  return v3;
}

- (PUAssetReference)initWithAsset:(id)a3 assetCollection:(id)a4 indexPath:(id)a5 dataSourceIdentifier:(id)a6
{
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v25.receiver = self;
  v25.super_class = PUAssetReference;
  v16 = [(PUAssetReference *)&v25 init];
  if (v16)
  {
    if (!v12)
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:a2 object:v16 file:@"PUAssetReference.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"asset != nil"}];
    }

    objc_storeStrong(&v16->_asset, a3);
    if (v15)
    {
      if (!v14)
      {
        v24 = [MEMORY[0x1E696AAA8] currentHandler];
        [v24 handleFailureInMethod:a2 object:v16 file:@"PUAssetReference.m" lineNumber:24 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];
      }

      v17 = v15;
      dataSourceIdentifier = v16->_dataSourceIdentifier;
      v16->_dataSourceIdentifier = v17;
    }

    else
    {
      dataSourceIdentifier = [MEMORY[0x1E696AFB0] UUID];
      v19 = [dataSourceIdentifier UUIDString];
      v20 = [@"random-" stringByAppendingString:v19];
      v21 = v16->_dataSourceIdentifier;
      v16->_dataSourceIdentifier = v20;
    }

    objc_storeStrong(&v16->_assetCollection, a4);
    objc_storeStrong(&v16->_indexPath, a5);
  }

  return v16;
}

@end