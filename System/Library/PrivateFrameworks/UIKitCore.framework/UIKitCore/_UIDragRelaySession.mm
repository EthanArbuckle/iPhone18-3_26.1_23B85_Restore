@interface _UIDragRelaySession
- (_UIDragRelaySession)initWithDragItems:(id)a3;
- (_UIDragRelaySessionDelegate)delegate;
- (void)_draggingSession:(id)a3 updatedPresentation:(id)a4;
- (void)beginDragFromView:(id)a3 point:(CGPoint)a4;
- (void)cancelDrag;
- (void)dragSessionCompletedInitialCheckIn;
- (void)draggingSessionDidEnd:(id)a3 withOperation:(unint64_t)a4;
- (void)draggingSessionDidTransferItems:(id)a3;
- (void)updateDragPreviewForItemsAtIndexes:(id)a3;
@end

@implementation _UIDragRelaySession

- (_UIDragRelaySession)initWithDragItems:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v17.receiver = self;
  v17.super_class = _UIDragRelaySession;
  v6 = [(_UIDragRelaySession *)&v17 init];
  if (v6)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = v5;
    v8 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v14;
      do
      {
        v11 = 0;
        do
        {
          if (*v14 != v10)
          {
            objc_enumerationMutation(v7);
          }

          [*(*(&v13 + 1) + 8 * v11++) _updatePreferredPreview];
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v13 objects:v18 count:16];
      }

      while (v9);
    }

    objc_storeStrong(&v6->_dragItems, a3);
  }

  return v6;
}

- (void)beginDragFromView:(id)a3 point:(CGPoint)a4
{
  y = a4.y;
  x = a4.x;
  v7 = a3;
  v8 = [v7 window];
  [v8 convertPoint:v7 fromView:{x, y}];
  v10 = v9;
  v12 = v11;

  v13 = [(_UIDragRelaySession *)self dragItems];
  v14 = [UIDraggingBeginningSessionConfiguration configurationWithItems:v13 initialCentroidInSourceWindow:v7 sourceView:v10, v12, 0.0];

  v15 = [v7 window];
  v16 = [v15 screen];
  v17 = [v16 _dragManager];

  v18 = [v17 beginDragWithSessionConfiguration:v14];
  [(_UIDragRelaySession *)self setDraggingSessionSource:v18];
  [v18 setDelegate:self];
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __47___UIDragRelaySession_beginDragFromView_point___block_invoke;
  v19[3] = &unk_1E70F5A28;
  objc_copyWeak(&v20, &location);
  [v17 performAfterCompletingPendingSessionRequests:v19];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)dragSessionCompletedInitialCheckIn
{
  v3 = [(_UIDragRelaySession *)self draggingSessionSource];
  v4 = [v3 state];

  if (v4 == 2)
  {
    v5 = [(_UIDragRelaySession *)self draggingSessionSource];
    [v5 dragDidExitApp];

    v6 = [(_UIDragRelaySession *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    v10 = [(_UIDragRelaySession *)self delegate];
    [v10 dragRelaySessionDidBegin:self];
  }

  else
  {
    v8 = [(_UIDragRelaySession *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      return;
    }

    v10 = [(_UIDragRelaySession *)self delegate];
    [v10 dragRelaySessionDidFail:self];
  }
}

- (void)draggingSessionDidEnd:(id)a3 withOperation:(unint64_t)a4
{
  v6 = [(_UIDragRelaySession *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(_UIDragRelaySession *)self delegate];
    [v8 dragRelaySession:self didEndDragWithDrop:a4 != 0];
  }
}

- (void)draggingSessionDidTransferItems:(id)a3
{
  v4 = [(_UIDragRelaySession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(_UIDragRelaySession *)self delegate];
    [v6 dragRelaySessionDidEndDataTransfer:self];
  }
}

- (void)_draggingSession:(id)a3 updatedPresentation:(id)a4
{
  v5 = a4;
  v7 = [[_UIDragMonitorSessionPresentationUpdate alloc] initWithDragPresentationUpdate:v5];

  v6 = [(_UIDragRelaySession *)self delegate];
  [v6 dragRelaySession:self didUpdateDragPresentation:v7];
}

- (void)updateDragPreviewForItemsAtIndexes:(id)a3
{
  v4 = MEMORY[0x1E695DF70];
  v5 = a3;
  v6 = [v4 array];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __58___UIDragRelaySession_updateDragPreviewForItemsAtIndexes___block_invoke;
  v12 = &unk_1E70F43F0;
  v13 = v6;
  v14 = self;
  v7 = v6;
  [v5 enumerateIndexesUsingBlock:&v9];

  v8 = [(_UIDragRelaySession *)self draggingSessionSource:v9];
  [v8 itemsBecameDirty:v7];
}

- (void)cancelDrag
{
  v2 = [(_UIDragRelaySession *)self draggingSessionSource];
  [v2 cancelDrag];
}

- (_UIDragRelaySessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end