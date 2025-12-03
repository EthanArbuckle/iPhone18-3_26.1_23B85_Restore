@interface PXSectionedDataSource
+ (id)emptyDataSource;
- (BOOL)containsAnyItems;
- (BOOL)containsMultipleItems;
- (BOOL)isEqual:(id)equal;
- (NSString)description;
- (OS_os_log)sectionedDataSourceLog;
- (PXFastEnumeration)allItemsEnumerator;
- (PXFastEnumeration)allObjectsEnumerator;
- (PXFastEnumeration)allSectionsEnumerator;
- (PXIndexPathSet)allIndexPaths;
- (PXIndexPathSet)allItemIndexPaths;
- (PXIndexPathSet)allSectionIndexPaths;
- (PXSectionedDataSource)init;
- (PXSimpleIndexPath)convertIndexPath:(SEL)path fromSectionedDataSource:(PXSimpleIndexPath *)source;
- (PXSimpleIndexPath)firstItemIndexPath;
- (PXSimpleIndexPath)firstNonEmptySectionAtOrBeforeSection:(SEL)section;
- (PXSimpleIndexPath)firstSectionIndexPath;
- (PXSimpleIndexPath)indexPathForIndexPath:(SEL)path offset:(PXSimpleIndexPath *)offset;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference;
- (PXSimpleIndexPath)lastItemIndexPath;
- (PXSimpleIndexPath)lastSectionIndexPath;
- (id)convertIndexPathSet:(id)set fromSectionedDataSource:(id)source;
- (id)fetchAllItemObjects;
- (id)indexPathSetForItemsInIndexPath:(PXSimpleIndexPath *)path;
- (id)indexPathSetForObjectIDs:(id)ds;
- (id)indexPathSetFromIndexPath:(PXSimpleIndexPath *)path toIndexPath:(PXSimpleIndexPath *)indexPath;
- (id)itemIndexPathsForSections:(id)sections;
- (id)itemsEnumeratorForIndexPaths:(id)paths;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (id)objectIDAtIndexPath:(PXSimpleIndexPath *)path;
- (id)objectIDsForIndexPathSet:(id)set;
- (id)objectReferenceAtIndexPath:(PXSimpleIndexPath *)path;
- (id)objectReferenceForObjectReference:(id)reference;
- (id)objectsEnumeratorForIndexPaths:(id)paths;
- (id)objectsInIndexPath:(PXSimpleIndexPath *)path;
- (id)sectionsEnumeratorForIndexPaths:(id)paths;
- (int64_t)_numberOfAssetsWithMaximum:(int64_t)maximum;
- (int64_t)totalNumberOfItems;
- (void)enumerateItemIndexPathsStartingAtIndexPath:(PXSimpleIndexPath *)path reverseDirection:(BOOL)direction usingBlock:(id)block;
- (void)enumerateItemIndexPathsStartingAtIndexPath:(PXSimpleIndexPath *)path untilEndIndexPath:(PXSimpleIndexPath *)indexPath usingBlock:(id)block;
@end

@implementation PXSectionedDataSource

+ (id)emptyDataSource
{
  v2 = objc_alloc_init(self);

  return v2;
}

- (PXSectionedDataSource)init
{
  v3.receiver = self;
  v3.super_class = PXSectionedDataSource;
  result = [(PXSectionedDataSource *)&v3 init];
  if (result)
  {
    result->_identifier = atomic_fetch_add(uniqueDataSourceIdentifier, 1u);
    result->_lastItemIndexPathCache.dataSourceIdentifier = 1;
    *&result->_totalNumberOfItemsCache = xmmword_1B4074EF0;
  }

  return result;
}

- (PXSimpleIndexPath)lastItemIndexPath
{
  v4 = self + 2;
  if (self[2].dataSourceIdentifier == 1)
  {
    selfCopy = self;
    *retstr = *PXSimpleIndexPathNull;
    self = [(PXSimpleIndexPath *)self containsAnyItems];
    if (self)
    {
      self = [(PXSimpleIndexPath *)selfCopy numberOfSections];
      selfCopy2 = self;
      while (selfCopy2-- >= 1)
      {
        self = [(PXSimpleIndexPath *)selfCopy numberOfItemsInSection:selfCopy2];
        v8 = &self[-1].subitem + 7;
        if (self >= 1)
        {
          self = [(PXSimpleIndexPath *)selfCopy identifier];
          retstr->dataSourceIdentifier = self;
          retstr->section = selfCopy2;
          retstr->item = v8;
          retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
          break;
        }
      }
    }

    v9 = *&retstr->item;
    *&v4->dataSourceIdentifier = *&retstr->dataSourceIdentifier;
    *&v4->item = v9;
  }

  else
  {
    v10 = *&self[2].item;
    *&retstr->dataSourceIdentifier = *&v4->dataSourceIdentifier;
    *&retstr->item = v10;
  }

  return self;
}

