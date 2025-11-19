@interface PXSyntheticAssetsDataSourceManager
- (PXSyntheticAssetsDataSourceManager)init;
- (PXSyntheticAssetsDataSourceManager)initWithConfigurationBlock:(id)a3;
- (id)createInitialDataSource;
- (void)_appendIncrementalChangeDetails:(id)a3;
- (void)changeItemAtIndexPath:(id)a3 toAsset:(id)a4;
- (void)changeSectionAtIndex:(int64_t)a3 toAssetCollection:(id)a4;
- (void)insertItemAtIndexPath:(id)a3 assetBlock:(id)a4;
- (void)insertSectionAtIndex:(int64_t)a3 count:(int64_t)a4 assetCollection:(id)a5 assetBlock:(id)a6;
- (void)markChangeAsReload;
- (void)performDataSourceChanges:(id)a3;
- (void)removeItemAtIndexPath:(id)a3;
- (void)removeSectionAtIndex:(int64_t)a3;
@end

@implementation PXSyntheticAssetsDataSourceManager

- (void)markChangeAsReload
{
  if (!self->_isPerformingDataSourceChanges)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"_isPerformingDataSourceChanges"}];
  }

  self->_changeIsReload = 1;
  changeDetailsCoalescer = self->_changeDetailsCoalescer;
  self->_changeDetailsCoalescer = 0;
}

- (void)changeSectionAtIndex:(int64_t)a3 toAssetCollection:(id)a4
{
  v18 = a4;
  if (!self->_isPerformingDataSourceChanges)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"_isPerformingDataSourceChanges"}];
  }

  if ([(NSMutableArray *)self->_nextAssetCollections count]<= a3)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:168 description:@"Out of bounds index for section change"];
  }

  nextAssetCollections = self->_nextAssetCollections;
  v8 = [v18 copyWithZone:0];
  [(NSMutableArray *)nextAssetCollections replaceObjectAtIndex:a3 withObject:v8];

  v9 = [PXSectionedDataSourceChangeDetails alloc];
  v10 = [(PXSectionedDataSourceManager *)self dataSource];
  v11 = [v10 identifier];
  v12 = [(PXSectionedDataSourceManager *)self dataSource];
  v13 = [v12 identifier];
  v14 = [PXArrayChangeDetails changeDetailsWithChangedIndexRange:a3, 1];
  v15 = [(PXSectionedDataSourceChangeDetails *)v9 initWithFromDataSourceIdentifier:v11 toDataSourceIdentifier:v13 sectionChanges:v14 itemChangeDetailsBySection:0 subitemChangeDetailsByItemBySection:0];

  [(PXSyntheticAssetsDataSourceManager *)self _appendIncrementalChangeDetails:v15];
}

- (void)removeSectionAtIndex:(int64_t)a3
{
  if (!self->_isPerformingDataSourceChanges)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"_isPerformingDataSourceChanges"}];
  }

  if ([(NSMutableArray *)self->_nextAssetCollections count]<= a3 || [(NSMutableArray *)self->_nextAssetsBySection count]<= a3)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:158 description:@"Out of bounds index for section deletion"];
  }

  [(NSMutableArray *)self->_nextAssetCollections removeObjectAtIndex:a3];
  [(NSMutableArray *)self->_nextAssetsBySection removeObjectAtIndex:a3];
  v6 = [PXSectionedDataSourceChangeDetails alloc];
  v7 = [(PXSectionedDataSourceManager *)self dataSource];
  v8 = [v7 identifier];
  v9 = [(PXSectionedDataSourceManager *)self dataSource];
  v10 = [v9 identifier];
  v11 = [PXArrayChangeDetails changeDetailsWithRemovedIndexRange:a3, 1];
  v14 = [(PXSectionedDataSourceChangeDetails *)v6 initWithFromDataSourceIdentifier:v8 toDataSourceIdentifier:v10 sectionChanges:v11 itemChangeDetailsBySection:0 subitemChangeDetailsByItemBySection:0];

  [(PXSyntheticAssetsDataSourceManager *)self _appendIncrementalChangeDetails:v14];
}

