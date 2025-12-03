@interface PXStackedDataSectionManager
- (BOOL)_updateDataSectionIfNecessary;
- (BOOL)isDataSectionEmpty;
- (PXStackedDataSectionManager)initWithChildDataSectionManagers:(id)managers;
- (id)auxiliaryObjectForKey:(id)key dataSectionObject:(id)object hintIndex:(int64_t)index;
- (id)changeDetailsForChangedChildDataSectionManager:(id)manager childChangeDetails:(id)details;
- (id)changeDetailsForChildDataSectionManagersChangeDetails:(id)details;
- (id)childDataSectionManagerForObjectAtIndex:(int64_t)index localIndex:(int64_t *)localIndex;
- (id)createDataSection;
- (void)setEnabled:(BOOL)enabled;
- (void)setOutlineObject:(id)object;
@end

@implementation PXStackedDataSectionManager

- (id)auxiliaryObjectForKey:(id)key dataSectionObject:(id)object hintIndex:(int64_t)index
{
  keyCopy = key;
  objectCopy = object;
  v20 = 0;
  v21 = &v20;
  v22 = 0x3032000000;
  v23 = __Block_byref_object_copy__65244;
  v24 = __Block_byref_object_dispose__65245;
  v25 = 0;
  childDataSectionManagers = [(PXDataSectionManager *)self childDataSectionManagers];
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __81__PXStackedDataSectionManager_auxiliaryObjectForKey_dataSectionObject_hintIndex___block_invoke;
  v15[3] = &unk_1E77345B0;
  v18 = &v20;
  v11 = keyCopy;
  v16 = v11;
  v12 = objectCopy;
  v17 = v12;
  indexCopy = index;
  [childDataSectionManagers enumerateObjectsUsingBlock:v15];
  v13 = v21[5];

  _Block_object_dispose(&v20, 8);

  return v13;
}

void __81__PXStackedDataSectionManager_auxiliaryObjectForKey_dataSectionObject_hintIndex___block_invoke(void *a1, void *a2, uint64_t a3, _BYTE *a4)
{
  v6 = [a2 auxiliaryObjectForKey:a1[4] dataSectionObject:a1[5] hintIndex:a1[7]];
  v7 = *(a1[6] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (*(*(a1[6] + 8) + 40))
  {
    *a4 = 1;
  }
}

- (id)changeDetailsForChangedChildDataSectionManager:(id)manager childChangeDetails:(id)details
{
  detailsCopy = details;
  managerCopy = manager;
  childDataSectionManagers = [(PXDataSectionManager *)self childDataSectionManagers];
  v9 = [childDataSectionManagers indexOfObject:managerCopy];

  dataSectionIfCreated = [(PXDataSectionManager *)self dataSectionIfCreated];
  v11 = dataSectionIfCreated;
  v12 = 0;
  if (v9 != 0x7FFFFFFFFFFFFFFFLL && dataSectionIfCreated)
  {
    if ([(PXStackedDataSectionManager *)self isEnabled])
    {
      v12 = [detailsCopy changeDetailsShiftedBy:{objc_msgSend(v11, "itemStartIndexForChildDataSourceAtIndex:", v9)}];
    }

    else
    {
      v12 = 0;
    }
  }

  return v12;
}

- (id)changeDetailsForChildDataSectionManagersChangeDetails:(id)details
{
  detailsCopy = details;
  dataSectionIfCreated = [(PXDataSectionManager *)self dataSectionIfCreated];
  if (dataSectionIfCreated && [detailsCopy hasIncrementalChanges] && (objc_msgSend(detailsCopy, "hasMoves") & 1) == 0)
  {
    createDataSection = [(PXStackedDataSectionManager *)self createDataSection];
    v9 = objc_opt_new();
    removedIndexes = [detailsCopy removedIndexes];
    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v30[2] = __85__PXStackedDataSectionManager_changeDetailsForChildDataSectionManagersChangeDetails___block_invoke;
    v30[3] = &unk_1E774A7B8;
    v31 = dataSectionIfCreated;
    v32 = v9;
    v11 = v9;
    [removedIndexes enumerateIndexesUsingBlock:v30];

    v12 = objc_opt_new();
    insertedIndexes = [detailsCopy insertedIndexes];
    v27[0] = MEMORY[0x1E69E9820];
    v27[1] = 3221225472;
    v27[2] = __85__PXStackedDataSectionManager_changeDetailsForChildDataSectionManagersChangeDetails___block_invoke_2;
    v27[3] = &unk_1E774A7B8;
    v14 = createDataSection;
    v28 = v14;
    v29 = v12;
    v15 = v12;
    [insertedIndexes enumerateIndexesUsingBlock:v27];

    v16 = objc_opt_new();
    changedIndexes = [detailsCopy changedIndexes];
    v21 = MEMORY[0x1E69E9820];
    v22 = 3221225472;
    v23 = __85__PXStackedDataSectionManager_changeDetailsForChildDataSectionManagersChangeDetails___block_invoke_3;
    v24 = &unk_1E774A7B8;
    v25 = v14;
    v26 = v16;
    v18 = v16;
    v19 = v14;
    [changedIndexes enumerateIndexesUsingBlock:&v21];

    v20 = [off_1E7721450 alloc];
    v6 = [v20 initWithIncrementalChangeDetailsRemovedIndexes:v11 insertedIndexes:v15 movesToIndexes:0 movesFromIndexes:0 changedIndexes:{v18, v21, v22, v23, v24}];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void __85__PXStackedDataSectionManager_changeDetailsForChildDataSectionManagersChangeDetails___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) childDataSections];
  v5 = [v4 objectAtIndexedSubscript:a2];

  [*(a1 + 40) addIndexesInRange:{objc_msgSend(*(a1 + 32), "itemStartIndexForChildDataSourceAtIndex:", a2), objc_msgSend(v5, "count")}];
}

