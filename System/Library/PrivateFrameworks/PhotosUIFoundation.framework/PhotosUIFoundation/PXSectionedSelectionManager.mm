@interface PXSectionedSelectionManager
- (BOOL)hasAnyChangesFromSelection:(id)selection;
- (PXAssetSelectionTypeCounter)assetTypeCounter;
- (PXSectionedSelectionManager)init;
- (PXSectionedSelectionManager)initWithDataSourceManager:(id)manager;
- (PXSectionedSelectionManagerSnapshotValidator)snapshotValidator;
- (PXSimpleIndexPath)cursorIndexPath;
- (PXSimpleIndexPath)pendingIndexPath;
- (PXSimpleIndexPath)pressedIndexPath;
- (id)_snapshotWithSelectableItemsForSnapshot:(id)snapshot;
- (id)_validatedSnapshotForSnapshot:(id)snapshot;
- (void)_makeSimpleModificationToSelectedIndexPathsUsingBlock:(id)block;
- (void)_setCursorIndexPath:(PXSimpleIndexPath *)path;
- (void)_setDataSource:(id)source;
- (void)_setDataSource:(id)source withChangeHistory:(id)history;
- (void)_setPendingIndexPath:(PXSimpleIndexPath *)path;
- (void)_setPressedIndexPath:(PXSimpleIndexPath *)path;
- (void)_setSelectedIndexPaths:(id)paths;
- (void)_setSelectionSnapshot:(id)snapshot;
- (void)_updateIfNeeded;
- (void)_updateSelectionSnapshotIfNeeded;
- (void)didPerformChanges;
- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context;
- (void)performChanges:(id)changes;
- (void)selectAllItems;
- (void)selectAllItemsInSection:(PXSimpleIndexPath *)section;
- (void)setCursorIndexPath:(PXSimpleIndexPath *)path;
- (void)setOverallSelectionOrder:(id)order;
- (void)setPendingIndexPath:(PXSimpleIndexPath *)path;
- (void)setPressedIndexPath:(PXSimpleIndexPath *)path;
- (void)setSelectedIndexPath:(PXSimpleIndexPath *)path;
- (void)setSelectedIndexPaths:(id)paths;
- (void)setSelectedState:(BOOL)state forIndexPath:(PXSimpleIndexPath *)path;
- (void)setSelectedState:(BOOL)state forIndexPath:(PXSimpleIndexPath *)path andUpdateCursorIndexPath:(BOOL)indexPath;
- (void)setSelectedState:(BOOL)state forIndexPathSet:(id)set;
- (void)setSelectionLimitReached:(BOOL)reached;
@end

@implementation PXSectionedSelectionManager

- (void)didPerformChanges
{
  v3.receiver = self;
  v3.super_class = PXSectionedSelectionManager;
  [(PXObservable *)&v3 didPerformChanges];
  [(PXSectionedSelectionManager *)self _updateIfNeeded];
}

- (void)_updateIfNeeded
{
  [(PXSectionedSelectionManager *)self _updateSelectionSnapshotIfNeeded];
  if ([(PXSectionedSelectionManager *)self _needsUpdate])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedSelectionManager.m" lineNumber:171 description:@"Selection manager still needs to update after an update pass"];
  }
}

