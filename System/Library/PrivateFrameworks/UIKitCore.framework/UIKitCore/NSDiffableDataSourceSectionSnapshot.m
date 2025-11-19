@interface NSDiffableDataSourceSectionSnapshot
- (BOOL)_itemHasChildren:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isExpanded:(id)item;
- (BOOL)isVisible:(id)item;
- (NSArray)_rootItems;
- (NSArray)expandedItems;
- (NSArray)items;
- (NSArray)rootItems;
- (NSArray)visibleItems;
- (NSDiffableDataSourceSectionSnapshot)init;
- (NSDiffableDataSourceSectionSnapshot)initWithSnapshot:(id)a3;
- (NSDiffableDataSourceSectionSnapshot)initWithState:(id)a3;
- (NSDiffableDataSourceSectionSnapshot)snapshotOfParentItem:(id)parentItem includingParentItem:(BOOL)includingParentItem;
- (NSIndexSet)_visibleIndexes;
- (NSInteger)levelOfItem:(id)item;
- (NSOrderedSet)_visibleItemsOrderedSet;
- (NSString)visualDescription;
- (id)_indexesOfChildrenForParent:(id)a3 recursive:(BOOL)a4;
- (id)_indexesOfItems:(id)a3 ignoringItemsNotFound:(BOOL)a4;
- (id)_itemAfterItem:(id)a3;
- (id)_itemBeforeItem:(id)a3;
- (id)childrenOfParent:(id)a3 recursive:(BOOL)a4;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)insertSnapshot:(NSDiffableDataSourceSectionSnapshot *)snapshot afterItem:(id)item;
- (id)parentOfChildItem:(id)childItem;
- (void)_replaceItem:(id)a3 withItem:(id)a4;
- (void)appendItems:(NSArray *)items;
- (void)appendItems:(NSArray *)items intoParentItem:(id)parentItem;
- (void)collapseItems:(NSArray *)items;
- (void)deleteAllItems;
- (void)deleteItems:(id)a3 orphanDisposition:(int64_t)a4;
- (void)expandItems:(NSArray *)items;
- (void)insertItems:(NSArray *)items beforeItem:(id)beforeIdentifier;
- (void)insertItems:(id)a3 afterItem:(id)a4 insertionMode:(int64_t)a5;
- (void)insertSnapshot:(NSDiffableDataSourceSectionSnapshot *)snapshot beforeItem:(id)item;
- (void)replaceChildrenOfParentItem:(id)parentItem withSnapshot:(NSDiffableDataSourceSectionSnapshot *)snapshot;
@end

@implementation NSDiffableDataSourceSectionSnapshot

- (NSDiffableDataSourceSectionSnapshot)init
{
  v3 = objc_alloc_init(_NSDiffableDataSourceSectionSnapshotState);
  v4 = [(NSDiffableDataSourceSectionSnapshot *)self initWithState:v3];

  return v4;
}

- (NSArray)visibleItems
{
  v3 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v4 = [v3 visibleIndexes];

  v5 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
  v6 = [v5 objectsAtIndexes:v4];

  return v6;
}

- (NSDiffableDataSourceSectionSnapshot)initWithState:(id)a3
{
  v5 = a3;
  v13.receiver = self;
  v13.super_class = NSDiffableDataSourceSectionSnapshot;
  v6 = [(NSDiffableDataSourceSectionSnapshot *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_state, a3);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    expandedItemsUpdates = v7->_expandedItemsUpdates;
    v7->_expandedItemsUpdates = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    collapsedItemsUpdates = v7->_collapsedItemsUpdates;
    v7->_collapsedItemsUpdates = v10;
  }

  return v7;
}

- (NSDiffableDataSourceSectionSnapshot)initWithSnapshot:(id)a3
{
  v4 = [a3 _state];
  v5 = [(NSDiffableDataSourceSectionSnapshot *)self initWithState:v4];

  return v5;
}

