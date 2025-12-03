@interface NSDiffableDataSourceSectionSnapshot
- (BOOL)_itemHasChildren:(id)children;
- (BOOL)isEqual:(id)equal;
- (BOOL)isExpanded:(id)item;
- (BOOL)isVisible:(id)item;
- (NSArray)_rootItems;
- (NSArray)expandedItems;
- (NSArray)items;
- (NSArray)rootItems;
- (NSArray)visibleItems;
- (NSDiffableDataSourceSectionSnapshot)init;
- (NSDiffableDataSourceSectionSnapshot)initWithSnapshot:(id)snapshot;
- (NSDiffableDataSourceSectionSnapshot)initWithState:(id)state;
- (NSDiffableDataSourceSectionSnapshot)snapshotOfParentItem:(id)parentItem includingParentItem:(BOOL)includingParentItem;
- (NSIndexSet)_visibleIndexes;
- (NSInteger)levelOfItem:(id)item;
- (NSOrderedSet)_visibleItemsOrderedSet;
- (NSString)visualDescription;
- (id)_indexesOfChildrenForParent:(id)parent recursive:(BOOL)recursive;
- (id)_indexesOfItems:(id)items ignoringItemsNotFound:(BOOL)found;
- (id)_itemAfterItem:(id)item;
- (id)_itemBeforeItem:(id)item;
- (id)childrenOfParent:(id)parent recursive:(BOOL)recursive;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (id)insertSnapshot:(NSDiffableDataSourceSectionSnapshot *)snapshot afterItem:(id)item;
- (id)parentOfChildItem:(id)childItem;
- (void)_replaceItem:(id)item withItem:(id)withItem;
- (void)appendItems:(NSArray *)items;
- (void)appendItems:(NSArray *)items intoParentItem:(id)parentItem;
- (void)collapseItems:(NSArray *)items;
- (void)deleteAllItems;
- (void)deleteItems:(id)items orphanDisposition:(int64_t)disposition;
- (void)expandItems:(NSArray *)items;
- (void)insertItems:(NSArray *)items beforeItem:(id)beforeIdentifier;
- (void)insertItems:(id)items afterItem:(id)item insertionMode:(int64_t)mode;
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
  snapshotter = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  visibleIndexes = [snapshotter visibleIndexes];

  identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
  v6 = [identifiers objectsAtIndexes:visibleIndexes];

  return v6;
}

- (NSDiffableDataSourceSectionSnapshot)initWithState:(id)state
{
  stateCopy = state;
  v13.receiver = self;
  v13.super_class = NSDiffableDataSourceSectionSnapshot;
  v6 = [(NSDiffableDataSourceSectionSnapshot *)&v13 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_state, state);
    v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
    expandedItemsUpdates = v7->_expandedItemsUpdates;
    v7->_expandedItemsUpdates = v8;

    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    collapsedItemsUpdates = v7->_collapsedItemsUpdates;
    v7->_collapsedItemsUpdates = v10;
  }

  return v7;
}

- (NSDiffableDataSourceSectionSnapshot)initWithSnapshot:(id)snapshot
{
  _state = [snapshot _state];
  v5 = [(NSDiffableDataSourceSectionSnapshot *)self initWithState:_state];

  return v5;
}