- (int64_t)_numberOfAssetsWithMaximum:(int64_t)maximum
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = 0;
  v8[0] = [(PXSectionedDataSource *)self identifier];
  v8[1] = 0;
  v8[2] = 0;
  v8[3] = 0x7FFFFFFFFFFFFFFFLL;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __52__PXSectionedDataSource__numberOfAssetsWithMaximum___block_invoke;
  v7[3] = &unk_1E7BB6BE0;
  v7[4] = &v9;
  v7[5] = maximum;
  [(PXSectionedDataSource *)self enumerateItemIndexPathsStartingAtIndexPath:v8 reverseDirection:0 usingBlock:v7];
  v5 = v10[3];
  _Block_object_dispose(&v9, 8);
  return v5;
}

uint64_t __52__PXSectionedDataSource__numberOfAssetsWithMaximum___block_invoke(uint64_t result, uint64_t a2, _BYTE *a3)
{
  if (++*(*(*(result + 32) + 8) + 24) >= *(result + 40))
  {
    *a3 = 1;
  }

  return result;
}

- (id)fetchAllItemObjects
{
  array = [MEMORY[0x1E695DF70] array];
  allSectionIndexPaths = [(PXSectionedDataSource *)self allSectionIndexPaths];
  [(PXSectionedDataSource *)self prefetchSections:allSectionIndexPaths];

  [(PXSectionedDataSource *)self firstItemIndexPath];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __44__PXSectionedDataSource_fetchAllItemObjects__block_invoke;
  v8[3] = &unk_1E7BB6B50;
  v5 = array;
  v9 = v5;
  selfCopy = self;
  [(PXSectionedDataSource *)self enumerateItemIndexPathsStartingAtIndexPath:v11 reverseDirection:0 usingBlock:v8];
  v6 = v5;

  return v5;
}

void __44__PXSectionedDataSource_fetchAllItemObjects__block_invoke(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v5 = [v2 objectAtIndexPath:v6];
  [v3 addObject:v5];
}

- (id)objectIDsForIndexPathSet:(id)set
{
  setCopy = set;
  if ([setCopy count])
  {
    v6 = [MEMORY[0x1E695DFA0] orderedSetWithCapacity:{objc_msgSend(setCopy, "count")}];
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = __50__PXSectionedDataSource_objectIDsForIndexPathSet___block_invoke;
    v11[3] = &unk_1E7BB6BB8;
    v11[4] = self;
    v13 = a2;
    v7 = v6;
    v12 = v7;
    [setCopy enumerateAllIndexPathsUsingBlock:v11];
    v8 = v12;
    orderedSet = v7;
  }

  else
  {
    orderedSet = [MEMORY[0x1E695DFB8] orderedSet];
  }

  return orderedSet;
}

void __50__PXSectionedDataSource_objectIDsForIndexPathSet___block_invoke(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 32);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v5 = [v3 objectIDAtIndexPath:v6];
  [*(a1 + 40) addObject:v5];
}

- (id)indexPathSetForObjectIDs:(id)ds
{
  v21 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v5 = +[(PXIndexPathSet *)PXMutableIndexPathSet];
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v6 = dsCopy;
  v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v17;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        v14 = 0u;
        v15 = 0u;
        [(PXSectionedDataSource *)self indexPathForObjectID:v11];
        v13[0] = v14;
        v13[1] = v15;
        [v5 addIndexPath:v13];
      }

      v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v8);
  }

  return v5;
}

