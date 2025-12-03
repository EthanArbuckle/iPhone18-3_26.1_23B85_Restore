@interface PXSectionedDataSourceChangeDetails
+ (BOOL)changeDetailsAreOnlyInsertionsOrOnlyRemovalsAtEnd:(id)end fromDataSource:(id)source toDataSource:(id)dataSource;
+ (BOOL)changesHaveAnyInsertionsRemovalsOrMoves:(id)moves;
+ (PXSectionedDataSourceChangeDetails)changeDetailsWithNoChangesFromDataSourceIdentifier:(int64_t)identifier toDataSourceIdentifier:(int64_t)sourceIdentifier;
+ (PXSectionedDataSourceChangeDetails)changeDetailsWithoutIncrementalChangesFromDataSourceIdentifier:(int64_t)identifier toDataSourceIdentifier:(int64_t)sourceIdentifier;
+ (PXSimpleIndexPath)indexPathAfterApplyingChanges:(SEL)changes toIndexPath:(id)path hasIncrementalChanges:(PXSimpleIndexPath *)incrementalChanges objectChanged:(BOOL *)changed;
+ (PXSimpleIndexPath)indexPathAfterApplyingChanges:(SEL)changes toIndexPath:(id)path hasIncrementalChanges:(PXSimpleIndexPath *)incrementalChanges objectChanged:(BOOL *)changed changedProperties:(BOOL *)properties;
+ (PXSimpleIndexPath)indexPathAfterRevertingChanges:(SEL)changes fromIndexPath:(id)path hasIncrementalChanges:(PXSimpleIndexPath *)incrementalChanges objectChanged:(BOOL *)changed;
+ (PXSimpleIndexPath)indexPathAfterRevertingChanges:(SEL)changes fromIndexPath:(id)path hasIncrementalChanges:(PXSimpleIndexPath *)incrementalChanges objectChanged:(BOOL *)changed changedProperties:(BOOL *)properties;
+ (id)indexPathSetAfterApplyingChanges:(id)changes toIndexPathSet:(id)set hasIncrementalChanges:(BOOL *)incrementalChanges;
+ (id)indexPathSetAfterRevertingChanges:(id)changes fromIndexPathSet:(id)set hasIncrementalChanges:(BOOL *)incrementalChanges;
+ (void)debug_assertValidChangeDetails:(id)details fromDataSource:(id)source toDataSource:(id)dataSource;
- (BOOL)hasAnyChanges;
- (BOOL)hasAnyInsertionsRemovalsOrMoves;
- (NSString)description;
- (PXSectionedDataSourceChangeDetails)init;
- (PXSectionedDataSourceChangeDetails)initWithFromDataSourceIdentifier:(int64_t)identifier toDataSourceIdentifier:(int64_t)sourceIdentifier sectionChanges:(id)changes itemChangeDetailsBySection:(id)section subitemChangeDetailsByItemBySection:(id)bySection;
- (PXSectionedDataSourceChangeDetails)initWithSectionedDataSourceChangeDetails:(id)details withFromDataSourceIdentifier:(int64_t)identifier toDataSourceIdentifier:(int64_t)sourceIdentifier;
- (PXSimpleIndexPath)indexPathAfterApplyingChangesToIndexPath:(SEL)path hasIncrementalChanges:(PXSimpleIndexPath *)changes objectChanged:(BOOL *)changed;
- (PXSimpleIndexPath)indexPathAfterApplyingChangesToIndexPath:(SEL)path hasIncrementalChanges:(PXSimpleIndexPath *)changes objectChanged:(BOOL *)changed changedProperties:(BOOL *)properties;
- (PXSimpleIndexPath)indexPathAfterRevertingChangesFromIndexPath:(SEL)path hasIncrementalChanges:(PXSimpleIndexPath *)changes objectChanged:(BOOL *)changed;
- (PXSimpleIndexPath)indexPathAfterRevertingChangesFromIndexPath:(SEL)path hasIncrementalChanges:(PXSimpleIndexPath *)changes objectChanged:(BOOL *)changed changedProperties:(BOOL *)properties;
- (id)changedItemsInSection:(int64_t)section;
- (id)deletedItemsInSection:(int64_t)section;
- (id)indexPathSetAfterApplyingChangesToIndexPathSet:(id)set hasIncrementalChanges:(BOOL *)changes;
- (id)indexPathSetAfterRevertingChangesFromIndexPathSet:(id)set hasIncrementalChanges:(BOOL *)changes;
- (id)insertedItemsInSection:(int64_t)section;
- (id)itemChangesInSection:(int64_t)section;
- (id)itemsWithSubitemChangesInSection:(int64_t)section;
- (id)subitemChangesInItem:(int64_t)item section:(int64_t)section;
@end

@implementation PXSectionedDataSourceChangeDetails

- (BOOL)hasAnyInsertionsRemovalsOrMoves
{
  v3 = self->_hasAnyInsertionsRemovalsOrMovesCache;
  v4 = v3;
  if (v3)
  {
    bOOLValue = [(NSNumber *)v3 BOOLValue];
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    sectionChanges = [(PXSectionedDataSourceChangeDetails *)self sectionChanges];
    hasAnyInsertionsRemovalsOrMoves = [sectionChanges hasAnyInsertionsRemovalsOrMoves];

    v17 = hasAnyInsertionsRemovalsOrMoves;
    if (v15[3])
    {
      v8 = 1;
    }

    else
    {
      sectionsWithItemChanges = [(PXSectionedDataSourceChangeDetails *)self sectionsWithItemChanges];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __69__PXSectionedDataSourceChangeDetails_hasAnyInsertionsRemovalsOrMoves__block_invoke;
      v13[3] = &unk_1E7BB84F0;
      v13[4] = self;
      v13[5] = &v14;
      [sectionsWithItemChanges enumerateIndexesUsingBlock:v13];

      v8 = *(v15 + 24);
    }

    v10 = [MEMORY[0x1E696AD98] numberWithBool:v8 & 1];
    hasAnyInsertionsRemovalsOrMovesCache = self->_hasAnyInsertionsRemovalsOrMovesCache;
    self->_hasAnyInsertionsRemovalsOrMovesCache = v10;

    bOOLValue = *(v15 + 24);
    _Block_object_dispose(&v14, 8);
  }

  return bOOLValue & 1;
}

- (id)changedItemsInSection:(int64_t)section
{
  v3 = [(PXSectionedDataSourceChangeDetails *)self itemChangesInSection:section];
  changedIndexes = [v3 changedIndexes];

  return changedIndexes;
}

- (id)insertedItemsInSection:(int64_t)section
{
  v3 = [(PXSectionedDataSourceChangeDetails *)self itemChangesInSection:section];
  insertedIndexes = [v3 insertedIndexes];

  return insertedIndexes;
}

- (id)deletedItemsInSection:(int64_t)section
{
  v3 = [(PXSectionedDataSourceChangeDetails *)self itemChangesInSection:section];
  removedIndexes = [v3 removedIndexes];

  return removedIndexes;
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = PXSectionedDataSourceChangeDetails;
  v4 = [(PXSectionedDataSourceChangeDetails *)&v7 description];
  v5 = [v3 stringWithFormat:@"<%@ ds:%lu->%lu sectionChanges:%@ itemChangesBySection:%@>", v4, self->_fromDataSourceIdentifier, self->_toDataSourceIdentifier, self->_sectionChanges, self->_itemChangeDetailsBySection];

  return v5;
}

- (id)indexPathSetAfterRevertingChangesFromIndexPathSet:(id)set hasIncrementalChanges:(BOOL *)changes
{
  setCopy = set;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  v7 = +[(PXIndexPathSet *)PXMutableIndexPathSet];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __110__PXSectionedDataSourceChangeDetails_indexPathSetAfterRevertingChangesFromIndexPathSet_hasIncrementalChanges___block_invoke;
  v12[3] = &unk_1E7BB85B8;
  v12[4] = self;
  v8 = v7;
  v13 = v8;
  v14 = &v15;
  [setCopy enumerateAllIndexPathsUsingBlock:v12];
  if (changes)
  {
    *changes = *(v16 + 24);
  }

  v9 = v13;
  v10 = v8;

  _Block_object_dispose(&v15, 8);

  return v10;
}

