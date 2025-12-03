@interface PXImportAssetsDataSource
- (BOOL)hasAlreadyImportedSection;
- (PXImportAssetsDataSource)init;
- (PXImportAssetsDataSource)initWithAssetCollections:(id)collections assetsMap:(id)map startsAtEnd:(BOOL)end;
- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference;
- (PXSimpleIndexPath)itemIndexPathForItem:(SEL)item;
- (id)allItems;
- (id)allItemsUnsorted;
- (id)allSelectableItems;
- (id)alreadyImportedCollection;
- (id)alreadyImportedItems;
- (id)assetCollectionForIdentifier:(id)identifier;
- (id)assetCollectionForSection:(unint64_t)section;
- (id)itemForImportAssetUuid:(id)uuid;
- (id)notYetImportedItems;
- (id)objectAtIndexPath:(PXSimpleIndexPath *)path;
- (int64_t)numberOfItemsInSection:(int64_t)section;
- (int64_t)sectionForAssetCollection:(id)collection;
- (unint64_t)numberOfAlreadyImportedItems;
- (unint64_t)numberOfItems;
- (unint64_t)numberOfNotYetImportedItems;
- (unint64_t)numberOfSelectableItems;
@end

@implementation PXImportAssetsDataSource

- (id)itemForImportAssetUuid:(id)uuid
{
  uuidCopy = uuid;
  assetsMap = [(PXImportAssetsDataSource *)self assetsMap];
  v6 = [assetsMap objectForKeyedSubscript:uuidCopy];

  return v6;
}

- (id)alreadyImportedItems
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  assetCollections = [(PXImportAssetsDataSource *)self assetCollections];
  v5 = [assetCollections countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(assetCollections);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __48__PXImportAssetsDataSource_alreadyImportedItems__block_invoke;
        v11[3] = &unk_1E772CB28;
        v12 = v3;
        [v9 arrangedObjects:v11];
      }

      v6 = [assetCollections countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

void __48__PXImportAssetsDataSource_alreadyImportedItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AE18];
  v4 = a2;
  v5 = [v3 predicateWithBlock:&__block_literal_global_34];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  [*(a1 + 32) addObjectsFromArray:v6];
}

- (id)notYetImportedItems
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  assetCollections = [(PXImportAssetsDataSource *)self assetCollections];
  v5 = [assetCollections countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(assetCollections);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __47__PXImportAssetsDataSource_notYetImportedItems__block_invoke;
        v11[3] = &unk_1E772CB28;
        v12 = v3;
        [v9 arrangedObjects:v11];
      }

      v6 = [assetCollections countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

void __47__PXImportAssetsDataSource_notYetImportedItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AE18];
  v4 = a2;
  v5 = [v3 predicateWithBlock:&__block_literal_global_32];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  [*(a1 + 32) addObjectsFromArray:v6];
}

