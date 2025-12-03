@interface SUItemList
- (NSArray)sectionIndexTitles;
- (id)_groupAtExternalIndex:(int64_t)index;
- (id)copyItems;
- (id)copyWithZone:(_NSZone *)zone;
- (id)hintTextForKey:(id)key;
- (id)indexPathOfItem:(id)item;
- (id)indexPathOfItemWithIdentifier:(unint64_t)identifier;
- (id)itemAtIndexPath:(id)path;
- (id)itemsForSectionAtIndex:(int64_t)index;
- (id)sectionItemForSectionAtIndex:(int64_t)index;
- (int64_t)numberOfItems;
- (int64_t)numberOfSections;
- (int64_t)sectionIndexForIndexTitle:(id)title atIndex:(int64_t)index;
- (void)_removeHiddenItemsFromArray:(id)array;
- (void)dealloc;
- (void)enumerateItemsUsingBlock:(id)block;
- (void)insertItems:(id)items atIndexPath:(id)path;
- (void)removeItemAtIndexPath:(id)path;
- (void)replaceItemAtIndexPath:(id)path withItems:(id)items;
- (void)setHintText:(id)text;
- (void)setItems:(id)items;
- (void)setItemsFromPropertyList:(id)list;
@end

@implementation SUItemList

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = SUItemList;
  [(SUItemList *)&v3 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v5 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "init"}];
  *(v5 + 8) = [(NSMutableArray *)self->_groups mutableCopyWithZone:zone];
  *(v5 + 16) = [(NSDictionary *)self->_hintText copyWithZone:zone];
  *(v5 + 24) = self->_ignoresEmptySections;
  return v5;
}

- (id)copyItems
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  groups = self->_groups;
  v5 = [(NSMutableArray *)groups countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
    do
    {
      v8 = 0;
      do
      {
        if (*v11 != v7)
        {
          objc_enumerationMutation(groups);
        }

        [v3 addObjectsFromArray:{objc_msgSend(*(*(&v10 + 1) + 8 * v8++), "items")}];
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)groups countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)enumerateItemsUsingBlock:(id)block
{
  v14 = 0;
  v4 = [(NSMutableArray *)self->_groups count];
  if (v4 >= 1)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      v7 = [-[NSMutableArray objectAtIndex:](self->_groups objectAtIndex:{v6), "items"}];
      v8 = [v7 count];
      v9 = v14;
      if (v8 >= 1 && (v14 & 1) == 0)
      {
        v10 = v8;
        v11 = 1;
        do
        {
          v12 = [v7 objectAtIndex:v11 - 1];
          (*(block + 2))(block, v12, [MEMORY[0x1E696AC88] indexPathForRow:v11 - 1 inSection:v6], &v14);
          v9 = v14;
          if (v11 >= v10)
          {
            break;
          }

          ++v11;
        }

        while ((v14 & 1) == 0);
      }

      ++v6;
    }

    while (v6 < v5 && (v9 & 1) == 0);
  }
}