- (void)appendItems:(NSArray *)items
{
  v23 = items;
  if ([(NSArray *)v23 count])
  {
    v5 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotterMutableCopy];
    [v5 appendChildItemsWithCount:{-[NSArray count](v23, "count")}];
    v6 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v7 = [v6 mutableCopy];

    v8 = [v7 count];
    [v7 addObjectsFromArray:v23];
    v9 = [v7 count] - v8;
    if (v9 != [(NSArray *)v23 count])
    {
      v10 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
      BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__DUPLICATE_ITEM_IDENTIFIERS_IN_SECTION_SNAPSHOT(v10, v23);
    }

    v11 = [[_NSDiffableDataSourceSectionSnapshotState alloc] initWithSnapshotter:v5 identifiers:v7];
    state = self->_state;
    self->_state = v11;

    v13 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
    v14 = [v13 count];
    v15 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v16 = [v15 count];

    if (v14 != v16)
    {
      v17 = [MEMORY[0x1E696AAA8] currentHandler];
      v18 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
      v19 = [v18 count];
      v20 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
      v21 = [v20 count];
      v22 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
      [v17 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:76 description:{@"NSDiffableDataSourceSectionSnapshot internal inconsistency: snapshotter count (%ld) does not match identifier count (%ld). Identifiers: %@", v19, v21, v22}];
    }
  }
}

- (void)appendItems:(NSArray *)items intoParentItem:(id)parentItem
{
  v33 = items;
  v7 = parentItem;
  if ([(NSArray *)v33 count])
  {
    if (v7)
    {
      v8 = [(NSDiffableDataSourceSectionSnapshot *)self childrenOfParent:v7];
      if ([v8 count])
      {
        v9 = [v8 lastObject];
        [(NSDiffableDataSourceSectionSnapshot *)self insertItems:v33 afterItem:v9];
      }

      else
      {
        v10 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v7];
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v32 = [MEMORY[0x1E696AAA8] currentHandler];
          [v32 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:97 description:{@"Parent item identifier does not exist in section snapshot: %@", v7}];
        }

        v9 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotterMutableCopy];
        v11 = [v9 appendChildItemsWithCount:-[NSArray count](v33 toParentIndex:{"count"), v10}];
        v13 = v12;
        v14 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
        v15 = [v14 mutableCopy];

        v16 = [v15 count];
        v17 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v11, v13}];
        [v15 insertObjects:v33 atIndexes:v17];

        v18 = [v15 count] - v16;
        if (v18 != [(NSArray *)v33 count])
        {
          v19 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
          BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__DUPLICATE_ITEM_IDENTIFIERS_IN_SECTION_SNAPSHOT(v19, v33);
        }

        v20 = [[_NSDiffableDataSourceSectionSnapshotState alloc] initWithSnapshotter:v9 identifiers:v15];
        state = self->_state;
        self->_state = v20;
      }

      v22 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
      v23 = [v22 count];
      v24 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
      v25 = [v24 count];

      if (v23 != v25)
      {
        v26 = [MEMORY[0x1E696AAA8] currentHandler];
        v27 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
        v28 = [v27 count];
        v29 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
        v30 = [v29 count];
        v31 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
        [v26 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:117 description:{@"NSDiffableDataSourceSectionSnapshot internal inconsistency: snapshotter count (%ld) does not match identifier count (%ld). Identifiers: %@", v28, v30, v31}];
      }
    }

    else
    {
      [(NSDiffableDataSourceSectionSnapshot *)self appendItems:v33];
    }
  }
}

