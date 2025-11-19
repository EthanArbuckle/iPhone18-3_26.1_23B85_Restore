@interface _UIDragSessionImpl
+ (id)_localDragSessionForSessionDestination:(id)a3;
+ (id)activeSessions;
- (BOOL)_allowsItemsToUpdate;
- (BOOL)allowsMoveOperation;
- (BOOL)canLoadObjectsOfClass:(Class)a3;
- (BOOL)draggingSessionDynamicallyUpdatesPrefersFullSizePreviews:(id)a3;
- (BOOL)draggingSessionPrefersFullSizePreviews:(id)a3;
- (BOOL)hasItemsConformingToTypeIdentifiers:(id)a3;
- (BOOL)isRestrictedToDraggingApplication;
- (CGPoint)locationInView:(id)a3;
- (UIDragInteraction)primaryInteraction;
- (_UIDragSessionImpl)initWithInteraction:(id)a3;
- (id)_setDownAnimation:(id)a3 customSpringAnimationBehaviorForSetDownOfDragItem:(id)a4;
- (id)_setDownAnimation:(id)a3 prepareForSetDownOfDragItem:(id)a4 visibleDroppedItem:(id)a5;
- (id)_windowForSetDownOfDragItem:(id)a3;
- (unint64_t)draggingSession:(id)a3 sourceOperationMaskForDraggingWithinApp:(BOOL)a4;
- (void)_draggingSession:(id)a3 handedOffDragImageForItem:(id)a4;
- (void)_draggingSessionHandedOffDragImage:(id)a3;
- (void)_itemsNeedUpdate:(id)a3;
- (void)_setDownAnimation:(id)a3 willAnimateSetDownOfDragItem:(id)a4 withAnimator:(id)a5 preview:(id)a6;
- (void)_setInternalDragSession:(id)a3;
- (void)addItems:(id)a3 forDragSourceInteraction:(id)a4;
- (void)draggingSession:(id)a3 willAddItems:(id)a4;
- (void)draggingSessionDidEnd:(id)a3 withOperation:(unint64_t)a4;
- (void)draggingSessionDidMove:(id)a3;
- (void)draggingSessionDidTransferItems:(id)a3;
- (void)draggingSessionWillBegin:(id)a3;
- (void)draggingSessionWillEnd:(id)a3 withOperation:(unint64_t)a4;
@end

@implementation _UIDragSessionImpl

+ (id)activeSessions
{
  v2 = [__activeDragSessionsTable copy];

  return v2;
}

- (_UIDragSessionImpl)initWithInteraction:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    [v14 handleFailureInMethod:a2 object:self file:@"UIDragSession.m" lineNumber:81 description:{@"Invalid parameter not satisfying: %@", @"interaction"}];
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

    v9 = [MEMORY[0x1E696AD18] strongToStrongObjectsMapTable];
    dragSourceInteractionByItem = v6->_dragSourceInteractionByItem;
    v6->_dragSourceInteractionByItem = v9;

    v11 = [MEMORY[0x1E696AC70] weakObjectsHashTable];
    allInteractions = v6->_allInteractions;
    v6->_allInteractions = v11;

    [(NSHashTable *)v6->_allInteractions addObject:v5];
    objc_storeWeak(&v6->_primaryInteraction, v5);
    _UIInitializeDraggingSystem();
  }

  return v6;
}

- (void)addItems:(id)a3 forDragSourceInteraction:(id)a4
{
  v32 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  [(NSHashTable *)self->_allInteractions addObject:v7];
  v8 = [v6 reverseObjectEnumerator];
  v9 = [v8 allObjects];

  [(NSMutableArray *)self->_allItems replaceObjectsInRange:0 withObjectsFromArray:0, v9];
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v10 = v9;
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

        [(NSMapTable *)self->_dragSourceInteractionByItem setObject:v7 forKey:*(*(&v26 + 1) + 8 * i)];
      }

      v12 = [v10 countByEnumeratingWithState:&v26 objects:v31 count:16];
    }

    while (v12);
  }

  v15 = [(_UIDragSessionImpl *)self _internalDragSession];
  if (v15)
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
      [v15 addPublicItems:v16];
    }
  }
}

- (void)_setInternalDragSession:(id)a3
{
  v5 = a3;
  objc_storeStrong(&self->_internalDragSession, a3);
  if (self->_internalDragSession)
  {
    [__activeDragSessionsTable addObject:self];
    [(_UIInternalDraggingSessionSource *)self->_internalDragSession setDelegate:self];
  }
}

+ (id)_localDragSessionForSessionDestination:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v3 = [a3 inAppSessionSource];
  if (v3)
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
          v9 = [v8 _internalDragSession];

          if (v9 == v3)
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