- (void)_updateSelectionSnapshotIfNeeded
{
  v39 = *MEMORY[0x1E69E9840];
  if (self->_needsUpdateFlags.selectionSnapshot)
  {
    self->_needsUpdateFlags.selectionSnapshot = 0;
    selectedIndexPaths = [(PXSectionedSelectionManager *)self selectedIndexPaths];
    v5 = [selectedIndexPaths copy];

    dataSource = [(PXSectionedSelectionManager *)self dataSource];
    identifier = [dataSource identifier];

    v36[0] = MEMORY[0x1E69E9820];
    v36[1] = 3221225472;
    v36[2] = __63__PXSectionedSelectionManager__updateSelectionSnapshotIfNeeded__block_invoke;
    v36[3] = &unk_1E7BB5F10;
    v36[5] = identifier;
    v36[6] = a2;
    v36[4] = self;
    [v5 enumerateDataSourceIdentifiers:v36];
    v34 = 0u;
    v35 = 0u;
    [(PXSectionedSelectionManager *)self cursorIndexPath];
    v8 = [PXSelectionSnapshot alloc];
    dataSource2 = [(PXSectionedSelectionManager *)self dataSource];
    [(PXSectionedSelectionManager *)self pendingIndexPath];
    [(PXSectionedSelectionManager *)self pressedIndexPath];
    selectionLimitReached = [(PXSectionedSelectionManager *)self selectionLimitReached];
    emptySelectionAvoided = [(PXSectionedSelectionManager *)self emptySelectionAvoided];
    overallSelectionOrder = [(PXSectionedSelectionManager *)self overallSelectionOrder];
    v32[0] = v34;
    v32[1] = v35;
    LOBYTE(v25) = emptySelectionAvoided;
    v13 = [(PXSelectionSnapshot *)v8 initWithDataSource:dataSource2 selectedIndexPaths:v5 cursorIndexPath:v32 pendingIndexPath:buf pressedIndexPath:v33 selectionLimitReached:selectionLimitReached emptySelectionAvoided:v25 overallSelectionOrder:overallSelectionOrder];

    selectionSnapshot = [(PXSectionedSelectionManager *)self selectionSnapshot];
    dataSource3 = [selectionSnapshot dataSource];
    identifier2 = [dataSource3 identifier];
    dataSource4 = [(PXSelectionSnapshot *)v13 dataSource];
    identifier3 = [dataSource4 identifier];

    if (identifier2 == identifier3)
    {
      v19 = [(PXSectionedSelectionManager *)self _validatedSnapshotForSnapshot:v13];
      v20 = v19;
      if (v19 != v13)
      {
        v21 = v19;

        selectedIndexPaths2 = [(PXSectionedSelectionManager *)self selectedIndexPaths];
        [selectedIndexPaths2 removeAllIndexPaths];
        selectedIndexPaths3 = [(PXSelectionSnapshot *)v21 selectedIndexPaths];
        [selectedIndexPaths2 unionIndexPathSet:selectedIndexPaths3];

        if (v21)
        {
          [(PXSelectionSnapshot *)v21 cursorIndexPath];
          *buf = v30;
          v38 = v31;
          [(PXSectionedSelectionManager *)self _setCursorIndexPath:buf];
          [(PXSelectionSnapshot *)v21 pendingIndexPath];
          *buf = v28;
          v38 = v29;
          [(PXSectionedSelectionManager *)self _setPendingIndexPath:buf];
          [(PXSelectionSnapshot *)v21 pressedIndexPath];
        }

        else
        {
          *buf = 0u;
          v38 = 0u;
          [(PXSectionedSelectionManager *)self _setCursorIndexPath:buf];
          *buf = 0u;
          v38 = 0u;
          [(PXSectionedSelectionManager *)self _setPendingIndexPath:buf];
          v26 = 0u;
          v27 = 0u;
        }

        *buf = v26;
        v38 = v27;
        [(PXSectionedSelectionManager *)self _setPressedIndexPath:buf];
        [(PXSectionedSelectionManager *)self _setSelectionLimitReached:[(PXSelectionSnapshot *)v21 isSelectionLimitReached]];
        overallSelectionOrder2 = [(PXSelectionSnapshot *)v21 overallSelectionOrder];
        [(PXSectionedSelectionManager *)self _setOverallSelectionOrder:overallSelectionOrder2];

        v13 = v21;
      }
    }

    [(PXSectionedSelectionManager *)self _setSelectionSnapshot:v13];
  }
}

- (PXSimpleIndexPath)cursorIndexPath
{
  v3 = *&self[5].item;
  *&retstr->dataSourceIdentifier = *&self[5].dataSourceIdentifier;
  *&retstr->item = v3;
  return self;
}

- (PXSimpleIndexPath)pendingIndexPath
{
  v3 = *&self[6].item;
  *&retstr->dataSourceIdentifier = *&self[6].dataSourceIdentifier;
  *&retstr->item = v3;
  return self;
}

- (PXSimpleIndexPath)pressedIndexPath
{
  v3 = *&self[7].item;
  *&retstr->dataSourceIdentifier = *&self[7].dataSourceIdentifier;
  *&retstr->item = v3;
  return self;
}

- (PXAssetSelectionTypeCounter)assetTypeCounter
{
  v3 = objc_getAssociatedObject(self, PXAssetTypeCounterKey);
  if (!v3)
  {
    selectionSnapshot = [(PXSectionedSelectionManager *)self selectionSnapshot];
    dataSource = [selectionSnapshot dataSource];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v3 = [[PXAssetSelectionTypeCounter alloc] initWithSelectionManager:self];
      objc_setAssociatedObject(self, PXAssetTypeCounterKey, v3, 1);
    }

    else
    {
      v3 = 0;
    }
  }

  return v3;
}

