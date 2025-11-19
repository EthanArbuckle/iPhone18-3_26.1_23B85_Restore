@interface UIDraggingSystemSession
- (unint64_t)_indexOfDragItemInSession:(id)a3;
- (void)cancel;
- (void)loadURLForItem:(id)a3 completion:(id)a4;
- (void)loadUserActivityForItem:(id)a3 completion:(id)a4;
- (void)requestDragContinuationEndpointWithCompletion:(id)a3;
- (void)setCommandeered:(BOOL)a3;
@end

@implementation UIDraggingSystemSession

- (void)setCommandeered:(BOOL)a3
{
  commandeered = self->_commandeered;
  if (commandeered != a3)
  {
    v6 = [(UIDraggingSystemSession *)self _serverSession];
    v7 = v6;
    if (commandeered)
    {
      [v6 surrenderDragSession];
    }

    else
    {
      [v6 commandeerDragSession];
    }

    self->_commandeered = a3;
  }
}

- (unint64_t)_indexOfDragItemInSession:(id)a3
{
  v4 = a3;
  v5 = [v4 _dragDropSession];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && ([v5 sessionDestination], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v6, "sessionIdentifier"), v6, -[UIDraggingSystemSession info](self, "info"), v8 = objc_claimAutoreleasedReturnValue(), LODWORD(v6) = objc_msgSend(v8, "sessionIdentifier"), v8, v7 == v6))
  {
    v9 = [v5 items];
    v10 = [v9 indexOfObjectIdenticalTo:v4];
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v10;
}

- (void)loadURLForItem:(id)a3 completion:(id)a4
{
  v9 = a4;
  v6 = [(UIDraggingSystemSession *)self _indexOfDragItemInSession:a3];
  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v9[2](v9, 0);
  }

  else
  {
    v7 = v6;
    v8 = [(UIDraggingSystemSession *)self _serverSession];
    [v8 loadURLForItemAtIndex:v7 reply:v9];
  }
}

- (void)loadUserActivityForItem:(id)a3 completion:(id)a4
{
  v6 = a4;
  v7 = [(UIDraggingSystemSession *)self _indexOfDragItemInSession:a3];
  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v6[2](v6, 0);
  }

  else
  {
    v8 = v7;
    v9 = [(UIDraggingSystemSession *)self _serverSession];
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __62__UIDraggingSystemSession_loadUserActivityForItem_completion___block_invoke;
    v10[3] = &unk_1E7127B18;
    v11 = v6;
    [v9 loadUserActivityDataForItemAtIndex:v8 reply:v10];
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

- (void)requestDragContinuationEndpointWithCompletion:(id)a3
{
  v4 = a3;
  v5 = [(UIDraggingSystemSession *)self _serverSession];
  [v5 requestDragContinuationEndpointWithReply:v4];
}

- (void)cancel
{
  v2 = [(UIDraggingSystemSession *)self _serverSession];
  [v2 cancelDragSession];
}

@end