@interface WBSHistoryDeletionPlan
- (NSMapTable)allVisitsToDeleteByItemExcludingItemsBeingDeleted;
- (NSSet)allItemsToDelete;
- (NSSet)allVisitsToDeleteExcludingVisitsFromItemsBeingDeleted;
- (WBSHistoryDeletionPlan)initWithSQLiteStore:(id)store discoveredItemsToDelete:(id)delete;
- (WBSHistoryDeletionPlan)initWithSQLiteStore:(id)store triggeringItems:(id)items excludingItems:(id)excludingItems visits:(id)visits reason:(int64_t)reason;
- (WBSHistoryDeletionPlan)initWithSQLiteStore:(id)store triggeringVisits:(id)visits excludingItems:(id)items visits:(id)a6;
- (WBSHistoryDeletionPlan)initWithSQLiteStore:(id)store triggeringVisits:(id)visits updatedLastVisitsByItem:(id)item;
@end

@implementation WBSHistoryDeletionPlan

- (WBSHistoryDeletionPlan)initWithSQLiteStore:(id)store triggeringItems:(id)items excludingItems:(id)excludingItems visits:(id)visits reason:(int64_t)reason
{
  storeCopy = store;
  itemsCopy = items;
  excludingItemsCopy = excludingItems;
  visitsCopy = visits;
  v31.receiver = self;
  v31.super_class = WBSHistoryDeletionPlan;
  v17 = [(WBSHistoryDeletionPlan *)&v31 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_store, store);
    v19 = [itemsCopy copy];
    triggeringItems = v18->_triggeringItems;
    v18->_triggeringItems = v19;

    v21 = [MEMORY[0x1E695DFD8] set];
    triggeringVisits = v18->_triggeringVisits;
    v18->_triggeringVisits = v21;

    v23 = [excludingItemsCopy copy];
    excludedItems = v18->_excludedItems;
    v18->_excludedItems = v23;

    v25 = [visitsCopy copy];
    excludedVisits = v18->_excludedVisits;
    v18->_excludedVisits = v25;

    if (reason == 1)
    {
      v27 = [itemsCopy mutableCopy];
    }

    else
    {
      v27 = [MEMORY[0x1E695DFA8] set];
    }

    discoveredItemsToDelete = v18->_discoveredItemsToDelete;
    v18->_discoveredItemsToDelete = v27;

    v29 = v18;
  }

  return v18;
}

- (WBSHistoryDeletionPlan)initWithSQLiteStore:(id)store triggeringVisits:(id)visits excludingItems:(id)items visits:(id)a6
{
  storeCopy = store;
  visitsCopy = visits;
  itemsCopy = items;
  v14 = a6;
  v29.receiver = self;
  v29.super_class = WBSHistoryDeletionPlan;
  v15 = [(WBSHistoryDeletionPlan *)&v29 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_store, store);
    v17 = [MEMORY[0x1E695DFD8] set];
    triggeringItems = v16->_triggeringItems;
    v16->_triggeringItems = v17;

    v19 = [visitsCopy copy];
    triggeringVisits = v16->_triggeringVisits;
    v16->_triggeringVisits = v19;

    v21 = [itemsCopy copy];
    excludedItems = v16->_excludedItems;
    v16->_excludedItems = v21;

    v23 = [v14 copy];
    excludedVisits = v16->_excludedVisits;
    v16->_excludedVisits = v23;

    v25 = [MEMORY[0x1E695DFA8] set];
    discoveredItemsToDelete = v16->_discoveredItemsToDelete;
    v16->_discoveredItemsToDelete = v25;

    v27 = v16;
  }

  return v16;
}