void *__110__PXSectionedDataSourceChangeDetails_indexPathSetAfterRevertingChangesFromIndexPathSet_hasIncrementalChanges___block_invoke(void *a1, __int128 *a2)
{
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  result = a1[4];
  if (result)
  {
    v4 = a2[1];
    v6 = *a2;
    v7 = v4;
    result = [result indexPathAfterRevertingChangesFromIndexPath:&v6 hasIncrementalChanges:&v10 objectChanged:0 changedProperties:0];
    if (v8)
    {
      v5 = a1[5];
      v6 = v8;
      v7 = v9;
      result = [v5 addIndexPath:&v6];
    }
  }

  *(*(a1[6] + 8) + 24) &= v10;
  return result;
}

- (id)indexPathSetAfterApplyingChangesToIndexPathSet:(id)set hasIncrementalChanges:(BOOL *)changes
{
  setCopy = set;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 1;
  if ([(PXSectionedDataSourceChangeDetails *)self hasAnyInsertionsRemovalsOrMoves])
  {
    fromDataSourceIdentifier = [(PXSectionedDataSourceChangeDetails *)self fromDataSourceIdentifier];
    toDataSourceIdentifier = [(PXSectionedDataSourceChangeDetails *)self toDataSourceIdentifier];
    sectionChanges = [(PXSectionedDataSourceChangeDetails *)self sectionChanges];
    v10 = +[(PXIndexPathSet *)PXMutableIndexPathSet];
    if ([sectionChanges hasIncrementalChanges])
    {
      v30[0] = MEMORY[0x1E69E9820];
      v30[1] = 3221225472;
      v30[2] = __107__PXSectionedDataSourceChangeDetails_indexPathSetAfterApplyingChangesToIndexPathSet_hasIncrementalChanges___block_invoke;
      v30[3] = &unk_1E7BB8540;
      v34 = fromDataSourceIdentifier;
      v11 = v10;
      v31 = v11;
      v35 = toDataSourceIdentifier;
      v12 = sectionChanges;
      v32 = v12;
      v33 = &v36;
      [setCopy enumerateSectionIndexSetsUsingBlock:v30];
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = __107__PXSectionedDataSourceChangeDetails_indexPathSetAfterApplyingChangesToIndexPathSet_hasIncrementalChanges___block_invoke_3;
      v23[3] = &unk_1E7BB8568;
      v28 = fromDataSourceIdentifier;
      v13 = v12;
      v24 = v13;
      selfCopy = self;
      v14 = v11;
      v29 = toDataSourceIdentifier;
      v26 = v14;
      v27 = &v36;
      [setCopy enumerateItemIndexSetsUsingBlock:v23];
      v16[0] = MEMORY[0x1E69E9820];
      v16[1] = 3221225472;
      v16[2] = __107__PXSectionedDataSourceChangeDetails_indexPathSetAfterApplyingChangesToIndexPathSet_hasIncrementalChanges___block_invoke_5;
      v16[3] = &unk_1E7BB8590;
      v21 = fromDataSourceIdentifier;
      v17 = v13;
      selfCopy2 = self;
      v22 = toDataSourceIdentifier;
      v19 = v14;
      v20 = &v36;
      [setCopy enumerateSubitemIndexSetsUsingBlock:v16];
    }

    else
    {
      *(v37 + 24) = 0;
    }

    if (!changes)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v10 = [setCopy indexPathSetByFilteringAndReplacingDataSourceIdentifier:-[PXSectionedDataSourceChangeDetails fromDataSourceIdentifier](self withDataSourceIdentifier:{"fromDataSourceIdentifier"), -[PXSectionedDataSourceChangeDetails toDataSourceIdentifier](self, "toDataSourceIdentifier")}];
    if (!changes)
    {
      goto LABEL_6;
    }
  }

  *changes = *(v37 + 24);
LABEL_6:
  _Block_object_dispose(&v36, 8);

  return v10;
}

void __107__PXSectionedDataSourceChangeDetails_indexPathSetAfterApplyingChangesToIndexPathSet_hasIncrementalChanges___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (*(a1 + 56) == a2)
  {
    v6 = *(a1 + 64);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __107__PXSectionedDataSourceChangeDetails_indexPathSetAfterApplyingChangesToIndexPathSet_hasIncrementalChanges___block_invoke_2;
    v8[3] = &unk_1E7BB8518;
    v7 = *(a1 + 32);
    v9 = *(a1 + 40);
    v10 = v5;
    [v7 modifySectionIndexSetForDataSourceIdentifier:v6 usingBlock:v8];
  }

  else
  {
    *(*(*(a1 + 48) + 8) + 24) = 0;
  }
}

void __107__PXSectionedDataSourceChangeDetails_indexPathSetAfterApplyingChangesToIndexPathSet_hasIncrementalChanges___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  if (*(a1 + 64) == a2)
  {
    v8 = [*(a1 + 32) indexAfterApplyingChangesToIndex:a3];
    if (v8 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v9 = v8;
      v10 = [*(a1 + 40) itemChangesInSection:v8];
      if ([v10 hasIncrementalChanges])
      {
        v11 = *(a1 + 48);
        v12 = *(a1 + 72);
        v13[0] = MEMORY[0x1E69E9820];
        v13[1] = 3221225472;
        v13[2] = __107__PXSectionedDataSourceChangeDetails_indexPathSetAfterApplyingChangesToIndexPathSet_hasIncrementalChanges___block_invoke_4;
        v13[3] = &unk_1E7BB8518;
        v14 = v10;
        v15 = v7;
        [v11 modifyItemIndexSetForDataSourceIdentifier:v12 section:v9 usingBlock:v13];
      }

      else
      {
        *(*(*(a1 + 56) + 8) + 24) = 0;
      }
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

void __107__PXSectionedDataSourceChangeDetails_indexPathSetAfterApplyingChangesToIndexPathSet_hasIncrementalChanges___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  if (*(a1 + 64) == a2)
  {
    v10 = [*(a1 + 32) indexAfterApplyingChangesToIndex:a3];
    if (v10 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v11 = v10;
      v12 = [*(a1 + 40) itemChangesInSection:v10];
      if ([v12 hasIncrementalChanges])
      {
        v13 = [v12 indexAfterApplyingChangesToIndex:a4];
        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          v14 = v13;
          v15 = [*(a1 + 40) subitemChangesInItem:v13 section:v11];
          if ([v15 hasIncrementalChanges])
          {
            v16 = *(a1 + 48);
            v17 = *(a1 + 72);
            v18[0] = MEMORY[0x1E69E9820];
            v18[1] = 3221225472;
            v18[2] = __107__PXSectionedDataSourceChangeDetails_indexPathSetAfterApplyingChangesToIndexPathSet_hasIncrementalChanges___block_invoke_6;
            v18[3] = &unk_1E7BB8518;
            v19 = v15;
            v20 = v9;
            [v16 modifySubitemIndexSetForDataSourceIdentifier:v17 section:v11 item:v14 usingBlock:v18];
          }

          else
          {
            *(*(*(a1 + 56) + 8) + 24) = 0;
          }
        }
      }

      else
      {
        *(*(*(a1 + 56) + 8) + 24) = 0;
      }
    }
  }

  else
  {
    *(*(*(a1 + 56) + 8) + 24) = 0;
  }
}

void __107__PXSectionedDataSourceChangeDetails_indexPathSetAfterApplyingChangesToIndexPathSet_hasIncrementalChanges___block_invoke_6(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 indexSetAfterApplyingChangesToIndexSet:v3];
  [v4 addIndexes:v5];
}

