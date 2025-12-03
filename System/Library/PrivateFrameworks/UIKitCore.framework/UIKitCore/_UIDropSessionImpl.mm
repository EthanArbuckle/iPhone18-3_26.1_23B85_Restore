@interface _UIDropSessionImpl
- (BOOL)_allowsItemsToUpdate;
- (BOOL)canLoadObjectsOfClass:(Class)class;
- (BOOL)hasItemsConformingToTypeIdentifiers:(id)identifiers;
- (CGPoint)_previewCenterForVisibleItem:(id)item inView:(id)view;
- (CGPoint)locationInView:(id)view;
- (CGSize)_previewSizeForVisibleItem:(id)item;
- (NSArray)items;
- (_UIDropSessionImpl)initWithSessionDestination:(id)destination;
- (id)_createItemsOfClass:(Class)class synchronouslyIfPossible:(BOOL)possible completion:(id)completion;
- (id)loadObjectsOfClass:(Class)class completion:(id)completion;
- (void)requestVisibleItems:(id)items;
@end

@implementation _UIDropSessionImpl

- (_UIDropSessionImpl)initWithSessionDestination:(id)destination
{
  destinationCopy = destination;
  if (!destinationCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDragSession.m" lineNumber:465 description:{@"Invalid parameter not satisfying: %@", @"sessionDestination"}];
  }

  v13.receiver = self;
  v13.super_class = _UIDropSessionImpl;
  v7 = [(_UIDropSessionImpl *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_sessionDestination, destination);
    v8->_progressIndicatorStyle = 1;
    [(_UIInternalDraggingSessionDestination *)v8->_sessionDestination setProgressIndicatorStyle:1];
    v9 = [_UIDragSessionImpl _localDragSessionForSessionDestination:destinationCopy];
    localDragSession = v8->_localDragSession;
    v8->_localDragSession = v9;
  }

  return v8;
}

- (NSArray)items
{
  v24 = *MEMORY[0x1E69E9840];
  items = self->_items;
  if (!items || (v4 = -[NSArray count](items, "count"), -[_UIInternalDraggingSessionDestination internalItems](self->_sessionDestination, "internalItems"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 count], v5, v4 != v6))
  {
    v7 = objc_alloc(MEMORY[0x1E695DF70]);
    internalItems = [(_UIInternalDraggingSessionDestination *)self->_sessionDestination internalItems];
    v9 = [v7 initWithCapacity:{objc_msgSend(internalItems, "count")}];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    internalItems2 = [(_UIInternalDraggingSessionDestination *)self->_sessionDestination internalItems];
    v11 = [internalItems2 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(internalItems2);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          [v15 _setDragDropSession:self];
          [(NSArray *)v9 addObject:v15];
        }

        v12 = [internalItems2 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    v16 = self->_items;
    self->_items = v9;
  }

  v17 = self->_items;

  return v17;
}

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"View must be non-null"];
  }

  [(_UIInternalDraggingSessionDestination *)self->_sessionDestination draggingLocationInCoordinateSpace:viewCopy];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (BOOL)hasItemsConformingToTypeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  items = [(_UIDropSessionImpl *)self items];
  hasItemsConformingToTypeIdentifiers = _hasItemsConformingToTypeIdentifiers(items, identifiersCopy);

  return hasItemsConformingToTypeIdentifiers;
}

- (BOOL)canLoadObjectsOfClass:(Class)class
{
  items = [(_UIDropSessionImpl *)self items];
  LOBYTE(class) = _canLoadObjectsOfClass(items, class);

  return class;
}

