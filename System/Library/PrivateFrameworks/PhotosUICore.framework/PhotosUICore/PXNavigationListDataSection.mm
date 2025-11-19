@interface PXNavigationListDataSection
- (PXNavigationListDataSection)initWithCollectionsDataSection:(id)a3 indentationLevel:(int64_t)a4 topLevelIdentifier:(id)a5 childDataSections:(id)a6 childIndexHints:(id)a7 skipAssetCountFetches:(BOOL)a8;
- (PXNavigationListDataSection)initWithOutlineObject:(id)a3;
- (id)content;
- (id)debugDescription;
- (id)existingFetchResultForListItem:(id)a3;
- (id)objectAtIndex:(int64_t)a3;
- (id)parentOfListItemAtIndex:(int64_t)a3 localIndex:(int64_t *)a4;
- (int64_t)count;
- (int64_t)indexForListItem:(id)a3;
- (int64_t)indexInCollectionsDataSectionOfListItem:(id)a3 hintIndex:(int64_t)a4;
- (int64_t)validatedIndexOfListItem:(id)a3 hintIndex:(int64_t)a4;
- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5;
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
      v6 = [v5 visualDescription];
      [v3 appendFormat:@"\n\t[%ld]%@", v4, v6];

      ++v4;
    }

    while (v4 < [(PXNavigationListDataSection *)self count]);
  }

  [v3 appendString:@"\n>"]);

  return v3;
}