- (void)_itemsNeedUpdate:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if ([(NSMutableSet *)self->_addedDraggingItemsWaitingForHandOffOfDragImage count])
  {
    v5 = objc_opt_new();
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v6 = v4;
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
    _markItemsForUpdate(v4, self);
  }
}

- (BOOL)_allowsItemsToUpdate
{
  if (!self->_didHandOffDragImage)
  {
    return 0;
  }

  v2 = [(_UIDragSessionImpl *)self _internalDragSession];
  v3 = v2 != 0;

  return v3;
}

- (CGPoint)locationInView:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"View must be non-null"];
  }

  internalDragSession = self->_internalDragSession;
  if (internalDragSession)
  {
    [(_UIInternalDraggingSessionSource *)internalDragSession draggingLocationInCoordinateSpace:v4];
    v7 = v6;
    v9 = v8;
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_primaryInteraction);
    [WeakRetained _locationInView:v4];
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
    v4 = [(_UIInternalDraggingSessionSource *)internalDragSession withinAppSourceOperationMask];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_primaryInteraction);
    v4 = [WeakRetained _session:self sourceOperationMaskForDraggingWithinApp:1];
  }

  return (v4 >> 4) & 1;
}

- (BOOL)isRestrictedToDraggingApplication
{
  internalDragSession = self->_internalDragSession;
  if (internalDragSession)
  {
    v4 = [(_UIInternalDraggingSessionSource *)internalDragSession outsideAppSourceOperationMask];
  }

  else
  {
    WeakRetained = objc_loadWeakRetained(&self->_primaryInteraction);
    v4 = [WeakRetained _session:self sourceOperationMaskForDraggingWithinApp:0];
  }

  return (v4 & 1) == 0;
}

- (BOOL)hasItemsConformingToTypeIdentifiers:(id)a3
{
  v4 = a3;
  v5 = [(_UIDragSessionImpl *)self items];
  hasItemsConformingToTypeIdentifiers = _hasItemsConformingToTypeIdentifiers(v5, v4);

  return hasItemsConformingToTypeIdentifiers;
}

- (BOOL)canLoadObjectsOfClass:(Class)a3
{
  v4 = [(_UIDragSessionImpl *)self items];
  LOBYTE(a3) = _canLoadObjectsOfClass(v4, a3);

  return a3;
}

- (unint64_t)draggingSession:(id)a3 sourceOperationMaskForDraggingWithinApp:(BOOL)a4
{
  v4 = a4;
  WeakRetained = objc_loadWeakRetained(&self->_primaryInteraction);
  v7 = [WeakRetained _session:self sourceOperationMaskForDraggingWithinApp:v4];

  return v7;
}

- (BOOL)draggingSessionPrefersFullSizePreviews:(id)a3
{
  v3 = self;
  WeakRetained = objc_loadWeakRetained(&self->_primaryInteraction);
  LOBYTE(v3) = [WeakRetained _sessionPrefersFullSizePreviews:v3];

  return v3;
}

- (BOOL)draggingSessionDynamicallyUpdatesPrefersFullSizePreviews:(id)a3
{
  v3 = self;
  WeakRetained = objc_loadWeakRetained(&self->_primaryInteraction);
  LOBYTE(v3) = [WeakRetained _sessionDynamicallyUpdatesPrefersFullSizePreviews:v3];

  return v3;
}

- (void)draggingSessionWillBegin:(id)a3
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryInteraction);
  [WeakRetained _sessionWillBegin:self];
}

- (void)_draggingSessionHandedOffDragImage:(id)a3
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

- (void)_draggingSession:(id)a3 handedOffDragImageForItem:(id)a4
{
  v7[1] = *MEMORY[0x1E69E9840];
  v5 = a4;
  [(NSMutableSet *)self->_addedDraggingItemsWaitingForHandOffOfDragImage removeObject:v5];
  if (v5 && [(NSMutableSet *)self->_addedDragItemsPendingUpdate containsObject:v5])
  {
    [(NSMutableSet *)self->_addedDragItemsPendingUpdate removeObject:v5];
    v7[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];
    [(_UIDragSessionImpl *)self _itemsNeedUpdate:v6];
  }
}

- (void)draggingSessionDidMove:(id)a3
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

- (void)draggingSession:(id)a3 willAddItems:(id)a4
{
  v40 = *MEMORY[0x1E69E9840];
  v5 = a4;
  v6 = [v5 firstObject];
  v7 = [(_UIDragSessionImpl *)self dragSourceInteractionForDragItem:v6];

  addedDraggingItemsWaitingForHandOffOfDragImage = self->_addedDraggingItemsWaitingForHandOffOfDragImage;
  if (!addedDraggingItemsWaitingForHandOffOfDragImage)
  {
    v9 = objc_opt_new();
    v10 = self->_addedDraggingItemsWaitingForHandOffOfDragImage;
    self->_addedDraggingItemsWaitingForHandOffOfDragImage = v9;

    addedDraggingItemsWaitingForHandOffOfDragImage = self->_addedDraggingItemsWaitingForHandOffOfDragImage;
  }

  [(NSMutableSet *)addedDraggingItemsWaitingForHandOffOfDragImage addObjectsFromArray:v5];
  v11 = v5;
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

- (void)draggingSessionWillEnd:(id)a3 withOperation:(unint64_t)a4
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

        [*(*(&v11 + 1) + 8 * v10++) _sessionWillEnd:self withOperation:{a4, v11}];
      }

      while (v8 != v10);
      v8 = [(NSHashTable *)v6 countByEnumeratingWithState:&v11 objects:v15 count:16];
    }

    while (v8);
  }
}

