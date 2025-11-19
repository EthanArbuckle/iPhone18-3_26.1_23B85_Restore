@interface _UIDruidSourceConnection
- (_UIDruidSourceConnection)init;
- (id)addItems:(id)a3 withOldItemCollection:(id)a4;
- (void)_internalDragFailed;
- (void)beginDragWithConfiguration:(id)a3 completion:(id)a4;
- (void)canHandOffCancelledItems:(id)a3 withReply:(id)a4;
- (void)cancelAndClearWatchdogTimer;
- (void)cancelDrag;
- (void)dataTransferSessionFinished;
- (void)dirtyItems:(id)a3;
- (void)dragEndedWithOperation:(unint64_t)a3;
- (void)dragFailed;
- (void)handOffCancelledItems:(id)a3 withFence:(id)a4 completion:(id)a5;
- (void)requestDragPreviewsForIndexSet:(id)a3 reply:(id)a4;
- (void)updatedPresentation:(id)a3;
@end

@implementation _UIDruidSourceConnection

- (_UIDruidSourceConnection)init
{
  v15.receiver = self;
  v15.super_class = _UIDruidSourceConnection;
  v2 = [(_UIDruidSourceConnection *)&v15 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E696B0B8]) initWithMachServiceName:@"com.apple.DragUI.druid.source" options:0];
    v4 = _UIDraggingConnectionXPCQueue();
    [v3 _setQueue:v4];

    objc_storeStrong(&v2->_connection, v3);
    objc_initWeak(&location, v2);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __32___UIDruidSourceConnection_init__block_invoke;
    v12[3] = &unk_1E70F3590;
    v5 = v3;
    v13 = v5;
    [(NSXPCConnection *)v2->_connection setInterruptionHandler:v12];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __32___UIDruidSourceConnection_init__block_invoke_2;
    v10[3] = &unk_1E70F5A28;
    objc_copyWeak(&v11, &location);
    [(NSXPCConnection *)v2->_connection setInvalidationHandler:v10];
    v6 = _DUINewServerSourceInterface();
    [(NSXPCConnection *)v2->_connection setRemoteObjectInterface:v6];

    v7 = _DUINewClientSourceInterface();
    [(NSXPCConnection *)v2->_connection setExportedInterface:v7];

    [(NSXPCConnection *)v2->_connection setExportedObject:v2];
    connectionWatchdogTimer = v2->_connectionWatchdogTimer;
    v2->_connectionWatchdogTimer = 0;

    [(NSXPCConnection *)v2->_connection resume];
    objc_destroyWeak(&v11);

    objc_destroyWeak(&location);
  }

  return v2;
}

