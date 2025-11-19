@interface PUBarButtonItemCollection
- (PUBarButtonItemCollection)initWithOptions:(unint64_t)a3;
- (PUBarButtonItemCollectionDataSource)dataSource;
- (id)_arrangedBarButtonItems:(id)a3 identifiers:(id)a4;
- (id)_newEntryForIdentifiers:(id)a3;
- (id)barButtonItemForIdentifier:(int64_t)a3;
- (id)orderedBarButtonsItemsForIdentifiers:(id)a3;
- (int64_t)identifierForBarButtonItem:(id)a3;
- (int64_t)identifierForCustomButton:(id)a3;
- (void)_centersButtonsIfNeeded:(id)a3 identifiers:(id)a4;
- (void)_resetSet;
- (void)setIdentifiersOrder:(id)a3;
@end

@implementation PUBarButtonItemCollection

- (PUBarButtonItemCollectionDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)_centersButtonsIfNeeded:(id)a3 identifiers:(id)a4
{
  v17 = a3;
  v6 = a4;
  if ([v6 count] == 2 && -[NSIndexSet count](self->_centeredItemIdentifiers, "count"))
  {
    v7 = [v6 firstIndex];
    v8 = [v6 lastIndex];
    if ([(NSIndexSet *)self->_centeredItemIdentifiers containsIndex:v7])
    {
      v9 = v8;
      v8 = v7;
    }

    else
    {
      v9 = v7;
      if (![(NSIndexSet *)self->_centeredItemIdentifiers containsIndex:v8])
      {
        goto LABEL_13;
      }
    }

    if (v8)
    {
      identifiersOrder = self->_identifiersOrder;
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:v8];
      v12 = [(NSArray *)identifiersOrder indexOfObject:v11];

      v13 = self->_identifiersOrder;
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
      v15 = [(NSArray *)v13 indexOfObject:v14];

      if (v12 != 0x7FFFFFFFFFFFFFFFLL && v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v16 = [(PUBarButtonItemCollection *)self _placeholderBarButtonItem];
        if (v12 >= v15)
        {
          [v17 addObject:v16];
        }

        else
        {
          [v17 insertObject:v16 atIndex:0];
        }
      }
    }
  }

LABEL_13:
}

- (id)_arrangedBarButtonItems:(id)a3 identifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  if (!v6 || ![v6 count])
  {
    v10 = 0;
    goto LABEL_15;
  }

  [(PUBarButtonItemCollection *)self _centersButtonsIfNeeded:v6 identifiers:v7];
  if ((-[PUBarButtonItemCollection _options](self, "_options") & 2) != 0 && [v6 count] == 1)
  {
    v8 = [(PUBarButtonItemCollection *)self _flexibleSpaceBarButtonItem];
    [v6 insertObject:v8 atIndex:0];

    v9 = [(PUBarButtonItemCollection *)self _flexibleSpaceBarButtonItem];
    [v6 addObject:v9];
  }

  else
  {
    if ((-[PUBarButtonItemCollection _options](self, "_options") & 4) == 0 || [v6 count] != 1)
    {
      if ((-[PUBarButtonItemCollection _options](self, "_options") & 1) != 0 && [v6 count] >= 2)
      {
        v11 = [MEMORY[0x1E695DF70] array];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __65__PUBarButtonItemCollection__arrangedBarButtonItems_identifiers___block_invoke;
        v15[3] = &unk_1E7B75B90;
        v15[4] = self;
        v12 = v11;
        v16 = v12;
        [v6 enumerateObjectsUsingBlock:v15];
        v13 = v12;

        v6 = v13;
      }

      goto LABEL_14;
    }

    v9 = [(PUBarButtonItemCollection *)self _flexibleSpaceBarButtonItem];
    [v6 insertObject:v9 atIndex:0];
  }

LABEL_14:
  v6 = v6;
  v10 = v6;
LABEL_15:

  return v10;
}

void __65__PUBarButtonItemCollection__arrangedBarButtonItems_identifiers___block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a2;
  if (a3)
  {
    v5 = [*(a1 + 32) _flexibleSpaceBarButtonItem];
    [*(a1 + 40) addObject:v5];
  }

  [*(a1 + 40) addObject:v6];
}

- (id)_newEntryForIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v4, "count")}];
  identifiersOrder = self->_identifiersOrder;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__PUBarButtonItemCollection__newEntryForIdentifiers___block_invoke;
  v11[3] = &unk_1E7B75B68;
  v12 = v4;
  v13 = self;
  v14 = v5;
  v7 = v5;
  v8 = v4;
  [(NSArray *)identifiersOrder enumerateObjectsUsingBlock:v11];
  v9 = [(PUBarButtonItemCollection *)self _arrangedBarButtonItems:v7 identifiers:v8];

  return v9;
}

uint64_t __53__PUBarButtonItemCollection__newEntryForIdentifiers___block_invoke(id *a1, void *a2)
{
  v3 = [a2 integerValue];
  result = [a1[4] containsIndex:v3];
  if (result)
  {
    v5 = [a1[5] barButtonItemForIdentifier:v3];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
      v5 = [a1[6] addObject:v5];
      v6 = v7;
    }

    return MEMORY[0x1EEE66BB8](v5, v6);
  }

  return result;
}

