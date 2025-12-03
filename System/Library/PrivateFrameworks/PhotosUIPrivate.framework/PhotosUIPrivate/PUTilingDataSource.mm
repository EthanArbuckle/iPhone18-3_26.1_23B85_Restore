@interface PUTilingDataSource
- (BOOL)isEqual:(id)equal;
- (PUTilingDataSource)init;
- (id)description;
- (int64_t)numberOfSubItemsAtIndexPath:(id)path;
- (unint64_t)hash;
- (void)enumerateIndexPathsStartingAtIndexPath:(id)path reverseDirection:(BOOL)direction usingBlock:(id)block;
@end

@implementation PUTilingDataSource

- (void)enumerateIndexPathsStartingAtIndexPath:(id)path reverseDirection:(BOOL)direction usingBlock:(id)block
{
  directionCopy = direction;
  pathCopy = path;
  blockCopy = block;
  if (blockCopy)
  {
    if (pathCopy)
    {
      goto LABEL_3;
    }
  }

  else
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingDataSource.m" lineNumber:54 description:{@"Invalid parameter not satisfying: %@", @"block != nil"}];

    if (pathCopy)
    {
      goto LABEL_3;
    }
  }

  currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler2 handleFailureInMethod:a2 object:self file:@"PUTilingDataSource.m" lineNumber:55 description:{@"Invalid parameter not satisfying: %@", @"startIndexPath != nil"}];

LABEL_3:
  if ([pathCopy length] <= 1)
  {
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"PUTilingDataSource.m" lineNumber:56 description:{@"Invalid parameter not satisfying: %@", @"[startIndexPath length] >= 2"}];
  }

  if (directionCopy)
  {
    v9 = -1;
  }

  else
  {
    v9 = 1;
  }

  v10 = [pathCopy length];
  v11 = v10 - 1;
  v12 = [pathCopy indexAtPosition:v10 - 2];
  indexPathByRemovingLastIndex = [pathCopy indexPathByRemovingLastIndex];
  v13IndexPathByRemovingLastIndex = [indexPathByRemovingLastIndex indexPathByRemovingLastIndex];

  v26 = pathCopy;
  v27 = [(PUTilingDataSource *)self numberOfSubItemsAtIndexPath:v13IndexPathByRemovingLastIndex];
  v15 = [pathCopy indexAtPosition:v11];
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

      v18 = [v13IndexPathByRemovingLastIndex indexPathByAddingIndex:v17];
      v19 = [(PUTilingDataSource *)self numberOfSubItemsAtIndexPath:v18];
      v20 = v19 - 1;
      if (!directionCopy)
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
          blockCopy[2](blockCopy, v22, &v30);

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
  identifier = [(PUTilingDataSource *)self identifier];
  v5 = [v3 stringByAppendingFormat:@" identifier=%@", identifier];

  return v5;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    identifier = [equalCopy identifier];
    identifier2 = [(PUTilingDataSource *)self identifier];
    v7 = [identifier2 isEqual:identifier];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (unint64_t)hash
{
  identifier = [(PUTilingDataSource *)self identifier];
  v3 = [identifier hash];

  return v3;
}

- (int64_t)numberOfSubItemsAtIndexPath:(id)path
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PUTilingDataSource.m" lineNumber:28 description:@"concrete subclass must implement"];

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
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];
    v7 = [v3 stringWithFormat:@"%@-%@", v4, uUIDString];
    identifier = v2->_identifier;
    v2->_identifier = v7;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    changeObservers = v2->__changeObservers;
    v2->__changeObservers = weakObjectsHashTable;
  }

  return v2;
}

@end