- (void)appendItems:(NSArray *)items
{
  v23 = items;
  if ([(NSArray *)v23 count])
  {
    snapshotterMutableCopy = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotterMutableCopy];
    [snapshotterMutableCopy appendChildItemsWithCount:{-[NSArray count](v23, "count")}];
    identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v7 = [identifiers mutableCopy];

    v8 = [v7 count];
    [v7 addObjectsFromArray:v23];
    v9 = [v7 count] - v8;
    if (v9 != [(NSArray *)v23 count])
    {
      identifiers2 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
      BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__DUPLICATE_ITEM_IDENTIFIERS_IN_SECTION_SNAPSHOT(identifiers2, v23);
    }

    v11 = [[_NSDiffableDataSourceSectionSnapshotState alloc] initWithSnapshotter:snapshotterMutableCopy identifiers:v7];
    state = self->_state;
    self->_state = v11;

    snapshotter = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
    v14 = [snapshotter count];
    identifiers3 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v16 = [identifiers3 count];

    if (v14 != v16)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      snapshotter2 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
      v19 = [snapshotter2 count];
      identifiers4 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
      v21 = [identifiers4 count];
      identifiers5 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
      [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:76 description:{@"NSDiffableDataSourceSectionSnapshot internal inconsistency: snapshotter count (%ld) does not match identifier count (%ld). Identifiers: %@", v19, v21, identifiers5}];
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
        lastObject = [v8 lastObject];
        [(NSDiffableDataSourceSectionSnapshot *)self insertItems:v33 afterItem:lastObject];
      }

      else
      {
        v10 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v7];
        if (v10 == 0x7FFFFFFFFFFFFFFFLL)
        {
          currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
          [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:97 description:{@"Parent item identifier does not exist in section snapshot: %@", v7}];
        }

        lastObject = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotterMutableCopy];
        v11 = [lastObject appendChildItemsWithCount:-[NSArray count](v33 toParentIndex:{"count"), v10}];
        v13 = v12;
        identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
        v15 = [identifiers mutableCopy];

        v16 = [v15 count];
        v17 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v11, v13}];
        [v15 insertObjects:v33 atIndexes:v17];

        v18 = [v15 count] - v16;
        if (v18 != [(NSArray *)v33 count])
        {
          identifiers2 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
          BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__DUPLICATE_ITEM_IDENTIFIERS_IN_SECTION_SNAPSHOT(identifiers2, v33);
        }

        v20 = [[_NSDiffableDataSourceSectionSnapshotState alloc] initWithSnapshotter:lastObject identifiers:v15];
        state = self->_state;
        self->_state = v20;
      }

      snapshotter = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
      v23 = [snapshotter count];
      identifiers3 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
      v25 = [identifiers3 count];

      if (v23 != v25)
      {
        currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
        snapshotter2 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
        v28 = [snapshotter2 count];
        identifiers4 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
        v30 = [identifiers4 count];
        identifiers5 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
        [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:117 description:{@"NSDiffableDataSourceSectionSnapshot internal inconsistency: snapshotter count (%ld) does not match identifier count (%ld). Identifiers: %@", v28, v30, identifiers5}];
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
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:131 description:{@"Item identifier to insert before does not exist in section snapshot: %@", v7}];
    }

    v9 = [(NSArray *)v21 count];
    snapshotterMutableCopy = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotterMutableCopy];
    [snapshotterMutableCopy insertCount:v9 beforeIndex:v8];
    identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v12 = [identifiers mutableCopy];

    v13 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v8, v9}];
    v14 = [v12 count];
    [v12 insertObjects:v21 atIndexes:v13];
    if ([v12 count] - v14 != v9)
    {
      identifiers2 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
      BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__DUPLICATE_ITEM_IDENTIFIERS_IN_SECTION_SNAPSHOT(identifiers2, v21);
    }

    v16 = [snapshotterMutableCopy count];
    if (v16 != [v12 count])
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:148 description:{@"NSDiffableDataSourceSectionSnapshot internal inconsistency: snapshotter count (%ld) does not match identifier count (%ld). Identifiers: %@", objc_msgSend(snapshotterMutableCopy, "count"), objc_msgSend(v12, "count"), v12}];
    }

    v17 = [[_NSDiffableDataSourceSectionSnapshotState alloc] initWithSnapshotter:snapshotterMutableCopy identifiers:v12];
    state = self->_state;
    self->_state = v17;
  }
}

- (void)insertItems:(id)items afterItem:(id)item insertionMode:(int64_t)mode
{
  itemsCopy = items;
  itemCopy = item;
  if ([itemsCopy count])
  {
    if (mode >= 2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:163 description:{@"Invalid _NSDiffableDataSourceSectionSnapshotInsertionMode: %ld", mode}];
    }

    v10 = mode != 0;
    v11 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:itemCopy];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:167 description:{@"Item identifier to insert after does not exist in section snapshot: %@", itemCopy}];
    }

    v12 = [itemsCopy count];
    snapshotterMutableCopy = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotterMutableCopy];
    v14 = [snapshotterMutableCopy insertCount:v12 afterIndex:v11 insertionMode:v10];
    identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v16 = [identifiers mutableCopy];

    v17 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v14, v12}];
    v18 = [v16 count];
    [v16 insertObjects:itemsCopy atIndexes:v17];
    if ([v16 count] - v18 != v12)
    {
      identifiers2 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
      BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__DUPLICATE_ITEM_IDENTIFIERS_IN_SECTION_SNAPSHOT(identifiers2, itemsCopy);
    }

    v20 = [snapshotterMutableCopy count];
    if (v20 != [v16 count])
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:184 description:{@"NSDiffableDataSourceSectionSnapshot internal inconsistency: snapshotter count (%ld) does not match identifier count (%ld). Identifiers: %@", objc_msgSend(snapshotterMutableCopy, "count"), objc_msgSend(v16, "count"), v16}];
    }

    v21 = [[_NSDiffableDataSourceSectionSnapshotState alloc] initWithSnapshotter:snapshotterMutableCopy identifiers:v16];
    state = self->_state;
    self->_state = v21;
  }
}

