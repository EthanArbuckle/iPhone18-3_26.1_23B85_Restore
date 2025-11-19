@interface _UITableViewDropCoordinatorImpl
- (NSIndexPath)destinationIndexPath;
- (_UITableViewDropCoordinatorDelegate)delegate;
- (_UITableViewDropCoordinatorImpl)initWithDelegate:(id)a3 destinationIndexPath:(id)a4 dropProposal:(id)a5 session:(id)a6;
- (id)_sourceIndexPaths;
- (id)dropItem:(id)a3 intoRowAtIndexPath:(id)a4 rect:(CGRect)a5;
- (id)dropItem:(id)a3 toPlaceholder:(id)a4;
- (id)dropItem:(id)a3 toPlaceholderInsertedAtIndexPath:(id)a4 withReuseIdentifier:(id)a5 rowHeight:(double)a6 cellUpdateHandler:(id)a7;
- (id)dropItem:(id)a3 toRowAtIndexPath:(id)a4;
- (id)dropItem:(id)a3 toTarget:(id)a4;
- (void)_dropItem:(id)a3 toCell:(id)a4 withPreviewParameters:(id)a5;
- (void)_translateDestinationIndexPath:(id)a3;
- (void)_translateSourceIndexPathsOfDropItems:(id)a3;
@end

@implementation _UITableViewDropCoordinatorImpl

- (_UITableViewDropCoordinatorImpl)initWithDelegate:(id)a3 destinationIndexPath:(id)a4 dropProposal:(id)a5 session:(id)a6
{
  v45 = *MEMORY[0x1E69E9840];
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v39.receiver = self;
  v39.super_class = _UITableViewDropCoordinatorImpl;
  v14 = [(_UITableViewDropCoordinatorImpl *)&v39 init];
  v15 = v14;
  if (v14)
  {
    v32 = a4;
    v33 = v12;
    v34 = a5;
    v35 = v11;
    v31 = v14;
    objc_storeWeak(&v14->_delegate, v10);
    v36 = v10;
    v37 = [v10 tableView];
    v30 = v13;
    v16 = [v13 items];
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v16, "count")}];
    objc_opt_class();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = v16;
    v18 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
    if (v18)
    {
      v19 = v18;
      v20 = *v41;
      do
      {
        for (i = 0; i != v19; ++i)
        {
          if (*v41 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v22 = *(*(&v40 + 1) + 8 * i);
          v23 = [v22 _privateLocalContext];
          if (v23 && (objc_opt_isKindOfClass() & 1) != 0)
          {
            v24 = v23;
            v25 = [v24 tableView];

            if (v25 == v37)
            {
              v26 = [v24 indexPath];
            }

            else
            {
              v26 = 0;
            }
          }

          else
          {
            v26 = 0;
          }

          v27 = [[_UITableViewDropItemImpl alloc] initWithDragItem:v22 sourceIndexPath:v26];
          [(NSArray *)v17 addObject:v27];
        }

        v19 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v19);
    }

    v15 = v31;
    items = v31->_items;
    v31->_items = v17;

    objc_storeStrong(&v31->_destinationIndexPath, v32);
    objc_storeStrong(&v31->_proposal, v34);
    objc_storeStrong(&v31->_session, a6);

    v10 = v36;
    v11 = v35;
    v12 = v33;
    v13 = v30;
  }

  return v15;
}

- (NSIndexPath)destinationIndexPath
{
  translatedDestinationIndexPath = self->_translatedDestinationIndexPath;
  if (!translatedDestinationIndexPath)
  {
    translatedDestinationIndexPath = self->_destinationIndexPath;
  }

  return translatedDestinationIndexPath;
}

