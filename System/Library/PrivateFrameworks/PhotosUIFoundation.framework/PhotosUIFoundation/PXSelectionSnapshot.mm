@interface PXSelectionSnapshot
- (BOOL)areAllItemsSelected;
- (BOOL)isAnyItemSelected;
- (BOOL)isAnySectionSelected;
- (BOOL)isIndexPathSelected:(PXSimpleIndexPath *)selected;
- (NSObject)firstObject;
- (PXFastEnumeration)allItemsEnumerator;
- (PXFastEnumeration)allObjectsEnumerator;
- (PXFastEnumeration)allSectionsEnumerator;
- (PXIndexPathSet)sectionIndexPathsContainingSelection;
- (PXSelectionSnapshot)init;
- (PXSelectionSnapshot)initWithDataSource:(id)source selectedIndexPath:(PXSimpleIndexPath *)path;
- (PXSelectionSnapshot)initWithDataSource:(id)source selectedIndexPaths:(id)paths;
- (PXSelectionSnapshot)initWithDataSource:(id)source selectedIndexPaths:(id)paths cursorIndexPath:(PXSimpleIndexPath *)path;
- (PXSelectionSnapshot)initWithDataSource:(id)source selectedIndexPaths:(id)paths cursorIndexPath:(PXSimpleIndexPath *)path pendingIndexPath:(PXSimpleIndexPath *)indexPath pressedIndexPath:(PXSimpleIndexPath *)pressedIndexPath selectionLimitReached:(BOOL)reached emptySelectionAvoided:(BOOL)avoided overallSelectionOrder:(id)self0;
- (PXSimpleIndexPath)cursorIndexPath;
- (PXSimpleIndexPath)firstSelectedIndexPath;
- (PXSimpleIndexPath)indexPathOfObjectPassingTest:(SEL)test;
- (PXSimpleIndexPath)lastSelectedIndexPath;
- (PXSimpleIndexPath)pendingIndexPath;
- (PXSimpleIndexPath)pressedIndexPath;
- (id)description;
- (id)fetchSelectedObjects;
- (int64_t)overallSelectionOrderIndexForIndexPath:(PXSimpleIndexPath *)path;
- (void)enumerateSelectedObjectsUsingBlock:(id)block;
@end

@implementation PXSelectionSnapshot

- (BOOL)isAnyItemSelected
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  selectedIndexPaths = [(PXSelectionSnapshot *)self selectedIndexPaths];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __40__PXSelectionSnapshot_isAnyItemSelected__block_invoke;
  v4[3] = &unk_1E7BB6068;
  v4[4] = &v5;
  [selectedIndexPaths enumerateItemIndexSetsUsingBlock:v4];

  LOBYTE(selectedIndexPaths) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return selectedIndexPaths;
}

- (PXSimpleIndexPath)pressedIndexPath
{
  v3 = *&self[3].subitem;
  *&retstr->dataSourceIdentifier = *&self[3].section;
  *&retstr->item = v3;
  return self;
}

- (PXSimpleIndexPath)pendingIndexPath
{
  v3 = *&self[2].subitem;
  *&retstr->dataSourceIdentifier = *&self[2].section;
  *&retstr->item = v3;
  return self;
}

- (PXSimpleIndexPath)cursorIndexPath
{
  v3 = *&self[1].subitem;
  *&retstr->dataSourceIdentifier = *&self[1].section;
  *&retstr->item = v3;
  return self;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v9.receiver = self;
  v9.super_class = PXSelectionSnapshot;
  v4 = [(PXSelectionSnapshot *)&v9 description];
  dataSource = [(PXSelectionSnapshot *)self dataSource];
  selectedIndexPaths = [(PXSelectionSnapshot *)self selectedIndexPaths];
  v7 = [v3 stringWithFormat:@"<%@ dataSource:%@ selectedIndexPaths:%@>", v4, dataSource, selectedIndexPaths];

  return v7;
}

- (PXFastEnumeration)allObjectsEnumerator
{
  dataSource = [(PXSelectionSnapshot *)self dataSource];
  selectedIndexPaths = [(PXSelectionSnapshot *)self selectedIndexPaths];
  v5 = [dataSource objectsEnumeratorForIndexPaths:selectedIndexPaths];

  return v5;
}

- (PXFastEnumeration)allSectionsEnumerator
{
  dataSource = [(PXSelectionSnapshot *)self dataSource];
  selectedIndexPaths = [(PXSelectionSnapshot *)self selectedIndexPaths];
  v5 = [dataSource sectionsEnumeratorForIndexPaths:selectedIndexPaths];

  return v5;
}

- (PXFastEnumeration)allItemsEnumerator
{
  dataSource = [(PXSelectionSnapshot *)self dataSource];
  selectedIndexPaths = [(PXSelectionSnapshot *)self selectedIndexPaths];
  v5 = [dataSource itemsEnumeratorForIndexPaths:selectedIndexPaths];

  return v5;
}

