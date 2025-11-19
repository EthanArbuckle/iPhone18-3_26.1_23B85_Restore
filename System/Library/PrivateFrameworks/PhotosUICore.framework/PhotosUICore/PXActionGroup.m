@interface PXActionGroup
- (PXActionGroup)init;
- (PXActionGroup)initWithActions:(id)a3;
- (void)_performActionWithEnumerator:(id)a3 completionHandler:(id)a4;
- (void)_performRedoWithEnumerator:(id)a3 completionHandler:(id)a4;
- (void)_performUndoWithEnumerator:(id)a3 completionHandler:(id)a4;
- (void)performAction:(id)a3;
- (void)performRedo:(id)a3;
- (void)performUndo:(id)a3;
@end

@implementation PXActionGroup

- (void)performRedo:(id)a3
{
  v4 = a3;
  v5 = [(PXActionGroup *)self actions];
  v6 = [v5 objectEnumerator];

  [(PXActionGroup *)self _performRedoWithEnumerator:v6 completionHandler:v4];
}

- (void)performUndo:(id)a3
{
  v4 = a3;
  v5 = [(PXActionGroup *)self actions];
  v6 = [v5 reverseObjectEnumerator];

  [(PXActionGroup *)self _performUndoWithEnumerator:v6 completionHandler:v4];
}

- (void)performAction:(id)a3
{
  v4 = a3;
  v5 = [(PXActionGroup *)self actions];
  v6 = [v5 objectEnumerator];

  [(PXActionGroup *)self _performActionWithEnumerator:v6 completionHandler:v4];
}

- (void)_performRedoWithEnumerator:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 nextObject];
  if (v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__PXActionGroup__performRedoWithEnumerator_completionHandler___block_invoke;
    v9[3] = &unk_1E774ACE8;
    v9[4] = self;
    v10 = v6;
    v11 = v7;
    [v8 performRedo:v9];
  }

  else
  {
    (*(v7 + 2))(v7, 1, 0);
  }
}

uint64_t __62__PXActionGroup__performRedoWithEnumerator_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    return [*(a1 + 32) _performRedoWithEnumerator:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

- (void)_performUndoWithEnumerator:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 nextObject];
  if (v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__PXActionGroup__performUndoWithEnumerator_completionHandler___block_invoke;
    v9[3] = &unk_1E774ACE8;
    v9[4] = self;
    v10 = v6;
    v11 = v7;
    [v8 performUndo:v9];
  }

  else
  {
    (*(v7 + 2))(v7, 1, 0);
  }
}

uint64_t __62__PXActionGroup__performUndoWithEnumerator_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    return [*(a1 + 32) _performUndoWithEnumerator:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

- (void)_performActionWithEnumerator:(id)a3 completionHandler:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [v6 nextObject];
  if (v8)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__PXActionGroup__performActionWithEnumerator_completionHandler___block_invoke;
    v9[3] = &unk_1E774ACE8;
    v9[4] = self;
    v10 = v6;
    v11 = v7;
    [v8 performAction:v9];
  }

  else
  {
    (*(v7 + 2))(v7, 1, 0);
  }
}

uint64_t __64__PXActionGroup__performActionWithEnumerator_completionHandler___block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    return [*(a1 + 32) _performActionWithEnumerator:*(a1 + 40) completionHandler:*(a1 + 48)];
  }

  else
  {
    return (*(*(a1 + 48) + 16))();
  }
}

- (PXActionGroup)init
{
  v4 = [MEMORY[0x1E696AAA8] currentHandler];
  [v4 handleFailureInMethod:a2 object:self file:@"PXActionGroup.m" lineNumber:34 description:{@"%s is not available as initializer", "-[PXActionGroup init]"}];

  abort();
}

- (PXActionGroup)initWithActions:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = PXActionGroup;
  v5 = [(PXActionGroup *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    actions = v5->_actions;
    v5->_actions = v6;
  }

  return v5;
}

@end