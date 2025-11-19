@interface PLHighlightItemList
+ (id)timeSortDescriptors;
- (BOOL)hasChanges;
- (NSArray)sortedChildHighlightItems;
- (NSDate)endDate;
- (NSDate)groupingEndDate;
- (NSDate)groupingStartDate;
- (NSDate)startDate;
- (NSManagedObjectID)objectID;
- (NSSet)addedHighlightItems;
- (NSSet)removedHighlightItems;
- (NSString)description;
- (NSString)uuid;
- (PLHighlightItemList)initWithParentHighlightItem:(id)a3 childHighlightItems:(id)a4;
- (id)initAsNewList;
- (void)_updateHighlightItemsOrdering;
- (void)_updateStartEndDates;
- (void)addHighlightItem:(id)a3;
- (void)mergeWithHighlightItemList:(id)a3;
- (void)removeHighlightItem:(id)a3;
- (void)reset;
@end

@implementation PLHighlightItemList

- (void)reset
{
  v3 = [MEMORY[0x1E695DFA0] orderedSet];
  internalHighlightItems = self->_internalHighlightItems;
  self->_internalHighlightItems = v3;

  v5 = [MEMORY[0x1E695DFA8] set];
  internalAddedHighlightItems = self->_internalAddedHighlightItems;
  self->_internalAddedHighlightItems = v5;

  v7 = [MEMORY[0x1E695DFA8] set];
  internalRemovedHighlightItems = self->_internalRemovedHighlightItems;
  self->_internalRemovedHighlightItems = v7;

  startDate = self->_startDate;
  self->_startDate = 0;

  endDate = self->_endDate;
  self->_endDate = 0;

  groupingStartDate = self->_groupingStartDate;
  self->_groupingStartDate = 0;

  groupingEndDate = self->_groupingEndDate;
  self->_groupingEndDate = 0;
}

- (void)mergeWithHighlightItemList:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [a3 internalHighlightItems];
  v5 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [(PLHighlightItemList *)self addHighlightItem:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [(PLHighlightItemList *)self _updateHighlightItemsOrdering];
}

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v12.receiver = self;
  v12.super_class = PLHighlightItemList;
  v4 = [(PLHighlightItemList *)&v12 description];
  startDate = self->_startDate;
  endDate = self->_endDate;
  v7 = [(NSMutableOrderedSet *)self->_internalHighlightItems count];
  v8 = [(PLHighlightItemList *)self isNewList];
  v9 = @"NO";
  if (v8)
  {
    v9 = @"YES";
  }

  v10 = [v3 stringWithFormat:@"%@ [(%@) - (%@)] (%ld) time periods, isNew: %@", v4, startDate, endDate, v7, v9];

  return v10;
}

- (void)_updateStartEndDates
{
  v33 = *MEMORY[0x1E69E9840];
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v26 = self;
  obj = self->_internalHighlightItems;
  v2 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = *v29;
    do
    {
      v9 = 0;
      v10 = v5;
      v11 = v6;
      do
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v28 + 1) + 8 * v9);
        if ([v12 kind] != 3)
        {
          v13 = [v12 startDate];
          v14 = [v13 earlierDate:v7];

          v15 = [v12 endDate];
          v16 = [v15 laterDate:v4];

          v4 = v16;
          v7 = v14;
        }

        v17 = [v12 startDate];
        v5 = [v17 earlierDate:v10];

        v18 = [v12 endDate];
        v6 = [v18 laterDate:v11];

        ++v9;
        v10 = v5;
        v11 = v6;
      }

      while (v3 != v9);
      v3 = [(NSMutableOrderedSet *)obj countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v3);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
  }

  startDate = v26->_startDate;
  v26->_startDate = v7;
  v20 = v7;

  endDate = v26->_endDate;
  v26->_endDate = v4;
  v22 = v4;

  groupingStartDate = v26->_groupingStartDate;
  v26->_groupingStartDate = v5;
  v24 = v5;

  groupingEndDate = v26->_groupingEndDate;
  v26->_groupingEndDate = v6;
}

- (void)_updateHighlightItemsOrdering
{
  internalHighlightItems = self->_internalHighlightItems;
  v4 = [objc_opt_class() timeSortDescriptors];
  [(NSMutableOrderedSet *)internalHighlightItems sortUsingDescriptors:v4];

  [(PLHighlightItemList *)self _updateStartEndDates];
}

- (void)removeHighlightItem:(id)a3
{
  v4 = a3;
  if ([(NSMutableOrderedSet *)self->_internalHighlightItems containsObject:?])
  {
    [(NSMutableOrderedSet *)self->_internalHighlightItems removeObject:v4];
    if ([(NSMutableSet *)self->_internalAddedHighlightItems containsObject:v4])
    {
      [(NSMutableSet *)self->_internalAddedHighlightItems removeObject:v4];
    }

    else
    {
      [(NSMutableSet *)self->_internalRemovedHighlightItems addObject:v4];
    }

    [(PLHighlightItemList *)self _updateStartEndDates];
  }
}

- (void)addHighlightItem:(id)a3
{
  v4 = a3;
  if (([(NSMutableOrderedSet *)self->_internalHighlightItems containsObject:v4]& 1) == 0)
  {
    [(NSMutableOrderedSet *)self->_internalHighlightItems addObject:v4];
    if ([(NSMutableSet *)self->_internalRemovedHighlightItems containsObject:v4])
    {
      [(NSMutableSet *)self->_internalRemovedHighlightItems removeObject:v4];
    }

    else
    {
      [(NSMutableSet *)self->_internalAddedHighlightItems addObject:v4];
    }

    v5 = [objc_opt_class() timeSortDescriptors];
    internalHighlightItems = self->_internalHighlightItems;
    v7 = [(NSMutableOrderedSet *)internalHighlightItems count];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __40__PLHighlightItemList_addHighlightItem___block_invoke;
    v9[3] = &unk_1E756EF00;
    v10 = v5;
    v8 = v5;
    [(NSMutableOrderedSet *)internalHighlightItems indexOfObject:v4 inSortedRange:0 options:v7 usingComparator:1024, v9];
    [(PLHighlightItemList *)self _updateStartEndDates];
  }
}