- (PXSectionedSelectionManagerSnapshotValidator)snapshotValidator
{
  WeakRetained = objc_loadWeakRetained(&self->_snapshotValidator);

  return WeakRetained;
}

- (void)_setPressedIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  *&self->_pressedIndexPath.dataSourceIdentifier = *&path->dataSourceIdentifier;
  *&self->_pressedIndexPath.item = v3;
}

- (void)_setPendingIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  *&self->_pendingIndexPath.dataSourceIdentifier = *&path->dataSourceIdentifier;
  *&self->_pendingIndexPath.item = v3;
}

- (void)_setCursorIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  *&self->_cursorIndexPath.dataSourceIdentifier = *&path->dataSourceIdentifier;
  *&self->_cursorIndexPath.item = v3;
}

- (void)observable:(id)observable didChange:(unint64_t)change context:(void *)context
{
  changeCopy = change;
  observableCopy = observable;
  if ((changeCopy & 1) != 0 && PXSelectionManagerDataSourceObserverContext == context)
  {
    if ([(PXObservable *)self isPerformingChanges])
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedSelectionManager.m" lineNumber:416 description:{@"Invalid parameter not satisfying: %@", @"!self.isPerformingChanges"}];
    }

    v10 = observableCopy;
    dataSource = [v10 dataSource];
    changeHistory = [v10 changeHistory];

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __60__PXSectionedSelectionManager_observable_didChange_context___block_invoke;
    v16[3] = &unk_1E7BB6018;
    v16[4] = self;
    v17 = dataSource;
    v18 = changeHistory;
    v13 = changeHistory;
    v14 = dataSource;
    [(PXSectionedSelectionManager *)self performChanges:v16];
  }
}

- (void)setOverallSelectionOrder:(id)order
{
  if (self->_overallSelectionOrder != order)
  {
    v4 = [order copy];
    overallSelectionOrder = self->_overallSelectionOrder;
    self->_overallSelectionOrder = v4;

    [(PXSectionedSelectionManager *)self _invalidateSelectionSnapshot];
  }
}

- (void)setSelectionLimitReached:(BOOL)reached
{
  if (self->_selectionLimitReached != reached)
  {
    self->_selectionLimitReached = reached;
    [(PXSectionedSelectionManager *)self _invalidateSelectionSnapshot];
  }
}

- (void)setPressedIndexPath:(PXSimpleIndexPath *)path
{
  [(PXSectionedSelectionManager *)self pressedIndexPath];
  v6 = v8 == path->dataSourceIdentifier && *(&v8 + 1) == path->section && v9 == path->item;
  if (!v6 || *(&v9 + 1) != path->subitem)
  {
    v7 = *&path->item;
    v8 = *&path->dataSourceIdentifier;
    v9 = v7;
    [(PXSectionedSelectionManager *)self _setPressedIndexPath:&v8];
    [(PXSectionedSelectionManager *)self _invalidateSelectionSnapshot];
  }
}

- (void)setPendingIndexPath:(PXSimpleIndexPath *)path
{
  [(PXSectionedSelectionManager *)self pendingIndexPath];
  v6 = v8 == path->dataSourceIdentifier && *(&v8 + 1) == path->section && v9 == path->item;
  if (!v6 || *(&v9 + 1) != path->subitem)
  {
    v7 = *&path->item;
    v8 = *&path->dataSourceIdentifier;
    v9 = v7;
    [(PXSectionedSelectionManager *)self _setPendingIndexPath:&v8];
    [(PXSectionedSelectionManager *)self _invalidateSelectionSnapshot];
  }
}

- (void)setCursorIndexPath:(PXSimpleIndexPath *)path
{
  [(PXSectionedSelectionManager *)self cursorIndexPath];
  v6 = v8 == path->dataSourceIdentifier && *(&v8 + 1) == path->section && v9 == path->item;
  if (!v6 || *(&v9 + 1) != path->subitem)
  {
    v7 = *&path->item;
    v8 = *&path->dataSourceIdentifier;
    v9 = v7;
    [(PXSectionedSelectionManager *)self _setCursorIndexPath:&v8];
    [(PXSectionedSelectionManager *)self _invalidateSelectionSnapshot];
  }
}

