@interface PXIndexPathSet
+ (id)indexPathSet;
+ (id)indexPathSetWithIndexPath:(PXSimpleIndexPath *)a3;
+ (id)indexPathSetWithItemIndexPaths:(id)a3 dataSourceIdentifier:(int64_t)a4;
+ (id)indexPathSetWithItemIndexes:(id)a3 dataSourceIdentifier:(int64_t)a4 section:(int64_t)a5;
+ (id)indexPathSetWithSectionIndexes:(id)a3 dataSourceIdentifier:(int64_t)a4;
+ (id)indexPathSetWithSubitemIndexes:(id)a3 dataSourceIdentifier:(int64_t)a4 section:(int64_t)a5 item:(int64_t)a6;
- (BOOL)containsIndexPath:(PXSimpleIndexPath *)a3;
- (BOOL)intersectsSet:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isSupersetOfSet:(id)a3;
- (PXIndexPathSet)init;
- (PXSimpleIndexPath)anyIndexPath;
- (PXSimpleIndexPath)anyItemIndexPath;
- (PXSimpleIndexPath)anySectionIndexPath;
- (PXSimpleIndexPath)anySubitemIndexPath;
- (PXSimpleIndexPath)firstItemIndexPathForDataSourceIdentifier:(SEL)a3;
- (PXSimpleIndexPath)indexPathGreaterThanIndexPath:(SEL)a3;
- (PXSimpleIndexPath)indexPathLessThanIndexPath:(SEL)a3;
- (PXSimpleIndexPath)lastItemIndexPathForDataSourceIdentifier:(SEL)a3;
- (id)description;
- (id)indexPathSetByFilteringAndReplacingDataSourceIdentifier:(int64_t)a3 withDataSourceIdentifier:(int64_t)a4;
- (id)itemIndexSetForDataSourceIdentifier:(int64_t)a3 section:(int64_t)a4;
- (id)itemsWithSubitemsForDataSourceIdentifier:(int64_t)a3 section:(int64_t)a4;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (id)sectionIndexSetForDataSourceIdentifier:(int64_t)a3;
- (id)sectionsWithItemsForDataSourceIdentifier:(int64_t)a3;
- (id)subitemIndexSetForDataSourceIdentifier:(int64_t)a3 section:(int64_t)a4 item:(int64_t)a5;
- (int64_t)count;
- (int64_t)itemCount;
- (int64_t)sectionCount;
- (int64_t)subitemCount;
- (void)enumerateAllIndexPathsUsingBlock:(id)a3;
- (void)enumerateDataSourceIdentifiers:(id)a3;
- (void)enumerateItemIndexPathsUsingBlock:(id)a3;
- (void)enumerateItemIndexSetsUsingBlock:(id)a3;
- (void)enumerateSectionIndexPathsUsingBlock:(id)a3;
- (void)enumerateSectionIndexSetsUsingBlock:(id)a3;
- (void)enumerateSubitemIndexPathsUsingBlock:(id)a3;
- (void)enumerateSubitemIndexSetsUsingBlock:(id)a3;
@end

@implementation PXIndexPathSet

+ (id)indexPathSet
{
  v2 = objc_alloc_init(a1);

  return v2;
}

- (PXIndexPathSet)init
{
  v14.receiver = self;
  v14.super_class = PXIndexPathSet;
  v2 = [(PXIndexPathSet *)&v14 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
    sectionIndexesByDataSourceIdentifier = v2->__sectionIndexesByDataSourceIdentifier;
    v2->__sectionIndexesByDataSourceIdentifier = v3;

    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    indexesForSectionsWithItemsByDataSourceIdentifier = v2->__indexesForSectionsWithItemsByDataSourceIdentifier;
    v2->__indexesForSectionsWithItemsByDataSourceIdentifier = v5;

    v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
    itemIndexesBySectionByDataSourceIdentifier = v2->__itemIndexesBySectionByDataSourceIdentifier;
    v2->__itemIndexesBySectionByDataSourceIdentifier = v7;

    v9 = objc_alloc_init(MEMORY[0x1E695DF90]);
    indexesForItemsWithSubitemsBySectionByDataSourceIdentifier = v2->__indexesForItemsWithSubitemsBySectionByDataSourceIdentifier;
    v2->__indexesForItemsWithSubitemsBySectionByDataSourceIdentifier = v9;

    v11 = objc_alloc_init(MEMORY[0x1E695DF90]);
    subitemIndexesByItemBySectionByDataSourceIdentifier = v2->__subitemIndexesByItemBySectionByDataSourceIdentifier;
    v2->__subitemIndexesByItemBySectionByDataSourceIdentifier = v11;
  }

  return v2;
}