- (id)fetchSelectedObjects
{
  selectedIndexPaths = [(PXSelectionSnapshot *)self selectedIndexPaths];
  dataSource = [(PXSelectionSnapshot *)self dataSource];
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(selectedIndexPaths, "count")}];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __43__PXSelectionSnapshot_fetchSelectedObjects__block_invoke;
  v11[3] = &unk_1E7BB6B50;
  v12 = dataSource;
  v6 = v5;
  v13 = v6;
  v7 = dataSource;
  [selectedIndexPaths enumerateAllIndexPathsUsingBlock:v11];
  v8 = v13;
  v9 = v6;

  return v6;
}

void __43__PXSelectionSnapshot_fetchSelectedObjects__block_invoke(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 32);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v5 = [v3 objectAtIndexPath:v6];
  [*(a1 + 40) addObject:v5];
}

- (void)enumerateSelectedObjectsUsingBlock:(id)block
{
  blockCopy = block;
  dataSource = [(PXSelectionSnapshot *)self dataSource];
  selectedIndexPaths = [(PXSelectionSnapshot *)self selectedIndexPaths];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __58__PXSelectionSnapshot_enumerateSelectedObjectsUsingBlock___block_invoke;
  v9[3] = &unk_1E7BB6108;
  v10 = dataSource;
  v11 = blockCopy;
  v7 = blockCopy;
  v8 = dataSource;
  [selectedIndexPaths enumerateAllIndexPathsUsingBlock:v9];
}

void __58__PXSelectionSnapshot_enumerateSelectedObjectsUsingBlock___block_invoke(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 32);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v5 = [v3 objectAtIndexPath:v6];
  (*(*(a1 + 40) + 16))();
}

- (PXSimpleIndexPath)indexPathOfObjectPassingTest:(SEL)test
{
  v6 = a4;
  v17 = 0;
  v18 = &v17;
  v19 = 0x4010000000;
  v20 = "";
  v21 = *PXSimpleIndexPathNull;
  v22 = *&PXSimpleIndexPathNull[16];
  dataSource = [(PXSelectionSnapshot *)self dataSource];
  selectedIndexPaths = [(PXSelectionSnapshot *)self selectedIndexPaths];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __52__PXSelectionSnapshot_indexPathOfObjectPassingTest___block_invoke;
  v13[3] = &unk_1E7BB60E0;
  v9 = dataSource;
  v14 = v9;
  v10 = v6;
  v15 = v10;
  v16 = &v17;
  [selectedIndexPaths enumerateAllIndexPathsUsingBlock:v13];

  v11 = *(v18 + 3);
  *&retstr->dataSourceIdentifier = *(v18 + 2);
  *&retstr->item = v11;

  _Block_object_dispose(&v17, 8);
  return result;
}

void __52__PXSelectionSnapshot_indexPathOfObjectPassingTest___block_invoke(void *a1, _OWORD *a2, _BYTE *a3)
{
  v6 = a1[4];
  v7 = a2[1];
  v11[0] = *a2;
  v11[1] = v7;
  v8 = [v6 objectAtIndexPath:v11];
  if ((*(a1[5] + 16))())
  {
    v9 = *(a1[6] + 8);
    v10 = a2[1];
    *(v9 + 32) = *a2;
    *(v9 + 48) = v10;
    *a3 = 1;
  }
}

- (PXIndexPathSet)sectionIndexPathsContainingSelection
{
  v3 = objc_alloc_init(PXMutableIndexPathSet);
  selectedIndexPaths = [(PXSelectionSnapshot *)self selectedIndexPaths];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __59__PXSelectionSnapshot_sectionIndexPathsContainingSelection__block_invoke;
  v13[3] = &unk_1E7BB6090;
  v5 = v3;
  v14 = v5;
  [selectedIndexPaths enumerateSectionIndexPathsUsingBlock:v13];

  selectedIndexPaths2 = [(PXSelectionSnapshot *)self selectedIndexPaths];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __59__PXSelectionSnapshot_sectionIndexPathsContainingSelection__block_invoke_2;
  v11[3] = &unk_1E7BB60B8;
  v7 = v5;
  v12 = v7;
  [selectedIndexPaths2 enumerateItemIndexSetsUsingBlock:v11];

  v8 = v12;
  v9 = v7;

  return v7;
}

uint64_t __59__PXSelectionSnapshot_sectionIndexPathsContainingSelection__block_invoke(uint64_t a1, _OWORD *a2)
{
  v2 = *(a1 + 32);
  v3 = a2[1];
  v5[0] = *a2;
  v5[1] = v3;
  return [v2 addIndexPath:v5];
}