- (void)insertItems:(NSArray *)items beforeItem:(id)beforeIdentifier
{
  v21 = items;
  v7 = beforeIdentifier;
  if ([(NSArray *)v21 count])
  {
    v8 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v7];
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v19 = [MEMORY[0x1E696AAA8] currentHandler];
      [v19 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:131 description:{@"Item identifier to insert before does not exist in section snapshot: %@", v7}];
    }

    v9 = [(NSArray *)v21 count];
    v10 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotterMutableCopy];
    [v10 insertCount:v9 beforeIndex:v8];
    v11 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v12 = [v11 mutableCopy];

    v13 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v8, v9}];
    v14 = [v12 count];
    [v12 insertObjects:v21 atIndexes:v13];
    if ([v12 count] - v14 != v9)
    {
      v15 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
      BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__DUPLICATE_ITEM_IDENTIFIERS_IN_SECTION_SNAPSHOT(v15, v21);
    }

    v16 = [v10 count];
    if (v16 != [v12 count])
    {
      v20 = [MEMORY[0x1E696AAA8] currentHandler];
      [v20 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:148 description:{@"NSDiffableDataSourceSectionSnapshot internal inconsistency: snapshotter count (%ld) does not match identifier count (%ld). Identifiers: %@", objc_msgSend(v10, "count"), objc_msgSend(v12, "count"), v12}];
    }

    v17 = [[_NSDiffableDataSourceSectionSnapshotState alloc] initWithSnapshotter:v10 identifiers:v12];
    state = self->_state;
    self->_state = v17;
  }
}

- (void)insertItems:(id)a3 afterItem:(id)a4 insertionMode:(int64_t)a5
{
  v26 = a3;
  v9 = a4;
  if ([v26 count])
  {
    if (a5 >= 2)
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:163 description:{@"Invalid _NSDiffableDataSourceSectionSnapshotInsertionMode: %ld", a5}];
    }

    v10 = a5 != 0;
    v11 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v9];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:167 description:{@"Item identifier to insert after does not exist in section snapshot: %@", v9}];
    }

    v12 = [v26 count];
    v13 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotterMutableCopy];
    v14 = [v13 insertCount:v12 afterIndex:v11 insertionMode:v10];
    v15 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v16 = [v15 mutableCopy];

    v17 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v14, v12}];
    v18 = [v16 count];
    [v16 insertObjects:v26 atIndexes:v17];
    if ([v16 count] - v18 != v12)
    {
      v19 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
      BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__DUPLICATE_ITEM_IDENTIFIERS_IN_SECTION_SNAPSHOT(v19, v26);
    }

    v20 = [v13 count];
    if (v20 != [v16 count])
    {
      v25 = [MEMORY[0x1E696AAA8] currentHandler];
      [v25 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:184 description:{@"NSDiffableDataSourceSectionSnapshot internal inconsistency: snapshotter count (%ld) does not match identifier count (%ld). Identifiers: %@", objc_msgSend(v13, "count"), objc_msgSend(v16, "count"), v16}];
    }

    v21 = [[_NSDiffableDataSourceSectionSnapshotState alloc] initWithSnapshotter:v13 identifiers:v16];
    state = self->_state;
    self->_state = v21;
  }
}

- (void)deleteItems:(id)a3 orphanDisposition:(int64_t)a4
{
  v7 = a3;
  if ([v7 count])
  {
    if (a4 >= 2)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      [v16 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:200 description:{@"Invalid _NSDiffableDataSourceSectionSnapshotOrphanDisposition: %ld", a4}];
    }

    v8 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotterMutableCopy];
    v9 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v10 = [v9 mutableCopy];

    v11 = [(NSDiffableDataSourceSectionSnapshot *)self _indexesOfItems:v7];
    v12 = [v11 mutableCopy];
    v13 = [v8 isFlat];
    if (!a4 && (v13 & 1) == 0)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __69__NSDiffableDataSourceSectionSnapshot_deleteItems_orphanDisposition___block_invoke;
      v17[3] = &unk_1E70F43F0;
      v18 = v8;
      v19 = v12;
      [v11 enumerateIndexesUsingBlock:v17];
    }

    [v8 deleteIndexes:v12 orphanDisposition:a4 != 0];
    [v10 removeObjectsAtIndexes:v12];
    v14 = [[_NSDiffableDataSourceSectionSnapshotState alloc] initWithSnapshotter:v8 identifiers:v10];
    state = self->_state;
    self->_state = v14;
  }
}