- (int64_t)count
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __23__PXIndexPathSet_count__block_invoke;
  v7[3] = &unk_1E7BB6040;
  v7[4] = &v8;
  [(PXIndexPathSet *)self enumerateSectionIndexSetsUsingBlock:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __23__PXIndexPathSet_count__block_invoke_2;
  v6[3] = &unk_1E7BB6068;
  v6[4] = &v8;
  [(PXIndexPathSet *)self enumerateItemIndexSetsUsingBlock:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __23__PXIndexPathSet_count__block_invoke_3;
  v5[3] = &unk_1E7BB5920;
  v5[4] = &v8;
  [(PXIndexPathSet *)self enumerateSubitemIndexSetsUsingBlock:v5];
  v3 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v3;
}

- (int64_t)itemCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __27__PXIndexPathSet_itemCount__block_invoke;
  v4[3] = &unk_1E7BB6068;
  v4[4] = &v5;
  [(PXIndexPathSet *)self enumerateItemIndexSetsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v7.receiver = self;
  v7.super_class = PXIndexPathSet;
  v4 = [(PXIndexPathSet *)&v7 description];
  v5 = [v3 stringWithFormat:@"<%@ sectionIndexPaths=%@, itemIndexPaths=%@, subitemIndexPaths=%@>", v4, self->__sectionIndexesByDataSourceIdentifier, self->__itemIndexesBySectionByDataSourceIdentifier, self->__subitemIndexesByItemBySectionByDataSourceIdentifier];

  return v5;
}

- (id)indexPathSetByFilteringAndReplacingDataSourceIdentifier:(int64_t)a3 withDataSourceIdentifier:(int64_t)a4
{
  v7 = objc_alloc_init(PXMutableIndexPathSet);
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __99__PXIndexPathSet_indexPathSetByFilteringAndReplacingDataSourceIdentifier_withDataSourceIdentifier___block_invoke;
  v22[3] = &unk_1E7BB5B50;
  v24 = a3;
  v8 = v7;
  v23 = v8;
  v25 = a4;
  [(PXIndexPathSet *)self enumerateSectionIndexSetsUsingBlock:v22];
  v18[0] = MEMORY[0x1E69E9820];
  v18[1] = 3221225472;
  v18[2] = __99__PXIndexPathSet_indexPathSetByFilteringAndReplacingDataSourceIdentifier_withDataSourceIdentifier___block_invoke_3;
  v18[3] = &unk_1E7BB5B78;
  v20 = a3;
  v9 = v8;
  v19 = v9;
  v21 = a4;
  [(PXIndexPathSet *)self enumerateItemIndexSetsUsingBlock:v18];
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __99__PXIndexPathSet_indexPathSetByFilteringAndReplacingDataSourceIdentifier_withDataSourceIdentifier___block_invoke_5;
  v14[3] = &unk_1E7BB5BA0;
  v16 = a3;
  v10 = v9;
  v15 = v10;
  v17 = a4;
  [(PXIndexPathSet *)self enumerateSubitemIndexSetsUsingBlock:v14];
  v11 = v15;
  v12 = v10;

  return v10;
}

void __99__PXIndexPathSet_indexPathSetByFilteringAndReplacingDataSourceIdentifier_withDataSourceIdentifier___block_invoke(void *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = v5;
  if (a1[5] == a2)
  {
    v7 = a1[4];
    v8 = a1[6];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __99__PXIndexPathSet_indexPathSetByFilteringAndReplacingDataSourceIdentifier_withDataSourceIdentifier___block_invoke_2;
    v9[3] = &unk_1E7BB58D0;
    v10 = v5;
    [v7 modifySectionIndexSetForDataSourceIdentifier:v8 usingBlock:v9];
  }
}

void __99__PXIndexPathSet_indexPathSetByFilteringAndReplacingDataSourceIdentifier_withDataSourceIdentifier___block_invoke_3(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = v7;
  if (a1[5] == a2)
  {
    v9 = a1[4];
    v10 = a1[6];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __99__PXIndexPathSet_indexPathSetByFilteringAndReplacingDataSourceIdentifier_withDataSourceIdentifier___block_invoke_4;
    v11[3] = &unk_1E7BB58D0;
    v12 = v7;
    [v9 modifyItemIndexSetForDataSourceIdentifier:v10 section:a3 usingBlock:v11];
  }
}

void __99__PXIndexPathSet_indexPathSetByFilteringAndReplacingDataSourceIdentifier_withDataSourceIdentifier___block_invoke_5(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = v9;
  if (a1[5] == a2)
  {
    v11 = a1[4];
    v12 = a1[6];
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = __99__PXIndexPathSet_indexPathSetByFilteringAndReplacingDataSourceIdentifier_withDataSourceIdentifier___block_invoke_6;
    v13[3] = &unk_1E7BB58D0;
    v14 = v9;
    [v11 modifySubitemIndexSetForDataSourceIdentifier:v12 section:a3 item:a4 usingBlock:v13];
  }
}

- (PXSimpleIndexPath)indexPathLessThanIndexPath:(SEL)a3
{
  v41 = *MEMORY[0x1E69E9840];
  *retstr = *PXSimpleIndexPathNull;
  dataSourceIdentifier = a4->dataSourceIdentifier;
  if (!a4->dataSourceIdentifier)
  {
    return self;
  }

  v8 = self;
  item = a4->item;
  if (a4->section != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (item == 0x7FFFFFFFFFFFFFFFLL)
    {
      section = self->section;
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:a4->dataSourceIdentifier];
      v35 = [section objectForKeyedSubscript:v12];

      if (v35)
      {
        v13 = [v35 indexLessThanIndex:a4->section];
        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          retstr->dataSourceIdentifier = dataSourceIdentifier;
          retstr->section = v13;
          v14.f64[0] = NAN;
          v14.f64[1] = NAN;
          *&retstr->item = vnegq_f64(v14);
        }
      }

      return MEMORY[0x1EEE66BB8]();
    }

    subitem = a4->subitem;
    goto LABEL_14;
  }

  subitem = a4->subitem;
  if (item != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_14:
    if (subitem != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_32;
    }

    v15 = self->subitem;
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:a4->dataSourceIdentifier];
    v17 = [v15 objectForKeyedSubscript:v16];

    v18 = [MEMORY[0x1E696AD98] numberWithInteger:a4->section];
    v19 = [v17 objectForKeyedSubscript:v18];

    if (v19 && (v20 = [v19 indexLessThanIndex:a4->item], v20 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v32 = a4->section;
      retstr->dataSourceIdentifier = dataSourceIdentifier;
      retstr->section = v32;
      retstr->item = v20;
      retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v22 = [v17 allKeys];
      v23 = [v22 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v37;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v37 != v25)
            {
              objc_enumerationMutation(v22);
            }

            [v21 addIndex:{objc_msgSend(*(*(&v36 + 1) + 8 * i), "unsignedIntegerValue")}];
          }

          v24 = [v22 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v24);
      }

      v27 = [v21 indexLessThanIndex:a4->section];
      if (v27 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = v27;
        v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
        v30 = [v17 objectForKeyedSubscript:v29];

        v31 = [v30 lastIndex];
        if (v31 != 0x7FFFFFFFFFFFFFFFLL)
        {
          retstr->dataSourceIdentifier = dataSourceIdentifier;
          retstr->section = v28;
          retstr->item = v31;
          retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }

    return self;
  }

  if (subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_32:
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = NSStringFromSelector(a3);
    [v33 handleFailureInMethod:a3 object:v8 file:@"PXIndexPathSet.m" lineNumber:483 description:{@"%@ not implementd for subitems", v34}];

    abort();
  }

  return self;
}

