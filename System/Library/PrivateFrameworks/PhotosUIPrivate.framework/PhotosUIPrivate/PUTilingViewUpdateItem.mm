@interface PUTilingViewUpdateItem
- (PUTilingViewUpdateItem)initWithAction:(int64_t)action indexPathBeforeUpdate:(id)update indexPathAfterUpdate:(id)afterUpdate dataSource:(id)source;
- (id)transformedIndexPath:(id)path withDataSource:(id)source;
@end

@implementation PUTilingViewUpdateItem

- (id)transformedIndexPath:(id)path withDataSource:(id)source
{
  pathCopy = path;
  sourceCopy = source;
  dataSource = [(PUTilingViewUpdateItem *)self dataSource];
  v10 = [sourceCopy isEqual:dataSource];

  v11 = pathCopy;
  if (v10)
  {
    action = [(PUTilingViewUpdateItem *)self action];
    if (action <= 1)
    {
      if (!action)
      {
        currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
        [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingViewUpdateItem.m" lineNumber:48 description:@"undefined action"];
        v11 = pathCopy;
        goto LABEL_14;
      }

      v11 = pathCopy;
      if (action != 1)
      {
        goto LABEL_15;
      }

      currentHandler = [(PUTilingViewUpdateItem *)self indexPathAfterUpdate];
      v14 = [pathCopy pu_indexPathAfterInsertingItemAtIndexPath:currentHandler];
    }

    else if (action == 2)
    {
      currentHandler = [(PUTilingViewUpdateItem *)self indexPathBeforeUpdate];
      v14 = [pathCopy pu_indexPathAfterDeletingItemAtIndexPath:currentHandler];
    }

    else
    {
      if (action == 3)
      {
        currentHandler = [(PUTilingViewUpdateItem *)self indexPathBeforeUpdate];
        indexPathAfterUpdate = [(PUTilingViewUpdateItem *)self indexPathAfterUpdate];
        v11 = [pathCopy pu_indexPathAfterMovingItemFromIndexPath:currentHandler toIndexPath:indexPathAfterUpdate];

        goto LABEL_14;
      }

      v11 = pathCopy;
      if (action != 4)
      {
        goto LABEL_15;
      }

      currentHandler = [(PUTilingViewUpdateItem *)self indexPathBeforeUpdate];
      v14 = [pathCopy pu_indexPathAfterReloadingItemAtIndexPath:currentHandler];
    }

    v11 = v14;

LABEL_14:
  }

LABEL_15:

  return v11;
}

- (PUTilingViewUpdateItem)initWithAction:(int64_t)action indexPathBeforeUpdate:(id)update indexPathAfterUpdate:(id)afterUpdate dataSource:(id)source
{
  updateCopy = update;
  afterUpdateCopy = afterUpdate;
  sourceCopy = source;
  if (action == 1)
  {
    if (updateCopy)
    {
      currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingViewUpdateItem.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"indexPathBeforeUpdate == nil"}];

      if (afterUpdateCopy)
      {
        goto LABEL_10;
      }

LABEL_17:
      currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
      [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUTilingViewUpdateItem.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"indexPathAfterUpdate != nil"}];
LABEL_18:

      if (sourceCopy)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_9:
    if (afterUpdateCopy)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  if (!action)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUTilingViewUpdateItem.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"action != PUTilingViewUpdateActionUndefined"}];

    if (updateCopy)
    {
      goto LABEL_4;
    }

LABEL_15:
    currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler4 handleFailureInMethod:a2 object:self file:@"PUTilingViewUpdateItem.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"indexPathBeforeUpdate != nil"}];

    goto LABEL_4;
  }

  if (!updateCopy)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (action != 4 && action != 2)
  {
    goto LABEL_9;
  }

  if (afterUpdateCopy)
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUTilingViewUpdateItem.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"indexPathAfterUpdate == nil"}];
    goto LABEL_18;
  }

LABEL_10:
  if (sourceCopy)
  {
    goto LABEL_11;
  }

LABEL_19:
  currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler5 handleFailureInMethod:a2 object:self file:@"PUTilingViewUpdateItem.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"dataSource != nil"}];

LABEL_11:
  v23.receiver = self;
  v23.super_class = PUTilingViewUpdateItem;
  v16 = [(PUTilingViewUpdateItem *)&v23 init];
  v17 = v16;
  if (v16)
  {
    v16->_action = action;
    objc_storeStrong(&v16->_indexPathBeforeUpdate, update);
    objc_storeStrong(&v17->_indexPathAfterUpdate, afterUpdate);
    objc_storeStrong(&v17->_dataSource, source);
  }

  return v17;
}

@end