void __69__NSDiffableDataSourceSectionSnapshot_deleteItems_orphanDisposition___block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [*(a1 + 32) childrenForParentAtIndex:a2 recursive:1];
  [*(a1 + 40) addIndexes:v3];
}

- (void)deleteAllItems
{
  v3 = objc_alloc_init(_NSDiffableDataSourceSectionSnapshotState);
  state = self->_state;
  self->_state = v3;
}

- (void)expandItems:(NSArray *)items
{
  v10 = items;
  if ([(NSArray *)v10 count])
  {
    [(NSMutableArray *)self->_expandedItemsUpdates addObjectsFromArray:v10];
    v4 = [(NSDiffableDataSourceSectionSnapshot *)self _indexesOfItems:v10 ignoringItemsNotFound:1];
    v5 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotterMutableCopy];
    [v5 expandIndexes:v4];
    v6 = [_NSDiffableDataSourceSectionSnapshotState alloc];
    v7 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v8 = [(_NSDiffableDataSourceSectionSnapshotState *)v6 initWithSnapshotter:v5 identifiers:v7];
    state = self->_state;
    self->_state = v8;
  }
}

- (void)collapseItems:(NSArray *)items
{
  v10 = items;
  if ([(NSArray *)v10 count])
  {
    [(NSMutableArray *)self->_collapsedItemsUpdates addObjectsFromArray:v10];
    v4 = [(NSDiffableDataSourceSectionSnapshot *)self _indexesOfItems:v10 ignoringItemsNotFound:1];
    v5 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotterMutableCopy];
    [v5 collapseIndexes:v4];
    v6 = [_NSDiffableDataSourceSectionSnapshotState alloc];
    v7 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v8 = [(_NSDiffableDataSourceSectionSnapshotState *)v6 initWithSnapshotter:v5 identifiers:v7];
    state = self->_state;
    self->_state = v8;
  }
}

- (void)replaceChildrenOfParentItem:(id)parentItem withSnapshot:(NSDiffableDataSourceSectionSnapshot *)snapshot
{
  v24 = parentItem;
  v7 = snapshot;
  if (v24)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"parentItem != nil"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:260 description:{@"Invalid parameter not satisfying: %@", @"snapshot != nil"}];

LABEL_3:
  v8 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotterMutableCopy];
  v9 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
  v10 = [v9 mutableCopy];

  v11 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v24];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:266 description:{@"Parent item identifier does not exist in section snapshot: %@", v24}];
  }

  v12 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v13 = [v12 childrenForParentAtIndex:v11 recursive:1];

  if (v13)
  {
    [v10 removeObjectsAtIndexes:v13];
  }

  v14 = [(NSDiffableDataSourceSectionSnapshot *)v7 items];
  v15 = [v14 count];

  if (v15)
  {
    v16 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v11 + 1, v15}];
    v17 = [(NSDiffableDataSourceSectionSnapshot *)v7 items];
    [v10 insertObjects:v17 atIndexes:v16];
  }

  v18 = [(NSDiffableDataSourceSectionSnapshot *)v7 snapshotter];
  [v8 replaceChildItemsFromSnapshotter:v18 forParentIndex:v11];

  v19 = [[_NSDiffableDataSourceSectionSnapshotState alloc] initWithSnapshotter:v8 identifiers:v10];
  state = self->_state;
  self->_state = v19;
}

- (BOOL)isExpanded:(id)item
{
  v5 = item;
  v6 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:308 description:{@"Item identifier does not exist in section snapshot: %@", v5}];
  }

  v7 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v8 = [v7 indexIsExpanded:v6];

  return v8;
}

- (BOOL)isVisible:(id)item
{
  v5 = item;
  v6 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:315 description:{@"Item identifier does not exist in section snapshot: %@", v5}];
  }

  v7 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v8 = [v7 indexIsVisible:v6];

  return v8;
}

- (NSInteger)levelOfItem:(id)item
{
  v5 = item;
  v6 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:323 description:{@"Item identifier does not exist in section snapshot: %@", v5}];
  }

  v7 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v8 = [v7 levelForIndex:v6];

  return v8;
}

