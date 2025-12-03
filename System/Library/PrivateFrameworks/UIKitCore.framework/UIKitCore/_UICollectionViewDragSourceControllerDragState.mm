@interface _UICollectionViewDragSourceControllerDragState
- (_UICollectionViewDragSourceControllerDragState)init;
- (id)dataSourceIndexPathForDragItem:(void *)item forCollectionView:;
- (id)description;
- (id)dragFromDataSourceIndexPath;
- (id)draggingDataSourceIndexPaths;
- (void)rebaseForUpdates:(void *)updates;
@end

@implementation _UICollectionViewDragSourceControllerDragState

- (id)draggingDataSourceIndexPaths
{
  if (self)
  {
    dataSourceIndexPathsOfDraggingItems = [self dataSourceIndexPathsOfDraggingItems];
    array = [dataSourceIndexPathsOfDraggingItems array];
  }

  else
  {
    array = 0;
  }

  return array;
}

- (id)dragFromDataSourceIndexPath
{
  if (self)
  {
    dataSourceIndexPathsOfDraggingItems = [self dataSourceIndexPathsOfDraggingItems];
    firstObject = [dataSourceIndexPathsOfDraggingItems firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (id)dataSourceIndexPathForDragItem:(void *)item forCollectionView:
{
  itemCopy = item;
  if (self)
  {
    _privateLocalContext = [a2 _privateLocalContext];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      collectionView = [_privateLocalContext collectionView];
      if (collectionView == itemCopy)
      {
        self = [_privateLocalContext indexPath];
      }

      else
      {
        self = 0;
      }
    }

    else
    {
      self = 0;
    }
  }

  return self;
}

- (void)rebaseForUpdates:(void *)updates
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (updates)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    dataSourceIndexPathsOfDraggingItems = [updates dataSourceIndexPathsOfDraggingItems];
    v6 = [dataSourceIndexPathsOfDraggingItems countByEnumeratingWithState:&v32 objects:v37 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v33;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v33 != v8)
          {
            objc_enumerationMutation(dataSourceIndexPathsOfDraggingItems);
          }

          v10 = v3[2](v3, *(*(&v32 + 1) + 8 * i));
          if (v10)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [dataSourceIndexPathsOfDraggingItems countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v7);
    }

    dataSourceIndexPathsOfDraggingItems2 = [updates dataSourceIndexPathsOfDraggingItems];
    [dataSourceIndexPathsOfDraggingItems2 removeAllObjects];

    dataSourceIndexPathsOfDraggingItems3 = [updates dataSourceIndexPathsOfDraggingItems];
    v26 = v4;
    array = [v4 array];
    [dataSourceIndexPathsOfDraggingItems3 addObjectsFromArray:array];

    dragItemsWithRebasableIndexPaths = [updates dragItemsWithRebasableIndexPaths];
    [dragItemsWithRebasableIndexPaths compact];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [updates dragItemsWithRebasableIndexPaths];
    v15 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v29;
      do
      {
        for (j = 0; j != v16; ++j)
        {
          if (*v29 != v17)
          {
            objc_enumerationMutation(obj);
          }

          v19 = *(*(&v28 + 1) + 8 * j);
          _privateLocalContext = [v19 _privateLocalContext];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            indexPath = [_privateLocalContext indexPath];
            v22 = (v3)[2](v3, indexPath);

            v23 = [_UICollectionViewSourcePrivateLocalObject alloc];
            collectionView = [_privateLocalContext collectionView];
            v25 = [(_UICollectionViewSourcePrivateLocalObject *)v23 initWithIndexPath:v22 collectionView:collectionView];
            [v19 _setPrivateLocalContext:v25];
          }
        }

        v16 = [obj countByEnumeratingWithState:&v28 objects:v36 count:16];
      }

      while (v16);
    }
  }
}

- (_UICollectionViewDragSourceControllerDragState)init
{
  v8.receiver = self;
  v8.super_class = _UICollectionViewDragSourceControllerDragState;
  v2 = [(_UICollectionViewDragSourceControllerDragState *)&v8 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    dataSourceIndexPathsOfDraggingItems = v2->_dataSourceIndexPathsOfDraggingItems;
    v2->_dataSourceIndexPathsOfDraggingItems = v3;

    weakObjectsPointerArray = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    dragItemsWithRebasableIndexPaths = v2->_dragItemsWithRebasableIndexPaths;
    v2->_dragItemsWithRebasableIndexPaths = weakObjectsPointerArray;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  dragFromDataSourceIndexPath = [(_UICollectionViewDragSourceControllerDragState *)self dragFromDataSourceIndexPath];
  v7 = __UICVIndexPathDescription(dragFromDataSourceIndexPath);
  dataSourceIndexPathsOfDraggingItems = [(_UICollectionViewDragSourceControllerDragState *)self dataSourceIndexPathsOfDraggingItems];
  array = [dataSourceIndexPathsOfDraggingItems array];
  v10 = __UICVIndexPathsDescription(array);
  v11 = [v3 stringWithFormat:@"<%@:%p dragFrom=%@ draggingItems=%@>", v5, self, v7, v10];

  return v11;
}

@end