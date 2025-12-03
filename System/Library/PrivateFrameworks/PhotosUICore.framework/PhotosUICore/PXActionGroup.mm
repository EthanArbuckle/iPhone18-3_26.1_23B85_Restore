@interface PXActionGroup
- (PXActionGroup)init;
- (PXActionGroup)initWithActions:(id)actions;
- (void)_performActionWithEnumerator:(id)enumerator completionHandler:(id)handler;
- (void)_performRedoWithEnumerator:(id)enumerator completionHandler:(id)handler;
- (void)_performUndoWithEnumerator:(id)enumerator completionHandler:(id)handler;
- (void)performAction:(id)action;
- (void)performRedo:(id)redo;
- (void)performUndo:(id)undo;
@end

@implementation PXActionGroup

- (void)performRedo:(id)redo
{
  redoCopy = redo;
  actions = [(PXActionGroup *)self actions];
  objectEnumerator = [actions objectEnumerator];

  [(PXActionGroup *)self _performRedoWithEnumerator:objectEnumerator completionHandler:redoCopy];
}

- (void)performUndo:(id)undo
{
  undoCopy = undo;
  actions = [(PXActionGroup *)self actions];
  reverseObjectEnumerator = [actions reverseObjectEnumerator];

  [(PXActionGroup *)self _performUndoWithEnumerator:reverseObjectEnumerator completionHandler:undoCopy];
}

- (void)performAction:(id)action
{
  actionCopy = action;
  actions = [(PXActionGroup *)self actions];
  objectEnumerator = [actions objectEnumerator];

  [(PXActionGroup *)self _performActionWithEnumerator:objectEnumerator completionHandler:actionCopy];
}

- (void)_performRedoWithEnumerator:(id)enumerator completionHandler:(id)handler
{
  enumeratorCopy = enumerator;
  handlerCopy = handler;
  nextObject = [enumeratorCopy nextObject];
  if (nextObject)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__PXActionGroup__performRedoWithEnumerator_completionHandler___block_invoke;
    v9[3] = &unk_1E774ACE8;
    v9[4] = self;
    v10 = enumeratorCopy;
    v11 = handlerCopy;
    [nextObject performRedo:v9];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 1, 0);
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

- (void)_performUndoWithEnumerator:(id)enumerator completionHandler:(id)handler
{
  enumeratorCopy = enumerator;
  handlerCopy = handler;
  nextObject = [enumeratorCopy nextObject];
  if (nextObject)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __62__PXActionGroup__performUndoWithEnumerator_completionHandler___block_invoke;
    v9[3] = &unk_1E774ACE8;
    v9[4] = self;
    v10 = enumeratorCopy;
    v11 = handlerCopy;
    [nextObject performUndo:v9];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 1, 0);
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

- (void)_performActionWithEnumerator:(id)enumerator completionHandler:(id)handler
{
  enumeratorCopy = enumerator;
  handlerCopy = handler;
  nextObject = [enumeratorCopy nextObject];
  if (nextObject)
  {
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __64__PXActionGroup__performActionWithEnumerator_completionHandler___block_invoke;
    v9[3] = &unk_1E774ACE8;
    v9[4] = self;
    v10 = enumeratorCopy;
    v11 = handlerCopy;
    [nextObject performAction:v9];
  }

  else
  {
    (*(handlerCopy + 2))(handlerCopy, 1, 0);
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
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"PXActionGroup.m" lineNumber:34 description:{@"%s is not available as initializer", "-[PXActionGroup init]"}];

  abort();
}

- (PXActionGroup)initWithActions:(id)actions
{
  actionsCopy = actions;
  v9.receiver = self;
  v9.super_class = PXActionGroup;
  v5 = [(PXActionGroup *)&v9 init];
  if (v5)
  {
    v6 = [actionsCopy copy];
    actions = v5->_actions;
    v5->_actions = v6;
  }

  return v5;
}

@end