- (id)childrenOfParent:(id)a3 recursive:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:340 description:{@"Parent item identifier does not exist in section snapshot: %@", v7}];
  }

  v9 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v10 = [v9 childrenForParentAtIndex:v8 recursive:v4];

  v11 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
  v12 = [v11 objectsAtIndexes:v10];

  return v12;
}

- (NSDiffableDataSourceSectionSnapshot)snapshotOfParentItem:(id)parentItem includingParentItem:(BOOL)includingParentItem
{
  v4 = includingParentItem;
  v7 = parentItem;
  if (!v7)
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    [v21 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:359 description:{@"Invalid parameter not satisfying: %@", @"item != nil"}];
  }

  v8 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:361 description:{@"Parent item identifier does not exist in section snapshot: %@", v7}];
  }

  v9 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v10 = [v9 snapshotterRepresentingSubtreeForIndex:v8 includingParent:v4];

  v11 = [v10 _allIndexes];
  if ([v11 count])
  {
    v12 = MEMORY[0x1E695DFB8];
    v13 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v14 = [v10 _allIndexes];
    v15 = [v13 objectsAtIndexes:v14];
    v16 = [v12 orderedSetWithArray:v15];

    v17 = [v10 _snapshotterByShiftingIndexesByCount:{-objc_msgSend(v11, "firstIndex")}];
    v18 = [[_NSDiffableDataSourceSectionSnapshotState alloc] initWithSnapshotter:v17 identifiers:v16];
    v19 = [[NSDiffableDataSourceSectionSnapshot alloc] initWithState:v18];
  }

  else
  {
    v19 = objc_alloc_init(NSDiffableDataSourceSectionSnapshot);
  }

  return v19;
}

- (void)insertSnapshot:(NSDiffableDataSourceSectionSnapshot *)snapshot beforeItem:(id)item
{
  v25 = snapshot;
  v7 = item;
  v8 = [(NSDiffableDataSourceSectionSnapshot *)v25 items];
  v9 = [v8 count];
  if (v9)
  {
    v10 = v9;
    v11 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v7];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v23 = [MEMORY[0x1E696AAA8] currentHandler];
      [v23 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:391 description:{@"Item identifier to insert before does not exist in section snapshot: %@", v7}];
    }

    v12 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotterMutableCopy];
    v13 = [(NSDiffableDataSourceSectionSnapshot *)v25 _state];
    v14 = [v13 snapshotterMutableCopy];

    [v12 insertSubtreeFromSnapshotter:v14 beforeIndex:v11];
    v15 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v16 = [v15 mutableCopy];

    v17 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v11, v10}];
    v18 = [v16 count];
    [v16 insertObjects:v8 atIndexes:v17];
    if ([v16 count] - v18 != v10)
    {
      v19 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
      BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__DUPLICATE_ITEM_IDENTIFIERS_IN_SECTION_SNAPSHOT(v19, v8);
    }

    v20 = [v12 count];
    if (v20 != [v16 count])
    {
      v24 = [MEMORY[0x1E696AAA8] currentHandler];
      [v24 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:408 description:{@"NSDiffableDataSourceSectionSnapshot internal inconsistency: snapshotter count (%ld) does not match identifier count (%ld). Identifiers: %@", objc_msgSend(v12, "count"), objc_msgSend(v16, "count"), v16}];
    }

    v21 = [[_NSDiffableDataSourceSectionSnapshotState alloc] initWithSnapshotter:v12 identifiers:v16];
    state = self->_state;
    self->_state = v21;
  }
}