- (void)deleteItems:(id)items orphanDisposition:(int64_t)disposition
{
  itemsCopy = items;
  if ([itemsCopy count])
  {
    if (disposition >= 2)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:200 description:{@"Invalid _NSDiffableDataSourceSectionSnapshotOrphanDisposition: %ld", disposition}];
    }

    snapshotterMutableCopy = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotterMutableCopy];
    identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v10 = [identifiers mutableCopy];

    v11 = [(NSDiffableDataSourceSectionSnapshot *)self _indexesOfItems:itemsCopy];
    v12 = [v11 mutableCopy];
    isFlat = [snapshotterMutableCopy isFlat];
    if (!disposition && (isFlat & 1) == 0)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 3221225472;
      v17[2] = __69__NSDiffableDataSourceSectionSnapshot_deleteItems_orphanDisposition___block_invoke;
      v17[3] = &unk_1E70F43F0;
      v18 = snapshotterMutableCopy;
      v19 = v12;
      [v11 enumerateIndexesUsingBlock:v17];
    }

    [snapshotterMutableCopy deleteIndexes:v12 orphanDisposition:disposition != 0];
    [v10 removeObjectsAtIndexes:v12];
    v14 = [[_NSDiffableDataSourceSectionSnapshotState alloc] initWithSnapshotter:snapshotterMutableCopy identifiers:v10];
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
    snapshotterMutableCopy = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotterMutableCopy];
    [snapshotterMutableCopy expandIndexes:v4];
    v6 = [_NSDiffableDataSourceSectionSnapshotState alloc];
    identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v8 = [(_NSDiffableDataSourceSectionSnapshotState *)v6 initWithSnapshotter:snapshotterMutableCopy identifiers:identifiers];
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
    snapshotterMutableCopy = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotterMutableCopy];
    [snapshotterMutableCopy collapseIndexes:v4];
    v6 = [_NSDiffableDataSourceSectionSnapshotState alloc];
    identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v8 = [(_NSDiffableDataSourceSectionSnapshotState *)v6 initWithSnapshotter:snapshotterMutableCopy identifiers:identifiers];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:259 description:{@"Invalid parameter not satisfying: %@", @"parentItem != nil"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:260 description:{@"Invalid parameter not satisfying: %@", @"snapshot != nil"}];

LABEL_3:
  snapshotterMutableCopy = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotterMutableCopy];
  identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
  v10 = [identifiers mutableCopy];

  v11 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v24];
  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:266 description:{@"Parent item identifier does not exist in section snapshot: %@", v24}];
  }

  snapshotter = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v13 = [snapshotter childrenForParentAtIndex:v11 recursive:1];

  if (v13)
  {
    [v10 removeObjectsAtIndexes:v13];
  }

  items = [(NSDiffableDataSourceSectionSnapshot *)v7 items];
  v15 = [items count];

  if (v15)
  {
    v16 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v11 + 1, v15}];
    items2 = [(NSDiffableDataSourceSectionSnapshot *)v7 items];
    [v10 insertObjects:items2 atIndexes:v16];
  }

  snapshotter2 = [(NSDiffableDataSourceSectionSnapshot *)v7 snapshotter];
  [snapshotterMutableCopy replaceChildItemsFromSnapshotter:snapshotter2 forParentIndex:v11];

  v19 = [[_NSDiffableDataSourceSectionSnapshotState alloc] initWithSnapshotter:snapshotterMutableCopy identifiers:v10];
  state = self->_state;
  self->_state = v19;
}