- (void)setSelectedIndexPath:(PXSimpleIndexPath *)path
{
  v5 = *&path->item;
  v8 = *&path->dataSourceIdentifier;
  v9 = v5;
  v6 = [(PXIndexPathSet *)PXMutableIndexPathSet indexPathSetWithIndexPath:&v8];
  [(PXSectionedSelectionManager *)self _setSelectedIndexPaths:v6];

  v7 = *&path->item;
  v8 = *&path->dataSourceIdentifier;
  v9 = v7;
  [(PXSectionedSelectionManager *)self _setCursorIndexPath:&v8];
  [(PXSectionedSelectionManager *)self _invalidateSelectionSnapshot];
}

- (void)setSelectedIndexPaths:(id)paths
{
  v4 = [paths mutableCopy];
  [(PXSectionedSelectionManager *)self _setSelectedIndexPaths:v4];

  [(PXSectionedSelectionManager *)self _invalidateSelectionSnapshot];
}

- (void)selectAllItemsInSection:(PXSimpleIndexPath *)section
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v3 = *&section->item;
  v5 = *&section->dataSourceIdentifier;
  v4[2] = __55__PXSectionedSelectionManager_selectAllItemsInSection___block_invoke;
  v4[3] = &unk_1E7BB5FF0;
  v4[4] = self;
  v6 = v3;
  v7 = a2;
  [(PXSectionedSelectionManager *)self _makeSimpleModificationToSelectedIndexPathsUsingBlock:v4];
}

void __55__PXSectionedSelectionManager_selectAllItemsInSection___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) dataSource];
  v5 = (a1 + 40);
  if ([v4 identifier] != *(a1 + 40))
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"PXSectionedSelectionManager.m" lineNumber:344 description:{@"Invalid parameter not satisfying: %@", @"dataSource.identifier == sectionIndexPath.dataSourceIdentifier"}];
  }

  v6 = *(a1 + 48);
  if (v6 >= [v4 numberOfSections])
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:*(a1 + 72) object:*(a1 + 32) file:@"PXSectionedSelectionManager.m" lineNumber:345 description:{@"Invalid parameter not satisfying: %@", @"sectionIndexPath.section < dataSource.numberOfSections"}];
  }

  v8 = *(a1 + 40);
  v7 = *(a1 + 48);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v9 = v5[1];
  v15 = *v5;
  v16 = v9;
  v13[2] = __55__PXSectionedSelectionManager_selectAllItemsInSection___block_invoke_2;
  v13[3] = &unk_1E7BB5FC8;
  v14 = v4;
  v10 = v4;
  [v3 modifyItemIndexSetForDataSourceIdentifier:v8 section:v7 usingBlock:v13];
}

void __55__PXSectionedSelectionManager_selectAllItemsInSection___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 48);
  v4 = a2;
  [v4 addIndexesInRange:{0, objc_msgSend(v2, "numberOfItemsInSection:", v3)}];
}

- (void)selectAllItems
{
  dataSource = [(PXSectionedSelectionManager *)self dataSource];
  allItemIndexPaths = [dataSource allItemIndexPaths];

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __45__PXSectionedSelectionManager_selectAllItems__block_invoke;
  v6[3] = &unk_1E7BB5F80;
  v7 = allItemIndexPaths;
  v5 = allItemIndexPaths;
  [(PXSectionedSelectionManager *)self _makeSimpleModificationToSelectedIndexPathsUsingBlock:v6];
}

- (void)setSelectedState:(BOOL)state forIndexPathSet:(id)set
{
  setCopy = set;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __64__PXSectionedSelectionManager_setSelectedState_forIndexPathSet___block_invoke;
  v8[3] = &unk_1E7BB5F58;
  stateCopy = state;
  v9 = setCopy;
  v7 = setCopy;
  [(PXSectionedSelectionManager *)self _makeSimpleModificationToSelectedIndexPathsUsingBlock:v8];
}

uint64_t __64__PXSectionedSelectionManager_setSelectedState_forIndexPathSet___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  if (*(a1 + 40) == 1)
  {
    return [a2 unionIndexPathSet:v2];
  }

  else
  {
    return [a2 minusIndexPathSet:v2];
  }
}