- (id)parentOfListItemAtIndex:(int64_t)a3 localIndex:(int64_t *)a4
{
  v7 = [(PXNavigationListDataSection *)self _dataSubsectionIndexForListItemAtIndex:?];
  if (v7)
  {
    v9 = [(NSArray *)self->_dataSubsections objectAtIndex:v7];
    v10 = [(NSArray *)self->_dataSubsections objectAtIndex:v7 - 1];
    v11 = [v9 externalStartIndex];
    v12 = [(PXNavigationListDataSection *)self topLevelIdentifier];
    v8 = [v10 listItemAtExternalIndex:v11 - 1 topLevelIdentifier:v12];

    if (a4)
    {
      *a4 = a3 - v11;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (int64_t)indexInCollectionsDataSectionOfListItem:(id)a3 hintIndex:(int64_t)a4
{
  v5 = [(PXNavigationListDataSection *)self validatedIndexOfListItem:a3 hintIndex:a4];
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

- (int64_t)validatedIndexOfListItem:(id)a3 hintIndex:(int64_t)a4
{
  v6 = a3;
  if (a4 == 0x7FFFFFFFFFFFFFFFLL || (-[PXNavigationListDataSection objectAtIndex:](self, "objectAtIndex:", a4), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 isEqual:v6], v7, (v8 & 1) == 0))
  {
    a4 = [(PXNavigationListDataSection *)self indexForListItem:v6];
  }

  return a4;
}

- (int64_t)indexForListItem:(id)a3
{
  v4 = a3;
  if (v4 && [(PXNavigationListDataSection *)self count]>= 1)
  {
    v5 = 0;
    while (1)
    {
      v6 = [(PXNavigationListDataSection *)self objectAtIndex:v5];
      v7 = [v4 isEqual:v6];

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

- (unint64_t)countByEnumeratingWithState:(id *)a3 objects:(id *)a4 count:(unint64_t)a5
{
  v10 = [(PXNavigationListDataSection *)self childDataSections];
  v11 = [v10 count];

  if (v11)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PXNavigationListDataSection.m" lineNumber:244 description:@"This code path is not implemented."];

    abort();
  }

  v12 = [(PXNavigationListDataSection *)self collectionsDataSection];
  v13 = [v12 countByEnumeratingWithState:a3 objects:a4 count:a5];

  return v13;
}

- (id)objectAtIndex:(int64_t)a3
{
  v5 = [(NSArray *)self->_dataSubsections objectAtIndex:[(PXNavigationListDataSection *)self _dataSubsectionIndexForListItemAtIndex:?]];
  v6 = [(PXNavigationListDataSection *)self topLevelIdentifier];
  v7 = [v5 listItemAtExternalIndex:a3 topLevelIdentifier:v6];

  return v7;
}

- (int64_t)count
{
  v20 = *MEMORY[0x1E69E9840];
  countNumber = self->_countNumber;
  if (!countNumber)
  {
    v4 = [(PXNavigationListDataSection *)self collectionsDataSection];
    v5 = [v4 count];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v6 = [(PXNavigationListDataSection *)self childDataSections];
    v7 = [v6 allValues];

    v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
            objc_enumerationMutation(v7);
          }

          v5 += [*(*(&v15 + 1) + 8 * v11++) count];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
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
  v2 = [(PXNavigationListDataSection *)self collectionsDataSection];
  v3 = [v2 content];

  return v3;
}

- (id)existingFetchResultForListItem:(id)a3
{
  v4 = [(PXNavigationListDataSection *)self indexForListItem:a3];
  if (v4 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v5 = 0;
  }

  else
  {
    v6 = v4;
    v7 = [(PXNavigationListDataSection *)self collectionsDataSection];
    v5 = [v7 existingAssetsFetchResultAtIndex:v6];
  }

  return v5;
}

- (void)_createDataSubsectionsIfNecessary
{
  if (!self->_dataSubsectionIndexes)
  {
    v4 = objc_opt_new();
    v5 = objc_opt_new();
    v6 = [(PXNavigationListDataSection *)self childIndexHints];
    v7 = [(PXNavigationListDataSection *)self collectionsDataSection];
    v8 = [(PXNavigationListDataSection *)self childDataSections];
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = __64__PXNavigationListDataSection__createDataSubsectionsIfNecessary__block_invoke;
    v34[3] = &unk_1E7748EA8;
    v25 = v6;
    v35 = v25;
    v9 = v7;
    v36 = v9;
    v10 = v5;
    v37 = v10;
    v11 = v4;
    v39 = self;
    v40 = a2;
    v38 = v11;
    [v8 enumerateKeysAndObjectsUsingBlock:v34];

    v12 = objc_opt_new();
    v13 = objc_opt_new();
    v14 = [PXNavigationListDataSubsection alloc];
    v15 = [(PXNavigationListDataSection *)self collectionsDataSection];
    v16 = -[PXNavigationListDataSubsection initWithDataSection:indexDelta:expandedIndex:indentationLevel:externalStartIndex:skipAssetCountFetches:](v14, "initWithDataSection:indexDelta:expandedIndex:indentationLevel:externalStartIndex:skipAssetCountFetches:", v15, 0, [v10 firstIndex], -[PXNavigationListDataSection indentationLevel](self, "indentationLevel"), 0, self->_skipAssetCountFetches);
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
    v29 = self;
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

- (PXNavigationListDataSection)initWithOutlineObject:(id)a3
{
  v5 = a3;
  v6 = [MEMORY[0x1E696AAA8] currentHandler];
  [v6 handleFailureInMethod:a2 object:self file:@"PXNavigationListDataSection.m" lineNumber:138 description:{@"%s is not available as initializer", "-[PXNavigationListDataSection initWithOutlineObject:]"}];

  abort();
}

- (PXNavigationListDataSection)initWithCollectionsDataSection:(id)a3 indentationLevel:(int64_t)a4 topLevelIdentifier:(id)a5 childDataSections:(id)a6 childIndexHints:(id)a7 skipAssetCountFetches:(BOOL)a8
{
  v16 = a3;
  v17 = a5;
  v18 = a6;
  v19 = a7;
  v20 = [v18 count];
  if (v20 != [v19 count])
  {
    v33 = [MEMORY[0x1E696AAA8] currentHandler];
    [v33 handleFailureInMethod:a2 object:self file:@"PXNavigationListDataSection.m" lineNumber:120 description:{@"Invalid parameter not satisfying: %@", @"childDataSections.count == childIndexHints.count"}];
  }

  v21 = [v16 outlineObject];
  v34.receiver = self;
  v34.super_class = PXNavigationListDataSection;
  v22 = [(PXDataSection *)&v34 initWithOutlineObject:v21];

  if (v22)
  {
    objc_storeStrong(&v22->_collectionsDataSection, a3);
    v22->_indentationLevel = a4;
    v23 = [v17 copy];
    topLevelIdentifier = v22->_topLevelIdentifier;
    v22->_topLevelIdentifier = v23;

    v25 = [v18 copy];
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

    v29 = [v19 copy];
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

    v22->_skipAssetCountFetches = a8;
  }

  return v22;
}

@end