- (BOOL)isExpanded:(id)item
{
  v5 = item;
  v6 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:308 description:{@"Item identifier does not exist in section snapshot: %@", v5}];
  }

  snapshotter = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v8 = [snapshotter indexIsExpanded:v6];

  return v8;
}

- (BOOL)isVisible:(id)item
{
  v5 = item;
  v6 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:315 description:{@"Item identifier does not exist in section snapshot: %@", v5}];
  }

  snapshotter = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v8 = [snapshotter indexIsVisible:v6];

  return v8;
}

- (NSInteger)levelOfItem:(id)item
{
  v5 = item;
  v6 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v5];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:323 description:{@"Item identifier does not exist in section snapshot: %@", v5}];
  }

  snapshotter = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v8 = [snapshotter levelForIndex:v6];

  return v8;
}

- (id)childrenOfParent:(id)parent recursive:(BOOL)recursive
{
  recursiveCopy = recursive;
  parentCopy = parent;
  v8 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:parentCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:340 description:{@"Parent item identifier does not exist in section snapshot: %@", parentCopy}];
  }

  snapshotter = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v10 = [snapshotter childrenForParentAtIndex:v8 recursive:recursiveCopy];

  identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
  v12 = [identifiers objectsAtIndexes:v10];

  return v12;
}

- (NSDiffableDataSourceSectionSnapshot)snapshotOfParentItem:(id)parentItem includingParentItem:(BOOL)includingParentItem
{
  v4 = includingParentItem;
  v7 = parentItem;
  if (!v7)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:359 description:{@"Invalid parameter not satisfying: %@", @"item != nil"}];
  }

  v8 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v7];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:361 description:{@"Parent item identifier does not exist in section snapshot: %@", v7}];
  }

  snapshotter = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v10 = [snapshotter snapshotterRepresentingSubtreeForIndex:v8 includingParent:v4];

  _allIndexes = [v10 _allIndexes];
  if ([_allIndexes count])
  {
    v12 = MEMORY[0x1E695DFB8];
    identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    _allIndexes2 = [v10 _allIndexes];
    v15 = [identifiers objectsAtIndexes:_allIndexes2];
    v16 = [v12 orderedSetWithArray:v15];

    v17 = [v10 _snapshotterByShiftingIndexesByCount:{-objc_msgSend(_allIndexes, "firstIndex")}];
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
  items = [(NSDiffableDataSourceSectionSnapshot *)v25 items];
  v9 = [items count];
  if (v9)
  {
    v10 = v9;
    v11 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v7];
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:391 description:{@"Item identifier to insert before does not exist in section snapshot: %@", v7}];
    }

    snapshotterMutableCopy = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotterMutableCopy];
    _state = [(NSDiffableDataSourceSectionSnapshot *)v25 _state];
    snapshotterMutableCopy2 = [_state snapshotterMutableCopy];

    [snapshotterMutableCopy insertSubtreeFromSnapshotter:snapshotterMutableCopy2 beforeIndex:v11];
    identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v16 = [identifiers mutableCopy];

    v17 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v11, v10}];
    v18 = [v16 count];
    [v16 insertObjects:items atIndexes:v17];
    if ([v16 count] - v18 != v10)
    {
      identifiers2 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
      BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__DUPLICATE_ITEM_IDENTIFIERS_IN_SECTION_SNAPSHOT(identifiers2, items);
    }

    v20 = [snapshotterMutableCopy count];
    if (v20 != [v16 count])
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:408 description:{@"NSDiffableDataSourceSectionSnapshot internal inconsistency: snapshotter count (%ld) does not match identifier count (%ld). Identifiers: %@", objc_msgSend(snapshotterMutableCopy, "count"), objc_msgSend(v16, "count"), v16}];
    }

    v21 = [[_NSDiffableDataSourceSectionSnapshotState alloc] initWithSnapshotter:snapshotterMutableCopy identifiers:v16];
    state = self->_state;
    self->_state = v21;
  }
}