- (id)orderedBarButtonsItemsForIdentifiers:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 && [v4 count])
  {
    v6 = [(PUBarButtonItemCollection *)self _previousRequestedSet];
    v7 = [v5 isEqualToIndexSet:v6];

    if (!v7 || ([(PUBarButtonItemCollection *)self _previousResult], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v9 = [v5 copy];
      v10 = [(PUBarButtonItemCollection *)self _configurationsCache];
      v8 = [v10 objectForKey:v9];

      if (!v8)
      {
        v8 = [(PUBarButtonItemCollection *)self _newEntryForIdentifiers:v9];
        v11 = [(PUBarButtonItemCollection *)self _configurationsCache];
        v12 = v11;
        if (v8)
        {
          [v11 setObject:v8 forKey:v9];
        }

        else
        {
          v14 = [MEMORY[0x1E695DFB0] null];
          [v12 setObject:v14 forKey:v9];
        }
      }

      [(PUBarButtonItemCollection *)self _setPreviousRequestedSet:v9];
      [(PUBarButtonItemCollection *)self _setPreviousResult:v8];
    }

    v15 = [MEMORY[0x1E695DFB0] null];
    if ([v8 isEqual:v15])
    {
      v16 = 0;
    }

    else
    {
      v16 = v8;
    }

    v13 = v16;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

- (int64_t)identifierForCustomButton:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(PUBarButtonItemCollection *)self _barButtonItems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__PUBarButtonItemCollection_identifierForCustomButton___block_invoke;
  v9[3] = &unk_1E7B75B40;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v7;
}

void __55__PUBarButtonItemCollection_identifierForCustomButton___block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v9 = a2;
  v7 = *(a1 + 32);
  v8 = [a3 customView];
  LODWORD(v7) = [v7 isDescendantOfView:v8];

  if (v7)
  {
    *(*(*(a1 + 40) + 8) + 24) = [v9 integerValue];
    *a4 = 1;
  }
}

- (int64_t)identifierForBarButtonItem:(id)a3
{
  v4 = a3;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v5 = [(PUBarButtonItemCollection *)self _barButtonItems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__PUBarButtonItemCollection_identifierForBarButtonItem___block_invoke;
  v9[3] = &unk_1E7B75B40;
  v6 = v4;
  v10 = v6;
  v11 = &v12;
  [v5 enumerateKeysAndObjectsUsingBlock:v9];

  v7 = v13[3];
  _Block_object_dispose(&v12, 8);

  return v7;
}

uint64_t __56__PUBarButtonItemCollection_identifierForBarButtonItem___block_invoke(uint64_t result, void *a2, uint64_t a3, _BYTE *a4)
{
  if (*(result + 32) == a3)
  {
    v5 = result;
    result = [a2 integerValue];
    *(*(*(v5 + 40) + 8) + 24) = result;
    *a4 = 1;
  }

  return result;
}

- (id)barButtonItemForIdentifier:(int64_t)a3
{
  v5 = [(PUBarButtonItemCollection *)self _barButtonItems];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v7 = [v5 objectForKeyedSubscript:v6];

  if (!v7)
  {
    v8 = [(PUBarButtonItemCollection *)self dataSource];
    v7 = [v8 barButtonItemCollection:self newBarButtonItemForIdentifier:a3];

    v9 = [(PUBarButtonItemCollection *)self _barButtonItems];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [v9 setObject:v7 forKeyedSubscript:v10];
  }

  return v7;
}

- (void)setIdentifiersOrder:(id)a3
{
  v5 = a3;
  v6 = v5;
  if (self->_identifiersOrder != v5)
  {
    v7 = v5;
    v5 = [v5 isEqualToArray:?];
    v6 = v7;
    if ((v5 & 1) == 0)
    {
      objc_storeStrong(&self->_identifiersOrder, a3);
      v5 = [(PUBarButtonItemCollection *)self _resetSet];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](v5, v6);
}

- (void)_resetSet
{
  v3 = [(PUBarButtonItemCollection *)self _configurationsCache];
  [v3 removeAllObjects];

  [(PUBarButtonItemCollection *)self _setPreviousRequestedSet:0];

  [(PUBarButtonItemCollection *)self _setPreviousResult:0];
}

- (PUBarButtonItemCollection)initWithOptions:(unint64_t)a3
{
  v14.receiver = self;
  v14.super_class = PUBarButtonItemCollection;
  v4 = [(PUBarButtonItemCollection *)&v14 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    configurationsCache = v4->__configurationsCache;
    v4->__configurationsCache = v5;

    v7 = [MEMORY[0x1E695DF90] dictionary];
    barButtonItems = v4->__barButtonItems;
    v4->__barButtonItems = v7;

    v4->__options = a3;
    v9 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:5 target:0 action:0];
    flexibleSpaceBarButtonItem = v4->__flexibleSpaceBarButtonItem;
    v4->__flexibleSpaceBarButtonItem = v9;

    v11 = [objc_alloc(MEMORY[0x1E69DC708]) initWithBarButtonSystemItem:6 target:0 action:0];
    placeholderBarButtonItem = v4->__placeholderBarButtonItem;
    v4->__placeholderBarButtonItem = v11;

    [(UIBarButtonItem *)v4->__placeholderBarButtonItem setWidth:44.0];
  }

  return v4;
}

@end