@interface _UITableViewDropCoordinatorImpl
- (NSIndexPath)destinationIndexPath;
- (_UITableViewDropCoordinatorDelegate)delegate;
- (_UITableViewDropCoordinatorImpl)initWithDelegate:(id)delegate destinationIndexPath:(id)path dropProposal:(id)proposal session:(id)session;
- (id)_sourceIndexPaths;
- (id)dropItem:(id)item intoRowAtIndexPath:(id)path rect:(CGRect)rect;
- (id)dropItem:(id)item toPlaceholder:(id)placeholder;
- (id)dropItem:(id)item toPlaceholderInsertedAtIndexPath:(id)path withReuseIdentifier:(id)identifier rowHeight:(double)height cellUpdateHandler:(id)handler;
- (id)dropItem:(id)item toRowAtIndexPath:(id)path;
- (id)dropItem:(id)item toTarget:(id)target;
- (void)_dropItem:(id)item toCell:(id)cell withPreviewParameters:(id)parameters;
- (void)_translateDestinationIndexPath:(id)path;
- (void)_translateSourceIndexPathsOfDropItems:(id)items;
@end

@implementation _UITableViewDropCoordinatorImpl

- (_UITableViewDropCoordinatorImpl)initWithDelegate:(id)delegate destinationIndexPath:(id)path dropProposal:(id)proposal session:(id)session
{
  v45 = *MEMORY[0x1E69E9840];
  delegateCopy = delegate;
  pathCopy = path;
  proposalCopy = proposal;
  sessionCopy = session;
  v39.receiver = self;
  v39.super_class = _UITableViewDropCoordinatorImpl;
  v14 = [(_UITableViewDropCoordinatorImpl *)&v39 init];
  v15 = v14;
  if (v14)
  {
    pathCopy2 = path;
    v33 = proposalCopy;
    proposalCopy2 = proposal;
    v35 = pathCopy;
    v31 = v14;
    objc_storeWeak(&v14->_delegate, delegateCopy);
    v36 = delegateCopy;
    tableView = [delegateCopy tableView];
    v30 = sessionCopy;
    items = [sessionCopy items];
    v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(items, "count")}];
    objc_opt_class();
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    obj = items;
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
          _privateLocalContext = [v22 _privateLocalContext];
          if (_privateLocalContext && (objc_opt_isKindOfClass() & 1) != 0)
          {
            v24 = _privateLocalContext;
            tableView2 = [v24 tableView];

            if (tableView2 == tableView)
            {
              indexPath = [v24 indexPath];
            }

            else
            {
              indexPath = 0;
            }
          }

          else
          {
            indexPath = 0;
          }

          v27 = [[_UITableViewDropItemImpl alloc] initWithDragItem:v22 sourceIndexPath:indexPath];
          [(NSArray *)v17 addObject:v27];
        }

        v19 = [obj countByEnumeratingWithState:&v40 objects:v44 count:16];
      }

      while (v19);
    }

    v15 = v31;
    items = v31->_items;
    v31->_items = v17;

    objc_storeStrong(&v31->_destinationIndexPath, pathCopy2);
    objc_storeStrong(&v31->_proposal, proposalCopy2);
    objc_storeStrong(&v31->_session, session);

    delegateCopy = v36;
    pathCopy = v35;
    proposalCopy = v33;
    sessionCopy = v30;
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
  _items = [(_UITableViewDropCoordinatorImpl *)self _items];
  v3 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(_items, "count")}];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v4 = _items;
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

        sourceIndexPath = [*(*(&v11 + 1) + 8 * i) sourceIndexPath];
        if (sourceIndexPath)
        {
          [v3 addObject:sourceIndexPath];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v6);
  }

  return v3;
}

- (void)_translateDestinationIndexPath:(id)path
{
  v4 = (*(path + 2))(path, self->_destinationIndexPath);
  translatedDestinationIndexPath = self->_translatedDestinationIndexPath;
  self->_translatedDestinationIndexPath = v4;
}

- (void)_translateSourceIndexPathsOfDropItems:(id)items
{
  v15 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  _items = [(_UITableViewDropCoordinatorImpl *)self _items];
  v6 = [_items countByEnumeratingWithState:&v10 objects:v14 count:16];
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
          objc_enumerationMutation(_items);
        }

        [*(*(&v10 + 1) + 8 * v9++) _translateSourceIndexPath:itemsCopy];
      }

      while (v7 != v9);
      v7 = [_items countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v7);
  }
}

