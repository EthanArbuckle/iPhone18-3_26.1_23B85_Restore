@interface PXCollectionsBrowserSelectionSnapshot
- (NSArray)modelObjects;
- (PXCollectionsBrowserSelectionSnapshot)initWithIndexPaths:(id)paths dataSource:(id)source;
- (id)assetReferenceAtIndex:(int64_t)index;
- (id)displayAssetAtIndex:(int64_t)index;
@end

@implementation PXCollectionsBrowserSelectionSnapshot

- (id)displayAssetAtIndex:(int64_t)index
{
  v3 = PXAssertGetLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *v5 = 0;
    _os_log_error_impl(&dword_1B3F73000, v3, OS_LOG_TYPE_ERROR, "Accessing assets from a collections selection snapshot is unsupported", v5, 2u);
  }

  return 0;
}

- (id)assetReferenceAtIndex:(int64_t)index
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXBrowserSnapshot.m" lineNumber:302 description:@"Accessing asset references from a collections selection snapshot is unsupported"];

  abort();
}

- (NSArray)modelObjects
{
  v24 = *MEMORY[0x1E69E9840];
  modelObjects = self->_modelObjects;
  if (!modelObjects)
  {
    v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{-[NSArray count](self->_indexPaths, "count")}];
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v5 = self->_indexPaths;
    v6 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      do
      {
        v9 = 0;
        do
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * v9);
          v17 = 0u;
          v18 = 0u;
          PXSimpleIndexPathFromIndexPath(COERCE_FLOAT64_T([(PXSectionedDataSource *)self->_dataSource identifier]), v10, &v17);
          dataSource = self->_dataSource;
          v16[0] = v17;
          v16[1] = v18;
          v12 = [(PXSectionedDataSource *)dataSource objectAtIndexPath:v16];
          [v4 addObject:v12];

          ++v9;
        }

        while (v7 != v9);
        v7 = [(NSArray *)v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v7);
    }

    v13 = [v4 copy];
    v14 = self->_modelObjects;
    self->_modelObjects = v13;

    modelObjects = self->_modelObjects;
  }

  return modelObjects;
}

- (PXCollectionsBrowserSelectionSnapshot)initWithIndexPaths:(id)paths dataSource:(id)source
{
  pathsCopy = paths;
  sourceCopy = source;
  v12.receiver = self;
  v12.super_class = PXCollectionsBrowserSelectionSnapshot;
  v8 = [(PXCollectionsBrowserSelectionSnapshot *)&v12 init];
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