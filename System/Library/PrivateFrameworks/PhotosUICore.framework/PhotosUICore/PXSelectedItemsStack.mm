@interface PXSelectedItemsStack
- (PXSelectedItemsStack)initWithDepth:(int64_t)depth;
- (void)performChanges:(id)changes;
- (void)setTopItems:(id)items;
- (void)updateWithSelectedItemsSnapshot:(id)snapshot;
@end

@implementation PXSelectedItemsStack

- (void)updateWithSelectedItemsSnapshot:(id)snapshot
{
  snapshotCopy = snapshot;
  depth = [(PXSelectedItemsStack *)self depth];
  topItemReferences = [(PXSelectedItemsStack *)self topItemReferences];
  v6 = [topItemReferences mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:depth];
  }

  v9 = v8;

  topItems = [(PXSelectedItemsStack *)self topItems];
  v11 = [topItems mutableCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:depth];
  }

  v14 = v13;

  if ([v9 count])
  {
    v15 = 0;
    do
    {
      v16 = [v9 objectAtIndexedSubscript:v15];
      v17 = [snapshotCopy containsItemReference:v16];

      if (v17)
      {
        [v9 replaceObjectAtIndex:v15++ withObject:v17];
      }

      else
      {
        [v9 removeObjectAtIndex:v15];
        [v14 removeObjectAtIndex:v15];
      }
    }

    while (v15 < [v9 count]);
  }

  v18 = [snapshotCopy count];
  if (v18 >= 1)
  {
    v19 = v18;
    for (i = 0; i != v19; ++i)
    {
      if ([v14 count] >= depth)
      {
        break;
      }

      v21 = [snapshotCopy itemReferenceAtIndex:i];
      if (([v9 containsObject:v21] & 1) == 0)
      {
        v22 = [snapshotCopy itemForItemReference:v21];
        null = [MEMORY[0x1E695DFB0] null];

        if (v22 != null)
        {
          [v9 addObject:v21];
          [v14 addObject:v22];
        }
      }
    }
  }

  [(PXSelectedItemsStack *)self setTopItemReferences:v9];
  [(PXSelectedItemsStack *)self setTopItems:v14];
}

- (void)performChanges:(id)changes
{
  v3.receiver = self;
  v3.super_class = PXSelectedItemsStack;
  [(PXSelectedItemsStack *)&v3 performChanges:changes];
}

- (void)setTopItems:(id)items
{
  itemsCopy = items;
  v5 = itemsCopy;
  if (self->_topItems != itemsCopy)
  {
    v9 = itemsCopy;
    v6 = [(NSArray *)itemsCopy isEqual:?];
    v5 = v9;
    if ((v6 & 1) == 0)
    {
      v7 = [(NSArray *)v9 copy];
      topItems = self->_topItems;
      self->_topItems = v7;

      [(PXSelectedItemsStack *)self signalChange:1];
      v5 = v9;
    }
  }
}

- (PXSelectedItemsStack)initWithDepth:(int64_t)depth
{
  v5.receiver = self;
  v5.super_class = PXSelectedItemsStack;
  result = [(PXSelectedItemsStack *)&v5 init];
  if (result)
  {
    result->_depth = depth;
  }

  return result;
}

@end