- (id)insertSnapshot:(NSDiffableDataSourceSectionSnapshot *)snapshot afterItem:(id)item
{
  v7 = snapshot;
  v8 = item;
  v9 = [(NSDiffableDataSourceSectionSnapshot *)v7 items];
  v10 = [v9 count];
  if (v10)
  {
    v11 = v10;
    v12 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v8];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v29 = [MEMORY[0x1E696AAA8] currentHandler];
      [v29 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:421 description:{@"Item identifier to insert after does not exist in section snapshot: %@", v8}];
    }

    v32 = a2;
    v13 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotterMutableCopy];
    v14 = [(NSDiffableDataSourceSectionSnapshot *)v7 _state];
    v15 = [v14 snapshotterMutableCopy];

    v33 = v15;
    v16 = [v13 insertSubtreeFromSnapshotter:v15 afterIndex:v12];
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v30 = [MEMORY[0x1E696AAA8] currentHandler];
      [v30 handleFailureInMethod:v32 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:426 description:{@"NSDiffableDataSourceSectionSnapshot internal inconsistency: failed to insert subtree from snapshotter (%@) into snapshotter (%@) at insertion index %ld", v33, v13, v12}];
    }

    v17 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    if (v16 == [v17 count])
    {
      v18 = 0;
    }

    else
    {
      if (v16 - v12 != 1)
      {
        v12 = v16;
      }

      v19 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
      v18 = [v19 objectAtIndexedSubscript:v12];
    }

    v20 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v21 = [v20 mutableCopy];

    v22 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v16, v11}];
    v23 = [v21 count];
    [v21 insertObjects:v9 atIndexes:v22];
    if ([v21 count] - v23 != v11)
    {
      v24 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
      BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__DUPLICATE_ITEM_IDENTIFIERS_IN_SECTION_SNAPSHOT(v24, v9);
    }

    v25 = [v13 count];
    if (v25 != [v21 count])
    {
      v31 = [MEMORY[0x1E696AAA8] currentHandler];
      [v31 handleFailureInMethod:v32 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:441 description:{@"NSDiffableDataSourceSectionSnapshot internal inconsistency: snapshotter count (%ld) does not match identifier count (%ld). Identifiers: %@", objc_msgSend(v13, "count"), objc_msgSend(v21, "count"), v21}];
    }

    v26 = [[_NSDiffableDataSourceSectionSnapshotState alloc] initWithSnapshotter:v13 identifiers:v21];
    state = self->_state;
    self->_state = v26;
  }

  else
  {
    v18 = 0;
  }

  return v18;
}

- (id)parentOfChildItem:(id)childItem
{
  v5 = childItem;
  v6 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:451 description:{@"Child item identifier does not exist in section snapshot: %@", v5}];
  }

  v7 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v8 = [v7 parentForChildAtIndex:v6];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    v10 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v9 = [v10 objectAtIndexedSubscript:v8];
  }

  return v9;
}

- (NSArray)items
{
  v2 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
  v3 = [v2 array];

  return v3;
}

- (NSArray)expandedItems
{
  v3 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v4 = [v3 expandedIndexes];

  v5 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
  v6 = [v5 objectsAtIndexes:v4];

  return v6;
}

- (NSArray)rootItems
{
  v3 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v4 = [v3 rootIndexes];

  v5 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
  v6 = [v5 objectsAtIndexes:v4];

  return v6;
}

- (NSString)visualDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p\n", v5, self];

  v7 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
  v8 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  if ([v7 count])
  {
    v9 = 0;
    do
    {
      v10 = [v8 levelForIndex:v9];
      v11 = [v7 objectAtIndexedSubscript:v9];
      v12 = [&stru_1EFB14550 stringByPaddingToLength:2 * v10 withString:@" " startingAtIndex:0];
      v13 = [v8 indexIsExpanded:v9];
      v14 = @"-";
      if (v13)
      {
        v14 = @"+";
      }

      v15 = v14;
      if ([v8 indexIsVisible:v9])
      {
        v16 = @"*";
      }

      else
      {
        v16 = @" ";
      }

      [v6 appendFormat:@"%@%@%@%@\n", v12, v15, v16, v11];

      ++v9;
    }

    while (v9 < [v7 count]);
  }

  [v6 appendString:@">"];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v7 = [v6 visualDescription];
  v8 = [v3 stringWithFormat:@"<%@: %p\n%@>", v5, self, v7];

  return v8;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_opt_class() allocWithZone:a3];
  state = self->_state;

  return [v4 initWithState:state];
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_NSDiffableDataSourceSectionSnapshotState *)self->_state isEqual:v4->_state];
  }

  return v5;
}