- (PXSimpleIndexPath)indexPathGreaterThanIndexPath:(SEL)a3
{
  v41 = *MEMORY[0x1E69E9840];
  *retstr = *PXSimpleIndexPathNull;
  dataSourceIdentifier = a4->dataSourceIdentifier;
  if (!a4->dataSourceIdentifier)
  {
    return self;
  }

  v8 = self;
  item = a4->item;
  if (a4->section != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (item == 0x7FFFFFFFFFFFFFFFLL)
    {
      section = self->section;
      v12 = [MEMORY[0x1E696AD98] numberWithInteger:a4->dataSourceIdentifier];
      v35 = [section objectForKeyedSubscript:v12];

      if (v35)
      {
        v13 = [v35 indexGreaterThanIndex:a4->section];
        if (v13 != 0x7FFFFFFFFFFFFFFFLL)
        {
          retstr->dataSourceIdentifier = dataSourceIdentifier;
          retstr->section = v13;
          v14.f64[0] = NAN;
          v14.f64[1] = NAN;
          *&retstr->item = vnegq_f64(v14);
        }
      }

      return MEMORY[0x1EEE66BB8]();
    }

    subitem = a4->subitem;
    goto LABEL_14;
  }

  subitem = a4->subitem;
  if (item != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_14:
    if (subitem != 0x7FFFFFFFFFFFFFFFLL)
    {
      goto LABEL_32;
    }

    v15 = self->subitem;
    v16 = [MEMORY[0x1E696AD98] numberWithInteger:a4->dataSourceIdentifier];
    v17 = [v15 objectForKeyedSubscript:v16];

    v18 = [MEMORY[0x1E696AD98] numberWithInteger:a4->section];
    v19 = [v17 objectForKeyedSubscript:v18];

    if (v19 && (v20 = [v19 indexGreaterThanIndex:a4->item], v20 != 0x7FFFFFFFFFFFFFFFLL))
    {
      v32 = a4->section;
      retstr->dataSourceIdentifier = dataSourceIdentifier;
      retstr->section = v32;
      retstr->item = v20;
      retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = objc_alloc_init(MEMORY[0x1E696AD50]);
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v22 = [v17 allKeys];
      v23 = [v22 countByEnumeratingWithState:&v36 objects:v40 count:16];
      if (v23)
      {
        v24 = v23;
        v25 = *v37;
        do
        {
          for (i = 0; i != v24; ++i)
          {
            if (*v37 != v25)
            {
              objc_enumerationMutation(v22);
            }

            [v21 addIndex:{objc_msgSend(*(*(&v36 + 1) + 8 * i), "unsignedIntegerValue")}];
          }

          v24 = [v22 countByEnumeratingWithState:&v36 objects:v40 count:16];
        }

        while (v24);
      }

      v27 = [v21 indexGreaterThanIndex:a4->section];
      if (v27 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v28 = v27;
        v29 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v27];
        v30 = [v17 objectForKeyedSubscript:v29];

        v31 = [v30 firstIndex];
        if (v31 != 0x7FFFFFFFFFFFFFFFLL)
        {
          retstr->dataSourceIdentifier = dataSourceIdentifier;
          retstr->section = v28;
          retstr->item = v31;
          retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }

    return self;
  }

  if (subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_32:
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    v34 = NSStringFromSelector(a3);
    [v33 handleFailureInMethod:a3 object:v8 file:@"PXIndexPathSet.m" lineNumber:446 description:{@"%@ not implementd for subitems", v34}];

    abort();
  }

  return self;
}

- (PXSimpleIndexPath)lastItemIndexPathForDataSourceIdentifier:(SEL)a3
{
  *retstr = *PXSimpleIndexPathNull;
  v15 = [(PXIndexPathSet *)self sectionsWithItemsForDataSourceIdentifier:?];
  if ([v15 count])
  {
    itemIndexesBySectionByDataSourceIdentifier = self->__itemIndexesBySectionByDataSourceIdentifier;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v9 = [(NSMutableDictionary *)itemIndexesBySectionByDataSourceIdentifier objectForKeyedSubscript:v8];

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v15, "lastIndex")}];
    v11 = [v9 objectForKeyedSubscript:v10];

    if ([v11 count])
    {
      v12 = [v15 lastIndex];
      v13 = [v11 lastIndex];
      retstr->dataSourceIdentifier = a4;
      retstr->section = v12;
      retstr->item = v13;
      retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (PXSimpleIndexPath)firstItemIndexPathForDataSourceIdentifier:(SEL)a3
{
  *retstr = *PXSimpleIndexPathNull;
  v15 = [(PXIndexPathSet *)self sectionsWithItemsForDataSourceIdentifier:?];
  if ([v15 count])
  {
    itemIndexesBySectionByDataSourceIdentifier = self->__itemIndexesBySectionByDataSourceIdentifier;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
    v9 = [(NSMutableDictionary *)itemIndexesBySectionByDataSourceIdentifier objectForKeyedSubscript:v8];

    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v15, "firstIndex")}];
    v11 = [v9 objectForKeyedSubscript:v10];

    if ([v11 count])
    {
      v12 = [v15 firstIndex];
      v13 = [v11 firstIndex];
      retstr->dataSourceIdentifier = a4;
      retstr->section = v12;
      retstr->item = v13;
      retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  return result;
}