- (void)draggingSessionDidEnd:(id)a3 withOperation:(unint64_t)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (!a4)
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

        [*(*(&v12 + 1) + 8 * v11++) _sessionDidEnd:self withOperation:{a4, v12}];
      }

      while (v9 != v11);
      v9 = [(NSHashTable *)v7 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v9);
  }
}

- (void)draggingSessionDidTransferItems:(id)a3
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

- (id)_windowForSetDownOfDragItem:(id)a3
{
  v3 = [(_UIDragSessionImpl *)self dragSourceInteractionForDragItem:a3];
  v4 = [v3 view];
  v5 = [v4 _window];

  return v5;
}

- (id)_setDownAnimation:(id)a3 prepareForSetDownOfDragItem:(id)a4 visibleDroppedItem:(id)a5
{
  v23 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = [(_UIDragSessionImpl *)self dragSourceInteractionForDragItem:v9];
  if (os_variant_has_internal_diagnostics())
  {
    if (!v9)
    {
      v16 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_FAULT))
      {
        LOWORD(v21) = 0;
        _os_log_fault_impl(&dword_188A29000, v16, OS_LOG_TYPE_FAULT, "Cannot find item for dragging item", &v21, 2u);
      }
    }
  }

  else if (!v9)
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
    if (!v10)
    {
      v17 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v17, OS_LOG_TYPE_FAULT))
      {
        v21 = 138412290;
        v22 = v9;
        _os_log_fault_impl(&dword_188A29000, v17, OS_LOG_TYPE_FAULT, "droppedItem for dragging item (%@) in nil", &v21, 0xCu);
      }

      goto LABEL_19;
    }
  }

  else if (!v10)
  {
    v19 = *(__UILogGetCategoryCachedImpl("Assert", &qword_1ED49DB08) + 8);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v21 = 138412290;
      v22 = v9;
      _os_log_impl(&dword_188A29000, v19, OS_LOG_TYPE_ERROR, "droppedItem for dragging item (%@) in nil", &v21, 0xCu);
    }

    goto LABEL_19;
  }

  if (v9)
  {
    v12 = [v10 createSnapshotView];
    [v10 center];
    [v12 setCenter:?];
    v13 = [v10 preview];
    v14 = [v8 containerView];
    v15 = [v11 _session:self targetedPreviewForCancellingItem:v9 duiPreview:v13 snapshotView:v12 container:v14];

    goto LABEL_20;
  }

LABEL_19:
  v15 = 0;
LABEL_20:

  return v15;
}

- (void)_setDownAnimation:(id)a3 willAnimateSetDownOfDragItem:(id)a4 withAnimator:(id)a5 preview:(id)a6
{
  v8 = a5;
  v9 = a4;
  if (os_variant_has_internal_diagnostics())
  {
    if (!v9)
    {
      v11 = __UIFaultDebugAssertLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        *buf = 0;
        _os_log_fault_impl(&dword_188A29000, v11, OS_LOG_TYPE_FAULT, "Item cannot be nil", buf, 2u);
      }
    }
  }

  else if (!v9)
  {
    v12 = *(__UILogGetCategoryCachedImpl("Assert", &_setDownAnimation_willAnimateSetDownOfDragItem_withAnimator_preview____s_category) + 8);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *v13 = 0;
      _os_log_impl(&dword_188A29000, v12, OS_LOG_TYPE_ERROR, "Item cannot be nil", v13, 2u);
    }
  }

  v10 = [(_UIDragSessionImpl *)self dragSourceInteractionForDragItem:v9];
  [v10 _session:self item:v9 willCancelWithAnimator:v8];
}

- (id)_setDownAnimation:(id)a3 customSpringAnimationBehaviorForSetDownOfDragItem:(id)a4
{
  v5 = a4;
  v6 = [(_UIDragSessionImpl *)self dragSourceInteractionForDragItem:v5];
  v7 = [v6 _session:self customSpringAnimationBehaviorForCancellingItem:v5];

  return v7;
}

- (UIDragInteraction)primaryInteraction
{
  WeakRetained = objc_loadWeakRetained(&self->_primaryInteraction);

  return WeakRetained;
}

@end