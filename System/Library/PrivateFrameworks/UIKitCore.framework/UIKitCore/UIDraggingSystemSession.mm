@interface UIDraggingSystemSession
- (unint64_t)_indexOfDragItemInSession:(id)session;
- (void)cancel;
- (void)loadURLForItem:(id)item completion:(id)completion;
- (void)loadUserActivityForItem:(id)item completion:(id)completion;
- (void)requestDragContinuationEndpointWithCompletion:(id)completion;
- (void)setCommandeered:(BOOL)commandeered;
@end

@implementation UIDraggingSystemSession

- (void)setCommandeered:(BOOL)commandeered
{
  commandeered = self->_commandeered;
  if (commandeered != commandeered)
  {
    _serverSession = [(UIDraggingSystemSession *)self _serverSession];
    v7 = _serverSession;
    if (commandeered)
    {
      [_serverSession surrenderDragSession];
    }

    else
    {
      [_serverSession commandeerDragSession];
    }

    self->_commandeered = commandeered;
  }
}

- (unint64_t)_indexOfDragItemInSession:(id)session
{
  sessionCopy = session;
  _dragDropSession = [sessionCopy _dragDropSession];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([_dragDropSession sessionDestination], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "sessionIdentifier"), v6, -[UIDraggingSystemSession info](self, "info"), v8 = objc_claimAutoreleasedReturnValue(), LODWORD(v6) = objc_msgSend(v8, "sessionIdentifier"), v8, v7 == v6))
  {
    items = [_dragDropSession items];
    v10 = [items indexOfObjectIdenticalTo:sessionCopy];
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (void)loadURLForItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  v6 = [(UIDraggingSystemSession *)self _indexOfDragItemInSession:item];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v7 = v6;
    _serverSession = [(UIDraggingSystemSession *)self _serverSession];
    [_serverSession loadURLForItemAtIndex:v7 reply:completionCopy];
  }
}

- (void)loadUserActivityForItem:(id)item completion:(id)completion
{
  completionCopy = completion;
  v7 = [(UIDraggingSystemSession *)self _indexOfDragItemInSession:item];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    completionCopy[2](completionCopy, 0);
  }

  else
  {
    v8 = v7;
    _serverSession = [(UIDraggingSystemSession *)self _serverSession];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__UIDraggingSystemSession_loadUserActivityForItem_completion___block_invoke;
    v10[3] = &unk_1E7127B18;
    v11 = completionCopy;
    [_serverSession loadUserActivityDataForItemAtIndex:v8 reply:v10];
  }
}

void __62__UIDraggingSystemSession_loadUserActivityForItem_completion___block_invoke(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = MEMORY[0x1E696B090];
    v4 = a2;
    v5 = [[v3 alloc] _initWithUserActivityData:v4];
  }

  else
  {
    v5 = 0;
  }

  (*(*(a1 + 32) + 16))();
}

- (void)requestDragContinuationEndpointWithCompletion:(id)completion
{
  completionCopy = completion;
  _serverSession = [(UIDraggingSystemSession *)self _serverSession];
  [_serverSession requestDragContinuationEndpointWithReply:completionCopy];
}

- (void)cancel
{
  _serverSession = [(UIDraggingSystemSession *)self _serverSession];
  [_serverSession cancelDragSession];
}

@end