- (void)enumerateDataSourceIdentifiers:(id)a3
{
  v36 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v32 = 0;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v5 = [(NSMutableDictionary *)self->__sectionIndexesByDataSourceIdentifier keyEnumerator];
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v35 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v29 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v4[2](v4, [*(*(&v28 + 1) + 8 * v9) unsignedIntValue], &v32);
      if (v32)
      {
        break;
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v28 objects:v35 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  if ((v32 & 1) == 0)
  {
    v26 = 0u;
    v27 = 0u;
    v24 = 0u;
    v25 = 0u;
    v10 = [(NSMutableDictionary *)self->__itemIndexesBySectionByDataSourceIdentifier keyEnumerator];
    v11 = [v10 countByEnumeratingWithState:&v24 objects:v34 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v25;
LABEL_12:
      v14 = 0;
      while (1)
      {
        if (*v25 != v13)
        {
          objc_enumerationMutation(v10);
        }

        v4[2](v4, [*(*(&v24 + 1) + 8 * v14) unsignedIntValue], &v32);
        if (v32)
        {
          break;
        }

        if (v12 == ++v14)
        {
          v12 = [v10 countByEnumeratingWithState:&v24 objects:v34 count:16];
          if (v12)
          {
            goto LABEL_12;
          }

          break;
        }
      }
    }

    if ((v32 & 1) == 0)
    {
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v15 = [(NSMutableDictionary *)self->__subitemIndexesByItemBySectionByDataSourceIdentifier keyEnumerator];
      v16 = [v15 countByEnumeratingWithState:&v20 objects:v33 count:16];
      if (v16)
      {
        v17 = v16;
        v18 = *v21;
LABEL_21:
        v19 = 0;
        while (1)
        {
          if (*v21 != v18)
          {
            objc_enumerationMutation(v15);
          }

          v4[2](v4, [*(*(&v20 + 1) + 8 * v19) unsignedIntValue], &v32);
          if (v32)
          {
            break;
          }

          if (v17 == ++v19)
          {
            v17 = [v15 countByEnumeratingWithState:&v20 objects:v33 count:16];
            if (v17)
            {
              goto LABEL_21;
            }

            break;
          }
        }
      }
    }
  }
}

- (void)enumerateAllIndexPathsUsingBlock:(id)a3
{
  v4 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x2020000000;
  v19 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __51__PXIndexPathSet_enumerateAllIndexPathsUsingBlock___block_invoke;
  v13[3] = &unk_1E7BB5B28;
  v5 = v4;
  v14 = v5;
  v15 = &v16;
  [(PXIndexPathSet *)self enumerateSectionIndexPathsUsingBlock:v13];
  if ((v17[3] & 1) == 0)
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __51__PXIndexPathSet_enumerateAllIndexPathsUsingBlock___block_invoke_2;
    v10[3] = &unk_1E7BB5B28;
    v6 = v5;
    v11 = v6;
    v12 = &v16;
    [(PXIndexPathSet *)self enumerateItemIndexPathsUsingBlock:v10];

    if ((v17[3] & 1) == 0)
    {
      v7[0] = MEMORY[0x1E69E9820];
      v7[1] = 3221225472;
      v7[2] = __51__PXIndexPathSet_enumerateAllIndexPathsUsingBlock___block_invoke_3;
      v7[3] = &unk_1E7BB5B28;
      v8 = v6;
      v9 = &v16;
      [(PXIndexPathSet *)self enumerateSubitemIndexPathsUsingBlock:v7];
    }
  }

  _Block_object_dispose(&v16, 8);
}

uint64_t __51__PXIndexPathSet_enumerateAllIndexPathsUsingBlock___block_invoke(uint64_t a1, _OWORD *a2, _BYTE *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v6 + 16);
  v9 = a2[1];
  v11[0] = *a2;
  v11[1] = v9;
  result = v8(v6, v11, v7 + 24, a4);
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t __51__PXIndexPathSet_enumerateAllIndexPathsUsingBlock___block_invoke_2(uint64_t a1, _OWORD *a2, _BYTE *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v6 + 16);
  v9 = a2[1];
  v11[0] = *a2;
  v11[1] = v9;
  result = v8(v6, v11, v7 + 24, a4);
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

uint64_t __51__PXIndexPathSet_enumerateAllIndexPathsUsingBlock___block_invoke_3(uint64_t a1, _OWORD *a2, _BYTE *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = *(*(a1 + 40) + 8);
  v8 = *(v6 + 16);
  v9 = a2[1];
  v11[0] = *a2;
  v11[1] = v9;
  result = v8(v6, v11, v7 + 24, a4);
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (void)enumerateSubitemIndexPathsUsingBlock:(id)a3
{
  v4 = a3;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PXIndexPathSet_enumerateSubitemIndexPathsUsingBlock___block_invoke;
  v6[3] = &unk_1E7BB5B00;
  v5 = v4;
  v7 = v5;
  v8 = v9;
  [(PXIndexPathSet *)self enumerateSubitemIndexSetsUsingBlock:v6];

  _Block_object_dispose(v9, 8);
}

void __55__PXIndexPathSet_enumerateSubitemIndexPathsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, _BYTE *a6)
{
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __55__PXIndexPathSet_enumerateSubitemIndexPathsUsingBlock___block_invoke_2;
  v11[3] = &unk_1E7BB5AD8;
  v14 = a2;
  v15 = a3;
  v16 = a4;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v12 = v9;
  v13 = v10;
  [a5 enumerateIndexesUsingBlock:v11];
  *a6 = *(*(*(a1 + 40) + 8) + 24);
}

