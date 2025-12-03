@interface _UIDragSessionImpl
+ (id)_localDragSessionForSessionDestination:(id)destination;
+ (id)activeSessions;
- (BOOL)_allowsItemsToUpdate;
- (BOOL)allowsMoveOperation;
- (BOOL)canLoadObjectsOfClass:(Class)class;
- (BOOL)draggingSessionDynamicallyUpdatesPrefersFullSizePreviews:(id)previews;
- (BOOL)draggingSessionPrefersFullSizePreviews:(id)previews;
- (BOOL)hasItemsConformingToTypeIdentifiers:(id)identifiers;
- (BOOL)isRestrictedToDraggingApplication;
- (CGPoint)locationInView:(id)view;
- (UIDragInteraction)primaryInteraction;
- (_UIDragSessionImpl)initWithInteraction:(id)interaction;
- (id)_setDownAnimation:(id)animation customSpringAnimationBehaviorForSetDownOfDragItem:(id)item;
- (id)_setDownAnimation:(id)animation prepareForSetDownOfDragItem:(id)item visibleDroppedItem:(id)droppedItem;
- (id)_windowForSetDownOfDragItem:(id)item;
- (unint64_t)draggingSession:(id)session sourceOperationMaskForDraggingWithinApp:(BOOL)app;
- (void)_draggingSession:(id)session handedOffDragImageForItem:(id)item;
- (void)_draggingSessionHandedOffDragImage:(id)image;
- (void)_itemsNeedUpdate:(id)update;
- (void)_setDownAnimation:(id)animation willAnimateSetDownOfDragItem:(id)item withAnimator:(id)animator preview:(id)preview;
- (void)_setInternalDragSession:(id)session;
- (void)addItems:(id)items forDragSourceInteraction:(id)interaction;
- (void)draggingSession:(id)session willAddItems:(id)items;
- (void)draggingSessionDidEnd:(id)end withOperation:(unint64_t)operation;
- (void)draggingSessionDidMove:(id)move;
- (void)draggingSessionDidTransferItems:(id)items;
- (void)draggingSessionWillBegin:(id)begin;
- (void)draggingSessionWillEnd:(id)end withOperation:(unint64_t)operation;
@end

@implementation _UIDragSessionImpl

+ (id)activeSessions
{
  v2 = [__activeDragSessionsTable copy];

  return v2;
}

- (_UIDragSessionImpl)initWithInteraction:(id)interaction
{
  interactionCopy = interaction;
  if (!interactionCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"UIDragSession.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"interaction"}];
  }

  v15.receiver = self;
  v15.super_class = _UIDragSessionImpl;
  v6 = [(_UIDragSessionImpl *)&v15 init];
  if (v6)
  {
    if (initWithInteraction__onceToken != -1)
    {
      dispatch_once(&initWithInteraction__onceToken, &__block_literal_global_186);
    }

    v7 = objc_opt_new();
    allItems = v6->_allItems;
    v6->_allItems = v7;

    strongToStrongObjectsMapTable = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    dragSourceInteractionByItem = v6->_dragSourceInteractionByItem;
    v6->_dragSourceInteractionByItem = strongToStrongObjectsMapTable;

    weakObjectsHashTable = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    allInteractions = v6->_allInteractions;
    v6->_allInteractions = weakObjectsHashTable;

    [(NSHashTable *)v6->_allInteractions addObject:interactionCopy];
    objc_storeWeak(&v6->_primaryInteraction, interactionCopy);
    _UIInitializeDraggingSystem();
  }

  return v6;
}

