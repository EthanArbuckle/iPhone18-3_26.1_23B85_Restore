@interface _PXBrowserDataSourceSelection
- (NSArray)assets;
- (_PXBrowserDataSourceSelection)initWithIndexPaths:(id)paths dataSource:(id)source;
- (id)assetReferenceAtIndex:(int64_t)index;
- (id)displayAssetAtIndex:(int64_t)index;
- (int64_t)assetCount;
- (int64_t)containerAssetCount;
- (int64_t)estimatedAssetCount;
- (int64_t)indexOfAssetReference:(id)reference;
- (int64_t)mediaType;
@end

@implementation _PXBrowserDataSourceSelection

- (int64_t)containerAssetCount
{
  dataSource = [(_PXBrowserDataSourceSelection *)self dataSource];
  totalNumberOfItems = [dataSource totalNumberOfItems];

  return totalNumberOfItems;
}

- (int64_t)indexOfAssetReference:(id)reference
{
  referenceCopy = reference;
  v6 = [referenceCopy objectForKeyedSubscript:@"asset"];
  v7 = [referenceCopy objectForKeyedSubscript:@"indexPath"];
  v8 = [referenceCopy objectForKeyedSubscript:@"selectionPointer"];
  v9 = [referenceCopy objectForKeyedSubscript:@"dataSourceVersion"];
  indexPaths = [(_PXBrowserDataSourceSelection *)self indexPaths];
  v11 = [indexPaths indexOfObject:v7];

  dataSource = [(_PXBrowserDataSourceSelection *)self dataSource];
  if ([v8 pointerValue] != self || (v13 = objc_msgSend(dataSource, "versionIdentifier"), v13 != objc_msgSend(v9, "longValue")))
  {
    currentHandler = [dataSource indexPathForDisplayAsset:v6 hintIndexPath:v7];
    if (currentHandler)
    {
      indexPaths2 = [(_PXBrowserDataSourceSelection *)self indexPaths];
      v11 = [indexPaths2 indexOfObject:currentHandler];
    }

    else
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    goto LABEL_9;
  }

  v14 = 0x7FFFFFFFFFFFFFFFLL;
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v20 = a2;
    v15 = [dataSource displayAssetAtIndexPath:v7];
    v16 = [referenceCopy objectForKeyedSubscript:@"asset"];
    v21 = [v15 isEqual:v16];

    if (v21)
    {
LABEL_10:
      v14 = v11;
      goto LABEL_11;
    }

    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:v20 object:self file:@"PXBrowserSnapshot.m" lineNumber:233 description:@"version mismatch"];
LABEL_9:

    goto LABEL_10;
  }

LABEL_11:

  return v14;
}

- (id)assetReferenceAtIndex:(int64_t)index
{
  assets = [(_PXBrowserDataSourceSelection *)self assets];
  v6 = [assets objectAtIndexedSubscript:index];

  indexPaths = [(_PXBrowserDataSourceSelection *)self indexPaths];
  v8 = [indexPaths objectAtIndexedSubscript:index];

  v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  [v9 setObject:v6 forKeyedSubscript:@"asset"];
  [v9 setObject:v8 forKeyedSubscript:@"indexPath"];
  v10 = [MEMORY[0x1E696B098] valueWithPointer:self];
  [v9 setObject:v10 forKeyedSubscript:@"selectionPointer"];

  v11 = MEMORY[0x1E696AD98];
  dataSource = [(_PXBrowserDataSourceSelection *)self dataSource];
  v13 = [v11 numberWithInteger:{objc_msgSend(dataSource, "versionIdentifier")}];
  [v9 setObject:v13 forKeyedSubscript:@"dataSourceVersion"];

  return v9;
}

- (id)displayAssetAtIndex:(int64_t)index
{
  assets = [(_PXBrowserDataSourceSelection *)self assets];
  v5 = [assets objectAtIndexedSubscript:index];

  return v5;
}

- (int64_t)mediaType
{
  assets = [(_PXBrowserDataSourceSelection *)self assets];
  v3 = PXMediaTypeForAssets(assets);

  return v3;
}

- (int64_t)assetCount
{
  indexPaths = [(_PXBrowserDataSourceSelection *)self indexPaths];
  v3 = [indexPaths count];

  return v3;
}

- (int64_t)estimatedAssetCount
{
  indexPaths = [(_PXBrowserDataSourceSelection *)self indexPaths];
  v3 = [indexPaths count];

  return v3;
}

- (NSArray)assets
{
  v21 = *MEMORY[0x1E69E9840];
  assets = self->_assets;
  if (!assets)
  {
    indexPaths = [(_PXBrowserDataSourceSelection *)self indexPaths];
    dataSource = [(_PXBrowserDataSourceSelection *)self dataSource];
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(indexPaths, "count")}];
    v7 = self->_assets;
    self->_assets = v6;

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = indexPaths;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        v12 = 0;
        do
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = self->_assets;
          v14 = [dataSource displayAssetAtIndexPath:{*(*(&v16 + 1) + 8 * v12), v16}];
          [(NSMutableArray *)v13 addObject:v14];

          ++v12;
        }

        while (v10 != v12);
        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }

    assets = self->_assets;
  }

  return assets;
}

- (_PXBrowserDataSourceSelection)initWithIndexPaths:(id)paths dataSource:(id)source
{
  pathsCopy = paths;
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = _PXBrowserDataSourceSelection;
  v8 = [(_PXBrowserDataSourceSelection *)&v12 init];
  if (v8)
  {
    v9 = [pathsCopy copy];
    indexPaths = v8->_indexPaths;
    v8->_indexPaths = v9;

    objc_storeStrong(&v8->_dataSource, source);
  }

  return v8;
}

@end