void __107__PXSectionedDataSourceChangeDetails_indexPathSetAfterApplyingChangesToIndexPathSet_hasIncrementalChanges___block_invoke_4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 indexSetAfterApplyingChangesToIndexSet:v3];
  [v4 addIndexes:v5];
}

void __107__PXSectionedDataSourceChangeDetails_indexPathSetAfterApplyingChangesToIndexPathSet_hasIncrementalChanges___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = a2;
  v5 = [v2 indexSetAfterApplyingChangesToIndexSet:v3];
  [v4 addIndexes:v5];
}

- (PXSimpleIndexPath)indexPathAfterRevertingChangesFromIndexPath:(SEL)path hasIncrementalChanges:(PXSimpleIndexPath *)changes objectChanged:(BOOL *)changed changedProperties:(BOOL *)properties
{
  v12 = a7;
  *retstr = *PXSimpleIndexPathNull;
  if (changes->dataSourceIdentifier != self->_toDataSourceIdentifier || !changes->dataSourceIdentifier)
  {
LABEL_6:
    v16 = 0;
    hasIncrementalChanges = 0;
    if (!changed)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  section = changes->section;
  item = changes->item;
  if (section == 0x7FFFFFFFFFFFFFFFLL)
  {
    subitem = changes->subitem;
    if (item == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (subitem == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_6;
      }

      goto LABEL_21;
    }

LABEL_17:
    if (subitem == 0x7FFFFFFFFFFFFFFFLL)
    {
      v38 = v12;
      v23 = [(PXSectionedDataSourceChangeDetails *)self itemChangesInSection:section];
      hasIncrementalChanges = [v23 hasIncrementalChanges];
      changedIndexes = [v23 changedIndexes];
      v16 = [changedIndexes containsIndex:changes->item];

      v25 = [v23 changedPropertiesForIndex:changes->item];
      [v38 addObjectsFromArray:v25];

      v26 = [v23 indexAfterRevertingChangesFromIndex:changes->item];
      if (v26 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v27 = v26;
        hasIncrementalChanges = [(PXArrayChangeDetails *)self->_sectionChanges hasIncrementalChanges];
        v28 = [(PXArrayChangeDetails *)self->_sectionChanges indexAfterRevertingChangesFromIndex:changes->section];
        if (v28 != 0x7FFFFFFFFFFFFFFFLL)
        {
          retstr->dataSourceIdentifier = self->_fromDataSourceIdentifier;
          retstr->section = v28;
          retstr->item = v27;
          retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
        }
      }

      goto LABEL_26;
    }

LABEL_21:
    v38 = v12;
    v23 = [PXSectionedDataSourceChangeDetails subitemChangesInItem:"subitemChangesInItem:section:" section:?];
    hasIncrementalChanges = [v23 hasIncrementalChanges];
    changedIndexes2 = [v23 changedIndexes];
    v16 = [changedIndexes2 containsIndex:changes->subitem];

    v30 = [v23 changedPropertiesForIndex:changes->subitem];
    [v38 addObjectsFromArray:v30];

    v31 = [v23 indexAfterRevertingChangesFromIndex:changes->subitem];
    if (v31 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v32 = v31;
      v33 = [(PXSectionedDataSourceChangeDetails *)self itemChangesInSection:changes->section];
      hasIncrementalChanges = [v33 hasIncrementalChanges];
      v37 = v33;
      v34 = [v33 indexAfterRevertingChangesFromIndex:changes->item];
      if (v34 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v35 = v34;
        hasIncrementalChanges = [(PXArrayChangeDetails *)self->_sectionChanges hasIncrementalChanges];
        v36 = [(PXArrayChangeDetails *)self->_sectionChanges indexAfterRevertingChangesFromIndex:changes->section];
        if (v36 != 0x7FFFFFFFFFFFFFFFLL)
        {
          retstr->dataSourceIdentifier = self->_fromDataSourceIdentifier;
          retstr->section = v36;
          retstr->item = v35;
          retstr->subitem = v32;
        }
      }
    }

LABEL_26:

    goto LABEL_27;
  }

  if (item != 0x7FFFFFFFFFFFFFFFLL)
  {
    subitem = changes->subitem;
    goto LABEL_17;
  }

  v38 = v12;
  hasIncrementalChanges = [(PXArrayChangeDetails *)self->_sectionChanges hasIncrementalChanges];
  changedIndexes3 = [(PXArrayChangeDetails *)self->_sectionChanges changedIndexes];
  v16 = [changedIndexes3 containsIndex:changes->section];

  v20 = [(PXArrayChangeDetails *)self->_sectionChanges changedPropertiesForIndex:changes->section];
  [v38 addObjectsFromArray:v20];

  v21 = [(PXArrayChangeDetails *)self->_sectionChanges indexAfterRevertingChangesFromIndex:changes->section];
  if (v21 != 0x7FFFFFFFFFFFFFFFLL)
  {
    retstr->dataSourceIdentifier = self->_fromDataSourceIdentifier;
    retstr->section = v21;
    v22.f64[0] = NAN;
    v22.f64[1] = NAN;
    *&retstr->item = vnegq_f64(v22);
  }

LABEL_27:
  v12 = v38;
  if (changed)
  {
LABEL_7:
    *changed = hasIncrementalChanges;
  }

LABEL_8:
  if (properties)
  {
    *properties = v16;
  }

  return result;
}

- (PXSimpleIndexPath)indexPathAfterRevertingChangesFromIndexPath:(SEL)path hasIncrementalChanges:(PXSimpleIndexPath *)changes objectChanged:(BOOL *)changed
{
  v6 = *&changes->item;
  v8[0] = *&changes->dataSourceIdentifier;
  v8[1] = v6;
  return [(PXSectionedDataSourceChangeDetails *)self indexPathAfterRevertingChangesFromIndexPath:v8 hasIncrementalChanges:changed objectChanged:a6 changedProperties:0];
}

- (PXSimpleIndexPath)indexPathAfterApplyingChangesToIndexPath:(SEL)path hasIncrementalChanges:(PXSimpleIndexPath *)changes objectChanged:(BOOL *)changed changedProperties:(BOOL *)properties
{
  v12 = a7;
  *retstr = *PXSimpleIndexPathNull;
  if (changes->dataSourceIdentifier != self->_fromDataSourceIdentifier || !changes->dataSourceIdentifier)
  {
    goto LABEL_6;
  }

  item = changes->item;
  if (changes->section == 0x7FFFFFFFFFFFFFFFLL)
  {
    subitem = changes->subitem;
    if (item == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (subitem == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_6:
        v15 = 0;
        hasIncrementalChanges = 0;
        goto LABEL_25;
      }

LABEL_15:
      v40 = v12;
      hasIncrementalChanges = [(PXArrayChangeDetails *)self->_sectionChanges hasIncrementalChanges];
      v29 = [(PXArrayChangeDetails *)self->_sectionChanges indexAfterApplyingChangesToIndex:changes->section];
      if (v29 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_16;
      }

      v30 = v29;
      v24 = [(PXSectionedDataSourceChangeDetails *)self itemChangesInSection:v29];
      hasIncrementalChanges = [v24 hasIncrementalChanges];
      v31 = [v24 indexAfterApplyingChangesToIndex:changes->item];
      if (v31 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v32 = v31;
        v33 = [(PXSectionedDataSourceChangeDetails *)self subitemChangesInItem:v31 section:v30];
        hasIncrementalChanges = [v33 hasIncrementalChanges];
        v34 = [v33 indexAfterApplyingChangesToIndex:changes->subitem];
        if (v34 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v15 = 0;
        }

        else
        {
          v35 = v34;
          changedIndexes = [v33 changedIndexes];
          v39 = v35;
          v15 = [changedIndexes containsIndex:v35];

          v38 = [v33 changedPropertiesForIndex:v39];
          [v40 addObjectsFromArray:v38];

          retstr->dataSourceIdentifier = self->_toDataSourceIdentifier;
          retstr->section = v30;
          retstr->item = v32;
          retstr->subitem = v39;
        }

        goto LABEL_23;
      }

      goto LABEL_18;
    }
  }

  else
  {
    if (item == 0x7FFFFFFFFFFFFFFFLL)
    {
      v40 = v12;
      hasIncrementalChanges = [(PXArrayChangeDetails *)self->_sectionChanges hasIncrementalChanges];
      v17 = [(PXArrayChangeDetails *)self->_sectionChanges indexAfterApplyingChangesToIndex:changes->section];
      if (v17 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v18 = v17;
        changedIndexes2 = [(PXArrayChangeDetails *)self->_sectionChanges changedIndexes];
        v15 = [changedIndexes2 containsIndex:v18];

        v20 = [(PXArrayChangeDetails *)self->_sectionChanges changedPropertiesForIndex:v18];
        [v40 addObjectsFromArray:v20];

        v12 = v40;
        retstr->dataSourceIdentifier = self->_toDataSourceIdentifier;
        retstr->section = v18;
        v21.f64[0] = NAN;
        v21.f64[1] = NAN;
        *&retstr->item = vnegq_f64(v21);
        goto LABEL_25;
      }

      goto LABEL_16;
    }

    subitem = changes->subitem;
  }

  if (subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

  v40 = v12;
  hasIncrementalChanges = [(PXArrayChangeDetails *)self->_sectionChanges hasIncrementalChanges];
  v22 = [(PXArrayChangeDetails *)self->_sectionChanges indexAfterApplyingChangesToIndex:changes->section];
  if (v22 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = v22;
    v24 = [(PXSectionedDataSourceChangeDetails *)self itemChangesInSection:v22];
    hasIncrementalChanges = [v24 hasIncrementalChanges];
    v25 = [v24 indexAfterApplyingChangesToIndex:changes->item];
    if (v25 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = v25;
      changedIndexes3 = [v24 changedIndexes];
      v15 = [changedIndexes3 containsIndex:v26];

      v28 = [v24 changedPropertiesForIndex:v26];
      [v40 addObjectsFromArray:v28];

      retstr->dataSourceIdentifier = self->_toDataSourceIdentifier;
      retstr->section = v23;
      retstr->item = v26;
      retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
LABEL_23:

      goto LABEL_24;
    }

LABEL_18:
    v15 = 0;
    goto LABEL_23;
  }

LABEL_16:
  v15 = 0;
LABEL_24:
  v12 = v40;
LABEL_25:
  if (changed)
  {
    *changed = hasIncrementalChanges;
  }

  if (properties)
  {
    *properties = v15;
  }

  return result;
}

- (PXSimpleIndexPath)indexPathAfterApplyingChangesToIndexPath:(SEL)path hasIncrementalChanges:(PXSimpleIndexPath *)changes objectChanged:(BOOL *)changed
{
  v6 = *&changes->item;
  v8[0] = *&changes->dataSourceIdentifier;
  v8[1] = v6;
  return [(PXSectionedDataSourceChangeDetails *)self indexPathAfterApplyingChangesToIndexPath:v8 hasIncrementalChanges:changed objectChanged:a6 changedProperties:0];
}

void __69__PXSectionedDataSourceChangeDetails_hasAnyInsertionsRemovalsOrMoves__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [*(a1 + 32) itemChangesInSection:a2];
  *(*(*(a1 + 40) + 8) + 24) = [v6 hasAnyInsertionsRemovalsOrMoves];
  v7 = *(*(*(a1 + 40) + 8) + 24);
  if ((v7 & 1) == 0)
  {
    v8 = [*(a1 + 32) itemsWithSubitemChangesInSection:a2];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __69__PXSectionedDataSourceChangeDetails_hasAnyInsertionsRemovalsOrMoves__block_invoke_2;
    v9[3] = &unk_1E7BB84C8;
    v11 = a2;
    v10 = *(a1 + 32);
    [v8 enumerateIndexesUsingBlock:v9];

    v7 = *(*(*(a1 + 40) + 8) + 24);
  }

  *a3 = v7;
}

void __69__PXSectionedDataSourceChangeDetails_hasAnyInsertionsRemovalsOrMoves__block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) subitemChangesInItem:a2 section:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = [v5 hasAnyInsertionsRemovalsOrMoves];
  *a3 = *(*(*(a1 + 40) + 8) + 24);
}

