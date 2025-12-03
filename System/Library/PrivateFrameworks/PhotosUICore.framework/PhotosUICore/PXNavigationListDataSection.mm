@interface PXNavigationListDataSection
- (PXNavigationListDataSection)initWithCollectionsDataSection:(id)section indentationLevel:(int64_t)level topLevelIdentifier:(id)identifier childDataSections:(id)sections childIndexHints:(id)hints skipAssetCountFetches:(BOOL)fetches;
- (PXNavigationListDataSection)initWithOutlineObject:(id)object;
- (id)content;
- (id)debugDescription;
- (id)existingFetchResultForListItem:(id)item;
- (id)objectAtIndex:(int64_t)index;
- (id)parentOfListItemAtIndex:(int64_t)index localIndex:(int64_t *)localIndex;
- (int64_t)count;
- (int64_t)indexForListItem:(id)item;
- (int64_t)indexInCollectionsDataSectionOfListItem:(id)item hintIndex:(int64_t)index;
- (int64_t)validatedIndexOfListItem:(id)item hintIndex:(int64_t)index;
- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count;
- (void)_createDataSubsectionsIfNecessary;
@end

@implementation PXNavigationListDataSection

- (id)debugDescription
{
  v3 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithFormat:", @"<%@: %p identifier = %ld, numberOfListItems = %ld, listItems = ("), objc_opt_class(), self, -[PXDataSection identifier](self, "identifier"), -[PXNavigationListDataSection count](self, "count");;
  if ([(PXNavigationListDataSection *)self count]>= 1)
  {
    v4 = 0;
    do
    {
      v5 = [(PXNavigationListDataSection *)self objectAtIndex:v4];
      visualDescription = [v5 visualDescription];
      [v3 appendFormat:@"\n\t[%ld]%@", v4, visualDescription];

      ++v4;
    }

    while (v4 < [(PXNavigationListDataSection *)self count]);
  }

  [v3 appendString:@"\n>"]);

  return v3;
}