- (id)allItemsUnsorted
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  assetCollections = [(PXImportAssetsDataSource *)self assetCollections];
  v5 = [assetCollections countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(assetCollections);
        }

        unsortedObjects = [*(*(&v11 + 1) + 8 * i) unsortedObjects];
        [v3 addObjectsFromArray:unsortedObjects];
      }

      v6 = [assetCollections countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)allSelectableItems
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  assetCollections = [(PXImportAssetsDataSource *)self assetCollections];
  v5 = [assetCollections countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(assetCollections);
        }

        unsortedObjects = [*(*(&v13 + 1) + 8 * i) unsortedObjects];
        firstObject = [unsortedObjects firstObject];
        isSelectable = [firstObject isSelectable];

        if (isSelectable)
        {
          [v3 addObjectsFromArray:unsortedObjects];
        }
      }

      v6 = [assetCollections countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

- (id)allItems
{
  v18 = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  assetCollections = [(PXImportAssetsDataSource *)self assetCollections];
  v5 = [assetCollections countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(assetCollections);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v11[0] = MEMORY[0x1E69E9820];
        v11[1] = 3221225472;
        v11[2] = __36__PXImportAssetsDataSource_allItems__block_invoke;
        v11[3] = &unk_1E772CB28;
        v12 = v3;
        [v9 arrangedObjects:v11];
      }

      v6 = [assetCollections countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return v3;
}

void __36__PXImportAssetsDataSource_allItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if ([v3 count])
  {
    [*(a1 + 32) addObjectsFromArray:v3];
  }
}

- (id)alreadyImportedCollection
{
  v3 = +[PXImportItemViewModel alreadyImportedGroupIdentifier];
  assetCollectionsById = [(PXImportAssetsDataSource *)self assetCollectionsById];
  v5 = [assetCollectionsById objectForKeyedSubscript:v3];

  return v5;
}

- (BOOL)hasAlreadyImportedSection
{
  alreadyImportedCollection = [(PXImportAssetsDataSource *)self alreadyImportedCollection];
  v3 = alreadyImportedCollection != 0;

  return v3;
}

- (unint64_t)numberOfItems
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  assetCollections = [(PXImportAssetsDataSource *)self assetCollections];
  v3 = [assetCollections countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v6 = *v10;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(assetCollections);
        }

        v5 += [*(*(&v9 + 1) + 8 * i) numberOfItems];
      }

      v4 = [assetCollections countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (unint64_t)numberOfSelectableItems
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  assetCollections = [(PXImportAssetsDataSource *)self assetCollections];
  v3 = [assetCollections countByEnumeratingWithState:&v10 objects:v18 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(assetCollections);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __51__PXImportAssetsDataSource_numberOfSelectableItems__block_invoke;
        v9[3] = &unk_1E7730798;
        v9[4] = &v14;
        [v6 arrangedObjects:v9];
        ++v5;
      }

      while (v3 != v5);
      v3 = [assetCollections countByEnumeratingWithState:&v10 objects:v18 count:16];
    }

    while (v3);
  }

  v7 = v15[3];
  _Block_object_dispose(&v14, 8);
  return v7;
}

void __51__PXImportAssetsDataSource_numberOfSelectableItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AE18];
  v4 = a2;
  v5 = [v3 predicateWithBlock:&__block_literal_global_29];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  *(*(*(a1 + 32) + 8) + 24) += [v6 count];
}

- (unint64_t)numberOfAlreadyImportedItems
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  assetCollections = [(PXImportAssetsDataSource *)self assetCollections];
  v3 = [assetCollections countByEnumeratingWithState:&v10 objects:v18 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(assetCollections);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __56__PXImportAssetsDataSource_numberOfAlreadyImportedItems__block_invoke;
        v9[3] = &unk_1E7730798;
        v9[4] = &v14;
        [v6 arrangedObjects:v9];
        ++v5;
      }

      while (v3 != v5);
      v3 = [assetCollections countByEnumeratingWithState:&v10 objects:v18 count:16];
    }

    while (v3);
  }

  v7 = v15[3];
  _Block_object_dispose(&v14, 8);
  return v7;
}

void __56__PXImportAssetsDataSource_numberOfAlreadyImportedItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AE18];
  v4 = a2;
  v5 = [v3 predicateWithBlock:&__block_literal_global_27];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  *(*(*(a1 + 32) + 8) + 24) += [v6 count];
}

BOOL __56__PXImportAssetsDataSource_numberOfAlreadyImportedItems__block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  if ([v2 isDuplicate])
  {
    v3 = 1;
  }

  else
  {
    v4 = [v2 importDate];
    v3 = v4 != 0;
  }

  return v3;
}

- (unint64_t)numberOfNotYetImportedItems
{
  v19 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  assetCollections = [(PXImportAssetsDataSource *)self assetCollections];
  v3 = [assetCollections countByEnumeratingWithState:&v10 objects:v18 count:16];
  if (v3)
  {
    v4 = *v11;
    do
    {
      v5 = 0;
      do
      {
        if (*v11 != v4)
        {
          objc_enumerationMutation(assetCollections);
        }

        v6 = *(*(&v10 + 1) + 8 * v5);
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __55__PXImportAssetsDataSource_numberOfNotYetImportedItems__block_invoke;
        v9[3] = &unk_1E7730798;
        v9[4] = &v14;
        [v6 arrangedObjects:v9];
        ++v5;
      }

      while (v3 != v5);
      v3 = [assetCollections countByEnumeratingWithState:&v10 objects:v18 count:16];
    }

    while (v3);
  }

  v7 = v15[3];
  _Block_object_dispose(&v14, 8);
  return v7;
}