- (void)setSelectedState:(BOOL)state forIndexPath:(PXSimpleIndexPath *)path andUpdateCursorIndexPath:(BOOL)indexPath
{
  indexPathCopy = indexPath;
  v8 = *&path->item;
  v10 = *&path->dataSourceIdentifier;
  v11 = v8;
  [(PXSectionedSelectionManager *)self setSelectedState:state forIndexPath:&v10];
  if (indexPathCopy)
  {
    v9 = *&path->item;
    v10 = *&path->dataSourceIdentifier;
    v11 = v9;
    [(PXSectionedSelectionManager *)self setCursorIndexPath:&v10];
  }
}

- (void)setSelectedState:(BOOL)state forIndexPath:(PXSimpleIndexPath *)path
{
  v26 = *MEMORY[0x1E69E9840];
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (path->dataSourceIdentifier)
  {
    dataSource = [(PXSectionedSelectionManager *)self dataSource];
    identifier = [dataSource identifier];

    if (dataSourceIdentifier != identifier)
    {
      v10 = PXAssertGetLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v12 = path->dataSourceIdentifier;
        dataSource2 = [(PXSectionedSelectionManager *)self dataSource];
        identifier2 = [dataSource2 identifier];
        dataSource3 = [(PXSectionedSelectionManager *)self dataSource];
        *buf = 134218498;
        v21 = v12;
        v22 = 2048;
        v23 = identifier2;
        v24 = 2112;
        v25 = dataSource3;
        _os_log_error_impl(&dword_1B3F73000, v10, OS_LOG_TYPE_ERROR, "Invalid use, data source identifier mismatch %lu!=%lu, can only select indexPaths in the current data source version: %@", buf, 0x20u);
      }
    }

    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = __61__PXSectionedSelectionManager_setSelectedState_forIndexPath___block_invoke;
    v16[3] = &__block_descriptor_65_e31_v16__0__PXMutableIndexPathSet_8l;
    stateCopy = state;
    v11 = *&path->item;
    v17 = *&path->dataSourceIdentifier;
    v18 = v11;
    [(PXSectionedSelectionManager *)self _makeSimpleModificationToSelectedIndexPathsUsingBlock:v16];
  }
}

uint64_t __61__PXSectionedSelectionManager_setSelectedState_forIndexPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 48);
  if (*(a1 + 64) == 1)
  {
    v4 = *(a1 + 32);
    v5 = v2;
    return [a2 addIndexPath:&v4];
  }

  else
  {
    v4 = *(a1 + 32);
    v5 = v2;
    return [a2 removeIndexPath:&v4];
  }
}

- (BOOL)hasAnyChangesFromSelection:(id)selection
{
  selectionCopy = selection;
  selectionSnapshot = [(PXSectionedSelectionManager *)self selectionSnapshot];
  selectedIndexPaths = [selectionSnapshot selectedIndexPaths];
  v7 = [selectedIndexPaths count];
  selectedIndexPaths2 = [selectionCopy selectedIndexPaths];
  v9 = [selectedIndexPaths2 count];

  if (v7 == v9)
  {
    dataSource = [selectionCopy dataSource];
    identifier = [dataSource identifier];

    selectionSnapshot2 = [(PXSectionedSelectionManager *)self selectionSnapshot];
    dataSource2 = [selectionSnapshot2 dataSource];
    identifier2 = [dataSource2 identifier];

    dataSourceManager = [(PXSectionedSelectionManager *)self dataSourceManager];
    changeHistory = [dataSourceManager changeHistory];
    v17 = [changeHistory coalescedChangeDetailsFromDataSourceIdentifier:identifier toDataSourceIdentifier:identifier2];

    if (v17)
    {
      v28 = 0;
      v29 = &v28;
      v30 = 0x2020000000;
      v31 = 0;
      selectionSnapshot3 = [(PXSectionedSelectionManager *)self selectionSnapshot];
      selectedIndexPaths3 = [selectionSnapshot3 selectedIndexPaths];

      selectedIndexPaths4 = [selectionCopy selectedIndexPaths];
      v24[0] = MEMORY[0x1E69E9820];
      v24[1] = 3221225472;
      v24[2] = __58__PXSectionedSelectionManager_hasAnyChangesFromSelection___block_invoke;
      v24[3] = &unk_1E7BB85B8;
      v25 = v17;
      v21 = selectedIndexPaths3;
      v26 = v21;
      v27 = &v28;
      [selectedIndexPaths4 enumerateItemIndexPathsUsingBlock:v24];
      v22 = *(v29 + 24);

      _Block_object_dispose(&v28, 8);
    }

    else
    {
      v22 = 1;
    }
  }

  else
  {
    v22 = 1;
  }

  return v22 & 1;
}