uint64_t __55__PXIndexPathSet_enumerateSubitemIndexPathsUsingBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v6 = *(a1 + 64);
  v7 = *(a1 + 32);
  v8 = *(*(a1 + 40) + 8);
  v9 = *(v7 + 16);
  v11 = *(a1 + 48);
  v12 = v6;
  v13 = a2;
  result = v9(v7, &v11, v8 + 24, a4);
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (void)enumerateItemIndexPathsUsingBlock:(id)a3
{
  v4 = a3;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __52__PXIndexPathSet_enumerateItemIndexPathsUsingBlock___block_invoke;
  v6[3] = &unk_1E7BB5AB0;
  v5 = v4;
  v7 = v5;
  v8 = v9;
  [(PXIndexPathSet *)self enumerateItemIndexSetsUsingBlock:v6];

  _Block_object_dispose(v9, 8);
}

void __52__PXIndexPathSet_enumerateItemIndexPathsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, _BYTE *a5)
{
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __52__PXIndexPathSet_enumerateItemIndexPathsUsingBlock___block_invoke_2;
  v10[3] = &unk_1E7BB5A88;
  v13 = a2;
  v14 = a3;
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v11 = v8;
  v12 = v9;
  [a4 enumerateIndexesUsingBlock:v10];
  *a5 = *(*(*(a1 + 40) + 8) + 24);
}

uint64_t __52__PXIndexPathSet_enumerateItemIndexPathsUsingBlock___block_invoke_2(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  v8 = *(*(a1 + 40) + 8);
  v10 = *(a1 + 48);
  v11 = a2;
  v12 = 0x7FFFFFFFFFFFFFFFLL;
  result = v7(v6, &v10, v8 + 24, a4);
  *a3 = *(*(*(a1 + 40) + 8) + 24);
  return result;
}

- (void)enumerateSectionIndexPathsUsingBlock:(id)a3
{
  v4 = a3;
  v9[0] = 0;
  v9[1] = v9;
  v9[2] = 0x2020000000;
  v10 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __55__PXIndexPathSet_enumerateSectionIndexPathsUsingBlock___block_invoke;
  v6[3] = &unk_1E7BB5A60;
  v5 = v4;
  v7 = v5;
  v8 = v9;
  [(PXIndexPathSet *)self enumerateSectionIndexSetsUsingBlock:v6];

  _Block_object_dispose(v9, 8);
}

void __55__PXIndexPathSet_enumerateSectionIndexPathsUsingBlock___block_invoke(uint64_t a1, uint64_t a2, void *a3, _BYTE *a4)
{
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__PXIndexPathSet_enumerateSectionIndexPathsUsingBlock___block_invoke_2;
  v9[3] = &unk_1E7BB5A38;
  v12 = a2;
  v7 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = v7;
  v11 = v8;
  [a3 enumerateIndexesUsingBlock:v9];
  *a4 = *(*(*(a1 + 40) + 8) + 24);
}

uint64_t __55__PXIndexPathSet_enumerateSectionIndexPathsUsingBlock___block_invoke_2(void *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v6 = a1[6];
  v7 = a1[4];
  v8 = *(v7 + 16);
  v9 = *(a1[5] + 8);
  v12[0] = v6;
  v12[1] = a2;
  v10.f64[0] = NAN;
  v10.f64[1] = NAN;
  v13 = vnegq_f64(v10);
  result = v8(v7, v12, v9 + 24, a4);
  *a3 = *(*(a1[5] + 8) + 24);
  return result;
}

- (id)subitemIndexSetForDataSourceIdentifier:(int64_t)a3 section:(int64_t)a4 item:(int64_t)a5
{
  subitemIndexesByItemBySectionByDataSourceIdentifier = self->__subitemIndexesByItemBySectionByDataSourceIdentifier;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v9 = [(NSMutableDictionary *)subitemIndexesByItemBySectionByDataSourceIdentifier objectForKeyedSubscript:v8];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a5];
  v13 = [v11 objectForKeyedSubscript:v12];
  v14 = [v13 copy];

  return v14;
}

- (id)itemsWithSubitemsForDataSourceIdentifier:(int64_t)a3 section:(int64_t)a4
{
  indexesForItemsWithSubitemsBySectionByDataSourceIdentifier = self->__indexesForItemsWithSubitemsBySectionByDataSourceIdentifier;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [(NSMutableDictionary *)indexesForItemsWithSubitemsBySectionByDataSourceIdentifier objectForKeyedSubscript:v6];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 copy];

  return v10;
}

- (id)itemIndexSetForDataSourceIdentifier:(int64_t)a3 section:(int64_t)a4
{
  itemIndexesBySectionByDataSourceIdentifier = self->__itemIndexesBySectionByDataSourceIdentifier;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [(NSMutableDictionary *)itemIndexesBySectionByDataSourceIdentifier objectForKeyedSubscript:v6];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v9 = [v7 objectForKeyedSubscript:v8];
  v10 = [v9 copy];

  return v10;
}

- (id)sectionsWithItemsForDataSourceIdentifier:(int64_t)a3
{
  indexesForSectionsWithItemsByDataSourceIdentifier = self->__indexesForSectionsWithItemsByDataSourceIdentifier;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)indexesForSectionsWithItemsByDataSourceIdentifier objectForKeyedSubscript:v4];
  v6 = [v5 copy];

  return v6;
}