- (void)addItems:(id)items forDragSourceInteraction:(id)interaction
{
  v32 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  interactionCopy = interaction;
  [(NSHashTable *)self->_allInteractions addObject:interactionCopy];
  reverseObjectEnumerator = [itemsCopy reverseObjectEnumerator];
  allObjects = [reverseObjectEnumerator allObjects];

  [(NSMutableArray *)self->_allItems replaceObjectsInRange:0 withObjectsFromArray:0, allObjects];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = allObjects;
  v11 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
  if (v11)
  {
    v12 = v11;
    v13 = *v27;
    do
    {
      for (i = 0; i != v12; ++i)
      {
        if (*v27 != v13)
        {
          objc_enumerationMutation(v10);
        }

        [(NSMapTable *)self->_dragSourceInteractionByItem setObject:interactionCopy forKey:*(*(&v26 + 1) + 8 * i)];
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v12);
  }

  _internalDragSession = [(_UIDragSessionImpl *)self _internalDragSession];
  if (_internalDragSession)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v16 = v10;
    v17 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v23;
      do
      {
        for (j = 0; j != v18; ++j)
        {
          if (*v23 != v19)
          {
            objc_enumerationMutation(v16);
          }

          v21 = *(*(&v22 + 1) + 8 * j);
          [v21 _setDragDropSession:{self, v22}];
          [v21 _setSourceVisualTarget:self];
          [v21 _loadOriginalImageComponentProvider];
        }

        v18 = [v16 countByEnumeratingWithState:&v22 objects:v30 count:16];
      }

      while (v18);
    }

    if ([v16 count])
    {
      [_internalDragSession addPublicItems:v16];
    }
  }
}

- (void)_setInternalDragSession:(id)session
{
  sessionCopy = session;
  objc_storeStrong(&self->_internalDragSession, session);
  if (self->_internalDragSession)
  {
    [__activeDragSessionsTable addObject:self];
    [(_UIInternalDraggingSessionSource *)self->_internalDragSession setDelegate:self];
  }
}

+ (id)_localDragSessionForSessionDestination:(id)destination
{
  v16 = *MEMORY[0x1E69E9840];
  inAppSessionSource = [destination inAppSessionSource];
  if (inAppSessionSource)
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    v4 = +[_UIDragSessionImpl activeSessions];
    v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
    if (v5)
    {
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; i = i + 1)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          _internalDragSession = [v8 _internalDragSession];

          if (_internalDragSession == inAppSessionSource)
          {
            v5 = v8;
            goto LABEL_12;
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_12:
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)_itemsNeedUpdate:(id)update
{
  v21 = *MEMORY[0x1E69E9840];
  updateCopy = update;
  if ([(NSMutableSet *)self->_addedDraggingItemsWaitingForHandOffOfDragImage count])
  {
    v5 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = updateCopy;
    v7 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v17;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v17 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v16 + 1) + 8 * i);
          v12 = [(NSMutableSet *)self->_addedDraggingItemsWaitingForHandOffOfDragImage containsObject:v11, v16];
          addedDragItemsPendingUpdate = v5;
          if (v12)
          {
            addedDragItemsPendingUpdate = self->_addedDragItemsPendingUpdate;
            if (!addedDragItemsPendingUpdate)
            {
              v14 = objc_opt_new();
              v15 = self->_addedDragItemsPendingUpdate;
              self->_addedDragItemsPendingUpdate = v14;

              addedDragItemsPendingUpdate = self->_addedDragItemsPendingUpdate;
            }
          }

          [(NSMutableSet *)addedDragItemsPendingUpdate addObject:v11];
        }

        v8 = [v6 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v8);
    }

    _markItemsForUpdate(v5, self);
  }

  else
  {
    _markItemsForUpdate(updateCopy, self);
  }
}

- (BOOL)_allowsItemsToUpdate
{
  if (!self->_didHandOffDragImage)
  {
    return 0;
  }

  _internalDragSession = [(_UIDragSessionImpl *)self _internalDragSession];
  v3 = _internalDragSession != 0;

  return v3;
}

- (CGPoint)locationInView:(id)view
{
  viewCopy = view;
  if (!viewCopy)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"View must be non-null"];
  }

  internalDragSession = self->_internalDragSession;
  if (internalDragSession)
  {
    [(_UIInternalDraggingSessionSource *)internalDragSession draggingLocationInCoordinateSpace:viewCopy];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_primaryInteraction);
    [WeakRetained _locationInView:viewCopy];
    v7 = v11;
    v9 = v12;
  }

  v13 = v7;
  v14 = v9;
  result.y = v14;
  result.x = v13;
  return result;
}