- (void)insertSectionAtIndex:(int64_t)a3 count:(int64_t)a4 assetCollection:(id)a5 assetBlock:(id)a6
{
  v27 = a5;
  v11 = a6;
  if (self->_isPerformingDataSourceChanges)
  {
    if (!a4)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v26 = [MEMORY[0x1E696AAA8] currentHandler];
    [v26 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"_isPerformingDataSourceChanges"}];

    if (!a4)
    {
      goto LABEL_5;
    }
  }

  if (!v11)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"assetBlock != nil || count == 0"}];
  }

LABEL_5:
  if ([(NSMutableArray *)self->_nextAssetCollections count]< a3 || [(NSMutableArray *)self->_nextAssetsBySection count]< a3)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:143 description:@"Out of bounds index for section insertion"];
  }

  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:a4];
  if (a4 >= 1)
  {
    v13 = 0;
    do
    {
      v14 = v11[2](v11, a3, v13);
      [v12 addObject:v14];

      ++v13;
    }

    while (a4 != v13);
  }

  [(NSMutableArray *)self->_nextAssetsBySection insertObject:v12 atIndex:a3];
  nextAssetCollections = self->_nextAssetCollections;
  v16 = [v27 copyWithZone:0];
  [(NSMutableArray *)nextAssetCollections insertObject:v16 atIndex:a3];

  v17 = [PXSectionedDataSourceChangeDetails alloc];
  v18 = [(PXSectionedDataSourceManager *)self dataSource];
  v19 = [v18 identifier];
  v20 = [(PXSectionedDataSourceManager *)self dataSource];
  v21 = [v20 identifier];
  v22 = [PXArrayChangeDetails changeDetailsWithInsertedIndexRange:a3, 1];
  v23 = [(PXSectionedDataSourceChangeDetails *)v17 initWithFromDataSourceIdentifier:v19 toDataSourceIdentifier:v21 sectionChanges:v22 itemChangeDetailsBySection:0 subitemChangeDetailsByItemBySection:0];

  [(PXSyntheticAssetsDataSourceManager *)self _appendIncrementalChangeDetails:v23];
}

- (void)changeItemAtIndexPath:(id)a3 toAsset:(id)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!self->_isPerformingDataSourceChanges)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"_isPerformingDataSourceChanges"}];
  }

  v9 = [v7 px_section];
  v28 = v7;
  v10 = [v7 px_item];
  if (v9 >= [(NSMutableArray *)self->_nextAssetsBySection count])
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:127 description:@"Out of bounds section for change"];
  }

  v11 = [(NSMutableArray *)self->_nextAssetsBySection objectAtIndexedSubscript:v9];
  if (v10 >= [v11 count])
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:129 description:{@"Out of bounds index for change in section %ld", v9}];

    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (v8)
  {
LABEL_7:
    v12 = v8[2](v8, v9, v10);
    [v11 replaceObjectAtIndex:v10 withObject:v12];
  }

LABEL_8:
  v13 = [PXSectionedDataSourceChangeDetails alloc];
  v14 = [(PXSectionedDataSourceManager *)self dataSource];
  v27 = v11;
  v15 = [v14 identifier];
  v16 = [(PXSectionedDataSourceManager *)self dataSource];
  v26 = v8;
  v17 = [v16 identifier];
  v18 = +[PXArrayChangeDetails changeDetailsWithNoChanges];
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  v29 = v19;
  v20 = [PXArrayChangeDetails changeDetailsWithChangedIndexRange:v10, 1];
  v30[0] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v22 = [(PXSectionedDataSourceChangeDetails *)v13 initWithFromDataSourceIdentifier:v15 toDataSourceIdentifier:v17 sectionChanges:v18 itemChangeDetailsBySection:v21 subitemChangeDetailsByItemBySection:0];

  [(PXSyntheticAssetsDataSourceManager *)self _appendIncrementalChangeDetails:v22];
}

