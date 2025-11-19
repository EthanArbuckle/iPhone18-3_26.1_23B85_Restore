@interface _UIDruidDestinationConnection
- (_UIDruidDestinationConnection)initWithSessionIdentifier:(unsigned int)a3 systemPolicy:(BOOL)a4;
- (void)addedItemCollection:(id)a3;
- (void)connect;
- (void)dirtyItems:(id)a3;
- (void)dragEnded;
- (void)handOffDroppedItems:(id)a3 withFence:(id)a4 completion:(id)a5;
- (void)performDropWithItemCollection:(id)a3 dataProviderEndpoint:(id)a4 visibleDroppedItems:(id)a5 completion:(id)a6;
- (void)requestDragPreviewsForIndexSet:(id)a3 reply:(id)a4;
- (void)requestDropWithOperation:(unint64_t)a3 layerContext:(id)a4;
- (void)sawDragEndEvent;
- (void)setState:(int64_t)a3;
- (void)takePotentialDrop:(id)a3;
- (void)updatedPresentation:(id)a3;
@end

@implementation _UIDruidDestinationConnection

- (_UIDruidDestinationConnection)initWithSessionIdentifier:(unsigned int)a3 systemPolicy:(BOOL)a4
{
  if (!a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Drag destination's session identifier must be non-zero"];
  }

  v20.receiver = self;
  v20.super_class = _UIDruidDestinationConnection;
  v7 = [(_UIDruidDestinationConnection *)&v20 init];
  v8 = v7;
  if (v7)
  {
    v7->_sessionIdentifier = a3;
    v7->_state = 0;
    v7->_systemPolicy = a4;
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

- (void)dirtyItems:(id)a3
{
  v4 = a3;
  v5 = *(__UILogGetCategoryCachedImpl("Dragging", &dirtyItems____s_category_696) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "_UIDruidDestinationConnection dirtyItems:", v6, 2u);
  }

  [(_DUIServerSessionDestination *)self->_serverSession dirtyDestinationItems:v4];
}

- (void)sawDragEndEvent
{
  v3 = *(__UILogGetCategoryCachedImpl("Dragging", &sawDragEndEvent___s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "_UIDruidDestinationConnection sawDragEndEvent", v6, 2u);
  }

  v4 = [(_UIDruidDestinationConnection *)self state];
  if (v4)
  {
    if (v4 != 1)
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

- (void)takePotentialDrop:(id)a3
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = *(__UILogGetCategoryCachedImpl("Dragging", &takePotentialDrop____s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v4;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "_UIDruidDestinationConnection takePotentialDrop:%@", &v6, 0xCu);
  }

  if ([(_UIDruidDestinationConnection *)self state]== 1)
  {
    [(_DUIServerSessionDestination *)self->_serverSession takePotentialDrop:v4];
  }
}

- (void)requestDropWithOperation:(unint64_t)a3 layerContext:(id)a4
{
  v10 = *MEMORY[0x1E69E9840];
  v6 = a4;
  v7 = *(__UILogGetCategoryCachedImpl("Dragging", &requestDropWithOperation_layerContext____s_category) + 8);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 134217984;
    v9 = a3;
    _os_log_impl(&dword_188A29000, v7, OS_LOG_TYPE_DEFAULT, "_UIDruidDestinationConnection requestDropWithOperation:%lu", &v8, 0xCu);
  }

  if ([(_UIDruidDestinationConnection *)self state]== 1)
  {
    [(_DUIServerSessionDestination *)self->_serverSession requestDropWithOperation:a3 layerContext:v6];
  }
}

- (void)requestDragPreviewsForIndexSet:(id)a3 reply:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *(__UILogGetCategoryCachedImpl("Dragging", &requestDragPreviewsForIndexSet_reply____s_category_697) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "_UIDruidDestinationConnection requestDragPreviewsForIndexSet:reply: %@", buf, 0xCu);
  }

  v9 = +[UIApplication _systemAnimationFenceExemptQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70___UIDruidDestinationConnection_requestDragPreviewsForIndexSet_reply___block_invoke;
  v12[3] = &unk_1E70FCE28;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v9 performAsync:v12];
}

- (void)updatedPresentation:(id)a3
{
  v4 = a3;
  v5 = +[UIApplication _systemAnimationFenceExemptQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __53___UIDruidDestinationConnection_updatedPresentation___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performAsync:v7];
}

- (void)addedItemCollection:(id)a3
{
  v4 = a3;
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
  v9 = v4;
  v7 = v4;
  [v6 performAsync:v8];
}

- (void)performDropWithItemCollection:(id)a3 dataProviderEndpoint:(id)a4 visibleDroppedItems:(id)a5 completion:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
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
  v21 = v10;
  v22 = v11;
  v23 = v12;
  v24 = v13;
  v16 = v13;
  v17 = v12;
  v18 = v11;
  v19 = v10;
  [v15 performAsync:v20];
}

- (void)handOffDroppedItems:(id)a3 withFence:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
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
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v9;
  v14 = v8;
  v15 = v10;
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

- (void)setState:(int64_t)a3
{
  v17 = *MEMORY[0x1E69E9840];
  state = self->_state;
  if (state != a3)
  {
    self->_state = a3;
    v6 = *(__UILogGetCategoryCachedImpl("Dragging", &setState____s_category_702) + 8);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = v6;
      v8 = stringFromDraggingSessionDestinationState(state);
      v9 = stringFromDraggingSessionDestinationState(a3);
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
        if (a3 == 2)
        {
          [(_DUIServerSessionDestination *)self->_serverSession sawDragEndEvent];
          return;
        }
      }

      else if ((a3 & 0xFFFFFFFFFFFFFFFELL) != 4)
      {
        [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"Should not transition from a terminal state to a non-terminal state"];
      }
    }

    if ((a3 & 0xFFFFFFFFFFFFFFFELL) == 4)
    {
      v11 = [(_UIDruidDestinationConnection *)self dragEndBlock];

      if (v11)
      {
        v12 = [(_UIDruidDestinationConnection *)self dragEndBlock];
        (v12)[2](v12, a3 == 4);
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