@interface PUPXAssetsDataSource
- (PUPXAssetsDataSource)init;
- (PUPXAssetsDataSource)initWithUnderlyingDataSource:(id)source;
- (id)assetReferenceAtIndexPath:(id)path;
- (id)badgeInfoPromiseForAssetAtIndexPath:(id)path spatialPresentationEnabled:(BOOL)enabled;
- (id)convertIndexPath:(id)path fromAssetsDataSource:(id)source;
- (id)indexPathForAssetReference:(id)reference;
- (id)startingAssetReference;
- (int64_t)numberOfSubItemsAtIndexPath:(id)path;
@end

@implementation PUPXAssetsDataSource

- (id)badgeInfoPromiseForAssetAtIndexPath:(id)path spatialPresentationEnabled:(BOOL)enabled
{
  v5 = MEMORY[0x1E69C4490];
  pathCopy = path;
  defaultManager = [v5 defaultManager];
  underlyingDataSource = [(PUPXAssetsDataSource *)self underlyingDataSource];
  identifier = [underlyingDataSource identifier];
  section = [pathCopy section];
  item = [pathCopy item];

  *&v18 = identifier;
  *(&v18 + 1) = section;
  *&v19 = item;
  *(&v19 + 1) = 0x7FFFFFFFFFFFFFFFLL;
  v12 = [underlyingDataSource assetReferenceAtItemIndexPath:&v18];
  asset = [v12 asset];

  v18 = 0u;
  v19 = 0u;
  if (defaultManager)
  {
    [defaultManager badgeInfoForAsset:asset inCollection:0 options:16];
  }

  v14 = [PUBadgeInfoPromise alloc];
  v17[0] = v18;
  v17[1] = v19;
  v15 = [(PUBadgeInfoPromise *)v14 initWithBadgeInfo:v17];

  return v15;
}

- (id)convertIndexPath:(id)path fromAssetsDataSource:(id)source
{
  v5 = [source assetReferenceAtIndexPath:path];
  v6 = [(PUPXAssetsDataSource *)self indexPathForAssetReference:v5];

  return v6;
}

- (id)indexPathForAssetReference:(id)reference
{
  referenceCopy = reference;
  dataSourceIdentifier = [referenceCopy dataSourceIdentifier];
  identifier = [(PUTilingDataSource *)self identifier];

  if (dataSourceIdentifier == identifier)
  {
    indexPath = [referenceCopy indexPath];
  }

  else
  {
    underlyingDataSource = [(PUPXAssetsDataSource *)self underlyingDataSource];
    if ([underlyingDataSource containsAnyItems])
    {
      v8 = objc_alloc(MEMORY[0x1E69C4498]);
      assetCollection = [referenceCopy assetCollection];
      asset = [referenceCopy asset];
      v11 = *(MEMORY[0x1E69C48E8] + 16);
      v16 = *MEMORY[0x1E69C48E8];
      v17 = v11;
      v12 = [v8 initWithSectionObject:assetCollection itemObject:asset subitemObject:0 indexPath:&v16];

      v16 = 0u;
      v17 = 0u;
      if (underlyingDataSource)
      {
        [underlyingDataSource indexPathForAssetReference:v12];
        v13 = v16;
      }

      else
      {
        v13 = 0;
      }

      if (v13 == *MEMORY[0x1E69C4880])
      {
        indexPath = 0;
      }

      else
      {
        indexPath = PXIndexPathFromSimpleIndexPath();
      }
    }

    else
    {
      indexPath = 0;
    }
  }

  return indexPath;
}

- (id)assetReferenceAtIndexPath:(id)path
{
  pathCopy = path;
  underlyingDataSource = [(PUPXAssetsDataSource *)self underlyingDataSource];
  [underlyingDataSource identifier];
  PXSimpleIndexPathFromIndexPath();

  underlyingDataSource2 = [(PUPXAssetsDataSource *)self underlyingDataSource];
  memset(v12, 0, sizeof(v12));
  v7 = [underlyingDataSource2 assetReferenceAtItemIndexPath:v12];

  v8 = [PUPXAssetReference alloc];
  identifier = [(PUTilingDataSource *)self identifier];
  v10 = [(PUPXAssetReference *)v8 initWithPXAssetReference:v7 dataSourceIdentifier:identifier];

  return v10;
}

- (int64_t)numberOfSubItemsAtIndexPath:(id)path
{
  pathCopy = path;
  pu_rootIndexPath = [MEMORY[0x1E696AC88] pu_rootIndexPath];
  v6 = [pathCopy isEqual:pu_rootIndexPath];

  if (v6)
  {
    underlyingDataSource = [(PUPXAssetsDataSource *)self underlyingDataSource];
    numberOfSections = [underlyingDataSource numberOfSections];
  }

  else if ([pathCopy length] == 1 && objc_msgSend(pathCopy, "section") != 0x7FFFFFFFFFFFFFFFLL)
  {
    underlyingDataSource = [(PUPXAssetsDataSource *)self underlyingDataSource];
    numberOfSections = [underlyingDataSource numberOfItemsInSection:{objc_msgSend(pathCopy, "section")}];
  }

  else
  {
    underlyingDataSource = [(PUPXAssetsDataSource *)self underlyingDataSource];
    numberOfSections = [underlyingDataSource numberOfSubitemsInItem:objc_msgSend(pathCopy section:{"item"), objc_msgSend(pathCopy, "section")}];
  }

  v9 = numberOfSections;

  return v9;
}

- (id)startingAssetReference
{
  underlyingDataSource = [(PUPXAssetsDataSource *)self underlyingDataSource];
  startingAssetReference = [underlyingDataSource startingAssetReference];

  if (startingAssetReference)
  {
    v5 = [PUPXAssetReference alloc];
    identifier = [(PUTilingDataSource *)self identifier];
    v7 = [(PUPXAssetReference *)v5 initWithPXAssetReference:startingAssetReference dataSourceIdentifier:identifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (PUPXAssetsDataSource)initWithUnderlyingDataSource:(id)source
{
  sourceCopy = source;
  v9.receiver = self;
  v9.super_class = PUPXAssetsDataSource;
  v6 = [(PUTilingDataSource *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_underlyingDataSource, source);
  }

  return v7;
}

- (PUPXAssetsDataSource)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUPXAssetsDataSource.m" lineNumber:19 description:{@"%s is not available as initializer", "-[PUPXAssetsDataSource init]"}];

  abort();
}

@end