- (void)removeItemAtIndexPath:(id)a3
{
  v25[1] = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (!self->_isPerformingDataSourceChanges)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"_isPerformingDataSourceChanges"}];
  }

  v6 = [v5 px_section];
  v23 = v5;
  v7 = [v5 px_item];
  if (v6 >= [(NSMutableArray *)self->_nextAssetsBySection count])
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:113 description:@"Out of bounds section for deletion"];
  }

  v8 = [(NSMutableArray *)self->_nextAssetsBySection objectAtIndexedSubscript:v6];
  if (v7 >= [v8 count])
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:115 description:{@"Out of bounds index for deletion in section %ld", v6}];
  }

  [v8 removeObjectAtIndex:v7];
  v9 = [PXSectionedDataSourceChangeDetails alloc];
  v10 = [(PXSectionedDataSourceManager *)self dataSource];
  v11 = [v10 identifier];
  v12 = [(PXSectionedDataSourceManager *)self dataSource];
  v22 = v8;
  v13 = [v12 identifier];
  v14 = +[PXArrayChangeDetails changeDetailsWithNoChanges];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:v6];
  v24 = v15;
  v16 = [PXArrayChangeDetails changeDetailsWithRemovedIndexRange:v7, 1];
  v25[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v18 = [(PXSectionedDataSourceChangeDetails *)v9 initWithFromDataSourceIdentifier:v11 toDataSourceIdentifier:v13 sectionChanges:v14 itemChangeDetailsBySection:v17 subitemChangeDetailsByItemBySection:0];

  [(PXSyntheticAssetsDataSourceManager *)self _appendIncrementalChangeDetails:v18];
}

- (void)insertItemAtIndexPath:(id)a3 assetBlock:(id)a4
{
  v30[1] = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = a4;
  if (!self->_isPerformingDataSourceChanges)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"_isPerformingDataSourceChanges"}];
  }

  v9 = [v7 px_section];
  v28 = v7;
  v10 = [v7 px_item];
  if (v9 >= [(NSMutableArray *)self->_nextAssetsBySection count])
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:98 description:@"Out of bounds section for insertion"];
  }

  v11 = [(NSMutableArray *)self->_nextAssetsBySection objectAtIndexedSubscript:v9];
  if (v10 > [v11 count])
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:100 description:{@"Out of bounds index for insertion in section %ld", v9}];
  }

  v27 = v8[2](v8, v9, v10);
  [v11 insertObject:v27 atIndex:v10];
  v12 = [PXSectionedDataSourceChangeDetails alloc];
  v13 = [(PXSectionedDataSourceManager *)self dataSource];
  v26 = v11;
  v14 = [v13 identifier];
  v15 = [(PXSectionedDataSourceManager *)self dataSource];
  v25 = v8;
  v16 = [v15 identifier];
  v17 = +[PXArrayChangeDetails changeDetailsWithNoChanges];
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
  v29 = v18;
  v19 = [PXArrayChangeDetails changeDetailsWithInsertedIndexRange:v10, 1];
  v30[0] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v21 = [(PXSectionedDataSourceChangeDetails *)v12 initWithFromDataSourceIdentifier:v14 toDataSourceIdentifier:v16 sectionChanges:v17 itemChangeDetailsBySection:v20 subitemChangeDetailsByItemBySection:0];

  [(PXSyntheticAssetsDataSourceManager *)self _appendIncrementalChangeDetails:v21];
}

- (void)_appendIncrementalChangeDetails:(id)a3
{
  v4 = a3;
  changeDetailsCoalescer = self->_changeDetailsCoalescer;
  v8 = v4;
  if (changeDetailsCoalescer || self->_changeIsReload)
  {
    [(PXSectionedChangeDetailsCoalescer *)changeDetailsCoalescer addChangeDetails:v4];
  }

  else
  {
    v6 = [[PXSectionedChangeDetailsCoalescer alloc] initWithSectionedChangeDetails:v4];
    v7 = self->_changeDetailsCoalescer;
    self->_changeDetailsCoalescer = v6;
  }
}

