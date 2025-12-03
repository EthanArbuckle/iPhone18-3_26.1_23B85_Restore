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
- (PLHighlightItemList)initWithParentHighlightItem:(id)item childHighlightItems:(id)items;
- (id)initAsNewList;
- (void)_updateHighlightItemsOrdering;
- (void)_updateStartEndDates;
- (void)addHighlightItem:(id)item;
- (void)mergeWithHighlightItemList:(id)list;
- (void)removeHighlightItem:(id)item;
- (void)reset;
@end

@implementation PLHighlightItemList

- (void)reset
{
  orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
  internalHighlightItems = self->_internalHighlightItems;
  self->_internalHighlightItems = orderedSet;

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

- (void)mergeWithHighlightItemList:(id)list
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  internalHighlightItems = [list internalHighlightItems];
  v5 = [internalHighlightItems countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(internalHighlightItems);
        }

        [(PLHighlightItemList *)self addHighlightItem:*(*(&v9 + 1) + 8 * v8++)];
      }

      while (v6 != v8);
      v6 = [internalHighlightItems countByEnumeratingWithState:&v9 objects:v13 count:16];
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
  isNewList = [(PLHighlightItemList *)self isNewList];
  v9 = @"NO";
  if (isNewList)
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
  selfCopy = self;
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
          startDate = [v12 startDate];
          v14 = [startDate earlierDate:v7];

          endDate = [v12 endDate];
          v16 = [endDate laterDate:v4];

          v4 = v16;
          v7 = v14;
        }

        startDate2 = [v12 startDate];
        v5 = [startDate2 earlierDate:v10];

        endDate2 = [v12 endDate];
        v6 = [endDate2 laterDate:v11];

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

  startDate = selfCopy->_startDate;
  selfCopy->_startDate = v7;
  v20 = v7;

  endDate = selfCopy->_endDate;
  selfCopy->_endDate = v4;
  v22 = v4;

  groupingStartDate = selfCopy->_groupingStartDate;
  selfCopy->_groupingStartDate = v5;
  v24 = v5;

  groupingEndDate = selfCopy->_groupingEndDate;
  selfCopy->_groupingEndDate = v6;
}

- (void)_updateHighlightItemsOrdering
{
  internalHighlightItems = self->_internalHighlightItems;
  timeSortDescriptors = [objc_opt_class() timeSortDescriptors];
  [(NSMutableOrderedSet *)internalHighlightItems sortUsingDescriptors:timeSortDescriptors];

  [(PLHighlightItemList *)self _updateStartEndDates];
}

- (void)removeHighlightItem:(id)item
{
  itemCopy = item;
  if ([(NSMutableOrderedSet *)self->_internalHighlightItems containsObject:?])
  {
    [(NSMutableOrderedSet *)self->_internalHighlightItems removeObject:itemCopy];
    if ([(NSMutableSet *)self->_internalAddedHighlightItems containsObject:itemCopy])
    {
      [(NSMutableSet *)self->_internalAddedHighlightItems removeObject:itemCopy];
    }

    else
    {
      [(NSMutableSet *)self->_internalRemovedHighlightItems addObject:itemCopy];
    }

    [(PLHighlightItemList *)self _updateStartEndDates];
  }
}

