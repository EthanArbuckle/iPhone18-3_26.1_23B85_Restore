@interface PUTilingViewUpdateItem
- (PUTilingViewUpdateItem)initWithAction:(int64_t)a3 indexPathBeforeUpdate:(id)a4 indexPathAfterUpdate:(id)a5 dataSource:(id)a6;
- (id)transformedIndexPath:(id)a3 withDataSource:(id)a4;
@end

@implementation PUTilingViewUpdateItem

- (id)transformedIndexPath:(id)a3 withDataSource:(id)a4
{
  v7 = a3;
  v8 = a4;
  v9 = [(PUTilingViewUpdateItem *)self dataSource];
  v10 = [v8 isEqual:v9];

  v11 = v7;
  if (v10)
  {
    v12 = [(PUTilingViewUpdateItem *)self action];
    if (v12 <= 1)
    {
      if (!v12)
      {
        v13 = [MEMORY[0x1E696AAA8] currentHandler];
        [v13 handleFailureInMethod:a2 object:self file:@"PUTilingViewUpdateItem.m" lineNumber:48 description:@"undefined action"];
        v11 = v7;
        goto LABEL_14;
      }

      v11 = v7;
      if (v12 != 1)
      {
        goto LABEL_15;
      }

      v13 = [(PUTilingViewUpdateItem *)self indexPathAfterUpdate];
      v14 = [v7 pu_indexPathAfterInsertingItemAtIndexPath:v13];
    }

    else if (v12 == 2)
    {
      v13 = [(PUTilingViewUpdateItem *)self indexPathBeforeUpdate];
      v14 = [v7 pu_indexPathAfterDeletingItemAtIndexPath:v13];
    }

    else
    {
      if (v12 == 3)
      {
        v13 = [(PUTilingViewUpdateItem *)self indexPathBeforeUpdate];
        v15 = [(PUTilingViewUpdateItem *)self indexPathAfterUpdate];
        v11 = [v7 pu_indexPathAfterMovingItemFromIndexPath:v13 toIndexPath:v15];

        goto LABEL_14;
      }

      v11 = v7;
      if (v12 != 4)
      {
        goto LABEL_15;
      }

      v13 = [(PUTilingViewUpdateItem *)self indexPathBeforeUpdate];
      v14 = [v7 pu_indexPathAfterReloadingItemAtIndexPath:v13];
    }

    v11 = v14;

LABEL_14:
  }

LABEL_15:

  return v11;
}

- (PUTilingViewUpdateItem)initWithAction:(int64_t)a3 indexPathBeforeUpdate:(id)a4 indexPathAfterUpdate:(id)a5 dataSource:(id)a6
{
  v12 = a4;
  v13 = a5;
  v14 = a6;
  if (a3 == 1)
  {
    if (v12)
    {
      v21 = [MEMORY[0x1E696AAA8] currentHandler];
      [v21 handleFailureInMethod:a2 object:self file:@"PUTilingViewUpdateItem.m" lineNumber:21 description:{@"Invalid parameter not satisfying: %@", @"indexPathBeforeUpdate == nil"}];

      if (v13)
      {
        goto LABEL_10;
      }

LABEL_17:
      v15 = [MEMORY[0x1E696AAA8] currentHandler];
      [v15 handleFailureInMethod:a2 object:self file:@"PUTilingViewUpdateItem.m" lineNumber:28 description:{@"Invalid parameter not satisfying: %@", @"indexPathAfterUpdate != nil"}];
LABEL_18:

      if (v14)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }

LABEL_9:
    if (v13)
    {
      goto LABEL_10;
    }

    goto LABEL_17;
  }

  if (!a3)
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    [v19 handleFailureInMethod:a2 object:self file:@"PUTilingViewUpdateItem.m" lineNumber:19 description:{@"Invalid parameter not satisfying: %@", @"action != PUTilingViewUpdateActionUndefined"}];

    if (v12)
    {
      goto LABEL_4;
    }

LABEL_15:
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"PUTilingViewUpdateItem.m" lineNumber:23 description:{@"Invalid parameter not satisfying: %@", @"indexPathBeforeUpdate != nil"}];

    goto LABEL_4;
  }

  if (!v12)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (a3 != 4 && a3 != 2)
  {
    goto LABEL_9;
  }

  if (v13)
  {
    v15 = [MEMORY[0x1E696AAA8] currentHandler];
    [v15 handleFailureInMethod:a2 object:self file:@"PUTilingViewUpdateItem.m" lineNumber:26 description:{@"Invalid parameter not satisfying: %@", @"indexPathAfterUpdate == nil"}];
    goto LABEL_18;
  }

LABEL_10:
  if (v14)
  {
    goto LABEL_11;
  }

LABEL_19:
  v22 = [MEMORY[0x1E696AAA8] currentHandler];
  [v22 handleFailureInMethod:a2 object:self file:@"PUTilingViewUpdateItem.m" lineNumber:30 description:{@"Invalid parameter not satisfying: %@", @"dataSource != nil"}];

LABEL_11:
  v23.receiver = self;
  v23.super_class = PUTilingViewUpdateItem;
  v16 = [(PUTilingViewUpdateItem *)&v23 init];
  v17 = v16;
  if (v16)
  {
    v16->_action = a3;
    objc_storeStrong(&v16->_indexPathBeforeUpdate, a4);
    objc_storeStrong(&v17->_indexPathAfterUpdate, a5);
    objc_storeStrong(&v17->_dataSource, a6);
  }

  return v17;
}

@end