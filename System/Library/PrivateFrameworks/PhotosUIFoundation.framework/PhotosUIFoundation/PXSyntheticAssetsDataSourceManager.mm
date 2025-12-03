@interface PXSyntheticAssetsDataSourceManager
- (PXSyntheticAssetsDataSourceManager)init;
- (PXSyntheticAssetsDataSourceManager)initWithConfigurationBlock:(id)block;
- (id)createInitialDataSource;
- (void)_appendIncrementalChangeDetails:(id)details;
- (void)changeItemAtIndexPath:(id)path toAsset:(id)asset;
- (void)changeSectionAtIndex:(int64_t)index toAssetCollection:(id)collection;
- (void)insertItemAtIndexPath:(id)path assetBlock:(id)block;
- (void)insertSectionAtIndex:(int64_t)index count:(int64_t)count assetCollection:(id)collection assetBlock:(id)block;
- (void)markChangeAsReload;
- (void)performDataSourceChanges:(id)changes;
- (void)removeItemAtIndexPath:(id)path;
- (void)removeSectionAtIndex:(int64_t)index;
@end

@implementation PXSyntheticAssetsDataSourceManager

- (void)markChangeAsReload
{
  if (!self->_isPerformingDataSourceChanges)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:176 description:{@"Invalid parameter not satisfying: %@", @"_isPerformingDataSourceChanges"}];
  }

  self->_changeIsReload = 1;
  changeDetailsCoalescer = self->_changeDetailsCoalescer;
  self->_changeDetailsCoalescer = 0;
}

- (void)changeSectionAtIndex:(int64_t)index toAssetCollection:(id)collection
{
  collectionCopy = collection;
  if (!self->_isPerformingDataSourceChanges)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:167 description:{@"Invalid parameter not satisfying: %@", @"_isPerformingDataSourceChanges"}];
  }

  if ([(NSMutableArray *)self->_nextAssetCollections count]<= index)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:168 description:@"Out of bounds index for section change"];
  }

  nextAssetCollections = self->_nextAssetCollections;
  v8 = [collectionCopy copyWithZone:0];
  [(NSMutableArray *)nextAssetCollections replaceObjectAtIndex:index withObject:v8];

  v9 = [PXSectionedDataSourceChangeDetails alloc];
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  identifier = [dataSource identifier];
  dataSource2 = [(PXSectionedDataSourceManager *)self dataSource];
  identifier2 = [dataSource2 identifier];
  v14 = [PXArrayChangeDetails changeDetailsWithChangedIndexRange:index, 1];
  v15 = [(PXSectionedDataSourceChangeDetails *)v9 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:v14 itemChangeDetailsBySection:0 subitemChangeDetailsByItemBySection:0];

  [(PXSyntheticAssetsDataSourceManager *)self _appendIncrementalChangeDetails:v15];
}

- (void)removeSectionAtIndex:(int64_t)index
{
  if (!self->_isPerformingDataSourceChanges)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:157 description:{@"Invalid parameter not satisfying: %@", @"_isPerformingDataSourceChanges"}];
  }

  if ([(NSMutableArray *)self->_nextAssetCollections count]<= index || [(NSMutableArray *)self->_nextAssetsBySection count]<= index)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:158 description:@"Out of bounds index for section deletion"];
  }

  [(NSMutableArray *)self->_nextAssetCollections removeObjectAtIndex:index];
  [(NSMutableArray *)self->_nextAssetsBySection removeObjectAtIndex:index];
  v6 = [PXSectionedDataSourceChangeDetails alloc];
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  identifier = [dataSource identifier];
  dataSource2 = [(PXSectionedDataSourceManager *)self dataSource];
  identifier2 = [dataSource2 identifier];
  v11 = [PXArrayChangeDetails changeDetailsWithRemovedIndexRange:index, 1];
  v14 = [(PXSectionedDataSourceChangeDetails *)v6 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:v11 itemChangeDetailsBySection:0 subitemChangeDetailsByItemBySection:0];

  [(PXSyntheticAssetsDataSourceManager *)self _appendIncrementalChangeDetails:v14];
}