- (id)dropItem:(id)item toPlaceholder:(id)placeholder
{
  itemCopy = item;
  placeholderCopy = placeholder;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:282 description:{@"Invalid parameter not satisfying: %@", @"dragItem != nil"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (placeholderCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v22 = NSStringFromSelector(a2);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:283 description:{@"The drag item passed to %@ must be an instance of UIDragItem", v22}];

    if (placeholderCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:284 description:{@"Invalid parameter not satisfying: %@", @"placeholder != nil"}];

LABEL_5:
  v9 = [_UITableViewDropPlaceholderContextImpl alloc];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  reuseIdentifier = [placeholderCopy reuseIdentifier];
  [placeholderCopy rowHeight];
  v13 = v12;
  cellUpdateHandler = [placeholderCopy cellUpdateHandler];
  v15 = [(_UITableViewDropPlaceholderContextImpl *)v9 initWithDelegate:WeakRetained dragItem:itemCopy reuseIdentifier:reuseIdentifier rowHeight:cellUpdateHandler cellUpdateHandler:v13];

  v16 = objc_loadWeakRetained(&self->_delegate);
  insertionIndexPath = [placeholderCopy insertionIndexPath];
  previewParametersProvider = [placeholderCopy previewParametersProvider];
  [v16 insertPlaceholderAtIndexPath:insertionIndexPath withContext:v15 previewParametersProvider:previewParametersProvider];

  return v15;
}

- (id)dropItem:(id)item toPlaceholderInsertedAtIndexPath:(id)path withReuseIdentifier:(id)identifier rowHeight:(double)height cellUpdateHandler:(id)handler
{
  itemCopy = item;
  pathCopy = path;
  identifierCopy = identifier;
  handlerCopy = handler;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:295 description:{@"Invalid parameter not satisfying: %@", @"dragItem != nil"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (pathCopy)
    {
      goto LABEL_5;
    }

LABEL_15:
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:297 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];

    if (identifierCopy)
    {
      goto LABEL_6;
    }

LABEL_16:
    currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:298 description:{@"Invalid parameter not satisfying: %@", @"reuseIdentifier != nil"}];

    goto LABEL_6;
  }

  currentHandler4 = [MEMORY[0x1E696AAA8] currentHandler];
  v26 = NSStringFromSelector(a2);
  [currentHandler4 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:296 description:{@"The drag item passed to %@ must be an instance of UIDragItem", v26}];

  if (!pathCopy)
  {
    goto LABEL_15;
  }

LABEL_5:
  if (!identifierCopy)
  {
    goto LABEL_16;
  }

LABEL_6:
  if (height > 0.0 || height == -1.0)
  {
    if (handlerCopy)
    {
      goto LABEL_9;
    }
  }

  else
  {
    currentHandler5 = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler5 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:299 description:@"Invalid row height provided for the placeholder row. Value must be greater than zero or UITableViewAutomaticDimension."];

    if (handlerCopy)
    {
      goto LABEL_9;
    }
  }

  currentHandler6 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler6 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:300 description:{@"Invalid parameter not satisfying: %@", @"cellUpdateHandler != nil"}];

LABEL_9:
  v17 = [_UITableViewDropPlaceholderContextImpl alloc];
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v19 = [(_UITableViewDropPlaceholderContextImpl *)v17 initWithDelegate:WeakRetained dragItem:itemCopy reuseIdentifier:identifierCopy rowHeight:handlerCopy cellUpdateHandler:height];

  v20 = objc_loadWeakRetained(&self->_delegate);
  [v20 insertPlaceholderAtIndexPath:pathCopy withContext:v19 previewParametersProvider:0];

  return v19;
}

- (id)dropItem:(id)item intoRowAtIndexPath:(id)path rect:(CGRect)rect
{
  height = rect.size.height;
  width = rect.size.width;
  y = rect.origin.y;
  x = rect.origin.x;
  itemCopy = item;
  pathCopy = path;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:317 description:{@"Invalid parameter not satisfying: %@", @"dragItem != nil"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (pathCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v19 = NSStringFromSelector(a2);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:318 description:{@"The drag item passed to %@ must be an instance of UIDragItem", v19}];

    if (pathCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:319 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];

LABEL_5:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v15 = [WeakRetained animateDragItem:itemCopy intoRowAtIndexPath:pathCopy rect:{x, y, width, height}];

  return v15;
}

- (id)dropItem:(id)item toRowAtIndexPath:(id)path
{
  itemCopy = item;
  pathCopy = path;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:326 description:{@"Invalid parameter not satisfying: %@", @"dragItem != nil"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (pathCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = NSStringFromSelector(a2);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:327 description:{@"The drag item passed to %@ must be an instance of UIDragItem", v14}];

    if (pathCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:328 description:{@"Invalid parameter not satisfying: %@", @"indexPath != nil"}];

LABEL_5:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained animateDragItem:itemCopy toRowAtIndexPath:pathCopy];

  return v10;
}

- (id)dropItem:(id)item toTarget:(id)target
{
  itemCopy = item;
  targetCopy = target;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:340 description:{@"Invalid parameter not satisfying: %@", @"dragItem != nil"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (targetCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = NSStringFromSelector(a2);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:341 description:{@"The drag item passed to %@ must be an instance of UIDragItem", v14}];

    if (targetCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:342 description:{@"Invalid parameter not satisfying: %@", @"target != nil"}];

LABEL_5:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v10 = [WeakRetained animateDragItem:itemCopy toTarget:targetCopy];

  return v10;
}

- (void)_dropItem:(id)item toCell:(id)cell withPreviewParameters:(id)parameters
{
  itemCopy = item;
  cellCopy = cell;
  parametersCopy = parameters;
  if (!itemCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:354 description:{@"Invalid parameter not satisfying: %@", @"dragItem != nil"}];
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (cellCopy)
    {
      goto LABEL_5;
    }
  }

  else
  {
    currentHandler2 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = NSStringFromSelector(a2);
    [currentHandler2 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:355 description:{@"The drag item passed to %@ must be an instance of UIDragItem", v15}];

    if (cellCopy)
    {
      goto LABEL_5;
    }
  }

  currentHandler3 = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler3 handleFailureInMethod:a2 object:self file:@"_UITableViewDropCoordinator.m" lineNumber:356 description:{@"Invalid parameter not satisfying: %@", @"cell != nil"}];

LABEL_5:
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  v12 = [WeakRetained animateDragItem:itemCopy toCell:cellCopy withPreviewParameters:parametersCopy];
}

- (_UITableViewDropCoordinatorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end