@interface _PXBrowserDataSourceSelection
- (NSArray)assets;
- (_PXBrowserDataSourceSelection)initWithIndexPaths:(id)a3 dataSource:(id)a4;
- (id)assetReferenceAtIndex:(int64_t)a3;
- (id)displayAssetAtIndex:(int64_t)a3;
- (int64_t)assetCount;
- (int64_t)containerAssetCount;
- (int64_t)estimatedAssetCount;
- (int64_t)indexOfAssetReference:(id)a3;
- (int64_t)mediaType;
@end

@implementation _PXBrowserDataSourceSelection

- (int64_t)containerAssetCount
{
  v2 = [(_PXBrowserDataSourceSelection *)self dataSource];
  v3 = [v2 totalNumberOfItems];

  return v3;
}

- (int64_t)indexOfAssetReference:(id)a3
{
  v5 = a3;
  v6 = [v5 objectForKeyedSubscript:@"asset"];
  v7 = [v5 objectForKeyedSubscript:@"indexPath"];
  v8 = [v5 objectForKeyedSubscript:@"selectionPointer"];
  v9 = [v5 objectForKeyedSubscript:@"dataSourceVersion"];
  v10 = [(_PXBrowserDataSourceSelection *)self indexPaths];
  v11 = [v10 indexOfObject:v7];

  v12 = [(_PXBrowserDataSourceSelection *)self dataSource];
  if ([v8 pointerValue] != self || (v13 = objc_msgSend(v12, "versionIdentifier"), v13 != objc_msgSend(v9, "longValue")))
  {
    v17 = [v12 indexPathForDisplayAsset:v6 hintIndexPath:v7];
    if (v17)
    {
      v18 = [(_PXBrowserDataSourceSelection *)self indexPaths];
      v11 = [v18 indexOfObject:v17];
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
    v15 = [v12 displayAssetAtIndexPath:v7];
    v16 = [v5 objectForKeyedSubscript:@"asset"];
    v21 = [v15 isEqual:v16];

    if (v21)
    {
LABEL_10:
      v14 = v11;
      goto LABEL_11;
    }

    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:v20 object:self file:@"PXBrowserSnapshot.m" lineNumber:233 description:@"version mismatch"];
LABEL_9:

    goto LABEL_10;
  }

LABEL_11:

  return v14;
}

- (id)assetReferenceAtIndex:(int64_t)a3
{
  v5 = [(_PXBrowserDataSourceSelection *)self assets];
  v6 = [v5 objectAtIndexedSubscript:a3];

  v7 = [(_PXBrowserDataSourceSelection *)self indexPaths];
  v8 = [v7 objectAtIndexedSubscript:a3];

  v9 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:4];
  [v9 setObject:v6 forKeyedSubscript:@"asset"];
  [v9 setObject:v8 forKeyedSubscript:@"indexPath"];
  v10 = [MEMORY[0x1E696B098] valueWithPointer:self];
  [v9 setObject:v10 forKeyedSubscript:@"selectionPointer"];

  v11 = MEMORY[0x1E696AD98];
  v12 = [(_PXBrowserDataSourceSelection *)self dataSource];
  v13 = [v11 numberWithInteger:{objc_msgSend(v12, "versionIdentifier")}];
  [v9 setObject:v13 forKeyedSubscript:@"dataSourceVersion"];

  return v9;
}

- (id)displayAssetAtIndex:(int64_t)a3
{
  v4 = [(_PXBrowserDataSourceSelection *)self assets];
  v5 = [v4 objectAtIndexedSubscript:a3];

  return v5;
}

- (int64_t)mediaType
{
  v2 = [(_PXBrowserDataSourceSelection *)self assets];
  v3 = PXMediaTypeForAssets(v2);

  return v3;
}

- (int64_t)assetCount
{
  v2 = [(_PXBrowserDataSourceSelection *)self indexPaths];
  v3 = [v2 count];

  return v3;
}

- (int64_t)estimatedAssetCount
{
  v2 = [(_PXBrowserDataSourceSelection *)self indexPaths];
  v3 = [v2 count];

  return v3;
}

- (NSArray)assets
{
  v21 = *MEMORY[0x1E69E9840];
  assets = self->_assets;
  if (!assets)
  {
    v4 = [(_PXBrowserDataSourceSelection *)self indexPaths];
    v5 = [(_PXBrowserDataSourceSelection *)self dataSource];
    v6 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v4, "count")}];
    v7 = self->_assets;
    self->_assets = v6;

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v8 = v4;
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
          v14 = [v5 displayAssetAtIndexPath:{*(*(&v16 + 1) + 8 * v12), v16}];
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

- (_PXBrowserDataSourceSelection)initWithIndexPaths:(id)a3 dataSource:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = _PXBrowserDataSourceSelection;
  v8 = [(_PXBrowserDataSourceSelection *)&v12 init];
  if (v8)
  {
    v9 = [v6 copy];
    indexPaths = v8->_indexPaths;
    v8->_indexPaths = v9;

    objc_storeStrong(&v8->_dataSource, a4);
  }

  return v8;
}

@end