- (BOOL)hasAnyChanges
{
  v3 = self->_hasAnyChangesCache;
  v4 = v3;
  if (v3)
  {
    bOOLValue = [(NSNumber *)v3 BOOLValue];
  }

  else
  {
    v14 = 0;
    v15 = &v14;
    v16 = 0x2020000000;
    sectionChanges = [(PXSectionedDataSourceChangeDetails *)self sectionChanges];
    hasAnyChanges = [sectionChanges hasAnyChanges];

    v17 = hasAnyChanges;
    if (v15[3])
    {
      v8 = 1;
    }

    else
    {
      sectionsWithItemChanges = [(PXSectionedDataSourceChangeDetails *)self sectionsWithItemChanges];
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = __51__PXSectionedDataSourceChangeDetails_hasAnyChanges__block_invoke;
      v13[3] = &unk_1E7BB84F0;
      v13[4] = self;
      v13[5] = &v14;
      [sectionsWithItemChanges enumerateIndexesUsingBlock:v13];

      v8 = *(v15 + 24);
    }

    v10 = [MEMORY[0x1E696AD98] numberWithBool:v8 & 1];
    hasAnyChangesCache = self->_hasAnyChangesCache;
    self->_hasAnyChangesCache = v10;

    bOOLValue = *(v15 + 24);
    _Block_object_dispose(&v14, 8);
  }

  return bOOLValue & 1;
}

void __51__PXSectionedDataSourceChangeDetails_hasAnyChanges__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v6 = [*(a1 + 32) itemChangesInSection:a2];
  *(*(*(a1 + 40) + 8) + 24) = [v6 hasAnyChanges];
  v7 = *(*(*(a1 + 40) + 8) + 24);
  if ((v7 & 1) == 0)
  {
    v8 = [*(a1 + 32) itemsWithSubitemChangesInSection:a2];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __51__PXSectionedDataSourceChangeDetails_hasAnyChanges__block_invoke_2;
    v9[3] = &unk_1E7BB84C8;
    v11 = a2;
    v10 = *(a1 + 32);
    [v8 enumerateIndexesUsingBlock:v9];

    v7 = *(*(*(a1 + 40) + 8) + 24);
  }

  *a3 = v7;
}

void __51__PXSectionedDataSourceChangeDetails_hasAnyChanges__block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v5 = [*(a1 + 32) subitemChangesInItem:a2 section:*(a1 + 48)];
  *(*(*(a1 + 40) + 8) + 24) = [v5 hasAnyChanges];
  *a3 = *(*(*(a1 + 40) + 8) + 24);
}

- (id)subitemChangesInItem:(int64_t)item section:(int64_t)section
{
  v7 = [(PXSectionedDataSourceChangeDetails *)self itemChangesInSection:section];
  if ([v7 hasIncrementalChanges])
  {
    subitemChangeDetailsByItemBySection = self->_subitemChangeDetailsByItemBySection;
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:section];
    v10 = [(NSDictionary *)subitemChangeDetailsByItemBySection objectForKeyedSubscript:v9];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:item];
    v12 = [v10 objectForKeyedSubscript:v11];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = +[PXArrayChangeDetails changeDetailsWithNoChanges];
    }

    v15 = v14;
  }

  else
  {
    v15 = +[PXArrayChangeDetails changeDetailsWithNoIncrementalChanges];
  }

  return v15;
}