- (id)_sourceIndexPaths
{
  v16 = *MEMORY[0x1E69E9840];
  v2 = [(_UITableViewDropCoordinatorImpl *)self _items];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v2, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = v2;
  v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v12;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v12 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = [*(*(&v11 + 1) + 8 * i) sourceIndexPath];
        if (v9)
        {
          [v3 addObject:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_translateDestinationIndexPath:(id)a3
{
  v4 = (*(a3 + 2))(a3, self->_destinationIndexPath);
  translatedDestinationIndexPath = self->_translatedDestinationIndexPath;
  self->_translatedDestinationIndexPath = v4;
}

- (void)_translateSourceIndexPathsOfDropItems:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v5 = [(_UITableViewDropCoordinatorImpl *)self _items];
  v6 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v11;
    do
    {
      v9 = 0;
      do
      {
        if (*v11 != v8)
        {
          objc_enumerationMutation(v5);
        }

        [*(*(&v10 + 1) + 8 * v9++) _translateSourceIndexPath:v4];
      }

      while (v7 != v9);
      v7 = [v5 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)dropItem:(id)a3 toPlaceholder:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v20 = [MEMORY[0x1E696AAA8] currentHandler];
    [v20 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:282 description:{@"Invalid parameter not satisfying: %@", @"dragItem != nil"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v21 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = NSStringFromSelector(a2);
    [v21 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:283 description:{@"The drag item passed to %@ must be an instance of UIDragItem", v22}];

    if (v8)
    {
      goto LABEL_5;
    }
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:284 description:{@"Invalid parameter not satisfying: %@", @"placeholder != nil"}];

LABEL_5:
  v9 = [_UITableViewDropPlaceholderContextImpl alloc];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v11 = [v8 reuseIdentifier];
  [v8 rowHeight];
  v13 = v12;
  v14 = [v8 cellUpdateHandler];
  v15 = [(_UITableViewDropPlaceholderContextImpl *)v9 initWithDelegate:WeakRetained dragItem:v7 reuseIdentifier:v11 rowHeight:v14 cellUpdateHandler:v13];

  v16 = objc_loadWeakRetained(&self->_delegate);
  v17 = [v8 insertionIndexPath];
  v18 = [v8 previewParametersProvider];
  [v16 insertPlaceholderAtIndexPath:v17 withContext:v15 previewParametersProvider:v18];

  return v15;
}

- (id)dropItem:(id)a3 toPlaceholderInsertedAtIndexPath:(id)a4 withReuseIdentifier:(id)a5 rowHeight:(double)a6 cellUpdateHandler:(id)a7
{
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a7;
  if (!v13)
  {
    v24 = [MEMORY[0x1E696AAA8] currentHandler];
    [v24 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:295 description:{@"Invalid parameter not satisfying: %@", @"dragItem != nil"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v14)
    {
      goto LABEL_5;
    }

LABEL_15:
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    [v27 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:297 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];

    if (v15)
    {
      goto LABEL_6;
    }

LABEL_16:
    v28 = [MEMORY[0x1E696AAA8] currentHandler];
    [v28 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:298 description:{@"Invalid parameter not satisfying: %@", @"reuseIdentifier != nil"}];

    goto LABEL_6;
  }

  v25 = [MEMORY[0x1E696AAA8] currentHandler];
  v26 = NSStringFromSelector(a2);
  [v25 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:296 description:{@"The drag item passed to %@ must be an instance of UIDragItem", v26}];

  if (!v14)
  {
    goto LABEL_15;
  }

LABEL_5:
  if (!v15)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (a6 > 0.0 || a6 == -1.0)
  {
    if (v16)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v22 = [MEMORY[0x1E696AAA8] currentHandler];
    [v22 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:299 description:@"Invalid row height provided for the placeholder row. Value must be greater than zero or UITableViewAutomaticDimension."];

    if (v16)
    {
      goto LABEL_9;
    }
  }

  v23 = [MEMORY[0x1E696AAA8] currentHandler];
  [v23 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:300 description:{@"Invalid parameter not satisfying: %@", @"cellUpdateHandler != nil"}];

LABEL_9:
  v17 = [_UITableViewDropPlaceholderContextImpl alloc];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = [(_UITableViewDropPlaceholderContextImpl *)v17 initWithDelegate:WeakRetained dragItem:v13 reuseIdentifier:v15 rowHeight:v16 cellUpdateHandler:a6];

  v20 = objc_loadWeakRetained(&self->_delegate);
  [v20 insertPlaceholderAtIndexPath:v14 withContext:v19 previewParametersProvider:0];

  return v19;
}

- (id)dropItem:(id)a3 intoRowAtIndexPath:(id)a4 rect:(CGRect)a5
{
  height = a5.size.height;
  width = a5.size.width;
  y = a5.origin.y;
  x = a5.origin.x;
  v12 = a3;
  v13 = a4;
  if (!v12)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:317 description:{@"Invalid parameter not satisfying: %@", @"dragItem != nil"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v13)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v18 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = NSStringFromSelector(a2);
    [v18 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:318 description:{@"The drag item passed to %@ must be an instance of UIDragItem", v19}];

    if (v13)
    {
      goto LABEL_5;
    }
  }

  v20 = [MEMORY[0x1E696AAA8] currentHandler];
  [v20 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];

LABEL_5:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = [WeakRetained animateDragItem:v12 intoRowAtIndexPath:v13 rect:{x, y, width, height}];

  return v15;
}

- (id)dropItem:(id)a3 toRowAtIndexPath:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:326 description:{@"Invalid parameter not satisfying: %@", @"dragItem != nil"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = NSStringFromSelector(a2);
    [v13 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:327 description:{@"The drag item passed to %@ must be an instance of UIDragItem", v14}];

    if (v8)
    {
      goto LABEL_5;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:328 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];

LABEL_5:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained animateDragItem:v7 toRowAtIndexPath:v8];

  return v10;
}

- (id)dropItem:(id)a3 toTarget:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v7)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:340 description:{@"Invalid parameter not satisfying: %@", @"dragItem != nil"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v8)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = NSStringFromSelector(a2);
    [v13 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:341 description:{@"The drag item passed to %@ must be an instance of UIDragItem", v14}];

    if (v8)
    {
      goto LABEL_5;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  [v15 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:342 description:{@"Invalid parameter not satisfying: %@", @"target != nil"}];

LABEL_5:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained animateDragItem:v7 toTarget:v8];

  return v10;
}

- (void)_dropItem:(id)a3 toCell:(id)a4 withPreviewParameters:(id)a5
{
  v17 = a3;
  v9 = a4;
  v10 = a5;
  if (!v17)
  {
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    [v13 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:354 description:{@"Invalid parameter not satisfying: %@", @"dragItem != nil"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = NSStringFromSelector(a2);
    [v14 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:355 description:{@"The drag item passed to %@ must be an instance of UIDragItem", v15}];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  v16 = [MEMORY[0x1E696AAA8] currentHandler];
  [v16 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:356 description:{@"Invalid parameter not satisfying: %@", @"cell != nil"}];

LABEL_5:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained animateDragItem:v17 toCell:v9 withPreviewParameters:v10];
}

- (_UITableViewDropCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end