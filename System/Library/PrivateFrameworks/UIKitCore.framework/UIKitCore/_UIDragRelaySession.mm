@interface _UIDragRelaySession
- (_UIDragRelaySession)initWithDragItems:(id)items;
- (_UIDragRelaySessionDelegate)delegate;
- (void)_draggingSession:(id)session updatedPresentation:(id)presentation;
- (void)beginDragFromView:(id)view point:(CGPoint)point;
- (void)cancelDrag;
- (void)dragSessionCompletedInitialCheckIn;
- (void)draggingSessionDidEnd:(id)end withOperation:(unint64_t)operation;
- (void)draggingSessionDidTransferItems:(id)items;
- (void)updateDragPreviewForItemsAtIndexes:(id)indexes;
@end

@implementation _UIDragRelaySession

- (_UIDragRelaySession)initWithDragItems:(id)items
{
  v19 = *MEMORY[0x1E69E9840];
  itemsCopy = items;
  v17.receiver = self;
  v17.super_class = _UIDragRelaySession;
  v6 = [(_UIDragRelaySession *)&v17 init];
  if (v6)
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v7 = itemsCopy;
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

    objc_storeStrong(&v6->_dragItems, items);
  }

  return v6;
}

- (void)beginDragFromView:(id)view point:(CGPoint)point
{
  y = point.y;
  x = point.x;
  viewCopy = view;
  window = [viewCopy window];
  [window convertPoint:viewCopy fromView:{x, y}];
  v10 = v9;
  v12 = v11;

  dragItems = [(_UIDragRelaySession *)self dragItems];
  v14 = [UIDraggingBeginningSessionConfiguration configurationWithItems:dragItems initialCentroidInSourceWindow:viewCopy sourceView:v10, v12, 0.0];

  window2 = [viewCopy window];
  screen = [window2 screen];
  _dragManager = [screen _dragManager];

  v18 = [_dragManager beginDragWithSessionConfiguration:v14];
  [(_UIDragRelaySession *)self setDraggingSessionSource:v18];
  [v18 setDelegate:self];
  objc_initWeak(&location, self);
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 3221225472;
  v19[2] = __47___UIDragRelaySession_beginDragFromView_point___block_invoke;
  v19[3] = &unk_1E70F5A28;
  objc_copyWeak(&v20, &location);
  [_dragManager performAfterCompletingPendingSessionRequests:v19];
  objc_destroyWeak(&v20);
  objc_destroyWeak(&location);
}

- (void)dragSessionCompletedInitialCheckIn
{
  draggingSessionSource = [(_UIDragRelaySession *)self draggingSessionSource];
  state = [draggingSessionSource state];

  if (state == 2)
  {
    draggingSessionSource2 = [(_UIDragRelaySession *)self draggingSessionSource];
    [draggingSessionSource2 dragDidExitApp];

    delegate = [(_UIDragRelaySession *)self delegate];
    v7 = objc_opt_respondsToSelector();

    if ((v7 & 1) == 0)
    {
      return;
    }

    delegate2 = [(_UIDragRelaySession *)self delegate];
    [delegate2 dragRelaySessionDidBegin:self];
  }

  else
  {
    delegate3 = [(_UIDragRelaySession *)self delegate];
    v9 = objc_opt_respondsToSelector();

    if ((v9 & 1) == 0)
    {
      return;
    }

    delegate2 = [(_UIDragRelaySession *)self delegate];
    [delegate2 dragRelaySessionDidFail:self];
  }
}

- (void)draggingSessionDidEnd:(id)end withOperation:(unint64_t)operation
{
  delegate = [(_UIDragRelaySession *)self delegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    delegate2 = [(_UIDragRelaySession *)self delegate];
    [delegate2 dragRelaySession:self didEndDragWithDrop:operation != 0];
  }
}

- (void)draggingSessionDidTransferItems:(id)items
{
  delegate = [(_UIDragRelaySession *)self delegate];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    delegate2 = [(_UIDragRelaySession *)self delegate];
    [delegate2 dragRelaySessionDidEndDataTransfer:self];
  }
}

- (void)_draggingSession:(id)session updatedPresentation:(id)presentation
{
  presentationCopy = presentation;
  v7 = [[_UIDragMonitorSessionPresentationUpdate alloc] initWithDragPresentationUpdate:presentationCopy];

  delegate = [(_UIDragRelaySession *)self delegate];
  [delegate dragRelaySession:self didUpdateDragPresentation:v7];
}

- (void)updateDragPreviewForItemsAtIndexes:(id)indexes
{
  v4 = MEMORY[0x1E695DF70];
  indexesCopy = indexes;
  array = [v4 array];
  v9 = MEMORY[0x1E69E9820];
  v10 = 3221225472;
  v11 = __58___UIDragRelaySession_updateDragPreviewForItemsAtIndexes___block_invoke;
  v12 = &unk_1E70F43F0;
  v13 = array;
  selfCopy = self;
  v7 = array;
  [indexesCopy enumerateIndexesUsingBlock:&v9];

  v8 = [(_UIDragRelaySession *)self draggingSessionSource:v9];
  [v8 itemsBecameDirty:v7];
}

- (void)cancelDrag
{
  draggingSessionSource = [(_UIDragRelaySession *)self draggingSessionSource];
  [draggingSessionSource cancelDrag];
}

- (_UIDragRelaySessionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end