- (id)itemsWithSubitemChangesInSection:(int64_t)section
{
  itemsWithSubitemChangesBySection = self->_itemsWithSubitemChangesBySection;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  v5 = [(NSDictionary *)itemsWithSubitemChangesBySection objectForKeyedSubscript:v4];
  v6 = v5;
  if (v5)
  {
    indexSet = v5;
  }

  else
  {
    indexSet = [MEMORY[0x1E696AC90] indexSet];
  }

  v8 = indexSet;

  return v8;
}

- (id)itemChangesInSection:(int64_t)section
{
  if ([(PXArrayChangeDetails *)self->_sectionChanges hasIncrementalChanges])
  {
    itemChangeDetailsBySection = self->_itemChangeDetailsBySection;
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:section];
    v7 = [(NSDictionary *)itemChangeDetailsBySection objectForKeyedSubscript:v6];
    v8 = v7;
    if (v7)
    {
      v9 = v7;
    }

    else
    {
      v9 = +[PXArrayChangeDetails changeDetailsWithNoChanges];
    }

    v10 = v9;
  }

  else
  {
    v10 = +[PXArrayChangeDetails changeDetailsWithNoIncrementalChanges];
  }

  return v10;
}

- (PXSectionedDataSourceChangeDetails)initWithSectionedDataSourceChangeDetails:(id)details withFromDataSourceIdentifier:(int64_t)identifier toDataSourceIdentifier:(int64_t)sourceIdentifier
{
  detailsCopy = details;
  sectionChanges = [detailsCopy sectionChanges];
  v10 = detailsCopy[1];
  v11 = detailsCopy[3];

  v12 = [(PXSectionedDataSourceChangeDetails *)self initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:sourceIdentifier sectionChanges:sectionChanges itemChangeDetailsBySection:v10 subitemChangeDetailsByItemBySection:v11];
  return v12;
}

- (PXSectionedDataSourceChangeDetails)initWithFromDataSourceIdentifier:(int64_t)identifier toDataSourceIdentifier:(int64_t)sourceIdentifier sectionChanges:(id)changes itemChangeDetailsBySection:(id)section subitemChangeDetailsByItemBySection:(id)bySection
{
  changesCopy = changes;
  sectionCopy = section;
  bySectionCopy = bySection;
  v39.receiver = self;
  v39.super_class = PXSectionedDataSourceChangeDetails;
  v16 = [(PXSectionedDataSourceChangeDetails *)&v39 init];
  v17 = v16;
  if (v16)
  {
    v16->_fromDataSourceIdentifier = identifier;
    v16->_toDataSourceIdentifier = sourceIdentifier;
    objc_storeStrong(&v16->_sectionChanges, changes);
    if ([changesCopy hasIncrementalChanges])
    {
      v18 = [sectionCopy copy];
      itemChangeDetailsBySection = v17->_itemChangeDetailsBySection;
      v17->_itemChangeDetailsBySection = v18;

      v20 = [bySectionCopy copy];
      subitemChangeDetailsByItemBySection = v17->_subitemChangeDetailsByItemBySection;
      v17->_subitemChangeDetailsByItemBySection = v20;

      indexSet = [MEMORY[0x1E696AD50] indexSet];
      v23 = v17->_itemChangeDetailsBySection;
      v37[0] = MEMORY[0x1E69E9820];
      v37[1] = 3221225472;
      v37[2] = __172__PXSectionedDataSourceChangeDetails_initWithFromDataSourceIdentifier_toDataSourceIdentifier_sectionChanges_itemChangeDetailsBySection_subitemChangeDetailsByItemBySection___block_invoke;
      v37[3] = &unk_1E7BB8478;
      v24 = indexSet;
      v38 = v24;
      [(NSDictionary *)v23 enumerateKeysAndObjectsUsingBlock:v37];
      dictionary = [MEMORY[0x1E695DF90] dictionary];
      v26 = v17->_subitemChangeDetailsByItemBySection;
      v34[0] = MEMORY[0x1E69E9820];
      v34[1] = 3221225472;
      v34[2] = __172__PXSectionedDataSourceChangeDetails_initWithFromDataSourceIdentifier_toDataSourceIdentifier_sectionChanges_itemChangeDetailsBySection_subitemChangeDetailsByItemBySection___block_invoke_2;
      v34[3] = &unk_1E7BB84A0;
      v27 = v24;
      v35 = v27;
      v28 = dictionary;
      v36 = v28;
      [(NSDictionary *)v26 enumerateKeysAndObjectsUsingBlock:v34];
      itemsWithSubitemChangesBySection = v17->_itemsWithSubitemChangesBySection;
      v17->_itemsWithSubitemChangesBySection = v28;
      v30 = v28;

      sectionsWithItemChanges = v17->_sectionsWithItemChanges;
      v17->_sectionsWithItemChanges = v27;
      v32 = v27;
    }
  }

  return v17;
}

uint64_t __172__PXSectionedDataSourceChangeDetails_initWithFromDataSourceIdentifier_toDataSourceIdentifier_sectionChanges_itemChangeDetailsBySection_subitemChangeDetailsByItemBySection___block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 integerValue];
  v4 = *(a1 + 32);

  return [v4 addIndex:v3];
}

void __172__PXSectionedDataSourceChangeDetails_initWithFromDataSourceIdentifier_toDataSourceIdentifier_sectionChanges_itemChangeDetailsBySection_subitemChangeDetailsByItemBySection___block_invoke_2(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = MEMORY[0x1E696AD50];
  v7 = a3;
  v8 = [v6 indexSet];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __172__PXSectionedDataSourceChangeDetails_initWithFromDataSourceIdentifier_toDataSourceIdentifier_sectionChanges_itemChangeDetailsBySection_subitemChangeDetailsByItemBySection___block_invoke_3;
  v10[3] = &unk_1E7BB8478;
  v9 = v8;
  v11 = v9;
  [v7 enumerateKeysAndObjectsUsingBlock:v10];

  if ([v9 count])
  {
    [*(a1 + 32) addIndex:{objc_msgSend(v5, "integerValue")}];
    [*(a1 + 40) setObject:v9 forKeyedSubscript:v5];
  }
}

uint64_t __172__PXSectionedDataSourceChangeDetails_initWithFromDataSourceIdentifier_toDataSourceIdentifier_sectionChanges_itemChangeDetailsBySection_subitemChangeDetailsByItemBySection___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = [a2 integerValue];

  return [v2 addIndex:v3];
}

- (PXSectionedDataSourceChangeDetails)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v5 = NSStringFromSelector(a2);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedDataSourceChangeDetails.m" lineNumber:128 description:{@"%@ not supported", v5}];

  abort();
}