- (void)performDataSourceChanges:(id)a3
{
  v39 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (self->_isPerformingDataSourceChanges)
  {
    v31 = [MEMORY[0x1E696AAA8] currentHandler];
    [v31 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:50 description:@"Nested changes not supported"];
  }

  v6 = [(PXSectionedDataSourceManager *)self dataSource];
  v7 = [v6 assetsBySection];

  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v7, "count")}];
  nextAssetsBySection = self->_nextAssetsBySection;
  self->_nextAssetsBySection = v8;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v35;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v35 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v15 = self->_nextAssetsBySection;
        v16 = [*(*(&v34 + 1) + 8 * i) mutableCopy];
        [(NSMutableArray *)v15 addObject:v16];
      }

      v12 = [v10 countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v12);
  }

  v17 = [(PXSectionedDataSourceManager *)self dataSource];
  v18 = [v17 assetCollections];

  v19 = [v18 mutableCopy];
  nextAssetCollections = self->_nextAssetCollections;
  self->_nextAssetCollections = v19;

  self->_isPerformingDataSourceChanges = 1;
  v5[2](v5, self);
  self->_isPerformingDataSourceChanges = 0;
  v21 = [[PXSyntheticAssetsDataSource alloc] initWithAssetsBySection:self->_nextAssetsBySection assetCollections:self->_nextAssetCollections];
  v22 = [(PXSectionedDataSourceManager *)self dataSource];
  v23 = +[PXSectionedDataSourceChangeDetails changeDetailsWithNoChangesFromDataSourceIdentifier:toDataSourceIdentifier:](PXSectionedDataSourceChangeDetails, "changeDetailsWithNoChangesFromDataSourceIdentifier:toDataSourceIdentifier:", [v22 identifier], -[PXSectionedDataSource identifier](v21, "identifier"));

  v24 = v23;
  changeDetailsCoalescer = self->_changeDetailsCoalescer;
  v26 = v24;
  if (changeDetailsCoalescer)
  {
    [(PXSectionedChangeDetailsCoalescer *)changeDetailsCoalescer addChangeDetails:v24];
    v26 = [(PXSectionedChangeDetailsCoalescer *)self->_changeDetailsCoalescer coalescedChangeDetails];
  }

  if (self->_changeIsReload)
  {
    v32 = [(PXSectionedDataSourceManager *)self dataSource];
    v33 = v5;
    v27 = +[PXSectionedDataSourceChangeDetails changeDetailsWithoutIncrementalChangesFromDataSourceIdentifier:toDataSourceIdentifier:](PXSectionedDataSourceChangeDetails, "changeDetailsWithoutIncrementalChangesFromDataSourceIdentifier:toDataSourceIdentifier:", [v32 identifier], -[PXSectionedDataSource identifier](v21, "identifier"));

    v26 = v27;
    v5 = v33;
  }

  [(PXSectionedDataSourceManager *)self setDataSource:v21 changeDetails:v26];
  v28 = self->_nextAssetsBySection;
  self->_nextAssetsBySection = 0;

  v29 = self->_nextAssetCollections;
  self->_nextAssetCollections = 0;

  v30 = self->_changeDetailsCoalescer;
  self->_changeDetailsCoalescer = 0;

  self->_changeIsReload = 0;
}

- (id)createInitialDataSource
{
  initialDataSource = self->_initialDataSource;
  v4 = initialDataSource;
  v5 = self->_initialDataSource;
  self->_initialDataSource = 0;

  return initialDataSource;
}

- (PXSyntheticAssetsDataSourceManager)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:40 description:{@"%s is not available as initializer", "-[PXSyntheticAssetsDataSourceManager init]"}];

  abort();
}

- (PXSyntheticAssetsDataSourceManager)initWithConfigurationBlock:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXSyntheticAssetsDataSourceManager;
  v5 = [(PXSectionedDataSourceManager *)&v9 init];
  if (v5)
  {
    v6 = [[PXSyntheticAssetsDataSource alloc] initWithConfigurationBlock:v4];
    initialDataSource = v5->_initialDataSource;
    v5->_initialDataSource = v6;
  }

  return v5;
}

@end