- (id)indexPathOfItem:(id)item
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__28;
  v10 = __Block_byref_object_dispose__28;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __30__SUItemList_indexPathOfItem___block_invoke;
  v5[3] = &unk_1E8165F38;
  v5[4] = item;
  v5[5] = &v6;
  [(SUItemList *)self enumerateItemsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void *__30__SUItemList_indexPathOfItem___block_invoke(void *result, uint64_t a2, void *a3, _BYTE *a4)
{
  if (result[4] == a2)
  {
    v5 = result;
    result = a3;
    *(*(v5[5] + 8) + 40) = result;
    *a4 = 1;
  }

  return result;
}

- (id)indexPathOfItemWithIdentifier:(unint64_t)identifier
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__28;
  v10 = __Block_byref_object_dispose__28;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __44__SUItemList_indexPathOfItemWithIdentifier___block_invoke;
  v5[3] = &unk_1E8165F60;
  v5[4] = &v6;
  v5[5] = identifier;
  [(SUItemList *)self enumerateItemsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

id __44__SUItemList_indexPathOfItemWithIdentifier___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  result = [a2 itemIdentifier];
  if (result == *(a1 + 40))
  {
    result = a3;
    *(*(*(a1 + 32) + 8) + 40) = result;
    *a4 = 1;
  }

  return result;
}

- (id)itemAtIndexPath:(id)path
{
  if ([path length] != 2)
  {
    [(SUItemList *)a2 itemAtIndexPath:?];
  }

  v6 = [-[SUItemList _groupAtExternalIndex:](self _groupAtExternalIndex:{objc_msgSend(path, "indexAtPosition:", 0)), "items"}];
  v7 = [path indexAtPosition:1];

  return [v6 objectAtIndex:v7];
}

- (id)itemsForSectionAtIndex:(int64_t)index
{
  v3 = [(SUItemList *)self _groupAtExternalIndex:index];

  return [v3 items];
}

- (int64_t)numberOfItems
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  groups = self->_groups;
  v3 = [(NSMutableArray *)groups countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = 0;
  v6 = *v10;
  do
  {
    for (i = 0; i != v4; ++i)
    {
      if (*v10 != v6)
      {
        objc_enumerationMutation(groups);
      }

      v5 += [objc_msgSend(*(*(&v9 + 1) + 8 * i) "items")];
    }

    v4 = [(NSMutableArray *)groups countByEnumeratingWithState:&v9 objects:v13 count:16];
  }

  while (v4);
  return v5;
}

- (int64_t)numberOfSections
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = [(NSMutableArray *)self->_groups count];
  if (self->_ignoresEmptySections)
  {
    v12 = 0u;
    v13 = 0u;
    v10 = 0u;
    v11 = 0u;
    groups = self->_groups;
    v5 = [(NSMutableArray *)groups countByEnumeratingWithState:&v10 objects:v14 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v11;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v11 != v7)
          {
            objc_enumerationMutation(groups);
          }

          v3 = (__PAIR128__(v3, [objc_msgSend(*(*(&v10 + 1) + 8 * i) "items")]) - 1) >> 64;
        }

        v6 = [(NSMutableArray *)groups countByEnumeratingWithState:&v10 objects:v14 count:16];
      }

      while (v6);
    }
  }

  return v3;
}

- (int64_t)sectionIndexForIndexTitle:(id)title atIndex:(int64_t)index
{
  if (index < 1 || !self->_ignoresEmptySections)
  {
    return index;
  }

  v6 = 0;
  indexCopy = index;
  do
  {
    indexCopy = (__PAIR128__(indexCopy, [objc_msgSend(-[NSMutableArray objectAtIndex:](self->_groups objectAtIndex:{v6++), "items"), "count"}]) - 1) >> 64;
  }

  while (index != v6);
  return indexCopy;
}

- (NSArray)sectionIndexTitles
{
  v16 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  groups = self->_groups;
  v5 = [(NSMutableArray *)groups countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      v8 = 0;
      do
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(groups);
        }

        indexBarTitle = [*(*(&v11 + 1) + 8 * v8) indexBarTitle];
        if ([indexBarTitle length])
        {
          [(NSArray *)array addObject:indexBarTitle];
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [(NSMutableArray *)groups countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return array;
}

- (id)sectionItemForSectionAtIndex:(int64_t)index
{
  v4 = [(SUItemList *)self _groupAtExternalIndex:index];
  v5 = v4;
  if (self->_ignoresEmptySections && ![objc_msgSend(v4 "items")])
  {
    v5 = 0;
  }

  return [v5 separatorItem];
}

- (void)insertItems:(id)items atIndexPath:(id)path
{
  if ([path length] != 2)
  {
    [SUItemList insertItems:a2 atIndexPath:self];
  }

  v8 = -[SUItemList _groupAtExternalIndex:](self, "_groupAtExternalIndex:", [path indexAtPosition:0]);
  v9 = [path indexAtPosition:1];
  items = [v8 items];
  v11 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v9, objc_msgSend(items, "count")}];

  [items insertObjects:items atIndexes:v11];
}

- (void)removeItemAtIndexPath:(id)path
{
  if ([path length] != 2)
  {
    [(SUItemList *)a2 removeItemAtIndexPath:?];
  }

  v6 = [-[SUItemList _groupAtExternalIndex:](self _groupAtExternalIndex:{objc_msgSend(path, "indexAtPosition:", 0)), "items"}];
  v7 = [path indexAtPosition:1];

  [v6 removeObjectAtIndex:v7];
}

