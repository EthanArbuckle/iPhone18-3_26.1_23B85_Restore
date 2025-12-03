@interface PXMutableIndexPathSet
- (void)addIndexPath:(PXSimpleIndexPath *)path;
- (void)minusIndexPathSet:(id)set;
- (void)modifyItemIndexSetForDataSourceIdentifier:(int64_t)identifier section:(int64_t)section usingBlock:(id)block;
- (void)modifySectionIndexSetForDataSourceIdentifier:(int64_t)identifier usingBlock:(id)block;
- (void)modifySubitemIndexSetForDataSourceIdentifier:(int64_t)identifier section:(int64_t)section item:(int64_t)item usingBlock:(id)block;
- (void)removeAllIndexPaths;
- (void)removeIndexPath:(PXSimpleIndexPath *)path;
- (void)unionIndexPathSet:(id)set;
@end

@implementation PXMutableIndexPathSet

- (void)removeAllIndexPaths
{
  _sectionIndexesByDataSourceIdentifier = [(PXIndexPathSet *)self _sectionIndexesByDataSourceIdentifier];
  [_sectionIndexesByDataSourceIdentifier removeAllObjects];

  _indexesForSectionsWithItemsByDataSourceIdentifier = [(PXIndexPathSet *)self _indexesForSectionsWithItemsByDataSourceIdentifier];
  [_indexesForSectionsWithItemsByDataSourceIdentifier removeAllObjects];

  _itemIndexesBySectionByDataSourceIdentifier = [(PXIndexPathSet *)self _itemIndexesBySectionByDataSourceIdentifier];
  [_itemIndexesBySectionByDataSourceIdentifier removeAllObjects];

  _indexesForItemsWithSubitemsBySectionByDataSourceIdentifier = [(PXIndexPathSet *)self _indexesForItemsWithSubitemsBySectionByDataSourceIdentifier];
  [_indexesForItemsWithSubitemsBySectionByDataSourceIdentifier removeAllObjects];

  _subitemIndexesByItemBySectionByDataSourceIdentifier = [(PXIndexPathSet *)self _subitemIndexesByItemBySectionByDataSourceIdentifier];
  [_subitemIndexesByItemBySectionByDataSourceIdentifier removeAllObjects];
}

- (void)modifySubitemIndexSetForDataSourceIdentifier:(int64_t)identifier section:(int64_t)section item:(int64_t)item usingBlock:(id)block
{
  blockCopy = block;
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
  _subitemIndexesByItemBySectionByDataSourceIdentifier = [(PXIndexPathSet *)self _subitemIndexesByItemBySectionByDataSourceIdentifier];
  dictionary = [_subitemIndexesByItemBySectionByDataSourceIdentifier objectForKeyedSubscript:v10];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    _subitemIndexesByItemBySectionByDataSourceIdentifier2 = [(PXIndexPathSet *)self _subitemIndexesByItemBySectionByDataSourceIdentifier];
    [_subitemIndexesByItemBySectionByDataSourceIdentifier2 setObject:dictionary forKeyedSubscript:v10];
  }

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  dictionary2 = [dictionary objectForKeyedSubscript:v14];
  if (!dictionary2)
  {
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    [dictionary setObject:dictionary2 forKeyedSubscript:v14];
  }

  v16 = [MEMORY[0x1E696AD98] numberWithInteger:item];
  indexSet = [dictionary2 objectForKeyedSubscript:v16];
  if (!indexSet)
  {
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    [dictionary2 setObject:indexSet forKeyedSubscript:v16];
  }

  blockCopy[2](blockCopy, indexSet);
  _indexesForItemsWithSubitemsBySectionByDataSourceIdentifier = [(PXIndexPathSet *)self _indexesForItemsWithSubitemsBySectionByDataSourceIdentifier];
  v19 = [_indexesForItemsWithSubitemsBySectionByDataSourceIdentifier objectForKeyedSubscript:v10];

  if (!v19)
  {
    v19 = objc_alloc_init(MEMORY[0x1E695DF90]);
    _indexesForItemsWithSubitemsBySectionByDataSourceIdentifier2 = [(PXIndexPathSet *)self _indexesForItemsWithSubitemsBySectionByDataSourceIdentifier];
    [_indexesForItemsWithSubitemsBySectionByDataSourceIdentifier2 setObject:v19 forKeyedSubscript:v10];
  }

  v21 = [v19 objectForKeyedSubscript:v14];
  if (!v21)
  {
    v21 = objc_alloc_init(MEMORY[0x1E696AD50]);
    [v19 setObject:v21 forKeyedSubscript:v14];
  }

  if ([indexSet count])
  {
    [v21 addIndex:item];
  }

  else
  {
    [v21 removeIndex:item];
  }
}

