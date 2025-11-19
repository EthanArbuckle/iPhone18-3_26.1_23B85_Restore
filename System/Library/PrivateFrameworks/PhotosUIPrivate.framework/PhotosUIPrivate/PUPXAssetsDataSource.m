@interface PUPXAssetsDataSource
- (PUPXAssetsDataSource)init;
- (PUPXAssetsDataSource)initWithUnderlyingDataSource:(id)a3;
- (id)assetReferenceAtIndexPath:(id)a3;
- (id)badgeInfoPromiseForAssetAtIndexPath:(id)a3 spatialPresentationEnabled:(BOOL)a4;
- (id)convertIndexPath:(id)a3 fromAssetsDataSource:(id)a4;
- (id)indexPathForAssetReference:(id)a3;
- (id)startingAssetReference;
- (int64_t)numberOfSubItemsAtIndexPath:(id)a3;
@end

@implementation PUPXAssetsDataSource

- (id)badgeInfoPromiseForAssetAtIndexPath:(id)a3 spatialPresentationEnabled:(BOOL)a4
{
  v5 = MEMORY[0x1E69C4490];
  v6 = a3;
  v7 = [v5 defaultManager];
  v8 = [(PUPXAssetsDataSource *)self underlyingDataSource];
  v9 = [v8 identifier];
  v10 = [v6 section];
  v11 = [v6 item];

  *&v18 = v9;
  *(&v18 + 1) = v10;
  *&v19 = v11;
  *(&v19 + 1) = 0x7FFFFFFFFFFFFFFFLL;
  v12 = [v8 assetReferenceAtItemIndexPath:&v18];
  v13 = [v12 asset];

  v18 = 0u;
  v19 = 0u;
  if (v7)
  {
    [v7 badgeInfoForAsset:v13 inCollection:0 options:16];
  }

  v14 = [PUBadgeInfoPromise alloc];
  v17[0] = v18;
  v17[1] = v19;
  v15 = [(PUBadgeInfoPromise *)v14 initWithBadgeInfo:v17];

  return v15;
}

- (id)convertIndexPath:(id)a3 fromAssetsDataSource:(id)a4
{
  v5 = [a4 assetReferenceAtIndexPath:a3];
  v6 = [(PUPXAssetsDataSource *)self indexPathForAssetReference:v5];

  return v6;
}

- (id)indexPathForAssetReference:(id)a3
{
  v4 = a3;
  v5 = [v4 dataSourceIdentifier];
  v6 = [(PUTilingDataSource *)self identifier];

  if (v5 == v6)
  {
    v14 = [v4 indexPath];
  }

  else
  {
    v7 = [(PUPXAssetsDataSource *)self underlyingDataSource];
    if ([v7 containsAnyItems])
    {
      v8 = objc_alloc(MEMORY[0x1E69C4498]);
      v9 = [v4 assetCollection];
      v10 = [v4 asset];
      v11 = *(MEMORY[0x1E69C48E8] + 16);
      v16 = *MEMORY[0x1E69C48E8];
      v17 = v11;
      v12 = [v8 initWithSectionObject:v9 itemObject:v10 subitemObject:0 indexPath:&v16];

      v16 = 0u;
      v17 = 0u;
      if (v7)
      {
        [v7 indexPathForAssetReference:v12];
        v13 = v16;
      }

      else
      {
        v13 = 0;
      }

      if (v13 == *MEMORY[0x1E69C4880])
      {
        v14 = 0;
      }

      else
      {
        v14 = PXIndexPathFromSimpleIndexPath();
      }
    }

    else
    {
      v14 = 0;
    }
  }

  return v14;
}

- (id)assetReferenceAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [(PUPXAssetsDataSource *)self underlyingDataSource];
  [v5 identifier];
  PXSimpleIndexPathFromIndexPath();

  v6 = [(PUPXAssetsDataSource *)self underlyingDataSource];
  memset(v12, 0, sizeof(v12));
  v7 = [v6 assetReferenceAtItemIndexPath:v12];

  v8 = [PUPXAssetReference alloc];
  v9 = [(PUTilingDataSource *)self identifier];
  v10 = [(PUPXAssetReference *)v8 initWithPXAssetReference:v7 dataSourceIdentifier:v9];

  return v10;
}

- (int64_t)numberOfSubItemsAtIndexPath:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AC88] pu_rootIndexPath];
  v6 = [v4 isEqual:v5];

  if (v6)
  {
    v7 = [(PUPXAssetsDataSource *)self underlyingDataSource];
    v8 = [v7 numberOfSections];
  }

  else if ([v4 length] == 1 && objc_msgSend(v4, "section") != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = [(PUPXAssetsDataSource *)self underlyingDataSource];
    v8 = [v7 numberOfItemsInSection:{objc_msgSend(v4, "section")}];
  }

  else
  {
    v7 = [(PUPXAssetsDataSource *)self underlyingDataSource];
    v8 = [v7 numberOfSubitemsInItem:objc_msgSend(v4 section:{"item"), objc_msgSend(v4, "section")}];
  }

  v9 = v8;

  return v9;
}

- (id)startingAssetReference
{
  v3 = [(PUPXAssetsDataSource *)self underlyingDataSource];
  v4 = [v3 startingAssetReference];

  if (v4)
  {
    v5 = [PUPXAssetReference alloc];
    v6 = [(PUTilingDataSource *)self identifier];
    v7 = [(PUPXAssetReference *)v5 initWithPXAssetReference:v4 dataSourceIdentifier:v6];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PUPXAssetsDataSource)initWithUnderlyingDataSource:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = PUPXAssetsDataSource;
  v6 = [(PUTilingDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingDataSource, a3);
  }

  return v7;
}

- (PUPXAssetsDataSource)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PUPXAssetsDataSource.m" lineNumber:19 description:{@"%s is not available as initializer", "-[PUPXAssetsDataSource init]"}];

  abort();
}

@end