- (void)_replaceItem:(id)a3 withItem:(id)a4
{
  v17 = a3;
  v7 = a4;
  v8 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
  v9 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v17];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:540 description:{@"Item identifier does not exist in section snapshot: %@", v17}];
  }

  if ([(_NSDiffableDataSourceSectionSnapshotState *)self->_state containsIdentifier:v7])
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    [v16 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:542 description:{@"Item identifier already exists in section snapshot: %@", v7}];
  }

  v10 = [v8 mutableCopy];
  [v10 replaceObjectAtIndex:v9 withObject:v7];
  v11 = [_NSDiffableDataSourceSectionSnapshotState alloc];
  v12 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotterMutableCopy];
  v13 = [(_NSDiffableDataSourceSectionSnapshotState *)v11 initWithSnapshotter:v12 identifiers:v10];
  state = self->_state;
  self->_state = v13;
}

- (id)_indexesOfChildrenForParent:(id)a3 recursive:(BOOL)a4
{
  v4 = a4;
  v7 = a3;
  v8 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:552 description:{@"Parent item identifier does not exist in section snapshot: %@", v7}];
  }

  v9 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v10 = [v9 childrenForParentAtIndex:v8 recursive:v4];

  return v10;
}

- (id)_indexesOfItems:(id)a3 ignoringItemsNotFound:(BOOL)a4
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = v6;
  v9 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v19;
    do
    {
      for (i = 0; i != v10; ++i)
      {
        if (*v19 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v18 + 1) + 8 * i);
        v14 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v13];
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          if (!a4)
          {
            v15 = [MEMORY[0x1E696AAA8] currentHandler];
            [v15 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:572 description:{@"Failed to find index of item %@", v13}];
          }
        }

        else
        {
          [v7 addIndex:v14];
        }
      }

      v10 = [v8 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v10);
  }

  return v7;
}

- (NSArray)_rootItems
{
  v3 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v4 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
  v5 = [v3 rootIndexes];
  if ([v5 count])
  {
    v6 = [v4 array];
    v7 = [v6 objectsAtIndexes:v5];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (NSOrderedSet)_visibleItemsOrderedSet
{
  v3 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v4 = [v3 isFlat];

  if (v4)
  {
    v5 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
  }

  else
  {
    v6 = MEMORY[0x1E695DFB8];
    v7 = [(NSDiffableDataSourceSectionSnapshot *)self visibleItems];
    v5 = [v6 orderedSetWithArray:v7];
  }

  return v5;
}

- (BOOL)_itemHasChildren:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:614 description:{@"Invalid parameter not satisfying: %@", @"item != nil"}];
  }

  v6 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    [v11 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:616 description:{@"Item identifier does not exist in section snapshot: %@", v5}];
  }

  v7 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v8 = [v7 hasChildrenForParentAtIndex:v6];

  return v8;
}

- (NSIndexSet)_visibleIndexes
{
  v2 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v3 = [v2 visibleIndexes];

  return v3;
}

- (id)_itemBeforeItem:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:627 description:{@"Invalid parameter not satisfying: %@", @"item != nil"}];
  }

  v6 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v5]- 1;
  if (v6 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v8 = 0;
  }

  else
  {
    v7 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v8 = [v7 objectAtIndexedSubscript:v6];
  }

  return v8;
}

- (id)_itemAfterItem:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:641 description:{@"Invalid parameter not satisfying: %@", @"item != nil"}];
  }

  v6 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || (v7 = v6 + 1, -[_NSDiffableDataSourceSectionSnapshotState identifiers](self->_state, "identifiers"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v7 >= v9))
  {
    v11 = 0;
  }

  else
  {
    v10 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v11 = [v10 objectAtIndexedSubscript:v7];
  }

  return v11;
}

@end