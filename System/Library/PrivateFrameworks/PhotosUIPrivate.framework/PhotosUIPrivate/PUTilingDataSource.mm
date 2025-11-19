@interface PUTilingDataSource
- (BOOL)isEqual:(id)a3;
- (PUTilingDataSource)init;
- (id)description;
- (int64_t)numberOfSubItemsAtIndexPath:(id)a3;
- (unint64_t)hash;
- (void)enumerateIndexPathsStartingAtIndexPath:(id)a3 reverseDirection:(BOOL)a4 usingBlock:(id)a5;
@end

@implementation PUTilingDataSource

- (void)enumerateIndexPathsStartingAtIndexPath:(id)a3 reverseDirection:(BOOL)a4 usingBlock:(id)a5
{
  v28 = a4;
  v7 = a3;
  v8 = a5;
  if (v8)
  {
    if (v7)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v23 = [MEMORY[0x1E696AAA8] currentHandler];
    [v23 handleFailureInMethod:a2 object:self file:@"PUTilingDataSource.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v24 = [MEMORY[0x1E696AAA8] currentHandler];
  [v24 handleFailureInMethod:a2 object:self file:@"PUTilingDataSource.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"startIndexPath != nil"}];

LABEL_3:
  if ([v7 length] <= 1)
  {
    v25 = [MEMORY[0x1E696AAA8] currentHandler];
    [v25 handleFailureInMethod:a2 object:self file:@"PUTilingDataSource.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"[startIndexPath length] >= 2"}];
  }

  if (v28)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [v7 length];
  v11 = v10 - 1;
  v12 = [v7 indexAtPosition:v10 - 2];
  v13 = [v7 indexPathByRemovingLastIndex];
  v14 = [v13 indexPathByRemovingLastIndex];

  v26 = v7;
  v27 = [(PUTilingDataSource *)self numberOfSubItemsAtIndexPath:v14];
  v15 = [v7 indexAtPosition:v11];
  v30 = 0;
  if ((v12 & 0x8000000000000000) == 0)
  {
    v16 = v15;
    v17 = v12;
    do
    {
      if (v17 >= v27 || (v30 & 1) != 0)
      {
        break;
      }

      v18 = [v14 indexPathByAddingIndex:v17];
      v19 = [(PUTilingDataSource *)self numberOfSubItemsAtIndexPath:v18];
      v20 = v19 - 1;
      if (!v28)
      {
        v20 = 0;
      }

      if (v17 != v12)
      {
        v16 = v20;
      }

      if ((v16 & 0x8000000000000000) == 0)
      {
        v21 = v19;
        while (v16 < v21 && (v30 & 1) == 0)
        {
          v22 = [v18 indexPathByAddingIndex:v16];
          v8[2](v8, v22, &v30);

          v16 += v9;
          if (v16 < 0)
          {
            v16 = -1;
            break;
          }
        }
      }

      v17 += v9;
    }

    while (v17 >= 0);
  }
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = PUTilingDataSource;
  v3 = [(PUTilingDataSource *)&v7 description];
  v4 = [(PUTilingDataSource *)self identifier];
  v5 = [v3 stringByAppendingFormat:@" identifier=%@", v4];

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [v4 identifier];
    v6 = [(PUTilingDataSource *)self identifier];
    v7 = [v6 isEqual:v5];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(PUTilingDataSource *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (int64_t)numberOfSubItemsAtIndexPath:(id)a3
{
  v5 = [MEMORY[0x1E696AAA8] currentHandler];
  [v5 handleFailureInMethod:a2 object:self file:@"PUTilingDataSource.m" lineNumber:28 description:@"concrete subclass must implement"];

  return 0;
}

- (PUTilingDataSource)init
{
  v12.receiver = self;
  v12.super_class = PUTilingDataSource;
  v2 = [(PUTilingDataSource *)&v12 init];
  if (v2)
  {
    v3 = MEMORY[0x1E696AEC0];
    v4 = [objc_opt_class() description];
    v5 = [MEMORY[0x1E696AFB0] UUID];
    v6 = [v5 UUIDString];
    v7 = [v3 stringWithFormat:@"%@-%@", v4, v6];
    identifier = v2->_identifier;
    v2->_identifier = v7;

    v9 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    changeObservers = v2->__changeObservers;
    v2->__changeObservers = v9;
  }

  return v2;
}

@end