- (id)indexPathSetFromIndexPath:(PXSimpleIndexPath *)path toIndexPath:(PXSimpleIndexPath *)indexPath
{
  v42 = objc_alloc_init(PXMutableIndexPathSet);
  identifier = [(PXSectionedDataSource *)self identifier];
  if (!path->dataSourceIdentifier)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedDataSource.m" lineNumber:463 description:{@"Invalid parameter not satisfying: %@", @"!PXSimpleIndexPathIsNull(fromIndexPath)"}];
  }

  if (!indexPath->dataSourceIdentifier)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSectionedDataSource.m" lineNumber:464 description:{@"Invalid parameter not satisfying: %@", @"!PXSimpleIndexPathIsNull(toIndexPath)"}];
  }

  if (path->dataSourceIdentifier != identifier)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSectionedDataSource.m" lineNumber:465 description:{@"Invalid parameter not satisfying: %@", @"fromIndexPath.dataSourceIdentifier == dataSourceIdentifier"}];
  }

  dataSourceIdentifier = identifier;
  if (indexPath->dataSourceIdentifier != identifier)
  {
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PXSectionedDataSource.m" lineNumber:466 description:{@"Invalid parameter not satisfying: %@", @"toIndexPath.dataSourceIdentifier == dataSourceIdentifier"}];

    dataSourceIdentifier = indexPath->dataSourceIdentifier;
  }

  v10 = path->dataSourceIdentifier;
  item = path->item;
  v12 = path->dataSourceIdentifier < dataSourceIdentifier;
  if (path->dataSourceIdentifier != dataSourceIdentifier || (section = path->section, v14 = indexPath->section, v12 = section < v14, section != v14) || (v15 = indexPath->item, v12 = item < v15, item != v15))
  {
    if (v12)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (path->subitem > indexPath->subitem)
  {
LABEL_15:
    v17 = *&indexPath->dataSourceIdentifier;
    v16 = *&indexPath->item;
    v18 = *&path->item;
    *&indexPath->dataSourceIdentifier = *&path->dataSourceIdentifier;
    *&indexPath->item = v18;
    *&path->dataSourceIdentifier = v17;
    *&path->item = v16;
    v10 = path->dataSourceIdentifier;
    item = path->item;
  }

LABEL_16:
  if (!v10)
  {
    goto LABEL_63;
  }

  v19 = path->section;
  if (v19 == 0x7FFFFFFFFFFFFFFFLL)
  {
    subitem = path->subitem;
    if (item == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (subitem == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_63;
      }

      v21 = indexPath->dataSourceIdentifier;
      goto LABEL_41;
    }
  }

  else
  {
    if (item == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (!indexPath->dataSourceIdentifier || indexPath->section == 0x7FFFFFFFFFFFFFFFLL || indexPath->item != 0x7FFFFFFFFFFFFFFFLL)
      {
        currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler5 handleFailureInMethod:a2 object:self file:@"PXSectionedDataSource.m" lineNumber:476 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsSection(toIndexPath)"}];
      }

      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3221225472;
      v45[2] = __63__PXSectionedDataSource_indexPathSetFromIndexPath_toIndexPath___block_invoke;
      v45[3] = &__block_descriptor_96_e27_v16__0__NSMutableIndexSet_8l;
      v22 = *&path->item;
      v46 = *&path->dataSourceIdentifier;
      v47 = v22;
      v23 = *&indexPath->item;
      v48 = *&indexPath->dataSourceIdentifier;
      v49 = v23;
      [(PXMutableIndexPathSet *)v42 modifySectionIndexSetForDataSourceIdentifier:identifier usingBlock:v45];
      goto LABEL_63;
    }

    subitem = path->subitem;
  }

  v21 = indexPath->dataSourceIdentifier;
  if (subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
LABEL_41:
    if (!v21 || indexPath->subitem == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler6 handleFailureInMethod:a2 object:self file:@"PXSectionedDataSource.m" lineNumber:498 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsSubitem(toIndexPath)"}];

      v19 = path->section;
    }

    if (v19 <= indexPath->section)
    {
      do
      {
        v27 = [(PXSectionedDataSource *)self numberOfItemsInSection:v19];
        v28 = v27 - 1;
        if (v27 >= 1)
        {
          if (path->section == v19)
          {
            v29 = path->item;
          }

          else
          {
            v29 = 0;
          }

          if (indexPath->section == v19)
          {
            v28 = indexPath->item;
          }

          if (v29 <= v28)
          {
            v30 = v28 + 1;
            do
            {
              v31 = [(PXSectionedDataSource *)self numberOfSubitemsInItem:v29 section:v19];
              v32 = v31 - 1;
              if (v31 >= 1)
              {
                if (path->section == v19 && v29 == path->item)
                {
                  v33 = path->subitem;
                }

                else
                {
                  v33 = 0;
                }

                if (indexPath->section == v19 && v29 == indexPath->item)
                {
                  v32 = indexPath->subitem;
                }

                v43[0] = MEMORY[0x1E69E9820];
                v43[1] = 3221225472;
                v43[2] = __63__PXSectionedDataSource_indexPathSetFromIndexPath_toIndexPath___block_invoke_3;
                v43[3] = &__block_descriptor_48_e27_v16__0__NSMutableIndexSet_8l;
                v43[4] = v33;
                v43[5] = v32 - v33 + 1;
                [(PXMutableIndexPathSet *)v42 modifySubitemIndexSetForDataSourceIdentifier:identifier section:v19 item:v29 usingBlock:v43];
              }

              ++v29;
            }

            while (v30 != v29);
          }
        }

        v12 = v19++ < indexPath->section;
      }

      while (v12);
    }

    goto LABEL_63;
  }

  if (!v21 || indexPath->item == 0x7FFFFFFFFFFFFFFFLL || indexPath->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler7 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler7 handleFailureInMethod:a2 object:self file:@"PXSectionedDataSource.m" lineNumber:483 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(toIndexPath)"}];

    v19 = path->section;
  }

  if (v19 <= indexPath->section)
  {
    do
    {
      v24 = [(PXSectionedDataSource *)self numberOfItemsInSection:v19];
      v25 = v24 - 1;
      if (v24 >= 1)
      {
        if (v19 == path->section)
        {
          v26 = path->item;
        }

        else
        {
          v26 = 0;
        }

        if (v19 == indexPath->section)
        {
          v25 = indexPath->item;
        }

        v44[0] = MEMORY[0x1E69E9820];
        v44[1] = 3221225472;
        v44[2] = __63__PXSectionedDataSource_indexPathSetFromIndexPath_toIndexPath___block_invoke_2;
        v44[3] = &__block_descriptor_48_e27_v16__0__NSMutableIndexSet_8l;
        v44[4] = v26;
        v44[5] = v25 - v26 + 1;
        [(PXMutableIndexPathSet *)v42 modifyItemIndexSetForDataSourceIdentifier:identifier section:v19 usingBlock:v44];
      }

      v12 = v19++ < indexPath->section;
    }

    while (v12);
  }

LABEL_63:

  return v42;
}