- (id)insertSnapshot:(NSDiffableDataSourceSectionSnapshot *)snapshot afterItem:(id)item
{
  v7 = snapshot;
  v8 = item;
  items = [(NSDiffableDataSourceSectionSnapshot *)v7 items];
  v10 = [items count];
  if (v10)
  {
    v11 = v10;
    v12 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:v8];
    if (v12 == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:421 description:{@"Item identifier to insert after does not exist in section snapshot: %@", v8}];
    }

    v32 = a2;
    snapshotterMutableCopy = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotterMutableCopy];
    _state = [(NSDiffableDataSourceSectionSnapshot *)v7 _state];
    snapshotterMutableCopy2 = [_state snapshotterMutableCopy];

    v33 = snapshotterMutableCopy2;
    v16 = [snapshotterMutableCopy insertSubtreeFromSnapshotter:snapshotterMutableCopy2 afterIndex:v12];
    if (v16 == 0x7FFFFFFFFFFFFFFFLL)
    {
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:v32 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:426 description:{@"NSDiffableDataSourceSectionSnapshot internal inconsistency: failed to insert subtree from snapshotter (%@) into snapshotter (%@) at insertion index %ld", v33, snapshotterMutableCopy, v12}];
    }

    identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    if (v16 == [identifiers count])
    {
      v18 = 0;
    }

    else
    {
      if (v16 - v12 != 1)
      {
        v12 = v16;
      }

      identifiers2 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
      v18 = [identifiers2 objectAtIndexedSubscript:v12];
    }

    identifiers3 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v21 = [identifiers3 mutableCopy];

    v22 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{v16, v11}];
    v23 = [v21 count];
    [v21 insertObjects:items atIndexes:v22];
    if ([v21 count] - v23 != v11)
    {
      identifiers4 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
      BUG_IN_CLIENT_OF_DIFFABLE_DATA_SOURCE__DUPLICATE_ITEM_IDENTIFIERS_IN_SECTION_SNAPSHOT(identifiers4, items);
    }

    v25 = [snapshotterMutableCopy count];
    if (v25 != [v21 count])
    {
      currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler3 handleFailureInMethod:v32 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:441 description:{@"NSDiffableDataSourceSectionSnapshot internal inconsistency: snapshotter count (%ld) does not match identifier count (%ld). Identifiers: %@", objc_msgSend(snapshotterMutableCopy, "count"), objc_msgSend(v21, "count"), v21}];
    }

    v26 = [[_NSDiffableDataSourceSectionSnapshotState alloc] initWithSnapshotter:snapshotterMutableCopy identifiers:v21];
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
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:451 description:{@"Child item identifier does not exist in section snapshot: %@", v5}];
  }

  snapshotter = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v8 = [snapshotter parentForChildAtIndex:v6];

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9 = 0;
  }

  else
  {
    identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v9 = [identifiers objectAtIndexedSubscript:v8];
  }

  return v9;
}

- (NSArray)items
{
  identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
  array = [identifiers array];

  return array;
}

- (NSArray)expandedItems
{
  snapshotter = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  expandedIndexes = [snapshotter expandedIndexes];

  identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
  v6 = [identifiers objectsAtIndexes:expandedIndexes];

  return v6;
}

- (NSArray)rootItems
{
  snapshotter = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  rootIndexes = [snapshotter rootIndexes];

  identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
  v6 = [identifiers objectsAtIndexes:rootIndexes];

  return v6;
}

- (NSString)visualDescription
{
  v3 = MEMORY[0x1E696AD60];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p\n", v5, self];

  identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
  snapshotter = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  if ([identifiers count])
  {
    v9 = 0;
    do
    {
      v10 = [snapshotter levelForIndex:v9];
      v11 = [identifiers objectAtIndexedSubscript:v9];
      v12 = [&stru_1EFB14550 stringByPaddingToLength:2 * v10 withString:@" " startingAtIndex:0];
      v13 = [snapshotter indexIsExpanded:v9];
      v14 = @"-";
      if (v13)
      {
        v14 = @"+";
      }

      v15 = v14;
      if ([snapshotter indexIsVisible:v9])
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

    while (v9 < [identifiers count]);
  }

  [v6 appendString:@">"];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  snapshotter = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  visualDescription = [snapshotter visualDescription];
  v8 = [v3 stringWithFormat:@"<%@: %p\n%@>", v5, self, visualDescription];

  return v8;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_opt_class() allocWithZone:zone];
  state = self->_state;

  return [v4 initWithState:state];
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v5 = 1;
  }

  else
  {
    objc_opt_class();
    v5 = (objc_opt_isKindOfClass() & 1) != 0 && [(_NSDiffableDataSourceSectionSnapshotState *)self->_state isEqual:equalCopy->_state];
  }

  return v5;
}