- (void)modifyItemIndexSetForDataSourceIdentifier:(int64_t)identifier section:(int64_t)section usingBlock:(id)block
{
  blockCopy = block;
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
  _itemIndexesBySectionByDataSourceIdentifier = [(PXIndexPathSet *)self _itemIndexesBySectionByDataSourceIdentifier];
  dictionary = [_itemIndexesBySectionByDataSourceIdentifier objectForKeyedSubscript:v8];

  if (!dictionary)
  {
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    _itemIndexesBySectionByDataSourceIdentifier2 = [(PXIndexPathSet *)self _itemIndexesBySectionByDataSourceIdentifier];
    [_itemIndexesBySectionByDataSourceIdentifier2 setObject:dictionary forKeyedSubscript:v8];
  }

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:section];
  indexSet = [dictionary objectForKeyedSubscript:v12];
  if (!indexSet)
  {
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    [dictionary setObject:indexSet forKeyedSubscript:v12];
  }

  blockCopy[2](blockCopy, indexSet);
  _indexesForSectionsWithItemsByDataSourceIdentifier = [(PXIndexPathSet *)self _indexesForSectionsWithItemsByDataSourceIdentifier];
  v15 = [_indexesForSectionsWithItemsByDataSourceIdentifier objectForKeyedSubscript:v8];

  if (!v15)
  {
    v15 = objc_alloc_init(MEMORY[0x1E696AD50]);
    _indexesForSectionsWithItemsByDataSourceIdentifier2 = [(PXIndexPathSet *)self _indexesForSectionsWithItemsByDataSourceIdentifier];
    [_indexesForSectionsWithItemsByDataSourceIdentifier2 setObject:v15 forKeyedSubscript:v8];
  }

  if ([indexSet count])
  {
    [v15 addIndex:section];
  }

  else
  {
    [v15 removeIndex:section];
  }
}

- (void)modifySectionIndexSetForDataSourceIdentifier:(int64_t)identifier usingBlock:(id)block
{
  blockCopy = block;
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
  _sectionIndexesByDataSourceIdentifier = [(PXIndexPathSet *)self _sectionIndexesByDataSourceIdentifier];
  indexSet = [_sectionIndexesByDataSourceIdentifier objectForKeyedSubscript:v6];

  if (!indexSet)
  {
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    _sectionIndexesByDataSourceIdentifier2 = [(PXIndexPathSet *)self _sectionIndexesByDataSourceIdentifier];
    [_sectionIndexesByDataSourceIdentifier2 setObject:indexSet forKeyedSubscript:v6];
  }

  blockCopy[2](blockCopy, indexSet);
}

- (void)minusIndexPathSet:(id)set
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__PXMutableIndexPathSet_minusIndexPathSet___block_invoke;
  v7[3] = &unk_1E7BB5BE8;
  v7[4] = self;
  setCopy = set;
  [setCopy enumerateSectionIndexSetsUsingBlock:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__PXMutableIndexPathSet_minusIndexPathSet___block_invoke_2;
  v6[3] = &unk_1E7BB60B8;
  v6[4] = self;
  [setCopy enumerateItemIndexSetsUsingBlock:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__PXMutableIndexPathSet_minusIndexPathSet___block_invoke_3;
  v5[3] = &unk_1E7BB5C10;
  v5[4] = self;
  [setCopy enumerateSubitemIndexSetsUsingBlock:v5];
}

void __43__PXMutableIndexPathSet_minusIndexPathSet___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v8 = [v4 _sectionIndexesByDataSourceIdentifier];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v7 = [v8 objectForKeyedSubscript:v6];
  [v7 removeIndexes:v5];
}

void __43__PXMutableIndexPathSet_minusIndexPathSet___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *(a1 + 32);
  v7 = a4;
  v12 = [v6 _itemIndexesBySectionByDataSourceIdentifier];
  v8 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v9 = [v12 objectForKeyedSubscript:v8];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v11 = [v9 objectForKeyedSubscript:v10];
  [v11 removeIndexes:v7];
}

void __43__PXMutableIndexPathSet_minusIndexPathSet___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 32);
  v9 = a5;
  v16 = [v8 _subitemIndexesByItemBySectionByDataSourceIdentifier];
  v10 = [MEMORY[0x1E696AD98] numberWithInteger:a2];
  v11 = [v16 objectForKeyedSubscript:v10];
  v12 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v13 = [v11 objectForKeyedSubscript:v12];
  v14 = [MEMORY[0x1E696AD98] numberWithInteger:a4];
  v15 = [v13 objectForKeyedSubscript:v14];
  [v15 removeIndexes:v9];
}

- (void)unionIndexPathSet:(id)set
{
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __43__PXMutableIndexPathSet_unionIndexPathSet___block_invoke;
  v7[3] = &unk_1E7BB5BE8;
  v7[4] = self;
  setCopy = set;
  [setCopy enumerateSectionIndexSetsUsingBlock:v7];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __43__PXMutableIndexPathSet_unionIndexPathSet___block_invoke_3;
  v6[3] = &unk_1E7BB60B8;
  v6[4] = self;
  [setCopy enumerateItemIndexSetsUsingBlock:v6];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __43__PXMutableIndexPathSet_unionIndexPathSet___block_invoke_5;
  v5[3] = &unk_1E7BB5C10;
  v5[4] = self;
  [setCopy enumerateSubitemIndexSetsUsingBlock:v5];
}