- (id)itemIndexPathsForSections:(id)sections
{
  sectionsCopy = sections;
  v5 = +[(PXIndexPathSet *)PXMutableIndexPathSet];
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __51__PXSectionedDataSource_itemIndexPathsForSections___block_invoke;
  v10[3] = &unk_1E7BB6B50;
  v10[4] = self;
  v6 = v5;
  v11 = v6;
  [sectionsCopy enumerateSectionIndexPathsUsingBlock:v10];

  v7 = v11;
  v8 = v6;

  return v6;
}

void __51__PXSectionedDataSource_itemIndexPathsForSections___block_invoke(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 32);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  v5 = [v3 indexPathSetForItemsInIndexPath:v6];
  [*(a1 + 40) unionIndexPathSet:v5];
}

- (id)indexPathSetForItemsInIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXSectionedDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedDataSource.m" lineNumber:427 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  if (path->dataSourceIdentifier)
  {
    section = path->section;
    item = path->item;
    if (section == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (item != 0x7FFFFFFFFFFFFFFFLL && path->subitem == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (item == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_11;
      }

      if (path->subitem == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_17;
      }
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSectionedDataSource.m" lineNumber:428 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsSection(indexPath) || PXSimpleIndexPathIsItem(indexPath)"}];

  section = path->section;
  item = path->item;
  if (path->dataSourceIdentifier)
  {
    if (section != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (item != 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_17;
      }

LABEL_11:
      v10 = [(PXSectionedDataSource *)self numberOfItemsInSection:section];
      v11 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v10}];
      v12 = [PXIndexPathSet indexPathSetWithItemIndexes:v11 dataSourceIdentifier:[(PXSectionedDataSource *)self identifier] section:section];
      goto LABEL_18;
    }

LABEL_15:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSectionedDataSource.m" lineNumber:437 description:{@"Invalid parameter not satisfying: %@", @"indexPath.section != NSNotFound"}];

    section = path->section;
    item = path->item;
    goto LABEL_17;
  }

  if (section == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_15;
  }

LABEL_17:
  v14 = [(PXSectionedDataSource *)self numberOfSubitemsInItem:item section:section];
  v11 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{0, v14}];
  v12 = [PXIndexPathSet indexPathSetWithSubitemIndexes:v11 dataSourceIdentifier:[(PXSectionedDataSource *)self identifier] section:section item:item];
LABEL_18:
  v15 = v12;

  return v15;
}

- (PXFastEnumeration)allObjectsEnumerator
{
  allIndexPaths = [(PXSectionedDataSource *)self allIndexPaths];
  v4 = [(PXSectionedDataSource *)self objectsEnumeratorForIndexPaths:allIndexPaths];

  return v4;
}

- (id)objectsEnumeratorForIndexPaths:(id)paths
{
  pathsCopy = paths;
  v5 = [[PXSectionedDataSourceEnumerator alloc] initWithDataSource:self indexPathSet:pathsCopy enumeratedTypes:7];

  return v5;
}

- (PXFastEnumeration)allSectionsEnumerator
{
  allSectionIndexPaths = [(PXSectionedDataSource *)self allSectionIndexPaths];
  v4 = [(PXSectionedDataSource *)self sectionsEnumeratorForIndexPaths:allSectionIndexPaths];

  return v4;
}

- (id)sectionsEnumeratorForIndexPaths:(id)paths
{
  pathsCopy = paths;
  v5 = [[PXSectionedDataSourceEnumerator alloc] initWithDataSource:self indexPathSet:pathsCopy enumeratedTypes:1];

  return v5;
}

- (PXFastEnumeration)allItemsEnumerator
{
  allItemIndexPaths = [(PXSectionedDataSource *)self allItemIndexPaths];
  v4 = [(PXSectionedDataSource *)self itemsEnumeratorForIndexPaths:allItemIndexPaths];

  return v4;
}

- (id)itemsEnumeratorForIndexPaths:(id)paths
{
  pathsCopy = paths;
  v5 = [[PXSectionedDataSourceEnumerator alloc] initWithDataSource:self indexPathSet:pathsCopy enumeratedTypes:2];

  return v5;
}

- (PXIndexPathSet)allIndexPaths
{
  v3 = +[(PXIndexPathSet *)PXMutableIndexPathSet];
  allSectionIndexPaths = [(PXSectionedDataSource *)self allSectionIndexPaths];
  [v3 unionIndexPathSet:allSectionIndexPaths];

  allItemIndexPaths = [(PXSectionedDataSource *)self allItemIndexPaths];
  [v3 unionIndexPathSet:allItemIndexPaths];

  return v3;
}

- (PXIndexPathSet)allItemIndexPaths
{
  v7 = 0u;
  v8 = 0u;
  [(PXSectionedDataSource *)self firstItemIndexPath];
  v5 = 0u;
  v6 = 0u;
  [(PXSectionedDataSource *)self lastItemIndexPath];
  v3 = +[PXIndexPathSet indexPathSet];

  return v3;
}