- (BOOL)allowsMoveOperation
{
  internalDragSession = self->_internalDragSession;
  if (internalDragSession)
  {
    withinAppSourceOperationMask = [(_UIInternalDraggingSessionSource *)internalDragSession withinAppSourceOperationMask];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_primaryInteraction);
    withinAppSourceOperationMask = [WeakRetained _session:self sourceOperationMaskForDraggingWithinApp:1];
  }

  return (withinAppSourceOperationMask >> 4) & 1;
}

- (BOOL)isRestrictedToDraggingApplication
{
  internalDragSession = self->_internalDragSession;
  if (internalDragSession)
  {
    outsideAppSourceOperationMask = [(_UIInternalDraggingSessionSource *)internalDragSession outsideAppSourceOperationMask];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_primaryInteraction);
    outsideAppSourceOperationMask = [WeakRetained _session:self sourceOperationMaskForDraggingWithinApp:0];
  }

  return (outsideAppSourceOperationMask & 1) == 0;
}

- (BOOL)hasItemsConformingToTypeIdentifiers:(id)identifiers
{
  identifiersCopy = identifiers;
  items = [(_UIDragSessionImpl *)self items];
  hasItemsConformingToTypeIdentifiers = _hasItemsConformingToTypeIdentifiers(items, identifiersCopy);

  return hasItemsConformingToTypeIdentifiers;
}

- (BOOL)canLoadObjectsOfClass:(Class)class
{
  items = [(_UIDragSessionImpl *)self items];
  LOBYTE(class) = _canLoadObjectsOfClass(items, class);

  return class;
}

- (unint64_t)draggingSession:(id)session sourceOperationMaskForDraggingWithinApp:(BOOL)app
{
  appCopy = app;
  WeakRetained = objc_loadWeakRetained(&self->_primaryInteraction);
  v7 = [WeakRetained _session:self sourceOperationMaskForDraggingWithinApp:appCopy];

  return v7;
}

- (BOOL)draggingSessionPrefersFullSizePreviews:(id)previews
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_primaryInteraction);
  LOBYTE(selfCopy) = [WeakRetained _sessionPrefersFullSizePreviews:selfCopy];

  return selfCopy;
}

- (BOOL)draggingSessionDynamicallyUpdatesPrefersFullSizePreviews:(id)previews
{
  selfCopy = self;
  WeakRetained = objc_loadWeakRetained(&self->_primaryInteraction);
  LOBYTE(selfCopy) = [WeakRetained _sessionDynamicallyUpdatesPrefersFullSizePreviews:selfCopy];

  return selfCopy;
}

- (void)draggingSessionWillBegin:(id)begin
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryInteraction);
  [WeakRetained _sessionWillBegin:self];
}

- (void)_draggingSessionHandedOffDragImage:(id)image
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryInteraction);
  [WeakRetained _sessionHandedOffDragImage:self];
  self->_didHandOffDragImage = 1;
  if ((_MergedGlobals_1073 & 1) == 0)
  {
    _MergedGlobals_1073 = 1;
    [UIApp _performBlockAfterCATransactionCommits:&__block_literal_global_262];
  }
}

- (void)_draggingSession:(id)session handedOffDragImageForItem:(id)item
{
  v7[1] = *MEMORY[0x1E69E9840];
  itemCopy = item;
  [(NSMutableSet *)self->_addedDraggingItemsWaitingForHandOffOfDragImage removeObject:itemCopy];
  if (itemCopy && [(NSMutableSet *)self->_addedDragItemsPendingUpdate containsObject:itemCopy])
  {
    [(NSMutableSet *)self->_addedDragItemsPendingUpdate removeObject:itemCopy];
    v7[0] = itemCopy;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [(_UIDragSessionImpl *)self _itemsNeedUpdate:v6];
  }
}