- (void)insertSectionAtIndex:(int64_t)index count:(int64_t)count assetCollection:(id)collection assetBlock:(id)block
{
  collectionCopy = collection;
  blockCopy = block;
  if (self->_isPerformingDataSourceChanges)
  {
    if (!count)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:141 description:{@"Invalid parameter not satisfying: %@", @"_isPerformingDataSourceChanges"}];

    if (!count)
    {
      goto LABEL_5;
    }
  }

  if (!blockCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:142 description:{@"Invalid parameter not satisfying: %@", @"assetBlock != nil || count == 0"}];
  }

LABEL_5:
  if ([(NSMutableArray *)self->_nextAssetCollections count]< index || [(NSMutableArray *)self->_nextAssetsBySection count]< index)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:143 description:@"Out of bounds index for section insertion"];
  }

  v12 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:count];
  if (count >= 1)
  {
    v13 = 0;
    do
    {
      v14 = blockCopy[2](blockCopy, index, v13);
      [v12 addObject:v14];

      ++v13;
    }

    while (count != v13);
  }

  [(NSMutableArray *)self->_nextAssetsBySection insertObject:v12 atIndex:index];
  nextAssetCollections = self->_nextAssetCollections;
  v16 = [collectionCopy copyWithZone:0];
  [(NSMutableArray *)nextAssetCollections insertObject:v16 atIndex:index];

  v17 = [PXSectionedDataSourceChangeDetails alloc];
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  identifier = [dataSource identifier];
  dataSource2 = [(PXSectionedDataSourceManager *)self dataSource];
  identifier2 = [dataSource2 identifier];
  v22 = [PXArrayChangeDetails changeDetailsWithInsertedIndexRange:index, 1];
  v23 = [(PXSectionedDataSourceChangeDetails *)v17 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:v22 itemChangeDetailsBySection:0 subitemChangeDetailsByItemBySection:0];

  [(PXSyntheticAssetsDataSourceManager *)self _appendIncrementalChangeDetails:v23];
}

- (void)changeItemAtIndexPath:(id)path toAsset:(id)asset
{
  v30[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  assetCopy = asset;
  if (!self->_isPerformingDataSourceChanges)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:124 description:{@"Invalid parameter not satisfying: %@", @"_isPerformingDataSourceChanges"}];
  }

  px_section = [pathCopy px_section];
  v28 = pathCopy;
  px_item = [pathCopy px_item];
  if (px_section >= [(NSMutableArray *)self->_nextAssetsBySection count])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:127 description:@"Out of bounds section for change"];
  }

  v11 = [(NSMutableArray *)self->_nextAssetsBySection objectAtIndexedSubscript:px_section];
  if (px_item >= [v11 count])
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:129 description:{@"Out of bounds index for change in section %ld", px_section}];

    if (!assetCopy)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if (assetCopy)
  {
LABEL_7:
    v12 = assetCopy[2](assetCopy, px_section, px_item);
    [v11 replaceObjectAtIndex:px_item withObject:v12];
  }

LABEL_8:
  v13 = [PXSectionedDataSourceChangeDetails alloc];
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  v27 = v11;
  identifier = [dataSource identifier];
  dataSource2 = [(PXSectionedDataSourceManager *)self dataSource];
  v26 = assetCopy;
  identifier2 = [dataSource2 identifier];
  v18 = +[PXArrayChangeDetails changeDetailsWithNoChanges];
  v19 = [MEMORY[0x1E696AD98] numberWithInteger:px_section];
  v29 = v19;
  v20 = [PXArrayChangeDetails changeDetailsWithChangedIndexRange:px_item, 1];
  v30[0] = v20;
  v21 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v22 = [(PXSectionedDataSourceChangeDetails *)v13 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:v18 itemChangeDetailsBySection:v21 subitemChangeDetailsByItemBySection:0];

  [(PXSyntheticAssetsDataSourceManager *)self _appendIncrementalChangeDetails:v22];
}