uint64_t __58__PXSectionedSelectionManager_hasAnyChangesFromSelection___block_invoke(void *a1, __int128 *a2, _BYTE *a3)
{
  v13 = 0;
  v11 = 0u;
  v12 = 0u;
  v5 = a1[4];
  if (v5 && (v6 = a2[1], v9 = *a2, v10 = v6, result = [v5 indexPathAfterApplyingChangesToIndexPath:&v9 hasIncrementalChanges:0 objectChanged:&v13], (v13 & 1) != 0) || (v8 = a1[5], v9 = v11, v10 = v12, result = objc_msgSend(v8, "containsIndexPath:", &v9), (result & 1) == 0))
  {
    *(*(a1[6] + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

void __63__PXSectionedSelectionManager__updateSelectionSnapshotIfNeeded__block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) != a2)
  {
    v4 = PXAssertGetLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      v5 = *(a1 + 40);
      v6 = 134218240;
      v7 = v5;
      v8 = 2048;
      v9 = a2;
      _os_log_fault_impl(&dword_1B3F73000, v4, OS_LOG_TYPE_FAULT, "Attempted to select an indexPath from an incorrect data source version %ld != %ld", &v6, 0x16u);
    }
  }
}

- (id)_snapshotWithSelectableItemsForSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  canSelectIndexPathBlock = [(PXSectionedSelectionManager *)self canSelectIndexPathBlock];
  if (canSelectIndexPathBlock)
  {
    selectedIndexPaths = [snapshotCopy selectedIndexPaths];
    v7 = [selectedIndexPaths mutableCopy];

    v13 = MEMORY[0x1E69E9820];
    v14 = 3221225472;
    v15 = __71__PXSectionedSelectionManager__snapshotWithSelectableItemsForSnapshot___block_invoke;
    v16 = &unk_1E7BB6108;
    v17 = v7;
    v18 = canSelectIndexPathBlock;
    v8 = v7;
    [v8 enumerateAllIndexPathsUsingBlock:&v13];
    v9 = [PXSelectionSnapshot alloc];
    dataSource = [snapshotCopy dataSource];
    v11 = [(PXSelectionSnapshot *)v9 initWithDataSource:dataSource selectedIndexPaths:v8];
  }

  else
  {
    v11 = snapshotCopy;
  }

  return v11;
}

uint64_t __71__PXSectionedSelectionManager__snapshotWithSelectableItemsForSnapshot___block_invoke(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 40);
  v7 = *(v6 + 16);
  v8 = a2[1];
  v12 = *a2;
  v13 = v8;
  result = v7(v6, &v12, a3, a4);
  if ((result & 1) == 0)
  {
    v10 = *(a1 + 32);
    v11 = a2[1];
    v12 = *a2;
    v13 = v11;
    return [v10 removeIndexPath:&v12];
  }

  return result;
}

- (id)_validatedSnapshotForSnapshot:(id)snapshot
{
  v4 = [(PXSectionedSelectionManager *)self _snapshotWithSelectableItemsForSnapshot:snapshot];
  snapshotValidator = [(PXSectionedSelectionManager *)self snapshotValidator];
  v6 = snapshotValidator;
  if (snapshotValidator)
  {
    v7 = [snapshotValidator selectionManager:self validateSnapshot:v4];
    if (v7)
    {
      goto LABEL_6;
    }

    selectionSnapshot = [(PXSectionedSelectionManager *)self selectionSnapshot];
  }

  else
  {
    selectionSnapshot = v4;
  }

  v7 = selectionSnapshot;
LABEL_6:

  return v7;
}

- (void)_makeSimpleModificationToSelectedIndexPathsUsingBlock:(id)block
{
  blockCopy = block;
  if (self->_needsUpdateFlags.selectionSnapshot)
  {
    v4 = -1;
  }

  else
  {
    selectedIndexPaths = [(PXSectionedSelectionManager *)self selectedIndexPaths];
    v4 = [selectedIndexPaths count];
  }

  selectedIndexPaths2 = [(PXSectionedSelectionManager *)self selectedIndexPaths];
  blockCopy[2](blockCopy, selectedIndexPaths2);

  if (self->_needsUpdateFlags.selectionSnapshot)
  {
    v7 = -1;
  }

  else
  {
    selectedIndexPaths3 = [(PXSectionedSelectionManager *)self selectedIndexPaths];
    v7 = [selectedIndexPaths3 count];
  }

  if (v4 != v7)
  {
    [(PXSectionedSelectionManager *)self _invalidateSelectionSnapshot];
  }
}