uint64_t __40__PLHighlightItemList_addHighlightItem___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v7 = *(a1 + 32);
  v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v16;
    while (2)
    {
      v11 = 0;
      do
      {
        if (*v16 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = [*(*(&v15 + 1) + 8 * v11) compareObject:v5 toObject:{v6, v15}];
        if (v12)
        {
          v13 = v12;
          goto LABEL_11;
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_11:

  return v13;
}

- (NSSet)removedHighlightItems
{
  v2 = [(NSMutableSet *)self->_internalRemovedHighlightItems copy];

  return v2;
}

- (NSSet)addedHighlightItems
{
  v2 = [(NSMutableSet *)self->_internalAddedHighlightItems copy];

  return v2;
}

- (NSArray)sortedChildHighlightItems
{
  v2 = [(NSMutableOrderedSet *)self->_internalHighlightItems array];
  v3 = [v2 copy];

  return v3;
}

- (BOOL)hasChanges
{
  if ([(NSMutableSet *)self->_internalAddedHighlightItems count]|| [(NSMutableSet *)self->_internalRemovedHighlightItems count])
  {
    LOBYTE(v3) = 1;
  }

  else if (self->_parentHighlightItem && [(NSMutableOrderedSet *)self->_internalHighlightItems count])
  {
    v5 = [(PLHighlightItem *)self->_parentHighlightItem startDate];
    if ([v5 isEqualToDate:self->_startDate])
    {
      v6 = [(PLHighlightItem *)self->_parentHighlightItem endDate];
      v3 = [v6 isEqualToDate:self->_endDate] ^ 1;
    }

    else
    {
      LOBYTE(v3) = 1;
    }
  }

  else
  {
    LOBYTE(v3) = 0;
  }

  return v3;
}

- (NSManagedObjectID)objectID
{
  v2 = [(PLHighlightItemList *)self parentHighlightItem];
  v3 = [v2 objectID];

  return v3;
}

- (NSString)uuid
{
  v2 = [(PLHighlightItemList *)self parentHighlightItem];
  v3 = [v2 uuid];

  return v3;
}

- (NSDate)endDate
{
  if ([(PLHighlightItemList *)self isCandidateForReuse])
  {
    v3 = [(PLHighlightItemList *)self parentHighlightItem];
    v4 = [v3 endDate];
  }

  else
  {
    v4 = self->_endDate;
  }

  return v4;
}

- (NSDate)startDate
{
  if ([(PLHighlightItemList *)self isCandidateForReuse])
  {
    v3 = [(PLHighlightItemList *)self parentHighlightItem];
    v4 = [v3 startDate];
  }

  else
  {
    v4 = self->_startDate;
  }

  return v4;
}

- (NSDate)groupingEndDate
{
  if ([(PLHighlightItemList *)self isCandidateForReuse])
  {
    v3 = [(PLHighlightItemList *)self parentHighlightItem];
    v4 = [v3 endDate];
  }

  else
  {
    v4 = self->_groupingEndDate;
  }

  return v4;
}

- (NSDate)groupingStartDate
{
  if ([(PLHighlightItemList *)self isCandidateForReuse])
  {
    v3 = [(PLHighlightItemList *)self parentHighlightItem];
    v4 = [v3 startDate];
  }

  else
  {
    v4 = self->_groupingStartDate;
  }

  return v4;
}

- (id)initAsNewList
{
  v10.receiver = self;
  v10.super_class = PLHighlightItemList;
  v2 = [(PLHighlightItemList *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x1E695DFA0] orderedSet];
    internalHighlightItems = v2->_internalHighlightItems;
    v2->_internalHighlightItems = v3;

    v5 = [MEMORY[0x1E695DFA8] set];
    internalAddedHighlightItems = v2->_internalAddedHighlightItems;
    v2->_internalAddedHighlightItems = v5;

    v7 = [MEMORY[0x1E695DFA8] set];
    internalRemovedHighlightItems = v2->_internalRemovedHighlightItems;
    v2->_internalRemovedHighlightItems = v7;
  }

  return v2;
}

- (PLHighlightItemList)initWithParentHighlightItem:(id)a3 childHighlightItems:(id)a4
{
  v7 = a3;
  v8 = a4;
  v18.receiver = self;
  v18.super_class = PLHighlightItemList;
  v9 = [(PLHighlightItemList *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parentHighlightItem, a3);
    v11 = [MEMORY[0x1E695DFA0] orderedSetWithArray:v8];
    internalHighlightItems = v10->_internalHighlightItems;
    v10->_internalHighlightItems = v11;

    v13 = [MEMORY[0x1E695DFA8] set];
    internalAddedHighlightItems = v10->_internalAddedHighlightItems;
    v10->_internalAddedHighlightItems = v13;

    v15 = [MEMORY[0x1E695DFA8] set];
    internalRemovedHighlightItems = v10->_internalRemovedHighlightItems;
    v10->_internalRemovedHighlightItems = v15;

    [(PLHighlightItemList *)v10 _updateHighlightItemsOrdering];
  }

  return v10;
}

+ (id)timeSortDescriptors
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"startDate" ascending:1];
  v6[0] = v2;
  v3 = [MEMORY[0x1E696AEB0] sortDescriptorWithKey:@"objectID" ascending:1];
  v6[1] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v6 count:2];

  return v4;
}

@end