- (void)removeItemAtIndexPath:(id)path
{
  v25[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  if (!self->_isPerformingDataSourceChanges)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:110 description:{@"Invalid parameter not satisfying: %@", @"_isPerformingDataSourceChanges"}];
  }

  px_section = [pathCopy px_section];
  v23 = pathCopy;
  px_item = [pathCopy px_item];
  if (px_section >= [(NSMutableArray *)self->_nextAssetsBySection count])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:113 description:@"Out of bounds section for deletion"];
  }

  v8 = [(NSMutableArray *)self->_nextAssetsBySection objectAtIndexedSubscript:px_section];
  if (px_item >= [v8 count])
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:115 description:{@"Out of bounds index for deletion in section %ld", px_section}];
  }

  [v8 removeObjectAtIndex:px_item];
  v9 = [PXSectionedDataSourceChangeDetails alloc];
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  identifier = [dataSource identifier];
  dataSource2 = [(PXSectionedDataSourceManager *)self dataSource];
  v22 = v8;
  identifier2 = [dataSource2 identifier];
  v14 = +[PXArrayChangeDetails changeDetailsWithNoChanges];
  v15 = [MEMORY[0x1E696AD98] numberWithInteger:px_section];
  v24 = v15;
  v16 = [PXArrayChangeDetails changeDetailsWithRemovedIndexRange:px_item, 1];
  v25[0] = v16;
  v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v25 forKeys:&v24 count:1];
  v18 = [(PXSectionedDataSourceChangeDetails *)v9 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:v14 itemChangeDetailsBySection:v17 subitemChangeDetailsByItemBySection:0];

  [(PXSyntheticAssetsDataSourceManager *)self _appendIncrementalChangeDetails:v18];
}

- (void)insertItemAtIndexPath:(id)path assetBlock:(id)block
{
  v30[1] = *MEMORY[0x1E69E9840];
  pathCopy = path;
  blockCopy = block;
  if (!self->_isPerformingDataSourceChanges)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:95 description:{@"Invalid parameter not satisfying: %@", @"_isPerformingDataSourceChanges"}];
  }

  px_section = [pathCopy px_section];
  v28 = pathCopy;
  px_item = [pathCopy px_item];
  if (px_section >= [(NSMutableArray *)self->_nextAssetsBySection count])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:98 description:@"Out of bounds section for insertion"];
  }

  v11 = [(NSMutableArray *)self->_nextAssetsBySection objectAtIndexedSubscript:px_section];
  if (px_item > [v11 count])
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:100 description:{@"Out of bounds index for insertion in section %ld", px_section}];
  }

  v27 = blockCopy[2](blockCopy, px_section, px_item);
  [v11 insertObject:v27 atIndex:px_item];
  v12 = [PXSectionedDataSourceChangeDetails alloc];
  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  v26 = v11;
  identifier = [dataSource identifier];
  dataSource2 = [(PXSectionedDataSourceManager *)self dataSource];
  v25 = blockCopy;
  identifier2 = [dataSource2 identifier];
  v17 = +[PXArrayChangeDetails changeDetailsWithNoChanges];
  v18 = [MEMORY[0x1E696AD98] numberWithInteger:px_section];
  v29 = v18;
  v19 = [PXArrayChangeDetails changeDetailsWithInsertedIndexRange:px_item, 1];
  v30[0] = v19;
  v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
  v21 = [(PXSectionedDataSourceChangeDetails *)v12 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2 sectionChanges:v17 itemChangeDetailsBySection:v20 subitemChangeDetailsByItemBySection:0];

  [(PXSyntheticAssetsDataSourceManager *)self _appendIncrementalChangeDetails:v21];
}

