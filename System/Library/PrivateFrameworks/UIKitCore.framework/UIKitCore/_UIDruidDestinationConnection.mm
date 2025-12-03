@interface _UIDruidDestinationConnection
- (_UIDruidDestinationConnection)initWithSessionIdentifier:(unsigned int)identifier systemPolicy:(BOOL)policy;
- (void)addedItemCollection:(id)collection;
- (void)connect;
- (void)dirtyItems:(id)items;
- (void)dragEnded;
- (void)handOffDroppedItems:(id)items withFence:(id)fence completion:(id)completion;
- (void)performDropWithItemCollection:(id)collection dataProviderEndpoint:(id)endpoint visibleDroppedItems:(id)items completion:(id)completion;
- (void)requestDragPreviewsForIndexSet:(id)set reply:(id)reply;
- (void)requestDropWithOperation:(unint64_t)operation layerContext:(id)context;
- (void)sawDragEndEvent;
- (void)setState:(int64_t)state;
- (void)takePotentialDrop:(id)drop;
- (void)updatedPresentation:(id)presentation;
@end

@implementation _UIDruidDestinationConnection

- (_UIDruidDestinationConnection)initWithSessionIdentifier:(unsigned int)identifier systemPolicy:(BOOL)policy
{
  if (!identifier)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Drag destination's session identifier must be non-zero"];
  }

  v20.receiver = self;
  v20.super_class = _UIDruidDestinationConnection;
  v7 = [(_UIDruidDestinationConnection *)&v20 init];
  v8 = v7;
  if (v7)
  {
    v7->_sessionIdentifier = identifier;
    v7->_state = 0;
    v7->_systemPolicy = policy;
    v9 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.DragUI.druid.destination" options:0];
    v10 = _UIDraggingConnectionXPCQueue();
    [v9 _setQueue:v10];

    objc_storeStrong(&v8->_connection, v9);
    objc_initWeak(&location, v8);
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __72___UIDruidDestinationConnection_initWithSessionIdentifier_systemPolicy___block_invoke;
    v17[3] = &unk_1E70F3590;
    v11 = v9;
    v18 = v11;
    [(NSXPCConnection *)v8->_connection setInterruptionHandler:v17];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __72___UIDruidDestinationConnection_initWithSessionIdentifier_systemPolicy___block_invoke_2;
    v15[3] = &unk_1E70F5A28;
    objc_copyWeak(&v16, &location);
    [(NSXPCConnection *)v8->_connection setInvalidationHandler:v15];
    v12 = _DUINewServerDestinationInterface();
    [(NSXPCConnection *)v8->_connection setRemoteObjectInterface:v12];

    v13 = _DUINewClientDestinationInterface();
    [(NSXPCConnection *)v8->_connection setExportedInterface:v13];

    [(NSXPCConnection *)v8->_connection setExportedObject:v8];
    [(NSXPCConnection *)v8->_connection resume];
    objc_destroyWeak(&v16);

    objc_destroyWeak(&location);
  }

  return v8;
}