- (id)sectionIndexSetForDataSourceIdentifier:(int64_t)a3
{
  sectionIndexesByDataSourceIdentifier = self->__sectionIndexesByDataSourceIdentifier;
  v4 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v5 = [(NSMutableDictionary *)sectionIndexesByDataSourceIdentifier objectForKeyedSubscript:v4];
  v6 = [v5 copy];

  return v6;
}

- (void)enumerateSubitemIndexSetsUsingBlock:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  subitemIndexesByItemBySectionByDataSourceIdentifier = self->__subitemIndexesByItemBySectionByDataSourceIdentifier;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__PXIndexPathSet_enumerateSubitemIndexSetsUsingBlock___block_invoke;
  v7[3] = &unk_1E7BB5A10;
  v6 = v4;
  v8 = v6;
  v9 = v10;
  [(NSMutableDictionary *)subitemIndexesByItemBySectionByDataSourceIdentifier enumerateKeysAndObjectsUsingBlock:v7];

  _Block_object_dispose(v10, 8);
}

void __54__PXIndexPathSet_enumerateSubitemIndexSetsUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = [v7 unsignedIntValue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __54__PXIndexPathSet_enumerateSubitemIndexSetsUsingBlock___block_invoke_2;
  v12[3] = &unk_1E7BB59E8;
  v10 = *(a1 + 32);
  v11 = *(a1 + 40);
  v13 = v10;
  v14 = v11;
  v15 = v9;
  [v8 enumerateKeysAndObjectsUsingBlock:v12];

  *a4 = *(*(*(a1 + 40) + 8) + 24);
}

void __54__PXIndexPathSet_enumerateSubitemIndexSetsUsingBlock___block_invoke_2(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = [a2 integerValue];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __54__PXIndexPathSet_enumerateSubitemIndexSetsUsingBlock___block_invoke_3;
  v11[3] = &unk_1E7BB59C0;
  v9 = *(a1 + 32);
  v10 = *(a1 + 40);
  v14 = *(a1 + 48);
  v15 = v8;
  v12 = v9;
  v13 = v10;
  [v7 enumerateKeysAndObjectsUsingBlock:v11];

  *a4 = *(*(*(a1 + 40) + 8) + 24);
}

void __54__PXIndexPathSet_enumerateSubitemIndexSetsUsingBlock___block_invoke_3(void *a1, void *a2, void *a3, _BYTE *a4)
{
  v8 = a2;
  v7 = a3;
  if ([v7 count])
  {
    (*(a1[4] + 16))(a1[4], a1[6], a1[7], [v8 integerValue], v7, *(a1[5] + 8) + 24);
    *a4 = *(*(a1[5] + 8) + 24);
  }
}

- (void)enumerateItemIndexSetsUsingBlock:(id)a3
{
  v4 = a3;
  v10[0] = 0;
  v10[1] = v10;
  v10[2] = 0x2020000000;
  v11 = 0;
  itemIndexesBySectionByDataSourceIdentifier = self->__itemIndexesBySectionByDataSourceIdentifier;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51__PXIndexPathSet_enumerateItemIndexSetsUsingBlock___block_invoke;
  v7[3] = &unk_1E7BB5998;
  v7[4] = self;
  v6 = v4;
  v8 = v6;
  v9 = v10;
  [(NSMutableDictionary *)itemIndexesBySectionByDataSourceIdentifier enumerateKeysAndObjectsUsingBlock:v7];

  _Block_object_dispose(v10, 8);
}

void __51__PXIndexPathSet_enumerateItemIndexSetsUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v7 = a3;
  v8 = [a2 unsignedIntValue];
  v9 = *(*(a1 + 32) + 16);
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
  v11 = [v9 objectForKeyedSubscript:v10];

  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __51__PXIndexPathSet_enumerateItemIndexSetsUsingBlock___block_invoke_2;
  v15[3] = &unk_1E7BB62B0;
  v16 = v7;
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  v17 = v12;
  v18 = v13;
  v19 = v8;
  v14 = v7;
  [v11 enumerateIndexesUsingBlock:v15];
  *a4 = *(*(*(a1 + 48) + 8) + 24);
}

void __51__PXIndexPathSet_enumerateItemIndexSetsUsingBlock___block_invoke_2(void *a1, uint64_t a2, _BYTE *a3)
{
  v5 = a1[4];
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v7 = [v5 objectForKeyedSubscript:v6];

  if ([v7 count])
  {
    (*(a1[5] + 16))();
    *a3 = *(*(a1[6] + 8) + 24);
  }
}

- (void)enumerateSectionIndexSetsUsingBlock:(id)a3
{
  v4 = a3;
  sectionIndexesByDataSourceIdentifier = self->__sectionIndexesByDataSourceIdentifier;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __54__PXIndexPathSet_enumerateSectionIndexSetsUsingBlock___block_invoke;
  v7[3] = &unk_1E7BB5970;
  v8 = v4;
  v6 = v4;
  [(NSMutableDictionary *)sectionIndexesByDataSourceIdentifier enumerateKeysAndObjectsUsingBlock:v7];
}