- (void)_setSelectionSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  if (self->_selectionSnapshot != snapshotCopy)
  {
    v6 = snapshotCopy;
    objc_storeStrong(&self->_selectionSnapshot, snapshot);
    [(PXObservable *)self signalChange:1];
    snapshotCopy = v6;
  }
}

- (void)_setDataSource:(id)source withChangeHistory:(id)history
{
  sourceCopy = source;
  historyCopy = history;
  dataSource = [(PXSectionedSelectionManager *)self dataSource];
  [(PXSectionedSelectionManager *)self _setDataSource:sourceCopy];
  v38 = *PXSimpleIndexPathNull;
  v39 = *&PXSimpleIndexPathNull[16];
  v36 = *PXSimpleIndexPathNull;
  v37 = *&PXSimpleIndexPathNull[16];
  v34 = *PXSimpleIndexPathNull;
  v35 = *&PXSimpleIndexPathNull[16];
  if (historyCopy)
  {
    identifier = [dataSource identifier];
    v10 = [historyCopy changeDetailsFromDataSourceIdentifier:identifier toDataSourceIdentifier:{objc_msgSend(sourceCopy, "identifier")}];
    selectedIndexPaths = [(PXSectionedSelectionManager *)self selectedIndexPaths];
    v12 = [PXSectionedDataSourceChangeDetails indexPathSetAfterApplyingChanges:v10 toIndexPathSet:selectedIndexPaths hasIncrementalChanges:0];
    v32 = 0u;
    v33 = 0u;
    if (selectedIndexPaths)
    {
      [selectedIndexPaths firstItemIndexPathForDataSourceIdentifier:identifier];
    }

    snapshotValidator = [(PXSectionedSelectionManager *)self snapshotValidator];
    v19 = sourceCopy;
    if ([snapshotValidator selectionManagerShouldAvoidEmptySelection:self])
    {
      v14 = 0;
      if (!v32 || v33 == 0x7FFFFFFFFFFFFFFFLL || *(&v33 + 1) != 0x7FFFFFFFFFFFFFFFLL)
      {
        v15 = dataSource;
        goto LABEL_22;
      }

      if (!v12 || ([v12 anyItemIndexPath], !v28))
      {
        *&v28 = 0;
        *(&v28 + 1) = &v28;
        *&v29 = 0x4010000000;
        *(&v29 + 1) = "";
        v30 = *PXSimpleIndexPathNull;
        v31 = *&PXSimpleIndexPathNull[16];
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = __64__PXSectionedSelectionManager__setDataSource_withChangeHistory___block_invoke;
        v25[3] = &unk_1E7BB5EE8;
        v26 = v32;
        v27 = v33;
        v25[4] = &v28;
        v23 = v32;
        v24 = v33;
        [dataSource enumerateItemIndexPathsStartingAtIndexPath:&v23 reverseDirection:1 usingBlock:v25];
        v23 = 0u;
        v24 = 0u;
        if (sourceCopy)
        {
          [sourceCopy firstItemIndexPath];
        }

        v14 = 0;
        if (*(*(&v28 + 1) + 32))
        {
          if (*(*(&v28 + 1) + 48) != 0x7FFFFFFFFFFFFFFFLL && *(*(&v28 + 1) + 56) == 0x7FFFFFFFFFFFFFFFLL)
          {
            v17 = *(*(&v28 + 1) + 48);
            v20[0] = *(*(&v28 + 1) + 32);
            v20[1] = v17;
            [PXSectionedDataSourceChangeDetails indexPathAfterApplyingChanges:v10 toIndexPath:v20 hasIncrementalChanges:0 objectChanged:0];
            v14 = 0;
            v23 = v21;
            v24 = v22;
            if (v21)
            {
              if (v24 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v14 = *(&v24 + 1) == 0x7FFFFFFFFFFFFFFFLL;
              }
            }
          }
        }

        v21 = v23;
        v22 = v24;
        v18 = [PXIndexPathSet indexPathSetWithIndexPath:&v21];
        v15 = dataSource;

        _Block_object_dispose(&v28, 8);
        v12 = v18;
        goto LABEL_22;
      }
    }

    v15 = dataSource;
    v14 = 0;
LABEL_22:
    v16 = [v12 mutableCopy];
    [(PXSectionedSelectionManager *)self cursorIndexPath];
    [PXSectionedDataSourceChangeDetails indexPathAfterApplyingChanges:v10 toIndexPath:&v28 hasIncrementalChanges:0 objectChanged:0];
    [(PXSectionedSelectionManager *)self pendingIndexPath];
    [PXSectionedDataSourceChangeDetails indexPathAfterApplyingChanges:v10 toIndexPath:&v28 hasIncrementalChanges:0 objectChanged:0];
    [(PXSectionedSelectionManager *)self pressedIndexPath];
    [PXSectionedDataSourceChangeDetails indexPathAfterApplyingChanges:v10 toIndexPath:&v28 hasIncrementalChanges:0 objectChanged:0];

    dataSource = v15;
    sourceCopy = v19;
    goto LABEL_23;
  }

  v16 = +[(PXIndexPathSet *)PXMutableIndexPathSet];
  v14 = 0;
LABEL_23:
  [(PXSectionedSelectionManager *)self _setEmptySelectionAvoided:v14];
  [(PXSectionedSelectionManager *)self _setSelectedIndexPaths:v16];
  v28 = v38;
  v29 = v39;
  [(PXSectionedSelectionManager *)self _setCursorIndexPath:&v28];
  v28 = v36;
  v29 = v37;
  [(PXSectionedSelectionManager *)self _setPendingIndexPath:&v28];
  v28 = v34;
  v29 = v35;
  [(PXSectionedSelectionManager *)self _setPressedIndexPath:&v28];
}