- (CGSize)_previewSizeForVisibleItem:(id)item
{
  [item _visibleDropItemSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGPoint)_previewCenterForVisibleItem:(id)item inView:(id)view
{
  itemCopy = item;
  viewCopy = view;
  if (!viewCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDragSession.m" lineNumber:561 description:{@"Invalid parameter not satisfying: %@", @"view"}];
  }

  sessionDestination = self->_sessionDestination;
  coordinateSpace = [viewCopy coordinateSpace];
  [(_UIInternalDraggingSessionDestination *)sessionDestination previewCenterForVisibleItem:itemCopy inCoordinateSpace:coordinateSpace];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (id)loadObjectsOfClass:(Class)class completion:(id)completion
{
  completionCopy = completion;
  if (!completionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDragSession.m" lineNumber:578 description:{@"Invalid parameter not satisfying: %@", @"completion != nil"}];
  }

  v8 = [(_UIDropSessionImpl *)self _createItemsOfClass:class synchronouslyIfPossible:0 completion:completionCopy];

  return v8;
}

- (void)requestVisibleItems:(id)items
{
  itemsCopy = items;
  v5 = itemsCopy;
  if (itemsCopy)
  {
    sessionDestination = self->_sessionDestination;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42___UIDropSessionImpl_requestVisibleItems___block_invoke;
    v7[3] = &unk_1E70FD790;
    v7[4] = self;
    v8 = itemsCopy;
    [(_UIInternalDraggingSessionDestination *)sessionDestination requestVisibleItems:v7];
  }
}

- (id)_createItemsOfClass:(Class)class synchronouslyIfPossible:(BOOL)possible completion:(id)completion
{
  possibleCopy = possible;
  v50 = *MEMORY[0x1E69E9840];
  completionCopy = completion;
  dictionary = [MEMORY[0x1E695DF90] dictionary];
  array = [MEMORY[0x1E695DF70] array];
  group = dispatch_group_create();
  v44 = 0u;
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  obj = [(_UIDropSessionImpl *)self items];
  v8 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = 0;
    v11 = *v45;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v45 != v11)
        {
          objc_enumerationMutation(obj);
        }

        itemProvider = [*(*(&v44 + 1) + 8 * i) itemProvider];
        if ([itemProvider canLoadObjectOfClass:class])
        {
          dispatch_group_enter(group);
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __77___UIDropSessionImpl__createItemsOfClass_synchronouslyIfPossible_completion___block_invoke;
          v40[3] = &unk_1E71064B8;
          v14 = dictionary;
          v41 = dictionary;
          v43 = v10;
          v42 = group;
          v15 = [itemProvider loadObjectOfClass:class completionHandler:v40];
          if (v15)
          {
            [array addObject:v15];
          }

          ++v10;

          dictionary = v14;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v9);
  }

  v16 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{objc_msgSend(array, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = array;
  v18 = [v17 countByEnumeratingWithState:&v36 objects:v48 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v37;
    do
    {
      for (j = 0; j != v19; ++j)
      {
        if (*v37 != v20)
        {
          objc_enumerationMutation(v17);
        }

        [v16 addChild:*(*(&v36 + 1) + 8 * j) withPendingUnitCount:1];
      }

      v19 = [v17 countByEnumeratingWithState:&v36 objects:v48 count:16];
    }

    while (v19);
  }

  if (possibleCopy && (v22 = dispatch_time(0, 50000000), !dispatch_group_wait(group, v22)))
  {
    v25 = arrayOfItemsFromDictionaryOfItemsByIndex(dictionary);
    v24 = completionCopy;
    (*(completionCopy + 2))(completionCopy, v25);
  }

  else
  {
    v23 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77___UIDropSessionImpl__createItemsOfClass_synchronouslyIfPossible_completion___block_invoke_2;
    block[3] = &unk_1E70FCE28;
    v33 = group;
    v34 = dictionary;
    v24 = completionCopy;
    v35 = completionCopy;
    dispatch_async(v23, block);

    v25 = v33;
  }

  return v16;
}

- (BOOL)_allowsItemsToUpdate
{
  _internalSession = [(_UIDropSessionImpl *)self _internalSession];
  v3 = _internalSession != 0;

  return v3;
}

@end