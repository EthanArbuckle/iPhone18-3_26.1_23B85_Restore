@interface PUBarButtonItemCollection
- (PUBarButtonItemCollection)initWithOptions:(unint64_t)options;
- (PUBarButtonItemCollectionDataSource)dataSource;
- (id)_arrangedBarButtonItems:(id)items identifiers:(id)identifiers;
- (id)_newEntryForIdentifiers:(id)identifiers;
- (id)barButtonItemForIdentifier:(int64_t)identifier;
- (id)orderedBarButtonsItemsForIdentifiers:(id)identifiers;
- (int64_t)identifierForBarButtonItem:(id)item;
- (int64_t)identifierForCustomButton:(id)button;
- (void)_centersButtonsIfNeeded:(id)needed identifiers:(id)identifiers;
- (void)_resetSet;
- (void)setIdentifiersOrder:(id)order;
@end

@implementation PUBarButtonItemCollection

- (PUBarButtonItemCollectionDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (void)_centersButtonsIfNeeded:(id)needed identifiers:(id)identifiers
{
  neededCopy = needed;
  identifiersCopy = identifiers;
  if ([identifiersCopy count] == 2 && -[NSIndexSet count](self->_centeredItemIdentifiers, "count"))
  {
    firstIndex = [identifiersCopy firstIndex];
    lastIndex = [identifiersCopy lastIndex];
    if ([(NSIndexSet *)self->_centeredItemIdentifiers containsIndex:firstIndex])
    {
      v9 = lastIndex;
      lastIndex = firstIndex;
    }

    else
    {
      v9 = firstIndex;
      if (![(NSIndexSet *)self->_centeredItemIdentifiers containsIndex:lastIndex])
      {
        goto LABEL_13;
      }
    }

    if (lastIndex)
    {
      identifiersOrder = self->_identifiersOrder;
      v11 = [MEMORY[0x1E696AD98] numberWithInteger:lastIndex];
      v12 = [(NSArray *)identifiersOrder indexOfObject:v11];

      v13 = self->_identifiersOrder;
      v14 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
      v15 = [(NSArray *)v13 indexOfObject:v14];

      if (v12 != 0x7FFFFFFFFFFFFFFFLL && v15 != 0x7FFFFFFFFFFFFFFFLL)
      {
        _placeholderBarButtonItem = [(PUBarButtonItemCollection *)self _placeholderBarButtonItem];
        if (v12 >= v15)
        {
          [neededCopy addObject:_placeholderBarButtonItem];
        }

        else
        {
          [neededCopy insertObject:_placeholderBarButtonItem atIndex:0];
        }
      }
    }
  }

LABEL_13:
}

- (id)_arrangedBarButtonItems:(id)items identifiers:(id)identifiers
{
  itemsCopy = items;
  identifiersCopy = identifiers;
  if (!itemsCopy || ![itemsCopy count])
  {
    v10 = 0;
    goto LABEL_15;
  }

  [(PUBarButtonItemCollection *)self _centersButtonsIfNeeded:itemsCopy identifiers:identifiersCopy];
  if ((-[PUBarButtonItemCollection _options](self, "_options") & 2) != 0 && [itemsCopy count] == 1)
  {
    _flexibleSpaceBarButtonItem = [(PUBarButtonItemCollection *)self _flexibleSpaceBarButtonItem];
    [itemsCopy insertObject:_flexibleSpaceBarButtonItem atIndex:0];

    _flexibleSpaceBarButtonItem2 = [(PUBarButtonItemCollection *)self _flexibleSpaceBarButtonItem];
    [itemsCopy addObject:_flexibleSpaceBarButtonItem2];
  }

  else
  {
    if ((-[PUBarButtonItemCollection _options](self, "_options") & 4) == 0 || [itemsCopy count] != 1)
    {
      if ((-[PUBarButtonItemCollection _options](self, "_options") & 1) != 0 && [itemsCopy count] >= 2)
      {
        array = [MEMORY[0x1E695DF70] array];
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = __65__PUBarButtonItemCollection__arrangedBarButtonItems_identifiers___block_invoke;
        v15[3] = &unk_1E7B75B90;
        v15[4] = self;
        v12 = array;
        v16 = v12;
        [itemsCopy enumerateObjectsUsingBlock:v15];
        v13 = v12;

        itemsCopy = v13;
      }

      goto LABEL_14;
    }

    _flexibleSpaceBarButtonItem2 = [(PUBarButtonItemCollection *)self _flexibleSpaceBarButtonItem];
    [itemsCopy insertObject:_flexibleSpaceBarButtonItem2 atIndex:0];
  }

LABEL_14:
  itemsCopy = itemsCopy;
  v10 = itemsCopy;
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

- (id)_newEntryForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(identifiersCopy, "count")}];
  identifiersOrder = self->_identifiersOrder;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __53__PUBarButtonItemCollection__newEntryForIdentifiers___block_invoke;
  v11[3] = &unk_1E7B75B68;
  v12 = identifiersCopy;
  selfCopy = self;
  v14 = v5;
  v7 = v5;
  v8 = identifiersCopy;
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

- (id)orderedBarButtonsItemsForIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  v5 = identifiersCopy;
  if (identifiersCopy && [identifiersCopy count])
  {
    _previousRequestedSet = [(PUBarButtonItemCollection *)self _previousRequestedSet];
    v7 = [v5 isEqualToIndexSet:_previousRequestedSet];

    if (!v7 || ([(PUBarButtonItemCollection *)self _previousResult], (v8 = objc_claimAutoreleasedReturnValue()) == 0))
    {
      v9 = [v5 copy];
      _configurationsCache = [(PUBarButtonItemCollection *)self _configurationsCache];
      v8 = [_configurationsCache objectForKey:v9];

      if (!v8)
      {
        v8 = [(PUBarButtonItemCollection *)self _newEntryForIdentifiers:v9];
        _configurationsCache2 = [(PUBarButtonItemCollection *)self _configurationsCache];
        v12 = _configurationsCache2;
        if (v8)
        {
          [_configurationsCache2 setObject:v8 forKey:v9];
        }

        else
        {
          null = [MEMORY[0x1E695DFB0] null];
          [v12 setObject:null forKey:v9];
        }
      }

      [(PUBarButtonItemCollection *)self _setPreviousRequestedSet:v9];
      [(PUBarButtonItemCollection *)self _setPreviousResult:v8];
    }

    null2 = [MEMORY[0x1E695DFB0] null];
    if ([v8 isEqual:null2])
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

- (int64_t)identifierForCustomButton:(id)button
{
  buttonCopy = button;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  _barButtonItems = [(PUBarButtonItemCollection *)self _barButtonItems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __55__PUBarButtonItemCollection_identifierForCustomButton___block_invoke;
  v9[3] = &unk_1E7B75B40;
  v6 = buttonCopy;
  v10 = v6;
  v11 = &v12;
  [_barButtonItems enumerateKeysAndObjectsUsingBlock:v9];

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

- (int64_t)identifierForBarButtonItem:(id)item
{
  itemCopy = item;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  _barButtonItems = [(PUBarButtonItemCollection *)self _barButtonItems];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __56__PUBarButtonItemCollection_identifierForBarButtonItem___block_invoke;
  v9[3] = &unk_1E7B75B40;
  v6 = itemCopy;
  v10 = v6;
  v11 = &v12;
  [_barButtonItems enumerateKeysAndObjectsUsingBlock:v9];

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

- (id)barButtonItemForIdentifier:(int64_t)identifier
{
  _barButtonItems = [(PUBarButtonItemCollection *)self _barButtonItems];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
  v7 = [_barButtonItems objectForKeyedSubscript:v6];

  if (!v7)
  {
    dataSource = [(PUBarButtonItemCollection *)self dataSource];
    v7 = [dataSource barButtonItemCollection:self newBarButtonItemForIdentifier:identifier];

    _barButtonItems2 = [(PUBarButtonItemCollection *)self _barButtonItems];
    v10 = [MEMORY[0x1E696AD98] numberWithInteger:identifier];
    [_barButtonItems2 setObject:v7 forKeyedSubscript:v10];
  }

  return v7;
}

- (void)setIdentifiersOrder:(id)order
{
  orderCopy = order;
  v6 = orderCopy;
  if (self->_identifiersOrder != orderCopy)
  {
    v7 = orderCopy;
    orderCopy = [orderCopy isEqualToArray:?];
    v6 = v7;
    if ((orderCopy & 1) == 0)
    {
      objc_storeStrong(&self->_identifiersOrder, order);
      orderCopy = [(PUBarButtonItemCollection *)self _resetSet];
      v6 = v7;
    }
  }

  MEMORY[0x1EEE66BB8](orderCopy, v6);
}

- (void)_resetSet
{
  _configurationsCache = [(PUBarButtonItemCollection *)self _configurationsCache];
  [_configurationsCache removeAllObjects];

  [(PUBarButtonItemCollection *)self _setPreviousRequestedSet:0];

  [(PUBarButtonItemCollection *)self _setPreviousResult:0];
}

- (PUBarButtonItemCollection)initWithOptions:(unint64_t)options
{
  v14.receiver = self;
  v14.super_class = PUBarButtonItemCollection;
  v4 = [(PUBarButtonItemCollection *)&v14 init];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DEE0]);
    configurationsCache = v4->__configurationsCache;
    v4->__configurationsCache = v5;

    dictionary = [MEMORY[0x1E695DF90] dictionary];
    barButtonItems = v4->__barButtonItems;
    v4->__barButtonItems = dictionary;

    v4->__options = options;
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