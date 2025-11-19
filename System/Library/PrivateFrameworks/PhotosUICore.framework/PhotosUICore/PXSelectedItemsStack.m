@interface PXSelectedItemsStack
- (PXSelectedItemsStack)initWithDepth:(int64_t)a3;
- (void)performChanges:(id)a3;
- (void)setTopItems:(id)a3;
- (void)updateWithSelectedItemsSnapshot:(id)a3;
@end

@implementation PXSelectedItemsStack

- (void)updateWithSelectedItemsSnapshot:(id)a3
{
  v24 = a3;
  v4 = [(PXSelectedItemsStack *)self depth];
  v5 = [(PXSelectedItemsStack *)self topItemReferences];
  v6 = [v5 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
  }

  v9 = v8;

  v10 = [(PXSelectedItemsStack *)self topItems];
  v11 = [v10 mutableCopy];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [MEMORY[0x1E695DF70] arrayWithCapacity:v4];
  }

  v14 = v13;

  if ([v9 count])
  {
    v15 = 0;
    do
    {
      v16 = [v9 objectAtIndexedSubscript:v15];
      v17 = [v24 containsItemReference:v16];

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

  v18 = [v24 count];
  if (v18 >= 1)
  {
    v19 = v18;
    for (i = 0; i != v19; ++i)
    {
      if ([v14 count] >= v4)
      {
        break;
      }

      v21 = [v24 itemReferenceAtIndex:i];
      if (([v9 containsObject:v21] & 1) == 0)
      {
        v22 = [v24 itemForItemReference:v21];
        v23 = [MEMORY[0x1E695DFB0] null];

        if (v22 != v23)
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

- (void)performChanges:(id)a3
{
  v3.receiver = self;
  v3.super_class = PXSelectedItemsStack;
  [(PXSelectedItemsStack *)&v3 performChanges:a3];
}

- (void)setTopItems:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->_topItems != v4)
  {
    v9 = v4;
    v6 = [(NSArray *)v4 isEqual:?];
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

- (PXSelectedItemsStack)initWithDepth:(int64_t)a3
{
  v5.receiver = self;
  v5.super_class = PXSelectedItemsStack;
  result = [(PXSelectedItemsStack *)&v5 init];
  if (result)
  {
    result->_depth = a3;
  }

  return result;
}

@end