- (void)connect
{
  objc_initWeak(&location, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __40___UIDruidDestinationConnection_connect__block_invoke;
  aBlock[3] = &unk_1E71067D8;
  objc_copyWeak(&v8, &location);
  v3 = _Block_copy(aBlock);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __40___UIDruidDestinationConnection_connect__block_invoke_2;
  v5[3] = &unk_1E7106800;
  objc_copyWeak(&v6, &location);
  v4 = [(_UIDruidDestinationConnection *)self serverDestinationProxyWithErrorHandler:v5];
  [v4 sawFirstDragEventWithSessionID:-[_UIDruidDestinationConnection sessionIdentifier](self systemPolicy:"sessionIdentifier") destination:-[_UIDruidDestinationConnection isSystemPolicy](self completion:{"isSystemPolicy"), self, v3}];

  objc_destroyWeak(&v6);
  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

- (void)dirtyItems:(id)items
{
  itemsCopy = items;
  v5 = *(__UILogGetCategoryCachedImpl("Dragging", &dirtyItems____s_category_696) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "_UIDruidDestinationConnection dirtyItems:", v6, 2u);
  }

  [(_DUIServerSessionDestination *)self->_serverSession dirtyDestinationItems:itemsCopy];
}

- (void)sawDragEndEvent
{
  v3 = *(__UILogGetCategoryCachedImpl("Dragging", &sawDragEndEvent___s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "_UIDruidDestinationConnection sawDragEndEvent", v6, 2u);
  }

  state = [(_UIDruidDestinationConnection *)self state];
  if (state)
  {
    if (state != 1)
    {
      return;
    }

    v5 = 2;
  }

  else
  {
    v5 = 5;
  }

  [(_UIDruidDestinationConnection *)self setState:v5];
}

- (void)takePotentialDrop:(id)drop
{
  v8 = *MEMORY[0x1E69E9840];
  dropCopy = drop;
  v5 = *(__UILogGetCategoryCachedImpl("Dragging", &takePotentialDrop____s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = dropCopy;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "_UIDruidDestinationConnection takePotentialDrop:%@", &v6, 0xCu);
  }

  if ([(_UIDruidDestinationConnection *)self state]== 1)
  {
    [(_DUIServerSessionDestination *)self->_serverSession takePotentialDrop:dropCopy];
  }
}

- (void)requestDropWithOperation:(unint64_t)operation layerContext:(id)context
{
  v10 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v7 = *(__UILogGetCategoryCachedImpl("Dragging", &requestDropWithOperation_layerContext____s_category) + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    operationCopy = operation;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "_UIDruidDestinationConnection requestDropWithOperation:%lu", &v8, 0xCu);
  }

  if ([(_UIDruidDestinationConnection *)self state]== 1)
  {
    [(_DUIServerSessionDestination *)self->_serverSession requestDropWithOperation:operation layerContext:contextCopy];
  }
}

- (void)requestDragPreviewsForIndexSet:(id)set reply:(id)reply
{
  v17 = *MEMORY[0x1E69E9840];
  setCopy = set;
  replyCopy = reply;
  v8 = *(__UILogGetCategoryCachedImpl("Dragging", &requestDragPreviewsForIndexSet_reply____s_category_697) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = setCopy;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "_UIDruidDestinationConnection requestDragPreviewsForIndexSet:reply: %@", buf, 0xCu);
  }

  v9 = +[UIApplication _systemAnimationFenceExemptQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70___UIDruidDestinationConnection_requestDragPreviewsForIndexSet_reply___block_invoke;
  v12[3] = &unk_1E70FCE28;
  v12[4] = self;
  v13 = setCopy;
  v14 = replyCopy;
  v10 = replyCopy;
  v11 = setCopy;
  [v9 performAsync:v12];
}

- (void)updatedPresentation:(id)presentation
{
  presentationCopy = presentation;
  v5 = +[UIApplication _systemAnimationFenceExemptQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53___UIDruidDestinationConnection_updatedPresentation___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = presentationCopy;
  v6 = presentationCopy;
  [v5 performAsync:v7];
}

- (void)addedItemCollection:(id)collection
{
  collectionCopy = collection;
  v5 = *(__UILogGetCategoryCachedImpl("Dragging", &addedItemCollection____s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "_UIDruidDestinationConnection addedItemCollection:", buf, 2u);
  }

  v6 = +[UIApplication _systemAnimationFenceExemptQueue];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __53___UIDruidDestinationConnection_addedItemCollection___block_invoke;
  v8[3] = &unk_1E70F35B8;
  v8[4] = self;
  v9 = collectionCopy;
  v7 = collectionCopy;
  [v6 performAsync:v8];
}

- (void)performDropWithItemCollection:(id)collection dataProviderEndpoint:(id)endpoint visibleDroppedItems:(id)items completion:(id)completion
{
  collectionCopy = collection;
  endpointCopy = endpoint;
  itemsCopy = items;
  completionCopy = completion;
  v14 = *(__UILogGetCategoryCachedImpl("Dragging", &performDropWithItemCollection_dataProviderEndpoint_visibleDroppedItems_completion____s_category) + 8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v14, OS_LOG_TYPE_DEFAULT, "_UIDruidDestinationConnection performDropWithItemCollection:...", buf, 2u);
  }

  v15 = +[UIApplication _systemAnimationFenceExemptQueue];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __115___UIDruidDestinationConnection_performDropWithItemCollection_dataProviderEndpoint_visibleDroppedItems_completion___block_invoke;
  v20[3] = &unk_1E7103108;
  v20[4] = self;
  v21 = collectionCopy;
  v22 = endpointCopy;
  v23 = itemsCopy;
  v24 = completionCopy;
  v16 = completionCopy;
  v17 = itemsCopy;
  v18 = endpointCopy;
  v19 = collectionCopy;
  [v15 performAsync:v20];
}