void __54__PXIndexPathSet_enumerateSectionIndexSetsUsingBlock___block_invoke(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v8 = a2;
  v7 = a3;
  if ([v7 count])
  {
    (*(*(a1 + 32) + 16))(*(a1 + 32), [v8 unsignedIntValue], v7, a4);
  }
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (v4 == self)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && [(NSMutableDictionary *)self->__sectionIndexesByDataSourceIdentifier isEqual:v4->__sectionIndexesByDataSourceIdentifier]&& [(NSMutableDictionary *)self->__itemIndexesBySectionByDataSourceIdentifier isEqual:v4->__itemIndexesBySectionByDataSourceIdentifier])
    {
      v5 = [(NSMutableDictionary *)self->__subitemIndexesByItemBySectionByDataSourceIdentifier isEqual:v4->__subitemIndexesByItemBySectionByDataSourceIdentifier];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (PXSimpleIndexPath)anyIndexPath
{
  v10 = 0u;
  v11 = 0u;
  result = [(PXIndexPathSet *)self anySectionIndexPath];
  if (v10)
  {
    v6 = v10;
    v7 = v11;
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    result = [(PXIndexPathSet *)self anyItemIndexPath];
    if (!v8)
    {
      *&retstr->dataSourceIdentifier = 0u;
      *&retstr->item = 0u;
      return [(PXIndexPathSet *)self anySubitemIndexPath];
    }

    v6 = v8;
    v7 = v9;
  }

  *&retstr->dataSourceIdentifier = v6;
  *&retstr->item = v7;
  return result;
}

- (PXSimpleIndexPath)anySubitemIndexPath
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x4010000000;
  v10 = "";
  v11 = *PXSimpleIndexPathNull;
  v12 = *&PXSimpleIndexPathNull[16];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__PXIndexPathSet_anySubitemIndexPath__block_invoke;
  v6[3] = &unk_1E7BB5948;
  v6[4] = &v7;
  [(PXIndexPathSet *)self enumerateSubitemIndexPathsUsingBlock:v6];
  v4 = *(v8 + 3);
  *&retstr->dataSourceIdentifier = *(v8 + 2);
  *&retstr->item = v4;
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __37__PXIndexPathSet_anySubitemIndexPath__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = *(*(a1 + 32) + 8);
  result = *a2;
  v5 = *(a2 + 16);
  *(v3 + 32) = *a2;
  *(v3 + 48) = v5;
  *a3 = 1;
  return result;
}

- (PXSimpleIndexPath)anyItemIndexPath
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x4010000000;
  v10 = "";
  v11 = *PXSimpleIndexPathNull;
  v12 = *&PXSimpleIndexPathNull[16];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __34__PXIndexPathSet_anyItemIndexPath__block_invoke;
  v6[3] = &unk_1E7BB5948;
  v6[4] = &v7;
  [(PXIndexPathSet *)self enumerateItemIndexPathsUsingBlock:v6];
  v4 = *(v8 + 3);
  *&retstr->dataSourceIdentifier = *(v8 + 2);
  *&retstr->item = v4;
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __34__PXIndexPathSet_anyItemIndexPath__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = *(*(a1 + 32) + 8);
  result = *a2;
  v5 = *(a2 + 16);
  *(v3 + 32) = *a2;
  *(v3 + 48) = v5;
  *a3 = 1;
  return result;
}

- (PXSimpleIndexPath)anySectionIndexPath
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x4010000000;
  v10 = "";
  v11 = *PXSimpleIndexPathNull;
  v12 = *&PXSimpleIndexPathNull[16];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __37__PXIndexPathSet_anySectionIndexPath__block_invoke;
  v6[3] = &unk_1E7BB5948;
  v6[4] = &v7;
  [(PXIndexPathSet *)self enumerateSectionIndexPathsUsingBlock:v6];
  v4 = *(v8 + 3);
  *&retstr->dataSourceIdentifier = *(v8 + 2);
  *&retstr->item = v4;
  _Block_object_dispose(&v7, 8);
  return result;
}

__n128 __37__PXIndexPathSet_anySectionIndexPath__block_invoke(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  v3 = *(*(a1 + 32) + 8);
  result = *a2;
  v5 = *(a2 + 16);
  *(v3 + 32) = *a2;
  *(v3 + 48) = v5;
  *a3 = 1;
  return result;
}