__n128 __64__PXSectionedSelectionManager__setDataSource_withChangeHistory___block_invoke(uint64_t a1, int64x2_t *a2, _BYTE *a3)
{
  result.n128_u64[0] = vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 40), *a2), vceqq_s64(*(a1 + 56), a2[1])));
  result.n128_u16[0] = vminv_u16(result.n128_u64[0]);
  if ((result.n128_u8[0] & 1) == 0)
  {
    v4 = *(*(a1 + 32) + 8);
    result = *a2;
    v5 = a2[1];
    v4[2] = *a2;
    v4[3] = v5;
    *a3 = 1;
  }

  return result;
}

- (void)_setDataSource:(id)source
{
  sourceCopy = source;
  if (self->_dataSource != sourceCopy)
  {
    v6 = sourceCopy;
    objc_storeStrong(&self->_dataSource, source);
    [(PXObservable *)self signalChange:2];
    [(PXSectionedSelectionManager *)self _invalidateSelectionSnapshot];
    sourceCopy = v6;
  }
}

- (void)_setSelectedIndexPaths:(id)paths
{
  pathsCopy = paths;
  if (self->_selectedIndexPaths != pathsCopy)
  {
    v6 = pathsCopy;
    objc_storeStrong(&self->_selectedIndexPaths, paths);
    [(PXSectionedSelectionManager *)self _invalidateSelectionSnapshot];
    pathsCopy = v6;
  }
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXSectionedSelectionManager;
  [(PXObservable *)&v3 performChanges:changes];
}

- (PXSectionedSelectionManager)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedSelectionManager.m" lineNumber:49 description:@"Not supported"];

  abort();
}

- (PXSectionedSelectionManager)initWithDataSourceManager:(id)manager
{
  managerCopy = manager;
  v14.receiver = self;
  v14.super_class = PXSectionedSelectionManager;
  v6 = [(PXObservable *)&v14 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dataSourceManager, manager);
    v8 = +[(PXIndexPathSet *)PXMutableIndexPathSet];
    selectedIndexPaths = v7->_selectedIndexPaths;
    v7->_selectedIndexPaths = v8;

    [managerCopy registerChangeObserver:v7 context:PXSelectionManagerDataSourceObserverContext];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __57__PXSectionedSelectionManager_initWithDataSourceManager___block_invoke;
    v11[3] = &unk_1E7BB5EC0;
    v12 = v7;
    v13 = managerCopy;
    [(PXSectionedSelectionManager *)v12 performChanges:v11];
  }

  return v7;
}

uint64_t __57__PXSectionedSelectionManager_initWithDataSourceManager___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) dataSource];
  [v2 _setDataSource:v3 withChangeHistory:0];

  v4 = *(a1 + 32);

  return [v4 _invalidateSelectionSnapshot];
}

@end