- (void)handOffDroppedItems:(id)items withFence:(id)fence completion:(id)completion
{
  itemsCopy = items;
  fenceCopy = fence;
  completionCopy = completion;
  v11 = *(__UILogGetCategoryCachedImpl("Dragging", &handOffDroppedItems_withFence_completion____s_category) + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "_UIDruidDestinationConnection handOffDroppedItems:withFence:completion:", buf, 2u);
  }

  v12 = +[UIApplication _systemAnimationFenceExemptQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __74___UIDruidDestinationConnection_handOffDroppedItems_withFence_completion___block_invoke;
  v16[3] = &unk_1E7106828;
  v16[4] = self;
  v17 = itemsCopy;
  v18 = fenceCopy;
  v19 = completionCopy;
  v13 = fenceCopy;
  v14 = itemsCopy;
  v15 = completionCopy;
  [v12 performAsync:v16];
}

- (void)dragEnded
{
  v3 = *(__UILogGetCategoryCachedImpl("Dragging", &dragEnded___s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "_UIDruidDestinationConnection: dragEnded", buf, 2u);
  }

  v4 = +[UIApplication _systemAnimationFenceExemptQueue];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42___UIDruidDestinationConnection_dragEnded__block_invoke;
  v5[3] = &unk_1E70F3590;
  v5[4] = self;
  [v4 performAsync:v5];
}

- (void)setState:(int64_t)state
{
  v17 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state != state)
  {
    self->_state = state;
    v6 = *(__UILogGetCategoryCachedImpl("Dragging", &setState____s_category_702) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = stringFromDraggingSessionDestinationState(state);
      v9 = stringFromDraggingSessionDestinationState(state);
      v13 = 138412546;
      v14 = v8;
      v15 = 2112;
      v16 = v9;
      _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "_UIInternalDraggingSessionDestination: State changing from %@ to %@", &v13, 0x16u);
    }

    if (state - 2 >= 2 && state != 0)
    {
      if (state == 1)
      {
        if (state == 2)
        {
          [(_DUIServerSessionDestination *)self->_serverSession sawDragEndEvent];
          return;
        }
      }

      else if ((state & 0xFFFFFFFFFFFFFFFELL) != 4)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Should not transition from a terminal state to a non-terminal state"];
      }
    }

    if ((state & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      dragEndBlock = [(_UIDruidDestinationConnection *)self dragEndBlock];

      if (dragEndBlock)
      {
        dragEndBlock2 = [(_UIDruidDestinationConnection *)self dragEndBlock];
        (dragEndBlock2)[2](dragEndBlock2, state == 4);
      }

      [(_UIDruidDestinationConnection *)self setConnectionBlock:0];
      [(_UIDruidDestinationConnection *)self setDragPreviewProviderBlock:0];
      [(_UIDruidDestinationConnection *)self setHandOffDroppedItemsBlock:0];
      [(_UIDruidDestinationConnection *)self setDropPerformBlock:0];
      [(_UIDruidDestinationConnection *)self setDragEndBlock:0];
    }
  }
}

@end