- (void)_replaceItem:(id)item withItem:(id)withItem
{
  itemCopy = item;
  withItemCopy = withItem;
  identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
  v9 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:itemCopy];
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:540 description:{@"Item identifier does not exist in section snapshot: %@", itemCopy}];
  }

  if ([(_NSDiffableDataSourceSectionSnapshotState *)self->_state containsIdentifier:withItemCopy])
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:542 description:{@"Item identifier already exists in section snapshot: %@", withItemCopy}];
  }

  v10 = [identifiers mutableCopy];
  [v10 replaceObjectAtIndex:v9 withObject:withItemCopy];
  v11 = [_NSDiffableDataSourceSectionSnapshotState alloc];
  snapshotterMutableCopy = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotterMutableCopy];
  v13 = [(_NSDiffableDataSourceSectionSnapshotState *)v11 initWithSnapshotter:snapshotterMutableCopy identifiers:v10];
  state = self->_state;
  self->_state = v13;
}

- (id)_indexesOfChildrenForParent:(id)parent recursive:(BOOL)recursive
{
  recursiveCopy = recursive;
  parentCopy = parent;
  v8 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:parentCopy];
  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:552 description:{@"Parent item identifier does not exist in section snapshot: %@", parentCopy}];
  }

  snapshotter = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v10 = [snapshotter childrenForParentAtIndex:v8 recursive:recursiveCopy];

  return v10;
}

- (id)_indexesOfItems:(id)items ignoringItemsNotFound:(BOOL)found
{
  v23 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v7 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v8 = itemsCopy;
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
          if (!found)
          {
            currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
            [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:572 description:{@"Failed to find index of item %@", v13}];
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
  snapshotter = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
  rootIndexes = [snapshotter rootIndexes];
  if ([rootIndexes count])
  {
    array = [identifiers array];
    v7 = [array objectsAtIndexes:rootIndexes];
  }

  else
  {
    v7 = MEMORY[0x1E695E0F0];
  }

  return v7;
}

- (NSOrderedSet)_visibleItemsOrderedSet
{
  snapshotter = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  isFlat = [snapshotter isFlat];

  if (isFlat)
  {
    identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
  }

  else
  {
    v6 = MEMORY[0x1E695DFB8];
    visibleItems = [(NSDiffableDataSourceSectionSnapshot *)self visibleItems];
    identifiers = [v6 orderedSetWithArray:visibleItems];
  }

  return identifiers;
}

- (BOOL)_itemHasChildren:(id)children
{
  childrenCopy = children;
  if (!childrenCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:614 description:{@"Invalid parameter not satisfying: %@", @"item != nil"}];
  }

  v6 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:childrenCopy];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:616 description:{@"Item identifier does not exist in section snapshot: %@", childrenCopy}];
  }

  snapshotter = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  v8 = [snapshotter hasChildrenForParentAtIndex:v6];

  return v8;
}

- (NSIndexSet)_visibleIndexes
{
  snapshotter = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state snapshotter];
  visibleIndexes = [snapshotter visibleIndexes];

  return visibleIndexes;
}

- (id)_itemBeforeItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:627 description:{@"Invalid parameter not satisfying: %@", @"item != nil"}];
  }

  v6 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:itemCopy]- 1;
  if (v6 > 0x7FFFFFFFFFFFFFFDLL)
  {
    v8 = 0;
  }

  else
  {
    identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v8 = [identifiers objectAtIndexedSubscript:v6];
  }

  return v8;
}

- (id)_itemAfterItem:(id)item
{
  itemCopy = item;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"NSDiffableDataSourceSectionSnapshot.m" lineNumber:641 description:{@"Invalid parameter not satisfying: %@", @"item != nil"}];
  }

  v6 = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state indexOfIdentifier:itemCopy];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL || (v7 = v6 + 1, -[_NSDiffableDataSourceSectionSnapshotState identifiers](self->_state, "identifiers"), v8 = objc_claimAutoreleasedReturnValue(), v9 = [v8 count], v8, v7 >= v9))
  {
    v11 = 0;
  }

  else
  {
    identifiers = [(_NSDiffableDataSourceSectionSnapshotState *)self->_state identifiers];
    v11 = [identifiers objectAtIndexedSubscript:v7];
  }

  return v11;
}

@end