- (id)parentOfListItemAtIndex:(int64_t)index localIndex:(int64_t *)localIndex
{
  v7 = [(PXNavigationListDataSection *)self _dataSubsectionIndexForListItemAtIndex:?];
  if (v7)
  {
    v9 = [(NSArray *)self->_dataSubsections objectAtIndex:v7];
    v10 = [(NSArray *)self->_dataSubsections objectAtIndex:v7 - 1];
    externalStartIndex = [v9 externalStartIndex];
    topLevelIdentifier = [(PXNavigationListDataSection *)self topLevelIdentifier];
    v8 = [v10 listItemAtExternalIndex:externalStartIndex - 1 topLevelIdentifier:topLevelIdentifier];

    if (localIndex)
    {
      *localIndex = index - externalStartIndex;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)indexInCollectionsDataSectionOfListItem:(id)item hintIndex:(int64_t)index
{
  v5 = [(PXNavigationListDataSection *)self validatedIndexOfListItem:item hintIndex:index];
  v6 = 0x7FFFFFFFFFFFFFFFLL;
  if (v5 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = v5;
    if (([(PXNavigationListDataSection *)self _dataSubsectionIndexForListItemAtIndex:v5]& 1) == 0)
    {
      v8 = [(NSArray *)self->_dataSubsections objectAtIndex:?];
      v9 = [v8 indexDelta] + v7;
      v6 = v9 - [v8 externalStartIndex];
    }
  }

  return v6;
}

- (int64_t)validatedIndexOfListItem:(id)item hintIndex:(int64_t)index
{
  itemCopy = item;
  if (index == 0x7FFFFFFFFFFFFFFFLL || (-[PXNavigationListDataSection objectAtIndex:](self, "objectAtIndex:", index), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqual:itemCopy], v7, (v8 & 1) == 0))
  {
    index = [(PXNavigationListDataSection *)self indexForListItem:itemCopy];
  }

  return index;
}

- (int64_t)indexForListItem:(id)item
{
  itemCopy = item;
  if (itemCopy && [(PXNavigationListDataSection *)self count]>= 1)
  {
    v5 = 0;
    while (1)
    {
      v6 = [(PXNavigationListDataSection *)self objectAtIndex:v5];
      v7 = [itemCopy isEqual:v6];

      if (v7)
      {
        break;
      }

      if (++v5 >= [(PXNavigationListDataSection *)self count])
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v5;
}

- (unint64_t)countByEnumeratingWithState:(id *)state objects:(id *)objects count:(unint64_t)count
{
  childDataSections = [(PXNavigationListDataSection *)self childDataSections];
  v11 = [childDataSections count];

  if (v11)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXNavigationListDataSection.m" lineNumber:244 description:@"This code path is not implemented."];

    abort();
  }

  collectionsDataSection = [(PXNavigationListDataSection *)self collectionsDataSection];
  v13 = [collectionsDataSection countByEnumeratingWithState:state objects:objects count:count];

  return v13;
}

- (id)objectAtIndex:(int64_t)index
{
  v5 = [(NSArray *)self->_dataSubsections objectAtIndex:[(PXNavigationListDataSection *)self _dataSubsectionIndexForListItemAtIndex:?]];
  topLevelIdentifier = [(PXNavigationListDataSection *)self topLevelIdentifier];
  v7 = [v5 listItemAtExternalIndex:index topLevelIdentifier:topLevelIdentifier];

  return v7;
}

- (int64_t)count
{
  v20 = *MEMORY[0x1E69E9840];
  countNumber = self->_countNumber;
  if (!countNumber)
  {
    collectionsDataSection = [(PXNavigationListDataSection *)self collectionsDataSection];
    v5 = [collectionsDataSection count];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    childDataSections = [(PXNavigationListDataSection *)self childDataSections];
    allValues = [childDataSections allValues];

    v8 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v16;
      do
      {
        v11 = 0;
        do
        {
          if (*v16 != v10)
          {
            objc_enumerationMutation(allValues);
          }

          v5 += [*(*(&v15 + 1) + 8 * v11++) count];
        }

        while (v9 != v11);
        v9 = [allValues countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v9);
    }

    v12 = [MEMORY[0x1E696AD98] numberWithInteger:v5];
    v13 = self->_countNumber;
    self->_countNumber = v12;

    countNumber = self->_countNumber;
  }

  return [(NSNumber *)countNumber integerValue];
}

- (id)content
{
  collectionsDataSection = [(PXNavigationListDataSection *)self collectionsDataSection];
  content = [collectionsDataSection content];

  return content;
}

- (id)existingFetchResultForListItem:(id)item
{
  v4 = [(PXNavigationListDataSection *)self indexForListItem:item];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    collectionsDataSection = [(PXNavigationListDataSection *)self collectionsDataSection];
    v5 = [collectionsDataSection existingAssetsFetchResultAtIndex:v6];
  }

  return v5;
}

- (void)_createDataSubsectionsIfNecessary
{
  if (!self->_dataSubsectionIndexes)
  {
    v4 = objc_opt_new();
    v5 = objc_opt_new();
    childIndexHints = [(PXNavigationListDataSection *)self childIndexHints];
    collectionsDataSection = [(PXNavigationListDataSection *)self collectionsDataSection];
    childDataSections = [(PXNavigationListDataSection *)self childDataSections];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __64__PXNavigationListDataSection__createDataSubsectionsIfNecessary__block_invoke;
    v34[3] = &unk_1E7748EA8;
    v25 = childIndexHints;
    v35 = v25;
    v9 = collectionsDataSection;
    v36 = v9;
    v10 = v5;
    v37 = v10;
    v11 = v4;
    selfCopy = self;
    v40 = a2;
    v38 = v11;
    [childDataSections enumerateKeysAndObjectsUsingBlock:v34];

    v12 = objc_opt_new();
    v13 = objc_opt_new();
    v14 = [PXNavigationListDataSubsection alloc];
    collectionsDataSection2 = [(PXNavigationListDataSection *)self collectionsDataSection];
    v16 = -[PXNavigationListDataSubsection initWithDataSection:indexDelta:expandedIndex:indentationLevel:externalStartIndex:skipAssetCountFetches:](v14, "initWithDataSection:indexDelta:expandedIndex:indentationLevel:externalStartIndex:skipAssetCountFetches:", collectionsDataSection2, 0, [v10 firstIndex], -[PXNavigationListDataSection indentationLevel](self, "indentationLevel"), 0, self->_skipAssetCountFetches);
    [v12 addObject:v16];

    [v13 addIndex:0];
    v33[0] = 0;
    v33[1] = v33;
    v33[2] = 0x2020000000;
    v33[3] = 0;
    v26[0] = MEMORY[0x1E69E9820];
    v26[1] = 3221225472;
    v26[2] = __64__PXNavigationListDataSection__createDataSubsectionsIfNecessary__block_invoke_2;
    v26[3] = &unk_1E7748ED0;
    v17 = v11;
    v27 = v17;
    v32 = v33;
    v18 = v12;
    v28 = v18;
    selfCopy2 = self;
    v19 = v13;
    v30 = v19;
    v20 = v10;
    v31 = v20;
    [v20 enumerateIndexesUsingBlock:v26];
    dataSubsectionIndexes = self->_dataSubsectionIndexes;
    self->_dataSubsectionIndexes = v19;
    v22 = v19;

    dataSubsections = self->_dataSubsections;
    self->_dataSubsections = v18;
    v24 = v18;

    _Block_object_dispose(v33, 8);
  }
}

void __64__PXNavigationListDataSection__createDataSubsectionsIfNecessary__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = a2;
  v5 = a3;
  v6 = [*(a1 + 32) objectForKeyedSubscript:v16];
  v7 = v6;
  if (v6 && (v8 = [v6 integerValue], v8 != 0x7FFFFFFFFFFFFFFFLL) && (v9 = v8, v8 < objc_msgSend(*(a1 + 40), "count")) && (objc_msgSend(*(a1 + 40), "objectAtIndex:", v9), v10 = objc_claimAutoreleasedReturnValue(), v11 = objc_msgSend(v10, "isEqual:", v16), v10, (v11 & 1) != 0) || (v12 = *(a1 + 40), objc_msgSend(v16, "collection"), v13 = objc_claimAutoreleasedReturnValue(), v9 = objc_msgSend(v12, "indexOfCollection:", v13), v13, v9 != 0x7FFFFFFFFFFFFFFFLL))
  {
    [*(a1 + 48) addIndex:v9];
    v14 = *(a1 + 56);
    v15 = [MEMORY[0x1E696AD98] numberWithInteger:v9];
    [v14 setObject:v5 forKey:v15];
  }
}