- (void)_appendIncrementalChangeDetails:(id)details
{
  detailsCopy = details;
  changeDetailsCoalescer = self->_changeDetailsCoalescer;
  v8 = detailsCopy;
  if (changeDetailsCoalescer || self->_changeIsReload)
  {
    [(PXSectionedChangeDetailsCoalescer *)changeDetailsCoalescer addChangeDetails:detailsCopy];
  }

  else
  {
    v6 = [[PXSectionedChangeDetailsCoalescer alloc] initWithSectionedChangeDetails:detailsCopy];
    v7 = self->_changeDetailsCoalescer;
    self->_changeDetailsCoalescer = v6;
  }
}

- (void)performDataSourceChanges:(id)changes
{
  v39 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  if (self->_isPerformingDataSourceChanges)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:50 description:@"Nested changes not supported"];
  }

  dataSource = [(PXSectionedDataSourceManager *)self dataSource];
  assetsBySection = [dataSource assetsBySection];

  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(assetsBySection, "count")}];
  nextAssetsBySection = self->_nextAssetsBySection;
  self->_nextAssetsBySection = v8;

  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v10 = assetsBySection;
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

  dataSource2 = [(PXSectionedDataSourceManager *)self dataSource];
  assetCollections = [dataSource2 assetCollections];

  v19 = [assetCollections mutableCopy];
  nextAssetCollections = self->_nextAssetCollections;
  self->_nextAssetCollections = v19;

  self->_isPerformingDataSourceChanges = 1;
  changesCopy[2](changesCopy, self);
  self->_isPerformingDataSourceChanges = 0;
  v21 = [[PXSyntheticAssetsDataSource alloc] initWithAssetsBySection:self->_nextAssetsBySection assetCollections:self->_nextAssetCollections];
  dataSource3 = [(PXSectionedDataSourceManager *)self dataSource];
  v23 = +[PXSectionedDataSourceChangeDetails changeDetailsWithNoChangesFromDataSourceIdentifier:toDataSourceIdentifier:](PXSectionedDataSourceChangeDetails, "changeDetailsWithNoChangesFromDataSourceIdentifier:toDataSourceIdentifier:", [dataSource3 identifier], -[PXSectionedDataSource identifier](v21, "identifier"));

  v24 = v23;
  changeDetailsCoalescer = self->_changeDetailsCoalescer;
  coalescedChangeDetails = v24;
  if (changeDetailsCoalescer)
  {
    [(PXSectionedChangeDetailsCoalescer *)changeDetailsCoalescer addChangeDetails:v24];
    coalescedChangeDetails = [(PXSectionedChangeDetailsCoalescer *)self->_changeDetailsCoalescer coalescedChangeDetails];
  }

  if (self->_changeIsReload)
  {
    dataSource4 = [(PXSectionedDataSourceManager *)self dataSource];
    v33 = changesCopy;
    v27 = +[PXSectionedDataSourceChangeDetails changeDetailsWithoutIncrementalChangesFromDataSourceIdentifier:toDataSourceIdentifier:](PXSectionedDataSourceChangeDetails, "changeDetailsWithoutIncrementalChangesFromDataSourceIdentifier:toDataSourceIdentifier:", [dataSource4 identifier], -[PXSectionedDataSource identifier](v21, "identifier"));

    coalescedChangeDetails = v27;
    changesCopy = v33;
  }

  [(PXSectionedDataSourceManager *)self setDataSource:v21 changeDetails:coalescedChangeDetails];
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSyntheticAssetsDataSourceManager.m" lineNumber:40 description:{@"%s is not available as initializer", "-[PXSyntheticAssetsDataSourceManager init]"}];

  abort();
}

- (PXSyntheticAssetsDataSourceManager)initWithConfigurationBlock:(id)block
{
  blockCopy = block;
  v9.receiver = self;
  v9.super_class = PXSyntheticAssetsDataSourceManager;
  v5 = [(PXSectionedDataSourceManager *)&v9 init];
  if (v5)
  {
    v6 = [[PXSyntheticAssetsDataSource alloc] initWithConfigurationBlock:blockCopy];
    initialDataSource = v5->_initialDataSource;
    v5->_initialDataSource = v6;
  }

  return v5;
}

@end