- (void)beginDragWithConfiguration:(id)a3 completion:(id)a4
{
  v48 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v33 = a4;
  v7 = [v6 touchIDs];
  v8 = [v7 count];

  v9 = [v6 items];
  v10 = [v6 axEndpoint];
  if (v10 || ([v6 initiatedWithPointer] & 1) != 0)
  {
  }

  else if ((v8 - 3) <= 0xFFFFFFFD)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"touches must have 1 or 2 objects"];
  }

  if (!v9)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"items must be non-nil"];
  }

  if (![v9 count])
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"items must not be empty"];
  }

  if (!v33)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"completion must be non-nil"];
  }

  v11 = *(__UILogGetCategoryCachedImpl("Dragging", &beginDragWithConfiguration_completion____s_category) + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    LOWORD(buf) = 0;
    _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "_UIDruidSourceConnection beginDragWithTouches:items:completion:", &buf, 2u);
  }

  if ([(_UIDruidSourceConnection *)self isCancelled])
  {
    (*(v33 + 2))(v33, 0, 0);
    [(NSXPCConnection *)self->_connection invalidate];
  }

  if ((_UIKitProcessIsBeingDebugged() & 1) == 0)
  {
    v12 = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, MEMORY[0x1E69E96A0]);
    connectionWatchdogTimer = self->_connectionWatchdogTimer;
    self->_connectionWatchdogTimer = v12;

    v14 = self->_connectionWatchdogTimer;
    v15 = dispatch_time(0, 2000000000);
    dispatch_source_set_timer(v14, v15, 0xFFFFFFFFFFFFFFFFLL, 0xBEBC200uLL);
    objc_initWeak(&buf, self);
    v16 = self->_connectionWatchdogTimer;
    handler[0] = MEMORY[0x1E69E9820];
    handler[1] = 3221225472;
    handler[2] = __66___UIDruidSourceConnection_beginDragWithConfiguration_completion___block_invoke;
    handler[3] = &unk_1E70F5A28;
    objc_copyWeak(&v45, &buf);
    dispatch_source_set_event_handler(v16, handler);
    objc_destroyWeak(&v45);
    objc_destroyWeak(&buf);
  }

  v17 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v9, "count")}];
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v18 = v9;
  v19 = [v18 countByEnumeratingWithState:&v40 objects:v47 count:16];
  if (v19)
  {
    v20 = *v41;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v41 != v20)
        {
          objc_enumerationMutation(v18);
        }

        v22 = [*(*(&v40 + 1) + 8 * i) itemProvider];
        v23 = [objc_alloc(MEMORY[0x1E69BC800]) initWithNSItemProvider:v22];
        [v17 addObject:v23];
      }

      v19 = [v18 countByEnumeratingWithState:&v40 objects:v47 count:16];
    }

    while (v19);
  }

  v24 = [objc_alloc(MEMORY[0x1E69BC808]) initWithItems:v17];
  [v24 setOriginatorDataOwner:{objc_msgSend(v6, "dataOwner")}];
  [v6 setItemCollection:v24];
  v25 = [v24 dataConsumersEndpoint];
  [v6 setDataProviderEndpoint:v25];

  objc_initWeak(&buf, self);
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __66___UIDruidSourceConnection_beginDragWithConfiguration_completion___block_invoke_590;
  aBlock[3] = &unk_1E7106738;
  objc_copyWeak(&v39, &buf);
  v26 = v33;
  v38 = v26;
  v27 = v6;
  v37 = v27;
  v28 = _Block_copy(aBlock);
  connection = self->_connection;
  v34[0] = MEMORY[0x1E69E9820];
  v34[1] = 3221225472;
  v34[2] = __66___UIDruidSourceConnection_beginDragWithConfiguration_completion___block_invoke_2_593;
  v34[3] = &unk_1E7106760;
  v30 = v26;
  v34[4] = self;
  v35 = v30;
  v31 = [(NSXPCConnection *)connection remoteObjectProxyWithErrorHandler:v34];
  [v31 beginDragWithClientSession:self configuration:v27 reply:v28];
  v32 = self->_connectionWatchdogTimer;
  if (v32)
  {
    dispatch_activate(v32);
  }

  objc_destroyWeak(&v39);
  objc_destroyWeak(&buf);
}

- (void)dirtyItems:(id)a3
{
  v4 = a3;
  v5 = *(__UILogGetCategoryCachedImpl("Dragging", &dirtyItems____s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *v6 = 0;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "_UIDruidSourceConnection dirtyItems:", v6, 2u);
  }

  [(_DUIServerSessionSource *)self->_serverSession dirtySourceItems:v4];
}

- (id)addItems:(id)a3 withOldItemCollection:(id)a4
{
  v27 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = [a4 items];
  v8 = [v7 mutableCopy];

  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v9 = v6;
  v10 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v23;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v23 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v22 + 1) + 8 * i);
        v15 = objc_alloc(MEMORY[0x1E69BC800]);
        v16 = [v14 itemProvider];
        v17 = [v15 initWithNSItemProvider:v16];

        [v8 addObject:v17];
      }

      v11 = [v9 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v11);
  }

  v18 = [objc_alloc(MEMORY[0x1E69BC808]) initWithItems:v8];
  serverSession = self->_serverSession;
  v20 = [v18 dataConsumersEndpoint];
  [(_DUIServerSessionSource *)serverSession addItemCollection:v18 dataProviderEndpoint:v20];

  return v18;
}

- (void)cancelDrag
{
  self->_cancelled = 1;
  if (self->_serverSession)
  {
    [(_DUIServerSessionSource *)self->_serverSession cancelDrag];
  }

  else
  {
    [(NSXPCConnection *)self->_connection invalidate];
  }
}