void __64__PXNavigationListDataSection__createDataSubsectionsIfNecessary__block_invoke_2(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a2];
  v16 = [v4 objectForKey:v5];

  v6 = *(*(*(a1 + 72) + 8) + 24);
  v7 = a2 + 1;
  v8 = *(a1 + 40);
  v9 = -[PXNavigationListDataSubsection initWithDataSection:indexDelta:expandedIndex:indentationLevel:externalStartIndex:skipAssetCountFetches:]([PXNavigationListDataSubsection alloc], "initWithDataSection:indexDelta:expandedIndex:indentationLevel:externalStartIndex:skipAssetCountFetches:", v16, 0, 0x7FFFFFFFFFFFFFFFLL, [v16 indentationLevel], a2 + 1 + v6, *(*(a1 + 48) + 56));
  [v8 addObject:v9];

  [*(a1 + 56) addIndex:a2 + 1 + v6];
  *(*(*(a1 + 72) + 8) + 24) += [v16 count];
  v10 = [*(a1 + 64) indexGreaterThanIndex:a2];
  v11 = *(*(*(a1 + 72) + 8) + 24);
  v12 = *(a1 + 40);
  v13 = [PXNavigationListDataSubsection alloc];
  v14 = [*(a1 + 48) collectionsDataSection];
  v15 = -[PXNavigationListDataSubsection initWithDataSection:indexDelta:expandedIndex:indentationLevel:externalStartIndex:skipAssetCountFetches:](v13, "initWithDataSection:indexDelta:expandedIndex:indentationLevel:externalStartIndex:skipAssetCountFetches:", v14, v7, v10, [*(a1 + 48) indentationLevel], v7 + v11, *(*(a1 + 48) + 56));
  [v12 addObject:v15];

  [*(a1 + 56) addIndex:v7 + v11];
}

- (PXNavigationListDataSection)initWithOutlineObject:(id)object
{
  objectCopy = object;
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXNavigationListDataSection.m" lineNumber:138 description:{@"%s is not available as initializer", "-[PXNavigationListDataSection initWithOutlineObject:]"}];

  abort();
}

- (PXNavigationListDataSection)initWithCollectionsDataSection:(id)section indentationLevel:(int64_t)level topLevelIdentifier:(id)identifier childDataSections:(id)sections childIndexHints:(id)hints skipAssetCountFetches:(BOOL)fetches
{
  sectionCopy = section;
  identifierCopy = identifier;
  sectionsCopy = sections;
  hintsCopy = hints;
  v20 = [sectionsCopy count];
  if (v20 != [hintsCopy count])
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PXNavigationListDataSection.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"childDataSections.count == childIndexHints.count"}];
  }

  outlineObject = [sectionCopy outlineObject];
  v34.receiver = self;
  v34.super_class = PXNavigationListDataSection;
  v22 = [(PXDataSection *)&v34 initWithOutlineObject:outlineObject];

  if (v22)
  {
    objc_storeStrong(&v22->_collectionsDataSection, section);
    v22->_indentationLevel = level;
    v23 = [identifierCopy copy];
    topLevelIdentifier = v22->_topLevelIdentifier;
    v22->_topLevelIdentifier = v23;

    v25 = [sectionsCopy copy];
    v26 = v25;
    v27 = MEMORY[0x1E695E0F8];
    if (v25)
    {
      v28 = v25;
    }

    else
    {
      v28 = MEMORY[0x1E695E0F8];
    }

    objc_storeStrong(&v22->_childDataSections, v28);

    v29 = [hintsCopy copy];
    v30 = v29;
    if (v29)
    {
      v31 = v29;
    }

    else
    {
      v31 = v27;
    }

    objc_storeStrong(&v22->_childIndexHints, v31);

    v22->_skipAssetCountFetches = fetches;
  }

  return v22;
}

@end