void __55__PXImportAssetsDataSource_numberOfNotYetImportedItems__block_invoke(uint64_t a1, void *a2)
{
  v3 = MEMORY[0x1E696AE18];
  v4 = a2;
  v5 = [v3 predicateWithBlock:&__block_literal_global_910];
  v6 = [v4 filteredArrayUsingPredicate:v5];

  *(*(*(a1 + 32) + 8) + 24) += [v6 count];
}

- (PXSimpleIndexPath)itemIndexPathForItem:(SEL)item
{
  v12 = a4;
  v6 = *(off_1E7722228 + 1);
  *&retstr->dataSourceIdentifier = *off_1E7722228;
  *&retstr->item = v6;
  if ([(NSArray *)self->_assetCollections count])
  {
    v7 = 0;
    while (1)
    {
      v8 = [(NSArray *)self->_assetCollections objectAtIndexedSubscript:v7];
      v9 = [v8 indexOfItem:v12];
      if (v9 != 0x7FFFFFFFFFFFFFFFLL)
      {
        break;
      }

      if (++v7 >= [(NSArray *)self->_assetCollections count])
      {
        goto LABEL_7;
      }
    }

    v10 = v9;
    retstr->dataSourceIdentifier = [(PXImportAssetsDataSource *)self identifier];
    retstr->section = v7;
    retstr->item = v10;
    retstr->subitem = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_7:

  return result;
}

- (int64_t)sectionForAssetCollection:(id)collection
{
  collectionCopy = collection;
  identifier = [collectionCopy identifier];
  assetCollectionsById = [(PXImportAssetsDataSource *)self assetCollectionsById];
  v7 = [assetCollectionsById objectForKeyedSubscript:identifier];

  if (v7)
  {
    assetCollections = [(PXImportAssetsDataSource *)self assetCollections];
    v9 = [assetCollections indexOfObject:collectionCopy];
  }

  else
  {
    v9 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v9;
}

- (id)assetCollectionForIdentifier:(id)identifier
{
  if (identifier)
  {
    identifierCopy = identifier;
    assetCollectionsById = [(PXImportAssetsDataSource *)self assetCollectionsById];
    v6 = [assetCollectionsById objectForKeyedSubscript:identifierCopy];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)assetCollectionForSection:(unint64_t)section
{
  assetCollections = [(PXImportAssetsDataSource *)self assetCollections];
  v6 = [assetCollections count];

  if (v6 <= section)
  {
    v8 = 0;
  }

  else
  {
    assetCollections2 = [(PXImportAssetsDataSource *)self assetCollections];
    v8 = [assetCollections2 objectAtIndexedSubscript:section];
  }

  return v8;
}

- (PXSimpleIndexPath)indexPathForObjectReference:(SEL)reference
{
  v7 = a4;
  v23 = 0;
  v24 = &v23;
  v25 = 0x4010000000;
  v26 = &unk_1A561E057;
  v8 = *(off_1E7722228 + 1);
  v27 = *off_1E7722228;
  v28 = v8;
  itemObject = [v7 itemObject];
  if (!itemObject)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = objc_opt_class();
    v16 = NSStringFromClass(v15);
    [currentHandler handleFailureInMethod:reference object:self file:@"PXImportAssetsDataSource.m" lineNumber:100 description:{@"%@ should be an instance inheriting from %@, but it is nil", @"objectReference.itemObject", v16}];
LABEL_6:

    goto LABEL_3;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = objc_opt_class();
    v16 = NSStringFromClass(v17);
    px_descriptionForAssertionMessage = [itemObject px_descriptionForAssertionMessage];
    [currentHandler handleFailureInMethod:reference object:self file:@"PXImportAssetsDataSource.m" lineNumber:100 description:{@"%@ should be an instance inheriting from %@, but it is %@", @"objectReference.itemObject", v16, px_descriptionForAssertionMessage}];

    goto LABEL_6;
  }

LABEL_3:
  assetCollections = self->_assetCollections;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __56__PXImportAssetsDataSource_indexPathForObjectReference___block_invoke;
  v19[3] = &unk_1E772CAE0;
  v11 = itemObject;
  selfCopy = self;
  v22 = &v23;
  v20 = v11;
  [(NSArray *)assetCollections enumerateObjectsUsingBlock:v19];
  v12 = *(v24 + 3);
  *&retstr->dataSourceIdentifier = *(v24 + 2);
  *&retstr->item = v12;

  _Block_object_dispose(&v23, 8);
  return result;
}

uint64_t __56__PXImportAssetsDataSource_indexPathForObjectReference___block_invoke(uint64_t a1, void *a2, uint64_t a3, _BYTE *a4)
{
  result = [a2 indexOfItem:*(a1 + 32)];
  if (result != 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = result;
    result = [*(a1 + 40) identifier];
    v9 = *(*(a1 + 48) + 8);
    v9[4] = result;
    v9[5] = a3;
    v9[6] = v8;
    v9[7] = 0x7FFFFFFFFFFFFFFFLL;
    *a4 = 1;
  }

  return result;
}

- (id)objectAtIndexPath:(PXSimpleIndexPath *)path
{
  v5 = *off_1E7721F68;
  if (path->dataSourceIdentifier != *off_1E7721F68 && path->subitem != 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXImportAssetsDataSource.m" lineNumber:85 description:@"Code which should be unreachable has been reached"];

    abort();
  }

  v6 = [(NSArray *)self->_assetCollections objectAtIndexedSubscript:path->section];
  v7 = v6;
  item = path->item;
  if (path->dataSourceIdentifier != v5 && path->section != 0x7FFFFFFFFFFFFFFFLL && item == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = v6;
  }

  else
  {
    v11 = [v6 itemAtIndex:item];
  }

  v12 = v11;

  return v12;
}

- (int64_t)numberOfItemsInSection:(int64_t)section
{
  if ([(NSArray *)self->_assetCollections count]<= section)
  {
    return 0;
  }

  v5 = [(NSArray *)self->_assetCollections objectAtIndexedSubscript:section];
  numberOfItems = [v5 numberOfItems];

  return numberOfItems;
}

- (PXImportAssetsDataSource)initWithAssetCollections:(id)collections assetsMap:(id)map startsAtEnd:(BOOL)end
{
  v33 = *MEMORY[0x1E69E9840];
  collectionsCopy = collections;
  mapCopy = map;
  v31.receiver = self;
  v31.super_class = PXImportAssetsDataSource;
  v10 = [(PXImportAssetsDataSource *)&v31 init];
  if (v10)
  {
    endCopy = end;
    v11 = [collectionsCopy copy];
    assetCollections = v10->_assetCollections;
    v10->_assetCollections = v11;

    v13 = [mapCopy copy];
    assetsMap = v10->_assetsMap;
    v10->_assetsMap = v13;

    v15 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{-[NSArray count](v10->_assetCollections, "count")}];
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v30 = 0u;
    v16 = v10->_assetCollections;
    v17 = [(NSArray *)v16 countByEnumeratingWithState:&v27 objects:v32 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v28;
      do
      {
        for (i = 0; i != v18; ++i)
        {
          if (*v28 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v27 + 1) + 8 * i);
          identifier = [v21 identifier];
          [v15 setObject:v21 forKeyedSubscript:identifier];
        }

        v18 = [(NSArray *)v16 countByEnumeratingWithState:&v27 objects:v32 count:16];
      }

      while (v18);
    }

    v23 = [v15 copy];
    assetCollectionsById = v10->_assetCollectionsById;
    v10->_assetCollectionsById = v23;

    v10->_startsAtEnd = endCopy;
  }

  return v10;
}

- (PXImportAssetsDataSource)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXImportAssetsDataSource.m" lineNumber:28 description:{@"%s is not available as initializer", "-[PXImportAssetsDataSource init]"}];

  abort();
}

@end