- (void)cancelAndClearWatchdogTimer
{
  connectionWatchdogTimer = self->_connectionWatchdogTimer;
  if (connectionWatchdogTimer)
  {
    self->_connectionWatchdogTimer = 0;
    source = connectionWatchdogTimer;

    dispatch_source_cancel(source);
  }
}

- (void)requestDragPreviewsForIndexSet:(id)a3 reply:(id)a4
{
  v17 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = *(__UILogGetCategoryCachedImpl("Dragging", &requestDragPreviewsForIndexSet_reply____s_category) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v16 = v6;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "_UIDruidSourceConnection requestDragPreviewsForIndexSet:reply: %@", buf, 0xCu);
  }

  v9 = +[UIApplication _systemAnimationFenceExemptQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __65___UIDruidSourceConnection_requestDragPreviewsForIndexSet_reply___block_invoke;
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
  v7[2] = __48___UIDruidSourceConnection_updatedPresentation___block_invoke;
  v7[3] = &unk_1E70F35B8;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  [v5 performAsync:v7];
}

- (void)canHandOffCancelledItems:(id)a3 withReply:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = *(__UILogGetCategoryCachedImpl("Dragging", &canHandOffCancelledItems_withReply____s_category) + 8);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v8, OS_LOG_TYPE_DEFAULT, "_UIDruidSourceConnection canHandOffCancelledItems:withReply:", buf, 2u);
  }

  v9 = +[UIApplication _systemAnimationFenceExemptQueue];
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __63___UIDruidSourceConnection_canHandOffCancelledItems_withReply___block_invoke;
  v12[3] = &unk_1E70FCE28;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v10 = v7;
  v11 = v6;
  [v9 performAsync:v12];
}

- (void)handOffCancelledItems:(id)a3 withFence:(id)a4 completion:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = *(__UILogGetCategoryCachedImpl("Dragging", &handOffCancelledItems_withFence_completion____s_category) + 8);
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_188A29000, v11, OS_LOG_TYPE_DEFAULT, "_UIDruidSourceConnection handOffCancelledItems:withFence:completion:", buf, 2u);
  }

  v12 = +[UIApplication _systemAnimationFenceExemptQueue];
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = __71___UIDruidSourceConnection_handOffCancelledItems_withFence_completion___block_invoke;
  v16[3] = &unk_1E70F5F08;
  v16[4] = self;
  v17 = v8;
  v18 = v9;
  v19 = v10;
  v13 = v10;
  v14 = v9;
  v15 = v8;
  [v12 performAsync:v16];
}

- (void)dragEndedWithOperation:(unint64_t)a3
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = *(__UILogGetCategoryCachedImpl("Dragging", &dragEndedWithOperation____s_category) + 8);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 134217984;
    v9 = a3;
    _os_log_impl(&dword_188A29000, v5, OS_LOG_TYPE_DEFAULT, "_UIDruidSourceConnection dragEndedWithOperation:%ld", buf, 0xCu);
  }

  v6 = +[UIApplication _systemAnimationFenceExemptQueue];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __51___UIDruidSourceConnection_dragEndedWithOperation___block_invoke;
  v7[3] = &unk_1E70F32F0;
  v7[4] = self;
  v7[5] = a3;
  [v6 performAsync:v7];
}

- (void)dragFailed
{
  v3 = *(__UILogGetCategoryCachedImpl("Dragging", &dragFailed___s_category) + 8);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_188A29000, v3, OS_LOG_TYPE_DEFAULT, "_UIDruidSourceConnection dragFailed", v4, 2u);
  }

  [(_UIDruidSourceConnection *)self _internalDragFailed];
}

- (void)dataTransferSessionFinished
{
  v3 = +[UIApplication _systemAnimationFenceExemptQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __55___UIDruidSourceConnection_dataTransferSessionFinished__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [v3 performAsync:v4];
}

- (void)_internalDragFailed
{
  v3 = +[UIApplication _systemAnimationFenceExemptQueue];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __47___UIDruidSourceConnection__internalDragFailed__block_invoke;
  v4[3] = &unk_1E70F3590;
  v4[4] = self;
  [v3 performAsync:v4];
}

@end