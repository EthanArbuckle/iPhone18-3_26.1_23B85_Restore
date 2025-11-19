@interface _UIDropSessionImpl
- (BOOL)_allowsItemsToUpdate;
- (BOOL)canLoadObjectsOfClass:(Class)a3;
- (BOOL)hasItemsConformingToTypeIdentifiers:(id)a3;
- (CGPoint)_previewCenterForVisibleItem:(id)a3 inView:(id)a4;
- (CGPoint)locationInView:(id)a3;
- (CGSize)_previewSizeForVisibleItem:(id)a3;
- (NSArray)items;
- (_UIDropSessionImpl)initWithSessionDestination:(id)a3;
- (id)_createItemsOfClass:(Class)a3 synchronouslyIfPossible:(BOOL)a4 completion:(id)a5;
- (id)loadObjectsOfClass:(Class)a3 completion:(id)a4;
- (void)requestVisibleItems:(id)a3;
@end

@implementation _UIDropSessionImpl

- (_UIDropSessionImpl)initWithSessionDestination:(id)a3
{
  v6 = a3;
  if (!v6)
  {
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    [v12 handleFailureInMethod:a2 object:self file:@"UIDragSession.m" lineNumber:465 description:{@"Invalid parameter not satisfying: %@", @"sessionDestination"}];
  }

  v13.receiver = self;
  v13.super_class = _UIDropSessionImpl;
  v7 = [(_UIDropSessionImpl *)&v13 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_sessionDestination, a3);
    v8->_progressIndicatorStyle = 1;
    [(_UIInternalDraggingSessionDestination *)v8->_sessionDestination setProgressIndicatorStyle:1];
    v9 = [_UIDragSessionImpl _localDragSessionForSessionDestination:v6];
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
    v8 = [(_UIInternalDraggingSessionDestination *)self->_sessionDestination internalItems];
    v9 = [v7 initWithCapacity:{objc_msgSend(v8, "count")}];

    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v10 = [(_UIInternalDraggingSessionDestination *)self->_sessionDestination internalItems];
    v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          [v15 _setDragDropSession:self];
          [(NSArray *)v9 addObject:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      }

      while (v12);
    }

    v16 = self->_items;
    self->_items = v9;
  }

  v17 = self->_items;

  return v17;
}

- (CGPoint)locationInView:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"View must be non-null"];
  }

  [(_UIInternalDraggingSessionDestination *)self->_sessionDestination draggingLocationInCoordinateSpace:v4];
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.y = v10;
  result.x = v9;
  return result;
}

- (BOOL)hasItemsConformingToTypeIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(_UIDropSessionImpl *)self items];
  hasItemsConformingToTypeIdentifiers = _hasItemsConformingToTypeIdentifiers(v5, v4);

  return hasItemsConformingToTypeIdentifiers;
}

- (BOOL)canLoadObjectsOfClass:(Class)a3
{
  v4 = [(_UIDropSessionImpl *)self items];
  LOBYTE(a3) = _canLoadObjectsOfClass(v4, a3);

  return a3;
}

- (CGSize)_previewSizeForVisibleItem:(id)a3
{
  [a3 _visibleDropItemSize];
  result.height = v4;
  result.width = v3;
  return result;
}

- (CGPoint)_previewCenterForVisibleItem:(id)a3 inView:(id)a4
{
  v7 = a3;
  v8 = a4;
  if (!v8)
  {
    v17 = [MEMORY[0x1E696AAA8] currentHandler];
    [v17 handleFailureInMethod:a2 object:self file:@"UIDragSession.m" lineNumber:561 description:{@"Invalid parameter not satisfying: %@", @"view"}];
  }

  sessionDestination = self->_sessionDestination;
  v10 = [v8 coordinateSpace];
  [(_UIInternalDraggingSessionDestination *)sessionDestination previewCenterForVisibleItem:v7 inCoordinateSpace:v10];
  v12 = v11;
  v14 = v13;

  v15 = v12;
  v16 = v14;
  result.y = v16;
  result.x = v15;
  return result;
}

- (id)loadObjectsOfClass:(Class)a3 completion:(id)a4
{
  v7 = a4;
  if (!v7)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    [v10 handleFailureInMethod:a2 object:self file:@"UIDragSession.m" lineNumber:578 description:{@"Invalid parameter not satisfying: %@", @"completion != nil"}];
  }

  v8 = [(_UIDropSessionImpl *)self _createItemsOfClass:a3 synchronouslyIfPossible:0 completion:v7];

  return v8;
}

- (void)requestVisibleItems:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    sessionDestination = self->_sessionDestination;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __42___UIDropSessionImpl_requestVisibleItems___block_invoke;
    v7[3] = &unk_1E70FD790;
    v7[4] = self;
    v8 = v4;
    [(_UIInternalDraggingSessionDestination *)sessionDestination requestVisibleItems:v7];
  }
}

- (id)_createItemsOfClass:(Class)a3 synchronouslyIfPossible:(BOOL)a4 completion:(id)a5
{
  v27 = a4;
  v50 = *MEMORY[0x1E69E9840];
  v28 = a5;
  v7 = [MEMORY[0x1E695DF90] dictionary];
  v29 = [MEMORY[0x1E695DF70] array];
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

        v13 = [*(*(&v44 + 1) + 8 * i) itemProvider];
        if ([v13 canLoadObjectOfClass:a3])
        {
          dispatch_group_enter(group);
          v40[0] = MEMORY[0x1E69E9820];
          v40[1] = 3221225472;
          v40[2] = __77___UIDropSessionImpl__createItemsOfClass_synchronouslyIfPossible_completion___block_invoke;
          v40[3] = &unk_1E71064B8;
          v14 = v7;
          v41 = v7;
          v43 = v10;
          v42 = group;
          v15 = [v13 loadObjectOfClass:a3 completionHandler:v40];
          if (v15)
          {
            [v29 addObject:v15];
          }

          ++v10;

          v7 = v14;
        }
      }

      v9 = [obj countByEnumeratingWithState:&v44 objects:v49 count:16];
    }

    while (v9);
  }

  v16 = [MEMORY[0x1E696AE38] discreteProgressWithTotalUnitCount:{objc_msgSend(v29, "count")}];
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  v17 = v29;
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

  if (v27 && (v22 = dispatch_time(0, 50000000), !dispatch_group_wait(group, v22)))
  {
    v25 = arrayOfItemsFromDictionaryOfItemsByIndex(v7);
    v24 = v28;
    (*(v28 + 2))(v28, v25);
  }

  else
  {
    v23 = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __77___UIDropSessionImpl__createItemsOfClass_synchronouslyIfPossible_completion___block_invoke_2;
    block[3] = &unk_1E70FCE28;
    v33 = group;
    v34 = v7;
    v24 = v28;
    v35 = v28;
    dispatch_async(v23, block);

    v25 = v33;
  }

  return v16;
}

- (BOOL)_allowsItemsToUpdate
{
  v2 = [(_UIDropSessionImpl *)self _internalSession];
  v3 = v2 != 0;

  return v3;
}

@end