void __85__PXStackedDataSectionManager_changeDetailsForChildDataSectionManagersChangeDetails___block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) childDataSections];
  v5 = [v4 objectAtIndexedSubscript:a2];

  [*(a1 + 40) addIndexesInRange:{objc_msgSend(*(a1 + 32), "itemStartIndexForChildDataSourceAtIndex:", a2), objc_msgSend(v5, "count")}];
}

void __85__PXStackedDataSectionManager_changeDetailsForChildDataSectionManagersChangeDetails___block_invoke_3(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) childDataSections];
  v5 = [v4 objectAtIndexedSubscript:a2];

  [*(a1 + 40) addIndexesInRange:{objc_msgSend(*(a1 + 32), "itemStartIndexForChildDataSourceAtIndex:", a2), objc_msgSend(v5, "count")}];
}

- (BOOL)isDataSectionEmpty
{
  if (![(PXStackedDataSectionManager *)self isEnabled])
  {
    return 1;
  }

  if ([(PXStackedDataSectionManager *)self alwaysContainsObjects])
  {
    return 0;
  }

  v4.receiver = self;
  v4.super_class = PXStackedDataSectionManager;
  return [(PXDataSectionManager *)&v4 isDataSectionEmpty];
}

- (id)createDataSection
{
  if ([(PXStackedDataSectionManager *)self isEnabled])
  {
    [(PXDataSectionManager *)self childDataSectionManagers];
    objc_claimAutoreleasedReturnValue();
    PXMap();
  }

  v3 = MEMORY[0x1E695E0F0];
  v4 = [PXStackedDataSection alloc];
  outlineObject = [(PXDataSectionManager *)self outlineObject];
  v6 = [(PXStackedDataSection *)v4 initWithChildDataSections:v3 outlineObject:outlineObject];

  return v6;
}

- (void)setOutlineObject:(id)object
{
  v16 = *MEMORY[0x1E69E9840];
  objectCopy = object;
  v14.receiver = self;
  v14.super_class = PXStackedDataSectionManager;
  [(PXDataSectionManager *)&v14 setOutlineObject:objectCopy];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  childDataSectionManagers = [(PXDataSectionManager *)self childDataSectionManagers];
  v6 = [childDataSectionManagers countByEnumeratingWithState:&v10 objects:v15 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(childDataSectionManagers);
        }

        [*(*(&v10 + 1) + 8 * v9++) setOutlineObject:objectCopy];
      }

      while (v7 != v9);
      v7 = [childDataSectionManagers countByEnumeratingWithState:&v10 objects:v15 count:16];
    }

    while (v7);
  }
}

- (BOOL)_updateDataSectionIfNecessary
{
  dataSectionIfCreated = [(PXDataSectionManager *)self dataSectionIfCreated];
  v4 = dataSectionIfCreated;
  if (!dataSectionIfCreated)
  {
    goto LABEL_10;
  }

  if ([dataSectionIfCreated count] || !-[PXStackedDataSectionManager isEnabled](self, "isEnabled"))
  {
    if ([v4 count] < 1)
    {
      goto LABEL_10;
    }

    if ([(PXStackedDataSectionManager *)self isEnabled])
    {
      goto LABEL_10;
    }

    v6 = [off_1E7721450 changeDetailsWithRemovedIndexRange:{0, objc_msgSend(v4, "count")}];
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  else
  {
    createDataSection = [(PXStackedDataSectionManager *)self createDataSection];
    v6 = [off_1E7721450 changeDetailsWithInsertedIndexRange:{0, objc_msgSend(createDataSection, "count")}];

    if (!v6)
    {
LABEL_10:
      v7 = 0;
      goto LABEL_11;
    }
  }

  [(PXDataSectionManager *)self updateDataSectionWithChangeDetails:v6];

  v7 = 1;
LABEL_11:

  return v7;
}

- (void)setEnabled:(BOOL)enabled
{
  if (self->_enabled != enabled)
  {
    v7 = v3;
    v8 = v4;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 3221225472;
    v5[2] = __42__PXStackedDataSectionManager_setEnabled___block_invoke;
    v5[3] = &unk_1E774C670;
    v5[4] = self;
    enabledCopy = enabled;
    [(PXStackedDataSectionManager *)self performChanges:v5];
  }
}

uint64_t __42__PXStackedDataSectionManager_setEnabled___block_invoke(uint64_t a1)
{
  *(*(a1 + 32) + 144) = *(a1 + 40);
  result = [*(a1 + 32) _updateDataSectionIfNecessary];
  if ((result & 1) == 0)
  {
    v3 = *(a1 + 32);

    return [v3 signalChange:4];
  }

  return result;
}

- (id)childDataSectionManagerForObjectAtIndex:(int64_t)index localIndex:(int64_t *)localIndex
{
  dataSection = [(PXDataSectionManager *)self dataSection];
  v8 = [dataSection indexOfChildDataSourceForObjectAtIndex:index localIndex:localIndex];

  childDataSectionManagers = [(PXDataSectionManager *)self childDataSectionManagers];
  v10 = [childDataSectionManagers objectAtIndexedSubscript:v8];

  return v10;
}

- (PXStackedDataSectionManager)initWithChildDataSectionManagers:(id)managers
{
  v4.receiver = self;
  v4.super_class = PXStackedDataSectionManager;
  result = [(PXDataSectionManager *)&v4 initWithChildDataSectionManagers:managers];
  if (result)
  {
    result->_enabled = 1;
  }

  return result;
}

@end