- (PXSimpleIndexPath)firstItemIndexPath
{
  v4 = self + 1;
  if (self[1].dataSourceIdentifier == 1)
  {
    selfCopy = self;
    *retstr = *PXSimpleIndexPathNull;
    self = [(PXSimpleIndexPath *)self containsAnyItems];
    if (self)
    {
      self = [(PXSimpleIndexPath *)selfCopy numberOfSections];
      if (self >= 1)
      {
        v6 = 0;
        while ([(PXSimpleIndexPath *)selfCopy numberOfItemsInSection:v6]< 1)
        {
          ++v6;
          self = [(PXSimpleIndexPath *)selfCopy numberOfSections];
          if (v6 >= self)
          {
            goto LABEL_10;
          }
        }

        self = [(PXSimpleIndexPath *)selfCopy identifier];
        retstr->dataSourceIdentifier = self;
        retstr->section = v6;
        *&retstr->item = xmmword_1B4074EC0;
      }
    }

LABEL_10:
    v8 = *&retstr->item;
    *&v4->dataSourceIdentifier = *&retstr->dataSourceIdentifier;
    *&v4->item = v8;
  }

  else
  {
    v7 = *&self[1].item;
    *&retstr->dataSourceIdentifier = *&v4->dataSourceIdentifier;
    *&retstr->item = v7;
  }

  return self;
}

- (PXSimpleIndexPath)firstNonEmptySectionAtOrBeforeSection:(SEL)section
{
  result = [(PXSectionedDataSource *)self containsAnyItems];
  v9 = PXSimpleIndexPathNull;
  if (!result)
  {
LABEL_9:
    v12 = *&v9->item;
    *&retstr->dataSourceIdentifier = *&v9->dataSourceIdentifier;
    *&retstr->item = v12;
    return result;
  }

  dataSourceIdentifier = a4->dataSourceIdentifier;
  result = [(PXSectionedDataSource *)self identifier];
  if (dataSourceIdentifier != result)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:section object:self file:@"PXSectionedDataSource.m" lineNumber:334 description:{@"Invalid parameter not satisfying: %@", @"sectionIndexPath.dataSourceIdentifier == self.identifier"}];
  }

  *&retstr->dataSourceIdentifier = *PXSimpleIndexPathNull;
  *&retstr->item = *&PXSimpleIndexPathNull[16];
  if ((a4->section & 0x8000000000000000) == 0)
  {
    while (1)
    {
      result = [(PXSectionedDataSource *)self numberOfItemsInSection:?];
      if (result > 0)
      {
        break;
      }

      section = a4->section;
      a4->section = section - 1;
      if (section <= 0)
      {
        return result;
      }
    }

    v9 = a4;
    goto LABEL_9;
  }

  return result;
}

- (PXIndexPathSet)allSectionIndexPaths
{
  v7 = 0u;
  v8 = 0u;
  [(PXSectionedDataSource *)self firstSectionIndexPath];
  v5 = 0u;
  v6 = 0u;
  [(PXSectionedDataSource *)self lastSectionIndexPath];
  v3 = +[PXIndexPathSet indexPathSet];

  return v3;
}

- (PXSimpleIndexPath)lastSectionIndexPath
{
  *retstr = *PXSimpleIndexPathNull;
  result = [(PXSectionedDataSource *)self numberOfSections];
  v6 = &result[-1].subitem + 7;
  if (result >= 1)
  {
    result = [(PXSectionedDataSource *)self identifier];
    retstr->dataSourceIdentifier = result;
    retstr->section = v6;
    v7.f64[0] = NAN;
    v7.f64[1] = NAN;
    *&retstr->item = vnegq_f64(v7);
  }

  return result;
}

- (PXSimpleIndexPath)firstSectionIndexPath
{
  *retstr = *PXSimpleIndexPathNull;
  result = [(PXSectionedDataSource *)self numberOfSections];
  if (result >= 1)
  {
    result = [(PXSectionedDataSource *)self identifier];
    retstr->dataSourceIdentifier = result;
    *&retstr->section = xmmword_1B4074EC0;
    retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
  }

  return result;
}