- (void)addHighlightItem:(id)item
{
  itemCopy = item;
  if (([(NSMutableOrderedSet *)self->_internalHighlightItems containsObject:itemCopy]& 1) == 0)
  {
    [(NSMutableOrderedSet *)self->_internalHighlightItems addObject:itemCopy];
    if ([(NSMutableSet *)self->_internalRemovedHighlightItems containsObject:itemCopy])
    {
      [(NSMutableSet *)self->_internalRemovedHighlightItems removeObject:itemCopy];
    }

    else
    {
      [(NSMutableSet *)self->_internalAddedHighlightItems addObject:itemCopy];
    }

    timeSortDescriptors = [objc_opt_class() timeSortDescriptors];
    internalHighlightItems = self->_internalHighlightItems;
    v7 = [(NSMutableOrderedSet *)internalHighlightItems count];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __40__PLHighlightItemList_addHighlightItem___block_invoke;
    v9[3] = &unk_1E756EF00;
    v10 = timeSortDescriptors;
    v8 = timeSortDescriptors;
    [(NSMutableOrderedSet *)internalHighlightItems indexOfObject:itemCopy inSortedRange:0 options:v7 usingComparator:1024, v9];
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
  array = [(NSMutableOrderedSet *)self->_internalHighlightItems array];
  v3 = [array copy];

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
    startDate = [(PLHighlightItem *)self->_parentHighlightItem startDate];
    if ([startDate isEqualToDate:self->_startDate])
    {
      endDate = [(PLHighlightItem *)self->_parentHighlightItem endDate];
      v3 = [endDate isEqualToDate:self->_endDate] ^ 1;
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
  parentHighlightItem = [(PLHighlightItemList *)self parentHighlightItem];
  objectID = [parentHighlightItem objectID];

  return objectID;
}

- (NSString)uuid
{
  parentHighlightItem = [(PLHighlightItemList *)self parentHighlightItem];
  uuid = [parentHighlightItem uuid];

  return uuid;
}

- (NSDate)endDate
{
  if ([(PLHighlightItemList *)self isCandidateForReuse])
  {
    parentHighlightItem = [(PLHighlightItemList *)self parentHighlightItem];
    endDate = [parentHighlightItem endDate];
  }

  else
  {
    endDate = self->_endDate;
  }

  return endDate;
}

- (NSDate)startDate
{
  if ([(PLHighlightItemList *)self isCandidateForReuse])
  {
    parentHighlightItem = [(PLHighlightItemList *)self parentHighlightItem];
    startDate = [parentHighlightItem startDate];
  }

  else
  {
    startDate = self->_startDate;
  }

  return startDate;
}

- (NSDate)groupingEndDate
{
  if ([(PLHighlightItemList *)self isCandidateForReuse])
  {
    parentHighlightItem = [(PLHighlightItemList *)self parentHighlightItem];
    endDate = [parentHighlightItem endDate];
  }

  else
  {
    endDate = self->_groupingEndDate;
  }

  return endDate;
}

- (NSDate)groupingStartDate
{
  if ([(PLHighlightItemList *)self isCandidateForReuse])
  {
    parentHighlightItem = [(PLHighlightItemList *)self parentHighlightItem];
    startDate = [parentHighlightItem startDate];
  }

  else
  {
    startDate = self->_groupingStartDate;
  }

  return startDate;
}

- (id)initAsNewList
{
  v10.receiver = self;
  v10.super_class = PLHighlightItemList;
  v2 = [(PLHighlightItemList *)&v10 init];
  if (v2)
  {
    orderedSet = [MEMORY[0x1E695DFA0] orderedSet];
    internalHighlightItems = v2->_internalHighlightItems;
    v2->_internalHighlightItems = orderedSet;

    v5 = [MEMORY[0x1E695DFA8] set];
    internalAddedHighlightItems = v2->_internalAddedHighlightItems;
    v2->_internalAddedHighlightItems = v5;

    v7 = [MEMORY[0x1E695DFA8] set];
    internalRemovedHighlightItems = v2->_internalRemovedHighlightItems;
    v2->_internalRemovedHighlightItems = v7;
  }

  return v2;
}

- (PLHighlightItemList)initWithParentHighlightItem:(id)item childHighlightItems:(id)items
{
  itemCopy = item;
  itemsCopy = items;
  v18.receiver = self;
  v18.super_class = PLHighlightItemList;
  v9 = [(PLHighlightItemList *)&v18 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_parentHighlightItem, item);
    v11 = [MEMORY[0x1E695DFA0] orderedSetWithArray:itemsCopy];
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