- (void)replaceItemAtIndexPath:(id)path withItems:(id)items
{
  [(SUItemList *)self removeItemAtIndexPath:?];

  [(SUItemList *)self insertItems:items atIndexPath:path];
}

- (void)setItems:(id)items
{
  self->_groups = objc_alloc_init(MEMORY[0x1E695DF70]);
  v10 = objc_alloc_init(SUItemListGroup);
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = [items count];
  if (v6 >= 1)
  {
    v7 = v6;
    for (i = 0; i != v7; ++i)
    {
      v9 = [items objectAtIndex:i];
      if ([v9 itemType] == 7)
      {
        if (i)
        {
          [(SUItemListGroup *)v10 setItems:v5];

          [(NSMutableArray *)self->_groups addObject:v10];
          v10 = objc_alloc_init(SUItemListGroup);
          v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
        }

        [(SUItemListGroup *)v10 setSeparatorItem:v9];
      }

      else
      {
        [v5 addObject:v9];
      }
    }
  }

  [(SUItemListGroup *)v10 setItems:v5];

  [(NSMutableArray *)self->_groups addObject:v10];
}

- (void)setItemsFromPropertyList:(id)list
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v6 = +[SUItemDataSource sharedDataSource];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [list countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v14;
    do
    {
      v10 = 0;
      do
      {
        if (*v14 != v9)
        {
          objc_enumerationMutation(list);
        }

        v11 = [v6 newItemWithItemDictionary:*(*(&v13 + 1) + 8 * v10)];
        if (v11)
        {
          v12 = v11;
          [v5 addObject:v11];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [list countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v8);
  }

  [(SUItemList *)self _removeHiddenItemsFromArray:v5];
  [(SUItemList *)self setItems:v5];
}

- (id)hintTextForKey:(id)key
{
  if (key)
  {
    return [(NSDictionary *)self->_hintText objectForKey:?];
  }

  else
  {
    return 0;
  }
}

- (void)setHintText:(id)text
{
  hintText = self->_hintText;
  if (hintText != text)
  {

    self->_hintText = text;
  }
}

- (id)_groupAtExternalIndex:(int64_t)index
{
  if (self->_ignoresEmptySections)
  {
    v5 = [(NSMutableArray *)self->_groups count];
    if ((index & 0x8000000000000000) == 0)
    {
      v6 = v5;
      if (v5 >= 1)
      {
        v7 = 0;
        do
        {
          if (![objc_msgSend(-[NSMutableArray objectAtIndex:](self->_groups objectAtIndex:{v7), "items"), "count"}])
          {
            ++index;
          }

          v8 = v7++ < index;
          v8 = v8 && v7 < v6;
        }

        while (v8);
      }
    }
  }

  if (index >= [(NSMutableArray *)self->_groups count])
  {
    return 0;
  }

  groups = self->_groups;

  return [(NSMutableArray *)groups objectAtIndex:index];
}

- (void)_removeHiddenItemsFromArray:(id)array
{
  v4 = [array count];
  if (v4 >= 1)
  {
    v5 = v4 + 1;
    do
    {
      if (([objc_msgSend(array objectAtIndex:{v5 - 2), "isDisplayable:", 0}] & 1) == 0)
      {
        [array removeObjectAtIndex:v5 - 2];
      }

      --v5;
    }

    while (v5 > 1);
  }
}

- (uint64_t)itemAtIndexPath:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SUItemList.m" lineNumber:100 description:@"Index path must contain 2 indices"];
}

- (uint64_t)insertItems:(uint64_t)a1 atIndexPath:(uint64_t)a2 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SUItemList.m" lineNumber:165 description:@"Index path must contain 2 indices"];
}

- (uint64_t)removeItemAtIndexPath:(uint64_t)a1 .cold.1(uint64_t a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];

  return [v4 handleFailureInMethod:a1 object:a2 file:@"SUItemList.m" lineNumber:172 description:@"Index path must contain 2 indices"];
}

@end