- (PXSimpleIndexPath)indexPathForIndexPath:(SEL)path offset:(PXSimpleIndexPath *)offset
{
  dataSourceIdentifier = offset->dataSourceIdentifier;
  result = [(PXSectionedDataSource *)self identifier];
  if (dataSourceIdentifier != result)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:path object:self file:@"PXSectionedDataSource.m" lineNumber:282 description:{@"Invalid parameter not satisfying: %@", @"indexPath.dataSourceIdentifier == self.identifier"}];
  }

  v13 = offset->dataSourceIdentifier;
  section = offset->section;
  item = offset->item;
  subitem = offset->subitem;
  if (!v13)
  {
LABEL_9:
    if (section < 0)
    {
      goto LABEL_23;
    }

    goto LABEL_15;
  }

  if (section == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (item == 0x7FFFFFFFFFFFFFFFLL)
    {
      result = [(PXSectionedDataSource *)self numberOfSections];
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (item == 0x7FFFFFFFFFFFFFFFLL)
  {
    section += a5;
    item = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

LABEL_11:
  if (subitem == 0x7FFFFFFFFFFFFFFFLL)
  {
    item += a5;
    subitem = 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    subitem += a5;
  }

  if (section < 0)
  {
    goto LABEL_23;
  }

LABEL_15:
  result = [(PXSectionedDataSource *)self numberOfSections];
  if (section < result)
  {
    if (item == 0x7FFFFFFFFFFFFFFFLL || (item & 0x8000000000000000) == 0 && (result = [(PXSectionedDataSource *)self numberOfItemsInSection:section], item < result))
    {
      if (subitem == 0x7FFFFFFFFFFFFFFFLL || (subitem & 0x8000000000000000) == 0 && (result = [(PXSectionedDataSource *)self numberOfSubitemsInItem:item section:section], subitem < result))
      {
        retstr->dataSourceIdentifier = v13;
        retstr->section = section;
        retstr->item = item;
        retstr->subitem = subitem;
        return result;
      }
    }
  }

LABEL_23:
  *&retstr->dataSourceIdentifier = *PXSimpleIndexPathNull;
  *&retstr->item = *&PXSimpleIndexPathNull[16];
  return result;
}

- (void)enumerateItemIndexPathsStartingAtIndexPath:(PXSimpleIndexPath *)path untilEndIndexPath:(PXSimpleIndexPath *)indexPath usingBlock:(id)block
{
  blockCopy = block;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __97__PXSectionedDataSource_enumerateItemIndexPathsStartingAtIndexPath_untilEndIndexPath_usingBlock___block_invoke;
  v13[3] = &unk_1E7BB6B28;
  v14 = blockCopy;
  v9 = *&indexPath->item;
  v15 = *&indexPath->dataSourceIdentifier;
  v16 = v9;
  v10 = *&path->item;
  v12[0] = *&path->dataSourceIdentifier;
  v12[1] = v10;
  v11 = blockCopy;
  [(PXSectionedDataSource *)self enumerateItemIndexPathsStartingAtIndexPath:v12 reverseDirection:0 usingBlock:v13];
}

uint64_t __97__PXSectionedDataSource_enumerateItemIndexPathsStartingAtIndexPath_untilEndIndexPath_usingBlock___block_invoke(uint64_t a1, int64x2_t *a2, _BYTE *a3, uint64_t a4)
{
  v7 = *(a1 + 32);
  v8 = *(v7 + 16);
  v9 = a2[1];
  v11[0] = *a2;
  v11[1] = v9;
  result = v8(v7, v11, a3, a4);
  if (vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*(a1 + 40), *a2), vceqq_s64(*(a1 + 56), a2[1])))))
  {
    *a3 = 1;
  }

  return result;
}

- (void)enumerateItemIndexPathsStartingAtIndexPath:(PXSimpleIndexPath *)path reverseDirection:(BOOL)direction usingBlock:(id)block
{
  directionCopy = direction;
  blockCopy = block;
  v9 = blockCopy;
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (!path->dataSourceIdentifier)
  {
    goto LABEL_26;
  }

  if (!blockCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedDataSource.m" lineNumber:240 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];

    dataSourceIdentifier = path->dataSourceIdentifier;
    if (path->dataSourceIdentifier)
    {
      goto LABEL_4;
    }

LABEL_28:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PXSectionedDataSource.m" lineNumber:241 description:{@"Invalid parameter not satisfying: %@", @"PXSimpleIndexPathIsItem(startIndexPath)"}];

    dataSourceIdentifier = path->dataSourceIdentifier;
    goto LABEL_6;
  }

  if (!dataSourceIdentifier)
  {
    goto LABEL_28;
  }

LABEL_4:
  if (path->item == 0x7FFFFFFFFFFFFFFFLL || path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_28;
  }

LABEL_6:
  if (dataSourceIdentifier != [(PXSectionedDataSource *)self identifier])
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PXSectionedDataSource.m" lineNumber:242 description:{@"%@: indexPath data source identifier:%lu, does not match:%lu and is not valid for use with this data source. Convert it to ensure safe use.", self, path->dataSourceIdentifier, -[PXSectionedDataSource identifier](self, "identifier")}];
  }

  if (directionCopy)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  section = path->section;
  numberOfSections = [(PXSectionedDataSource *)self numberOfSections];
  item = path->item;
  v28 = 0;
  if ((section & 0x8000000000000000) == 0)
  {
    v15 = numberOfSections;
    v16 = path->dataSourceIdentifier;
    subitem = path->subitem;
    v18 = section;
    do
    {
      if (v18 >= v15 || (v28 & 1) != 0)
      {
        break;
      }

      v19 = [(PXSectionedDataSource *)self numberOfItemsInSection:v18];
      v20 = v19 - 1;
      if (!directionCopy)
      {
        v20 = 0;
      }

      if (v18 != section)
      {
        item = v20;
      }

      if ((item & 0x8000000000000000) == 0)
      {
        v21 = v19;
        while (item < v21 && (v28 & 1) == 0)
        {
          v22 = v9[2];
          v27[0] = v16;
          v27[1] = v18;
          v27[2] = item;
          v27[3] = subitem;
          v22(v9, v27, &v28);
          item += v11;
          if (item < 0)
          {
            item = -1;
            break;
          }
        }
      }

      v18 += v11;
    }

    while (v18 >= 0);
  }

LABEL_26:
}