- (int64_t)subitemCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__PXIndexPathSet_subitemCount__block_invoke;
  v4[3] = &unk_1E7BB5920;
  v4[4] = &v5;
  [(PXIndexPathSet *)self enumerateSubitemIndexSetsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __30__PXIndexPathSet_subitemCount__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = [a5 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t __27__PXIndexPathSet_itemCount__block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = [a4 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (int64_t)sectionCount
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __30__PXIndexPathSet_sectionCount__block_invoke;
  v4[3] = &unk_1E7BB6040;
  v4[4] = &v5;
  [(PXIndexPathSet *)self enumerateSectionIndexSetsUsingBlock:v4];
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __30__PXIndexPathSet_sectionCount__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t __23__PXIndexPathSet_count__block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  result = [a3 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t __23__PXIndexPathSet_count__block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  result = [a4 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

uint64_t __23__PXIndexPathSet_count__block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = [a5 count];
  *(*(*(a1 + 32) + 8) + 24) += result;
  return result;
}

- (BOOL)isSupersetOfSet:(id)a3
{
  v4 = [a3 mutableCopy];
  [v4 minusIndexPathSet:self];
  LOBYTE(self) = [v4 count] == 0;

  return self;
}

- (BOOL)intersectsSet:(id)a3
{
  v4 = a3;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  v5 = self;
  v6 = v4;
  v7 = [(PXIndexPathSet *)v6 count];
  if (v7 >= [(PXIndexPathSet *)v5 count])
  {
    v8 = v6;
  }

  else
  {

    v8 = v5;
    v5 = v6;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __32__PXIndexPathSet_intersectsSet___block_invoke;
  v12[3] = &unk_1E7BB58F8;
  v9 = v8;
  v13 = v9;
  v14 = &v15;
  [(PXIndexPathSet *)v5 enumerateAllIndexPathsUsingBlock:v12];
  v10 = *(v16 + 24);

  _Block_object_dispose(&v15, 8);
  return v10;
}

uint64_t __32__PXIndexPathSet_intersectsSet___block_invoke(uint64_t a1, _OWORD *a2, _BYTE *a3)
{
  v5 = *(a1 + 32);
  v6 = a2[1];
  v8[0] = *a2;
  v8[1] = v6;
  result = [v5 containsIndexPath:v8];
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 1;
    *a3 = 1;
  }

  return result;
}

- (BOOL)containsIndexPath:(PXSimpleIndexPath *)a3
{
  if (!a3->dataSourceIdentifier)
  {
    return 0;
  }

  item = a3->item;
  if (a3->section != 0x7FFFFFFFFFFFFFFFLL)
  {
    if (item == 0x7FFFFFFFFFFFFFFFLL)
    {
      sectionIndexesByDataSourceIdentifier = self->__sectionIndexesByDataSourceIdentifier;
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      v9 = [(NSMutableDictionary *)sectionIndexesByDataSourceIdentifier objectForKeyedSubscript:v8];
      v6 = [v9 containsIndex:a3->section];
LABEL_13:

      return v6;
    }

    subitem = a3->subitem;
LABEL_9:
    if (subitem == 0x7FFFFFFFFFFFFFFFLL)
    {
      itemIndexesBySectionByDataSourceIdentifier = self->__itemIndexesBySectionByDataSourceIdentifier;
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:?];
      v9 = [(NSMutableDictionary *)itemIndexesBySectionByDataSourceIdentifier objectForKeyedSubscript:v8];
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3->section];
      v12 = [v9 objectForKeyedSubscript:v11];
      v6 = [v12 containsIndex:a3->item];
LABEL_12:

      goto LABEL_13;
    }

LABEL_11:
    subitemIndexesByItemBySectionByDataSourceIdentifier = self->__subitemIndexesByItemBySectionByDataSourceIdentifier;
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:?];
    v9 = [(NSMutableDictionary *)subitemIndexesByItemBySectionByDataSourceIdentifier objectForKeyedSubscript:v8];
    v11 = [MEMORY[0x1E696AD98] numberWithInteger:a3->section];
    v12 = [v9 objectForKeyedSubscript:v11];
    v14 = [MEMORY[0x1E696AD98] numberWithInteger:a3->item];
    v15 = [v12 objectForKeyedSubscript:v14];
    v6 = [v15 containsIndex:a3->subitem];

    goto LABEL_12;
  }

  subitem = a3->subitem;
  if (item != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_9;
  }

  if (subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_11;
  }

  return 0;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(PXMutableIndexPathSet);
  [(PXMutableIndexPathSet *)v4 unionIndexPathSet:self];
  return v4;
}

+ (id)indexPathSetWithSubitemIndexes:(id)a3 dataSourceIdentifier:(int64_t)a4 section:(int64_t)a5 item:(int64_t)a6
{
  v9 = a3;
  v10 = objc_alloc_init(PXMutableIndexPathSet);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __83__PXIndexPathSet_indexPathSetWithSubitemIndexes_dataSourceIdentifier_section_item___block_invoke;
  v13[3] = &unk_1E7BB58D0;
  v14 = v9;
  v11 = v9;
  [(PXMutableIndexPathSet *)v10 modifySubitemIndexSetForDataSourceIdentifier:a4 section:a5 item:a6 usingBlock:v13];

  return v10;
}

+ (id)indexPathSetWithItemIndexPaths:(id)a3 dataSourceIdentifier:(int64_t)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = objc_alloc_init(PXMutableIndexPathSet);
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v17;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v17 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v16 + 1) + 8 * i);
        v13 = [v12 px_section];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __70__PXIndexPathSet_indexPathSetWithItemIndexPaths_dataSourceIdentifier___block_invoke;
        v15[3] = &unk_1E7BB58D0;
        v15[4] = v12;
        [(PXMutableIndexPathSet *)v6 modifyItemIndexSetForDataSourceIdentifier:a4 section:v13 usingBlock:v15];
      }

      v9 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v9);
  }

  return v6;
}

void __70__PXIndexPathSet_indexPathSetWithItemIndexPaths_dataSourceIdentifier___block_invoke(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  [v3 addIndex:{objc_msgSend(v2, "px_item")}];
}

+ (id)indexPathSetWithItemIndexes:(id)a3 dataSourceIdentifier:(int64_t)a4 section:(int64_t)a5
{
  v7 = a3;
  v8 = objc_alloc_init(PXMutableIndexPathSet);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __75__PXIndexPathSet_indexPathSetWithItemIndexes_dataSourceIdentifier_section___block_invoke;
  v11[3] = &unk_1E7BB58D0;
  v12 = v7;
  v9 = v7;
  [(PXMutableIndexPathSet *)v8 modifyItemIndexSetForDataSourceIdentifier:a4 section:a5 usingBlock:v11];

  return v8;
}

+ (id)indexPathSetWithSectionIndexes:(id)a3 dataSourceIdentifier:(int64_t)a4
{
  v5 = a3;
  v6 = objc_alloc_init(PXMutableIndexPathSet);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __70__PXIndexPathSet_indexPathSetWithSectionIndexes_dataSourceIdentifier___block_invoke;
  v9[3] = &unk_1E7BB58D0;
  v10 = v5;
  v7 = v5;
  [(PXMutableIndexPathSet *)v6 modifySectionIndexSetForDataSourceIdentifier:a4 usingBlock:v9];

  return v6;
}

+ (id)indexPathSetWithIndexPath:(PXSimpleIndexPath *)a3
{
  v4 = objc_alloc_init(PXMutableIndexPathSet);
  v5 = *&a3->item;
  v7[0] = *&a3->dataSourceIdentifier;
  v7[1] = v5;
  [(PXMutableIndexPathSet *)v4 addIndexPath:v7];

  return v4;
}

@end