uint64_t __59__PXSelectionSnapshot_sectionIndexPathsContainingSelection__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = [a4 count];
  if (result)
  {
    v8 = *(a1 + 32);
    v10[0] = a2;
    v10[1] = a3;
    v9.f64[0] = NAN;
    v9.f64[1] = NAN;
    v11 = vnegq_f64(v9);
    return [v8 addIndexPath:v10];
  }

  return result;
}

- (NSObject)firstObject
{
  [(PXSelectionSnapshot *)self firstSelectedIndexPath];

  return 0;
}

- (PXSimpleIndexPath)lastSelectedIndexPath
{
  selectedIndexPaths = [(PXSelectionSnapshot *)self selectedIndexPaths];
  dataSource = [(PXSelectionSnapshot *)self dataSource];
  identifier = [dataSource identifier];

  *retstr = *PXSimpleIndexPathNull;
  v7 = [selectedIndexPaths sectionsWithItemsForDataSourceIdentifier:identifier];
  v8 = v7;
  if (v7 && (v9 = [v7 lastIndex], v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    lastIndex2 = v9;
    v10 = [selectedIndexPaths itemIndexSetForDataSourceIdentifier:identifier section:v9];
    lastIndex = [v10 lastIndex];
    if (lastIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = [selectedIndexPaths sectionIndexSetForDataSourceIdentifier:identifier];
    if (![v10 count])
    {
      goto LABEL_7;
    }

    lastIndex2 = [v10 lastIndex];
    lastIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  retstr->dataSourceIdentifier = identifier;
  retstr->section = lastIndex2;
  retstr->item = lastIndex;
  retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
LABEL_7:

  return result;
}

- (PXSimpleIndexPath)firstSelectedIndexPath
{
  selectedIndexPaths = [(PXSelectionSnapshot *)self selectedIndexPaths];
  dataSource = [(PXSelectionSnapshot *)self dataSource];
  identifier = [dataSource identifier];

  *retstr = *PXSimpleIndexPathNull;
  v7 = [selectedIndexPaths sectionsWithItemsForDataSourceIdentifier:identifier];
  v8 = v7;
  if (v7 && (v9 = [v7 firstIndex], v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    firstIndex2 = v9;
    v10 = [selectedIndexPaths itemIndexSetForDataSourceIdentifier:identifier section:v9];
    firstIndex = [v10 firstIndex];
    if (firstIndex == 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v10 = [selectedIndexPaths sectionIndexSetForDataSourceIdentifier:identifier];
    if (![v10 count])
    {
      goto LABEL_7;
    }

    firstIndex2 = [v10 firstIndex];
    firstIndex = 0x7FFFFFFFFFFFFFFFLL;
  }

  retstr->dataSourceIdentifier = identifier;
  retstr->section = firstIndex2;
  retstr->item = firstIndex;
  retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
LABEL_7:

  return result;
}

- (BOOL)areAllItemsSelected
{
  dataSource = [(PXSelectionSnapshot *)self dataSource];
  v4 = dataSource;
  v14 = 0u;
  v15 = 0u;
  if (dataSource && ([dataSource firstItemIndexPath], v14))
  {
    v12 = 0u;
    v13 = 0u;
    [v4 lastItemIndexPath];
    v11[0] = v14;
    v11[1] = v15;
    v10[0] = v12;
    v10[1] = v13;
    v5 = [v4 indexPathSetFromIndexPath:v11 toIndexPath:v10];
    v6 = +[(PXIndexPathSet *)PXMutableIndexPathSet];
    [v6 unionIndexPathSet:v5];
    selectedIndexPaths = [(PXSelectionSnapshot *)self selectedIndexPaths];
    [v6 minusIndexPathSet:selectedIndexPaths];

    v8 = [v6 count] == 0;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

uint64_t __40__PXSelectionSnapshot_isAnyItemSelected__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  result = [a4 count];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a5 = 1;
  }

  return result;
}

- (BOOL)isAnySectionSelected
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  selectedIndexPaths = [(PXSelectionSnapshot *)self selectedIndexPaths];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __43__PXSelectionSnapshot_isAnySectionSelected__block_invoke;
  v4[3] = &unk_1E7BB6040;
  v4[4] = &v5;
  [selectedIndexPaths enumerateSectionIndexSetsUsingBlock:v4];

  LOBYTE(selectedIndexPaths) = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return selectedIndexPaths;
}

uint64_t __43__PXSelectionSnapshot_isAnySectionSelected__block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  result = [a3 count];
  if (result)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    *a4 = 1;
  }

  return result;
}

- (int64_t)overallSelectionOrderIndexForIndexPath:(PXSimpleIndexPath *)path
{
  overallSelectionOrder = [(PXSelectionSnapshot *)self overallSelectionOrder];
  if (overallSelectionOrder)
  {
    dataSource = [(PXSelectionSnapshot *)self dataSource];
    v7 = *&path->item;
    v11[0] = *&path->dataSourceIdentifier;
    v11[1] = v7;
    v8 = [dataSource objectIDAtIndexPath:v11];

    v9 = [overallSelectionOrder indexOfObject:v8];
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (BOOL)isIndexPathSelected:(PXSimpleIndexPath *)selected
{
  selectedIndexPaths = [(PXSelectionSnapshot *)self selectedIndexPaths];
  v5 = *&selected->item;
  v7[0] = *&selected->dataSourceIdentifier;
  v7[1] = v5;
  LOBYTE(selected) = [selectedIndexPaths containsIndexPath:v7];

  return selected;
}

- (PXSelectionSnapshot)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedSelectionManager.m" lineNumber:470 description:@"Not supported"];

  abort();
}

- (PXSelectionSnapshot)initWithDataSource:(id)source selectedIndexPath:(PXSimpleIndexPath *)path
{
  v6 = *&path->item;
  v12 = *&path->dataSourceIdentifier;
  v13 = v6;
  sourceCopy = source;
  v8 = [PXIndexPathSet indexPathSetWithIndexPath:&v12];
  v9 = *&path->item;
  v12 = *&path->dataSourceIdentifier;
  v13 = v9;
  v10 = [(PXSelectionSnapshot *)self initWithDataSource:sourceCopy selectedIndexPaths:v8 cursorIndexPath:&v12];

  return v10;
}

- (PXSelectionSnapshot)initWithDataSource:(id)source selectedIndexPaths:(id)paths
{
  sourceCopy = source;
  pathsCopy = paths;
  v12 = 0u;
  v13 = 0u;
  identifier = [sourceCopy identifier];
  if (pathsCopy)
  {
    [pathsCopy firstItemIndexPathForDataSourceIdentifier:identifier];
  }

  else
  {
    v12 = 0u;
    v13 = 0u;
  }

  v11[0] = v12;
  v11[1] = v13;
  v9 = [(PXSelectionSnapshot *)self initWithDataSource:sourceCopy selectedIndexPaths:pathsCopy cursorIndexPath:v11];

  return v9;
}

- (PXSelectionSnapshot)initWithDataSource:(id)source selectedIndexPaths:(id)paths cursorIndexPath:(PXSimpleIndexPath *)path
{
  v5 = *&path->item;
  v10[0] = *&path->dataSourceIdentifier;
  v10[1] = v5;
  v9[0] = *PXSimpleIndexPathNull;
  v9[1] = *&PXSimpleIndexPathNull[16];
  v8[0] = *PXSimpleIndexPathNull;
  v8[1] = *&PXSimpleIndexPathNull[16];
  LOBYTE(v7) = 0;
  return [(PXSelectionSnapshot *)self initWithDataSource:source selectedIndexPaths:paths cursorIndexPath:v10 pendingIndexPath:v9 pressedIndexPath:v8 selectionLimitReached:0 emptySelectionAvoided:v7 overallSelectionOrder:0];
}

- (PXSelectionSnapshot)initWithDataSource:(id)source selectedIndexPaths:(id)paths cursorIndexPath:(PXSimpleIndexPath *)path pendingIndexPath:(PXSimpleIndexPath *)indexPath pressedIndexPath:(PXSimpleIndexPath *)pressedIndexPath selectionLimitReached:(BOOL)reached emptySelectionAvoided:(BOOL)avoided overallSelectionOrder:(id)self0
{
  sourceCopy = source;
  pathsCopy = paths;
  orderCopy = order;
  v28.receiver = self;
  v28.super_class = PXSelectionSnapshot;
  v20 = [(PXSelectionSnapshot *)&v28 init];
  v21 = v20;
  if (v20)
  {
    objc_storeStrong(&v20->_dataSource, source);
    objc_storeStrong(&v21->_selectedIndexPaths, paths);
    v22 = *&path->dataSourceIdentifier;
    *&v21->_cursorIndexPath.item = *&path->item;
    *&v21->_cursorIndexPath.dataSourceIdentifier = v22;
    v23 = *&indexPath->dataSourceIdentifier;
    *&v21->_pendingIndexPath.item = *&indexPath->item;
    *&v21->_pendingIndexPath.dataSourceIdentifier = v23;
    v24 = *&pressedIndexPath->dataSourceIdentifier;
    *&v21->_pressedIndexPath.item = *&pressedIndexPath->item;
    *&v21->_pressedIndexPath.dataSourceIdentifier = v24;
    v21->_isSelectionLimitReached = reached;
    v21->_isEmptySelectionAvoided = avoided;
    v25 = [orderCopy copy];
    overallSelectionOrder = v21->_overallSelectionOrder;
    v21->_overallSelectionOrder = v25;
  }

  return v21;
}

@end