- (int64_t)totalNumberOfItems
{
  totalNumberOfItemsCache = self->_totalNumberOfItemsCache;
  if (totalNumberOfItemsCache == 0x7FFFFFFFFFFFFFFFLL)
  {
    numberOfSections = [(PXSectionedDataSource *)self numberOfSections];
    if (numberOfSections < 1)
    {
      totalNumberOfItemsCache = 0;
    }

    else
    {
      v5 = numberOfSections;
      v6 = 0;
      totalNumberOfItemsCache = 0;
      do
      {
        totalNumberOfItemsCache += [(PXSectionedDataSource *)self numberOfItemsInSection:v6++];
      }

      while (v5 != v6);
    }

    self->_totalNumberOfItemsCache = totalNumberOfItemsCache;
  }

  return totalNumberOfItemsCache;
}

- (BOOL)containsMultipleItems
{
  containsMultipleItemsCache = self->_containsMultipleItemsCache;
  if (containsMultipleItemsCache)
  {

    return [(NSNumber *)containsMultipleItemsCache BOOLValue];
  }

  else
  {
    v5 = [(PXSectionedDataSource *)self _numberOfAssetsWithMaximum:2]> 1;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    v7 = self->_containsMultipleItemsCache;
    self->_containsMultipleItemsCache = v6;

    return v5;
  }
}

- (BOOL)containsAnyItems
{
  containsAnyItemsCache = self->_containsAnyItemsCache;
  if (containsAnyItemsCache)
  {

    return [(NSNumber *)containsAnyItemsCache BOOLValue];
  }

  else
  {
    v5 = [(PXSectionedDataSource *)self _numberOfAssetsWithMaximum:1]> 0;
    v6 = [MEMORY[0x1E696AD98] numberWithBool:v5];
    v7 = self->_containsAnyItemsCache;
    self->_containsAnyItemsCache = v6;

    return v5;
  }
}

- (id)convertIndexPathSet:(id)set fromSectionedDataSource:(id)source
{
  setCopy = set;
  sourceCopy = source;
  if ([(PXSectionedDataSource *)self isEqual:sourceCopy])
  {
    v8 = setCopy;
  }

  else
  {
    v9 = objc_alloc_init(PXMutableIndexPathSet);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __69__PXSectionedDataSource_convertIndexPathSet_fromSectionedDataSource___block_invoke;
    v12[3] = &unk_1E7BB6B00;
    v12[4] = self;
    v13 = sourceCopy;
    v14 = v9;
    v10 = v9;
    [setCopy enumerateItemIndexPathsUsingBlock:v12];
    v8 = [(PXMutableIndexPathSet *)v10 copy];
  }

  return v8;
}

void *__69__PXSectionedDataSource_convertIndexPathSet_fromSectionedDataSource___block_invoke(void *a1, __int128 *a2)
{
  result = a1[4];
  if (result)
  {
    v9 = 0u;
    v10 = 0u;
    v4 = a1[5];
    v5 = a2[1];
    v7 = *a2;
    v8 = v5;
    result = [result convertIndexPath:&v7 fromSectionedDataSource:v4];
    if (v9)
    {
      v6 = a1[6];
      v7 = v9;
      v8 = v10;
      return [v6 addIndexPath:&v7];
    }
  }

  return result;
}

- (PXSimpleIndexPath)convertIndexPath:(SEL)path fromSectionedDataSource:(PXSimpleIndexPath *)source
{
  v8 = a5;
  *retstr = *PXSimpleIndexPathNull;
  identifier = [v8 identifier];
  if (identifier == [(PXSectionedDataSource *)self identifier])
  {
    v10 = *&source->item;
    *&retstr->dataSourceIdentifier = *&source->dataSourceIdentifier;
    *&retstr->item = v10;
  }

  else
  {
    v11 = *&source->item;
    v14[0] = *&source->dataSourceIdentifier;
    v14[1] = v11;
    v12 = [v8 objectReferenceAtIndexPath:v14];
    [(PXSectionedDataSource *)self indexPathForObjectReference:v12];
  }

  return result;
}