+ (void)debug_assertValidChangeDetails:(id)details fromDataSource:(id)source toDataSource:(id)dataSource
{
  v109 = *MEMORY[0x1E69E9840];
  detailsCopy = details;
  sourceCopy = source;
  dataSourceCopy = dataSource;
  v11 = detailsCopy;
  v12 = dataSourceCopy;
  if (detailsCopy)
  {
    v74 = dataSourceCopy;
    if (![detailsCopy count])
    {
      identifier = [sourceCopy identifier];
      v12 = v74;
      if (identifier == [v74 identifier])
      {
        goto LABEL_75;
      }

      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedDataSourceChangeDetails.m" lineNumber:580 description:{@"Invalid parameter not satisfying: %@", @"fromDataSource.identifier == toDataSource.identifier"}];
      goto LABEL_73;
    }

    v68 = a2;
    selfCopy = self;
    firstObject = [detailsCopy firstObject];
    fromDataSourceIdentifier = [firstObject fromDataSourceIdentifier];
    identifier2 = [sourceCopy identifier];

    if (fromDataSourceIdentifier != identifier2)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:v68 object:self file:@"PXSectionedDataSourceChangeDetails.m" lineNumber:584 description:{@"Invalid parameter not satisfying: %@", @"changeDetailsArray.firstObject.fromDataSourceIdentifier == fromDataSource.identifier"}];
    }

    lastObject = [detailsCopy lastObject];
    toDataSourceIdentifier = [lastObject toDataSourceIdentifier];
    identifier3 = [v74 identifier];

    if (toDataSourceIdentifier != identifier3)
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:v68 object:self file:@"PXSectionedDataSourceChangeDetails.m" lineNumber:585 description:{@"Invalid parameter not satisfying: %@", @"changeDetailsArray.lastObject.toDataSourceIdentifier == toDataSource.identifier"}];
    }

    v71 = detailsCopy;
    if ([sourceCopy numberOfSections] >= 1)
    {
      v19 = 0;
      while (1)
      {
        v103 = 0u;
        v104 = 0u;
        v101 = 0u;
        v102 = 0u;
        v20 = v11;
        v21 = [v20 countByEnumeratingWithState:&v101 objects:v108 count:16];
        v22 = v19;
        if (v21)
        {
          v23 = v21;
          v24 = *v102;
          v22 = v19;
          while (2)
          {
            for (i = 0; i != v23; ++i)
            {
              if (*v102 != v24)
              {
                objc_enumerationMutation(v20);
              }

              sectionChanges = [*(*(&v101 + 1) + 8 * i) sectionChanges];
              v22 = [sectionChanges indexAfterApplyingChangesToIndex:v22];

              if (v22 == 0x7FFFFFFFFFFFFFFFLL)
              {
                currentHandler4 = v20;
                goto LABEL_20;
              }
            }

            v23 = [v20 countByEnumeratingWithState:&v101 objects:v108 count:16];
            if (v23)
            {
              continue;
            }

            break;
          }
        }

        if (v22 >= [v74 numberOfSections])
        {
          currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler4 handleFailureInMethod:v68 object:selfCopy file:@"PXSectionedDataSourceChangeDetails.m" lineNumber:595 description:{@"Invalid parameter not satisfying: %@", @"section == NSNotFound || section < toDataSource.numberOfSections"}];
LABEL_20:
        }

        v72 = [sourceCopy numberOfItemsInSection:v19];
        if (v72 >= 1)
        {
          break;
        }

LABEL_38:
        ++v19;
        v11 = v71;
        if (v19 >= [sourceCopy numberOfSections])
        {
          goto LABEL_39;
        }
      }

      v28 = 0;
      v70 = v20;
      while (1)
      {
        identifier4 = [sourceCopy identifier];
        v97 = 0u;
        v98 = 0u;
        v99 = 0u;
        v100 = 0u;
        v30 = v20;
        v31 = [v30 countByEnumeratingWithState:&v97 objects:v107 count:16];
        if (v31)
        {
          break;
        }

        if (identifier4)
        {
          v34 = 0x7FFFFFFFFFFFFFFFLL;
          v37 = v19;
          v35 = v28;
LABEL_36:
          v93 = identifier4;
          v94 = v37;
          v95 = v35;
          v96 = v34;
          v40 = [v74 objectAtIndexPath:&v93];
        }

LABEL_37:
        if (++v28 == v72)
        {
          goto LABEL_38;
        }
      }

      v32 = v31;
      v33 = *v98;
      v34 = 0x7FFFFFFFFFFFFFFFLL;
      v35 = v28;
      v36 = v19;
      v37 = v19;
      while (2)
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v98 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v39 = *(*(&v97 + 1) + 8 * j);
          if (!v39 || (v89 = identifier4, v90 = v37, v91 = v35, v92 = v34, [v39 indexPathAfterApplyingChangesToIndexPath:&v89 hasIncrementalChanges:0 objectChanged:0 changedProperties:0], (identifier4 = v93) == 0))
          {

            v19 = v36;
            v20 = v70;
            goto LABEL_37;
          }

          v37 = v94;
          v35 = v95;
          v34 = v96;
        }

        v32 = [v30 countByEnumeratingWithState:&v97 objects:v107 count:16];
        if (v32)
        {
          continue;
        }

        break;
      }

      v19 = v36;
      v20 = v70;
      goto LABEL_36;
    }

LABEL_39:
    v12 = v74;
    if ([v74 numberOfSections] >= 1)
    {
      v41 = 0;
      while (1)
      {
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        reverseObjectEnumerator = [v11 reverseObjectEnumerator];
        v43 = [reverseObjectEnumerator countByEnumeratingWithState:&v85 objects:v106 count:16];
        v44 = v41;
        if (v43)
        {
          v45 = v43;
          v46 = *v86;
          v44 = v41;
          while (2)
          {
            for (k = 0; k != v45; ++k)
            {
              if (*v86 != v46)
              {
                objc_enumerationMutation(reverseObjectEnumerator);
              }

              sectionChanges2 = [*(*(&v85 + 1) + 8 * k) sectionChanges];
              v44 = [sectionChanges2 indexAfterRevertingChangesFromIndex:v44];

              if (v44 == 0x7FFFFFFFFFFFFFFFLL)
              {
                v12 = v74;
                goto LABEL_52;
              }
            }

            v45 = [reverseObjectEnumerator countByEnumeratingWithState:&v85 objects:v106 count:16];
            if (v45)
            {
              continue;
            }

            break;
          }
        }

        v12 = v74;
        if (v44 >= [sourceCopy numberOfSections])
        {
          reverseObjectEnumerator = [MEMORY[0x1E696AAA8] currentHandler];
          [reverseObjectEnumerator handleFailureInMethod:v68 object:selfCopy file:@"PXSectionedDataSourceChangeDetails.m" lineNumber:620 description:{@"Invalid parameter not satisfying: %@", @"section == NSNotFound || section < fromDataSource.numberOfSections"}];
LABEL_52:
        }

        v73 = [v12 numberOfItemsInSection:v41];
        if (v73 >= 1)
        {
          break;
        }

LABEL_70:
        if (++v41 >= [v12 numberOfSections])
        {
          goto LABEL_71;
        }
      }

      v49 = 0;
      while (1)
      {
        identifier5 = [v12 identifier];
        v81 = 0u;
        v82 = 0u;
        v83 = 0u;
        v84 = 0u;
        reverseObjectEnumerator2 = [v11 reverseObjectEnumerator];
        v52 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v81 objects:v105 count:16];
        if (v52)
        {
          break;
        }

        v12 = v74;
        if (identifier5)
        {
          v55 = 0x7FFFFFFFFFFFFFFFLL;
          v58 = v49;
          v57 = v41;
LABEL_68:
          v93 = identifier5;
          v94 = v57;
          v95 = v58;
          v96 = v55;
          v61 = [sourceCopy objectAtIndexPath:&v93];
          v11 = v71;
        }

LABEL_69:
        if (++v49 == v73)
        {
          goto LABEL_70;
        }
      }

      v53 = v52;
      v54 = *v82;
      v55 = 0x7FFFFFFFFFFFFFFFLL;
      v56 = v41;
      v57 = v41;
      v58 = v49;
      while (2)
      {
        for (m = 0; m != v53; ++m)
        {
          if (*v82 != v54)
          {
            objc_enumerationMutation(reverseObjectEnumerator2);
          }

          v60 = *(*(&v81 + 1) + 8 * m);
          if (!v60 || (v89 = identifier5, v90 = v57, v91 = v58, v92 = v55, [v60 indexPathAfterRevertingChangesFromIndexPath:&v89 hasIncrementalChanges:0 objectChanged:0 changedProperties:0], (identifier5 = v93) == 0))
          {

            v11 = v71;
            v12 = v74;
            v41 = v56;
            goto LABEL_69;
          }

          v57 = v94;
          v58 = v95;
          v55 = v96;
        }

        v53 = [reverseObjectEnumerator2 countByEnumeratingWithState:&v81 objects:v105 count:16];
        if (v53)
        {
          continue;
        }

        break;
      }

      v12 = v74;
      v41 = v56;
      goto LABEL_68;
    }

