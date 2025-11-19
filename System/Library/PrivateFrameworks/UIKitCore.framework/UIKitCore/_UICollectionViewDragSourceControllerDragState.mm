@interface _UICollectionViewDragSourceControllerDragState
- (_UICollectionViewDragSourceControllerDragState)init;
- (id)dataSourceIndexPathForDragItem:(void *)a3 forCollectionView:;
- (id)description;
- (id)dragFromDataSourceIndexPath;
- (id)draggingDataSourceIndexPaths;
- (void)rebaseForUpdates:(void *)a1;
@end

@implementation _UICollectionViewDragSourceControllerDragState

- (id)draggingDataSourceIndexPaths
{
  if (a1)
  {
    v1 = [a1 dataSourceIndexPathsOfDraggingItems];
    v2 = [v1 array];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)dragFromDataSourceIndexPath
{
  if (a1)
  {
    v1 = [a1 dataSourceIndexPathsOfDraggingItems];
    v2 = [v1 firstObject];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)dataSourceIndexPathForDragItem:(void *)a3 forCollectionView:
{
  v5 = a3;
  if (a1)
  {
    v6 = [a2 _privateLocalContext];
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [v6 collectionView];
      if (v7 == v5)
      {
        a1 = [v6 indexPath];
      }

      else
      {
        a1 = 0;
      }
    }

    else
    {
      a1 = 0;
    }
  }

  return a1;
}

- (void)rebaseForUpdates:(void *)a1
{
  v38 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (a1)
  {
    v4 = objc_alloc_init(MEMORY[0x1E695DFA0]);
    v32 = 0u;
    v33 = 0u;
    v34 = 0u;
    v35 = 0u;
    v5 = [a1 dataSourceIndexPathsOfDraggingItems];
    v6 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
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
            objc_enumerationMutation(v5);
          }

          v10 = v3[2](v3, *(*(&v32 + 1) + 8 * i));
          if (v10)
          {
            [v4 addObject:v10];
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v32 objects:v37 count:16];
      }

      while (v7);
    }

    v11 = [a1 dataSourceIndexPathsOfDraggingItems];
    [v11 removeAllObjects];

    v12 = [a1 dataSourceIndexPathsOfDraggingItems];
    v26 = v4;
    v13 = [v4 array];
    [v12 addObjectsFromArray:v13];

    v14 = [a1 dragItemsWithRebasableIndexPaths];
    [v14 compact];

    v30 = 0u;
    v31 = 0u;
    v28 = 0u;
    v29 = 0u;
    obj = [a1 dragItemsWithRebasableIndexPaths];
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
          v20 = [v19 _privateLocalContext];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v21 = [v20 indexPath];
            v22 = (v3)[2](v3, v21);

            v23 = [_UICollectionViewSourcePrivateLocalObject alloc];
            v24 = [v20 collectionView];
            v25 = [(_UICollectionViewSourcePrivateLocalObject *)v23 initWithIndexPath:v22 collectionView:v24];
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

    v5 = [MEMORY[0x1E696AE08] weakObjectsPointerArray];
    dragItemsWithRebasableIndexPaths = v2->_dragItemsWithRebasableIndexPaths;
    v2->_dragItemsWithRebasableIndexPaths = v5;
  }

  return v2;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [(_UICollectionViewDragSourceControllerDragState *)self dragFromDataSourceIndexPath];
  v7 = __UICVIndexPathDescription(v6);
  v8 = [(_UICollectionViewDragSourceControllerDragState *)self dataSourceIndexPathsOfDraggingItems];
  v9 = [v8 array];
  v10 = __UICVIndexPathsDescription(v9);
  v11 = [v3 stringWithFormat:@"<%@:%p dragFrom=%@ draggingItems=%@>", v5, self, v7, v10];

  return v11;
}

@end