void __43__PXMutableIndexPathSet_unionIndexPathSet___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v6 = *(a1 + 32);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __43__PXMutableIndexPathSet_unionIndexPathSet___block_invoke_2;
  v8[3] = &unk_1E7BB58D0;
  v9 = v5;
  v7 = v5;
  [v6 modifySectionIndexSetForDataSourceIdentifier:a2 usingBlock:v8];
}

void __43__PXMutableIndexPathSet_unionIndexPathSet___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = *(a1 + 32);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __43__PXMutableIndexPathSet_unionIndexPathSet___block_invoke_4;
  v10[3] = &unk_1E7BB58D0;
  v11 = v7;
  v9 = v7;
  [v8 modifyItemIndexSetForDataSourceIdentifier:a2 section:a3 usingBlock:v10];
}

void __43__PXMutableIndexPathSet_unionIndexPathSet___block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v10 = *(a1 + 32);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __43__PXMutableIndexPathSet_unionIndexPathSet___block_invoke_6;
  v12[3] = &unk_1E7BB58D0;
  v13 = v9;
  v11 = v9;
  [v10 modifySubitemIndexSetForDataSourceIdentifier:a2 section:a3 item:a4 usingBlock:v12];
}

- (void)removeIndexPath:(PXSimpleIndexPath *)path
{
  if (!path->dataSourceIdentifier)
  {
    return;
  }

  item = path->item;
  if (path->section == 0x7FFFFFFFFFFFFFFFLL)
  {
    subitem = path->subitem;
    if (item == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (subitem == 0x7FFFFFFFFFFFFFFFLL)
      {
        return;
      }

      goto LABEL_11;
    }

LABEL_9:
    if (subitem == 0x7FFFFFFFFFFFFFFFLL)
    {
      _itemIndexesBySectionByDataSourceIdentifier = [(PXIndexPathSet *)self _itemIndexesBySectionByDataSourceIdentifier];
      v6 = [MEMORY[0x1E696AD98] numberWithInteger:path->dataSourceIdentifier];
      v7 = [_itemIndexesBySectionByDataSourceIdentifier objectForKeyedSubscript:v6];
      v8 = [MEMORY[0x1E696AD98] numberWithInteger:path->section];
      v9 = [v7 objectForKeyedSubscript:v8];
      [v9 removeIndex:path->item];
LABEL_12:

      goto LABEL_13;
    }

LABEL_11:
    _itemIndexesBySectionByDataSourceIdentifier = [(PXIndexPathSet *)self _subitemIndexesByItemBySectionByDataSourceIdentifier];
    v6 = [MEMORY[0x1E696AD98] numberWithInteger:path->dataSourceIdentifier];
    v7 = [_itemIndexesBySectionByDataSourceIdentifier objectForKeyedSubscript:v6];
    v8 = [MEMORY[0x1E696AD98] numberWithInteger:path->section];
    v9 = [v7 objectForKeyedSubscript:v8];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:path->item];
    v11 = [v9 objectForKeyedSubscript:v10];
    [v11 removeIndex:path->subitem];

    goto LABEL_12;
  }

  if (item != 0x7FFFFFFFFFFFFFFFLL)
  {
    subitem = path->subitem;
    goto LABEL_9;
  }

  _itemIndexesBySectionByDataSourceIdentifier = [(PXIndexPathSet *)self _sectionIndexesByDataSourceIdentifier];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:path->dataSourceIdentifier];
  v7 = [_itemIndexesBySectionByDataSourceIdentifier objectForKeyedSubscript:v6];
  [v7 removeIndex:path->section];
LABEL_13:
}

- (void)addIndexPath:(PXSimpleIndexPath *)path
{
  if (path->dataSourceIdentifier)
  {
    item = path->item;
    if (path->section == 0x7FFFFFFFFFFFFFFFLL)
    {
      subitem = path->subitem;
      if (item == 0x7FFFFFFFFFFFFFFFLL)
      {
        if (subitem == 0x7FFFFFFFFFFFFFFFLL)
        {
          return;
        }

LABEL_11:
        [(PXMutableIndexPathSet *)self modifySubitemIndexSetForDataSourceIdentifier:MEMORY[0x1E69E9820] section:3221225472 item:__38__PXMutableIndexPathSet_addIndexPath___block_invoke_3 usingBlock:&__block_descriptor_64_e27_v16__0__NSMutableIndexSet_8l, *&path->dataSourceIdentifier, path->item, path->subitem];
        return;
      }
    }

    else
    {
      if (item == 0x7FFFFFFFFFFFFFFFLL)
      {
        [PXMutableIndexPathSet modifySectionIndexSetForDataSourceIdentifier:"modifySectionIndexSetForDataSourceIdentifier:usingBlock:" usingBlock:?];
        return;
      }

      subitem = path->subitem;
    }

    if (subitem == 0x7FFFFFFFFFFFFFFFLL)
    {
      [PXMutableIndexPathSet modifyItemIndexSetForDataSourceIdentifier:"modifyItemIndexSetForDataSourceIdentifier:section:usingBlock:" section:? usingBlock:?];
      return;
    }

    goto LABEL_11;
  }
}

@end