- (id)objectReferenceForObjectReference:(id)reference
{
  referenceCopy = reference;
  v5 = referenceCopy;
  if (referenceCopy)
  {
    [referenceCopy indexPath];
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  if (v6 == [(PXSectionedDataSource *)self identifier])
  {
    v7 = v5;
  }

  else
  {
    [(PXSectionedDataSource *)self indexPathForObjectReference:v5];
    v7 = 0;
  }

  return v7;
}

- (id)objectReferenceAtIndexPath:(PXSimpleIndexPath *)path
{
  dataSourceIdentifier = path->dataSourceIdentifier;
  if (dataSourceIdentifier != [(PXSectionedDataSource *)self identifier])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedDataSource.m" lineNumber:133 description:{@"%@: indexPath data source identifier:%lu, does not match:%lu and is not valid for use with this data source. Convert it to ensure safe use.", self, path->dataSourceIdentifier, -[PXSectionedDataSource identifier](self, "identifier")}];
  }

  if (!path->dataSourceIdentifier)
  {
    goto LABEL_7;
  }

  item = path->item;
  if (path->section == 0x7FFFFFFFFFFFFFFFLL)
  {
    subitem = path->subitem;
    if (item == 0x7FFFFFFFFFFFFFFFLL)
    {
      if (subitem == 0x7FFFFFFFFFFFFFFFLL)
      {
LABEL_7:
        v9 = 0;
        v10 = 0;
        objectReferenceClassForSection = 0;
        v12 = 0;
        goto LABEL_15;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (item == 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = *&path->item;
      v24 = *&path->dataSourceIdentifier;
      v25 = v13;
      v12 = [(PXSectionedDataSource *)self objectAtIndexPath:&v24];
      objectReferenceClassForSection = [(PXSectionedDataSource *)self objectReferenceClassForSection];
      v9 = 0;
LABEL_13:
      v10 = 0;
      goto LABEL_15;
    }

    subitem = path->subitem;
  }

  if (subitem == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = *&path->item;
    v24 = *&path->dataSourceIdentifier;
    v25 = v14;
    v9 = [(PXSectionedDataSource *)self objectAtIndexPath:&v24];
    v15.f64[0] = NAN;
    v15.f64[1] = NAN;
    v24 = *&path->dataSourceIdentifier;
    v25 = vnegq_f64(v15);
    v12 = [(PXSectionedDataSource *)self objectAtIndexPath:&v24];
    objectReferenceClassForSection = [(PXSectionedDataSource *)self objectReferenceClassForItem];
    goto LABEL_13;
  }

LABEL_14:
  v16 = *&path->item;
  v24 = *&path->dataSourceIdentifier;
  v25 = v16;
  v10 = [(PXSectionedDataSource *)self objectAtIndexPath:&v24];
  v17 = path->item;
  v24 = *&path->dataSourceIdentifier;
  *&v25.f64[0] = v17;
  v25.f64[1] = NAN;
  v9 = [(PXSectionedDataSource *)self objectAtIndexPath:&v24];
  v18.f64[0] = NAN;
  v18.f64[1] = NAN;
  v24 = *&path->dataSourceIdentifier;
  v25 = vnegq_f64(v18);
  v12 = [(PXSectionedDataSource *)self objectAtIndexPath:&v24];
  objectReferenceClassForSection = [(PXSectionedDataSource *)self objectReferenceClassForSubItem];
LABEL_15:
  v19 = [objectReferenceClassForSection alloc];
  v20 = *&path->item;
  v24 = *&path->dataSourceIdentifier;
  v25 = v20;
  v21 = [v19 initWithSectionObject:v12 itemObject:v9 subitemObject:v10 indexPath:&v24];

  return v21;
}

- (OS_os_log)sectionedDataSourceLog
{
  if (sectionedDataSourceLog_onceToken != -1)
  {
    dispatch_once(&sectionedDataSourceLog_onceToken, &__block_literal_global_9733);
  }

  v3 = sectionedDataSourceLog_sectionedDataSourceLog;

  return v3;
}

uint64_t __47__PXSectionedDataSource_sectionedDataSourceLog__block_invoke()
{
  v0 = os_log_create("com.apple.photos.ui", "PXSectionedDataSource");
  v1 = sectionedDataSourceLog_sectionedDataSourceLog;
  sectionedDataSourceLog_sectionedDataSourceLog = v0;

  return MEMORY[0x1EEE66BB8](v0, v1);
}

- (id)objectIDAtIndexPath:(PXSimpleIndexPath *)path
{
  v3 = *&path->item;
  v6[0] = *&path->dataSourceIdentifier;
  v6[1] = v3;
  v4 = [(PXSectionedDataSource *)self objectAtIndexPath:v6];

  return v4;
}

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference
{
  v6 = a4;
  v7 = v6;
  if (v6)
  {
    [v6 indexPath];
    if (v13 == [(PXSectionedDataSource *)self identifier])
    {
      [v7 indexPath];
LABEL_7:
      v8 = v11;
      v9 = v12;
      goto LABEL_8;
    }
  }

  else if (![(PXSectionedDataSource *)self identifier])
  {
    v11 = 0u;
    v12 = 0u;
    goto LABEL_7;
  }

  v8 = *PXSimpleIndexPathNull;
  v9 = *&PXSimpleIndexPathNull[16];
LABEL_8:
  *&retstr->dataSourceIdentifier = v8;
  *&retstr->item = v9;

  return result;
}

- (id)objectsInIndexPath:(PXSimpleIndexPath *)path
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedDataSource.m" lineNumber:84 description:{@"Method %s is a responsibility of subclass %@", "-[PXSectionedDataSource objectsInIndexPath:]", v7}];

  abort();
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXSectionedDataSource.m" lineNumber:80 description:{@"Method %s is a responsibility of subclass %@", "-[PXSectionedDataSource objectAtIndexPath:]", v7}];

  abort();
}

- (NSString)description
{
  v6.receiver = self;
  v6.super_class = PXSectionedDataSource;
  v3 = [(PXSectionedDataSource *)&v6 description];
  v4 = [v3 stringByAppendingFormat:@" identifier:%ld numberOfSections:%ld", -[PXSectionedDataSource identifier](self, "identifier"), -[PXSectionedDataSource numberOfSections](self, "numberOfSections")];

  return v4;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = equalCopy;
    identifier = [(PXSectionedDataSource *)self identifier];
    identifier2 = [v5 identifier];

    v8 = identifier == identifier2;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

@end