- (WBSHistoryDeletionPlan)initWithSQLiteStore:(id)store discoveredItemsToDelete:(id)delete
{
  storeCopy = store;
  deleteCopy = delete;
  v25.receiver = self;
  v25.super_class = WBSHistoryDeletionPlan;
  v9 = [(WBSHistoryDeletionPlan *)&v25 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_store, store);
    v11 = [MEMORY[0x1E695DFD8] set];
    triggeringItems = v10->_triggeringItems;
    v10->_triggeringItems = v11;

    v13 = [MEMORY[0x1E695DFD8] set];
    triggeringVisits = v10->_triggeringVisits;
    v10->_triggeringVisits = v13;

    v15 = [MEMORY[0x1E695DFD8] set];
    excludedItems = v10->_excludedItems;
    v10->_excludedItems = v15;

    v17 = [MEMORY[0x1E695DFD8] set];
    excludedVisits = v10->_excludedVisits;
    v10->_excludedVisits = v17;

    v19 = [deleteCopy mutableCopy];
    discoveredItemsToDelete = v10->_discoveredItemsToDelete;
    v10->_discoveredItemsToDelete = v19;

    v10->_wasPrepared = 1;
    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    updatedLastVisitsByItem = v10->_updatedLastVisitsByItem;
    v10->_updatedLastVisitsByItem = strongToStrongObjectsMapTable;

    v23 = v10;
  }

  return v10;
}

- (WBSHistoryDeletionPlan)initWithSQLiteStore:(id)store triggeringVisits:(id)visits updatedLastVisitsByItem:(id)item
{
  storeCopy = store;
  visitsCopy = visits;
  itemCopy = item;
  v28.receiver = self;
  v28.super_class = WBSHistoryDeletionPlan;
  v12 = [(WBSHistoryDeletionPlan *)&v28 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_store, store);
    v14 = [MEMORY[0x1E695DFD8] set];
    triggeringItems = v13->_triggeringItems;
    v13->_triggeringItems = v14;

    v16 = [visitsCopy copy];
    triggeringVisits = v13->_triggeringVisits;
    v13->_triggeringVisits = v16;

    v18 = [MEMORY[0x1E695DFD8] set];
    excludedItems = v13->_excludedItems;
    v13->_excludedItems = v18;

    v20 = [MEMORY[0x1E695DFD8] set];
    excludedVisits = v13->_excludedVisits;
    v13->_excludedVisits = v20;

    v22 = [MEMORY[0x1E695DFA8] set];
    discoveredItemsToDelete = v13->_discoveredItemsToDelete;
    v13->_discoveredItemsToDelete = v22;

    v13->_wasPrepared = 1;
    v24 = [itemCopy copy];
    updatedLastVisitsByItem = v13->_updatedLastVisitsByItem;
    v13->_updatedLastVisitsByItem = v24;

    v26 = v13;
  }

  return v13;
}

- (NSSet)allItemsToDelete
{
  v3 = [(NSSet *)self->_triggeringItems mutableCopy];
  [v3 unionSet:self->_discoveredItemsToDelete];
  [v3 minusSet:self->_excludedItems];

  return v3;
}

- (NSSet)allVisitsToDeleteExcludingVisitsFromItemsBeingDeleted
{
  v3 = [(NSSet *)self->_triggeringVisits setByAddingObjectsFromSet:self->_discoveredVisitsToDelete];
  v4 = [v3 mutableCopy];

  [v4 minusSet:self->_excludedVisits];
  v5 = MEMORY[0x1E696AE18];
  allItemsToDelete = [(WBSHistoryDeletionPlan *)self allItemsToDelete];
  v7 = [v5 predicateWithFormat:@"NOT (item IN %@)", allItemsToDelete];
  v8 = [v4 filteredSetUsingPredicate:v7];

  return v8;
}

- (NSMapTable)allVisitsToDeleteByItemExcludingItemsBeingDeleted
{
  v19 = *MEMORY[0x1E69E9840];
  allVisitsToDeleteExcludingVisitsFromItemsBeingDeleted = [(WBSHistoryDeletionPlan *)self allVisitsToDeleteExcludingVisitsFromItemsBeingDeleted];
  strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = allVisitsToDeleteExcludingVisitsFromItemsBeingDeleted;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v4);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        item = [v8 item];
        if (item)
        {
          v10 = [strongToStrongObjectsMapTable objectForKey:item];
          v11 = v10;
          if (v10)
          {
            [v10 addObject:v8];
          }

          else
          {
            v12 = [MEMORY[0x1E695DF70] arrayWithObject:v8];
            [strongToStrongObjectsMapTable setObject:v12 forKey:item];
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  return strongToStrongObjectsMapTable;
}

@end