LABEL_71:
    if ([v11 count] == 1)
    {
      lastObject2 = [v11 lastObject];
      sectionsWithItemChanges = [lastObject2 sectionsWithItemChanges];
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 3221225472;
      v76[2] = __97__PXSectionedDataSourceChangeDetails_debug_assertValidChangeDetails_fromDataSource_toDataSource___block_invoke;
      v76[3] = &unk_1E7BB8608;
      v79 = v68;
      v80 = selfCopy;
      v77 = v74;
      v78 = lastObject2;
      currentHandler = lastObject2;
      [sectionsWithItemChanges enumerateIndexesUsingBlock:v76];

LABEL_73:
      v12 = v74;
    }
  }

LABEL_75:
}

void __97__PXSectionedDataSourceChangeDetails_debug_assertValidChangeDetails_fromDataSource_toDataSource___block_invoke(uint64_t a1, unint64_t a2)
{
  if ([*(a1 + 32) numberOfSections] <= a2)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    [v5 handleFailureInMethod:*(a1 + 48) object:*(a1 + 56) file:@"PXSectionedDataSourceChangeDetails.m" lineNumber:640 description:{@"Invalid parameter not satisfying: %@", @"section < toDataSource.numberOfSections"}];
  }

  v7 = [*(a1 + 40) changedItemsInSection:a2];
  if ([v7 count])
  {
    v4 = [v7 lastIndex];
    if (v4 >= [*(a1 + 32) numberOfItemsInSection:a2])
    {
      v6 = [MEMORY[0x1E696AAA8] currentHandler];
      [v6 handleFailureInMethod:*(a1 + 48) object:*(a1 + 56) file:@"PXSectionedDataSourceChangeDetails.m" lineNumber:642 description:{@"Invalid parameter not satisfying: %@", @"changedItems.count == 0 || changedItems.lastIndex < [toDataSource numberOfItemsInSection:section]"}];
    }
  }
}

+ (BOOL)changeDetailsAreOnlyInsertionsOrOnlyRemovalsAtEnd:(id)end fromDataSource:(id)source toDataSource:(id)dataSource
{
  v29[1] = *MEMORY[0x1E69E9840];
  sourceCopy = source;
  dataSourceCopy = dataSource;
  endCopy = end;
  if ([endCopy count] >= 2)
  {
    firstObject = [PXSectionedChangeDetailsCoalescer changeDetailsByCoalescingChangeDetails:endCopy];

    v29[0] = firstObject;
    sectionChanges = [MEMORY[0x1E695DEC8] arrayWithObjects:v29 count:1];
    v13 = [self changeDetailsAreOnlyInsertionsOrOnlyRemovalsAtEnd:sectionChanges fromDataSource:sourceCopy toDataSource:dataSourceCopy];
LABEL_17:

    goto LABEL_18;
  }

  firstObject = [endCopy firstObject];

  if ([firstObject hasAnyInsertionsRemovalsOrMoves])
  {
    sectionChanges = [firstObject sectionChanges];
    if ([sectionChanges hasIncrementalChanges] && (objc_msgSend(sectionChanges, "hasMoves") & 1) == 0)
    {
      v28 = 0;
      if (([sectionChanges hasAnyInsertionsRemovalsOrMoves] & 1) == 0)
      {
        numberOfSections = [dataSourceCopy numberOfSections];
        goto LABEL_15;
      }

      if ([sectionChanges isOnlyInsertionAtEnd:&v28 + 1 orRemovalAtEnd:&v28 countBeforeChange:objc_msgSend(sourceCopy countAfterChange:{"numberOfSections"), objc_msgSend(dataSourceCopy, "numberOfSections")}])
      {
        if (HIBYTE(v28) == 1)
        {
          insertedIndexes = [sectionChanges insertedIndexes];
LABEL_14:
          v16 = insertedIndexes;
          numberOfSections = [insertedIndexes firstIndex];

LABEL_15:
          if (numberOfSections != 0x7FFFFFFFFFFFFFFFLL)
          {
            v18 = objc_alloc_init(MEMORY[0x1E696AD50]);
            sectionsWithItemChanges = [firstObject sectionsWithItemChanges];
            v25[0] = MEMORY[0x1E69E9820];
            v25[1] = 3221225472;
            v25[2] = __116__PXSectionedDataSourceChangeDetails_changeDetailsAreOnlyInsertionsOrOnlyRemovalsAtEnd_fromDataSource_toDataSource___block_invoke;
            v25[3] = &unk_1E7BB85E0;
            v20 = firstObject;
            v26 = v20;
            v21 = v18;
            v27 = v21;
            [sectionsWithItemChanges enumerateIndexesUsingBlock:v25];

            if ([v21 count])
            {
              if ([v21 px_isSingleRangeWithMax:numberOfSections] && objc_msgSend(v21, "count") == 1)
              {
                firstIndex = [v21 firstIndex];
                v23 = [v20 itemChangesInSection:firstIndex];
                v24 = 0;
                v13 = (![v23 hasAnyInsertionsRemovalsOrMoves] || objc_msgSend(v23, "isOnlyInsertionAtEnd:orRemovalAtEnd:countBeforeChange:countAfterChange:", &v24 + 1, &v24, objc_msgSend(sourceCopy, "numberOfItemsInSection:", firstIndex), objc_msgSend(dataSourceCopy, "numberOfItemsInSection:", firstIndex)) && ((v24 & 0x100) == 0 || (v28 & 1) == 0)) && (v24 != 1 || (v28 & 0x100) == 0);
              }

              else
              {
                v13 = 0;
              }
            }

            else
            {
              v13 = 1;
            }

            goto LABEL_17;
          }

          goto LABEL_16;
        }

        if (v28 == 1)
        {
          insertedIndexes = [sectionChanges removedIndexes];
          goto LABEL_14;
        }
      }
    }

LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  v13 = 0;
LABEL_18:

  return v13;
}

void __116__PXSectionedDataSourceChangeDetails_changeDetailsAreOnlyInsertionsOrOnlyRemovalsAtEnd_fromDataSource_toDataSource___block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = [*(a1 + 32) itemChangesInSection:a2];
  v5 = [v4 hasAnyInsertionsRemovalsOrMoves];

  if (v5)
  {
    v6 = *(a1 + 40);

    [v6 addIndex:a2];
  }
}

+ (PXSectionedDataSourceChangeDetails)changeDetailsWithNoChangesFromDataSourceIdentifier:(int64_t)identifier toDataSourceIdentifier:(int64_t)sourceIdentifier
{
  v6 = [self alloc];
  v7 = +[PXArrayChangeDetails changeDetailsWithNoChanges];
  v8 = [v6 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:sourceIdentifier sectionChanges:v7 itemChangeDetailsBySection:0 subitemChangeDetailsByItemBySection:0];

  return v8;
}

+ (PXSectionedDataSourceChangeDetails)changeDetailsWithoutIncrementalChangesFromDataSourceIdentifier:(int64_t)identifier toDataSourceIdentifier:(int64_t)sourceIdentifier
{
  v6 = [self alloc];
  v7 = +[PXArrayChangeDetails changeDetailsWithNoIncrementalChanges];
  v8 = [v6 initWithFromDataSourceIdentifier:identifier toDataSourceIdentifier:sourceIdentifier sectionChanges:v7 itemChangeDetailsBySection:0 subitemChangeDetailsByItemBySection:0];

  return v8;
}

+ (BOOL)changesHaveAnyInsertionsRemovalsOrMoves:(id)moves
{
  v13 = *MEMORY[0x1E69E9840];
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  movesCopy = moves;
  v4 = [movesCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = *v9;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(movesCopy);
        }

        if ([*(*(&v8 + 1) + 8 * i) hasAnyInsertionsRemovalsOrMoves])
        {
          LOBYTE(v4) = 1;
          goto LABEL_11;
        }
      }

      v4 = [movesCopy countByEnumeratingWithState:&v8 objects:v12 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  return v4;
}