- (void)draggingSessionDidMove:(id)move
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_allInteractions;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) _sessionDidMove:{self, v9}];
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }
}

- (void)draggingSession:(id)session willAddItems:(id)items
{
  v40 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  firstObject = [itemsCopy firstObject];
  v7 = [(_UIDragSessionImpl *)self dragSourceInteractionForDragItem:firstObject];

  addedDraggingItemsWaitingForHandOffOfDragImage = self->_addedDraggingItemsWaitingForHandOffOfDragImage;
  if (!addedDraggingItemsWaitingForHandOffOfDragImage)
  {
    v9 = objc_opt_new();
    v10 = self->_addedDraggingItemsWaitingForHandOffOfDragImage;
    self->_addedDraggingItemsWaitingForHandOffOfDragImage = v9;

    addedDraggingItemsWaitingForHandOffOfDragImage = self->_addedDraggingItemsWaitingForHandOffOfDragImage;
  }

  [(NSMutableSet *)addedDraggingItemsWaitingForHandOffOfDragImage addObjectsFromArray:itemsCopy];
  v11 = itemsCopy;
  v12 = [qword_1ED49DB10 objectForKey:self];
  if (v12)
  {
    v13 = objc_opt_new();
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v14 = v11;
    v15 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v35;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v35 != v17)
          {
            objc_enumerationMutation(v14);
          }

          v19 = *(*(&v34 + 1) + 8 * i);
          if ([v12 containsObject:v19])
          {
            [v12 removeObject:v19];
            [v13 addObject:v19];
          }
        }

        v16 = [v14 countByEnumeratingWithState:&v34 objects:v39 count:16];
      }

      while (v16);
    }
  }

  else
  {
    v13 = MEMORY[0x1E695E0F0];
  }

  addedDragItemsPendingUpdate = self->_addedDragItemsPendingUpdate;
  if (!addedDragItemsPendingUpdate)
  {
    v21 = objc_opt_new();
    v22 = self->_addedDragItemsPendingUpdate;
    self->_addedDragItemsPendingUpdate = v21;

    addedDragItemsPendingUpdate = self->_addedDragItemsPendingUpdate;
  }

  [(NSMutableSet *)addedDragItemsPendingUpdate addObjectsFromArray:v13];
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v23 = self->_allInteractions;
  v24 = [(NSHashTable *)v23 countByEnumeratingWithState:&v30 objects:v38 count:16];
  if (v24)
  {
    v25 = v24;
    v26 = *v31;
    do
    {
      for (j = 0; j != v25; ++j)
      {
        if (*v31 != v26)
        {
          objc_enumerationMutation(v23);
        }

        v28 = *(*(&v30 + 1) + 8 * j);
        v29 = [v11 copy];
        [v28 _session:self willAddItems:v29 forInteraction:v7];
      }

      v25 = [(NSHashTable *)v23 countByEnumeratingWithState:&v30 objects:v38 count:16];
    }

    while (v25);
  }
}

- (void)draggingSessionWillEnd:(id)end withOperation:(unint64_t)operation
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v6 = self->_allInteractions;
  v7 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v12;
    do
    {
      v10 = 0;
      do
      {
        if (*v12 != v9)
        {
          objc_enumerationMutation(v6);
        }

        [*(*(&v11 + 1) + 8 * v10++) _sessionWillEnd:self withOperation:{operation, v11}];
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)draggingSessionDidEnd:(id)end withOperation:(unint64_t)operation
{
  v17 = *MEMORY[0x1E69E9840];
  endCopy = end;
  if (!operation)
  {
    [__activeDragSessionsTable removeObject:self];
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  v7 = self->_allInteractions;
  v8 = [(NSHashTable *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v13;
    do
    {
      v11 = 0;
      do
      {
        if (*v13 != v10)
        {
          objc_enumerationMutation(v7);
        }

        [*(*(&v12 + 1) + 8 * v11++) _sessionDidEnd:self withOperation:{operation, v12}];
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)draggingSessionDidTransferItems:(id)items
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = self->_allInteractions;
  v5 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v10;
    do
    {
      v8 = 0;
      do
      {
        if (*v10 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(*(&v9 + 1) + 8 * v8++) _sessionDidTransferItems:{self, v9}];
      }

      while (v6 != v8);
      v6 = [(NSHashTable *)v4 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v6);
  }

  [__activeDragSessionsTable removeObject:self];
}

- (id)_windowForSetDownOfDragItem:(id)item
{
  v3 = [(_UIDragSessionImpl *)self dragSourceInteractionForDragItem:item];
  view = [v3 view];
  _window = [view _window];

  return _window;
}

- (id)_setDownAnimation:(id)animation prepareForSetDownOfDragItem:(id)item visibleDroppedItem:(id)droppedItem
{
  v23 = *MEMORY[0x1E69E9840];
  animationCopy = animation;
  itemCopy = item;
  droppedItemCopy = droppedItem;
  v11 = [(_UIDragSessionImpl *)self dragSourceInteractionForDragItem:itemCopy];
  if (os_variant_has_internal_diagnostics())
  {
    if (!itemCopy)
    {
      v16 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v21) = 0;
        _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "Cannot find item for dragging item", &v21, 2u);
      }
    }
  }

  else if (!itemCopy)
  {
    v18 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49DB00) + 8);
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v21) = 0;
      _os_log_impl(&dword_188A29000, v18, OS_LOG_TYPE_ERROR, "Cannot find item for dragging item", &v21, 2u);
    }
  }

  if (os_variant_has_internal_diagnostics())
  {
    if (!droppedItemCopy)
    {
      v17 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v21 = 138412290;
        v22 = itemCopy;
        _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "droppedItem for dragging item (%@) in nil", &v21, 0xCu);
      }

      goto LABEL_19;
    }
  }

  else if (!droppedItemCopy)
  {
    v19 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49DB08) + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412290;
      v22 = itemCopy;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "droppedItem for dragging item (%@) in nil", &v21, 0xCu);
    }

    goto LABEL_19;
  }

  if (itemCopy)
  {
    createSnapshotView = [droppedItemCopy createSnapshotView];
    [droppedItemCopy center];
    [createSnapshotView setCenter:?];
    preview = [droppedItemCopy preview];
    containerView = [animationCopy containerView];
    v15 = [v11 _session:self targetedPreviewForCancellingItem:itemCopy duiPreview:preview snapshotView:createSnapshotView container:containerView];

    goto LABEL_20;
  }

LABEL_19:
  v15 = 0;
LABEL_20:

  return v15;
}

- (void)_setDownAnimation:(id)animation willAnimateSetDownOfDragItem:(id)item withAnimator:(id)animator preview:(id)preview
{
  animatorCopy = animator;
  itemCopy = item;
  if (os_variant_has_internal_diagnostics())
  {
    if (!itemCopy)
    {
      v11 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Item cannot be nil", buf, 2u);
      }
    }
  }

  else if (!itemCopy)
  {
    v12 = *(__UILogGetCategoryCachedImpl("Assert", &_setDownAnimation_willAnimateSetDownOfDragItem_withAnimator_preview____s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Item cannot be nil", v13, 2u);
    }
  }

  v10 = [(_UIDragSessionImpl *)self dragSourceInteractionForDragItem:itemCopy];
  [v10 _session:self item:itemCopy willCancelWithAnimator:animatorCopy];
}

- (id)_setDownAnimation:(id)animation customSpringAnimationBehaviorForSetDownOfDragItem:(id)item
{
  itemCopy = item;
  v6 = [(_UIDragSessionImpl *)self dragSourceInteractionForDragItem:itemCopy];
  v7 = [v6 _session:self customSpringAnimationBehaviorForCancellingItem:itemCopy];

  return v7;
}

- (UIDragInteraction)primaryInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryInteraction);

  return WeakRetained;
}

@end