+ (id)indexPathSetAfterRevertingChanges:(id)changes fromIndexPathSet:(id)set hasIncrementalChanges:(BOOL *)incrementalChanges
{
  changesCopy = changes;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__16665;
  v20 = __Block_byref_object_dispose__16666;
  setCopy = set;
  v21 = setCopy;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = [changesCopy count] != 0;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __111__PXSectionedDataSourceChangeDetails_indexPathSetAfterRevertingChanges_fromIndexPathSet_hasIncrementalChanges___block_invoke;
  v11[3] = &unk_1E7BB8450;
  v11[4] = &v16;
  v11[5] = &v12;
  [changesCopy enumerateObjectsWithOptions:2 usingBlock:v11];
  if (incrementalChanges)
  {
    *incrementalChanges = *(v13 + 24);
  }

  v9 = v17[5];
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);

  return v9;
}

void __111__PXSectionedDataSourceChangeDetails_indexPathSetAfterRevertingChanges_fromIndexPathSet_hasIncrementalChanges___block_invoke(uint64_t a1, void *a2)
{
  v6 = 0;
  v3 = [a2 indexPathSetAfterRevertingChangesFromIndexPathSet:*(*(*(a1 + 32) + 8) + 40) hasIncrementalChanges:&v6];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  *(*(*(a1 + 40) + 8) + 24) &= v6;
}

+ (id)indexPathSetAfterApplyingChanges:(id)changes toIndexPathSet:(id)set hasIncrementalChanges:(BOOL *)incrementalChanges
{
  v25 = *MEMORY[0x1E69E9840];
  changesCopy = changes;
  setCopy = set;
  v20 = 0u;
  v21 = 0u;
  v9 = [changesCopy count] != 0;
  v22 = 0u;
  v23 = 0u;
  v10 = changesCopy;
  v11 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v21;
    v14 = setCopy;
    do
    {
      v15 = 0;
      v16 = v14;
      do
      {
        if (*v21 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v17 = *(*(&v20 + 1) + 8 * v15);
        v19 = 0;
        v14 = [v17 indexPathSetAfterApplyingChangesToIndexPathSet:v16 hasIncrementalChanges:&v19];

        v9 &= v19;
        ++v15;
        v16 = v14;
      }

      while (v12 != v15);
      v12 = [v10 countByEnumeratingWithState:&v20 objects:v24 count:16];
    }

    while (v12);
  }

  else
  {
    v14 = setCopy;
  }

  if (incrementalChanges)
  {
    *incrementalChanges = v9 & 1;
  }

  return v14;
}

+ (PXSimpleIndexPath)indexPathAfterRevertingChanges:(SEL)changes fromIndexPath:(id)path hasIncrementalChanges:(PXSimpleIndexPath *)incrementalChanges objectChanged:(BOOL *)changed changedProperties:(BOOL *)properties
{
  pathCopy = path;
  v14 = a8;
  v32 = 0;
  v33 = &v32;
  v34 = 0x4010000000;
  v35 = "";
  v15 = *&incrementalChanges->item;
  v36 = *&incrementalChanges->dataSourceIdentifier;
  v37 = v15;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = [pathCopy count] != 0;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __137__PXSectionedDataSourceChangeDetails_indexPathAfterRevertingChanges_fromIndexPath_hasIncrementalChanges_objectChanged_changedProperties___block_invoke;
  v19[3] = &unk_1E7BB8428;
  v21 = &v32;
  v16 = v14;
  v20 = v16;
  v22 = &v28;
  v23 = &v24;
  [pathCopy enumerateObjectsWithOptions:2 usingBlock:v19];
  if (properties)
  {
    *properties = *(v29 + 24);
  }

  if (changed)
  {
    *changed = *(v25 + 24);
  }

  v17 = *(v33 + 3);
  *&retstr->dataSourceIdentifier = *(v33 + 2);
  *&retstr->item = v17;

  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);

  return result;
}

double __137__PXSectionedDataSourceChangeDetails_indexPathAfterRevertingChanges_fromIndexPath_hasIncrementalChanges_objectChanged_changedProperties___block_invoke(void *a1, void *a2)
{
  v12 = 0;
  v3 = a1[4];
  v4 = *(a1[5] + 8);
  v5 = *(v4 + 48);
  v9[0] = *(v4 + 32);
  v9[1] = v5;
  [a2 indexPathAfterRevertingChangesFromIndexPath:v9 hasIncrementalChanges:&v12 objectChanged:&v12 + 1 changedProperties:v3];
  v6 = *(a1[5] + 8);
  result = *&v10;
  v8 = v11;
  *(v6 + 32) = v10;
  *(v6 + 48) = v8;
  *(*(a1[6] + 8) + 24) = (*(*(a1[6] + 8) + 24) | HIBYTE(v12)) & 1;
  *(*(a1[7] + 8) + 24) &= v12;
  return result;
}

+ (PXSimpleIndexPath)indexPathAfterRevertingChanges:(SEL)changes fromIndexPath:(id)path hasIncrementalChanges:(PXSimpleIndexPath *)incrementalChanges objectChanged:(BOOL *)changed
{
  v7 = *&incrementalChanges->item;
  v9[0] = *&incrementalChanges->dataSourceIdentifier;
  v9[1] = v7;
  return [a2 indexPathAfterRevertingChanges:path fromIndexPath:v9 hasIncrementalChanges:changed objectChanged:a7 changedProperties:0];
}

+ (PXSimpleIndexPath)indexPathAfterApplyingChanges:(SEL)changes toIndexPath:(id)path hasIncrementalChanges:(PXSimpleIndexPath *)incrementalChanges objectChanged:(BOOL *)changed changedProperties:(BOOL *)properties
{
  v38 = *MEMORY[0x1E69E9840];
  pathCopy = path;
  v14 = a8;
  v15 = *&incrementalChanges->item;
  *&retstr->dataSourceIdentifier = *&incrementalChanges->dataSourceIdentifier;
  *&retstr->item = v15;
  v33 = 0u;
  v34 = 0u;
  v16 = [pathCopy count] != 0;
  v35 = 0u;
  v36 = 0u;
  v17 = pathCopy;
  v18 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v34;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v34 != v21)
        {
          objc_enumerationMutation(v17);
        }

        v23 = *(*(&v33 + 1) + 8 * i);
        v32 = 0;
        if (v23)
        {
          v24 = *&retstr->item;
          v29[0] = *&retstr->dataSourceIdentifier;
          v29[1] = v24;
          [v23 indexPathAfterApplyingChangesToIndexPath:v29 hasIncrementalChanges:&v32 objectChanged:&v32 + 1 changedProperties:v14];
          v25 = v32;
          v26 = HIBYTE(v32);
        }

        else
        {
          v25 = 0;
          v26 = 0;
          v30 = 0u;
          v31 = 0u;
        }

        v27 = v31;
        *&retstr->dataSourceIdentifier = v30;
        *&retstr->item = v27;
        v20 |= v26;
        v16 &= v25;
      }

      v19 = [v17 countByEnumeratingWithState:&v33 objects:v37 count:16];
    }

    while (v19);
  }

  else
  {
    v20 = 0;
  }

  if (properties)
  {
    *properties = v20 & 1;
  }

  if (changed)
  {
    *changed = v16 & 1;
  }

  return result;
}

+ (PXSimpleIndexPath)indexPathAfterApplyingChanges:(SEL)changes toIndexPath:(id)path hasIncrementalChanges:(PXSimpleIndexPath *)incrementalChanges objectChanged:(BOOL *)changed
{
  v7 = *&incrementalChanges->item;
  v9[0] = *&incrementalChanges->dataSourceIdentifier;
  v9[1] = v7;
  return [a2 indexPathAfterApplyingChanges:path toIndexPath:v9 hasIncrementalChanges:changed objectChanged:a7 changedProperties:0];
}

@end